require 'rails_helper'

RSpec.describe Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  context "validation tests" do
    it "ensures title is present" do
      article = Article.new(body: 'Test content')
      expect(article.valid?).to eq(false)
    end

    it "ensures body is present" do
      article = Article.new(title: 'Test content')
      expect(article.valid?).to eq(false)
    end

    it "ensures article is active by default" do
      article = Article.new(title: 'Test content', body: 'Test content')
      expect(article.active?).to eq(true)
    end

    it "should be able to save article" do
      article = Article.new(title: 'Test content', body: 'Test content')
      expect(article.save).to eq(true)
    end
  end

  context "scope tests " do
  end
end

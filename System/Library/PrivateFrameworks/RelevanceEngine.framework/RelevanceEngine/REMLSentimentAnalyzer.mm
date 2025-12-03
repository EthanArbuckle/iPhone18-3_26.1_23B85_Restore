@interface REMLSentimentAnalyzer
- (REMLSentimentAnalyzer)initWithContentRanker:(id)ranker;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sentimentForText:(id)text;
- (id)sentimentForTokens:(id)tokens;
@end

@implementation REMLSentimentAnalyzer

- (REMLSentimentAnalyzer)initWithContentRanker:(id)ranker
{
  rankerCopy = ranker;
  v9.receiver = self;
  v9.super_class = REMLSentimentAnalyzer;
  v6 = [(REMLSentimentAnalyzer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentRanker, ranker);
  }

  return v7;
}

- (id)sentimentForText:(id)text
{
  v4 = RETokenizeString(text);
  v5 = [(REMLSentimentAnalyzer *)self sentimentForTokens:v4];

  return v5;
}

- (id)sentimentForTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = [(REContentRanker *)self->_contentRanker predict:tokensCopy];
  if ([v5 valid])
  {
    v6 = objc_opt_new();
    [v5 positivePolarity];
    *&v7 = v7;
    [v6 setPostivieSentiment:v7];
    [v5 negativePolarity];
    *&v8 = v8;
    [v6 setNegativeSentiment:v8];
    unknownCount = [v5 unknownCount];
    *&v10 = 1.0 - (unknownCount / [tokensCopy count]);
    [v6 setCertainty:v10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  contentRanker = self->_contentRanker;

  return [v4 initWithContentRanker:contentRanker];
}

@end
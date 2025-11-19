@interface REMLSentimentAnalyzer
- (REMLSentimentAnalyzer)initWithContentRanker:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sentimentForText:(id)a3;
- (id)sentimentForTokens:(id)a3;
@end

@implementation REMLSentimentAnalyzer

- (REMLSentimentAnalyzer)initWithContentRanker:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMLSentimentAnalyzer;
  v6 = [(REMLSentimentAnalyzer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentRanker, a3);
  }

  return v7;
}

- (id)sentimentForText:(id)a3
{
  v4 = RETokenizeString(a3);
  v5 = [(REMLSentimentAnalyzer *)self sentimentForTokens:v4];

  return v5;
}

- (id)sentimentForTokens:(id)a3
{
  v4 = a3;
  v5 = [(REContentRanker *)self->_contentRanker predict:v4];
  if ([v5 valid])
  {
    v6 = objc_opt_new();
    [v5 positivePolarity];
    *&v7 = v7;
    [v6 setPostivieSentiment:v7];
    [v5 negativePolarity];
    *&v8 = v8;
    [v6 setNegativeSentiment:v8];
    v9 = [v5 unknownCount];
    *&v10 = 1.0 - (v9 / [v4 count]);
    [v6 setCertainty:v10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  contentRanker = self->_contentRanker;

  return [v4 initWithContentRanker:contentRanker];
}

@end
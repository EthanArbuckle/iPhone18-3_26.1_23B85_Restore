@interface PPSentimentScoreEncoder
+ (char)encodeSentimentScore:(double)score;
@end

@implementation PPSentimentScoreEncoder

+ (char)encodeSentimentScore:(double)score
{
  if (score < -1.0)
  {
    score = -1.0;
  }

  return (fmin(score, 1.0) / 0.00787401575);
}

@end
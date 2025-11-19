@interface PPSentimentScoreEncoder
+ (char)encodeSentimentScore:(double)a3;
@end

@implementation PPSentimentScoreEncoder

+ (char)encodeSentimentScore:(double)a3
{
  if (a3 < -1.0)
  {
    a3 = -1.0;
  }

  return (fmin(a3, 1.0) / 0.00787401575);
}

@end
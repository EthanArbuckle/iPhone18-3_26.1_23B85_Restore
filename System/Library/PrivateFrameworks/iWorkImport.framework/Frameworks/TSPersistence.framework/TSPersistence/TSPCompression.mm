@interface TSPCompression
+ (id)nameForAlgorithm:(int64_t)algorithm;
+ (unint64_t)componentReadVersionForCompressionAlgorithm:(int64_t)algorithm;
@end

@implementation TSPCompression

+ (id)nameForAlgorithm:(int64_t)algorithm
{
  if (algorithm > 5)
  {
    return 0;
  }

  else
  {
    return off_27A6E4260[algorithm];
  }
}

+ (unint64_t)componentReadVersionForCompressionAlgorithm:(int64_t)algorithm
{
  if ((algorithm - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return 0x4000000000000;
  }
}

@end
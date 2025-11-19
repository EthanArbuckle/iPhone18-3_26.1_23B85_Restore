@interface TSPCompression
+ (id)nameForAlgorithm:(int64_t)a3;
+ (unint64_t)componentReadVersionForCompressionAlgorithm:(int64_t)a3;
@end

@implementation TSPCompression

+ (id)nameForAlgorithm:(int64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return off_27A6E4260[a3];
  }
}

+ (unint64_t)componentReadVersionForCompressionAlgorithm:(int64_t)a3
{
  if ((a3 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return 0x4000000000000;
  }
}

@end
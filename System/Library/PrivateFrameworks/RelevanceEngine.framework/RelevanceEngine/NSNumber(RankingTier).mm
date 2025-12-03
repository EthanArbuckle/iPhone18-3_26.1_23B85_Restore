@interface NSNumber(RankingTier)
+ (id)none;
@end

@implementation NSNumber(RankingTier)

+ (id)none
{
  v1 = [[self alloc] initWithInteger:-1];

  return v1;
}

@end
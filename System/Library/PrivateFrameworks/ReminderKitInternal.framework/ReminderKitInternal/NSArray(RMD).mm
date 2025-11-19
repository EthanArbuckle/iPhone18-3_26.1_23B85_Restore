@interface NSArray(RMD)
- (id)shuffledArray;
@end

@implementation NSArray(RMD)

- (id)shuffledArray
{
  v2 = +[RMDRandomSource sharedRandom];
  v3 = [a1 shuffledArrayWithRandomSource:v2];

  return v3;
}

@end
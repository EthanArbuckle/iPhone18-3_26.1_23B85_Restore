@interface NewsRegionCheck
- (BOOL)isSatisfied;
@end

@implementation NewsRegionCheck

- (BOOL)isSatisfied
{
  sub_1DACB71F4();
  v2 = sub_1DAA655FC();

  return v2 & 1;
}

@end
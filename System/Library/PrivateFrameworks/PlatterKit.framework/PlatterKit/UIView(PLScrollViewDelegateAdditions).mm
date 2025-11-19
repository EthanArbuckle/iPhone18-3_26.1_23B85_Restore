@interface UIView(PLScrollViewDelegateAdditions)
- (uint64_t)pl_isScrollViewDelegateMethod:()PLScrollViewDelegateAdditions;
@end

@implementation UIView(PLScrollViewDelegateAdditions)

- (uint64_t)pl_isScrollViewDelegateMethod:()PLScrollViewDelegateAdditions
{
  if (pl_isScrollViewDelegateMethod__onceToken != -1)
  {
    [UIView(PLScrollViewDelegateAdditions) pl_isScrollViewDelegateMethod:];
  }

  v4 = pl_isScrollViewDelegateMethod____scrollViewDelegateSelectors;
  v5 = NSStringFromSelector(aSelector);
  v6 = [v4 containsObject:v5];

  return v6;
}

@end
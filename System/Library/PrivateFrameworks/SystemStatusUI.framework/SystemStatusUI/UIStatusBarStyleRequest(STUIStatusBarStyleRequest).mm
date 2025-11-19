@interface UIStatusBarStyleRequest(STUIStatusBarStyleRequest)
- (uint64_t)resolvedStyle;
@end

@implementation UIStatusBarStyleRequest(STUIStatusBarStyleRequest)

- (uint64_t)resolvedStyle
{
  [a1 style];

  return _UIStatusBarResolvedStyleFromStyle();
}

@end
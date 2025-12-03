@interface UIStatusBarStyleRequest(STUIStatusBarStyleRequest)
- (uint64_t)resolvedStyle;
@end

@implementation UIStatusBarStyleRequest(STUIStatusBarStyleRequest)

- (uint64_t)resolvedStyle
{
  [self style];

  return _UIStatusBarResolvedStyleFromStyle();
}

@end
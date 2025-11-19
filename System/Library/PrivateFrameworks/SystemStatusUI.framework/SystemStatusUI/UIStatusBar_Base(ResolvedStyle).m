@interface UIStatusBar_Base(ResolvedStyle)
- (uint64_t)currentResolvedStyle;
- (uint64_t)requestResolvedStyle:()ResolvedStyle;
@end

@implementation UIStatusBar_Base(ResolvedStyle)

- (uint64_t)currentResolvedStyle
{
  [a1 currentStyle];

  return _UIStatusBarResolvedStyleFromStyle();
}

- (uint64_t)requestResolvedStyle:()ResolvedStyle
{
  v2 = _UIStatusBarStyleFromResolvedStyle();

  return [a1 requestStyle:v2];
}

@end
@interface UIScrollView(PKUIUtilities)
- (double)pkui_naturalRestingBounds;
- (void)pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:()PKUIUtilities;
@end

@implementation UIScrollView(PKUIUtilities)

- (void)pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:()PKUIUtilities
{
  v8 = a3;
  v4 = _UISolariumEnabled();
  if (v8 && (v4 & 1) == 0)
  {
    [a1 adjustedContentInset];
    v6 = v5;
    [a1 contentOffset];
    [v8 _setManualScrollEdgeAppearanceProgress:{fmin(fmax((v6 + v7) * 0.125, 0.0), 1.0)}];
  }
}

- (double)pkui_naturalRestingBounds
{
  [a1 adjustedContentInset];
  v3 = -v2;
  [a1 bounds];
  return v3;
}

@end
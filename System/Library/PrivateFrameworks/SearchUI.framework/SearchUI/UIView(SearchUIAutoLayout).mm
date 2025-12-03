@interface UIView(SearchUIAutoLayout)
- (BOOL)searchui_isContainedByItem:()SearchUIAutoLayout;
@end

@implementation UIView(SearchUIAutoLayout)

- (BOOL)searchui_isContainedByItem:()SearchUIAutoLayout
{
  v4 = a3;
  searchui_view = [v4 searchui_view];
  if ([self isDescendantOfView:searchui_view])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      superview = [self superview];
      layoutMarginsGuide = [superview layoutMarginsGuide];
      v6 = layoutMarginsGuide == v4;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end
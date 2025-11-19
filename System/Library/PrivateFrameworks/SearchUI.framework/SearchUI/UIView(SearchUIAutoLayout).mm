@interface UIView(SearchUIAutoLayout)
- (BOOL)searchui_isContainedByItem:()SearchUIAutoLayout;
@end

@implementation UIView(SearchUIAutoLayout)

- (BOOL)searchui_isContainedByItem:()SearchUIAutoLayout
{
  v4 = a3;
  v5 = [v4 searchui_view];
  if ([a1 isDescendantOfView:v5])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [a1 superview];
      v8 = [v7 layoutMarginsGuide];
      v6 = v8 == v4;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end
@interface UILayoutGuide(SearchUIAutoLayout)
- (uint64_t)searchui_isContainedByItem:()SearchUIAutoLayout;
@end

@implementation UILayoutGuide(SearchUIAutoLayout)

- (uint64_t)searchui_isContainedByItem:()SearchUIAutoLayout
{
  v4 = a3;
  v5 = [a1 owningView];
  v6 = [v4 searchui_view];

  v7 = [v5 isDescendantOfView:v6];
  return v7;
}

@end
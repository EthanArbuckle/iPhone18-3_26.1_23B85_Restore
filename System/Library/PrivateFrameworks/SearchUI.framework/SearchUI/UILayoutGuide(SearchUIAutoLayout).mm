@interface UILayoutGuide(SearchUIAutoLayout)
- (uint64_t)searchui_isContainedByItem:()SearchUIAutoLayout;
@end

@implementation UILayoutGuide(SearchUIAutoLayout)

- (uint64_t)searchui_isContainedByItem:()SearchUIAutoLayout
{
  v4 = a3;
  owningView = [self owningView];
  searchui_view = [v4 searchui_view];

  v7 = [owningView isDescendantOfView:searchui_view];
  return v7;
}

@end
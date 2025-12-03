@interface UIViewController(Workflow)
- (double)wf_contentLayoutMargins;
- (uint64_t)wf_showSearchBarAboveScrollView:()Workflow;
- (void)wf_applyContentLayoutMarginsToNavigationController;
@end

@implementation UIViewController(Workflow)

- (void)wf_applyContentLayoutMarginsToNavigationController
{
  [self wf_contentLayoutMargins];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  navigationController = [self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPreservesSuperviewLayoutMargins:0];

  navigationController2 = [self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setLayoutMargins:{v3, v5, v7, v9}];

  navigationItem = [self navigationItem];
  searchController = [navigationItem searchController];
  searchBar = [searchController searchBar];
  [searchBar setPreservesSuperviewLayoutMargins:0];

  navigationItem2 = [self navigationItem];
  searchController2 = [navigationItem2 searchController];
  searchBar2 = [searchController2 searchBar];
  [searchBar2 setLayoutMargins:{v3, v5, v7, v9}];
}

- (double)wf_contentLayoutMargins
{
  view = [self view];
  [view layoutMargins];
  v4 = v3;

  if ([self viewRespectsSystemMinimumLayoutMargins])
  {
    view2 = [self view];
    [view2 bounds];
  }

  return v4;
}

- (uint64_t)wf_showSearchBarAboveScrollView:()Workflow
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;
  navigationItem = [self navigationItem];
  searchController = [navigationItem searchController];
  searchBar = [searchController searchBar];

  [v4 safeAreaInsets];
  v13 = v12;
  [searchBar bounds];
  if (CGRectGetHeight(v18) != 0.0 || (v8 == -v13 ? (v14 = v13 <= 64.0) : (v14 = 1), v14))
  {
    v17 = 0;
  }

  else
  {
    [v4 wf_scrollToTopAnimated:0];
    [v4 adjustedContentInset];
    [v4 setContentOffset:{v6, -v16}];
    v17 = 1;
  }

  return v17;
}

@end
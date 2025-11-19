@interface UIViewController(Workflow)
- (double)wf_contentLayoutMargins;
- (uint64_t)wf_showSearchBarAboveScrollView:()Workflow;
- (void)wf_applyContentLayoutMarginsToNavigationController;
@end

@implementation UIViewController(Workflow)

- (void)wf_applyContentLayoutMarginsToNavigationController
{
  [a1 wf_contentLayoutMargins];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [a1 navigationController];
  v11 = [v10 navigationBar];
  [v11 setPreservesSuperviewLayoutMargins:0];

  v12 = [a1 navigationController];
  v13 = [v12 navigationBar];
  [v13 setLayoutMargins:{v3, v5, v7, v9}];

  v14 = [a1 navigationItem];
  v15 = [v14 searchController];
  v16 = [v15 searchBar];
  [v16 setPreservesSuperviewLayoutMargins:0];

  v19 = [a1 navigationItem];
  v17 = [v19 searchController];
  v18 = [v17 searchBar];
  [v18 setLayoutMargins:{v3, v5, v7, v9}];
}

- (double)wf_contentLayoutMargins
{
  v2 = [a1 view];
  [v2 layoutMargins];
  v4 = v3;

  if ([a1 viewRespectsSystemMinimumLayoutMargins])
  {
    v5 = [a1 view];
    [v5 bounds];
  }

  return v4;
}

- (uint64_t)wf_showSearchBarAboveScrollView:()Workflow
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;
  v9 = [a1 navigationItem];
  v10 = [v9 searchController];
  v11 = [v10 searchBar];

  [v4 safeAreaInsets];
  v13 = v12;
  [v11 bounds];
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
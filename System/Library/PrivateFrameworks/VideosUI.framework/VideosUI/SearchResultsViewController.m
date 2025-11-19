@interface SearchResultsViewController
- (_TtC8VideosUI27SearchResultsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_willMoveToParentViewController:(id)a3;
@end

@implementation SearchResultsViewController

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E3BAA6A8();
}

- (void)vui_willMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3BAAA04();
}

- (_TtC8VideosUI27SearchResultsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3BACFE8();
}

@end
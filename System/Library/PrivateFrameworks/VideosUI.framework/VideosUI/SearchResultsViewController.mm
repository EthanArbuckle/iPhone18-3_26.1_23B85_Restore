@interface SearchResultsViewController
- (_TtC8VideosUI27SearchResultsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_willMoveToParentViewController:(id)controller;
@end

@implementation SearchResultsViewController

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E3BAA6A8();
}

- (void)vui_willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E3BAAA04();
}

- (_TtC8VideosUI27SearchResultsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3BACFE8();
}

@end
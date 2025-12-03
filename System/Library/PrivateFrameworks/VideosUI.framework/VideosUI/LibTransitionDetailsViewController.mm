@interface LibTransitionDetailsViewController
- (UIViewController)detailsViewController;
- (_TtC8VideosUI34LibTransitionDetailsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setDetailsViewController:(id)controller;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)appear;
- (void)vui_viewWillDisappear:(BOOL)disappear;
@end

@implementation LibTransitionDetailsViewController

- (UIViewController)detailsViewController
{
  v2 = sub_1E4022D90();

  return v2;
}

- (void)setDetailsViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E4022E1C(controller);
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E40235EC();
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E4023930();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E4023A60(v4);
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E4023BA8(v4);
}

- (_TtC8VideosUI34LibTransitionDetailsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E40258B8();
}

@end
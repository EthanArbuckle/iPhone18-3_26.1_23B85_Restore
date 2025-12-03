@interface LandingPageViewController
- (_TtC8VideosUI25LandingPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleNLSBubbleTipDidDismissWithNotification:(id)notification;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillAppear:(BOOL)appear;
- (void)vui_viewWillDisappear:(BOOL)disappear;
- (void)vui_willMoveToParentViewController:(id)controller;
@end

@implementation LandingPageViewController

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3F58644(v4);
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3F58CF4(v4);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3F58DB0(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E3F58EB8();
}

- (void)vui_willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E3F5A678(controller);
}

- (_TtC8VideosUI25LandingPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3F5AD08();
}

- (void)handleNLSBubbleTipDidDismissWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1E3F5C1A4();
}

@end
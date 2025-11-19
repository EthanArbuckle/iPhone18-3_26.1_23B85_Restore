@interface LandingPageViewController
- (_TtC8VideosUI25LandingPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleNLSBubbleTipDidDismissWithNotification:(id)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
- (void)vui_willMoveToParentViewController:(id)a3;
@end

@implementation LandingPageViewController

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3F58644(v4);
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3F58CF4(v4);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3F58DB0(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E3F58EB8();
}

- (void)vui_willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E3F5A678(a3);
}

- (_TtC8VideosUI25LandingPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3F5AD08();
}

- (void)handleNLSBubbleTipDidDismissWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3F5C1A4();
}

@end
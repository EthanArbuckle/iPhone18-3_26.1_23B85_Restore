@interface CatchUpToLiveViewController
- (_TtC8VideosUI27CatchUpToLiveViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)axViewTappedWithGesture:(id)a3;
- (void)vui_didMoveToParentViewController:(id)a3;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
@end

@implementation CatchUpToLiveViewController

- (void)vui_didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E4152888(a3);
}

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E4152948();
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E4153990(a3);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E4153B10(a3);
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E4157CC8();
}

- (void)axViewTappedWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E4158828(v4);
}

- (_TtC8VideosUI27CatchUpToLiveViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E415BCE0();
}

@end
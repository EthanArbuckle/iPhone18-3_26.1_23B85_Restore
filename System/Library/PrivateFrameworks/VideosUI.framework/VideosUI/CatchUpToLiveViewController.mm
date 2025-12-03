@interface CatchUpToLiveViewController
- (_TtC8VideosUI27CatchUpToLiveViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)axViewTappedWithGesture:(id)gesture;
- (void)vui_didMoveToParentViewController:(id)controller;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
@end

@implementation CatchUpToLiveViewController

- (void)vui_didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E4152888(controller);
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E4152948();
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E4153990(appear);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E4153B10(disappear);
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E4157CC8();
}

- (void)axViewTappedWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E4158828(gestureCopy);
}

- (_TtC8VideosUI27CatchUpToLiveViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E415BCE0();
}

@end
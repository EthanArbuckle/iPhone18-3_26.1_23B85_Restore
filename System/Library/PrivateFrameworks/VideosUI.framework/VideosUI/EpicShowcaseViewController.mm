@interface EpicShowcaseViewController
- (_TtC8VideosUI26EpicShowcaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleFullscreenPlaybackUIDidChange:(id)change;
- (void)loadView;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)vui_didMoveToParentViewController:(id)controller;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillAppear:(BOOL)appear;
- (void)vui_viewWillDisappear:(BOOL)disappear;
- (void)vui_willMoveToParentViewController:(id)controller;
@end

@implementation EpicShowcaseViewController

- (_TtC8VideosUI26EpicShowcaseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1E411BFA4(v5, v7, bundle);
}

- (void)loadView
{
  selfCopy = self;
  sub_1E411C2D0();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E411C574(v4);
}

- (void)vui_willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_10_0();
  sub_1E411C63C(v6);
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E411C774();
}

- (void)vui_didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_10_0();
  sub_1E411CF94(v6);
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E411D058(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E411D2C8();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E411D424(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)handleFullscreenPlaybackUIDidChange:(id)change
{
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FDEE4();
  selfCopy = self;
  sub_1E4120C38();

  (*(v6 + 8))(v10, v4);
}

@end
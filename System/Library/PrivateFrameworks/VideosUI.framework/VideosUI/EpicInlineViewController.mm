@interface EpicInlineViewController
- (_TtC8VideosUI24EpicInlineViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleIsPlaybackUIBeingShownDidChange:(id)change;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)vui_loadView;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillLayoutSubviews;
- (void)vui_willMoveToParentViewController:(id)controller;
@end

@implementation EpicInlineViewController

- (void)vui_loadView
{
  selfCopy = self;
  sub_1E3A4DEC8();
}

- (void)vui_willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3A4E3C0(controller);
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3A4E500(appear);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3A4EB80(disappear);
}

- (void)vui_viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1E3A4ED04();
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E3A4EF10();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3A4F934(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)handleIsPlaybackUIBeingShownDidChange:(id)change
{
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FDEE4();
  v11 = v3;
  sub_1E3A4FDA8();

  (*(v6 + 8))(v10, v4);
}

- (_TtC8VideosUI24EpicInlineViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1E3A50614(v5, v7, bundle);
}

@end
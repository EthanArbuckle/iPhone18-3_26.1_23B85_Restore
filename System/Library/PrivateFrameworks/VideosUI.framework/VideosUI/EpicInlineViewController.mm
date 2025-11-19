@interface EpicInlineViewController
- (_TtC8VideosUI24EpicInlineViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleIsPlaybackUIBeingShownDidChange:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)vui_loadView;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillLayoutSubviews;
- (void)vui_willMoveToParentViewController:(id)a3;
@end

@implementation EpicInlineViewController

- (void)vui_loadView
{
  v2 = self;
  sub_1E3A4DEC8();
}

- (void)vui_willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3A4E3C0(a3);
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3A4E500(a3);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3A4EB80(a3);
}

- (void)vui_viewWillLayoutSubviews
{
  v2 = self;
  sub_1E3A4ED04();
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E3A4EF10();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3A4F934(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)handleIsPlaybackUIBeingShownDidChange:(id)a3
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

- (_TtC8VideosUI24EpicInlineViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1E3A50614(v5, v7, a4);
}

@end
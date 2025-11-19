@interface EpicShowcaseViewController
- (_TtC8VideosUI26EpicShowcaseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleFullscreenPlaybackUIDidChange:(id)a3;
- (void)loadView;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)vui_didMoveToParentViewController:(id)a3;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
- (void)vui_willMoveToParentViewController:(id)a3;
@end

@implementation EpicShowcaseViewController

- (_TtC8VideosUI26EpicShowcaseViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1E411BFA4(v5, v7, a4);
}

- (void)loadView
{
  v2 = self;
  sub_1E411C2D0();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E411C574(v4);
}

- (void)vui_willMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_10_0();
  sub_1E411C63C(v6);
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E411C774();
}

- (void)vui_didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_10_0();
  sub_1E411CF94(v6);
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E411D058(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E411D2C8();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1E411D424(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)handleFullscreenPlaybackUIDidChange:(id)a3
{
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FDEE4();
  v11 = self;
  sub_1E4120C38();

  (*(v6 + 8))(v10, v4);
}

@end
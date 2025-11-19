@interface CarouselViewController
- (_TtC8VideosUI22CarouselViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)carouselView:(id)a3 cellForItemAtIndex:(unint64_t)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4;
- (void)carouselView:(id)a3 didCenterItemAtIndex:(unint64_t)a4;
- (void)carouselView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndex:(unint64_t)a5;
- (void)carouselView:(id)a3 didSelectItemAtIndex:(unint64_t)a4;
- (void)carouselView:(id)a3 willDisplayCell:(id)a4 forItemAtIndex:(unint64_t)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)handleFullscreenPlaybackUIDidChange:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)vui_willMoveToParentViewController:(id)a3;
@end

@implementation CarouselViewController

- (void)loadView
{
  v2 = self;
  sub_1E37C65D4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E37C6834(v4);
}

- (void)vui_willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E37C68FC(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E37C6A40(v4);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E37C7230(v4);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1E37C74A0();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1E37C75FC(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC8VideosUI22CarouselViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  OUTLINED_FUNCTION_23_17();
  if (v5)
  {
    v6 = sub_1E4205F14();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = v4;
  return sub_1E37C8258(v6, v8, v4);
}

- (id)carouselView:(id)a3 cellForItemAtIndex:(unint64_t)a4
{
  OUTLINED_FUNCTION_23_17();
  v7 = v6;
  v8 = v5;
  v9 = sub_1E37C95B8(v8, v4);

  return v9;
}

- (void)carouselView:(id)a3 willDisplayCell:(id)a4 forItemAtIndex:(unint64_t)a5
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v8 = v5;
  v9 = v6;
  OUTLINED_FUNCTION_13_36();
  sub_1E37C9BA4(v10, v11, v12);
}

- (void)carouselView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndex:(unint64_t)a5
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v8 = v5;
  v9 = v6;
  OUTLINED_FUNCTION_13_36();
  sub_1E37C9E6C(v10, v11, v12);
}

- (void)carouselView:(id)a3 didCenterItemAtIndex:(unint64_t)a4
{
  OUTLINED_FUNCTION_23_17();
  v7 = v6;
  v8 = v5;
  sub_1E37CA124(v8, v4);
}

- (void)carouselView:(id)a3 didSelectItemAtIndex:(unint64_t)a4
{
  OUTLINED_FUNCTION_23_17();
  v6 = v5;
  v7 = v4;
  sub_1E37CA220();
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1E37CA724(v5);

  return v7;
}

- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4
{
  OUTLINED_FUNCTION_23_17();
  v7 = v6;
  v8 = v4;
  v9 = v5;
  v10 = sub_1E37CAA38(v9, v8);

  return v10;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = v6;
  sub_1E37CAAFC();

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, a3);
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = v6;
  OUTLINED_FUNCTION_13_36();
  sub_1E37CABA8(v10, v11, v12);

  swift_unknownObjectRelease();
}

- (void)handleFullscreenPlaybackUIDidChange:(id)a3
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
  sub_1E37CAF98();

  (*(v6 + 8))(v10, v4);
}

@end
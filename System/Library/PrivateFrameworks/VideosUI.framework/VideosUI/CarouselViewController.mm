@interface CarouselViewController
- (_TtC8VideosUI22CarouselViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)carouselView:(id)view cellForItemAtIndex:(unint64_t)index;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration;
- (void)carouselView:(id)view didCenterItemAtIndex:(unint64_t)index;
- (void)carouselView:(id)view didEndDisplayingCell:(id)cell forItemAtIndex:(unint64_t)index;
- (void)carouselView:(id)view didSelectItemAtIndex:(unint64_t)index;
- (void)carouselView:(id)view willDisplayCell:(id)cell forItemAtIndex:(unint64_t)index;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)handleFullscreenPlaybackUIDidChange:(id)change;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)vui_willMoveToParentViewController:(id)controller;
@end

@implementation CarouselViewController

- (void)loadView
{
  selfCopy = self;
  sub_1E37C65D4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E37C6834(v4);
}

- (void)vui_willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E37C68FC(controller);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E37C6A40(v4);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E37C7230(v4);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E37C74A0();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E37C75FC(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC8VideosUI22CarouselViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (id)carouselView:(id)view cellForItemAtIndex:(unint64_t)index
{
  OUTLINED_FUNCTION_23_17();
  v7 = v6;
  v8 = v5;
  v9 = sub_1E37C95B8(v8, v4);

  return v9;
}

- (void)carouselView:(id)view willDisplayCell:(id)cell forItemAtIndex:(unint64_t)index
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, view);
  v8 = v5;
  v9 = v6;
  OUTLINED_FUNCTION_13_36();
  sub_1E37C9BA4(v10, v11, v12);
}

- (void)carouselView:(id)view didEndDisplayingCell:(id)cell forItemAtIndex:(unint64_t)index
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, view);
  v8 = v5;
  v9 = v6;
  OUTLINED_FUNCTION_13_36();
  sub_1E37C9E6C(v10, v11, v12);
}

- (void)carouselView:(id)view didCenterItemAtIndex:(unint64_t)index
{
  OUTLINED_FUNCTION_23_17();
  v7 = v6;
  v8 = v5;
  sub_1E37CA124(v8, v4);
}

- (void)carouselView:(id)view didSelectItemAtIndex:(unint64_t)index
{
  OUTLINED_FUNCTION_23_17();
  v6 = v5;
  v7 = v4;
  sub_1E37CA220();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_1E37CA724(interactionCopy);

  return v7;
}

- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration
{
  OUTLINED_FUNCTION_23_17();
  v7 = v6;
  v8 = v4;
  v9 = v5;
  v10 = sub_1E37CAA38(v9, v8);

  return v10;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, interaction);
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = v6;
  sub_1E37CAAFC();

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v7 = OUTLINED_FUNCTION_16_18(self, a2, interaction);
  v8 = v5;
  swift_unknownObjectRetain();
  v9 = v6;
  OUTLINED_FUNCTION_13_36();
  sub_1E37CABA8(v10, v11, v12);

  swift_unknownObjectRelease();
}

- (void)handleFullscreenPlaybackUIDidChange:(id)change
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
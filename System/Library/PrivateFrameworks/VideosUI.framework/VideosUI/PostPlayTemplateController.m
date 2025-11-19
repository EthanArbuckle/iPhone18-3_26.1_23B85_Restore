@interface PostPlayTemplateController
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (_TtC8VideosUI26PostPlayTemplateController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setPlaybackUpNextContextData:(id)a3;
- (void)setPlaybackUpNextDelegate:(id)a3;
- (void)startAutoPlayAnimation;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
@end

@implementation PostPlayTemplateController

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = sub_1E394E25C();

  return v3 & 1;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = self;
  v3 = sub_1E394E2BC();

  return v3 & 1;
}

- (void)vui_viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E394EF34();
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E394FC04(v4);
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E39500AC(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3950188();
}

- (_TtC8VideosUI26PostPlayTemplateController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3950E5C();
}

- (void)setPlaybackUpNextDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1E3952688();
  swift_unknownObjectRelease();
}

- (void)startAutoPlayAnimation
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3952758();
}

- (void)setPlaybackUpNextContextData:(id)a3
{
  sub_1E4205C64();
}

@end
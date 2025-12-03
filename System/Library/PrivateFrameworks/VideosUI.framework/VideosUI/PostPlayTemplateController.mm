@interface PostPlayTemplateController
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (_TtC8VideosUI26PostPlayTemplateController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setPlaybackUpNextContextData:(id)data;
- (void)setPlaybackUpNextDelegate:(id)delegate;
- (void)startAutoPlayAnimation;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
@end

@implementation PostPlayTemplateController

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  v3 = sub_1E394E25C();

  return v3 & 1;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  selfCopy = self;
  v3 = sub_1E394E2BC();

  return v3 & 1;
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E394EF34();
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E394FC04(v4);
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E39500AC(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3950188();
}

- (_TtC8VideosUI26PostPlayTemplateController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3950E5C();
}

- (void)setPlaybackUpNextDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E3952688();
  swift_unknownObjectRelease();
}

- (void)startAutoPlayAnimation
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3952758();
}

- (void)setPlaybackUpNextContextData:(id)data
{
  sub_1E4205C64();
}

@end
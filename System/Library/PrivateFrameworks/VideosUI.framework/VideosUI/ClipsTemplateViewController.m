@interface ClipsTemplateViewController
- (BOOL)prefersStatusBarHidden;
- (NSArray)multiviewIdentifiers;
- (TVPMediaItem)currentMediaItem;
- (VUINowPlayingTabControllerDelegate)nowPlayingControllerDelegate;
- (VUIPlayer)activePlayer;
- (_TtC8VideosUI27ClipsTemplateViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)vui_viewDidAppear:(BOOL)a3;
- (void)vui_viewDidDisappear:(BOOL)a3;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
@end

@implementation ClipsTemplateViewController

- (NSArray)multiviewIdentifiers
{
  v2 = sub_1E42062A4();

  return v2;
}

- (VUINowPlayingTabControllerDelegate)nowPlayingControllerDelegate
{
  sub_1E3889D10();

  return self;
}

- (TVPMediaItem)currentMediaItem
{
  v2 = self;
  v3 = sub_1E3889D5C();

  return v3;
}

- (VUIPlayer)activePlayer
{
  v2 = self;
  v3 = sub_1E3889E74();

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = sub_1E3D7CDDC();

  return v3 & 1;
}

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E3D7F6B8();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  OUTLINED_FUNCTION_6_12();
  sub_1E3D7F8FC(a4);
  swift_unknownObjectRelease();
}

- (void)vui_viewDidAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3D7FA50();
}

- (void)vui_viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3D7FDBC(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  sub_1E3D7FE48();
}

- (_TtC8VideosUI27ClipsTemplateViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3D7FFB4();
}

@end
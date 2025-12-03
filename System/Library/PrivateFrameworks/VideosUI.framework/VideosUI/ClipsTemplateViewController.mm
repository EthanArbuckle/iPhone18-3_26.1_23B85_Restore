@interface ClipsTemplateViewController
- (BOOL)prefersStatusBarHidden;
- (NSArray)multiviewIdentifiers;
- (TVPMediaItem)currentMediaItem;
- (VUINowPlayingTabControllerDelegate)nowPlayingControllerDelegate;
- (VUIPlayer)activePlayer;
- (_TtC8VideosUI27ClipsTemplateViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)vui_viewDidAppear:(BOOL)appear;
- (void)vui_viewDidDisappear:(BOOL)disappear;
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
  selfCopy = self;
  v3 = sub_1E3889D5C();

  return v3;
}

- (VUIPlayer)activePlayer
{
  selfCopy = self;
  v3 = sub_1E3889E74();

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  v3 = sub_1E3D7CDDC();

  return v3 & 1;
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E3D7F6B8();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  OUTLINED_FUNCTION_6_12();
  sub_1E3D7F8FC(coordinator);
  swift_unknownObjectRelease();
}

- (void)vui_viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3D7FA50();
}

- (void)vui_viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3D7FDBC(v4);
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1E3D7FE48();
}

- (_TtC8VideosUI27ClipsTemplateViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3D7FFB4();
}

@end
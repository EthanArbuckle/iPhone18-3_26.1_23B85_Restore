@interface PlaybackContainerViewController
- (BOOL)overridesOrientationLock;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (VUIPlaybackContainerViewControllerDelegate)delegate;
- (_TtC8VideosUI31PlaybackContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)unembedMultiPlayerViewController;
- (void)backgroundPlaybackWillBegin;
- (void)embedCatchUpToLiveViewController:(id)controller;
- (void)embedCatchUpToLiveViewController:(id)controller reusingFullscreenPlaybackWithPlayer:(id)player;
- (void)embedMultiPlayerViewController:(id)controller;
- (void)enterPictureInPicture;
- (void)exitPictureInPictureWithCompletion:(id)completion;
- (void)hidePictureInPictureWithCompletion:(id)completion;
- (void)loadPostPlayForMediaItem:(id)item;
- (void)mediaInfoDidChangeTo:(id)to canPlay:(BOOL)play wasAutoPlayed:(BOOL)played;
- (void)playbackUpNextControllerReadyToBeDisplayed;
- (void)presentPlayerViewController:(AVPlayerViewController *)controller animated:(BOOL)animated completion:(id)completion;
- (void)removePostPlayViewController;
- (void)setDelegate:(id)delegate;
- (void)unembedCatchUpToLiveViewController;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PlaybackContainerViewController

- (VUIPlaybackContainerViewControllerDelegate)delegate
{
  v2 = sub_1E39AC06C();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  OUTLINED_FUNCTION_53_4(self, a2, delegate);
  swift_unknownObjectRetain();
  v4 = v3;
  OUTLINED_FUNCTION_37_3();
  sub_1E39AC108();
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  v3 = sub_1E39AC400(&selRef_prefersStatusBarHidden);

  return v3 & 1;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  selfCopy = self;
  v3 = sub_1E39AC400(&selRef_prefersHomeIndicatorAutoHidden);

  return v3 & 1;
}

- (void)viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E39AD420();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E39AD6C4(disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  OUTLINED_FUNCTION_53_4(self, a2, coordinator);
  swift_unknownObjectRetain();
  v6 = v4;
  OUTLINED_FUNCTION_37_3();
  v7 = OUTLINED_FUNCTION_6_12();
  sub_1E39AD7A8(coordinator, v7, v8);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E39ADAB4();
}

- (void)embedCatchUpToLiveViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E39ADC60();
}

- (void)embedCatchUpToLiveViewController:(id)controller reusingFullscreenPlaybackWithPlayer:(id)player
{
  controllerCopy = controller;
  playerCopy = player;
  selfCopy = self;
  sub_1E39ADD10(controllerCopy, player);
}

- (void)unembedCatchUpToLiveViewController
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E39AE220();
}

- (void)presentPlayerViewController:(AVPlayerViewController *)controller animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
  OUTLINED_FUNCTION_10_9();
  v9 = swift_allocObject();
  *(v9 + 16) = controller;
  *(v9 + 24) = animated;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  controllerCopy = controller;
  selfCopy = self;

  sub_1E38364EC(&unk_1E42AF848, v9);
}

- (_TtC8VideosUI31PlaybackContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E39AF22C();
}

- (void)embedMultiPlayerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E39AF8EC(controllerCopy);
}

- (id)unembedMultiPlayerViewController
{
  selfCopy = self;
  v3 = sub_1E39AFACC();

  return v3;
}

- (void)loadPostPlayForMediaItem:(id)item
{
  OUTLINED_FUNCTION_53_4(self, a2, item);
  swift_unknownObjectRetain();
  v5 = v3;
  OUTLINED_FUNCTION_37_3();
  sub_1E39AFBB8(item);
  swift_unknownObjectRelease();
}

- (void)removePostPlayViewController
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E39B1478();
}

- (void)enterPictureInPicture
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E39B1574();
}

- (void)exitPictureInPictureWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1E38364EC(&unk_1E42AF838, v5);
}

- (void)hidePictureInPictureWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_4_0();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1E37951AC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1E39B21CC(v7, v6);
  sub_1E37FAED8(v7, v6);
}

- (void)playbackUpNextControllerReadyToBeDisplayed
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E39B31FC();
}

- (void)backgroundPlaybackWillBegin
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E39B33B8();
}

- (void)mediaInfoDidChangeTo:(id)to canPlay:(BOOL)play wasAutoPlayed:(BOOL)played
{
  toCopy = to;
  selfCopy = self;
  sub_1E39B3480(selfCopy, play, played);
}

- (BOOL)overridesOrientationLock
{
  selfCopy = self;
  v3 = sub_1E39B35B0();

  return v3;
}

@end
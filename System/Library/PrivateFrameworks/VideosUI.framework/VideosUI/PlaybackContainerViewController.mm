@interface PlaybackContainerViewController
- (BOOL)overridesOrientationLock;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (VUIPlaybackContainerViewControllerDelegate)delegate;
- (_TtC8VideosUI31PlaybackContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)unembedMultiPlayerViewController;
- (void)backgroundPlaybackWillBegin;
- (void)embedCatchUpToLiveViewController:(id)a3;
- (void)embedCatchUpToLiveViewController:(id)a3 reusingFullscreenPlaybackWithPlayer:(id)a4;
- (void)embedMultiPlayerViewController:(id)a3;
- (void)enterPictureInPicture;
- (void)exitPictureInPictureWithCompletion:(id)a3;
- (void)hidePictureInPictureWithCompletion:(id)a3;
- (void)loadPostPlayForMediaItem:(id)a3;
- (void)mediaInfoDidChangeTo:(id)a3 canPlay:(BOOL)a4 wasAutoPlayed:(BOOL)a5;
- (void)playbackUpNextControllerReadyToBeDisplayed;
- (void)presentPlayerViewController:(AVPlayerViewController *)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)removePostPlayViewController;
- (void)setDelegate:(id)a3;
- (void)unembedCatchUpToLiveViewController;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PlaybackContainerViewController

- (VUIPlaybackContainerViewControllerDelegate)delegate
{
  v2 = sub_1E39AC06C();

  return v2;
}

- (void)setDelegate:(id)a3
{
  OUTLINED_FUNCTION_53_4(self, a2, a3);
  swift_unknownObjectRetain();
  v4 = v3;
  OUTLINED_FUNCTION_37_3();
  sub_1E39AC108();
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = sub_1E39AC400(&selRef_prefersStatusBarHidden);

  return v3 & 1;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = self;
  v3 = sub_1E39AC400(&selRef_prefersHomeIndicatorAutoHidden);

  return v3 & 1;
}

- (void)viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E39AD420();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E39AD6C4(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  OUTLINED_FUNCTION_53_4(self, a2, a4);
  swift_unknownObjectRetain();
  v6 = v4;
  OUTLINED_FUNCTION_37_3();
  v7 = OUTLINED_FUNCTION_6_12();
  sub_1E39AD7A8(a4, v7, v8);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E39ADAB4();
}

- (void)embedCatchUpToLiveViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E39ADC60();
}

- (void)embedCatchUpToLiveViewController:(id)a3 reusingFullscreenPlaybackWithPlayer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1E39ADD10(v6, a4);
}

- (void)unembedCatchUpToLiveViewController
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E39AE220();
}

- (void)presentPlayerViewController:(AVPlayerViewController *)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  OUTLINED_FUNCTION_10_9();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  v10 = a3;
  v11 = self;

  sub_1E38364EC(&unk_1E42AF848, v9);
}

- (_TtC8VideosUI31PlaybackContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E39AF22C();
}

- (void)embedMultiPlayerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E39AF8EC(v4);
}

- (id)unembedMultiPlayerViewController
{
  v2 = self;
  v3 = sub_1E39AFACC();

  return v3;
}

- (void)loadPostPlayForMediaItem:(id)a3
{
  OUTLINED_FUNCTION_53_4(self, a2, a3);
  swift_unknownObjectRetain();
  v5 = v3;
  OUTLINED_FUNCTION_37_3();
  sub_1E39AFBB8(a3);
  swift_unknownObjectRelease();
}

- (void)removePostPlayViewController
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E39B1478();
}

- (void)enterPictureInPicture
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E39B1574();
}

- (void)exitPictureInPictureWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1E38364EC(&unk_1E42AF838, v5);
}

- (void)hidePictureInPictureWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_1E39B21CC(v7, v6);
  sub_1E37FAED8(v7, v6);
}

- (void)playbackUpNextControllerReadyToBeDisplayed
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E39B31FC();
}

- (void)backgroundPlaybackWillBegin
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E39B33B8();
}

- (void)mediaInfoDidChangeTo:(id)a3 canPlay:(BOOL)a4 wasAutoPlayed:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_1E39B3480(v9, a4, a5);
}

- (BOOL)overridesOrientationLock
{
  v2 = self;
  v3 = sub_1E39B35B0();

  return v3;
}

@end
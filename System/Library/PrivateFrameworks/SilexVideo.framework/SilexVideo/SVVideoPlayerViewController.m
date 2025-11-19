@interface SVVideoPlayerViewController
- (BOOL)isFullscreenInProgress;
- (BOOL)isLoading;
- (BOOL)isPictureInPictureActive;
- (BOOL)isPlaying;
- (BOOL)playbackAllowedForPlaybackCoordinator:(id)a3;
- (BOOL)playerViewController:(id)a3 shouldExitFullScreenWithReason:(int64_t)a4;
- (SVVideoPlayerViewController)init;
- (SVVideoPlayerViewControllerDataSource)dataSource;
- (SVVideoPlayerViewControllerDelegate)delegate;
- (UIViewController)viewControllerForModalPresentation;
- (int)calculatePlayerWidth;
- (void)adSkipButtonTapped:(id)a3;
- (void)addDebuggerAction:(id)a3;
- (void)advance;
- (void)dealloc;
- (void)embedVideoPlayerIfNeeded;
- (void)enterFullscreenWithCompletionBlock:(id)a3;
- (void)exitFullscreenWithCompletionBlock:(id)a3;
- (void)finished;
- (void)fullscreenBehaviorManagerRequiresFullscreenPlayback:(id)a3;
- (void)learnMoreButtonTapped:(id)a3;
- (void)loadView;
- (void)pause;
- (void)playbackCoordinator:(id)a3 timeElapsed:(double)a4 duration:(double)a5;
- (void)playbackCoordinatorFinishedLoadingVideoURL:(id)a3;
- (void)playbackCoordinatorPausedPlayback:(id)a3;
- (void)playbackCoordinatorResumedPlayback:(id)a3;
- (void)playbackCoordinatorStartedPlayback:(id)a3;
- (void)playbackCoordinatorStateChanged:(id)a3;
- (void)playerViewController:(id)a3 metricsCollectionEventOccured:(int64_t)a4;
- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)playerViewControllerDidStartPictureInPicture:(id)a3;
- (void)playerViewControllerDidStopPictureInPicture:(id)a3;
- (void)playerViewControllerWillStartPictureInPicture:(id)a3;
- (void)playerViewControllerWillStopPictureInPicture:(id)a3;
- (void)refreshControlsForPlaybackCoordinator:(id)a3;
- (void)removeVideoPlayerIfNeeded;
- (void)setFullscreenBehavior:(unint64_t)a3;
- (void)setupQueueIfNeeded;
- (void)startPictureInPictureIfPossible;
- (void)startPlaybackForCoordinatorIfAllowed:(id)a3;
- (void)stopPictureInPicture;
- (void)tapped;
- (void)transitionToCoordinator:(id)a3;
- (void)updateAdsButtonsVisibility;
- (void)updatePlayerWidthIfNeeded;
- (void)updateSkipButtonWithThreshold:(unint64_t)a3 time:(double)a4;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willUnload;
@end

@implementation SVVideoPlayerViewController

- (SVVideoPlayerViewController)init
{
  v33.receiver = self;
  v33.super_class = SVVideoPlayerViewController;
  v2 = [(SVVideoPlayerViewController *)&v33 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    v2->_playerWidth = 0;
    v4 = objc_alloc_init(MEMORY[0x277CB85E0]);
    playerViewController = v3->_playerViewController;
    v3->_playerViewController = v4;

    [(AVPlayerViewController *)v3->_playerViewController setAllowsPictureInPicturePlayback:0];
    [(AVPlayerViewController *)v3->_playerViewController setModalPresentationStyle:5];
    [(AVPlayerViewController *)v3->_playerViewController setDelegate:v3];
    [(AVPlayerViewController *)v3->_playerViewController setUpdatesNowPlayingInfoCenter:0];
    v6 = objc_alloc_init(SVAutomaticFullscreenVideoPlaybackBehaviorManager);
    fullscreenBehaviorManager = v3->_fullscreenBehaviorManager;
    v3->_fullscreenBehaviorManager = v6;

    [(SVAutomaticFullscreenVideoPlaybackBehaviorManager *)v3->_fullscreenBehaviorManager setDelegate:v3];
    objc_initWeak(&location, v3->_fullscreenBehaviorManager);
    objc_initWeak(&from, v3);
    v8 = [SVKeyValueObserver alloc];
    v9 = v3->_playerViewController;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __35__SVVideoPlayerViewController_init__block_invoke;
    v28 = &unk_279BC6058;
    objc_copyWeak(&v29, &location);
    objc_copyWeak(&v30, &from);
    v10 = [(SVKeyValueObserver *)v8 initWithKeyPath:@"videoBounds" ofObject:v9 withOptions:1 change:&v25];
    videoBoundsObserver = v3->_videoBoundsObserver;
    v3->_videoBoundsObserver = v10;

    v12 = objc_alloc_init(SVVideoPlayerState);
    v13 = objc_alloc_init(SVLearnMoreButton);
    learnMoreButton = v3->_learnMoreButton;
    v3->_learnMoreButton = v13;

    [(SVLearnMoreButton *)v3->_learnMoreButton setTranslatesAutoresizingMaskIntoConstraints:0, v25, v26, v27, v28];
    [(SVLearnMoreButton *)v3->_learnMoreButton addTarget:v3 action:sel_learnMoreButtonTapped_ forControlEvents:64];
    [(SVLearnMoreButton *)v3->_learnMoreButton setHidden:1];
    [(SVLearnMoreButton *)v3->_learnMoreButton setPlayerState:v12];
    v15 = objc_alloc_init(SVVideoAdSkipButton);
    skipButton = v3->_skipButton;
    v3->_skipButton = v15;

    [(SVVideoAdSkipButton *)v3->_skipButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SVVideoAdSkipButton *)v3->_skipButton addTarget:v3 action:sel_adSkipButtonTapped_ forControlEvents:64];
    [(SVVideoAdSkipButton *)v3->_skipButton setHidden:1];
    [(SVVideoAdSkipButton *)v3->_skipButton setPlayerState:v12];
    v17 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:0];
    activityIndicatorView = v3->_activityIndicatorView;
    v3->_activityIndicatorView = v17;

    [(UIActivityIndicatorView *)v3->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v3->_activityIndicatorView setHidesWhenStopped:1];
    v19 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel_tapped];
    tapGesture = v3->_tapGesture;
    v3->_tapGesture = v19;

    [(UIGestureRecognizer *)v3->_tapGesture setDelegate:v3];
    v21 = objc_alloc_init(SVAdGradientView);
    adGradientView = v3->_adGradientView;
    v3->_adGradientView = v21;

    [(SVAdGradientView *)v3->_adGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SVAdGradientView *)v3->_adGradientView setHidden:1];
    v3->_showsPlaybackControls = 1;
    playerState = v3->_playerState;
    v3->_playerState = v12;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __35__SVVideoPlayerViewController_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 objectForKey:*MEMORY[0x277CCA2F0]];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v6 CGRectValue];
  [WeakRetained setVideoBounds:?];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 updatePlayerWidthIfNeeded];
}

- (void)loadView
{
  v3 = objc_alloc_init(SVTouchAbsorbingView);
  [(SVVideoPlayerViewController *)self setView:v3];
}

- (void)dealloc
{
  v3 = [(SVVideoPlayerViewController *)self coordinator];
  [v3 setHost:0];

  v4.receiver = self;
  v4.super_class = SVVideoPlayerViewController;
  [(SVVideoPlayerViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = SVVideoPlayerViewController;
  [(SVVideoPlayerViewController *)&v33 viewDidLoad];
  v3 = [(SVVideoPlayerViewController *)self playerViewController];
  [(SVVideoPlayerViewController *)self addChildViewController:v3];

  v4 = [(SVVideoPlayerViewController *)self view];
  v5 = [(SVVideoPlayerViewController *)self playerViewController];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(SVVideoPlayerViewController *)self playerViewController];
  v8 = [v7 view];
  [v8 setHidden:1];

  v9 = [(SVVideoPlayerViewController *)self playerViewController];
  v10 = [v9 view];
  v11 = [(SVVideoPlayerViewController *)self view];
  [v11 bounds];
  [v10 setFrame:?];

  v12 = [(SVVideoPlayerViewController *)self playerViewController];
  [v12 didMoveToParentViewController:self];

  v13 = [(SVVideoPlayerViewController *)self playerViewController];
  [v13 setShowsPlaybackControls:0];

  v14 = [(SVVideoPlayerViewController *)self view];
  v15 = [MEMORY[0x277D75348] blackColor];
  [v14 setBackgroundColor:v15];

  v16 = [(SVVideoPlayerViewController *)self view];
  v17 = [(SVVideoPlayerViewController *)self activityIndicatorView];
  [v16 addSubview:v17];

  v18 = [(SVVideoPlayerViewController *)self playerViewController];
  v19 = [v18 view];
  v20 = [(SVVideoPlayerViewController *)self tapGesture];
  [v19 addGestureRecognizer:v20];

  v21 = [(SVVideoPlayerViewController *)self playerViewController];
  v22 = [v21 customControlsView];
  v23 = [(SVVideoPlayerViewController *)self learnMoreButton];
  [v22 addSubview:v23];

  v24 = [(SVVideoPlayerViewController *)self playerViewController];
  v25 = [v24 customControlsView];
  v26 = [(SVVideoPlayerViewController *)self skipButton];
  [v25 addSubview:v26];

  v27 = [(SVVideoPlayerViewController *)self playerViewController];
  v28 = [v27 contentOverlayView];
  v29 = [(SVVideoPlayerViewController *)self adGradientView];
  [v28 addSubview:v29];

  v30 = [(SVVideoPlayerViewController *)self playerViewController];
  v31 = [v30 customControlsView];
  [v31 setAccessibilityElementsHidden:0];

  v32 = [(SVVideoPlayerViewController *)self view];
  [v32 setNeedsUpdateConstraints];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = SVVideoPlayerViewController;
  [(SVVideoPlayerViewController *)&v18 viewDidLayoutSubviews];
  v3 = [(SVVideoPlayerViewController *)self playerViewController];
  v4 = [v3 view];
  v5 = [v4 superview];
  v6 = [(SVVideoPlayerViewController *)self view];

  if (v5 == v6)
  {
    v7 = [(SVVideoPlayerViewController *)self view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(SVVideoPlayerViewController *)self playerViewController];
    v17 = [v16 view];
    [v17 setFrame:{v9, v11, v13, v15}];
  }
}

- (void)updateViewConstraints
{
  v3 = [(SVVideoPlayerViewController *)self playerViewController];
  v4 = [v3 customControlsView];
  v5 = [v4 animatedUnobscuredCenterAreaLayoutGuide];

  v6 = [(SVVideoPlayerViewController *)self playerViewController];
  v7 = [v6 customControlsView];
  v8 = [v7 transportControlsAreaLayoutGuide];

  v9 = _UISolariumFeatureFlagEnabled();
  v10 = 0.0;
  if (v9)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = -4.0;
  }

  v12 = [(SVVideoPlayerViewController *)self adPrivacyButton];

  if (v12)
  {
    if (!v9)
    {
      v10 = -2.0;
    }

    v13 = [(SVVideoPlayerViewController *)self adPrivacyButton];
    v14 = [v13 leadingAnchor];
    v15 = [v8 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(SVVideoPlayerViewController *)self adPrivacyButton];
    v18 = [v17 bottomAnchor];
    v19 = [v5 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:v10];
    [v20 setActive:1];

    if (_UISolariumFeatureFlagEnabled())
    {
      v21 = 12.0;
    }

    else
    {
      v21 = 3.0;
    }

    v22 = [(SVVideoPlayerViewController *)self learnMoreButton];
    v23 = [v22 leadingAnchor];
    v24 = [(SVVideoPlayerViewController *)self adPrivacyButton];
    v25 = [v24 trailingAnchor];
    v26 = [v23 constraintEqualToAnchor:v25 constant:v21];
    [v26 setActive:1];

    v27 = [(SVVideoPlayerViewController *)self learnMoreButton];
    v28 = [v27 bottomAnchor];
    v29 = [v5 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:v11];
    [v30 setActive:1];
  }

  v31 = [(SVVideoPlayerViewController *)self skipButton];
  v32 = [v31 trailingAnchor];
  v33 = [v8 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [(SVVideoPlayerViewController *)self skipButton];
  v36 = [v35 bottomAnchor];
  v37 = [v5 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:v11];
  [v38 setActive:1];

  v39 = [(SVVideoPlayerViewController *)self activityIndicatorView];
  v40 = [v39 centerXAnchor];
  v41 = [(SVVideoPlayerViewController *)self view];
  v42 = [v41 centerXAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [v43 setActive:1];

  v44 = [(SVVideoPlayerViewController *)self activityIndicatorView];
  v45 = [v44 centerYAnchor];
  v46 = [(SVVideoPlayerViewController *)self view];
  v47 = [v46 centerYAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
  [v48 setActive:1];

  v49 = [(SVVideoPlayerViewController *)self adGradientView];
  v50 = [v49 leadingAnchor];
  v51 = [(SVVideoPlayerViewController *)self playerViewController];
  v52 = [v51 contentOverlayView];
  v53 = [v52 leadingAnchor];
  v54 = [v50 constraintEqualToAnchor:v53];
  [v54 setActive:1];

  v55 = [(SVVideoPlayerViewController *)self adGradientView];
  v56 = [v55 trailingAnchor];
  v57 = [(SVVideoPlayerViewController *)self playerViewController];
  v58 = [v57 contentOverlayView];
  v59 = [v58 trailingAnchor];
  v60 = [v56 constraintEqualToAnchor:v59];
  [v60 setActive:1];

  v61 = [(SVVideoPlayerViewController *)self adGradientView];
  v62 = [v61 topAnchor];
  v63 = [(SVVideoPlayerViewController *)self playerViewController];
  v64 = [v63 contentOverlayView];
  v65 = [v64 topAnchor];
  v66 = [v62 constraintEqualToAnchor:v65];
  [v66 setActive:1];

  v67 = [(SVVideoPlayerViewController *)self adGradientView];
  v68 = [v67 bottomAnchor];
  v69 = [(SVVideoPlayerViewController *)self playerViewController];
  v70 = [v69 contentOverlayView];
  v71 = [v70 bottomAnchor];
  v72 = [v68 constraintEqualToAnchor:v71];
  [v72 setActive:1];

  v73.receiver = self;
  v73.super_class = SVVideoPlayerViewController;
  [(SVVideoPlayerViewController *)&v73 updateViewConstraints];
}

- (void)pause
{
  v3 = [(SVVideoPlayerViewController *)self coordinator];
  v4 = [(SVVideoPlayerViewController *)self playerViewController];
  [v3 setHost:v4];

  v5 = [(SVVideoPlayerViewController *)self coordinator];
  [v5 pause];
}

- (void)enterFullscreenWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (![(SVVideoPlayerViewController *)self isFullscreen])
  {
    v5 = [(SVVideoPlayerViewController *)self view];
    [v5 layoutIfNeeded];

    objc_initWeak(&location, self);
    v6 = [(SVVideoPlayerViewController *)self playerViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__SVVideoPlayerViewController_enterFullscreenWithCompletionBlock___block_invoke;
    v7[3] = &unk_279BC6080;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [v6 enterFullScreenAnimated:1 completionHandler:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __66__SVVideoPlayerViewController_enterFullscreenWithCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFullscreen:1];

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *MEMORY[0x277D76488];

    UIAccessibilityPostNotification(v4, 0);
  }
}

- (void)exitFullscreenWithCompletionBlock:(id)a3
{
  v4 = a3;
  if ([(SVVideoPlayerViewController *)self isFullscreen])
  {
    v5 = [(SVVideoPlayerViewController *)self view];
    [v5 layoutIfNeeded];

    objc_initWeak(&location, self);
    v6 = [(SVVideoPlayerViewController *)self playerViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__SVVideoPlayerViewController_exitFullscreenWithCompletionBlock___block_invoke;
    v7[3] = &unk_279BC6080;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [v6 exitFullScreenAnimated:1 completionHandler:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __65__SVVideoPlayerViewController_exitFullscreenWithCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFullscreen:0];

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *MEMORY[0x277D76488];

    UIAccessibilityPostNotification(v4, 0);
  }
}

- (void)startPictureInPictureIfPossible
{
  v7 = [(SVVideoPlayerViewController *)self playerViewController];
  if ([v7 isPictureInPictureActive])
  {
LABEL_2:

    return;
  }

  v3 = [(SVVideoPlayerViewController *)self isPlaying];

  if (!v3 || [(SVVideoPlayerViewController *)self isFullscreen])
  {
    return;
  }

  if ([MEMORY[0x277CB85D0] isPictureInPictureSupported])
  {
    v4 = [(SVVideoPlayerViewController *)self playerViewController];
    if ([v4 allowsPictureInPicturePlayback] && -[SVVideoPlayerViewController enablePictureInPictureBehaviors](self, "enablePictureInPictureBehaviors") && -[SVVideoPlayerViewController mode](self, "mode") != 1)
    {
      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 != 5)
      {
        v7 = [(SVVideoPlayerViewController *)self playerViewController];
        [v7 startPictureInPicture];
        goto LABEL_2;
      }
    }

    else
    {
    }
  }

  [(SVVideoPlayerViewController *)self pause];
}

- (void)stopPictureInPicture
{
  v2 = [(SVVideoPlayerViewController *)self playerViewController];
  [v2 stopPictureInPicture];
}

- (BOOL)isPlaying
{
  v2 = [(SVVideoPlayerViewController *)self coordinator];
  v3 = [v2 state] == 3;

  return v3;
}

- (BOOL)isLoading
{
  v2 = [(SVVideoPlayerViewController *)self coordinator];
  v3 = [v2 state] == 1;

  return v3;
}

- (BOOL)isPictureInPictureActive
{
  v2 = [(SVVideoPlayerViewController *)self playerViewController];
  v3 = [v2 isPictureInPictureActive];

  return v3;
}

- (void)addDebuggerAction:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CB85A8];
  v5 = a3;
  v6 = [[v4 alloc] initWithTitle:@"Debugger" type:0];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"ant.circle"];
  [v6 setImage:v7];

  [v6 setAction:v5];
  v10[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(AVPlayerViewController *)self->_playerViewController setCustomControlItems:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)embedVideoPlayerIfNeeded
{
  v3 = [(SVVideoPlayerViewController *)self playerViewController];
  v4 = [v3 parentViewController];

  if (v4 != self)
  {
    v5 = [(SVVideoPlayerViewController *)self playerViewController];
    [(SVVideoPlayerViewController *)self addChildViewController:v5];

    v6 = [(SVVideoPlayerViewController *)self view];
    v7 = [(SVVideoPlayerViewController *)self playerViewController];
    v8 = [v7 view];
    [v6 addSubview:v8];

    v9 = [(SVVideoPlayerViewController *)self playerViewController];
    v10 = [v9 view];
    v11 = [(SVVideoPlayerViewController *)self view];
    [v11 bounds];
    [v10 setFrame:?];

    v12 = [(SVVideoPlayerViewController *)self playerViewController];
    [v12 didMoveToParentViewController:self];

    v13 = [(SVVideoPlayerViewController *)self view];
    [v13 layoutIfNeeded];
  }
}

- (void)removeVideoPlayerIfNeeded
{
  v3 = [(SVVideoPlayerViewController *)self playerViewController];
  v4 = [v3 parentViewController];

  if (v4)
  {
    v5 = [(SVVideoPlayerViewController *)self playerViewController];
    [v5 willMoveToParentViewController:0];

    v6 = [(SVVideoPlayerViewController *)self playerViewController];
    v7 = [v6 view];
    [v7 removeFromSuperview];

    v8 = [(SVVideoPlayerViewController *)self playerViewController];
    [v8 removeFromParentViewController];
  }
}

- (void)willUnload
{
  v2 = [(SVVideoPlayerViewController *)self videoAd];
  [v2 willUnload];
}

- (BOOL)isFullscreenInProgress
{
  v3 = [(SVVideoPlayerViewController *)self presentedViewController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(SVVideoPlayerViewController *)self presentedViewController];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);

  LOBYTE(v4) = [v6 isEqualToString:@"AVFullScreenViewController"];
  return v4;
}

- (void)fullscreenBehaviorManagerRequiresFullscreenPlayback:(id)a3
{
  if (![(SVVideoPlayerViewController *)self isFullscreen]&& [(SVVideoPlayerViewController *)self isPlaying])
  {

    [(SVVideoPlayerViewController *)self enterFullscreenWithCompletionBlock:0];
  }
}

- (void)setFullscreenBehavior:(unint64_t)a3
{
  if (self->_fullscreenBehavior != a3)
  {
    self->_fullscreenBehavior = a3;
    v5 = [(SVVideoPlayerViewController *)self fullscreenBehaviorManager];
    [v5 setBehavior:a3];
  }
}

- (BOOL)playerViewController:(id)a3 shouldExitFullScreenWithReason:(int64_t)a4
{
  v5 = [(SVVideoPlayerViewController *)self fullscreenBehaviorManager:a3];
  v6 = [v5 fullscreenPlaybackRequiredForCurrentConditions];

  if (v6)
  {
    [(SVVideoPlayerViewController *)self pause];
  }

  return 1;
}

- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __122__SVVideoPlayerViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke;
  v7[3] = &unk_279BC60A8;
  v8 = a4;
  v7[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __122__SVVideoPlayerViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke_2;
  v5[3] = &unk_279BC60D0;
  v5[4] = self;
  v6 = a4;
  [a5 addCoordinatedAnimations:v7 completion:v5];
}

void __122__SVVideoPlayerViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) adGradientView];
  [v2 setAlpha:v1];
}

uint64_t __122__SVVideoPlayerViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setShowsPlaybackControls:*(result + 40)];
  }

  return result;
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v5 = a4;
  v6 = [(SVVideoPlayerViewController *)self playerViewController];
  [v6 resignFirstResponder];

  v7 = [(SVVideoPlayerViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SVVideoPlayerViewController *)self delegate];
    [v9 videoPlayerViewControllerWillExitFullscreen:self];
  }

  v10 = [(SVVideoPlayerViewController *)self adPrivacyButton];
  [v10 setHidden:1];

  v11 = [(SVVideoPlayerViewController *)self learnMoreButton];
  [v11 setHidden:1];

  v12 = [(SVVideoPlayerViewController *)self skipButton];
  [v12 setHidden:1];

  v13 = [(SVVideoPlayerViewController *)self adGradientView];
  [v13 setHidden:1];

  v14 = [(SVVideoPlayerViewController *)self playerState];
  [v14 setIsFullScreen:0];

  v15 = [(SVVideoPlayerViewController *)self videoAd];
  [v15 setFullScreen:0];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__SVVideoPlayerViewController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v16[3] = &unk_279BC60F8;
  v16[4] = self;
  [v5 animateAlongsideTransition:0 completion:v16];
}

uint64_t __106__SVVideoPlayerViewController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  [*(a1 + 32) updateAdsButtonsVisibility];
  if (([v10 isCancelled] & 1) == 0)
  {
    v3 = [v10 viewForKey:*MEMORY[0x277D77238]];
    v4 = [*(a1 + 32) tapGesture];
    [v3 removeGestureRecognizer:v4];

    v5 = [*(a1 + 32) view];
    v6 = [*(a1 + 32) tapGesture];
    [v5 addGestureRecognizer:v6];

    v7 = [*(a1 + 32) delegate];
    LOBYTE(v6) = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = [*(a1 + 32) delegate];
      [v8 videoPlayerViewControllerDidExitFullscreen:*(a1 + 32)];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)playerViewController:(id)a3 willBeginFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v5 = a4;
  v6 = [(SVVideoPlayerViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SVVideoPlayerViewController *)self delegate];
    [v8 videoPlayerViewControllerWillEnterFullscreen:self];
  }

  v9 = [(SVVideoPlayerViewController *)self adPrivacyButton];
  [v9 setHidden:1];

  v10 = [(SVVideoPlayerViewController *)self learnMoreButton];
  [v10 setHidden:1];

  v11 = [(SVVideoPlayerViewController *)self skipButton];
  [v11 setHidden:1];

  v12 = [(SVVideoPlayerViewController *)self adGradientView];
  [v12 setHidden:1];

  v13 = [(SVVideoPlayerViewController *)self playerState];
  [v13 setIsFullScreen:1];

  v14 = [(SVVideoPlayerViewController *)self videoAd];
  [v14 setFullScreen:1];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__SVVideoPlayerViewController_playerViewController_willBeginFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v15[3] = &unk_279BC60F8;
  v15[4] = self;
  [v5 animateAlongsideTransition:0 completion:v15];
}

void __108__SVVideoPlayerViewController_playerViewController_willBeginFullScreenPresentationWithAnimationCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [*(a1 + 32) updateAdsButtonsVisibility];
  if (([v7 isCancelled] & 1) == 0)
  {
    v3 = [*(a1 + 32) view];
    v4 = [*(a1 + 32) tapGesture];
    [v3 removeGestureRecognizer:v4];

    v5 = [v7 viewForKey:*MEMORY[0x277D77248]];
    v6 = [*(a1 + 32) tapGesture];
    [v5 addGestureRecognizer:v6];
  }
}

- (void)playerViewControllerWillStartPictureInPicture:(id)a3
{
  v4 = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SVVideoPlayerViewController *)self delegate];
    [v6 videoPlayerViewControllerWillStartPictureInPicture:self];
  }
}

- (void)playerViewControllerDidStartPictureInPicture:(id)a3
{
  v4 = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SVVideoPlayerViewController *)self delegate];
    [v6 videoPlayerViewControllerDidStartPictureInPicture:self];
  }

  v7 = [(SVVideoPlayerViewController *)self coordinator];
  v10 = [v7 video];

  if (objc_opt_respondsToSelector())
  {
    v8 = [(SVVideoPlayerViewController *)self coordinator];
    v9 = [v8 video];
    [v9 startedPictureInPicture];
  }
}

- (void)playerViewControllerWillStopPictureInPicture:(id)a3
{
  v4 = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SVVideoPlayerViewController *)self delegate];
    [v6 videoPlayerViewControllerWillStopPictureInPicture:self];
  }
}

- (void)playerViewControllerDidStopPictureInPicture:(id)a3
{
  v4 = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SVVideoPlayerViewController *)self delegate];
    [v6 videoPlayerViewControllerDidStopPictureInPicture:self];
  }

  v7 = [(SVVideoPlayerViewController *)self coordinator];
  v10 = [v7 video];

  if (objc_opt_respondsToSelector())
  {
    v8 = [(SVVideoPlayerViewController *)self coordinator];
    v9 = [v8 video];
    [v9 stoppedPictureInPicture];
  }
}

- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v8 = a4;
  v5 = [(SVVideoPlayerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SVVideoPlayerViewController *)self delegate];
    [v7 videoPlayerViewController:self restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:v8];
  }

  else
  {
    v8[2](v8, 1);
  }
}

- (void)playerViewController:(id)a3 metricsCollectionEventOccured:(int64_t)a4
{
  v6 = a3;
  if (a4 == 5)
  {
    v12 = v6;
    [(SVVideoPlayerViewController *)self setFullscreen:0];
    v11 = [(SVVideoPlayerViewController *)self coordinator];
    v8 = [v11 video];

    if (objc_opt_respondsToSelector())
    {
      v9 = [(SVVideoPlayerViewController *)self coordinator];
      v10 = [v9 video];
      [v10 exitedFullscreen];
      goto LABEL_7;
    }
  }

  else
  {
    if (a4 != 4)
    {
      goto LABEL_9;
    }

    v12 = v6;
    [(SVVideoPlayerViewController *)self setFullscreen:1];
    v7 = [(SVVideoPlayerViewController *)self coordinator];
    v8 = [v7 video];

    if (objc_opt_respondsToSelector())
    {
      v9 = [(SVVideoPlayerViewController *)self coordinator];
      v10 = [v9 video];
      [v10 enteredFullscreen];
LABEL_7:
    }
  }

  v6 = v12;
LABEL_9:
}

- (void)playbackCoordinatorStartedPlayback:(id)a3
{
  v13 = a3;
  v4 = [v13 video];
  v5 = [(SVVideoPlayerViewController *)self videoAd];

  if (v4 != v5)
  {
    v6 = [(SVVideoPlayerViewController *)self videoAd];
    [v6 nextVideoStartedPlaying];

    v7 = [(SVVideoPlayerViewController *)self videoAd];
    v8 = [v7 metricsView];
    [v8 removeFromSuperview];

    [(SVVideoPlayerViewController *)self setVideoAd:0];
  }

  [(SVVideoPlayerViewController *)self refreshControlsForPlaybackCoordinator:v13];
  v9 = [(SVVideoPlayerViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SVVideoPlayerViewController *)self delegate];
    v12 = [v13 video];
    [v11 videoPlayerViewController:self startedPlaybackOfVideo:v12];
  }
}

- (void)playbackCoordinatorPausedPlayback:(id)a3
{
  v8 = a3;
  [(SVVideoPlayerViewController *)self refreshControlsForPlaybackCoordinator:?];
  v4 = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SVVideoPlayerViewController *)self delegate];
    v7 = [v8 video];
    [v6 videoPlayerViewController:self pausedPlaybackOfVideo:v7];
  }
}

- (void)playbackCoordinatorResumedPlayback:(id)a3
{
  v8 = a3;
  v4 = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SVVideoPlayerViewController *)self delegate];
    v7 = [v8 video];
    [v6 videoPlayerViewController:self resumedPlaybackOfVideo:v7];
  }
}

- (void)playbackCoordinator:(id)a3 timeElapsed:(double)a4 duration:(double)a5
{
  v10 = a3;
  v7 = [v10 video];
  v8 = [v7 conformsToProtocol:&unk_2877E0EB8];

  if (v8)
  {
    v9 = [v10 video];
    -[SVVideoPlayerViewController updateSkipButtonWithThreshold:time:](self, "updateSkipButtonWithThreshold:time:", [v9 skipThreshold], a4);
  }
}

- (void)playbackCoordinatorStateChanged:(id)a3
{
  v7 = a3;
  if ([v7 state] == 2)
  {
    [(SVVideoPlayerViewController *)self refreshControlsForPlaybackCoordinator:v7];
    v4 = [v7 video];
    v5 = [v4 conformsToProtocol:&unk_2877E0EB8];

    if (v5)
    {
      v6 = [v7 video];
      -[SVVideoPlayerViewController updateSkipButtonWithThreshold:time:](self, "updateSkipButtonWithThreshold:time:", [v6 skipThreshold], 0.0);
    }

    if ([(SVVideoPlayerViewController *)self playbackAllowedForPlaybackCoordinator:v7])
    {
      [v7 playWithButtonTapped:{-[SVVideoPlayerViewController playButtonTapped](self, "playButtonTapped")}];
    }

    else
    {
      [v7 pause];
    }
  }
}

- (void)playbackCoordinatorFinishedLoadingVideoURL:(id)a3
{
  v8 = a3;
  v4 = [(SVVideoPlayerViewController *)self coordinator];

  if (v4 == v8)
  {
    v5 = [(SVVideoPlayerViewController *)self playerViewController];
    [v8 setHost:v5];

    v6 = [(SVVideoPlayerViewController *)self playerViewController];
    v7 = [v6 view];
    [v7 setHidden:0];
  }
}

- (void)learnMoreButtonTapped:(id)a3
{
  v4 = [(SVVideoPlayerViewController *)self coordinator];
  v5 = [v4 video];

  [v5 presentAction];
  [(SVVideoPlayerViewController *)self pause];
}

- (void)adSkipButtonTapped:(id)a3
{
  v4 = [(SVVideoPlayerViewController *)self coordinator];
  v7 = [v4 video];

  if ([v7 conformsToProtocol:&unk_2877E0EB8])
  {
    v5 = [(SVVideoPlayerViewController *)self coordinator];
    v6 = [v5 video];

    [v6 skipped];
    [(SVVideoPlayerViewController *)self advance];
  }
}

- (void)refreshControlsForPlaybackCoordinator:(id)a3
{
  v24 = a3;
  v4 = [v24 state] == 1 || !objc_msgSend(v24, "state") || objc_msgSend(v24, "state") == 2;
  v5 = [v24 state] == 3 || objc_msgSend(v24, "state") == 4 || objc_msgSend(v24, "state") == 5;
  v6 = [v24 video];
  v7 = [v6 conformsToProtocol:&unk_2877E0EB8];

  if (v7)
  {
    v8 = [v24 video];
    v9 = [v24 state] != 3 && objc_msgSend(v24, "state") != 4;
    v10 = 1;
    if ([v8 hasAction] && !v9)
    {
      v10 = [(SVVideoPlayerViewController *)self playerWidth]== 1;
    }
  }

  else
  {
    v10 = 1;
    v9 = 1;
  }

  v11 = [(SVVideoPlayerViewController *)self adPrivacyButton];
  [v11 setHidden:v9 withShowDelay:0.1];

  v12 = [(SVVideoPlayerViewController *)self learnMoreButton];
  [v12 setHidden:v10 withShowDelay:0.1];

  v13 = [(SVVideoPlayerViewController *)self skipButton];
  [v13 setHidden:v9 withShowDelay:0.1];

  v14 = [(SVVideoPlayerViewController *)self adGradientView];
  [v14 setHidden:v9 withShowDelay:0.1];

  v15 = [(SVVideoPlayerViewController *)self activityIndicatorView];
  v16 = v15;
  if (v4)
  {
    [v15 startAnimating];
  }

  else
  {
    [v15 stopAnimating];
  }

  v17 = [(SVVideoPlayerViewController *)self playerViewController];
  [v17 setShowsPlaybackControls:v5];

  v18 = [(SVVideoPlayerViewController *)self playerViewController];
  [v18 setRequiresLinearPlayback:v7];

  if ((v7 & 1) != 0 || !self->_enablePictureInPictureBehaviors)
  {
    v23 = [(SVVideoPlayerViewController *)self playerViewController];
    [v23 setAllowsPictureInPicturePlayback:0];

    v20 = [(SVVideoPlayerViewController *)self playerViewController];
    v21 = v20;
    v22 = 0;
  }

  else
  {
    v19 = [(SVVideoPlayerViewController *)self playerViewController];
    [v19 setAllowsPictureInPicturePlayback:1];

    v20 = [(SVVideoPlayerViewController *)self playerViewController];
    v21 = v20;
    v22 = 1;
  }

  [v20 setCanStartPictureInPictureAutomaticallyFromInline:v22];

  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
}

- (void)setupQueueIfNeeded
{
  v47[2] = *MEMORY[0x277D85DE8];
  v3 = [(SVVideoPlayerViewController *)self queue];

  if (!v3)
  {
    v4 = objc_alloc_init(SVVideoPlaybackQueue);
    v5 = [(SVVideoPlayerViewController *)self dataSource];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(SVVideoPlayerViewController *)self dataSource];
      v8 = [v7 videoAdForVideoPlayerViewController:self];

      if (v8)
      {
        v9 = [v8 metricsView];

        if (v9)
        {
          v10 = [v8 metricsView];
          v11 = [(SVVideoPlayerViewController *)self playerViewController];
          v12 = [v11 contentOverlayView];
          [v12 bounds];
          [v10 setFrame:?];

          v13 = [v8 metricsView];
          [v13 setAutoresizingMask:18];

          v14 = [v8 metricsView];
          [v14 setUserInteractionEnabled:0];

          v15 = [(SVVideoPlayerViewController *)self playerViewController];
          v16 = [v15 contentOverlayView];
          v17 = [v8 metricsView];
          [v16 addSubview:v17];
        }

        v18 = [v8 privacyMarker];
        [(SVVideoPlayerViewController *)self setAdPrivacyButton:v18];

        v19 = [(SVVideoPlayerViewController *)self adPrivacyButton];
        [v19 setHidden:1];

        v20 = [(SVVideoPlayerViewController *)self adPrivacyButton];
        [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

        v21 = [(SVVideoPlayerViewController *)self adPrivacyButton];
        [v21 addTarget:self action:sel_pause forControlEvents:64];

        v22 = [(SVVideoPlayerViewController *)self playerViewController];
        v23 = [v22 customControlsView];
        v24 = [(SVVideoPlayerViewController *)self adPrivacyButton];
        [v23 addSubview:v24];

        [(SVVideoPlayerViewController *)self updateViewConstraints];
        v25 = [SVAVURLAssetFactory alloc];
        v26 = *MEMORY[0x277CE6278];
        v46[0] = *MEMORY[0x277CE6260];
        v46[1] = v26;
        v47[0] = &unk_2877C6D60;
        v47[1] = &unk_2877C6D78;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
        v28 = [(SVAVURLAssetFactory *)v25 initWithOptions:v27];

        v29 = [[SVAVPlayerItemFactory alloc] initWithAutomaticallyLoadedAssetKeys:&unk_2877C6DD8 assetFactory:v28 preferredForwardBufferDuration:0.0];
        v30 = [[SVAVPlayerFactory alloc] initWithAudioMode:1 playerItemFactory:v29];
        v31 = [[SVPlaybackCoordinator alloc] initWithVideo:v8 playerFactory:v30];
        [(SVVideoPlaybackQueue *)v4 appendItem:v31];
        [(SVVideoPlayerViewController *)self setVideoAd:v8];
      }
    }

    v32 = [(SVVideoPlayerViewController *)self dataSource];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      v34 = [(SVVideoPlayerViewController *)self dataSource];
      v35 = [v34 videoForVideoPlayerViewController:self];

      v36 = [SVAVURLAssetFactory alloc];
      v44 = *MEMORY[0x277CE6278];
      v45 = &unk_2877C6D78;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v38 = [(SVAVURLAssetFactory *)v36 initWithOptions:v37];

      v39 = [[SVAVPlayerItemFactory alloc] initWithAutomaticallyLoadedAssetKeys:&unk_2877C6DF0 assetFactory:v38 preferredForwardBufferDuration:10.0];
      v40 = [[SVAVPlayerFactory alloc] initWithAudioMode:1 playerItemFactory:v39];
      v41 = [[SVPlaybackCoordinator alloc] initWithVideo:v35 playerFactory:v40];
      [(SVVideoPlaybackQueue *)v4 appendItem:v41];
      v42 = [(SVVideoPlayerViewController *)self playerViewController];
      [(SVPlaybackCoordinator *)v41 setHost:v42];

      [(SVVideoPlayerViewController *)self setPrimaryContentCoordinator:v41];
    }

    [(SVVideoPlayerViewController *)self setQueue:v4];
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)advance
{
  v3 = [(SVVideoPlayerViewController *)self queue];
  v15 = [v3 advance];

  if (v15)
  {
    v4 = [(SVVideoPlayerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(SVVideoPlayerViewController *)self delegate];
      v7 = [v15 video];
      [v6 videoPlayerViewController:self initiatedPlaybackOfVideo:v7];
    }

    [(SVVideoPlayerViewController *)self transitionToCoordinator:v15];
    [(SVVideoPlayerViewController *)self startPlaybackForCoordinatorIfAllowed:v15];
  }

  else
  {
    v8 = [(SVVideoPlayerViewController *)self coordinator];
    v9 = [v8 state];

    if (v9 == 5)
    {
      v10 = [(SVVideoPlayerViewController *)self coordinator];
      [v10 pause];

      v11 = [(SVVideoPlayerViewController *)self coordinator];
      v12 = [(SVVideoPlayerViewController *)self playerViewController];
      [v11 setHost:v12];

      v13 = [(SVVideoPlayerViewController *)self coordinator];
      [(SVVideoPlayerViewController *)self refreshControlsForPlaybackCoordinator:v13];
    }

    else
    {
      [(SVVideoPlayerViewController *)self finished];
    }
  }

  if ([(SVVideoPlayerViewController *)self mode]!= 1)
  {
    v14 = [(SVVideoPlayerViewController *)self adPrivacyButton];
    [v14 removeFromSuperview];

    [(SVVideoPlayerViewController *)self setAdPrivacyButton:0];
  }
}

- (void)transitionToCoordinator:(id)a3
{
  v4 = a3;
  [(SVVideoPlayerViewController *)self refreshControlsForPlaybackCoordinator:v4];
  v5 = [(SVVideoPlayerViewController *)self coordinator];
  [v5 setHost:0];

  v6 = [(SVVideoPlayerViewController *)self coordinator];
  [v6 removePlaybackObserver:self];

  v7 = [(SVVideoPlayerViewController *)self coordinator];
  v8 = [(SVVideoPlayerViewController *)self fullscreenBehaviorManager];
  [v7 removePlaybackObserver:v8];

  [v4 addPlaybackObserver:self];
  v9 = [(SVVideoPlayerViewController *)self fullscreenBehaviorManager];
  [v4 addPlaybackObserver:v9];

  [(SVVideoPlayerViewController *)self setCoordinator:v4];
  v10 = [v4 video];
  v11 = [v10 conformsToProtocol:&unk_2877E0EB8];
  LOBYTE(v8) = v11;
  v12 = v11;

  [(SVVideoPlayerViewController *)self setMode:v12];
  if ((v8 & 1) == 0)
  {
    v13 = [(SVVideoPlayerViewController *)self coordinator];
    v14 = [(SVVideoPlayerViewController *)self playerViewController];
    [v13 setHost:v14];

    v15 = [(SVVideoPlayerViewController *)self playerViewController];
    v16 = [v15 view];
    [v16 setHidden:0];
  }

  v17 = [SVVideoVolumeObserver alloc];
  v18 = [MEMORY[0x277CB83F8] sharedInstance];
  v19 = [(SVVideoVolumeObserver *)v17 initWithPlaybackCoordinator:v4 audioSession:v18];
  [(SVVideoPlayerViewController *)self setVolumeObserver:v19];

  v20 = [(SVVideoPlayerViewController *)self volumeObserver];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __55__SVVideoPlayerViewController_transitionToCoordinator___block_invoke;
  v22[3] = &unk_279BC6120;
  v23 = v4;
  v21 = v4;
  [v20 onMuteStateChange:v22];
}

void __55__SVVideoPlayerViewController_transitionToCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) setMuted:{objc_msgSend(v6, "muted")}];
  v3 = [*(a1 + 32) video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) video];
    [v5 muteStateChanged:{objc_msgSend(v6, "muted")}];
  }
}

- (void)finished
{
  v3 = [(SVVideoPlayerViewController *)self coordinator];
  [v3 seekToTime:0 withCompletionBlock:0.0];

  v4 = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SVVideoPlayerViewController *)self delegate];
    [v6 videoPlayerViewControllerFinishedVideoPlayback:self];
  }
}

- (void)startPlaybackForCoordinatorIfAllowed:(id)a3
{
  v4 = a3;
  if ([(SVVideoPlayerViewController *)self playbackAllowedForPlaybackCoordinator:?])
  {
    [v4 playWithButtonTapped:{-[SVVideoPlayerViewController playButtonTapped](self, "playButtonTapped")}];
  }
}

- (BOOL)playbackAllowedForPlaybackCoordinator:(id)a3
{
  v4 = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(SVVideoPlayerViewController *)self delegate];
  v7 = [v6 videoPlayerViewControllerShouldStartPlayback:self];

  return v7;
}

- (void)updateSkipButtonWithThreshold:(unint64_t)a3 time:(double)a4
{
  v4 = vcvtad_u64_f64(a4);
  v5 = a3 >= v4;
  v6 = a3 - v4;
  if (!v5)
  {
    v6 = 0;
  }

  if (a3 - 1 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(SVVideoPlayerViewController *)self skipButton];
  [v8 setSkipDuration:v7];
}

- (void)updateAdsButtonsVisibility
{
  v3 = [(SVVideoPlayerViewController *)self coordinator];
  v4 = [v3 video];
  v5 = [v4 conformsToProtocol:&unk_2877E0EB8];

  if (v5)
  {
    v6 = [(SVVideoPlayerViewController *)self coordinator];
    v7 = [v6 video];

    v8 = [(SVVideoPlayerViewController *)self coordinator];
    if ([v8 state] == 3)
    {
      v9 = 0;
    }

    else
    {
      v11 = [(SVVideoPlayerViewController *)self coordinator];
      v9 = [v11 state] != 4;
    }

    v10 = 1;
    if ([v7 hasAction] && !v9)
    {
      v10 = [(SVVideoPlayerViewController *)self playerWidth]== 1;
    }
  }

  else
  {
    v10 = 1;
    v9 = 1;
  }

  v12 = [(SVVideoPlayerViewController *)self adPrivacyButton];
  [v12 setHidden:v9 withShowDelay:0.1];

  v13 = [(SVVideoPlayerViewController *)self learnMoreButton];
  [v13 setHidden:v10 withShowDelay:0.1];

  v14 = [(SVVideoPlayerViewController *)self skipButton];
  [v14 setHidden:v9 withShowDelay:0.1];

  v15 = [(SVVideoPlayerViewController *)self adGradientView];
  [v15 setHidden:v9 withShowDelay:0.1];
}

- (UIViewController)viewControllerForModalPresentation
{
  v2 = [(SVVideoPlayerViewController *)self playerViewController];
  v3 = [v2 viewControllerForFullScreenPresentation];

  return v3;
}

- (void)tapped
{
  v3 = [(SVVideoPlayerViewController *)self coordinator];
  v4 = [v3 video];

  if (objc_opt_respondsToSelector())
  {
    [v4 tappedToToggleControlVisibility:{-[SVVideoPlayerViewController showsPlaybackControls](self, "showsPlaybackControls")}];
  }
}

- (void)updatePlayerWidthIfNeeded
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v3 = [(SVVideoPlayerViewController *)self videoAd];

    if (v3)
    {
      v4 = [(SVVideoPlayerViewController *)self calculatePlayerWidth];
      if (v4 != [(SVVideoPlayerViewController *)self playerWidth])
      {
        [(SVVideoPlayerViewController *)self setPlayerWidth:v4];
        if ((v4 - 1) <= 2)
        {
          v5 = dword_2660A9868[(v4 - 1)];
          v6 = [(SVVideoPlayerViewController *)self skipButton];
          [v6 setMode:v5];
        }
      }
    }
  }
}

- (int)calculatePlayerWidth
{
  v2 = [(SVVideoPlayerViewController *)self playerViewController];
  [v2 videoBounds];
  v4 = v3;

  if (v4 > 0.0)
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 preferredLocalizations];

    if ([v6 count] && ((objc_msgSend(v6, "objectAtIndexedSubscript:", 0), v7 = objc_claimAutoreleasedReturnValue(), v7 == @"fr") || (v8 = v7, v9 = -[__CFString hasPrefix:](v7, "hasPrefix:", @"fr-"), v8, v9)))
    {
      if (v4 <= 383.0)
      {
        v10 = 289.0;
        goto LABEL_11;
      }
    }

    else if (v4 <= 282.0)
    {
      v10 = 230.0;
LABEL_11:
      if (v4 <= v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      goto LABEL_14;
    }

    v11 = 3;
LABEL_14:

    return v11;
  }

  return 0;
}

- (SVVideoPlayerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SVVideoPlayerViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end
@interface SVVideoPlayerViewController
- (BOOL)isFullscreenInProgress;
- (BOOL)isLoading;
- (BOOL)isPictureInPictureActive;
- (BOOL)isPlaying;
- (BOOL)playbackAllowedForPlaybackCoordinator:(id)coordinator;
- (BOOL)playerViewController:(id)controller shouldExitFullScreenWithReason:(int64_t)reason;
- (SVVideoPlayerViewController)init;
- (SVVideoPlayerViewControllerDataSource)dataSource;
- (SVVideoPlayerViewControllerDelegate)delegate;
- (UIViewController)viewControllerForModalPresentation;
- (int)calculatePlayerWidth;
- (void)adSkipButtonTapped:(id)tapped;
- (void)addDebuggerAction:(id)action;
- (void)advance;
- (void)dealloc;
- (void)embedVideoPlayerIfNeeded;
- (void)enterFullscreenWithCompletionBlock:(id)block;
- (void)exitFullscreenWithCompletionBlock:(id)block;
- (void)finished;
- (void)fullscreenBehaviorManagerRequiresFullscreenPlayback:(id)playback;
- (void)learnMoreButtonTapped:(id)tapped;
- (void)loadView;
- (void)pause;
- (void)playbackCoordinator:(id)coordinator timeElapsed:(double)elapsed duration:(double)duration;
- (void)playbackCoordinatorFinishedLoadingVideoURL:(id)l;
- (void)playbackCoordinatorPausedPlayback:(id)playback;
- (void)playbackCoordinatorResumedPlayback:(id)playback;
- (void)playbackCoordinatorStartedPlayback:(id)playback;
- (void)playbackCoordinatorStateChanged:(id)changed;
- (void)playerViewController:(id)controller metricsCollectionEventOccured:(int64_t)occured;
- (void)playerViewController:(id)controller restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler;
- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator;
- (void)playerViewControllerDidStartPictureInPicture:(id)picture;
- (void)playerViewControllerDidStopPictureInPicture:(id)picture;
- (void)playerViewControllerWillStartPictureInPicture:(id)picture;
- (void)playerViewControllerWillStopPictureInPicture:(id)picture;
- (void)refreshControlsForPlaybackCoordinator:(id)coordinator;
- (void)removeVideoPlayerIfNeeded;
- (void)setFullscreenBehavior:(unint64_t)behavior;
- (void)setupQueueIfNeeded;
- (void)startPictureInPictureIfPossible;
- (void)startPlaybackForCoordinatorIfAllowed:(id)allowed;
- (void)stopPictureInPicture;
- (void)tapped;
- (void)transitionToCoordinator:(id)coordinator;
- (void)updateAdsButtonsVisibility;
- (void)updatePlayerWidthIfNeeded;
- (void)updateSkipButtonWithThreshold:(unint64_t)threshold time:(double)time;
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
  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  [coordinator setHost:0];

  v4.receiver = self;
  v4.super_class = SVVideoPlayerViewController;
  [(SVVideoPlayerViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = SVVideoPlayerViewController;
  [(SVVideoPlayerViewController *)&v33 viewDidLoad];
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  [(SVVideoPlayerViewController *)self addChildViewController:playerViewController];

  view = [(SVVideoPlayerViewController *)self view];
  playerViewController2 = [(SVVideoPlayerViewController *)self playerViewController];
  view2 = [playerViewController2 view];
  [view addSubview:view2];

  playerViewController3 = [(SVVideoPlayerViewController *)self playerViewController];
  view3 = [playerViewController3 view];
  [view3 setHidden:1];

  playerViewController4 = [(SVVideoPlayerViewController *)self playerViewController];
  view4 = [playerViewController4 view];
  view5 = [(SVVideoPlayerViewController *)self view];
  [view5 bounds];
  [view4 setFrame:?];

  playerViewController5 = [(SVVideoPlayerViewController *)self playerViewController];
  [playerViewController5 didMoveToParentViewController:self];

  playerViewController6 = [(SVVideoPlayerViewController *)self playerViewController];
  [playerViewController6 setShowsPlaybackControls:0];

  view6 = [(SVVideoPlayerViewController *)self view];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [view6 setBackgroundColor:blackColor];

  view7 = [(SVVideoPlayerViewController *)self view];
  activityIndicatorView = [(SVVideoPlayerViewController *)self activityIndicatorView];
  [view7 addSubview:activityIndicatorView];

  playerViewController7 = [(SVVideoPlayerViewController *)self playerViewController];
  view8 = [playerViewController7 view];
  tapGesture = [(SVVideoPlayerViewController *)self tapGesture];
  [view8 addGestureRecognizer:tapGesture];

  playerViewController8 = [(SVVideoPlayerViewController *)self playerViewController];
  customControlsView = [playerViewController8 customControlsView];
  learnMoreButton = [(SVVideoPlayerViewController *)self learnMoreButton];
  [customControlsView addSubview:learnMoreButton];

  playerViewController9 = [(SVVideoPlayerViewController *)self playerViewController];
  customControlsView2 = [playerViewController9 customControlsView];
  skipButton = [(SVVideoPlayerViewController *)self skipButton];
  [customControlsView2 addSubview:skipButton];

  playerViewController10 = [(SVVideoPlayerViewController *)self playerViewController];
  contentOverlayView = [playerViewController10 contentOverlayView];
  adGradientView = [(SVVideoPlayerViewController *)self adGradientView];
  [contentOverlayView addSubview:adGradientView];

  playerViewController11 = [(SVVideoPlayerViewController *)self playerViewController];
  customControlsView3 = [playerViewController11 customControlsView];
  [customControlsView3 setAccessibilityElementsHidden:0];

  view9 = [(SVVideoPlayerViewController *)self view];
  [view9 setNeedsUpdateConstraints];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = SVVideoPlayerViewController;
  [(SVVideoPlayerViewController *)&v18 viewDidLayoutSubviews];
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  view = [playerViewController view];
  superview = [view superview];
  view2 = [(SVVideoPlayerViewController *)self view];

  if (superview == view2)
  {
    view3 = [(SVVideoPlayerViewController *)self view];
    [view3 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    playerViewController2 = [(SVVideoPlayerViewController *)self playerViewController];
    view4 = [playerViewController2 view];
    [view4 setFrame:{v9, v11, v13, v15}];
  }
}

- (void)updateViewConstraints
{
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  customControlsView = [playerViewController customControlsView];
  animatedUnobscuredCenterAreaLayoutGuide = [customControlsView animatedUnobscuredCenterAreaLayoutGuide];

  playerViewController2 = [(SVVideoPlayerViewController *)self playerViewController];
  customControlsView2 = [playerViewController2 customControlsView];
  transportControlsAreaLayoutGuide = [customControlsView2 transportControlsAreaLayoutGuide];

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

  adPrivacyButton = [(SVVideoPlayerViewController *)self adPrivacyButton];

  if (adPrivacyButton)
  {
    if (!v9)
    {
      v10 = -2.0;
    }

    adPrivacyButton2 = [(SVVideoPlayerViewController *)self adPrivacyButton];
    leadingAnchor = [adPrivacyButton2 leadingAnchor];
    leadingAnchor2 = [transportControlsAreaLayoutGuide leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v16 setActive:1];

    adPrivacyButton3 = [(SVVideoPlayerViewController *)self adPrivacyButton];
    bottomAnchor = [adPrivacyButton3 bottomAnchor];
    bottomAnchor2 = [animatedUnobscuredCenterAreaLayoutGuide bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v10];
    [v20 setActive:1];

    if (_UISolariumFeatureFlagEnabled())
    {
      v21 = 12.0;
    }

    else
    {
      v21 = 3.0;
    }

    learnMoreButton = [(SVVideoPlayerViewController *)self learnMoreButton];
    leadingAnchor3 = [learnMoreButton leadingAnchor];
    adPrivacyButton4 = [(SVVideoPlayerViewController *)self adPrivacyButton];
    trailingAnchor = [adPrivacyButton4 trailingAnchor];
    v26 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v21];
    [v26 setActive:1];

    learnMoreButton2 = [(SVVideoPlayerViewController *)self learnMoreButton];
    bottomAnchor3 = [learnMoreButton2 bottomAnchor];
    bottomAnchor4 = [animatedUnobscuredCenterAreaLayoutGuide bottomAnchor];
    v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v11];
    [v30 setActive:1];
  }

  skipButton = [(SVVideoPlayerViewController *)self skipButton];
  trailingAnchor2 = [skipButton trailingAnchor];
  trailingAnchor3 = [transportControlsAreaLayoutGuide trailingAnchor];
  v34 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v34 setActive:1];

  skipButton2 = [(SVVideoPlayerViewController *)self skipButton];
  bottomAnchor5 = [skipButton2 bottomAnchor];
  bottomAnchor6 = [animatedUnobscuredCenterAreaLayoutGuide bottomAnchor];
  v38 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:v11];
  [v38 setActive:1];

  activityIndicatorView = [(SVVideoPlayerViewController *)self activityIndicatorView];
  centerXAnchor = [activityIndicatorView centerXAnchor];
  view = [(SVVideoPlayerViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v43 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v43 setActive:1];

  activityIndicatorView2 = [(SVVideoPlayerViewController *)self activityIndicatorView];
  centerYAnchor = [activityIndicatorView2 centerYAnchor];
  view2 = [(SVVideoPlayerViewController *)self view];
  centerYAnchor2 = [view2 centerYAnchor];
  v48 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v48 setActive:1];

  adGradientView = [(SVVideoPlayerViewController *)self adGradientView];
  leadingAnchor4 = [adGradientView leadingAnchor];
  playerViewController3 = [(SVVideoPlayerViewController *)self playerViewController];
  contentOverlayView = [playerViewController3 contentOverlayView];
  leadingAnchor5 = [contentOverlayView leadingAnchor];
  v54 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  [v54 setActive:1];

  adGradientView2 = [(SVVideoPlayerViewController *)self adGradientView];
  trailingAnchor4 = [adGradientView2 trailingAnchor];
  playerViewController4 = [(SVVideoPlayerViewController *)self playerViewController];
  contentOverlayView2 = [playerViewController4 contentOverlayView];
  trailingAnchor5 = [contentOverlayView2 trailingAnchor];
  v60 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  [v60 setActive:1];

  adGradientView3 = [(SVVideoPlayerViewController *)self adGradientView];
  topAnchor = [adGradientView3 topAnchor];
  playerViewController5 = [(SVVideoPlayerViewController *)self playerViewController];
  contentOverlayView3 = [playerViewController5 contentOverlayView];
  topAnchor2 = [contentOverlayView3 topAnchor];
  v66 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v66 setActive:1];

  adGradientView4 = [(SVVideoPlayerViewController *)self adGradientView];
  bottomAnchor7 = [adGradientView4 bottomAnchor];
  playerViewController6 = [(SVVideoPlayerViewController *)self playerViewController];
  contentOverlayView4 = [playerViewController6 contentOverlayView];
  bottomAnchor8 = [contentOverlayView4 bottomAnchor];
  v72 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  [v72 setActive:1];

  v73.receiver = self;
  v73.super_class = SVVideoPlayerViewController;
  [(SVVideoPlayerViewController *)&v73 updateViewConstraints];
}

- (void)pause
{
  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  [coordinator setHost:playerViewController];

  coordinator2 = [(SVVideoPlayerViewController *)self coordinator];
  [coordinator2 pause];
}

- (void)enterFullscreenWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (![(SVVideoPlayerViewController *)self isFullscreen])
  {
    view = [(SVVideoPlayerViewController *)self view];
    [view layoutIfNeeded];

    objc_initWeak(&location, self);
    playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__SVVideoPlayerViewController_enterFullscreenWithCompletionBlock___block_invoke;
    v7[3] = &unk_279BC6080;
    objc_copyWeak(&v9, &location);
    v8 = blockCopy;
    [playerViewController enterFullScreenAnimated:1 completionHandler:v7];

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

- (void)exitFullscreenWithCompletionBlock:(id)block
{
  blockCopy = block;
  if ([(SVVideoPlayerViewController *)self isFullscreen])
  {
    view = [(SVVideoPlayerViewController *)self view];
    [view layoutIfNeeded];

    objc_initWeak(&location, self);
    playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__SVVideoPlayerViewController_exitFullscreenWithCompletionBlock___block_invoke;
    v7[3] = &unk_279BC6080;
    objc_copyWeak(&v9, &location);
    v8 = blockCopy;
    [playerViewController exitFullScreenAnimated:1 completionHandler:v7];

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
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  if ([playerViewController isPictureInPictureActive])
  {
LABEL_2:

    return;
  }

  isPlaying = [(SVVideoPlayerViewController *)self isPlaying];

  if (!isPlaying || [(SVVideoPlayerViewController *)self isFullscreen])
  {
    return;
  }

  if ([MEMORY[0x277CB85D0] isPictureInPictureSupported])
  {
    playerViewController2 = [(SVVideoPlayerViewController *)self playerViewController];
    if ([playerViewController2 allowsPictureInPicturePlayback] && -[SVVideoPlayerViewController enablePictureInPictureBehaviors](self, "enablePictureInPictureBehaviors") && -[SVVideoPlayerViewController mode](self, "mode") != 1)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom != 5)
      {
        playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
        [playerViewController startPictureInPicture];
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
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  [playerViewController stopPictureInPicture];
}

- (BOOL)isPlaying
{
  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  v3 = [coordinator state] == 3;

  return v3;
}

- (BOOL)isLoading
{
  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  v3 = [coordinator state] == 1;

  return v3;
}

- (BOOL)isPictureInPictureActive
{
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  isPictureInPictureActive = [playerViewController isPictureInPictureActive];

  return isPictureInPictureActive;
}

- (void)addDebuggerAction:(id)action
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CB85A8];
  actionCopy = action;
  v6 = [[v4 alloc] initWithTitle:@"Debugger" type:0];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"ant.circle"];
  [v6 setImage:v7];

  [v6 setAction:actionCopy];
  v10[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(AVPlayerViewController *)self->_playerViewController setCustomControlItems:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)embedVideoPlayerIfNeeded
{
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  parentViewController = [playerViewController parentViewController];

  if (parentViewController != self)
  {
    playerViewController2 = [(SVVideoPlayerViewController *)self playerViewController];
    [(SVVideoPlayerViewController *)self addChildViewController:playerViewController2];

    view = [(SVVideoPlayerViewController *)self view];
    playerViewController3 = [(SVVideoPlayerViewController *)self playerViewController];
    view2 = [playerViewController3 view];
    [view addSubview:view2];

    playerViewController4 = [(SVVideoPlayerViewController *)self playerViewController];
    view3 = [playerViewController4 view];
    view4 = [(SVVideoPlayerViewController *)self view];
    [view4 bounds];
    [view3 setFrame:?];

    playerViewController5 = [(SVVideoPlayerViewController *)self playerViewController];
    [playerViewController5 didMoveToParentViewController:self];

    view5 = [(SVVideoPlayerViewController *)self view];
    [view5 layoutIfNeeded];
  }
}

- (void)removeVideoPlayerIfNeeded
{
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  parentViewController = [playerViewController parentViewController];

  if (parentViewController)
  {
    playerViewController2 = [(SVVideoPlayerViewController *)self playerViewController];
    [playerViewController2 willMoveToParentViewController:0];

    playerViewController3 = [(SVVideoPlayerViewController *)self playerViewController];
    view = [playerViewController3 view];
    [view removeFromSuperview];

    playerViewController4 = [(SVVideoPlayerViewController *)self playerViewController];
    [playerViewController4 removeFromParentViewController];
  }
}

- (void)willUnload
{
  videoAd = [(SVVideoPlayerViewController *)self videoAd];
  [videoAd willUnload];
}

- (BOOL)isFullscreenInProgress
{
  presentedViewController = [(SVVideoPlayerViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    return 0;
  }

  presentedViewController2 = [(SVVideoPlayerViewController *)self presentedViewController];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);

  LOBYTE(presentedViewController2) = [v6 isEqualToString:@"AVFullScreenViewController"];
  return presentedViewController2;
}

- (void)fullscreenBehaviorManagerRequiresFullscreenPlayback:(id)playback
{
  if (![(SVVideoPlayerViewController *)self isFullscreen]&& [(SVVideoPlayerViewController *)self isPlaying])
  {

    [(SVVideoPlayerViewController *)self enterFullscreenWithCompletionBlock:0];
  }
}

- (void)setFullscreenBehavior:(unint64_t)behavior
{
  if (self->_fullscreenBehavior != behavior)
  {
    self->_fullscreenBehavior = behavior;
    fullscreenBehaviorManager = [(SVVideoPlayerViewController *)self fullscreenBehaviorManager];
    [fullscreenBehaviorManager setBehavior:behavior];
  }
}

- (BOOL)playerViewController:(id)controller shouldExitFullScreenWithReason:(int64_t)reason
{
  v5 = [(SVVideoPlayerViewController *)self fullscreenBehaviorManager:controller];
  fullscreenPlaybackRequiredForCurrentConditions = [v5 fullscreenPlaybackRequiredForCurrentConditions];

  if (fullscreenPlaybackRequiredForCurrentConditions)
  {
    [(SVVideoPlayerViewController *)self pause];
  }

  return 1;
}

- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __122__SVVideoPlayerViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke;
  v7[3] = &unk_279BC60A8;
  controlsCopy = controls;
  v7[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __122__SVVideoPlayerViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke_2;
  v5[3] = &unk_279BC60D0;
  v5[4] = self;
  controlsCopy2 = controls;
  [coordinator addCoordinatedAnimations:v7 completion:v5];
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

- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  [playerViewController resignFirstResponder];

  delegate = [(SVVideoPlayerViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    [delegate2 videoPlayerViewControllerWillExitFullscreen:self];
  }

  adPrivacyButton = [(SVVideoPlayerViewController *)self adPrivacyButton];
  [adPrivacyButton setHidden:1];

  learnMoreButton = [(SVVideoPlayerViewController *)self learnMoreButton];
  [learnMoreButton setHidden:1];

  skipButton = [(SVVideoPlayerViewController *)self skipButton];
  [skipButton setHidden:1];

  adGradientView = [(SVVideoPlayerViewController *)self adGradientView];
  [adGradientView setHidden:1];

  playerState = [(SVVideoPlayerViewController *)self playerState];
  [playerState setIsFullScreen:0];

  videoAd = [(SVVideoPlayerViewController *)self videoAd];
  [videoAd setFullScreen:0];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__SVVideoPlayerViewController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v16[3] = &unk_279BC60F8;
  v16[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v16];
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

- (void)playerViewController:(id)controller willBeginFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  delegate = [(SVVideoPlayerViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    [delegate2 videoPlayerViewControllerWillEnterFullscreen:self];
  }

  adPrivacyButton = [(SVVideoPlayerViewController *)self adPrivacyButton];
  [adPrivacyButton setHidden:1];

  learnMoreButton = [(SVVideoPlayerViewController *)self learnMoreButton];
  [learnMoreButton setHidden:1];

  skipButton = [(SVVideoPlayerViewController *)self skipButton];
  [skipButton setHidden:1];

  adGradientView = [(SVVideoPlayerViewController *)self adGradientView];
  [adGradientView setHidden:1];

  playerState = [(SVVideoPlayerViewController *)self playerState];
  [playerState setIsFullScreen:1];

  videoAd = [(SVVideoPlayerViewController *)self videoAd];
  [videoAd setFullScreen:1];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__SVVideoPlayerViewController_playerViewController_willBeginFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v15[3] = &unk_279BC60F8;
  v15[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v15];
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

- (void)playerViewControllerWillStartPictureInPicture:(id)picture
{
  delegate = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    [delegate2 videoPlayerViewControllerWillStartPictureInPicture:self];
  }
}

- (void)playerViewControllerDidStartPictureInPicture:(id)picture
{
  delegate = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    [delegate2 videoPlayerViewControllerDidStartPictureInPicture:self];
  }

  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  video = [coordinator video];

  if (objc_opt_respondsToSelector())
  {
    coordinator2 = [(SVVideoPlayerViewController *)self coordinator];
    video2 = [coordinator2 video];
    [video2 startedPictureInPicture];
  }
}

- (void)playerViewControllerWillStopPictureInPicture:(id)picture
{
  delegate = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    [delegate2 videoPlayerViewControllerWillStopPictureInPicture:self];
  }
}

- (void)playerViewControllerDidStopPictureInPicture:(id)picture
{
  delegate = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    [delegate2 videoPlayerViewControllerDidStopPictureInPicture:self];
  }

  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  video = [coordinator video];

  if (objc_opt_respondsToSelector())
  {
    coordinator2 = [(SVVideoPlayerViewController *)self coordinator];
    video2 = [coordinator2 video];
    [video2 stoppedPictureInPicture];
  }
}

- (void)playerViewController:(id)controller restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(SVVideoPlayerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    [delegate2 videoPlayerViewController:self restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)playerViewController:(id)controller metricsCollectionEventOccured:(int64_t)occured
{
  controllerCopy = controller;
  if (occured == 5)
  {
    v12 = controllerCopy;
    [(SVVideoPlayerViewController *)self setFullscreen:0];
    coordinator = [(SVVideoPlayerViewController *)self coordinator];
    video = [coordinator video];

    if (objc_opt_respondsToSelector())
    {
      coordinator2 = [(SVVideoPlayerViewController *)self coordinator];
      video2 = [coordinator2 video];
      [video2 exitedFullscreen];
      goto LABEL_7;
    }
  }

  else
  {
    if (occured != 4)
    {
      goto LABEL_9;
    }

    v12 = controllerCopy;
    [(SVVideoPlayerViewController *)self setFullscreen:1];
    coordinator3 = [(SVVideoPlayerViewController *)self coordinator];
    video = [coordinator3 video];

    if (objc_opt_respondsToSelector())
    {
      coordinator2 = [(SVVideoPlayerViewController *)self coordinator];
      video2 = [coordinator2 video];
      [video2 enteredFullscreen];
LABEL_7:
    }
  }

  controllerCopy = v12;
LABEL_9:
}

- (void)playbackCoordinatorStartedPlayback:(id)playback
{
  playbackCopy = playback;
  video = [playbackCopy video];
  videoAd = [(SVVideoPlayerViewController *)self videoAd];

  if (video != videoAd)
  {
    videoAd2 = [(SVVideoPlayerViewController *)self videoAd];
    [videoAd2 nextVideoStartedPlaying];

    videoAd3 = [(SVVideoPlayerViewController *)self videoAd];
    metricsView = [videoAd3 metricsView];
    [metricsView removeFromSuperview];

    [(SVVideoPlayerViewController *)self setVideoAd:0];
  }

  [(SVVideoPlayerViewController *)self refreshControlsForPlaybackCoordinator:playbackCopy];
  delegate = [(SVVideoPlayerViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    video2 = [playbackCopy video];
    [delegate2 videoPlayerViewController:self startedPlaybackOfVideo:video2];
  }
}

- (void)playbackCoordinatorPausedPlayback:(id)playback
{
  playbackCopy = playback;
  [(SVVideoPlayerViewController *)self refreshControlsForPlaybackCoordinator:?];
  delegate = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    video = [playbackCopy video];
    [delegate2 videoPlayerViewController:self pausedPlaybackOfVideo:video];
  }
}

- (void)playbackCoordinatorResumedPlayback:(id)playback
{
  playbackCopy = playback;
  delegate = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    video = [playbackCopy video];
    [delegate2 videoPlayerViewController:self resumedPlaybackOfVideo:video];
  }
}

- (void)playbackCoordinator:(id)coordinator timeElapsed:(double)elapsed duration:(double)duration
{
  coordinatorCopy = coordinator;
  video = [coordinatorCopy video];
  v8 = [video conformsToProtocol:&unk_2877E0EB8];

  if (v8)
  {
    video2 = [coordinatorCopy video];
    -[SVVideoPlayerViewController updateSkipButtonWithThreshold:time:](self, "updateSkipButtonWithThreshold:time:", [video2 skipThreshold], elapsed);
  }
}

- (void)playbackCoordinatorStateChanged:(id)changed
{
  changedCopy = changed;
  if ([changedCopy state] == 2)
  {
    [(SVVideoPlayerViewController *)self refreshControlsForPlaybackCoordinator:changedCopy];
    video = [changedCopy video];
    v5 = [video conformsToProtocol:&unk_2877E0EB8];

    if (v5)
    {
      video2 = [changedCopy video];
      -[SVVideoPlayerViewController updateSkipButtonWithThreshold:time:](self, "updateSkipButtonWithThreshold:time:", [video2 skipThreshold], 0.0);
    }

    if ([(SVVideoPlayerViewController *)self playbackAllowedForPlaybackCoordinator:changedCopy])
    {
      [changedCopy playWithButtonTapped:{-[SVVideoPlayerViewController playButtonTapped](self, "playButtonTapped")}];
    }

    else
    {
      [changedCopy pause];
    }
  }
}

- (void)playbackCoordinatorFinishedLoadingVideoURL:(id)l
{
  lCopy = l;
  coordinator = [(SVVideoPlayerViewController *)self coordinator];

  if (coordinator == lCopy)
  {
    playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
    [lCopy setHost:playerViewController];

    playerViewController2 = [(SVVideoPlayerViewController *)self playerViewController];
    view = [playerViewController2 view];
    [view setHidden:0];
  }
}

- (void)learnMoreButtonTapped:(id)tapped
{
  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  video = [coordinator video];

  [video presentAction];
  [(SVVideoPlayerViewController *)self pause];
}

- (void)adSkipButtonTapped:(id)tapped
{
  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  video = [coordinator video];

  if ([video conformsToProtocol:&unk_2877E0EB8])
  {
    coordinator2 = [(SVVideoPlayerViewController *)self coordinator];
    video2 = [coordinator2 video];

    [video2 skipped];
    [(SVVideoPlayerViewController *)self advance];
  }
}

- (void)refreshControlsForPlaybackCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v4 = [coordinatorCopy state] == 1 || !objc_msgSend(coordinatorCopy, "state") || objc_msgSend(coordinatorCopy, "state") == 2;
  v5 = [coordinatorCopy state] == 3 || objc_msgSend(coordinatorCopy, "state") == 4 || objc_msgSend(coordinatorCopy, "state") == 5;
  video = [coordinatorCopy video];
  v7 = [video conformsToProtocol:&unk_2877E0EB8];

  if (v7)
  {
    video2 = [coordinatorCopy video];
    v9 = [coordinatorCopy state] != 3 && objc_msgSend(coordinatorCopy, "state") != 4;
    v10 = 1;
    if ([video2 hasAction] && !v9)
    {
      v10 = [(SVVideoPlayerViewController *)self playerWidth]== 1;
    }
  }

  else
  {
    v10 = 1;
    v9 = 1;
  }

  adPrivacyButton = [(SVVideoPlayerViewController *)self adPrivacyButton];
  [adPrivacyButton setHidden:v9 withShowDelay:0.1];

  learnMoreButton = [(SVVideoPlayerViewController *)self learnMoreButton];
  [learnMoreButton setHidden:v10 withShowDelay:0.1];

  skipButton = [(SVVideoPlayerViewController *)self skipButton];
  [skipButton setHidden:v9 withShowDelay:0.1];

  adGradientView = [(SVVideoPlayerViewController *)self adGradientView];
  [adGradientView setHidden:v9 withShowDelay:0.1];

  activityIndicatorView = [(SVVideoPlayerViewController *)self activityIndicatorView];
  v16 = activityIndicatorView;
  if (v4)
  {
    [activityIndicatorView startAnimating];
  }

  else
  {
    [activityIndicatorView stopAnimating];
  }

  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  [playerViewController setShowsPlaybackControls:v5];

  playerViewController2 = [(SVVideoPlayerViewController *)self playerViewController];
  [playerViewController2 setRequiresLinearPlayback:v7];

  if ((v7 & 1) != 0 || !self->_enablePictureInPictureBehaviors)
  {
    playerViewController3 = [(SVVideoPlayerViewController *)self playerViewController];
    [playerViewController3 setAllowsPictureInPicturePlayback:0];

    playerViewController4 = [(SVVideoPlayerViewController *)self playerViewController];
    v21 = playerViewController4;
    v22 = 0;
  }

  else
  {
    playerViewController5 = [(SVVideoPlayerViewController *)self playerViewController];
    [playerViewController5 setAllowsPictureInPicturePlayback:1];

    playerViewController4 = [(SVVideoPlayerViewController *)self playerViewController];
    v21 = playerViewController4;
    v22 = 1;
  }

  [playerViewController4 setCanStartPictureInPictureAutomaticallyFromInline:v22];

  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
}

- (void)setupQueueIfNeeded
{
  v47[2] = *MEMORY[0x277D85DE8];
  queue = [(SVVideoPlayerViewController *)self queue];

  if (!queue)
  {
    v4 = objc_alloc_init(SVVideoPlaybackQueue);
    dataSource = [(SVVideoPlayerViewController *)self dataSource];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      dataSource2 = [(SVVideoPlayerViewController *)self dataSource];
      v8 = [dataSource2 videoAdForVideoPlayerViewController:self];

      if (v8)
      {
        metricsView = [v8 metricsView];

        if (metricsView)
        {
          metricsView2 = [v8 metricsView];
          playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
          contentOverlayView = [playerViewController contentOverlayView];
          [contentOverlayView bounds];
          [metricsView2 setFrame:?];

          metricsView3 = [v8 metricsView];
          [metricsView3 setAutoresizingMask:18];

          metricsView4 = [v8 metricsView];
          [metricsView4 setUserInteractionEnabled:0];

          playerViewController2 = [(SVVideoPlayerViewController *)self playerViewController];
          contentOverlayView2 = [playerViewController2 contentOverlayView];
          metricsView5 = [v8 metricsView];
          [contentOverlayView2 addSubview:metricsView5];
        }

        privacyMarker = [v8 privacyMarker];
        [(SVVideoPlayerViewController *)self setAdPrivacyButton:privacyMarker];

        adPrivacyButton = [(SVVideoPlayerViewController *)self adPrivacyButton];
        [adPrivacyButton setHidden:1];

        adPrivacyButton2 = [(SVVideoPlayerViewController *)self adPrivacyButton];
        [adPrivacyButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

        adPrivacyButton3 = [(SVVideoPlayerViewController *)self adPrivacyButton];
        [adPrivacyButton3 addTarget:self action:sel_pause forControlEvents:64];

        playerViewController3 = [(SVVideoPlayerViewController *)self playerViewController];
        customControlsView = [playerViewController3 customControlsView];
        adPrivacyButton4 = [(SVVideoPlayerViewController *)self adPrivacyButton];
        [customControlsView addSubview:adPrivacyButton4];

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

    dataSource3 = [(SVVideoPlayerViewController *)self dataSource];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      dataSource4 = [(SVVideoPlayerViewController *)self dataSource];
      v35 = [dataSource4 videoForVideoPlayerViewController:self];

      v36 = [SVAVURLAssetFactory alloc];
      v44 = *MEMORY[0x277CE6278];
      v45 = &unk_2877C6D78;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v38 = [(SVAVURLAssetFactory *)v36 initWithOptions:v37];

      v39 = [[SVAVPlayerItemFactory alloc] initWithAutomaticallyLoadedAssetKeys:&unk_2877C6DF0 assetFactory:v38 preferredForwardBufferDuration:10.0];
      v40 = [[SVAVPlayerFactory alloc] initWithAudioMode:1 playerItemFactory:v39];
      v41 = [[SVPlaybackCoordinator alloc] initWithVideo:v35 playerFactory:v40];
      [(SVVideoPlaybackQueue *)v4 appendItem:v41];
      playerViewController4 = [(SVVideoPlayerViewController *)self playerViewController];
      [(SVPlaybackCoordinator *)v41 setHost:playerViewController4];

      [(SVVideoPlayerViewController *)self setPrimaryContentCoordinator:v41];
    }

    [(SVVideoPlayerViewController *)self setQueue:v4];
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)advance
{
  queue = [(SVVideoPlayerViewController *)self queue];
  advance = [queue advance];

  if (advance)
  {
    delegate = [(SVVideoPlayerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(SVVideoPlayerViewController *)self delegate];
      video = [advance video];
      [delegate2 videoPlayerViewController:self initiatedPlaybackOfVideo:video];
    }

    [(SVVideoPlayerViewController *)self transitionToCoordinator:advance];
    [(SVVideoPlayerViewController *)self startPlaybackForCoordinatorIfAllowed:advance];
  }

  else
  {
    coordinator = [(SVVideoPlayerViewController *)self coordinator];
    state = [coordinator state];

    if (state == 5)
    {
      coordinator2 = [(SVVideoPlayerViewController *)self coordinator];
      [coordinator2 pause];

      coordinator3 = [(SVVideoPlayerViewController *)self coordinator];
      playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
      [coordinator3 setHost:playerViewController];

      coordinator4 = [(SVVideoPlayerViewController *)self coordinator];
      [(SVVideoPlayerViewController *)self refreshControlsForPlaybackCoordinator:coordinator4];
    }

    else
    {
      [(SVVideoPlayerViewController *)self finished];
    }
  }

  if ([(SVVideoPlayerViewController *)self mode]!= 1)
  {
    adPrivacyButton = [(SVVideoPlayerViewController *)self adPrivacyButton];
    [adPrivacyButton removeFromSuperview];

    [(SVVideoPlayerViewController *)self setAdPrivacyButton:0];
  }
}

- (void)transitionToCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  [(SVVideoPlayerViewController *)self refreshControlsForPlaybackCoordinator:coordinatorCopy];
  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  [coordinator setHost:0];

  coordinator2 = [(SVVideoPlayerViewController *)self coordinator];
  [coordinator2 removePlaybackObserver:self];

  coordinator3 = [(SVVideoPlayerViewController *)self coordinator];
  fullscreenBehaviorManager = [(SVVideoPlayerViewController *)self fullscreenBehaviorManager];
  [coordinator3 removePlaybackObserver:fullscreenBehaviorManager];

  [coordinatorCopy addPlaybackObserver:self];
  fullscreenBehaviorManager2 = [(SVVideoPlayerViewController *)self fullscreenBehaviorManager];
  [coordinatorCopy addPlaybackObserver:fullscreenBehaviorManager2];

  [(SVVideoPlayerViewController *)self setCoordinator:coordinatorCopy];
  video = [coordinatorCopy video];
  v11 = [video conformsToProtocol:&unk_2877E0EB8];
  LOBYTE(fullscreenBehaviorManager) = v11;
  v12 = v11;

  [(SVVideoPlayerViewController *)self setMode:v12];
  if ((fullscreenBehaviorManager & 1) == 0)
  {
    coordinator4 = [(SVVideoPlayerViewController *)self coordinator];
    playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
    [coordinator4 setHost:playerViewController];

    playerViewController2 = [(SVVideoPlayerViewController *)self playerViewController];
    view = [playerViewController2 view];
    [view setHidden:0];
  }

  v17 = [SVVideoVolumeObserver alloc];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v19 = [(SVVideoVolumeObserver *)v17 initWithPlaybackCoordinator:coordinatorCopy audioSession:mEMORY[0x277CB83F8]];
  [(SVVideoPlayerViewController *)self setVolumeObserver:v19];

  volumeObserver = [(SVVideoPlayerViewController *)self volumeObserver];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __55__SVVideoPlayerViewController_transitionToCoordinator___block_invoke;
  v22[3] = &unk_279BC6120;
  v23 = coordinatorCopy;
  v21 = coordinatorCopy;
  [volumeObserver onMuteStateChange:v22];
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
  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  [coordinator seekToTime:0 withCompletionBlock:0.0];

  delegate = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SVVideoPlayerViewController *)self delegate];
    [delegate2 videoPlayerViewControllerFinishedVideoPlayback:self];
  }
}

- (void)startPlaybackForCoordinatorIfAllowed:(id)allowed
{
  allowedCopy = allowed;
  if ([(SVVideoPlayerViewController *)self playbackAllowedForPlaybackCoordinator:?])
  {
    [allowedCopy playWithButtonTapped:{-[SVVideoPlayerViewController playButtonTapped](self, "playButtonTapped")}];
  }
}

- (BOOL)playbackAllowedForPlaybackCoordinator:(id)coordinator
{
  delegate = [(SVVideoPlayerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(SVVideoPlayerViewController *)self delegate];
  v7 = [delegate2 videoPlayerViewControllerShouldStartPlayback:self];

  return v7;
}

- (void)updateSkipButtonWithThreshold:(unint64_t)threshold time:(double)time
{
  v4 = vcvtad_u64_f64(time);
  v5 = threshold >= v4;
  v6 = threshold - v4;
  if (!v5)
  {
    v6 = 0;
  }

  if (threshold - 1 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  skipButton = [(SVVideoPlayerViewController *)self skipButton];
  [skipButton setSkipDuration:v7];
}

- (void)updateAdsButtonsVisibility
{
  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  video = [coordinator video];
  v5 = [video conformsToProtocol:&unk_2877E0EB8];

  if (v5)
  {
    coordinator2 = [(SVVideoPlayerViewController *)self coordinator];
    video2 = [coordinator2 video];

    coordinator3 = [(SVVideoPlayerViewController *)self coordinator];
    if ([coordinator3 state] == 3)
    {
      v9 = 0;
    }

    else
    {
      coordinator4 = [(SVVideoPlayerViewController *)self coordinator];
      v9 = [coordinator4 state] != 4;
    }

    v10 = 1;
    if ([video2 hasAction] && !v9)
    {
      v10 = [(SVVideoPlayerViewController *)self playerWidth]== 1;
    }
  }

  else
  {
    v10 = 1;
    v9 = 1;
  }

  adPrivacyButton = [(SVVideoPlayerViewController *)self adPrivacyButton];
  [adPrivacyButton setHidden:v9 withShowDelay:0.1];

  learnMoreButton = [(SVVideoPlayerViewController *)self learnMoreButton];
  [learnMoreButton setHidden:v10 withShowDelay:0.1];

  skipButton = [(SVVideoPlayerViewController *)self skipButton];
  [skipButton setHidden:v9 withShowDelay:0.1];

  adGradientView = [(SVVideoPlayerViewController *)self adGradientView];
  [adGradientView setHidden:v9 withShowDelay:0.1];
}

- (UIViewController)viewControllerForModalPresentation
{
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  viewControllerForFullScreenPresentation = [playerViewController viewControllerForFullScreenPresentation];

  return viewControllerForFullScreenPresentation;
}

- (void)tapped
{
  coordinator = [(SVVideoPlayerViewController *)self coordinator];
  video = [coordinator video];

  if (objc_opt_respondsToSelector())
  {
    [video tappedToToggleControlVisibility:{-[SVVideoPlayerViewController showsPlaybackControls](self, "showsPlaybackControls")}];
  }
}

- (void)updatePlayerWidthIfNeeded
{
  if (_UISolariumFeatureFlagEnabled())
  {
    videoAd = [(SVVideoPlayerViewController *)self videoAd];

    if (videoAd)
    {
      calculatePlayerWidth = [(SVVideoPlayerViewController *)self calculatePlayerWidth];
      if (calculatePlayerWidth != [(SVVideoPlayerViewController *)self playerWidth])
      {
        [(SVVideoPlayerViewController *)self setPlayerWidth:calculatePlayerWidth];
        if ((calculatePlayerWidth - 1) <= 2)
        {
          v5 = dword_2660A9868[(calculatePlayerWidth - 1)];
          skipButton = [(SVVideoPlayerViewController *)self skipButton];
          [skipButton setMode:v5];
        }
      }
    }
  }
}

- (int)calculatePlayerWidth
{
  playerViewController = [(SVVideoPlayerViewController *)self playerViewController];
  [playerViewController videoBounds];
  v4 = v3;

  if (v4 > 0.0)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    preferredLocalizations = [mainBundle preferredLocalizations];

    if ([preferredLocalizations count] && ((objc_msgSend(preferredLocalizations, "objectAtIndexedSubscript:", 0), v7 = objc_claimAutoreleasedReturnValue(), v7 == @"fr") || (v8 = v7, v9 = -[__CFString hasPrefix:](v7, "hasPrefix:", @"fr-"), v8, v9)))
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
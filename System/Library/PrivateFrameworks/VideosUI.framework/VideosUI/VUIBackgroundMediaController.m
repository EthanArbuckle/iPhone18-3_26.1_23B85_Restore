@interface VUIBackgroundMediaController
+ (void)initialize;
- (BOOL)_autoPlayEnabled;
- (BOOL)_canPause;
- (BOOL)_currentMediaInfoContentMatchesMediaInfo:(id)a3;
- (BOOL)_currentMediaInfoImagesMatchesNewMediaInfoImage:(id)a3;
- (BOOL)_hasSecondaryView;
- (BOOL)_isViewInTopMostVisibleView;
- (BOOL)_mediaInfo:(id)a3 contentMatchesMediaInfo:(id)a4;
- (BOOL)_playlist:(id)a3 contentMatchesPlaylist:(id)a4;
- (BOOL)_shouldShowSecondaryView;
- (BOOL)hasBackgroundVideo;
- (BOOL)isBackgrounded;
- (BOOL)isForeground;
- (CGRect)_playbackContainerViewFrame:(BOOL)a3 hasSecondaryVideoView:(BOOL)a4;
- (CGRect)_secondaryVideoViewFrame:(BOOL)a3;
- (NSArray)mediaInfos;
- (NSTimer)imageDelayTimer;
- (NSTimer)pauseStateTimeoutTimer;
- (NSTimer)playbackDelayTimer;
- (NSTimer)playbackLoadingTimer;
- (UIEdgeInsets)legibleContentInsets;
- (VUIBackgroundMediaController)initWithName:(id)a3;
- (VUIBackgroundMediaController)initWithName:(id)a3 mediaInfoFetchController:(id)a4;
- (VUIMediaInfo)currentMediaInfo;
- (double)_computedPlaybackDelayInterval;
- (double)_secondaryVideoViewHeight;
- (id)_activePIPPlayer;
- (id)_createPlayerViewController;
- (id)createTransitionViewAtIndex:(unint64_t)a3 oldView:(id)a4;
- (id)surrenderCurrentPlayer;
- (unint64_t)_flippedDirection:(unint64_t)a3 isRTL:(BOOL)a4;
- (void)_addAlphaProxyImageViewIfNeeded;
- (void)_addContentViewIfNeeded;
- (void)_addOverlayViewAnimatedIfNeeded:(BOOL)a3 dismissAfter:(double)a4;
- (void)_addPlaybackViewControllerForPlayback:(BOOL)a3 restoringAVPlayerViewController:(BOOL)a4;
- (void)_addProxyImageView:(id)a3;
- (void)_animateTransitionFromView:(id)a3 toView:(id)a4 duration:(double)a5 direction:(unint64_t)a6 completion:(id)a7;
- (void)_applicationDidRemoveDeactivationReason:(id)a3;
- (void)_applicationWillAddDeactivationReason:(id)a3;
- (void)_cleanUpEverything;
- (void)_cleanUpEverythingPlaybackRelated;
- (void)_cleanUpPlaybackTimers;
- (void)_cleanUpRampDownPlayer;
- (void)_cleanupPIPPlayback;
- (void)_cleanupPrefetchPlayback;
- (void)_clearPreloadPlayback;
- (void)_configureAudioSession;
- (void)_configureAudioSessionForState:(id)a3;
- (void)_configureLegibleContentInsetFromState:(id)a3 toState:(id)a4;
- (void)_configurePlayerViewController:(id)a3;
- (void)_constrainToView:(id)a3;
- (void)_didPlayMediaItemToEnd:(id)a3;
- (void)_disablePlaybackWhenShowingFullScreenUIIfNeeded;
- (void)_disableSubtitleIfNeeded;
- (void)_enablePlaybackWhenFullScreenPlaybackEnd;
- (void)_externalPlaybackStateChanged:(id)a3;
- (void)_handleApplicationDidBecomeActiveNotification:(id)a3;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3;
- (void)_handleApplicationWillResignActiveNotification:(id)a3;
- (void)_handleNavigationControllerDidShow;
- (void)_handlePlaybackManagerUIDidChange;
- (void)_handleViewDisappear;
- (void)_loadImage:(id)a3;
- (void)_mediaControllerStartedPlayback:(id)a3;
- (void)_notifyAVPlayerViewControllerDisplaySize:(id)a3 player:(id)a4;
- (void)_observeModalNavigationControllerNotifications;
- (void)_performPlayerVolumeAnimatedUpdate:(BOOL)a3;
- (void)_pipPlaybackDidChangeMutedState;
- (void)_pipPlaybackStateChanged:(id)a3;
- (void)_playbackErrorDidOccur:(id)a3;
- (void)_playbackRateDidChange:(id)a3;
- (void)_playbackStateChanged:(id)a3;
- (void)_playbackStateWillChange:(id)a3;
- (void)_populatePlayerWithMediaItemsIfNeeded:(id)a3;
- (void)_postDidStopPlaybackNotification;
- (void)_postWillStartPlaybackNotification:(BOOL)a3;
- (void)_postWillStopPlaybackNotification;
- (void)_prefetchNextVideo;
- (void)_recordBgAutoPlayMediaEventForPlaybackState:(id)a3;
- (void)_registerAudioSessionNotification;
- (void)_registerForApplicationStateNotifications;
- (void)_registerPlaybackManagerNotification;
- (void)_registerPlayerNotifications;
- (void)_registerStateMachineHandlers;
- (void)_removeOverlayView:(id)a3 animated:(BOOL)a4;
- (void)_removePlaybackViewController;
- (void)_removeProxyImageView;
- (void)_setAlphaImageProxy:(id)a3;
- (void)_showPlaybackIfPossible;
- (void)_startPreloadPlaybackIfNeeded;
- (void)_stateDidChangeFromState:(id)a3 toState:(id)a4 onEvent:(id)a5 context:(id)a6 userInfo:(id)a7;
- (void)_swapActiveMedia:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_transitionToNewImage:(id)a3 animated:(BOOL)a4 direction:(unint64_t)a5 completion:(id)a6;
- (void)_unregisterPlayerNotifications;
- (void)_updateAVPlayerViewControllerWithAVPlayerForPlayer:(id)a3;
- (void)_updateCurrentPlaybackViewFrameForPlaybackInBackground:(BOOL)a3 animated:(BOOL)a4;
- (void)_updatePlayerMuteStateForBackgroundPlaybackWithReason:(id)a3;
- (void)_updatePlayerVolume:(id)a3;
- (void)_updateVideoPlayerLegibleContentInsets:(BOOL)a3;
- (void)_updateWithMediaInfo:(id)a3 withDirection:(unint64_t)a4 imageVideoSwapBehavior:(unint64_t)a5 animated:(BOOL)a6;
- (void)adoptAVPlayerViewController:(id)a3 player:(id)a4;
- (void)appendMediaInfos:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)loadAlphaImageProxy;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)play;
- (void)playBackManagerFullscreenPlaybackUIDidChangeNotification:(id)a3;
- (void)playbackManagerShowingExtrasDidChangeNotification:(id)a3;
- (void)playerViewController:(id)a3 failedToStartPictureInPictureWithError:(id)a4;
- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)playerViewControllerDidStartPictureInPicture:(id)a3;
- (void)playerViewControllerDidStopPictureInPicture:(id)a3;
- (void)removeMediaInfoAtIndex:(unint64_t)a3;
- (void)replay;
- (void)setActivePIPingPlayer:(id)a3;
- (void)setAllowsExternalPlayback:(BOOL)a3;
- (void)setAllowsVideoCellularUsage:(BOOL)a3;
- (void)setAvPlayerViewController:(id)a3;
- (void)setControlsVisible:(BOOL)a3;
- (void)setExitsFullscreenWhenPlaybackEnds:(BOOL)a3;
- (void)setImageContentMode:(unint64_t)a3;
- (void)setLegibleContentInsets:(UIEdgeInsets)a3;
- (void)setMediaInfo:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5;
- (void)setMediaInfoIndex:(unint64_t)a3 imageVideoSwapBehavior:(unint64_t)a4 animated:(BOOL)a5 forwardAnimation:(BOOL)a6;
- (void)setMediaInfos:(id)a3 selectedIndex:(unint64_t)a4 animated:(BOOL)a5;
- (void)setMutePlaybackInBackground:(BOOL)a3;
- (void)setMuted:(BOOL)a3;
- (void)setPlaybackEnabled:(BOOL)a3 imageVideoSwapBehavior:(unint64_t)a4;
- (void)setPrefetchPlayerViewController:(id)a3;
- (void)setPreloadPlaybackEnabled:(BOOL)a3;
- (void)setShowsVideoControls:(BOOL)a3;
- (void)setState:(unint64_t)a3;
- (void)setUpdatesNowPlayingInfoCenter:(BOOL)a3;
- (void)setVideoGravity:(id)a3;
- (void)showAlphaImage:(BOOL)a3 animated:(BOOL)a4;
- (void)stop;
- (void)transitionToForeground:(BOOL)a3 withPlaybackControls:(BOOL)a4 fullScreenPlayer:(BOOL)a5 animated:(BOOL)a6;
- (void)updateAudioMuteWithPIPingPlayback;
- (void)updateFrames;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
@end

@implementation VUIBackgroundMediaController

+ (void)initialize
{
  if (initialize_onceToken_12 != -1)
  {
    +[VUIBackgroundMediaController initialize];
  }
}

void __42__VUIBackgroundMediaController_initialize__block_invoke()
{
  v0 = dispatch_queue_create("VUIBackgroundMediaController AVAudioSession management queue", 0);
  v1 = sAVAudioSessionQueue;
  sAVAudioSessionQueue = v0;
}

- (VUIBackgroundMediaController)initWithName:(id)a3 mediaInfoFetchController:(id)a4
{
  v7 = a4;
  v8 = [(VUIBackgroundMediaController *)self initWithName:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaInfoFetchController, a4);
  }

  return v9;
}

- (VUIBackgroundMediaController)initWithName:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = VUIBackgroundMediaController;
  v5 = [(VUIBackgroundMediaController *)&v28 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_shouldAnimateOverlayView = 1;
    v5->_stopPlayerWhenViewDisappears = 1;
    v5->_stopPlayerWhenExitingFullScreen = 1;
    v5->_exitsFullscreenWhenPlaybackEnds = 1;
    v5->_clearPreviousImageBeforeLoading = 1;
    v5->_stopWhenAnotherMediaControllerStarts = 1;
    v5->_loadsPlayerWithFullscreenPlayback = 0;
    v5->_muted = 0;
    v5->_mutePlaybackInBackground = 1;
    v5->_useForegroundAudioSessionInBackgroundMode = 0;
    v5->_didAVPlayerControllerEnterFullscreen = 0;
    v5->_animateImageChange = 1;
    v5->_animateVideoChange = 1;
    v5->_shouldPauseAtEnd = 0;
    v5->_shouldShowImageAndStopAfterPausingAtEnd = 0;
    v5->_imageSwappingAnimationType = 1;
    v5->_videoSwappingAnimationType = 1;
    v5->_playbackStopDelayReasons = 0;
    v5->_playbackStopDelay = 0.5;
    v5->_prefetchesVideoFrame = 0;
    v5->_videoAudioRampDuration = 0.0;
    v5->_allowsExternalPlayback = 0;
    v5->_playbackStartDelay = 5.0;
    v5->_imageAnimationDuration = 0.75;
    v5->_imageTransitionAnimationDuration = 0.5;
    v5->_imageVideoTransitionAnimationDuration = 0.5;
    v5->_backgroundVolume = -1.0;
    v5->_foregroundVolume = -1.0;
    v5->_volumeTransitionAnimationDuration = 2.0;
    v5->_numberOfVolumeIncrements = 5;
    v5->_fullscreenTransitionVolumeAnimationChanges = -1.0;
    v5->_imageAnimationOptions = 5243008;
    v5->_state = 0;
    v7 = objc_alloc_init(MEMORY[0x1E69DF740]);
    proxyImageView = v6->_proxyImageView;
    v6->_proxyImageView = v7;

    v6->_preloadPlaybackEnabled = 0;
    v9 = objc_alloc_init(VUIMediaInfoFetchController);
    mediaInfoFetchController = v6->_mediaInfoFetchController;
    v6->_mediaInfoFetchController = v9;

    v6->_mediaInfoIndex = 0;
    v6->_lastMediaInfoIndex = 0;
    v6->_imageContentMode = 2;
    v6->_shouldShowFullScreenButton = 1;
    v6->_hasViewAppeared = 0;
    v6->_forceAutoPlay = 0;
    v6->_autoPlayInSharePlay = 0;
    v6->_stopsPlaybackWhenInactive = 1;
    v6->_allowsPictureInPicturePlayback = 0;
    v6->_prefersAudioOverPictureInPicture = 0;
    objc_storeStrong(&v6->_playbackInitiatorForRTCReporting, @"background");
    v6->_recordPausedMediaEventAsStop = 1;
    v6->_showAlertOnPlaybackFail = 0;
    v6->_interruptsOtherAppAudio = 0;
    v6->_supportsMediaSharing = 0;
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v6->_legibleContentInsets.top = *MEMORY[0x1E69DDCE0];
    *&v6->_legibleContentInsets.bottom = v11;
    v6->_hapticsEnabled = 0;
    v6->_allowsVideoCellularUsage = 0;
    v6->_shouldDisableSubtitle = 0;
    v6->_disableSupplementalSubtitle = 0;
    v6->_showsPlaybackControlsInForeground = 0;
    objc_storeStrong(&v6->_videoGravity, *MEMORY[0x1E69874F0]);
    v6->_updatesNowPlayingInfoCenter = 0;
    [(VUIBackgroundMediaController *)v6 _registerForApplicationStateNotifications];
    [(VUIBackgroundMediaController *)v6 _registerPlaybackManagerNotification];
    [(VUIBackgroundMediaController *)v6 _registerAudioSessionNotification];
    objc_initWeak(&location, v6);
    v12 = initWithName__instanceNumber_0++;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%ld)", v4, v12];
    name = v6->_name;
    v6->_name = v13;

    v15 = objc_alloc(MEMORY[0x1E69D5A60]);
    v16 = v6->_name;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __45__VUIBackgroundMediaController_initWithName___block_invoke;
    v25[3] = &unk_1E872FED0;
    objc_copyWeak(&v26, &location);
    v17 = [v15 initWithName:v16 initialState:@"Not doing anything" mode:0 stateChangeHandler:v25];
    stateMachine = v6->_stateMachine;
    v6->_stateMachine = v17;

    v19 = v6->_stateMachine;
    v20 = VUIDefaultLogObject();
    [(TVPStateMachine *)v19 setLogObject:v20];

    [(TVPStateMachine *)v6->_stateMachine setCallsStateChangeHandlerSynchronously:1];
    [(VUIBackgroundMediaController *)v6 _registerStateMachineHandlers];
    [(TVPStateMachine *)v6->_stateMachine setShouldAcceptEvents:1];
    v21 = +[VUIPlaybackManager sharedInstance];
    LODWORD(v19) = [v21 isPIPing];

    if (v19)
    {
      [(VUIBackgroundMediaController *)v6 updateAudioMuteWithPIPingPlayback];
    }

    v22 = VUIDefaultLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v6->_name;
      *buf = 134218242;
      v30 = v6;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) finished creating media controller.", buf, 0x16u);
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __45__VUIBackgroundMediaController_initWithName___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stateDidChangeFromState:v16 toState:v15 onEvent:v14 context:v13 userInfo:v12];
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  [(VUIBackgroundMediaController *)self setActivePIPingPlayer:0];
  v3 = [(VUIBackgroundMediaController *)self prefetchPlayer];

  if (v3)
  {
    v4 = [(VUIBackgroundMediaController *)self prefetchPlayer];
    [v4 removeObserver:self forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_1];
  }

  [(VUIBackgroundMediaController *)self _cleanupPrefetchPlayback];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  [(VUIBackgroundMediaController *)self setVideoAudioRampDuration:0.0];
  [(VUIBackgroundMediaController *)self _cleanUpEverything];
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VUIBackgroundMediaController *)self name];
    *buf = 134218498;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = [MEMORY[0x1E696AF00] isMainThread];
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) dealloc cleaning up, isMainThread=%d", buf, 0x1Cu);
  }

  v8.receiver = self;
  v8.super_class = VUIBackgroundMediaController;
  [(VUIBackgroundMediaController *)&v8 dealloc];
}

- (void)vui_viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VUIBackgroundMediaController;
  [(VUIBackgroundMediaController *)&v5 vui_viewDidLoad];
  v3 = [(VUIBackgroundMediaController *)self vuiView];
  [v3 setVuiClipsToBounds:1];

  v4 = [(VUIBackgroundMediaController *)self proxyImageView];
  [(VUIBackgroundMediaController *)self _addProxyImageView:v4];

  [(VUIBackgroundMediaController *)self _observeModalNavigationControllerNotifications];
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VUIBackgroundMediaController *)self name];
    *buf = 136315650;
    v9 = "[VUIBackgroundMediaController vui_viewWillDisappear:]";
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::%s (%p: %@)", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = VUIBackgroundMediaController;
  [(VUIBackgroundMediaController *)&v7 vui_viewWillDisappear:v3];
  [(VUIBackgroundMediaController *)self setHasViewAppeared:0];
  [(VUIBackgroundMediaController *)self _handleViewDisappear];
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VUIBackgroundMediaController *)self name];
    *buf = 136315650;
    v9 = "[VUIBackgroundMediaController vui_viewWillAppear:]";
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::%s (%p: %@)", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = VUIBackgroundMediaController;
  [(VUIBackgroundMediaController *)&v7 vui_viewWillAppear:v3];
  [(VUIBackgroundMediaController *)self setHasViewAppeared:1];
}

- (void)_handleViewDisappear
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIBackgroundMediaController *)self name];
    v8 = 136315650;
    v9 = "[VUIBackgroundMediaController _handleViewDisappear]";
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::%s (%p: %@)", &v8, 0x20u);
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  v5 = +[VUIPlaybackManager sharedInstance];
  v6 = [v5 backgroundMediaPlayer];

  if (!v6 || ([(VUIBackgroundMediaController *)self player], v7 = objc_claimAutoreleasedReturnValue(), v7, v6 != v7))
  {
    if ([(VUIBackgroundMediaController *)self shouldStopPlayerWhenViewDisappears]&& [(VUIBackgroundMediaController *)self isPlaybackEnabled])
    {
      [(VUIBackgroundMediaController *)self setPlaybackEnabled:0];
    }
  }
}

- (void)_observeModalNavigationControllerNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleNavigationControllerDidShow name:*MEMORY[0x1E69DF870] object:0];
}

- (void)_handleNavigationControllerDidShow
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIBackgroundMediaController *)self name];
    v5 = 136315650;
    v6 = "[VUIBackgroundMediaController _handleNavigationControllerDidShow]";
    v7 = 2048;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::%s (%p: %@)", &v5, 0x20u);
  }

  if (![(VUIBackgroundMediaController *)self _isViewInTopMostVisibleView])
  {
    [(VUIBackgroundMediaController *)self _handleViewDisappear];
  }
}

- (BOOL)_isViewInTopMostVisibleView
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[VUIApplicationRouter topMostVisibleViewController];
  v4 = [v3 vuiView];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VUIBackgroundMediaController *)self name];
    v10 = 134218498;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) topMostVisibleViewController: %@", &v10, 0x20u);
  }

  if (v4)
  {
    v7 = [(VUIBackgroundMediaController *)self vuiView];
    v8 = [v7 isDescendantOfView:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_constrainToView:(id)a3
{
  v23[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 widthAnchor];
  v6 = [(VUIBackgroundMediaController *)self view];
  v7 = [v6 widthAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];

  v9 = [v4 heightAnchor];
  v10 = [(VUIBackgroundMediaController *)self view];
  v11 = [v10 heightAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];

  v13 = [v4 centerXAnchor];
  v14 = [(VUIBackgroundMediaController *)self view];
  v15 = [v14 centerXAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];

  v17 = [v4 centerYAnchor];

  v18 = [(VUIBackgroundMediaController *)self view];
  v19 = [v18 centerYAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];

  v21 = MEMORY[0x1E696ACD8];
  v23[0] = v8;
  v23[1] = v12;
  v23[2] = v16;
  v23[3] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v21 activateConstraints:v22];
}

- (void)updateFrames
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(VUIBackgroundMediaController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218240;
    v21 = v5;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController: updateFrames for bounds %f x %f", &v20, 0x16u);
  }

  [(VUIBackgroundMediaController *)self _playbackContainerViewFrame:[(VUIBackgroundMediaController *)self isBackgrounded] hasSecondaryVideoView:[(VUIBackgroundMediaController *)self _hasSecondaryView]];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(VUIBackgroundMediaController *)self playbackContainerController];
  v18 = [v17 view];
  [v18 setFrame:{v10, v12, v14, v16}];

  if ([(VUIBackgroundMediaController *)self _shouldShowSecondaryView])
  {
    if ([(VUIBackgroundMediaController *)self _hasSecondaryView])
    {
      v19 = [(VUIBackgroundMediaController *)self secondaryVideoView];
      [(VUIBackgroundMediaController *)self _secondaryVideoViewFrame:1];
      [v19 setFrame:?];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (__PlayerAVPlayerKVOContext_1 == a6)
  {
    [(VUIBackgroundMediaController *)self _updateAVPlayerViewControllerWithAVPlayerForPlayer:v11];
    goto LABEL_25;
  }

  if (__PlayerPreferredAudioLanguageCode == a6)
  {
    v13 = [v11 preferredAudioLanguageCode];
    [(VUIBackgroundMediaController *)self setPreferredAudioLanguageCode:v13];
LABEL_24:

    goto LABEL_25;
  }

  if (__PlayerPrefersAudioDescriptions == a6)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "prefersAudioDescriptions")}];
    [(VUIBackgroundMediaController *)self setPrefersAudioDescriptions:v13];
    goto LABEL_24;
  }

  if (__PlayerInitialMediaItemHasCompletedInitialLoadingKVOContext_0 != a6)
  {
    if (__PlayerAVPlayerViewControllerDisplaySizeKVOContext_0 != a6)
    {
      if (__PIPingPlayerMutedKVOContext == a6)
      {
        [(VUIBackgroundMediaController *)self _pipPlaybackDidChangeMutedState];
      }

      else
      {
        v20.receiver = self;
        v20.super_class = VUIBackgroundMediaController;
        [(VUIBackgroundMediaController *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      }

      goto LABEL_25;
    }

    v16 = [(VUIBackgroundMediaController *)self avPlayerViewController];

    if (v16 == v11)
    {
      v13 = [(VUIBackgroundMediaController *)self avPlayerViewController];
      v19 = [(VUIBackgroundMediaController *)self player];
    }

    else
    {
      v17 = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];

      if (v17 != v11)
      {
        v13 = 0;
        v18 = 0;
LABEL_23:
        [(VUIBackgroundMediaController *)self _notifyAVPlayerViewControllerDisplaySize:v13 player:v18];

        goto LABEL_24;
      }

      v13 = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
      v19 = [(VUIBackgroundMediaController *)self prefetchPlayer];
    }

    v18 = v19;
    goto LABEL_23;
  }

  if ([v11 initialMediaItemHasCompletedInitialLoading])
  {
    v14 = [v11 currentMediaItem];
    v15 = [v14 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];

    if (v15 && ([v15 complete] & 1) == 0)
    {
      [v15 addEndEventWithName:*MEMORY[0x1E69D6040]];
      [v15 addSingleShotEventWithName:*MEMORY[0x1E69D6020] value:*MEMORY[0x1E69D6070]];
    }
  }

LABEL_25:
}

- (VUIMediaInfo)currentMediaInfo
{
  v3 = [(VUIBackgroundMediaController *)self mediaInfoIndex];
  v4 = [(VUIBackgroundMediaController *)self mediaInfos];
  v5 = [v4 count];

  if (v3 >= v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(VUIBackgroundMediaController *)self mediaInfos];
    v7 = [v6 objectAtIndex:{-[VUIBackgroundMediaController mediaInfoIndex](self, "mediaInfoIndex")}];
  }

  return v7;
}

- (void)setMediaInfos:(id)a3 selectedIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v18 = a3;
  if ([v18 count] > a4)
  {
    if ([v18 count] > a4)
    {
      v8 = [(VUIBackgroundMediaController *)self currentMediaInfo];

      if (v8)
      {
        v9 = [v18 objectAtIndex:a4];
        v10 = [v9 imageProxies];
        v11 = [v10 firstObject];
        v12 = [(VUIBackgroundMediaController *)self currentMediaInfo];
        v13 = [v12 imageProxies];
        v14 = [v13 firstObject];
        v5 = [v11 isEqual:v14] ^ 1;
      }
    }

    self->_mediaInfoIndex = a4;
    self->_lastMediaInfoIndex = a4;
    v15 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
    if (v18)
    {
      v16 = v18;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    [v15 setMediaInfos:v16];

    v17 = [(VUIBackgroundMediaController *)self currentMediaInfo];
    [(VUIBackgroundMediaController *)self _updateWithMediaInfo:v17 withDirection:0 imageVideoSwapBehavior:0 animated:v5];
  }
}

- (void)setMediaInfo:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = [(VUIBackgroundMediaController *)self mediaInfos];
  v9 = [v8 count];

  if (v9 > a4)
  {
    v10 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
    [v10 setMediaInfo:v12 atIndex:a4];

    v11 = [(VUIBackgroundMediaController *)self currentMediaInfo];
    [(VUIBackgroundMediaController *)self _updateWithMediaInfo:v11 withDirection:0 imageVideoSwapBehavior:0 animated:v5];
  }
}

- (NSArray)mediaInfos
{
  v2 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  v3 = [v2 mediaInfos];

  return v3;
}

- (void)setMediaInfoIndex:(unint64_t)a3 imageVideoSwapBehavior:(unint64_t)a4 animated:(BOOL)a5 forwardAnimation:(BOOL)a6
{
  v7 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v11 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  if (a6)
  {
    v12 = 2;
    goto LABEL_12;
  }

  lastMediaInfoIndex = self->_lastMediaInfoIndex;
  if (lastMediaInfoIndex == a3)
  {
    v12 = 0;
    goto LABEL_12;
  }

  if (lastMediaInfoIndex >= a3)
  {
    goto LABEL_8;
  }

  v14 = [(VUIBackgroundMediaController *)self mediaInfos];
  if ([v14 count] - 1 == a3)
  {

LABEL_8:
    v12 = 1;
    goto LABEL_12;
  }

  v15 = self->_lastMediaInfoIndex;

  if (v15)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

LABEL_12:
  v16 = [(VUIBackgroundMediaController *)self _flippedDirection:v12 isRTL:[(VUIBackgroundMediaController *)self vuiIsRTL]];
  v17 = VUIDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(VUIBackgroundMediaController *)self name];
    mediaInfoIndex = self->_mediaInfoIndex;
    v25 = 134218754;
    v26 = self;
    v27 = 2112;
    v28 = v18;
    v29 = 2048;
    v30 = mediaInfoIndex;
    v31 = 2048;
    v32 = a3;
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) mediaInfo oldIndex:[%lu] newIndex:[%lu]", &v25, 0x2Au);
  }

  self->_mediaInfoIndex = a3;
  self->_lastMediaInfoIndex = a3;
  v20 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [v20 setIndex:a3];

  v21 = [(VUIBackgroundMediaController *)self mediaInfos];
  if (![v21 count])
  {
    goto LABEL_20;
  }

  v22 = [(VUIBackgroundMediaController *)self mediaInfos];
  v23 = [v22 count];

  if (v23 > a3)
  {
    v24 = [(VUIBackgroundMediaController *)self mediaInfos];
    v21 = [v24 objectAtIndex:a3];

    if (![(VUIBackgroundMediaController *)self _mediaInfo:v11 contentMatchesMediaInfo:v21])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(VUIBackgroundMediaController *)self setAutomaticPlaybackStart:1];
        -[VUIBackgroundMediaController setVpafPlaybackStartReason:](self, "setVpafPlaybackStartReason:", [v21 playbackStartReason]);
        -[VUIBackgroundMediaController setVpafPlaybackStopReason:](self, "setVpafPlaybackStopReason:", [v21 playbackStopReason]);
      }

      [(VUIBackgroundMediaController *)self _updateWithMediaInfo:v21 withDirection:v16 imageVideoSwapBehavior:a4 animated:v7];
    }

LABEL_20:
  }
}

- (unint64_t)_flippedDirection:(unint64_t)a3 isRTL:(BOOL)a4
{
  v4 = 1;
  v5 = 2;
  if (a3 != 1)
  {
    v5 = a3;
  }

  if (a3 != 2)
  {
    v4 = v5;
  }

  if (a4)
  {
    return v4;
  }

  else
  {
    return a3;
  }
}

- (id)createTransitionViewAtIndex:(unint64_t)a3 oldView:(id)a4
{
  v6 = a4;
  v7 = [(VUIBackgroundMediaController *)self mediaInfos];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v14 = 0;
  }

  else
  {
    v9 = [(VUIBackgroundMediaController *)self mediaInfoIndex]+ 1;
    if ([(VUIBackgroundMediaController *)self isVideoFrameFallbackEnabled])
    {
      v10 = [(VUIBackgroundMediaController *)self prefetchPlayer];
      v11 = [v10 state];
      v12 = [MEMORY[0x1E69D5A40] paused];
      v13 = v11 == v12;
    }

    else
    {
      v13 = 1;
    }

    if (v9 == a3 && -[VUIBackgroundMediaController prefetchesVideoFrame](self, "prefetchesVideoFrame") && (-[VUIBackgroundMediaController mediaInfoFetchController](self, "mediaInfoFetchController"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 mediaInfoContainsPlayerAtIndex:a3] & v13, v15, v16 == 1))
    {
      v17 = [(VUIBackgroundMediaController *)self mediaInfos];
      v18 = [v17 objectAtIndex:a3];

      v19 = [v18 tvpPlaylist];
      v20 = [(VUIBackgroundMediaController *)self prefetchPlayer];
      v21 = [v20 playlist];
      v22 = [(VUIBackgroundMediaController *)self _playlist:v19 contentMatchesPlaylist:v21];

      if (v22)
      {
        v23 = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
        v14 = [v23 view];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (v6 && (isKindOfClass & 1) != 0)
      {
        v25 = v6;
        [v25 setImage:0];
      }

      else
      {
        v26 = objc_alloc(MEMORY[0x1E69DF740]);
        v27 = [(VUIBackgroundMediaController *)self view];
        [v27 bounds];
        v25 = [v26 initWithFrame:?];
      }

      [v25 setVuiContentMode:{-[VUIBackgroundMediaController imageContentMode](self, "imageContentMode")}];
      [(VUIBackgroundMediaController *)self _configMirroredImageForBackgroundImage:v25];
      v28 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __68__VUIBackgroundMediaController_createTransitionViewAtIndex_oldView___block_invoke;
      v32[3] = &unk_1E87376C0;
      v32[4] = self;
      v29 = v25;
      v33 = v29;
      [v28 loadImageAtIndex:a3 completion:v32];

      v30 = v33;
      v14 = v29;
    }
  }

  return v14;
}

void __68__VUIBackgroundMediaController_createTransitionViewAtIndex_oldView___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v5 name];
    v7 = VUIBoolLogString();
    *buf = 134218754;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v3;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) completed loading transition image: [%@], finished: [%@]", buf, 0x2Au);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __68__VUIBackgroundMediaController_createTransitionViewAtIndex_oldView___block_invoke_248;
  v12 = &unk_1E872D990;
  v13 = v3;
  v14 = *(a1 + 40);
  v8 = MEMORY[0x1E696AF00];
  v9 = v3;
  if ([v8 isMainThread])
  {
    v11(v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __68__VUIBackgroundMediaController_createTransitionViewAtIndex_oldView___block_invoke_248(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [v2 uiImage];
    [v3 setImage:v4];
  }
}

- (void)appendMediaInfos:(id)a3
{
  v4 = a3;
  v5 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [v5 appendMediaInfos:v4];
}

- (void)removeMediaInfoAtIndex:(unint64_t)a3
{
  if ([(VUIBackgroundMediaController *)self mediaInfoIndex]> a3)
  {
    v5 = self->_mediaInfoIndex - 1;
    self->_mediaInfoIndex = v5;
    self->_lastMediaInfoIndex = v5;
  }

  v6 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [v6 removeMediaInfoAtIndex:a3];
}

- (void)play
{
  v2 = [(VUIBackgroundMediaController *)self stateMachine];
  [v2 postEvent:@"Play"];
}

- (void)replay
{
  v2 = [(VUIBackgroundMediaController *)self stateMachine];
  [v2 postEvent:@"Replay"];
}

- (void)pause
{
  v2 = [(VUIBackgroundMediaController *)self stateMachine];
  [v2 postEvent:@"Pause"];
}

- (void)stop
{
  v6[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_stop object:0];
  v3 = [(VUIBackgroundMediaController *)self stateMachine];
  v5 = @"PlaybackStopReasonKey";
  v6[0] = &unk_1F5E5E748;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v3 postEvent:@"Stop" withContext:0 userInfo:v4];
}

- (void)setExitsFullscreenWhenPlaybackEnds:(BOOL)a3
{
  v3 = a3;
  self->_exitsFullscreenWhenPlaybackEnds = a3;
  v5 = [(VUIBackgroundMediaController *)self avPlayerViewController];

  if (v5)
  {
    v6 = [(VUIBackgroundMediaController *)self avPlayerViewController];
    [v6 setExitsFullScreenWhenPlaybackEnds:v3];
  }
}

- (void)setMuted:(BOOL)a3
{
  v3 = a3;
  [(VUIBackgroundMediaController *)self willChangeValueForKey:@"muted"];
  self->_muted = v3;
  v5 = [(VUIBackgroundMediaController *)self player];
  [v5 setMuted:v3];

  v6 = [(VUIBackgroundMediaController *)self prefetchPlayer];
  [v6 setMuted:v3];

  [(VUIBackgroundMediaController *)self didChangeValueForKey:@"muted"];
}

- (void)setMutePlaybackInBackground:(BOOL)a3
{
  if (self->_mutePlaybackInBackground != a3)
  {
    [(VUIBackgroundMediaController *)self willChangeValueForKey:@"mutePlaybackInBackground"];
    self->_mutePlaybackInBackground = a3;
    [(VUIBackgroundMediaController *)self _updatePlayerMuteStateForBackgroundPlaybackWithReason:@"VUIBackgroundMediaControllerPlaybackMuteReasonAssigned"];

    [(VUIBackgroundMediaController *)self didChangeValueForKey:@"mutePlaybackInBackground"];
  }
}

- (void)setLegibleContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v20 = *MEMORY[0x1E69E9840];
  self->_legibleContentInsets = a3;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(VUIBackgroundMediaController *)self name];
    v21.top = top;
    v21.left = left;
    v21.bottom = bottom;
    v21.right = right;
    v10 = NSStringFromPlatformEdgeInsets(v21);
    v14 = 134218498;
    v15 = self;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) set legibleContentInsets: %@", &v14, 0x20u);
  }

  v11 = [(VUIBackgroundMediaController *)self avPlayerViewController];

  if (v11)
  {
    v12 = [(VUIBackgroundMediaController *)self stateMachine];
    v13 = [v12 currentState];
    [(VUIBackgroundMediaController *)self _updateVideoPlayerLegibleContentInsets:[(VUIBackgroundMediaController *)self _shouldApplyLegibleContentInsetForState:v13]];
  }
}

- (void)_disableSubtitleIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(VUIBackgroundMediaController *)self shouldDisableSubtitle])
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(VUIBackgroundMediaController *)self name];
      v6 = 134218242;
      v7 = self;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) disable subtitle", &v6, 0x16u);
    }

    v5 = [(VUIBackgroundMediaController *)self player];
    [v5 setSelectedSubtitleOption:0 setGlobalPreference:0];
  }
}

- (void)_updateVideoPlayerLegibleContentInsets:(BOOL)a3
{
  v3 = a3;
  v39 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(VUIBackgroundMediaController *)self legibleContentInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    if ([(VUIBackgroundMediaController *)self _shouldShowSecondaryView])
    {
      [(VUIBackgroundMediaController *)self _secondaryVideoViewHeight];
      v10 = v10 - v13;
    }

    if (([MEMORY[0x1E69DF6F0] isTV] & 1) != 0 || objc_msgSend(MEMORY[0x1E69DF6F0], "isMac"))
    {
      v14 = [(VUIBackgroundMediaController *)self avPlayerViewController];
      v15 = [v14 vuiIsViewLoaded];

      if (v15)
      {
        v16 = [(VUIBackgroundMediaController *)self avPlayerViewController];
        v17 = [v16 vuiView];
        [v17 frame];
        v19 = v18;
        v21 = v20;

        v22 = 0.0;
        if ([(VUIBackgroundMediaController *)self _shouldShowSecondaryView])
        {
          [(VUIBackgroundMediaController *)self _secondaryVideoViewHeight];
          v22 = v23;
        }

        v6 = v6 - v19;
        v24 = [(VUIBackgroundMediaController *)self vuiView];
        [v24 bounds];
        v26 = v25 - v22;

        v10 = v10 + v19 + v21 - v26;
      }
    }

    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    if (v10 < 0.0)
    {
      v10 = 0.0;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v27 = VUIDefaultLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(VUIBackgroundMediaController *)self name];
    v40.top = v6;
    v40.left = v8;
    v40.bottom = v10;
    v40.right = v12;
    v29 = NSStringFromPlatformEdgeInsets(v40);
    v31 = 134218754;
    v32 = self;
    v33 = 2112;
    v34 = v28;
    v35 = 2112;
    v36 = v29;
    v37 = 1024;
    v38 = v3;
    _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) update video's legibleContentInsets: %@, shouldApplyLegibleContentInset=%d", &v31, 0x26u);
  }

  v30 = [(VUIBackgroundMediaController *)self avPlayerViewController];
  [v30 setLegibleContentInsets:{v6, v8, v10, v12}];
}

- (void)_configureLegibleContentInsetFromState:(id)a3 toState:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(VUIBackgroundMediaController *)self _shouldApplyLegibleContentInsetForState:a3];
  v8 = [(VUIBackgroundMediaController *)self _shouldApplyLegibleContentInsetForState:v6];

  if (v7 != v8)
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(VUIBackgroundMediaController *)self name];
      v11 = 134218242;
      v12 = self;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) Video changes between background & foreground, update legibleContentInsets", &v11, 0x16u);
    }

    [(VUIBackgroundMediaController *)self _updateVideoPlayerLegibleContentInsets:v8];
  }
}

- (void)setShowsVideoControls:(BOOL)a3
{
  v3 = a3;
  self->_showsVideoControls = a3;
  [(VUIBackgroundMediaController *)self showAlphaImage:!a3 animated:1];
  v8 = [(VUIBackgroundMediaController *)self avPlayerViewController];
  v5 = [v8 view];
  [v5 setUserInteractionEnabled:v3];

  if (self->_keepVideoGravityUnchangedByVideoControlsVisibility || !v3)
  {
    v6 = [(VUIBackgroundMediaController *)self videoGravity];
  }

  else
  {
    v6 = *MEMORY[0x1E69874E8];
  }

  v7 = v6;
  [v8 setVideoGravity:v6];

  [(VUIBackgroundMediaController *)self setControlsVisible:v3];
}

- (void)setUpdatesNowPlayingInfoCenter:(BOOL)a3
{
  v3 = a3;
  self->_updatesNowPlayingInfoCenter = a3;
  v5 = [(VUIBackgroundMediaController *)self avPlayerViewController];
  [v5 setUpdatesNowPlayingInfoCenter:v3];

  v6 = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
  [v6 setUpdatesNowPlayingInfoCenter:v3];
}

- (void)showAlphaImage:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(VUIBackgroundMediaController *)self alphaProxyImageView];
  if (v7)
  {
    v15 = v7;
    v8 = [(VUIBackgroundMediaController *)self alphaProxyImageView];
    v9 = [v8 superview];
    if (v9)
    {
      v10 = v9;
      v11 = [(VUIBackgroundMediaController *)self alphaProxyImageView];
      v12 = [v11 image];

      if (v12)
      {
        v13 = MEMORY[0x1E69DD250];
        if (v4)
        {
          v14 = [(VUIBackgroundMediaController *)self view];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __56__VUIBackgroundMediaController_showAlphaImage_animated___block_invoke;
          v18[3] = &unk_1E872ECA0;
          v18[4] = self;
          v19 = a3;
          [v13 vui_transitionWithView:v14 duration:5242880 options:v18 animations:0 completion:0.3];
        }

        else
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __56__VUIBackgroundMediaController_showAlphaImage_animated___block_invoke_2;
          v16[3] = &unk_1E872ECA0;
          v16[4] = self;
          v17 = a3;
          [MEMORY[0x1E69DD250] vui_performWithoutAnimation:v16];
        }
      }
    }

    else
    {
    }
  }
}

void __56__VUIBackgroundMediaController_showAlphaImage_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) alphaProxyImageView];
  v3 = v2;
  v4 = 0.0;
  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  [v2 setVuiAlpha:v4];

  v6 = [*(a1 + 32) view];
  v5 = [*(a1 + 32) alphaProxyImageView];
  [v6 vui_bringSubviewToFront:v5];
}

void __56__VUIBackgroundMediaController_showAlphaImage_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) alphaProxyImageView];
  v3 = v2;
  v4 = 0.0;
  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  [v2 setVuiAlpha:v4];

  v6 = [*(a1 + 32) view];
  v5 = [*(a1 + 32) alphaProxyImageView];
  [v6 vui_bringSubviewToFront:v5];
}

- (void)transitionToForeground:(BOOL)a3 withPlaybackControls:(BOOL)a4 fullScreenPlayer:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  v20[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = a5;
    [(VUIBackgroundMediaController *)self foregroundVolume];
    if (v10 != -1.0)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updatePlayerVolume_ object:MEMORY[0x1E695E110]];
      [(VUIBackgroundMediaController *)self _performPlayerVolumeAnimatedUpdate:1];
    }

    v11 = [(VUIBackgroundMediaController *)self stateMachine];
    v19[0] = @"AnimatedKey";
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v20[0] = v12;
    v19[1] = @"IsFullScreenPlayerKey";
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    v20[1] = v13;
    v19[2] = @"ShowsPlaybackControlsKey";
    v14 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v20[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [v11 postEvent:@"Transition to foreground" withContext:0 userInfo:v15];
  }

  else
  {
    if (![(VUIBackgroundMediaController *)self mutePlaybackInBackground:a3])
    {
      [(VUIBackgroundMediaController *)self backgroundVolume];
      if (v16 != -1.0)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updatePlayerVolume_ object:MEMORY[0x1E695E118]];
        [(VUIBackgroundMediaController *)self _performPlayerVolumeAnimatedUpdate:0];
      }
    }

    v11 = [(VUIBackgroundMediaController *)self stateMachine];
    v17[0] = @"AnimatedKey";
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v17[1] = @"ShowsPlaybackControlsKey";
    v18[0] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v18[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v11 postEvent:@"Transition background" withContext:0 userInfo:v14];
  }
}

- (void)setControlsVisible:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(VUIBackgroundMediaController *)self avPlayerViewController];
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VUIBackgroundMediaController *)self name];
    v8 = VUIBoolLogString();
    [(VUIBackgroundMediaController *)self showsPlaybackControlsInForeground];
    v9 = VUIBoolLogString();
    v11 = 134218754;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) setControlsVisible %@ showsPlaybackControlsInForeground %@", &v11, 0x2Au);
  }

  if ([(VUIBackgroundMediaController *)self showsPlaybackControlsInForeground])
  {
    [v5 setShowsPlaybackControls:v3];
    if (v3)
    {
      [v5 flashPlaybackControlsWithDuration:5.0];
    }
  }

  v10 = [v5 view];
  [v10 setUserInteractionEnabled:v3];
}

- (id)surrenderCurrentPlayer
{
  v3 = [(VUIBackgroundMediaController *)self player];
  if (v3)
  {
    [(VUIBackgroundMediaController *)self _cleanUpPlaybackTimers];
    [(VUIBackgroundMediaController *)self _unregisterPlayerNotifications];
    v4 = [(VUIBackgroundMediaController *)self player];
    [v4 removeObserver:self forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_1];

    v5 = [(VUIBackgroundMediaController *)self player];
    [v5 removeObserver:self forKeyPath:@"preferredAudioLanguageCode" context:__PlayerPreferredAudioLanguageCode];

    v6 = [(VUIBackgroundMediaController *)self player];
    [v6 removeObserver:self forKeyPath:@"prefersAudioDescriptions" context:__PlayerPrefersAudioDescriptions];

    [(VUIBackgroundMediaController *)self setPlayer:0];
    v7 = +[VUIPlayerValidationManager sharedInstance];
    [v7 removeReferenceForPlayer:v3 stoppingIfNeeded:0];
  }

  v8 = [(VUIBackgroundMediaController *)self prefetchPlayer];

  if (v8)
  {
    v9 = [(VUIBackgroundMediaController *)self prefetchPlayer];
    [v9 removeObserver:self forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_1];

    [(VUIBackgroundMediaController *)self _cleanupPrefetchPlayback];
  }

  v10 = [(VUIBackgroundMediaController *)self mediaInfos];
  v11 = [v10 objectAtIndex:{-[VUIBackgroundMediaController mediaInfoIndex](self, "mediaInfoIndex")}];

  -[VUIBackgroundMediaController setVpafPlaybackStopReason:](self, "setVpafPlaybackStopReason:", [v11 playbackStopReason]);
  [(VUIBackgroundMediaController *)self _postWillStopPlaybackNotification];

  return v3;
}

- (void)adoptAVPlayerViewController:(id)a3 player:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(VUIBackgroundMediaController *)self name];
    v10 = [(VUIBackgroundMediaController *)self stateMachine];
    v11 = [v10 currentState];
    v14 = 134219010;
    v15 = self;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) adoptAVPlayerViewController avPlayerViewController = %@, player = %@ on state %@", &v14, 0x34u);
  }

  if (v6 && v7)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 vui_setObjectIfNotNil:v7 forKey:@"PlayerKey"];
    [v12 vui_setObjectIfNotNil:v6 forKey:@"AVPlayerViewControllerKey"];
    [(VUIBackgroundMediaController *)self _configurePlayerViewController:v6];
    v13 = [(VUIBackgroundMediaController *)self stateMachine];
    [v13 postEvent:@"Restore avPlayerViewController" withContext:0 userInfo:v12];
  }
}

- (void)setPlaybackEnabled:(BOOL)a3 imageVideoSwapBehavior:(unint64_t)a4
{
  v5 = a3;
  v59[2] = *MEMORY[0x1E69E9840];
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(VUIBackgroundMediaController *)self name];
    *buf = 134218754;
    v55 = self;
    v56 = 2112;
    v57 = v8;
    v58 = 1024;
    LODWORD(v59[0]) = v5;
    WORD2(v59[0]) = 2048;
    *(v59 + 6) = a4;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) setPlaybackEnabled = %d, imageVideoSwapBehavior = %lu", buf, 0x26u);
  }

  v9 = [(VUIBackgroundMediaController *)self _autoPlayEnabled];
  if (!v9)
  {
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218242;
      v55 = self;
      v56 = 2112;
      v57 = v11;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) accessibility video autoplay is disabled", buf, 0x16u);
    }
  }

  v12 = +[VUIFeaturesConfiguration sharedInstance];
  v13 = [v12 autoPlayConfig];
  v14 = [v13 disableBackgroundMediaPlayback];

  v15 = VUIDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(VUIBackgroundMediaController *)self name];
    *buf = 134218498;
    v55 = self;
    v56 = 2112;
    v57 = v16;
    v58 = 1024;
    LODWORD(v59[0]) = v14;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) is playback disabled by defaults %d.", buf, 0x1Cu);
  }

  self->_playbackEnabled = v5 & (v14 ^ 1);
  v17 = [(VUIBackgroundMediaController *)self player];

  playbackEnabled = self->_playbackEnabled;
  if (v17)
  {
    if (playbackEnabled)
    {
LABEL_11:
      v19 = VUIDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(VUIBackgroundMediaController *)self name];
        v21 = [(VUIBackgroundMediaController *)self stateMachine];
        v22 = [v21 currentState];
        *buf = 134218498;
        v55 = self;
        v56 = 2112;
        v57 = v20;
        v58 = 2112;
        v59[0] = v22;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@, machine state: %@) playback is enabled and we have a stale player, perform cleanup and start reloading.", buf, 0x20u);
      }

      [(VUIBackgroundMediaController *)self _cleanUpEverythingPlaybackRelated];
      if (v9)
      {
        v23 = [(VUIBackgroundMediaController *)self stateMachine];
        [v23 postEvent:@"Replay"];
      }

      goto LABEL_37;
    }

    v27 = [(VUIBackgroundMediaController *)self player];
    v28 = [v27 state];
    v29 = [MEMORY[0x1E69D5A40] stopped];
    v30 = v28 == v29;

    if (v30)
    {
      if (self->_playbackEnabled)
      {
        goto LABEL_11;
      }

      v34 = VUIDefaultLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(VUIBackgroundMediaController *)self name];
        *buf = 134218242;
        v55 = self;
        v56 = 2112;
        v57 = v35;
        _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) cleanup everything playback related in defensive case", buf, 0x16u);
      }

      [(VUIBackgroundMediaController *)self _cleanUpEverythingPlaybackRelated];
    }

    else if (a4 == 1)
    {
      v31 = VUIDefaultLogObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(VUIBackgroundMediaController *)self name];
        *buf = 134218242;
        v55 = self;
        v56 = 2112;
        v57 = v32;
        _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) pausing playback, will show image and then stop.", buf, 0x16u);
      }

      v33 = [(VUIBackgroundMediaController *)self stateMachine];
      [v33 postEvent:@"Pause show image and stop"];
    }

    else
    {
      v52[0] = @"PlaybackStopReasonKey";
      v52[1] = @"ImageVideoSwapBehaviorKey";
      v53[0] = &unk_1F5E5E760;
      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      v53[1] = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];

      LODWORD(v36) = a4 == 3;
      v38 = VUIDefaultLogObject();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (v36)
      {
        if (v39)
        {
          v40 = [(VUIBackgroundMediaController *)self name];
          *buf = 134218242;
          v55 = self;
          v56 = 2112;
          v57 = v40;
          _os_log_impl(&dword_1E323F000, v38, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) showing image and then will stop playback.", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v46 = MEMORY[0x1E69E9820];
        v47 = 3221225472;
        v48 = __74__VUIBackgroundMediaController_setPlaybackEnabled_imageVideoSwapBehavior___block_invoke;
        v49 = &unk_1E872F038;
        objc_copyWeak(&v51, buf);
        v50 = v37;
        [(VUIBackgroundMediaController *)self _swapActiveMedia:1 animated:1 completion:&v46];

        objc_destroyWeak(&v51);
        objc_destroyWeak(buf);
      }

      else
      {
        if (v39)
        {
          v41 = [(VUIBackgroundMediaController *)self name];
          *buf = 134218242;
          v55 = self;
          v56 = 2112;
          v57 = v41;
          _os_log_impl(&dword_1E323F000, v38, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) stopping playback.", buf, 0x16u);
        }

        v42 = [(VUIBackgroundMediaController *)self stateMachine];
        [v42 postEvent:@"Stop" withContext:0 userInfo:v37];
      }
    }
  }

  else if (v9 && playbackEnabled)
  {
    v24 = VUIDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218242;
      v55 = self;
      v56 = 2112;
      v57 = v25;
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback is enabled but we don't have a player, start reloading.", buf, 0x16u);
    }

    v26 = [(VUIBackgroundMediaController *)self stateMachine];
    [v26 postEvent:@"Replay"];
  }

  else
  {
    [(VUIBackgroundMediaController *)self _cleanUpPlaybackTimers];
  }

LABEL_37:
  if (!self->_playbackEnabled)
  {
    v43 = [(VUIBackgroundMediaController *)self prefetchPlayer];

    if (v43)
    {
      v44 = [(VUIBackgroundMediaController *)self prefetchPlayer];
      [v44 stop];

      v45 = [(VUIBackgroundMediaController *)self prefetchPlayer];
      [v45 invalidate];

      [(VUIBackgroundMediaController *)self setPrefetchPlayer:0];
    }

    [(VUIBackgroundMediaController *)self setPrefetchPlayerViewController:0, v46, v47, v48, v49];
  }
}

void __74__VUIBackgroundMediaController_setPlaybackEnabled_imageVideoSwapBehavior___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Stop" withContext:0 userInfo:*(a1 + 32)];
}

- (BOOL)_autoPlayEnabled
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(VUIBackgroundMediaController *)self forceAutoPlay])
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(VUIBackgroundMediaController *)self name];
      v17 = 134218242;
      v18 = self;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) auto play is enabled because forceAutoPlay is YES", &v17, 0x16u);
    }

    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = +[VUIGroupActivitiesManagerObjC isSessionActive];
    v7 = [MEMORY[0x1E69DF678] isFeatureEnabled:1];
    v8 = [MEMORY[0x1E696AE30] processInfo];
    v9 = [v8 isLowPowerModeEnabled];

    v10 = [(VUIBackgroundMediaController *)self _isViewInTopMostVisibleView];
    IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(VUIBackgroundMediaController *)self name];
      v17 = 134219010;
      v18 = self;
      v19 = 2112;
      v20 = v13;
      v21 = 1024;
      v22 = 0;
      v23 = 1024;
      v24 = 0;
      v25 = 1024;
      v26 = [(VUIBackgroundMediaController *)self loadsPlayerWithFullscreenPlayback];
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) isDisabledBecauseOfFullScreenPlayback=%d, isPlaybackUIBeingShown=%d, loadsPlayerWithFullscreenPlayback=%d", &v17, 0x28u);
    }

    v5 = !(v7 & 1 | !IsVideoAutoplayEnabled | v9 & 1) && (!v6 || [(VUIBackgroundMediaController *)self autoPlayInSharePlay]) && v10;
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(VUIBackgroundMediaController *)self name];
      v15 = [(VUIBackgroundMediaController *)self autoPlayInSharePlay];
      v17 = 134220034;
      v18 = self;
      v19 = 2112;
      v20 = v14;
      v21 = 1024;
      v22 = v5;
      v23 = 1024;
      v24 = IsVideoAutoplayEnabled;
      v25 = 1024;
      v26 = v7;
      v27 = 1024;
      v28 = v9;
      v29 = 1024;
      v30 = v6;
      v31 = 1024;
      v32 = v15;
      v33 = 1024;
      v34 = v10;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) check _autoPlayEnabled=%d, isVideoAutoPlayEnabled=%d, isReduceMotionEnabled=%d,            isLowPowerModeEnabled=%d, isSharePlay=%d, autoPlayInSharePlay=%d, isViewInTopMostVisibleView=%d", &v17, 0x40u);
    }
  }

  return v5;
}

- (void)_registerForApplicationStateNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleApplicationWillResignActiveNotification_ name:*MEMORY[0x1E69DF7F0] object:0];
  [v3 addObserver:self selector:sel__handleApplicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DF7E0] object:0];
  [v3 addObserver:self selector:sel__handleApplicationDidBecomeActiveNotification_ name:*MEMORY[0x1E69DF7D8] object:0];
  [v3 addObserver:self selector:sel__applicationWillAddDeactivationReason_ name:*MEMORY[0x1E69DE878] object:0];
  [v3 addObserver:self selector:sel__applicationDidRemoveDeactivationReason_ name:*MEMORY[0x1E69DE840] object:0];
}

- (void)_handleApplicationWillResignActiveNotification:(id)a3
{
  v4 = [(VUIBackgroundMediaController *)self player];
  if (v4)
  {
    v5 = v4;
    v6 = [(VUIBackgroundMediaController *)self player];
    v7 = [v6 state];
    v8 = [MEMORY[0x1E69D5A40] playing];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(VUIBackgroundMediaController *)self player];
      v11 = [v10 state];
      v12 = [MEMORY[0x1E69D5A40] loading];

      if (v11 != v12)
      {
        return;
      }
    }

    if ([(VUIBackgroundMediaController *)self _shouldPausePlaybackDueToDeactivationReasons])
    {
      [(VUIBackgroundMediaController *)self setShouldPlayAfterAppBecomesActive:1];

      [(VUIBackgroundMediaController *)self pause];
    }
  }
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(VUIBackgroundMediaController *)self vuiNavigationController];
  v5 = [v4 topViewController];

  v6 = [(VUIBackgroundMediaController *)self vuiView];
  v7 = [v5 vuiView];
  v8 = [v6 vui_isDescendantOfView:v7];

  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(VUIBackgroundMediaController *)self name];
    v14 = 134218754;
    v15 = self;
    v16 = 2112;
    v17 = v10;
    v18 = 1024;
    v19 = [(VUIBackgroundMediaController *)self stopsPlaybackWhenInactive];
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) handleApplicationDidEnterBackgroundNotification, stopsPlaybackWhenInactive=%d, isTopViewController=%d", &v14, 0x22u);
  }

  if (([(VUIBackgroundMediaController *)self stopsPlaybackWhenInactive]& v8) == 1)
  {
    v11 = [(VUIBackgroundMediaController *)self player];

    if (v11)
    {
      v12 = VUIDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(VUIBackgroundMediaController *)self name];
        v14 = 134218242;
        v15 = self;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) AppDidEnterBackground: Try to show the image and stop the video", &v14, 0x16u);
      }

      [(VUIBackgroundMediaController *)self setShouldPlayAfterAppBecomesActive:0];
      [(VUIBackgroundMediaController *)self _swapActiveMedia:1 animated:0 completion:0];
      [(VUIBackgroundMediaController *)self stop];
    }

    [(VUIBackgroundMediaController *)self _clearPreloadPlayback];
  }

  else
  {
    [(VUIBackgroundMediaController *)self setShouldPlayAfterAppBecomesActive:1];
  }
}

- (void)_handleApplicationDidBecomeActiveNotification:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(VUIBackgroundMediaController *)self vuiNavigationController];
  v5 = [v4 topViewController];

  v6 = [(VUIBackgroundMediaController *)self vuiView];
  v7 = [v5 vuiView];
  v8 = [v6 vui_isDescendantOfView:v7];

  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(VUIBackgroundMediaController *)self name];
    v12 = 134218754;
    v13 = self;
    v14 = 2112;
    v15 = v10;
    v16 = 1024;
    v17 = [(VUIBackgroundMediaController *)self shouldPlayAfterAppBecomesActive];
    v18 = 1024;
    v19 = v8;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) handleApplicationDidBecomeActiveNotification, shouldPlayAfterAppBecomesActive=%d, isTopViewController=%d", &v12, 0x22u);
  }

  v11 = [(VUIBackgroundMediaController *)self player];
  if (v11 && [(VUIBackgroundMediaController *)self shouldPlayAfterAppBecomesActive])
  {

    if (v8)
    {
      [(VUIBackgroundMediaController *)self setShouldPlayAfterAppBecomesActive:0];
      [(VUIBackgroundMediaController *)self play];
    }
  }

  else
  {
  }

  [(VUIBackgroundMediaController *)self _startPreloadPlaybackIfNeeded];
}

- (void)setPreloadPlaybackEnabled:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VUIBackgroundMediaController *)self name];
    v7 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
    v9 = 134218754;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    v13 = 1024;
    v14 = v3;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) setPreloadPlaybackEnabled = %d, mediaInfoFetch: %p", &v9, 0x26u);
  }

  self->_preloadPlaybackEnabled = v3;
  v8 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [v8 setPreloadPlaybackEnabled:v3];
}

- (void)_clearPreloadPlayback
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIBackgroundMediaController *)self name];
    v7 = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) clearPreloadPlayback", &v7, 0x16u);
  }

  v5 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [v5 setPreloadPlaybackEnabled:0];

  v6 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [v6 clearPreloadedPlayback];
}

- (void)_startPreloadPlaybackIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIBackgroundMediaController *)self name];
    v12 = 134218498;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    v16 = 1024;
    v17 = [(VUIBackgroundMediaController *)self isPreloadPlaybackEnabled];
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) update preloadPlaybackEnabled = %d", &v12, 0x1Cu);
  }

  v5 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [v5 setPreloadPlaybackEnabled:{-[VUIBackgroundMediaController isPreloadPlaybackEnabled](self, "isPreloadPlaybackEnabled")}];

  v6 = +[VUIPlaybackManager sharedInstance];
  v7 = [v6 isFullscreenPlaybackUIBeingShown];

  if (v7)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VUIBackgroundMediaController *)self name];
      v12 = 134218242;
      v13 = self;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) skipped startPreloadPlayback due to full screen playback", &v12, 0x16u);
    }

LABEL_11:

    return;
  }

  if ([(VUIBackgroundMediaController *)self isPlaybackEnabled]&& [(VUIBackgroundMediaController *)self isPreloadPlaybackEnabled])
  {
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VUIBackgroundMediaController *)self name];
      v12 = 134218242;
      v13 = self;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) startPreloadPlayback", &v12, 0x16u);
    }

    v8 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
    [v8 preloadPlayback];
    goto LABEL_11;
  }
}

- (void)_applicationWillAddDeactivationReason:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DE838]];
  v6 = [v5 integerValue];

  self->_deactivationReasons |= (1 << v6);
}

- (void)_applicationDidRemoveDeactivationReason:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DE838]];
  v6 = [v5 integerValue];

  self->_deactivationReasons &= ~(1 << v6);
}

- (void)_registerPlaybackManagerNotification
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_playBackManagerFullscreenPlaybackUIDidChangeNotification_ name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];
  [v4 addObserver:self selector:sel_playbackManagerShowingExtrasDidChangeNotification_ name:VUIPlaybackManagerShowingExtrasDidChangeNotification[0] object:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_updateAudioMuteWithPIPingPlayback name:VUIPlaybackManagerIsPIPingDidChangeNotification[0] object:0];
}

- (void)playBackManagerFullscreenPlaybackUIDidChangeNotification:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = +[VUIPlaybackManager sharedInstance];
  v5 = [v4 isFullscreenPlaybackUIBeingShown];

  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VUIBackgroundMediaController *)self name];
    *buf = 134218498;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playbackManagerFullScreenUIDidChange: %d", buf, 0x1Cu);
  }

  if (v5)
  {
    [(VUIBackgroundMediaController *)self _clearPreloadPlayback];
    [(VUIBackgroundMediaController *)self _handlePlaybackManagerUIDidChange];
  }

  else
  {
    objc_initWeak(buf, self);
    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__VUIBackgroundMediaController_playBackManagerFullscreenPlaybackUIDidChangeNotification___block_invoke;
    block[3] = &unk_1E872E4B8;
    objc_copyWeak(&v10, buf);
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __89__VUIBackgroundMediaController_playBackManagerFullscreenPlaybackUIDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlaybackManagerUIDidChange];
}

- (void)playbackManagerShowingExtrasDidChangeNotification:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(VUIBackgroundMediaController *)self name];
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playbackManagerShowingExtrasDidChangeNotification", &v6, 0x16u);
  }

  [(VUIBackgroundMediaController *)self _handlePlaybackManagerUIDidChange];
}

- (void)_handlePlaybackManagerUIDidChange
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(VUIBackgroundMediaController *)self loadsPlayerWithFullscreenPlayback])
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(VUIBackgroundMediaController *)self name];
      v11 = 134218242;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) _handlePlaybackManagerUIDidChange: skip as loadsPlayerWithFullscreenPlayback=true", &v11, 0x16u);
    }
  }

  else
  {
    v5 = +[VUIPlaybackManager sharedInstance];
    v6 = [v5 isFullscreenPlaybackUIBeingShown];

    v7 = +[VUIPlaybackManager sharedInstance];
    v8 = [v7 isShowingExtras];

    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(VUIBackgroundMediaController *)self name];
      v11 = 134218754;
      v12 = self;
      v13 = 2112;
      v14 = v10;
      v15 = 1024;
      v16 = v6;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) _handlePlaybackManagerUIDidChange isFullscreenPlaybackUIBeingShown=%d, isShowingExtras=%d", &v11, 0x22u);
    }

    if ((v6 | v8))
    {
      [(VUIBackgroundMediaController *)self _disablePlaybackWhenShowingFullScreenUIIfNeeded];
    }

    else
    {
      [(VUIBackgroundMediaController *)self _enablePlaybackWhenFullScreenPlaybackEnd];
    }
  }
}

- (void)_disablePlaybackWhenShowingFullScreenUIIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(VUIBackgroundMediaController *)self stateMachine];
  v4 = [v3 currentState];
  v5 = [v4 isEqualToString:@"waiting for timeout while paused"];

  v6 = [(VUIBackgroundMediaController *)self player];
  if (v6)
  {
    v7 = [(VUIBackgroundMediaController *)self player];
    v8 = [v7 state];
    v9 = [MEMORY[0x1E69D5A40] stopped];
    v10 = v8 == v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(VUIBackgroundMediaController *)self isPlaybackEnabled];
  v12 = VUIDefaultLogObject();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = [(VUIBackgroundMediaController *)self name];
      v18 = 134218242;
      v19 = self;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) fullscreenPlayback did shown, disable playback", &v18, 0x16u);
    }

    if (((v5 | v10) & 1) == 0)
    {
      v15 = VUIDefaultLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(VUIBackgroundMediaController *)self name];
        v18 = 134218242;
        v19 = self;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) fullscreenPlayback did shown, update shouldPlayAfterFullplaybackUIDidEnd to YES", &v18, 0x16u);
      }

      [(VUIBackgroundMediaController *)self setShouldPlayAfterFullplaybackUIDidEnd:1];
    }

    [(VUIBackgroundMediaController *)self setPlaybackEnabled:0];
  }

  else
  {
    if (v13)
    {
      v17 = [(VUIBackgroundMediaController *)self name];
      v18 = 134218242;
      v19 = self;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) fullscreenPlayback did shown, playback is disabled, ignore", &v18, 0x16u);
    }
  }
}

- (void)_enablePlaybackWhenFullScreenPlaybackEnd
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(VUIBackgroundMediaController *)self shouldPlayAfterFullplaybackUIDidEnd]&& [(VUIBackgroundMediaController *)self hasViewAppeared])
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(VUIBackgroundMediaController *)self name];
      v5 = 134218242;
      v6 = self;
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) fullscreenPlayback did end, enable playback", &v5, 0x16u);
    }

    [(VUIBackgroundMediaController *)self setShouldPlayAfterFullplaybackUIDidEnd:0];
    [(VUIBackgroundMediaController *)self setPlaybackEnabled:1];
  }
}

- (id)_activePIPPlayer
{
  v2 = +[VUIPlaybackManager sharedInstance];
  v3 = [v2 backgroundMediaPlayer];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[VUIPlaybackManager sharedInstance];
    v5 = [v6 activePlayer];
  }

  return v5;
}

- (void)updateAudioMuteWithPIPingPlayback
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setActivePIPingPlayer:(id)a3
{
  v5 = a3;
  activePIPingPlayer = self->_activePIPingPlayer;
  if (activePIPingPlayer != v5)
  {
    v10 = v5;
    v7 = MEMORY[0x1E69D6090];
    if (activePIPingPlayer)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:self name:*v7 object:self->_activePIPingPlayer];

      [(VUIPlayer *)self->_activePIPingPlayer removeObserver:self forKeyPath:@"muted" context:__PIPingPlayerMutedKVOContext];
    }

    objc_storeStrong(&self->_activePIPingPlayer, a3);
    v5 = v10;
    if (v10)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:self selector:sel__pipPlaybackStateChanged_ name:*v7 object:v10];

      [(VUIPlayer *)v10 addObserver:self forKeyPath:@"muted" options:0 context:__PIPingPlayerMutedKVOContext];
      v5 = v10;
    }
  }
}

- (void)_pipPlaybackStateChanged:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69D6098]];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKey:*MEMORY[0x1E69D60A0]];

  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(VUIBackgroundMediaController *)self name];
    v12 = 134218754;
    v13 = self;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) PIP playback state changed, new state %@, old state %@", &v12, 0x2Au);
  }

  v11 = [MEMORY[0x1E69D5A40] playing];

  if (v6 == v11)
  {
    [(VUIBackgroundMediaController *)self setMutePlaybackInBackground:1];
  }
}

- (void)_pipPlaybackDidChangeMutedState
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(VUIBackgroundMediaController *)self _activePIPPlayer];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(VUIBackgroundMediaController *)self name];
    v6 = 134218498;
    v7 = self;
    v8 = 2112;
    v9 = v5;
    v10 = 1024;
    v11 = [v3 muted];
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) PIP playback did change muted state: %d", &v6, 0x1Cu);
  }

  if (v3 && ([v3 muted] & 1) == 0)
  {
    [(VUIBackgroundMediaController *)self setMutePlaybackInBackground:1];
  }
}

- (void)_registerAudioSessionNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__audioSessionSilentSecondaryAudioDidChange_ name:*MEMORY[0x1E6958248] object:0];
}

- (void)_registerPlayerNotifications
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIBackgroundMediaController *)self name];
    v17 = 134218242;
    v18 = self;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) register player notifications and add observers", &v17, 0x16u);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69D6090];
  v7 = [(VUIBackgroundMediaController *)self player];
  [v5 addObserver:self selector:sel__playbackStateChanged_ name:v6 object:v7];

  v8 = *MEMORY[0x1E69D5F38];
  v9 = [(VUIBackgroundMediaController *)self player];
  [v5 addObserver:self selector:sel__playbackErrorDidOccur_ name:v8 object:v9];

  v10 = *MEMORY[0x1E69D60A8];
  v11 = [(VUIBackgroundMediaController *)self player];
  [v5 addObserver:self selector:sel__playbackStateWillChange_ name:v10 object:v11];

  v12 = *MEMORY[0x1E69D5F40];
  v13 = [(VUIBackgroundMediaController *)self player];
  [v5 addObserver:self selector:sel__playbackRateDidChange_ name:v12 object:v13];

  v14 = *MEMORY[0x1E69D60C8];
  v15 = [(VUIBackgroundMediaController *)self player];
  [v5 addObserver:self selector:sel__externalPlaybackStateChanged_ name:v14 object:v15];

  [v5 addObserver:self selector:sel__mediaControllerStartedPlayback_ name:@"VUIBackgroundMediaControllerWillStartPlaybackNotification" object:0];
  [v5 addObserver:self selector:sel__mediaControllerStartedPlayback_ name:@"VUIBackgroundMediaControllerDidStartPlaybackNotification" object:0];
  if (![(VUIBackgroundMediaController *)self observingInitialMediaItemHasCompletedInitialLoading])
  {
    v16 = [(VUIBackgroundMediaController *)self player];
    [v16 addObserver:self forKeyPath:@"initialMediaItemHasCompletedInitialLoading" options:0 context:__PlayerInitialMediaItemHasCompletedInitialLoadingKVOContext_0];

    [(VUIBackgroundMediaController *)self setObservingInitialMediaItemHasCompletedInitialLoading:1];
  }
}

- (void)_unregisterPlayerNotifications
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIBackgroundMediaController *)self name];
    v15 = 134218242;
    v16 = self;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) unregister player notifications and remove observers", &v15, 0x16u);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69D6090];
  v7 = [(VUIBackgroundMediaController *)self player];
  [v5 removeObserver:self name:v6 object:v7];

  v8 = *MEMORY[0x1E69D5F38];
  v9 = [(VUIBackgroundMediaController *)self player];
  [v5 removeObserver:self name:v8 object:v9];

  v10 = *MEMORY[0x1E69D60A8];
  v11 = [(VUIBackgroundMediaController *)self player];
  [v5 removeObserver:self name:v10 object:v11];

  v12 = *MEMORY[0x1E69D60C8];
  v13 = [(VUIBackgroundMediaController *)self player];
  [v5 removeObserver:self name:v12 object:v13];

  [v5 removeObserver:self name:@"VUIBackgroundMediaControllerWillStartPlaybackNotification" object:0];
  [v5 removeObserver:self name:@"VUIBackgroundMediaControllerDidStartPlaybackNotification" object:0];
  if ([(VUIBackgroundMediaController *)self observingInitialMediaItemHasCompletedInitialLoading])
  {
    v14 = [(VUIBackgroundMediaController *)self player];
    [v14 removeObserver:self forKeyPath:@"initialMediaItemHasCompletedInitialLoading" context:__PlayerInitialMediaItemHasCompletedInitialLoadingKVOContext_0];

    [(VUIBackgroundMediaController *)self setObservingInitialMediaItemHasCompletedInitialLoading:0];
  }
}

- (BOOL)_canPause
{
  v2 = [(VUIBackgroundMediaController *)self player];
  [v2 duration];
  v4 = v3 != *MEMORY[0x1E69D5A78];

  return v4;
}

- (void)_updateWithMediaInfo:(id)a3 withDirection:(unint64_t)a4 imageVideoSwapBehavior:(unint64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  v32[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (v10)
  {
    [(VUIBackgroundMediaController *)self _addContentViewIfNeeded];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 tvpPlaylist];
      -[VUIBackgroundMediaController setVpafPlaybackStartReason:](self, "setVpafPlaybackStartReason:", [v10 playbackStartReason]);
      -[VUIBackgroundMediaController setVpafPlaybackStopReason:](self, "setVpafPlaybackStopReason:", [v10 playbackStopReason]);
    }

    else
    {
      v11 = 0;
    }

    v12 = [(VUIBackgroundMediaController *)self titleForLogging];
    if ([v12 length])
    {
      v13 = [(VUIBackgroundMediaController *)self name];
      v14 = [v13 rangeOfString:v12];
      v16 = v15;

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [(VUIBackgroundMediaController *)self name];
        v18 = [v17 stringByReplacingCharactersInRange:v14 withString:{v16, &stru_1F5DB25C0}];
        name = self->_name;
        self->_name = v18;

        [(VUIBackgroundMediaController *)self setTitleForLogging:0];
      }
    }

    v20 = [v11 currentMediaItem];
    v21 = [v20 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

    if ([v21 length])
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v21];
      [(VUIBackgroundMediaController *)self setTitleForLogging:v22];
      v23 = [(NSString *)self->_name stringByAppendingString:v22];
      v24 = self->_name;
      self->_name = v23;
    }

    v25 = [v10 alphaImageProxy];
    [(VUIBackgroundMediaController *)self _setAlphaImageProxy:v25];

    v31[0] = @"DirectionKey";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v32[0] = v26;
    v31[1] = @"AnimatedKey";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v32[1] = v27;
    v31[2] = @"ImageVideoSwapBehaviorKey";
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v31[3] = @"PlaybackStopReasonKey";
    v32[2] = v28;
    v32[3] = &unk_1F5E5E778;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];

    v30 = [(VUIBackgroundMediaController *)self stateMachine];
    [v30 postEvent:@"Set media info" withContext:0 userInfo:v29];
  }
}

- (BOOL)_playlist:(id)a3 contentMatchesPlaylist:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 currentMediaItem];
  v8 = *MEMORY[0x1E69D5D88];
  v9 = [v7 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D88]];

  v10 = [v5 currentMediaItem];
  v11 = [v10 mediaItemMetadataForProperty:v8];

  v12 = [v6 currentMediaItem];
  v13 = [v12 mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];

  v14 = [v5 currentMediaItem];
  v15 = [v14 mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];

  v16 = [v6 isEqualToPlaylist:v5];
  if (v9 | v11)
  {
    v17 = [v9 isEqualToDate:v11];
  }

  else
  {
    v17 = 1;
  }

  if (!(v13 | v15))
  {
    v18 = 1;
    if (!v16)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = v17 & v18;
    goto LABEL_9;
  }

  v18 = [v13 isEqualToString:v15];
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_6:
  v19 = 0;
LABEL_9:

  return v19;
}

- (BOOL)_mediaInfo:(id)a3 contentMatchesMediaInfo:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v7 = a4;
    v8 = a3;
    v9 = [v8 imageProxies];
    v10 = [v9 firstObject];

    v11 = [v7 imageProxies];
    v12 = [v11 firstObject];

    v13 = [v8 tvpPlaylist];

    v14 = [v7 tvpPlaylist];

    if (v10 | v12)
    {
      v15 = [v10 isEqual:v12];
    }

    else
    {
      v15 = 1;
    }

    if (v13 | v14)
    {
      v16 = [(VUIBackgroundMediaController *)self _playlist:v13 contentMatchesPlaylist:v14];
    }

    else
    {
      v16 = 1;
    }

    v4 = v15 & v16;
  }

  return v4;
}

- (BOOL)_currentMediaInfoImagesMatchesNewMediaInfoImage:(id)a3
{
  v4 = a3;
  v5 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  v6 = [v5 imageProxies];
  v7 = [v6 firstObject];

  v8 = [v4 imageProxies];

  v9 = [v8 firstObject];

  v10 = 0;
  if (v7 && v9)
  {
    v10 = [v7 isEqual:v9];
  }

  return v10;
}

- (BOOL)_currentMediaInfoContentMatchesMediaInfo:(id)a3
{
  v4 = a3;
  v5 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  LOBYTE(self) = [(VUIBackgroundMediaController *)self _mediaInfo:v5 contentMatchesMediaInfo:v4];

  return self;
}

- (void)_setAlphaImageProxy:(id)a3
{
  v6 = a3;
  if (([(VUIImageProxy *)self->_alphaImageProxy isEqual:?]& 1) == 0)
  {
    [(VUIImageProxy *)self->_alphaImageProxy cancel];
    v5 = [(VUIBackgroundMediaController *)self alphaProxyImageView];
    [v5 setImage:0];

    objc_storeStrong(&self->_alphaImageProxy, a3);
    [(VUIBackgroundMediaController *)self loadAlphaImageProxy];
    [(VUIBackgroundMediaController *)self _addAlphaProxyImageViewIfNeeded];
  }
}

- (void)loadAlphaImageProxy
{
  v3 = [(VUIBackgroundMediaController *)self alphaImageProxy];
  if (v3)
  {
    v4 = v3;
    v5 = [(VUIBackgroundMediaController *)self alphaProxyImageView];
    v6 = [v5 image];

    if (!v6)
    {
      objc_initWeak(&location, self);
      v7 = [(VUIBackgroundMediaController *)self alphaImageProxy];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __51__VUIBackgroundMediaController_loadAlphaImageProxy__block_invoke;
      v12 = &unk_1E87376E8;
      objc_copyWeak(&v13, &location);
      [v7 setCompletionHandler:&v9];

      v8 = [(VUIBackgroundMediaController *)self alphaImageProxy:v9];
      [v8 load];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __51__VUIBackgroundMediaController_loadAlphaImageProxy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 uiImage];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __51__VUIBackgroundMediaController_loadAlphaImageProxy__block_invoke_2;
  v13 = &unk_1E872F038;
  objc_copyWeak(&v15, (a1 + 32));
  v8 = v7;
  v14 = v8;
  v9 = &v10;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v12(v9);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  objc_destroyWeak(&v15);
}

void __51__VUIBackgroundMediaController_loadAlphaImageProxy__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained alphaProxyImageView];
  [v2 setImage:*(a1 + 32)];

  v3 = [WeakRetained proxyImageView];
  v4 = [v3 image];
  if (v4)
  {
    v5 = v4;
    v6 = [WeakRetained proxyImageView];
    v7 = [v6 isHidden];

    if ((v7 & 1) == 0)
    {
      [WeakRetained showAlphaImage:1 animated:1];
    }
  }

  else
  {
  }
}

- (void)_performPlayerVolumeAnimatedUpdate:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(VUIBackgroundMediaController *)self player];
  [v5 volume];
  v7 = v6;

  if (v3)
  {
    [(VUIBackgroundMediaController *)self foregroundVolume];
  }

  else
  {
    [(VUIBackgroundMediaController *)self backgroundVolume];
  }

  v9 = v8;
  if (v8 == -1.0)
  {
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218242;
      v23 = self;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) volume fading is not supported, returning without any volume changes.", buf, 0x16u);
    }
  }

  else
  {
    v12 = v7 < v8;
    if (!v3)
    {
      v12 = v7 > v8;
    }

    if (v12)
    {
      [(VUIBackgroundMediaController *)self fullscreenTransitionVolumeAnimationChanges];
      if (v13 == -1.0)
      {
        if (v3)
        {
          v14 = v9 - v7;
        }

        else
        {
          v14 = v7 - v9;
        }

        *&v15 = v14 / [(VUIBackgroundMediaController *)self numberOfVolumeIncrements];
        [(VUIBackgroundMediaController *)self setFullscreenTransitionVolumeAnimationChanges:v15];
      }

      [(VUIBackgroundMediaController *)self volumeTransitionAnimationDuration];
      v17 = v16 / [(VUIBackgroundMediaController *)self numberOfVolumeIncrements];
      v21 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      [(VUIBackgroundMediaController *)self performSelector:sel__updatePlayerVolume_ withObject:v17 afterDelay:?];
    }

    else
    {
      v18 = VUIDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(VUIBackgroundMediaController *)self name];
        *buf = 134218498;
        v23 = self;
        v24 = 2112;
        v25 = v19;
        v26 = 2048;
        v27 = v9;
        _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) reached final volume: [%f].", buf, 0x20u);
      }

      LODWORD(v20) = -1.0;
      [(VUIBackgroundMediaController *)self setFullscreenTransitionVolumeAnimationChanges:v20];
    }
  }
}

- (void)_updatePlayerVolume:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(VUIBackgroundMediaController *)self player];
  [v7 volume];
  v9 = v8;

  if (v6)
  {
    [(VUIBackgroundMediaController *)self foregroundVolume];
    v11 = v10;
    [(VUIBackgroundMediaController *)self fullscreenTransitionVolumeAnimationChanges];
    v13 = v12;
    if (v9 >= v11)
    {
LABEL_17:
      v20 = VUIDefaultLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(VUIBackgroundMediaController *)self name];
        v23 = 134218754;
        v24 = self;
        v25 = 2112;
        v26 = v21;
        v27 = 2048;
        v28 = v11;
        v29 = 2048;
        v30 = v13;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) either reached final volume: [%f] or volume changes are invalid: [%f]", &v23, 0x2Au);
      }

      LODWORD(v22) = -1.0;
      [(VUIBackgroundMediaController *)self setFullscreenTransitionVolumeAnimationChanges:v22];
      goto LABEL_20;
    }
  }

  else
  {
    [(VUIBackgroundMediaController *)self backgroundVolume];
    v11 = v14;
    [(VUIBackgroundMediaController *)self fullscreenTransitionVolumeAnimationChanges];
    v13 = v15;
  }

  if (((v9 <= v11) & ~v6) != 0 || v13 == -1.0)
  {
    goto LABEL_17;
  }

  v16 = v11 - v9;
  if (!v6)
  {
    v16 = v9 - v11;
  }

  if (v16 >= v13)
  {
    v16 = v13;
  }

  if (!v6)
  {
    v16 = -v16;
  }

  v17 = v9 + v16;
  v18 = [(VUIBackgroundMediaController *)self player];
  *&v19 = v17;
  [v18 setVolume:v19];

  [(VUIBackgroundMediaController *)self _performPlayerVolumeAnimatedUpdate:v6];
LABEL_20:
}

- (void)_cleanUpPlaybackTimers
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(VUIBackgroundMediaController *)self playbackLoadingTimer];
  if (v3)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(VUIBackgroundMediaController *)self name];
      v9 = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) invalidating playlist loading timer.", &v9, 0x16u);
    }

    [v3 invalidate];
    [(VUIBackgroundMediaController *)self setPlaybackLoadingTimer:0];
    [(VUIBackgroundMediaController *)self setPlaybackLoadingStartDate:0];
  }

  v6 = [(VUIBackgroundMediaController *)self playbackDelayTimer];
  if (v6)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(VUIBackgroundMediaController *)self name];
      v9 = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) invalidating playback timer.", &v9, 0x16u);
    }

    [v6 invalidate];
    [(VUIBackgroundMediaController *)self setPlaybackDelayTimer:0];
    [(VUIBackgroundMediaController *)self setPlaybackLoadingStartDate:0];
  }
}

- (void)_cleanUpEverything
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIBackgroundMediaController *)self name];
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) cleaning up everything for", &v8, 0x16u);
  }

  v5 = [(VUIBackgroundMediaController *)self proxyImageView];
  [v5 setImage:0];

  v6 = [(VUIBackgroundMediaController *)self proxyImageView];
  [v6 setImageProxy:0];

  v7 = [(VUIBackgroundMediaController *)self alphaImageProxy];
  [v7 cancel];

  [(VUIBackgroundMediaController *)self _cleanUpEverythingPlaybackRelated];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
}

- (void)_cleanUpEverythingPlaybackRelated
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIBackgroundMediaController *)self name];
    *buf = 134218242;
    v43 = self;
    v44 = 2112;
    v45 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) cleaning up player and playback view controller.", buf, 0x16u);
  }

  [(VUIBackgroundMediaController *)self _cleanUpPlaybackTimers];
  [(VUIBackgroundMediaController *)self _unregisterPlayerNotifications];
  [(VUIBackgroundMediaController *)self _removePlaybackViewController];
  v5 = [(VUIBackgroundMediaController *)self secondaryVideoView];
  if (v5)
  {
    v6 = [(VUIBackgroundMediaController *)self secondaryVideoView];
    v7 = [v6 superview];
    v8 = v7 == 0;

    if (!v8)
    {
      v9 = [(VUIBackgroundMediaController *)self secondaryVideoView];
      [v9 removeFromSuperview];
    }
  }

  [(VUIBackgroundMediaController *)self setSecondaryVideoView:0];
  [(VUIBackgroundMediaController *)self setAvPlayerViewController:0];
  [(VUIBackgroundMediaController *)self setPlaybackContainerController:0];
  if ([(VUIBackgroundMediaController *)self didWeCreatePlayer])
  {
    v10 = [(VUIBackgroundMediaController *)self player];
    [v10 removeObserver:self forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_1];

    v11 = [(VUIBackgroundMediaController *)self player];
    [v11 removeObserver:self forKeyPath:@"preferredAudioLanguageCode" context:__PlayerPreferredAudioLanguageCode];

    v12 = [(VUIBackgroundMediaController *)self player];
    [v12 removeObserver:self forKeyPath:@"prefersAudioDescriptions" context:__PlayerPrefersAudioDescriptions];

    [(VUIBackgroundMediaController *)self videoAudioRampDuration];
    v14 = v13;
    if (v13 <= 0.0)
    {
      v20 = [(VUIBackgroundMediaController *)self player];
      v21 = [v20 state];
      v22 = [MEMORY[0x1E69D5A40] stopped];
      v23 = v21 == v22;

      if (v23)
      {
        v24 = [(VUIBackgroundMediaController *)self player];
        [v24 setElapsedTime:0.0];
      }
    }

    else
    {
      objc_initWeak(buf, self);
      v15 = [(VUIBackgroundMediaController *)self player];
      v16 = [(VUIBackgroundMediaController *)self rampDownPlayer];

      if (v16)
      {
        v17 = +[VUIPlayerValidationManager sharedInstance];
        v18 = [(VUIBackgroundMediaController *)self rampDownPlayer];
        [v17 removeReferenceForPlayer:v18];
      }

      [(VUIBackgroundMediaController *)self setRampDownPlayer:v15];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__VUIBackgroundMediaController__cleanUpEverythingPlaybackRelated__block_invoke;
      block[3] = &unk_1E8737710;
      v40 = v15;
      v41[1] = *&v14;
      v19 = v15;
      objc_copyWeak(v41, buf);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(v41);

      objc_destroyWeak(buf);
    }
  }

  v25 = [(VUIBackgroundMediaController *)self player];
  if (v25)
  {
    v26 = [(VUIBackgroundMediaController *)self player];
    v27 = [v26 state];
    v28 = [MEMORY[0x1E69D5A40] stopped];
    v29 = v27 == v28;

    if (!v29)
    {
      [(VUIBackgroundMediaController *)self videoAudioRampDuration];
      if (v30 == 0.0)
      {
        v31 = MEMORY[0x1E696AD98];
        v32 = [(VUIBackgroundMediaController *)self player];
        [v32 cachedElapsedTime];
        v33 = [v31 numberWithDouble:?];
        [(VUIBackgroundMediaController *)self setElapsedTimeWhenStopped:v33];

        v34 = [(VUIBackgroundMediaController *)self player];
        [v34 stop];
      }

      v35 = [MEMORY[0x1E69D5A40] stopped];
      [(VUIBackgroundMediaController *)self _recordBgAutoPlayMediaEventForPlaybackState:v35];
    }
  }

  v36 = [(VUIBackgroundMediaController *)self player];

  if (v36)
  {
    v37 = +[VUIPlayerValidationManager sharedInstance];
    v38 = [(VUIBackgroundMediaController *)self player];
    [v37 removeReferenceForPlayer:v38];
  }

  [(VUIBackgroundMediaController *)self setPlayer:0];
}

void __65__VUIBackgroundMediaController__cleanUpEverythingPlaybackRelated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [MEMORY[0x1E69D5A40] stopped];

  if (v2 != v3)
  {
    [*(a1 + 32) pauseWithVolumeRampDuration:*(a1 + 48)];
    v4 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VUIBackgroundMediaController__cleanUpEverythingPlaybackRelated__block_invoke_2;
    block[3] = &unk_1E872E4B8;
    objc_copyWeak(&v6, (a1 + 40));
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);
  }
}

void __65__VUIBackgroundMediaController__cleanUpEverythingPlaybackRelated__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanUpRampDownPlayer];
}

- (void)_cleanUpRampDownPlayer
{
  v3 = [(VUIBackgroundMediaController *)self rampDownPlayer];

  if (v3)
  {
    v4 = [(VUIBackgroundMediaController *)self rampDownPlayer];
    [v4 stop];

    v5 = [(VUIBackgroundMediaController *)self rampDownPlayer];
    [v5 setElapsedTime:0.0];

    v6 = +[VUIPlayerValidationManager sharedInstance];
    v7 = [(VUIBackgroundMediaController *)self rampDownPlayer];
    [v6 removeReferenceForPlayer:v7];

    [(VUIBackgroundMediaController *)self setRampDownPlayer:0];
  }
}

- (void)_addOverlayViewAnimatedIfNeeded:(BOOL)a3 dismissAfter:(double)a4
{
  v5 = a3;
  v7 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  v8 = [v7 overlayView];

  if (v8)
  {
    v9 = [v8 superview];

    if (!v9)
    {
      [v8 vuiAlpha];
      v11 = v10;
      [v8 setVuiAlpha:0.0];
      v12 = [(VUIBackgroundMediaController *)self view];
      [v12 vui_addSubview:v8 oldView:0];

      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke;
      aBlock[3] = &unk_1E872E4E0;
      v25[1] = *&a4;
      objc_copyWeak(v25, &location);
      v13 = v8;
      v24 = v13;
      v26 = v5;
      v14 = _Block_copy(aBlock);
      if (v5)
      {
        v15 = MEMORY[0x1E69DD250];
        imageAnimationDuration = self->_imageAnimationDuration;
        imageAnimationOptions = self->_imageAnimationOptions;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_3;
        v20[3] = &unk_1E872FEF8;
        v21 = v13;
        v22 = v11;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_4;
        v18[3] = &unk_1E872D790;
        v19 = v14;
        [v15 vui_animateWithDuration:imageAnimationOptions delay:v20 options:v18 animations:imageAnimationDuration completion:0.0];
      }

      else
      {
        [v13 setVuiAlpha:v11];
        v14[2](v14);
      }

      objc_destroyWeak(v25);
      objc_destroyWeak(&location);
    }
  }
}

void __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 0.0)
  {
    v3 = MEMORY[0x1E695DFF0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_2;
    v5[3] = &unk_1E872F8F8;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    v8 = *(a1 + 56);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:v1];

    objc_destroyWeak(&v7);
  }
}

void __77__VUIBackgroundMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeOverlayView:*(a1 + 32) animated:*(a1 + 48)];
}

- (void)_removeOverlayView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 setVuiAlpha:1.0];
    if (v4)
    {
      v8 = MEMORY[0x1E69DD250];
      imageAnimationDuration = self->_imageAnimationDuration;
      imageAnimationOptions = self->_imageAnimationOptions;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __60__VUIBackgroundMediaController__removeOverlayView_animated___block_invoke;
      v13[3] = &unk_1E872D768;
      v14 = v7;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __60__VUIBackgroundMediaController__removeOverlayView_animated___block_invoke_2;
      v11[3] = &unk_1E872F758;
      v12 = v14;
      [v8 vui_animateWithDuration:imageAnimationOptions delay:v13 options:v11 animations:imageAnimationDuration completion:0.0];
    }

    else
    {
      [v7 setVuiAlpha:0.0];
      [v7 removeFromSuperview];
    }
  }
}

- (void)_animateTransitionFromView:(id)a3 toView:(id)a4 duration:(double)a5 direction:(unint64_t)a6 completion:(id)a7
{
  v58[4] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  objc_initWeak(&location, self);
  if ([(VUIBackgroundMediaController *)self animateImageChange]&& [(VUIBackgroundMediaController *)self imageSwappingAnimationType])
  {
    v14 = [v12 constraints];
    [v12 removeConstraints:v14];

    v15 = [(VUIBackgroundMediaController *)self view];
    [v15 bounds];
    Width = CGRectGetWidth(v59);

    v17 = [v12 widthAnchor];
    v18 = [(VUIBackgroundMediaController *)self view];
    v19 = [v18 widthAnchor];
    v45 = [v17 constraintEqualToAnchor:v19];

    v20 = [v12 heightAnchor];
    v21 = [(VUIBackgroundMediaController *)self view];
    v22 = [v21 heightAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];

    v24 = [v12 centerXAnchor];
    v25 = [(VUIBackgroundMediaController *)self view];
    v26 = [v25 centerXAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];

    v28 = [v12 centerYAnchor];
    v29 = [(VUIBackgroundMediaController *)self view];
    v30 = [v29 centerYAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];

    v32 = [(VUIBackgroundMediaController *)self imageSwappingAnimationType];
    if (v32 == 1)
    {
      v36 = [(VUIBackgroundMediaController *)self view];
      [v36 vui_bringSubviewToFront:v12];

      [v11 setVuiAlpha:1.0];
      [v12 setVuiAlpha:0.0];
      goto LABEL_18;
    }

    if (v32 != 2)
    {
      if (v32 == 3)
      {
        v33 = [(VUIBackgroundMediaController *)self view];
        [v33 vui_bringSubviewToFront:v12];

        if (a6 == 2)
        {
          [v27 setConstant:Width * 0.5];
          goto LABEL_16;
        }

        if (a6 == 1)
        {
          [v27 setConstant:Width * -0.5];
LABEL_16:
          v35 = -Width;
          v34 = v45;
          goto LABEL_17;
        }
      }

LABEL_18:
      v37 = MEMORY[0x1E696ACD8];
      v58[0] = v45;
      v58[1] = v23;
      v58[2] = v27;
      v58[3] = v31;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:{4, v45}];
      [v37 activateConstraints:v38];

      v39 = [(VUIBackgroundMediaController *)self view];
      [v39 vui_setNeedsLayout];

      v40 = [(VUIBackgroundMediaController *)self view];
      [v40 vui_layoutIfNeeded];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke;
      block[3] = &unk_1E8737760;
      objc_copyWeak(v56, &location);
      v56[1] = a6;
      v49 = v27;
      v50 = v46;
      v56[2] = *&Width;
      v56[3] = *&a5;
      v51 = v11;
      v52 = v12;
      v53 = v23;
      v54 = v31;
      v55 = v13;
      v41 = v31;
      v42 = v23;
      v43 = v46;
      v44 = v27;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(v56);
      goto LABEL_19;
    }

    v34 = v27;
    v35 = Width;
    if (a6 != 2)
    {
      if (a6 != 1)
      {
        goto LABEL_18;
      }

      v35 = -Width;
      v34 = v27;
    }

LABEL_17:
    [v34 setConstant:{v35, v45}];
    goto LABEL_18;
  }

  if (v13)
  {
    v13[2](v13);
  }

LABEL_19:
  objc_destroyWeak(&location);
}

void __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = [WeakRetained imageSwappingAnimationType];
  if (v3 == 3)
  {
    [*(a1 + 32) setConstant:0.0];
    [*(a1 + 40) setConstant:0.0];
    v8 = *(a1 + 96);
    if (v8 == 2)
    {
      v5 = [WeakRetained proxyImageCenterXConstraint];
      v6 = v5;
      v9 = *(a1 + 104);
      v10 = -0.25;
    }

    else
    {
      if (v8 != 1)
      {
        goto LABEL_13;
      }

      v5 = [WeakRetained proxyImageCenterXConstraint];
      v6 = v5;
      v9 = *(a1 + 104);
      v10 = 0.25;
    }

    v7 = v9 * v10;
    goto LABEL_12;
  }

  if (v3 == 2)
  {
    [*(a1 + 32) setConstant:0.0];
    v4 = *(a1 + 96);
    if (v4 == 2)
    {
      v5 = [WeakRetained proxyImageCenterXConstraint];
      v6 = v5;
      v7 = -*(a1 + 104);
      goto LABEL_12;
    }

    if (v4 == 1)
    {
      v5 = [WeakRetained proxyImageCenterXConstraint];
      v6 = v5;
      v7 = *(a1 + 104);
LABEL_12:
      [v5 setConstant:v7];
    }
  }

LABEL_13:
  v11 = MEMORY[0x1E69DD250];
  v12 = *(a1 + 112);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke_2;
  v20[3] = &unk_1E872D9B8;
  objc_copyWeak(&v23, (a1 + 88));
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke_3;
  v13[3] = &unk_1E8737738;
  objc_copyWeak(&v19, (a1 + 88));
  v14 = *(a1 + 40);
  v15 = *(a1 + 64);
  v16 = *(a1 + 32);
  v17 = *(a1 + 72);
  v18 = *(a1 + 80);
  [v11 vui_animateWithDuration:v20 animations:v13 completion:v12];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v23);
}

void __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([WeakRetained imageSwappingAnimationType] == 1)
  {
    [a1[4] setVuiAlpha:0.0];
    [a1[5] setVuiAlpha:1.0];
  }

  v2 = [WeakRetained view];
  [v2 vui_setNeedsLayout];

  v3 = [WeakRetained view];
  [v3 vui_layoutIfNeeded];
}

void __96__VUIBackgroundMediaController__animateTransitionFromView_toView_duration_direction_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained setProxyImageWidthConstraint:*(a1 + 32)];
  [WeakRetained setProxyImageHeightConstraint:*(a1 + 40)];
  [WeakRetained setProxyImageCenterXConstraint:*(a1 + 48)];
  [WeakRetained setProxyImageCenterYConstraint:*(a1 + 56)];
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)_transitionToNewImage:(id)a3 animated:(BOOL)a4 direction:(unint64_t)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  objc_initWeak(&location, self);
  v12 = [(VUIBackgroundMediaController *)self proxyImageView];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__VUIBackgroundMediaController__transitionToNewImage_animated_direction_completion___block_invoke;
  aBlock[3] = &unk_1E872F038;
  objc_copyWeak(&v34, &location);
  v13 = v12;
  v33 = v13;
  v14 = _Block_copy(aBlock);
  if (v8 && [(VUIBackgroundMediaController *)self animateImageChange])
  {
    v15 = objc_alloc_init(MEMORY[0x1E69DF740]);
    [(VUIBackgroundMediaController *)self _configMirroredImageForBackgroundImage:v15];
    [(VUIBackgroundMediaController *)self _configImageTransitionContextForBackgroundImage:v15];
    v16 = [v10 uiImage];
    [v15 setImage:v16];

    [v15 setVuiContentMode:{objc_msgSend(v13, "vuiContentMode")}];
    v17 = [(VUIBackgroundMediaController *)self view];
    [v17 vui_insertSubview:v15 belowSubview:v13 oldView:0];

    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(VUIBackgroundMediaController *)self proxyImageView];
    [v18 setVuiAlpha:1.0];

    [(VUIBackgroundMediaController *)self setProxyImageView:v15];
    [(VUIBackgroundMediaController *)self imageTransitionAnimationDuration];
    v20 = v19;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __84__VUIBackgroundMediaController__transitionToNewImage_animated_direction_completion___block_invoke_324;
    v28 = &unk_1E8737788;
    v30 = v14;
    v29 = v13;
    v31 = v11;
    [(VUIBackgroundMediaController *)self _animateTransitionFromView:v29 toView:v15 duration:a5 direction:&v25 completion:v20];
  }

  else
  {
    v21 = [(VUIBackgroundMediaController *)self proxyImageView];
    [(VUIBackgroundMediaController *)self _configMirroredImageForBackgroundImage:v21];

    v22 = [(VUIBackgroundMediaController *)self proxyImageView];
    v23 = [v10 uiImage];
    [v22 setImage:v23];

    v14[2](v14);
    if (v11)
    {
      v11[2](v11);
    }
  }

  v24 = [MEMORY[0x1E696AD88] defaultCenter];
  [v24 postNotificationName:@"VUIBackgroundMediaControllerImageLoadedNotification" object:self];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

void __84__VUIBackgroundMediaController__transitionToNewImage_animated_direction_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained name];
    v9 = 134218242;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) showing background image now.", &v9, 0x16u);
  }

  [*(a1 + 32) setVuiAlpha:1.0];
  v5 = [WeakRetained playbackContainerController];
  v6 = [v5 view];
  [v6 setVuiAlpha:0.0];

  v7 = [WeakRetained currentMediaInfo];
  LODWORD(v6) = [v7 showsSecondaryVideoView];

  if (v6)
  {
    v8 = [WeakRetained secondaryVideoView];
    [v8 setVuiAlpha:0.0];
  }
}

uint64_t __84__VUIBackgroundMediaController__transitionToNewImage_animated_direction_completion___block_invoke_324(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) vui_removeFromSuperView];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_swapActiveMedia:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v10 = [(VUIBackgroundMediaController *)self currentMediaInfo];
    v9 = [v10 isAudioOnly];
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke;
  aBlock[3] = &unk_1E8731108;
  objc_copyWeak(&v37, &location);
  v38 = v9;
  v39 = v5;
  v11 = _Block_copy(aBlock);
  if (!v5)
  {
    goto LABEL_11;
  }

  v12 = [(VUIBackgroundMediaController *)self playbackContainerController];
  v13 = [v12 view];
  if (!v13)
  {

LABEL_11:
    v22 = MEMORY[0x1E69DD250];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_5;
    v25[3] = &unk_1E872FF20;
    v26 = v11;
    v27 = v8;
    [v22 vui_performWithoutAnimation:v25];
    [(VUIBackgroundMediaController *)self showAlphaImage:1 animated:0];

    goto LABEL_12;
  }

  v14 = [(VUIBackgroundMediaController *)self proxyImageView];

  if (!v14 || ![(VUIBackgroundMediaController *)self animateVideoChange])
  {
    goto LABEL_11;
  }

  v15 = [(VUIBackgroundMediaController *)self videoSwappingAnimationType];
  v16 = MEMORY[0x1E69DD250];
  if (v15)
  {
    v17 = [(VUIBackgroundMediaController *)self view];
    [(VUIBackgroundMediaController *)self imageVideoTransitionAnimationDuration];
    v19 = v18;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_3;
    v30[3] = &unk_1E872D7E0;
    v31 = v11;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_4;
    v28[3] = &unk_1E872D790;
    v29 = v8;
    [v16 vui_transitionWithView:v17 duration:5242880 options:v30 animations:v28 completion:v19];
    v20 = &v31;
    v21 = &v29;
  }

  else
  {
    [(VUIBackgroundMediaController *)self imageVideoTransitionAnimationDuration];
    v24 = v23;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_325;
    v34[3] = &unk_1E872D7E0;
    v35 = v11;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_2;
    v32[3] = &unk_1E872D790;
    v33 = v8;
    [v16 vui_animateWithDuration:5242912 delay:v34 options:v32 animations:v24 completion:0.0];
    v20 = &v35;
    v21 = &v33;
  }

  [(VUIBackgroundMediaController *)self showAlphaImage:1 animated:1];
LABEL_12:

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

void __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = VUIDefaultLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = [WeakRetained name];
      v7 = *(a1 + 41);
      v20 = 134218498;
      v21 = WeakRetained;
      v22 = 2112;
      v23 = v6;
      v24 = 1024;
      v25 = v7;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) showing background image now, animated %d", &v20, 0x1Cu);
    }

    v8 = [WeakRetained proxyImageView];
    [v8 setVuiAlpha:1.0];

    v9 = [WeakRetained playbackContainerController];
    v10 = [v9 view];
    v11 = 0.0;
    [v10 setVuiAlpha:0.0];

    v12 = [WeakRetained currentMediaInfo];
    LOBYTE(v10) = [v12 showsSecondaryVideoView];

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v19 = [WeakRetained secondaryVideoView];
    [v19 setVuiAlpha:v11];

    goto LABEL_10;
  }

  if (v5)
  {
    v13 = [WeakRetained name];
    v14 = *(a1 + 41);
    v20 = 134218498;
    v21 = WeakRetained;
    v22 = 2112;
    v23 = v13;
    v24 = 1024;
    v25 = v14;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) showing playback view now, animated %d", &v20, 0x1Cu);
  }

  v15 = [WeakRetained proxyImageView];
  [v15 setVuiAlpha:0.0];

  v16 = [WeakRetained playbackContainerController];
  v17 = [v16 view];
  v11 = 1.0;
  [v17 setVuiAlpha:1.0];

  v18 = [WeakRetained currentMediaInfo];
  LODWORD(v17) = [v18 showsSecondaryVideoView];

  if (v17)
  {
    goto LABEL_9;
  }

LABEL_10:
}

uint64_t __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __69__VUIBackgroundMediaController__swapActiveMedia_animated_completion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_addContentViewIfNeeded
{
  v3 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  v5 = [v3 contentView];

  if (v5)
  {
    v4 = [(VUIBackgroundMediaController *)self view];
    [v4 vui_insertSubview:v5 aboveSubview:0 oldView:0];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VUIBackgroundMediaController *)self _constrainToView:v5];
  }
}

- (void)setImageContentMode:(unint64_t)a3
{
  self->_imageContentMode = a3;
  v4 = [(VUIBackgroundMediaController *)self proxyImageView];
  [v4 setVuiContentMode:a3];
}

- (void)setVideoGravity:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_videoGravity, a3);
  if (self->_keepVideoGravityUnchangedByVideoControlsVisibility)
  {
    v5 = [(VUIBackgroundMediaController *)self avPlayerViewController];
    [v5 setVideoGravity:v11];

    v6 = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
    [v6 setVideoGravity:v11];
  }

  else
  {
    v7 = [(VUIBackgroundMediaController *)self showsVideoControls];
    v8 = *MEMORY[0x1E69874E8];
    if (!v7)
    {
      v8 = v11;
    }

    v9 = v8;
    v10 = [(VUIBackgroundMediaController *)self avPlayerViewController];
    [v10 setVideoGravity:v9];

    v6 = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
    [v6 setVideoGravity:v9];
  }
}

- (void)setAllowsExternalPlayback:(BOOL)a3
{
  v3 = a3;
  self->_allowsExternalPlayback = a3;
  v5 = [(VUIBackgroundMediaController *)self player];
  [v5 setAllowsExternalPlayback:v3];

  v6 = [(VUIBackgroundMediaController *)self prefetchPlayer];
  [v6 setAllowsExternalPlayback:v3];
}

- (void)setAllowsVideoCellularUsage:(BOOL)a3
{
  v3 = a3;
  self->_allowsVideoCellularUsage = a3;
  v5 = [(VUIBackgroundMediaController *)self player];
  [v5 setAllowsCellularUsage:v3];

  v6 = [(VUIBackgroundMediaController *)self prefetchPlayer];
  [v6 setAllowsCellularUsage:v3];
}

- (void)_addProxyImageView:(id)a3
{
  v8 = a3;
  [v8 setVuiContentMode:{-[VUIBackgroundMediaController imageContentMode](self, "imageContentMode")}];
  v4 = v8;
  if (v8)
  {
    v5 = [(VUIBackgroundMediaController *)self currentMediaInfo];
    v6 = [v5 overlayView];

    if (v6)
    {
      v7 = [(VUIBackgroundMediaController *)self view];
      [v7 vui_insertSubview:v8 belowSubview:v6 oldView:0];
    }

    else
    {
      [v8 setVuiUserInteractionEnabled:0];
      v7 = [(VUIBackgroundMediaController *)self view];
      [v7 vui_addSubview:v8 oldView:0];
    }

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VUIBackgroundMediaController *)self _constrainToView:v8];
    [v8 setVuiAlpha:0.0];

    v4 = v8;
  }
}

- (void)_removeProxyImageView
{
  v3 = [(VUIBackgroundMediaController *)self proxyImageView];
  if (v3)
  {
    v4 = v3;
    v5 = [(VUIBackgroundMediaController *)self proxyImageView];
    v6 = [v5 superview];

    if (v6)
    {
      v7 = [(VUIBackgroundMediaController *)self proxyImageView];
      [v7 removeFromSuperview];
    }
  }
}

- (void)_addAlphaProxyImageViewIfNeeded
{
  v9 = [(VUIBackgroundMediaController *)self alphaProxyImageView];
  if ([(VUIBackgroundMediaController *)self isViewLoaded])
  {
    if (!v9 || ([v9 superview], v3 = objc_claimAutoreleasedReturnValue(), v3, v4 = v9, !v3))
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DF740]);

      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v5 setVuiAlpha:0.0];
      [v5 vui_isAccessibilityElement:1];
      v6 = [(VUIBackgroundMediaController *)self currentMediaInfo];
      v7 = [v6 alphaLayerAccessibilityText];
      [v5 setAccessibilityLabel:v7];

      [v5 setVuiUserInteractionEnabled:0];
      v8 = [(VUIBackgroundMediaController *)self view];
      [v8 vui_addSubview:v5 oldView:0];

      [(VUIBackgroundMediaController *)self _constrainToView:v5];
      [(VUIBackgroundMediaController *)self setAlphaProxyImageView:v5];
      v4 = v5;
    }
  }

  else
  {
    v4 = v9;
  }
}

- (void)_loadImage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  v6 = [(VUIBackgroundMediaController *)self mediaInfoIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__VUIBackgroundMediaController__loadImage___block_invoke;
  v8[3] = &unk_1E87322C0;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [v5 loadImageAtIndex:v6 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__VUIBackgroundMediaController__loadImage___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [WeakRetained name];
    v12 = VUIBoolLogString();
    *buf = 134218754;
    v30 = WeakRetained;
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) completed loading image: [%@], finished: [%@]", buf, 0x2Au);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__VUIBackgroundMediaController__loadImage___block_invoke_326;
  aBlock[3] = &unk_1E87377B0;
  v28 = *(a1 + 32);
  v13 = _Block_copy(aBlock);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __43__VUIBackgroundMediaController__loadImage___block_invoke_3;
  v21 = &unk_1E87377D8;
  v26 = a4;
  objc_copyWeak(&v25, (a1 + 40));
  v14 = v8;
  v22 = v14;
  v15 = v7;
  v23 = v15;
  v16 = v13;
  v24 = v16;
  v17 = &v18;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v20(v17);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v17);
  }

  objc_destroyWeak(&v25);
}

void __43__VUIBackgroundMediaController__loadImage___block_invoke_326(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v10 = __43__VUIBackgroundMediaController__loadImage___block_invoke_2;
  v11 = &unk_1E87317D0;
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = a3;
  v7 = MEMORY[0x1E696AF00];
  v8 = v5;
  if ([v7 isMainThread])
  {
    v10(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __43__VUIBackgroundMediaController__loadImage___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 48));
  }

  return result;
}

void __43__VUIBackgroundMediaController__loadImage___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = WeakRetained;
    if (*(a1 + 32) || !*(a1 + 40))
    {
      v4 = VUIDefaultLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __43__VUIBackgroundMediaController__loadImage___block_invoke_3_cold_1(v3);
      }

      v5 = *(*(a1 + 48) + 16);
    }

    else
    {
      v7 = [WeakRetained alphaImageProxy];
      if (v7)
      {
        v8 = v7;
        v9 = [v3 alphaProxyImageView];
        v10 = [v9 image];

        if (!v10)
        {
          v11 = dispatch_time(0, 100000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __43__VUIBackgroundMediaController__loadImage___block_invoke_4;
          block[3] = &unk_1E8734A20;
          objc_copyWeak(&v15, (a1 + 56));
          v14 = *(a1 + 48);
          v13 = *(a1 + 40);
          dispatch_after(v11, MEMORY[0x1E69E96A0], block);

          objc_destroyWeak(&v15);
          goto LABEL_7;
        }
      }

      v5 = *(*(a1 + 48) + 16);
    }

    v5();
LABEL_7:

    return;
  }

  v6 = *(*(a1 + 48) + 16);

  v6();
}

void __43__VUIBackgroundMediaController__loadImage___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (void)didReceiveMemoryWarning
{
  v5.receiver = self;
  v5.super_class = VUIBackgroundMediaController;
  [(VUIBackgroundMediaController *)&v5 didReceiveMemoryWarning];
  v3 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [v3 clearPreloadedPlayback];

  v4 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  [v4 clearCachedImageExclude:{-[VUIBackgroundMediaController mediaInfoIndex](self, "mediaInfoIndex")}];
}

- (void)_playbackStateWillChange:(id)a3
{
  v4 = [a3 userInfo];
  v10 = [v4 objectForKey:*MEMORY[0x1E69D6098]];

  v5 = [MEMORY[0x1E69D5A40] stopped];

  v6 = v10;
  if (v10 == v5)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(VUIBackgroundMediaController *)self player];
    [v8 cachedElapsedTime];
    v9 = [v7 numberWithDouble:?];
    [(VUIBackgroundMediaController *)self setElapsedTimeWhenStopped:v9];

    v6 = v10;
  }
}

- (void)_playbackRateDidChange:(id)a3
{
  v4 = a3;
  v11 = [v4 object];
  v5 = [v4 userInfo];

  v6 = [v5 vui_stringForKey:*MEMORY[0x1E6987A90]];

  if ([v6 isEqualToString:*MEMORY[0x1E6987AA8]])
  {
    [v11 rateUsedForPlayback];
    if (v7 > 0.0)
    {
      v8 = MEMORY[0x1E696AD98];
      [v11 rateUsedForPlayback];
      v9 = [v8 numberWithDouble:?];
      [(VUIBackgroundMediaController *)self setRateUsedForPlayback:v9];

      v10 = [(VUIBackgroundMediaController *)self prefetchPlayer];
      [v11 rateUsedForPlayback];
      [v10 setRateUsedForPlayback:?];
    }
  }
}

- (void)_playbackStateChanged:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69D6098]];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKey:*MEMORY[0x1E69D60A0]];

  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(VUIBackgroundMediaController *)self name];
    v11 = [(VUIBackgroundMediaController *)self player];
    *buf = 134219010;
    v38 = self;
    v39 = 2112;
    v40 = v10;
    v41 = 2048;
    v42 = v11;
    v43 = 2112;
    v44 = v6;
    v45 = 2112;
    v46 = v8;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback state changed (%p), new state %@, old state %@", buf, 0x34u);
  }

  v12 = [MEMORY[0x1E69D5A40] playing];

  if (v6 == v12)
  {
    v35[0] = @"VUIBackgroundMediaControllerIsForegroundedKey";
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[VUIBackgroundMediaController isBackgrounded](self, "isBackgrounded") ^ 1}];
    v36[0] = v16;
    v35[1] = @"VUIBackgroundMediaControllerIsAutomaticPlaybackStartKey";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIBackgroundMediaController isAutomaticPlaybackStart](self, "isAutomaticPlaybackStart")}];
    v36[1] = v17;
    v35[2] = @"VUIBackgroundMediaControllerPlaybackStartReasonKey";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIBackgroundMediaController vpafPlaybackStartReason](self, "vpafPlaybackStartReason")}];
    v36[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

    [(VUIBackgroundMediaController *)self _updateCurrentPlaybackViewFrameForPlaybackInBackground:[(VUIBackgroundMediaController *)self isBackgrounded] animated:0];
    v20 = [MEMORY[0x1E695DF00] date];
    [(VUIBackgroundMediaController *)self setPlaybackStartDate:v20];

    [(VUIBackgroundMediaController *)self _recordBgAutoPlayMediaEventForPlaybackState:v6];
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 postNotificationName:@"VUIBackgroundMediaControllerDidStartPlaybackNotification" object:self userInfo:v19];

LABEL_16:
    goto LABEL_17;
  }

  v13 = [MEMORY[0x1E69D5A40] paused];
  v14 = v13;
  if (v6 == v13)
  {
  }

  else
  {
    v15 = [MEMORY[0x1E69D5A40] stopped];

    if (v6 != v15)
    {
      goto LABEL_17;
    }
  }

  v22 = [(VUIBackgroundMediaController *)self player];
  [v22 cachedElapsedTime];
  v24 = v23;

  v25 = [(VUIBackgroundMediaController *)self player];
  [v25 duration];
  v27 = v26;
  v28 = *MEMORY[0x1E69D5A78];

  if (v24 > 0.0 && -[VUIBackgroundMediaController recordPausedMediaEventAsStop](self, "recordPausedMediaEventAsStop") || v27 == v28 || ([MEMORY[0x1E69D5A40] stopped], v29 = objc_claimAutoreleasedReturnValue(), v29, v6 == v29))
  {
    [(VUIBackgroundMediaController *)self _recordBgAutoPlayMediaEventForPlaybackState:v6];
  }

  v30 = [MEMORY[0x1E69D5A40] paused];

  if (v6 == v30)
  {
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 postNotificationName:@"VUIBackgroundMediaControllerDidPausePlaybackNotification" object:self userInfo:0];
    goto LABEL_16;
  }

LABEL_17:
  v31 = [(VUIBackgroundMediaController *)self stateMachine];
  v33 = @"PlaybackStateKey";
  v34 = v6;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  [v31 postEvent:@"Player state changed" withContext:0 userInfo:v32];
}

- (void)_playbackErrorDidOccur:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69D60B8]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [(VUIBackgroundMediaController *)self player];
    v9 = [v8 currentMediaItem];
    v10 = [v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v10 addSingleShotEventWithName:*MEMORY[0x1E69D6020] value:*MEMORY[0x1E69D6068]];
  }

  v13 = [(VUIBackgroundMediaController *)self stateMachine];
  v11 = [v4 object];
  v12 = [v4 userInfo];

  [v13 postEvent:@"Playback error occurred" withContext:v11 userInfo:v12];
}

- (void)_mediaControllerStartedPlayback:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  if (v4 != self)
  {
    v5 = [(VUIBackgroundMediaController *)self player];
    v6 = [v5 state];
    v7 = [MEMORY[0x1E69D5A40] stopped];

    if (v6 != v7)
    {
      if ([(VUIBackgroundMediaController *)self shouldStopWhenAnotherMediaControllerStarts])
      {
        v8 = VUIDefaultLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(VUIBackgroundMediaController *)self name];
          v10 = [(VUIBackgroundMediaController *)v4 name];
          v11 = 134218498;
          v12 = self;
          v13 = 2112;
          v14 = v9;
          v15 = 2112;
          v16 = v10;
          _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) received stop event because %@ will start playback.", &v11, 0x20u);
        }

        [(VUIBackgroundMediaController *)self setAutomaticPlaybackStop:1];
        [(VUIBackgroundMediaController *)self setVpafPlaybackStopReason:1];
        [(VUIBackgroundMediaController *)self stop];
      }
    }
  }
}

- (void)_updatePlayerMuteStateForBackgroundPlaybackWithReason:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  if ([v5 intent])
  {
    goto LABEL_2;
  }

  v6 = [(VUIBackgroundMediaController *)self player];

  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = [(VUIBackgroundMediaController *)self isBackgrounded];
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(VUIBackgroundMediaController *)self name];
    v10 = VUIBoolLogString();
    [(VUIBackgroundMediaController *)self mutePlaybackInBackground];
    v11 = VUIBoolLogString();
    [(VUIBackgroundMediaController *)self isMuted];
    v12 = VUIBoolLogString();
    v18 = 134219010;
    v19 = self;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) isBackgrounded:<%@>, mutePlaybackInBackground<%@>, isMuted:<%@>", &v18, 0x34u);
  }

  if (v7)
  {
    v7 = [(VUIBackgroundMediaController *)self mutePlaybackInBackground]|| [(VUIBackgroundMediaController *)self isMuted];
  }

  v13 = [(VUIBackgroundMediaController *)self player];
  [v13 setMuted:v7];

  v5 = +[VUIPlaybackManager sharedInstance];
  if (![v5 isPIPing] || -[VUIBackgroundMediaController mutePlaybackInBackground](self, "mutePlaybackInBackground"))
  {
LABEL_2:
  }

  else
  {
    v14 = [v4 isEqualToString:@"VUIBackgroundMediaControllerPlaybackMuteReasonAssigned"];

    if (v14)
    {
      v15 = +[VUIGroupActivitiesManagerObjC isSessionActive];
      v16 = [(VUIBackgroundMediaController *)self _activePIPPlayer];
      v17 = v16;
      if (v15)
      {
        [v16 setMuted:1];
      }

      else
      {
        [v16 pause];
      }
    }
  }

LABEL_3:
}

- (BOOL)isForeground
{
  v2 = [(VUIBackgroundMediaController *)self stateMachine];
  v3 = [v2 currentState];
  v4 = [v3 isEqualToString:@"Showing playback in foreground"];

  return v4;
}

- (BOOL)isBackgrounded
{
  v3 = [(VUIBackgroundMediaController *)self avPlayerViewController];

  if (v3)
  {
    return ![(VUIBackgroundMediaController *)self showsVideoControls];
  }

  v5 = [(VUIBackgroundMediaController *)self currentMediaInfo];

  return v5 != 0;
}

- (CGRect)_playbackContainerViewFrame:(BOOL)a3 hasSecondaryVideoView:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(VUIBackgroundMediaController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v5 && v4)
  {
    [(VUIBackgroundMediaController *)self _secondaryVideoViewHeight];
    v15 = v15 - v16;
  }

  v17 = v9;
  v18 = v11;
  v19 = v13;
  v20 = v15;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)_hasSecondaryView
{
  v2 = [(VUIBackgroundMediaController *)self secondaryVideoView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_shouldShowSecondaryView
{
  v3 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(VUIBackgroundMediaController *)self currentMediaInfo];
    v5 = [v4 showsSecondaryVideoView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_secondaryVideoViewHeight
{
  v3 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  [v3 primaryVideoAspectRatio];
  v5 = v4;

  if (v5 <= 0.0)
  {
    return 300.0;
  }

  v6 = [(VUIBackgroundMediaController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  [v11 primaryVideoAspectRatio];
  v13 = v8 / v12;

  return fmax(v10 - v13, 0.0);
}

- (CGRect)_secondaryVideoViewFrame:(BOOL)a3
{
  v3 = a3;
  v5 = [(VUIBackgroundMediaController *)self view];
  [v5 bounds];
  v7 = v6;
  [(VUIBackgroundMediaController *)self _secondaryVideoViewHeight];
  v9 = v8;

  v10 = [(VUIBackgroundMediaController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  if (v3)
  {
    [(VUIBackgroundMediaController *)self _secondaryVideoViewHeight];
    v14 = v14 - v15;
  }

  v16 = v7 - v9;
  v17 = 0.0;
  v18 = v14;
  v19 = v12;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_updateCurrentPlaybackViewFrameForPlaybackInBackground:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (![(VUIBackgroundMediaController *)self _hasSecondaryView])
  {
    return;
  }

  v7 = [(VUIBackgroundMediaController *)self avPlayerViewController];

  if (!v7)
  {
    return;
  }

  [(VUIBackgroundMediaController *)self _playbackContainerViewFrame:v5 hasSecondaryVideoView:[(VUIBackgroundMediaController *)self _hasSecondaryView]];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(VUIBackgroundMediaController *)self player];
  [v16 currentMediaItemPresentationSize];
  v18 = v17;
  v20 = v19;

  v21 = *(MEMORY[0x1E695EFD0] + 16);
  *&v44.a = *MEMORY[0x1E695EFD0];
  *&v44.c = v21;
  *&v44.tx = *(MEMORY[0x1E695EFD0] + 32);
  v22 = 0;
  if (![MEMORY[0x1E69DF6F0] isTV] || v20 <= 0.0)
  {
LABEL_12:
    v24 = *&v15;
    v25 = *&v13;
    v26 = *&v11;
    v27 = *&v9;
    goto LABEL_18;
  }

  v23 = v18;
  v24 = *&v15;
  v25 = *&v13;
  v26 = *&v11;
  v27 = *&v9;
  if (*&v15 > 0.0)
  {
    if (v5)
    {
      v28 = v23 / v20;
      if (v28 >= *&v13 / *&v15)
      {
        v30 = round(*&v15);
        v32 = round(v30 * v28);
        if (v32 >= *&v13 * 3.0)
        {
          v25 = *&v13 * 3.0;
        }

        else
        {
          v25 = v32;
        }

        v31 = v25 / *&v13;
      }

      else
      {
        v25 = round(*&v13);
        v29 = round(v25 / v28);
        if (v29 >= *&v15 * 3.0)
        {
          v29 = *&v15 * 3.0;
        }

        v30 = v29;
        v31 = v29 / *&v15;
      }

      CGAffineTransformMakeScale(&v44, v31, v31);
      v24 = v30;
      v26 = (*&v15 - v30) * 0.5;
      v27 = (*&v13 - v25) * 0.5;
      v22 = 1;
      goto LABEL_18;
    }

    v22 = 0;
    goto LABEL_12;
  }

LABEL_18:
  v33 = v24;
  v34 = [(VUIBackgroundMediaController *)self view];
  [v34 vui_layoutIfNeeded];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__VUIBackgroundMediaController__updateCurrentPlaybackViewFrameForPlaybackInBackground_animated___block_invoke;
  aBlock[3] = &unk_1E8737800;
  objc_copyWeak(v39, &location);
  v39[1] = v9;
  v39[2] = v11;
  v39[3] = v13;
  v39[4] = v15;
  v41 = v5;
  v39[5] = *&v27;
  v39[6] = *&v26;
  v39[7] = *&v25;
  v39[8] = *&v33;
  v40 = v44;
  v42 = v22;
  v35 = _Block_copy(aBlock);
  v36 = v35;
  if (v4)
  {
    if (v5)
    {
      v37 = 0x10000;
    }

    else
    {
      v37 = 0x20000;
    }

    [MEMORY[0x1E69DD250] vui_animateWithDuration:v37 delay:v35 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    (*(v35 + 2))(v35);
  }

  objc_destroyWeak(v39);
  objc_destroyWeak(&location);
}

void __96__VUIBackgroundMediaController__updateCurrentPlaybackViewFrameForPlaybackInBackground_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playbackContainerController];
  v4 = [v3 view];
  [v4 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  v5 = [WeakRetained secondaryVideoView];

  if (v5)
  {
    [WeakRetained _secondaryVideoViewFrame:*(a1 + 152)];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [WeakRetained secondaryVideoView];
    [v14 setFrame:{v7, v9, v11, v13}];

    v15 = [WeakRetained avPlayerViewController];
    v16 = [v15 view];
    [v16 setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  }

  else
  {
    v15 = [WeakRetained avPlayerViewController];
    v16 = [v15 view];
    v17 = *(a1 + 120);
    v19[0] = *(a1 + 104);
    v19[1] = v17;
    v19[2] = *(a1 + 136);
    [v16 setTransform:v19];
  }

  if (*(a1 + 153) == 1)
  {
    [WeakRetained _updateVideoPlayerLegibleContentInsets:*(a1 + 152)];
  }

  v18 = [WeakRetained view];
  [v18 vui_layoutIfNeeded];
}

- (void)_addPlaybackViewControllerForPlayback:(BOOL)a3 restoringAVPlayerViewController:(BOOL)a4
{
  v5 = a3;
  v7 = [(VUIBackgroundMediaController *)self playbackContainerController];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 view];
    v10 = [MEMORY[0x1E69DC888] blackColor];
    [v9 setVuiBackgroundColor:v10];

    [(VUIBackgroundMediaController *)self vui_addChildViewController:v8];
    v11 = [(VUIBackgroundMediaController *)self alphaProxyImageView];

    v12 = [(VUIBackgroundMediaController *)self view];
    v13 = [v8 view];
    if (v11)
    {
      v14 = [(VUIBackgroundMediaController *)self alphaProxyImageView];
      [v12 vui_insertSubview:v13 belowSubview:v14 oldView:0];
    }

    else
    {
      [v12 vui_addSubview:v13 oldView:0];
    }

    if ([(VUIBackgroundMediaController *)self _shouldShowSecondaryView])
    {
      [(VUIBackgroundMediaController *)self _playbackContainerViewFrame:v5 hasSecondaryVideoView:1];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [v8 view];
      [v23 setFrame:{v16, v18, v20, v22}];

      v24 = [v8 view];
      [v24 setVuiClipsToBounds:1];

      [(VUIBackgroundMediaController *)self _secondaryVideoViewFrame:1];
      v29 = [objc_alloc(MEMORY[0x1E69D5A70]) initWithFrame:{v25, v26, v27, v28}];
      CGAffineTransformMakeScale(&v59, 1.0, -1.0);
      [v29 setTransform:&v59];
      v30 = [(VUIBackgroundMediaController *)self player];
      [v29 setPlayer:v30];

      [v29 setVuiAlpha:0.0];
      [v29 setVideoGravity:1];
      v31 = [(VUIBackgroundMediaController *)self view];
      v32 = [v8 view];
      [v31 vui_insertSubview:v29 aboveSubview:v32 oldView:0];

      [(VUIBackgroundMediaController *)self setSecondaryVideoView:v29];
    }

    else
    {
      [(VUIBackgroundMediaController *)self _playbackContainerViewFrame:v5 hasSecondaryVideoView:0];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v29 = [v8 view];
      [v29 setFrame:{v34, v36, v38, v40}];
    }

    if (!a4)
    {
      v41 = [v8 view];
      [v41 setVuiAlpha:0.0];
    }

    [v8 didMoveToParentViewController:self];
    avPlayerViewController = self->_avPlayerViewController;
    if (avPlayerViewController)
    {
      v43 = [(AVPlayerViewController *)avPlayerViewController view];
      v44 = [v8 view];
      [v8 addChildViewController:self->_avPlayerViewController];
      v45 = [(VUIBackgroundMediaController *)self currentMediaInfo];
      v46 = [v45 overlayView];

      if (v46)
      {
        [v44 vui_insertSubview:v43 belowSubview:v46 oldView:0];
      }

      else
      {
        [v44 addSubview:v43];
      }

      v47 = [v43 leadingAnchor];
      v48 = [v44 leadingAnchor];
      v49 = [v47 constraintEqualToAnchor:v48];
      [v49 setActive:1];

      v50 = [v43 trailingAnchor];
      v51 = [v44 trailingAnchor];
      v52 = [v50 constraintEqualToAnchor:v51];
      [v52 setActive:1];

      v53 = [v43 topAnchor];
      v54 = [v44 topAnchor];
      v55 = [v53 constraintEqualToAnchor:v54];
      [v55 setActive:1];

      v56 = [v43 bottomAnchor];
      v57 = [v44 bottomAnchor];
      v58 = [v56 constraintEqualToAnchor:v57];
      [v58 setActive:1];

      [v44 bounds];
      [v43 setFrame:?];
      [(AVPlayerViewController *)self->_avPlayerViewController didMoveToParentViewController:v8];
    }
  }
}

- (void)_removePlaybackViewController
{
  v9 = [(VUIBackgroundMediaController *)self avPlayerViewController];
  v3 = [v9 vuiParentViewController];
  v4 = [(VUIBackgroundMediaController *)self playbackContainerController];

  if (v3 == v4)
  {
    [v9 vui_willMoveToParentViewController:0];
    v5 = [v9 vuiView];
    [v5 vui_removeFromSuperView];

    [v9 vui_removeFromParentViewController];
  }

  v6 = [(VUIBackgroundMediaController *)self playbackContainerController];
  v7 = [v6 vuiParentViewController];

  if (v7 == self)
  {
    [v6 vui_willMoveToParentViewController:0];
    v8 = [v6 vuiView];
    [v8 vui_removeFromSuperView];

    [v6 vui_removeFromParentViewController];
  }
}

- (void)_updateAVPlayerViewControllerWithAVPlayerForPlayer:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIBackgroundMediaController *)self player];

  if (v5 == v4)
  {
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218498;
      v23 = self;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) setting player on main %@", buf, 0x20u);
    }

    v9 = [(VUIBackgroundMediaController *)self avPlayerViewController];
  }

  else
  {
    v6 = [(VUIBackgroundMediaController *)self prefetchPlayer];

    if (v6 != v4)
    {
      goto LABEL_18;
    }

    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218498;
      v23 = self;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) setting player on prefetch %@", buf, 0x20u);
    }

    v9 = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];
  }

  v12 = v9;
  if (v9)
  {
    v13 = [v9 player];

    if (v13)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__VUIBackgroundMediaController__updateAVPlayerViewControllerWithAVPlayerForPlayer___block_invoke;
      block[3] = &unk_1E872D990;
      v19 = v12;
      v20 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v14 = v19;
    }

    else
    {
      v14 = [v4 avPlayer];
      [v12 setPlayer:v14];
    }

    v15 = [v4 currentMediaItem];
    if ([(VUIBackgroundMediaController *)self supportsMediaSharing]&& [VUIMediaShareCoordinator shouldShowShareForMediaItem:v15])
    {
      v16 = [VUIMediaShareControlButton shareControlItemForMediaItem:v15 inPlayerViewController:v12];
      v21 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
      [v12 setCustomControlItems:v17];
    }

    else
    {
      [v12 setCustomControlItems:MEMORY[0x1E695E0F0]];
    }
  }

LABEL_18:
}

void __83__VUIBackgroundMediaController__updateAVPlayerViewControllerWithAVPlayerForPlayer___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(a1 + 40) avPlayer];
    [v1 setPlayer:v2];
  }
}

- (void)_notifyAVPlayerViewControllerDisplaySize:(id)a3 player:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 videoDisplaySize];
  v10 = v9;
  v11 = v8;
  if (v9 != *MEMORY[0x1E695F060] || v8 != *(MEMORY[0x1E695F060] + 8))
  {
    [v16 videoDisplayScale];
    v18.height = round(v11) * v13;
    v18.width = round(v10) * v13;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v18);
    [v7 vui_setObjectIfNotNil:DictionaryRepresentation forKey:@"VUIBackgroundMediaControllerDisplaySizeKey"];
    [v7 vui_setObjectIfNotNil:v6 forKey:@"VUIBackgroundMediaControllerPlayerKey"];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"VUIBackgroundMediaControllerVideoDisplaySizeDidChangeNotification" object:self userInfo:v7];
  }
}

- (void)_showPlaybackIfPossible
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(VUIBackgroundMediaController *)self isPlaybackEnabled]&& [(VUIBackgroundMediaController *)self _autoPlayEnabled])
  {
    v3 = [(VUIBackgroundMediaController *)self playbackLoadingStartDate];
    [(VUIBackgroundMediaController *)self _computedPlaybackDelayInterval];
    v5 = v4;
    if (v3)
    {
      v6 = [MEMORY[0x1E695DF00] date];
      [v6 timeIntervalSinceDate:v3];
      v8 = v7;

      [(VUIBackgroundMediaController *)self setPlaybackLoadingStartDate:0];
    }

    else
    {
      v8 = 0.0;
    }

    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218754;
      v20 = self;
      v21 = 2112;
      v22 = v11;
      v23 = 2048;
      v24 = v8;
      v25 = 2048;
      v26 = v5;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) timeTakenToLoad:[%f], playbackDelayInterval:[%f]", buf, 0x2Au);
    }

    if ([(VUIBackgroundMediaController *)self isBackgrounded]&& (v5 == 0.0 || v8 < v5))
    {
      v13 = [(VUIBackgroundMediaController *)self currentMediaInfo];
      objc_initWeak(buf, self);
      v14 = MEMORY[0x1E695DFF0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __55__VUIBackgroundMediaController__showPlaybackIfPossible__block_invoke;
      v16[3] = &unk_1E8737828;
      objc_copyWeak(&v18, buf);
      v16[4] = self;
      v12 = v13;
      v17 = v12;
      v15 = [v14 scheduledTimerWithTimeInterval:0 repeats:v16 block:v5 - v8];
      [(VUIBackgroundMediaController *)self setPlaybackDelayTimer:v15];

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
      goto LABEL_16;
    }

    if (v5 != -1.0)
    {
      v12 = [(VUIBackgroundMediaController *)self stateMachine];
      [v12 postEvent:@"Play" withContext:0 userInfo:0];
LABEL_16:
    }
  }

  else
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218242;
      v20 = self;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback is not enabled yet. Will show playback when it gets enabled.", buf, 0x16u);
    }
  }
}

void __55__VUIBackgroundMediaController__showPlaybackIfPossible__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained name];
    [WeakRetained isPlaybackEnabled];
    v5 = VUIBoolLogString();
    v7 = 134218498;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback timer fired, isPlaybackEnabled: (%@)", &v7, 0x20u);
  }

  [WeakRetained setPlaybackDelayTimer:0];
  if ([WeakRetained isPlaybackEnabled] && objc_msgSend(*(a1 + 32), "_autoPlayEnabled") && objc_msgSend(WeakRetained, "_currentMediaInfoContentMatchesMediaInfo:", *(a1 + 40)))
  {
    v6 = [WeakRetained stateMachine];
    [v6 postEvent:@"Play" withContext:0 userInfo:0];
  }
}

- (double)_computedPlaybackDelayInterval
{
  [(VUIBackgroundMediaController *)self playbackStartDelay];
  v4 = v3;
  result = -1.0;
  if (v4 != -1.0)
  {
    if (PlaybackDelayTimeIntervalOverride_onceToken_0 != -1)
    {
      [VUIBackgroundMediaController _computedPlaybackDelayInterval];
    }

    v6 = *&PlaybackDelayTimeIntervalOverride_playbackDelayInterval_0;
    [(VUIBackgroundMediaController *)self playbackStartDelay];
    v8 = v7;
    v9 = [(VUIBackgroundMediaController *)self currentMediaInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(VUIBackgroundMediaController *)self currentMediaInfo];
      [v11 playbackDelayInterval];
      v13 = v12;

      if (v13 != -1.0)
      {
        v14 = [(VUIBackgroundMediaController *)self currentMediaInfo];
        [v14 playbackDelayInterval];
        v8 = v15;
      }
    }

    if (v6 <= 0.0)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

- (void)setAvPlayerViewController:(id)a3
{
  v7 = a3;
  avPlayerViewController = self->_avPlayerViewController;
  if (avPlayerViewController)
  {
    [(AVPlayerViewController *)avPlayerViewController removeObserver:self forKeyPath:@"videoBounds" context:__PlayerAVPlayerViewControllerDisplaySizeKVOContext_0];
  }

  objc_storeStrong(&self->_avPlayerViewController, a3);
  v6 = v7;
  if (v7)
  {
    [v7 addObserver:self forKeyPath:@"videoBounds" options:0 context:__PlayerAVPlayerViewControllerDisplaySizeKVOContext_0];
    v6 = v7;
  }
}

- (void)setPrefetchPlayerViewController:(id)a3
{
  v7 = a3;
  prefetchPlayerViewController = self->_prefetchPlayerViewController;
  if (prefetchPlayerViewController)
  {
    [(AVPlayerViewController *)prefetchPlayerViewController removeObserver:self forKeyPath:@"videoBounds" context:__PlayerAVPlayerViewControllerDisplaySizeKVOContext_0];
  }

  objc_storeStrong(&self->_prefetchPlayerViewController, a3);
  v6 = v7;
  if (v7)
  {
    [v7 addObserver:self forKeyPath:@"videoBounds" options:0 context:__PlayerAVPlayerViewControllerDisplaySizeKVOContext_0];
    v6 = v7;
  }
}

- (id)_createPlayerViewController
{
  v3 = [objc_alloc(MEMORY[0x1E6958608]) initWithNibName:0 bundle:0];
  [(VUIBackgroundMediaController *)self _configurePlayerViewController:v3];

  return v3;
}

- (void)_configurePlayerViewController:(id)a3
{
  v4 = a3;
  [v4 setUpdatesNowPlayingInfoCenter:{-[VUIBackgroundMediaController updatesNowPlayingInfoCenter](self, "updatesNowPlayingInfoCenter")}];
  [v4 setAllowsPictureInPicturePlayback:{-[VUIBackgroundMediaController allowsPictureInPicturePlayback](self, "allowsPictureInPicturePlayback")}];
  [v4 setCanIncludePlaybackControlsWhenInline:0];
  [v4 setCanPausePlaybackWhenExitingFullScreen:0];
  [v4 setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
  [v4 setDelegate:self];
  v5 = [(VUIBackgroundMediaController *)self videoGravity];
  [v4 setVideoGravity:v5];

  [v4 setExitsFullScreenWhenPlaybackEnds:{-[VUIBackgroundMediaController exitsFullscreenWhenPlaybackEnds](self, "exitsFullscreenWhenPlaybackEnds")}];
  [v4 setShowsPlaybackControls:0];
  if ([(VUIBackgroundMediaController *)self disableSupplementalSubtitle])
  {
    [v4 setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:0];
  }

  [v4 setAllowsVideoFrameAnalysis:0];
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::setAllowInfoMetadataSubpanel: NO", v9, 2u);
  }

  [v4 vui_setAllowInfoMetadataSubpanel:0];
  v7 = [v4 view];
  v8 = [(VUIBackgroundMediaController *)self view];
  [v8 bounds];
  [v7 setFrame:?];
}

- (void)_cleanupPrefetchPlayback
{
  v3 = [(VUIBackgroundMediaController *)self prefetchPlayer];

  if (v3)
  {
    v4 = [(VUIBackgroundMediaController *)self prefetchPlayer];
    [v4 stop];

    v5 = [(VUIBackgroundMediaController *)self prefetchPlayer];
    [v5 invalidate];

    [(VUIBackgroundMediaController *)self setPrefetchPlayer:0];
  }

  v6 = [(VUIBackgroundMediaController *)self prefetchPlayerViewController];

  if (v6)
  {

    [(VUIBackgroundMediaController *)self setPrefetchPlayerViewController:0];
  }
}

- (void)_prefetchNextVideo
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(VUIBackgroundMediaController *)self player];
  if (v3)
  {
    v4 = [(VUIBackgroundMediaController *)self player];
    v5 = [v4 externalPlaybackType];

    if (v5)
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(VUIBackgroundMediaController *)self name];
        *buf = 134218242;
        v15 = self;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) Not prefetching player because external playback is not none", buf, 0x16u);
      }

LABEL_5:

      return;
    }
  }

  if (![(VUIBackgroundMediaController *)self prefetchesVideoFrame])
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VUIBackgroundMediaController *)self name];
      *buf = 134218242;
      v15 = self;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) Not prefetching next video because prefetchesVideoFrame is NO", buf, 0x16u);
    }

    goto LABEL_5;
  }

  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __50__VUIBackgroundMediaController__prefetchNextVideo__block_invoke;
  v12 = &unk_1E872E4B8;
  objc_copyWeak(&v13, buf);
  v8 = v10;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v11(v8);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __50__VUIBackgroundMediaController__prefetchNextVideo__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupPrefetchPlayback];
  v2 = [WeakRetained mediaInfoFetchController];
  v3 = [v2 loadPlayerAtIndex:{objc_msgSend(WeakRetained, "mediaInfoIndex") + 1}];

  v4 = [WeakRetained player];

  if (v4)
  {
    v5 = [WeakRetained player];
    [v3 setMuted:{objc_msgSend(v5, "muted")}];

    v6 = [WeakRetained player];
    [v6 rateUsedForPlayback];
    v8 = v7;

    if (v8 > 0.0)
    {
      v9 = [WeakRetained player];
      [v9 rate];
      [v3 setRateUsedForPlayback:?];
    }
  }

  v10 = [WeakRetained playbackInitiatorForRTCReporting];
  [v3 setReportingValueWithString:v10 forKey:@"initiator"];

  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [WeakRetained name];
    v14 = 134218498;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) Created prefetch player %@", &v14, 0x20u);
  }

  [WeakRetained setPrefetchPlayer:v3];
  v13 = [WeakRetained _createPlayerViewController];
  [WeakRetained setPrefetchPlayerViewController:v13];

  [v3 addObserver:WeakRetained forKeyPath:@"avPlayer" options:0 context:__PlayerAVPlayerKVOContext_1];
  [v3 pause];
}

- (void)_recordBgAutoPlayMediaEventForPlaybackState:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIBackgroundMediaController *)self player];
  v6 = [v5 playlist];

  v7 = [v6 currentMediaItem];
  if (v7)
  {
    v8 = [MEMORY[0x1E69D5A40] playing];

    if (v8 == v4)
    {
      v14 = VUIMetricsMediaActionTypePlay;
    }

    else
    {
      v9 = [MEMORY[0x1E69D5A40] stopped];
      v10 = v9;
      if (v9 == v4)
      {
      }

      else
      {
        v11 = [MEMORY[0x1E69D5A40] paused];
        v12 = v11;
        if (v11 != v4)
        {

LABEL_19:
          v29 = VUIDefaultLogObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [(VUIBackgroundMediaController *)self name];
            v47 = 134218242;
            v48 = self;
            v49 = 2112;
            v50 = v30;
            _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) ignoring playback state media event for ", &v47, 0x16u);
          }

          v13 = 0;
          goto LABEL_22;
        }

        v15 = [(VUIBackgroundMediaController *)self recordPausedMediaEventAsStop];

        if (!v15)
        {
          goto LABEL_19;
        }
      }

      v14 = VUIMetricsMediaActionTypeStop;
    }

    v13 = *v14;
    v16 = [(VUIBackgroundMediaController *)self lastMediaEventActionType];
    v17 = v16;
    if (v13 == v16)
    {
      v31 = [(VUIBackgroundMediaController *)self lastMediaEventActionType];

      if (v31)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    [(VUIBackgroundMediaController *)self setLastMediaEventActionType:v13];
    v18 = VUIDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(VUIBackgroundMediaController *)self name];
      v47 = 134218754;
      v48 = self;
      v49 = 2112;
      v50 = v19;
      v51 = 2112;
      v52 = v13;
      v53 = 1024;
      v54 = 0;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) record bg video media event, actionType %@, isAmbientVideo %i", &v47, 0x26u);
    }

    v20 = [v7 mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];
    v21 = [v20 length];

    v22 = [(VUIBackgroundMediaController *)self player];
    v23 = v22;
    if (v21)
    {
      v24 = [v22 currentMediaItem];
      v25 = [v24 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D88]];

      v26 = MEMORY[0x1E696AD98];
      v27 = [(VUIBackgroundMediaController *)self player];
      v28 = [v27 playbackDate];
      [v28 timeIntervalSinceDate:v25];
      v29 = [v26 numberWithDouble:?];
    }

    else
    {
      [v22 duration];
      v33 = v32;
      v34 = *MEMORY[0x1E69D5A78];

      if (v33 == v34)
      {
        v35 = [MEMORY[0x1E69D5A40] playing];

        if (v35 != v4)
        {
          v36 = [MEMORY[0x1E69D5A40] stopped];
          if (v36 == v4 || ([MEMORY[0x1E69D5A40] paused], v37 = objc_claimAutoreleasedReturnValue(), v21 = v37, v37 == v4))
          {
            v42 = [(VUIBackgroundMediaController *)self playbackStartDate];

            if (v36 != v4)
            {
            }

            if (v42)
            {
              v43 = MEMORY[0x1E696AD98];
              v44 = [MEMORY[0x1E695DF00] date];
              v45 = [(VUIBackgroundMediaController *)self playbackStartDate];
              [v44 timeIntervalSinceDate:v45];
              v29 = [v43 numberWithDouble:?];

              goto LABEL_18;
            }
          }

          else
          {
          }

          v29 = 0;
          goto LABEL_18;
        }

        v29 = &unk_1F5E5EE20;
      }

      else
      {
        v38 = [MEMORY[0x1E69D5A40] stopped];
        v39 = v38;
        if (v38 == v4)
        {
          v46 = [(VUIBackgroundMediaController *)self elapsedTimeWhenStopped];

          if (v46)
          {
            v29 = [(VUIBackgroundMediaController *)self elapsedTimeWhenStopped];
            goto LABEL_18;
          }
        }

        else
        {
        }

        v40 = MEMORY[0x1E696AD98];
        v41 = [(VUIBackgroundMediaController *)self player];
        [v41 cachedElapsedTime];
        v29 = [v40 numberWithDouble:?];
      }
    }

LABEL_18:
    [VUIMetricsMediaEvent recordBGVideoPlayOfTVPMediaItem:v7 contentPosition:v29 isAmbient:0 actionType:v13];
LABEL_22:

    goto LABEL_23;
  }

  v13 = VUIDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [VUIBackgroundMediaController _recordBgAutoPlayMediaEventForPlaybackState:?];
  }

LABEL_23:
}

- (void)_didPlayMediaItemToEnd:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIBackgroundMediaController *)self player];
  v6 = [v5 playlist];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = [(VUIBackgroundMediaController *)self player];
    [v8 removeObserver:self name:*MEMORY[0x1E69D5F28] object:v9];
  }

  if ([(VUIBackgroundMediaController *)self shouldPauseAtEnd])
  {
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:@"VUIBackgroundMediaControllerDidPlayToEndNotification" object:self userInfo:0];

    if ([(VUIBackgroundMediaController *)self shouldShowImageAndStopAfterPausingAtEnd])
    {
      objc_initWeak(location, self);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __55__VUIBackgroundMediaController__didPlayMediaItemToEnd___block_invoke;
      v19[3] = &unk_1E872E4B8;
      objc_copyWeak(&v20, location);
      [(VUIBackgroundMediaController *)self _swapActiveMedia:1 animated:1 completion:v19];
      objc_destroyWeak(&v20);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v11 = [(VUIBackgroundMediaController *)self player];
    v12 = [v11 playlist];
    v13 = [v12 nextMediaItem];
    v14 = v13 == 0;

    v15 = VUIDefaultLogObject();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v18 = [(VUIBackgroundMediaController *)self name];
        *location = 134218242;
        *&location[4] = self;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) DidPlayMediaItemToEnd, stop now", location, 0x16u);
      }

      [(VUIBackgroundMediaController *)self stop];
    }

    else
    {
      if (v16)
      {
        v17 = [(VUIBackgroundMediaController *)self name];
        *location = 134218242;
        *&location[4] = self;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) DidPlayMediaItemToEnd, there is next item to play, keep playing", location, 0x16u);
      }
    }
  }
}

void __55__VUIBackgroundMediaController__didPlayMediaItemToEnd___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stop];
}

- (void)_populatePlayerWithMediaItemsIfNeeded:(id)a3
{
  v8 = a3;
  v4 = [v8 externalPlaybackType];
  v5 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
  v6 = [v8 playlist];
  v7 = [(VUIBackgroundMediaController *)self mediaInfoIndex];
  if (v4)
  {
    [v5 populatePlaylistWithMediaItems:v6 atIndex:v7];

    [v8 setMediaItemEndAction:0];

    [(VUIBackgroundMediaController *)self _cleanupPrefetchPlayback];
  }

  else
  {
    [v5 removePopulatedMediaItems:v6 atIndex:v7];

    [v8 setMediaItemEndAction:1];
  }
}

- (void)_externalPlaybackStateChanged:(id)a3
{
  v4 = [a3 object];
  if ([(VUIBackgroundMediaController *)self prefetchesVideoFrame])
  {
    [(VUIBackgroundMediaController *)self _populatePlayerWithMediaItemsIfNeeded:v4];
  }
}

- (void)_postWillStartPlaybackNotification:(BOOL)a3
{
  v3 = a3;
  v11[3] = *MEMORY[0x1E69E9840];
  [(VUIBackgroundMediaController *)self setAutomaticPlaybackStop:0];
  v10[0] = @"VUIBackgroundMediaControllerIsForegroundedKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v5;
  v10[1] = @"VUIBackgroundMediaControllerIsAutomaticPlaybackStartKey";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIBackgroundMediaController isAutomaticPlaybackStart](self, "isAutomaticPlaybackStart")}];
  v11[1] = v6;
  v10[2] = @"VUIBackgroundMediaControllerPlaybackStartReasonKey";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIBackgroundMediaController vpafPlaybackStartReason](self, "vpafPlaybackStartReason")}];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"VUIBackgroundMediaControllerWillStartPlaybackNotification" object:self userInfo:v8];
}

- (void)_postWillStopPlaybackNotification
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"VUIBackgroundMediaControllerIsAutomaticPlaybackStopKey";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIBackgroundMediaController isAutomaticPlaybackStop](self, "isAutomaticPlaybackStop")}];
  v7[1] = @"VUIBackgroundMediaControllerPlaybackStopReasonKey";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIBackgroundMediaController vpafPlaybackStopReason](self, "vpafPlaybackStopReason")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"VUIBackgroundMediaControllerWillStopPlaybackNotification" object:self userInfo:v5];
}

- (void)_postDidStopPlaybackNotification
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"VUIBackgroundMediaControllerIsAutomaticPlaybackStopKey";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIBackgroundMediaController isAutomaticPlaybackStop](self, "isAutomaticPlaybackStop")}];
  v7[1] = @"VUIBackgroundMediaControllerPlaybackStopReasonKey";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIBackgroundMediaController vpafPlaybackStopReason](self, "vpafPlaybackStopReason")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"VUIBackgroundMediaControllerDidStopPlaybackNotification" object:self userInfo:v5];
}

- (void)_stateDidChangeFromState:(id)a3 toState:(id)a4 onEvent:(id)a5 context:(id)a6 userInfo:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = VUIDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(VUIBackgroundMediaController *)self name];
    v24 = 134219010;
    v25 = self;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) event:%@, fromState:%@, toState:%@", &v24, 0x34u);
  }

  if (v10 && v11)
  {
    if ([v10 isEqualToString:@"waiting for timeout while paused"])
    {
      v15 = VUIDefaultLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(VUIBackgroundMediaController *)self name];
        v24 = 134218242;
        v25 = self;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) invalidating waiting for timeout timer in paused state.", &v24, 0x16u);
      }

      v17 = [(VUIBackgroundMediaController *)self pauseStateTimeoutTimer];
      [v17 invalidate];

      [(VUIBackgroundMediaController *)self setPauseStateTimeoutTimer:0];
      goto LABEL_23;
    }

    if ([v10 isEqualToString:@"Loading image"])
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
    }

    else
    {
      if (![v10 isEqualToString:@"Showing image"])
      {
        if ([v10 isEqualToString:@"waiting to stop playback"])
        {
          v18 = VUIDefaultLogObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [(VUIBackgroundMediaController *)self name];
            v24 = 134218498;
            v25 = self;
            v26 = 2112;
            v27 = v19;
            v28 = 2112;
            v29 = v11;
          }

          v20 = MEMORY[0x1E69E58C0];
          v21 = sel_stop;
          v22 = self;
          v23 = 0;
        }

        else
        {
          if ([v10 isEqualToString:@"Showing playback in foreground"])
          {
            v20 = MEMORY[0x1E69E58C0];
            v21 = sel__updatePlayerVolume_;
            v23 = MEMORY[0x1E695E118];
          }

          else
          {
            if (![v10 isEqualToString:@"Showing playback in background"])
            {
              goto LABEL_23;
            }

            v20 = MEMORY[0x1E69E58C0];
            v21 = sel__updatePlayerVolume_;
            v23 = MEMORY[0x1E695E110];
          }

          v22 = self;
        }

        [v20 cancelPreviousPerformRequestsWithTarget:v22 selector:v21 object:v23];
        goto LABEL_23;
      }

      [(VUIBackgroundMediaController *)self _cleanUpPlaybackTimers];
    }

LABEL_23:
    [(VUIBackgroundMediaController *)self _configureAudioSessionForState:v11];
    [(VUIBackgroundMediaController *)self _configureLegibleContentInsetFromState:v10 toState:v11];
  }
}

- (void)_configureAudioSession
{
  v3 = [(VUIBackgroundMediaController *)self stateMachine];
  v4 = [v3 currentState];

  [(VUIBackgroundMediaController *)self _configureAudioSessionForState:v4];
}

- (void)_configureAudioSessionForState:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:@"Showing playback in background"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Showing playback in foreground"))
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(VUIBackgroundMediaController *)self name];
      [(VUIBackgroundMediaController *)self isBackgrounded];
      v7 = VUIBoolLogString();
      v8 = VUIBoolLogString();
      v11 = 134218754;
      v12 = self;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) isBackgrounded:[%@] usingPlaybackCategory:[%@]", &v11, 0x2Au);
    }

    v9 = +[VUIPlaybackManager sharedInstance];
    [v9 configureAudioSessionForBackgroundPlayback:[(VUIBackgroundMediaController *)self isBackgrounded] usingPlaybackCategory:self->_useForegroundAudioSessionInBackgroundMode isMultiview:0];
  }

  else
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(VUIBackgroundMediaController *)self name];
      v11 = 134218498;
      v12 = self;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) state = %@, video isn't playing, skip audio session configuration", &v11, 0x20u);
    }
  }
}

- (void)_registerStateMachineHandlers
{
  v157[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke;
  aBlock[3] = &unk_1E8737850;
  objc_copyWeak(&v145, &location);
  v3 = _Block_copy(aBlock);
  v141[0] = MEMORY[0x1E69E9820];
  v141[1] = 3221225472;
  v141[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_345;
  v141[3] = &unk_1E872E828;
  objc_copyWeak(&v143, &location);
  v4 = v3;
  v142 = v4;
  v61 = _Block_copy(v141);
  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v139[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_346;
  v139[3] = &unk_1E872E4B8;
  objc_copyWeak(&v140, &location);
  v5 = _Block_copy(v139);
  v6 = [(VUIBackgroundMediaController *)self stateMachine];
  v157[0] = @"Showing playback in foreground";
  v157[1] = @"Showing playback in background";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:2];
  v137[0] = MEMORY[0x1E69E9820];
  v137[1] = 3221225472;
  v137[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_348;
  v137[3] = &unk_1E872FAD8;
  objc_copyWeak(&v138, &location);
  [v6 registerHandlerForEvent:@"Set media info" onStates:v7 withBlock:v137];

  v8 = [(VUIBackgroundMediaController *)self stateMachine];
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_353;
  v135[3] = &unk_1E872FAD8;
  objc_copyWeak(&v136, &location);
  [v8 registerDefaultHandlerForEvent:@"Set media info" withBlock:v135];

  v9 = [(VUIBackgroundMediaController *)self stateMachine];
  v156[0] = @"Not doing anything";
  v156[1] = @"Loading image";
  v156[2] = @"Showing image";
  v156[3] = @"Finished playback";
  v156[4] = @"Waiting to stop after showing image";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:5];
  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 3221225472;
  v133[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_356;
  v133[3] = &unk_1E872FAD8;
  objc_copyWeak(&v134, &location);
  [v9 registerHandlerForEvent:@"Load image" onStates:v10 withBlock:v133];

  v11 = [(VUIBackgroundMediaController *)self stateMachine];
  v155[0] = @"Showing playback in background";
  v155[1] = @"Showing playback in foreground";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:2];
  v131[0] = MEMORY[0x1E69E9820];
  v131[1] = 3221225472;
  v131[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_357;
  v131[3] = &unk_1E872FAD8;
  objc_copyWeak(&v132, &location);
  [v11 registerHandlerForEvent:@"Load image" onStates:v12 withBlock:v131];

  v13 = [(VUIBackgroundMediaController *)self stateMachine];
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_359;
  v128[3] = &unk_1E872FAB0;
  objc_copyWeak(&v130, &location);
  v14 = v5;
  v129 = v14;
  [v13 registerHandlerForEvent:@"Show image" onState:@"Loading image" withBlock:v128];

  v15 = [(VUIBackgroundMediaController *)self stateMachine];
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_364;
  v126[3] = &unk_1E872FAD8;
  objc_copyWeak(&v127, &location);
  [v15 registerHandlerForEvent:@"Show image" onState:@"Finished playback" withBlock:v126];

  v16 = [(VUIBackgroundMediaController *)self stateMachine];
  v124[0] = MEMORY[0x1E69E9820];
  v124[1] = 3221225472;
  v124[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_366;
  v124[3] = &unk_1E872FAD8;
  objc_copyWeak(&v125, &location);
  [v16 registerHandlerForEvent:@"Show image" onState:@"Waiting to stop after showing image" withBlock:v124];

  v17 = [(VUIBackgroundMediaController *)self stateMachine];
  v154[0] = @"Showing playback in foreground";
  v154[1] = @"Showing playback in background";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:2];
  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 3221225472;
  v122[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8;
  v122[3] = &unk_1E872FAD8;
  objc_copyWeak(&v123, &location);
  [v17 registerHandlerForEvent:@"Show image" onStates:v18 withBlock:v122];

  v19 = [(VUIBackgroundMediaController *)self stateMachine];
  v153[0] = @"Not doing anything";
  v153[1] = @"Showing image";
  v153[2] = @"Loading image";
  v153[3] = @"Loading playback";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:4];
  v119[0] = MEMORY[0x1E69E9820];
  v119[1] = 3221225472;
  v119[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_9;
  v119[3] = &unk_1E872FAB0;
  objc_copyWeak(&v121, &location);
  v21 = v4;
  v120 = v21;
  [v19 registerHandlerForEvent:@"Load playback" onStates:v20 withBlock:v119];

  v22 = [(VUIBackgroundMediaController *)self stateMachine];
  v152[0] = @"Showing playback in foreground";
  v152[1] = @"Showing playback in background";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:2];
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_370;
  v116[3] = &unk_1E872FAB0;
  objc_copyWeak(&v118, &location);
  v24 = v21;
  v117 = v24;
  [v22 registerHandlerForEvent:@"Load playback" onStates:v23 withBlock:v116];

  v25 = [(VUIBackgroundMediaController *)self stateMachine];
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_372;
  v114[3] = &unk_1E872FAD8;
  objc_copyWeak(&v115, &location);
  [v25 registerHandlerForEvent:@"Show playback" onState:@"Loading playback" withBlock:v114];

  v26 = [(VUIBackgroundMediaController *)self stateMachine];
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_377;
  v112[3] = &unk_1E872FAD8;
  objc_copyWeak(&v113, &location);
  [v26 registerHandlerForEvent:@"Show playback" onState:@"Showing image" withBlock:v112];

  v27 = [(VUIBackgroundMediaController *)self stateMachine];
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8_380;
  v110[3] = &unk_1E872FAD8;
  objc_copyWeak(&v111, &location);
  [v27 registerHandlerForEvent:@"Player state changed" onState:@"Waiting for player to start loading" withBlock:v110];

  v28 = [(VUIBackgroundMediaController *)self stateMachine];
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_382;
  v108[3] = &unk_1E872FAD8;
  objc_copyWeak(&v109, &location);
  [v28 registerHandlerForEvent:@"Player state changed" onState:@"Loading playback" withBlock:v108];

  v29 = [(VUIBackgroundMediaController *)self stateMachine];
  v151[0] = @"waiting for timeout while paused";
  v151[1] = @"Showing playback in background";
  v151[2] = @"Showing playback in foreground";
  v151[3] = @"waiting to stop playback";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:4];
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_383;
  v106[3] = &unk_1E872FAD8;
  objc_copyWeak(&v107, &location);
  [v29 registerHandlerForEvent:@"Player state changed" onStates:v30 withBlock:v106];

  v31 = [(VUIBackgroundMediaController *)self stateMachine];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_384;
  v104[3] = &unk_1E872FAD8;
  objc_copyWeak(&v105, &location);
  [v31 registerHandlerForEvent:@"Player state changed" onState:@"Waiting to stop after showing image" withBlock:v104];

  v32 = [(VUIBackgroundMediaController *)self stateMachine];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_385;
  v102[3] = &unk_1E872FAD8;
  objc_copyWeak(&v103, &location);
  [v32 registerDefaultHandlerForEvent:@"Finished playback" withBlock:v102];

  v33 = [(VUIBackgroundMediaController *)self stateMachine];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_388;
  v100[3] = &unk_1E872FAD8;
  objc_copyWeak(&v101, &location);
  [v33 registerDefaultHandlerForEvent:@"Playback error occurred" withBlock:v100];

  v34 = [(VUIBackgroundMediaController *)self stateMachine];
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_11;
  v98[3] = &unk_1E872FAD8;
  objc_copyWeak(&v99, &location);
  [v34 registerHandlerForEvent:@"Transition to foreground" onState:@"Loading image" withBlock:v98];

  v35 = [(VUIBackgroundMediaController *)self stateMachine];
  v150[0] = @"Showing playback in background";
  v150[1] = @"waiting for timeout while paused";
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:2];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_12;
  v96[3] = &unk_1E872FAD8;
  objc_copyWeak(&v97, &location);
  [v35 registerHandlerForEvent:@"Transition to foreground" onStates:v36 withBlock:v96];

  v37 = [(VUIBackgroundMediaController *)self stateMachine];
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_405;
  v94[3] = &unk_1E872FAD8;
  objc_copyWeak(&v95, &location);
  [v37 registerHandlerForEvent:@"Transition background" onState:@"Loading image" withBlock:v94];

  v38 = [(VUIBackgroundMediaController *)self stateMachine];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_406;
  v92[3] = &unk_1E872FAD8;
  objc_copyWeak(&v93, &location);
  [v38 registerHandlerForEvent:@"Transition background" onState:@"Loading playback" withBlock:v92];

  v39 = [(VUIBackgroundMediaController *)self stateMachine];
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_407;
  v90[3] = &unk_1E872FAD8;
  objc_copyWeak(&v91, &location);
  [v39 registerHandlerForEvent:@"Transition background" onState:@"Showing playback in foreground" withBlock:v90];

  v40 = [(VUIBackgroundMediaController *)self stateMachine];
  v149[0] = @"Showing playback in background";
  v149[1] = @"Showing playback in foreground";
  v149[2] = @"Loading playback";
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:3];
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_409;
  v88[3] = &unk_1E872FAD8;
  objc_copyWeak(&v89, &location);
  [v40 registerHandlerForEvent:@"Play" onStates:v41 withBlock:v88];

  v42 = [(VUIBackgroundMediaController *)self stateMachine];
  v148[0] = @"waiting for timeout while paused";
  v148[1] = @"waiting to stop playback";
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_410;
  v86[3] = &unk_1E872FAD8;
  objc_copyWeak(&v87, &location);
  [v42 registerHandlerForEvent:@"Play" onStates:v43 withBlock:v86];

  v44 = [(VUIBackgroundMediaController *)self stateMachine];
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_412;
  v84[3] = &unk_1E872FAD8;
  objc_copyWeak(&v85, &location);
  [v44 registerHandlerForEvent:@"Pause" onState:@"Showing playback in background" withBlock:v84];

  v45 = [(VUIBackgroundMediaController *)self stateMachine];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_415;
  v82[3] = &unk_1E872FAD8;
  objc_copyWeak(&v83, &location);
  [v45 registerHandlerForEvent:@"Pause show image and stop" onState:@"Showing playback in background" withBlock:v82];

  v46 = [(VUIBackgroundMediaController *)self stateMachine];
  [v46 registerDefaultHandlerForEvent:@"Pause show image and stop" withBlock:&__block_literal_global_419];

  v47 = [(VUIBackgroundMediaController *)self stateMachine];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_421;
  v80[3] = &unk_1E872FAD8;
  objc_copyWeak(&v81, &location);
  [v47 registerDefaultHandlerForEvent:@"Stop" withBlock:v80];

  v48 = [(VUIBackgroundMediaController *)self stateMachine];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_422;
  v77[3] = &unk_1E872FAB0;
  objc_copyWeak(&v79, &location);
  v49 = v14;
  v78 = v49;
  [v48 registerHandlerForEvent:@"Replay" onState:@"Not doing anything" withBlock:v77];

  v50 = [(VUIBackgroundMediaController *)self stateMachine];
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_424;
  v73[3] = &unk_1E8730210;
  objc_copyWeak(&v76, &location);
  v51 = v49;
  v74 = v51;
  v52 = v61;
  v75 = v52;
  [v50 registerHandlerForEvent:@"Replay" onState:@"Showing image" withBlock:v73];

  v53 = [(VUIBackgroundMediaController *)self stateMachine];
  v147[0] = @"Waiting for player to start loading";
  v147[1] = @"Loading playback";
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:2];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_426;
  v70[3] = &unk_1E872FAB0;
  objc_copyWeak(&v72, &location);
  v55 = v51;
  v71 = v55;
  [v53 registerHandlerForEvent:@"Replay" onStates:v54 withBlock:v70];

  v56 = [(VUIBackgroundMediaController *)self stateMachine];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_427;
  v67[3] = &unk_1E872FAB0;
  objc_copyWeak(&v69, &location);
  v57 = v24;
  v68 = v57;
  [v56 registerHandlerForEvent:@"Restore avPlayerViewController" onState:@"Not doing anything" withBlock:v67];

  v58 = [(VUIBackgroundMediaController *)self stateMachine];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_429;
  v64[3] = &unk_1E872FAB0;
  objc_copyWeak(&v66, &location);
  v59 = v57;
  v65 = v59;
  [v58 registerDefaultHandlerForEvent:@"Restore avPlayerViewController" withBlock:v64];

  v60 = [(VUIBackgroundMediaController *)self stateMachine];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_431;
  v62[3] = &unk_1E872FAD8;
  objc_copyWeak(&v63, &location);
  [v60 registerHandlerForEvent:@"AvPlayerViewController did exit fullscreen presentation" onState:@"Showing playback in foreground" withBlock:v62];

  objc_destroyWeak(&v63);
  objc_destroyWeak(&v66);

  objc_destroyWeak(&v69);
  objc_destroyWeak(&v72);

  objc_destroyWeak(&v76);
  objc_destroyWeak(&v79);
  objc_destroyWeak(&v81);
  objc_destroyWeak(&v83);
  objc_destroyWeak(&v85);
  objc_destroyWeak(&v87);
  objc_destroyWeak(&v89);
  objc_destroyWeak(&v91);
  objc_destroyWeak(&v93);
  objc_destroyWeak(&v95);
  objc_destroyWeak(&v97);
  objc_destroyWeak(&v99);
  objc_destroyWeak(&v101);
  objc_destroyWeak(&v103);
  objc_destroyWeak(&v105);
  objc_destroyWeak(&v107);
  objc_destroyWeak(&v109);
  objc_destroyWeak(&v111);
  objc_destroyWeak(&v113);
  objc_destroyWeak(&v115);

  objc_destroyWeak(&v118);
  objc_destroyWeak(&v121);
  objc_destroyWeak(&v123);
  objc_destroyWeak(&v125);
  objc_destroyWeak(&v127);

  objc_destroyWeak(&v130);
  objc_destroyWeak(&v132);
  objc_destroyWeak(&v134);
  objc_destroyWeak(&v136);
  objc_destroyWeak(&v138);

  objc_destroyWeak(&v140);
  objc_destroyWeak(&v143);

  objc_destroyWeak(&v145);
  objc_destroyWeak(&location);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained name];
    v9 = [WeakRetained player];
    v50 = 134218754;
    v51 = WeakRetained;
    v52 = 2112;
    v53 = v8;
    v54 = 2112;
    v55 = v5;
    v56 = 2112;
    v57 = v9;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) will create a new playback view controller with player [%@], replacing [%@]", &v50, 0x2Au);
  }

  if (v5)
  {
    [v5 setAllowsConstrainedNetworkUsage:0];
    [v5 setAllowsCellularUsage:{objc_msgSend(WeakRetained, "allowsVideoCellularUsage")}];
    [v5 setAllowsExternalPlayback:{objc_msgSend(WeakRetained, "allowsExternalPlayback")}];
    v10 = [WeakRetained preferredAudioLanguageCode];
    if (v10)
    {
    }

    else
    {
      v11 = [WeakRetained prefersAudioDescriptions];

      if (!v11)
      {
LABEL_8:
        if ([WeakRetained mutePlaybackInBackground])
        {
          v14 = 1;
        }

        else
        {
          v14 = [WeakRetained isMuted];
        }

        [v5 setMuted:v14];
        v15 = [WeakRetained rateUsedForPlayback];

        if (v15)
        {
          v16 = [WeakRetained rateUsedForPlayback];
          [v16 doubleValue];
          [v5 setRateUsedForPlayback:?];
        }

        if (([WeakRetained mutePlaybackInBackground] & 1) != 0 || (objc_msgSend(WeakRetained, "backgroundVolume"), v17 == -1.0))
        {
          [WeakRetained player];
        }

        else
        {
          [WeakRetained backgroundVolume];
          [v5 setVolume:?];
        }

        v18 = +[VUIPlayerValidationManager sharedInstance];
        [v18 addReferenceForPlayer:v5];

        v19 = [WeakRetained player];

        if (v19)
        {
          [WeakRetained _unregisterPlayerNotifications];
          v20 = +[VUIPlayerValidationManager sharedInstance];
          v21 = [WeakRetained player];
          [v20 removeReferenceForPlayer:v21 stoppingIfNeeded:a3 ^ 1];
        }

        if ([WeakRetained isHapticsEnabled])
        {
          [VUIPlayerHapticManagerObjC setPlayer:v5];
        }

        [WeakRetained setPlayer:v5];
        [WeakRetained setDidWeCreatePlayer:1];
        [WeakRetained _updatePlayerMuteStateForBackgroundPlaybackWithReason:@"VUIBackgroundMediaControllerPlaybackMuteReasonInitialSetting"];
        v22 = [WeakRetained player];
        [v22 addObserver:WeakRetained forKeyPath:@"avPlayer" options:0 context:__PlayerAVPlayerKVOContext_1];

        v23 = [WeakRetained player];
        [v23 addObserver:WeakRetained forKeyPath:@"preferredAudioLanguageCode" options:0 context:__PlayerPreferredAudioLanguageCode];

        v24 = [WeakRetained player];
        [v24 addObserver:WeakRetained forKeyPath:@"prefersAudioDescriptions" options:0 context:__PlayerPrefersAudioDescriptions];

        if ([WeakRetained shouldPauseAtEnd])
        {
          [v5 setMediaItemEndAction:1];
        }

        v25 = [MEMORY[0x1E696AD88] defaultCenter];
        v26 = *MEMORY[0x1E69D5F28];
        v27 = [WeakRetained player];
        [v25 addObserver:WeakRetained selector:sel__didPlayMediaItemToEnd_ name:v26 object:v27];

        goto LABEL_24;
      }
    }

    v12 = [WeakRetained preferredAudioLanguageCode];
    [v5 setPreferredAudioLanguageCode:v12];

    v13 = [WeakRetained prefersAudioDescriptions];
    [v5 setPrefersAudioDescriptions:{objc_msgSend(v13, "BOOLValue")}];

    [v5 updateAudioSelectionCriteria];
    goto LABEL_8;
  }

LABEL_24:
  [WeakRetained _registerPlayerNotifications];
  v28 = [WeakRetained playbackContainerController];

  if (!v28)
  {
    v29 = objc_opt_new();
    v30 = [v29 view];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [v29 view];
    [v31 setVuiAutoresizingMask:18];

    [WeakRetained setPlaybackContainerController:v29];
    v32 = [WeakRetained avPlayerViewController];

    if (!v32)
    {
      v33 = VUIDefaultLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [WeakRetained name];
        v50 = 134218242;
        v51 = WeakRetained;
        v52 = 2112;
        v53 = v34;
        _os_log_impl(&dword_1E323F000, v33, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) creating avPlayerViewController because none was supplied.", &v50, 0x16u);
      }

      v35 = [WeakRetained _createPlayerViewController];
      if ([WeakRetained didWeCreatePlayer])
      {
        v36 = [WeakRetained player];
        [WeakRetained _updateAVPlayerViewControllerWithAVPlayerForPlayer:v36];
      }

      [WeakRetained setAvPlayerViewController:v35];
      [WeakRetained setShowsVideoControls:0];
    }

    v37 = [WeakRetained avPlayerViewController];
    v38 = [v37 vuiView];
    v39 = [v38 superview];

    if (v39)
    {
      v40 = [WeakRetained avPlayerViewController];
      v41 = [v40 vuiView];
      [v41 vui_removeFromSuperView];

      v42 = [WeakRetained avPlayerViewController];
      [v42 vui_removeFromParentViewController];

      v43 = [WeakRetained avPlayerViewController];
      [v43 vui_didMoveToParentViewController:0];
    }

    [WeakRetained _addPlaybackViewControllerForPlayback:1 restoringAVPlayerViewController:a3];
    [WeakRetained _updateVideoPlayerLegibleContentInsets:1];
  }

  v44 = [WeakRetained player];
  v45 = [v44 currentMediaItem];
  v46 = [v45 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];

  v47 = [MEMORY[0x1E695DF00] date];
  [v46 addSingleShotEventWithName:*MEMORY[0x1E69D6018] value:@"Background"];
  [v46 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6040] date:v47];
  v48 = MEMORY[0x1E69D6058];
  [v46 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6058] date:v47];
  [v46 addEndEventWithName:*v48];
  if ((a3 & 1) == 0)
  {
    v49 = [WeakRetained player];
    [v49 pause];
  }
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_345(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained name];
    v9 = 134218242;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) starting to load the playlist", &v9, 0x16u);
  }

  v5 = [WeakRetained player];

  if (v5)
  {
    [WeakRetained _postWillStopPlaybackNotification];
    v6 = [WeakRetained player];
    [v6 stop];
  }

  else
  {
    v7 = [WeakRetained mediaInfoFetchController];
    v6 = [v7 loadPlayerAtIndex:{objc_msgSend(WeakRetained, "mediaInfoIndex")}];

    v8 = [WeakRetained playbackInitiatorForRTCReporting];
    [v6 setReportingValueWithString:v8 forKey:@"initiator"];

    (*(*(a1 + 32) + 16))();
  }
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_346(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2;
  v17 = &unk_1E872F038;
  objc_copyWeak(&v19, (a1 + 32));
  v18 = WeakRetained;
  v3 = _Block_copy(&v14);
  if (([WeakRetained loadsPlayerWithFullscreenPlayback] & 1) == 0)
  {
    v4 = +[VUIPlaybackManager sharedInstance];
    v5 = [v4 isFullscreenPlaybackUIBeingShown];

    if (v5)
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained name];
        *buf = 134218242;
        v21 = WeakRetained;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) FullScreenPlayback is showing, not loading playback", buf, 0x16u);
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  if ([WeakRetained isBackgrounded])
  {
    if (![WeakRetained isPlaybackEnabled])
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [WeakRetained name];
        *buf = 134218242;
        v21 = WeakRetained;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback is not enabled, not setting loading timer.", buf, 0x16u);
      }

      goto LABEL_15;
    }

    [WeakRetained _cleanUpPlaybackTimers];
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [WeakRetained name];
      *buf = 134218242;
      v21 = WeakRetained;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback is enabled, loading playback.", buf, 0x16u);
    }

    v10 = [MEMORY[0x1E695DF00] date];
    [WeakRetained setPlaybackLoadingStartDate:v10];

    v3[2](v3);
  }

  else
  {
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [WeakRetained name];
      *buf = 134218242;
      v21 = WeakRetained;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) controller is not backgrounded, loading playback.", buf, 0x16u);
    }

    v3[2](v3);
  }

LABEL_16:

  objc_destroyWeak(&v19);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([MEMORY[0x1E69DC668] vuiIsActive])
  {
    v3 = [WeakRetained currentMediaInfo];
    v4 = [v3 tvpPlaylist];

    if (v4)
    {
      v5 = [WeakRetained stateMachine];
      [v5 postEvent:@"Load playback" withContext:0 userInfo:0];
    }
  }

  else
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [v6 name];
      v8 = 134218498;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2048;
      v13 = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) not loading playlist isAppActive:<%ld>.", &v8, 0x20u);
    }
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_348(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v59 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
  v10 = [v8 objectForKeyedSubscript:@"ImageVideoSwapBehaviorKey"];
  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:@"ImageVideoSwapBehaviorKey"];
    v12 = [v11 integerValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 currentState];
  v14 = [WeakRetained player];
  v15 = [v14 playlist];

  v16 = [WeakRetained currentMediaInfo];
  v17 = [v16 tvpPlaylist];

  if ((v12 & 0xFFFFFFFFFFFFFFFDLL) != 0 || ![WeakRetained prefetchesVideoFrame] || (objc_msgSend(WeakRetained, "mediaInfoFetchController"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "mediaInfoContainsPlayerAtIndex:", objc_msgSend(WeakRetained, "mediaInfoIndex")), v18, !v19))
  {
    if (v12 == 3)
    {
      v31 = VUIDefaultLogObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [WeakRetained name];
        *buf = 134218498;
        v75 = WeakRetained;
        v76 = 2112;
        v77 = v32;
        v78 = 2112;
        v79 = v59;
        _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) set media info SwapBehaviorShowImageAndStop, animated %@", buf, 0x20u);
      }

      [WeakRetained _swapActiveMedia:1 animated:objc_msgSend(v59 completion:{"BOOLValue"), 0}];
      if (v8)
      {
        v33 = [v8 objectForKeyedSubscript:@"DirectionKey"];
        v34 = [v33 integerValue];
      }

      else
      {
        v34 = 0;
      }

      v35 = [WeakRetained currentMediaInfo];
      [WeakRetained setPendingMediaInfo:v35];

      [WeakRetained setPendingMediaInfoDirection:v34];
      v36 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
      [WeakRetained setPendingAnimated:v36];

      v72 = @"PlaybackStopReasonKey";
      v73 = &unk_1F5E5E790;
      v37 = MEMORY[0x1E695DF20];
      v38 = &v73;
      v39 = &v72;
    }

    else
    {
      if (v12 == 1)
      {
        v28 = [WeakRetained currentMediaInfo];
        [WeakRetained setPendingMediaInfo:v28];

        v29 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
        [WeakRetained setPendingAnimated:v29];

        v30 = [WeakRetained player];
        [v30 pause];

        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4;
        v60[3] = &unk_1E872D990;
        v61 = v7;
        v62 = v8;
        [v61 executeBlockAfterCurrentStateTransition:v60];

        v13 = @"Waiting to stop after showing image";
        goto LABEL_32;
      }

      if (!v17 || [WeakRetained _playlist:v15 contentMatchesPlaylist:v17])
      {
        [v7 postEvent:@"Load image" withContext:0 userInfo:v8];
        goto LABEL_32;
      }

      if (v8)
      {
        v40 = [v8 objectForKeyedSubscript:@"DirectionKey"];
        v41 = [v40 integerValue];
      }

      else
      {
        v41 = 0;
      }

      v53 = [WeakRetained currentMediaInfo];
      [WeakRetained setPendingMediaInfo:v53];

      [WeakRetained setPendingMediaInfoDirection:v41];
      v54 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
      [WeakRetained setPendingAnimated:v54];

      v70 = @"PlaybackStopReasonKey";
      v71 = &unk_1F5E5E790;
      v37 = MEMORY[0x1E695DF20];
      v38 = &v71;
      v39 = &v70;
    }

    v52 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
    [v7 postEvent:@"Stop" withContext:0 userInfo:v52];
LABEL_31:

    goto LABEL_32;
  }

  v20 = [WeakRetained avPlayerViewController];
  v58 = [v20 isPictureInPictureActive];

  v21 = [WeakRetained prefetchPlayer];
  v22 = [v21 playlist];
  v23 = [WeakRetained _playlist:v22 contentMatchesPlaylist:v17];

  v57 = v23;
  if ([WeakRetained isVideoFrameFallbackEnabled])
  {
    v24 = [WeakRetained prefetchPlayer];
    v25 = [v24 state];
    v26 = [MEMORY[0x1E69D5A40] paused];
    v27 = (v25 != v26) | v23 ^ 1;
  }

  else
  {
    v27 = 0;
  }

  v42 = [WeakRetained player];
  if (v42)
  {
    v43 = v42;
    v44 = [WeakRetained player];
    v56 = v27;
    v45 = v15;
    v46 = [v44 externalPlaybackType] != 0;

    v47 = v46 | v58;
    v15 = v45;
    v27 = v56;
    if (v47)
    {
LABEL_26:
      v48 = [WeakRetained player];
      v49 = [v48 playlist];
      v50 = [v49 activeListIndex];
      v51 = [WeakRetained mediaInfoIndex];

      if (v50 == v51)
      {
        goto LABEL_32;
      }

      v52 = [WeakRetained player];
      [v52 changeToMediaAtIndex:objc_msgSend(WeakRetained reason:{"mediaInfoIndex"), 0}];
      goto LABEL_31;
    }
  }

  else if (v58)
  {
    goto LABEL_26;
  }

  if (v27)
  {
    [WeakRetained _cleanUpEverythingPlaybackRelated];
    if ((v57 & 1) == 0)
    {
      [WeakRetained _cleanupPrefetchPlayback];
      [WeakRetained _swapActiveMedia:1 animated:objc_msgSend(v59 completion:{"BOOLValue"), 0}];
    }

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3;
    v63[3] = &unk_1E872D990;
    v64 = v7;
    v65 = v8;
    [v64 executeBlockAfterCurrentStateTransition:v63];

    v13 = @"Loading image";
  }

  else
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_349;
    v66[3] = &unk_1E8737160;
    v69 = v12;
    v66[4] = WeakRetained;
    v67 = v7;
    v68 = v8;
    [v67 executeBlockAfterCurrentStateTransition:v66];

    v13 = @"Loading playback";
  }

LABEL_32:

  return v13;
}

uint64_t __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_349(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _cleanupPrefetchPlayback];
    v4 = [*(a1 + 32) player];
    v5 = [v4 state];
    v6 = [MEMORY[0x1E69D5A40] stopped];

    if (v5 != v6)
    {
      v7 = *(a1 + 32);
      v8 = [MEMORY[0x1E69D5A40] stopped];
      [v7 _recordBgAutoPlayMediaEventForPlaybackState:v8];
    }

    v9 = [*(a1 + 32) player];
    [v9 pause];
  }

  else
  {
    [v3 _cleanUpEverythingPlaybackRelated];
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 48);

  return [v10 postEvent:@"Load playback" withContext:0 userInfo:v11];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_353(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v7 currentState];
  v11 = [WeakRetained mediaInfoFetchController];
  if (![v11 mediaInfoContainsPlayerAtIndex:{objc_msgSend(WeakRetained, "mediaInfoIndex")}] || !objc_msgSend(WeakRetained, "prefetchesVideoFrame"))
  {
    goto LABEL_6;
  }

  v12 = [WeakRetained prefetchPlayer];
  v13 = [v12 state];
  v14 = [MEMORY[0x1E69D5A40] paused];
  if (v13 != v14 && ([WeakRetained isVideoFrameFallbackEnabled] & 1) != 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v25 = [WeakRetained isPlaybackEnabled];

  if (v25)
  {

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_354;
    v32[3] = &unk_1E872D990;
    v33 = v7;
    v34 = v8;
    [v33 executeBlockAfterCurrentStateTransition:v32];

    v10 = @"Loading playback";
    v24 = v33;
    goto LABEL_17;
  }

LABEL_7:
  v15 = [WeakRetained player];
  if (!v15 || (v16 = v15, [WeakRetained player], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "state"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69D5A40], "stopped"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, v16, v18 == v19))
  {
    v22 = [WeakRetained mediaInfoFetchController];
    v23 = [v22 mediaInfoContainsImageAtIndex:{objc_msgSend(WeakRetained, "mediaInfoIndex")}];

    if (!v23)
    {
      goto LABEL_18;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_355;
    v29[3] = &unk_1E872D990;
    v30 = v7;
    v31 = v8;
    [v30 executeBlockAfterCurrentStateTransition:v29];

    v10 = @"Loading image";
    v24 = v30;
  }

  else
  {
    if (v8)
    {
      v20 = [v8 objectForKeyedSubscript:@"DirectionKey"];
      v21 = [v20 integerValue];
    }

    else
    {
      v21 = 0;
    }

    v26 = [WeakRetained currentMediaInfo];
    [WeakRetained setPendingMediaInfo:v26];

    [WeakRetained setPendingMediaInfoDirection:v21];
    v27 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
    [WeakRetained setPendingAnimated:v27];

    v35 = @"PlaybackStopReasonKey";
    v36[0] = &unk_1F5E5E790;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    [v7 postEvent:@"Stop" withContext:0 userInfo:v24];
  }

LABEL_17:

LABEL_18:

  return v10;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_356(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5;
  v18[3] = &unk_1E872D9B8;
  objc_copyWeak(&v21, (a1 + 32));
  v13 = v12;
  v19 = v13;
  v14 = v9;
  v20 = v14;
  [v14 executeBlockAfterCurrentStateTransition:v18];
  v15 = [v14 currentState];
  if ([v15 isEqualToString:@"Waiting to stop after showing image"])
  {
    v16 = [v14 currentState];
  }

  else
  {
    v16 = @"Loading image";
  }

  objc_destroyWeak(&v21);

  return v16;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [WeakRetained currentMediaInfo];
    v5 = [v4 shouldDelayLoadingImage];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [WeakRetained currentMediaInfo];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6;
  aBlock[3] = &unk_1E87378A0;
  objc_copyWeak(&v18, a1 + 6);
  v8 = v7;
  v13 = v8;
  v14 = a1[4];
  v9 = v6;
  v15 = v9;
  v19 = v5;
  v16 = a1[5];
  v17 = WeakRetained;
  v10 = _Block_copy(aBlock);
  v11 = [WeakRetained imageDelayTimer];
  [v11 invalidate];

  [WeakRetained setImageDelayTimer:0];
  [WeakRetained _loadImage:v10];

  objc_destroyWeak(&v18);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6(uint64_t a1, void *a2, int a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = [WeakRetained _currentMediaInfoImagesMatchesNewMediaInfoImage:*(a1 + 32)];
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
  }

  v10 = v9;
  [v9 setObject:v5 forKeyedSubscript:@"ImageKey"];

  v11 = [WeakRetained proxyImageView];
  v12 = [v11 image];

  if ((a3 & v7) == 1)
  {
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v15 = v14;

    if (*(a1 + 80) == 1 && v12 && (v16 = 5.0 - v15, v16 > 0.0))
    {
      v17 = MEMORY[0x1E695DFF0];
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7;
      v28 = &unk_1E8737878;
      v29 = *(a1 + 56);
      v30 = v10;
      v18 = [v17 scheduledTimerWithTimeInterval:0 repeats:&v25 block:v16];
      v19 = [WeakRetained imageDelayTimer];
      [v19 invalidate];

      [WeakRetained setImageDelayTimer:0];
      [WeakRetained setImageDelayTimer:v18];
    }

    else
    {
      [*(a1 + 56) postEvent:@"Show image" withContext:0 userInfo:v10];
    }
  }

  else
  {
    v20 = [*(a1 + 32) imageProxies];

    if (!v20)
    {
      v21 = [*(a1 + 32) tvpPlaylist];
      if (v21)
      {
        v22 = VUIDefaultLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 64);
          v24 = [v23 name];
          *buf = 134218242;
          v32 = v23;
          v33 = 2112;
          v34 = v24;
          _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) there're no imageProxies but have playlist; loading it.", buf, 0x16u);
        }

        [*(a1 + 56) postEvent:@"Show image" withContext:0 userInfo:v10];
      }
    }
  }
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_357(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_358;
  aBlock[3] = &unk_1E87378C8;
  objc_copyWeak(&v18, (a1 + 32));
  v14 = _Block_copy(aBlock);
  [WeakRetained _loadImage:v14];
  v15 = [v9 currentState];

  objc_destroyWeak(&v18);

  return v15;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_358(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v4 = [WeakRetained proxyImageView];
    v5 = [v6 uiImage];
    [v4 setImage:v5];
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_359(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v25 = a2;
  v24 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKeyedSubscript:@"AnimatedKey"];
  if (v11)
  {
    v12 = [v10 objectForKeyedSubscript:@"AnimatedKey"];
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 1;
  }

  v14 = [v10 objectForKeyedSubscript:@"ImageKey"];
  v15 = [v10 objectForKeyedSubscript:@"DirectionKey"];
  if (v15)
  {
    v16 = [v10 objectForKeyedSubscript:@"DirectionKey"];
    v17 = [v16 integerValue];
  }

  else
  {
    v17 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setState:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_360;
  aBlock[3] = &unk_1E872DE00;
  objc_copyWeak(v33, (a1 + 40));
  aBlock[4] = WeakRetained;
  v32 = *(a1 + 32);
  v19 = _Block_copy(aBlock);
  v20 = v19;
  if (v14)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_362;
    v26[3] = &unk_1E87378F0;
    objc_copyWeak(v29, (a1 + 40));
    v21 = v14;
    v30 = v13;
    v27 = v21;
    v29[1] = v17;
    v28 = v20;
    v22 = v25;
    [v25 executeBlockAfterCurrentStateTransition:v26];

    objc_destroyWeak(v29);
  }

  else
  {
    (*(v19 + 2))(v19);
    v22 = v25;
  }

  objc_destroyWeak(v33);
  return @"Showing image";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_360(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_361;
  block[3] = &unk_1E872DF40;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  block[4] = WeakRetained;
  block[5] = v3;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_361(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentMediaInfo];
  v3 = [v2 tvpPlaylist];
  if (v3)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = [v5 name];
      v7 = 134218242;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) we have a pending playlist, starting loading timer.", &v7, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_362(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_363;
  v6[3] = &unk_1E872E828;
  objc_copyWeak(&v8, (a1 + 48));
  v7 = *(a1 + 40);
  [WeakRetained _transitionToNewImage:v3 animated:v4 direction:v5 completion:v6];

  objc_destroyWeak(&v8);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_363(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v2 = [WeakRetained alphaImageProxy];
  if (v2)
  {
    v3 = v2;
    v4 = [WeakRetained alphaProxyImageView];
    v5 = [v4 image];

    if (v5)
    {
      [WeakRetained showAlphaImage:1 animated:0];
    }
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_364(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  v16 = [v12 objectForKeyedSubscript:@"ImageKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = WeakRetained;
  if (v16)
  {
    v19 = [WeakRetained proxyImageView];
    v20 = [v16 uiImage];
    [v19 setImage:v20];
  }

  [v18 setState:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_365;
  v22[3] = &unk_1E872EDE0;
  objc_copyWeak(&v23, (a1 + 32));
  v24 = v15;
  [v9 executeBlockAfterCurrentStateTransition:v22];
  objc_destroyWeak(&v23);

  return @"Showing image";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_365(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _swapActiveMedia:1 animated:*(a1 + 40) completion:0];
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_366(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  v16 = [v12 objectForKeyedSubscript:@"ImageKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = WeakRetained;
  if (v16)
  {
    v19 = [WeakRetained proxyImageView];
    v20 = [v16 uiImage];
    [v19 setImage:v20];
  }

  [v18 setState:1];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_367;
  v27 = &unk_1E87301C0;
  v21 = v9;
  v28 = v21;
  objc_copyWeak(&v29, (a1 + 32));
  [v18 _swapActiveMedia:1 animated:v15 completion:&v24];
  v22 = [v21 currentState];
  objc_destroyWeak(&v29);

  return v22;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_367(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_368;
  v2[3] = &unk_1E872E4B8;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 executeBlockAfterCurrentStateTransition:v2];
  objc_destroyWeak(&v3);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_368(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  [v1 stop];
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"ImageKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (v8)
  {
    v11 = [WeakRetained proxyImageView];
    v12 = [v8 uiImage];
    [v11 setImage:v12];

    v13 = [v10 alphaImageProxy];
    if (v13)
    {
      v14 = v13;
      v15 = [v10 alphaProxyImageView];
      v16 = [v15 image];

      if (v16)
      {
        [v10 showAlphaImage:1 animated:1];
      }
    }
  }

  v17 = [v7 currentState];

  return v17;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v29 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = [WeakRetained prefetchPlayer];
  if (v13)
  {
    v28 = v9;
    v14 = v11;
    v15 = v10;
    v16 = [WeakRetained currentMediaInfo];
    v17 = [v16 tvpPlaylist];
    v18 = [WeakRetained prefetchPlayer];
    v19 = [v18 playlist];
    if ([WeakRetained _playlist:v17 contentMatchesPlaylist:v19])
    {
      v20 = [WeakRetained prefetchesVideoFrame];
    }

    else
    {
      v20 = 0;
    }

    v10 = v15;
    v11 = v14;
    v9 = v28;
  }

  else
  {
    v20 = 0;
  }

  v21 = [WeakRetained prefetchPlayer];
  v22 = [v21 state];
  v23 = [MEMORY[0x1E69D5A40] paused];
  if (v22 == v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = [WeakRetained isVideoFrameFallbackEnabled];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_10;
  v30[3] = &unk_1E8737918;
  objc_copyWeak(&v32, (a1 + 40));
  v33 = v20;
  v30[4] = WeakRetained;
  v31 = *(a1 + 32);
  v34 = v24;
  [v9 executeBlockAfterCurrentStateTransition:v30];
  if ((v20 & (v24 ^ 1)) != 0)
  {
    v25 = @"Loading playback";
  }

  else
  {
    v25 = @"Waiting for player to start loading";
  }

  v26 = v25;

  objc_destroyWeak(&v32);
  return v25;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_10(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    v4 = [WeakRetained prefetchPlayer];
    [v4 removeObserver:v3 forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_1];

    v5 = [v3 prefetchPlayer];
    v6 = [v3 prefetchPlayerViewController];
    [v3 setAvPlayerViewController:v6];
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v8 name];
      *buf = 134218498;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) loading playback with prefetch player %@", buf, 0x20u);
    }
  }

  else
  {
    v10 = [WeakRetained mediaInfoFetchController];
    v5 = [v10 loadPlayerAtIndex:{objc_msgSend(v3, "mediaInfoIndex")}];

    v11 = [v3 playbackInitiatorForRTCReporting];
    [v5 setReportingValueWithString:v11 forKey:@"initiator"];

    v6 = VUIDefaultLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = [*(a1 + 32) name];
    *buf = 134218242;
    v22 = v7;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) loading playback with new player", buf, 0x16u);
  }

LABEL_7:
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 56) == 1)
  {
    if ((*(a1 + 57) & 1) == 0)
    {
      v12 = *(a1 + 32);
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_369;
      v18 = &unk_1E872D990;
      v13 = v5;
      v14 = *(a1 + 32);
      v19 = v13;
      v20 = v14;
      [v12 _swapActiveMedia:0 animated:0 completion:&v15];
    }

    [v3 setPrefetchPlayer:{0, v15, v16, v17, v18}];
    [v3 setPrefetchPlayerViewController:0];
  }
}

uint64_t __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_369(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) videoAudioRampDuration];

  return [v1 playWithVolumeRampDuration:?];
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_370(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _postWillStopPlaybackNotification];
  v5 = [WeakRetained prefetchPlayer];
  if (v5)
  {
    v6 = v5;
    v7 = [WeakRetained currentMediaInfo];
    v8 = [v7 tvpPlaylist];
    v9 = [WeakRetained prefetchPlayer];
    v10 = [v9 playlist];
    if ([WeakRetained _playlist:v8 contentMatchesPlaylist:v10])
    {
      v11 = [WeakRetained prefetchesVideoFrame];

      if (v11)
      {
        v12 = [WeakRetained prefetchPlayer];
        v13 = [WeakRetained prefetchPlayerViewController];
        [WeakRetained setAvPlayerViewController:v13];
        v14 = VUIDefaultLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [WeakRetained name];
          *buf = 134218498;
          v34 = WeakRetained;
          v35 = 2112;
          v36 = v15;
          v37 = 2112;
          v38 = v12;
          _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) loading playback with prefetch player %@", buf, 0x20u);
        }

        (*(*(a1 + 32) + 16))();
        v16 = [WeakRetained prefetchPlayer];
        v17 = [v16 state];
        v18 = [MEMORY[0x1E69D5A40] paused];
        v19 = v18;
        if (v17 == v18)
        {
        }

        else
        {
          v20 = [WeakRetained isVideoFrameFallbackEnabled];

          if (v20)
          {
            goto LABEL_18;
          }
        }

        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_371;
        v30 = &unk_1E872D990;
        v31 = v12;
        v32 = WeakRetained;
        [WeakRetained _swapActiveMedia:0 animated:0 completion:&v27];

LABEL_18:
        [WeakRetained setPrefetchPlayer:{0, v27, v28, v29, v30}];
        [WeakRetained setPrefetchPlayerViewController:0];

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v21 = [WeakRetained mediaInfoFetchController];
  v12 = [v21 loadPlayerAtIndex:{objc_msgSend(WeakRetained, "mediaInfoIndex")}];

  v22 = [WeakRetained playbackInitiatorForRTCReporting];
  [v12 setReportingValueWithString:v22 forKey:@"initiator"];

  v23 = VUIDefaultLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [WeakRetained name];
    *buf = 134218242;
    v34 = v24;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) loading playback with new player", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_13:
  v25 = [v3 currentState];

  return v25;
}

uint64_t __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_371(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) videoAudioRampDuration];

  return [v1 playWithVolumeRampDuration:?];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_372(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isBackgrounded])
  {
    [WeakRetained _postWillStartPlaybackNotification:0];
    if ((v11 & 1) == 0)
    {
      v13 = [WeakRetained player];
      [WeakRetained videoAudioRampDuration];
      [v13 playWithVolumeRampDuration:?];
    }

    v14 = v11 ^ 1;
    [WeakRetained setState:3];
  }

  else
  {
    v14 = 0;
  }

  [WeakRetained _disableSubtitleIfNeeded];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_373;
  v19[3] = &unk_1E8730818;
  v21 = v14;
  v19[4] = WeakRetained;
  v20 = v7;
  v15 = v7;
  [WeakRetained _swapActiveMedia:0 animated:v11 completion:v19];
  if ([WeakRetained isBackgrounded])
  {
    v16 = @"Showing playback in background";
  }

  else
  {
    v16 = @"Showing playback in foreground";
  }

  v17 = v16;

  return v16;
}

uint64_t __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_373(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0 && [*(a1 + 32) isBackgrounded])
  {
    v2 = [*(a1 + 32) player];
    [*(a1 + 32) videoAudioRampDuration];
    [v2 playWithVolumeRampDuration:?];
  }

  v3 = *(a1 + 40);

  return [v3 executeBlockAfterCurrentStateTransition:&__block_literal_global_376];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_377(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v25 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:@"AnimatedKey"];
  if (v12)
  {
    v13 = [v11 objectForKeyedSubscript:@"AnimatedKey"];
    v14 = [v13 BOOLValue] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = [WeakRetained player];
  v17 = [v16 state];
  v18 = [MEMORY[0x1E69D5A40] playing];
  v19 = v17 == v18;

  [WeakRetained _disableSubtitleIfNeeded];
  if (![WeakRetained isBackgrounded])
  {
    goto LABEL_10;
  }

  if (v17 == v18)
  {
    goto LABEL_8;
  }

  [WeakRetained _postWillStartPlaybackNotification:0];
  v19 = 0;
  if (v14)
  {
    v20 = [WeakRetained player];
    [WeakRetained videoAudioRampDuration];
    [v20 playWithVolumeRampDuration:?];

LABEL_8:
    v19 = 1;
  }

  [WeakRetained setState:3];
LABEL_10:
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_378;
  v26[3] = &unk_1E8736B08;
  v21 = v9;
  v27 = v21;
  objc_copyWeak(&v29, (a1 + 32));
  v30 = v19;
  v28 = WeakRetained;
  [WeakRetained _swapActiveMedia:0 animated:0 completion:v26];
  if ([WeakRetained isBackgrounded])
  {
    v22 = @"Showing playback in background";
  }

  else
  {
    v22 = @"Showing playback in foreground";
  }

  v23 = v22;
  objc_destroyWeak(&v29);

  return v22;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_378(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_379;
  v3[3] = &unk_1E872F708;
  objc_copyWeak(&v4, (a1 + 48));
  v5 = *(a1 + 56);
  v3[4] = *(a1 + 40);
  [v2 executeBlockAfterCurrentStateTransition:v3];
  objc_destroyWeak(&v4);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_379(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = WeakRetained;
    v4 = [WeakRetained isBackgrounded];
    v3 = v6;
    if (v4)
    {
      v5 = [v6 player];
      [*(a1 + 32) videoAudioRampDuration];
      [v5 playWithVolumeRampDuration:?];

      v3 = v6;
    }
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8_380(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = VUIDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [WeakRetained name];
    *buf = 134218754;
    v33 = WeakRetained;
    v34 = 2112;
    v35 = v16;
    v36 = 2112;
    v37 = v10;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) event %@, newPlaybackState: %@", buf, 0x2Au);
  }

  v17 = [v9 currentState];
  v18 = [MEMORY[0x1E69D5A40] loading];
  v19 = v13 == v18;

  if (v19)
  {

LABEL_11:
    v17 = @"Loading playback";
    goto LABEL_12;
  }

  v20 = [MEMORY[0x1E69D5A40] paused];
  v21 = v13 == v20;

  if (v21)
  {

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_381;
    v28[3] = &unk_1E872E4B8;
    objc_copyWeak(&v29, (a1 + 32));
    [v9 executeBlockAfterCurrentStateTransition:v28];
    objc_destroyWeak(&v29);
    goto LABEL_11;
  }

  v22 = [MEMORY[0x1E69D5A40] stopped];
  v23 = v13 == v22;

  if (v23)
  {
    v30 = @"AnimatedKey";
    v31 = MEMORY[0x1E695E118];
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v9 postEvent:@"Finished playback" withContext:0 userInfo:v27];
  }

  else
  {
    v24 = VUIDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [WeakRetained name];
      *buf = 134218498;
      v33 = WeakRetained;
      v34 = 2112;
      v35 = v25;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) StateWaitingForPlayerToStartLoading unhandled newPlaybackState: %@", buf, 0x20u);
    }
  }

LABEL_12:

  return v17;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_381(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showPlaybackIfPossible];
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_382(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v7 currentState];
  v11 = [MEMORY[0x1E69D5A40] paused];

  if (v8 == v11)
  {
    [WeakRetained _showPlaybackIfPossible];
  }

  else
  {
    v12 = [MEMORY[0x1E69D5A40] playing];

    if (v8 == v12)
    {
      [v7 postEvent:@"Show playback"];
      [WeakRetained _prefetchNextVideo];
    }

    else
    {
      v13 = [MEMORY[0x1E69D5A40] stopped];

      if (v8 == v13)
      {
        v23 = @"AnimatedKey";
        v24[0] = MEMORY[0x1E695E118];
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
        [v7 postEvent:@"Finished playback" withContext:0 userInfo:v14];
      }

      else
      {
        v14 = VUIDefaultLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [WeakRetained name];
          v17 = 134218498;
          v18 = WeakRetained;
          v19 = 2112;
          v20 = v15;
          v21 = 2112;
          v22 = v8;
          _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) StateLoadingPlayback unhandled newPlaybackState: %@", &v17, 0x20u);
        }
      }
    }
  }

  return v10;
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_383(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  v9 = [v8 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [v7 currentState];
  v12 = [MEMORY[0x1E69D5A40] stopped];

  if (v9 == v12)
  {
    v17 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
    if (v17)
    {
      v18 = [v8 objectForKeyedSubscript:@"AnimatedKey"];
      v19 = [v18 BOOLValue];
    }

    else
    {
      v19 = 1;
    }

    v23 = @"AnimatedKey";
    v20 = [MEMORY[0x1E696AD98] numberWithBool:v19];
    v24[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v7 postEvent:@"Finished playback" withContext:0 userInfo:v21];
  }

  else
  {
    v13 = [MEMORY[0x1E69D5A40] paused];

    if (v9 != v13)
    {
      v14 = [WeakRetained isBackgrounded];
      v15 = @"Showing playback in foreground";
      if (v14)
      {
        v15 = @"Showing playback in background";
      }

      v16 = v15;

      v11 = v16;
    }
  }

  return v11;
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v7 currentState];
  v11 = [MEMORY[0x1E69D5A40] stopped];

  if (v8 == v11)
  {
    [WeakRetained setPendingAnimated:0];
    v18 = @"AnimatedKey";
    v19[0] = MEMORY[0x1E695E110];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v7 postEvent:@"Finished playback" withContext:0 userInfo:v16];
  }

  else
  {
    v12 = [MEMORY[0x1E69D5A40] paused];

    if (v8 != v12)
    {
      v13 = [WeakRetained isBackgrounded];
      v14 = @"Showing playback in foreground";
      if (v13)
      {
        v14 = @"Showing playback in background";
      }

      v15 = v14;

      v10 = v15;
    }
  }

  return v10;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_385(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_386;
  v16[3] = &unk_1E872D9B8;
  objc_copyWeak(&v19, (a1 + 32));
  v13 = v12;
  v17 = v13;
  v14 = v9;
  v18 = v14;
  [v14 executeBlockAfterCurrentStateTransition:v16];

  objc_destroyWeak(&v19);
  return @"Finished playback";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_386(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained pendingMediaInfoDirection];
  v3 = [*(a1 + 32) mutableCopy];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
  [v3 setObject:v4 forKey:@"DirectionKey"];

  v5 = [WeakRetained pendingAnimated];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"AnimatedKey"];
  }

  if (([WeakRetained prefetchesVideoFrame] & 1) == 0)
  {
    [WeakRetained _postDidStopPlaybackNotification];
    [WeakRetained _cleanUpEverythingPlaybackRelated];
  }

  if ([WeakRetained popWhenPlayerStops])
  {
    v6 = [WeakRetained vuiNavigationController];
    v7 = [v6 topViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [WeakRetained vuiNavigationController];
      v9 = [v8 popViewControllerAnimated:1];
    }

    else
    {
      v13 = [WeakRetained pendingMediaInfo];

      if (v13)
      {
        [WeakRetained setPendingMediaInfo:0];
        [WeakRetained setPendingMediaInfoDirection:0];
        [WeakRetained setPendingAnimated:0];
        v14 = *(a1 + 40);
        v15 = @"Set media info";
      }

      else
      {
        v14 = *(a1 + 40);
        v15 = @"Show image";
      }

      [v14 postEvent:v15 withContext:0 userInfo:v3];
    }
  }

  else
  {
    v10 = [WeakRetained pendingMediaInfo];

    if (v10)
    {
      [WeakRetained setPendingMediaInfo:0];
      [WeakRetained setPendingMediaInfoDirection:0];
      [WeakRetained setPendingAnimated:0];
      v11 = *(a1 + 40);
      v12 = @"Set media info";
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = @"Show image";
    }

    [v11 postEvent:v12 withContext:0 userInfo:v3];
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_388(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setState:1];
  [WeakRetained _cleanUpEverythingPlaybackRelated];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_389;
  v23[3] = &unk_1E872D990;
  v14 = v9;
  v24 = v14;
  v15 = v12;
  v25 = v15;
  [v14 executeBlockAfterCurrentStateTransition:v23];
  if ([WeakRetained showAlertOnPlaybackFail])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 objectForKey:*MEMORY[0x1E69D5F30]];
      v17 = v11;
      v18 = +[VUIPlaybackErrorMessage sharedInstance];
      v19 = [v17 currentMediaItem];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_392;
      v21[3] = &unk_1E8737968;
      objc_copyWeak(&v22, (a1 + 32));
      [v18 getLocalizedErrorMessageFor:v19 withPlaybackMode:@"Monoscopic" withError:v16 completion:v21];

      objc_destroyWeak(&v22);
    }
  }

  return @"Finished playback";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_392(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8_393;
  block[3] = &unk_1E8730F50;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  objc_copyWeak(&v12, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v12);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_8_393(uint64_t a1)
{
  v2 = [VUIAlertController vui_alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v3 = +[VUILocalizationManager sharedInstance];
  v4 = [v3 localizedStringForKey:@"OK"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_9_400;
  v11 = &unk_1E8737940;
  v5 = v2;
  v12 = v5;
  objc_copyWeak(&v13, (a1 + 48));
  v6 = [VUIAlertAction vui_actionWithTitle:v4 style:0 handler:&v8];
  [v5 vui_addAction:{v6, v8, v9, v10, v11}];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v5 vui_presentAlertFromPresentingController:WeakRetained animated:1 completion:0];

  objc_destroyWeak(&v13);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_9_400(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_10_401;
  v5[3] = &unk_1E872E4B8;
  objc_copyWeak(&v6, (a1 + 40));
  [v4 vui_dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_10_401(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"VUIBackgroundMediaControllerDidDismissPlaybackErrorAlert" object:WeakRetained];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained currentMediaInfo];
  v6 = [v5 tvpPlaylist];

  if (v6)
  {
    [v3 postEvent:@"Load playback"];
    v7 = [v3 currentState];
  }

  else
  {
    v7 = @"Showing playback in foreground";
  }

  return v7;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  v16 = [v12 objectForKeyedSubscript:@"ShowsPlaybackControlsKey"];
  if (v16)
  {
    v17 = [v12 objectForKeyedSubscript:@"ShowsPlaybackControlsKey"];
    v18 = [v17 BOOLValue];
  }

  else
  {
    v18 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v20 = [WeakRetained player];
  [v20 setPreventsSleepDuringVideoPlayback:1];

  [WeakRetained setShowsVideoControls:v18];
  [WeakRetained _updateCurrentPlaybackViewFrameForPlaybackInBackground:0 animated:v15];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_13;
  v23[3] = &unk_1E872F038;
  objc_copyWeak(&v25, (a1 + 32));
  v21 = v12;
  v24 = v21;
  [v9 executeBlockAfterCurrentStateTransition:v23];

  objc_destroyWeak(&v25);
  return @"Showing playback in foreground";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_13(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePlayerMuteStateForBackgroundPlaybackWithReason:@"VUIBackgroundMediaControllerPlaybackMuteReasonForegrounded"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"IsFullScreenPlayerKey"];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"IsFullScreenPlayerKey"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained name];
    *buf = 134218498;
    v24 = WeakRetained;
    v25 = 2112;
    v26 = v7;
    v27 = 1024;
    v28 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) handle showPlaybackInForeground: isFullScreenPlayer = %d", buf, 0x1Cu);
  }

  if (v5)
  {
    v8 = [WeakRetained avPlayerViewController];
    v9 = [v8 view];
    [v9 layoutIfNeeded];

    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [WeakRetained name];
      *buf = 134218242;
      v24 = WeakRetained;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) handle showPlaybackInForeground: enterFullScreenWithCompletion", buf, 0x16u);
    }

    v12 = [WeakRetained avPlayerViewController];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_404;
    v18 = &unk_1E87301C0;
    v19 = WeakRetained;
    objc_copyWeak(&v20, (a1 + 40));
    [v12 enterFullScreenWithCompletion:&v15];

    objc_destroyWeak(&v20);
  }

  v21 = @"VUIBackgroundMediaControllerIsForegroundedKey";
  v22 = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:{1, v15, v16, v17, v18, v19}];
  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 postNotificationName:@"VUIBackgroundMediaControllerForegroundStateDidChangeNotification" object:WeakRetained userInfo:v13];
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_404(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 name];
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playback did enterFullScreen", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDidAVPlayerControllerEnterFullscreen:1];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_405(uint64_t a1, void *a2)
{
  v3 = [a2 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained player];
  if (v5)
  {
    v6 = v5;
    v7 = [WeakRetained avPlayerViewController];

    if (v7)
    {

      v3 = @"Showing playback in background";
    }
  }

  return v3;
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_406(uint64_t a1, void *a2)
{
  v3 = [a2 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowsVideoControls:0];

  return v3;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_407(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
  if (v13)
  {
    v14 = [v12 objectForKeyedSubscript:@"AnimatedKey"];
    v15 = [v14 BOOLValue];
  }

  else
  {
    v15 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = [WeakRetained player];
  [v17 setPreventsSleepDuringVideoPlayback:0];

  [WeakRetained setShowsVideoControls:0];
  [WeakRetained _updateCurrentPlaybackViewFrameForPlaybackInBackground:1 animated:v15];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_408;
  v19[3] = &unk_1E872E4B8;
  objc_copyWeak(&v20, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v19];
  objc_destroyWeak(&v20);

  return @"Showing playback in background";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_408(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlayerMuteStateForBackgroundPlaybackWithReason:@"VUIBackgroundMediaControllerPlaybackMuteReasonBackgrounded"];
  v4 = @"VUIBackgroundMediaControllerIsForegroundedKey";
  v5[0] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"VUIBackgroundMediaControllerForegroundStateDidChangeNotification" object:WeakRetained userInfo:v2];
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_409(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained player];
  v6 = [v5 state];
  v7 = [MEMORY[0x1E69D5A40] playing];

  if (v6 != v7)
  {
    [WeakRetained _postWillStartPlaybackNotification:0];
    v8 = [v3 currentState];
    v9 = v8;
    if (([(__CFString *)v8 isEqualToString:@"Showing playback in background"]& 1) == 0)
    {
      v9 = v8;
      if (([(__CFString *)v8 isEqualToString:@"Showing playback in foreground"]& 1) == 0)
      {
        if ([WeakRetained isBackgrounded])
        {
          v10 = @"Showing playback in background";
        }

        else
        {
          v10 = @"Showing playback in foreground";
        }

        v9 = v10;
      }
    }

    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [WeakRetained name];
      v16 = 134218754;
      v17 = WeakRetained;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) configure audioSession before playing video, current: %@, future: %@", &v16, 0x2Au);
    }

    [WeakRetained _configureAudioSessionForState:v9];
    v13 = [WeakRetained player];
    [WeakRetained videoAudioRampDuration];
    [v13 playWithVolumeRampDuration:?];

    if ([WeakRetained prefetchesVideoFrame])
    {
      [WeakRetained _updateVideoPlayerLegibleContentInsets:1];
    }
  }

  v14 = [v3 currentState];

  return v14;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_410(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_411;
  v14[3] = &unk_1E872E4B8;
  objc_copyWeak(&v15, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v14];
  objc_destroyWeak(&v15);

  return @"Showing playback in background";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_411(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  v2 = [v1 state];
  v3 = [MEMORY[0x1E69D5A40] playing];

  if (v2 != v3)
  {
    v4 = [WeakRetained player];
    [WeakRetained videoAudioRampDuration];
    [v4 playWithVolumeRampDuration:?];
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_412(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_413;
  v23 = &unk_1E872F038;
  objc_copyWeak(&v25, (a1 + 32));
  v14 = v9;
  v24 = v14;
  [v14 executeBlockAfterCurrentStateTransition:&v20];
  if ([WeakRetained prefetchesVideoFrame])
  {
    v15 = VUIDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [WeakRetained name];
      v17 = [v14 currentState];
      *buf = 134218498;
      v27 = WeakRetained;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) remaining at %@ for paused state", buf, 0x20u);
    }

    v18 = [v14 currentState];
  }

  else
  {
    v18 = @"waiting for timeout while paused";
  }

  objc_destroyWeak(&v25);

  return v18;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_413(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained player];
  v4 = [v3 state];
  v5 = [MEMORY[0x1E69D5A40] paused];

  if (v4 != v5)
  {
    v6 = [WeakRetained player];
    [v6 pause];

    if (([WeakRetained prefetchesVideoFrame] & 1) == 0)
    {
      v7 = [WeakRetained pauseStateTimeoutTimer];
      [v7 invalidate];

      [WeakRetained setPauseStateTimeoutTimer:0];
      v8 = MEMORY[0x1E695DFF0];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_414;
      v10[3] = &unk_1E8737828;
      objc_copyWeak(&v12, (a1 + 40));
      v10[4] = WeakRetained;
      v11 = *(a1 + 32);
      v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:v10 block:480.0];
      [WeakRetained setPauseStateTimeoutTimer:v9];

      objc_destroyWeak(&v12);
    }
  }
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_414(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [v4 name];
    v6 = [*(a1 + 40) currentState];
    v9 = 134218498;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) timedout while waiting in pause state, current state %@", &v9, 0x20u);
  }

  v7 = [*(a1 + 40) currentState];
  v8 = [v7 isEqualToString:@"waiting for timeout while paused"];

  if (v8)
  {
    [WeakRetained setAutomaticPlaybackStop:1];
    [WeakRetained setVpafPlaybackStopReason:4];
    [*(a1 + 40) postEvent:@"Stop"];
  }
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_415(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained player];
  [v10 pause];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_416;
  v14[3] = &unk_1E872D990;
  v15 = v7;
  v16 = v8;
  v11 = v8;
  v12 = v7;
  [v12 executeBlockAfterCurrentStateTransition:v14];

  return @"Waiting to stop after showing image";
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_417(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_420;
  v11[3] = &unk_1E872D990;
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [v9 executeBlockAfterCurrentStateTransition:v11];

  return @"Waiting to stop after showing image";
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_421(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v7 currentState];
  if (v8 && ([v8 objectForKeyedSubscript:@"PlaybackStopReasonKey"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [v8 objectForKeyedSubscript:@"PlaybackStopReasonKey"];
    v13 = [v12 unsignedIntValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = [WeakRetained playbackStopDelayReasons];
  if ((v14 & v13) <= 4 && ((1 << (v14 & v13)) & 0x16) != 0)
  {

    [WeakRetained playbackStopDelay];
    [WeakRetained performSelector:sel_stop withObject:0 afterDelay:?];
    v10 = @"waiting to stop playback";
    goto LABEL_17;
  }

  v16 = [WeakRetained player];

  if (!v16)
  {
    v25 = @"AnimatedKey";
    v26 = MEMORY[0x1E695E118];
    v21 = MEMORY[0x1E695DF20];
    v22 = &v26;
    v23 = &v25;
LABEL_15:
    v20 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
    [v7 postEvent:@"Finished playback" withContext:0 userInfo:v20];
    goto LABEL_16;
  }

  v17 = [WeakRetained player];
  v18 = [v17 state];
  v19 = [MEMORY[0x1E69D5A40] stopped];

  if (v18 == v19)
  {
    v27 = @"AnimatedKey";
    v28[0] = MEMORY[0x1E695E118];
    v21 = MEMORY[0x1E695DF20];
    v22 = v28;
    v23 = &v27;
    goto LABEL_15;
  }

  [WeakRetained setAutomaticPlaybackStop:v13 == 0];
  [WeakRetained _postWillStopPlaybackNotification];
  v20 = [WeakRetained player];
  [v20 stop];
LABEL_16:

LABEL_17:

  return v10;
}

id __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_422(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [WeakRetained currentMediaInfo];
    v7 = [v6 tvpPlaylist];

    if (v7)
    {
      if ([WeakRetained isBackgrounded])
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_423;
        v11[3] = &unk_1E872D768;
        v11[4] = WeakRetained;
        [v3 executeBlockAfterCurrentStateTransition:v11];
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained name];
    *buf = 134218242;
    v13 = WeakRetained;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) No playlist has been set; ignoring replay event", buf, 0x16u);
  }

LABEL_9:

  v9 = [v3 currentState];

  return v9;
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_7_423(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 postEvent:@"Load playback"];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_424(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 currentState];
  v6 = [WeakRetained currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [WeakRetained currentMediaInfo];
    v8 = [v7 tvpPlaylist];

    if (v8)
    {
      if ([WeakRetained isBackgrounded])
      {
        (*(*(a1 + 32) + 16))();
      }

      else
      {

        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_425;
        v11[3] = &unk_1E872D7E0;
        v12 = *(a1 + 40);
        [v3 executeBlockAfterCurrentStateTransition:v11];

        v5 = @"Waiting for player to start loading";
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [WeakRetained name];
    *buf = 134218242;
    v14 = WeakRetained;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) No playlist has been set; ignoring replay event", buf, 0x16u);
  }

LABEL_9:

  return v5;
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_426(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [WeakRetained currentMediaInfo];
    v5 = [v4 tvpPlaylist];

    if (v5)
    {
      if ([WeakRetained isBackgrounded])
      {
        (*(*(a1 + 32) + 16))();
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained name];
    v9 = 134218242;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) No playlist has been set; ignoring replay event", &v9, 0x16u);
  }

  v5 = 0;
LABEL_9:

  return @"Showing image";
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_427(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 objectForKey:@"AVPlayerViewControllerKey"];
  [WeakRetained setAvPlayerViewController:v10];
  v11 = [v7 objectForKeyedSubscript:@"PlayerKey"];

  [WeakRetained setPlayer:v11];
  v12 = [WeakRetained player];
  [v12 setPreventsSleepDuringVideoPlayback:0];

  [WeakRetained setShowsVideoControls:0];
  [WeakRetained transitionToForeground:0 animated:0];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_428;
  v18 = &unk_1E872DC10;
  v13 = *(a1 + 32);
  v19 = WeakRetained;
  v20 = v13;
  [v8 executeBlockAfterCurrentStateTransition:&v15];

  if ([WeakRetained prefetchesVideoFrame])
  {
    [WeakRetained _prefetchNextVideo];
    [WeakRetained _populatePlayerWithMediaItemsIfNeeded:v11];
  }

  return @"Showing playback in background";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_2_428(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) player];
  (*(v1 + 16))(v1, v2, 1);
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_3_429(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cleanUpEverythingPlaybackRelated];
  v10 = [v7 objectForKey:@"AVPlayerViewControllerKey"];
  [WeakRetained setAvPlayerViewController:v10];
  v11 = [v7 objectForKeyedSubscript:@"PlayerKey"];

  v12 = [WeakRetained player];
  [v12 setPreventsSleepDuringVideoPlayback:0];

  [WeakRetained setShowsVideoControls:0];
  [WeakRetained transitionToForeground:0 animated:0];
  (*(*(a1 + 32) + 16))();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_430;
  v15[3] = &unk_1E872D990;
  v15[4] = WeakRetained;
  v16 = v11;
  v13 = v11;
  [v8 executeBlockAfterCurrentStateTransition:v15];

  return @"Showing playback in background";
}

uint64_t __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_4_430(uint64_t a1)
{
  [*(a1 + 32) _prefetchNextVideo];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _populatePlayerWithMediaItemsIfNeeded:v3];
}

__CFString *__61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_5_431(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_432;
  v14[3] = &unk_1E872E4B8;
  objc_copyWeak(&v15, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v14];
  objc_destroyWeak(&v15);

  return @"Showing playback in foreground";
}

void __61__VUIBackgroundMediaController__registerStateMachineHandlers__block_invoke_6_432(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained shouldStopPlayerWhenExitingFullScreen])
  {
    v3 = [WeakRetained player];
    v4 = [v3 state];

    v5 = [MEMORY[0x1E69D5A40] playing];
    v6 = v5;
    if (v4 == v5)
    {
    }

    else
    {
      v7 = [MEMORY[0x1E69D5A40] loading];

      if (v4 != v7)
      {
        [WeakRetained stop];
        v2 = 1;
LABEL_8:

        goto LABEL_9;
      }
    }

    [WeakRetained transitionToForeground:0 animated:1];
    v2 = 0;
    goto LABEL_8;
  }

  [WeakRetained stop];
  v2 = 1;
LABEL_9:
  [WeakRetained setDidAVPlayerControllerEnterFullscreen:0];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = @"VUIBackgroundMediaControllerInfoHasVideoStopped";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v8 postNotificationName:@"VUIBackgroundMediaControllerDidEndFullscreenPresentationNotification" object:WeakRetained userInfo:v10];
}

- (void)setState:(unint64_t)a3
{
  [(VUIBackgroundMediaController *)self willChangeValueForKey:@"state"];
  self->_state = a3;
  [(VUIBackgroundMediaController *)self didChangeValueForKey:@"state"];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"VUIBackgroundMediaControllerDidChangeStateNotification" object:self];
}

- (BOOL)hasBackgroundVideo
{
  v3 = [(VUIBackgroundMediaController *)self currentMediaInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(VUIBackgroundMediaController *)self currentMediaInfo];
    v5 = [v4 tvpPlaylist];

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(VUIBackgroundMediaController *)self name];
    *buf = 134218242;
    v15 = self;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) playerViewController willEndFullScreenPresentationWithAnimationCoordinator", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__VUIBackgroundMediaController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2;
  v11[3] = &unk_1E8736308;
  objc_copyWeak(&v13, buf);
  v10 = v6;
  v12 = v10;
  [v7 animateAlongsideTransition:&__block_literal_global_438 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __107__VUIBackgroundMediaController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained stateMachine];
    [v3 postEvent:@"AvPlayerViewController did exit fullscreen presentation" withContext:*(a1 + 32)];
  }
}

- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"VUIBackgroundMediaControllerControlVisibilityKey";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"VUIBackgroundMediaControllerControlVisibilityChangedNotification" object:self userInfo:v7];
}

- (void)playerViewControllerDidStartPictureInPicture:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VUIBackgroundMediaController *)self name];
    v16 = 134218242;
    v17 = self;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) did start picture in picture", &v16, 0x16u);
  }

  v7 = [v4 presentedViewController];

  if (v7)
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(VUIBackgroundMediaController *)self player];
  [v8 vui_setObjectIfNotNil:v9 forKey:@"VUIBackgroundMediaControllerPlayerKey"];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = [v8 copy];
  [v10 postNotificationName:@"VUIBackgroundMediaControllerDidEnterPIPNotification" object:self userInfo:v11];

  if ([(VUIBackgroundMediaController *)self prefetchesVideoFrame])
  {
    v12 = [(VUIBackgroundMediaController *)self player];
    v13 = [v12 playlist];

    if (v13)
    {
      v14 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
      v15 = [v12 playlist];
      [v14 populatePlaylistWithMediaItems:v15 atIndex:{-[VUIBackgroundMediaController mediaInfoIndex](self, "mediaInfoIndex")}];

      [v12 setMediaItemEndAction:0];
      [(VUIBackgroundMediaController *)self _cleanupPrefetchPlayback];
    }
  }
}

- (void)playerViewController:(id)a3 failedToStartPictureInPictureWithError:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VUIBackgroundMediaController *)self name];
    v9 = 134218498;
    v10 = self;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) failed to start picture in picture with error %@", &v9, 0x20u);
  }

  v8 = +[VUIPlaybackManager sharedInstance];
  [v8 setBackgroundMediaControllerForPIP:0];
}

- (void)playerViewControllerDidStopPictureInPicture:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(VUIBackgroundMediaController *)self name];
    v6 = [(VUIBackgroundMediaController *)self player];
    v7 = [v6 state];
    v18 = 134218498;
    v19 = self;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) did stop picture in picture %@", &v18, 0x20u);
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(VUIBackgroundMediaController *)self player];
  [v8 vui_setObjectIfNotNil:v9 forKey:@"VUIBackgroundMediaControllerPlayerKey"];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = [v8 copy];
  [v10 postNotificationName:@"VUIBackgroundMediaControllerDidStopPIPNotification" object:self userInfo:v11];

  if ([(VUIBackgroundMediaController *)self prefetchesVideoFrame])
  {
    v12 = [(VUIBackgroundMediaController *)self player];
    v13 = [v12 playlist];

    if (v13)
    {
      v14 = [v12 playlist];
      v15 = [v14 activeListIndex];

      v16 = [(VUIBackgroundMediaController *)self mediaInfoFetchController];
      v17 = [v12 playlist];
      [v16 removePopulatedMediaItems:v17 atIndex:v15];

      [v12 setMediaItemEndAction:1];
    }
  }

  [(VUIBackgroundMediaController *)self performSelector:sel__cleanupPIPPlayback withObject:0 afterDelay:1.0];
}

- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VUIBackgroundMediaController *)self name];
    v8 = [(VUIBackgroundMediaController *)self player];
    v9 = [v8 state];
    *buf = 134218498;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIBackgroundMediaController::(%p: %@) restore picture in picture %@", buf, 0x20u);
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__cleanupPIPPlayback object:0];
  v10 = [(VUIBackgroundMediaController *)self player];
  v11 = [v10 state];
  v12 = [MEMORY[0x1E69D5A40] stopped];

  if (v11 == v12)
  {
    [(VUIBackgroundMediaController *)self _cleanupPIPPlayback];
    v5[2](v5, 0);
  }

  else
  {
    v13 = +[VUIPlaybackManager sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __118__VUIBackgroundMediaController_playerViewController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E872D7E0;
    v15 = v5;
    [v13 restoreBackgroundMediaControllerFromPIP:v14];
  }
}

- (void)_cleanupPIPPlayback
{
  v2 = +[VUIPlaybackManager sharedInstance];
  [v2 setBackgroundMediaControllerForPIP:0];
}

- (UIEdgeInsets)legibleContentInsets
{
  top = self->_legibleContentInsets.top;
  left = self->_legibleContentInsets.left;
  bottom = self->_legibleContentInsets.bottom;
  right = self->_legibleContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSTimer)playbackLoadingTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackLoadingTimer);

  return WeakRetained;
}

- (NSTimer)playbackDelayTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackDelayTimer);

  return WeakRetained;
}

- (NSTimer)imageDelayTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_imageDelayTimer);

  return WeakRetained;
}

- (NSTimer)pauseStateTimeoutTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_pauseStateTimeoutTimer);

  return WeakRetained;
}

void __43__VUIBackgroundMediaController__loadImage___block_invoke_3_cold_1(void *a1)
{
  v6 = [a1 name];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)_recordBgAutoPlayMediaEventForPlaybackState:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end
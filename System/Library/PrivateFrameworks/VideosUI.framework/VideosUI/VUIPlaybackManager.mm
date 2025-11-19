@interface VUIPlaybackManager
+ (BOOL)_isFullScreenPlaybackState:(id)a3;
+ (BOOL)_isShowingExtrasState:(id)a3;
+ (BOOL)_isTipKitEnabled;
+ (id)sharedInstance;
- (BOOL)_allowedToAutoPlayForType:(unint64_t)a3;
- (BOOL)_audioContainsAirPlayRoute;
- (BOOL)_audioContainsHDMIRoute;
- (BOOL)_didWatchContentToEndForPlayer:(id)a3;
- (BOOL)_hidePresentingViewControllerDuringPlayback;
- (BOOL)_isAssistiveAccessEnabled;
- (BOOL)_multiviewContainsMediaInfo:(id)a3;
- (BOOL)_shouldShowPerformanceDebugger;
- (BOOL)_shouldShowTimedMetadataDebugger;
- (BOOL)allowedToAutoPlay;
- (BOOL)currentPlaylistAllowsCellular;
- (BOOL)isFullscreenPlaybackUIBeingShown;
- (BOOL)isMultiviewPlaybackUIBeingShown;
- (BOOL)isPIPing;
- (BOOL)isPIPingBackgroundPlayback;
- (BOOL)isPlaybackUIBeingShown;
- (BOOL)isPlaylistBeingPresented:(id)a3;
- (BOOL)isPlaylistBeingPresentedFullScreen:(id)a3;
- (BOOL)isPlaylistBeingPresentedInMultiview:(id)a3;
- (BOOL)isPostPlayActive;
- (BOOL)isShowingExtras;
- (BOOL)mediaSupportsStartOver;
- (CGRect)_calculatePostPlayPipRectForParent:(id)a3;
- (NSArray)multiviewIdentifiers;
- (TVPMediaItem)currentMediaItem;
- (VUIControllerPresenter)fullScreenViewControllerForPresentation;
- (VUIControllerPresenter)presentingViewController;
- (VUIPlaybackManager)init;
- (VUIPlayer)activePlayer;
- (VUIPlayer)backgroundMediaPlayer;
- (double)detailsViewHeightForMultiPlayerViewController:(id)a3;
- (id)_currentlyPlayingMultiviewInfo;
- (id)_deepLinkPlaybackURLForCurrentMediaItem;
- (id)_getLivePostPlayPrefetchPlayerIfApplicable:(id)a3;
- (id)_multiviewInfoForPlayer:(id)a3;
- (id)_multiviewInfoForPlayerViewController:(id)a3;
- (id)_multiviewInfoForPlaylist:(id)a3;
- (id)createContentSelectionViewController;
- (id)createPlayerViewController;
- (id)detailsViewControllerForMultiPlayerViewController:(id)a3;
- (id)extrasNavigationController;
- (id)playerViewController:(id)a3 displayNameForMediaSelectionOption:(id)a4;
- (id)playerViewController:(id)a3 targetViewForDismissalAnimationWithProposedTargetView:(id)a4;
- (int64_t)maxMultiviewPlayerCount;
- (int64_t)multiviewPlayerCount;
- (unint64_t)indexOfMediaItemInMultiviewWithIdentifier:(id)a3;
- (unint64_t)indexOfMediaItemInMultiviewWithPlayer:(id)a3;
- (void)_accountDidChange:(id)a3;
- (void)_addMultiviewButtonIfSupportedWithWindowSize:(CGSize)a3;
- (void)_addPerformanceDebuggerView;
- (void)_addPlayerToTimedMetadataManager:(id)a3;
- (void)_addProductPlacementFeatureFromMediaItem:(id)a3;
- (void)_addRadioBroadcastTipIfNeeded;
- (void)_addRollsInfoFeaturesFromMediaItem:(id)a3;
- (void)_addSkipIntroFeatureToMonitorIfNeeded:(BOOL)a3;
- (void)_addSkipTriggerFeaturesToMonitor:(id)a3;
- (void)_addTVRatingFeatureFromMediaItem:(id)a3 duration:(double)a4;
- (void)_addTappableViewToRemoveSkipButton;
- (void)_addTimedMetadataDebuggerView;
- (void)_addVideoDimmingViewForPostPlay;
- (void)_appControllerDidStart:(id)a3;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_audioSessionRouteDidChange:(id)a3;
- (void)_avPlayerViewControllerPresentationDidTimeout;
- (void)_clearActivityItemsConfiguration;
- (void)_configureStillWatchingFeatureMonitoringIfLivePlayback;
- (void)_currentMediaItemDidChange:(id)a3;
- (void)_currentMediaItemWillChange:(id)a3;
- (void)_didPlayToEnd:(id)a3;
- (void)_dismissPostPlayWithSwipe:(id)a3;
- (void)_donateLanguageCodeFromPlayer:(id)a3 useAudio:(BOOL)a4;
- (void)_donateUserActivityForMediaItem:(id)a3;
- (void)_downloadProductPlacementImageIfAvailable:(id)a3;
- (void)_downloadRatingImageIfAvailable:(id)a3;
- (void)_externalPlaybackTypeDidChange:(id)a3;
- (void)_groupActivityDidEnd:(id)a3;
- (void)_handleDismissSkipButtonGesture:(id)a3;
- (void)_handleLongLoadingTimeout:(id)a3;
- (void)_handlePausedTooLong:(id)a3;
- (void)_handleTapAwayFromPostPlayGesture:(id)a3;
- (void)_mainPlayerViewControllerRemoveAllCustomControlItems;
- (void)_mainPlayerViewControllerSetupControlItems;
- (void)_markMainPlayerMediaItemPlayingPictureInPictureMetadataAsActive:(BOOL)a3 forAVPlayerViewController:(id)a4;
- (void)_markMainPlayerMediaItemPostPlayActive:(BOOL)a3;
- (void)_markMediaItemToDeleteOnCompletionForMediaItem:(id)a3 deleteOnCompletion:(BOOL)a4;
- (void)_muteAllMultiviewPlayersExcept:(id)a3;
- (void)_networkReachbilityDidChange:(id)a3;
- (void)_notifyAVPlayerViewControllerDisplaySize;
- (void)_performEnterBackgroundOperations;
- (void)_performEnterForegroundOperations;
- (void)_playbackErrorDidOccur:(id)a3;
- (void)_playbackStateDidChange:(id)a3;
- (void)_playerRateDidChange:(id)a3;
- (void)_postPlayItemSelected:(id)a3;
- (void)_pushMoreInfoControllerIfNeeded;
- (void)_registerApplicationNotifications;
- (void)_registerAudioSessionNotifications;
- (void)_registerBroadcastEndHandler;
- (void)_registerStateMachineHandlers;
- (void)_removeAdvisoryViews;
- (void)_removeMoreInfoViewControllerIfNeeded;
- (void)_removeMultiviewButton;
- (void)_removePlayerFromTimedMetadataManager:(id)a3;
- (void)_removePrerollFadeIn;
- (void)_removeTappableViewForSkipButtonIfNeeded;
- (void)_removeVideoDimmingViewForPostPlay;
- (void)_resetAutoPlayBingeWatchingQualifications;
- (void)_selectedAudioOptionDidChangeForPlayer:(id)a3;
- (void)_setExtrasButtonVisible:(BOOL)a3;
- (void)_setupBootstrapPostPlayFeatureMonitorForMediaItem:(id)a3;
- (void)_setupFeaturesFromMainPlayersCurrentMediaItem;
- (void)_setupInfoTab;
- (void)_setupPerformanceDebugger:(id)a3;
- (void)_setupPlayerViewController:(id)a3;
- (void)_showOrUpdateAdvisoryViewsIfNeeded;
- (void)_showProductPlacement:(BOOL)a3 withImage:(id)a4 animated:(BOOL)a5;
- (void)_showShareMediaMenuForMediaItem:(id)a3;
- (void)_showSkipAndPromoView:(BOOL)a3 animated:(BOOL)a4;
- (void)_showStillWatchingAlertFeature:(id)a3;
- (void)_showTVRating:(BOOL)a3 withRatingImage:(id)a4 photoSensitivityImage:(id)a5 highMotionWarningImage:(id)a6 animated:(BOOL)a7;
- (void)_skipButtonTapped:(id)a3;
- (void)_startPlaybackFromBeginning;
- (void)_togglePlayerTabs;
- (void)_unmuteNextAvailableMultiviewPlayer;
- (void)_updateActivityItemsConfigurationWithSharedWatchId:(id)a3 sharedWatchUrl:(id)a4 previewMetadata:(id)a5 mediaItem:(id)a6;
- (void)_updateMultiviewButtonState;
- (void)_updateMultiviewReportingMetrics;
- (void)_updateRequiresLinearPlayback;
- (void)_updateTimeBoundFeature:(id)a3 animated:(BOOL)a4;
- (void)_updateTimeTriggeredFeature:(id)a3 animated:(BOOL)a4;
- (void)addPlaylistToMultiview:(id)a3 atIndex:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)addTipKitState:(unint64_t)a3;
- (void)autoPlayTimerDidCompleteForPostPlayView:(id)a3;
- (void)configureAudioSessionForBackgroundPlayback:(BOOL)a3 usingPlaybackCategory:(BOOL)a4 isMultiview:(BOOL)a5;
- (void)dismissPlaybackAnimated:(BOOL)a3 leaveGroupActivitySession:(BOOL)a4 completion:(id)a5;
- (void)dismissPostPlayAnimated:(BOOL)a3;
- (void)extrasBackButtonPressed;
- (void)extrasContext:(id)a3 extrasVisibilityNeedsUpdate:(BOOL)a4;
- (void)extrasContext:(id)a3 hadFatalError:(id)a4;
- (void)extrasContextDidLoadMainMenuItems:(id)a3;
- (void)extrasDoneButtonPressed;
- (void)extrasMenuItemSelected:(id)a3 atIndex:(unint64_t)a4;
- (void)extrasRequestsMediaPlayback:(id)a3 isBackground:(BOOL)a4;
- (void)featureMonitor:(id)a3 featureDidChangeState:(id)a4 animated:(BOOL)a5;
- (void)mediaInfoDidChangeTo:(id)a3 canPlay:(BOOL)a4 wasAutoPlayed:(BOOL)a5;
- (void)multiPlayerDetailsViewControllerDidDeselectLockupWithIdentifier:(id)a3 impressionsData:(id)a4 locationData:(id)a5;
- (void)multiPlayerDetailsViewControllerDidSelectLockupWithIdentifier:(id)a3 impressionsData:(id)a4 locationData:(id)a5;
- (void)multiPlayerViewController:(id)a3 detailsViewControllerDidAppear:(id)a4;
- (void)multiPlayerViewController:(id)a3 detailsViewControllerDidDisappear:(id)a4;
- (void)multiPlayerViewController:(id)a3 detailsViewControllerWillAppear:(id)a4;
- (void)multiPlayerViewController:(id)a3 detailsViewControllerWillDisappear:(id)a4;
- (void)multiPlayerViewController:(id)a3 didBeginDropWithMediaInfo:(id)a4 atIndex:(int64_t)a5;
- (void)multiPlayerViewController:(id)a3 didCrossSupportedScreenSizeBoundary:(BOOL)a4;
- (void)multiPlayerViewController:(id)a3 didDismissWithPlayerViewController:(id)a4 withReason:(unint64_t)a5;
- (void)multiPlayerViewController:(id)a3 didDropWithMediaInfo:(id)a4 overPlayerAtIndex:(int64_t)a5;
- (void)multiPlayerViewController:(id)a3 didEndDropWithMediaInfo:(id)a4;
- (void)multiPlayerViewController:(id)a3 didEnterFullscreenWithPlayerViewController:(id)a4;
- (void)multiPlayerViewController:(id)a3 didExitFullscreenWithPlayerViewController:(id)a4;
- (void)multiPlayerViewController:(id)a3 didPinchPlayerToDismiss:(id)a4;
- (void)multiPlayerViewController:(id)a3 didRemovePlayer:(id)a4 atIndex:(int64_t)a5;
- (void)multiPlayerViewController:(id)a3 didSelectPlayerViewController:(id)a4;
- (void)multiPlayerViewController:(id)a3 didSwapPlayerViewControllerAtIndex:(int64_t)a4 withPlayerAtIndex:(int64_t)a5;
- (void)multiPlayerViewController:(id)a3 playerViewController:(id)a4 didResizeToFrame:(CGRect)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playbackContainerViewControllerBackgroundPlaybackWillBegin:(id)a3;
- (void)playbackContainerViewControllerDidDisappear:(id)a3;
- (void)playbackContainerViewControllerDidFinishLoadingPostPlay:(id)a3;
- (void)playbackContainerViewControllerExitPictureInPicturePressed:(id)a3;
- (void)playbackContainerViewControllerWillTransitionToSize:(CGSize)a3;
- (void)playerViewController:(id)a3 contentViewWillTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5;
- (void)playerViewController:(id)a3 failedToStartPictureInPictureWithError:(id)a4;
- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)playerViewControllerDidStartPictureInPicture:(id)a3;
- (void)playerViewControllerDidStopPictureInPicture:(id)a3;
- (void)playerViewControllerWillStartPictureInPicture:(id)a3;
- (void)playerViewControllerWillStopPictureInPicture:(id)a3;
- (void)presentContainerViewController:(id)a3 withPlayer:(id)a4 andPlayerViewController:(id)a5 completion:(id)a6;
- (void)presentExtrasWithURL:(id)a3 storeID:(id)a4 actionParams:(id)a5 hlsURL:(id)a6 fromViewController:(id)a7 completion:(id)a8;
- (void)presentMultiviewWithPlaylists:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5;
- (void)presentPlaylist:(id)a3 fromViewController:(id)a4 dismissalOperation:(int64_t)a5 allowsCellular:(BOOL)a6 animated:(BOOL)a7 userInfo:(id)a8 completion:(id)a9;
- (void)presentViewControllerOnExtrasNav:(id)a3;
- (void)removeFromMultiviewWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)removePlaylistFromMultiview:(id)a3 animated:(BOOL)a4;
- (void)replacePlaylistInMultiviewAtIndex:(int64_t)a3 withPlaylist:(id)a4 animated:(BOOL)a5;
- (void)restoreBackgroundMediaControllerFromPIP:(id)a3;
- (void)setActivePlayer:(id)a3;
- (void)setAvPlayerViewController:(id)a3;
- (void)setBackgroundMediaControllerForPIP:(id)a3;
- (void)startPictureInPicture;
- (void)startPictureInPictureWithCompletion:(id)a3;
- (void)transferPlaybackToBackgroundMediaController:(id)a3;
- (void)upNextButtonTapped:(id)a3;
@end

@implementation VUIPlaybackManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[VUIPlaybackManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __36__VUIPlaybackManager_sharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIPlaybackManager");
  v1 = sLogObject_5;
  sLogObject_5 = v0;

  v2 = objc_alloc_init(VUIPlaybackManager);
  v3 = sharedInstance_instance;
  sharedInstance_instance = v2;
}

- (VUIPlaybackManager)init
{
  v33.receiver = self;
  v33.super_class = VUIPlaybackManager;
  v2 = [(VUIPlaybackManager *)&v33 init];
  if (v2)
  {
    v3 = dispatch_queue_create("Playback manager audio session serial queue", 0);
    audioSessionSerialQueue = v2->_audioSessionSerialQueue;
    v2->_audioSessionSerialQueue = v3;

    v5 = dispatch_queue_create("Playback manager Biome serial queue", 0);
    biomeSerialQueue = v2->_biomeSerialQueue;
    v2->_biomeSerialQueue = v5;

    v7 = +[VUIPlaybackSettings sharedSettings];
    [(VUIPlaybackManager *)v2 _registerApplicationNotifications];
    [(VUIPlaybackManager *)v2 _registerAudioSessionNotifications];
    v8 = objc_alloc(MEMORY[0x1E696AD60]);
    v9 = objc_opt_class();
    v10 = init_instanceNumber++;
    v11 = [v8 initWithFormat:@"%@ %ld", v9, v10];
    v2->_trackingPlayerViewFrame = 0;
    v12 = +[VUIMetricsRecorderFactoryObjC makePlayerMetricRecorder];
    metricsRecorder = v2->_metricsRecorder;
    v2->_metricsRecorder = v12;

    objc_initWeak(&location, v2);
    v14 = objc_alloc(MEMORY[0x1E69D5A60]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __26__VUIPlaybackManager_init__block_invoke;
    v29[3] = &unk_1E8730C70;
    objc_copyWeak(&v31, &location);
    v15 = v2;
    v30 = v15;
    v16 = [v14 initWithName:v11 initialState:@"Not showing anything" mode:0 stateChangeHandler:v29];
    stateMachine = v15->_stateMachine;
    v15->_stateMachine = v16;

    [(TVPStateMachine *)v15->_stateMachine setLogObject:sLogObject_5];
    [(TVPStateMachine *)v15->_stateMachine setCallsStateChangeHandlerSynchronously:1];
    [(VUIPlaybackManager *)v15 _registerStateMachineHandlers];
    [(TVPStateMachine *)v15->_stateMachine setShouldAcceptEvents:1];
    v18 = [MEMORY[0x1E695DF70] array];
    multiviewPlaybackInfo = v15->_multiviewPlaybackInfo;
    v15->_multiviewPlaybackInfo = v18;

    if ([(VUIPlaybackManager *)v15 _shouldShowPerformanceDebugger])
    {
      v20 = +[VUIInterfaceFactory sharedInstance];
      v21 = [v20 documentCreator];
      v22 = [v21 performanceDebuggerViewController];
      performanceDebuggerViewController = v15->_performanceDebuggerViewController;
      v15->_performanceDebuggerViewController = v22;
    }

    if ([(VUIPlaybackManager *)v15 _shouldShowTimedMetadataDebugger])
    {
      v24 = +[VUIInterfaceFactory sharedInstance];
      v25 = [v24 documentCreator];
      v26 = [v25 timedMetadataDebuggerViewController];
      timedMetadataDebuggerViewController = v15->_timedMetadataDebuggerViewController;
      v15->_timedMetadataDebuggerViewController = v26;
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_registerApplicationNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel__accountDidChange_ name:*MEMORY[0x1E69E1660] object:0];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel__groupActivityDidEnd_ name:@"VUIGroupWatchActivitySessionDidEndNotification" object:0];
}

- (void)_registerAudioSessionNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__audioSessionRouteDidChange_ name:*MEMORY[0x1E6958228] object:0];
}

- (void)_registerStateMachineHandlers
{
  v647[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&v618, self);
  v616[0] = MEMORY[0x1E69E9820];
  v616[1] = 3221225472;
  v616[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke;
  v616[3] = &unk_1E8730F78;
  objc_copyWeak(&v617, &v618);
  v298 = _Block_copy(v616);
  v614[0] = MEMORY[0x1E69E9820];
  v614[1] = 3221225472;
  v614[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4;
  v614[3] = &unk_1E8730FA0;
  objc_copyWeak(&v615, &v618);
  v2 = _Block_copy(v614);
  v612[0] = MEMORY[0x1E69E9820];
  v612[1] = 3221225472;
  v612[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_854;
  v612[3] = &unk_1E8730FC8;
  v3 = v2;
  v613 = v3;
  v325 = _Block_copy(v612);
  v610[0] = MEMORY[0x1E69E9820];
  v610[1] = 3221225472;
  v610[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_857;
  v610[3] = &unk_1E8730FF0;
  v292 = v3;
  v611 = v292;
  v322 = _Block_copy(v610);
  v608[0] = MEMORY[0x1E69E9820];
  v608[1] = 3221225472;
  v608[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_860;
  v608[3] = &unk_1E8731018;
  objc_copyWeak(&v609, &v618);
  v608[4] = self;
  v4 = _Block_copy(v608);
  v606[0] = MEMORY[0x1E69E9820];
  v606[1] = 3221225472;
  v606[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_895;
  v606[3] = &unk_1E8731040;
  objc_copyWeak(&v607, &v618);
  v5 = _Block_copy(v606);
  v603[0] = MEMORY[0x1E69E9820];
  v603[1] = 3221225472;
  v603[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6;
  v603[3] = &unk_1E872DE58;
  objc_copyWeak(&v605, &v618);
  v296 = v5;
  v604 = v296;
  v6 = _Block_copy(v603);
  v601[0] = MEMORY[0x1E69E9820];
  v601[1] = 3221225472;
  v601[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7;
  v601[3] = &unk_1E8731068;
  objc_copyWeak(&v602, &v618);
  v7 = _Block_copy(v601);
  v598[0] = MEMORY[0x1E69E9820];
  v598[1] = 3221225472;
  v598[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_899;
  v598[3] = &unk_1E8731090;
  v8 = v7;
  v599 = v8;
  objc_copyWeak(&v600, &v618);
  v310 = _Block_copy(v598);
  v596[0] = MEMORY[0x1E69E9820];
  v596[1] = 3221225472;
  v596[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_903;
  v596[3] = &unk_1E872E4B8;
  objc_copyWeak(&v597, &v618);
  v300 = _Block_copy(v596);
  v594[0] = MEMORY[0x1E69E9820];
  v594[1] = 3221225472;
  v594[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_909;
  v594[3] = &unk_1E8731068;
  objc_copyWeak(&v595, &v618);
  v314 = _Block_copy(v594);
  v592[0] = MEMORY[0x1E69E9820];
  v592[1] = 3221225472;
  v592[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_911;
  v592[3] = &unk_1E8731130;
  objc_copyWeak(&v593, &v618);
  v9 = _Block_copy(v592);
  v589[0] = MEMORY[0x1E69E9820];
  v589[1] = 3221225472;
  v589[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_914;
  v589[3] = &unk_1E8731158;
  objc_copyWeak(&v591, &v618);
  v10 = v9;
  v590 = v10;
  v312 = _Block_copy(v589);
  v585[0] = MEMORY[0x1E69E9820];
  v585[1] = 3221225472;
  v585[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_917;
  v585[3] = &unk_1E8731180;
  objc_copyWeak(&v588, &v618);
  v291 = v6;
  v586 = v291;
  v308 = v8;
  v587 = v308;
  v11 = _Block_copy(v585);
  v583[0] = MEMORY[0x1E69E9820];
  v583[1] = 3221225472;
  v583[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_925;
  v583[3] = &unk_1E87311A8;
  objc_copyWeak(&v584, &v618);
  v304 = _Block_copy(v583);
  v581[0] = MEMORY[0x1E69E9820];
  v581[1] = 3221225472;
  v581[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_927;
  v581[3] = &unk_1E8731220;
  objc_copyWeak(&v582, &v618);
  v12 = _Block_copy(v581);
  v579[0] = MEMORY[0x1E69E9820];
  v579[1] = 3221225472;
  v579[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_935;
  v579[3] = &unk_1E8731270;
  objc_copyWeak(&v580, &v618);
  v293 = _Block_copy(v579);
  v577[0] = MEMORY[0x1E69E9820];
  v577[1] = 3221225472;
  v577[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_953;
  v577[3] = &unk_1E872E4B8;
  objc_copyWeak(&v578, &v618);
  v302 = _Block_copy(v577);
  v574[0] = MEMORY[0x1E69E9820];
  v574[1] = 3221225472;
  v574[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_992;
  v574[3] = &unk_1E8731330;
  objc_copyWeak(&v576, &v618);
  v13 = v4;
  v575 = v13;
  v14 = _Block_copy(v574);
  v570[0] = MEMORY[0x1E69E9820];
  v570[1] = 3221225472;
  v570[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1001;
  v570[3] = &unk_1E87313A8;
  v15 = v11;
  v571 = v15;
  objc_copyWeak(&v573, &v618);
  v16 = v14;
  v572 = v16;
  v17 = _Block_copy(v570);
  v567[0] = MEMORY[0x1E69E9820];
  v567[1] = 3221225472;
  v567[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8;
  v567[3] = &unk_1E87313D0;
  objc_copyWeak(&v569, &v618);
  v18 = v16;
  v568 = v18;
  v19 = _Block_copy(v567);
  v565[0] = MEMORY[0x1E69E9820];
  v565[1] = 3221225472;
  v565[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9;
  v565[3] = &unk_1E87313F8;
  objc_copyWeak(&v566, &v618);
  v316 = _Block_copy(v565);
  v563[0] = MEMORY[0x1E69E9820];
  v563[1] = 3221225472;
  v563[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10;
  v563[3] = &unk_1E87313F8;
  objc_copyWeak(&v564, &v618);
  v319 = _Block_copy(v563);
  v20 = objc_loadWeakRetained(&v618);
  v21 = [v20 stateMachine];
  v561[0] = MEMORY[0x1E69E9820];
  v561[1] = 3221225472;
  v561[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_14;
  v561[3] = &unk_1E8730120;
  v22 = v12;
  v562 = v22;
  [v21 registerHandlerForEvent:@"Present playlist" onState:@"Showing video full screen with post play content on screen" withBlock:v561];

  v23 = objc_loadWeakRetained(&v618);
  v24 = [v23 stateMachine];
  v558[0] = MEMORY[0x1E69E9820];
  v558[1] = 3221225472;
  v558[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_17;
  v558[3] = &unk_1E872FAB0;
  objc_copyWeak(&v560, &v618);
  v25 = v22;
  v559 = v25;
  [v24 registerHandlerForEvent:@"Present playlist" onState:@"Showing post play content without playback UI" withBlock:v558];

  v26 = objc_loadWeakRetained(&v618);
  v27 = [v26 stateMachine];
  v551[0] = MEMORY[0x1E69E9820];
  v551[1] = 3221225472;
  v551[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_20;
  v551[3] = &unk_1E87314B8;
  objc_copyWeak(&v557, &v618);
  v306 = v25;
  v552 = v306;
  v28 = v15;
  v553 = v28;
  v29 = v13;
  v554 = v29;
  v289 = v322;
  v555 = v289;
  v326 = v325;
  v556 = v326;
  [v27 registerDefaultHandlerForEvent:@"Present playlist" withBlock:v551];

  v30 = objc_loadWeakRetained(&v618);
  v31 = [v30 stateMachine];
  v647[0] = @"Showing Extras content";
  v647[1] = @"Showing extras video picture in picture on extras content";
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v647 count:2];
  v548[0] = MEMORY[0x1E69E9820];
  v548[1] = 3221225472;
  v548[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1042;
  v548[3] = &unk_1E87314E0;
  v323 = v10;
  v549 = v323;
  objc_copyWeak(&v550, &v618);
  [v31 registerHandlerForEvent:@"Present playlist" onStates:v32 withBlock:v548];

  v33 = objc_loadWeakRetained(&v618);
  v34 = [v33 stateMachine];
  v544[0] = MEMORY[0x1E69E9820];
  v544[1] = 3221225472;
  v544[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1045;
  v544[3] = &unk_1E8730210;
  objc_copyWeak(&v547, &v618);
  v35 = v28;
  v545 = v35;
  v294 = v29;
  v546 = v294;
  [v34 registerHandlerForEvent:@"Present player container view controller" onState:@"Not showing anything" withBlock:v544];

  v36 = objc_loadWeakRetained(&v618);
  v37 = [v36 stateMachine];
  v646[0] = @"Not showing anything";
  v646[1] = @"Showing main video picture in picture";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v646 count:2];
  v542[0] = MEMORY[0x1E69E9820];
  v542[1] = 3221225472;
  v542[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1048;
  v542[3] = &unk_1E8730120;
  v290 = v17;
  v543 = v290;
  [v37 registerHandlerForEvent:@"Show multiview playback" onStates:v38 withBlock:v542];

  v39 = objc_loadWeakRetained(&v618);
  v40 = [v39 stateMachine];
  v540[0] = MEMORY[0x1E69E9820];
  v540[1] = 3221225472;
  v540[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1049;
  v540[3] = &unk_1E8730120;
  v41 = v19;
  v541 = v41;
  [v40 registerHandlerForEvent:@"Show multiview playback" onState:@"Showing video full screen" withBlock:v540];

  v42 = objc_loadWeakRetained(&v618);
  v43 = [v42 stateMachine];
  v537[0] = MEMORY[0x1E69E9820];
  v537[1] = 3221225472;
  v537[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10_1050;
  v537[3] = &unk_1E872FAB0;
  objc_copyWeak(&v539, &v618);
  v44 = v319;
  v538 = v44;
  [v43 registerHandlerForEvent:@"Show multiview playback" onState:@"Showing multiview playback fullscreen" withBlock:v537];

  v45 = objc_loadWeakRetained(&v618);
  v46 = [v45 stateMachine];
  v645[0] = @"Showing multiview playback";
  v645[1] = @"Showing multiview playback fullscreen";
  v645[2] = @"Showing multiview playback fullscreen due to small screen size";
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v645 count:3];
  v534[0] = MEMORY[0x1E69E9820];
  v534[1] = 3221225472;
  v534[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_12_1102;
  v534[3] = &unk_1E872FAB0;
  objc_copyWeak(&v536, &v618);
  v48 = v35;
  v535 = v48;
  [v46 registerHandlerForEvent:@"Dismiss multiview playback" onStates:v47 withBlock:v534];

  v49 = objc_loadWeakRetained(&v618);
  v50 = [v49 stateMachine];
  v530[0] = MEMORY[0x1E69E9820];
  v530[1] = 3221225472;
  v530[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_16_1106;
  v530[3] = &unk_1E8731530;
  v51 = v18;
  v531 = v51;
  objc_copyWeak(&v533, &v618);
  v532 = &__block_literal_global_1013;
  v530[4] = self;
  [v50 registerHandlerForEvent:@"Add multiview playback" onState:@"Showing multiview playback" withBlock:v530];

  v52 = objc_loadWeakRetained(&v618);
  v53 = [v52 stateMachine];
  v644[0] = @"Showing multiview playback fullscreen";
  v644[1] = @"Showing multiview playback fullscreen due to small screen size";
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v644 count:2];
  v527[0] = MEMORY[0x1E69E9820];
  v527[1] = 3221225472;
  v527[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_19_1111;
  v527[3] = &unk_1E872FAB0;
  objc_copyWeak(&v529, &v618);
  v55 = v44;
  v528 = v55;
  [v53 registerHandlerForEvent:@"Add multiview playback" onStates:v54 withBlock:v527];

  v56 = objc_loadWeakRetained(&v618);
  v57 = [v56 stateMachine];
  v525[0] = MEMORY[0x1E69E9820];
  v525[1] = 3221225472;
  v525[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_21;
  v525[3] = &unk_1E8730120;
  v288 = v41;
  v526 = v288;
  [v57 registerHandlerForEvent:@"Add multiview playback" onState:@"Showing video full screen" withBlock:v525];

  v58 = objc_loadWeakRetained(&v618);
  v59 = [v58 stateMachine];
  v523[0] = MEMORY[0x1E69E9820];
  v523[1] = 3221225472;
  v523[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_22;
  v523[3] = &unk_1E872FAD8;
  objc_copyWeak(&v524, &v618);
  [v59 registerHandlerForEvent:@"Remove multiview playback" onState:@"Showing multiview playback" withBlock:v523];

  v60 = objc_loadWeakRetained(&v618);
  v61 = [v60 stateMachine];
  v521[0] = MEMORY[0x1E69E9820];
  v521[1] = 3221225472;
  v521[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_23;
  v521[3] = &unk_1E872FAD8;
  objc_copyWeak(&v522, &v618);
  [v61 registerHandlerForEvent:@"Playback was removed from multiview" onState:@"Showing multiview playback" withBlock:v521];

  v62 = objc_loadWeakRetained(&v618);
  v63 = [v62 stateMachine];
  v518[0] = MEMORY[0x1E69E9820];
  v518[1] = 3221225472;
  v518[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_24;
  v518[3] = &unk_1E872FAB0;
  objc_copyWeak(&v520, &v618);
  v287 = v51;
  v519 = v287;
  [v63 registerHandlerForEvent:@"Replace multiview playback" onState:@"Showing multiview playback" withBlock:v518];

  v64 = objc_loadWeakRetained(&v618);
  v65 = [v64 stateMachine];
  v515[0] = MEMORY[0x1E69E9820];
  v515[1] = 3221225472;
  v515[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_25;
  v515[3] = &unk_1E872FAB0;
  objc_copyWeak(&v517, &v618);
  v66 = v55;
  v516 = v66;
  [v65 registerHandlerForEvent:@"Did select multiview player" onState:@"Showing multiview playback" withBlock:v515];

  v67 = objc_loadWeakRetained(&v618);
  v68 = [v67 stateMachine];
  v512[0] = MEMORY[0x1E69E9820];
  v512[1] = 3221225472;
  v512[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_26;
  v512[3] = &unk_1E872FAB0;
  objc_copyWeak(&v514, &v618);
  v320 = v316;
  v513 = v320;
  [v68 registerHandlerForEvent:@"Multiview did enter fullscreen" onState:@"Showing multiview playback" withBlock:v512];

  v69 = objc_loadWeakRetained(&v618);
  v70 = [v69 stateMachine];
  v643[0] = @"Showing video full screen";
  v643[1] = @"Showing multiview playback fullscreen";
  v643[2] = @"Showing multiview playback fullscreen due to small screen size";
  v643[3] = @"Showing long loading dialog";
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v643 count:4];
  v509[0] = MEMORY[0x1E69E9820];
  v509[1] = 3221225472;
  v509[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_29;
  v509[3] = &unk_1E872FAB0;
  objc_copyWeak(&v511, &v618);
  v286 = v326;
  v510 = v286;
  [v70 registerHandlerForEvent:@"Media info did change" onStates:v71 withBlock:v509];

  v72 = objc_loadWeakRetained(&v618);
  v73 = [v72 stateMachine];
  v642[0] = @"Showing multiview playback fullscreen";
  v642[1] = @"Showing multiview playback fullscreen due to small screen size";
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v642 count:2];
  v506[0] = MEMORY[0x1E69E9820];
  v506[1] = 3221225472;
  v506[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1114;
  v506[3] = &unk_1E872FAB0;
  objc_copyWeak(&v508, &v618);
  v327 = v66;
  v507 = v327;
  [v73 registerHandlerForEvent:@"Multiview did exit fullscreen" onStates:v74 withBlock:v506];

  v75 = objc_loadWeakRetained(&v618);
  v76 = [v75 stateMachine];
  v641[0] = @"Showing video full screen";
  v641[1] = @"Showing long loading dialog";
  v641[2] = @"Showing Extras content";
  v641[3] = @"Showing error message on playback UI";
  v641[4] = @"Showing video full screen with post play content on screen";
  v641[5] = @"Showing extras video full screen outside extras content";
  v641[6] = @"Showing post play content without playback UI";
  v641[7] = @"Showing multiview playback";
  v641[8] = @"Showing multiview playback fullscreen";
  v641[9] = @"Showing multiview playback fullscreen in PIP";
  v641[10] = @"Showing playback in assistive access";
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v641 count:11];
  v504[0] = MEMORY[0x1E69E9820];
  v504[1] = 3221225472;
  v504[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1115;
  v504[3] = &unk_1E8730120;
  v78 = v48;
  v505 = v78;
  [v76 registerHandlerForEvent:@"Dismiss playback" onStates:v77 withBlock:v504];

  v79 = objc_loadWeakRetained(&v618);
  v80 = [v79 stateMachine];
  [v80 registerHandlerForEvent:@"Dismiss playback" onState:@"Waiting for AVPlayerViewController presentation to complete" withBlock:&__block_literal_global_1118];

  v81 = objc_loadWeakRetained(&v618);
  v82 = [v81 stateMachine];
  v640[0] = @"Waiting for Extras AVPlayerViewController presentation to complete";
  v640[1] = @"Showing main video picture in picture";
  v640[2] = @"Showing extras video picture in picture on extras content";
  v640[3] = @"Showing extras video picture in picture outside extras content";
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v640 count:4];
  v502[0] = MEMORY[0x1E69E9820];
  v502[1] = 3221225472;
  v502[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1119;
  v502[3] = &unk_1E8730120;
  v84 = v78;
  v503 = v84;
  [v82 registerHandlerForEvent:@"Dismiss playback" onStates:v83 withBlock:v502];

  v85 = objc_loadWeakRetained(&v618);
  v86 = [v85 stateMachine];
  v500[0] = MEMORY[0x1E69E9820];
  v500[1] = 3221225472;
  v500[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1120;
  v500[3] = &unk_1E872FAD8;
  objc_copyWeak(&v501, &v618);
  [v86 registerHandlerForEvent:@"Dismiss playback" onState:@"Playing background media in picture and picture" withBlock:v500];

  v87 = objc_loadWeakRetained(&v618);
  v88 = [v87 stateMachine];
  v498[0] = MEMORY[0x1E69E9820];
  v498[1] = 3221225472;
  v498[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1122;
  v498[3] = &unk_1E8730120;
  v89 = v84;
  v499 = v89;
  [v88 registerHandlerForEvent:@"Done Button Pressed" onState:@"Showing Extras content" withBlock:v498];

  v90 = objc_loadWeakRetained(&v618);
  v91 = [v90 stateMachine];
  v496[0] = MEMORY[0x1E69E9820];
  v496[1] = 3221225472;
  v496[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1123;
  v496[3] = &unk_1E8730120;
  v330 = v314;
  v497 = v330;
  [v91 registerHandlerForEvent:@"Done Button Pressed" onState:@"Showing extras video picture in picture on extras content" withBlock:v496];

  v92 = objc_loadWeakRetained(&v618);
  v93 = [v92 stateMachine];
  v493[0] = MEMORY[0x1E69E9820];
  v493[1] = 3221225472;
  v493[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1124;
  v493[3] = &unk_1E872FAB0;
  objc_copyWeak(&v495, &v618);
  v94 = v89;
  v494 = v94;
  [v93 registerHandlerForEvent:@"AVPlayerViewController presentation did complete" onState:@"Waiting for AVPlayerViewController presentation to complete" withBlock:v493];

  v95 = objc_loadWeakRetained(&v618);
  v96 = [v95 stateMachine];
  v490[0] = MEMORY[0x1E69E9820];
  v490[1] = 3221225472;
  v490[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1128;
  v490[3] = &unk_1E872FAB0;
  objc_copyWeak(&v492, &v618);
  v97 = v312;
  v491 = v97;
  [v96 registerHandlerForEvent:@"AVPlayerViewController presentation did complete" onState:@"Waiting for Extras AVPlayerViewController presentation to complete" withBlock:v490];

  v98 = objc_loadWeakRetained(&v618);
  v99 = [v98 stateMachine];
  v487[0] = MEMORY[0x1E69E9820];
  v487[1] = 3221225472;
  v487[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1130;
  v487[3] = &unk_1E872FAB0;
  objc_copyWeak(&v489, &v618);
  v100 = v94;
  v488 = v100;
  [v99 registerHandlerForEvent:@"AVPlayerViewController presentation did complete" onState:@"Waiting for AVPlayerViewController presentation to complete to dismiss" withBlock:v487];

  v101 = objc_loadWeakRetained(&v618);
  v102 = [v101 stateMachine];
  v485[0] = MEMORY[0x1E69E9820];
  v485[1] = 3221225472;
  v485[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1132;
  v485[3] = &unk_1E8730120;
  v103 = v100;
  v486 = v103;
  [v102 registerHandlerForEvent:@"AVPlayerViewController presentation did timeout" onState:@"Waiting for AVPlayerViewController presentation to complete" withBlock:v485];

  v104 = objc_loadWeakRetained(&v618);
  v105 = [v104 stateMachine];
  v483[0] = MEMORY[0x1E69E9820];
  v483[1] = 3221225472;
  v483[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1134;
  v483[3] = &unk_1E8730120;
  v106 = v103;
  v484 = v106;
  [v105 registerHandlerForEvent:@"AVPlayerViewController presentation did timeout" onState:@"Waiting for AVPlayerViewController presentation to complete to dismiss" withBlock:v483];

  v107 = objc_loadWeakRetained(&v618);
  v108 = [v107 stateMachine];
  v639[0] = @"Showing video full screen";
  v639[1] = @"Showing multiview playback fullscreen";
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:v639 count:2];
  v481[0] = MEMORY[0x1E69E9820];
  v481[1] = 3221225472;
  v481[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1136;
  v481[3] = &unk_1E872FAD8;
  objc_copyWeak(&v482, &v618);
  [v108 registerHandlerForEvent:@"Will start picture in picture" onStates:v109 withBlock:v481];

  v110 = objc_loadWeakRetained(&v618);
  v111 = [v110 stateMachine];
  v479[0] = MEMORY[0x1E69E9820];
  v479[1] = 3221225472;
  v479[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1137;
  v479[3] = &unk_1E872FAD8;
  objc_copyWeak(&v480, &v618);
  [v111 registerHandlerForEvent:@"Will start picture in picture" onState:@"Showing multiview playback" withBlock:v479];

  v112 = objc_loadWeakRetained(&v618);
  v113 = [v112 stateMachine];
  v476[0] = MEMORY[0x1E69E9820];
  v476[1] = 3221225472;
  v476[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1138;
  v476[3] = &unk_1E87314E0;
  v114 = v310;
  v477 = v114;
  objc_copyWeak(&v478, &v618);
  [v113 registerHandlerForEvent:@"Will start picture in picture" onState:@"Showing extras video full screen outside extras content" withBlock:v476];

  v115 = objc_loadWeakRetained(&v618);
  v116 = [v115 stateMachine];
  v474[0] = MEMORY[0x1E69E9820];
  v474[1] = 3221225472;
  v474[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10_1139;
  v474[3] = &unk_1E8730120;
  v117 = v306;
  v475 = v117;
  [v116 registerHandlerForEvent:@"Will start picture in picture" onState:@"Showing video full screen with post play content on screen" withBlock:v474];

  v118 = objc_loadWeakRetained(&v618);
  v119 = [v118 stateMachine];
  v638[0] = @"Showing main video picture in picture";
  v638[1] = @"Showing multiview playback in PIP";
  v638[2] = @"Showing multiview playback fullscreen";
  v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:v638 count:3];
  v471[0] = MEMORY[0x1E69E9820];
  v471[1] = 3221225472;
  v471[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_11_1140;
  v471[3] = &unk_1E872FAB0;
  objc_copyWeak(&v473, &v618);
  v121 = v114;
  v472 = v121;
  [v119 registerHandlerForEvent:@"Did start picture in picture" onStates:v120 withBlock:v471];

  v122 = objc_loadWeakRetained(&v618);
  v123 = [v122 stateMachine];
  v469[0] = MEMORY[0x1E69E9820];
  v469[1] = 3221225472;
  v469[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_12_1141;
  v469[3] = &unk_1E8730120;
  v315 = v308;
  v470 = v315;
  [v123 registerHandlerForEvent:@"Did start picture in picture" onState:@"Showing extras video picture in picture on extras content" withBlock:v469];

  v124 = objc_loadWeakRetained(&v618);
  v125 = [v124 stateMachine];
  v466[0] = MEMORY[0x1E69E9820];
  v466[1] = 3221225472;
  v466[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_13_1142;
  v466[3] = &unk_1E872FAB0;
  objc_copyWeak(&v468, &v618);
  v313 = v121;
  v467 = v313;
  [v125 registerHandlerForEvent:@"Did start picture in picture" onState:@"Showing multiview playback" withBlock:v466];

  v126 = objc_loadWeakRetained(&v618);
  v127 = [v126 stateMachine];
  [v127 registerHandlerForEvent:@"Picture in picture presentation did fail" onState:@"Showing main video picture in picture" withBlock:&__block_literal_global_1145];

  v128 = objc_loadWeakRetained(&v618);
  v129 = [v128 stateMachine];
  v637[0] = @"Showing video full screen";
  v637[1] = @"Showing error message on playback UI";
  v637[2] = @"Showing multiview playback fullscreen";
  v637[3] = @"Showing multiview playback fullscreen due to small screen size";
  v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:v637 count:4];
  v463[0] = MEMORY[0x1E69E9820];
  v463[1] = 3221225472;
  v463[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_15_1146;
  v463[3] = &unk_1E872FAB0;
  objc_copyWeak(&v465, &v618);
  v131 = v106;
  v464 = v131;
  [v129 registerHandlerForEvent:@"AVPlayerViewController did end full screen presentation" onStates:v130 withBlock:v463];

  v132 = objc_loadWeakRetained(&v618);
  v133 = [v132 stateMachine];
  [v133 registerHandlerForEvent:@"AVPlayerViewController did end full screen presentation" onState:@"Transferring player to background media" withBlock:&__block_literal_global_1150];

  v134 = objc_loadWeakRetained(&v618);
  v135 = [v134 stateMachine];
  [v135 registerDefaultHandlerForEvent:@"Restore user interface for picture in picture stop" withBlock:&__block_literal_global_1153];

  v136 = objc_loadWeakRetained(&v618);
  v137 = [v136 stateMachine];
  v636[0] = @"Showing main video picture in picture";
  v636[1] = @"Showing multiview playback in PIP";
  v636[2] = @"Showing multiview playback fullscreen in PIP";
  v138 = [MEMORY[0x1E695DEC8] arrayWithObjects:v636 count:3];
  v461[0] = MEMORY[0x1E69E9820];
  v461[1] = 3221225472;
  v461[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1154;
  v461[3] = &unk_1E872FAD8;
  objc_copyWeak(&v462, &v618);
  [v137 registerHandlerForEvent:@"Restore user interface for picture in picture stop" onStates:v138 withBlock:v461];

  v139 = objc_loadWeakRetained(&v618);
  v140 = [v139 stateMachine];
  v459[0] = MEMORY[0x1E69E9820];
  v459[1] = 3221225472;
  v459[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1158;
  v459[3] = &unk_1E872FAD8;
  objc_copyWeak(&v460, &v618);
  [v140 registerHandlerForEvent:@"Restore user interface for picture in picture stop" onState:@"Showing extras video picture in picture on extras content" withBlock:v459];

  v141 = objc_loadWeakRetained(&v618);
  v142 = [v141 stateMachine];
  v457[0] = MEMORY[0x1E69E9820];
  v457[1] = 3221225472;
  v457[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1161;
  v457[3] = &unk_1E872FAD8;
  objc_copyWeak(&v458, &v618);
  [v142 registerHandlerForEvent:@"Restore user interface for picture in picture stop" onState:@"Showing extras video picture in picture outside extras content" withBlock:v457];

  v143 = objc_loadWeakRetained(&v618);
  v144 = [v143 stateMachine];
  v635[0] = @"Showing main video picture in picture";
  v635[1] = @"Showing multiview playback in PIP";
  v145 = [MEMORY[0x1E695DEC8] arrayWithObjects:v635 count:2];
  v454[0] = MEMORY[0x1E69E9820];
  v454[1] = 3221225472;
  v454[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1163;
  v454[3] = &unk_1E872FAB0;
  objc_copyWeak(&v456, &v618);
  v146 = v131;
  v455 = v146;
  [v144 registerHandlerForEvent:@"Did stop picture in picture" onStates:v145 withBlock:v454];

  v147 = objc_loadWeakRetained(&v618);
  v148 = [v147 stateMachine];
  v634[0] = @"Showing extras video picture in picture on extras content";
  v634[1] = @"Showing extras video picture in picture outside extras content";
  v149 = [MEMORY[0x1E695DEC8] arrayWithObjects:v634 count:2];
  v452[0] = MEMORY[0x1E69E9820];
  v452[1] = 3221225472;
  v452[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1166;
  v452[3] = &unk_1E872FAD8;
  objc_copyWeak(&v453, &v618);
  [v148 registerHandlerForEvent:@"Did stop picture in picture" onStates:v149 withBlock:v452];

  v150 = objc_loadWeakRetained(&v618);
  v151 = [v150 stateMachine];
  v449[0] = MEMORY[0x1E69E9820];
  v449[1] = 3221225472;
  v449[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1168;
  v449[3] = &unk_1E872FAB0;
  objc_copyWeak(&v451, &v618);
  v152 = v302;
  v450 = v152;
  [v151 registerHandlerForEvent:@"Did stop picture in picture" onState:@"Showing video full screen" withBlock:v449];

  v153 = objc_loadWeakRetained(&v618);
  v154 = [v153 stateMachine];
  v445[0] = MEMORY[0x1E69E9820];
  v445[1] = 3221225472;
  v445[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1169;
  v445[3] = &unk_1E8730210;
  objc_copyWeak(&v448, &v618);
  v155 = v146;
  v446 = v155;
  v156 = v304;
  v447 = v156;
  [v154 registerDefaultHandlerForEvent:@"Playback state did change" withBlock:v445];

  v157 = objc_loadWeakRetained(&v618);
  v158 = [v157 stateMachine];
  v443[0] = MEMORY[0x1E69E9820];
  v443[1] = 3221225472;
  v443[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1171;
  v443[3] = &unk_1E8730120;
  v159 = v117;
  v444 = v159;
  [v158 registerHandlerForEvent:@"Playback state did change" onState:@"Waiting for playback to start to return to fullscreen" withBlock:v443];

  v160 = objc_loadWeakRetained(&v618);
  v161 = [v160 stateMachine];
  [v161 registerHandlerForEvent:@"Playback state did change" onState:@"Showing video full screen with post play content on screen" withBlock:&__block_literal_global_1175];

  v162 = objc_loadWeakRetained(&v618);
  v163 = [v162 stateMachine];
  v633[0] = @"Showing video full screen";
  v633[1] = @"Showing long loading dialog";
  v633[2] = @"Showing playback in assistive access";
  v164 = [MEMORY[0x1E695DEC8] arrayWithObjects:v633 count:3];
  v437[0] = MEMORY[0x1E69E9820];
  v437[1] = 3221225472;
  v437[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1177;
  v437[3] = &unk_1E87315A8;
  objc_copyWeak(&v442, &v618);
  v165 = v155;
  v438 = v165;
  v166 = v97;
  v439 = v166;
  v317 = v152;
  v440 = v317;
  v167 = v156;
  v441 = v167;
  [v163 registerHandlerForEvent:@"Playback state did change" onStates:v164 withBlock:v437];

  v168 = objc_loadWeakRetained(&v618);
  v169 = [v168 stateMachine];
  [v169 registerHandlerForEvent:@"Playback state did change" onState:@"Waiting for Extras AVPlayerViewController presentation to complete" withBlock:&__block_literal_global_1181];

  v170 = objc_loadWeakRetained(&v618);
  v171 = [v170 stateMachine];
  v435[0] = MEMORY[0x1E69E9820];
  v435[1] = 3221225472;
  v435[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1182;
  v435[3] = &unk_1E872FAD8;
  objc_copyWeak(&v436, &v618);
  [v171 registerHandlerForEvent:@"Playback state did change" onState:@"Showing extras video picture in picture on extras content" withBlock:v435];

  v172 = objc_loadWeakRetained(&v618);
  v173 = [v172 stateMachine];
  [v173 registerHandlerForEvent:@"Playback state did change" onState:@"Showing Extras content" withBlock:&__block_literal_global_1186];

  v174 = objc_loadWeakRetained(&v618);
  v175 = [v174 stateMachine];
  v632[0] = @"Waiting for AVPlayerViewController presentation to complete";
  v632[1] = @"Waiting for AVPlayerViewController presentation to complete to dismiss";
  v632[2] = @"Waiting for Extras AVPlayerViewController presentation to complete";
  v632[3] = @"Showing error message on playback UI";
  v632[4] = @"Showing error message without playback UI";
  v176 = [MEMORY[0x1E695DEC8] arrayWithObjects:v632 count:5];
  [v175 registerHandlerForEvent:@"Playback state did change" onStates:v176 withBlock:&__block_literal_global_1189];

  v177 = objc_loadWeakRetained(&v618);
  v178 = [v177 stateMachine];
  v431[0] = MEMORY[0x1E69E9820];
  v431[1] = 3221225472;
  v431[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1190;
  v431[3] = &unk_1E8730210;
  objc_copyWeak(&v434, &v618);
  v179 = v165;
  v432 = v179;
  v311 = v167;
  v433 = v311;
  [v178 registerHandlerForEvent:@"Playback state did change" onState:@"Showing error message without playback UI" withBlock:v431];

  v180 = objc_loadWeakRetained(&v618);
  v181 = [v180 stateMachine];
  v428[0] = MEMORY[0x1E69E9820];
  v428[1] = 3221225472;
  v428[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1192;
  v428[3] = &unk_1E872FAB0;
  objc_copyWeak(&v430, &v618);
  v429 = &__block_literal_global_1013;
  [v181 registerHandlerForEvent:@"Playback state did change" onState:@"Showing multiview playback" withBlock:v428];

  v182 = objc_loadWeakRetained(&v618);
  v183 = [v182 stateMachine];
  v425[0] = MEMORY[0x1E69E9820];
  v425[1] = 3221225472;
  v425[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10_1193;
  v425[3] = &unk_1E872FAB0;
  objc_copyWeak(&v427, &v618);
  v309 = v300;
  v426 = v309;
  [v183 registerHandlerForEvent:@"Extras button pressed" onState:@"Showing video full screen" withBlock:v425];

  v184 = objc_loadWeakRetained(&v618);
  v185 = [v184 stateMachine];
  v631[0] = @"Showing Extras content";
  v631[1] = @"Showing extras video picture in picture on extras content";
  v186 = [MEMORY[0x1E695DEC8] arrayWithObjects:v631 count:2];
  v423[0] = MEMORY[0x1E69E9820];
  v423[1] = 3221225472;
  v423[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1194;
  v423[3] = &unk_1E872FAD8;
  objc_copyWeak(&v424, &v618);
  [v185 registerHandlerForEvent:@"Extras menu item selected" onStates:v186 withBlock:v423];

  v187 = objc_loadWeakRetained(&v618);
  v188 = [v187 stateMachine];
  v421[0] = MEMORY[0x1E69E9820];
  v421[1] = 3221225472;
  v421[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1196;
  v421[3] = &unk_1E872FAD8;
  objc_copyWeak(&v422, &v618);
  [v188 registerHandlerForEvent:@"Extras visibility needs update" onState:@"Showing video full screen" withBlock:v421];

  v189 = objc_loadWeakRetained(&v618);
  v190 = [v189 stateMachine];
  v418[0] = MEMORY[0x1E69E9820];
  v418[1] = 3221225472;
  v418[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1197;
  v418[3] = &unk_1E872FAB0;
  objc_copyWeak(&v420, &v618);
  v191 = v323;
  v419 = v191;
  [v190 registerHandlerForEvent:@"Extras visibility needs update" onState:@"Showing Extras content" withBlock:v418];

  v192 = objc_loadWeakRetained(&v618);
  v193 = [v192 stateMachine];
  v416[0] = MEMORY[0x1E69E9820];
  v416[1] = 3221225472;
  v416[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1198;
  v416[3] = &unk_1E8730120;
  v331 = v330;
  v417 = v331;
  [v193 registerHandlerForEvent:@"Extras visibility needs update" onState:@"Showing extras video picture in picture on extras content" withBlock:v416];

  v194 = objc_loadWeakRetained(&v618);
  v195 = [v194 stateMachine];
  v414[0] = MEMORY[0x1E69E9820];
  v414[1] = 3221225472;
  v414[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1199;
  v414[3] = &unk_1E872FAD8;
  objc_copyWeak(&v415, &v618);
  [v195 registerDefaultHandlerForEvent:@"Extras failure did occur" withBlock:v414];

  v196 = objc_loadWeakRetained(&v618);
  v197 = [v196 stateMachine];
  v411[0] = MEMORY[0x1E69E9820];
  v411[1] = 3221225472;
  v411[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1201;
  v411[3] = &unk_1E87314E0;
  v198 = v191;
  v412 = v198;
  objc_copyWeak(&v413, &v618);
  [v197 registerHandlerForEvent:@"Extras failure did occur" onState:@"Showing Extras content" withBlock:v411];

  v199 = objc_loadWeakRetained(&v618);
  v200 = [v199 stateMachine];
  v409[0] = MEMORY[0x1E69E9820];
  v409[1] = 3221225472;
  v409[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1203;
  v409[3] = &unk_1E8730120;
  v201 = v198;
  v410 = v201;
  [v200 registerHandlerForEvent:@"Back button pressed" onState:@"Showing Extras content" withBlock:v409];

  v202 = objc_loadWeakRetained(&v618);
  v203 = [v202 stateMachine];
  v405[0] = MEMORY[0x1E69E9820];
  v405[1] = 3221225472;
  v405[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1204;
  v405[3] = &unk_1E8730210;
  objc_copyWeak(&v408, &v618);
  v324 = v296;
  v406 = v324;
  v204 = v201;
  v407 = v204;
  [v203 registerHandlerForEvent:@"Back button pressed" onState:@"Showing extras video picture in picture on extras content" withBlock:v405];

  v205 = objc_loadWeakRetained(&v618);
  v206 = [v205 stateMachine];
  v401[0] = MEMORY[0x1E69E9820];
  v401[1] = 3221225472;
  v401[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1205;
  v401[3] = &unk_1E8730210;
  objc_copyWeak(&v404, &v618);
  v307 = v294;
  v402 = v307;
  v207 = v298;
  v403 = v207;
  [v206 registerHandlerForEvent:@"Extras playback requested" onState:@"Showing Extras content" withBlock:v401];

  v208 = objc_loadWeakRetained(&v618);
  v209 = [v208 stateMachine];
  v398[0] = MEMORY[0x1E69E9820];
  v398[1] = 3221225472;
  v398[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1213;
  v398[3] = &unk_1E872FAB0;
  objc_copyWeak(&v400, &v618);
  v303 = v207;
  v399 = v303;
  [v209 registerHandlerForEvent:@"Extras playback requested" onState:@"Showing extras video picture in picture on extras content" withBlock:v398];

  v210 = objc_loadWeakRetained(&v618);
  v211 = [v210 stateMachine];
  v630[0] = @"Waiting for AVPlayerViewController presentation to complete";
  v630[1] = @"Waiting for AVPlayerViewController presentation to complete to dismiss";
  v630[2] = @"Waiting for Extras AVPlayerViewController presentation to complete";
  v630[3] = @"Showing long loading dialog";
  v212 = [MEMORY[0x1E695DEC8] arrayWithObjects:v630 count:4];
  v396[0] = MEMORY[0x1E69E9820];
  v396[1] = 3221225472;
  v396[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1216;
  v396[3] = &unk_1E872FAD8;
  objc_copyWeak(&v397, &v618);
  [v211 registerHandlerForEvent:@"Error did occur" onStates:v212 withBlock:v396];

  v213 = objc_loadWeakRetained(&v618);
  v214 = [v213 stateMachine];
  v629[0] = @"Showing video full screen";
  v629[1] = @"Showing video full screen with post play content on screen";
  v629[2] = @"Showing main video picture in picture";
  v629[3] = @"Showing playback in assistive access";
  v215 = [MEMORY[0x1E695DEC8] arrayWithObjects:v629 count:4];
  v393[0] = MEMORY[0x1E69E9820];
  v393[1] = 3221225472;
  v393[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1217;
  v393[3] = &unk_1E87314E0;
  v216 = v159;
  v394 = v216;
  objc_copyWeak(&v395, &v618);
  [v214 registerHandlerForEvent:@"Error did occur" onStates:v215 withBlock:v393];

  v217 = objc_loadWeakRetained(&v618);
  v218 = [v217 stateMachine];
  v628[0] = @"Showing error message on playback UI";
  v628[1] = @"Showing error message without playback UI";
  v219 = [MEMORY[0x1E695DEC8] arrayWithObjects:v628 count:2];
  v388[0] = MEMORY[0x1E69E9820];
  v388[1] = 3221225472;
  v388[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_15_1353;
  v388[3] = &unk_1E87316B0;
  objc_copyWeak(&v392, &v618);
  v305 = v166;
  v389 = v305;
  v220 = v179;
  v390 = v220;
  v391 = &__block_literal_global_959;
  [v218 registerHandlerForEvent:@"Error alert dismissed" onStates:v219 withBlock:v388];

  v221 = objc_loadWeakRetained(&v618);
  v222 = [v221 stateMachine];
  [v222 registerHandlerForEvent:@"Download again button pressed" onState:@"Showing error message on playback UI" withBlock:&__block_literal_global_1368];

  v223 = objc_loadWeakRetained(&v618);
  v224 = [v223 stateMachine];
  v386[0] = MEMORY[0x1E69E9820];
  v386[1] = 3221225472;
  v386[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1370;
  v386[3] = &unk_1E872FAD8;
  objc_copyWeak(&v387, &v618);
  [v224 registerHandlerForEvent:@"Force streaming video button pressed" onState:@"Showing error message on playback UI" withBlock:v386];

  v225 = objc_loadWeakRetained(&v618);
  v226 = [v225 stateMachine];
  v384[0] = MEMORY[0x1E69E9820];
  v384[1] = 3221225472;
  v384[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1371;
  v384[3] = &unk_1E872FAD8;
  objc_copyWeak(&v385, &v618);
  [v226 registerHandlerForEvent:@"Play using cellular data button pressed" onState:@"Showing error message on playback UI" withBlock:v384];

  v227 = objc_loadWeakRetained(&v618);
  v228 = [v227 stateMachine];
  v627[0] = @"Showing multiview playback";
  v627[1] = @"Showing multiview playback in PIP";
  v229 = [MEMORY[0x1E695DEC8] arrayWithObjects:v627 count:2];
  v381[0] = MEMORY[0x1E69E9820];
  v381[1] = 3221225472;
  v381[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1373;
  v381[3] = &unk_1E87314E0;
  v321 = v320;
  v382 = v321;
  objc_copyWeak(&v383, &v618);
  [v228 registerHandlerForEvent:@"Application did enter background" onStates:v229 withBlock:v381];

  v230 = objc_loadWeakRetained(&v618);
  v231 = [v230 stateMachine];
  v626[0] = @"Showing video full screen";
  v626[1] = @"Showing long loading dialog";
  v232 = [MEMORY[0x1E695DEC8] arrayWithObjects:v626 count:2];
  v379[0] = MEMORY[0x1E69E9820];
  v379[1] = 3221225472;
  v379[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1374;
  v379[3] = &unk_1E872FAD8;
  objc_copyWeak(&v380, &v618);
  [v231 registerHandlerForEvent:@"Application did enter background" onStates:v232 withBlock:v379];

  v233 = objc_loadWeakRetained(&v618);
  v234 = [v233 stateMachine];
  v377[0] = MEMORY[0x1E69E9820];
  v377[1] = 3221225472;
  v377[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10_1375;
  v377[3] = &unk_1E872FAD8;
  objc_copyWeak(&v378, &v618);
  [v234 registerDefaultHandlerForEvent:@"Application did enter background" withBlock:v377];

  v235 = objc_loadWeakRetained(&v618);
  v236 = [v235 stateMachine];
  v625[0] = @"Showing video full screen";
  v625[1] = @"Showing extras video full screen outside extras content";
  v625[2] = @"Showing video full screen with post play content on screen";
  v237 = [MEMORY[0x1E695DEC8] arrayWithObjects:v625 count:3];
  v374[0] = MEMORY[0x1E69E9820];
  v374[1] = 3221225472;
  v374[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_11_1376;
  v374[3] = &unk_1E872FAB0;
  objc_copyWeak(&v376, &v618);
  v238 = v317;
  v375 = v238;
  [v236 registerHandlerForEvent:@"Application will enter foreground" onStates:v237 withBlock:v374];

  v239 = objc_loadWeakRetained(&v618);
  v240 = [v239 stateMachine];
  v624[0] = @"Showing multiview playback";
  v624[1] = @"Showing multiview playback in PIP";
  v241 = [MEMORY[0x1E695DEC8] arrayWithObjects:v624 count:2];
  v371[0] = MEMORY[0x1E69E9820];
  v371[1] = 3221225472;
  v371[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1378;
  v371[3] = &unk_1E87314E0;
  v328 = v327;
  v372 = v328;
  objc_copyWeak(&v373, &v618);
  [v240 registerHandlerForEvent:@"Application will enter foreground" onStates:v241 withBlock:v371];

  v242 = objc_loadWeakRetained(&v618);
  v243 = [v242 stateMachine];
  v369[0] = MEMORY[0x1E69E9820];
  v369[1] = 3221225472;
  v369[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1379;
  v369[3] = &unk_1E872FAD8;
  objc_copyWeak(&v370, &v618);
  [v243 registerDefaultHandlerForEvent:@"Application will enter foreground" withBlock:v369];

  v244 = objc_loadWeakRetained(&v618);
  v245 = [v244 stateMachine];
  v367[0] = MEMORY[0x1E69E9820];
  v367[1] = 3221225472;
  v367[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1381;
  v367[3] = &unk_1E872FAD8;
  objc_copyWeak(&v368, &v618);
  [v245 registerHandlerForEvent:@"Application will resign active" onState:@"Showing Extras content" withBlock:v367];

  v246 = objc_loadWeakRetained(&v618);
  v247 = [v246 stateMachine];
  v364[0] = MEMORY[0x1E69E9820];
  v364[1] = 3221225472;
  v364[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1382;
  v364[3] = &unk_1E872FAB0;
  objc_copyWeak(&v366, &v618);
  v318 = v204;
  v365 = v318;
  [v247 registerHandlerForEvent:@"Application did become active" onState:@"Showing Extras content" withBlock:v364];

  v248 = objc_loadWeakRetained(&v618);
  v249 = [v248 stateMachine];
  v362[0] = MEMORY[0x1E69E9820];
  v362[1] = 3221225472;
  v362[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1383;
  v362[3] = &unk_1E872FAD8;
  objc_copyWeak(&v363, &v618);
  [v249 registerHandlerForEvent:@"External playback type did change" onState:@"Showing multiview playback" withBlock:v362];

  v250 = objc_loadWeakRetained(&v618);
  v251 = [v250 stateMachine];
  v623[0] = @"Showing video full screen";
  v623[1] = @"Showing main video picture in picture";
  v252 = [MEMORY[0x1E695DEC8] arrayWithObjects:v623 count:2];
  v359[0] = MEMORY[0x1E69E9820];
  v359[1] = 3221225472;
  v359[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1384;
  v359[3] = &unk_1E872FAB0;
  objc_copyWeak(&v361, &v618);
  v301 = v293;
  v360 = v301;
  [v251 registerHandlerForEvent:@"Post play configuration time reached" onStates:v252 withBlock:v359];

  v253 = objc_loadWeakRetained(&v618);
  v254 = [v253 stateMachine];
  v356[0] = MEMORY[0x1E69E9820];
  v356[1] = 3221225472;
  v356[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1385;
  v356[3] = &unk_1E872FAB0;
  objc_copyWeak(&v358, &v618);
  v255 = v238;
  v357 = v255;
  [v254 registerHandlerForEvent:@"Post play has been configured" onState:@"Showing video full screen" withBlock:v356];

  v256 = objc_loadWeakRetained(&v618);
  v257 = [v256 stateMachine];
  v353[0] = MEMORY[0x1E69E9820];
  v353[1] = 3221225472;
  v353[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1386;
  v353[3] = &unk_1E872FAB0;
  objc_copyWeak(&v355, &v618);
  v299 = v255;
  v354 = v299;
  [v257 registerHandlerForEvent:@"Post play time boundary crossed" onState:@"Showing video full screen" withBlock:v353];

  v258 = objc_loadWeakRetained(&v618);
  v259 = [v258 stateMachine];
  v350[0] = MEMORY[0x1E69E9820];
  v350[1] = 3221225472;
  v350[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1387;
  v350[3] = &unk_1E87314E0;
  v260 = v216;
  v351 = v260;
  objc_copyWeak(&v352, &v618);
  [v259 registerHandlerForEvent:@"Post play cancelled" onState:@"Showing video full screen with post play content on screen" withBlock:v350];

  v261 = objc_loadWeakRetained(&v618);
  v262 = [v261 stateMachine];
  v622[0] = @"Post play item selected";
  v622[1] = @"Post play auto play timer did complete";
  v263 = [MEMORY[0x1E695DEC8] arrayWithObjects:v622 count:2];
  v621 = @"Showing video full screen with post play content on screen";
  v264 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v621 count:1];
  v346[0] = MEMORY[0x1E69E9820];
  v346[1] = 3221225472;
  v346[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1388;
  v346[3] = &unk_1E8731700;
  v297 = v260;
  v347 = v297;
  objc_copyWeak(&v349, &v618);
  v265 = v220;
  v348 = v265;
  [v262 registerHandlerForEvents:v263 onStates:v264 withBlock:v346];

  v266 = objc_loadWeakRetained(&v618);
  v267 = [v266 stateMachine];
  v343[0] = MEMORY[0x1E69E9820];
  v343[1] = 3221225472;
  v343[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1393;
  v343[3] = &unk_1E872FAB0;
  objc_copyWeak(&v345, &v618);
  v268 = v265;
  v344 = v268;
  [v267 registerHandlerForEvent:@"Post play hide playback" onState:@"Showing video full screen with post play content on screen" withBlock:v343];

  v269 = objc_loadWeakRetained(&v618);
  v270 = [v269 stateMachine];
  v620[0] = @"Showing video full screen with post play content on screen";
  v620[1] = @"Showing post play content without playback UI";
  v271 = [MEMORY[0x1E695DEC8] arrayWithObjects:v620 count:2];
  v341[0] = MEMORY[0x1E69E9820];
  v341[1] = 3221225472;
  v341[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1395;
  v341[3] = &unk_1E8730120;
  v272 = v268;
  v342 = v272;
  [v270 registerHandlerForEvent:@"Playback container did disappear" onStates:v271 withBlock:v341];

  v273 = objc_loadWeakRetained(&v618);
  v274 = [v273 stateMachine];
  [v274 registerHandlerForEvent:@"Background media enter picture in picture" onState:@"Not showing anything" withBlock:&__block_literal_global_1398];

  v275 = objc_loadWeakRetained(&v618);
  v276 = [v275 stateMachine];
  v339[0] = MEMORY[0x1E69E9820];
  v339[1] = 3221225472;
  v339[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1399;
  v339[3] = &unk_1E872FAD8;
  objc_copyWeak(&v340, &v618);
  [v276 registerHandlerForEvent:@"Background media picture in picture did end" onState:@"Playing background media in picture and picture" withBlock:v339];

  v277 = objc_loadWeakRetained(&v618);
  v278 = [v277 stateMachine];
  v619[0] = @"Showing video full screen";
  v619[1] = @"Showing multiview playback fullscreen";
  v279 = [MEMORY[0x1E695DEC8] arrayWithObjects:v619 count:2];
  v336[0] = MEMORY[0x1E69E9820];
  v336[1] = 3221225472;
  v336[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1400;
  v336[3] = &unk_1E872FAB0;
  objc_copyWeak(&v338, &v618);
  v295 = v272;
  v337 = v295;
  [v278 registerHandlerForEvent:@"Transfer player to background media controller" onStates:v279 withBlock:v336];

  v280 = objc_loadWeakRetained(&v618);
  v281 = [v280 stateMachine];
  [v281 registerHandlerForEvent:@"Main player long loading timer did fire" onState:@"Showing video full screen" withBlock:&__block_literal_global_1405];

  v282 = objc_loadWeakRetained(&v618);
  v283 = [v282 stateMachine];
  v334[0] = MEMORY[0x1E69E9820];
  v334[1] = 3221225472;
  v334[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1406;
  v334[3] = &unk_1E872FAD8;
  objc_copyWeak(&v335, &v618);
  [v283 registerHandlerForEvent:@"Exit playback button pressed" onState:@"Showing long loading dialog" withBlock:v334];

  v284 = objc_loadWeakRetained(&v618);
  v285 = [v284 stateMachine];
  v332[0] = MEMORY[0x1E69E9820];
  v332[1] = 3221225472;
  v332[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1410;
  v332[3] = &unk_1E872FAD8;
  objc_copyWeak(&v333, &v618);
  [v285 registerHandlerForEvent:@"Continue watching button pressed" onState:@"Showing long loading dialog" withBlock:v332];

  objc_destroyWeak(&v333);
  objc_destroyWeak(&v335);

  objc_destroyWeak(&v338);
  objc_destroyWeak(&v340);

  objc_destroyWeak(&v345);
  objc_destroyWeak(&v349);

  objc_destroyWeak(&v352);
  objc_destroyWeak(&v355);

  objc_destroyWeak(&v358);
  objc_destroyWeak(&v361);
  objc_destroyWeak(&v363);

  objc_destroyWeak(&v366);
  objc_destroyWeak(&v368);
  objc_destroyWeak(&v370);
  objc_destroyWeak(&v373);

  objc_destroyWeak(&v376);
  objc_destroyWeak(&v378);
  objc_destroyWeak(&v380);
  objc_destroyWeak(&v383);

  objc_destroyWeak(&v385);
  objc_destroyWeak(&v387);

  objc_destroyWeak(&v392);
  objc_destroyWeak(&v395);

  objc_destroyWeak(&v397);
  objc_destroyWeak(&v400);

  objc_destroyWeak(&v404);
  objc_destroyWeak(&v408);

  objc_destroyWeak(&v413);
  objc_destroyWeak(&v415);

  objc_destroyWeak(&v420);
  objc_destroyWeak(&v422);
  objc_destroyWeak(&v424);

  objc_destroyWeak(&v427);
  objc_destroyWeak(&v430);

  objc_destroyWeak(&v434);
  objc_destroyWeak(&v436);

  objc_destroyWeak(&v442);
  objc_destroyWeak(&v448);

  objc_destroyWeak(&v451);
  objc_destroyWeak(&v453);

  objc_destroyWeak(&v456);
  objc_destroyWeak(&v458);
  objc_destroyWeak(&v460);
  objc_destroyWeak(&v462);

  objc_destroyWeak(&v465);
  objc_destroyWeak(&v468);

  objc_destroyWeak(&v473);
  objc_destroyWeak(&v478);

  objc_destroyWeak(&v480);
  objc_destroyWeak(&v482);

  objc_destroyWeak(&v489);
  objc_destroyWeak(&v492);

  objc_destroyWeak(&v495);
  objc_destroyWeak(&v501);

  objc_destroyWeak(&v508);
  objc_destroyWeak(&v511);

  objc_destroyWeak(&v514);
  objc_destroyWeak(&v517);

  objc_destroyWeak(&v520);
  objc_destroyWeak(&v522);
  objc_destroyWeak(&v524);

  objc_destroyWeak(&v529);
  objc_destroyWeak(&v533);

  objc_destroyWeak(&v536);
  objc_destroyWeak(&v539);

  objc_destroyWeak(&v547);
  objc_destroyWeak(&v550);

  objc_destroyWeak(&v557);
  objc_destroyWeak(&v560);

  objc_destroyWeak(&v564);
  objc_destroyWeak(&v566);

  objc_destroyWeak(&v569);
  objc_destroyWeak(&v573);

  objc_destroyWeak(&v576);
  objc_destroyWeak(&v578);

  objc_destroyWeak(&v580);
  objc_destroyWeak(&v582);

  objc_destroyWeak(&v584);
  objc_destroyWeak(&v588);

  objc_destroyWeak(&v591);
  objc_destroyWeak(&v593);

  objc_destroyWeak(&v595);
  objc_destroyWeak(&v597);

  objc_destroyWeak(&v600);
  objc_destroyWeak(&v602);

  objc_destroyWeak(&v605);
  objc_destroyWeak(&v607);

  objc_destroyWeak(&v609);
  objc_destroyWeak(&v615);

  objc_destroyWeak(&v617);
  objc_destroyWeak(&v618);
}

- (BOOL)_shouldShowPerformanceDebugger
{
  v2 = [MEMORY[0x1E69DF6E0] sharedInstance];
  if ([v2 performanceDebuggerEnabled])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E69DF6E0] sharedInstance];
    v3 = [v4 performanceDebuggerVerboseEnabled];
  }

  return v3;
}

- (BOOL)_shouldShowTimedMetadataDebugger
{
  v2 = [MEMORY[0x1E69DF6E0] sharedInstance];
  if ([v2 capellaDebuggerEnabled])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E69DF6E0] sharedInstance];
    v3 = [v4 capellaMusicInfoEnabled];
  }

  return v3;
}

- (void)_performEnterForegroundOperations
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlaybackManager *)self datePlaybackWasPaused];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [(VUIPlaybackManager *)self datePlaybackWasPaused];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;

    v8 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134217984;
      v28 = v7;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "After foregrounding, playback has been paused for %f seconds", &v27, 0xCu);
    }

    if (v7 > 900.0)
    {
      [(VUIPlaybackManager *)self _handlePausedTooLong:0];
      v9 = sLogObject_5;
      if (!os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v27) = 0;
      v10 = "Not restarting playback since it was stopped for being paused too long";
LABEL_18:
      v22 = v9;
LABEL_19:
      v23 = 2;
LABEL_20:
      _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, v10, &v27, v23);
      return;
    }

    v11 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134218240;
      v28 = 900.0 - v7;
      v29 = 2048;
      v30 = (900.0 - v7) / 60.0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Creating paused too long timer due to foregrounding.  Will stop after %f seconds (%f minutes) of being paused", &v27, 0x16u);
    }

    v12 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__handlePausedTooLong_ selector:0 userInfo:0 repeats:900.0];
    v13 = [(VUIPlaybackManager *)self pausedTooLongTimer];
    [v13 invalidate];

    [(VUIPlaybackManager *)self setPausedTooLongTimer:v12];
  }

  if (![(VUIPlaybackManager *)self shouldRestartIfAppHasBeenBackgroundedTooLong])
  {
    v9 = sLogObject_5;
    if (!os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v27) = 0;
    v10 = "Not restarting playback since shouldRestartIfAppHasBeenBackgroundedTooLong is NO";
    goto LABEL_18;
  }

  v14 = [(VUIPlaybackManager *)self dateAppWasBackgrounded];

  if (v14)
  {
    v15 = [MEMORY[0x1E695DF00] date];
    v16 = [(VUIPlaybackManager *)self dateAppWasBackgrounded];
    [v15 timeIntervalSinceDate:v16];
    v18 = v17;

    if (v18 <= 60.0)
    {
      v24 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 134217984;
        v28 = 60.0;
        v10 = "Not restarting playback since app was backgrounded for less than %f seconds";
        v22 = v24;
        v23 = 12;
        goto LABEL_20;
      }
    }

    else
    {
      v19 = +[VUIGroupActivitiesManagerObjC isEligibleForSession];
      v20 = sLogObject_5;
      v21 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (!v21)
        {
          return;
        }

        LOWORD(v27) = 0;
        v10 = "Not restarting playback since it is eligible for GroupSession";
        v22 = v20;
        goto LABEL_19;
      }

      if (v21)
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Restarting playback since app has been backgrounded for too long", &v27, 2u);
      }

      v25 = [(VUIPlaybackManager *)self activePlayer];
      v26 = [MEMORY[0x1E69D5A40] paused];
      [v25 restartPlaybackWithState:v26];
    }
  }

  else if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
  {
    [VUIPlaybackManager _performEnterForegroundOperations];
  }
}

- (BOOL)isFullscreenPlaybackUIBeingShown
{
  v2 = [(VUIPlaybackManager *)self stateMachine];
  v3 = [v2 currentState];
  v4 = [VUIPlaybackManager _isFullScreenPlaybackState:v3];

  return v4;
}

void __26__VUIPlaybackManager_init__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6 && v7)
  {
    v9 = [v6 isEqualToString:@"Not showing anything"];
    v10 = [v7 isEqualToString:@"Not showing anything"];
    if (v9 != v10)
    {
      v11 = v10 ^ 1;
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0] object:WeakRetained];

      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = [v13 biomeSerialQueue];
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __26__VUIPlaybackManager_init__block_invoke_2;
      v31 = &unk_1E872EDE0;
      v33 = v11;
      objc_copyWeak(&v32, (a1 + 40));
      dispatch_async(v14, &v28);

      objc_destroyWeak(&v32);
    }

    v15 = PIPStates();
    v16 = [v15 containsObject:v6];

    v17 = PIPStates();
    v18 = [v17 containsObject:v7];

    if (v16 != v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = [MEMORY[0x1E696AD98] numberWithBool:v18];
      [v19 setObject:v20 forKey:VUIPlaybackManagerNotificationKeyIsPIPing[0]];

      v21 = [*(a1 + 32) activePlayer];
      [v19 vui_setObjectIfNotNil:v21 forKey:VUIPlaybackManagerNotificationKeyPlayer[0]];

      v22 = [MEMORY[0x1E696AD88] defaultCenter];
      [v22 postNotificationName:VUIPlaybackManagerIsPIPingDidChangeNotification[0] object:WeakRetained userInfo:v19];
    }

    v23 = [VUIPlaybackManager _isFullScreenPlaybackState:v6, v28, v29, v30, v31];
    if (v23 != [VUIPlaybackManager _isFullScreenPlaybackState:v7])
    {
      v24 = [MEMORY[0x1E696AD88] defaultCenter];
      [v24 postNotificationName:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];
    }

    v25 = [VUIPlaybackManager _isShowingExtrasState:v6];
    if (v25 != [VUIPlaybackManager _isShowingExtrasState:v7])
    {
      v26 = [MEMORY[0x1E696AD88] defaultCenter];
      [v26 postNotificationName:VUIPlaybackManagerShowingExtrasDidChangeNotification[0] object:0];
    }

    v27 = [v6 isEqualToString:@"Showing multiview playback"];
    if (v27 != [v7 isEqualToString:@"Showing multiview playback"])
    {
      [WeakRetained _updateMultiviewReportingMetrics];
    }
  }
}

void __26__VUIPlaybackManager_init__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sLogObject_5;
  v4 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Creating audio and subtitle language donation source", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = BiomeLibrary();
    v7 = [v6 App];
    v8 = [v7 LanguageConsumption];
    v9 = [v8 source];
    [WeakRetained setBiomeAudioAndSubtitleLanguageSource:v9];
  }

  else
  {
    if (v4)
    {
      *v10 = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Releasing audio and subtitle language donation source", v10, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setBiomeAudioAndSubtitleLanguageSource:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v81 = *MEMORY[0x1E69E9840];
  v60 = a3;
  v61 = a4;
  v10 = a5;
  v59 = v10;
  if (__PlayerAVPlayerKVOContext_0 == a6)
  {
    val = [(VUIPlaybackManager *)self activePlayer];
    v11 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v78 = val;
      v79 = 2112;
      v80 = v61;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "AVPVC setPlayer late (KVO), activePlayer: %@, object: %@", buf, 0x16u);
    }

    if (val != v61)
    {
      v12 = v61;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v13 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
      v14 = [v13 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v14)
      {
        v15 = *v69;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v69 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v68 + 1) + 8 * i);
            v18 = [v17 player];
            v19 = [v18 playlist];
            v20 = [v12 playlist];
            v21 = [v19 isEqualToPlaylist:v20];

            if (v21)
            {
              v37 = [v17 player];
              objc_initWeak(buf, v37);

              v38 = [v17 playerViewController];
              objc_initWeak(&location, v38);

              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __69__VUIPlaybackManager_observeValueForKeyPath_ofObject_change_context___block_invoke_563;
              block[3] = &unk_1E872EFE8;
              objc_copyWeak(&v66, buf);
              objc_copyWeak(&v67, &location);
              dispatch_async(MEMORY[0x1E69E96A0], block);
              objc_destroyWeak(&v67);
              objc_destroyWeak(&v66);
              objc_destroyWeak(&location);
              objc_destroyWeak(buf);
              goto LABEL_38;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v68 objects:v76 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_38:

      goto LABEL_52;
    }

    v39 = [(VUIPlaybackManager *)self mainPlayer];
    v40 = v39 == v61;

    if (v40)
    {
      v57 = [(VUIPlaybackManager *)self mainAVPlayerViewController];
    }

    else
    {
      v41 = [(VUIPlaybackManager *)self extrasPlayer];
      v42 = v41 == v61;

      if (!v42)
      {
        v12 = 0;
LABEL_51:
        objc_initWeak(buf, val);
        objc_initWeak(&location, v12);
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __69__VUIPlaybackManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v72[3] = &unk_1E872EFE8;
        objc_copyWeak(&v73, buf);
        objc_copyWeak(&v74, &location);
        dispatch_async(MEMORY[0x1E69E96A0], v72);
        objc_destroyWeak(&v74);
        objc_destroyWeak(&v73);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
LABEL_52:

        goto LABEL_53;
      }

      v57 = [(VUIPlaybackManager *)self extrasAVPlayerViewController];
    }

    v12 = v57;
    goto LABEL_51;
  }

  if (__PlayerInitialMediaItemHasCompletedInitialLoadingKVOContext == a6)
  {
    v22 = [(VUIPlaybackManager *)self activePlayer];
    if (v22 == v61)
    {
      v23 = [(VUIPlaybackManager *)self activePlayer];
      v24 = [v23 initialMediaItemHasCompletedInitialLoading];

      if (!v24)
      {
        goto LABEL_53;
      }

      v25 = [(VUIPlaybackManager *)self activePlayer];
      v26 = [v25 currentMediaItem];
      v22 = [v26 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];

      if (v22 && ([v22 complete] & 1) == 0)
      {
        [v22 addEndEventWithName:*MEMORY[0x1E69D6040]];
        [v22 addSingleShotEventWithName:*MEMORY[0x1E69D6020] value:*MEMORY[0x1E69D6070]];
      }

      v27 = [(VUIPlaybackManager *)self activePlayer];
      v28 = [v27 currentMediaItem];

      if (v28)
      {
        [(VUIPlaybackManager *)self _setupFeaturesFromMainPlayersCurrentMediaItem];
      }

      v29 = [(VUIPlaybackManager *)self initialPlaybackStartDate];

      if (!v29)
      {
        v30 = [MEMORY[0x1E695DF00] date];
        [(VUIPlaybackManager *)self setInitialPlaybackStartDate:v30];
      }

      [(VUIPlaybackManager *)self setAutoPlayedVideosCount:[(VUIPlaybackManager *)self autoPlayedVideosCount]+ 1];
      v31 = [v28 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C68]];
      if ([v31 integerValue] == 3)
      {
        v32 = [(VUIPlaybackManager *)self activePlayer];
        v33 = [v32 externalPlaybackType];

        if (v33 == 2)
        {
          v34 = +[VUIPlaybackSettings sharedSettings];
          [v34 setPreferAVAdapterCompatibility:1];
        }
      }

      v35 = +[VUIPostPlayUpsellConfig sharedInstance];
      [v35 setHasShownPostPlay:0];
    }

    goto LABEL_53;
  }

  if (__PlayerAVPlayerViewControllerDisplaySizeKVOContext == a6)
  {
    v36 = [(VUIPlaybackManager *)self avPlayerViewController];

    if (v36 == v61)
    {
      [(VUIPlaybackManager *)self _notifyAVPlayerViewControllerDisplaySize];
      [(VUIPlaybackManager *)self _showOrUpdateAdvisoryViewsIfNeeded];
      [(VUIPlaybackManager *)self _updateMultiviewButtonState];
    }
  }

  else if (__PlayerMediaItemDurationKVOContext == a6)
  {
    v43 = [(VUIPlaybackManager *)self mainPlayer];

    if (v43 == v61)
    {
      [(VUIPlaybackManager *)self _configureStillWatchingFeatureMonitoringIfLivePlayback];
      v44 = +[VUIPlaybackTabManager sharedInstance];
      v45 = [v44 isPlayerTabsEnabled];

      if (v45)
      {
        objc_initWeak(buf, self);
        v46 = +[VUIPlaybackTabManager sharedInstance];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __69__VUIPlaybackManager_observeValueForKeyPath_ofObject_change_context___block_invoke_567;
        v63[3] = &unk_1E872E4B8;
        objc_copyWeak(&v64, buf);
        [v46 updatePlayerTabsExcludingCanonicals:0 completion:v63];

        WeakRetained = objc_loadWeakRetained(buf);
        [WeakRetained _removeAdvisoryViews];

        objc_destroyWeak(&v64);
        objc_destroyWeak(buf);
      }
    }
  }

  else if (__PlayerViewControllerFrameKVOContext == a6)
  {
    v48 = [(VUIPlaybackManager *)self multiPlayerViewController];
    [v61 frame];
    v51 = [v48 isSupportedScreenSize:{v49, v50}];

    if (v51)
    {
      v52 = [(VUIPlaybackManager *)self avPlayerViewController];
      v53 = [(VUIPlaybackManager *)self multiPlayerViewController];
      [v52 setDelegate:v53];

      v54 = [(VUIPlaybackManager *)self playbackContainerViewController];
      v55 = [(VUIPlaybackManager *)self multiPlayerViewController];
      [v54 embedMultiPlayerViewController:v55];

      v56 = [(VUIPlaybackManager *)self multiPlayerViewController];
      [v56 exitFullscreenWithCompletion:0];

      [v61 removeObserver:self forKeyPath:@"frame" context:__PlayerViewControllerFrameKVOContext];
      [(VUIPlaybackManager *)self setTrackingPlayerViewFrame:0];
    }
  }

  else if (__PlayerSelectedAudioOptionKVOContext == a6)
  {
    [(VUIPlaybackManager *)self _selectedAudioOptionDidChangeForPlayer:v61];
  }

  else if (__PlayerSelectedSubtitleOptionKVOContext == a6)
  {
    [(VUIPlaybackManager *)self _selectedSubtitleOptionDidChangeForPlayer:v61];
  }

  else
  {
    v62.receiver = self;
    v62.super_class = VUIPlaybackManager;
    [(VUIPlaybackManager *)&v62 observeValueForKeyPath:v60 ofObject:v61 change:v10 context:a6];
  }

LABEL_53:
}

void __69__VUIPlaybackManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    v6 = [v5 avPlayer];
    v10 = 138412546;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "AVPVC setPlayer late (KVO), activePlayer: %@, AVPlayer: %@", &v10, 0x16u);
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 avPlayer];
  [v7 setPlayer:v9];
}

void __69__VUIPlaybackManager_observeValueForKeyPath_ofObject_change_context___block_invoke_563(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    v6 = [v5 avPlayer];
    v10 = 138412546;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "AVPVC setPlayer late (KVO), activePlayer: %@, AVPlayer: %@", &v10, 0x16u);
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 avPlayer];
  [v7 setPlayer:v9];
}

void __69__VUIPlaybackManager_observeValueForKeyPath_ofObject_change_context___block_invoke_567(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupInfoTab];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateMultiviewButtonState];
}

- (void)presentPlaylist:(id)a3 fromViewController:(id)a4 dismissalOperation:(int64_t)a5 allowsCellular:(BOOL)a6 animated:(BOOL)a7 userInfo:(id)a8 completion:(id)a9
{
  v10 = a7;
  v11 = a6;
  v62 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v18 = a9;
  v19 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    *buf = 138413570;
    v51 = v15;
    v52 = 2112;
    if (v11)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v53 = v16;
    if (v10)
    {
      v20 = @"YES";
    }

    v54 = 2048;
    v55 = a5;
    v56 = 2112;
    v57 = v21;
    v58 = 2112;
    v59 = v20;
    v60 = 2112;
    v61 = v17;
    _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "presentPlaylist:%@, presentingViewController:%@, dismissalOperation:%ld, allowsCellular:%@, animated:%@, userInfo:%@", buf, 0x3Eu);
  }

  if (!v15 || ([v15 trackList], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, !v23))
  {
    v43 = sLogObject_5;
    if (!os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v44 = "Not presenting playlist since playlist is empty";
    goto LABEL_26;
  }

  if (v16)
  {
    v24 = [(VUIPlaybackManager *)self stateMachine];
    v25 = [v24 currentState];

    v47 = v25;
    if ((([v25 isEqualToString:@"Showing main video picture in picture"] & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"Showing extras video picture in picture on extras content") & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"Showing extras video picture in picture outside extras content")) && (-[VUIPlaybackManager activePlayer](self, "activePlayer"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "playlist"), v27 = v10, v28 = v16, v29 = v11, v30 = v17, v31 = self, v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v15, "isEqualToPlaylist:", v32), v32, self = v31, v17 = v30, v11 = v29, v16 = v28, v10 = v27, v26, v33) && !+[VUIGroupActivitiesManagerObjC isEligibleForSession](VUIGroupActivitiesManagerObjC, "isEligibleForSession"))
    {
      v45 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v45, OS_LOG_TYPE_DEFAULT, "Content is already being played in PIP.  Calling stopPictureInPicture to restore to fullscreen", buf, 2u);
      }

      v39 = [(VUIPlaybackManager *)self avPlayerViewController];
      [v39 stopPictureInPicture];
    }

    else
    {
      [(VUIPlaybackManager *)self configureAudioSessionForBackgroundPlayback:0 usingPlaybackCategory:0 isMultiview:0, self];
      if (+[VUIUtilities isSUIEnabled])
      {
        v34 = 2;
      }

      else
      {
        v34 = 0;
      }

      v48[0] = @"PlaylistKey";
      v48[1] = @"PresentingViewControllerKey";
      v49[0] = v15;
      v49[1] = v16;
      v48[2] = @"DismissalOperationKey";
      v35 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
      v49[2] = v35;
      v48[3] = @"AnimatedKey";
      v36 = [MEMORY[0x1E696AD98] numberWithBool:v10];
      v49[3] = v36;
      v48[4] = @"AllowCellularUsageKey";
      v37 = [MEMORY[0x1E696AD98] numberWithBool:v11];
      v49[4] = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:5];
      v39 = [v38 mutableCopy];

      if (v17)
      {
        [v39 addEntriesFromDictionary:v17];
      }

      if (v18)
      {
        v40 = _Block_copy(v18);
        v41 = [v40 copy];
        [v39 setObject:v41 forKey:@"CompletionKey"];
      }

      v42 = [v46 stateMachine];
      [v42 postEvent:@"Present playlist" withContext:0 userInfo:v39];
    }

    goto LABEL_35;
  }

  v43 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v44 = "Not presenting playlist since presenting view controller is nil";
LABEL_26:
    _os_log_impl(&dword_1E323F000, v43, OS_LOG_TYPE_DEFAULT, v44, buf, 2u);
  }

LABEL_27:
  if (v18)
  {
    v18[2](v18);
  }

LABEL_35:
}

- (void)presentContainerViewController:(id)a3 withPlayer:(id)a4 andPlayerViewController:(id)a5 completion:(id)a6
{
  v10 = MEMORY[0x1E695DF90];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v18 = [v10 dictionary];
  [v18 vui_setObjectIfNotNil:v14 forKey:@"PlaybackContainerKey"];

  [v18 vui_setObjectIfNotNil:v12 forKey:@"PlayerViewControllerKey"];
  [v18 vui_setObjectIfNotNil:v13 forKey:@"PlayerKey"];

  v15 = _Block_copy(v11);
  [v18 vui_setObjectIfNotNil:v15 forKey:@"CompletionKey"];

  v16 = [(VUIPlaybackManager *)self stateMachine];
  v17 = [v18 copy];
  [v16 postEvent:@"Present player container view controller" withContext:0 userInfo:v17];
}

- (void)presentExtrasWithURL:(id)a3 storeID:(id)a4 actionParams:(id)a5 hlsURL:(id)a6 fromViewController:(id)a7 completion:(id)a8
{
  v36[3] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14 || ![v15 length] || !objc_msgSend(v16, "length"))
  {
    v29 = sLogObject_5;
    if (!os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *v32 = 0;
    v30 = "Not presenting extras since either extrasURL, storeID or actionsParams is invalid.";
    v31 = v29;
LABEL_14:
    _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, v30, v32, 2u);
    goto LABEL_15;
  }

  v20 = sLogObject_5;
  v21 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (!v18)
  {
    if (!v21)
    {
      goto LABEL_15;
    }

    *v32 = 0;
    v30 = "Not presenting extras since presenting view controller is nil";
    v31 = v20;
    goto LABEL_14;
  }

  if (v21)
  {
    *v32 = 0;
    _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Presenting extras", v32, 2u);
  }

  v22 = *MEMORY[0x1E69D5AE0];
  v35[0] = *MEMORY[0x1E69D5BB0];
  v35[1] = v22;
  v36[0] = v14;
  v36[1] = v16;
  v35[2] = *MEMORY[0x1E69D5DA8];
  v36[2] = v15;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v24 = [v23 mutableCopy];

  if (v17)
  {
    [v24 setObject:v17 forKey:@"HLSURLKey"];
  }

  v33[0] = @"PresentingViewControllerKey";
  v33[1] = @"DismissalOperationKey";
  v34[0] = v18;
  v34[1] = &unk_1F5E5CFA8;
  v33[2] = @"AnimatedKey";
  v33[3] = @"ExtrasDictionaryKey";
  v34[2] = MEMORY[0x1E695E118];
  v34[3] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
  v26 = [v25 mutableCopy];

  if (v19)
  {
    v27 = [v19 copy];
    [v26 setObject:v27 forKey:@"CompletionKey"];
  }

  v28 = [(VUIPlaybackManager *)self stateMachine];
  [v28 postEvent:@"Present playlist" withContext:0 userInfo:v26];

LABEL_15:
}

- (BOOL)isPlaylistBeingPresented:(id)a3
{
  v4 = a3;
  if (v4 && (-[VUIPlaybackManager activePlayer](self, "activePlayer"), v5 = objc_claimAutoreleasedReturnValue(), [v5 playlist], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [(VUIPlaybackManager *)self activePlayer];
    v8 = [v7 playlist];
    v9 = [v4 isEqualToPlaylist:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isPlaylistBeingPresentedFullScreen:(id)a3
{
  v4 = a3;
  if ([(VUIPlaybackManager *)self isFullscreenPlaybackUIBeingShown]&& [(VUIPlaybackManager *)self isPlaylistBeingPresented:v4])
  {
    v5 = 1;
  }

  else if ([(VUIPlaybackManager *)self isPlaylistBeingPresentedInMultiview:v4])
  {
    v5 = [(VUIPlaybackManager *)self multiviewPlayerCount]== 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPlaylistBeingPresentedInMultiview:(id)a3
{
  v3 = [(VUIPlaybackManager *)self _multiviewInfoForPlaylist:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)dismissPlaybackAnimated:(BOOL)a3 leaveGroupActivitySession:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Dismiss playback", &v19, 2u);
  }

  v10 = +[VUIGroupActivitiesManagerObjC isSessionActive];
  v11 = sLogObject_5;
  v12 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (!v12)
    {
      goto LABEL_13;
    }

    LOWORD(v19) = 0;
    v13 = "No session is active, ignoring leaveGroupActivitySession param";
LABEL_12:
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, v13, &v19, 2u);
    goto LABEL_13;
  }

  if (!v5)
  {
    if (!v12)
    {
      goto LABEL_13;
    }

    LOWORD(v19) = 0;
    v13 = "Session is active but leaveGroupActivitySession is NO.  Not leaving session";
    goto LABEL_12;
  }

  if (v12)
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Session is active and leaveGroupActivitySession is YES.  Leaving session", &v19, 2u);
  }

  +[VUIGroupActivitiesManagerObjC leaveSession];
LABEL_13:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{v6, v19, @"AnimatedKey"}];
  v21[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v16 = [v15 mutableCopy];

  if (v8)
  {
    v17 = [v8 copy];
    [v16 setObject:v17 forKey:@"CompletionKey"];
  }

  v18 = [(VUIPlaybackManager *)self stateMachine];
  [v18 postEvent:@"Dismiss playback" withContext:0 userInfo:v16];
}

- (void)dismissPostPlayAnimated:(BOOL)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"PostPlaySlideOutAnimationKey";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v6 = [(VUIPlaybackManager *)self stateMachine];
  [v6 postEvent:@"Post play cancelled" withContext:0 userInfo:v5];
}

- (void)presentMultiviewWithPlaylists:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [v9 setObject:v10 forKey:@"AnimatedKey"];

  if ([v13 count])
  {
    [v9 setObject:v13 forKey:@"PlaylistsKey"];
  }

  if (v8)
  {
    [v9 setObject:v8 forKey:@"PresentingViewControllerKey"];
  }

  v11 = [(VUIPlaybackManager *)self stateMachine];
  v12 = [v9 copy];
  [v11 postEvent:@"Show multiview playback" withContext:0 userInfo:v12];
}

- (void)addPlaylistToMultiview:(id)a3 atIndex:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v17 = a3;
  v10 = a6;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [v11 setObject:v12 forKey:@"AnimatedKey"];

  if (v17)
  {
    [v11 setObject:v17 forKey:@"PlaylistKey"];
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v11 setObject:v13 forKey:@"IndexKey"];
  }

  if (v10)
  {
    v14 = _Block_copy(v10);
    [v11 setObject:v14 forKey:@"CompletionKey"];
  }

  v15 = [(VUIPlaybackManager *)self stateMachine];
  v16 = [v11 copy];
  [v15 postEvent:@"Add multiview playback" withContext:0 userInfo:v16];
}

- (void)replacePlaylistInMultiviewAtIndex:(int64_t)a3 withPlaylist:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v13 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [v8 setObject:v9 forKey:@"AnimatedKey"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v8 setObject:v10 forKey:@"IndexKey"];

  if (v13)
  {
    [v8 setObject:v13 forKey:@"PlaylistKey"];
  }

  v11 = [(VUIPlaybackManager *)self stateMachine];
  v12 = [v8 copy];
  [v11 postEvent:@"Replace multiview playback" withContext:0 userInfo:v12];
}

- (void)removePlaylistFromMultiview:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v6 setObject:v7 forKey:@"AnimatedKey"];

  if (v10)
  {
    [v6 setObject:v10 forKey:@"PlaylistKey"];
  }

  v8 = [(VUIPlaybackManager *)self stateMachine];
  v9 = [v6 copy];
  [v8 postEvent:@"Remove multiview playback" withContext:0 userInfo:v9];
}

- (void)removeFromMultiviewWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(VUIPlaybackManager *)self indexOfMediaItemInMultiviewWithIdentifier:a3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
    v9 = [v8 count];

    if (v7 < v9)
    {
      v10 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
      v15 = [v10 objectAtIndex:v7];

      v11 = [v15 player];
      v12 = [v11 playlist];

      if (v12)
      {
        v13 = [v15 player];
        v14 = [v13 playlist];

        [(VUIPlaybackManager *)self removePlaylistFromMultiview:v14 animated:v4];
      }
    }
  }
}

- (unint64_t)indexOfMediaItemInMultiviewWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E69D5AE8];
    while (1)
    {
      v9 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
      v10 = [v9 objectAtIndex:v7];

      v11 = [v10 player];
      v12 = [v11 currentMediaItem];
      v13 = [v12 mediaItemMetadataForProperty:v8];

      LOBYTE(v11) = [v13 isEqualToString:v4];
      if (v11)
      {
        break;
      }

      ++v7;
      v14 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
      v15 = [v14 count];

      if (v7 >= v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (unint64_t)indexOfMediaItemInMultiviewWithPlayer:(id)a3
{
  v4 = a3;
  v5 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
      v9 = [v8 objectAtIndex:v7];

      v10 = [v9 player];

      if (v10 == v4)
      {
        break;
      }

      ++v7;
      v11 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
      v12 = [v11 count];

      if (v7 >= v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (int64_t)multiviewPlayerCount
{
  v2 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v3 = [v2 count];

  return v3;
}

- (int64_t)maxMultiviewPlayerCount
{
  v2 = +[VUIFeaturesConfiguration sharedInstance];
  v3 = [v2 multiviewConfig];
  v4 = [v3 maximumPlayerCount];

  return v4;
}

- (BOOL)isMultiviewPlaybackUIBeingShown
{
  v2 = [(VUIPlaybackManager *)self stateMachine];
  v3 = [v2 currentState];
  v4 = [v3 isEqualToString:@"Showing multiview playback"];

  return v4;
}

+ (BOOL)_isFullScreenPlaybackState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Showing video full screen"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Showing video full screen with post play content on screen") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Waiting for AVPlayerViewController presentation to complete") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Showing extras video full screen outside extras content") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Showing multiview playback fullscreen") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Showing multiview playback fullscreen due to small screen size"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Showing playback in assistive access"];
  }

  return v4;
}

- (BOOL)isShowingExtras
{
  v2 = [(VUIPlaybackManager *)self stateMachine];
  v3 = [v2 currentState];
  v4 = [VUIPlaybackManager _isShowingExtrasState:v3];

  return v4;
}

+ (BOOL)_isTipKitEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = +[VUIFeaturesConfiguration sharedInstance];
    v4 = [v3 tipKitConfig];
    v5 = [v4 isEnabled];

    LOBYTE(v2) = v5;
  }

  return v2;
}

+ (BOOL)_isShowingExtrasState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Showing Extras content"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Showing extras video picture in picture on extras content"];
  }

  return v4;
}

- (BOOL)isPlaybackUIBeingShown
{
  v2 = [(VUIPlaybackManager *)self stateMachine];
  v3 = [v2 currentState];
  v4 = [v3 isEqualToString:@"Not showing anything"];

  return v4 ^ 1;
}

- (BOOL)isPIPing
{
  v2 = [(VUIPlaybackManager *)self stateMachine];
  v3 = [v2 currentState];

  v4 = PIPStates();
  v5 = [v4 containsObject:v3];

  return v5;
}

- (BOOL)isPIPingBackgroundPlayback
{
  v2 = [(VUIPlaybackManager *)self stateMachine];
  v3 = [v2 currentState];

  LOBYTE(v2) = [v3 isEqualToString:@"Playing background media in picture and picture"];
  return v2;
}

- (TVPMediaItem)currentMediaItem
{
  v2 = [(VUIPlaybackManager *)self activePlayer];
  v3 = [v2 currentMediaItem];

  return v3;
}

- (BOOL)currentPlaylistAllowsCellular
{
  v2 = [(VUIPlaybackManager *)self activePlayer];
  v3 = [v2 allowsCellularUsage];

  return v3;
}

- (id)createPlayerViewController
{
  v3 = [objc_alloc(MEMORY[0x1E6958608]) initWithNibName:0 bundle:0];
  [(VUIPlaybackManager *)self _setupPlayerViewController:v3];

  return v3;
}

- (void)_setupPlayerViewController:(id)a3
{
  v4 = a3;
  v5 = objc_initWeak(&location, self);
  [v4 setDelegate:self];

  [v4 setEntersFullScreenWhenPlaybackBegins:1];
  [v4 setAllowsPictureInPicturePlayback:{+[VUITVExtension isRunningInCompanionApp](VUITVExtension, "isRunningInCompanionApp") ^ 1}];
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 BOOLForKey:@"ForcePlaybackControls"];

  if (v7)
  {
    [v4 setCanHidePlaybackControls:0];
  }

  objc_destroyWeak(&location);
}

- (void)setBackgroundMediaControllerForPIP:(id)a3
{
  [(VUIPlaybackManager *)self setPIPedBackgroundMediaController:?];
  v5 = [(VUIPlaybackManager *)self stateMachine];
  v7 = v5;
  if (a3)
  {
    v6 = @"Background media enter picture in picture";
  }

  else
  {
    v6 = @"Background media picture in picture did end";
  }

  [v5 postEvent:v6];
}

- (void)restoreBackgroundMediaControllerFromPIP:(id)a3
{
  v4 = a3;
  v5 = +[VUIApplicationRouter currentNavigationController];
  v6 = [v5 topViewController];
  v7 = [v6 presentedViewController];
  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v8 = +[VUITVAppLauncher sharedInstance];
    v9 = [v8 appWindow];

    v13 = [v9 rootViewController];

    if (!v13)
    {
      v10 = +[VUIInterfaceFactory sharedInstance];
      v13 = [v10 controllerPresenter];
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 isBeingDismissed])
  {
    v11 = [v13 presentingViewController];

    v13 = v11;
  }

  v12 = [(VUIPlaybackManager *)self PIPedBackgroundMediaController];
  [v13 presentViewController:v12 animated:1 completion:v4];
}

- (VUIPlayer)backgroundMediaPlayer
{
  v2 = [(VUIPlaybackManager *)self PIPedBackgroundMediaController];
  if ([v2 conformsToProtocol:&unk_1F5F3C698])
  {
    v3 = [v2 activePlayer];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAvPlayerViewController:(id)a3
{
  v5 = a3;
  p_avPlayerViewController = &self->_avPlayerViewController;
  avPlayerViewController = self->_avPlayerViewController;
  v8 = v5;
  if (avPlayerViewController != v5)
  {
    if (avPlayerViewController)
    {
      [(AVPlayerViewController *)avPlayerViewController removeObserver:self forKeyPath:@"videoBounds" context:__PlayerAVPlayerViewControllerDisplaySizeKVOContext];
    }

    objc_storeStrong(&self->_avPlayerViewController, a3);
    if (*p_avPlayerViewController)
    {
      [(AVPlayerViewController *)*p_avPlayerViewController addObserver:self forKeyPath:@"videoBounds" options:0 context:__PlayerAVPlayerViewControllerDisplaySizeKVOContext];
    }
  }
}

- (void)setActivePlayer:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_activePlayer);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_activePlayer, obj);
    v5 = obj;
  }
}

- (BOOL)_audioContainsAirPlayRoute
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6958460] sharedInstance];
  v3 = [v2 currentRoute];
  v4 = [v3 outputs];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    v8 = *MEMORY[0x1E69581A0];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) portType];

        if (v10 == v8)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_audioContainsHDMIRoute
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6958460] sharedInstance];
  v3 = [v2 currentRoute];
  v4 = [v3 outputs];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    v8 = *MEMORY[0x1E6958200];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) portType];

        if (v10 == v8)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)configureAudioSessionForBackgroundPlayback:(BOOL)a3 usingPlaybackCategory:(BOOL)a4 isMultiview:(BOOL)a5
{
  v9 = [(VUIPlaybackManager *)self stateMachine];
  v10 = [v9 currentState];
  v11 = [v10 isEqualToString:@"Not showing anything"] ^ 1;

  v12 = [(VUIPlaybackManager *)self audioSessionSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__VUIPlaybackManager_configureAudioSessionForBackgroundPlayback_usingPlaybackCategory_isMultiview___block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v14 = a3;
  v15 = v11;
  v16 = a4;
  v17 = a5;
  dispatch_async(v12, block);
}

void __99__VUIPlaybackManager_configureAudioSessionForBackgroundPlayback_usingPlaybackCategory_isMultiview___block_invoke(_BYTE *a1)
{
  if (a1[32] != 1)
  {
    v3 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Setting the audio category to AVAudioSessionCategoryPlayback, mode:AVAudioSessionModeMoviePlayback, routing: AVAudioSessionRouteSharingPolicyLongFormVideo", buf, 2u);
    }

    v4 = a1[35];
    v5 = [MEMORY[0x1E69D59F0] sharedInstance];
    v6 = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __99__VUIPlaybackManager_configureAudioSessionForBackgroundPlayback_usingPlaybackCategory_isMultiview___block_invoke_611;
    v11[3] = &__block_descriptor_33_e24_v16__0__AVAudioSession_8l;
    v12 = v4;
    v7 = v11;
    goto LABEL_8;
  }

  if ((a1[33] & 1) == 0)
  {
    v8 = a1[34];
    v9 = sLogObject_5;
    v10 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
    if (v8 == 1)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Setting the audio category to AVAudioSessionCategoryPlayback, mode:AVAudioSessionModeDefault", buf, 2u);
      }

      v5 = [MEMORY[0x1E69D59F0] sharedInstance];
      v6 = v5;
      v7 = &__block_literal_global_607;
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Setting the audio category to AVAudioSessionCategoryAmbient, mode:AVAudioSessionModeDefault", buf, 2u);
      }

      v5 = [MEMORY[0x1E69D59F0] sharedInstance];
      v6 = v5;
      v7 = &__block_literal_global_610;
    }

LABEL_8:
    [v5 setConfigurationBlock:v7];

    return;
  }

  v2 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to set audio category to AVAudioSessionCategoryAmbient since playback is happening either fullscreen or in PIP", buf, 2u);
  }
}

void __99__VUIPlaybackManager_configureAudioSessionForBackgroundPlayback_usingPlaybackCategory_isMultiview___block_invoke_604(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6958068];
  v3 = *MEMORY[0x1E6958130];
  v7 = 0;
  v4 = [a2 setCategory:v2 mode:v3 options:0 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Failed to set audio session playback category: %@", buf, 0xCu);
    }
  }
}

void __99__VUIPlaybackManager_configureAudioSessionForBackgroundPlayback_usingPlaybackCategory_isMultiview___block_invoke_608(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6958038];
  v3 = *MEMORY[0x1E6958130];
  v7 = 0;
  v4 = [a2 setCategory:v2 mode:v3 options:0 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Failed to set audio session playback category: %@", buf, 0xCu);
    }
  }
}

void __99__VUIPlaybackManager_configureAudioSessionForBackgroundPlayback_usingPlaybackCategory_isMultiview___block_invoke_611(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6958068];
  v4 = *MEMORY[0x1E6958148];
  v16 = 0;
  v5 = a2;
  LOBYTE(v4) = [v5 setCategory:v3 mode:v4 routeSharingPolicy:3 options:0 error:&v16];
  v6 = v16;
  if ((v4 & 1) == 0)
  {
    v7 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Failed to set audio session playback category: %@", buf, 0xCu);
    }
  }

  v8 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = VUIBoolLogString();
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Setting prefers concurrent air play audio %@", buf, 0xCu);
  }

  v11 = *(a1 + 32);
  v15 = v6;
  v12 = [v5 setPrefersConcurrentAirPlayAudio:v11 error:&v15];

  v13 = v15;
  if ((v12 & 1) == 0)
  {
    v14 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Failed to set prefers concurrent air play audio %@", buf, 0xCu);
    }
  }
}

- (VUIControllerPresenter)fullScreenViewControllerForPresentation
{
  if (!-[VUIPlaybackManager isFullscreenPlaybackUIBeingShown](self, "isFullscreenPlaybackUIBeingShown") || (-[VUIPlaybackManager avPlayerViewController](self, "avPlayerViewController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 vui_viewControllerForFullScreenPresentation], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v5 = +[VUITVAppLauncher sharedInstance];
    v6 = [v5 appWindow];
    v4 = [v6 rootViewController];
  }

  return v4;
}

- (BOOL)isPostPlayActive
{
  v3 = [(VUIPlaybackManager *)self stateMachine];
  v4 = [v3 currentState];
  if ([v4 isEqualToString:@"Showing video full screen with post play content on screen"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(VUIPlaybackManager *)self stateMachine];
    v7 = [v6 currentState];
    v5 = [v7 isEqualToString:@"Showing post play content without playback UI"];
  }

  return v5;
}

- (void)transferPlaybackToBackgroundMediaController:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if (v8)
  {
    v5 = [v8 copy];
    [v4 setObject:v5 forKey:@"CompletionKey"];
  }

  v6 = [(VUIPlaybackManager *)self stateMachine];
  v7 = [v4 copy];
  [v6 postEvent:@"Transfer player to background media controller" withContext:0 userInfo:v7];
}

- (void)startPictureInPicture
{
  v2 = [(VUIPlaybackManager *)self avPlayerViewController];
  [v2 startPictureInPicture];
}

- (void)startPictureInPictureWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(VUIPlaybackManager *)self avPlayerViewController];

  if (!v6 || v4)
  {
    [(VUIPlaybackManager *)self setPipCompletion:v6];
    [(VUIPlaybackManager *)self startPictureInPicture];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TVPlaybackErrorDomain" code:801 userInfo:0];
    v6[2](v6, v5);
  }
}

- (void)addTipKitState:(unint64_t)a3
{
  if ([(VUIPlaybackManager *)self tipKitStates]!= 3)
  {
    [(VUIPlaybackManager *)self setTipKitStates:[(VUIPlaybackManager *)self tipKitStates]| a3];
    if ([(VUIPlaybackManager *)self tipKitStates]== 3)
    {
      v5 = [(VUIPlaybackManager *)self playerViewController];
      [_TtC8VideosUI23PlayerTipKitManagerObjC scheduleTips:v5];
    }
  }
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  if ([(VUIPlaybackManager *)self _hidePresentingViewControllerDuringPlayback])
  {
    v8 = sLogObject_5;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VUIPlaybackManager *)self playbackContainerViewController];
      v10 = [v9 presentingViewController];
      *buf = 138412290;
      v26 = v10;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Setting %@ alpha to zero before starting transition", buf, 0xCu);
    }

    v11 = [(VUIPlaybackManager *)self playbackContainerViewController];
    v12 = [v11 presentingViewController];
    v13 = [v12 view];
    [v13 setHidden:0];

    v14 = [(VUIPlaybackManager *)self playbackContainerViewController];
    v15 = [v14 presentingViewController];
    v16 = [v15 view];
    [v16 setAlpha:0.0];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__VUIPlaybackManager_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v22[3] = &unk_1E8730CD8;
  objc_copyWeak(&v23, &location);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__VUIPlaybackManager_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2;
  v18[3] = &unk_1E8730D00;
  objc_copyWeak(&v21, &location);
  v17 = v6;
  v19 = v17;
  v20 = self;
  [v7 animateAlongsideTransition:v22 completion:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __97__VUIPlaybackManager_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _hidePresentingViewControllerDuringPlayback];

  if (v3)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v4 = [v7 playbackContainerViewController];
    v5 = [v4 presentingViewController];
    v6 = [v5 view];
    [v6 setAlpha:1.0];
  }
}

void __97__VUIPlaybackManager_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = [WeakRetained stateMachine];
    [v5 postEvent:@"AVPlayerViewController did end full screen presentation" withContext:*(a1 + 32)];
  }

  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = [v6 _hidePresentingViewControllerDuringPlayback];

  if (v7)
  {
    v8 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = [v9 playbackContainerViewController];
      v12 = [v11 presentingViewController];
      [v3 isCancelled];
      v13 = VUIBoolLogString();
      v22 = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Setting %@ to hidden because transition was cancelled = %@", &v22, 0x16u);
    }

    v14 = objc_loadWeakRetained((a1 + 48));
    v15 = [v14 playbackContainerViewController];
    v16 = [v15 presentingViewController];
    v17 = [v16 view];
    [v17 setHidden:{objc_msgSend(v3, "isCancelled")}];

    v18 = objc_loadWeakRetained((a1 + 48));
    v19 = [v18 playbackContainerViewController];
    v20 = [v19 presentingViewController];
    v21 = [v20 view];
    [v21 setAlpha:1.0];
  }
}

- (void)playerViewControllerWillStartPictureInPicture:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "playerViewControllerWillStartPictureInPicture: %@", buf, 0xCu);
  }

  v6 = [(VUIPlaybackManager *)self stateMachine];
  v8 = @"PlayerViewControllerKey";
  v9 = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v6 postEvent:@"Will start picture in picture" withContext:0 userInfo:v7];
}

- (void)playerViewControllerDidStartPictureInPicture:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "playerViewControllerDidStartPictureInPicture: %@", &v9, 0xCu);
  }

  [(VUIPlaybackManager *)self _markMainPlayerMediaItemPlayingPictureInPictureMetadataAsActive:1 forAVPlayerViewController:v4];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 vui_setObjectIfNotNil:v4 forKey:@"PlayerViewControllerKey"];
  v7 = [(VUIPlaybackManager *)self stateMachine];
  v8 = [v6 copy];
  [v7 postEvent:@"Did start picture in picture" withContext:0 userInfo:v8];
}

- (void)playerViewController:(id)a3 failedToStartPictureInPictureWithError:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "playerViewController:failedToStartPictureInPictureWithError: %@, %@", &v12, 0x16u);
  }

  v9 = [(VUIPlaybackManager *)self stateMachine];
  [v9 postEvent:@"Picture in picture presentation did fail"];

  v10 = [(VUIPlaybackManager *)self pipCompletion];

  if (v10)
  {
    v11 = [(VUIPlaybackManager *)self pipCompletion];
    (v11)[2](v11, v7);

    [(VUIPlaybackManager *)self setPipCompletion:0];
  }
}

- (void)playerViewControllerWillStopPictureInPicture:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "playerViewControllerWillStopPictureInPicture: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VUIPlaybackManager_playerViewControllerWillStopPictureInPicture___block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__VUIPlaybackManager_playerViewControllerWillStopPictureInPicture___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 postEvent:@"Will stop picture in picture"];
}

- (void)playerViewControllerDidStopPictureInPicture:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "playerViewControllerDidStopPictureInPicture: %@", buf, 0xCu);
  }

  [(VUIPlaybackManager *)self _markMainPlayerMediaItemPlayingPictureInPictureMetadataAsActive:0 forAVPlayerViewController:v4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__VUIPlaybackManager_playerViewControllerDidStopPictureInPicture___block_invoke;
  v7[3] = &unk_1E872D990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __66__VUIPlaybackManager_playerViewControllerDidStopPictureInPicture___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) stateMachine];
  v3 = *(a1 + 40);
  v5 = @"PlayerViewControllerKey";
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postEvent:@"Did stop picture in picture" withContext:0 userInfo:v4];
}

- (id)playerViewController:(id)a3 displayNameForMediaSelectionOption:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = [v4 vui_localizedDisplayNameOverride];
  if (v5)
  {
    v6 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "App providing localized display name for %@: %@", &v8, 0x16u);
    }
  }

  return v5;
}

- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "playerViewController:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler: %@", buf, 0xCu);
  }

  if (v7)
  {
    v14 = @"CompletionKey";
    v9 = [v7 copy];
    v15 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  }

  else
  {
    v10 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __108__VUIPlaybackManager_playerViewController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E872D990;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __108__VUIPlaybackManager_playerViewController_restoreUserInterfaceForPictureInPictureStopWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  [v2 postEvent:@"Restore user interface for picture in picture stop" withContext:0 userInfo:*(a1 + 40)];
}

- (void)playerViewController:(id)a3 contentViewWillTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5
{
  height = a4.height;
  width = a4.width;
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [(VUIPlaybackManager *)self skipButton];
  if (v11)
  {
  }

  else
  {
    v12 = [(VUIPlaybackManager *)self promoMetadataView];

    if (!v12)
    {
      goto LABEL_5;
    }
  }

  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101__VUIPlaybackManager_playerViewController_contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v21[3] = &unk_1E8730D28;
  v23[1] = *&width;
  v23[2] = *&height;
  v21[4] = self;
  objc_copyWeak(v23, &location);
  v22 = v9;
  [v10 animateAlongsideTransition:v21 completion:&__block_literal_global_622];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
LABEL_5:
  v13 = [(VUIPlaybackManager *)self mainAVPlayerViewController];
  v14 = v13 == v9;

  if (v14)
  {
    v15 = [(VUIPlaybackManager *)self mainLivePostPlayController];
    [v15 playerViewControllerWillTransitionToSize:v10 withTransitionCoordinator:{width, height}];
  }

  v16 = [(VUIPlaybackManager *)self extrasContext];
  if ([v16 shouldExtrasBeVisibleForSize:{width, height}])
  {
    v17 = +[VUIGroupActivitiesManagerObjC isSessionActive]^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(VUIPlaybackManager *)self stateMachine];
  v25 = @"ExtrasShouldBeVisibleKey";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:v17];
  v26[0] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  [v18 postEvent:@"Extras visibility needs update" withContext:0 userInfo:v20];
}

void __101__VUIPlaybackManager_playerViewController_contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:*(a1 + 56)];
  v4 = [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:*(a1 + 64)];
  v5 = v4;
  if ((v3 - 3) > 2)
  {
    v8 = 0.0;
    if (v3 == 2 && ([*(a1 + 32) promoMetadataView], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      if ((v5 - 2) >= 4)
      {
        v8 = 90.0;
      }

      else
      {
        v8 = 80.0;
      }

      if ((v5 - 2) >= 4)
      {
        v7 = 34.0;
      }

      else
      {
        v7 = 80.0;
      }
    }

    else
    {
      LODWORD(v6) = 1;
      v7 = 34.0;
    }
  }

  else
  {
    LODWORD(v6) = 0;
    if ((v4 - 2) >= 4)
    {
      v7 = 34.0;
    }

    else
    {
      v7 = 80.0;
    }

    if ((v4 - 2) >= 4)
    {
      v8 = 90.0;
    }

    else
    {
      v8 = 80.0;
    }
  }

  v9 = [*(a1 + 32) skipButton];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v11 = WeakRetained;
    if (v6)
    {
      v12 = [WeakRetained skipTrailingConstraint];
      [v12 setActive:0];

      v13 = objc_loadWeakRetained((a1 + 48));
      [v13 skipCenterXConstraint];
    }

    else
    {
      v24 = [WeakRetained skipCenterXConstraint];
      [v24 setActive:0];

      v25 = objc_loadWeakRetained((a1 + 48));
      v26 = [v25 skipTrailingConstraint];
      [v26 setConstant:-v8];

      v13 = objc_loadWeakRetained((a1 + 48));
      [v13 skipTrailingConstraint];
    }
    v27 = ;
    [v27 setActive:1];

    v28 = objc_loadWeakRetained((a1 + 48));
    v29 = [v28 skipBottomConstraint];
    [v29 setConstant:-v7];

    goto LABEL_30;
  }

  v14 = [*(a1 + 32) promoMetadataView];

  if (v14)
  {
    v15 = [*(a1 + 32) promoMetadataView];
    [v15 vui_sizeThatFits:{*(a1 + 56), *(a1 + 64)}];
    v17 = v16;
    v19 = v18;

    if (v6)
    {
      v20 = [*(a1 + 32) promoMetadataView];
      [v20 setFrame:{(*(a1 + 56) - v17) * 0.5, *(a1 + 64) - v19 - v7, v17, v19}];

      v21 = *(a1 + 40);
      v22 = v7 + v19;
      v23 = 0.0;
    }

    else
    {
      v30 = [*(a1 + 32) promoMetadataView];
      v31 = [v30 vuiIsRTL];

      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v40 = [*(a1 + 32) promoMetadataView];
      [v40 setFrame:{v33, v35, v37, v39}];

      v21 = *(a1 + 40);
      if (!v31)
      {
        v41 = v8 + v37;
        v23 = 0.0;
        v22 = 0.0;
        goto LABEL_29;
      }

      v23 = v33 + v37;
      v22 = 0.0;
    }

    v41 = 0.0;
LABEL_29:
    [v21 setLegibleContentInsets:{0.0, v23, v22, v41}];
  }

LABEL_30:
  v42 = [*(a1 + 40) view];
  [v42 setNeedsLayout];
}

- (void)extrasRequestsMediaPlayback:(id)a3 isBackground:(BOOL)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a4;
    v6 = a3;
    v7 = objc_opt_new();
    v8 = [(VUIPlaybackManager *)self extrasContext];
    v9 = [v8 tvpMediaItem];

    v10 = [v7 playlistForIKMediaElements:v6 withMediaItem:v9 isExtrasContent:1];

    if (v10)
    {
      v11 = [(VUIPlaybackManager *)self stateMachine];
      v14[0] = @"PlaylistKey";
      v14[1] = @"IsBackgroundPlaybackKey";
      v15[0] = v10;
      v12 = [MEMORY[0x1E696AD98] numberWithBool:v4];
      v15[1] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      [v11 postEvent:@"Extras playback requested" withContext:0 userInfo:v13];
    }
  }
}

- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [(VUIPlaybackManager *)self setTransportBarVisible:v6];
  v10 = [(VUIPlaybackManager *)self mainLivePostPlayController];
  [v10 playerControlsVisibilityChanged:v6];

  if (v6)
  {
    v11 = [(VUIPlaybackManager *)self activePlayer];
    v12 = [v11 state];
    v13 = [MEMORY[0x1E69D5A40] loading];

    if (v12 != v13)
    {
      [(VUIPlaybackManager *)self _resetAutoPlayBingeWatchingQualifications];
    }

    v14 = [(VUIPlaybackManager *)self activePlayer];
    v15 = [v14 currentMediaItem];
    v16 = [v15 mediaItemMetadataForProperty:@"VUIMediaItemMetadataMakeAdditionalPlayerTabsRequest"];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      objc_initWeak(&location, self);
      v18 = +[VUIPlaybackTabManager sharedInstance];
      v19 = [(VUIPlaybackManager *)self multiviewIdentifiers];
      v20 = [v19 copy];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __113__VUIPlaybackManager_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke;
      v21[3] = &unk_1E872E4B8;
      objc_copyWeak(&v22, &location);
      [v18 updatePlayerTabsExcludingCanonicals:v20 completion:v21];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(VUIPlaybackManager *)self _addSkipIntroFeatureToMonitorIfNeeded:0];
  }
}

void __113__VUIPlaybackManager_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateMultiviewButtonState];
}

- (void)extrasDoneButtonPressed
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(VUIPlaybackManager *)self stateMachine];
  v4 = @"AnimatedKey";
  v5[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 postEvent:@"Done Button Pressed" withContext:0 userInfo:v3];
}

- (void)extrasMenuItemSelected:(id)a3 atIndex:(unint64_t)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(VUIPlaybackManager *)self stateMachine];
  v10[0] = @"MenuItemElementKey";
  v10[1] = @"MenuItemIndexKey";
  v11[0] = v6;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [v7 postEvent:@"Extras menu item selected" withContext:0 userInfo:v9];
}

- (void)extrasBackButtonPressed
{
  v2 = [(VUIPlaybackManager *)self stateMachine];
  [v2 postEvent:@"Back button pressed"];
}

- (void)extrasContext:(id)a3 hadFatalError:(id)a4
{
  v5 = a4;
  v6 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
  {
    [VUIPlaybackManager extrasContext:v5 hadFatalError:v6];
  }

  v7 = [(VUIPlaybackManager *)self stateMachine];
  [v7 postEvent:@"Extras failure did occur"];
}

- (void)extrasContextDidLoadMainMenuItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIPlaybackManager *)self extrasContext];
  v6 = [v5 mainMenuItemElements];

  v7 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v17 = 134217984;
    v18 = [v6 count];
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Extras context did load %lu main menu items", &v17, 0xCu);
  }

  v9 = [(VUIPlaybackManager *)self extrasControlItem];

  if (!v9 && [v6 count])
  {
    v10 = [(VUIPlaybackManager *)self avPlayerViewController];
    v11 = [v10 view];
    [v11 bounds];
    v13 = v12;
    v15 = v14;

    if ([v4 shouldExtrasBeVisibleForSize:{v13, v15}])
    {
      v16 = +[VUIGroupActivitiesManagerObjC isSessionActive]^ 1;
    }

    else
    {
      v16 = 0;
    }

    [(VUIPlaybackManager *)self _setExtrasButtonVisible:v16];
  }
}

- (void)extrasContext:(id)a3 extrasVisibilityNeedsUpdate:(BOOL)a4
{
  v4 = a4;
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = [(VUIPlaybackManager *)self stateMachine];
  v8 = @"ExtrasShouldBeVisibleKey";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 postEvent:@"Extras visibility needs update" withContext:0 userInfo:v7];
}

- (void)featureMonitor:(id)a3 featureDidChangeState:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  if ([v7 conformsToProtocol:&unk_1F5E94048])
  {
    [(VUIPlaybackManager *)self _updateTimeBoundFeature:v7 animated:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUIPlaybackManager *)self _updateTimeTriggeredFeature:v7 animated:v5];
    }
  }
}

- (void)playbackContainerViewControllerDidFinishLoadingPostPlay:(id)a3
{
  v3 = [(VUIPlaybackManager *)self stateMachine];
  [v3 postEvent:@"Post play has been configured" withContext:0 userInfo:0];
}

- (void)playbackContainerViewControllerExitPictureInPicturePressed:(id)a3
{
  v3 = [(VUIPlaybackManager *)self stateMachine];
  [v3 postEvent:@"Post play cancelled"];
}

- (void)playbackContainerViewControllerBackgroundPlaybackWillBegin:(id)a3
{
  v3 = [(VUIPlaybackManager *)self stateMachine];
  [v3 postEvent:@"Post play hide playback"];
}

- (void)playbackContainerViewControllerDidDisappear:(id)a3
{
  v3 = [(VUIPlaybackManager *)self stateMachine];
  [v3 postEvent:@"Playback container did disappear"];
}

- (void)playbackContainerViewControllerWillTransitionToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = +[VUIPlaybackTabManager sharedInstance];
  [v5 updatePlayerViewSize:{width, height}];
}

- (NSArray)multiviewIdentifiers
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x1E69D5AE8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) player];
        v11 = [v10 currentMediaItem];
        v12 = [v11 mediaItemMetadataForProperty:v8];

        if (v12)
        {
          [v3 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)mediaSupportsStartOver
{
  v2 = [(VUIPlaybackManager *)self currentMediaItem];
  v3 = [v2 mediaItemMetadataForProperty:@"VUIMediaItemMetadataSupportsStartOver"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)createContentSelectionViewController
{
  v3 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Creating content selection view controller", v17, 2u);
  }

  v4 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v5 = [v4 firstObject];

  v6 = +[VUIPlaybackTabManager sharedInstance];
  v7 = [v6 tabsInfo];
  v8 = [v7 multiviewTabInfo];

  if (v8)
  {
    v9 = [v5 broadcastLocale];
    v10 = v9;
    v11 = &stru_1F5DB25C0;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = +[VUIPlaybackTabManager sharedInstance];
    v14 = [v5 playsFromStart];
    v15 = [v13 createHUDViewControllerWithTabInfo:v8 excludingCanonicals:MEMORY[0x1E695E0F0] isMultiview:1 locale:v12 playsFromStart:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_playbackStateDidChange:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69D6098]];

  v7 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = *&v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Playback state did change to %@", &v29, 0xCu);
  }

  v8 = [v4 object];
  v9 = [(VUIPlaybackManager *)self mainPlayer];

  if (v8 != v9)
  {
    v10 = 0;
    goto LABEL_5;
  }

  if ([(VUIPlaybackManager *)self hasMainPlayerFinishedInitialLoading])
  {
    goto LABEL_11;
  }

  v15 = [MEMORY[0x1E69D5A40] playing];
  v16 = v15;
  if (v6 == v15)
  {
  }

  else
  {
    v17 = [MEMORY[0x1E69D5A40] paused];

    if (v6 != v17)
    {
LABEL_11:
      v10 = 0;
      goto LABEL_14;
    }
  }

  [(VUIPlaybackManager *)self setHasMainPlayerFinishedInitialLoading:1];
  [(VUIPlaybackManager *)self _addRadioBroadcastTipIfNeeded];
  v10 = MEMORY[0x1E695E118];
LABEL_14:
  v18 = [MEMORY[0x1E69D5A40] loading];

  v19 = [(VUIPlaybackManager *)self mainPlayerLongLoadingTimer];

  if (v6 == v18)
  {
    if (!v19)
    {
      v22 = +[VUIFeaturesConfiguration sharedInstance];
      v23 = [v22 nowPlayingConfig];
      [v23 longLoadingTimeout];
      v25 = v24;

      v26 = sLogObject_5;
      v27 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
      if (v25 <= 0.0)
      {
        if (v27)
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "Not starting long loading timer since timeout value is 0 or less", &v29, 2u);
        }
      }

      else
      {
        if (v27)
        {
          v29 = 134217984;
          v30 = v25;
          _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "Starting long loading timer.  Will fire if loading for more than %f seconds", &v29, 0xCu);
        }

        v28 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__handleLongLoadingTimeout_ selector:0 userInfo:0 repeats:v25];
        [(VUIPlaybackManager *)self setMainPlayerLongLoadingTimer:v28];
      }
    }
  }

  else if (v19)
  {
    v20 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Invalidating long loading timer", &v29, 2u);
    }

    v21 = [(VUIPlaybackManager *)self mainPlayerLongLoadingTimer];
    [v21 invalidate];

    [(VUIPlaybackManager *)self setMainPlayerLongLoadingTimer:0];
  }

LABEL_5:
  v11 = [v4 userInfo];
  v12 = [v11 mutableCopy];

  if (v10)
  {
    [v12 setObject:v10 forKey:@"DidMainPlayerJustCompleteInitialLoadingKey"];
  }

  v13 = [(VUIPlaybackManager *)self stateMachine];
  v14 = [v4 object];
  [v13 postEvent:@"Playback state did change" withContext:v14 userInfo:v12];
}

- (void)_markMediaItemToDeleteOnCompletionForMediaItem:(id)a3 deleteOnCompletion:(BOOL)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  v7 = +[VUIMediaLibraryManager defaultManager];
  v8 = [v7 sidebandMediaLibrary];
  v9 = [v8 videoForAdamID:v6 useMainThreadContext:1];

  if (v9 && [v9 triggerType] == 1)
  {
    v10 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "marking %@ to delete on completion", &v13, 0xCu);
    }

    [v9 setShouldDeleteAfterCompletion:v4];
    v11 = +[VUIMediaLibraryManager defaultManager];
    v12 = [v11 sidebandMediaLibrary];
    [v12 saveChangesToManagedObjects];
  }
}

- (BOOL)_didWatchContentToEndForPlayer:(id)a3
{
  v3 = a3;
  v4 = [v3 currentMediaItem];
  v5 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CB0]];

  v6 = [v3 currentMediaItem];
  v7 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DF8]];

  if (!(v5 | v7))
  {
    goto LABEL_14;
  }

  objc_opt_class();
  v8 = 0.0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 isEqualToNumber:&unk_1F5E5CFC0] & 1) == 0)
  {
    [v5 doubleValue];
    v8 = v9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 isEqualToNumber:&unk_1F5E5CFC0] & 1) == 0)
  {
    [v7 doubleValue];
    if (v10 < v8 || v8 == 0.0)
    {
      v8 = v10;
    }
  }

  [v3 duration];
  v13 = fmin(v12, v8);
  if (v13 == 0.0)
  {
LABEL_14:
    v15 = 0;
  }

  else
  {
    [v3 elapsedTime];
    v15 = v14 >= v13;
  }

  return v15;
}

- (void)_currentMediaItemWillChange:(id)a3
{
  v7 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v7 object];
    v5 = [(VUIPlaybackManager *)self _didWatchContentToEndForPlayer:v4];
    v6 = [v4 currentMediaItem];
    [(VUIPlaybackManager *)self _markMediaItemToDeleteOnCompletionForMediaItem:v6 deleteOnCompletion:v5];
  }
}

- (void)_currentMediaItemDidChange:(id)a3
{
  [(VUIPlaybackManager *)self _updateRequiresLinearPlayback];
  v4 = [(VUIPlaybackManager *)self featureMonitor];
  [v4 removeFeaturesMatching:&unk_1F5E5E868];

  v5 = [(VUIPlaybackManager *)self currentMediaItem];

  if (v5)
  {
    v6 = [(VUIPlaybackManager *)self currentMediaItem];
    [(VUIPlaybackManager *)self _donateUserActivityForMediaItem:v6];

    v7 = [(VUIPlaybackManager *)self stateMachine];
    v8 = [v7 currentState];
    v9 = [v8 isEqualToString:@"Showing multiview playback"];

    if ((v9 & 1) == 0)
    {
      v11 = +[VUIPlaybackTabManager sharedInstance];
      v10 = [(VUIPlaybackManager *)self avPlayerViewController];
      [v11 resetPlayerTabsForPlayerViewController:v10];
    }
  }
}

- (void)_playbackErrorDidOccur:(id)a3
{
  v4 = a3;
  v7 = [(VUIPlaybackManager *)self stateMachine];
  v5 = [v4 object];
  v6 = [v4 userInfo];

  [v7 postEvent:@"Error did occur" withContext:v5 userInfo:v6];
}

- (void)_externalPlaybackTypeDidChange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  v5 = [(VUIPlaybackManager *)self mainPlayer];

  if (v4 == v5)
  {
    v6 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(VUIPlaybackManager *)self mainPlayer];
      v14 = 134217984;
      v15 = [v8 externalPlaybackType];
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "ExternalPlaybacktype did change externalPlaybackType = %ld", &v14, 0xCu);
    }

    v9 = [(VUIPlaybackManager *)self avPlayerViewController];
    v10 = [(VUIPlaybackManager *)self mainPlayer];
    v11 = [v10 externalPlaybackType] != 0;

    v12 = [v9 configuration];
    [v12 setExcludedControls:32 * v11];
    [v9 setConfiguration:v12];
  }

  v13 = [(VUIPlaybackManager *)self stateMachine];
  [v13 postEvent:@"External playback type did change"];
}

- (void)_togglePlayerTabs
{
  v3 = +[VUIPlaybackTabManager sharedInstance];
  v4 = [v3 isPlayerTabsEnabled];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = +[VUIPlaybackTabManager sharedInstance];
    v6 = [(VUIPlaybackManager *)self avPlayerViewController];
    [v5 resetPlayerTabsForPlayerViewController:v6];

    v7 = +[VUIPlaybackTabManager sharedInstance];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__VUIPlaybackManager__togglePlayerTabs__block_invoke;
    v8[3] = &unk_1E872E4B8;
    objc_copyWeak(&v9, &location);
    [v7 updatePlayerTabsExcludingCanonicals:0 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __39__VUIPlaybackManager__togglePlayerTabs__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupInfoTab];
  [WeakRetained _updateMultiviewButtonState];
}

- (void)_appControllerDidStart:(id)a3
{
  v4 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "App controller did start", v5, 2u);
  }

  [(VUIPlaybackManager *)self _togglePlayerTabs];
}

- (void)_networkReachbilityDidChange:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Network reachability did change. Is reachable: %@", buf, 0xCu);
  }

  v7 = [(VUIPlaybackManager *)self avPlayerViewController];
  v8 = [v7 view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  if (v4)
  {
    v13 = [(VUIPlaybackManager *)self extrasContext];
    if ([v13 shouldExtrasBeVisibleForSize:{v10, v12}])
    {
      v14 = +[VUIGroupActivitiesManagerObjC isSessionActive]^ 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [(VUIPlaybackManager *)self stateMachine];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{v14, @"ExtrasShouldBeVisibleKey"}];
  v19 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v15 postEvent:@"Extras visibility needs update" withContext:0 userInfo:v17];

  [(VUIPlaybackManager *)self _togglePlayerTabs];
}

- (void)_playerRateDidChange:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 object];
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Player rate did change %@", &v17, 0xCu);
  }

  v8 = [v4 object];
  v9 = [(VUIPlaybackManager *)self _multiviewInfoForPlayer:v8];
  v10 = [v4 userInfo];
  v11 = [v10 objectForKey:*MEMORY[0x1E6987A90]];

  if (v9)
  {
    v12 = [v9 player];
    [v12 rate];
    v14 = v13;

    if (v14 == 0.0)
    {
      v15 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Player %@ paused due to %@", &v17, 0x16u);
      }

      v16 = [v11 isEqualToString:*MEMORY[0x1E6987AA8]] ^ 1;
    }

    else
    {
      v16 = 0;
    }

    [v9 setPausedDueToInterruption:v16];
  }
}

- (void)_didPlayToEnd:(id)a3
{
  if (![(VUIPlaybackManager *)self _isNewPostPlayEnabled])
  {
    v4 = [(VUIPlaybackManager *)self postPlayView];
    v5 = [v4 type];

    v6 = [(VUIPlaybackManager *)self _allowedToAutoPlayForType:v5];
    v7 = [(VUIPlaybackManager *)self postPlayView];
    if (v7)
    {
      v8 = v7;
      v9 = [(VUIPlaybackManager *)self isPostPlayActive];

      if (!v6 && v9)
      {

        [(VUIPlaybackManager *)self dismissPlaybackAnimated:1 leaveGroupActivitySession:0 completion:0];
      }
    }
  }
}

- (void)_applicationDidEnterBackground:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Setting app background date to %@", &v7, 0xCu);
  }

  [(VUIPlaybackManager *)self setDateAppWasBackgrounded:v4];
  v6 = [(VUIPlaybackManager *)self stateMachine];
  [v6 postEvent:@"Application did enter background"];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v3 = [(VUIPlaybackManager *)self stateMachine];
  [v3 postEvent:@"Application will enter foreground"];
}

- (void)_applicationWillResignActive:(id)a3
{
  v3 = [(VUIPlaybackManager *)self stateMachine];
  [v3 postEvent:@"Application will resign active"];
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v3 = [(VUIPlaybackManager *)self stateMachine];
  [v3 postEvent:@"Application did become active"];
}

- (void)_accountDidChange:(id)a3
{
  v4 = [MEMORY[0x1E69E14B0] sharedInstance];
  v5 = [v4 activeAccount];

  if (!v5)
  {
    v6 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "user did sign out", v7, 2u);
    }

    [(VUIPlaybackManager *)self dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];
  }
}

- (void)_groupActivityDidEnd:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "group activity did end %@", &v7, 0xCu);
  }

  v6 = [(VUIPlaybackManager *)self multiPlayerViewController];
  [v6 setFullscreenGesturesEnabled:1];
}

- (void)_audioSessionRouteDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "session route did change %@", &v8, 0xCu);
  }

  if ([(VUIPlaybackManager *)self _audioContainsHDMIRoute])
  {
    v6 = [(VUIPlaybackManager *)self _currentlyPlayingMultiviewInfo];
    v7 = [v6 player];
    [v7 play];
  }
}

- (void)_selectedAudioOptionDidChangeForPlayer:(id)a3
{
  v5 = a3;
  v4 = [(VUIPlaybackManager *)self mainPlayer];

  if (v4 == v5)
  {
    [v5 handleRadioBroadcastSelected];
  }

  [(VUIPlaybackManager *)self _donateLanguageCodeFromPlayer:v5 useAudio:1];
}

- (void)_donateLanguageCodeFromPlayer:(id)a3 useAudio:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    [v6 selectedAudioOption];
  }

  else
  {
    [v6 selectedSubtitleOption];
  }
  v8 = ;
  v9 = [v8 languageCodeBCP47];

  if (v9)
  {
    v10 = [v7 currentMediaItem];
    v11 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];

    objc_initWeak(&location, self);
    v12 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"subtitle";
      *buf = 138412802;
      if (v4)
      {
        v13 = @"audio";
      }

      v23 = v13;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Donating %@ language code: %@ from player %@", buf, 0x20u);
    }

    v14 = [(VUIPlaybackManager *)self biomeSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__VUIPlaybackManager__donateLanguageCodeFromPlayer_useAudio___block_invoke;
    block[3] = &unk_1E8730D70;
    v20 = v4;
    v17 = v11;
    v18 = v9;
    v15 = v11;
    objc_copyWeak(&v19, &location);
    dispatch_async(v14, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __61__VUIPlaybackManager__donateLanguageCodeFromPlayer_useAudio___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = 2;
  }

  else
  {
    v2 = 7;
  }

  v5 = [objc_alloc(MEMORY[0x1E698EB20]) initWithDataSource:v2 adamID:*(a1 + 32) contentLanguage:*(a1 + 40) contentGenre:0 timeSpent:&unk_1F5E5D0B0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained biomeAudioAndSubtitleLanguageSource];
  [v4 sendEvent:v5];
}

- (void)_addRadioBroadcastTipIfNeeded
{
  if (+[VUIPlaybackManager _isTipKitEnabled])
  {
    v3 = [(VUIPlaybackManager *)self playerViewController];
    v6 = [v3 configuration];

    v4 = [(VUIPlaybackManager *)self mainPlayer];
    +[PlayerTipKitManagerObjC addTipsToConfiguration:isRadioBroadcastEnabled:](_TtC8VideosUI23PlayerTipKitManagerObjC, "addTipsToConfiguration:isRadioBroadcastEnabled:", v6, [v4 isRadioBroadcastSupported]);

    v5 = [(VUIPlaybackManager *)self playerViewController];
    [v5 setConfiguration:v6];

    [(VUIPlaybackManager *)self addTipKitState:1];
  }
}

- (void)_markMainPlayerMediaItemPlayingPictureInPictureMetadataAsActive:(BOOL)a3 forAVPlayerViewController:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(VUIPlaybackManager *)self mainAVPlayerViewController];

  if (v7 == v6)
  {
    v10 = [(VUIPlaybackManager *)self mainPlayer];
    v8 = [v10 currentMediaItem];
    if (v8)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithBool:v4];
      [v8 setMediaItemMetadata:v9 forProperty:@"VUIMediaItemMetadataKeyIsPlayingInPIP"];
    }
  }
}

- (void)_markMainPlayerMediaItemPostPlayActive:(BOOL)a3
{
  v3 = a3;
  v6 = [(VUIPlaybackManager *)self mainPlayer];
  v4 = [v6 currentMediaItem];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v4 setMediaItemMetadata:v5 forProperty:@"VUIMediaItemMetadataKeyIsPlayingInPostPlay"];
  }
}

- (void)_notifyAVPlayerViewControllerDisplaySize
{
  v13 = [(VUIPlaybackManager *)self avPlayerViewController];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v13 videoDisplaySize];
  v6 = v5;
  v7 = v4;
  if (v5 != *MEMORY[0x1E695F060] || v4 != *(MEMORY[0x1E695F060] + 8))
  {
    [v13 videoDisplayScale];
    v15.height = round(v7) * v9;
    v15.width = round(v6) * v9;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v15);
    [v3 vui_setObjectIfNotNil:DictionaryRepresentation forKey:VUIPlaybackManagerNotificationKeyDisplaySize[0]];
    v11 = [(VUIPlaybackManager *)self activePlayer];
    [v3 vui_setObjectIfNotNil:v11 forKey:VUIPlaybackManagerNotificationKeyPlayer[0]];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:VUIPlaybackManagerVideoDisplaySizeDidChange[0] object:self userInfo:v3];
  }
}

- (void)_setExtrasButtonVisible:(BOOL)a3
{
  if (a3)
  {
    v4 = [(VUIPlaybackManager *)self extrasControlItem];

    if (!v4)
    {
      v5 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
      v6 = [v5 localizedStringForKey:@"EXTRAS_BUTTON_TITLE" value:0 table:@"VideosExtras"];

      if (MEMORY[0x1E6913230]())
      {
        v7 = [MEMORY[0x1E69585D0] prominentMediaControlItemWithTitle:v6];
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x1E69585D0]) initWithTitle:v6 type:2];
      }

      v8 = v7;
      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __46__VUIPlaybackManager__setExtrasButtonVisible___block_invoke;
      v12 = &unk_1E872E4B8;
      objc_copyWeak(&v13, &location);
      [v8 setAction:&v9];
      [(VUIPlaybackManager *)self setExtrasControlItem:v8, v9, v10, v11, v12];
      [(VUIPlaybackManager *)self _mainPlayerViewControllerSetupControlItems];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(VUIPlaybackManager *)self setExtrasControlItem:0];

    [(VUIPlaybackManager *)self _mainPlayerViewControllerSetupControlItems];
  }
}

void __46__VUIPlaybackManager__setExtrasButtonVisible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Extras button pressed"];
}

- (void)_mainPlayerViewControllerRemoveAllCustomControlItems
{
  [(VUIPlaybackManager *)self setExtrasControlItem:0];
  [(VUIPlaybackManager *)self setShareControlItem:0];
  [(VUIPlaybackManager *)self setMultiViewControlItem:0];

  [(VUIPlaybackManager *)self _mainPlayerViewControllerSetupControlItems];
}

- (void)_mainPlayerViewControllerSetupControlItems
{
  v7 = objc_opt_new();
  v3 = [(VUIPlaybackManager *)self extrasControlItem];
  if (v3)
  {
    [v7 addObject:v3];
  }

  v4 = [(VUIPlaybackManager *)self multiViewControlItem];
  if (v4)
  {
    [v7 addObject:v4];
  }

  v5 = [(VUIPlaybackManager *)self shareControlItem];
  if (v5)
  {
    [v7 addObject:v5];
  }

  v6 = [(VUIPlaybackManager *)self mainAVPlayerViewController];
  [v6 setCustomControlItems:v7];
}

- (void)_setupFeaturesFromMainPlayersCurrentMediaItem
{
  v3 = [(VUIPlaybackManager *)self mainPlayer];
  v4 = [v3 currentMediaItem];

  if (v4)
  {
    [(VUIPlaybackManager *)self _downloadRatingImageIfAvailable:v4];
    [(VUIPlaybackManager *)self _downloadProductPlacementImageIfAvailable:v4];
    [(VUIPlaybackManager *)self _setupBootstrapPostPlayFeatureMonitorForMediaItem:v4];
    [(VUIPlaybackManager *)self _addRollsInfoFeaturesFromMediaItem:v4];
    [(VUIPlaybackManager *)self _addSkipTriggerFeaturesToMonitor:v4];
  }
}

- (void)_downloadRatingImageIfAvailable:(id)a3
{
  v4 = a3;
  v5 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D48]];
  v6 = v5;
  if (!v5)
  {
    +[VUIGroupActivitiesManagerObjC isSessionActive];
    goto LABEL_6;
  }

  v7 = [v5 BOOLValue];
  if (+[VUIGroupActivitiesManagerObjC isSessionActive]|| v7)
  {
LABEL_6:
    v8 = [(VUIPlaybackManager *)self ratingImage];

    if (v8)
    {
      goto LABEL_19;
    }

    v9 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C28]];
    [v9 floatValue];
    v11 = v10;
    v12 = [v4 mediaItemMetadataForProperty:@"VUIMediaItemMetadataRatingImageTVImageProxy"];
    [(VUIPlaybackManager *)self setRatingImageProxy:v12];

    v13 = [v4 mediaItemMetadataForProperty:@"VUIMediaItemMetadataHighMotionTVImageProxy"];
    [(VUIPlaybackManager *)self setHighMotionImageProxy:v13];

    v14 = [v4 mediaItemMetadataForProperty:@"VUIMediaItemMetadataPhotoSensitivityTVImageProxy"];
    [(VUIPlaybackManager *)self setPhotoSensitivityImageProxy:v14];

    v15 = [(VUIPlaybackManager *)self ratingImageProxy];
    if (v15)
    {
    }

    else
    {
      v16 = [(VUIPlaybackManager *)self highMotionImageProxy];

      if (!v16)
      {
        if (!v4)
        {
          goto LABEL_18;
        }

        v17 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CD0]];
        if ([v17 length])
        {
          v30 = objc_opt_new();
          [v30 setWidth:100];
          [v30 setHeight:100];
          v31 = VUIAdvisoryInfoImageFormat();
          [v30 setFormat:v31];

          [v30 setImageURL:v17];
          v32 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C98]];
          if ([v32 length])
          {
            v33 = objc_opt_new();
            [v33 setWidth:100];
            [v33 setHeight:100];
            v34 = VUIAdvisoryInfoImageFormat();
            [v33 setFormat:v34];

            [v33 setImageURL:v32];
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v30 = 0;
          v33 = 0;
        }

        v35 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C30]];
        if ([v35 length])
        {
          v36 = objc_opt_new();
          [v36 setWidth:100];
          [v36 setHeight:100];
          v37 = VUIAdvisoryInfoImageFormat();
          [v36 setFormat:v37];

          [v36 setImageURL:v35];
        }

        else
        {
          v36 = 0;
        }

        if (v30 | v36)
        {
          objc_initWeak(location, self);
          v38 = [(VUIPlaybackManager *)self logoImageDownloader];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_8;
          v40[3] = &unk_1E8730DE8;
          objc_copyWeak(v43, location);
          v39 = v4;
          v43[1] = *&v11;
          v41 = v39;
          v42 = self;
          [v38 downloadImagesWithAdvisoryImageInfo:v30 photoSensitivityImageInfo:v33 highMotionWarningImageInfo:v36 completion:v40];

          objc_destroyWeak(v43);
          objc_destroyWeak(location);
        }

        else
        {
          [(VUIPlaybackManager *)self _addProductPlacementFeatureFromMediaItem:v4];
        }

LABEL_17:
LABEL_18:

        goto LABEL_19;
      }
    }

    v17 = dispatch_group_create();
    objc_initWeak(location, self);
    v18 = [(VUIPlaybackManager *)self ratingImageProxy];

    if (v18)
    {
      v19 = [(VUIPlaybackManager *)self ratingImageProxy];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke;
      v52[3] = &unk_1E8730D98;
      objc_copyWeak(&v54, location);
      v20 = v17;
      v53 = v20;
      [v19 setCompletionHandler:v52];

      dispatch_group_enter(v20);
      v21 = [(VUIPlaybackManager *)self ratingImageProxy];
      [v21 load];

      objc_destroyWeak(&v54);
    }

    v22 = [(VUIPlaybackManager *)self highMotionImageProxy];

    if (v22)
    {
      v23 = [(VUIPlaybackManager *)self highMotionImageProxy];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_3;
      v50[3] = &unk_1E8730DC0;
      v24 = v17;
      v51 = v24;
      [v23 setCompletionHandler:v50];

      dispatch_group_enter(v24);
      v25 = [(VUIPlaybackManager *)self highMotionImageProxy];
      [v25 load];
    }

    v26 = [(VUIPlaybackManager *)self photoSensitivityImageProxy];

    if (v26)
    {
      v27 = [(VUIPlaybackManager *)self photoSensitivityImageProxy];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_5;
      v47[3] = &unk_1E8730D98;
      objc_copyWeak(&v49, location);
      v28 = v17;
      v48 = v28;
      [v27 setCompletionHandler:v47];

      dispatch_group_enter(v28);
      v29 = [(VUIPlaybackManager *)self photoSensitivityImageProxy];
      [v29 load];

      objc_destroyWeak(&v49);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_7;
    block[3] = &unk_1E872FA60;
    objc_copyWeak(v46, location);
    v45 = v4;
    v46[1] = *&v11;
    dispatch_group_notify(v17, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v46);
    objc_destroyWeak(location);
    goto LABEL_17;
  }

  [(VUIPlaybackManager *)self _addProductPlacementFeatureFromMediaItem:v4];
LABEL_19:
}

void __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_2;
  block[3] = &unk_1E872D9B8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) uiImage];
  [WeakRetained setRatingImage:v2];

  dispatch_group_leave(*(a1 + 40));
}

void __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_4;
  block[3] = &unk_1E872D768;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_6;
  block[3] = &unk_1E872D9B8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) uiImage];
  [WeakRetained setPhotoSensitivityImage:v2];

  dispatch_group_leave(*(a1 + 40));
}

void __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained ratingImage];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 6.0;
  }

  else
  {
    v5 = [WeakRetained highMotionWarningImage];

    if (!v5)
    {
      goto LABEL_6;
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
  }

  [WeakRetained _addTVRatingFeatureFromMediaItem:v3 duration:v4];
LABEL_6:
}

void __54__VUIPlaybackManager__downloadRatingImageIfAvailable___block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setRatingImage:v9];

  [WeakRetained setPhotoSensitivityImage:v8];
  [WeakRetained setHighMotionWarningImage:v7];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = 6.0;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
  }

  [WeakRetained _addTVRatingFeatureFromMediaItem:v10 duration:v11];
LABEL_6:
  [*(a1 + 40) _downloadProductPlacementImageIfAvailable:*(a1 + 32)];
}

- (void)_downloadProductPlacementImageIfAvailable:(id)a3
{
  v4 = a3;
  v5 = [(VUIPlaybackManager *)self productPlacementImage];

  if (v4 && !v5)
  {
    v6 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CB8]];
    v7 = [v6 imageUrlStringFormat];
    if ([v7 length])
    {
      v8 = objc_opt_new();
      [v8 setWidth:100];
      [v8 setHeight:100];
      v9 = VUIAdvisoryInfoImageFormat();
      [v8 setFormat:v9];

      objc_initWeak(&location, self);
      v10 = [(VUIPlaybackManager *)self logoImageDownloader];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __64__VUIPlaybackManager__downloadProductPlacementImageIfAvailable___block_invoke;
      v11[3] = &unk_1E8730E10;
      objc_copyWeak(&v12, &location);
      [v10 downloadImagesWithAdvisoryImageInfo:v8 photoSensitivityImageInfo:0 highMotionWarningImageInfo:0 completion:v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __64__VUIPlaybackManager__downloadProductPlacementImageIfAvailable___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained setProductPlacementImage:v4];
  }
}

- (void)_addTVRatingFeatureFromMediaItem:(id)a3 duration:(double)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = [a3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D08]];
    if ([v6 count])
    {
      v7 = objc_opt_new();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v24;
        do
        {
          v12 = 0;
          do
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v23 + 1) + 8 * v12);
            v14 = objc_alloc(MEMORY[0x1E69D5A68]);
            [v13 start];
            v16 = v15;
            [v13 start];
            v18 = v17;
            [v13 duration];
            v20 = [v14 initWithStartTime:v16 endTime:v18 + v19];
            if (v20)
            {
              [v7 addObject:v20];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v7 = 0;
    }

    v21 = [[VUINowPlayingTVAdvisoryFeature alloc] initWithType:9 startTime:0.0 duration:a4];
    if (v21)
    {
      if ([v7 count])
      {
        [(VUINowPlayingTVAdvisoryFeature *)v21 setAdvisoryDisabledTimeRanges:v7];
      }

      [(VUINowPlayingTimeBoundFeature *)v21 setAutoRemove:1, v23];
      v22 = [(VUIPlaybackManager *)self featureMonitor];
      [v22 addFeature:v21];
    }
  }
}

- (void)_addProductPlacementFeatureFromMediaItem:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CB8]];
    v7 = [(VUIPlaybackManager *)self productPlacementImage];
    if (v7)
    {
    }

    else
    {
      v8 = [v6 localizedInfoString];
      v9 = [v8 length];

      if (!v9)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    v10 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D08]];
    if ([v10 count])
    {
      v11 = objc_opt_new();
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v30 = v10;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            v18 = objc_alloc(MEMORY[0x1E69D5A68]);
            [v17 start];
            v20 = v19;
            [v17 start];
            v22 = v21;
            [v17 duration];
            v24 = [v18 initWithStartTime:v20 endTime:v22 + v23];
            if (v24)
            {
              [v11 addObject:v24];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v14);
      }

      v10 = v30;
    }

    else
    {
      v11 = 0;
    }

    v25 = [v6 duration];
    [v25 doubleValue];
    v27 = v26;

    v28 = [[VUINowPlayingTVAdvisoryFeature alloc] initWithType:13 startTime:0.0 duration:v27];
    if (v28)
    {
      if ([v11 count])
      {
        [(VUINowPlayingTVAdvisoryFeature *)v28 setAdvisoryDisabledTimeRanges:v11];
      }

      [(VUINowPlayingTimeBoundFeature *)v28 setUserInfo:v6];
      [(VUINowPlayingTimeBoundFeature *)v28 setAutoRemove:1];
      v29 = [(VUIPlaybackManager *)self featureMonitor];
      [v29 addFeature:v28];
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)_addRollsInfoFeaturesFromMediaItem:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [a3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D08]];
  if ([v4 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 type];
          if ((v11 - 1) <= 2)
          {
            v12 = v11;
            v13 = [VUINowPlayingTimeBoundFeature alloc];
            [v10 start];
            v15 = v14;
            [v10 duration];
            v17 = [(VUINowPlayingTimeBoundFeature *)v13 initWithType:v12 + 3 startTime:v15 duration:v16];
            if (v17)
            {
              -[VUINowPlayingTimeBoundFeature setSkippable:](v17, "setSkippable:", [v10 isSkippable]);
              v18 = [(VUIPlaybackManager *)self featureMonitor];
              [v18 addFeature:v17];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }
}

- (void)_addSkipTriggerFeaturesToMonitor:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = [a3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D58]];
  v4 = [v3 count];
  v5 = sLogObject_5;
  v6 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = v5;
      *buf = 134217984;
      v60 = [v3 count];
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Number of skip features found = %lu", buf, 0xCu);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = v3;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v56;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v55 + 1) + 8 * i);
          if ([v13 type] == 1)
          {
            v14 = [VUINowPlayingTimeBoundFeature alloc];
            [v13 start];
            v16 = v15;
            [v13 duration];
            v18 = [(VUINowPlayingTimeBoundFeature *)v14 initWithType:7 startTime:v16 duration:v17];
            v19 = v18;
            if (v18)
            {
              [(VUINowPlayingTimeBoundFeature *)v18 setUserInfo:v13];
              v20 = +[VUIFeaturesConfiguration sharedInstance];
              v21 = [v20 nowPlayingConfig];
              [v21 prerollFadeInEndOffset];
              v23 = v22;

              [v13 target];
              v25 = v24;
              [v13 start];
              v27 = v25 - v26 - v23;
              if (v27 <= 0.0 || ([v13 promoInfo], v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
              {
                v29 = sLogObject_5;
                if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = v29;
                  [v13 target];
                  v32 = v31;
                  [v13 start];
                  *&v34 = v32 - v33;
                  v35 = [v13 promoInfo];
                  *buf = 134218242;
                  v60 = v34;
                  v61 = 2112;
                  v62 = *&v35;
                  _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "Pre-roll too short to fade back or not a promo, duration=%1.2f, promoInfo=%@", buf, 0x16u);
                }

                [v13 target];
                v37 = v36;
                [v13 start];
                v27 = v37 - v38;
                v23 = 0.0;
              }

              v39 = sLogObject_5;
              if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
              {
                v40 = v39;
                [v13 start];
                *buf = 134218240;
                v60 = v41;
                v61 = 2048;
                v62 = v27;
                _os_log_impl(&dword_1E323F000, v40, OS_LOG_TYPE_DEFAULT, "Adding preroll at %1.2f with duration %1.2f", buf, 0x16u);
              }

              [v13 target];
              v43 = v42 - v23;
              v44 = [VUINowPlayingTimeBoundFeature alloc];
              [v13 start];
              v46 = v45;
              [v13 target];
              v48 = v47;
              [v13 start];
              v50 = [(VUINowPlayingTimeBoundFeature *)v44 initWithType:8 startTime:v46 restartTime:v43 duration:v48 - v49];
              v51 = v50;
              if (v50)
              {
                [(VUINowPlayingTimeBoundFeature *)v50 setUserInfo:v19];
                v52 = [(VUIPlaybackManager *)self featureMonitor];
                [v52 addFeature:v51];
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v10);
    }

    v3 = v53;
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "No skip features found", buf, 2u);
  }
}

- (void)_addSkipIntroFeatureToMonitorIfNeeded:(BOOL)a3
{
  v58 = *MEMORY[0x1E69E9840];
  if (![(VUIPlaybackManager *)self transportBarVisible])
  {
    if ([(VUIPlaybackManager *)self isPIPing])
    {
      v5 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Not adding skip intro feature to the monitor as player view controller is in PIP state", buf, 2u);
      }
    }

    else
    {
      v6 = [(VUIPlaybackManager *)self featureMonitor];
      v7 = [v6 activeFeatureForType:7];
      if (v7)
      {
        [v6 deactivateFeature:v7 animated:1];
      }

      v8 = [v6 featuresForType:8];
      if ([v8 count])
      {
        v9 = [v6 player];
        v10 = v9;
        if (v9)
        {
          [v9 elapsedTime];
          v12 = v11;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v13 = v8;
          v14 = [v13 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v14)
          {
            v15 = v14;
            v45 = v10;
            v46 = v8;
            v44 = a3;
            v43 = self;
            v47 = v7;
            v48 = v6;
            v16 = 0;
            v17 = *v50;
            p_info = VUIPlayer.info;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v50 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                v20 = [*(*(&v49 + 1) + 8 * i) userInfo];
                v21 = [v20 userInfo];
                [v21 start];
                v23 = v22;
                [v21 target];
                v25 = v24;
                [v21 duration];
                v27 = v12 >= v23 && v12 < v25;
                v28 = v25 - v12;
                if (v27 && v28 > 5.0)
                {
                  if (v28 <= v26)
                  {
                    v30 = v25 - v12;
                  }

                  else
                  {
                    v30 = v26;
                  }

                  v31 = [objc_alloc((p_info + 126)) initWithType:7 startTime:v12 duration:v30];
                  [v31 setAutoRemove:1];
                  if (v31)
                  {
                    [v31 setUserInfo:v21];
                    if (v16)
                    {
                      v32 = [v16 userInfo];
                      [v32 start];
                      if (v33 < v23)
                      {
                        v34 = v31;
                        v35 = v16;
                        v36 = p_info;
                        v37 = v34;

                        v38 = v37;
                        p_info = v36;
                        v16 = v38;
                      }
                    }

                    else
                    {
                      v16 = v31;
                    }
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v15);

            if (v16)
            {
              v39 = sLogObject_5;
              v6 = v48;
              v10 = v45;
              v8 = v46;
              if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
              {
                v40 = v39;
                [v16 duration];
                *buf = 134218240;
                v54 = v12;
                v55 = 2048;
                v56 = v41;
                _os_log_impl(&dword_1E323F000, v40, OS_LOG_TYPE_DEFAULT, "Adding skipIntro feature to feature monitor with start time - %f and duration - %f", buf, 0x16u);
              }

              [v48 addFeature:v16];
              if (!v44)
              {
                v42 = sLogObject_5;
                if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1E323F000, v42, OS_LOG_TYPE_DEFAULT, "Removing preroll fade in due to user interaction", buf, 2u);
                }

                [(VUIPlaybackManager *)v43 _removePrerollFadeIn];
              }

              v7 = v47;
            }

            else
            {
              v7 = v47;
              v6 = v48;
              v10 = v45;
              v8 = v46;
            }
          }

          else
          {

            v16 = 0;
          }
        }
      }
    }
  }
}

- (id)_deepLinkPlaybackURLForCurrentMediaItem
{
  v2 = [(VUIPlaybackManager *)self activePlayer];
  v3 = [v2 currentMediaItem];

  v4 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  v5 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
  v6 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D28]];
  v7 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  if ([v4 length] && objc_msgSend(v7, "length"))
  {
    if ([v7 isEqualToString:*MEMORY[0x1E69D5EB8]] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69D5EC8]))
    {
      v8 = 1;
LABEL_6:
      v9 = MEMORY[0x1E69E1580];
      v10 = objc_alloc_init(MEMORY[0x1E69E1578]);
      v11 = [v9 _watchListAppPunchoutURLWithPlayable:v10 forContentType:v8 canonicalID:v4 showCanonicalID:v5 seasonCanonicalID:v6 allowPlayAction:0 isPlaybackURL:0];

      v12 = [MEMORY[0x1E69E1580] _punchoutURLForDirectPlayback:v11 ignoreExtras:1];

      goto LABEL_10;
    }

    if ([v7 isEqualToString:*MEMORY[0x1E69D5ED0]])
    {
      v8 = 4;
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (void)_startPlaybackFromBeginning
{
  v3 = +[VUIPlaybackTabManager sharedInstance];
  [v3 playbackFromBeginningTimeOffset];
  v5 = v4;

  v6 = [(VUIPlaybackManager *)self activePlayer];
  [v6 setElapsedTime:1 precise:v5];

  v7 = [(VUIPlaybackManager *)self activePlayer];
  [v7 play];
}

- (void)_pushMoreInfoControllerIfNeeded
{
  v2 = [(VUIPlaybackManager *)self moreInfoCanonicalViewController];
  if (v2)
  {
    v4 = v2;
    v3 = +[VUIApplicationRouter currentNavigationController];
    [v3 pushViewController:v4 animated:1];

    v2 = v4;
  }
}

- (void)_removeMoreInfoViewControllerIfNeeded
{
  v3 = [(VUIPlaybackManager *)self moreInfoCanonicalViewController];
  if (v3)
  {
    v11 = v3;
    v4 = [v3 navigationController];
    v5 = [v4 viewControllers];

    v6 = [v5 indexOfObject:v11];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      v8 = [v5 mutableCopy];
      [v8 removeObjectAtIndex:v7];
      v9 = [v8 copy];
      v10 = [v11 navigationController];
      [v10 setViewControllers:v9];

      [(VUIPlaybackManager *)self setMoreInfoCanonicalViewController:0];
    }

    v3 = v11;
  }
}

- (void)_setupInfoTab
{
  v3 = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  v4 = +[VUIPlaybackTabManager sharedInstance];
  v5 = [v4 shouldShowPlayFromBeginningButtonForMediaInfo];

  if (v5)
  {
    v6 = +[VUIPlaybackTabManager sharedInstance];
    v7 = [v6 playTitleForFromBeginningAction];

    v8 = +[VUIPlaybackTabManager sharedInstance];
    v9 = [v8 playImageForFromBeginningAction];

    v10 = MEMORY[0x1E69DC628];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __35__VUIPlaybackManager__setupInfoTab__block_invoke;
    v24[3] = &unk_1E8730E38;
    objc_copyWeak(&v25, &location);
    v11 = [v10 actionWithTitle:v7 image:v9 identifier:0 handler:v24];
    [v3 addObject:v11];

    objc_destroyWeak(&v25);
  }

  v12 = +[VUIPlaybackTabManager sharedInstance];
  v13 = [v12 shouldShowMoreInfoButton];

  if (v13)
  {
    v14 = +[VUIPlaybackTabManager sharedInstance];
    v15 = [v14 moreInfoTitle];

    v16 = +[VUIPlaybackTabManager sharedInstance];
    v17 = [v16 moreInfoImage];

    v18 = MEMORY[0x1E69DC628];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __35__VUIPlaybackManager__setupInfoTab__block_invoke_2;
    v22[3] = &unk_1E8730E38;
    objc_copyWeak(&v23, &location);
    v19 = [v18 actionWithTitle:v15 image:v17 identifier:0 handler:v22];
    [v3 addObject:v19];

    objc_destroyWeak(&v23);
  }

  v20 = [(VUIPlaybackManager *)self avPlayerViewController];
  v21 = [v3 copy];
  [v20 setInfoViewActions:v21];

  objc_destroyWeak(&location);
}

void __35__VUIPlaybackManager__setupInfoTab__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startPlaybackFromBeginning];
    v2 = +[VUIPlaybackTabManager sharedInstance];
    [v2 reportPlayFromBeginningMetrics];

    WeakRetained = v3;
  }
}

void __35__VUIPlaybackManager__setupInfoTab__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIPlaybackManager::will show more info", v12, 2u);
  }

  v5 = +[VUITVAppLauncher sharedInstance];
  v6 = [v5 appController];
  v7 = [v6 appContext];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v9 = +[VUIPlaybackTabManager sharedInstance];
      v10 = [v9 moreInfoViewControllerWithAppContext:v7];

      [WeakRetained setMoreInfoCanonicalViewController:v10];
      [WeakRetained startPictureInPicture];
      v11 = +[VUIPlaybackTabManager sharedInstance];
      [v11 reportMoreInfoMetrics];
    }
  }
}

- (void)_addPlayerToTimedMetadataManager:(id)a3
{
  v3 = a3;
  v4 = +[VUIInterfaceFactory sharedInstance];
  v5 = [v4 timedMetadataManager];

  [v5 addObserverForPlayer:v3];
}

- (void)_removePlayerFromTimedMetadataManager:(id)a3
{
  v3 = a3;
  v4 = +[VUIInterfaceFactory sharedInstance];
  v5 = [v4 timedMetadataManager];

  [v5 removeObserverForPlayer:v3];
}

- (BOOL)_hidePresentingViewControllerDuringPlayback
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"EnableHidePresentingViewControllerDuringPlayback"];

  return v3;
}

- (void)_setupBootstrapPostPlayFeatureMonitorForMediaItem:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIPlaybackManager *)self activePlayer];
  [v5 duration];
  v7 = v6;

  if (v7 != *MEMORY[0x1E69D5A80])
  {
    v8 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CB0]];
    v9 = +[VUIFeaturesConfiguration sharedInstance];
    v10 = [v9 playbackUpNextConfig];

    v11 = MEMORY[0x1E696AD98];
    if (v8)
    {
      [v8 doubleValue];
      v13 = v12;
    }

    else
    {
      [v10 minTimeIntervalFromEndToDisplay];
      v13 = v7 - v14;
    }

    [v10 bootstrapInterval];
    v16 = [v11 numberWithDouble:v13 - v15];
    if (v16)
    {
      [v8 doubleValue];
      if (v17 >= 0.0)
      {
        v18 = [(VUIPlaybackManager *)self featureMonitor];
        [v16 doubleValue];
        v20 = v19;
        v21 = [v18 featuresForType:3];
        v22 = [v21 firstObject];

        if (v22)
        {
          [(VUINowPlayingTimeBoundFeature *)v22 setStartTime:v20];
        }

        else
        {
          v22 = [[VUINowPlayingTimeBoundFeature alloc] initWithType:3 startTime:v20 duration:INFINITY];
        }

        [(VUINowPlayingTimeBoundFeature *)v22 setAutoRemove:1];
        v23 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412290;
          v25 = v22;
          _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "setup post play bootstrap feature:<%@>", &v24, 0xCu);
        }

        [v18 addFeature:v22];
      }
    }
  }
}

- (void)_addVideoDimmingViewForPostPlay
{
  v3 = [(VUIPlaybackManager *)self postPlayView];
  if (v3)
  {
    v4 = [(VUIPlaybackManager *)self avPlayerViewController];
    v5 = [v4 contentOverlayView];

    if (v5)
    {
      v6 = [v5 viewWithTag:88];
      if (!v6)
      {
        v7 = [v5 safeAreaLayoutGuide];
        [v7 layoutFrame];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v11, v13, v15}];
        v17 = [MEMORY[0x1E69DC888] blackColor];
        [v16 setBackgroundColor:v17];

        [v16 setAlpha:0.0];
        [v16 setAutoresizingMask:18];
        v18 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapAwayFromPostPlayGesture_];
        [v16 setTag:88];
        [v16 addGestureRecognizer:v18];
        [v5 insertSubview:v16 belowSubview:v3];
        v19 = MEMORY[0x1E69DD250];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __53__VUIPlaybackManager__addVideoDimmingViewForPostPlay__block_invoke;
        v20[3] = &unk_1E872D768;
        v6 = v16;
        v21 = v6;
        [v19 animateWithDuration:5242880 delay:v20 options:0 animations:0.5 completion:0.0];
      }
    }
  }
}

- (void)_removeVideoDimmingViewForPostPlay
{
  v3 = [(VUIPlaybackManager *)self avPlayerViewController];

  if (v3)
  {
    v4 = [(VUIPlaybackManager *)self avPlayerViewController];
    v5 = [v4 contentOverlayView];

    v6 = [v5 viewWithTag:88];
    v7 = v6;
    if (v6)
    {
      v8 = MEMORY[0x1E69DD250];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__VUIPlaybackManager__removeVideoDimmingViewForPostPlay__block_invoke;
      v11[3] = &unk_1E872D768;
      v12 = v6;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__VUIPlaybackManager__removeVideoDimmingViewForPostPlay__block_invoke_2;
      v9[3] = &unk_1E872F758;
      v10 = v12;
      [v8 animateWithDuration:5242880 delay:v11 options:v9 animations:0.5 completion:0.0];
    }
  }
}

- (void)_handleTapAwayFromPostPlayGesture:(id)a3
{
  if ([a3 state] == 3)
  {
    v6 = [(VUIPlaybackManager *)self stateMachine];
    v4 = objc_alloc(MEMORY[0x1E695DF20]);
    v5 = [v4 initWithObjectsAndKeys:{MEMORY[0x1E695E110], @"PostPlaySlideOutAnimationKey", 0}];
    [v6 postEvent:@"Post play cancelled" withContext:0 userInfo:v5];
  }
}

- (void)_postPlayItemSelected:(id)a3
{
  v3 = [(VUIPlaybackManager *)self stateMachine];
  [v3 postEvent:@"Post play item selected"];
}

- (void)_dismissPostPlayWithSwipe:(id)a3
{
  v5 = [(VUIPlaybackManager *)self stateMachine];
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [v3 initWithObjectsAndKeys:{MEMORY[0x1E695E118], @"PostPlaySlideOutAnimationKey", 0}];
  [v5 postEvent:@"Post play cancelled" withContext:0 userInfo:v4];
}

- (void)_resetAutoPlayBingeWatchingQualifications
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(VUIPlaybackManager *)self setInitialPlaybackStartDate:v3];

  [(VUIPlaybackManager *)self setAutoPlayedVideosCount:0];
}

- (void)multiPlayerDetailsViewControllerDidSelectLockupWithIdentifier:(id)a3 impressionsData:(id)a4 locationData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(VUIPlaybackManager *)self multiPlayerViewController];
  [v11 recordMetricsEventWithIdentifier:v10 impressionsData:v9 locationData:v8 didAddPlayer:1];
}

- (void)multiPlayerDetailsViewControllerDidDeselectLockupWithIdentifier:(id)a3 impressionsData:(id)a4 locationData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(VUIPlaybackManager *)self multiPlayerViewController];
  [v11 recordMetricsEventWithIdentifier:v10 impressionsData:v9 locationData:v8 didAddPlayer:0];
}

- (id)detailsViewControllerForMultiPlayerViewController:(id)a3
{
  v4 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v5 = [v4 firstObject];

  v6 = +[VUIPlaybackTabManager sharedInstance];
  v7 = [v6 tabsInfo];
  v8 = [v7 multiviewTabInfo];

  if (v8)
  {
    v9 = [v5 broadcastLocale];
    v10 = v9;
    v11 = &stru_1F5DB25C0;
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = +[VUIPlaybackTabManager sharedInstance];
    v14 = [v5 playsFromStart];
    v15 = [v13 createHUDViewControllerWithTabInfo:v8 excludingCanonicals:MEMORY[0x1E695E0F0] isMultiview:1 locale:v12 playsFromStart:v14];

    v16 = [v15 hudContentViewController];
    LODWORD(v13) = [v16 conformsToProtocol:&unk_1F5F3CDE0];

    if (v13)
    {
      v17 = [v15 hudContentViewController];
      [v17 setDetailDelegate:self];
      [(VUIPlaybackManager *)self setMultiPlayerDetailsViewController:v17];
    }

    v18 = [v15 hudContentViewController];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (double)detailsViewHeightForMultiPlayerViewController:(id)a3
{
  v3 = [(VUIPlaybackManager *)self multiPlayerDetailsViewController];
  [v3 contentsHeight];
  if (v4 <= 0.0)
  {
    v5 = 326.5;
  }

  else
  {
    v5 = v4 + 54.0;
  }

  return v5;
}

- (void)multiPlayerViewController:(id)a3 didEnterFullscreenWithPlayerViewController:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = @"PlayerViewControllerKey";
    v10[0] = a4;
    v5 = MEMORY[0x1E695DF20];
    v6 = a4;
    v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(VUIPlaybackManager *)self stateMachine];
  [v8 postEvent:@"Multiview did enter fullscreen" withContext:0 userInfo:v7];
}

- (void)multiPlayerViewController:(id)a3 didExitFullscreenWithPlayerViewController:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = @"PlayerViewControllerKey";
    v10[0] = a4;
    v5 = MEMORY[0x1E695DF20];
    v6 = a4;
    v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(VUIPlaybackManager *)self stateMachine];
  [v8 postEvent:@"Multiview did exit fullscreen" withContext:0 userInfo:v7];
}

- (void)multiPlayerViewController:(id)a3 didDismissWithPlayerViewController:(id)a4 withReason:(unint64_t)a5
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v10 = [v6 dictionary];
  [v10 vui_setObjectIfNotNil:v7 forKey:@"PlayerViewControllerKey"];

  v8 = [(VUIPlaybackManager *)self stateMachine];
  v9 = [v10 copy];
  [v8 postEvent:@"Dismiss multiview playback" withContext:0 userInfo:v9];
}

- (void)multiPlayerViewController:(id)a3 detailsViewControllerWillAppear:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v6 = a4;
  v7 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Multi player view controller details view controller will appear %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v24;
    v14 = *MEMORY[0x1E69D5AE8];
    do
    {
      v15 = 0;
      v16 = v12;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v17 = [*(*(&v23 + 1) + 8 * v15) player];
        v18 = [v17 currentMediaItem];
        v12 = [v18 mediaItemMetadataForProperty:v14];

        if ([v12 length])
        {
          [v8 addObject:v12];
        }

        ++v15;
        v16 = v12;
      }

      while (v11 != v15);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (v21)
  {
    v19 = [v8 copy];
    [v21 updateWithSelectedPlaybackIdentifiers:v19 reloadingData:0];

    v20 = +[VUIPlaybackTabManager sharedInstance];
    [v20 updatePrefetchedDataOnExistingHUDContentViewController:v21 canonicalId:v12 excludingCanonicals:MEMORY[0x1E695E0F0]];
  }
}

- (void)multiPlayerViewController:(id)a3 detailsViewControllerDidAppear:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Multi player view controller details view controller did appear %@", &v6, 0xCu);
  }
}

- (void)multiPlayerViewController:(id)a3 detailsViewControllerWillDisappear:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Multi player view controller details view controller will disappear %@", &v6, 0xCu);
  }
}

- (void)multiPlayerViewController:(id)a3 detailsViewControllerDidDisappear:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Multi player view controller details view controller did disappear %@", &v6, 0xCu);
  }
}

- (void)multiPlayerViewController:(id)a3 didSelectPlayerViewController:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(VUIPlaybackManager *)self stateMachine];
  v8 = @"PlayerViewControllerKey";
  v9[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v6 postEvent:@"Did select multiview player" withContext:0 userInfo:v7];
}

- (void)multiPlayerViewController:(id)a3 didSwapPlayerViewControllerAtIndex:(int64_t)a4 withPlayerAtIndex:(int64_t)a5
{
  v14 = a3;
  v8 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v9 = [v8 count];

  if (v9 >= 2)
  {
    v10 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
    [v10 exchangeObjectAtIndex:a4 withObjectAtIndex:a5];

    if ([v14 distribution] == 1)
    {
      if (!a4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
      if ([v11 count] != 3)
      {
LABEL_9:

        goto LABEL_10;
      }

      if (!a4)
      {
LABEL_8:
        v12 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
        v11 = [v12 objectAtIndex:0];

        v13 = [v11 playerViewController];
        [(VUIPlaybackManager *)self _muteAllMultiviewPlayersExcept:v13];

        goto LABEL_9;
      }
    }

    if (a5)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_10:
}

- (void)multiPlayerViewController:(id)a3 didBeginDropWithMediaInfo:(id)a4 atIndex:(int64_t)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Multi player view controller did begin drop with %@", &v14, 0xCu);
  }

  if (![(VUIPlaybackManager *)self _multiviewContainsMediaInfo:v9])
  {
    v11 = [(VUIPlaybackManager *)self multiviewPlayerCount];
    if (v11 < [(VUIPlaybackManager *)self maxMultiviewPlayerCount])
    {
      [v8 setProspectivePlayerVisible:1 atIndex:a5 animated:1 completion:0];
      v12 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
      v13 = +[VUIMultiviewPlaybackInfo prospectivePlaybackInfo];
      [v12 insertObject:v13 atIndex:a5];

      [(VUIPlaybackManager *)self _updateMultiviewReportingMetrics];
    }
  }
}

- (void)multiPlayerViewController:(id)a3 didEndDropWithMediaInfo:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v7;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Multi player view controller did end drop with %@", &v19, 0xCu);
  }

  v9 = [v6 prospectivePlayerIndex];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    v11 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
    if (v10 >= [v11 count])
    {
LABEL_8:

      goto LABEL_9;
    }

    v12 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
    v13 = [v12 objectAtIndex:v10];
    v14 = +[VUIMultiviewPlaybackInfo prospectivePlaybackInfo];

    if (v13 == v14)
    {
      v15 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
      v11 = [v15 objectAtIndex:v10];

      v16 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
      [v16 removeObjectAtIndex:v10];

      v17 = [v11 player];

      if (v17)
      {
        v18 = [v11 player];
        [VUIPlaybackEndManagerObjC remove:v18];
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  [v6 setProspectivePlayerVisible:0 animated:1 completion:0];
}

- (void)multiPlayerViewController:(id)a3 didDropWithMediaInfo:(id)a4 overPlayerAtIndex:(int64_t)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__VUIPlaybackManager_multiPlayerViewController_didDropWithMediaInfo_overPlayerAtIndex___block_invoke;
  aBlock[3] = &unk_1E872F8D0;
  v10 = v8;
  v25 = v10;
  objc_copyWeak(&v26, &location);
  v11 = _Block_copy(aBlock);
  v12 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v13 = [v12 objectAtIndex:a5];
  v14 = +[VUIMultiviewPlaybackInfo prospectivePlaybackInfo];
  v15 = v13 == v14;

  if (v15)
  {
    v16 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
    v17 = [v16 objectAtIndex:a5];

    v18 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
    [v18 removeObjectAtIndex:a5];

    v19 = [v17 player];

    if (v19)
    {
      v20 = [v17 player];
      [VUIPlaybackEndManagerObjC remove:v20];
    }
  }

  v21 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v9;
    v30 = 2048;
    v31 = a5;
    _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Multi player view controller did drop with %@ - %ld", buf, 0x16u);
  }

  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = [(VUIPlaybackManager *)self multiviewPlayerCount];
    if (v22 == [(VUIPlaybackManager *)self maxMultiviewPlayerCount])
    {
      v23 = [v9 tvpPlaylist];
      [(VUIPlaybackManager *)self replacePlaylistInMultiviewAtIndex:a5 withPlaylist:v23 animated:1];
LABEL_14:

      goto LABEL_15;
    }
  }

  if (![(VUIPlaybackManager *)self _multiviewContainsMediaInfo:v9])
  {
    v23 = [v9 tvpPlaylist];
    if (a5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(VUIPlaybackManager *)self addPlaylistToMultiview:v23 animated:1 completion:v11];
    }

    else
    {
      [(VUIPlaybackManager *)self addPlaylistToMultiview:v23 atIndex:a5 animated:1 completion:v11];
    }

    goto LABEL_14;
  }

LABEL_15:

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __87__VUIPlaybackManager_multiPlayerViewController_didDropWithMediaInfo_overPlayerAtIndex___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setProspectivePlayerVisible:0 animated:1 completion:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained multiPlayerDetailsViewController];
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 multiviewIdentifiers];
  v5 = [v4 copy];
  [v2 updateVisibleCellsWithPlaybackIdentifiers:v5];
}

- (void)multiPlayerViewController:(id)a3 didRemovePlayer:(id)a4 atIndex:(int64_t)a5
{
  v7 = [(VUIPlaybackManager *)self multiviewPlaybackInfo:a3];
  v8 = [v7 count];

  if (v8 > a5)
  {
    v9 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
    v15 = [v9 objectAtIndex:a5];

    v10 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
    [v10 removeObjectAtIndex:a5];

    v11 = [v15 player];

    if (v11)
    {
      v12 = [v15 player];
      [VUIPlaybackEndManagerObjC remove:v12];
    }

    v13 = [v15 player];
    [v13 stop];

    v14 = [v15 player];
    [v14 invalidate];

    [(VUIPlaybackManager *)self _unmuteNextAvailableMultiviewPlayer];
  }
}

- (void)multiPlayerViewController:(id)a3 didCrossSupportedScreenSizeBoundary:(BOOL)a4
{
  v6 = a3;
  if (!a4)
  {
    v7 = [MEMORY[0x1E69DC668] sharedApplication];
    v8 = [v7 applicationState];

    if (v8 != 2)
    {
      v9 = [(VUIPlaybackManager *)self _currentlyPlayingMultiviewInfo];
      v10 = [v9 playerViewController];
      if (v10)
      {
        objc_initWeak(&location, self);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __84__VUIPlaybackManager_multiPlayerViewController_didCrossSupportedScreenSizeBoundary___block_invoke;
        v11[3] = &unk_1E872F038;
        objc_copyWeak(&v13, &location);
        v12 = v10;
        [v6 enterFullscreenWithPlayerViewController:v12 completion:v11];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __84__VUIPlaybackManager_multiPlayerViewController_didCrossSupportedScreenSizeBoundary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isTrackingPlayerViewFrame];

  if ((v3 & 1) == 0)
  {
    v6 = [*(a1 + 32) view];
    v4 = objc_loadWeakRetained((a1 + 40));
    [v6 addObserver:v4 forKeyPath:@"frame" options:0 context:__PlayerViewControllerFrameKVOContext];

    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setTrackingPlayerViewFrame:1];
  }
}

- (void)multiPlayerViewController:(id)a3 didPinchPlayerToDismiss:(id)a4
{
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Showing multiview from a pinch", v7, 2u);
  }

  v6 = [(VUIPlaybackManager *)self stateMachine];
  [v6 postEvent:@"Show multiview playback" withContext:0 userInfo:0];
}

- (void)multiPlayerViewController:(id)a3 playerViewController:(id)a4 didResizeToFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17 = [(VUIPlaybackManager *)self _multiviewInfoForPlayerViewController:a4];
  v9 = [v17 player];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetWidth(v19)];
  [v9 setReportingValueWithNumber:v10 forKey:@"multiviewWidth"];

  v11 = [v17 player];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetHeight(v20)];
  [v11 setReportingValueWithNumber:v12 forKey:@"multiviewHeight"];

  v13 = [v17 player];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMinX(v21)];
  [v13 setReportingValueWithNumber:v14 forKey:@"multiviewOriginX"];

  v15 = [v17 player];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMinY(v22)];
  [v15 setReportingValueWithNumber:v16 forKey:@"multiviewOriginY"];
}

- (id)_currentlyPlayingMultiviewInfo
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 context] == 1)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_unmuteNextAvailableMultiviewPlayer
{
  v3 = [(VUIPlaybackManager *)self _currentlyPlayingMultiviewInfo];
  if (!v3)
  {
    v4 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
    v5 = [v4 firstObject];

    if (v5)
    {
      v6 = [v5 player];

      if (v6)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __57__VUIPlaybackManager__unmuteNextAvailableMultiviewPlayer__block_invoke;
        v7[3] = &unk_1E872D768;
        v8 = v5;
        [v8 swapActiveAudioWithPlaybackInfo:0 completion:v7];
      }
    }
  }
}

void __57__VUIPlaybackManager__unmuteNextAvailableMultiviewPlayer__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContext:1];
  v2 = [*(a1 + 32) playerViewController];
  [v2 setCanStartPictureInPictureAutomaticallyFromInline:1];
}

- (id)_multiviewInfoForPlayer:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 player];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_multiviewContainsMediaInfo:(id)a3
{
  v4 = [a3 tvpPlaylist];
  v5 = [v4 currentMediaItem];
  v6 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];

  LOBYTE(self) = [(VUIPlaybackManager *)self multiviewContainsMediaItemWithIdentifier:v6];
  return self;
}

- (void)upNextButtonTapped:(id)a3
{
  v10 = [(VUIPlaybackManager *)self promoMetadataView];
  v4 = [v10 skipInfo];
  v5 = [v4 promoInfo];
  v6 = [(VUIPlaybackManager *)self activePlayer];
  v7 = [v6 currentMediaItem];

  v8 = [VUIMetricsMediaEvent clickMetricsForUpNextWithPromoInfo:v5 onMediaItem:v7];
  v9 = [(VUIPlaybackManager *)self metricsRecorder];
  [v9 recordClick:v8 locationIndex:0];

  [(VUIPlaybackManager *)self _removePrerollFadeIn];
}

- (void)autoPlayTimerDidCompleteForPostPlayView:(id)a3
{
  v3 = [(VUIPlaybackManager *)self stateMachine];
  [v3 postEvent:@"Post play auto play timer did complete"];
}

- (BOOL)allowedToAutoPlay
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlaybackManager *)self initialPlaybackStartDate];

  if (!v3)
  {
    return 1;
  }

  v4 = +[VUIFeaturesConfiguration sharedInstance];
  v5 = [v4 playbackUpNextConfig];

  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [(VUIPlaybackManager *)self initialPlaybackStartDate];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = v9;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "current continuous playback time:(%f)", &v19, 0xCu);
  }

  v11 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v5 maximumAutoPlayableItems];
    v14 = [(VUIPlaybackManager *)self autoPlayedVideosCount];
    v19 = 134218240;
    v20 = *&v13;
    v21 = 2048;
    v22 = v14;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "maximum auto playable items:(%lu) current count:(%lu)", &v19, 0x16u);
  }

  if (+[VUIGroupActivitiesManagerObjC isSessionActive])
  {
    v15 = 0;
  }

  else
  {
    [v5 minAutoPlayStopTime];
    if (v9 >= v16)
    {
      v17 = [(VUIPlaybackManager *)self autoPlayedVideosCount];
      v15 = v17 < [v5 maximumAutoPlayableItems];
    }

    else
    {
      v15 = 1;
    }
  }

  return v15;
}

- (BOOL)_allowedToAutoPlayForType:(unint64_t)a3
{
  v4 = [VUISettingsManager isPostPlayAutoPlayEnabledForType:postPlayAutoPlayTypeFromViewType(a3)];
  if (![(VUIPlaybackManager *)self _isNewPostPlayEnabled]&& !v4)
  {
    return 0;
  }

  return [(VUIPlaybackManager *)self allowedToAutoPlay];
}

- (id)playerViewController:(id)a3 targetViewForDismissalAnimationWithProposedTargetView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[VUITVExtension isRunningInCompanionApp])
  {
    v8 = [v6 view];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v63.origin.x = v10;
    v63.origin.y = v12;
    v63.size.width = v14;
    v63.size.height = v16;
    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v10, CGRectGetHeight(v63) + -1.0, v14, v16}];
    v18 = [v6 view];
    [v18 addSubview:v17];

    goto LABEL_13;
  }

  v19 = [(VUIPlaybackManager *)self stateMachine];
  v20 = [v19 currentState];
  v21 = [v20 isEqualToString:@"Showing video full screen with post play content on screen"];

  if (v21)
  {
    v22 = [(VUIPlaybackManager *)self playbackContainerViewController];
    [(VUIPlaybackManager *)self _calculatePostPlayPipRectForParent:v22];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v64.origin.x = v24;
    v64.origin.y = v26;
    v64.size.width = v28;
    v64.size.height = v30;
    if (CGRectIsNull(v64))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v31 = [(VUIPlaybackManager *)self stateMachine];
  v32 = [v31 currentState];
  if ([v32 isEqualToString:@"Showing multiview playback"])
  {

LABEL_9:
    v36 = [(VUIPlaybackManager *)self multiPlayerViewController];
    [v36 presentationRectForPlayerViewController:v6];
    v24 = v37;
    v26 = v38;
    v28 = v39;
    v30 = v40;

LABEL_10:
    v41 = v7;
    v42 = v24;
    v43 = v26;
    v44 = v28;
    v45 = v30;
    goto LABEL_11;
  }

  v33 = [(VUIPlaybackManager *)self stateMachine];
  v34 = [v33 currentState];
  v35 = [v34 isEqualToString:@"Showing multiview playback in PIP"];

  if (v35)
  {
    goto LABEL_9;
  }

  v47 = [(VUIPlaybackManager *)self stateMachine];
  v48 = [v47 currentState];
  v49 = [v48 isEqualToString:@"Transferring player to background media"];

  v50 = [(VUIPlaybackManager *)self playbackContainerViewController];
  v51 = [v50 view];
  [v51 bounds];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  if (v49)
  {
    v59 = v52;

    v60 = [(VUIPlaybackManager *)self playbackContainerViewController];
    v61 = [v60 view];

    [v61 setFrame:{v54, v59, v56, v58}];
    v7 = v61;
    goto LABEL_12;
  }

  v41 = v7;
  v42 = v54;
  v43 = v58;
  v44 = v56;
  v45 = v58;
LABEL_11:
  [v41 setFrame:{v42, v43, v44, v45}];
LABEL_12:
  v7 = v7;
  v17 = v7;
LABEL_13:

  return v17;
}

- (void)_updateTimeBoundFeature:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Updating UI with time bound feature - %@", buf, 0xCu);
  }

  v8 = [v6 type];
  if (v8 > 6)
  {
    if (v8 <= 8)
    {
      if (v8 != 7)
      {
        [(VUIPlaybackManager *)self _addSkipIntroFeatureToMonitorIfNeeded:1];
        goto LABEL_38;
      }

      if ([v6 isActive])
      {
        [(VUIPlaybackManager *)self _showSkipAndPromoView:1 animated:v4];
        goto LABEL_38;
      }

      v22 = [(VUIPlaybackManager *)self featureMonitor];
      v13 = [v22 activeFeatureForType:7];

      if (!v13)
      {
        [(VUIPlaybackManager *)self _showSkipAndPromoView:0 animated:v4];
      }

LABEL_34:

      goto LABEL_38;
    }

    if (v8 != 9)
    {
      if (v8 != 13)
      {
        goto LABEL_38;
      }

      v13 = [v6 userInfo];
      v14 = [(VUIPlaybackManager *)self productPlacementImage];
      if (v14)
      {
      }

      else
      {
        v23 = [v13 localizedInfoString];
        v24 = [v23 length];

        if (!v24)
        {
          goto LABEL_34;
        }
      }

      v25 = [v6 isActive];
      v26 = [(VUIPlaybackManager *)self productPlacementImage];
      [(VUIPlaybackManager *)self _showProductPlacement:v25 withImage:v26 animated:v4];

      goto LABEL_34;
    }

    v15 = [v6 isActive];
    v16 = [(VUIPlaybackManager *)self ratingImage];
    v17 = [(VUIPlaybackManager *)self photoSensitivityImage];
    v18 = [(VUIPlaybackManager *)self highMotionWarningImage];
    [(VUIPlaybackManager *)self _showTVRating:v15 withRatingImage:v16 photoSensitivityImage:v17 highMotionWarningImage:v18 animated:v4];

    if ([v6 isActive])
    {
      goto LABEL_38;
    }

    v19 = [(VUIPlaybackManager *)self currentMediaItem];
    v20 = [v19 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CB8]];

    v21 = [(VUIPlaybackManager *)self productPlacementImage];
    if (v21)
    {
    }

    else
    {
      v27 = [v20 localizedInfoString];
      v28 = [v27 length];

      if (!v28)
      {
LABEL_37:

        goto LABEL_38;
      }
    }

    v29 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__VUIPlaybackManager__updateTimeBoundFeature_animated___block_invoke;
    block[3] = &unk_1E872D768;
    block[4] = self;
    dispatch_after(v29, MEMORY[0x1E69E96A0], block);
    goto LABEL_37;
  }

  if ((v8 - 4) >= 3)
  {
    if (v8 == 2)
    {
      if ([v6 isActive])
      {
        v10 = [(VUIPlaybackManager *)self stateMachine];
        v11 = v10;
        v12 = @"Post play time boundary crossed";
      }

      else
      {
        if ([(VUIPlaybackManager *)self _isNewPostPlayEnabled])
        {
          goto LABEL_38;
        }

        v10 = [(VUIPlaybackManager *)self stateMachine];
        v11 = v10;
        v12 = @"Post play cancelled";
      }
    }

    else
    {
      if (v8 != 3 || ![v6 isActive])
      {
        goto LABEL_38;
      }

      v10 = [(VUIPlaybackManager *)self stateMachine];
      v11 = v10;
      v12 = @"Post play configuration time reached";
    }

    [v10 postEvent:v12];

    goto LABEL_38;
  }

  if ([v6 isActive])
  {
    v9 = [v6 isSkippable] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  [(VUIPlaybackManager *)self setRequiresLinearPlayback:v9];
  [(VUIPlaybackManager *)self _updateRequiresLinearPlayback];
LABEL_38:
}

void __55__VUIPlaybackManager__updateTimeBoundFeature_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentMediaItem];
  [v1 _addProductPlacementFeatureFromMediaItem:v2];
}

- (void)mediaInfoDidChangeTo:(id)a3 canPlay:(BOOL)a4 wasAutoPlayed:(BOOL)a5
{
  v6 = a4;
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v6 && !a5)
  {
    [(VUIPlaybackManager *)self _resetAutoPlayBingeWatchingQualifications];
  }

  v22 = @"CanPlayMediaKey";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v23[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v11 = [v10 mutableCopy];

  if (v8)
  {
    [v11 setObject:v8 forKey:@"PlaylistKey"];
  }

  v12 = [(VUIPlaybackManager *)self avPlayerViewController];

  if (v12)
  {
    v13 = [(VUIPlaybackManager *)self avPlayerViewController];
    [v11 setObject:v13 forKey:@"PlayerViewControllerKey"];
  }

  v14 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = VUIBoolLogString();
    v18 = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Now playing view controller media info changed:<%@>, canPlay:<%@>", &v18, 0x16u);
  }

  v17 = [(VUIPlaybackManager *)self stateMachine];
  [v17 postEvent:@"Media info did change" withContext:0 userInfo:v11];
}

- (void)_showShareMediaMenuForMediaItem:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Try to show share button for item: %@", &v9, 0xCu);
  }

  if ([VUIMediaShareCoordinator shouldShowShareForMediaItem:v4])
  {
    v6 = [(VUIPlaybackManager *)self mainAVPlayerViewController];
    v7 = [VUIMediaShareControlButton shareControlItemForMediaItem:v4 inPlayerViewController:v6];

    [(VUIPlaybackManager *)self setShareControlItem:v7];
    [(VUIPlaybackManager *)self _mainPlayerViewControllerSetupControlItems];
  }

  else
  {
    v8 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "This item: %@ doesn't support share in player", &v9, 0xCu);
    }
  }
}

- (void)_removeAdvisoryViews
{
  v2 = [(VUIPlaybackManager *)self ratingView];
  [v2 removeAllViews];
}

- (void)_showOrUpdateAdvisoryViewsIfNeeded
{
  v38 = [(VUIPlaybackManager *)self avPlayerViewController];
  [v38 videoBounds];
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  if (CGRectEqualToRect(v40, *MEMORY[0x1E695F058]))
  {
    goto LABEL_20;
  }

  if ([(VUIPlaybackManager *)self shouldDisplayTVRatingWhenVideoBoundsIsAvailable])
  {
    v7 = [(VUIPlaybackManager *)self ratingImage];
    if (v7)
    {
      v8 = [(VUIPlaybackManager *)self photoSensitivityImage];
      v9 = [(VUIPlaybackManager *)self highMotionWarningImage];
      [(VUIPlaybackManager *)self _showTVRating:1 withRatingImage:v7 photoSensitivityImage:v8 highMotionWarningImage:v9 animated:[(VUIPlaybackManager *)self shouldAnimateTVRatingView]];

      [(VUIPlaybackManager *)self setShouldDisplayTVRatingWhenVideoBoundsIsAvailable:0];
      [(VUIPlaybackManager *)self setShouldAnimateTVRatingView:0];
    }

LABEL_14:

    goto LABEL_15;
  }

  v10 = [(VUIPlaybackManager *)self ratingView];

  if (v10)
  {
    v7 = [(VUIPlaybackManager *)self ratingView];
    [v7 frame];
    v11 = [v7 layout];
    [v11 margin];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v7 traitCollection];
    v19 = [v18 userInterfaceIdiom];

    if (!v19 && ([MEMORY[0x1E69DD2E8] vui_interfaceOrientation] - 1) < 2 || +[VUIUtilities isIpadPortrait](VUIUtilities, "isIpadPortrait"))
    {
      [v11 portraitMargin];
      v13 = v20;
      v15 = v21;
      v17 = v22;
    }

    if ([v7 vuiIsRTL])
    {
      [v7 sizeThatFits:{width, height}];
      v24 = width - (v17 + v23);
    }

    else
    {
      v24 = x + v15;
    }

    [v7 sizeThatFits:{width, height}];
    [v7 setFrame:{v24, y + v13, v25, v26}];

    goto LABEL_14;
  }

LABEL_15:
  if ([(VUIPlaybackManager *)self shouldDisplayProductPlacementWhenVideoBoundsIsAvailable]&& ([(VUIPlaybackManager *)self ratingView], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
  {
    v37 = [(VUIPlaybackManager *)self productPlacementImage];
    [(VUIPlaybackManager *)self _showProductPlacement:1 withImage:v37 animated:[(VUIPlaybackManager *)self shouldAnimateProductPlacementView]];

    [(VUIPlaybackManager *)self setShouldDisplayProductPlacementWhenVideoBoundsIsAvailable:0];
    [(VUIPlaybackManager *)self setShouldAnimateProductPlacementView:0];
  }

  else
  {
    v28 = [(VUIPlaybackManager *)self productPlacementView];

    if (v28)
    {
      v29 = [(VUIPlaybackManager *)self productPlacementView];
      v30 = [v29 layout];
      [v30 margin];
      v32 = x + v31;
      [v30 margin];
      v34 = y + v33;
      [v29 sizeThatFits:{width, height}];
      [v29 setFrame:{v32, v34, v35, v36}];
    }
  }

LABEL_20:
}

- (void)_showTVRating:(BOOL)a3 withRatingImage:(id)a4 photoSensitivityImage:(id)a5 highMotionWarningImage:(id)a6 animated:(BOOL)a7
{
  v10 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke;
  aBlock[3] = &unk_1E8730E60;
  objc_copyWeak(&v34, location);
  v15 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_2;
  v26[3] = &unk_1E8730E88;
  objc_copyWeak(&v31, location);
  v16 = v12;
  v27 = v16;
  v17 = v13;
  v28 = v17;
  v18 = v14;
  v29 = v18;
  v19 = v15;
  v30 = v19;
  v32 = a7;
  v20 = _Block_copy(v26);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_5;
  v23[3] = &unk_1E872EDE0;
  objc_copyWeak(&v24, location);
  v25 = a7;
  v21 = _Block_copy(v23);
  v22 = v21;
  if (v10)
  {
    v21 = v20;
  }

  (*(v21 + 2))();

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v31);

  objc_destroyWeak(&v34);
  objc_destroyWeak(location);
}

void __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  v42 = a2;
  v27 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v29 = [v42 traitCollection];
  v30 = [v29 userInterfaceIdiom];

  if ((v30 || ([MEMORY[0x1E69DD2E8] vui_interfaceOrientation] - 1) >= 2) && !+[VUIUtilities isIpadPortrait](VUIUtilities, "isIpadPortrait"))
  {
    a8 = a4;
    a9 = a5;
    a11 = a7;
  }

  if ([v42 vuiIsRTL])
  {
    [v42 sizeThatFits:{a14, a15}];
    v32 = a14 - (a11 + v31);
  }

  else
  {
    v32 = a12 + a9;
  }

  v33 = a13 + a8;
  [v42 sizeThatFits:{a14, a15}];
  v35 = v34;
  [v42 setFrame:{v32, v33, v36, v34}];
  [v27 addSubview:v42];

  [v42 layoutIfNeeded];
  [v42 center];
  v38 = v37;
  v39 = [WeakRetained platterView];
  [v39 setFrame:{v38, v33 + -10.0, 0.0, v35 + 20.0}];

  v40 = [WeakRetained platterView];
  [v40 layoutIfNeeded];
}

void __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained activePlayer];
  v4 = [v3 currentMediaItem];

  if (v4)
  {
    v5 = [WeakRetained avPlayerViewController];
    [v5 videoBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [WeakRetained avPlayerViewController];
    v15 = [v14 contentOverlayView];

    v63.origin.x = v7;
    v63.origin.y = v9;
    v63.size.width = v11;
    v63.size.height = v13;
    if (CGRectEqualToRect(v63, *MEMORY[0x1E695F058]) || !v15)
    {
      [WeakRetained setShouldDisplayTVRatingWhenVideoBoundsIsAvailable:1];
      [WeakRetained setShouldAnimateTVRatingView:*(a1 + 72)];
      goto LABEL_9;
    }

    v16 = [VUIVideoAdvisoryInfoDictionaryBuilder advisoryInfoDictionaryWithRatingImage:*(a1 + 32) photoSensitivityImage:*(a1 + 40) highMotionWarningImage:*(a1 + 48) andMediaItem:v4];
    v17 = v16;
    if (*(a1 + 32))
    {
      v18 = [VUIVideoAdvisoryView alloc];
      v19 = -[VUIVideoAdvisoryView initWithAdvisoryInfoDictionary:reduceMotion:](v18, "initWithAdvisoryInfoDictionary:reduceMotion:", v17, [MEMORY[0x1E69DF678] isFeatureEnabled:1]);
      v20 = [(VUIVideoAdvisoryView *)v19 layout];
      v21 = *(a1 + 56);
      [v20 margin];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      [v20 portraitMargin];
      (*(v21 + 16))(v21, v19, v15, v23, v25, v27, v29, v30, v31, v32, v33, v7, v9, v11, v13);
      [WeakRetained setRatingView:v19];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_3;
      block[3] = &unk_1E872F708;
      objc_copyWeak(&v61, (a1 + 64));
      v60 = v19;
      v62 = *(a1 + 72);
      v34 = v19;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v61);
    }

    else
    {
      if (!*(a1 + 48))
      {
        goto LABEL_7;
      }

      v35 = [v16 objectForKeyedSubscript:@"VUIAdvisoryViewAdditionalViewsDictionaryKey"];
      v20 = v35;
      if (v35)
      {
        v36 = [v35 firstObject];

        if (v36)
        {
          v37 = [v20 firstObject];
          v38 = [VUIAdditionalAdvisoryInfoView alloc];
          v39 = -[VUIAdditionalAdvisoryInfoView initWithAdvisoryInfoDictionary:reduceMotion:](v38, "initWithAdvisoryInfoDictionary:reduceMotion:", v37, [MEMORY[0x1E69DF678] isFeatureEnabled:1]);
          v40 = [(VUIAdditionalAdvisoryInfoView *)v39 layout];
          v41 = *(a1 + 56);
          [v40 margin];
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v49 = v48;
          [v40 portraitMargin];
          (*(v41 + 16))(v41, v39, v15, v43, v45, v47, v49, v50, v51, v52, v53, v7, v9, v11, v13);
          [WeakRetained setHmwView:v39];
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_4;
          v55[3] = &unk_1E872F708;
          objc_copyWeak(&v57, (a1 + 64));
          v56 = v39;
          v58 = *(a1 + 72);
          v54 = v39;
          dispatch_async(MEMORY[0x1E69E96A0], v55);

          objc_destroyWeak(&v57);
        }
      }
    }

LABEL_7:
LABEL_9:
  }
}

void __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [WeakRetained platterView];
  [v2 showAnimated:v3 platterView:v4 completion:0];
}

void __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [WeakRetained platterView];
  [v2 showWithAnimatedLogoAndText:v3 animateDivider:1 platterView:v4 completion:0];
}

void __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained ratingView];
  v4 = [WeakRetained hmwView];
  v5 = v4;
  if (v3)
  {
    v6 = *(a1 + 40);
    v7 = [WeakRetained platterView];
    v8 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_6;
    v14[3] = &unk_1E872F038;
    v9 = &v16;
    objc_copyWeak(&v16, (a1 + 32));
    v15 = v3;
    [v15 hideAnimated:v6 platterView:v7 completion:v14];
LABEL_5:

    objc_destroyWeak(v9);
    goto LABEL_6;
  }

  if (v4)
  {
    v10 = *(a1 + 40);
    v7 = [WeakRetained platterView];
    v8 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_7;
    v11[3] = &unk_1E872F038;
    v9 = &v13;
    objc_copyWeak(&v13, (a1 + 32));
    v12 = v5;
    [v12 hideAnimated:v10 platterView:v7 hidePlatterView:1 completion:v11];
    goto LABEL_5;
  }

LABEL_6:
}

void __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) removeFromSuperview];
  [WeakRetained setRatingView:0];
  v2 = [WeakRetained platterView];
  [v2 removeFromSuperview];

  [WeakRetained setPlatterView:0];
}

void __106__VUIPlaybackManager__showTVRating_withRatingImage_photoSensitivityImage_highMotionWarningImage_animated___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) removeFromSuperview];
  [WeakRetained setHmwView:0];
  v2 = [WeakRetained platterView];
  [v2 removeFromSuperview];

  [WeakRetained setPlatterView:0];
}

- (void)_showProductPlacement:(BOOL)a3 withImage:(id)a4 animated:(BOOL)a5
{
  v6 = a3;
  v8 = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__VUIPlaybackManager__showProductPlacement_withImage_animated___block_invoke;
  aBlock[3] = &unk_1E872F708;
  objc_copyWeak(&v21, &location);
  v9 = v8;
  v20 = v9;
  v22 = a5;
  v10 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__VUIPlaybackManager__showProductPlacement_withImage_animated___block_invoke_3;
  v16[3] = &unk_1E872EDE0;
  objc_copyWeak(&v17, &location);
  v18 = a5;
  v11 = _Block_copy(v16);
  v15 = v11;
  if (v6)
  {
    v11 = v10;
  }

  (*(v11 + 2))(v11, v12, v13, v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __63__VUIPlaybackManager__showProductPlacement_withImage_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained activePlayer];
  v4 = [v3 currentMediaItem];

  if (v4)
  {
    v5 = [WeakRetained avPlayerViewController];
    [v5 videoBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [WeakRetained avPlayerViewController];
    v15 = [v14 contentOverlayView];

    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    if (CGRectEqualToRect(v29, *MEMORY[0x1E695F058]) || !v15)
    {
      [WeakRetained setShouldDisplayProductPlacementWhenVideoBoundsIsAvailable:1];
      [WeakRetained setShouldAnimateProductPlacementView:*(a1 + 48)];
    }

    else
    {
      v16 = [VUIVideoAdvisoryInfoDictionaryBuilder advisoryInfoDictionaryWithRatingImage:*(a1 + 32) photoSensitivityImage:0 highMotionWarningImage:0 andMediaItem:v4];
      v17 = [[VUIProductPlacementView alloc] initWithAdvisoryInfoDictionary:v16];
      v18 = [(VUIProductPlacementView *)v17 layout];
      [v18 margin];
      v20 = v7 + v19;
      [v18 margin];
      v22 = v9 + v21;
      [(VUIProductPlacementView *)v17 sizeThatFits:v11, v13];
      [(VUIProductPlacementView *)v17 setFrame:v20, v22, v23, v24];
      [v15 addSubview:v17];
      [WeakRetained setProductPlacementView:v17];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __63__VUIPlaybackManager__showProductPlacement_withImage_animated___block_invoke_2;
      v26[3] = &unk_1E872ECA0;
      v27 = v17;
      v28 = *(a1 + 48);
      v25 = v17;
      dispatch_async(MEMORY[0x1E69E96A0], v26);
    }
  }
}

void __63__VUIPlaybackManager__showProductPlacement_withImage_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained productPlacementView];
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__VUIPlaybackManager__showProductPlacement_withImage_animated___block_invoke_4;
  v6[3] = &unk_1E872D990;
  v7 = v3;
  v8 = WeakRetained;
  v5 = v3;
  [v5 show:0 animated:v4 completion:v6];
}

uint64_t __63__VUIPlaybackManager__showProductPlacement_withImage_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 setProductPlacementView:0];
}

- (void)_showSkipAndPromoView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v63 = *MEMORY[0x1E69E9840];
  v7 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Promo view show = %d", buf, 8u);
  }

  v8 = [(VUIPlaybackManager *)self featureMonitor];
  v9 = [v8 activeFeatureForType:7];

  v10 = [v9 userInfo];
  if (v5)
  {
    v11 = [(VUIPlaybackManager *)self avPlayerViewController];
    v12 = [v11 view];

    if (v12)
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__VUIPlaybackManager__showSkipAndPromoView_animated___block_invoke;
      aBlock[3] = &unk_1E872E4B8;
      objc_copyWeak(&v57, &location);
      v13 = _Block_copy(aBlock);
      v14 = [(VUIPlaybackManager *)self promoMetadataView];
      if (!v14 || (-[VUIPlaybackManager promoMetadataView](self, "promoMetadataView"), v15 = objc_claimAutoreleasedReturnValue(), [v15 superview], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v15, v14, v17))
      {
        v24 = objc_alloc_init(VUIPromoMetadataView);
        [(VUIPromoMetadataView *)v24 setDelegate:self];
        [(VUIPromoMetadataView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(VUIPromoMetadataView *)v24 updateWithInfo:v10];
        [(VUIPlaybackManager *)self setPromoMetadataView:v24];
        v25 = MEMORY[0x1E69DD2E8];
        [v12 bounds];
        v26 = [v25 vui_currentSizeClassForWindowWidth:CGRectGetWidth(v64)];
        v27 = MEMORY[0x1E69DD2E8];
        [v12 bounds];
        v28 = [v27 vui_currentSizeClassForWindowWidth:CGRectGetHeight(v65)];
        *buf = 0;
        v60 = buf;
        v61 = 0x2020000000;
        v62 = 0.0;
        v53[0] = 0;
        v53[1] = v53;
        v53[2] = 0x2020000000;
        if ((v26 - 6) >= 0xFFFFFFFFFFFFFFFDLL)
        {
          if ((v28 - 2) >= 4)
          {
            v30 = 90.0;
          }

          else
          {
            v30 = 80.0;
          }

          v29 = 34.0;
          if ((v28 - 2) < 4)
          {
            v29 = 80.0;
          }

          v62 = v30;
        }

        else
        {
          v29 = 34.0;
        }

        v31 = (v26 - 6) < 0xFFFFFFFFFFFFFFFDLL;
        *&v53[3] = v29;
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __53__VUIPlaybackManager__showSkipAndPromoView_animated___block_invoke_3;
        v45[3] = &unk_1E8730EB0;
        v46 = v12;
        v32 = v24;
        v52 = v31;
        v47 = v32;
        v49 = v53;
        objc_copyWeak(&v51, &location);
        v50 = buf;
        v48 = v10;
        v33 = _Block_copy(v45);
        v34 = v33;
        if (v4)
        {
          [(VUIPromoMetadataView *)v32 setAlpha:0.0];
          v34[2](v34);
          v13[2](v13);
          v35 = MEMORY[0x1E69DD250];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __53__VUIPlaybackManager__showSkipAndPromoView_animated___block_invoke_4;
          v43[3] = &unk_1E872D768;
          v44 = v32;
          [v35 animateWithDuration:5242880 delay:v43 options:0 animations:0.5 completion:0.0];
        }

        else
        {
          v33[2](v33);
          v13[2](v13);
        }

        objc_destroyWeak(&v51);
        _Block_object_dispose(v53, 8);
        _Block_object_dispose(buf, 8);

        objc_destroyWeak(&v57);
        objc_destroyWeak(&location);
      }

      else
      {
        v18 = [(VUIPlaybackManager *)self promoMetadataView];
        [v18 setAlpha:0.0];
        [v18 updateWithInfo:v10];
        if (v4)
        {
          v13[2](v13);
          v19 = MEMORY[0x1E69DD250];
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __53__VUIPlaybackManager__showSkipAndPromoView_animated___block_invoke_2;
          v54[3] = &unk_1E872D768;
          v55 = v18;
          [v19 animateWithDuration:5242880 delay:v54 options:0 animations:0.5 completion:0.0];
        }

        else
        {
          [v18 setAlpha:1.0];
          v13[2](v13);
        }

        objc_destroyWeak(&v57);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    v20 = [(VUIPlaybackManager *)self promoMetadataView];
    [(VUIPlaybackManager *)self setPromoMetadataView:0];
    objc_initWeak(buf, self);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __53__VUIPlaybackManager__showSkipAndPromoView_animated___block_invoke_5;
    v40[3] = &unk_1E87301C0;
    v12 = v20;
    v41 = v12;
    objc_copyWeak(&v42, buf);
    v21 = _Block_copy(v40);
    v22 = [(VUIPlaybackManager *)self metricsRecorder];
    [v22 recordImpressions];

    if (v4)
    {
      v23 = MEMORY[0x1E69DD250];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __53__VUIPlaybackManager__showSkipAndPromoView_animated___block_invoke_6;
      v38[3] = &unk_1E872D768;
      v39 = v12;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __53__VUIPlaybackManager__showSkipAndPromoView_animated___block_invoke_7;
      v36[3] = &unk_1E872D790;
      v37 = v21;
      [v23 animateWithDuration:5242880 delay:v38 options:v36 animations:0.5 completion:0.0];
    }

    else
    {
      [v12 setAlpha:0.0];
      v21[2](v21);
    }

    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
  }
}

void __53__VUIPlaybackManager__showSkipAndPromoView_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained avPlayerViewController];

  [v3 setPlaybackControlsIncludeTransportControls:0];
  [v3 setPlaybackControlsIncludeVolumeControls:0];
  [v3 setPlaybackControlsIncludeDisplayModeControls:0];
  v2 = [v3 configuration];
  [v2 setExcludedControls:39];
  [v3 setConfiguration:v2];
}

void __53__VUIPlaybackManager__showSkipAndPromoView_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(a1 + 40)];
  v2 = *(a1 + 40);
  [*(a1 + 32) bounds];
  [v2 vui_sizeThatFits:{v3, v4}];
  v6 = v5;
  v8 = v7;
  [*(a1 + 32) bounds];
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 40) setFrame:{(v9 - v6) * 0.5, v10 - v8 - *(*(*(a1 + 56) + 8) + 24), v6, v8}];
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v12 = [WeakRetained avPlayerViewController];
    v13 = v12;
    v14 = v8 + *(*(*(a1 + 56) + 8) + 24);
    v15 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v17 = [*(a1 + 40) vuiIsRTL];
    [*(a1 + 32) bounds];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v19 = v18;
    v21 = v20;
    [*(a1 + 40) setFrame:?];
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v12 = [WeakRetained avPlayerViewController];
    v13 = v12;
    if (v17)
    {
      v15 = v19 + v21;
      v14 = 0.0;
      v16 = 0.0;
    }

    else
    {
      v16 = v21 + *(*(*(a1 + 64) + 8) + 24);
      v15 = 0.0;
      v14 = 0.0;
    }
  }

  [v12 setLegibleContentInsets:{0.0, v15, v14, v16}];

  v22 = objc_loadWeakRetained((a1 + 72));
  v23 = [v22 activePlayer];
  v39 = [v23 currentMediaItem];

  v24 = [*(a1 + 48) promoInfo];
  v25 = objc_loadWeakRetained((a1 + 72));
  v26 = v25;
  if (v24)
  {
    v27 = [v25 featureMonitor];
    v28 = [v27 player];

    v29 = objc_loadWeakRetained((a1 + 72));
    v30 = [v29 metricsRecorder];
    [v30 recordPageMetricsForPreRoll:v28 promoInfo:v24];

    v31 = [VUIMetricsMediaEvent clickMetricsForUpNextWithPromoInfo:v24 onMediaItem:v39];
    v32 = objc_loadWeakRetained((a1 + 72));
    v33 = [v32 metricsRecorder];
    [v33 addItemToImpressionsTracker:v31 index:0];

    v34 = 1;
    v26 = v28;
  }

  else
  {
    v31 = [v25 metricsRecorder];
    [v31 setPlayerPreRollPageMetrics:v39];
    v34 = 0;
  }

  v35 = objc_loadWeakRetained((a1 + 72));
  [v35 _addTappableViewToRemoveSkipButton];

  v36 = [VUIMetricsMediaEvent clickMetricsForSkipInfo:*(a1 + 48) onMediaItem:v39];
  v37 = objc_loadWeakRetained((a1 + 72));
  v38 = [v37 metricsRecorder];
  [v38 addItemToImpressionsTracker:v36 index:v34];
}

void __53__VUIPlaybackManager__showSkipAndPromoView_animated___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeTappableViewForSkipButtonIfNeeded];

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 avPlayerViewController];
  [v4 setLegibleContentInsets:{0.0, 0.0, 0.0, 0.0}];

  v5 = objc_loadWeakRetained((a1 + 40));
  v13 = [v5 avPlayerViewController];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 avPlayerViewController];
  [v7 setPlaybackControlsIncludeTransportControls:1];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 avPlayerViewController];
  [v9 setPlaybackControlsIncludeVolumeControls:1];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 avPlayerViewController];
  [v11 setPlaybackControlsIncludeDisplayModeControls:1];

  v12 = [v13 configuration];
  [v12 setExcludedControls:0];
  [v13 setConfiguration:v12];
}

- (void)_skipButtonTapped:(id)a3
{
  v4 = [(VUIPlaybackManager *)self featureMonitor];
  v23 = [v4 activeFeatureForType:7];

  v5 = v23;
  if (v23)
  {
    v6 = [v23 userInfo];

    v5 = v23;
    if (v6)
    {
      v7 = [v23 userInfo];
      [v7 target];
      if (v8 > 0.0)
      {
        v9 = v8;
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = [(VUIPlaybackManager *)self activePlayer];
        [v10 vui_setObjectIfNotNil:v11 forKey:VUIPlaybackManagerNotificationKeyPlayer[0]];

        [v10 vui_setObjectIfNotNil:&unk_1F5E5D0C8 forKey:VUIPlaybackManagerSeekReasonKey[0]];
        [v10 vui_setObjectIfNotNil:v7 forKey:VUIPlaybackManagerSeekInfoKey];
        v12 = [MEMORY[0x1E696AD88] defaultCenter];
        v13 = VUIPlaybackManagerWillSkipIntroNotification[0];
        v14 = [v10 copy];
        [v12 postNotificationName:v13 object:self userInfo:v14];

        v15 = [(VUIPlaybackManager *)self activePlayer];
        v16 = [v15 currentMediaItem];

        v17 = [VUIMetricsMediaEvent clickMetricsForSkipInfo:v7 onMediaItem:v16];
        v18 = [v7 promoInfo];
        v19 = v18 != 0;

        v20 = [(VUIPlaybackManager *)self metricsRecorder];
        [v20 recordClick:v17 locationIndex:v19];

        v21 = [(VUIPlaybackManager *)self activePlayer];
        [v21 setElapsedTime:1 precise:v9];

        v22 = [(VUIPlaybackManager *)self activePlayer];
        [v22 play];

        [(VUIPlaybackManager *)self _resetAutoPlayBingeWatchingQualifications];
      }

      v5 = v23;
    }
  }
}

- (void)_updateRequiresLinearPlayback
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlaybackManager *)self mainAVPlayerViewController];
  if (v3)
  {
    v4 = [(VUIPlaybackManager *)self mainPlayer];
    v5 = [v4 currentMediaItem];
    v6 = [v5 hasTrait:*MEMORY[0x1E69D5E30]];

    v7 = [v3 requiresLinearPlayback];
    if (v6)
    {
      if ((v7 & 1) == 0)
      {
        v8 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Overriding requiresLinearPlayback to YES due to TVPMediaItemTraitDisableScrubbing", &v14, 2u);
        }

        v9 = 1;
LABEL_13:
        [v3 setRequiresLinearPlayback:v9];
      }
    }

    else if (v7 != [(VUIPlaybackManager *)self requiresLinearPlayback])
    {
      v10 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [(VUIPlaybackManager *)self requiresLinearPlayback];
        v13 = @"NO";
        if (v12)
        {
          v13 = @"YES";
        }

        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Setting requiresLinearPlayback to %@", &v14, 0xCu);
      }

      v9 = [(VUIPlaybackManager *)self requiresLinearPlayback];
      goto LABEL_13;
    }

    [(VUIPlaybackManager *)self _updateMultiviewButtonState];
  }
}

- (void)_updateMultiviewButtonState
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlaybackManager *)self mainAVPlayerViewController];
  v4 = +[VUIPlaybackTabManager sharedInstance];
  v5 = [v4 tabsInfo];
  v6 = [v5 multiviewTabInfo];
  if (v6)
  {
    v7 = +[VUIFeaturesConfiguration sharedInstance];
    v8 = [v7 multiviewConfig];
    if ([v8 isEnabled])
    {
      v9 = !+[VUIGroupActivitiesManagerObjC isSessionActive];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 view];
  v11 = [v10 window];

  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v16 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v25.width = v13;
    v25.height = v15;
    v18 = NSStringFromCGSize(v25);
    v19 = VUIBoolLogString();
    v20 = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Updating multiview button for size: %@, isEnabled: %@", &v20, 0x16u);
  }

  if (v9)
  {
    [(VUIPlaybackManager *)self _addMultiviewButtonIfSupportedWithWindowSize:v13, v15];
  }

  else
  {
    [(VUIPlaybackManager *)self _removeMultiviewButton];
  }

  [(VUIPlaybackManager *)self addTipKitState:2];
}

- (void)_addMultiviewButtonIfSupportedWithWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v32 = *MEMORY[0x1E69E9840];
  v6 = [(VUIPlaybackManager *)self multiPlayerViewController];
  if (!v6)
  {
    v7 = +[VUIInterfaceFactory sharedInstance];
    v8 = [v7 documentCreator];
    v6 = [v8 createMultiPlayerViewControllerWithPlayerViewControllers:MEMORY[0x1E695E0F0] showingDetails:0];

    [v6 setDelegate:self];
  }

  v9 = [v6 isSupportedScreenSize:{width, height}];
  v10 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v33.width = width;
    v33.height = height;
    v12 = NSStringFromCGSize(v33);
    v13 = VUIBoolLogString();
    *buf = 138412546;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Updating multiview button for size: %@, isSupported: %@", buf, 0x16u);
  }

  if (v9)
  {
    v14 = [(VUIPlaybackManager *)self multiViewControlItem];
    v15 = v14 == 0;

    if (v15)
    {
      objc_initWeak(buf, self);
      v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.split.2x2"];
      v17 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:22.0];
      v18 = [v16 imageWithConfiguration:v17];

      v19 = objc_alloc(MEMORY[0x1E69585D0]);
      v20 = +[VUILocalizationManager sharedInstance];
      v21 = [v20 localizedStringForKey:@"TV.Button.WatchInMultiview"];
      v22 = [v19 initWithTitle:v21 type:0];

      [v22 setImage:v18];
      v23 = [MEMORY[0x1E69DC888] whiteColor];
      [v22 setTintColor:v23];

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __67__VUIPlaybackManager__addMultiviewButtonIfSupportedWithWindowSize___block_invoke;
      v26[3] = &unk_1E872E4B8;
      objc_copyWeak(&v27, buf);
      [v22 setAction:v26];
      if (+[VUIPlaybackManager _isTipKitEnabled])
      {
        [_TtC8VideosUI23PlayerTipKitManagerObjC addMultiviewTipFor:v22];
        v24 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUIPlaybackManger: TipKit: Added multiview tip", v25, 2u);
        }
      }

      [(VUIPlaybackManager *)self setMultiViewControlItem:v22];
      objc_destroyWeak(&v27);

      objc_destroyWeak(buf);
    }

    [(VUIPlaybackManager *)self _mainPlayerViewControllerSetupControlItems];
  }
}

void __67__VUIPlaybackManager__addMultiviewButtonIfSupportedWithWindowSize___block_invoke(uint64_t a1)
{
  if (+[VUIPlaybackManager _isTipKitEnabled])
  {
    +[_TtC8VideosUI23PlayerTipKitManagerObjC handleMultiviewSelected];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Show multiview playback" withContext:0 userInfo:0];
}

- (void)_removeMultiviewButton
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = +[VUIPlaybackTabManager sharedInstance];
    v6 = [v5 tabsInfo];
    v7 = [v6 multiviewTabInfo];
    v8 = VUIBoolLogString();
    [MEMORY[0x1E69DF6F0] isPad];
    v9 = VUIBoolLogString();
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Removing multiview because it is not enabled => remote flag: %@, is iPad: %@", &v10, 0x16u);
  }

  [(VUIPlaybackManager *)self setMultiViewControlItem:0];
  [(VUIPlaybackManager *)self _mainPlayerViewControllerSetupControlItems];
}

- (void)_removePrerollFadeIn
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlaybackManager *)self featureMonitor];
  v4 = [v3 featuresForType:8];

  v5 = [(VUIPlaybackManager *)self activePlayer];
  [v5 elapsedTime];
  v7 = v6;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        v14 = [v13 userInfo];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = [v13 userInfo];
          v17 = [v16 userInfo];
          v18 = [v17 promoInfo];
          if (v18 && ([v17 start], v7 >= v19) && (objc_msgSend(v17, "target"), v7 <= v20))
          {
            [v13 restartTime];
            v22 = v21;

            if (v22 != -9999.0)
            {
              [v13 setRestartTime:-9999.0];
            }
          }

          else
          {
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v23 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v10 = v23;
    }

    while (v23);
  }
}

- (void)_addTimedMetadataDebuggerView
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlaybackManager *)self avPlayerViewController];
  v4 = [v3 contentOverlayView];

  v5 = [(VUITimedMetadataDebuggerViewController *)self->_timedMetadataDebuggerViewController view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v5];
  v14 = MEMORY[0x1E696ACD8];
  v19 = [v5 topAnchor];
  v18 = [v4 topAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v20[0] = v17;
  v16 = [v5 bottomAnchor];
  v15 = [v4 bottomAnchor];
  v6 = [v16 constraintEqualToAnchor:v15];
  v20[1] = v6;
  v7 = [v5 leadingAnchor];
  v8 = [v4 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v20[2] = v9;
  v10 = [v5 trailingAnchor];
  v11 = [v4 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v20[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [v14 activateConstraints:v13];
}

- (void)_addPerformanceDebuggerView
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlaybackManager *)self avPlayerViewController];
  v4 = [v3 contentOverlayView];

  v5 = [(VUIPlaybackManager *)self performanceDebuggerViewController];
  v6 = [v5 view];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v6];
  self->_hasPerformanceDebuggerAppeared = 0;
  v15 = MEMORY[0x1E696ACD8];
  v20 = [v6 topAnchor];
  v19 = [v4 topAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v21[0] = v18;
  v17 = [v6 bottomAnchor];
  v16 = [v4 bottomAnchor];
  v7 = [v17 constraintEqualToAnchor:v16];
  v21[1] = v7;
  v8 = [v6 leadingAnchor];
  v9 = [v4 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v21[2] = v10;
  v11 = [v6 trailingAnchor];
  v12 = [v4 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v21[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  [v15 activateConstraints:v14];
}

- (void)_setupPerformanceDebugger:(id)a3
{
  v4 = a3;
  v5 = [(VUIPlaybackManager *)self performanceDebuggerViewController];
  v6 = [v4 startupEventsDict];

  [v5 setupWithPlaybackEventsDictionary:v6];
  v7 = [MEMORY[0x1E69DF6E0] sharedInstance];
  LODWORD(v5) = [v7 performanceDebuggerVerboseEnabled];

  v8 = 5.0;
  if (v5)
  {
    v8 = 30.0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__VUIPlaybackManager__setupPerformanceDebugger___block_invoke;
  v10[3] = &unk_1E8730ED8;
  v10[4] = self;
  v9 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v10 block:v8];
  [(VUIPlaybackManager *)self setClearPerformanceDebuggerTimer:v9];
}

void __48__VUIPlaybackManager__setupPerformanceDebugger___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) performanceDebuggerViewController];
  [v1 clear];
}

- (void)_addTappableViewToRemoveSkipButton
{
  v22 = [(VUIPlaybackManager *)self skipButton];
  v3 = [(VUIPlaybackManager *)self promoMetadataView];
  if (v22 | v3)
  {
    v4 = [(VUIPlaybackManager *)self avPlayerViewController];
    v5 = [v4 view];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      [v5 bounds];
      v7 = [v6 initWithFrame:?];
      v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDismissSkipButtonGesture_];
      [v7 setTag:76];
      [v7 addGestureRecognizer:v8];
      if (v22)
      {
        v9 = v22;
      }

      else
      {
        v9 = v3;
      }

      [v5 insertSubview:v7 belowSubview:v9];
      v10 = [v7 leadingAnchor];
      v11 = [v5 leadingAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      [v12 setActive:1];

      v13 = [v7 trailingAnchor];
      v14 = [v5 trailingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      [v15 setActive:1];

      v16 = [v7 rightAnchor];
      v17 = [v5 rightAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [v18 setActive:1];

      v19 = [v7 bottomAnchor];
      v20 = [v5 bottomAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      [v21 setActive:1];
    }
  }
}

- (void)_removeTappableViewForSkipButtonIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(VUIPlaybackManager *)self avPlayerViewController];
  v3 = [v2 view];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 subviews];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 tag] == 76)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v5 removeFromSuperview];
}

- (void)_handleDismissSkipButtonGesture:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a3 state] == 3)
  {
    v4 = [(VUIPlaybackManager *)self featureMonitor];
    v5 = [v4 featuresForType:7];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          v12 = [(VUIPlaybackManager *)self featureMonitor];
          [v12 deactivateFeature:v11 animated:1];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(VUIPlaybackManager *)self _resetAutoPlayBingeWatchingQualifications];
  }
}

- (void)_configureStillWatchingFeatureMonitoringIfLivePlayback
{
  v3 = [(VUIPlaybackManager *)self mainPlayer];
  [v3 duration];
  v5 = v4;

  if (v5 == *MEMORY[0x1E69D5A78])
  {
    v6 = +[VUIFeaturesConfiguration sharedInstance];
    v10 = [v6 nowPlayingConfig];

    if ([v10 showsStillWatchingAlert])
    {
      [v10 stillWatchingAlertDuration];
      if (v7 > 0.0)
      {
        v8 = [[VUINowPlayingTimerTriggeredFeature alloc] initWithType:10 duration:1 repeats:v7];
        v9 = [(VUIPlaybackManager *)self featureMonitor];
        [v9 addFeature:v8];
      }
    }
  }
}

- (void)_updateTimeTriggeredFeature:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 type] == 10)
  {
    [(VUIPlaybackManager *)self _showStillWatchingAlertFeature:v5];
  }
}

- (void)_showStillWatchingAlertFeature:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 isActive])
  {
    objc_initWeak(&location, self);
    v6 = +[VUIFeaturesConfiguration sharedInstance];
    v7 = [v6 nowPlayingConfig];
    [v7 alertIdleTimeout];
    v9 = v8;

    v10 = [(VUIPlaybackManager *)self mainPlayer];
    v11 = [v10 currentMediaItem];
    v12 = [v11 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

    v13 = [(VUIPlaybackManager *)self avPlayerViewController];
    v14 = [v13 vui_viewControllerForFullScreenPresentation];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__VUIPlaybackManager__showStillWatchingAlertFeature___block_invoke;
    v15[3] = &unk_1E8730F00;
    objc_copyWeak(&v17, &location);
    v16 = v5;
    [VUIStillWatchingAlertPresenter presentWithTitle:v12 presentingController:v14 timeout:v15 responseHandler:v9];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

uint64_t __53__VUIPlaybackManager__showStillWatchingAlertFeature___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];
  }

  v4 = *(a1 + 32);

  return [v4 setActive:0];
}

- (void)_performEnterBackgroundOperations
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlaybackManager *)self pausedTooLongTimer];

  if (v3)
  {
    v4 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating paused too long timer because app was backgrounded. Will re-create timer when app is foregrounded", v15, 2u);
    }

    v5 = [(VUIPlaybackManager *)self pausedTooLongTimer];
    [v5 invalidate];

    [(VUIPlaybackManager *)self setPausedTooLongTimer:0];
  }

  if (![(VUIPlaybackManager *)self isFullscreenPlaybackUIBeingShown])
  {
    v8 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 134217984;
      *&v15[4] = 0x404E000000000000;
      v9 = "Will NOT restart playback if backgrounded for more than %f seconds because playback is not fullscreen";
      goto LABEL_11;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v6 = [(VUIPlaybackManager *)self activePlayer];
  v7 = [v6 externalPlaybackType];

  if (v7)
  {
    v8 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 134217984;
      *&v15[4] = 0x404E000000000000;
      v9 = "Will NOT restart playback if backgrounded for more than %f seconds because external playback is active";
LABEL_11:
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, v9, v15, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v11 = [(VUIPlaybackManager *)self activePlayer];
  v12 = [v11 currentMediaItem];
  v13 = [v12 hasTrait:*MEMORY[0x1E69D5E80]];

  v8 = sLogObject_5;
  v14 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_12;
    }

    *v15 = 134217984;
    *&v15[4] = 0x404E000000000000;
    v9 = "Will NOT restart playback if backgrounded for more than %f seconds because media item does not require it";
    goto LABEL_11;
  }

  if (v14)
  {
    *v15 = 134217984;
    *&v15[4] = 0x404E000000000000;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Will restart playback if backgrounded for more than %f seconds", v15, 0xCu);
  }

  v10 = 1;
LABEL_13:
  [(VUIPlaybackManager *)self setShouldRestartIfAppHasBeenBackgroundedTooLong:v10, *v15];
}

- (void)_avPlayerViewControllerPresentationDidTimeout
{
  v2 = [(VUIPlaybackManager *)self stateMachine];
  [v2 postEvent:@"AVPlayerViewController presentation did timeout"];
}

- (void)_donateUserActivityForMediaItem:(id)a3
{
  v4 = MEMORY[0x1E696B090];
  v5 = a3;
  v10 = [[v4 alloc] initWithActivityType:@"com.apple.UMC.externalMediaContent"];
  v6 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  v7 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [v10 setExternalMediaContentIdentifier:v6];
    [v10 setWebpageURL:v7];
    v9 = [(VUIPlaybackManager *)self avPlayerViewController];
    [v9 setUserActivity:v10];

    [v10 becomeCurrent];
  }
}

- (CGRect)_calculatePostPlayPipRectForParent:(id)a3
{
  v4 = [a3 view];
  v5 = [MEMORY[0x1E69DD2E8] vui_currentSizeClass];
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 orientation];

  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = [VUIUtilities isPortraitIgnoringFlatOrientation:v7 viewSize:v10, v12];
  if ([MEMORY[0x1E69DF6F0] isPhone])
  {
    if (!v13)
    {
      v14 = 16.0;
LABEL_7:
      v16 = 47.0;
      goto LABEL_8;
    }
  }

  else if (v5 >= 3 && !v13)
  {
    v14 = 38.0;
    goto LABEL_7;
  }

  [v4 safeAreaInsets];
  v14 = v15 + 60.0;
  v16 = 16.0;
LABEL_8:
  v17 = [MEMORY[0x1E69DF6F0] isPad];
  [v4 bounds];
  v19 = v18;
  v20 = [(VUIPlaybackManager *)self mainPlayer];
  [v20 currentMediaItemPresentationSize];
  v22 = v21;
  v24 = v23;

  if (v22 == 0.0 || v24 == 0.0)
  {
    v27 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 8);
    v25 = *(MEMORY[0x1E695F050] + 16);
    v26 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    if (v17)
    {
      v25 = 300.0;
    }

    else
    {
      v25 = 212.0;
    }

    v26 = v25 / (v22 / v24);
    if ([v4 vuiIsRTL])
    {
      v27 = v16;
    }

    else
    {
      v27 = v19 - v25 - v16;
    }
  }

  v28 = v27;
  v29 = v14;
  v30 = v25;
  v31 = v26;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (BOOL)_isAssistiveAccessEnabled
{
  v2 = [MEMORY[0x1E6994658] sharedSystemShellSwitcher];
  v3 = [v2 isClarityBoardEnabled];

  return v3;
}

- (void)_updateActivityItemsConfigurationWithSharedWatchId:(id)a3 sharedWatchUrl:(id)a4 previewMetadata:(id)a5 mediaItem:(id)a6
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  v15 = [v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  v16 = [v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];
  v17 = [v16 BOOLValue];

  if (![v14 length])
  {
    if (([v15 length] == 0) | v17 & 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v19 = [v13 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];
    if (v19)
    {
      v20 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v19;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Adding launch playback URL %@", buf, 0xCu);
      }

      v21 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v19];
    }

    else
    {
      v21 = 0;
    }

    v44 = v19;
    if (!v12)
    {
LABEL_29:
      if (v21)
      {
LABEL_30:
        v43 = v11;
        v31 = v10;
        v32 = objc_alloc(MEMORY[0x1E69DC640]);
        v45 = v21;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
        v34 = v33 = v21;
        v35 = [v32 initWithItemProviders:v34];
        [(VUIPlaybackManager *)self setItemsConfiguration:v35];

        v36 = +[VUITVAppLauncher sharedInstance];
        v37 = [v36 appWindow];
        [v37 windowScene];
        v38 = v14;
        v39 = v12;
        v41 = v40 = v15;

        v21 = v33;
        v10 = v31;
        v11 = v43;
        v19 = v44;
        [v41 setActivityItemsConfigurationSource:self];

        v15 = v40;
        v12 = v39;
        v14 = v38;
LABEL_34:

        goto LABEL_35;
      }

LABEL_33:
      [(VUIPlaybackManager *)self _clearActivityItemsConfiguration];
      goto LABEL_34;
    }

    v22 = v21;
    if (+[VUIGroupActivitiesManagerObjC isConfigured])
    {
      v23 = v15;
      v42 = v10;
      v24 = [v12 playable];
      v25 = [v24 useSharedPlayableForCowatching];

      if (v25)
      {
        v26 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "Adding group activity with shared playable", buf, 2u);
        }

        v21 = [v12 playable];
        v27 = [VUIGroupActivitiesManagerObjC itemProviderForActivityWithPlayable:v21 previewMetadata:v12 existingItemProvider:v22];

        v10 = v42;
        goto LABEL_28;
      }

      v10 = v42;
      if (v42 && v11)
      {
        v28 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v11;
          _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "Adding shared watch URL %@", buf, 0xCu);
        }

        v29 = [VUIGroupActivitiesManagerObjC itemProviderForActivityWithSharedWatchId:v42 sharedWatchUrl:v11 previewMetadata:v12 existingItemProvider:v21];
LABEL_27:
        v27 = v29;
LABEL_28:

        v21 = v27;
        v15 = v23;
        v19 = v44;
        goto LABEL_29;
      }

      if (v23)
      {
        v30 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v23;
          _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "Adding group activity with adam id %@", buf, 0xCu);
        }

        v29 = [VUIGroupActivitiesManagerObjC itemProviderForActivityWithAdamId:v23 previewMetadata:v12 existingItemProvider:v21];
        goto LABEL_27;
      }

      v15 = 0;
      v19 = v44;
    }

    if (v21)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_3:
  v18 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "Not adding items because adam id and canonical id are missing or is adult content", buf, 2u);
  }

  [(VUIPlaybackManager *)self _clearActivityItemsConfiguration];
LABEL_35:
}

- (void)_clearActivityItemsConfiguration
{
  [(VUIPlaybackManager *)self setItemsConfiguration:0];
  v2 = +[VUITVAppLauncher sharedInstance];
  v3 = [v2 appWindow];
  v4 = [v3 windowScene];

  [v4 setActivityItemsConfigurationSource:0];
}

- (id)_multiviewInfoForPlayerViewController:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 playerViewController];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_multiviewInfoForPlaylist:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 player];
        v11 = [v10 playlist];
        v12 = [v11 isEqualToPlaylist:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_muteAllMultiviewPlayersExcept:(id)a3
{
  v4 = [(VUIPlaybackManager *)self _multiviewInfoForPlayerViewController:a3];
  v5 = [(VUIPlaybackManager *)self _currentlyPlayingMultiviewInfo];
  if (v4)
  {
    v6 = [v4 player];

    if (v6)
    {
      if (v4 != v5)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __53__VUIPlaybackManager__muteAllMultiviewPlayersExcept___block_invoke;
        v7[3] = &unk_1E872D990;
        v8 = v4;
        v9 = v5;
        [v8 swapActiveAudioWithPlaybackInfo:v9 completion:v7];
      }
    }
  }
}

void __53__VUIPlaybackManager__muteAllMultiviewPlayersExcept___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContext:1];
  v2 = [*(a1 + 32) playerViewController];
  [v2 setCanStartPictureInPictureAutomaticallyFromInline:1];

  [*(a1 + 40) setContext:0];
  v3 = [*(a1 + 40) playerViewController];
  [v3 setCanStartPictureInPictureAutomaticallyFromInline:0];
}

- (void)_updateMultiviewReportingMetrics
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlaybackManager *)self stateMachine];
  v4 = [v3 currentState];
  if ([v4 isEqualToString:@"Showing multiview playback"])
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
    v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  }

  else
  {
    v7 = &unk_1F5E5CFC0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(VUIPlaybackManager *)self multiviewPlaybackInfo];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) player];
        [v13 setReportingValueWithNumber:v7 forKey:@"multiviewCount"];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_handlePausedTooLong:(id)a3
{
  v4 = [(VUIPlaybackManager *)self pausedTooLongTimer];
  [v4 invalidate];

  [(VUIPlaybackManager *)self setPausedTooLongTimer:0];
  v5 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing playback since playback has been paused too long", v6, 2u);
  }

  [(VUIPlaybackManager *)self dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];
}

- (void)_handleLongLoadingTimeout:(id)a3
{
  v4 = [(VUIPlaybackManager *)self mainPlayerLongLoadingTimer];
  [v4 invalidate];

  [(VUIPlaybackManager *)self setMainPlayerLongLoadingTimer:0];
  v5 = [(VUIPlaybackManager *)self stateMachine];
  [v5 postEvent:@"Main player long loading timer did fire" withContext:0 userInfo:0];
}

- (id)_getLivePostPlayPrefetchPlayerIfApplicable:(id)a3
{
  v4 = a3;
  v5 = [(VUIPlaybackManager *)self mainLivePostPlayController];
  v6 = [v5 prefetchedPlayer];

  if (v6)
  {
    v7 = [(VUIPlaybackManager *)self mainLivePostPlayController];
    [v7 setPrefetchedPlayer:0];

    v8 = [v6 playlist];
    v9 = v8;
    if (v4 && v8 && [v8 isEqualToPlaylist:v4])
    {
      v10 = v6;
    }

    else
    {
      [v6 invalidate];
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)presentViewControllerOnExtrasNav:(id)a3
{
  v4 = MEMORY[0x1E69DCCD8];
  v5 = a3;
  v9 = [[v4 alloc] initWithRootViewController:v5];

  [v9 setModalPresentationStyle:0];
  v6 = [(VUIPlaybackManager *)self backgroundAudioPlayer];
  [v6 stop];

  v7 = [(VUIPlaybackManager *)self extrasContext];
  v8 = [v7 extrasRootViewController];
  [v8 presentViewController:v9 animated:1 completion:0];
}

- (id)extrasNavigationController
{
  v2 = +[VUIPlaybackManager sharedInstance];
  v3 = [v2 extrasContext];
  v4 = [v3 extrasRootViewController];
  v5 = [v4 navigationController];

  return v5;
}

- (void)_registerBroadcastEndHandler
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__VUIPlaybackManager__registerBroadcastEndHandler__block_invoke;
  v2[3] = &unk_1E8730F28;
  objc_copyWeak(&v3, &location);
  [VUIPlaybackEndManagerObjC setPlaybackBroadcastDidEndHandler:v2];
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __50__VUIPlaybackManager__registerBroadcastEndHandler__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "player did end %@", &v10, 0xCu);
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [v3 playlist];
  [v5 vui_setObjectIfNotNil:v6 forKey:@"PlaylistKey"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained stateMachine];
  v9 = [v5 copy];
  [v8 postEvent:@"Remove multiview playback" withContext:0 userInfo:v9];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "_createAndPresentExtrasAVPlayerViewController with presentingController:%@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained createPlayerViewController];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setAvPlayerViewController:v6];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setExtrasAVPlayerViewController:v6];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 _isNewPostPlayEnabled];

  if (v10)
  {
    [v6 _setIgnoreAppSupportedOrientations:1];
  }

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 stateMachine];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_851;
  v15[3] = &unk_1E8730F50;
  v13 = v3;
  v16 = v13;
  v14 = v6;
  v17 = v14;
  objc_copyWeak(&v18, (a1 + 32));
  [v12 executeBlockAfterCurrentStateTransition:v15];

  objc_destroyWeak(&v18);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_851(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2;
  block[3] = &unk_1E8730F50;
  v3 = a1[4];
  v4 = a1[5];
  objc_copyWeak(&v5, a1 + 6);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3;
  v3[3] = &unk_1E872E4B8;
  objc_copyWeak(&v4, (a1 + 48));
  [v1 presentViewController:v2 animated:1 completion:v3];
  objc_destroyWeak(&v4);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"AVPlayerViewController presentation did complete"];
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 javascriptURL];

  v5 = sLogObject_5;
  v6 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v6)
    {
      v19 = 0;
      v14 = "Extras URL does not exist for this media item";
      v15 = &v19;
      v16 = v5;
LABEL_13:
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Extras URL exists for this media item", buf, 2u);
  }

  v7 = +[VUIPlaybackSettings sharedSettings];
  v8 = [v7 networkStatus];

  if (v8 != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained mainPlayer];
    v11 = [v10 allowsCellularUsage];

    if (!v11)
    {
      v17 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        v14 = "Not loading Extras since current network config and/or user settings do not allow it";
        v15 = v20;
        v16 = v17;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  v12 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Will load Extras since current network config and user settings allow it", v21, 2u);
  }

  [v3 setShowsMenuBar:0];
  [v3 setShowsBuiltInNavigationControls:1];
  v13 = v3;
LABEL_15:

  return v13;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_854(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VideosExtrasContext alloc] initWithTVPMediaItem:v3];

  v5 = (*(*(a1 + 32) + 16))();

  return v5;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_857(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69D5BB0];
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  v6 = [v4 objectForKey:*MEMORY[0x1E69D5AE0]];
  v7 = [v4 objectForKey:*MEMORY[0x1E69D5DA8]];
  v8 = [v4 objectForKey:@"HLSURLKey"];

  v9 = [[VUIStoreAuxMediaItem alloc] initWithURL:v8];
  v10 = -[VideosExtrasContext initWithApplicationJavascriptURL:storeID:buyParameters:mediaItem:]([VideosExtrasContext alloc], "initWithApplicationJavascriptURL:storeID:buyParameters:mediaItem:", v5, [v7 longLongValue], v6, v9);
  v11 = (*(*(a1 + 32) + 16))();

  return v11;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_860(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a2;
  v5 = [v3 defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v5 addObserver:WeakRetained selector:sel__playbackStateDidChange_ name:*MEMORY[0x1E69D6090] object:v4];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = *MEMORY[0x1E69D5F10];
  [v7 addObserver:v8 selector:sel__currentMediaItemWillChange_ name:*MEMORY[0x1E69D5F10] object:v4];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v10 addObserver:v11 selector:sel__currentMediaItemDidChange_ name:v9 object:v4];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  v13 = objc_loadWeakRetained((a1 + 40));
  [v12 addObserver:v13 selector:sel__playbackErrorDidOccur_ name:*MEMORY[0x1E69D5F38] object:v4];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  v15 = objc_loadWeakRetained((a1 + 40));
  [v14 addObserver:v15 selector:sel__externalPlaybackTypeDidChange_ name:*MEMORY[0x1E69D60C8] object:v4];

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  v17 = objc_loadWeakRetained((a1 + 40));
  v18 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy networkReachabilityDidChangeNotificationName];
  [v16 addObserver:v17 selector:sel__networkReachbilityDidChange_ name:v18 object:0];

  v19 = [MEMORY[0x1E696AD88] defaultCenter];
  v20 = objc_loadWeakRetained((a1 + 40));
  [v19 addObserver:v20 selector:sel__playerRateDidChange_ name:*MEMORY[0x1E69D5F40] object:v4];

  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  v22 = objc_loadWeakRetained((a1 + 40));
  [v21 addObserver:v22 selector:sel__didPlayToEnd_ name:*MEMORY[0x1E69D5F28] object:v4];

  v23 = [MEMORY[0x1E696AD88] defaultCenter];
  [v23 addObserver:*(a1 + 32) selector:sel__appControllerDidStart_ name:@"VUITVAppLauncherApplicationControllerDidStartNotification" object:0];

  v24 = objc_loadWeakRetained((a1 + 40));
  [v4 addObserver:v24 forKeyPath:@"avPlayer" options:0 context:__PlayerAVPlayerKVOContext_0];

  v25 = objc_loadWeakRetained((a1 + 40));
  [v4 addObserver:v25 forKeyPath:@"initialMediaItemHasCompletedInitialLoading" options:0 context:__PlayerInitialMediaItemHasCompletedInitialLoadingKVOContext];

  v26 = objc_loadWeakRetained((a1 + 40));
  [v4 addObserver:v26 forKeyPath:@"duration" options:0 context:__PlayerMediaItemDurationKVOContext];

  v27 = objc_loadWeakRetained((a1 + 40));
  [v4 addObserver:v27 forKeyPath:@"selectedAudioOption" options:0 context:__PlayerSelectedAudioOptionKVOContext];

  v28 = objc_loadWeakRetained((a1 + 40));
  [v4 addObserver:v28 forKeyPath:@"selectedSubtitleOption" options:0 context:__PlayerSelectedSubtitleOptionKVOContext];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_895(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v6 removeObserver:WeakRetained name:0 object:v5];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy networkReachabilityDidChangeNotificationName];
  [v8 removeObserver:v9 name:v10 object:0];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = objc_loadWeakRetained((a1 + 32));
  [v11 removeObserver:v12 name:@"VUITVAppLauncherApplicationControllerDidStartNotification" object:0];

  v13 = objc_loadWeakRetained((a1 + 32));
  [v5 removeObserver:v13 forKeyPath:@"avPlayer" context:__PlayerAVPlayerKVOContext_0];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v5 removeObserver:v14 forKeyPath:@"initialMediaItemHasCompletedInitialLoading" context:__PlayerInitialMediaItemHasCompletedInitialLoadingKVOContext];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v5 removeObserver:v15 forKeyPath:@"duration" context:__PlayerMediaItemDurationKVOContext];

  v16 = objc_loadWeakRetained((a1 + 32));
  [v5 removeObserver:v16 forKeyPath:@"selectedAudioOption" context:__PlayerSelectedAudioOptionKVOContext];

  v17 = objc_loadWeakRetained((a1 + 32));
  [v5 removeObserver:v17 forKeyPath:@"selectedSubtitleOption" context:__PlayerSelectedSubtitleOptionKVOContext];

  if (a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5;
    block[3] = &unk_1E872D768;
    v19 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained mainPlayer];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 mainPlayer];
    [v2 addObject:v6];
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 extrasPlayer];

  if (v8)
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 extrasPlayer];
    [v2 addObject:v10];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(a1 + 32) + 16))(*(a1 + 32));
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 backgroundAudioPlayer];
  [v17 invalidate];

  v18 = objc_loadWeakRetained((a1 + 40));
  [v18 setBackgroundAudioPlayer:0];

  v19 = objc_loadWeakRetained((a1 + 40));
  [v19 setActivePlayer:0];

  v20 = objc_loadWeakRetained((a1 + 40));
  [v20 setMainPlayer:0];

  v21 = objc_loadWeakRetained((a1 + 40));
  [v21 setExtrasPlayer:0];
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained presentingViewController];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    if ([v8 dismissalOperation] == 1)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 presentingViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          v13 = @"NO";
          if (a2)
          {
            v13 = @"YES";
          }

          *buf = 138412290;
          v32 = v13;
          _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Popping presenting view controller; animated? %@", buf, 0xCu);
        }

        v14 = objc_loadWeakRetained((a1 + 32));
        v15 = [v14 presentingViewController];

        v16 = [v15 navigationController];
        v17 = [v16 popViewControllerAnimated:a2];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_897;
        block[3] = &unk_1E872D7E0;
        v30 = v5;
        dispatch_async(MEMORY[0x1E69E96A0], block);
        v18 = v30;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v20 = objc_loadWeakRetained((a1 + 32));
    v21 = [v20 dismissalOperation];

    if (v21 != 2 || (v22 = objc_loadWeakRetained((a1 + 32)), v23 = [v22 isExperienceControllerPresented], v22, (v23 & 1) != 0))
    {
      v19 = 0;
LABEL_20:
      v26 = objc_loadWeakRetained((a1 + 32));
      [v26 setPresentingViewController:0];

      goto LABEL_21;
    }

    v24 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v25 = @"NO";
      if (a2)
      {
        v25 = @"YES";
      }

      *buf = 138412290;
      v32 = v25;
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "Dismissing presenting view controller; animated? %@", buf, 0xCu);
    }

    v15 = objc_loadWeakRetained((a1 + 32));
    v18 = [v15 presentingViewController];
    [v18 dismissViewControllerAnimated:a2 completion:v5];
LABEL_19:

    v19 = 1;
    goto LABEL_20;
  }

  v19 = 0;
LABEL_21:
  v27 = objc_loadWeakRetained((a1 + 32));
  [v27 setDismissalOperation:0];

  return v19;
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_897(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_899(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"PlayerViewControllerKey"];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 vui_setObjectIfNotNil:v4 forKey:VUIPlaybackManagerNotificationKeyPlayerViewController];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_900;
  v8[3] = &unk_1E872F038;
  objc_copyWeak(&v10, (a1 + 40));
  v7 = v5;
  v9 = v7;
  (*(v6 + 16))(v6, 1, v8);

  objc_destroyWeak(&v10);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_900(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained playbackContainerViewController];
  v4 = [v3 presentingViewController];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 playbackContainerViewController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_901;
    v15[3] = &unk_1E87301C0;
    v16 = *(a1 + 32);
    objc_copyWeak(&v17, (a1 + 40));
    [v6 dismissViewControllerAnimated:0 completion:v15];

    objc_destroyWeak(&v17);
  }

  else
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = VUIPlaybackManagerPlayerControllerDismissedAfterPIPingNotification[0];
    v9 = [*(a1 + 32) copy];
    [v7 postNotificationName:v8 object:0 userInfo:v9];

    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 pipCompletion];

    if (v11)
    {
      v12 = objc_loadWeakRetained((a1 + 40));
      v13 = [v12 pipCompletion];
      v13[2](v13, 0);

      v14 = objc_loadWeakRetained((a1 + 40));
      [v14 setPipCompletion:0];
    }
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_901(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = VUIPlaybackManagerPlayerControllerDismissedAfterPIPingNotification[0];
  v4 = [*(a1 + 32) copy];
  [v2 postNotificationName:v3 object:0 userInfo:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained playbackContainerViewController];
  v7 = [v6 unembedMultiPlayerViewController];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 pipCompletion];

  if (v9)
  {
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 pipCompletion];
    v11[2](v11, 0);

    v12 = objc_loadWeakRetained((a1 + 40));
    [v12 setPipCompletion:0];
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_903(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained stateMachine];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_904;
  v4[3] = &unk_1E872E4B8;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 executeBlockAfterCurrentStateTransition:v4];

  objc_destroyWeak(&v5);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_904(uint64_t a1)
{
  v85[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained avPlayerViewController];
  v3 = [v2 customControlsView];
  v68 = [v3 transportControlsAreaLayoutGuide];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 avPlayerViewController];
  v67 = [v5 contentOverlayView];

  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v67 addSubview:v6];
  v63 = MEMORY[0x1E696ACD8];
  v69 = v6;
  v66 = [v6 centerXAnchor];
  v65 = [v68 centerXAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v85[0] = v64;
  v7 = [v6 widthAnchor];
  v8 = [v68 widthAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v85[1] = v9;
  v10 = [v6 heightAnchor];
  v11 = [v68 heightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v85[2] = v12;
  v13 = [v69 bottomAnchor];
  v14 = [v68 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v85[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:4];
  [v63 activateConstraints:v16];

  [v67 layoutIfNeeded];
  [v69 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v69 removeFromSuperview];
  v25 = objc_loadWeakRetained((a1 + 32));
  v26 = [v25 extrasPresenter];
  LODWORD(v13) = v26 == 0;

  v27 = v20 + v24 + -70.3332977;
  if (v13)
  {
    v28 = [VideosExtrasPresenter alloc];
    v29 = objc_loadWeakRetained((a1 + 32));
    v30 = [v29 extrasContext];
    v31 = [(VideosExtrasPresenter *)v28 initWithExtrasContext:v30 extrasMenuBarFrame:*&v18, v27, *&v22, 70.3332977];

    v32 = objc_loadWeakRetained((a1 + 32));
    [v32 setExtrasPresenter:v31];
  }

  v33 = objc_loadWeakRetained((a1 + 32));
  v34 = [v33 avPlayerViewController];
  v35 = [v34 view];
  [v35 frame];
  v37 = v36;
  v39 = v38;

  v40 = objc_loadWeakRetained((a1 + 32));
  v41 = [v40 extrasContext];
  v42 = [v41 extrasRootViewController];
  [v42 setInitialPresentationSize:{v37, v39}];

  v43 = objc_loadWeakRetained((a1 + 32));
  v44 = [v43 avPlayerViewController];
  v45 = [v44 vui_viewControllerForFullScreenPresentation];

  v46 = objc_loadWeakRetained((a1 + 32));
  v47 = [v46 extrasPresenter];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_906;
  v83[3] = &unk_1E87310B8;
  objc_copyWeak(v84, (a1 + 32));
  v84[1] = v18;
  v84[2] = *&v27;
  v84[3] = v22;
  v84[4] = 0x40519554C0000000;
  [v47 presentExtrasWith:v45 animated:1 completion:v83];

  v48 = objc_loadWeakRetained((a1 + 32));
  v49 = [v48 activePlayer];
  v50 = objc_loadWeakRetained((a1 + 32));
  v51 = [v50 extrasPlayer];
  v52 = v49 == v51;

  if (!v52)
  {
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__7;
    v81 = __Block_byref_object_dispose__7;
    v82 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v53 = objc_loadWeakRetained((a1 + 32));
    v54 = [v53 extrasContext];
    v55 = [v54 selectedMainMenuIndex];

    v76 = v55;
    if (v74[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v56 = objc_loadWeakRetained((a1 + 32));
      v57 = [v56 extrasContext];
      v58 = [v57 mainMenuItemElements];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_907;
      v71[3] = &unk_1E87310E0;
      objc_copyWeak(&v72, (a1 + 32));
      v71[4] = &v77;
      v71[5] = &v73;
      [v58 enumerateObjectsUsingBlock:v71];

      if (v78[5])
      {
        v59 = objc_loadWeakRetained((a1 + 32));
        v60 = [v59 extrasContext];
        [v60 setClearsStackOnNextPush];

        v61 = objc_loadWeakRetained((a1 + 32));
        v62 = [v61 extrasContext];
        [v62 setSelectedMainMenuIndex:v74[3]];

        [v78[5] dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
      }

      objc_destroyWeak(&v72);
    }

    _Block_object_dispose(&v73, 8);
    _Block_object_dispose(&v77, 8);
  }

  objc_destroyWeak(v84);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_906(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained activePlayer];
  [v3 pause];

  v6 = objc_loadWeakRetained((a1 + 32));
  v4 = [v6 extrasContext];
  v5 = [v4 extrasRootViewController];
  [v5 showExtrasMenuBarInFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_907(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [WeakRetained extrasContext];
  v10 = [v9 isMenuItemElementMainFeature:v11];

  if ((v10 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

BOOL __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_909(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExtrasPresenter:0];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 backgroundAudioPlayer];

  if (v8)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 backgroundAudioPlayer];
    [v10 invalidate];

    v11 = objc_loadWeakRetained((a1 + 32));
    [v11 setBackgroundAudioPlayer:0];
  }

  v12 = objc_loadWeakRetained((a1 + 32));
  v13 = [v12 mainAVPlayerViewController];
  v14 = [v13 presentingViewController];

  v15 = sLogObject_5;
  v16 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Going back to main content", buf, 2u);
    }

    v17 = objc_loadWeakRetained((a1 + 32));
    v18 = [v17 _isNewPostPlayEnabled];

    if (v18)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_910;
      v20[3] = &unk_1E872E828;
      objc_copyWeak(&v22, (a1 + 32));
      v21 = v5;
      [v14 dismissViewControllerAnimated:a2 completion:v20];

      objc_destroyWeak(&v22);
    }

    else
    {
      [v14 dismissViewControllerAnimated:a2 completion:v5];
    }
  }

  else if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Cannot go back to main content, presentingViewController is nil.", buf, 2u);
  }

  return v14 != 0;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained playbackContainerViewController];
  [v2 dismissViewControllerAnimated:0 completion:*(a1 + 32)];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_911(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained stateMachine];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_912;
  v8[3] = &unk_1E8731108;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v11 = a3;
  [v7 executeBlockAfterCurrentStateTransition:v8];

  objc_destroyWeak(&v9);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_912(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained mainAVPlayerViewController];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 mainAVPlayerViewController];
    [v4 setAvPlayerViewController:v5];
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 backgroundAudioPlayer];
  [v7 stop];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 backgroundAudioPlayer];
  [v9 invalidate];

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 setBackgroundAudioPlayer:0];

  v11 = +[VUITVAppLauncher sharedInstance];
  v25 = [v11 appController];

  v12 = [v25 navigationController];
  v13 = [v12 topViewController];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 setPresentingViewController:v13];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 setDismissalOperation:0];

  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 mainPlayer];
  [v16 setActivePlayer:v17];

  if (*(a1 + 40) == 1)
  {
    v18 = objc_loadWeakRetained((a1 + 32));
    v19 = [v18 mainPlayer];
    [v19 play];
  }

  v20 = objc_loadWeakRetained((a1 + 32));
  v21 = [v20 extrasPresenter];

  if (v21)
  {
    v22 = objc_loadWeakRetained((a1 + 32));
    v23 = [v22 extrasPresenter];
    [v23 dismissExtrasAnimated:*(a1 + 41) completion:0];
  }

  v24 = objc_loadWeakRetained((a1 + 32));
  [v24 setExtrasPresenter:0];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_914(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _isNewPostPlayEnabled];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (v3)
  {
    [v4 playbackContainerViewController];
  }

  else
  {
    [v4 avPlayerViewController];
  }
  v6 = ;
  v7 = [v6 view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 extrasContext];

  if (!v13)
  {
    v27 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v28 = "Not returning to Extras because context has gone away, probably due to an error";
LABEL_13:
      _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
    }

LABEL_14:
    v29 = objc_loadWeakRetained((a1 + 40));
    v30 = [v29 mainAVPlayerViewController];
    [v29 setAvPlayerViewController:v30];

    (*(*(a1 + 32) + 16))();
    return @"Showing video full screen";
  }

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = [v14 extrasContext];
  v16 = [v15 shouldExtrasBeVisibleForSize:{v9, v11}];

  if ((v16 & 1) == 0)
  {
    v27 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v28 = "Not returning to Extras because they cannot be displayed for the current view size";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v17 = objc_loadWeakRetained((a1 + 40));
  v18 = [v17 mainAVPlayerViewController];
  [v17 setAvPlayerViewController:v18];

  v19 = objc_loadWeakRetained((a1 + 40));
  v20 = [v19 extrasAVPlayerViewController];
  v21 = [v20 presentingViewController];

  if (v21)
  {
    v22 = objc_loadWeakRetained((a1 + 40));
    v23 = [v22 extrasAVPlayerViewController];
    [v23 dismissViewControllerAnimated:1 completion:0];
  }

  v24 = objc_loadWeakRetained((a1 + 40));
  v25 = [v24 stateMachine];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_915;
  v31[3] = &unk_1E872E4B8;
  objc_copyWeak(&v32, (a1 + 40));
  [v25 executeBlockAfterCurrentStateTransition:v31];

  objc_destroyWeak(&v32);
  return @"Showing Extras content";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_915(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained backgroundAudioPlayer];

  if (v2)
  {
    [v2 play];
  }

  else
  {
    v3 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "No active backgroundAudioPlayer available", v4, 2u);
    }
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_917(uint64_t a1, int a2, unsigned int a3, int a4, unsigned int a5, int a6, int a7, int a8, void *a9)
{
  v139 = __PAIR64__(a3, a5);
  v159 = *MEMORY[0x1E69E9840];
  v144 = a9;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setExtrasContext:0];

  v13 = objc_loadWeakRetained((a1 + 48));
  [v13 setExtrasPresenter:0];

  v14 = objc_loadWeakRetained((a1 + 48));
  [v14 setMoreInfoCanonicalViewController:0];

  v15 = objc_loadWeakRetained((a1 + 48));
  [v15 setDateAppWasBackgrounded:0];

  v16 = objc_loadWeakRetained((a1 + 48));
  [v16 setShouldRestartIfAppHasBeenBackgroundedTooLong:0];

  v17 = objc_loadWeakRetained((a1 + 48));
  [v17 setDatePlaybackWasPaused:0];

  v18 = objc_loadWeakRetained((a1 + 48));
  v19 = [v18 pausedTooLongTimer];
  [v19 invalidate];

  v20 = objc_loadWeakRetained((a1 + 48));
  [v20 setPausedTooLongTimer:0];

  v21 = objc_loadWeakRetained((a1 + 48));
  v22 = [v21 mainPlayerLongLoadingTimer];
  [v22 invalidate];

  v23 = objc_loadWeakRetained((a1 + 48));
  [v23 setMainPlayerLongLoadingTimer:0];

  v24 = objc_loadWeakRetained((a1 + 48));
  [v24 setLongLoadingAlertController:0];

  v25 = objc_loadWeakRetained((a1 + 48));
  [v25 setHasMainPlayerFinishedInitialLoading:0];

  v26 = objc_loadWeakRetained((a1 + 48));
  v27 = [v26 activePlayer];

  if ((a6 & 1) == 0 && ([v27 initialMediaItemHasCompletedInitialLoading] & 1) == 0)
  {
    v28 = [v27 currentMediaItem];
    v29 = [v28 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];

    if (v29 && ([v29 complete] & 1) == 0)
    {
      [v29 addSingleShotEventWithName:*MEMORY[0x1E69D6020] value:*MEMORY[0x1E69D6060]];
    }
  }

  if (_os_feature_enabled_impl())
  {
    v30 = objc_loadWeakRetained((a1 + 48));
    v31 = [v30 _didWatchContentToEndForPlayer:v27];

    v32 = objc_loadWeakRetained((a1 + 48));
    v33 = [v27 currentMediaItem];
    [v32 _markMediaItemToDeleteOnCompletionForMediaItem:v33 deleteOnCompletion:v31];
  }

  if ((a4 & 1) == 0 && !+[VUITVExtension isRunningInCompanionApp])
  {
    v34 = objc_loadWeakRetained((a1 + 48));
    v35 = [v34 mainAVPlayerViewController];
    [v35 setDelegate:0];
  }

  (*(*(a1 + 32) + 16))();
  v36 = objc_loadWeakRetained((a1 + 48));
  [v36 _removePlayerFromTimedMetadataManager:v27];

  v37 = objc_loadWeakRetained((a1 + 48));
  v38 = [v37 timedMetadataDebuggerViewController];
  [v38 stopObserving];

  if (a2)
  {
    v39 = [v27 playlist];
    v40 = [v39 currentMediaItem];

    if (v40)
    {
      v41 = [v27 playlist];
      v42 = [v41 currentMediaItem];
      [VUIMetricsMediaEvent recordStopOfTVPMediaItem:v42];
    }

    [v27 stop];
  }

  v43 = objc_loadWeakRetained((a1 + 48));
  [v43 setSavedErrorUserInfo:0];

  v44 = objc_loadWeakRetained((a1 + 48));
  [v44 setSavedErrorContext:0];

  v45 = objc_loadWeakRetained((a1 + 48));
  [v45 setFeatureMonitor:0];

  v46 = objc_loadWeakRetained((a1 + 48));
  [v46 setRatingImage:0];

  v47 = objc_loadWeakRetained((a1 + 48));
  [v47 setPhotoSensitivityImage:0];

  v48 = objc_loadWeakRetained((a1 + 48));
  v49 = [v48 ratingView];
  [v49 removeFromSuperview];

  v50 = objc_loadWeakRetained((a1 + 48));
  [v50 setRatingView:0];

  v51 = objc_loadWeakRetained((a1 + 48));
  [v51 setProductPlacementImage:0];

  v52 = objc_loadWeakRetained((a1 + 48));
  v53 = [v52 productPlacementView];
  [v53 removeFromSuperview];

  v54 = objc_loadWeakRetained((a1 + 48));
  [v54 setProductPlacementView:0];

  v55 = objc_loadWeakRetained((a1 + 48));
  [v55 setLogoImageDownloader:0];

  v56 = objc_loadWeakRetained((a1 + 48));
  [v56 setRatingImageProxy:0];

  v57 = objc_loadWeakRetained((a1 + 48));
  [v57 setPhotoSensitivityImageProxy:0];

  v58 = objc_loadWeakRetained((a1 + 48));
  [v58 setHighMotionImageProxy:0];

  if (a2)
  {
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v59 = objc_loadWeakRetained((a1 + 48));
    v60 = [v59 multiviewPlaybackInfo];

    v61 = [v60 countByEnumeratingWithState:&v152 objects:v158 count:16];
    if (v61)
    {
      v62 = *v153;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v153 != v62)
          {
            objc_enumerationMutation(v60);
          }

          v64 = *(*(&v152 + 1) + 8 * i);
          v65 = [v64 player];
          [v65 stop];

          v66 = [v64 player];
          [v66 invalidate];

          v67 = [v64 livePostPlayController];
          [v67 cleanup];

          [v64 setLivePostPlayController:0];
        }

        v61 = [v60 countByEnumeratingWithState:&v152 objects:v158 count:16];
      }

      while (v61);
    }

    v68 = objc_loadWeakRetained((a1 + 48));
    v69 = [v68 multiviewPlaybackInfo];
    [v69 removeAllObjects];

    v70 = objc_loadWeakRetained((a1 + 48));
    v71 = [v70 mainLivePostPlayController];
    [v71 cleanup];

    v72 = objc_loadWeakRetained((a1 + 48));
    [v72 setMainLivePostPlayController:0];

    if (a8)
    {
      MRMediaRemoteSetCanBeNowPlayingApplication();
    }
  }

  v73 = +[VUIPlaybackTabManager sharedInstance];
  v74 = objc_loadWeakRetained((a1 + 48));
  v75 = [v74 mainAVPlayerViewController];
  [v73 resetPlayerTabsForPlayerViewController:v75];

  v76 = objc_loadWeakRetained((a1 + 48));
  v77 = [v76 performanceDebuggerViewController];
  [v77 clear];

  v78 = objc_loadWeakRetained((a1 + 48));
  [v78 setHasPerformanceDebuggerAppeared:0];

  v79 = objc_loadWeakRetained((a1 + 48));
  v80 = [v79 stateMachine];
  v81 = [v80 currentState];
  if ([v81 isEqualToString:@"Returning post play PiP to fullscreen with playback UI"])
  {
  }

  else
  {
    v82 = objc_loadWeakRetained((a1 + 48));
    v83 = [v82 stateMachine];
    v84 = [v83 currentState];
    v85 = [v84 isEqualToString:@"Returning post play PiP to fullscreen without playback UI"];

    if (v85)
    {
      goto LABEL_31;
    }

    v86 = objc_loadWeakRetained((a1 + 48));
    [v86 setAutoPlayedVideosCount:0];

    v79 = objc_loadWeakRetained((a1 + 48));
    [v79 setInitialPlaybackStartDate:0];
  }

LABEL_31:
  v87 = objc_loadWeakRetained((a1 + 48));
  [v87 setConfiguredPostPlay:0];

  v88 = objc_loadWeakRetained((a1 + 48));
  [v88 _mainPlayerViewControllerRemoveAllCustomControlItems];

  v89 = MEMORY[0x1E69E58C0];
  v90 = objc_loadWeakRetained((a1 + 48));
  [v89 cancelPreviousPerformRequestsWithTarget:v90 selector:sel__avPlayerViewControllerPresentationDidTimeout object:0];

  v91 = objc_loadWeakRetained((a1 + 48));
  if ([v91 _isNewPostPlayEnabled])
  {
    v92 = +[VUITVExtension isRunningInCompanionApp];

    if (v92)
    {
      goto LABEL_35;
    }

    v91 = objc_loadWeakRetained((a1 + 48));
    [v91 setDismissalOperation:2];
  }

LABEL_35:
  if (a4)
  {
    v93 = 0;
  }

  else
  {
    v93 = (*(*(a1 + 40) + 16))();
  }

  v94 = objc_loadWeakRetained((a1 + 48));
  v95 = [v94 avPlayerViewController];
  v96 = v95 == 0;

  if (v96)
  {
    v99 = 0;
  }

  else
  {
    if (v93 & 1 | ((v141 & 1) == 0) || (v97 = objc_loadWeakRetained((a1 + 48)), v98 = [v97 isExperienceControllerPresented], v97, (v98 & 1) != 0))
    {
      v99 = 0;
    }

    else
    {
      v100 = objc_loadWeakRetained((a1 + 48));
      v101 = [v100 avPlayerViewController];
      v102 = [v101 presentingViewController];

      v99 = v102 != 0;
      if (v102)
      {
        v103 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v103, OS_LOG_TYPE_DEFAULT, "Dismissing AVPlayerViewController", buf, 2u);
        }

        v148[0] = MEMORY[0x1E69E9820];
        v148[1] = 3221225472;
        v148[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_921;
        v148[3] = &unk_1E8730148;
        v151 = a4;
        objc_copyWeak(&v150, (a1 + 48));
        v149 = v144;
        [v102 dismissViewControllerAnimated:v140 completion:v148];

        objc_destroyWeak(&v150);
      }
    }

    v104 = sLogObject_5;
    v105 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
    if (a4)
    {
      if (v105)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v104, OS_LOG_TYPE_DEFAULT, "Keeping existing AVPlayerViewcontroller to re-use", buf, 2u);
      }
    }

    else
    {
      if (v105)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v104, OS_LOG_TYPE_DEFAULT, "Removing references to existing AVPlayerViewController", buf, 2u);
      }

      v106 = objc_loadWeakRetained((a1 + 48));
      [v106 setAvPlayerViewController:0];

      v107 = objc_loadWeakRetained((a1 + 48));
      [v107 setMainAVPlayerViewController:0];
    }

    v108 = objc_loadWeakRetained((a1 + 48));
    [v108 setExtrasAVPlayerViewController:0];

    v109 = objc_loadWeakRetained((a1 + 48));
    [v109 setPostPlayView:0];
  }

  if ((a4 & 1) == 0)
  {
    if (a6)
    {
      v110 = objc_loadWeakRetained((a1 + 48));
      v111 = [v110 playbackContainerViewController];
      [v111 removePostPlayViewController];
    }

    v112 = objc_loadWeakRetained((a1 + 48));
    v113 = [v112 isExperienceControllerPresented];

    if ((v113 & 1) == 0)
    {
      v114 = objc_loadWeakRetained((a1 + 48));
      v115 = [v114 playbackContainerViewController];
      v116 = [v115 presentingViewController];

      if (v116)
      {
        v117 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v117, OS_LOG_TYPE_DEFAULT, "Dismissing presentingViewController", buf, 2u);
        }

        v118 = objc_loadWeakRetained((a1 + 48));
        v119 = [v118 _hidePresentingViewControllerDuringPlayback];

        if (v119)
        {
          v120 = sLogObject_5;
          if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
          {
            v121 = v120;
            v122 = objc_loadWeakRetained((a1 + 48));
            v123 = [v122 playbackContainerViewController];
            v124 = [v123 presentingViewController];
            *buf = 138412290;
            v157 = v124;
            _os_log_impl(&dword_1E323F000, v121, OS_LOG_TYPE_DEFAULT, "Showing %@ after playback dismissal", buf, 0xCu);
          }

          v125 = objc_loadWeakRetained((a1 + 48));
          v126 = [v125 playbackContainerViewController];
          v127 = [v126 presentingViewController];
          v128 = [v127 view];
          [v128 setHidden:0];
        }

        v129 = objc_loadWeakRetained((a1 + 48));
        v130 = [v129 playbackContainerViewController];
        v146[0] = MEMORY[0x1E69E9820];
        v146[1] = 3221225472;
        v146[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_922;
        v146[3] = &unk_1E872E4B8;
        objc_copyWeak(&v147, (a1 + 48));
        [v130 dismissViewControllerAnimated:0 completion:v146];

        objc_destroyWeak(&v147);
      }

      else
      {
        v131 = objc_loadWeakRetained((a1 + 48));
        v132 = [v131 playbackContainerViewController];
        v133 = [v132 unembedMultiPlayerViewController];

        v134 = objc_loadWeakRetained((a1 + 48));
        [v134 setMultiPlayerViewController:0];

        v135 = objc_loadWeakRetained((a1 + 48));
        [v135 setPlaybackContainerViewController:0];
      }
    }
  }

  if (a7)
  {
    +[VUIGroupActivitiesManagerObjC leaveSession];
  }

  if (a2)
  {
    +[VUIGroupActivitiesManagerObjC allPlaybackDidEnd];
    [VUIPlayerHapticManagerObjC setPlayer:0];
  }

  v136 = objc_loadWeakRetained((a1 + 48));
  [v136 _clearActivityItemsConfiguration];

  if (v144)
  {
    v137 = v99;
  }

  else
  {
    v137 = 1;
  }

  if (((v137 | v93) & 1) == 0)
  {
    v144[2]();
  }

  v138 = objc_loadWeakRetained((a1 + 48));
  [v138 setTipKitStates:0];
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_921(uint64_t a1)
{
  if (+[VUITVExtension isRunningInCompanionApp]&& (*(a1 + 48) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained mainAVPlayerViewController];
    [v3 setDelegate:0];
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_922(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playbackContainerViewController];
  v4 = [v3 unembedMultiPlayerViewController];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setMultiPlayerViewController:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setPlaybackContainerViewController:0];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_925(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69D5A40];
  v4 = a2;
  v5 = [v3 paused];

  if (v5 != v4)
  {

LABEL_11:
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v19 = [WeakRetained datePlaybackWasPaused];

    if (v19)
    {
      v20 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Setting date playback was paused to nil", &v37, 2u);
      }

      v21 = objc_loadWeakRetained((a1 + 32));
      [v21 setDatePlaybackWasPaused:0];
    }

    v22 = objc_loadWeakRetained((a1 + 32));
    v23 = [v22 pausedTooLongTimer];

    if (v23)
    {
      v24 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "Invalidating paused too long timer", &v37, 2u);
      }

      v25 = objc_loadWeakRetained((a1 + 32));
      v26 = [v25 pausedTooLongTimer];
      [v26 invalidate];

      v27 = objc_loadWeakRetained((a1 + 32));
      [v27 setPausedTooLongTimer:0];
    }

    return;
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 activePlayer];
  v8 = [v7 currentMediaItem];
  v9 = [v8 hasTrait:VUIMediaItemTraitStopWhenPausedForTooLong];

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 datePlaybackWasPaused];

  if (!v11)
  {
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = v12;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Setting date playback was paused to %@", &v37, 0xCu);
    }

    v14 = objc_loadWeakRetained((a1 + 32));
    [v14 setDatePlaybackWasPaused:v12];
  }

  v15 = [MEMORY[0x1E69DC668] sharedApplication];
  v16 = [v15 applicationState];

  if (v16 == 2)
  {
    v17 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Not creating paused too long timer since app is backgrounded. Will create the timer when app becomes foregrounded", &v37, 2u);
    }
  }

  else
  {
    v28 = objc_loadWeakRetained((a1 + 32));
    v29 = [v28 pausedTooLongTimer];

    if (!v29)
    {
      v30 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 134218240;
        v38 = 0x408C200000000000;
        v39 = 2048;
        v40 = 0x402E000000000000;
        _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "Creating paused too long timer.  Will stop after %f seconds (%f minutes) of being paused", &v37, 0x16u);
      }

      v31 = MEMORY[0x1E695DFF0];
      v32 = objc_loadWeakRetained((a1 + 32));
      v33 = [v31 scheduledTimerWithTimeInterval:v32 target:sel__handlePausedTooLong_ selector:0 userInfo:0 repeats:900.0];

      v34 = objc_loadWeakRetained((a1 + 32));
      v35 = [v34 pausedTooLongTimer];
      [v35 invalidate];

      v36 = objc_loadWeakRetained((a1 + 32));
      [v36 setPausedTooLongTimer:v33];
    }
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_927(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _isNewPostPlayEnabled];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = v8;
  if (v7)
  {
    v10 = [v8 mainPlayer];

    if (v10)
    {
      v11 = objc_loadWeakRetained((a1 + 32));
      [v11 _markMainPlayerMediaItemPostPlayActive:0];
    }

    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 playbackContainerViewController];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_928;
    v37[3] = &unk_1E872D7E0;
    v38 = v5;
    [v13 exitPictureInPictureWithCompletion:v37];

    v14 = v38;
  }

  else
  {
    v15 = [v8 postPlayView];

    v16 = objc_loadWeakRetained((a1 + 32));
    v17 = [v16 activePlayer];
    [v17 setMediaItemEndAction:0];

    v18 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "Dismissing PostPlay View", buf, 2u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_929;
    aBlock[3] = &unk_1E87311D0;
    v14 = v15;
    v33 = v14;
    objc_copyWeak(&v35, (a1 + 32));
    v34 = v5;
    v19 = _Block_copy(aBlock);
    if (a2)
    {
      [v14 frame];
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
      v23 = v39.origin.x + CGRectGetWidth(v39);
      v24 = MEMORY[0x1E69DD250];
      v25 = v31;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_930;
      v31[3] = &unk_1E87311F8;
      v31[4] = v14;
      *&v31[5] = v23;
      *&v31[6] = y;
      *&v31[7] = width;
      *&v31[8] = height;
      v26 = v30;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_931;
      v30[3] = &unk_1E872D790;
      v30[4] = v19;
      [v24 animateWithDuration:0 delay:v31 options:v30 animations:0.5 completion:0.0];
    }

    else
    {
      v27 = MEMORY[0x1E69DD250];
      v25 = v29;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_932;
      v29[3] = &unk_1E872D768;
      v29[4] = v14;
      v26 = v28;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_933;
      v28[3] = &unk_1E872D790;
      v28[4] = v19;
      [v27 animateWithDuration:5242880 delay:v29 options:v28 animations:0.5 completion:0.0];
    }

    objc_destroyWeak(&v35);
  }
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_928(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_929(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _removeVideoDimmingViewForPostPlay];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 avPlayerViewController];
  [v4 setPlaybackControlsIncludeTransportControls:1];

  [*(a1 + 32) stopAutoPlayTimer];
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 metricsRecorder];
  [v6 recordImpressions];

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_935(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v4 BOOLForKey:@"RepeatMovieForever"])
  {

    goto LABEL_4;
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"RepeatOneForAllMedia"];

  if (v6)
  {
LABEL_4:
    v7 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "not configuring post play because RepeatMovieForever or RepeatOneForAllMedia is enabled", buf, 2u);
    }

    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConfiguredPostPlay:0];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_942;
  aBlock[3] = &unk_1E872F038;
  objc_copyWeak(&v22, (a1 + 32));
  v9 = v3;
  v21 = v9;
  v10 = _Block_copy(aBlock);
  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 _isNewPostPlayEnabled];

  if (v12)
  {
    v13 = [v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
    if (([v13 isEqualToString:*MEMORY[0x1E69D5EB8]] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E69D5ED0]) & 1) != 0 || objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E69D5EC8]))
    {
      v10[2](v10);
      v14 = objc_loadWeakRetained((a1 + 32));
      v15 = [v14 playbackContainerViewController];
      [v15 loadPostPlayForMediaItem:v9];
    }
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_944;
    v16[3] = &unk_1E8731248;
    objc_copyWeak(&v19, (a1 + 32));
    v17 = v9;
    v18 = v10;
    [VUIPostPlayDataManager fetchPostPlayItemForCurrentMediaItem:v17 completion:v16];

    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(&v22);
LABEL_14:
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_942(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained activePlayer];
  [v3 duration];
  v5 = v4;

  if (v5 != *MEMORY[0x1E69D5A80])
  {
    v6 = [*(a1 + 32) mediaItemMetadataForProperty:*MEMORY[0x1E69D5CB0]];
    [v6 doubleValue];
    v8 = v7;
    v9 = +[VUIFeaturesConfiguration sharedInstance];
    v10 = [v9 playbackUpNextConfig];

    if (v6 && ([v10 minTimeIntervalFromEndToDisplay], v5 - v8 >= v11) || (v12 = MEMORY[0x1E696AD98], objc_msgSend(v10, "minTimeIntervalFromEndToDisplay"), objc_msgSend(v12, "numberWithDouble:", v5 - v13), v14 = objc_claimAutoreleasedReturnValue(), v6, (v6 = v14) != 0))
    {
      v15 = objc_loadWeakRetained((a1 + 40));
      v16 = [v15 featureMonitor];

      [v6 doubleValue];
      v18 = v17;
      v19 = [v16 featuresForType:2];
      v20 = [v19 firstObject];

      if (v20)
      {
        [(VUINowPlayingTimeBoundFeature *)v20 setStartTime:v18];
      }

      else
      {
        v20 = [[VUINowPlayingTimeBoundFeature alloc] initWithType:2 startTime:v18 duration:INFINITY];
      }

      v21 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v20;
        _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "configured post play feature:<%@>", &v22, 0xCu);
      }

      [v16 addFeature:v20];
    }
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_944(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  if (v14 | v15)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v19 = [WeakRetained isFullscreenPlaybackUIBeingShown];

    if (v19)
    {
      if (v14)
      {
        [v14 setMediaItemMetadata:&unk_1F5E5CFC0 forProperty:*MEMORY[0x1E69D5D90]];
        v20 = (a1 + 32);
        [*(a1 + 32) setMediaItemMetadata:v13 forProperty:@"VUIMediaItemMetadataUpNextPostPlayMediaInfo"];
        v21 = MEMORY[0x1E69D5DD8];
        v22 = v14;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_10;
        }

        v20 = (a1 + 32);
        v21 = VUIMediaItemMetadataKeyPostPlayItemUpsellRouterDataSource;
        v22 = v16;
      }

      [*v20 setMediaItemMetadata:v22 forProperty:*v21];
LABEL_10:
      if (v17)
      {
        [*(a1 + 32) setMediaItemMetadata:v17 forProperty:@"VUIMediaItemMetadataKeyPostPlayItemMetrics"];
      }

      (*(*(a1 + 40) + 16))();
      v24 = objc_loadWeakRetained((a1 + 48));
      v25 = [v24 avPlayerViewController];
      v26 = [v25 contentOverlayView];

      if (!v26)
      {
        goto LABEL_25;
      }

      v61 = v16;
      v64 = v13;
      v67 = a6;
      v68 = v26;
      v27 = [v26 traitCollection];
      if ([v27 isAXEnabled])
      {
        v28 = 271.0;
      }

      else
      {
        v28 = 190.0;
      }

      v70 = [v15 objectForKey:@"postPlayHeader"];
      v29 = [v15 objectForKey:@"postPlayTitle"];
      v30 = [v15 objectForKey:@"postPlayImage"];
      v31 = [v15 objectForKey:@"postPlayId"];
      v63 = [v15 objectForKey:@"postPlayViewType"];
      v32 = [VUIPostPlayView postPlayTypeFromString:?];
      v33 = objc_loadWeakRetained((a1 + 48));
      v65 = v31;
      [v33 setPostPlayItemId:v31];

      v66 = v30;
      v34 = [v30 objectForKey:@"src"];
      v69 = v29;
      v62 = v34;
      if ([v34 length])
      {
        v35 = objc_loadWeakRetained((a1 + 48));
        v36 = [[VUIPostPlayView alloc] initWithFrame:v34 andEpisodeArtworkURLStringFormat:v29 andTitle:v70 andHeader:v32 andType:0.0, 0.0, v28, 186.0];
        [v35 setPostPlayView:v36];
        v37 = v67;
        v13 = v64;
        v16 = v61;
      }

      else
      {
        v60 = v32;
        v37 = v67;
        v13 = v64;
        v16 = v61;
        if (!v14)
        {
LABEL_24:
          v40 = objc_loadWeakRetained((a1 + 48));
          v41 = [v40 postPlayView];
          v42 = objc_loadWeakRetained((a1 + 48));
          [v41 setDelegate:v42];

          v43 = objc_loadWeakRetained((a1 + 48));
          v44 = [v43 postPlayView];
          [v44 setCanAutoPlay:v37];

          v45 = objc_loadWeakRetained((a1 + 48));
          v46 = [v45 postPlayView];
          [v46 setAutoresizingMask:9];

          v47 = objc_alloc(MEMORY[0x1E69DD060]);
          v48 = objc_loadWeakRetained((a1 + 48));
          v49 = [v47 initWithTarget:v48 action:sel__postPlayItemSelected_];

          v50 = objc_loadWeakRetained((a1 + 48));
          v51 = [v50 postPlayView];
          [v51 addGestureRecognizer:v49];

          v52 = objc_alloc(MEMORY[0x1E69DCFC8]);
          v53 = objc_loadWeakRetained((a1 + 48));
          v54 = [v52 initWithTarget:v53 action:sel__dismissPostPlayWithSwipe_];

          [v54 setDirection:1];
          v55 = objc_loadWeakRetained((a1 + 48));
          v56 = [v55 postPlayView];
          [v56 addGestureRecognizer:v54];

          v57 = objc_loadWeakRetained((a1 + 48));
          v58 = [v57 stateMachine];
          [v58 postEvent:@"Post play has been configured"];

          v26 = v68;
LABEL_25:

          goto LABEL_26;
        }

        v35 = [v14 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AA8]];
        if (v35)
        {
          v36 = objc_loadWeakRetained((a1 + 48));
          v38 = [[VUIPostPlayView alloc] initWithFrame:v35 andTVImageProxy:v69 andTitle:v70 andHeader:v60 andType:0.0, 0.0, v28, 186.0];
          [(VUIPostPlayView *)v36 setPostPlayView:v38];
        }

        else
        {
          v36 = [v14 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AC0]];
          v59 = objc_loadWeakRetained((a1 + 48));
          v39 = [[VUIPostPlayView alloc] initWithFrame:v36 andEpisodeArtworkURLStringFormat:v69 andTitle:v70 andHeader:v60 andType:0.0, 0.0, v28, 186.0];
          [(VUIPostPlayView *)v59 setPostPlayView:v39];

          v38 = v59;
        }
      }

      goto LABEL_24;
    }
  }

  v23 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "No post play item for current media item", buf, 2u);
  }

LABEL_26:
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_953(uint64_t a1)
{
  v77[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _isNewPostPlayEnabled];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    [v4 _markMainPlayerMediaItemPostPlayActive:1];

    v6 = +[VUIPostPlayUpsellConfig sharedInstance];
    [v6 setHasShownPostPlay:1];

    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 playbackContainerViewController];
    [v8 enterPictureInPicture];

    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 featureMonitor];
    v11 = [v10 featuresForType:2];
    v69 = [v11 firstObject];

    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 featureMonitor];
    [v13 deactivateFeature:v69 animated:0];

    return;
  }

  v14 = [v4 activePlayer];
  v15 = [v14 currentMediaItem];

  v70 = v15;
  v16 = [v15 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DD8]];
  v68 = v16;
  if (v16)
  {
    v17 = v16;
    if (+[VUIGroupActivitiesManagerObjC isSessionActive])
    {
      [v17 setMediaItemMetadata:MEMORY[0x1E695E118] forProperty:@"VUIMediaItemMetadataKeyDisableSpeculativeLoading"];
    }

    v18 = objc_loadWeakRetained((a1 + 32));
    v19 = [v18 activePlayer];
    v20 = [v19 playlist];
    v21 = [v20 activeListIndex];

    v22 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "Adding post play item to playlist", buf, 2u);
    }

    v23 = objc_loadWeakRetained((a1 + 32));
    v24 = [v23 activePlayer];
    v25 = [v24 playlist];
    [v25 insertItem:v17 atIndex:v21 + 1];
  }

  else
  {
    v26 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "Not adding post play item to playlist because its missing", buf, 2u);
    }
  }

  v27 = objc_loadWeakRetained((a1 + 32));
  v28 = [v27 avPlayerViewController];
  v29 = [v28 contentOverlayView];
  v30 = [v29 safeAreaLayoutGuide];

  v31 = objc_loadWeakRetained((a1 + 32));
  v32 = [v31 avPlayerViewController];
  v33 = [v32 contentOverlayView];

  v34 = objc_loadWeakRetained((a1 + 32));
  v35 = [v34 postPlayView];

  if ([v35 canAutoPlay])
  {
    v36 = objc_loadWeakRetained((a1 + 32));
    if ([v36 _allowedToAutoPlayForType:{objc_msgSend(v35, "type")}])
    {
    }

    else
    {
      v61 = +[VUIGroupActivitiesManagerObjC isSessionActive];

      if (!v61)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  if (+[VUIGroupActivitiesManagerObjC isSessionActive])
  {
LABEL_17:
    v37 = objc_loadWeakRetained((a1 + 32));
    v38 = [v37 activePlayer];
    [v38 setMediaItemEndAction:1];
  }

LABEL_18:
  [v35 setAlpha:1.0];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 addSubview:v35];
  v39 = objc_loadWeakRetained((a1 + 32));
  [v39 _addVideoDimmingViewForPostPlay];

  v40 = objc_loadWeakRetained((a1 + 32));
  v41 = [v40 avPlayerViewController];
  [v41 setPlaybackControlsIncludeTransportControls:0];

  v42 = objc_loadWeakRetained((a1 + 32));
  v43 = [v42 avPlayerViewController];
  v44 = [v43 contentOverlayView];

  v45 = [v35 trailingAnchor];
  v46 = [v30 trailingAnchor];
  [v35 bounds];
  v65 = [v45 constraintEqualToAnchor:v46 constant:CGRectGetWidth(v79)];

  v62 = MEMORY[0x1E696ACD8];
  v77[0] = v65;
  v64 = [v35 bottomAnchor];
  v67 = v30;
  v63 = [v30 bottomAnchor];
  v47 = [v64 constraintEqualToAnchor:v63 constant:-20.0];
  v77[1] = v47;
  v48 = [v35 widthAnchor];
  v66 = v44;
  v49 = [v44 traitCollection];
  v50 = [v49 isAXEnabled];
  v51 = 190.0;
  if (v50)
  {
    v51 = 271.0;
  }

  v52 = [v48 constraintEqualToConstant:v51];
  v77[2] = v52;
  v53 = [v35 heightAnchor];
  v54 = [v53 constraintEqualToConstant:186.0];
  v77[3] = v54;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:4];
  [v62 activateConstraints:v55];

  [v35 setNeedsLayout];
  [v35 layoutIfNeeded];
  [v33 setNeedsLayout];
  v56 = objc_loadWeakRetained((a1 + 32));
  [v56 setPostPlayTrailingConstraint:v65];

  v57 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v57, OS_LOG_TYPE_DEFAULT, "Showing PostPlayView", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_954;
  block[3] = &unk_1E8731298;
  v75[1] = 0xC034000000000000;
  v72 = v65;
  v73 = v33;
  v58 = v33;
  v59 = v65;
  objc_copyWeak(v75, (a1 + 32));
  v74 = v35;
  v60 = v35;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v75);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_954(uint64_t a1)
{
  [*(a1 + 32) setConstant:*(a1 + 64)];
  v2 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_955;
  v6[3] = &unk_1E872D768;
  v7 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_956;
  v3[3] = &unk_1E872F328;
  objc_copyWeak(&v5, (a1 + 56));
  v4 = *(a1 + 48);
  [v2 animateWithDuration:0 delay:v6 options:v3 animations:0.5 completion:0.0];

  objc_destroyWeak(&v5);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_956(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _allowedToAutoPlayForType:{objc_msgSend(*(a1 + 32), "type")}];

  if (v3)
  {
    [*(a1 + 32) startAutoPlayTimer];
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 _resetAutoPlayBingeWatchingQualifications];
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 activePlayer];
  v7 = [v6 currentMediaItem];
  v15 = [v7 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPostPlayItemMetrics"];

  v8 = v15;
  if (v15)
  {
    v9 = [v15 objectForKeyedSubscript:@"VUIContentMetadataPostPlayItemMetricsPageDataKey"];
    if (v9)
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      v11 = [v10 metricsRecorder];
      [v11 recordPage:v9];
    }

    v12 = [v15 objectForKeyedSubscript:@"VUIContentMetadataPostPlayItemMetricsClickDataKey"];
    if (v12)
    {
      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = [v13 metricsRecorder];
      [v14 addItemToImpressionsTracker:v12 index:0];
    }

    v8 = v15;
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_957(uint64_t a1, void *a2)
{
  v26[3] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[VUIInterfaceFactory sharedInstance];
  v4 = [v3 controllerPresenter];

  if (v4 || (+[VUITVAppLauncher sharedInstance](VUITVAppLauncher, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), [v5 appController], v6 = objc_claimAutoreleasedReturnValue(), v5, objc_msgSend(v6, "navigationController"), v4 = objc_claimAutoreleasedReturnValue(), v6, v4))
  {
    v7 = [v2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
    if ([v7 length])
    {
      v8 = [VUIMediaEntityFetchRequest alloc];
      v9 = MEMORY[0x1E695DFD8];
      v10 = +[VUIMediaEntityType movie];
      v26[0] = v10;
      v11 = +[VUIMediaEntityType episode];
      v26[1] = v11;
      v12 = +[VUIMediaEntityType movieRental];
      v26[2] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
      v14 = [v9 setWithArray:v13];
      v15 = [(VUIMediaEntityFetchRequest *)v8 initWithMediaEntityTypes:v14];

      v16 = VUIMediaEntityFetchRequestAllPropertiesSet();
      [(VUIMediaEntityFetchRequest *)v15 setProperties:v16];

      v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v7, "longLongValue")}];
      [(VUIMediaEntityFetchRequest *)v15 addAdamIdPredicate:v17];

      v18 = +[VUIMediaLibraryManager defaultManager];
      v19 = [v18 aggregateMediaLibrary];

      v25 = v15;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_963;
      v22[3] = &unk_1E8731308;
      v23 = v2;
      v24 = v4;
      v21 = [v19 enqueueFetchRequests:v20 completionHandler:v22];
    }

    else if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
    {
      __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_957_cold_1();
    }
  }

  else if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
  {
    __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_957_cold_2();
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_963(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_964;
  block[3] = &unk_1E872E008;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_964(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) firstObject];
  v3 = [v2 mediaEntities];
  v4 = [v3 firstObject];

  v5 = [v4 assetController];
  v6 = sLogObject_5;
  if (v5)
  {
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Preflighting download of %@", buf, 0xCu);
    }

    v8 = +[VUIDownloadManager sharedInstance];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [v5 contentAllowsCellularDownload];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_966;
    v12[3] = &unk_1E87312E0;
    v13 = *(a1 + 40);
    v14 = v5;
    [v8 preflightDownloadForTVPMediaItem:v9 presentingViewController:v10 contentAllowsCellularDownload:v11 completion:v12];
  }

  else if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
  {
    __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_964_cold_1();
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_966(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = sLogObject_5;
  v9 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v35 = v10;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Deleting existing download and starting new download of %@", buf, 0xCu);
    }

    v11 = *(a1 + 40);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_967;
    v32[3] = &unk_1E872F730;
    v33 = v11;
    [v33 deleteAndRedownloadAllowingCellular:a3 quality:a4 shouldMarkAsDeletedOnCancellationOrFailure:0 completion:v32];
    v12 = v33;
    goto LABEL_20;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Downloading video was not allowed", buf, 2u);
  }

  v13 = [MEMORY[0x1E69E4428] sharedMonitor];
  v14 = [v13 networkType];

  if (!v14)
  {
    v15 = MGGetBoolAnswer();
    v16 = +[VUILocalizationManager sharedInstance];
    v17 = v16;
    if (v15)
    {
      v18 = @"CANT_DOWNLOAD_NO_NETWORK_CONNECT_TO_WLAN_TITLE";
    }

    else
    {
      v18 = @"CANT_DOWNLOAD_NO_NETWORK_CONNECT_TO_WIFI_TITLE";
    }

    if (v15)
    {
      v19 = @"CANT_DOWNLOAD_NO_NETWORK_CONNECT_TO_WLAN_MESSAGE";
    }

    else
    {
      v19 = @"CANT_DOWNLOAD_NO_NETWORK_CONNECT_TO_WIFI_MESSAGE";
    }

    v12 = [v16 localizedStringForKey:v18];

    v20 = +[VUILocalizationManager sharedInstance];
    v21 = [v20 localizedStringForKey:v19];

    v22 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v21 preferredStyle:1];
    v23 = MEMORY[0x1E69DC648];
    v24 = +[VUILocalizationManager sharedInstance];
    v25 = [v24 localizedStringForKey:@"OK"];
    v26 = [v23 actionWithTitle:v25 style:0 handler:0];

    [v22 addAction:v26];
    v27 = +[VUIApplicationRouter topPresentedViewController];
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v29 = +[VUITVAppLauncher sharedInstance];
      v30 = [v29 appWindow];

      v28 = [v30 rootViewController];

      if (!v28)
      {
LABEL_19:

LABEL_20:
        return;
      }
    }

    v31 = [v28 presentedViewController];

    if (!v31)
    {
      [v28 presentViewController:v22 animated:1 completion:0];
    }

    goto LABEL_19;
  }
}

VUIMultiviewPlaybackInfo *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_992(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [VUIPlayer alloc];
  v5 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained multiviewPlaybackInfo];
  v8 = [v5 stringWithFormat:@"Multiview Player (%ld)", objc_msgSend(v7, "count") + 1];
  v9 = [(VUIPlayer *)v4 initWithName:v8];

  (*(*(a1 + 32) + 16))();
  [(VUIPlayer *)v9 setReportingCategory:@"multiview"];
  [(VUIPlayer *)v9 setReportingValueWithString:@"multiview" forKey:@"initiator"];
  [(VUIPlayer *)v9 setErrorBehavior:2];
  v10 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v10 BOOLForKey:@"RepeatMovieForever"])
  {

LABEL_4:
    [v3 setRepeatMode:2];
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E695E000] standardUserDefaults];
  v12 = [v11 BOOLForKey:@"RepeatOneForAllMedia"];

  if (v12)
  {
    goto LABEL_4;
  }

LABEL_5:
  v13 = objc_loadWeakRetained((a1 + 40));
  v14 = [v13 createPlayerViewController];

  [v14 setShowsPlaybackControls:0];
  [v14 setCanPausePlaybackWhenExitingFullScreen:0];
  v15 = [v3 currentMediaItem];
  v16 = [v15 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyBroadcastLocale"];
  v17 = [v15 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaysFromStartOfLiveStream"];
  v18 = [v17 BOOLValue];

  v19 = [[VUIMultiviewPlaybackInfo alloc] initWithPlayer:v9 playerViewController:v14 playsFromStart:v18 broadcastLocale:v16 livePostPlayController:0];
  v29 = v3;
  [(VUIPlayer *)v9 setPlaylist:v3];
  v20 = objc_loadWeakRetained((a1 + 40));
  v21 = [v20 multiviewPlaybackInfo];
  v22 = [v21 count];
  v23 = v22 != 0;
  v24 = v22 == 0;

  [v14 setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:4 * v24];
  [(VUIPlayer *)v9 setMuted:v23];
  v25 = [v14 playerController];
  [v25 setAllowsAudioPlayback:v24];

  [(VUIPlayer *)v9 setAllowsExternalPlayback:v24];
  [v14 setUpdatesNowPlayingInfoCenter:v24];
  v26 = objc_loadWeakRetained((a1 + 40));
  v27 = [v26 _audioContainsAirPlayRoute];

  if (v27 && v23)
  {
    [(VUIPlayer *)v9 pause];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_998;
    v30[3] = &unk_1E872D990;
    v31 = v19;
    v32 = v9;
    [(VUIMultiviewPlaybackInfo *)v31 waitForExternalPlaybackToBecomeType:1 forPlayer:v32 completion:v30];
  }

  else
  {
    [(VUIPlayer *)v9 play];
  }

  return v19;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_998(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_999;
  v3[3] = &unk_1E872D768;
  v4 = v1;
  [v2 waitForExternalPlaybackToBecomeType:0 forPlayer:v4 completion:v3];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1001(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1002;
  v14[3] = &unk_1E8731380;
  objc_copyWeak(&v19, (a1 + 48));
  v11 = v7;
  v15 = v11;
  v17 = *(a1 + 40);
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v18 = v13;
  (*(v10 + 16))(v10, 1, 1, 0, 1, 0, 1, 0, v14);

  objc_destroyWeak(&v19);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1002(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _registerBroadcastEndHandler];

  v3 = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v5)
  {
    v6 = *v42;
    do
    {
      v7 = 0;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (*(*(a1 + 48) + 16))();
        v9 = objc_loadWeakRetained((a1 + 64));
        v10 = [v9 multiviewPlaybackInfo];
        [v10 addObject:v8];

        v11 = [v8 playerViewController];
        [v3 addObject:v11];

        v12 = [v8 player];

        if (v12)
        {
          v13 = [v8 player];
          [VUIPlaybackEndManagerObjC monitor:v13];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v5);
  }

  v14 = objc_loadWeakRetained((a1 + 64));
  [v14 _updateMultiviewReportingMetrics];

  v15 = +[VUIInterfaceFactory sharedInstance];
  v16 = [v15 documentCreator];
  v17 = [v16 playbackContainerViewController];

  v18 = objc_loadWeakRetained((a1 + 64));
  [v17 setDelegate:v18];

  v19 = [v17 view];
  v20 = [MEMORY[0x1E69DC888] clearColor];
  [v19 setBackgroundColor:v20];

  v21 = objc_loadWeakRetained((a1 + 64));
  [v21 setPlaybackContainerViewController:v17];

  v22 = objc_loadWeakRetained((a1 + 64));
  v23 = [v22 multiviewPlaybackInfo];
  v24 = [v23 firstObject];
  v25 = [v24 player];
  [v22 setActivePlayer:v25];

  v26 = objc_loadWeakRetained((a1 + 64));
  [v26 configureAudioSessionForBackgroundPlayback:0 usingPlaybackCategory:0 isMultiview:1];

  v27 = +[VUIPlaybackTabManager sharedInstance];
  v28 = objc_loadWeakRetained((a1 + 64));
  [v27 setDelegate:v28];

  v29 = +[VUIPlaybackTabManager sharedInstance];
  v30 = objc_loadWeakRetained((a1 + 64));
  v31 = [v30 multiviewIdentifiers];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1003;
  v34[3] = &unk_1E8731358;
  objc_copyWeak(&v40, (a1 + 64));
  v32 = v3;
  v35 = v32;
  v36 = *(a1 + 32);
  v37 = *(a1 + 40);
  v33 = v17;
  v38 = v33;
  v39 = *(a1 + 56);
  [v29 updatePlayerTabsExcludingCanonicals:v31 completion:v34];

  objc_destroyWeak(&v40);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1003(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained setActivePlayer:0];

  v3 = +[VUIInterfaceFactory sharedInstance];
  v4 = [v3 documentCreator];
  v5 = [*(a1 + 32) copy];
  v6 = [v4 createMultiPlayerViewControllerWithPlayerViewControllers:v5 showingDetails:{objc_msgSend(*(a1 + 40), "count") == 1}];

  v7 = objc_loadWeakRetained((a1 + 72));
  [v6 setDelegate:v7];

  v8 = objc_loadWeakRetained((a1 + 72));
  v9 = [v8 playbackContainerViewController];
  [v9 embedMultiPlayerViewController:v6];

  v10 = objc_loadWeakRetained((a1 + 72));
  [v10 setMultiPlayerViewController:v6];

  v11 = [*(a1 + 40) firstObject];
  v12 = [v11 currentMediaItem];

  v13 = [v12 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AC0]];
  v14 = [MEMORY[0x1E695DFF8] URLWithString:v13];
  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x1E69DF730]);
    v16 = [MEMORY[0x1E69DF7C0] sharedInstance];
    v17 = [v15 initWithObject:v14 imageLoader:v16 groupType:0];

    [v6 setBackgroundImageProxy:v17];
  }

  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1007;
  v20[3] = &unk_1E872D7E0;
  v21 = *(a1 + 64);
  [v18 presentViewController:v19 animated:1 completion:v20];
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1007(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v50 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _registerBroadcastEndHandler];
  v8 = [WeakRetained mainAVPlayerViewController];
  [v8 setShowsPlaybackControls:0];
  [v8 setCanPausePlaybackWhenExitingFullScreen:0];
  [v8 setCanStartPictureInPictureAutomaticallyFromInline:1];
  v53 = v8;
  [v8 setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:4];
  v9 = [WeakRetained currentMediaItem];
  v10 = [v9 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyBroadcastLocale"];
  v52 = v9;
  v11 = [v9 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaysFromStartOfLiveStream"];
  v12 = [v11 BOOLValue];

  v13 = [VUIMultiviewPlaybackInfo alloc];
  v14 = [WeakRetained mainPlayer];
  v15 = [WeakRetained mainAVPlayerViewController];
  v16 = [WeakRetained mainLivePostPlayController];
  v49 = v10;
  v17 = [(VUIMultiviewPlaybackInfo *)v13 initWithPlayer:v14 playerViewController:v15 playsFromStart:v12 broadcastLocale:v10 livePostPlayController:v16];

  [(VUIMultiviewPlaybackInfo *)v17 setContext:1];
  v55 = WeakRetained;
  v18 = [WeakRetained multiviewPlaybackInfo];
  [v18 addObject:v17];

  v19 = [(VUIMultiviewPlaybackInfo *)v17 player];

  if (v19)
  {
    v20 = [(VUIMultiviewPlaybackInfo *)v17 player];
    [VUIPlaybackEndManagerObjC monitor:v20];
  }

  [WeakRetained _updateMultiviewReportingMetrics];
  [WeakRetained setActivePlayer:0];
  [WeakRetained setMainPlayer:0];
  [WeakRetained setMainAVPlayerViewController:0];
  [WeakRetained setAvPlayerViewController:0];
  [WeakRetained setMainLivePostPlayController:0];
  v54 = [MEMORY[0x1E695DF70] arrayWithObject:v53];
  v51 = v6;
  if (v6)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v21 = v6;
    v22 = [v21 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v61;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v61 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = (*(*(a1 + 32) + 16))();
          v27 = [v55 multiviewPlaybackInfo];
          [v27 addObject:v26];

          v28 = [v26 playerViewController];
          [v54 addObject:v28];

          v29 = [(VUIMultiviewPlaybackInfo *)v17 player];

          if (v29)
          {
            v30 = [(VUIMultiviewPlaybackInfo *)v17 player];
            [VUIPlaybackEndManagerObjC monitor:v30];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v23);
    }

    v31 = objc_loadWeakRetained((a1 + 40));
    [v31 _updateMultiviewReportingMetrics];
  }

  v32 = +[VUIInterfaceFactory sharedInstance];
  v33 = [v32 documentCreator];
  v34 = [v54 copy];
  v35 = [v33 createMultiPlayerViewControllerWithPlayerViewControllers:v34 showingDetails:a2];

  [v35 setDelegate:v55];
  if (a2)
  {
    [v35 setDetailsViewControllerVisible:1 animated:0 completion:0];
  }

  v36 = [v55 playbackContainerViewController];
  [v36 embedMultiPlayerViewController:v35];

  [v55 setMultiPlayerViewController:v35];
  v37 = [v52 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AC0]];
  v38 = [MEMORY[0x1E695DFF8] URLWithString:v37];
  if (v38)
  {
    v39 = objc_alloc(MEMORY[0x1E69DF730]);
    v40 = [MEMORY[0x1E69DF7C0] sharedInstance];
    v41 = [v39 initWithObject:v38 imageLoader:v40 groupType:0];

    [v35 setBackgroundImageProxy:v41];
  }

  [v55 configureAudioSessionForBackgroundPlayback:0 usingPlaybackCategory:0 isMultiview:1];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v42 = [v55 multiviewPlaybackInfo];
  v43 = [v42 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v57;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v57 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [*(*(&v56 + 1) + 8 * j) player];
        [v47 setReportingCategory:@"multiview"];
      }

      v44 = [v42 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v44);
  }

  if (v50)
  {
    v50[2](v50);
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained multiviewPlaybackInfo];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 playerViewController];

        v12 = [v10 player];
        v13 = v12;
        if (v11 == v3)
        {
          [v12 setReportingCategory:@"fullscreen"];
LABEL_13:

          continue;
        }

        v14 = [v12 state];
        [v10 setBackgroundPlayerState:v14];

        if ([v10 isAtLiveEdge])
        {
          [v10 setResumeDate:0];
        }

        else
        {
          v15 = [v10 player];
          v16 = [v15 playbackDate];
          [v10 setResumeDate:v16];
        }

        if ([v10 context] != 3)
        {
          v13 = [v10 player];
          [v13 stop];
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained multiviewPlaybackInfo];

  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v25 = v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 playerViewController];

        if (v11 != v3)
        {
          v12 = [v10 resumeDate];

          v13 = [v10 player];
          v14 = v13;
          if (v12)
          {
            v15 = [v10 resumeDate];
            [v14 setPlaybackDate:v15];
          }

          else
          {
            v16 = [v13 currentMediaItem];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v16 setIgnoreStartOverParam:1];
            }

            v14 = v16;
          }

          v17 = [v10 player];
          [v17 setAllowsExternalPlayback:{objc_msgSend(v10, "context") == 1}];

          v18 = [v10 backgroundPlayerState];
          v19 = [MEMORY[0x1E69D5A40] paused];

          if (v18 == v19)
          {
            v23 = [v10 player];
            [v23 pause];
          }

          else
          {
            v20 = objc_loadWeakRetained((a1 + 32));
            v21 = [v20 _audioContainsAirPlayRoute];

            v22 = [v10 player];
            v23 = v22;
            if (v21)
            {
              [v22 pause];

              v23 = [v10 player];
              v26[0] = MEMORY[0x1E69E9820];
              v26[1] = 3221225472;
              v27[0] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_11;
              v27[1] = &unk_1E872D768;
              v27[2] = v10;
              [v10 waitForExternalPlaybackToBecomeType:1 forPlayer:v23 completion:v26];
            }

            else
            {
              [v22 play];
            }
          }
        }

        [v10 setPausedDueToInterruption:0];
        v24 = [v10 player];
        [v24 setReportingCategory:@"multiview"];
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 player];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_12;
  v4[3] = &unk_1E872D768;
  v4[4] = *(a1 + 32);
  [v2 waitForExternalPlaybackToBecomeType:0 forPlayer:v3 completion:v4];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_12(uint64_t a1)
{
  v1 = [*(a1 + 32) player];
  [v1 play];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_13(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v10 player];

  if (v5)
  {
    v6 = [v10 player];
    [v4 setObject:v6 forKey:VUIPlaybackManagerNotificationKeyPlayer[0]];
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  if (a2)
  {
    v8 = @"VUIMultiviewPlayerWillStartNotification";
  }

  else
  {
    v8 = @"VUIMultiviewPlayerDidStopNotification";
  }

  v9 = [v4 copy];
  [v7 postNotificationName:v8 object:0 userInfo:v9];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_14(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:@"AnimatedKey"];
  v12 = [v11 BOOLValue];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_15;
  v18[3] = &unk_1E8731440;
  v13 = *(a1 + 32);
  v23 = v12;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v13;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [v16 executeBlockAfterCurrentStateTransition:v18];

  return @"Returning post play PiP to fullscreen with playback UI";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_16;
  v4[3] = &unk_1E872E008;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  (*(v2 + 16))(v2, v3, v4);
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_17(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_18;
  v17[3] = &unk_1E8731468;
  objc_copyWeak(&v22, (a1 + 40));
  v21 = *(a1 + 32);
  v13 = v9;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v15 = v12;
  v20 = v15;
  [v13 executeBlockAfterCurrentStateTransition:v17];

  objc_destroyWeak(&v22);
  return @"Returning post play PiP to fullscreen without playback UI";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained _isNewPostPlayEnabled];

  if (v3)
  {
    v4 = *(a1 + 56);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_19;
    v8[3] = &unk_1E872E008;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    (*(v4 + 16))(v4, 1, v8);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    [v5 postEvent:@"Present playlist" withContext:v6 userInfo:v7];
  }
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_20(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v209 = *MEMORY[0x1E69E9840];
  v183 = a2;
  v170 = a3;
  v171 = a4;
  v190 = a5;
  v189 = [v190 objectForKey:@"PlaylistKey"];
  v180 = [v190 objectForKey:@"PresentingViewControllerKey"];
  v9 = [v190 objectForKey:@"DismissalOperationKey"];
  v178 = [v9 integerValue];

  v10 = [v190 objectForKey:@"AnimatedKey"];
  v168 = [v10 BOOLValue];

  v11 = [v190 objectForKey:@"AllowCellularUsageKey"];
  v181 = [v11 BOOLValue];

  v175 = [v190 objectForKey:@"CompletionKey"];
  v187 = [v190 objectForKey:@"ExtrasDictionaryKey"];
  v188 = [v183 currentState];
  v185 = [v190 objectForKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchId[0]];
  v177 = [v190 objectForKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchURL[0]];
  v12 = [VUIGroupActivitiesManagerObjC isSharedWatchIdValidForCurrentSession:v185];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v14 = [WeakRetained isPlaylistBeingPresented:v189];

  if (+[VUIPlaybackManager _isTipKitEnabled])
  {
    +[_TtC8VideosUI23PlayerTipKitManagerObjC configureTips];
  }

  if (v12)
  {
    v15 = +[VUIPlaybackManager sharedInstance];
    v184 = [v15 activePlayer];

    [v184 duration];
    v17 = v16;
    v18 = *MEMORY[0x1E69D5A78];
    if ([v188 isEqualToString:@"Showing video full screen"])
    {
      if (!v14)
      {
LABEL_6:
        if (([v188 isEqualToString:@"Showing multiview playback fullscreen"] & 1) != 0 || (objc_msgSend(v188, "isEqualToString:", @"Showing multiview playback fullscreen in PIP") & 1) != 0 || objc_msgSend(v188, "isEqualToString:", @"Showing multiview playback fullscreen due to small screen size"))
        {
          v19 = (v17 == v18) & v14;
          v20 = sLogObject_5;
          if (v19 == 1)
          {
            if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Current playlist is already playing fullscreen in multiview and is live, reusing for SharePlay", buf, 2u);
            }

            [VUIGroupActivitiesManagerObjC playerDidStart:v184];
            v21 = objc_loadWeakRetained((a1 + 72));
            v22 = [v21 multiPlayerViewController];
            [v22 setFullscreenGesturesEnabled:0];

LABEL_18:
            v25 = v188;
            goto LABEL_120;
          }

          v26 = sLogObject_5;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "Current playlist is already playing fullscreen in multiview but not live, not reusing for SharePlay", buf, 2u);
          }
        }

        else if ([v188 isEqualToString:@"Showing multiview playback"])
        {
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v27 = objc_loadWeakRetained((a1 + 72));
          v28 = [v27 multiviewPlaybackInfo];

          v29 = [v28 countByEnumeratingWithState:&v202 objects:v208 count:16];
          if (v29)
          {
            v30 = *v203;
            while (2)
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v203 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = *(*(&v202 + 1) + 8 * i);
                v33 = [v32 player];
                v34 = [v33 playlist];
                v35 = [v34 isEqualToPlaylist:v189];

                if (v35)
                {
                  v36 = [v32 player];
                  v37 = [v32 playerViewController];
                  v38 = v37;
                  if (v36)
                  {
                    if (v37)
                    {
                      [v36 duration];
                      if (v39 == v18)
                      {
                        v158 = sLogObject_5;
                        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1E323F000, v158, OS_LOG_TYPE_DEFAULT, "Current playlist is already playing multiview and is live, bringing fullscreen and reusing for SharePlay", buf, 2u);
                        }

                        [VUIGroupActivitiesManagerObjC playerDidStart:v36];
                        v159 = objc_loadWeakRetained((a1 + 72));
                        v160 = [v159 multiPlayerViewController];
                        [v160 enterFullscreenWithPlayerViewController:v38 completion:0];

                        v161 = objc_loadWeakRetained((a1 + 72));
                        v162 = [v161 multiPlayerViewController];
                        [v162 setFullscreenGesturesEnabled:0];

                        v25 = v188;
                        goto LABEL_120;
                      }
                    }
                  }
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v202 objects:v208 count:16];
              if (v29)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_38:

        goto LABEL_39;
      }
    }

    else if (([v188 isEqualToString:@"Showing main video picture in picture"] & v14 & 1) == 0)
    {
      goto LABEL_6;
    }

    v23 = sLogObject_5;
    v24 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
    if (v17 == v18)
    {
      if (v24)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "Current playlist is already playing fullscreen and is live, reusing for SharePlay", buf, 2u);
      }

      [VUIGroupActivitiesManagerObjC playerDidStart:v184];
      goto LABEL_18;
    }

    if (v24)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "Current playlist is not not live, not reusing for SharePlay", buf, 2u);
    }

    goto LABEL_38;
  }

LABEL_39:
  if ([v188 isEqualToString:@"Showing video full screen"])
  {
    v40 = objc_loadWeakRetained((a1 + 72));
    v41 = [v40 extrasPresenter];
    v42 = v41 == 0;

    v43 = 1.0;
    if (!v42)
    {
      v44 = objc_loadWeakRetained((a1 + 72));
      v45 = [v44 extrasPresenter];
      [v45 dismissExtrasAnimated:0 completion:0];
    }

    goto LABEL_42;
  }

  if ([v188 isEqualToString:@"Showing Extras content"])
  {
    v47 = objc_loadWeakRetained((a1 + 72));
    v48 = [v47 extrasPresenter];
    [v48 dismissExtrasAnimated:0 completion:0];

    goto LABEL_52;
  }

  if ([v188 isEqualToString:@"Showing video full screen with post play content on screen"])
  {
    (*(*(a1 + 32) + 16))();
    goto LABEL_52;
  }

  if ([v188 isEqualToString:@"Returning post play PiP to fullscreen with playback UI"])
  {
    v49 = objc_loadWeakRetained((a1 + 72));
    v50 = [v49 mainPlayer];
    v51 = [v50 state];
    v52 = [MEMORY[0x1E69D5A40] playing];
    v53 = v51 == v52;

    if (!v53)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (![v188 isEqualToString:@"Returning post play PiP to fullscreen without playback UI"])
    {
      v43 = 1.0;
      if (([v188 isEqualToString:@"Waiting for AVPlayerViewController presentation to complete"] & 1) == 0 && (objc_msgSend(v188, "isEqualToString:", @"Waiting for AVPlayerViewController presentation to complete to dismiss") & 1) == 0)
      {
        if (([v188 isEqualToString:@"Showing multiview playback fullscreen"] & 1) != 0 || (objc_msgSend(v188, "isEqualToString:", @"Showing multiview playback fullscreen in PIP") & 1) != 0 || objc_msgSend(v188, "isEqualToString:", @"Showing multiview playback fullscreen due to small screen size"))
        {
          v152 = objc_loadWeakRetained((a1 + 72));
          v153 = [v152 multiPlayerViewController];
          [v153 setFullscreenGesturesEnabled:0];

          v154 = objc_loadWeakRetained((a1 + 72));
          v155 = [v154 playbackContainerViewController];
          v156 = [v155 unembedMultiPlayerViewController];

          v157 = objc_loadWeakRetained((a1 + 72));
          [v157 setMultiPlayerViewController:0];
        }

        else
        {
          if (![v188 isEqualToString:@"Showing long loading dialog"])
          {
            v46 = 0;
            goto LABEL_53;
          }

          v163 = objc_loadWeakRetained((a1 + 72));
          [v163 setSavedErrorContext:0];

          v164 = objc_loadWeakRetained((a1 + 72));
          [v164 setSavedErrorUserInfo:0];

          v165 = objc_loadWeakRetained((a1 + 72));
          v166 = [v165 longLoadingAlertController];
          v167 = [v166 presentingViewController];
          [v167 dismissViewControllerAnimated:0 completion:0];
        }
      }

      goto LABEL_42;
    }

    v57 = objc_loadWeakRetained((a1 + 72));
    v58 = [v57 mainPlayer];
    v59 = [v58 state];
    v60 = [MEMORY[0x1E69D5A40] playing];
    v61 = v59 == v60;

    if (!v61)
    {
LABEL_52:
      v46 = 1;
      v43 = 1.0;
      goto LABEL_53;
    }
  }

  v54 = objc_loadWeakRetained((a1 + 72));
  v55 = [v54 mainPlayer];
  [v55 rate];
  v43 = v56;

LABEL_42:
  v46 = 1;
LABEL_53:
  if ([v188 isEqualToString:@"Showing error message without playback UI"])
  {
    v62 = objc_loadWeakRetained((a1 + 72));
    v63 = [v62 errorAlertController];
    v64 = v63 == 0;

    if (!v64)
    {
      v65 = objc_loadWeakRetained((a1 + 72));
      v66 = [v65 errorAlertController];
      v67 = [v66 presentingViewController];
      v68 = v67 == 0;

      if (!v68)
      {
        v69 = sLogObject_5;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v69, OS_LOG_TYPE_DEFAULT, "Dismissing error alert controller", buf, 2u);
        }

        v70 = objc_loadWeakRetained((a1 + 72));
        v71 = [v70 errorAlertController];
        [v71 dismissViewControllerAnimated:0 completion:0];
      }

      v72 = objc_loadWeakRetained((a1 + 72));
      [v72 setErrorAlertController:0];
    }
  }

  if (!v46)
  {
    v176 = 0;
    goto LABEL_69;
  }

  v73 = objc_loadWeakRetained((a1 + 72));
  v74 = [v73 avPlayerViewController];
  v75 = [v74 presentingViewController];
  if (v75)
  {
  }

  else
  {
    v76 = [v188 isEqualToString:@"Waiting for AVPlayerViewController presentation to complete"];

    if ((v76 & 1) == 0)
    {
      v77 = sLogObject_5;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_20_cold_1();
      }

      v176 = 0;
      goto LABEL_68;
    }
  }

  v77 = sLogObject_5;
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v77, OS_LOG_TYPE_DEFAULT, "Will reuse existing presented AVPlayerViewController", buf, 2u);
  }

  v176 = 1;
LABEL_68:

LABEL_69:
  v78 = objc_loadWeakRetained((a1 + 72));
  v79 = [v78 activePlayer];
  v184 = [v79 preferredAudioLanguageCode];

  v80 = objc_loadWeakRetained((a1 + 72));
  v186 = [v80 _getLivePostPlayPrefetchPlayerIfApplicable:v189];

  v174 = [v190 objectForKey:VUIPlaybackManagerPresentPlaylistUserInfoPlaybackContext[0]];
  v81 = [v174 integerValue];
  v82 = v186;
  if (v186)
  {
    v83 = v186;
    v84 = v81 == 13;
  }

  else
  {
    v83 = [[VUIPlayer alloc] initWithName:@"Main player"];
    v84 = 0;
    v82 = 0;
  }

  if (v81 == 13 && !v84)
  {
    v85 = sLogObject_5;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v85, OS_LOG_TYPE_DEFAULT, "Playback context is live sports post play binge", buf, 2u);
    }

    v86 = [MEMORY[0x1E695DF90] dictionary];
    v87 = objc_loadWeakRetained((a1 + 72));
    v88 = [v87 mainPlayer];
    [v86 vui_setObjectIfNotNil:v88 forKey:@"VUILiveSportsPostPlayCurrentPlayer"];

    [v86 vui_setObjectIfNotNil:v83 forKey:@"VUILiveSportsPostPlayNextPlayer"];
    v89 = [MEMORY[0x1E696AD88] defaultCenter];
    [v89 postNotificationName:@"VUILiveSportsPostPlayManualPlayWillStartNotification" object:0 userInfo:v86];

    v82 = v186;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  if (v82)
  {
    [VUIPlaybackUtilities updateReportingForStartOfPreloadedPlayer:v186];
    [v186 setElapsedTime:1 precise:*MEMORY[0x1E69D5A88]];
    v90 = objc_loadWeakRetained((a1 + 72));
    v91 = [v90 avPlayerViewController];
    v92 = [v186 avPlayer];
    [v91 setPlayer:v92];
  }

  (*(*(a1 + 48) + 16))();
  [(VUIPlayer *)v83 setReportingCategory:@"fullscreen"];
  [(VUIPlayer *)v83 setErrorBehavior:2];
  [(VUIPlayer *)v83 setAllowsCellularUsage:v181];
  [(VUIPlayer *)v83 setRateUsedForPlayback:v43];
  if (+[VUITVExtension isRunningInTVExtension](VUITVExtension, "isRunningInTVExtension") || +[VUITVExtension isRunningInCompanionApp])
  {
    [(VUIPlayer *)v83 setAllowsExternalPlayback:0];
  }

  v93 = [v189 currentMediaItem];
  v172 = [v93 mediaItemMetadataForProperty:@"VUIMediaItemMetadataPreferredAudioLanguageCode"];

  if ((v81 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v94 = sLogObject_5;
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      v95 = v184;
      goto LABEL_91;
    }

    *buf = 138412290;
    v95 = v184;
    v207 = v184;
    v96 = "Playback context is post play next episode, setting main player's preferred audio language code to value from previous player: %@";
  }

  else
  {
    if (![v172 length])
    {
      goto LABEL_92;
    }

    v94 = sLogObject_5;
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      v95 = v172;
      goto LABEL_91;
    }

    *buf = 138412290;
    v95 = v172;
    v207 = v172;
    v96 = "Using preferred audio language: %@";
  }

  _os_log_impl(&dword_1E323F000, v94, OS_LOG_TYPE_DEFAULT, v96, buf, 0xCu);
LABEL_91:

  [(VUIPlayer *)v83 setPreferredAudioLanguageCode:v95];
LABEL_92:
  v182 = [v190 objectForKey:VUIPlaybackManagerPresentPlaylistUserInfoIsEligibleForPlayerTabs[0]];
  if (!v182)
  {
    v97 = MEMORY[0x1E695E118];
    if (v81 != 3)
    {
      v97 = 0;
    }

    v182 = v97;
  }

  v98 = [v189 currentMediaItem];
  [v98 setMediaItemMetadata:v182 forProperty:@"VUIMediaItemMetadataIsEligibleForPlayerTabs"];

  v99 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v99 BOOLForKey:@"RepeatMovieForever"])
  {
  }

  else
  {
    v100 = [MEMORY[0x1E695E000] standardUserDefaults];
    v101 = [v100 BOOLForKey:@"RepeatOneForAllMedia"];

    if (!v101)
    {
      goto LABEL_100;
    }
  }

  [v189 setRepeatMode:2];
LABEL_100:
  [(VUIPlayer *)v83 setPlaylist:v189];
  v102 = objc_loadWeakRetained((a1 + 72));
  [v102 setMainPlayer:v83];

  [VUIGroupActivitiesManagerObjC playerDidStart:v83];
  [VUIPlayerHapticManagerObjC setPlayer:v83];
  v173 = [v190 objectForKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchMetadata[0]];
  v103 = objc_loadWeakRetained((a1 + 72));
  v104 = [v189 currentMediaItem];
  [v103 _updateActivityItemsConfigurationWithSharedWatchId:v185 sharedWatchUrl:v177 previewMetadata:v173 mediaItem:v104];

  v105 = objc_loadWeakRetained((a1 + 72));
  [v105 setPresentingViewController:v180];

  v106 = objc_loadWeakRetained((a1 + 72));
  [v106 setDismissalOperation:v178];

  if (v187)
  {
    v107 = (*(*(a1 + 56) + 16))();
    v179 = v107;
  }

  else
  {
    v108 = *(a1 + 64);
    v107 = [v189 currentMediaItem];
    v179 = (*(v108 + 16))(v108, v107);
  }

  v109 = objc_loadWeakRetained((a1 + 72));
  [v179 setDelegate:v109];

  v110 = objc_loadWeakRetained((a1 + 72));
  [v110 setExtrasContext:v179];

  v111 = objc_loadWeakRetained((a1 + 72));
  v112 = objc_opt_new();
  [v111 setLogoImageDownloader:v112];

  v113 = objc_opt_new();
  [v113 setPlayer:v83];
  v114 = objc_loadWeakRetained((a1 + 72));
  [v113 setDelegate:v114];

  v115 = objc_loadWeakRetained((a1 + 72));
  [v115 setFeatureMonitor:v113];

  v116 = +[VUIPlaybackTabManager sharedInstance];
  v117 = objc_loadWeakRetained((a1 + 72));
  [v116 setDelegate:v117];

  v118 = objc_loadWeakRetained((a1 + 72));
  [v118 setPIPedBackgroundMediaController:0];

  v119 = objc_loadWeakRetained((a1 + 72));
  [v119 _addPlayerToTimedMetadataManager:v83];

  v120 = objc_loadWeakRetained((a1 + 72));
  v121 = [v120 timedMetadataDebuggerViewController];
  [v121 observeCurrentVendor];

  v169 = @"fullscreen";
  [VUIPlayer setReportingValueWithString:v83 forKey:"setReportingValueWithString:forKey:"];
  v122 = objc_loadWeakRetained((a1 + 72));
  v123 = [v122 avPlayerViewController];

  if (!v123)
  {
    v124 = objc_loadWeakRetained((a1 + 72));
    v123 = [v124 createPlayerViewController];

    v125 = objc_loadWeakRetained((a1 + 72));
    [v125 setAvPlayerViewController:v123];

    v126 = objc_loadWeakRetained((a1 + 72));
    [v126 setMainAVPlayerViewController:v123];

    if ((v176 & 1) == 0)
    {
      v127 = objc_loadWeakRetained((a1 + 72));
      v128 = [v127 _shouldShowTimedMetadataDebugger];

      if (v128)
      {
        v129 = objc_loadWeakRetained((a1 + 72));
        [v129 _addTimedMetadataDebuggerView];
      }

      v130 = objc_loadWeakRetained((a1 + 72));
      v131 = [v130 _shouldShowPerformanceDebugger];

      if (v131)
      {
        v132 = objc_loadWeakRetained((a1 + 72));
        [v132 _addPerformanceDebuggerView];
      }
    }
  }

  if ((v81 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    v133 = [v189 currentMediaItem];
    [v133 setMediaItemMetadata:&unk_1F5E5CFC0 forProperty:*MEMORY[0x1E69D5D90]];
  }

  v134 = objc_loadWeakRetained((a1 + 72));
  v135 = [v189 currentMediaItem];
  [v134 _donateUserActivityForMediaItem:v135];

  v136 = objc_loadWeakRetained((a1 + 72));
  [v136 _updateRequiresLinearPlayback];

  v137 = objc_loadWeakRetained((a1 + 72));
  v138 = [v137 mainLivePostPlayController];
  LOBYTE(v135) = v138 == 0;

  if ((v135 & 1) == 0)
  {
    v139 = objc_loadWeakRetained((a1 + 72));
    v140 = [v139 mainLivePostPlayController];
    [v140 cleanup];

    v141 = objc_loadWeakRetained((a1 + 72));
    [v141 setMainLivePostPlayController:0];
  }

  v142 = +[VUIInterfaceFactory sharedInstance];
  v143 = [v142 documentCreator];

  v144 = [v123 view];
  v145 = [v143 initializeLivePostPlayControllerWithPlayer:v83 playerViewController:v123 presentationView:v144];

  v146 = objc_loadWeakRetained((a1 + 72));
  [v146 setMainLivePostPlayController:v145];

  v147 = objc_loadWeakRetained((a1 + 72));
  v148 = [v147 stateMachine];
  v200[0] = MEMORY[0x1E69E9820];
  v200[1] = 3221225472;
  v200[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1021;
  v200[3] = &unk_1E872E4B8;
  objc_copyWeak(&v201, (a1 + 72));
  [v148 executeBlockAfterCurrentStateTransition:v200];

  if (v176)
  {
    v198[0] = MEMORY[0x1E69E9820];
    v198[1] = 3221225472;
    v198[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1030;
    v198[3] = &unk_1E872E4B8;
    v149 = &v199;
    objc_copyWeak(&v199, (a1 + 72));
    [v183 executeBlockAfterCurrentStateTransition:v198];
    if (([v188 isEqualToString:@"Waiting for AVPlayerViewController presentation to complete"] & 1) == 0)
    {
      if (![v188 isEqualToString:@"Waiting for AVPlayerViewController presentation to complete to dismiss"])
      {
        if ([v188 isEqualToString:@"Returning post play PiP to fullscreen without playback UI"])
        {
          v25 = @"Waiting for playback to start to return to fullscreen";
        }

        else
        {
          v25 = @"Showing video full screen";
        }

        goto LABEL_119;
      }

      v150 = objc_loadWeakRetained((a1 + 72));
      [v150 performSelector:sel__avPlayerViewControllerPresentationDidTimeout withObject:0 afterDelay:5.0];
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1031;
    block[3] = &unk_1E8731490;
    v149 = &v195;
    objc_copyWeak(&v195, (a1 + 72));
    v194 = v175;
    v196 = v187 != 0;
    v192 = v180;
    v193 = v123;
    v197 = v168;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v25 = @"Waiting for AVPlayerViewController presentation to complete";
LABEL_119:
  objc_destroyWeak(v149);
  objc_destroyWeak(&v201);

LABEL_120:

  return v25;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1021(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained mainPlayer];
  v4 = [v3 currentMediaItem];
  v5 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v5 addEndEventWithName:*MEMORY[0x1E69D6058]];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 mainPlayer];
  [v6 setActivePlayer:v7];

  if (+[VUIGroupActivitiesManagerObjC isSessionActive])
  {
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [v8 objectForKey:*MEMORY[0x1E69DF810]];

    if (!v9 || (objc_opt_respondsToSelector() & 1) == 0 || ([v9 BOOLValue] & 1) != 0)
    {
      goto LABEL_10;
    }

    v10 = [v9 BOOLValue];
    v11 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"paused";
      if (v10)
      {
        v12 = @"playing";
      }

      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Overriding initial playback state to %@ per user default", buf, 0xCu);
    }

    if (!v10)
    {
      v17 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "GroupActivities session is active, starting in paused state", buf, 2u);
      }

      v14 = objc_loadWeakRetained((a1 + 32));
      v15 = [v14 mainPlayer];
      [v15 pause];
    }

    else
    {
LABEL_10:
      v13 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "GroupActivities session is active, starting in playing state", buf, 2u);
      }

      v14 = objc_loadWeakRetained((a1 + 32));
      v15 = [v14 mainPlayer];
      [v15 play];
    }
  }

  else
  {
    v18 = objc_loadWeakRetained((a1 + 32));
    v16 = [v18 mainPlayer];
    [v16 play];
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1030(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained extrasContext];
  [v1 startIfNecessary];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1031(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1032;
  aBlock[3] = &unk_1E8730148;
  objc_copyWeak(&v38, (a1 + 56));
  v37 = *(a1 + 48);
  v39 = *(a1 + 64);
  v2 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained performSelector:sel__avPlayerViewControllerPresentationDidTimeout withObject:0 afterDelay:5.0];

  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 _isAssistiveAccessEnabled];

  if (v5)
  {
    v6 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Assistive access enabled, calling _finishPlayerControllerPresentation immediately", buf, 2u);
    }

    v2[2](v2);
    goto LABEL_9;
  }

  v7 = objc_loadWeakRetained((a1 + 56));
  if (![v7 _isNewPostPlayEnabled] || +[VUITVExtension isRunningInTVExtension](VUITVExtension, "isRunningInTVExtension"))
  {

LABEL_8:
    [*(a1 + 32) presentViewController:*(a1 + 40) animated:*(a1 + 65) completion:v2];
    goto LABEL_9;
  }

  v8 = +[VUITVExtension isRunningInCompanionApp];

  if (v8)
  {
    goto LABEL_8;
  }

  v9 = objc_loadWeakRetained((a1 + 56));
  v10 = [v9 playbackContainerViewController];

  if (!v10)
  {
    v11 = +[VUIInterfaceFactory sharedInstance];
    v12 = [v11 documentCreator];
    v13 = [v12 playbackContainerViewController];

    v14 = objc_loadWeakRetained((a1 + 56));
    [v13 setDelegate:v14];

    v15 = [v13 view];
    v16 = [MEMORY[0x1E69DC888] blackColor];
    [v15 setBackgroundColor:v16];

    v17 = objc_loadWeakRetained((a1 + 56));
    [v17 setPlaybackContainerViewController:v13];
  }

  if ([*(a1 + 32) conformsToProtocol:&unk_1F5E7E650])
  {
    v18 = *(a1 + 32);
    v19 = +[VUIInterfaceFactory sharedInstance];
    v20 = [v19 documentCreator];
    v21 = [v18 currentViewController];
    [v20 recordImpressionsForViewController:v21];
  }

  else
  {
    v18 = +[VUIInterfaceFactory sharedInstance];
    v19 = [v18 documentCreator];
    [v19 recordImpressionsForViewController:*(a1 + 32)];
  }

  v22 = objc_loadWeakRetained((a1 + 56));
  v23 = [v22 playbackContainerViewController];
  v24 = [v23 presentingViewController];

  if (v24)
  {
    v25 = objc_loadWeakRetained((a1 + 56));
    v26 = [v25 playbackContainerViewController];
    v27 = objc_loadWeakRetained((a1 + 56));
    v28 = [v27 avPlayerViewController];
    [v26 presentPlayerViewController:v28 animated:0 completion:v2];
  }

  else
  {
    v29 = *(a1 + 32);
    v30 = objc_loadWeakRetained((a1 + 56));
    v31 = [v30 playbackContainerViewController];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1041;
    v32[3] = &unk_1E872E828;
    objc_copyWeak(&v34, (a1 + 56));
    v33 = v2;
    [v29 presentViewController:v31 animated:1 completion:v32];

    objc_destroyWeak(&v34);
  }

LABEL_9:

  objc_destroyWeak(&v38);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1032(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E58C0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v2 cancelPreviousPerformRequestsWithTarget:WeakRetained selector:sel__avPlayerViewControllerPresentationDidTimeout object:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  LODWORD(WeakRetained) = [v4 _hidePresentingViewControllerDuringPlayback];

  if (WeakRetained)
  {
    v5 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = [v7 playbackContainerViewController];
      v9 = [v8 presentingViewController];
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Hiding presenting view controller %@ after player presentation", buf, 0xCu);
    }

    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = [v10 playbackContainerViewController];
    v12 = [v11 presentingViewController];
    v13 = [v12 view];
    [v13 setHidden:1];
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))();
  }

  v15 = objc_loadWeakRetained((a1 + 40));
  v16 = [v15 stateMachine];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 48), @"IsTestingITunesExtrasKey"}];
  v20 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v16 postEvent:@"AVPlayerViewController presentation did complete" withContext:0 userInfo:v18];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1041(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained playbackContainerViewController];
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 avPlayerViewController];
  [v2 presentPlayerViewController:v4 animated:0 completion:*(a1 + 32)];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1042(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKey:@"PlaylistKey"];
  v14 = [v13 currentMediaItem];
  v15 = [v14 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];

  if (+[VUIPlaybackManager _isTipKitEnabled])
  {
    +[_TtC8VideosUI23PlayerTipKitManagerObjC configureTips];
  }

  if ([v15 isEqualToString:*MEMORY[0x1E69D5EC0]] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", *MEMORY[0x1E69D5ED8]))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v17 = [WeakRetained stateMachine];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1044;
    v24[3] = &unk_1E872F038;
    objc_copyWeak(&v26, (a1 + 40));
    v25 = v13;
    [v17 executeBlockAfterCurrentStateTransition:v24];

    v18 = [v9 currentState];

    objc_destroyWeak(&v26);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
    v19 = [v12 objectForKey:VUIPlaybackManagerPresentPlaylistUserInfoPlaybackContext[0]];
    if ([v19 unsignedIntegerValue] == 5)
    {
      v20 = dispatch_time(0, 2000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1043;
      block[3] = &unk_1E872D9B8;
      objc_copyWeak(&v30, (a1 + 40));
      v28 = v11;
      v29 = v12;
      dispatch_after(v20, MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v30);
    }

    else
    {
      v21 = objc_loadWeakRetained((a1 + 40));
      v22 = [v21 stateMachine];
      [v22 postEvent:@"Present playlist" withContext:v11 userInfo:v12];
    }

    v18 = @"Showing video full screen";
  }

  return v18;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1043(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Present playlist" withContext:*(a1 + 32) userInfo:*(a1 + 40)];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1044(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained extrasNavigationController];
  v4 = [v3 visibleViewController];

  v5 = *(a1 + 32);
  if (v5 && v4)
  {
    v9[0] = @"PlaylistKey";
    v9[1] = @"PresentingViewControllerKey";
    v10[0] = v5;
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 stateMachine];
    [v8 postEvent:@"Extras playback requested" withContext:0 userInfo:v6];
  }
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1045(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v77 = a2;
  v76 = a3;
  v75 = a4;
  v9 = a5;
  v78 = [v9 objectForKey:@"CompletionKey"];
  v10 = [v9 objectForKey:@"PlayerKey"];
  v11 = [v10 playlist];
  v12 = [v9 objectForKey:@"PlaybackContainerKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = [WeakRetained playbackContainerViewController];

  if (v12 != v14)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32));
  }

  (*(*(a1 + 40) + 16))();
  [v10 setReportingCategory:@"fullscreen"];
  [v10 setErrorBehavior:2];
  [v10 setAllowsCellularUsage:0];
  [v10 setAllowsExternalPlayback:1];
  v15 = [v9 objectForKey:VUIPlaybackManagerPresentPlaylistUserInfoIsEligibleForPlayerTabs[0]];
  v16 = [v11 currentMediaItem];
  v73 = v15;
  [v16 setMediaItemMetadata:v15 forProperty:@"VUIMediaItemMetadataIsEligibleForPlayerTabs"];

  v17 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v17 BOOLForKey:@"RepeatMovieForever"])
  {

LABEL_6:
    [v11 setRepeatMode:2];
    goto LABEL_7;
  }

  v18 = [MEMORY[0x1E695E000] standardUserDefaults];
  v19 = [v18 BOOLForKey:@"RepeatOneForAllMedia"];

  if (v19)
  {
    goto LABEL_6;
  }

LABEL_7:
  v20 = objc_loadWeakRetained((a1 + 48));
  [v20 setMainPlayer:v10];

  v21 = objc_loadWeakRetained((a1 + 48));
  [v21 setActivePlayer:v10];

  [VUIGroupActivitiesManagerObjC playerDidStart:v10];
  v22 = [v9 objectForKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchId[0]];
  v23 = [v9 objectForKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchURL[0]];
  v24 = [v9 objectForKey:VUIPlaybackManagerPresentPlaylistUserInfoSharedWatchMetadata[0]];
  v25 = objc_loadWeakRetained((a1 + 48));
  v26 = [v11 currentMediaItem];
  v71 = v23;
  v72 = v22;
  v70 = v24;
  [v25 _updateActivityItemsConfigurationWithSharedWatchId:v22 sharedWatchUrl:v23 previewMetadata:v24 mediaItem:v26];

  v27 = objc_opt_new();
  [v27 setPlayer:v10];
  v28 = objc_loadWeakRetained((a1 + 48));
  [v27 setDelegate:v28];

  v29 = objc_loadWeakRetained((a1 + 48));
  v69 = v27;
  [v29 setFeatureMonitor:v27];

  v30 = [v9 objectForKey:@"PlayerViewControllerKey"];
  v31 = objc_loadWeakRetained((a1 + 48));
  [v31 setAvPlayerViewController:v30];

  v32 = objc_loadWeakRetained((a1 + 48));
  [v32 setMainAVPlayerViewController:v30];

  v33 = objc_loadWeakRetained((a1 + 48));
  [v33 _setupPlayerViewController:v30];

  v34 = objc_loadWeakRetained((a1 + 48));
  v35 = [v34 _currentlyPlayingMultiviewInfo];

  if (v35)
  {
    v36 = objc_loadWeakRetained((a1 + 48));
    v37 = [v36 multiviewPlaybackInfo];
    v38 = [v37 indexOfObject:v35];

    if (v38 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = objc_loadWeakRetained((a1 + 48));
      v40 = [v39 multiPlayerViewController];
      [v40 replacePlayerViewController:v30 atIndex:v38 animated:0 completion:0];

      [v35 setPlayer:v10];
      [v35 setPlayerViewController:v30];
    }
  }

  v41 = objc_loadWeakRetained((a1 + 48));
  [v12 setDelegate:v41];

  v42 = objc_loadWeakRetained((a1 + 48));
  [v42 setPlaybackContainerViewController:v12];

  v43 = objc_loadWeakRetained((a1 + 48));
  v44 = [v12 presentingViewController];
  [v43 setPresentingViewController:v44];

  v45 = objc_loadWeakRetained((a1 + 48));
  v74 = v11;
  v46 = [v11 currentMediaItem];
  [v45 _donateUserActivityForMediaItem:v46];

  v47 = objc_loadWeakRetained((a1 + 48));
  [v47 _updateRequiresLinearPlayback];

  v48 = objc_loadWeakRetained((a1 + 48));
  v49 = [v48 mainLivePostPlayController];

  if (v49)
  {
    v50 = objc_loadWeakRetained((a1 + 48));
    v51 = [v50 mainLivePostPlayController];
    [v51 cleanup];

    v52 = objc_loadWeakRetained((a1 + 48));
    [v52 setMainLivePostPlayController:0];
  }

  v53 = +[VUIInterfaceFactory sharedInstance];
  v54 = [v53 documentCreator];

  v55 = [v30 view];
  v56 = [v54 initializeLivePostPlayControllerWithPlayer:v10 playerViewController:v30 presentationView:v55];

  v57 = objc_loadWeakRetained((a1 + 48));
  [v57 setMainLivePostPlayController:v56];

  v58 = objc_loadWeakRetained((a1 + 48));
  v59 = [v58 stateMachine];
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1046;
  v81[3] = &unk_1E872E4B8;
  objc_copyWeak(v82, (a1 + 48));
  [v59 executeBlockAfterCurrentStateTransition:v81];

  v60 = +[VUIPlaybackTabManager sharedInstance];
  v61 = objc_loadWeakRetained((a1 + 48));
  [v60 setDelegate:v61];

  v62 = +[VUIPlaybackTabManager sharedInstance];
  LODWORD(v61) = [v62 isPlayerTabsEnabled];

  if (v61)
  {
    v63 = +[VUIPlaybackTabManager sharedInstance];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1047;
    v79[3] = &unk_1E872E4B8;
    objc_copyWeak(&v80, (a1 + 48));
    [v63 updatePlayerTabsExcludingCanonicals:0 completion:v79];

    objc_destroyWeak(&v80);
  }

  if (v78)
  {
    v78[2]();
  }

  v64 = objc_loadWeakRetained((a1 + 48));
  v65 = [v64 multiPlayerViewController];
  if (v65)
  {
    v66 = @"Showing multiview playback fullscreen";
  }

  else
  {
    v66 = @"Showing video full screen";
  }

  v67 = v66;

  objc_destroyWeak(v82);
  return v66;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1046(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained mainPlayer];
  v2 = [v1 currentMediaItem];
  v3 = [v2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v3 addEndEventWithName:*MEMORY[0x1E69D6058]];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1047(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupInfoTab];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateMultiviewButtonState];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [v6 objectForKey:@"CompletionKey"];
  v8 = [v6 objectForKey:@"PlaylistsKey"];
  v9 = [v6 objectForKey:@"PresentingViewControllerKey"];

  (*(*(a1 + 32) + 16))();
  return @"Showing multiview playback";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1049(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:@"CompletionKey"];
  (*(*(a1 + 32) + 16))();

  return @"Showing multiview playback";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10_1050(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = *(a1 + 32);
  v15 = [WeakRetained avPlayerViewController];
  (*(v14 + 16))(v14, v15);

  v16 = [WeakRetained avPlayerViewController];
  v17 = [WeakRetained multiPlayerViewController];
  v18 = [v17 conformsToProtocol:&unk_1F5EC1530];

  if (v18)
  {
    v19 = [WeakRetained multiPlayerViewController];
    [v16 setDelegate:v19];
  }

  v20 = [WeakRetained playbackContainerViewController];
  v21 = [WeakRetained multiPlayerViewController];
  [v20 embedMultiPlayerViewController:v21];

  v22 = [WeakRetained multiPlayerViewController];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_11_1101;
  v29 = &unk_1E87301C0;
  v23 = v16;
  v30 = v23;
  objc_copyWeak(&v31, (a1 + 40));
  [v22 exitFullscreenWithCompletion:&v26];

  v24 = objc_loadWeakRetained((a1 + 40));
  [v24 configureAudioSessionForBackgroundPlayback:0 usingPlaybackCategory:0 isMultiview:{1, v26, v27, v28, v29}];

  objc_destroyWeak(&v31);
  return @"Showing multiview playback";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_11_1101(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 setDelegate:WeakRetained];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_12_1102(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKey:@"CompletionKey"];
  v14 = [v12 objectForKeyedSubscript:@"PlayerViewControllerKey"];
  +[VUIPlaybackEndManagerObjC removeAllPlayers];
  if (v14)
  {
    v37 = v11;
    v38 = v10;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [v14 setDelegate:WeakRetained];

    v16 = objc_loadWeakRetained((a1 + 40));
    [v16 _multiviewInfoForPlayerViewController:v14];
    v18 = v17 = v13;

    [v18 player];
    v20 = v19 = v9;
    [v20 setAllowsExternalPlayback:1];
    [v14 setUpdatesNowPlayingInfoCenter:1];
    [v14 setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:2];
    v21 = objc_loadWeakRetained((a1 + 40));
    [v21 setActivePlayer:v20];

    v22 = objc_loadWeakRetained((a1 + 40));
    [v22 setMainPlayer:v20];

    v23 = objc_loadWeakRetained((a1 + 40));
    [v23 setMainAVPlayerViewController:v14];

    v24 = objc_loadWeakRetained((a1 + 40));
    [v24 setAvPlayerViewController:v14];

    v25 = objc_loadWeakRetained((a1 + 40));
    v26 = [v18 livePostPlayController];
    [v25 setMainLivePostPlayController:v26];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_13_1103;
    aBlock[3] = &unk_1E872DE00;
    objc_copyWeak(v46, (a1 + 40));
    v27 = v18;
    v44 = v27;
    v36 = v17;
    v45 = v17;
    v28 = _Block_copy(aBlock);
    v29 = v19;
    v30 = [v19 currentState];
    LODWORD(v25) = [v30 isEqualToString:@"Showing multiview playback"];

    if (v25)
    {
      v31 = objc_loadWeakRetained((a1 + 40));
      v32 = [v31 playbackContainerViewController];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_14_1104;
      v41[3] = &unk_1E872D7E0;
      v42 = v28;
      [v32 presentPlayerViewController:v14 animated:1 completion:v41];
    }

    else
    {
      v28[2](v28);
    }

    objc_destroyWeak(v46);
    v34 = @"Showing video full screen";
    v9 = v29;
    v11 = v37;
    v10 = v38;
    v13 = v36;
  }

  else
  {
    v33 = *(a1 + 32);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_15_1105;
    v39[3] = &unk_1E872E4B8;
    objc_copyWeak(&v40, (a1 + 40));
    (*(v33 + 16))(v33, 1, 1, 0, 1, 0, 0, 1, v39);
    objc_destroyWeak(&v40);
    v34 = @"Not showing anything";
  }

  return v34;
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_13_1103(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained multiviewPlaybackInfo];

  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        if (v8 != *(a1 + 32))
        {
          v9 = [*(*(&v18 + 1) + 8 * v7) player];
          [v9 stop];

          v10 = [v8 player];
          [v10 invalidate];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 multiviewPlaybackInfo];
  [v12 removeAllObjects];

  v13 = objc_loadWeakRetained((a1 + 48));
  v14 = [v13 playbackContainerViewController];
  v15 = [v14 unembedMultiPlayerViewController];

  v16 = objc_loadWeakRetained((a1 + 48));
  [v16 setMultiPlayerViewController:0];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_15_1105(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMultiPlayerViewController:0];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_16_1106(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v9 = a5;
  v10 = [v9 objectForKey:@"PlaylistKey"];
  v11 = (*(*(a1 + 40) + 16))();
  v12 = [v9 vui_BOOLForKey:@"AnimatedKey" defaultValue:1];
  v13 = [v9 vui_numberForKey:@"IndexKey"];
  v14 = [v9 objectForKey:@"CompletionKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v16 = [WeakRetained multiviewPlaybackInfo];
  v17 = v16;
  if (v13)
  {
    [v16 insertObject:v11 atIndex:{objc_msgSend(v13, "integerValue")}];
  }

  else
  {
    [v16 addObject:v11];
  }

  v18 = [v11 player];

  if (v18)
  {
    v19 = [v11 player];
    [VUIPlaybackEndManagerObjC monitor:v19];
  }

  v20 = objc_loadWeakRetained((a1 + 56));
  [v20 _updateMultiviewReportingMetrics];

  v21 = [v10 currentMediaItem];
  v22 = [v21 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];

  v23 = [[VUIPlaybackStartupCoordinator alloc] initWithCanonicalID:v22 showCanonicalID:0 mediaType:@"SportingEvent" watchType:2 isRentAndWatchNow:0];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_17_1108;
  v33[3] = &unk_1E8731508;
  v24 = v23;
  v34 = v24;
  objc_copyWeak(&v40, (a1 + 56));
  v38 = *(a1 + 48);
  v25 = v11;
  v35 = v25;
  v41 = v12;
  v26 = v14;
  v39 = v26;
  v27 = v13;
  v28 = *(a1 + 32);
  v36 = v27;
  v37 = v28;
  [(VUIPlaybackStartupCoordinator *)v24 performPlaybackStartupFlowWithCompletion:v33];

  objc_destroyWeak(&v40);
  return @"Showing multiview playback";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_17_1108(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (a2)
  {
    (*(*(a1 + 64) + 16))();
    v5 = [WeakRetained multiPlayerViewController];
    v6 = [*(a1 + 40) playerViewController];
    v7 = *(a1 + 88);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_18_1109;
    v18[3] = &unk_1E872D7E0;
    v19 = *(a1 + 72);
    [v5 addPlayerViewController:v6 animated:v7 completion:v18];
  }

  else
  {
    if (*(a1 + 48))
    {
      v8 = [*(a1 + 56) multiviewPlaybackInfo];
      v9 = [v8 objectAtIndex:{objc_msgSend(*(a1 + 48), "integerValue")}];

      v10 = objc_loadWeakRetained((a1 + 80));
      v11 = [v10 multiviewPlaybackInfo];
      [v11 removeObjectAtIndex:{objc_msgSend(*(a1 + 48), "integerValue")}];
    }

    else
    {
      v12 = objc_loadWeakRetained((a1 + 80));
      v13 = [v12 multiviewPlaybackInfo];
      v9 = [v13 lastObject];

      v10 = objc_loadWeakRetained((a1 + 80));
      v11 = [v10 multiviewPlaybackInfo];
      [v11 removeLastObject];
    }

    v14 = [v9 player];

    if (v14)
    {
      v15 = [v9 player];
      [VUIPlaybackEndManagerObjC remove:v15];
    }

    v16 = objc_loadWeakRetained((a1 + 80));
    [v16 _updateMultiviewReportingMetrics];

    v17 = *(a1 + 72);
    if (v17)
    {
      (*(v17 + 16))(v17, 0);
    }
  }
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_18_1109(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_19_1111(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained avPlayerViewController];
  (*(*(a1 + 32) + 16))();
  v15 = [WeakRetained multiPlayerViewController];
  v16 = [v15 conformsToProtocol:&unk_1F5EC1530];

  if (v16)
  {
    v17 = [WeakRetained multiPlayerViewController];
    [v14 setDelegate:v17];
  }

  v18 = [WeakRetained playbackContainerViewController];
  v19 = [WeakRetained multiPlayerViewController];
  [v18 embedMultiPlayerViewController:v19];

  [WeakRetained setActivePlayer:0];
  [WeakRetained setMainPlayer:0];
  [WeakRetained setMainAVPlayerViewController:0];
  [WeakRetained setAvPlayerViewController:0];
  [WeakRetained setMainLivePostPlayController:0];
  v20 = [WeakRetained multiPlayerViewController];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_20_1112;
  v25[3] = &unk_1E8731558;
  v21 = v14;
  v26 = v21;
  objc_copyWeak(&v29, (a1 + 40));
  v22 = v9;
  v27 = v22;
  v23 = v12;
  v28 = v23;
  [v20 exitFullscreenWithCompletion:v25];

  objc_destroyWeak(&v29);
  return @"Showing multiview playback";
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_20_1112(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v2 setDelegate:WeakRetained];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v4 postEvent:@"Add multiview playback" withContext:0 userInfo:v5];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [v6 objectForKey:@"PlaylistKey"];
  v8 = [v6 objectForKey:@"CompletionKey"];

  v9 = *(a1 + 32);
  if (v7)
  {
    v12[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    (*(v9 + 16))(v9, 0, v10, v8);
  }

  else
  {
    (*(v9 + 16))(v9, 0, 0, v8);
  }

  return @"Showing multiview playback";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 objectForKey:@"PlaylistKey"];
  v9 = [v8 currentMediaItem];
  v10 = [v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 indexOfMediaItemInMultiviewWithIdentifier:v10];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [WeakRetained multiviewPlaybackInfo];
    v14 = [v13 count];

    if (v12 < v14)
    {
      v15 = [WeakRetained multiviewPlaybackInfo];
      v16 = [v15 objectAtIndex:v12];

      v17 = [v6 vui_BOOLForKey:@"AnimatedKey" defaultValue:1];
      v18 = [WeakRetained multiPlayerViewController];
      v19 = [v16 playerViewController];
      [v18 removePlayerViewController:v19 animated:v17 completion:0];

      v20 = [WeakRetained multiviewPlaybackInfo];
      [v20 removeObject:v16];

      v21 = [v16 player];

      if (v21)
      {
        v22 = [v16 player];
        [VUIPlaybackEndManagerObjC remove:v22];
      }

      v23 = [v16 player];
      [v23 stop];

      v24 = [v16 player];
      [v24 invalidate];

      v25 = objc_loadWeakRetained((a1 + 32));
      [v25 _updateMultiviewReportingMetrics];
    }
  }

  [WeakRetained _unmuteNextAvailableMultiviewPlayer];

  return @"Showing multiview playback";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_23(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v5;
  [v7 stop];
  [v7 invalidate];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 indexOfMediaItemInMultiviewWithPlayer:v7];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [WeakRetained multiviewPlaybackInfo];
    v11 = [v10 count];

    if (v9 < v11)
    {
      v12 = [WeakRetained multiviewPlaybackInfo];
      v13 = [v12 objectAtIndex:v9];

      v14 = [WeakRetained multiviewPlaybackInfo];
      [v14 removeObject:v13];

      v15 = objc_loadWeakRetained((a1 + 32));
      [v15 _updateMultiviewReportingMetrics];

      v16 = [v13 player];

      if (v16)
      {
        v17 = [v13 player];
        [VUIPlaybackEndManagerObjC remove:v17];
      }
    }
  }

  v18 = [WeakRetained multiviewPlaybackInfo];
  if ([v18 count] <= 1)
  {
    v19 = @"Showing video full screen";
  }

  else
  {
    v19 = @"Showing multiview playback";
  }

  v20 = v19;

  return v19;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v6 objectForKey:@"PlaylistKey"];
  v9 = [v6 vui_BOOLForKey:@"AnimatedKey" defaultValue:1];
  v10 = [v6 vui_numberForKey:@"IndexKey"];

  v11 = [v10 integerValue];
  v12 = [WeakRetained multiviewPlaybackInfo];
  v13 = [v12 objectAtIndex:v11];

  v14 = (*(*(a1 + 32) + 16))();
  v15 = [WeakRetained multiviewPlaybackInfo];
  [v15 setObject:v14 atIndexedSubscript:v11];

  v16 = [WeakRetained multiPlayerViewController];
  v17 = [v14 playerViewController];
  [v16 replacePlayerViewController:v17 atIndex:v11 animated:v9 completion:0];

  v18 = [v14 playerViewController];
  [WeakRetained _muteAllMultiviewPlayersExcept:v18];

  v19 = [v13 player];
  [v19 stop];

  v20 = [v13 player];
  [v20 invalidate];

  return @"Showing multiview playback";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:@"PlayerViewControllerKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _muteAllMultiviewPlayersExcept:v6];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 _multiviewInfoForPlayerViewController:v6];

  if ([v9 pausedDueToInterruption])
  {
    (*(*(a1 + 32) + 16))();
  }

  return @"Showing multiview playback";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_26(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v48 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKey:@"PlayerViewControllerKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained _multiviewInfoForPlayerViewController:v12];

  [v14 setContext:2];
  v15 = [v14 player];
  [v15 setAllowsExternalPlayback:1];

  [v12 setUpdatesNowPlayingInfoCenter:1];
  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v14 player];
  [v16 setActivePlayer:v17];

  v18 = objc_loadWeakRetained((a1 + 40));
  v19 = [v14 player];
  [v18 setMainPlayer:v19];

  v20 = objc_loadWeakRetained((a1 + 40));
  [v20 setAvPlayerViewController:v12];

  v21 = objc_loadWeakRetained((a1 + 40));
  [v21 setMainAVPlayerViewController:v12];

  v22 = objc_loadWeakRetained((a1 + 40));
  v23 = [v14 livePostPlayController];
  [v22 setMainLivePostPlayController:v23];

  v24 = objc_loadWeakRetained((a1 + 40));
  v25 = [v24 mainPlayer];
  v26 = [v25 currentMediaItem];
  [v24 _showShareMediaMenuForMediaItem:v26];

  v27 = objc_loadWeakRetained((a1 + 40));
  [v27 _muteAllMultiviewPlayersExcept:v12];

  [v12 setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:2];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_27;
  v51[3] = &unk_1E872DC10;
  v53 = *(a1 + 32);
  v28 = v12;
  v52 = v28;
  [v9 executeBlockAfterCurrentStateTransition:v51];
  v29 = +[VUIPlaybackTabManager sharedInstance];
  v30 = objc_loadWeakRetained((a1 + 40));
  v31 = [v30 multiviewIdentifiers];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_28;
  v49[3] = &unk_1E872E4B8;
  objc_copyWeak(&v50, (a1 + 40));
  [v29 updatePlayerTabsExcludingCanonicals:v31 completion:v49];

  v32 = objc_loadWeakRetained((a1 + 40));
  [v28 setDelegate:v32];

  v33 = objc_loadWeakRetained((a1 + 40));
  v34 = [v33 playbackContainerViewController];
  v35 = [v34 unembedMultiPlayerViewController];

  v36 = [v28 view];
  v37 = [v36 window];
  [v37 bounds];
  v39 = v38;
  v41 = v40;

  v42 = objc_loadWeakRetained((a1 + 40));
  v43 = [v42 multiPlayerViewController];
  LODWORD(v36) = [v43 isSupportedScreenSize:{v39, v41}];

  v44 = objc_loadWeakRetained((a1 + 40));
  [v44 configureAudioSessionForBackgroundPlayback:0 usingPlaybackCategory:0 isMultiview:0];

  if (v36)
  {
    v45 = @"Showing multiview playback fullscreen";
  }

  else
  {
    v45 = @"Showing multiview playback fullscreen due to small screen size";
  }

  v46 = v45;
  objc_destroyWeak(&v50);

  return v45;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateMultiviewButtonState];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _setupInfoTab];
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_29(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v35 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKey:@"PlaylistKey"];
  v13 = [v11 objectForKey:@"CanPlayMediaKey"];
  v34 = v13;
  if (v13)
  {
    v14 = [v13 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  v33 = v14;
  v36 = v10;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = [WeakRetained longLoadingAlertController];
  v17 = [v16 presentingViewController];
  [v17 dismissViewControllerAnimated:1 completion:0];

  v18 = objc_loadWeakRetained((a1 + 40));
  [v18 setLongLoadingAlertController:0];

  v19 = [v12 tvpPlaylist];
  v20 = [v19 currentMediaItem];
  if ([v20 hasTrait:VUIMediaItemTraitIsSportingEvent])
  {
    v21 = [v12 videosPlayables];
    v22 = [v21 firstObject];
    v23 = [v22 metadata];
    v24 = [v23 duration];

    if (!v24)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v25 = [v9 currentState];
  v26 = [v25 isEqualToString:@"Showing multiview playback fullscreen"];

  if (v26)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_30;
    v43[3] = &unk_1E872D9B8;
    objc_copyWeak(v46, (a1 + 40));
    v44 = v11;
    v27 = v36;
    v45 = v36;
    [v9 executeBlockAfterCurrentStateTransition:v43];

    objc_destroyWeak(v46);
    goto LABEL_15;
  }

LABEL_10:
  v27 = v36;
  if ((v33 & 1) == 0)
  {
    if ([v12 playbackContext] == 12)
    {
      v28 = 4;
    }

    else
    {
      v28 = 3;
    }

    v29 = [VUIPlaybackStartupCoordinator startupCoordinatorWithMediaInfo:v12 watchType:v28 isRentAndWatchNow:0];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_31;
    v37[3] = &unk_1E8731580;
    v30 = v29;
    v38 = v30;
    objc_copyWeak(&v42, (a1 + 40));
    v41 = *(a1 + 32);
    v39 = v12;
    v40 = v9;
    [v30 performPlaybackStartupFlowWithCompletion:v37];

    objc_destroyWeak(&v42);
  }

LABEL_15:
  v31 = [v9 currentState];

  return v31;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained stateMachine];
  [v3 postEvent:@"Dismiss multiview playback" withContext:0 userInfo:*(a1 + 32)];

  v5 = objc_loadWeakRetained((a1 + 48));
  v4 = [v5 stateMachine];
  [v4 postEvent:@"Media info did change" withContext:*(a1 + 40) userInfo:*(a1 + 32)];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_31(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6, void *a7, void *a8)
{
  v51 = *MEMORY[0x1E69E9840];
  v39 = a6;
  v15 = a7;
  v16 = a8;
  v17 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v44 = a2;
    v45 = 2048;
    v46 = a3;
    v47 = 2048;
    v48 = a4;
    v49 = 2048;
    v50 = a5;
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Mediainfo changed startup coordinator finished startup flow.  startPlayback == %ld, isCoWatching == %ld, forceDownloadToStream == %ld, allowCellular == %ld", buf, 0x2Au);
  }

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _setExtrasButtonVisible:{0, v39}];

    v19 = *(a1 + 56);
    v20 = [*(a1 + 40) tvpPlaylist];
    v21 = [v20 currentMediaItem];
    v22 = (*(v19 + 16))(v19, v21);

    v23 = objc_loadWeakRetained((a1 + 64));
    [v22 setDelegate:v23];

    v24 = objc_loadWeakRetained((a1 + 64));
    [v24 setExtrasContext:v22];

    v25 = *(a1 + 48);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1113;
    v41[3] = &unk_1E872E4B8;
    objc_copyWeak(&v42, (a1 + 64));
    [v25 executeBlockAfterCurrentStateTransition:v41];
    v26 = [*(a1 + 40) tvpPlaylist];
    v27 = [v26 currentMediaItem];
    v28 = [v27 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v28 addEndEventWithName:*MEMORY[0x1E69D6058]];

    v29 = objc_loadWeakRetained((a1 + 64));
    v30 = [v29 mainPlayer];

    v31 = [*(a1 + 40) tvpPlaylist];
    [v30 setPlaylist:v31];

    v32 = [v30 currentMediaItem];
    [VUIMetricsMediaEvent recordPlayOfTVPMediaItem:v32];

    [v30 play];
    v33 = objc_loadWeakRetained((a1 + 64));
    v34 = [v15 sharedWatchId];
    v35 = [v15 sharedWatchUrl];
    v36 = [v30 playlist];
    v37 = [v36 currentMediaItem];
    [v33 _updateActivityItemsConfigurationWithSharedWatchId:v34 sharedWatchUrl:v35 previewMetadata:v16 mediaItem:v37];

    objc_destroyWeak(&v42);
  }

  else
  {
    v38 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v38, OS_LOG_TYPE_DEFAULT, "Not playing media item after media info changed since playback startup coordinator disallowed it", buf, 2u);
    }

    v22 = objc_loadWeakRetained((a1 + 64));
    [v22 _clearActivityItemsConfiguration];
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1113(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained extrasContext];
  [v1 startIfNecessary];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:@"PlayerViewControllerKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v6 setDelegate:WeakRetained];

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 configureAudioSessionForBackgroundPlayback:0 usingPlaybackCategory:0 isMultiview:1];

  v9 = objc_loadWeakRetained((a1 + 40));
  [v9 _muteAllMultiviewPlayersExcept:v6];

  [v6 setPreferredPlaybackControlsSupplementalSubtitleDisplayOption:4];
  (*(*(a1 + 32) + 16))();

  return @"Showing multiview playback";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1115(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = [v8 objectForKey:@"AnimatedKey"];
  [v9 BOOLValue];

  v10 = [v8 objectForKey:@"CompletionKey"];

  v11 = [v7 currentState];
  [v11 isEqualToString:@"Showing error message on playback UI"];

  v12 = [v7 currentState];
  if (([v12 isEqualToString:@"Showing video full screen with post play content on screen"] & 1) == 0)
  {
    v13 = [v7 currentState];
    [v13 isEqualToString:@"Showing post play content without playback UI"];
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
  return @"Not showing anything";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1116(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = [a5 objectForKey:@"CompletionKey"];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
  }

  return @"Waiting for AVPlayerViewController presentation to complete to dismiss";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1119(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [v6 objectForKey:@"AnimatedKey"];
  [v7 BOOLValue];

  v8 = [v6 objectForKey:@"CompletionKey"];

  (*(*(a1 + 32) + 16))(*(a1 + 32));
  return @"Not showing anything";
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1120(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKey:@"CompletionKey"];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1121;
  v20 = &unk_1E872E828;
  objc_copyWeak(&v22, (a1 + 32));
  v14 = v13;
  v21 = v14;
  [v9 executeBlockAfterCurrentStateTransition:&v17];
  v15 = [v9 currentState];

  objc_destroyWeak(&v22);

  return v15;
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1121(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPIPedBackgroundMediaController:0];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1122(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [v6 objectForKey:@"AnimatedKey"];
  [v7 BOOLValue];

  v8 = [v6 objectForKey:@"CompletionKey"];

  (*(*(a1 + 32) + 16))(*(a1 + 32));
  return @"Not showing anything";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1123(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = [v8 objectForKey:@"AnimatedKey"];
  [v9 BOOLValue];

  v10 = [v8 objectForKey:@"CompletionKey"];

  if ((*(*(a1 + 32) + 16))())
  {
    v11 = @"Showing extras video picture in picture outside extras content";
  }

  else
  {
    v11 = [v7 currentState];
  }

  return v11;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1124(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v47 = a3;
  v46 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = [WeakRetained savedErrorContext];

  v13 = objc_loadWeakRetained((a1 + 40));
  v14 = [v13 savedErrorUserInfo];

  v15 = [v10 objectForKey:@"IsTestingITunesExtrasKey"];
  v16 = [v15 BOOLValue];

  if (v12 | v14)
  {
    v17 = v9;
    v18 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "An error occurred while the main AVPlayerViewController was being presented.  Posting error event again.", buf, 2u);
    }

    v19 = objc_loadWeakRetained((a1 + 40));
    [v19 setSavedErrorContext:0];

    v20 = objc_loadWeakRetained((a1 + 40));
    [v20 setSavedErrorUserInfo:0];

    v21 = objc_loadWeakRetained((a1 + 40));
    v22 = [v21 stateMachine];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1125;
    v52[3] = &unk_1E872D9B8;
    objc_copyWeak(&v55, (a1 + 40));
    v53 = v12;
    v54 = v14;
    [v22 executeBlockAfterCurrentStateTransition:v52];

    objc_destroyWeak(&v55);
    v23 = @"Showing video full screen";
    v9 = v17;
  }

  else
  {
    v24 = objc_loadWeakRetained((a1 + 40));
    v25 = [v24 mainPlayer];
    v26 = [v25 state];
    v27 = [MEMORY[0x1E69D5A40] stopped];
    v28 = (v26 != v27) | v16;

    if (v28)
    {
      v29 = objc_loadWeakRetained((a1 + 40));
      v30 = [v29 _isAssistiveAccessEnabled];

      if (v30)
      {
        v31 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "Assistive acccess is enabled, defer presentation to ClarityUI", buf, 2u);
        }

        v23 = @"Showing playback in assistive access";
      }

      else
      {
        v45 = v9;
        v35 = objc_loadWeakRetained((a1 + 40));
        v36 = [v35 stateMachine];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1127;
        v48[3] = &unk_1E872E4B8;
        objc_copyWeak(&v49, (a1 + 40));
        [v36 executeBlockAfterCurrentStateTransition:v48];

        v37 = objc_loadWeakRetained((a1 + 40));
        v38 = [v37 mainPlayer];
        v39 = [v38 state];
        v40 = [MEMORY[0x1E69D5A40] playing];

        if (v39 == v40)
        {
          v41 = objc_loadWeakRetained((a1 + 40));
          v42 = [v41 mainPlayer];
          v43 = [v42 currentMediaItem];
          [v41 _showShareMediaMenuForMediaItem:v43];
        }

        objc_destroyWeak(&v49);
        v23 = @"Showing video full screen";
        v9 = v45;
      }
    }

    else
    {
      v32 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v32, OS_LOG_TYPE_DEFAULT, "Dismissing main AVPlayerViewController since playback has stopped since being presented", buf, 2u);
      }

      v33 = objc_loadWeakRetained((a1 + 40));
      v34 = [v33 stateMachine];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1126;
      v50[3] = &unk_1E872D7E0;
      v51 = *(a1 + 32);
      [v34 executeBlockAfterCurrentStateTransition:v50];

      v23 = @"Not showing anything";
    }
  }

  return v23;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1125(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Error did occur" withContext:*(a1 + 32) userInfo:*(a1 + 40)];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1127(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained extrasContext];
  [v1 startIfNecessary];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1128(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained savedErrorContext];

  v15 = objc_loadWeakRetained((a1 + 40));
  v16 = [v15 savedErrorUserInfo];

  if (v14 | v16)
  {
    v17 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "An error occurred while the extras AVPlayerViewController was being presented.  Posting error event again.", buf, 2u);
    }

    v18 = objc_loadWeakRetained((a1 + 40));
    [v18 setSavedErrorContext:0];

    v19 = objc_loadWeakRetained((a1 + 40));
    [v19 setSavedErrorUserInfo:0];

    v20 = objc_loadWeakRetained((a1 + 40));
    v21 = [v20 stateMachine];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1129;
    v33[3] = &unk_1E872D9B8;
    objc_copyWeak(&v36, (a1 + 40));
    v34 = v14;
    v35 = v16;
    [v21 executeBlockAfterCurrentStateTransition:v33];

    objc_destroyWeak(&v36);
    v22 = @"Showing video full screen";
  }

  else
  {
    v32 = v12;
    v23 = v11;
    v24 = v10;
    v25 = v9;
    v26 = objc_loadWeakRetained((a1 + 40));
    v27 = [v26 extrasPlayer];
    v28 = [v27 state];
    v29 = [MEMORY[0x1E69D5A40] stopped];

    if (v28 == v29)
    {
      v30 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "Dismissing extras AVPlayerViewController because playback has stopped since being presented", buf, 2u);
      }

      v22 = (*(*(a1 + 32) + 16))();
    }

    else
    {
      v22 = @"Showing video full screen";
    }

    v9 = v25;
    v10 = v24;
    v11 = v23;
    v12 = v32;
  }

  return v22;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1129(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Error did occur" withContext:*(a1 + 32) userInfo:*(a1 + 40)];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1130(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained stateMachine];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1131;
  v5[3] = &unk_1E872D7E0;
  v6 = *(a1 + 32);
  [v3 executeBlockAfterCurrentStateTransition:v5];

  return @"Not showing anything";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1132(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1133;
  v4[3] = &unk_1E872D7E0;
  v5 = *(a1 + 32);
  [a2 executeBlockAfterCurrentStateTransition:v4];

  return @"Not showing anything";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1134(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1135;
  v4[3] = &unk_1E872D7E0;
  v5 = *(a1 + 32);
  [a2 executeBlockAfterCurrentStateTransition:v4];

  return @"Not showing anything";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1136(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetAutoPlayBingeWatchingQualifications];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 avPlayerViewController];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 extrasAVPlayerViewController];

  if (v6 == v8)
  {
    v11 = @"Showing extras video picture in picture on extras content";
  }

  else
  {
    v9 = [v3 currentState];
    v10 = [v9 isEqualToString:@"Showing video full screen"];

    if (v10)
    {
      v11 = @"Showing main video picture in picture";
    }

    else
    {
      v11 = [v3 currentState];
    }
  }

  return v11;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1137(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKeyedSubscript:@"PlayerViewControllerKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _multiviewInfoForPlayerViewController:v6];

  [v8 setContext:3];
  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 _resetAutoPlayBingeWatchingQualifications];

  return @"Showing multiview playback in PIP";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1138(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pushMoreInfoControllerIfNeeded];

  return @"Showing extras video picture in picture outside extras content";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_11_1140(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDismissalOperation:2];

  v10 = [v8 objectForKeyedSubscript:@"PlayerViewControllerKey"];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 setAvPlayerViewController:v10];

  (*(*(a1 + 32) + 16))();
  v12 = objc_loadWeakRetained((a1 + 40));
  [v12 _pushMoreInfoControllerIfNeeded];

  v13 = [v7 currentState];
  if ([v13 isEqualToString:@"Showing multiview playback fullscreen"])
  {
    v14 = @"Showing multiview playback fullscreen in PIP";
  }

  else
  {
    v14 = [v7 currentState];
  }

  return v14;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_12_1141(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, 1, 0);
  v5 = [v4 currentState];

  return v5;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_13_1142(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDismissalOperation:2];

  v8 = [v6 objectForKeyedSubscript:@"PlayerViewControllerKey"];
  v9 = objc_loadWeakRetained((a1 + 40));
  [v9 setAvPlayerViewController:v8];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 vui_setObjectIfNotNil:v8 forKey:VUIPlaybackManagerNotificationKeyPlayerViewController];
  (*(*(a1 + 32) + 16))();

  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 _pushMoreInfoControllerIfNeeded];

  return @"Showing multiview playback in PIP";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_15_1146(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained extrasAVPlayerViewController];

  v10 = sLogObject_5;
  v11 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (v9 == v6)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Stopping extras content playback because AVPlayerViewController was dismissed", buf, 2u);
    }

    v12 = [v7 currentState];

    v13 = objc_loadWeakRetained((a1 + 40));
    v14 = [v13 extrasPlayer];
    [v14 stop];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Stopping main content playback because AVPlayerViewController was dismissed", buf, 2u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1147;
    v16[3] = &unk_1E872D7E0;
    v17 = *(a1 + 32);
    [v7 executeBlockAfterCurrentStateTransition:v16];

    v12 = @"Not showing anything";
    v13 = v17;
  }

  return v12;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1151(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = [a5 objectForKey:@"CompletionKey"];
  if (!os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
  {
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1151_cold_1();
  if (v7)
  {
LABEL_3:
    v7[2](v7, 0);
  }

LABEL_4:
  v8 = [v6 currentState];

  return v8;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1154(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v76 = a3;
  v75 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:@"CompletionKey"];
  v77 = [v9 currentState];
  v12 = +[VUIApplicationRouter currentNavigationController];
  v13 = [v12 topViewController];
  v14 = [v13 presentedViewController];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [v12 topViewController];
  }

  v17 = v16;

  v18 = [v12 presentedViewController];
  v19 = [v18 isBeingDismissed];

  v20 = [v12 presentedViewController];

  if (v20)
  {
    if (v19)
    {
      v21 = [v12 topViewController];
    }

    else
    {
      [v12 dismissViewControllerAnimated:0 completion:0];
      v21 = 0;
    }

    v17 = v21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v12 topViewController];
    [v22 dismissViewControllerAnimated:0 completion:0];

    v23 = [v12 topViewController];

    v17 = v23;
  }

  if (v17)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v25 = [WeakRetained playbackContainerViewController];

    if (v17 == v25)
    {
      v26 = [v12 topViewController];

      v17 = v26;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v17 dismissViewControllerAnimated:1 completion:0];
  }

  else if (v17)
  {
    goto LABEL_20;
  }

  v27 = +[VUITVAppLauncher sharedInstance];
  v28 = [v27 appWindow];

  v17 = [v28 rootViewController];
  v29 = [v17 presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v29 dismissViewControllerAnimated:1 completion:0];
  }

LABEL_20:
  v30 = objc_loadWeakRetained((a1 + 32));
  [v30 setPresentingViewController:v17];

  LODWORD(v30) = +[VUIUtilities isSUIEnabled];
  v31 = objc_loadWeakRetained((a1 + 32));
  v32 = v31;
  if (v30)
  {
    v33 = 2;
  }

  else
  {
    v33 = 0;
  }

  [v31 setDismissalOperation:v33];

  if (!v17 || (v34 = objc_loadWeakRetained((a1 + 32)), [v34 avPlayerViewController], v35 = objc_claimAutoreleasedReturnValue(), v35, v34, !v35))
  {
    v39 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
    {
      __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1154_cold_1(v17 == 0, v39, (a1 + 32));
      if (!v11)
      {
        goto LABEL_45;
      }
    }

    else if (!v11)
    {
      goto LABEL_45;
    }

    v11[2](v11, 0);
    goto LABEL_45;
  }

  v36 = [v9 currentState];
  v37 = [v36 isEqualToString:@"Showing main video picture in picture"];

  if (v37)
  {

    v38 = @"Showing video full screen";
  }

  else
  {
    v40 = [v9 currentState];
    v41 = [v40 isEqualToString:@"Showing multiview playback in PIP"];

    v38 = @"Showing multiview playback fullscreen";
    if (v41)
    {
      v38 = @"Showing multiview playback";
    }
  }

  v77 = v38;
  v42 = objc_loadWeakRetained((a1 + 32));
  v43 = [v42 avPlayerViewController];
  v44 = [v43 presentingViewController];

  if (!v44)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1156;
    aBlock[3] = &unk_1E872D7E0;
    v83 = v11;
    v74 = _Block_copy(aBlock);
    v46 = objc_loadWeakRetained((a1 + 32));
    if ([v46 _isNewPostPlayEnabled])
    {
      v47 = objc_loadWeakRetained((a1 + 32));
      v48 = [v47 moreInfoCanonicalViewController];

      if (!v48)
      {
        v49 = [v9 currentState];
        v50 = [v49 isEqualToString:@"Showing multiview playback in PIP"];

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 || ([v17 presentedViewController], v51 = objc_claimAutoreleasedReturnValue(), v72 = v50, v52 = objc_loadWeakRetained((a1 + 32)), objc_msgSend(v52, "playbackContainerViewController"), v53 = objc_claimAutoreleasedReturnValue(), v54 = (v51 != v53) | v19, v53, v52, v50 = v72, v51, (v54))
        {
          v55 = objc_loadWeakRetained((a1 + 32));
          v56 = v55;
          if (v50)
          {
            v57 = v55;
            v58 = [v57 avPlayerViewController];
            v73 = [v57 _multiviewInfoForPlayerViewController:v58];

            [v73 setContext:1];
            v59 = objc_loadWeakRetained((a1 + 32));
            v60 = [v59 playbackContainerViewController];
            v61 = objc_loadWeakRetained((a1 + 32));
            v62 = [v61 multiPlayerViewController];
            [v60 embedMultiPlayerViewController:v62];

            v63 = objc_loadWeakRetained((a1 + 32));
            v64 = [v63 playbackContainerViewController];
            v65 = v74;
            [v17 presentViewController:v64 animated:1 completion:v74];
          }

          else
          {
            v69 = [v55 playbackContainerViewController];
            v79[0] = MEMORY[0x1E69E9820];
            v79[1] = 3221225472;
            v79[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1157;
            v79[3] = &unk_1E872E828;
            objc_copyWeak(&v81, (a1 + 32));
            v65 = v74;
            v80 = v74;
            [v17 presentViewController:v69 animated:0 completion:v79];

            objc_destroyWeak(&v81);
          }

          goto LABEL_44;
        }

        v66 = objc_loadWeakRetained((a1 + 32));
        v67 = [v66 playbackContainerViewController];
        v70 = objc_loadWeakRetained((a1 + 32));
        v71 = [v70 avPlayerViewController];
        [v67 presentPlayerViewController:v71 animated:1 completion:v74];

        v65 = v74;
LABEL_43:

LABEL_44:
        goto LABEL_45;
      }
    }

    else
    {
    }

    v66 = objc_loadWeakRetained((a1 + 32));
    v67 = [v66 avPlayerViewController];
    v65 = v74;
    [v17 presentViewController:v67 animated:1 completion:v74];
    goto LABEL_43;
  }

  v45 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v45, OS_LOG_TYPE_DEFAULT, "Not presenting AVPlayerViewController since it is already being presented", buf, 2u);
  }

LABEL_45:

  return v77;
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1156(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1157(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained playbackContainerViewController];
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 avPlayerViewController];
  [v2 presentPlayerViewController:v4 animated:1 completion:*(a1 + 32)];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1158(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKey:@"CompletionKey"];
  v14 = [v9 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = [WeakRetained extrasContext];
  v17 = [v16 extrasRootViewController];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 setPresentingViewController:v17];

  v19 = objc_loadWeakRetained((a1 + 32));
  [v19 setDismissalOperation:0];

  if (!v17 || (v20 = objc_loadWeakRetained((a1 + 32)), [v20 avPlayerViewController], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, !v21))
  {
    v26 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
    {
      __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1158_cold_1(v17 == 0, v26, (a1 + 32));
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    else if (!v13)
    {
      goto LABEL_14;
    }

    v13[2](v13, 0);
    goto LABEL_14;
  }

  v22 = objc_loadWeakRetained((a1 + 32));
  v23 = [v22 avPlayerViewController];
  v24 = [v23 presentingViewController];

  if (v24)
  {
    v25 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "Not presenting AVPlayerViewController since it is already being presented", v33, 2u);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1159;
    aBlock[3] = &unk_1E872D7E0;
    v39 = v13;
    v27 = _Block_copy(aBlock);
    v28 = [v17 presentedViewController];

    if (v28)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1160;
      v34[3] = &unk_1E87311D0;
      v35 = v17;
      objc_copyWeak(&v37, (a1 + 32));
      v36 = v27;
      [v35 dismissViewControllerAnimated:1 completion:v34];

      objc_destroyWeak(&v37);
      v29 = v35;
    }

    else
    {
      v29 = objc_loadWeakRetained((a1 + 32));
      v30 = [v29 avPlayerViewController];
      [v17 presentViewController:v30 animated:1 completion:v27];
    }
  }

  v14 = @"Showing video full screen";
LABEL_14:
  v31 = objc_loadWeakRetained((a1 + 32));
  [v31 _resetAutoPlayBingeWatchingQualifications];

  return v14;
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1159(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1160(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained avPlayerViewController];
  [v2 presentViewController:v3 animated:1 completion:*(a1 + 40)];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1161(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"CompletionKey"];
  v9 = [v7 currentState];

  v10 = +[VUITVAppLauncher sharedInstance];
  v11 = [v10 appController];

  v12 = [v11 navigationController];
  v13 = [v12 topViewController];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPresentingViewController:v13];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 setDismissalOperation:0];

  if (!v13 || (v16 = objc_loadWeakRetained((a1 + 32)), [v16 avPlayerViewController], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
  {
    v22 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
    {
      __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1161_cold_1(v13 == 0, v22, (a1 + 32));
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    else if (!v8)
    {
      goto LABEL_11;
    }

    v8[2](v8, 0);
    goto LABEL_11;
  }

  v18 = objc_loadWeakRetained((a1 + 32));
  v19 = [v18 avPlayerViewController];
  v20 = [v19 presentingViewController];

  if (v20)
  {
    v21 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Not presenting AVPlayerViewController since it is already being presented", v28, 2u);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1162;
    aBlock[3] = &unk_1E872D7E0;
    v30 = v8;
    v23 = _Block_copy(aBlock);
    v24 = objc_loadWeakRetained((a1 + 32));
    v25 = [v24 avPlayerViewController];
    [v13 presentViewController:v25 animated:1 completion:v23];
  }

  v9 = @"Showing extras video full screen outside extras content";
LABEL_11:
  v26 = objc_loadWeakRetained((a1 + 32));
  [v26 _resetAutoPlayBingeWatchingQualifications];

  return v9;
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1162(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1163(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = [v7 currentState];
  v10 = [v8 objectForKey:@"IsRestoringUserInterfaceDueToAirPlayStart"];

  v11 = [v10 BOOLValue];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = [WeakRetained activePlayer];
  v14 = [v13 externalPlaybackType];

  v15 = sLogObject_5;
  v16 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (v14 != 1 || (v11 & 1) != 0)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Stopping playback because picture in picture is ending without going back to fullscreen playback", buf, 2u);
    }

    v18 = objc_loadWeakRetained((a1 + 40));
    v19 = [v18 stateMachine];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1165;
    v21[3] = &unk_1E872D7E0;
    v17 = &v22;
    v22 = *(a1 + 32);
    [v19 executeBlockAfterCurrentStateTransition:v21];

    v9 = @"Not showing anything";
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "AirPlay was started while in PIP mode.  Restoring full screen user interface by manually posting PIP events", buf, 2u);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1164;
    v23[3] = &unk_1E872D768;
    v17 = &v24;
    v24 = v7;
    [v24 executeBlockAfterCurrentStateTransition:v23];
  }

  return v9;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1164(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v13 = @"IsRestoringUserInterfaceDueToAirPlayStart";
  v3 = MEMORY[0x1E695E118];
  v14[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v2 postEvent:@"Restore user interface for picture in picture stop" withContext:0 userInfo:v4];

  v5 = *(a1 + 32);
  v11 = @"IsRestoringUserInterfaceDueToAirPlayStart";
  v12 = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v5 postEvent:@"Will stop picture in picture" withContext:0 userInfo:v6];

  v7 = *(a1 + 32);
  v9 = @"IsRestoringUserInterfaceDueToAirPlayStart";
  v10 = v3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v7 postEvent:@"Did stop picture in picture" withContext:0 userInfo:v8];
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1166(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"IsRestoringUserInterfaceDueToAirPlayStart"];
  v9 = [v8 BOOLValue];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained activePlayer];
  v12 = [v11 externalPlaybackType];

  v13 = sLogObject_5;
  v14 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (v12 != 1 || (v9 & 1) != 0)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Stopping playback because picture in picture is ending without going back to fullscreen playback", buf, 2u);
    }

    v16 = objc_loadWeakRetained((a1 + 32));
    v17 = [v16 extrasPlayer];
    [v17 stop];

    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 setExtrasAVPlayerViewController:0];
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "AirPlay was started while in PIP mode.  Restoring full screen user interface by manually posting PIP events", buf, 2u);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1167;
    v20[3] = &unk_1E872D768;
    v21 = v7;
    [v21 executeBlockAfterCurrentStateTransition:v20];
    v15 = v21;
  }

  v18 = [v7 currentState];

  return v18;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1167(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v13 = @"IsRestoringUserInterfaceDueToAirPlayStart";
  v3 = MEMORY[0x1E695E118];
  v14[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v2 postEvent:@"Restore user interface for picture in picture stop" withContext:0 userInfo:v4];

  v5 = *(a1 + 32);
  v11 = @"IsRestoringUserInterfaceDueToAirPlayStart";
  v12 = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v5 postEvent:@"Will stop picture in picture" withContext:0 userInfo:v6];

  v7 = *(a1 + 32);
  v9 = @"IsRestoringUserInterfaceDueToAirPlayStart";
  v10 = v3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v7 postEvent:@"Did stop picture in picture" withContext:0 userInfo:v8];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1168(uint64_t a1, void *a2)
{
  v3 = [a2 currentState];
  v4 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Finished restoring to full screen from picture in picture, updating extras", v31, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained avPlayerViewController];
  v7 = [v6 view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 extrasContext];
  if ([v13 shouldExtrasBeVisibleForSize:{v9, v11}])
  {
    v14 = +[VUIGroupActivitiesManagerObjC isSessionActive]^ 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_loadWeakRetained((a1 + 40));
  [v15 _setExtrasButtonVisible:v14];

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 featureMonitor];
  v18 = [v17 featuresForType:2];
  v19 = [v18 firstObject];

  if (v19)
  {
    if ([v19 isActive])
    {
      v20 = objc_loadWeakRetained((a1 + 40));
      v21 = [v20 configuredPostPlay];

      if (v21)
      {
        v22 = objc_loadWeakRetained((a1 + 40));
        v23 = [v22 postPlayView];
        if (v23)
        {
        }

        else
        {
          v24 = objc_loadWeakRetained((a1 + 40));
          v25 = [v24 _isNewPostPlayEnabled];

          if (!v25)
          {
            goto LABEL_15;
          }
        }

        v26 = objc_loadWeakRetained((a1 + 40));
        v27 = [v26 avPlayerViewController];
        v28 = [v27 view];

        if (v28)
        {
          (*(*(a1 + 32) + 16))();

          v3 = @"Showing video full screen with post play content on screen";
        }
      }
    }
  }

LABEL_15:
  v29 = objc_loadWeakRetained((a1 + 40));
  [v29 _removeMoreInfoViewControllerIfNeeded];

  return v3;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1169(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = [a2 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = [WeakRetained activePlayer];

  if (v12 == v9)
  {
    v13 = [v8 objectForKey:*MEMORY[0x1E69D6098]];
    v14 = [MEMORY[0x1E69D5A40] stopped];

    if (v13 == v14)
    {
      v15 = objc_loadWeakRetained((a1 + 48));
      v16 = [v15 stateMachine];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1170;
      v18[3] = &unk_1E872D7E0;
      v19 = *(a1 + 32);
      [v16 executeBlockAfterCurrentStateTransition:v18];

      v10 = @"Not showing anything";
    }

    (*(*(a1 + 40) + 16))();
  }

  return v10;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1171(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:*MEMORY[0x1E69D6098]];
  v9 = [v7 currentState];
  v10 = [MEMORY[0x1E69D5A40] loading];
  v11 = v10;
  if (v8 == v10)
  {
  }

  else
  {
    v12 = [MEMORY[0x1E69D5A40] playing];

    if (v8 != v12)
    {
      goto LABEL_6;
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1172;
  v14[3] = &unk_1E872D7E0;
  v15 = *(a1 + 32);
  [v7 executeBlockAfterCurrentStateTransition:v14];

  v9 = @"Showing video full screen";
LABEL_6:

  return v9;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1173(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = [a5 objectForKey:*MEMORY[0x1E69D6098]];
  v8 = [v6 currentState];
  v9 = [MEMORY[0x1E69D5A40] stopped];

  if (v7 == v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1176;
    v11[3] = &unk_1E872D768;
    v12 = v6;
    [v12 executeBlockAfterCurrentStateTransition:v11];
  }

  return v8;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1177(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:*MEMORY[0x1E69D6098]];
  v12 = [v8 currentState];
  v13 = [v8 currentState];
  v14 = [v13 isEqualToString:@"Showing long loading dialog"];

  if (v14)
  {
    v15 = [v10 objectForKey:@"DidMainPlayerJustCompleteInitialLoadingKey"];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      v17 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Player just completed initial loading; dismissing long loading dialog", buf, 2u);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v19 = [WeakRetained longLoadingAlertController];
      v20 = [v19 presentingViewController];
      [v20 dismissViewControllerAnimated:1 completion:0];

      v21 = objc_loadWeakRetained((a1 + 64));
      [v21 setLongLoadingAlertController:0];

      v12 = @"Showing video full screen";
    }
  }

  v22 = [MEMORY[0x1E69D5A40] stopped];

  if (v11 == v22)
  {
    v33 = objc_loadWeakRetained((a1 + 64));
    v34 = [v33 mainPlayer];

    v35 = objc_loadWeakRetained((a1 + 64));
    v36 = v35;
    if (v34 == v9)
    {
      v23 = [v35 savedErrorContext];

      v38 = objc_loadWeakRetained((a1 + 64));
      v39 = [v38 savedErrorUserInfo];

      v40 = [v8 currentState];
      if ([v40 isEqualToString:@"Showing long loading dialog"])
      {

        if (v23 | v39)
        {
          v41 = sLogObject_5;
          if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v41, OS_LOG_TYPE_DEFAULT, "An error occurred while the long loading dialog is being presented.  Not dismissing player", buf, 2u);
          }

          goto LABEL_35;
        }
      }

      else
      {
      }

      if (!v10 || ([v10 objectForKeyedSubscript:*MEMORY[0x1E69D6088]], v42 = objc_claimAutoreleasedReturnValue(), v43 = *MEMORY[0x1E69D5EF0], v42, v42 != v43))
      {
        v44 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v44, OS_LOG_TYPE_DEFAULT, "Will dismiss AVPlayerViewController controller since playback has stopped", buf, 2u);
        }

        v45 = objc_loadWeakRetained((a1 + 64));
        v46 = [v45 stateMachine];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1178;
        v62[3] = &unk_1E872D7E0;
        v63 = *(a1 + 32);
        [v46 executeBlockAfterCurrentStateTransition:v62];

        v12 = @"Not showing anything";
      }

      goto LABEL_35;
    }

    v37 = [v35 extrasPlayer];

    if (v37 != v9)
    {
      goto LABEL_37;
    }

    (*(*(a1 + 40) + 16))();
    v12 = v23 = v12;
    goto LABEL_36;
  }

  v23 = [MEMORY[0x1E69D5A40] playing];
  if (v11 != v23)
  {
    goto LABEL_36;
  }

  v24 = objc_loadWeakRetained((a1 + 64));
  v25 = [v24 mainPlayer];

  if (v25 != v9)
  {
    goto LABEL_37;
  }

  v26 = objc_loadWeakRetained((a1 + 64));
  v27 = [v26 featureMonitor];
  v28 = [v27 featuresForType:2];
  v23 = [v28 firstObject];

  v29 = objc_loadWeakRetained((a1 + 64));
  if (![v29 configuredPostPlay] || !v23 || !objc_msgSend(v23, "isActive"))
  {
    goto LABEL_31;
  }

  v30 = [v8 currentState];

  if (v30 != @"Showing video full screen with post play content on screen")
  {
    v31 = objc_loadWeakRetained((a1 + 64));
    v32 = [v31 postPlayView];
    if (v32)
    {

      goto LABEL_29;
    }

    v47 = objc_loadWeakRetained((a1 + 64));
    v48 = [v47 _isNewPostPlayEnabled];

    if (v48)
    {
LABEL_29:
      v49 = objc_loadWeakRetained((a1 + 64));
      v50 = [v49 avPlayerViewController];
      v29 = [v50 view];

      if (v29)
      {
        (*(*(a1 + 48) + 16))();

        v12 = @"Showing video full screen with post play content on screen";
      }

LABEL_31:
    }
  }

  v51 = objc_loadWeakRetained((a1 + 64));
  v52 = [v51 mainPlayer];
  v53 = [v52 currentMediaItem];
  [v51 _showShareMediaMenuForMediaItem:v53];

  v39 = objc_loadWeakRetained((a1 + 64));
  if (![v39 _shouldShowPerformanceDebugger])
  {
LABEL_35:

    goto LABEL_36;
  }

  v54 = objc_loadWeakRetained((a1 + 64));
  v55 = [v54 hasPerformanceDebuggerAppeared];

  if ((v55 & 1) == 0)
  {
    v61 = objc_loadWeakRetained((a1 + 64));
    v56 = [v61 mainPlayer];
    v57 = [v56 currentMediaItem];
    v39 = [v57 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];

    v58 = objc_loadWeakRetained((a1 + 64));
    [v58 _setupPerformanceDebugger:v39];

    v59 = objc_loadWeakRetained((a1 + 64));
    [v59 setHasPerformanceDebuggerAppeared:1];

    goto LABEL_35;
  }

LABEL_36:

LABEL_37:
  (*(*(a1 + 56) + 16))();

  return v12;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1182(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained activePlayer];

  if (v14 != v11)
  {
    goto LABEL_4;
  }

  v15 = [v12 objectForKey:*MEMORY[0x1E69D6098]];
  v16 = [MEMORY[0x1E69D5A40] stopped];

  if (v15 != v16)
  {

LABEL_4:
    v17 = [v9 currentState];
    goto LABEL_5;
  }

  v19 = objc_loadWeakRetained((a1 + 32));
  v20 = [v19 mainAVPlayerViewController];
  [v19 setAvPlayerViewController:v20];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1183;
  v21[3] = &unk_1E872E4B8;
  objc_copyWeak(&v22, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v21];
  objc_destroyWeak(&v22);

  v17 = @"Showing Extras content";
LABEL_5:

  return v17;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1183(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained backgroundAudioPlayer];
  [v1 play];
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1190(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = [WeakRetained activePlayer];

  if (v12 == v10)
  {
    v13 = [v9 objectForKey:*MEMORY[0x1E69D6098]];
    v14 = [MEMORY[0x1E69D5A40] stopped];

    if (v13 == v14)
    {
      v15 = objc_loadWeakRetained((a1 + 48));
      v16 = [v15 stateMachine];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1191;
      v19[3] = &unk_1E872D7E0;
      v20 = *(a1 + 32);
      [v16 executeBlockAfterCurrentStateTransition:v19];
    }

    (*(*(a1 + 40) + 16))();
  }

  v17 = [v8 currentState];

  return v17;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1192(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = [a5 objectForKey:*MEMORY[0x1E69D6098]];
  v11 = v9;
  v12 = [MEMORY[0x1E69D5A40] stopped];
  v13 = v12;
  if (v10 == v12)
  {
    v14 = [MEMORY[0x1E69DC668] sharedApplication];
    v15 = [v14 applicationState];

    if (v15 != 2)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v19 = [WeakRetained _multiviewInfoForPlayer:v11];

      v28 = [v19 playerViewController];

      if (v28)
      {
        v29 = objc_loadWeakRetained((a1 + 40));
        v30 = [v29 multiPlayerViewController];
        v31 = [v19 playerViewController];
        [v30 removePlayerViewController:v31 animated:1 completion:0];
      }

      v32 = [v19 player];
      [v32 invalidate];

      (*(*(a1 + 32) + 16))();
      v33 = objc_loadWeakRetained((a1 + 40));
      v34 = [v33 multiviewPlaybackInfo];
      [v34 removeObject:v19];

      v35 = [v19 player];

      if (v35)
      {
        v36 = [v19 player];
        [VUIPlaybackEndManagerObjC remove:v36];
      }

      v25 = objc_loadWeakRetained((a1 + 40));
      [v25 _updateMultiviewReportingMetrics];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v16 = [MEMORY[0x1E69D5A40] playing];

  if (v10 != v16)
  {
    v17 = [MEMORY[0x1E69D5A40] paused];

    if (v10 != v17)
    {
      goto LABEL_18;
    }

    v18 = objc_loadWeakRetained((a1 + 40));
    v19 = [v18 _multiviewInfoForPlayer:v11];

    if ([v19 pausedDueToInterruption])
    {
      v20 = [v19 player];
      v21 = [v20 externalPlaybackType];

      if (v21)
      {
        [v11 play];
        [v19 setPausedDueToInterruption:0];
      }
    }

    goto LABEL_17;
  }

  v22 = objc_loadWeakRetained((a1 + 40));
  [v22 _updateMultiviewReportingMetrics];

  v23 = objc_loadWeakRetained((a1 + 40));
  v24 = [v23 mainPlayer];

  if (v24 != v11)
  {
    goto LABEL_18;
  }

  v19 = objc_loadWeakRetained((a1 + 40));
  v25 = [v19 mainPlayer];
  v26 = [v25 currentMediaItem];
  [v19 _showShareMediaMenuForMediaItem:v26];

LABEL_16:
LABEL_17:

LABEL_18:
  v37 = [v8 currentState];

  return v37;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10_1193(uint64_t a1, void *a2)
{
  v3 = [a2 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained avPlayerViewController];
  v6 = [v5 view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [v11 extrasContext];
  LODWORD(v6) = [v12 shouldExtrasBeVisibleForSize:{v8, v10}];

  if (v6)
  {
    (*(*(a1 + 32) + 16))();

    v3 = @"Showing Extras content";
  }

  else
  {
    v13 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Not showing Extras because they cannot be displayed for the current view size", v15, 2u);
    }
  }

  return v3;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1194(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained stateMachine];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1195;
  v21 = &unk_1E87301C0;
  v15 = v12;
  v22 = v15;
  objc_copyWeak(&v23, (a1 + 32));
  [v14 executeBlockAfterCurrentStateTransition:&v18];

  v16 = [v9 currentState];
  objc_destroyWeak(&v23);

  return v16;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1195(uint64_t a1)
{
  v11 = [*(a1 + 32) objectForKey:@"MenuItemElementKey"];
  v2 = [*(a1 + 32) objectForKey:@"MenuItemIndexKey"];
  v3 = [v2 unsignedIntegerValue];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained extrasContext];
  v6 = [v5 selectedMainMenuIndex];

  if (v3 != v6)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 extrasContext];
    [v8 setClearsStackOnNextPush];

    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 extrasContext];
    [v10 setSelectedMainMenuIndex:v3];

    [v11 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1196(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [a5 objectForKey:@"ExtrasShouldBeVisibleKey"];
  v9 = [v8 BOOLValue];

  v10 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v9)
    {
      v11 = @"YES";
    }

    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Extras should be visible?  %@", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setExtrasButtonVisible:v9];

  v13 = [v7 currentState];

  return v13;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1197(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [a5 objectForKey:@"ExtrasShouldBeVisibleKey"];
  v9 = [v8 BOOLValue];

  v10 = [v7 currentState];

  v11 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (v9)
    {
      v12 = @"YES";
    }

    v24 = 138412290;
    v25 = v12;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Extras should be visible?  %@", &v24, 0xCu);
  }

  v13 = [MEMORY[0x1E69DC668] sharedApplication];
  v14 = [v13 applicationState];

  if (v14 == 2)
  {
    v15 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring Extras visibility update since app is backgrounded.", &v24, 2u);
    }
  }

  else if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v17 = [WeakRetained backgroundAudioPlayer];
    v18 = [v17 state];
    v19 = [MEMORY[0x1E69D5A40] paused];

    if (v18 == v19)
    {
      v20 = objc_loadWeakRetained((a1 + 40));
      v21 = [v20 backgroundAudioPlayer];
      [v21 play];
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
    v22 = objc_loadWeakRetained((a1 + 40));
    [v22 _setExtrasButtonVisible:0];

    v10 = @"Showing video full screen";
  }

  return v10;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1198(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [a5 objectForKey:@"ExtrasShouldBeVisibleKey"];
  v9 = [v8 BOOLValue];

  v10 = [v7 currentState];
  v11 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (v9)
    {
      v12 = @"YES";
    }

    v18 = 138412290;
    v19 = v12;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Extras should be visible?  %@", &v18, 0xCu);
  }

  v13 = [MEMORY[0x1E69DC668] sharedApplication];
  v14 = [v13 applicationState];

  if (v14 == 2)
  {
    v15 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring Extras visibility update since app is backgrounded.", &v18, 2u);
    }
  }

  else if ((v9 & 1) == 0)
  {
    if ((*(*(a1 + 32) + 16))())
    {

      v10 = @"Showing extras video picture in picture outside extras content";
    }

    else
    {
      v16 = [v7 currentState];

      v10 = v16;
    }
  }

  return v10;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1199(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained stateMachine];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1200;
  v17[3] = &unk_1E872E4B8;
  objc_copyWeak(&v18, (a1 + 32));
  [v14 executeBlockAfterCurrentStateTransition:v17];

  v15 = [v9 currentState];
  objc_destroyWeak(&v18);

  return v15;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1200(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExtrasControlItem:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _mainPlayerViewControllerSetupControlItems];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setExtrasContext:0];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1201(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained stateMachine];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1202;
  v16[3] = &unk_1E872E4B8;
  objc_copyWeak(&v17, (a1 + 40));
  [v14 executeBlockAfterCurrentStateTransition:v16];

  objc_destroyWeak(&v17);
  return @"Showing video full screen";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1202(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExtrasControlItem:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _mainPlayerViewControllerSetupControlItems];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setExtrasContext:0];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1204(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained extrasPlayer];

  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 setExtrasPlayer:0];

  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 setExtrasAVPlayerViewController:0];

  (*(*(a1 + 40) + 16))();
  return @"Showing video full screen";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1205(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKey:@"IsBackgroundPlaybackKey"];
  v14 = [v13 BOOLValue];

  v15 = [v12 objectForKey:@"PlaylistKey"];
  v16 = [v9 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v18 = WeakRetained;
  if (v14)
  {
    v19 = [WeakRetained backgroundAudioPlayer];

    if (!v19)
    {
      v19 = [[VUIPlayer alloc] initWithName:@"Background audio player"];
      [(VUIPlayer *)v19 setReportingValueWithString:@"background" forKey:@"initiator"];
      v20 = objc_loadWeakRetained((a1 + 48));
      [v20 setBackgroundAudioPlayer:v19];
    }

    [(VUIPlayer *)v19 setAllowsExternalPlayback:0];
    v21 = objc_loadWeakRetained((a1 + 48));
    v22 = [v21 mainPlayer];
    -[VUIPlayer setAllowsCellularUsage:](v19, "setAllowsCellularUsage:", [v22 allowsCellularUsage]);

    [v15 setRepeatMode:1];
    v23 = [(VUIPlayer *)v19 playlist];
    LOBYTE(v22) = [v15 isEqualToPlaylist:v23];

    if ((v22 & 1) == 0)
    {
      [(VUIPlayer *)v19 setPlaylist:v15];
    }

    [(VUIPlayer *)v19 play];
  }

  else
  {
    v41 = v10;
    v24 = [WeakRetained activePlayer];
    [v24 stop];

    v25 = objc_loadWeakRetained((a1 + 48));
    v26 = [v25 backgroundAudioPlayer];
    [v26 stop];

    v27 = objc_loadWeakRetained((a1 + 48));
    v28 = [v27 extrasPlayer];

    if (!v28)
    {
      v28 = [[VUIPlayer alloc] initWithName:@"Extras player"];
      (*(*(a1 + 32) + 16))();
      [(VUIPlayer *)v28 setErrorBehavior:2];
      [(VUIPlayer *)v28 setReportingValueWithString:@"fullscreen" forKey:@"initiator"];
      v29 = objc_loadWeakRetained((a1 + 48));
      [v29 setExtrasPlayer:v28];
    }

    v40 = v11;
    v30 = objc_loadWeakRetained((a1 + 48));
    v31 = [v30 mainPlayer];
    -[VUIPlayer setAllowsCellularUsage:](v28, "setAllowsCellularUsage:", [v31 allowsCellularUsage]);

    [(VUIPlayer *)v28 setPlaylist:v15];
    v32 = [v12 objectForKey:@"PresentingViewControllerKey"];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v35 = objc_loadWeakRetained((a1 + 48));
      v36 = [v35 extrasContext];
      v34 = [v36 extrasRootViewController];
    }

    (*(*(a1 + 40) + 16))();
    v37 = objc_loadWeakRetained((a1 + 48));
    v38 = [v37 stateMachine];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1212;
    v42[3] = &unk_1E872E4B8;
    objc_copyWeak(&v43, (a1 + 48));
    [v38 executeBlockAfterCurrentStateTransition:v42];

    objc_destroyWeak(&v43);
    v16 = @"Waiting for Extras AVPlayerViewController presentation to complete";
    v11 = v40;
    v10 = v41;
  }

  return v16;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1212(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained extrasPlayer];
  v4 = [v3 currentMediaItem];
  v5 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v5 addEndEventWithName:*MEMORY[0x1E69D6058]];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 extrasPlayer];
  [v6 setActivePlayer:v7];

  v9 = objc_loadWeakRetained((a1 + 32));
  v8 = [v9 extrasPlayer];
  [v8 play];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1213(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKey:@"IsBackgroundPlaybackKey"];
  v14 = [v13 BOOLValue];

  v15 = [v9 currentState];
  if ((v14 & 1) == 0)
  {
    v41 = v10;
    v16 = [v12 objectForKey:@"PlaylistKey"];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v18 = [WeakRetained extrasPlayer];
    v19 = [v18 playlist];
    v43 = [v19 currentMediaItem];

    v42 = [v16 currentMediaItem];
    v20 = objc_loadWeakRetained((a1 + 40));
    v21 = [v20 extrasPlayer];
    v22 = [v21 playlist];
    v23 = [v16 isEqualToPlaylist:v22];

    if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v24 = v42, [v43 clipTimeRange], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "clipTimeRange"), v26 = objc_claimAutoreleasedReturnValue(), v24, LODWORD(v24) = objc_msgSend(v25, "isEqual:", v26), v26, v25, !v24))
    {
      v40 = v11;
      v30 = objc_loadWeakRetained((a1 + 40));
      v31 = [v30 backgroundAudioPlayer];
      [v31 stop];

      v32 = objc_loadWeakRetained((a1 + 40));
      v28 = [v32 extrasPlayer];

      [v28 stop];
      [v28 setPlaylist:v16];
      v33 = [v12 objectForKey:@"PresentingViewControllerKey"];
      v34 = v33;
      if (v33)
      {
        v29 = v33;
      }

      else
      {
        v35 = objc_loadWeakRetained((a1 + 40));
        v36 = [v35 extrasContext];
        v29 = [v36 extrasRootViewController];
      }

      (*(*(a1 + 32) + 16))();
      v37 = objc_loadWeakRetained((a1 + 40));
      v38 = [v37 stateMachine];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1215;
      v44[3] = &unk_1E872E4B8;
      objc_copyWeak(&v45, (a1 + 40));
      [v38 executeBlockAfterCurrentStateTransition:v44];

      objc_destroyWeak(&v45);
      v15 = @"Waiting for Extras AVPlayerViewController presentation to complete";
      v11 = v40;
      v10 = v41;
    }

    else
    {
      v27 = sLogObject_5;
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "Content is already being played in PIP.  Calling stopPictureInPicture to restore to fullscreen", buf, 2u);
      }

      v28 = objc_loadWeakRetained((a1 + 40));
      v29 = [v28 extrasAVPlayerViewController];
      [v29 stopPictureInPicture];
      v10 = v41;
    }
  }

  return v15;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1215(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained extrasPlayer];
  v4 = [v3 currentMediaItem];
  v5 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v5 addEndEventWithName:*MEMORY[0x1E69D6058]];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 extrasPlayer];
  [v6 setActivePlayer:v7];

  v9 = objc_loadWeakRetained((a1 + 32));
  v8 = [v9 extrasPlayer];
  [v8 play];
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1216(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = a4;
  v11 = [v8 currentState];
  v12 = [v11 isEqualToString:@"Showing long loading dialog"];

  v13 = sLogObject_5;
  v14 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v30 = 0;
      v15 = "Error occurred while long loading dialog is being presented.  Will present error dialog when dialog is dismissed";
      v16 = &v30;
LABEL_6:
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
    }
  }

  else if (v14)
  {
    LOWORD(v29) = 0;
    v15 = "Error occurred while view controller is being presented.  Will present error dialog when presentation completes";
    v16 = &v29;
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSavedErrorContext:v10];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 setSavedErrorUserInfo:v9];

  v19 = [v9 objectForKey:*MEMORY[0x1E69D60B8]];

  v20 = [v19 BOOLValue];
  v21 = objc_loadWeakRetained((a1 + 32));
  v22 = [v21 activePlayer];

  if (v22 == v10 && v20)
  {
    v23 = objc_loadWeakRetained((a1 + 32));
    v24 = [v23 activePlayer];
    v25 = [v24 currentMediaItem];
    v26 = [v25 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v26 addSingleShotEventWithName:*MEMORY[0x1E69D6020] value:*MEMORY[0x1E69D6068]];
  }

  v27 = [v8 currentState];

  return v27;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1217(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKey:*MEMORY[0x1E69D60B8]];
  v14 = [v13 BOOLValue];

  v15 = [v9 currentState];
  v16 = [v9 currentState];
  v17 = [v16 isEqualToString:@"Showing video full screen with post play content on screen"];

  if (v17)
  {
    (*(*(a1 + 32) + 16))();
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v19 = [WeakRetained featureMonitor];
    [v19 removeFeaturesMatching:&unk_1F5E5E880];

    v15 = @"Showing video full screen";
  }

  v20 = objc_loadWeakRetained((a1 + 40));
  v21 = [v20 activePlayer];
  v22 = (v21 == v11) & v14;

  if (v22 == 1)
  {
    v36 = v10;
    v23 = [v12 objectForKey:*MEMORY[0x1E69D5F30]];
    v24 = objc_loadWeakRetained((a1 + 40));
    v25 = [v24 activePlayer];
    v26 = [v25 currentMediaItem];
    v27 = [v26 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v27 addSingleShotEventWithName:*MEMORY[0x1E69D6020] value:*MEMORY[0x1E69D6068]];

    v28 = [v9 currentState];
    v29 = [v28 isEqualToString:@"Showing main video picture in picture"];
    v30 = @"Showing error message on playback UI";
    if (v29)
    {
      v30 = @"Showing error message without playback UI";
    }

    v31 = v30;

    v32 = objc_loadWeakRetained((a1 + 40));
    v33 = [v32 stateMachine];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1221;
    v37[3] = &unk_1E8730198;
    v34 = v23;
    v38 = v34;
    objc_copyWeak(&v40, (a1 + 40));
    v15 = v31;
    v39 = v15;
    [v33 executeBlockAfterCurrentStateTransition:v37];

    objc_destroyWeak(&v40);
    v10 = v36;
  }

  return v15;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1221(id *a1)
{
  v2 = MEMORY[0x1E69DC648];
  v3 = +[VUILocalizationManager sharedInstance];
  v4 = [v3 localizedStringForKey:@"OK"];
  v136[0] = MEMORY[0x1E69E9820];
  v136[1] = 3221225472;
  v136[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1222;
  v136[3] = &unk_1E87315D0;
  v137 = a1[4];
  objc_copyWeak(v138, a1 + 6);
  v5 = [v2 actionWithTitle:v4 style:0 handler:v136];

  v6 = [a1[4] domain];
  LODWORD(v4) = [v6 isEqualToString:@"TVPlaybackErrorDomain"];

  v7 = a1[4];
  if (v4)
  {
    v8 = [v7 userInfo];
    v9 = [v8 objectForKey:*MEMORY[0x1E696A578]];

    v10 = [a1[4] userInfo];
    v11 = [v10 objectForKey:*MEMORY[0x1E696A598]];

    if ([a1[4] code] == 825)
    {
      v12 = +[VUILocalizationManager sharedInstance];
      v105 = [v12 localizedStringForKey:@"CANNOT_STREAM_VIDEO_ALERT_TITLE"];

      v13 = +[VUILocalizationManager sharedInstance];
      v14 = [v13 localizedStringForKey:@"CANNOT_STREAM_VIDEO_ALERT_MESSAGE"];

      v15 = MEMORY[0x1E69DC648];
      v16 = +[VUILocalizationManager sharedInstance];
      v17 = [v16 localizedStringForKey:@"CANNOT_STREAM_VIDEO_ALERT_ACTION_CLOSE"];
      v134[0] = MEMORY[0x1E69E9820];
      v134[1] = 3221225472;
      v134[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1233;
      v134[3] = &unk_1E872EF28;
      objc_copyWeak(&v135, a1 + 6);
      v18 = [v15 actionWithTitle:v17 style:0 handler:v134];

      v19 = MEMORY[0x1E69DC648];
      v20 = +[VUILocalizationManager sharedInstance];
      v21 = [v20 localizedStringForKey:@"CANNOT_STREAM_VIDEO_ALERT_ACTION_SETTINGS"];
      v132[0] = MEMORY[0x1E69E9820];
      v132[1] = 3221225472;
      v132[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1237;
      v132[3] = &unk_1E872EF28;
      objc_copyWeak(&v133, a1 + 6);
      v22 = [v19 actionWithTitle:v21 style:0 handler:v132];

      objc_destroyWeak(&v133);
      objc_destroyWeak(&v135);
      v23 = 0;
      v24 = 0;
      v5 = v18;
      v9 = v105;
LABEL_18:
      v39 = v14;
      goto LABEL_36;
    }

    if ([a1[4] code] != 824)
    {
      if ([a1[4] code] == 827)
      {
        v52 = +[VUILocalizationManager sharedInstance];
        v53 = [v52 localizedStringForKey:@"AIRPLAY_CANNOT_STREAM_THIS_VIDEO_FORMAT_TO_DEVICE_MESSAGE"];
      }

      else
      {
        if ([a1[4] code] == 826)
        {
          v54 = +[VUILocalizationManager sharedInstance];
          v55 = [v54 localizedStringForKey:@"DIGITAL_ADAPTER_COMPATIBILITY_WARNING_TITLE"];

          v56 = +[VUILocalizationManager sharedInstance];
          v107 = [v56 localizedStringForKey:@"DIGITAL_ADAPTER_COMPATIBILITY_WARNING_BODY"];

          v57 = MEMORY[0x1E69DC648];
          v58 = +[VUILocalizationManager sharedInstance];
          v59 = [v58 localizedStringForKey:@"DIGITAL_ADAPTER_COMPATIBILITY_WARNING_ACTION_DOWNLOAD"];
          v124[0] = MEMORY[0x1E69E9820];
          v124[1] = 3221225472;
          v124[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1296;
          v124[3] = &unk_1E872EF28;
          objc_copyWeak(&v125, a1 + 6);
          v60 = [v57 actionWithTitle:v59 style:0 handler:v124];

          v61 = MEMORY[0x1E69DC648];
          v62 = +[VUILocalizationManager sharedInstance];
          v63 = [v62 localizedStringForKey:@"DIGITAL_ADAPTER_COMPATIBILITY_WARNING_ACTION_STREAM"];
          v122[0] = MEMORY[0x1E69E9820];
          v122[1] = 3221225472;
          v122[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10_1300;
          v122[3] = &unk_1E872EF28;
          objc_copyWeak(&v123, a1 + 6);
          v22 = [v61 actionWithTitle:v63 style:0 handler:v122];

          v64 = MEMORY[0x1E69DC648];
          v65 = +[VUILocalizationManager sharedInstance];
          v66 = [v65 localizedStringForKey:@"DIGITAL_ADAPTER_COMPATIBILITY_WARNING_ACTION_CANCEL"];
          v120[0] = MEMORY[0x1E69E9820];
          v120[1] = 3221225472;
          v120[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_11_1304;
          v120[3] = &unk_1E872EF28;
          objc_copyWeak(&v121, a1 + 6);
          v24 = [v64 actionWithTitle:v66 style:0 handler:v120];

          v23 = v60;
          objc_destroyWeak(&v121);
          objc_destroyWeak(&v123);
          objc_destroyWeak(&v125);
          v5 = v23;
          v9 = v55;
          v39 = v107;
          goto LABEL_36;
        }

        if ([a1[4] code] == 808)
        {
          WeakRetained = objc_loadWeakRetained(a1 + 6);
          v71 = [WeakRetained activePlayer];
          v72 = [v71 currentMediaItem];
          v47 = [v72 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];

          v73 = [v47 isEqualToString:*MEMORY[0x1E69D5ED0]];
          if (MGGetBoolAnswer())
          {
            v74 = +[VUILocalizationManager sharedInstance];
            v50 = [v74 localizedStringForKey:@"CONNECT_TO_WLAN_TO_WATCH_ERROR_TITLE"];

            v51 = +[VUILocalizationManager sharedInstance];
            if (v73)
            {
              goto LABEL_14;
            }

            goto LABEL_52;
          }

          v97 = +[VUILocalizationManager sharedInstance];
          v50 = [v97 localizedStringForKey:@"CONNECT_TO_WIFI_TO_WATCH_ERROR_TITLE"];

          v51 = +[VUILocalizationManager sharedInstance];
          if (v73)
          {
LABEL_48:
            [v51 localizedStringForKey:@"CONNECT_TO_WIFI_TO_PLAYBACK_ERROR_MESSAGE_EPISODE"];
            goto LABEL_49;
          }

LABEL_53:
          [v51 localizedStringForKey:@"CONNECT_TO_WIFI_TO_PLAYBACK_ERROR_MESSAGE_MOVIE"];
          goto LABEL_49;
        }

        if ([a1[4] code] == 811)
        {
          v52 = +[VUILocalizationManager sharedInstance];
          v53 = [v52 localizedStringForKey:@"ContentNotAuthorizedErrorDescription"];
        }

        else if ([a1[4] code] == 835)
        {
          v52 = +[VUILocalizationManager sharedInstance];
          v53 = [v52 localizedStringForKey:@"SCREEN_BEING_RECORDED_ERROR_MESSAGE_BODY"];
        }

        else if ([a1[4] code] == 830)
        {
          v52 = +[VUILocalizationManager sharedInstance];
          v53 = [v52 localizedStringForKey:@"AIRPLAY_HLS_RENTAL_ERROR_MESSAGE_BODY"];
        }

        else if ([a1[4] code] == 831)
        {
          v52 = +[VUILocalizationManager sharedInstance];
          v53 = [v52 localizedStringForKey:@"AIRPLAY_RENTAL_DOWNLOAD_BEFORE_USE_MESSAGE"];
        }

        else
        {
          if ([a1[4] code] != 832)
          {
            if ([a1[4] code] != 807)
            {
              v23 = 0;
              v24 = 0;
              v22 = 0;
              v39 = v11;
              goto LABEL_36;
            }

            v99 = +[VUILocalizationManager sharedInstance];
            v100 = [v99 localizedStringForKey:@"HDCP_PROTECTION_ERROR_TITLE"];

            v101 = +[VUILocalizationManager sharedInstance];
            v14 = [v101 localizedStringForKey:@"HDCP_PROTECTION_ERROR_BODY"];

            v23 = 0;
            v24 = 0;
            v22 = 0;
            v9 = v100;
            goto LABEL_18;
          }

          v52 = +[VUILocalizationManager sharedInstance];
          v53 = [v52 localizedStringForKey:@"AIRPLAY_RENTAL_WAIT_FOR_DOWNLOAD_BEFORE_USE_MESSAGE"];
        }
      }

      v14 = v53;

      v23 = 0;
      v24 = 0;
      v22 = 0;
      goto LABEL_18;
    }

    v40 = MGGetBoolAnswer();
    v41 = [a1[4] userInfo];
    v42 = [v41 objectForKey:@"TVPlaybackCellularPlaybackProhibitedErrorReasonKey"];
    v43 = [v42 integerValue];

    if (v43 == 1)
    {
      v44 = objc_loadWeakRetained(a1 + 6);
      v45 = [v44 activePlayer];
      v46 = [v45 currentMediaItem];
      v47 = [v46 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];

      v48 = [v47 isEqualToString:*MEMORY[0x1E69D5ED0]];
      if (v40)
      {
        v49 = +[VUILocalizationManager sharedInstance];
        v50 = [v49 localizedStringForKey:@"CANT_PLAYBACK_OVER_WLAN_ERROR_TITLE"];

        v51 = +[VUILocalizationManager sharedInstance];
        if (v48)
        {
LABEL_14:
          [v51 localizedStringForKey:@"CONNECT_TO_WLAN_TO_PLAYBACK_ERROR_MESSAGE_EPISODE"];
          v98 = LABEL_49:;
          v39 = v98;

          v23 = 0;
          v24 = 0;
          v22 = 0;
          v9 = v50;
          goto LABEL_36;
        }

LABEL_52:
        [v51 localizedStringForKey:@"CONNECT_TO_WLAN_TO_PLAYBACK_ERROR_MESSAGE_MOVIE"];
        goto LABEL_49;
      }

      v84 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
      v50 = [v84 localizedStringForKey:@"CANT_PLAYBACK_OVER_CELLULAR_NETWORK_ERROR_TITLE" value:0 table:@"VideosUIEmbedded"];

      v51 = +[VUILocalizationManager sharedInstance];
      if (v48)
      {
        goto LABEL_48;
      }

      goto LABEL_53;
    }

    v67 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v68 = [v67 localizedStringForKey:@"ASK_TO_ENABLE_CELLULAR_DATA_TO_STREAM_TITLE" value:0 table:@"VideosUIEmbedded"];

    [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    if (v40)
      v69 = {;
      [v69 localizedStringForKey:@"ASK_TO_ENABLE_CELLULAR_DATA_TO_STREAM_MESSAGE_WLAN" value:0 table:@"VideosUIEmbedded"];
    }

    else
      v69 = {;
      [v69 localizedStringForKey:@"ASK_TO_ENABLE_CELLULAR_DATA_TO_STREAM_MESSAGE_WIFI" value:0 table:@"VideosUIEmbedded"];
    }
    v106 = ;

    v75 = MEMORY[0x1E69DC648];
    v76 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v77 = [v76 localizedStringForKey:@"ENABLE_CELLULAR_DATA_TO_STREAM_BUTTON_TITLE" value:0 table:@"VideosUIEmbedded"];
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1275;
    v130[3] = &unk_1E872EF28;
    objc_copyWeak(&v131, a1 + 6);
    v103 = [v75 actionWithTitle:v77 style:0 handler:v130];
    v102 = v68;

    v78 = MEMORY[0x1E69DC648];
    v79 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v80 = [v79 localizedStringForKey:@"USE_CELLULAR_DATA_TO_STREAM_ONCE_BUTTON_TITLE" value:0 table:@"VideosUIEmbedded"];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1279;
    v128[3] = &unk_1E872EF28;
    objc_copyWeak(&v129, a1 + 6);
    v22 = [v78 actionWithTitle:v80 style:0 handler:v128];

    v81 = MEMORY[0x1E69DC648];
    v82 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v83 = [v82 localizedStringForKey:@"DONT_ENABLE_CELLULAR_DATA_TO_STREAM_BUTTON_TITLE" value:0 table:@"VideosUIEmbedded"];
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1283;
    v126[3] = &unk_1E872EF28;
    objc_copyWeak(&v127, a1 + 6);
    v24 = [v81 actionWithTitle:v83 style:0 handler:v126];

    v23 = v103;
    objc_destroyWeak(&v127);
    objc_destroyWeak(&v129);
    objc_destroyWeak(&v131);
    v5 = v23;
    v9 = v68;
LABEL_29:
    v39 = v106;
    goto LABEL_36;
  }

  v25 = [v7 domain];
  if ([v25 isEqualToString:@"CoreMediaErrorDomain"])
  {
    v26 = [a1[4] code];

    if (v26 == -42803)
    {
      v27 = objc_loadWeakRetained(a1 + 6);
      v28 = [v27 activePlayer];
      v29 = [v28 currentMediaItem];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v31 = +[VUILocalizationManager sharedInstance];
        v106 = [v31 localizedStringForKey:@"DOWNLOAD_PROBLEM_MESSAGE_DOWNLOAD_AGAIN_TO_FIX"];

        v32 = MEMORY[0x1E69DC648];
        v33 = +[VUILocalizationManager sharedInstance];
        v34 = [v33 localizedStringForKey:@"DOWNLOAD_AGAIN"];
        v118[0] = MEMORY[0x1E69E9820];
        v118[1] = 3221225472;
        v118[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_12_1342;
        v118[3] = &unk_1E872EF28;
        objc_copyWeak(&v119, a1 + 6);
        v35 = [v32 actionWithTitle:v34 style:0 handler:v118];

        v36 = MEMORY[0x1E69DC648];
        v37 = +[VUILocalizationManager sharedInstance];
        v38 = [v37 localizedStringForKey:@"DONT_DOWNLOAD_AGAIN"];
        v116[0] = MEMORY[0x1E69E9820];
        v116[1] = 3221225472;
        v116[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_13_1346;
        v116[3] = &unk_1E872EF28;
        objc_copyWeak(&v117, a1 + 6);
        v22 = [v36 actionWithTitle:v38 style:0 handler:v116];

        objc_destroyWeak(&v117);
        objc_destroyWeak(&v119);
        v23 = 0;
        v24 = 0;
        v9 = 0;
        v5 = v35;
        goto LABEL_29;
      }
    }
  }

  else
  {
  }

  v23 = 0;
  v24 = 0;
  v22 = 0;
  v39 = 0;
  v9 = 0;
LABEL_36:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_14_1347;
  aBlock[3] = &unk_1E87315F8;
  v85 = v5;
  v110 = v85;
  v86 = v22;
  v111 = v86;
  v87 = v24;
  v112 = v87;
  v88 = v23;
  v113 = v88;
  objc_copyWeak(&v115, a1 + 6);
  v114 = a1[5];
  v89 = _Block_copy(aBlock);
  if ([v9 length] || objc_msgSend(v39, "length"))
  {
    v89[2](v89, v9, v39);
  }

  else
  {
    v108 = v39;
    v90 = objc_loadWeakRetained(a1 + 6);
    v104 = [v90 activePlayer];

    if (v104 && ([v104 currentMediaItem], v91 = objc_claimAutoreleasedReturnValue(), v91, v91))
    {
      v92 = @"Monoscopic";
      v93 = +[VUIPlaybackErrorMessage sharedInstance];
      v94 = [v104 currentMediaItem];
      v95 = a1[4];
      v96 = v94;
      [v93 getLocalizedErrorMessageFor:v94 withPlaybackMode:v92 withError:v95 completion:v89];
    }

    else
    {
      v92 = +[VUILocalizationManager sharedInstance];
      v93 = [(__CFString *)v92 localizedStringForKey:@"AV_PLAYBACK_ERROR"];
      v89[2](v89, v9, v93);
    }

    v39 = v108;
  }

  objc_destroyWeak(&v115);
  objc_destroyWeak(v138);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1222(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) domain];
  if (([v2 isEqualToString:@"TVPlaybackErrorDomain"] & 1) == 0)
  {

    goto LABEL_5;
  }

  v3 = [*(a1 + 32) code];

  if (v3 != 813)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v7 = @"PerformAuthAfterDismissingErrorKey";
  v8[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
LABEL_6:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained stateMachine];
  [v6 postEvent:@"Error alert dismissed" withContext:0 userInfo:v4];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1233(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Error alert dismissed"];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1237(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Error alert dismissed"];

  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=USAGE"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1275(uint64_t a1)
{
  v2 = +[VUIPlaybackSettings sharedSettings];
  [v2 setCellularDataPlaybackEnabled:1];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained stateMachine];
  [v3 postEvent:@"Play using cellular data button pressed"];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1279(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Play using cellular data button pressed"];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1283(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Error alert dismissed"];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1296(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"PreferAVAdapterCompatibilityKey";
  v6[0] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateMachine];
  [v4 postEvent:@"Download again button pressed" withContext:0 userInfo:v2];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10_1300(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Force streaming video button pressed"];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_11_1304(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Error alert dismissed"];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_12_1342(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Download again button pressed"];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_13_1346(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Error alert dismissed"];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_14_1347(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:a2 message:a3 preferredStyle:1];
  if (*(a1 + 32))
  {
    [v14 addAction:?];
  }

  if (*(a1 + 40))
  {
    [v14 addAction:?];
  }

  if (*(a1 + 48))
  {
    [v14 addAction:?];
  }

  if (*(a1 + 56))
  {
    [v14 setPreferredAction:?];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained setErrorAlertController:v14];

  if (*(a1 + 64) == @"Showing error message on playback UI" && (v8 = objc_loadWeakRetained((a1 + 72)), [v8 avPlayerViewController], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "view"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "window"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v8, v11))
  {
    v5 = objc_loadWeakRetained((a1 + 72));
    v12 = [v5 avPlayerViewController];
    v13 = [v12 vui_viewControllerForFullScreenPresentation];
    [v13 presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    v5 = +[VUIApplicationRouter topPresentedViewController];
    if (!v5)
    {
      v6 = +[VUITVAppLauncher sharedInstance];
      v7 = [v6 appWindow];

      v5 = [v7 rootViewController];
    }

    [v5 presentViewController:v14 animated:1 completion:0];
  }
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_15_1353(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = [a2 currentState];
  if ([v8 isEqualToString:@"Showing error message on playback UI"])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v10 = [WeakRetained avPlayerViewController];
    v11 = objc_loadWeakRetained((a1 + 56));
    v12 = [v11 extrasAVPlayerViewController];

    if (v10 == v12)
    {
      v13 = (*(*(a1 + 32) + 16))();
      goto LABEL_8;
    }
  }

  else
  {
  }

  v14 = [v7 objectForKey:@"PerformAuthAfterDismissingErrorKey"];
  v15 = [v14 BOOLValue];

  v16 = [v7 objectForKey:@"StartDownloadAfterDismissingDialogKey"];
  v17 = [v16 BOOLValue];

  v18 = objc_loadWeakRetained((a1 + 56));
  v19 = [v18 activePlayer];
  v20 = [v19 currentMediaItem];

  v21 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Will dismiss AVPlayerViewController since error alert has been dismissed", buf, 2u);
  }

  v22 = objc_loadWeakRetained((a1 + 56));
  v23 = [v22 stateMachine];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1354;
  v27[3] = &unk_1E8731688;
  v29 = *(a1 + 40);
  v31 = v15;
  v32 = v17;
  v30 = *(a1 + 48);
  v28 = v20;
  v24 = v20;
  [v23 executeBlockAfterCurrentStateTransition:v27];

  v13 = @"Not showing anything";
LABEL_8:
  v25 = objc_loadWeakRetained((a1 + 56));
  [v25 setErrorAlertController:0];

  return v13;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1354(uint64_t a1)
{
  v2 = +[VUIAppReviewManager sharedInstance];
  [v2 isFeatureEnabled:&__block_literal_global_1358];

  +[_TtC8VideosUI8VideosUI markLastPlaybackEventasError];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1360;
  v4[3] = &unk_1E8731660;
  v7 = *(a1 + 56);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 32);
  (*(v3 + 16))(v3, 1, 1, 0, 1, 1, 1, 1, v4);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1356(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = +[VUIAppReviewManager sharedInstance];
    [v2 setLastPlaybackEvent:1];
  }
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1360(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v1 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v1, OS_LOG_TYPE_DEFAULT, "Performing auth", buf, 2u);
    }

    [VUIAuthenticationManager requestAuthenticationAlwaysPrompt:1 withCompletionHandler:&__block_literal_global_1364];
  }

  else if (*(a1 + 49) == 1)
  {
    v3 = dispatch_time(0, 1000000000);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1365;
    v4[3] = &unk_1E872DC10;
    v6 = *(a1 + 40);
    v5 = *(a1 + 32);
    dispatch_after(v3, MEMORY[0x1E69E96A0], v4);
  }
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1366(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = [a5 objectForKey:@"PreferAVAdapterCompatibilityKey"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = +[VUIPlaybackSettings sharedSettings];
    [v9 setPreferAVAdapterCompatibility:1];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1369;
  v13[3] = &unk_1E872D768;
  v14 = v6;
  v10 = v6;
  [v10 executeBlockAfterCurrentStateTransition:v13];
  v11 = [v10 currentState];

  return v11;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1369(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"StartDownloadAfterDismissingDialogKey";
  v4[0] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  [*(a1 + 32) postEvent:@"Error alert dismissed" withContext:0 userInfo:v2];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1370(uint64_t a1)
{
  v2 = +[VUIPlaybackSettings sharedSettings];
  [v2 setPreferAVAdapterCompatibility:1];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained activePlayer];
  v5 = [v4 currentMediaItem];
  [v5 setMediaItemMetadata:MEMORY[0x1E695E118] forProperty:*MEMORY[0x1E69D5BD0]];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 activePlayer];
  [v7 play];

  return @"Showing video full screen";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1371(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained mainPlayer];
  [v14 setAllowsCellularUsage:1];

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 extrasPlayer];
  [v16 setAllowsCellularUsage:1];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1372;
  v18[3] = &unk_1E872E4B8;
  objc_copyWeak(&v19, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v18];
  objc_destroyWeak(&v19);

  return @"Showing video full screen";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1372(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained activePlayer];
  [v1 play];
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1373(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performEnterBackgroundOperations];

  v7 = [v5 currentState];

  return v7;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1374(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performEnterBackgroundOperations];

  v5 = [v3 currentState];

  return v5;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_10_1375(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performEnterBackgroundOperations];

  v5 = [v3 currentState];

  return v5;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_11_1376(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v49 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained configuredPostPlay] & 1) == 0)
  {

    goto LABEL_28;
  }

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = [v14 activePlayer];
  v16 = [v15 externalPlaybackType];

  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = objc_loadWeakRetained((a1 + 40));
  v18 = [v17 activePlayer];
  v48 = [v18 currentMediaItem];

  v19 = [v48 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DD8]];
  if (v19)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v20 = objc_loadWeakRetained((a1 + 40));
    v21 = [v20 activePlayer];
    v22 = [v21 playlist];
    v23 = [v22 activeList];

    v24 = [v23 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v24)
    {
      v25 = *v54;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(v23);
          }

          if ([*(*(&v53 + 1) + 8 * i) isEqualToMediaItem:v19])
          {

            v27 = objc_loadWeakRetained((a1 + 40));
            v28 = [v27 activePlayer];
            v29 = [v28 playlist];
            v30 = [v29 activeListIndex];

            v31 = sLogObject_5;
            if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "removing post play item in playlist", buf, 2u);
            }

            v23 = objc_loadWeakRetained((a1 + 40));
            v32 = [v23 activePlayer];
            v33 = [v32 playlist];
            [v33 removeItemAtIndex:v30 + 1];

            goto LABEL_17;
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  v34 = objc_loadWeakRetained((a1 + 40));
  v35 = [v34 featureMonitor];
  v36 = [v35 featuresForType:2];
  v37 = [v36 firstObject];

  if (v37)
  {
    if ([v37 isActive])
    {
      v38 = [v9 currentState];
      v39 = v38 == @"Showing video full screen with post play content on screen";

      if (!v39)
      {
        v40 = objc_loadWeakRetained((a1 + 40));
        v41 = [v40 postPlayView];
        if (v41)
        {

LABEL_24:
          v44 = objc_loadWeakRetained((a1 + 40));
          v45 = [v44 avPlayerViewController];
          v46 = [v45 view];

          if (v46)
          {
            (*(*(a1 + 32) + 16))();

            v12 = @"Showing video full screen with post play content on screen";
          }

          goto LABEL_27;
        }

        v42 = objc_loadWeakRetained((a1 + 40));
        v43 = [v42 _isNewPostPlayEnabled];

        if (v43)
        {
          goto LABEL_24;
        }
      }
    }
  }

LABEL_27:

LABEL_28:
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1377;
  v50[3] = &unk_1E872E4B8;
  objc_copyWeak(&v51, (a1 + 40));
  [v9 executeBlockAfterCurrentStateTransition:v50];
  objc_destroyWeak(&v51);

  return v12;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1377(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performEnterForegroundOperations];
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1378(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained avPlayerViewController];
  (*(v3 + 16))(v3, v6);

  v7 = [v4 currentState];

  return v7;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1379(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1380;
  v15[3] = &unk_1E872E4B8;
  objc_copyWeak(&v16, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v15];
  v13 = [v9 currentState];
  objc_destroyWeak(&v16);

  return v13;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1380(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performEnterForegroundOperations];
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1381(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained backgroundAudioPlayer];
  if (v5)
  {
    v6 = v5;
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 backgroundAudioPlayer];
    v9 = [v8 state];
    v10 = [MEMORY[0x1E69D5A40] playing];

    if (v9 != v10)
    {
      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = [WeakRetained backgroundAudioPlayer];
    [v11 pause];
  }

LABEL_5:
  v12 = [v3 currentState];

  return v12;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_6_1382(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained avPlayerViewController];
  v6 = [v5 view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [v11 extrasContext];
  LODWORD(v6) = [v12 shouldExtrasBeVisibleForSize:{v8, v10}];

  v13 = [v3 currentState];

  if (!v6)
  {
    (*(*(a1 + 32) + 16))();
    v21 = objc_loadWeakRetained((a1 + 40));
    [v21 _setExtrasButtonVisible:0];
    v14 = v13;
    v13 = @"Showing video full screen";
LABEL_6:

    goto LABEL_7;
  }

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = [v14 backgroundAudioPlayer];
  if (v15)
  {
    v16 = v15;
    v17 = objc_loadWeakRetained((a1 + 40));
    v18 = [v17 backgroundAudioPlayer];
    v19 = [v18 state];
    v20 = [MEMORY[0x1E69D5A40] paused];

    if (v19 != v20)
    {
      goto LABEL_8;
    }

    v14 = objc_loadWeakRetained((a1 + 40));
    v21 = [v14 backgroundAudioPlayer];
    [v21 play];
    goto LABEL_6;
  }

LABEL_7:

LABEL_8:

  return v13;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1383(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "external playback did change", buf, 2u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = [WeakRetained multiviewPlaybackInfo];

  v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        if ([v20 pausedDueToInterruption])
        {
          v21 = [v20 player];
          [v21 play];

          [v20 setPausedDueToInterruption:0];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }

  v22 = [v9 currentState];

  return v22;
}

id __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1384(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained activePlayer];
  v6 = [v5 currentMediaItem];

  (*(*(a1 + 32) + 16))();
  v7 = [v3 currentState];

  return v7;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1385(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [a2 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setConfiguredPostPlay:1];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 featureMonitor];
  v7 = [v6 featuresForType:2];
  v8 = [v7 firstObject];

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 featureMonitor];
  v11 = [v10 featuresForType:3];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = objc_loadWeakRetained((a1 + 40));
        v19 = [v18 featureMonitor];
        [v19 deactivateFeature:v17 animated:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  if (v8)
  {
    if ([v8 isActive])
    {
      v20 = objc_loadWeakRetained((a1 + 40));
      v21 = [v20 activePlayer];
      v22 = [v21 state];
      v23 = [MEMORY[0x1E69D5A40] playing];

      if (v22 == v23)
      {
        v24 = objc_loadWeakRetained((a1 + 40));
        v25 = [v24 _isNewPostPlayEnabled];

        if (v25)
        {
          (*(*(a1 + 32) + 16))();
          v26 = v3;
        }

        else
        {
          v27 = objc_loadWeakRetained((a1 + 40));
          v28 = [v27 postPlayView];

          if (!v28)
          {
            goto LABEL_18;
          }

          v29 = objc_loadWeakRetained((a1 + 40));
          v30 = [v29 avPlayerViewController];
          v26 = [v30 view];

          if (!v26)
          {
            goto LABEL_17;
          }

          (*(*(a1 + 32) + 16))();
        }

        v3 = @"Showing video full screen with post play content on screen";
LABEL_17:
      }
    }
  }

LABEL_18:

  return v3;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1386(uint64_t a1, void *a2)
{
  v3 = [a2 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (![WeakRetained configuredPostPlay])
  {
LABEL_9:

    goto LABEL_10;
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 activePlayer];
  v7 = [v6 state];
  v8 = [MEMORY[0x1E69D5A40] playing];

  if (v7 != v8)
  {
    goto LABEL_10;
  }

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 postPlayView];
  if (v10)
  {
  }

  else
  {
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 _isNewPostPlayEnabled];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  v13 = objc_loadWeakRetained((a1 + 40));
  v14 = [v13 activePlayer];
  v15 = [v14 externalPlaybackType];

  if (!v15)
  {
    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = [v16 avPlayerViewController];
    WeakRetained = [v17 view];

    if (WeakRetained)
    {
      (*(*(a1 + 32) + 16))();

      v3 = @"Showing video full screen with post play content on screen";
    }

    goto LABEL_9;
  }

LABEL_10:

  return v3;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1387(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [v6 objectForKey:@"PostPlaySlideOutAnimationKey"];

  if (v7)
  {
    v8 = [v6 objectForKey:@"PostPlaySlideOutAnimationKey"];
    [v8 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resetAutoPlayBingeWatchingQualifications];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 _isNewPostPlayEnabled];

  if ((v11 & 1) == 0)
  {
    v30 = v6;
    v12 = objc_loadWeakRetained((a1 + 40));
    v13 = [v12 activePlayer];
    v14 = [v13 playlist];
    v15 = [v14 activeListIndex];

    v16 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Removing post play item from playlist", buf, 2u);
    }

    v17 = objc_loadWeakRetained((a1 + 40));
    v18 = [v17 activePlayer];
    v19 = [v18 playlist];
    v20 = [v19 nextMediaItem];
    if (!v20)
    {
      v6 = v30;
      goto LABEL_10;
    }

    v21 = v20;
    v22 = objc_loadWeakRetained((a1 + 40));
    v23 = [v22 activePlayer];
    v24 = [v23 playlist];
    v25 = [v24 activeList];
    v29 = [v25 count];

    v26 = v15;
    v27 = v15 >= v29;
    v6 = v30;
    if (!v27)
    {
      v17 = objc_loadWeakRetained((a1 + 40));
      v18 = [v17 activePlayer];
      v19 = [v18 playlist];
      [v19 removeItemAtIndex:v26 + 1];
LABEL_10:
    }
  }

  return @"Showing video full screen";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1388(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = [WeakRetained activePlayer];
  v15 = [v14 currentMediaItem];

  v67 = [v15 mediaItemMetadataForProperty:@"VUIMediaItemMetadataUpNextPostPlayMediaInfo"];
  v16 = [v15 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DD8]];
  v17 = [v15 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPostPlayItemUpsellRouterDataSource"];
  v18 = [v15 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPostPlayItemMetrics"];
  if (v16)
  {
    v66 = v18;
    v62 = v17;
    v19 = [v16 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
    [v19 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6040] date:0];
    [v19 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6058] date:0];
    v20 = objc_loadWeakRetained((a1 + 48));
    v21 = [v20 ratingView];

    if (v21)
    {
      v22 = objc_loadWeakRetained((a1 + 48));
      v23 = [v22 ratingView];
      [v23 removeFromSuperview];
    }

    v64 = v12;
    v24 = objc_loadWeakRetained((a1 + 48));
    [v24 setRatingImage:0];

    v25 = objc_loadWeakRetained((a1 + 48));
    [v25 setRatingView:0];

    v26 = objc_loadWeakRetained((a1 + 48));
    [v26 setPhotoSensitivityImage:0];

    v27 = objc_loadWeakRetained((a1 + 48));
    v28 = [v27 productPlacementView];

    if (v28)
    {
      v29 = objc_loadWeakRetained((a1 + 48));
      v30 = [v29 productPlacementView];
      [v30 removeFromSuperview];
    }

    v63 = v9;
    v31 = objc_loadWeakRetained((a1 + 48));
    [v31 setProductPlacementImage:0];

    v32 = objc_loadWeakRetained((a1 + 48));
    [v32 setProductPlacementView:0];

    v33 = objc_loadWeakRetained((a1 + 48));
    v34 = objc_opt_new();
    [v33 setLogoImageDownloader:v34];

    v35 = v10;
    if ([v10 isEqualToString:@"Post play item selected"])
    {
      v36 = [v66 objectForKeyedSubscript:@"VUIContentMetadataPostPlayItemMetricsClickDataKey"];
      v37 = objc_loadWeakRetained((a1 + 48));
      v38 = [v37 metricsRecorder];
      [v38 recordClick:v36 locationIndex:0];

      v39 = objc_loadWeakRetained((a1 + 48));
      [v39 _resetAutoPlayBingeWatchingQualifications];
    }

    v40 = v11;
    v41 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v41, OS_LOG_TYPE_DEFAULT, "Playing post play item from playlist", buf, 2u);
    }

    v42 = *MEMORY[0x1E69D5EE8];
    v43 = objc_loadWeakRetained((a1 + 48));
    v44 = [v43 postPlayView];
    v45 = [v44 canAutoPlay];

    if ([v35 isEqualToString:@"Post play item selected"])
    {
      v46 = VUIPostPlayReasonManualPlayOther;
      v47 = &VUIPostPlayReasonManualUpNext;
      v11 = v40;
      v10 = v35;
    }

    else
    {
      v11 = v40;
      if (![v35 isEqualToString:@"Post play auto play timer did complete"])
      {
        v10 = v35;
LABEL_22:
        v12 = v64;
        [VUIMetricsMediaEvent recordPlayOfTVPMediaItem:v16];
        if ([v67 playbackContext] == 12)
        {
          v57 = 4;
        }

        else
        {
          v57 = 3;
        }

        v58 = [VUIPlaybackStartupCoordinator startupCoordinatorWithMediaInfo:v67 watchType:v57 isRentAndWatchNow:0];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1389;
        v71[3] = &unk_1E87316D8;
        v59 = v58;
        v72 = v59;
        v73 = v16;
        objc_copyWeak(&v75, (a1 + 48));
        v60 = v42;
        v74 = v60;
        [v59 performPlaybackStartupFlowWithCompletion:v71];

        objc_destroyWeak(&v75);
        v55 = @"Showing video full screen";
        v17 = v62;
        v9 = v63;
        goto LABEL_26;
      }

      v46 = VUIPostPlayReasonAutomaticPlayOther;
      v47 = VUIPostPlayReasonAutomaticUpNext;
      v10 = v35;
    }

    if (v45)
    {
      v46 = v47;
    }

    v56 = *v46;

    v42 = v56;
    goto LABEL_22;
  }

  if (!v17)
  {
    v55 = @"Showing video full screen";
    goto LABEL_27;
  }

  v65 = v11;
  v48 = v18;
  v49 = objc_loadWeakRetained((a1 + 48));
  v50 = [v49 stateMachine];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1390;
  v68[3] = &unk_1E872E580;
  v69 = v17;
  v70 = *(a1 + 40);
  [v50 executeBlockAfterCurrentStateTransition:v68];

  if (v48)
  {
    v51 = [v48 objectForKeyedSubscript:@"VUIContentMetadataPostPlayItemMetricsClickDataKey"];
    v52 = objc_loadWeakRetained((a1 + 48));
    [v52 metricsRecorder];
    v54 = v53 = v17;
    [v54 recordClick:v51 locationIndex:0];

    v17 = v53;
  }

  v66 = v48;

  v55 = @"Not showing anything";
  v19 = v69;
  v11 = v65;
LABEL_26:

  v18 = v66;
LABEL_27:

  return v55;
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1389(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6, void *a7, void *a8)
{
  v50 = *MEMORY[0x1E69E9840];
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 134218752;
    v43 = a2;
    v44 = 2048;
    v45 = a3;
    v46 = 2048;
    v47 = a4;
    v48 = 2048;
    v49 = a5;
    _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "Post-play startup coordinator finished startup flow.  startPlayback == %ld, isCoWatching == %ld, forceDownloadToStream == %ld, allowCellular == %ld", &v42, 0x2Au);
  }

  v19 = sLogObject_5;
  v20 = os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v20)
    {
      LOWORD(v42) = 0;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Playing post-play media item since playback startup coordinator allowed it", &v42, 2u);
      if (!a4)
      {
LABEL_6:
        if (a3)
        {
LABEL_7:
          v21 = [MEMORY[0x1E695E000] standardUserDefaults];
          v22 = [v21 objectForKey:*MEMORY[0x1E69DF810]];

          if (v22 && (objc_opt_respondsToSelector() & 1) != 0 && ([v22 BOOLValue] & 1) == 0)
          {
            v23 = [v22 BOOLValue];
            v24 = sLogObject_5;
            if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
            {
              v25 = @"paused";
              if (v23)
              {
                v25 = @"playing";
              }

              v42 = 138412290;
              v43 = v25;
              _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "Overriding initial playback state to %@ per user default", &v42, 0xCu);
            }

            if (!v23)
            {
              v37 = sLogObject_5;
              if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v42) = 0;
                _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "GroupActivities session is active, starting next item in paused state", &v42, 2u);
              }

              WeakRetained = objc_loadWeakRetained((a1 + 56));
              v39 = [WeakRetained mainPlayer];
              [v39 pause];

              v40 = objc_loadWeakRetained((a1 + 56));
              v41 = [v40 mainPlayer];
              [v41 pause];

              v31 = 0;
              goto LABEL_27;
            }
          }

          v26 = sLogObject_5;
          if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v42) = 0;
            _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "GroupActivities session is active, starting next item in playing state", &v42, 2u);
          }

          v27 = objc_loadWeakRetained((a1 + 56));
          v28 = [v27 mainPlayer];
          [v28 play];

LABEL_26:
          v31 = 1;
LABEL_27:
          v32 = objc_loadWeakRetained((a1 + 56));
          v33 = [v32 activePlayer];
          [v33 changeMediaInDirection:0 reason:*(a1 + 48)];

          if (v31)
          {
            v34 = objc_loadWeakRetained((a1 + 56));
            v35 = [v34 mainPlayer];
            [v35 play];
          }

          v36 = objc_loadWeakRetained((a1 + 56));
          [v36 _notifyAVPlayerViewControllerDisplaySize];

          goto LABEL_30;
        }

LABEL_24:
        v30 = sLogObject_5;
        if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v42) = 0;
          _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "No GroupActivity is active.  Starting next item in playing state", &v42, 2u);
        }

        goto LABEL_26;
      }
    }

    else if (!a4)
    {
      goto LABEL_6;
    }

    v29 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v42) = 0;
      _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Forcing downloaded video to be streamed.  Removing previously added up next item", &v42, 2u);
    }

    [*(a1 + 40) setMediaItemMetadata:MEMORY[0x1E695E118] forProperty:*MEMORY[0x1E69D5BD0]];
    if (a3)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  if (v20)
  {
    LOWORD(v42) = 0;
    _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Not playing post-play media item since playback startup coordinator disallowed it", &v42, 2u);
  }

LABEL_30:
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1390(uint64_t a1)
{
  v2 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Tear down playback and present post play upsell screen", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1391;
  aBlock[3] = &unk_1E872D768;
  v5 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  (*(*(a1 + 40) + 16))(*(a1 + 40), 1, 1, 0, 1);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1391(uint64_t a1)
{
  v2 = +[VUIPostPlayUpsellManager sharedInstance];
  [v2 handleRouterDataSourceIfNeeded:*(a1 + 32)];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1393(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E695DF90] dictionary];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v15 = [WeakRetained activePlayer];

  if (v15)
  {
    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = [v16 activePlayer];
    [v17 elapsedTime];
    v19 = v18;

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    [v13 setObject:v20 forKey:VUIPlaybackManagerNotificationKeyElapsedTime];
  }

  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  v22 = VUIPlaybackManagerPostPlayPIPWillHideNotification[0];
  v23 = [v13 copy];
  [v21 postNotificationName:v22 object:0 userInfo:v23];

  v24 = *(a1 + 32);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1394;
  v26[3] = &unk_1E872E4B8;
  objc_copyWeak(&v27, (a1 + 40));
  (*(v24 + 16))(v24, 1, 0, 1, 1, 0, 0, 0, v26);
  objc_destroyWeak(&v27);

  return @"Showing post play content without playback UI";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1394(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained playbackContainerViewController];
  [v1 hidePictureInPictureWithCompletion:0];
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1395(uint64_t a1)
{
  v2 = sLogObject_5;
  if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up player because post play view was dimissed", buf, 2u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
  return @"Not showing anything";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_2_1399(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPIPedBackgroundMediaController:0];

  return @"Not showing anything";
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_3_1400(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKey:@"CompletionKey"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1401;
  v16[3] = &unk_1E8731728;
  objc_copyWeak(&v19, (a1 + 40));
  v17 = *(a1 + 32);
  v14 = v13;
  v18 = v14;
  [v9 executeBlockAfterCurrentStateTransition:v16];

  objc_destroyWeak(&v19);
  return @"Transferring player to background media";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_4_1401(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained playbackContainerViewController];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 mainAVPlayerViewController];

  v6 = objc_loadWeakRetained((a1 + 48));
  [v5 setDelegate:v6];

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 activePlayer];

  v9 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1402;
  v13[3] = &unk_1E8731468;
  objc_copyWeak(&v18, (a1 + 48));
  v17 = *(a1 + 40);
  v10 = v3;
  v14 = v10;
  v11 = v5;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  (*(v9 + 16))(v9, 0, 0, 1, 0, 0, 0, 0, v13);

  objc_destroyWeak(&v18);
}

uint64_t __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_5_1402(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained setPresentingViewController:0];

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_7_1406(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLongLoadingAlertController:0];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1407;
  v16[3] = &unk_1E872F038;
  objc_copyWeak(&v18, (a1 + 32));
  v14 = v12;
  v17 = v14;
  [v9 executeBlockAfterCurrentStateTransition:v16];

  objc_destroyWeak(&v18);
  return @"Showing video full screen";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_8_1407(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained mainPlayer];
  v4 = [v3 currentMediaItem];

  v5 = [v4 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDeepLinkURL"];
  v6 = [v4 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlayableForDownload"];
  v7 = objc_loadWeakRetained((a1 + 40));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1408;
  v11[3] = &unk_1E872E5D8;
  v12 = v5;
  v13 = *(a1 + 32);
  v14 = v6;
  v15 = v4;
  v8 = v4;
  v9 = v6;
  v10 = v5;
  [v7 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:v11];
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1408(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[VUITVAppLauncher sharedInstance];
  [v2 openURL:*(a1 + 32) options:0];

  v3 = [*(a1 + 40) objectForKey:@"StartDownloadAfterDismissingDialogKey"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = sLogObject_5;
    if (*(a1 + 48))
    {
      if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 56);
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Starting download for %@", &v8, 0xCu);
      }

      v7 = [[VUIUniversalAssetController alloc] initWithVideosPlayable:*(a1 + 48)];
      [(VUIUniversalAssetController *)v7 startDownloadAllowingCellular:0 quality:2 shouldMarkAsDeletedOnCancellationOrFailure:1 prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:0];
    }

    else if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_ERROR))
    {
      __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1408_cold_1(a1, v5);
    }
  }
}

__CFString *__51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1410(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLongLoadingAlertController:0];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 savedErrorContext];

  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 savedErrorUserInfo];

  if (v15 | v17)
  {
    v18 = sLogObject_5;
    if (os_log_type_enabled(sLogObject_5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "An error occurred while the long loading dialog was being presented.  Posting error event again.", buf, 2u);
    }

    v19 = objc_loadWeakRetained((a1 + 32));
    [v19 setSavedErrorContext:0];

    v20 = objc_loadWeakRetained((a1 + 32));
    [v20 setSavedErrorUserInfo:0];

    v21 = objc_loadWeakRetained((a1 + 32));
    v22 = [v21 stateMachine];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1411;
    v24[3] = &unk_1E872D9B8;
    objc_copyWeak(&v27, (a1 + 32));
    v25 = v15;
    v26 = v17;
    [v22 executeBlockAfterCurrentStateTransition:v24];

    objc_destroyWeak(&v27);
  }

  return @"Showing video full screen";
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1411(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Error did occur" withContext:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (VUIPlayer)activePlayer
{
  WeakRetained = objc_loadWeakRetained(&self->_activePlayer);

  return WeakRetained;
}

- (VUIControllerPresenter)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)extrasContext:(uint64_t)a1 hadFatalError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Extras context had fatal error: %@", &v2, 0xCu);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1154_cold_1(uint64_t a1, void *a2, id *a3)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained(a3);
  v6 = [WeakRetained avPlayerViewController];
  OUTLINED_FUNCTION_1_42();
  OUTLINED_FUNCTION_2_14(&dword_1E323F000, v7, v8, "Unable to restore AVPlayerViewController.  Presenting view controller is nil: %@, player view controller is nil: %@", v9, v10, v11, v12, v13);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1158_cold_1(uint64_t a1, void *a2, id *a3)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained(a3);
  v6 = [WeakRetained avPlayerViewController];
  OUTLINED_FUNCTION_1_42();
  OUTLINED_FUNCTION_2_14(&dword_1E323F000, v7, v8, "Unable to restore AVPlayerViewController.  Presenting view controller is nil: %@, player view controller is nil: %@", v9, v10, v11, v12, v13);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_1161_cold_1(uint64_t a1, void *a2, id *a3)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained(a3);
  v6 = [WeakRetained avPlayerViewController];
  OUTLINED_FUNCTION_2_14(&dword_1E323F000, v7, v8, "Unable to restore AVPlayerViewController.  Presenting view controller is nil: %@, player view controller is nil: %@", v9, v10, v11, v12, 2u);
}

void __51__VUIPlaybackManager__registerStateMachineHandlers__block_invoke_9_1408_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Unable to start download for %@ because videos playable is nil", &v3, 0xCu);
}

@end
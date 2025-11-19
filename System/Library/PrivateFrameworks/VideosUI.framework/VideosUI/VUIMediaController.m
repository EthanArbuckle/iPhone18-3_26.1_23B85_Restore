@interface VUIMediaController
- (BOOL)_canPause;
- (BOOL)_hasSecondaryView;
- (BOOL)_shouldIgnorePlaybackStop;
- (BOOL)_shouldShowSecondaryView;
- (BOOL)isFullscreenPlaybackIntent;
- (CGRect)_playbackContainerViewFrame:(BOOL)a3 hasSecondaryVideoView:(BOOL)a4;
- (CGRect)_secondaryVideoViewFrame:(BOOL)a3;
- (NSTimer)pauseStateTimeoutTimer;
- (NSTimer)playbackLoadingTimer;
- (VUIMediaController)initWithName:(id)a3;
- (VUIMediaControllerDelegate)delegate;
- (id)preferredFocusEnvironments;
- (void)_addContentViewIfNeeded;
- (void)_addOverlayViewAnimatedIfNeeded:(BOOL)a3 dismissAfter:(double)a4;
- (void)_addPlaybackViewControllerForPlayback:(BOOL)a3;
- (void)_addProxyImageView;
- (void)_applicationDidRemoveDeactivationReason:(id)a3;
- (void)_applicationWillAddDeactivationReason:(id)a3;
- (void)_cleanUpEverything;
- (void)_cleanUpEverythingPlaybackRelated;
- (void)_delayLoadImage:(id)a3;
- (void)_handleApplicationDidBecomeActiveNotification:(id)a3;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3;
- (void)_handleApplicationWillResignActiveNotification:(id)a3;
- (void)_mediaControllerStartedPlayback:(id)a3;
- (void)_playbackStateChanged:(id)a3;
- (void)_registerForApplicationStateNotifications;
- (void)_registerPlayerNotifications;
- (void)_registerStateMachineHandlers;
- (void)_removeOverlayView:(id)a3 animated:(BOOL)a4;
- (void)_removePlaybackViewController;
- (void)_removeProxyImageView;
- (void)_setImageProxies:(id)a3;
- (void)_setPlaylist:(id)a3;
- (void)_stateDidChangeFromState:(id)a3 toState:(id)a4 onEvent:(id)a5 context:(id)a6 userInfo:(id)a7;
- (void)_swapActiveMedia:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_unregisterPlayerNotifications;
- (void)_updateAVPlayerViewControllerWithAVPlayerForPlayer:(id)a3;
- (void)_updateCurrentPlaybackViewFrameForPlaybackInBackground:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateMediaInfo;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)play;
- (void)setDelegate:(id)a3;
- (void)setMediaInfo:(id)a3;
- (void)setPlaybackEnabled:(BOOL)a3;
- (void)setShouldZoomWhenTransitioningToBackground:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)stop;
- (void)transitionToForeground:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VUIMediaController

- (VUIMediaController)initWithName:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = VUIMediaController;
  v5 = [(VUIMediaController *)&v24 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_playerReadyToBePlayed = 0;
    v5->_shouldAnimateOverlayView = 1;
    v5->_shouldZoomWhenTransitioningToBackground = 1;
    v5->_automaticPlaybackStart = 0;
    v5->_automaticPlaybackStop = 0;
    v5->_playbackEnabled = 1;
    v5->_stopPlayerWhenViewDisappears = 1;
    v5->_shouldPlayAfterAppBecomesActive = 0;
    v5->_clearPreviousImageBeforeLoading = 1;
    v5->_popWhenPlayerStops = 0;
    v5->_restoringAVPlayerController = 0;
    v5->_stopWhenAnotherMediaControllerStarts = 1;
    v5->_imageTransitionInterval = 5.0;
    v5->_imageAnimationDuration = 0.5;
    v5->_overlayViewDisplayDuration = 10.0;
    v5->_imageAnimationOptions = 5243008;
    v5->_playbackStopReason = 2;
    v5->_state = 0;
    v7 = objc_alloc_init(MEMORY[0x1E69DF740]);
    proxyImageView = v6->_proxyImageView;
    v6->_proxyImageView = v7;

    [(VUIMediaController *)v6 _registerForApplicationStateNotifications];
    objc_initWeak(&location, v6);
    v9 = initWithName__instanceNumber++;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%ld)", v4, v9];
    name = v6->_name;
    v6->_name = v10;

    v12 = objc_alloc(MEMORY[0x1E69D5A60]);
    v13 = v6->_name;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __35__VUIMediaController_initWithName___block_invoke;
    v21[3] = &unk_1E872FED0;
    objc_copyWeak(&v22, &location);
    v14 = [v12 initWithName:v13 initialState:@"Not doing anything" mode:0 stateChangeHandler:v21];
    stateMachine = v6->_stateMachine;
    v6->_stateMachine = v14;

    v16 = v6->_stateMachine;
    v17 = VUIDefaultLogObject();
    [(TVPStateMachine *)v16 setLogObject:v17];

    [(TVPStateMachine *)v6->_stateMachine setCallsStateChangeHandlerSynchronously:1];
    [(VUIMediaController *)v6 _registerStateMachineHandlers];
    [(TVPStateMachine *)v6->_stateMachine setShouldAcceptEvents:1];
    v18 = VUIDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v6->_name;
      *buf = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIMediaController::finished creating media controller %@ (%@)", buf, 0x16u);
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __35__VUIMediaController_initWithName___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
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
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(VUIMediaController *)self _cleanUpEverything];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(VUIMediaController *)self name];
    *buf = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIMediaController::finished cleaning up %@ (%@)", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = VUIMediaController;
  [(VUIMediaController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = VUIMediaController;
  [(VUIMediaController *)&v3 viewDidLoad];
  [(VUIMediaController *)self _addProxyImageView];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VUIMediaController;
  [(VUIMediaController *)&v11 viewWillDisappear:a3];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  if ([(VUIMediaController *)self shouldStopPlayerWhenViewDisappears])
  {
    v4 = [(VUIMediaController *)self player];
    if (!v4 || (v5 = v4, -[VUIMediaController player](self, "player"), v6 = objc_claimAutoreleasedReturnValue(), [v6 state], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69D5A40], "stopped"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v5, v7 == v8))
    {
      [(VUIMediaController *)self setPlaybackEnabled:0];
    }

    else
    {
      v9 = VUIDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(VUIMediaController *)self name];
        *buf = 136315650;
        v13 = "[VUIMediaController viewWillDisappear:]";
        v14 = 2048;
        v15 = self;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIMediaController::%s will stop media controller (%p: %@)", buf, 0x20u);
      }

      [(VUIMediaController *)self stop];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (__PlayerAVPlayerKVOContext == a6)
  {

    [(VUIMediaController *)self _updateAVPlayerViewControllerWithAVPlayerForPlayer:a4];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = VUIMediaController;
    [(VUIMediaController *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setMediaInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    -[VUIMediaController setAutomaticPlaybackStart:](self, "setAutomaticPlaybackStart:", [v4 isAutomaticPlaybackStart]);
    -[VUIMediaController setVpafPlaybackStartReason:](self, "setVpafPlaybackStartReason:", [v10 playbackStartReason]);
    if ([v10 playbackStartReason] == 3)
    {
      -[VUIMediaController setAutomaticPlaybackStop:](self, "setAutomaticPlaybackStop:", [v10 isAutomaticPlaybackStart]);
      -[VUIMediaController setVpafPlaybackStopReason:](self, "setVpafPlaybackStopReason:", [v10 playbackStopReason]);
    }

    if (-[VUIMediaInfo intent](self->_mediaInfo, "intent") == 1 && ![v10 intent])
    {
      mediaInfo = self->_mediaInfo;
      v8 = [v10 imageProxies];
      [(VUIMediaInfo *)mediaInfo setImageProxies:v8];

      v9 = [v10 imageProxies];
      [(VUIMediaController *)self _setImageProxies:v9];
    }

    else
    {
      v5 = [v10 copy];
      v6 = self->_mediaInfo;
      self->_mediaInfo = v5;

      [(VUIMediaController *)self _updateMediaInfo];
    }

    v4 = v10;
  }
}

- (void)play
{
  v2 = [(VUIMediaController *)self stateMachine];
  [v2 postEvent:@"Play"];
}

- (void)pause
{
  v2 = [(VUIMediaController *)self stateMachine];
  [v2 postEvent:@"Pause"];
}

- (void)stop
{
  v2 = [(VUIMediaController *)self stateMachine];
  [v2 postEvent:@"Stop"];
}

- (id)preferredFocusEnvironments
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(VUIMediaController *)self avPlayerViewController];
  v4 = v3;
  if (v3)
  {
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VUIMediaController;
    v5 = [(VUIMediaController *)&v8 preferredFocusEnvironments];
  }

  v6 = v5;

  return v6;
}

- (void)transitionToForeground:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = [(VUIMediaController *)self stateMachine];
  if (v5)
  {
    v7 = @"Transition to foreground";
  }

  else
  {
    v7 = @"Transition background";
  }

  v10 = @"AnimatedKey";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v6 postEvent:v7 withContext:0 userInfo:v9];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = [(VUIMediaController *)self delegate];
    if ([(VUIMediaController *)self doesDelegateRespondToStateChange])
    {
      [v5 stateDidChangeForMediaController:self];
    }
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(VUIMediaController *)self setDoesDelegateRespondToStateChange:objc_opt_respondsToSelector() & 1];
    [(VUIMediaController *)self setDoesDelegateRespondToShowStill:objc_opt_respondsToSelector() & 1];
  }
}

- (void)setPlaybackEnabled:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  self->_playbackEnabled = a3;
  v5 = [(VUIMediaController *)self player];

  if (!v5)
  {
    if (!v3)
    {
      v6 = [(VUIMediaController *)self playbackLoadingTimer];
      if (v6)
      {
        v14 = v6;
        [v6 invalidate];
        [(VUIMediaController *)self setPlaybackLoadingTimer:0];
        [(VUIMediaController *)self setPlaybackLoadingStartDate:0];
        v6 = v14;
      }

      goto LABEL_15;
    }

    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIMediaController::playback is enabled but we don't have a player, start reloading.", buf, 2u);
    }

    v8 = [(VUIMediaController *)self stateMachine];
    [v8 postEvent:@"Replay"];
LABEL_20:

    return;
  }

  if (v3)
  {
    if ([(VUIMediaController *)self isPlayerReadyToBePlayed])
    {
      v13 = [(VUIMediaController *)self stateMachine];
      [v13 postEvent:@"Show playback" withContext:0 userInfo:0];
      v6 = v13;
LABEL_15:

      return;
    }

    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIMediaController::player is not ready to play; will start playback when it's ready.", buf, 2u);
    }

    goto LABEL_20;
  }

  v9 = [(VUIMediaController *)self player];
  v10 = [v9 state];
  v11 = [MEMORY[0x1E69D5A40] stopped];

  if (v10 != v11)
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = self;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIMediaController::stopping player for media controller: [%@]", buf, 0xCu);
    }

    [(VUIMediaController *)self stop];
  }
}

- (void)setShouldZoomWhenTransitioningToBackground:(BOOL)a3
{
  self->_shouldZoomWhenTransitioningToBackground = a3;
  if (a3)
  {
    v4 = [(VUIMediaController *)self avPlayerViewController];

    if (v4)
    {
      v5 = [(VUIMediaController *)self isBackgrounded];

      [(VUIMediaController *)self _updateCurrentPlaybackViewFrameForPlaybackInBackground:v5 animated:1];
    }
  }
}

- (void)_registerForApplicationStateNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleApplicationWillResignActiveNotification_ name:*MEMORY[0x1E69DDBC8] object:0];
  [v3 addObserver:self selector:sel__handleApplicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DDAC8] object:0];
  [v3 addObserver:self selector:sel__handleApplicationDidBecomeActiveNotification_ name:*MEMORY[0x1E69DDAB0] object:0];
  [v3 addObserver:self selector:sel__applicationWillAddDeactivationReason_ name:*MEMORY[0x1E69DE878] object:0];
  [v3 addObserver:self selector:sel__applicationDidRemoveDeactivationReason_ name:*MEMORY[0x1E69DE840] object:0];
}

- (void)_handleApplicationWillResignActiveNotification:(id)a3
{
  v4 = [(VUIMediaController *)self player];
  if (v4)
  {
    v5 = v4;
    v6 = [(VUIMediaController *)self player];
    v7 = [v6 state];
    v8 = [MEMORY[0x1E69D5A40] playing];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(VUIMediaController *)self player];
      v11 = [v10 state];
      v12 = [MEMORY[0x1E69D5A40] loading];

      if (v11 != v12)
      {
        return;
      }
    }

    if ([(VUIMediaController *)self _shouldPausePlaybackDueToDeactivationReasons])
    {
      [(VUIMediaController *)self setShouldPlayAfterAppBecomesActive:1];

      [(VUIMediaController *)self pause];
    }
  }
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3
{
  v4 = [(VUIMediaController *)self player];
  if (v4)
  {
    v5 = v4;
    v6 = [(VUIMediaController *)self mediaInfo];
    v7 = [v6 intent];

    if (!v7)
    {
      [(VUIMediaController *)self setShouldPlayAfterAppBecomesActive:0];

      [(VUIMediaController *)self stop];
    }
  }
}

- (void)_handleApplicationDidBecomeActiveNotification:(id)a3
{
  v4 = [(VUIMediaController *)self player];
  if (v4)
  {
    v5 = v4;
    v6 = [(VUIMediaController *)self shouldPlayAfterAppBecomesActive];

    if (v6)
    {
      [(VUIMediaController *)self setShouldPlayAfterAppBecomesActive:0];

      [(VUIMediaController *)self play];
    }
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

- (void)_registerPlayerNotifications
{
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69D6090];
  v4 = [(VUIMediaController *)self player];
  [v7 addObserver:self selector:sel__playbackStateChanged_ name:v3 object:v4];

  v5 = *MEMORY[0x1E69D5F38];
  v6 = [(VUIMediaController *)self player];
  [v7 addObserver:self selector:sel__handlePlaybackErrorNotification_ name:v5 object:v6];

  [v7 addObserver:self selector:sel__mediaControllerStartedPlayback_ name:@"VUIMediaControllerWillStartPlaybackNotification" object:0];
  [v7 addObserver:self selector:sel__mediaControllerStartedPlayback_ name:@"VUIMediaControllerDidStartPlaybackNotification" object:0];
}

- (void)_unregisterPlayerNotifications
{
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69D6090];
  v4 = [(VUIMediaController *)self player];
  [v9 removeObserver:self name:v3 object:v4];

  v5 = *MEMORY[0x1E69D5F38];
  v6 = [(VUIMediaController *)self player];
  [v9 removeObserver:self name:v5 object:v6];

  [v9 removeObserver:self name:@"VUIMediaControllerWillStartPlaybackNotification" object:0];
  [v9 removeObserver:self name:@"VUIMediaControllerDidStartPlaybackNotification" object:0];
  v7 = *MEMORY[0x1E69D5F28];
  v8 = [(VUIMediaController *)self player];
  [v9 removeObserver:self name:v7 object:v8];
}

- (BOOL)_canPause
{
  v2 = [(VUIMediaController *)self player];
  [v2 duration];
  v4 = v3 != *MEMORY[0x1E69D5A78];

  return v4;
}

- (void)_updateMediaInfo
{
  v3 = [(VUIMediaController *)self mediaInfo];

  if (!v3)
  {
    return;
  }

  [(VUIMediaController *)self overlayViewDisplayDuration];
  [(VUIMediaController *)self _addOverlayViewAnimatedIfNeeded:0 dismissAfter:?];
  [(VUIMediaController *)self _addContentViewIfNeeded];
  v4 = [(VUIMediaController *)self mediaInfo];
  v25 = [v4 tvpPlaylist];

  v5 = [v25 currentMediaItem];
  v6 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

  if ([v6 length])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v6];
    v8 = [(VUIMediaController *)self titleForLogging];
    if ([v8 length])
    {
      v9 = [(VUIMediaController *)self name];
      v10 = [v9 rangeOfString:v8];
      v12 = v11;

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [(VUIMediaController *)self name];
        v14 = [v13 stringByReplacingCharactersInRange:v10 withString:{v12, &stru_1F5DB25C0}];
        name = self->_name;
        self->_name = v14;
      }
    }

    [(VUIMediaController *)self setTitleForLogging:v7];
    v16 = [(NSString *)self->_name stringByAppendingString:v7];
    v17 = self->_name;
    self->_name = v16;
  }

  if (![(VUIMediaController *)self isRestoringAVPlayerController])
  {
    v19 = [(VUIMediaController *)self player];
    v18 = [v19 playlist];

    v20 = 0;
    if (v18 && v25)
    {
      v20 = [v18 isEqualToPlaylist:v25];
    }

    v21 = [(VUIMediaController *)self mediaInfo];
    v22 = [v21 imageProxies];

    if (!v20)
    {
      [(VUIMediaController *)self setPlayerReadyToBePlayed:0];
      v23 = [(VUIMediaController *)self mediaInfo];
      v24 = [v23 intent];

      if (v24 != 1)
      {
        [(VUIMediaController *)self _setImageProxies:v22];
        [(VUIMediaController *)self _setPlaylist:v25];
        goto LABEL_18;
      }

      [(VUIMediaController *)self _setPlaylist:v25];
    }

    [(VUIMediaController *)self _setImageProxies:v22];
LABEL_18:

    goto LABEL_19;
  }

  v18 = [(VUIMediaController *)self stateMachine];
  [v18 postEvent:@"Restore avPlayerViewController"];
LABEL_19:
}

- (void)_setImageProxies:(id)a3
{
  v20 = [a3 firstObject];
  if (v20)
  {
    v4 = [(VUIMediaController *)self currentImageProxy];
    v5 = [v4 isEqual:v20];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v7 = [v20 loadSynchronouslyIfCached];
      if (-[VUIMediaController clearPreviousImageBeforeLoading](self, "clearPreviousImageBeforeLoading") && (-[VUIMediaController mediaInfo](self, "mediaInfo"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 shouldDelayLoadingImage], v8, (v9 & 1) == 0))
      {
        v10 = v7 ^ 1u;
        v13 = [(VUIMediaController *)self proxyImageView];
        [v13 setImage:0];

        v14 = [(VUIMediaController *)self proxyImageView];
        [v14 setImageProxy:0];
      }

      else
      {
        v10 = 1;
      }

      [v6 setObject:v20 forKeyedSubscript:@"ImageProxyKey"];
      v15 = [MEMORY[0x1E696AD98] numberWithBool:v10];
      [v6 setObject:v15 forKeyedSubscript:@"AnimatedKey"];

      v16 = [(VUIMediaController *)self view];
      v17 = [(VUIMediaController *)self mediaInfo];
      v18 = [v17 backgroundColor];
      [v16 setBackgroundColor:v18];

      v19 = [(VUIMediaController *)self stateMachine];
      [v19 postEvent:@"Set image" withContext:0 userInfo:v6];
    }
  }

  else
  {
    v11 = [(VUIMediaController *)self proxyImageView];
    [v11 setImage:0];

    v12 = [(VUIMediaController *)self proxyImageView];
    [v12 setImageProxy:0];

    [(VUIMediaController *)self setCurrentImageProxy:0];
  }
}

- (void)_setPlaylist:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(VUIMediaController *)self setPlayerReadyToBePlayed:0];
    [(VUIMediaController *)self setPendingPlaylist:0];
    v5 = [(VUIMediaController *)self stateMachine];
    v7 = @"PlaylistKey";
    v8[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v5 postEvent:@"Set playlist" withContext:0 userInfo:v6];
  }

  else
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaController _setPlaylist:v5];
    }
  }
}

- (void)_cleanUpEverything
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIMediaController *)self name];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIMediaController::cleaning up everything for %@", &v7, 0xCu);
  }

  v5 = [(VUIMediaController *)self proxyImageView];
  [v5 setImage:0];

  v6 = [(VUIMediaController *)self proxyImageView];
  [v6 setImageProxy:0];

  [(VUIMediaController *)self setCurrentImageProxy:0];
  [(VUIMediaController *)self _cleanUpEverythingPlaybackRelated];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
}

- (void)_cleanUpEverythingPlaybackRelated
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUIMediaController *)self name];
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIMediaController::cleaning up player and playback view controller for %@", &v13, 0xCu);
  }

  v5 = [(VUIMediaController *)self playbackLoadingTimer];
  [v5 invalidate];

  [(VUIMediaController *)self setPlaybackLoadingTimer:0];
  [(VUIMediaController *)self setPendingPlaylist:0];
  [(VUIMediaController *)self _unregisterPlayerNotifications];
  [(VUIMediaController *)self _removePlaybackViewController];
  v6 = [(VUIMediaController *)self secondaryVideoView];
  if (v6)
  {
    v7 = v6;
    v8 = [(VUIMediaController *)self secondaryVideoView];
    v9 = [v8 superview];

    if (v9)
    {
      v10 = [(VUIMediaController *)self secondaryVideoView];
      [v10 removeFromSuperview];
    }
  }

  [(VUIMediaController *)self setSecondaryVideoView:0];
  [(VUIMediaController *)self setAvPlayerViewController:0];
  [(VUIMediaController *)self setPlaybackContainerController:0];
  if ([(VUIMediaController *)self didWeCreatePlayer])
  {
    v11 = [(VUIMediaController *)self player];
    [v11 removeObserver:self forKeyPath:@"avPlayer"];

    v12 = [(VUIMediaController *)self player];
    [v12 invalidate];
  }

  [(VUIMediaController *)self setPlayer:0];
}

- (void)_addOverlayViewAnimatedIfNeeded:(BOOL)a3 dismissAfter:(double)a4
{
  v5 = a3;
  v7 = [(VUIMediaController *)self mediaInfo];
  v8 = [v7 overlayView];

  if (v8)
  {
    v9 = [v8 superview];

    if (!v9)
    {
      [v8 alpha];
      v11 = v10;
      [v8 setAlpha:0.0];
      v12 = [(VUIMediaController *)self view];
      [v12 addSubview:v8];

      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__VUIMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke;
      aBlock[3] = &unk_1E872E4E0;
      v23[1] = *&a4;
      objc_copyWeak(v23, &location);
      v13 = v8;
      v22 = v13;
      v24 = v5;
      v14 = _Block_copy(aBlock);
      if (v5)
      {
        v15 = MEMORY[0x1E69DD250];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __67__VUIMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_3;
        v18[3] = &unk_1E872FEF8;
        v19 = v13;
        v20 = v11;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __67__VUIMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_4;
        v16[3] = &unk_1E872D790;
        v17 = v14;
        [v15 animateWithDuration:5243008 delay:v18 options:v16 animations:0.75 completion:0.0];
      }

      else
      {
        [v13 setAlpha:v11];
        v14[2](v14);
      }

      objc_destroyWeak(v23);
      objc_destroyWeak(&location);
    }
  }
}

void __67__VUIMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 0.0)
  {
    v3 = MEMORY[0x1E695DFF0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__VUIMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_2;
    v5[3] = &unk_1E872F8F8;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    v8 = *(a1 + 56);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v5 block:v1];

    objc_destroyWeak(&v7);
  }
}

void __67__VUIMediaController__addOverlayViewAnimatedIfNeeded_dismissAfter___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeOverlayView:*(a1 + 32) animated:*(a1 + 48)];
}

- (void)_removeOverlayView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 setAlpha:1.0];
    if (v4)
    {
      v7 = MEMORY[0x1E69DD250];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __50__VUIMediaController__removeOverlayView_animated___block_invoke;
      v10[3] = &unk_1E872D768;
      v11 = v6;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __50__VUIMediaController__removeOverlayView_animated___block_invoke_2;
      v8[3] = &unk_1E872F758;
      v9 = v11;
      [v7 animateWithDuration:5243008 delay:v10 options:v8 animations:0.75 completion:0.0];
    }

    else
    {
      [v6 setAlpha:0.0];
      [v6 removeFromSuperview];
    }
  }
}

- (void)_swapActiveMedia:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__VUIMediaController__swapActiveMedia_animated_completion___block_invoke;
  aBlock[3] = &unk_1E872EDE0;
  objc_copyWeak(&v23, &location);
  v24 = a3;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  v11 = MEMORY[0x1E69DD250];
  if (v5)
  {
    v12 = [(VUIMediaController *)self view];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__VUIMediaController__swapActiveMedia_animated_completion___block_invoke_178;
    v20[3] = &unk_1E872D7E0;
    v21 = v10;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__VUIMediaController__swapActiveMedia_animated_completion___block_invoke_2;
    v18[3] = &unk_1E872D790;
    v19 = v8;
    [v11 transitionWithView:v12 duration:5242880 options:v20 animations:v18 completion:0.5];
    v13 = &v21;
    v14 = &v19;
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__VUIMediaController__swapActiveMedia_animated_completion___block_invoke_3;
    v15[3] = &unk_1E872FF20;
    v16 = v9;
    v17 = v8;
    [v11 performWithoutAnimation:v15];
    v13 = &v16;
    v14 = &v17;
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __59__VUIMediaController__swapActiveMedia_animated_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = VUIDefaultLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = [WeakRetained name];
      v17 = 134218242;
      v18 = WeakRetained;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIMediaController::(%p: %@) showing background image now.", &v17, 0x16u);
    }

    v7 = [WeakRetained proxyImageView];
    [v7 setHidden:0];

    v8 = [WeakRetained playbackContainerController];
    v9 = [v8 view];
    [v9 setHidden:1];

    v10 = [WeakRetained mediaInfo];
    LOBYTE(v9) = [v10 showsSecondaryVideoView];

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v16 = [WeakRetained secondaryVideoView];
    [v16 setHidden:v3];

    goto LABEL_10;
  }

  if (v5)
  {
    v11 = [WeakRetained name];
    v17 = 134218242;
    v18 = WeakRetained;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIMediaController::(%p: %@) showing playback view now.", &v17, 0x16u);
  }

  v12 = [WeakRetained proxyImageView];
  [v12 setHidden:1];

  v13 = [WeakRetained playbackContainerController];
  v14 = [v13 view];
  [v14 setHidden:0];

  v15 = [WeakRetained mediaInfo];
  LODWORD(v14) = [v15 showsSecondaryVideoView];

  if (v14)
  {
    goto LABEL_9;
  }

LABEL_10:
}

uint64_t __59__VUIMediaController__swapActiveMedia_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __59__VUIMediaController__swapActiveMedia_animated_completion___block_invoke_3(uint64_t a1)
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
  v3 = [(VUIMediaController *)self mediaInfo];
  v21 = [v3 contentView];

  if (v21)
  {
    v4 = [(VUIMediaController *)self view];
    [v4 insertSubview:v21 atIndex:0];

    v5 = [v21 leadingAnchor];
    v6 = [(VUIMediaController *)self view];
    v7 = [v6 leadingAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    [v8 setActive:1];

    v9 = [v21 trailingAnchor];
    v10 = [(VUIMediaController *)self view];
    v11 = [v10 trailingAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    [v12 setActive:1];

    v13 = [v21 topAnchor];
    v14 = [(VUIMediaController *)self view];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [v21 bottomAnchor];
    v18 = [(VUIMediaController *)self view];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [v20 setActive:1];
  }
}

- (void)_addProxyImageView
{
  v24 = [(VUIMediaController *)self proxyImageView];
  if (v24)
  {
    v3 = [(VUIMediaController *)self view];
    [v3 bounds];
    [v24 setFrame:?];

    v4 = [(VUIMediaController *)self mediaInfo];
    v5 = [v4 overlayView];

    v6 = [(VUIMediaController *)self view];
    v7 = v6;
    if (v5)
    {
      [v6 insertSubview:v24 belowSubview:v5];
    }

    else
    {
      [v6 addSubview:v24];
    }

    [v24 setHidden:1];
    v8 = [v24 leadingAnchor];
    v9 = [(VUIMediaController *)self view];
    v10 = [v9 leadingAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [v24 trailingAnchor];
    v13 = [(VUIMediaController *)self view];
    v14 = [v13 trailingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [v24 topAnchor];
    v17 = [(VUIMediaController *)self view];
    v18 = [v17 topAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [v24 bottomAnchor];
    v21 = [(VUIMediaController *)self view];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    [v23 setActive:1];
  }
}

- (void)_removeProxyImageView
{
  v3 = [(VUIMediaController *)self proxyImageView];
  if (v3)
  {
    v4 = v3;
    v5 = [(VUIMediaController *)self proxyImageView];
    v6 = [v5 superview];

    if (v6)
    {
      v7 = [(VUIMediaController *)self proxyImageView];
      [v7 removeFromSuperview];
    }
  }
}

- (void)_delayLoadImage:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIMediaController::delay load image with object %@", &v5, 0xCu);
  }

  if (v3)
  {
    [v3 load];
  }
}

- (void)_playbackStateChanged:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69D6098]];

  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VUIMediaController *)self name];
    *buf = 138412546;
    v21 = v7;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIMediaController::playback state changed for %@, new state %@", buf, 0x16u);
  }

  v8 = [MEMORY[0x1E69D5A40] playing];

  if (v5 == v8)
  {
    v18[0] = @"VUIMediaControllerIsPlayingFullscreenKey";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIMediaController isFullscreenPlaybackIntent](self, "isFullscreenPlaybackIntent")}];
    v19[0] = v9;
    v18[1] = @"VUIMediaControllerIsAutomaticPlaybackStartKey";
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIMediaController isAutomaticPlaybackStart](self, "isAutomaticPlaybackStart")}];
    v19[1] = v10;
    v18[2] = @"VUIMediaControllerPlaybackStartReasonKey";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMediaController vpafPlaybackStartReason](self, "vpafPlaybackStartReason")}];
    v19[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"VUIMediaControllerDidStartPlaybackNotification" object:self userInfo:v12];

    [(VUIMediaController *)self _updateCurrentPlaybackViewFrameForPlaybackInBackground:[(VUIMediaController *)self isBackgrounded] animated:0];
  }

  v14 = [(VUIMediaController *)self stateMachine];
  v16 = @"PlaybackStateKey";
  v17 = v5;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v14 postEvent:@"Player state changed" withContext:0 userInfo:v15];
}

- (void)_mediaControllerStartedPlayback:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  if (v4 != self)
  {
    v5 = [(VUIMediaController *)self player];
    v6 = [v5 state];
    v7 = [MEMORY[0x1E69D5A40] stopped];

    if (v6 != v7)
    {
      if ([(VUIMediaController *)self shouldStopWhenAnotherMediaControllerStarts])
      {
        v8 = VUIDefaultLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(VUIMediaController *)self name];
          v10 = [(VUIMediaController *)v4 name];
          v11 = 138412546;
          v12 = v9;
          v13 = 2112;
          v14 = v10;
          _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIMediaController::%@ received stop event because %@ will start playback.", &v11, 0x16u);
        }

        [(VUIMediaController *)self setPlaybackStopReason:1];
        [(VUIMediaController *)self setAutomaticPlaybackStop:1];
        [(VUIMediaController *)self setVpafPlaybackStopReason:1];
        [(VUIMediaController *)self stop];
      }
    }
  }
}

- (BOOL)isFullscreenPlaybackIntent
{
  v2 = [(VUIMediaController *)self mediaInfo];
  v3 = [v2 intent] == 1;

  return v3;
}

- (BOOL)_shouldIgnorePlaybackStop
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(VUIMediaController *)self delegate];
  if (![(VUIMediaController *)self doesDelegateRespondToShowStill])
  {
    goto LABEL_5;
  }

  v4 = [(VUIMediaController *)self playbackStopReason];
  if (v4 == 3)
  {
    v5 = 1;
    goto LABEL_9;
  }

  if (v4 != 1 || (v5 = 1, LOBYTE(v11) = 1, [v3 mediaController:self shouldShowStill:&v11 afterStoppingForReason:1], v11 == 1))
  {
LABEL_5:
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 mediaControllerShouldIgnorePlaybackStop:self];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_9:
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VUIMediaController *)self name];
    v8 = v7;
    v9 = @"NO";
    if (v5)
    {
      v9 = @"YES";
    }

    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIMediaController::%@ shouldIgnorePlaybackStop = %@", &v11, 0x16u);
  }

  return v5;
}

- (CGRect)_playbackContainerViewFrame:(BOOL)a3 hasSecondaryVideoView:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(VUIMediaController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (v5 && v4)
  {
    v15 = v14 + -300.0;
  }

  else
  {
    v15 = v14;
  }

  v16 = v8;
  v17 = v10;
  v18 = v12;
  result.size.height = v15;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)_hasSecondaryView
{
  v2 = [(VUIMediaController *)self secondaryVideoView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_shouldShowSecondaryView
{
  v2 = [(VUIMediaController *)self mediaInfo];
  v3 = [v2 showsSecondaryVideoView];

  return v3;
}

- (CGRect)_secondaryVideoViewFrame:(BOOL)a3
{
  v3 = a3;
  v5 = [(VUIMediaController *)self view];
  [v5 bounds];
  v7 = v6;

  v8 = [(VUIMediaController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = v12 + -300.0;
  if (!v3)
  {
    v13 = v12;
  }

  v14 = v7 + -300.0;
  v15 = 0.0;
  v16 = v10;
  result.size.height = v14;
  result.size.width = v16;
  result.origin.y = v13;
  result.origin.x = v15;
  return result;
}

- (void)_updateCurrentPlaybackViewFrameForPlaybackInBackground:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(VUIMediaController *)self avPlayerViewController];
  if (v7)
  {
    v8 = v7;
    v9 = [(VUIMediaController *)self shouldZoomWhenTransitioningToBackground];

    if (v9)
    {
      v10 = [(VUIMediaController *)self player];
      [v10 currentMediaItemPresentationSize];
      v12 = v11;
      v14 = v13;

      v15 = *(MEMORY[0x1E695EFD0] + 16);
      *&v43.a = *MEMORY[0x1E695EFD0];
      *&v43.c = v15;
      *&v43.tx = *(MEMORY[0x1E695EFD0] + 32);
      [(VUIMediaController *)self _playbackContainerViewFrame:v5 hasSecondaryVideoView:[(VUIMediaController *)self _hasSecondaryView]];
      v20 = v16;
      v21 = v17;
      v22 = v18;
      v23 = v19;
      v25 = v12 == *MEMORY[0x1E695F060] && v14 == *(MEMORY[0x1E695F060] + 8) || !v5;
      v36 = v18;
      v37 = v19;
      v26 = *&v17;
      v27 = *&v16;
      if (!v25)
      {
        v28 = v12 / v14;
        if (v12 / v14 >= v18 / v19)
        {
          v30 = round(v19);
          v29 = round(v28 * v30);
          v31 = v29 / v18;
        }

        else
        {
          v29 = round(v18);
          v30 = round(v29 / v28);
          v31 = v30 / v19;
        }

        CGAffineTransformMakeScale(&v43, v31, v31);
        v36 = v29;
        v37 = v30;
        v26 = (v23 - v30) * 0.5;
        v27 = (v22 - v29) * 0.5;
      }

      v32 = [(VUIMediaController *)self view];
      [v32 layoutIfNeeded];

      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __86__VUIMediaController__updateCurrentPlaybackViewFrameForPlaybackInBackground_animated___block_invoke;
      aBlock[3] = &unk_1E872FF48;
      objc_copyWeak(v39, &location);
      v39[1] = v20;
      v39[2] = v21;
      v39[3] = *&v22;
      v39[4] = *&v23;
      v41 = v5;
      v39[5] = *&v27;
      v39[6] = *&v26;
      v39[7] = *&v36;
      v39[8] = *&v37;
      v40 = v43;
      v33 = _Block_copy(aBlock);
      v34 = v33;
      if (v4)
      {
        if (v5)
        {
          v35 = 0x10000;
        }

        else
        {
          v35 = 0x20000;
        }

        [MEMORY[0x1E69DD250] animateWithDuration:v35 delay:v33 options:0 animations:0.25 completion:0.0];
      }

      else
      {
        (*(v33 + 2))(v33);
      }

      objc_destroyWeak(v39);
      objc_destroyWeak(&location);
    }
  }
}

void __86__VUIMediaController__updateCurrentPlaybackViewFrameForPlaybackInBackground_animated___block_invoke(uint64_t a1)
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

  v18 = [WeakRetained view];
  [v18 layoutIfNeeded];
}

- (void)_addPlaybackViewControllerForPlayback:(BOOL)a3
{
  v3 = a3;
  v5 = [(VUIMediaController *)self playbackContainerController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 view];
    v8 = [MEMORY[0x1E69DC888] blackColor];
    [v7 setBackgroundColor:v8];

    [(VUIMediaController *)self addChildViewController:v6];
    v9 = [(VUIMediaController *)self view];
    v10 = [v6 view];
    [v9 addSubview:v10];

    if ([(VUIMediaController *)self _shouldShowSecondaryView])
    {
      [(VUIMediaController *)self _playbackContainerViewFrame:v3 hasSecondaryVideoView:1];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [v6 view];
      [v19 setFrame:{v12, v14, v16, v18}];

      v20 = [v6 view];
      [v20 setClipsToBounds:1];

      [(VUIMediaController *)self _secondaryVideoViewFrame:1];
      v25 = [objc_alloc(MEMORY[0x1E69D5A70]) initWithFrame:{v21, v22, v23, v24}];
      CGAffineTransformMakeScale(&v44, 1.0, -1.0);
      [v25 setTransform:&v44];
      v26 = [(VUIMediaController *)self player];
      [v25 setPlayer:v26];

      [v25 setHidden:1];
      [v25 setVideoGravity:1];
      v27 = [(VUIMediaController *)self view];
      v28 = [v6 view];
      [v27 insertSubview:v25 aboveSubview:v28];

      [(VUIMediaController *)self setSecondaryVideoView:v25];
    }

    else
    {
      [(VUIMediaController *)self _playbackContainerViewFrame:v3 hasSecondaryVideoView:0];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v25 = [v6 view];
      [v25 setFrame:{v30, v32, v34, v36}];
    }

    v37 = [v6 view];
    [v37 setHidden:v3];

    [v6 didMoveToParentViewController:self];
    v38 = [(VUIMediaController *)self avPlayerViewController];
    v39 = v38;
    if (v38)
    {
      v40 = [v38 view];
      v41 = [v6 view];
      [v6 addChildViewController:v39];
      v42 = [(VUIMediaController *)self mediaInfo];
      v43 = [v42 overlayView];

      if (v43)
      {
        [v41 insertSubview:v40 belowSubview:v43];
      }

      else
      {
        [v41 addSubview:v40];
      }

      [v41 bounds];
      [v40 setFrame:?];
      [v39 didMoveToParentViewController:v6];
    }
  }
}

- (void)_removePlaybackViewController
{
  v9 = [(VUIMediaController *)self avPlayerViewController];
  v3 = [v9 parentViewController];
  v4 = [(VUIMediaController *)self playbackContainerController];

  if (v3 == v4)
  {
    [v9 willMoveToParentViewController:0];
    v5 = [v9 view];
    [v5 removeFromSuperview];

    [v9 removeFromParentViewController];
  }

  v6 = [(VUIMediaController *)self playbackContainerController];
  v7 = [v6 parentViewController];

  if (v7 == self)
  {
    [v6 willMoveToParentViewController:0];
    v8 = [v6 view];
    [v8 removeFromSuperview];

    [v6 removeFromParentViewController];
  }
}

- (void)_updateAVPlayerViewControllerWithAVPlayerForPlayer:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaController *)self avPlayerViewController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 player];

    if (v7)
    {
      objc_initWeak(&location, self);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __73__VUIMediaController__updateAVPlayerViewControllerWithAVPlayerForPlayer___block_invoke;
      v9[3] = &unk_1E872D9B8;
      objc_copyWeak(&v12, &location);
      v10 = v6;
      v11 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], v9);

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = [v4 avPlayer];
      [v6 setPlayer:v8];
    }
  }
}

void __73__VUIMediaController__updateAVPlayerViewControllerWithAVPlayerForPlayer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = WeakRetained;
      v4 = [*(a1 + 40) avPlayer];
      [v3 setPlayer:v4];

      WeakRetained = v5;
    }
  }
}

- (void)_stateDidChangeFromState:(id)a3 toState:(id)a4 onEvent:(id)a5 context:(id)a6 userInfo:(id)a7
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9 && v10)
  {
    if ([v9 isEqualToString:@"Media controller waiting for timeout while paused"])
    {
      v12 = VUIDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(VUIMediaController *)self name];
        v18 = 138412290;
        v19 = v13;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIMediaController::%@ invalidating waiting for timeout timer in paused state.", &v18, 0xCu);
      }

      v14 = [(VUIMediaController *)self pauseStateTimeoutTimer];
      [v14 invalidate];

      [(VUIMediaController *)self setPauseStateTimeoutTimer:0];
    }

    else if ([v9 isEqualToString:@"Loading image"])
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
    }

    else if ([v9 isEqualToString:@"Showing image"])
    {
      v15 = [(VUIMediaController *)self playbackLoadingTimer];
      if (v15)
      {
        v16 = VUIDefaultLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(VUIMediaController *)self name];
          v18 = 138412546;
          v19 = v17;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIMediaController::%@ invalidating playlist loading timer. Going to new state: %@", &v18, 0x16u);
        }

        [v15 invalidate];
        [(VUIMediaController *)self setPlaybackLoadingTimer:0];
      }
    }
  }
}

- (void)_registerStateMachineHandlers
{
  v168[5] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke;
  aBlock[3] = &unk_1E872F5D0;
  objc_copyWeak(&v160, &location);
  v3 = _Block_copy(aBlock);
  v157[0] = MEMORY[0x1E69E9820];
  v157[1] = 3221225472;
  v157[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2;
  v157[3] = &unk_1E872E4B8;
  objc_copyWeak(&v158, &location);
  v4 = _Block_copy(v157);
  v155[0] = MEMORY[0x1E69E9820];
  v155[1] = 3221225472;
  v155[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3;
  v155[3] = &unk_1E872E4B8;
  objc_copyWeak(&v156, &location);
  v60 = _Block_copy(v155);
  v152[0] = MEMORY[0x1E69E9820];
  v152[1] = 3221225472;
  v152[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_4;
  v152[3] = &unk_1E872FF70;
  objc_copyWeak(&v154, &location);
  v5 = v3;
  v153 = v5;
  v6 = _Block_copy(v152);
  v148[0] = MEMORY[0x1E69E9820];
  v148[1] = 3221225472;
  v148[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_193;
  v148[3] = &unk_1E872FF98;
  objc_copyWeak(&v151, &location);
  v66 = v4;
  v149 = v66;
  v68 = v6;
  v150 = v68;
  v59 = _Block_copy(v148);
  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_195;
  v146[3] = &unk_1E8730010;
  objc_copyWeak(&v147, &location);
  v7 = _Block_copy(v146);
  v144[0] = MEMORY[0x1E69E9820];
  v144[1] = 3221225472;
  v144[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_204;
  v144[3] = &unk_1E8730060;
  objc_copyWeak(&v145, &location);
  v8 = _Block_copy(v144);
  v141[0] = MEMORY[0x1E69E9820];
  v141[1] = 3221225472;
  v141[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_211;
  v141[3] = &unk_1E8730088;
  objc_copyWeak(&v143, &location);
  v62 = v5;
  v142 = v62;
  v64 = _Block_copy(v141);
  v9 = [(VUIMediaController *)self stateMachine];
  v168[0] = @"Not doing anything";
  v168[1] = @"Loading image";
  v168[2] = @"Showing image";
  v168[3] = @"Showing playback in foreground";
  v168[4] = @"Showing playback in background";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:5];
  [v9 registerHandlerForEvent:@"Set image" onStates:v10 withBlock:&__block_literal_global_41];

  v11 = [(VUIMediaController *)self stateMachine];
  v167[0] = @"Loading playlist";
  v167[1] = @"Waiting for player to start loading";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:2];
  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v139[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_4_216;
  v139[3] = &unk_1E872FAD8;
  objc_copyWeak(&v140, &location);
  [v11 registerHandlerForEvent:@"Set image" onStates:v12 withBlock:v139];

  v13 = [(VUIMediaController *)self stateMachine];
  v166[0] = @"Not doing anything";
  v166[1] = @"Loading image";
  v166[2] = @"Showing image";
  v166[3] = @"Finished playback";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:4];
  v136[0] = MEMORY[0x1E69E9820];
  v136[1] = 3221225472;
  v136[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_5;
  v136[3] = &unk_1E872FAB0;
  objc_copyWeak(&v138, &location);
  v15 = v7;
  v137 = v15;
  [v13 registerHandlerForEvent:@"Load image" onStates:v14 withBlock:v136];

  v16 = [(VUIMediaController *)self stateMachine];
  v134[0] = MEMORY[0x1E69E9820];
  v134[1] = 3221225472;
  v134[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_218;
  v134[3] = &unk_1E8730120;
  v17 = v15;
  v135 = v17;
  [v16 registerHandlerForEvent:@"Load image" onState:@"Showing playback in foreground" withBlock:v134];

  v18 = [(VUIMediaController *)self stateMachine];
  v131[0] = MEMORY[0x1E69E9820];
  v131[1] = 3221225472;
  v131[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_219;
  v131[3] = &unk_1E872FAB0;
  objc_copyWeak(&v133, &location);
  v57 = v17;
  v132 = v57;
  [v18 registerHandlerForEvent:@"Load image" onState:@"Showing playback in background" withBlock:v131];

  v19 = [(VUIMediaController *)self stateMachine];
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_4_220;
  v128[3] = &unk_1E872FAB0;
  objc_copyWeak(&v130, &location);
  v20 = v8;
  v129 = v20;
  [v19 registerHandlerForEvent:@"Show image" onState:@"Loading image" withBlock:v128];

  v21 = [(VUIMediaController *)self stateMachine];
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_223;
  v126[3] = &unk_1E872FAD8;
  objc_copyWeak(&v127, &location);
  [v21 registerHandlerForEvent:@"Show image" onState:@"Finished playback" withBlock:v126];

  v22 = [(VUIMediaController *)self stateMachine];
  v165[0] = @"Not doing anything";
  v165[1] = @"Loading playlist";
  v165[2] = @"Showing playback in foreground";
  v165[3] = @"Showing playback in background";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:4];
  [v22 registerHandlerForEvent:@"Set playlist" onStates:v23 withBlock:&__block_literal_global_227];

  v24 = [(VUIMediaController *)self stateMachine];
  v124[0] = MEMORY[0x1E69E9820];
  v124[1] = 3221225472;
  v124[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_4_228;
  v124[3] = &unk_1E872FAD8;
  objc_copyWeak(&v125, &location);
  [v24 registerHandlerForEvent:@"Set playlist" onState:@"Loading image" withBlock:v124];

  v25 = [(VUIMediaController *)self stateMachine];
  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_5_229;
  v121[3] = &unk_1E872FAB0;
  objc_copyWeak(&v123, &location);
  v58 = v20;
  v122 = v58;
  [v25 registerHandlerForEvent:@"Set playlist" onState:@"Showing image" withBlock:v121];

  v26 = [(VUIMediaController *)self stateMachine];
  v164[0] = @"Not doing anything";
  v164[1] = @"Showing image";
  v164[2] = @"Loading image";
  v164[3] = @"Loading playlist";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:4];
  v119[0] = MEMORY[0x1E69E9820];
  v119[1] = 3221225472;
  v119[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_6_230;
  v119[3] = &unk_1E8730120;
  v28 = v68;
  v120 = v28;
  [v26 registerHandlerForEvent:@"Load playlist" onStates:v27 withBlock:v119];

  v29 = [(VUIMediaController *)self stateMachine];
  v163[0] = @"Showing playback in foreground";
  v163[1] = @"Showing playback in background";
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:2];
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_8;
  v116[3] = &unk_1E8730170;
  v69 = v66;
  v117 = v69;
  v65 = v64;
  v118 = v65;
  [v29 registerHandlerForEvent:@"Load playlist" onStates:v30 withBlock:v116];

  v31 = [(VUIMediaController *)self stateMachine];
  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_9;
  v113[3] = &unk_1E872FAB0;
  objc_copyWeak(&v115, &location);
  v32 = v62;
  v114 = v32;
  [v31 registerHandlerForEvent:@"Show playback" onState:@"Loading playlist" withBlock:v113];

  v33 = [(VUIMediaController *)self stateMachine];
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_12;
  v110[3] = &unk_1E872FAB0;
  objc_copyWeak(&v112, &location);
  v34 = v32;
  v111 = v34;
  [v33 registerHandlerForEvent:@"Show playback" onState:@"Showing image" withBlock:v110];

  v35 = [(VUIMediaController *)self stateMachine];
  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_15;
  v107[3] = &unk_1E872FAB0;
  objc_copyWeak(&v109, &location);
  v67 = v28;
  v108 = v67;
  [v35 registerHandlerForEvent:@"Player state changed" onState:@"Waiting for player to start loading" withBlock:v107];

  v36 = [(VUIMediaController *)self stateMachine];
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_16;
  v105[3] = &unk_1E872FAD8;
  objc_copyWeak(&v106, &location);
  [v36 registerHandlerForEvent:@"Player state changed" onState:@"Loading playlist" withBlock:v105];

  v37 = [(VUIMediaController *)self stateMachine];
  v162[0] = @"Media controller waiting for timeout while paused";
  v162[1] = @"Showing playback in background";
  v162[2] = @"Showing playback in foreground";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:3];
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_233;
  v103[3] = &unk_1E872FAD8;
  objc_copyWeak(&v104, &location);
  [v37 registerHandlerForEvent:@"Player state changed" onStates:v38 withBlock:v103];

  v39 = [(VUIMediaController *)self stateMachine];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_234;
  v100[3] = &unk_1E872FAB0;
  objc_copyWeak(&v102, &location);
  v63 = v60;
  v101 = v63;
  [v39 registerDefaultHandlerForEvent:@"Finished playback" withBlock:v100];

  v40 = [(VUIMediaController *)self stateMachine];
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_5_237;
  v98[3] = &unk_1E872FAD8;
  objc_copyWeak(&v99, &location);
  [v40 registerDefaultHandlerForEvent:@"Playback error occurred" withBlock:v98];

  v41 = [(VUIMediaController *)self stateMachine];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_7_239;
  v96[3] = &unk_1E872FAD8;
  objc_copyWeak(&v97, &location);
  [v41 registerHandlerForEvent:@"Transition to foreground" onState:@"Loading image" withBlock:v96];

  v42 = [(VUIMediaController *)self stateMachine];
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_8_240;
  v94[3] = &unk_1E872FAD8;
  objc_copyWeak(&v95, &location);
  [v42 registerHandlerForEvent:@"Transition to foreground" onState:@"Showing playback in background" withBlock:v94];

  v43 = [(VUIMediaController *)self stateMachine];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_10_242;
  v92[3] = &unk_1E872FAD8;
  objc_copyWeak(&v93, &location);
  [v43 registerHandlerForEvent:@"Transition background" onState:@"Loading image" withBlock:v92];

  v44 = [(VUIMediaController *)self stateMachine];
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_11_243;
  v90[3] = &unk_1E872FAD8;
  objc_copyWeak(&v91, &location);
  [v44 registerHandlerForEvent:@"Transition background" onState:@"Showing playback in foreground" withBlock:v90];

  v45 = [(VUIMediaController *)self stateMachine];
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_13_245;
  v87[3] = &unk_1E872FAB0;
  objc_copyWeak(&v89, &location);
  v61 = v34;
  v88 = v61;
  [v45 registerHandlerForEvent:@"Play" onState:@"Showing playback in background" withBlock:v87];

  v46 = [(VUIMediaController *)self stateMachine];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_14_246;
  v85[3] = &unk_1E872FAD8;
  objc_copyWeak(&v86, &location);
  [v46 registerHandlerForEvent:@"Play" onState:@"Showing playback in foreground" withBlock:v85];

  v47 = [(VUIMediaController *)self stateMachine];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_15_247;
  v83[3] = &unk_1E872FAD8;
  objc_copyWeak(&v84, &location);
  [v47 registerHandlerForEvent:@"Play" onState:@"Media controller waiting for timeout while paused" withBlock:v83];

  v48 = [(VUIMediaController *)self stateMachine];
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_17_249;
  v81[3] = &unk_1E872FAD8;
  objc_copyWeak(&v82, &location);
  [v48 registerHandlerForEvent:@"Pause" onState:@"Showing playback in background" withBlock:v81];

  v49 = [(VUIMediaController *)self stateMachine];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_250;
  v79[3] = &unk_1E872FAD8;
  objc_copyWeak(&v80, &location);
  [v49 registerHandlerForEvent:@"Pause" onState:@"Showing playback in foreground" withBlock:v79];

  v50 = [(VUIMediaController *)self stateMachine];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_251;
  v76[3] = &unk_1E872FAB0;
  objc_copyWeak(&v78, &location);
  v51 = v69;
  v77 = v51;
  [v50 registerDefaultHandlerForEvent:@"Stop" withBlock:v76];

  v52 = [(VUIMediaController *)self stateMachine];
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_252;
  v72[3] = &unk_1E8730210;
  objc_copyWeak(&v75, &location);
  v53 = v58;
  v73 = v53;
  v54 = v59;
  v74 = v54;
  [v52 registerHandlerForEvent:@"Replay" onState:@"Showing image" withBlock:v72];

  v55 = [(VUIMediaController *)self stateMachine];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_5_254;
  v70[3] = &unk_1E8730120;
  v56 = v67;
  v71 = v56;
  [v55 registerHandlerForEvent:@"Restore avPlayerViewController" onState:@"Not doing anything" withBlock:v70];

  objc_destroyWeak(&v75);
  objc_destroyWeak(&v78);
  objc_destroyWeak(&v80);
  objc_destroyWeak(&v82);
  objc_destroyWeak(&v84);
  objc_destroyWeak(&v86);

  objc_destroyWeak(&v89);
  objc_destroyWeak(&v91);
  objc_destroyWeak(&v93);
  objc_destroyWeak(&v95);
  objc_destroyWeak(&v97);
  objc_destroyWeak(&v99);

  objc_destroyWeak(&v102);
  objc_destroyWeak(&v104);
  objc_destroyWeak(&v106);

  objc_destroyWeak(&v109);
  objc_destroyWeak(&v112);

  objc_destroyWeak(&v115);
  objc_destroyWeak(&v123);
  objc_destroyWeak(&v125);
  objc_destroyWeak(&v127);

  objc_destroyWeak(&v130);
  objc_destroyWeak(&v133);

  objc_destroyWeak(&v138);
  objc_destroyWeak(&v140);

  objc_destroyWeak(&v143);
  objc_destroyWeak(&v145);

  objc_destroyWeak(&v147);
  objc_destroyWeak(&v151);

  objc_destroyWeak(&v154);
  objc_destroyWeak(&v156);

  objc_destroyWeak(&v158);
  objc_destroyWeak(&v160);
  objc_destroyWeak(&location);
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAutomaticPlaybackStop:0];
  v7[0] = @"VUIMediaControllerIsPlayingFullscreenKey";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "isFullscreenPlaybackIntent")}];
  v8[0] = v2;
  v7[1] = @"VUIMediaControllerIsAutomaticPlaybackStartKey";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "isAutomaticPlaybackStart")}];
  v8[1] = v3;
  v7[2] = @"VUIMediaControllerPlaybackStartReasonKey";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(WeakRetained, "vpafPlaybackStartReason")}];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"VUIMediaControllerWillStartPlaybackNotification" object:WeakRetained userInfo:v5];
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = @"VUIMediaControllerIsAutomaticPlaybackStopKey";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "isAutomaticPlaybackStop")}];
  v6[1] = @"VUIMediaControllerPlaybackStopReasonKey";
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(WeakRetained, "vpafPlaybackStopReason")}];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"VUIMediaControllerWillStopPlaybackNotification" object:WeakRetained userInfo:v4];
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = @"VUIMediaControllerIsAutomaticPlaybackStopKey";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "isAutomaticPlaybackStop")}];
  v6[1] = @"VUIMediaControllerPlaybackStopReasonKey";
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(WeakRetained, "vpafPlaybackStopReason")}];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"VUIMediaControllerDidStopPlaybackNotification" object:WeakRetained userInfo:v4];
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_4(uint64_t a1, void *a2, char a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412290;
    v33 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIMediaController::will create a new playback view controller with playlist:<%@>", &v32, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained player];

  if (!v8)
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIMediaController::creating player because no player was supplied.", &v32, 2u);
    }

    v10 = objc_alloc(MEMORY[0x1E69D5A50]);
    v11 = [WeakRetained name];
    v12 = [v10 initWithName:v11];

    v13 = [WeakRetained mediaInfo];
    v14 = [v13 intent];
    v15 = VUIRTCPlaybackBackground;
    if (v14)
    {
      v15 = VUIRTCPlaybackFullscreen;
    }

    v16 = *v15;

    [v12 setReportingValueWithString:v16 forKey:@"initiator"];
    [v12 setUpdatesMediaRemoteInfoAutomatically:0];
    [WeakRetained setPlayer:v12];
    [WeakRetained setDidWeCreatePlayer:1];
    v17 = [WeakRetained player];
    [v17 addObserver:WeakRetained forKeyPath:@"avPlayer" options:0 context:__PlayerAVPlayerKVOContext];
  }

  if (v5)
  {
    v18 = [WeakRetained player];
    [v18 setPlaylist:v5];
  }

  [WeakRetained setPlaybackStopReason:2];
  [WeakRetained _registerPlayerNotifications];
  v19 = objc_opt_new();
  [WeakRetained setPlaybackContainerController:v19];

  v20 = [WeakRetained mediaInfo];
  if (v20)
  {
    v21 = [WeakRetained mediaInfo];
    v22 = [v21 intent] == 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = [WeakRetained avPlayerViewController];

  if (!v23)
  {
    v24 = VUIDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUIMediaController::creating avPlayerViewController because none was supplied.", &v32, 2u);
    }

    v25 = [objc_alloc(MEMORY[0x1E6958608]) initWithNibName:0 bundle:0];
    v26 = [v25 view];
    v27 = [WeakRetained view];
    [v27 bounds];
    [v26 setFrame:?];

    v28 = [v5 currentMediaItem];
    v29 = [v28 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
    [v25 setAllowsPictureInPicturePlayback:{objc_msgSend(v29, "isEqualToString:", *MEMORY[0x1E69D5EC0]) ^ 1}];
    [WeakRetained setAvPlayerViewController:v25];
    if ([WeakRetained didWeCreatePlayer])
    {
      v30 = [WeakRetained player];
      [WeakRetained _updateAVPlayerViewControllerWithAVPlayerForPlayer:v30];
    }
  }

  [WeakRetained _addPlaybackViewControllerForPlayback:v22];
  if ((a3 & 1) == 0 && v22)
  {
    v31 = [WeakRetained player];
    [v31 pause];
  }

  if (!v22)
  {
    (*(*(a1 + 32) + 16))();
    [WeakRetained setState:3];
  }
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_193(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIMediaController::starting to load the playlist:<%@>", &v12, 0xCu);
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained player];
    if (v6 && (v7 = v6, [WeakRetained player], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "playlist"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", v3), v9, v8, v7, (v10 & 1) == 0))
    {
      [WeakRetained setPendingPlaylist:v3];
      (*(*(a1 + 32) + 16))();
      v11 = [WeakRetained player];
      [v11 stop];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_195(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, v5);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_196;
  v17 = &unk_1E872FFE8;
  objc_copyWeak(&v19, &location);
  v8 = v6;
  v18 = v8;
  objc_copyWeak(&v20, (a1 + 32));
  [v5 setCompletionHandler:&v14];
  [WeakRetained setCurrentImageProxy:{v5, v14, v15, v16, v17}];
  v9 = [WeakRetained mediaInfo];
  v10 = [v9 shouldDelayLoadingImage];

  v11 = [WeakRetained proxyImageView];
  v12 = [v11 image];

  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    [WeakRetained performSelector:sel__delayLoadImage_ withObject:v5 afterDelay:5.0];
  }

  else
  {
    [v5 load];
  }

  objc_destroyWeak(&v20);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_196(id *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_196_cold_1(WeakRetained, a4, v10);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_197;
  aBlock[3] = &unk_1E872D790;
  v22 = a1[4];
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (a4)
  {
    [WeakRetained setCompletionHandler:0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v15 = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_199;
    v16 = &unk_1E872DFB8;
    objc_copyWeak(&v20, a1 + 6);
    v17 = v8;
    v18 = v7;
    v19 = v12;
    v13 = v14;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v15(v13);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v13);
    }

    objc_destroyWeak(&v20);
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_197(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v4 = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_198;
  v5 = &unk_1E872FFC0;
  v6 = *(a1 + 32);
  v7 = a2;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4(v3);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v3);
  }
}

uint64_t __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_198(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_199(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_199_cold_1((a1 + 32), v4);
    }

    v5 = *(*(a1 + 48) + 16);
  }

  else
  {
    v6 = [WeakRetained proxyImageView];
    v7 = [*(a1 + 40) uiImage];
    [v6 setImage:v7];

    v5 = *(*(a1 + 48) + 16);
  }

  v5();
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_204(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_205;
  aBlock[3] = &unk_1E872D9B8;
  objc_copyWeak(&v33, (a1 + 32));
  v5 = v3;
  v31 = v5;
  v32 = WeakRetained;
  v6 = _Block_copy(aBlock);
  if ([WeakRetained isBackgrounded])
  {
    if ([WeakRetained isPlaybackEnabled])
    {
      v7 = [WeakRetained playbackLoadingTimer];
      v8 = v7;
      if (v7)
      {
        [v7 invalidate];
        [WeakRetained setPlaybackLoadingTimer:0];
      }

      if (PlaybackDelayTimeIntervalOverride_onceToken != -1)
      {
        __51__VUIMediaController__registerStateMachineHandlers__block_invoke_204_cold_1();
      }

      v9 = *&PlaybackDelayTimeIntervalOverride_playbackDelayInterval;
      v10 = +[VUIFeaturesConfiguration sharedInstance];
      v11 = [v10 autoPlayConfig];
      [v11 autoPlayDelayInterval];
      v13 = v12;

      v14 = [WeakRetained mediaInfo];
      [v14 playbackDelayInterval];
      v16 = v15;

      if (v13 <= 0.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = v13;
      }

      if (v9 > 0.0)
      {
        v17 = v9;
      }

      if (v17 > 0.0)
      {
        v18 = v17 + -1.0;
      }

      else
      {
        v18 = 0.0;
      }

      if (v18 == 0.0)
      {
        v24 = VUIDefaultLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [WeakRetained name];
          *buf = 134218242;
          v35 = WeakRetained;
          v36 = 2112;
          v37 = v25;
          _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUIMediaController::(%p: %@) since playback delay interval is 0.0, loading playlist now.", buf, 0x16u);
        }

        v26 = [MEMORY[0x1E695DF00] date];
        [WeakRetained setPlaybackLoadingStartDate:v26];

        v6[2](v6);
      }

      else
      {
        v19 = VUIDefaultLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [WeakRetained name];
          *buf = 134218498;
          v35 = WeakRetained;
          v36 = 2112;
          v37 = v20;
          v38 = 2048;
          v39 = v18;
          _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIMediaController::(%p: %@) scheduling a playlist loading timer with interval: (%f)", buf, 0x20u);
        }

        v21 = MEMORY[0x1E695DFF0];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_209;
        v27[3] = &unk_1E8730038;
        objc_copyWeak(&v29, (a1 + 32));
        v28 = v6;
        v22 = [v21 scheduledTimerWithTimeInterval:0 repeats:v27 block:v18];

        [WeakRetained setPlaybackLoadingTimer:v22];
        objc_destroyWeak(&v29);
        v8 = v22;
      }
    }

    else
    {
      v8 = VUIDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [WeakRetained name];
        *buf = 134218242;
        v35 = WeakRetained;
        v36 = 2112;
        v37 = v23;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIMediaController::(%p: %@) playback is not enabled, not setting loading timer.", buf, 0x16u);
      }
    }
  }

  else
  {
    v6[2](v6);
  }

  objc_destroyWeak(&v33);
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_205(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 applicationState];

  v5 = +[VUIPlaybackManager sharedInstance];
  v6 = [v5 isFullscreenPlaybackUIBeingShown];

  if (v4 || (v6 & 1) != 0)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = [v10 name];
      v12 = VUIBoolLogString();
      v13 = 134218754;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2048;
      v18 = v4;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIMediaController::(%p: %@) not loading playlist applicationState:<%ld> isFullscreenPlaybackUIBeingShown:<%@>.", &v13, 0x2Au);
    }

    goto LABEL_7;
  }

  if (*(a1 + 32))
  {
    v7 = [WeakRetained stateMachine];
    v8 = *(a1 + 32);
    v21 = @"PlaylistKey";
    v22[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [v7 postEvent:@"Load playlist" withContext:0 userInfo:v9];

LABEL_7:
  }
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_209(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
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
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIMediaController::(%p: %@) loading timer fired, isPlaybackEnabled: (%@)", &v7, 0x20u);
  }

  if ([WeakRetained isPlaybackEnabled])
  {
    v6 = [MEMORY[0x1E695DF00] date];
    [WeakRetained setPlaybackLoadingStartDate:v6];

    (*(*(a1 + 32) + 16))();
  }
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_211(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v26 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained player];
    v6 = [v5 playlist];

    if (([v26 isEqualToPlaylist:v6] & 1) == 0)
    {
      v7 = [WeakRetained player];
      v8 = [v7 playlist];
      v9 = [v8 activeListIndex];

      v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v11 = [WeakRetained player];
      v12 = [v11 playlist];
      v13 = [v12 count];

      if (v13)
      {
        v14 = 0;
        do
        {
          if (v9 != v14)
          {
            [v10 addIndex:v14];
          }

          ++v14;
          v15 = [WeakRetained player];
          v16 = [v15 playlist];
          v17 = [v16 count];
        }

        while (v14 < v17);
      }

      v18 = [WeakRetained player];
      v19 = [v18 playlist];
      [v19 removeItemsAtIndexes:v10];

      v20 = [WeakRetained player];
      v21 = [v20 playlist];
      v22 = [v26 trackList];
      [v21 addItems:v22];

      v23 = [WeakRetained player];
      [v23 changeMediaInDirection:0];

      v24 = [WeakRetained player];
      v25 = [v24 playlist];
      [v25 removeItemAtIndex:0];

      (*(*(a1 + 32) + 16))(*(a1 + 32), [WeakRetained isBackgrounded] ^ 1);
    }

    v3 = v26;
  }
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_213(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a5;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_215;
  v15 = &unk_1E872D990;
  v16 = v6;
  v17 = v7;
  v8 = v7;
  v9 = v6;
  [v9 executeBlockAfterCurrentStateTransition:&v12];
  v10 = [v9 currentState];

  return v10;
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_4_216(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v8 objectForKeyedSubscript:@"ImageProxyKey"];

  if (v10)
  {
    [WeakRetained setPendingImageProxy:v10];
  }

  v11 = [v7 currentState];

  return v11;
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"ImageProxyKey"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_6;
  v18[3] = &unk_1E87300F8;
  objc_copyWeak(&v23, (a1 + 40));
  v14 = v13;
  v19 = v14;
  v22 = *(a1 + 32);
  v15 = v9;
  v20 = v15;
  v16 = v12;
  v21 = v16;
  [v15 executeBlockAfterCurrentStateTransition:v18];

  objc_destroyWeak(&v23);
  return @"Loading image";
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_6(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained currentImageProxy];
  if (!v3 || ([WeakRetained currentImageProxy], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqual:", *(a1 + 32)), v4, v3, (v5 & 1) == 0))
  {
    v6 = [WeakRetained currentImageProxy];

    if (v6)
    {
      v7 = VUIDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [WeakRetained currentImageProxy];
        v9 = *(a1 + 32);
        *buf = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIMediaController::cancelling loading of current image proxy: [%@], new image proxy to load: [%@]", buf, 0x16u);
      }

      v10 = [WeakRetained currentImageProxy];
      [v10 cancel];

      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:WeakRetained];
      [WeakRetained setCurrentImageProxy:0];
    }
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_217;
  v13[3] = &unk_1E87300D0;
  objc_copyWeak(&v16, (a1 + 64));
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  (*(v11 + 16))(v11, v12, v13);

  objc_destroyWeak(&v16);
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_217(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained mediaInfo];
  v5 = [v4 imageProxies];
  v6 = [v5 firstObject];
  v7 = [WeakRetained currentImageProxy];
  v8 = [v6 isEqual:v7];

  if (a2 && v8)
  {
    [*(a1 + 32) postEvent:@"Show image" withContext:0 userInfo:*(a1 + 40)];
  }
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_218(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"ImageProxyKey"];
  (*(*(a1 + 32) + 16))();
  v9 = [v7 currentState];

  return v9;
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_219(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained mediaInfo];
  v11 = [v10 intent];

  if (v11 == 1)
  {
    v12 = [v8 objectForKeyedSubscript:@"ImageProxyKey"];
    (*(*(a1 + 32) + 16))();
  }

  v13 = [v7 currentState];

  return v13;
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_4_220(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
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

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setState:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_5_221;
  v18[3] = &unk_1E8730148;
  objc_copyWeak(&v20, (a1 + 40));
  v21 = v15;
  v19 = *(a1 + 32);
  [v9 executeBlockAfterCurrentStateTransition:v18];

  objc_destroyWeak(&v20);
  return @"Showing image";
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_5_221(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_6_222;
  v4[3] = &unk_1E872E828;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  [WeakRetained _swapActiveMedia:1 animated:v3 completion:v4];

  objc_destroyWeak(&v6);
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_6_222(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_7;
  v2[3] = &unk_1E872E828;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pendingPlaylist];
  if (v3)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIMediaController::we have a pending playlist, starting loading timer.", v5, 2u);
    }

    (*(*(a1 + 32) + 16))();
    [WeakRetained setPendingPlaylist:0];
  }
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_223(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
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
  [WeakRetained setState:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_224;
  v18[3] = &unk_1E872EDE0;
  objc_copyWeak(&v19, (a1 + 32));
  v20 = v15;
  [v9 executeBlockAfterCurrentStateTransition:v18];
  objc_destroyWeak(&v19);

  return @"Showing image";
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_224(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _swapActiveMedia:1 animated:*(a1 + 40) completion:0];
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_225(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  [v6 postEvent:@"Load playlist" withContext:0 userInfo:a5];
  v7 = [v6 currentState];

  return v7;
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_4_228(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"PlaylistKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPendingPlaylist:v8];

  v10 = [v7 currentState];

  return v10;
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_5_229(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 objectForKeyedSubscript:@"PlaylistKey"];
  v11 = [WeakRetained mediaInfo];
  v12 = [v11 intent];

  if (v12)
  {
    [v8 postEvent:@"Load playlist" withContext:0 userInfo:v7];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v13 = [v8 currentState];

  return v13;
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_6_230(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"PlaylistKey"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_7_231;
  v12[3] = &unk_1E872DC10;
  v9 = *(a1 + 32);
  v13 = v8;
  v14 = v9;
  v10 = v8;
  [v7 executeBlockAfterCurrentStateTransition:v12];

  return @"Waiting for player to start loading";
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"PlaylistKey"];
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  v9 = [v7 currentState];

  return v9;
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
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

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isBackgrounded])
  {
    (*(*(a1 + 32) + 16))();
    v17 = [WeakRetained player];
    [v17 play];

    v18 = [WeakRetained player];
    [v18 setMuted:1];

    [WeakRetained setState:2];
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_10;
  v23[3] = &unk_1E8730198;
  v19 = v9;
  v24 = v19;
  objc_copyWeak(&v26, (a1 + 40));
  v25 = WeakRetained;
  [WeakRetained _swapActiveMedia:0 animated:v15 completion:v23];
  if ([WeakRetained isBackgrounded])
  {
    v20 = @"Showing playback in background";
  }

  else
  {
    v20 = @"Showing playback in foreground";
  }

  v21 = v20;
  objc_destroyWeak(&v26);

  return v20;
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_11;
  v5[3] = &unk_1E872D9B8;
  objc_copyWeak(&v8, (a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 executeBlockAfterCurrentStateTransition:v5];

  objc_destroyWeak(&v8);
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_11(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained pendingImageProxy];

  if (v3)
  {
    v7 = @"ImageProxyKey";
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) pendingImageProxy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 postEvent:@"Load image" withContext:0 userInfo:v6];

    [WeakRetained setPendingImageProxy:0];
  }
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
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

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isBackgrounded])
  {
    (*(*(a1 + 32) + 16))();
    v17 = [WeakRetained player];
    [v17 play];

    v18 = [WeakRetained player];
    [v18 setMuted:1];

    [WeakRetained setState:2];
  }

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_13;
  v26 = &unk_1E87301C0;
  v19 = v9;
  v27 = v19;
  objc_copyWeak(&v28, (a1 + 40));
  [WeakRetained _swapActiveMedia:0 animated:v15 completion:&v23];
  if ([WeakRetained isBackgrounded])
  {
    v20 = @"Showing playback in background";
  }

  else
  {
    v20 = @"Showing playback in foreground";
  }

  v21 = v20;
  objc_destroyWeak(&v28);

  return v20;
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_13(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_14;
  v3[3] = &unk_1E872F038;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 executeBlockAfterCurrentStateTransition:v3];

  objc_destroyWeak(&v5);
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_14(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pendingImageProxy];

  if (v3)
  {
    v4 = *(a1 + 32);
    v7 = @"ImageProxyKey";
    v5 = [WeakRetained pendingImageProxy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 postEvent:@"Load image" withContext:0 userInfo:v6];

    [WeakRetained setPendingImageProxy:0];
  }
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_15(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [v7 currentState];

  v11 = [MEMORY[0x1E69D5A40] loading];

  if (v8 == v11)
  {
    [WeakRetained setPlayerReadyToBePlayed:0];

    v10 = @"Loading playlist";
  }

  else if (([WeakRetained _shouldIgnorePlaybackStop] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69D5A40] stopped];

    if (v8 == v12)
    {
      v13 = [WeakRetained pendingPlaylist];

      if (v13)
      {
        [WeakRetained _cleanUpEverythingPlaybackRelated];
        v14 = *(a1 + 32);
        v15 = [WeakRetained pendingPlaylist];
        (*(v14 + 16))(v14, v15, 0);

        [WeakRetained setPendingPlaylist:0];
      }
    }
  }

  return v10;
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_16(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = [v9 currentState];
  v16 = [MEMORY[0x1E69D5A40] paused];

  if (v13 != v16)
  {
    v17 = [MEMORY[0x1E69D5A40] playing];

    if (v13 == v17)
    {

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_232;
      v27[3] = &unk_1E872F038;
      objc_copyWeak(&v29, (a1 + 32));
      v28 = v9;
      [v28 executeBlockAfterCurrentStateTransition:v27];

      objc_destroyWeak(&v29);
      v15 = @"Showing playback in foreground";
    }

    else if (([WeakRetained _shouldIgnorePlaybackStop] & 1) == 0)
    {
      v18 = [MEMORY[0x1E69D5A40] stopped];

      if (v13 == v18)
      {
        v34 = @"AnimatedKey";
        v35[0] = MEMORY[0x1E695E118];
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        [v9 postEvent:@"Finished playback" withContext:0 userInfo:v19];
      }
    }

    goto LABEL_18;
  }

  if ([WeakRetained isPlaybackEnabled])
  {
    v20 = [WeakRetained playbackLoadingStartDate];
    if (v20)
    {
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:v20];
      v23 = v22;

      [WeakRetained setPlaybackLoadingStartDate:0];
      if ([WeakRetained isBackgrounded] && v23 < 1.0)
      {
        when = dispatch_time(0, ((1.0 - v23) * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_17;
        block[3] = &unk_1E872F038;
        objc_copyWeak(&v33, (a1 + 32));
        v32 = v9;
        dispatch_after(when, MEMORY[0x1E69E96A0], block);

        objc_destroyWeak(&v33);
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      [WeakRetained isBackgrounded];
    }

    [v9 postEvent:@"Show playback" withContext:0 userInfo:0];
    goto LABEL_17;
  }

  v24 = VUIDefaultLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUIMediaController::playback is not enabled yet. Will show playback when it gets enabled.", buf, 2u);
  }

LABEL_18:

  return v15;
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_17(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [WeakRetained isPlaybackEnabled];
    v4 = VUIBoolLogString();
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIMediaController::dispatch_after fired in StateLoadingPlaylist, isPlaybackEnabled: (%@)", &v5, 0xCu);
  }

  if ([WeakRetained isPlaybackEnabled])
  {
    [*(a1 + 32) postEvent:@"Show playback" withContext:0 userInfo:0];
  }
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_232(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained pendingImageProxy];

  if (v3)
  {
    v4 = *(a1 + 32);
    v7 = @"ImageProxyKey";
    v5 = [WeakRetained pendingImageProxy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 postEvent:@"Load image" withContext:0 userInfo:v6];

    [WeakRetained setPendingImageProxy:0];
  }
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_233(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [a5 objectForKeyedSubscript:@"PlaybackStateKey"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v7 currentState];
  v11 = [MEMORY[0x1E69D5A40] stopped];
  v12 = v11;
  if (v8 == v11)
  {
    v13 = [WeakRetained _shouldIgnorePlaybackStop];

    if ((v13 & 1) == 0)
    {
      v20 = @"AnimatedKey";
      v21[0] = MEMORY[0x1E695E118];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      [v7 postEvent:@"Finished playback" withContext:0 userInfo:v18];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = [MEMORY[0x1E69D5A40] paused];

  if (v8 != v14)
  {
    v15 = [WeakRetained isBackgrounded];
    v16 = @"Showing playback in foreground";
    if (v15)
    {
      v16 = @"Showing playback in background";
    }

    v17 = v16;

    v10 = v17;
  }

LABEL_9:

  return v10;
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_234(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_4_235;
  v16[3] = &unk_1E87301E8;
  objc_copyWeak(&v20, (a1 + 40));
  v19 = *(a1 + 32);
  v13 = v9;
  v17 = v13;
  v14 = v12;
  v18 = v14;
  [v13 executeBlockAfterCurrentStateTransition:v16];

  objc_destroyWeak(&v20);
  return @"Finished playback";
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_4_235(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  (*(*(a1 + 48) + 16))();
  [WeakRetained _cleanUpEverythingPlaybackRelated];
  [WeakRetained setPlaybackEnabled:0];
  if ([WeakRetained popWhenPlayerStops])
  {
    v2 = [WeakRetained navigationController];
    v3 = [v2 topViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [WeakRetained navigationController];
      v5 = [v4 popViewControllerAnimated:1];
    }

    else
    {
      v6 = [WeakRetained mediaInfo];
      v7 = [v6 intent];

      if (!v7)
      {
        [*(a1 + 32) postEvent:@"Show image" withContext:0 userInfo:*(a1 + 40)];
      }
    }
  }

  else
  {
    [*(a1 + 32) postEvent:@"Show image" withContext:0 userInfo:*(a1 + 40)];
  }
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_5_237(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setState:1];
  [WeakRetained _cleanUpEverythingPlaybackRelated];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_6_238;
  v17[3] = &unk_1E872D9B8;
  objc_copyWeak(&v20, (a1 + 32));
  v14 = v9;
  v18 = v14;
  v15 = v12;
  v19 = v15;
  [v14 executeBlockAfterCurrentStateTransition:v17];

  objc_destroyWeak(&v20);
  return @"Finished playback";
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_6_238(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained pendingImageProxy];

  v4 = *(a1 + 32);
  if (v3)
  {
    v7 = @"ImageProxyKey";
    v5 = [WeakRetained pendingImageProxy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 postEvent:@"Load image" withContext:0 userInfo:v6];

    [WeakRetained setPendingImageProxy:0];
  }

  else
  {
    [*(a1 + 32) postEvent:@"Show image" withContext:0 userInfo:*(a1 + 40)];
  }
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_7_239(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained pendingPlaylist];
  v6 = v5;
  if (v5)
  {
    v10 = @"PlaylistKey";
    v11[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v3 postEvent:@"Load playlist" withContext:0 userInfo:v7];

    [WeakRetained setPendingPlaylist:0];
    v8 = [v3 currentState];
  }

  else
  {
    v8 = @"Showing playback in foreground";
  }

  return v8;
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_8_240(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
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
  [WeakRetained setShowsVideoControls:1];
  [WeakRetained _updateCurrentPlaybackViewFrameForPlaybackInBackground:0 animated:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_9_241;
  v18[3] = &unk_1E872E4B8;
  objc_copyWeak(&v19, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v18];
  objc_destroyWeak(&v19);

  return @"Showing playback in foreground";
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_9_241(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = @"VUIMediaControllerIsPlayingFullscreenKey";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "isFullscreenPlaybackIntent")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"VUIMediaControllerForegroundStateDidChangeNotification" object:WeakRetained userInfo:v3];
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_10_242(uint64_t a1, void *a2)
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

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_11_243(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
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
  [WeakRetained setShowsVideoControls:0];
  [WeakRetained _updateCurrentPlaybackViewFrameForPlaybackInBackground:1 animated:v15];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_12_244;
  v18[3] = &unk_1E872E4B8;
  objc_copyWeak(&v19, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v18];
  objc_destroyWeak(&v19);

  return @"Showing playback in background";
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_12_244(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = @"VUIMediaControllerIsPlayingFullscreenKey";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "isFullscreenPlaybackIntent")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"VUIMediaControllerForegroundStateDidChangeNotification" object:WeakRetained userInfo:v3];
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_13_245(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained player];
  v6 = [v5 state];
  v7 = [MEMORY[0x1E69D5A40] playing];

  if (v6 != v7)
  {
    (*(*(a1 + 32) + 16))();
    v8 = [WeakRetained player];
    [v8 play];
  }

  v9 = [v3 currentState];

  return v9;
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_14_246(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained player];
  v6 = [v5 state];
  v7 = [MEMORY[0x1E69D5A40] playing];

  if (v6 != v7)
  {
    v8 = [WeakRetained player];
    [v8 play];
  }

  v9 = [v3 currentState];

  return v9;
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_15_247(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_16_248;
  v14[3] = &unk_1E872E4B8;
  objc_copyWeak(&v15, (a1 + 32));
  [v9 executeBlockAfterCurrentStateTransition:v14];
  objc_destroyWeak(&v15);

  return @"Showing playback in background";
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_16_248(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  v2 = [v1 state];
  v3 = [MEMORY[0x1E69D5A40] playing];

  if (v2 != v3)
  {
    v4 = [WeakRetained player];
    [v4 play];
  }
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_17_249(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_18;
  v15[3] = &unk_1E872F038;
  objc_copyWeak(&v17, (a1 + 32));
  v13 = v9;
  v16 = v13;
  [v13 executeBlockAfterCurrentStateTransition:v15];

  objc_destroyWeak(&v17);
  return @"Media controller waiting for timeout while paused";
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained player];
  v4 = [v3 state];
  v5 = [MEMORY[0x1E69D5A40] paused];

  if (v4 != v5)
  {
    v6 = [WeakRetained player];
    [v6 pause];

    v7 = [WeakRetained pauseStateTimeoutTimer];
    [v7 invalidate];

    [WeakRetained setPauseStateTimeoutTimer:0];
    v8 = MEMORY[0x1E695DFF0];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_19;
    v13 = &unk_1E872F970;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = *(a1 + 32);
    v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:&v10 block:480.0];
    [WeakRetained setPauseStateTimeoutTimer:{v9, v10, v11, v12, v13}];

    objc_destroyWeak(&v15);
  }
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_19(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained name];
    v5 = [*(a1 + 32) currentState];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIMediaController::%@ timedout while waiting in pause state, current state %@", &v8, 0x16u);
  }

  v6 = [*(a1 + 32) currentState];
  v7 = [v6 isEqualToString:@"Media controller waiting for timeout while paused"];

  if (v7)
  {
    [WeakRetained setPlaybackStopReason:1];
    [WeakRetained setAutomaticPlaybackStop:1];
    [WeakRetained setVpafPlaybackStopReason:4];
    [*(a1 + 32) postEvent:@"Stop"];
  }
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_250(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained player];
  v6 = [v5 state];
  v7 = [MEMORY[0x1E69D5A40] paused];

  if (v6 != v7)
  {
    v8 = [WeakRetained player];
    [v8 pause];
  }

  v9 = [v3 currentState];

  return v9;
}

id __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_251(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPendingPlaylist:0];
  v5 = [WeakRetained player];

  if (v5)
  {
    v6 = [WeakRetained player];
    v7 = [v6 state];
    v8 = [MEMORY[0x1E69D5A40] stopped];

    if (v7 != v8)
    {
      (*(*(a1 + 32) + 16))();
      v9 = [WeakRetained player];
      [v9 stop];
      goto LABEL_7;
    }

    v17 = @"AnimatedKey";
    v18[0] = MEMORY[0x1E695E118];
    v10 = MEMORY[0x1E695DF20];
    v11 = v18;
    v12 = &v17;
  }

  else
  {
    v15 = @"AnimatedKey";
    v16 = MEMORY[0x1E695E118];
    v10 = MEMORY[0x1E695DF20];
    v11 = &v16;
    v12 = &v15;
  }

  v9 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  [v3 postEvent:@"Finished playback" withContext:0 userInfo:v9];
LABEL_7:

  v13 = [v3 currentState];

  return v13;
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_252(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 currentState];
  v6 = [WeakRetained mediaInfo];
  v7 = [v6 tvpPlaylist];

  if (v7)
  {
    if ([WeakRetained isBackgrounded])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_4_253;
      v9[3] = &unk_1E872DC10;
      v11 = *(a1 + 40);
      v10 = v7;
      [v3 executeBlockAfterCurrentStateTransition:v9];

      v5 = @"Waiting for player to start loading";
    }
  }

  return v5;
}

__CFString *__51__VUIMediaController__registerStateMachineHandlers__block_invoke_5_254(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VUIMediaController__registerStateMachineHandlers__block_invoke_6_255;
  v4[3] = &unk_1E872D7E0;
  v5 = *(a1 + 32);
  [a2 executeBlockAfterCurrentStateTransition:v4];

  return @"Showing playback in foreground";
}

- (VUIMediaControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSTimer)playbackLoadingTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackLoadingTimer);

  return WeakRetained;
}

- (NSTimer)pauseStateTimeoutTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_pauseStateTimeoutTimer);

  return WeakRetained;
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_2_196_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = VUIBoolLogString();
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1E323F000, a3, OS_LOG_TYPE_ERROR, "VUIMediaController::completed loading image proxy: [%@], finished: [%@]", &v6, 0x16u);
}

void __51__VUIMediaController__registerStateMachineHandlers__block_invoke_3_199_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIMediaController::failed to load image proxy with error: [%@]", &v3, 0xCu);
}

@end
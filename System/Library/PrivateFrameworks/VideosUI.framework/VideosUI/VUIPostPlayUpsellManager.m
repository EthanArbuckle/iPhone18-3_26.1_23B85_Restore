@interface VUIPostPlayUpsellManager
+ (id)sharedInstance;
- (BOOL)_isFullScreenPlaybackUIShown;
- (VUIPostPlayUpsellManager)init;
- (void)_currentMediaItemWillChange:(id)a3;
- (void)_handleDeferredMediaItemUpsellIfNeeded;
- (void)_handleUpsellForMediaItem:(id)a3 elapsedTimeInterval:(double)a4;
- (void)_isPlaybackUIBeingShownDidChange:(id)a3;
- (void)_playbackStateWillChange:(id)a3;
- (void)_registerStateMachineHandlers;
- (void)_reset;
- (void)handleRouterDataSourceIfNeeded:(id)a3;
@end

@implementation VUIPostPlayUpsellManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_31 != -1)
  {
    +[VUIPostPlayUpsellManager sharedInstance];
  }

  v3 = sharedInstance_instance_6;

  return v3;
}

void __42__VUIPostPlayUpsellManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIPostPlayUpsellManager);
  v1 = sharedInstance_instance_6;
  sharedInstance_instance_6 = v0;
}

- (VUIPostPlayUpsellManager)init
{
  v12.receiver = self;
  v12.super_class = VUIPostPlayUpsellManager;
  v2 = [(VUIPostPlayUpsellManager *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__isPlaybackUIBeingShownDidChange_ name:VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0] object:0];
    [v3 addObserver:v2 selector:sel__currentMediaItemWillChange_ name:*MEMORY[0x1E69D5F18] object:0];
    [v3 addObserver:v2 selector:sel__playbackStateWillChange_ name:*MEMORY[0x1E69D60A8] object:0];
    v4 = objc_alloc(MEMORY[0x1E69D5A60]);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 initWithName:v6 initialState:@"NotPlayingLiveStream" mode:0 stateChangeHandler:0];
    stateMachine = v2->_stateMachine;
    v2->_stateMachine = v7;

    v9 = v2->_stateMachine;
    v10 = VUIDefaultLogObject();
    [(TVPStateMachine *)v9 setLogObject:v10];

    [(TVPStateMachine *)v2->_stateMachine setCallsStateChangeHandlerSynchronously:1];
    [(VUIPostPlayUpsellManager *)v2 _registerStateMachineHandlers];
    [(TVPStateMachine *)v2->_stateMachine setShouldAcceptEvents:1];
    v2->_cumulativeLivePlaybacktime = 0.0;
  }

  return v2;
}

- (void)_registerStateMachineHandlers
{
  objc_initWeak(&location, self);
  v3 = [(VUIPostPlayUpsellManager *)self stateMachine];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__VUIPostPlayUpsellManager__registerStateMachineHandlers__block_invoke;
  v7[3] = &unk_1E872FAD8;
  objc_copyWeak(&v8, &location);
  [v3 registerDefaultHandlerForEvent:@"Player started Live playback" withBlock:v7];

  v4 = [(VUIPostPlayUpsellManager *)self stateMachine];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__VUIPostPlayUpsellManager__registerStateMachineHandlers__block_invoke_2;
  v5[3] = &unk_1E8735D58;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v4 registerHandlerForEvent:@"Anything other than live playback started" onState:@"PlayingLiveStream" withBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

__CFString *__57__VUIPostPlayUpsellManager__registerStateMachineHandlers__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 playbackDate];
  [WeakRetained setLivePlaybackStartDate:v7];

  return @"PlayingLiveStream";
}

__CFString *__57__VUIPostPlayUpsellManager__registerStateMachineHandlers__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = v5;
  v8 = [v7 playbackDate];
  if (v8 && (v9 = v8, [WeakRetained livePlaybackStartDate], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = [v7 playbackDate];
    v12 = [*(a1 + 32) livePlaybackStartDate];
    [v11 timeIntervalSinceDate:v12];
    v14 = v13;

    [WeakRetained cumulativeLivePlaybacktime];
    [WeakRetained setCumulativeLivePlaybacktime:v14 + v15];
  }

  else
  {
    [WeakRetained setCumulativeLivePlaybacktime:0.0];
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v7 playbackDate];
      v18 = [WeakRetained livePlaybackStartDate];
      v20 = 138412546;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellManager - EventPlayerEventOtherThanLivePlaybackStarted: null Date [player playbackDate] = %@ [self livePlaybackStartDate] == %@", &v20, 0x16u);
    }
  }

  return @"NotPlayingLiveStream";
}

- (BOOL)_isFullScreenPlaybackUIShown
{
  v2 = +[VUIPlaybackManager sharedInstance];
  v3 = [v2 isFullscreenPlaybackUIBeingShown];

  return v3;
}

- (void)_playbackStateWillChange:(id)a3
{
  v12 = a3;
  v4 = [v12 object];
  [v4 duration];
  if (v5 == *MEMORY[0x1E69D5A78])
  {
    v6 = [v12 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E69D6098]];

    v8 = [MEMORY[0x1E69D5A40] playing];

    v9 = [(VUIPostPlayUpsellManager *)self stateMachine];
    v10 = v9;
    if (v7 == v8)
    {
      v11 = @"Player started Live playback";
    }

    else
    {
      v11 = @"Anything other than live playback started";
    }

    [v9 postEvent:v11 withContext:v4];
  }

  else
  {
    [v4 elapsedTime];
    [(VUIPostPlayUpsellManager *)self setElapsedTime:?];
  }
}

- (void)_currentMediaItemWillChange:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 currentMediaItem];
  v7 = [v6 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellRouterDataSource"];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKey:*MEMORY[0x1E69D5F08]];
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
      v19 = 138412546;
      v20 = v12;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellManager - _currentMediaItemWillChange: %@, reason: %@", &v19, 0x16u);
    }

    [(VUIPostPlayUpsellManager *)self elapsedTime];
    v14 = v13;
    if ([(VUIPostPlayUpsellManager *)self _isFullScreenPlaybackUIShown])
    {
      if ([v10 isEqualToString:*MEMORY[0x1E69D5F00]])
      {
        v15 = VUIDefaultLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellManager - Defer the processing of this media item upsell", &v19, 2u);
        }

        [(VUIPostPlayUpsellManager *)self setDeferredMediaItem:v6];
        [(VUIPostPlayUpsellManager *)self setDeferredElapsedTime:v14];
      }
    }

    else
    {
      [(VUIPostPlayUpsellManager *)self cumulativeLivePlaybacktime];
      if (v16 != 0.0)
      {
        [(VUIPostPlayUpsellManager *)self cumulativeLivePlaybacktime];
        v14 = v17;
        [(VUIPostPlayUpsellManager *)self setCumulativeLivePlaybacktime:0.0];
      }

      if (v14 >= 0.0)
      {
        [(VUIPostPlayUpsellManager *)self _handleUpsellForMediaItem:v6 elapsedTimeInterval:v14];
      }

      else
      {
        v18 = VUIDefaultLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellManager - VUIPostPlayUpsellManager: Not triggering upsell because elapsed time is 0", &v19, 2u);
        }
      }

      [(VUIPostPlayUpsellManager *)self _reset];
    }
  }
}

- (void)_isPlaybackUIBeingShownDidChange:(id)a3
{
  v4 = +[VUIPlaybackManager sharedInstance];
  v5 = [v4 isPlaybackUIBeingShown];

  if ((v5 & 1) == 0)
  {

    [(VUIPostPlayUpsellManager *)self _handleDeferredMediaItemUpsellIfNeeded];
  }
}

- (void)_handleDeferredMediaItemUpsellIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(VUIPostPlayUpsellManager *)self deferredMediaItem];
  if (v3 && ![(VUIPostPlayUpsellManager *)self _isFullScreenPlaybackUIShown])
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellManager - _handleDeferredMediaItemUpsellIfNeeded: %@", &v6, 0xCu);
    }

    [(VUIPostPlayUpsellManager *)self deferredElapsedTime];
    [(VUIPostPlayUpsellManager *)self _handleUpsellForMediaItem:v3 elapsedTimeInterval:?];
  }
}

- (void)_handleUpsellForMediaItem:(id)a3 elapsedTimeInterval:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = +[VUIPostPlayUpsellConfig sharedInstance];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__VUIPostPlayUpsellManager__handleUpsellForMediaItem_elapsedTimeInterval___block_invoke;
    v8[3] = &unk_1E872E9C8;
    v9 = v6;
    v10 = self;
    [v7 canShowUpsellForMediaItem:v9 withElapsedTime:v8 completion:a4];
  }
}

void __74__VUIPostPlayUpsellManager__handleUpsellForMediaItem_elapsedTimeInterval___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellRouterDataSource"];
    [*(a1 + 40) handleRouterDataSourceIfNeeded:v4];
    [*(a1 + 40) _reset];
  }

  else
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellManager - Do not have valid conditions to show upsell", buf, 2u);
    }
  }
}

- (void)_reset
{
  [(VUIPostPlayUpsellManager *)self setDeferredMediaItem:0];
  [(VUIPostPlayUpsellManager *)self setDeferredElapsedTime:0.0];

  [(VUIPostPlayUpsellManager *)self setCumulativeLivePlaybacktime:0.0];
}

- (void)handleRouterDataSourceIfNeeded:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[VUIAppReviewManager sharedInstance];
    [v4 isFeatureEnabled:&__block_literal_global_32_1];

    +[_TtC8VideosUI8VideosUI markLastPlaybackEventasUpsellPresented];
    v5 = +[VUITVAppLauncher sharedInstance];
    v7 = [v5 appController];

    v6 = [v7 appContext];
    [VUIApplicationRouter handleEvent:*MEMORY[0x1E69D59D0] targetResponder:0 appContext:v6 routerDataSource:v3 supplementaryData:0 extraInfo:0];
  }
}

void __59__VUIPostPlayUpsellManager_handleRouterDataSourceIfNeeded___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = +[VUIAppReviewManager sharedInstance];
    [v2 setLastPlaybackEvent:2];
  }
}

@end
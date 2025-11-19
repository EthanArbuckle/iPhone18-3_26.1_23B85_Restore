@interface VUIAppReviewManager
+ (id)sharedInstance;
- (BOOL)_isYouthAccount;
- (BOOL)_shouldAttemptToPrompt;
- (VUIAppReviewManager)init;
- (void)_attemptToPrompt;
- (void)_handleIsPlaybackUIBeingShownDidChange:(id)a3;
- (void)dealloc;
- (void)isFeatureEnabled:(id)a3;
- (void)processAddToUpNext;
- (void)setMostRecentPlaybackProgressForNonTrailerContent:(double)a3;
@end

@implementation VUIAppReviewManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[VUIAppReviewManager sharedInstance];
  }

  v3 = sharedInstance_singleton_0;

  return v3;
}

void __37__VUIAppReviewManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIAppReviewManager);
  v1 = sharedInstance_singleton_0;
  sharedInstance_singleton_0 = v0;
}

- (VUIAppReviewManager)init
{
  v24.receiver = self;
  v24.super_class = VUIAppReviewManager;
  v2 = [(VUIAppReviewManager *)&v24 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_numberOfAddToUpNexts = [v3 integerForKey:@"AppReviewNumberOfAddToUpNexts"];

    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_numberOfPlaybacks = [v4 integerForKey:@"AppReviewNumberOfPlaybacks"];

    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 integerForKey:@"AppReviewAfterNthAddToUpNext"];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 3;
    }

    v2->_numberOfAddToUpNextsBeforePrompting = v7;

    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [v8 integerForKey:@"AppReviewAfterNthPlaybacks"];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 3;
    }

    v2->_numberOfPlaybacksBeforePrompting = v10;

    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v11 doubleForKey:@"AppReviewMinCompletionThreshold"];
    v2->_completionThreshold = v12;

    completionThreshold = v2->_completionThreshold;
    if (completionThreshold <= 0.0 || completionThreshold > 1.0)
    {
      v2->_completionThreshold = 0.7;
    }

    v2->_lastPlaybackEvent = 0;
    v15 = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v16 = [objc_alloc(MEMORY[0x1E698CB20]) initWithBag:v15];
    sharedStoreReview = v2->_sharedStoreReview;
    v2->_sharedStoreReview = v16;

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    v19 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
    v20 = +[VUIPlaybackManager sharedInstance];
    [v18 addObserver:v2 selector:sel__handleIsPlaybackUIBeingShownDidChange_ name:v19 object:v20];

    v21 = dispatch_queue_create("com.apple.tv.appreviewmanager", 0);
    queue = v2->_queue;
    v2->_queue = v21;
  }

  return v2;
}

- (void)isFeatureEnabled:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VUIAppReviewManager_isFeatureEnabled___block_invoke;
  block[3] = &unk_1E872E828;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__VUIAppReviewManager_isFeatureEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[7] isEnabled];
  }

  else
  {
    v4 = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __40__VUIAppReviewManager_isFeatureEnabled___block_invoke_2;
  v7 = &unk_1E872FFC0;
  v8 = *(a1 + 32);
  v9 = v4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6(v5);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)processAddToUpNext
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(VUIAppReviewManager *)self _isYouthAccount])
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Skip Add to Up Next -- Ineligible Account", buf, 2u);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    ++self->_numberOfAddToUpNexts;
    [v4 setInteger:? forKey:?];

    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      numberOfAddToUpNexts = self->_numberOfAddToUpNexts;
      numberOfAddToUpNextsBeforePrompting = self->_numberOfAddToUpNextsBeforePrompting;
      *buf = 134218240;
      v12 = numberOfAddToUpNexts;
      v13 = 2048;
      v14 = numberOfAddToUpNextsBeforePrompting;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Add to Up Next -- up next: %lu/%lu", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v8 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__VUIAppReviewManager_processAddToUpNext__block_invoke;
    block[3] = &unk_1E872E4B8;
    objc_copyWeak(&v10, buf);
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __41__VUIAppReviewManager_processAddToUpNext__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _shouldAttemptToPrompt])
  {
    v2 = VUIDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: initiate user prompt triggered by Add to Up Next", v3, 2u);
    }

    [WeakRetained _attemptToPrompt];
  }
}

- (void)setMostRecentPlaybackProgressForNonTrailerContent:(double)a3
{
  if (self->_highestPlaybackProgress < a3)
  {
    self->_highestPlaybackProgress = a3;
  }
}

- (void)_handleIsPlaybackUIBeingShownDidChange:(id)a3
{
  if ([(VUIAppReviewManager *)self _isYouthAccount])
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Skip Playback -- Ineligible Account", buf, 2u);
    }
  }

  else
  {
    v5 = +[VUIAppReviewManager sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__VUIAppReviewManager__handleIsPlaybackUIBeingShownDidChange___block_invoke;
    v6[3] = &unk_1E872F758;
    v6[4] = self;
    [v5 isFeatureEnabled:v6];
  }
}

void __62__VUIAppReviewManager__handleIsPlaybackUIBeingShownDidChange___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[VUIPlaybackManager sharedInstance];
    v4 = [v3 isPlaybackUIBeingShown];

    if ((v4 & 1) == 0)
    {
      objc_initWeak(&location, *(a1 + 32));
      v5 = dispatch_time(0, 1000000000);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __62__VUIAppReviewManager__handleIsPlaybackUIBeingShownDidChange___block_invoke_2;
      v6[3] = &unk_1E872E4B8;
      objc_copyWeak(&v7, &location);
      dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __62__VUIAppReviewManager__handleIsPlaybackUIBeingShownDidChange___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  +[_TtC8VideosUI8VideosUI handlePlaybackDidEndForTCC];
  v2 = +[_TtC8VideosUI8VideosUI getFullorHalfSheetPromptedAt];

  if (!v2)
  {
    v3 = +[VUIPlaybackManager sharedInstance];
    v4 = [v3 isPlaybackUIBeingShown];

    if (v4)
    {
      v5 = VUIDefaultLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v6 = "VUIAppReviewManager: Skip Playback -- Playback UI being shown";
LABEL_8:
        v7 = v5;
        v8 = 2;
LABEL_9:
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, v6, &v16, v8);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    if ([WeakRetained lastPlaybackEvent] == 1)
    {
      v5 = VUIDefaultLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v6 = "VUIAppReviewManager: Skip Playback -- There was an error";
        goto LABEL_8;
      }

LABEL_10:

      [WeakRetained _resetStates];
      goto LABEL_11;
    }

    if (*(WeakRetained + 6) < *(WeakRetained + 5))
    {
      v5 = VUIDefaultLogObject();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v9 = WeakRetained[5];
      v10 = WeakRetained[6];
      v16 = 134218240;
      v17 = v9;
      v18 = 2048;
      v19 = v10;
      v6 = "VUIAppReviewManager: Skip Playback -- live events or less than completion threshold %.02f -- progress %.02f";
      v7 = v5;
      v8 = 22;
      goto LABEL_9;
    }

    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    ++WeakRetained[2];
    [v11 setInteger:? forKey:?];

    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = WeakRetained[2];
      v14 = WeakRetained[4];
      v16 = 134218240;
      v17 = v13;
      v18 = 2048;
      v19 = v14;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Playback did end -- playback: %lu/%lu", &v16, 0x16u);
    }

    if ([WeakRetained lastPlaybackEvent] == 2)
    {
      v5 = VUIDefaultLogObject();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      LOWORD(v16) = 0;
      v6 = "VUIAppReviewManager: Skip Playback -- Upsell presented";
      goto LABEL_8;
    }

    [WeakRetained _resetStates];
    if ([WeakRetained _shouldAttemptToPrompt])
    {
      v15 = VUIDefaultLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Initiate prompt. Triggered by playback", &v16, 2u);
      }

      [WeakRetained _attemptToPrompt];
    }
  }

LABEL_11:
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIAppReviewManager;
  [(VUIAppReviewManager *)&v4 dealloc];
}

- (BOOL)_isYouthAccount
{
  v2 = [MEMORY[0x1E69D5920] activeAccount];
  v3 = [v2 ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C4B8]];
  v4 = v3;
  v5 = v3 && ([v3 BOOLValue] & 1) != 0;

  return v5;
}

- (void)_attemptToPrompt
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [MEMORY[0x1E695DF00] date];
  [v3 setValue:v4 forKey:@"AppReviewLastPromptedAt"];

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 systemVersion];
  [v5 setValue:v7 forKey:@"AppReviewLastPromptedOSVersion"];

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 setInteger:0 forKey:@"AppReviewNumberOfPlaybacks"];

  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v9 setInteger:0 forKey:@"AppReviewNumberOfAddToUpNexts"];

  self->_numberOfAddToUpNexts = 0;
  self->_numberOfPlaybacks = 0;
  [(AMSSharedStoreReview *)self->_sharedStoreReview didAttemptPromptReview];
  v10 = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  v11 = [v10 windowScene];
  [_TtC8VideosUI8VideosUI requestAppStoreReview:v11];

  v12 = VUIDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: Attempted to prompt", v13, 2u);
  }
}

- (BOOL)_shouldAttemptToPrompt
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = +[VUITVAppLauncher sharedInstance];
  v4 = [v3 appController];

  v5 = +[VUIApplicationRouter topPresentedViewController];
  v6 = [v5 presentedViewController];
  if (v6)
  {
    goto LABEL_4;
  }

  v6 = +[VUIApplicationRouter currentNavigationController];
  v7 = [v6 presentedViewController];
  if (v7)
  {

LABEL_4:
LABEL_5:
    v8 = VUIDefaultLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    LOWORD(v22) = 0;
    v9 = "VUIAppReviewManager: Already presenting";
    goto LABEL_7;
  }

  v14 = [v4 navigationController];
  v15 = [v14 presentedViewController];

  if (v15)
  {
    goto LABEL_5;
  }

  if (self->_numberOfAddToUpNexts < self->_numberOfAddToUpNextsBeforePrompting && self->_numberOfPlaybacks < self->_numberOfPlaybacksBeforePrompting)
  {
    v8 = VUIDefaultLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    numberOfAddToUpNexts = self->_numberOfAddToUpNexts;
    numberOfPlaybacks = self->_numberOfPlaybacks;
    numberOfAddToUpNextsBeforePrompting = self->_numberOfAddToUpNextsBeforePrompting;
    numberOfPlaybacksBeforePrompting = self->_numberOfPlaybacksBeforePrompting;
    v22 = 134218752;
    v23 = numberOfAddToUpNexts;
    v24 = 2048;
    v25 = numberOfAddToUpNextsBeforePrompting;
    v26 = 2048;
    v27 = numberOfPlaybacks;
    v28 = 2048;
    v29 = numberOfPlaybacksBeforePrompting;
    v9 = "VUIAppReviewManager: -- conditions not met -- up next: %lu/%lu -- playback: %lu/%lu";
    v10 = v8;
    v11 = 42;
    goto LABEL_8;
  }

  v20 = [(AMSSharedStoreReview *)self->_sharedStoreReview shouldAttemptPromptReview];
  v8 = VUIDefaultLogObject();
  v21 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v20)
  {
    if (!v21)
    {
      goto LABEL_9;
    }

    LOWORD(v22) = 0;
    v9 = "VUIAppReviewManager: [AMSSharedStoreReview shouldAttemptPromptReview] returned NO";
LABEL_7:
    v10 = v8;
    v11 = 2;
LABEL_8:
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, v9, &v22, v11);
    goto LABEL_9;
  }

  if (v21)
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIAppReviewManager: [AMSSharedStoreReview shouldAttemptPromptReview] returned YES", &v22, 2u);
  }

  v12 = 1;
LABEL_10:

  return v12;
}

@end
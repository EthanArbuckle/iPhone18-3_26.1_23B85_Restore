@interface VUIRentalExpirationMonitor
+ (id)sharedInstance;
- (VUIRentalExpirationMonitor)init;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_expirationTimerDidFire:(id)fire;
- (void)_isPlaybackUIBeingShownDidChange:(id)change;
- (void)_libraryContentsDidChange:(id)change;
- (void)_registerStateMachineHandlers;
- (void)dealloc;
- (void)startMonitoring;
@end

@implementation VUIRentalExpirationMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_28 != -1)
  {
    +[VUIRentalExpirationMonitor sharedInstance];
  }

  v3 = sharedInstance_instance_4;

  return v3;
}

void __44__VUIRentalExpirationMonitor_sharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIRentalExpirationMonitor");
  v1 = sLogObject_19;
  sLogObject_19 = v0;

  v2 = objc_alloc_init(VUIRentalExpirationMonitor);
  v3 = sharedInstance_instance_4;
  sharedInstance_instance_4 = v2;
}

- (VUIRentalExpirationMonitor)init
{
  v16.receiver = self;
  v16.super_class = VUIRentalExpirationMonitor;
  v2 = [(VUIRentalExpirationMonitor *)&v16 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@", objc_opt_class()];
    v4 = dispatch_queue_create("com.apple.VideosUI.VUIRentalExpirationMonitor", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = [objc_alloc(MEMORY[0x1E69D5A60]) initWithName:v3 initialState:@"Idle" mode:0];
    stateMachine = v2->_stateMachine;
    v2->_stateMachine = v6;

    [(TVPStateMachine *)v2->_stateMachine setLogObject:sLogObject_19];
    [(VUIRentalExpirationMonitor *)v2 _registerStateMachineHandlers];
    [(TVPStateMachine *)v2->_stateMachine setShouldAcceptEvents:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x1E69DF7D8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
    v11 = +[VUIPlaybackManager sharedInstance];
    [defaultCenter2 addObserver:v2 selector:sel__isPlaybackUIBeingShownDidChange_ name:v10 object:v11];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E69B2D08];
    autoupdatingSharedLibrary = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
    [defaultCenter3 addObserver:v2 selector:sel__libraryContentsDidChange_ name:v13 object:autoupdatingSharedLibrary];
  }

  return v2;
}

- (void)_registerStateMachineHandlers
{
  v39[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  stateMachine = [(VUIRentalExpirationMonitor *)self stateMachine];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_3;
  aBlock[3] = &unk_1E8734AD0;
  objc_copyWeak(&v37, &location);
  v35 = &__block_literal_global_93;
  v36 = &__block_literal_global_80;
  v4 = _Block_copy(aBlock);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_102;
  v30[3] = &unk_1E8734AF8;
  objc_copyWeak(&v33, &location);
  v31 = &__block_literal_global_80;
  v32 = &__block_literal_global_90;
  v5 = _Block_copy(v30);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_4_107;
  v27[3] = &unk_1E872FAB0;
  objc_copyWeak(&v29, &location);
  v6 = v5;
  v28 = v6;
  [stateMachine registerHandlerForEvent:@"Start monitoring" onState:@"Idle" withBlock:v27];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_5_109;
  v24[3] = &unk_1E872FAB0;
  objc_copyWeak(&v26, &location);
  v7 = v4;
  v25 = v7;
  [stateMachine registerHandlerForEvent:@"Rental query did complete" onState:@"Waiting for rental query to complete" withBlock:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_114;
  v22[3] = &unk_1E8730120;
  v8 = v7;
  v23 = v8;
  [stateMachine registerHandlerForEvent:@"Application did become active" onState:@"Waiting for appropriate app state to handle expiration" withBlock:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_2_115;
  v20[3] = &unk_1E8730120;
  v9 = v8;
  v21 = v9;
  [stateMachine registerHandlerForEvent:@"Playback UI no longer being shown" onState:@"Waiting for appropriate app state to handle expiration" withBlock:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_3_116;
  v18[3] = &unk_1E8730120;
  v10 = v6;
  v19 = v10;
  [stateMachine registerHandlerForEvent:@"Expiration UI complete" onState:@"Showing expiration UI" withBlock:v18];
  v39[0] = @"Idle";
  v39[1] = @"Waiting for earliest rental to expire";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_4_117;
  v16[3] = &unk_1E8730120;
  v12 = v10;
  v17 = v12;
  [stateMachine registerHandlerForEvent:@"Library contents did change" onStates:v11 withBlock:v16];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_5_118;
  v14[3] = &unk_1E8730120;
  v13 = v12;
  v15 = v13;
  [stateMachine registerHandlerForEvent:@"Rental expiration timer did fire" onState:@"Waiting for earliest rental to expire" withBlock:v14];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&location);
}

- (void)startMonitoring
{
  stateMachine = [(VUIRentalExpirationMonitor *)self stateMachine];
  [stateMachine postEvent:@"Start monitoring"];
}

__CFString *__59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_4_107(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = CFPreferencesCopyAppValue(@"LastRunValue", @"com.apple.videos-preferences");
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = v4;
  if (v3)
  {
    v6 = MEMORY[0x1E695DF00];
    [v3 doubleValue];
    v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v8 = MEMORY[0x1E696AD98];
    [v4 timeIntervalSinceReferenceDate];
    CFPreferencesSetAppValue(@"LastRunValue", [v8 numberWithDouble:?], @"com.apple.videos-preferences");
    CFPreferencesAppSynchronize(@"com.apple.videos-preferences");
    v7 = v5;
  }

  v9 = v7;
  [WeakRetained setDateOfLastRentalExpirationHandling:v7];
  (*(*(a1 + 32) + 16))();

  return @"Waiting for rental query to complete";
}

void __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 32);
  v6 = [WeakRetained dateOfLastRentalExpirationHandling];
  v7 = (*(v5 + 16))(v5, v3, v6);

  v8 = (*(*(a1 + 40) + 16))();

  v9 = [WeakRetained serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_2_103;
  block[3] = &unk_1E8730F50;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  objc_copyWeak(&v15, (a1 + 48));
  dispatch_async(v9, block);

  objc_destroyWeak(&v15);
}

id __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 && v5)
  {
    v7 = MEMORY[0x1E69B3488];
    v8 = *MEMORY[0x1E69B3190];
    v9 = MEMORY[0x1E696AD98];
    [v5 timeIntervalSinceReferenceDate];
    v10 = [v9 numberWithDouble:?];
    v11 = [v7 predicateWithProperty:v8 value:v10 comparison:3];

    v12 = MEMORY[0x1E69B3488];
    v13 = MEMORY[0x1E696AD98];
    [v4 timeIntervalSinceReferenceDate];
    v14 = [v13 numberWithDouble:?];
    v15 = [v12 predicateWithProperty:v8 value:v14 comparison:5];

    v16 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B30E8] equalToInteger:1];
    v17 = MEMORY[0x1E69B3428];
    v26[0] = v11;
    v26[1] = v15;
    v26[2] = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
    v19 = [v17 predicateMatchingPredicates:v18];

    v20 = MEMORY[0x1E69B3538];
    v21 = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
    v22 = [v20 queryWithLibrary:v21 predicate:v19 orderingTerms:0];

    [v22 setIgnoreSystemFilterPredicates:1];
    v23 = [objc_alloc(MEMORY[0x1E69B3510]) initWithQuery:v22];
  }

  else
  {
    v24 = sLogObject_19;
    if (os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_ERROR))
    {
      __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_cold_1(v24);
    }

    v23 = 0;
  }

  return v23;
}

id __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_87(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B3488];
  v3 = *MEMORY[0x1E69B3190];
  v4 = MEMORY[0x1E696AD98];
  [a2 timeIntervalSinceReferenceDate];
  v5 = [v4 numberWithDouble:?];
  v6 = [v2 predicateWithProperty:v3 value:v5 comparison:3];

  v7 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B30E8] equalToInteger:1];
  v8 = MEMORY[0x1E69B3428];
  v16[0] = v7;
  v16[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v10 = [v8 predicateMatchingPredicates:v9];

  v11 = MEMORY[0x1E69B3538];
  v12 = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
  v13 = [v11 queryWithLibrary:v12 predicate:v10 orderingTerms:0];

  [v13 setIgnoreSystemFilterPredicates:1];
  v14 = [objc_alloc(MEMORY[0x1E69B3510]) initWithQuery:v13];

  return v14;
}

void __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_2_103(id *a1)
{
  [a1[4] updateToLibraryCurrentRevision];
  [a1[5] updateToLibraryCurrentRevision];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_3_104;
  block[3] = &unk_1E872E008;
  v4 = a1[4];
  v5 = a1[5];
  v6 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_3_104(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v6 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"ExpiredQueryKey"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v6 setObject:v4 forKey:@"UnexpiredQueryKey"];
  }

  v5 = [*(a1 + 48) stateMachine];
  [v5 postEvent:@"Rental query did complete" withContext:0 userInfo:v6];
}

__CFString *__59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_5_109(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [v12 objectForKey:@"ExpiredQueryKey"];
  v15 = [v12 objectForKey:@"UnexpiredQueryKey"];
  v16 = sLogObject_19;
  if (os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v14 count];
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Found %lu rentals that have expired since expiration handling", &buf, 0xCu);
  }

  v18 = [WeakRetained earliestExpirationTimer];
  v19 = v18 == 0;

  if (!v19)
  {
    v20 = sLogObject_19;
    if (os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Invalidating existing expiration timer", &buf, 2u);
    }

    v21 = [WeakRetained earliestExpirationTimer];
    [v21 invalidate];

    [WeakRetained setEarliestExpirationTimer:0];
  }

  if ([v14 count])
  {
    v22 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v23 = sLogObject_19;
    if (os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v15 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "Found %lu rentals that will expire in the future", &buf, 0xCu);
    }

    if ([v15 count])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__23;
      v41 = __Block_byref_object_dispose__23;
      v42 = 0;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_110;
      v35[3] = &unk_1E8734B20;
      v35[4] = &buf;
      [v15 enumeratePersistentIDsUsingBlock:v35];
      v26 = *(*(&buf + 1) + 40);
      if (v26)
      {
        v27 = MEMORY[0x1E695DF00];
        [v26 doubleValue];
        v29 = [v27 dateWithTimeIntervalSinceReferenceDate:v28 + 5.0];
        v30 = sLogObject_19;
        if (os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_DEFAULT))
        {
          *v36 = 138412290;
          v37 = v29;
          _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "Scheduling expiration timer for earliest expiration: %@", v36, 0xCu);
        }

        v31 = MEMORY[0x1E695DFF0];
        [v29 timeIntervalSinceNow];
        v32 = [v31 scheduledTimerWithTimeInterval:WeakRetained target:sel__expirationTimerDidFire_ selector:0 userInfo:0 repeats:?];
        [WeakRetained setEarliestExpirationTimer:v32];

        v22 = @"Waiting for earliest rental to expire";
      }

      else
      {
        v33 = sLogObject_19;
        if (os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_ERROR))
        {
          __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_5_109_cold_1(v33);
        }

        v22 = @"Idle";
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v22 = @"Idle";
    }
  }

  return v22;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIRentalExpirationMonitor;
  [(VUIRentalExpirationMonitor *)&v4 dealloc];
}

- (void)_applicationDidBecomeActive:(id)active
{
  stateMachine = [(VUIRentalExpirationMonitor *)self stateMachine];
  [stateMachine postEvent:@"Application did become active"];
}

- (void)_isPlaybackUIBeingShownDidChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = +[VUIPlaybackManager sharedInstance];
  isPlaybackUIBeingShown = [v4 isPlaybackUIBeingShown];

  v6 = sLogObject_19;
  if (os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (isPlaybackUIBeingShown)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "isPlaybackUIBeingShown did change to %@", buf, 0xCu);
  }

  if ((isPlaybackUIBeingShown & 1) == 0)
  {
    v8 = sLogObject_19;
    if (os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Delaying EventPlaybackUINoLongerBeingShown to allow transition to finish.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v9 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__VUIRentalExpirationMonitor__isPlaybackUIBeingShownDidChange___block_invoke;
    block[3] = &unk_1E872E4B8;
    objc_copyWeak(&v11, buf);
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __63__VUIRentalExpirationMonitor__isPlaybackUIBeingShownDidChange___block_invoke(uint64_t a1)
{
  v2 = +[VUIPlaybackManager sharedInstance];
  v3 = [v2 isPlaybackUIBeingShown];

  v4 = sLogObject_19;
  v5 = os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "After delay, playback is fullscreen.  Not posting event.", v8, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "After delay, playback is not fullscreen.  Posting event.", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained stateMachine];
    [v7 postEvent:@"Playback UI no longer being shown"];
  }
}

- (void)_libraryContentsDidChange:(id)change
{
  v4 = MEMORY[0x1E69E58C0];
  stateMachine = [(VUIRentalExpirationMonitor *)self stateMachine];
  [v4 cancelPreviousPerformRequestsWithTarget:stateMachine selector:sel_postEvent_ object:@"Library contents did change"];

  stateMachine2 = [(VUIRentalExpirationMonitor *)self stateMachine];
  [stateMachine2 performSelector:sel_postEvent_ withObject:@"Library contents did change" afterDelay:1.0];
}

- (void)_expirationTimerDidFire:(id)fire
{
  [(VUIRentalExpirationMonitor *)self setEarliestExpirationTimer:0];
  stateMachine = [(VUIRentalExpirationMonitor *)self stateMachine];
  [stateMachine postEvent:@"Rental expiration timer did fire"];
}

uint64_t __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_2()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([v0 applicationState])
  {
    v1 = 0;
  }

  else
  {
    v2 = +[VUIPlaybackManager sharedInstance];
    v1 = [v2 isPlaybackUIBeingShown] ^ 1;
  }

  return v1;
}

__CFString *__59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ((*(*(a1 + 32) + 16))())
  {
    v3 = [WeakRetained stateMachine];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_4;
    v7[3] = &unk_1E872DC10;
    v4 = *(a1 + 40);
    v7[4] = WeakRetained;
    v8 = v4;
    [v3 executeBlockAfterCurrentStateTransition:v7];

    v5 = @"Showing expiration UI";
  }

  else
  {
    v5 = @"Waiting for appropriate app state to handle expiration";
  }

  return v5;
}

void __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_4(uint64_t a1)
{
  v9 = [MEMORY[0x1E695DF00] date];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) dateOfLastRentalExpirationHandling];
  v4 = (*(v2 + 16))(v2, v9, v3);

  v5 = *(a1 + 32);
  [v5 setDateOfLastRentalExpirationHandling:v9];
  v6 = MEMORY[0x1E696AD98];
  [v9 timeIntervalSinceReferenceDate];
  CFPreferencesSetAppValue(@"LastRunValue", [v6 numberWithDouble:?], @"com.apple.videos-preferences");
  CFPreferencesAppSynchronize(@"com.apple.videos-preferences");
  [v4 updateToLibraryCurrentRevision];
  [v4 enumeratePersistentIDsUsingBlock:&__block_literal_global_98];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"VUIRentalExpirationMonitorRentalDidExpireNotification" object:v5 userInfo:0];

  v8 = [v5 stateMachine];

  [v8 postEvent:@"Expiration UI complete"];
}

void __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69705D0];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  v4 = [v2 vui_mediaItemForPersistentIdentifier:v3];

  v5 = [[VUIUniversalAssetController alloc] initWithMPMediaItem:v4];
  v6 = sLogObject_19;
  if (os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 title];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Removing download for rental [%@]", &v9, 0xCu);
  }

  [(VUIUniversalAssetController *)v5 cancelAndRemoveDownload];
}

void __59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_110(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E69B3538]);
  v5 = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
  v6 = [v4 initWithPersistentID:a2 inLibrary:v5];

  if (v6)
  {
    v7 = [v6 valueForProperty:*MEMORY[0x1E69B3190]];
    v8 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }

    [v7 doubleValue];
    if (v9 == 0.0)
    {
      goto LABEL_10;
    }

    v10 = sLogObject_19;
    if (os_log_type_enabled(sLogObject_19, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E695DF00];
      v12 = v10;
      [v8 doubleValue];
      v13 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
      v20 = 138412290;
      v21 = v13;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Found rental that will expire on %@", &v20, 0xCu);
    }

    v14 = *(*(a1 + 32) + 8);
    v16 = *(v14 + 40);
    v15 = (v14 + 40);
    if (v16)
    {
      [v8 doubleValue];
      v18 = v17;
      [*(*(*(a1 + 32) + 8) + 40) doubleValue];
      if (v18 >= v19)
      {
LABEL_10:

        goto LABEL_11;
      }

      v15 = (*(*(a1 + 32) + 8) + 40);
    }

    objc_storeStrong(v15, v8);
    goto LABEL_10;
  }

LABEL_11:
}

__CFString *__59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_3_116(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF00] date];
  (*(v1 + 16))(v1, v2);

  return @"Waiting for rental query to complete";
}

__CFString *__59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_4_117(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF00] date];
  (*(v1 + 16))(v1, v2);

  return @"Waiting for rental query to complete";
}

__CFString *__59__VUIRentalExpirationMonitor__registerStateMachineHandlers__block_invoke_5_118(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF00] date];
  (*(v1 + 16))(v1, v2);

  return @"Waiting for rental query to complete";
}

@end
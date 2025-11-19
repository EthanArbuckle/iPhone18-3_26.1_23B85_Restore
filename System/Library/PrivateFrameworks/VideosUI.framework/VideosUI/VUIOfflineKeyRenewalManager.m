@interface VUIOfflineKeyRenewalManager
+ (id)_keyInfosForVideo:(id)a3 outKeyIdentifiers:(id)a4;
+ (id)sharedInstance;
- (VUIOfflineKeyRenewalManager)init;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_expirationTimerDidFire:(id)a3;
- (void)_fetchNewKeysForVideosWithBrokenKeys:(id)a3;
- (void)_isPlaybackUIBeingShownDidChange:(id)a3;
- (void)_networkReachbilityDidChange:(id)a3;
- (void)_registerStateMachineHandlers;
- (void)_renewKeysForVideos:(id)a3 outCompletedKeyRequests:(id)a4 completion:(id)a5;
- (void)_renewKeysForVideosGroupedByCertURL:(id)a3 outCompletedKeyRequests:(id)a4 completion:(id)a5;
- (void)_renewalTimerDidFire:(id)a3;
- (void)download:(id)a3 didChangeStateTo:(int64_t)a4;
- (void)storeFPSKeyLoader:(id)a3 didLoadOfflineKeyData:(id)a4 forKeyRequest:(id)a5;
- (void)updateKeyRenewalAndExpiration;
@end

@implementation VUIOfflineKeyRenewalManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VUIOfflineKeyRenewalManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_34 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_34, block);
  }

  v2 = sharedInstance_instance_7;

  return v2;
}

void __45__VUIOfflineKeyRenewalManager_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.AppleTV.playback", "VUIOfflineKeyRenewalManager");
  v3 = sLogObject_22;
  sLogObject_22 = v2;

  v4 = objc_alloc_init(*(a1 + 32));
  v5 = sharedInstance_instance_7;
  sharedInstance_instance_7 = v4;
}

- (VUIOfflineKeyRenewalManager)init
{
  v20.receiver = self;
  v20.super_class = VUIOfflineKeyRenewalManager;
  v2 = [(VUIOfflineKeyRenewalManager *)&v20 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@", objc_opt_class()];
    v4 = [objc_alloc(MEMORY[0x1E69D5A60]) initWithName:v3 initialState:@"Idle" mode:0];
    stateMachine = v2->_stateMachine;
    v2->_stateMachine = v4;

    [(TVPStateMachine *)v2->_stateMachine setLogObject:sLogObject_22];
    [(VUIOfflineKeyRenewalManager *)v2 _registerStateMachineHandlers];
    [(TVPStateMachine *)v2->_stateMachine setShouldAcceptEvents:1];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyLoaders = v2->_keyLoaders;
    v2->_keyLoaders = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    contentKeySessions = v2->_contentKeySessions;
    v2->_contentKeySessions = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    downloadsForRepairingKeys = v2->_downloadsForRepairingKeys;
    v2->_downloadsForRepairingKeys = v10;

    v2->_backgroundTaskIdentifier = *MEMORY[0x1E69DDBE8];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy networkReachabilityDidChangeNotificationName];
    [v12 addObserver:v2 selector:sel__networkReachbilityDidChange_ name:v13 object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
    v16 = +[VUIPlaybackManager sharedInstance];
    [v14 addObserver:v2 selector:sel__isPlaybackUIBeingShownDidChange_ name:v15 object:v16];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v2 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v2 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  return v2;
}

- (void)_registerStateMachineHandlers
{
  v47[3] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = [(VUIOfflineKeyRenewalManager *)self stateMachine];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_4;
  aBlock[3] = &unk_1E8736630;
  objc_copyWeak(&v41, &location);
  v38 = &__block_literal_global_145;
  v39 = &__block_literal_global_99_0;
  v40 = &__block_literal_global_96_0;
  v4 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_104;
  v31[3] = &unk_1E8736680;
  objc_copyWeak(&v36, &location);
  v32 = &__block_literal_global_99_0;
  v5 = v4;
  v33 = v5;
  v34 = &__block_literal_global_145;
  v35 = &__block_literal_global_93_0;
  v6 = _Block_copy(v31);
  v47[0] = @"Update requested";
  v47[1] = @"Key renewal timer did fire";
  v47[2] = @"Expiration timer did fire";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
  v46 = @"Idle";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_111;
  v25[3] = &unk_1E87315A8;
  objc_copyWeak(&v30, &location);
  v9 = v5;
  v26 = v9;
  v27 = &__block_literal_global_145;
  v28 = &__block_literal_global_93_0;
  v10 = v6;
  v29 = v10;
  [v3 registerHandlerForEvents:v7 onStates:v8 withBlock:v25];

  [v3 registerHandlerForEvent:@"Update requested" onState:@"Waiting for network reachability to check for renewals" withBlock:&__block_literal_global_121];
  [v3 registerHandlerForEvent:@"Update requested" onState:@"Renewal in progress" withBlock:&__block_literal_global_125];
  [v3 registerHandlerForEvent:@"Update requested" onState:@"Renewal in progress update when done" withBlock:&__block_literal_global_128];
  [v3 registerHandlerForEvent:@"Renewal did finish" onState:@"Renewal in progress" withBlock:&__block_literal_global_130];
  [v3 registerHandlerForEvent:@"Renewal did finish" onState:@"Renewal in progress update when done" withBlock:&__block_literal_global_132];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_8;
  v23[3] = &unk_1E8730120;
  v11 = v9;
  v24 = v11;
  [v3 registerDefaultHandlerForEvent:@"Expiration timer did fire" withBlock:v23];
  [v3 registerHandlerForEvent:@"Key renewal timer did fire" onState:@"Waiting for network reachability to check for renewals" withBlock:&__block_literal_global_134];
  v45[0] = @"Renewal in progress";
  v45[1] = @"Renewal in progress update when done";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  [v3 registerHandlerForEvent:@"Network error did occur" onStates:v12 withBlock:&__block_literal_global_136];

  [v3 registerHandlerForEvent:@"Network reachability did change" onState:@"Waiting for network reachability to check for renewals" withBlock:&__block_literal_global_138];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_14;
  v21[3] = &unk_1E8730120;
  v13 = v11;
  v22 = v13;
  [v3 registerDefaultHandlerForEvent:@"Playback UI being shown did change" withBlock:v21];
  v44[0] = @"Idle";
  v44[1] = @"Waiting for network reachability to check for renewals";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_15;
  v19 = &unk_1E872FAD8;
  objc_copyWeak(&v20, &location);
  [v3 registerHandlerForEvent:@"Application did enter background" onStates:v14 withBlock:&v16];

  v43[0] = @"Idle";
  v43[1] = @"Waiting for network reachability to check for renewals";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:{2, v16, v17, v18, v19}];
  [v3 registerHandlerForEvent:@"Application will enter foreground" onStates:v15 withBlock:&__block_literal_global_141];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v41);

  objc_destroyWeak(&location);
}

- (void)updateKeyRenewalAndExpiration
{
  v2 = [(VUIOfflineKeyRenewalManager *)self stateMachine];
  [v2 postEvent:@"Update requested"];
}

__CFString *__60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_111(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  (*(*(a1 + 32) + 16))();
  v5 = *(a1 + 40);
  v36[6] = 0;
  (*(v5 + 16))();
  v6 = 0;
  v7 = [WeakRetained keyRenewalTimer];

  if (v7)
  {
    v8 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating key renewal timer", buf, 2u);
    }

    v9 = [WeakRetained keyRenewalTimer];
    [v9 invalidate];

    [WeakRetained setKeyRenewalTimer:0];
  }

  v10 = [MEMORY[0x1E69D5920] activeAccount];

  if (v10)
  {
    v11 = *(a1 + 48);
    v36[5] = 0;
    v12 = (*(v11 + 16))();
    v13 = 0;
    v14 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v13;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Earliest unexpired renewal date is %@", buf, 0xCu);
    }

    if (v12)
    {
      v15 = sLogObject_22;
      if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Renewal date for one or more downloads is in the past", buf, 2u);
      }

      v16 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
      v17 = sLogObject_22;
      v18 = os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v18)
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Network is reachable, will renew all keys", buf, 2u);
        }

        v19 = [WeakRetained backgroundTaskIdentifier];
        if (v19 == *MEMORY[0x1E69DDBE8])
        {
          v20 = v19;
          v21 = [MEMORY[0x1E69DC668] sharedApplication];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_116;
          v36[3] = &unk_1E872D768;
          v36[4] = WeakRetained;
          v22 = [v21 beginBackgroundTaskWithName:@"VUIOfflineKeyRenewalManager" expirationHandler:v36];

          v23 = sLogObject_22;
          if (v22 == v20)
          {
            if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_ERROR))
            {
              __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_111_cold_1(v23);
            }
          }

          else if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v38 = v22;
            _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "Beginning background task with identifier %lu", buf, 0xCu);
          }

          [WeakRetained setBackgroundTaskIdentifier:v22];
        }

        else
        {
          v31 = sLogObject_22;
          if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "Not beginning background task since one is already in progress", buf, 2u);
          }
        }

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_117;
        v33[3] = &unk_1E872DC10;
        v35 = *(a1 + 56);
        v34 = v6;
        [v3 executeBlockAfterCurrentStateTransition:v33];

        v25 = @"Renewal in progress";
      }

      else
      {
        if (v18)
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Network is not reachable.  Will renew keys when network becomes reachable", buf, 2u);
        }

        v25 = @"Waiting for network reachability to check for renewals";
      }
    }

    else
    {
      if (v13)
      {
        v26 = [v13 dateByAddingTimeInterval:5.0];
        v27 = sLogObject_22;
        if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v26;
          _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "Renewal date for one or more downloads is in the future.  Scheduling renewal timer for %@", buf, 0xCu);
        }

        v28 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v26 interval:WeakRetained target:sel__renewalTimerDidFire_ selector:0 userInfo:0 repeats:0.0];
        [WeakRetained setKeyRenewalTimer:v28];
        v29 = [MEMORY[0x1E695DFD0] currentRunLoop];
        [v29 addTimer:v28 forMode:*MEMORY[0x1E695D918]];
      }

      else
      {
        v30 = sLogObject_22;
        if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "Earliest unexpired renewal is nil. Not performing or scheduling renewals", buf, 2u);
        }
      }

      v25 = @"Idle";
    }
  }

  else
  {
    v24 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "No user is signed in.  Not performing or scheduling renewals", buf, 2u);
    }

    v25 = @"Idle";
  }

  return v25;
}

void __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_4(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained expirationTimer];

  if (v2)
  {
    v3 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating expiration timer", buf, 2u);
    }

    v4 = [WeakRetained expirationTimer];
    [v4 invalidate];

    [WeakRetained setExpirationTimer:0];
  }

  v5 = *(a1 + 32);
  v68 = 0;
  v69 = 0;
  v67 = 0;
  (*(v5 + 16))();
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = sLogObject_22;
  if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v6 count];
    *buf = 134217984;
    v73 = v11;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Found %lu expired download(s)", buf, 0xCu);
  }

  v12 = sLogObject_22;
  if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v7 count];
    *buf = 134217984;
    v73 = v14;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Found %lu unexpired download(s)", buf, 0xCu);
  }

  v15 = sLogObject_22;
  if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v8 count];
    *buf = 134217984;
    v73 = v17;
    _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Found %lu download(s) that will never expire", buf, 0xCu);
  }

  if ([v6 count])
  {
    v54 = v8;
    v55 = v7;
    v57 = WeakRetained;
    v18 = [v6 mutableCopy];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v56 = v6;
    v19 = v6;
    v20 = [v19 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v64;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v64 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v63 + 1) + 8 * i);
          if ((*(*(a1 + 40) + 16))())
          {
            v25 = sLogObject_22;
            if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v73 = v24;
              _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "Video is expired, but it is being played.  Will delete when playback ends: %@", buf, 0xCu);
            }

            [v18 removeObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v21);
    }

    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v28 = v18;
    v29 = [v28 countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v60;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v60 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v59 + 1) + 8 * j);
          v34 = [v33 availabilityEndDate];
          if (![v33 allowsManualRenewal])
          {
            v38 = sLogObject_22;
            v39 = os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT);
            v37 = v26;
            if (!v39)
            {
              goto LABEL_38;
            }

            *buf = 0;
            v40 = v38;
            v41 = "Deleting expired video since it does not allow manual renewal";
LABEL_37:
            _os_log_impl(&dword_1E323F000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
            v37 = v26;
            goto LABEL_38;
          }

          if (v34 && ![v34 vui_isInTheFuture])
          {
            v42 = sLogObject_22;
            v43 = os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT);
            v37 = v26;
            if (!v43)
            {
              goto LABEL_38;
            }

            *buf = 0;
            v40 = v42;
            v41 = "Deleting expired video even though it allows manual renewal, since it is outside the availability window";
            goto LABEL_37;
          }

          v35 = sLogObject_22;
          v36 = os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT);
          v37 = v27;
          if (v36)
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v35, OS_LOG_TYPE_DEFAULT, "Invalidating (but not deleting) expired video since it allows manual key renewal and is still within availability window", buf, 2u);
            v37 = v27;
          }

LABEL_38:
          [v37 addObject:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v30);
    }

    v44 = +[VUIMediaLibraryManager defaultManager];
    v45 = [v44 sidebandMediaLibrary];
    [v45 removeDownloadedMediaForVideoManagedObjects:v26 markAsDeleted:0 invalidateImmediately:1];

    v46 = +[VUIMediaLibraryManager defaultManager];
    v47 = [v46 sidebandMediaLibrary];
    [v47 invalidateKeysForVideoManagedObjects:v27];

    v6 = v56;
    WeakRetained = v57;
    v8 = v54;
    v7 = v55;
  }

  v48 = (*(*(a1 + 48) + 16))();
  v49 = sLogObject_22;
  if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v73 = v48;
    _os_log_impl(&dword_1E323F000, v49, OS_LOG_TYPE_DEFAULT, "Next expiration date is %@", buf, 0xCu);
  }

  if (v48)
  {
    v50 = [v48 dateByAddingTimeInterval:5.0];
    v51 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v50;
      _os_log_impl(&dword_1E323F000, v51, OS_LOG_TYPE_DEFAULT, "Expiration date for one or more downloads is in the future.  Scheduling expiration timer for %@", buf, 0xCu);
    }

    v52 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v50 interval:WeakRetained target:sel__expirationTimerDidFire_ selector:0 userInfo:0 repeats:0.0];
    [WeakRetained setExpirationTimer:v52];
    v53 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v53 addTimer:v52 forMode:*MEMORY[0x1E695D918]];
  }
}

void __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = +[VUIMediaLibraryManager defaultManager];
  v8 = [v7 sidebandMediaLibrary];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F5E5EB80];
  v10 = [v8 videosWithDownloadStates:v9 entitlementTypes:0 sortDescriptors:0 useMainThreadContext:1];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = v10;
  obj = [MEMORY[0x1E695DFD8] setWithArray:v10];
  v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v34)
  {
    v32 = v5;
    v33 = *v40;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v13 = [v12 fpsKeyInfo];
        v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (!v14)
        {

          v22 = v5;
LABEL_21:
          [v22 addObject:v12];
          continue;
        }

        v15 = v14;
        v16 = 0;
        v17 = *v36;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = [*(*(&v35 + 1) + 8 * j) expirationDate];
            v20 = v19;
            if (v19)
            {
              v21 = [v19 earlierDate:v6];

              if (v21 == v20)
              {
                [v4 addObject:v12];
              }

              v16 = 1;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v15);

        v5 = v32;
        v22 = v32;
        if ((v16 & 1) == 0)
        {
          goto LABEL_21;
        }

        v23 = [v4 containsObject:v12];
        v22 = v30;
        if ((v23 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v34);
  }

  if (a2)
  {
    v24 = v4;
    *a2 = v4;
  }

  if (a3)
  {
    *a3 = v30;
  }

  if (a4)
  {
    v25 = v5;
    *a4 = v5;
  }
}

id __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v2 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = [v7 fpsKeyInfo];
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v18 + 1) + 8 * j) expirationDate];
              v14 = v13;
              if (v13)
              {
                if (v4)
                {
                  v15 = [v13 earlierDate:v4];

                  v4 = v15;
                }

                else
                {
                  v4 = v13;
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a2;
  v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  v4 = 0;
  v5 = 0;
  if (v31)
  {
    v30 = *v37;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v8 = [v7 fpsKeyInfo];
        v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v33;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v33 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v32 + 1) + 8 * j);
              v14 = [v13 renewalDate];
              v15 = v14;
              if (v14)
              {
                if (v5)
                {
                  v16 = [v14 earlierDate:v5];

                  v5 = v16;
                }

                else
                {
                  v5 = v14;
                }
              }

              v17 = [v13 renewalInterval];
              v18 = v17;
              if (v17)
              {
                if (!v4 || ([v17 doubleValue], v20 = v19, objc_msgSend(v4, "doubleValue"), v20 < v21))
                {
                  v22 = v18;

                  v4 = v22;
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v10);
        }
      }

      v31 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v31);
  }

  if (a3)
  {
    v23 = v5;
    *a3 = v5;
  }

  if (a4)
  {
    v24 = v4;
    *a4 = v4;
  }

  if (v5)
  {
    v25 = [v5 vui_isInThePast];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)storeFPSKeyLoader:(id)a3 didLoadOfflineKeyData:(id)a4 forKeyRequest:(id)a5
{
  v5 = a5;
  v6 = [v5 context];
  v7 = [v5 keyIdentifier];
  if (v7)
  {
    v8 = +[VUIMediaLibraryManager defaultManager];
    v9 = [v8 sidebandMediaLibrary];
    v10 = [v9 fpsKeyInfoForVideo:v6 keyURI:v7 createIfNeeded:1 wasCreated:0];

    [v10 populateFromKeyRequest:v5 video:v6];
    v11 = +[VUIMediaLibraryManager defaultManager];
    v12 = [v11 sidebandMediaLibrary];
    [v12 saveChangesToManagedObjects];

    if (![v6 downloadState])
    {
      v13 = sLogObject_22;
      if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Offline keys renewed for an item that is no longer downloading or downloaded.  Invalidating keys.", v16, 2u);
      }

      v14 = +[VUIMediaLibraryManager defaultManager];
      v15 = [v14 sidebandMediaLibrary];
      [v15 removeDownloadedMediaForVideoManagedObject:v6 markAsDeleted:0 invalidateImmediately:1];
    }
  }
}

- (void)download:(id)a3 didChangeStateTo:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((a4 - 3) <= 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__VUIOfflineKeyRenewalManager_download_didChangeStateTo___block_invoke;
    v8[3] = &unk_1E872D990;
    v8[4] = self;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __57__VUIOfflineKeyRenewalManager_download_didChangeStateTo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadsForRepairingKeys];
  [v2 removeObject:*(a1 + 40)];
}

- (void)_networkReachbilityDidChange:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = sLogObject_22;
  if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
    v7 = @"NO";
    if (v6)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Network reachability did change.  Is reachable: %@", &v9, 0xCu);
  }

  v8 = [(VUIOfflineKeyRenewalManager *)self stateMachine];
  [v8 postEvent:@"Network reachability did change"];
}

- (void)_isPlaybackUIBeingShownDidChange:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = sLogObject_22;
  if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = +[VUIPlaybackManager sharedInstance];
    v7 = [v6 isPlaybackUIBeingShown];
    v8 = @"NO";
    if (v7)
    {
      v8 = @"YES";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "isPlaybackUIBeingShown did change to %@", &v10, 0xCu);
  }

  v9 = [(VUIOfflineKeyRenewalManager *)self stateMachine];
  [v9 postEvent:@"Playback UI being shown did change"];
}

- (void)_applicationDidEnterBackground:(id)a3
{
  v3 = [(VUIOfflineKeyRenewalManager *)self stateMachine];
  [v3 postEvent:@"Application did enter background"];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v3 = [(VUIOfflineKeyRenewalManager *)self stateMachine];
  [v3 postEvent:@"Application will enter foreground"];
}

- (void)_renewalTimerDidFire:(id)a3
{
  [(VUIOfflineKeyRenewalManager *)self setKeyRenewalTimer:0];
  v4 = [(VUIOfflineKeyRenewalManager *)self stateMachine];
  [v4 postEvent:@"Key renewal timer did fire"];
}

- (void)_expirationTimerDidFire:(id)a3
{
  [(VUIOfflineKeyRenewalManager *)self setExpirationTimer:0];
  v4 = [(VUIOfflineKeyRenewalManager *)self stateMachine];
  [v4 postEvent:@"Expiration timer did fire"];
}

- (void)_renewKeysForVideosGroupedByCertURL:(id)a3 outCompletedKeyRequests:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [v8 firstObject];
    v12 = [v11 firstObject];
    v13 = [v12 fpsCertificateURL];
    v14 = [v12 fpsKeyServerURL];
    objc_initWeak(&location, self);
    v15 = sLogObject_22;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v11 count];
      *buf = 134218498;
      v25 = v16;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Renewing %lu video(s) for tuple (%@, %@)", buf, 0x20u);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __102__VUIOfflineKeyRenewalManager__renewKeysForVideosGroupedByCertURL_outCompletedKeyRequests_completion___block_invoke;
    v18[3] = &unk_1E872DFB8;
    objc_copyWeak(&v22, &location);
    v19 = v8;
    v20 = v9;
    v21 = v10;
    [(VUIOfflineKeyRenewalManager *)self _renewKeysForVideos:v11 outCompletedKeyRequests:v20 completion:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Done renewing keys for all videos", buf, 2u);
    }

    if (v10)
    {
      v10[2](v10);
    }
  }
}

void __102__VUIOfflineKeyRenewalManager__renewKeysForVideosGroupedByCertURL_outCompletedKeyRequests_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
  [WeakRetained _renewKeysForVideosGroupedByCertURL:v2 outCompletedKeyRequests:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_renewKeysForVideos:(id)a3 outCompletedKeyRequests:(id)a4 completion:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v31 = a4;
  v9 = a5;
  if ([v8 count])
  {
    v29 = v9;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __86__VUIOfflineKeyRenewalManager__renewKeysForVideos_outCompletedKeyRequests_completion___block_invoke;
    v42[3] = &unk_1E8736560;
    v30 = v11;
    v43 = v30;
    v13 = v10;
    v44 = v13;
    v14 = v12;
    v45 = v14;
    [v8 enumerateObjectsUsingBlock:v42];
    v15 = [v8 firstObject];
    v16 = [v15 fpsCertificateURL];
    v17 = [v15 fpsKeyServerURL];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v16, v17];
    v19 = [(VUIOfflineKeyRenewalManager *)self contentKeySessions];
    v20 = [v19 objectForKey:v18];

    if (!v20)
    {
      v21 = sLogObject_22;
      if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v18;
        _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Creating content key session for tuple %@", buf, 0xCu);
      }

      v20 = [objc_alloc(MEMORY[0x1E69D5A08]) initWithContentKeyLoader:0 avAsset:0];
      v22 = [(VUIOfflineKeyRenewalManager *)self contentKeySessions];
      [v22 setObject:v20 forKey:v18];
    }

    objc_initWeak(buf, self);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __86__VUIOfflineKeyRenewalManager__renewKeysForVideos_outCompletedKeyRequests_completion___block_invoke_79;
    v32[3] = &unk_1E8736588;
    objc_copyWeak(&v41, buf);
    v33 = v31;
    v23 = v14;
    v34 = v23;
    v24 = v18;
    v35 = v24;
    v25 = v16;
    v36 = v25;
    v26 = v17;
    v37 = v26;
    v27 = v13;
    v38 = v27;
    v39 = v8;
    v40 = v29;
    [v20 generateOfflineKeyRequestsForIdentifiers:v30 completion:v32];

    objc_destroyWeak(&v41);
    objc_destroyWeak(buf);

    v9 = v29;
  }

  else
  {
    v28 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "Done renewing keys for tuple", buf, 2u);
    }

    if (v9)
    {
      v9[2](v9);
    }
  }
}

void __86__VUIOfflineKeyRenewalManager__renewKeysForVideos_outCompletedKeyRequests_completion___block_invoke(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [VUIOfflineKeyRenewalManager _keyInfosForVideo:v7 outKeyIdentifiers:v8];
  if (a3 && (v10 = [a1[4] count], v11 = objc_msgSend(v8, "count") + v10, v11 >= +[VUIStoreFPSKeyLoader maximumRequestBatchSize](VUIStoreFPSKeyLoader, "maximumRequestBatchSize")))
  {
    *a4 = 1;
  }

  else
  {
    v12 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v7 canonicalID];
      v15 = [v7 title];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Renewing keys for %@ (%@)", &v16, 0x16u);
    }

    [a1[5] addObject:v7];
    [a1[4] addObjectsFromArray:v8];
    [a1[6] unionSet:v9];
  }
}

void __86__VUIOfflineKeyRenewalManager__renewKeysForVideos_outCompletedKeyRequests_completion___block_invoke_79(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v54 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v4 = sLogObject_22;
  if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 134217984;
    v81 = [v3 count];
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Generated %lu key requests", buf, 0xCu);
  }

  [*(v54 + 32) addObjectsFromArray:v3];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v3;
  v55 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v55)
  {
    v52 = *v77;
    v51 = *MEMORY[0x1E69D5AE8];
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v77 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v76 + 1) + 8 * i);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v8 = *(v54 + 40);
        v9 = [v8 countByEnumeratingWithState:&v72 objects:v88 count:16];
        if (v9)
        {
          v10 = *v73;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v73 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v72 + 1) + 8 * j);
              v13 = [v12 keyURI];
              v14 = [v7 keyIdentifier];
              v15 = [v13 isEqual:v14];

              if (v15)
              {
                v16 = [v12 video];
                [v7 setContext:v16];

                v17 = [v12 video];
                v18 = [v17 additionalFPSRequestParams];
                [v7 setAdditionalRequestParams:v18];

                v19 = [v12 keyData];
                [v7 setOfflineKeyData:v19];

                v20 = [v12 contentID];
                [v7 setContentID:v20];

                v21 = [v12 video];
                v22 = [v21 canonicalID];

                if (v22)
                {
                  v23 = [v7 userInfo];
                  [v23 setObject:v22 forKey:v51];
                }

                goto LABEL_20;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v72 objects:v88 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      v55 = [obj countByEnumeratingWithState:&v76 objects:v89 count:16];
    }

    while (v55);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v53 = *(v54 + 40);
  v24 = [v53 countByEnumeratingWithState:&v68 objects:v87 count:16];
  if (!v24)
  {
    goto LABEL_45;
  }

  v56 = *v69;
  do
  {
    for (k = 0; k != v24; ++k)
    {
      if (*v69 != v56)
      {
        objc_enumerationMutation(v53);
      }

      v26 = *(*(&v68 + 1) + 8 * k);
      v27 = [v26 keyURI];
      v28 = v27 == 0;

      if (v28)
      {
        goto LABEL_37;
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v29 = obj;
      v30 = [v29 countByEnumeratingWithState:&v64 objects:v86 count:16];
      if (!v30)
      {
LABEL_36:

LABEL_37:
        v37 = [v26 renewalInterval];
        if (v37)
        {
          v38 = [MEMORY[0x1E695DF00] date];
          [v37 doubleValue];
          v29 = [v38 dateByAddingTimeInterval:?];
        }

        else
        {
          v29 = 0;
        }

        v39 = sLogObject_22;
        if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v81 = v26;
          v82 = 2112;
          v83 = v29;
          _os_log_error_impl(&dword_1E323F000, v39, OS_LOG_TYPE_ERROR, "Unable to generate key request for %@.  Resetting renewal date to %@", buf, 0x16u);
        }

        [v26 setRenewalDate:v29];

        goto LABEL_43;
      }

      v31 = *v65;
LABEL_30:
      v32 = 0;
      while (1)
      {
        if (*v65 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v64 + 1) + 8 * v32);
        v34 = [v26 keyURI];
        v35 = [v33 keyIdentifier];
        v36 = [v34 isEqual:v35];

        if (v36)
        {
          break;
        }

        if (v30 == ++v32)
        {
          v30 = [v29 countByEnumeratingWithState:&v64 objects:v86 count:16];
          if (v30)
          {
            goto LABEL_30;
          }

          goto LABEL_36;
        }
      }

LABEL_43:
    }

    v24 = [v53 countByEnumeratingWithState:&v68 objects:v87 count:16];
  }

  while (v24);
LABEL_45:

  v40 = [WeakRetained keyLoaders];
  v41 = [v40 objectForKey:*(v54 + 48)];

  if (!v41)
  {
    v42 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(v54 + 48);
      *buf = 138412290;
      v81 = v43;
      _os_log_impl(&dword_1E323F000, v42, OS_LOG_TYPE_DEFAULT, "Creating key loader for tuple %@", buf, 0xCu);
    }

    v41 = [[VUIStoreFPSKeyLoader alloc] initWithCertificateURL:*(v54 + 56) keyServerURL:*(v54 + 64)];
    [(VUIStoreFPSKeyLoader *)v41 setUsesKeyIdentifierPenaltyBox:0];
    [(VUIStoreFPSKeyLoader *)v41 setDelegate:WeakRetained];
    v44 = [WeakRetained keyLoaders];
    [v44 setObject:v41 forKey:*(v54 + 48)];
  }

  v45 = sLogObject_22;
  if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v45;
    v47 = [obj count];
    v48 = *(v54 + 56);
    v49 = *(v54 + 64);
    *buf = 134218498;
    v81 = v47;
    v82 = 2112;
    v83 = v48;
    v84 = 2112;
    v85 = v49;
    _os_log_impl(&dword_1E323F000, v46, OS_LOG_TYPE_DEFAULT, "Sending %lu offline key request(s) to key loader for tuple (%@, %@)", buf, 0x20u);
  }

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __86__VUIOfflineKeyRenewalManager__renewKeysForVideos_outCompletedKeyRequests_completion___block_invoke_81;
  v58[3] = &unk_1E872E8F0;
  objc_copyWeak(&v63, (v54 + 96));
  v59 = *(v54 + 72);
  v60 = *(v54 + 80);
  v61 = *(v54 + 32);
  v62 = *(v54 + 88);
  [(VUIStoreFPSKeyLoader *)v41 loadFairPlayStreamingKeyRequests:obj completion:v58];

  objc_destroyWeak(&v63);
}

void __86__VUIOfflineKeyRenewalManager__renewKeysForVideos_outCompletedKeyRequests_completion___block_invoke_81(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = sLogObject_22;
        if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(*(&v14 + 1) + 8 * i);
          v8 = v6;
          v9 = [v7 canonicalID];
          v10 = [v7 title];
          *buf = 138412546;
          v19 = v9;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Done renewing keys for %@ (%@)", buf, 0x16u);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v3);
  }

  v11 = [*(a1 + 40) subarrayWithRange:{objc_msgSend(*(a1 + 32), "count"), objc_msgSend(*(a1 + 40), "count") - objc_msgSend(*(a1 + 32), "count")}];
  [WeakRetained _renewKeysForVideos:v11 outCompletedKeyRequests:*(a1 + 48) completion:*(a1 + 56)];
}

+ (id)_keyInfosForVideo:(id)a3 outKeyIdentifiers:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v5 fpsKeyInfo];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v7 addObject:v13];
        v14 = [v13 keyURI];
        v15 = [v14 absoluteString];

        if (v15)
        {
          [v6 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_fetchNewKeysForVideosWithBrokenKeys:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 138412290;
    v18 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = sLogObject_22;
        if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v25 = v9;
          _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Fetching new keys for %@", buf, 0xCu);
        }

        v11 = [[VUIStoreAuxMediaItem alloc] initWithVideoManagedObject:v9 isForStartingDownload:0];
        v12 = +[VUIPlaybackManager sharedInstance];
        v13 = [v12 currentMediaItem];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 isEqualToMediaItem:v11])
        {
          v14 = v13;

          v11 = v14;
        }

        v15 = [MEMORY[0x1E69D5A18] sharedInstance];
        v16 = [v15 downloadForMediaItem:v11];

        v17 = [(VUIOfflineKeyRenewalManager *)self downloadsForRepairingKeys];
        [v17 addObject:v16];

        [(VUIStoreAuxMediaItem *)v11 setIgnoreExistingOfflineKeyData:1];
        [v16 setPerformKeyFetchOnly:1];
        [v16 addDelegate:self];
        [v16 start];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }
}

uint64_t __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 canonicalID];
  if (v2)
  {
    v3 = +[VUIPlaybackManager sharedInstance];
    v4 = [v3 isPlaybackUIBeingShown];

    if (v4)
    {
      v5 = +[VUIPlaybackManager sharedInstance];
      v6 = [v5 currentMediaItem];
      v7 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];

      if (v7)
      {
        v4 = [v7 isEqual:v2];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_104(id *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v5)
  {
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AEC0];
        v10 = [v8 fpsCertificateURL];
        v11 = [v8 fpsKeyServerURL];
        v12 = [v9 stringWithFormat:@"%@:%@", v10, v11];

        v13 = [v4 objectForKey:v12];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v13 addObject:v8];
        [v4 setObject:v13 forKey:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v5);
  }

  v14 = sLogObject_22;
  if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [obj count];
    v17 = [v4 count];
    *buf = 134218240;
    v39 = v16;
    v40 = 2048;
    v41 = v17;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Will renew keys for %lu videos with %lu tuple(s) of (certificateURL, keyServerURL)", buf, 0x16u);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [v4 allValues];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_105;
  v29[3] = &unk_1E8736658;
  objc_copyWeak(&v33, a1 + 8);
  v20 = v18;
  v30 = v20;
  v21 = a1[4];
  v22 = a1[5];
  v23 = a1[6];
  v24 = a1[7];
  *&v25 = v23;
  *(&v25 + 1) = v24;
  *&v26 = v21;
  *(&v26 + 1) = v22;
  v31 = v26;
  v32 = v25;
  [WeakRetained _renewKeysForVideosGroupedByCertURL:v19 outCompletedKeyRequests:v20 completion:v29];

  objc_destroyWeak(&v33);
}

void __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_105(uint64_t a1)
{
  v89 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v69 = a1;
  v5 = *(a1 + 32);
  v6 = @"Renewal did finish";
  v79 = [v5 countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (!v79)
  {
    goto LABEL_47;
  }

  v72 = v4;
  v68 = WeakRetained;
  v7 = 0;
  v78 = *v81;
  v77 = *MEMORY[0x1E69D60E8];
  v76 = *MEMORY[0x1E696A978];
  v73 = *MEMORY[0x1E69874D8];
  v70 = *MEMORY[0x1E696AA08];
  v8 = 0x1E8728000uLL;
  v74 = v5;
  v71 = v3;
  do
  {
    for (i = 0; i != v79; ++i)
    {
      v10 = v7;
      if (*v81 != v78)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v80 + 1) + 8 * i);
      v12 = [v11 error];
      v13 = [v11 context];
      v14 = [v11 keyIdentifier];
      v15 = v14;
      if (v12)
      {
        v16 = 1;
      }

      else
      {
        v16 = v14 == 0;
      }

      if (!v16)
      {
        goto LABEL_41;
      }

      v17 = [v12 domain];
      if (![v17 isEqualToString:v77])
      {

LABEL_20:
        v26 = [v12 domain];
        v27 = [v26 isEqualToString:v76];

        v7 = v27 | v10;
        if ((v27 & 1) != 0 || !v15)
        {
          goto LABEL_42;
        }

        v28 = [*(v8 + 1136) defaultManager];
        v29 = [v28 sidebandMediaLibrary];
        v30 = [v29 fpsKeyInfoForVideo:v13 keyURI:v15 createIfNeeded:0 wasCreated:0];

        v31 = [v30 renewalInterval];
        v75 = v31;
        if (v31)
        {
          v32 = [MEMORY[0x1E695DF00] date];
          [v31 doubleValue];
          v31 = [v32 dateByAddingTimeInterval:?];
        }

        v33 = sLogObject_22;
        if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v85 = v30;
          v86 = 2112;
          v87 = v31;
          _os_log_impl(&dword_1E323F000, v33, OS_LOG_TYPE_DEFAULT, "Error occurred for key %@.  Resetting renewal date to %@", buf, 0x16u);
        }

        [v30 setRenewalDate:v31];
        v34 = [v30 isInvalid];
        v35 = [v12 domain];
        if ([v35 isEqualToString:v73])
        {
          v36 = [v12 code];

          if (v36 == -11800)
          {
            v37 = [v12 userInfo];
            v35 = [v37 objectForKey:v70];

            v34 |= [v35 code] == -42801;
            v3 = v71;
            goto LABEL_29;
          }

          v3 = v71;
        }

        else
        {
LABEL_29:
        }

        v5 = v74;
        if ((v34 & 1) != 0 && v13 && ([v72 containsObject:v13] & 1) == 0)
        {
          v38 = sLogObject_22;
          if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v85 = v13;
            _os_log_error_impl(&dword_1E323F000, v38, OS_LOG_TYPE_ERROR, "Key refresh failed due to key integrity issue.  Will get new keys for %@", buf, 0xCu);
          }

          [v72 addObject:v13];
          v5 = v74;
        }

        v7 = v10;
        v8 = 0x1E8728000;
        goto LABEL_42;
      }

      v18 = [v12 code];

      if (v18 != -345015)
      {
        goto LABEL_20;
      }

      if (!v13 || ([v3 containsObject:v13] & 1) != 0)
      {
        goto LABEL_41;
      }

      v19 = (*(v69[5] + 16))();
      v20 = sLogObject_22;
      v21 = os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT);
      if (!v19)
      {
        if (v21)
        {
          *buf = 138412290;
          v85 = v13;
          _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Deleting download that user is no longer entitled to: %@", buf, 0xCu);
        }

        [v3 addObject:v13];
LABEL_41:
        v7 = v10;
        goto LABEL_42;
      }

      if (v21)
      {
        *buf = 138412290;
        v85 = v13;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "User is no longer entitled to video, but it is being played.  Will delete when playback ends: %@", buf, 0xCu);
      }

      v22 = [*(v8 + 1136) defaultManager];
      v23 = [v22 sidebandMediaLibrary];
      v24 = [v23 fpsKeyInfoForVideo:v13 keyURI:v15 createIfNeeded:0 wasCreated:0];

      v25 = [MEMORY[0x1E695DF00] distantPast];
      [v24 setExpirationDate:v25];

      v7 = v10;
      v5 = v74;
LABEL_42:
    }

    v79 = [v5 countByEnumeratingWithState:&v80 objects:v88 count:16];
  }

  while (v79);
  v6 = @"Renewal did finish";
  if (v7)
  {
    v6 = @"Network error did occur";
  }

  WeakRetained = v68;
  v4 = v72;
LABEL_47:

  v39 = +[VUIMediaLibraryManager defaultManager];
  v40 = [v39 sidebandMediaLibrary];
  [v40 saveChangesToManagedObjects];

  if ([v3 count])
  {
    v41 = +[VUIMediaLibraryManager defaultManager];
    v42 = [v41 sidebandMediaLibrary];
    v43 = [v3 allObjects];
    [v42 removeDownloadedMediaForVideoManagedObjects:v43 markAsDeleted:0 invalidateImmediately:1];
  }

  if ([v4 count])
  {
    [WeakRetained _fetchNewKeysForVideosWithBrokenKeys:v4];
  }

  (*(v69[6] + 16))();
  v44 = [WeakRetained contentKeySessions];
  [v44 removeAllObjects];

  v45 = [WeakRetained keyLoaders];
  [v45 removeAllObjects];

  v46 = [WeakRetained keyRenewalTimer];

  if (v46)
  {
    v47 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v47, OS_LOG_TYPE_DEFAULT, "Invalidating key renewal timer", buf, 2u);
    }

    v48 = [WeakRetained keyRenewalTimer];
    [v48 invalidate];

    [WeakRetained setKeyRenewalTimer:0];
  }

  (*(v69[7] + 16))();
  v49 = 0;
  v50 = (*(v69[8] + 16))();
  v51 = 0;
  v52 = 0;
  v53 = sLogObject_22;
  if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v85 = v51;
    _os_log_impl(&dword_1E323F000, v53, OS_LOG_TYPE_DEFAULT, "Earliest unexpired renewal date is %@", buf, 0xCu);
  }

  v54 = sLogObject_22;
  if (v50)
  {
    if (v52)
    {
      if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v54, OS_LOG_TYPE_DEFAULT, "Renewal date for one or more downloads is in the past after attempting renewal.  Will try again after renewal interval", buf, 2u);
      }

      v55 = [MEMORY[0x1E695DF00] date];
      [v52 doubleValue];
      v56 = [v55 dateByAddingTimeInterval:?];

      if (!v56)
      {
        goto LABEL_75;
      }

LABEL_67:
      v58 = sLogObject_22;
      if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v85 = v56;
        _os_log_impl(&dword_1E323F000, v58, OS_LOG_TYPE_DEFAULT, "Scheduling renewal timer for %@", buf, 0xCu);
      }

      v59 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v56 interval:WeakRetained target:sel__renewalTimerDidFire_ selector:0 userInfo:0 repeats:0.0];
      [WeakRetained setKeyRenewalTimer:v59];
      v60 = [MEMORY[0x1E695DFD0] currentRunLoop];
      [v60 addTimer:v59 forMode:*MEMORY[0x1E695D918]];

      goto LABEL_75;
    }

    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_ERROR))
    {
      __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_105_cold_1(v54);
    }

LABEL_74:
    v56 = 0;
    goto LABEL_75;
  }

  v57 = os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT);
  if (!v51)
  {
    if (v57)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v54, OS_LOG_TYPE_DEFAULT, "Earliest unexpired renewal is nil. Not performing or scheduling renewals", buf, 2u);
    }

    goto LABEL_74;
  }

  if (v57)
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v54, OS_LOG_TYPE_DEFAULT, "Renewal date for one or more downloads is in the future", buf, 2u);
  }

  v56 = [v51 dateByAddingTimeInterval:5.0];
  if (v56)
  {
    goto LABEL_67;
  }

LABEL_75:
  v61 = [WeakRetained backgroundTaskIdentifier];
  v62 = *MEMORY[0x1E69DDBE8];
  if (v61 != *MEMORY[0x1E69DDBE8])
  {
    v63 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      v64 = v63;
      v65 = [WeakRetained backgroundTaskIdentifier];
      *buf = 134217984;
      v85 = v65;
      _os_log_impl(&dword_1E323F000, v64, OS_LOG_TYPE_DEFAULT, "Ending background task with identifier %lu", buf, 0xCu);
    }

    v66 = [MEMORY[0x1E69DC668] sharedApplication];
    [v66 endBackgroundTask:{objc_msgSend(WeakRetained, "backgroundTaskIdentifier")}];

    [WeakRetained setBackgroundTaskIdentifier:v62];
  }

  v67 = [WeakRetained stateMachine];
  [v67 postEvent:v6];
}

uint64_t __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_116(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) backgroundTaskIdentifier];
  v3 = *MEMORY[0x1E69DDBE8];
  if (result != *MEMORY[0x1E69DDBE8])
  {
    v4 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_ERROR))
    {
      __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_116_cold_1(v1, v4);
    }

    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 endBackgroundTask:{objc_msgSend(*v1, "backgroundTaskIdentifier")}];

    return [*v1 setBackgroundTaskIdentifier:v3];
  }

  return result;
}

__CFString *__60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_119(uint64_t a1, void *a2)
{
  v2 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_2_122;
  v5[3] = &unk_1E872D768;
  v6 = v2;
  v3 = v2;
  [v3 executeBlockAfterCurrentStateTransition:v5];

  return @"Idle";
}

__CFString *__60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_7;
  v5[3] = &unk_1E872D768;
  v6 = v2;
  v3 = v2;
  [v3 executeBlockAfterCurrentStateTransition:v5];

  return @"Idle";
}

id __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2);
  v5 = [v4 currentState];

  return v5;
}

__CFString *__60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_10;
  v5[3] = &unk_1E872D768;
  v6 = v2;
  v3 = v2;
  [v3 executeBlockAfterCurrentStateTransition:v5];

  return @"Idle";
}

__CFString *__60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 currentState];
  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_13;
    v5[3] = &unk_1E872D768;
    v6 = v2;
    [v6 executeBlockAfterCurrentStateTransition:v5];

    v3 = @"Idle";
  }

  return v3;
}

id __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[VUIPlaybackManager sharedInstance];
  v5 = [v4 isPlaybackUIBeingShown];

  if ((v5 & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  v6 = [v3 currentState];

  return v6;
}

__CFString *__60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained keyRenewalTimer];

  if (v2)
  {
    v3 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating key renewal timer.  Will recreate if necessary when app enters foreground", buf, 2u);
    }

    v4 = [WeakRetained keyRenewalTimer];
    [v4 invalidate];

    [WeakRetained setKeyRenewalTimer:0];
  }

  v5 = [WeakRetained expirationTimer];

  if (v5)
  {
    v6 = sLogObject_22;
    if (os_log_type_enabled(sLogObject_22, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating expiration timer.  Will recreate if necessary when app enters foreground", v9, 2u);
    }

    v7 = [WeakRetained expirationTimer];
    [v7 invalidate];

    [WeakRetained setExpirationTimer:0];
  }

  return @"Idle";
}

id __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_139(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_2_142;
  v6[3] = &unk_1E872D768;
  v7 = v2;
  v3 = v2;
  [v3 executeBlockAfterCurrentStateTransition:v6];
  v4 = [v3 currentState];

  return v4;
}

void __60__VUIOfflineKeyRenewalManager__registerStateMachineHandlers__block_invoke_116_cold_1(void **a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  v4 = 134217984;
  v5 = [v2 backgroundTaskIdentifier];
  _os_log_error_impl(&dword_1E323F000, v3, OS_LOG_TYPE_ERROR, "VUIOfflineKeyRenewalManager with task identifier %lu expired.  Ending background task", &v4, 0xCu);
}

@end
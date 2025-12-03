@interface VUISecureInvalidationManager
+ (id)sharedInstance;
- (BOOL)_getParamsForDeletionInfo:(id)info keyServerURL:(id *)l nonceURL:(id *)rL keyIdentifier:(id *)identifier offlineKeyData:(id *)data dsid:(id *)dsid additionalRequestParams:(id *)params contentID:(id *)self0;
- (BOOL)storeFPSKeyLoader:(id)loader shouldKeyRequestContinueInvalidationAfterLoadingNonce:(id)nonce;
- (VUISecureInvalidationManager)init;
- (id)_invalidateKeysForDeletedVideos;
- (void)_networkReachbilityDidChange:(id)change;
- (void)_registerStateMachineHandlers;
- (void)_sendInvalidationRequestsForDeletionInfoArrays:(id)arrays completion:(id)completion;
- (void)_sendInvalidationRequestsForFirstArray:(id)array completion:(id)completion;
- (void)addDeletionInfoToPenaltyBox:(id)box;
- (void)dealloc;
- (void)invalidateKeysForDeletedVideos;
- (void)removeDeletionInfoFromPenaltyBox:(id)box;
@end

@implementation VUISecureInvalidationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[VUISecureInvalidationManager sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

void __46__VUISecureInvalidationManager_sharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUISecureInvalidationManager");
  v1 = sLogObject_6;
  sLogObject_6 = v0;

  v2 = objc_alloc_init(VUISecureInvalidationManager);
  v3 = sharedInstance_instance_0;
  sharedInstance_instance_0 = v2;
}

- (VUISecureInvalidationManager)init
{
  v13.receiver = self;
  v13.super_class = VUISecureInvalidationManager;
  v2 = [(VUISecureInvalidationManager *)&v13 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@", objc_opt_class()];
    v4 = [objc_alloc(MEMORY[0x1E69D5A60]) initWithName:v3 initialState:@"Idle" mode:0];
    stateMachine = v2->_stateMachine;
    v2->_stateMachine = v4;

    [(TVPStateMachine *)v2->_stateMachine setLogObject:sLogObject_6];
    [(VUISecureInvalidationManager *)v2 _registerStateMachineHandlers];
    [(TVPStateMachine *)v2->_stateMachine setShouldAcceptEvents:1];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    keyLoaders = v2->_keyLoaders;
    v2->_keyLoaders = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    penaltyBox = v2->_penaltyBox;
    v2->_penaltyBox = v8;

    v2->_backgroundTaskIdentifier = *MEMORY[0x1E69DDBE8];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy networkReachabilityDidChangeNotificationName];
    [defaultCenter addObserver:v2 selector:sel__networkReachbilityDidChange_ name:v11 object:0];
  }

  return v2;
}

- (void)_registerStateMachineHandlers
{
  v20[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  stateMachine = [(VUISecureInvalidationManager *)self stateMachine];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke;
  v16[3] = &unk_1E872FAD8;
  objc_copyWeak(&v17, &location);
  [stateMachine registerHandlerForEvent:@"Invalidation requested" onState:@"Idle" withBlock:v16];
  [stateMachine registerHandlerForEvent:@"Invalidation requested" onState:@"Invalidation in progress" withBlock:&__block_literal_global_69];
  [stateMachine registerHandlerForEvent:@"Invalidation requested" onState:@"Invalidation in progress refresh when done" withBlock:&__block_literal_global_71];
  [stateMachine registerHandlerForEvent:@"Invalidation requested" onState:@"Waiting for network reachability to invalidate keys" withBlock:&__block_literal_global_73];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke_4;
  v14[3] = &unk_1E872FAD8;
  objc_copyWeak(&v15, &location);
  [stateMachine registerHandlerForEvent:@"Network reachability did change" onState:@"Waiting for network reachability to invalidate keys" withBlock:v14];
  v20[0] = @"Invalidation in progress";
  v20[1] = @"Invalidation in progress refresh when done";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke_5;
  v12[3] = &unk_1E872FAD8;
  objc_copyWeak(&v13, &location);
  [stateMachine registerHandlerForEvent:@"Network reachability did change" onStates:v4 withBlock:v12];

  v19[0] = @"Invalidation in progress";
  v19[1] = @"Invalidation in progress refresh when done";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke_6;
  v10[3] = &unk_1E872FAD8;
  objc_copyWeak(&v11, &location);
  [stateMachine registerHandlerForEvent:@"Network error did occur" onStates:v5 withBlock:v10];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke_7;
  v8[3] = &unk_1E872FAD8;
  objc_copyWeak(&v9, &location);
  [stateMachine registerHandlerForEvent:@"Invalidation did finish" onState:@"Invalidation in progress" withBlock:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke_75;
  v6[3] = &unk_1E872FAD8;
  objc_copyWeak(&v7, &location);
  [stateMachine registerHandlerForEvent:@"Invalidation did finish" onState:@"Invalidation in progress refresh when done" withBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

- (void)invalidateKeysForDeletedVideos
{
  stateMachine = [(VUISecureInvalidationManager *)self stateMachine];
  [stateMachine postEvent:@"Invalidation requested"];
}

__CFString *__61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v2 = [WeakRetained _invalidateKeysForDeletedVideos];
  }

  else
  {
    v3 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Posting secure invalidation complete notification because network is not reachable", v6, 2u);
    }

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"VUITellAppRemovalServiceThatSecureInvalidationDidCompleteNotification" object:0];

    v2 = @"Waiting for network reachability to invalidate keys";
  }

  return v2;
}

- (id)_invalidateKeysForDeletedVideos
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v2 sidebandMediaLibrary];
  allFpsKeyDeletionInfos = [sidebandMediaLibrary allFpsKeyDeletionInfos];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = sLogObject_6;
  if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 134217984;
    v82 = [allFpsKeyDeletionInfos count];
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Found %lu key(s) to consider for invalidation", buf, 0xCu);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = allFpsKeyDeletionInfos;
  v8 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v8)
  {
    v9 = *v76;
    do
    {
      v10 = 0;
      do
      {
        if (*v76 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v75 + 1) + 8 * v10);
        expirationDate = [v11 expirationDate];
        v13 = expirationDate;
        if (expirationDate && ([expirationDate vui_isInTheFuture] & 1) == 0 && (objc_msgSend(v11, "playbackExpirationStartDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == 0, v14, v15))
        {
          v22 = sLogObject_6;
          if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v82 = v11;
            _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "Not performing invalidation for expired key: %@", buf, 0xCu);
          }

          [v62 addObject:v11];
        }

        else
        {
          objectID = [v11 objectID];
          v17 = v5;
          if (objectID)
          {
            penaltyBox = [(VUISecureInvalidationManager *)self penaltyBox];
            v19 = [penaltyBox containsObject:objectID];

            v17 = v5;
            if (v19)
            {
              v20 = sLogObject_6;
              v21 = os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT);
              v17 = v63;
              if (v21)
              {
                *buf = 138412290;
                v82 = v11;
                _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Not invalidating key because it's in the penalty box: %@", buf, 0xCu);
                v17 = v63;
              }
            }
          }

          [v17 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v23 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
      v8 = v23;
    }

    while (v23);
  }

  v24 = sLogObject_6;
  if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = [v62 count];
    *buf = 134217984;
    v82 = v26;
    _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "      %lu key(s) are expired and will not be invalidated", buf, 0xCu);
  }

  v27 = sLogObject_6;
  if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v27;
    v29 = [v63 count];
    *buf = 134217984;
    v82 = v29;
    _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "      %lu key(s) are in the penalty box and will not be invalidated", buf, 0xCu);
  }

  v30 = sLogObject_6;
  if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    v32 = [v5 count];
    *buf = 134217984;
    v82 = v32;
    _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "      %lu key(s) are not expired and/or have a playback expiration start date, and are not in the penalty box", buf, 0xCu);
  }

  if ([v62 count])
  {
    v33 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary2 = [v33 sidebandMediaLibrary];
    [sidebandMediaLibrary2 deleteFPSKeyDeletionInfos:v62];
  }

  if ([v5 count])
  {
    defaultCenter2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v74 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v35 = v5;
    v36 = [v35 countByEnumeratingWithState:&v71 objects:v79 count:16];
    if (v36)
    {
      v37 = *v72;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v72 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v71 + 1) + 8 * i);
          v40 = sLogObject_6;
          if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v82 = v39;
            _os_log_impl(&dword_1E323F000, v40, OS_LOG_TYPE_DEFAULT, "Will attempt to invalidate %@", buf, 0xCu);
          }

          if ([(VUISecureInvalidationManager *)self _validateParamsForDeletionInfo:v39])
          {
            v41 = MEMORY[0x1E696AEC0];
            fpsNonceURL = [v39 fpsNonceURL];
            fpsKeyServerURL = [v39 fpsKeyServerURL];
            dsid = [v39 dsid];
            v45 = [v41 stringWithFormat:@"%@:%@:%@", fpsNonceURL, fpsKeyServerURL, dsid];

            sidebandMediaLibrary3 = [defaultCenter2 objectForKey:v45];
            if (!sidebandMediaLibrary3)
            {
              sidebandMediaLibrary3 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [sidebandMediaLibrary3 addObject:v39];
            [defaultCenter2 setObject:sidebandMediaLibrary3 forKey:v45];
          }

          else
          {
            v47 = sLogObject_6;
            if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v82 = v39;
              _os_log_impl(&dword_1E323F000, v47, OS_LOG_TYPE_DEFAULT, "Unable to invalidate key due to param error: %@", buf, 0xCu);
            }

            v45 = +[VUIMediaLibraryManager defaultManager];
            sidebandMediaLibrary3 = [v45 sidebandMediaLibrary];
            [sidebandMediaLibrary3 deleteFPSKeyDeletionInfo:v39];
          }
        }

        v36 = [v35 countByEnumeratingWithState:&v71 objects:v79 count:16];
      }

      while (v36);
    }

    objc_initWeak(&location, self);
    allValues = [defaultCenter2 allValues];
    v49 = [allValues count] == 0;

    if (v49)
    {
      v57 = sLogObject_6;
      if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v57, OS_LOG_TYPE_DEFAULT, "Posting secure invalidation complete notification because there are no tuples to invalidate", buf, 2u);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"VUITellAppRemovalServiceThatSecureInvalidationDidCompleteNotification" object:0];

      v56 = @"Idle";
    }

    else
    {
      backgroundTaskIdentifier = [(VUISecureInvalidationManager *)self backgroundTaskIdentifier];
      if (backgroundTaskIdentifier == *MEMORY[0x1E69DDBE8])
      {
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __63__VUISecureInvalidationManager__invalidateKeysForDeletedVideos__block_invoke;
        v69[3] = &unk_1E872D768;
        v69[4] = self;
        v52 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"VUISecureInvalidationManager" expirationHandler:v69];

        v53 = sLogObject_6;
        if (v52 == backgroundTaskIdentifier)
        {
          if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
          {
            [VUISecureInvalidationManager _invalidateKeysForDeletedVideos];
          }
        }

        else if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v82 = v52;
          _os_log_impl(&dword_1E323F000, v53, OS_LOG_TYPE_DEFAULT, "Beginning background task with identifier %lu", buf, 0xCu);
        }

        [(VUISecureInvalidationManager *)self setBackgroundTaskIdentifier:v52];
      }

      else
      {
        v59 = sLogObject_6;
        if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v59, OS_LOG_TYPE_DEFAULT, "Not beginning background task since one is already in progress", buf, 2u);
        }
      }

      allValues2 = [defaultCenter2 allValues];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __63__VUISecureInvalidationManager__invalidateKeysForDeletedVideos__block_invoke_54;
      v67[3] = &unk_1E872E4B8;
      objc_copyWeak(&v68, &location);
      [(VUISecureInvalidationManager *)self _sendInvalidationRequestsForDeletionInfoArrays:allValues2 completion:v67];

      objc_destroyWeak(&v68);
      v56 = @"Invalidation in progress";
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v54 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v54, OS_LOG_TYPE_DEFAULT, "No keys need invalidating.", buf, 2u);
    }

    v55 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v55, OS_LOG_TYPE_DEFAULT, "Posting secure invalidation complete notification because no keys need invalidating", buf, 2u);
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"VUITellAppRemovalServiceThatSecureInvalidationDidCompleteNotification" object:0];
    v56 = @"Idle";
  }

  return v56;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUISecureInvalidationManager;
  [(VUISecureInvalidationManager *)&v4 dealloc];
}

- (void)addDeletionInfoToPenaltyBox:(id)box
{
  boxCopy = box;
  objectID = [boxCopy objectID];
  if (objectID)
  {
    v6 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
    {
      [(VUISecureInvalidationManager *)boxCopy addDeletionInfoToPenaltyBox:v6];
    }

    penaltyBox = [(VUISecureInvalidationManager *)self penaltyBox];
    [penaltyBox addObject:objectID];
  }
}

- (void)removeDeletionInfoFromPenaltyBox:(id)box
{
  v12 = *MEMORY[0x1E69E9840];
  boxCopy = box;
  objectID = [boxCopy objectID];
  if (objectID)
  {
    penaltyBox = [(VUISecureInvalidationManager *)self penaltyBox];
    v7 = [penaltyBox containsObject:objectID];

    if (v7)
    {
      v8 = sLogObject_6;
      if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = boxCopy;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Removing deletion info from penalty box: %@", &v10, 0xCu);
      }

      penaltyBox2 = [(VUISecureInvalidationManager *)self penaltyBox];
      [penaltyBox2 removeObject:objectID];
    }
  }
}

- (BOOL)storeFPSKeyLoader:(id)loader shouldKeyRequestContinueInvalidationAfterLoadingNonce:(id)nonce
{
  keyIdentifier = [nonce keyIdentifier];
  if (keyIdentifier)
  {
    v5 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v5 sidebandMediaLibrary];
    v7 = [sidebandMediaLibrary existingFpsKeyInfoForKeyURI:keyIdentifier];

    v8 = v7 == 0;
    if (v7)
    {
      v9 = sLogObject_6;
      if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Found new key while trying to delete old one.  Not continuing invalidation.", v11, 2u);
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t __63__VUISecureInvalidationManager__invalidateKeysForDeletedVideos__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) backgroundTaskIdentifier];
  v3 = *MEMORY[0x1E69DDBE8];
  if (result != *MEMORY[0x1E69DDBE8])
  {
    v4 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
    {
      __63__VUISecureInvalidationManager__invalidateKeysForDeletedVideos__block_invoke_cold_1(v1, v4);
    }

    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 endBackgroundTask:{objc_msgSend(*v1, "backgroundTaskIdentifier")}];

    return [*v1 setBackgroundTaskIdentifier:v3];
  }

  return result;
}

void __63__VUISecureInvalidationManager__invalidateKeysForDeletedVideos__block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sLogObject_6;
  if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Posting secure invalidation complete notification because invalidation has finished", v5, 2u);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"VUITellAppRemovalServiceThatSecureInvalidationDidCompleteNotification" object:0];

  v4 = [WeakRetained stateMachine];
  [v4 postEvent:@"Invalidation did finish"];
}

- (void)_sendInvalidationRequestsForDeletionInfoArrays:(id)arrays completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  arraysCopy = arrays;
  completionCopy = completion;
  v8 = sLogObject_6;
  if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = 134217984;
    v11 = [arraysCopy count];
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Will invalidate %lu tuple(s) of (keyServerURL, nonceURL, dsid)", &v10, 0xCu);
  }

  [(VUISecureInvalidationManager *)self _sendInvalidationRequestsForFirstArray:arraysCopy completion:completionCopy];
}

- (void)_sendInvalidationRequestsForFirstArray:(id)array completion:(id)completion
{
  v62 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  completionCopy = completion;
  v30 = arrayCopy;
  if ([arrayCopy count])
  {
    v29 = completionCopy;
    firstObject = [arrayCopy firstObject];
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = firstObject;
    v35 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v35)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v32 = *v50;
      do
      {
        v11 = 0;
        v12 = v8;
        v13 = v9;
        v14 = v10;
        do
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v49 + 1) + 8 * v11);
          v47 = v13;
          v48 = v14;
          v45 = 0;
          v46 = 0;
          v43 = 0;
          v44 = v12;
          v42 = 0;
          [(VUISecureInvalidationManager *)self _getParamsForDeletionInfo:v15 keyServerURL:&v48 nonceURL:&v47 keyIdentifier:&v46 offlineKeyData:&v45 dsid:&v44 additionalRequestParams:&v43 contentID:&v42];
          v10 = v48;

          v9 = v47;
          v16 = v46;
          v17 = v45;
          v8 = v44;

          v18 = v43;
          v19 = v42;
          v20 = [MEMORY[0x1E69D5A00] secureInvalidationRequestForIdentifier:v16 offlineKeyData:v17 additionalRequestParams:v18 contentID:v19];
          [v20 setContext:v15];
          [v33 addObject:v20];

          ++v11;
          v12 = v8;
          v13 = v9;
          v14 = v10;
        }

        while (v35 != v11);
        v35 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v35);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    v22 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v33 count];
      *buf = 134218754;
      v54 = v24;
      v55 = 2112;
      v56 = v10;
      v57 = 2112;
      v58 = v9;
      v59 = 2112;
      v60 = v8;
      _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "Sending %lu invalidation request(s) to key loader for tuple (%@, %@, %@)", buf, 0x2Au);
    }

    v25 = [[VUIStoreFPSKeyLoader alloc] initWithCertificateURL:0 keyServerURL:v10];
    [(VUIStoreFPSKeyLoader *)v25 setUsesKeyIdentifierPenaltyBox:0];
    [(VUIStoreFPSKeyLoader *)v25 setDelegate:self];
    [(VUIStoreFPSKeyLoader *)v25 setSecureInvalidationNonceURL:v9];
    [(VUIStoreFPSKeyLoader *)v25 setSecureInvalidationDSID:v8];
    keyLoaders = [(VUISecureInvalidationManager *)self keyLoaders];
    [keyLoaders addObject:v25];

    objc_initWeak(buf, self);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __82__VUISecureInvalidationManager__sendInvalidationRequestsForFirstArray_completion___block_invoke;
    v36[3] = &unk_1E872E8F0;
    objc_copyWeak(&v41, buf);
    v27 = v25;
    v37 = v27;
    v28 = v33;
    v38 = v28;
    v39 = v30;
    v40 = v29;
    [(VUIStoreFPSKeyLoader *)v27 invalidateKeysWithRequests:v28 completion:v36];

    objc_destroyWeak(&v41);
    objc_destroyWeak(buf);

    completionCopy = v29;
  }

  else
  {
    v21 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Done making invalidation requests", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __82__VUISecureInvalidationManager__sendInvalidationRequestsForFirstArray_completion___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained keyLoaders];
  [v2 removeObject:*(a1 + 32)];

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = a1;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v7 = *MEMORY[0x1E696A978];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v9 context];
        v11 = [v9 error];

        v12 = sLogObject_6;
        if (v11)
        {
          if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
          {
            v21 = v12;
            v22 = [v9 error];
            *buf = 138412546;
            v38 = v10;
            v39 = 2112;
            v40 = v22;
            _os_log_error_impl(&dword_1E323F000, v21, OS_LOG_TYPE_ERROR, "Error invalidating key: %@, %@", buf, 0x16u);
          }

          v13 = [v9 error];
          v14 = [v13 domain];
          v15 = [v14 isEqualToString:v7];

          if (v15)
          {
            v16 = sLogObject_6;
            if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
            {
              __82__VUISecureInvalidationManager__sendInvalidationRequestsForFirstArray_completion___block_invoke_cold_2(&v31, v32, v16);
            }

            v17 = [WeakRetained stateMachine];
            [v17 postEvent:@"Network error did occur"];
          }

          else
          {
            v18 = [v10 objectID];
            if (v18)
            {
              v19 = sLogObject_6;
              if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
              {
                __82__VUISecureInvalidationManager__sendInvalidationRequestsForFirstArray_completion___block_invoke_cold_1(&v29, v30, v19);
              }

              v20 = [WeakRetained penaltyBox];
              [v20 addObject:v18];
            }
          }
        }

        else
        {
          if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v10;
            _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Successfully invalidated %@", buf, 0xCu);
          }

          if (v10)
          {
            [v27 addObject:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v5);
  }

  if ([v27 count])
  {
    v23 = +[VUIMediaLibraryManager defaultManager];
    v24 = [v23 sidebandMediaLibrary];
    [v24 deleteFPSKeyDeletionInfos:v27];
  }

  v25 = [*(v26 + 48) subarrayWithRange:{1, objc_msgSend(*(v26 + 48), "count") - 1}];
  [WeakRetained _sendInvalidationRequestsForFirstArray:v25 completion:*(v26 + 56)];
}

- (BOOL)_getParamsForDeletionInfo:(id)info keyServerURL:(id *)l nonceURL:(id *)rL keyIdentifier:(id *)identifier offlineKeyData:(id *)data dsid:(id *)dsid additionalRequestParams:(id *)params contentID:(id *)self0
{
  infoCopy = info;
  keyData = [infoCopy keyData];
  v17 = [keyData length];
  v18 = v17 != 0;
  if (v17 || !os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
  {
    if (!data)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [VUISecureInvalidationManager _getParamsForDeletionInfo:keyServerURL:nonceURL:keyIdentifier:offlineKeyData:dsid:additionalRequestParams:contentID:];
  if (data)
  {
LABEL_4:
    v19 = keyData;
    *data = keyData;
  }

LABEL_5:
  fpsKeyServerURL = [infoCopy fpsKeyServerURL];
  if (!fpsKeyServerURL)
  {
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
    {
      [VUISecureInvalidationManager _getParamsForDeletionInfo:keyServerURL:nonceURL:keyIdentifier:offlineKeyData:dsid:additionalRequestParams:contentID:];
    }

    v18 = 0;
  }

  if (l)
  {
    v21 = fpsKeyServerURL;
    *l = fpsKeyServerURL;
  }

  fpsNonceURL = [infoCopy fpsNonceURL];
  if (!fpsNonceURL)
  {
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
    {
      [VUISecureInvalidationManager _getParamsForDeletionInfo:keyServerURL:nonceURL:keyIdentifier:offlineKeyData:dsid:additionalRequestParams:contentID:];
    }

    v18 = 0;
  }

  if (rL)
  {
    v23 = fpsNonceURL;
    *rL = fpsNonceURL;
  }

  keyURI = [infoCopy keyURI];
  if (!keyURI)
  {
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
    {
      [VUISecureInvalidationManager _getParamsForDeletionInfo:keyServerURL:nonceURL:keyIdentifier:offlineKeyData:dsid:additionalRequestParams:contentID:];
    }

    v18 = 0;
  }

  if (identifier)
  {
    v25 = keyURI;
    *identifier = keyURI;
  }

  dsid = [infoCopy dsid];
  v27 = dsid;
  if (!dsid || [dsid isEqualToNumber:&unk_1F5E5D0E0])
  {
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
    {
      [VUISecureInvalidationManager _getParamsForDeletionInfo:keyServerURL:nonceURL:keyIdentifier:offlineKeyData:dsid:additionalRequestParams:contentID:];
    }

    v18 = 0;
  }

  if (dsid)
  {
    v28 = v27;
    *dsid = v27;
  }

  additionalFPSRequestParamsJSONData = [infoCopy additionalFPSRequestParamsJSONData];
  v39 = keyData;
  if (![additionalFPSRequestParamsJSONData length])
  {
    v32 = MEMORY[0x1E695E0F8];
    goto LABEL_41;
  }

  v40 = 0;
  v30 = [MEMORY[0x1E696ACB0] JSONObjectWithData:additionalFPSRequestParamsJSONData options:0 error:&v40];
  v31 = v40;
  if (!v30)
  {
    v33 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
    {
      [VUISecureInvalidationManager _getParamsForDeletionInfo:v31 keyServerURL:v33 nonceURL:? keyIdentifier:? offlineKeyData:? dsid:? additionalRequestParams:? contentID:?];
    }

    goto LABEL_39;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
    {
      [VUISecureInvalidationManager _getParamsForDeletionInfo:keyServerURL:nonceURL:keyIdentifier:offlineKeyData:dsid:additionalRequestParams:contentID:];
    }

LABEL_39:
    v32 = MEMORY[0x1E695E0F8];
    goto LABEL_40;
  }

  v32 = v30;
LABEL_40:

LABEL_41:
  if (![v32 count])
  {
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
    {
      [VUISecureInvalidationManager _getParamsForDeletionInfo:keyServerURL:nonceURL:keyIdentifier:offlineKeyData:dsid:additionalRequestParams:contentID:];
    }

    v18 = 0;
  }

  if (params)
  {
    v34 = v32;
    *params = v32;
  }

  contentID = [infoCopy contentID];
  if (![contentID length])
  {
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_ERROR))
    {
      [VUISecureInvalidationManager _getParamsForDeletionInfo:keyServerURL:nonceURL:keyIdentifier:offlineKeyData:dsid:additionalRequestParams:contentID:];
    }

    v18 = 0;
  }

  if (d)
  {
    v36 = contentID;
    *d = contentID;
  }

  return v18;
}

- (void)_networkReachbilityDidChange:(id)change
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = sLogObject_6;
  if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
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

  stateMachine = [(VUISecureInvalidationManager *)self stateMachine];
  [stateMachine postEvent:@"Network reachability did change"];
}

id __61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 currentState];

  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v6 = [WeakRetained _invalidateKeysForDeletedVideos];

    v5 = v6;
  }

  return v5;
}

id __61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    [WeakRetained setNetworkErrorOccurredDuringInvalidation:1];
  }

  v5 = [v3 currentState];

  return v5;
}

id __61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNetworkErrorOccurredDuringInvalidation:1];
  v5 = [v3 currentState];

  return v5;
}

__CFString *__61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke_7(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained networkErrorOccurredDuringInvalidation])
  {
    v2 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Network error occurred during invalidation.  Waiting for reachability to change and try again.", &v11, 2u);
    }

    [WeakRetained setNetworkErrorOccurredDuringInvalidation:0];
    v3 = @"Waiting for network reachability to invalidate keys";
  }

  else
  {
    v3 = @"Idle";
  }

  v4 = [WeakRetained backgroundTaskIdentifier];
  v5 = *MEMORY[0x1E69DDBE8];
  if (v4 != *MEMORY[0x1E69DDBE8])
  {
    v6 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [WeakRetained backgroundTaskIdentifier];
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Ending background task with identifier %lu", &v11, 0xCu);
    }

    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    [v9 endBackgroundTask:{objc_msgSend(WeakRetained, "backgroundTaskIdentifier")}];

    [WeakRetained setBackgroundTaskIdentifier:v5];
  }

  return v3;
}

__CFString *__61__VUISecureInvalidationManager__registerStateMachineHandlers__block_invoke_75(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNetworkErrorOccurredDuringInvalidation:0];
  v2 = [WeakRetained backgroundTaskIdentifier];
  v3 = *MEMORY[0x1E69DDBE8];
  if (v2 != *MEMORY[0x1E69DDBE8])
  {
    v4 = sLogObject_6;
    if (os_log_type_enabled(sLogObject_6, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v9 = 134217984;
      v10 = [WeakRetained backgroundTaskIdentifier];
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Ending background task with identifier %lu", &v9, 0xCu);
    }

    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    [v6 endBackgroundTask:{objc_msgSend(WeakRetained, "backgroundTaskIdentifier")}];

    [WeakRetained setBackgroundTaskIdentifier:v3];
  }

  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v7 = [WeakRetained _invalidateKeysForDeletedVideos];
  }

  else
  {
    v7 = @"Waiting for network reachability to invalidate keys";
  }

  return v7;
}

- (void)addDeletionInfoToPenaltyBox:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Adding deletion info to penalty box: %@", &v2, 0xCu);
}

void __63__VUISecureInvalidationManager__invalidateKeysForDeletedVideos__block_invoke_cold_1(void **a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  v4 = 134217984;
  v5 = [v2 backgroundTaskIdentifier];
  _os_log_error_impl(&dword_1E323F000, v3, OS_LOG_TYPE_ERROR, "VUISecureInvalidationManager with task identifier %lu expired.  Ending background task", &v4, 0xCu);
}

void __82__VUISecureInvalidationManager__sendInvalidationRequestsForFirstArray_completion___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "Adding to penalty box", buf, 2u);
}

void __82__VUISecureInvalidationManager__sendInvalidationRequestsForFirstArray_completion___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "Not adding to penalty box because this is a network error", buf, 2u);
}

- (void)_getParamsForDeletionInfo:(uint64_t)a1 keyServerURL:(NSObject *)a2 nonceURL:keyIdentifier:offlineKeyData:dsid:additionalRequestParams:contentID:.cold.7(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Unable to deserialize fpsAdditionalServerParams: %@", &v2, 0xCu);
}

@end
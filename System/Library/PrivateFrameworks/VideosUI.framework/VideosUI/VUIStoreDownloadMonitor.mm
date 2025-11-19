@interface VUIStoreDownloadMonitor
+ (void)initialize;
- (VUIStoreDownloadMonitor)initWithDownload:(id)a3 downloadManager:(id)a4;
- (void)_registerStateMachineHandlers;
- (void)dealloc;
- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4;
- (void)waitForDownloadToBecomePlayableWithCompletion:(id)a3;
@end

@implementation VUIStoreDownloadMonitor

+ (void)initialize
{
  if (initialize_onceToken_2 != -1)
  {
    +[VUIStoreDownloadMonitor initialize];
  }
}

void __37__VUIStoreDownloadMonitor_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIStoreDownloadMonitor");
  v1 = sLogObject_4;
  sLogObject_4 = v0;
}

- (VUIStoreDownloadMonitor)initWithDownload:(id)a3 downloadManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = VUIStoreDownloadMonitor;
  v9 = [(VUIStoreDownloadMonitor *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_download, a3);
    objc_storeStrong(&v10->_downloadManager, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = v10->_completionHandlers;
    v10->_completionHandlers = v11;

    v13 = objc_alloc(MEMORY[0x1E696AD60]);
    v14 = objc_opt_class();
    v15 = initWithDownload_downloadManager__instanceNumber++;
    v16 = [v13 initWithFormat:@"%@ %ld", v14, v15];
    v17 = [objc_alloc(MEMORY[0x1E69D5A60]) initWithName:v16 initialState:@"Idle" mode:0];
    stateMachine = v10->_stateMachine;
    v10->_stateMachine = v17;

    [(TVPStateMachine *)v10->_stateMachine setLogObject:sLogObject_4];
    [(VUIStoreDownloadMonitor *)v10 _registerStateMachineHandlers];
    [(TVPStateMachine *)v10->_stateMachine setShouldAcceptEvents:1];
  }

  return v10;
}

- (void)dealloc
{
  [(SSDownloadManager *)self->_downloadManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = VUIStoreDownloadMonitor;
  [(VUIStoreDownloadMonitor *)&v3 dealloc];
}

- (void)waitForDownloadToBecomePlayableWithCompletion:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = @"CompletionHandlerKey";
    v4 = [a3 copy];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(VUIStoreDownloadMonitor *)self stateMachine];
  [v6 postEvent:@"Wait for download to become playable" withContext:0 userInfo:v5];
}

- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4
{
  v5 = a4;
  v4 = v5;
  TVPPerformBlockOnMainThreadIfNeeded();
}

void __67__VUIStoreDownloadMonitor_downloadManager_downloadStatesDidChange___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v16 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v15 + 1) + 8 * v6);
      v8 = [*(a1 + 40) download];
      v9 = [v7 vui_isEqualToDownload:v8];

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v7;

    if (!v10)
    {
      return;
    }

    v11 = [v10 downloadPhaseIdentifier];
    v12 = v11;
    if (v11)
    {
      v19 = @"DownloadPhaseKey";
      v20 = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    else
    {
      v13 = 0;
    }

    v14 = [*(a1 + 40) stateMachine];
    [v14 postEvent:@"Download phase did change" withContext:0 userInfo:v13];
  }

  else
  {
LABEL_9:
    v10 = v2;
  }
}

void __61__VUIStoreDownloadMonitor_downloadManagerDownloadsDidChange___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(a1 + 32) downloadManager];
  v3 = [v2 downloads];

  v4 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      v9 = [*(a1 + 32) download];
      v10 = [v8 vui_isEqualToDownload:v9];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v8;

    if (v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_9:
  }

  v12 = [*(a1 + 32) download];
  v13 = [v12 downloadPhaseIdentifier];

  v14 = sLogObject_4;
  if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v13;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Download has been removed.  Download's terminal phase is %@.", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69D4B30];
  if (([v13 isEqualToString:*MEMORY[0x1E69D4B30]] & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E69D4B28]) & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E69D4B18]) & 1) == 0)
  {
    v16 = sLogObject_4;
    if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Since terminal state isn't failed or cancelled, swizzling terminal state to SSDownloadPhaseFinished", buf, 2u);
    }

    v17 = v15;

    v13 = v17;
  }

  v18 = [*(a1 + 32) stateMachine];
  v24 = @"DownloadPhaseKey";
  v25 = v13;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [v18 postEvent:@"Download phase did change" withContext:0 userInfo:v19];

  v11 = 0;
LABEL_20:
}

- (void)_registerStateMachineHandlers
{
  v29[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke;
  aBlock[3] = &unk_1E872FA88;
  objc_copyWeak(&v27, &location);
  v2 = _Block_copy(aBlock);
  v3 = objc_loadWeakRetained(&location);
  v4 = [v3 stateMachine];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_3;
  v23[3] = &unk_1E872FAB0;
  objc_copyWeak(&v25, &location);
  v5 = v2;
  v24 = v5;
  [v4 registerHandlerForEvent:@"Wait for download to become playable" onState:@"Idle" withBlock:v23];

  v6 = objc_loadWeakRetained(&location);
  v7 = [v6 stateMachine];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_38;
  v21[3] = &unk_1E872FAD8;
  objc_copyWeak(&v22, &location);
  [v7 registerHandlerForEvent:@"Wait for download to become playable" onState:@"Waiting for download to become playable" withBlock:v21];

  v8 = objc_loadWeakRetained(&location);
  v9 = [v8 stateMachine];
  v29[0] = @"Waiting for download to become playable";
  v29[1] = @"Waiting for download token";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_2_39;
  v18[3] = &unk_1E872FAB0;
  objc_copyWeak(&v20, &location);
  v11 = v5;
  v19 = v11;
  [v9 registerHandlerForEvent:@"Download phase did change" onStates:v10 withBlock:v18];

  v12 = objc_loadWeakRetained(&location);
  v13 = [v12 stateMachine];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_42;
  v15[3] = &unk_1E872FAB0;
  objc_copyWeak(&v17, &location);
  v14 = v11;
  v16 = v14;
  [v13 registerHandlerForEvent:@"Asset download token timer did fire" onState:@"Waiting for download token" withBlock:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained stateMachine];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_2;
  v9[3] = &unk_1E872FA60;
  objc_copyWeak(v11, (a1 + 32));
  v11[1] = a2;
  v8 = v5;
  v10 = v8;
  [v7 executeBlockAfterCurrentStateTransition:v9];

  objc_destroyWeak(v11);
}

void __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained downloadManager];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v3 removeObserver:v4];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 completionHandlers];
  v7 = [v6 copy];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 completionHandlers];
  [v9 removeAllObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v15 + 1) + 8 * v14) + 16))(*(*(&v15 + 1) + 8 * v14));
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

__CFString *__56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 objectForKey:@"CompletionHandlerKey"];
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v15 = [WeakRetained completionHandlers];
    v16 = _Block_copy(v13);
    [v15 addObject:v16];
  }

  v17 = objc_loadWeakRetained((a1 + 40));
  v18 = [v17 download];
  if (v18)
  {
    v19 = v18;
    v20 = objc_loadWeakRetained((a1 + 40));
    v21 = [v20 downloadManager];

    if (v21)
    {
      v22 = objc_loadWeakRetained((a1 + 40));
      v23 = [v22 downloadManager];
      v24 = objc_loadWeakRetained((a1 + 40));
      [v23 addObserver:v24];

      v25 = objc_loadWeakRetained((a1 + 40));
      v26 = [v25 stateMachine];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_35;
      v32[3] = &unk_1E872E4B8;
      objc_copyWeak(&v33, (a1 + 40));
      [v26 executeBlockAfterCurrentStateTransition:v32];

      objc_destroyWeak(&v33);
      v27 = @"Waiting for download to become playable";
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = sLogObject_4;
  if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_ERROR))
  {
    __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_3_cold_1(v28);
  }

  v29 = objc_alloc(MEMORY[0x1E696ABC0]);
  v30 = [v29 initWithDomain:VUIStoreMediaItemErrorDomain code:-123003 userInfo:0];
  (*(*(a1 + 32) + 16))();

  v27 = @"Idle";
LABEL_10:

  return v27;
}

void __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_35(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained download];
  v4 = [v3 downloadPhaseIdentifier];

  if (v4)
  {
    v20 = @"DownloadPhaseKey";
    v21[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 stateMachine];
  [v7 postEvent:@"Download phase did change" withContext:0 userInfo:v5];

  if ([v4 isEqualToString:*MEMORY[0x1E69D4B40]])
  {
    v8 = sLogObject_4;
    if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = objc_loadWeakRetained((a1 + 32));
      v11 = [v10 download];
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Resuming download %@", buf, 0xCu);
    }

    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 downloadManager];
    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v14 download];
    v17 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [v13 resumeDownloads:v16 completionBlock:0];
  }
}

id __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"CompletionHandlerKey"];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained completionHandlers];
    v11 = _Block_copy(v8);
    [v10 addObject:v11];
  }

  v12 = [v7 currentState];

  return v12;
}

__CFString *__56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_2_39(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [a5 objectForKey:@"DownloadPhaseKey"];
  v9 = sLogObject_4;
  if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v8;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Download phase did change to %@", buf, 0xCu);
  }

  if (([v8 isEqualToString:*MEMORY[0x1E69D4B18]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69D4B28]))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = [WeakRetained download];
    v12 = [v11 failureError];

    if (v12)
    {
      v34 = *MEMORY[0x1E696AA08];
      v35 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = [v14 initWithDomain:VUIStoreMediaItemErrorDomain code:-123002 userInfo:v13];
    v16 = sLogObject_4;
    if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v15;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Download failed or cancelled: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();

LABEL_11:
    v17 = @"Idle";
    goto LABEL_12;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E69D4B30]])
  {
    v19 = sLogObject_4;
    if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Download is finished and ready to play from local URL", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_11;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E69D4B20]])
  {
    v20 = objc_loadWeakRetained((a1 + 40));
    v21 = [v20 download];
    v22 = [v21 assetsForType:*MEMORY[0x1E69D4AA0]];
    v23 = [v22 firstObject];

    v24 = [v23 valueForProperty:*MEMORY[0x1E69D4A78]];
    v25 = v24;
    if (v24 && ![v24 isEqual:&unk_1F5E5CE10])
    {
      v31 = sLogObject_4;
      if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "Download token exists - download is ready to play", buf, 2u);
      }

      (*(*(a1 + 32) + 16))();
      v17 = @"Idle";
    }

    else
    {
      v26 = sLogObject_4;
      if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "Download token does not yet exist even though phase is SSDownloadPhaseDownloading", buf, 2u);
      }

      v27 = [v7 currentState];
      v17 = @"Waiting for download token";
      v28 = [v27 isEqualToString:@"Waiting for download token"];

      if ((v28 & 1) == 0)
      {
        v29 = sLogObject_4;
        if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Waiting for download token", buf, 2u);
        }

        v30 = dispatch_time(0, 1000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_41;
        block[3] = &unk_1E872E4B8;
        objc_copyWeak(&v33, (a1 + 40));
        dispatch_after(v30, MEMORY[0x1E69E96A0], block);
        objc_destroyWeak(&v33);
        v17 = @"Waiting for download token";
      }
    }
  }

  else
  {
    v17 = @"Waiting for download to become playable";
  }

LABEL_12:

  return v17;
}

void __56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_41(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained stateMachine];
    [v2 postEvent:@"Asset download token timer did fire"];

    WeakRetained = v3;
  }
}

__CFString *__56__VUIStoreDownloadMonitor__registerStateMachineHandlers__block_invoke_42(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained download];
  v4 = [v3 assetsForType:*MEMORY[0x1E69D4AA0]];
  v5 = [v4 firstObject];

  v6 = [v5 valueForProperty:*MEMORY[0x1E69D4A78]];
  v7 = v6;
  if (v6 && ![v6 isEqual:&unk_1F5E5CE10])
  {
    v11 = sLogObject_4;
    if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Download token exists after recheck - download is ready to play", &v13, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = [v8 initWithDomain:VUIStoreMediaItemErrorDomain code:-123002 userInfo:0];
    v10 = sLogObject_4;
    if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Download token is still missing after recheck - failing with error %@", &v13, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  return @"Idle";
}

@end
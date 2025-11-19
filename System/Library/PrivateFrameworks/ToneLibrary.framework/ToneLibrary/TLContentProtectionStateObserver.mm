@interface TLContentProtectionStateObserver
+ (TLContentProtectionStateObserver)sharedContentProtectionStateObserver;
- (TLContentProtectionStateObserver)init;
- (id)_performBlockAfterProtectedContentUnlocked:(id)a3;
- (id)performBlockAfterProtectedContentUnlocked:(id)a3;
- (int64_t)_queryCurrentUnlockedSinceBootStatus;
- (void)_assertNotRunningOnAccessQueue;
- (void)_assertRunningOnAccessQueue;
- (void)_cancelBlockScheduledForProtectedContentUnlockedEventWithToken:(id)a3;
- (void)_cancelFirstUnlockNotifyToken;
- (void)_handleFirstUnlockNotification;
- (void)_loadContentProtectionStatusIfNeeded;
- (void)_loadUnlockedSinceBootStatusIfNeeded;
- (void)_queryCurrentUnlockedSinceBootStatus;
- (void)_registerFirstUnlockNotifyToken;
- (void)_updateUnlockedSinceBootStatus;
- (void)cancelBlockScheduledForProtectedContentUnlockedEventWithToken:(id)a3;
- (void)dealloc;
@end

@implementation TLContentProtectionStateObserver

+ (TLContentProtectionStateObserver)sharedContentProtectionStateObserver
{
  if (sharedContentProtectionStateObserver__TLContentProtectionStateObserverSharedInstanceOnceToken != -1)
  {
    +[TLContentProtectionStateObserver sharedContentProtectionStateObserver];
  }

  v3 = sharedContentProtectionStateObserver__TLContentProtectionStateObserverSharedInstance;

  return v3;
}

uint64_t __72__TLContentProtectionStateObserver_sharedContentProtectionStateObserver__block_invoke()
{
  sharedContentProtectionStateObserver__TLContentProtectionStateObserverSharedInstance = objc_alloc_init(TLContentProtectionStateObserver);

  return MEMORY[0x1EEE66BB8]();
}

- (TLContentProtectionStateObserver)init
{
  v15.receiver = self;
  v15.super_class = TLContentProtectionStateObserver;
  v2 = [(TLContentProtectionStateObserver *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    v6 = [v5 bundleIdentifier];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@-%@", v6, v4, @"AccessQueue"];
    accessQueueLabel = v2->_accessQueueLabel;
    v2->_accessQueueLabel = v7;

    v9 = dispatch_queue_create([(NSString *)v2->_accessQueueLabel UTF8String], 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v9;

    v11 = v2->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__TLContentProtectionStateObserver_init__block_invoke;
    block[3] = &unk_1E85789A0;
    v14 = v2;
    dispatch_sync(v11, block);
  }

  return v2;
}

uint64_t __40__TLContentProtectionStateObserver_init__block_invoke(uint64_t result)
{
  *(*(result + 32) + 32) = -1;
  *(*(result + 32) + 40) = -1;
  *(*(result + 32) + 48) = -1;
  return result;
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;
  v4 = accessQueue;

  [(TLContentProtectionStateObserver *)self _cancelFirstUnlockNotifyToken];
  dispatch_sync(v4, &__block_literal_global_8);

  v5.receiver = self;
  v5.super_class = TLContentProtectionStateObserver;
  [(TLContentProtectionStateObserver *)&v5 dealloc];
}

- (id)performBlockAfterProtectedContentUnlocked:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__TLContentProtectionStateObserver_performBlockAfterProtectedContentUnlocked___block_invoke;
  block[3] = &unk_1E8579C08;
  v12 = &v13;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_sync(accessQueue, block);
  v7 = v14[5];
  if (!v7)
  {
    v6[2](v6);
    v7 = v14[5];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __78__TLContentProtectionStateObserver_performBlockAfterProtectedContentUnlocked___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _performBlockAfterProtectedContentUnlocked:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_performBlockAfterProtectedContentUnlocked:(id)a3
{
  v4 = a3;
  [(TLContentProtectionStateObserver *)self _assertRunningOnAccessQueue];
  [(TLContentProtectionStateObserver *)self _loadContentProtectionStatusIfNeeded];
  if (self->_contentProtectionStatus == 1 && ([(TLContentProtectionStateObserver *)self _loadUnlockedSinceBootStatusIfNeeded], self->_unlockedSinceBootStatus != 1))
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v6 UUIDString];

    blocksScheduledForProtectedContentUnlockedEvent = self->_blocksScheduledForProtectedContentUnlockedEvent;
    if (!blocksScheduledForProtectedContentUnlockedEvent)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_blocksScheduledForProtectedContentUnlockedEvent;
      self->_blocksScheduledForProtectedContentUnlockedEvent = v8;

      blocksScheduledForProtectedContentUnlockedEvent = self->_blocksScheduledForProtectedContentUnlockedEvent;
    }

    v10 = [v4 copy];
    v11 = MEMORY[0x1DA730160]();
    [(NSMutableDictionary *)blocksScheduledForProtectedContentUnlockedEvent setObject:v11 forKey:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)cancelBlockScheduledForProtectedContentUnlockedEventWithToken:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__TLContentProtectionStateObserver_cancelBlockScheduledForProtectedContentUnlockedEventWithToken___block_invoke;
  v7[3] = &unk_1E8578900;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)_cancelBlockScheduledForProtectedContentUnlockedEventWithToken:(id)a3
{
  v4 = a3;
  [(TLContentProtectionStateObserver *)self _assertRunningOnAccessQueue];
  [(NSMutableDictionary *)self->_blocksScheduledForProtectedContentUnlockedEvent removeObjectForKey:v4];
}

- (void)_assertRunningOnAccessQueue
{
  v22 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    v4 = *MEMORY[0x1E69E9840];

    dispatch_assert_queue_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    if (strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]))
    {
      v6 = TLLogGeneral();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Utilities/TLContentProtectionStateObserver.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 lastPathComponent];
          v11 = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = 136381443;
          v15 = "[TLContentProtectionStateObserver _assertRunningOnAccessQueue]";
          v16 = 2113;
          v17 = v10;
          v18 = 2049;
          v19 = 155;
          v20 = 2113;
          v21 = v11;
          _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v14, 0x2Au);
        }
      }

      else
      {
        v8 = TLLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
        }
      }

      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TLAttentionAwarenessEffectProcessor _assertRunningOnAccessQueue];
      }
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)_assertNotRunningOnAccessQueue
{
  v22 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    v4 = *MEMORY[0x1E69E9840];

    dispatch_assert_queue_not_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    if (!strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]))
    {
      v6 = TLLogGeneral();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Utilities/TLContentProtectionStateObserver.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 lastPathComponent];
          v11 = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = 136381443;
          v15 = "[TLContentProtectionStateObserver _assertNotRunningOnAccessQueue]";
          v16 = 2113;
          v17 = v10;
          v18 = 2049;
          v19 = 163;
          v20 = 2113;
          v21 = v11;
          _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v14, 0x2Au);
        }
      }

      else
      {
        v8 = TLLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
        }
      }

      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TLAttentionAwarenessEffectProcessor _assertNotRunningOnAccessQueue];
      }
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)_cancelFirstUnlockNotifyToken
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_registerFirstUnlockNotifyToken
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __67__TLContentProtectionStateObserver__registerFirstUnlockNotifyToken__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleFirstUnlockNotification];
    WeakRetained = v2;
  }
}

- (void)_handleFirstUnlockNotification
{
  v9 = *MEMORY[0x1E69E9840];
  [(TLContentProtectionStateObserver *)self _assertRunningOnAccessQueue];
  v3 = TLLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    v6 = self;
    v7 = 2082;
    v8 = "com.apple.mobile.keybagd.first_unlock";
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Notify block fired for topic named %{public}s; updating unlocked since boot status.", &v5, 0x16u);
  }

  [(TLContentProtectionStateObserver *)self _updateUnlockedSinceBootStatus];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_updateUnlockedSinceBootStatus
{
  [(TLContentProtectionStateObserver *)self _assertRunningOnAccessQueue];
  v3 = [(TLContentProtectionStateObserver *)self _queryCurrentUnlockedSinceBootStatus];
  self->_unlockedSinceBootStatus = v3;
  if (v3 == 1)
  {
    [(TLContentProtectionStateObserver *)self _cancelFirstUnlockNotifyToken];
    v4 = [(NSMutableDictionary *)self->_blocksScheduledForProtectedContentUnlockedEvent allValues];
    v5 = [v4 copy];

    blocksScheduledForProtectedContentUnlockedEvent = self->_blocksScheduledForProtectedContentUnlockedEvent;
    self->_blocksScheduledForProtectedContentUnlockedEvent = 0;

    if ([v5 count])
    {
      v7 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__TLContentProtectionStateObserver__updateUnlockedSinceBootStatus__block_invoke;
      block[3] = &unk_1E85789A0;
      v9 = v5;
      dispatch_async(v7, block);
    }
  }
}

void __66__TLContentProtectionStateObserver__updateUnlockedSinceBootStatus__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5) + 16))(*(*(&v7 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_loadUnlockedSinceBootStatusIfNeeded
{
  [(TLContentProtectionStateObserver *)self _assertRunningOnAccessQueue];
  if (self->_unlockedSinceBootStatus == -1)
  {
    [(TLContentProtectionStateObserver *)self _registerFirstUnlockNotifyToken];

    [(TLContentProtectionStateObserver *)self _updateUnlockedSinceBootStatus];
  }
}

- (void)_loadContentProtectionStatusIfNeeded
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

- (int64_t)_queryCurrentUnlockedSinceBootStatus
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v17 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    *&buf[24] = &unk_1E8578D30;
    v19 = &v14;
    v4 = MobileKeyBagLibrary();
    v5 = dlsym(v4, "MKBDeviceUnlockedSinceBoot");
    *(v19[1] + 24) = v5;
    getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(v19[1] + 24);
    v3 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v3)
  {
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    __break(1u);
  }

  v7 = v3(v6);
  v8 = v7;
  if (!v7)
  {
    v10 = 0;
    v9 = @"no";
LABEL_8:
    v11 = TLLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v8;
      *&buf[18] = 2114;
      *&buf[20] = v9;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: MKBDeviceUnlockedSinceBoot() returned %d; converted to unlockedSinceBootStatus = %{public}@.", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

  if (v7 == 1)
  {
    v9 = @"yes";
    v10 = 1;
    goto LABEL_8;
  }

  v11 = TLLogGeneral();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [TLContentProtectionStateObserver _queryCurrentUnlockedSinceBootStatus];
  }

  v10 = -1;
LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_queryCurrentUnlockedSinceBootStatus
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

@end
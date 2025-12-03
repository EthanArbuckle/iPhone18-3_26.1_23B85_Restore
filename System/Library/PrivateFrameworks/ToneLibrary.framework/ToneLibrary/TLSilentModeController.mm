@interface TLSilentModeController
+ (TLSilentModeController)sharedSilentModeController;
- (BOOL)_registerRingerSwitchChangedNotifyToken;
- (TLSilentModeController)init;
- (int64_t)_silentModeStatusForRingerSwitchChangedNotifyToken:(int)token;
- (int64_t)silentModeStatus;
- (void)_assertNotRunningOnAccessQueue;
- (void)_assertRunningOnAccessQueue;
- (void)_cancelRingerSwitchChangedNotifyToken;
- (void)_performBlockOnAccessQueue:(id)queue;
- (void)_registerRingerSwitchChangedNotifyToken;
- (void)_setSilentModeStatus:(int64_t)status;
- (void)dealloc;
@end

@implementation TLSilentModeController

+ (TLSilentModeController)sharedSilentModeController
{
  if (sharedSilentModeController__TLSilentModeControllerSharedInstanceOnceToken != -1)
  {
    +[TLSilentModeController sharedSilentModeController];
  }

  v3 = sharedSilentModeController__TLSilentModeControllerSharedInstance;

  return v3;
}

uint64_t __52__TLSilentModeController_sharedSilentModeController__block_invoke()
{
  sharedSilentModeController__TLSilentModeControllerSharedInstance = objc_alloc_init(TLSilentModeController);

  return MEMORY[0x1EEE66BB8]();
}

- (TLSilentModeController)init
{
  v17.receiver = self;
  v17.super_class = TLSilentModeController;
  v2 = [(TLSilentModeController *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = NSStringFromClass(v3);
    v8 = [v4 stringWithFormat:@"%@.%@-%@", bundleIdentifier, v7, @"AccessQueue"];
    accessQueueLabel = v2->_accessQueueLabel;
    v2->_accessQueueLabel = v8;

    v10 = dispatch_queue_create([(NSString *)v2->_accessQueueLabel UTF8String], 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v10;

    if ([(TLSilentModeController *)v2 _registerRingerSwitchChangedNotifyToken])
    {
      v12 = [(TLSilentModeController *)v2 _silentModeStatusForRingerSwitchChangedNotifyToken:v2->_ringerSwitchChangedNotifyToken];
    }

    else
    {
      v12 = -1;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __30__TLSilentModeController_init__block_invoke;
    v14[3] = &unk_1E8578CC0;
    v15 = v2;
    v16 = v12;
    [(TLSilentModeController *)v15 _performBlockOnAccessQueue:v14];
  }

  return v2;
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;
  v4 = accessQueue;

  [(TLSilentModeController *)self _cancelRingerSwitchChangedNotifyToken];
  dispatch_sync(v4, &__block_literal_global_8_0);

  v5.receiver = self;
  v5.super_class = TLSilentModeController;
  [(TLSilentModeController *)&v5 dealloc];
}

- (int64_t)silentModeStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__TLSilentModeController_silentModeStatus__block_invoke;
  v4[3] = &unk_1E8578950;
  v4[4] = self;
  v4[5] = &v5;
  [(TLSilentModeController *)self _performBlockOnAccessQueue:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_setSilentModeStatus:(int64_t)status
{
  [(TLSilentModeController *)self _assertRunningOnAccessQueue];
  if (self->_silentModeStatus != status)
  {
    self->_silentModeStatus = status;
  }
}

- (void)_performBlockOnAccessQueue:(id)queue
{
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    dispatch_sync(accessQueue, queue);
  }
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
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Utilities/TLSilentModeController.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v8 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = 136381443;
          v15 = "[TLSilentModeController _assertRunningOnAccessQueue]";
          v16 = 2113;
          v17 = lastPathComponent;
          v18 = 2049;
          v19 = 114;
          v20 = 2113;
          v21 = callStackSymbols;
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
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Utilities/TLSilentModeController.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v8 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = 136381443;
          v15 = "[TLSilentModeController _assertNotRunningOnAccessQueue]";
          v16 = 2113;
          v17 = lastPathComponent;
          v18 = 2049;
          v19 = 122;
          v20 = 2113;
          v21 = callStackSymbols;
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

- (void)_cancelRingerSwitchChangedNotifyToken
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_0(&dword_1D9356000, v0, v1, "%{public}@: Failed to cancel notify token for notify topic named %{public}s; notifyCancelStatus = %lu.");
  v2 = *MEMORY[0x1E69E9840];
}

- (BOOL)_registerRingerSwitchChangedNotifyToken
{
  objc_initWeak(&location, self);
  self->_ringerSwitchChangedNotifyToken = -1;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__TLSilentModeController__registerRingerSwitchChangedNotifyToken__block_invoke;
  v7[3] = &unk_1E8579C30;
  objc_copyWeak(&v8, &location);
  v4 = notify_register_dispatch("com.apple.springboard.ringerstate", &self->_ringerSwitchChangedNotifyToken, accessQueue, v7);
  if (v4)
  {
    v5 = TLLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [TLSilentModeController _registerRingerSwitchChangedNotifyToken];
    }
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return v4 == 0;
}

void __65__TLSilentModeController__registerRingerSwitchChangedNotifyToken__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _updateSilentModeStatusUsingRingerSwitchChangedNotifyToken:a2];
    WeakRetained = v4;
  }
}

- (int64_t)_silentModeStatusForRingerSwitchChangedNotifyToken:(int)token
{
  v25 = *MEMORY[0x1E69E9840];
  if (token == -1)
  {
    v6 = TLLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(TLSilentModeController *)self _silentModeStatusForRingerSwitchChangedNotifyToken:v6];
    }

    v5 = -1;
  }

  else
  {
    state64 = -1;
    if (notify_get_state(token, &state64))
    {
      v4 = TLLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [TLSilentModeController _silentModeStatusForRingerSwitchChangedNotifyToken:];
      }

      v5 = -1;
    }

    else
    {
      v7 = -1;
      v8 = @"unknown";
      v9 = @"silent";
      if (state64)
      {
        v9 = 0;
      }

      else
      {
        v8 = @"on";
      }

      if (!state64)
      {
        v7 = 1;
      }

      if (state64 == 1)
      {
        v10 = @"tone1";
      }

      else
      {
        v10 = v9;
      }

      if (state64 == 1)
      {
        v11 = @"off";
      }

      else
      {
        v11 = v8;
      }

      if (state64 == 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = v7;
      }

      v4 = TLLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        selfCopy = self;
        v17 = 2048;
        v18 = state64;
        v19 = 2114;
        v20 = v10;
        v21 = 2082;
        v22 = "com.apple.springboard.ringerstate";
        v23 = 2114;
        v24 = v11;
        _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved ringerSwitchState = %llu (%{public}@) from notify token for topic named %{public}s; converted to silentModeStatus = %{public}@.", buf, 0x34u);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_registerRingerSwitchChangedNotifyToken
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_0(&dword_1D9356000, v0, v1, "%{public}@: Failed to register notify token for notify topic named %{public}s; notifyRegisterDispatchStatus = %lu.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_silentModeStatusForRingerSwitchChangedNotifyToken:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_0(&dword_1D9356000, v0, v1, "%{public}@: Failed to get state for notify topic named %{public}s; notifyStatus = %lu.");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_silentModeStatusForRingerSwitchChangedNotifyToken:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2082;
  v6 = "com.apple.springboard.ringerstate";
  _os_log_error_impl(&dword_1D9356000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get state for notify topic named %{public}s because ringerSwitchChangedNotifyToken = NOTIFY_TOKEN_INVALID.", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end
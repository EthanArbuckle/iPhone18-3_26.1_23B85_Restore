@interface SBFMobileKeyBag
+ (id)sharedInstance;
- ($5FACF4406A79EE03481B7753C49AE7A4)_queue_aksDeviceState;
- (BOOL)_queue_isContinuityUnlocked;
- (BOOL)_queue_verifyExpectedStashState:(int64_t)state;
- (BOOL)_shouldHandleKeyBagEventWithHandleState:(id)state;
- (BOOL)beginRecovery:(id)recovery error:(id *)error;
- (BOOL)hasBeenUnlockedSinceBoot;
- (BOOL)hasPasscodeSet;
- (BOOL)isContinuityUnlocked;
- (BOOL)isInStoreDemoMode;
- (BOOL)unlockWithOptions:(id)options error:(id *)error;
- (BOOL)verifyWithOptions:(id)options error:(id *)error;
- (SBFMobileKeyBag)init;
- (SBFMobileKeyBagState)extendedState;
- (SBFMobileKeyBagState)state;
- (id)_queue_keyBagInfo;
- (id)_queue_lockStateExtended:(BOOL)extended;
- (int64_t)maxUnlockAttempts;
- (void)_queue_aksDeviceState;
- (void)_queue_createStashBag:(id)bag skipSEKeepUserDataOperation:(BOOL)operation;
- (void)_queue_firstUnlockOccurred;
- (void)_queue_handleKeybagStatusChanged;
- (void)addObserver:(id)observer;
- (void)createStashBagWithOptions:(id)options completion:(id)completion completionQueue:(id)queue;
- (void)dealloc;
- (void)lockSkippingGracePeriod:(BOOL)period endingContinuityUnlock:(BOOL)unlock;
- (void)maxUnlockAttempts;
- (void)performAfterFirstUnlockSinceBootUsingBlock:(id)block;
- (void)refreshContinuityUnlockHeartbeat;
- (void)removeObserver:(id)observer;
- (void)waitForUnlockWithTimeout:(float)timeout;
@end

@implementation SBFMobileKeyBag

- (BOOL)hasPasscodeSet
{
  BSDispatchQueueAssertNot();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__SBFMobileKeyBag_hasPasscodeSet__block_invoke;
  v5[3] = &unk_1E807F1F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (SBFMobileKeyBagState)extendedState
{
  BSDispatchQueueAssertNot();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__SBFMobileKeyBag_extendedState__block_invoke;
  v6[3] = &unk_1E807F1F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __32__SBFMobileKeyBag_extendedState__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _queue_lockStateExtended:1];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_queue_keyBagInfo
{
  v25 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v24 = 0;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  [(SBFMobileKeyBag *)self _queue_aksDeviceState];
  MKBGetDeviceLockStateInfo = _get_MKBGetDeviceLockStateInfo();
  v4 = MKBGetDeviceLockStateInfo(0);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{0, @"kSBFKeyBagInfoExtendedLockState"}];
  v21[0] = v5;
  v20[1] = @"kSBFKeyBagInfoLockState";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v21[1] = v6;
  v20[2] = @"kSBFKeyBagInfoKeyBagState";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v21[2] = v7;
  v20[3] = @"kSBFKeyBagInfoBackOff";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
  v21[3] = v8;
  v20[4] = @"kSBFKeyBagInfoFailedAttempts";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v21[4] = v9;
  v20[5] = @"kSBFKeyBagInfoPermanentlyBlocked";
  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B1A48]];
  v11 = v10;
  v12 = MEMORY[0x1E695E110];
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = MEMORY[0x1E695E110];
  }

  v21[5] = v13;
  v20[6] = @"kSBFKeyBagInfoShouldWipe";
  v14 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B1A50]];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v21[6] = v16;
  v20[7] = @"kSBFKeyBagInfoRecoveryCountdown";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v23 + 10)];
  v21[7] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:8];

  return v18;
}

- ($5FACF4406A79EE03481B7753C49AE7A4)_queue_aksDeviceState
{
  BSDispatchQueueAssert();
  *&retstr->var11[8] = 0;
  *&retstr->var7 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var3 = 0u;
  result = aks_get_extended_device_state();
  if (result)
  {
    v5 = SBLogAuthenticationKeybag();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBFMobileKeyBag _queue_aksDeviceState];
    }
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[SBFMobileKeyBag sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

- (SBFMobileKeyBagState)state
{
  BSDispatchQueueAssertNot();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__SBFMobileKeyBag_state__block_invoke;
  v6[3] = &unk_1E807F1F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __24__SBFMobileKeyBag_state__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _queue_lockStateExtended:0];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)hasBeenUnlockedSinceBoot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SBFMobileKeyBag_hasBeenUnlockedSinceBoot__block_invoke;
  v5[3] = &unk_1E807F1F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __23__SBFMobileKeyBag_init__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    if (a2 == 1)
    {
      v8 = WeakRetained;
      if ([*(a1 + 32) _shouldHandleKeyBagEventWithHandleState:a3])
      {
        [v8 _queue_handleKeybagStatusChanged];
      }
    }
  }

  else
  {
    WeakRetained[49] = 1;
    [WeakRetained _queue_firstUnlockOccurred];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_queue_handleKeybagStatusChanged
{
  v19 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v3 = [(NSHashTable *)self->_queue_observers copy];
  v4 = [(NSMutableArray *)self->_queue_observerStateChangedCallbackBlocks copy];
  v5 = [(SBFMobileKeyBag *)self _queue_lockStateExtended:1];
  [(SBFMobileKeyBag *)self _queue_setHasPasscodeIfNecessary:v5];
  v6 = SBLogAuthenticationKeybag();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    publicDescription = [v5 publicDescription];
    *buf = 138543362;
    v18 = publicDescription;
    _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "Keybag state changed: %{public}@", buf, 0xCu);
  }

  calloutQueue = self->_calloutQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__SBFMobileKeyBag__queue_handleKeybagStatusChanged__block_invoke;
  v12[3] = &unk_1E807F308;
  v13 = v4;
  v14 = v5;
  v15 = v3;
  selfCopy = self;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  dispatch_async(calloutQueue, v12);
}

void __51__SBFMobileKeyBag__queue_handleKeybagStatusChanged__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v38;
    do
    {
      v6 = 0;
      do
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v37 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v4);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 keybagWillBeginProcessingStateChange:*(a1 + 56)];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = *(a1 + 48);
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          [v18 keybag:*(a1 + 56) extendedStateDidChange:*(a1 + 40)];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v15);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = *(a1 + 48);
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v25 + 1) + 8 * v23);
        if (objc_opt_respondsToSelector())
        {
          [v24 keybagDidFinishProcessingStateChange:{*(a1 + 56), v25}];
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v21);
  }
}

uint64_t __33__SBFMobileKeyBag_sharedInstance__block_invoke()
{
  sharedInstance___instance = objc_alloc_init(SBFMobileKeyBag);

  return MEMORY[0x1EEE66BB8]();
}

- (SBFMobileKeyBag)init
{
  v19.receiver = self;
  v19.super_class = SBFMobileKeyBag;
  v2 = [(SBFMobileKeyBag *)&v19 init];
  if (v2)
  {
    v3 = BSDispatchQueueCreateWithQualityOfService();
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v3;

    v5 = BSDispatchQueueCreateWithQualityOfService();
    queue = v2->_queue;
    v2->_queue = v5;

    objc_initWeak(&location, v2);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __23__SBFMobileKeyBag_init__block_invoke;
    v15 = &unk_1E807F150;
    objc_copyWeak(&v17, &location);
    v7 = v2;
    v16 = v7;
    v7->_aksEvent = AKSEventsRegister();
    v8 = v2->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __23__SBFMobileKeyBag_init__block_invoke_2;
    v10[3] = &unk_1E807F178;
    v11 = v7;
    dispatch_async(v8, v10);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __23__SBFMobileKeyBag_init__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) _queue_lockStateExtended:1];
  [*(a1 + 32) _queue_setHasPasscodeIfNecessary:v3];
  MKBDeviceUnlockedSinceBoot = _get_MKBDeviceUnlockedSinceBoot();
  *(*(a1 + 32) + 49) = *(*(a1 + 32) + 48) ^ 1 | (MKBDeviceUnlockedSinceBoot() > 0);
}

- (void)dealloc
{
  AKSEventsUnregister();
  v3.receiver = self;
  v3.super_class = SBFMobileKeyBag;
  [(SBFMobileKeyBag *)&v3 dealloc];
}

- (void)lockSkippingGracePeriod:(BOOL)period endingContinuityUnlock:(BOOL)unlock
{
  BSDispatchQueueAssertNot();
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__SBFMobileKeyBag_lockSkippingGracePeriod_endingContinuityUnlock___block_invoke;
  v8[3] = &unk_1E807F1A0;
  v8[4] = self;
  unlockCopy = unlock;
  periodCopy = period;
  dispatch_sync(queue, v8);
}

void __66__SBFMobileKeyBag_lockSkippingGracePeriod_endingContinuityUnlock___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _queue_isContinuityUnlocked] && (*(a1 + 40) & 1) == 0)
  {
    v3 = SBLogAuthenticationKeybag();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 41);
      *buf = 67109120;
      v7 = v4;
      _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, "Deferring keybag lock because endingContinuityUnlock = NO (skipGracePeriod = %{BOOL}u)", buf, 8u);
    }
  }

  else
  {
    if (*(a1 + 41) == 1)
    {
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObject:*MEMORY[0x1E695E4D0] forKey:@"LockDeviceNow"];
    }

    else
    {
      v5 = 0;
    }

    MKBLockDevice = _get_MKBLockDevice();
    MKBLockDevice(v5);
  }
}

- (BOOL)unlockWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  BSDispatchQueueAssertNot();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SBFMobileKeyBag_unlockWithOptions_error___block_invoke;
  block[3] = &unk_1E807F1C8;
  v8 = optionsCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v19;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v20[5];
  }

  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __43__SBFMobileKeyBag_unlockWithOptions_error___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"SkipSE";
  v2 = [*(a1 + 32) skipSEKeepUserDataOperation];
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v11[0] = *v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  MKBUnlockDevice = _get_MKBUnlockDevice();
  v6 = MKBUnlockDevice([*(a1 + 32) passcode], v4);
  if (v6)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboardfoundation.mkb" code:v6 userInfo:0];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)verifyWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  BSDispatchQueueAssertNot();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SBFMobileKeyBag_verifyWithOptions_error___block_invoke;
  block[3] = &unk_1E807F1C8;
  v8 = optionsCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v19;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v20[5];
  }

  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __43__SBFMobileKeyBag_verifyWithOptions_error___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"SkipSE";
  v2 = [*(a1 + 32) skipSEKeepUserDataOperation];
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v10[0] = *v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [*(a1 + 32) passcode];
  v5 = MKBVerifyPasswordWithContext();
  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboardfoundation.mkb" code:v5 userInfo:0];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)isContinuityUnlocked
{
  BSDispatchQueueAssertNot();
  if ([(SBFMobileKeyBag *)self isInStoreDemoMode])
  {
    v3 = 1;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__SBFMobileKeyBag_isContinuityUnlocked__block_invoke;
    v6[3] = &unk_1E807F1F0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(queue, v6);
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

uint64_t __39__SBFMobileKeyBag_isContinuityUnlocked__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_isContinuityUnlocked];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isInStoreDemoMode
{
  mEMORY[0x1E69B1FA8] = [MEMORY[0x1E69B1FA8] sharedInstance];
  v4 = [mEMORY[0x1E69B1FA8] isStoreDemoModeEnabled:0];

  return v4 && ![(SBFMobileKeyBag *)self hasPasscodeSet];
}

- (int64_t)maxUnlockAttempts
{
  MKBGetDeviceConfigurations = _get_MKBGetDeviceConfigurations();
  v3 = MKBGetDeviceConfigurations(0);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, *MEMORY[0x1E69B1A08]);
    if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFNumberGetTypeID()))
    {
      valuePtr = 0;
      CFNumberGetValue(v6, kCFNumberLongLongType, &valuePtr);
      v8 = valuePtr;
      if (valuePtr)
      {
LABEL_10:
        CFRelease(v4);
        return v8;
      }

      v9 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SBFMobileKeyBag maxUnlockAttempts];
      }
    }

    else
    {
      v9 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SBFMobileKeyBag maxUnlockAttempts];
      }
    }

    v8 = 10;
    goto LABEL_10;
  }

  v10 = SBLogAuthenticationKeybag();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SBFMobileKeyBag maxUnlockAttempts];
  }

  return 10;
}

- (void)createStashBagWithOptions:(id)options completion:(id)completion completionQueue:(id)queue
{
  optionsCopy = options;
  completionCopy = completion;
  queueCopy = queue;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__SBFMobileKeyBag_createStashBagWithOptions_completion_completionQueue___block_invoke;
  v15[3] = &unk_1E807F218;
  v15[4] = self;
  v16 = optionsCopy;
  v17 = queueCopy;
  v18 = completionCopy;
  v12 = queueCopy;
  v13 = completionCopy;
  v14 = optionsCopy;
  dispatch_async(queue, v15);
}

void __72__SBFMobileKeyBag_createStashBagWithOptions_completion_completionQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) passcode];
  [v2 _queue_createStashBag:v3 skipSEKeepUserDataOperation:{objc_msgSend(*(a1 + 40), "skipSEKeepUserDataOperation")}];

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 48);

    dispatch_async(v5, v4);
  }
}

- (BOOL)beginRecovery:(id)recovery error:(id *)error
{
  recoveryCopy = recovery;
  BSDispatchQueueAssertNot();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SBFMobileKeyBag_beginRecovery_error___block_invoke;
  block[3] = &unk_1E807F1C8;
  v8 = recoveryCopy;
  v12 = v8;
  v13 = &v19;
  v14 = &v15;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v20[5];
  }

  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __39__SBFMobileKeyBag_beginRecovery_error___block_invoke(void *a1)
{
  MKBKeyBagPerformRecovery = _get_MKBKeyBagPerformRecovery();
  v3 = MKBKeyBagPerformRecovery(a1[4], 0);
  if (v3 != -13)
  {
    v4 = v3;
    v5 = SBLogAuthenticationKeybag();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __39__SBFMobileKeyBag_beginRecovery_error___block_invoke_cold_1();
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.springboardfoundation.mkb" code:v4 userInfo:0];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (void)waitForUnlockWithTimeout:(float)timeout
{
  BSDispatchQueueAssertNot();
  v5 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__SBFMobileKeyBag_waitForUnlockWithTimeout___block_invoke;
  v19[3] = &unk_1E807F240;
  v6 = v5;
  v20 = v6;
  v7 = MEMORY[0x1BFB4D9B0](v19);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SBFMobileKeyBag_waitForUnlockWithTimeout___block_invoke_2;
  block[3] = &unk_1E807F268;
  block[4] = self;
  v9 = v7;
  v18 = v9;
  dispatch_sync(queue, block);
  state = [(SBFMobileKeyBag *)self state];
  isEffectivelyLocked = [state isEffectivelyLocked];

  if ((isEffectivelyLocked & 1) == 0)
  {
    dispatch_semaphore_signal(v6);
  }

  v12 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_semaphore_wait(v6, v12);
  v13 = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__SBFMobileKeyBag_waitForUnlockWithTimeout___block_invoke_3;
  v15[3] = &unk_1E807F268;
  v15[4] = self;
  v16 = v9;
  v14 = v9;
  dispatch_sync(v13, v15);
}

intptr_t __44__SBFMobileKeyBag_waitForUnlockWithTimeout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isEffectivelyLocked];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);

    return dispatch_semaphore_signal(v4);
  }

  return result;
}

void __44__SBFMobileKeyBag_waitForUnlockWithTimeout___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = MEMORY[0x1BFB4D9B0](*(a1 + 40));
  [v2 addObject:v6];
}

void __44__SBFMobileKeyBag_waitForUnlockWithTimeout___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = MEMORY[0x1BFB4D9B0](*(a1 + 40));
  [v1 removeObject:v2];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [(SBFMobileKeyBag *)a2 addObserver:?];
  }

  BSDispatchQueueAssertNot();
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__SBFMobileKeyBag_addObserver___block_invoke;
  v8[3] = &unk_1E807F290;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(queue, v8);
}

uint64_t __31__SBFMobileKeyBag_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [(SBFMobileKeyBag *)a2 removeObserver:?];
  }

  BSDispatchQueueAssertNot();
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__SBFMobileKeyBag_removeObserver___block_invoke;
  v8[3] = &unk_1E807F290;
  v8[4] = self;
  v9 = observerCopy;
  v7 = observerCopy;
  dispatch_sync(queue, v8);
}

- (void)performAfterFirstUnlockSinceBootUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [(SBFMobileKeyBag *)a2 performAfterFirstUnlockSinceBootUsingBlock:?];
  }

  BSDispatchQueueAssertNot();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SBFMobileKeyBag_performAfterFirstUnlockSinceBootUsingBlock___block_invoke;
  block[3] = &unk_1E807F2B8;
  v10 = &v11;
  block[4] = self;
  v7 = blockCopy;
  v9 = v7;
  dispatch_sync(queue, block);
  if (*(v12 + 24) == 1)
  {
    v7[2](v7);
  }

  _Block_object_dispose(&v11, 8);
}

void __62__SBFMobileKeyBag_performAfterFirstUnlockSinceBootUsingBlock___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 49);
  v2 = *(a1 + 32);
  if ((*(v2 + 49) & 1) == 0)
  {
    v4 = *(v2 + 40);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(a1 + 32);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(a1 + 32) + 40);
    }

    v9 = [*(a1 + 40) copy];
    v8 = MEMORY[0x1BFB4D9B0]();
    [v4 addObject:v8];
  }
}

- (void)refreshContinuityUnlockHeartbeat
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = aks_oneness_heartbeat();
  v3 = @"not currently in continuity unlocked state";
  if (!v2)
  {
    v3 = @"success";
  }

  v4 = v3;
  v5 = SBLogAuthenticationKeybag();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "Refreshed continuity unlock heartbeat with result: %@", &v6, 0xCu);
  }
}

- (void)_queue_firstUnlockOccurred
{
  BSDispatchQueueAssert();
  v3 = [(NSHashTable *)self->_queue_observers copy];
  v4 = self->_queue_performAfterFirstUnlockBlocks;
  queue_performAfterFirstUnlockBlocks = self->_queue_performAfterFirstUnlockBlocks;
  self->_queue_performAfterFirstUnlockBlocks = 0;

  v6 = SBLogAuthenticationKeybag();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "First unlock occurred", buf, 2u);
  }

  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SBFMobileKeyBag__queue_firstUnlockOccurred__block_invoke;
  block[3] = &unk_1E807F2E0;
  v11 = v3;
  selfCopy = self;
  v13 = v4;
  v8 = v4;
  v9 = v3;
  dispatch_async(calloutQueue, block);
}

void __45__SBFMobileKeyBag__queue_firstUnlockOccurred__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 keybagDidUnlockForTheFirstTime:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(a1 + 48);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * v12) + 16))(*(*(&v13 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (BOOL)_queue_verifyExpectedStashState:(int64_t)state
{
  v23 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  MKBKeyBagKeyStashVerify = _get_MKBKeyBagKeyStashVerify();
  v5 = MKBKeyBagKeyStashVerify();
  if (v5)
  {
    v6 = v5;
    Value = CFDictionaryGetValue(v5, @"StashBagValidOnDisk");
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFNumberGetTypeID()))
    {
      valuePtr = 0;
      CFNumberGetValue(v8, kCFNumberLongLongType, &valuePtr);
      v10 = valuePtr == state;
      if (!v10)
      {
        v11 = SBLogAuthenticationKeybag();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v22 = valuePtr;
          _os_log_impl(&dword_1BEA11000, v11, OS_LOG_TYPE_DEFAULT, "MKBKeyBagStashVerify() returned unexpected stash state %lld", buf, 0xCu);
        }

        v12 = SBLogAuthenticationKeybag();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          MKBGetDeviceLockState = _get_MKBGetDeviceLockState();
          v19 = @"ExtendedDeviceLockState";
          v20 = *MEMORY[0x1E695E4D0];
          v14 = MKBGetDeviceLockState([MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1]);
          *buf = 67109120;
          LODWORD(v22) = v14;
          _os_log_impl(&dword_1BEA11000, v12, OS_LOG_TYPE_DEFAULT, "keybag extended state = %d", buf, 8u);
        }
      }
    }

    else
    {
      v15 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BEA11000, v15, OS_LOG_TYPE_DEFAULT, "MKBKeyBagStashVerify() did not return a stash state", buf, 2u);
      }

      v10 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v16 = SBLogAuthenticationKeybag();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEA11000, v16, OS_LOG_TYPE_DEFAULT, "MKBKeyBagKeyStashVerify() returned NULL", buf, 2u);
    }

    return 0;
  }

  return v10;
}

- (void)_queue_createStashBag:(id)bag skipSEKeepUserDataOperation:(BOOL)operation
{
  operationCopy = operation;
  v14[1] = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  BSDispatchQueueAssert();
  v13 = @"SkipSE";
  v7 = MEMORY[0x1E695E4D0];
  if (!operationCopy)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v14[0] = *v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = _get_MKBKeyBagKeyStashCreateWithOpts();
  v10 = v9(v8, 1, 0, bagCopy);

  if (v10)
  {
    v11 = SBLogAuthenticationKeybag();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBFMobileKeyBag _queue_createStashBag:skipSEKeepUserDataOperation:];
    }
  }

  else
  {
    if (![(SBFMobileKeyBag *)self _queue_verifyExpectedStashState:0])
    {
      goto LABEL_12;
    }

    MKBKeyBagKeyStashCommit = _get_MKBKeyBagKeyStashCommit();
    if (!MKBKeyBagKeyStashCommit())
    {
      [(SBFMobileKeyBag *)self _queue_verifyExpectedStashState:1];
      goto LABEL_12;
    }

    v11 = SBLogAuthenticationKeybag();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBFMobileKeyBag _queue_createStashBag:skipSEKeepUserDataOperation:];
    }
  }

LABEL_12:
}

- (id)_queue_lockStateExtended:(BOOL)extended
{
  extendedCopy = extended;
  BSDispatchQueueAssert();
  v5 = [SBFMobileKeyBagState alloc];
  _queue_keyBagInfo = [(SBFMobileKeyBag *)self _queue_keyBagInfo];
  v7 = [(SBFMobileKeyBagState *)v5 initWithKeyBagInfo:_queue_keyBagInfo extended:extendedCopy];

  return v7;
}

- (BOOL)_queue_isContinuityUnlocked
{
  v8 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  [(SBFMobileKeyBag *)self _queue_aksDeviceState:0];
  return (*(&v5 + 2) >> 4) & 1;
}

- (BOOL)_shouldHandleKeyBagEventWithHandleState:(id)state
{
  stateCopy = state;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"SBOnenessUnlockPrototyping"];

  if (v5)
  {
    v6 = [stateCopy objectForKeyedSubscript:*MEMORY[0x1E698C3D0]];
    v7 = [v6 integerValue] == -501;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)maxUnlockAttempts
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFMobileKeyBag.m" lineNumber:424 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

- (void)removeObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFMobileKeyBag.m" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

- (void)performAfterFirstUnlockSinceBootUsingBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFMobileKeyBag.m" lineNumber:445 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

- (void)_queue_aksDeviceState
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end
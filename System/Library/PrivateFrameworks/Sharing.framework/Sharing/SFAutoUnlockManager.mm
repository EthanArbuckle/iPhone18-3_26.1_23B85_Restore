@interface SFAutoUnlockManager
+ (BOOL)autoUnlockEnabled;
+ (BOOL)mockedPhoneAutoUnlockAWDLUnavailable;
+ (BOOL)mockedPhoneAutoUnlockEnabled;
+ (BOOL)mockedPhoneAutoUnlockFaceIDDisabled;
+ (BOOL)mockedPhoneAutoUnlockInBioLockout;
+ (BOOL)mockedPhoneAutoUnlockMaskUnlikely;
+ (BOOL)mockedPhoneAutoUnlockNeverUnlocked;
+ (BOOL)mockedPhoneAutoUnlockNoMask;
+ (BOOL)mockedPhoneAutoUnlockNoPairedWatch;
+ (BOOL)mockedPhoneAutoUnlockNoWatch;
+ (BOOL)mockedPhoneAutoUnlockSimulateDevicesOutOfRange;
+ (BOOL)mockedPhoneAutoUnlockSimulateMagnetBreak;
+ (BOOL)mockedPhoneAutoUnlockSimulatePhoneMissedFinalConfirmationToUnlock;
+ (BOOL)mockedPhoneAutoUnlockWatchAWDLUnavailable;
+ (BOOL)mockedPhoneAutoUnlockWatchHasWeakPasscode;
+ (BOOL)mockedPhoneAutoUnlockWatchLocked;
+ (BOOL)mockedPhoneAutoUnlockWatchNoMotion;
+ (BOOL)mockedPhoneAutoUnlockWatchOffWrist;
+ (BOOL)mockedPhoneAutoUnlockWatchSleepModeOn;
+ (BOOL)mockedPhoneAutoUnlockWatchWiFiOff;
+ (BOOL)mockedPhoneAutoUnlockWatchWristDetectionDisabled;
+ (BOOL)mockedPhoneAutoUnlockWiFiOff;
+ (NSUserDefaults)userDefaults;
+ (float)mockedPhoneAutoUnlockSimulateLatency;
+ (float)mockedPhoneAutoUnlockSimulateManualReLock;
+ (int64_t)mockedPhoneAutoUnlockSimulateErrorCode;
+ (void)autoUnlockEnabled;
+ (void)mockedEnableBluetoothAndWiFi;
- (SFAutoUnlockManager)init;
- (SFAutoUnlockManagerDelegate)delegate;
- (double)spinnerDelay;
- (void)attemptAutoUnlock;
- (void)attemptAutoUnlockForSiri;
- (void)attemptAutoUnlockWithoutNotifyingWatch;
- (void)authPromptInfoWithCompletionHandler:(id)a3;
- (void)autoUnlockStateWithCompletionHandler:(id)a3;
- (void)beganAttemptWithDevice:(id)a3;
- (void)cancelAutoUnlock;
- (void)cancelEnablingAutoUnlockForDevice:(id)a3;
- (void)clearPhoneAutoUnlockBehaviorChangeNotification;
- (void)completeAutoUnlockWithNotification:(BOOL)a3;
- (void)completedUnlockWithDevice:(id)a3;
- (void)declinedToEnablePhoneAutoUnlock;
- (void)deviceRequestedRelock:(id)a3;
- (void)disableAutoUnlockForDevice:(id)a3 completionHandler:(id)a4;
- (void)donateDeviceUnlockedWithMask:(BOOL)a3;
- (void)eligibleAutoUnlockDevicesWithCompletionHandler:(id)a3;
- (void)enableAutoUnlockWithDevice:(id)a3 passcode:(id)a4;
- (void)enabledDevice:(id)a3;
- (void)failedToEnableDevice:(id)a3 error:(id)a4;
- (void)failedUnlockWithError:(id)a3;
- (void)keyDeviceLocked:(id)a3;
- (void)mockedAttemptAutoUnlock;
- (void)mockedCancelUnlock;
- (void)mockedDisableAutoUnlockForDevice:(id)a3;
- (void)mockedEligibleAutoUnlockDevicesWithCompletionHandler:(id)a3;
- (void)mockedEnableAutoUnlockWithDevice:(id)a3;
- (void)onDelegateQueue_notifyDelegateOfAttemptError:(id)a3;
- (void)onDelegateQueue_notifyDelegateOfEnableError:(id)a3 device:(id)a4;
- (void)prewarmAutoUnlock;
@end

@implementation SFAutoUnlockManager

+ (BOOL)autoUnlockEnabled
{
  v17 = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v2 = SCDynamicStoreCopyValue(0, @"com.apple.sharing:/AutoUnlock/Enabled");
  v3 = v2;
  if (!v2 || (v4 = CFGetTypeID(v2), v4 != CFDictionaryGetTypeID()))
  {
    v11 = auto_unlock_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = @"com.apple.sharing:/AutoUnlock/Enabled";
      _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "No value at path: %@", buf, 0xCu);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    goto LABEL_12;
  }

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Dynamic store enabled state %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", getuid()];
  v7 = [(__CFString *)v3 objectForKeyedSubscript:v6];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(__CFString *)v3 objectForKeyedSubscript:v6];
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  v14 = auto_unlock_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[(SFAutoUnlockManager *)v6];
  }

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (SFAutoUnlockManager)init
{
  v6.receiver = self;
  v6.super_class = SFAutoUnlockManager;
  v2 = [(SFAutoUnlockManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.sharing.auto-unlock.delegate-queue", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v3;
  }

  return v2;
}

- (double)spinnerDelay
{
  v2 = copySharingPrefValue(@"AUSpinnerDelay");
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 3.5;
  }

  return v5;
}

+ (void)mockedEnableBluetoothAndWiFi
{
  v2 = +[SFAutoUnlockManager userDefaults];
  [v2 setBool:0 forKey:@"phoneAutoUnlockWiFiOff"];
}

- (void)mockedEligibleAutoUnlockDevicesWithCompletionHandler:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
  if (!+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch])
  {
    v5 = objc_opt_new();
    [v5 setUniqueID:@"fake watch unique id"];
    v6 = objc_opt_new();
    [v5 setBluetoothID:v6];

    [v5 setModelIdentifier:{@"Watch5, 3"}];
    [v5 setProductName:@"watchOS"];
    [v5 setProductVersion:@"7.5"];
    [v5 setProductBuildVersion:@"some build in HunterE"];
    [v5 setName:@"fake watch"];
    [v5 setEnclosureColor:@"graphite"];
    [v5 setDefaultPairedDevice:1];
    [v5 setModelName:@"Apple Watch"];
    [v5 setMajorOSVersion:7];
    [v5 setSupportsApproveWithWatch:1];
    [v5 setSupportsApproveIcon:1];
    [v5 setSupportsEncryption:1];
    [v5 setSupportsAdvertisingUnlocked:1];
    [v5 setSupportsConnectionCache:1];
    [v5 setSupportsHEIC:1];
    [v4 addObject:v5];
  }

  v7 = +[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateErrorCode];
  if (v7 < 1)
  {
    v11 = 0;
  }

  else
  {
    v8 = v7;
    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"simulated error";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v9 errorWithDomain:@"SFAutoUnlockErrorDomain" code:v8 userInfo:v10];
  }

  v3[2](v3, v4, v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)eligibleAutoUnlockDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (+[SFAutoUnlockManager autoUnlockSupported])
    {
      v5 = auto_unlock_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "Client requesting eligible devices", buf, 2u);
      }

      *buf = 0;
      v13 = buf;
      v14 = 0x2020000000;
      v15 = 0;
      if (_os_feature_enabled_impl() && +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
      {
        [(SFAutoUnlockManager *)self mockedEligibleAutoUnlockDevicesWithCompletionHandler:v4];
      }

      else
      {
        v8 = +[SFCompanionXPCManager sharedManager];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_413;
        v9[3] = &unk_1E788BD60;
        v9[4] = self;
        v11 = buf;
        v10 = v4;
        [v8 unlockManagerWithCompletionHandler:v9];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke;
      block[3] = &unk_1E788B1C0;
      v17 = v4;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SFAutoUnlockManager eligibleAutoUnlockDevicesWithCompletionHandler:v6];
    }
  }
}

void __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFAutoUnlockErrorDomain" code:115 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_413(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_2;
    v20[3] = &unk_1E788BCE8;
    v20[4] = *(a1 + 32);
    v12 = *(a1 + 40);
    v6 = v12;
    v21 = v12;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_4;
    v18[3] = &unk_1E788BD38;
    v18[4] = *(a1 + 32);
    v13 = *(a1 + 40);
    v8 = v13;
    v19 = v13;
    [v7 eligibleAutoUnlockDevicesWithCompletionHandler:v18];

    v9 = v21;
  }

  else
  {
    v10 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_6;
    block[3] = &unk_1E788BCC0;
    v14 = *(a1 + 40);
    v11 = v14;
    v17 = v14;
    v16 = v5;
    dispatch_async(v10, block);

    v9 = v17;
  }
}

void __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E788BCC0;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void *__70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_3(void *result)
{
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = result[4];
    result = (*(result[5] + 16))();
    *(*(v1[6] + 8) + 24) = 1;
  }

  return result;
}

void __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_5;
  block[3] = &unk_1E788BD10;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void *__70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_5(void *result)
{
  if ((*(*(result[7] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = result[4];
    v3 = result[5];
    result = (*(result[6] + 16))();
    *(*(v1[7] + 8) + 24) = 1;
  }

  return result;
}

void *__70__SFAutoUnlockManager_eligibleAutoUnlockDevicesWithCompletionHandler___block_invoke_6(void *result)
{
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = result[4];
    result = (*(result[5] + 16))();
    *(*(v1[6] + 8) + 24) = 1;
  }

  return result;
}

- (void)mockedEnableAutoUnlockWithDevice:(id)a3
{
  v37[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch])
  {
    v5 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37[0] = @"Apple Watch Not Found";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v7 = v5;
    v8 = 131;
LABEL_3:
    v9 = [v7 errorWithDomain:@"SFAutoUnlockErrorDomain" code:v8 userInfo:v6];
    goto LABEL_7;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchLocked])
  {
    v10 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v6 = SFLocalizedStringForKey(@"UNLOCK_WATCH_LOCKED_TITLE");
    v35 = v6;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v12 = v10;
    v13 = 102;
  }

  else
  {
    if (+[SFAutoUnlockManager mockedPhoneAutoUnlockFaceIDDisabled])
    {
      v16 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v33 = @"FaceID disabled";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v7 = v16;
      v8 = 205;
      goto LABEL_3;
    }

    if (+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchHasWeakPasscode])
    {
      v17 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v6 = SFLocalizedStringForKey(@"UNLOCK_PASSCODE_REQUIRED_TITLE");
      v31 = v6;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v12 = v17;
      v13 = 108;
    }

    else
    {
      if (!+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchWristDetectionDisabled])
      {
        if (+[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateErrorCode]< 1)
        {
          goto LABEL_17;
        }

        v19 = MEMORY[0x1E696ABC0];
        v20 = +[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateErrorCode];
        v26 = *MEMORY[0x1E696A578];
        v27 = @"Custom error code";
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v7 = v19;
        v8 = v20;
        goto LABEL_3;
      }

      v18 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v6 = SFLocalizedStringForKey(@"UNLOCK_WRIST_DETECTION_REQUIRED_TITLE");
      v29 = v6;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v12 = v18;
      v13 = 158;
    }
  }

  v9 = [v12 errorWithDomain:@"SFAutoUnlockErrorDomain" code:v13 userInfo:v11];

LABEL_7:
  if (!v9)
  {
LABEL_17:
    v21 = +[SFAutoUnlockManager userDefaults];
    [v21 setBool:0 forKey:@"phoneAutoUnlockNoPairedWatch"];

    [(SFAutoUnlockManager *)self enabledDevice:v4];
    goto LABEL_18;
  }

  delegateQueue = self->_delegateQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__SFAutoUnlockManager_mockedEnableAutoUnlockWithDevice___block_invoke;
  v23[3] = &unk_1E788BD88;
  v23[4] = self;
  v24 = v9;
  v25 = v4;
  v15 = v9;
  dispatch_async(delegateQueue, v23);

LABEL_18:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)enableAutoUnlockWithDevice:(id)a3 passcode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  if (!v6)
  {
    delegateQueue = self->_delegateQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke_6;
    v12[3] = &unk_1E788BE28;
    v12[4] = self;
    v12[5] = v19;
    dispatch_async(delegateQueue, v12);
    goto LABEL_9;
  }

  if (!+[SFAutoUnlockManager autoUnlockSupported])
  {
    v9 = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke;
    block[3] = &unk_1E788A658;
    block[4] = self;
    v18 = v6;
    dispatch_async(v9, block);
    v10 = v18;
LABEL_8:

    goto LABEL_9;
  }

  if (!+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    v11 = +[SFCompanionXPCManager sharedManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke_2;
    v13[3] = &unk_1E788BE00;
    v13[4] = self;
    v16 = v19;
    v14 = v6;
    v15 = v7;
    [v11 unlockManagerWithCompletionHandler:v13];

    v10 = v14;
    goto LABEL_8;
  }

  [(SFAutoUnlockManager *)self mockedEnableAutoUnlockWithDevice:v6];
LABEL_9:
  _Block_object_dispose(v19, 8);
}

void __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFAutoUnlockErrorDomain" code:115 userInfo:0];
  [v2 onDelegateQueue_notifyDelegateOfEnableError:v3 device:*(a1 + 40)];
}

void __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke_3;
    v16[3] = &unk_1E788BDD8;
    v7 = *(a1 + 56);
    v16[4] = *(a1 + 32);
    v18[1] = v7;
    v8 = &v17;
    v17 = v5;
    v9 = v18;
    v18[0] = *(a1 + 40);
    v10 = [a2 remoteObjectProxyWithErrorHandler:v16];
    [v10 enableAutoUnlockWithDevice:*(a1 + 40) passcode:*(a1 + 48) clientProxy:*(a1 + 32)];
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke_5;
    v13[3] = &unk_1E788BDB0;
    v15[1] = *(a1 + 56);
    v13[4] = v11;
    v8 = &v14;
    v14 = v5;
    v9 = v15;
    v15[0] = *(a1 + 40);
    dispatch_async(v12, v13);
  }
}

void __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v2 = *(a1 + 56);
  v6 = *(a1 + 32);
  v3 = *(v6 + 16);
  block[2] = __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke_4;
  block[3] = &unk_1E788BDB0;
  v4 = *(&v6 + 1);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v2;
  v8 = v6;
  v9 = v5;
  dispatch_async(v3, block);
}

uint64_t __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke_4(uint64_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) onDelegateQueue_notifyDelegateOfEnableError:v1[5] device:v1[6]];
    *(*(v1[7] + 8) + 24) = 1;
  }

  return result;
}

uint64_t __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke_5(uint64_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) onDelegateQueue_notifyDelegateOfEnableError:v1[5] device:v1[6]];
    *(*(v1[7] + 8) + 24) = 1;
  }

  return result;
}

void __59__SFAutoUnlockManager_enableAutoUnlockWithDevice_passcode___block_invoke_6(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E696A798];
    v8 = *MEMORY[0x1E696A578];
    v9[0] = @"nil device";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [v3 errorWithDomain:v4 code:22 userInfo:v5];
    [v2 onDelegateQueue_notifyDelegateOfEnableError:v6 device:0];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)cancelEnablingAutoUnlockForDevice:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3 && +[SFAutoUnlockManager autoUnlockSupported])
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 uniqueID];
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling enabling for device %@", buf, 0xCu);
    }

    v6 = +[SFCompanionXPCManager sharedManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__SFAutoUnlockManager_cancelEnablingAutoUnlockForDevice___block_invoke;
    v8[3] = &unk_1E788BE50;
    v9 = v3;
    [v6 unlockManagerWithCompletionHandler:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __57__SFAutoUnlockManager_cancelEnablingAutoUnlockForDevice___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_440];
    [v4 cancelEnablingAutoUnlockForDevice:*(a1 + 32)];
  }

  else
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling enable failed: missing proxy object", buf, 2u);
    }
  }
}

void __57__SFAutoUnlockManager_cancelEnablingAutoUnlockForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling enable failed: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)mockedDisableAutoUnlockForDevice:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateErrorCode]< 1)
  {
    v8 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = +[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateErrorCode];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"Custom error code";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v8 = [v5 errorWithDomain:@"SFAutoUnlockErrorDomain" code:v6 userInfo:v7];
  }

  v9 = +[SFAutoUnlockManager userDefaults];
  [v9 setBool:1 forKey:@"phoneAutoUnlockNoPairedWatch"];

  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SFAutoUnlockManager_mockedDisableAutoUnlockForDevice___block_invoke;
  block[3] = &unk_1E788B318;
  v15 = v8;
  v16 = v4;
  v11 = v8;
  v12 = v4;
  dispatch_async(delegateQueue, block);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)disableAutoUnlockForDevice:(id)a3 completionHandler:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (+[SFAutoUnlockManager autoUnlockSupported])
    {
      if (+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
      {
        [(SFAutoUnlockManager *)self mockedDisableAutoUnlockForDevice:v7];
      }

      else if (v6)
      {
        v19[0] = 0;
        v19[1] = v19;
        v19[2] = 0x2020000000;
        v20 = 0;
        v10 = +[SFCompanionXPCManager sharedManager];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_2;
        v15[3] = &unk_1E788BEC8;
        v15[4] = self;
        v18 = v19;
        v17 = v7;
        v16 = v6;
        [v10 unlockManagerWithCompletionHandler:v15];

        _Block_object_dispose(v19, 8);
      }

      else
      {
        v11 = MEMORY[0x1E696ABC0];
        v23 = *MEMORY[0x1E696A578];
        v24[0] = @"nil device";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
        v13 = [v11 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];
        (*(v7 + 2))(v7, 0, v13);
      }
    }

    else
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke;
      block[3] = &unk_1E788B1C0;
      v22 = v7;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SFAutoUnlockManager disableAutoUnlockForDevice:v8 completionHandler:?];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFAutoUnlockErrorDomain" code:115 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_3;
    v21[3] = &unk_1E788BCE8;
    v21[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    v6 = v13;
    v22 = v13;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_5;
    v19[3] = &unk_1E788BEA0;
    v8 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    v9 = v14;
    v20 = v14;
    [v7 disableAutoUnlockForDevice:v8 completionHandler:v19];

    v10 = v22;
  }

  else
  {
    v11 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_7;
    block[3] = &unk_1E788BCC0;
    v15 = *(a1 + 48);
    v12 = v15;
    v18 = v15;
    v17 = v5;
    dispatch_async(v11, block);

    v10 = v18;
  }
}

void __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_4;
  block[3] = &unk_1E788BCC0;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void *__68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_4(void *result)
{
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = result[4];
    result = (*(result[5] + 16))();
    *(*(v1[6] + 8) + 24) = 1;
  }

  return result;
}

void __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_6;
  block[3] = &unk_1E788BE78;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v13 = a2;
  v11 = v5;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_6(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 56);
    v3 = *(result + 32);
    result = (*(*(result + 40) + 16))();
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void *__68__SFAutoUnlockManager_disableAutoUnlockForDevice_completionHandler___block_invoke_7(void *result)
{
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = result[4];
    result = (*(result[5] + 16))();
    *(*(v1[6] + 8) + 24) = 1;
  }

  return result;
}

- (void)mockedAttemptAutoUnlock
{
  v79[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SFAutoUnlockDevice);
  [(SFPeerDevice *)v3 setName:@"Apple Watch"];
  [(SFAutoUnlockDevice *)v3 setModelName:@"Apple Watch"];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  [(SFPeerDevice *)v3 setUniqueID:v5];

  [(SFAutoUnlockManager *)self beganAttemptWithDevice:v3];
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch])
  {
    v6 = MEMORY[0x1E696ABC0];
    v78 = *MEMORY[0x1E696A578];
    v79[0] = @"Apple Watch Not Found";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
    v8 = v6;
    v9 = 131;
    goto LABEL_11;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoPairedWatch])
  {
    v10 = MEMORY[0x1E696ABC0];
    v76 = *MEMORY[0x1E696A578];
    v77 = @"No enabled devices";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v8 = v10;
    v9 = 117;
    goto LABEL_11;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockInBioLockout])
  {
    v11 = MEMORY[0x1E696ABC0];
    v74 = *MEMORY[0x1E696A578];
    v75 = @"Phone in bio lockout";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v8 = v11;
    v9 = 207;
    goto LABEL_11;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoMask])
  {
    v12 = MEMORY[0x1E696ABC0];
    v72 = *MEMORY[0x1E696A578];
    v73 = @"No mask detected";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v8 = v12;
    v9 = 206;
    goto LABEL_11;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNeverUnlocked])
  {
    v13 = MEMORY[0x1E696ABC0];
    v70 = *MEMORY[0x1E696A578];
    v71 = @"Unlock phone with passcode or FaceID first";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v8 = v13;
    v9 = 177;
    goto LABEL_11;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchHasWeakPasscode])
  {
    v17 = MEMORY[0x1E696ABC0];
    v68 = *MEMORY[0x1E696A578];
    v7 = SFLocalizedStringForKey(@"UNLOCK_PASSCODE_REQUIRED_TITLE");
    v69 = v7;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v19 = v17;
    v20 = 108;
    goto LABEL_18;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchWristDetectionDisabled])
  {
    v21 = MEMORY[0x1E696ABC0];
    v66 = *MEMORY[0x1E696A578];
    v7 = SFLocalizedStringForKey(@"UNLOCK_WRIST_DETECTION_REQUIRED_TITLE");
    v67 = v7;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v19 = v21;
    v20 = 158;
    goto LABEL_18;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockWiFiOff])
  {
    v22 = MEMORY[0x1E696ABC0];
    v64 = *MEMORY[0x1E696A578];
    v65 = @"Phone WiFi disabled";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v8 = v22;
    v9 = 120;
    goto LABEL_11;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockAWDLUnavailable])
  {
    v23 = MEMORY[0x1E696ABC0];
    v62 = *MEMORY[0x1E696A578];
    v63 = @"AWDL network failed to start";
    v24 = MEMORY[0x1E695DF20];
    v25 = &v63;
    v26 = &v62;
LABEL_23:
    v7 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
    v8 = v23;
    v9 = 192;
    goto LABEL_11;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchWiFiOff])
  {
    v27 = MEMORY[0x1E696ABC0];
    v60 = *MEMORY[0x1E696A578];
    v61 = @"WiFi interface disabled on Watch";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v8 = v27;
    v9 = 199;
    goto LABEL_11;
  }

  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchAWDLUnavailable])
  {
    v23 = MEMORY[0x1E696ABC0];
    v58 = *MEMORY[0x1E696A578];
    v59 = @"Watch AWDL network failed to start";
    v24 = MEMORY[0x1E695DF20];
    v25 = &v59;
    v26 = &v58;
    goto LABEL_23;
  }

  if (!+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchLocked])
  {
    if (+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchOffWrist])
    {
      v29 = MEMORY[0x1E696ABC0];
      v54 = *MEMORY[0x1E696A578];
      v55 = @"Cannot unlock while Watch not on wrist";
      v30 = MEMORY[0x1E695DF20];
      v31 = &v55;
      v32 = &v54;
    }

    else
    {
      if (!+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchSleepModeOn])
      {
        if (+[SFAutoUnlockManager mockedPhoneAutoUnlockWatchNoMotion])
        {
          v33 = MEMORY[0x1E696ABC0];
          v50 = *MEMORY[0x1E696A578];
          v51 = @"No motion detected from Watch";
          v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v8 = v33;
          v9 = 210;
        }

        else
        {
          if (+[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateErrorCode]< 1)
          {
            goto LABEL_39;
          }

          v34 = MEMORY[0x1E696ABC0];
          v35 = +[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateErrorCode];
          v48 = *MEMORY[0x1E696A578];
          v49 = @"Custom error code";
          v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v8 = v34;
          v9 = v35;
        }

        goto LABEL_11;
      }

      v29 = MEMORY[0x1E696ABC0];
      v52 = *MEMORY[0x1E696A578];
      v53 = @"Cannot unlock while in sleep mode";
      v30 = MEMORY[0x1E695DF20];
      v31 = &v53;
      v32 = &v52;
    }

    v7 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
    v8 = v29;
    v9 = 158;
LABEL_11:
    v14 = [v8 errorWithDomain:@"SFAutoUnlockErrorDomain" code:v9 userInfo:v7];
    goto LABEL_12;
  }

  v28 = MEMORY[0x1E696ABC0];
  v56 = *MEMORY[0x1E696A578];
  v7 = SFLocalizedStringForKey(@"UNLOCK_WATCH_LOCKED_TITLE");
  v57 = v7;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v19 = v28;
  v20 = 102;
LABEL_18:
  v14 = [v19 errorWithDomain:@"SFAutoUnlockErrorDomain" code:v20 userInfo:v18];

LABEL_12:
  if (v14)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__SFAutoUnlockManager_mockedAttemptAutoUnlock__block_invoke;
    block[3] = &unk_1E788A658;
    block[4] = self;
    v45 = v14;
    v16 = v14;
    dispatch_async(delegateQueue, block);

    goto LABEL_42;
  }

LABEL_39:
  +[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateLatency];
  v37 = v36;
  v38 = auto_unlock_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v47 = v37;
    _os_log_impl(&dword_1A9662000, v38, OS_LOG_TYPE_DEFAULT, "delaying unlock for %f sec", buf, 0xCu);
  }

  v39 = dispatch_time(0, (v37 * 1000000000.0));
  v40 = dispatch_get_global_queue(0, 0);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __46__SFAutoUnlockManager_mockedAttemptAutoUnlock__block_invoke_475;
  v42[3] = &unk_1E788A658;
  v42[4] = self;
  v43 = v3;
  dispatch_after(v39, v40, v42);

LABEL_42:
  v41 = *MEMORY[0x1E69E9840];
}

void __46__SFAutoUnlockManager_mockedAttemptAutoUnlock__block_invoke_475(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateDevicesOutOfRange])
  {
    v2 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v3 = SFLocalizedStringForKey(@"UNLOCK_OUT_OF_RANGE");
    v32[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v5 = [v2 errorWithDomain:@"SFAutoUnlockErrorDomain" code:130 userInfo:v4];
  }

  else
  {
    if (+[SFAutoUnlockManager mockedPhoneAutoUnlockSimulatePhoneMissedFinalConfirmationToUnlock])
    {
      v6 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v30 = @"Confirmation failed";
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v7 = v6;
      v8 = 136;
    }

    else
    {
      if (!+[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateMagnetBreak])
      {
        goto LABEL_10;
      }

      v9 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v28 = @"Apple Watch Not Found";
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v7 = v9;
      v8 = 131;
    }

    v5 = [v7 errorWithDomain:@"SFAutoUnlockErrorDomain" code:v8 userInfo:v3];
  }

  if (v5)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__SFAutoUnlockManager_mockedAttemptAutoUnlock__block_invoke_482;
    block[3] = &unk_1E788A658;
    block[4] = v10;
    v12 = v5;
    v24 = v12;
    dispatch_async(v11, block);

    goto LABEL_13;
  }

LABEL_10:
  v13 = auto_unlock_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "unlocked device", buf, 2u);
  }

  [*(a1 + 32) completedUnlockWithDevice:*(a1 + 40)];
  v12 = 0;
LABEL_13:
  +[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateManualReLock];
  if (v14 > 0.0)
  {
    v15 = v14;
    v16 = auto_unlock_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = v15;
      _os_log_impl(&dword_1A9662000, v16, OS_LOG_TYPE_DEFAULT, "delaying relock for %f sec", buf, 0xCu);
    }

    v17 = dispatch_time(0, (v15 * 1000000000.0));
    v18 = dispatch_get_global_queue(0, 0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __46__SFAutoUnlockManager_mockedAttemptAutoUnlock__block_invoke_483;
    v21[3] = &unk_1E788A658;
    v19 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v19;
    dispatch_after(v17, v18, v21);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __46__SFAutoUnlockManager_mockedAttemptAutoUnlock__block_invoke_483(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, OS_LOG_TYPE_DEFAULT, "re-locking device", v4, 2u);
  }

  return [*(a1 + 32) deviceRequestedRelock:*(a1 + 40)];
}

- (void)prewarmAutoUnlock
{
  v2 = +[SFCompanionXPCManager sharedManager];
  [v2 unlockManagerWithCompletionHandler:&__block_literal_global_485];
}

void __40__SFAutoUnlockManager_prewarmAutoUnlock__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 remoteObjectProxy];
    [v2 prewarmAutoUnlock];
  }
}

- (void)completeAutoUnlockWithNotification:(BOOL)a3
{
  v4 = +[SFCompanionXPCManager sharedManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SFAutoUnlockManager_completeAutoUnlockWithNotification___block_invoke;
  v5[3] = &__block_descriptor_33_e60_v24__0___SFUnlockProtocol__NSXPCProxyCreating__8__NSError_16l;
  v6 = a3;
  [v4 unlockManagerWithCompletionHandler:v5];
}

void __58__SFAutoUnlockManager_completeAutoUnlockWithNotification___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 remoteObjectProxy];
    [v3 completeAutoUnlockWithNotification:*(a1 + 32)];
  }
}

- (void)donateDeviceUnlockedWithMask:(BOOL)a3
{
  v4 = +[SFCompanionXPCManager sharedManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SFAutoUnlockManager_donateDeviceUnlockedWithMask___block_invoke;
  v5[3] = &__block_descriptor_33_e60_v24__0___SFUnlockProtocol__NSXPCProxyCreating__8__NSError_16l;
  v6 = a3;
  [v4 unlockManagerWithCompletionHandler:v5];
}

void __52__SFAutoUnlockManager_donateDeviceUnlockedWithMask___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 remoteObjectProxy];
    if (objc_opt_respondsToSelector())
    {
      [v3 donateDeviceUnlockedWithMask:*(a1 + 32)];
    }
  }
}

- (void)declinedToEnablePhoneAutoUnlock
{
  v2 = +[SFCompanionXPCManager sharedManager];
  [v2 unlockManagerWithCompletionHandler:&__block_literal_global_489];
}

void __54__SFAutoUnlockManager_declinedToEnablePhoneAutoUnlock__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 remoteObjectProxy];
    if (objc_opt_respondsToSelector())
    {
      [v2 clearPhoneAutoUnlockNotification:1];
    }
  }
}

- (void)clearPhoneAutoUnlockBehaviorChangeNotification
{
  v2 = +[SFCompanionXPCManager sharedManager];
  [v2 unlockManagerWithCompletionHandler:&__block_literal_global_493];
}

void __69__SFAutoUnlockManager_clearPhoneAutoUnlockBehaviorChangeNotification__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 remoteObjectProxy];
    if (objc_opt_respondsToSelector())
    {
      [v2 clearPhoneAutoUnlockNotification:0];
    }
  }
}

- (void)attemptAutoUnlock
{
  if (+[SFAutoUnlockManager autoUnlockSupported])
  {
    if (+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
    {

      [(SFAutoUnlockManager *)self mockedAttemptAutoUnlock];
    }

    else
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x2020000000;
      v7 = 0;
      v4 = +[SFCompanionXPCManager sharedManager];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __40__SFAutoUnlockManager_attemptAutoUnlock__block_invoke_2;
      v5[3] = &unk_1E788BF60;
      v5[4] = self;
      v5[5] = v6;
      [v4 unlockManagerWithCompletionHandler:v5];

      _Block_object_dispose(v6, 8);
    }
  }

  else
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__SFAutoUnlockManager_attemptAutoUnlock__block_invoke;
    block[3] = &unk_1E788B198;
    block[4] = self;
    dispatch_async(delegateQueue, block);
  }
}

void __40__SFAutoUnlockManager_attemptAutoUnlock__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFAutoUnlockErrorDomain" code:115 userInfo:0];
  [v1 onDelegateQueue_notifyDelegateOfAttemptError:v2];
}

void __40__SFAutoUnlockManager_attemptAutoUnlock__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__SFAutoUnlockManager_attemptAutoUnlock__block_invoke_3;
    v13[3] = &unk_1E788BF38;
    v14 = *(a1 + 32);
    v7 = [a2 remoteObjectProxyWithErrorHandler:v13];
    [v7 attemptAutoUnlockWithClientProxy:*(a1 + 32)];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__SFAutoUnlockManager_attemptAutoUnlock__block_invoke_5;
    block[3] = &unk_1E788BF10;
    v12 = *(a1 + 40);
    block[4] = v8;
    v11 = v5;
    dispatch_async(v9, block);
    v7 = v11;
  }
}

void __40__SFAutoUnlockManager_attemptAutoUnlock__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SFAutoUnlockManager_attemptAutoUnlock__block_invoke_4;
  block[3] = &unk_1E788BF10;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  block[4] = v4;
  v7 = v3;
  dispatch_async(v5, block);
}

uint64_t __40__SFAutoUnlockManager_attemptAutoUnlock__block_invoke_4(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) onDelegateQueue_notifyDelegateOfAttemptError:*(result + 40)];
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __40__SFAutoUnlockManager_attemptAutoUnlock__block_invoke_5(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) onDelegateQueue_notifyDelegateOfAttemptError:*(result + 40)];
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)attemptAutoUnlockWithoutNotifyingWatch
{
  if (+[SFAutoUnlockManager autoUnlockSupported])
  {
    if (+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
    {

      [(SFAutoUnlockManager *)self mockedAttemptAutoUnlock];
    }

    else
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x2020000000;
      v7 = 0;
      v4 = +[SFCompanionXPCManager sharedManager];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __61__SFAutoUnlockManager_attemptAutoUnlockWithoutNotifyingWatch__block_invoke_2;
      v5[3] = &unk_1E788BF60;
      v5[4] = self;
      v5[5] = v6;
      [v4 unlockManagerWithCompletionHandler:v5];

      _Block_object_dispose(v6, 8);
    }
  }

  else
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SFAutoUnlockManager_attemptAutoUnlockWithoutNotifyingWatch__block_invoke;
    block[3] = &unk_1E788B198;
    block[4] = self;
    dispatch_async(delegateQueue, block);
  }
}

void __61__SFAutoUnlockManager_attemptAutoUnlockWithoutNotifyingWatch__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFAutoUnlockErrorDomain" code:115 userInfo:0];
  [v1 onDelegateQueue_notifyDelegateOfAttemptError:v2];
}

void __61__SFAutoUnlockManager_attemptAutoUnlockWithoutNotifyingWatch__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__SFAutoUnlockManager_attemptAutoUnlockWithoutNotifyingWatch__block_invoke_3;
    v13[3] = &unk_1E788BF38;
    v14 = *(a1 + 32);
    v7 = [a2 remoteObjectProxyWithErrorHandler:v13];
    [v7 attemptAutoUnlockWithoutNotifyingWatchWithClientProxy:*(a1 + 32)];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SFAutoUnlockManager_attemptAutoUnlockWithoutNotifyingWatch__block_invoke_5;
    block[3] = &unk_1E788BF10;
    v12 = *(a1 + 40);
    block[4] = v8;
    v11 = v5;
    dispatch_async(v9, block);
    v7 = v11;
  }
}

void __61__SFAutoUnlockManager_attemptAutoUnlockWithoutNotifyingWatch__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SFAutoUnlockManager_attemptAutoUnlockWithoutNotifyingWatch__block_invoke_4;
  block[3] = &unk_1E788BF10;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  block[4] = v4;
  v7 = v3;
  dispatch_async(v5, block);
}

uint64_t __61__SFAutoUnlockManager_attemptAutoUnlockWithoutNotifyingWatch__block_invoke_4(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) onDelegateQueue_notifyDelegateOfAttemptError:*(result + 40)];
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __61__SFAutoUnlockManager_attemptAutoUnlockWithoutNotifyingWatch__block_invoke_5(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) onDelegateQueue_notifyDelegateOfAttemptError:*(result + 40)];
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)attemptAutoUnlockForSiri
{
  if (+[SFAutoUnlockManager autoUnlockSupported])
  {
    if (+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
    {

      [(SFAutoUnlockManager *)self mockedAttemptAutoUnlock];
    }

    else
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x2020000000;
      v7 = 0;
      v4 = +[SFCompanionXPCManager sharedManager];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __47__SFAutoUnlockManager_attemptAutoUnlockForSiri__block_invoke_2;
      v5[3] = &unk_1E788BF60;
      v5[4] = self;
      v5[5] = v6;
      [v4 unlockManagerWithCompletionHandler:v5];

      _Block_object_dispose(v6, 8);
    }
  }

  else
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__SFAutoUnlockManager_attemptAutoUnlockForSiri__block_invoke;
    block[3] = &unk_1E788B198;
    block[4] = self;
    dispatch_async(delegateQueue, block);
  }
}

void __47__SFAutoUnlockManager_attemptAutoUnlockForSiri__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFAutoUnlockErrorDomain" code:115 userInfo:0];
  [v1 onDelegateQueue_notifyDelegateOfAttemptError:v2];
}

void __47__SFAutoUnlockManager_attemptAutoUnlockForSiri__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__SFAutoUnlockManager_attemptAutoUnlockForSiri__block_invoke_3;
    v13[3] = &unk_1E788BF38;
    v14 = *(a1 + 32);
    v7 = [a2 remoteObjectProxyWithErrorHandler:v13];
    [v7 attemptAutoUnlockForSiriWithClientProxy:*(a1 + 32)];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__SFAutoUnlockManager_attemptAutoUnlockForSiri__block_invoke_5;
    block[3] = &unk_1E788BF10;
    v12 = *(a1 + 40);
    block[4] = v8;
    v11 = v5;
    dispatch_async(v9, block);
    v7 = v11;
  }
}

void __47__SFAutoUnlockManager_attemptAutoUnlockForSiri__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFAutoUnlockManager_attemptAutoUnlockForSiri__block_invoke_4;
  block[3] = &unk_1E788BF10;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  block[4] = v4;
  v7 = v3;
  dispatch_async(v5, block);
}

uint64_t __47__SFAutoUnlockManager_attemptAutoUnlockForSiri__block_invoke_4(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) onDelegateQueue_notifyDelegateOfAttemptError:*(result + 40)];
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __47__SFAutoUnlockManager_attemptAutoUnlockForSiri__block_invoke_5(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) onDelegateQueue_notifyDelegateOfAttemptError:*(result + 40)];
    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)mockedCancelUnlock
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateDevicesOutOfRange])
  {
    v3 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v4 = SFLocalizedStringForKey(@"UNLOCK_OUT_OF_RANGE");
    v17[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v6 = [v3 errorWithDomain:@"SFAutoUnlockErrorDomain" code:130 userInfo:v5];
  }

  else
  {
    if (+[SFAutoUnlockManager mockedPhoneAutoUnlockSimulatePhoneMissedFinalConfirmationToUnlock])
    {
      v7 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v15 = @"Confirmation failed";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v8 = v7;
      v9 = 136;
    }

    else
    {
      if (!+[SFAutoUnlockManager mockedPhoneAutoUnlockSimulateMagnetBreak])
      {
        v6 = 0;
        goto LABEL_9;
      }

      v10 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A578];
      v13 = @"Apple Watch Not Found";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v8 = v10;
      v9 = 131;
    }

    v6 = [v8 errorWithDomain:@"SFAutoUnlockErrorDomain" code:v9 userInfo:v4];
  }

LABEL_9:
  [(SFAutoUnlockManager *)self failedUnlockWithError:v6];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)cancelAutoUnlock
{
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {

    [(SFAutoUnlockManager *)self mockedCancelUnlock];
  }

  else
  {
    v3 = +[SFCompanionXPCManager sharedManager];
    [v3 unlockManagerWithCompletionHandler:&__block_literal_global_495];
  }
}

void __39__SFAutoUnlockManager_cancelAutoUnlock__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 remoteObjectProxy];
    [v2 cancelAutoUnlock];
  }
}

+ (NSUserDefaults)userDefaults
{
  if (userDefaults_onceToken != -1)
  {
    +[SFAutoUnlockManager userDefaults];
  }

  v3 = userDefaults_userDefaults;

  return v3;
}

void __35__SFAutoUnlockManager_userDefaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.sharing.autounlock"];
  v1 = userDefaults_userDefaults;
  userDefaults_userDefaults = v0;
}

+ (BOOL)mockedPhoneAutoUnlockEnabled
{
  if (!IsAppleInternalBuild() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 BOOLForKey:@"phoneAutoUnlockEnabled"];

  return v3;
}

+ (BOOL)mockedPhoneAutoUnlockInBioLockout
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockInBioLockout"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockFaceIDDisabled
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockFaceIDDisabled"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockNeverUnlocked
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockNeverUnlocked"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockMaskUnlikely
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockMaskUnlikely"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockNoMask
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockNoMask"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockWiFiOff
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockWiFiOff"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockAWDLUnavailable
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockAWDLUnavailable"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockNoWatch
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockNoWatch"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockNoPairedWatch
{
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch](SFAutoUnlockManager, "mockedPhoneAutoUnlockNoWatch") || !+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 BOOLForKey:@"phoneAutoUnlockNoPairedWatch"];

  return v3;
}

+ (BOOL)mockedPhoneAutoUnlockWatchHasWeakPasscode
{
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch](SFAutoUnlockManager, "mockedPhoneAutoUnlockNoWatch") || !+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 BOOLForKey:@"phoneAutoUnlockWatchHasWeakPasscode"];

  return v3;
}

+ (BOOL)mockedPhoneAutoUnlockWatchWristDetectionDisabled
{
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch](SFAutoUnlockManager, "mockedPhoneAutoUnlockNoWatch") || !+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 BOOLForKey:@"phoneAutoUnlockWatchWristDetectionDisabled"];

  return v3;
}

+ (BOOL)mockedPhoneAutoUnlockWatchLocked
{
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch](SFAutoUnlockManager, "mockedPhoneAutoUnlockNoWatch") || !+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 BOOLForKey:@"phoneAutoUnlockWatchLocked"];

  return v3;
}

+ (BOOL)mockedPhoneAutoUnlockWatchOffWrist
{
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch](SFAutoUnlockManager, "mockedPhoneAutoUnlockNoWatch") || !+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 BOOLForKey:@"phoneAutoUnlockWatchOffWrist"];

  return v3;
}

+ (BOOL)mockedPhoneAutoUnlockWatchWiFiOff
{
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch](SFAutoUnlockManager, "mockedPhoneAutoUnlockNoWatch") || !+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 BOOLForKey:@"phoneAutoUnlockWatchWiFiOff"];

  return v3;
}

+ (BOOL)mockedPhoneAutoUnlockWatchAWDLUnavailable
{
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch](SFAutoUnlockManager, "mockedPhoneAutoUnlockNoWatch") || !+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 BOOLForKey:@"phoneAutoUnlockWatchAWDLUnavailable"];

  return v3;
}

+ (BOOL)mockedPhoneAutoUnlockWatchSleepModeOn
{
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch](SFAutoUnlockManager, "mockedPhoneAutoUnlockNoWatch") || !+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 BOOLForKey:@"phoneAutoUnlockWatchSleepModeOn"];

  return v3;
}

+ (BOOL)mockedPhoneAutoUnlockWatchNoMotion
{
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockNoWatch](SFAutoUnlockManager, "mockedPhoneAutoUnlockNoWatch") || !+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 BOOLForKey:@"phoneAutoUnlockWatchNoMotion"];

  return v3;
}

+ (float)mockedPhoneAutoUnlockSimulateLatency
{
  v2 = 0.0;
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    [v3 floatForKey:@"phoneAutoUnlockSimulateLatency"];
    if (v4 != 0.0)
    {
      v5 = +[SFAutoUnlockManager userDefaults];
      [v5 floatForKey:@"phoneAutoUnlockSimulateLatency"];
      v2 = v6;
    }
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockSimulateDevicesOutOfRange
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockSimulateDevicesOutOfRange"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockSimulatePhoneMissedFinalConfirmationToUnlock
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockSimulatePhoneMissedFinalConfirmationToUnlock"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)mockedPhoneAutoUnlockSimulateMagnetBreak
{
  v2 = +[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled];
  if (v2)
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    v4 = [v3 BOOLForKey:@"phoneAutoUnlockSimulateMagnetBreak"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (float)mockedPhoneAutoUnlockSimulateManualReLock
{
  v2 = 0.0;
  if (+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    v3 = +[SFAutoUnlockManager userDefaults];
    [v3 floatForKey:@"phoneAutoUnlockSimulateManualReLock"];
    if (v4 != 0.0)
    {
      v5 = +[SFAutoUnlockManager userDefaults];
      [v5 floatForKey:@"phoneAutoUnlockSimulateManualReLock"];
      v2 = v6;
    }
  }

  return v2;
}

+ (int64_t)mockedPhoneAutoUnlockSimulateErrorCode
{
  if (!+[SFAutoUnlockManager mockedPhoneAutoUnlockEnabled])
  {
    return 0;
  }

  v2 = +[SFAutoUnlockManager userDefaults];
  v3 = [v2 integerForKey:@"phoneAutoUnlockSimulateErrorCode"] != 0;

  return v3;
}

- (void)onDelegateQueue_notifyDelegateOfEnableError:(id)a3 device:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 code] != 118)
  {
    v7 = [(SFAutoUnlockManager *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SFAutoUnlockManager *)self delegate];
      [v9 manager:self failedToEnableDevice:v6 error:v10];
    }
  }
}

- (void)onDelegateQueue_notifyDelegateOfAttemptError:(id)a3
{
  v7 = a3;
  v4 = [(SFAutoUnlockManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SFAutoUnlockManager *)self delegate];
    [v6 manager:self failedAttemptWithError:v7];
  }
}

- (void)keyDeviceLocked:(id)a3
{
  v4 = a3;
  v5 = [(SFAutoUnlockManager *)self delegateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SFAutoUnlockManager_keyDeviceLocked___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __39__SFAutoUnlockManager_keyDeviceLocked___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) enablingLockedDevice:*(a1 + 40)];
  }
}

- (void)enabledDevice:(id)a3
{
  v4 = a3;
  v5 = [(SFAutoUnlockManager *)self delegateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__SFAutoUnlockManager_enabledDevice___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __37__SFAutoUnlockManager_enabledDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) didEnableDevice:*(a1 + 40)];
  }
}

- (void)failedToEnableDevice:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SFAutoUnlockManager *)self delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SFAutoUnlockManager_failedToEnableDevice_error___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)beganAttemptWithDevice:(id)a3
{
  v4 = a3;
  v5 = [(SFAutoUnlockManager *)self delegateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFAutoUnlockManager_beganAttemptWithDevice___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__SFAutoUnlockManager_beganAttemptWithDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) beganAttemptWithDevice:*(a1 + 40)];
  }
}

- (void)completedUnlockWithDevice:(id)a3
{
  v4 = a3;
  v5 = [(SFAutoUnlockManager *)self delegateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFAutoUnlockManager_completedUnlockWithDevice___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__SFAutoUnlockManager_completedUnlockWithDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) completedUnlockWithDevice:*(a1 + 40)];
  }
}

- (void)failedUnlockWithError:(id)a3
{
  v4 = a3;
  v5 = [(SFAutoUnlockManager *)self delegateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFAutoUnlockManager_failedUnlockWithError___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)deviceRequestedRelock:(id)a3
{
  v4 = a3;
  v5 = [(SFAutoUnlockManager *)self delegateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFAutoUnlockManager_deviceRequestedRelock___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__SFAutoUnlockManager_deviceRequestedRelock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 manager:*(a1 + 32) deviceRequestedRelock:*(a1 + 40)];
  }
}

- (void)autoUnlockStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[SFCompanionXPCManager sharedManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SFAutoUnlockManager_autoUnlockStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E788BFD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 unlockManagerWithCompletionHandler:v7];
}

void __60__SFAutoUnlockManager_autoUnlockStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__SFAutoUnlockManager_autoUnlockStateWithCompletionHandler___block_invoke_2;
    v15[3] = &unk_1E788BF88;
    v6 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__SFAutoUnlockManager_autoUnlockStateWithCompletionHandler___block_invoke_4;
    v13[3] = &unk_1E788BFB0;
    v14 = *(a1 + 40);
    [v7 autoUnlockStateWithCompletionHandler:v13];

    v8 = v16;
  }

  else
  {
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__SFAutoUnlockManager_autoUnlockStateWithCompletionHandler___block_invoke_5;
    block[3] = &unk_1E788B318;
    v12 = *(a1 + 40);
    v11 = v5;
    dispatch_async(v9, block);

    v8 = v12;
  }
}

void __60__SFAutoUnlockManager_autoUnlockStateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SFAutoUnlockManager_autoUnlockStateWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E788B318;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __60__SFAutoUnlockManager_autoUnlockStateWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 integerValue], v5);
}

- (void)authPromptInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[SFCompanionXPCManager sharedManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SFAutoUnlockManager_authPromptInfoWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E788BFD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 unlockManagerWithCompletionHandler:v7];
}

void __59__SFAutoUnlockManager_authPromptInfoWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__SFAutoUnlockManager_authPromptInfoWithCompletionHandler___block_invoke_2;
    v15[3] = &unk_1E788BF88;
    v6 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__SFAutoUnlockManager_authPromptInfoWithCompletionHandler___block_invoke_4;
    v13[3] = &unk_1E788C000;
    v14 = *(a1 + 40);
    [v7 authPromptInfoWithCompletionHandler:v13];

    v8 = v16;
  }

  else
  {
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SFAutoUnlockManager_authPromptInfoWithCompletionHandler___block_invoke_5;
    block[3] = &unk_1E788B318;
    v12 = *(a1 + 40);
    v11 = v5;
    dispatch_async(v9, block);

    v8 = v12;
  }
}

void __59__SFAutoUnlockManager_authPromptInfoWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SFAutoUnlockManager_authPromptInfoWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E788B318;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (SFAutoUnlockManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)autoUnlockEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 138412802;
  v5 = @"com.apple.sharing:/AutoUnlock/Enabled";
  v6 = 2112;
  v7 = a1;
  v8 = 1024;
  v9 = a2 & 1;
  _os_log_debug_impl(&dword_1A9662000, log, OS_LOG_TYPE_DEBUG, "Dynamic store path: %@, uid: %@, enabled: %d", &v4, 0x1Cu);
  v3 = *MEMORY[0x1E69E9840];
}

@end
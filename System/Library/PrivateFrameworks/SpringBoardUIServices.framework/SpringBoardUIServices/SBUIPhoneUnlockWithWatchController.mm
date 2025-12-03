@interface SBUIPhoneUnlockWithWatchController
+ (id)sharedInstance;
- (BOOL)attemptPhoneUnlockWithWatch;
- (BOOL)handleBiometricEvent:(unint64_t)event;
- (BOOL)isPhoneUnlockEnabledAndRequirementsMet;
- (BOOL)shouldPhoneCompleteAutoUnlockWithNotification;
- (BOOL)showRawErrorCodes;
- (SBUIPhoneUnlockWithWatchController)init;
- (SBUIPhoneUnlockWithWatchControllerDelegate)delegate;
- (id)_autoUnlockManager;
- (void)_handleUnlockAttemptFailedWithError:(id)error;
- (void)_handleUnlockAttemptSucceeded;
- (void)_sendCoreAnalyticsEventWithPayload:(id)payload;
- (void)addObserver:(id)observer;
- (void)completePhoneAutoUnlockWithNotification:(BOOL)notification;
- (void)handleScreenOff:(BOOL)off;
- (void)handleWakeSourceIsUserActive;
- (void)manager:(id)manager beganAttemptWithDevice:(id)device;
- (void)manager:(id)manager completedUnlockWithDevice:(id)device;
- (void)manager:(id)manager failedAttemptWithError:(id)error;
- (void)removeObserver:(id)observer;
- (void)setBottomFaceOccludedSinceScreenOn:(BOOL)on;
- (void)setFaceOccludedSinceScreenOn:(BOOL)on;
- (void)setFaceWUPoseEligibleSinceScreenOn:(BOOL)on;
- (void)setTestAutoUnlockManager:(id)manager;
@end

@implementation SBUIPhoneUnlockWithWatchController

- (BOOL)attemptPhoneUnlockWithWatch
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (![(SBUIPhoneUnlockWithWatchController *)self phoneUnlockWithWatchEnabled])
  {
    v3 = SBLogPhoneUnlockWithWatch();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v4 = "Not attempting phone unlock with watch because feature not enabled";
      goto LABEL_7;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if ([(SBUIBiometricResource *)self->_biometricResource biometricLockoutState])
  {
    v3 = SBLogPhoneUnlockWithWatch();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v4 = "Not attempting phone unlock with watch because of biolockout";
LABEL_7:
      _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, v4, v14, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (![(SBUIPhoneUnlockWithWatchController *)self didDetectFaceRequirementsForPAU])
  {
    v3 = SBLogPhoneUnlockWithWatch();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *v14 = 0;
    v4 = "Not attempting phone unlock with watch because face requirements not met";
    goto LABEL_7;
  }

  if (!self->_wakeSourceIsUserAction && !self->_significantUserInteractionOccurred)
  {
    v3 = SBLogPhoneUnlockWithWatch();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *v14 = 0;
    v4 = "Not attempting phone unlock with watch because not enough user interaction";
    goto LABEL_7;
  }

  v7 = +[SBUIPeriocularController sharedInstance];
  periocularEnabled = [v7 periocularEnabled];

  v9 = SBLogPhoneUnlockWithWatch();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (periocularEnabled)
  {
    if (v10)
    {
      *v14 = 0;
      _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_DEFAULT, "Attempt phone unlock with watch without notification", v14, 2u);
    }

    _autoUnlockManager = [(SBUIPhoneUnlockWithWatchController *)self _autoUnlockManager];
    [_autoUnlockManager attemptAutoUnlockWithoutNotifyingWatch];
  }

  else
  {
    if (v10)
    {
      *v14 = 0;
      _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_DEFAULT, "Attempt phone unlock with watch", v14, 2u);
    }

    _autoUnlockManager = [(SBUIPhoneUnlockWithWatchController *)self _autoUnlockManager];
    [_autoUnlockManager attemptAutoUnlock];
  }

  v15[0] = @"bottomFaceOcclusion";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_bottomFaceOccludedSinceScreenOn];
  v15[1] = @"anyFaceOcclusion";
  v16[0] = v3;
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_faceOccludedSinceScreenOn];
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [(SBUIPhoneUnlockWithWatchController *)self _sendCoreAnalyticsEventWithPayload:v13];

  v5 = 1;
LABEL_9:

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SBUIPhoneUnlockWithWatchController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

- (BOOL)shouldPhoneCompleteAutoUnlockWithNotification
{
  result = 0;
  if ([(SBUIPhoneUnlockWithWatchController *)self phoneUnlockWithWatchEnabled])
  {
    v3 = +[SBUIPeriocularController sharedInstance];
    periocularEnabled = [v3 periocularEnabled];

    if (periocularEnabled)
    {
      if ([(SBUIPhoneUnlockWithWatchController *)self didDetectFaceRequirementsForPAU])
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)handleWakeSourceIsUserActive
{
  if (!self->_wakeSourceIsUserAction)
  {
    v8 = v2;
    v9 = v3;
    self->_wakeSourceIsUserAction = 1;
    if ([(SBUIPhoneUnlockWithWatchController *)self phoneUnlockWithWatchEnabled])
    {
      _autoUnlockManager = [(SBUIPhoneUnlockWithWatchController *)self _autoUnlockManager];
      [_autoUnlockManager prewarmAutoUnlock];

      v6 = SBLogPhoneUnlockWithWatch();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "Prewarm phone unlock with watch for user action wake source", v7, 2u);
      }
    }
  }
}

uint64_t __52__SBUIPhoneUnlockWithWatchController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBUIPhoneUnlockWithWatchController);
  v1 = sharedInstance___sharedInstance_0;
  sharedInstance___sharedInstance_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SBUIPhoneUnlockWithWatchController)init
{
  v7.receiver = self;
  v7.super_class = SBUIPhoneUnlockWithWatchController;
  v2 = [(SBUIPhoneUnlockWithWatchController *)&v7 init];
  v3 = v2;
  if (v2 && [(SBUIPhoneUnlockWithWatchController *)v2 phoneUnlockWithWatchSupported])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CDE38]);
    autoUnlockManager = v3->_autoUnlockManager;
    v3->_autoUnlockManager = v4;

    [(SFAutoUnlockManager *)v3->_autoUnlockManager setDelegate:v3];
  }

  return v3;
}

- (BOOL)showRawErrorCodes
{
  selfCopy = self;
  delegate = [(SBUIPhoneUnlockWithWatchController *)self delegate];
  LOBYTE(selfCopy) = [delegate phoneUnlockWithWatchControllerShowRawErrorCodes:selfCopy];

  return selfCopy;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    v9 = observerCopy;
    observerCopy = [(NSHashTable *)self->_observers containsObject:observerCopy];
    v5 = v9;
    if ((observerCopy & 1) == 0)
    {
      observers = self->_observers;
      if (!observers)
      {
        v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
        v8 = self->_observers;
        self->_observers = v7;

        observers = self->_observers;
      }

      observerCopy = [(NSHashTable *)observers addObject:v9];
      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](observerCopy, v5);
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)handleScreenOff:(BOOL)off
{
  if (off)
  {
    self->_significantUserInteractionOccurred = 0;
    *&self->_bottomFaceOccludedSinceScreenOn = 0;
  }
}

- (void)completePhoneAutoUnlockWithNotification:(BOOL)notification
{
  notificationCopy = notification;
  v10 = *MEMORY[0x1E69E9840];
  if ([(SBUIPhoneUnlockWithWatchController *)self shouldPhoneCompleteAutoUnlockWithNotification])
  {
    v5 = SBLogPhoneUnlockWithWatch();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromBOOL();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Complete phone unlock with watch notification: %{public}@", &v8, 0xCu);
    }

    _autoUnlockManager = [(SBUIPhoneUnlockWithWatchController *)self _autoUnlockManager];
    [_autoUnlockManager completeAutoUnlockWithNotification:notificationCopy];
  }
}

- (void)_handleUnlockAttemptSucceeded
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 phoneUnlockWithWatchControllerAttemptSucceeded:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_handleUnlockAttemptFailedWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 phoneUnlockWithWatchControllerAttemptFailed:self withError:errorCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_sendCoreAnalyticsEventWithPayload:(id)payload
{
  payloadCopy = payload;
  v3 = payloadCopy;
  AnalyticsSendEventLazy();
}

- (id)_autoUnlockManager
{
  testAutoUnlockManager = self->_testAutoUnlockManager;
  if (!testAutoUnlockManager)
  {
    testAutoUnlockManager = self->_autoUnlockManager;
  }

  return testAutoUnlockManager;
}

- (BOOL)isPhoneUnlockEnabledAndRequirementsMet
{
  phoneUnlockWithWatchEnabled = [(SBUIPhoneUnlockWithWatchController *)self phoneUnlockWithWatchEnabled];
  if (phoneUnlockWithWatchEnabled)
  {

    LOBYTE(phoneUnlockWithWatchEnabled) = [(SBUIPhoneUnlockWithWatchController *)self didDetectFaceRequirementsForPAU];
  }

  return phoneUnlockWithWatchEnabled;
}

- (BOOL)handleBiometricEvent:(unint64_t)event
{
  v4 = 0;
  if (event > 27)
  {
    if (event == 28)
    {
      self->_bottomFaceOccludedSinceScreenOn = 1;
      v6 = SBLogPhoneUnlockWithWatch();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:

        return [(SBUIPhoneUnlockWithWatchController *)self attemptPhoneUnlockWithWatch];
      }

      LOWORD(v11) = 0;
      v7 = "Bottom face occluded since screen on";
      v8 = &v11;
    }

    else
    {
      if (event != 29)
      {
        return v4;
      }

      self->_faceWUPoseEligibleSinceScreenOn = 1;
      v6 = SBLogPhoneUnlockWithWatch();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v13 = 0;
      v7 = "Face WU pose eligibile since screen on";
      v8 = &v13;
    }

    _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    goto LABEL_16;
  }

  if (event == 4)
  {
    _autoUnlockManager = [(SBUIPhoneUnlockWithWatchController *)self _autoUnlockManager];
    v4 = 1;
    [_autoUnlockManager donateDeviceUnlockedWithMask:1];

    return v4;
  }

  if (event == 21)
  {
    self->_faceOccludedSinceScreenOn = 1;
    v5 = SBLogPhoneUnlockWithWatch();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Face occluded since screen on", buf, 2u);
    }

    if (!_os_feature_enabled_impl())
    {
      return 0;
    }

    return [(SBUIPhoneUnlockWithWatchController *)self attemptPhoneUnlockWithWatch];
  }

  return v4;
}

- (void)manager:(id)manager beganAttemptWithDevice:(id)device
{
  v8 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = SBLogPhoneUnlockWithWatch();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = deviceCopy;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Attempt phone unlock with watch began with device: %{public}@", &v6, 0xCu);
  }
}

- (void)manager:(id)manager completedUnlockWithDevice:(id)device
{
  deviceCopy = device;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__SBUIPhoneUnlockWithWatchController_manager_completedUnlockWithDevice___block_invoke;
  v7[3] = &unk_1E789DD98;
  v8 = deviceCopy;
  selfCopy = self;
  v6 = deviceCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __72__SBUIPhoneUnlockWithWatchController_manager_completedUnlockWithDevice___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SBLogPhoneUnlockWithWatch();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_DEFAULT, "Attempt phone unlock with watch completed with device: %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 40) _handleUnlockAttemptSucceeded];
}

- (void)manager:(id)manager failedAttemptWithError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SBUIPhoneUnlockWithWatchController_manager_failedAttemptWithError___block_invoke;
  v7[3] = &unk_1E789DD98;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __69__SBUIPhoneUnlockWithWatchController_manager_failedAttemptWithError___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SBLogPhoneUnlockWithWatch();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_DEFAULT, "Attempt phone unlock with watch failed with error: %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 40) _handleUnlockAttemptFailedWithError:*(a1 + 32)];
}

- (void)setTestAutoUnlockManager:(id)manager
{
  managerCopy = manager;
  testAutoUnlockManager = self->_testAutoUnlockManager;
  p_testAutoUnlockManager = &self->_testAutoUnlockManager;
  if (testAutoUnlockManager != managerCopy)
  {
    v8 = managerCopy;
    objc_storeStrong(p_testAutoUnlockManager, manager);
    managerCopy = v8;
  }
}

- (void)setBottomFaceOccludedSinceScreenOn:(BOOL)on
{
  if (self->_bottomFaceOccludedSinceScreenOn != on)
  {
    self->_bottomFaceOccludedSinceScreenOn = on;
  }
}

- (void)setFaceWUPoseEligibleSinceScreenOn:(BOOL)on
{
  if (self->_faceWUPoseEligibleSinceScreenOn != on)
  {
    self->_faceWUPoseEligibleSinceScreenOn = on;
  }
}

- (void)setFaceOccludedSinceScreenOn:(BOOL)on
{
  if (self->_faceOccludedSinceScreenOn != on)
  {
    self->_faceOccludedSinceScreenOn = on;
  }
}

- (SBUIPhoneUnlockWithWatchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
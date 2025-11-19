@interface SBNCScreenController
- (BOOL)_isDeviceUILocked;
- (BOOL)canTurnOnScreenForNotificationRequest:(id)a3;
- (SBNCScreenController)init;
- (SBNCScreenController)initWithBackLightController:(id)a3 lockScreenManager:(id)a4 lockStateAggregator:(id)a5;
- (void)_createOrResetPowerAssertionWithTimeout:(double)a3;
- (void)_releasePowerAssertion;
- (void)_turnOnScreen;
- (void)_turnOnScreenForOutOfPocketEventBeforeTimeInterval:(double)a3;
- (void)_turnOnScreenForOutOfPocketEventIfNecessary;
- (void)_turnOnScreenForPocketMode;
- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4;
- (void)resetAutomaticLockStateForNotificationRequest:(id)a3;
- (void)turnOnScreenForNotificationRequest:(id)a3;
- (void)turnOnScreenIfPossibleForNotificationRequest:(id)a3;
@end

@implementation SBNCScreenController

- (SBNCScreenController)init
{
  [(SBNCScreenController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SBNCScreenController)initWithBackLightController:(id)a3 lockScreenManager:(id)a4 lockStateAggregator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = SBNCScreenController;
  v12 = [(SBNCScreenController *)&v16 init];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CC1D28]);
    pocketStateManager = v12->_pocketStateManager;
    v12->_pocketStateManager = v13;

    [(CMPocketStateManager *)v12->_pocketStateManager setDelegate:v12];
    v12->_powerAssertionID = 0;
    objc_storeStrong(&v12->_backlightController, a3);
    objc_storeStrong(&v12->_lockScreenManager, a4);
    objc_storeStrong(&v12->_lockStateAggregator, a5);
  }

  return v12;
}

- (BOOL)canTurnOnScreenForNotificationRequest:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 options];
  v6 = [v5 canTurnOnDisplay];

  LODWORD(v5) = [SBApp caseIsEnabledAndLatched];
  v7 = [(SBNCScreenController *)self lockScreenManager];
  v8 = v6 & ((v5 | [v7 isInLostMode]) ^ 1);

  v9 = [(SBNCScreenController *)self _isDeviceUILocked];
  v10 = MEMORY[0x277D77FC8];
  v11 = MEMORY[0x277D77FE0];
  if (v9)
  {
    v12 = [v4 options];
    v13 = [v12 alertsWhenLocked];

    v14 = [v4 requestDestinations];
    v15 = v13 & [v14 containsObject:*v11];
  }

  else
  {
    v14 = [v4 requestDestinations];
    v15 = [v14 containsObject:*v10];
  }

  v16 = v8 & v15;
  v17 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    log = v17;
    v33 = [v4 notificationIdentifier];
    v18 = [v33 un_logDigest];
    v32 = [v4 options];
    v29 = [v32 canTurnOnDisplay];
    v28 = [SBApp caseIsEnabledAndLatched];
    v30 = [(SBNCScreenController *)self lockScreenManager];
    v19 = [v30 isInLostMode];
    v20 = [(SBNCScreenController *)self _isDeviceUILocked];
    v21 = [v4 options];
    v22 = [v21 alertsWhenLocked];
    v23 = [v4 requestDestinations];
    v24 = [v23 containsObject:*v11];
    v25 = [v4 requestDestinations];
    v26 = [v25 containsObject:*MEMORY[0x277D77FC8]];
    *buf = 138545666;
    v35 = v18;
    v36 = 1024;
    v37 = v16;
    v38 = 1024;
    v39 = v4 != 0;
    v40 = 1024;
    v41 = v29;
    v42 = 1024;
    v43 = v28;
    v44 = 1024;
    v45 = v19;
    v46 = 1024;
    v47 = v20;
    v48 = 1024;
    v49 = v22;
    v50 = 1024;
    v51 = v24;
    v52 = 1024;
    v53 = v26;
    _os_log_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEFAULT, "Screen can be turned on for notification %{public}@: %d [ hasRequest: %d canTurnOnDisplay: %d caseIsEnabledAndLatched: %d isInLostMode: %d isDeviceUILocked: %d alertsWhenLocked: %d sentToLockScreenDestination: %d sentToBannerDestination: %d ]", buf, 0x42u);
  }

  return v16;
}

- (void)turnOnScreenForNotificationRequest:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 notificationIdentifier];
    v8 = [v7 un_logDigest];
    v9 = [v4 options];
    v10 = [v9 overridesPocketMode];
    v11 = [(SBNCScreenController *)self backlightController];
    v15 = 138543874;
    v16 = v8;
    v17 = 1024;
    v18 = v10;
    v19 = 1024;
    v20 = [v11 screenIsOn];
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Turn on screen for notification %{public}@ [ overridesPocketMode: %d screenIsOn: %d ]", &v15, 0x18u);
  }

  v12 = [v4 options];
  if ([v12 overridesPocketMode])
  {
  }

  else
  {
    v13 = [(SBNCScreenController *)self backlightController];
    v14 = [v13 screenIsOn];

    if ((v14 & 1) == 0)
    {
      [(SBNCScreenController *)self _turnOnScreenForPocketMode];
      goto LABEL_8;
    }
  }

  [(SBNCScreenController *)self _turnOnScreen];
LABEL_8:
}

- (void)turnOnScreenIfPossibleForNotificationRequest:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBNCScreenController *)self canTurnOnScreenForNotificationRequest:v4])
  {
    v5 = [v4 alertOptions];
    v6 = [v5 shouldSuppress];

    if (v6)
    {
      v7 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [v4 notificationIdentifier];
        v10 = [v9 un_logDigest];
        v11 = 138543362;
        v12 = v10;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Screen cannot be turned on for notification %{public}@ because DND suppressed it", &v11, 0xCu);
      }
    }

    else
    {
      [(SBNCScreenController *)self turnOnScreenForNotificationRequest:v4];
    }
  }
}

- (void)resetAutomaticLockStateForNotificationRequest:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 options];
  v6 = [v5 preventsAutomaticLock];

  if (v6)
  {
    v7 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v4 notificationIdentifier];
      v10 = [v9 un_logDigest];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Reset idle timer for notification %{public}@", &v12, 0xCu);
    }

    v11 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v11 resetIdleTimerIfNonConsecutiveSource:self forReason:@"NCNotificationRequest"];
  }
}

- (void)_turnOnScreen
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(SBNCScreenController *)self _isDeviceUILocked])
  {
    v3 = [(SBNCScreenController *)self backlightController];
    v4 = [v3 screenIsOn] ^ 1;

    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Reset idle timer [ doFadeIn: %d ]", buf, 8u);
    }

    v6 = [(SBNCScreenController *)self lockScreenManager];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{1, @"SBUIUnlockOptionsTurnOnScreenFirstKey"}];
    v12[0] = v7;
    v11[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [v6 unlockUIFromSource:10 withOptions:v9];
  }

  else
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Reset idle timer", buf, 2u);
    }
  }

  v10 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  [v10 resetIdleTimerIfNonConsecutiveSource:self forReason:@"NCNotificationTurnOnScreen"];
}

- (void)_turnOnScreenForPocketMode
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "PocketStateManager: query state", buf, 2u);
  }

  v4 = [(SBNCScreenController *)self pocketStateManager];
  v5 = [(SBNCScreenController *)self backlightController];
  [v5 defaultLockScreenDimIntervalWhenNotificationsPresent];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SBNCScreenController__turnOnScreenForPocketMode__block_invoke;
  v6[3] = &unk_2783AD478;
  v6[4] = self;
  [v4 queryStateOntoQueue:MEMORY[0x277D85CD0] andMonitorFor:v6 withTimeout:? andHandler:?];
}

void __50__SBNCScreenController__turnOnScreenForPocketMode__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "PocketStateManager: query responded with state: %ld", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v6 = [v5 backlightController];
    [v6 defaultLockScreenDimIntervalWhenNotificationsPresent];
    [v5 _turnOnScreenForOutOfPocketEventBeforeTimeInterval:?];
  }

  else
  {
    [v5 _turnOnScreen];
  }
}

- (BOOL)_isDeviceUILocked
{
  v2 = [(SBNCScreenController *)self lockStateAggregator];
  v3 = [v2 hasAnyLockState];

  return v3;
}

- (void)_turnOnScreenForOutOfPocketEventBeforeTimeInterval:(double)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "PocketStateManager: turn on screen for out of pocket event before %lf", &v6, 0xCu);
  }

  self->_turnOnScreenForOutOfPocketEvent = 1;
  [(SBNCScreenController *)self _createOrResetPowerAssertionWithTimeout:a3];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__cancelTurnOnScreenForOutOfPocketEvents object:0];
  [(SBNCScreenController *)self performSelector:sel__cancelTurnOnScreenForOutOfPocketEvents withObject:0 afterDelay:a3];
}

- (void)_turnOnScreenForOutOfPocketEventIfNecessary
{
  if (self->_turnOnScreenForOutOfPocketEvent)
  {
    v7 = v2;
    v8 = v3;
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "PocketStateManager: turn on screen for out of pocket event", v6, 2u);
    }

    [(SBNCScreenController *)self _turnOnScreen];
    [(SBNCScreenController *)self _cancelTurnOnScreenForOutOfPocketEvents];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__cancelTurnOnScreenForOutOfPocketEvents object:0];
  }
}

- (void)_createOrResetPowerAssertionWithTimeout:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_powerAssertionID)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      powerAssertionName = self->_powerAssertionName;
      *buf = 138543618;
      v17 = powerAssertionName;
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Extending an existing power assertion with name %{public}@ and timeout: %f - so we keep the device awake while we wait to see if it is removed from the pocket", buf, 0x16u);
    }

    IOPMAssertionSetProperty(self->_powerAssertionID, @"TimeoutSeconds", [MEMORY[0x277CCABB0] numberWithDouble:a3]);
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [v7 initWithFormat:@"com.apple.springboard.pocketNotification.%d", ++_createOrResetPowerAssertionWithTimeout__count];
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = v8;
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "About to take out a power assertion with name %{public}@ and timeout: %f - so we keep the device awake while we wait to see if it is removed from the pocket", buf, 0x16u);
    }

    v14[0] = @"AssertType";
    v14[1] = @"AssertLevel";
    *buf = 0;
    v15[0] = @"NoIdleSleepAssertion";
    v15[1] = &unk_283370A30;
    v15[2] = v8;
    v14[2] = @"AssertName";
    v14[3] = @"TimeoutSeconds";
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v15[3] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

    v12 = IOPMAssertionCreateWithProperties(v11, buf);
    [(SBNCScreenController *)self _releasePowerAssertion];
    objc_storeStrong(&self->_powerAssertionName, v8);
    self->_powerAssertionID = *buf;
    if (v12)
    {
      v13 = SBLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(SBNCScreenController *)&self->_powerAssertionName _createOrResetPowerAssertionWithTimeout:v12, v13];
      }
    }
  }
}

- (void)_releasePowerAssertion
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_powerAssertionID)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      powerAssertionName = self->_powerAssertionName;
      v6 = 138412290;
      v7 = powerAssertionName;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Releasing power assertion: %@", &v6, 0xCu);
    }

    IOPMAssertionRelease(self->_powerAssertionID);
    self->_powerAssertionID = 0;
    v5 = self->_powerAssertionName;
    self->_powerAssertionName = 0;
  }
}

- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v7 = a4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "pocketStateManager:didUpdateState:%ld", buf, 0xCu);
  }

  if (([MEMORY[0x277CC1D28] _sb_isScreenObscuredInPocketState:a4] & 1) == 0)
  {
    BSDispatchMain();
  }
}

- (void)_createOrResetPowerAssertionWithTimeout:(os_log_t)log .cold.1(uint64_t *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Unable to take power assertion with name %{public}@ - returned %#x", &v4, 0x12u);
}

@end
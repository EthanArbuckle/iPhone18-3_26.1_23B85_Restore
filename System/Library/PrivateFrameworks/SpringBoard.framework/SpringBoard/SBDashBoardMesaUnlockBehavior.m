@interface SBDashBoardMesaUnlockBehavior
- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate;
- (SBDashBoardMesaUnlockBehavior)initWithMesaSettings:(id)a3 andUnlockTrigger:(id)a4;
- (id)_failureSettingsForFailAttempt:(int64_t)a3;
- (id)_feedbackForBioUnlockEventThatWasSpontaneous:(BOOL)a3;
- (id)_feedbackForFailureSettings:(id)a3;
- (id)_feedbackForPasscodeEvent;
- (id)_homeHardwareButton;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_handleMesaFailure;
- (void)_setTrigger:(id)a3;
- (void)handleBiometricEvent:(unint64_t)a3;
- (void)lockButtonDown;
- (void)menuButtonDown;
- (void)menuButtonUp;
- (void)mesaUnlockTriggerFired:(id)a3;
- (void)screenOff;
- (void)screenOn;
- (void)setAuthenticated:(BOOL)a3;
- (void)significantUserInteractionDidOccur;
@end

@implementation SBDashBoardMesaUnlockBehavior

- (SBDashBoardMesaUnlockBehavior)initWithMesaSettings:(id)a3 andUnlockTrigger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBDashBoardMesaUnlockBehavior;
  v9 = [(SBDashBoardMesaUnlockBehavior *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mesaSettings, a3);
    objc_storeStrong(&v10->_trigger, a4);
    [(SBMesaUnlockTrigger *)v10->_trigger setDelegate:v10];
  }

  return v10;
}

- (void)menuButtonDown
{
  v2 = [(SBDashBoardMesaUnlockBehavior *)self _trigger];
  [v2 menuButtonDown];
}

- (void)menuButtonUp
{
  v2 = [(SBDashBoardMesaUnlockBehavior *)self _trigger];
  [v2 menuButtonUp];
}

- (void)screenOn
{
  v2 = [(SBDashBoardMesaUnlockBehavior *)self _trigger];
  [v2 screenOn];
}

- (void)screenOff
{
  v3 = [(SBDashBoardMesaUnlockBehavior *)self _trigger];
  [v3 screenOff];

  self->_failedMesaUnlockAttempts = 0;
}

- (void)significantUserInteractionDidOccur
{
  v2 = [(SBDashBoardMesaUnlockBehavior *)self _trigger];
  [v2 significantUserInteractionOccurred];
}

- (void)lockButtonDown
{
  v2 = [(SBDashBoardMesaUnlockBehavior *)self _trigger];
  [v2 lockButtonDown];
}

- (void)_setTrigger:(id)a3
{
  v5 = a3;
  trigger = self->_trigger;
  if (trigger != v5)
  {
    v7 = v5;
    [(SBMesaUnlockTrigger *)trigger setDelegate:0];
    objc_storeStrong(&self->_trigger, a3);
    [(SBMesaUnlockTrigger *)self->_trigger setDelegate:self];
    v5 = v7;
  }
}

- (id)_homeHardwareButton
{
  homeHardwareButton = self->_homeHardwareButton;
  if (homeHardwareButton)
  {
    v3 = homeHardwareButton;
  }

  else
  {
    v3 = [SBApp homeHardwareButton];
  }

  return v3;
}

- (id)_feedbackForFailureSettings:(id)a3
{
  v3 = a3;
  v4 = [[SBAuthenticationFeedback alloc] initForFailureWithFailureSettings:v3];

  return v4;
}

- (id)_feedbackForPasscodeEvent
{
  v2 = [[SBAuthenticationFeedback alloc] initForFailureShowingPasscode:1];

  return v2;
}

- (id)_feedbackForBioUnlockEventThatWasSpontaneous:(BOOL)a3
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[SBAuthenticationFeedback alloc] initForSuccess];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(SBDashBoardMesaUnlockBehavior *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBDashBoardMesaUnlockBehavior *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBDashBoardMesaUnlockBehavior *)self succinctDescriptionBuilder];
  v5 = [v4 appendInteger:self->_failedMesaUnlockAttempts withName:@"failedMesaUnlockAttempts"];
  v6 = [v4 appendObject:self->_trigger withName:@"trigger"];

  return v4;
}

- (void)handleBiometricEvent:(unint64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D67C98] sharedInstance];
  v6 = [v5 hasEnrolledIdentities];

  WeakRetained = SBLogLockScreenMesaUnlockBehaviors();
  v8 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = NSStringFromSBUIBiometricEvent();
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&dword_21ED4E000, WeakRetained, OS_LOG_TYPE_INFO, "Base unlock behavior received biometric event: %{public}@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_biometricUnlockBehaviorDelegate);
    if (a3 <= 0x21 && ((1 << a3) & 0x2070009E0) != 0)
    {
      if ([(CSLockScreenMesaSettings *)self->_mesaSettings passcodeRequiredEventsCountAsFailures])
      {
        [(SBDashBoardMesaUnlockBehavior *)self _handleMesaFailure];
      }

      else
      {
        v11 = [(SBDashBoardMesaUnlockBehavior *)self _feedbackForPasscodeEvent];
        v12 = SBLogLockScreenMesaUnlockBehaviors();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v11;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "requesting feedback: %@", buf, 0xCu);
        }

        [WeakRetained biometricUnlockBehavior:self requestsFeedback:v11];
      }

      if ([(CSLockScreenMesaSettings *)self->_mesaSettings flashRedOnPasscodeRequiredEvents])
      {
        v10 = +[SBScreenFlash mainScreenFlasher];
        v13 = [MEMORY[0x277D75348] redColor];
        [v10 flashColor:v13 withCompletion:0];

        goto LABEL_15;
      }
    }

    else
    {
      if (a3 - 9 <= 1)
      {
        [(SBDashBoardMesaUnlockBehavior *)self _handleMesaFailure];
        goto LABEL_16;
      }

      switch(a3)
      {
        case 0uLL:
          v10 = [(SBDashBoardMesaUnlockBehavior *)self _trigger];
          [v10 fingerOff];
          goto LABEL_15;
        case 1uLL:
          v10 = [(SBDashBoardMesaUnlockBehavior *)self _trigger];
          [v10 fingerOn];
          goto LABEL_15;
        case 4uLL:
          self->_failedMesaUnlockAttempts = 0;
          v14 = [(SBDashBoardMesaUnlockBehavior *)self _trigger];
          v15 = [v14 bioUnlock];

          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __54__SBDashBoardMesaUnlockBehavior_handleBiometricEvent___block_invoke;
          v21[3] = &unk_2783B1948;
          v21[4] = self;
          v23 = v15;
          WeakRetained = WeakRetained;
          v22 = WeakRetained;
          v16 = MEMORY[0x223D6F7F0](v21);
          if ([(CSLockScreenMesaSettings *)self->_mesaSettings successFeedbackWaitsUntilButtonUp])
          {
            v17 = [(SBDashBoardMesaUnlockBehavior *)self _homeHardwareButton];
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = __54__SBDashBoardMesaUnlockBehavior_handleBiometricEvent___block_invoke_10;
            v18[3] = &unk_2783AB500;
            v19 = v16;
            v20 = v15;
            [v17 performWhenMenuButtonIsUpUsingBlock:v18];
          }

          else
          {
            v16[2](v16, v15);
          }

          break;
      }
    }
  }

  else if (v8)
  {
    v10 = NSStringFromSBUIBiometricEvent();
    *buf = 138543362;
    v25 = v10;
    _os_log_impl(&dword_21ED4E000, WeakRetained, OS_LOG_TYPE_INFO, "Unlock behavior received biometric event but has no enrolled identities. Bailing. Event: %{public}@", buf, 0xCu);
LABEL_15:
  }

LABEL_16:
}

void __54__SBDashBoardMesaUnlockBehavior_handleBiometricEvent___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(SBLockScreenUnlockRequest);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(SBLockScreenUnlockRequest *)v2 setName:v4];

  [(SBLockScreenUnlockRequest *)v2 setSource:23];
  if (*(a1 + 48))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [(SBLockScreenUnlockRequest *)v2 setIntent:v5];
  v6 = [*(a1 + 32) _feedbackForBioUnlockEventThatWasSpontaneous:0];
  v7 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109378;
    v8[1] = [(SBLockScreenUnlockRequest *)v2 intent];
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "requesting unlock with intent: %d and feedback: %@", v8, 0x12u);
  }

  [*(a1 + 40) biometricUnlockBehavior:*(a1 + 32) requestsUnlock:v2 withFeedback:v6];
}

- (void)setAuthenticated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBDashBoardMesaUnlockBehavior *)self _trigger];
  [v4 setAuthenticated:v3];
}

- (void)mesaUnlockTriggerFired:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(SBLockScreenUnlockRequest);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(SBLockScreenUnlockRequest *)v4 setName:v6];

  [(SBLockScreenUnlockRequest *)v4 setSource:23];
  [(SBLockScreenUnlockRequest *)v4 setIntent:3];
  v7 = [(SBDashBoardMesaUnlockBehavior *)self _feedbackForBioUnlockEventThatWasSpontaneous:1];
  v8 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109378;
    v10[1] = [(SBLockScreenUnlockRequest *)v4 intent];
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "trigger fired - requesting unlock with intent: %d and feedback: %@", v10, 0x12u);
  }

  v9 = [(SBDashBoardMesaUnlockBehavior *)self biometricUnlockBehaviorDelegate];
  [v9 biometricUnlockBehavior:self requestsUnlock:v4 withFeedback:v7];
}

- (void)_handleMesaFailure
{
  ++self->_failedMesaUnlockAttempts;
  v3 = [(SBDashBoardMesaUnlockBehavior *)self _failureSettingsForFailAttempt:?];
  v4 = [(SBDashBoardMesaUnlockBehavior *)self _feedbackForFailureSettings:v3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__SBDashBoardMesaUnlockBehavior__handleMesaFailure__block_invoke;
  v10[3] = &unk_2783A92D8;
  v5 = v4;
  v11 = v5;
  v12 = self;
  v6 = MEMORY[0x223D6F7F0](v10);
  if ([v3 waitUntilButtonUp])
  {
    v7 = [(SBDashBoardMesaUnlockBehavior *)self _homeHardwareButton];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__SBDashBoardMesaUnlockBehavior__handleMesaFailure__block_invoke_12;
    v8[3] = &unk_2783A9348;
    v9 = v6;
    [v7 performWhenMenuButtonIsUpUsingBlock:v8];
  }

  else
  {
    v6[2](v6);
  }
}

void __51__SBDashBoardMesaUnlockBehavior__handleMesaFailure__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "requesting feedback: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) biometricUnlockBehaviorDelegate];
  [v4 biometricUnlockBehavior:*(a1 + 40) requestsFeedback:*(a1 + 32)];
}

- (id)_failureSettingsForFailAttempt:(int64_t)a3
{
  failedMesaUnlockAttempts = self->_failedMesaUnlockAttempts;
  mesaSettings = self->_mesaSettings;
  if (failedMesaUnlockAttempts > 2)
  {
    if (failedMesaUnlockAttempts != 3)
    {
      if (failedMesaUnlockAttempts == 4)
      {
        v5 = [(CSLockScreenMesaSettings *)mesaSettings fourthFailureSettings];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v5 = [(CSLockScreenMesaSettings *)mesaSettings thirdFailureSettings];
  }

  else
  {
    if (failedMesaUnlockAttempts != 1)
    {
      if (failedMesaUnlockAttempts == 2)
      {
        v5 = [(CSLockScreenMesaSettings *)mesaSettings secondFailureSettings];
        goto LABEL_11;
      }

LABEL_8:
      v5 = [(CSLockScreenMesaSettings *)mesaSettings fifthFailureSettings];
      goto LABEL_11;
    }

    v5 = [(CSLockScreenMesaSettings *)mesaSettings firstFailureSettings];
  }

LABEL_11:

  return v5;
}

- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_biometricUnlockBehaviorDelegate);

  return WeakRetained;
}

@end
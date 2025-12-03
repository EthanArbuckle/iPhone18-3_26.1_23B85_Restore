@interface SBDashBoardPearlUnlockBehavior
- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate;
- (SBDashBoardPearlUnlockBehavior)initWithPearlSettings:(id)settings andUnlockTrigger:(id)trigger;
- (id)_feedbackForBioUnlockEventThatWasSpontaneous:(BOOL)spontaneous;
- (id)_feedbackForFailureSettings:(id)settings;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_handlePearlFailure;
- (void)handleBiometricEvent:(unint64_t)event;
- (void)mesaUnlockTriggerFired:(id)fired;
@end

@implementation SBDashBoardPearlUnlockBehavior

- (SBDashBoardPearlUnlockBehavior)initWithPearlSettings:(id)settings andUnlockTrigger:(id)trigger
{
  settingsCopy = settings;
  triggerCopy = trigger;
  v12.receiver = self;
  v12.super_class = SBDashBoardPearlUnlockBehavior;
  v9 = [(SBDashBoardPearlUnlockBehavior *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pearlSettings, settings);
    objc_storeStrong(&v10->_trigger, trigger);
    [(SBMesaUnlockTrigger *)v10->_trigger setDelegate:v10];
  }

  return v10;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBDashBoardPearlUnlockBehavior *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDashBoardPearlUnlockBehavior *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBDashBoardPearlUnlockBehavior *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_trigger withName:@"trigger"];

  return succinctDescriptionBuilder;
}

- (void)handleBiometricEvent:(unint64_t)event
{
  v19 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
  hasEnrolledIdentities = [mEMORY[0x277D67C98] hasEnrolledIdentities];

  WeakRetained = SBLogLockScreenMesaUnlockBehaviors();
  v8 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO);
  if (hasEnrolledIdentities)
  {
    if (v8)
    {
      v9 = NSStringFromSBUIBiometricEvent();
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_21ED4E000, WeakRetained, OS_LOG_TYPE_INFO, "Base unlock behavior received biometric event: %{public}@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_biometricUnlockBehaviorDelegate);
    if (event <= 0x21 && ((1 << event) & 0x2070009E0) != 0 || event - 9 <= 1)
    {
      [(SBDashBoardPearlUnlockBehavior *)self _handlePearlFailure];
    }

    else if (event == 4)
    {
      _trigger = [(SBDashBoardPearlUnlockBehavior *)self _trigger];
      bioUnlock = [_trigger bioUnlock];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__SBDashBoardPearlUnlockBehavior_handleBiometricEvent___block_invoke;
      v14[3] = &unk_2783B1948;
      v14[4] = self;
      v16 = bioUnlock;
      WeakRetained = WeakRetained;
      v15 = WeakRetained;
      v13 = MEMORY[0x223D6F7F0](v14);
      v13[2](v13, bioUnlock);
    }
  }

  else if (v8)
  {
    v10 = NSStringFromSBUIBiometricEvent();
    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&dword_21ED4E000, WeakRetained, OS_LOG_TYPE_INFO, "Unlock behavior received biometric event but has no enrolled identities. Bailing. Event: %{public}@", buf, 0xCu);
  }
}

void __55__SBDashBoardPearlUnlockBehavior_handleBiometricEvent___block_invoke(uint64_t a1)
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

- (void)mesaUnlockTriggerFired:(id)fired
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(SBLockScreenUnlockRequest);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(SBLockScreenUnlockRequest *)v4 setName:v6];

  [(SBLockScreenUnlockRequest *)v4 setSource:23];
  [(SBLockScreenUnlockRequest *)v4 setIntent:3];
  v7 = [(SBDashBoardPearlUnlockBehavior *)self _feedbackForBioUnlockEventThatWasSpontaneous:1];
  v8 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109378;
    v10[1] = [(SBLockScreenUnlockRequest *)v4 intent];
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "trigger fired - requesting unlock with intent: %d and feedback: %@", v10, 0x12u);
  }

  biometricUnlockBehaviorDelegate = [(SBDashBoardPearlUnlockBehavior *)self biometricUnlockBehaviorDelegate];
  [biometricUnlockBehaviorDelegate biometricUnlockBehavior:self requestsUnlock:v4 withFeedback:v7];
}

- (id)_feedbackForFailureSettings:(id)settings
{
  settingsCopy = settings;
  v4 = [[SBAuthenticationFeedback alloc] initForFailureWithFailureSettings:settingsCopy];

  return v4;
}

- (id)_feedbackForBioUnlockEventThatWasSpontaneous:(BOOL)spontaneous
{
  if (spontaneous)
  {
    initForSuccess = 0;
  }

  else
  {
    initForSuccess = [[SBAuthenticationFeedback alloc] initForSuccess];
  }

  return initForSuccess;
}

- (void)_handlePearlFailure
{
  failureSettings = [(CSLockScreenPearlSettings *)self->_pearlSettings failureSettings];
  v4 = [(SBDashBoardPearlUnlockBehavior *)self _feedbackForFailureSettings:failureSettings];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SBDashBoardPearlUnlockBehavior__handlePearlFailure__block_invoke;
  v10[3] = &unk_2783A92D8;
  v11 = v4;
  selfCopy = self;
  v5 = v4;
  v6 = MEMORY[0x223D6F7F0](v10);
  v6[2](v6, v7, v8, v9);
}

void __53__SBDashBoardPearlUnlockBehavior__handlePearlFailure__block_invoke(uint64_t a1)
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

- (SBBiometricUnlockBehaviorDelegate)biometricUnlockBehaviorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_biometricUnlockBehaviorDelegate);

  return WeakRetained;
}

@end
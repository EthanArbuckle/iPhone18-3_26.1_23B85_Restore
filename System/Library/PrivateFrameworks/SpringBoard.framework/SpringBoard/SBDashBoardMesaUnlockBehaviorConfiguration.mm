@interface SBDashBoardMesaUnlockBehaviorConfiguration
- (Class)_expectedTriggerClassIncludingAccessibility:(BOOL)a3;
- (SBBiometricUnlockBehaviorConfigurationDelegate)delegate;
- (SBDashBoardMesaUnlockBehaviorConfiguration)initWithLiftToWakeController:(id)a3 biometricResource:(id)a4 lockScreenPrototypeSettings:(id)a5 evaluateTriggerClass:(BOOL)a6;
- (id)_unlockTriggerWithClass:(Class)a3;
- (id)newBehaviorForCurrentConfiguration;
- (void)_evaluateTriggerClass;
- (void)_setLiftToWakeController:(id)a3;
- (void)dealloc;
- (void)newBehaviorForCurrentConfiguration;
@end

@implementation SBDashBoardMesaUnlockBehaviorConfiguration

- (SBDashBoardMesaUnlockBehaviorConfiguration)initWithLiftToWakeController:(id)a3 biometricResource:(id)a4 lockScreenPrototypeSettings:(id)a5 evaluateTriggerClass:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = SBDashBoardMesaUnlockBehaviorConfiguration;
  v13 = [(SBDashBoardMesaUnlockBehaviorConfiguration *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(SBDashBoardMesaUnlockBehaviorConfiguration *)v13 _setLiftToWakeController:v10];
    objc_storeStrong(&v14->_biometricResource, a4);
    objc_storeStrong(&v14->_prototypeSettings, a5);
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v14 selector:sel__accessibilityOptionsChanged_ name:*MEMORY[0x277D81E00] object:0];

    if (v6)
    {
      [(SBDashBoardMesaUnlockBehaviorConfiguration *)v14 _evaluateTriggerClass];
    }
  }

  return v14;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D81E00] object:0];

  [(SBDashBoardMesaUnlockBehaviorConfiguration *)self _setLiftToWakeController:0];
  v4.receiver = self;
  v4.super_class = SBDashBoardMesaUnlockBehaviorConfiguration;
  [(SBDashBoardMesaUnlockBehaviorConfiguration *)&v4 dealloc];
}

- (id)newBehaviorForCurrentConfiguration
{
  v4 = [(SBDashBoardMesaUnlockBehaviorConfiguration *)self _unlockTriggerWithClass:self->_currentTriggerClass];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBDashBoardMesaUnlockBehaviorConfiguration *)a2 newBehaviorForCurrentConfiguration];
  }

  v5 = [(SBUIBiometricResource *)self->_biometricResource hasPearlSupport];
  prototypeSettings = self->_prototypeSettings;
  if (v5)
  {
    v7 = [(CSLockScreenSettings *)prototypeSettings pearlSettings];
    v8 = [[SBDashBoardPearlUnlockBehavior alloc] initWithPearlSettings:v7 andUnlockTrigger:v4];
  }

  else
  {
    v7 = [(CSLockScreenSettings *)prototypeSettings mesaSettings];
    v8 = [[SBDashBoardMesaUnlockBehavior alloc] initWithMesaSettings:v7 andUnlockTrigger:v4];
  }

  v9 = v8;

  return v9;
}

- (void)_evaluateTriggerClass
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(SBDashBoardMesaUnlockBehaviorConfiguration *)self _expectedTriggerClassIncludingAccessibility:1];
  if (self->_currentTriggerClass != v3)
  {
    self->_currentTriggerClass = v3;
    v4 = SBLogLockScreenMesaUnlockBehaviors();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromClass(self->_currentTriggerClass);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Unlock behavior configuration changed - new expected trigger is: %{public}@", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained biometricUnlockBehaviorConfigurationDidChange:self];
  }
}

- (void)_setLiftToWakeController:(id)a3
{
  v5 = a3;
  liftToWakeController = self->_liftToWakeController;
  if (liftToWakeController != v5)
  {
    v7 = v5;
    [(SBLiftToWakeController *)liftToWakeController removeObserver:self];
    objc_storeStrong(&self->_liftToWakeController, a3);
    [(SBLiftToWakeController *)self->_liftToWakeController addObserver:self];
    v5 = v7;
  }
}

- (id)_unlockTriggerWithClass:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_class() == a3)
  {
    v8 = [(SBDashBoardMesaUnlockBehaviorConfiguration *)self _expectedTriggerClassIncludingAccessibility:0];
    if (v8 == objc_opt_class())
    {
      [(SBDashBoardMesaUnlockBehaviorConfiguration *)a2 _unlockTriggerWithClass:?];
    }

    v9 = [(SBDashBoardMesaUnlockBehaviorConfiguration *)self _unlockTriggerWithClass:v8];
    v10 = [[SBAccessibilityMesaUnlockTrigger alloc] initWithUnlockBehaviorConfigurationDelegate:WeakRetained baseTrigger:v9];
  }

  else
  {
    if (objc_opt_class() == a3)
    {
      v7 = [[SBZionUnlockTrigger alloc] initWithUnlockBehaviorConfigurationDelegate:WeakRetained];
    }

    else
    {
      v7 = objc_alloc_init(a3);
    }

    v10 = v7;
  }

  return v10;
}

- (Class)_expectedTriggerClassIncludingAccessibility:(BOOL)a3
{
  v3 = a3;
  if (([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport]& 1) == 0)
  {
    if (v3 && [(SBDashBoardMesaUnlockBehaviorConfiguration *)self _isAccessibilityRestingUnlockPreferenceEnabled])
    {
      [(SBUIBiometricResource *)self->_biometricResource hasPoseidonSupport];
    }

    else
    {
      [(SBLiftToWakeController *)self->_liftToWakeController isEnabled];
    }
  }

  v5 = objc_opt_class();

  return v5;
}

- (SBBiometricUnlockBehaviorConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)newBehaviorForCurrentConfiguration
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDashBoardMesaUnlockBehaviorConfiguration.m" lineNumber:79 description:@"Mesa unlock trigger must be a type of SBMesaUnlockTrigger."];
}

- (void)_unlockTriggerWithClass:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDashBoardMesaUnlockBehaviorConfiguration.m" lineNumber:150 description:@"Base unlock trigger cannot be accessibility or we'll loop."];
}

@end
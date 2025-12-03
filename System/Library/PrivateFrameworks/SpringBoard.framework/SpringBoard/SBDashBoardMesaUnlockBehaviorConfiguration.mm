@interface SBDashBoardMesaUnlockBehaviorConfiguration
- (Class)_expectedTriggerClassIncludingAccessibility:(BOOL)accessibility;
- (SBBiometricUnlockBehaviorConfigurationDelegate)delegate;
- (SBDashBoardMesaUnlockBehaviorConfiguration)initWithLiftToWakeController:(id)controller biometricResource:(id)resource lockScreenPrototypeSettings:(id)settings evaluateTriggerClass:(BOOL)class;
- (id)_unlockTriggerWithClass:(Class)class;
- (id)newBehaviorForCurrentConfiguration;
- (void)_evaluateTriggerClass;
- (void)_setLiftToWakeController:(id)controller;
- (void)dealloc;
- (void)newBehaviorForCurrentConfiguration;
@end

@implementation SBDashBoardMesaUnlockBehaviorConfiguration

- (SBDashBoardMesaUnlockBehaviorConfiguration)initWithLiftToWakeController:(id)controller biometricResource:(id)resource lockScreenPrototypeSettings:(id)settings evaluateTriggerClass:(BOOL)class
{
  classCopy = class;
  controllerCopy = controller;
  resourceCopy = resource;
  settingsCopy = settings;
  v17.receiver = self;
  v17.super_class = SBDashBoardMesaUnlockBehaviorConfiguration;
  v13 = [(SBDashBoardMesaUnlockBehaviorConfiguration *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(SBDashBoardMesaUnlockBehaviorConfiguration *)v13 _setLiftToWakeController:controllerCopy];
    objc_storeStrong(&v14->_biometricResource, resource);
    objc_storeStrong(&v14->_prototypeSettings, settings);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__accessibilityOptionsChanged_ name:*MEMORY[0x277D81E00] object:0];

    if (classCopy)
    {
      [(SBDashBoardMesaUnlockBehaviorConfiguration *)v14 _evaluateTriggerClass];
    }
  }

  return v14;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D81E00] object:0];

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

  hasPearlSupport = [(SBUIBiometricResource *)self->_biometricResource hasPearlSupport];
  prototypeSettings = self->_prototypeSettings;
  if (hasPearlSupport)
  {
    pearlSettings = [(CSLockScreenSettings *)prototypeSettings pearlSettings];
    v8 = [[SBDashBoardPearlUnlockBehavior alloc] initWithPearlSettings:pearlSettings andUnlockTrigger:v4];
  }

  else
  {
    pearlSettings = [(CSLockScreenSettings *)prototypeSettings mesaSettings];
    v8 = [[SBDashBoardMesaUnlockBehavior alloc] initWithMesaSettings:pearlSettings andUnlockTrigger:v4];
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

- (void)_setLiftToWakeController:(id)controller
{
  controllerCopy = controller;
  liftToWakeController = self->_liftToWakeController;
  if (liftToWakeController != controllerCopy)
  {
    v7 = controllerCopy;
    [(SBLiftToWakeController *)liftToWakeController removeObserver:self];
    objc_storeStrong(&self->_liftToWakeController, controller);
    [(SBLiftToWakeController *)self->_liftToWakeController addObserver:self];
    controllerCopy = v7;
  }
}

- (id)_unlockTriggerWithClass:(Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_class() == class)
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
    if (objc_opt_class() == class)
    {
      v7 = [[SBZionUnlockTrigger alloc] initWithUnlockBehaviorConfigurationDelegate:WeakRetained];
    }

    else
    {
      v7 = objc_alloc_init(class);
    }

    v10 = v7;
  }

  return v10;
}

- (Class)_expectedTriggerClassIncludingAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  if (([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport]& 1) == 0)
  {
    if (accessibilityCopy && [(SBDashBoardMesaUnlockBehaviorConfiguration *)self _isAccessibilityRestingUnlockPreferenceEnabled])
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBDashBoardMesaUnlockBehaviorConfiguration.m" lineNumber:79 description:@"Mesa unlock trigger must be a type of SBMesaUnlockTrigger."];
}

- (void)_unlockTriggerWithClass:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDashBoardMesaUnlockBehaviorConfiguration.m" lineNumber:150 description:@"Base unlock trigger cannot be accessibility or we'll loop."];
}

@end
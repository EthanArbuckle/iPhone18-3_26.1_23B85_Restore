@interface SBBiometricAuthenticationIndicatorPolicy
- (NSSet)components;
- (NSString)coverSheetIdentifier;
- (SBBiometricAuthenticationIndicatorPolicy)initWithLockScreenManager:(id)manager biometricResource:(id)resource authenticationController:(id)controller;
- (void)_acquireLockElementAssertion;
- (void)_armLockIndicatorTimer;
- (void)_authenticationStateChanged:(id)changed;
- (void)_cancelLockElementAssertion;
- (void)_cancelLockElementBloomAssertion;
- (void)_updatePearlIndicatorConfiguration;
- (void)backlightController:(id)controller willTransitionToBacklightState:(int64_t)state source:(int64_t)source;
- (void)biometricResource:(id)resource matchingEnabledDidChange:(BOOL)change;
- (void)biometricResource:(id)resource observeEvent:(unint64_t)event;
- (void)dealloc;
- (void)preferredVisibilityStateDidInvalidateForSpecifier:(id)specifier;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBBiometricAuthenticationIndicatorPolicy

- (SBBiometricAuthenticationIndicatorPolicy)initWithLockScreenManager:(id)manager biometricResource:(id)resource authenticationController:(id)controller
{
  managerCopy = manager;
  resourceCopy = resource;
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = SBBiometricAuthenticationIndicatorPolicy;
  v12 = [(SBBiometricAuthenticationIndicatorPolicy *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lockScreenManager, manager);
    objc_storeStrong(&v13->_biometricResource, resource);
    objc_storeStrong(&v13->_authenticationController, controller);
    [(SBUIBiometricResource *)v13->_biometricResource addObserver:v13];
    coverSheetViewController = [(SBLockScreenManager *)v13->_lockScreenManager coverSheetViewController];
    [coverSheetViewController registerExternalAppearanceProvider:v13];

    [(SBLockScreenManager *)v13->_lockScreenManager setIndicatorHost:v13];
    v15 = +[SBBacklightController sharedInstance];
    [v15 addObserver:v13];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__authenticationStateChanged_ name:*MEMORY[0x277D66078] object:0];
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    pearlSettings = [rootSettings pearlSettings];
    pearlSettings = v13->_pearlSettings;
    v13->_pearlSettings = pearlSettings;

    [(CSLockScreenPearlSettings *)v13->_pearlSettings addKeyObserver:v13];
    [(SBBiometricAuthenticationIndicatorPolicy *)v13 _updatePearlIndicatorConfiguration];
  }

  return v13;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBUIBiometricResource *)self->_biometricResource removeObserver:self];
  v4 = +[SBBacklightController sharedInstance];
  [v4 removeObserver:self];

  coverSheetViewController = [(SBLockScreenManager *)self->_lockScreenManager coverSheetViewController];
  [coverSheetViewController unregisterExternalAppearanceProvider:self];

  [(BSInvalidatable *)self->_lockElementBloomAssertion invalidate];
  [(BSInvalidatable *)self->_lockElementVisibleAssertion invalidate];
  v6.receiver = self;
  v6.super_class = SBBiometricAuthenticationIndicatorPolicy;
  [(SBBiometricAuthenticationIndicatorPolicy *)&v6 dealloc];
}

- (void)_acquireLockElementAssertion
{
  if (!self->_lockElementVisibleAssertion)
  {
    lockScreenManager = self->_lockScreenManager;
    v5 = objc_opt_class();
    v8 = NSStringFromClass(v5);
    v6 = [(SBLockScreenManager *)lockScreenManager acquireSystemApertureLockElementVisibleAssertionWithReason:v8];
    lockElementVisibleAssertion = self->_lockElementVisibleAssertion;
    self->_lockElementVisibleAssertion = v6;
  }
}

- (void)_cancelLockElementAssertion
{
  if (![(SBLockScreenManager *)self->_lockScreenManager isIndicatorVisibilityRequired])
  {
    [(BSInvalidatable *)self->_lockElementVisibleAssertion invalidate];
    lockElementVisibleAssertion = self->_lockElementVisibleAssertion;
    self->_lockElementVisibleAssertion = 0;
  }
}

- (void)_cancelLockElementBloomAssertion
{
  [(BSInvalidatable *)self->_lockElementBloomAssertion invalidate];
  lockElementBloomAssertion = self->_lockElementBloomAssertion;
  self->_lockElementBloomAssertion = 0;
}

- (void)_authenticationStateChanged:(id)changed
{
  if ([(SBFUserAuthenticationController *)self->_authenticationController isAuthenticated])
  {

    [(SBBiometricAuthenticationIndicatorPolicy *)self _armLockIndicatorTimer];
  }
}

- (void)_armLockIndicatorTimer
{
  lockIndicatorMinDurationTimer = self->_lockIndicatorMinDurationTimer;
  if (lockIndicatorMinDurationTimer)
  {
    [(NSTimer *)lockIndicatorMinDurationTimer invalidate];
    v4 = self->_lockIndicatorMinDurationTimer;
    self->_lockIndicatorMinDurationTimer = 0;
  }

  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CBEBB8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SBBiometricAuthenticationIndicatorPolicy__armLockIndicatorTimer__block_invoke;
  v9[3] = &unk_2783AF5B0;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v6 = [v5 timerWithTimeInterval:0 repeats:v9 block:1.0];
  v7 = self->_lockIndicatorMinDurationTimer;
  self->_lockIndicatorMinDurationTimer = v6;

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:self->_lockIndicatorMinDurationTimer forMode:*MEMORY[0x277CBE738]];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __66__SBBiometricAuthenticationIndicatorPolicy__armLockIndicatorTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(a1 + 32) + 56) = 1;
  [WeakRetained _cancelLockElementAssertion];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__SBBiometricAuthenticationIndicatorPolicy__armLockIndicatorTimer__block_invoke_2;
  v4[3] = &unk_2783A92D8;
  v3 = *(a1 + 32);
  v4[4] = WeakRetained;
  v4[5] = v3;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.4];
}

void __66__SBBiometricAuthenticationIndicatorPolicy__armLockIndicatorTimer__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = [*(v1 + 8) coverSheetViewController];
    [v3 externalAppearanceProviderBehaviorChanged:*(a1 + 40)];
  }
}

- (void)_updatePearlIndicatorConfiguration
{
  [(CSLockScreenPearlSettings *)self->_pearlSettings fallbackIndicatorMinimumDurationLeeway];
  biometricResource = self->_biometricResource;

  [(SBUIBiometricResource *)biometricResource setPearlIndicatorConfiguration:?];
}

- (void)preferredVisibilityStateDidInvalidateForSpecifier:(id)specifier
{
  if ([specifier isIndicatorVisibilityRequired])
  {

    [(SBBiometricAuthenticationIndicatorPolicy *)self _acquireLockElementAssertion];
  }

  else
  {

    [(SBBiometricAuthenticationIndicatorPolicy *)self _cancelLockElementAssertion];
  }
}

- (void)biometricResource:(id)resource matchingEnabledDidChange:(BOOL)change
{
  changeCopy = change;
  isAuthenticatedCached = [(SBFUserAuthenticationController *)self->_authenticationController isAuthenticatedCached];
  if (changeCopy && (isAuthenticatedCached & 1) == 0)
  {

    [(SBBiometricAuthenticationIndicatorPolicy *)self _acquireLockElementAssertion];
  }
}

- (void)biometricResource:(id)resource observeEvent:(unint64_t)event
{
  resourceCopy = resource;
  if (event <= 34)
  {
    if (event - 6 < 2)
    {
      v13 = resourceCopy;
      [(SBBiometricAuthenticationIndicatorPolicy *)self _cancelLockElementAssertion];
LABEL_4:
      [(SBBiometricAuthenticationIndicatorPolicy *)self _cancelLockElementBloomAssertion];
LABEL_11:
      resourceCopy = v13;
      goto LABEL_12;
    }

    if (event != 34)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (self->_lockElementBloomAssertion)
    {
      goto LABEL_12;
    }

    lockScreenManager = self->_lockScreenManager;
    v13 = resourceCopy;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [(SBLockScreenManager *)lockScreenManager acquireSystemApertureLockElementBloomAssertionWithReason:v9];
    lockElementBloomAssertion = self->_lockElementBloomAssertion;
    self->_lockElementBloomAssertion = v10;

    goto LABEL_11;
  }

  if (event == 35)
  {
    v13 = resourceCopy;
    isAuthenticated = [(SBFUserAuthenticationController *)self->_authenticationController isAuthenticated];
    resourceCopy = v13;
    if ((isAuthenticated & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (event == 36)
  {
    goto LABEL_9;
  }

LABEL_12:
}

- (void)backlightController:(id)controller willTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  if ((state - 3) <= 1)
  {
    [(SBBiometricAuthenticationIndicatorPolicy *)self _cancelLockElementAssertion];
    [(SBBiometricAuthenticationIndicatorPolicy *)self _cancelLockElementBloomAssertion];
    self->_didPassMininumIndicatorDuration = 0;
  }
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSSet)components
{
  if ([(SBUIBiometricResource *)self->_biometricResource isMatchingEnabled])
  {
    v3 = [(SBFUserAuthenticationController *)self->_authenticationController isAuthenticatedCached]^ 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_opt_new();
  appearanceIdentifier = [(SBBiometricAuthenticationIndicatorPolicy *)self appearanceIdentifier];
  v7 = [v5 identifier:appearanceIdentifier];
  v8 = [v7 priority:80];
  v9 = v8;
  v10 = (v3 & 1) == 0 && self->_didPassMininumIndicatorDuration;
  v11 = [v8 hidden:v10];
  [v4 addObject:v11];

  return v4;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_pearlSettings == settings)
  {
    [(SBBiometricAuthenticationIndicatorPolicy *)self _updatePearlIndicatorConfiguration];
  }
}

@end
@interface SBBiometricAuthenticationIndicatorPolicy
- (NSSet)components;
- (NSString)coverSheetIdentifier;
- (SBBiometricAuthenticationIndicatorPolicy)initWithLockScreenManager:(id)a3 biometricResource:(id)a4 authenticationController:(id)a5;
- (void)_acquireLockElementAssertion;
- (void)_armLockIndicatorTimer;
- (void)_authenticationStateChanged:(id)a3;
- (void)_cancelLockElementAssertion;
- (void)_cancelLockElementBloomAssertion;
- (void)_updatePearlIndicatorConfiguration;
- (void)backlightController:(id)a3 willTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5;
- (void)biometricResource:(id)a3 matchingEnabledDidChange:(BOOL)a4;
- (void)biometricResource:(id)a3 observeEvent:(unint64_t)a4;
- (void)dealloc;
- (void)preferredVisibilityStateDidInvalidateForSpecifier:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBBiometricAuthenticationIndicatorPolicy

- (SBBiometricAuthenticationIndicatorPolicy)initWithLockScreenManager:(id)a3 biometricResource:(id)a4 authenticationController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = SBBiometricAuthenticationIndicatorPolicy;
  v12 = [(SBBiometricAuthenticationIndicatorPolicy *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lockScreenManager, a3);
    objc_storeStrong(&v13->_biometricResource, a4);
    objc_storeStrong(&v13->_authenticationController, a5);
    [(SBUIBiometricResource *)v13->_biometricResource addObserver:v13];
    v14 = [(SBLockScreenManager *)v13->_lockScreenManager coverSheetViewController];
    [v14 registerExternalAppearanceProvider:v13];

    [(SBLockScreenManager *)v13->_lockScreenManager setIndicatorHost:v13];
    v15 = +[SBBacklightController sharedInstance];
    [v15 addObserver:v13];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v13 selector:sel__authenticationStateChanged_ name:*MEMORY[0x277D66078] object:0];
    v17 = [MEMORY[0x277D02C20] rootSettings];
    v18 = [v17 pearlSettings];
    pearlSettings = v13->_pearlSettings;
    v13->_pearlSettings = v18;

    [(CSLockScreenPearlSettings *)v13->_pearlSettings addKeyObserver:v13];
    [(SBBiometricAuthenticationIndicatorPolicy *)v13 _updatePearlIndicatorConfiguration];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(SBUIBiometricResource *)self->_biometricResource removeObserver:self];
  v4 = +[SBBacklightController sharedInstance];
  [v4 removeObserver:self];

  v5 = [(SBLockScreenManager *)self->_lockScreenManager coverSheetViewController];
  [v5 unregisterExternalAppearanceProvider:self];

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

- (void)_authenticationStateChanged:(id)a3
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

  v8 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v8 addTimer:self->_lockIndicatorMinDurationTimer forMode:*MEMORY[0x277CBE738]];

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

- (void)preferredVisibilityStateDidInvalidateForSpecifier:(id)a3
{
  if ([a3 isIndicatorVisibilityRequired])
  {

    [(SBBiometricAuthenticationIndicatorPolicy *)self _acquireLockElementAssertion];
  }

  else
  {

    [(SBBiometricAuthenticationIndicatorPolicy *)self _cancelLockElementAssertion];
  }
}

- (void)biometricResource:(id)a3 matchingEnabledDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBFUserAuthenticationController *)self->_authenticationController isAuthenticatedCached];
  if (v4 && (v6 & 1) == 0)
  {

    [(SBBiometricAuthenticationIndicatorPolicy *)self _acquireLockElementAssertion];
  }
}

- (void)biometricResource:(id)a3 observeEvent:(unint64_t)a4
{
  v6 = a3;
  if (a4 <= 34)
  {
    if (a4 - 6 < 2)
    {
      v13 = v6;
      [(SBBiometricAuthenticationIndicatorPolicy *)self _cancelLockElementAssertion];
LABEL_4:
      [(SBBiometricAuthenticationIndicatorPolicy *)self _cancelLockElementBloomAssertion];
LABEL_11:
      v6 = v13;
      goto LABEL_12;
    }

    if (a4 != 34)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (self->_lockElementBloomAssertion)
    {
      goto LABEL_12;
    }

    lockScreenManager = self->_lockScreenManager;
    v13 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [(SBLockScreenManager *)lockScreenManager acquireSystemApertureLockElementBloomAssertionWithReason:v9];
    lockElementBloomAssertion = self->_lockElementBloomAssertion;
    self->_lockElementBloomAssertion = v10;

    goto LABEL_11;
  }

  if (a4 == 35)
  {
    v13 = v6;
    v12 = [(SBFUserAuthenticationController *)self->_authenticationController isAuthenticated];
    v6 = v13;
    if ((v12 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (a4 == 36)
  {
    goto LABEL_9;
  }

LABEL_12:
}

- (void)backlightController:(id)a3 willTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5
{
  if ((a4 - 3) <= 1)
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
  v6 = [(SBBiometricAuthenticationIndicatorPolicy *)self appearanceIdentifier];
  v7 = [v5 identifier:v6];
  v8 = [v7 priority:80];
  v9 = v8;
  v10 = (v3 & 1) == 0 && self->_didPassMininumIndicatorDuration;
  v11 = [v8 hidden:v10];
  [v4 addObject:v11];

  return v4;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_pearlSettings == a3)
  {
    [(SBBiometricAuthenticationIndicatorPolicy *)self _updatePearlIndicatorConfiguration];
  }
}

@end
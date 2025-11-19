@interface SBLockScreenBiometricAuthenticationCoordinator
- (BOOL)_isWalletPreArmAllowed;
- (BOOL)_stateWantsMatching:(unint64_t)a3 outMatchMode:(unint64_t *)a4;
- (BOOL)biometricUnlockBehavior:(id)a3 requestsFeedback:(id)a4;
- (BOOL)biometricUnlockBehavior:(id)a3 requestsUnlock:(id)a4 withFeedback:(id)a5;
- (BOOL)isUnlockingDisabled;
- (SBLockScreenBiometricAuthenticationCoordinator)initWithBiometricResource:(id)a3 walletPreArmController:(id)a4;
- (SBLockScreenBiometricAuthenticationCoordinatorDelegate)delegate;
- (id)acquireDisableAutoUnlockAssertionForReason:(id)a3;
- (id)acquireDisableCoordinatorAssertionForReason:(id)a3;
- (id)acquireDisableUnlockAssertionForReason:(id)a3;
- (id)acquireMatchingAssertionWithMode:(unint64_t)a3 reason:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_addPasscodeMatchingAssertion:(id)a3;
- (void)_clearFingerDetectAssertion;
- (void)_clearPendingUnlockRequest;
- (void)_createFingerDetectAssertion;
- (void)_handleIdentityMatchSuccess:(BOOL)a3;
- (void)_handlePassKitDismissalIfNecessaryWithReason:(id)a3;
- (void)_invalidateWalletPreArmRecognizer;
- (void)_noteMenuButtonDoublePress;
- (void)_noteMenuButtonSinglePress;
- (void)_pendUnlockRequest:(id)a3;
- (void)_removePasscodeMatchingAssertion:(id)a3;
- (void)_resetStateForReason:(id)a3;
- (void)_setPassLibrary:(id)a3;
- (void)_setState:(unint64_t)a3 forReason:(id)a4;
- (void)_setupPreArmRecognizerIfPossibleForReason:(id)a3;
- (void)_stateChangedFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)_toggleAutoUnlockBehaviorEnabled:(BOOL)a3;
- (void)_updateMatchingForState:(unint64_t)a3 forReason:(id)a4;
- (void)_walletPreArmDisabledDidChange:(id)a3;
- (void)biometricResource:(id)a3 matchingAllowedDidChange:(BOOL)a4;
- (void)biometricResource:(id)a3 observeEvent:(unint64_t)a4;
- (void)setAuthenticated:(BOOL)a3;
- (void)walletPrearmRecognizer:(id)a3 didFailToRecognizeForReason:(unint64_t)a4;
- (void)walletPrearmRecognizerDidRecognize:(id)a3;
@end

@implementation SBLockScreenBiometricAuthenticationCoordinator

- (BOOL)isUnlockingDisabled
{
  if ([(NSHashTable *)self->_disabledUnlockAssertions count])
  {
    return 1;
  }

  else
  {
    return [(SBUIBiometricResource *)self->_biometricResource hasBiometricAuthenticationCapabilityEnabled]^ 1;
  }
}

- (void)_noteMenuButtonDoublePress
{
  v3 = SBLogLockScreenBiometricCoordinator();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Received menu button double press", v4, 2u);
  }

  [(SBLockScreenBiometricAuthenticationCoordinator *)self _setupPreArmRecognizerIfPossibleForReason:@"MenuButtonDoublePress"];
  [(SBWalletPrearmRecognizer *)self->_walletPrearmRecognizer menuButtonDoublePress];
}

- (BOOL)_isWalletPreArmAllowed
{
  v3 = [(SBWalletPreArmController *)self->_walletPreArmController isPreArmSuppressed];
  v4 = [(SBWalletPreArmController *)self->_walletPreArmController isPreArmTriggeredByHomeButtonDoublePress];
  return [(SBWalletPreArmController *)self->_walletPreArmController isPreArmAvailable]&& v4 && !v3;
}

- (SBLockScreenBiometricAuthenticationCoordinator)initWithBiometricResource:(id)a3 walletPreArmController:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SBLockScreenBiometricAuthenticationCoordinator initWithBiometricResource:walletPreArmController:];
  }

  v26.receiver = self;
  v26.super_class = SBLockScreenBiometricAuthenticationCoordinator;
  v9 = [(SBLockScreenBiometricAuthenticationCoordinator *)&v26 init];
  v10 = v9;
  if (v9)
  {
    v9->_state = 0;
    objc_storeStrong(&v9->_walletPreArmController, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB40]);
    activePasscodeMatchAssertions = v10->_activePasscodeMatchAssertions;
    v10->_activePasscodeMatchAssertions = v11;

    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    disabledUnlockAssertions = v10->_disabledUnlockAssertions;
    v10->_disabledUnlockAssertions = v13;

    v15 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    disabledAutoUnlockAssertions = v10->_disabledAutoUnlockAssertions;
    v10->_disabledAutoUnlockAssertions = v15;

    v17 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    disabledAssertions = v10->_disabledAssertions;
    v10->_disabledAssertions = v17;

    v19 = objc_alloc_init(MEMORY[0x277D37FC0]);
    [(SBLockScreenBiometricAuthenticationCoordinator *)v10 _setPassLibrary:v19];

    v20 = objc_alloc_init(MEMORY[0x277D2C8A8]);
    [(SBLockScreenBiometricAuthenticationCoordinator *)v10 _setWalletPresentation:v20];

    objc_storeStrong(&v10->_biometricResource, a3);
    biometricResource = v10->_biometricResource;
    v22 = objc_alloc_init(MEMORY[0x277D65E30]);
    [(SBUIBiometricResource *)biometricResource setUnlockCredentialSet:v22];

    [(SBUIBiometricResource *)v10->_biometricResource addObserver:v10];
    v23 = +[SBBiometricEventLogger sharedInstance];
    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v10 selector:sel__walletPreArmDisabledDidChange_ name:@"SBWalletPreArmControllerPreArmSuppressionDidChange" object:v8];
  }

  return v10;
}

- (void)setAuthenticated:(BOOL)a3
{
  if (self->_isAuthenticated != a3)
  {
    self->_isAuthenticated = a3;
    [(SBUIBiometricResource *)self->_biometricResource _setAuthenticated:?];
    state = self->_state;
    v6 = MEMORY[0x277CCACA8];
    v8 = NSStringFromBOOL();
    v7 = [v6 stringWithFormat:@"Authentication state changed (authenticated: %@)", v8];
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _updateMatchingForState:state forReason:v7];
  }
}

- (id)acquireDisableCoordinatorAssertionForReason:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v6 = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __94__SBLockScreenBiometricAuthenticationCoordinator_acquireDisableCoordinatorAssertionForReason___block_invoke;
  v15 = &unk_2783AEA48;
  objc_copyWeak(&v17, &location);
  v7 = v4;
  v16 = v7;
  v8 = [v5 initWithIdentifier:@"DisableCoordinator" forReason:v7 queue:MEMORY[0x277D85CD0] invalidationBlock:&v12];

  if (v8)
  {
    v9 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v20 = v7;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Added disable wallet pre-arm assertion for reason: %{public}@", buf, 0xCu);
    }

    [(NSHashTable *)self->_disabledAssertions addObject:v8];
    if (self->_state)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Disable coordinator assertion added: %@", self->_disabledAssertions, v12, v13, v14, v15];
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _resetStateForReason:v10];
    }
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v8;
}

void __94__SBLockScreenBiometricAuthenticationCoordinator_acquireDisableCoordinatorAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[18] removeObject:v3];

  v5 = SBLogLockScreenBiometricCoordinator();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Removed disable coordinator assertion for reason: %{public}@", &v7, 0xCu);
  }

  if ([WeakRetained isEnabled])
  {
    [WeakRetained _resetStateForReason:@"Last disable coordinator assertion removed."];
  }
}

- (id)acquireDisableUnlockAssertionForReason:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v6 = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __89__SBLockScreenBiometricAuthenticationCoordinator_acquireDisableUnlockAssertionForReason___block_invoke;
  v15 = &unk_2783AEA48;
  objc_copyWeak(&v17, &location);
  v7 = v4;
  v16 = v7;
  v8 = [v5 initWithIdentifier:@"DisableUnlockAssertion" forReason:v7 queue:MEMORY[0x277D85CD0] invalidationBlock:&v12];

  if (v8)
  {
    v9 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v20 = v7;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Added disable Unlock assertion for reason: %{public}@", buf, 0xCu);
    }

    [(NSHashTable *)self->_disabledUnlockAssertions addObject:v8];
    if (self->_state - 3 <= 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unlock was allowed, but now it's disabled for assertions: %@", self->_disabledUnlockAssertions, v12, v13, v14, v15];
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _resetStateForReason:v10];
    }
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v8;
}

void __89__SBLockScreenBiometricAuthenticationCoordinator_acquireDisableUnlockAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[19] removeObject:v3];

  v5 = SBLogLockScreenBiometricCoordinator();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Removed disable Unlock assertion for reason: %{public}@", &v7, 0xCu);
  }

  if (([WeakRetained isUnlockingDisabled] & 1) == 0)
  {
    [WeakRetained _resetStateForReason:@"Last disable Unlock assertion dropped and current state is unavailable."];
  }
}

- (id)acquireDisableAutoUnlockAssertionForReason:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v6 = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __93__SBLockScreenBiometricAuthenticationCoordinator_acquireDisableAutoUnlockAssertionForReason___block_invoke;
  v15 = &unk_2783AEA48;
  objc_copyWeak(&v17, &location);
  v7 = v4;
  v16 = v7;
  v8 = [v5 initWithIdentifier:@"DisableAutoUnlockAssertion" forReason:v7 queue:MEMORY[0x277D85CD0] invalidationBlock:&v12];

  if (v8)
  {
    v9 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v20 = v7;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Added disable AutoUnlock assertion for reason: %{public}@", buf, 0xCu);
    }

    [(NSHashTable *)self->_disabledAutoUnlockAssertions addObject:v8];
    if (self->_state == 3)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"AutoUnlock was allowed, but now it's disabled for assertions: %@", self->_disabledAutoUnlockAssertions, v12, v13, v14, v15];
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _resetStateForReason:v10];
    }
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v8;
}

void __93__SBLockScreenBiometricAuthenticationCoordinator_acquireDisableAutoUnlockAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[20] removeObject:v3];

  v5 = SBLogLockScreenBiometricCoordinator();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Removed disable AutoUnlock assertion for reason: %{public}@", &v7, 0xCu);
  }

  if (([WeakRetained isAutoUnlockingDisabled] & 1) == 0)
  {
    [WeakRetained _resetStateForReason:@"Last disable AutoUnlock assertion dropped and current state is unavailable."];
  }
}

- (void)_noteMenuButtonSinglePress
{
  v3 = SBLogLockScreenBiometricCoordinator();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Received menu button single press", v4, 2u);
  }

  [(SBLockScreenBiometricAuthenticationCoordinator *)self _setupPreArmRecognizerIfPossibleForReason:@"MenuButtonSinglePress"];
  [(SBWalletPrearmRecognizer *)self->_walletPrearmRecognizer menuButtonSinglePress];
}

- (void)_setPassLibrary:(id)a3
{
  v5 = a3;
  passLibrary = self->_passLibrary;
  if (passLibrary != v5)
  {
    v7 = v5;
    [(PKPassLibrary *)passLibrary removeDelegate:self];
    objc_storeStrong(&self->_passLibrary, a3);
    [(PKPassLibrary *)self->_passLibrary addDelegate:self];
    v5 = v7;
  }
}

- (void)_resetStateForReason:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reset because %@", v4];
  v6 = [(SBLockScreenBiometricAuthenticationCoordinator *)self isUnlockingDisabled];
  if (![(SBLockScreenBiometricAuthenticationCoordinator *)self isEnabled])
  {
    goto LABEL_11;
  }

  if (!v6 && [(SBLockScreenBiometricAuthenticationCoordinator *)self _hasActivePasscodeViews])
  {
    v7 = 4;
    goto LABEL_12;
  }

  if ([(SBLockScreenBiometricAuthenticationCoordinator *)self _isWalletPreArmAllowed])
  {
    v7 = 2;
    goto LABEL_12;
  }

  if ([(SBUIBiometricResource *)self->_biometricResource hasEnrolledIdentities])
  {
    if (v6 || [(SBLockScreenBiometricAuthenticationCoordinator *)self isAutoUnlockingDisabled])
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
LABEL_11:
    v7 = 0;
  }

LABEL_12:
  [(SBLockScreenBiometricAuthenticationCoordinator *)self _setState:v7 forReason:v5];
  if (self->_state != v7)
  {
    v8 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(SBLockScreenBiometricAuthenticationCoordinator *)v4 _resetStateForReason:v8];
    }
  }
}

- (id)succinctDescription
{
  v2 = [(SBLockScreenBiometricAuthenticationCoordinator *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLockScreenBiometricAuthenticationCoordinator *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBLockScreenBiometricAuthenticationCoordinator *)self succinctDescriptionBuilder];
  v5 = v4;
  v6 = self->_state - 1;
  if (v6 > 3)
  {
    v7 = @"Disabled";
  }

  else
  {
    v7 = off_2783B7F80[v6];
  }

  [v4 appendString:v7 withName:@"matchingState"];
  v8 = [v5 appendObject:self->_walletPrearmRecognizer withName:@"walletPrearmRecognizer"];
  v9 = [v5 appendBool:self->_presentingWalletInterface withName:@"isPresentingWalletInterface"];
  v10 = [v5 appendObject:self->_pendingUnlockRequest withName:@"pendingUnlockRequest"];
  v11 = [v5 activeMultilinePrefix];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__SBLockScreenBiometricAuthenticationCoordinator_descriptionBuilderWithMultilinePrefix___block_invoke;
  v15[3] = &unk_2783A92D8;
  v12 = v5;
  v16 = v12;
  v17 = self;
  [v12 appendBodySectionWithName:@"assertions" multilinePrefix:v11 block:v15];

  v13 = v12;
  return v12;
}

void __88__SBLockScreenBiometricAuthenticationCoordinator_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 144) allObjects];
  [v2 appendArraySection:v3 withName:@"disableCoordinatorAssertions" skipIfEmpty:1];

  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 152) allObjects];
  [v4 appendArraySection:v5 withName:@"disableUnlockAssertions" skipIfEmpty:1];

  v6 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 160) allObjects];
  [v6 appendArraySection:v7 withName:@"disableAutoUnlockAssertions" skipIfEmpty:1];

  v8 = *(a1 + 32);
  v9 = [*(*(a1 + 40) + 136) array];
  [v8 appendArraySection:v9 withName:@"passcodeMatchAssertions" skipIfEmpty:1];
}

- (void)biometricResource:(id)a3 observeEvent:(unint64_t)a4
{
  v6 = a3;
  if (a4 > 2)
  {
    if (a4 != 3)
    {
      if (a4 == 4)
      {
        v11 = SBLogLockScreenBiometricCoordinator();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "Bio unlock", buf, 2u);
        }

        self->_bioAuthenticatedWhileMenuButtonDown = 1;
        v12 = [SBApp homeHardwareButton];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __81__SBLockScreenBiometricAuthenticationCoordinator_biometricResource_observeEvent___block_invoke;
        v21[3] = &unk_2783A8C18;
        v21[4] = self;
        [v12 performWhenMenuButtonIsUpUsingBlock:v21];

        v8 = [MEMORY[0x277CCAB98] defaultCenter];
        v9 = v8;
        v10 = &SBBiometricEventTimestampNotificationKeybagUnlock;
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    state = self->_state;
    if (state == 2)
    {
      if (self->_walletPrearmRecognizer || self->_presentingWalletInterface)
      {
        v16 = SBLogLockScreenBiometricCoordinator();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "Identity match - while wallet pre-arm recognizer active", buf, 2u);
        }

        self->_didMatchBeforeWalletPrearmRecognizerTimeout = 1;
      }

      else if (![(SBLockScreenBiometricAuthenticationCoordinator *)self isAutoUnlockingDisabled])
      {
        [(SBLockScreenBiometricAuthenticationCoordinator *)self _setState:3 forReason:@"Identity match - with no wallet pre-arm recognizer active and not presenting wallet UI"];
      }

      goto LABEL_31;
    }

    v17 = state - 3;
    v18 = SBLogLockScreenBiometricCoordinator();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v17 > 1)
    {
      if (v19)
      {
        *buf = 0;
        v20 = "Identity match - likely to be consumed by someone else (ie. wallet) because we aren't looking for it.";
        goto LABEL_29;
      }
    }

    else if (v19)
    {
      *buf = 0;
      v20 = "Identity match received while waiting for unlock.";
LABEL_29:
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, v20, buf, 2u);
    }

LABEL_31:
    v13 = self;
    v14 = 1;
    goto LABEL_32;
  }

  if (!a4)
  {
    v9 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Finger off", buf, 2u);
    }

    goto LABEL_13;
  }

  if (a4 != 1)
  {
LABEL_14:
    if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 0xA)
    {
      goto LABEL_33;
    }

    v13 = self;
    v14 = 0;
LABEL_32:
    [(SBLockScreenBiometricAuthenticationCoordinator *)v13 _handleIdentityMatchSuccess:v14];
    goto LABEL_33;
  }

  v7 = SBLogLockScreenBiometricCoordinator();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Finger on", buf, 2u);
  }

  [(SBLockScreenBiometricAuthenticationCoordinator *)self _setupPreArmRecognizerIfPossibleForReason:@"Finger On"];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = v8;
  v10 = &SBBiometricEventTimestampNotificationFingerOn;
LABEL_12:
  [v8 postNotificationName:*v10 object:0];
LABEL_13:

LABEL_33:
  [(SBBiometricUnlockBehavior *)self->_autoUnlockBehavior handleBiometricEvent:a4];
}

- (void)biometricResource:(id)a3 matchingAllowedDidChange:(BOOL)a4
{
  v4 = a4;
  v10 = *MEMORY[0x277D85DE8];
  v6 = SBLogLockScreenBiometricCoordinator();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"NotAllowed";
    if (v4)
    {
      v7 = @"Allowed";
    }

    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Biometric resource matching allowed did change to %{public}@", &v8, 0xCu);
  }

  if (v4 && self->_state <= 1)
  {
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _resetStateForReason:@"Biometric event monitor matching is now allowed."];
    [(SBUIBiometricResource *)self->_biometricResource refreshMatchMode];
  }
}

- (void)walletPrearmRecognizerDidRecognize:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBLockScreenBiometricAuthenticationCoordinator walletPrearmRecognizerDidRecognize:];
  }

  if (self->_walletPrearmRecognizer == v4)
  {
    if (self->_presentingWalletInterface)
    {
      [SBLockScreenBiometricAuthenticationCoordinator walletPrearmRecognizerDidRecognize:];
    }

    if (self->_state != 2)
    {
      [SBLockScreenBiometricAuthenticationCoordinator walletPrearmRecognizerDidRecognize:];
    }

    v5 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Presenting wallet UI", v6, 2u);
    }

    self->_presentingWalletInterface = 1;
    [(NFWalletPresentation *)self->_walletPresentation present];
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _invalidateWalletPreArmRecognizer];
  }
}

- (void)walletPrearmRecognizer:(id)a3 didFailToRecognizeForReason:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    [SBLockScreenBiometricAuthenticationCoordinator walletPrearmRecognizer:didFailToRecognizeForReason:];
    v6 = 0;
  }

  if (self->_walletPrearmRecognizer == v6)
  {
    v9 = v6;
    if (self->_presentingWalletInterface)
    {
      [SBLockScreenBiometricAuthenticationCoordinator walletPrearmRecognizer:didFailToRecognizeForReason:];
    }

    if (self->_state != 2)
    {
      [SBLockScreenBiometricAuthenticationCoordinator walletPrearmRecognizer:didFailToRecognizeForReason:];
    }

    v7 = NSStringFromWalletPrearmFailureRecognitionReason(a4);
    if (![(SBLockScreenBiometricAuthenticationCoordinator *)self isAutoUnlockingDisabled]&& (self->_didMatchBeforeWalletPrearmRecognizerTimeout || [(SBUIBiometricResource *)self->_biometricResource isFingerOn]))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wallet pre-arm failed to recognize for reason %@ but we matched before it failed to recognize or the finger is still on the sensor", v7];
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _setState:3 forReason:v8];
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wallet pre-arm failed to recognize for reason %@ - bioAutoUnlockingDisabledReasons: %@", v7, self->_disabledAutoUnlockAssertions];
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _resetStateForReason:v8];
    }

    [(SBLockScreenBiometricAuthenticationCoordinator *)self _invalidateWalletPreArmRecognizer];
    v6 = v9;
  }
}

- (BOOL)biometricUnlockBehavior:(id)a3 requestsFeedback:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBLockScreenBiometricAuthenticationCoordinator biometricUnlockBehavior:requestsFeedback:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SBLockScreenBiometricAuthenticationCoordinator biometricUnlockBehavior:requestsFeedback:];
LABEL_3:
  v9 = SBLogLockScreenBiometricCoordinator();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v6 succinctDescription];
    v17 = 138543618;
    v18 = v10;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Unlock behavior (%{public}@) requests feedback: %{public}@", &v17, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained biometricAuthenticationCoordinator:self requestsAuthenticationFeedback:v8];

  v13 = SBLogLockScreenBiometricCoordinator();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      LOWORD(v17) = 0;
      v15 = "Feedback request handled successfully.";
LABEL_10:
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, v15, &v17, 2u);
    }
  }

  else if (v14)
  {
    LOWORD(v17) = 0;
    v15 = "Feedback request was dropped and unhandled.";
    goto LABEL_10;
  }

  return v12;
}

- (BOOL)biometricUnlockBehavior:(id)a3 requestsUnlock:(id)a4 withFeedback:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBLockScreenBiometricAuthenticationCoordinator biometricUnlockBehavior:requestsUnlock:withFeedback:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [SBLockScreenBiometricAuthenticationCoordinator biometricUnlockBehavior:requestsUnlock:withFeedback:];
LABEL_3:
  if (![(SBLockScreenBiometricAuthenticationCoordinator *)self _isMatchingEffectivelyDisabled])
  {
    v25 = [v10 intent];
    if ((v25 & 0xFFFFFFFE) == 2)
    {
      state = self->_state;
      if (state == 2)
      {
        v27 = SBLogLockScreenBiometricCoordinator();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = [v9 succinctDescription];
          *buf = 138543362;
          v46 = v28;
          _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_INFO, "Unlock behavior (%{public}@) requests unlock attempt but we can't handle it right now because we're matching for PreArm.", buf, 0xCu);
        }

        v29 = [[_SBPendingMesaUnlockBehaviorUnlockRequest alloc] initWithBehavior:v9 request:v10 feedback:v11];
        [(SBLockScreenBiometricAuthenticationCoordinator *)self _pendUnlockRequest:v29];
      }

      else
      {
        if (state - 3 >= 2)
        {
          [SBLockScreenBiometricAuthenticationCoordinator biometricUnlockBehavior:requestsUnlock:withFeedback:];
        }

        v34 = SBLogLockScreenBiometricCoordinator();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = [v9 succinctDescription];
          *buf = 138543618;
          v46 = v35;
          v47 = 2112;
          v48 = v10;
          _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_INFO, "Unlock behavior (%{public}@) requests unlock attempt: %@", buf, 0x16u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v37 = [WeakRetained biometricAuthenticationCoordinator:self requestsUnlockWithIntent:v25];

        v21 = SBLogLockScreenBiometricCoordinator();
        v38 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
        if (!v37)
        {
          if (v38)
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "Unlock request failed.", buf, 2u);
          }

          goto LABEL_15;
        }

        if (v38)
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "Unlock request succeeded.", buf, 2u);
        }

        if (v11)
        {
          [(SBLockScreenBiometricAuthenticationCoordinator *)self biometricUnlockBehavior:v9 requestsFeedback:v11];
        }
      }
    }

    else
    {
      v31 = SBLogLockScreenBiometricCoordinator();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [v9 succinctDescription];
        *buf = 138543618;
        v46 = v32;
        v47 = 1024;
        LODWORD(v48) = v25;
        _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_INFO, "Denied unlock request from behavior (%{public}@) because it specifies unhandled intent: %d", buf, 0x12u);
      }
    }

    v30 = 1;
    goto LABEL_20;
  }

  if ((-[SBUIBiometricResource hasPearlSupport](self->_biometricResource, "hasPearlSupport") & 1) != 0 || (+[SBPlatformController sharedInstance](SBPlatformController, "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isInternalInstall], v12, !v13))
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SBLockScreenBiometricAuthenticationCoordinator.m" lineNumber:558 description:@"We shouldn't be getting unlock requests when matching is effectively disabled."];
  }

  else
  {
    v14 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v46 = self;
      v47 = 2114;
      v48 = v9;
      v49 = 2114;
      v50 = v10;
      v51 = 2114;
      v52 = v11;
      _os_log_error_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_ERROR, "We saw an unlock request when matching is effectively disabled, requesting diagnostics.\nself: %{public}@, behavior: %{public}@, request: %{public}@, feedback: %{public}@", buf, 0x2Au);
    }

    v15 = [(SBLockScreenBiometricAuthenticationCoordinator *)self acquireDisableUnlockAssertionForReason:@"Disagnostic reporting"];
    v16 = objc_alloc_init(SBDiagnosticRequestAlertItem);
    v17 = [MEMORY[0x277CCA8D8] mainBundle];
    v18 = [v17 localizedStringForKey:@"RADAR_REQUEST_MESSAGE_BODY_HOME_BUTTON" value:&stru_283094718 table:@"SpringBoard"];
    [(SBDiagnosticRequestAlertItem *)v16 setMessage:v18];

    v19 = [MEMORY[0x277CCA8D8] mainBundle];
    v20 = [v19 localizedStringForKey:@"RADAR_REQUEST_TITLE" value:&stru_283094718 table:@"SpringBoard"];
    [(SBDiagnosticRequestAlertItem *)v16 setTitle:v20];

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __102__SBLockScreenBiometricAuthenticationCoordinator_biometricUnlockBehavior_requestsUnlock_withFeedback___block_invoke;
    v41[3] = &unk_2783A8C18;
    v42 = v15;
    v21 = v15;
    [(SBDiagnosticRequestAlertItem *)v16 setCompletionBlock:v41];
    v22 = +[SBLockScreenManager sharedInstance];
    v43 = @"SBUILockOptionsUseScreenOffModeKey";
    v44 = MEMORY[0x277CBEC28];
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __102__SBLockScreenBiometricAuthenticationCoordinator_biometricUnlockBehavior_requestsUnlock_withFeedback___block_invoke_2;
    v39[3] = &unk_2783A9398;
    v40 = v16;
    v24 = v16;
    [v22 lockUIFromSource:1 withOptions:v23 completion:v39];
  }

LABEL_15:

  v30 = 0;
LABEL_20:

  return v30;
}

uint64_t __102__SBLockScreenBiometricAuthenticationCoordinator_biometricUnlockBehavior_requestsUnlock_withFeedback___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [MEMORY[0x277D67938] activateAlertItem:*(result + 32)];
  }

  return result;
}

- (id)acquireMatchingAssertionWithMode:(unint64_t)a3 reason:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277D67E80]);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __90__SBLockScreenBiometricAuthenticationCoordinator_acquireMatchingAssertionWithMode_reason___block_invoke;
  v13 = &unk_2783A9070;
  objc_copyWeak(&v14, &location);
  v8 = [v7 initWithMatchMode:a3 reason:v6 invalidationBlock:&v10];
  if (v8)
  {
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _addPasscodeMatchingAssertion:v8, v10, v11, v12, v13];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __90__SBLockScreenBiometricAuthenticationCoordinator_acquireMatchingAssertionWithMode_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v8 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removePasscodeMatchingAssertion:v6];
}

void __91__SBLockScreenBiometricAuthenticationCoordinator_contactlessInterfaceDidDismissFromSource___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"source: %d", *(a1 + 40)];
  [v1 _handlePassKitDismissalIfNecessaryWithReason:v2];
}

- (void)_handleIdentityMatchSuccess:(BOOL)a3
{
  v3 = a3;
  self->_matchedWithResult = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained biometricAuthenticationCoordinator:self handleIdentityMatchSuccess:v3];

  [(NSTimer *)self->_matchingAssertionInvalidationTimer fire];
  matchingAssertionInvalidationTimer = self->_matchingAssertionInvalidationTimer;
  self->_matchingAssertionInvalidationTimer = 0;
}

- (void)_setState:(unint64_t)a3 forReason:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  state = self->_state;
  if (state != a3)
  {
    self->_state = a3;
    v8 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_state - 1;
      if (v9 > 3)
      {
        v10 = @"Disabled";
      }

      else
      {
        v10 = off_2783B7F80[v9];
      }

      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Mesa state changed to [%{public}@] for reason: %{public}@", &v11, 0x16u);
    }

    [(SBLockScreenBiometricAuthenticationCoordinator *)self _updateMatchingForState:self->_state forReason:v6];
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _stateChangedFrom:state to:self->_state];
  }
}

- (void)_updateMatchingForState:(unint64_t)a3 forReason:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v22 = 0;
  [(SBLockScreenBiometricAuthenticationCoordinator *)self _stateWantsMatching:self->_state outMatchMode:&v22];
  v6 = SBLogLockScreenBiometricCoordinator();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSBUIBiometricMatchMode();
    *buf = 138543618;
    v24 = v7;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Mesa matching mode changed to [%{public}@] for reason: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained biometricAuthenticationCoordinatorShouldWaitToInvalidateMatchingAssertion:self];

  v10 = v22;
  if (v22 != self->_matchingWantedAssertionMode || !self->_matchingWantedAssertion)
  {
    if (v22)
    {
      v11 = 0;
    }

    else if (v9 && !self->_matchedWithResult)
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      [(BSInvalidatable *)self->_matchingWantedAssertion invalidate];
      v11 = 0;
      v10 = v22;
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__SBLockScreenBiometricAuthenticationCoordinator__updateMatchingForState_forReason___block_invoke;
    v21[3] = &unk_2783A8BC8;
    v21[4] = self;
    v21[5] = v10;
    v12 = MEMORY[0x223D6F7F0](v21);
    if (self->_matchingAssertionInvalidationTimer)
    {
      v13 = SBLogLockScreenBiometricCoordinator();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Clearing obsolete assertion invalidation timer", buf, 2u);
      }

      [(NSTimer *)self->_matchingAssertionInvalidationTimer invalidate];
      matchingAssertionInvalidationTimer = self->_matchingAssertionInvalidationTimer;
      self->_matchingAssertionInvalidationTimer = 0;
    }

    if (v11)
    {
      v15 = SBLogLockScreenBiometricCoordinator();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Creating assertion invalidation timer", buf, 2u);
      }

      v16 = MEMORY[0x277CBEBB8];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __84__SBLockScreenBiometricAuthenticationCoordinator__updateMatchingForState_forReason___block_invoke_223;
      v19[3] = &unk_2783AB578;
      v19[4] = self;
      v20 = v12;
      v17 = [v16 scheduledTimerWithTimeInterval:0 repeats:v19 block:1.5];
      v18 = self->_matchingAssertionInvalidationTimer;
      self->_matchingAssertionInvalidationTimer = v17;
    }

    else
    {
      v12[2](v12);
    }
  }
}

void __84__SBLockScreenBiometricAuthenticationCoordinator__updateMatchingForState_forReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 120) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v10 = *(v3 + 96);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 acquireMatchingAssertionWithMode:v2 reason:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 96);
  *(v8 + 96) = v7;

  [v10 invalidate];
  *(*(a1 + 32) + 104) = *(a1 + 40);
}

uint64_t __84__SBLockScreenBiometricAuthenticationCoordinator__updateMatchingForState_forReason___block_invoke_223(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 120) & 1) == 0)
  {
    v3 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromBOOL();
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Matching assertion invalidation timer fired before matched with result: %{public}@", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained biometricAuthenticationCoordinator:*(a1 + 32) handleIdentityMatchSuccess:0];

    v2 = *(a1 + 32);
  }

  [*(v2 + 96) invalidate];
  return (*(*(a1 + 40) + 16))();
}

- (void)_stateChangedFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 - 3 < 2)
  {
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _clearPendingUnlockRequest];
  }

  else if (a3)
  {
    if (a3 == 2)
    {
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _invalidateWalletPreArmRecognizer];
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _handlePassKitDismissalIfNecessaryWithReason:@"Cleanup making sure the UI is actually dismissed."];
    }
  }

  else
  {
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _createFingerDetectAssertion];
  }

  if (a4 <= 2)
  {
    if (a4 < 2)
    {
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _clearPendingUnlockRequest];
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _toggleAutoUnlockBehaviorEnabled:0];
      if (!a4)
      {

        [(SBLockScreenBiometricAuthenticationCoordinator *)self _clearFingerDetectAssertion];
      }

      return;
    }

    if (a4 != 2)
    {
      return;
    }

    v6 = self;
    v7 = 1;
    goto LABEL_18;
  }

  if (a4 != 3)
  {
    if (a4 != 4)
    {
      return;
    }

    v6 = self;
    v7 = 0;
LABEL_18:

    [(SBLockScreenBiometricAuthenticationCoordinator *)v6 _toggleAutoUnlockBehaviorEnabled:v7];
    return;
  }

  [(SBLockScreenBiometricAuthenticationCoordinator *)self _toggleAutoUnlockBehaviorEnabled:1];
  if (self->_pendingUnlockRequest)
  {
    v8 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      pendingUnlockRequest = self->_pendingUnlockRequest;
      v14 = 138412290;
      v15 = pendingUnlockRequest;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Replaying pending unlock request because now we're available for match unlocks: %@", &v14, 0xCu);
    }

    v10 = self->_pendingUnlockRequest;
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _clearPendingUnlockRequest];
    v11 = [(_SBPendingMesaUnlockBehaviorUnlockRequest *)v10 behavior];
    v12 = [(_SBPendingMesaUnlockBehaviorUnlockRequest *)v10 request];
    v13 = [(_SBPendingMesaUnlockBehaviorUnlockRequest *)v10 feedback];
    [(SBLockScreenBiometricAuthenticationCoordinator *)self biometricUnlockBehavior:v11 requestsUnlock:v12 withFeedback:v13];
  }
}

- (void)_setupPreArmRecognizerIfPossibleForReason:(id)a3
{
  v4 = a3;
  v5 = self->_state & 0xFFFFFFFFFFFFFFFELL;
  if ([(SBLockScreenBiometricAuthenticationCoordinator *)self _isWalletPreArmAllowed]&& v5 == 2)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - starting recognition for wallet pre-arm", v4];
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _setState:2 forReason:v6];

    if (!self->_walletPrearmRecognizer && !self->_presentingWalletInterface)
    {
      v7 = [[SBWalletPrearmRecognizer alloc] initWithDelegate:self];
      walletPrearmRecognizer = self->_walletPrearmRecognizer;
      self->_walletPrearmRecognizer = v7;

      [(SBWalletPrearmRecognizer *)self->_walletPrearmRecognizer startRecognizing];
    }
  }

  else
  {
    v9 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _setupPreArmRecognizerIfPossibleForReason:v9];
    }
  }
}

- (void)_pendUnlockRequest:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_state != 2)
  {
    [SBLockScreenBiometricAuthenticationCoordinator _pendUnlockRequest:?];
  }

  if (self->_pendingUnlockRequest != v5)
  {
    objc_storeStrong(&self->_pendingUnlockRequest, a3);
    v6 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Pended unlock request: %@", buf, 0xCu);
    }

    v7 = dispatch_time(0, 1000000000);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__SBLockScreenBiometricAuthenticationCoordinator__pendUnlockRequest___block_invoke;
    v8[3] = &unk_2783A92D8;
    v8[4] = self;
    v9 = v5;
    dispatch_after(v7, MEMORY[0x277D85CD0], v8);
  }
}

uint64_t __69__SBLockScreenBiometricAuthenticationCoordinator__pendUnlockRequest___block_invoke(uint64_t result)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 128) == *(result + 40))
  {
    v1 = result;
    v2 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(v1 + 32) + 128);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Dropping pended unlock request because it expired: %@", &v4, 0xCu);
    }

    return [*(v1 + 32) _clearPendingUnlockRequest];
  }

  return result;
}

- (void)_toggleAutoUnlockBehaviorEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBBiometricUnlockBehavior *)self->_autoUnlockBehavior biometricUnlockBehaviorDelegate];
  v6 = v5;
  v7 = !v3;
  if (v3 && !v5)
  {
    v8 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Enabling auto unlock behavior based on current state.", buf, 2u);
    }

    autoUnlockBehavior = self->_autoUnlockBehavior;
    v10 = self;
LABEL_12:
    [(SBBiometricUnlockBehavior *)autoUnlockBehavior setBiometricUnlockBehaviorDelegate:v10];
    goto LABEL_13;
  }

  if (!v5)
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    v11 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "Disabling auto unlock behavior based on current state.", v12, 2u);
    }

    autoUnlockBehavior = self->_autoUnlockBehavior;
    v10 = 0;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_clearPendingUnlockRequest
{
  pendingUnlockRequest = self->_pendingUnlockRequest;
  self->_pendingUnlockRequest = 0;
}

- (void)_invalidateWalletPreArmRecognizer
{
  self->_didMatchBeforeWalletPrearmRecognizerTimeout = 0;
  [(SBWalletPrearmRecognizer *)self->_walletPrearmRecognizer invalidate];
  walletPrearmRecognizer = self->_walletPrearmRecognizer;
  self->_walletPrearmRecognizer = 0;
}

- (BOOL)_stateWantsMatching:(unint64_t)a3 outMatchMode:(unint64_t *)a4
{
  if (a3 == 4)
  {
    if (self->_isAuthenticated)
    {
      v7 = 0;
    }

    else
    {
      v8 = [(NSMutableOrderedSet *)self->_activePasscodeMatchAssertions lastObject];
      v7 = [v8 matchMode];
    }

LABEL_18:
    LOBYTE(v6) = 1;
    if (!a4)
    {
      return v6;
    }

    goto LABEL_19;
  }

  if (a3 == 3)
  {
    if (self->_isAuthenticated)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3;
    }

    goto LABEL_18;
  }

  if (a3 != 2)
  {
    v7 = 0;
    LOBYTE(v6) = 0;
    if (!a4)
    {
      return v6;
    }

    goto LABEL_19;
  }

  v6 = [(SBUIBiometricResource *)self->_biometricResource hasEnrolledIdentities];
  if (!v6)
  {
    v7 = 0;
    if (!a4)
    {
      return v6;
    }

LABEL_19:
    *a4 = v7;
    return v6;
  }

  LOBYTE(v6) = 1;
  if (self->_isAuthenticated)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (a4)
  {
    goto LABEL_19;
  }

  return v6;
}

- (void)_addPasscodeMatchingAssertion:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (!v4)
  {
    [SBLockScreenBiometricAuthenticationCoordinator _addPasscodeMatchingAssertion:];
    v4 = 0;
  }

  [(NSMutableOrderedSet *)self->_activePasscodeMatchAssertions addObject:v4];
  if (![(SBLockScreenBiometricAuthenticationCoordinator *)self isUnlockingDisabled])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Passcode view is active and wants matching: %@", v6];
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _resetStateForReason:v5];
  }

  [(SBLockScreenBiometricAuthenticationCoordinator *)self _updateMatchingForState:self->_state forReason:@"Passcode frontmost added."];
  [(SBUIBiometricResource *)self->_biometricResource resumeMatchingForAssertion:self->_matchingWantedAssertion advisory:0];
}

- (void)_removePasscodeMatchingAssertion:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [SBLockScreenBiometricAuthenticationCoordinator _removePasscodeMatchingAssertion:];
    v4 = 0;
  }

  [(NSMutableOrderedSet *)self->_activePasscodeMatchAssertions removeObject:v4];
  if (![(SBLockScreenBiometricAuthenticationCoordinator *)self _hasActivePasscodeViews]&& self->_state == 4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"last passcode view matching wanted assertion relinquished: %@", v7];
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _resetStateForReason:v5];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"SBBiometricEventTimestampNotificationPasscodeCancelled" object:self];
  }

  [(SBLockScreenBiometricAuthenticationCoordinator *)self _updateMatchingForState:self->_state forReason:@"Passcode frontmost removed."];
}

- (void)_handlePassKitDismissalIfNecessaryWithReason:(id)a3
{
  v4 = a3;
  if (self->_presentingWalletInterface)
  {
    self->_presentingWalletInterface = 0;
    v6 = v4;
    [(SBLockScreenBiometricAuthenticationCoordinator *)self _invalidateWalletPreArmRecognizer];
    v4 = v6;
    if (self->_state == 2)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"wallet UI dismissed with reason: %@", v6];
      [(SBLockScreenBiometricAuthenticationCoordinator *)self _resetStateForReason:v5];
      [(SBUIBiometricResource *)self->_biometricResource refreshMatchMode];

      v4 = v6;
    }
  }
}

- (void)_createFingerDetectAssertion
{
  if (!self->_fingerDetectEnabledAssertion)
  {
    v4 = [(SBUIBiometricResource *)self->_biometricResource acquireFingerDetectionWantedAssertionForReason:@"MesaCoordinatorEnabled"];
    fingerDetectEnabledAssertion = self->_fingerDetectEnabledAssertion;
    self->_fingerDetectEnabledAssertion = v4;
  }
}

- (void)_clearFingerDetectAssertion
{
  fingerDetectEnabledAssertion = self->_fingerDetectEnabledAssertion;
  if (fingerDetectEnabledAssertion)
  {
    [(BSInvalidatable *)fingerDetectEnabledAssertion invalidate];
    v4 = self->_fingerDetectEnabledAssertion;
    self->_fingerDetectEnabledAssertion = 0;
  }
}

- (void)_walletPreArmDisabledDidChange:(id)a3
{
  if ([(SBWalletPreArmController *)self->_walletPreArmController isPreArmSuppressed])
  {
    v4 = @"All wallet pre-arm assertions have been removed";
  }

  else
  {
    v4 = @"Wallet pre-arm assertions exist";
  }

  [(SBLockScreenBiometricAuthenticationCoordinator *)self _resetStateForReason:v4];
}

- (SBLockScreenBiometricAuthenticationCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithBiometricResource:walletPreArmController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"biometricResource" object:? file:? lineNumber:? description:?];
}

- (void)_resetStateForReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Ignoring reset request because state wouldn't change for reason: %@", &v2, 0xCu);
}

- (void)walletPrearmRecognizerDidRecognize:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"recognizer" object:? file:? lineNumber:? description:?];
}

- (void)walletPrearmRecognizerDidRecognize:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)walletPrearmRecognizerDidRecognize:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)walletPrearmRecognizer:didFailToRecognizeForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"recognizer" object:? file:? lineNumber:? description:?];
}

- (void)walletPrearmRecognizer:didFailToRecognizeForReason:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)walletPrearmRecognizer:didFailToRecognizeForReason:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)biometricUnlockBehavior:requestsFeedback:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"behavior" object:? file:? lineNumber:? description:?];
}

- (void)biometricUnlockBehavior:requestsFeedback:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"feedback" object:? file:? lineNumber:? description:?];
}

- (void)biometricUnlockBehavior:requestsUnlock:withFeedback:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"behavior" object:? file:? lineNumber:? description:?];
}

- (void)biometricUnlockBehavior:requestsUnlock:withFeedback:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)biometricUnlockBehavior:requestsUnlock:withFeedback:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setupPreArmRecognizerIfPossibleForReason:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 67109376;
  v5[1] = [a1 _isWalletPreArmAllowed];
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "Not starting pre-arm recognizer because isWalletPreArmAllowed: %d, canTransitionToPreArm: %d", v5, 0xEu);
}

- (void)_pendUnlockRequest:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v4 = *a1;
  v5 = v2;
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v4 object:? file:? lineNumber:? description:?];
}

- (void)_addPasscodeMatchingAssertion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

- (void)_removePasscodeMatchingAssertion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

@end
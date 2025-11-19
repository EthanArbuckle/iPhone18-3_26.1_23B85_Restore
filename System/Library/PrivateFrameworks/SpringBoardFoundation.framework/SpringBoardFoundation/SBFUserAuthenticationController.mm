@interface SBFUserAuthenticationController
- (BOOL)_authenticateIfInGracePeriod;
- (BOOL)_isInBioUnlockState;
- (BOOL)_isInGracePeriodState;
- (BOOL)_isTemporarilyBlocked;
- (BOOL)_isUserAuthenticated;
- (BOOL)_isUserRequestedEraseEnabled;
- (BOOL)_performNilPasscodeCheck;
- (BOOL)_processAuthenticationRequest:(id)a3 responder:(id)a4;
- (BOOL)_shouldRevokeAuthenticationNow;
- (SBFUserAuthenticationController)initWithAssertionManager:(id)a3 policy:(id)a4 keybag:(id)a5 model:(id)a6;
- (double)_timeUntilUnblockedSinceReferenceDate;
- (id)_cachedLockStateExtended;
- (id)authenticationStatusProviderTreatingContinuityUnlockedAsUnlocked:(BOOL)a3;
- (id)createGracePeriodAssertionWithReason:(id)a3;
- (id)createKeybagUnlockAssertionWithReason:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)publicDescription;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_evaluateAuthenticationAttempt:(id)a3 outError:(id *)a4;
- (int64_t)_evaluateBiometricAttempt:(id)a3;
- (int64_t)_evaluatePasscodeAttempt:(id)a3 outError:(id *)a4;
- (void)_addAsFirstResponder:(id)a3;
- (void)_addAuthenticationAssertion:(id)a3;
- (void)_addPrivateAuthenticationObserver:(id)a3;
- (void)_authenticateIfInGracePeriod;
- (void)_clearBlockedState;
- (void)_clearUnblockTimer;
- (void)_handleFailedAuthentication:(id)a3 error:(id)a4 responder:(id)a5;
- (void)_handleSuccessfulAuthentication:(id)a3 responder:(id)a4;
- (void)_invalidateCachedPasscodeLockState;
- (void)_isUserAuthenticated;
- (void)_noteDeviceLockStateMayHaveChangedForExternalReasons;
- (void)_notifyAboutTemporaryBlockStatusChanged;
- (void)_notifyClientsOfAuthenticationResult:(int64_t)a3 forRequest:(id)a4 error:(id)a5 withResponder:(id)a6;
- (void)_refreshModelCacheIfNeeded;
- (void)_removeAuthResponder:(id)a3;
- (void)_removeAuthenticationAssertion:(id)a3;
- (void)_removePrivateAuthenticationObserver:(id)a3;
- (void)_revokeAuthenticationImmediately:(BOOL)a3 forPublicReason:(id)a4;
- (void)_scheduleUnblockTimer;
- (void)_setAuthState:(int64_t)a3;
- (void)_setModel:(id)a3;
- (void)_setupPolicy:(id)a3;
- (void)_setup_runLoopObserverIfNecessary;
- (void)_unblockTimerFired;
- (void)_uncachePasscodeIfNecessary;
- (void)_updateAuthenticationStateAndDateForLockState:(id)a3;
- (void)_updateAuthenticationStateImmediately:(BOOL)a3 forPublicReason:(id)a4;
- (void)_updateSecureModeIfNecessaryForNewAuthState;
- (void)dealloc;
- (void)deviceLockStateMayHaveChangedForModel:(id)a3;
- (void)keybag:(id)a3 extendedStateDidChange:(id)a4;
- (void)processAuthenticationRequest:(id)a3;
- (void)revokeAuthenticationIfNecessaryForPublicReason:(id)a3;
- (void)revokeAuthenticationImmediatelyForPublicReason:(id)a3;
- (void)revokeAuthenticationImmediatelyIfNecessaryForPublicReason:(id)a3;
@end

@implementation SBFUserAuthenticationController

- (BOOL)_isUserAuthenticated
{
  BSDispatchQueueAssertMain();
  if (_isUserAuthenticated___reentryGuard == 1)
  {
    [(SBFUserAuthenticationController *)a2 _isUserAuthenticated];
  }

  _isUserAuthenticated___reentryGuard = 1;
  if (self->_cachedAuthFlag == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_authenticationState == 2)
    {
      if (self->_transientAuthCheckingAssertion)
      {
        [(SBFUserAuthenticationController *)a2 _isUserAuthenticated];
      }

      v4 = [(SBFUserAuthenticationController *)self createGracePeriodAssertionWithReason:@"Checking if passcode locked"];
      transientAuthCheckingAssertion = self->_transientAuthCheckingAssertion;
      self->_transientAuthCheckingAssertion = v4;

      [(SBFAuthenticationAssertion *)self->_transientAuthCheckingAssertion activate];
      [(SBFAuthenticationAssertion *)self->_transientAuthCheckingAssertion isValid];
      self->_cachedAuthFlag = BSSettingFlagForBool();
    }

    else
    {
      v6 = [(SBFUserAuthenticationController *)self _cachedLockStateExtended];
      [v6 isEffectivelyLocked];
      self->_cachedAuthFlag = BSSettingFlagForBool();
    }

    IsYes = BSSettingFlagIsYes();
    v8 = SBLogAuthenticationController();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (IsYes)
    {
      if (v9)
      {
        [SBFUserAuthenticationController _isUserAuthenticated];
      }
    }

    else if (v9)
    {
      [SBFUserAuthenticationController _isUserAuthenticated];
    }

    [(SBFUserAuthenticationController *)self _setup_runLoopObserverIfNecessary];
  }

  _isUserAuthenticated___reentryGuard = 0;
  return BSSettingFlagIsYes();
}

void __68__SBFUserAuthenticationController__setup_runLoopObserverIfNecessary__block_invoke(uint64_t a1)
{
  v2 = SBLogAuthenticationController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__SBFUserAuthenticationController__setup_runLoopObserverIfNecessary__block_invoke_cold_1();
  }

  [*(a1 + 32) _invalidateCachedPasscodeLockState];
  Main = CFRunLoopGetMain();
  CFRunLoopRemoveObserver(Main, *(*(a1 + 32) + 88), *MEMORY[0x1E695E8D0]);
  CFRelease(*(*(a1 + 32) + 88));
  *(*(a1 + 32) + 88) = 0;
}

- (void)_invalidateCachedPasscodeLockState
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1BEA11000, a2, OS_LOG_TYPE_DEBUG, "Finished invalidated cached authentication state after %ld loops.", &v2, 0xCu);
}

- (id)_cachedLockStateExtended
{
  if (!self->_cachedExtendedState)
  {
    v3 = [(SBFMobileKeyBag *)self->_keybag extendedState];
    cachedExtendedState = self->_cachedExtendedState;
    self->_cachedExtendedState = v3;
  }

  [(SBFUserAuthenticationController *)self _setup_runLoopObserverIfNecessary];
  v5 = self->_cachedExtendedState;

  return v5;
}

- (BOOL)_isTemporarilyBlocked
{
  [(SBFUserAuthenticationController *)self _refreshModelCacheIfNeeded];
  model = self->_model;

  return [(SBFUserAuthenticationModel *)model isTemporarilyBlocked];
}

- (void)_setup_runLoopObserverIfNecessary
{
  if (!self->_runLoopObserver)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = SBLogAuthenticationController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBFUserAuthenticationController _setup_runLoopObserverIfNecessary];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SBFUserAuthenticationController__setup_runLoopObserverIfNecessary__block_invoke;
    block[3] = &unk_1E807F710;
    block[4] = self;
    self->_runLoopObserver = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0x7FFFFFFFLL, block);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, self->_runLoopObserver, *MEMORY[0x1E695E8D0]);
  }
}

- (void)_refreshModelCacheIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_unblockTimer && (objc_opt_respondsToSelector() & 1) != 0 && ([(SBFUserAuthenticationModel *)self->_model isTemporarilyBlocked]& 1) == 0)
  {
    [(SBFUserAuthenticationModel *)self->_model refreshBlockedState];
    [(SBFUserAuthenticationController *)self _scheduleUnblockTimer];
    v3 = SBLogAuthenticationController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = MEMORY[0x1BFB4C500]([(SBFUserAuthenticationModel *)self->_model isTemporarilyBlocked]);
      [(SBFUserAuthenticationModel *)self->_model timeUntilUnblockedSinceReferenceDate];
      v6 = v5;
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *buf = 138543874;
      v10 = v4;
      v11 = 2048;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_INFO, "Refreshed model cache due to unfired unblock timer while nominally unblocked. isTemporarilyBlocked = %{public}@ timeUntilUnblockedSinceReferenceDate = %f timeIntervalSinceReferenceDate = %f", buf, 0x20u);
    }

    if (!self->_unblockTimer)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__SBFUserAuthenticationController__refreshModelCacheIfNeeded__block_invoke;
      block[3] = &unk_1E807F178;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_notifyAboutTemporaryBlockStatusChanged
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_observers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 temporaryBlockStatusChanged];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_scheduleUnblockTimer
{
  [(SBFUserAuthenticationController *)self _clearUnblockTimer];
  if ([(SBFUserAuthenticationModel *)self->_model isTemporarilyBlocked])
  {
    v3 = SBLogAuthenticationController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, "Starting temporary blocked timer", v10, 2u);
    }

    v4 = MEMORY[0x1E695DF00];
    [(SBFUserAuthenticationModel *)self->_model timeUntilUnblockedSinceReferenceDate];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v6 = [objc_alloc(MEMORY[0x1E69BDC30]) initWithFireDate:v5 serviceIdentifier:@"SBUnblockTimer" target:self selector:sel__unblockTimerFired userInfo:0];
    unblockTimer = self->_unblockTimer;
    self->_unblockTimer = v6;

    [(PCPersistentTimer *)self->_unblockTimer setMinimumEarlyFireProportion:1.0];
    v8 = self->_unblockTimer;
    v9 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(PCPersistentTimer *)v8 scheduleInRunLoop:v9];
  }
}

- (void)_clearUnblockTimer
{
  if (self->_unblockTimer)
  {
    v3 = SBLogAuthenticationController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, "Cleared temporary blocked timer", v5, 2u);
    }

    [(PCPersistentTimer *)self->_unblockTimer invalidate];
    unblockTimer = self->_unblockTimer;
    self->_unblockTimer = 0;
  }
}

- (void)_updateSecureModeIfNecessaryForNewAuthState
{
  if ([(SBFAuthenticationPolicy *)self->_policy usesSecureMode])
  {
    authenticationState = self->_authenticationState;
    if (authenticationState != 2)
    {
      v4 = (authenticationState == 0) & ([(BSCompoundAssertion *)self->_secureDisplayDeferralAssertions isActive]^ 1);
      secureDisplayCoordinator = self->_secureDisplayCoordinator;

      [(SBFSecureDisplayCoordinator *)secureDisplayCoordinator setSecureMode:v4 postNotification:1];
    }
  }
}

- (SBFUserAuthenticationController)initWithAssertionManager:(id)a3 policy:(id)a4 keybag:(id)a5 model:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v38.receiver = self;
  v38.super_class = SBFUserAuthenticationController;
  v15 = [(SBFUserAuthenticationController *)&v38 init];
  if (!v15)
  {
    goto LABEL_22;
  }

  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = +[SBFMobileKeyBag sharedInstance];
  }

  keybag = v15->_keybag;
  v15->_keybag = v16;

  [(SBFMobileKeyBag *)v15->_keybag addObserver:v15];
  if (!v14)
  {
    if (MGGetBoolAnswer())
    {
      v18 = [[SBFUserAuthenticationModelSEP alloc] initWithKeyBag:v15->_keybag];
    }

    else
    {
      v18 = objc_alloc_init(SBFUserAuthenticationModelJournaledDefaults);
    }

    v14 = v18;
  }

  [(SBFUserAuthenticationController *)v15 _setModel:v14];
  objc_storeStrong(&v15->_assertionManager, a3);
  objc_storeStrong(&v15->_policy, a4);
  if ([(SBFAuthenticationPolicy *)v15->_policy usesSecureMode])
  {
    v19 = objc_alloc_init(SBFSecureDisplayCoordinator);
    secureDisplayCoordinator = v15->_secureDisplayCoordinator;
    v15->_secureDisplayCoordinator = v19;
  }

  v21 = [(SBFMobileKeyBag *)v15->_keybag state];
  v22 = [v21 lockState];
  v15->_cachedAuthFlag = 0x7FFFFFFFFFFFFFFFLL;
  v15->_authenticationState = 1;
  if ([(SBFMobileKeyBag *)v15->_keybag hasPasscodeSet])
  {
    if (v22 == 2)
    {
      v23 = 0;
    }

    else
    {
      if (v22 != 1)
      {
LABEL_18:
        v24 = [MEMORY[0x1E695DF00] date];
        lastRevokedAuthenticationDate = v15->_lastRevokedAuthenticationDate;
        v15->_lastRevokedAuthenticationDate = v24;

        goto LABEL_19;
      }

      v23 = 2;
    }

    v15->_authenticationState = v23;
    goto LABEL_18;
  }

LABEL_19:
  [(SBFUserAuthenticationController *)v15 _setupPolicy:v12];
  [(SBFUserAuthenticationController *)v15 _scheduleUnblockTimer];
  objc_initWeak(&location, v15);
  v26 = MEMORY[0x1E698E658];
  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __80__SBFUserAuthenticationController_initWithAssertionManager_policy_keybag_model___block_invoke;
  v35 = &unk_1E807F6E8;
  objc_copyWeak(&v36, &location);
  v27 = [v26 assertionWithIdentifier:@"secureDisplayDeferral" stateDidChangeHandler:&v32];
  secureDisplayDeferralAssertions = v15->_secureDisplayDeferralAssertions;
  v15->_secureDisplayDeferralAssertions = v27;

  v29 = SBLogAuthenticationController();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [(SBFUserAuthenticationController *)v15 publicDescription:v32];
    *buf = 138543362;
    v40 = v30;
    _os_log_impl(&dword_1BEA11000, v29, OS_LOG_TYPE_DEFAULT, "UserAuthenticationController initialized: %{public}@", buf, 0xCu);
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

LABEL_22:
  return v15;
}

void __80__SBFUserAuthenticationController_initWithAssertionManager_policy_keybag_model___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSecureModeIfNecessaryForNewAuthState];
}

- (void)dealloc
{
  [(SBFMobileKeyBag *)self->_keybag removeObserver:self];
  [(SBFUserAuthenticationModel *)self->_model synchronize];
  [(SBFUserAuthenticationController *)self _clearUnblockTimer];
  v3.receiver = self;
  v3.super_class = SBFUserAuthenticationController;
  [(SBFUserAuthenticationController *)&v3 dealloc];
}

- (void)processAuthenticationRequest:(id)a3
{
  responders = self->_responders;
  v5 = a3;
  v6 = [(NSMutableArray *)responders firstObject];
  [(SBFUserAuthenticationController *)self _processAuthenticationRequest:v5 responder:v6];
}

- (id)createKeybagUnlockAssertionWithReason:(id)a3
{
  v4 = a3;
  v5 = [[SBFAuthenticationAssertion alloc] initWithIdentifier:v4 type:1 withController:self];

  return v5;
}

- (id)createGracePeriodAssertionWithReason:(id)a3
{
  v4 = a3;
  v5 = [[SBFAuthenticationAssertion alloc] initWithIdentifier:v4 type:2 withController:self];

  return v5;
}

- (id)authenticationStatusProviderTreatingContinuityUnlockedAsUnlocked:(BOOL)a3
{
  if (a3)
  {
    v3 = [[_SBFContinuityUnlockAuthenticationStatusProvider alloc] initWithMobileKeyBag:self->_keybag underlyingProvider:self];
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (void)revokeAuthenticationImmediatelyForPublicReason:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogAuthenticationController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_INFO, "Revoke authentication immediately requested for reason: %{public}@", &v6, 0xCu);
  }

  [(SBFUserAuthenticationController *)self _revokeAuthenticationImmediately:1 forPublicReason:v4];
}

- (void)revokeAuthenticationImmediatelyIfNecessaryForPublicReason:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogAuthenticationController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_INFO, "Revoke authentication immediately if necessary requested for reason: %{public}@", &v6, 0xCu);
  }

  [(SBFUserAuthenticationController *)self _updateAuthenticationStateImmediately:1 forPublicReason:v4];
}

- (void)revokeAuthenticationIfNecessaryForPublicReason:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogAuthenticationController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_INFO, "Revoke authentication requested for reason: %{public}@", &v6, 0xCu);
  }

  [(SBFUserAuthenticationController *)self _updateAuthenticationStateImmediately:0 forPublicReason:v4];
}

- (void)deviceLockStateMayHaveChangedForModel:(id)a3
{
  [(SBFUserAuthenticationController *)self _notifyAboutTemporaryBlockStatusChanged];

  [(SBFUserAuthenticationController *)self _scheduleUnblockTimer];
}

- (id)publicDescription
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  authenticationState = self->_authenticationState;
  if (authenticationState > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E807F770[authenticationState];
  }

  v7 = [v3 appendObject:v6 withName:@"authState"];
  v8 = [v4 appendBool:-[SBFUserAuthenticationController hasPasscodeSet](self withName:{"hasPasscodeSet"), @"hasPasscodeSet"}];
  if ([(SBFUserAuthenticationController *)self _isTemporarilyBlocked])
  {
    v9 = [v4 appendBool:1 withName:@"temporarilyBlocked"];
  }

  if ([(SBFUserAuthenticationController *)self _isPermanentlyBlocked])
  {
    v10 = [v4 appendBool:1 withName:@"permanentlyBlocked"];
  }

  if ([(SBFUserAuthenticationController *)self _isUserRequestedEraseEnabled])
  {
    v11 = [v4 appendBool:1 withName:@"userRequestedEraseEnabled"];
  }

  if (self->_lastRevokedAuthenticationDate)
  {
    v12 = [MEMORY[0x1E698E670] sharedInstance];
    v13 = [v12 formatDateAsLongYMDHMSZWithDate:self->_lastRevokedAuthenticationDate];
    v14 = [v4 appendObject:v13 withName:@"revokedAuthDate"];
  }

  v15 = [MEMORY[0x1E698E680] builderWithObject:self->_model];
  v16 = [v15 build];
  v17 = [v4 appendObject:v16 withName:@"model"];

  v18 = [v4 build];

  return v18;
}

- (id)succinctDescription
{
  v2 = [(SBFUserAuthenticationController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  authenticationState = self->_authenticationState;
  if (authenticationState > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E807F770[authenticationState];
  }

  v7 = [v3 appendObject:v6 withName:@"authState"];
  v8 = [v4 appendBool:-[SBFUserAuthenticationController hasPasscodeSet](self withName:{"hasPasscodeSet"), @"passcodeSet"}];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFUserAuthenticationController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBFUserAuthenticationController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__SBFUserAuthenticationController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E807F290;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __73__SBFUserAuthenticationController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 16) withName:@"responders" skipIfEmpty:0];
  v2 = *(a1 + 40);
  if (*(v2 + 48))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E698E670] sharedInstance];
    v5 = [v4 formatDateAsLongYMDHMSZWithDate:*(*(a1 + 40) + 48)];
    v6 = [v3 appendObject:v5 withName:@"revokedAuthDate"];

    v2 = *(a1 + 40);
  }

  v7 = [*(a1 + 32) appendObject:*(v2 + 56) withName:@"assertManager"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 128) withName:@"secureDisplayDeferralAssertions"];
}

void __66__SBFUserAuthenticationController_keybagDidUnlockForTheFirstTime___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"SBFUserAuthenticatedForFirstTimeNotification" object:0 userInfo:0];
}

- (void)keybag:(id)a3 extendedStateDidChange:(id)a4
{
  v5 = a3;
  v4 = v5;
  BSDispatchMain();
}

void __65__SBFUserAuthenticationController_keybag_extendedStateDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) extendedState];
  [v1 _updateAuthenticationStateAndDateForLockState:v2];
}

- (void)_setModel:(id)a3
{
  v5 = a3;
  p_model = &self->_model;
  if (self->_model != v5)
  {
    v7 = v5;
    objc_storeStrong(p_model, a3);
    p_model = [(SBFUserAuthenticationModel *)self->_model setDelegate:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_model, v5);
}

- (void)_setupPolicy:(id)a3
{
  v4 = a3;
  v5 = self->_policy;
  if ([(SBFAuthenticationPolicy *)v5 shouldClearBlockStateOnSync])
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __48__SBFUserAuthenticationController__setupPolicy___block_invoke;
    v11 = &unk_1E807F470;
    objc_copyWeak(&v12, &location);
    v7 = [v6 addObserverForName:@"kSBSyncSessionBegan" object:0 queue:0 usingBlock:&v8];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [v6 addObserver:self selector:sel__uncachePasscodeIfNecessary name:@"SBSetupBuddyCompletedNotification" object:{0, v8, v9, v10, v11}];
    }

    if ([v4 usesSecureMode] && !-[SBFUserAuthenticationController isAuthenticatedCached](self, "isAuthenticatedCached"))
    {
      [(SBFSecureDisplayCoordinator *)self->_secureDisplayCoordinator setSecureMode:1 postNotification:0];
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __48__SBFUserAuthenticationController__setupPolicy___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearBlockedState];
}

- (void)_uncachePasscodeIfNecessary
{
  v2 = self->_policy;
  if (objc_opt_respondsToSelector())
  {
    [(SBFAuthenticationPolicy *)v2 clearPasscodeCache];
  }
}

- (void)_addAuthenticationAssertion:(id)a3
{
  assertionManager = self->_assertionManager;
  v5 = a3;
  [(SBFAuthenticationAssertionManager *)assertionManager addAssertion:v5];
  v6 = [v5 type];

  if (v6 == 1 && self->_authenticationState != 1)
  {
    [(SBFUserAuthenticationController *)self _authenticateIfInGracePeriod];

    [(SBFUserAuthenticationController *)self _updateAuthenticationStateForPublicReason:@"add authentication assertion for preventLock while locked"];
  }
}

- (void)_removeAuthenticationAssertion:(id)a3
{
  v6 = a3;
  [(SBFAuthenticationAssertionManager *)self->_assertionManager removeAssertion:?];
  if (![(SBFAuthenticationAssertionManager *)self->_assertionManager hasActiveAssertions])
  {
    v4 = SBLogAuthenticationController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"remove authentication assertion: %@", v6];
      [(SBFUserAuthenticationController *)self _updateAuthenticationStateForPublicReason:v5];
    }

    else
    {
      [(SBFUserAuthenticationController *)self _updateAuthenticationStateForPublicReason:@"remove authentication assertion"];
    }
  }
}

- (void)_addPrivateAuthenticationObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    v4 = [(NSHashTable *)observers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_removePrivateAuthenticationObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (BOOL)_isInBioUnlockState
{
  v2 = [(SBFUserAuthenticationController *)self _cachedLockStateExtended];
  v3 = [v2 lockState] == 7;

  return v3;
}

- (BOOL)_isInGracePeriodState
{
  v2 = [(SBFUserAuthenticationController *)self _cachedLockStateExtended];
  v3 = [v2 lockState] == 5;

  return v3;
}

- (void)_setAuthState:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  authenticationState = self->_authenticationState;
  if (authenticationState != a3)
  {
    v6 = SBLogAuthenticationController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (a3 > 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = off_1E807F770[a3];
      }

      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "State changed to %{public}@", buf, 0xCu);
    }

    self->_authenticationState = a3;
    [(SBFUserAuthenticationController *)self _invalidateCachedPasscodeLockState];
    [(SBFUserAuthenticationController *)self _notifyAboutTemporaryBlockStatusChanged];
    [(SBFUserAuthenticationController *)self _updateSecureModeIfNecessaryForNewAuthState];
    if (a3 >= 2)
    {
      if (a3 == 2)
      {
        v13 = [MEMORY[0x1E695DF00] date];
        lastRevokedAuthenticationDate = self->_lastRevokedAuthenticationDate;
        self->_lastRevokedAuthenticationDate = v13;
      }
    }

    else
    {
      v8 = SBLogAuthenticationController();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [SBFUserAuthenticationController _setAuthState:];
      }

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{authenticationState != 0, @"SBFUserAuthenticationStateWasAuthenticatedKey"}];
      v16 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [v9 postNotificationName:@"SBFUserAuthenticationStateDidChangeNotification" object:0 userInfo:v11];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.DeviceLockStatusChanged", 0, 0, 0);
    }
  }
}

- (void)_updateAuthenticationStateAndDateForLockState:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 lockState];
  v6 = [v4 isEffectivelyLocked];
  if (v6)
  {
    v7 = 0;
LABEL_6:
    [(SBFUserAuthenticationController *)self _setAuthState:v7];
    goto LABEL_7;
  }

  if (v5 <= 7 && ((1 << v5) & 0x89) != 0)
  {
    v7 = 1;
    goto LABEL_6;
  }

LABEL_7:
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 extendedKeybagLockStateChanged:{v6, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBFUserAuthenticationModel *)self->_model noteNewMkbDeviceLockState:v4];
  }
}

- (void)_updateAuthenticationStateImmediately:(BOOL)a3 forPublicReason:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (![(SBFUserAuthenticationController *)self hasPasscodeSet])
  {
    v7 = [MEMORY[0x1E69ADFB8] sharedConnection];
    [v7 recomputeUserComplianceWarning];
  }

  if (-[SBFUserAuthenticationController hasPasscodeSet](self, "hasPasscodeSet") && !-[SBFAuthenticationAssertionManager hasActiveAssertions](self->_assertionManager, "hasActiveAssertions") && -[SBFUserAuthenticationController _shouldRevokeAuthenticationNow](self, "_shouldRevokeAuthenticationNow") && (-[SBFUserAuthenticationController authenticationStatusProviderTreatingContinuityUnlockedAsUnlocked:](self, "authenticationStatusProviderTreatingContinuityUnlockedAsUnlocked:", v4), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isAuthenticated], v8, v9))
  {
    v10 = SBLogAuthenticationController();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = &stru_1F3D19FF0;
      if (v4)
      {
        v11 = @"immediately";
      }

      v13 = 138412546;
      v14 = v11;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_1BEA11000, v10, OS_LOG_TYPE_DEFAULT, "Update authentication state - needs authentication revoked; revoking %@ for reason: %{public}@", &v13, 0x16u);
    }

    [(SBFUserAuthenticationController *)self _revokeAuthenticationImmediately:v4 forPublicReason:v6];
  }

  else
  {
    v12 = SBLogAuthenticationController();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SBFUserAuthenticationController _updateAuthenticationStateImmediately:forPublicReason:];
    }
  }
}

- (BOOL)_shouldRevokeAuthenticationNow
{
  v2 = [(SBFAuthenticationPolicy *)self->_policy allowAuthenticationRevocation];
  if (v2)
  {
    v3 = SBLogAuthenticationController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_INFO, "Authentication policy wants authentication revoked.", v5, 2u);
    }
  }

  return v2;
}

- (void)_revokeAuthenticationImmediately:(BOOL)a3 forPublicReason:(id)a4
{
  v5 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ([(SBFUserAuthenticationController *)self hasPasscodeSet])
  {
    v8 = [(SBFUserAuthenticationController *)self authenticationStatusProviderTreatingContinuityUnlockedAsUnlocked:v5];
    v9 = [v8 isAuthenticated];

    if (v9)
    {
      v10 = SBLogAuthenticationController();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = &stru_1F3D19FF0;
        if (v5)
        {
          v12 = @"immediately";
        }

        else
        {
          v12 = &stru_1F3D19FF0;
        }

        v13 = SBLogAuthenticationController();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if (v14)
        {
          v15 = MEMORY[0x1E696AEC0];
          v4 = [MEMORY[0x1E696AF00] callStackSymbols];
          v11 = [v15 stringWithFormat:@", caller: %@", v4];
        }

        *buf = 138543874;
        v21 = v12;
        v22 = 2114;
        v23 = v7;
        v24 = 2114;
        v25 = v11;
        _os_log_impl(&dword_1BEA11000, v10, OS_LOG_TYPE_DEFAULT, "Revoking authentication%{public}@ - reason: %{public}@ %{public}@", buf, 0x20u);
        if (v14)
        {
        }
      }

      authenticationState = self->_authenticationState;
      [(SBFMobileKeyBag *)self->_keybag lockSkippingGracePeriod:v5];
      [(SBFUserAuthenticationController *)self _invalidateCachedPasscodeLockState];
      if (authenticationState)
      {
        [(SBFUserAuthenticationController *)self _setAuthState:2];
      }

      else
      {
        v17 = SBLogAuthenticationController();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [SBFUserAuthenticationController _revokeAuthenticationImmediately:forPublicReason:];
        }
      }

      v18 = [MEMORY[0x1E695DF00] date];
      lastRevokedAuthenticationDate = self->_lastRevokedAuthenticationDate;
      self->_lastRevokedAuthenticationDate = v18;
    }
  }
}

- (void)_addAsFirstResponder:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_responders)
    {
      [(SBFUserAuthenticationController *)self _removeAuthResponder:v4];
      [(NSMutableArray *)self->_responders insertObject:v4 atIndex:0];
    }

    else
    {
      v5 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
      responders = self->_responders;
      self->_responders = v5;
    }

    v7 = SBLogAuthenticationRequests();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SBFUserAuthenticationController _addAsFirstResponder:?];
    }
  }
}

- (void)_removeAuthResponder:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = SBLogAuthenticationRequests();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBFUserAuthenticationController _removeAuthResponder:?];
    }

    [(NSMutableArray *)self->_responders removeObject:v4];
  }
}

- (BOOL)_processAuthenticationRequest:(id)a3 responder:(id)a4
{
  v11 = 0;
  v6 = a4;
  v7 = a3;
  v8 = [(SBFUserAuthenticationController *)self _evaluateAuthenticationAttempt:v7 outError:&v11];
  v9 = v11;
  [(SBFUserAuthenticationController *)self _notifyClientsOfAuthenticationResult:v8 forRequest:v7 error:v9 withResponder:v6];

  LOBYTE(v7) = [(SBFUserAuthenticationController *)self _BOOLForAuthenticationResult:v8];
  return v7;
}

- (void)_notifyClientsOfAuthenticationResult:(int64_t)a3 forRequest:(id)a4 error:(id)a5 withResponder:(id)a6
{
  v21[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ((a3 - 1) > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = off_1E807F788[a3 - 1];
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  v20[0] = @"SBFUserAuthenticationRequestCompletedAuthenticationTypeKey";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "type")}];
  v20[1] = @"SBFUserAuthenticationRequestCompletedResultKey";
  v21[0] = v15;
  v21[1] = v13;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v14 postNotificationName:@"SBFUserAuthenticationRequestCompletedNotification" object:self userInfo:v16];

  if (v12 || ([v10 handler], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    switch(a3)
    {
      case 1:
        [(SBFUserAuthenticationController *)self _handleFailedAuthentication:v10 error:v11 responder:v12];
        break;
      case 3:
        [(SBFUserAuthenticationController *)self _handleInvalidAuthentication:v10 responder:v12];
        break;
      case 2:
        [(SBFUserAuthenticationController *)self _handleSuccessfulAuthentication:v10 responder:v12];
        break;
    }

    v18 = [v10 handler];

    if (v18)
    {
      v19 = [v10 handler];
      (v19)[2](v19, [(SBFUserAuthenticationController *)self _BOOLForAuthenticationResult:a3]);
    }
  }
}

- (void)_handleSuccessfulAuthentication:(id)a3 responder:(id)a4
{
  v6 = a3;
  model = self->_model;
  v8 = a4;
  [(SBFUserAuthenticationModel *)model notePasscodeUnlockSucceeded];
  [(SBFUserAuthenticationController *)self _scheduleUnblockTimer];
  if ([v6 type] == 1 && !objc_msgSend(v6, "source"))
  {
    v9 = self->_policy;
    if (objc_opt_respondsToSelector())
    {
      v10 = [v6 passcode];
      [(SBFAuthenticationPolicy *)v9 cachePasscode:v10];
    }
  }

  [(SBFUserAuthenticationController *)self _setAuthState:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__SBFUserAuthenticationController__handleSuccessfulAuthentication_responder___block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  [v8 handleSuccessfulAuthenticationRequest:v6];
}

- (void)_handleFailedAuthentication:(id)a3 error:(id)a4 responder:(id)a5
{
  v11 = a4;
  model = self->_model;
  v9 = a5;
  v10 = a3;
  [(SBFUserAuthenticationModel *)model notePasscodeUnlockFailedWithError:v11];
  if (objc_opt_respondsToSelector())
  {
    [(SBFAuthenticationPolicy *)self->_policy passcodeAuthenticationFailedWithError:v11];
  }

  [(SBFUserAuthenticationController *)self _scheduleUnblockTimer];
  [v9 handleFailedAuthenticationRequest:v10 error:v11];
}

- (BOOL)_performNilPasscodeCheck
{
  v3 = [[SBFMobileKeyBagUnlockOptions alloc] initWithPasscode:0];
  LOBYTE(self) = [(SBFMobileKeyBag *)self->_keybag unlockWithOptions:v3 error:0];

  return self;
}

- (BOOL)_authenticateIfInGracePeriod
{
  authenticationState = self->_authenticationState;
  if (authenticationState != 2)
  {
    return authenticationState == 1;
  }

  if ([(SBFUserAuthenticationController *)self _isInGracePeriodState]&& [(SBFUserAuthenticationController *)self _performNilPasscodeCheck])
  {
    v6 = 1;
    [(SBFUserAuthenticationController *)self _setAuthState:1];
    result = 1;
    if (self->_authenticationState == 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  v6 = 0;
  result = 0;
  if (self->_authenticationState == 1)
  {
LABEL_6:
    [(SBFUserAuthenticationController *)a2 _authenticateIfInGracePeriod];
    return v6;
  }

  return result;
}

- (int64_t)_evaluateAuthenticationAttempt:(id)a3 outError:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 type];
  if (v7 == 2)
  {
    v8 = [(SBFUserAuthenticationController *)self _evaluateBiometricAttempt:v6];
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v8 = [(SBFUserAuthenticationController *)self _evaluatePasscodeAttempt:v6 outError:a4];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 3;
LABEL_7:
  v10 = SBLogAuthenticationRequests();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1BFB4C500](v9 != 0);
    v12 = [v6 publicDescription];
    v14 = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_1BEA11000, v10, OS_LOG_TYPE_DEFAULT, "Processed authentication request (success=%{public}@): %{public}@", &v14, 0x16u);
  }

  return v9;
}

- (int64_t)_evaluatePasscodeAttempt:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [v6 source] == 0;
  v8 = [v6 passcode];
  v9 = v8;
  if (v8 && [v8 length])
  {
    v10 = [(SBFUserAuthenticationController *)self hasPasscodeSet];
    v11 = [(SBFUserAuthenticationController *)self _isPermanentlyBlocked]|| [(SBFUserAuthenticationController *)self _isTemporarilyBlocked];
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__1;
    v36 = __Block_byref_object_dispose__1;
    v37 = 0;
    model = self->_model;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __69__SBFUserAuthenticationController__evaluatePasscodeAttempt_outError___block_invoke;
    v22 = &unk_1E807F738;
    v29 = v7;
    v23 = self;
    v14 = v9;
    v24 = v14;
    v26 = &v38;
    v30 = v11;
    v25 = v6;
    v27 = &v42;
    v28 = &v32;
    v31 = v10;
    [(SBFUserAuthenticationModel *)model performPasswordTest:&v19];
    if (v39[3])
    {
      v12 = 3;
LABEL_20:

      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v42, 8);
      goto LABEL_21;
    }

    if (v43[3])
    {
      v15 = 0;
    }

    else
    {
      v16 = v33[5];
      if (v16 && [v16 code] == -14)
      {
        goto LABEL_15;
      }

      v15 = [v14 copy];
    }

    lastIncorrectPasscodeAttempt = self->_lastIncorrectPasscodeAttempt;
    self->_lastIncorrectPasscodeAttempt = v15;

LABEL_15:
    if (a4)
    {
      *a4 = v33[5];
    }

    if (*(v43 + 24))
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_20;
  }

  v12 = 1;
LABEL_21:

  return v12;
}

void __69__SBFUserAuthenticationController__evaluatePasscodeAttempt_outError___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((*(a1 + 80) != 1 || !*(*(a1 + 32) + 72) || ![*(a1 + 40) isEqualToString:?]) && *(a1 + 81) != 1)
  {
    v4 = [SBFMobileKeyBagUnlockOptions alloc];
    v5 = [*(a1 + 40) dataUsingEncoding:4];
    v6 = -[SBFMobileKeyBagUnlockOptions initWithPasscode:skipSEKeepUserDataOperation:](v4, "initWithPasscode:skipSEKeepUserDataOperation:", v5, [*(a1 + 48) skipSEKeepUserDataOperation]);

    if ([*(a1 + 48) verifyOnly])
    {
      if (*(a1 + 82))
      {
        v7 = *(*(a1 + 32) + 8);
        v8 = *(*(a1 + 72) + 8);
        v10 = *(v8 + 40);
        v9 = (v8 + 40);
        v19 = v10;
        v11 = [v7 verifyWithOptions:v6 error:&v19];
        v12 = v19;
LABEL_11:
        v16 = v12;
        v17 = *v9;
        *v9 = v16;

LABEL_13:
        *(*(*(a1 + 64) + 8) + 24) = v11;

        goto LABEL_14;
      }
    }

    else if (*(a1 + 82))
    {
      v13 = *(*(a1 + 32) + 8);
      v14 = *(*(a1 + 72) + 8);
      v15 = *(v14 + 40);
      v9 = (v14 + 40);
      v18 = v15;
      v11 = [v13 unlockWithOptions:v6 error:&v18];
      v12 = v18;
      goto LABEL_11;
    }

    v11 = 1;
    goto LABEL_13;
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_14:
  *a2 = *(*(*(a1 + 56) + 8) + 24);
}

- (int64_t)_evaluateBiometricAttempt:(id)a3
{
  if ([(SBFUserAuthenticationController *)self _isInBioUnlockState])
  {
    if ([(SBFUserAuthenticationController *)self _performNilPasscodeCheck])
    {
      lastIncorrectPasscodeAttempt = self->_lastIncorrectPasscodeAttempt;
      self->_lastIncorrectPasscodeAttempt = 0;

      [(SBFUserAuthenticationController *)self _invalidateCachedPasscodeLockState];
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if ([(SBFUserAuthenticationController *)self isAuthenticated])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_isUserRequestedEraseEnabled
{
  [(SBFUserAuthenticationController *)self _refreshModelCacheIfNeeded];
  if (![(SBFUserAuthenticationModel *)self->_model isUserRequestedEraseEnabled])
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getAAUIDeviceLocatorServiceClass_softClass;
  v12 = getAAUIDeviceLocatorServiceClass_softClass;
  if (!getAAUIDeviceLocatorServiceClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getAAUIDeviceLocatorServiceClass_block_invoke;
    v8[3] = &unk_1E807F028;
    v8[4] = &v9;
    __getAAUIDeviceLocatorServiceClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = [v3 sharedInstance];
  v6 = [v5 isEnabled];

  return v6;
}

- (double)_timeUntilUnblockedSinceReferenceDate
{
  [(SBFUserAuthenticationController *)self _refreshModelCacheIfNeeded];
  model = self->_model;

  [(SBFUserAuthenticationModel *)model timeUntilUnblockedSinceReferenceDate];
  return result;
}

- (void)_unblockTimerFired
{
  v3 = SBLogAuthenticationController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, "Temporary blocked timer fired", v4, 2u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBFUserAuthenticationModel *)self->_model refreshBlockedState];
  }

  if ([(SBFUserAuthenticationModel *)self->_model isTemporarilyBlocked])
  {
    [(SBFUserAuthenticationController *)self _scheduleUnblockTimer];
  }

  else
  {
    [(SBFUserAuthenticationController *)self _notifyAboutTemporaryBlockStatusChanged];
  }
}

- (void)_clearBlockedState
{
  if (objc_opt_respondsToSelector())
  {
    [(SBFUserAuthenticationModel *)self->_model clearBlockedState];

    [(SBFUserAuthenticationController *)self _scheduleUnblockTimer];
  }
}

- (void)_noteDeviceLockStateMayHaveChangedForExternalReasons
{
  [(SBFUserAuthenticationModel *)self->_model refreshBlockedState];
  [(SBFUserAuthenticationController *)self _notifyAboutTemporaryBlockStatusChanged];

  [(SBFUserAuthenticationController *)self _scheduleUnblockTimer];
}

- (void)_isUserAuthenticated
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFUserAuthenticationController.m" lineNumber:468 description:@"transient auth assertion must be nil"];
}

- (void)_addAsFirstResponder:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E680] builderWithObject:a1];
  v2 = [v1 build];
  OUTLINED_FUNCTION_2(&dword_1BEA11000, v3, v4, "Authentication responder added: %@", v5, v6, v7, v8, 2u);
}

- (void)_removeAuthResponder:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x1E698E680] builderWithObject:a1];
  v2 = [v1 build];
  OUTLINED_FUNCTION_2(&dword_1BEA11000, v3, v4, "Authentication responder removed: %@", v5, v6, v7, v8, 2u);
}

- (void)_authenticateIfInGracePeriod
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFUserAuthenticationController.m" lineNumber:792 description:@"-[SBFUserAuthenticationController _authenticateIfInGracePeriod]'s return value is different from its internal authentication state."];
}

@end
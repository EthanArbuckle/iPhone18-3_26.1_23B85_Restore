@interface SBContinuityDisplayAuthenticationCoordinator
+ (SBContinuityDisplayAuthenticationCoordinator)sharedInstance;
- (SBContinuityDisplayAuthenticationCoordinator)init;
- (SBContinuityDisplayAuthenticationCoordinator)initWithLockScreenManager:(id)manager mobileKeyBag:(id)bag;
- (unint64_t)lockState;
- (void)_handleKeyBagStateChange;
- (void)_setSessionActive:(BOOL)active;
- (void)_updateSessionState;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserver:(id)observer;
@end

@implementation SBContinuityDisplayAuthenticationCoordinator

+ (SBContinuityDisplayAuthenticationCoordinator)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SBContinuityDisplayAuthenticationCoordinator sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

void __62__SBContinuityDisplayAuthenticationCoordinator_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBContinuityDisplayAuthenticationCoordinator);
  v1 = sharedInstance___sharedInstance_0;
  sharedInstance___sharedInstance_0 = v0;
}

- (SBContinuityDisplayAuthenticationCoordinator)init
{
  v3 = +[SBLockScreenManager sharedInstance];
  mEMORY[0x277D65ED8] = [MEMORY[0x277D65ED8] sharedInstance];
  v5 = [(SBContinuityDisplayAuthenticationCoordinator *)self initWithLockScreenManager:v3 mobileKeyBag:mEMORY[0x277D65ED8]];

  return v5;
}

- (SBContinuityDisplayAuthenticationCoordinator)initWithLockScreenManager:(id)manager mobileKeyBag:(id)bag
{
  managerCopy = manager;
  bagCopy = bag;
  v26.receiver = self;
  v26.super_class = SBContinuityDisplayAuthenticationCoordinator;
  v9 = [(SBContinuityDisplayAuthenticationCoordinator *)&v26 init];
  if (v9)
  {
    objc_initWeak(&location, v9);
    objc_storeStrong(&v9->_mobileKeyBag, bag);
    [(SBFMobileKeyBag *)v9->_mobileKeyBag addObserver:v9];
    objc_storeStrong(&v9->_lockScreenManager, manager);
    v9->_invalidated = 0;
    v9->_sessionActive = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = weakObjectsHashTable;

    v9->_previousLockState = [(SBContinuityDisplayAuthenticationCoordinator *)v9 lockState];
    v12 = MEMORY[0x277CF0BD0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __87__SBContinuityDisplayAuthenticationCoordinator_initWithLockScreenManager_mobileKeyBag___block_invoke;
    v23 = &unk_2783AD688;
    objc_copyWeak(&v24, &location);
    v15 = [v12 assertionWithIdentifier:v14 stateDidChangeHandler:&v20];
    continuityDisplaySessionAssertions = v9->_continuityDisplaySessionAssertions;
    v9->_continuityDisplaySessionAssertions = v15;

    v17 = v9->_continuityDisplaySessionAssertions;
    v18 = SBLogContinuityDisplay();
    [(BSCompoundAssertion *)v17 setLog:v18, v20, v21, v22, v23];

    [(SBContinuityDisplayAuthenticationCoordinator *)v9 setHeartbeatInterval:30.0];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __87__SBContinuityDisplayAuthenticationCoordinator_initWithLockScreenManager_mobileKeyBag___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSessionState];
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBContinuityDisplayAuthenticationCoordinator.m" lineNumber:72 description:@"Must be invalidated before -dealloc"];
}

- (unint64_t)lockState
{
  isContinuityUnlocked = [(SBFMobileKeyBag *)self->_mobileKeyBag isContinuityUnlocked];
  extendedState = [(SBFMobileKeyBag *)self->_mobileKeyBag extendedState];
  isEffectivelyLocked = [extendedState isEffectivelyLocked];

  v6 = 2;
  if (isEffectivelyLocked)
  {
    v6 = 0;
  }

  if (isContinuityUnlocked)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v9 = observerCopy;
  if (!observerCopy)
  {
    [(SBContinuityDisplayAuthenticationCoordinator *)a2 addObserver:?];
    observerCopy = 0;
  }

  observers = self->_observers;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v9;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v6 = observerCopy;
  if (!observerCopy)
  {
    [(SBContinuityDisplayAuthenticationCoordinator *)a2 removeObserver:?];
    observerCopy = 0;
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
}

- (void)invalidate
{
  self->_invalidated = 1;
  [(BSCompoundAssertion *)self->_continuityDisplaySessionAssertions invalidate];
  [(SBContinuityDisplayAuthenticationCoordinator *)self _setSessionActive:0];
  mobileKeyBag = self->_mobileKeyBag;

  [(SBFMobileKeyBag *)mobileKeyBag removeObserver:self];
}

- (void)_updateSessionState
{
  if ([(BSCompoundAssertion *)self->_continuityDisplaySessionAssertions isActive])
  {
    v3 = !self->_invalidated;
  }

  else
  {
    v3 = 0;
  }

  [(SBContinuityDisplayAuthenticationCoordinator *)self _setSessionActive:v3];
}

- (void)_setSessionActive:(BOOL)active
{
  if (self->_sessionActive != active)
  {
    self->_sessionActive = active;
    if (active)
    {
      objc_initWeak(location, self);
      [(SBContinuityDisplayAuthenticationCoordinator *)self heartbeatInterval];
      v5 = v4;
      [(BSContinuousMachTimer *)self->_heartbeatTimer invalidate];
      v6 = objc_alloc(MEMORY[0x277CF0BD8]);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v6 initWithIdentifier:v8];
      heartbeatTimer = self->_heartbeatTimer;
      self->_heartbeatTimer = v9;

      v11 = self->_heartbeatTimer;
      v12 = MEMORY[0x277D85CD0];
      v13 = MEMORY[0x277D85CD0];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __66__SBContinuityDisplayAuthenticationCoordinator__setSessionActive___block_invoke;
      v20[3] = &unk_2783A8AE8;
      objc_copyWeak(&v21, location);
      [(BSContinuousMachTimer *)v11 scheduleRepeatingWithFireInterval:v12 repeatInterval:v20 leewayInterval:v5 queue:v5 handler:v5 * 0.25];

      [(SBLockScreenManager *)self->_lockScreenManager setBiometricAutoUnlockingDisabled:1 forReason:@"SBContinuityDisplayAuthenticationCoordinator"];
      extendedState = [(SBFMobileKeyBag *)self->_mobileKeyBag extendedState];
      lockState = [extendedState lockState];

      if (lockState != 2)
      {
        v16 = SBLogContinuityDisplay();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Session changed to active but we're not fully locked. Locking key bag", v19, 2u);
        }

        [(SBFMobileKeyBag *)self->_mobileKeyBag lockSkippingGracePeriod:1 endingContinuityUnlock:1];
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(location);
    }

    else
    {
      [(BSContinuousMachTimer *)self->_heartbeatTimer invalidate];
      v17 = self->_heartbeatTimer;
      self->_heartbeatTimer = 0;

      [(SBLockScreenManager *)self->_lockScreenManager setBiometricAutoUnlockingDisabled:0 forReason:@"SBContinuityDisplayAuthenticationCoordinator"];
      if ([(SBContinuityDisplayAuthenticationCoordinator *)self lockState]== 1)
      {
        v18 = SBLogContinuityDisplay();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Session changed to inactive while in continuity unlock. Locking key bag", location, 2u);
        }

        [(SBFMobileKeyBag *)self->_mobileKeyBag lockSkippingGracePeriod:0 endingContinuityUnlock:1];
      }
    }
  }
}

void __66__SBContinuityDisplayAuthenticationCoordinator__setSessionActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAuthenticationHeartbeatTimer];
}

- (void)_handleKeyBagStateChange
{
  v21 = *MEMORY[0x277D85DE8];
  lockState = [(SBContinuityDisplayAuthenticationCoordinator *)self lockState];
  v4 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    previousLockState = self->_previousLockState;
    *buf = 134218240;
    v18 = lockState;
    v19 = 2048;
    v20 = previousLockState;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Key bag state changed with current lock state: %lu, previous lock state: %lu", buf, 0x16u);
  }

  if (self->_previousLockState != lockState)
  {
    if (lockState == 1 && !self->_sessionActive)
    {
      v6 = SBLogContinuityDisplay();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(SBContinuityDisplayAuthenticationCoordinator *)v6 _handleKeyBagStateChange];
      }

      [(SBFMobileKeyBag *)self->_mobileKeyBag lockSkippingGracePeriod:1 endingContinuityUnlock:1];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSHashTable *)self->_observers copy];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) continuityDisplayAuthenticationCoordinatorDidUpdateLockState:self];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }

  self->_previousLockState = lockState;
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuityDisplayAuthenticationCoordinator.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

- (void)removeObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuityDisplayAuthenticationCoordinator.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

@end
@interface SBLiftToWakeController
+ (id)sharedController;
- (NSString)description;
- (SBLiftToWakeController)init;
- (SBLiftToWakeController)initWithBacklightController:(id)a3 idleTimerDefaults:(id)a4;
- (id)acquireBumpToWakeEnableAssertionForReason:(id)a3;
- (void)_handleBacklightLevelChanged:(id)a3;
- (void)_ignoredTransition:(int64_t)a3;
- (void)_reconsiderEnablement;
- (void)_screenTurnedOff;
- (void)_screenTurnedOn;
- (void)_sendIgnoredTransitionToObservers:(int64_t)a3;
- (void)_sendTransitionToObservers:(int64_t)a3 deviceOrientation:(int64_t)a4;
- (void)_startObservingBumpsIfNecessary;
- (void)_startObservingIfNecessary;
- (void)_stopObservingBumpsIfNecessary;
- (void)_stopObservingIfNecessary;
- (void)addObserver:(id)a3;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)removeObserver:(id)a3;
- (void)wakeGestureManager:(id)a3 didUpdateWakeGestureEvent:(id)a4;
@end

@implementation SBLiftToWakeController

- (void)_screenTurnedOn
{
  if (!self->_screenOn)
  {
    v3 = SBLogLiftToWake();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBLiftToWakeController *)v3 _screenTurnedOn];
    }

    self->_screenOn = 1;
  }
}

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[SBLiftToWakeController sharedController];
  }

  v3 = sharedController_sController;

  return v3;
}

void __42__SBLiftToWakeController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SBLiftToWakeController);
  v1 = sharedController_sController;
  sharedController_sController = v0;
}

- (SBLiftToWakeController)init
{
  v3 = +[SBBacklightController sharedInstanceIfExists];
  v4 = +[SBDefaults localDefaults];
  v5 = [v4 idleTimerDefaults];
  v6 = [(SBLiftToWakeController *)self initWithBacklightController:v3 idleTimerDefaults:v5];

  return v6;
}

- (SBLiftToWakeController)initWithBacklightController:(id)a3 idleTimerDefaults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = SBLiftToWakeController;
  v8 = [(SBLiftToWakeController *)&v25 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v8 selector:sel__handleBacklightLevelChanged_ name:*MEMORY[0x277D67A20] object:0];

    v10 = [MEMORY[0x277CF0880] sharedBacklight];
    [v10 addObserver:v8];

    v8->_screenOn = [v6 screenIsOn];
    objc_initWeak(&location, v8);
    objc_storeStrong(&v8->_idleTimerDefaults, a4);
    idleTimerDefaults = v8->_idleTimerDefaults;
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"supportLiftToWake"];
    v13 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __72__SBLiftToWakeController_initWithBacklightController_idleTimerDefaults___block_invoke;
    v22 = &unk_2783A8C68;
    objc_copyWeak(&v23, &location);
    v15 = [(SBIdleTimerDefaults *)idleTimerDefaults observeDefault:v12 onQueue:v13 withBlock:&v19];

    [(SBLiftToWakeController *)v8 _reconsiderEnablement:v19];
    v16 = objc_alloc_init(SBWakeDebounceFilter);
    bumpToWakeDebounceFilter = v8->_bumpToWakeDebounceFilter;
    v8->_bumpToWakeDebounceFilter = v16;

    [(SBWakeDebounceFilter *)v8->_bumpToWakeDebounceFilter setFilterInterval:300.0];
    [(SBWakeDebounceFilter *)v8->_bumpToWakeDebounceFilter setIntervalActivationLimit:10];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __72__SBLiftToWakeController_initWithBacklightController_idleTimerDefaults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reconsiderEnablement];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:LODWORD(self->_wakeGestureState) withName:@"wakeGestureState"];
  v5 = [v3 appendBool:self->_screenOn withName:@"screenOn"];
  v6 = [v3 appendBool:self->_isEnabled withName:@"enabled"];
  v7 = [v3 appendBool:self->_observingCMWakeGestureManager withName:@"observingCMWakeGestureManager"];
  v8 = [v3 appendObject:self->_observers withName:@"observers"];
  v9 = [v3 build];

  return v9;
}

- (void)addObserver:(id)a3
{
  v7 = a3;
  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v7];
  if (self->_isEnabled)
  {
    [(SBLiftToWakeController *)self _startObservingIfNecessary];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  [(NSHashTable *)self->_observers removeObject:v4];

  if (![(NSHashTable *)self->_observers count])
  {

    [(SBLiftToWakeController *)self _stopObservingIfNecessary];
  }
}

- (id)acquireBumpToWakeEnableAssertionForReason:(id)a3
{
  v4 = a3;
  bumpToWakeAssertions = self->_bumpToWakeAssertions;
  if (!bumpToWakeAssertions)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __68__SBLiftToWakeController_acquireBumpToWakeEnableAssertionForReason___block_invoke;
    v14 = &unk_2783AD688;
    objc_copyWeak(&v15, &location);
    v7 = [v6 assertionWithIdentifier:@"SBLiftToWakeController bump-to-wake" stateDidChangeHandler:&v11];
    v8 = self->_bumpToWakeAssertions;
    self->_bumpToWakeAssertions = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    bumpToWakeAssertions = self->_bumpToWakeAssertions;
  }

  v9 = [(BSCompoundAssertion *)bumpToWakeAssertions acquireForReason:v4, v11, v12, v13, v14];

  return v9;
}

void __68__SBLiftToWakeController_acquireBumpToWakeEnableAssertionForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reconsiderEnablement];
}

- (void)_ignoredTransition:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogLiftToWake();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((a3 - 1) > 3)
    {
      v6 = @"<unknown>";
    }

    else
    {
      v6 = off_2783B69A8[a3 - 1];
    }

    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBLiftToWakeController: intentionally ignored transition: %{public}@", &v7, 0xCu);
  }

  [(SBLiftToWakeController *)self _sendIgnoredTransitionToObservers:a3];
}

- (void)_screenTurnedOff
{
  if (self->_screenOn)
  {
    v3 = SBLogLiftToWake();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBLiftToWakeController *)v3 _screenTurnedOff];
    }

    self->_screenOn = 0;
    self->_wakeGestureState = 0;
  }
}

- (void)_reconsiderEnablement
{
  v28 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = [MEMORY[0x277CC1D78] isWakeGestureAvailable];
  if (v3)
  {
    if (([(SBIdleTimerDefaults *)self->_idleTimerDefaults supportLiftToWake]& 1) != 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = [(BSCompoundAssertion *)self->_bumpToWakeAssertions isActive];
    }
  }

  if (self->_isEnabled == v3)
  {
    if ([(BSCompoundAssertion *)self->_bumpToWakeAssertions isActive])
    {

      [(SBLiftToWakeController *)self _startObservingBumpsIfNecessary];
    }

    else
    {

      [(SBLiftToWakeController *)self _stopObservingBumpsIfNecessary];
    }
  }

  else
  {
    self->_isEnabled = v3;
    v4 = SBLogLiftToWake();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromBOOL();
      [MEMORY[0x277CC1D78] isWakeGestureAvailable];
      v6 = NSStringFromBOOL();
      [(SBIdleTimerDefaults *)self->_idleTimerDefaults supportLiftToWake];
      v7 = NSStringFromBOOL();
      v8 = [(BSCompoundAssertion *)self->_bumpToWakeAssertions isActive];
      *buf = 138544130;
      v21 = v5;
      v22 = 2114;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      v26 = 1024;
      v27 = v8;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Lift to wake enablement changed to: %{public}@ (Available: %{public}@, UserPref: %{public}@, Bump: %{BOOL}u)", buf, 0x26u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(NSHashTable *)self->_observers copy];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v14 liftToWakeControllerEnablementDidChange:self];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    if (self->_isEnabled)
    {
      if ([(NSHashTable *)self->_observers count])
      {
        [(SBLiftToWakeController *)self _startObservingIfNecessary];
      }
    }

    else
    {
      [(SBLiftToWakeController *)self _stopObservingIfNecessary];
    }
  }
}

- (void)_handleBacklightLevelChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D67A30]];
  [v6 floatValue];
  v8 = v7;

  v9 = [v5 objectForKey:*MEMORY[0x277D67A28]];
  [v9 floatValue];
  v11 = v10;

  v12 = [v5 objectForKey:*MEMORY[0x277D67A10]];
  v13 = [v12 intValue];

  v14 = SBLogLiftToWake();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(SBLiftToWakeController *)v4 _handleBacklightLevelChanged:v14];
  }

  v16 = v11 > 0.0 && v8 <= 0.0;
  if (v13 != 13)
  {
    if (v8 <= 0.0 || v11 > 0.0)
    {
      if (v16)
      {
        [(SBLiftToWakeController *)self _screenTurnedOn];
      }
    }

    else
    {
      [(SBLiftToWakeController *)self _screenTurnedOff];
    }
  }
}

- (void)_startObservingIfNecessary
{
  if (!self->_observingCMWakeGestureManager && self->_isEnabled && [(NSHashTable *)self->_observers count])
  {
    self->_wakeGestureState = 0;
    v3 = SBLogLiftToWake();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Starting to observe the CMWakeGestureManager.", v6, 2u);
    }

    self->_observingCMWakeGestureManager = 1;
    v4 = [MEMORY[0x277CC1D78] sharedManager];
    wakeGestureManager = self->_wakeGestureManager;
    self->_wakeGestureManager = v4;

    [(CMWakeGestureManager *)self->_wakeGestureManager setDelegate:self];
    [(CMWakeGestureManager *)self->_wakeGestureManager startWakeGestureUpdates];
  }

  [(SBLiftToWakeController *)self _startObservingBumpsIfNecessary];
}

- (void)_stopObservingIfNecessary
{
  [(SBLiftToWakeController *)self _stopObservingBumpsIfNecessary];
  if (self->_observingCMWakeGestureManager)
  {
    self->_observingCMWakeGestureManager = 0;
    [(CMWakeGestureManager *)self->_wakeGestureManager stopWakeGestureUpdates];
    wakeGestureManager = self->_wakeGestureManager;
    self->_wakeGestureManager = 0;

    v4 = SBLogLiftToWake();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Stopped observing the CMWakeGestureManager.", v5, 2u);
    }
  }
}

- (void)_startObservingBumpsIfNecessary
{
  v6 = *MEMORY[0x277D85DE8];
  if (self->_observingCMWakeGestureManager)
  {
    v3 = [(BSCompoundAssertion *)self->_bumpToWakeAssertions isActive];
    v4 = SBLogLiftToWake();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Setting nightStandWakeEnabled to %{BOOL}u.", v5, 8u);
    }

    [(CMWakeGestureManager *)self->_wakeGestureManager setNightStandWakeEnabled:v3 withConfiguration:2];
  }
}

- (void)_stopObservingBumpsIfNecessary
{
  v3 = SBLogLiftToWake();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Setting nightStandWakeEnabled to NO", v4, 2u);
  }

  [(CMWakeGestureManager *)self->_wakeGestureManager setNightStandWakeEnabled:0 withConfiguration:2];
}

- (void)_sendTransitionToObservers:(int64_t)a3 deviceOrientation:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v7 = SBLogLiftToWake();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if ((a3 - 1) > 3)
    {
      v8 = @"<unknown>";
    }

    else
    {
      v8 = off_2783B69A8[a3 - 1];
    }

    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBLiftToWakeController: sending to observers: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(NSHashTable *)self->_observers copy];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 liftToWakeController:self didObserveTransition:a3 deviceOrientation:a4];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_sendIgnoredTransitionToObservers:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v5 = SBLogLiftToWake();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((a3 - 1) > 3)
    {
      v6 = @"<unknown>";
    }

    else
    {
      v6 = off_2783B69A8[a3 - 1];
    }

    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBLiftToWakeController: sending ignored transition to observers: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 liftToWakeController:self didIgnoreTransition:a3];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  if (a4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_21F8A6BE0[a4];
  }

  [(CMWakeGestureManager *)self->_wakeGestureManager setBacklightState:v5];
}

- (void)wakeGestureManager:(id)a3 didUpdateWakeGestureEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = wakeGestureManager_didUpdateWakeGestureEvent__secondsToTicksScaleFactor;
  if (*&wakeGestureManager_didUpdateWakeGestureEvent__secondsToTicksScaleFactor == 0.0)
  {
    info = 0;
    if (!mach_timebase_info(&info))
    {
      LODWORD(v9) = info.numer;
      LODWORD(v8) = info.denom;
      *&v8 = v8 / v9 * 1000000000.0;
      wakeGestureManager_didUpdateWakeGestureEvent__secondsToTicksScaleFactor = v8;
    }
  }

  v10 = [v7 orientation];
  v11 = [v7 state];
  [v7 timestamp];
  if (v11 == 1)
  {
    v13 = (v12 * *&wakeGestureManager_didUpdateWakeGestureEvent__secondsToTicksScaleFactor);
    v14 = [MEMORY[0x277D66010] sharedInstance];
    [v14 wakeMayBegin:2 withTimestamp:v13];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SBLiftToWakeController_wakeGestureManager_didUpdateWakeGestureEvent___block_invoke;
  block[3] = &unk_2783B6988;
  v19 = v10;
  v17 = v7;
  v18 = v11;
  block[4] = self;
  v15 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__SBLiftToWakeController_wakeGestureManager_didUpdateWakeGestureEvent___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = SBLogLiftToWake();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = BSDeviceOrientationDescription();
    v20 = 67109378;
    v21 = v4;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "SBLiftToWakeController: updated wake gesture state received:%d %@", &v20, 0x12u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = *(a1 + 48);
  v8 = [*(a1 + 40) type];
  v9 = *(a1 + 32);
  if (v8 == 7)
  {
    if ([*(v9 + 48) isActive])
    {
      v10 = *(a1 + 32);
      if (*(a1 + 48) != 1)
      {
LABEL_23:
        v17 = 4;
LABEL_29:
        [v10 _ignoredTransition:v17];
        return;
      }

      if ([*(v10 + 56) wakeEventOccurred])
      {
        v10 = *(a1 + 32);
        v11 = 4;
LABEL_13:
        [v10 _sendTransitionToObservers:v11 deviceOrientation:v2];
        return;
      }

      v16 = SBLogLiftToWake();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "debounce filter rejected bump event", &v20, 2u);
      }
    }

    v10 = *(a1 + 32);
    goto LABEL_23;
  }

  if (![*(v9 + 32) supportLiftToWake])
  {
    goto LABEL_27;
  }

  v12 = *(a1 + 48);
  if ((v12 - 2) < 2)
  {
    v10 = *(a1 + 32);
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 2 && *(v10 + 40) == 1)
    {
      v11 = 3;
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  if (v12 != 1)
  {
    v18 = SBLogLiftToWake();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      v20 = 67109120;
      v21 = v19;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "SBLiftToWakeController: wake gesture state not handled -- were we supposed to receive %d ?", &v20, 8u);
    }

LABEL_27:
    v10 = *(a1 + 32);
LABEL_28:
    v17 = 0;
    goto LABEL_29;
  }

  v13 = *(a1 + 32);
  if (v13[40])
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v13 _sendTransitionToObservers:v14 deviceOrientation:v2];
  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 postNotificationName:*MEMORY[0x277D67A78] object:*(a1 + 32)];
}

- (void)_handleBacklightLevelChanged:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "SBLiftToWakeController: backlight changed: %@", &v2, 0xCu);
}

@end
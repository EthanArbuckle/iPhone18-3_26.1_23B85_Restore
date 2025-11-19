@interface SBLiftToWakeManager
- (BOOL)_isLockScreenMainPageVisible;
- (BOOL)handleEvent:(id)a3;
- (NSString)coverSheetIdentifier;
- (NSString)description;
- (SBBacklightController)_backlightController;
- (SBIdleTimerGlobalCoordinator)_idleTimerCoordinator;
- (SBLiftToWakeManager)init;
- (SBLockScreenManager)_lockScreenManager;
- (SBMainDisplayPolicyAggregator)_policyAggregator;
- (id)_initWithLiftToWakeController:(id)a3;
- (int64_t)participantState;
- (void)_backlightWillTurnOn:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)liftToWakeController:(id)a3 didObserveTransition:(int64_t)a4 deviceOrientation:(int64_t)a5;
@end

@implementation SBLiftToWakeManager

- (SBMainDisplayPolicyAggregator)_policyAggregator
{
  accessor_policyAggregator = self->_accessor_policyAggregator;
  if (accessor_policyAggregator)
  {
    v3 = accessor_policyAggregator;
  }

  else
  {
    v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    v3 = [v4 policyAggregator];
  }

  return v3;
}

- (SBLockScreenManager)_lockScreenManager
{
  accessor_lockScreenManager = self->_accessor_lockScreenManager;
  if (accessor_lockScreenManager)
  {
    v3 = accessor_lockScreenManager;
  }

  else
  {
    v3 = +[SBLockScreenManager sharedInstance];
  }

  return v3;
}

- (int64_t)participantState
{
  if ([(SBLiftToWakeController *)self->_liftToWakeController isEnabled])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (SBLiftToWakeManager)init
{
  v3 = +[SBLiftToWakeController sharedController];
  v4 = [(SBLiftToWakeManager *)self _initWithLiftToWakeController:v3];

  return v4;
}

- (id)_initWithLiftToWakeController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBLiftToWakeManager;
  v6 = [(SBLiftToWakeManager *)&v10 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_liftToWakeController, a3);
    [p_isa[1] addObserver:p_isa];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:p_isa selector:sel__backlightWillTurnOn_ name:*MEMORY[0x277D67A38] object:0];
  }

  return p_isa;
}

- (void)dealloc
{
  [(SBLiftToWakeManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBLiftToWakeManager;
  [(SBLiftToWakeManager *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_gestureWokeScreen withName:@"gestureWokeScreen"];
  v5 = [v3 appendBool:-[SBLiftToWakeController isEnabled](self->_liftToWakeController withName:{"isEnabled"), @"enabled"}];
  v6 = [v3 appendObject:self->_liftToWakeController withName:@"liftToWakeController"];
  v7 = [v3 build];

  return v7;
}

- (void)_backlightWillTurnOn:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D67A10]];
  v6 = [v5 intValue];

  if (v6 != 13)
  {

    [(SBLiftToWakeManager *)self _setGestureWokeScreen:v6 == 20];
  }
}

- (SBBacklightController)_backlightController
{
  accessor_backlightController = self->_accessor_backlightController;
  if (accessor_backlightController)
  {
    v3 = accessor_backlightController;
  }

  else
  {
    v3 = +[SBBacklightController sharedInstance];
  }

  return v3;
}

- (SBIdleTimerGlobalCoordinator)_idleTimerCoordinator
{
  accessor_idleTimerCoordinator = self->_accessor_idleTimerCoordinator;
  if (accessor_idleTimerCoordinator)
  {
    v3 = accessor_idleTimerCoordinator;
  }

  else
  {
    v3 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  }

  return v3;
}

- (BOOL)_isLockScreenMainPageVisible
{
  v2 = [(SBLiftToWakeManager *)self _lockScreenManager];
  v3 = [v2 lockScreenEnvironment];
  v4 = [v3 contentStateProvider];

  if ([v2 isLockScreenVisible] && objc_msgSend(v4, "isMainPageVisible"))
  {
    v5 = [v2 isUIUnlocking] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(SBLiftToWakeController *)self->_liftToWakeController removeObserver:self];
    v5 = [(SBLiftToWakeManager *)self _lockScreenManager];
    v4 = [v5 coverSheetViewController];
    [v4 unregisterExternalEventHandler:self];
  }
}

- (void)liftToWakeController:(id)a3 didObserveTransition:(int64_t)a4 deviceOrientation:(int64_t)a5
{
  v56[3] = *MEMORY[0x277D85DE8];
  v8 = NSStringFromSBLiftToWakeTransition(a4);
  v9 = SBLogLiftToWake();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v50 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Transition received: %{public}@", buf, 0xCu);
  }

  if (!BKSHIDServicesProximityDetectionActive())
  {
    v11 = [(SBLiftToWakeManager *)self _policyAggregator];
    v48 = 0;
    v12 = [v11 allowsCapability:25 explanation:&v48];
    v13 = v48;

    if (v12)
    {
      if (a4 <= 1)
      {
        if (a4)
        {
          if (a4 == 1)
          {
LABEL_19:
            if ([SBApp caseIsEnabledAndLatched])
            {
              v17 = SBLogLiftToWake();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v50 = v8;
                _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring %{public}@ because smart cover is locked", buf, 0xCu);
              }
            }

            else
            {
              v29 = [(SBLiftToWakeManager *)self _lockScreenManager];
              v30 = [v29 isUILocked];

              if (v30)
              {
                v31 = [(SBLiftToWakeManager *)self _lockScreenManager];
                v32 = [v31 coverSheetViewController];
                [v32 registerExternalEventHandler:self];

                v33 = BKLogOrientationDevice();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                {
                  v34 = BSDeviceOrientationDescription();
                  *buf = 138412290;
                  *v50 = v34;
                  _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_INFO, "Waking with requested orientation %@", buf, 0xCu);
                }

                v35 = SBLogLiftToWake();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *v50 = v8;
                  _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "Attemping unlock for transition %{public}@", buf, 0xCu);
                }

                v55[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
                v36 = [MEMORY[0x277CCABB0] numberWithBool:1];
                v56[0] = v36;
                v55[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
                v37 = [MEMORY[0x277CCABB0] numberWithBool:1];
                v56[1] = v37;
                v55[2] = @"SBUIUnlockOptionsRequestedOrientationKey";
                v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
                v56[2] = v38;
                v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];

                if (a4 == 4)
                {
                  v40 = 37;
                }

                else
                {
                  v40 = 5;
                }

                v41 = [(SBLiftToWakeManager *)self _lockScreenManager];
                [v41 unlockUIFromSource:v40 withOptions:v39];

                self->_significantUserInteractionOccuredSinceWake = 0;
                goto LABEL_50;
              }

              v42 = SBLogLiftToWake();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v50 = v8;
                _os_log_impl(&dword_21ED4E000, v42, OS_LOG_TYPE_DEFAULT, "Resetting idle timer for transition %{public}@", buf, 0xCu);
              }

              v17 = [(SBLiftToWakeManager *)self _idleTimerCoordinator];
              v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"LiftToWakeTransition:%@", v8];
              [v17 resetIdleTimerForReason:v43];
            }

            goto LABEL_49;
          }

LABEL_50:

          goto LABEL_51;
        }

        v28 = SBLogLiftToWake();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Unknown transition!", buf, 2u);
        }

        v15 = self;
        v16 = 0;
      }

      else
      {
        if (a4 == 2)
        {
          v18 = SBLogLiftToWake();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Resetting idle timer for transition wake -> wake", buf, 2u);
          }

          v19 = [(SBLiftToWakeManager *)self _backlightController];
          v20 = [v19 screenIsDim];

          if (v20)
          {
            v21 = [(SBLiftToWakeManager *)self _backlightController];
            [v21 _undimFromSource:20];
          }

          v17 = [(SBLiftToWakeManager *)self _idleTimerCoordinator];
          [v17 resetIdleTimerForReason:@"LiftToWakeTransition:wake -> wake"];
LABEL_49:

          goto LABEL_50;
        }

        if (a4 != 3)
        {
          if (a4 != 4)
          {
            goto LABEL_50;
          }

          goto LABEL_19;
        }

        v22 = [(SBLiftToWakeManager *)self _gestureWokeScreen];
        v23 = [(SBLiftToWakeManager *)self _isLockScreenMainPageVisible];
        v24 = [(SBLiftToWakeManager *)self _idleTimerCoordinator];
        v25 = [v24 isIdleTimerDisabled];

        if (v22 && v23 && (v25 & 1) == 0 && !self->_significantUserInteractionOccuredSinceWake)
        {
          v44 = SBLogLiftToWake();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "Turning screen off for transition wake -> sleep", buf, 2u);
          }

          v45 = [(SBLiftToWakeManager *)self _backlightController];
          [v45 _startFadeOutAnimationFromLockSource:5];

          v46 = [(SBLiftToWakeManager *)self _lockScreenManager];
          v47 = [v46 coverSheetViewController];
          [v47 unregisterExternalEventHandler:self];

          goto LABEL_50;
        }

        v26 = SBLogLiftToWake();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          significantUserInteractionOccuredSinceWake = self->_significantUserInteractionOccuredSinceWake;
          *buf = 67109888;
          *v50 = v22;
          *&v50[4] = 1024;
          *&v50[6] = v23;
          v51 = 1024;
          v52 = v25 ^ 1;
          v53 = 1024;
          v54 = significantUserInteractionOccuredSinceWake;
          _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Not turning screen off for transition wake -> sleep because gestureWokeScreen: %d isLockScreenMainPageVisible: %d idleTimerRunning: %d significantUserInteractionOccuredSinceWake: %d", buf, 0x1Au);
        }

        v15 = self;
        v16 = 3;
      }
    }

    else
    {
      v14 = SBLogLiftToWake();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v50 = v13;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring transition - policy aggregator denied with with reason: %@", buf, 0xCu);
      }

      v15 = self;
      v16 = a4;
    }

    [(SBLiftToWakeManager *)v15 _ignoredTransition:v16];
    goto LABEL_50;
  }

  v10 = SBLogLiftToWake();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring transition -- prox is active", buf, 2u);
  }

  [(SBLiftToWakeManager *)self _ignoredTransition:a4];
LABEL_51:
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = v5 == 21 || v5 == 12;
  if (v6 && [(SBLiftToWakeManager *)self _gestureWokeScreen])
  {
    self->_significantUserInteractionOccuredSinceWake = 1;
    v7 = [v4 isConsumable];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
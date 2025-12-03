@interface SBLiftToWakeManager
- (BOOL)_isLockScreenMainPageVisible;
- (BOOL)handleEvent:(id)event;
- (NSString)coverSheetIdentifier;
- (NSString)description;
- (SBBacklightController)_backlightController;
- (SBIdleTimerGlobalCoordinator)_idleTimerCoordinator;
- (SBLiftToWakeManager)init;
- (SBLockScreenManager)_lockScreenManager;
- (SBMainDisplayPolicyAggregator)_policyAggregator;
- (id)_initWithLiftToWakeController:(id)controller;
- (int64_t)participantState;
- (void)_backlightWillTurnOn:(id)on;
- (void)dealloc;
- (void)invalidate;
- (void)liftToWakeController:(id)controller didObserveTransition:(int64_t)transition deviceOrientation:(int64_t)orientation;
@end

@implementation SBLiftToWakeManager

- (SBMainDisplayPolicyAggregator)_policyAggregator
{
  accessor_policyAggregator = self->_accessor_policyAggregator;
  if (accessor_policyAggregator)
  {
    policyAggregator = accessor_policyAggregator;
  }

  else
  {
    v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    policyAggregator = [v4 policyAggregator];
  }

  return policyAggregator;
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

- (id)_initWithLiftToWakeController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SBLiftToWakeManager;
  v6 = [(SBLiftToWakeManager *)&v10 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_liftToWakeController, controller);
    [p_isa[1] addObserver:p_isa];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:p_isa selector:sel__backlightWillTurnOn_ name:*MEMORY[0x277D67A38] object:0];
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
  build = [v3 build];

  return build;
}

- (void)_backlightWillTurnOn:(id)on
{
  userInfo = [on userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D67A10]];
  intValue = [v5 intValue];

  if (intValue != 13)
  {

    [(SBLiftToWakeManager *)self _setGestureWokeScreen:intValue == 20];
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
  _lockScreenManager = [(SBLiftToWakeManager *)self _lockScreenManager];
  lockScreenEnvironment = [_lockScreenManager lockScreenEnvironment];
  contentStateProvider = [lockScreenEnvironment contentStateProvider];

  if ([_lockScreenManager isLockScreenVisible] && objc_msgSend(contentStateProvider, "isMainPageVisible"))
  {
    v5 = [_lockScreenManager isUIUnlocking] ^ 1;
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
    _lockScreenManager = [(SBLiftToWakeManager *)self _lockScreenManager];
    coverSheetViewController = [_lockScreenManager coverSheetViewController];
    [coverSheetViewController unregisterExternalEventHandler:self];
  }
}

- (void)liftToWakeController:(id)controller didObserveTransition:(int64_t)transition deviceOrientation:(int64_t)orientation
{
  v56[3] = *MEMORY[0x277D85DE8];
  v8 = NSStringFromSBLiftToWakeTransition(transition);
  v9 = SBLogLiftToWake();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v50 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Transition received: %{public}@", buf, 0xCu);
  }

  if (!BKSHIDServicesProximityDetectionActive())
  {
    _policyAggregator = [(SBLiftToWakeManager *)self _policyAggregator];
    v48 = 0;
    v12 = [_policyAggregator allowsCapability:25 explanation:&v48];
    v13 = v48;

    if (v12)
    {
      if (transition <= 1)
      {
        if (transition)
        {
          if (transition == 1)
          {
LABEL_19:
            if ([SBApp caseIsEnabledAndLatched])
            {
              _idleTimerCoordinator = SBLogLiftToWake();
              if (os_log_type_enabled(_idleTimerCoordinator, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v50 = v8;
                _os_log_impl(&dword_21ED4E000, _idleTimerCoordinator, OS_LOG_TYPE_DEFAULT, "Ignoring %{public}@ because smart cover is locked", buf, 0xCu);
              }
            }

            else
            {
              _lockScreenManager = [(SBLiftToWakeManager *)self _lockScreenManager];
              isUILocked = [_lockScreenManager isUILocked];

              if (isUILocked)
              {
                _lockScreenManager2 = [(SBLiftToWakeManager *)self _lockScreenManager];
                coverSheetViewController = [_lockScreenManager2 coverSheetViewController];
                [coverSheetViewController registerExternalEventHandler:self];

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
                v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:orientation];
                v56[2] = v38;
                v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];

                if (transition == 4)
                {
                  v40 = 37;
                }

                else
                {
                  v40 = 5;
                }

                _lockScreenManager3 = [(SBLiftToWakeManager *)self _lockScreenManager];
                [_lockScreenManager3 unlockUIFromSource:v40 withOptions:v39];

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

              _idleTimerCoordinator = [(SBLiftToWakeManager *)self _idleTimerCoordinator];
              v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"LiftToWakeTransition:%@", v8];
              [_idleTimerCoordinator resetIdleTimerForReason:v43];
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

        selfCopy3 = self;
        transitionCopy = 0;
      }

      else
      {
        if (transition == 2)
        {
          v18 = SBLogLiftToWake();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Resetting idle timer for transition wake -> wake", buf, 2u);
          }

          _backlightController = [(SBLiftToWakeManager *)self _backlightController];
          screenIsDim = [_backlightController screenIsDim];

          if (screenIsDim)
          {
            _backlightController2 = [(SBLiftToWakeManager *)self _backlightController];
            [_backlightController2 _undimFromSource:20];
          }

          _idleTimerCoordinator = [(SBLiftToWakeManager *)self _idleTimerCoordinator];
          [_idleTimerCoordinator resetIdleTimerForReason:@"LiftToWakeTransition:wake -> wake"];
LABEL_49:

          goto LABEL_50;
        }

        if (transition != 3)
        {
          if (transition != 4)
          {
            goto LABEL_50;
          }

          goto LABEL_19;
        }

        _gestureWokeScreen = [(SBLiftToWakeManager *)self _gestureWokeScreen];
        _isLockScreenMainPageVisible = [(SBLiftToWakeManager *)self _isLockScreenMainPageVisible];
        _idleTimerCoordinator2 = [(SBLiftToWakeManager *)self _idleTimerCoordinator];
        isIdleTimerDisabled = [_idleTimerCoordinator2 isIdleTimerDisabled];

        if (_gestureWokeScreen && _isLockScreenMainPageVisible && (isIdleTimerDisabled & 1) == 0 && !self->_significantUserInteractionOccuredSinceWake)
        {
          v44 = SBLogLiftToWake();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "Turning screen off for transition wake -> sleep", buf, 2u);
          }

          _backlightController3 = [(SBLiftToWakeManager *)self _backlightController];
          [_backlightController3 _startFadeOutAnimationFromLockSource:5];

          _lockScreenManager4 = [(SBLiftToWakeManager *)self _lockScreenManager];
          coverSheetViewController2 = [_lockScreenManager4 coverSheetViewController];
          [coverSheetViewController2 unregisterExternalEventHandler:self];

          goto LABEL_50;
        }

        v26 = SBLogLiftToWake();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          significantUserInteractionOccuredSinceWake = self->_significantUserInteractionOccuredSinceWake;
          *buf = 67109888;
          *v50 = _gestureWokeScreen;
          *&v50[4] = 1024;
          *&v50[6] = _isLockScreenMainPageVisible;
          v51 = 1024;
          v52 = isIdleTimerDisabled ^ 1;
          v53 = 1024;
          v54 = significantUserInteractionOccuredSinceWake;
          _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Not turning screen off for transition wake -> sleep because gestureWokeScreen: %d isLockScreenMainPageVisible: %d idleTimerRunning: %d significantUserInteractionOccuredSinceWake: %d", buf, 0x1Au);
        }

        selfCopy3 = self;
        transitionCopy = 3;
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

      selfCopy3 = self;
      transitionCopy = transition;
    }

    [(SBLiftToWakeManager *)selfCopy3 _ignoredTransition:transitionCopy];
    goto LABEL_50;
  }

  v10 = SBLogLiftToWake();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring transition -- prox is active", buf, 2u);
  }

  [(SBLiftToWakeManager *)self _ignoredTransition:transition];
LABEL_51:
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  v6 = type == 21 || type == 12;
  if (v6 && [(SBLiftToWakeManager *)self _gestureWokeScreen])
  {
    self->_significantUserInteractionOccuredSinceWake = 1;
    isConsumable = [eventCopy isConsumable];
  }

  else
  {
    isConsumable = 0;
  }

  return isConsumable;
}

@end
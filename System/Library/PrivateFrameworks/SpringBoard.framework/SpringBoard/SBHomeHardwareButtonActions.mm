@interface SBHomeHardwareButtonActions
- (BOOL)_performButtonPreflightActions;
- (BOOL)_shouldIgnorePressesDueToProxOrIdle:(id *)idle;
- (id)hardwareButtonGestureParameters;
- (id)initWitHomeButtonType:(int64_t)type;
- (void)_logMenuButtonHoldTime;
- (void)configureForwardingToLockButtonActions:(id)actions;
- (void)performAfterMenuButtonUpIsHandledUsingBlock:(id)block;
- (void)performDoublePressDownActions;
- (void)performDoubleTapUpActions;
- (void)performFinalButtonUpActions;
- (void)performInitialButtonDownActions;
- (void)performLongPressActions;
- (void)performLongPressCancelledActions;
- (void)performSinglePressUpActionsWithSourceType:(unint64_t)type;
- (void)performTriplePressUpActions;
- (void)performWhenMenuButtonIsUpUsingBlock:(id)block;
- (void)provider:(id)provider didUpdateButtonGestureParameters:(id)parameters;
- (void)setButtonDown:(BOOL)down;
@end

@implementation SBHomeHardwareButtonActions

- (void)performInitialButtonDownActions
{
  v43 = *MEMORY[0x277D85DE8];
  if (!SBGuidedAccessIsActive())
  {
    self->_dontUnlockOnButtonUp = 0;
    [(SBHomeHardwareButtonActions *)self setButtonDown:1];
    self->_menuButtonHoldStartAbsoluteTime = CFAbsoluteTimeGetCurrent();
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_async(v6, &__block_literal_global_148);

    v4 = +[SBTelephonyManager sharedTelephonyManager];
    if ([v4 isInEmergencyCallbackMode]&& [v4 activeCallExists])
    {
      v5 = SBLogButtonsHome();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_45;
      }

      v7 = NSStringFromSelector(a2);
      *buf = 138543362;
      v40 = v7;
      v8 = "%{public}@ result: ECBM enabled and active call exists";
LABEL_18:
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, v8, buf, 0xCu);

      goto LABEL_45;
    }

    v9 = +[SBSetupManager sharedInstance];
    if ([v9 isInSetupMode])
    {
      inCall = [v4 inCall];

      if (inCall)
      {
        v5 = SBLogButtonsHome();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          goto LABEL_45;
        }

        v7 = NSStringFromSelector(a2);
        *buf = 138543362;
        v40 = v7;
        v8 = "%{public}@ result: on a call in setup mode";
        goto LABEL_18;
      }
    }

    else
    {
    }

    if ([(SBProximitySensorManager *)self->_proximitySensorManager isObjectInProximity])
    {
      [(SBProximitySensorManager *)self->_proximitySensorManager resetProximityCalibration];
    }

    v11 = +[SBSystemGestureManager mainDisplayManager];
    isAnyTouchGestureRunning = [v11 isAnyTouchGestureRunning];

    if (isAnyTouchGestureRunning)
    {
      v5 = SBLogButtonsHome();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_45;
      }

      v7 = NSStringFromSelector(a2);
      *buf = 138543362;
      v40 = v7;
      v8 = "%{public}@ result: system gesture running";
      goto LABEL_18;
    }

    v13 = objc_opt_class();
    v14 = SBSafeCast(v13, self->_siriButtonInteraction);
    v5 = v14;
    if (v14)
    {
      [v14 setInitialPressDownTime:self->_menuButtonHoldStartAbsoluteTime];
    }

    v15 = +[SBLockScreenManager sharedInstance];
    v16 = +[SBBacklightController sharedInstance];
    self->_screenWasDimOnMenuDown = [v16 screenIsDim];
    v36 = 0;
    v17 = [(SBHomeHardwareButtonActions *)self _shouldIgnorePressesDueToProxOrIdle:&v36];
    v35 = v36;
    if (v17)
    {
      lockHardwareButton = [SBApp lockHardwareButton];
      reverseFadeOutIfNeeded = [lockHardwareButton reverseFadeOutIfNeeded];

      v20 = SBLogButtonsHome();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
      if (reverseFadeOutIfNeeded)
      {
        v22 = v35;
        if (v21)
        {
          v23 = NSStringFromSelector(a2);
          *buf = 138543618;
          v40 = v23;
          v41 = 2114;
          v42 = v35;
          v24 = "%{public}@ result: reversed lock fadeout because %{public}@";
LABEL_34:
          _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_INFO, v24, buf, 0x16u);
        }
      }

      else
      {
        v22 = v35;
        if (v21)
        {
          v23 = NSStringFromSelector(a2);
          *buf = 138543618;
          v40 = v23;
          v41 = 2114;
          v42 = v35;
          v24 = "%{public}@ result: ignored because %{public}@";
          goto LABEL_34;
        }
      }

LABEL_44:

      goto LABEL_45;
    }

    v20 = +[SBScreenWakeAnimationController sharedInstance];
    if ([v16 screenIsOn] && (-[NSObject isSleepAnimationInProgress](v20, "isSleepAnimationInProgress") & 1) == 0)
    {
      [v15 isUILocked];
    }

    else
    {
      isWakeAnimationInProgress = [v20 isWakeAnimationInProgress];
      if ([v15 isUILocked] && (isWakeAnimationInProgress & 1) == 0)
      {
        v34 = v16;
        v26 = SBLogButtonsHome();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = NSStringFromSelector(a2);
          *buf = 138543362;
          v40 = v27;
          _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_INFO, "%{public}@ result: turning on the screen if necessary", buf, 0xCu);
        }

        v37[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
        v33 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v38[0] = v33;
        v37[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
        v28 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v38[1] = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
        [v15 unlockUIFromSource:15 withOptions:v29];

        self->_dontUnlockOnButtonUp = 1;
        v16 = v34;
      }
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [(SBHardwareButtonInteraction *)self->_siriButtonInteraction consumeInitialPressDown])
    {
      v30 = SBLogButtonsHome();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = NSStringFromSelector(a2);
        *buf = 138543362;
        v40 = v31;
        v32 = "%{public}@ result: siriButtonInteraction handled it";
LABEL_42:
        _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_INFO, v32, buf, 0xCu);
      }
    }

    else
    {
      v30 = SBLogButtonsHome();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = NSStringFromSelector(a2);
        *buf = 138543362;
        v40 = v31;
        v32 = "%{public}@ result: ignored";
        goto LABEL_42;
      }
    }

    v22 = v35;

    goto LABEL_44;
  }

  v4 = SBLogButtonsHome();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138543362;
    v40 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "%{public}@ result: guided access", buf, 0xCu);
LABEL_45:
  }
}

- (void)performLongPressCancelledActions
{
  v3 = SBLogButtonsHome();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Performing long press cancelled actions", v4, 2u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBHardwareButtonInteraction *)self->_siriButtonInteraction observeLongPressCanceled];
  }
}

- (void)performDoublePressDownActions
{
  v47 = *MEMORY[0x277D85DE8];
  if ([(SBHomeHardwareButtonActions *)self _performButtonPreflightActions])
  {
    if (SBGuidedAccessIsActive())
    {
      v4 = [(SBHardwareButtonService *)self->_hardwareButtonService consumeHomeButtonDoublePressDownWithPriority:300];
      v5 = SBLogButtonsHome();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
      if (v4)
      {
        if (v6)
        {
          v7 = NSStringFromSelector(a2);
          *buf = 138543362;
          v44 = v7;
          v8 = "%{public}@ result: external consumer (at guided-access priority)";
LABEL_13:
          _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
        }
      }

      else if (v6)
      {
        v7 = NSStringFromSelector(a2);
        *buf = 138543362;
        v44 = v7;
        v8 = "%{public}@ result: guided access";
        goto LABEL_13;
      }

      _AXSHandleHomeButtonPressSwallowedForGuidedAccess();
      return;
    }

    v11 = +[SBLockScreenManager sharedInstance];
    [v11 noteMenuButtonDoublePress];

    v42 = 0;
    v12 = [(SBHomeHardwareButtonActions *)self _shouldIgnorePressesDueToProxOrIdle:&v42];
    v9 = v42;
    if (v12)
    {
      v10 = SBLogButtonsHome();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138543618;
        v44 = v13;
        v45 = 2114;
        v46 = v9;
        v14 = "%{public}@ result: ignored because %{public}@";
        v15 = v10;
        v16 = 22;
LABEL_22:
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
      }

LABEL_38:

      goto LABEL_39;
    }

    lockOutController = [SBApp lockOutController];
    isBlocked = [lockOutController isBlocked];

    if (isBlocked)
    {
      v10 = SBLogButtonsHome();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      v13 = NSStringFromSelector(a2);
      *buf = 138543362;
      v44 = v13;
      v14 = "%{public}@ result: blocked";
LABEL_21:
      v15 = v10;
      v16 = 12;
      goto LABEL_22;
    }

    v19 = +[SBSetupManager sharedInstance];
    isInSetupMode = [v19 isInSetupMode];

    if (isInSetupMode)
    {
      v10 = SBLogButtonsHome();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      v13 = NSStringFromSelector(a2);
      *buf = 138543362;
      v44 = v13;
      v14 = "%{public}@ result: in setup mode";
      goto LABEL_21;
    }

    v10 = +[SBUIController sharedInstance];
    v41 = +[SBLockScreenManager sharedInstance];
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

    v23 = +[SBWorkspace mainWorkspace];
    transientOverlayPresentationManager = [v23 transientOverlayPresentationManager];
    v25 = [transientOverlayPresentationManager transientOverlayPresenterForWindowScene:activeDisplayWindowScene];

    bannerManager = [SBApp bannerManager];
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    if ([systemApertureControllerForMainDisplay handleHomeButtonDoublePress])
    {
      v28 = SBLogButtonsHome();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = NSStringFromSelector(a2);
        *buf = 138543362;
        v44 = v29;
        _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_INFO, "%{public}@ result: system aperture controller handled it", buf, 0xCu);
      }

      goto LABEL_35;
    }

    v30 = [bannerManager bannerWindowInWindowScene:activeDisplayWindowScene];
    [v30 windowLevel];
    if ([v25 hasPresentationAboveWindowLevel:?])
    {
    }

    else
    {
      handleHomeButtonDoublePress = [bannerManager handleHomeButtonDoublePress];

      if (handleHomeButtonDoublePress)
      {
        v28 = SBLogButtonsHome();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v32 = NSStringFromSelector(a2);
          *buf = 138543362;
          v44 = v32;
          v33 = "%{public}@ result: banner manager handled it";
LABEL_34:
          _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_INFO, v33, buf, 0xCu);
        }

LABEL_35:

LABEL_36:
        mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
        [mEMORY[0x277D65DD0] emitEvent:1];

LABEL_37:
        goto LABEL_38;
      }
    }

    if ([v25 handleHomeButtonDoublePress])
    {
      v28 = SBLogButtonsHome();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v32 = NSStringFromSelector(a2);
        *buf = 138543362;
        v44 = v32;
        v33 = "%{public}@ result: transient overlay presentation manager handled it";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if ([v41 isUILocked])
    {
      if ([(SBHardwareButtonService *)self->_hardwareButtonService consumeHomeButtonDoublePressDownWithPriority:100])
      {
        v28 = SBLogButtonsHome();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          goto LABEL_35;
        }

        goto LABEL_43;
      }

      lockScreenEnvironment = [v41 lockScreenEnvironment];
      buttonEventsHandler = [lockScreenEnvironment buttonEventsHandler];
      handleHomeButtonDoublePress2 = [buttonEventsHandler handleHomeButtonDoublePress];

      if (handleHomeButtonDoublePress2)
      {
        v28 = SBLogButtonsHome();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          goto LABEL_35;
        }

        v32 = NSStringFromSelector(a2);
        *buf = 138543362;
        v44 = v32;
        v33 = "%{public}@ result: lock-screen view controller handled it";
        goto LABEL_34;
      }
    }

    else
    {
      v35 = +[SBMainSwitcherControllerCoordinator sharedInstance];
      handleHomeButtonDoublePress3 = [v35 handleHomeButtonDoublePress];

      if (handleHomeButtonDoublePress3)
      {
        v28 = SBLogButtonsHome();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          goto LABEL_35;
        }

        v32 = NSStringFromSelector(a2);
        *buf = 138543362;
        v44 = v32;
        v33 = "%{public}@ result: main switcher handled it";
        goto LABEL_34;
      }

      if ([(SBHardwareButtonService *)self->_hardwareButtonService consumeHomeButtonDoublePressDownWithPriority:0])
      {
        v28 = SBLogButtonsHome();
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          goto LABEL_35;
        }

LABEL_43:
        v32 = NSStringFromSelector(a2);
        *buf = 138543362;
        v44 = v32;
        v33 = "%{public}@ result: button consumer app handled it";
        goto LABEL_34;
      }

      if (([v10 handleHomeButtonDoublePressDown]& 1) != 0)
      {
        goto LABEL_36;
      }
    }

    v39 = SBLogButtonsHome();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_INFO, "Nothing handled the double press, so pretending it was a single press...", buf, 2u);
    }

    [(SBHomeHardwareButtonActions *)self performSinglePressUpActions];
    goto LABEL_37;
  }

  v9 = SBLogButtonsHome();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543362;
    v44 = v10;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "%{public}@ result: failed preflight checks", buf, 0xCu);
    goto LABEL_38;
  }

LABEL_39:
}

- (BOOL)_performButtonPreflightActions
{
  v18 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D67A88] object:0];

  mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
  [mEMORY[0x277D65DD0] emitEvent:0];

  [(SBHardwareButtonActionList *)self->_buttonUpActions performQueuedButtonUpActions];
  if (objc_opt_respondsToSelector())
  {
    [(SBHardwareButtonInteraction *)self->_siriButtonInteraction observeFinalPressUp];
  }

  v6 = +[SBTelephonyManager sharedTelephonyManager];
  if ([v6 isInEmergencyCallbackMode] && objc_msgSend(v6, "isEmergencyCallActive"))
  {
    v7 = SBLogButtonsHome();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v16 = 138543362;
      v17 = v8;
      v9 = "%{public}@ result: ECBM enabled and emergency call is active";
LABEL_15:
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, v9, &v16, 0xCu);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v10 = +[SBSetupManager sharedInstance];
  if (![v10 isInSetupMode])
  {

LABEL_12:
    v12 = +[SBSystemGestureManager mainDisplayManager];
    isAnyTouchGestureRunning = [v12 isAnyTouchGestureRunning];

    if (!isAnyTouchGestureRunning)
    {
      v14 = 1;
      goto LABEL_18;
    }

    v7 = SBLogButtonsHome();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v16 = 138543362;
      v17 = v8;
      v9 = "%{public}@ result: system gesture running";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  inCall = [v6 inCall];

  if (!inCall)
  {
    goto LABEL_12;
  }

  v7 = SBLogButtonsHome();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v16 = 138543362;
    v17 = v8;
    v9 = "%{public}@ result: on a call in setup mode";
    goto LABEL_15;
  }

LABEL_16:

  v14 = 0;
LABEL_18:

  return v14;
}

- (void)performFinalButtonUpActions
{
  if ([(SBHomeHardwareButtonActions *)self isButtonDown])
  {
    v3 = SBLogButtonsHome();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Performing up actions", v4, 2u);
    }

    [(SBHomeHardwareButtonActions *)self setButtonDown:0];
    self->_screenWasDimOnMenuDown = 0;
    [(SBHomeHardwareButtonActions *)self _logMenuButtonHoldTime];
    [(SBHardwareButtonActionList *)self->_buttonUpActions performQueuedButtonUpActions];
    [(SBHardwareButtonActionList *)self->_buttonUpPostActions performQueuedButtonUpActions];
    if (objc_opt_respondsToSelector())
    {
      [(SBHardwareButtonInteraction *)self->_siriButtonInteraction observeFinalPressUp];
    }
  }
}

- (void)_logMenuButtonHoldTime
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_menuButtonHoldStartAbsoluteTime != 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    menuButtonHoldStartAbsoluteTime = self->_menuButtonHoldStartAbsoluteTime;
    v5 = SBLogButtonsHome();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = Current - menuButtonHoldStartAbsoluteTime;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "First down to last up processed in %gs", &v6, 0xCu);
    }
  }

  self->_menuButtonHoldStartAbsoluteTime = 0.0;
}

- (id)initWitHomeButtonType:(int64_t)type
{
  v22.receiver = self;
  v22.super_class = SBHomeHardwareButtonActions;
  v4 = [(SBHomeHardwareButtonActions *)&v22 init];
  if (v4)
  {
    v5 = +[SBHardwareButtonService sharedInstance];
    hardwareButtonService = v4->_hardwareButtonService;
    v4->_hardwareButtonService = v5;

    proximitySensorManager = [SBApp proximitySensorManager];
    proximitySensorManager = v4->_proximitySensorManager;
    v4->_proximitySensorManager = proximitySensorManager;

    v4->_homeButtonType = type;
    if (type != 2)
    {
      v9 = +[SBSiriHardwareButtonInteraction hardwareButtonInteractionForHomeButton];
      siriButtonInteraction = v4->_siriButtonInteraction;
      v4->_siriButtonInteraction = v9;

      [(SBHardwareButtonInteraction *)v4->_siriButtonInteraction addHardwareButtonGestureParametersObserver:v4];
      hardwareButtonGestureParameters = [(SBHardwareButtonInteraction *)v4->_siriButtonInteraction hardwareButtonGestureParameters];
      siriGestureParameters = v4->_siriGestureParameters;
      v4->_siriGestureParameters = hardwareButtonGestureParameters;

      v13 = +[SBAccessibilityHardwareButtonInteraction hardwareButtonInteractionForHomeButton];
      accessibilityButtonInteraction = v4->_accessibilityButtonInteraction;
      v4->_accessibilityButtonInteraction = v13;

      [(SBHardwareButtonInteraction *)v4->_accessibilityButtonInteraction addHardwareButtonGestureParametersObserver:v4];
      hardwareButtonGestureParameters2 = [(SBHardwareButtonInteraction *)v4->_accessibilityButtonInteraction hardwareButtonGestureParameters];
      accessibilityGestureParameters = v4->_accessibilityGestureParameters;
      v4->_accessibilityGestureParameters = hardwareButtonGestureParameters2;
    }

    v17 = objc_alloc_init(SBHardwareButtonActionList);
    buttonUpActions = v4->_buttonUpActions;
    v4->_buttonUpActions = v17;

    v19 = objc_alloc_init(SBHardwareButtonActionList);
    buttonUpPostActions = v4->_buttonUpPostActions;
    v4->_buttonUpPostActions = v19;

    SBGuidedAccessPrepare();
  }

  return v4;
}

- (void)configureForwardingToLockButtonActions:(id)actions
{
  if (self->_homeButtonType == 2)
  {
    siriButtonInteraction = [actions siriButtonInteraction];
    v5 = [SBSiriHardwareButtonEventsOnlyButtonInteraction hardwareButtonInteractionForHomeButtonForwardingToInteraction:siriButtonInteraction];
    siriButtonInteraction = self->_siriButtonInteraction;
    self->_siriButtonInteraction = v5;
  }
}

- (void)setButtonDown:(BOOL)down
{
  downCopy = down;
  self->_buttonDown = down;
  [(SBHardwareButtonActionList *)self->_buttonUpActions setButtonDown:?];
  buttonUpPostActions = self->_buttonUpPostActions;

  [(SBHardwareButtonActionList *)buttonUpPostActions setButtonDown:downCopy];
}

- (BOOL)_shouldIgnorePressesDueToProxOrIdle:(id *)idle
{
  *idle = 0;
  if (!self->_screenWasDimOnMenuDown)
  {
    v5 = +[SBBacklightController sharedInstance];
    screenIsDim = [v5 screenIsDim];

    if (!screenIsDim)
    {
      return 0;
    }
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  if ([(SBProximitySensorManager *)self->_proximitySensorManager isObjectInProximity])
  {
    v8 = @"screen was/is dim and object within proximity";
  }

  else
  {
    v9 = +[SBLockScreenManager sharedInstance];
    isUILocked = [v9 isUILocked];

    if (isUILocked)
    {
      return 0;
    }

    v8 = @"screen was/is dim and unlocked";
  }

  *idle = v8;
  return 1;
}

- (void)performSinglePressUpActionsWithSourceType:(unint64_t)type
{
  v135 = *MEMORY[0x277D85DE8];
  if (![(SBHomeHardwareButtonActions *)self _performButtonPreflightActions])
  {
    v11 = SBLogButtonsHome();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138543362;
      v132 = v12;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "%{public}@ result: failed preflight checks", buf, 0xCu);
    }

    goto LABEL_48;
  }

  if (SBGuidedAccessIsActive())
  {
    v6 = [(SBHardwareButtonService *)self->_hardwareButtonService consumeHomeButtonSinglePressUpWithPriority:300];
    v7 = SBLogButtonsHome();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        v9 = NSStringFromSelector(a2);
        *buf = 138543362;
        v132 = v9;
        v10 = "%{public}@ result: external consumer (at guided-access priority)";
LABEL_13:
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
      }
    }

    else if (v8)
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138543362;
      v132 = v9;
      v10 = "%{public}@ result: guided access";
      goto LABEL_13;
    }

    _AXSHandleHomeButtonPressSwallowedForGuidedAccess();
    return;
  }

  v13 = +[SBLockScreenManager sharedInstance];
  [v13 noteMenuButtonSinglePress];

  v11 = +[SBReachabilityManager sharedInstance];
  reachabilityModeActive = [v11 reachabilityModeActive];
  v127 = 0;
  v14 = [(SBHomeHardwareButtonActions *)self _shouldIgnorePressesDueToProxOrIdle:&v127];
  v15 = v127;
  if (v14)
  {
    v16 = SBLogButtonsHome();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138543618;
      v132 = v17;
      v133 = 2114;
      v134 = v15;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "%{public}@ result: ignored because %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v18 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
    unlockedEnvironmentMode = [v18 unlockedEnvironmentMode];

    if (unlockedEnvironmentMode != 3)
    {
      goto LABEL_18;
    }

    v16 = +[SBWallpaperController sharedInstance];
    [v16 preheatWallpaperForVariant:1];
  }

LABEL_18:
  v121 = v11;
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  v119 = systemApertureControllerForMainDisplay;
  if (v14)
  {
    v21 = v15;
    v22 = 1;
    goto LABEL_32;
  }

  if (![systemApertureControllerForMainDisplay handleHomeButtonPress])
  {
    lockOutController = [SBApp lockOutController];
    if (![lockOutController isProximityReaderBlocked])
    {
      v22 = 0;
      goto LABEL_31;
    }

    systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
    proximityReaderUISceneController = [systemUIScenesCoordinator proximityReaderUISceneController];
    handleHomeButtonPress = [proximityReaderUISceneController handleHomeButtonPress];
    v22 = handleHomeButtonPress;
    if (handleHomeButtonPress)
    {
      v27 = v15;
      v28 = SBLogButtonsHome();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v117 = NSStringFromSelector(a2);
        *buf = 138543362;
        v132 = v117;
        _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_INFO, "%{public}@ result: Proximity reader handled it", buf, 0xCu);
      }

      v15 = v27;
    }

    goto LABEL_29;
  }

  lockOutController = SBLogButtonsHome();
  v22 = 1;
  if (os_log_type_enabled(lockOutController, OS_LOG_TYPE_INFO))
  {
    systemUIScenesCoordinator = NSStringFromSelector(a2);
    *buf = 138543362;
    v132 = systemUIScenesCoordinator;
    _os_log_impl(&dword_21ED4E000, lockOutController, OS_LOG_TYPE_INFO, "%{public}@ result: system aperture controller wants home button", buf, 0xCu);
LABEL_29:
  }

LABEL_31:
  v21 = v15;

LABEL_32:
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  v31 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v31 transientOverlayPresentationManager];
  v33 = [transientOverlayPresentationManager transientOverlayPresenterForWindowScene:activeDisplayWindowScene];

  bannerManager = [SBApp bannerManager];
  v35 = bannerManager;
  v36 = v21;
  if ((v22 & 1) == 0)
  {
    v37 = [bannerManager bannerWindowInWindowScene:activeDisplayWindowScene];
    [v37 windowLevel];
    v118 = v35;
    if ([v33 hasPresentationAboveWindowLevel:?])
    {
    }

    else
    {
      handleHomeButtonPress2 = [v35 handleHomeButtonPress];

      if (handleHomeButtonPress2)
      {
        v39 = SBLogButtonsHome();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = NSStringFromSelector(a2);
          *buf = 138543362;
          v132 = v40;
          v41 = "%{public}@ result: banner manager wants home button";
LABEL_41:
          _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_INFO, v41, buf, 0xCu);
        }

LABEL_42:
        v35 = v118;

        goto LABEL_43;
      }
    }

    commandTabController = [activeDisplayWindowScene commandTabController];
    isVisible = [commandTabController isVisible];

    if (isVisible)
    {
      commandTabController2 = [activeDisplayWindowScene commandTabController];
      [commandTabController2 dismiss];

      v39 = SBLogButtonsHome();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = NSStringFromSelector(a2);
        *buf = 138543362;
        v132 = v40;
        v41 = "%{public}@ result: dismissing command-tab UI";
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    controlCenterController = [activeDisplayWindowScene controlCenterController];
    _controlCenterWindow = [controlCenterController _controlCenterWindow];
    [_controlCenterWindow windowLevel];
    if ([v33 hasPresentationAboveWindowLevel:?])
    {
    }

    else
    {
      handleMenuButtonTap = [controlCenterController handleMenuButtonTap];

      if (handleMenuButtonTap)
      {
        v49 = SBLogButtonsHome();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = NSStringFromSelector(a2);
          *buf = 138543362;
          v132 = v50;
          _os_log_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_INFO, "%{public}@ result: control center handled it", buf, 0xCu);
        }

        v35 = v118;
        goto LABEL_44;
      }
    }

    assistantController = [activeDisplayWindowScene assistantController];
    window = [assistantController window];
    [window windowLevel];
    if (([v33 hasPresentationAboveWindowLevel:?] & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
    }

    else
    {
      consumeSinglePressUp = [(SBHardwareButtonInteraction *)self->_siriButtonInteraction consumeSinglePressUp];

      if (consumeSinglePressUp)
      {
        v53 = SBLogButtonsHome();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = NSStringFromSelector(a2);
          *buf = 138543362;
          v132 = v54;
          _os_log_impl(&dword_21ED4E000, v53, OS_LOG_TYPE_INFO, "%{public}@ result: assistant handled it", buf, 0xCu);
        }

        assistantController2 = assistantController;
        v35 = v118;
        goto LABEL_45;
      }
    }

    v113 = controlCenterController;
    v55 = v36;
    v56 = +[SBLockScreenManager sharedInstance];
    v57 = +[SBLockScreenManager sharedInstance];
    lockScreenEnvironment = [v57 lockScreenEnvironment];
    buttonEventsHandler = [lockScreenEnvironment buttonEventsHandler];

    v115 = v56;
    if ([v56 handlesHomeButtonSinglePresses])
    {
      v36 = v55;
      if (self->_dontUnlockOnButtonUp)
      {
        v59 = SBLogButtonsHome();
        v60 = buttonEventsHandler;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v61 = NSStringFromSelector(a2);
          *buf = 138543362;
          v132 = v61;
          v62 = "%{public}@ result: ignored because we don't unlock on button up";
LABEL_102:
          _os_log_impl(&dword_21ED4E000, v59, OS_LOG_TYPE_INFO, v62, buf, 0xCu);

          goto LABEL_103;
        }

        goto LABEL_103;
      }

      v60 = buttonEventsHandler;
      if ([(SBHardwareButtonService *)self->_hardwareButtonService consumeHomeButtonSinglePressUpWithPriority:100])
      {
        transientOverlayPresentationManager2 = SBLogButtonsHome();
        if (os_log_type_enabled(transientOverlayPresentationManager2, OS_LOG_TYPE_INFO))
        {
          v83 = NSStringFromSelector(a2);
          *buf = 138543362;
          v132 = v83;
          v84 = "%{public}@ result: button consumer app handled it";
          v85 = transientOverlayPresentationManager2;
          v86 = 12;
LABEL_85:
          _os_log_impl(&dword_21ED4E000, v85, OS_LOG_TYPE_INFO, v84, buf, v86);
        }
      }

      else
      {
        v92 = +[SBWorkspace mainWorkspace];
        transientOverlayPresentationManager2 = [v92 transientOverlayPresentationManager];

        if ([transientOverlayPresentationManager2 handleHomeButtonPress])
        {
          v93 = SBLogButtonsHome();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            v94 = NSStringFromSelector(a2);
            *buf = 138543362;
            v132 = v94;
            _os_log_impl(&dword_21ED4E000, v93, OS_LOG_TYPE_INFO, "%{public}@ result: Transient overlay presentation manager handled it", buf, 0xCu);
          }

          goto LABEL_99;
        }

        if (![buttonEventsHandler handleHomeButtonPress])
        {
          v101 = +[SBAlertItemsController sharedInstance];
          hasLockScreenModalAlert = [v101 hasLockScreenModalAlert];

          if ((hasLockScreenModalAlert & 1) == 0)
          {
            v103 = SBLogButtonsHome();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
            {
              v104 = NSStringFromSelector(a2);
              *buf = 138543362;
              v132 = v104;
              _os_log_impl(&dword_21ED4E000, v103, OS_LOG_TYPE_INFO, "%{public}@ result: attempting unlock with home button source", buf, 0xCu);
            }

            v112 = v33;

            v59 = +[SBBacklightController sharedInstance];
            v105 = +[SBScreenWakeAnimationController sharedInstance];
            screenIsOn = [v59 screenIsOn];
            if (screenIsOn && ![v105 isSleepAnimationInProgress])
            {
              v107 = 0;
            }

            else
            {
              v107 = [v105 isWakeAnimationInProgress] ^ 1;
            }

            v129[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
            v108 = [MEMORY[0x277CCABB0] numberWithBool:screenIsOn ^ 1u];
            v130[0] = v108;
            v129[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
            v109 = [MEMORY[0x277CCABB0] numberWithBool:v107];
            v130[1] = v109;
            v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:2];
            [v115 unlockUIFromSource:15 withOptions:v110];

            v33 = v112;
            v60 = buttonEventsHandler;
            goto LABEL_103;
          }

LABEL_100:
          v59 = SBLogButtonsHome();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            v61 = NSStringFromSelector(a2);
            *buf = 138543362;
            v132 = v61;
            v62 = "%{public}@ result: ignored because there's a lock screen modal alert";
            goto LABEL_102;
          }

LABEL_103:

          self->_dontUnlockOnButtonUp = 0;
          goto LABEL_104;
        }

        transientOverlayPresentationManager2 = SBLogButtonsHome();
        if (os_log_type_enabled(transientOverlayPresentationManager2, OS_LOG_TYPE_INFO))
        {
          v83 = NSStringFromSelector(a2);
          *buf = 138543618;
          v132 = v83;
          v133 = 2114;
          v134 = buttonEventsHandler;
          v84 = "%{public}@ result: CoverSheet (%{public}@) handled it";
          v85 = transientOverlayPresentationManager2;
          v86 = 22;
          goto LABEL_85;
        }
      }

LABEL_99:

      goto LABEL_100;
    }

    v111 = v33;
    v63 = +[SBAssistantController sharedInstance];
    contentObscuresEmbeddedDisplayScreen = [v63 contentObscuresEmbeddedDisplayScreen];

    v36 = v55;
    if ((contentObscuresEmbeddedDisplayScreen & 1) == 0)
    {
      v65 = +[SBAssistantController sharedInstance];
      [v65 dismissAssistantViewInEverySceneIfNecessary];
    }

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    windowSceneManager2 = [SBApp windowSceneManager];
    connectedWindowScenes = [windowSceneManager2 connectedWindowScenes];

    v68 = [connectedWindowScenes countByEnumeratingWithState:&v123 objects:v128 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v124;
LABEL_70:
      v71 = 0;
      while (1)
      {
        if (*v124 != v70)
        {
          objc_enumerationMutation(connectedWindowScenes);
        }

        v72 = *(*(&v123 + 1) + 8 * v71);
        if ([v72 isMainDisplayWindowScene])
        {
          break;
        }

        if (v69 == ++v71)
        {
          v69 = [connectedWindowScenes countByEnumeratingWithState:&v123 objects:v128 count:16];
          if (v69)
          {
            goto LABEL_70;
          }

          goto LABEL_87;
        }
      }

      v73 = v36;
      modalLibraryController = [v72 modalLibraryController];
      layoutStateProvider = [v72 layoutStateProvider];
      layoutState = [layoutStateProvider layoutState];
      unlockedEnvironmentMode2 = [layoutState unlockedEnvironmentMode];

      if ((unlockedEnvironmentMode2 & 0xFFFFFFFFFFFFFFFELL) != 2 || ![modalLibraryController isPresentingLibraryInForeground])
      {

        v36 = v73;
        goto LABEL_87;
      }

      v78 = modalLibraryController;
      libraryViewController = [modalLibraryController libraryViewController];
      [libraryViewController popPresentationState];

      v80 = SBLogButtonsHome();
      v11 = v121;
      v36 = v73;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v81 = NSStringFromSelector(a2);
        *buf = 138543362;
        v132 = v81;
        _os_log_impl(&dword_21ED4E000, v80, OS_LOG_TYPE_INFO, "%{public}@ result: Library view controller handled it", buf, 0xCu);
      }

      v33 = v111;
      v60 = buttonEventsHandler;
      goto LABEL_104;
    }

LABEL_87:

    v87 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    handleHomeButtonPress3 = [v87 handleHomeButtonPress];

    if (handleHomeButtonPress3)
    {
      v89 = SBLogButtonsHome();
      v11 = v121;
      v33 = v111;
      v60 = buttonEventsHandler;
      if (!os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
LABEL_94:

LABEL_104:
        assistantController2 = assistantController;
        v35 = v118;
        controlCenterController = v113;
        goto LABEL_45;
      }

      v90 = NSStringFromSelector(a2);
      *buf = 138543362;
      v132 = v90;
      v91 = "%{public}@ result: SBMainSwitcherCoordinator handled it";
    }

    else
    {
      v11 = v121;
      v33 = v111;
      v60 = buttonEventsHandler;
      if (![(SBHardwareButtonService *)self->_hardwareButtonService consumeHomeButtonSinglePressUpWithPriority:0])
      {
        v95 = +[SBUIController sharedInstance];
        v96 = [v95 handleHomeButtonSinglePressUpForWindowScene:activeDisplayWindowScene withSourceType:type];

        if ((v96 & 1) == 0)
        {
          v97 = SBLogButtonsHome();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            v98 = NSStringFromSelector(a2);
            *buf = 138543362;
            v132 = v98;
            _os_log_impl(&dword_21ED4E000, v97, OS_LOG_TYPE_INFO, "%{public}@ result: SBUIController is busy - queued the home button event for later processing", buf, 0xCu);
          }

          v122[0] = MEMORY[0x277D85DD0];
          v122[1] = 3221225472;
          v122[2] = __73__SBHomeHardwareButtonActions_performSinglePressUpActionsWithSourceType___block_invoke;
          v122[3] = &unk_2783A8BC8;
          v122[4] = self;
          v122[5] = type;
          v99 = [MEMORY[0x277D0AB18] eventWithName:@"HandleMenuButton" handler:v122];
          mEMORY[0x277D0AB20] = [MEMORY[0x277D0AB20] sharedInstance];
          [mEMORY[0x277D0AB20] cancelEventsWithName:@"HandleMenuButton"];
          [mEMORY[0x277D0AB20] executeOrAppendEvent:v99];
        }

        goto LABEL_104;
      }

      v89 = SBLogButtonsHome();
      if (!os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        goto LABEL_94;
      }

      v90 = NSStringFromSelector(a2);
      *buf = 138543362;
      v132 = v90;
      v91 = "%{public}@ result: button consumer app handled it";
    }

    _os_log_impl(&dword_21ED4E000, v89, OS_LOG_TYPE_INFO, v91, buf, 0xCu);

    goto LABEL_94;
  }

LABEL_43:
  controlCenterController = [activeDisplayWindowScene controlCenterController];
LABEL_44:
  assistantController2 = [activeDisplayWindowScene assistantController];
LABEL_45:
  if (reachabilityModeActive)
  {
    [v11 deactivateReachability];
  }

LABEL_48:
}

- (void)performLongPressActions
{
  v39 = *MEMORY[0x277D85DE8];
  if (!SBGuidedAccessIsActive())
  {
    lockOutController = [SBApp lockOutController];
    v9 = +[SBLockScreenManager sharedInstance];
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

    v12 = +[SBWorkspace mainWorkspace];
    transientOverlayPresentationManager = [v12 transientOverlayPresentationManager];
    v36 = [transientOverlayPresentationManager transientOverlayPresenterForWindowScene:activeDisplayWindowScene];

    bannerManager = [SBApp bannerManager];
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    v35 = v9;
    isUILocked = [v9 isUILocked];
    v17 = +[SBWorkspace mainWorkspace];
    if ([v17 isPowerDownTransientOverlayTopmost])
    {
      isLockedOut = [lockOutController isLockedOut];

      if ((isLockedOut & 1) == 0)
      {
        v19 = SBLogButtonsHome();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = NSStringFromSelector(a2);
          *buf = 138543362;
          v38 = v20;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "%{public}@ result: dismissing powerdown", buf, 0xCu);
        }

        mEMORY[0x277D65DD0] = +[SBWorkspace mainWorkspace];
        [mEMORY[0x277D65DD0] dismissPowerDownTransientOverlayWithCompletion:&__block_literal_global_113];
        goto LABEL_39;
      }
    }

    else
    {
    }

    if ([systemApertureControllerForMainDisplay handleHomeButtonLongPress])
    {
      mEMORY[0x277D65DD0] = SBLogButtonsHome();
      if (os_log_type_enabled(mEMORY[0x277D65DD0], OS_LOG_TYPE_INFO))
      {
        v22 = NSStringFromSelector(a2);
        *buf = 138543362;
        v38 = v22;
        v23 = "%{public}@ result: system aperture controller handled it";
LABEL_38:
        _os_log_impl(&dword_21ED4E000, mEMORY[0x277D65DD0], OS_LOG_TYPE_INFO, v23, buf, 0xCu);

        goto LABEL_39;
      }

      goto LABEL_39;
    }

    v24 = [bannerManager bannerWindowInWindowScene:activeDisplayWindowScene];
    [v24 windowLevel];
    if ([v36 hasPresentationAboveWindowLevel:?])
    {
    }

    else
    {
      handleHomeButtonLongPress = [bannerManager handleHomeButtonLongPress];

      if (handleHomeButtonLongPress)
      {
        mEMORY[0x277D65DD0] = SBLogButtonsHome();
        if (os_log_type_enabled(mEMORY[0x277D65DD0], OS_LOG_TYPE_INFO))
        {
          v22 = NSStringFromSelector(a2);
          *buf = 138543362;
          v38 = v22;
          v23 = "%{public}@ result: banner manager handled it";
          goto LABEL_38;
        }

LABEL_39:

        goto LABEL_40;
      }
    }

    if (!isUILocked || ([v35 lockScreenEnvironment], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "buttonEventsHandler"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "handleHomeButtonLongPress"), v27, v26, (v28 & 1) == 0))
    {
      v29 = +[SBMainSwitcherControllerCoordinator sharedInstance];
      handleHomeButtonLongPress2 = [v29 handleHomeButtonLongPress];

      if (handleHomeButtonLongPress2)
      {
        v31 = SBLogButtonsHome();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = NSStringFromSelector(a2);
          *buf = 138543362;
          v38 = v32;
          v33 = "%{public}@ result: main switcher handled it";
LABEL_30:
          _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_INFO, v33, buf, 0xCu);

          goto LABEL_31;
        }

        goto LABEL_31;
      }

      if ([(SBHardwareButtonService *)self->_hardwareButtonService consumeHomeButtonLongPressWithPriority:0])
      {
        v31 = SBLogButtonsHome();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = NSStringFromSelector(a2);
          *buf = 138543362;
          v38 = v32;
          v33 = "%{public}@ result: external consumer (at normal priority)";
          goto LABEL_30;
        }

LABEL_31:

        commandTabController = [activeDisplayWindowScene commandTabController];
        [commandTabController dismiss];

        mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
        [mEMORY[0x277D65DD0] emitEvent:2];
        goto LABEL_39;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [(SBHardwareButtonInteraction *)self->_siriButtonInteraction consumeLongPress])
      {
        v31 = SBLogButtonsHome();
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          goto LABEL_31;
        }

        v32 = NSStringFromSelector(a2);
        *buf = 138543362;
        v38 = v32;
        v33 = "%{public}@ result: siriButtonInteraction handled it";
        goto LABEL_30;
      }
    }

    mEMORY[0x277D65DD0] = SBLogButtonsHome();
    if (os_log_type_enabled(mEMORY[0x277D65DD0], OS_LOG_TYPE_INFO))
    {
      v22 = NSStringFromSelector(a2);
      *buf = 138543362;
      v38 = v22;
      v23 = "%{public}@ result: ignored because nothing handled it";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v4 = [(SBHardwareButtonService *)self->_hardwareButtonService consumeHomeButtonLongPressWithPriority:300];
  lockOutController = SBLogButtonsHome();
  v6 = os_log_type_enabled(lockOutController, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138543362;
      v38 = v7;
      v8 = "%{public}@ result: external consumer (at guided-access priority)";
LABEL_12:
      _os_log_impl(&dword_21ED4E000, lockOutController, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
    }
  }

  else if (v6)
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543362;
    v38 = v7;
    v8 = "%{public}@ result: guided access";
    goto LABEL_12;
  }

LABEL_40:
}

- (void)performTriplePressUpActions
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SBHomeHardwareButtonActions *)self _performButtonPreflightActions])
  {
    v13 = 0;
    v4 = [(SBHomeHardwareButtonActions *)self _shouldIgnorePressesDueToProxOrIdle:&v13];
    v5 = v13;
    if (v4)
    {
      v6 = SBLogButtonsHome();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(a2);
        *buf = 138543618;
        v15 = v7;
        v16 = 2114;
        v17 = v5;
        v8 = "%{public}@ result: ignored because %{public}@";
        v9 = v6;
        v10 = 22;
LABEL_21:
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, v8, buf, v10);
      }

LABEL_22:

      goto LABEL_23;
    }

    IsActive = SBGuidedAccessIsActive();
    hardwareButtonService = self->_hardwareButtonService;
    if (IsActive)
    {
      if ([(SBHardwareButtonService *)hardwareButtonService consumeHomeButtonTriplePressUpWithPriority:300])
      {
        v6 = SBLogButtonsHome();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_22;
        }

        v7 = NSStringFromSelector(a2);
        *buf = 138543362;
        v15 = v7;
        v8 = "%{public}@ result: external consumer (at guided-access priority)";
LABEL_20:
        v9 = v6;
        v10 = 12;
        goto LABEL_21;
      }
    }

    else if ([(SBHardwareButtonService *)hardwareButtonService consumeHomeButtonTriplePressUpWithPriority:0])
    {
      v6 = SBLogButtonsHome();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v7 = NSStringFromSelector(a2);
      *buf = 138543362;
      v15 = v7;
      v8 = "%{public}@ result: external consumer";
      goto LABEL_20;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [(SBHardwareButtonInteraction *)self->_accessibilityButtonInteraction consumeTriplePressUp])
    {
      v6 = SBLogButtonsHome();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v7 = NSStringFromSelector(a2);
      *buf = 138543362;
      v15 = v7;
      v8 = "%{public}@ result: accessibility handled it";
    }

    else
    {
      v6 = SBLogButtonsHome();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v7 = NSStringFromSelector(a2);
      *buf = 138543362;
      v15 = v7;
      v8 = "%{public}@ result: ignored";
    }

    goto LABEL_20;
  }

  v5 = SBLogButtonsHome();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "%{public}@ result: failed preflight checks", buf, 0xCu);
    goto LABEL_22;
  }

LABEL_23:
}

- (void)performDoubleTapUpActions
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = SBLogButtonsHome();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Performing double tap up actions", &v10, 2u);
  }

  if (+[SBReachabilityManager reachabilitySupported](SBReachabilityManager, "reachabilitySupported") && (+[SBReachabilityManager sharedInstance](SBReachabilityManager, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 reachabilityEnabled], v4, v5))
  {
    v6 = +[SBReachabilityManager sharedInstance];
    [v6 toggleReachability];

    v7 = SBLogButtonsHome();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v10 = 138543362;
      v11 = v8;
      v9 = "%{public}@ result: reachability handled it";
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, v9, &v10, 0xCu);
    }
  }

  else
  {
    v7 = SBLogButtonsHome();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v10 = 138543362;
      v11 = v8;
      v9 = "%{public}@ result: double-tap ignored because reachability is disabled";
      goto LABEL_9;
    }
  }
}

- (void)performWhenMenuButtonIsUpUsingBlock:(id)block
{
  if (block)
  {
    [(SBHardwareButtonActionList *)self->_buttonUpActions scheduleButtonUpActionBlock:?];
  }
}

- (void)performAfterMenuButtonUpIsHandledUsingBlock:(id)block
{
  if (block)
  {
    [(SBHardwareButtonActionList *)self->_buttonUpPostActions scheduleButtonUpActionBlock:?];
  }
}

- (id)hardwareButtonGestureParameters
{
  v3 = objc_alloc_init(SBMutableHardwareButtonGestureParameters);
  v4 = v3;
  if (self->_homeButtonType == 2)
  {
    [(SBMutableHardwareButtonGestureParameters *)v3 setMaximumPressCount:2];
    [(SBMutableHardwareButtonGestureParameters *)v4 setMultiplePressTimeInterval:0.3];
    v5 = 0.4;
  }

  else
  {
    [(SBMutableHardwareButtonGestureParameters *)v3 setMaximumPressCount:[(SBHardwareButtonGestureParameters *)self->_accessibilityGestureParameters maximumPressCount]];
    [(SBHardwareButtonGestureParameters *)self->_accessibilityGestureParameters multiplePressTimeInterval];
    [(SBMutableHardwareButtonGestureParameters *)v4 setMultiplePressTimeInterval:?];
    [(SBHardwareButtonGestureParameters *)self->_siriGestureParameters longPressTimeInterval];
  }

  [(SBMutableHardwareButtonGestureParameters *)v4 setLongPressTimeInterval:v5];

  return v4;
}

- (void)provider:(id)provider didUpdateButtonGestureParameters:(id)parameters
{
  providerCopy = provider;
  parametersCopy = parameters;
  if (self->_accessibilityButtonInteraction == providerCopy)
  {
    v8 = SBLogButtonsHome();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "reconfiguring due to AX prefs change", buf, 2u);
    }

    objc_storeStrong(&self->_accessibilityGestureParameters, parameters);
  }

  if (self->_siriButtonInteraction == providerCopy)
  {
    v9 = SBLogButtonsHome();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "reconfiguring due to Siri prefs change", v11, 2u);
    }

    objc_storeStrong(&self->_siriGestureParameters, parameters);
  }

  hardwareButtonGestureParameters = [(SBHomeHardwareButtonActions *)self hardwareButtonGestureParameters];
  [(SBHardwareButtonGestureParametersProviderBase *)self publishUpdatedParameters:hardwareButtonGestureParameters];
}

@end
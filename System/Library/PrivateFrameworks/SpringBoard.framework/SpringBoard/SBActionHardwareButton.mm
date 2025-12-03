@interface SBActionHardwareButton
+ (SBActionHardwareButton)new;
- (SBActionHardwareButton)init;
- (id)_dateFromMachAbsoluteTimestamp:(uint64_t)timestamp;
- (uint64_t)_sendActionButtonDownToSceneOverride;
- (uint64_t)handleRingerButtonEvent:(uint64_t)result;
- (void)_configureButtonArbiter;
- (void)_performActionForEvent:(uint64_t)event interactionTime:(uint64_t)time;
- (void)cancelHardwareButtonPress;
- (void)initWithSystemActionControl:(void *)control suppressionManager:;
- (void)performActionsForButtonDown:(id)down;
- (void)performActionsForButtonLongPress:(id)press;
- (void)performActionsForButtonUp:(id)up;
- (void)setParameters:(uint64_t)parameters;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)systemActionControlDidUpdateActionInteractionConfiguration:(id)configuration;
- (void)systemActionSuppressionManager:(id)manager didUpdateSuppressionStatus:(id)status;
@end

@implementation SBActionHardwareButton

- (void)_configureButtonArbiter
{
  if (self)
  {
    suppressionStatus = [(SBSystemActionSuppressionManager *)*(self + 32) suppressionStatus];
    workspace = [(SBCameraActivationManager *)suppressionStatus workspace];
    v4 = *(self + 8);
    if (v4)
    {
      v5 = 8;
      if (workspace == 1)
      {
        v5 = 16;
      }

      v6 = *(v4 + v5);
    }

    else
    {
      v6 = 0.0;
    }

    [*(self + 88) setLongPressTimeout:v6];
    v7 = SBLogButtonsAction();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_17();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }
}

- (SBActionHardwareButton)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"nope"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"SBActionHardwareButton.m";
    v17 = 1024;
    v18 = 109;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (SBActionHardwareButton)new
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"nope"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"SBActionHardwareButton.m";
    v17 = 1024;
    v18 = 113;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)initWithSystemActionControl:(void *)control suppressionManager:
{
  v5 = a2;
  controlCopy = control;
  if (self)
  {
    if ((SBUIHasHIDRingerButton() & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
    {
      [SBActionHardwareButton initWithSystemActionControl:self suppressionManager:?];
    }

    if (!v5)
    {
      [SBActionHardwareButton initWithSystemActionControl:? suppressionManager:?];
    }

    v9.receiver = self;
    v9.super_class = SBActionHardwareButton;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      [(SBActionHardwareButton *)v7 initWithSystemActionControl:v5 suppressionManager:controlCopy];
    }
  }

  return self;
}

- (uint64_t)handleRingerButtonEvent:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (IOHIDEventGetType() != 3)
    {
      [SBActionHardwareButton handleRingerButtonEvent:?];
    }

    if (IOHIDEventGetIntegerValue() != 11)
    {
      [SBActionHardwareButton handleRingerButtonEvent:?];
    }

    if (IOHIDEventGetIntegerValue() != 45)
    {
      [SBActionHardwareButton handleRingerButtonEvent:?];
    }

    v4 = *(v3 + 88);

    return [v4 processEvent:a2];
  }

  return result;
}

- (void)_performActionForEvent:(uint64_t)event interactionTime:(uint64_t)time
{
  if (!event)
  {
    return;
  }

  v21 = *(event + 24);
  suppressionStatus = [(SBSystemActionSuppressionManager *)*(event + 32) suppressionStatus];
  if (time <= 1)
  {
    if (time)
    {
      if (time != 1)
      {
        goto LABEL_11;
      }

      v11 = [SBActionHardwareButton _dateFromMachAbsoluteTimestamp:event];
      v18 = [[SBSystemActionInteractionContext alloc] initWithPreciseTimestamp:v11 type:1 suppressionStatus:suppressionStatus];
      v19 = [(SBSystemActionControl *)v21 performSelectedActionFromSource:v18 withContext:?];
      v20 = *(event + 72);
      *(event + 72) = v19;
    }

    else
    {
      v6 = +[SBSystemActionAnalyticsTracker sharedTracker];
      BSMonotonicReferencedTimeFromMachTime();
      [(SBSystemActionAnalyticsTracker *)v6 trackPressDownForLatencyMeasurement:v7];

      v8 = *(event + 32);
      [*(event + 88) longPressTimeout];
      [(SBSystemActionSuppressionManager *)v8 systemActionInteractionDidStartWithLongPressTimeout:v9];
      v10 = [(SBSystemActionControl *)v21 previewSelectedActionFromSource:suppressionStatus withSuppressionStatus:?];
      v11 = *(event + 64);
      *(event + 64) = v10;
    }

    goto LABEL_10;
  }

  if (time == 2)
  {
    v5 = 0;
    goto LABEL_9;
  }

  if (time == 3)
  {
    v5 = 1;
LABEL_9:
    v12 = +[SBSystemActionAnalyticsTracker sharedTracker];
    v13 = *(event + 72) != 0;
    selectedActionAnalyticsData = [(SBSystemActionControl *)*(event + 24) selectedActionAnalyticsData];
    v16 = v15;
    [(SBSystemActionAnalyticsTracker *)v12 trackPressUpForLatencyMeasurement:suppressionStatus cancelled:v5 longPressTriggered:v13 selectedActionIdentifier:selectedActionAnalyticsData];

    [*(event + 64) invalidate];
    v17 = *(event + 64);
    *(event + 64) = 0;

    [*(event + 72) invalidate];
    v11 = *(event + 72);
    *(event + 72) = 0;
LABEL_10:
  }

LABEL_11:
}

- (void)performActionsForButtonDown:(id)down
{
  v19 = *MEMORY[0x277D85DE8];
  downCopy = down;
  if (self->_buttonActiveAssertion)
  {
    defaultCenter = SBLogButtonsAction();
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEFAULT))
    {
      pressSequence = [(SBHIDButtonStateArbiter *)self->_buttonArbiter pressSequence];
      v17 = 67109120;
      v18 = pressSequence;
      _os_log_impl(&dword_21ED4E000, defaultCenter, OS_LOG_TYPE_DEFAULT, "button down (sq%d): skipping; already handled", &v17, 8u);
    }
  }

  else
  {
    hardwareButtonCoordinator = self->_hardwareButtonCoordinator;
    hardwareButtonIdentifier = [(SBActionHardwareButton *)self hardwareButtonIdentifier];
    v9 = [(SBHardwareButtonCoordinator *)hardwareButtonCoordinator assertButtonIsActive:hardwareButtonIdentifier dropletHintIdentifier:8];
    buttonActiveAssertion = self->_buttonActiveAssertion;
    self->_buttonActiveAssertion = v9;

    v11 = [(SBHardwareButtonCoordinator *)self->_hardwareButtonCoordinator buttonShouldStart:@"Action"];
    self->_inhibitActions = !v11;
    if (!v11)
    {
      goto LABEL_6;
    }

    _sendActionButtonDownToSceneOverride = [(SBActionHardwareButton *)self _sendActionButtonDownToSceneOverride];
    v13 = SBLogButtonsAction();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (_sendActionButtonDownToSceneOverride)
    {
      if (v14)
      {
        pressSequence2 = [(SBHIDButtonStateArbiter *)self->_buttonArbiter pressSequence];
        v17 = 67109120;
        v18 = pressSequence2;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "button down (sq%d): sent to scene override", &v17, 8u);
      }
    }

    else
    {
      if (v14)
      {
        pressSequence3 = [(SBHIDButtonStateArbiter *)self->_buttonArbiter pressSequence];
        v17 = 67109120;
        v18 = pressSequence3;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "button down (sq%d): performing action", &v17, 8u);
      }

      [downCopy downTime];
      [SBActionHardwareButton _performActionForEvent:0 interactionTime:?];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D679D8] object:0];
  }

LABEL_6:
}

- (void)performActionsForButtonLongPress:(id)press
{
  v14 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  if (!self->_inhibitActions)
  {
    if (self->_systemActionPerformedInteractionAssertion)
    {
      v5 = SBLogButtonsAction();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        pressSequence = [(SBHIDButtonStateArbiter *)self->_buttonArbiter pressSequence];
        v12 = 67109120;
        v13 = pressSequence;
        v7 = "long press (sq%d): skipping; already handled";
LABEL_8:
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, v7, &v12, 8u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    overrideButtonUpHandler = self->_overrideButtonUpHandler;
    v5 = SBLogButtonsAction();
    v9 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (overrideButtonUpHandler)
    {
      if (v9)
      {
        pressSequence2 = [(SBHIDButtonStateArbiter *)self->_buttonArbiter pressSequence];
        v12 = 67109120;
        v13 = pressSequence2;
        v7 = "long press (sq%d): skipping due to override handler";
        goto LABEL_8;
      }

LABEL_9:

      goto LABEL_10;
    }

    if (v9)
    {
      pressSequence3 = [(SBHIDButtonStateArbiter *)self->_buttonArbiter pressSequence];
      v12 = 67109120;
      v13 = pressSequence3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "long press (sq%d): performing action", &v12, 8u);
    }

    [pressCopy downTime];
    [SBActionHardwareButton _performActionForEvent:1 interactionTime:?];
  }

LABEL_10:
}

- (void)performActionsForButtonUp:(id)up
{
  v14 = *MEMORY[0x277D85DE8];
  upCopy = up;
  [(BSInvalidatable *)self->_buttonActiveAssertion invalidate];
  buttonActiveAssertion = self->_buttonActiveAssertion;
  self->_buttonActiveAssertion = 0;

  if (!self->_inhibitActions)
  {
    overrideButtonUpHandler = self->_overrideButtonUpHandler;
    v7 = SBLogButtonsAction();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (overrideButtonUpHandler)
    {
      if (v8)
      {
        pressSequence = [(SBHIDButtonStateArbiter *)self->_buttonArbiter pressSequence];
        v12 = 67109120;
        v13 = pressSequence;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "button up (sq%d): invoking override", &v12, 8u);
      }

      [(SBPhysicalButtonCompletionHandling *)self->_overrideButtonUpHandler completeWithResult:0];
      v10 = self->_overrideButtonUpHandler;
      self->_overrideButtonUpHandler = 0;
    }

    else
    {
      if (v8)
      {
        pressSequence2 = [(SBHIDButtonStateArbiter *)self->_buttonArbiter pressSequence];
        v12 = 67109120;
        v13 = pressSequence2;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "button up (sq%d): performing action", &v12, 8u);
      }

      [upCopy downTime];
      [SBActionHardwareButton _performActionForEvent:2 interactionTime:?];
    }
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settings = self->_settings;
  if (settings == settings)
  {
    [SBActionHardwareButton settings:self changedValueForKey:?];
  }
}

- (void)cancelHardwareButtonPress
{
  v11 = *MEMORY[0x277D85DE8];
  self->_inhibitActions = 1;
  overrideButtonUpHandler = self->_overrideButtonUpHandler;
  v4 = SBLogButtonsAction();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (overrideButtonUpHandler)
  {
    if (v5)
    {
      pressSequence = [(SBHIDButtonStateArbiter *)self->_buttonArbiter pressSequence];
      v9 = 67109120;
      v10 = pressSequence;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "button cancelled (sq%d): invoking override", &v9, 8u);
    }

    [(SBPhysicalButtonCompletionHandling *)self->_overrideButtonUpHandler completeWithResult:1];
    v7 = self->_overrideButtonUpHandler;
    self->_overrideButtonUpHandler = 0;
  }

  else
  {
    if (v5)
    {
      pressSequence2 = [(SBHIDButtonStateArbiter *)self->_buttonArbiter pressSequence];
      v9 = 67109120;
      v10 = pressSequence2;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "button cancelled (sq%d): performing action", &v9, 8u);
    }

    [(SBHIDButtonStateArbiter *)self->_buttonArbiter downTime];
    [SBActionHardwareButton _performActionForEvent:3 interactionTime:?];
  }
}

- (void)setParameters:(uint64_t)parameters
{
  if (parameters)
  {
    v3 = [a2 copy];
    v4 = *(parameters + 8);
    *(parameters + 8) = v3;

    [(SBActionHardwareButton *)parameters _configureButtonArbiter];
  }
}

- (id)_dateFromMachAbsoluteTimestamp:(uint64_t)timestamp
{
  if (timestamp)
  {
    date = [MEMORY[0x277CBEAA8] date];
    mach_absolute_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v2 = [date dateByAddingTimeInterval:?];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_sendActionButtonDownToSceneOverride
{
  selfCopy = self;
  if (self)
  {
    v2 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    physicalButtonSceneOverrideManager = [v2 physicalButtonSceneOverrideManager];
    sendActionButtonDown = [(SBPhysicalButtonSceneOverrideManager *)physicalButtonSceneOverrideManager sendActionButtonDown];
    v5 = *(selfCopy + 48);
    *(selfCopy + 48) = sendActionButtonDown;

    selfCopy = *(selfCopy + 48) != 0;
  }

  return selfCopy;
}

- (void)systemActionControlDidUpdateActionInteractionConfiguration:(id)configuration
{
  v4 = SBLogButtonsAction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  [(SBActionHardwareButton *)self _configureButtonArbiter];
}

- (void)systemActionSuppressionManager:(id)manager didUpdateSuppressionStatus:(id)status
{
  v10 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v6 = SBLogButtonsAction();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) configuring button arbiter for system action suppression update", &v8, 0xCu);
  }

  [(SBActionHardwareButton *)self _configureButtonArbiter];
  v7 = +[SBSystemActionAnalyticsTracker sharedTracker];
  [(SBSystemActionAnalyticsTracker *)v7 trackSuppressionStatusUpdate:statusCopy];
}

- (void)initWithSystemActionControl:(char *)a1 suppressionManager:(uint64_t)a2 .cold.1(char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Should not instantiate SBActionHardwareButton on devices without an action button"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_0();
    v6 = NSStringFromClass(v5);
    v7 = 138544642;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = @"SBActionHardwareButton.m";
    v15 = 1024;
    v16 = 118;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSystemActionControl:(char *)a1 suppressionManager:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"systemActionControl != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)initWithSystemActionControl:(void *)a3 suppressionManager:.cold.3(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((a1 + 24), a2);
  [(SBSystemActionControl *)*(a1 + 24) addObserver:a1];
  objc_storeStrong((a1 + 32), a3);
  [(SBSystemActionSuppressionManager *)*(a1 + 32) addObserver:a1];
  v5 = objc_alloc_init(SBHIDButtonStateArbiter);
  v6 = *(a1 + 88);
  *(a1 + 88) = v5;

  [*(a1 + 88) setDelegate:a1];
  v7 = +[SBActionHardwareButtonDomain rootSettings];
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;

  v9 = [*(a1 + 16) actionButtonParameters];
  v10 = [v9 copy];
  v11 = *(a1 + 8);
  *(a1 + 8) = v10;

  [(SBActionHardwareButton *)a1 _configureButtonArbiter];
  [*(a1 + 16) addKeyObserver:a1];
  v12 = SBLogButtonsAction();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
  }

  return +[SBSystemActionAnalyticsTracker sharedTracker];
}

- (void)handleRingerButtonEvent:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"IOHIDEventGetType(event) == kIOHIDEventTypeKeyboard", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)handleRingerButtonEvent:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"IOHIDEventGetIntegerValue(event, kIOHIDEventFieldKeyboardUsagePage) == kHIDPage_Telephony", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)handleRingerButtonEvent:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"IOHIDEventGetIntegerValue(event, kIOHIDEventFieldKeyboardUsage) == kHIDUsage_Tfon_RingEnable", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)settings:(void *)a1 changedValueForKey:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 actionButtonParameters];
  [(SBActionHardwareButton *)a2 setParameters:v3];

  v4 = SBLogButtonsAction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 8);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "(key) update button parameters from prototype settings: %{public}@", &v6, 0xCu);
  }
}

@end
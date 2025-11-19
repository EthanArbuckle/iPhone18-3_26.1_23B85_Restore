@interface SBAccessibilityHardwareButtonInteraction
+ (id)hardwareButtonInteractionForHomeButton;
+ (id)hardwareButtonInteractionForLockButton;
- (BOOL)_presentMigrationAlertIfNeeded;
- (BOOL)_supportsTripleClick;
- (BOOL)consumeTriplePressUp;
- (SBAccessibilityHardwareButtonInteraction)initWithButtonType:(unint64_t)a3;
- (__CFString)_speedChangedNotificationName;
- (double)_downToDownInterval;
- (id)hardwareButtonGestureParameters;
- (void)_accessibilityPrefsDidChange;
- (void)_registerAsNotificationObserver;
- (void)_supportsTripleClick;
- (void)_unregisterAsNotificationObserver;
- (void)dealloc;
@end

@implementation SBAccessibilityHardwareButtonInteraction

+ (id)hardwareButtonInteractionForHomeButton
{
  v2 = [[SBAccessibilityHardwareButtonInteraction alloc] initWithButtonType:0];

  return v2;
}

+ (id)hardwareButtonInteractionForLockButton
{
  v2 = [[SBAccessibilityHardwareButtonInteraction alloc] initWithButtonType:1];

  return v2;
}

- (SBAccessibilityHardwareButtonInteraction)initWithButtonType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = SBAccessibilityHardwareButtonInteraction;
  v4 = [(SBAccessibilityHardwareButtonInteraction *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_buttonType = a3;
    [(SBAccessibilityHardwareButtonInteraction *)v4 _registerAsNotificationObserver];
  }

  return v5;
}

- (void)dealloc
{
  [(SBAccessibilityHardwareButtonInteraction *)self _unregisterAsNotificationObserver];
  v3.receiver = self;
  v3.super_class = SBAccessibilityHardwareButtonInteraction;
  [(SBAccessibilityHardwareButtonInteraction *)&v3 dealloc];
}

- (id)hardwareButtonGestureParameters
{
  v3 = objc_alloc_init(SBMutableHardwareButtonGestureParameters);
  if ([(SBAccessibilityHardwareButtonInteraction *)self _supportsTripleClick])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  [(SBMutableHardwareButtonGestureParameters *)v3 setMaximumPressCount:v4];
  [(SBAccessibilityHardwareButtonInteraction *)self _downToDownInterval];
  [(SBMutableHardwareButtonGestureParameters *)v3 setMultiplePressTimeInterval:?];

  return v3;
}

- (BOOL)consumeTriplePressUp
{
  v3 = [(SBAccessibilityHardwareButtonInteraction *)self _supportsTripleClick];
  if (v3 && ![(SBAccessibilityHardwareButtonInteraction *)self _presentMigrationAlertIfNeeded])
  {
    _AXSHandleTripleClickHomeButtonPress();
  }

  return v3;
}

- (__CFString)_speedChangedNotificationName
{
  buttonType = self->_buttonType;
  if (!buttonType)
  {
    v3 = MEMORY[0x277D81D08];
    return *v3;
  }

  if (buttonType == 1)
  {
    v3 = MEMORY[0x277D81E18];
    return *v3;
  }

  return 0;
}

- (void)_registerAsNotificationObserver
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _SBAXButtonPrefsDidChangeNotification, *MEMORY[0x277D81E58], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = [(SBAccessibilityHardwareButtonInteraction *)self _speedChangedNotificationName];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _SBAXButtonPrefsDidChangeNotification, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_unregisterAsNotificationObserver
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D81E58], 0);
  v4 = [(SBAccessibilityHardwareButtonInteraction *)self _speedChangedNotificationName];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
}

- (void)_accessibilityPrefsDidChange
{
  v2 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "reconfiguring due to AX prefs change", buf, 2u);
  }

  BSDispatchMain();
}

void __72__SBAccessibilityHardwareButtonInteraction__accessibilityPrefsDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hardwareButtonGestureParameters];
  [*(a1 + 32) publishUpdatedParameters:v2];
}

- (BOOL)_supportsTripleClick
{
  v2 = _AXSTripleClickCopyOptions();
  if (v2)
  {
    v3 = v2;
    v4 = CFArrayGetCount(v2) > 0;
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBAccessibilityHardwareButtonInteraction *)v4 _supportsTripleClick];
  }

  return v4;
}

- (double)_downToDownInterval
{
  buttonType = self->_buttonType;
  if (buttonType)
  {
    result = 0.0;
    if (buttonType != 1)
    {
      return result;
    }

    _AXSSideButtonClickSpeed();
  }

  else
  {
    _AXSHomeClickSpeed();
  }

  return v4;
}

- (BOOL)_presentMigrationAlertIfNeeded
{
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 sosDefaults];

  if (([v4 performedCheckForTripleClickSOSMigrationAlert] & 1) == 0 && -[SBAccessibilityHardwareButtonInteraction _supportsTripleClick](self, "_supportsTripleClick") && objc_msgSend(MEMORY[0x277D495A8], "currentSOSTriggerMechanism") == 1 && SBFEffectiveHomeButtonType() == 2)
  {
    v5 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "showing triple-click migration alert", v10, 2u);
    }

    v6 = objc_alloc_init(SBTripleClickSOSMigrationAlertItem);
    v7 = +[SBAlertItemsController sharedInstance];
    [v7 activateAlertItem:v6];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  [v4 setPerformedCheckForTripleClickSOSMigrationAlert:1];

  return v8;
}

- (void)_supportsTripleClick
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "AX supports triple click:%{BOOL}u", v2, 8u);
}

@end
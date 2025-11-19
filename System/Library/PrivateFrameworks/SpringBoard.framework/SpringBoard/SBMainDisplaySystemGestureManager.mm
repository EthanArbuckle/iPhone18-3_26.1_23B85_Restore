@interface SBMainDisplaySystemGestureManager
- (BOOL)_isGestureWithTypeAllowed:(unint64_t)a3;
- (BOOL)_shouldEnableSystemGestureWithType:(unint64_t)a3;
- (BOOL)shouldSystemGestureReceiveTouchWithLocation:(CGPoint)a3 ignoringUCB:(BOOL)a4;
- (SBMainDisplaySystemGestureManager)initWithDisplayIdentity:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)dealloc;
- (void)setSystemGesturesDisabledForAccessibility:(BOOL)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBMainDisplaySystemGestureManager

- (SBMainDisplaySystemGestureManager)initWithDisplayIdentity:(id)a3
{
  v6 = a3;
  if (__sharedInstance_3)
  {
    [(SBMainDisplaySystemGestureManager *)a2 initWithDisplayIdentity:?];
  }

  v10.receiver = self;
  v10.super_class = SBMainDisplaySystemGestureManager;
  v7 = [(SBSystemGestureManager *)&v10 _initWithDisplayIdentity:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 23, a3);
    v8->_multitaskingGesturesEnabled = BSSystemHasCapability();
    [(SBSystemGestureManager *)v8 _evaluateEnablement];
  }

  objc_storeStrong(&__sharedInstance_3, v8);

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBMainDisplaySystemGestureManager;
  [(SBMainDisplaySystemGestureManager *)&v4 dealloc];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBMainDisplaySystemGestureManager;
  v4 = [(SBSystemGestureManager *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendBool:self->_multitaskingGesturesEnabled withName:@"_multitaskingGesturesEnabled"];

  return v4;
}

- (BOOL)_isGestureWithTypeAllowed:(unint64_t)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [SBApp windowSceneManager];
  v6 = [v5 windowSceneForDisplayIdentity:self->_displayIdentity];

  v7 = [v6 homeScreenController];
  v8 = [v7 isIconListViewTornDown];
  v9 = [v7 iconManager];
  v10 = [v9 isFolderScrolling];

  if ((v8 & 1) != 0 || !v10)
  {
    v32.receiver = self;
    v32.super_class = SBMainDisplaySystemGestureManager;
    v13 = [(SBSystemGestureManager *)&v32 _isGestureWithTypeAllowed:a3];
    v14 = +[SBSetupManager sharedInstance];
    v15 = [v14 isInSetupMode];

    if (v15)
    {
      v16 = +[SBSetupManager sharedInstance];
      v17 = [v16 isInSetupModeReadyToExit];

      v19 = a3 == 2 || a3 == 7;
      if (v17)
      {
        v22 = a3 == 42 || a3 == 12 || (a3 & 0xFFFFFFFFFFFFFFFBLL) == 35;
      }

      else
      {
        v22 = 0;
      }

      v13 = v19 || v22;
    }

    else
    {
      v23 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      v24 = [v23 policyAggregator];
      v31 = 0;
      v25 = [v24 allowsCapability:7 explanation:&v31];
      v26 = v31;

      if ((v25 & 1) == 0)
      {
        v27 = SBLogSystemGestureDetail();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          displayIdentity = self->_displayIdentity;
          v29 = @"(unknown reason)";
          if (v26)
          {
            v29 = v26;
          }

          *buf = 138543618;
          v34 = displayIdentity;
          v35 = 2112;
          v36 = v29;
          _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_INFO, "(Display - %{public}@) Not allowing system gestures because: %@", buf, 0x16u);
        }

        v13 = 0;
      }
    }
  }

  else
  {
    v11 = SBLogSystemGestureDetail();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = self->_displayIdentity;
      *buf = 138543362;
      v34 = v12;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "(Display - %{public}@) Not allowing system gestures because we are scrolling a folder", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)_shouldEnableSystemGestureWithType:(unint64_t)a3
{
  multitaskingGesturesEnabled = 1;
  switch(a3)
  {
    case 0uLL:
    case 0x44uLL:
    case 0x91uLL:
      goto LABEL_24;
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x3AuLL:
    case 0x3CuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x47uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x78uLL:
    case 0x79uLL:
    case 0x7AuLL:
    case 0x7BuLL:
      if (!__sb__runningInSpringBoard())
      {
        v10 = [MEMORY[0x277D75418] currentDevice];
        multitaskingGesturesEnabled = [v10 userInterfaceIdiom] == 1;
        goto LABEL_6;
      }

      v5 = SBFEffectiveDeviceClass() == 2;
LABEL_8:
      multitaskingGesturesEnabled = v5;
      return multitaskingGesturesEnabled & 1;
    case 0xCuLL:
    case 0xDuLL:
      if (__sb__runningInSpringBoard())
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          goto LABEL_24;
        }

        multitaskingGesturesEnabled = self->_multitaskingGesturesEnabled;
      }

      else
      {
        v11 = [MEMORY[0x277D75418] currentDevice];
        multitaskingGesturesEnabled = [v11 userInterfaceIdiom] == 1 && self->_multitaskingGesturesEnabled;
LABEL_37:
      }

      return multitaskingGesturesEnabled & 1;
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x33uLL:
      v6 = [SBApp windowSceneManager];
      v7 = [v6 windowSceneForDisplayIdentity:self->_displayIdentity];
      v8 = [v7 supportsMultitasking];

      return v8;
    case 0x31uLL:
    case 0x32uLL:
      v11 = [SBApp windowSceneManager];
      v12 = [v11 windowSceneForDisplayIdentity:self->_displayIdentity];
      if ([v12 supportsMultitasking])
      {
        multitaskingGesturesEnabled = SBFIsChamoisOverflowGestureAvailable();
      }

      else
      {
        multitaskingGesturesEnabled = 0;
      }

      goto LABEL_37;
    case 0x35uLL:
    case 0x63uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
      v5 = SBFEffectiveHomeButtonType() == 2;
      goto LABEL_8;
    case 0x87uLL:
    case 0x88uLL:

      return SBUIIsSystemApertureEnabled();
    case 0x8AuLL:
      v13 = [SBApp systemActionControl];
      multitaskingGesturesEnabled = v13 != 0;

      return multitaskingGesturesEnabled & 1;
    case 0x8BuLL:
    case 0x8CuLL:
      if (!+[SBCaptureHardwareButton isCaptureFeatureEnabled])
      {
        goto LABEL_24;
      }

      if ((+[SBCaptureHardwareButton deviceSupportsCaptureButton]& 1) != 0)
      {
        multitaskingGesturesEnabled = 1;
        return multitaskingGesturesEnabled & 1;
      }

      return +[SBCaptureHardwareButton simulateCaptureButtonWithActionButton];
    case 0x8DuLL:
    case 0x8EuLL:
    case 0x8FuLL:
      if (!__sb__runningInSpringBoard())
      {
        v10 = [MEMORY[0x277D75418] currentDevice];
        if ([v10 userInterfaceIdiom] == 1)
        {
          multitaskingGesturesEnabled = _UIEnhancedMainMenuEnabled();
        }

        else
        {
          multitaskingGesturesEnabled = 0;
        }

LABEL_6:

        return multitaskingGesturesEnabled & 1;
      }

      if (SBFEffectiveDeviceClass() != 2)
      {
LABEL_24:
        multitaskingGesturesEnabled = 0;
        return multitaskingGesturesEnabled & 1;
      }

      return _UIEnhancedMainMenuEnabled();
    default:
      return multitaskingGesturesEnabled & 1;
  }
}

- (BOOL)shouldSystemGestureReceiveTouchWithLocation:(CGPoint)a3 ignoringUCB:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v41 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = SBMainDisplaySystemGestureManager;
  v7 = [(SBSystemGestureManager *)&v29 shouldSystemGestureReceiveTouchWithLocation:?];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [MEMORY[0x277D75830] allVisiblePeripheralFrames];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v25 + 1) + 8 * i) CGRectValue];
        if (v13 > 60.0)
        {

          v14 = 0;
          goto LABEL_12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v40 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
  v15 = 1;
  if (!v4)
  {
LABEL_12:
    v15 = [MEMORY[0x277D75830] pointIsWithinKeyboardContent:{x, y}] ^ 1;
  }

  v16 = v7 & v15;
  v17 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v42.x = x;
    v42.y = y;
    v18 = NSStringFromPoint(v42);
    v19 = v18;
    v20 = @"NO";
    if (v16)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 138413314;
    v31 = v18;
    if (v4)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v33 = v21;
    v32 = 2112;
    if (v14)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v34 = 2112;
    v35 = v22;
    if (!v15)
    {
      v20 = @"YES";
    }

    v36 = 2112;
    v37 = v23;
    v38 = 2112;
    v39 = v20;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Should system gesture recieve touch with location:%@ <%@> ignoringUCB:%@ keyboardIsUCB:%@ touchIsInsideKeyboard:%@", buf, 0x34u);
  }

  return v16;
}

- (void)setSystemGesturesDisabledForAccessibility:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = SBMainDisplaySystemGestureManager;
  [(SBSystemGestureManager *)&v11 setSystemGesturesDisabledForAccessibility:?];
  v5 = [(SBMainDisplaySystemGestureManager *)self accessibilityZStackParticipant];

  if (!v3 || v5)
  {
    if (!v3)
    {
      if (v5)
      {
        v10 = [(SBMainDisplaySystemGestureManager *)self accessibilityZStackParticipant];
        [v10 invalidate];

        [(SBMainDisplaySystemGestureManager *)self setAccessibilityZStackParticipant:0];
      }
    }
  }

  else
  {
    v6 = [SBApp windowSceneManager];
    v7 = [v6 windowSceneForDisplayIdentity:self->_displayIdentity];

    v8 = [v7 zStackResolver];
    v9 = [v8 acquireParticipantWithIdentifier:27 delegate:self];
    [(SBMainDisplaySystemGestureManager *)self setAccessibilityZStackParticipant:v9];
  }
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v4 = a4;
  [v4 setActivationPolicyForParticipantsBelow:0];
  [v4 setHomeGestureConsumption:1];
}

- (void)initWithDisplayIdentity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainDisplaySystemGestureManager.m" lineNumber:52 description:@"should have only one SBMainDisplaySystemGestureManager"];
}

@end
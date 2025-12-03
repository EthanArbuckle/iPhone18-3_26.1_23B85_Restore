@interface SBVoiceControlController
+ (id)sharedInstance;
- (BOOL)_shouldEnterVoiceControl;
- (BOOL)handleHeadsetButtonUp;
- (BOOL)handleHeadsetButtonUpNotInCall;
- (BOOL)handleHomeButtonHeld;
- (BOOL)isVisible;
- (SBVoiceControlController)init;
- (id)_newVoiceControlTransientOverlayViewControllerWithSource:(id)source;
- (id)siriBluetoothDeviceSource:(id)source;
- (void)_assistantActivationSettingsDidChange:(id)change;
- (void)_cancelDelayedHeadsetAction;
- (void)_performDelayedHeadsetActionForAssistant;
- (void)_performDelayedHeadsetActionForVoiceControl;
- (void)_prepareDelayedHeadsetAction;
- (void)_shouldEnterVoiceControl;
- (void)_updateNextRecognitionAudioInputPaths:(id)paths;
- (void)bluetoothDeviceEndedVoiceControl:(id)control;
- (void)bluetoothDeviceInitiatedVoiceControl:(id)control;
- (void)dismissTransientOverlay;
- (void)handleHeadsetButtonDownWithClickCount:(unint64_t)count;
- (void)voiceControlTransientOverlayViewControllerDidDisappear:(id)disappear;
- (void)voiceControlTransientOverlayViewControllerRequestsDismissal:(id)dismissal;
@end

@implementation SBVoiceControlController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_38 != -1)
  {
    +[SBVoiceControlController sharedInstance];
  }

  v3 = sharedInstance___SharedInstance;

  return v3;
}

- (BOOL)isVisible
{
  v3 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v3 transientOverlayPresentationManager];
  LOBYTE(self) = [transientOverlayPresentationManager isTopmostPresentedViewController:self->_transientOverlayViewController];

  return self;
}

uint64_t __42__SBVoiceControlController_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBVoiceControlController);
  v1 = sharedInstance___SharedInstance;
  sharedInstance___SharedInstance = v0;

  return kdebug_trace();
}

- (SBVoiceControlController)init
{
  v7.receiver = self;
  v7.super_class = SBVoiceControlController;
  v2 = [(SBVoiceControlController *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D551F8] longPressButtonForIdentifier:4];
    siriHeadsetDeviceSource = v2->_siriHeadsetDeviceSource;
    v2->_siriHeadsetDeviceSource = v3;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__spokenLanguageDidChange_ name:*MEMORY[0x277D79A30] object:0];
    [defaultCenter addObserver:v2 selector:sel__updateNextRecognitionAudioInputPaths_ name:*MEMORY[0x277D67AC8] object:0];
  }

  return v2;
}

- (id)siriBluetoothDeviceSource:(id)source
{
  sourceCopy = source;
  sb_siriBluetoothDeviceSource = [sourceCopy sb_siriBluetoothDeviceSource];
  if (!sb_siriBluetoothDeviceSource)
  {
    sb_siriBluetoothDeviceSource = [MEMORY[0x277D551D0] bluetoothDeviceForIdentifier:3 bluetoothDevice:sourceCopy];
    [sourceCopy sb_setSiriBluetoothDeviceSource:sb_siriBluetoothDeviceSource];
  }

  return sb_siriBluetoothDeviceSource;
}

- (void)dismissTransientOverlay
{
  transientOverlayViewController = self->_transientOverlayViewController;
  self->_transientOverlayViewController = 0;
  v3 = transientOverlayViewController;

  v4 = +[SBWorkspace mainWorkspace];
  [v4 dismissTransientOverlayViewController:v3 animated:1 completion:0];
}

- (void)voiceControlTransientOverlayViewControllerRequestsDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  transientOverlayViewController = self->_transientOverlayViewController;
  v7 = dismissalCopy;
  if (transientOverlayViewController == dismissalCopy)
  {
    self->_transientOverlayViewController = 0;
  }

  v6 = +[SBWorkspace mainWorkspace];
  [v6 dismissTransientOverlayViewController:v7 animated:1 completion:0];
}

- (void)voiceControlTransientOverlayViewControllerDidDisappear:(id)disappear
{
  transientOverlayViewController = self->_transientOverlayViewController;
  if (transientOverlayViewController == disappear)
  {
    self->_transientOverlayViewController = 0;
  }
}

- (BOOL)handleHomeButtonHeld
{
  if ([(SBVoiceControlController *)self _shouldEnterVoiceControl]&& _AXSHomeButtonAssistant() == 1)
  {
    if (!self->_transientOverlayViewController)
    {
      v3 = +[SBVoiceControlPresentationSource sourceFromHomeButton];
      v4 = [(SBVoiceControlController *)self _newVoiceControlTransientOverlayViewControllerWithSource:v3];
      transientOverlayViewController = self->_transientOverlayViewController;
      self->_transientOverlayViewController = v4;

      v6 = +[SBWorkspace mainWorkspace];
      [v6 presentTransientOverlayViewController:self->_transientOverlayViewController animated:1 completion:0];
LABEL_7:

      return 1;
    }
  }

  else
  {
    v7 = self->_transientOverlayViewController;
    if (v7)
    {
      v6 = +[SBVoiceControlPresentationSource sourceFromHomeButton];
      [(SBVoiceControlTransientOverlayViewController *)v7 resetSessionWithSource:v6];
      goto LABEL_7;
    }
  }

  return 0;
}

- (void)_performDelayedHeadsetActionForAssistant
{
  self->_delayedAssistantActivationPending = 0;
  v4 = +[SBTelephonyManager sharedTelephonyManager];
  v3 = +[SBConferenceManager sharedInstance];
  if (([v4 inCall] & 1) == 0 && (objc_msgSend(v4, "incomingCallExists") & 1) == 0 && (objc_msgSend(v3, "inFaceTime") & 1) == 0 && (objc_msgSend(v3, "faceTimeInvitationExists") & 1) == 0)
  {
    [(SiriLongPressButtonSource *)self->_siriHeadsetDeviceSource didRecognizeLongPress];
    self->_headsetDownDelayedActionPerformed = 1;
  }
}

- (void)_performDelayedHeadsetActionForVoiceControl
{
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v3 policyAggregator];
  v5 = [policyAggregator allowsCapability:4];

  if ((v5 & 1) == 0)
  {
    if (-[SBVoiceControlController _shouldEnterVoiceControl](self, "_shouldEnterVoiceControl") && ([MEMORY[0x277D26E58] sharedAVSystemController], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "attributeForKey:", *MEMORY[0x277D26BF8]), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v6, v8))
    {
      if (!self->_transientOverlayViewController)
      {
        self->_headsetDownDelayedActionPerformed = 1;
        v9 = +[SBVoiceControlPresentationSource sourceFromHeadsetButton];
        v10 = [(SBVoiceControlController *)self _newVoiceControlTransientOverlayViewControllerWithSource:v9];
        transientOverlayViewController = self->_transientOverlayViewController;
        self->_transientOverlayViewController = v10;

        v14 = +[SBWorkspace mainWorkspace];
        [v14 presentTransientOverlayViewController:self->_transientOverlayViewController animated:1 completion:0];
      }
    }

    else
    {
      v12 = self->_transientOverlayViewController;
      if (v12)
      {
        v13 = +[SBVoiceControlPresentationSource sourceFromHeadsetButton];
        [(SBVoiceControlTransientOverlayViewController *)v12 resetSessionWithSource:v13];

        self->_headsetDownDelayedActionPerformed = 1;
      }
    }
  }
}

- (void)_prepareDelayedHeadsetAction
{
  self->_headsetDownDelayedActionPerformed = 0;
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v3 policyAggregator];
  v5 = [policyAggregator allowsCapability:5];

  if (v5)
  {
    self->_delayedAssistantActivationPending = 1;
    [(SiriLongPressButtonSource *)self->_siriHeadsetDeviceSource longPressInterval];
    v7 = v6;
    [(SBVoiceControlController *)self performSelector:sel__performDelayedHeadsetActionForAssistant withObject:0 afterDelay:?];
    if (v7 > 0.0)
    {
      [(SiriAssertion *)self->_siriPreheatAssertion invalidate];
      prepareForActivation = [(SiriLongPressButtonSource *)self->_siriHeadsetDeviceSource prepareForActivation];
      siriPreheatAssertion = self->_siriPreheatAssertion;
      self->_siriPreheatAssertion = prepareForActivation;
    }
  }

  else if ([(SBVoiceControlController *)self _shouldEnterVoiceControl]|| self->_transientOverlayViewController)
  {

    [(SBVoiceControlController *)self performSelector:sel__performDelayedHeadsetActionForVoiceControl withObject:0 afterDelay:1.3];
  }
}

- (void)_cancelDelayedHeadsetAction
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__performDelayedHeadsetActionForVoiceControl object:0];
  if (self->_delayedAssistantActivationPending)
  {
    self->_delayedAssistantActivationPending = 0;
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__performDelayedHeadsetActionForAssistant object:0];
    [(SiriAssertion *)self->_siriPreheatAssertion invalidate];
    siriPreheatAssertion = self->_siriPreheatAssertion;
    self->_siriPreheatAssertion = 0;
  }
}

- (void)handleHeadsetButtonDownWithClickCount:(unint64_t)count
{
  self->_headsetDownDelayedActionPerformed = 0;
  if (count)
  {
    [(SBVoiceControlController *)self _cancelDelayedHeadsetAction];
  }

  else
  {
    [(SBVoiceControlController *)self _prepareDelayedHeadsetAction];
  }
}

- (BOOL)handleHeadsetButtonUp
{
  [(SBVoiceControlController *)self _cancelDelayedHeadsetAction];
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v3 policyAggregator];
  v5 = [policyAggregator allowsCapability:4];

  if (v5)
  {
    return 0;
  }

  transientOverlayViewController = self->_transientOverlayViewController;
  if (transientOverlayViewController)
  {
    [(SBVoiceControlTransientOverlayViewController *)transientOverlayViewController handleHeadsetButtonUpFromButtonDownSource:self->_headsetDownDelayedActionPerformed];
  }

  else if (!self->_headsetDownDelayedActionPerformed)
  {
    return 0;
  }

  self->_headsetDownDelayedActionPerformed = 0;
  return 1;
}

- (BOOL)handleHeadsetButtonUpNotInCall
{
  if (self->_headsetDownDelayedActionPerformed)
  {
    LOBYTE(isActive) = 1;
  }

  else
  {
    isActive = [(SiriLongPressButtonSource *)self->_siriHeadsetDeviceSource isActive];
    if (isActive)
    {
      [(SiriLongPressButtonSource *)self->_siriHeadsetDeviceSource didRecognizeButtonSinglePressUp];
      LOBYTE(isActive) = 1;
    }
  }

  return isActive;
}

- (void)_assistantActivationSettingsDidChange:(id)change
{
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v3 policyAggregator];
  if ([policyAggregator allowsCapability:4])
  {
    v5 = NSClassFromString(&cfstr_Vscacheupdatel.isa);

    if (v5)
    {
      mEMORY[0x277D79928] = [MEMORY[0x277D79928] sharedListener];
      [mEMORY[0x277D79928] stopListening];

      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 0;
        v8 = "Unregistering voice control controller for voice services cache update";
        v9 = &v12;
LABEL_8:
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  mEMORY[0x277D79928]2 = [MEMORY[0x277D79928] sharedListener];
  [mEMORY[0x277D79928]2 startListening];

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 0;
    v8 = "Registering voice control controller for voice services cache update";
    v9 = &v11;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)bluetoothDeviceInitiatedVoiceControl:(id)control
{
  v22 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  if (controlCopy)
  {
    v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    policyAggregator = [v5 policyAggregator];
    v7 = [policyAggregator allowsCapability:5];

    if (v7)
    {
      mEMORY[0x277CF3248] = [(SBVoiceControlController *)self siriBluetoothDeviceSource:controlCopy];
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543618;
        *v20 = mEMORY[0x277CF3248];
        *&v20[8] = 2114;
        v21 = controlCopy;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Telling siri to activate for BTHeadset (source:%{public}@ device:%{public}@)", &v19, 0x16u);
      }

      [mEMORY[0x277CF3248] activate];
      goto LABEL_15;
    }

    _shouldEnterVoiceControl = [(SBVoiceControlController *)self _shouldEnterVoiceControl];
    v11 = +[SBDefaults localDefaults];
    voiceControlDefaults = [v11 voiceControlDefaults];
    disableVoiceControlForBluetoothRequests = [voiceControlDefaults disableVoiceControlForBluetoothRequests];

    v14 = SBLogCommon();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (!_shouldEnterVoiceControl || disableVoiceControlForBluetoothRequests)
    {
      if (v15)
      {
        v19 = 67109376;
        *v20 = _shouldEnterVoiceControl;
        *&v20[4] = 1024;
        *&v20[6] = disableVoiceControlForBluetoothRequests;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "Not starting VC because shouldEnterVoiceControl: %{BOOL}u disabledByPref: %{BOOL}u", &v19, 0xEu);
      }

      mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
      [mEMORY[0x277CF3248] endVoiceCommand:controlCopy];
      goto LABEL_15;
    }

    if (v15)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "Activating VC for BT headset", &v19, 2u);
    }

    if (!self->_transientOverlayViewController)
    {
      v16 = [SBVoiceControlPresentationSource sourceFromBluetoothDevice:controlCopy];
      v17 = [(SBVoiceControlController *)self _newVoiceControlTransientOverlayViewControllerWithSource:v16];
      transientOverlayViewController = self->_transientOverlayViewController;
      self->_transientOverlayViewController = v17;

      mEMORY[0x277CF3248] = +[SBWorkspace mainWorkspace];
      [mEMORY[0x277CF3248] presentTransientOverlayViewController:self->_transientOverlayViewController animated:1 completion:0];
LABEL_15:
    }
  }
}

- (void)bluetoothDeviceEndedVoiceControl:(id)control
{
  controlCopy = control;
  v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v5 policyAggregator];
  v7 = [policyAggregator allowsCapability:4];

  v8 = SBLogCommon();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Telling siri to deactivate for BTHeadset", buf, 2u);
    }

    v10 = [(SBVoiceControlController *)self siriBluetoothDeviceSource:controlCopy];
    [v10 deactivate];
  }

  else
  {
    if (v9)
    {
      *v11 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Telling VC to dismiss for BTHeadset", v11, 2u);
    }

    [(SBVoiceControlController *)self dismissTransientOverlay];
  }
}

- (BOOL)_shouldEnterVoiceControl
{
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v3 policyAggregator];
  v18 = 0;
  v5 = [policyAggregator allowsCapability:8 explanation:&v18];
  v6 = v18;

  if (v5)
  {
    if (NSClassFromString(&cfstr_Vsrecognitions.isa))
    {
      if (self->_transientOverlayViewController)
      {
        v7 = SBLogCommon();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [SBVoiceControlController _shouldEnterVoiceControl];
        }
      }

      else
      {
        mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
        v9 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26DD8]];
        bOOLValue = [v9 BOOLValue];

        if (bOOLValue)
        {
          v11 = 1;
          goto LABEL_15;
        }

        v7 = SBLogCommon();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [SBVoiceControlController _shouldEnterVoiceControl];
        }
      }
    }

    else
    {
      v7 = SBLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SBVoiceControlController _shouldEnterVoiceControl];
      }
    }
  }

  else
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBVoiceControlController _shouldEnterVoiceControl];
    }
  }

  v11 = 0;
LABEL_15:
  v12 = VSPreferencesCopyAvailableLanguageIdentifiers();
  if (v12)
  {
    v13 = v12;
    v14 = VSPreferencesCopySpokenLanguageIdentifier();
    if (!CFSetContainsValue(v13, v14))
    {
      v15 = SBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SBVoiceControlController _shouldEnterVoiceControl];
      }

      v11 = 0;
    }

    if (v14)
    {
      CFRelease(v14);
    }

    CFRelease(v13);
  }

  else
  {
    v16 = SBLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SBVoiceControlController _shouldEnterVoiceControl];
    }

    v11 = 0;
  }

  return v11;
}

- (void)_updateNextRecognitionAudioInputPaths:(id)paths
{
  object = [paths object];
  v5 = [object copy];
  nextRecognitionAudioInputPaths = self->_nextRecognitionAudioInputPaths;
  self->_nextRecognitionAudioInputPaths = v5;

  transientOverlayViewController = self->_transientOverlayViewController;
  if (transientOverlayViewController)
  {
    v8 = self->_nextRecognitionAudioInputPaths;

    [(SBVoiceControlTransientOverlayViewController *)transientOverlayViewController setNextRecognitionAudioInputPaths:v8];
  }
}

- (id)_newVoiceControlTransientOverlayViewControllerWithSource:(id)source
{
  sourceCopy = source;
  v5 = [[SBVoiceControlTransientOverlayViewController alloc] initWithSource:sourceCopy];

  [(SBVoiceControlTransientOverlayViewController *)v5 setVoiceControlDelegate:self];
  authenticationController = [SBApp authenticationController];
  v7 = +[SBLockScreenManager sharedInstance];
  if (([v7 isUILocked] & 1) != 0 || (objc_msgSend(authenticationController, "isAuthenticated") & 1) == 0)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    if ([mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CE8]] == 2)
    {
      v8 = [authenticationController hasPasscodeSet] ^ 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = +[SBDefaults localDefaults];
  voiceControlDefaults = [v10 voiceControlDefaults];

  if ([voiceControlDefaults isVoiceControlLoggingEnabled])
  {
    [(SBVoiceControlTransientOverlayViewController *)v5 setVoiceControlLoggingEnabled:1];
  }

  else
  {
    v12 = +[SBPlatformController sharedInstance];
    -[SBVoiceControlTransientOverlayViewController setVoiceControlLoggingEnabled:](v5, "setVoiceControlLoggingEnabled:", [v12 isInternalInstall]);
  }

  -[SBVoiceControlTransientOverlayViewController setShouldDisableHandlerActions:](v5, "setShouldDisableHandlerActions:", [voiceControlDefaults disableHandlerActions]);
  -[SBVoiceControlTransientOverlayViewController setShouldDisableVoiceControlForBluetoothRequests:](v5, "setShouldDisableVoiceControlForBluetoothRequests:", [voiceControlDefaults disableVoiceControlForBluetoothRequests]);
  [(SBVoiceControlTransientOverlayViewController *)v5 setShouldAllowSensitiveActions:v8];
  [(SBVoiceControlTransientOverlayViewController *)v5 setNextRecognitionAudioInputPaths:self->_nextRecognitionAudioInputPaths];

  return v5;
}

- (void)_shouldEnterVoiceControl
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end
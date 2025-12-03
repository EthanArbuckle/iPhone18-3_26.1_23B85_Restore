@interface SBSiriHardwareButtonInteraction
+ (BOOL)dismissSiriTransientOverlayOnSinglePressUp:(int64_t)up;
+ (id)hardwareButtonInteractionForHomeButton;
+ (id)hardwareButtonInteractionForLockButton;
+ (id)hardwareButtonInteractionForVoiceCommandButton;
- (BOOL)consumeInitialPressDown;
- (BOOL)consumeLongPress;
- (BOOL)consumeSinglePressUp;
- (SBSiriHardwareButtonInteraction)initWithSiriButton:(int64_t)button;
- (id)hardwareButtonGestureParameters;
- (void)_cancelAllSiriActions;
- (void)_cancelPreheating;
- (void)_preheatSiriForPresentationAfterInterval:(double)interval;
- (void)_siriHomeButtonPrefsDidChange:(id)change;
- (void)configurationDidUpdateOnLongPressSource:(id)source;
@end

@implementation SBSiriHardwareButtonInteraction

+ (id)hardwareButtonInteractionForHomeButton
{
  v2 = [[SBSiriHardwareButtonInteraction alloc] initWithSiriButton:1];

  return v2;
}

+ (id)hardwareButtonInteractionForLockButton
{
  v2 = [[SBSiriHardwareButtonInteraction alloc] initWithSiriButton:2];

  return v2;
}

+ (id)hardwareButtonInteractionForVoiceCommandButton
{
  v2 = [[SBSiriHardwareButtonInteraction alloc] initWithSiriButton:9];

  return v2;
}

- (SBSiriHardwareButtonInteraction)initWithSiriButton:(int64_t)button
{
  v10.receiver = self;
  v10.super_class = SBSiriHardwareButtonInteraction;
  v4 = [(SBSiriHardwareButtonInteraction *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_siriButtonIdentifier = button;
    v6 = [MEMORY[0x277D551F8] longPressButtonForIdentifier:button];
    siriActivationSource = v5->_siriActivationSource;
    v5->_siriActivationSource = v6;

    [(SiriLongPressButtonSource *)v5->_siriActivationSource longPressInterval];
    v5->_activationInterval = v8;
    [(SiriLongPressButtonSource *)v5->_siriActivationSource setDelegate:v5];
    [(SiriLongPressButtonSource *)v5->_siriActivationSource requestConfigurationUpdatesBasedOnDeviceSettings];
  }

  return v5;
}

+ (BOOL)dismissSiriTransientOverlayOnSinglePressUp:(int64_t)up
{
  if (+[SBAssistantController isVisible])
  {
    v6 = +[SBWorkspace mainWorkspace];
    transientOverlayPresentationManager = [v6 transientOverlayPresentationManager];

    v8 = +[SBAssistantController sharedInstance];
    window = [v8 window];
    [window windowLevel];
    v10 = [transientOverlayPresentationManager hasPresentationAboveWindowLevel:?];

    if (v10)
    {
      switch(up)
      {
        case 1:
          if ([transientOverlayPresentationManager handleHomeButtonPress])
          {
            goto LABEL_12;
          }

          break;
        case 9:
          if (([transientOverlayPresentationManager handleVoiceCommandButtonPress] & 1) == 0)
          {
            break;
          }

          goto LABEL_12;
        case 2:
          if (([transientOverlayPresentationManager handleLockButtonPress] & 1) == 0)
          {
            break;
          }

LABEL_12:
          v11 = 1;
LABEL_15:

          return v11;
        default:
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SBSiriHardwareButtonInteraction.m" lineNumber:89 description:@"We don't handle this activation event"];

          break;
      }
    }

    v11 = 0;
    goto LABEL_15;
  }

  return 0;
}

- (void)configurationDidUpdateOnLongPressSource:(id)source
{
  v10 = *MEMORY[0x277D85DE8];
  [source longPressInterval];
  self->_activationInterval = v4;
  v5 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    activationInterval = self->_activationInterval;
    v8 = 134217984;
    v9 = activationInterval;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Siri: updating activation interval to %f", &v8, 0xCu);
  }

  hardwareButtonGestureParameters = [(SBSiriHardwareButtonInteraction *)self hardwareButtonGestureParameters];
  [(SBHardwareButtonGestureParametersProviderBase *)self publishUpdatedParameters:hardwareButtonGestureParameters];
}

- (void)_siriHomeButtonPrefsDidChange:(id)change
{
  hardwareButtonGestureParameters = [(SBSiriHardwareButtonInteraction *)self hardwareButtonGestureParameters];
  [(SBHardwareButtonGestureParametersProviderBase *)self publishUpdatedParameters:hardwareButtonGestureParameters];
}

- (void)_preheatSiriForPresentationAfterInterval:(double)interval
{
  siriPreheatAssertion = self->_siriPreheatAssertion;
  if (siriPreheatAssertion)
  {
    [(SiriAssertion *)siriPreheatAssertion invalidate];
  }

  v5 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBSiriHardwareButtonInteraction _preheatSiriForPresentationAfterInterval:];
  }

  v6 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v6 policyAggregator];
  v8 = [policyAggregator allowsCapability:5];

  if (v8)
  {
    prepareForActivation = [(SiriLongPressButtonSource *)self->_siriActivationSource prepareForActivation];
    v10 = self->_siriPreheatAssertion;
    self->_siriPreheatAssertion = prepareForActivation;

    v11 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SBSiriHardwareButtonInteraction _preheatSiriForPresentationAfterInterval:];
    }
  }

  else
  {
    v11 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SBSiriHardwareButtonInteraction _preheatSiriForPresentationAfterInterval:];
    }
  }
}

- (void)_cancelPreheating
{
  if (self->_siriPreheatAssertion)
  {
    v3 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SBSiriHardwareButtonInteraction _cancelPreheating];
    }

    [(SiriAssertion *)self->_siriPreheatAssertion invalidate];
    siriPreheatAssertion = self->_siriPreheatAssertion;
    self->_siriPreheatAssertion = 0;
  }
}

- (void)_cancelAllSiriActions
{
  if (self->_siriPreheatAssertion)
  {
    [(SBSiriHardwareButtonInteraction *)self _cancelPreheating];
  }

  if (self->_siriButtonDownAssertion)
  {
    v3 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SBSiriHardwareButtonInteraction _cancelAllSiriActions];
    }

    [(SiriAssertion *)self->_siriButtonDownAssertion invalidate];
    siriButtonDownAssertion = self->_siriButtonDownAssertion;
    self->_siriButtonDownAssertion = 0;
  }
}

- (BOOL)consumeInitialPressDown
{
  v23 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v5 = [(SiriLongPressButtonSource *)self->_siriActivationSource speechInteractionActivityWithTimestamp:?];
  siriButtonDownAssertion = self->_siriButtonDownAssertion;
  self->_siriButtonDownAssertion = v5;

  v7 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SBSiriHardwareButtonInteraction consumeInitialPressDown];
  }

  v8 = +[SBSyncController sharedInstance];
  if ([v8 isRestoring])
  {

LABEL_6:
    v11 = SBLogButtonsHome();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      goto LABEL_10;
    }

    v12 = NSStringFromSelector(a2);
    v21 = 138543362;
    v22 = v12;
    v13 = "%{public}@ result: not preheating Siri due to SBSyncController restoring/resetting";
LABEL_8:
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, v13, &v21, 0xCu);

    goto LABEL_9;
  }

  v9 = +[SBSyncController sharedInstance];
  isResetting = [v9 isResetting];

  if (isResetting)
  {
    goto LABEL_6;
  }

  v15 = +[SBWorkspace mainWorkspace];
  isPowerDownTransientOverlayTopmost = [v15 isPowerDownTransientOverlayTopmost];

  v11 = SBLogButtonsHome();
  v17 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (isPowerDownTransientOverlayTopmost)
  {
    if (!v17)
    {
      goto LABEL_9;
    }

    v12 = NSStringFromSelector(a2);
    v21 = 138543362;
    v22 = v12;
    v13 = "%{public}@ result: not preheating Siri due to power down transient overlay";
    goto LABEL_8;
  }

  if (v17)
  {
    v18 = NSStringFromSelector(a2);
    v21 = 138543362;
    v22 = v18;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "%{public}@ result: ignored; starting Siri preheat", &v21, 0xCu);
  }

  activationInterval = self->_activationInterval;
  v20 = fmax(activationInterval - (Current - self->_initialPressDownTime), 0.0);
  if (activationInterval > v20)
  {
    activationInterval = v20;
  }

  [(SBSiriHardwareButtonInteraction *)self _preheatSiriForPresentationAfterInterval:activationInterval];
LABEL_10:
  self->_initialPressDownTime = 0.0;
  return 0;
}

- (BOOL)consumeSinglePressUp
{
  if (![(SiriLongPressButtonSource *)self->_siriActivationSource isActive])
  {
    return 0;
  }

  [objc_opt_class() dismissSiriTransientOverlayOnSinglePressUp:self->_siriButtonIdentifier];
  [(SiriLongPressButtonSource *)self->_siriActivationSource didRecognizeButtonSinglePressUp];
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  homeButtonType = [mEMORY[0x277CF0CA8] homeButtonType];

  v5 = +[SBAssistantController sharedInstance];
  contentObscuresEmbeddedDisplayScreen = [v5 contentObscuresEmbeddedDisplayScreen];
  if (homeButtonType == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = contentObscuresEmbeddedDisplayScreen;
  }

  return v7;
}

- (BOOL)consumeLongPress
{
  v20 = *MEMORY[0x277D85DE8];
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  v6 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v6 policyAggregator];
  v8 = [policyAggregator allowsCapability:5];

  if (v8)
  {
    v9 = SBLogButtonsHome();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v18 = 138543362;
      v19 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "%{public}@ result: Siri: Siri handled it", &v18, 0xCu);
    }

    [(SiriLongPressButtonSource *)self->_siriActivationSource didRecognizeLongPress];
  }

  else
  {
    v11 = +[SBVoiceControlController sharedInstance];
    handleHomeButtonHeld = [v11 handleHomeButtonHeld];

    if (!handleHomeButtonHeld)
    {
      v16 = 0;
      goto LABEL_11;
    }

    v13 = SBLogButtonsHome();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(a2);
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "%{public}@ result: Siri: voice control handled it", &v18, 0xCu);
    }
  }

  commandTabController = [activeDisplayWindowScene commandTabController];
  [commandTabController dismiss];

  v16 = 1;
LABEL_11:

  return v16;
}

- (id)hardwareButtonGestureParameters
{
  v3 = objc_alloc_init(SBMutableHardwareButtonGestureParameters);
  [(SBMutableHardwareButtonGestureParameters *)v3 setLongPressTimeInterval:self->_activationInterval];

  return v3;
}

@end
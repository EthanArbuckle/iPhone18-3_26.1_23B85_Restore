@interface SBCoverSheetSecureAppEnvironmentViewController
- (SBCoverSheetSecureAppEnvironmentViewController)initWithSecureAppViewController:(id)controller;
- (SBCoverSheetSecureAppEnvironmentViewControllerDelegate)delegate;
- (id)_createTraitsSceneParticipantDelegate;
- (id)_currentSecureAppAction;
- (id)_hostableEntityPresenter;
- (id)_traitsArbiter;
- (id)participantAssociatedWindows:(id)windows;
- (id)traitsParticipantForSceneHandle:(id)handle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_acquireSecureAppTraitsParticipantIfNeeded;
- (void)_actuateTraitsParticipantResolution;
- (void)_invalidateTraitsParticipantAndDelegateHelper;
- (void)_updateIdleWarnModeForAlwaysOnEnabled:(BOOL)enabled;
- (void)_updateSupportedOrientationsMaskForSecureAppAction;
- (void)_updateZStackPolicyAssistants;
- (void)appendDescriptionForParticipant:(id)participant withBuilder:(id)builder multilinePrefix:(id)prefix;
- (void)dealloc;
- (void)didChangeSettingsForParticipant:(id)participant context:(id)context;
- (void)homeGrabberViewDidReceiveClick:(id)click;
- (void)relinquishHiddenAssertionForHomeGrabber:(id)grabber animated:(BOOL)animated;
- (void)relinquishHomeGesture;
- (void)requestHomeGestureOwnership;
- (void)secureAppOfTypeDidTakeNewAssertion:(unint64_t)assertion;
- (void)takeHiddenAssertionForHomeGrabber:(id)grabber animated:(BOOL)animated;
- (void)updateHomeGrabberHiddenAssertion:(BOOL)assertion;
- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBCoverSheetSecureAppEnvironmentViewController

- (SBCoverSheetSecureAppEnvironmentViewController)initWithSecureAppViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  v6 = [(SBCoverSheetSecureAppEnvironmentViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_secureAppViewController, controller);
    v7->_currentOrientationMask = 30;
    if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp"))
    {
      [(SBCoverSheetSecureAppEnvironmentViewController *)v7 _acquireSecureAppTraitsParticipantIfNeeded];
    }

    else
    {
      v8 = +[SBSecureAppManager sharedInstance];
      [v8 addObserver:v7];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(SBCoverSheetSecureAppEnvironmentViewController *)self _invalidateTraitsParticipantAndDelegateHelper];
  v3.receiver = self;
  v3.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  [(SBCoverSheetSecureAppEnvironmentViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  [(SBCoverSheetSecureAppEnvironmentViewController *)&v14 viewDidLoad];
  if (CSFeatureEnabled())
  {
    view = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [view setBackgroundColor:blackColor];

    view2 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    layer = [view2 layer];
    [layer setCornerCurve:*MEMORY[0x277CDA138]];

    view3 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    layer2 = [view3 layer];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    [traitCollection displayCornerRadius];
    [layer2 setCornerRadius:?];

    view4 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    [view4 setClipsToBounds:1];
  }

  secureAppViewController = self->_secureAppViewController;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SBCoverSheetSecureAppEnvironmentViewController_viewDidLoad__block_invoke;
  v13[3] = &unk_2783AA930;
  v13[4] = self;
  [(SBCoverSheetSecureAppEnvironmentViewController *)self bs_addChildViewController:secureAppViewController animated:0 transitionBlock:v13];
  [(SBCoverSheetSecureAppEnvironmentViewController *)self _updateZStackPolicyAssistants];
}

void __61__SBCoverSheetSecureAppEnvironmentViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1048);
  v4 = a2;
  v6 = [v3 view];
  v5 = [*(a1 + 32) viewIfLoaded];
  [v5 bounds];
  [v6 setFrame:?];

  [v6 setAutoresizingMask:18];
  v4[2](v4);
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  [(SBCoverSheetSecureAppEnvironmentViewController *)&v8 viewWillAppear:appear];
  mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
  if (([mEMORY[0x277D67C98] hasPearlSupport] & 1) == 0)
  {
    v5 = [mEMORY[0x277D67C98] acquireMatchingAssertionWithMode:2 reason:@"SBCoverSheetSecureAppEnvironmentViewController"];
    biometricMatchingAssertion = self->_biometricMatchingAssertion;
    self->_biometricMatchingAssertion = v5;

    v7 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SBCoverSheetSecureAppEnvironmentViewController viewWillAppear:];
    }
  }

  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp") & 1) == 0)
  {
    [(SBCoverSheetSecureAppEnvironmentViewController *)self _updateSupportedOrientationsMaskForSecureAppAction];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  if (window)
  {
    [(SBCoverSheetSecureAppEnvironmentViewController *)self _acquireSecureAppTraitsParticipantIfNeeded:window];

    [(SBCoverSheetSecureAppEnvironmentViewController *)self _actuateTraitsParticipantResolution];
  }

  else
  {

    [(SBCoverSheetSecureAppEnvironmentViewController *)self _invalidateTraitsParticipantAndDelegateHelper];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  [(SBCoverSheetSecureAppEnvironmentViewController *)&v5 viewDidAppear:appear];
  [(SBCoverSheetSecureAppEnvironmentViewController *)self updateHomeGrabberHiddenAssertion:0];
  mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
  [mEMORY[0x277CF0880] addObserver:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  [(SBCoverSheetSecureAppEnvironmentViewController *)&v7 viewWillDisappear:disappear];
  if (self->_biometricMatchingAssertion)
  {
    v4 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SBCoverSheetSecureAppEnvironmentViewController viewWillDisappear:];
    }

    [(BSInvalidatable *)self->_biometricMatchingAssertion invalidate];
    biometricMatchingAssertion = self->_biometricMatchingAssertion;
    self->_biometricMatchingAssertion = 0;
  }

  mEMORY[0x277CF0880] = [MEMORY[0x277CF0880] sharedBacklight];
  [mEMORY[0x277CF0880] removeObserver:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp"))
  {
    return 30;
  }

  _currentSecureAppAction = [(SBCoverSheetSecureAppEnvironmentViewController *)self _currentSecureAppAction];
  specifiesSupportedInterfaceOrientations = [_currentSecureAppAction specifiesSupportedInterfaceOrientations];

  hostedAppSceneHandle = [(SBCoverSheetSecureAppEnvironmentViewController *)self hostedAppSceneHandle];
  sceneIfExists = [hostedAppSceneHandle sceneIfExists];
  uiSettings = [sceneIfExists uiSettings];
  deviceOrientationEventsEnabled = [uiSettings deviceOrientationEventsEnabled];

  if ((specifiesSupportedInterfaceOrientations & 1) == 0 && !deviceOrientationEventsEnabled)
  {
    return 30;
  }

  [*MEMORY[0x277D76620] activeInterfaceOrientation];

  return XBInterfaceOrientationMaskForInterfaceOrientation();
}

- (id)_createTraitsSceneParticipantDelegate
{
  _hostableEntityPresenter = [(SBCoverSheetSecureAppEnvironmentViewController *)self _hostableEntityPresenter];
  if (objc_opt_respondsToSelector())
  {
    sceneHandleForTraitsParticipant = [_hostableEntityPresenter sceneHandleForTraitsParticipant];
    if (sceneHandleForTraitsParticipant)
    {
      v5 = [[SBTraitsSceneParticipantDelegate alloc] initWithSceneHandle:sceneHandleForTraitsParticipant];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (!self->_secureAppTraitsParticipantDelegateHelper)
  {
    if (objc_opt_respondsToSelector())
    {
      sceneForTraitsParticipant = [_hostableEntityPresenter sceneForTraitsParticipant];
      if (sceneForTraitsParticipant)
      {
        v7 = [[SBTraitsSceneParticipantDelegate alloc] initWithScene:sceneForTraitsParticipant];

        v5 = v7;
      }
    }

    if (!self->_secureAppTraitsParticipantDelegateHelper)
    {
      v8 = [SBTraitsSceneParticipantDelegate alloc];
      applicationSceneHandle = [(BSInvalidatable *)self->_secureAppViewController applicationSceneHandle];
      v10 = [(SBTraitsSceneParticipantDelegate *)v8 initWithSceneHandle:applicationSceneHandle];

      v5 = v10;
    }
  }

  return v5;
}

- (void)_acquireSecureAppTraitsParticipantIfNeeded
{
  if (!self->_secureAppTraitsParticipant)
  {
    if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp"))
    {
      _traitsArbiter = [(SBCoverSheetSecureAppEnvironmentViewController *)self _traitsArbiter];
      v4 = [_traitsArbiter acquireParticipantWithRole:@"SBTraitsParticipantRoleSecureApp" delegate:self];
      secureAppTraitsParticipant = self->_secureAppTraitsParticipant;
      self->_secureAppTraitsParticipant = v4;

      _createTraitsSceneParticipantDelegate = [(SBCoverSheetSecureAppEnvironmentViewController *)self _createTraitsSceneParticipantDelegate];
      secureAppTraitsParticipantDelegateHelper = self->_secureAppTraitsParticipantDelegateHelper;
      self->_secureAppTraitsParticipantDelegateHelper = _createTraitsSceneParticipantDelegate;

      [(SBTraitsSceneParticipantDelegate *)self->_secureAppTraitsParticipantDelegateHelper setArbiter:_traitsArbiter];
      [(SBTraitsSceneParticipantDelegate *)self->_secureAppTraitsParticipantDelegateHelper setParticipant:self->_secureAppTraitsParticipant];
      [(SBTraitsSceneParticipantDelegate *)self->_secureAppTraitsParticipantDelegateHelper setCanDetermineActiveOrientation:1];
      v8 = self->_secureAppTraitsParticipantDelegateHelper;
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76EE8] + -5.0];
      [(SBTraitsSceneParticipantDelegate *)v8 setPreferredSceneLevel:v9];

      [(SBTraitsSceneParticipantDelegate *)self->_secureAppTraitsParticipantDelegateHelper setOrientationModeOverride:2];
      objc_initWeak(&location, self);
      v10 = self->_secureAppTraitsParticipantDelegateHelper;
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __92__SBCoverSheetSecureAppEnvironmentViewController__acquireSecureAppTraitsParticipantIfNeeded__block_invoke;
      v14 = &unk_2783AD848;
      objc_copyWeak(&v15, &location);
      [(SBTraitsSceneParticipantDelegate *)v10 setActuateOrientationAlongsideBlock:&v11];
      [(TRAParticipant *)self->_secureAppTraitsParticipant setNeedsUpdatePreferencesWithReason:@"setup", v11, v12, v13, v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __92__SBCoverSheetSecureAppEnvironmentViewController__acquireSecureAppTraitsParticipantIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _actuateTraitsParticipantResolution];
}

- (void)_invalidateTraitsParticipantAndDelegateHelper
{
  [(TRAParticipant *)self->_secureAppTraitsParticipant invalidate];
  [(SBTraitsSceneParticipantDelegate *)self->_secureAppTraitsParticipantDelegateHelper invalidate];
  secureAppTraitsParticipantDelegateHelper = self->_secureAppTraitsParticipantDelegateHelper;
  self->_secureAppTraitsParticipantDelegateHelper = 0;

  secureAppTraitsParticipant = self->_secureAppTraitsParticipant;
  self->_secureAppTraitsParticipant = 0;
}

- (void)_actuateTraitsParticipantResolution
{
  sbf_currentOrientation = [(TRAParticipant *)self->_secureAppTraitsParticipant sbf_currentOrientation];
  view = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
  window = [view window];
  [window _legacySetRotatableViewOrientation:sbf_currentOrientation updateStatusBar:1 duration:0 force:0.0];

  secureAppViewController = self->_secureAppViewController;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
  [fixedCoordinateSpace bounds];
  [(BSInvalidatable *)secureAppViewController setHostedAppReferenceSize:sbf_currentOrientation withInterfaceOrientation:v8, v9];
}

- (id)_traitsArbiter
{
  applicationSceneHandle = [(BSInvalidatable *)self->_secureAppViewController applicationSceneHandle];
  displayIdentity = [applicationSceneHandle displayIdentity];

  windowSceneManager = [SBApp windowSceneManager];
  v7 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  if (v7)
  {
    traitsArbiter = [v7 traitsArbiter];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBCoverSheetSecureAppEnvironmentViewController.m" lineNumber:237 description:@"Unexpected nil window scene"];

    traitsArbiter = 0;
  }

  return traitsArbiter;
}

- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater
{
  secureAppTraitsParticipantDelegateHelper = self->_secureAppTraitsParticipantDelegateHelper;
  updaterCopy = updater;
  [(SBTraitsSceneParticipantDelegate *)secureAppTraitsParticipantDelegateHelper updatePreferencesWithUpdater:updaterCopy];
  [updaterCopy updateOrientationPreferencesWithBlock:&__block_literal_global_232];
}

void __90__SBCoverSheetSecureAppEnvironmentViewController_updatePreferencesForParticipant_updater___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = __sb__runningInSpringBoard();
  v4 = v3;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      [v5 setSupportedOrientations:2];
      goto LABEL_9;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
    {
      [v5 setSupportedOrientations:2];
      goto LABEL_8;
    }
  }

  [v5 setSupportedOrientations:{objc_msgSend(v5, "supportedOrientations")}];
  if ((v4 & 1) == 0)
  {
LABEL_8:
  }

LABEL_9:
}

- (void)didChangeSettingsForParticipant:(id)participant context:(id)context
{
  secureAppTraitsParticipantDelegateHelper = self->_secureAppTraitsParticipantDelegateHelper;
  orientationActuationContext = [context orientationActuationContext];
  [(SBTraitsSceneParticipantDelegate *)secureAppTraitsParticipantDelegateHelper actuateOrientationSettingsWithContext:orientationActuationContext];
}

- (id)participantAssociatedWindows:(id)windows
{
  v10[1] = *MEMORY[0x277D85DE8];
  view = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
  window = [view window];
  if (window)
  {
    view2 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    window2 = [view2 window];
    v10[0] = window2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)appendDescriptionForParticipant:(id)participant withBuilder:(id)builder multilinePrefix:(id)prefix
{
  builderCopy = builder;
  prefixCopy = prefix;
  v10 = [(SBCoverSheetSecureAppEnvironmentViewController *)self participantAssociatedSceneIdentityTokens:participant];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 bs_map:&__block_literal_global_38_1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __110__SBCoverSheetSecureAppEnvironmentViewController_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke_2;
    v14[3] = &unk_2783A92D8;
    v15 = builderCopy;
    v16 = v12;
    v13 = v12;
    [v15 appendBodySectionWithName:@"Associated Scenes" multilinePrefix:prefixCopy block:v14];
  }
}

- (id)traitsParticipantForSceneHandle:(id)handle
{
  secureAppViewController = self->_secureAppViewController;
  handleCopy = handle;
  applicationSceneHandle = [(BSInvalidatable *)secureAppViewController applicationSceneHandle];

  if (applicationSceneHandle == handleCopy)
  {
    v7 = self->_secureAppTraitsParticipant;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)secureAppOfTypeDidTakeNewAssertion:(unint64_t)assertion
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    assertionCopy = assertion;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SecureApp of type: %lu took new assertion", &v6, 0xCu);
  }

  [(SBCoverSheetSecureAppEnvironmentViewController *)self _updateSupportedOrientationsMaskForSecureAppAction];
}

- (void)requestHomeGestureOwnership
{
  v22 = *MEMORY[0x277D85DE8];
  zStackParticipant = [(SBCoverSheetSecureAppEnvironmentViewController *)self zStackParticipant];

  if (!zStackParticipant)
  {
    view = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    window = [view window];

    _sbWindowScene = [window _sbWindowScene];
    zStackResolver = [_sbWindowScene zStackResolver];
    v8 = [zStackResolver acquireParticipantWithIdentifier:7 delegate:self];
    if (v8)
    {
      [(SBCoverSheetSecureAppEnvironmentViewController *)self setZStackParticipant:v8];
      v9 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBAudioCategoryZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
      audioCategoryZStackPolicyAssistant = self->_audioCategoryZStackPolicyAssistant;
      self->_audioCategoryZStackPolicyAssistant = v9;

      v11 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
      physicalButtonZStackPolicyAssistant = self->_physicalButtonZStackPolicyAssistant;
      self->_physicalButtonZStackPolicyAssistant = v11;

      v13 = [[SBSystemApertureZStackPolicyAssistant alloc] initWithParticipant:?];
      systemApertureZStackPolicyAssistant = self->_systemApertureZStackPolicyAssistant;
      self->_systemApertureZStackPolicyAssistant = v13;

      [(SBCoverSheetSecureAppEnvironmentViewController *)self _updateZStackPolicyAssistants];
    }

    else
    {
      v15 = SBLogCoverSheet();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 134218496;
        v17 = window;
        v18 = 2048;
        v19 = _sbWindowScene;
        v20 = 2048;
        v21 = zStackResolver;
        _os_log_error_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_ERROR, "participant should not be nil here -- all of these should be non-nil: window:%p SBWindowScene:%p resolver:%p", &v16, 0x20u);
      }
    }
  }
}

- (void)relinquishHomeGesture
{
  zStackParticipant = [(SBCoverSheetSecureAppEnvironmentViewController *)self zStackParticipant];

  if (zStackParticipant)
  {
    zStackParticipant2 = [(SBCoverSheetSecureAppEnvironmentViewController *)self zStackParticipant];
    [zStackParticipant2 invalidate];

    [(SBCoverSheetSecureAppEnvironmentViewController *)self setZStackParticipant:0];
  }
}

- (id)_currentSecureAppAction
{
  v2 = +[SBSecureAppManager sharedInstance];
  secureAppAction = [v2 secureAppAction];

  return secureAppAction;
}

- (void)_updateSupportedOrientationsMaskForSecureAppAction
{
  v33[6] = *MEMORY[0x277D85DE8];
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp") & 1) == 0)
  {
    _currentSecureAppAction = [(SBCoverSheetSecureAppEnvironmentViewController *)self _currentSecureAppAction];
    v4 = _currentSecureAppAction;
    if (_currentSecureAppAction && [_currentSecureAppAction specifiesSupportedInterfaceOrientations])
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __100__SBCoverSheetSecureAppEnvironmentViewController__updateSupportedOrientationsMaskForSecureAppAction__block_invoke;
      v31[3] = &unk_2783AFDC0;
      v31[4] = self;
      v5 = MEMORY[0x223D6F7F0](v31);
      supportedInterfaceOrientations = [v4 supportedInterfaceOrientations];
      currentOrientationMask = self->_currentOrientationMask;
      activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      orientation = [currentDevice orientation];

      v11 = v5[2](v5, activeInterfaceOrientation);
      v12 = v5[2](v5, orientation);
      v13 = supportedInterfaceOrientations != currentOrientationMask || v11 == 0;
      if (v13 || (v12 & 1) == 0)
      {
        self->_currentOrientationMask = supportedInterfaceOrientations;
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:activeInterfaceOrientation];
        v33[0] = v14;
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:orientation];
        v33[1] = v15;
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:3];
        v33[2] = v16;
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:4];
        v33[3] = v17;
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:1];
        v33[4] = v18;
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:2];
        v33[5] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v28;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v28 != v24)
              {
                objc_enumerationMutation(v21);
              }

              integerValue = [*(*(&v27 + 1) + 8 * i) integerValue];
              if (v5[2](v5, integerValue))
              {
                [SBApp _setDeviceOrientation:integerValue animated:0 logMessage:@"[SBCSSecureAppEnvironmentVC] rotating device to match full screen secure app supported orientations."];
                [SBApp updateNativeOrientationWithOrientation:integerValue logMessage:@"[SBCSSecureAppEnvironmentVC] rotating native orientation to match full screen secure app supported orientations."];
                goto LABEL_19;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v27 objects:v32 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:
      }
    }
  }
}

- (void)_updateIdleWarnModeForAlwaysOnEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained secureAppEnvironmentViewControllerShouldEnableIdleWarning:self alwaysOnEnabled:enabledCopy];

  if (objc_opt_respondsToSelector())
  {
    secureAppViewController = self->_secureAppViewController;

    [(BSInvalidatable *)secureAppViewController setOverrideIdleWarnMode:v6 ^ 1u];
  }
}

- (id)_hostableEntityPresenter
{
  if (objc_opt_respondsToSelector())
  {
    v3 = self->_secureAppViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  [preferencesCopy setActivationPolicyForParticipantsBelow:2];
  [preferencesCopy setSuppressSystemApertureForSystemChromeSuppression:-[SBSystemApertureZStackPolicyAssistant suppressSystemApertureForSystemChromeSuppression](self->_systemApertureZStackPolicyAssistant)];
  allCameraShutterButtonPIDs = [(SBCameraHardwareButton *)self->_systemApertureZStackPolicyAssistant allCameraShutterButtonPIDs];
  [preferencesCopy setAssociatedBundleIdentifiersToSuppressInSystemAperture:allCameraShutterButtonPIDs];

  foregroundCameraShutterButtonPIDs = [(SBCameraHardwareButton *)self->_systemApertureZStackPolicyAssistant foregroundCameraShutterButtonPIDs];
  [preferencesCopy setAssociatedSceneIdentifiersToSuppressInSystemAperture:foregroundCameraShutterButtonPIDs];

  audioCategoriesDisablingVolumeHUD = [(SBAudioCategoryZStackPolicyAssistant *)self->_audioCategoryZStackPolicyAssistant audioCategoriesDisablingVolumeHUD];
  [preferencesCopy setAudioCategoriesDisablingVolumeHUD:audioCategoriesDisablingVolumeHUD];

  physicalButtonSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant physicalButtonSceneTargets];
  [preferencesCopy setPhysicalButtonSceneTargets:physicalButtonSceneTargets];

  captureButtonFullFidelityEventRequestingScenes = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
  [preferencesCopy setCaptureButtonFullFidelityEventRequestingScenes:captureButtonFullFidelityEventRequestingScenes];

  foregroundCaptureSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant foregroundCaptureSceneTargets];
  [preferencesCopy setForegroundCaptureSceneTargets:foregroundCaptureSceneTargets];

  [preferencesCopy setAllowsKeyboardArbiterToDetermineFocusTarget:1];
  [preferencesCopy setAllowCameraButtonDeferringWhileFocusLocked:1];
}

- (void)_updateZStackPolicyAssistants
{
  v21[1] = *MEMORY[0x277D85DE8];
  _hostableEntityPresenter = [(SBCoverSheetSecureAppEnvironmentViewController *)self _hostableEntityPresenter];
  v4 = _hostableEntityPresenter;
  if (_hostableEntityPresenter)
  {
    sceneHandleForTraitsParticipant = [_hostableEntityPresenter sceneHandleForTraitsParticipant];
    if (sceneHandleForTraitsParticipant)
    {
      v6 = objc_opt_class();
      v7 = sceneHandleForTraitsParticipant;
      if (v6)
      {
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      homeGrabberView = v8;

      if (homeGrabberView)
      {
        homeGrabberViewForTraitsParticipant = [v4 homeGrabberViewForTraitsParticipant];
        [(SBSystemApertureZStackPolicyAssistant *)self->_systemApertureZStackPolicyAssistant setForegroundExclusiveSceneHandle:homeGrabberView homeGrabberView:homeGrabberViewForTraitsParticipant];
      }

      v21[0] = v7;
      v15 = v21;
    }

    else
    {
      sceneForTraitsParticipant = [v4 sceneForTraitsParticipant];
      homeGrabberView = sceneForTraitsParticipant;
      if (!sceneForTraitsParticipant)
      {
        v16 = 0;
        goto LABEL_29;
      }

      v20 = sceneForTraitsParticipant;
      v15 = &v20;
    }

    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
LABEL_29:

    goto LABEL_30;
  }

  if (objc_opt_respondsToSelector())
  {
    sceneHandleForTraitsParticipant = [(BSInvalidatable *)self->_secureAppViewController appView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      homeGrabberView = [sceneHandleForTraitsParticipant homeGrabberView];
      applicationSceneHandle = [(BSInvalidatable *)self->_secureAppViewController applicationSceneHandle];
      v11 = objc_opt_class();
      v12 = applicationSceneHandle;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v18 = v13;
    }

    else
    {
      v18 = 0;
      homeGrabberView = 0;
    }

    [(SBSystemApertureZStackPolicyAssistant *)self->_systemApertureZStackPolicyAssistant setForegroundExclusiveSceneHandle:v18 homeGrabberView:homeGrabberView];
    if (v18)
    {
      v19 = v18;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_29;
  }

  v16 = 0;
LABEL_30:
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_audioCategoryZStackPolicyAssistant setForegroundScenes:v16];
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant setForegroundScenes:v16];
}

- (void)updateHomeGrabberHiddenAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  if (objc_opt_respondsToSelector())
  {
    appView = [(BSInvalidatable *)self->_secureAppViewController appView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = appView;
    if (isKindOfClass)
    {
      homeGrabberView = [appView homeGrabberView];
      [homeGrabberView setDelegate:self];
      [homeGrabberView setPointerClickDelegate:self];
      if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
      {
        [(SBCoverSheetSecureAppEnvironmentViewController *)self relinquishHiddenAssertionForHomeGrabber:homeGrabberView animated:assertionCopy];
      }

      else
      {
        [(SBCoverSheetSecureAppEnvironmentViewController *)self takeHiddenAssertionForHomeGrabber:homeGrabberView animated:assertionCopy];
      }

      delegate = [(SBCoverSheetSecureAppEnvironmentViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate secureAppEnvironmentViewControllerOwnsHomeGestureDidChange];
      }

      v6 = appView;
    }
  }
}

- (void)takeHiddenAssertionForHomeGrabber:(id)grabber animated:(BOOL)animated
{
  if (animated)
  {
    v4 = MEMORY[0x277D65E80];
    grabberCopy = grabber;
    rootSettings = [v4 rootSettings];
    hideForHomeGestureOwnershipAnimationSettings = [rootSettings hideForHomeGestureOwnershipAnimationSettings];
    bSAnimationSettings = [hideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

    [grabberCopy setHidden:1 forReason:@"SBCoverSheetSecureAppEnvironmentViewController" withAnimationSettings:bSAnimationSettings];
  }

  else
  {
    [grabber setHidden:1 forReason:@"SBCoverSheetSecureAppEnvironmentViewController" withAnimationSettings:0];
  }

  [grabber setHomeAffordanceInteractionEnabled:0];
}

- (void)relinquishHiddenAssertionForHomeGrabber:(id)grabber animated:(BOOL)animated
{
  if (animated)
  {
    v4 = MEMORY[0x277D65E80];
    grabberCopy = grabber;
    rootSettings = [v4 rootSettings];
    unhideForHomeGestureOwnershipAnimationSettings = [rootSettings unhideForHomeGestureOwnershipAnimationSettings];
    bSAnimationSettings = [unhideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

    [grabberCopy setHidden:0 forReason:@"SBCoverSheetSecureAppEnvironmentViewController" withAnimationSettings:bSAnimationSettings];
  }

  else
  {
    [grabber setHidden:0 forReason:@"SBCoverSheetSecureAppEnvironmentViewController" withAnimationSettings:0];
  }

  [grabber setHomeAffordanceInteractionEnabled:1];
}

- (void)homeGrabberViewDidReceiveClick:(id)click
{
  if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
  {
    v3 = +[SBLockScreenManager sharedInstance];
    [v3 unlockUIFromSource:15 withOptions:MEMORY[0x277CBEC10]];
  }
}

- (SBCoverSheetSecureAppEnvironmentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
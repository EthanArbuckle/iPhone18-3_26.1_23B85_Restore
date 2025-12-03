@interface SBExternalDisplayWindowSceneDelegate
+ (id)_individuallyManagedRoles;
- (BOOL)_shouldManageParticipantWithRole:(id)role;
- (SBExternalDisplayWindowSceneDelegate)init;
- (id)_displayLayoutPublisherForConnectingWindowScene:(id)scene;
- (id)_pipelineManager;
- (void)_configureForConnectingWindowScene:(id)scene windowSceneContext:(id)context;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation SBExternalDisplayWindowSceneDelegate

- (SBExternalDisplayWindowSceneDelegate)init
{
  v6.receiver = self;
  v6.super_class = SBExternalDisplayWindowSceneDelegate;
  v2 = [(SBAbstractWindowSceneDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBTraitsWindowParticipantDelegate);
    traitsWindowParticipantsDelegate = v2->_traitsWindowParticipantsDelegate;
    v2->_traitsWindowParticipantsDelegate = v3;
  }

  return v2;
}

+ (id)_individuallyManagedRoles
{
  if (_individuallyManagedRoles_onceToken != -1)
  {
    +[SBExternalDisplayWindowSceneDelegate _individuallyManagedRoles];
  }

  v3 = _individuallyManagedRoles__individuallyManagedRoles;

  return v3;
}

void __65__SBExternalDisplayWindowSceneDelegate__individuallyManagedRoles__block_invoke()
{
  v2[23] = *MEMORY[0x277D85DE8];
  v2[0] = @"SBTraitsParticipantRoleAudioHUD";
  v2[1] = @"SBTraitsParticipantRoleAXAssistiveTouchUI";
  v2[2] = @"SBTraitsParticipantRoleAXFullKeyboardUI";
  v2[3] = @"SBTraitsParticipantRoleAXVoiceControlUI";
  v2[4] = @"SBTraitsParticipantRoleAXUIServer";
  v2[5] = @"SBTraitsParticipantRoleBanner";
  v2[6] = @"SBTraitsParticipantRoleCoverSheetCamera";
  v2[7] = @"SBTraitsParticipantRoleCoverSheetPosterSwitcher";
  v2[8] = @"SBTraitsParticipantRoleDeviceApplicationSceneViewOverlay";
  v2[9] = @"SBTraitsParticipantRoleDruid";
  v2[10] = @"SBTraitsParticipantRoleEnsembleUI";
  v2[11] = @"SBTraitsParticipantRoleEyedropperUI";
  v2[12] = @"SBTraitsParticipantRoleInputUI";
  v2[13] = @"SBTraitsParticipantRoleInternalPerfPowerHUD";
  v2[14] = @"SBTraitsParticipantRoleLiveTranscriptionUI";
  v2[15] = @"SBTraitsParticipantRoleMedusaDrag";
  v2[16] = @"SBTraitsParticipantRoleMomentsUI";
  v2[17] = @"SBTraitsParticipantRolePerfPowerHUD";
  v2[18] = @"SBTraitsParticipantRoleOverlayUI";
  v2[19] = @"SBTraitsParticipantRoleSubterraneanOverlayUI";
  v2[20] = @"SBTraitsParticipantRoleSecureApp";
  v2[21] = @"SBTraitsParticipantRoleSwitcherRaw";
  v2[22] = @"SBTraitsParticipantRoleSystemAperture";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:23];
  v1 = _individuallyManagedRoles__individuallyManagedRoles;
  _individuallyManagedRoles__individuallyManagedRoles = v0;
}

- (id)_pipelineManager
{
  traitsExternalPipelineManager = self->_traitsExternalPipelineManager;
  if (!traitsExternalPipelineManager)
  {
    v4 = [SBTraitsExternalDisplayPipelineManager alloc];
    v5 = [SBApp userInterfaceStyleProviderForDisplay:0];
    v6 = [(SBTraitsPipelineManager *)v4 initWithUserInterfaceStyleProvider:v5];
    v7 = self->_traitsExternalPipelineManager;
    self->_traitsExternalPipelineManager = v6;

    traitsExternalPipelineManager = self->_traitsExternalPipelineManager;
  }

  return traitsExternalPipelineManager;
}

- (id)_displayLayoutPublisherForConnectingWindowScene:(id)scene
{
  sceneCopy = scene;
  if (SBFIsShellSceneKitAvailable())
  {
    displayLayoutPublisher = self->_displayLayoutPublisher;
    if (!displayLayoutPublisher)
    {
      v7 = objc_alloc_init(MEMORY[0x277D0AD30]);
      [v7 setDomainIdentifier:@"com.apple.frontboard"];
      _sbDisplayConfiguration = [sceneCopy _sbDisplayConfiguration];
      identity = [_sbDisplayConfiguration identity];
      v10 = SBExternalDisplayLayoutServiceInstanceIdentifierForDisplay();
      [v7 setInstanceIdentifier:v10];

      v11 = [MEMORY[0x277D0AD28] publisherWithConfiguration:v7];
      v12 = self->_displayLayoutPublisher;
      self->_displayLayoutPublisher = v11;

      [(FBSDisplayLayoutPublisher *)self->_displayLayoutPublisher activate];
      displayLayoutPublisher = self->_displayLayoutPublisher;
    }

    v13 = displayLayoutPublisher;
  }

  else
  {
    _FBSScene = [sceneCopy _FBSScene];
    settings = [_FBSScene settings];
    displayIdentity = [settings displayIdentity];
    rootIdentity = [displayIdentity rootIdentity];

    v13 = [SBApp layoutPublisherForPhysicalDisplay:rootIdentity];
    if (!v13)
    {
      [(SBExternalDisplayWindowSceneDelegate *)a2 _displayLayoutPublisherForConnectingWindowScene:rootIdentity];
    }
  }

  return v13;
}

- (BOOL)_shouldManageParticipantWithRole:(id)role
{
  roleCopy = role;
  _individuallyManagedRoles = [objc_opt_class() _individuallyManagedRoles];
  v5 = [_individuallyManagedRoles containsObject:roleCopy];

  return v5 ^ 1;
}

- (void)_configureForConnectingWindowScene:(id)scene windowSceneContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
  v75.receiver = self;
  v75.super_class = SBExternalDisplayWindowSceneDelegate;
  [(SBAbstractWindowSceneDelegate *)&v75 _configureForConnectingWindowScene:sceneCopy windowSceneContext:contextCopy];
  if (SBFIsShellSceneKitAvailable())
  {
    _FBSScene = [sceneCopy _FBSScene];
    sSKDisplayEndpoint = [_FBSScene SSKDisplayEndpoint];

    [sSKDisplayEndpoint setWantsControlOfDisplay:1];
    v10 = +[SBDefaults localDefaults];
    externalDisplayDefaults = [v10 externalDisplayDefaults];

    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __94__SBExternalDisplayWindowSceneDelegate__configureForConnectingWindowScene_windowSceneContext___block_invoke;
    v71[3] = &unk_2783A8ED8;
    v72 = sceneCopy;
    v73 = externalDisplayDefaults;
    v74 = sSKDisplayEndpoint;
    v12 = sSKDisplayEndpoint;
    v13 = externalDisplayDefaults;
    v14 = [v13 observeDisplayModeSettingsOnQueue:MEMORY[0x277D85CD0] withBlock:v71];
    displayModeSettingsToken = self->_displayModeSettingsToken;
    self->_displayModeSettingsToken = v14;
  }

  v16 = +[SBHIDEventDispatchController sharedInstance];
  _sbDisplayConfiguration = [sceneCopy _sbDisplayConfiguration];
  v18 = [v16 configureDispatchRootsForChamoisDisplay:_sbDisplayConfiguration];
  eventRoutingAssertion = self->_eventRoutingAssertion;
  self->_eventRoutingAssertion = v18;

  v20 = os_transaction_create();
  increasedMemoryLimitsTransaction = self->_increasedMemoryLimitsTransaction;
  self->_increasedMemoryLimitsTransaction = v20;

  v22 = [SBSystemPointerInteractionManager alloc];
  multiDisplayUserInteractionCoordinator = [SBApp multiDisplayUserInteractionCoordinator];
  v24 = [(SBSystemPointerInteractionManager *)v22 initWithMultiDisplayUserInteractionCoordinator:multiDisplayUserInteractionCoordinator];

  [contextCopy setSystemPointerInteractionManager:v24];
  v25 = [SBExternalDisplaySystemGestureManager alloc];
  screen = [sceneCopy screen];
  displayIdentity = [screen displayIdentity];
  v28 = [(SBExternalDisplaySystemGestureManager *)v25 initWithDisplayIdentity:displayIdentity];

  [(SBSystemGestureManager *)v28 setSystemPointerInteractionDelegate:v24];
  [contextCopy setSystemGestureManager:v28];
  v70 = [[SBHomeAffordanceInteractionManager alloc] initWithWindowScene:sceneCopy];
  [contextCopy setHomeAffordanceInteractionManager:?];
  v69 = [[SBModalUIFluidDismissGestureManager alloc] initWithWindowScene:sceneCopy systemGestureManager:v28];
  [contextCopy setModalUIFluidDismissGestureManager:?];
  v68 = [[SBTransientUIInteractionManager alloc] initWithSystemGestureManager:v28];
  [contextCopy setTransientUIInteractionManager:?];
  v67 = [[SBRecordingIndicatorManager alloc] initWithWindowScene:sceneCopy];
  [contextCopy setRecordingIndicatorManager:?];
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  homeScreenController = [embeddedDisplayWindowScene homeScreenController];

  _iconController = [homeScreenController _iconController];
  [contextCopy setIconController:_iconController];
  [contextCopy setHomeScreenController:homeScreenController];
  v66 = [homeScreenController createFloatingDockControllerForWindowScene:sceneCopy];
  [contextCopy setFloatingDockController:?];
  v65 = [homeScreenController createModalLibraryControllerForWindowScene:sceneCopy];
  [contextCopy setModalLibraryController:?];
  v33 = [homeScreenController createStatusBarVisibiltyAssertionForWindowScene:sceneCopy];
  showStatusBarAssertion = self->_showStatusBarAssertion;
  self->_showStatusBarAssertion = v33;

  [(SBWindowSceneStatusBarSettingsAssertion *)self->_showStatusBarAssertion acquire];
  statusBarManager = [sceneCopy statusBarManager];
  [statusBarManager updateHomeScreenStatusBarLegibility];

  v64 = [[SBCommandTabController alloc] initWithWindowScene:sceneCopy iconController:_iconController];
  [contextCopy setCommandTabController:?];
  v36 = [[SBExternalDisplayWallpaperController alloc] initWithWindowScene:sceneCopy requiresTraitsParticipant:1];
  wallpaperController = self->_wallpaperController;
  self->_wallpaperController = v36;

  v38 = [[SBExternalDisplayCoverSheetController alloc] initWithWindowScene:sceneCopy];
  coverSheetController = self->_coverSheetController;
  self->_coverSheetController = v38;

  [contextCopy setUILockStateProvider:self->_coverSheetController];
  v40 = objc_alloc_init(SBExternalChamoisUICommandValidator);
  [contextCopy setCommandValidator:v40];

  v41 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v41 transientOverlayPresentationManager];
  [transientOverlayPresentationManager windowSceneDidConnect:sceneCopy];

  if (SBFIsControlCenterInChamoisExtendedAvailable())
  {
    v43 = [SBControlCenterController alloc];
    v44 = +[SBControlCenterCoordinator sharedInstance];
    v45 = [(SBControlCenterController *)v43 initWithWindowScene:sceneCopy controlCenterCoordinator:v44];

    [contextCopy setControlCenterController:v45];
  }

  pictureInPictureManager = [sceneCopy pictureInPictureManager];
  [pictureInPictureManager windowSceneDidConnect:sceneCopy];

  if (([MEMORY[0x277D244C8] inUserSessionLoginUI] & 1) == 0)
  {
    v47 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v47 windowSceneDidConnect:sceneCopy];

    v48 = [[SBSwitcherController alloc] initWithWindowScene:sceneCopy debugName:@"ExternalDisplay"];
    [contextCopy setSwitcherController:v48];
    v49 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v49 beginCoordinatingSwitcherController:v48];

    if (_UIEnhancedMainMenuEnabled())
    {
      if (__sb__runningInSpringBoard())
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom == 1)
      {
LABEL_11:
        menuBarManager = [sceneCopy menuBarManager];
        [menuBarManager setMenuBarSceneProvider:v48];
      }
    }

LABEL_12:
  }

  v53 = [SBAlertLayoutPresentationVerifier alloc];
  screen2 = [sceneCopy screen];
  v55 = [(SBAlertLayoutPresentationVerifier *)v53 initWithScreen:screen2];

  v56 = [SBSharedModalAlertItemPresenter alloc];
  lockOutController = [SBApp lockOutController];
  v58 = +[SBReachabilityManager sharedInstance];
  v59 = [(SBSharedModalAlertItemPresenter *)v56 initWithLockOutProvider:lockOutController systemGestureManager:v28 reachabilityManager:v58 alertLayoutPresentationVerifier:v55 windowScene:sceneCopy];

  v60 = +[SBAlertItemsController sharedInstance];
  [v60 windowSceneDidConnect:sceneCopy withSharedModalAlertItemPresenter:v59];

  v61 = +[SBAppInteractionEventSourceManager sharedInstance];
  [v61 windowSceneDidConnect:sceneCopy];

  multiDisplayUserInteractionCoordinator2 = [SBApp multiDisplayUserInteractionCoordinator];
  [multiDisplayUserInteractionCoordinator2 windowSceneDidConnect:sceneCopy];

  statusBarManager2 = [sceneCopy statusBarManager];
  [statusBarManager2 windowSceneDidConnect:sceneCopy];
}

void __94__SBExternalDisplayWindowSceneDelegate__configureForConnectingWindowScene_windowSceneContext___block_invoke(id *a1)
{
  if ([a1[4] activationState] != -1)
  {
    v2 = [a1[4] _FBSScene];
    v3 = [v2 settings];
    v8 = [v3 displayConfiguration];

    v4 = [a1[5] displayModeSettingsForDisplay:v8];
    v5 = [MEMORY[0x277D65DB0] withDisplay:v8];
    v6 = objc_alloc_init(MEMORY[0x277D0AD40]);
    [v4 overscanCompensation];
    [v6 setOverscanCompensation:FBSDisplayOverscanCompensationForDisplayValue()];
    [v5 logicalScaleForDisplayScale:{objc_msgSend(v4, "scale")}];
    [v6 setLogicalScale:{v7, v7}];
    [a1[5] contentsScale];
    [v6 setPointScale:?];
    [a1[6] setDisplayConfigurationRequest:v6];
  }
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  role = [sessionCopy role];
  if (([role isEqualToString:@"SBWindowSceneSessionRoleExternalDisplay"] & 1) == 0)
  {
    [SBExternalDisplayWindowSceneDelegate scene:a2 willConnectToSession:self options:?];
  }

  v13.receiver = self;
  v13.super_class = SBExternalDisplayWindowSceneDelegate;
  [(SBAbstractWindowSceneDelegate *)&v13 scene:sceneCopy willConnectToSession:sessionCopy options:optionsCopy];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  [(BSDefaultObserver *)self->_displayModeSettingsToken invalidate];
  v5 = objc_opt_class();
  v6 = disconnectCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = +[SBMainWorkspace sharedInstanceIfExists];
  keyboardFocusController = [v9 keyboardFocusController];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  screen = [v8 screen];
  displayIdentity = [screen displayIdentity];
  v16 = [v11 stringWithFormat:@"%@ - %@", v13, displayIdentity];
  v17 = [keyboardFocusController suppressKeyboardFocusEvaluationForReason:v16];

  [v8 setInvalidating:1];
  v18 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  switcherController = [v8 switcherController];
  [v18 endCoordinatingSwitcherController:switcherController];

  v20 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  [v20 windowSceneDidDisconnect:v8];

  floatingDockController = [(SBAbstractWindowSceneDelegate *)self floatingDockController];
  [floatingDockController invalidate];

  [(SBWindowSceneStatusBarSettingsAssertion *)self->_showStatusBarAssertion invalidate];
  showStatusBarAssertion = self->_showStatusBarAssertion;
  self->_showStatusBarAssertion = 0;

  modalLibraryController = [(SBAbstractWindowSceneDelegate *)self modalLibraryController];
  [modalLibraryController invalidate];

  [(BSInvalidatable *)self->_eventRoutingAssertion invalidate];
  eventRoutingAssertion = self->_eventRoutingAssertion;
  self->_eventRoutingAssertion = 0;

  increasedMemoryLimitsTransaction = self->_increasedMemoryLimitsTransaction;
  self->_increasedMemoryLimitsTransaction = 0;

  systemGestureManager = [v8 systemGestureManager];
  [systemGestureManager invalidate];

  v27 = +[SBAlertItemsController sharedInstance];
  [v27 windowSceneDidDisconnect:v8];

  v28 = +[SBAppInteractionEventSourceManager sharedInstance];
  [v28 windowSceneDidDisconnect:v8];

  multiDisplayUserInteractionCoordinator = [SBApp multiDisplayUserInteractionCoordinator];
  [multiDisplayUserInteractionCoordinator windowSceneDidDisconnect:v8];

  [(SBExternalDisplayCoverSheetController *)self->_coverSheetController invalidate];
  coverSheetController = self->_coverSheetController;
  self->_coverSheetController = 0;

  [(FBSDisplayLayoutPublisher *)self->_displayLayoutPublisher invalidate];
  displayLayoutPublisher = self->_displayLayoutPublisher;
  self->_displayLayoutPublisher = 0;

  controlCenterController = [v8 controlCenterController];
  [controlCenterController invalidate];

  v33.receiver = self;
  v33.super_class = SBExternalDisplayWindowSceneDelegate;
  [(SBAbstractWindowSceneDelegate *)&v33 sceneDidDisconnect:v6];
  [v17 invalidate];
  [v8 invalidate];

  [(SBAbstractWindowSceneDelegate *)self setInvalidated:1];
}

- (void)_displayLayoutPublisherForConnectingWindowScene:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBExternalDisplayWindowSceneDelegate.m" lineNumber:166 description:{@"failed to retrieve publisher for display: %@", a3}];
}

- (void)scene:(uint64_t)a1 willConnectToSession:(uint64_t)a2 options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBExternalDisplayWindowSceneDelegate.m" lineNumber:300 description:@"unexpected role for SBSystemShellExternalDisplayWindowSceneDelegate"];
}

@end
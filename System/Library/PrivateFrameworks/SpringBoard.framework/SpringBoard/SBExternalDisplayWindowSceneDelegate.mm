@interface SBExternalDisplayWindowSceneDelegate
+ (id)_individuallyManagedRoles;
- (BOOL)_shouldManageParticipantWithRole:(id)a3;
- (SBExternalDisplayWindowSceneDelegate)init;
- (id)_displayLayoutPublisherForConnectingWindowScene:(id)a3;
- (id)_pipelineManager;
- (void)_configureForConnectingWindowScene:(id)a3 windowSceneContext:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
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

- (id)_displayLayoutPublisherForConnectingWindowScene:(id)a3
{
  v5 = a3;
  if (SBFIsShellSceneKitAvailable())
  {
    displayLayoutPublisher = self->_displayLayoutPublisher;
    if (!displayLayoutPublisher)
    {
      v7 = objc_alloc_init(MEMORY[0x277D0AD30]);
      [v7 setDomainIdentifier:@"com.apple.frontboard"];
      v8 = [v5 _sbDisplayConfiguration];
      v9 = [v8 identity];
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
    v14 = [v5 _FBSScene];
    v15 = [v14 settings];
    v16 = [v15 displayIdentity];
    v17 = [v16 rootIdentity];

    v13 = [SBApp layoutPublisherForPhysicalDisplay:v17];
    if (!v13)
    {
      [(SBExternalDisplayWindowSceneDelegate *)a2 _displayLayoutPublisherForConnectingWindowScene:v17];
    }
  }

  return v13;
}

- (BOOL)_shouldManageParticipantWithRole:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _individuallyManagedRoles];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

- (void)_configureForConnectingWindowScene:(id)a3 windowSceneContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v75.receiver = self;
  v75.super_class = SBExternalDisplayWindowSceneDelegate;
  [(SBAbstractWindowSceneDelegate *)&v75 _configureForConnectingWindowScene:v6 windowSceneContext:v7];
  if (SBFIsShellSceneKitAvailable())
  {
    v8 = [v6 _FBSScene];
    v9 = [v8 SSKDisplayEndpoint];

    [v9 setWantsControlOfDisplay:1];
    v10 = +[SBDefaults localDefaults];
    v11 = [v10 externalDisplayDefaults];

    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __94__SBExternalDisplayWindowSceneDelegate__configureForConnectingWindowScene_windowSceneContext___block_invoke;
    v71[3] = &unk_2783A8ED8;
    v72 = v6;
    v73 = v11;
    v74 = v9;
    v12 = v9;
    v13 = v11;
    v14 = [v13 observeDisplayModeSettingsOnQueue:MEMORY[0x277D85CD0] withBlock:v71];
    displayModeSettingsToken = self->_displayModeSettingsToken;
    self->_displayModeSettingsToken = v14;
  }

  v16 = +[SBHIDEventDispatchController sharedInstance];
  v17 = [v6 _sbDisplayConfiguration];
  v18 = [v16 configureDispatchRootsForChamoisDisplay:v17];
  eventRoutingAssertion = self->_eventRoutingAssertion;
  self->_eventRoutingAssertion = v18;

  v20 = os_transaction_create();
  increasedMemoryLimitsTransaction = self->_increasedMemoryLimitsTransaction;
  self->_increasedMemoryLimitsTransaction = v20;

  v22 = [SBSystemPointerInteractionManager alloc];
  v23 = [SBApp multiDisplayUserInteractionCoordinator];
  v24 = [(SBSystemPointerInteractionManager *)v22 initWithMultiDisplayUserInteractionCoordinator:v23];

  [v7 setSystemPointerInteractionManager:v24];
  v25 = [SBExternalDisplaySystemGestureManager alloc];
  v26 = [v6 screen];
  v27 = [v26 displayIdentity];
  v28 = [(SBExternalDisplaySystemGestureManager *)v25 initWithDisplayIdentity:v27];

  [(SBSystemGestureManager *)v28 setSystemPointerInteractionDelegate:v24];
  [v7 setSystemGestureManager:v28];
  v70 = [[SBHomeAffordanceInteractionManager alloc] initWithWindowScene:v6];
  [v7 setHomeAffordanceInteractionManager:?];
  v69 = [[SBModalUIFluidDismissGestureManager alloc] initWithWindowScene:v6 systemGestureManager:v28];
  [v7 setModalUIFluidDismissGestureManager:?];
  v68 = [[SBTransientUIInteractionManager alloc] initWithSystemGestureManager:v28];
  [v7 setTransientUIInteractionManager:?];
  v67 = [[SBRecordingIndicatorManager alloc] initWithWindowScene:v6];
  [v7 setRecordingIndicatorManager:?];
  v29 = [SBApp windowSceneManager];
  v30 = [v29 embeddedDisplayWindowScene];
  v31 = [v30 homeScreenController];

  v32 = [v31 _iconController];
  [v7 setIconController:v32];
  [v7 setHomeScreenController:v31];
  v66 = [v31 createFloatingDockControllerForWindowScene:v6];
  [v7 setFloatingDockController:?];
  v65 = [v31 createModalLibraryControllerForWindowScene:v6];
  [v7 setModalLibraryController:?];
  v33 = [v31 createStatusBarVisibiltyAssertionForWindowScene:v6];
  showStatusBarAssertion = self->_showStatusBarAssertion;
  self->_showStatusBarAssertion = v33;

  [(SBWindowSceneStatusBarSettingsAssertion *)self->_showStatusBarAssertion acquire];
  v35 = [v6 statusBarManager];
  [v35 updateHomeScreenStatusBarLegibility];

  v64 = [[SBCommandTabController alloc] initWithWindowScene:v6 iconController:v32];
  [v7 setCommandTabController:?];
  v36 = [[SBExternalDisplayWallpaperController alloc] initWithWindowScene:v6 requiresTraitsParticipant:1];
  wallpaperController = self->_wallpaperController;
  self->_wallpaperController = v36;

  v38 = [[SBExternalDisplayCoverSheetController alloc] initWithWindowScene:v6];
  coverSheetController = self->_coverSheetController;
  self->_coverSheetController = v38;

  [v7 setUILockStateProvider:self->_coverSheetController];
  v40 = objc_alloc_init(SBExternalChamoisUICommandValidator);
  [v7 setCommandValidator:v40];

  v41 = +[SBWorkspace mainWorkspace];
  v42 = [v41 transientOverlayPresentationManager];
  [v42 windowSceneDidConnect:v6];

  if (SBFIsControlCenterInChamoisExtendedAvailable())
  {
    v43 = [SBControlCenterController alloc];
    v44 = +[SBControlCenterCoordinator sharedInstance];
    v45 = [(SBControlCenterController *)v43 initWithWindowScene:v6 controlCenterCoordinator:v44];

    [v7 setControlCenterController:v45];
  }

  v46 = [v6 pictureInPictureManager];
  [v46 windowSceneDidConnect:v6];

  if (([MEMORY[0x277D244C8] inUserSessionLoginUI] & 1) == 0)
  {
    v47 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v47 windowSceneDidConnect:v6];

    v48 = [[SBSwitcherController alloc] initWithWindowScene:v6 debugName:@"ExternalDisplay"];
    [v7 setSwitcherController:v48];
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

      v50 = [MEMORY[0x277D75418] currentDevice];
      v51 = [v50 userInterfaceIdiom];

      if (v51 == 1)
      {
LABEL_11:
        v52 = [v6 menuBarManager];
        [v52 setMenuBarSceneProvider:v48];
      }
    }

LABEL_12:
  }

  v53 = [SBAlertLayoutPresentationVerifier alloc];
  v54 = [v6 screen];
  v55 = [(SBAlertLayoutPresentationVerifier *)v53 initWithScreen:v54];

  v56 = [SBSharedModalAlertItemPresenter alloc];
  v57 = [SBApp lockOutController];
  v58 = +[SBReachabilityManager sharedInstance];
  v59 = [(SBSharedModalAlertItemPresenter *)v56 initWithLockOutProvider:v57 systemGestureManager:v28 reachabilityManager:v58 alertLayoutPresentationVerifier:v55 windowScene:v6];

  v60 = +[SBAlertItemsController sharedInstance];
  [v60 windowSceneDidConnect:v6 withSharedModalAlertItemPresenter:v59];

  v61 = +[SBAppInteractionEventSourceManager sharedInstance];
  [v61 windowSceneDidConnect:v6];

  v62 = [SBApp multiDisplayUserInteractionCoordinator];
  [v62 windowSceneDidConnect:v6];

  v63 = [v6 statusBarManager];
  [v63 windowSceneDidConnect:v6];
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

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 role];
  if (([v12 isEqualToString:@"SBWindowSceneSessionRoleExternalDisplay"] & 1) == 0)
  {
    [SBExternalDisplayWindowSceneDelegate scene:a2 willConnectToSession:self options:?];
  }

  v13.receiver = self;
  v13.super_class = SBExternalDisplayWindowSceneDelegate;
  [(SBAbstractWindowSceneDelegate *)&v13 scene:v9 willConnectToSession:v10 options:v11];
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  [(BSDefaultObserver *)self->_displayModeSettingsToken invalidate];
  v5 = objc_opt_class();
  v6 = v4;
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
  v10 = [v9 keyboardFocusController];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v8 screen];
  v15 = [v14 displayIdentity];
  v16 = [v11 stringWithFormat:@"%@ - %@", v13, v15];
  v17 = [v10 suppressKeyboardFocusEvaluationForReason:v16];

  [v8 setInvalidating:1];
  v18 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v19 = [v8 switcherController];
  [v18 endCoordinatingSwitcherController:v19];

  v20 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  [v20 windowSceneDidDisconnect:v8];

  v21 = [(SBAbstractWindowSceneDelegate *)self floatingDockController];
  [v21 invalidate];

  [(SBWindowSceneStatusBarSettingsAssertion *)self->_showStatusBarAssertion invalidate];
  showStatusBarAssertion = self->_showStatusBarAssertion;
  self->_showStatusBarAssertion = 0;

  v23 = [(SBAbstractWindowSceneDelegate *)self modalLibraryController];
  [v23 invalidate];

  [(BSInvalidatable *)self->_eventRoutingAssertion invalidate];
  eventRoutingAssertion = self->_eventRoutingAssertion;
  self->_eventRoutingAssertion = 0;

  increasedMemoryLimitsTransaction = self->_increasedMemoryLimitsTransaction;
  self->_increasedMemoryLimitsTransaction = 0;

  v26 = [v8 systemGestureManager];
  [v26 invalidate];

  v27 = +[SBAlertItemsController sharedInstance];
  [v27 windowSceneDidDisconnect:v8];

  v28 = +[SBAppInteractionEventSourceManager sharedInstance];
  [v28 windowSceneDidDisconnect:v8];

  v29 = [SBApp multiDisplayUserInteractionCoordinator];
  [v29 windowSceneDidDisconnect:v8];

  [(SBExternalDisplayCoverSheetController *)self->_coverSheetController invalidate];
  coverSheetController = self->_coverSheetController;
  self->_coverSheetController = 0;

  [(FBSDisplayLayoutPublisher *)self->_displayLayoutPublisher invalidate];
  displayLayoutPublisher = self->_displayLayoutPublisher;
  self->_displayLayoutPublisher = 0;

  v32 = [v8 controlCenterController];
  [v32 invalidate];

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
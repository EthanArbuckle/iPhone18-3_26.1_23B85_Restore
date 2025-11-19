@interface SBContinuityDisplayDelayedUIWindowSceneDelegate
+ (id)_individuallyManagedRoles;
- (BOOL)_shouldManageParticipantWithRole:(id)a3;
- (SBContinuityDisplayDelayedUIWindowSceneDelegate)init;
- (id)_displayLayoutPublisherForConnectingWindowScene:(id)a3;
- (id)_pipelineManager;
- (id)_sceneManagerForConnectingWindowScene:(id)a3;
- (void)_configureForConnectingWindowScene:(id)a3 windowSceneContext:(id)a4;
- (void)_configureNewPresentationBinderForWindowScene:(id)a3 sceneManager:(id)a4;
- (void)_initializeUIIfNecessaryForReason:(id)a3;
- (void)_tearDownUIAndInvalidateIfNecessaryForReason:(id)a3;
- (void)continuitySession:(id)a3 didUpdateHostedInterfaceOrientation:(int64_t)a4;
- (void)continuitySessionDidUpdateState:(id)a3;
- (void)didConnectToSession:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setInterfaceOrientation:(int64_t)a3 supportedInterfaceOrientations:(unint64_t)a4;
@end

@implementation SBContinuityDisplayDelayedUIWindowSceneDelegate

- (SBContinuityDisplayDelayedUIWindowSceneDelegate)init
{
  v6.receiver = self;
  v6.super_class = SBContinuityDisplayDelayedUIWindowSceneDelegate;
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
  if (_individuallyManagedRoles_onceToken_0 != -1)
  {
    +[SBContinuityDisplayDelayedUIWindowSceneDelegate _individuallyManagedRoles];
  }

  v3 = _individuallyManagedRoles__individuallyManagedRoles_0;

  return v3;
}

void __76__SBContinuityDisplayDelayedUIWindowSceneDelegate__individuallyManagedRoles__block_invoke()
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
  v1 = _individuallyManagedRoles__individuallyManagedRoles_0;
  _individuallyManagedRoles__individuallyManagedRoles_0 = v0;
}

- (id)_pipelineManager
{
  traitsDisplayPipelineManager = self->_traitsDisplayPipelineManager;
  if (!traitsDisplayPipelineManager)
  {
    v4 = [SBTraitsContinuityDisplayPipelineManager alloc];
    v5 = +[SBContinuitySessionManager sharedInstance];
    v6 = [v5 userInterfaceStyleProvider];
    v7 = [(SBTraitsPipelineManager *)v4 initWithUserInterfaceStyleProvider:v6];
    v8 = self->_traitsDisplayPipelineManager;
    self->_traitsDisplayPipelineManager = v7;

    traitsDisplayPipelineManager = self->_traitsDisplayPipelineManager;
  }

  return traitsDisplayPipelineManager;
}

- (id)_displayLayoutPublisherForConnectingWindowScene:(id)a3
{
  v4 = a3;
  if (!self->_continuitySession)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate _displayLayoutPublisherForConnectingWindowScene:];
  }

  v5 = [v4 _sbDisplayConfiguration];
  if (!v5)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate _displayLayoutPublisherForConnectingWindowScene:];
  }

  v6 = [(SBContinuitySession *)self->_continuitySession displayLayoutPublisher];
  if (!v6)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate _displayLayoutPublisherForConnectingWindowScene:];
  }

  [v6 setDisplayConfiguration:v5];

  return v6;
}

- (id)_sceneManagerForConnectingWindowScene:(id)a3
{
  v3 = a3;
  v4 = +[SBSceneManagerCoordinator sharedInstance];
  v5 = [v3 _FBSScene];

  v6 = [v5 settings];
  v7 = [v6 displayIdentity];
  v8 = [v4 sceneManagerForDisplayIdentity:v7];

  return v8;
}

- (void)_configureNewPresentationBinderForWindowScene:(id)a3 sceneManager:(id)a4
{
  v10 = a4;
  if (!self->_presentationBinderWindow)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate _configureNewPresentationBinderForWindowScene:sceneManager:];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@-%p", v7, self];

  v9 = [objc_alloc(MEMORY[0x277D75970]) initWithIdentifier:v8 priority:0 rootView:self->_presentationBinderWindow appearanceStyle:0];
  [v10 updatePresentationBinder:v9];
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
  v74.receiver = self;
  v74.super_class = SBContinuityDisplayDelayedUIWindowSceneDelegate;
  [(SBAbstractWindowSceneDelegate *)&v74 _configureForConnectingWindowScene:v6 windowSceneContext:v7];
  v8 = [SBApp windowSceneManager];
  v9 = [v8 embeddedDisplayWindowScene];

  v10 = [v9 layoutStateProvider];
  v11 = [v10 layoutState];

  v12 = +[SBMainDisplayLayoutStateManager _initialLayoutStateWithDisplayOrdinal:isDisplayExternal:](SBMainDisplayLayoutStateManager, "_initialLayoutStateWithDisplayOrdinal:isDisplayExternal:", [v11 displayOrdinal], objc_msgSend(v11, "isDisplayExternal"));

  v13 = [v6 layoutStateProvider];
  v72 = v12;
  [v13 setLayoutState:v12];

  v14 = +[SBHIDEventDispatchController sharedInstance];
  v15 = [v6 _sbDisplayConfiguration];
  v16 = [v14 configureDispatchRootsForContinuityDisplay:v15];
  eventRoutingAssertion = self->_eventRoutingAssertion;
  self->_eventRoutingAssertion = v16;

  v18 = os_transaction_create();
  increasedMemoryLimitsTransaction = self->_increasedMemoryLimitsTransaction;
  self->_increasedMemoryLimitsTransaction = v18;

  v20 = [SBSystemPointerInteractionManager alloc];
  v21 = [SBApp multiDisplayUserInteractionCoordinator];
  v22 = [(SBSystemPointerInteractionManager *)v20 initWithMultiDisplayUserInteractionCoordinator:v21];

  [v7 setSystemPointerInteractionManager:v22];
  v23 = [SBContinuityDisplaySystemGestureManager alloc];
  v24 = [v6 screen];
  v25 = [v24 displayIdentity];
  v26 = [(SBContinuityDisplaySystemGestureManager *)v23 initWithDisplayIdentity:v25];

  v71 = v22;
  [(SBSystemGestureManager *)v26 setSystemPointerInteractionDelegate:v22];
  [v7 setSystemGestureManager:v26];
  v70 = [[SBHomeAffordanceInteractionManager alloc] initWithWindowScene:v6];
  [v7 setHomeAffordanceInteractionManager:?];
  v69 = [[SBModalUIFluidDismissGestureManager alloc] initWithWindowScene:v6 systemGestureManager:v26];
  [v7 setModalUIFluidDismissGestureManager:?];
  v68 = [[SBTransientUIInteractionManager alloc] initWithSystemGestureManager:v26];
  [v7 setTransientUIInteractionManager:?];
  v67 = [[SBRecordingIndicatorManager alloc] initWithWindowScene:v6];
  [v7 setRecordingIndicatorManager:?];
  v73 = v9;
  v27 = [v9 iconController];
  [v7 setIconController:v27];
  v66 = v27;
  v28 = [[SBHomeScreenController alloc] initWithWindowScene:v6 iconController:v27];
  homeScreenController = self->_homeScreenController;
  self->_homeScreenController = v28;

  [v7 setHomeScreenController:self->_homeScreenController];
  [(SBHomeScreenController *)self->_homeScreenController beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
  [(SBHomeScreenController *)self->_homeScreenController restoreContentAndUnscatterIconsAnimated:0];
  v30 = self->_homeScreenController;
  v31 = +[SBSetupManager sharedInstance];
  [(SBHomeScreenController *)v30 addFloatingDockControllerObserver:v31];

  v65 = [(SBHomeScreenController *)self->_homeScreenController createFloatingDockControllerForWindowScene:v6];
  [v7 setFloatingDockController:?];
  v64 = [(SBHomeScreenController *)self->_homeScreenController createModalLibraryControllerForWindowScene:v6];
  [v7 setModalLibraryController:?];
  v32 = [v6 statusBarManager];
  [v32 updateHomeScreenStatusBarLegibility];

  v33 = [(SBHomeScreenController *)self->_homeScreenController createStatusBarVisibiltyAssertionForWindowScene:v6];
  showStatusBarAssertion = self->_showStatusBarAssertion;
  self->_showStatusBarAssertion = v33;

  [(SBWindowSceneStatusBarSettingsAssertion *)self->_showStatusBarAssertion acquire];
  v35 = [[SBExternalDisplayWallpaperController alloc] initWithWindowScene:v6 requiresTraitsParticipant:0];
  wallpaperController = self->_wallpaperController;
  self->_wallpaperController = v35;

  v37 = objc_alloc_init(SBContinuityLockStateProvider);
  [v7 setUILockStateProvider:v37];

  v38 = objc_alloc_init(SBContinuitySecureDisplayStateProvider);
  [v7 setSecureDisplayStateProvider:v38];

  v39 = [SBApp authenticationController];
  v40 = [v39 authenticationStatusProviderTreatingContinuityUnlockedAsUnlocked:1];
  [v7 setAuthenticationStatusProvider:v40];

  v41 = +[SBWorkspace mainWorkspace];
  v42 = [v41 transientOverlayPresentationManager];
  [v42 windowSceneDidConnect:v6];

  if (([MEMORY[0x277D244C8] inUserSessionLoginUI] & 1) == 0)
  {
    v43 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v43 windowSceneDidConnect:v6];

    v44 = [[SBSwitcherController alloc] initWithWindowScene:v6 debugName:@"Continuity"];
    [v7 setSwitcherController:v44];
    v45 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v45 beginCoordinatingSwitcherController:v44 options:1];
  }

  if (SBFIsControlCenterInOnenessAvailable())
  {
    v46 = [SBControlCenterController alloc];
    v47 = +[SBControlCenterCoordinator sharedInstance];
    v48 = [(SBControlCenterController *)v46 initWithWindowScene:v6 controlCenterCoordinator:v47];

    [v7 setControlCenterController:v48];
  }

  v49 = [v6 pictureInPictureManager];
  [v49 windowSceneDidConnect:v6];

  v50 = [SBApp pictureInPictureCoordinator];
  v51 = [v50 controllerForType:0];
  [v51 movePIPContentToWindowScene:v6];
  v52 = [SBAlertLayoutPresentationVerifier alloc];
  v53 = [v6 screen];
  v54 = [(SBAlertLayoutPresentationVerifier *)v52 initWithScreen:v53];

  v55 = [SBSharedModalAlertItemPresenter alloc];
  v56 = [SBApp lockOutController];
  v57 = +[SBReachabilityManager sharedInstance];
  v58 = [(SBSharedModalAlertItemPresenter *)v55 initWithLockOutProvider:v56 systemGestureManager:v26 reachabilityManager:v57 alertLayoutPresentationVerifier:v54 windowScene:v6];

  v59 = +[SBAlertItemsController sharedInstance];
  [v59 windowSceneDidConnect:v6 withSharedModalAlertItemPresenter:v58];

  v60 = [SBApp systemApertureControllerForMainDisplay];
  [v7 setSystemApertureController:v60];
  v61 = +[SBAppInteractionEventSourceManager sharedInstance];
  [v61 windowSceneDidConnect:v6];

  v62 = [SBApp multiDisplayUserInteractionCoordinator];
  [v62 windowSceneDidConnect:v6];

  v63 = [v6 statusBarManager];
  [v63 windowSceneDidConnect:v6];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogContinuitySession();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 _sceneIdentifier];
    v31 = 134218242;
    v32 = v8;
    v33 = 2114;
    v34 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ willConnectToSession", &v31, 0x16u);
  }

  v13 = [(UISceneSession *)v9 role];
  if (([v13 isEqualToString:*MEMORY[0x277D68048]] & 1) == 0)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate scene:willConnectToSession:options:];
  }

  v14 = objc_opt_class();
  v15 = v8;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (!v17)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate scene:willConnectToSession:options:];
  }

  v18 = [[SBContinuityDisplayPresentationBinderWindow alloc] initWithWindowScene:v17];
  presentationBinderWindow = self->_presentationBinderWindow;
  self->_presentationBinderWindow = &v18->super.super;

  [(UIWindow *)self->_presentationBinderWindow setWindowLevel:1.79769313e308];
  v20 = self->_presentationBinderWindow;
  v21 = [MEMORY[0x277D75348] clearColor];
  [(UIWindow *)v20 setBackgroundColor:v21];

  [(UIWindow *)self->_presentationBinderWindow setHidden:0];
  connectingScene = self->_connectingScene;
  self->_connectingScene = v17;
  v23 = v17;

  connectingSceneSession = self->_connectingSceneSession;
  self->_connectingSceneSession = v9;
  v25 = v9;

  connectingSceneConnectionOptions = self->_connectingSceneConnectionOptions;
  self->_connectingSceneConnectionOptions = v10;
  v27 = v10;

  v28 = +[SBContinuitySessionManager sharedInstance];
  v29 = [v28 registerWindowScene:v23];
  continuitySessionManagerRegistration = self->_continuitySessionManagerRegistration;
  self->_continuitySessionManagerRegistration = v29;
}

- (void)sceneDidDisconnect:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogContinuitySession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 _sceneIdentifier];
    v12 = 134218242;
    v13 = v4;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ didDisconnect", &v12, 0x16u);
  }

  [(BSInvalidatable *)self->_continuitySessionManagerRegistration invalidate];
  continuitySessionManagerRegistration = self->_continuitySessionManagerRegistration;
  self->_continuitySessionManagerRegistration = 0;

  v8 = objc_opt_class();
  v9 = v4;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [(SBContinuitySession *)self->_continuitySession noteMainSceneDisconnected:v11];
  [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)self _tearDownUIAndInvalidateIfNecessaryForReason:@"scene disconnected"];
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = SBLogContinuitySession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)v3 sceneWillEnterForeground:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (void)didConnectToSession:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_continuitySession)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate didConnectToSession:];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    connectingScene = self->_connectingScene;
    v9 = [(SBWindowScene *)connectingScene _sceneIdentifier];
    *v15 = 134218498;
    *&v15[4] = connectingScene;
    v16 = 2114;
    v17 = v9;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ connected to session <%p>", v15, 0x20u);
  }

  objc_storeStrong(&self->_continuitySession, a3);
  [v6 addStateObserver:self];
  [(SBContinuitySession *)self->_continuitySession setOrientationDelegate:self];
  v10 = self->_connectingScene;
  if (!v10)
  {
    [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)a2 didConnectToSession:&self->_connectingScene, v15];
    v10 = *v15;
  }

  v11 = [(SBWindowScene *)v10 _FBSScene];
  v12 = [v11 continuitySessionParticipantClientComponent];

  if (!v12)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate didConnectToSession:];
  }

  [v12 setContinuitySession:v6];
  v13 = [(SBWindowScene *)self->_connectingScene _FBSScene];
  v14 = [v13 hostProxyClientComponent];

  if (!v14)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate didConnectToSession:];
  }

  [v6 addScreenRecordingObserver:v14];
  [v14 continuitySessionDidUpdateScreenRecordingState:v6];
  [(SBContinuitySession *)self->_continuitySession noteMainSceneConnected:self->_connectingScene];
  [v6 noteSceneHasValidDisplayUUID:self->_connectingScene];
  [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)self continuitySessionDidUpdateState:v6];
}

- (void)continuitySessionDidUpdateState:(id)a3
{
  v12 = a3;
  connectingScene = self->_connectingScene;
  if (connectingScene)
  {
    v6 = connectingScene;
  }

  else
  {
    v6 = [(SBAbstractWindowSceneDelegate *)self windowScene];
  }

  v7 = v6;
  v8 = v12;
  if (self->_continuitySession != v12)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [(SBWindowScene *)v7 _sceneIdentifier];
    [v10 handleFailureInMethod:a2 object:self file:@"SBContinuityDisplayDelayedUIWindowSceneDelegate.m" lineNumber:427 description:{@"Main scene <%p>:%@ state update for session <%p> is not the one i'm tracking <%p>", v7, v11, v12, self->_continuitySession}];

    v8 = v12;
  }

  v9 = [(SBContinuitySession *)v8 state];
  if (v9 > 6)
  {
    if (v9 > 9)
    {
      switch(v9)
      {
        case 10:
          if (!self->_initializedUI)
          {
            [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
          }

          break;
        case 11:
          if (!self->_initializedUI)
          {
            [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
          }

          break;
        case 12:
          [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)self _tearDownUIAndInvalidateIfNecessaryForReason:@"session state is .invalid"];
          break;
      }
    }

    else if (v9 == 7)
    {
      [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)self _initializeUIIfNecessaryForReason:@"session state .activating"];
    }

    else if (v9 == 8)
    {
      if (!self->_initializedUI)
      {
        [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (!self->_initializedUI)
    {
      [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
    }
  }

  else if (v9 > 3)
  {
    if (v9 == 4)
    {
      if (self->_initializedUI)
      {
        [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (v9 == 5)
    {
      if (self->_initializedUI)
      {
        [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (self->_initializedUI)
    {
      [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
    }
  }

  else if (v9 == 1)
  {
    if (self->_initializedUI)
    {
      [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
    }
  }

  else if (v9 == 2)
  {
    if (self->_initializedUI)
    {
      [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
    }
  }

  else if (v9 == 3 && self->_initializedUI)
  {
    [SBContinuityDisplayDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
  }
}

- (void)continuitySession:(id)a3 didUpdateHostedInterfaceOrientation:(int64_t)a4
{
  if (BSInterfaceOrientationIsValid())
  {
    traitsDisplayPipelineManager = self->_traitsDisplayPipelineManager;

    [(SBTraitsContinuityDisplayPipelineManager *)traitsDisplayPipelineManager setDeviceOrientation:a4];
  }
}

- (void)setInterfaceOrientation:(int64_t)a3 supportedInterfaceOrientations:(unint64_t)a4
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  continuitySession = self->_continuitySession;

  [(SBContinuitySession *)continuitySession setInterfaceOrientation:a3 supportedInterfaceOrientations:a4];
}

- (void)_initializeUIIfNecessaryForReason:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_initializedUI)
  {
    v5 = [(SBAbstractWindowSceneDelegate *)self windowScene];
    v6 = SBLogContinuitySession();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 _sceneIdentifier];
      *buf = 134218498;
      v44 = v5;
      v45 = 2114;
      v46 = v7;
      v47 = 2114;
      v48 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ initializing UI if necessary - %{public}@ --> already initialized UI", buf, 0x20u);
    }
  }

  else
  {
    v8 = SBLogContinuitySession();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      connectingScene = self->_connectingScene;
      v10 = [(SBWindowScene *)connectingScene _sceneIdentifier];
      *buf = 134218498;
      v44 = connectingScene;
      v45 = 2114;
      v46 = v10;
      v47 = 2114;
      v48 = v4;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ initializing UI if necessary - %{public}@", buf, 0x20u);
    }

    v11 = [(SBContinuitySession *)self->_continuitySession state];
    v12 = SBLogContinuitySession();
    v5 = v12;
    if (v11 == 7)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)v5 _initializeUIIfNecessaryForReason:v13, v14, v15, v16, v17, v18, v19];
      }

      v20 = SBLogContinuitySession();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(SBContinuityDisplayDelayedUIWindowSceneDelegate *)v20 _initializeUIIfNecessaryForReason:v21, v22, v23, v24, v25, v26, v27];
      }

      v28 = self->_connectingScene;
      connectingSceneSession = self->_connectingSceneSession;
      connectingSceneConnectionOptions = self->_connectingSceneConnectionOptions;
      v42.receiver = self;
      v42.super_class = SBContinuityDisplayDelayedUIWindowSceneDelegate;
      [(SBAbstractWindowSceneDelegate *)&v42 scene:v28 willConnectToSession:connectingSceneSession options:connectingSceneConnectionOptions];
      v31 = self->_connectingScene;
      self->_connectingScene = 0;

      v32 = self->_connectingSceneSession;
      self->_connectingSceneSession = 0;

      v33 = self->_connectingSceneConnectionOptions;
      self->_connectingSceneConnectionOptions = 0;

      self->_initializedUI = 1;
      continuitySession = self->_continuitySession;
      v35 = [(SBAbstractWindowSceneDelegate *)self windowScene];
      [(SBContinuitySession *)continuitySession noteUIIsReady:v35];

      v36 = +[SBLockScreenManager sharedInstance];
      [v36 noteContinuityDisplayWindowSceneConnectionDidChange];

      v5 = [SBApp dynamicLightingController];
      v37 = [v5 disableEffectsForReason:@"Continuity"];
      disableDynamicLightingAssertion = self->_disableDynamicLightingAssertion;
      self->_disableDynamicLightingAssertion = v37;
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(SBWindowScene *)self->_connectingScene _sceneIdentifier];
      v40 = self->_continuitySession;
      if (v40)
      {
        v41 = NSStringFromSBContinuitySessionState(v11);
      }

      else
      {
        v41 = @".unknown because we don't have a session yet!";
      }

      *buf = 138543618;
      v44 = v39;
      v45 = 2114;
      v46 = v41;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "scene %{public}@ refuses to initialize UI because the session state is %{public}@", buf, 0x16u);
      if (v40)
      {
      }
    }
  }
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBAbstractWindowSceneDelegate *)self windowScene];
  connectingScene = v5;
  if (!v5)
  {
    connectingScene = self->_connectingScene;
  }

  v7 = connectingScene;

  v8 = SBLogContinuitySession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SBWindowScene *)v7 _sceneIdentifier];
    *buf = 134218498;
    v43 = v7;
    v44 = 2114;
    v45 = v9;
    v46 = 2114;
    v47 = v4;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Main scene <%p>:%{public}@ tear down UI and invalidate if necessary - %{public}@", buf, 0x20u);
  }

  if ([(SBAbstractWindowSceneDelegate *)self isInvalidated])
  {
    v10 = SBLogContinuitySession();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "--> already invalidated", buf, 2u);
    }
  }

  else
  {
    v11 = [(SBWindowScene *)v7 _FBSScene];
    v10 = [v11 hostProxyClientComponent];

    if (!v10)
    {
      [SBContinuityDisplayDelayedUIWindowSceneDelegate _tearDownUIAndInvalidateIfNecessaryForReason:];
    }

    [(SBContinuitySession *)self->_continuitySession removeScreenRecordingObserver:v10];
    [(SBContinuitySession *)self->_continuitySession setOrientationDelegate:0];
    [(SBContinuitySession *)self->_continuitySession removeStateObserver:self];
    continuitySession = self->_continuitySession;
    self->_continuitySession = 0;

    initializedUI = self->_initializedUI;
    v14 = SBLogContinuitySession();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (initializedUI)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "--> tearing down UI now...", buf, 2u);
      }

      [(BSDefaultObserver *)self->_displayModeSettingsToken invalidate];
      [(BSInvalidatable *)self->_eventRoutingAssertion invalidate];
      eventRoutingAssertion = self->_eventRoutingAssertion;
      self->_eventRoutingAssertion = 0;

      increasedMemoryLimitsTransaction = self->_increasedMemoryLimitsTransaction;
      self->_increasedMemoryLimitsTransaction = 0;

      v18 = +[SBMainWorkspace sharedInstanceIfExists];
      v19 = [v18 keyboardFocusController];
      v20 = MEMORY[0x277CCACA8];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [(SBWindowScene *)v7 screen];
      v24 = [v23 displayIdentity];
      v25 = [v20 stringWithFormat:@"%@ - %@", v22, v24];
      v40 = [v19 suppressKeyboardFocusEvaluationForReason:v25];

      [(SBWindowScene *)v7 setInvalidating:1];
      v26 = +[SBMainSwitcherControllerCoordinator sharedInstance];
      v27 = [(SBWindowScene *)v7 switcherController];
      [v26 endCoordinatingSwitcherController:v27 options:1];

      v28 = +[SBMainSwitcherControllerCoordinator sharedInstance];
      [v28 windowSceneDidDisconnect:v7];

      [(SBWindowSceneStatusBarSettingsAssertion *)self->_showStatusBarAssertion invalidate];
      showStatusBarAssertion = self->_showStatusBarAssertion;
      self->_showStatusBarAssertion = 0;

      v30 = [(SBAbstractWindowSceneDelegate *)self floatingDockController];
      [v30 invalidate];

      v31 = [(SBAbstractWindowSceneDelegate *)self modalLibraryController];
      [v31 invalidate];

      v32 = [(SBAbstractWindowSceneDelegate *)self homeScreenController];
      [v32 invalidate];

      v33 = [(SBWindowScene *)v7 systemGestureManager];
      [v33 invalidate];

      v34 = +[SBAlertItemsController sharedInstance];
      [v34 windowSceneDidDisconnect:v7];

      v35 = +[SBAppInteractionEventSourceManager sharedInstance];
      [v35 windowSceneDidDisconnect:v7];

      v36 = [SBApp multiDisplayUserInteractionCoordinator];
      [v36 windowSceneDidDisconnect:v7];

      v37 = [(SBWindowScene *)v7 controlCenterController];
      [v37 invalidate];

      v41.receiver = self;
      v41.super_class = SBContinuityDisplayDelayedUIWindowSceneDelegate;
      [(SBAbstractWindowSceneDelegate *)&v41 sceneDidDisconnect:v7];
      [v40 invalidate];
      v38 = +[SBLockScreenManager sharedInstance];
      [v38 noteContinuityDisplayWindowSceneConnectionDidChange];

      [(BSInvalidatable *)self->_disableDynamicLightingAssertion invalidate];
      v39 = [(SBAbstractWindowSceneDelegate *)self sceneManager];
      [v39 invalidate];

      [(SBWindowScene *)v7 invalidate];
      [(SBAbstractWindowSceneDelegate *)self setInvalidated:1];
    }

    else
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "--> never initialized UI", buf, 2u);
      }

      [(SBWindowScene *)v7 invalidate];
      [(SBAbstractWindowSceneDelegate *)self setInvalidated:1];
    }
  }
}

- (void)_displayLayoutPublisherForConnectingWindowScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_displayLayoutPublisherForConnectingWindowScene:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_displayLayoutPublisherForConnectingWindowScene:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_configureNewPresentationBinderForWindowScene:sceneManager:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)scene:willConnectToSession:options:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)scene:willConnectToSession:options:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)didConnectToSession:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)didConnectToSession:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBContinuityDisplayDelayedUIWindowSceneDelegate.m" lineNumber:400 description:{@"_connectingScene is nil, this means we already setup the UI but we just got the scene!"}];

  *a4 = *a3;
}

- (void)didConnectToSession:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)didConnectToSession:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.7()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.8()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.9()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.10()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
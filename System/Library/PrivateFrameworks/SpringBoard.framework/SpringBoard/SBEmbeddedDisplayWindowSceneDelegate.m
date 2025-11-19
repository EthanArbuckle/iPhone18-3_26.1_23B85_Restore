@interface SBEmbeddedDisplayWindowSceneDelegate
+ (id)_individuallyManagedRoles;
+ (id)_windowWillBecomeHiddenExemptRoles;
- (BOOL)_shouldHandleWindowWillBecomeHiddenForRole:(id)a3;
- (BOOL)_shouldManageParticipantWithRole:(id)a3;
- (SBEmbeddedDisplayWindowSceneDelegate)init;
- (id)_pipelineManager;
- (void)_configureForConnectingWindowScene:(id)a3 windowSceneContext:(id)a4;
- (void)completeStartupAfterAllEmbeddedScenesConnect;
- (void)initializeProductivityGestureControllerIfNecessary;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation SBEmbeddedDisplayWindowSceneDelegate

+ (id)_individuallyManagedRoles
{
  if (_individuallyManagedRoles_onceToken_1 != -1)
  {
    +[SBEmbeddedDisplayWindowSceneDelegate _individuallyManagedRoles];
  }

  v3 = _individuallyManagedRoles__individuallyManagedRoles_1;

  return v3;
}

+ (id)_windowWillBecomeHiddenExemptRoles
{
  if (_windowWillBecomeHiddenExemptRoles_onceToken != -1)
  {
    +[SBEmbeddedDisplayWindowSceneDelegate _windowWillBecomeHiddenExemptRoles];
  }

  v3 = _windowWillBecomeHiddenExemptRoles__windowWillBecomeHiddenExemptRoles;

  return v3;
}

- (SBEmbeddedDisplayWindowSceneDelegate)init
{
  v6.receiver = self;
  v6.super_class = SBEmbeddedDisplayWindowSceneDelegate;
  v2 = [(SBAbstractWindowSceneDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBTraitsWindowParticipantDelegate);
    traitsWindowParticipantsDelegate = v2->_traitsWindowParticipantsDelegate;
    v2->_traitsWindowParticipantsDelegate = v3;
  }

  return v2;
}

void __65__SBEmbeddedDisplayWindowSceneDelegate__individuallyManagedRoles__block_invoke()
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
  v2[17] = @"SBTraitsParticipantRoleOverlayUI";
  v2[18] = @"SBTraitsParticipantRoleSubterraneanOverlayUI";
  v2[19] = @"SBTraitsParticipantRolePerfPowerHUD";
  v2[20] = @"SBTraitsParticipantRoleSecureApp";
  v2[21] = @"SBTraitsParticipantRoleSwitcherRaw";
  v2[22] = @"SBTraitsParticipantRoleSystemAperture";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:23];
  v1 = _individuallyManagedRoles__individuallyManagedRoles_1;
  _individuallyManagedRoles__individuallyManagedRoles_1 = v0;
}

void __74__SBEmbeddedDisplayWindowSceneDelegate__windowWillBecomeHiddenExemptRoles__block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = @"SBTraitsParticipantRoleHomeScreen";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
  v1 = _windowWillBecomeHiddenExemptRoles__windowWillBecomeHiddenExemptRoles;
  _windowWillBecomeHiddenExemptRoles__windowWillBecomeHiddenExemptRoles = v0;
}

- (void)initializeProductivityGestureControllerIfNecessary
{
  v3 = [SBProductivityGestureController alloc];
  v11 = +[SBSystemGestureManager mainDisplayManager];
  v4 = +[SBWorkspace mainWorkspace];
  v5 = [v4 keyboardFocusController];
  v6 = +[SBDefaults localDefaults];
  v7 = [v6 gestureDefaults];
  v8 = [SBApp productivityGestureEducationController];
  v9 = [(SBProductivityGestureController *)v3 initWithSystemGestureManager:v11 focusController:v5 gestureDefaults:v7 gestureEducationController:v8];
  productivityGestureController = self->_productivityGestureController;
  self->_productivityGestureController = v9;
}

- (void)completeStartupAfterAllEmbeddedScenesConnect
{
  startupCompletionAfterAllEmbeddedScenesConnectBlock = self->_startupCompletionAfterAllEmbeddedScenesConnectBlock;
  if (startupCompletionAfterAllEmbeddedScenesConnectBlock)
  {
    startupCompletionAfterAllEmbeddedScenesConnectBlock[2](startupCompletionAfterAllEmbeddedScenesConnectBlock, a2);
    v4 = self->_startupCompletionAfterAllEmbeddedScenesConnectBlock;
    self->_startupCompletionAfterAllEmbeddedScenesConnectBlock = 0;
  }
}

- (id)_pipelineManager
{
  traitsEmbeddedPipelineManager = self->_traitsEmbeddedPipelineManager;
  if (!traitsEmbeddedPipelineManager)
  {
    v4 = [SBTraitsEmbeddedDisplayPipelineManager alloc];
    v5 = [SBApp userInterfaceStyleProviderForDisplay:0];
    v6 = [(SBTraitsPipelineManager *)v4 initWithUserInterfaceStyleProvider:v5];
    v7 = self->_traitsEmbeddedPipelineManager;
    self->_traitsEmbeddedPipelineManager = v6;

    traitsEmbeddedPipelineManager = self->_traitsEmbeddedPipelineManager;
  }

  return traitsEmbeddedPipelineManager;
}

- (BOOL)_shouldManageParticipantWithRole:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _individuallyManagedRoles];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

- (BOOL)_shouldHandleWindowWillBecomeHiddenForRole:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _windowWillBecomeHiddenExemptRoles];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

- (void)_configureForConnectingWindowScene:(id)a3 windowSceneContext:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogStartup();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _SBFLoggingMethodProem();
    *buf = 138543874;
    v34 = v9;
    v35 = 2114;
    v36 = v6;
    v37 = 2114;
    v38 = self;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] : %{public}@; %{public}@", buf, 0x20u);
  }

  v10 = [SBMainDisplaySystemGestureManager alloc];
  v11 = [v6 _fbsDisplayIdentity];
  v12 = [(SBMainDisplaySystemGestureManager *)v10 initWithDisplayIdentity:v11];

  [v7 setSystemGestureManager:v12];
  v32.receiver = self;
  v32.super_class = SBEmbeddedDisplayWindowSceneDelegate;
  [(SBAbstractWindowSceneDelegate *)&v32 _configureForConnectingWindowScene:v6 windowSceneContext:v7];
  v13 = SBLogStartup();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v34 = v14;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting SBMainWindowScene", buf, 0xCu);
  }

  SBSetMainWindowScene(v6);
  [(SBTraitsEmbeddedDisplayPipelineManager *)self->_traitsEmbeddedPipelineManager startListeningForLockScreenUIPresentations];
  v15 = [SBSystemPointerInteractionManager alloc];
  v16 = [SBApp multiDisplayUserInteractionCoordinator];
  v17 = [(SBSystemPointerInteractionManager *)v15 initWithMultiDisplayUserInteractionCoordinator:v16];

  [v7 setSystemPointerInteractionManager:v17];
  [(SBSystemGestureManager *)v12 setSystemPointerInteractionDelegate:v17];
  v18 = [[SBHomeAffordanceInteractionManager alloc] initWithWindowScene:v6];
  [v7 setHomeAffordanceInteractionManager:v18];
  v19 = [[SBModalUIFluidDismissGestureManager alloc] initWithWindowScene:v6 systemGestureManager:v12];
  [v7 setModalUIFluidDismissGestureManager:v19];
  v20 = [[SBTransientUIInteractionManager alloc] initWithSystemGestureManager:v12];
  [v7 setTransientUIInteractionManager:v20];
  v21 = [SBApp systemApertureController];
  [v7 setSystemApertureController:v21];
  if ((SBFIsShellSceneKitAvailable() & 1) == 0)
  {
    v22 = [v6 _fbsDisplayConfiguration];
    [v21 createHighLevelWindowSceneWithDisplayConfiguration:v22];
    [v21 createSuperHighLevelCurtainWindowSceneWithDisplayConfiguration:v22];
  }

  objc_initWeak(buf, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __94__SBEmbeddedDisplayWindowSceneDelegate__configureForConnectingWindowScene_windowSceneContext___block_invoke;
  v27[3] = &unk_2783B4560;
  objc_copyWeak(&v31, buf);
  v28 = v6;
  v29 = v7;
  v30 = self;
  v23 = v7;
  v24 = v6;
  v25 = MEMORY[0x223D6F7F0](v27);
  startupCompletionAfterAllEmbeddedScenesConnectBlock = self->_startupCompletionAfterAllEmbeddedScenesConnectBlock;
  self->_startupCompletionAfterAllEmbeddedScenesConnectBlock = v25;

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

void __94__SBEmbeddedDisplayWindowSceneDelegate__configureForConnectingWindowScene_windowSceneContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v63 = WeakRetained;
    v62 = [SBApp _completeStartupAfterMainSceneConnect:*(a1 + 32)];
    v3 = +[SBUIController sharedInstance];
    [v3 setWindowScene:*(a1 + 32)];

    v61 = [[SBRecordingIndicatorManager alloc] initWithWindowScene:*(a1 + 32)];
    [*(a1 + 40) setRecordingIndicatorManager:?];
    v4 = [[SBIconController alloc] initWithWindowScene:*(a1 + 32)];
    [*(a1 + 40) setIconController:v4];
    v5 = [[SBHomeScreenController alloc] initWithWindowScene:*(a1 + 32) iconController:v4];
    v6 = v63[12];
    v63[12] = v5;

    [*(a1 + 40) setHomeScreenController:v63[12]];
    v7 = v63[12];
    v8 = +[SBSetupManager sharedInstance];
    [v7 addFloatingDockControllerObserver:v8];

    v60 = [v63[12] createFloatingDockControllerForWindowScene:*(a1 + 32)];
    [*(a1 + 40) setFloatingDockController:?];
    v59 = [v63[12] createModalLibraryControllerForWindowScene:*(a1 + 32)];
    [*(a1 + 40) setModalLibraryController:?];
    v9 = [v63[12] createStatusBarVisibiltyAssertionForWindowScene:*(a1 + 32)];
    v10 = v63[13];
    v63[13] = v9;

    [v63[13] acquire];
    v11 = *(a1 + 40);
    v12 = [v11 lockScreenManager];
    [v11 setUILockStateProvider:v12];

    v13 = [*(a1 + 32) pictureInPictureManager];
    [v13 windowSceneDidConnect:*(a1 + 32)];

    v14 = *(a1 + 40);
    v15 = +[SBReachabilityManager sharedInstance];
    [v14 setReachabilitySceneOffsetProvider:v15];

    v16 = *(a1 + 40);
    v17 = [SBEmbeddedDisplayUICommandValidator alloc];
    v18 = [*(a1 + 40) layoutStateProvider];
    v19 = [(SBEmbeddedDisplayUICommandValidator *)v17 initWithLayoutStateProvider:v18];
    [v16 setCommandValidator:v19];

    v20 = [[SBAmbientPresentationController alloc] initWithWindowScene:*(a1 + 32)];
    [*(a1 + 40) setAmbientPresentationController:v20];
    [v63[9] startObservingAmbientPresentation];
    [v63[9] startObservingLayoutStateTransitions];
    v21 = +[SBPrototypeController sharedInstance];
    [v21 setWindowScene:*(a1 + 32)];

    v22 = +[SBReachabilityManager sharedInstance];
    [v22 setWindowScene:*(a1 + 32)];

    v23 = +[SBSceneLayoutWhitePointAdaptationController sharedInstance];
    [v23 setWindowScene:*(a1 + 32)];

    v24 = +[SBWorkspace mainWorkspace];
    v25 = [v24 transientOverlayPresentationManager];
    [v25 windowSceneDidConnect:*(a1 + 32)];

    if ([MEMORY[0x277D244C8] inUserSessionLoginUI])
    {
      goto LABEL_10;
    }

    v26 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v26 windowSceneDidConnect:*(a1 + 32)];

    v27 = [[SBSwitcherController alloc] initWithWindowScene:*(a1 + 32) debugName:@"EmbeddedDisplay"];
    [*(a1 + 40) setSwitcherController:v27];
    v28 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    [v28 beginCoordinatingSwitcherController:v27];

    if (_UIEnhancedMainMenuEnabled())
    {
      if (__sb__runningInSpringBoard())
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v29 = [MEMORY[0x277D75418] currentDevice];
      v30 = [v29 userInterfaceIdiom];

      if (v30 == 1)
      {
LABEL_8:
        v31 = [*(a1 + 40) menuBarManager];
        [v31 setMenuBarSceneProvider:v27];
      }
    }

LABEL_9:

LABEL_10:
    v32 = +[SBWorkspace mainWorkspace];
    v33 = [v32 createRequestWithOptions:0];

    [v33 finalize];
    if (([MEMORY[0x277D244C8] inUserSessionLoginUI] & 1) == 0)
    {
      v34 = [SBApp _mainDisplayControlCenterController];
      [*(a1 + 40) setControlCenterController:v34];
      v35 = objc_alloc_init(MEMORY[0x277CFA340]);
      v36 = [v63[12] iconManager];
      v37 = [[_SBWidgetExtensionDebugHomeScreenDataSource alloc] initWithIconManager:v36];
      v38 = [[SBWidgetExtensionDebuggingController alloc] initWithWorkspace:v24 toolService:v35 homeScreenDataSource:v37 controlCenterDataSource:v34];
      v39 = *(a1 + 48);
      v40 = *(v39 + 120);
      *(v39 + 120) = v38;
    }

    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
LABEL_17:
        v44 = [*(a1 + 40) pictureInPictureManager];
        [v44 configureInsetsForHomeScreenController:v63[12]];

        [v63 initializeProductivityGestureControllerIfNecessary];
        v45 = [SBApp proximityBacklightPolicy];
        [v45 windowSceneDidConnect:*(a1 + 32)];

        v46 = [SBApp HUDController];
        [v46 windowSceneDidConnect:*(a1 + 32)];

        v47 = +[SBAppInteractionEventSourceManager sharedInstance];
        [v47 windowSceneDidConnect:*(a1 + 32)];

        v48 = [SBApp multiDisplayUserInteractionCoordinator];
        [v48 windowSceneDidConnect:*(a1 + 32)];

        v49 = +[SBPlatformController sharedInstance];
        if ([v49 deviceSupportsHWButtonBezelEffects])
        {
          v50 = 1;
        }

        else
        {
          v51 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v50 = [v51 BOOLForKey:@"SBHardwareButtonHintDropletsEnabled"];
        }

        if ((+[SBCaptureHardwareButton deviceSupportsCaptureButton]() & 1) != 0 || +[SBCaptureHardwareButton simulateCaptureButtonWithActionButton])
        {
          v52 = [SBCaptureButtonDispatchingDeferrer alloc];
          v53 = [*(a1 + 32) zStackResolver];
          v54 = [SBApp captureButtonRestrictionCoordinator];
          v55 = [(SBCaptureButtonDispatchingDeferrer *)v52 initWithZStackResolver:v53 restrictionCoordinator:v54];
          v56 = *(a1 + 48);
          v57 = *(v56 + 88);
          *(v56 + 88) = v55;
        }

        if (CAMIsCameraOverlayEnabled())
        {
          if ((+[SBCaptureHardwareButton deviceSupportsCaptureButton]() & 1) == 0 && ((+[SBCaptureHardwareButton simulateCaptureButtonWithActionButton]| v50) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else if (!v50)
        {
LABEL_29:
          v62[2](v62);

          WeakRetained = v63;
          goto LABEL_30;
        }

        v58 = [[SBHardwareButtonBezelEffectsCoordinator alloc] initWithWindowScene:*(a1 + 32)];
        [*(a1 + 40) setHardwareButtonBezelEffectsCoordinator:v58];

        goto LABEL_29;
      }
    }

    else
    {
      v41 = [MEMORY[0x277D75418] currentDevice];
      v42 = [v41 userInterfaceIdiom];

      if (v42 != 1)
      {
        goto LABEL_17;
      }
    }

    v43 = [[SBCommandTabController alloc] initWithWindowScene:*(a1 + 32) iconController:v4];
    [*(a1 + 40) setCommandTabController:v43];

    goto LABEL_17;
  }

LABEL_30:
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 role];
  if (([v12 isEqualToString:*MEMORY[0x277D772C8]] & 1) == 0)
  {
    [SBEmbeddedDisplayWindowSceneDelegate scene:a2 willConnectToSession:self options:?];
  }

  v18.receiver = self;
  v18.super_class = SBEmbeddedDisplayWindowSceneDelegate;
  [(SBAbstractWindowSceneDelegate *)&v18 scene:v9 willConnectToSession:v10 options:v11];
  v13 = [SBApp embeddedScenesConnectionManager];
  v14 = objc_opt_class();
  v15 = v9;
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

  [v13 noteMainSceneConnected:v17];
}

- (void)scene:(uint64_t)a1 willConnectToSession:(uint64_t)a2 options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBEmbeddedDisplayWindowSceneDelegate.m" lineNumber:345 description:@"unexpected role for SBMainWindowSceneDelegate"];
}

@end
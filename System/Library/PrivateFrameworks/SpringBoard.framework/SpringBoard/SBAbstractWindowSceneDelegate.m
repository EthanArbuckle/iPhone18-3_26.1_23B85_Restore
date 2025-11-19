@interface SBAbstractWindowSceneDelegate
- (BNBannerController)bannerController;
- (BOOL)_isWindowContentVisible:(id)a3;
- (CSCoverSheetViewController)coverSheetViewController;
- (FBSDisplayLayoutPublishing)displayLayoutPublisher;
- (SBAbstractWindowSceneDelegate)init;
- (SBAlertItemsController)alertItemsController;
- (SBAmbientPresentationController)ambientPresentationController;
- (SBAssistantSceneControlling)assistantController;
- (SBCommandTabController)commandTabController;
- (SBControlCenterController)controlCenterController;
- (SBCoverSheetPresentationManager)coverSheetPresentationManager;
- (SBDisplayAppInteractionEventSource)appInteractionEventSource;
- (SBFAuthenticationStatusProvider)authenticationStatusProvider;
- (SBFSecureDisplayStateProviding)secureDisplayStateProvider;
- (SBFZStackResolver)zStackResolver;
- (SBFloatingDockController)floatingDockController;
- (SBHardwareButtonBezelEffectsCoordinator)hardwareButtonBezelEffectsCoordinator;
- (SBHomeAffordanceInteractionManager)homeAffordanceInteractionManager;
- (SBHomeScreenController)homeScreenController;
- (SBIconController)iconController;
- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator;
- (SBLockScreenManager)lockScreenManager;
- (SBLockStateProviding)uiLockStateProvider;
- (SBLockedPointerManager)lockedPointerManager;
- (SBMainDisplayLayoutStateManager)layoutStateManager;
- (SBMedusaHostedKeyboardWindowController)medusaHostedKeyboardWindowController;
- (SBMenuBarManager)menuBarManager;
- (SBModalAlertPresentationCoordinator)modalAlertPresentationCoordinator;
- (SBModalLibraryController)modalLibraryController;
- (SBModalUIFluidDismissGestureManager)modalUIFluidDismissGestureManager;
- (SBReachabilitySceneOffsetProviding)reachabilitySceneOffsetProvider;
- (SBRecordingIndicatorManager)recordingIndicatorManager;
- (SBSceneLayoutStateProvider)layoutStateProvider;
- (SBSceneManager)sceneManager;
- (SBSwitcherController)switcherController;
- (SBSystemApertureController)systemApertureController;
- (SBSystemGestureManager)systemGestureManager;
- (SBSystemPointerInteractionManager)systemPointerInteractionManager;
- (SBTraitsPipelineManager)traitsPipelineManager;
- (SBTransientOverlayPresenting)transientOverlayPresenter;
- (SBTransientUIInteractionManager)transientUIInteractionManager;
- (SBUICommandValidating)commandValidator;
- (SBWallpaperController)wallpaperController;
- (SBWindowHidingManager)windowHidingManager;
- (SBWindowScene)windowScene;
- (SBWindowSceneAccessorySceneProvider)accessorySceneProvider;
- (SBWindowScenePIPManager)pictureInPictureManager;
- (TRAArbiter)traitsArbiter;
- (double)_windowScene:(id)a3 levelForWindow:(id)a4 preferredLevel:(double)a5;
- (id)_acquireParticipantForWindow:(id)a3 reason:(id)a4;
- (id)_createTraitsArbiterWithPipelineManager:(id)a3;
- (id)_displayLayoutPublisherForWindowScene:(id)a3;
- (id)_participantForWindow:(id)a3;
- (id)_pipelineManager;
- (id)_sceneManagerForConnectingWindowScene:(id)a3;
- (id)_traitsDelegateForWindowRole:(id)a3;
- (void)_commonSceneSetupForScene:(id)a3;
- (void)_configureForConnectingWindowScene:(id)a3 windowSceneContext:(id)a4;
- (void)_setParticipant:(id)a3 forWindow:(id)a4;
- (void)_windowScene:(id)a3 window:(id)a4 didUpdateSupportedInterfaceOrientations:(unint64_t)a5 preferredOrientation:(int64_t)a6;
- (void)_windowScene:(id)a3 windowDidBecomeVisible:(id)a4;
- (void)_windowScene:(id)a3 windowWillAttach:(id)a4;
- (void)_windowScene:(id)a3 windowWillBecomeHidden:(id)a4;
- (void)_windowScene:(id)a3 windowWillBecomeVisible:(id)a4;
- (void)_windowScene:(id)a3 windowWillDetach:(id)a4;
- (void)dealloc;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindowScene:(id)a3;
- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6;
@end

@implementation SBAbstractWindowSceneDelegate

- (SBHomeScreenController)homeScreenController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 homeScreenController];

  return v3;
}

- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 layoutStateTransitionCoordinator];

  return v3;
}

- (SBSwitcherController)switcherController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 switcherController];

  return v3;
}

- (SBSceneManager)sceneManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 sceneManager];

  return v3;
}

- (SBTransientOverlayPresenting)transientOverlayPresenter
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 transientOverlayPresenter];

  return v3;
}

- (SBSceneLayoutStateProvider)layoutStateProvider
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 layoutStateProvider];

  return v3;
}

- (SBMainDisplayLayoutStateManager)layoutStateManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 layoutStateManager];

  return v3;
}

- (FBSDisplayLayoutPublishing)displayLayoutPublisher
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 displayLayoutPublisher];

  return v3;
}

- (SBLockStateProviding)uiLockStateProvider
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 uiLockStateProvider];

  return v3;
}

- (SBTraitsPipelineManager)traitsPipelineManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 traitsPipelineManager];

  return v3;
}

- (SBFloatingDockController)floatingDockController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 floatingDockController];

  return v3;
}

- (SBFAuthenticationStatusProvider)authenticationStatusProvider
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 authenticationStatusProvider];

  return v3;
}

- (SBFSecureDisplayStateProviding)secureDisplayStateProvider
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 secureDisplayStateProvider];

  return v3;
}

- (SBWindowScenePIPManager)pictureInPictureManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 pictureInPictureManager];

  return v3;
}

- (SBCommandTabController)commandTabController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 commandTabController];

  return v3;
}

- (SBAssistantSceneControlling)assistantController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 assistantController];

  return v3;
}

- (SBSystemGestureManager)systemGestureManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 systemGestureManager];

  return v3;
}

- (SBRecordingIndicatorManager)recordingIndicatorManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 recordingIndicatorManager];

  return v3;
}

- (SBIconController)iconController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 iconController];

  return v3;
}

- (SBMedusaHostedKeyboardWindowController)medusaHostedKeyboardWindowController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 medusaHostedKeyboardWindowController];

  return v3;
}

- (SBHardwareButtonBezelEffectsCoordinator)hardwareButtonBezelEffectsCoordinator
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 hardwareButtonBezelEffectsCoordinator];

  return v3;
}

- (SBHomeAffordanceInteractionManager)homeAffordanceInteractionManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 homeAffordanceInteractionManager];

  return v3;
}

- (SBSystemPointerInteractionManager)systemPointerInteractionManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 systemPointerInteractionManager];

  return v3;
}

- (SBModalLibraryController)modalLibraryController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 modalLibraryController];

  return v3;
}

- (SBLockScreenManager)lockScreenManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 lockScreenManager];

  return v3;
}

- (SBSystemApertureController)systemApertureController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 systemApertureController];

  return v3;
}

- (BNBannerController)bannerController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 bannerController];

  return v3;
}

- (SBAmbientPresentationController)ambientPresentationController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 ambientPresentationController];

  return v3;
}

- (SBFZStackResolver)zStackResolver
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 zStackResolver];

  return v3;
}

- (SBWindowHidingManager)windowHidingManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 windowHidingManager];

  return v3;
}

- (TRAArbiter)traitsArbiter
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 traitsArbiter];

  return v3;
}

- (SBControlCenterController)controlCenterController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 controlCenterController];

  return v3;
}

- (CSCoverSheetViewController)coverSheetViewController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 coverSheetViewController];

  return v3;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (SBTransientUIInteractionManager)transientUIInteractionManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 transientUIInteractionManager];

  return v3;
}

- (SBAlertItemsController)alertItemsController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 alertItemsController];

  return v3;
}

- (SBDisplayAppInteractionEventSource)appInteractionEventSource
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 appInteractionEventSource];

  return v3;
}

- (SBCoverSheetPresentationManager)coverSheetPresentationManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 coverSheetPresentationManager];

  return v3;
}

- (SBLockedPointerManager)lockedPointerManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 lockedPointerManager];

  return v3;
}

- (SBModalAlertPresentationCoordinator)modalAlertPresentationCoordinator
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 modalAlertPresentationCoordinator];

  return v3;
}

- (SBModalUIFluidDismissGestureManager)modalUIFluidDismissGestureManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 modalUIFluidDismissGestureManager];

  return v3;
}

- (SBReachabilitySceneOffsetProviding)reachabilitySceneOffsetProvider
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 reachabilitySceneOffsetProvider];

  return v3;
}

- (SBWallpaperController)wallpaperController
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 wallpaperController];

  return v3;
}

- (SBUICommandValidating)commandValidator
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 commandValidator];

  return v3;
}

- (SBMenuBarManager)menuBarManager
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 menuBarManager];

  return v3;
}

- (SBWindowSceneAccessorySceneProvider)accessorySceneProvider
{
  v2 = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  v3 = [v2 accessorySceneProvider];

  return v3;
}

- (SBAbstractWindowSceneDelegate)init
{
  v9.receiver = self;
  v9.super_class = SBAbstractWindowSceneDelegate;
  v2 = [(SBAbstractWindowSceneDelegate *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(SBAbstractWindowSceneDelegate *)v2 _pipelineManager];
    pipelineManager = v3->_pipelineManager;
    v3->_pipelineManager = v4;

    v6 = [(SBAbstractWindowSceneDelegate *)v3 _createTraitsArbiterWithPipelineManager:v3->_pipelineManager];
    traitsArbiter = v3->_traitsArbiter;
    v3->_traitsArbiter = v6;
  }

  return v3;
}

- (void)dealloc
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__22;
    v22[4] = __Block_byref_object_dispose__22;
    v23 = self->_traitsArbiter;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__22;
    v20[4] = __Block_byref_object_dispose__22;
    v21 = self->_pipelineManager;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__22;
    v18[4] = __Block_byref_object_dispose__22;
    v19 = self->_hardwareButtonZStackClient;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__22;
    v16[4] = __Block_byref_object_dispose__22;
    v17 = self->_windowSceneContext;
    traitsArbiter = self->_traitsArbiter;
    self->_traitsArbiter = 0;

    pipelineManager = self->_pipelineManager;
    self->_pipelineManager = 0;

    hardwareButtonZStackClient = self->_hardwareButtonZStackClient;
    self->_hardwareButtonZStackClient = 0;

    windowSceneContext = self->_windowSceneContext;
    self->_windowSceneContext = 0;

    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __40__SBAbstractWindowSceneDelegate_dealloc__block_invoke;
    v11 = &unk_2783AFB98;
    v12 = v22;
    v13 = v20;
    v14 = v18;
    v15 = v16;
    BSDispatchMain();
    _Block_object_dispose(v16, 8);

    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v20, 8);

    _Block_object_dispose(v22, 8);
  }

  v7.receiver = self;
  v7.super_class = SBAbstractWindowSceneDelegate;
  [(SBAbstractWindowSceneDelegate *)&v7 dealloc];
}

void __40__SBAbstractWindowSceneDelegate_dealloc__block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (void)setWindowScene:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_windowScene, obj);
  }
}

- (id)_sceneManagerForConnectingWindowScene:(id)a3
{
  v3 = a3;
  if (SBFIsShellSceneKitAvailable())
  {
    v4 = +[SBSceneManagerCoordinator sharedInstance];
    v5 = [v3 _FBSScene];
    v6 = [v5 settings];
    v7 = [v6 displayIdentity];
    v8 = [v4 sceneManagerForDisplayIdentity:v7];
  }

  else
  {
    v4 = [v3 _FBSScene];
    v5 = [v4 settings];
    v6 = [v5 transientLocalSettings];
    v8 = [v6 objectForSetting:4444];
  }

  return v8;
}

- (id)_displayLayoutPublisherForWindowScene:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBAbstractWindowSceneDelegate.m" lineNumber:161 description:@"For subclasses to implement"];

  return 0;
}

- (void)_configureForConnectingWindowScene:(id)a3 windowSceneContext:(id)a4
{
  v38 = a3;
  v6 = a4;
  [v6 setTraitsArbiter:self->_traitsArbiter];
  [v6 setTraitsPipelineManager:self->_pipelineManager];
  v7 = [(SBAbstractWindowSceneDelegate *)self _sceneManagerForConnectingWindowScene:v38];
  [v6 setSceneManager:v7];
  [(SBAbstractWindowSceneDelegate *)self _configureNewPresentationBinderForWindowScene:v38 sceneManager:v7];
  v8 = [(SBAbstractWindowSceneDelegate *)self _displayLayoutPublisherForConnectingWindowScene:v38];
  [v6 setDisplayLayoutPublisher:v8];

  if (SBFIsShellSceneKitAvailable())
  {
    v9 = [SBApp windowSceneManager];
    [v9 connectedWindowScenes];
  }

  else
  {
    v11 = [SBApp displayManager];
    v9 = [v11 connectedIdentities];

    [v9 bs_filter:&__block_literal_global_66];
  }
  v10 = ;
  v12 = [v10 count];

  v13 = [v38 isExternalDisplayWindowScene];
  v14 = [SBSceneLayoutStateProvider alloc];
  v15 = [SBMainDisplayLayoutStateManager _initialLayoutStateWithDisplayOrdinal:v12 - 1 isDisplayExternal:v13];
  v16 = [(SBSceneLayoutStateProvider *)v14 initWithLayoutState:v15];
  [v6 setLayoutStateProvider:v16];

  v17 = objc_alloc_init(SBMainDisplayLayoutStateManager);
  [v6 setLayoutStateManager:v17];

  v18 = [[SBLayoutStateTransitionCoordinator alloc] initWithWindowScene:v38];
  [v6 setLayoutStateTransitionCoordinator:v18];

  v19 = [[SBAssistantSceneController alloc] initWithWindowScene:v38];
  [v6 setAssistantController:v19];

  v20 = [SBWindowScenePIPManager alloc];
  v21 = [SBApp pictureInPictureCoordinator];
  v22 = [(SBWindowScenePIPManager *)v20 initWithGlobalCoordinator:v21];

  [v6 setPictureInPictureManager:v22];
  v23 = objc_alloc_init(MEMORY[0x277D65FE0]);
  [v6 setZStackResolver:v23];
  v24 = [[SBWindowHidingManager alloc] initWithWindowScene:v38];
  [v6 setWindowHidingManager:v24];

  v25 = objc_alloc_init(SBReachabilityUnsupportedSceneOffsetProvider);
  [v6 setReachabilitySceneOffsetProvider:v25];

  v26 = objc_alloc_init(SBPassthroughUICommandValidator);
  [v6 setCommandValidator:v26];

  v27 = [SBApp mousePointerManager];
  v28 = [v27 requestPointerActivationForScene:v38];
  pointerAssertion = self->_pointerAssertion;
  self->_pointerAssertion = v28;

  v30 = [SBHardwareButtonZStackClient alloc];
  v31 = +[SBHardwareButtonService sharedInstance];
  v32 = [(SBHardwareButtonZStackClient *)v30 initWithZStackResolver:v23 hardwareButtonService:v31];
  hardwareButtonZStackClient = self->_hardwareButtonZStackClient;
  self->_hardwareButtonZStackClient = v32;

  v34 = [SBApp systemUIScenesCoordinator];
  [v34 windowSceneDidConnect:v38];

  v35 = +[SBKeyboardFocusCoordinator sharedInstance];
  [v35 windowSceneDidConnect:v38];

  v36 = [[SBLockedPointerManager alloc] initWithWindowScene:v38];
  [v6 setLockedPointerManager:v36];
  v37 = [[SBWindowSceneAccessorySceneProvider alloc] initWithSBWindowScene:v38];
  [v6 setAccessorySceneProvider:v37];

  [v7 windowSceneDidConnect:v38];
}

- (id)_pipelineManager
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBAbstractWindowSceneDelegate.m" lineNumber:224 description:@"For subclasses to define"];

  return 0;
}

- (id)_traitsDelegateForWindowRole:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBAbstractWindowSceneDelegate.m" lineNumber:229 description:@"For subclasses to define"];

  return 0;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = SBLogStartup();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = v6;
    v18 = 2114;
    v19 = self;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] connecting for: %{public}@; %{public}@", &v14, 0x20u);
  }

  v9 = [SBApp windowSceneManager];
  [v9 _sceneWillConnect:v6];

  v10 = objc_opt_class();
  v11 = v6;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    [(SBAbstractWindowSceneDelegate *)self setWindowScene:v13];
    [(SBAbstractWindowSceneDelegate *)self _commonSceneSetupForScene:v13];
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v29 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v29;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = +[SBMainWorkspace sharedInstanceIfExists];
  v9 = [v8 keyboardFocusController];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v7 screen];
  v14 = [v13 displayIdentity];
  v15 = [v10 stringWithFormat:@"%@ - %@", v12, v14];
  v16 = [v9 suppressKeyboardFocusEvaluationForReason:v15];

  [(BSInvalidatable *)self->_pointerAssertion invalidate];
  v17 = [SBApp windowSceneManager];
  [v17 _sceneDidDisconnect:v29];

  v18 = [v7 sceneManager];
  [v18 windowSceneDidDisconnect:v7];

  v19 = [v7 pictureInPictureManager];
  [v19 windowSceneDidDisconnect:v7];

  v20 = [v7 assistantController];
  [v20 invalidate];

  v21 = [v8 transientOverlayPresentationManager];
  [v21 windowSceneDidDisconnect:v7];

  v22 = [v8 keyboardFocusController];
  [v22 windowSceneDidDisconnect:v7];

  v23 = [SBApp bannerManager];
  [v23 dismissAllBannersInWindowScene:v7 animated:0 reason:@"sceneDidDisconnect"];

  v24 = [SBApp systemUIScenesCoordinator];
  [v24 windowSceneDidDisconnect:v7];

  v25 = [v7 homeScreenController];
  [v25 windowSceneDidDisconnect:v7];

  v26 = [v7 menuBarManager];
  [v26 windowSceneDidDisconnect:v7];

  v27 = [v7 lockedPointerManager];
  [v27 invalidate];

  v28 = [v7 medusaHostedKeyboardWindowController];
  [v28 invalidate];

  [v16 invalidate];
}

- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 interfaceOrientation];
  v11 = [v8 coordinateSpace];
  v12 = __107__SBAbstractWindowSceneDelegate_windowScene_didUpdateCoordinateSpace_interfaceOrientation_traitCollection___block_invoke(v11, v10, v11);
  v14 = v13;

  v17 = __107__SBAbstractWindowSceneDelegate_windowScene_didUpdateCoordinateSpace_interfaceOrientation_traitCollection___block_invoke(v15, a5, v9);
  v18 = v16;
  if (v12 != v17 || v14 != v16)
  {
    v19 = SBLogDisplayScaleMapping();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v8 _sbDisplayConfiguration];
      v21 = [v20 identity];
      v32.width = v17;
      v32.height = v18;
      v22 = NSStringFromCGSize(v32);
      v33.width = v12;
      v33.height = v14;
      v23 = NSStringFromCGSize(v33);
      v25 = 138543874;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ changed from %@ to %@", &v25, 0x20u);
    }

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 postNotificationName:@"SBWindowSceneSessionRoleExternalDisplay" object:v8];
  }
}

double __107__SBAbstractWindowSceneDelegate_windowScene_didUpdateCoordinateSpace_interfaceOrientation_traitCollection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  if ((a2 - 3) <= 1)
  {
    BSSizeSwap();
    v6 = v7;
  }

  return v6;
}

- (void)_windowScene:(id)a3 windowWillAttach:(id)a4
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(SBAbstractWindowSceneDelegate *)v9 _windowScene:v15 windowWillAttach:v6, v7];
  }

  v10 = objc_opt_class();
  v11 = v5;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [v13 windowHidingManager];
    [v14 _window:v6 willAttachToScene:v11];
  }
}

- (void)_windowScene:(id)a3 windowWillDetach:(id)a4
{
  v17[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v7 _roleHint];
    [(SBAbstractWindowSceneDelegate *)v7 _windowScene:v9 windowWillDetach:v17];
  }

  v10 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:v7];
  v11 = v10;
  if (v10)
  {
    [v10 invalidate];
    [(SBAbstractWindowSceneDelegate *)self _setParticipant:0 forWindow:v7];
  }

  v12 = objc_opt_class();
  v13 = v6;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = [v15 windowHidingManager];
    [v16 _window:v7 willDetachFromScene:v13];
  }
}

- (void)_windowScene:(id)a3 windowWillBecomeVisible:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 _roleHint];
  v8 = [v6 stringWithFormat:@"Window(%p) with role(%@) will become visible.", v5, v7];

  v9 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SBAbstractWindowSceneDelegate _windowScene:windowWillBecomeVisible:];
  }

  v10 = [v5 _roleHint];
  v11 = v10;
  if (v10 && SBTraitsArbiterOrientationActuationEnabledForRole(v10))
  {
    if ([v5 autorotates])
    {
      [v5 setAutorotates:0 forceUpdateInterfaceOrientation:1];
    }

    if (([v5 isInterfaceAutorotationDisabled] & 1) == 0)
    {
      [v5 beginDisablingInterfaceAutorotation];
    }
  }

  if ([(SBAbstractWindowSceneDelegate *)self _shouldManageParticipantWithRole:v11])
  {
    v12 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:v5];
    if (v12 || ([(SBAbstractWindowSceneDelegate *)self _acquireParticipantForWindow:v5 reason:v8], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:v11];
      [v13 windowWillBecomeVisible:v5 ownedParticipant:v12];

      [v12 setNeedsUpdatePreferencesWithReason:v8 force:1 animate:0];
    }
  }

  else
  {
    v12 = 0;
  }
}

- (void)_windowScene:(id)a3 windowDidBecomeVisible:(id)a4
{
  v7[3] = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 _roleHint];
    [(SBAbstractWindowSceneDelegate *)v4 _windowScene:v6 windowDidBecomeVisible:v7];
  }
}

- (void)_windowScene:(id)a3 windowWillBecomeHidden:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCACA8];
  v7 = [v5 _roleHint];
  v8 = [v6 stringWithFormat:@"Window(%p) with role(%@) will become hidden.", v5, v7];

  v9 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SBAbstractWindowSceneDelegate _windowScene:windowWillBecomeVisible:];
  }

  v10 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:v5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 role];
    v13 = [(SBAbstractWindowSceneDelegate *)self _shouldHandleWindowWillBecomeHiddenForRole:v12];

    if (v13)
    {
      v14 = [v11 role];
      v15 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:v14];
      [v15 windowWillBecomeHidden:v5 ownedParticipant:v11];

      [v11 setNeedsUpdatePreferencesWithReason:v8];
    }
  }
}

- (double)_windowScene:(id)a3 levelForWindow:(id)a4 preferredLevel:(double)a5
{
  v7 = a4;
  v8 = MEMORY[0x277CCACA8];
  v9 = [v7 _roleHint];
  v10 = [v8 stringWithFormat:@"Window(%p) with role(%@) did update windowLevel(%.1f)", v7, v9, *&a5];

  v11 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SBAbstractWindowSceneDelegate _windowScene:windowWillBecomeVisible:];
  }

  v12 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:v7];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 role];
    v15 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:v14];
    [v15 windowDidUpdatePreferredWindowLevel:v13 ownedParticipant:a5];

    [v13 setNeedsUpdatePreferencesWithReason:v10];
    [v13 updatePreferencesIfNeeded];
    [v13 currentZOrderLevel];
    a5 = v16;
  }

  return a5;
}

- (void)_windowScene:(id)a3 window:(id)a4 didUpdateSupportedInterfaceOrientations:(unint64_t)a5 preferredOrientation:(int64_t)a6
{
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = [v8 _roleHint];
  v11 = BSInterfaceOrientationMaskDescription();
  v12 = [v9 stringWithFormat:@"Window(%p) with role(%@) did update supportedInterfaceOrientations(%@)"], v8, v10, v11);

  v13 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SBAbstractWindowSceneDelegate _windowScene:windowWillBecomeVisible:];
  }

  v14 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:v8];
  if (v14)
  {
    v15 = [MEMORY[0x277D75D18] areAnimationsEnabled];
    v16 = [v14 role];
    v17 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:v16];
    [v17 windowDidUpdateSupportedOrientations:a5 ownedParticipant:v14];

    [v14 setNeedsUpdatePreferencesWithReason:v12 animate:{-[SBAbstractWindowSceneDelegate _isWindowContentVisible:](self, "_isWindowContentVisible:", v8) & v15}];
    [v14 updatePreferencesIfNeeded];
  }
}

- (void)_commonSceneSetupForScene:(id)a3
{
  v7 = a3;
  v4 = [[SBWindowSceneContext alloc] initWithScene:v7];
  windowSceneContext = self->_windowSceneContext;
  self->_windowSceneContext = v4;
  v6 = v4;

  [(SBAbstractWindowSceneDelegate *)self _configureForConnectingWindowScene:v7 windowSceneContext:v6];
}

- (id)_participantForWindow:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, v3);
  v6 = v5;
  if (v5)
  {
    [v5 traitsParticipant];
  }

  else
  {
    [v3 sb_traitsParticipant];
  }
  v7 = ;

  return v7;
}

- (void)_setParticipant:(id)a3 forWindow:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, v5);
  v8 = v7;
  if (v7)
  {
    [v7 _setTraitsParticipant:v9];
  }

  else
  {
    [v5 sb_setTraitsParticipant:v9];
  }
}

- (id)_acquireParticipantForWindow:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:v6];
  v9 = [v6 _roleHint];
  if (v9 && !v8)
  {
    v10 = [v6 _sbWindowScene];
    v11 = [v10 traitsArbiter];
    v12 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:v9];
    v8 = [v11 acquireParticipantWithRole:v9 delegate:v12];

    [(SBAbstractWindowSceneDelegate *)self _setParticipant:v8 forWindow:v6];
    v13 = [v8 role];
    v14 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:v13];
    [v14 setParticipant:v8 ownedByWindow:v6];
  }

  return v8;
}

- (BOOL)_isWindowContentVisible:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  v5 = SBSafeCast(v4, v3);

  if (v5)
  {
    v6 = [v5 isContentHidden];
  }

  else
  {
    v6 = [v3 isHidden];
  }

  v7 = v6;

  return v7 ^ 1;
}

- (id)_createTraitsArbiterWithPipelineManager:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D73490]) initWithRolesProvider:v4 inputsDataSource:v4 drawingDataSource:v4];
  [v4 setSceneDelegate:self];
  [v4 setArbiter:v5];
  [v4 setupDefaultPipelineForArbiter:v5];

  return v5;
}

- (void)_windowScene:(uint64_t)a3 windowWillAttach:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 134218242;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2114;
  *(a2 + 14) = a1;
  OUTLINED_FUNCTION_3_9(&dword_21ED4E000, "Window(%p)(%{public}@) will attach.", a2, a4);
}

- (void)_windowScene:(uint64_t)a3 windowWillDetach:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_9(a1, a2, a3, 3.8521e-34);
  OUTLINED_FUNCTION_3_9(&dword_21ED4E000, "Window(%p) with role(%{public}@) will detach.", v4, v5);
}

- (void)_windowScene:(uint64_t)a3 windowDidBecomeVisible:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_9(a1, a2, a3, 3.8521e-34);
  OUTLINED_FUNCTION_3_9(&dword_21ED4E000, "Window(%p) with role(%{public}@) did become visible.", v4, v5);
}

- (void)_acquireParticipantForWindow:reason:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_FAULT, "Role %{public}@ needs SpringBoard TraitsArbiter adoption", v1, 0xCu);
}

@end
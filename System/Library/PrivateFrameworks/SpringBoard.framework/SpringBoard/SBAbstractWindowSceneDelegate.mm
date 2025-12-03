@interface SBAbstractWindowSceneDelegate
- (BNBannerController)bannerController;
- (BOOL)_isWindowContentVisible:(id)visible;
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
- (double)_windowScene:(id)scene levelForWindow:(id)window preferredLevel:(double)level;
- (id)_acquireParticipantForWindow:(id)window reason:(id)reason;
- (id)_createTraitsArbiterWithPipelineManager:(id)manager;
- (id)_displayLayoutPublisherForWindowScene:(id)scene;
- (id)_participantForWindow:(id)window;
- (id)_pipelineManager;
- (id)_sceneManagerForConnectingWindowScene:(id)scene;
- (id)_traitsDelegateForWindowRole:(id)role;
- (void)_commonSceneSetupForScene:(id)scene;
- (void)_configureForConnectingWindowScene:(id)scene windowSceneContext:(id)context;
- (void)_setParticipant:(id)participant forWindow:(id)window;
- (void)_windowScene:(id)scene window:(id)window didUpdateSupportedInterfaceOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation;
- (void)_windowScene:(id)scene windowDidBecomeVisible:(id)visible;
- (void)_windowScene:(id)scene windowWillAttach:(id)attach;
- (void)_windowScene:(id)scene windowWillBecomeHidden:(id)hidden;
- (void)_windowScene:(id)scene windowWillBecomeVisible:(id)visible;
- (void)_windowScene:(id)scene windowWillDetach:(id)detach;
- (void)dealloc;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindowScene:(id)scene;
- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
@end

@implementation SBAbstractWindowSceneDelegate

- (SBHomeScreenController)homeScreenController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  homeScreenController = [_sbWindowSceneContext homeScreenController];

  return homeScreenController;
}

- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  layoutStateTransitionCoordinator = [_sbWindowSceneContext layoutStateTransitionCoordinator];

  return layoutStateTransitionCoordinator;
}

- (SBSwitcherController)switcherController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  switcherController = [_sbWindowSceneContext switcherController];

  return switcherController;
}

- (SBSceneManager)sceneManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  sceneManager = [_sbWindowSceneContext sceneManager];

  return sceneManager;
}

- (SBTransientOverlayPresenting)transientOverlayPresenter
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  transientOverlayPresenter = [_sbWindowSceneContext transientOverlayPresenter];

  return transientOverlayPresenter;
}

- (SBSceneLayoutStateProvider)layoutStateProvider
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  layoutStateProvider = [_sbWindowSceneContext layoutStateProvider];

  return layoutStateProvider;
}

- (SBMainDisplayLayoutStateManager)layoutStateManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  layoutStateManager = [_sbWindowSceneContext layoutStateManager];

  return layoutStateManager;
}

- (FBSDisplayLayoutPublishing)displayLayoutPublisher
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  displayLayoutPublisher = [_sbWindowSceneContext displayLayoutPublisher];

  return displayLayoutPublisher;
}

- (SBLockStateProviding)uiLockStateProvider
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  uiLockStateProvider = [_sbWindowSceneContext uiLockStateProvider];

  return uiLockStateProvider;
}

- (SBTraitsPipelineManager)traitsPipelineManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  traitsPipelineManager = [_sbWindowSceneContext traitsPipelineManager];

  return traitsPipelineManager;
}

- (SBFloatingDockController)floatingDockController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  floatingDockController = [_sbWindowSceneContext floatingDockController];

  return floatingDockController;
}

- (SBFAuthenticationStatusProvider)authenticationStatusProvider
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  authenticationStatusProvider = [_sbWindowSceneContext authenticationStatusProvider];

  return authenticationStatusProvider;
}

- (SBFSecureDisplayStateProviding)secureDisplayStateProvider
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  secureDisplayStateProvider = [_sbWindowSceneContext secureDisplayStateProvider];

  return secureDisplayStateProvider;
}

- (SBWindowScenePIPManager)pictureInPictureManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  pictureInPictureManager = [_sbWindowSceneContext pictureInPictureManager];

  return pictureInPictureManager;
}

- (SBCommandTabController)commandTabController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  commandTabController = [_sbWindowSceneContext commandTabController];

  return commandTabController;
}

- (SBAssistantSceneControlling)assistantController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  assistantController = [_sbWindowSceneContext assistantController];

  return assistantController;
}

- (SBSystemGestureManager)systemGestureManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  systemGestureManager = [_sbWindowSceneContext systemGestureManager];

  return systemGestureManager;
}

- (SBRecordingIndicatorManager)recordingIndicatorManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  recordingIndicatorManager = [_sbWindowSceneContext recordingIndicatorManager];

  return recordingIndicatorManager;
}

- (SBIconController)iconController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  iconController = [_sbWindowSceneContext iconController];

  return iconController;
}

- (SBMedusaHostedKeyboardWindowController)medusaHostedKeyboardWindowController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  medusaHostedKeyboardWindowController = [_sbWindowSceneContext medusaHostedKeyboardWindowController];

  return medusaHostedKeyboardWindowController;
}

- (SBHardwareButtonBezelEffectsCoordinator)hardwareButtonBezelEffectsCoordinator
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  hardwareButtonBezelEffectsCoordinator = [_sbWindowSceneContext hardwareButtonBezelEffectsCoordinator];

  return hardwareButtonBezelEffectsCoordinator;
}

- (SBHomeAffordanceInteractionManager)homeAffordanceInteractionManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  homeAffordanceInteractionManager = [_sbWindowSceneContext homeAffordanceInteractionManager];

  return homeAffordanceInteractionManager;
}

- (SBSystemPointerInteractionManager)systemPointerInteractionManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  systemPointerInteractionManager = [_sbWindowSceneContext systemPointerInteractionManager];

  return systemPointerInteractionManager;
}

- (SBModalLibraryController)modalLibraryController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  modalLibraryController = [_sbWindowSceneContext modalLibraryController];

  return modalLibraryController;
}

- (SBLockScreenManager)lockScreenManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  lockScreenManager = [_sbWindowSceneContext lockScreenManager];

  return lockScreenManager;
}

- (SBSystemApertureController)systemApertureController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  systemApertureController = [_sbWindowSceneContext systemApertureController];

  return systemApertureController;
}

- (BNBannerController)bannerController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  bannerController = [_sbWindowSceneContext bannerController];

  return bannerController;
}

- (SBAmbientPresentationController)ambientPresentationController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  ambientPresentationController = [_sbWindowSceneContext ambientPresentationController];

  return ambientPresentationController;
}

- (SBFZStackResolver)zStackResolver
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  zStackResolver = [_sbWindowSceneContext zStackResolver];

  return zStackResolver;
}

- (SBWindowHidingManager)windowHidingManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  windowHidingManager = [_sbWindowSceneContext windowHidingManager];

  return windowHidingManager;
}

- (TRAArbiter)traitsArbiter
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  traitsArbiter = [_sbWindowSceneContext traitsArbiter];

  return traitsArbiter;
}

- (SBControlCenterController)controlCenterController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  controlCenterController = [_sbWindowSceneContext controlCenterController];

  return controlCenterController;
}

- (CSCoverSheetViewController)coverSheetViewController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  coverSheetViewController = [_sbWindowSceneContext coverSheetViewController];

  return coverSheetViewController;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (SBTransientUIInteractionManager)transientUIInteractionManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  transientUIInteractionManager = [_sbWindowSceneContext transientUIInteractionManager];

  return transientUIInteractionManager;
}

- (SBAlertItemsController)alertItemsController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  alertItemsController = [_sbWindowSceneContext alertItemsController];

  return alertItemsController;
}

- (SBDisplayAppInteractionEventSource)appInteractionEventSource
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  appInteractionEventSource = [_sbWindowSceneContext appInteractionEventSource];

  return appInteractionEventSource;
}

- (SBCoverSheetPresentationManager)coverSheetPresentationManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  coverSheetPresentationManager = [_sbWindowSceneContext coverSheetPresentationManager];

  return coverSheetPresentationManager;
}

- (SBLockedPointerManager)lockedPointerManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  lockedPointerManager = [_sbWindowSceneContext lockedPointerManager];

  return lockedPointerManager;
}

- (SBModalAlertPresentationCoordinator)modalAlertPresentationCoordinator
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  modalAlertPresentationCoordinator = [_sbWindowSceneContext modalAlertPresentationCoordinator];

  return modalAlertPresentationCoordinator;
}

- (SBModalUIFluidDismissGestureManager)modalUIFluidDismissGestureManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  modalUIFluidDismissGestureManager = [_sbWindowSceneContext modalUIFluidDismissGestureManager];

  return modalUIFluidDismissGestureManager;
}

- (SBReachabilitySceneOffsetProviding)reachabilitySceneOffsetProvider
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  reachabilitySceneOffsetProvider = [_sbWindowSceneContext reachabilitySceneOffsetProvider];

  return reachabilitySceneOffsetProvider;
}

- (SBWallpaperController)wallpaperController
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  wallpaperController = [_sbWindowSceneContext wallpaperController];

  return wallpaperController;
}

- (SBUICommandValidating)commandValidator
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  commandValidator = [_sbWindowSceneContext commandValidator];

  return commandValidator;
}

- (SBMenuBarManager)menuBarManager
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  menuBarManager = [_sbWindowSceneContext menuBarManager];

  return menuBarManager;
}

- (SBWindowSceneAccessorySceneProvider)accessorySceneProvider
{
  _sbWindowSceneContext = [(SBAbstractWindowSceneDelegate *)self _sbWindowSceneContext];
  accessorySceneProvider = [_sbWindowSceneContext accessorySceneProvider];

  return accessorySceneProvider;
}

- (SBAbstractWindowSceneDelegate)init
{
  v9.receiver = self;
  v9.super_class = SBAbstractWindowSceneDelegate;
  v2 = [(SBAbstractWindowSceneDelegate *)&v9 init];
  v3 = v2;
  if (v2)
  {
    _pipelineManager = [(SBAbstractWindowSceneDelegate *)v2 _pipelineManager];
    pipelineManager = v3->_pipelineManager;
    v3->_pipelineManager = _pipelineManager;

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

- (void)setWindowScene:(id)scene
{
  obj = scene;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_windowScene, obj);
  }
}

- (id)_sceneManagerForConnectingWindowScene:(id)scene
{
  sceneCopy = scene;
  if (SBFIsShellSceneKitAvailable())
  {
    _FBSScene2 = +[SBSceneManagerCoordinator sharedInstance];
    _FBSScene = [sceneCopy _FBSScene];
    settings = [_FBSScene settings];
    displayIdentity = [settings displayIdentity];
    v8 = [_FBSScene2 sceneManagerForDisplayIdentity:displayIdentity];
  }

  else
  {
    _FBSScene2 = [sceneCopy _FBSScene];
    _FBSScene = [_FBSScene2 settings];
    settings = [_FBSScene transientLocalSettings];
    v8 = [settings objectForSetting:4444];
  }

  return v8;
}

- (id)_displayLayoutPublisherForWindowScene:(id)scene
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBAbstractWindowSceneDelegate.m" lineNumber:161 description:@"For subclasses to implement"];

  return 0;
}

- (void)_configureForConnectingWindowScene:(id)scene windowSceneContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
  [contextCopy setTraitsArbiter:self->_traitsArbiter];
  [contextCopy setTraitsPipelineManager:self->_pipelineManager];
  v7 = [(SBAbstractWindowSceneDelegate *)self _sceneManagerForConnectingWindowScene:sceneCopy];
  [contextCopy setSceneManager:v7];
  [(SBAbstractWindowSceneDelegate *)self _configureNewPresentationBinderForWindowScene:sceneCopy sceneManager:v7];
  v8 = [(SBAbstractWindowSceneDelegate *)self _displayLayoutPublisherForConnectingWindowScene:sceneCopy];
  [contextCopy setDisplayLayoutPublisher:v8];

  if (SBFIsShellSceneKitAvailable())
  {
    windowSceneManager = [SBApp windowSceneManager];
    [windowSceneManager connectedWindowScenes];
  }

  else
  {
    displayManager = [SBApp displayManager];
    windowSceneManager = [displayManager connectedIdentities];

    [windowSceneManager bs_filter:&__block_literal_global_66];
  }
  v10 = ;
  v12 = [v10 count];

  isExternalDisplayWindowScene = [sceneCopy isExternalDisplayWindowScene];
  v14 = [SBSceneLayoutStateProvider alloc];
  v15 = [SBMainDisplayLayoutStateManager _initialLayoutStateWithDisplayOrdinal:v12 - 1 isDisplayExternal:isExternalDisplayWindowScene];
  v16 = [(SBSceneLayoutStateProvider *)v14 initWithLayoutState:v15];
  [contextCopy setLayoutStateProvider:v16];

  v17 = objc_alloc_init(SBMainDisplayLayoutStateManager);
  [contextCopy setLayoutStateManager:v17];

  v18 = [[SBLayoutStateTransitionCoordinator alloc] initWithWindowScene:sceneCopy];
  [contextCopy setLayoutStateTransitionCoordinator:v18];

  v19 = [[SBAssistantSceneController alloc] initWithWindowScene:sceneCopy];
  [contextCopy setAssistantController:v19];

  v20 = [SBWindowScenePIPManager alloc];
  pictureInPictureCoordinator = [SBApp pictureInPictureCoordinator];
  v22 = [(SBWindowScenePIPManager *)v20 initWithGlobalCoordinator:pictureInPictureCoordinator];

  [contextCopy setPictureInPictureManager:v22];
  v23 = objc_alloc_init(MEMORY[0x277D65FE0]);
  [contextCopy setZStackResolver:v23];
  v24 = [[SBWindowHidingManager alloc] initWithWindowScene:sceneCopy];
  [contextCopy setWindowHidingManager:v24];

  v25 = objc_alloc_init(SBReachabilityUnsupportedSceneOffsetProvider);
  [contextCopy setReachabilitySceneOffsetProvider:v25];

  v26 = objc_alloc_init(SBPassthroughUICommandValidator);
  [contextCopy setCommandValidator:v26];

  mousePointerManager = [SBApp mousePointerManager];
  v28 = [mousePointerManager requestPointerActivationForScene:sceneCopy];
  pointerAssertion = self->_pointerAssertion;
  self->_pointerAssertion = v28;

  v30 = [SBHardwareButtonZStackClient alloc];
  v31 = +[SBHardwareButtonService sharedInstance];
  v32 = [(SBHardwareButtonZStackClient *)v30 initWithZStackResolver:v23 hardwareButtonService:v31];
  hardwareButtonZStackClient = self->_hardwareButtonZStackClient;
  self->_hardwareButtonZStackClient = v32;

  systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
  [systemUIScenesCoordinator windowSceneDidConnect:sceneCopy];

  v35 = +[SBKeyboardFocusCoordinator sharedInstance];
  [v35 windowSceneDidConnect:sceneCopy];

  v36 = [[SBLockedPointerManager alloc] initWithWindowScene:sceneCopy];
  [contextCopy setLockedPointerManager:v36];
  v37 = [[SBWindowSceneAccessorySceneProvider alloc] initWithSBWindowScene:sceneCopy];
  [contextCopy setAccessorySceneProvider:v37];

  [v7 windowSceneDidConnect:sceneCopy];
}

- (id)_pipelineManager
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBAbstractWindowSceneDelegate.m" lineNumber:224 description:@"For subclasses to define"];

  return 0;
}

- (id)_traitsDelegateForWindowRole:(id)role
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBAbstractWindowSceneDelegate.m" lineNumber:229 description:@"For subclasses to define"];

  return 0;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  v20 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v7 = SBLogStartup();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = sceneCopy;
    v18 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] connecting for: %{public}@; %{public}@", &v14, 0x20u);
  }

  windowSceneManager = [SBApp windowSceneManager];
  [windowSceneManager _sceneWillConnect:sceneCopy];

  v10 = objc_opt_class();
  v11 = sceneCopy;
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

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = objc_opt_class();
  v29 = disconnectCopy;
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
  keyboardFocusController = [v8 keyboardFocusController];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  screen = [v7 screen];
  displayIdentity = [screen displayIdentity];
  v15 = [v10 stringWithFormat:@"%@ - %@", v12, displayIdentity];
  v16 = [keyboardFocusController suppressKeyboardFocusEvaluationForReason:v15];

  [(BSInvalidatable *)self->_pointerAssertion invalidate];
  windowSceneManager = [SBApp windowSceneManager];
  [windowSceneManager _sceneDidDisconnect:v29];

  sceneManager = [v7 sceneManager];
  [sceneManager windowSceneDidDisconnect:v7];

  pictureInPictureManager = [v7 pictureInPictureManager];
  [pictureInPictureManager windowSceneDidDisconnect:v7];

  assistantController = [v7 assistantController];
  [assistantController invalidate];

  transientOverlayPresentationManager = [v8 transientOverlayPresentationManager];
  [transientOverlayPresentationManager windowSceneDidDisconnect:v7];

  keyboardFocusController2 = [v8 keyboardFocusController];
  [keyboardFocusController2 windowSceneDidDisconnect:v7];

  bannerManager = [SBApp bannerManager];
  [bannerManager dismissAllBannersInWindowScene:v7 animated:0 reason:@"sceneDidDisconnect"];

  systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
  [systemUIScenesCoordinator windowSceneDidDisconnect:v7];

  homeScreenController = [v7 homeScreenController];
  [homeScreenController windowSceneDidDisconnect:v7];

  menuBarManager = [v7 menuBarManager];
  [menuBarManager windowSceneDidDisconnect:v7];

  lockedPointerManager = [v7 lockedPointerManager];
  [lockedPointerManager invalidate];

  medusaHostedKeyboardWindowController = [v7 medusaHostedKeyboardWindowController];
  [medusaHostedKeyboardWindowController invalidate];

  [v16 invalidate];
}

- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  v31 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  spaceCopy = space;
  interfaceOrientation = [sceneCopy interfaceOrientation];
  coordinateSpace = [sceneCopy coordinateSpace];
  v12 = __107__SBAbstractWindowSceneDelegate_windowScene_didUpdateCoordinateSpace_interfaceOrientation_traitCollection___block_invoke(coordinateSpace, interfaceOrientation, coordinateSpace);
  v14 = v13;

  v17 = __107__SBAbstractWindowSceneDelegate_windowScene_didUpdateCoordinateSpace_interfaceOrientation_traitCollection___block_invoke(v15, orientation, spaceCopy);
  v18 = v16;
  if (v12 != v17 || v14 != v16)
  {
    v19 = SBLogDisplayScaleMapping();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      _sbDisplayConfiguration = [sceneCopy _sbDisplayConfiguration];
      identity = [_sbDisplayConfiguration identity];
      v32.width = v17;
      v32.height = v18;
      v22 = NSStringFromCGSize(v32);
      v33.width = v12;
      v33.height = v14;
      v23 = NSStringFromCGSize(v33);
      v25 = 138543874;
      v26 = identity;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ changed from %@ to %@", &v25, 0x20u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBWindowSceneSessionRoleExternalDisplay" object:sceneCopy];
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

- (void)_windowScene:(id)scene windowWillAttach:(id)attach
{
  v15[3] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  attachCopy = attach;
  v7 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(SBAbstractWindowSceneDelegate *)v9 _windowScene:v15 windowWillAttach:attachCopy, v7];
  }

  v10 = objc_opt_class();
  v11 = sceneCopy;
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
    windowHidingManager = [v13 windowHidingManager];
    [windowHidingManager _window:attachCopy willAttachToScene:v11];
  }
}

- (void)_windowScene:(id)scene windowWillDetach:(id)detach
{
  v17[3] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  detachCopy = detach;
  v8 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    _roleHint = [detachCopy _roleHint];
    [(SBAbstractWindowSceneDelegate *)detachCopy _windowScene:_roleHint windowWillDetach:v17];
  }

  v10 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:detachCopy];
  v11 = v10;
  if (v10)
  {
    [v10 invalidate];
    [(SBAbstractWindowSceneDelegate *)self _setParticipant:0 forWindow:detachCopy];
  }

  v12 = objc_opt_class();
  v13 = sceneCopy;
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
    windowHidingManager = [v15 windowHidingManager];
    [windowHidingManager _window:detachCopy willDetachFromScene:v13];
  }
}

- (void)_windowScene:(id)scene windowWillBecomeVisible:(id)visible
{
  visibleCopy = visible;
  v6 = MEMORY[0x277CCACA8];
  _roleHint = [visibleCopy _roleHint];
  v8 = [v6 stringWithFormat:@"Window(%p) with role(%@) will become visible.", visibleCopy, _roleHint];

  v9 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SBAbstractWindowSceneDelegate _windowScene:windowWillBecomeVisible:];
  }

  _roleHint2 = [visibleCopy _roleHint];
  v11 = _roleHint2;
  if (_roleHint2 && SBTraitsArbiterOrientationActuationEnabledForRole(_roleHint2))
  {
    if ([visibleCopy autorotates])
    {
      [visibleCopy setAutorotates:0 forceUpdateInterfaceOrientation:1];
    }

    if (([visibleCopy isInterfaceAutorotationDisabled] & 1) == 0)
    {
      [visibleCopy beginDisablingInterfaceAutorotation];
    }
  }

  if ([(SBAbstractWindowSceneDelegate *)self _shouldManageParticipantWithRole:v11])
  {
    v12 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:visibleCopy];
    if (v12 || ([(SBAbstractWindowSceneDelegate *)self _acquireParticipantForWindow:visibleCopy reason:v8], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:v11];
      [v13 windowWillBecomeVisible:visibleCopy ownedParticipant:v12];

      [v12 setNeedsUpdatePreferencesWithReason:v8 force:1 animate:0];
    }
  }

  else
  {
    v12 = 0;
  }
}

- (void)_windowScene:(id)scene windowDidBecomeVisible:(id)visible
{
  v7[3] = *MEMORY[0x277D85DE8];
  visibleCopy = visible;
  v5 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    _roleHint = [visibleCopy _roleHint];
    [(SBAbstractWindowSceneDelegate *)visibleCopy _windowScene:_roleHint windowDidBecomeVisible:v7];
  }
}

- (void)_windowScene:(id)scene windowWillBecomeHidden:(id)hidden
{
  hiddenCopy = hidden;
  v6 = MEMORY[0x277CCACA8];
  _roleHint = [hiddenCopy _roleHint];
  v8 = [v6 stringWithFormat:@"Window(%p) with role(%@) will become hidden.", hiddenCopy, _roleHint];

  v9 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SBAbstractWindowSceneDelegate _windowScene:windowWillBecomeVisible:];
  }

  v10 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:hiddenCopy];
  v11 = v10;
  if (v10)
  {
    role = [v10 role];
    v13 = [(SBAbstractWindowSceneDelegate *)self _shouldHandleWindowWillBecomeHiddenForRole:role];

    if (v13)
    {
      role2 = [v11 role];
      v15 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:role2];
      [v15 windowWillBecomeHidden:hiddenCopy ownedParticipant:v11];

      [v11 setNeedsUpdatePreferencesWithReason:v8];
    }
  }
}

- (double)_windowScene:(id)scene levelForWindow:(id)window preferredLevel:(double)level
{
  windowCopy = window;
  v8 = MEMORY[0x277CCACA8];
  _roleHint = [windowCopy _roleHint];
  v10 = [v8 stringWithFormat:@"Window(%p) with role(%@) did update windowLevel(%.1f)", windowCopy, _roleHint, *&level];

  v11 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SBAbstractWindowSceneDelegate _windowScene:windowWillBecomeVisible:];
  }

  v12 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:windowCopy];
  v13 = v12;
  if (v12)
  {
    role = [v12 role];
    v15 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:role];
    [v15 windowDidUpdatePreferredWindowLevel:v13 ownedParticipant:level];

    [v13 setNeedsUpdatePreferencesWithReason:v10];
    [v13 updatePreferencesIfNeeded];
    [v13 currentZOrderLevel];
    level = v16;
  }

  return level;
}

- (void)_windowScene:(id)scene window:(id)window didUpdateSupportedInterfaceOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation
{
  windowCopy = window;
  v9 = MEMORY[0x277CCACA8];
  _roleHint = [windowCopy _roleHint];
  v11 = BSInterfaceOrientationMaskDescription();
  v12 = [v9 stringWithFormat:@"Window(%p) with role(%@) did update supportedInterfaceOrientations(%@)"], windowCopy, _roleHint, v11);

  v13 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SBAbstractWindowSceneDelegate _windowScene:windowWillBecomeVisible:];
  }

  v14 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:windowCopy];
  if (v14)
  {
    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
    role = [v14 role];
    v17 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:role];
    [v17 windowDidUpdateSupportedOrientations:orientations ownedParticipant:v14];

    [v14 setNeedsUpdatePreferencesWithReason:v12 animate:{-[SBAbstractWindowSceneDelegate _isWindowContentVisible:](self, "_isWindowContentVisible:", windowCopy) & areAnimationsEnabled}];
    [v14 updatePreferencesIfNeeded];
  }
}

- (void)_commonSceneSetupForScene:(id)scene
{
  sceneCopy = scene;
  v4 = [[SBWindowSceneContext alloc] initWithScene:sceneCopy];
  windowSceneContext = self->_windowSceneContext;
  self->_windowSceneContext = v4;
  v6 = v4;

  [(SBAbstractWindowSceneDelegate *)self _configureForConnectingWindowScene:sceneCopy windowSceneContext:v6];
}

- (id)_participantForWindow:(id)window
{
  windowCopy = window;
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, windowCopy);
  v6 = v5;
  if (v5)
  {
    [v5 traitsParticipant];
  }

  else
  {
    [windowCopy sb_traitsParticipant];
  }
  v7 = ;

  return v7;
}

- (void)_setParticipant:(id)participant forWindow:(id)window
{
  participantCopy = participant;
  windowCopy = window;
  v6 = objc_opt_class();
  v7 = SBSafeCast(v6, windowCopy);
  v8 = v7;
  if (v7)
  {
    [v7 _setTraitsParticipant:participantCopy];
  }

  else
  {
    [windowCopy sb_setTraitsParticipant:participantCopy];
  }
}

- (id)_acquireParticipantForWindow:(id)window reason:(id)reason
{
  windowCopy = window;
  reasonCopy = reason;
  v8 = [(SBAbstractWindowSceneDelegate *)self _participantForWindow:windowCopy];
  _roleHint = [windowCopy _roleHint];
  if (_roleHint && !v8)
  {
    _sbWindowScene = [windowCopy _sbWindowScene];
    traitsArbiter = [_sbWindowScene traitsArbiter];
    v12 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:_roleHint];
    v8 = [traitsArbiter acquireParticipantWithRole:_roleHint delegate:v12];

    [(SBAbstractWindowSceneDelegate *)self _setParticipant:v8 forWindow:windowCopy];
    role = [v8 role];
    v14 = [(SBAbstractWindowSceneDelegate *)self _traitsDelegateForWindowRole:role];
    [v14 setParticipant:v8 ownedByWindow:windowCopy];
  }

  return v8;
}

- (BOOL)_isWindowContentVisible:(id)visible
{
  visibleCopy = visible;
  v4 = objc_opt_self();
  v5 = SBSafeCast(v4, visibleCopy);

  if (v5)
  {
    isContentHidden = [v5 isContentHidden];
  }

  else
  {
    isContentHidden = [visibleCopy isHidden];
  }

  v7 = isContentHidden;

  return v7 ^ 1;
}

- (id)_createTraitsArbiterWithPipelineManager:(id)manager
{
  managerCopy = manager;
  v5 = [objc_alloc(MEMORY[0x277D73490]) initWithRolesProvider:managerCopy inputsDataSource:managerCopy drawingDataSource:managerCopy];
  [managerCopy setSceneDelegate:self];
  [managerCopy setArbiter:v5];
  [managerCopy setupDefaultPipelineForArbiter:v5];

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
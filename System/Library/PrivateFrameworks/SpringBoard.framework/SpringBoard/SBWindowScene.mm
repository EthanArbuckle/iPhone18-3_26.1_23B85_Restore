@interface SBWindowScene
- (BNBannerController)bannerController;
- (BOOL)isContinuityDisplayWindowScene;
- (BOOL)isContinuityScene;
- (BOOL)isEmbeddedScene;
- (BOOL)isExtendedDisplayWindowScene;
- (BOOL)isExternalDisplayScene;
- (BOOL)isExternalDisplayWindowScene;
- (BOOL)isMainDisplayWindowScene;
- (BOOL)supportsMultitasking;
- (CGPoint)convertPoint:(CGPoint)point toNeighboringDisplayWindowScene:(id)scene;
- (CGRect)convertRect:(CGRect)rect toNeighboringDisplayWindowScene:(id)scene;
- (CSCoverSheetViewController)coverSheetViewController;
- (FBSDisplayIdentity)displayIdentity;
- (FBSDisplayLayoutPublishing)displayLayoutPublisher;
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
- (SBWindowSceneAccessorySceneProvider)accessorySceneProvider;
- (SBWindowScenePIPManager)pictureInPictureManager;
- (TRAArbiter)traitsArbiter;
- (id)_abstractWindowSceneDelegate;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_displayWindowingMode;
- (int64_t)keyboardFocusCoalitionAffinity;
- (void)_abstractWindowSceneDelegate;
- (void)setInvalidating:(BOOL)invalidating;
@end

@implementation SBWindowScene

- (SBHomeScreenController)homeScreenController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  homeScreenController = [_abstractWindowSceneDelegate homeScreenController];

  return homeScreenController;
}

- (id)_abstractWindowSceneDelegate
{
  delegate = [(SBWindowScene *)self delegate];
  v5 = objc_opt_class();
  v6 = delegate;
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

  if (!v8)
  {
    [(SBWindowScene *)a2 _abstractWindowSceneDelegate];
  }

  return v8;
}

- (SBSwitcherController)switcherController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  switcherController = [_abstractWindowSceneDelegate switcherController];

  return switcherController;
}

- (SBSceneManager)sceneManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  sceneManager = [_abstractWindowSceneDelegate sceneManager];

  return sceneManager;
}

- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  layoutStateTransitionCoordinator = [_abstractWindowSceneDelegate layoutStateTransitionCoordinator];

  return layoutStateTransitionCoordinator;
}

- (BOOL)isMainDisplayWindowScene
{
  _FBSScene = [(SBWindowScene *)self _FBSScene];
  settings = [_FBSScene settings];
  displayIdentity = [settings displayIdentity];
  isMainDisplay = [displayIdentity isMainDisplay];

  return isMainDisplay;
}

- (SBTransientOverlayPresenting)transientOverlayPresenter
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  transientOverlayPresenter = [_abstractWindowSceneDelegate transientOverlayPresenter];

  return transientOverlayPresenter;
}

- (BOOL)isExternalDisplayWindowScene
{
  _FBSScene = [(SBWindowScene *)self _FBSScene];
  settings = [_FBSScene settings];
  displayIdentity = [settings displayIdentity];
  isExternal = [displayIdentity isExternal];

  return isExternal;
}

- (BOOL)supportsMultitasking
{
  v3 = +[SBPlatformController sharedInstance];
  isMedusaCapable = [v3 isMedusaCapable];

  if (isMedusaCapable)
  {
    return ![(SBWindowScene *)self isContinuityDisplayWindowScene];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isExtendedDisplayWindowScene
{
  session = [(SBWindowScene *)self session];
  role = [session role];
  v5 = [role isEqualToString:@"SBWindowSceneSessionRoleExternalDisplay"];

  _displayWindowingMode = [(SBWindowScene *)self _displayWindowingMode];
  isExternalDisplayWindowScene = [(SBWindowScene *)self isExternalDisplayWindowScene];
  if (_displayWindowingMode == 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return isExternalDisplayWindowScene && v8;
}

- (FBSDisplayLayoutPublishing)displayLayoutPublisher
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  displayLayoutPublisher = [_abstractWindowSceneDelegate displayLayoutPublisher];

  return displayLayoutPublisher;
}

- (SBSceneLayoutStateProvider)layoutStateProvider
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  layoutStateProvider = [_abstractWindowSceneDelegate layoutStateProvider];

  return layoutStateProvider;
}

- (SBMainDisplayLayoutStateManager)layoutStateManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  layoutStateManager = [_abstractWindowSceneDelegate layoutStateManager];

  return layoutStateManager;
}

- (SBLockStateProviding)uiLockStateProvider
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  uiLockStateProvider = [_abstractWindowSceneDelegate uiLockStateProvider];

  return uiLockStateProvider;
}

- (int64_t)_displayWindowingMode
{
  v2 = SBApp;
  _FBSScene = [(SBWindowScene *)self _FBSScene];
  settings = [_FBSScene settings];
  displayIdentity = [settings displayIdentity];
  v6 = [v2 windowingModeForDisplay:displayIdentity];

  return v6;
}

- (SBFloatingDockController)floatingDockController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  floatingDockController = [_abstractWindowSceneDelegate floatingDockController];

  return floatingDockController;
}

- (SBTraitsPipelineManager)traitsPipelineManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  traitsPipelineManager = [_abstractWindowSceneDelegate traitsPipelineManager];

  return traitsPipelineManager;
}

- (SBFAuthenticationStatusProvider)authenticationStatusProvider
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  authenticationStatusProvider = [_abstractWindowSceneDelegate authenticationStatusProvider];

  return authenticationStatusProvider;
}

- (SBFSecureDisplayStateProviding)secureDisplayStateProvider
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  secureDisplayStateProvider = [_abstractWindowSceneDelegate secureDisplayStateProvider];

  return secureDisplayStateProvider;
}

- (BOOL)isContinuityDisplayWindowScene
{
  session = [(SBWindowScene *)self session];
  role = [session role];
  v5 = [role isEqualToString:*MEMORY[0x277D68048]];

  _displayWindowingMode = [(SBWindowScene *)self _displayWindowingMode];
  isExternalDisplayWindowScene = [(SBWindowScene *)self isExternalDisplayWindowScene];
  if (isExternalDisplayWindowScene)
  {
    if (_displayWindowingMode == 1)
    {
      LOBYTE(isExternalDisplayWindowScene) = v5;
    }

    else
    {
      LOBYTE(isExternalDisplayWindowScene) = 0;
    }
  }

  return isExternalDisplayWindowScene;
}

- (SBAssistantSceneControlling)assistantController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  assistantController = [_abstractWindowSceneDelegate assistantController];

  return assistantController;
}

- (SBSystemGestureManager)systemGestureManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  systemGestureManager = [_abstractWindowSceneDelegate systemGestureManager];

  return systemGestureManager;
}

- (SBWindowScenePIPManager)pictureInPictureManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  pictureInPictureManager = [_abstractWindowSceneDelegate pictureInPictureManager];

  return pictureInPictureManager;
}

- (SBCommandTabController)commandTabController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  commandTabController = [_abstractWindowSceneDelegate commandTabController];

  return commandTabController;
}

- (SBRecordingIndicatorManager)recordingIndicatorManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  recordingIndicatorManager = [_abstractWindowSceneDelegate recordingIndicatorManager];

  return recordingIndicatorManager;
}

- (SBIconController)iconController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  iconController = [_abstractWindowSceneDelegate iconController];

  return iconController;
}

- (SBMedusaHostedKeyboardWindowController)medusaHostedKeyboardWindowController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  medusaHostedKeyboardWindowController = [_abstractWindowSceneDelegate medusaHostedKeyboardWindowController];

  return medusaHostedKeyboardWindowController;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBWindowScene *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  _FBSScene = [(SBWindowScene *)self _FBSScene];
  if (_FBSScene)
  {
    v4 = [MEMORY[0x277CF0C00] builderWithObject:_FBSScene];
    identifier = [_FBSScene identifier];
    [v4 appendString:identifier withName:@"identifier" skipIfEmpty:1];
  }

  else
  {
    v4 = 0;
  }

  v6 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__SBWindowScene_DebuggingOnly__succinctDescriptionBuilder__block_invoke;
  v12[3] = &unk_2783A8ED8;
  v7 = v6;
  v13 = v7;
  v14 = v4;
  selfCopy = self;
  v8 = v4;
  v9 = [v7 modifyProem:v12];
  v10 = v7;

  return v7;
}

void __58__SBWindowScene_DebuggingOnly__succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) build];
  [v2 appendString:v3 withName:@"scene" skipIfEmpty:1];

  v4 = *(a1 + 32);
  v6 = [*(a1 + 48) session];
  v5 = [v6 persistentIdentifier];
  [v4 appendString:v5 withName:@"persistentIdentifier" skipIfEmpty:1];
}

- (SBHardwareButtonBezelEffectsCoordinator)hardwareButtonBezelEffectsCoordinator
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  hardwareButtonBezelEffectsCoordinator = [_abstractWindowSceneDelegate hardwareButtonBezelEffectsCoordinator];

  return hardwareButtonBezelEffectsCoordinator;
}

- (SBHomeAffordanceInteractionManager)homeAffordanceInteractionManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  homeAffordanceInteractionManager = [_abstractWindowSceneDelegate homeAffordanceInteractionManager];

  return homeAffordanceInteractionManager;
}

- (SBSystemPointerInteractionManager)systemPointerInteractionManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  systemPointerInteractionManager = [_abstractWindowSceneDelegate systemPointerInteractionManager];

  return systemPointerInteractionManager;
}

- (SBModalLibraryController)modalLibraryController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  modalLibraryController = [_abstractWindowSceneDelegate modalLibraryController];

  return modalLibraryController;
}

- (SBLockScreenManager)lockScreenManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  lockScreenManager = [_abstractWindowSceneDelegate lockScreenManager];

  return lockScreenManager;
}

- (SBSystemApertureController)systemApertureController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  systemApertureController = [_abstractWindowSceneDelegate systemApertureController];

  return systemApertureController;
}

- (BNBannerController)bannerController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  bannerController = [_abstractWindowSceneDelegate bannerController];

  return bannerController;
}

- (SBAmbientPresentationController)ambientPresentationController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  ambientPresentationController = [_abstractWindowSceneDelegate ambientPresentationController];

  return ambientPresentationController;
}

- (SBFZStackResolver)zStackResolver
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  zStackResolver = [_abstractWindowSceneDelegate zStackResolver];

  return zStackResolver;
}

- (SBWindowHidingManager)windowHidingManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  windowHidingManager = [_abstractWindowSceneDelegate windowHidingManager];

  return windowHidingManager;
}

- (TRAArbiter)traitsArbiter
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  traitsArbiter = [_abstractWindowSceneDelegate traitsArbiter];

  return traitsArbiter;
}

- (SBControlCenterController)controlCenterController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  controlCenterController = [_abstractWindowSceneDelegate controlCenterController];

  return controlCenterController;
}

- (CSCoverSheetViewController)coverSheetViewController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  coverSheetViewController = [_abstractWindowSceneDelegate coverSheetViewController];

  return coverSheetViewController;
}

- (SBTransientUIInteractionManager)transientUIInteractionManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  transientUIInteractionManager = [_abstractWindowSceneDelegate transientUIInteractionManager];

  return transientUIInteractionManager;
}

- (void)setInvalidating:(BOOL)invalidating
{
  if (self->_isInvalidating && !invalidating)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't unvalidate an invalidating scene!"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(SBWindowScene *)a2 setInvalidating:v3];
    }

    [v3 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
  }

  else
  {
    self->_isInvalidating = invalidating;
  }
}

- (CGPoint)convertPoint:(CGPoint)point toNeighboringDisplayWindowScene:(id)scene
{
  sceneCopy = scene;
  _fbsDisplayConfiguration = [(UIWindowScene *)self _fbsDisplayConfiguration];
  screen = [(SBWindowScene *)self screen];
  [screen bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v33.origin.x = v9;
  v33.origin.y = v11;
  v33.size.width = v13;
  v33.size.height = v15;
  CGRectGetWidth(v33);
  v34.origin.x = v9;
  v34.origin.y = v11;
  v34.size.width = v13;
  v34.size.height = v15;
  CGRectGetHeight(v34);
  _fbsDisplayConfiguration2 = [sceneCopy _fbsDisplayConfiguration];
  screen2 = [sceneCopy screen];

  [screen2 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v35.origin.x = v19;
  v35.origin.y = v21;
  v35.size.width = v23;
  v35.size.height = v25;
  CGRectGetWidth(v35);
  v36.origin.x = v19;
  v36.origin.y = v21;
  v36.size.width = v23;
  v36.size.height = v25;
  CGRectGetHeight(v36);
  SBSConvertPointFromDisplayToNeighboringDisplay();
  v27 = v26;
  v29 = v28;

  v30 = v27;
  v31 = v29;
  result.y = v31;
  result.x = v30;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toNeighboringDisplayWindowScene:(id)scene
{
  sceneCopy = scene;
  _fbsDisplayConfiguration = [(UIWindowScene *)self _fbsDisplayConfiguration];
  screen = [(SBWindowScene *)self screen];
  [screen bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v38.origin.x = v9;
  v38.origin.y = v11;
  v38.size.width = v13;
  v38.size.height = v15;
  CGRectGetWidth(v38);
  v39.origin.x = v9;
  v39.origin.y = v11;
  v39.size.width = v13;
  v39.size.height = v15;
  CGRectGetHeight(v39);
  _fbsDisplayConfiguration2 = [sceneCopy _fbsDisplayConfiguration];
  screen2 = [sceneCopy screen];

  [screen2 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v40.origin.x = v19;
  v40.origin.y = v21;
  v40.size.width = v23;
  v40.size.height = v25;
  CGRectGetWidth(v40);
  v41.origin.x = v19;
  v41.origin.y = v21;
  v41.size.width = v23;
  v41.size.height = v25;
  CGRectGetHeight(v41);
  SBSConvertRectFromDisplayToNeighboringDisplay();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = v27;
  v35 = v29;
  v36 = v31;
  v37 = v33;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (SBAlertItemsController)alertItemsController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  alertItemsController = [_abstractWindowSceneDelegate alertItemsController];

  return alertItemsController;
}

- (SBDisplayAppInteractionEventSource)appInteractionEventSource
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  appInteractionEventSource = [_abstractWindowSceneDelegate appInteractionEventSource];

  return appInteractionEventSource;
}

- (SBCoverSheetPresentationManager)coverSheetPresentationManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  coverSheetPresentationManager = [_abstractWindowSceneDelegate coverSheetPresentationManager];

  return coverSheetPresentationManager;
}

- (SBLockedPointerManager)lockedPointerManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  lockedPointerManager = [_abstractWindowSceneDelegate lockedPointerManager];

  return lockedPointerManager;
}

- (SBModalAlertPresentationCoordinator)modalAlertPresentationCoordinator
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  modalAlertPresentationCoordinator = [_abstractWindowSceneDelegate modalAlertPresentationCoordinator];

  return modalAlertPresentationCoordinator;
}

- (SBModalUIFluidDismissGestureManager)modalUIFluidDismissGestureManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  modalUIFluidDismissGestureManager = [_abstractWindowSceneDelegate modalUIFluidDismissGestureManager];

  return modalUIFluidDismissGestureManager;
}

- (SBReachabilitySceneOffsetProviding)reachabilitySceneOffsetProvider
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  reachabilitySceneOffsetProvider = [_abstractWindowSceneDelegate reachabilitySceneOffsetProvider];

  return reachabilitySceneOffsetProvider;
}

- (SBWallpaperController)wallpaperController
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  wallpaperController = [_abstractWindowSceneDelegate wallpaperController];

  return wallpaperController;
}

- (SBUICommandValidating)commandValidator
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  commandValidator = [_abstractWindowSceneDelegate commandValidator];

  return commandValidator;
}

- (SBMenuBarManager)menuBarManager
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  menuBarManager = [_abstractWindowSceneDelegate menuBarManager];

  return menuBarManager;
}

- (SBWindowSceneAccessorySceneProvider)accessorySceneProvider
{
  _abstractWindowSceneDelegate = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  accessorySceneProvider = [_abstractWindowSceneDelegate accessorySceneProvider];

  return accessorySceneProvider;
}

- (FBSDisplayIdentity)displayIdentity
{
  _sbDisplayConfiguration = [(UIWindowScene *)self _sbDisplayConfiguration];
  identity = [_sbDisplayConfiguration identity];

  return identity;
}

- (int64_t)keyboardFocusCoalitionAffinity
{
  _sbDisplayConfiguration = [(UIWindowScene *)self _sbDisplayConfiguration];
  identity = [_sbDisplayConfiguration identity];
  isMainDisplay = [identity isMainDisplay];

  if (isMainDisplay)
  {
    return 0;
  }

  _sbDisplayConfiguration2 = [(UIWindowScene *)self _sbDisplayConfiguration];
  identity2 = [_sbDisplayConfiguration2 identity];
  isExternal = [identity2 isExternal];

  if (isExternal)
  {
    return 1;
  }

  _sbDisplayConfiguration3 = [(UIWindowScene *)self _sbDisplayConfiguration];
  identity3 = [_sbDisplayConfiguration3 identity];
  isContinuityDisplay = [identity3 isContinuityDisplay];

  if (isContinuityDisplay)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEmbeddedScene
{
  _sbDisplayConfiguration = [(UIWindowScene *)self _sbDisplayConfiguration];
  identity = [_sbDisplayConfiguration identity];
  isMainDisplay = [identity isMainDisplay];

  return isMainDisplay;
}

- (BOOL)isContinuityScene
{
  _sbDisplayConfiguration = [(UIWindowScene *)self _sbDisplayConfiguration];
  identity = [_sbDisplayConfiguration identity];
  isContinuityDisplay = [identity isContinuityDisplay];

  return isContinuityDisplay;
}

- (BOOL)isExternalDisplayScene
{
  _sbDisplayConfiguration = [(UIWindowScene *)self _sbDisplayConfiguration];
  identity = [_sbDisplayConfiguration identity];
  isExternal = [identity isExternal];

  return isExternal;
}

- (void)setInvalidating:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"SBWindowScene.m";
  v16 = 1024;
  v17 = 59;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)_abstractWindowSceneDelegate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBWindowScene.m" lineNumber:124 description:{@"Delegate is nil or not the right type %@", 0}];
}

@end
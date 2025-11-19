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
- (CGPoint)convertPoint:(CGPoint)a3 toNeighboringDisplayWindowScene:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toNeighboringDisplayWindowScene:(id)a4;
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
- (void)setInvalidating:(BOOL)a3;
@end

@implementation SBWindowScene

- (SBHomeScreenController)homeScreenController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 homeScreenController];

  return v3;
}

- (id)_abstractWindowSceneDelegate
{
  v4 = [(SBWindowScene *)self delegate];
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

  if (!v8)
  {
    [(SBWindowScene *)a2 _abstractWindowSceneDelegate];
  }

  return v8;
}

- (SBSwitcherController)switcherController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 switcherController];

  return v3;
}

- (SBSceneManager)sceneManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 sceneManager];

  return v3;
}

- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 layoutStateTransitionCoordinator];

  return v3;
}

- (BOOL)isMainDisplayWindowScene
{
  v2 = [(SBWindowScene *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 displayIdentity];
  v5 = [v4 isMainDisplay];

  return v5;
}

- (SBTransientOverlayPresenting)transientOverlayPresenter
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 transientOverlayPresenter];

  return v3;
}

- (BOOL)isExternalDisplayWindowScene
{
  v2 = [(SBWindowScene *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 displayIdentity];
  v5 = [v4 isExternal];

  return v5;
}

- (BOOL)supportsMultitasking
{
  v3 = +[SBPlatformController sharedInstance];
  v4 = [v3 isMedusaCapable];

  if (v4)
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
  v3 = [(SBWindowScene *)self session];
  v4 = [v3 role];
  v5 = [v4 isEqualToString:@"SBWindowSceneSessionRoleExternalDisplay"];

  v6 = [(SBWindowScene *)self _displayWindowingMode];
  v7 = [(SBWindowScene *)self isExternalDisplayWindowScene];
  if (v6 == 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v7 && v8;
}

- (FBSDisplayLayoutPublishing)displayLayoutPublisher
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 displayLayoutPublisher];

  return v3;
}

- (SBSceneLayoutStateProvider)layoutStateProvider
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 layoutStateProvider];

  return v3;
}

- (SBMainDisplayLayoutStateManager)layoutStateManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 layoutStateManager];

  return v3;
}

- (SBLockStateProviding)uiLockStateProvider
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 uiLockStateProvider];

  return v3;
}

- (int64_t)_displayWindowingMode
{
  v2 = SBApp;
  v3 = [(SBWindowScene *)self _FBSScene];
  v4 = [v3 settings];
  v5 = [v4 displayIdentity];
  v6 = [v2 windowingModeForDisplay:v5];

  return v6;
}

- (SBFloatingDockController)floatingDockController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 floatingDockController];

  return v3;
}

- (SBTraitsPipelineManager)traitsPipelineManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 traitsPipelineManager];

  return v3;
}

- (SBFAuthenticationStatusProvider)authenticationStatusProvider
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 authenticationStatusProvider];

  return v3;
}

- (SBFSecureDisplayStateProviding)secureDisplayStateProvider
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 secureDisplayStateProvider];

  return v3;
}

- (BOOL)isContinuityDisplayWindowScene
{
  v3 = [(SBWindowScene *)self session];
  v4 = [v3 role];
  v5 = [v4 isEqualToString:*MEMORY[0x277D68048]];

  v6 = [(SBWindowScene *)self _displayWindowingMode];
  v7 = [(SBWindowScene *)self isExternalDisplayWindowScene];
  if (v7)
  {
    if (v6 == 1)
    {
      LOBYTE(v7) = v5;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (SBAssistantSceneControlling)assistantController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 assistantController];

  return v3;
}

- (SBSystemGestureManager)systemGestureManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 systemGestureManager];

  return v3;
}

- (SBWindowScenePIPManager)pictureInPictureManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 pictureInPictureManager];

  return v3;
}

- (SBCommandTabController)commandTabController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 commandTabController];

  return v3;
}

- (SBRecordingIndicatorManager)recordingIndicatorManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 recordingIndicatorManager];

  return v3;
}

- (SBIconController)iconController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 iconController];

  return v3;
}

- (SBMedusaHostedKeyboardWindowController)medusaHostedKeyboardWindowController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 medusaHostedKeyboardWindowController];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(SBWindowScene *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [(SBWindowScene *)self _FBSScene];
  if (v3)
  {
    v4 = [MEMORY[0x277CF0C00] builderWithObject:v3];
    v5 = [v3 identifier];
    [v4 appendString:v5 withName:@"identifier" skipIfEmpty:1];
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
  v15 = self;
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
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 hardwareButtonBezelEffectsCoordinator];

  return v3;
}

- (SBHomeAffordanceInteractionManager)homeAffordanceInteractionManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 homeAffordanceInteractionManager];

  return v3;
}

- (SBSystemPointerInteractionManager)systemPointerInteractionManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 systemPointerInteractionManager];

  return v3;
}

- (SBModalLibraryController)modalLibraryController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 modalLibraryController];

  return v3;
}

- (SBLockScreenManager)lockScreenManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 lockScreenManager];

  return v3;
}

- (SBSystemApertureController)systemApertureController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 systemApertureController];

  return v3;
}

- (BNBannerController)bannerController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 bannerController];

  return v3;
}

- (SBAmbientPresentationController)ambientPresentationController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 ambientPresentationController];

  return v3;
}

- (SBFZStackResolver)zStackResolver
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 zStackResolver];

  return v3;
}

- (SBWindowHidingManager)windowHidingManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 windowHidingManager];

  return v3;
}

- (TRAArbiter)traitsArbiter
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 traitsArbiter];

  return v3;
}

- (SBControlCenterController)controlCenterController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 controlCenterController];

  return v3;
}

- (CSCoverSheetViewController)coverSheetViewController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 coverSheetViewController];

  return v3;
}

- (SBTransientUIInteractionManager)transientUIInteractionManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 transientUIInteractionManager];

  return v3;
}

- (void)setInvalidating:(BOOL)a3
{
  if (self->_isInvalidating && !a3)
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
    self->_isInvalidating = a3;
  }
}

- (CGPoint)convertPoint:(CGPoint)a3 toNeighboringDisplayWindowScene:(id)a4
{
  v5 = a4;
  v6 = [(UIWindowScene *)self _fbsDisplayConfiguration];
  v7 = [(SBWindowScene *)self screen];
  [v7 bounds];
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
  v16 = [v5 _fbsDisplayConfiguration];
  v17 = [v5 screen];

  [v17 bounds];
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

- (CGRect)convertRect:(CGRect)a3 toNeighboringDisplayWindowScene:(id)a4
{
  v5 = a4;
  v6 = [(UIWindowScene *)self _fbsDisplayConfiguration];
  v7 = [(SBWindowScene *)self screen];
  [v7 bounds];
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
  v16 = [v5 _fbsDisplayConfiguration];
  v17 = [v5 screen];

  [v17 bounds];
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
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 alertItemsController];

  return v3;
}

- (SBDisplayAppInteractionEventSource)appInteractionEventSource
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 appInteractionEventSource];

  return v3;
}

- (SBCoverSheetPresentationManager)coverSheetPresentationManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 coverSheetPresentationManager];

  return v3;
}

- (SBLockedPointerManager)lockedPointerManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 lockedPointerManager];

  return v3;
}

- (SBModalAlertPresentationCoordinator)modalAlertPresentationCoordinator
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 modalAlertPresentationCoordinator];

  return v3;
}

- (SBModalUIFluidDismissGestureManager)modalUIFluidDismissGestureManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 modalUIFluidDismissGestureManager];

  return v3;
}

- (SBReachabilitySceneOffsetProviding)reachabilitySceneOffsetProvider
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 reachabilitySceneOffsetProvider];

  return v3;
}

- (SBWallpaperController)wallpaperController
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 wallpaperController];

  return v3;
}

- (SBUICommandValidating)commandValidator
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 commandValidator];

  return v3;
}

- (SBMenuBarManager)menuBarManager
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 menuBarManager];

  return v3;
}

- (SBWindowSceneAccessorySceneProvider)accessorySceneProvider
{
  v2 = [(SBWindowScene *)self _abstractWindowSceneDelegate];
  v3 = [v2 accessorySceneProvider];

  return v3;
}

- (FBSDisplayIdentity)displayIdentity
{
  v2 = [(UIWindowScene *)self _sbDisplayConfiguration];
  v3 = [v2 identity];

  return v3;
}

- (int64_t)keyboardFocusCoalitionAffinity
{
  v3 = [(UIWindowScene *)self _sbDisplayConfiguration];
  v4 = [v3 identity];
  v5 = [v4 isMainDisplay];

  if (v5)
  {
    return 0;
  }

  v7 = [(UIWindowScene *)self _sbDisplayConfiguration];
  v8 = [v7 identity];
  v9 = [v8 isExternal];

  if (v9)
  {
    return 1;
  }

  v10 = [(UIWindowScene *)self _sbDisplayConfiguration];
  v11 = [v10 identity];
  v12 = [v11 isContinuityDisplay];

  if (v12)
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
  v2 = [(UIWindowScene *)self _sbDisplayConfiguration];
  v3 = [v2 identity];
  v4 = [v3 isMainDisplay];

  return v4;
}

- (BOOL)isContinuityScene
{
  v2 = [(UIWindowScene *)self _sbDisplayConfiguration];
  v3 = [v2 identity];
  v4 = [v3 isContinuityDisplay];

  return v4;
}

- (BOOL)isExternalDisplayScene
{
  v2 = [(UIWindowScene *)self _sbDisplayConfiguration];
  v3 = [v2 identity];
  v4 = [v3 isExternal];

  return v4;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowScene.m" lineNumber:124 description:{@"Delegate is nil or not the right type %@", 0}];
}

@end
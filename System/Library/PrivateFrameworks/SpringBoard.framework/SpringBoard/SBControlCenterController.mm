@interface SBControlCenterController
- (BOOL)_isLocationXWithinTrailingStatusBarRegion:(double)region regionPadding:(double)padding;
- (BOOL)_isStatusBarHiddenIgnoringControlCenter;
- (BOOL)_shouldAllowControlCenterGesture;
- (BOOL)_shouldShowGrabberOnFirstSwipe;
- (BOOL)_supportsReachability;
- (BOOL)allowGestureForContentBelow;
- (BOOL)allowShowTransitionSystemGesture;
- (BOOL)canBePresented;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)grabberTongue:(id)tongue shouldAllowSecondSwipeWithEdgeLocation:(double)location;
- (BOOL)grabberTongue:(id)tongue shouldReceiveTouch:(id)touch;
- (BOOL)handleIndirectStatusBarAction;
- (BOOL)handleMenuButtonTap;
- (BOOL)isDismissedOrDismissing;
- (BOOL)isPresented;
- (BOOL)isPresentedOrDismissing;
- (CCUIStatusBarStyleSnapshot)hostStatusBarStyle;
- (CGPoint)_locationOfTouchInActiveInterfaceOrientation:(id)orientation gestureRecognizer:(id)recognizer;
- (CGPoint)_presentGestureLocationInView;
- (CGPoint)_presentGestureTranslationInView:(BOOL)view;
- (CGPoint)_presentGestureVelocityInView;
- (NSArray)presentationRegions;
- (NSSet)components;
- (NSString)coverSheetIdentifier;
- (SBControlCenterController)initWithWindowScene:(id)scene controlCenterCoordinator:(id)coordinator;
- (SBControlCenterCoordinator)controlCenterCoordinator;
- (SBIdleTimerCoordinating)idleTimerCoordinator;
- (SBSensorActivityDataProvider)sensorActivityDataProvider;
- (SBWindowScene)_windowScene;
- (UICoordinateSpace)presentationCoordinateSpace;
- (double)_homeAffordanceAnimationDelay;
- (double)_reachabilityOffset;
- (double)_trailingStatusBarRegionWidth;
- (id)_newSystemApertureRestrictionAssertionForType:(unint64_t)type withReason:(id)reason;
- (id)_presentGestureRecognizers;
- (id)_touchesForGesture:(id)gesture;
- (id)customGestureRecognizerForGrabberTongue:(id)tongue;
- (id)hasExistingControlFromExtension:(id)extension;
- (id)hideAnimationSettingsForBarSwipeAffordanceView:(id)view;
- (id)reachabilitySpringAnimationBehaviorForControlCenterViewController:(id)controller;
- (id)unhideAnimationSettingsForBarSwipeAffordanceView:(id)view;
- (int64_t)participantState;
- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type;
- (unint64_t)presentingEdge;
- (void)_didDismiss;
- (void)_didEndTransition;
- (void)_didPresent;
- (void)_disableReachability;
- (void)_handleStatusBarPullDownGesture:(id)gesture;
- (void)_policyAggregatorCapabilitiesDidChange:(id)change;
- (void)_requireGestureRecognizerToFailForPresentGestureRecognizer:(id)recognizer;
- (void)_requirePresentGestureRecognizerToFailForGestureRecognizer:(id)recognizer;
- (void)_screenDidDim;
- (void)_setDisplayLayoutElementActive:(BOOL)active;
- (void)_setStatusBarHidden:(BOOL)hidden;
- (void)_setupGestureRecognizersForUpdatedWindowScene;
- (void)_setupPhysicalButtonPreferencesForUpdatedWindowScene;
- (void)_updateWindowContentHitTesting;
- (void)_updateWindowForScene:(id)scene;
- (void)_updateWindowLevelForScene:(id)scene;
- (void)_updateWindowOrientation;
- (void)_updateWindowVisibility;
- (void)_willBeginTransition;
- (void)_willDismiss;
- (void)_willPresent;
- (void)activityDidChangeForSensorActivityDataProvider:(id)provider;
- (void)controlCenterViewController:(id)controller didChangePresentationState:(unint64_t)state;
- (void)controlCenterViewController:(id)controller significantPresentationProgressChange:(double)change;
- (void)controlCenterViewController:(id)controller wantsHostStatusBarHidden:(BOOL)hidden;
- (void)controlCenterViewControllerWillContinuePresentationIntoPaging:(id)paging;
- (void)dealloc;
- (void)didCloseExpandedModuleForControlCenterViewController:(id)controller;
- (void)didRequestPowerDownTransientOverlayForControlCenterViewController:(id)controller;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)grabberTongueBeganPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueCanceledPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueEndedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueUpdatedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture;
- (void)grabberTongueWillPresent:(id)present;
- (void)handleDidEndReachabilityAnimation;
- (void)handleReachabilityModeActivated;
- (void)handleReachabilityModeDeactivated;
- (void)handleReachabilityYOffsetDidChange;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)view;
- (void)homeGrabberViewDidReceiveClick:(id)click;
- (void)invalidate;
- (void)invalidateSystemApertureAssertionForType:(unint64_t)type withReason:(id)reason;
- (void)launchControl:(id)control completion:(id)completion;
- (void)presentAnimated:(BOOL)animated completion:(id)completion;
- (void)restrictSystemApertureToType:(unint64_t)type withReason:(id)reason;
- (void)setSensorActivityDataProvider:(id)provider;
- (void)willOpenExpandedModuleForControlCenterViewController:(id)controller;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBControlCenterController

- (BOOL)isPresented
{
  presentationState = [(CCUIMainViewController *)self->_viewController presentationState];
  if (presentationState != 1)
  {
    LOBYTE(presentationState) = [(CCUIMainViewController *)self->_viewController presentationState]== 2;
  }

  return presentationState;
}

- (unint64_t)presentingEdge
{
  v3 = objc_opt_class();
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v5 = SBSafeCast(v3, edgePullGestureRecognizer);

  if (v5)
  {
    edges = [v5 edges];
  }

  else if (SBFEffectiveHomeButtonType() == 2)
  {
    edges = 1;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      edges = 1;
    }

    else
    {
      edges = 4;
    }
  }

  return edges;
}

- (BOOL)_shouldShowGrabberOnFirstSwipe
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  transientOverlayPresenter = [WeakRetained transientOverlayPresenter];
  hasActivePresentation = [transientOverlayPresenter hasActivePresentation];

  if (hasActivePresentation & 1) != 0 || ([WeakRetained lockScreenManager], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isUILocked"), v6, (v7))
  {
    v8 = 0;
  }

  else
  {
    switcherController = [WeakRetained switcherController];
    if ([switcherController unlockedEnvironmentMode] == 2)
    {
      v8 = 0;
    }

    else
    {
      layoutStateSideElement = [switcherController layoutStateSideElement];
      workspaceEntity = [layoutStateSideElement workspaceEntity];
      applicationSceneEntity = [workspaceEntity applicationSceneEntity];
      sceneHandle = [applicationSceneEntity sceneHandle];

      if (sceneHandle)
      {
        v8 = 0;
      }

      else
      {
        layoutStatePrimaryElement = [switcherController layoutStatePrimaryElement];
        workspaceEntity2 = [layoutStatePrimaryElement workspaceEntity];
        applicationSceneEntity2 = [workspaceEntity2 applicationSceneEntity];
        sceneHandle2 = [applicationSceneEntity2 sceneHandle];

        presentingEdge = [(SBControlCenterController *)self presentingEdge];
        if ([sceneHandle2 isDeviceApplicationSceneHandle])
        {
          screenEdgesDeferringSystemGestures = [sceneHandle2 screenEdgesDeferringSystemGestures];
        }

        else
        {
          screenEdgesDeferringSystemGestures = 0;
        }

        v8 = (screenEdgesDeferringSystemGestures & presentingEdge) != 0;
      }
    }
  }

  return v8;
}

- (double)_trailingStatusBarRegionWidth
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;

  activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    switcherController = [WeakRetained switcherController];

    [switcherController effectiveTrailingStatusBarPartFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v20 = v12;
    v21 = v14;
    v22 = v16;
    v23 = v18;
    if (userInterfaceLayoutDirection == 1)
    {
      MaxX = CGRectGetMaxX(*&v20);
    }

    else
    {
      MaxX = v5 - CGRectGetMinX(*&v20);
    }

    SBLayoutDefaultSideLayoutElementWidth();
    v27 = v26 * 0.5;
    if (MaxX < v27)
    {
      MaxX = v27;
    }
  }

  else
  {
    v25 = 0.172;
    if ((activeInterfaceOrientation - 1) < 2)
    {
      v25 = 0.25;
    }

    return v5 * v25;
  }

  return MaxX;
}

- (double)_reachabilityOffset
{
  v2 = +[SBReachabilityManager sharedInstance];
  [v2 effectiveReachabilityYOffset];
  v4 = v3;

  return v4;
}

- (int64_t)participantState
{
  if ([(SBControlCenterController *)self isVisible])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isPresentedOrDismissing
{
  presentationState = [(CCUIMainViewController *)self->_viewController presentationState];
  result = [(SBControlCenterController *)self isPresented];
  if (presentationState == 3)
  {
    return 1;
  }

  return result;
}

- (SBControlCenterController)initWithWindowScene:(id)scene controlCenterCoordinator:(id)coordinator
{
  v58[1] = *MEMORY[0x277D85DE8];
  obj = scene;
  coordinatorCopy = coordinator;
  v57.receiver = self;
  v57.super_class = SBControlCenterController;
  v7 = [(SBControlCenterController *)&v57 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

  objc_storeWeak(&v7->_windowScene, obj);
  objc_storeWeak(&v8->_controlCenterCoordinator, coordinatorCopy);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v8 selector:sel__screenDidDim name:*MEMORY[0x277D67A18] object:0];
  [defaultCenter addObserver:v8 selector:sel__uiRelockedNotification_ name:@"SBLockScreenUIRelockedNotification" object:0];
  [defaultCenter addObserver:v8 selector:sel__policyAggregatorCapabilitiesDidChange_ name:@"SBPolicyAggregatorCapabilitiesChangedNotification" object:0];
  v10 = +[SBSceneManagerCoordinator sharedInstance];
  sceneDeactivationManager = [v10 sceneDeactivationManager];
  v12 = [sceneDeactivationManager newAssertionWithReason:2];
  resignActiveAssertion = v8->_resignActiveAssertion;
  v8->_resignActiveAssertion = v12;

  v14 = objc_alloc_init(SBControlCenterSystemAgent);
  systemAgent = v8->_systemAgent;
  v8->_systemAgent = v14;

  v16 = objc_alloc_init(SBWindowLevelAssertionManager);
  windowLevelAssertionManager = v8->_windowLevelAssertionManager;
  v8->_windowLevelAssertionManager = v16;

  [(SBWindowLevelAssertionManager *)v8->_windowLevelAssertionManager setDelegate:v8];
  v18 = +[SBMainWorkspace sharedInstance];
  keyboardFocusController = [v18 keyboardFocusController];
  keyboardFocusController = v8->_keyboardFocusController;
  v8->_keyboardFocusController = keyboardFocusController;

  v21 = obj;
  if ([v21 isMainDisplayWindowScene])
  {
    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
LABEL_6:
    v23 = configurationForDefaultMainDisplayMonitor;
    goto LABEL_7;
  }

  if ([v21 isContinuityDisplayWindowScene])
  {
    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForContinuityDisplay];
    goto LABEL_6;
  }

  if (![v21 isExtendedDisplayWindowScene])
  {
    goto LABEL_17;
  }

  v47 = MEMORY[0x277D0AD20];
  _fbsDisplayIdentity = [v21 _fbsDisplayIdentity];
  v23 = [v47 configurationForExternalDisplay:_fbsDisplayIdentity];

LABEL_7:
  if (!v23)
  {
LABEL_17:
    [SBControlCenterController initWithWindowScene:controlCenterCoordinator:];
    v23 = 0;
  }

  viewControllerFactory = [coordinatorCopy viewControllerFactory];
  v24 = v8->_systemAgent;
  sensorActivityDataProvider = [coordinatorCopy sensorActivityDataProvider];
  v26 = [viewControllerFactory mainViewControllerWithSystemAgent:v24 sensorActivityDataProvider:sensorActivityDataProvider displayLayoutMonitorConfiguration:v23];

  objc_storeStrong(&v8->_viewController, v26);
  [(CCUIMainViewController *)v8->_viewController setDelegate:v8];
  objc_initWeak(&location, v8);
  viewController = v8->_viewController;
  v28 = objc_opt_self();
  v58[0] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __74__SBControlCenterController_initWithWindowScene_controlCenterCoordinator___block_invoke;
  v54[3] = &unk_2783B5968;
  objc_copyWeak(&v55, &location);
  v30 = [(CCUIMainViewController *)viewController registerForTraitChanges:v29 withHandler:v54];

  isMainDisplayWindowScene = [v21 isMainDisplayWindowScene];
  if ((SBHomeGestureEnabled() & isMainDisplayWindowScene) == 1)
  {
    v32 = [[SBBarSwipeAffordanceViewController alloc] initWithZStackParticipantIdentifier:19 windowScene:v21];
    homeAffordanceViewController = v8->_homeAffordanceViewController;
    v8->_homeAffordanceViewController = v32;

    [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController setPointerClickDelegate:v8];
    [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController setDelegate:v8];
    __74__SBControlCenterController_initWithWindowScene_controlCenterCoordinator___block_invoke_2([(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController setAllowsTouchesToPassThrough:1], v8->_viewController, v8->_homeAffordanceViewController);
    view = [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController view];
    [view setDelegate:v8];

    view2 = [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController view];
    [view2 addObserver:v8];

    view3 = [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController view];
    [view3 setColorBias:2];

    [(CCUIMainViewController *)v8->_viewController setHostStatusBarStyleProvider:v8];
    [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController setSuppressAffordance:[(CCUIMainViewController *)v8->_viewController isHomeGestureDismissalAllowed]^ 1];
  }

  else
  {
    v37 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    homeButtonWrapperViewController = v8->_homeButtonWrapperViewController;
    v8->_homeButtonWrapperViewController = v37;

    __74__SBControlCenterController_initWithWindowScene_controlCenterCoordinator___block_invoke_2(v39, v8->_viewController, v8->_homeButtonWrapperViewController);
  }

  if (isMainDisplayWindowScene)
  {
    v40 = MEMORY[0x277D43280];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __74__SBControlCenterController_initWithWindowScene_controlCenterCoordinator___block_invoke_3;
    v51[3] = &unk_2783A92D8;
    v41 = v8;
    v52 = v41;
    v53 = v21;
    v42 = [v40 recipeWithTitle:@"Present Module" prepareBlock:0 action:v51 cleanupBlock:0];
    presentModuleTestRecipe = v41->_presentModuleTestRecipe;
    v41->_presentModuleTestRecipe = v42;

    [MEMORY[0x277D661A0] registerTestRecipe:v41->_presentModuleTestRecipe];
    v44 = [MEMORY[0x277D43280] recipeWithTitle:@"Appearance Style" prepareBlock:0 action:&__block_literal_global_57_0 cleanupBlock:0];
    userInterfaceStyleTestRecipe = v41->_userInterfaceStyleTestRecipe;
    v41 = (v41 + 224);
    v41->super.isa = v44;

    [MEMORY[0x277D661A0] registerTestRecipe:v41->super.isa];
  }

  [(SBControlCenterController *)v8 _updateWindowForScene:v21];
  [coordinatorCopy registerControlCenterController:v8 forWindowScene:v21];
  objc_destroyWeak(&v55);
  objc_destroyWeak(&location);

LABEL_14:
  return v8;
}

void __74__SBControlCenterController_initWithWindowScene_controlCenterCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 traitCollection];
  v4 = [v3 _backlightLuminance];

  if (v4 != 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained dismissAnimated:1];
  }
}

void __74__SBControlCenterController_initWithWindowScene_controlCenterCoordinator___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v4 addChildViewController:v5];
  v7 = [v4 view];
  v6 = [v5 view];
  [v6 setAutoresizingMask:18];
  [v7 bounds];
  [v6 setFrame:?];
  [v7 addSubview:v6];
  [v5 didMoveToParentViewController:v4];
}

void __74__SBControlCenterController_initWithWindowScene_controlCenterCoordinator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) dismissAnimated:1];
  v2 = [SBControlCenterModuleTransientOverlayViewController alloc];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CFC858] defaultOptions];
  v6 = [(SBControlCenterModuleTransientOverlayViewController *)v2 initWithWindowScene:v3 moduleIdentifier:@"com.apple.mediaremote.controlcenter.audio" presentationOptions:v4];

  v5 = +[SBWorkspace mainWorkspace];
  [v5 presentTransientOverlayViewController:v6 animated:1 completion:0];
}

void __74__SBControlCenterController_initWithWindowScene_controlCenterCoordinator___block_invoke_4()
{
  v0 = [MEMORY[0x277D75CF0] sharedInstance];
  [v0 toggleCurrentStyle];
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBControlCenterController.m" lineNumber:287 description:@"Don't dealloc SBControlCenterController without invalidation!"];
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  systemGestureManager = [WeakRetained systemGestureManager];
  [systemGestureManager removeGestureRecognizer:self->_statusBarPullGestureRecognizer];
  [systemGestureManager removeGestureRecognizer:self->_indirectStatusBarPullGestureRecognizer];
  coverSheetViewController = [WeakRetained coverSheetViewController];
  [coverSheetViewController unregisterExternalBehaviorProvider:self];
  [coverSheetViewController unregisterExternalPresentationProvider:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UIApplicationSceneDeactivationAssertion *)self->_resignActiveAssertion relinquish];
  if ([(SBControlCenterController *)self isPresented])
  {
    [(SBControlCenterController *)self _willDismiss];
    [(SBControlCenterController *)self _didDismiss];
  }

  else
  {
    [(BSInvalidatable *)self->_keyboardFocusLockAssertion invalidate];
    [(SBControlCenterController *)self invalidateSystemApertureAssertionForType:0 withReason:@"Control Center Dismissed"];
    [(SBControlCenterController *)self invalidateSystemApertureAssertionForType:1 withReason:@"Control Center Dismissed"];
    [(BSInvalidatable *)self->_deferOrientationUpdatesAssertion invalidate];
    [(BSSimpleAssertion *)self->_asynchronousRenderingAssertion invalidate];
    [(UIApplicationSceneDeactivationAssertion *)self->_resignActiveAssertion relinquish];
  }

  [(BSInvalidatable *)self->_bannerSuppressionAssertion invalidate];
  [(BSInvalidatable *)self->_displayLayoutAssertion invalidate];
  [(SBGrabberTongue *)self->_grabberTongue invalidate];
  [(BSSimpleAssertion *)self->_hideStatusBarAssertion invalidate];
  [(BSInvalidatable *)self->_idleTimerDisableAssertion invalidate];
  [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion invalidate];
  [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
  self->_invalidated = 1;
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  [preferencesCopy setSuppressSystemApertureForSystemChromeSuppression:0];
  [preferencesCopy setActivationPolicyForParticipantsBelow:1];
  physicalButtonSceneTargets = [(SBControlCenterController *)self physicalButtonSceneTargets];
  [preferencesCopy setPhysicalButtonSceneTargets:physicalButtonSceneTargets];

  [preferencesCopy setAllowsKeyboardArbiterToDetermineFocusTarget:2];
}

- (BOOL)isDismissedOrDismissing
{
  viewController = [(SBControlCenterController *)self viewController];
  if ([viewController presentationState])
  {
    viewController2 = [(SBControlCenterController *)self viewController];
    v5 = [viewController2 presentationState] == 3;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)allowGestureForContentBelow
{
  viewController = [(SBControlCenterController *)self viewController];
  if ([viewController presentationState])
  {
    viewController2 = [(SBControlCenterController *)self viewController];
    if ([viewController2 presentationState] == 3)
    {
      viewController3 = [(SBControlCenterController *)self viewController];
      v6 = [viewController3 transitionState] != 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)handleMenuButtonTap
{
  if ([(SBControlCenterController *)self isPresented]|| [(SBGrabberTongue *)self->_grabberTongue isVisible])
  {
    viewController = [(SBControlCenterController *)self viewController];
    canDismissPresentedContent = [viewController canDismissPresentedContent];

    if (canDismissPresentedContent)
    {
      viewController2 = [(SBControlCenterController *)self viewController];
      [viewController2 dismissPresentedContent];

      return 1;
    }

    else
    {
      v6 = 1;
      [(SBControlCenterController *)self dismissAnimated:1];
    }
  }

  else
  {
    if ([(SBControlCenterController *)self isPresentedOrDismissing])
    {
      [(SBControlCenterController *)self dismissAnimated:1];
    }

    return 0;
  }

  return v6;
}

- (BOOL)handleIndirectStatusBarAction
{
  _shouldAllowControlCenterGesture = [(SBControlCenterController *)self _shouldAllowControlCenterGesture];
  if (_shouldAllowControlCenterGesture)
  {
    [(SBControlCenterController *)self presentAnimated:1 completion:0];
  }

  return _shouldAllowControlCenterGesture;
}

- (void)presentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(SBControlCenterController *)self _disableReachability];
  viewController = [(SBControlCenterController *)self viewController];
  [viewController presentAnimated:animatedCopy withCompletionHandler:completionCopy];
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(SBControlCenterController *)self isPresentedOrDismissing])
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__SBControlCenterController_dismissAnimated_completion___block_invoke;
    v13[3] = &unk_2783B2050;
    v15 = v16;
    v14 = completionCopy;
    v7 = MEMORY[0x223D6F7F0](v13);
    [(CCUIMainViewController *)self->_viewController dismissAnimated:animatedCopy withCompletionHandler:v7];
    [MEMORY[0x277CF0D38] globalSlowDownFactor];
    v9 = dispatch_time(0, (v8 * 450000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SBControlCenterController_dismissAnimated_completion___block_invoke_2;
    block[3] = &unk_2783A9348;
    v12 = v7;
    v10 = v7;
    dispatch_after(v9, MEMORY[0x277D85CD0], block);

    _Block_object_dispose(v16, 8);
  }

  else
  {
    if ([(SBGrabberTongue *)self->_grabberTongue isVisible])
    {
      [(SBGrabberTongue *)self->_grabberTongue dismissWithStyle:0 animated:animatedCopy];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __56__SBControlCenterController_dismissAnimated_completion___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)setSensorActivityDataProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_sensorActivityDataProvider, providerCopy);
  [providerCopy addObserver:self];
  [(SBControlCenterController *)self activityDidChangeForSensorActivityDataProvider:providerCopy];
}

- (void)_requirePresentGestureRecognizerToFailForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [recognizerCopy requireGestureRecognizerToFail:edgePullGestureRecognizer];

  if (self->_statusBarPullGestureRecognizer)
  {
    [recognizerCopy requireGestureRecognizerToFail:?];
  }
}

- (void)_requireGestureRecognizerToFailForPresentGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [edgePullGestureRecognizer requireGestureRecognizerToFail:recognizerCopy];

  statusBarPullGestureRecognizer = self->_statusBarPullGestureRecognizer;
  if (statusBarPullGestureRecognizer)
  {
    [(UIPanGestureRecognizer *)statusBarPullGestureRecognizer requireGestureRecognizerToFail:recognizerCopy];
  }
}

- (id)_presentGestureRecognizers
{
  array = [MEMORY[0x277CBEB18] array];
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];

  if (edgePullGestureRecognizer)
  {
    edgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
    [array addObject:edgePullGestureRecognizer2];
  }

  if (self->_statusBarPullGestureRecognizer)
  {
    [array addObject:?];
  }

  v6 = [array copy];

  return v6;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v35 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  multiDisplayUserInteractionCoordinator = [SBApp multiDisplayUserInteractionCoordinator];
  activeTouchDownOriginatedWindowScene = [multiDisplayUserInteractionCoordinator activeTouchDownOriginatedWindowScene];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (activeTouchDownOriginatedWindowScene)
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      v8 = [WeakRetained isEqual:activeTouchDownOriginatedWindowScene];

      if ((v8 & 1) == 0)
      {
        edgePullGestureRecognizer = SBLogSystemGestureControlCenter();
        if (os_log_type_enabled(edgePullGestureRecognizer, OS_LOG_TYPE_DEFAULT))
        {
          name = [(SBIndirectPanGestureRecognizer *)beginCopy name];
          *buf = 138412290;
          v34 = name;
          _os_log_impl(&dword_21ED4E000, edgePullGestureRecognizer, OS_LOG_TYPE_DEFAULT, "Not allowing %@ to begin because it was started from another display", buf, 0xCu);
        }

        _shouldAllowControlCenterGesture = 0;
        v9 = @"NotForCurrentDisplay";
        goto LABEL_36;
      }
    }
  }

  if (self->_statusBarPullGestureRecognizer == beginCopy || self->_indirectStatusBarPullGestureRecognizer == beginCopy)
  {
    _shouldAllowControlCenterGesture = [(SBControlCenterController *)self _shouldAllowControlCenterGesture];
    if (_shouldAllowControlCenterGesture)
    {
      v9 = 0;
    }

    else
    {
      v13 = SBLogSystemGestureControlCenter();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Not allowing the status bar pull down gesture to begin because the Control Center gesture isn't allowed at all.", buf, 2u);
      }

      v9 = @"ControlCenterNotAllowed";
    }

    if ([(SBControlCenterController *)self _shouldShowGrabberOnFirstSwipe]&& self->_indirectStatusBarPullGestureRecognizer != beginCopy)
    {
      v14 = SBLogSystemGestureControlCenter();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Not allowing the status bar pull down gesture to begin because we require a grabber on first swipe.", buf, 2u);
      }

      _shouldAllowControlCenterGesture = 0;
      v9 = @"StatusBarGestureNotAllowedBecauseGrabberRequired";
    }

    edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
    if ([edgePullGestureRecognizer state]== 1 || [edgePullGestureRecognizer state]== 2 || [edgePullGestureRecognizer state]== 3)
    {
      v15 = SBLogSystemGestureControlCenter();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Not allowing the status bar pull down gesture to begin because the screen edge gesture's state is active.", buf, 2u);
      }

      _shouldAllowControlCenterGesture = 0;
      v9 = @"StatusBarGestureNotAllowedBecauseEdgeGestureIsActive";
    }

    statusBarPullGestureRecognizer = self->_statusBarPullGestureRecognizer;
    if (statusBarPullGestureRecognizer == beginCopy)
    {
      viewController = [(SBControlCenterController *)self viewController];
      view = [viewController view];
      [(UIPanGestureRecognizer *)statusBarPullGestureRecognizer velocityInView:view];
      v20 = v19;
      v22 = v21;

      if (v22 < 0.0 || fabs(v20) > fabs(v22))
      {
        v23 = SBLogSystemGestureControlCenter();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "Preventing the status bar pull down gesture because we're moving up or horizontally.", buf, 2u);
        }

        _shouldAllowControlCenterGesture = 0;
        v9 = @"StatusBarGestureNotAllowedBecauseMovingUpOrHorizontally";
      }
    }

    if (self->_indirectStatusBarPullGestureRecognizer == beginCopy)
    {
      v24 = [(SBControlCenterController *)self viewForSystemGestureRecognizer:beginCopy];
      [(SBIndirectPanGestureRecognizer *)beginCopy locationInView:v24];
      v25 = [(SBControlCenterController *)self _isLocationXWithinExtendedTrailingStatusBarRegion:?];
      if (!v25)
      {
        v9 = @"StatusBarGestureNotAllowedBecausePointerIsNotInTheTrailingStatusBarRegion";
      }

      _shouldAllowControlCenterGesture &= v25;
    }

LABEL_36:

    goto LABEL_37;
  }

  v9 = 0;
  _shouldAllowControlCenterGesture = 1;
LABEL_37:
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __58__SBControlCenterController_gestureRecognizerShouldBegin___block_invoke;
  v29[3] = &unk_2783B77A8;
  v32 = _shouldAllowControlCenterGesture;
  v30 = beginCopy;
  v31 = v9;
  v27 = beginCopy;
  [mEMORY[0x277D6A798] logBlock:v29];

  return _shouldAllowControlCenterGesture;
}

id __58__SBControlCenterController_gestureRecognizerShouldBegin___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBControlCenterController gestureRecognizerShouldBegin:]";
  v11[0] = @"shouldBegin";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v12[0] = v2;
  v11[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v12[1] = v3;
  v11[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_283094718;
  }

  v11[3] = @"failureReason";
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v12[2] = v7;
  v12[3] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->_statusBarPullGestureRecognizer == recognizerCopy)
  {
    [(SBControlCenterController *)self _locationOfTouchInActiveInterfaceOrientation:touchCopy gestureRecognizer:recognizerCopy];
    v11 = v10;
    v13 = v12;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v16 = v15;

    [*MEMORY[0x277D76620] statusBarHeightForOrientation:{objc_msgSend(SBApp, "activeInterfaceOrientation")}];
    v18 = v17;
    [(SBControlCenterController *)self _reachabilityOffset];
    v20 = v18 + v19;
    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    v38.size.width = v16;
    v38.size.height = v20;
    v37.x = v11;
    v37.y = v13;
    v21 = CGRectContainsPoint(v38, v37);
    v22 = [(SBControlCenterController *)self _isLocationXWithinTrailingStatusBarRegion:v11];
    v8 = v21 && v22;
    mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __66__SBControlCenterController_gestureRecognizer_shouldReceiveTouch___block_invoke;
    v25[3] = &unk_2783B77D0;
    v34 = v21 && v22;
    v28 = v11;
    v29 = v13;
    v30 = 0;
    v31 = 0;
    v32 = v16;
    v33 = v20;
    v26 = recognizerCopy;
    selfCopy = self;
    v35 = v21;
    v36 = v22;
    [mEMORY[0x277D6A798] logBlock:v25];
  }

  else if (self->_outsideContentInteractionTapGestureRecognizer == recognizerCopy || self->_outsideContentInteractionPanGestureRecognizer == recognizerCopy)
  {
    if ([(SBControlCenterController *)self isPresentedOrDismissing])
    {
      view = [(CCUIMainViewController *)self->_viewController view];
      _UISystemGestureLocationForTouchInView();
      v8 = [(CCUIMainViewController *)self->_viewController shouldRecognizeOutsideContentInteractionAtLocation:?];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id __66__SBControlCenterController_gestureRecognizer_shouldReceiveTouch___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v28 = @"[SBControlCenterController gestureRecognizer:shouldReceiveTouch:]";
  v26[0] = @"shouldReceiveTouch";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 96)];
  v27[0] = v21;
  v26[1] = @"address";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v27[1] = v20;
  v26[2] = @"name";
  v2 = [*(a1 + 32) name];
  v19 = v2;
  v3 = &stru_283094718;
  if (v2)
  {
    v3 = v2;
  }

  v27[2] = v3;
  v26[3] = @"location";
  v24[0] = @"x";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v24[1] = @"y";
  v25[0] = v18;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v25[1] = v17;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[3] = v16;
  v26[4] = @"statusBarBounds";
  v22[0] = @"x";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v23[0] = v4;
  v22[1] = @"y";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v23[1] = v5;
  v22[2] = @"width";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  v23[2] = v6;
  v22[3] = @"height";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 88)];
  v23[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v27[4] = v8;
  v26[5] = @"reachabilityOffset";
  v9 = MEMORY[0x277CCABB0];
  [*(a1 + 40) _reachabilityOffset];
  v10 = [v9 numberWithDouble:?];
  v27[5] = v10;
  v26[6] = @"insideStatusBarBounds";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 97)];
  v27[6] = v11;
  v26[7] = @"inCorrectStatusBarRegion";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 98)];
  v27[7] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:8];
  v29[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

  return v14;
}

- (void)handleReachabilityModeActivated
{
  viewController = [(SBControlCenterController *)self viewController];
  [viewController setReachabilityActive:1];

  statusBarPullGestureRecognizer = self->_statusBarPullGestureRecognizer;
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [(UIPanGestureRecognizer *)statusBarPullGestureRecognizer requireGestureRecognizerToFail:edgePullGestureRecognizer];
}

- (void)handleReachabilityModeDeactivated
{
  viewController = [(SBControlCenterController *)self viewController];
  [viewController setReachabilityActive:0];

  statusBarPullGestureRecognizer = self->_statusBarPullGestureRecognizer;
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [(UIPanGestureRecognizer *)statusBarPullGestureRecognizer removeFailureRequirement:edgePullGestureRecognizer];
}

- (void)handleReachabilityYOffsetDidChange
{
  viewController = [(SBControlCenterController *)self viewController];
  view = [viewController view];
  [view setNeedsLayout];

  viewController2 = [(SBControlCenterController *)self viewController];
  view2 = [viewController2 view];
  [view2 layoutIfNeeded];
}

- (void)handleDidEndReachabilityAnimation
{
  viewController = [(SBControlCenterController *)self viewController];
  [viewController reachabilityAnimationDidEnd];
}

- (void)_disableReachability
{
  v2 = +[SBReachabilityManager sharedInstance];
  [v2 deactivateReachability];
}

- (BOOL)_supportsReachability
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  isMainDisplayWindowScene = [WeakRetained isMainDisplayWindowScene];

  return isMainDisplayWindowScene;
}

- (void)_handleStatusBarPullDownGesture:(id)gesture
{
  gestureCopy = gesture;
  viewController = [(SBControlCenterController *)self viewController];
  view = [viewController view];
  [(SBIndirectPanGestureRecognizer *)gestureCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  viewController2 = [(SBControlCenterController *)self viewController];
  view2 = [viewController2 view];
  [(SBIndirectPanGestureRecognizer *)gestureCopy translationInView:view2];
  v14 = v13;
  v16 = v15;

  viewController3 = [(SBControlCenterController *)self viewController];
  view3 = [viewController3 view];
  [(SBIndirectPanGestureRecognizer *)gestureCopy velocityInView:view3];
  v20 = v19;
  v22 = v21;

  if ([(SBControlCenterController *)self isDismissedOrDismissing])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = gestureCopy;
      viewController4 = [(SBControlCenterController *)self viewController];
      view4 = [viewController4 view];
      [(SBIndirectPanGestureRecognizer *)v23 setTranslation:view4 inView:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    }

    [(SBControlCenterController *)self _reachabilityOffset];
    if (v10 >= v26)
    {
      if (self->_statusBarPullGestureRecognizer == gestureCopy)
      {
        viewController5 = [(SBControlCenterController *)self viewController];
        v30 = [(SBControlCenterController *)self _touchesForGesture:gestureCopy];
        [viewController5 beginPresentationWithLocation:v30 translation:v8 velocity:v10 touches:{v14, v16, v20, v22}];
      }

      else if (self->_indirectStatusBarPullGestureRecognizer == gestureCopy && !self->_indirectStatusBarPullGestureCalledBegin && v16 != 0.0)
      {
        viewController6 = [(SBControlCenterController *)self viewController];
        v28 = [(SBControlCenterController *)self _touchesForGesture:gestureCopy];
        [viewController6 beginPresentationWithLocation:v28 translation:v8 velocity:v10 touches:{v14, v16, v20, v22}];

        self->_indirectStatusBarPullGestureCalledBegin = 1;
      }
    }
  }

  if ([(SBIndirectPanGestureRecognizer *)gestureCopy state]== 1)
  {
    [(SBControlCenterController *)self restrictSystemApertureToType:1 withReason:@"Control Center Presentation Began"];
  }

  else if ([(SBIndirectPanGestureRecognizer *)gestureCopy state]== 3 || [(SBIndirectPanGestureRecognizer *)gestureCopy state]== 4 || [(SBIndirectPanGestureRecognizer *)gestureCopy state]== 5)
  {
    if ([(SBControlCenterController *)self isPresented])
    {
      [(SBControlCenterController *)self restrictSystemApertureToType:0 withReason:@"Control Center Presented"];
    }

    [(SBControlCenterController *)self invalidateSystemApertureAssertionForType:1 withReason:@"Control Center Presentation Ended"];
  }

  viewController7 = [(SBControlCenterController *)self viewController];
  presentationState = [viewController7 presentationState];

  if (presentationState)
  {
    state = [(SBIndirectPanGestureRecognizer *)gestureCopy state];
    if (state <= 2)
    {
      if (state == 1)
      {
        v39 = SBLogTelemetrySignposts();
        if (os_signpost_enabled(v39))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_21ED4E000, v39, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_CONTROL_CENTER_GESTURE", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
        }

        kdebug_trace();
        self->_presentationGestureContinuedIntoPaging = 0;
      }

      else if (state == 2 && (self->_statusBarPullGestureRecognizer == gestureCopy || self->_indirectStatusBarPullGestureRecognizer == gestureCopy && self->_indirectStatusBarPullGestureCalledBegin))
      {
        viewController8 = [(SBControlCenterController *)self viewController];
        [viewController8 updatePresentationWithLocation:v8 translation:v10 velocity:{v14, v16, v20, v22}];
      }
    }

    else
    {
      switch(state)
      {
        case 3:
LABEL_25:
          *&self->_indirectStatusBarPullGestureCalledBegin = 0;
          v34 = v16 + fabs(v22 * 0.03);
          if (self->_indirectStatusBarPullGestureRecognizer == gestureCopy)
          {
            v16 = v34;
          }

          viewController9 = [(SBControlCenterController *)self viewController];
          [viewController9 endPresentationWithLocation:v8 translation:v10 velocity:{v14, v16, v20, v22}];

          if ([(SBControlCenterController *)self isPresented])
          {
            [(SBControlCenterController *)self _disableReachability];
          }

          v36 = SBLogTelemetrySignposts();
          if (os_signpost_enabled(v36))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_21ED4E000, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_CONTROL_CENTER_GESTURE", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
          }

          kdebug_trace();
          mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __61__SBControlCenterController__handleStatusBarPullDownGesture___block_invoke;
          v42[3] = &unk_2783B77F8;
          *&v42[5] = v8;
          *&v42[6] = v10;
          *&v42[7] = v14;
          *&v42[8] = v16;
          *&v42[9] = v20;
          *&v42[10] = v22;
          v42[4] = self;
          [mEMORY[0x277D6A798] logBlock:v42];

          break;
        case 5:
          *&self->_indirectStatusBarPullGestureCalledBegin = 0;
          break;
        case 4:
          if (self->_presentationGestureContinuedIntoPaging)
          {
            goto LABEL_25;
          }

          self->_indirectStatusBarPullGestureCalledBegin = 0;
          viewController10 = [(SBControlCenterController *)self viewController];
          [viewController10 cancelPresentationWithLocation:v8 translation:v10 velocity:{v14, v16, v20, v22}];

          if ([(SBControlCenterController *)self isPresented])
          {
            [(SBControlCenterController *)self _disableReachability];
          }

          v41 = SBLogTelemetrySignposts();
          if (os_signpost_enabled(v41))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_21ED4E000, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_CONTROL_CENTER_GESTURE", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
          }

          kdebug_trace();
          break;
      }
    }
  }
}

id __61__SBControlCenterController__handleStatusBarPullDownGesture___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v23 = @"[SBControlCenterController _handleStatusBarPullDownGesture:]";
  v21[0] = @"location";
  v19[0] = @"x";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v19[1] = @"y";
  v20[0] = v14;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v20[1] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v12;
  v21[1] = @"translation";
  v17[0] = @"x";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v17[1] = @"y";
  v18[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v22[1] = v4;
  v21[2] = @"velocity";
  v15[0] = @"x";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v15[1] = @"y";
  v16[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  v16[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v22[2] = v7;
  v21[3] = @"presented";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isPresented")}];
  v22[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  return v10;
}

- (void)_setDisplayLayoutElementActive:(BOOL)active
{
  displayLayoutAssertion = self->_displayLayoutAssertion;
  if (active)
  {
    if (displayLayoutAssertion)
    {
      return;
    }

    v5 = objc_alloc(MEMORY[0x277D66A50]);
    v11 = [v5 initWithIdentifier:*MEMORY[0x277D0AB88]];
    [(SBControlCenterWindow *)self->_window level];
    [v11 setLevel:v6];
    [v11 setFillsDisplayBounds:1];
    [v11 setLayoutRole:4];
    mEMORY[0x277D0AAA0] = [MEMORY[0x277D0AAA0] sharedInstance];
    v8 = [mEMORY[0x277D0AAA0] addElement:v11];
    v9 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = v8;

    v10 = v11;
  }

  else
  {
    if (!displayLayoutAssertion)
    {
      return;
    }

    [(BSInvalidatable *)displayLayoutAssertion invalidate];
    v10 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = 0;
  }
}

- (BOOL)grabberTongue:(id)tongue shouldAllowSecondSwipeWithEdgeLocation:(double)location
{
  tongueCopy = tongue;
  if ([(SBControlCenterController *)self presentingEdge]== 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = [tongueCopy isEdgeLocationInGrabberRegion:location];
  }

  return v7;
}

- (BOOL)grabberTongue:(id)tongue shouldReceiveTouch:(id)touch
{
  tongueCopy = tongue;
  touchCopy = touch;
  if ([(SBControlCenterController *)self presentingEdge]== 1 && (![(SBControlCenterController *)self _shouldShowGrabberOnFirstSwipe]|| [(SBGrabberTongue *)self->_grabberTongue isVisible]))
  {
    edgePullGestureRecognizer = [tongueCopy edgePullGestureRecognizer];
    [(SBControlCenterController *)self _locationOfTouchInActiveInterfaceOrientation:touchCopy gestureRecognizer:edgePullGestureRecognizer];
    v10 = v9;
    v12 = v11;

    v13 = [(SBControlCenterController *)self _isLocationXWithinTrailingStatusBarRegion:v10];
    if (!v13 && [(SBGrabberTongue *)self->_grabberTongue isVisible])
    {
      [tongueCopy dismissWithStyle:0 animated:1];
    }

    mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__SBControlCenterController_grabberTongue_shouldReceiveTouch___block_invoke;
    v16[3] = &unk_2783B7820;
    v20 = v13;
    v17 = tongueCopy;
    v18 = v10;
    v19 = v12;
    [mEMORY[0x277D6A798] logBlock:v16];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

id __62__SBControlCenterController_grabberTongue_shouldReceiveTouch___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = @"[SBControlCenterController grabberTongue:shouldReceiveTouch:]";
  v18[0] = @"shouldReceiveTouch";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v19[0] = v2;
  v18[1] = @"address";
  v3 = MEMORY[0x277CCABB0];
  v4 = [*(a1 + 32) edgePullGestureRecognizer];
  v5 = [v3 numberWithUnsignedLong:v4];
  v19[1] = v5;
  v18[2] = @"name";
  v6 = [*(a1 + 32) edgePullGestureRecognizer];
  v7 = [v6 name];
  v8 = v7;
  v9 = &stru_283094718;
  if (v7)
  {
    v9 = v7;
  }

  v19[2] = v9;
  v18[3] = @"location";
  v16[0] = @"x";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v16[1] = @"y";
  v17[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v21[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  return v14;
}

- (void)grabberTongueWillPresent:(id)present
{
  [(SBControlCenterController *)self _updateWindowOrientation];

  [(SBControlCenterController *)self _updateWindowVisibility];
}

- (void)grabberTongueBeganPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  gestureCopy = gesture;
  pullingCopy = pulling;
  v10 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v10))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_CONTROL_CENTER_GESTURE", " enableTelemetry=YES  isAnimation=YES ", v25, 2u);
  }

  kdebug_trace();
  self->_presentationGestureContinuedIntoPaging = 0;
  [(SBControlCenterController *)self _disableReachability];
  [(SBControlCenterController *)self restrictSystemApertureToType:1 withReason:@"Control Center Presentation Began"];
  [pullingCopy dismissWithStyle:0 animated:1];

  viewController = [(SBControlCenterController *)self viewController];
  [(SBControlCenterController *)self _presentGestureLocationInView];
  v13 = v12;
  v15 = v14;
  [(SBControlCenterController *)self _presentGestureTranslationInView:1];
  v17 = v16;
  v19 = v18;
  [(SBControlCenterController *)self _presentGestureVelocityInView];
  v21 = v20;
  v23 = v22;
  v24 = [(SBControlCenterController *)self _touchesForGesture:gestureCopy];

  [viewController beginPresentationWithLocation:v24 translation:v13 velocity:v15 touches:{v17, v19, v21, v23}];
}

- (void)grabberTongueUpdatedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  v17 = [(SBControlCenterController *)self viewController:pulling];
  [(SBControlCenterController *)self _presentGestureLocationInView];
  v8 = v7;
  v10 = v9;
  [(SBControlCenterController *)self _presentGestureTranslationInView:0];
  v12 = v11;
  v14 = v13;
  [(SBControlCenterController *)self _presentGestureVelocityInView];
  [v17 updatePresentationWithLocation:v8 translation:v10 velocity:{v12, v14, v15, v16}];
}

- (void)grabberTongueEndedPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  self->_presentationGestureContinuedIntoPaging = 0;
  [(SBControlCenterController *)self _presentGestureLocationInView:pulling];
  v8 = v7;
  v10 = v9;
  [(SBControlCenterController *)self _presentGestureTranslationInView:0];
  v12 = v11;
  v14 = v13;
  [(SBControlCenterController *)self _presentGestureVelocityInView];
  v16 = v15;
  v18 = v17;
  viewController = [(SBControlCenterController *)self viewController];
  [viewController endPresentationWithLocation:v8 translation:v10 velocity:{v12, v14, v16, v18}];

  if ([(SBControlCenterController *)self isPresented])
  {
    [(SBControlCenterController *)self _disableReachability];
  }

  if ([(SBControlCenterController *)self isPresented])
  {
    [(SBControlCenterController *)self restrictSystemApertureToType:0 withReason:@"Control Center Presented"];
  }

  [(SBControlCenterController *)self invalidateSystemApertureAssertionForType:1 withReason:@"Control Center Presentation Ended"];
  v20 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_CONTROL_CENTER_GESTURE", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
  }

  kdebug_trace();
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__SBControlCenterController_grabberTongueEndedPulling_withDistance_andVelocity_andGesture___block_invoke;
  v22[3] = &unk_2783B77F8;
  *&v22[5] = v8;
  *&v22[6] = v10;
  *&v22[7] = v12;
  *&v22[8] = v14;
  *&v22[9] = v16;
  *&v22[10] = v18;
  v22[4] = self;
  [mEMORY[0x277D6A798] logBlock:v22];
}

id __91__SBControlCenterController_grabberTongueEndedPulling_withDistance_andVelocity_andGesture___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v23 = @"[SBControlCenterController grabberTongueEndedPulling:withDistance:andVelocity:]";
  v21[0] = @"location";
  v19[0] = @"x";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v19[1] = @"y";
  v20[0] = v14;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v20[1] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v12;
  v21[1] = @"translation";
  v17[0] = @"x";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v17[1] = @"y";
  v18[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v18[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v22[1] = v4;
  v21[2] = @"velocity";
  v15[0] = @"x";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v15[1] = @"y";
  v16[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  v16[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v22[2] = v7;
  v21[3] = @"presented";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isPresented")}];
  v22[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  return v10;
}

- (void)grabberTongueCanceledPulling:(id)pulling withDistance:(double)distance andVelocity:(double)velocity andGesture:(id)gesture
{
  if (self->_presentationGestureContinuedIntoPaging)
  {

    [(SBControlCenterController *)self grabberTongueEndedPulling:pulling withDistance:gesture andVelocity:distance andGesture:velocity];
  }

  else
  {
    [(SBControlCenterController *)self _disableReachability:pulling];
    viewController = [(SBControlCenterController *)self viewController];
    [(SBControlCenterController *)self _presentGestureLocationInView];
    v9 = v8;
    v11 = v10;
    [(SBControlCenterController *)self _presentGestureTranslationInView:0];
    v13 = v12;
    v15 = v14;
    [(SBControlCenterController *)self _presentGestureVelocityInView];
    [viewController cancelPresentationWithLocation:v9 translation:v11 velocity:{v13, v15, v16, v17}];

    if ([(SBControlCenterController *)self isPresented])
    {
      [(SBControlCenterController *)self restrictSystemApertureToType:0 withReason:@"Control Center Presented"];
    }

    [(SBControlCenterController *)self invalidateSystemApertureAssertionForType:1 withReason:@"Control Center Presentation Ended"];
    v18 = SBLogTelemetrySignposts();
    if (os_signpost_enabled(v18))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_CONTROL_CENTER_GESTURE", " enableTelemetry=YES  isAnimation=YES ", v19, 2u);
    }

    kdebug_trace();
  }
}

- (id)customGestureRecognizerForGrabberTongue:(id)tongue
{
  presentingEdge = [(SBControlCenterController *)self presentingEdge];
  if (presentingEdge == 4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 6;
  }

  v5 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:0 action:0 type:v4 options:0];
  [(UIScreenEdgePanGestureRecognizer *)v5 setEdges:presentingEdge];

  return v5;
}

- (void)controlCenterViewController:(id)controller wantsHostStatusBarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  controllerCopy = controller;
  hideStatusBarAssertion = self->_hideStatusBarAssertion;
  if (hiddenCopy)
  {
    if (hideStatusBarAssertion)
    {
      goto LABEL_7;
    }

    v13 = controllerCopy;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    statusBarManager = [WeakRetained statusBarManager];
    assertionManager = [statusBarManager assertionManager];
    v11 = [assertionManager acquireHideFrontmostStatusBarAssertionForReason:@"Control Center Transitioning"];
    v12 = self->_hideStatusBarAssertion;
    self->_hideStatusBarAssertion = v11;
  }

  else
  {
    if (!hideStatusBarAssertion)
    {
      goto LABEL_7;
    }

    v13 = controllerCopy;
    [(BSSimpleAssertion *)hideStatusBarAssertion invalidate];
    WeakRetained = self->_hideStatusBarAssertion;
    self->_hideStatusBarAssertion = 0;
  }

  controllerCopy = v13;
LABEL_7:
}

- (id)reachabilitySpringAnimationBehaviorForControlCenterViewController:(id)controller
{
  v3 = +[SBReachabilityDomain rootSettings];
  animationSettings = [v3 animationSettings];

  return animationSettings;
}

- (void)controlCenterViewController:(id)controller didChangePresentationState:(unint64_t)state
{
  controllerCopy = controller;
  if (state > 1)
  {
    if (state == 2)
    {
      [(SBControlCenterController *)self _didEndTransition];
      [(SBControlCenterController *)self _didPresent];
      v7 = MEMORY[0x277D75D18];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __84__SBControlCenterController_controlCenterViewController_didChangePresentationState___block_invoke;
      v17 = &unk_2783A8C18;
      selfCopy = self;
      v8 = &v14;
    }

    else
    {
      if (state != 3)
      {
        goto LABEL_11;
      }

      [(SBControlCenterController *)self _willDismiss];
      [(SBControlCenterController *)self _updateWindowVisibility];
      v7 = MEMORY[0x277D75D18];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __84__SBControlCenterController_controlCenterViewController_didChangePresentationState___block_invoke_2;
      v12 = &unk_2783A8C18;
      selfCopy2 = self;
      v8 = &v9;
    }

    [v7 animateWithDuration:v8 animations:{0.35, v9, v10, v11, v12, selfCopy2, v14, v15, v16, v17, selfCopy}];
    goto LABEL_11;
  }

  if (state)
  {
    if (state == 1)
    {
      [(SBControlCenterController *)self _willBeginTransition];
      [(SBControlCenterController *)self _willPresent];
      [(SBControlCenterController *)self _updateWindowVisibility];
    }
  }

  else
  {
    [(SBControlCenterController *)self _didEndTransition];
    [(SBControlCenterController *)self _didDismiss];
  }

LABEL_11:
  [(SBControlCenterController *)self _updateWindowContentHitTesting];
}

- (void)controlCenterViewController:(id)controller significantPresentationProgressChange:(double)change
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (!WeakRetained)
  {
    [SBControlCenterController controlCenterViewController:a2 significantPresentationProgressChange:self];
  }

  v7 = WeakRetained;
  v8 = self->_homeAffordanceViewController;
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    if (v8)
    {
      v9 = 1;
      goto LABEL_10;
    }

    if (!self->_zStackParticipant)
    {
      zStackResolver = [v7 zStackResolver];
      v13 = [zStackResolver acquireParticipantWithIdentifier:19 delegate:self];
      zStackParticipant = self->_zStackParticipant;
      self->_zStackParticipant = v13;

      [(SBControlCenterController *)self zStackParticipantDidChange:self->_zStackParticipant];
LABEL_16:

LABEL_17:
      keyboardFocusController = self->_keyboardFocusController;
      v17 = +[SBKeyboardFocusArbitrationReason controlCenterDidAppear];
      [(SBKeyboardFocusControlling *)keyboardFocusController requestArbitrationForSBWindowScene:v7 forReason:v17];

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if ((BSFloatIsZero() & 1) == 0 && v8)
  {
    view = [(SBBarSwipeAffordanceViewController *)v8 view];
    v9 = [view isTrackingHomeGestureOfType:1];

    goto LABEL_10;
  }

  if (v8)
  {
    v9 = 0;
LABEL_10:
    wantsToBeActiveAffordance = [(SBBarSwipeAffordanceViewController *)v8 wantsToBeActiveAffordance];
    [(SBBarSwipeAffordanceViewController *)v8 setWantsToBeActiveAffordance:v9];
    if (v9 == wantsToBeActiveAffordance)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = self->_zStackParticipant;
  if (v15)
  {
    [(SBFZStackParticipant *)v15 invalidate];
    zStackResolver = self->_zStackParticipant;
    self->_zStackParticipant = 0;
    goto LABEL_16;
  }

LABEL_18:
  if (self->_asynchronousRenderingAssertion && BSFloatIsZero() && [controllerCopy transitionState] == 2 && objc_msgSend(controllerCopy, "presentationState") == 3)
  {
    [(BSSimpleAssertion *)self->_asynchronousRenderingAssertion invalidate];
    asynchronousRenderingAssertion = self->_asynchronousRenderingAssertion;
    self->_asynchronousRenderingAssertion = 0;
  }

  [(SBControlCenterController *)self _updateWindowContentHitTesting];
}

- (void)controlCenterViewControllerWillContinuePresentationIntoPaging:(id)paging
{
  v4 = SBLogSystemGestureControlCenter();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Control Center will continue presentation gesture into paging", v5, 2u);
  }

  self->_presentationGestureContinuedIntoPaging = 1;
}

- (void)willOpenExpandedModuleForControlCenterViewController:(id)controller
{
  v3 = +[SBReachabilityManager sharedInstance];
  [v3 setReachabilityTemporarilyDisabled:1 forReason:@"Control Center Module"];
}

- (void)didCloseExpandedModuleForControlCenterViewController:(id)controller
{
  v3 = +[SBReachabilityManager sharedInstance];
  [v3 setReachabilityTemporarilyDisabled:0 forReason:@"Control Center Module"];
}

- (void)didRequestPowerDownTransientOverlayForControlCenterViewController:(id)controller
{
  v3 = +[SBWorkspace mainWorkspace];
  [v3 presentPowerDownTransientOverlay];
}

- (void)_willBeginTransition
{
  v3 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  v4 = [v3 acquireIdleTimerDisableAssertionForReason:@"Control Center Transitioning"];
  idleTimerDisableAssertion = self->_idleTimerDisableAssertion;
  self->_idleTimerDisableAssertion = v4;

  bannerSuppressionAssertion = self->_bannerSuppressionAssertion;
  if (bannerSuppressionAssertion)
  {
    [(BSInvalidatable *)bannerSuppressionAssertion invalidate];
  }

  bannerManager = [SBApp bannerManager];
  v7 = [bannerManager acquireBannerSuppressionAssertionForReason:@"Control Center Transitioning"];
  v8 = self->_bannerSuppressionAssertion;
  self->_bannerSuppressionAssertion = v7;
}

- (void)_didEndTransition
{
  [(BSInvalidatable *)self->_idleTimerDisableAssertion invalidate];
  idleTimerDisableAssertion = self->_idleTimerDisableAssertion;
  self->_idleTimerDisableAssertion = 0;

  [(BSInvalidatable *)self->_bannerSuppressionAssertion invalidate];
  bannerSuppressionAssertion = self->_bannerSuppressionAssertion;
  self->_bannerSuppressionAssertion = 0;
}

- (void)_willPresent
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBControlCenterController.m" lineNumber:1117 description:@"we should have cleared this assertion in _willDismiss"];
}

- (void)_didPresent
{
  [(SBControlCenterController *)self _updateWindowVisibility];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  coverSheetViewController = [WeakRetained coverSheetViewController];
  [coverSheetViewController externalBehaviorProviderBehaviorChanged:self];
  [coverSheetViewController externalPresentationProviderPresentationChanged:self];
  idleTimerCoordinator = [(SBControlCenterController *)self idleTimerCoordinator];
  v5 = [(SBControlCenterController *)self coordinatorRequestedIdleTimerBehavior:idleTimerCoordinator];
  v6 = [idleTimerCoordinator idleTimerProvider:self didProposeBehavior:v5 forReason:@"Control Center Visible"];
  v7 = objc_loadWeakRetained(&self->_controlCenterCoordinator);
  [v7 notifyObserversThatControlCenterController:self didPresentOnWindowScene:WeakRetained];

  [(SBFWindow *)self->_window makeKeyWindow];
  mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
  [mEMORY[0x277D65DD0] emitEvent:47];
}

- (void)_willDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_controlCenterCoordinator);
  v4 = objc_loadWeakRetained(&self->_windowScene);
  [WeakRetained notifyObserversThatControlCenterController:self willDismissOnWindowScene:v4];

  [(BSInvalidatable *)self->_keyboardFocusLockAssertion invalidate];
  keyboardFocusLockAssertion = self->_keyboardFocusLockAssertion;
  self->_keyboardFocusLockAssertion = 0;

  [(SBControlCenterController *)self invalidateSystemApertureAssertionForType:0 withReason:@"Control Center Dismissed"];

  [(SBControlCenterController *)self invalidateSystemApertureAssertionForType:1 withReason:@"Control Center Dismissed"];
}

- (void)_didDismiss
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBControlCenterController.m" lineNumber:1158 description:@"skipped _willDismiss"];
}

- (void)_updateWindowOrientation
{
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleControlCenter") & 1) == 0)
  {
    activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
    if ([(SBControlCenterWindow *)self->_window _windowInterfaceOrientation]!= activeInterfaceOrientation)
    {
      window = self->_window;

      [(SBControlCenterWindow *)window _legacySetRotatableViewOrientation:activeInterfaceOrientation updateStatusBar:0 duration:1 force:0.0];
    }
  }
}

- (void)_updateWindowVisibility
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(SBGrabberTongue *)self->_grabberTongue isVisible])
  {
    v3 = 0;
  }

  else
  {
    viewController = [(SBControlCenterController *)self viewController];
    v3 = [viewController presentationState] == 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SBControlCenterController__updateWindowVisibility__block_invoke;
  v7[3] = &unk_2783A9F58;
  v8 = v3;
  v7[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [(SBControlCenterWindow *)self->_window alpha];
    *buf = 67109376;
    v10 = v3;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating control center window visibility - hidden:%{BOOL}u alpha:%.2f", buf, 0x12u);
  }
}

uint64_t __52__SBControlCenterController__updateWindowVisibility__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  if (v2)
  {
    [v3 resignAsKeyWindow];
    result = [*(*(a1 + 32) + 48) isHidden];
    if ((result & 1) == 0)
    {
      v5 = *(*(a1 + 32) + 48);

      return [v5 setHidden:1];
    }
  }

  else
  {
    result = [v3 isHidden];
    if (result)
    {
      v6 = *(*(a1 + 32) + 48);

      return [v6 makeKeyAndVisible];
    }
  }

  return result;
}

- (void)_updateWindowContentHitTesting
{
  allowGestureForContentBelow = [(SBControlCenterController *)self allowGestureForContentBelow];
  rootViewController = [(SBControlCenterWindow *)self->_window rootViewController];
  viewIfLoaded = [rootViewController viewIfLoaded];
  [viewIfLoaded bs_setHitTestingDisabled:allowGestureForContentBelow];
}

- (void)_setStatusBarHidden:(BOOL)hidden
{
  statusBarAssertion = self->_statusBarAssertion;
  if (hidden)
  {
    if (statusBarAssertion)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    statusBarManager = [WeakRetained statusBarManager];
    assertionManager = [statusBarManager assertionManager];

    v7 = [(SBWindowSceneStatusBarSettingsAssertion *)assertionManager newSettingsAssertionWithStatusBarHidden:1 atLevel:12 reason:@"Control Center Visible"];
    v8 = self->_statusBarAssertion;
    self->_statusBarAssertion = v7;

    [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion acquire];
    v9 = assertionManager;
  }

  else
  {
    if (!statusBarAssertion)
    {
      return;
    }

    [(SBWindowSceneStatusBarSettingsAssertion *)statusBarAssertion invalidate];
    v9 = self->_statusBarAssertion;
    self->_statusBarAssertion = 0;
  }
}

- (void)activityDidChangeForSensorActivityDataProvider:(id)provider
{
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_sensorActivityDataProvider);

  v5 = WeakRetained;
  if (WeakRetained == providerCopy)
  {
    [(CCUIMainViewController *)self->_viewController setSensorActivityDataProvider:WeakRetained];
    v5 = WeakRetained;
  }
}

- (void)_screenDidDim
{
  viewController = [(SBControlCenterController *)self viewController];
  [viewController displayWillTurnOff];

  [(SBControlCenterController *)self dismissAnimated:0];
}

- (void)_policyAggregatorCapabilitiesDidChange:(id)change
{
  v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v4 policyAggregator];

  if (([policyAggregator allowsCapability:15] & 1) == 0)
  {
    [(SBControlCenterController *)self dismissAnimated:1];
  }
}

- (id)_touchesForGesture:(id)gesture
{
  gestureCopy = gesture;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allObjects = 0;
  }

  else
  {
    v5 = [gestureCopy _activeEventOfType:0];
    if (v5)
    {
      v6 = [gestureCopy _activeTouchesForEvent:v5];
      allObjects = [v6 allObjects];

      if (!allObjects)
      {
        v7 = SBLogCommon();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

        if (v8)
        {
          NSLog(&cfstr_FailedToFindAc.isa, gestureCopy, v5);
        }
      }
    }

    else
    {
      v9 = SBLogCommon();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

      if (v10)
      {
        NSLog(&cfstr_FailedToFindAn.isa, gestureCopy);
      }

      allObjects = 0;
    }
  }

  return allObjects;
}

- (CGPoint)_presentGestureLocationInView
{
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  viewController = [(SBControlCenterController *)self viewController];
  view = [viewController view];
  [edgePullGestureRecognizer locationInView:view];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)_presentGestureTranslationInView:(BOOL)view
{
  viewCopy = view;
  presentingEdge = [(SBControlCenterController *)self presentingEdge];
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  viewController = [(SBControlCenterController *)self viewController];
  view = [viewController view];
  if (viewCopy && presentingEdge == 1)
  {
    v9 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
    [edgePullGestureRecognizer setTranslation:view inView:{*MEMORY[0x277CBF348], v10}];
  }

  else
  {
    [edgePullGestureRecognizer translationInView:view];
    v9 = v11;
    v10 = v12;
  }

  v13 = v9;
  v14 = v10;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)_presentGestureVelocityInView
{
  edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  viewController = [(SBControlCenterController *)self viewController];
  view = [viewController view];
  [edgePullGestureRecognizer velocityInView:view];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)_locationOfTouchInActiveInterfaceOrientation:(id)orientation gestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [orientation locationInView:0];
  [SBApp activeInterfaceOrientation];
  view = [recognizerCopy view];

  [view size];
  _UIWindowConvertPointFromOrientationToOrientation();
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (BOOL)_isLocationXWithinTrailingStatusBarRegion:(double)region regionPadding:(double)padding
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v9 = v8;

  [(SBControlCenterController *)self _trailingStatusBarRegionWidth];
  v11 = v10 + padding;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v12 = v11 > region;
  }

  else
  {
    v12 = v9 - v11 < region;
  }

  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__SBControlCenterController__isLocationXWithinTrailingStatusBarRegion_regionPadding___block_invoke;
  v15[3] = &__block_descriptor_49_e19___NSDictionary_8__0l;
  v16 = v12;
  *&v15[4] = v9;
  *&v15[5] = v11;
  [mEMORY[0x277D6A798] logBlock:v15];

  return v12;
}

id __85__SBControlCenterController__isLocationXWithinTrailingStatusBarRegion_regionPadding___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"[SBControlCenterController _isLocationXWithinTrailingStatusBarRegion:]";
  v8[0] = @"inTrailingStatusBarRegion";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v9[0] = v2;
  v8[1] = @"statusBarWidth";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v9[1] = v3;
  v8[2] = @"trailingRegionWidth";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v6;
}

- (void)_updateWindowLevelForScene:(id)scene
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(SBWindowLevelAssertionManager *)self->_windowLevelAssertionManager highestPriorityWindowLevelAssertionForWindowScene:scene];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating Control Center window level using assertion: %{public}@", &v8, 0xCu);
  }

  window = self->_window;
  if (v4)
  {
    [v4 windowLevel];
  }

  else
  {
    v7 = *MEMORY[0x277D76EE8] + 30.0;
  }

  [(SBControlCenterWindow *)window setWindowLevel:v7];
}

- (void)_updateWindowForScene:(id)scene
{
  obj = scene;
  if (!self->_window || (WeakRetained = objc_loadWeakRetained(&self->_windowScene), WeakRetained, v5 = obj, WeakRetained != obj))
  {
    viewController = self->_homeAffordanceViewController;
    if (!viewController)
    {
      viewController = self->_homeButtonWrapperViewController;
      if (!viewController)
      {
        viewController = [(SBControlCenterController *)self viewController];
      }
    }

    v7 = viewController;
    v8 = [(SBWindow *)[SBControlCenterWindow alloc] initWithWindowScene:obj rootViewController:viewController role:@"SBTraitsParticipantRoleControlCenter" debugName:@"ControlCenterWindow"];
    window = self->_window;
    self->_window = v8;

    [(SBControlCenterWindow *)self->_window setWindowLevel:*MEMORY[0x277D76EE8] + 30.0];
    v10 = +[SBReachabilityManager sharedInstance];
    [v10 ignoreWindowForReachability:self->_window];

    [(SBWindow *)self->_window setHidden:1];
    rootViewController = [(SBControlCenterWindow *)self->_window rootViewController];
    [rootViewController bs_endAppearanceTransition:0];

    objc_storeWeak(&self->_windowScene, obj);
    v12 = [[SBGrabberTongue alloc] initWithDelegate:self edge:[(SBControlCenterController *)self presentingEdge] type:56 windowScene:obj];
    grabberTongue = self->_grabberTongue;
    self->_grabberTongue = v12;

    [(SBGrabberTongue *)self->_grabberTongue setName:@"ControlCenterGrabberTongue"];
    [(SBGrabberTongue *)self->_grabberTongue installInView:self->_window withColorStyle:0];
    [(SBControlCenterSystemAgent *)self->_systemAgent setWindowScene:obj];
    coverSheetViewController = [obj coverSheetViewController];
    [coverSheetViewController registerExternalBehaviorProvider:self];
    [coverSheetViewController registerExternalPresentationProvider:self];
    [coverSheetViewController registerExternalAppearanceProvider:self];
    [(SBControlCenterController *)self _setupGestureRecognizersForUpdatedWindowScene];
    [(SBControlCenterController *)self _setupPhysicalButtonPreferencesForUpdatedWindowScene];

    v5 = obj;
  }
}

- (void)_setupGestureRecognizersForUpdatedWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  systemGestureManager = [WeakRetained systemGestureManager];

  presentingEdge = [(SBControlCenterController *)self presentingEdge];
  if (presentingEdge == 1)
  {
    v6 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handleStatusBarPullDownGesture_];
    statusBarPullGestureRecognizer = self->_statusBarPullGestureRecognizer;
    self->_statusBarPullGestureRecognizer = v6;

    [(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer setAllowedTouchTypes:&unk_28336E490];
    [(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
    [(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer setDelegate:self];
    [systemGestureManager addGestureRecognizer:self->_statusBarPullGestureRecognizer withType:57];
    v8 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:self action:sel__handleStatusBarPullDownGesture_ edges:1];
    indirectStatusBarPullGestureRecognizer = self->_indirectStatusBarPullGestureRecognizer;
    self->_indirectStatusBarPullGestureRecognizer = v8;

    [(SBIndirectPanGestureRecognizer *)self->_indirectStatusBarPullGestureRecognizer setName:@"indirectPresentControlCenterGestureRecognizer"];
    [(SBIndirectPanGestureRecognizer *)self->_indirectStatusBarPullGestureRecognizer setDelegate:self];
    [(SBIndirectPanGestureRecognizer *)self->_indirectStatusBarPullGestureRecognizer setOrientationProvider:self];
    [(SBIndirectPanGestureRecognizer *)self->_indirectStatusBarPullGestureRecognizer setShouldInvertYAxis:1];
    [(SBIndirectPanGestureRecognizer *)self->_indirectStatusBarPullGestureRecognizer setActivationRecognitionDistance:40.0];
    [(SBIndirectPanGestureRecognizer *)self->_indirectStatusBarPullGestureRecognizer setShouldRequireGestureToStartAtEdge:1];
    [(SBIndirectPanGestureRecognizer *)self->_indirectStatusBarPullGestureRecognizer setHysteresis:0 forInputType:30.0];
    [(SBIndirectPanGestureRecognizer *)self->_indirectStatusBarPullGestureRecognizer setHysteresis:1 forInputType:10.0];
    v10 = self->_window;
    v11 = self->_indirectStatusBarPullGestureRecognizer;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__SBControlCenterController__setupGestureRecognizersForUpdatedWindowScene__block_invoke;
    v22[3] = &unk_2783B7868;
    v23 = v10;
    v12 = v10;
    [(SBIndirectPanGestureRecognizer *)v11 setTranslationAdjustmentBlock:v22];
    v13 = +[SBCoverSheetPresentationManager sharedInstance];
    coverSheetSlidingViewController = [v13 coverSheetSlidingViewController];
    indirectPresentGestureRecognizer = [coverSheetSlidingViewController indirectPresentGestureRecognizer];

    [indirectPresentGestureRecognizer requireGestureRecognizerToFail:self->_indirectStatusBarPullGestureRecognizer];
    [systemGestureManager addGestureRecognizer:self->_indirectStatusBarPullGestureRecognizer withType:58];
    [systemGestureManager gestureRecognizerOfType:135 shouldBeRequiredToFailByGestureRecognizer:self->_indirectStatusBarPullGestureRecognizer];
  }

  if ([(SBControlCenterController *)self _supportsReachability])
  {
    v16 = +[SBReachabilityManager sharedInstance];
    [v16 addObserver:self];
    if (presentingEdge == 1)
    {
      dismissPanGestureRecognizer = [v16 dismissPanGestureRecognizer];
      dismissEdgeGestureRecognizer = dismissPanGestureRecognizer;
      if (self->_statusBarPullGestureRecognizer)
      {
        [dismissPanGestureRecognizer requireGestureRecognizerToFail:?];
      }

      edgePullGestureRecognizer = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
      edgePullGestureRecognizer2 = dismissEdgeGestureRecognizer;
      v21 = edgePullGestureRecognizer;
    }

    else
    {
      dismissEdgeGestureRecognizer = [v16 dismissEdgeGestureRecognizer];
      if (!dismissEdgeGestureRecognizer)
      {
LABEL_11:

        goto LABEL_12;
      }

      edgePullGestureRecognizer2 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
      edgePullGestureRecognizer = edgePullGestureRecognizer2;
      v21 = dismissEdgeGestureRecognizer;
    }

    [edgePullGestureRecognizer2 requireGestureRecognizerToFail:v21];

    goto LABEL_11;
  }

LABEL_12:
}

double __74__SBControlCenterController__setupGestureRecognizersForUpdatedWindowScene__block_invoke(uint64_t a1, double a2)
{
  v4 = +[SBPlatformController sharedInstance];
  v5 = [v4 isRoundCornerPad];

  if (v5)
  {
    [*(a1 + 32) bounds];
    CGRectGetWidth(v7);
    SBScreenDisplayCornerRadius();
  }

  return a2;
}

- (void)_setupPhysicalButtonPreferencesForUpdatedWindowScene
{
  window = [(SBControlCenterController *)self window];
  windowScene = [window windowScene];

  _FBSScene = [windowScene _FBSScene];
  identity = [_FBSScene identity];

  v6 = MEMORY[0x277D65F10];
  processHandle = [MEMORY[0x277CF0CD0] processHandle];
  auditToken = [processHandle auditToken];
  v9 = [v6 targetWithPhysicalButton:1 generation:2 auditToken:auditToken identifier:2];

  v10 = MEMORY[0x277D65F10];
  processHandle2 = [MEMORY[0x277CF0CD0] processHandle];
  auditToken2 = [processHandle2 auditToken];
  v13 = [v10 targetWithPhysicalButton:2 generation:2 auditToken:auditToken2 identifier:2];

  v14 = [MEMORY[0x277D65F00] targetWithSceneIdentity:identity];
  [v14 addButtonTarget:v9];
  [v14 addButtonTarget:v13];
  v15 = MEMORY[0x277CBEA60];
  v16 = [v14 copy];
  v17 = [v15 arrayWithObject:v16];
  physicalButtonSceneTargets = self->_physicalButtonSceneTargets;
  self->_physicalButtonSceneTargets = v17;
}

- (BOOL)canBePresented
{
  selfCopy = self;
  v71 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  sceneManager = [WeakRetained sceneManager];
  policyAggregator = [sceneManager policyAggregator];

  if (objc_opt_respondsToSelector())
  {
    v6 = policyAggregator;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = v7 != 0;
  if (!v7)
  {
    v10 = SBLogSystemGestureControlCenter();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v70 = @"Display does not support capability querying";
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Not allowing transition because: %{public}@", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"ControlCenterNotAllowedByPolicyAggregator (%@)", @"Display does not support capability querying"];
  }

  v67 = 0;
  v11 = [v7 allowsCapability:15 explanation:&v67];
  v12 = v67;
  if ((v11 & 1) == 0)
  {
    v13 = SBLogSystemGestureControlCenter();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"(unknown reason)";
      if (v12)
      {
        v14 = v12;
      }

      *buf = 138543362;
      v70 = v14;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Not allowing transition because: %{public}@", buf, 0xCu);
    }

    v15 = @"unknown reason";
    if (v12)
    {
      v15 = v12;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ControlCenterNotAllowedByPolicyAggregator (%@)", v15];

    v9 = 0;
    v8 = v16;
  }

  v17 = +[SBLockStateAggregator sharedInstance];
  if ([v17 hasAnyLockState])
  {
    v66 = v12;
    v18 = [v7 allowsCapability:21 explanation:&v66];
    v19 = v66;

    if (v18)
    {
      goto LABEL_27;
    }

    v20 = SBLogSystemGestureControlCenter();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = @"(unknown reason)";
      if (v19)
      {
        v21 = v19;
      }

      *buf = 138543362;
      v70 = v21;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Not allowing transition while locked because: %{public}@", buf, 0xCu);
    }

    v22 = @"unknown reason";
    if (v19)
    {
      v22 = v19;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"LockScreenControlCenterNotAllowedByPolicyAggregator (%@)", v22];
    v9 = 0;
    v8 = v17 = v8;
  }

  else
  {
    v19 = v12;
  }

LABEL_27:
  lockScreenManager = [WeakRetained lockScreenManager];
  isUILocked = [lockScreenManager isUILocked];
  v25 = isUILocked;
  v58 = lockScreenManager;
  if (isUILocked)
  {
    v54 = WeakRetained;
    v26 = policyAggregator;
    v27 = v19;
    v28 = selfCopy;
    lockScreenEnvironment = [lockScreenManager lockScreenEnvironment];
    behaviorSuppressor = [lockScreenEnvironment behaviorSuppressor];
    suppressesControlCenter = [behaviorSuppressor suppressesControlCenter];

    if (suppressesControlCenter)
    {
      v32 = SBLogSystemGestureControlCenter();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "Not allowing gesture because lockscreen suppresses CC.", buf, 2u);
      }

      v9 = 0;
      v8 = @"ControlCenterNotAllowedBecauseLockScreenSuppressesCC";
    }

    selfCopy = v28;
    v19 = v27;
    policyAggregator = v26;
    WeakRetained = v54;
  }

  transientOverlayPresenter = [WeakRetained transientOverlayPresenter];
  if ([transientOverlayPresenter shouldDisableControlCenter])
  {
    v56 = v19;
    layoutStateApplicationSceneHandles = SBLogSystemGestureControlCenter();
    if (os_log_type_enabled(layoutStateApplicationSceneHandles, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, layoutStateApplicationSceneHandles, OS_LOG_TYPE_DEFAULT, "Not allowing transition because transient overlay suppresses CC.", buf, 2u);
    }

    v9 = 0;
    v34 = v8;
    v8 = @"ControlCenterNotAllowedBecauseTransientOverlaySuppressesCC";
LABEL_37:

    v19 = v56;
    goto LABEL_40;
  }

  switcherController = [WeakRetained switcherController];
  v34 = switcherController;
  if ((v25 & 1) == 0 && ([(__CFString *)switcherController isAnySwitcherVisible]& 1) == 0)
  {
    v56 = v19;
    v53 = v7;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    layoutStateApplicationSceneHandles = [(__CFString *)v34 layoutStateApplicationSceneHandles];
    v41 = [layoutStateApplicationSceneHandles countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v41)
    {
      v42 = v41;
      v51 = v34;
      v52 = policyAggregator;
      v55 = WeakRetained;
      v43 = *v63;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v63 != v43)
          {
            objc_enumerationMutation(layoutStateApplicationSceneHandles);
          }

          application = [*(*(&v62 + 1) + 8 * i) application];
          if ([application suppressesControlCenter])
          {
            v46 = SBLogSystemGestureControlCenter();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              bundleIdentifier = [application bundleIdentifier];
              *buf = 138543362;
              v70 = bundleIdentifier;
              _os_log_impl(&dword_21ED4E000, v46, OS_LOG_TYPE_DEFAULT, "Not allowing transition because the top app (%{public}@) suppresses CC.", buf, 0xCu);
            }

            v48 = MEMORY[0x277CCACA8];
            bundleIdentifier2 = [application bundleIdentifier];
            v50 = [v48 stringWithFormat:@"ControlCenterNotAllowedBecauseTopAppSuppressesCC (%@)", bundleIdentifier2];

            v9 = 0;
            v8 = v50;
          }
        }

        v42 = [layoutStateApplicationSceneHandles countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v42);
      v7 = v53;
      WeakRetained = v55;
      policyAggregator = v52;
      v34 = v51;
    }

    goto LABEL_37;
  }

LABEL_40:

  if ([(SBControlCenterController *)selfCopy presentingEdge]== 4)
  {
    v36 = v58;
    if ([SBApp isTypingActive])
    {
      v37 = SBLogSystemGestureControlCenter();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "Not allowing transition because kbd says typing is active.", buf, 2u);
      }

      v9 = 0;
      v8 = @"ControlCenterNotAllowedBecauseUserIsTyping";
    }
  }

  else
  {
    v36 = v58;
  }

  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __43__SBControlCenterController_canBePresented__block_invoke;
  v59[3] = &unk_2783B1200;
  v61 = v9;
  v60 = v8;
  v39 = v8;
  [mEMORY[0x277D6A798] logBlock:v59];

  return v9;
}

id __43__SBControlCenterController_canBePresented__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"[SBControlCenterController canBePresented]";
  v7[0] = @"allowTransition";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = @"failureReason";
  v8[0] = v2;
  v3 = *(a1 + 32);
  if (!v3)
  {
    v3 = &stru_283094718;
  }

  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v5;
}

- (BOOL)allowShowTransitionSystemGesture
{
  isDismissedOrDismissing = [(SBControlCenterController *)self isDismissedOrDismissing];
  if (isDismissedOrDismissing)
  {

    LOBYTE(isDismissedOrDismissing) = [(SBControlCenterController *)self canBePresented];
  }

  return isDismissedOrDismissing;
}

- (BOOL)_shouldAllowControlCenterGesture
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  systemGestureManager = [WeakRetained systemGestureManager];
  v5 = [systemGestureManager isGestureWithTypeAllowed:56];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = SBLogSystemGestureControlCenter();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Not allowing the present gesture to begin because system gestures aren't allowed.", buf, 2u);
    }

    v6 = @"GestureNotAllowedBySystemGestureManager";
  }

  if (![(SBControlCenterController *)self allowShowTransitionSystemGesture])
  {
    v8 = SBLogSystemGestureControlCenter();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Not allowing the present gesture to begin because Control Center isn't allowed at this time.", buf, 2u);
    }

    v5 = 0;
    v6 = @"GestureNotAllowedAtThisTime";
  }

  v9 = +[SBReachabilityManager sharedInstance];
  reachabilityModeActive = [v9 reachabilityModeActive];

  if ((reachabilityModeActive & 1) == 0 && ([(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer state]== 1 || [(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer state]== 2 || [(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer state]== 3))
  {
    v11 = SBLogSystemGestureControlCenter();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Not allowing the present gesture to begin because the status bar pull down gesture's state is active.", buf, 2u);
    }

    v5 = 0;
    v6 = @"GestureNotAllowedBecauseStatusBarGestureIsActive";
  }

  bannerManager = [SBApp bannerManager];
  v13 = [bannerManager isDisplayingFullScreenBannerInWindowScene:WeakRetained];

  if (v13)
  {
    v14 = SBLogSystemGestureControlCenter();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Not allowing the present gesture to begin because full screen banner is active.", buf, 2u);
    }

    v5 = 0;
    v6 = @"GestureNotAllowedBecauseFullScreenBannerIsActive";
  }

  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SBControlCenterController__shouldAllowControlCenterGesture__block_invoke;
  v17[3] = &unk_2783B1200;
  v19 = v5;
  v18 = v6;
  [mEMORY[0x277D6A798] logBlock:v17];

  return v5;
}

id __61__SBControlCenterController__shouldAllowControlCenterGesture__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"[SBControlCenterController _shouldAllowControlCenterGesture]";
  v7[0] = @"allowGesture";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = @"failureReason";
  v8[0] = v2;
  v3 = *(a1 + 32);
  if (!v3)
  {
    v3 = &stru_283094718;
  }

  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v5;
}

- (id)_newSystemApertureRestrictionAssertionForType:(unint64_t)type withReason:(id)reason
{
  reasonCopy = reason;
  if (type == 1)
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    v7 = [systemApertureControllerForMainDisplay restrictSystemApertureToInertWithReason:reasonCopy];
  }

  else
  {
    if (type)
    {
      v8 = 0;
      goto LABEL_7;
    }

    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    v7 = [systemApertureControllerForMainDisplay restrictSystemApertureToDefaultLayoutWithReason:reasonCopy];
  }

  v8 = v7;

LABEL_7:
  return v8;
}

- (void)restrictSystemApertureToType:(unint64_t)type withReason:(id)reason
{
  reasonCopy = reason;
  if (type != 1 || !BSEqualStrings() || (+[SBSystemApertureDomain rootSettings](SBSystemApertureDomain, "rootSettings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 suppressWhilePresentingControlCenter], v7, v8))
  {
    systemApertureAssertionForRestrictionType = [(SBControlCenterController *)self systemApertureAssertionForRestrictionType];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v11 = [systemApertureAssertionForRestrictionType objectForKey:v10];

    if (!v11)
    {
      v12 = [(SBControlCenterController *)self _newSystemApertureRestrictionAssertionForType:type withReason:reasonCopy];
      if (v12)
      {
        objc_initWeak(&location, self);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __69__SBControlCenterController_restrictSystemApertureToType_withReason___block_invoke;
        v18[3] = &unk_2783B7890;
        objc_copyWeak(v19, &location);
        v19[1] = type;
        [v12 addInvalidationBlock:v18];
        systemApertureAssertionForRestrictionType2 = [(SBControlCenterController *)self systemApertureAssertionForRestrictionType];

        if (!systemApertureAssertionForRestrictionType2)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
          systemApertureAssertionForRestrictionType = self->_systemApertureAssertionForRestrictionType;
          self->_systemApertureAssertionForRestrictionType = v14;
        }

        systemApertureAssertionForRestrictionType3 = [(SBControlCenterController *)self systemApertureAssertionForRestrictionType];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
        [systemApertureAssertionForRestrictionType3 setObject:v12 forKey:v17];

        objc_destroyWeak(v19);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __69__SBControlCenterController_restrictSystemApertureToType_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained systemApertureAssertionForRestrictionType];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v6 = [v4 objectForKey:v5];

  if (v6 == v3)
  {
    v7 = [WeakRetained systemApertureAssertionForRestrictionType];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
    [v7 removeObjectForKey:v8];
  }
}

- (void)invalidateSystemApertureAssertionForType:(unint64_t)type withReason:(id)reason
{
  reasonCopy = reason;
  systemApertureAssertionForRestrictionType = [(SBControlCenterController *)self systemApertureAssertionForRestrictionType];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v8 = [systemApertureAssertionForRestrictionType objectForKey:v7];

  if (v8)
  {
    [v8 invalidateWithReason:reasonCopy];
  }
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (UICoordinateSpace)presentationCoordinateSpace
{
  viewController = [(SBControlCenterController *)self viewController];
  view = [viewController view];

  return view;
}

- (NSArray)presentationRegions
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([(SBControlCenterController *)self isPresented])
  {
    v3 = MEMORY[0x277D02C80];
    viewController = [(SBControlCenterController *)self viewController];
    view = [viewController view];
    v6 = [v3 regionForCoordinateSpace:view];
    v7 = [v6 role:3];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSSet)components
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(SBControlCenterController *)self isPresented])
  {
    v4 = objc_opt_new();
    appearanceIdentifier = [(SBControlCenterController *)self appearanceIdentifier];
    v6 = [v4 identifier:appearanceIdentifier];
    v7 = [v6 priority:50];
    v8 = [v7 suppressTeachableMomentsAnimation:1];
    [v3 addObject:v8];
  }

  return v3;
}

- (id)hasExistingControlFromExtension:(id)extension
{
  v3 = [(CCUIMainViewController *)self->_viewController existingControlKindFromWidgetExtension:extension];
  if (v3)
  {
    v4 = [[SBWidgetExtensionDebugSearchResult alloc] initWithKind:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)launchControl:(id)control completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  completionCopy = completion;
  v8 = SBLogWidgets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = controlCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Launch control: %{public}@", buf, 0xCu);
  }

  if ([(SBControlCenterController *)self isPresented])
  {
    [(CCUIMainViewController *)self->_viewController addIfNecessaryAndScrollToControlMatching:controlCopy animated:1];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__SBControlCenterController_launchControl_completion___block_invoke;
    v9[3] = &unk_2783AE5A0;
    v9[4] = self;
    v10 = controlCopy;
    v11 = completionCopy;
    SBWorkspaceForceToSpringBoard(v9);
  }
}

void __54__SBControlCenterController_launchControl_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    SBWorkspaceSuspendActiveDisplay();
    v3 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__SBControlCenterController_launchControl_completion___block_invoke_2;
    v5[3] = &unk_2783AA1E8;
    v5[4] = v3;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v3 presentAnimated:1 completion:v5];
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

uint64_t __54__SBControlCenterController_launchControl_completion___block_invoke_2(void *a1)
{
  [*(a1[4] + 8) addIfNecessaryAndScrollToControlMatching:a1[5] animated:1];
  v2 = *(a1[6] + 16);

  return v2();
}

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)view
{
  viewController = [(SBControlCenterController *)self viewController];
  canDismissPresentedContent = [viewController canDismissPresentedContent];

  if (canDismissPresentedContent)
  {
    viewController2 = [(SBControlCenterController *)self viewController];
    [viewController2 dismissPresentedContent];
  }

  else
  {

    [(SBControlCenterController *)self dismissAnimated:1 completion:0];
  }
}

- (void)homeGrabberViewDidReceiveClick:(id)click
{
  zStackParticipant = [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController zStackParticipant];
  v5 = zStackParticipant;
  if (zStackParticipant && [zStackParticipant ownsHomeGesture])
  {
    [(SBControlCenterController *)self dismissAnimated:1];
  }

  else
  {
    v6 = SBLogSystemGestureControlCenter();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Preventing the home affordance click gesture because Control Center does not own the home gesture.", v7, 2u);
    }
  }
}

- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21F8A6E50[type - 1];
  }
}

- (id)hideAnimationSettingsForBarSwipeAffordanceView:(id)view
{
  rootSettings = [MEMORY[0x277D65E80] rootSettings];
  hideForHomeGestureOwnershipAnimationSettings = [rootSettings hideForHomeGestureOwnershipAnimationSettings];
  bSAnimationSettings = [hideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];
  v7 = [bSAnimationSettings mutableCopy];

  [(SBControlCenterController *)self _homeAffordanceAnimationDelay];
  v9 = v8;
  [v7 delay];
  [v7 setDelay:v9 + v10];

  return v7;
}

- (id)unhideAnimationSettingsForBarSwipeAffordanceView:(id)view
{
  rootSettings = [MEMORY[0x277D65E80] rootSettings];
  unhideForHomeGestureOwnershipAnimationSettings = [rootSettings unhideForHomeGestureOwnershipAnimationSettings];
  bSAnimationSettings = [unhideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];
  v7 = [bSAnimationSettings mutableCopy];

  [(SBControlCenterController *)self _homeAffordanceAnimationDelay];
  v9 = v8;
  [v7 delay];
  [v7 setDelay:v9 + v10];

  return v7;
}

- (double)_homeAffordanceAnimationDelay
{
  viewController = [(SBControlCenterController *)self viewController];
  moduleRowCount = [viewController moduleRowCount];

  v4 = 8;
  if (moduleRowCount < 8)
  {
    v4 = moduleRowCount;
  }

  return (v4 + 1) * 0.016;
}

- (BOOL)_isStatusBarHiddenIgnoringControlCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  statusBarManager = [WeakRetained statusBarManager];
  assertionManager = [statusBarManager assertionManager];

  if (*&self->_hideStatusBarAssertion == 0)
  {
    IsZero = [assertionManager isFrontmostStatusBarHidden];
  }

  else
  {
    switcherController = [WeakRetained switcherController];
    if ([switcherController unlockedEnvironmentMode] == 3)
    {
      IsZero = [switcherController isInAppStatusBarHidden];
    }

    else
    {
      v7 = [assertionManager statusBarSettingsForLevel:7];
      alpha = [v7 alpha];
      [alpha doubleValue];
      IsZero = BSFloatIsZero();
    }
  }

  return IsZero;
}

- (CCUIStatusBarStyleSnapshot)hostStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  statusBarManager = [WeakRetained statusBarManager];
  assertionManager = [statusBarManager assertionManager];
  lockScreenManager = [WeakRetained lockScreenManager];
  isUILocked = [lockScreenManager isUILocked];

  if (isUILocked)
  {
    isFrontmostStatusBarHidden = [assertionManager isFrontmostStatusBarHidden];
    if ([(SBControlCenterController *)self isPresentedOrDismissing])
    {
      trailingStatusBarStyleRequest = [assertionManager effectiveStatusBarStyleRequestWithSettings:0];
      leadingStatusBarStyleRequest = trailingStatusBarStyleRequest;
    }

    else
    {
      leadingStatusBarStyleRequest = [statusBarManager leadingStatusBarStyleRequest];
      trailingStatusBarStyleRequest = [statusBarManager trailingStatusBarStyleRequest];
    }

    v12 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = *MEMORY[0x277D768C8];
    v22 = *(MEMORY[0x277D768C8] + 8);
    v24 = *(MEMORY[0x277D768C8] + 16);
    v26 = *(MEMORY[0x277D768C8] + 24);
    coverSheetViewController = [WeakRetained coverSheetViewController];
    shouldShowLockStatusBarTime = [coverSheetViewController shouldShowLockStatusBarTime];
    v31 = *MEMORY[0x277D775B8];
    if (shouldShowLockStatusBarTime)
    {
      v31 = 0;
    }

    v29 = v31;
    statusBarActionsByPartIdentifier = 0;
    statusBarOverlayData = 0;
  }

  else
  {
    isFrontmostStatusBarHidden = [(SBControlCenterController *)self _isStatusBarHiddenIgnoringControlCenter];
    leadingStatusBarStyleRequest = [statusBarManager leadingStatusBarStyleRequest];
    trailingStatusBarStyleRequest = [statusBarManager trailingStatusBarStyleRequest];
    coverSheetViewController = [WeakRetained switcherController];
    [coverSheetViewController statusBarAvoidanceFrameForLayoutRole:2];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [coverSheetViewController statusBarEdgeInsets];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    statusBarOverlayData = [coverSheetViewController statusBarOverlayData];
    statusBarActionsByPartIdentifier = [coverSheetViewController statusBarActionsByPartIdentifier];
    v29 = 0;
  }

  if (!__sb__runningInSpringBoard())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
LABEL_14:
    [statusBarManager avoidanceFrameForStatusBar:0];
    v12 = v34;
    v14 = v35;
    v16 = v36;
    v18 = v37;
  }

LABEL_15:
  v38 = [objc_alloc(MEMORY[0x277CFC8A0]) initWithHidden:isFrontmostStatusBarHidden hiddenPartIdentifier:v29 leadingStyleRequest:leadingStatusBarStyleRequest trailingStyleRequest:trailingStatusBarStyleRequest overlayData:statusBarOverlayData actionsByPartIdentifier:statusBarActionsByPartIdentifier statusBarInsets:v20 avoidanceFrame:{v22, v24, v26, v12, v14, v16, v18}];

  return v38;
}

- (SBIdleTimerCoordinating)idleTimerCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);

  return WeakRetained;
}

- (SBSensorActivityDataProvider)sensorActivityDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sensorActivityDataProvider);

  return WeakRetained;
}

- (SBControlCenterCoordinator)controlCenterCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_controlCenterCoordinator);

  return WeakRetained;
}

- (SBWindowScene)_windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)initWithWindowScene:controlCenterCoordinator:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"FBSDisplayLayoutMonitorConfiguration *_FBSDisplayLayoutMonitorConfigurationForWindowScene(SBWindowScene *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"SBControlCenterController.m" lineNumber:147 description:@"attempting to create a control center VC on an unknown display!"];
}

- (void)controlCenterViewController:(const char *)a1 significantPresentationProgressChange:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"need window scene plz"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
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
    v15 = @"SBControlCenterController.m";
    v16 = 1024;
    v17 = 997;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
@interface SBControlCenterController
- (BOOL)_isLocationXWithinTrailingStatusBarRegion:(double)a3 regionPadding:(double)a4;
- (BOOL)_isStatusBarHiddenIgnoringControlCenter;
- (BOOL)_shouldAllowControlCenterGesture;
- (BOOL)_shouldShowGrabberOnFirstSwipe;
- (BOOL)_supportsReachability;
- (BOOL)allowGestureForContentBelow;
- (BOOL)allowShowTransitionSystemGesture;
- (BOOL)canBePresented;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)grabberTongue:(id)a3 shouldAllowSecondSwipeWithEdgeLocation:(double)a4;
- (BOOL)grabberTongue:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)handleIndirectStatusBarAction;
- (BOOL)handleMenuButtonTap;
- (BOOL)isDismissedOrDismissing;
- (BOOL)isPresented;
- (BOOL)isPresentedOrDismissing;
- (CCUIStatusBarStyleSnapshot)hostStatusBarStyle;
- (CGPoint)_locationOfTouchInActiveInterfaceOrientation:(id)a3 gestureRecognizer:(id)a4;
- (CGPoint)_presentGestureLocationInView;
- (CGPoint)_presentGestureTranslationInView:(BOOL)a3;
- (CGPoint)_presentGestureVelocityInView;
- (NSArray)presentationRegions;
- (NSSet)components;
- (NSString)coverSheetIdentifier;
- (SBControlCenterController)initWithWindowScene:(id)a3 controlCenterCoordinator:(id)a4;
- (SBControlCenterCoordinator)controlCenterCoordinator;
- (SBIdleTimerCoordinating)idleTimerCoordinator;
- (SBSensorActivityDataProvider)sensorActivityDataProvider;
- (SBWindowScene)_windowScene;
- (UICoordinateSpace)presentationCoordinateSpace;
- (double)_homeAffordanceAnimationDelay;
- (double)_reachabilityOffset;
- (double)_trailingStatusBarRegionWidth;
- (id)_newSystemApertureRestrictionAssertionForType:(unint64_t)a3 withReason:(id)a4;
- (id)_presentGestureRecognizers;
- (id)_touchesForGesture:(id)a3;
- (id)customGestureRecognizerForGrabberTongue:(id)a3;
- (id)hasExistingControlFromExtension:(id)a3;
- (id)hideAnimationSettingsForBarSwipeAffordanceView:(id)a3;
- (id)reachabilitySpringAnimationBehaviorForControlCenterViewController:(id)a3;
- (id)unhideAnimationSettingsForBarSwipeAffordanceView:(id)a3;
- (int64_t)participantState;
- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4;
- (unint64_t)presentingEdge;
- (void)_didDismiss;
- (void)_didEndTransition;
- (void)_didPresent;
- (void)_disableReachability;
- (void)_handleStatusBarPullDownGesture:(id)a3;
- (void)_policyAggregatorCapabilitiesDidChange:(id)a3;
- (void)_requireGestureRecognizerToFailForPresentGestureRecognizer:(id)a3;
- (void)_requirePresentGestureRecognizerToFailForGestureRecognizer:(id)a3;
- (void)_screenDidDim;
- (void)_setDisplayLayoutElementActive:(BOOL)a3;
- (void)_setStatusBarHidden:(BOOL)a3;
- (void)_setupGestureRecognizersForUpdatedWindowScene;
- (void)_setupPhysicalButtonPreferencesForUpdatedWindowScene;
- (void)_updateWindowContentHitTesting;
- (void)_updateWindowForScene:(id)a3;
- (void)_updateWindowLevelForScene:(id)a3;
- (void)_updateWindowOrientation;
- (void)_updateWindowVisibility;
- (void)_willBeginTransition;
- (void)_willDismiss;
- (void)_willPresent;
- (void)activityDidChangeForSensorActivityDataProvider:(id)a3;
- (void)controlCenterViewController:(id)a3 didChangePresentationState:(unint64_t)a4;
- (void)controlCenterViewController:(id)a3 significantPresentationProgressChange:(double)a4;
- (void)controlCenterViewController:(id)a3 wantsHostStatusBarHidden:(BOOL)a4;
- (void)controlCenterViewControllerWillContinuePresentationIntoPaging:(id)a3;
- (void)dealloc;
- (void)didCloseExpandedModuleForControlCenterViewController:(id)a3;
- (void)didRequestPowerDownTransientOverlayForControlCenterViewController:(id)a3;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)grabberTongueBeganPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueCanceledPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueEndedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueUpdatedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueWillPresent:(id)a3;
- (void)handleDidEndReachabilityAnimation;
- (void)handleReachabilityModeActivated;
- (void)handleReachabilityModeDeactivated;
- (void)handleReachabilityYOffsetDidChange;
- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3;
- (void)homeGrabberViewDidReceiveClick:(id)a3;
- (void)invalidate;
- (void)invalidateSystemApertureAssertionForType:(unint64_t)a3 withReason:(id)a4;
- (void)launchControl:(id)a3 completion:(id)a4;
- (void)presentAnimated:(BOOL)a3 completion:(id)a4;
- (void)restrictSystemApertureToType:(unint64_t)a3 withReason:(id)a4;
- (void)setSensorActivityDataProvider:(id)a3;
- (void)willOpenExpandedModuleForControlCenterViewController:(id)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBControlCenterController

- (BOOL)isPresented
{
  v3 = [(CCUIMainViewController *)self->_viewController presentationState];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(CCUIMainViewController *)self->_viewController presentationState]== 2;
  }

  return v3;
}

- (unint64_t)presentingEdge
{
  v3 = objc_opt_class();
  v4 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v5 = SBSafeCast(v3, v4);

  if (v5)
  {
    v6 = [v5 edges];
  }

  else if (SBFEffectiveHomeButtonType() == 2)
  {
    v6 = 1;
  }

  else
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 4;
    }
  }

  return v6;
}

- (BOOL)_shouldShowGrabberOnFirstSwipe
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained transientOverlayPresenter];
  v5 = [v4 hasActivePresentation];

  if (v5 & 1) != 0 || ([WeakRetained lockScreenManager], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isUILocked"), v6, (v7))
  {
    v8 = 0;
  }

  else
  {
    v9 = [WeakRetained switcherController];
    if ([v9 unlockedEnvironmentMode] == 2)
    {
      v8 = 0;
    }

    else
    {
      v10 = [v9 layoutStateSideElement];
      v11 = [v10 workspaceEntity];
      v12 = [v11 applicationSceneEntity];
      v13 = [v12 sceneHandle];

      if (v13)
      {
        v8 = 0;
      }

      else
      {
        v14 = [v9 layoutStatePrimaryElement];
        v15 = [v14 workspaceEntity];
        v16 = [v15 applicationSceneEntity];
        v17 = [v16 sceneHandle];

        v18 = [(SBControlCenterController *)self presentingEdge];
        if ([v17 isDeviceApplicationSceneHandle])
        {
          v19 = [v17 screenEdgesDeferringSystemGestures];
        }

        else
        {
          v19 = 0;
        }

        v8 = (v19 & v18) != 0;
      }
    }
  }

  return v8;
}

- (double)_trailingStatusBarRegionWidth
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;

  v6 = [SBApp activeInterfaceOrientation];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v10 = [WeakRetained switcherController];

    [v10 effectiveTrailingStatusBarPartFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v20 = v12;
    v21 = v14;
    v22 = v16;
    v23 = v18;
    if (v19 == 1)
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
    if ((v6 - 1) < 2)
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
  v3 = [(CCUIMainViewController *)self->_viewController presentationState];
  result = [(SBControlCenterController *)self isPresented];
  if (v3 == 3)
  {
    return 1;
  }

  return result;
}

- (SBControlCenterController)initWithWindowScene:(id)a3 controlCenterCoordinator:(id)a4
{
  v58[1] = *MEMORY[0x277D85DE8];
  obj = a3;
  v6 = a4;
  v57.receiver = self;
  v57.super_class = SBControlCenterController;
  v7 = [(SBControlCenterController *)&v57 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

  objc_storeWeak(&v7->_windowScene, obj);
  objc_storeWeak(&v8->_controlCenterCoordinator, v6);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:v8 selector:sel__screenDidDim name:*MEMORY[0x277D67A18] object:0];
  [v9 addObserver:v8 selector:sel__uiRelockedNotification_ name:@"SBLockScreenUIRelockedNotification" object:0];
  [v9 addObserver:v8 selector:sel__policyAggregatorCapabilitiesDidChange_ name:@"SBPolicyAggregatorCapabilitiesChangedNotification" object:0];
  v10 = +[SBSceneManagerCoordinator sharedInstance];
  v11 = [v10 sceneDeactivationManager];
  v12 = [v11 newAssertionWithReason:2];
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
  v19 = [v18 keyboardFocusController];
  keyboardFocusController = v8->_keyboardFocusController;
  v8->_keyboardFocusController = v19;

  v21 = obj;
  if ([v21 isMainDisplayWindowScene])
  {
    v22 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
LABEL_6:
    v23 = v22;
    goto LABEL_7;
  }

  if ([v21 isContinuityDisplayWindowScene])
  {
    v22 = [MEMORY[0x277D0AD20] configurationForContinuityDisplay];
    goto LABEL_6;
  }

  if (![v21 isExtendedDisplayWindowScene])
  {
    goto LABEL_17;
  }

  v47 = MEMORY[0x277D0AD20];
  v48 = [v21 _fbsDisplayIdentity];
  v23 = [v47 configurationForExternalDisplay:v48];

LABEL_7:
  if (!v23)
  {
LABEL_17:
    [SBControlCenterController initWithWindowScene:controlCenterCoordinator:];
    v23 = 0;
  }

  v49 = [v6 viewControllerFactory];
  v24 = v8->_systemAgent;
  v25 = [v6 sensorActivityDataProvider];
  v26 = [v49 mainViewControllerWithSystemAgent:v24 sensorActivityDataProvider:v25 displayLayoutMonitorConfiguration:v23];

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

  v31 = [v21 isMainDisplayWindowScene];
  if ((SBHomeGestureEnabled() & v31) == 1)
  {
    v32 = [[SBBarSwipeAffordanceViewController alloc] initWithZStackParticipantIdentifier:19 windowScene:v21];
    homeAffordanceViewController = v8->_homeAffordanceViewController;
    v8->_homeAffordanceViewController = v32;

    [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController setPointerClickDelegate:v8];
    [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController setDelegate:v8];
    __74__SBControlCenterController_initWithWindowScene_controlCenterCoordinator___block_invoke_2([(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController setAllowsTouchesToPassThrough:1], v8->_viewController, v8->_homeAffordanceViewController);
    v34 = [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController view];
    [v34 setDelegate:v8];

    v35 = [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController view];
    [v35 addObserver:v8];

    v36 = [(SBBarSwipeAffordanceViewController *)v8->_homeAffordanceViewController view];
    [v36 setColorBias:2];

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

  if (v31)
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
  [v6 registerControlCenterController:v8 forWindowScene:v21];
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBControlCenterController.m" lineNumber:287 description:@"Don't dealloc SBControlCenterController without invalidation!"];
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained systemGestureManager];
  [v3 removeGestureRecognizer:self->_statusBarPullGestureRecognizer];
  [v3 removeGestureRecognizer:self->_indirectStatusBarPullGestureRecognizer];
  v4 = [WeakRetained coverSheetViewController];
  [v4 unregisterExternalBehaviorProvider:self];
  [v4 unregisterExternalPresentationProvider:self];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

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

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v6 = a4;
  [v6 setSuppressSystemApertureForSystemChromeSuppression:0];
  [v6 setActivationPolicyForParticipantsBelow:1];
  v5 = [(SBControlCenterController *)self physicalButtonSceneTargets];
  [v6 setPhysicalButtonSceneTargets:v5];

  [v6 setAllowsKeyboardArbiterToDetermineFocusTarget:2];
}

- (BOOL)isDismissedOrDismissing
{
  v3 = [(SBControlCenterController *)self viewController];
  if ([v3 presentationState])
  {
    v4 = [(SBControlCenterController *)self viewController];
    v5 = [v4 presentationState] == 3;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)allowGestureForContentBelow
{
  v3 = [(SBControlCenterController *)self viewController];
  if ([v3 presentationState])
  {
    v4 = [(SBControlCenterController *)self viewController];
    if ([v4 presentationState] == 3)
    {
      v5 = [(SBControlCenterController *)self viewController];
      v6 = [v5 transitionState] != 1;
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
    v3 = [(SBControlCenterController *)self viewController];
    v4 = [v3 canDismissPresentedContent];

    if (v4)
    {
      v5 = [(SBControlCenterController *)self viewController];
      [v5 dismissPresentedContent];

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
  v3 = [(SBControlCenterController *)self _shouldAllowControlCenterGesture];
  if (v3)
  {
    [(SBControlCenterController *)self presentAnimated:1 completion:0];
  }

  return v3;
}

- (void)presentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(SBControlCenterController *)self _disableReachability];
  v7 = [(SBControlCenterController *)self viewController];
  [v7 presentAnimated:v4 withCompletionHandler:v6];
}

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
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
    v14 = v6;
    v7 = MEMORY[0x223D6F7F0](v13);
    [(CCUIMainViewController *)self->_viewController dismissAnimated:v4 withCompletionHandler:v7];
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
      [(SBGrabberTongue *)self->_grabberTongue dismissWithStyle:0 animated:v4];
    }

    if (v6)
    {
      v6[2](v6);
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

- (void)setSensorActivityDataProvider:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_sensorActivityDataProvider, v4);
  [v4 addObserver:self];
  [(SBControlCenterController *)self activityDidChangeForSensorActivityDataProvider:v4];
}

- (void)_requirePresentGestureRecognizerToFailForGestureRecognizer:(id)a3
{
  v5 = a3;
  v4 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [v5 requireGestureRecognizerToFail:v4];

  if (self->_statusBarPullGestureRecognizer)
  {
    [v5 requireGestureRecognizerToFail:?];
  }
}

- (void)_requireGestureRecognizerToFailForPresentGestureRecognizer:(id)a3
{
  v6 = a3;
  v4 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [v4 requireGestureRecognizerToFail:v6];

  statusBarPullGestureRecognizer = self->_statusBarPullGestureRecognizer;
  if (statusBarPullGestureRecognizer)
  {
    [(UIPanGestureRecognizer *)statusBarPullGestureRecognizer requireGestureRecognizerToFail:v6];
  }
}

- (id)_presentGestureRecognizers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];

  if (v4)
  {
    v5 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
    [v3 addObject:v5];
  }

  if (self->_statusBarPullGestureRecognizer)
  {
    [v3 addObject:?];
  }

  v6 = [v3 copy];

  return v6;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [SBApp multiDisplayUserInteractionCoordinator];
  v6 = [v5 activeTouchDownOriginatedWindowScene];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      v8 = [WeakRetained isEqual:v6];

      if ((v8 & 1) == 0)
      {
        v11 = SBLogSystemGestureControlCenter();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [(SBIndirectPanGestureRecognizer *)v4 name];
          *buf = 138412290;
          v34 = v12;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Not allowing %@ to begin because it was started from another display", buf, 0xCu);
        }

        v10 = 0;
        v9 = @"NotForCurrentDisplay";
        goto LABEL_36;
      }
    }
  }

  if (self->_statusBarPullGestureRecognizer == v4 || self->_indirectStatusBarPullGestureRecognizer == v4)
  {
    v10 = [(SBControlCenterController *)self _shouldAllowControlCenterGesture];
    if (v10)
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

    if ([(SBControlCenterController *)self _shouldShowGrabberOnFirstSwipe]&& self->_indirectStatusBarPullGestureRecognizer != v4)
    {
      v14 = SBLogSystemGestureControlCenter();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Not allowing the status bar pull down gesture to begin because we require a grabber on first swipe.", buf, 2u);
      }

      v10 = 0;
      v9 = @"StatusBarGestureNotAllowedBecauseGrabberRequired";
    }

    v11 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
    if ([v11 state]== 1 || [v11 state]== 2 || [v11 state]== 3)
    {
      v15 = SBLogSystemGestureControlCenter();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Not allowing the status bar pull down gesture to begin because the screen edge gesture's state is active.", buf, 2u);
      }

      v10 = 0;
      v9 = @"StatusBarGestureNotAllowedBecauseEdgeGestureIsActive";
    }

    statusBarPullGestureRecognizer = self->_statusBarPullGestureRecognizer;
    if (statusBarPullGestureRecognizer == v4)
    {
      v17 = [(SBControlCenterController *)self viewController];
      v18 = [v17 view];
      [(UIPanGestureRecognizer *)statusBarPullGestureRecognizer velocityInView:v18];
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

        v10 = 0;
        v9 = @"StatusBarGestureNotAllowedBecauseMovingUpOrHorizontally";
      }
    }

    if (self->_indirectStatusBarPullGestureRecognizer == v4)
    {
      v24 = [(SBControlCenterController *)self viewForSystemGestureRecognizer:v4];
      [(SBIndirectPanGestureRecognizer *)v4 locationInView:v24];
      v25 = [(SBControlCenterController *)self _isLocationXWithinExtendedTrailingStatusBarRegion:?];
      if (!v25)
      {
        v9 = @"StatusBarGestureNotAllowedBecausePointerIsNotInTheTrailingStatusBarRegion";
      }

      v10 &= v25;
    }

LABEL_36:

    goto LABEL_37;
  }

  v9 = 0;
  v10 = 1;
LABEL_37:
  v26 = [MEMORY[0x277D6A798] sharedInstance];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __58__SBControlCenterController_gestureRecognizerShouldBegin___block_invoke;
  v29[3] = &unk_2783B77A8;
  v32 = v10;
  v30 = v4;
  v31 = v9;
  v27 = v4;
  [v26 logBlock:v29];

  return v10;
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_statusBarPullGestureRecognizer == v6)
  {
    [(SBControlCenterController *)self _locationOfTouchInActiveInterfaceOrientation:v7 gestureRecognizer:v6];
    v11 = v10;
    v13 = v12;
    v14 = [MEMORY[0x277D759A0] mainScreen];
    [v14 bounds];
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
    v23 = [MEMORY[0x277D6A798] sharedInstance];
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
    v26 = v6;
    v27 = self;
    v35 = v21;
    v36 = v22;
    [v23 logBlock:v25];
  }

  else if (self->_outsideContentInteractionTapGestureRecognizer == v6 || self->_outsideContentInteractionPanGestureRecognizer == v6)
  {
    if ([(SBControlCenterController *)self isPresentedOrDismissing])
    {
      v9 = [(CCUIMainViewController *)self->_viewController view];
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
  v3 = [(SBControlCenterController *)self viewController];
  [v3 setReachabilityActive:1];

  statusBarPullGestureRecognizer = self->_statusBarPullGestureRecognizer;
  v5 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [(UIPanGestureRecognizer *)statusBarPullGestureRecognizer requireGestureRecognizerToFail:v5];
}

- (void)handleReachabilityModeDeactivated
{
  v3 = [(SBControlCenterController *)self viewController];
  [v3 setReachabilityActive:0];

  statusBarPullGestureRecognizer = self->_statusBarPullGestureRecognizer;
  v5 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  [(UIPanGestureRecognizer *)statusBarPullGestureRecognizer removeFailureRequirement:v5];
}

- (void)handleReachabilityYOffsetDidChange
{
  v3 = [(SBControlCenterController *)self viewController];
  v4 = [v3 view];
  [v4 setNeedsLayout];

  v6 = [(SBControlCenterController *)self viewController];
  v5 = [v6 view];
  [v5 layoutIfNeeded];
}

- (void)handleDidEndReachabilityAnimation
{
  v2 = [(SBControlCenterController *)self viewController];
  [v2 reachabilityAnimationDidEnd];
}

- (void)_disableReachability
{
  v2 = +[SBReachabilityManager sharedInstance];
  [v2 deactivateReachability];
}

- (BOOL)_supportsReachability
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained isMainDisplayWindowScene];

  return v3;
}

- (void)_handleStatusBarPullDownGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBControlCenterController *)self viewController];
  v6 = [v5 view];
  [(SBIndirectPanGestureRecognizer *)v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(SBControlCenterController *)self viewController];
  v12 = [v11 view];
  [(SBIndirectPanGestureRecognizer *)v4 translationInView:v12];
  v14 = v13;
  v16 = v15;

  v17 = [(SBControlCenterController *)self viewController];
  v18 = [v17 view];
  [(SBIndirectPanGestureRecognizer *)v4 velocityInView:v18];
  v20 = v19;
  v22 = v21;

  if ([(SBControlCenterController *)self isDismissedOrDismissing])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v4;
      v24 = [(SBControlCenterController *)self viewController];
      v25 = [v24 view];
      [(SBIndirectPanGestureRecognizer *)v23 setTranslation:v25 inView:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    }

    [(SBControlCenterController *)self _reachabilityOffset];
    if (v10 >= v26)
    {
      if (self->_statusBarPullGestureRecognizer == v4)
      {
        v29 = [(SBControlCenterController *)self viewController];
        v30 = [(SBControlCenterController *)self _touchesForGesture:v4];
        [v29 beginPresentationWithLocation:v30 translation:v8 velocity:v10 touches:{v14, v16, v20, v22}];
      }

      else if (self->_indirectStatusBarPullGestureRecognizer == v4 && !self->_indirectStatusBarPullGestureCalledBegin && v16 != 0.0)
      {
        v27 = [(SBControlCenterController *)self viewController];
        v28 = [(SBControlCenterController *)self _touchesForGesture:v4];
        [v27 beginPresentationWithLocation:v28 translation:v8 velocity:v10 touches:{v14, v16, v20, v22}];

        self->_indirectStatusBarPullGestureCalledBegin = 1;
      }
    }
  }

  if ([(SBIndirectPanGestureRecognizer *)v4 state]== 1)
  {
    [(SBControlCenterController *)self restrictSystemApertureToType:1 withReason:@"Control Center Presentation Began"];
  }

  else if ([(SBIndirectPanGestureRecognizer *)v4 state]== 3 || [(SBIndirectPanGestureRecognizer *)v4 state]== 4 || [(SBIndirectPanGestureRecognizer *)v4 state]== 5)
  {
    if ([(SBControlCenterController *)self isPresented])
    {
      [(SBControlCenterController *)self restrictSystemApertureToType:0 withReason:@"Control Center Presented"];
    }

    [(SBControlCenterController *)self invalidateSystemApertureAssertionForType:1 withReason:@"Control Center Presentation Ended"];
  }

  v31 = [(SBControlCenterController *)self viewController];
  v32 = [v31 presentationState];

  if (v32)
  {
    v33 = [(SBIndirectPanGestureRecognizer *)v4 state];
    if (v33 <= 2)
    {
      if (v33 == 1)
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

      else if (v33 == 2 && (self->_statusBarPullGestureRecognizer == v4 || self->_indirectStatusBarPullGestureRecognizer == v4 && self->_indirectStatusBarPullGestureCalledBegin))
      {
        v38 = [(SBControlCenterController *)self viewController];
        [v38 updatePresentationWithLocation:v8 translation:v10 velocity:{v14, v16, v20, v22}];
      }
    }

    else
    {
      switch(v33)
      {
        case 3:
LABEL_25:
          *&self->_indirectStatusBarPullGestureCalledBegin = 0;
          v34 = v16 + fabs(v22 * 0.03);
          if (self->_indirectStatusBarPullGestureRecognizer == v4)
          {
            v16 = v34;
          }

          v35 = [(SBControlCenterController *)self viewController];
          [v35 endPresentationWithLocation:v8 translation:v10 velocity:{v14, v16, v20, v22}];

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
          v37 = [MEMORY[0x277D6A798] sharedInstance];
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
          [v37 logBlock:v42];

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
          v40 = [(SBControlCenterController *)self viewController];
          [v40 cancelPresentationWithLocation:v8 translation:v10 velocity:{v14, v16, v20, v22}];

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

- (void)_setDisplayLayoutElementActive:(BOOL)a3
{
  displayLayoutAssertion = self->_displayLayoutAssertion;
  if (a3)
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
    v7 = [MEMORY[0x277D0AAA0] sharedInstance];
    v8 = [v7 addElement:v11];
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

- (BOOL)grabberTongue:(id)a3 shouldAllowSecondSwipeWithEdgeLocation:(double)a4
{
  v6 = a3;
  if ([(SBControlCenterController *)self presentingEdge]== 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 isEdgeLocationInGrabberRegion:a4];
  }

  return v7;
}

- (BOOL)grabberTongue:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SBControlCenterController *)self presentingEdge]== 1 && (![(SBControlCenterController *)self _shouldShowGrabberOnFirstSwipe]|| [(SBGrabberTongue *)self->_grabberTongue isVisible]))
  {
    v8 = [v6 edgePullGestureRecognizer];
    [(SBControlCenterController *)self _locationOfTouchInActiveInterfaceOrientation:v7 gestureRecognizer:v8];
    v10 = v9;
    v12 = v11;

    v13 = [(SBControlCenterController *)self _isLocationXWithinTrailingStatusBarRegion:v10];
    if (!v13 && [(SBGrabberTongue *)self->_grabberTongue isVisible])
    {
      [v6 dismissWithStyle:0 animated:1];
    }

    v14 = [MEMORY[0x277D6A798] sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__SBControlCenterController_grabberTongue_shouldReceiveTouch___block_invoke;
    v16[3] = &unk_2783B7820;
    v20 = v13;
    v17 = v6;
    v18 = v10;
    v19 = v12;
    [v14 logBlock:v16];
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

- (void)grabberTongueWillPresent:(id)a3
{
  [(SBControlCenterController *)self _updateWindowOrientation];

  [(SBControlCenterController *)self _updateWindowVisibility];
}

- (void)grabberTongueBeganPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  v8 = a6;
  v9 = a3;
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
  [v9 dismissWithStyle:0 animated:1];

  v11 = [(SBControlCenterController *)self viewController];
  [(SBControlCenterController *)self _presentGestureLocationInView];
  v13 = v12;
  v15 = v14;
  [(SBControlCenterController *)self _presentGestureTranslationInView:1];
  v17 = v16;
  v19 = v18;
  [(SBControlCenterController *)self _presentGestureVelocityInView];
  v21 = v20;
  v23 = v22;
  v24 = [(SBControlCenterController *)self _touchesForGesture:v8];

  [v11 beginPresentationWithLocation:v24 translation:v13 velocity:v15 touches:{v17, v19, v21, v23}];
}

- (void)grabberTongueUpdatedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  v17 = [(SBControlCenterController *)self viewController:a3];
  [(SBControlCenterController *)self _presentGestureLocationInView];
  v8 = v7;
  v10 = v9;
  [(SBControlCenterController *)self _presentGestureTranslationInView:0];
  v12 = v11;
  v14 = v13;
  [(SBControlCenterController *)self _presentGestureVelocityInView];
  [v17 updatePresentationWithLocation:v8 translation:v10 velocity:{v12, v14, v15, v16}];
}

- (void)grabberTongueEndedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  self->_presentationGestureContinuedIntoPaging = 0;
  [(SBControlCenterController *)self _presentGestureLocationInView:a3];
  v8 = v7;
  v10 = v9;
  [(SBControlCenterController *)self _presentGestureTranslationInView:0];
  v12 = v11;
  v14 = v13;
  [(SBControlCenterController *)self _presentGestureVelocityInView];
  v16 = v15;
  v18 = v17;
  v19 = [(SBControlCenterController *)self viewController];
  [v19 endPresentationWithLocation:v8 translation:v10 velocity:{v12, v14, v16, v18}];

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
  v21 = [MEMORY[0x277D6A798] sharedInstance];
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
  [v21 logBlock:v22];
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

- (void)grabberTongueCanceledPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  if (self->_presentationGestureContinuedIntoPaging)
  {

    [(SBControlCenterController *)self grabberTongueEndedPulling:a3 withDistance:a6 andVelocity:a4 andGesture:a5];
  }

  else
  {
    [(SBControlCenterController *)self _disableReachability:a3];
    v7 = [(SBControlCenterController *)self viewController];
    [(SBControlCenterController *)self _presentGestureLocationInView];
    v9 = v8;
    v11 = v10;
    [(SBControlCenterController *)self _presentGestureTranslationInView:0];
    v13 = v12;
    v15 = v14;
    [(SBControlCenterController *)self _presentGestureVelocityInView];
    [v7 cancelPresentationWithLocation:v9 translation:v11 velocity:{v13, v15, v16, v17}];

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

- (id)customGestureRecognizerForGrabberTongue:(id)a3
{
  v3 = [(SBControlCenterController *)self presentingEdge];
  if (v3 == 4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 6;
  }

  v5 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:0 action:0 type:v4 options:0];
  [(UIScreenEdgePanGestureRecognizer *)v5 setEdges:v3];

  return v5;
}

- (void)controlCenterViewController:(id)a3 wantsHostStatusBarHidden:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  hideStatusBarAssertion = self->_hideStatusBarAssertion;
  if (v4)
  {
    if (hideStatusBarAssertion)
    {
      goto LABEL_7;
    }

    v13 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v9 = [WeakRetained statusBarManager];
    v10 = [v9 assertionManager];
    v11 = [v10 acquireHideFrontmostStatusBarAssertionForReason:@"Control Center Transitioning"];
    v12 = self->_hideStatusBarAssertion;
    self->_hideStatusBarAssertion = v11;
  }

  else
  {
    if (!hideStatusBarAssertion)
    {
      goto LABEL_7;
    }

    v13 = v6;
    [(BSSimpleAssertion *)hideStatusBarAssertion invalidate];
    WeakRetained = self->_hideStatusBarAssertion;
    self->_hideStatusBarAssertion = 0;
  }

  v6 = v13;
LABEL_7:
}

- (id)reachabilitySpringAnimationBehaviorForControlCenterViewController:(id)a3
{
  v3 = +[SBReachabilityDomain rootSettings];
  v4 = [v3 animationSettings];

  return v4;
}

- (void)controlCenterViewController:(id)a3 didChangePresentationState:(unint64_t)a4
{
  v6 = a3;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      [(SBControlCenterController *)self _didEndTransition];
      [(SBControlCenterController *)self _didPresent];
      v7 = MEMORY[0x277D75D18];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __84__SBControlCenterController_controlCenterViewController_didChangePresentationState___block_invoke;
      v17 = &unk_2783A8C18;
      v18 = self;
      v8 = &v14;
    }

    else
    {
      if (a4 != 3)
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
      v13 = self;
      v8 = &v9;
    }

    [v7 animateWithDuration:v8 animations:{0.35, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18}];
    goto LABEL_11;
  }

  if (a4)
  {
    if (a4 == 1)
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

- (void)controlCenterViewController:(id)a3 significantPresentationProgressChange:(double)a4
{
  v19 = a3;
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
      v12 = [v7 zStackResolver];
      v13 = [v12 acquireParticipantWithIdentifier:19 delegate:self];
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
    v10 = [(SBBarSwipeAffordanceViewController *)v8 view];
    v9 = [v10 isTrackingHomeGestureOfType:1];

    goto LABEL_10;
  }

  if (v8)
  {
    v9 = 0;
LABEL_10:
    v11 = [(SBBarSwipeAffordanceViewController *)v8 wantsToBeActiveAffordance];
    [(SBBarSwipeAffordanceViewController *)v8 setWantsToBeActiveAffordance:v9];
    if (v9 == v11)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = self->_zStackParticipant;
  if (v15)
  {
    [(SBFZStackParticipant *)v15 invalidate];
    v12 = self->_zStackParticipant;
    self->_zStackParticipant = 0;
    goto LABEL_16;
  }

LABEL_18:
  if (self->_asynchronousRenderingAssertion && BSFloatIsZero() && [v19 transitionState] == 2 && objc_msgSend(v19, "presentationState") == 3)
  {
    [(BSSimpleAssertion *)self->_asynchronousRenderingAssertion invalidate];
    asynchronousRenderingAssertion = self->_asynchronousRenderingAssertion;
    self->_asynchronousRenderingAssertion = 0;
  }

  [(SBControlCenterController *)self _updateWindowContentHitTesting];
}

- (void)controlCenterViewControllerWillContinuePresentationIntoPaging:(id)a3
{
  v4 = SBLogSystemGestureControlCenter();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Control Center will continue presentation gesture into paging", v5, 2u);
  }

  self->_presentationGestureContinuedIntoPaging = 1;
}

- (void)willOpenExpandedModuleForControlCenterViewController:(id)a3
{
  v3 = +[SBReachabilityManager sharedInstance];
  [v3 setReachabilityTemporarilyDisabled:1 forReason:@"Control Center Module"];
}

- (void)didCloseExpandedModuleForControlCenterViewController:(id)a3
{
  v3 = +[SBReachabilityManager sharedInstance];
  [v3 setReachabilityTemporarilyDisabled:0 forReason:@"Control Center Module"];
}

- (void)didRequestPowerDownTransientOverlayForControlCenterViewController:(id)a3
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

  v9 = [SBApp bannerManager];
  v7 = [v9 acquireBannerSuppressionAssertionForReason:@"Control Center Transitioning"];
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBControlCenterController.m" lineNumber:1117 description:@"we should have cleared this assertion in _willDismiss"];
}

- (void)_didPresent
{
  [(SBControlCenterController *)self _updateWindowVisibility];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained coverSheetViewController];
  [v3 externalBehaviorProviderBehaviorChanged:self];
  [v3 externalPresentationProviderPresentationChanged:self];
  v4 = [(SBControlCenterController *)self idleTimerCoordinator];
  v5 = [(SBControlCenterController *)self coordinatorRequestedIdleTimerBehavior:v4];
  v6 = [v4 idleTimerProvider:self didProposeBehavior:v5 forReason:@"Control Center Visible"];
  v7 = objc_loadWeakRetained(&self->_controlCenterCoordinator);
  [v7 notifyObserversThatControlCenterController:self didPresentOnWindowScene:WeakRetained];

  [(SBFWindow *)self->_window makeKeyWindow];
  v8 = [MEMORY[0x277D65DD0] sharedInstance];
  [v8 emitEvent:47];
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBControlCenterController.m" lineNumber:1158 description:@"skipped _willDismiss"];
}

- (void)_updateWindowOrientation
{
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleControlCenter") & 1) == 0)
  {
    v3 = [SBApp activeInterfaceOrientation];
    if ([(SBControlCenterWindow *)self->_window _windowInterfaceOrientation]!= v3)
    {
      window = self->_window;

      [(SBControlCenterWindow *)window _legacySetRotatableViewOrientation:v3 updateStatusBar:0 duration:1 force:0.0];
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
    v4 = [(SBControlCenterController *)self viewController];
    v3 = [v4 presentationState] == 0;
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
  v3 = [(SBControlCenterController *)self allowGestureForContentBelow];
  v5 = [(SBControlCenterWindow *)self->_window rootViewController];
  v4 = [v5 viewIfLoaded];
  [v4 bs_setHitTestingDisabled:v3];
}

- (void)_setStatusBarHidden:(BOOL)a3
{
  statusBarAssertion = self->_statusBarAssertion;
  if (a3)
  {
    if (statusBarAssertion)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v6 = [WeakRetained statusBarManager];
    v10 = [v6 assertionManager];

    v7 = [(SBWindowSceneStatusBarSettingsAssertion *)v10 newSettingsAssertionWithStatusBarHidden:1 atLevel:12 reason:@"Control Center Visible"];
    v8 = self->_statusBarAssertion;
    self->_statusBarAssertion = v7;

    [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion acquire];
    v9 = v10;
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

- (void)activityDidChangeForSensorActivityDataProvider:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sensorActivityDataProvider);

  v5 = WeakRetained;
  if (WeakRetained == v4)
  {
    [(CCUIMainViewController *)self->_viewController setSensorActivityDataProvider:WeakRetained];
    v5 = WeakRetained;
  }
}

- (void)_screenDidDim
{
  v3 = [(SBControlCenterController *)self viewController];
  [v3 displayWillTurnOff];

  [(SBControlCenterController *)self dismissAnimated:0];
}

- (void)_policyAggregatorCapabilitiesDidChange:(id)a3
{
  v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v5 = [v4 policyAggregator];

  if (([v5 allowsCapability:15] & 1) == 0)
  {
    [(SBControlCenterController *)self dismissAnimated:1];
  }
}

- (id)_touchesForGesture:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 _activeEventOfType:0];
    if (v5)
    {
      v6 = [v3 _activeTouchesForEvent:v5];
      v4 = [v6 allObjects];

      if (!v4)
      {
        v7 = SBLogCommon();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

        if (v8)
        {
          NSLog(&cfstr_FailedToFindAc.isa, v3, v5);
        }
      }
    }

    else
    {
      v9 = SBLogCommon();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

      if (v10)
      {
        NSLog(&cfstr_FailedToFindAn.isa, v3);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (CGPoint)_presentGestureLocationInView
{
  v3 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v4 = [(SBControlCenterController *)self viewController];
  v5 = [v4 view];
  [v3 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)_presentGestureTranslationInView:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBControlCenterController *)self presentingEdge];
  v6 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v7 = [(SBControlCenterController *)self viewController];
  v8 = [v7 view];
  if (v3 && v5 == 1)
  {
    v9 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
    [v6 setTranslation:v8 inView:{*MEMORY[0x277CBF348], v10}];
  }

  else
  {
    [v6 translationInView:v8];
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
  v3 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
  v4 = [(SBControlCenterController *)self viewController];
  v5 = [v4 view];
  [v3 velocityInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)_locationOfTouchInActiveInterfaceOrientation:(id)a3 gestureRecognizer:(id)a4
{
  v5 = a4;
  [a3 locationInView:0];
  [SBApp activeInterfaceOrientation];
  v6 = [v5 view];

  [v6 size];
  _UIWindowConvertPointFromOrientationToOrientation();
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (BOOL)_isLocationXWithinTrailingStatusBarRegion:(double)a3 regionPadding:(double)a4
{
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;

  [(SBControlCenterController *)self _trailingStatusBarRegionWidth];
  v11 = v10 + a4;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v12 = v11 > a3;
  }

  else
  {
    v12 = v9 - v11 < a3;
  }

  v13 = [MEMORY[0x277D6A798] sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__SBControlCenterController__isLocationXWithinTrailingStatusBarRegion_regionPadding___block_invoke;
  v15[3] = &__block_descriptor_49_e19___NSDictionary_8__0l;
  v16 = v12;
  *&v15[4] = v9;
  *&v15[5] = v11;
  [v13 logBlock:v15];

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

- (void)_updateWindowLevelForScene:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(SBWindowLevelAssertionManager *)self->_windowLevelAssertionManager highestPriorityWindowLevelAssertionForWindowScene:a3];
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

- (void)_updateWindowForScene:(id)a3
{
  obj = a3;
  if (!self->_window || (WeakRetained = objc_loadWeakRetained(&self->_windowScene), WeakRetained, v5 = obj, WeakRetained != obj))
  {
    v6 = self->_homeAffordanceViewController;
    if (!v6)
    {
      v6 = self->_homeButtonWrapperViewController;
      if (!v6)
      {
        v6 = [(SBControlCenterController *)self viewController];
      }
    }

    v7 = v6;
    v8 = [(SBWindow *)[SBControlCenterWindow alloc] initWithWindowScene:obj rootViewController:v6 role:@"SBTraitsParticipantRoleControlCenter" debugName:@"ControlCenterWindow"];
    window = self->_window;
    self->_window = v8;

    [(SBControlCenterWindow *)self->_window setWindowLevel:*MEMORY[0x277D76EE8] + 30.0];
    v10 = +[SBReachabilityManager sharedInstance];
    [v10 ignoreWindowForReachability:self->_window];

    [(SBWindow *)self->_window setHidden:1];
    v11 = [(SBControlCenterWindow *)self->_window rootViewController];
    [v11 bs_endAppearanceTransition:0];

    objc_storeWeak(&self->_windowScene, obj);
    v12 = [[SBGrabberTongue alloc] initWithDelegate:self edge:[(SBControlCenterController *)self presentingEdge] type:56 windowScene:obj];
    grabberTongue = self->_grabberTongue;
    self->_grabberTongue = v12;

    [(SBGrabberTongue *)self->_grabberTongue setName:@"ControlCenterGrabberTongue"];
    [(SBGrabberTongue *)self->_grabberTongue installInView:self->_window withColorStyle:0];
    [(SBControlCenterSystemAgent *)self->_systemAgent setWindowScene:obj];
    v14 = [obj coverSheetViewController];
    [v14 registerExternalBehaviorProvider:self];
    [v14 registerExternalPresentationProvider:self];
    [v14 registerExternalAppearanceProvider:self];
    [(SBControlCenterController *)self _setupGestureRecognizersForUpdatedWindowScene];
    [(SBControlCenterController *)self _setupPhysicalButtonPreferencesForUpdatedWindowScene];

    v5 = obj;
  }
}

- (void)_setupGestureRecognizersForUpdatedWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained systemGestureManager];

  v5 = [(SBControlCenterController *)self presentingEdge];
  if (v5 == 1)
  {
    v6 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handleStatusBarPullDownGesture_];
    statusBarPullGestureRecognizer = self->_statusBarPullGestureRecognizer;
    self->_statusBarPullGestureRecognizer = v6;

    [(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer setAllowedTouchTypes:&unk_28336E490];
    [(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
    [(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer setDelegate:self];
    [v4 addGestureRecognizer:self->_statusBarPullGestureRecognizer withType:57];
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
    v14 = [v13 coverSheetSlidingViewController];
    v15 = [v14 indirectPresentGestureRecognizer];

    [v15 requireGestureRecognizerToFail:self->_indirectStatusBarPullGestureRecognizer];
    [v4 addGestureRecognizer:self->_indirectStatusBarPullGestureRecognizer withType:58];
    [v4 gestureRecognizerOfType:135 shouldBeRequiredToFailByGestureRecognizer:self->_indirectStatusBarPullGestureRecognizer];
  }

  if ([(SBControlCenterController *)self _supportsReachability])
  {
    v16 = +[SBReachabilityManager sharedInstance];
    [v16 addObserver:self];
    if (v5 == 1)
    {
      v17 = [v16 dismissPanGestureRecognizer];
      v18 = v17;
      if (self->_statusBarPullGestureRecognizer)
      {
        [v17 requireGestureRecognizerToFail:?];
      }

      v19 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
      v20 = v18;
      v21 = v19;
    }

    else
    {
      v18 = [v16 dismissEdgeGestureRecognizer];
      if (!v18)
      {
LABEL_11:

        goto LABEL_12;
      }

      v20 = [(SBGrabberTongue *)self->_grabberTongue edgePullGestureRecognizer];
      v19 = v20;
      v21 = v18;
    }

    [v20 requireGestureRecognizerToFail:v21];

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
  v3 = [(SBControlCenterController *)self window];
  v19 = [v3 windowScene];

  v4 = [v19 _FBSScene];
  v5 = [v4 identity];

  v6 = MEMORY[0x277D65F10];
  v7 = [MEMORY[0x277CF0CD0] processHandle];
  v8 = [v7 auditToken];
  v9 = [v6 targetWithPhysicalButton:1 generation:2 auditToken:v8 identifier:2];

  v10 = MEMORY[0x277D65F10];
  v11 = [MEMORY[0x277CF0CD0] processHandle];
  v12 = [v11 auditToken];
  v13 = [v10 targetWithPhysicalButton:2 generation:2 auditToken:v12 identifier:2];

  v14 = [MEMORY[0x277D65F00] targetWithSceneIdentity:v5];
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
  v2 = self;
  v71 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained sceneManager];
  v5 = [v4 policyAggregator];

  if (objc_opt_respondsToSelector())
  {
    v6 = v5;
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
  v23 = [WeakRetained lockScreenManager];
  v24 = [v23 isUILocked];
  v25 = v24;
  v58 = v23;
  if (v24)
  {
    v54 = WeakRetained;
    v26 = v5;
    v27 = v19;
    v28 = v2;
    v29 = [v23 lockScreenEnvironment];
    v30 = [v29 behaviorSuppressor];
    v31 = [v30 suppressesControlCenter];

    if (v31)
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

    v2 = v28;
    v19 = v27;
    v5 = v26;
    WeakRetained = v54;
  }

  v57 = [WeakRetained transientOverlayPresenter];
  if ([v57 shouldDisableControlCenter])
  {
    v56 = v19;
    v33 = SBLogSystemGestureControlCenter();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "Not allowing transition because transient overlay suppresses CC.", buf, 2u);
    }

    v9 = 0;
    v34 = v8;
    v8 = @"ControlCenterNotAllowedBecauseTransientOverlaySuppressesCC";
LABEL_37:

    v19 = v56;
    goto LABEL_40;
  }

  v35 = [WeakRetained switcherController];
  v34 = v35;
  if ((v25 & 1) == 0 && ([(__CFString *)v35 isAnySwitcherVisible]& 1) == 0)
  {
    v56 = v19;
    v53 = v7;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v33 = [(__CFString *)v34 layoutStateApplicationSceneHandles];
    v41 = [v33 countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v41)
    {
      v42 = v41;
      v51 = v34;
      v52 = v5;
      v55 = WeakRetained;
      v43 = *v63;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v63 != v43)
          {
            objc_enumerationMutation(v33);
          }

          v45 = [*(*(&v62 + 1) + 8 * i) application];
          if ([v45 suppressesControlCenter])
          {
            v46 = SBLogSystemGestureControlCenter();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v47 = [v45 bundleIdentifier];
              *buf = 138543362;
              v70 = v47;
              _os_log_impl(&dword_21ED4E000, v46, OS_LOG_TYPE_DEFAULT, "Not allowing transition because the top app (%{public}@) suppresses CC.", buf, 0xCu);
            }

            v48 = MEMORY[0x277CCACA8];
            v49 = [v45 bundleIdentifier];
            v50 = [v48 stringWithFormat:@"ControlCenterNotAllowedBecauseTopAppSuppressesCC (%@)", v49];

            v9 = 0;
            v8 = v50;
          }
        }

        v42 = [v33 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v42);
      v7 = v53;
      WeakRetained = v55;
      v5 = v52;
      v34 = v51;
    }

    goto LABEL_37;
  }

LABEL_40:

  if ([(SBControlCenterController *)v2 presentingEdge]== 4)
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

  v38 = [MEMORY[0x277D6A798] sharedInstance];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __43__SBControlCenterController_canBePresented__block_invoke;
  v59[3] = &unk_2783B1200;
  v61 = v9;
  v60 = v8;
  v39 = v8;
  [v38 logBlock:v59];

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
  v3 = [(SBControlCenterController *)self isDismissedOrDismissing];
  if (v3)
  {

    LOBYTE(v3) = [(SBControlCenterController *)self canBePresented];
  }

  return v3;
}

- (BOOL)_shouldAllowControlCenterGesture
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained systemGestureManager];
  v5 = [v4 isGestureWithTypeAllowed:56];

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
  v10 = [v9 reachabilityModeActive];

  if ((v10 & 1) == 0 && ([(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer state]== 1 || [(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer state]== 2 || [(UIPanGestureRecognizer *)self->_statusBarPullGestureRecognizer state]== 3))
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

  v12 = [SBApp bannerManager];
  v13 = [v12 isDisplayingFullScreenBannerInWindowScene:WeakRetained];

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

  v15 = [MEMORY[0x277D6A798] sharedInstance];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SBControlCenterController__shouldAllowControlCenterGesture__block_invoke;
  v17[3] = &unk_2783B1200;
  v19 = v5;
  v18 = v6;
  [v15 logBlock:v17];

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

- (id)_newSystemApertureRestrictionAssertionForType:(unint64_t)a3 withReason:(id)a4
{
  v5 = a4;
  if (a3 == 1)
  {
    v6 = [SBApp systemApertureControllerForMainDisplay];
    v7 = [v6 restrictSystemApertureToInertWithReason:v5];
  }

  else
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v6 = [SBApp systemApertureControllerForMainDisplay];
    v7 = [v6 restrictSystemApertureToDefaultLayoutWithReason:v5];
  }

  v8 = v7;

LABEL_7:
  return v8;
}

- (void)restrictSystemApertureToType:(unint64_t)a3 withReason:(id)a4
{
  v6 = a4;
  if (a3 != 1 || !BSEqualStrings() || (+[SBSystemApertureDomain rootSettings](SBSystemApertureDomain, "rootSettings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 suppressWhilePresentingControlCenter], v7, v8))
  {
    v9 = [(SBControlCenterController *)self systemApertureAssertionForRestrictionType];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v11 = [v9 objectForKey:v10];

    if (!v11)
    {
      v12 = [(SBControlCenterController *)self _newSystemApertureRestrictionAssertionForType:a3 withReason:v6];
      if (v12)
      {
        objc_initWeak(&location, self);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __69__SBControlCenterController_restrictSystemApertureToType_withReason___block_invoke;
        v18[3] = &unk_2783B7890;
        objc_copyWeak(v19, &location);
        v19[1] = a3;
        [v12 addInvalidationBlock:v18];
        v13 = [(SBControlCenterController *)self systemApertureAssertionForRestrictionType];

        if (!v13)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
          systemApertureAssertionForRestrictionType = self->_systemApertureAssertionForRestrictionType;
          self->_systemApertureAssertionForRestrictionType = v14;
        }

        v16 = [(SBControlCenterController *)self systemApertureAssertionForRestrictionType];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
        [v16 setObject:v12 forKey:v17];

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

- (void)invalidateSystemApertureAssertionForType:(unint64_t)a3 withReason:(id)a4
{
  v9 = a4;
  v6 = [(SBControlCenterController *)self systemApertureAssertionForRestrictionType];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    [v8 invalidateWithReason:v9];
  }
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (UICoordinateSpace)presentationCoordinateSpace
{
  v2 = [(SBControlCenterController *)self viewController];
  v3 = [v2 view];

  return v3;
}

- (NSArray)presentationRegions
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([(SBControlCenterController *)self isPresented])
  {
    v3 = MEMORY[0x277D02C80];
    v4 = [(SBControlCenterController *)self viewController];
    v5 = [v4 view];
    v6 = [v3 regionForCoordinateSpace:v5];
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
    v5 = [(SBControlCenterController *)self appearanceIdentifier];
    v6 = [v4 identifier:v5];
    v7 = [v6 priority:50];
    v8 = [v7 suppressTeachableMomentsAnimation:1];
    [v3 addObject:v8];
  }

  return v3;
}

- (id)hasExistingControlFromExtension:(id)a3
{
  v3 = [(CCUIMainViewController *)self->_viewController existingControlKindFromWidgetExtension:a3];
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

- (void)launchControl:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogWidgets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Launch control: %{public}@", buf, 0xCu);
  }

  if ([(SBControlCenterController *)self isPresented])
  {
    [(CCUIMainViewController *)self->_viewController addIfNecessaryAndScrollToControlMatching:v6 animated:1];
    v7[2](v7, 0);
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__SBControlCenterController_launchControl_completion___block_invoke;
    v9[3] = &unk_2783AE5A0;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
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

- (void)homeGesturePerformedForBarSwipeAffordanceView:(id)a3
{
  v4 = [(SBControlCenterController *)self viewController];
  v5 = [v4 canDismissPresentedContent];

  if (v5)
  {
    v6 = [(SBControlCenterController *)self viewController];
    [v6 dismissPresentedContent];
  }

  else
  {

    [(SBControlCenterController *)self dismissAnimated:1 completion:0];
  }
}

- (void)homeGrabberViewDidReceiveClick:(id)a3
{
  v4 = [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController zStackParticipant];
  v5 = v4;
  if (v4 && [v4 ownsHomeGesture])
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

- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4
{
  if ((a4 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21F8A6E50[a4 - 1];
  }
}

- (id)hideAnimationSettingsForBarSwipeAffordanceView:(id)a3
{
  v4 = [MEMORY[0x277D65E80] rootSettings];
  v5 = [v4 hideForHomeGestureOwnershipAnimationSettings];
  v6 = [v5 BSAnimationSettings];
  v7 = [v6 mutableCopy];

  [(SBControlCenterController *)self _homeAffordanceAnimationDelay];
  v9 = v8;
  [v7 delay];
  [v7 setDelay:v9 + v10];

  return v7;
}

- (id)unhideAnimationSettingsForBarSwipeAffordanceView:(id)a3
{
  v4 = [MEMORY[0x277D65E80] rootSettings];
  v5 = [v4 unhideForHomeGestureOwnershipAnimationSettings];
  v6 = [v5 BSAnimationSettings];
  v7 = [v6 mutableCopy];

  [(SBControlCenterController *)self _homeAffordanceAnimationDelay];
  v9 = v8;
  [v7 delay];
  [v7 setDelay:v9 + v10];

  return v7;
}

- (double)_homeAffordanceAnimationDelay
{
  v2 = [(SBControlCenterController *)self viewController];
  v3 = [v2 moduleRowCount];

  v4 = 8;
  if (v3 < 8)
  {
    v4 = v3;
  }

  return (v4 + 1) * 0.016;
}

- (BOOL)_isStatusBarHiddenIgnoringControlCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained statusBarManager];
  v5 = [v4 assertionManager];

  if (*&self->_hideStatusBarAssertion == 0)
  {
    IsZero = [v5 isFrontmostStatusBarHidden];
  }

  else
  {
    v6 = [WeakRetained switcherController];
    if ([v6 unlockedEnvironmentMode] == 3)
    {
      IsZero = [v6 isInAppStatusBarHidden];
    }

    else
    {
      v7 = [v5 statusBarSettingsForLevel:7];
      v8 = [v7 alpha];
      [v8 doubleValue];
      IsZero = BSFloatIsZero();
    }
  }

  return IsZero;
}

- (CCUIStatusBarStyleSnapshot)hostStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained statusBarManager];
  v5 = [v4 assertionManager];
  v6 = [WeakRetained lockScreenManager];
  v7 = [v6 isUILocked];

  if (v7)
  {
    v40 = [v5 isFrontmostStatusBarHidden];
    if ([(SBControlCenterController *)self isPresentedOrDismissing])
    {
      v8 = [v5 effectiveStatusBarStyleRequestWithSettings:0];
      v9 = v8;
    }

    else
    {
      v9 = [v4 leadingStatusBarStyleRequest];
      v8 = [v4 trailingStatusBarStyleRequest];
    }

    v12 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = *MEMORY[0x277D768C8];
    v22 = *(MEMORY[0x277D768C8] + 8);
    v24 = *(MEMORY[0x277D768C8] + 16);
    v26 = *(MEMORY[0x277D768C8] + 24);
    v10 = [WeakRetained coverSheetViewController];
    v30 = [v10 shouldShowLockStatusBarTime];
    v31 = *MEMORY[0x277D775B8];
    if (v30)
    {
      v31 = 0;
    }

    v29 = v31;
    v28 = 0;
    v27 = 0;
  }

  else
  {
    v40 = [(SBControlCenterController *)self _isStatusBarHiddenIgnoringControlCenter];
    v9 = [v4 leadingStatusBarStyleRequest];
    v8 = [v4 trailingStatusBarStyleRequest];
    v10 = [WeakRetained switcherController];
    [v10 statusBarAvoidanceFrameForLayoutRole:2];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v10 statusBarEdgeInsets];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [v10 statusBarOverlayData];
    v28 = [v10 statusBarActionsByPartIdentifier];
    v29 = 0;
  }

  if (!__sb__runningInSpringBoard())
  {
    v32 = [MEMORY[0x277D75418] currentDevice];
    v33 = [v32 userInterfaceIdiom];

    if (v33)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
LABEL_14:
    [v4 avoidanceFrameForStatusBar:0];
    v12 = v34;
    v14 = v35;
    v16 = v36;
    v18 = v37;
  }

LABEL_15:
  v38 = [objc_alloc(MEMORY[0x277CFC8A0]) initWithHidden:v40 hiddenPartIdentifier:v29 leadingStyleRequest:v9 trailingStyleRequest:v8 overlayData:v27 actionsByPartIdentifier:v28 statusBarInsets:v20 avoidanceFrame:{v22, v24, v26, v12, v14, v16, v18}];

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
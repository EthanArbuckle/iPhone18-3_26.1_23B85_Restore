@interface SBProximityReaderUISceneController
+ (id)_setupInfo;
- (BOOL)handleBackgroundActivity:(id)a3 handler:(id)a4;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (SBProximityReaderUISceneController)initWithSceneWorkspaceIdentifier:(id)a3 clientProcessIdentity:(id)a4 sceneVendingPolicy:(int64_t)a5 traitsRole:(id)a6 jobLabel:(id)a7 level:(double)a8;
- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4;
- (void)_addHandlingBackgroundActivity:(id)a3;
- (void)_handleActionForHomeAffordanceView:(id)a3;
- (void)_removeHandlingBackgroundActivity:(id)a3;
- (void)_updateHomeAffordance:(BOOL)a3 window:(id)a4;
- (void)addProximityReaderObserver:(id)a3;
- (void)dealloc;
- (void)removeProximityReaderObserver:(id)a3;
- (void)scenePresenter:(id)a3 didPresentScene:(id)a4;
- (void)scenePresenter:(id)a3 updateHomeAffordance:(BOOL)a4 forScene:(id)a5;
- (void)scenePresenter:(id)a3 willDismissScene:(id)a4;
- (void)setDefaultPresenter:(id)a3;
- (void)willEnableSecureRendering:(id)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBProximityReaderUISceneController

- (SBProximityReaderUISceneController)initWithSceneWorkspaceIdentifier:(id)a3 clientProcessIdentity:(id)a4 sceneVendingPolicy:(int64_t)a5 traitsRole:(id)a6 jobLabel:(id)a7 level:(double)a8
{
  v21.receiver = self;
  v21.super_class = SBProximityReaderUISceneController;
  v8 = [(SBSystemUISceneController *)&v21 initWithSceneWorkspaceIdentifier:a3 clientProcessIdentity:a4 sceneVendingPolicy:a5 traitsRole:a6 jobLabel:a7 level:a8];
  v9 = v8;
  if (v8)
  {
    v8->_presenting = 0;
    v10 = [SBApp lockOutController];
    v11 = objc_opt_class();
    v12 = v10;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    lockOutController = v9->_lockOutController;
    v9->_lockOutController = v14;

    [(SBFDeviceLockOutController *)v9->_lockOutController setProximityReaderBlockProvider:v9];
    v16 = +[SBSceneManagerCoordinator sharedInstance];
    v17 = [v16 sceneDeactivationManager];
    v18 = [v17 newAssertionWithReason:7];
    sceneDeactivationAssertion = v9->_sceneDeactivationAssertion;
    v9->_sceneDeactivationAssertion = v18;
  }

  return v9;
}

- (void)dealloc
{
  [(SBFDeviceLockOutController *)self->_lockOutController setProximityReaderBlockProvider:0];
  [(UIApplicationSceneDeactivationAssertion *)self->_sceneDeactivationAssertion relinquish];
  sceneDeactivationAssertion = self->_sceneDeactivationAssertion;
  self->_sceneDeactivationAssertion = 0;

  v4.receiver = self;
  v4.super_class = SBProximityReaderUISceneController;
  [(SBSystemUISceneController *)&v4 dealloc];
}

+ (id)_setupInfo
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"class";
  v5[0] = objc_opt_class();
  v5[1] = MEMORY[0x277CBEC38];
  v4[1] = @"enabled";
  v4[2] = @"traitsRole";
  v4[3] = @"presentationStyle";
  v5[2] = @"SBTraitsParticipantRoleSystemUIScene";
  v5[3] = &unk_283372428;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

- (void)setDefaultPresenter:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SBProximityReaderUISceneController;
  [(SBSystemUISceneController *)&v5 setDefaultPresenter:v4];
  [v4 setShouldPublishAsDisplayLayoutElement:1];
  if (objc_opt_respondsToSelector())
  {
    [v4 setPresentingDelegate:self];
  }
}

- (BOOL)handleHomeButtonPress
{
  v3 = [(SBSUIFeaturePolicyHostComponent *)self->_featurePolicyComponent desiredHardwareButtonEvents];
  if ((v3 & 0x10) != 0)
  {
    v4 = [objc_alloc(MEMORY[0x277D67CA0]) initWithButtonEvents:16 withHandler:&__block_literal_global_434];
    featurePolicyComponent = self->_featurePolicyComponent;
    v6 = [MEMORY[0x277CBEB98] setWithObject:v4];
    [(SBSUIFeaturePolicyHostComponent *)featurePolicyComponent sendActions:v6];
  }

  return (v3 >> 4) & 1;
}

- (BOOL)handleLockButtonPress
{
  v3 = [(SBSUIFeaturePolicyHostComponent *)self->_featurePolicyComponent desiredHardwareButtonEvents];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D67CA0]) initWithButtonEvents:1 withHandler:&__block_literal_global_33_4];
    featurePolicyComponent = self->_featurePolicyComponent;
    v6 = [MEMORY[0x277CBEB98] setWithObject:v4];
    [(SBSUIFeaturePolicyHostComponent *)featurePolicyComponent sendActions:v6];
  }

  return v3 & 1;
}

- (BOOL)handleBackgroundActivity:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[SBProximityReaderUISceneController _isHandlingBackgroundActivity:](self, "_isHandlingBackgroundActivity:", v6) || (-[SBSUIFeaturePolicyHostComponent desiredBackgroundActivities](self->_featurePolicyComponent, "desiredBackgroundActivities"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v6], v8, !v9))
  {
    v14 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = objc_alloc(MEMORY[0x277D67C60]);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __71__SBProximityReaderUISceneController_handleBackgroundActivity_handler___block_invoke;
    v19 = &unk_2783B08A8;
    objc_copyWeak(&v22, &location);
    v20 = v6;
    v21 = v7;
    v11 = [v10 initWithBackgroundActivityIdentifier:v20 handler:&v16];
    featurePolicyComponent = self->_featurePolicyComponent;
    v13 = [MEMORY[0x277CBEB98] setWithObject:{v11, v16, v17, v18, v19}];
    [(SBSUIFeaturePolicyHostComponent *)featurePolicyComponent sendActions:v13];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    v14 = 1;
  }

  return v14;
}

void __71__SBProximityReaderUISceneController_handleBackgroundActivity_handler___block_invoke(id *a1, char a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__SBProximityReaderUISceneController_handleBackgroundActivity_handler___block_invoke_2;
    v6[3] = &unk_2783AAC68;
    v9 = a2;
    v6[4] = WeakRetained;
    v7 = a1[4];
    v8 = a1[5];
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

uint64_t __71__SBProximityReaderUISceneController_handleBackgroundActivity_handler___block_invoke_2(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    v2 = result;
    [*(result + 32) _addHandlingBackgroundActivity:*(result + 40)];
    (*(v2[6] + 16))();
    v3 = v2[4];
    v4 = v2[5];

    return [v3 _removeHandlingBackgroundActivity:v4];
  }

  return result;
}

- (void)scenePresenter:(id)a3 didPresentScene:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 definition];
  v9 = [v8 specification];
  v10 = [v9 uiSceneSessionRole];

  v11 = objc_opt_new();
  v12 = [v11 uiSceneSessionRole];
  if ([v10 isEqual:v12])
  {
  }

  else
  {
    v13 = objc_opt_new();
    v14 = [v13 uiSceneSessionRole];
    v15 = [v10 isEqual:v14];

    if (!v15)
    {
      goto LABEL_41;
    }
  }

  self->_presenting = 1;
  v16 = objc_opt_class();
  v17 = [v7 componentForExtension:v16 ofClass:objc_opt_class()];
  v18 = objc_opt_class();
  v19 = v17;
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  statusBarComponent = self->_statusBarComponent;
  self->_statusBarComponent = v21;

  if (objc_opt_respondsToSelector())
  {
    v23 = self->_statusBarComponent;
    v24 = v6;
    [(SBSUIStatusBarSceneHostComponent *)v23 setDelegate:v24];
    [v24 statusBarSceneHostComponent:self->_statusBarComponent didChangePreferredStatusBarVisibilityWithAnimationSettings:0];
  }

  v25 = objc_opt_class();
  v26 = [v7 componentForExtension:v25 ofClass:objc_opt_class()];
  v27 = objc_opt_class();
  v28 = v26;
  if (v27)
  {
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  featurePolicyComponent = self->_featurePolicyComponent;
  self->_featurePolicyComponent = v30;

  if (objc_opt_respondsToSelector())
  {
    v32 = self->_featurePolicyComponent;
    v33 = v6;
    [(SBSUIFeaturePolicyHostComponent *)v32 setDelegate:v33];
    [v33 featurePolicyHostComponentDidChangeAllowsMenuButtonDismissal:self->_featurePolicyComponent];
    [v33 featurePolicyHostComponentDidChangeDesiredHardwareButtonEvents:self->_featurePolicyComponent];
    [v33 featurePolicyHostComponentDidChangeDesiredBackgroundActivities:self->_featurePolicyComponent];
  }

  v34 = objc_opt_class();
  v35 = [v7 componentForExtension:v34 ofClass:objc_opt_class()];
  v36 = objc_opt_class();
  v37 = v35;
  if (v36)
  {
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  v39 = v38;

  idleTimerComponent = self->_idleTimerComponent;
  self->_idleTimerComponent = v39;

  if (objc_opt_respondsToSelector())
  {
    v41 = self->_idleTimerComponent;
    v42 = v6;
    [(SBSUIIdleTimerSceneHostComponent *)v41 setDelegate:v42];
    [v42 idleTimerSceneHostComponentDidChangeShouldDisableIdleTimer:self->_idleTimerComponent];
  }

  if (!self->_suppressSystemGesturesAssertion)
  {
    v43 = +[SBSystemGestureManager deviceHardwareButtonGestureTypes];
    v44 = [v43 mutableCopy];

    [v44 addObject:&unk_283372440];
    v45 = +[SBSystemGestureManager mainDisplayManager];
    v46 = [v45 acquireSystemGestureDisableAssertionForReason:@"Prox Reader UI Presentation" exceptSystemGestureTypes:v44];
    suppressSystemGesturesAssertion = self->_suppressSystemGesturesAssertion;
    self->_suppressSystemGesturesAssertion = v46;
  }

  if (!self->_bannerSuppressionAssertion)
  {
    v48 = [SBApp bannerManager];
    v49 = [v48 acquireBannerSuppressionAssertionForReason:@"Prox Reader UI Presentation"];
    bannerSuppressionAssertion = self->_bannerSuppressionAssertion;
    self->_bannerSuppressionAssertion = v49;
  }

  if (!self->_suppressSystemApertureAssertion)
  {
    v51 = [SBApp systemApertureControllerForMainDisplay];
    v52 = [v51 systemApertureRepresentationSuppressionAssertionForProximityReaderVisibility];
    suppressSystemApertureAssertion = self->_suppressSystemApertureAssertion;
    self->_suppressSystemApertureAssertion = v52;
  }

  sceneDeactivationAssertion = self->_sceneDeactivationAssertion;
  v55 = [v7 settings];
  v56 = [v55 displayIdentity];
  [(UIApplicationSceneDeactivationAssertion *)sceneDeactivationAssertion sb_acquireForDisplayIdentity:v56];

  if (!self->_captureButtonSuppressionAssertion)
  {
    v57 = [SBApp captureButtonRestrictionCoordinator];
    v58 = [v57 inhibitCaptureButtonActionAssertionWithReason:@"Prox Reader UI Presentation"];
    captureButtonSuppressionAssertion = self->_captureButtonSuppressionAssertion;
    self->_captureButtonSuppressionAssertion = v58;
  }

  v60 = +[SBAlertItemsController sharedInstance];
  [v60 setForceAlertsToPend:1 forReason:@"Prox Reader UI Presentation"];
  [v60 moveActiveUnlockedAlertsToPendingWithAnimation:1 completion:0];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v61 = [(NSHashTable *)self->_observers copy];
  v62 = [v61 countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v67;
    do
    {
      v65 = 0;
      do
      {
        if (*v67 != v64)
        {
          objc_enumerationMutation(v61);
        }

        [*(*(&v66 + 1) + 8 * v65++) proximityReaderBlockStatusChanged:self];
      }

      while (v63 != v65);
      v63 = [v61 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v63);
  }

LABEL_41:
}

- (void)scenePresenter:(id)a3 willDismissScene:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [a4 definition];
  v6 = [v5 specification];
  v7 = [v6 uiSceneSessionRole];

  v8 = objc_opt_new();
  v9 = [v8 uiSceneSessionRole];
  if ([v7 isEqual:v9])
  {
  }

  else
  {
    v10 = objc_opt_new();
    v11 = [v10 uiSceneSessionRole];
    v12 = [v7 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  self->_presenting = 0;
  [(SBSUIStatusBarSceneHostComponent *)self->_statusBarComponent setDelegate:0];
  statusBarComponent = self->_statusBarComponent;
  self->_statusBarComponent = 0;

  [(SBSUIFeaturePolicyHostComponent *)self->_featurePolicyComponent setDelegate:0];
  featurePolicyComponent = self->_featurePolicyComponent;
  self->_featurePolicyComponent = 0;

  [(SBSUIIdleTimerSceneHostComponent *)self->_idleTimerComponent setDelegate:0];
  idleTimerComponent = self->_idleTimerComponent;
  self->_idleTimerComponent = 0;

  [(BSInvalidatable *)self->_suppressSystemGesturesAssertion invalidate];
  suppressSystemGesturesAssertion = self->_suppressSystemGesturesAssertion;
  self->_suppressSystemGesturesAssertion = 0;

  [(BSInvalidatable *)self->_bannerSuppressionAssertion invalidate];
  bannerSuppressionAssertion = self->_bannerSuppressionAssertion;
  self->_bannerSuppressionAssertion = 0;

  [(BSInvalidatable *)self->_suppressSystemApertureAssertion invalidate];
  suppressSystemApertureAssertion = self->_suppressSystemApertureAssertion;
  self->_suppressSystemApertureAssertion = 0;

  [(UIApplicationSceneDeactivationAssertion *)self->_sceneDeactivationAssertion relinquish];
  [(BSInvalidatable *)self->_captureButtonSuppressionAssertion invalidate];
  captureButtonSuppressionAssertion = self->_captureButtonSuppressionAssertion;
  self->_captureButtonSuppressionAssertion = 0;

  v20 = +[SBAlertItemsController sharedInstance];
  [v20 setForceAlertsToPend:0 forReason:@"Prox Reader UI Presentation"];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = [(NSHashTable *)self->_observers copy];
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v26 + 1) + 8 * v25++) proximityReaderBlockStatusChanged:self];
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v23);
  }

LABEL_12:
}

- (void)scenePresenter:(id)a3 updateHomeAffordance:(BOOL)a4 forScene:(id)a5
{
  v5 = a4;
  v12 = a5;
  v8 = a3;
  v9 = objc_opt_class();
  v10 = SBSafeCast(v9, v8);

  if (v10)
  {
    v11 = [v10 hostingWindowForScene:v12];
    [(SBProximityReaderUISceneController *)self _updateHomeAffordance:v5 window:v11];
  }
}

- (void)willEnableSecureRendering:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBProximityReaderUISceneController;
  [(SBSystemUISceneController *)&v4 willEnableSecureRendering:a3];
  [(SBSystemUISceneController *)self _invalidateAllSceneControllers];
}

- (void)addProximityReaderObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    v4 = v8;
  }
}

- (void)removeProximityReaderObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  homeAffordanceViewController = self->_homeAffordanceViewController;
  v5 = a4;
  [v5 setActivationPolicyForParticipantsBelow:{-[SBBarSwipeAffordanceViewController activationPolicyForParticipantsBelow](homeAffordanceViewController, "activationPolicyForParticipantsBelow")}];
}

- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4
{
  if (a4 == 1)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

- (void)_addHandlingBackgroundActivity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    handlingBackgroundActivities = self->_handlingBackgroundActivities;
    v8 = v4;
    if (!handlingBackgroundActivities)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = self->_handlingBackgroundActivities;
      self->_handlingBackgroundActivities = v6;

      handlingBackgroundActivities = self->_handlingBackgroundActivities;
    }

    [(NSMutableSet *)handlingBackgroundActivities addObject:v8];
    v4 = v8;
  }
}

- (void)_removeHandlingBackgroundActivity:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_handlingBackgroundActivities removeObject:?];
  }
}

- (void)_updateHomeAffordance:(BOOL)a3 window:(id)a4
{
  v4 = a3;
  v25 = a4;
  if ([(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController wantsToBeActiveAffordance]!= v4)
  {
    homeAffordanceViewController = self->_homeAffordanceViewController;
    if (v4)
    {
      if (!homeAffordanceViewController)
      {
        v7 = [SBBarSwipeAffordanceViewController alloc];
        v8 = [v25 _sbWindowScene];
        v9 = objc_opt_class();
        v10 = v8;
        if (v9)
        {
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v13 = v11;

        v14 = [(SBBarSwipeAffordanceViewController *)v7 initWithZStackParticipantIdentifier:20 windowScene:v13];
        v15 = self->_homeAffordanceViewController;
        self->_homeAffordanceViewController = v14;

        [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController setPointerClickDelegate:self];
        [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController setDelegate:self];
        v16 = [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController view];
        [v16 setDelegate:self];

        v17 = [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController view];
        [v17 addObserver:self];
      }

      v18 = [v25 rootViewController];
      v19 = objc_opt_class();
      v20 = v18;
      if (v19)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      [v22 addChildViewController:self->_homeAffordanceViewController];
      v23 = [v22 view];
      v24 = [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController view];
      [v23 addOverlayView:v24];

      [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController didMoveToParentViewController:v22];
      [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController setWantsToBeActiveAffordance:1];
    }

    else
    {
      [(SBBarSwipeAffordanceViewController *)homeAffordanceViewController setWantsToBeActiveAffordance:0];
      [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController willMoveToParentViewController:0];
      v12 = [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController view];
      [v12 removeFromSuperview];

      [(SBBarSwipeAffordanceViewController *)self->_homeAffordanceViewController removeFromParentViewController];
    }
  }
}

- (void)_handleActionForHomeAffordanceView:(id)a3
{
  v4 = [a3 _sbWindowScene];
  [(SBSystemUISceneController *)self _invalidateSceneControllersForWindowScene:v4];
}

@end
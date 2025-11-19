@interface SBTransientOverlayScenePresenter
- (BOOL)_isPresentationStatusBarHiddenForVisibility:(int)a3 currentExternalStatusBarSettings:(id)a4;
- (BOOL)activePresentationPreventsDragAndDrop;
- (BOOL)canActivePresentationBecomeLocalFirstResponder;
- (BOOL)canHandleButtonEvents;
- (BOOL)defaultShouldAutorotateForTransientOverlayViewController:(id)a3;
- (BOOL)handleDoubleHeightStatusBarTap;
- (BOOL)handleHeadsetButtonPress:(BOOL)a3;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVoiceCommandButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hasActivePresentation;
- (BOOL)hasActivePresentationFromBundleIdentifier:(id)a3;
- (BOOL)hasActivePresentationFromProcess:(id)a3;
- (BOOL)hasActiveSpotlightPresentation;
- (BOOL)hasIdleTimerBehaviors;
- (BOOL)hasPresentationAboveWindowLevel:(double)a3;
- (BOOL)hasVisibleStatusBar;
- (BOOL)isKeyboardVisibleForSpringBoardForTransientOverlayViewController:(id)a3;
- (BOOL)isPresentingViewController:(id)a3;
- (BOOL)isTopmostPresentationFromSceneWithIdentityTokenString:(id)a3;
- (BOOL)isTopmostPresentedViewController:(id)a3;
- (BOOL)prefersStatusBarActivityItemVisible;
- (BOOL)shouldDisableControlCenter;
- (BOOL)shouldDisableCoverSheetGesture;
- (BOOL)shouldDisableSiri;
- (BOOL)shouldUseSceneBasedKeyboardFocusForActivePresentation;
- (BOOL)transientOverlayViewControllerIsForegroundActive:(id)a3;
- (SBTransientOverlayScenePresenter)initWithWindowScene:(id)a3 alertItemsController:(id)a4 lockStateAggregator:(id)a5 zStackResolver:(id)a6 reachabilityManager:(id)a7;
- (SBTransientOverlayScenePresenterDelegate)delegate;
- (SBTransientOverlayViewController)topmostPresentedViewController;
- (SBTransientOverlayViewController)viewControllerForGestureDismissal;
- (SBWindowScene)windowScene;
- (UIStatusBarStyleRequest)currentStatusBarStyleRequest;
- (double)_backgroundWindowLevelForEntity:(id)a3;
- (double)topmostWindowLevel;
- (id)_buttonEventHandlingViewController;
- (id)_currentExternalStatusBarSettings;
- (id)_newKeyboardFocusAssertionForEntity:(id)a3;
- (id)_newSceneDeactivationAssertionWithReason:(int64_t)a3;
- (id)_topmostPresentedEntity;
- (id)coordinatorRequestedIdleTimerBehavior:(id)a3;
- (id)idleTimerProvider:(id)a3 didProposeBehavior:(id)a4 forReason:(id)a5;
- (id)keyboardFocusTargetForTopmostPresentingScene;
- (id)newContentStatusBarHiddenAssertionWithReason:(id)a3;
- (int)_preferredStatusBarVisibilityForEntity:(id)a3;
- (int64_t)defaultPreferredInterfaceOrientationForPresentationForTransientOverlayViewController:(id)a3;
- (int64_t)preferredGestureDismissalStyle;
- (int64_t)presentedViewControllerCount;
- (unint64_t)defaultSupportedInterfaceOrientationsForTransientOverlayViewController:(id)a3;
- (void)_applyProximityDetectionModeForEntity:(id)a3;
- (void)_applyWallpaperAnimationSuspensionAssertionForEntity:(id)a3;
- (void)_dismissEntity:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_getContentScale:(double *)a3 translation:(CGPoint *)a4 fromRect:(CGRect)a5 entity:(id)a6;
- (void)_handleCoverSheetWillPresent:(id)a3;
- (void)_invalidateAssertionsForEntity:(id)a3;
- (void)_preserveInputViewsForEntityIfNeeded:(id)a3;
- (void)_restoreInputViewsForEntityIfNeeded:(id)a3;
- (void)_updateBackgroundWindowForEntity:(id)a3;
- (void)_updateContentStatusBarPresentation;
- (void)_updateCurrentEntityHomeGrabberAnimated:(BOOL)a3;
- (void)_updateDeactivationAssertions;
- (void)_updateFeaturePolicies;
- (void)_updatePreferredWhitePointAdaptivityStyle;
- (void)_updateStatusBarWithCurrentExternalStatusBarSettings:(id)a3 animated:(BOOL)a4;
- (void)_updateWindowHitTestingForEntity:(id)a3;
- (void)_updateZStackStateWithAnimationBehavior:(int64_t)a3 reason:(id)a4;
- (void)_windowedAccessoryDidAttachOrDetach:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)homeGrabberViewDidReceiveClick:(id)a3;
- (void)homeGrabberViewDidUpdateHidden:(id)a3;
- (void)performDismissalRequest:(id)a3 outerCompletionHandler:(id)a4;
- (void)performPresentationRequest:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setBannerManager:(id)a3;
- (void)setCoverSheetPresentationManager:(id)a3;
- (void)setFluidDismissalState:(id)a3 forViewController:(id)a4;
- (void)setInCallPresentationManager:(id)a3;
- (void)transientOverlayViewControllerDidEndRotation:(id)a3;
- (void)transientOverlayViewControllerDidUpdateHIDEventDeferringDisabled:(id)a3;
- (void)transientOverlayViewControllerDidUpdatePresentationPrefersStatusBarHidden:(id)a3;
- (void)transientOverlayViewControllerNeedsContentOpaqueUpdate:(id)a3;
- (void)transientOverlayViewControllerNeedsGestureDismissalStyleUpdate:(id)a3;
- (void)transientOverlayViewControllerNeedsProximityDetectionUpdate:(id)a3;
- (void)transientOverlayViewControllerNeedsStatusBarAppearanceUpdate:(id)a3;
- (void)transientOverlayViewControllerNeedsWhitePointAdaptivityStyleUpdate:(id)a3;
- (void)transientOverlayViewControllerNeedsWindowHitTestingUpdate:(id)a3;
- (void)transientOverlayViewControllerWillBeginRotation:(id)a3 toInterfaceOrientation:(int64_t)a4;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBTransientOverlayScenePresenter

- (id)_topmostPresentedEntity
{
  v3 = [(NSMutableArray *)self->_entities lastObject];
  v4 = v3;
  if (v3 && ([v3 isDismissing] & 1) != 0)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__141;
    v13 = __Block_byref_object_dispose__141;
    v14 = 0;
    entities = self->_entities;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SBTransientOverlayScenePresenter__topmostPresentedEntity__block_invoke;
    v8[3] = &unk_2783C3CC8;
    v8[4] = &v9;
    [(NSMutableArray *)entities enumerateObjectsWithOptions:2 usingBlock:v8];
    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (BOOL)hasActivePresentation
{
  v2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasIdleTimerBehaviors
{
  v2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = v2 != 0;

  return v3;
}

- (SBTransientOverlayViewController)viewControllerForGestureDismissal
{
  v2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = [v2 viewController];

  return v3;
}

- (BOOL)handleHomeButtonDoublePress
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (v3)
  {
    v4 = SBLogTransientOverlay();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Transient overlay handled home button double press: %{public}@", &v8, 0xCu);
    }

    if ([v3 handleHomeButtonDoublePress])
    {
      v5 = 1;
    }

    else
    {
      if ([(SBLockStateAggregator *)self->_lockStateAggregator hasAnyLockState])
      {
        v6 = [v3 preferredLockedGestureDismissalStyle];
      }

      else
      {
        v6 = [v3 preferredUnlockedGestureDismissalStyle];
      }

      v5 = v6 != 3;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_buttonEventHandlingViewController
{
  v2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = [v2 viewController];

  return v3;
}

- (SBTransientOverlayViewController)topmostPresentedViewController
{
  v2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = [v2 viewController];

  return v3;
}

- (SBTransientOverlayScenePresenter)initWithWindowScene:(id)a3 alertItemsController:(id)a4 lockStateAggregator:(id)a5 zStackResolver:(id)a6 reachabilityManager:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = SBTransientOverlayScenePresenter;
  v17 = [(SBTransientOverlayScenePresenter *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_windowScene, v12);
    objc_storeStrong(&v18->_alertItemsController, a4);
    v19 = [v15 acquireParticipantWithIdentifier:15 delegate:v18];
    zStackParticipant = v18->_zStackParticipant;
    v18->_zStackParticipant = v19;

    v21 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithParticipant:v18->_zStackParticipant];
    zStackPhysicalButtonPolicyAssistant = v18->_zStackPhysicalButtonPolicyAssistant;
    v18->_zStackPhysicalButtonPolicyAssistant = v21;

    objc_storeStrong(&v18->_lockStateAggregator, a5);
    objc_storeStrong(&v18->_reachabilityManager, a7);
    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v18 selector:sel__windowedAccessoryDidAttachOrDetach_ name:@"SBUIWindowedAccessoryDidAttachOrDetachNotification" object:0];

    v24 = [[SBIdleTimerCoordinatorHelper alloc] initWithSourceProvider:v18];
    idleTimerCoordinatorHelper = v18->_idleTimerCoordinatorHelper;
    v18->_idleTimerCoordinatorHelper = v24;
  }

  return v18;
}

- (void)dealloc
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (self->_coverSheetExternalBehaviorProvider)
  {
    [WeakRetained transientOverlayScenePresenter:self unregisterCoverSheetExternalBehaviorProvider:?];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_entities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 viewController];
        [v11 setTransientOverlayDelegate:0];
        [v11 setIdleTimerCoordinator:0];
        [(SBTransientOverlayScenePresenter *)self _invalidateAssertionsForEntity:v10];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(NSMapTable *)self->_entityToSceneDeactivationAssertion objectEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v20 + 1) + 8 * j) relinquish];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
  [(BSInvalidatable *)self->_bannerSuppressionAssertion invalidate];
  [(BSInvalidatable *)self->_inCallNonModalSuppressionAssertion invalidate];
  [(BSInvalidatable *)self->_deviceOrientationUpdateDeferralAssertion invalidate];
  [(SBWindowSceneStatusBarSettingsAssertion *)self->_globalStatusBarAssertion invalidate];
  [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper removeProvider:self];
  if (self->_isPendingAlertItems)
  {
    [(SBAlertItemsController *)self->_alertItemsController setForceAlertsToPend:0 forReason:@"_SBTransientOverlayScenePresenterAlertItemsPendReason"];
  }

  if (self->_isReachabilityTemporarilyDisabled)
  {
    [(SBReachabilityManager *)self->_reachabilityManager setReachabilityTemporarilyDisabled:0 forReason:@"_SBTransientOverlayScenePresenterReachabilityDisabledReason"];
  }

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 removeObserver:self name:@"SBUIWindowedAccessoryDidAttachOrDetachNotification" object:0];

  [(SBTransientOverlayScenePresenter *)self setCoverSheetPresentationManager:0];
  [(BSInvalidatable *)self->_preventVideoCallPIPFromAppearingBelowControlCenterAssertion invalidate];
  preventVideoCallPIPFromAppearingBelowControlCenterAssertion = self->_preventVideoCallPIPFromAppearingBelowControlCenterAssertion;
  self->_preventVideoCallPIPFromAppearingBelowControlCenterAssertion = 0;

  v19.receiver = self;
  v19.super_class = SBTransientOverlayScenePresenter;
  [(SBTransientOverlayScenePresenter *)&v19 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v9;
    if (!v5)
    {
      observers = self->_observers;
      if (!observers)
      {
        v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v8 = self->_observers;
        self->_observers = v7;

        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v9];
      v4 = v9;
    }
  }
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  if (v5)
  {
    [(NSHashTable *)self->_observers removeObject:v5];
  }

  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)setCoverSheetPresentationManager:(id)a3
{
  v5 = a3;
  coverSheetPresentationManager = self->_coverSheetPresentationManager;
  v9 = v5;
  if (coverSheetPresentationManager != v5)
  {
    if (coverSheetPresentationManager)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 removeObserver:self name:@"SBCoverSheetWillPresentNotification" object:self->_coverSheetPresentationManager];
    }

    objc_storeStrong(&self->_coverSheetPresentationManager, a3);
    if (self->_coverSheetPresentationManager)
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 addObserver:self selector:sel__handleCoverSheetWillPresent_ name:@"SBCoverSheetWillPresentNotification" object:self->_coverSheetPresentationManager];
    }
  }
}

- (BOOL)canHandleButtonEvents
{
  v2 = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)preferredGestureDismissalStyle
{
  v3 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v4 = [v3 viewController];

  if ([(SBLockStateAggregator *)self->_lockStateAggregator hasAnyLockState])
  {
    v5 = [v4 preferredLockedGestureDismissalStyle];
  }

  else
  {
    v5 = [v4 preferredUnlockedGestureDismissalStyle];
  }

  v6 = v5;

  return v6;
}

- (void)setBannerManager:(id)a3
{
  v5 = a3;
  if (self->_bannerManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_bannerManager, a3);
    [(SBTransientOverlayScenePresenter *)self _updateFeaturePolicies];
    v5 = v6;
  }
}

- (void)setInCallPresentationManager:(id)a3
{
  v5 = a3;
  if (self->_inCallPresentationManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inCallPresentationManager, a3);
    [(SBTransientOverlayScenePresenter *)self _updateFeaturePolicies];
    v5 = v6;
  }
}

- (BOOL)shouldDisableControlCenter
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_entities;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) viewController];
        v7 = [v6 shouldDisableControlCenter];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)shouldDisableCoverSheetGesture
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_entities;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (([v6 isDismissing] & 1) == 0)
        {
          v7 = [v6 viewController];
          v8 = [v7 dismissesForCoverSheetPresentation];

          if (!v8)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)shouldDisableSiri
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_entities;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) viewController];
        v7 = [v6 shouldDisableSiri];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (double)topmostWindowLevel
{
  v2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = [v2 window];
  [v3 windowLevel];
  v5 = v4;

  return v5;
}

- (UIStatusBarStyleRequest)currentStatusBarStyleRequest
{
  v2 = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
  v3 = [v2 viewController];
  v4 = [v3 currentStatusBarStyleRequest];

  return v4;
}

- (BOOL)handleDoubleHeightStatusBarTap
{
  v2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = [v2 viewController];

  if (v3)
  {
    v4 = [v3 handleDoubleHeightStatusBarTap];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasPresentationAboveWindowLevel:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_entities;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) window];
        [v7 windowLevel];
        v8 = BSFloatGreaterThanOrEqualToFloat();

        if (v8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)canActivePresentationBecomeLocalFirstResponder
{
  v2 = [(SBTransientOverlayScenePresenter *)self topmostPresentedViewController];
  v3 = [v2 canBecomeLocalFirstResponder];

  return v3;
}

- (BOOL)activePresentationPreventsDragAndDrop
{
  v3 = [(SBTransientOverlayScenePresenter *)self hasActivePresentation];
  if (v3)
  {
    v4 = [(SBTransientOverlayScenePresenter *)self topmostPresentedViewController];
    v5 = [v4 shouldPreventDragAndDrop];

    LOBYTE(v3) = v5;
  }

  return v3;
}

id __60__SBTransientOverlayScenePresenter_presentedViewControllers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isDismissing])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 viewController];
  }

  return v3;
}

- (int64_t)presentedViewControllerCount
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_entities;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) isDismissing] ^ 1;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldUseSceneBasedKeyboardFocusForActivePresentation
{
  v2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = [v2 viewController];
  v4 = [v3 shouldUseSceneBasedKeyboardFocus];

  return v4;
}

- (BOOL)hasVisibleStatusBar
{
  v2 = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
  v3 = [v2 viewController];
  v4 = [v3 hasVisibleStatusBar];

  return v4;
}

- (BOOL)isPresentingViewController:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_entities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isDismissing] & 1) == 0)
        {
          v10 = [v9 viewController];

          if (v10 == v4)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (BOOL)isTopmostPresentedViewController:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v6 = [v5 viewController];
  v7 = v6 == v4;

  return v7;
}

- (BOOL)hasActivePresentationFromProcess:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SBTransientOverlayScenePresenter *)self presentedViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isPresentedByProcess:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)hasActivePresentationFromBundleIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SBTransientOverlayScenePresenter *)self presentedViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isPresentedByBundleIdentifier:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)keyboardFocusTargetForTopmostPresentingScene
{
  v2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = [v2 viewController];
  v4 = [v3 keyboardFocusTarget];

  return v4;
}

- (BOOL)isTopmostPresentationFromSceneWithIdentityTokenString:(id)a3
{
  v4 = a3;
  v5 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v6 = [v5 viewController];
  v7 = [v6 isPresentedFromSceneWithIdentityTokenString:v4];

  return v7;
}

- (BOOL)hasActiveSpotlightPresentation
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SBTransientOverlayScenePresenter *)self presentedViewControllers:0];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)prefersStatusBarActivityItemVisible
{
  v2 = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
  v3 = [v2 viewController];
  v4 = [v3 prefersStatusBarActivityItemVisible];

  return v4;
}

- (id)newContentStatusBarHiddenAssertionWithReason:(id)a3
{
  v4 = a3;
  if (!self->_contentStatusBarHiddenAssertions)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    contentStatusBarHiddenAssertions = self->_contentStatusBarHiddenAssertions;
    self->_contentStatusBarHiddenAssertions = v5;
  }

  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277CF0CE8]);
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];
  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __81__SBTransientOverlayScenePresenter_newContentStatusBarHiddenAssertionWithReason___block_invoke;
  v17 = &unk_2783A9070;
  objc_copyWeak(&v18, &location);
  v12 = [v7 initWithIdentifier:v9 forReason:v4 queue:v10 invalidationBlock:&v14];

  [(NSMutableArray *)self->_contentStatusBarHiddenAssertions addObject:v12, v14, v15, v16, v17];
  [(SBTransientOverlayScenePresenter *)self _updateContentStatusBarPresentation];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v12;
}

void __81__SBTransientOverlayScenePresenter_newContentStatusBarHiddenAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[6] removeObject:v5];
    [v4 _updateContentStatusBarPresentation];
  }
}

- (void)performDismissalRequest:(id)a3 outerCompletionHandler:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v37 = v6;
  v8 = [v6 requestType];
  if ((v8 - 2) < 2)
  {
    v36 = v7;
    v18 = self;
    v19 = [(NSMutableArray *)self->_entities copy];
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v35 = v19;
    v52 = [v19 count];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __83__SBTransientOverlayScenePresenter_performDismissalRequest_outerCompletionHandler___block_invoke;
    v45[3] = &unk_2783C3BD8;
    v48 = &v49;
    v47 = v7;
    v20 = v6;
    v46 = v20;
    v21 = MEMORY[0x223D6F7F0](v45);
    v22 = v21;
    if (v50[3] < 1)
    {
      (*(v21 + 16))(v21);
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v23 = [v35 reverseObjectEnumerator];
      v24 = [v23 countByEnumeratingWithState:&v41 objects:v57 count:16];
      if (v24)
      {
        v25 = *v42;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v42 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v41 + 1) + 8 * i);
            v28 = [v20 isAnimated];
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __83__SBTransientOverlayScenePresenter_performDismissalRequest_outerCompletionHandler___block_invoke_2;
            v38[3] = &unk_2783B2050;
            v40 = &v49;
            v39 = v22;
            [(SBTransientOverlayScenePresenter *)v18 _dismissEntity:v27 animated:v28 completion:v38];
          }

          v24 = [v23 countByEnumeratingWithState:&v41 objects:v57 count:16];
        }

        while (v24);
      }
    }

    _Block_object_dispose(&v49, 8);
    v7 = v36;
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      v9 = v7;
      v10 = [v6 viewController];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v11 = self->_entities;
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v12)
      {
        v13 = *v54;
LABEL_6:
        v14 = 0;
        while (1)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v53 + 1) + 8 * v14);
          v16 = [v15 viewController];
          v17 = v16 == v10;

          if (v17)
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v53 objects:v58 count:16];
            if (v12)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }

        v31 = v15;

        if (!v31)
        {
          goto LABEL_29;
        }

        v32 = [v37 isAnimated];
        v33 = [v37 completionHandler];
        [(SBTransientOverlayScenePresenter *)self _dismissEntity:v31 animated:v32 completion:v33];
      }

      else
      {
LABEL_12:

LABEL_29:
        v34 = [v37 completionHandler];
        v31 = v34;
        if (v34)
        {
          (*(v34 + 16))(v34);
        }
      }

      v7 = v9;
    }
  }

  else
  {
    v29 = [v6 completionHandler];
    v30 = v29;
    if (v29)
    {
      (*(v29 + 16))(v29);
    }
  }
}

void __83__SBTransientOverlayScenePresenter_performDismissalRequest_outerCompletionHandler___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    return;
  }

  if (!*(a1 + 40))
  {
    v3 = [*(a1 + 32) completionHandler];
    v5 = MEMORY[0x223D6F7F0]();

    v2 = v5;
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v2 = MEMORY[0x223D6F7F0](*(a1 + 40));
  if (v2)
  {
LABEL_4:
    v4 = v2;
    v2[2]();
    v2 = v4;
  }

LABEL_5:
}

- (void)performPresentationRequest:(id)a3
{
  v165 = *MEMORY[0x277D85DE8];
  v115 = a3;
  isInitiatingEntityPresentation = self->_isInitiatingEntityPresentation;
  self->_isInitiatingEntityPresentation = 1;
  v105 = [(SBTransientOverlayScenePresenter *)self _currentExternalStatusBarSettings];
  v116 = [v115 mutableCopy];
  v4 = [v116 viewController];
  v118 = [v115 isAnimated];
  v5 = SBLogTransientOverlay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 1024;
    LODWORD(v162) = v118;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Performing presentation for %{public}@ animated: %{BOOL}u", buf, 0x1Cu);
  }

  [v4 setTransientOverlayDelegate:self];
  [v4 bs_beginAppearanceTransition:1 animated:v118];
  if (![(NSMutableArray *)self->_entities count])
  {
    v6 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([WeakRetained transientOverlayScenePresenter:self shouldResignFirstResponderForKeyWindow:v6])
    {
      v8 = [v6 canResignFirstResponder];

      if (v8)
      {
        objc_storeStrong(&self->_initialPresentationKeyWindow, v6);
        [(UIWindow *)self->_initialPresentationKeyWindow resignFirstResponder];
      }
    }

    else
    {
    }
  }

  v114 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v106 = [v116 originatingProcess];
  if (!v114)
  {
    goto LABEL_26;
  }

  v9 = [v114 viewController];
  if (([v9 allowsStackingOverlayContentAbove] & 1) == 0)
  {
    if (v106)
    {
      v10 = [v114 viewController];
      v11 = [v10 isPresentedByProcess:v106];

      if (v11)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v12 = [(NSMutableArray *)self->_entities copy];
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v9 = v12;
    v13 = [v9 countByEnumeratingWithState:&v155 objects:v164 count:16];
    if (v13)
    {
      v14 = *v156;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v156 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v155 + 1) + 8 * i);
          if (([v16 isDismissing] & 1) == 0)
          {
            [(SBTransientOverlayScenePresenter *)self _dismissEntity:v16 animated:1 completion:0];
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v155 objects:v164 count:16];
      }

      while (v13);
    }
  }

LABEL_26:
  v17 = [v4 preferredInterfaceOrientationForPresentation];
  v18 = [v4 supportedInterfaceOrientations];
  v117 = objc_loadWeakRetained(&self->_delegate);
  if (v17)
  {
    v19 = SBLogTransientOverlay();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = BSInterfaceOrientationDescription();
      *buf = 138543618;
      *&buf[4] = v4;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ has a preferred interface orientation: %{public}@", buf, 0x16u);
    }

    v21 = v17;
  }

  else
  {
    v22 = [v117 defaultPreferredInterfaceOrientationForPresentationForTransientOverlayScenePresenter:self];
    if ((v22 - 1) >= 4)
    {
      v21 = 1;
    }

    else
    {
      v21 = v22;
    }
  }

  v23 = v18 & 0x1E;
  if ((v18 & 0x1E) == 0)
  {
    v24 = v21;
    v23 = [v117 defaultSupportedInterfaceOrientationsForTransientOverlayScenePresenter:self];
    v21 = v24;
  }

  if ((v23 & (1 << v21)) == 0)
  {
    if ((v23 & 2) != 0)
    {
      v21 = 1;
    }

    else if ((v23 & 0x10) != 0)
    {
      v21 = 4;
    }

    else if ((v23 & 8) != 0)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }
  }

  v103 = v21;
  [v4 setContainerOrientation:?];
  [(SBTransientOverlayScenePresenter *)self setFluidDismissalState:0 forViewController:v4];
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v25 = self->_entities;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v151 objects:v163 count:16];
  if (!v26)
  {
LABEL_53:

LABEL_58:
    v37 = [SBTransientOverlayWindow alloc];
    v38 = [(SBTransientOverlayScenePresenter *)self windowScene];
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBTransientOverlayScenePresenter-%@", v4];
    v110 = [(SBWindow *)v37 initWithWindowScene:v38 rootViewController:v4 role:@"SBTraitsParticipantRoleTransientOverlay" debugName:v39];

    v40 = [MEMORY[0x277D75348] clearColor];
    [(SBTransientOverlayWindow *)v110 setBackgroundColor:v40];

    if (!self->_entities)
    {
      v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
      entities = self->_entities;
      self->_entities = v41;
    }

    v43 = [_SBTransientOverlayPresentedEntity alloc];
    v44 = *MEMORY[0x277D76EE8] + 5.0;
    v36 = [(_SBTransientOverlayPresentedEntity *)v43 initWithViewController:v4 window:v110 baseWindowLevel:v44];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v162 = 0;
    v45 = self->_entities;
    v150[0] = MEMORY[0x277D85DD0];
    v150[1] = 3221225472;
    v150[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke;
    v150[3] = &unk_2783C3C00;
    *&v150[5] = v44;
    v150[4] = buf;
    [(NSMutableArray *)v45 enumerateObjectsWithOptions:2 usingBlock:v150];
    [(NSMutableArray *)self->_entities insertObject:v36 atIndex:*(*&buf[8] + 24)];
    if (*(*&buf[8] + 24))
    {
      v46 = 0;
      do
      {
        v47 = [(NSMutableArray *)self->_entities objectAtIndex:v46];
        [(SBTransientOverlayScenePresenter *)self _preserveInputViewsForEntityIfNeeded:v47];

        ++v46;
      }

      while (v46 < *(*&buf[8] + 24));
    }

    v112 = [v117 siriPresentationObservationTokenForTransientOverlayScenePresenter:self];
    if (v112 && SBPresentationObservationTokenStatePresentedOrPresenting([v112 state]))
    {
      v48 = [v117 transientOverlayScenePresenter:self acquireSiriWindowLevelAssertionWithReason:@"TransientOverlayPresented" windowLevel:v44 + -1.0];
      if (v48)
      {
        [(_SBTransientOverlayPresentedEntity *)v36 setSiriPresentationObservationToken:v112];
        [(_SBTransientOverlayPresentedEntity *)v36 setSiriWindowLevelAssertion:v48];
        objc_initWeak(&location, self);
        objc_initWeak(&from, v36);
        v145[0] = MEMORY[0x277D85DD0];
        v145[1] = 3221225472;
        v145[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_2;
        v145[3] = &unk_2783C3C28;
        objc_copyWeak(&v146, &from);
        objc_copyWeak(&v147, &location);
        [v112 setDidDismissHandler:v145];
        objc_destroyWeak(&v147);
        objc_destroyWeak(&v146);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }
    }

    v49 = [v117 controlCenterPresentationObservationTokenForTransientOverlayScenePresenter:self];
    v50 = v49;
    if (v49 && SBPresentationObservationTokenStatePresentedOrPresenting([v49 state]))
    {
      v51 = [v117 transientOverlayScenePresenter:self acquireControlCenterWindowLevelAssertionWithReason:@"TransientOverlayPresented" windowLevel:v44 + -0.9];
      if (v51)
      {
        [(_SBTransientOverlayPresentedEntity *)v36 setControlCenterPresentationObservationToken:v50];
        [(_SBTransientOverlayPresentedEntity *)v36 setControlCenterWindowLevelAssertion:v51];
        objc_initWeak(&location, self);
        objc_initWeak(&from, v36);
        v142[0] = MEMORY[0x277D85DD0];
        v142[1] = 3221225472;
        v142[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_3;
        v142[3] = &unk_2783C3C28;
        objc_copyWeak(&v143, &from);
        objc_copyWeak(&v144, &location);
        [v50 setDidDismissHandler:v142];
        objc_destroyWeak(&v144);
        objc_destroyWeak(&v143);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }
    }

    v52 = [v117 bannerLongLookPresentationObservationTokenForTransientOverlayScenePresenter:self];
    v53 = v52;
    if (v52 && SBPresentationObservationTokenStatePresentedOrPresenting([v52 state]))
    {
      v54 = [v117 transientOverlayScenePresenter:self acquireBannerLongLookWindowLevelAssertionWithReason:@"TransientOverlayPresented" windowLevel:v44 + -0.8];
      if (v54)
      {
        [(_SBTransientOverlayPresentedEntity *)v36 setBannerLongLookPresentationObservationToken:v53];
        [(_SBTransientOverlayPresentedEntity *)v36 setBannerLongLookWindowLevelAssertion:v54];
        objc_initWeak(&location, self);
        objc_initWeak(&from, v36);
        v139[0] = MEMORY[0x277D85DD0];
        v139[1] = 3221225472;
        v139[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_4;
        v139[3] = &unk_2783C3C28;
        objc_copyWeak(&v140, &from);
        objc_copyWeak(&v141, &location);
        [v53 setDidDismissHandler:v139];
        objc_destroyWeak(&v141);
        objc_destroyWeak(&v140);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }
    }

    v55 = [(SBTransientOverlayScenePresenter *)self _newKeyboardFocusAssertionForEntity:v36];
    [(_SBTransientOverlayPresentedEntity *)v36 setKeyFocusStealingAssertion:v55];
    v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"<TransientOverlayEntity-%@>", v4];
    v57 = [v117 transientOverlayScenePresenter:self acquireDisableAutoUnlockAssertionWithReason:v56];
    [(_SBTransientOverlayPresentedEntity *)v36 setDisableAutoUnlockAssertion:v57];

    v58 = +[SBUIController sharedInstanceIfExists];
    v59 = [v58 isConnectedToWindowedAccessory];

    v60 = +[SBUIController sharedInstanceIfExists];
    [v60 visibleScreenCoordinatesForWindowedAccessory];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    [v4 didTransitionToAttachedToWindowedAccessory:v59 windowedAccessoryCutoutFrameInScreen:{v62, v64, v66, v68}];
    _Block_object_dispose(buf, 8);

    v107 = 0;
    v35 = 1;
    goto LABEL_79;
  }

  v27 = *v152;
LABEL_45:
  v28 = 0;
  while (1)
  {
    if (*v152 != v27)
    {
      objc_enumerationMutation(v25);
    }

    v29 = *(*(&v151 + 1) + 8 * v28);
    v30 = [v29 viewController];
    v31 = v30;
    if (v30 == v4)
    {
      break;
    }

LABEL_51:
    if (v26 == ++v28)
    {
      v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v151 objects:v163 count:16];
      if (v26)
      {
        goto LABEL_45;
      }

      goto LABEL_53;
    }
  }

  v32 = [v29 isDismissing];

  if ((v32 & 1) == 0)
  {
    goto LABEL_51;
  }

  v33 = v29;

  v107 = v33;
  if (!v107)
  {
    goto LABEL_58;
  }

  v34 = SBLogTransientOverlay();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Using existing entity for presenting %{public}@", buf, 0x16u);
  }

  [(_SBTransientOverlayPresentedEntity *)v107 setDismissing:0];
  v35 = 0;
  v36 = v107;
LABEL_79:
  self->_isInitiatingEntityPresentation = isInitiatingEntityPresentation;
  [(SBTransientOverlayScenePresenter *)self _updateBackgroundWindowForEntity:v36];
  [(SBTransientOverlayScenePresenter *)self _updateWindowHitTestingForEntity:v36];
  v69 = [(_SBTransientOverlayPresentedEntity *)v36 window];
  [(SBTransientOverlayScenePresenter *)self _windowLevelForEntity:v36];
  v71 = v70;
  [v69 setLevel:?];
  [v69 setAccessibilityIdentifier:@"SBTransientOverlayWindow"];
  if (v35)
  {
    v72 = SBLogTransientOverlay();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2048;
      v162 = v71;
      _os_log_impl(&dword_21ED4E000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@: Created window for %{public}@ at level: %f", buf, 0x20u);
    }
  }

  [v4 setIdleTimerCoordinator:self];
  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_79;
  v137[3] = &unk_2783B66A8;
  v113 = v69;
  v138 = v113;
  [v4 updateDisplayLayoutElementWithBuilder:v137];
  [(SBTransientOverlayScenePresenter *)self _applyProximityDetectionModeForEntity:v36];
  [(SBTransientOverlayScenePresenter *)self _applyWallpaperAnimationSuspensionAssertionForEntity:v36];
  [(SBTransientOverlayScenePresenter *)self _updateCurrentEntityHomeGrabberAnimated:v118];
  [(SBTransientOverlayScenePresenter *)self _updateZStackStateWithAnimationBehavior:v118 reason:@"perform presentation request"];
  [(SBTransientOverlayScenePresenter *)self _updateFeaturePolicies];
  [(SBTransientOverlayScenePresenter *)self _updateDeactivationAssertions];
  v111 = objc_loadWeakRetained(&self->_windowScene);
  v73 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v109 = [v73 viewController];

  v74 = [v109 sceneForClientSettings];
  if (v74 || ([MEMORY[0x277D0AAD8] sharedInstance], v75 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v111, "_FBSScene"), v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "identityToken"), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v75, "sceneFromIdentityToken:", v77), v78 = objc_claimAutoreleasedReturnValue(), v77, v76, v75, (v74 = v78) != 0))
  {
    zStackPhysicalButtonPolicyAssistant = self->_zStackPhysicalButtonPolicyAssistant;
    v104 = v74;
    v160 = v74;
    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
    [(SBZStackForegroundSceneOrderedPolicyAssistant *)zStackPhysicalButtonPolicyAssistant setForegroundScenes:v80];
  }

  else
  {
    v104 = 0;
  }

  v81 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeProvider:v4 byCoordinator:self reason:@"SBTransientOverlayScenePresenterRequestedIdleTimer"];
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleTransientOverlay") & 1) == 0)
  {
    [v113 _legacySetRotatableViewOrientation:v103 duration:0.0];
    v82 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
    v83 = [v82 window];
    v84 = [v83 _windowInterfaceOrientation];

    if (self->_topmostViewControllerInterfaceOrientation != v84)
    {
      [v117 transientOverlayScenePresenter:self willChangeTopmostViewControllerInterfaceOrientationToOrientation:v84];
      self->_topmostViewControllerInterfaceOrientation = v84;
    }
  }

  [v117 transientOverlayScenePresenter:self willPresentViewController:v4];
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v85 = [(NSHashTable *)self->_observers copy];
  v86 = [v85 countByEnumeratingWithState:&v133 objects:v159 count:16];
  if (v86)
  {
    v87 = *v134;
    do
    {
      for (j = 0; j != v86; ++j)
      {
        if (*v134 != v87)
        {
          objc_enumerationMutation(v85);
        }

        v89 = *(*(&v133 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v89 transientOverlayScenePresenter:self willPresentViewController:v4];
        }
      }

      v86 = [v85 countByEnumeratingWithState:&v133 objects:v159 count:16];
    }

    while (v86);
  }

  v90 = [v111 screen];
  v91 = [v90 _isCarScreen];

  if (v91)
  {
    [v113 setHidden:0];
  }

  else
  {
    [v113 makeKeyAndVisible];
  }

  [(_SBTransientOverlayPresentedEntity *)v36 setHasFinishedWindowInitialization:1];
  v92 = [v4 newTransientOverlayPresentationTransitionCoordinator];
  v93 = objc_alloc_init(SBTransientOverlayDefaultTransitionContextProvider);
  [(SBTransientOverlayDefaultTransitionContextProvider *)v93 setAnimated:v118];
  [v117 transientOverlayScenePresenterRequestsAppIconForceTouchDismissal:self animated:v118];
  if ([v116 shouldDismissSiri])
  {
    [v117 transientOverlayScenePresenterRequestsSiriDismissal:self animated:v118];
  }

  v94 = [v116 completionHandler];
  objc_initWeak(buf, v93);
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_2_92;
  v130[3] = &unk_2783A97D8;
  v130[4] = self;
  v95 = v105;
  v131 = v95;
  v132 = v118;
  v119[0] = MEMORY[0x277D85DD0];
  v119[1] = 3221225472;
  v119[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_3_93;
  v119[3] = &unk_2783C3C50;
  v96 = v36;
  v120 = v96;
  v121 = self;
  v97 = v4;
  v122 = v97;
  v98 = v92;
  v123 = v98;
  objc_copyWeak(&v128, buf);
  v99 = v117;
  v124 = v99;
  v100 = v115;
  v125 = v100;
  v129 = v118;
  v101 = v113;
  v126 = v101;
  v102 = v94;
  v127 = v102;
  [(SBTransientOverlayDefaultTransitionContextProvider *)v93 transitionAlongsideUsingBlock:v130 completion:v119];
  [v98 startTransitionWithContextProvider:v93];

  objc_destroyWeak(&v128);
  objc_destroyWeak(buf);
}

uint64_t __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 baseWindowLevel];
  result = BSFloatLessThanOrEqualToFloat();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3 + 1;
    *a4 = 1;
  }

  return result;
}

void __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained siriWindowLevelAssertion];
    [v3 invalidate];

    [v8 setSiriWindowLevelAssertion:0];
    v4 = [v8 siriPresentationObservationToken];
    [v4 invalidate];

    [v8 setSiriPresentationObservationToken:0];
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = v5;
    if (v5)
    {
      v7 = [v5 _topmostPresentedEntity];

      if (v7 == v8)
      {
        [v6 _updateCurrentEntityHomeGrabberAnimated:1];
        [v6 _updateZStackStateWithAnimationBehavior:1 reason:@"Siri presentation did dismiss"];
      }
    }

    WeakRetained = v8;
  }
}

void __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained controlCenterWindowLevelAssertion];
    [v3 invalidate];

    [v8 setControlCenterWindowLevelAssertion:0];
    v4 = [v8 controlCenterPresentationObservationToken];
    [v4 invalidate];

    [v8 setControlCenterPresentationObservationToken:0];
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = v5;
    if (v5)
    {
      v7 = [v5 _topmostPresentedEntity];

      if (v7 == v8)
      {
        [v6 _updateCurrentEntityHomeGrabberAnimated:1];
        [v6 _updateZStackStateWithAnimationBehavior:1 reason:@"control center presentation did dismiss"];
      }
    }

    WeakRetained = v8;
  }
}

void __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained bannerLongLookWindowLevelAssertion];
    [v3 invalidate];

    [v8 setBannerLongLookWindowLevelAssertion:0];
    v4 = [v8 bannerLongLookPresentationObservationToken];
    [v4 invalidate];

    [v8 setBannerLongLookPresentationObservationToken:0];
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = v5;
    if (v5)
    {
      v7 = [v5 _topmostPresentedEntity];

      if (v7 == v8)
      {
        [v6 _updateCurrentEntityHomeGrabberAnimated:1];
        [v6 _updateZStackStateWithAnimationBehavior:1 reason:@"banner long look presentation did dismiss"];
      }
    }

    WeakRetained = v8;
  }
}

void __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_79(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 level];
  [v4 setLevel:v3];
  [v4 setFillsDisplayBounds:1];
  [v4 setLayoutRole:3];
}

uint64_t __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_2_92(uint64_t a1)
{
  [*(a1 + 32) _updateStatusBarWithCurrentExternalStatusBarSettings:*(a1 + 40) animated:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 _updatePreferredWhitePointAdaptivityStyle];
}

uint64_t __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_3_93(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (*(a1 + 32) && ([*(*(a1 + 40) + 72) containsObject:?] & 1) != 0)
  {
    if ([*(a1 + 32) isDismissing])
    {
      v4 = SBLogTransientOverlay();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        *buf = 138543618;
        v22 = v5;
        v23 = 2114;
        v24 = v6;
        v7 = "%{public}@: Ignoring presentation completion for %{public}@ since it is now dismissing";
LABEL_8:
        v10 = v4;
        v11 = 22;
LABEL_9:
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, v7, buf, v11);
      }
    }

    else
    {
      [*(a1 + 48) bs_endAppearanceTransition];
      v14 = *(a1 + 56);
      WeakRetained = objc_loadWeakRetained((a1 + 96));
      [v14 finalizeTransitionWithContextProvider:WeakRetained];

      if ([*(a1 + 48) isContentOpaque])
      {
        [*(a1 + 64) transientOverlayScenePresenterRequestsControlCenterDismissal:*(a1 + 40) animated:0];
        if ([*(a1 + 72) shouldDismissSiri])
        {
          [*(a1 + 64) transientOverlayScenePresenterRequestsSiriDismissal:*(a1 + 40) animated:0];
        }
      }

      v4 = SBLogTransientOverlay();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 40);
        v17 = *(a1 + 48);
        v18 = *(a1 + 104);
        *buf = 138543874;
        v22 = v16;
        v23 = 2114;
        v24 = v17;
        v25 = 1024;
        v26 = v18;
        v7 = "%{public}@: Finished performing presentation for %{public}@ animated: %{BOOL}u";
        v10 = v4;
        v11 = 28;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v4 = SBLogTransientOverlay();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      *buf = 138543618;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      v7 = "%{public}@: Ignoring presentation completion for %{public}@ since the entity is no longer valid";
      goto LABEL_8;
    }
  }

  if (a2 && [*(a1 + 48) isDisplayLayoutElementActive])
  {
    v12 = *(a1 + 48);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_94;
    v19[3] = &unk_2783B66A8;
    v20 = *(a1 + 80);
    [v12 updateDisplayLayoutElementWithBuilder:v19];
  }

  result = *(a1 + 88);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 level];
  [v4 setLevel:v3];
  [v4 setFillsDisplayBounds:1];
  [v4 setLayoutRole:3];
}

- (void)setFluidDismissalState:(id)a3 forViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__141;
  v59 = __Block_byref_object_dispose__141;
  v60 = 0;
  entities = self->_entities;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __77__SBTransientOverlayScenePresenter_setFluidDismissalState_forViewController___block_invoke;
  v52[3] = &unk_2783C3C78;
  v10 = v8;
  v53 = v10;
  v54 = &v55;
  [(NSMutableArray *)entities enumerateObjectsWithOptions:2 usingBlock:v52];
  v11 = v56[5];
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = [v11 fluidDismissalState];
  [v56[5] setFluidDismissalState:v7];
  v13 = [v10 view];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [v7 dismissalType];
  v43 = 0.0;
  if ((v22 - 5) < 2)
  {
    [v7 contentRect];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v61.origin.x = v15;
    v61.origin.y = v17;
    v61.size.width = v19;
    v61.size.height = v21;
    MaxY = CGRectGetMaxY(v61);
    v62.origin.x = v24;
    v62.origin.y = v26;
    v62.size.width = v28;
    v62.size.height = v30;
    v32 = CGRectGetMaxY(v62);
    [v7 contentWeighting];
    v34 = v33;
    v35 = 0;
    v36 = MaxY - v32;
LABEL_9:
    v39 = 1;
    goto LABEL_10;
  }

  if (v22 != 3 && v22 != 4)
  {
    v34 = 1.0;
    v35 = 1;
    v36 = 0.0;
    goto LABEL_9;
  }

  [v7 contentWeighting];
  v34 = v37;
  [v7 backgroundWeighting];
  v43 = v38;
  v39 = 0;
  v35 = 1;
  v36 = 0.0;
LABEL_10:
  v50 = 1.0;
  sx = 1.0;
  v48 = *MEMORY[0x277CBF348];
  v49 = v48;
  [v7 contentRect];
  [(SBTransientOverlayScenePresenter *)self _getContentScale:&sx translation:&v49 fromRect:v56[5] entity:?];
  [v7 homeGrabberContentRect];
  [(SBTransientOverlayScenePresenter *)self _getContentScale:&v50 translation:&v48 fromRect:v56[5] entity:?];
  memset(&v47, 0, sizeof(v47));
  CGAffineTransformMakeScale(&v47, sx, sx);
  v45 = v47;
  CGAffineTransformTranslate(&v46, &v45, *&v49, *(&v49 + 1));
  v47 = v46;
  memset(&v46, 0, sizeof(v46));
  CGAffineTransformMakeScale(&v46, v50, v50);
  v44 = v46;
  CGAffineTransformTranslate(&v45, &v44, *&v48, *(&v48 + 1));
  v46 = v45;
  [v10 setPresentationDimmingViewHidden:v39];
  [v10 setPresentationDimmingAlpha:v43];
  v45 = v47;
  [v10 setPresentationContentTransform:&v45];
  v45 = v46;
  [v10 setPresentationHomeGrabberTransform:&v45];
  v40 = [v12 transitionPhase];
  if (v40 == [v7 transitionPhase])
  {
    v4 = [(SBTransientOverlayScenePresenter *)self _preferredStatusBarVisibilityForEntity:v56[5]];
    v40 = [(SBTransientOverlayScenePresenter *)self _currentExternalStatusBarSettings];
    [v10 setPresentationPrefersStatusBarHidden:-[SBTransientOverlayScenePresenter _isPresentationStatusBarHiddenForVisibility:currentExternalStatusBarSettings:](self initialStatusBarSettings:{"_isPresentationStatusBarHiddenForVisibility:currentExternalStatusBarSettings:", v4, v40), 0}];
  }

  else
  {
    [(SBTransientOverlayScenePresenter *)self _updateStatusBarWithCurrentExternalStatusBarSettings:0 animated:1];
  }

  [v10 setPresentationHomeGrabberAlpha:v34];
  [v10 setPresentationHomeGrabberAdditionalEdgeSpacing:v36];
  if (v35 && (v41 = v56[5]) != 0)
  {
    self = [v41 window];
    v40 = [(SBTransientOverlayScenePresenter *)self windowScene];
    v4 = [v40 screen];
    v35 = [v4 traitCollection];
    [v35 displayCornerRadius];
    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

  [v10 setPresentationContentCornerRadius:?];
  if (v42)
  {
  }

LABEL_20:
  _Block_object_dispose(&v55, 8);
}

void __77__SBTransientOverlayScenePresenter_setFluidDismissalState_forViewController___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 viewController];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)handleHeadsetButtonPress:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (v4)
  {
    v5 = SBLogTransientOverlay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Transient overlay handled headset button press: %@", &v8, 0xCu);
    }

    v6 = [v4 handleHeadsetButtonPress:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)handleHomeButtonPress
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (v2)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled home button press: %{public}@", &v6, 0xCu);
    }

    v4 = [v2 handleHomeButtonPress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleHomeButtonLongPress
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (v2)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled home button long press: %{public}@", &v6, 0xCu);
    }

    v4 = [v2 handleHomeButtonLongPress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleLockButtonPress
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (v2)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled lock button press: %{public}@", &v6, 0xCu);
    }

    v4 = [v2 handleLockButtonPress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleVoiceCommandButtonPress
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (v2)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled voice command button press: %{public}@", &v6, 0xCu);
    }

    v4 = [v2 handleVoiceCommandButtonPress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleVolumeUpButtonPress
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (v2)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled volume up button press: %{public}@", &v6, 0xCu);
    }

    v4 = [v2 handleVolumeUpButtonPress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleVolumeDownButtonPress
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (v2)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled volume down button press: %{public}@", &v6, 0xCu);
    }

    v4 = [v2 handleVolumeDownButtonPress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)zStackParticipantDidChange:(id)a3
{
  v5 = a3;
  [(SBTransientOverlayScenePresenter *)self _updateCurrentEntityHomeGrabberAnimated:self->_homeAffordanceUpdatesShouldBeAnimated];
  if ([v5 activationState] == 1)
  {
    v4 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
    [(SBTransientOverlayScenePresenter *)self _preserveInputViewsForEntityIfNeeded:v4];
  }

  else
  {
    if ([v5 activationState])
    {
      goto LABEL_6;
    }

    v4 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
    [(SBTransientOverlayScenePresenter *)self _restoreInputViewsForEntityIfNeeded:v4];
  }

LABEL_6:
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v33 = a4;
  v5 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v6 = [v5 viewController];
  if ([(SBLockStateAggregator *)self->_lockStateAggregator hasAnyLockState])
  {
    v7 = [v6 preferredLockedGestureDismissalStyle];
  }

  else
  {
    v7 = [v6 preferredUnlockedGestureDismissalStyle];
  }

  if (v5)
  {
    v8 = v7 == 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  v10 = v9;
  if ([v6 preventsSystemApertureSuppressionFromBelow])
  {
    if (SBUIIsSystemApertureEnabled())
    {
      v10 = 2;
    }

    else
    {
      v10 = v9;
    }
  }

  [v33 setActivationPolicyForParticipantsBelow:v10];
  if (v9)
  {
    [v33 setHomeAffordanceDrawingSuppression:{objc_msgSend(v6, "homeAffordanceSuppression")}];
    v11 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v12 = [v5 bannerLongLookWindowLevelAssertion];

    if (v12)
    {
      [v11 addIndex:22];
    }

    v13 = [v5 controlCenterWindowLevelAssertion];

    if (v13)
    {
      [v11 addIndex:19];
    }

    v14 = [v5 siriWindowLevelAssertion];

    if (v14)
    {
      [v11 addIndex:17];
    }

    [v33 setAssertIsAboveParticipantIdentifiers:v11];
  }

  if ([(SBTransientOverlayScenePresenter *)self shouldUseSceneBasedKeyboardFocusForActivePresentation])
  {
    v15 = [(SBTransientOverlayScenePresenter *)self keyboardFocusTargetForTopmostPresentingScene];
    if (v15)
    {
      [v33 setOverrideKeyboardFocusTarget:v15];
      [v33 setAllowsKeyboardArbiterToDetermineFocusTarget:1];
    }
  }

  v16 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v17 = [v16 viewController];

  v18 = [v17 grabberView];
  v19 = v18;
  if (v9)
  {
    [v18 addObserver:self];
  }

  else
  {
    [v18 removeObserver:self];
  }

  if (v10)
  {
    if ([(SBTransientOverlayScenePresenter *)self hasVisibleStatusBar])
    {
      v20 = 0;
    }

    else
    {
      v22 = [(SBTransientOverlayScenePresenter *)self topmostPresentedViewController];
      if ([v22 presentationPrefersStatusBarHidden])
      {
        v23 = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
        v24 = [v23 fluidDismissalState];
        v20 = v24 == 0;
      }

      else
      {
        v20 = 0;
      }
    }

    v21 = [(SBTransientOverlayScenePresenter *)self preferredGestureDismissalStyle]== 0 || v20;
    if (v9)
    {
      v25 = [v17 grabberView];
      v26 = [v25 isHidden];

      v21 |= v26;
    }
  }

  else
  {
    v21 = 0;
  }

  [v33 setSuppressSystemApertureForSystemChromeSuppression:v21 & 1];
  v27 = [v17 associatedBundleIdentifiersToSuppressInSystemAperture];
  [v33 setAssociatedBundleIdentifiersToSuppressInSystemAperture:v27];

  v28 = [v17 associatedSceneIdentifiersToSuppressInSystemAperture];
  [v33 setAssociatedSceneIdentifiersToSuppressInSystemAperture:v28];

  v29 = [v17 audioCategoriesDisablingVolumeHUD];
  [v33 setAudioCategoriesDisablingVolumeHUD:v29];

  v30 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant physicalButtonSceneTargets];
  [v33 setPhysicalButtonSceneTargets:v30];

  v31 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
  [v33 setCaptureButtonFullFidelityEventRequestingScenes:v31];

  v32 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant foregroundCaptureSceneTargets];
  [v33 setForegroundCaptureSceneTargets:v32];
}

- (void)homeGrabberViewDidReceiveClick:(id)a3
{
  if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
  {

    [(SBTransientOverlayScenePresenter *)self handleHomeButtonPress];
  }
}

- (void)homeGrabberViewDidUpdateHidden:(id)a3
{
  v7 = a3;
  v4 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v5 = [v4 viewController];
  v6 = [v5 grabberView];

  if (v6 == v7)
  {
    [(SBTransientOverlayScenePresenter *)self _updateZStackStateWithAnimationBehavior:2 reason:@"homeGrabberViewDidUpdateHidden"];
  }

  else
  {
    [v7 removeObserver:self];
  }
}

- (id)idleTimerProvider:(id)a3 didProposeBehavior:(id)a4 forReason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v12 = v11;
  if (v11 && ([v11 viewController], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == v8))
  {
    v14 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeIdleTimerBehavior:v9 fromProvider:v8 reason:v10];
  }

  else
  {
    v14 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper updateProvider:v8 behavior:v9 reason:v10];
  }

  v15 = v14;

  return v15;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)a3
{
  v4 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 viewController];
    v7 = [v6 coordinatorRequestedIdleTimerBehavior:self];
  }

  else
  {
    v7 = +[SBIdleTimerBehavior defaultBehavior];
  }

  return v7;
}

- (int64_t)defaultPreferredInterfaceOrientationForPresentationForTransientOverlayViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained defaultPreferredInterfaceOrientationForPresentationForTransientOverlayScenePresenter:self];

  return v5;
}

- (unint64_t)defaultSupportedInterfaceOrientationsForTransientOverlayViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained defaultSupportedInterfaceOrientationsForTransientOverlayScenePresenter:self];

  return v5;
}

- (BOOL)defaultShouldAutorotateForTransientOverlayViewController:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained defaultShouldAutorotateForTransientOverlayScenePresenter:v3];

  return v3;
}

- (BOOL)isKeyboardVisibleForSpringBoardForTransientOverlayViewController:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained isKeyboardVisibleForSpringBoardForTransientOverlayScenePresenter:v3];

  return v3;
}

- (void)transientOverlayViewControllerNeedsContentOpaqueUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_entities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [v10 viewController];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_13;
    }

    [(SBTransientOverlayScenePresenter *)self _applyWallpaperAnimationSuspensionAssertionForEntity:v12];
    [(SBTransientOverlayScenePresenter *)self _updateBackgroundWindowForEntity:v12];
    v5 = v12;
  }

LABEL_12:

LABEL_13:
}

- (void)transientOverlayViewControllerNeedsGestureDismissalStyleUpdate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
    v6 = [v5 viewController];

    v4 = v7;
    if (v6 == v7)
    {
      [(SBTransientOverlayScenePresenter *)self _updateCurrentEntityHomeGrabberAnimated:1];
      [(SBTransientOverlayScenePresenter *)self _updateZStackStateWithAnimationBehavior:1 reason:@"transient overlay dismiss style updated"];
      v4 = v7;
    }
  }
}

- (void)transientOverlayViewControllerNeedsProximityDetectionUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_entities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [v10 viewController];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_13;
    }

    [(SBTransientOverlayScenePresenter *)self _applyProximityDetectionModeForEntity:v12];
    v5 = v12;
  }

LABEL_12:

LABEL_13:
}

- (void)transientOverlayViewControllerNeedsStatusBarAppearanceUpdate:(id)a3
{
  v4 = a3;
  v5 = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
  v6 = [v5 viewController];

  if (v6 == v4)
  {
    v7 = [(SBTransientOverlayScenePresenter *)self _currentExternalStatusBarSettings];
    -[SBTransientOverlayScenePresenter _updateStatusBarWithCurrentExternalStatusBarSettings:animated:](self, "_updateStatusBarWithCurrentExternalStatusBarSettings:animated:", v7, [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled]);
  }
}

- (void)transientOverlayViewControllerNeedsWhitePointAdaptivityStyleUpdate:(id)a3
{
  v4 = a3;
  v5 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v6 = [v5 viewController];

  if (v6 == v4)
  {

    [(SBTransientOverlayScenePresenter *)self _updatePreferredWhitePointAdaptivityStyle];
  }
}

- (void)transientOverlayViewControllerWillBeginRotation:(id)a3 toInterfaceOrientation:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 setContainerOrientation:a4];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_entities;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 viewController];

        if (v13 == v6)
        {
          v14 = v12;

          if (v14)
          {
            [v14 setRotating:1];
            [(SBTransientOverlayScenePresenter *)self _updateBackgroundWindowForEntity:v14];
            if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleTransientOverlay") & 1) == 0)
            {
              v15 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];

              if (v15 == v14)
              {
                WeakRetained = objc_loadWeakRetained(&self->_delegate);
                [WeakRetained transientOverlayScenePresenter:self willChangeTopmostViewControllerInterfaceOrientationToOrientation:a4];

                self->_topmostViewControllerInterfaceOrientation = a4;
              }
            }
          }

          goto LABEL_14;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:
  v17 = [(SBTransientOverlayScenePresenter *)self _currentExternalStatusBarSettings];
  [(SBTransientOverlayScenePresenter *)self _updateStatusBarWithCurrentExternalStatusBarSettings:v17 animated:0];
}

- (void)transientOverlayViewControllerDidEndRotation:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_entities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [v10 viewController];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_13;
    }

    [(NSMutableArray *)v12 setRotating:0];
    [(SBTransientOverlayScenePresenter *)self _updateBackgroundWindowForEntity:v12];
    v5 = v12;
  }

LABEL_12:

LABEL_13:
}

- (void)transientOverlayViewControllerNeedsWindowHitTestingUpdate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_entities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [v10 viewController];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_13;
    }

    [(SBTransientOverlayScenePresenter *)self _updateWindowHitTestingForEntity:v12];
    v5 = v12;
  }

LABEL_12:

LABEL_13:
}

- (void)transientOverlayViewControllerDidUpdatePresentationPrefersStatusBarHidden:(id)a3
{
  v4 = a3;
  v5 = [(SBTransientOverlayScenePresenter *)self topmostPresentedViewController];

  if (v5 == v4)
  {

    [(SBTransientOverlayScenePresenter *)self _updateZStackStateWithAnimationBehavior:2 reason:@"presentationPrefersStatusBarHiddenDidChange"];
  }
}

- (BOOL)transientOverlayViewControllerIsForegroundActive:(id)a3
{
  v4 = a3;
  if ([(SBFZStackParticipant *)self->_zStackParticipant activationState])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SBTransientOverlayScenePresenter *)self topmostPresentedViewController];
    v5 = v6 == v4;
  }

  return v5;
}

- (void)transientOverlayViewControllerDidUpdateHIDEventDeferringDisabled:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_entities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      v11 = [v10 viewController];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_15;
    }

    if ([v4 hidEventDeferringDisabled])
    {
      v13 = [v12 keyFocusStealingAssertion];
      [v13 invalidate];

      [v12 setKeyFocusStealingAssertion:0];
      v14 = [v12 keyFocusPreventionAssertion];

      if (v14)
      {
        v15 = SBLogTransientOverlay();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v29 = self;
          v30 = 2114;
          v31 = v4;
          v16 = "%{public}@: Not taking key focus prevention assertion for %{public}@ because it already has one.";
LABEL_20:
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      v19 = [v4 hostedSceneIdentityTokens];
      if ([v19 count] == 1)
      {
        v20 = +[SBWorkspace mainWorkspace];
        v21 = [v20 keyboardFocusController];
        v22 = [v19 firstObject];
        v23 = [v21 preventFocusForSceneWithIdentityToken:v22 reason:@"scene-backed remote transient overlay preventing focus"];

        [v12 setKeyFocusPreventionAssertion:v23];
      }
    }

    else
    {
      v17 = [v12 keyFocusPreventionAssertion];
      [v17 invalidate];

      [v12 setKeyFocusPreventionAssertion:0];
      v18 = [v12 keyFocusStealingAssertion];

      if (v18)
      {
        v15 = SBLogTransientOverlay();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v29 = self;
          v30 = 2114;
          v31 = v4;
          v16 = "%{public}@: Not taking new keyboard focus lock assertion in response to hidEventDeferringDisabled update for %{public}@ because it already has one.";
          goto LABEL_20;
        }

LABEL_21:

        goto LABEL_26;
      }

      v19 = [(SBTransientOverlayScenePresenter *)self _newKeyboardFocusAssertionForEntity:v12];
      [v12 setKeyFocusStealingAssertion:v19];
    }
  }

  else
  {
LABEL_9:

LABEL_15:
    v12 = SBLogTransientOverlay();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = self;
      v30 = 2114;
      v31 = v4;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring hidEventDeferringDisabled update for %{public}@ because the entity is no longer valid.", buf, 0x16u);
    }
  }

LABEL_26:
}

- (void)_handleCoverSheetWillPresent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(NSMutableArray *)self->_entities copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 isDismissing] & 1) == 0)
        {
          v11 = [v10 viewController];
          v12 = [v11 dismissesForCoverSheetPresentation];

          if (v12)
          {
            [(SBTransientOverlayScenePresenter *)self _dismissEntity:v10 animated:1 completion:0];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_applyProximityDetectionModeForEntity:(id)a3
{
  v10 = a3;
  if (([v10 isDismissing] & 1) != 0 || (objc_msgSend(v10, "viewController"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "prefersProximityDetectionEnabled"), v4, !v5))
  {
    [v10 setProximityEnabledAssertion:0];
  }

  else
  {
    v6 = [v10 proximityEnabledAssertion];

    if (!v6)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<TransientOverlayEntity-%p>", v10];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = [WeakRetained transientOverlayScenePresenter:self acquireProximitySensorEnabledAssertionWithReason:v7];
      [v10 setProximityEnabledAssertion:v9];
    }
  }
}

- (void)_applyWallpaperAnimationSuspensionAssertionForEntity:(id)a3
{
  v13 = a3;
  v4 = [v13 viewController];
  v5 = [v4 isContentOpaque];

  v6 = [v13 wallpaperAnimationSuspensionAssertion];
  v7 = v6;
  if (v5)
  {

    if (!v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [v13 viewController];
      v10 = [v8 stringWithFormat:@"<TransientOverlayEntity-%@>", v9];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v12 = [WeakRetained transientOverlayScenePresenter:self acquireWallpaperAnimationSuspensionAssertionWithReason:v10];
      [v13 setWallpaperAnimationSuspensionAssertion:v12];
    }
  }

  else
  {
    [v6 invalidate];

    [v13 setWallpaperAnimationSuspensionAssertion:0];
  }
}

- (void)_dismissEntity:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    [SBTransientOverlayScenePresenter _dismissEntity:a2 animated:self completion:?];
  }

  v11 = [v9 viewController];
  v12 = SBLogTransientOverlay();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v44 = self;
    v45 = 2114;
    v46 = v11;
    v47 = 1024;
    v48 = v6;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Performing dismissal for %{public}@ animated: %{BOOL}u", buf, 0x1Cu);
  }

  v13 = [(SBTransientOverlayScenePresenter *)self isTopmostPresentedViewController:v11];
  [v9 setDismissing:1];
  if (![(SBFZStackParticipant *)self->_zStackParticipant activationState])
  {
    v14 = [v9 window];
    v15 = [v14 traitsParticipant];
    [v15 invalidate];

    v16 = [v9 window];
    [v16 _setTraitsParticipant:0];
  }

  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant setForegroundScenes:MEMORY[0x277CBEBF8]];
  [v11 bs_beginAppearanceTransition:0 animated:v6];
  [(SBTransientOverlayScenePresenter *)self _updateCurrentEntityHomeGrabberAnimated:v6];
  [(SBTransientOverlayScenePresenter *)self _updateZStackStateWithAnimationBehavior:v6 reason:@"dismissing"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = [v11 newTransientOverlayDismissalTransitionCoordinator];
  v19 = objc_alloc_init(SBTransientOverlayDefaultTransitionContextProvider);
  [(SBTransientOverlayDefaultTransitionContextProvider *)v19 setAnimated:v6];
  [(SBTransientOverlayScenePresenter *)self _applyProximityDetectionModeForEntity:v9];
  v20 = [v9 keyFocusStealingAssertion];
  [v20 invalidate];

  [v9 setKeyFocusStealingAssertion:0];
  v21 = [v9 keyFocusPreventionAssertion];
  [v21 invalidate];

  [v9 setKeyFocusPreventionAssertion:0];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __71__SBTransientOverlayScenePresenter__dismissEntity_animated_completion___block_invoke;
  v41[3] = &unk_2783A9F58;
  v41[4] = self;
  v42 = v6;
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __71__SBTransientOverlayScenePresenter__dismissEntity_animated_completion___block_invoke_2;
  v31 = &unk_2783C3CA0;
  v32 = v9;
  v33 = self;
  v34 = v11;
  v35 = v18;
  v36 = v19;
  v37 = WeakRetained;
  v39 = v6;
  v40 = v13;
  v38 = v10;
  v22 = v10;
  v23 = WeakRetained;
  v24 = v19;
  v25 = v18;
  v26 = v11;
  v27 = v9;
  [(SBTransientOverlayDefaultTransitionContextProvider *)v24 transitionAlongsideUsingBlock:v41 completion:&v28];
  [v25 startTransitionWithContextProvider:{v24, v28, v29, v30, v31}];
}

uint64_t __71__SBTransientOverlayScenePresenter__dismissEntity_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _currentExternalStatusBarSettings];
  [v2 _updateStatusBarWithCurrentExternalStatusBarSettings:v3 animated:*(a1 + 40)];

  v4 = *(a1 + 32);

  return [v4 _updatePreferredWhitePointAdaptivityStyle];
}

uint64_t __71__SBTransientOverlayScenePresenter__dismissEntity_animated_completion___block_invoke_2(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) || ([*(*(a1 + 40) + 72) containsObject:?] & 1) == 0)
  {
    v2 = SBLogTransientOverlay();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    *buf = 138543618;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = v18;
    v19 = "%{public}@: Ignoring dismissal completion for %{public}@ since the entity is no longer valid";
    goto LABEL_14;
  }

  if (([*(a1 + 32) isDismissing] & 1) == 0)
  {
    v2 = SBLogTransientOverlay();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    *buf = 138543618;
    *&buf[4] = v20;
    *&buf[12] = 2114;
    *&buf[14] = v21;
    v19 = "%{public}@: Ignoring dismissal completion for %{public}@ since it is now re-presenting";
LABEL_14:
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
    goto LABEL_37;
  }

  v2 = [*(a1 + 32) window];
  [v2 resignAsKeyWindow];
  v46 = [*(a1 + 40) _topmostPresentedEntity];
  [*(a1 + 40) _restoreInputViewsForEntityIfNeeded:?];
  [v2 setHidden:1];
  [v2 setRootViewController:0];
  if ([*(a1 + 48) isViewLoaded])
  {
    v3 = [*(a1 + 48) view];
    [v3 removeFromSuperview];
  }

  v4 = [*(a1 + 32) backgroundWindow];
  [v4 setHidden:1];
  v45 = v4;
  [v4 setRootViewController:0];
  [*(a1 + 40) _invalidateAssertionsForEntity:*(a1 + 32)];
  [*(a1 + 56) finalizeTransitionWithContextProvider:*(a1 + 64)];
  v5 = [*(a1 + 48) transientOverlayDelegate];
  v6 = *(a1 + 40);

  if (v5 == v6)
  {
    [*(a1 + 48) setTransientOverlayDelegate:0];
  }

  v7 = [*(a1 + 48) idleTimerCoordinator];
  v8 = *(a1 + 40);

  if (v7 == v8)
  {
    [*(a1 + 48) setIdleTimerCoordinator:0];
  }

  [*(a1 + 48) setPresentationPrefersStatusBarHidden:0 initialStatusBarSettings:0];
  [*(a1 + 48) setPresentationPrefersHomeGrabberHidden:0 animated:0];
  [*(a1 + 48) setPresentationHomeGrabberAlpha:1.0];
  [*(a1 + 48) setPresentationHomeGrabberAdditionalEdgeSpacing:0.0];
  v9 = *(a1 + 48);
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *buf = *MEMORY[0x277CBF2C0];
  *&buf[16] = v10;
  v53 = *(MEMORY[0x277CBF2C0] + 32);
  [v9 setPresentationHomeGrabberTransform:buf];
  [*(a1 + 48) setPresentationContentCornerRadius:0.0];
  [*(*(a1 + 40) + 104) removeProvider:*(a1 + 48)];
  [*(*(a1 + 40) + 72) removeObject:*(a1 + 32)];
  v11 = [*(*(a1 + 40) + 72) count];
  v12 = *(a1 + 40);
  if (v11)
  {
    v13 = *(v12 + 104);
    v14 = [v12 _topmostPresentedEntity];
    v15 = [v14 viewController];
    v16 = [v13 proposeProvider:v15 byCoordinator:*(a1 + 40) reason:@"SBTransientOverlayPresentationManagerRequestedIdleTimer"];
  }

  else
  {
    if ((*(v12 + 136) & 1) == 0)
    {
      v22 = [*(v12 + 104) targetCoordinator];
      v23 = *(a1 + 40);
      v24 = +[SBIdleTimerBehavior disabledBehavior];
      v25 = [v22 idleTimerProvider:v23 didProposeBehavior:v24 forReason:@"SBTransientOverlayPresentationManagerNoneActive"];

      v26 = *(a1 + 40);
      if (*(v26 + 112))
      {
        v27 = [*(a1 + 72) transientOverlayScenePresenter:? shouldRestoreFirstResponderForKeyWindow:?];
        v26 = *(a1 + 40);
        if (v27)
        {
          [*(v26 + 112) becomeFirstResponder];
          v26 = *(a1 + 40);
        }
      }

      v28 = *(v26 + 112);
      *(v26 + 112) = 0;

      v12 = *(a1 + 40);
    }

    v14 = *(v12 + 72);
    *(v12 + 72) = 0;
  }

  [*(a1 + 40) _updateFeaturePolicies];
  [*(a1 + 40) _updateDeactivationAssertions];
  v29 = *(a1 + 40);
  v30 = [v29 _currentExternalStatusBarSettings];
  [v29 _updateStatusBarWithCurrentExternalStatusBarSettings:v30 animated:*(a1 + 88)];

  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleTransientOverlay") & 1) == 0)
  {
    v31 = [*(a1 + 40) _topmostPresentedEntity];
    v32 = [v31 window];
    v33 = [v32 _windowInterfaceOrientation];

    [*(a1 + 72) transientOverlayScenePresenter:*(a1 + 40) willChangeTopmostViewControllerInterfaceOrientationToOrientation:v33];
    *(*(a1 + 40) + 200) = v33;
  }

  [*(a1 + 48) bs_endAppearanceTransition];
  [*(a1 + 72) transientOverlayScenePresenter:*(a1 + 40) didDismissViewController:*(a1 + 48) wasTopmostPresentation:*(a1 + 89)];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v34 = [*(*(a1 + 40) + 176) copy];
  v35 = [v34 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v48;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v47 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v39 transientOverlayScenePresenter:*(a1 + 40) didDismissViewController:*(a1 + 48) wasTopmostPresentation:*(a1 + 89)];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v36);
  }

  v40 = SBLogTransientOverlay();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = *(a1 + 40);
    v42 = *(a1 + 48);
    v43 = *(a1 + 88);
    *buf = 138543874;
    *&buf[4] = v41;
    *&buf[12] = 2114;
    *&buf[14] = v42;
    *&buf[22] = 1024;
    *&buf[24] = v43;
    _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished performing dismissal for %{public}@ animated: %{BOOL}u", buf, 0x1Cu);
  }

LABEL_37:
  result = *(a1 + 80);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (double)_backgroundWindowLevelForEntity:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_entities;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * i) baseWindowLevel];
        [v4 baseWindowLevel];
        v8 += SBFloatEqualsFloat();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
    v11 = v8;
  }

  else
  {
    v11 = 0.0;
  }

  [v4 baseWindowLevel];
  v13 = v12;

  return v13 + v11 * 2.1;
}

- (id)_currentExternalStatusBarSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained currentStatusBarSettingsForTransientOverlayScenePresenter:self];

  return v4;
}

- (void)_getContentScale:(double *)a3 translation:(CGPoint *)a4 fromRect:(CGRect)a5 entity:(id)a6
{
  width = a5.size.width;
  v9 = a6;
  v11 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  v34 = v9;
  v12 = [v9 fluidDismissalState];
  v13 = [v12 dismissalType];
  v14 = 1.0;
  if (v12 && (v13 - 3) <= 1)
  {
    v15 = [v34 viewController];
    v16 = [v15 view];
    [v16 bounds];
    v18 = v17;
    v19 = width;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    UIRectGetCenter();
    v33 = v26;
    v28 = v27;
    UIRectGetCenter();
    v30 = v29;
    v32 = v31;
    v36.origin.x = v18;
    v36.origin.y = v21;
    v36.size.width = v23;
    v36.size.height = v25;
    v11 = v33 - v30;
    v10 = v28 - v32;
    v14 = v19 / CGRectGetWidth(v36);
  }

  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    a4->x = v11;
    a4->y = v10;
  }
}

- (void)_invalidateAssertionsForEntity:(id)a3
{
  v11 = a3;
  v3 = [v11 bannerLongLookWindowLevelAssertion];
  [v3 invalidate];

  [v11 setBannerLongLookWindowLevelAssertion:0];
  v4 = [v11 bannerLongLookPresentationObservationToken];
  [v4 invalidate];

  [v11 setBannerLongLookPresentationObservationToken:0];
  v5 = [v11 controlCenterWindowLevelAssertion];
  [v5 invalidate];

  [v11 setControlCenterWindowLevelAssertion:0];
  v6 = [v11 controlCenterPresentationObservationToken];
  [v6 invalidate];

  [v11 setControlCenterPresentationObservationToken:0];
  v7 = [v11 siriWindowLevelAssertion];
  [v7 invalidate];

  [v11 setSiriWindowLevelAssertion:0];
  v8 = [v11 siriPresentationObservationToken];
  [v8 invalidate];

  [v11 setSiriPresentationObservationToken:0];
  v9 = [v11 disableAutoUnlockAssertion];
  [v9 invalidate];

  [v11 setDisableAutoUnlockAssertion:0];
  v10 = [v11 wallpaperAnimationSuspensionAssertion];
  [v10 invalidate];

  [v11 setWallpaperAnimationSuspensionAssertion:0];
}

- (BOOL)_isPresentationStatusBarHiddenForVisibility:(int)a3 currentExternalStatusBarSettings:(id)a4
{
  v4 = a3;
  if (!a3)
  {
    v5 = [a4 alpha];
    [v5 doubleValue];
    if (BSFloatGreaterThanFloat())
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4 == 1;
}

- (id)_newSceneDeactivationAssertionWithReason:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained transientOverlayScenePresenter:self newSceneDeactivationAssertionWithReason:a3];

  return v6;
}

- (int)_preferredStatusBarVisibilityForEntity:(id)a3
{
  v4 = a3;
  v5 = [v4 viewController];
  v6 = [v5 _preferredStatusBarVisibility];

  if ([(NSMutableArray *)self->_contentStatusBarHiddenAssertions count])
  {
    v7 = v6 == 2;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  if (v6 == 2)
  {
    v8 = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];

    if (v8 != v4)
    {
LABEL_8:
      v6 = 1;
      goto LABEL_9;
    }

    v10 = [v4 fluidDismissalState];
    v11 = v10;
    if (v10 && [v10 dismissalType] == 4)
    {
      v14 = 0x3FF0000000000000;
      v12 = [v4 fluidDismissalState];
      [v12 contentRect];
      [(SBTransientOverlayScenePresenter *)self _getContentScale:&v14 translation:0 fromRect:v4 entity:?];

      if (BSFloatLessThanFloat())
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if ([v11 transitionPhase] == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = v13;
      }
    }

    else
    {
      v6 = 2;
    }
  }

LABEL_9:

  return v6;
}

void __59__SBTransientOverlayScenePresenter__topmostPresentedEntity__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 isDismissing] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_updateBackgroundWindowForEntity:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SBTransientOverlayScenePresenter__updateBackgroundWindowForEntity___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performWithoutAnimation:v7];
}

void __69__SBTransientOverlayScenePresenter__updateBackgroundWindowForEntity___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) viewController];
  if ([v2 isContentOpaque])
  {
    v3 = [*(a1 + 32) isRotating];

    if (v3)
    {
      v4 = [*(a1 + 32) backgroundWindow];
      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x277D75D28]);
        v6 = [MEMORY[0x277D75348] blackColor];
        v7 = [v5 view];
        [v7 setBackgroundColor:v6];

        v8 = [SBTransientOverlayBackgroundWindow alloc];
        v9 = [*(a1 + 32) window];
        v10 = [v9 windowScene];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBTransientOverlayPresentationManagerBackground-%@", v5];
        v4 = [(SBWindow *)v8 initWithWindowScene:v10 rootViewController:v5 role:@"SBTraitsParticipantRoleTransientOverlayBackground" debugName:v11];

        [(SBTransientOverlayBackgroundWindow *)v4 setBackgroundColor:v6];
        [*(a1 + 32) setBackgroundWindow:v4];
      }

      v12 = SBLogTransientOverlay();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v14 = [*(a1 + 32) viewController];
        *buf = 138543618;
        v19 = v13;
        v20 = 2114;
        v21 = v14;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Showing background window for view controller: %{public}@", buf, 0x16u);
      }

      [*(a1 + 40) _backgroundWindowLevelForEntity:*(a1 + 32)];
      [(SBTransientOverlayBackgroundWindow *)v4 setLevel:?];
      [(SBWindow *)v4 setHidden:0];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v4 = [*(a1 + 32) backgroundWindow];
  if (v4)
  {
    v15 = SBLogTransientOverlay();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = [*(a1 + 32) viewController];
      *buf = 138543618;
      v19 = v16;
      v20 = 2114;
      v21 = v17;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Hiding background window for view controller: %{public}@", buf, 0x16u);
    }

    [(SBWindow *)v4 setHidden:1];
    [(SBTransientOverlayBackgroundWindow *)v4 setRootViewController:0];
    [*(a1 + 32) setBackgroundWindow:0];
  }

LABEL_13:
}

- (void)_updateWindowHitTestingForEntity:(id)a3
{
  v3 = a3;
  v5 = [v3 viewController];
  v4 = [v3 window];

  [v4 bs_setHitTestingDisabled:{objc_msgSend(v5, "prefersWindowHitTestingDisabled")}];
}

- (void)_updateCurrentEntityHomeGrabberAnimated:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v20 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v5 = [v20 viewController];
  if ([(SBLockStateAggregator *)self->_lockStateAggregator hasAnyLockState])
  {
    v6 = [v5 preferredLockedGestureDismissalStyle];
  }

  else
  {
    v6 = [v5 preferredUnlockedGestureDismissalStyle];
  }

  v7 = v6;
  v19 = v5;
  if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
  {
    v8 = [(SBFZStackParticipant *)self->_zStackParticipant homeAffordanceDrawingSuppressed]^ 1;
  }

  else
  {
    v8 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_entities;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (([v14 isDismissing] & 1) == 0)
        {
          v16 = v14 != v20 || v7 != 0;
          v8 &= v16;
          v17 = [v14 viewController];
          [v17 setPresentationPrefersHomeGrabberHidden:v8 ^ 1u animated:v3];

          v18 = [v14 viewController];
          [v18 setHomeGrabberPointerClickDelegate:self];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)_updateZStackStateWithAnimationBehavior:(int64_t)a3 reason:(id)a4
{
  if (a3 == 2)
  {
    zStackParticipant = self->_zStackParticipant;

    [(SBFZStackParticipant *)zStackParticipant setNeedsUpdatePreferencesWithReason:a4];
  }

  else
  {
    homeAffordanceUpdatesShouldBeAnimated = self->_homeAffordanceUpdatesShouldBeAnimated;
    self->_homeAffordanceUpdatesShouldBeAnimated = a3 != 0;
    [(SBFZStackParticipant *)self->_zStackParticipant setNeedsUpdatePreferencesWithReason:a4];
    self->_homeAffordanceUpdatesShouldBeAnimated = homeAffordanceUpdatesShouldBeAnimated;
  }
}

- (void)_updateStatusBarWithCurrentExternalStatusBarSettings:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
  v8 = SBLogTransientOverlay();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 viewController];
    *buf = 138543618;
    v57 = self;
    v58 = 2114;
    v59 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Status bar owning view controller set to: %{public}@", buf, 0x16u);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = self->_entities;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v11)
  {
    v12 = *v52;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        if ([v14 hasFinishedWindowInitialization] && -[SBTransientOverlayScenePresenter _preferredStatusBarVisibilityForEntity:](self, "_preferredStatusBarVisibilityForEntity:", v14))
        {
          LODWORD(v11) = 1;
          goto LABEL_14;
        }
      }

      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (v4)
  {
    v15 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  }

  else
  {
    v15 = 0;
  }

  globalStatusBarAssertion = self->_globalStatusBarAssertion;
  if (v11)
  {
    v17 = globalStatusBarAssertion == 0;
    if (!globalStatusBarAssertion)
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      v19 = [WeakRetained statusBarManager];
      v20 = [v19 assertionManager];

      v21 = [v20 newSettingsAssertionWithStatusBarHidden:1 atLevel:8 reason:@"Transient Overlay"];
      v22 = self->_globalStatusBarAssertion;
      self->_globalStatusBarAssertion = v21;

      [(SBWindowSceneStatusBarSettingsAssertion *)self->_globalStatusBarAssertion acquireWithAnimationParameters:v15];
    }

    if (self->_appStatusBarAssertion)
    {
      v23 = 0;
      v24 = 0;
      goto LABEL_25;
    }

    v26 = objc_loadWeakRetained(&self->_delegate);
    v27 = [v26 transientOverlayScenePresenter:self acquireHideAppStatusBarAssertionWithReason:@"Transient Overlay" animated:v4];
    appStatusBarAssertion = self->_appStatusBarAssertion;
    self->_appStatusBarAssertion = v27;

    v23 = 0;
    v24 = 0;
  }

  else
  {
    v24 = globalStatusBarAssertion;
    v25 = self->_globalStatusBarAssertion;
    self->_globalStatusBarAssertion = 0;

    v23 = self->_appStatusBarAssertion;
    v17 = 0;
    v26 = self->_appStatusBarAssertion;
    self->_appStatusBarAssertion = 0;
  }

LABEL_25:
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __98__SBTransientOverlayScenePresenter__updateStatusBarWithCurrentExternalStatusBarSettings_animated___block_invoke;
  v48[3] = &unk_2783C3CF0;
  v48[4] = self;
  v29 = v6;
  v49 = v29;
  v50 = v17;
  v30 = MEMORY[0x223D6F7F0](v48);
  v31 = v30;
  if (v4)
  {
    v32 = [objc_alloc(MEMORY[0x277D75A88]) initWithDefaultParameters];
    v33 = MEMORY[0x277D75A88];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __98__SBTransientOverlayScenePresenter__updateStatusBarWithCurrentExternalStatusBarSettings_animated___block_invoke_2;
    v46[3] = &unk_2783A98A0;
    v46[4] = self;
    v47 = v31;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __98__SBTransientOverlayScenePresenter__updateStatusBarWithCurrentExternalStatusBarSettings_animated___block_invoke_3;
    v42[3] = &unk_2783B1948;
    v43 = v24;
    v44 = v23;
    v45 = v4;
    v34 = v31;
    [v33 animateWithParameters:v32 animations:v46 completion:v42];
  }

  else
  {
    v35 = MEMORY[0x277D75D18];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __98__SBTransientOverlayScenePresenter__updateStatusBarWithCurrentExternalStatusBarSettings_animated___block_invoke_4;
    v38[3] = &unk_2783C3D18;
    v38[4] = self;
    v41 = v30;
    v39 = v24;
    v40 = v23;
    v32 = v31;
    [v35 performWithoutAnimation:v38];
  }

  v36 = [(SBTransientOverlayScenePresenter *)self windowScene];
  v37 = [v36 recordingIndicatorManager];
  [v37 updateRecordingIndicatorForStatusBarChanges];
}

void __98__SBTransientOverlayScenePresenter__updateStatusBarWithCurrentExternalStatusBarSettings_animated___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 hasFinishedWindowInitialization];
  v4 = v9;
  if (v3)
  {
    v5 = [*(a1 + 32) _isPresentationStatusBarHiddenForVisibility:objc_msgSend(*(a1 + 32) currentExternalStatusBarSettings:{"_preferredStatusBarVisibilityForEntity:", v9), *(a1 + 40)}];
    v6 = [v9 viewController];
    v7 = v6;
    if (*(a1 + 48) == 1)
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = 0;
    }

    [v6 setPresentationPrefersStatusBarHidden:v5 initialStatusBarSettings:v8];

    v4 = v9;
  }
}

void __98__SBTransientOverlayScenePresenter__updateStatusBarWithCurrentExternalStatusBarSettings_animated___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t __98__SBTransientOverlayScenePresenter__updateStatusBarWithCurrentExternalStatusBarSettings_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) invalidateWithAnimationParameters:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 invalidateWithAnimation:v3];
}

uint64_t __98__SBTransientOverlayScenePresenter__updateStatusBarWithCurrentExternalStatusBarSettings_animated___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 56) + 16))(*(a1 + 56));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) invalidateWithAnimationParameters:{0, v8}];
  return [*(a1 + 48) invalidate];
}

- (void)_updateContentStatusBarPresentation
{
  v3 = [(SBTransientOverlayScenePresenter *)self _currentExternalStatusBarSettings];
  [(SBTransientOverlayScenePresenter *)self _updateStatusBarWithCurrentExternalStatusBarSettings:v3 animated:0];
}

- (void)_updateDeactivationAssertions
{
  v58 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_entities;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v3)
  {
    v5 = v3;
    v39 = 0;
    v6 = *v45;
    *&v4 = 138544130;
    v34 = v4;
    v35 = *v45;
    do
    {
      v7 = 0;
      v36 = v5;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * v7);
        v9 = [(NSMapTable *)self->_entityToSceneDeactivationAssertion objectForKey:v8, v34];
        v10 = [v8 viewController];
        v11 = [v10 preferredSceneDeactivationReasonValue];

        if (v11)
        {
          v12 = [v11 integerValue];
          if (!v9 || [v9 reason] != v12)
          {
            v13 = [(SBTransientOverlayScenePresenter *)self _newSceneDeactivationAssertionWithReason:v12];
            v14 = SBLogTransientOverlay();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v8 viewController];
              v16 = UIApplicationSceneDeactivationReasonDescription();
              *buf = v34;
              v50 = self;
              v51 = 2114;
              v52 = v13;
              v53 = 2114;
              v54 = v15;
              v55 = 2114;
              v56 = v16;
              _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Created new background assertion %{public}@ for %{public}@ with reason: %{public}@", buf, 0x2Au);
            }

            if (v13)
            {
              v17 = [v8 viewController];
              v18 = [v17 sceneDeactivationPredicate];
              WeakRetained = objc_loadWeakRetained(&self->_windowScene);
              v20 = [WeakRetained _fbsDisplayIdentity];
              [v13 sb_acquireWithPredicate:v18 transitionContext:0 displayIdentity:v20];

              v21 = v39;
              if (!v39)
              {
                v21 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
              }

              v39 = v21;
              [v21 setObject:v13 forKey:v8];
              v6 = v35;
            }

            v5 = v36;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v5);
  }

  else
  {
    v39 = 0;
  }

  obja = self;
  p_entityToSceneDeactivationAssertion = &self->_entityToSceneDeactivationAssertion;
  v23 = self->_entityToSceneDeactivationAssertion;
  objc_storeStrong(&self->_entityToSceneDeactivationAssertion, v39);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = v23;
  v25 = [(NSMapTable *)v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v40 + 1) + 8 * i);
        v30 = [(NSMapTable *)v24 objectForKey:v29];
        v31 = [(NSMapTable *)*p_entityToSceneDeactivationAssertion objectForKey:v29];
        if (v30 != v31)
        {
          [v30 relinquish];
          v32 = SBLogTransientOverlay();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v29 viewController];
            *buf = 138543874;
            v50 = obja;
            v51 = 2114;
            v52 = v30;
            v53 = 2114;
            v54 = v33;
            _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Relinquished background assertion %{public}@ for %{public}@", buf, 0x20u);
          }
        }
      }

      v26 = [(NSMapTable *)v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v26);
  }
}

- (void)_updateFeaturePolicies
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to begin deferring device orientation updates", &v2, 0xCu);
}

- (void)_updatePreferredWhitePointAdaptivityStyle
{
  v3 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v12 = v3;
  if (v3)
  {
    v4 = [v3 hasFinishedWindowInitialization];
    v5 = v12;
    if (!v4)
    {
      goto LABEL_9;
    }

    v6 = MEMORY[0x277CCABB0];
    v7 = [v12 viewController];
    v8 = [v6 numberWithInteger:{objc_msgSend(v7, "preferredWhitePointAdaptivityStyle")}];
  }

  else
  {
    v8 = 0;
  }

  preferredWhitePointAdaptivityStyleValue = self->_preferredWhitePointAdaptivityStyleValue;
  if (preferredWhitePointAdaptivityStyleValue != v8 && ([(NSNumber *)preferredWhitePointAdaptivityStyleValue isEqual:v8]& 1) == 0)
  {
    self->_preferredWhitePointAdaptivityStyleValue = v8;
    v10 = [(SBTransientOverlayScenePresenter *)self delegate];
    v11 = [MEMORY[0x277D75D18] _currentAnimationSettings];
    [v10 transientOverlayScenePresenter:self preferredWhitePointAdaptivityStyleDidChangeWithAnimationSettings:v11];
  }

  v5 = v12;
LABEL_9:
}

- (void)_windowedAccessoryDidAttachOrDetach:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = +[SBUIController sharedInstanceIfExists];
  v5 = [v4 isConnectedToWindowedAccessory];

  v6 = +[SBUIController sharedInstanceIfExists];
  [v6 visibleScreenCoordinatesForWindowedAccessory];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = self->_entities;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v21 + 1) + 8 * v19) viewController];
        [v20 didTransitionToAttachedToWindowedAccessory:v5 windowedAccessoryCutoutFrameInScreen:{v8, v10, v12, v14}];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }
}

- (void)_preserveInputViewsForEntityIfNeeded:(id)a3
{
  v4 = a3;
  if (([v4 hasPreservedInputViews] & 1) == 0)
  {
    [v4 setHasPreservedInputViews:1];
    v3 = [v4 viewController];
    [v3 preserveInputViewsAnimated:1];
  }
}

- (void)_restoreInputViewsForEntityIfNeeded:(id)a3
{
  v4 = a3;
  if ([v4 hasPreservedInputViews])
  {
    [v4 setHasPreservedInputViews:0];
    v3 = [v4 viewController];
    [v3 restoreInputViewsAnimated:1];
  }
}

- (id)_newKeyboardFocusAssertionForEntity:(id)a3
{
  v3 = a3;
  v4 = +[SBWorkspace mainWorkspace];
  v5 = [v4 keyboardFocusController];
  v6 = [v3 window];

  v7 = +[SBKeyboardFocusLockReason activeTransientOverlay];
  v8 = [v5 focusLockSpringBoardWindow:v6 forReason:v7];

  return v8;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (SBTransientOverlayScenePresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_dismissEntity:(uint64_t)a1 animated:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTransientOverlayScenePresenter.m" lineNumber:1363 description:{@"Invalid parameter not satisfying: %@", @"entity != nil"}];
}

@end
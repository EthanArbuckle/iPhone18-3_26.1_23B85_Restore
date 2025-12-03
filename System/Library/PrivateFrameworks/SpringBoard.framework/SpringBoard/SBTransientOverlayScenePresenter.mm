@interface SBTransientOverlayScenePresenter
- (BOOL)_isPresentationStatusBarHiddenForVisibility:(int)visibility currentExternalStatusBarSettings:(id)settings;
- (BOOL)activePresentationPreventsDragAndDrop;
- (BOOL)canActivePresentationBecomeLocalFirstResponder;
- (BOOL)canHandleButtonEvents;
- (BOOL)defaultShouldAutorotateForTransientOverlayViewController:(id)controller;
- (BOOL)handleDoubleHeightStatusBarTap;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVoiceCommandButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hasActivePresentation;
- (BOOL)hasActivePresentationFromBundleIdentifier:(id)identifier;
- (BOOL)hasActivePresentationFromProcess:(id)process;
- (BOOL)hasActiveSpotlightPresentation;
- (BOOL)hasIdleTimerBehaviors;
- (BOOL)hasPresentationAboveWindowLevel:(double)level;
- (BOOL)hasVisibleStatusBar;
- (BOOL)isKeyboardVisibleForSpringBoardForTransientOverlayViewController:(id)controller;
- (BOOL)isPresentingViewController:(id)controller;
- (BOOL)isTopmostPresentationFromSceneWithIdentityTokenString:(id)string;
- (BOOL)isTopmostPresentedViewController:(id)controller;
- (BOOL)prefersStatusBarActivityItemVisible;
- (BOOL)shouldDisableControlCenter;
- (BOOL)shouldDisableCoverSheetGesture;
- (BOOL)shouldDisableSiri;
- (BOOL)shouldUseSceneBasedKeyboardFocusForActivePresentation;
- (BOOL)transientOverlayViewControllerIsForegroundActive:(id)active;
- (SBTransientOverlayScenePresenter)initWithWindowScene:(id)scene alertItemsController:(id)controller lockStateAggregator:(id)aggregator zStackResolver:(id)resolver reachabilityManager:(id)manager;
- (SBTransientOverlayScenePresenterDelegate)delegate;
- (SBTransientOverlayViewController)topmostPresentedViewController;
- (SBTransientOverlayViewController)viewControllerForGestureDismissal;
- (SBWindowScene)windowScene;
- (UIStatusBarStyleRequest)currentStatusBarStyleRequest;
- (double)_backgroundWindowLevelForEntity:(id)entity;
- (double)topmostWindowLevel;
- (id)_buttonEventHandlingViewController;
- (id)_currentExternalStatusBarSettings;
- (id)_newKeyboardFocusAssertionForEntity:(id)entity;
- (id)_newSceneDeactivationAssertionWithReason:(int64_t)reason;
- (id)_topmostPresentedEntity;
- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior;
- (id)idleTimerProvider:(id)provider didProposeBehavior:(id)behavior forReason:(id)reason;
- (id)keyboardFocusTargetForTopmostPresentingScene;
- (id)newContentStatusBarHiddenAssertionWithReason:(id)reason;
- (int)_preferredStatusBarVisibilityForEntity:(id)entity;
- (int64_t)defaultPreferredInterfaceOrientationForPresentationForTransientOverlayViewController:(id)controller;
- (int64_t)preferredGestureDismissalStyle;
- (int64_t)presentedViewControllerCount;
- (unint64_t)defaultSupportedInterfaceOrientationsForTransientOverlayViewController:(id)controller;
- (void)_applyProximityDetectionModeForEntity:(id)entity;
- (void)_applyWallpaperAnimationSuspensionAssertionForEntity:(id)entity;
- (void)_dismissEntity:(id)entity animated:(BOOL)animated completion:(id)completion;
- (void)_getContentScale:(double *)scale translation:(CGPoint *)translation fromRect:(CGRect)rect entity:(id)entity;
- (void)_handleCoverSheetWillPresent:(id)present;
- (void)_invalidateAssertionsForEntity:(id)entity;
- (void)_preserveInputViewsForEntityIfNeeded:(id)needed;
- (void)_restoreInputViewsForEntityIfNeeded:(id)needed;
- (void)_updateBackgroundWindowForEntity:(id)entity;
- (void)_updateContentStatusBarPresentation;
- (void)_updateCurrentEntityHomeGrabberAnimated:(BOOL)animated;
- (void)_updateDeactivationAssertions;
- (void)_updateFeaturePolicies;
- (void)_updatePreferredWhitePointAdaptivityStyle;
- (void)_updateStatusBarWithCurrentExternalStatusBarSettings:(id)settings animated:(BOOL)animated;
- (void)_updateWindowHitTestingForEntity:(id)entity;
- (void)_updateZStackStateWithAnimationBehavior:(int64_t)behavior reason:(id)reason;
- (void)_windowedAccessoryDidAttachOrDetach:(id)detach;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)homeGrabberViewDidReceiveClick:(id)click;
- (void)homeGrabberViewDidUpdateHidden:(id)hidden;
- (void)performDismissalRequest:(id)request outerCompletionHandler:(id)handler;
- (void)performPresentationRequest:(id)request;
- (void)removeObserver:(id)observer;
- (void)setBannerManager:(id)manager;
- (void)setCoverSheetPresentationManager:(id)manager;
- (void)setFluidDismissalState:(id)state forViewController:(id)controller;
- (void)setInCallPresentationManager:(id)manager;
- (void)transientOverlayViewControllerDidEndRotation:(id)rotation;
- (void)transientOverlayViewControllerDidUpdateHIDEventDeferringDisabled:(id)disabled;
- (void)transientOverlayViewControllerDidUpdatePresentationPrefersStatusBarHidden:(id)hidden;
- (void)transientOverlayViewControllerNeedsContentOpaqueUpdate:(id)update;
- (void)transientOverlayViewControllerNeedsGestureDismissalStyleUpdate:(id)update;
- (void)transientOverlayViewControllerNeedsProximityDetectionUpdate:(id)update;
- (void)transientOverlayViewControllerNeedsStatusBarAppearanceUpdate:(id)update;
- (void)transientOverlayViewControllerNeedsWhitePointAdaptivityStyleUpdate:(id)update;
- (void)transientOverlayViewControllerNeedsWindowHitTestingUpdate:(id)update;
- (void)transientOverlayViewControllerWillBeginRotation:(id)rotation toInterfaceOrientation:(int64_t)orientation;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBTransientOverlayScenePresenter

- (id)_topmostPresentedEntity
{
  lastObject = [(NSMutableArray *)self->_entities lastObject];
  v4 = lastObject;
  if (lastObject && ([lastObject isDismissing] & 1) != 0)
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
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = _topmostPresentedEntity != 0;

  return v3;
}

- (BOOL)hasIdleTimerBehaviors
{
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v3 = _topmostPresentedEntity != 0;

  return v3;
}

- (SBTransientOverlayViewController)viewControllerForGestureDismissal
{
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];

  return viewController;
}

- (BOOL)handleHomeButtonDoublePress
{
  v10 = *MEMORY[0x277D85DE8];
  _buttonEventHandlingViewController = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (_buttonEventHandlingViewController)
  {
    v4 = SBLogTransientOverlay();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = _buttonEventHandlingViewController;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Transient overlay handled home button double press: %{public}@", &v8, 0xCu);
    }

    if ([_buttonEventHandlingViewController handleHomeButtonDoublePress])
    {
      v5 = 1;
    }

    else
    {
      if ([(SBLockStateAggregator *)self->_lockStateAggregator hasAnyLockState])
      {
        preferredLockedGestureDismissalStyle = [_buttonEventHandlingViewController preferredLockedGestureDismissalStyle];
      }

      else
      {
        preferredLockedGestureDismissalStyle = [_buttonEventHandlingViewController preferredUnlockedGestureDismissalStyle];
      }

      v5 = preferredLockedGestureDismissalStyle != 3;
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
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];

  return viewController;
}

- (SBTransientOverlayViewController)topmostPresentedViewController
{
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];

  return viewController;
}

- (SBTransientOverlayScenePresenter)initWithWindowScene:(id)scene alertItemsController:(id)controller lockStateAggregator:(id)aggregator zStackResolver:(id)resolver reachabilityManager:(id)manager
{
  sceneCopy = scene;
  controllerCopy = controller;
  aggregatorCopy = aggregator;
  resolverCopy = resolver;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = SBTransientOverlayScenePresenter;
  v17 = [(SBTransientOverlayScenePresenter *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_windowScene, sceneCopy);
    objc_storeStrong(&v18->_alertItemsController, controller);
    v19 = [resolverCopy acquireParticipantWithIdentifier:15 delegate:v18];
    zStackParticipant = v18->_zStackParticipant;
    v18->_zStackParticipant = v19;

    v21 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithParticipant:v18->_zStackParticipant];
    zStackPhysicalButtonPolicyAssistant = v18->_zStackPhysicalButtonPolicyAssistant;
    v18->_zStackPhysicalButtonPolicyAssistant = v21;

    objc_storeStrong(&v18->_lockStateAggregator, aggregator);
    objc_storeStrong(&v18->_reachabilityManager, manager);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v18 selector:sel__windowedAccessoryDidAttachOrDetach_ name:@"SBUIWindowedAccessoryDidAttachOrDetachNotification" object:0];

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
        viewController = [v10 viewController];
        [viewController setTransientOverlayDelegate:0];
        [viewController setIdleTimerCoordinator:0];
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
  objectEnumerator = [(NSMapTable *)self->_entityToSceneDeactivationAssertion objectEnumerator];
  v13 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v20 + 1) + 8 * j) relinquish];
      }

      v14 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v28 count:16];
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBUIWindowedAccessoryDidAttachOrDetachNotification" object:0];

  [(SBTransientOverlayScenePresenter *)self setCoverSheetPresentationManager:0];
  [(BSInvalidatable *)self->_preventVideoCallPIPFromAppearingBelowControlCenterAssertion invalidate];
  preventVideoCallPIPFromAppearingBelowControlCenterAssertion = self->_preventVideoCallPIPFromAppearingBelowControlCenterAssertion;
  self->_preventVideoCallPIPFromAppearingBelowControlCenterAssertion = 0;

  v19.receiver = self;
  v19.super_class = SBTransientOverlayScenePresenter;
  [(SBTransientOverlayScenePresenter *)&v19 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v9 = observerCopy;
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    observerCopy = v9;
    if (!v5)
    {
      observers = self->_observers;
      if (!observers)
      {
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v8 = self->_observers;
        self->_observers = weakObjectsHashTable;

        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v9];
      observerCopy = v9;
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
  }

  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)setCoverSheetPresentationManager:(id)manager
{
  managerCopy = manager;
  coverSheetPresentationManager = self->_coverSheetPresentationManager;
  v9 = managerCopy;
  if (coverSheetPresentationManager != managerCopy)
  {
    if (coverSheetPresentationManager)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:self name:@"SBCoverSheetWillPresentNotification" object:self->_coverSheetPresentationManager];
    }

    objc_storeStrong(&self->_coverSheetPresentationManager, manager);
    if (self->_coverSheetPresentationManager)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__handleCoverSheetWillPresent_ name:@"SBCoverSheetWillPresentNotification" object:self->_coverSheetPresentationManager];
    }
  }
}

- (BOOL)canHandleButtonEvents
{
  _buttonEventHandlingViewController = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  v3 = _buttonEventHandlingViewController != 0;

  return v3;
}

- (int64_t)preferredGestureDismissalStyle
{
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];

  if ([(SBLockStateAggregator *)self->_lockStateAggregator hasAnyLockState])
  {
    preferredLockedGestureDismissalStyle = [viewController preferredLockedGestureDismissalStyle];
  }

  else
  {
    preferredLockedGestureDismissalStyle = [viewController preferredUnlockedGestureDismissalStyle];
  }

  v6 = preferredLockedGestureDismissalStyle;

  return v6;
}

- (void)setBannerManager:(id)manager
{
  managerCopy = manager;
  if (self->_bannerManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_bannerManager, manager);
    [(SBTransientOverlayScenePresenter *)self _updateFeaturePolicies];
    managerCopy = v6;
  }
}

- (void)setInCallPresentationManager:(id)manager
{
  managerCopy = manager;
  if (self->_inCallPresentationManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_inCallPresentationManager, manager);
    [(SBTransientOverlayScenePresenter *)self _updateFeaturePolicies];
    managerCopy = v6;
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

        viewController = [*(*(&v9 + 1) + 8 * i) viewController];
        shouldDisableControlCenter = [viewController shouldDisableControlCenter];

        if (shouldDisableControlCenter)
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
          viewController = [v6 viewController];
          dismissesForCoverSheetPresentation = [viewController dismissesForCoverSheetPresentation];

          if (!dismissesForCoverSheetPresentation)
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

        viewController = [*(*(&v9 + 1) + 8 * i) viewController];
        shouldDisableSiri = [viewController shouldDisableSiri];

        if (shouldDisableSiri)
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
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  window = [_topmostPresentedEntity window];
  [window windowLevel];
  v5 = v4;

  return v5;
}

- (UIStatusBarStyleRequest)currentStatusBarStyleRequest
{
  _statusBarEntity = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
  viewController = [_statusBarEntity viewController];
  currentStatusBarStyleRequest = [viewController currentStatusBarStyleRequest];

  return currentStatusBarStyleRequest;
}

- (BOOL)handleDoubleHeightStatusBarTap
{
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];

  if (viewController)
  {
    handleDoubleHeightStatusBarTap = [viewController handleDoubleHeightStatusBarTap];
  }

  else
  {
    handleDoubleHeightStatusBarTap = 0;
  }

  return handleDoubleHeightStatusBarTap;
}

- (BOOL)hasPresentationAboveWindowLevel:(double)level
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

        window = [*(*(&v10 + 1) + 8 * i) window];
        [window windowLevel];
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
  topmostPresentedViewController = [(SBTransientOverlayScenePresenter *)self topmostPresentedViewController];
  canBecomeLocalFirstResponder = [topmostPresentedViewController canBecomeLocalFirstResponder];

  return canBecomeLocalFirstResponder;
}

- (BOOL)activePresentationPreventsDragAndDrop
{
  hasActivePresentation = [(SBTransientOverlayScenePresenter *)self hasActivePresentation];
  if (hasActivePresentation)
  {
    topmostPresentedViewController = [(SBTransientOverlayScenePresenter *)self topmostPresentedViewController];
    shouldPreventDragAndDrop = [topmostPresentedViewController shouldPreventDragAndDrop];

    LOBYTE(hasActivePresentation) = shouldPreventDragAndDrop;
  }

  return hasActivePresentation;
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
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];
  shouldUseSceneBasedKeyboardFocus = [viewController shouldUseSceneBasedKeyboardFocus];

  return shouldUseSceneBasedKeyboardFocus;
}

- (BOOL)hasVisibleStatusBar
{
  _statusBarEntity = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
  viewController = [_statusBarEntity viewController];
  hasVisibleStatusBar = [viewController hasVisibleStatusBar];

  return hasVisibleStatusBar;
}

- (BOOL)isPresentingViewController:(id)controller
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
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
          viewController = [v9 viewController];

          if (viewController == controllerCopy)
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

- (BOOL)isTopmostPresentedViewController:(id)controller
{
  if (!controller)
  {
    return 0;
  }

  controllerCopy = controller;
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];
  v7 = viewController == controllerCopy;

  return v7;
}

- (BOOL)hasActivePresentationFromProcess:(id)process
{
  v15 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  presentedViewControllers = [(SBTransientOverlayScenePresenter *)self presentedViewControllers];
  v6 = [presentedViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(presentedViewControllers);
        }

        if ([*(*(&v10 + 1) + 8 * i) isPresentedByProcess:processCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [presentedViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)hasActivePresentationFromBundleIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  presentedViewControllers = [(SBTransientOverlayScenePresenter *)self presentedViewControllers];
  v6 = [presentedViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(presentedViewControllers);
        }

        if ([*(*(&v10 + 1) + 8 * i) isPresentedByBundleIdentifier:identifierCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [presentedViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];
  keyboardFocusTarget = [viewController keyboardFocusTarget];

  return keyboardFocusTarget;
}

- (BOOL)isTopmostPresentationFromSceneWithIdentityTokenString:(id)string
{
  stringCopy = string;
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];
  v7 = [viewController isPresentedFromSceneWithIdentityTokenString:stringCopy];

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
  _statusBarEntity = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
  viewController = [_statusBarEntity viewController];
  prefersStatusBarActivityItemVisible = [viewController prefersStatusBarActivityItemVisible];

  return prefersStatusBarActivityItemVisible;
}

- (id)newContentStatusBarHiddenAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  if (!self->_contentStatusBarHiddenAssertions)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    contentStatusBarHiddenAssertions = self->_contentStatusBarHiddenAssertions;
    self->_contentStatusBarHiddenAssertions = v5;
  }

  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277CF0CE8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __81__SBTransientOverlayScenePresenter_newContentStatusBarHiddenAssertionWithReason___block_invoke;
  v17 = &unk_2783A9070;
  objc_copyWeak(&v18, &location);
  v12 = [v7 initWithIdentifier:uUIDString forReason:reasonCopy queue:v10 invalidationBlock:&v14];

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

- (void)performDismissalRequest:(id)request outerCompletionHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v37 = requestCopy;
  requestType = [requestCopy requestType];
  if ((requestType - 2) < 2)
  {
    v36 = handlerCopy;
    selfCopy = self;
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
    v47 = handlerCopy;
    v20 = requestCopy;
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
      reverseObjectEnumerator = [v35 reverseObjectEnumerator];
      v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v57 count:16];
      if (v24)
      {
        v25 = *v42;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v42 != v25)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v27 = *(*(&v41 + 1) + 8 * i);
            isAnimated = [v20 isAnimated];
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __83__SBTransientOverlayScenePresenter_performDismissalRequest_outerCompletionHandler___block_invoke_2;
            v38[3] = &unk_2783B2050;
            v40 = &v49;
            v39 = v22;
            [(SBTransientOverlayScenePresenter *)selfCopy _dismissEntity:v27 animated:isAnimated completion:v38];
          }

          v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v57 count:16];
        }

        while (v24);
      }
    }

    _Block_object_dispose(&v49, 8);
    handlerCopy = v36;
  }

  else if (requestType)
  {
    if (requestType == 1)
    {
      v9 = handlerCopy;
      viewController = [requestCopy viewController];
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
          viewController2 = [v15 viewController];
          v17 = viewController2 == viewController;

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

        isAnimated2 = [v37 isAnimated];
        completionHandler = [v37 completionHandler];
        [(SBTransientOverlayScenePresenter *)self _dismissEntity:v31 animated:isAnimated2 completion:completionHandler];
      }

      else
      {
LABEL_12:

LABEL_29:
        completionHandler2 = [v37 completionHandler];
        v31 = completionHandler2;
        if (completionHandler2)
        {
          (*(completionHandler2 + 16))(completionHandler2);
        }
      }

      handlerCopy = v9;
    }
  }

  else
  {
    completionHandler3 = [requestCopy completionHandler];
    v30 = completionHandler3;
    if (completionHandler3)
    {
      (*(completionHandler3 + 16))(completionHandler3);
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

- (void)performPresentationRequest:(id)request
{
  v165 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  isInitiatingEntityPresentation = self->_isInitiatingEntityPresentation;
  self->_isInitiatingEntityPresentation = 1;
  _currentExternalStatusBarSettings = [(SBTransientOverlayScenePresenter *)self _currentExternalStatusBarSettings];
  v116 = [requestCopy mutableCopy];
  viewController = [v116 viewController];
  isAnimated = [requestCopy isAnimated];
  v5 = SBLogTransientOverlay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = viewController;
    *&buf[22] = 1024;
    LODWORD(v162) = isAnimated;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Performing presentation for %{public}@ animated: %{BOOL}u", buf, 0x1Cu);
  }

  [viewController setTransientOverlayDelegate:self];
  [viewController bs_beginAppearanceTransition:1 animated:isAnimated];
  if (![(NSMutableArray *)self->_entities count])
  {
    _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([WeakRetained transientOverlayScenePresenter:self shouldResignFirstResponderForKeyWindow:_applicationKeyWindow])
    {
      canResignFirstResponder = [_applicationKeyWindow canResignFirstResponder];

      if (canResignFirstResponder)
      {
        objc_storeStrong(&self->_initialPresentationKeyWindow, _applicationKeyWindow);
        [(UIWindow *)self->_initialPresentationKeyWindow resignFirstResponder];
      }
    }

    else
    {
    }
  }

  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  originatingProcess = [v116 originatingProcess];
  if (!_topmostPresentedEntity)
  {
    goto LABEL_26;
  }

  viewController2 = [_topmostPresentedEntity viewController];
  if (([viewController2 allowsStackingOverlayContentAbove] & 1) == 0)
  {
    if (originatingProcess)
    {
      viewController3 = [_topmostPresentedEntity viewController];
      v11 = [viewController3 isPresentedByProcess:originatingProcess];

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
    viewController2 = v12;
    v13 = [viewController2 countByEnumeratingWithState:&v155 objects:v164 count:16];
    if (v13)
    {
      v14 = *v156;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v156 != v14)
          {
            objc_enumerationMutation(viewController2);
          }

          v16 = *(*(&v155 + 1) + 8 * i);
          if (([v16 isDismissing] & 1) == 0)
          {
            [(SBTransientOverlayScenePresenter *)self _dismissEntity:v16 animated:1 completion:0];
          }
        }

        v13 = [viewController2 countByEnumeratingWithState:&v155 objects:v164 count:16];
      }

      while (v13);
    }
  }

LABEL_26:
  preferredInterfaceOrientationForPresentation = [viewController preferredInterfaceOrientationForPresentation];
  supportedInterfaceOrientations = [viewController supportedInterfaceOrientations];
  v117 = objc_loadWeakRetained(&self->_delegate);
  if (preferredInterfaceOrientationForPresentation)
  {
    v19 = SBLogTransientOverlay();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = BSInterfaceOrientationDescription();
      *buf = 138543618;
      *&buf[4] = viewController;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ has a preferred interface orientation: %{public}@", buf, 0x16u);
    }

    v21 = preferredInterfaceOrientationForPresentation;
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

  v23 = supportedInterfaceOrientations & 0x1E;
  if ((supportedInterfaceOrientations & 0x1E) == 0)
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
  [viewController setContainerOrientation:?];
  [(SBTransientOverlayScenePresenter *)self setFluidDismissalState:0 forViewController:viewController];
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
    windowScene = [(SBTransientOverlayScenePresenter *)self windowScene];
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBTransientOverlayScenePresenter-%@", viewController];
    v110 = [(SBWindow *)v37 initWithWindowScene:windowScene rootViewController:viewController role:@"SBTraitsParticipantRoleTransientOverlay" debugName:v39];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBTransientOverlayWindow *)v110 setBackgroundColor:clearColor];

    if (!self->_entities)
    {
      v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
      entities = self->_entities;
      self->_entities = v41;
    }

    v43 = [_SBTransientOverlayPresentedEntity alloc];
    v44 = *MEMORY[0x277D76EE8] + 5.0;
    v36 = [(_SBTransientOverlayPresentedEntity *)v43 initWithViewController:viewController window:v110 baseWindowLevel:v44];
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
    v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"<TransientOverlayEntity-%@>", viewController];
    v57 = [v117 transientOverlayScenePresenter:self acquireDisableAutoUnlockAssertionWithReason:v56];
    [(_SBTransientOverlayPresentedEntity *)v36 setDisableAutoUnlockAssertion:v57];

    v58 = +[SBUIController sharedInstanceIfExists];
    isConnectedToWindowedAccessory = [v58 isConnectedToWindowedAccessory];

    v60 = +[SBUIController sharedInstanceIfExists];
    [v60 visibleScreenCoordinatesForWindowedAccessory];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    [viewController didTransitionToAttachedToWindowedAccessory:isConnectedToWindowedAccessory windowedAccessoryCutoutFrameInScreen:{v62, v64, v66, v68}];
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
    viewController4 = [v29 viewController];
    v31 = viewController4;
    if (viewController4 == viewController)
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

  isDismissing = [v29 isDismissing];

  if ((isDismissing & 1) == 0)
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
    *&buf[14] = viewController;
    _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Using existing entity for presenting %{public}@", buf, 0x16u);
  }

  [(_SBTransientOverlayPresentedEntity *)v107 setDismissing:0];
  v35 = 0;
  v36 = v107;
LABEL_79:
  self->_isInitiatingEntityPresentation = isInitiatingEntityPresentation;
  [(SBTransientOverlayScenePresenter *)self _updateBackgroundWindowForEntity:v36];
  [(SBTransientOverlayScenePresenter *)self _updateWindowHitTestingForEntity:v36];
  window = [(_SBTransientOverlayPresentedEntity *)v36 window];
  [(SBTransientOverlayScenePresenter *)self _windowLevelForEntity:v36];
  v71 = v70;
  [window setLevel:?];
  [window setAccessibilityIdentifier:@"SBTransientOverlayWindow"];
  if (v35)
  {
    v72 = SBLogTransientOverlay();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = viewController;
      *&buf[22] = 2048;
      v162 = v71;
      _os_log_impl(&dword_21ED4E000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@: Created window for %{public}@ at level: %f", buf, 0x20u);
    }
  }

  [viewController setIdleTimerCoordinator:self];
  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_79;
  v137[3] = &unk_2783B66A8;
  v113 = window;
  v138 = v113;
  [viewController updateDisplayLayoutElementWithBuilder:v137];
  [(SBTransientOverlayScenePresenter *)self _applyProximityDetectionModeForEntity:v36];
  [(SBTransientOverlayScenePresenter *)self _applyWallpaperAnimationSuspensionAssertionForEntity:v36];
  [(SBTransientOverlayScenePresenter *)self _updateCurrentEntityHomeGrabberAnimated:isAnimated];
  [(SBTransientOverlayScenePresenter *)self _updateZStackStateWithAnimationBehavior:isAnimated reason:@"perform presentation request"];
  [(SBTransientOverlayScenePresenter *)self _updateFeaturePolicies];
  [(SBTransientOverlayScenePresenter *)self _updateDeactivationAssertions];
  v111 = objc_loadWeakRetained(&self->_windowScene);
  _topmostPresentedEntity2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController5 = [_topmostPresentedEntity2 viewController];

  sceneForClientSettings = [viewController5 sceneForClientSettings];
  if (sceneForClientSettings || ([MEMORY[0x277D0AAD8] sharedInstance], v75 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v111, "_FBSScene"), v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v76, "identityToken"), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v75, "sceneFromIdentityToken:", v77), v78 = objc_claimAutoreleasedReturnValue(), v77, v76, v75, (sceneForClientSettings = v78) != 0))
  {
    zStackPhysicalButtonPolicyAssistant = self->_zStackPhysicalButtonPolicyAssistant;
    v104 = sceneForClientSettings;
    v160 = sceneForClientSettings;
    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
    [(SBZStackForegroundSceneOrderedPolicyAssistant *)zStackPhysicalButtonPolicyAssistant setForegroundScenes:v80];
  }

  else
  {
    v104 = 0;
  }

  v81 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeProvider:viewController byCoordinator:self reason:@"SBTransientOverlayScenePresenterRequestedIdleTimer"];
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleTransientOverlay") & 1) == 0)
  {
    [v113 _legacySetRotatableViewOrientation:v103 duration:0.0];
    _topmostPresentedEntity3 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
    window2 = [_topmostPresentedEntity3 window];
    _windowInterfaceOrientation = [window2 _windowInterfaceOrientation];

    if (self->_topmostViewControllerInterfaceOrientation != _windowInterfaceOrientation)
    {
      [v117 transientOverlayScenePresenter:self willChangeTopmostViewControllerInterfaceOrientationToOrientation:_windowInterfaceOrientation];
      self->_topmostViewControllerInterfaceOrientation = _windowInterfaceOrientation;
    }
  }

  [v117 transientOverlayScenePresenter:self willPresentViewController:viewController];
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
          [v89 transientOverlayScenePresenter:self willPresentViewController:viewController];
        }
      }

      v86 = [v85 countByEnumeratingWithState:&v133 objects:v159 count:16];
    }

    while (v86);
  }

  screen = [v111 screen];
  _isCarScreen = [screen _isCarScreen];

  if (_isCarScreen)
  {
    [v113 setHidden:0];
  }

  else
  {
    [v113 makeKeyAndVisible];
  }

  [(_SBTransientOverlayPresentedEntity *)v36 setHasFinishedWindowInitialization:1];
  newTransientOverlayPresentationTransitionCoordinator = [viewController newTransientOverlayPresentationTransitionCoordinator];
  v93 = objc_alloc_init(SBTransientOverlayDefaultTransitionContextProvider);
  [(SBTransientOverlayDefaultTransitionContextProvider *)v93 setAnimated:isAnimated];
  [v117 transientOverlayScenePresenterRequestsAppIconForceTouchDismissal:self animated:isAnimated];
  if ([v116 shouldDismissSiri])
  {
    [v117 transientOverlayScenePresenterRequestsSiriDismissal:self animated:isAnimated];
  }

  completionHandler = [v116 completionHandler];
  objc_initWeak(buf, v93);
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_2_92;
  v130[3] = &unk_2783A97D8;
  v130[4] = self;
  v95 = _currentExternalStatusBarSettings;
  v131 = v95;
  v132 = isAnimated;
  v119[0] = MEMORY[0x277D85DD0];
  v119[1] = 3221225472;
  v119[2] = __63__SBTransientOverlayScenePresenter_performPresentationRequest___block_invoke_3_93;
  v119[3] = &unk_2783C3C50;
  v96 = v36;
  v120 = v96;
  selfCopy = self;
  v97 = viewController;
  v122 = v97;
  v98 = newTransientOverlayPresentationTransitionCoordinator;
  v123 = v98;
  objc_copyWeak(&v128, buf);
  v99 = v117;
  v124 = v99;
  v100 = requestCopy;
  v125 = v100;
  v129 = isAnimated;
  v101 = v113;
  v126 = v101;
  v102 = completionHandler;
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

- (void)setFluidDismissalState:(id)state forViewController:(id)controller
{
  stateCopy = state;
  controllerCopy = controller;
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
  v10 = controllerCopy;
  v53 = v10;
  v54 = &v55;
  [(NSMutableArray *)entities enumerateObjectsWithOptions:2 usingBlock:v52];
  v11 = v56[5];
  if (!v11)
  {
    goto LABEL_20;
  }

  fluidDismissalState = [v11 fluidDismissalState];
  [v56[5] setFluidDismissalState:stateCopy];
  view = [v10 view];
  [view bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  dismissalType = [stateCopy dismissalType];
  v43 = 0.0;
  if ((dismissalType - 5) < 2)
  {
    [stateCopy contentRect];
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
    [stateCopy contentWeighting];
    v34 = v33;
    traitCollection = 0;
    v36 = MaxY - v32;
LABEL_9:
    v39 = 1;
    goto LABEL_10;
  }

  if (dismissalType != 3 && dismissalType != 4)
  {
    v34 = 1.0;
    traitCollection = 1;
    v36 = 0.0;
    goto LABEL_9;
  }

  [stateCopy contentWeighting];
  v34 = v37;
  [stateCopy backgroundWeighting];
  v43 = v38;
  v39 = 0;
  traitCollection = 1;
  v36 = 0.0;
LABEL_10:
  v50 = 1.0;
  sx = 1.0;
  v48 = *MEMORY[0x277CBF348];
  v49 = v48;
  [stateCopy contentRect];
  [(SBTransientOverlayScenePresenter *)self _getContentScale:&sx translation:&v49 fromRect:v56[5] entity:?];
  [stateCopy homeGrabberContentRect];
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
  transitionPhase = [fluidDismissalState transitionPhase];
  if (transitionPhase == [stateCopy transitionPhase])
  {
    screen = [(SBTransientOverlayScenePresenter *)self _preferredStatusBarVisibilityForEntity:v56[5]];
    transitionPhase = [(SBTransientOverlayScenePresenter *)self _currentExternalStatusBarSettings];
    [v10 setPresentationPrefersStatusBarHidden:-[SBTransientOverlayScenePresenter _isPresentationStatusBarHiddenForVisibility:currentExternalStatusBarSettings:](self initialStatusBarSettings:{"_isPresentationStatusBarHiddenForVisibility:currentExternalStatusBarSettings:", screen, transitionPhase), 0}];
  }

  else
  {
    [(SBTransientOverlayScenePresenter *)self _updateStatusBarWithCurrentExternalStatusBarSettings:0 animated:1];
  }

  [v10 setPresentationHomeGrabberAlpha:v34];
  [v10 setPresentationHomeGrabberAdditionalEdgeSpacing:v36];
  if (traitCollection && (v41 = v56[5]) != 0)
  {
    self = [v41 window];
    transitionPhase = [(SBTransientOverlayScenePresenter *)self windowScene];
    screen = [transitionPhase screen];
    traitCollection = [screen traitCollection];
    [traitCollection displayCornerRadius];
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

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  v10 = *MEMORY[0x277D85DE8];
  _buttonEventHandlingViewController = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (_buttonEventHandlingViewController)
  {
    v5 = SBLogTransientOverlay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = _buttonEventHandlingViewController;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Transient overlay handled headset button press: %@", &v8, 0xCu);
    }

    v6 = [_buttonEventHandlingViewController handleHeadsetButtonPress:pressCopy];
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
  _buttonEventHandlingViewController = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (_buttonEventHandlingViewController)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = _buttonEventHandlingViewController;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled home button press: %{public}@", &v6, 0xCu);
    }

    handleHomeButtonPress = [_buttonEventHandlingViewController handleHomeButtonPress];
  }

  else
  {
    handleHomeButtonPress = 0;
  }

  return handleHomeButtonPress;
}

- (BOOL)handleHomeButtonLongPress
{
  v8 = *MEMORY[0x277D85DE8];
  _buttonEventHandlingViewController = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (_buttonEventHandlingViewController)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = _buttonEventHandlingViewController;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled home button long press: %{public}@", &v6, 0xCu);
    }

    handleHomeButtonLongPress = [_buttonEventHandlingViewController handleHomeButtonLongPress];
  }

  else
  {
    handleHomeButtonLongPress = 0;
  }

  return handleHomeButtonLongPress;
}

- (BOOL)handleLockButtonPress
{
  v8 = *MEMORY[0x277D85DE8];
  _buttonEventHandlingViewController = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (_buttonEventHandlingViewController)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = _buttonEventHandlingViewController;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled lock button press: %{public}@", &v6, 0xCu);
    }

    handleLockButtonPress = [_buttonEventHandlingViewController handleLockButtonPress];
  }

  else
  {
    handleLockButtonPress = 0;
  }

  return handleLockButtonPress;
}

- (BOOL)handleVoiceCommandButtonPress
{
  v8 = *MEMORY[0x277D85DE8];
  _buttonEventHandlingViewController = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (_buttonEventHandlingViewController)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = _buttonEventHandlingViewController;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled voice command button press: %{public}@", &v6, 0xCu);
    }

    handleVoiceCommandButtonPress = [_buttonEventHandlingViewController handleVoiceCommandButtonPress];
  }

  else
  {
    handleVoiceCommandButtonPress = 0;
  }

  return handleVoiceCommandButtonPress;
}

- (BOOL)handleVolumeUpButtonPress
{
  v8 = *MEMORY[0x277D85DE8];
  _buttonEventHandlingViewController = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (_buttonEventHandlingViewController)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = _buttonEventHandlingViewController;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled volume up button press: %{public}@", &v6, 0xCu);
    }

    handleVolumeUpButtonPress = [_buttonEventHandlingViewController handleVolumeUpButtonPress];
  }

  else
  {
    handleVolumeUpButtonPress = 0;
  }

  return handleVolumeUpButtonPress;
}

- (BOOL)handleVolumeDownButtonPress
{
  v8 = *MEMORY[0x277D85DE8];
  _buttonEventHandlingViewController = [(SBTransientOverlayScenePresenter *)self _buttonEventHandlingViewController];
  if (_buttonEventHandlingViewController)
  {
    v3 = SBLogTransientOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = _buttonEventHandlingViewController;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Transient overlay handled volume down button press: %{public}@", &v6, 0xCu);
    }

    handleVolumeDownButtonPress = [_buttonEventHandlingViewController handleVolumeDownButtonPress];
  }

  else
  {
    handleVolumeDownButtonPress = 0;
  }

  return handleVolumeDownButtonPress;
}

- (void)zStackParticipantDidChange:(id)change
{
  changeCopy = change;
  [(SBTransientOverlayScenePresenter *)self _updateCurrentEntityHomeGrabberAnimated:self->_homeAffordanceUpdatesShouldBeAnimated];
  if ([changeCopy activationState] == 1)
  {
    _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
    [(SBTransientOverlayScenePresenter *)self _preserveInputViewsForEntityIfNeeded:_topmostPresentedEntity];
  }

  else
  {
    if ([changeCopy activationState])
    {
      goto LABEL_6;
    }

    _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
    [(SBTransientOverlayScenePresenter *)self _restoreInputViewsForEntityIfNeeded:_topmostPresentedEntity];
  }

LABEL_6:
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];
  if ([(SBLockStateAggregator *)self->_lockStateAggregator hasAnyLockState])
  {
    preferredLockedGestureDismissalStyle = [viewController preferredLockedGestureDismissalStyle];
  }

  else
  {
    preferredLockedGestureDismissalStyle = [viewController preferredUnlockedGestureDismissalStyle];
  }

  if (_topmostPresentedEntity)
  {
    v8 = preferredLockedGestureDismissalStyle == 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  v10 = v9;
  if ([viewController preventsSystemApertureSuppressionFromBelow])
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

  [preferencesCopy setActivationPolicyForParticipantsBelow:v10];
  if (v9)
  {
    [preferencesCopy setHomeAffordanceDrawingSuppression:{objc_msgSend(viewController, "homeAffordanceSuppression")}];
    v11 = objc_alloc_init(MEMORY[0x277CCAB58]);
    bannerLongLookWindowLevelAssertion = [_topmostPresentedEntity bannerLongLookWindowLevelAssertion];

    if (bannerLongLookWindowLevelAssertion)
    {
      [v11 addIndex:22];
    }

    controlCenterWindowLevelAssertion = [_topmostPresentedEntity controlCenterWindowLevelAssertion];

    if (controlCenterWindowLevelAssertion)
    {
      [v11 addIndex:19];
    }

    siriWindowLevelAssertion = [_topmostPresentedEntity siriWindowLevelAssertion];

    if (siriWindowLevelAssertion)
    {
      [v11 addIndex:17];
    }

    [preferencesCopy setAssertIsAboveParticipantIdentifiers:v11];
  }

  if ([(SBTransientOverlayScenePresenter *)self shouldUseSceneBasedKeyboardFocusForActivePresentation])
  {
    keyboardFocusTargetForTopmostPresentingScene = [(SBTransientOverlayScenePresenter *)self keyboardFocusTargetForTopmostPresentingScene];
    if (keyboardFocusTargetForTopmostPresentingScene)
    {
      [preferencesCopy setOverrideKeyboardFocusTarget:keyboardFocusTargetForTopmostPresentingScene];
      [preferencesCopy setAllowsKeyboardArbiterToDetermineFocusTarget:1];
    }
  }

  _topmostPresentedEntity2 = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController2 = [_topmostPresentedEntity2 viewController];

  grabberView = [viewController2 grabberView];
  v19 = grabberView;
  if (v9)
  {
    [grabberView addObserver:self];
  }

  else
  {
    [grabberView removeObserver:self];
  }

  if (v10)
  {
    if ([(SBTransientOverlayScenePresenter *)self hasVisibleStatusBar])
    {
      v20 = 0;
    }

    else
    {
      topmostPresentedViewController = [(SBTransientOverlayScenePresenter *)self topmostPresentedViewController];
      if ([topmostPresentedViewController presentationPrefersStatusBarHidden])
      {
        _statusBarEntity = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
        fluidDismissalState = [_statusBarEntity fluidDismissalState];
        v20 = fluidDismissalState == 0;
      }

      else
      {
        v20 = 0;
      }
    }

    v21 = [(SBTransientOverlayScenePresenter *)self preferredGestureDismissalStyle]== 0 || v20;
    if (v9)
    {
      grabberView2 = [viewController2 grabberView];
      isHidden = [grabberView2 isHidden];

      v21 |= isHidden;
    }
  }

  else
  {
    v21 = 0;
  }

  [preferencesCopy setSuppressSystemApertureForSystemChromeSuppression:v21 & 1];
  associatedBundleIdentifiersToSuppressInSystemAperture = [viewController2 associatedBundleIdentifiersToSuppressInSystemAperture];
  [preferencesCopy setAssociatedBundleIdentifiersToSuppressInSystemAperture:associatedBundleIdentifiersToSuppressInSystemAperture];

  associatedSceneIdentifiersToSuppressInSystemAperture = [viewController2 associatedSceneIdentifiersToSuppressInSystemAperture];
  [preferencesCopy setAssociatedSceneIdentifiersToSuppressInSystemAperture:associatedSceneIdentifiersToSuppressInSystemAperture];

  audioCategoriesDisablingVolumeHUD = [viewController2 audioCategoriesDisablingVolumeHUD];
  [preferencesCopy setAudioCategoriesDisablingVolumeHUD:audioCategoriesDisablingVolumeHUD];

  physicalButtonSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant physicalButtonSceneTargets];
  [preferencesCopy setPhysicalButtonSceneTargets:physicalButtonSceneTargets];

  captureButtonFullFidelityEventRequestingScenes = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
  [preferencesCopy setCaptureButtonFullFidelityEventRequestingScenes:captureButtonFullFidelityEventRequestingScenes];

  foregroundCaptureSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant foregroundCaptureSceneTargets];
  [preferencesCopy setForegroundCaptureSceneTargets:foregroundCaptureSceneTargets];
}

- (void)homeGrabberViewDidReceiveClick:(id)click
{
  if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
  {

    [(SBTransientOverlayScenePresenter *)self handleHomeButtonPress];
  }
}

- (void)homeGrabberViewDidUpdateHidden:(id)hidden
{
  hiddenCopy = hidden;
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];
  grabberView = [viewController grabberView];

  if (grabberView == hiddenCopy)
  {
    [(SBTransientOverlayScenePresenter *)self _updateZStackStateWithAnimationBehavior:2 reason:@"homeGrabberViewDidUpdateHidden"];
  }

  else
  {
    [hiddenCopy removeObserver:self];
  }
}

- (id)idleTimerProvider:(id)provider didProposeBehavior:(id)behavior forReason:(id)reason
{
  providerCopy = provider;
  behaviorCopy = behavior;
  reasonCopy = reason;
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v12 = _topmostPresentedEntity;
  if (_topmostPresentedEntity && ([_topmostPresentedEntity viewController], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 == providerCopy))
  {
    v14 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeIdleTimerBehavior:behaviorCopy fromProvider:providerCopy reason:reasonCopy];
  }

  else
  {
    v14 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper updateProvider:providerCopy behavior:behaviorCopy reason:reasonCopy];
  }

  v15 = v14;

  return v15;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior
{
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v5 = _topmostPresentedEntity;
  if (_topmostPresentedEntity)
  {
    viewController = [_topmostPresentedEntity viewController];
    v7 = [viewController coordinatorRequestedIdleTimerBehavior:self];
  }

  else
  {
    v7 = +[SBIdleTimerBehavior defaultBehavior];
  }

  return v7;
}

- (int64_t)defaultPreferredInterfaceOrientationForPresentationForTransientOverlayViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained defaultPreferredInterfaceOrientationForPresentationForTransientOverlayScenePresenter:self];

  return v5;
}

- (unint64_t)defaultSupportedInterfaceOrientationsForTransientOverlayViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained defaultSupportedInterfaceOrientationsForTransientOverlayScenePresenter:self];

  return v5;
}

- (BOOL)defaultShouldAutorotateForTransientOverlayViewController:(id)controller
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained defaultShouldAutorotateForTransientOverlayScenePresenter:selfCopy];

  return selfCopy;
}

- (BOOL)isKeyboardVisibleForSpringBoardForTransientOverlayViewController:(id)controller
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained isKeyboardVisibleForSpringBoardForTransientOverlayScenePresenter:selfCopy];

  return selfCopy;
}

- (void)transientOverlayViewControllerNeedsContentOpaqueUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
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
      viewController = [v10 viewController];

      if (viewController == updateCopy)
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

- (void)transientOverlayViewControllerNeedsGestureDismissalStyleUpdate:(id)update
{
  updateCopy = update;
  if (updateCopy)
  {
    v7 = updateCopy;
    _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
    viewController = [_topmostPresentedEntity viewController];

    updateCopy = v7;
    if (viewController == v7)
    {
      [(SBTransientOverlayScenePresenter *)self _updateCurrentEntityHomeGrabberAnimated:1];
      [(SBTransientOverlayScenePresenter *)self _updateZStackStateWithAnimationBehavior:1 reason:@"transient overlay dismiss style updated"];
      updateCopy = v7;
    }
  }
}

- (void)transientOverlayViewControllerNeedsProximityDetectionUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
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
      viewController = [v10 viewController];

      if (viewController == updateCopy)
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

- (void)transientOverlayViewControllerNeedsStatusBarAppearanceUpdate:(id)update
{
  updateCopy = update;
  _statusBarEntity = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
  viewController = [_statusBarEntity viewController];

  if (viewController == updateCopy)
  {
    _currentExternalStatusBarSettings = [(SBTransientOverlayScenePresenter *)self _currentExternalStatusBarSettings];
    -[SBTransientOverlayScenePresenter _updateStatusBarWithCurrentExternalStatusBarSettings:animated:](self, "_updateStatusBarWithCurrentExternalStatusBarSettings:animated:", _currentExternalStatusBarSettings, [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled]);
  }
}

- (void)transientOverlayViewControllerNeedsWhitePointAdaptivityStyleUpdate:(id)update
{
  updateCopy = update;
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];

  if (viewController == updateCopy)
  {

    [(SBTransientOverlayScenePresenter *)self _updatePreferredWhitePointAdaptivityStyle];
  }
}

- (void)transientOverlayViewControllerWillBeginRotation:(id)rotation toInterfaceOrientation:(int64_t)orientation
{
  v23 = *MEMORY[0x277D85DE8];
  rotationCopy = rotation;
  [rotationCopy setContainerOrientation:orientation];
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
        viewController = [v12 viewController];

        if (viewController == rotationCopy)
        {
          v14 = v12;

          if (v14)
          {
            [v14 setRotating:1];
            [(SBTransientOverlayScenePresenter *)self _updateBackgroundWindowForEntity:v14];
            if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleTransientOverlay") & 1) == 0)
            {
              _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];

              if (_topmostPresentedEntity == v14)
              {
                WeakRetained = objc_loadWeakRetained(&self->_delegate);
                [WeakRetained transientOverlayScenePresenter:self willChangeTopmostViewControllerInterfaceOrientationToOrientation:orientation];

                self->_topmostViewControllerInterfaceOrientation = orientation;
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
  _currentExternalStatusBarSettings = [(SBTransientOverlayScenePresenter *)self _currentExternalStatusBarSettings];
  [(SBTransientOverlayScenePresenter *)self _updateStatusBarWithCurrentExternalStatusBarSettings:_currentExternalStatusBarSettings animated:0];
}

- (void)transientOverlayViewControllerDidEndRotation:(id)rotation
{
  v18 = *MEMORY[0x277D85DE8];
  rotationCopy = rotation;
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
      viewController = [v10 viewController];

      if (viewController == rotationCopy)
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

- (void)transientOverlayViewControllerNeedsWindowHitTestingUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  updateCopy = update;
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
      viewController = [v10 viewController];

      if (viewController == updateCopy)
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

- (void)transientOverlayViewControllerDidUpdatePresentationPrefersStatusBarHidden:(id)hidden
{
  hiddenCopy = hidden;
  topmostPresentedViewController = [(SBTransientOverlayScenePresenter *)self topmostPresentedViewController];

  if (topmostPresentedViewController == hiddenCopy)
  {

    [(SBTransientOverlayScenePresenter *)self _updateZStackStateWithAnimationBehavior:2 reason:@"presentationPrefersStatusBarHiddenDidChange"];
  }
}

- (BOOL)transientOverlayViewControllerIsForegroundActive:(id)active
{
  activeCopy = active;
  if ([(SBFZStackParticipant *)self->_zStackParticipant activationState])
  {
    v5 = 0;
  }

  else
  {
    topmostPresentedViewController = [(SBTransientOverlayScenePresenter *)self topmostPresentedViewController];
    v5 = topmostPresentedViewController == activeCopy;
  }

  return v5;
}

- (void)transientOverlayViewControllerDidUpdateHIDEventDeferringDisabled:(id)disabled
{
  v33 = *MEMORY[0x277D85DE8];
  disabledCopy = disabled;
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
      viewController = [v10 viewController];

      if (viewController == disabledCopy)
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

    if ([disabledCopy hidEventDeferringDisabled])
    {
      keyFocusStealingAssertion = [v12 keyFocusStealingAssertion];
      [keyFocusStealingAssertion invalidate];

      [v12 setKeyFocusStealingAssertion:0];
      keyFocusPreventionAssertion = [v12 keyFocusPreventionAssertion];

      if (keyFocusPreventionAssertion)
      {
        v15 = SBLogTransientOverlay();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v30 = 2114;
          v31 = disabledCopy;
          v16 = "%{public}@: Not taking key focus prevention assertion for %{public}@ because it already has one.";
LABEL_20:
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      hostedSceneIdentityTokens = [disabledCopy hostedSceneIdentityTokens];
      if ([hostedSceneIdentityTokens count] == 1)
      {
        v20 = +[SBWorkspace mainWorkspace];
        keyboardFocusController = [v20 keyboardFocusController];
        firstObject = [hostedSceneIdentityTokens firstObject];
        v23 = [keyboardFocusController preventFocusForSceneWithIdentityToken:firstObject reason:@"scene-backed remote transient overlay preventing focus"];

        [v12 setKeyFocusPreventionAssertion:v23];
      }
    }

    else
    {
      keyFocusPreventionAssertion2 = [v12 keyFocusPreventionAssertion];
      [keyFocusPreventionAssertion2 invalidate];

      [v12 setKeyFocusPreventionAssertion:0];
      keyFocusStealingAssertion2 = [v12 keyFocusStealingAssertion];

      if (keyFocusStealingAssertion2)
      {
        v15 = SBLogTransientOverlay();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v30 = 2114;
          v31 = disabledCopy;
          v16 = "%{public}@: Not taking new keyboard focus lock assertion in response to hidEventDeferringDisabled update for %{public}@ because it already has one.";
          goto LABEL_20;
        }

LABEL_21:

        goto LABEL_26;
      }

      hostedSceneIdentityTokens = [(SBTransientOverlayScenePresenter *)self _newKeyboardFocusAssertionForEntity:v12];
      [v12 setKeyFocusStealingAssertion:hostedSceneIdentityTokens];
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
      selfCopy3 = self;
      v30 = 2114;
      v31 = disabledCopy;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring hidEventDeferringDisabled update for %{public}@ because the entity is no longer valid.", buf, 0x16u);
    }
  }

LABEL_26:
}

- (void)_handleCoverSheetWillPresent:(id)present
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
          viewController = [v10 viewController];
          dismissesForCoverSheetPresentation = [viewController dismissesForCoverSheetPresentation];

          if (dismissesForCoverSheetPresentation)
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

- (void)_applyProximityDetectionModeForEntity:(id)entity
{
  entityCopy = entity;
  if (([entityCopy isDismissing] & 1) != 0 || (objc_msgSend(entityCopy, "viewController"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "prefersProximityDetectionEnabled"), v4, !v5))
  {
    [entityCopy setProximityEnabledAssertion:0];
  }

  else
  {
    proximityEnabledAssertion = [entityCopy proximityEnabledAssertion];

    if (!proximityEnabledAssertion)
    {
      entityCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"<TransientOverlayEntity-%p>", entityCopy];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = [WeakRetained transientOverlayScenePresenter:self acquireProximitySensorEnabledAssertionWithReason:entityCopy];
      [entityCopy setProximityEnabledAssertion:v9];
    }
  }
}

- (void)_applyWallpaperAnimationSuspensionAssertionForEntity:(id)entity
{
  entityCopy = entity;
  viewController = [entityCopy viewController];
  isContentOpaque = [viewController isContentOpaque];

  wallpaperAnimationSuspensionAssertion = [entityCopy wallpaperAnimationSuspensionAssertion];
  v7 = wallpaperAnimationSuspensionAssertion;
  if (isContentOpaque)
  {

    if (!v7)
    {
      v8 = MEMORY[0x277CCACA8];
      viewController2 = [entityCopy viewController];
      v10 = [v8 stringWithFormat:@"<TransientOverlayEntity-%@>", viewController2];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v12 = [WeakRetained transientOverlayScenePresenter:self acquireWallpaperAnimationSuspensionAssertionWithReason:v10];
      [entityCopy setWallpaperAnimationSuspensionAssertion:v12];
    }
  }

  else
  {
    [wallpaperAnimationSuspensionAssertion invalidate];

    [entityCopy setWallpaperAnimationSuspensionAssertion:0];
  }
}

- (void)_dismissEntity:(id)entity animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v49 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  completionCopy = completion;
  if (!entityCopy)
  {
    [SBTransientOverlayScenePresenter _dismissEntity:a2 animated:self completion:?];
  }

  viewController = [entityCopy viewController];
  v12 = SBLogTransientOverlay();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v45 = 2114;
    v46 = viewController;
    v47 = 1024;
    v48 = animatedCopy;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Performing dismissal for %{public}@ animated: %{BOOL}u", buf, 0x1Cu);
  }

  v13 = [(SBTransientOverlayScenePresenter *)self isTopmostPresentedViewController:viewController];
  [entityCopy setDismissing:1];
  if (![(SBFZStackParticipant *)self->_zStackParticipant activationState])
  {
    window = [entityCopy window];
    traitsParticipant = [window traitsParticipant];
    [traitsParticipant invalidate];

    window2 = [entityCopy window];
    [window2 _setTraitsParticipant:0];
  }

  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant setForegroundScenes:MEMORY[0x277CBEBF8]];
  [viewController bs_beginAppearanceTransition:0 animated:animatedCopy];
  [(SBTransientOverlayScenePresenter *)self _updateCurrentEntityHomeGrabberAnimated:animatedCopy];
  [(SBTransientOverlayScenePresenter *)self _updateZStackStateWithAnimationBehavior:animatedCopy reason:@"dismissing"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  newTransientOverlayDismissalTransitionCoordinator = [viewController newTransientOverlayDismissalTransitionCoordinator];
  v19 = objc_alloc_init(SBTransientOverlayDefaultTransitionContextProvider);
  [(SBTransientOverlayDefaultTransitionContextProvider *)v19 setAnimated:animatedCopy];
  [(SBTransientOverlayScenePresenter *)self _applyProximityDetectionModeForEntity:entityCopy];
  keyFocusStealingAssertion = [entityCopy keyFocusStealingAssertion];
  [keyFocusStealingAssertion invalidate];

  [entityCopy setKeyFocusStealingAssertion:0];
  keyFocusPreventionAssertion = [entityCopy keyFocusPreventionAssertion];
  [keyFocusPreventionAssertion invalidate];

  [entityCopy setKeyFocusPreventionAssertion:0];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __71__SBTransientOverlayScenePresenter__dismissEntity_animated_completion___block_invoke;
  v41[3] = &unk_2783A9F58;
  v41[4] = self;
  v42 = animatedCopy;
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __71__SBTransientOverlayScenePresenter__dismissEntity_animated_completion___block_invoke_2;
  v31 = &unk_2783C3CA0;
  v32 = entityCopy;
  selfCopy2 = self;
  v34 = viewController;
  v35 = newTransientOverlayDismissalTransitionCoordinator;
  v36 = v19;
  v37 = WeakRetained;
  v39 = animatedCopy;
  v40 = v13;
  v38 = completionCopy;
  v22 = completionCopy;
  v23 = WeakRetained;
  v24 = v19;
  v25 = newTransientOverlayDismissalTransitionCoordinator;
  v26 = viewController;
  v27 = entityCopy;
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

- (double)_backgroundWindowLevelForEntity:(id)entity
{
  v20 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
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
        [entityCopy baseWindowLevel];
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

  [entityCopy baseWindowLevel];
  v13 = v12;

  return v13 + v11 * 2.1;
}

- (id)_currentExternalStatusBarSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained currentStatusBarSettingsForTransientOverlayScenePresenter:self];

  return v4;
}

- (void)_getContentScale:(double *)scale translation:(CGPoint *)translation fromRect:(CGRect)rect entity:(id)entity
{
  width = rect.size.width;
  entityCopy = entity;
  v11 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  v34 = entityCopy;
  fluidDismissalState = [entityCopy fluidDismissalState];
  dismissalType = [fluidDismissalState dismissalType];
  v14 = 1.0;
  if (fluidDismissalState && (dismissalType - 3) <= 1)
  {
    viewController = [v34 viewController];
    view = [viewController view];
    [view bounds];
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

  if (scale)
  {
    *scale = v14;
  }

  if (translation)
  {
    translation->x = v11;
    translation->y = v10;
  }
}

- (void)_invalidateAssertionsForEntity:(id)entity
{
  entityCopy = entity;
  bannerLongLookWindowLevelAssertion = [entityCopy bannerLongLookWindowLevelAssertion];
  [bannerLongLookWindowLevelAssertion invalidate];

  [entityCopy setBannerLongLookWindowLevelAssertion:0];
  bannerLongLookPresentationObservationToken = [entityCopy bannerLongLookPresentationObservationToken];
  [bannerLongLookPresentationObservationToken invalidate];

  [entityCopy setBannerLongLookPresentationObservationToken:0];
  controlCenterWindowLevelAssertion = [entityCopy controlCenterWindowLevelAssertion];
  [controlCenterWindowLevelAssertion invalidate];

  [entityCopy setControlCenterWindowLevelAssertion:0];
  controlCenterPresentationObservationToken = [entityCopy controlCenterPresentationObservationToken];
  [controlCenterPresentationObservationToken invalidate];

  [entityCopy setControlCenterPresentationObservationToken:0];
  siriWindowLevelAssertion = [entityCopy siriWindowLevelAssertion];
  [siriWindowLevelAssertion invalidate];

  [entityCopy setSiriWindowLevelAssertion:0];
  siriPresentationObservationToken = [entityCopy siriPresentationObservationToken];
  [siriPresentationObservationToken invalidate];

  [entityCopy setSiriPresentationObservationToken:0];
  disableAutoUnlockAssertion = [entityCopy disableAutoUnlockAssertion];
  [disableAutoUnlockAssertion invalidate];

  [entityCopy setDisableAutoUnlockAssertion:0];
  wallpaperAnimationSuspensionAssertion = [entityCopy wallpaperAnimationSuspensionAssertion];
  [wallpaperAnimationSuspensionAssertion invalidate];

  [entityCopy setWallpaperAnimationSuspensionAssertion:0];
}

- (BOOL)_isPresentationStatusBarHiddenForVisibility:(int)visibility currentExternalStatusBarSettings:(id)settings
{
  visibilityCopy = visibility;
  if (!visibility)
  {
    alpha = [settings alpha];
    [alpha doubleValue];
    if (BSFloatGreaterThanFloat())
    {
      visibilityCopy = 2;
    }

    else
    {
      visibilityCopy = 1;
    }
  }

  return visibilityCopy == 1;
}

- (id)_newSceneDeactivationAssertionWithReason:(int64_t)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained transientOverlayScenePresenter:self newSceneDeactivationAssertionWithReason:reason];

  return v6;
}

- (int)_preferredStatusBarVisibilityForEntity:(id)entity
{
  entityCopy = entity;
  viewController = [entityCopy viewController];
  _preferredStatusBarVisibility = [viewController _preferredStatusBarVisibility];

  if ([(NSMutableArray *)self->_contentStatusBarHiddenAssertions count])
  {
    v7 = _preferredStatusBarVisibility == 2;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  if (_preferredStatusBarVisibility == 2)
  {
    _statusBarEntity = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];

    if (_statusBarEntity != entityCopy)
    {
LABEL_8:
      _preferredStatusBarVisibility = 1;
      goto LABEL_9;
    }

    fluidDismissalState = [entityCopy fluidDismissalState];
    v11 = fluidDismissalState;
    if (fluidDismissalState && [fluidDismissalState dismissalType] == 4)
    {
      v14 = 0x3FF0000000000000;
      fluidDismissalState2 = [entityCopy fluidDismissalState];
      [fluidDismissalState2 contentRect];
      [(SBTransientOverlayScenePresenter *)self _getContentScale:&v14 translation:0 fromRect:entityCopy entity:?];

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
        _preferredStatusBarVisibility = 0;
      }

      else
      {
        _preferredStatusBarVisibility = v13;
      }
    }

    else
    {
      _preferredStatusBarVisibility = 2;
    }
  }

LABEL_9:

  return _preferredStatusBarVisibility;
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

- (void)_updateBackgroundWindowForEntity:(id)entity
{
  entityCopy = entity;
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SBTransientOverlayScenePresenter__updateBackgroundWindowForEntity___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = entityCopy;
  selfCopy = self;
  v6 = entityCopy;
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

- (void)_updateWindowHitTestingForEntity:(id)entity
{
  entityCopy = entity;
  viewController = [entityCopy viewController];
  window = [entityCopy window];

  [window bs_setHitTestingDisabled:{objc_msgSend(viewController, "prefersWindowHitTestingDisabled")}];
}

- (void)_updateCurrentEntityHomeGrabberAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v26 = *MEMORY[0x277D85DE8];
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  viewController = [_topmostPresentedEntity viewController];
  if ([(SBLockStateAggregator *)self->_lockStateAggregator hasAnyLockState])
  {
    preferredLockedGestureDismissalStyle = [viewController preferredLockedGestureDismissalStyle];
  }

  else
  {
    preferredLockedGestureDismissalStyle = [viewController preferredUnlockedGestureDismissalStyle];
  }

  v7 = preferredLockedGestureDismissalStyle;
  v19 = viewController;
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
          v16 = v14 != _topmostPresentedEntity || v7 != 0;
          v8 &= v16;
          viewController2 = [v14 viewController];
          [viewController2 setPresentationPrefersHomeGrabberHidden:v8 ^ 1u animated:animatedCopy];

          viewController3 = [v14 viewController];
          [viewController3 setHomeGrabberPointerClickDelegate:self];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)_updateZStackStateWithAnimationBehavior:(int64_t)behavior reason:(id)reason
{
  if (behavior == 2)
  {
    zStackParticipant = self->_zStackParticipant;

    [(SBFZStackParticipant *)zStackParticipant setNeedsUpdatePreferencesWithReason:reason];
  }

  else
  {
    homeAffordanceUpdatesShouldBeAnimated = self->_homeAffordanceUpdatesShouldBeAnimated;
    self->_homeAffordanceUpdatesShouldBeAnimated = behavior != 0;
    [(SBFZStackParticipant *)self->_zStackParticipant setNeedsUpdatePreferencesWithReason:reason];
    self->_homeAffordanceUpdatesShouldBeAnimated = homeAffordanceUpdatesShouldBeAnimated;
  }
}

- (void)_updateStatusBarWithCurrentExternalStatusBarSettings:(id)settings animated:(BOOL)animated
{
  animatedCopy = animated;
  v60 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  _statusBarEntity = [(SBTransientOverlayScenePresenter *)self _statusBarEntity];
  v8 = SBLogTransientOverlay();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    viewController = [_statusBarEntity viewController];
    *buf = 138543618;
    selfCopy = self;
    v58 = 2114;
    v59 = viewController;
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

  if (animatedCopy)
  {
    initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  }

  else
  {
    initWithDefaultParameters = 0;
  }

  globalStatusBarAssertion = self->_globalStatusBarAssertion;
  if (v11)
  {
    v17 = globalStatusBarAssertion == 0;
    if (!globalStatusBarAssertion)
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      statusBarManager = [WeakRetained statusBarManager];
      assertionManager = [statusBarManager assertionManager];

      v21 = [assertionManager newSettingsAssertionWithStatusBarHidden:1 atLevel:8 reason:@"Transient Overlay"];
      v22 = self->_globalStatusBarAssertion;
      self->_globalStatusBarAssertion = v21;

      [(SBWindowSceneStatusBarSettingsAssertion *)self->_globalStatusBarAssertion acquireWithAnimationParameters:initWithDefaultParameters];
    }

    if (self->_appStatusBarAssertion)
    {
      v23 = 0;
      v24 = 0;
      goto LABEL_25;
    }

    v26 = objc_loadWeakRetained(&self->_delegate);
    v27 = [v26 transientOverlayScenePresenter:self acquireHideAppStatusBarAssertionWithReason:@"Transient Overlay" animated:animatedCopy];
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
  v29 = settingsCopy;
  v49 = v29;
  v50 = v17;
  v30 = MEMORY[0x223D6F7F0](v48);
  v31 = v30;
  if (animatedCopy)
  {
    initWithDefaultParameters2 = [objc_alloc(MEMORY[0x277D75A88]) initWithDefaultParameters];
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
    v45 = animatedCopy;
    v34 = v31;
    [v33 animateWithParameters:initWithDefaultParameters2 animations:v46 completion:v42];
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
    initWithDefaultParameters2 = v31;
    [v35 performWithoutAnimation:v38];
  }

  windowScene = [(SBTransientOverlayScenePresenter *)self windowScene];
  recordingIndicatorManager = [windowScene recordingIndicatorManager];
  [recordingIndicatorManager updateRecordingIndicatorForStatusBarChanges];
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
  _currentExternalStatusBarSettings = [(SBTransientOverlayScenePresenter *)self _currentExternalStatusBarSettings];
  [(SBTransientOverlayScenePresenter *)self _updateStatusBarWithCurrentExternalStatusBarSettings:_currentExternalStatusBarSettings animated:0];
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
        viewController = [v8 viewController];
        preferredSceneDeactivationReasonValue = [viewController preferredSceneDeactivationReasonValue];

        if (preferredSceneDeactivationReasonValue)
        {
          integerValue = [preferredSceneDeactivationReasonValue integerValue];
          if (!v9 || [v9 reason] != integerValue)
          {
            v13 = [(SBTransientOverlayScenePresenter *)self _newSceneDeactivationAssertionWithReason:integerValue];
            v14 = SBLogTransientOverlay();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              viewController2 = [v8 viewController];
              v16 = UIApplicationSceneDeactivationReasonDescription();
              *buf = v34;
              selfCopy = self;
              v51 = 2114;
              v52 = v13;
              v53 = 2114;
              v54 = viewController2;
              v55 = 2114;
              v56 = v16;
              _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Created new background assertion %{public}@ for %{public}@ with reason: %{public}@", buf, 0x2Au);
            }

            if (v13)
            {
              viewController3 = [v8 viewController];
              sceneDeactivationPredicate = [viewController3 sceneDeactivationPredicate];
              WeakRetained = objc_loadWeakRetained(&self->_windowScene);
              _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];
              [v13 sb_acquireWithPredicate:sceneDeactivationPredicate transitionContext:0 displayIdentity:_fbsDisplayIdentity];

              strongToStrongObjectsMapTable = v39;
              if (!v39)
              {
                strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
              }

              v39 = strongToStrongObjectsMapTable;
              [strongToStrongObjectsMapTable setObject:v13 forKey:v8];
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
            viewController4 = [v29 viewController];
            *buf = 138543874;
            selfCopy = obja;
            v51 = 2114;
            v52 = v30;
            v53 = 2114;
            v54 = viewController4;
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
  selfCopy = self;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to begin deferring device orientation updates", &v2, 0xCu);
}

- (void)_updatePreferredWhitePointAdaptivityStyle
{
  _topmostPresentedEntity = [(SBTransientOverlayScenePresenter *)self _topmostPresentedEntity];
  v12 = _topmostPresentedEntity;
  if (_topmostPresentedEntity)
  {
    hasFinishedWindowInitialization = [_topmostPresentedEntity hasFinishedWindowInitialization];
    v5 = v12;
    if (!hasFinishedWindowInitialization)
    {
      goto LABEL_9;
    }

    v6 = MEMORY[0x277CCABB0];
    viewController = [v12 viewController];
    v8 = [v6 numberWithInteger:{objc_msgSend(viewController, "preferredWhitePointAdaptivityStyle")}];
  }

  else
  {
    v8 = 0;
  }

  preferredWhitePointAdaptivityStyleValue = self->_preferredWhitePointAdaptivityStyleValue;
  if (preferredWhitePointAdaptivityStyleValue != v8 && ([(NSNumber *)preferredWhitePointAdaptivityStyleValue isEqual:v8]& 1) == 0)
  {
    self->_preferredWhitePointAdaptivityStyleValue = v8;
    delegate = [(SBTransientOverlayScenePresenter *)self delegate];
    _currentAnimationSettings = [MEMORY[0x277D75D18] _currentAnimationSettings];
    [delegate transientOverlayScenePresenter:self preferredWhitePointAdaptivityStyleDidChangeWithAnimationSettings:_currentAnimationSettings];
  }

  v5 = v12;
LABEL_9:
}

- (void)_windowedAccessoryDidAttachOrDetach:(id)detach
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = +[SBUIController sharedInstanceIfExists];
  isConnectedToWindowedAccessory = [v4 isConnectedToWindowedAccessory];

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

        viewController = [*(*(&v21 + 1) + 8 * v19) viewController];
        [viewController didTransitionToAttachedToWindowedAccessory:isConnectedToWindowedAccessory windowedAccessoryCutoutFrameInScreen:{v8, v10, v12, v14}];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }
}

- (void)_preserveInputViewsForEntityIfNeeded:(id)needed
{
  neededCopy = needed;
  if (([neededCopy hasPreservedInputViews] & 1) == 0)
  {
    [neededCopy setHasPreservedInputViews:1];
    viewController = [neededCopy viewController];
    [viewController preserveInputViewsAnimated:1];
  }
}

- (void)_restoreInputViewsForEntityIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy hasPreservedInputViews])
  {
    [neededCopy setHasPreservedInputViews:0];
    viewController = [neededCopy viewController];
    [viewController restoreInputViewsAnimated:1];
  }
}

- (id)_newKeyboardFocusAssertionForEntity:(id)entity
{
  entityCopy = entity;
  v4 = +[SBWorkspace mainWorkspace];
  keyboardFocusController = [v4 keyboardFocusController];
  window = [entityCopy window];

  v7 = +[SBKeyboardFocusLockReason activeTransientOverlay];
  v8 = [keyboardFocusController focusLockSpringBoardWindow:window forReason:v7];

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
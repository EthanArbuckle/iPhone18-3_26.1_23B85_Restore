@interface SBInCallPresentationSession
- (BOOL)_acceptsKeyboardFocus;
- (BOOL)_allowsInitiallyDismissedPresentation;
- (BOOL)_allowsNonModalPresentation;
- (BOOL)_hasExistingSceneSettingsPresentationModeForLayoutState:(id)state;
- (BOOL)_isAmbientPresentationActive;
- (BOOL)_isCallConnectedForScene;
- (BOOL)_isDismissedForLayoutState:(id)state;
- (BOOL)_isInSwitcherModel;
- (BOOL)_isShowingInPIP;
- (BOOL)_sceneSupportsHandlingDeviceLock;
- (BOOL)_shouldConsiderScenePrimaryForLayoutState:(id)state;
- (BOOL)_shouldExcludeFromSwitcherWhenDismissed;
- (BOOL)_shouldUseTransientOverlayForFullScreenPresentation;
- (BOOL)_systemControlsShouldPresentAsEmbeddedForLayoutState:(id)state;
- (BOOL)disablesSystemVolumeHUDForCategory:(id)category;
- (BOOL)disallowsLockHardwareButtonDoublePress;
- (BOOL)handleAccessoryAttachWithCompletion:(id)completion;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)isFullscreenCallInSwitcher;
- (BOOL)isShowingOnEmbeddedDisplay;
- (BOOL)sceneHandle:(id)handle didReceiveAction:(id)action;
- (BOOL)supportsBecomingVisibleWhenUnlockingFromSource:(int)source wakingDisplay:(BOOL)display;
- (CGRect)_presentedBannerBoundsInWindowScene:(id)scene;
- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity;
- (SBInCallPresentationSession)initWithSceneHandle:(id)handle workspace:(id)workspace bannerManager:(id)manager lockScreenManager:(id)screenManager deactivationManager:(id)deactivationManager mainSwitcherCoordinator:(id)coordinator backlightController:(id)controller keyboardFocusController:(id)self0 springBoard:(id)self1 setupManager:(id)self2 uiController:(id)self3 pipCoordinator:(id)self4 lockoutStateProvider:(id)self5;
- (SBInCallPresentationSessionDelegate)delegate;
- (SBWindowScene)windowScene;
- (UIEdgeInsets)preferredPIPDodgingInsets;
- (id)_acquireAssertionForAnalyticsSource:(id)source;
- (id)_clientSettingsIfExists;
- (id)_createTransientOverlayViewController;
- (id)_inCallSceneClientSettingsDiffInspector;
- (id)_layoutStateTransitionCoordinator;
- (id)_sceneManager;
- (id)_screen;
- (id)bannerUnfurlSourceContextForTransitionRequest:(id)request;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (id)layoutStateForApplicationTransitionContext:(id)context;
- (id)overrideAppSceneEntityForLaunchingApplication:(id)application;
- (id)previousLayoutStateForApplicationTransitionContext:(id)context;
- (id)succinctDescription;
- (int64_t)_currentPresentationModeForLayoutState:(id)state;
- (int64_t)sceneElement:(id)element decisionForLaunchActionOfAppWithBundleIdentifier:(id)identifier persistenceIdentifier:(id)persistenceIdentifier;
- (unint64_t)_incrementPresentationModeRevisionIDWithReason:(id)reason;
- (void)_activeJindoElementIfNeeded;
- (void)_addSystemAnimationDeactivationReason:(id)reason;
- (void)_addSystemGestureDeactivationReason:(id)reason;
- (void)_appendToMutableInCallSceneSettings:(id)settings presentationMode:(int64_t)mode shouldPresentAsEmbedded:(BOOL)embedded;
- (void)_configureTransitionRequest:(id)request forPresentingTransientOverlay:(id)overlay animated:(BOOL)animated;
- (void)_createJindoElement;
- (void)_createJindoElementIfNeeded;
- (void)_destroySceneEntityIfExists;
- (void)_dispatchBlockToMainEventQueueWithReason:(id)reason block:(id)block;
- (void)_handleRequestInCallKeyboardFocusAction:(id)action;
- (void)_handleRequestInCallPresentationModeAction:(id)action;
- (void)_handleTransitionToSceneHandle:(id)handle sceneManager:(id)manager;
- (void)_insertIntoSwitcherAsDismissedWithAnalyticsSource:(id)source transitionValidator:(id)validator completion:(id)completion;
- (void)_invalidateJindoElementIfNeeded;
- (void)_notifySceneOfDeviceLockFromSource:(int)source completion:(id)completion;
- (void)_performBannerDismissalTransitionAnimated:(BOOL)animated analyticsSource:(id)source completion:(id)completion;
- (void)_performBannerPresentationTransitionWithAnalyticsSource:(id)source completion:(id)completion;
- (void)_performBannerToFullScreenPresentationTransitionAnimated:(BOOL)animated analyticsSource:(id)source completion:(id)completion;
- (void)_performBannerToTransientOverlayPresentationTransitionAnimated:(BOOL)animated analyticsSource:(id)source completion:(id)completion;
- (void)_performBlockUsingMainEventQueueWithReason:(id)reason handler:(id)handler;
- (void)_performPresentationWithRequestedPresentationMode:(int64_t)mode isUserInitiated:(BOOL)initiated animated:(BOOL)animated analyticsSource:(id)source completion:(id)completion;
- (void)_performSceneUpdateTransactionWithContext:(id)context;
- (void)_performSwitcherDismissalTransitionAnimated:(BOOL)animated shouldDestroyScene:(BOOL)scene analyticsSource:(id)source completion:(id)completion;
- (void)_performSwitcherPresentationTransitionAnimated:(BOOL)animated isUserInitiated:(BOOL)initiated analyticsSource:(id)source completion:(id)completion;
- (void)_performTransientOverlayDismissalTransitionAnimated:(BOOL)animated shouldInsertIntoSwitcherModel:(BOOL)model analyticsSource:(id)source completion:(id)completion;
- (void)_performTransientOverlayPresentationTransitionAnimated:(BOOL)animated analyticsSource:(id)source completion:(id)completion;
- (void)_prepareForTransientOverlayPresentationTransactionWithAnimation:(BOOL)animation analyticsSource:(id)source completion:(id)completion;
- (void)_presentWithRequestedConfiguration:(id)configuration animated:(BOOL)animated analyticsSource:(id)source completion:(id)completion;
- (void)_removeFromSwitcherForPrefersHiddenWhenDismissedWithValidator:(id)validator;
- (void)_removeSystemAnimationDeactivationReason:(id)reason;
- (void)_removeSystemGestureDeactivationReason:(id)reason;
- (void)_requestInCallKeyboardFocus:(id)focus;
- (void)_sendShowNoticeForSystemControlsActionIfNeeded;
- (void)_setNonModalPresentationActive:(BOOL)active;
- (void)_setTransientOverlayPresentationActive:(BOOL)active;
- (void)_uiLockStateDidChange:(id)change;
- (void)_updateActiveAppearance;
- (void)_updateAmbientPresentationSettingsForInCallSettings:(id)settings;
- (void)_updateAppStatusBarSettingsAssertionForLayoutState:(id)state;
- (void)_updateKeyboardFocusPreventionAssertionWithLayoutState:(id)state;
- (void)_updatePIPInsetsForExpanseHUDForUnlockedEnvironmentMode:(int64_t)mode shouldConsiderPrimary:(BOOL)primary;
- (void)_updateSceneDeactivationAssertions;
- (void)_updateSceneHandleToObserveForSendingShowNoticeForSystemControlsAction:(id)action;
- (void)_updateSceneSettingsForAmbientPresentationSettingsUpdate;
- (void)_updateSystemControlsShouldPresentAsEmbedded;
- (void)_updateVisibilityInSwitcherForPrefersHiddenWhenDismissedIfNeededForLayoutState:(id)state;
- (void)_windowedAccessoryDidAttachOrDetach:(id)detach;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation;
- (void)applicationSceneHandle:(id)handle appendToSceneSettings:(id)settings fromRequestContext:(id)context entity:(id)entity;
- (void)applicationSceneHandle:(id)handle appendToTransitionContext:(id)context fromRequestContext:(id)requestContext entity:(id)entity;
- (void)dismissAndFinalizeSceneDestructionAnimated:(BOOL)animated analyticsSource:(id)source completion:(id)completion;
- (void)dismissAnimated:(BOOL)animated shouldFinalizeSceneDestruction:(BOOL)destruction analyticsSource:(id)source completion:(id)completion;
- (void)ensureInclusionInSwitcherForRestoreFromPIPWithCompletion:(id)completion;
- (void)handleActionButtonPressed;
- (void)handleDeviceLockFromSource:(int)source completion:(id)completion;
- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)orientation;
- (void)inCallBannerPresentableViewController:(id)controller didDisappearWithReason:(id)reason;
- (void)inCallBannerPresentableViewController:(id)controller viewWillTransitionSizeWithAnimationSettings:(id)settings;
- (void)inCallBannerPresentableViewControllerCallConnectedStatusChanged:(id)changed;
- (void)inCallBannerPresentableViewControllerDidCrossDefaultDraggingThreshold:(id)threshold;
- (void)inCallBannerPresentableViewControllerWillAppear:(id)appear;
- (void)inCallTransientOverlayViewController:(id)controller didAppearAnimated:(BOOL)animated;
- (void)inCallTransientOverlayViewController:(id)controller didDisappearAnimated:(BOOL)animated;
- (void)inCallTransientOverlayViewController:(id)controller viewWillTransitionSizeWithAnimationSettings:(id)settings;
- (void)inCallTransientOverlayViewControllerDidUpdateAmbientPresentationIsAmbientPresented:(BOOL)presented ambientDisplayStyle:(int64_t)style;
- (void)inCallTransientOverlayViewControllerRequestsDismissal:(id)dismissal;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)presentWithRequestedConfiguration:(id)configuration animated:(BOOL)animated analyticsSource:(id)source completion:(id)completion;
- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle didDestroyScene:(id)scene;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)sceneHandle:(id)handle replacedWithSceneHandle:(id)sceneHandle;
- (void)sceneWithIdentifier:(id)identifier didChangeBackgroundActivitiesToSuppressTo:(id)to;
- (void)setNonModalPresentationsSuppressed:(BOOL)suppressed;
- (void)transitionToSceneHandleIfNeeded:(id)needed;
@end

@implementation SBInCallPresentationSession

- (id)_clientSettingsIfExists
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  clientSettings = [sceneIfExists clientSettings];
  v4 = objc_opt_class();
  v5 = clientSettings;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (id)_inCallSceneClientSettingsDiffInspector
{
  inCallSceneClientSettingsDiffInspector = self->_inCallSceneClientSettingsDiffInspector;
  if (!inCallSceneClientSettingsDiffInspector)
  {
    v4 = objc_alloc_init(MEMORY[0x277D67BB0]);
    v5 = self->_inCallSceneClientSettingsDiffInspector;
    self->_inCallSceneClientSettingsDiffInspector = v4;

    objc_initWeak(&location, self);
    v6 = self->_inCallSceneClientSettingsDiffInspector;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__SBInCallPresentationSession__inCallSceneClientSettingsDiffInspector__block_invoke;
    v17[3] = &unk_2783AC8A0;
    objc_copyWeak(&v18, &location);
    [(SBSUIInCallSceneClientSettingsDiffInspector *)v6 observeExpanseHUDDodgingInsetsWithBlock:v17];
    v7 = self->_inCallSceneClientSettingsDiffInspector;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__SBInCallPresentationSession__inCallSceneClientSettingsDiffInspector__block_invoke_2;
    v15[3] = &unk_2783AC8A0;
    objc_copyWeak(&v16, &location);
    [(SBSUIInCallSceneClientSettingsDiffInspector *)v7 observePrefersBannersHiddenFromClonedDisplayWithBlock:v15];
    v8 = self->_inCallSceneClientSettingsDiffInspector;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__SBInCallPresentationSession__inCallSceneClientSettingsDiffInspector__block_invoke_3;
    v13[3] = &unk_2783AC8A0;
    objc_copyWeak(&v14, &location);
    [(SBSUIInCallSceneClientSettingsDiffInspector *)v8 observePrefersHiddenWhenDismissedWithBlock:v13];
    v9 = self->_inCallSceneClientSettingsDiffInspector;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__SBInCallPresentationSession__inCallSceneClientSettingsDiffInspector__block_invoke_4;
    v11[3] = &unk_2783AC8A0;
    objc_copyWeak(&v12, &location);
    [(SBSUIInCallSceneClientSettingsDiffInspector *)v9 observeAcceptsKeyboardFocusWithBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    inCallSceneClientSettingsDiffInspector = self->_inCallSceneClientSettingsDiffInspector;
  }

  return inCallSceneClientSettingsDiffInspector;
}

- (SBInCallPresentationSession)initWithSceneHandle:(id)handle workspace:(id)workspace bannerManager:(id)manager lockScreenManager:(id)screenManager deactivationManager:(id)deactivationManager mainSwitcherCoordinator:(id)coordinator backlightController:(id)controller keyboardFocusController:(id)self0 springBoard:(id)self1 setupManager:(id)self2 uiController:(id)self3 pipCoordinator:(id)self4 lockoutStateProvider:(id)self5
{
  handleCopy = handle;
  workspaceCopy = workspace;
  managerCopy = manager;
  managerCopy2 = manager;
  v22 = handleCopy;
  v49 = managerCopy2;
  screenManagerCopy = screenManager;
  deactivationManagerCopy = deactivationManager;
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  focusControllerCopy = focusController;
  boardCopy = board;
  setupManagerCopy = setupManager;
  uiControllerCopy = uiController;
  pipCoordinatorCopy = pipCoordinator;
  providerCopy = provider;
  v56.receiver = self;
  v56.super_class = SBInCallPresentationSession;
  v23 = [(SBInCallPresentationSession *)&v56 init];
  v24 = v23;
  if (v23)
  {
    [(SBInCallPresentationSession *)v23 transitionToSceneHandleIfNeeded:handleCopy];
    objc_storeStrong(&v24->_workspace, workspace);
    objc_storeStrong(&v24->_springBoard, board);
    objc_storeStrong(&v24->_bannerManager, managerCopy);
    objc_storeStrong(&v24->_lockScreenManager, screenManager);
    objc_storeStrong(&v24->_deactivationManager, deactivationManager);
    objc_storeStrong(&v24->_mainSwitcherCoordinator, coordinator);
    objc_storeStrong(&v24->_backlightController, controller);
    objc_storeStrong(&v24->_keyboardFocusCoordinator, focusController);
    objc_storeStrong(&v24->_setupManager, setupManager);
    objc_storeStrong(&v24->_pipControllerCoordinator, pipCoordinator);
    objc_storeStrong(&v24->_lockoutStateProvider, provider);
    v25 = objc_alloc(MEMORY[0x277CF0C28]);
    v26 = MEMORY[0x277CCACA8];
    sceneIdentifier = [(SBDeviceApplicationSceneHandle *)v24->_sceneHandle sceneIdentifier];
    v28 = [v26 stringWithFormat:@"SBInCallPresentationSession-%@", sceneIdentifier];
    v29 = [v25 initWithName:v28 onQueue:MEMORY[0x277D85CD0]];
    localEventQueue = v24->_localEventQueue;
    v24->_localEventQueue = v29;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    application = [(SBApplicationSceneHandle *)v24->_sceneHandle application];
    sceneIdentifier2 = [(SBDeviceApplicationSceneHandle *)v24->_sceneHandle sceneIdentifier];
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBInCallPresentationSession - %@", sceneIdentifier2];
    if (application)
    {
      bundleIdentifier = [application bundleIdentifier];
      v36 = [coordinatorCopy acquireAllowHiddenAppAssertionForBundleIdentifier:bundleIdentifier reason:v34];
      allowHiddenAppAssertion = v24->_allowHiddenAppAssertion;
      v24->_allowHiddenAppAssertion = v36;
    }

    [defaultCenter addObserver:v24 selector:sel__uiLockStateDidChange_ name:*MEMORY[0x277D67A48] object:0];
    [(SpringBoard *)v24->_springBoard addActiveOrientationObserver:v24];
    objc_storeStrong(&v24->_uiController, uiController);
    v24->_isAttachedToWindowedAccessory = [(SBUIController *)v24->_uiController isConnectedToWindowedAccessory];
    [defaultCenter addObserver:v24 selector:sel__windowedAccessoryDidAttachOrDetach_ name:@"SBUIWindowedAccessoryDidAttachOrDetachNotification" object:uiControllerCopy];
    objc_initWeak(&location, v24);
    objc_copyWeak(&v54, &location);
    v38 = BSLogAddStateCaptureBlockWithTitle();

    objc_destroyWeak(&v54);
    objc_destroyWeak(&location);

    v22 = handleCopy;
  }

  return v24;
}

id __255__SBInCallPresentationSession_initWithSceneHandle_workspace_bannerManager_lockScreenManager_deactivationManager_mainSwitcherCoordinator_backlightController_keyboardFocusController_springBoard_setupManager_uiController_pipCoordinator_lockoutStateProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)transitionToSceneHandleIfNeeded:(id)needed
{
  neededCopy = needed;
  sceneManager = [neededCopy sceneManager];
  [(SBInCallPresentationSession *)self _handleTransitionToSceneHandle:neededCopy sceneManager:sceneManager];
}

- (void)_handleTransitionToSceneHandle:(id)handle sceneManager:(id)manager
{
  handleCopy = handle;
  v8 = self->_sceneHandle;
  managerCopy = manager;
  _sceneManager = [(SBInCallPresentationSession *)self _sceneManager];

  if (v8 != handleCopy || _sceneManager != managerCopy)
  {
    delegate = [(SBInCallPresentationSession *)self delegate];
    if (v8 && v8 != handleCopy)
    {
      sceneIfExists = [(SBDeviceApplicationSceneHandle *)handleCopy sceneIfExists];
      sceneIfExists2 = [(SBDeviceApplicationSceneHandle *)v8 sceneIfExists];

      if (sceneIfExists != sceneIfExists2)
      {
        v14 = SBLogInCallPresentation();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [SBInCallPresentationSession _handleTransitionToSceneHandle:sceneManager:];
        }
      }

      [(SBApplicationSceneHandle *)v8 removeSceneUpdateContributer:self];
      [(SBDeviceApplicationSceneHandle *)v8 removeActionConsumer:self];
      [(SBDeviceApplicationSceneHandle *)v8 removeObserver:self];
      statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)v8 statusBarStateProvider];
      [statusBarStateProvider removeStatusBarObserver:self];
    }

    if (_sceneManager != managerCopy)
    {
      _layoutStateTransitionCoordinator = [(SBInCallPresentationSession *)self _layoutStateTransitionCoordinator];
      [_layoutStateTransitionCoordinator removeObserver:self];
      [(BSInvalidatable *)self->_ignoreSuspendedUnderLockAssertion invalidate];
      ignoreSuspendedUnderLockAssertion = self->_ignoreSuspendedUnderLockAssertion;
      self->_ignoreSuspendedUnderLockAssertion = 0;
    }

    objc_storeStrong(&self->_sceneHandle, handle);
    windowSceneManager = [SBApp windowSceneManager];
    displayIdentity = [(SBDeviceApplicationSceneHandle *)handleCopy displayIdentity];
    v20 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    isMainDisplayWindowScene = [WeakRetained isMainDisplayWindowScene];
    isMainDisplayWindowScene2 = [v20 isMainDisplayWindowScene];
    v47 = v20;
    objc_storeWeak(&self->_windowScene, v20);
    if (v8 != handleCopy)
    {
      [(SBApplicationSceneHandle *)self->_sceneHandle addSceneUpdateContributer:self];
      [(SBDeviceApplicationSceneHandle *)self->_sceneHandle addActionConsumer:self];
      [(SBDeviceApplicationSceneHandle *)self->_sceneHandle addObserver:self];
      statusBarStateProvider2 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle statusBarStateProvider];
      [statusBarStateProvider2 addStatusBarObserver:self];
    }

    _layoutStateTransitionCoordinator2 = [(SBInCallPresentationSession *)self _layoutStateTransitionCoordinator];
    [_layoutStateTransitionCoordinator2 addObserver:self];
    sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIdentifier];
    if (sceneIdentifier)
    {
      if (!self->_ignoreSuspendedUnderLockAssertion)
      {
        if ([(SBInCallPresentationSession *)self _isValidForSceneUpdates])
        {
          _sceneManager2 = [(SBInCallPresentationSession *)self _sceneManager];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBInCallPresentationSession - %@", sceneIdentifier];
            _sceneManager3 = [(SBInCallPresentationSession *)self _sceneManager];
            v29 = [_sceneManager3 acquireIgnoreSuspendedUnderLockAssertionForSceneIdentifier:sceneIdentifier reason:v27];
            v30 = self->_ignoreSuspendedUnderLockAssertion;
            self->_ignoreSuspendedUnderLockAssertion = v29;
          }
        }
      }
    }

    v31 = [SBInCallPresentationSceneUpdateContext alloc];
    _screen = [(SBInCallPresentationSession *)self _screen];
    fixedCoordinateSpace = [_screen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = *MEMORY[0x277D67EE0];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __75__SBInCallPresentationSession__handleTransitionToSceneHandle_sceneManager___block_invoke;
    v50[3] = &unk_2783B3DE0;
    v53 = isMainDisplayWindowScene;
    v54 = isMainDisplayWindowScene2;
    v51 = delegate;
    selfCopy = self;
    v43 = delegate;
    v44 = [(SBInCallPresentationSceneUpdateContext *)v31 initWithReferenceFrame:v42 analyticsSource:v50 transitionRequestBuilderBlock:v35, v37, v39, v41];

    [(SBInCallPresentationSceneUpdateContext *)v44 setExecutionTarget:1];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __75__SBInCallPresentationSession__handleTransitionToSceneHandle_sceneManager___block_invoke_3;
    v49[3] = &unk_2783B0350;
    v49[4] = self;
    [(SBInCallPresentationSceneUpdateContext *)v44 setValidatorHandler:v49];
    [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v44];
  }
}

void __75__SBInCallPresentationSession__handleTransitionToSceneHandle_sceneManager___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SBInCallPresentationSession__handleTransitionToSceneHandle_sceneManager___block_invoke_2;
  v7[3] = &unk_2783B3DB8;
  v10 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = [a2 addCompletionHandler:v7];
}

uint64_t __75__SBInCallPresentationSession__handleTransitionToSceneHandle_sceneManager___block_invoke_2(uint64_t result)
{
  if (*(result + 48) != *(result + 49))
  {
    return [*(result + 32) inCallClientPresentationSessionInvalidateBacklightEnvironment:*(result + 40)];
  }

  return result;
}

uint64_t __75__SBInCallPresentationSession__handleTransitionToSceneHandle_sceneManager___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 applicationContext];
  v4 = [v3 layoutState];
  LODWORD(v2) = [v2 _hasExistingSceneSettingsPresentationModeForLayoutState:v4];

  return v2 ^ 1;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBInCallPresentationSession *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBInCallPresentationSession *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBInCallPresentationSession *)self succinctDescriptionBuilder];
  v6 = self->_systemGestureSceneDeactivationAssertion != 0;
  v7 = self->_systemAnimationSceneDeactivationAssertion != 0;
  sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIdentifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__SBInCallPresentationSession_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_2783B2708;
  v9 = succinctDescriptionBuilder;
  v13 = v9;
  selfCopy = self;
  v15 = v6;
  v16 = v7;
  [v9 appendBodySectionWithName:sceneIdentifier multilinePrefix:prefixCopy block:v12];

  v10 = v9;
  return v9;
}

id __69__SBInCallPresentationSession_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 392) persistenceIdentifier];
  [v2 appendString:v3 withName:@"_sceneHandle.persistenceIdentifier"];

  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 320) UUIDString];
  [v4 appendString:v5 withName:@"_requestedPresentationConfigurationIdentifier"];

  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 208) withName:@"_isInvalidated" ifEqualTo:1];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 91) withName:@"hasReceivedFinalizeSceneDestructionRequest" ifEqualTo:1];
  v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 210) withName:@"_isTransientOverlayPresentationActive" ifEqualTo:1];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 209) withName:@"_isNonModalPresentationActive" ifEqualTo:1];
  if (*(a1 + 48))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 49) ^ 1;
  }

  v11 = [*(a1 + 32) appendBool:v10 & 1 withName:@"No deactivation assertions" ifEqualTo:1];
  if (*(a1 + 48) == 1)
  {
    v12 = *(*(a1 + 40) + 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = [*(a1 + 32) appendObject:v12 withName:@"System Gesture Deactivation Reasons"];
  if (*(a1 + 49) == 1)
  {
    v14 = *(*(a1 + 40) + 16);
  }

  else
  {
    v14 = 0;
  }

  return [*(a1 + 32) appendObject:v14 withName:@"System Animation Deactivation Reasons"];
}

- (void)invalidate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBInCallPresentationSession.m" lineNumber:355 description:@"Attempting to -invalidate twice; this is unsupported."];
}

- (id)hostedAppSceneHandle
{
  if ([(SBInCallPresentationSession *)self isHostingAnApp])
  {
    sceneHandle = self->_sceneHandle;
  }

  else
  {
    sceneHandle = 0;
  }

  return sceneHandle;
}

- (id)hostedAppSceneHandles
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ([(SBInCallPresentationSession *)self isHostingAnApp])
  {
    v5[0] = self->_sceneHandle;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)orientation
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBInCallPresentationSession.m" lineNumber:436 description:{@"%@ should never be called", v5}];
}

- (void)applicationSceneHandle:(id)handle appendToSceneSettings:(id)settings fromRequestContext:(id)context entity:(id)entity
{
  settingsCopy = settings;
  if (self->_sceneHandle == handle)
  {
    v15 = settingsCopy;
    contextCopy = context;
    layoutState = [contextCopy layoutState];
    v12 = [(SBInCallPresentationSession *)self _currentPresentationModeForLayoutState:layoutState];

    layoutState2 = [contextCopy layoutState];

    v14 = [(SBInCallPresentationSession *)self _systemControlsShouldPresentAsEmbeddedForLayoutState:layoutState2];
    [(SBInCallPresentationSession *)self _appendToMutableInCallSceneSettings:v15 presentationMode:v12 shouldPresentAsEmbedded:v14];
    settingsCopy = v15;
  }
}

- (void)_appendToMutableInCallSceneSettings:(id)settings presentationMode:(int64_t)mode shouldPresentAsEmbedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  *&v27[5] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v9 = SBLogInCallPresentation();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = SBSInCallPresentationModeDescription();
    *buf = 138543362;
    *v27 = v10;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Setting presentation mode on scene settings: %{public}@", buf, 0xCu);
  }

  [settingsCopy setInterruptionPolicy:3];
  [settingsCopy setInCallPresentationMode:mode];
  if (mode)
  {
    isUILocked = [(SBLockScreenManager *)self->_lockScreenManager isUILocked];
  }

  else
  {
    isUILocked = 0;
  }

  [settingsCopy setBeingShownAboveCoverSheet:isUILocked];
  isAttachedToWindowedAccessory = self->_isAttachedToWindowedAccessory;
  [(SBUIController *)self->_uiController visibleScreenCoordinatesForWindowedAccessory];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = SBLogInCallPresentation();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = v14;
    *&v25[1] = v16;
    *&v25[2] = v18;
    *&v25[3] = v20;
    v22 = [MEMORY[0x277CCAE60] valueWithBytes:v25 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *buf = 67109378;
    v27[0] = isAttachedToWindowedAccessory;
    LOWORD(v27[1]) = 2114;
    *(&v27[1] + 2) = v22;
    _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Setting device attachedToWindowedAccessory: %{BOOL}u windowedAccessoryCutoutFrameInScreen: %{public}@", buf, 0x12u);
  }

  [settingsCopy setAttachedToWindowedAccessory:isAttachedToWindowedAccessory];
  [settingsCopy setWindowedAccessoryCutoutFrameInScreen:{v14, v16, v18, v20}];
  [settingsCopy setScreenSharingPresentation:self->_isScreenSharingPresentation];
  [settingsCopy setRequestedPresentationConfigurationIdentifier:self->_requestedPresentationConfigurationIdentifier];
  [settingsCopy setSystemControlsShouldPresentAsEmbedded:embeddedCopy];
  if (mode == 1)
  {
    v23 = objc_alloc(MEMORY[0x277CF0BE8]);
    +[SBInCallBannerPresentableViewController cornerRadius];
    v24 = [v23 initWithCornerRadius:?];
    [settingsCopy setCornerRadiusConfiguration:v24];
  }

  [(SBInCallPresentationSession *)self _updateActiveAppearance];
  [(SBInCallPresentationSession *)self _updateAmbientPresentationSettingsForInCallSettings:settingsCopy];
}

- (void)applicationSceneHandle:(id)handle appendToTransitionContext:(id)context fromRequestContext:(id)requestContext entity:(id)entity
{
  v19 = *MEMORY[0x277D85DE8];
  requestContextCopy = requestContext;
  if (self->_sceneHandle != handle)
  {
    goto LABEL_12;
  }

  assertionAnalyticSources = self->_assertionAnalyticSources;
  contextCopy = context;
  lastObject = [(NSMutableArray *)assertionAnalyticSources lastObject];
  if (!lastObject)
  {
    request = [requestContextCopy request];
    source = [request source];

    if ((source - 11) >= 2)
    {
      if (source != 20)
      {
        lastObject = 0;
        goto LABEL_9;
      }

      v15 = MEMORY[0x277D67EE8];
    }

    else
    {
      v15 = MEMORY[0x277D67F18];
    }

    lastObject = *v15;
  }

LABEL_9:
  v16 = SBLogInCallPresentation();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = lastObject;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Setting analytics source on transition context: %{public}@", &v17, 0xCu);
  }

  [contextCopy SBSUI_setInCallAnalyticsSource:lastObject];
LABEL_12:
}

- (id)bannerUnfurlSourceContextForTransitionRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  applicationContext = [request applicationContext];
  v5 = [applicationContext entityForLayoutRole:1];

  if ([v5 isDeviceApplicationSceneEntity])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_entityToUnfurlSourceContext;
    v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 isAnalogousToEntity:{v5, v14}])
          {
            v12 = [(NSMapTable *)self->_entityToUnfurlSourceContext objectForKey:v11];
            goto LABEL_13;
          }
        }

        v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_13:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)inCallBannerPresentableViewControllerDidCrossDefaultDraggingThreshold:(id)threshold
{
  isUILocked = [(SBLockScreenManager *)self->_lockScreenManager isUILocked];
  v5 = *MEMORY[0x277D67EB8];
  if (isUILocked)
  {

    [(SBInCallPresentationSession *)self _performBannerToTransientOverlayPresentationTransitionAnimated:1 analyticsSource:v5 completion:0];
  }

  else
  {

    [(SBInCallPresentationSession *)self _performBannerToFullScreenPresentationTransitionAnimated:1 analyticsSource:v5 completion:0];
  }
}

- (void)inCallBannerPresentableViewControllerWillAppear:(id)appear
{
  [(SBInCallPresentationSession *)self _addSystemAnimationDeactivationReason:@"banner"];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];
  [(SBInCallPresentationSession *)self _updateAppStatusBarSettingsAssertionForLayoutState:layoutState];
}

- (void)inCallBannerPresentableViewController:(id)controller didDisappearWithReason:(id)reason
{
  reasonCopy = reason;
  controllerCopy = controller;
  [(SBInCallPresentationSession *)self _removeSystemAnimationDeactivationReason:@"banner"];
  [(SBInCallBannerPresentableViewController *)controllerCopy invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];
  [(SBInCallPresentationSession *)self _updateAppStatusBarSettingsAssertionForLayoutState:layoutState];

  bannerPresentableViewController = self->_bannerPresentableViewController;
  if (bannerPresentableViewController == controllerCopy)
  {
    self->_bannerPresentableViewController = 0;
  }

  [(SBInCallPresentationSession *)self _setNonModalPresentationActive:0];
  if (([reasonCopy isEqualToString:@"_SBInCallBannerRevocationReasonBannerUnfurl"] & 1) == 0 && (objc_msgSend(reasonCopy, "isEqualToString:", @"_SBInCallBannerRevocationReasonSessionRequest") & 1) == 0 && (objc_msgSend(reasonCopy, "isEqualToString:", @"_SBInCallBannerRevocationReasonTransientOverlayPresentation") & 1) == 0)
  {
    workspace = self->_workspace;
    _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
    v14 = [(SBMainWorkspace *)workspace createRequestWithOptions:0 displayConfiguration:_fbsDisplayConfiguration];

    v15 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:self->_sceneHandle];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __92__SBInCallPresentationSession_inCallBannerPresentableViewController_didDisappearWithReason___block_invoke;
    v38[3] = &unk_2783A98C8;
    v39 = v15;
    v16 = v15;
    [v14 modifyApplicationContext:v38];
    [v14 finalize];
    applicationContext = [v14 applicationContext];
    [applicationContext frameForApplicationSceneEntity:v16];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [SBInCallPresentationSceneUpdateContext alloc];
    v27 = *MEMORY[0x277D67EB0];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __92__SBInCallPresentationSession_inCallBannerPresentableViewController_didDisappearWithReason___block_invoke_2;
    v36[3] = &unk_2783A98F0;
    v37 = applicationContext;
    v28 = applicationContext;
    v29 = [(SBInCallPresentationSceneUpdateContext *)v26 initWithReferenceFrame:v27 analyticsSource:v36 transitionRequestBuilderBlock:v19, v21, v23, v25];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __92__SBInCallPresentationSession_inCallBannerPresentableViewController_didDisappearWithReason___block_invoke_4;
    v33 = &unk_2783B3E08;
    selfCopy = self;
    v35 = WeakRetained;
    [(SBInCallPresentationSceneUpdateContext *)v29 setPostSceneUpdateHandler:&v30];
    [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v29, v30, v31, v32, v33, selfCopy];
  }
}

void __92__SBInCallPresentationSession_inCallBannerPresentableViewController_didDisappearWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setEntity:v3 forLayoutRole:1];
  v4 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [v5 setEntity:v4 forLayoutRole:2];

  [v5 _setRequestedFrontmostEntity:*(a1 + 32)];
}

void __92__SBInCallPresentationSession_inCallBannerPresentableViewController_didDisappearWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__SBInCallPresentationSession_inCallBannerPresentableViewController_didDisappearWithReason___block_invoke_3;
  v3[3] = &unk_2783A98C8;
  v4 = *(a1 + 32);
  [a2 modifyApplicationContext:v3];
}

void __92__SBInCallPresentationSession_inCallBannerPresentableViewController_didDisappearWithReason___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setInterfaceOrientation:{objc_msgSend(v2, "interfaceOrientation")}];
}

void __92__SBInCallPresentationSession_inCallBannerPresentableViewController_didDisappearWithReason___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2)
  {
    v6 = [*(a1 + 32) _shouldExcludeFromSwitcherWhenDismissed];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [*(*(a1 + 32) + 392) displayItemRepresentation];
      v8 = [*(a1 + 40) switcherController];
      [v8 addAppLayoutForDisplayItem:v7 completion:0];

      v5 = v9;
    }
  }

  if (v5)
  {
    v5[2](v5, a2);
    v5 = v9;
  }
}

- (void)inCallBannerPresentableViewControllerCallConnectedStatusChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallClientPresentationSession:self callConnectedStatusChangedForPresentableViewController:changedCopy];
}

- (void)inCallTransientOverlayViewController:(id)controller didAppearAnimated:(BOOL)animated
{
  controllerCopy = controller;
  if (self->_preventsBannersWhenPresentedAsOverlay)
  {
    _sbWindowScene = [controllerCopy _sbWindowScene];

    if (_sbWindowScene)
    {
      bannerManager = self->_bannerManager;
      _sbWindowScene2 = [controllerCopy _sbWindowScene];
      [(SBBannerManager *)bannerManager dismissAllBannersInWindowScene:_sbWindowScene2 animated:1 reason:@"SBInCallPresentationSession requests dismissall of all banners"];
    }
  }

  [(SBInCallPresentationSession *)self _removeSystemAnimationDeactivationReason:@"transientOverlay"];
}

- (void)inCallTransientOverlayViewController:(id)controller didDisappearAnimated:(BOOL)animated
{
  controllerCopy = controller;
  [(SBInCallPresentationSession *)self _removeSystemAnimationDeactivationReason:@"transientOverlay"];
  [(SBInCallTransientOverlayViewController *)controllerCopy invalidate];
  [(BSInvalidatable *)self->_suppressHomeIndicatorWhileAttachedToWindowedAccessoryAssertion invalidate];
  suppressHomeIndicatorWhileAttachedToWindowedAccessoryAssertion = self->_suppressHomeIndicatorWhileAttachedToWindowedAccessoryAssertion;
  self->_suppressHomeIndicatorWhileAttachedToWindowedAccessoryAssertion = 0;

  transientOverlayViewController = self->_transientOverlayViewController;
  if (transientOverlayViewController == controllerCopy)
  {
    self->_transientOverlayViewController = 0;
  }

  if (self->_isTransientOverlayPresentationActive)
  {
    [(SBInCallPresentationSession *)self _setTransientOverlayPresentationActive:0];
    v8 = [SBInCallPresentationSceneUpdateContext alloc];
    _screen = [(SBInCallPresentationSession *)self _screen];
    fixedCoordinateSpace = [_screen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v11 = [(SBInCallPresentationSceneUpdateContext *)v8 initWithReferenceFrame:*MEMORY[0x277D67EE0] analyticsSource:&__block_literal_global_125 transitionRequestBuilderBlock:?];

    [(SBInCallPresentationSceneUpdateContext *)v11 setExecutionTarget:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __89__SBInCallPresentationSession_inCallTransientOverlayViewController_didDisappearAnimated___block_invoke_2;
    v13[3] = &unk_2783B0350;
    v13[4] = self;
    [(SBInCallPresentationSceneUpdateContext *)v11 setValidatorHandler:v13];
    [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v11];
    if (!self->_isHandlingTransientOverlayDismissalRequest && ![(SBInCallPresentationSession *)self _shouldExcludeFromSwitcherWhenDismissed])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __89__SBInCallPresentationSession_inCallTransientOverlayViewController_didDisappearAnimated___block_invoke_3;
      v12[3] = &unk_2783AA930;
      v12[4] = self;
      [(SBInCallPresentationSession *)self _performBlockUsingMainEventQueueWithReason:@"SBInCallPresentationSession - inCallTransientOverlayViewController:" handler:v12];
    }
  }
}

uint64_t __89__SBInCallPresentationSession_inCallTransientOverlayViewController_didDisappearAnimated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 applicationContext];
  v4 = [v3 layoutState];
  LODWORD(v2) = [v2 _hasExistingSceneSettingsPresentationModeForLayoutState:v4];

  return v2 ^ 1;
}

void __89__SBInCallPresentationSession_inCallTransientOverlayViewController_didDisappearAnimated___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 392) displayItemRepresentation];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 400));
  v6 = [WeakRetained switcherController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__SBInCallPresentationSession_inCallTransientOverlayViewController_didDisappearAnimated___block_invoke_4;
  v8[3] = &unk_2783AE778;
  v9 = v3;
  v7 = v3;
  [v6 addAppLayoutForDisplayItem:v4 completion:v8];
}

- (void)inCallTransientOverlayViewControllerRequestsDismissal:(id)dismissal
{
  self->_isHandlingTransientOverlayDismissalRequest = 1;
  _shouldExcludeFromSwitcherWhenDismissed = [(SBInCallPresentationSession *)self _shouldExcludeFromSwitcherWhenDismissed];
  v5 = *MEMORY[0x277D67EE0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__SBInCallPresentationSession_inCallTransientOverlayViewControllerRequestsDismissal___block_invoke;
  v6[3] = &unk_2783A9398;
  v6[4] = self;
  [(SBInCallPresentationSession *)self _performTransientOverlayDismissalTransitionAnimated:1 shouldInsertIntoSwitcherModel:!_shouldExcludeFromSwitcherWhenDismissed analyticsSource:v5 completion:v6];
}

- (void)inCallTransientOverlayViewControllerDidUpdateAmbientPresentationIsAmbientPresented:(BOOL)presented ambientDisplayStyle:(int64_t)style
{
  v11 = *MEMORY[0x277D85DE8];
  self->_isAmbientPresented = presented;
  self->_ambientDisplayStyle = style;
  if ([(SBInCallPresentationSession *)self _isValidForSceneUpdates])
  {
    v5 = SBLogInCallPresentation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      isAmbientPresented = self->_isAmbientPresented;
      ambientDisplayStyle = self->_ambientDisplayStyle;
      v8[0] = 67109376;
      v8[1] = isAmbientPresented;
      v9 = 2048;
      v10 = ambientDisplayStyle;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating scene settings to ambient presentation change isAmbientPresented: %{BOOL}d ambientDisplayStyle: %lu", v8, 0x12u);
    }

    [(SBInCallPresentationSession *)self _updateSceneSettingsForAmbientPresentationSettingsUpdate];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  contextCopy = context;
  v6 = objc_opt_class();
  fromLayoutState = [contextCopy fromLayoutState];
  v12 = SBSafeCast(v6, fromLayoutState);

  v8 = objc_opt_class();
  toLayoutState = [contextCopy toLayoutState];

  v10 = SBSafeCast(v8, toLayoutState);

  if ((BSEqualObjects() & 1) == 0 && !self->_isPerformingSwitcherPresentation && ![(SBLockScreenManager *)self->_lockScreenManager isUIUnlocking]&& ![(SBLockScreenManager *)self->_lockScreenManager isUILocked])
  {
    preferredDismissalPrimaryElement = self->_preferredDismissalPrimaryElement;
    self->_preferredDismissalPrimaryElement = 0;
  }

  [(SBInCallPresentationSession *)self _updateKeyboardFocusPreventionAssertionWithLayoutState:v10];
  -[SBInCallPresentationSession _updatePIPInsetsForExpanseHUDForUnlockedEnvironmentMode:shouldConsiderPrimary:](self, "_updatePIPInsetsForExpanseHUDForUnlockedEnvironmentMode:shouldConsiderPrimary:", [v10 unlockedEnvironmentMode], -[SBInCallPresentationSession _shouldConsiderScenePrimaryForLayoutState:](self, "_shouldConsiderScenePrimaryForLayoutState:", v10));
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v8 = objc_opt_class();
  fromLayoutState = [contextCopy fromLayoutState];
  v10 = SBSafeCast(v8, fromLayoutState);

  v11 = objc_opt_class();
  toLayoutState = [contextCopy toLayoutState];

  v13 = SBSafeCast(v11, toLayoutState);

  LODWORD(toLayoutState) = [(SBInCallPresentationSession *)self _shouldConsiderScenePrimaryForLayoutState:v10];
  v14 = [(SBInCallPresentationSession *)self _shouldConsiderScenePrimaryForLayoutState:v13];
  v15 = v14;
  if (toLayoutState && !v14)
  {
    sceneHandle = [(SBInCallPresentationSession *)self sceneHandle];
    sceneIdentifier = [sceneHandle sceneIdentifier];

    v18 = [v10 elementWithIdentifier:sceneIdentifier];
    sceneEntityFrameProvider = [coordinatorCopy sceneEntityFrameProvider];
    workspaceEntity = [v18 workspaceEntity];
    [sceneEntityFrameProvider sceneEntityFrameForWorkspaceEntity:workspaceEntity inLayoutState:v10];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [SBInCallPresentationSceneUpdateContext alloc];
    v30 = *MEMORY[0x277D67F10];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __102__SBInCallPresentationSession_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke;
    v36[3] = &unk_2783AAA48;
    v37 = v10;
    v38 = v18;
    v31 = v18;
    v32 = [(SBInCallPresentationSceneUpdateContext *)v29 initWithReferenceFrame:v30 analyticsSource:v36 transitionRequestBuilderBlock:v22, v24, v26, v28];
    [(SBInCallPresentationSceneUpdateContext *)v32 setExecutionTarget:1];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __102__SBInCallPresentationSession_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_3;
    v35[3] = &unk_2783B0350;
    v35[4] = self;
    [(SBInCallPresentationSceneUpdateContext *)v32 setValidatorHandler:v35];
    [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v32];

LABEL_6:
    goto LABEL_7;
  }

  if (![(SBInCallPresentationSession *)self _hasExistingSceneSettingsPresentationModeForLayoutState:v13])
  {
    v33 = [(SBInCallPresentationSession *)self _currentPresentationModeForLayoutState:v13];
    sceneIdentifier = [(SBInCallPresentationSession *)self sceneHandle];
    sceneEntityFrameProvider = [sceneIdentifier sceneIfExists];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __102__SBInCallPresentationSession_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_4;
    v34[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
    v34[4] = v33;
    [sceneEntityFrameProvider updateSettingsWithBlock:v34];
    goto LABEL_6;
  }

LABEL_7:
  [(SBInCallPresentationSession *)self _updateKeyboardFocusPreventionAssertionWithLayoutState:v13];
  -[SBInCallPresentationSession _updatePIPInsetsForExpanseHUDForUnlockedEnvironmentMode:shouldConsiderPrimary:](self, "_updatePIPInsetsForExpanseHUDForUnlockedEnvironmentMode:shouldConsiderPrimary:", [v13 unlockedEnvironmentMode], v15);
  [(SBInCallPresentationSession *)self _updateAppStatusBarSettingsAssertionForLayoutState:v13];
  [(SBInCallPresentationSession *)self _updateSceneHandleToObserveForSendingShowNoticeForSystemControlsAction:v13];
  [(SBInCallPresentationSession *)self _updateVisibilityInSwitcherForPrefersHiddenWhenDismissedIfNeededForLayoutState:v13];
}

void __102__SBInCallPresentationSession_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __102__SBInCallPresentationSession_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_2;
  v4[3] = &unk_2783A96A0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 modifyApplicationContext:v4];
}

void __102__SBInCallPresentationSession_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = a2;
  v4 = [v2 layoutAttributesForElement:v3];
  v5 = [(SBHomeScreenConfigurationServer *)v4 authenticator];

  [v6 setInterfaceOrientation:v5];
}

uint64_t __102__SBInCallPresentationSession_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 applicationContext];
  v4 = [v3 layoutState];
  LODWORD(v2) = [v2 _hasExistingSceneSettingsPresentationModeForLayoutState:v4];

  return v2 ^ 1;
}

void __102__SBInCallPresentationSession_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  [a2 setInCallPresentationMode:*(a1 + 32)];
  v2 = SBLogInCallPresentation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = SBSInCallPresentationModeDescription();
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Setting presentation mode on scene settings: %{public}@", &v4, 0xCu);
  }
}

- (void)_updatePIPInsetsForExpanseHUDForUnlockedEnvironmentMode:(int64_t)mode shouldConsiderPrimary:(BOOL)primary
{
  primaryCopy = primary;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v9 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  if (mode == 3 && primaryCopy)
  {
    v11 = [(SBPIPControllerCoordinator *)self->_pipControllerCoordinator controllerForType:0];
    v12 = [v11 isPictureInPictureWindowVisibleOnWindowScene:WeakRetained];

    if (v12)
    {
      sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
      clientSettings = [sceneIfExists clientSettings];
      v15 = objc_opt_class();
      v16 = clientSettings;
      if (v15)
      {
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      [v18 expanseHUDDodgingInsets];
      v7 = v19;
      v8 = v20;
      v9 = v21;
      v10 = v22;
    }
  }

  if (self->_preferredPIPDodgingInsets.left != v8 || self->_preferredPIPDodgingInsets.top != v7 || self->_preferredPIPDodgingInsets.right != v10 || self->_preferredPIPDodgingInsets.bottom != v9)
  {
    self->_preferredPIPDodgingInsets.top = v7;
    self->_preferredPIPDodgingInsets.left = v8;
    self->_preferredPIPDodgingInsets.bottom = v9;
    self->_preferredPIPDodgingInsets.right = v10;
    v26 = objc_loadWeakRetained(&self->_delegate);
    [v26 inCallClientPresentationSessionResolvedPIPDodgingInsets:self];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    pictureInPictureManager = [WeakRetained pictureInPictureManager];
    [pictureInPictureManager applyPictureInPictureInsets:8 forSource:{v28, v30, v32, v34}];
  }
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = [SBInCallPresentationSceneUpdateContext alloc];
    _screen = [(SBInCallPresentationSession *)self _screen];
    fixedCoordinateSpace = [_screen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v12 = *MEMORY[0x277D67EF8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __120__SBInCallPresentationSession_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke;
    v15[3] = &__block_descriptor_40_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
    v15[4] = orientation;
    v13 = [(SBInCallPresentationSceneUpdateContext *)v9 initWithReferenceFrame:v12 analyticsSource:v15 transitionRequestBuilderBlock:?];

    [(SBInCallPresentationSceneUpdateContext *)v13 setExecutionTarget:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __120__SBInCallPresentationSession_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke_3;
    v14[3] = &unk_2783B3E70;
    v14[4] = self;
    v14[5] = orientation;
    [(SBInCallPresentationSceneUpdateContext *)v13 setValidatorHandler:v14];
    [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v13];
  }
}

uint64_t __120__SBInCallPresentationSession_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __120__SBInCallPresentationSession_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke_2;
  v3[3] = &__block_descriptor_40_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v3[4] = *(a1 + 32);
  return [a2 modifyApplicationContext:v3];
}

uint64_t __120__SBInCallPresentationSession_activeInterfaceOrientationDidChangeToOrientation_willAnimateWithDuration_fromOrientation___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 392) sceneIfExists];
  v3 = [v2 settings];
  v4 = [v3 interfaceOrientation];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (*(v5 + 210))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v5 + 209) ^ 1;
  }

  WeakRetained = objc_loadWeakRetained((v5 + 400));
  v9 = [WeakRetained layoutStateProvider];
  v10 = [v9 layoutState];
  v11 = [*(*(a1 + 32) + 392) sceneIdentifier];
  v12 = [v10 elementWithIdentifier:v11];

  if (v4 == v6)
  {
    return 0;
  }

  else
  {
    return v7 & (v12 == 0);
  }
}

- (BOOL)handleAccessoryAttachWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_isAttachedToWindowedAccessory && ![(SBLockScreenManager *)self->_lockScreenManager isUILocked]&& [(SBInCallPresentationSession *)self _isValidForSceneUpdates]&& !self->_isTransientOverlayPresentationActive && ([(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = *MEMORY[0x277D67F28];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__SBInCallPresentationSession_handleAccessoryAttachWithCompletion___block_invoke;
    v9[3] = &unk_2783A9C70;
    v10 = completionCopy;
    [(SBInCallPresentationSession *)self _performTransientOverlayPresentationTransitionAnimated:0 analyticsSource:v6 completion:v9];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __67__SBInCallPresentationSession_handleAccessoryAttachWithCompletion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SBInCallPresentationSession_handleAccessoryAttachWithCompletion___block_invoke_2;
  block[3] = &unk_2783A9348;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_windowedAccessoryDidAttachOrDetach:(id)detach
{
  v27 = *MEMORY[0x277D85DE8];
  sceneHandle = self->_sceneHandle;
  detachCopy = detach;
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)sceneHandle sceneIfExists];
  userInfo = [detachCopy userInfo];

  v8 = [userInfo objectForKey:@"SBUIWindowedAccessoryAttachedKey"];
  bOOLValue = [v8 BOOLValue];

  self->_isAttachedToWindowedAccessory = bOOLValue;
  if ([(SBInCallPresentationSession *)self _isValidForSceneUpdates])
  {
    [(SBUIController *)self->_uiController visibleScreenCoordinatesForWindowedAccessory];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = SBLogInCallPresentation();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22[0] = v11;
      v22[1] = v13;
      v22[2] = v15;
      v22[3] = v17;
      v19 = [MEMORY[0x277CCAE60] valueWithBytes:v22 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      *buf = 67109378;
      v24 = bOOLValue;
      v25 = 2114;
      v26 = v19;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Updating scene settings to attachedToWindowedAccessory: %{BOOL}u windowedAccessoryCutoutFrameInScreen: %{public}@", buf, 0x12u);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __67__SBInCallPresentationSession__windowedAccessoryDidAttachOrDetach___block_invoke;
    v20[3] = &__block_descriptor_65_e33_v16__0__FBSMutableSceneSettings_8l;
    v21 = bOOLValue;
    v20[4] = v11;
    v20[5] = v13;
    v20[6] = v15;
    v20[7] = v17;
    [sceneIfExists updateSettingsWithBlock:v20];
  }
}

void __67__SBInCallPresentationSession__windowedAccessoryDidAttachOrDetach___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = a2;
  [v4 setAttachedToWindowedAccessory:v3];
  [v4 setWindowedAccessoryCutoutFrameInScreen:{*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)}];
}

- (void)_updateSceneDeactivationAssertions
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = self->_deactivationManager;
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  if ([sceneIfExists isValid])
  {
    identifier = [sceneIfExists identifier];
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__44;
    v38 = __Block_byref_object_dispose__44;
    v39 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __65__SBInCallPresentationSession__updateSceneDeactivationAssertions__block_invoke;
    v33[3] = &unk_2783B3EB8;
    v33[4] = &v34;
    v6 = MEMORY[0x223D6F7F0](v33);
    if ([(NSMutableSet *)self->_activeSystemAnimationDeactivationReasons count])
    {
      _isValidForSceneUpdates = [(SBInCallPresentationSession *)self _isValidForSceneUpdates];
      p_systemAnimationSceneDeactivationAssertion = &self->_systemAnimationSceneDeactivationAssertion;
      if (((_isValidForSceneUpdates ^ (self->_systemAnimationSceneDeactivationAssertion == 0)) & 1) == 0)
      {
        if (_isValidForSceneUpdates)
        {
          v9 = [(UIApplicationSceneDeactivationManager *)v3 newAssertionWithReason:5];
          v10 = *p_systemAnimationSceneDeactivationAssertion;
          *p_systemAnimationSceneDeactivationAssertion = v9;

          v11 = *p_systemAnimationSceneDeactivationAssertion;
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __65__SBInCallPresentationSession__updateSceneDeactivationAssertions__block_invoke_2;
          v31[3] = &unk_2783ADD00;
          v32 = identifier;
          [(UIApplicationSceneDeactivationAssertion *)v11 acquireWithPredicate:v31 transitionContext:0];
          v12 = v32;
LABEL_8:

          v13 = 1;
          goto LABEL_10;
        }

LABEL_7:
        v6[2](v6);
        v12 = *p_systemAnimationSceneDeactivationAssertion;
        *p_systemAnimationSceneDeactivationAssertion = 0;
        goto LABEL_8;
      }
    }

    else
    {
      p_systemAnimationSceneDeactivationAssertion = &self->_systemAnimationSceneDeactivationAssertion;
      if (self->_systemAnimationSceneDeactivationAssertion)
      {
        goto LABEL_7;
      }
    }

    v13 = 0;
LABEL_10:
    if ([(NSMutableSet *)self->_activeSystemGestureDeactivationReasons count])
    {
      _isValidForSceneUpdates2 = [(SBInCallPresentationSession *)self _isValidForSceneUpdates];
      if ((_isValidForSceneUpdates2 ^ (self->_systemGestureSceneDeactivationAssertion == 0)))
      {
        goto LABEL_18;
      }

      p_systemGestureSceneDeactivationAssertion = &self->_systemGestureSceneDeactivationAssertion;
      if (_isValidForSceneUpdates2)
      {
        v16 = [(UIApplicationSceneDeactivationManager *)v3 newAssertionWithReason:0];
        v17 = *p_systemGestureSceneDeactivationAssertion;
        *p_systemGestureSceneDeactivationAssertion = v16;

        v18 = *p_systemGestureSceneDeactivationAssertion;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __65__SBInCallPresentationSession__updateSceneDeactivationAssertions__block_invoke_3;
        v29[3] = &unk_2783ADD00;
        v30 = identifier;
        [(UIApplicationSceneDeactivationAssertion *)v18 acquireWithPredicate:v29 transitionContext:0];
        v19 = v30;
LABEL_17:

        v13 = 1;
LABEL_18:
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v20 = v35[5];
        v21 = [v20 countByEnumeratingWithState:&v25 objects:v42 count:16];
        if (v21)
        {
          v22 = *v26;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v26 != v22)
              {
                objc_enumerationMutation(v20);
              }

              [*(*(&v25 + 1) + 8 * i) relinquish];
            }

            v21 = [v20 countByEnumeratingWithState:&v25 objects:v42 count:16];
          }

          while (v21);
        }

        else
        {

          if ((v13 & 1) == 0)
          {
LABEL_30:

            _Block_object_dispose(&v34, 8);
            goto LABEL_31;
          }
        }

        v24 = SBLogInCallPresentation();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = self;
          _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Updated deactivation assertions for session %{public}@", buf, 0xCu);
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (!self->_systemGestureSceneDeactivationAssertion)
      {
        goto LABEL_18;
      }

      p_systemGestureSceneDeactivationAssertion = &self->_systemGestureSceneDeactivationAssertion;
    }

    v6[2](v6);
    v19 = *p_systemGestureSceneDeactivationAssertion;
    *p_systemGestureSceneDeactivationAssertion = 0;
    goto LABEL_17;
  }

LABEL_31:
}

void __65__SBInCallPresentationSession__updateSceneDeactivationAssertions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v8 = v3;
    if (!v4)
    {
      v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v4 addObject:v8];
    v3 = v8;
  }
}

uint64_t __65__SBInCallPresentationSession__updateSceneDeactivationAssertions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t __65__SBInCallPresentationSession__updateSceneDeactivationAssertions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)inCallBannerPresentableViewController:(id)controller viewWillTransitionSizeWithAnimationSettings:(id)settings
{
  controllerCopy = controller;
  settingsCopy = settings;
  bannerManager = self->_bannerManager;
  v9 = [(SBBannerManager *)bannerManager windowSceneForPresentable:controllerCopy];
  v10 = [(SBBannerManager *)bannerManager layoutManagerInWindowScene:v9];

  if (self->_isNonModalPresentationActive && v10 != 0)
  {
    interfaceOrientation = [controllerCopy interfaceOrientation];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (interfaceOrientation)
    {
      v15 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      interfaceOrientation = 1;
    }

    view = [controllerCopy view];
    superview = [view superview];
    [superview bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    _screen = [(SBInCallPresentationSession *)self _screen];
    [v10 useableContainerFrameInContainerBounds:_screen onScreen:{v19, v21, v23, v25}];
    v28 = v27;
    v60 = v29;
    v61 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    _screen2 = [(SBInCallPresentationSession *)self _screen];
    [_screen2 scale];
    [v10 presentedFrameForContentWithPreferredSize:v32 inUseableContainerFrame:v34 containerBounds:v28 scale:{v30, v32, v34, *&v19, *&v21, *&v23, *&v25, v36}];
    v38 = v37;
    v40 = v39;

    [controllerCopy preferredContentSizeWithPresentationSize:v38 containerSize:{v40, v23, v25}];
    v42 = v41;
    v44 = v43;
    _screen3 = [(SBInCallPresentationSession *)self _screen];
    [_screen3 scale];
    [v10 presentedFrameForContentWithPreferredSize:v42 inUseableContainerFrame:v44 containerBounds:v61 scale:{v60, v32, v34, *&v19, *&v21, *&v23, *&v25, v46}];

    BSRectWithSize();
    _screen4 = [(SBInCallPresentationSession *)self _screen];
    fixedCoordinateSpace = [_screen4 fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    _UIWindowConvertRectFromOrientationToOrientation();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = [SBInCallPresentationSceneUpdateContext alloc];
    v58 = *MEMORY[0x277D67F08];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __113__SBInCallPresentationSession_inCallBannerPresentableViewController_viewWillTransitionSizeWithAnimationSettings___block_invoke;
    v62[3] = &unk_2783B3F08;
    v64 = interfaceOrientation;
    v63 = settingsCopy;
    v59 = [(SBInCallPresentationSceneUpdateContext *)v57 initWithReferenceFrame:v58 analyticsSource:v62 transitionRequestBuilderBlock:v50, v52, v54, v56];
    [(SBInCallPresentationSceneUpdateContext *)v59 setExecutionTarget:1];
    [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v59];
  }
}

void __113__SBInCallPresentationSession_inCallBannerPresentableViewController_viewWillTransitionSizeWithAnimationSettings___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __113__SBInCallPresentationSession_inCallBannerPresentableViewController_viewWillTransitionSizeWithAnimationSettings___block_invoke_2;
  v4[3] = &unk_2783B3EE0;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v3;
  [a2 modifyApplicationContext:v4];
}

void __113__SBInCallPresentationSession_inCallBannerPresentableViewController_viewWillTransitionSizeWithAnimationSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setInterfaceOrientation:v3];
  [v4 setAnimationSettings:*(a1 + 32)];
  [v4 setFencesAnimations:1];
}

- (void)_dispatchBlockToMainEventQueueWithReason:(id)reason block:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SBInCallPresentationSession__dispatchBlockToMainEventQueueWithReason_block___block_invoke;
  v8[3] = &unk_2783B3F30;
  v9 = blockCopy;
  v7 = blockCopy;
  [(SBInCallPresentationSession *)self _performBlockUsingMainEventQueueWithReason:reason handler:v8];
}

void __78__SBInCallPresentationSession__dispatchBlockToMainEventQueueWithReason_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2);
  v4[2]();
}

- (void)_performBlockUsingMainEventQueueWithReason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  eventQueue = [(SBWorkspace *)self->_workspace eventQueue];
  objc_initWeak(&location, eventQueue);
  v9 = MEMORY[0x277D0AB18];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __82__SBInCallPresentationSession__performBlockUsingMainEventQueueWithReason_handler___block_invoke;
  v16 = &unk_2783AACB8;
  objc_copyWeak(&v19, &location);
  v10 = reasonCopy;
  v17 = v10;
  v11 = handlerCopy;
  v18 = v11;
  v12 = [v9 eventWithName:v10 handler:&v13];
  [eventQueue executeOrAppendEvent:{v12, v13, v14, v15, v16}];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __82__SBInCallPresentationSession__performBlockUsingMainEventQueueWithReason_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBInCallPresentationSessionEvent-%@", *(a1 + 32)];
    v4 = [WeakRetained acquireLockForReason:v3];

    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__SBInCallPresentationSession__performBlockUsingMainEventQueueWithReason_handler___block_invoke_2;
    v8[3] = &unk_2783A92D8;
    v9 = WeakRetained;
    v10 = v4;
    v6 = *(v5 + 16);
    v7 = v4;
    v6(v5, v8);
  }
}

- (void)inCallTransientOverlayViewController:(id)controller viewWillTransitionSizeWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  if (self->_isTransientOverlayPresentationActive)
  {
    controllerCopy = controller;
    interfaceOrientation = [controllerCopy interfaceOrientation];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (interfaceOrientation)
    {
      v11 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      interfaceOrientation = 1;
    }

    contentView = [controllerCopy contentView];

    [contentView bounds];
    BSRectWithSize();
    _screen = [(SBInCallPresentationSession *)self _screen];
    fixedCoordinateSpace = [_screen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    _UIWindowConvertRectFromOrientationToOrientation();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [SBInCallPresentationSceneUpdateContext alloc];
    v24 = *MEMORY[0x277D67F08];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __112__SBInCallPresentationSession_inCallTransientOverlayViewController_viewWillTransitionSizeWithAnimationSettings___block_invoke;
    v29 = &unk_2783B3F08;
    v31 = interfaceOrientation;
    v30 = settingsCopy;
    v25 = [(SBInCallPresentationSceneUpdateContext *)v23 initWithReferenceFrame:v24 analyticsSource:&v26 transitionRequestBuilderBlock:v16, v18, v20, v22];
    [(SBInCallPresentationSceneUpdateContext *)v25 setExecutionTarget:1, v26, v27, v28, v29];
    [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v25];
  }
}

void __112__SBInCallPresentationSession_inCallTransientOverlayViewController_viewWillTransitionSizeWithAnimationSettings___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __112__SBInCallPresentationSession_inCallTransientOverlayViewController_viewWillTransitionSizeWithAnimationSettings___block_invoke_2;
  v4[3] = &unk_2783B3EE0;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v3;
  [a2 modifyApplicationContext:v4];
}

void __112__SBInCallPresentationSession_inCallTransientOverlayViewController_viewWillTransitionSizeWithAnimationSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setInterfaceOrientation:v3];
  [v4 setAnimationSettings:*(a1 + 32)];
  [v4 setFencesAnimations:1];
}

- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  [(SBInCallPresentationSession *)self _updateAppStatusBarSettingsAssertionForLayoutState:layoutState];
  [(SBInCallPresentationSession *)self _updateVisibilityInSwitcherForPrefersHiddenWhenDismissedIfNeededForLayoutState:layoutState];
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  sceneCopy = scene;
  if ([handle isEqual:self->_sceneHandle])
  {
    [sceneCopy addObserver:self];
  }
}

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  handleCopy = handle;
  settingsDiff = [settings settingsDiff];
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandleToObserveForShowSystemControlsAction);
  if ([handleCopy isEqual:self->_sceneHandle])
  {
    _inCallSceneClientSettingsDiffInspector = [(SBInCallPresentationSession *)self _inCallSceneClientSettingsDiffInspector];
    [_inCallSceneClientSettingsDiffInspector inspectDiff:settingsDiff withContext:0];
  }

  else if (WeakRetained && [handleCopy isEqual:WeakRetained])
  {
    [(SBInCallPresentationSession *)self _sendShowNoticeForSystemControlsActionIfNeeded];
  }
}

void __70__SBInCallPresentationSession__inCallSceneClientSettingsDiffInspector__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [WeakRetained _layoutStateTransitionCoordinator];
    v3 = [v2 isTransitioning];

    WeakRetained = v7;
    if ((v3 & 1) == 0)
    {
      v4 = objc_loadWeakRetained(v7 + 50);
      v5 = [v4 layoutStateProvider];
      v6 = [v5 layoutState];

      [v7 _updatePIPInsetsForExpanseHUDForUnlockedEnvironmentMode:objc_msgSend(v6 shouldConsiderPrimary:{"unlockedEnvironmentMode"), objc_msgSend(v7, "_currentPresentationModeForLayoutState:", v6) == 2}];
      WeakRetained = v7;
    }
  }
}

void __70__SBInCallPresentationSession__inCallSceneClientSettingsDiffInspector__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    if ([WeakRetained _isValidForSceneUpdates] && (objc_msgSend(v10, "_clientSettingsIfExists"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "prefersBannersHiddenFromClonedDisplay"), v2, v3))
    {
      WeakRetained = v10;
      if (v10[45])
      {
        goto LABEL_8;
      }

      v4 = objc_loadWeakRetained(v10 + 47);
      v5 = MEMORY[0x277CCACA8];
      v6 = [v10[49] sceneIdentifier];
      v7 = [v5 stringWithFormat:@"SBInCallPresentationSession for %@", v6];
      v8 = [v4 inCallClientPresentationSession:v10 acquireHideSharePlayContentFromClonedDisplaysAssertionForReason:v7];
      v9 = v10[45];
      v10[45] = v8;
    }

    else
    {
      [v10[45] invalidate];
      v4 = v10[45];
      v10[45] = 0;
    }

    WeakRetained = v10;
  }

LABEL_8:
}

void __70__SBInCallPresentationSession__inCallSceneClientSettingsDiffInspector__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_loadWeakRetained(WeakRetained + 50);
  v2 = [v1 layoutStateProvider];
  v3 = [v2 layoutState];
  [WeakRetained _updateVisibilityInSwitcherForPrefersHiddenWhenDismissedIfNeededForLayoutState:v3];
}

void __70__SBInCallPresentationSession__inCallSceneClientSettingsDiffInspector__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 50);
    v3 = [v2 layoutStateProvider];
    v4 = [v3 layoutState];

    [v5 _updateKeyboardFocusPreventionAssertionWithLayoutState:v4];
    [v5 _requestInCallKeyboardFocus:&__block_literal_global_130];

    WeakRetained = v5;
  }
}

- (void)sceneWithIdentifier:(id)identifier didChangeBackgroundActivitiesToSuppressTo:(id)to
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];
  [(SBInCallPresentationSession *)self _updateAppStatusBarSettingsAssertionForLayoutState:layoutState];
}

- (BOOL)sceneHandle:(id)handle didReceiveAction:(id)action
{
  v18 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = SBLogInCallPresentation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SBSUIInCallDestroySceneAction received for %{public}@", buf, 0xCu);
    }

    v7 = actionCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    destructionReason = [v7 destructionReason];
    analyticsSource = [v7 analyticsSource];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SBInCallPresentationSession_sceneHandle_didReceiveAction___block_invoke;
    v14[3] = &unk_2783A9398;
    v15 = v7;
    v11 = v7;
    [WeakRetained inCallClientPresentationSession:self handleDestroySceneActionWithReason:destructionReason analyticsSource:analyticsSource completion:v14];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SBInCallPresentationSession *)self _handleRequestInCallPresentationModeAction:actionCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = 0;
        goto LABEL_10;
      }

      [(SBInCallPresentationSession *)self _handleRequestInCallKeyboardFocusAction:actionCopy];
    }
  }

  v12 = 1;
LABEL_10:

  return v12;
}

void __60__SBInCallPresentationSession_sceneHandle_didReceiveAction___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) canSendResponse])
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CF0B68] response];
    [v2 sendResponse:v3];
  }
}

- (void)_handleRequestInCallPresentationModeAction:(id)action
{
  v19 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = SBLogInCallPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [actionCopy requestedPresentationMode];
    v6 = SBSInCallPresentationModeDescription();
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Handling SBSUIInCallRequestPresentationModeAction with presentation mode: %{public}@", buf, 0xCu);
  }

  if (![actionCopy requestedPresentationMode])
  {
    preferredDismissalPrimaryElement = self->_preferredDismissalPrimaryElement;
    self->_preferredDismissalPrimaryElement = 0;
  }

  requestedPresentationMode = [actionCopy requestedPresentationMode];
  [(SBInCallPresentationSession *)self setShouldIgnoreHomeIndicatorAutoHiddenClientSettings:requestedPresentationMode == 3];
  isUserInitiated = 0;
  if (requestedPresentationMode == 3 && !self->_isScreenSharingPresentation)
  {
    isUserInitiated = [actionCopy isUserInitiated];
  }

  self->_transientOverlayShouldAlwaysPreventHomeGestureDismissal = isUserInitiated;
  [(SBInCallTransientOverlayViewController *)self->_transientOverlayViewController setShouldAlwaysPreventHomeGestureDismissal:?];
  if (self->_isNonModalPresentationActive)
  {
    bannerPresentableViewController = self->_bannerPresentableViewController;
    if (bannerPresentableViewController)
    {
      if (![(SBInCallBannerPresentableViewController *)bannerPresentableViewController isPresented])
      {
        analyticsSource = [actionCopy analyticsSource];
        [(SBInCallPresentationSession *)self _performBannerDismissalTransitionAnimated:0 analyticsSource:analyticsSource completion:&__block_literal_global_136];
      }
    }
  }

  if ([actionCopy requestedPresentationMode] == 2 && (-[SBInCallPresentationSession _isAmbientPresentationActive](self, "_isAmbientPresentationActive") || -[SBInCallPresentationSession _isProximityReaderPresented](self, "_isProximityReaderPresented")))
  {
    [actionCopy sendCompletionResponseWithSuccess:0];
  }

  else
  {
    requestedPresentationMode2 = [actionCopy requestedPresentationMode];
    isUserInitiated2 = [actionCopy isUserInitiated];
    analyticsSource2 = [actionCopy analyticsSource];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__SBInCallPresentationSession__handleRequestInCallPresentationModeAction___block_invoke_2;
    v15[3] = &unk_2783A9398;
    v16 = actionCopy;
    [(SBInCallPresentationSession *)self _performPresentationWithRequestedPresentationMode:requestedPresentationMode2 isUserInitiated:isUserInitiated2 animated:1 analyticsSource:analyticsSource2 completion:v15];
  }
}

- (void)_requestInCallKeyboardFocus:(id)focus
{
  v15 = *MEMORY[0x277D85DE8];
  focusCopy = focus;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  v8 = [(SBInCallPresentationSession *)self _currentPresentationModeForLayoutState:layoutState];
  if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v9 = v8;
    v10 = SBLogInCallPresentation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134349056;
      v14 = v9;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Unable to request keyboard focus when in %{public}ld presentation mode", &v13, 0xCu);
    }
  }

  else if ([(SBInCallPresentationSession *)self _acceptsKeyboardFocus])
  {
    if (!self->_preventKeyboardFocusAssertion)
    {
      scene = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle scene];
      if (scene)
      {
        v12 = scene;
        [(SBKeyboardFocusControlling *)self->_keyboardFocusCoordinator userFocusRequestForScene:scene reason:@"SBSUIInCallRequestKeyboardFocusAction" completion:focusCopy];

        goto LABEL_8;
      }
    }
  }

  focusCopy[2](focusCopy, 0);
LABEL_8:
}

- (void)_handleRequestInCallKeyboardFocusAction:(id)action
{
  actionCopy = action;
  v5 = SBLogInCallPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Handling SBSUIInCallRequestKeyboardFocusAction", buf, 2u);
  }

  if ([actionCopy isUserInitiated])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__SBInCallPresentationSession__handleRequestInCallKeyboardFocusAction___block_invoke;
    v6[3] = &unk_2783A9398;
    v7 = actionCopy;
    [(SBInCallPresentationSession *)self _requestInCallKeyboardFocus:v6];
  }

  else
  {
    [actionCopy sendCompletionResponseWithSuccess:0];
  }
}

- (void)ensureInclusionInSwitcherForRestoreFromPIPWithCompletion:(id)completion
{
  completionCopy = completion;
  _isInSwitcherModel = [(SBInCallPresentationSession *)self _isInSwitcherModel];
  if (![(SBInCallPresentationSession *)self _isValidForSceneUpdates]|| self->_isNonModalPresentationActive || self->_isTransientOverlayPresentationActive)
  {
    completionCopy[2](completionCopy, 0);
  }

  else if (_isInSwitcherModel)
  {
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v6 = *MEMORY[0x277D67EC8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __88__SBInCallPresentationSession_ensureInclusionInSwitcherForRestoreFromPIPWithCompletion___block_invoke;
    v7[3] = &unk_2783B0350;
    v7[4] = self;
    [(SBInCallPresentationSession *)self _insertIntoSwitcherAsDismissedWithAnalyticsSource:v6 transitionValidator:v7 completion:completionCopy];
  }
}

uint64_t __88__SBInCallPresentationSession_ensureInclusionInSwitcherForRestoreFromPIPWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 applicationContext];
  v5 = [v3 layoutStateForApplicationTransitionContext:v4];

  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ([*(a1 + 32) _isValidForSceneUpdates])
  {
    v10 = [*(a1 + 32) _isDismissedForLayoutState:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)overrideAppSceneEntityForLaunchingApplication:(id)application
{
  if ([application isFaceTime] && -[SBInCallPresentationSession _isValidForSceneUpdates](self, "_isValidForSceneUpdates") && !self->_isScreenSharingPresentation)
  {
    _clientSettingsIfExists = [(SBInCallPresentationSession *)self _clientSettingsIfExists];
    if (([_clientSettingsIfExists shouldNeverBeShownWhenLaunchingFaceTime] & 1) != 0 || (-[SBDeviceApplicationSceneHandle isContentReady](self->_sceneHandle, "isContentReady") & 1) == 0)
    {
    }

    else
    {
      bannerPresentableViewController = self->_bannerPresentableViewController;

      if (!bannerPresentableViewController)
      {
        v6 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:self->_sceneHandle];
        goto LABEL_10;
      }
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (void)sceneHandle:(id)handle didDestroyScene:(id)scene
{
  v9 = *MEMORY[0x277D85DE8];
  if ([handle isEqual:{self->_sceneHandle, scene}])
  {
    v5 = SBLogInCallPresentation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "FBScene for %{public}@ was destroyed.", &v7, 0xCu);
    }

    if ([(SBInCallPresentationSession *)self _isValidForSceneUpdates])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained inCallClientPresentationSessionSceneWasDestroyed:self];
    }
  }
}

- (void)sceneHandle:(id)handle replacedWithSceneHandle:(id)sceneHandle
{
  sceneHandleCopy = sceneHandle;
  if ([(SBDeviceApplicationSceneHandle *)self->_sceneHandle isEqual:handle])
  {
    [(SBInCallPresentationSession *)self transitionToSceneHandleIfNeeded:sceneHandleCopy];
  }
}

- (id)layoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  request = [contextCopy request];
  v5 = [request layoutStateForApplicationTransitionContext:contextCopy];

  return v5;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  request = [contextCopy request];
  v5 = [request previousLayoutStateForApplicationTransitionContext:contextCopy];

  return v5;
}

- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity
{
  v37 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  entityCopy = entity;
  request = [contextCopy request];
  [request applicationTransitionContext:contextCopy frameForApplicationSceneEntity:entityCopy];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = self->_entityToSceneUpdateContext;
  v18 = [(NSMapTable *)v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v33 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v32 + 1) + 8 * v21);
      if ([v22 isAnalogousToEntity:{entityCopy, v32}])
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [(NSMapTable *)v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v23 = [(NSMapTable *)self->_entityToSceneUpdateContext objectForKey:v22];

    if (!v23)
    {
      goto LABEL_13;
    }

    [(NSMapTable *)v23 referenceFrame];
    v10 = v24;
    v12 = v25;
    v14 = v26;
    v16 = v27;
    v17 = v23;
  }

LABEL_12:

LABEL_13:
  v28 = v10;
  v29 = v12;
  v30 = v14;
  v31 = v16;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (unint64_t)_incrementPresentationModeRevisionIDWithReason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  ++self->_presentationModeRevisionID;
  v5 = SBLogInCallPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_presentationModeRevisionID];
    sceneHandle = [(SBInCallPresentationSession *)self sceneHandle];
    persistenceIdentifier = [sceneHandle persistenceIdentifier];
    v11 = 138412802;
    v12 = v6;
    v13 = 2114;
    v14 = persistenceIdentifier;
    v15 = 2114;
    v16 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "_incrementPresentationModeRevisionIDWithReason: %@ %{public}@ %{public}@", &v11, 0x20u);
  }

  presentationModeRevisionID = self->_presentationModeRevisionID;
  return presentationModeRevisionID;
}

- (void)_performSwitcherPresentationTransitionAnimated:(BOOL)animated isUserInitiated:(BOOL)initiated analyticsSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  if ([(SBInCallPresentationSession *)self _isValidForSceneUpdates])
  {
    v13 = NSStringFromSelector(a2);
    v14 = [(SBInCallPresentationSession *)self _incrementPresentationModeRevisionIDWithReason:v13];

    v15 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:self->_sceneHandle];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke;
    v50[3] = &unk_2783B3DE0;
    v50[4] = self;
    v16 = v15;
    v51 = v16;
    animatedCopy = animated;
    initiatedCopy = initiated;
    v17 = MEMORY[0x223D6F7F0](v50);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_3;
    v45[3] = &unk_2783B3FD0;
    v45[4] = self;
    v49 = v14;
    v18 = v17;
    v47 = v18;
    v48 = completionCopy;
    v19 = sourceCopy;
    v46 = v19;
    v20 = MEMORY[0x223D6F7F0](v45);
    if ([(SBDeviceApplicationSceneHandle *)self->_sceneHandle contentState])
    {
      v20[2](v20);
    }

    else
    {
      workspace = self->_workspace;
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
      v29 = [(SBMainWorkspace *)workspace createRequestWithOptions:0 displayConfiguration:_fbsDisplayConfiguration];

      (*(v18 + 2))(v18, v29);
      [v29 finalize];
      applicationContext = [v29 applicationContext];
      [applicationContext frameForApplicationSceneEntity:v16];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = [SBInCallPresentationSceneUpdateContext alloc];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_7;
      v43[3] = &unk_2783AB528;
      v44 = v18;
      v40 = [(SBInCallPresentationSceneUpdateContext *)v39 initWithReferenceFrame:v19 analyticsSource:v43 transitionRequestBuilderBlock:v32, v34, v36, v38];
      [(SBInCallPresentationSceneUpdateContext *)v40 setExecutionTarget:1];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_8;
      v41[3] = &unk_2783A9C70;
      v42 = v20;
      [(SBInCallPresentationSceneUpdateContext *)v40 setCompletionHandler:v41];
      [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v40];
    }
  }

  else
  {
    v21 = SBLogInCallPresentation();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SBInCallPresentationSession _performSwitcherPresentationTransitionAnimated:isUserInitiated:analyticsSource:completion:];
    }

    v22 = +[SBDefaults localDefaults];
    inCallPresentationDefaults = [v22 inCallPresentationDefaults];
    assertNoZombieInCallScenes = [inCallPresentationDefaults assertNoZombieInCallScenes];

    if (assertNoZombieInCallScenes)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBInCallPresentationSession.m" lineNumber:1179 description:{@"ICSZOMBIE: Found a zombie ICS presentation %@", self}];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 48) layoutMode] >= 2)
  {
    [v3 setSource:61];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_2;
  v5[3] = &unk_2783B1838;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 modifyApplicationContext:v5];
  [v3 setShouldPreventEmergencyNotificationBannerDismissal:(*(a1 + 49) & 1) == 0];
}

void __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 392);
  v9 = a2;
  v4 = [v3 currentInterfaceOrientation];
  v5 = [*(*(a1 + 32) + 392) sceneIfExists];
  v6 = [v5 uiSettings];
  v7 = [v6 interfaceOrientationMode];

  if (v7 == 1)
  {
    v4 = [*(*(a1 + 32) + 392) _bestSupportedInterfaceOrientationForOrientation:v4];
  }

  [v9 setEntity:*(a1 + 40) forLayoutRole:1];
  v8 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [v9 setEntity:v8 forLayoutRole:2];

  [v9 setRequestedUnlockedEnvironmentMode:3];
  [v9 setInterfaceOrientation:v4];
  [v9 setPrefersCrossfadeTransition:1];
  [v9 _setRequestedFrontmostEntity:*(a1 + 40)];
  [v9 setAnimationDisabled:(*(a1 + 48) & 1) == 0];
}

void __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 216) == *(a1 + 64))
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__44;
    v18[4] = __Block_byref_object_dispose__44;
    v19 = 0;
    v3 = *(v2 + 144);
    WeakRetained = objc_loadWeakRetained((v2 + 400));
    v5 = [WeakRetained _fbsDisplayConfiguration];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_4;
    v14[3] = &unk_2783B3F80;
    v15 = *(a1 + 48);
    v17 = v18;
    v6 = *(a1 + 56);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v16 = v6;
    v14[4] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_6;
    v11[3] = &unk_2783B3FA8;
    v11[4] = v8;
    v13 = v18;
    v12 = v7;
    [v3 requestTransitionWithOptions:0 displayConfiguration:v5 builder:v14 validator:v11];

    _Block_object_dispose(v18, 8);
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = *(v9 + 16);

      v10();
    }
  }
}

void __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_5;
  v7[3] = &unk_2783B3F58;
  v6 = *(a1 + 48);
  v4 = v6;
  v8 = v6;
  v7[4] = *(a1 + 32);
  v5 = [v3 addCompletionHandler:v7];
}

uint64_t __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_5(void *a1, uint64_t a2)
{
  [*(*(a1[6] + 8) + 40) invalidate];
  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  *(a1[4] + 212) = 0;
  return result;
}

uint64_t __121__SBInCallPresentationSession__performSwitcherPresentationTransitionAnimated_isUserInitiated_analyticsSource_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 applicationContext];
  v4 = [v3 previousLayoutState];
  v5 = [v3 layoutState];
  v6 = v5;
  if (v5 == v4 || ([v5 isEqual:v4] & 1) != 0 || !objc_msgSend(*(a1 + 32), "_isValidForSceneUpdates"))
  {
    v13 = 0;
  }

  else
  {
    *(*(a1 + 32) + 212) = 1;
    if (!*(*(a1 + 32) + 296))
    {
      v7 = [v4 elementWithRole:1];
      v8 = *(a1 + 32);
      v9 = *(v8 + 296);
      *(v8 + 296) = v7;
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = [*(a1 + 32) _acquireAssertionForAnalyticsSource:*(a1 + 40)];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v13 = 1;
  }

  return v13;
}

- (void)_insertIntoSwitcherAsDismissedWithAnalyticsSource:(id)source transitionValidator:(id)validator completion:(id)completion
{
  sourceCopy = source;
  validatorCopy = validator;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  switcherController = [WeakRetained switcherController];
  v14 = NSStringFromSelector(a2);
  v15 = [(SBInCallPresentationSession *)self _incrementPresentationModeRevisionIDWithReason:v14];

  v16 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:self->_sceneHandle];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke;
  v40[3] = &unk_2783B4070;
  v40[4] = self;
  v17 = switcherController;
  v41 = v17;
  v18 = completionCopy;
  v43 = v18;
  v45 = v15;
  v19 = validatorCopy;
  v44 = v19;
  v20 = sourceCopy;
  v42 = v20;
  v21 = MEMORY[0x223D6F7F0](v40);
  if ([(SBDeviceApplicationSceneHandle *)self->_sceneHandle contentState])
  {
    v21[2](v21);
  }

  else
  {
    workspace = self->_workspace;
    _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
    v24 = [(SBMainWorkspace *)workspace createRequestWithOptions:2 displayConfiguration:_fbsDisplayConfiguration];

    [v24 finalize];
    applicationContext = [v24 applicationContext];
    [applicationContext frameForApplicationSceneEntity:v16];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [SBInCallPresentationSceneUpdateContext alloc];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_5;
    v38[3] = &unk_2783A98F0;
    v39 = v17;
    v34 = [(SBInCallPresentationSceneUpdateContext *)v33 initWithReferenceFrame:v20 analyticsSource:v38 transitionRequestBuilderBlock:v26, v28, v30, v32];
    [(SBInCallPresentationSceneUpdateContext *)v34 setExecutionTarget:1];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_7;
    v36[3] = &unk_2783A9C70;
    v37 = v21;
    [(SBInCallPresentationSceneUpdateContext *)v34 setCompletionHandler:v36];
    [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v34];
  }
}

void __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 400));
  v3 = [WeakRetained layoutStateProvider];
  v4 = [v3 layoutState];

  [*(a1 + 32) _updateKeyboardFocusPreventionAssertionWithLayoutState:v4];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__44;
  v19[4] = __Block_byref_object_dispose__44;
  v20 = 0;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 144);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_2;
  v15[3] = &unk_2783B4020;
  v18 = v19;
  v15[4] = v6;
  v16 = v5;
  v17 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_4;
  v10[3] = &unk_2783B4048;
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10[4] = *(a1 + 32);
  v14 = v8;
  v12 = v9;
  v13 = v19;
  v11 = *(a1 + 48);
  [v7 requestTransitionWithOptions:2 builder:v15 validator:v10];

  _Block_object_dispose(v19, 8);
}

void __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_3;
  v9[3] = &unk_2783B3FF8;
  v4 = *(a1 + 56);
  v8 = *(a1 + 32);
  v5 = *(&v8 + 1);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  v10 = v8;
  v11 = v6;
  v7 = [a2 addCompletionHandler:v9];
}

uint64_t __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_3(uint64_t a1, int a2)
{
  [*(*(*(a1 + 56) + 8) + 40) invalidate];
  if (a2)
  {
    v4 = [*(*(a1 + 32) + 392) displayItemRepresentation];
    [*(a1 + 40) addAppLayoutForDisplayItem:v4 completion:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

uint64_t __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[27] == *(a1 + 64) && ([v4 _isInSwitcherModel] & 1) == 0 && objc_msgSend(*(a1 + 32), "_isValidForSceneUpdates") && (*(*(a1 + 48) + 16))())
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v5 = [*(a1 + 32) _acquireAssertionForAnalyticsSource:*(a1 + 40)];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_6;
  v3[3] = &unk_2783A98C8;
  v4 = *(a1 + 32);
  [a2 modifyApplicationContext:v3];
}

void __112__SBInCallPresentationSession__insertIntoSwitcherAsDismissedWithAnalyticsSource_transitionValidator_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setInterfaceOrientation:{objc_msgSend(v2, "interfaceOrientation")}];
}

- (void)_removeFromSwitcherForPrefersHiddenWhenDismissedWithValidator:(id)validator
{
  validatorCopy = validator;
  v6 = NSStringFromSelector(a2);
  v7 = [(SBInCallPresentationSession *)self _incrementPresentationModeRevisionIDWithReason:v6];

  workspace = self->_workspace;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__SBInCallPresentationSession__removeFromSwitcherForPrefersHiddenWhenDismissedWithValidator___block_invoke;
  v10[3] = &unk_2783B4098;
  v11 = validatorCopy;
  v12 = v7;
  v10[4] = self;
  v9 = validatorCopy;
  [(SBMainWorkspace *)workspace requestTransitionWithOptions:2 builder:0 validator:v10];
}

uint64_t __93__SBInCallPresentationSession__removeFromSwitcherForPrefersHiddenWhenDismissedWithValidator___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if (a1[6] == *(v4 + 216) && ([*(v4 + 152) isAnySwitcherVisible] & 1) == 0 && (*(a1[5] + 16))())
  {
    v5 = a1[4];
    v6 = *(v5 + 152);
    v7 = [*(v5 + 392) displayItemRepresentation];
    [v6 removeAppLayoutForDisplayItem:v7 shouldDestroyScene:0];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_performTransientOverlayPresentationTransitionAnimated:(BOOL)animated analyticsSource:(id)source completion:(id)completion
{
  animatedCopy = animated;
  sourceCopy = source;
  completionCopy = completion;
  v11 = NSStringFromSelector(a2);
  v12 = [(SBInCallPresentationSession *)self _incrementPresentationModeRevisionIDWithReason:v11];

  v13 = animatedCopy && [(SBBacklightController *)self->_backlightController screenIsOn];
  workspace = self->_workspace;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __113__SBInCallPresentationSession__performTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke;
  v18[3] = &unk_2783B40E8;
  v21 = v13;
  v19 = sourceCopy;
  v20 = completionCopy;
  v18[4] = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __113__SBInCallPresentationSession__performTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke_4;
  v17[3] = &unk_2783B3E70;
  v17[4] = self;
  v17[5] = v12;
  v15 = sourceCopy;
  v16 = completionCopy;
  [(SBMainWorkspace *)workspace requestTransitionWithOptions:0 builder:v18 validator:v17];
}

void __113__SBInCallPresentationSession__performTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __113__SBInCallPresentationSession__performTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke_2;
  v8[3] = &__block_descriptor_33_e54_v16__0__SBWorkspaceTransientOverlayTransitionContext_8l;
  v9 = *(a1 + 56);
  v3 = a2;
  [v3 modifyTransientOverlayContext:v8];
  v4 = [v3 addCompletionHandler:*(a1 + 48)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __113__SBInCallPresentationSession__performTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke_3;
  v6[3] = &unk_2783B40C0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v3 setTransactionProvider:v6];
}

SBInCallTransientOverlayPresentationWorkspaceTransaction *__113__SBInCallPresentationSession__performTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBInCallTransientOverlayPresentationWorkspaceTransaction alloc] initWithTransitionRequest:v3 sourcePresentationSession:*(a1 + 32) analyticsSource:*(a1 + 40)];

  return v4;
}

uint64_t __113__SBInCallPresentationSession__performTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[27] != *(a1 + 40) || ![v2 _isValidForSceneUpdates])
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = 1;
  [v3 _setTransientOverlayPresentationActive:1];
  return v4;
}

- (void)_performBannerToFullScreenPresentationTransitionAnimated:(BOOL)animated analyticsSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  v11 = NSStringFromSelector(a2);
  v12 = [(SBInCallPresentationSession *)self _incrementPresentationModeRevisionIDWithReason:v11];

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__44;
  v31[4] = __Block_byref_object_dispose__44;
  v32 = 0;
  windowSceneManager = [SBApp windowSceneManager];
  v14 = [windowSceneManager windowSceneForSceneHandle:self->_sceneHandle];

  v15 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:self->_sceneHandle];
  workspace = self->_workspace;
  _sbDisplayConfiguration = [v14 _sbDisplayConfiguration];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __115__SBInCallPresentationSession__performBannerToFullScreenPresentationTransitionAnimated_analyticsSource_completion___block_invoke;
  v26[3] = &unk_2783B4138;
  v26[4] = self;
  animatedCopy = animated;
  v27 = v15;
  v29 = v31;
  v18 = completionCopy;
  v28 = v18;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __115__SBInCallPresentationSession__performBannerToFullScreenPresentationTransitionAnimated_analyticsSource_completion___block_invoke_4;
  v21[3] = &unk_2783B4160;
  v24 = v31;
  v25 = v12;
  v21[4] = self;
  v19 = sourceCopy;
  v22 = v19;
  v20 = v27;
  v23 = v20;
  [(SBMainWorkspace *)workspace requestTransitionWithOptions:0 displayConfiguration:_sbDisplayConfiguration builder:v26 validator:v21];

  _Block_object_dispose(v31, 8);
}

void __115__SBInCallPresentationSession__performBannerToFullScreenPresentationTransitionAnimated_analyticsSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:37];
  [v3 setBannerUnfurlSourceContextProvider:*(a1 + 32)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __115__SBInCallPresentationSession__performBannerToFullScreenPresentationTransitionAnimated_analyticsSource_completion___block_invoke_2;
  v11[3] = &unk_2783A9E00;
  v12 = *(a1 + 40);
  v13 = *(a1 + 64);
  [v3 modifyApplicationContext:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __115__SBInCallPresentationSession__performBannerToFullScreenPresentationTransitionAnimated_analyticsSource_completion___block_invoke_3;
  v8[3] = &unk_2783B4110;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v7 = *(a1 + 48);
  v5 = v7;
  v10 = v7;
  v6 = [v3 addCompletionHandler:v8];
}

void __115__SBInCallPresentationSession__performBannerToFullScreenPresentationTransitionAnimated_analyticsSource_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10[0] = *(a1 + 32);
  v4 = 1;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v3 setEntities:v5 withPolicy:0 centerEntity:0 floatingEntity:0];

  if (*(a1 + 40) == 1)
  {
    v6 = +[SBAppSwitcherDomain rootSettings];
    v7 = [v6 animationSettings];
    v8 = [v7 bannerUnfurlSettings];

    [v8 dampingRatio];
    [v8 response];
    convertDampingRatioAndResponseToTensionAndFriction();
    v9 = [MEMORY[0x277CF0CF0] settingsWithMass:1.0 stiffness:0.0 damping:0.0];
    [v3 setAnimationSettings:v9];

    [v3 setFencesAnimations:1];
    v4 = *(a1 + 40) ^ 1;
  }

  [v3 setAnimationDisabled:v4 & 1];
}

uint64_t __115__SBInCallPresentationSession__performBannerToFullScreenPresentationTransitionAnimated_analyticsSource_completion___block_invoke_3(void *a1)
{
  [*(a1[4] + 136) removeObjectForKey:a1[5]];
  if (![*(a1[4] + 136) count])
  {
    v2 = a1[4];
    v3 = *(v2 + 136);
    *(v2 + 136) = 0;
  }

  *(a1[4] + 212) = 0;
  [*(*(a1[7] + 8) + 40) invalidate];
  result = a1[6];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __115__SBInCallPresentationSession__performBannerToFullScreenPresentationTransitionAnimated_analyticsSource_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[27] == *(a1 + 64) && [v4 _isValidForSceneUpdates])
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v5 = [*(a1 + 32) _acquireAssertionForAnalyticsSource:*(a1 + 40)];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    v8 = *(a1 + 32);
    if (*(v8 + 209) == 1)
    {
      *(v8 + 209) = 0;
      v9 = *(a1 + 32);
      v10 = v9[5];
      if (v10)
      {
        v11 = [v10 view];
        v12 = [*(a1 + 32) _screen];
        v13 = [v12 fixedCoordinateSpace];

        [v11 bounds];
        [v11 convertRect:v13 toCoordinateSpace:?];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = objc_alloc_init(SBMutableBannerUnfurlSourceContext);
        [(SBMutableBannerUnfurlSourceContext *)v22 setReferenceFrame:v15, v17, v19, v21];
        [v13 bounds];
        [(SBMutableBannerUnfurlSourceContext *)v22 setReferenceCoordinateSpaceBounds:?];
        +[SBInCallBannerPresentableViewController cornerRadius];
        [(SBMutableBannerUnfurlSourceContext *)v22 setCornerRadius:?];
        [*(*(a1 + 32) + 40) velocityInCoordinateSpace:v13];
        [(SBMutableBannerUnfurlSourceContext *)v22 setReferenceVelocity:?];
        v23 = *(*(a1 + 32) + 136);
        if (!v23)
        {
          v24 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          v25 = *(a1 + 32);
          v26 = *(v25 + 136);
          *(v25 + 136) = v24;

          v23 = *(*(a1 + 32) + 136);
        }

        [v23 setObject:v22 forKey:*(a1 + 48)];
        v27 = *(a1 + 32);
        v28 = *(v27 + 64);
        v29 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:*(v27 + 40)];
        v30 = [v28 revokePresentablesWithIdentification:v29 reason:@"_SBInCallBannerRevocationReasonBannerUnfurl" options:0 animated:0 userInfo:0 error:0];

        [*(a1 + 32) _setNonModalPresentationActive:0];
        v9 = *(a1 + 32);
      }

      v31 = [v3 applicationContext];
      v32 = [v31 layoutState];
      v33 = objc_opt_class();
      v34 = v32;
      if (v33)
      {
        if (objc_opt_isKindOfClass())
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        v35 = 0;
      }

      v37 = v35;

      [v9 _updateAppStatusBarSettingsAssertionForLayoutState:v37];
      v8 = *(a1 + 32);
      if (!*(v8 + 296))
      {
        v38 = [v3 applicationContext];
        v39 = [v38 previousLayoutState];
        v40 = [v39 elementWithRole:1];
        v41 = *(a1 + 32);
        v42 = *(v41 + 296);
        *(v41 + 296) = v40;

        v8 = *(a1 + 32);
      }
    }

    v36 = 1;
    *(v8 + 212) = 1;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (void)_performBannerToTransientOverlayPresentationTransitionAnimated:(BOOL)animated analyticsSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  v11 = NSStringFromSelector(a2);
  v12 = [(SBInCallPresentationSession *)self _incrementPresentationModeRevisionIDWithReason:v11];

  workspace = self->_workspace;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __121__SBInCallPresentationSession__performBannerToTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke;
  v17[3] = &unk_2783B40E8;
  animatedCopy = animated;
  v18 = sourceCopy;
  v19 = completionCopy;
  v17[4] = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__SBInCallPresentationSession__performBannerToTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke_4;
  v16[3] = &unk_2783B3E70;
  v16[4] = self;
  v16[5] = v12;
  v14 = sourceCopy;
  v15 = completionCopy;
  [(SBMainWorkspace *)workspace requestTransitionWithOptions:0 builder:v17 validator:v16];
}

void __121__SBInCallPresentationSession__performBannerToTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __121__SBInCallPresentationSession__performBannerToTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke_2;
  v8[3] = &__block_descriptor_33_e54_v16__0__SBWorkspaceTransientOverlayTransitionContext_8l;
  v9 = *(a1 + 56);
  v3 = a2;
  [v3 modifyTransientOverlayContext:v8];
  v4 = [v3 addCompletionHandler:*(a1 + 48)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __121__SBInCallPresentationSession__performBannerToTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke_3;
  v6[3] = &unk_2783B40C0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v3 setTransactionProvider:v6];
}

SBInCallTransientOverlayPresentationWorkspaceTransaction *__121__SBInCallPresentationSession__performBannerToTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBInCallTransientOverlayPresentationWorkspaceTransaction alloc] initWithTransitionRequest:v3 sourcePresentationSession:*(a1 + 32) analyticsSource:*(a1 + 40)];

  return v4;
}

uint64_t __121__SBInCallPresentationSession__performBannerToTransientOverlayPresentationTransitionAnimated_analyticsSource_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[27] != *(a1 + 40) || ![v2 _isValidForSceneUpdates])
  {
    return 0;
  }

  v3 = 1;
  [*(a1 + 32) _setTransientOverlayPresentationActive:1];
  v4 = *(a1 + 32);
  if (*(v4 + 209) == 1)
  {
    v5 = *(v4 + 64);
    v6 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:*(v4 + 40)];
    v7 = [v5 revokePresentablesWithIdentification:v6 reason:@"_SBInCallBannerRevocationReasonTransientOverlayPresentation" options:0 animated:0 userInfo:0 error:0];

    [*(a1 + 32) _setNonModalPresentationActive:0];
    return 1;
  }

  return v3;
}

- (void)_performBannerPresentationTransitionWithAnalyticsSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  v9 = NSStringFromSelector(a2);
  v10 = [(SBInCallPresentationSession *)self _incrementPresentationModeRevisionIDWithReason:v9];

  [(SBInCallPresentationSession *)self _setNonModalPresentationActive:1];
  windowScene = [(SBInCallPresentationSession *)self windowScene];
  [(SBInCallPresentationSession *)self _presentedBannerBoundsInWindowScene:windowScene];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v38 = v18;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v20 = [WeakRetained inCallClientPresentationSessionInterfaceOrientationForBannerPresentation:self];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (v20)
  {
    v23 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v24 = v20;
  }

  else
  {
    v24 = 1;
  }

  _screen = [(SBInCallPresentationSession *)self _screen];
  fixedCoordinateSpace = [_screen fixedCoordinateSpace];
  [fixedCoordinateSpace bounds];
  _UIWindowConvertRectFromOrientationToOrientation();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = [SBInCallPresentationSceneUpdateContext alloc];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __98__SBInCallPresentationSession__performBannerPresentationTransitionWithAnalyticsSource_completion___block_invoke;
  v46[3] = &__block_descriptor_40_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
  v46[4] = v24;
  v36 = [(SBInCallPresentationSceneUpdateContext *)v35 initWithReferenceFrame:sourceCopy analyticsSource:v46 transitionRequestBuilderBlock:v28, v30, v32, v34];
  [(SBInCallPresentationSceneUpdateContext *)v36 setExecutionTarget:1];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __98__SBInCallPresentationSession__performBannerPresentationTransitionWithAnalyticsSource_completion___block_invoke_3;
  v39[3] = &unk_2783B4188;
  v40 = sourceCopy;
  v41 = v10;
  v42 = v13;
  v43 = v15;
  v44 = v17;
  v45 = v38;
  v39[4] = self;
  v37 = sourceCopy;
  [(SBInCallPresentationSceneUpdateContext *)v36 setPostSceneUpdateHandler:v39];
  [(SBInCallPresentationSceneUpdateContext *)v36 setCompletionHandler:completionCopy];

  [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v36];
}

uint64_t __98__SBInCallPresentationSession__performBannerPresentationTransitionWithAnalyticsSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __98__SBInCallPresentationSession__performBannerPresentationTransitionWithAnalyticsSource_completion___block_invoke_2;
  v3[3] = &__block_descriptor_40_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v3[4] = *(a1 + 32);
  return [a2 modifyApplicationContext:v3];
}

void __98__SBInCallPresentationSession__performBannerPresentationTransitionWithAnalyticsSource_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 400));
  v6 = *(a1 + 32);
  if (*(v6 + 216) == *(a1 + 48))
  {
    v7 = *(v6 + 40);
    if (!v7)
    {
      v8 = [[SBInCallBannerPresentableViewController alloc] initWithSceneHandle:*(*(a1 + 32) + 392)];
      v9 = *(a1 + 32);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      [*(*(a1 + 32) + 40) setDelegate:?];
      [*(*(a1 + 32) + 40) setPreferredBannerContentSize:{*(a1 + 72), *(a1 + 80)}];
      v6 = *(a1 + 32);
      v7 = *(v6 + 40);
    }

    if ([*(v6 + 64) postPresentable:v7 withOptions:1 userInfo:0 error:0])
    {
      v11 = [WeakRetained layoutStateProvider];
      v12 = [v11 layoutState];

      [*(a1 + 32) _updateKeyboardFocusPreventionAssertionWithLayoutState:v12];
      v4[2](v4, 1);
    }

    else
    {
      [*(a1 + 32) _setNonModalPresentationActive:0];
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __98__SBInCallPresentationSession__performBannerPresentationTransitionWithAnalyticsSource_completion___block_invoke_4;
      v18[3] = &unk_2783A9C70;
      v19 = v4;
      [v17 _performPresentationWithRequestedPresentationMode:2 isUserInitiated:0 animated:1 analyticsSource:v16 completion:v18];
    }
  }

  else
  {
    if (*(v6 + 209) == 1 && (*(v6 + 40) || ([v6 _setNonModalPresentationActive:0], (*(*(a1 + 32) + 209) & 1) != 0)))
    {
      v13 = [WeakRetained layoutStateProvider];
      v14 = [v13 layoutState];

      [*(a1 + 32) _updateKeyboardFocusPreventionAssertionWithLayoutState:v14];
      v15 = *(*(a1 + 32) + 209);
    }

    else
    {
      v15 = 0;
    }

    v4[2](v4, v15 & 1);
  }
}

- (void)setNonModalPresentationsSuppressed:(BOOL)suppressed
{
  if (self->_nonModalPresentationsSuppressed != suppressed)
  {
    self->_nonModalPresentationsSuppressed = suppressed;
    if (!suppressed)
    {
      jindoElement = self->_jindoElement;
      if (jindoElement)
      {
        if (!self->_jindoInvalidatable && [(SBSystemApertureSceneElement *)jindoElement isReadyForPresentation]&& !self->_isInvalidated)
        {
          systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
          v5 = [systemApertureControllerForMainDisplay registerElement:self->_jindoElement];
          jindoInvalidatable = self->_jindoInvalidatable;
          self->_jindoInvalidatable = v5;
        }
      }
    }
  }
}

- (void)_createJindoElementIfNeeded
{
  if (SBUIIsSystemApertureEnabled() && !self->_jindoElement)
  {

    [(SBInCallPresentationSession *)self _createJindoElement];
  }
}

- (void)_createJindoElement
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D67E40]);
  v4 = MEMORY[0x277D46F50];
  application = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  processState = [application processState];
  v7 = [v4 identifierWithPid:{objc_msgSend(processState, "pid")}];

  v8 = [MEMORY[0x277D46F48] handleForIdentifier:v7 error:0];
  identity = [v8 identity];
  v10 = [MEMORY[0x277D0ADA8] identityForProcessIdentity:identity];
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  v12 = [SBSystemApertureSceneElement alloc];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__SBInCallPresentationSession__createJindoElement__block_invoke;
  v17[3] = &unk_2783AD550;
  objc_copyWeak(&v19, &location);
  v13 = systemApertureControllerForMainDisplay;
  v18 = v13;
  v14 = [(SBSystemApertureSceneElement *)v12 initWithSceneSpecification:v3 sceneClientIdentity:v10 statusBarBackgroundActivitiesSuppresser:v13 readyForPresentationHandler:v17];
  jindoElement = self->_jindoElement;
  self->_jindoElement = v14;

  v16 = objc_alloc_init(SBSystemApertureSceneElementConfiguration);
  [(SBSystemApertureSceneElementConfiguration *)v16 setEntersBackgroundWhenBacklightIsOff:1];
  [(SBSystemApertureSceneElementConfiguration *)v16 setMinimalPresentationPossible:1];
  [(SBSystemApertureSceneElement *)self->_jindoElement setConfiguration:v16];
  [(SBSystemApertureSceneElement *)self->_jindoElement setLaunchActionHandler:self];
  [(SBSystemApertureSceneElement *)self->_jindoElement setAlwaysAllowTapToAppForBodyTaps:1];
  [(SBSystemApertureSceneElement *)self->_jindoElement setAssociatedApplicationSceneHandle:self->_sceneHandle];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __50__SBInCallPresentationSession__createJindoElement__block_invoke(uint64_t a1, void *a2, int a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && a3 && ([WeakRetained areNonModalPresentationsSuppressed] & 1) == 0)
  {
    v7 = [*(a1 + 32) registerElement:v9];
    v8 = v6[7];
    v6[7] = v7;
  }
}

- (void)_activeJindoElementIfNeeded
{
  jindoElement = self->_jindoElement;
  if (jindoElement && ![(SBSystemApertureSceneElement *)jindoElement isActivated])
  {
    v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
    persistenceIdentifier = [(SBApplicationSceneHandle *)self->_sceneHandle persistenceIdentifier];
    [v5 SBUISA_setString:persistenceIdentifier forSetting:3213026];

    [(SBSystemApertureSceneElement *)self->_jindoElement activateWithInitialOtherClientSettings:v5];
  }
}

- (void)_invalidateJindoElementIfNeeded
{
  v6 = self->_jindoElement;
  v3 = self->_jindoInvalidatable;
  jindoElement = self->_jindoElement;
  self->_jindoElement = 0;

  jindoInvalidatable = self->_jindoInvalidatable;
  self->_jindoInvalidatable = 0;

  if ([(SBSystemApertureSceneElement *)v6 isActivated]&& ![(SBSystemApertureSceneElement *)v6 isDeactivating])
  {
    [(SBSystemApertureSceneElement *)v6 deactivateWhenRemovedWithHandler:0];
  }

  if ([(SAInvalidatable *)v3 isValid])
  {
    [(SAInvalidatable *)v3 invalidateWithReason:@"SBInCallPresentationSession request"];
  }
}

- (int64_t)sceneElement:(id)element decisionForLaunchActionOfAppWithBundleIdentifier:(id)identifier persistenceIdentifier:(id)persistenceIdentifier
{
  persistenceIdentifierCopy = persistenceIdentifier;
  sceneHandle = self->_sceneHandle;
  identifierCopy = identifier;
  application = [(SBApplicationSceneHandle *)sceneHandle application];
  bundleIdentifier = [application bundleIdentifier];
  v12 = BSEqualStrings();

  if ((v12 & 1) != 0 || !identifierCopy && (-[SBApplicationSceneHandle persistenceIdentifier](self->_sceneHandle, "persistenceIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [persistenceIdentifierCopy isEqualToString:v16], v16, v17))
  {
    v13 = objc_alloc(MEMORY[0x277D67BA0]);
    v14 = 1;
    v15 = [v13 initWithRequestedPresentationMode:2 isUserInitiated:1 analyticsSource:*MEMORY[0x277D67EC0] responseHandler:&__block_literal_global_166];
    [(SBInCallPresentationSession *)self _handleRequestInCallPresentationModeAction:v15];
  }

  else
  {
    v14 = 2;
  }

  return v14;
}

- (void)_performBannerDismissalTransitionAnimated:(BOOL)animated analyticsSource:(id)source completion:(id)completion
{
  animatedCopy = animated;
  sourceCopy = source;
  completionCopy = completion;
  if (!self->_isNonModalPresentationActive)
  {
    [SBInCallPresentationSession _performBannerDismissalTransitionAnimated:a2 analyticsSource:self completion:?];
  }

  v10 = NSStringFromSelector(a2);
  [(SBInCallPresentationSession *)self _incrementPresentationModeRevisionIDWithReason:v10];

  if (completionCopy)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    bannerDidDisappearHandlerByUUID = self->_bannerDidDisappearHandlerByUUID;
    if (!bannerDidDisappearHandlerByUUID)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v14 = self->_bannerDidDisappearHandlerByUUID;
      self->_bannerDidDisappearHandlerByUUID = v13;

      bannerDidDisappearHandlerByUUID = self->_bannerDidDisappearHandlerByUUID;
    }

    v15 = MEMORY[0x223D6F7F0](completionCopy);
    [(NSMutableDictionary *)bannerDidDisappearHandlerByUUID setObject:v15 forKey:uUID];
  }

  else
  {
    uUID = 0;
  }

  bannerManager = self->_bannerManager;
  v17 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:self->_bannerPresentableViewController];
  v18 = [(SBBannerManager *)bannerManager revokePresentablesWithIdentification:v17 reason:@"_SBInCallBannerRevocationReasonSessionRequest" options:0 animated:animatedCopy userInfo:0 error:0];

  if (!v18)
  {
    if (uUID)
    {
      v19 = [(NSMutableDictionary *)self->_bannerDidDisappearHandlerByUUID objectForKey:uUID];

      if (v19)
      {
        [(NSMutableDictionary *)self->_bannerDidDisappearHandlerByUUID removeObjectForKey:uUID];
        completionCopy[2](completionCopy, 0);
      }
    }
  }

  if (!animatedCopy || ![(SBInCallBannerPresentableViewController *)self->_bannerPresentableViewController _appearState])
  {
    bannerPresentableViewController = self->_bannerPresentableViewController;
    self->_bannerPresentableViewController = 0;

    [(SBInCallPresentationSession *)self _setNonModalPresentationActive:0];
  }
}

- (void)_performSwitcherDismissalTransitionAnimated:(BOOL)animated shouldDestroyScene:(BOOL)scene analyticsSource:(id)source completion:(id)completion
{
  sceneCopy = scene;
  sourceCopy = source;
  completionCopy = completion;
  v12 = NSStringFromSelector(a2);
  v13 = [(SBInCallPresentationSession *)self _incrementPresentationModeRevisionIDWithReason:v12];

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__44;
  v28[4] = __Block_byref_object_dispose__44;
  v29 = 0;
  if (sceneCopy)
  {
    [(SBInCallPresentationSession *)self _invalidateJindoElementIfNeeded];
  }

  workspace = self->_workspace;
  windowScene = [(SBInCallPresentationSession *)self windowScene];
  _fbsDisplayConfiguration = [windowScene _fbsDisplayConfiguration];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __121__SBInCallPresentationSession__performSwitcherDismissalTransitionAnimated_shouldDestroyScene_analyticsSource_completion___block_invoke;
  v24[3] = &unk_2783B41D8;
  v27 = sceneCopy;
  v24[4] = self;
  v26 = v28;
  v17 = completionCopy;
  v25 = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __121__SBInCallPresentationSession__performSwitcherDismissalTransitionAnimated_shouldDestroyScene_analyticsSource_completion___block_invoke_2_175;
  v19[3] = &unk_2783B4200;
  v21 = v28;
  v22 = v13;
  v23 = sceneCopy;
  v19[4] = self;
  v18 = sourceCopy;
  v20 = v18;
  [(SBMainWorkspace *)workspace requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v24 validator:v19];

  _Block_object_dispose(v28, 8);
}

void __121__SBInCallPresentationSession__performSwitcherDismissalTransitionAnimated_shouldDestroyScene_analyticsSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:69];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __121__SBInCallPresentationSession__performSwitcherDismissalTransitionAnimated_shouldDestroyScene_analyticsSource_completion___block_invoke_2;
  v11[3] = &unk_2783B1838;
  v4 = *(a1 + 32);
  v13 = *(a1 + 56);
  v11[4] = v4;
  v12 = v3;
  v5 = v3;
  [v5 modifyApplicationContext:v11];
  [v5 setShouldPreventEmergencyNotificationBannerDismissal:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __121__SBInCallPresentationSession__performSwitcherDismissalTransitionAnimated_shouldDestroyScene_analyticsSource_completion___block_invoke_174;
  v9[3] = &unk_2783B41B0;
  v8 = *(a1 + 40);
  v6 = v8;
  v10 = v8;
  v7 = [v5 addCompletionHandler:v9];
}

void __121__SBInCallPresentationSession__performSwitcherDismissalTransitionAnimated_shouldDestroyScene_analyticsSource_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:*(*(a1 + 32) + 392)];
  [v3 setDeactivatingEntity:v4];
  if ([*(*(a1 + 32) + 104) isUILocked])
  {
    [v3 setPrefersCrossfadeTransition:1];
  }

  else
  {
    [v3 setPrefersCenterZoomTransition:1];
  }

  [v3 setAnimationDisabled:0];
  if (*(a1 + 48) == 1)
  {
    v5 = [[SBWorkspaceEntityRemovalContext alloc] initWithAnimationStyle:1 removalActionType:1];
    [v3 setRemovalContext:v5 forEntity:v4];
  }

  v6 = [v3 previousLayoutState];
  v7 = objc_opt_class();
  v8 = SBSafeCast(v7, v6);
  if ([v8 unlockedEnvironmentMode] == 2)
  {
    [v3 setRequestedUnlockedEnvironmentMode:2];
  }

  v9 = [*(*(a1 + 32) + 392) sceneIdentifier];
  v10 = [v6 elementWithRole:?];
  v11 = [v10 uniqueIdentifier];
  v26 = v4;
  if ([v11 isEqualToString:v9])
  {
    v12 = [v6 elementWithRole:2];
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = [*(*(a1 + 32) + 296) workspaceEntity];
  v15 = [v14 deviceApplicationSceneEntity];
  v16 = [v15 sceneHandle];
  v17 = [v16 displayItemRepresentation];

  if (v14 && ([*(*(a1 + 32) + 152) hasAppLayoutForDisplayItem:v17] & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 376));
    v19 = [WeakRetained inCallClientPresentationSession:*(a1 + 32) canRestoreToPreviousEntity:v14];

    if (v19)
    {
      v20 = SBLogInCallPresentation();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "setting preferredDismissalPrimaryElement %@", buf, 0xCu);
      }

      [v3 setActivatingEntity:v14];
      v21 = [*(a1 + 40) workspace];
      v22 = [v21 canExecuteTransitionRequest:*(a1 + 40)];

      if (((v22 ^ 1) & v13 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      if ([v8 unlockedEnvironmentMode] == 2)
      {
        v23 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        [v3 setEntity:v23 forLayoutRole:1];
      }

      else
      {
        v24 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
        [v3 setActivatingEntity:v24];

        [v3 setEntity:0 forLayoutRole:1];
      }

      goto LABEL_26;
    }

    if (v13)
    {
      goto LABEL_19;
    }
  }

  else if (v13)
  {
    goto LABEL_19;
  }

LABEL_23:
  v25 = [v6 elementWithIdentifier:v9];

  if (!v25 && [v8 unlockedEnvironmentMode] != 2)
  {
    [*(a1 + 40) setShouldPreventDismissalOfUnrelatedTransientOverlays:1];
  }

LABEL_26:
}

uint64_t __121__SBInCallPresentationSession__performSwitcherDismissalTransitionAnimated_shouldDestroyScene_analyticsSource_completion___block_invoke_174(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __121__SBInCallPresentationSession__performSwitcherDismissalTransitionAnimated_shouldDestroyScene_analyticsSource_completion___block_invoke_2_175(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 216) != *(a1 + 56))
  {
    return 0;
  }

  v3 = [a2 applicationContext];
  v4 = [v3 previousLayoutState];
  v5 = [*(*(a1 + 32) + 392) sceneIdentifier];
  v6 = [v4 elementWithIdentifier:v5];
  if (v6)
  {

    goto LABEL_4;
  }

  if (*(a1 + 64) != 1)
  {

    v7 = 0;
    goto LABEL_11;
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 152);
  v10 = [*(v8 + 392) displayItemRepresentation];
  LOBYTE(v9) = [v9 hasAppLayoutForDisplayItem:v10];

  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = [*(a1 + 32) _acquireAssertionForAnalyticsSource:*(a1 + 40)];
    v12 = *(*(a1 + 48) + 8);
    v3 = *(v12 + 40);
    *(v12 + 40) = v11;
    v7 = 1;
LABEL_11:

    return v7;
  }

  return 1;
}

- (void)_performTransientOverlayDismissalTransitionAnimated:(BOOL)animated shouldInsertIntoSwitcherModel:(BOOL)model analyticsSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  v13 = NSStringFromSelector(a2);
  v14 = [(SBInCallPresentationSession *)self _incrementPresentationModeRevisionIDWithReason:v13];

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__44;
  v31[4] = __Block_byref_object_dispose__44;
  v32 = 0;
  v15 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:self->_transientOverlayViewController];
  workspace = self->_workspace;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __140__SBInCallPresentationSession__performTransientOverlayDismissalTransitionAnimated_shouldInsertIntoSwitcherModel_analyticsSource_completion___block_invoke;
  v24[3] = &unk_2783B4250;
  v17 = v15;
  animatedCopy = animated;
  modelCopy = model;
  v25 = v17;
  selfCopy = self;
  v28 = v31;
  v18 = completionCopy;
  v27 = v18;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __140__SBInCallPresentationSession__performTransientOverlayDismissalTransitionAnimated_shouldInsertIntoSwitcherModel_analyticsSource_completion___block_invoke_5;
  v20[3] = &unk_2783B4278;
  v22 = v31;
  v23 = v14;
  v20[4] = self;
  v19 = sourceCopy;
  v21 = v19;
  [(SBMainWorkspace *)workspace requestTransitionWithOptions:0 builder:v24 validator:v20];

  _Block_object_dispose(v31, 8);
}

void __140__SBInCallPresentationSession__performTransientOverlayDismissalTransitionAnimated_shouldInsertIntoSwitcherModel_analyticsSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventLabelWithFormat:@"DismissInCallTransientOverlay(%llu) = %@", ++_SBInCallPresentationDeactivationReasonTransientOverlay_block_invoke_uniqueEventKey, *(a1 + 32)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __140__SBInCallPresentationSession__performTransientOverlayDismissalTransitionAnimated_shouldInsertIntoSwitcherModel_analyticsSource_completion___block_invoke_2;
  v10[3] = &unk_2783A9E50;
  v11 = *(a1 + 32);
  v12 = *(a1 + 64);
  [v3 modifyTransientOverlayContext:v10];
  [v3 modifyApplicationContext:&__block_literal_global_181];
  [v3 setShouldPreventEmergencyNotificationBannerDismissal:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __140__SBInCallPresentationSession__performTransientOverlayDismissalTransitionAnimated_shouldInsertIntoSwitcherModel_analyticsSource_completion___block_invoke_4;
  v7[3] = &unk_2783B4228;
  v9 = *(a1 + 65);
  v7[4] = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = v6;
  v8 = v6;
  v5 = [v3 addCompletionHandler:v7];
}

void __140__SBInCallPresentationSession__performTransientOverlayDismissalTransitionAnimated_shouldInsertIntoSwitcherModel_analyticsSource_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:1];
  [v3 setTransientOverlay:*(a1 + 32)];
  [v3 setAnimated:*(a1 + 40)];
}

uint64_t __140__SBInCallPresentationSession__performTransientOverlayDismissalTransitionAnimated_shouldInsertIntoSwitcherModel_analyticsSource_completion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(*(a1 + 32) + 392) displayItemRepresentation];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 400));
    v4 = [WeakRetained switcherController];
    [v4 addAppLayoutForDisplayItem:v2 completion:0];
  }

  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

BOOL __140__SBInCallPresentationSession__performTransientOverlayDismissalTransitionAnimated_shouldInsertIntoSwitcherModel_analyticsSource_completion___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = v4[27];
  v6 = a1[7];
  if (v5 == v6 && !*(*(a1[6] + 8) + 40))
  {
    v7 = [v4 _acquireAssertionForAnalyticsSource:a1[5]];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  return v5 == v6;
}

- (void)_performPresentationWithRequestedPresentationMode:(int64_t)mode isUserInitiated:(BOOL)initiated animated:(BOOL)animated analyticsSource:(id)source completion:(id)completion
{
  animatedCopy = animated;
  initiatedCopy = initiated;
  sourceCopy = source;
  completionCopy = completion;
  v14 = completionCopy;
  if (mode > 1)
  {
    if (mode != 2)
    {
      if (mode != 3)
      {
        goto LABEL_29;
      }

      self->_hasAdoptedFullscreenOverlayAPI = 1;
      if (self->_isNonModalPresentationActive)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_4;
        v20[3] = &unk_2783A9C70;
        v21 = completionCopy;
        [(SBInCallPresentationSession *)self _performBannerToTransientOverlayPresentationTransitionAnimated:animatedCopy analyticsSource:sourceCopy completion:v20];
        v16 = v21;
      }

      else
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_5;
        v18[3] = &unk_2783A9C70;
        v19 = completionCopy;
        [(SBInCallPresentationSession *)self _performTransientOverlayPresentationTransitionAnimated:animatedCopy analyticsSource:sourceCopy completion:v18];
        v16 = v19;
      }

      goto LABEL_28;
    }

LABEL_14:
    if (self->_isScreenSharingPresentation && [(SBLockScreenManager *)self->_lockScreenManager isUILocked])
    {
      v17 = SBLogInCallPresentation();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SBInCallPresentationSession _performPresentationWithRequestedPresentationMode:isUserInitiated:animated:analyticsSource:completion:];
      }

      goto LABEL_19;
    }

    if ([(SBInCallPresentationSession *)self _shouldUseTransientOverlayForFullScreenPresentation])
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_183;
      v26[3] = &unk_2783A9C70;
      v27 = v14;
      [(SBInCallPresentationSession *)self _performTransientOverlayPresentationTransitionAnimated:animatedCopy analyticsSource:sourceCopy completion:v26];
      v16 = v27;
    }

    else if (self->_isNonModalPresentationActive)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_2;
      v24[3] = &unk_2783A9C70;
      v25 = v14;
      [(SBInCallPresentationSession *)self _performBannerToFullScreenPresentationTransitionAnimated:animatedCopy analyticsSource:sourceCopy completion:v24];
      v16 = v25;
    }

    else
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_3;
      v22[3] = &unk_2783A9C70;
      v23 = v14;
      [(SBInCallPresentationSession *)self _performSwitcherPresentationTransitionAnimated:animatedCopy isUserInitiated:initiatedCopy analyticsSource:sourceCopy completion:v22];
      v16 = v23;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!mode)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke;
    v30[3] = &unk_2783A9C70;
    v31 = completionCopy;
    [(SBInCallPresentationSession *)self dismissAnimated:animatedCopy shouldFinalizeSceneDestruction:0 analyticsSource:sourceCopy completion:v30];
    v16 = v31;
    goto LABEL_28;
  }

  if (mode != 1)
  {
    goto LABEL_29;
  }

  if (![(SBInCallPresentationSession *)self _allowsNonModalPresentation])
  {
    goto LABEL_14;
  }

  if (!self->_jindoElement)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_182;
    v28[3] = &unk_2783A9C70;
    v29 = v14;
    [(SBInCallPresentationSession *)self _performNonModalPresentationTransitionWithAnalyticsSource:sourceCopy completion:v28];
    v16 = v29;
    goto LABEL_28;
  }

  v15 = SBLogInCallPresentation();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SBInCallPresentationSession _performPresentationWithRequestedPresentationMode:isUserInitiated:animated:analyticsSource:completion:];
  }

  if (v14)
  {
LABEL_19:
    v14[2](v14, 0);
  }

LABEL_29:
}

uint64_t __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_182(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_183(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __133__SBInCallPresentationSession__performPresentationWithRequestedPresentationMode_isUserInitiated_animated_analyticsSource_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_uiLockStateDidChange:(id)change
{
  [(SBInCallPresentationSession *)self _updateSceneDeactivationAssertions];
  v4 = [SBInCallPresentationSceneUpdateContext alloc];
  _screen = [(SBInCallPresentationSession *)self _screen];
  fixedCoordinateSpace = [_screen fixedCoordinateSpace];
  [fixedCoordinateSpace bounds];
  v7 = [(SBInCallPresentationSceneUpdateContext *)v4 initWithReferenceFrame:*MEMORY[0x277D67ED0] analyticsSource:&__block_literal_global_185 transitionRequestBuilderBlock:?];

  [(SBInCallPresentationSceneUpdateContext *)v7 setExecutionTarget:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SBInCallPresentationSession__uiLockStateDidChange___block_invoke_2;
  v8[3] = &unk_2783B0350;
  v8[4] = self;
  [(SBInCallPresentationSceneUpdateContext *)v7 setValidatorHandler:v8];
  [(SBInCallPresentationSession *)self _performSceneUpdateTransactionWithContext:v7];
  [(SBInCallPresentationSession *)self _updateSystemControlsShouldPresentAsEmbedded];
  if (self->_isTransientOverlayPresentationActive)
  {
    [(SBTransientOverlayViewController *)self->_transientOverlayViewController setNeedsIdleTimerReset];
  }
}

uint64_t __53__SBInCallPresentationSession__uiLockStateDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 applicationContext];
  v4 = [v3 layoutState];
  LODWORD(v2) = [v2 _hasExistingSceneSettingsPresentationModeForLayoutState:v4];

  return v2 ^ 1;
}

- (void)presentWithRequestedConfiguration:(id)configuration animated:(BOOL)animated analyticsSource:(id)source completion:(id)completion
{
  animatedCopy = animated;
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  sourceCopy = source;
  completionCopy = completion;
  v13 = SBLogInCallPresentation();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = configurationCopy;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ handling presentation request with config %{public}@", buf, 0x16u);
  }

  self->_preventsBannersWhenPresentedAsOverlay = [configurationCopy shouldPreventBannersWhenPresentedAsOverlay];
  self->_prefersContinuityDisplayForFullScreenPresentation = [configurationCopy shouldPreferContinuityDisplayForFullScreenPresentation];
  if (([configurationCopy isScreenSharingPresentation] & 1) != 0 || objc_msgSend(configurationCopy, "preferredPresentationMode") != 3)
  {
    isUserInitiated = 0;
  }

  else
  {
    isUserInitiated = [configurationCopy isUserInitiated];
  }

  self->_transientOverlayShouldAlwaysPreventHomeGestureDismissal = isUserInitiated;
  if ([(SBInCallPresentationSession *)self _isValidForSceneUpdates])
  {
    self->_hasBegunHandlingPresentationRequest = 1;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __101__SBInCallPresentationSession_presentWithRequestedConfiguration_animated_analyticsSource_completion___block_invoke;
    v15[3] = &unk_2783A98A0;
    v15[4] = self;
    v16 = completionCopy;
    [(SBInCallPresentationSession *)self _presentWithRequestedConfiguration:configurationCopy animated:animatedCopy analyticsSource:sourceCopy completion:v15];
  }
}

uint64_t __101__SBInCallPresentationSession_presentWithRequestedConfiguration_animated_analyticsSource_completion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 90) = 1;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_presentWithRequestedConfiguration:(id)configuration animated:(BOOL)animated analyticsSource:(id)source completion:(id)completion
{
  animatedCopy = animated;
  configurationCopy = configuration;
  sourceCopy = source;
  completionCopy = completion;
  preferredPresentationMode = [configurationCopy preferredPresentationMode];
  isUserInitiated = [configurationCopy isUserInitiated];
  self->_isScreenSharingPresentation = [configurationCopy isScreenSharingPresentation];
  identifier = [configurationCopy identifier];
  requestedPresentationConfigurationIdentifier = self->_requestedPresentationConfigurationIdentifier;
  self->_requestedPresentationConfigurationIdentifier = identifier;

  if ([(SBInCallPresentationSession *)self _isProximityReaderPresented])
  {
    preferredPresentationMode = 0;
  }

  if ([configurationCopy supportsSystemAperture])
  {
    [(SBInCallPresentationSession *)self _createJindoElementIfNeeded];
    if (preferredPresentationMode == 1)
    {
      if (![(SBInCallPresentationSession *)self _allowsNonModalPresentation])
      {
        preferredPresentationMode = 1;
        if (![configurationCopy supportsAmbient])
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }

      preferredPresentationMode = self->_jindoElement == 0;
    }
  }

  if (([configurationCopy supportsAmbient] & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (![(SBInCallPresentationSession *)self _isAmbientPresentationActive])
  {
LABEL_9:
    if (preferredPresentationMode)
    {
      goto LABEL_16;
    }
  }

  if ([(SBInCallPresentationSession *)self _allowsInitiallyDismissedPresentation])
  {
    [configurationCopy requiresDismissedPresentationmode];
    goto LABEL_17;
  }

  v17 = SBLogInCallPresentation();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [SBInCallPresentationSession _presentWithRequestedConfiguration:animated:analyticsSource:completion:];
  }

  preferredPresentationMode = 2;
LABEL_16:
  if (![configurationCopy requiresDismissedPresentationmode])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __102__SBInCallPresentationSession__presentWithRequestedConfiguration_animated_analyticsSource_completion___block_invoke_3;
    v21[3] = &unk_2783B3B78;
    v21[4] = self;
    v22 = completionCopy;
    v20 = completionCopy;
    [(SBInCallPresentationSession *)self _performPresentationWithRequestedPresentationMode:preferredPresentationMode isUserInitiated:isUserInitiated animated:animatedCopy analyticsSource:sourceCopy completion:v21];
    v19 = v22;
    goto LABEL_19;
  }

LABEL_17:
  [(SBInCallPresentationSession *)self _activeJindoElementIfNeeded];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__SBInCallPresentationSession__presentWithRequestedConfiguration_animated_analyticsSource_completion___block_invoke;
  v25[3] = &unk_2783B0350;
  v25[4] = self;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __102__SBInCallPresentationSession__presentWithRequestedConfiguration_animated_analyticsSource_completion___block_invoke_2;
  v23[3] = &unk_2783A9C70;
  v24 = completionCopy;
  v18 = completionCopy;
  [(SBInCallPresentationSession *)self _insertIntoSwitcherAsDismissedWithAnalyticsSource:sourceCopy transitionValidator:v25 completion:v23];
  v19 = v24;
LABEL_19:
}

uint64_t __102__SBInCallPresentationSession__presentWithRequestedConfiguration_animated_analyticsSource_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __102__SBInCallPresentationSession__presentWithRequestedConfiguration_animated_analyticsSource_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _activeJindoElementIfNeeded];
}

- (void)dismissAndFinalizeSceneDestructionAnimated:(BOOL)animated analyticsSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  self->_hasReceivedFinalizeSceneDestructionRequest = 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__SBInCallPresentationSession_dismissAndFinalizeSceneDestructionAnimated_analyticsSource_completion___block_invoke;
  v12[3] = &unk_2783B42A0;
  animatedCopy = animated;
  v13 = sourceCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = sourceCopy;
  v11 = completionCopy;
  [(SBInCallPresentationSession *)self _dispatchBlockToMainEventQueueWithReason:@"SBInCallPresentationSession - dismissAndFinalizeSceneDestructionAnimated" block:v12];
}

void __101__SBInCallPresentationSession_dismissAndFinalizeSceneDestructionAnimated_analyticsSource_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = SBLogInCallPresentation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    *buf = 138543618;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ handling dismissAndFinalizeSceneDestructionAnimated %{BOOL}u", buf, 0x12u);
  }

  v5 = *(a1 + 32);
  if (v5[89])
  {
    v6 = *(a1 + 56);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __101__SBInCallPresentationSession_dismissAndFinalizeSceneDestructionAnimated_analyticsSource_completion___block_invoke_189;
    v9[3] = &unk_2783A9C70;
    v7 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v5 dismissAnimated:v6 shouldFinalizeSceneDestruction:1 analyticsSource:v7 completion:v9];
  }

  else
  {
    [*(a1 + 32) _destroySceneEntityIfExists];
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 1);
    }
  }
}

uint64_t __101__SBInCallPresentationSession_dismissAndFinalizeSceneDestructionAnimated_analyticsSource_completion___block_invoke_189(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissAnimated:(BOOL)animated shouldFinalizeSceneDestruction:(BOOL)destruction analyticsSource:(id)source completion:(id)completion
{
  destructionCopy = destruction;
  animatedCopy = animated;
  v35 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  completionCopy = completion;
  v12 = SBLogInCallPresentation();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SBInCallPresentationSession dismissAnimated:shouldFinalizeSceneDestruction:analyticsSource:completion:]";
    *&buf[12] = 2114;
    *&buf[14] = self;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v34 = 1;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 1;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __105__SBInCallPresentationSession_dismissAnimated_shouldFinalizeSceneDestruction_analyticsSource_completion___block_invoke;
  v26[3] = &unk_2783B42F0;
  v28 = v31;
  v29 = buf;
  v30 = destructionCopy;
  v26[4] = self;
  v13 = completionCopy;
  v27 = v13;
  v14 = MEMORY[0x223D6F7F0](v26);
  v15 = v14;
  if (self->_isTransientOverlayPresentationActive)
  {
    ++*(*&buf[8] + 24);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __105__SBInCallPresentationSession_dismissAnimated_shouldFinalizeSceneDestruction_analyticsSource_completion___block_invoke_3;
    v24[3] = &unk_2783A9C70;
    v25 = v14;
    [(SBInCallPresentationSession *)self _performTransientOverlayDismissalTransitionAnimated:animatedCopy shouldInsertIntoSwitcherModel:0 analyticsSource:sourceCopy completion:v24];
  }

  if (self->_isNonModalPresentationActive)
  {
    ++*(*&buf[8] + 24);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __105__SBInCallPresentationSession_dismissAnimated_shouldFinalizeSceneDestruction_analyticsSource_completion___block_invoke_4;
    v22[3] = &unk_2783A9C70;
    v23 = v15;
    [(SBInCallPresentationSession *)self _performNonModalDismissalTransitionAnimated:animatedCopy analyticsSource:sourceCopy completion:v22];
  }

  ++*(*&buf[8] + 24);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__SBInCallPresentationSession_dismissAnimated_shouldFinalizeSceneDestruction_analyticsSource_completion___block_invoke_5;
  v18[3] = &unk_2783AAC18;
  v18[4] = self;
  v21 = animatedCopy;
  v16 = sourceCopy;
  v19 = v16;
  v17 = v15;
  v20 = v17;
  [(SBInCallPresentationSession *)self _performSwitcherDismissalTransitionAnimated:animatedCopy shouldDestroyScene:destructionCopy analyticsSource:v16 completion:v18];
  (*(v17 + 2))(v17, 1, 0);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(buf, 8);
}

void __105__SBInCallPresentationSession_dismissAnimated_shouldFinalizeSceneDestruction_analyticsSource_completion___block_invoke(uint64_t a1, char a2, int a3)
{
  *(*(*(a1 + 48) + 8) + 24) &= a2;
  if (!--*(*(*(a1 + 56) + 8) + 24))
  {
    if (*(a1 + 64) == 1)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __105__SBInCallPresentationSession_dismissAnimated_shouldFinalizeSceneDestruction_analyticsSource_completion___block_invoke_2;
      v11[3] = &unk_2783B42C8;
      v11[4] = *(a1 + 32);
      v10 = *(a1 + 40);
      v5 = v10;
      v12 = v10;
      v6 = MEMORY[0x223D6F7F0](v11);
      v7 = v6;
      if (a3)
      {
        (*(v6 + 16))(v6);
      }

      else
      {
        [*(a1 + 32) _dispatchBlockToMainEventQueueWithReason:@"SBInCallPresentationSession - dismissAnimated:shouldFinalizeSceneDestruction:" block:v6];
      }
    }

    else
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(v8 + 16);

        v9();
      }
    }
  }
}

uint64_t __105__SBInCallPresentationSession_dismissAnimated_shouldFinalizeSceneDestruction_analyticsSource_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);
    if ((v3[210] & 1) == 0 && (v3[209] & 1) == 0)
    {
      if (![v3 _isInSwitcherModel])
      {
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 400));
        v10 = [WeakRetained layoutStateProvider];
        v11 = [v10 layoutState];
        v12 = [*(*(a1 + 32) + 392) sceneIdentifier];
        v13 = [v11 elementWithIdentifier:v12];
        *(*(*(a1 + 48) + 8) + 24) = v13 == 0;

        goto LABEL_7;
      }

      v2 = *(*(a1 + 48) + 8);
    }

    *(v2 + 24) = 0;
  }

LABEL_7:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = [MEMORY[0x277D0AAD8] sharedInstance];
    v5 = [*(*(a1 + 32) + 392) sceneIdentifier];
    v6 = [v4 sceneWithIdentifier:v5];

    if (v6)
    {
      [*(a1 + 32) _destroySceneEntityIfExists];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __105__SBInCallPresentationSession_dismissAnimated_shouldFinalizeSceneDestruction_analyticsSource_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[210] == 1)
  {
    v3 = *(a1 + 56);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __105__SBInCallPresentationSession_dismissAnimated_shouldFinalizeSceneDestruction_analyticsSource_completion___block_invoke_6;
    v9[3] = &unk_2783B3B78;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9[4] = *(a1 + 32);
    v10 = v5;
    [v2 _performTransientOverlayDismissalTransitionAnimated:v3 shouldInsertIntoSwitcherModel:0 analyticsSource:v4 completion:v9];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) _isInSwitcherModel];
    v8 = *(v6 + 16);

    v8(v6, v7 ^ 1u, 1);
  }
}

uint64_t __105__SBInCallPresentationSession_dismissAnimated_shouldFinalizeSceneDestruction_analyticsSource_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    a2 = [*(a1 + 32) _isInSwitcherModel] ^ 1;
  }

  v3 = *(v2 + 16);

  return v3(v2, a2, 1);
}

- (BOOL)disallowsLockHardwareButtonDoublePress
{
  supportsHandlingDeviceLock = [(SBInCallPresentationSession *)self supportsHandlingDeviceLock];
  if (supportsHandlingDeviceLock)
  {
    LOBYTE(supportsHandlingDeviceLock) = ![(SBInCallPresentationSession *)self _isCallConnectedForScene];
  }

  return supportsHandlingDeviceLock;
}

- (BOOL)supportsBecomingVisibleWhenUnlockingFromSource:(int)source wakingDisplay:(BOOL)display
{
  if (![(SBInCallPresentationSession *)self _isValidForSceneUpdates])
  {
    return 0;
  }

  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  v8 = sceneIfExists;
  if (sceneIfExists)
  {
    clientSettings = [sceneIfExists clientSettings];
    if ([(SBInCallPresentationSession *)self _isAmbientPresentationActive])
    {
      v10 = 0;
    }

    else
    {
      shouldBecomeVisibleWhenWakingDisplay = [clientSettings shouldBecomeVisibleWhenWakingDisplay];
      v12 = (source - 31) < 2;
      if (display)
      {
        v12 = shouldBecomeVisibleWhenWakingDisplay;
      }

      if (shouldBecomeVisibleWhenWakingDisplay)
      {
        v10 = v12;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  if (press)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  return [(SBDeviceApplicationSceneHandle *)self->_sceneHandle handleHardwareButtonEventType:v3];
}

- (void)handleDeviceLockFromSource:(int)source completion:(id)completion
{
  v4 = *&source;
  completionCopy = completion;
  v15 = completionCopy;
  if (self->_isHandlingDeviceLock)
  {
    if (!completionCopy)
    {
      goto LABEL_16;
    }

    deviceLockHandlingCompletionHandlers = self->_deviceLockHandlingCompletionHandlers;
    if (!deviceLockHandlingCompletionHandlers)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v9 = self->_deviceLockHandlingCompletionHandlers;
      self->_deviceLockHandlingCompletionHandlers = v8;

      completionCopy = v15;
      deviceLockHandlingCompletionHandlers = self->_deviceLockHandlingCompletionHandlers;
    }

    v10 = MEMORY[0x223D6F7F0](completionCopy);
    [(NSMutableArray *)deviceLockHandlingCompletionHandlers addObject:v10];

    goto LABEL_15;
  }

  if (![(SBInCallPresentationSession *)self _sceneSupportsHandlingDeviceLock])
  {
    completionCopy = v15;
    if (!v15)
    {
      goto LABEL_16;
    }

    (*(v15 + 2))();
    goto LABEL_15;
  }

  self->_isHandlingDeviceLock = 1;
  completionCopy = v15;
  if (v15)
  {
    v11 = self->_deviceLockHandlingCompletionHandlers;
    if (!v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v13 = self->_deviceLockHandlingCompletionHandlers;
      self->_deviceLockHandlingCompletionHandlers = v12;

      v11 = self->_deviceLockHandlingCompletionHandlers;
    }

    v14 = MEMORY[0x223D6F7F0]();
    [(NSMutableArray *)v11 addObject:v14];

    completionCopy = v15;
  }

  if (v4 != 24)
  {
    [(SBInCallPresentationSession *)self _notifySceneOfDeviceLockFromSource:v4 completion:v15];
LABEL_15:
    completionCopy = v15;
  }

LABEL_16:
}

- (void)handleActionButtonPressed
{
  if (!self->_isScreenSharingPresentation)
  {
    sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
    if (sceneIfExists)
    {
      v6 = sceneIfExists;
      v4 = [objc_alloc(MEMORY[0x277D67BD0]) initWithInfo:0 responder:0];
      v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
      [v6 sendActions:v5];

      sceneIfExists = v6;
    }
  }
}

- (void)_notifySceneOfDeviceLockFromSource:(int)source completion:(id)completion
{
  v6 = source == 3;
  v46[7] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = 2 * v6;
  if (source == 1)
  {
    v8 = 1;
  }

  v30 = completionCopy;
  v31 = v8;
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  clientProcess = [sceneIfExists clientProcess];
  v11 = [clientProcess pid];

  if (v11 == -1)
  {
    v21 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277D47008] targetWithPid:v11];
    grantWithUserInteractivity = [MEMORY[0x277D46DF0] grantWithUserInteractivity];
    v46[0] = grantWithUserInteractivity;
    grantWithForegroundPriority = [MEMORY[0x277D46EA8] grantWithForegroundPriority];
    v46[1] = grantWithForegroundPriority;
    v15 = [MEMORY[0x277D46FD0] withReason:10002];
    v46[2] = v15;
    grant = [MEMORY[0x277D46E30] grant];
    v46[3] = grant;
    grant2 = [MEMORY[0x277D46EF8] grant];
    v46[4] = grant2;
    grantWithForegroundPriority2 = [MEMORY[0x277D46EA8] grantWithForegroundPriority];
    v46[5] = grantWithForegroundPriority2;
    v19 = [MEMORY[0x277D46FC0] grantWithResistance:40];
    v46[6] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:7];

    v21 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:@"SBInCallHandleDeviceLockAction" target:v12 attributes:v20];
  }

  [v21 acquireWithError:0];
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__44;
  v42[4] = __Block_byref_object_dispose__44;
  selfCopy = self;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__44;
  v40 = __Block_byref_object_dispose__44;
  v41 = 0;
  v22 = SBLogInCallPresentation();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIdentifier];
    *buf = 138543362;
    v45 = sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Handing device lock to %{public}@", buf, 0xCu);
  }

  v24 = objc_alloc(MEMORY[0x277D67B58]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __77__SBInCallPresentationSession__notifySceneOfDeviceLockFromSource_completion___block_invoke;
  v32[3] = &unk_2783B4318;
  v34 = v42;
  v25 = v21;
  v33 = v25;
  v35 = &v36;
  v26 = [v24 initWithSourceType:v31 timeout:v32 withResponseHandler:5.0];
  v27 = v37[5];
  v37[5] = v26;

  scene = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle scene];
  v29 = [MEMORY[0x277CBEB98] setWithObject:v37[5]];
  [scene sendActions:v29];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v42, 8);
}

void __77__SBInCallPresentationSession__notifySceneOfDeviceLockFromSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    *(v4 + 88) = 0;
    v5 = [*(*(*(*(a1 + 40) + 8) + 40) + 72) copy];
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = *(v6 + 72);
    *(v6 + 72) = 0;

    if (v3)
    {
      v8 = [v3 error];
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = [v3 deviceLockHandlingResult] == 1;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = SBLogInCallPresentation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(*(*(*(a1 + 40) + 8) + 40) + 392) sceneIdentifier];
      *buf = 138543618;
      v27 = v11;
      v28 = 1024;
      v29 = v9;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Response for device lock to %{public}@ %{BOOL}u", buf, 0x12u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v21 + 1) + 8 * i) + 16))(*(*(&v21 + 1) + 8 * i));
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    [*(a1 + 32) invalidate];
  }

  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}

- (BOOL)isFullscreenCallInSwitcher
{
  if (self->_isScreenSharingPresentation)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];
  _isValidForSceneUpdates = [(SBInCallPresentationSession *)self _isShowingFullScreenForLayoutState:layoutState]&& !self->_isTransientOverlayPresentationActive && [(SBInCallPresentationSession *)self _isValidForSceneUpdates];

  return _isValidForSceneUpdates;
}

- (BOOL)disablesSystemVolumeHUDForCategory:(id)category
{
  categoryCopy = category;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  _clientSettingsIfExists = [(SBInCallPresentationSession *)self _clientSettingsIfExists];
  audioCategoriesDisablingVolumeHUD = [_clientSettingsIfExists audioCategoriesDisablingVolumeHUD];

  if (audioCategoriesDisablingVolumeHUD)
  {
    v10 = [audioCategoriesDisablingVolumeHUD count] == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SBInCallPresentationSession *)self _currentPresentationModeForLayoutState:layoutState];
  v12 = v11 != 0;
  if (v11 && !v10)
  {
    v12 = [audioCategoriesDisablingVolumeHUD containsObject:categoryCopy];
  }

  return v12;
}

- (BOOL)isShowingOnEmbeddedDisplay
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];
  isMainDisplay = [_fbsDisplayIdentity isMainDisplay];

  return isMainDisplay;
}

- (void)_prepareForTransientOverlayPresentationTransactionWithAnimation:(BOOL)animation analyticsSource:(id)source completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  completionCopy = completion;
  v10 = SBLogInCallPresentation();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SBInCallPresentationSession _prepareForTransientOverlayPresentationTransactionWithAnimation:analyticsSource:completion:]";
    v23 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __122__SBInCallPresentationSession__prepareForTransientOverlayPresentationTransactionWithAnimation_analyticsSource_completion___block_invoke;
  v17[3] = &unk_2783AAC68;
  v17[4] = self;
  v11 = sourceCopy;
  v18 = v11;
  animationCopy = animation;
  v12 = completionCopy;
  v19 = v12;
  v13 = MEMORY[0x223D6F7F0](v17);
  v14 = v13;
  if (self->_isNonModalPresentationActive)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __122__SBInCallPresentationSession__prepareForTransientOverlayPresentationTransactionWithAnimation_analyticsSource_completion___block_invoke_6;
    v15[3] = &unk_2783A9C70;
    v16 = v13;
    [(SBInCallPresentationSession *)self _performNonModalDismissalTransitionAnimated:0 analyticsSource:v11 completion:v15];
  }

  else
  {
    v13[2](v13);
  }
}

void __122__SBInCallPresentationSession__prepareForTransientOverlayPresentationTransactionWithAnimation_analyticsSource_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setTransientOverlayPresentationActive:1];
  v2 = *(*(a1 + 32) + 120);
  if (!v2)
  {
    v3 = [*(a1 + 32) _createTransientOverlayViewController];
    v4 = *(a1 + 32);
    v5 = *(v4 + 120);
    *(v4 + 120) = v3;

    v2 = *(*(a1 + 32) + 120);
  }

  v6 = [v2 preferredInterfaceOrientationForPresentation];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (!v6)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 376));
      v6 = [WeakRetained inCallClientPresentationSessionInterfaceOrientationForTransientOverlayPresentation:*(a1 + 32)];
    }

    if (v6 <= 1)
    {
      v6 = 1;
    }

    [*(*(a1 + 32) + 120) supportedInterfaceOrientations];
    if ((SBFInterfaceOrientationMaskContainsInterfaceOrientation() & 1) == 0)
    {
      v6 = SBFFirstInterfaceOrientationInInterfaceOrientationMask();
    }
  }

  else
  {
    v6 = 1;
  }

  v10 = [*(a1 + 32) _screen];
  v11 = [v10 fixedCoordinateSpace];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [SBInCallPresentationSceneUpdateContext alloc];
  v21 = *(a1 + 40);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __122__SBInCallPresentationSession__prepareForTransientOverlayPresentationTransactionWithAnimation_analyticsSource_completion___block_invoke_2;
  v30[3] = &__block_descriptor_40_e42_v16__0__SBMainWorkspaceTransitionRequest_8l;
  v30[4] = v6;
  v22 = [(SBInCallPresentationSceneUpdateContext *)v20 initWithReferenceFrame:v21 analyticsSource:v30 transitionRequestBuilderBlock:v13, v15, v17, v19];
  [(SBInCallPresentationSceneUpdateContext *)v22 setExecutionTarget:2];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __122__SBInCallPresentationSession__prepareForTransientOverlayPresentationTransactionWithAnimation_analyticsSource_completion___block_invoke_4;
  v26 = &unk_2783B1E48;
  v27 = *(a1 + 32);
  v29 = *(a1 + 56);
  v28 = *(a1 + 48);
  [(SBInCallPresentationSceneUpdateContext *)v22 setCompletionHandler:&v23];
  [*(a1 + 32) _performSceneUpdateTransactionWithContext:{v22, v23, v24, v25, v26, v27}];
}

uint64_t __122__SBInCallPresentationSession__prepareForTransientOverlayPresentationTransactionWithAnimation_analyticsSource_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __122__SBInCallPresentationSession__prepareForTransientOverlayPresentationTransactionWithAnimation_analyticsSource_completion___block_invoke_3;
  v3[3] = &__block_descriptor_40_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
  v3[4] = *(a1 + 32);
  return [a2 modifyApplicationContext:v3];
}

void __122__SBInCallPresentationSession__prepareForTransientOverlayPresentationTransactionWithAnimation_analyticsSource_completion___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [[SBWorkspaceTransientOverlay alloc] initWithViewController:*(*(a1 + 32) + 120)];
    objc_initWeak(&location, *(a1 + 32));
    v4 = [SBInCallTransientOverlayPresentationContext alloc];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __122__SBInCallPresentationSession__prepareForTransientOverlayPresentationTransactionWithAnimation_analyticsSource_completion___block_invoke_5;
    v10[3] = &unk_2783B4340;
    objc_copyWeak(&v12, &location);
    v5 = v3;
    v11 = v5;
    v13 = *(a1 + 48);
    v6 = [(SBInCallTransientOverlayPresentationContext *)v4 initWithRequestBuilder:v10];
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 1, v6);
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

void __122__SBInCallPresentationSession__prepareForTransientOverlayPresentationTransactionWithAnimation_analyticsSource_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _configureTransitionRequest:v3 forPresentingTransientOverlay:*(a1 + 32) animated:*(a1 + 48)];
}

- (BOOL)_isInSwitcherModel
{
  mainSwitcherCoordinator = self->_mainSwitcherCoordinator;
  displayItemRepresentation = [(SBApplicationSceneHandle *)self->_sceneHandle displayItemRepresentation];
  LOBYTE(mainSwitcherCoordinator) = [(SBMainSwitcherControllerCoordinator *)mainSwitcherCoordinator hasAppLayoutForDisplayItem:displayItemRepresentation];

  return mainSwitcherCoordinator;
}

- (id)_acquireAssertionForAnalyticsSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy && !self->_isInvalidated)
  {
    assertionAnalyticSources = self->_assertionAnalyticSources;
    if (!assertionAnalyticSources)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v8 = self->_assertionAnalyticSources;
      self->_assertionAnalyticSources = v7;

      assertionAnalyticSources = self->_assertionAnalyticSources;
    }

    [(NSMutableArray *)assertionAnalyticSources addObject:sourceCopy];
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x277CF0CE8]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__SBInCallPresentationSession__acquireAssertionForAnalyticsSource___block_invoke;
    v11[3] = &unk_2783AEA48;
    objc_copyWeak(&v13, &location);
    v12 = sourceCopy;
    v5 = [v9 initWithIdentifier:@"SBInCallPresentationSession" forReason:v12 invalidationBlock:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __67__SBInCallPresentationSession__acquireAssertionForAnalyticsSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained[3] removeObject:*(a1 + 32)];
    v4 = [v6[3] count];
    v3 = v6;
    if (!v4)
    {
      v5 = v6[3];
      v6[3] = 0;

      v3 = v6;
    }
  }
}

- (BOOL)_allowsNonModalPresentation
{
  if (self->_isTransientOverlayPresentationActive)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    lockScreenEnvironment = [(SBLockScreenManager *)self->_lockScreenManager lockScreenEnvironment];
    behaviorSuppressor = [lockScreenEnvironment behaviorSuppressor];
    if ([behaviorSuppressor suppressesBanners])
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      v2 = ![(SBSetupManager *)self->_setupManager isInSetupMode];
    }
  }

  return v2;
}

- (BOOL)_allowsInitiallyDismissedPresentation
{
  _allowsNonModalPresentation = [(SBInCallPresentationSession *)self _allowsNonModalPresentation];
  v4 = [(SBInCallPresentationSession *)self _isProximityReaderPresented]|| _allowsNonModalPresentation;
  if ([(SBLockScreenManager *)self->_lockScreenManager isUILocked])
  {
    LOBYTE(v4) = v4 & (self->_jindoElement != 0);
  }

  return ([(SBInCallPresentationSession *)self _isAmbientPresentationActive]| v4) & 1;
}

- (int64_t)_currentPresentationModeForLayoutState:(id)state
{
  stateCopy = state;
  if (self->_isTransientOverlayPresentationActive)
  {
    if (self->_hasAdoptedFullscreenOverlayAPI)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  else if (self->_isNonModalPresentationActive)
  {
    v5 = 1;
  }

  else if ((![(SBLockScreenManager *)self->_lockScreenManager isUILocked]|| [(SBLockScreenManager *)self->_lockScreenManager isUIUnlocking]) && stateCopy && [(SBInCallPresentationSession *)self _shouldConsiderScenePrimaryForLayoutState:stateCopy])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isDismissedForLayoutState:(id)state
{
  stateCopy = state;
  v5 = !self->_isNonModalPresentationActive && !self->_isTransientOverlayPresentationActive && [(SBInCallPresentationSession *)self _currentPresentationModeForLayoutState:stateCopy]== 0;

  return v5;
}

- (void)_destroySceneEntityIfExists
{
  v8 = *MEMORY[0x277D85DE8];
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];

  if (sceneIfExists)
  {
    v4 = SBLogInCallPresentation();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Destroying scene entity: %{public}@", &v6, 0xCu);
    }

    v5 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:self->_sceneHandle];
    SBWorkspaceDestroyApplicationEntity(v5);
  }
}

- (BOOL)_hasExistingSceneSettingsPresentationModeForLayoutState:(id)state
{
  stateCopy = state;
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  v6 = sceneIfExists;
  if (sceneIfExists)
  {
    settings = [sceneIfExists settings];
    inCallPresentationMode = [settings inCallPresentationMode];
    v9 = inCallPresentationMode == [(SBInCallPresentationSession *)self _currentPresentationModeForLayoutState:stateCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_addSystemGestureDeactivationReason:(id)reason
{
  reasonCopy = reason;
  activeSystemGestureDeactivationReasons = self->_activeSystemGestureDeactivationReasons;
  v8 = reasonCopy;
  if (!activeSystemGestureDeactivationReasons)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_activeSystemGestureDeactivationReasons;
    self->_activeSystemGestureDeactivationReasons = v6;

    reasonCopy = v8;
    activeSystemGestureDeactivationReasons = self->_activeSystemGestureDeactivationReasons;
  }

  [(NSMutableSet *)activeSystemGestureDeactivationReasons addObject:reasonCopy];
  [(SBInCallPresentationSession *)self _updateSceneDeactivationAssertions];
}

- (void)_removeSystemGestureDeactivationReason:(id)reason
{
  reasonCopy = reason;
  if ([(NSMutableSet *)self->_activeSystemGestureDeactivationReasons containsObject:?])
  {
    [(NSMutableSet *)self->_activeSystemGestureDeactivationReasons removeObject:reasonCopy];
    [(SBInCallPresentationSession *)self _updateSceneDeactivationAssertions];
  }
}

- (void)_addSystemAnimationDeactivationReason:(id)reason
{
  reasonCopy = reason;
  activeSystemAnimationDeactivationReasons = self->_activeSystemAnimationDeactivationReasons;
  v8 = reasonCopy;
  if (!activeSystemAnimationDeactivationReasons)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_activeSystemAnimationDeactivationReasons;
    self->_activeSystemAnimationDeactivationReasons = v6;

    reasonCopy = v8;
    activeSystemAnimationDeactivationReasons = self->_activeSystemAnimationDeactivationReasons;
  }

  [(NSMutableSet *)activeSystemAnimationDeactivationReasons addObject:reasonCopy];
  [(SBInCallPresentationSession *)self _updateSceneDeactivationAssertions];
}

- (void)_removeSystemAnimationDeactivationReason:(id)reason
{
  reasonCopy = reason;
  if ([(NSMutableSet *)self->_activeSystemAnimationDeactivationReasons containsObject:?])
  {
    [(NSMutableSet *)self->_activeSystemAnimationDeactivationReasons removeObject:reasonCopy];
    [(SBInCallPresentationSession *)self _updateSceneDeactivationAssertions];
  }
}

- (void)_configureTransitionRequest:(id)request forPresentingTransientOverlay:(id)overlay animated:(BOOL)animated
{
  overlayCopy = overlay;
  requestCopy = request;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [requestCopy setEventLabelWithFormat:@"PresentInCallTransientOverlay = %@", v10];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__SBInCallPresentationSession__configureTransitionRequest_forPresentingTransientOverlay_animated___block_invoke;
  v12[3] = &unk_2783A9E50;
  v13 = overlayCopy;
  animatedCopy = animated;
  v11 = overlayCopy;
  [requestCopy modifyTransientOverlayContext:v12];
  [requestCopy modifyApplicationContext:&__block_literal_global_220_0];
}

void __98__SBInCallPresentationSession__configureTransitionRequest_forPresentingTransientOverlay_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setShouldDismissSiriUponPresentation:0];
  [v3 setTransitionType:0];
  [v3 setTransientOverlay:*(a1 + 32)];
  [v3 setAnimated:*(a1 + 40)];
}

- (id)_createTransientOverlayViewController
{
  v3 = [[SBInCallTransientOverlayViewController alloc] initWithSceneHandle:self->_sceneHandle shouldPreferContinuityDisplay:self->_prefersContinuityDisplayForFullScreenPresentation];
  [(SBInCallTransientOverlayViewController *)v3 setDelegate:self];
  [(SBInCallTransientOverlayViewController *)v3 setShouldIgnoreHomeIndicatorAutoHiddenClientSettings:self->_shouldIgnoreHomeIndicatorAutoHiddenClientSettings];
  [(SBInCallTransientOverlayViewController *)v3 setShouldAlwaysPreventHomeGestureDismissal:self->_transientOverlayShouldAlwaysPreventHomeGestureDismissal];

  return v3;
}

- (void)_performSceneUpdateTransactionWithContext:(id)context
{
  v75 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = SBLogInCallPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [contextCopy referenceFrame];
    v6 = BSNSStringFromCGRect();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating scene update with frame: %{public}@", &buf, 0xCu);
  }

  v7 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:self->_sceneHandle];
  entityToSceneUpdateContext = self->_entityToSceneUpdateContext;
  if (!entityToSceneUpdateContext)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v10 = self->_entityToSceneUpdateContext;
    self->_entityToSceneUpdateContext = strongToStrongObjectsMapTable;

    entityToSceneUpdateContext = self->_entityToSceneUpdateContext;
  }

  [(NSMapTable *)entityToSceneUpdateContext setObject:contextCopy forKey:v7];
  analyticsSource = [contextCopy analyticsSource];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__44;
  v73 = __Block_byref_object_dispose__44;
  v74 = 0;
  objc_initWeak(&location, self);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke;
  v64[3] = &unk_2783B4368;
  p_buf = &buf;
  objc_copyWeak(&v68, &location);
  v11 = v7;
  v65 = v11;
  v12 = contextCopy;
  v66 = v12;
  v13 = MEMORY[0x223D6F7F0](v64);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_2_223;
  v59[3] = &unk_2783AA1A0;
  v14 = v12;
  v60 = v14;
  selfCopy = self;
  v37 = v11;
  v62 = v37;
  v15 = v13;
  v63 = v15;
  v16 = MEMORY[0x223D6F7F0](v59);
  validatorHandler = [v14 validatorHandler];
  [v14 setValidatorHandler:0];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_5;
  v56[3] = &unk_2783B43B8;
  objc_copyWeak(&v58, &location);
  v18 = validatorHandler;
  v56[4] = self;
  v57 = v18;
  v19 = MEMORY[0x223D6F7F0](v56);
  executionTarget = [v14 executionTarget];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];

  switch(executionTarget)
  {
    case 0:
      workspace = self->_workspace;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_9;
      v46[3] = &unk_2783AB528;
      v47 = v16;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_10;
      v42[3] = &unk_2783B4430;
      v42[4] = self;
      v44 = v19;
      v45 = &buf;
      v43 = analyticsSource;
      [(SBMainWorkspace *)workspace requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v46 validator:v42, v37];

      v23 = v47;
      goto LABEL_15;
    case 1:
      v32 = self->_localEventQueue;
      v33 = MEMORY[0x277CF0C30];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_7;
      v48[3] = &unk_2783B4408;
      v23 = v32;
      v49 = v23;
      selfCopy2 = self;
      v51 = _fbsDisplayConfiguration;
      v53 = v16;
      v54 = v19;
      v55 = &buf;
      v52 = analyticsSource;
      v34 = [v33 eventWithName:@"SceneUpdate" handler:{v48, v37}];
      [(BSEventQueue *)v23 executeOrInsertEvent:v34 atPosition:1];

LABEL_15:
      break;
    case 2:
      v23 = [(SBMainWorkspace *)self->_workspace createRequestWithOptions:0 displayConfiguration:_fbsDisplayConfiguration, v37];
      (v16)[2](v16, v23);
      if ((v19)[2](v19, v23))
      {
        v24 = [(SBInCallPresentationSession *)self _acquireAssertionForAnalyticsSource:analyticsSource];
        v25 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v24;

        transactionProvider = [(BSEventQueue *)v23 transactionProvider];
        v27 = (transactionProvider)[2](transactionProvider, v23);

        v28 = v27;
        completionBlock = [(BSEventQueue *)v23 completionBlock];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_11;
        v39[3] = &unk_2783A9C98;
        v30 = v28;
        v40 = v30;
        v31 = completionBlock;
        v41 = v31;
        [v30 setCompletionBlock:v39];
        [v30 begin];
      }

      else
      {
        completionBlock2 = [(BSEventQueue *)v23 completionBlock];
        v30 = completionBlock2;
        if (completionBlock2)
        {
          (*(completionBlock2 + 16))(completionBlock2, 0);
        }
      }

      goto LABEL_15;
  }

  objc_destroyWeak(&v58);
  objc_destroyWeak(&v68);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

void __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_2;
  v9[3] = &unk_2783B4368;
  v12 = *(a1 + 48);
  objc_copyWeak(&v13, (a1 + 56));
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v4 = MEMORY[0x223D6F7F0](v9);
  v5 = [*(a1 + 40) postSceneUpdateHandler];
  if (v5)
  {
    [*(a1 + 40) setPostSceneUpdateHandler:0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_222;
    v6[3] = &unk_2783B4390;
    v7 = v4;
    v8 = a2;
    (v5)[2](v5, 0, v6);
  }

  else
  {
    v4[2](v4, a2);
  }

  objc_destroyWeak(&v13);
}

void __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = SBLogInCallPresentation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Finished scene update with success %{BOOL}u", v8, 8u);
  }

  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[16] removeObjectForKey:*(a1 + 32)];
  }

  v7 = [*(a1 + 40) completionHandler];
  if (v7)
  {
    [*(a1 + 40) setCompletionHandler:0];
    v7[2](v7, a2);
  }
}

void __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_2_223(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transitionRequestBuilderBlock];
  (v4)[2](v4, v3);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_3;
  v9[3] = &unk_2783A98C8;
  v9[4] = *(a1 + 40);
  [v3 modifyApplicationContext:v9];
  [*(a1 + 48) setFlag:objc_msgSend(*(a1 + 40) forActivationSetting:{"_currentPresentationModeForLayoutState:", 0) == 1, 72}];
  [v3 setSource:48];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_4;
  v6[3] = &unk_2783B40C0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  [v3 setTransactionProvider:v6];
  v5 = [v3 addCompletionHandler:*(a1 + 56)];
}

SBInCallSceneUpdateWorkspaceTransaction *__73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBInCallSceneUpdateWorkspaceTransaction alloc] initWithApplicationSceneEntity:*(a1 + 32) transitionRequest:v3];
  v5 = [*(a1 + 40) postSceneUpdateHandler];
  [*(a1 + 40) setPostSceneUpdateHandler:0];
  [(SBInCallSceneUpdateWorkspaceTransaction *)v4 setPostSceneUpdateHandler:v5];
  v6 = [v3 completionBlock];

  [(SBInCallSceneUpdateWorkspaceTransaction *)v4 setCompletionBlock:v6];

  return v4;
}

uint64_t __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained _isValidForSceneUpdates] && ((v5 = *(a1 + 40)) == 0 || (*(v5 + 16))(v5, v3)))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_6;
    v8[3] = &unk_2783A98C8;
    v8[4] = *(a1 + 32);
    [v3 modifyApplicationContext:v8];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_6(uint64_t a1, void *a2)
{
  v6 = a2;
  if (![v6 requestedUnlockedEnvironmentMode])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 400));
    v4 = [WeakRetained layoutStateProvider];
    v5 = [v4 layoutState];
    [v6 setRequestedUnlockedEnvironmentMode:{objc_msgSend(v5, "unlockedEnvironmentMode")}];
  }
}

void __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) acquireLockForReason:@"Transaction"];
  v3 = [*(*(a1 + 40) + 144) createRequestWithOptions:0 displayConfiguration:*(a1 + 48)];
  (*(*(a1 + 64) + 16))();
  if ((*(*(a1 + 72) + 16))())
  {
    v4 = [*(a1 + 40) _acquireAssertionForAnalyticsSource:*(a1 + 56)];
    v5 = *(*(a1 + 80) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [v3 transactionProvider];
    v8 = (v7)[2](v7, v3);

    v9 = [v3 completionBlock];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_8;
    v16 = &unk_2783B43E0;
    v17 = v8;
    v20 = v9;
    v18 = *(a1 + 32);
    v19 = v2;
    v10 = v9;
    v11 = v8;
    [v11 setCompletionBlock:&v13];
    [v11 begin];
  }

  else
  {
    v12 = [v3 completionBlock];
    v11 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }

    [*(a1 + 32) relinquishLock:v2];
  }
}

void __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  [*(a1 + 40) relinquishLock:*(a1 + 48)];
}

uint64_t __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_10(uint64_t a1)
{
  result = (*(*(a1 + 48) + 16))();
  if (result)
  {
    result = [*(a1 + 32) _isValidForSceneUpdates];
    if (result)
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v3 = [*(a1 + 32) _acquireAssertionForAnalyticsSource:*(a1 + 40)];
        v4 = *(*(a1 + 56) + 8);
        v5 = *(v4 + 40);
        *(v4 + 40) = v3;
      }

      return 1;
    }
  }

  return result;
}

void __73__SBInCallPresentationSession__performSceneUpdateTransactionWithContext___block_invoke_11(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = v4;
    (*(v5 + 16))(v5, a2);
    v4 = v6;
  }
}

- (CGRect)_presentedBannerBoundsInWindowScene:(id)scene
{
  sceneCopy = scene;
  screen = [sceneCopy screen];
  [screen scale];
  v38 = v6;
  [screen bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SBBannerManager *)self->_bannerManager layoutManagerInWindowScene:sceneCopy];

  [v15 useableContainerFrameInContainerBounds:screen onScreen:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(SBInCallPresentationSession *)self preferredBannerHeight];
  v25 = 106.0;
  if (v24 > 0.00000011920929)
  {
    v25 = v24;
  }

  [v15 presentedFrameForContentWithPreferredSize:v21 inUseableContainerFrame:v25 containerBounds:v17 scale:{v19, v21, v23, *&v8, *&v10, *&v12, *&v14, v38}];
  BSRectWithSize();
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

- (BOOL)_sceneSupportsHandlingDeviceLock
{
  _clientSettingsIfExists = [(SBInCallPresentationSession *)self _clientSettingsIfExists];
  supportsDeviceLockActions = [_clientSettingsIfExists supportsDeviceLockActions];

  return supportsDeviceLockActions;
}

- (BOOL)_isCallConnectedForScene
{
  _clientSettingsIfExists = [(SBInCallPresentationSession *)self _clientSettingsIfExists];
  isCallConnected = [_clientSettingsIfExists isCallConnected];

  return isCallConnected;
}

- (BOOL)_acceptsKeyboardFocus
{
  _clientSettingsIfExists = [(SBInCallPresentationSession *)self _clientSettingsIfExists];
  if ([_clientSettingsIfExists acceptsKeyboardFocus])
  {
    _isValidForSceneUpdates = [(SBInCallPresentationSession *)self _isValidForSceneUpdates];
  }

  else
  {
    _isValidForSceneUpdates = 0;
  }

  return _isValidForSceneUpdates;
}

- (void)_setNonModalPresentationActive:(BOOL)active
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_isNonModalPresentationActive != active)
  {
    self->_isNonModalPresentationActive = active;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    layoutStateProvider = [WeakRetained layoutStateProvider];
    layoutState = [layoutStateProvider layoutState];

    [(SBInCallPresentationSession *)self _updateAppStatusBarSettingsAssertionForLayoutState:layoutState];
    [(SBInCallPresentationSession *)self _updateKeyboardFocusPreventionAssertionWithLayoutState:layoutState];
  }

  if (!active)
  {
    allValues = [(NSMutableDictionary *)self->_bannerDidDisappearHandlerByUUID allValues];
    bannerDidDisappearHandlerByUUID = self->_bannerDidDisappearHandlerByUUID;
    self->_bannerDidDisappearHandlerByUUID = 0;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = allValues;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v15 + 1) + 8 * v14) + 16))(*(*(&v15 + 1) + 8 * v14));
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)_setTransientOverlayPresentationActive:(BOOL)active
{
  if (self->_isTransientOverlayPresentationActive != active)
  {
    self->_isTransientOverlayPresentationActive = active;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    layoutStateProvider = [WeakRetained layoutStateProvider];
    layoutState = [layoutStateProvider layoutState];

    [(SBInCallPresentationSession *)self _updateAppStatusBarSettingsAssertionForLayoutState:layoutState];
    [(SBInCallPresentationSession *)self _updateKeyboardFocusPreventionAssertionWithLayoutState:layoutState];
  }
}

- (BOOL)_shouldConsiderScenePrimaryForLayoutState:(id)state
{
  stateCopy = state;
  sceneHandle = [(SBInCallPresentationSession *)self sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];

  v7 = [stateCopy elementWithIdentifier:sceneIdentifier];

  if (v7)
  {
    if ([stateCopy unlockedEnvironmentMode] == 3)
    {
      LODWORD(v7) = !SBPeekConfigurationIsValid([stateCopy peekConfiguration]);
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)_shouldUseTransientOverlayForFullScreenPresentation
{
  if ([(SBLockScreenManager *)self->_lockScreenManager isUILocked])
  {
    return 1;
  }

  setupManager = self->_setupManager;

  return [(SBSetupManager *)setupManager isInSetupMode];
}

- (BOOL)_isShowingInPIP
{
  v3 = objc_opt_class();
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  settings = [sceneIfExists settings];
  v6 = SBSafeCast(v3, settings);

  if (v6)
  {
    pg_hasVisiblePIPContent = [v6 pg_hasVisiblePIPContent];
  }

  else
  {
    pg_hasVisiblePIPContent = 0;
  }

  return pg_hasVisiblePIPContent;
}

- (void)_updateAppStatusBarSettingsAssertionForLayoutState:(id)state
{
  v45 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle statusBarStateProvider];
  backgroundActivitiesToSuppress = [statusBarStateProvider backgroundActivitiesToSuppress];

  if (-[SBInCallPresentationSession _isValidForSceneUpdates](self, "_isValidForSceneUpdates") && (-[SBInCallPresentationSession _isShowingFullScreenForLayoutState:](self, "_isShowingFullScreenForLayoutState:", stateCopy) || self->_isNonModalPresentationActive && ((bannerPresentableViewController = self->_bannerPresentableViewController) == 0 || -[SBInCallBannerPresentableViewController isPresented](bannerPresentableViewController, "isPresented")) || -[SBInCallPresentationSession _isShowingInPIP](self, "_isShowingInPIP")) && [backgroundActivitiesToSuppress count])
  {
    appStatusBarSettingsAssertion = self->_appStatusBarSettingsAssertion;
    if (!appStatusBarSettingsAssertion)
    {
LABEL_11:
      [(SBWindowSceneStatusBarSettingsAssertion *)appStatusBarSettingsAssertion invalidate];
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      statusBarManager = [WeakRetained statusBarManager];

      assertionManager = [statusBarManager assertionManager];
      v15 = objc_alloc_init(SBMutableStatusBarSettings);
      [(SBMutableStatusBarSettings *)v15 setBackgroundActivitiesToSuppress:backgroundActivitiesToSuppress];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [assertionManager newSettingsAssertionWithSettings:v15 atLevel:8 reason:v17];
      v19 = self->_appStatusBarSettingsAssertion;
      self->_appStatusBarSettingsAssertion = v18;

      v20 = self->_appStatusBarSettingsAssertion;
      initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
      [(SBWindowSceneStatusBarSettingsAssertion *)v20 acquireWithAnimationParameters:initWithDefaultParameters];

      v22 = SBLogInCallPresentation();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_appStatusBarSettingsAssertion;
        v41 = 138543618;
        v42 = v23;
        v43 = 2114;
        selfCopy2 = self;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Acquired app status bar settings assertion %{public}@  for %{public}@", &v41, 0x16u);
      }

LABEL_18:
      goto LABEL_19;
    }

    settings = [(SBWindowSceneStatusBarSettingsAssertion *)appStatusBarSettingsAssertion settings];
    backgroundActivitiesToSuppress2 = [settings backgroundActivitiesToSuppress];
    v11 = BSEqualSets();

    if ((v11 & 1) == 0)
    {
      appStatusBarSettingsAssertion = self->_appStatusBarSettingsAssertion;
      goto LABEL_11;
    }
  }

  else if (self->_appStatusBarSettingsAssertion)
  {
    v24 = SBLogInCallPresentation();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_appStatusBarSettingsAssertion;
      v41 = 138543618;
      v42 = v25;
      v43 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Invalidated app status bar settings assertion %{public}@  for %{public}@", &v41, 0x16u);
    }

    v26 = self->_appStatusBarSettingsAssertion;
    initWithDefaultParameters2 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)v26 invalidateWithAnimationParameters:initWithDefaultParameters2];

    statusBarManager = self->_appStatusBarSettingsAssertion;
    self->_appStatusBarSettingsAssertion = 0;
    goto LABEL_18;
  }

LABEL_19:
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];
  v30 = [connectedWindowScenes bs_firstObjectPassingTest:&__block_literal_global_237];

  if (!v30 || ![(SBInCallPresentationSession *)self _isValidForSceneUpdates])
  {
    [(SBWindowSceneStatusBarSettingsAssertion *)self->_continuityDisplayAppStatusBarSettingsAssertion invalidate];
    continuityDisplayAppStatusBarSettingsAssertion = self->_continuityDisplayAppStatusBarSettingsAssertion;
    self->_continuityDisplayAppStatusBarSettingsAssertion = 0;
    goto LABEL_24;
  }

  settings2 = [(SBWindowSceneStatusBarSettingsAssertion *)self->_continuityDisplayAppStatusBarSettingsAssertion settings];
  backgroundActivitiesToSuppress3 = [settings2 backgroundActivitiesToSuppress];
  v33 = BSEqualSets();

  if ((v33 & 1) == 0)
  {
    continuityDisplayAppStatusBarSettingsAssertion = objc_alloc_init(SBMutableStatusBarSettings);
    [(SBMutableStatusBarSettings *)continuityDisplayAppStatusBarSettingsAssertion setBackgroundActivitiesToSuppress:backgroundActivitiesToSuppress];
    [(SBWindowSceneStatusBarSettingsAssertion *)self->_continuityDisplayAppStatusBarSettingsAssertion invalidate];
    statusBarManager2 = [v30 statusBarManager];
    assertionManager2 = [statusBarManager2 assertionManager];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [assertionManager2 newSettingsAssertionWithSettings:continuityDisplayAppStatusBarSettingsAssertion atLevel:8 reason:v38];
    v40 = self->_continuityDisplayAppStatusBarSettingsAssertion;
    self->_continuityDisplayAppStatusBarSettingsAssertion = v39;

    [(SBWindowSceneStatusBarSettingsAssertion *)self->_continuityDisplayAppStatusBarSettingsAssertion acquire];
LABEL_24:
  }
}

- (void)_updateKeyboardFocusPreventionAssertionWithLayoutState:(id)state
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (-[SBInCallPresentationSession _acceptsKeyboardFocus](self, "_acceptsKeyboardFocus") || self->_isTransientOverlayPresentationActive || (-[SBDeviceApplicationSceneHandle sceneIdentifier](self->_sceneHandle, "sceneIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), [stateCopy elementWithIdentifier:v5], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    if (self->_preventKeyboardFocusAssertion)
    {
      v7 = SBLogInCallPresentation();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Invalidating keyboard focus prevention assertion for session: %{public}@", buf, 0xCu);
      }

      [(BSInvalidatable *)self->_preventKeyboardFocusAssertion invalidate];
      preventKeyboardFocusAssertion = self->_preventKeyboardFocusAssertion;
      self->_preventKeyboardFocusAssertion = 0;
LABEL_8:
    }
  }

  else if (!self->_preventKeyboardFocusAssertion && !self->_isInvalidated)
  {
    sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
    preventKeyboardFocusAssertion = [sceneIfExists identityToken];

    if (preventKeyboardFocusAssertion)
    {
      v10 = SBLogInCallPresentation();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Acquiring keyboard focus prevention assertion for session: %{public}@", buf, 0xCu);
      }

      keyboardFocusCoordinator = self->_keyboardFocusCoordinator;
      v12 = MEMORY[0x277CCACA8];
      sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIdentifier];
      v14 = [v12 stringWithFormat:@"SBInCallPresentationSession-%@", sceneIdentifier];
      v15 = [(SBKeyboardFocusControlling *)keyboardFocusCoordinator preventFocusForSceneWithIdentityToken:preventKeyboardFocusAssertion reason:v14];
      v16 = self->_preventKeyboardFocusAssertion;
      self->_preventKeyboardFocusAssertion = v15;
    }

    goto LABEL_8;
  }
}

- (BOOL)_systemControlsShouldPresentAsEmbeddedForLayoutState:(id)state
{
  stateCopy = state;
  if (self->_isScreenSharingPresentation || ![(SBInCallPresentationSession *)self _isValidForSceneUpdates])
  {
    v5 = 0;
  }

  else if ([(SBLockScreenManager *)self->_lockScreenManager isUILocked]|| [(SBInCallPresentationSession *)self _isAmbientPresentationActive]|| self->_isTransientOverlayPresentationActive)
  {
    v5 = 1;
  }

  else if (stateCopy)
  {
    v5 = ([(SBInCallPresentationSession *)self _currentPresentationModeForLayoutState:stateCopy]& 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    layoutStateProvider = [WeakRetained layoutStateProvider];
    layoutState = [layoutStateProvider layoutState];
    v5 = [(SBInCallPresentationSession *)self _isShowingFullScreenForLayoutState:layoutState];
  }

  return v5;
}

- (void)_updateSystemControlsShouldPresentAsEmbedded
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  if ([(SBInCallPresentationSession *)self _isValidForSceneUpdates])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __75__SBInCallPresentationSession__updateSystemControlsShouldPresentAsEmbedded__block_invoke;
    v4[3] = &unk_2783ACB10;
    v4[4] = self;
    [sceneIfExists updateSettingsWithBlock:v4];
  }
}

void __75__SBInCallPresentationSession__updateSystemControlsShouldPresentAsEmbedded__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSystemControlsShouldPresentAsEmbedded:{objc_msgSend(v2, "_systemControlsShouldPresentAsEmbeddedForLayoutState:", 0)}];
}

- (void)_updateActiveAppearance
{
  if ([(SBInCallPresentationSession *)self _isValidForSceneUpdates])
  {
    v5 = self->_activeAppearanceAssertion;
    if (!v5 || [(SBSceneHandleActiveAppearanceAssertion *)v5 activeAppearance]!= 1)
    {
      v3 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle acquireActiveAppearanceAssertionWithReason:@"in call presentation session" activeAppearance:1 priority:1];
      activeAppearanceAssertion = self->_activeAppearanceAssertion;
      self->_activeAppearanceAssertion = v3;

      [(BSSimpleAssertion *)v5 invalidate];
    }
  }
}

- (void)_updateSceneHandleToObserveForSendingShowNoticeForSystemControlsAction:(id)action
{
  actionCopy = action;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && !self->_isScreenSharingPresentation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sceneHandleToObserveForShowSystemControlsAction);
    if ([actionCopy unlockedEnvironmentMode] == 3 && (objc_msgSend(actionCopy, "elements"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 1))
    {
      v9 = [actionCopy elementWithRole:1];
      entityGenerator = [v9 entityGenerator];
      v11 = entityGenerator[2]();

      v12 = objc_opt_class();
      v13 = v11;
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

      v16 = v14;

      sceneHandle = [v16 sceneHandle];

      if ([sceneHandle isEqual:self->_sceneHandle])
      {

        sceneHandle = 0;
      }
    }

    else
    {
      sceneHandle = 0;
    }

    if (WeakRetained != sceneHandle)
    {
      [WeakRetained removeObserver:self];
      objc_storeWeak(&self->_sceneHandleToObserveForShowSystemControlsAction, sceneHandle);
      [sceneHandle addObserver:self];
      [(SBInCallPresentationSession *)self _sendShowNoticeForSystemControlsActionIfNeeded];
    }
  }
}

- (void)_sendShowNoticeForSystemControlsActionIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandleToObserveForShowSystemControlsAction);
  sceneIfExists = [WeakRetained sceneIfExists];

  uiClientSettings = [sceneIfExists uiClientSettings];
  observedSceneHandlePrefersHomeIndicatorAutoHidden = self->_observedSceneHandlePrefersHomeIndicatorAutoHidden;
  if (observedSceneHandlePrefersHomeIndicatorAutoHidden != [uiClientSettings homeIndicatorAutoHidden])
  {
    homeIndicatorAutoHidden = [uiClientSettings homeIndicatorAutoHidden];
    self->_observedSceneHandlePrefersHomeIndicatorAutoHidden = homeIndicatorAutoHidden;
    if ((homeIndicatorAutoHidden & 1) == 0 && ![(SBLockScreenManager *)self->_lockScreenManager isUILocked]&& ([(SpringBoard *)self->_springBoard activeInterfaceOrientation]- 3) <= 1)
    {
      v7 = [objc_alloc(MEMORY[0x277D67BC8]) initWithInfo:0 responder:0];
      sceneIfExists2 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
      v9 = [MEMORY[0x277CBEB98] setWithObject:v7];
      [sceneIfExists2 sendActions:v9];
    }
  }
}

- (BOOL)_shouldExcludeFromSwitcherWhenDismissed
{
  if ([(SBInCallPresentationSession *)self _isValidForSceneUpdates])
  {
    _clientSettingsIfExists = [(SBInCallPresentationSession *)self _clientSettingsIfExists];
    if (([_clientSettingsIfExists prefersHiddenWhenDismissed] & 1) != 0 || -[SBSetupManager isInSetupMode](self->_setupManager, "isInSetupMode"))
    {
      v4 = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_windowScene);
      if ([WeakRetained isContinuityDisplayWindowScene])
      {
        v4 = !self->_isScreenSharingPresentation;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    return 1;
  }

  return v4;
}

- (void)_updateVisibilityInSwitcherForPrefersHiddenWhenDismissedIfNeededForLayoutState:(id)state
{
  v16 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (![(SBMainSwitcherControllerCoordinator *)self->_mainSwitcherCoordinator isAnySwitcherVisible]&& [(SBInCallPresentationSession *)self _isDismissedForLayoutState:stateCopy])
  {
    _isInSwitcherModel = [(SBInCallPresentationSession *)self _isInSwitcherModel];
    if ([(SBInCallPresentationSession *)self _shouldExcludeFromSwitcherWhenDismissed])
    {
      if ((_isInSwitcherModel & 1) == 0)
      {
        goto LABEL_17;
      }

      _isValidForSceneUpdates = 0;
    }

    else
    {
      _isValidForSceneUpdates = [(SBInCallPresentationSession *)self _isValidForSceneUpdates];
      if (_isInSwitcherModel == _isValidForSceneUpdates)
      {
        goto LABEL_17;
      }
    }

    if (!self->_isNonModalPresentationActive && !self->_isTransientOverlayPresentationActive && self->_hasHandledInitialPresentationRequest)
    {
      v7 = SBLogInCallPresentation();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"removing from";
        if (_isValidForSceneUpdates)
        {
          v8 = @"adding to";
        }

        *buf = 138543618;
        selfCopy = self;
        v14 = 2114;
        v15 = v8;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "_updateSwitcherVisibilityIfDismissed: %{public}@ %{public}@ switcher model", buf, 0x16u);
      }

      if (_isValidForSceneUpdates)
      {
        v9 = *MEMORY[0x277D67EC8];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __110__SBInCallPresentationSession__updateVisibilityInSwitcherForPrefersHiddenWhenDismissedIfNeededForLayoutState___block_invoke;
        v11[3] = &unk_2783B0350;
        v11[4] = self;
        [(SBInCallPresentationSession *)self _insertIntoSwitcherAsDismissedWithAnalyticsSource:v9 transitionValidator:v11 completion:&__block_literal_global_250];
      }

      else
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __110__SBInCallPresentationSession__updateVisibilityInSwitcherForPrefersHiddenWhenDismissedIfNeededForLayoutState___block_invoke_2;
        v10[3] = &unk_2783B0350;
        v10[4] = self;
        [(SBInCallPresentationSession *)self _removeFromSwitcherForPrefersHiddenWhenDismissedWithValidator:v10];
      }
    }
  }

LABEL_17:
}

uint64_t __110__SBInCallPresentationSession__updateVisibilityInSwitcherForPrefersHiddenWhenDismissedIfNeededForLayoutState___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isInSwitcherModel] & 1) != 0 || (objc_msgSend(*(a1 + 32), "_shouldExcludeFromSwitcherWhenDismissed"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 32) _isValidForSceneUpdates];
  }

  v3 = SBLogInCallPresentation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "_updateSwitcherVisibilityIfDismissed validated: %{BOOL}u", v5, 8u);
  }

  return v2;
}

uint64_t __110__SBInCallPresentationSession__updateVisibilityInSwitcherForPrefersHiddenWhenDismissedIfNeededForLayoutState___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _isInSwitcherModel] && objc_msgSend(*(a1 + 32), "_shouldExcludeFromSwitcherWhenDismissed"))
  {
    v2 = [*(*(a1 + 32) + 152) isAnySwitcherVisible] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = SBLogInCallPresentation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "_updateSwitcherVisibilityIfDismissed validated: %{BOOL}u", v5, 8u);
  }

  return v2;
}

- (id)_sceneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  sceneManager = [WeakRetained sceneManager];

  return sceneManager;
}

- (id)_screen
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  screen = [WeakRetained screen];

  return screen;
}

- (void)_updateSceneSettingsForAmbientPresentationSettingsUpdate
{
  sceneHandle = [(SBInCallPresentationSession *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__SBInCallPresentationSession__updateSceneSettingsForAmbientPresentationSettingsUpdate__block_invoke;
  v5[3] = &unk_2783ACB10;
  v5[4] = self;
  [sceneIfExists updateSettingsWithBlock:v5];
}

- (void)_updateAmbientPresentationSettingsForInCallSettings:(id)settings
{
  settingsCopy = settings;
  if ([settingsCopy conformsToExtension:objc_opt_class()])
  {
    if (objc_opt_respondsToSelector())
    {
      [settingsCopy setAmbientPresented:{-[SBInCallPresentationSession _isAmbientPresentationActive](self, "_isAmbientPresentationActive")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [settingsCopy setAmbientDisplayStyle:self->_ambientDisplayStyle];
    }
  }
}

- (BOOL)_isAmbientPresentationActive
{
  if (self->_isAmbientPresented)
  {
    return 1;
  }

  selfCopy = self;
  delegate = [(SBInCallPresentationSession *)self delegate];
  LOBYTE(selfCopy) = [delegate inCallClientPresentationSessionAmbientPresentationActive:selfCopy];

  return selfCopy;
}

- (id)_layoutStateTransitionCoordinator
{
  windowScene = [(SBInCallPresentationSession *)self windowScene];
  layoutStateTransitionCoordinator = [windowScene layoutStateTransitionCoordinator];

  return layoutStateTransitionCoordinator;
}

- (SBInCallPresentationSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (UIEdgeInsets)preferredPIPDodgingInsets
{
  top = self->_preferredPIPDodgingInsets.top;
  left = self->_preferredPIPDodgingInsets.left;
  bottom = self->_preferredPIPDodgingInsets.bottom;
  right = self->_preferredPIPDodgingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_performBannerDismissalTransitionAnimated:(uint64_t)a1 analyticsSource:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBInCallPresentationSession.m" lineNumber:1620 description:@"_performBannerDismissalTransitionAnimated without an active presentation"];
}

@end
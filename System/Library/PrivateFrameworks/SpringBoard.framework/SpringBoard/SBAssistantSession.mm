@interface SBAssistantSession
- (BOOL)commandeerCaptureDropletPreludeForVisionInvocation:(id)invocation;
- (BOOL)contentObscuresScreen;
- (BOOL)isActive;
- (BOOL)shouldAllowBiometricAutoUnlock;
- (NSString)coverSheetIdentifier;
- (SBAssistantRootViewController)assistantRootViewController;
- (SBAssistantSession)initWithWindowScene:(id)scene operationQueue:(id)queue gestureConfiguration:(id)configuration;
- (SBAssistantSessionDelegate)delegate;
- (SBWindowScene)windowScene;
- (id)_newTraitsOrientationPolicySpecifier;
- (id)acquireElevatedSiriEffectsViewControllerAssertionWithReason:(id)reason;
- (int64_t)participantState;
- (void)_didChangePresentationContext;
- (void)_dockFrameDidChange:(id)change;
- (void)_notifyDidChangePresentationContext;
- (void)_notifySiriPresentationViewControllerDidAppear;
- (void)_notifySiriPresentationViewControllerDidDisappear;
- (void)_notifySiriPresentationViewControllerWillAppear;
- (void)_notifySiriPresentationViewControllerWillDisappear;
- (void)_operationQueue_dismissPresentables:(unint64_t)presentables withAnimationFactory:(id)factory siriDismissalOptions:(id)options completion:(id)completion;
- (void)_restoreOrientation;
- (void)_setDisplayLayoutElementActive:(BOOL)active;
- (void)_setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)_siriPresentationViewControllerDidAppear:(BOOL)appear;
- (void)_siriPresentationViewControllerDidDisappear:(BOOL)disappear;
- (void)_siriPresentationViewControllerWillAppear:(BOOL)appear;
- (void)_siriPresentationViewControllerWillDisappear:(BOOL)disappear;
- (void)_toggleModalAlertHidingAssertion:(BOOL)assertion;
- (void)_updateAssistantAccessoryWindowWindowLevel;
- (void)_updateDockViewFrame:(CGRect)frame;
- (void)_updateOrbLocation:(id)location;
- (void)_updateOrientationLock;
- (void)assertWindowLevel:(double)level;
- (void)assistantGestureManagerDidRecognizeDismissGesture:(id)gesture preferredDismissalOptions:(id)options;
- (void)dealloc;
- (void)dismissSiriEffectsViewControllerWithCompletion:(id)completion;
- (void)dismissSiriPresentationViewControllerWithAnimationFactory:(id)factory siriDismissalOptions:(id)options completion:(id)completion;
- (void)endWithAnimationFactory:(id)factory siriDismissalOptions:(id)options completion:(id)completion;
- (void)noteKeyboardWillAppear;
- (void)noteKeyboardWillDisappear;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentSiriEffectsViewController:(id)controller completion:(id)completion;
- (void)presentSiriPresentationViewController:(id)controller withAnimationFactory:(id)factory siriPresentationOptions:(id)options completion:(id)completion;
- (void)requestTamaleLaunchAnimationLayerProviderWithCompletion:(id)completion;
- (void)setPresentationContext:(id)context;
- (void)setWantsDeemphasizedBackdrop:(BOOL)backdrop;
- (void)siriStartedHostingSceneWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (void)siriStoppedHostingSceneWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
@end

@implementation SBAssistantSession

- (SBAssistantSession)initWithWindowScene:(id)scene operationQueue:(id)queue gestureConfiguration:(id)configuration
{
  sceneCopy = scene;
  queueCopy = queue;
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = SBAssistantSession;
  v11 = [(SBAssistantSession *)&v21 init];
  if (v11)
  {
    v12 = objc_alloc_init(SBAssistantSessionPresentationContext);
    presentationContext = v11->_presentationContext;
    v11->_presentationContext = v12;

    objc_storeWeak(&v11->_windowScene, sceneCopy);
    objc_storeStrong(&v11->_operationQueue, queue);
    v14 = [SBAssistantContext contextForWindowScene:sceneCopy];
    context = v11->_context;
    v11->_context = v14;

    v16 = +[SBSceneManagerCoordinator sharedInstance];
    sceneDeactivationManager = [v16 sceneDeactivationManager];
    v18 = [sceneDeactivationManager newAssertionWithReason:4];
    resignActiveAssertion = v11->_resignActiveAssertion;
    v11->_resignActiveAssertion = v18;

    objc_storeStrong(&v11->_gestureConfiguration, configuration);
  }

  return v11;
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_elevatedSiriEffectsViewControllerAssertion invalidate];
  elevatedSiriEffectsViewControllerAssertion = self->_elevatedSiriEffectsViewControllerAssertion;
  self->_elevatedSiriEffectsViewControllerAssertion = 0;

  if ([(UIApplicationSceneDeactivationAssertion *)self->_resignActiveAssertion isAcquired])
  {
    [(UIApplicationSceneDeactivationAssertion *)self->_resignActiveAssertion relinquish];
  }

  resignActiveAssertion = self->_resignActiveAssertion;
  self->_resignActiveAssertion = 0;

  if (self->_hidingOtherWindows)
  {
    windowHidingManager = [(SBAssistantContext *)self->_context windowHidingManager];
    [windowHidingManager stopHidingWindowsForContext:self];

    self->_hidingOtherWindows = 0;
  }

  if (self->_pendingAlerts)
  {
    alertItemsController = [(SBAssistantContext *)self->_context alertItemsController];
    [alertItemsController setForceAlertsToPend:0 forReason:@"AssistantSession"];

    self->_pendingAlerts = 0;
  }

  if (self->_providingCoverSheetBehavior)
  {
    coverSheetViewController = [(SBAssistantContext *)self->_context coverSheetViewController];
    [coverSheetViewController unregisterExternalBehaviorProvider:self];

    self->_providingCoverSheetBehavior = 0;
  }

  [(BSInvalidatable *)self->_displayLayoutAssertion invalidate];
  displayLayoutAssertion = self->_displayLayoutAssertion;
  self->_displayLayoutAssertion = 0;

  [(BSInvalidatable *)self->_suspendWallpaperAnimationAssertion invalidate];
  suspendWallpaperAnimationAssertion = self->_suspendWallpaperAnimationAssertion;
  self->_suspendWallpaperAnimationAssertion = 0;

  [(BSInvalidatable *)self->_hideApplicationModalAlertsAssertion invalidate];
  hideApplicationModalAlertsAssertion = self->_hideApplicationModalAlertsAssertion;
  self->_hideApplicationModalAlertsAssertion = 0;

  [(BSInvalidatable *)self->_deferOrientationUpdatesAssertion invalidate];
  deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
  self->_deferOrientationUpdatesAssertion = 0;

  [(BSInvalidatable *)self->_traitsOrientationPolicySpecifier invalidate];
  traitsOrientationPolicySpecifier = self->_traitsOrientationPolicySpecifier;
  self->_traitsOrientationPolicySpecifier = 0;

  [(BSInvalidatable *)self->_hostedLayoutElementAssertion invalidate];
  hostedLayoutElementAssertion = self->_hostedLayoutElementAssertion;
  self->_hostedLayoutElementAssertion = 0;

  v14.receiver = self;
  v14.super_class = SBAssistantSession;
  [(SBAssistantSession *)&v14 dealloc];
}

- (SBAssistantRootViewController)assistantRootViewController
{
  assistantWindow = [(SBAssistantSession *)self assistantWindow];
  assistantRootViewController = [assistantWindow assistantRootViewController];

  return assistantRootViewController;
}

- (BOOL)isActive
{
  presentationContext = [(SBAssistantSession *)self presentationContext];
  if ([presentationContext isAnyAssistantPresentablePresented])
  {
    v4 = 1;
  }

  else
  {
    operationQueue = [(SBAssistantSession *)self operationQueue];
    pendingEvents = [operationQueue pendingEvents];
    v4 = [pendingEvents count] != 0;
  }

  return v4;
}

- (void)setPresentationContext:(id)context
{
  contextCopy = context;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_presentationContext, context);
    [(SBAssistantSession *)self _didChangePresentationContext];
  }
}

- (void)assertWindowLevel:(double)level
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = SBLogSiri();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v8 = 138543618;
    v9 = v6;
    v10 = 2048;
    levelCopy = level;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %f", &v8, 0x16u);
  }

  assistantWindow = [(SBAssistantSession *)self assistantWindow];
  [assistantWindow setWindowLevel:level];

  [(SBAssistantSession *)self _updateAssistantAccessoryWindowWindowLevel];
}

- (BOOL)shouldAllowBiometricAutoUnlock
{
  presentationContext = [(SBAssistantSession *)self presentationContext];
  siriPresentationOptions = [presentationContext siriPresentationOptions];

  if (siriPresentationOptions)
  {
    shouldAllowBiometricAutoUnlock = [siriPresentationOptions shouldAllowBiometricAutoUnlock];
  }

  else
  {
    shouldAllowBiometricAutoUnlock = 0;
  }

  return shouldAllowBiometricAutoUnlock;
}

- (BOOL)contentObscuresScreen
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:

      return [(SBAssistantSession *)self isVisible];
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_3;
    }
  }

  if ([(SBAssistantSession *)self isVisible])
  {
    gestureManager = [(SBAssistantSession *)self gestureManager];
    v7 = [gestureManager gesturesImplyFullscreenContent] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)setWantsDeemphasizedBackdrop:(BOOL)backdrop
{
  if (self->_wantsDeemphasizedBackdrop != backdrop)
  {
    backdropCopy = backdrop;
    self->_wantsDeemphasizedBackdrop = backdrop;
    presentationContext = [(SBAssistantSession *)self presentationContext];
    v7 = [presentationContext mutableCopy];

    [v7 setWantsDeemphasizedBackdrop:backdropCopy];
    [(SBAssistantSession *)self setPresentationContext:v7];
  }
}

- (void)noteKeyboardWillAppear
{
  presentationContext = [(SBAssistantSession *)self presentationContext];
  v4 = [presentationContext mutableCopy];

  [v4 setKeyboardVisible:1];
  [(SBAssistantSession *)self setPresentationContext:v4];
}

- (void)noteKeyboardWillDisappear
{
  presentationContext = [(SBAssistantSession *)self presentationContext];
  v4 = [presentationContext mutableCopy];

  [v4 setKeyboardVisible:0];
  [(SBAssistantSession *)self setPresentationContext:v4];
}

- (void)siriStartedHostingSceneWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (self->_displayLayoutAssertion)
  {
    windowScene = [(SBAssistantSession *)self windowScene];
    displayLayoutPublisher = [windowScene displayLayoutPublisher];

    v10 = [objc_alloc(MEMORY[0x277D66A50]) initWithIdentifier:identifierCopy];
    [v10 setLevel:(*MEMORY[0x277D76EE8] + 25.0)];
    [v10 setLayoutRole:6];
    [v10 setUIApplicationElement:1];
    [v10 setBundleIdentifier:bundleIdentifierCopy];
    hostedLayoutElement = self->_hostedLayoutElement;
    self->_hostedLayoutElement = v10;
    v12 = v10;

    v13 = [displayLayoutPublisher addElement:v12];
    hostedLayoutElementAssertion = self->_hostedLayoutElementAssertion;
    self->_hostedLayoutElementAssertion = v13;
  }

  else
  {
    v15 = SBLogSiri();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBAssistantSession siriStartedHostingSceneWithIdentifier:v15 bundleIdentifier:?];
    }
  }
}

- (void)siriStoppedHostingSceneWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (!self->_hostedLayoutElementAssertion)
  {
    v14 = SBLogSiri();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(SBAssistantSession *)self siriStoppedHostingSceneWithIdentifier:a2 bundleIdentifier:v14];
    }

    goto LABEL_10;
  }

  identifier = [(SBSDisplayLayoutElement *)self->_hostedLayoutElement identifier];
  if (([identifier isEqualToString:identifierCopy] & 1) == 0)
  {

LABEL_8:
    v14 = SBLogSiri();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = _SBFLoggingMethodProem();
      v16 = 138543874;
      v17 = v15;
      v18 = 2112;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = bundleIdentifierCopy;
      _os_log_error_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_ERROR, "%{public}@ - assistant session requested scene hosting to stop with mismatched sceneIdentifier: %@ and bundleIdentifier: %@, ignoring", &v16, 0x20u);
    }

LABEL_10:

    goto LABEL_11;
  }

  bundleIdentifier = [(SBSDisplayLayoutElement *)self->_hostedLayoutElement bundleIdentifier];
  v11 = [bundleIdentifier isEqualToString:bundleIdentifierCopy];

  if (!v11)
  {
    goto LABEL_8;
  }

  [(BSInvalidatable *)self->_hostedLayoutElementAssertion invalidate];
  hostedLayoutElementAssertion = self->_hostedLayoutElementAssertion;
  self->_hostedLayoutElementAssertion = 0;

  hostedLayoutElement = self->_hostedLayoutElement;
  self->_hostedLayoutElement = 0;

LABEL_11:
}

- (BOOL)commandeerCaptureDropletPreludeForVisionInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = SBLogSiri();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Commandeering capture droplet", buf, 2u);
  }

  externalDropletZoomUpToken = self->_externalDropletZoomUpToken;
  if (externalDropletZoomUpToken)
  {
    [(SBHardwareButtonLaunchZoomUpAnimationToken *)externalDropletZoomUpToken invalidate];
    v7 = self->_externalDropletZoomUpToken;
    self->_externalDropletZoomUpToken = 0;
  }

  associatedBezelEffectsCoordinator = [invocationCopy associatedBezelEffectsCoordinator];
  v9 = [associatedBezelEffectsCoordinator commandeerDropletAnimationWithToken:invocationCopy];
  v10 = self->_externalDropletZoomUpToken;
  self->_externalDropletZoomUpToken = v9;

  v11 = self->_externalDropletZoomUpToken;
  if (v11)
  {
    [(SBAssistantWindow *)self->_assistantWindow windowLevel];
    [(SBHardwareButtonLaunchZoomUpAnimationToken *)self->_externalDropletZoomUpToken setRequestedDropletWindowLevel:v12 + -1.0];
    objc_initWeak(buf, self);
    v13 = self->_externalDropletZoomUpToken;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__SBAssistantSession_commandeerCaptureDropletPreludeForVisionInvocation___block_invoke;
    v16[3] = &unk_2783AC358;
    objc_copyWeak(&v17, buf);
    [(SBHardwareButtonLaunchZoomUpAnimationToken *)v13 appendZoomUpCompletionBlock:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    v14 = SBLogSiri();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Did not receive a zoom up token for commandeering the capture droplet", buf, 2u);
    }
  }

  return v11 != 0;
}

void __73__SBAssistantSession_commandeerCaptureDropletPreludeForVisionInvocation___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = SBLogSiri();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Droplet zoom up complete", v6, 2u);
    }

    [WeakRetained[21] invalidate];
    v5 = WeakRetained[21];
    WeakRetained[21] = 0;

    [WeakRetained[8] visionIntelligenceDropletLaunchAnimationDidFinish:a2 retargeted:0];
  }
}

- (void)requestTamaleLaunchAnimationLayerProviderWithCompletion:(id)completion
{
  if (self->_externalDropletZoomUpToken)
  {
    completionCopy = completion;
    v5 = [SBAssistantLaunchAnimationLayerProvider alloc];
    animatingDroplet = [(SBHardwareButtonLaunchZoomUpAnimationToken *)self->_externalDropletZoomUpToken animatingDroplet];
    layer = [animatingDroplet layer];
    completionCopy2 = [(SBAssistantLaunchAnimationLayerProvider *)v5 initWithDropletLayer:layer];

    completionCopy[2](completionCopy, completionCopy2);
  }

  else
  {
    v8 = *(completion + 2);
    completionCopy2 = completion;
    v8();
  }
}

- (void)assistantGestureManagerDidRecognizeDismissGesture:(id)gesture preferredDismissalOptions:(id)options
{
  optionsCopy = options;
  delegate = [(SBAssistantSession *)self delegate];
  [delegate assistantSession:self requestsDismissalWithDismissalOptions:optionsCopy];
}

- (void)presentSiriPresentationViewController:(id)controller withAnimationFactory:(id)factory siriPresentationOptions:(id)options completion:(id)completion
{
  controllerCopy = controller;
  factoryCopy = factory;
  optionsCopy = options;
  completionCopy = completion;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke;
  v25 = &unk_2783B6AC0;
  v30 = completionCopy;
  v31 = a2;
  selfCopy = self;
  v27 = controllerCopy;
  v28 = factoryCopy;
  v29 = optionsCopy;
  v15 = optionsCopy;
  v16 = factoryCopy;
  v17 = controllerCopy;
  v18 = completionCopy;
  v19 = MEMORY[0x223D6F7F0](&v22);
  v20 = [MEMORY[0x277CF0C30] eventWithName:@"Siri Content Presentation" handler:{v19, v22, v23, v24, v25, selfCopy}];
  operationQueue = [(SBAssistantSession *)self operationQueue];
  [operationQueue executeOrInsertEvent:v20 atPosition:1];
}

void __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke(id *a1)
{
  v108 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v107 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v4 = [a1[4] presentationContext];
  if ([v4 isAssistantPresented])
  {
    v5 = SBLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Siri content presentation request received while already presented - ignoring", buf, 2u);
    }

    (*(a1[8] + 2))();
  }

  else
  {
    v6 = [a1[4] operationQueue];
    v7 = [v6 acquireLockForReason:@"Siri Content Presentation"];

    objc_storeStrong(a1[4] + 8, a1[5]);
    v8 = [SBAssistantWindow alloc];
    WeakRetained = objc_loadWeakRetained(a1[4] + 23);
    v10 = [(SBAssistantWindow *)v8 initWithWindowScene:WeakRetained role:@"SBTraitsParticipantRoleAssistant" debugName:@"Siri Content"];
    v11 = a1[4];
    v12 = v11[7];
    v11[7] = v10;

    v13 = [*(a1[4] + 7) assistantRootViewController];
    [v13 setSiriPresentationViewController:a1[5]];

    v14 = [[SBAssistantGestureManager alloc] initWithAssistantWindow:*(a1[4] + 7) gestureConfiguration:*(a1[4] + 15) context:*(a1[4] + 13)];
    v15 = a1[4];
    v16 = v15[16];
    v15[16] = v14;

    [*(a1[4] + 16) setDelegate:?];
    v17 = [a1[4] assistantRootViewController];
    v18 = [a1[4] context];
    v19 = [v18 controlCenterController];

    v20 = [a1[4] context];
    v21 = [v20 lockScreenEnvironment];
    v22 = [v21 rootViewController];

    v23 = [a1[4] context];
    v74 = [v23 wallpaperController];

    v77 = v19;
    v76 = [v19 isPresented];
    v24 = [a1[4] context];
    v25 = [v24 homeScreenController];
    v75 = [v25 areAnyIconViewContextMenusShowing];

    v26 = [a1[4] context];
    v27 = [v26 lockScreenManager];
    v71 = v22;
    if ([v27 isUILocked])
    {
      v28 = [a1[4] context];
      [v28 transientOverlayPresenter];
      v30 = v29 = v22;
      v31 = [v30 hasActivePresentation];

      v32 = (v29 != 0) & ~v31;
    }

    else
    {

      v32 = 0;
    }

    v33 = [a1[5] view];
    [a1[6] duration];
    v35 = fabs(v34) >= 2.22044605e-16;
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke_86;
    v96[3] = &unk_2783B5F48;
    v97 = v4;
    v36 = a1[7];
    v37 = a1[4];
    v98 = v36;
    v99 = v37;
    v103 = v35;
    v38 = v17;
    v100 = v38;
    v39 = v33;
    v101 = v39;
    v102 = a1[5];
    v40 = MEMORY[0x223D6F7F0](v96);
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke_2;
    v89[3] = &unk_2783AB0C0;
    v90 = a1[5];
    v41 = v38;
    v42 = a1[4];
    v70 = v41;
    v91 = v41;
    v92 = v42;
    v95 = v35;
    v94 = a1[8];
    v69 = v7;
    v93 = v69;
    v43 = MEMORY[0x223D6F7F0](v89);
    v44 = dispatch_group_create();
    v73 = v43;
    v45 = MEMORY[0x223D6F7F0](v43);
    UIKeyboardForceOrderOutAutomaticAnimated();
    v72 = v4;
    if (((v76 | v75) & 1) == 0)
    {
      [v77 dismissAnimated:1];
      if (v32)
      {
        if (SBScreenIsBlanked())
        {
          [MEMORY[0x277CD9FF0] begin];
          v46 = [v74 requireWallpaperWithReason:@"AssistantSession"];
          [MEMORY[0x277CD9FF0] commit];
          [MEMORY[0x277CD9FF0] flush];
        }

        else
        {
          v46 = [v74 requireWallpaperWithReason:@"AssistantSession"];
        }

        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke_3;
        v86[3] = &unk_2783A9878;
        v88 = v43;
        v47 = v46;
        v87 = v47;
        v48 = MEMORY[0x223D6F7F0](v86);

        v49 = a1[7];
        if (!v49 || [v49 wakeScreen])
        {
          v50 = [a1[4] context];
          [v50 lockScreenManager];
          v51 = v68 = v48;
          v104 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
          v52 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v105 = v52;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
          [v51 unlockUIFromSource:12 withOptions:v53];

          v48 = v68;
        }

        v54 = [a1[4] context];
        v55 = [v54 lockScreenManager];
        [v55 setPasscodeVisible:0 animated:1];

        v45 = v48;
      }
    }

    v40[2](v40);
    v56 = [a1[4] context];
    v57 = [v56 homeScreenController];
    v58 = [v57 iconManager];

    if (((v76 | v75) & 1) != 0 || [v58 areAnyIconShareSheetsShowing])
    {
      [v39 setAlpha:0.0];
      if (v76)
      {
        dispatch_group_enter(v44);
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke_4;
        v84[3] = &unk_2783A8C18;
        v85 = v44;
        [v77 dismissAnimated:1 completion:v84];
      }

      else if (v75)
      {
        v59 = [a1[4] context];
        v60 = [v59 homeScreenController];
        [v60 dismissAppIconForceTouchControllers:0];
      }

      else if ([v58 areAnyIconShareSheetsShowing])
      {
        [v58 dismissIconShareSheets];
      }
    }

    else
    {
      [v39 setAlpha:1.0];
    }

    dispatch_group_enter(v44);
    v61 = MEMORY[0x277CF0D38];
    v62 = a1[6];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke_5;
    v82[3] = &unk_2783A8C18;
    v83 = v39;
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke_6;
    v80[3] = &unk_2783A9398;
    v63 = v44;
    v81 = v63;
    v64 = v39;
    [v61 animateWithFactory:v62 actions:v82 completion:v80];
    dispatch_group_enter(v63);
    v66 = a1[5];
    v65 = a1[6];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke_7;
    v78[3] = &unk_2783A9398;
    v79 = v63;
    v67 = v63;
    [v66 animatedAppearanceWithFactory:v65 completion:v78];
    dispatch_group_notify(v67, MEMORY[0x277D85CD0], v45);

    v4 = v72;
  }
}

void __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke_86(uint64_t a1)
{
  v17 = [*(a1 + 32) mutableCopy];
  [v17 setSiriPresentationOptions:*(a1 + 40)];
  [v17 setAssistantPresented:1];
  [*(a1 + 48) setPresentationContext:v17];
  [*(a1 + 48) _siriPresentationViewControllerWillAppear:*(a1 + 80)];
  v2 = [*(a1 + 56) clippingView];
  v3 = [*(a1 + 56) contentView];
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 184));
  v5 = [WeakRetained screen];
  [v5 _referenceBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [*(a1 + 48) assistantWindow];
  v15 = [v14 interfaceOrientation] - 3;

  if (v15 >= 2)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  if (v15 >= 2)
  {
    v11 = v13;
  }

  [v2 setFrame:{v7, v9, v16, v11}];
  [v3 setFrame:{v7, v9, v16, v11}];
  [*(a1 + 64) setFrame:{v7, v9, v16, v11}];
  [*(a1 + 72) beginAppearanceTransition:1 animated:*(a1 + 80)];
  [*(a1 + 56) addChildViewController:*(a1 + 72)];
  [v3 addSubview:*(a1 + 64)];
  [*(a1 + 48) _setStatusBarHidden:0 animated:0];
}

uint64_t __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) requestStatusBarVisible:1 animated:0 completion:0];
  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  [*(a1 + 32) endAppearanceTransition];
  [*(a1 + 48) _siriPresentationViewControllerDidAppear:*(a1 + 72)];
  (*(*(a1 + 64) + 16))();
  v2 = *(a1 + 56);

  return [v2 relinquish];
}

uint64_t __116__SBAssistantSession_presentSiriPresentationViewController_withAnimationFactory_siriPresentationOptions_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)dismissSiriPresentationViewControllerWithAnimationFactory:(id)factory siriDismissalOptions:(id)options completion:(id)completion
{
  factoryCopy = factory;
  optionsCopy = options;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __112__SBAssistantSession_dismissSiriPresentationViewControllerWithAnimationFactory_siriDismissalOptions_completion___block_invoke;
  v18[3] = &unk_2783AA4F8;
  v21 = completionCopy;
  v22 = a2;
  v18[4] = self;
  v19 = factoryCopy;
  v20 = optionsCopy;
  v12 = completionCopy;
  v13 = optionsCopy;
  v14 = factoryCopy;
  v15 = MEMORY[0x223D6F7F0](v18);
  v16 = [MEMORY[0x277CF0C30] eventWithName:@"Siri Content Dismissal" handler:v15];
  operationQueue = [(SBAssistantSession *)self operationQueue];
  [operationQueue executeOrInsertEvent:v16 atPosition:1];
}

uint64_t __112__SBAssistantSession_dismissSiriPresentationViewControllerWithAnimationFactory_siriDismissalOptions_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) _operationQueue_dismissPresentables:1 withAnimationFactory:*(a1 + 40) siriDismissalOptions:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)presentSiriEffectsViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__SBAssistantSession_presentSiriEffectsViewController_completion___block_invoke;
  v13[3] = &unk_2783B1320;
  v14 = controllerCopy;
  v15 = completionCopy;
  v13[4] = self;
  v8 = controllerCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x223D6F7F0](v13);
  v11 = [MEMORY[0x277CF0C30] eventWithName:@"Siri Effects Presentation" handler:v10];
  operationQueue = [(SBAssistantSession *)self operationQueue];
  [operationQueue executeOrInsertEvent:v11 atPosition:1];
}

void __66__SBAssistantSession_presentSiriEffectsViewController_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContext];
  if ([v2 isAssistantAccessoryPresented])
  {
    v3 = SBLogSiri();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Siri effects presentation request received while already presented - ignoring", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [v2 mutableCopy];
    [v4 setAssistantAccessoryPresented:1];
    [*(a1 + 32) setPresentationContext:v4];
    objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
    v5 = [SBAssistantAccessoryWindow alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
    v7 = [(SBWindow *)v5 initWithWindowScene:WeakRetained rootViewController:*(a1 + 40) role:@"SBTraitsParticipantRoleAssistantAccessory" debugName:@"Siri Effects"];

    [(SBWindow *)v7 setHidden:0];
    [(SBAssistantAccessoryWindow *)v7 layoutIfNeeded];
    v8 = [*(a1 + 32) context];
    v9 = [v8 windowHidingManager];
    [v9 setAlpha:v7 forWindow:1.0];

    objc_storeStrong((*(a1 + 32) + 72), v7);
    objc_initWeak(buf, *(a1 + 32));
    v10 = MEMORY[0x277CF0BD0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__SBAssistantSession_presentSiriEffectsViewController_completion___block_invoke_104;
    v14[3] = &unk_2783AD688;
    objc_copyWeak(&v15, buf);
    v11 = [v10 assertionWithIdentifier:@"Elevated Siri Effects" stateDidChangeHandler:v14];
    v12 = *(a1 + 32);
    v13 = *(v12 + 88);
    *(v12 + 88) = v11;

    (*(*(a1 + 48) + 16))();
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void __66__SBAssistantSession_presentSiriEffectsViewController_completion___block_invoke_104(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAssistantAccessoryWindowWindowLevel];
}

- (void)dismissSiriEffectsViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SBAssistantSession_dismissSiriEffectsViewControllerWithCompletion___block_invoke;
  v10[3] = &unk_2783AB990;
  v11 = completionCopy;
  v12 = a2;
  v10[4] = self;
  v6 = completionCopy;
  v7 = MEMORY[0x223D6F7F0](v10);
  v8 = [MEMORY[0x277CF0C30] eventWithName:@"Siri Effects Dismissal" handler:v7];
  operationQueue = [(SBAssistantSession *)self operationQueue];
  [operationQueue executeOrInsertEvent:v8 atPosition:1];
}

uint64_t __69__SBAssistantSession_dismissSiriEffectsViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) _operationQueue_dismissPresentables:2 withAnimationFactory:0 siriDismissalOptions:0 completion:*(a1 + 40)];
}

- (id)acquireElevatedSiriEffectsViewControllerAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  elevatedSiriEffectsViewControllerAssertion = [(SBAssistantSession *)self elevatedSiriEffectsViewControllerAssertion];
  v6 = [elevatedSiriEffectsViewControllerAssertion acquireForReason:reasonCopy];

  return v6;
}

- (void)endWithAnimationFactory:(id)factory siriDismissalOptions:(id)options completion:(id)completion
{
  factoryCopy = factory;
  optionsCopy = options;
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SBAssistantSession_endWithAnimationFactory_siriDismissalOptions_completion___block_invoke;
  v17[3] = &unk_2783AA4F8;
  v20 = completionCopy;
  v21 = a2;
  v17[4] = self;
  v18 = factoryCopy;
  v19 = optionsCopy;
  v12 = completionCopy;
  v13 = optionsCopy;
  v14 = factoryCopy;
  v15 = MEMORY[0x223D6F7F0](v17);
  v16 = [MEMORY[0x277CF0C30] eventWithName:@"end Siri Session" handler:v15];
  [(BSEventQueue *)self->_operationQueue executeOrInsertEvent:v16 atPosition:1];
}

uint64_t __78__SBAssistantSession_endWithAnimationFactory_siriDismissalOptions_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) _operationQueue_dismissPresentables:3 withAnimationFactory:*(a1 + 40) siriDismissalOptions:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)_operationQueue_dismissPresentables:(unint64_t)presentables withAnimationFactory:(id)factory siriDismissalOptions:(id)options completion:(id)completion
{
  presentablesCopy = presentables;
  factoryCopy = factory;
  optionsCopy = options;
  completionCopy = completion;
  presentationContext = [(SBAssistantSession *)self presentationContext];
  v14 = presentationContext;
  if (presentablesCopy)
  {
    isAssistantPresented = [presentationContext isAssistantPresented];
    if ((presentablesCopy & 2) != 0)
    {
LABEL_3:
      isAssistantAccessoryPresented = [v14 isAssistantAccessoryPresented];
      if (isAssistantPresented)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    isAssistantPresented = 0;
    if ((presentablesCopy & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  isAssistantAccessoryPresented = 0;
  if (isAssistantPresented)
  {
LABEL_11:
    operationQueue = [(SBAssistantSession *)self operationQueue];
    v30 = [operationQueue acquireLockForReason:@"Siri Dismissal"];

    v19 = self->_siriPresentationViewController;
    [factoryCopy duration];
    v21 = factoryCopy;
    v22 = optionsCopy;
    v23 = fabs(v20) >= 2.22044605e-16;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __111__SBAssistantSession__operationQueue_dismissPresentables_withAnimationFactory_siriDismissalOptions_completion___block_invoke;
    v42[3] = &unk_2783B6AE8;
    v46 = isAssistantPresented;
    v47 = isAssistantAccessoryPresented;
    v43 = v14;
    selfCopy = self;
    v48 = v23;
    v24 = v19;
    v45 = v24;
    v25 = MEMORY[0x223D6F7F0](v42);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __111__SBAssistantSession__operationQueue_dismissPresentables_withAnimationFactory_siriDismissalOptions_completion___block_invoke_2;
    v33[3] = &unk_2783B6B10;
    v39 = isAssistantPresented;
    v26 = v24;
    v34 = v26;
    selfCopy2 = self;
    v40 = v23;
    optionsCopy = v22;
    factoryCopy = v21;
    v36 = optionsCopy;
    v41 = isAssistantAccessoryPresented;
    v38 = completionCopy;
    v27 = v30;
    v37 = v27;
    v28 = MEMORY[0x223D6F7F0](v33);
    v29 = dispatch_group_create();
    v25[2](v25);
    if (isAssistantPresented)
    {
      dispatch_group_enter(v29);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __111__SBAssistantSession__operationQueue_dismissPresentables_withAnimationFactory_siriDismissalOptions_completion___block_invoke_3;
      v31[3] = &unk_2783A9398;
      v32 = v29;
      [(SiriPresentationSpringBoardMainScreenViewController *)v26 animatedDisappearanceWithFactory:factoryCopy completion:v31];
    }

    dispatch_group_notify(v29, MEMORY[0x277D85CD0], v28);

    goto LABEL_14;
  }

LABEL_7:
  if (isAssistantAccessoryPresented)
  {
    goto LABEL_11;
  }

  v17 = SBLogSiri();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Siri dismissal request received with nothing to dismiss - ignoring", buf, 2u);
  }

  completionCopy[2](completionCopy);
LABEL_14:
}

void __111__SBAssistantSession__operationQueue_dismissPresentables_withAnimationFactory_siriDismissalOptions_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  if (*(a1 + 56) == 1)
  {
    [v2 setSiriPresentationOptions:0];
    [v2 setAssistantPresented:0];
  }

  if (*(a1 + 57) == 1)
  {
    [v2 setAssistantAccessoryPresented:0];
  }

  [*(a1 + 40) setPresentationContext:v2];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 40) _siriPresentationViewControllerWillDisappear:*(a1 + 58)];
    [*(a1 + 48) beginAppearanceTransition:0 animated:*(a1 + 58)];
    [*(a1 + 48) willMoveToParentViewController:0];
    [*(a1 + 40) _setStatusBarHidden:1 animated:0];
  }
}

uint64_t __111__SBAssistantSession__operationQueue_dismissPresentables_withAnimationFactory_siriDismissalOptions_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = [*(a1 + 32) view];
    [v2 removeFromSuperview];

    [*(a1 + 32) removeFromParentViewController];
    [*(a1 + 32) endAppearanceTransition];
    [*(a1 + 40) _siriPresentationViewControllerDidDisappear:*(a1 + 73)];
    v3 = *(a1 + 32);
    if (*(a1 + 48))
    {
      [v3 dismissWithOptions:?];
    }

    else
    {
      [v3 dismiss];
    }

    [*(*(a1 + 40) + 56) setHidden:1];
    v4 = *(a1 + 40);
    v5 = *(v4 + 56);
    *(v4 + 56) = 0;

    v6 = *(a1 + 40);
    v7 = *(v6 + 64);
    *(v6 + 64) = 0;
  }

  if (*(a1 + 74) == 1)
  {
    [*(*(a1 + 40) + 72) setHidden:1];
    [*(*(a1 + 40) + 72) setRootViewController:0];
    v8 = *(a1 + 40);
    v9 = *(v8 + 72);
    *(v8 + 72) = 0;

    v10 = *(a1 + 40);
    v11 = *(v10 + 80);
    *(v10 + 80) = 0;

    [*(*(a1 + 40) + 88) invalidate];
    v12 = *(a1 + 40);
    v13 = *(v12 + 88);
    *(v12 + 88) = 0;
  }

  (*(*(a1 + 64) + 16))();
  v14 = *(a1 + 56);

  return [v14 relinquish];
}

- (void)_siriPresentationViewControllerWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v26 = *MEMORY[0x277D85DE8];
  v5 = SBLogSiri();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v24 = 138543362;
    v25 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v24, 0xCu);
  }

  [(SBAssistantSession *)self _notifySiriPresentationViewControllerWillAppear];
  [(SBAssistantSession *)self setVisible:1];
  if (!self->_traitsOrientationPolicySpecifier)
  {
    _newTraitsOrientationPolicySpecifier = [(SBAssistantSession *)self _newTraitsOrientationPolicySpecifier];
    traitsOrientationPolicySpecifier = self->_traitsOrientationPolicySpecifier;
    self->_traitsOrientationPolicySpecifier = _newTraitsOrientationPolicySpecifier;
  }

  assistantWindow = [(SBAssistantSession *)self assistantWindow];
  context = [(SBAssistantSession *)self context];
  windowHidingManager = [context windowHidingManager];
  [windowHidingManager setAlpha:assistantWindow forWindow:1.0];

  [assistantWindow setHidden:0];
  [assistantWindow makeKeyAndVisible];
  [(SBAssistantSession *)self _setDisplayLayoutElementActive:1];
  [(SBAssistantSession *)self _updateOrientationLock];
  siriPresentationViewController = [(SBAssistantSession *)self siriPresentationViewController];
  [siriPresentationViewController addObserver:self forKeyPath:@"supportedInterfaceOrientations" options:0 context:0];

  [(SBAssistantSession *)self _toggleModalAlertHidingAssertion:1];
  context2 = [(SBAssistantSession *)self context];
  alertItemsController = [context2 alertItemsController];
  [alertItemsController setForceAlertsToPend:1 forReason:@"AssistantSession"];

  context3 = [(SBAssistantSession *)self context];
  alertItemsController2 = [context3 alertItemsController];
  [alertItemsController2 moveActiveUnlockedAlertsToPendingWithAnimation:appearCopy completion:0];

  [(SBAssistantSession *)self setPendingAlerts:1];
  context4 = [(SBAssistantSession *)self context];
  coverSheetViewController = [context4 coverSheetViewController];
  [coverSheetViewController registerExternalBehaviorProvider:self];

  [(SBAssistantSession *)self setProvidingCoverSheetBehavior:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  context5 = [(SBAssistantSession *)self context];
  floatingDockController = [context5 floatingDockController];
  [defaultCenter addObserver:self selector:sel__dockFrameDidChange_ name:@"SBFloatingDockControllerFrameDidChangeNotification" object:floatingDockController];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  assistantRootViewController = [(SBAssistantSession *)self assistantRootViewController];
  [defaultCenter2 addObserver:self selector:sel__updateOrbLocation_ name:@"SBAssistantCanRepositionOrbIfNecessary" object:assistantRootViewController];

  [(SBAssistantSession *)self _updateOrbLocation:0];
}

- (void)_siriPresentationViewControllerDidAppear:(BOOL)appear
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = SBLogSiri();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = _SBFLoggingMethodProem();
    v15 = 138543362;
    v16 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v15, 0xCu);
  }

  context = [(SBAssistantSession *)self context];
  alertItemsController = [context alertItemsController];
  [alertItemsController setForceAlertsToPend:0 forReason:@"AssistantSession"];

  context2 = [(SBAssistantSession *)self context];
  orientationAccomodation = [context2 orientationAccomodation];
  siriPresentationViewController = [(SBAssistantSession *)self siriPresentationViewController];
  [orientationAccomodation noteInterfaceOrientationChanged:objc_msgSend(siriPresentationViewController force:"interfaceOrientation") logMessage:{0, @"Updating interface orientation to match Siri's activation orientation"}];

  [(SBAssistantSession *)self _notifySiriPresentationViewControllerDidAppear];
  gestureManager = [(SBAssistantSession *)self gestureManager];
  context3 = [(SBAssistantSession *)self context];
  transientOverlayPresenter = [context3 transientOverlayPresenter];
  topmostPresentedViewController = [transientOverlayPresenter topmostPresentedViewController];
  [gestureManager setTopmostTransientViewControllerAtPresentation:topmostPresentedViewController];
}

- (void)_siriPresentationViewControllerWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v20 = *MEMORY[0x277D85DE8];
  v5 = SBLogSiri();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v18, 0xCu);
  }

  [(SBAssistantSession *)self setVisible:0];
  if ([(SBAssistantSession *)self isHidingOtherWindows])
  {
    context = [(SBAssistantSession *)self context];
    windowHidingManager = [context windowHidingManager];
    [windowHidingManager stopHidingWindowsForContext:self];

    suspendWallpaperAnimationAssertion = [(SBAssistantSession *)self suspendWallpaperAnimationAssertion];
    [suspendWallpaperAnimationAssertion invalidate];

    [(SBAssistantSession *)self setSuspendWallpaperAnimationAssertion:0];
    [(SBAssistantSession *)self setHidingOtherWindows:0];
  }

  [(SBAssistantSession *)self _notifySiriPresentationViewControllerWillDisappear];
  [(SBAssistantSession *)self _restoreOrientation];
  resignActiveAssertion = [(SBAssistantSession *)self resignActiveAssertion];
  isAcquired = [resignActiveAssertion isAcquired];

  if (isAcquired)
  {
    resignActiveAssertion2 = [(SBAssistantSession *)self resignActiveAssertion];
    [resignActiveAssertion2 relinquish];
  }

  context2 = [(SBAssistantSession *)self context];
  alertItemsController = [context2 alertItemsController];
  [alertItemsController setForceAlertsToPend:1 forReason:@"AssistantSession"];

  context3 = [(SBAssistantSession *)self context];
  alertItemsController2 = [context3 alertItemsController];
  [alertItemsController2 moveActiveUnlockedAlertsToPendingWithAnimation:disappearCopy completion:0];

  siriPresentationViewController = [(SBAssistantSession *)self siriPresentationViewController];
  [siriPresentationViewController removeObserver:self forKeyPath:@"supportedInterfaceOrientations"];
}

- (void)_siriPresentationViewControllerDidDisappear:(BOOL)disappear
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = SBLogSiri();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = _SBFLoggingMethodProem();
    v17 = 138543362;
    v18 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v17, 0xCu);
  }

  assistantWindow = [(SBAssistantSession *)self assistantWindow];
  rootViewController = [assistantWindow rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    rootViewController2 = [assistantWindow rootViewController];
    [rootViewController2 dismissViewControllerAnimated:0 completion:0];
  }

  [assistantWindow resignAsKeyWindow];
  [assistantWindow setHidden:1];
  deferOrientationUpdatesAssertion = [(SBAssistantSession *)self deferOrientationUpdatesAssertion];
  [deferOrientationUpdatesAssertion invalidate];

  [(SBAssistantSession *)self setDeferOrientationUpdatesAssertion:0];
  [(BSInvalidatable *)self->_traitsOrientationPolicySpecifier invalidate];
  traitsOrientationPolicySpecifier = self->_traitsOrientationPolicySpecifier;
  self->_traitsOrientationPolicySpecifier = 0;

  if ([(SBAssistantSession *)self isPendingAlerts])
  {
    context = [(SBAssistantSession *)self context];
    alertItemsController = [context alertItemsController];
    [alertItemsController setForceAlertsToPend:0 forReason:@"AssistantSession"];

    [(SBAssistantSession *)self setPendingAlerts:0];
  }

  [(SBAssistantSession *)self _toggleModalAlertHidingAssertion:0];
  [(SBAssistantSession *)self _setDisplayLayoutElementActive:0];
  if ([(SBAssistantSession *)self isProvidingCoverSheetBehavior])
  {
    context2 = [(SBAssistantSession *)self context];
    coverSheetViewController = [context2 coverSheetViewController];
    [coverSheetViewController unregisterExternalBehaviorProvider:self];

    [(SBAssistantSession *)self setProvidingCoverSheetBehavior:0];
  }

  [(SBHardwareButtonLaunchZoomUpAnimationToken *)self->_externalDropletZoomUpToken invalidate];
  externalDropletZoomUpToken = self->_externalDropletZoomUpToken;
  self->_externalDropletZoomUpToken = 0;

  [(SBAssistantSession *)self _notifySiriPresentationViewControllerDidDisappear];
}

- (void)_didChangePresentationContext
{
  v40 = *MEMORY[0x277D85DE8];
  presentationContext = [(SBAssistantSession *)self presentationContext];
  hasVisionModality = [presentationContext hasVisionModality];

  if (hasVisionModality)
  {
    windowScene = [(SBAssistantSession *)self windowScene];
    switcherController = [windowScene switcherController];
    [switcherController dismissMainAndFloatingSwitchersWithSource:8 animated:1];
  }

  presentationContext2 = [(SBAssistantSession *)self presentationContext];
  siriPresentationOptions = [presentationContext2 siriPresentationOptions];
  hideOtherWindowsDuringAppearance = [siriPresentationOptions hideOtherWindowsDuringAppearance];

  if (hideOtherWindowsDuringAppearance)
  {
    [(SBAssistantSession *)self setHidingOtherWindows:1];
    context = [(SBAssistantSession *)self context];
    windowHidingManager = [context windowHidingManager];
    [windowHidingManager startHidingWindowsExclusivelyFromLevel:self toLevel:@"AssistantSession" forContext:*MEMORY[0x277D772B0] + -3.0 + -1.0 reason:*MEMORY[0x277D76EE8] + 25.0];

    suspendWallpaperAnimationAssertion = [(SBAssistantSession *)self suspendWallpaperAnimationAssertion];
    [suspendWallpaperAnimationAssertion invalidate];

    context2 = [(SBAssistantSession *)self context];
    wallpaperController = [context2 wallpaperController];
    v15 = [wallpaperController suspendWallpaperAnimationForReason:@"AssistantSession"];
    [(SBAssistantSession *)self setSuspendWallpaperAnimationAssertion:v15];
  }

  else
  {
    [(SBAssistantSession *)self setHidingOtherWindows:0];
    context3 = [(SBAssistantSession *)self context];
    windowHidingManager2 = [context3 windowHidingManager];
    [windowHidingManager2 stopHidingWindowsForContext:self];

    suspendWallpaperAnimationAssertion2 = [(SBAssistantSession *)self suspendWallpaperAnimationAssertion];
    [suspendWallpaperAnimationAssertion2 invalidate];

    [(SBAssistantSession *)self setSuspendWallpaperAnimationAssertion:0];
  }

  presentationContext3 = [(SBAssistantSession *)self presentationContext];
  siriPresentationOptions2 = [presentationContext3 siriPresentationOptions];
  shouldDeactivateScenesBelow = [siriPresentationOptions2 shouldDeactivateScenesBelow];

  if (shouldDeactivateScenesBelow)
  {
    resignActiveAssertion = [(SBAssistantSession *)self resignActiveAssertion];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];
    [resignActiveAssertion sb_acquireForDisplayIdentity:_fbsDisplayIdentity];
  }

  presentationContext4 = [(SBAssistantSession *)self presentationContext];
  siriPresentationOptions3 = [presentationContext4 siriPresentationOptions];
  launchActions = [siriPresentationOptions3 launchActions];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = launchActions;
  v29 = [v28 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v35 + 1) + 8 * i);
        if ([v33 isValid])
        {
          if ([v33 canSendResponse] && objc_msgSend(v33, "isAssistantVisionIntelligenceActivationRequestAction"))
          {
            v34 = +[(BSActionResponse *)SBAssistantVisionIntelligenceActivationRequestResponse];
            [v33 sendResponse:v34];
          }

          [v33 invalidate];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v30);
  }

  [(SBAssistantSession *)self _notifyDidChangePresentationContext];
}

- (void)_notifySiriPresentationViewControllerWillAppear
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  delegate = [(SBAssistantSession *)self delegate];
  [delegate assistantSession:self viewWillAppearInWindowScene:WeakRetained];

  gestureManager = [(SBAssistantSession *)self gestureManager];
  [gestureManager assistantSession:self viewWillAppearInWindowScene:WeakRetained];
}

- (void)_notifySiriPresentationViewControllerDidAppear
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  delegate = [(SBAssistantSession *)self delegate];
  [delegate assistantSession:self viewDidAppearInWindowScene:WeakRetained];

  gestureManager = [(SBAssistantSession *)self gestureManager];
  [gestureManager assistantSession:self viewDidAppearInWindowScene:WeakRetained];
}

- (void)_notifySiriPresentationViewControllerWillDisappear
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  delegate = [(SBAssistantSession *)self delegate];
  [delegate assistantSession:self viewWillDisappearInWindowScene:WeakRetained];

  gestureManager = [(SBAssistantSession *)self gestureManager];
  [gestureManager assistantSession:self viewWillDisappearInWindowScene:WeakRetained];
}

- (void)_notifySiriPresentationViewControllerDidDisappear
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  delegate = [(SBAssistantSession *)self delegate];
  [delegate assistantSession:self viewDidDisappearInWindowScene:WeakRetained];

  gestureManager = [(SBAssistantSession *)self gestureManager];
  [gestureManager assistantSession:self viewDidDisappearInWindowScene:WeakRetained];
}

- (void)_notifyDidChangePresentationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  delegate = [(SBAssistantSession *)self delegate];
  [delegate assistantSession:self didChangePresentationInWindowScene:WeakRetained];

  gestureManager = [(SBAssistantSession *)self gestureManager];
  [gestureManager assistantSession:self didChangePresentationInWindowScene:WeakRetained];
}

- (void)_setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (animated)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__SBAssistantSession__setStatusBarHidden_animated___block_invoke;
    v6[3] = &unk_2783A9F58;
    v6[4] = self;
    hiddenCopy = hidden;
    [MEMORY[0x277D75D18] animateWithDuration:4 delay:v6 options:0 animations:0.35 completion:0.0];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __51__SBAssistantSession__setStatusBarHidden_animated___block_invoke_2;
    v4[3] = &unk_2783A9F58;
    v4[4] = self;
    hiddenCopy2 = hidden;
    [MEMORY[0x277D75D18] performWithoutAnimation:v4];
  }
}

void __51__SBAssistantSession__setStatusBarHidden_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) siriPresentationViewController];
  [v2 requestStatusBarVisible:(*(a1 + 40) & 1) == 0 animated:0 completion:0];
}

void __51__SBAssistantSession__setStatusBarHidden_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) siriPresentationViewController];
  [v2 requestStatusBarVisible:(*(a1 + 40) & 1) == 0 animated:0 completion:0];
}

- (void)_toggleModalAlertHidingAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  hideApplicationModalAlertsAssertion = [(SBAssistantSession *)self hideApplicationModalAlertsAssertion];

  if (hideApplicationModalAlertsAssertion)
  {
    hideApplicationModalAlertsAssertion2 = [(SBAssistantSession *)self hideApplicationModalAlertsAssertion];
    [hideApplicationModalAlertsAssertion2 invalidate];

    [(SBAssistantSession *)self setHideApplicationModalAlertsAssertion:0];
  }

  if (assertionCopy)
  {
    context = [(SBAssistantSession *)self context];
    modalAlertPresentationCoordinator = [context modalAlertPresentationCoordinator];
    v8 = [modalAlertPresentationCoordinator hideApplicationModalAlertsForReason:@"AssistantSession"];
    [(SBAssistantSession *)self setHideApplicationModalAlertsAssertion:v8];
  }
}

- (void)_updateOrbLocation:(id)location
{
  context = [(SBAssistantSession *)self context];
  floatingDockController = [context floatingDockController];
  [floatingDockController floatingDockScreenFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(SBAssistantSession *)self _updateDockViewFrame:v7, v9, v11, v13];
}

- (void)_dockFrameDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"SBFloatingDockControllerFrame"];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(SBAssistantSession *)self _updateDockViewFrame:v7, v9, v11, v13];
}

- (void)_updateDockViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  screen = [WeakRetained screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];

  siriPresentationViewController = [(SBAssistantSession *)self siriPresentationViewController];
  view = [siriPresentationViewController view];
  coordinateSpace = [view coordinateSpace];

  [fixedCoordinateSpace convertRect:coordinateSpace toCoordinateSpace:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  context = [(SBAssistantSession *)self context];
  coverSheetPresentationManager = [context coverSheetPresentationManager];
  isPresented = [coverSheetPresentationManager isPresented];

  siriPresentationViewController2 = [(SBAssistantSession *)self siriPresentationViewController];
  v25 = siriPresentationViewController2;
  if (isPresented)
  {
    v26 = *MEMORY[0x277CBF3A0];
    v27 = *(MEMORY[0x277CBF3A0] + 8);
    v28 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v26 = v14;
    v27 = v16;
    v28 = v18;
    v29 = v20;
  }

  [siriPresentationViewController2 setDockFrame:{v26, v27, v28, v29}];
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

    v9 = objc_alloc(MEMORY[0x277D66A50]);
    v14 = [v9 initWithIdentifier:*MEMORY[0x277D0ABC0]];
    [v14 setLevel:(*MEMORY[0x277D76EE8] + 25.0)];
    [v14 setFillsDisplayBounds:1];
    [v14 setLayoutRole:4];
    context = [(SBAssistantSession *)self context];
    displayLayoutPublisher = [context displayLayoutPublisher];
    v12 = [displayLayoutPublisher addElement:v14];
    v13 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = v12;
  }

  else
  {
    if (!displayLayoutAssertion && !self->_hostedLayoutElementAssertion)
    {
      return;
    }

    context2 = [(SBAssistantSession *)self context];
    displayLayoutPublisher2 = [context2 displayLayoutPublisher];
    v14 = [displayLayoutPublisher2 transitionAssertionWithReason:@"Siri Dismissal"];

    [(BSInvalidatable *)self->_displayLayoutAssertion invalidate];
    v7 = self->_displayLayoutAssertion;
    self->_displayLayoutAssertion = 0;

    [(BSInvalidatable *)self->_hostedLayoutElementAssertion invalidate];
    hostedLayoutElementAssertion = self->_hostedLayoutElementAssertion;
    self->_hostedLayoutElementAssertion = 0;

    [v14 invalidate];
  }
}

- (id)_newTraitsOrientationPolicySpecifier
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  traitsPipelineManager = [WeakRetained traitsPipelineManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SBAssistantSession__newTraitsOrientationPolicySpecifier__block_invoke;
  v7[3] = &unk_2783B0DE8;
  objc_copyWeak(&v8, &location);
  v5 = [traitsPipelineManager newBlockBasedOrientationPolicySpecifier:v7 forRole:@"SBTraitsParticipantRoleAssistant"];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
  return v5;
}

void __58__SBAssistantSession__newTraitsOrientationPolicySpecifier__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bs_firstObjectPassingTest:&__block_literal_global_169];
  if (v3)
  {
    v9 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained presentationContext];

    v6 = [v5 siriPresentationOptions];
    v7 = [v6 rotationStyle];

    if (v7 == 1)
    {
      [MEMORY[0x277D734D0] resolutionPolicyInfoDeviceOrientation];
    }

    else
    {
      [MEMORY[0x277D734D0] resolutionPolicyInfoOrientationBelow];
    }
    v8 = ;
    [v9 setOrientationResolutionPolicyInfo:v8];

    v3 = v9;
  }
}

uint64_t __58__SBAssistantSession__newTraitsOrientationPolicySpecifier__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 role];
  v3 = [v2 isEqualToString:@"SBTraitsParticipantRoleAssistant"];

  return v3;
}

- (void)_updateOrientationLock
{
  context = [(SBAssistantSession *)self context];
  lockScreenManager = [context lockScreenManager];
  if ([lockScreenManager isUILocked])
  {
    context2 = [(SBAssistantSession *)self context];
    coverSheetViewController = [context2 coverSheetViewController];
  }

  else
  {
    coverSheetViewController = [(SBAssistantSession *)self siriPresentationViewController];
  }

  if ([coverSheetViewController shouldAutorotate] && objc_msgSend(coverSheetViewController, "supportedInterfaceOrientations") != 2)
  {
    deferOrientationUpdatesAssertion = [(SBAssistantSession *)self deferOrientationUpdatesAssertion];
    [deferOrientationUpdatesAssertion invalidate];

    [(SBAssistantSession *)self setDeferOrientationUpdatesAssertion:0];
  }

  else
  {
    deferOrientationUpdatesAssertion2 = [(SBAssistantSession *)self deferOrientationUpdatesAssertion];
    [deferOrientationUpdatesAssertion2 invalidate];

    context3 = [(SBAssistantSession *)self context];
    orientationAccomodation = [context3 orientationAccomodation];
    v9 = [orientationAccomodation deviceOrientationUpdateDeferralAssertionWithReason:@"AssistantSession"];
    [(SBAssistantSession *)self setDeferOrientationUpdatesAssertion:v9];
  }
}

- (void)_restoreOrientation
{
  context = [(SBAssistantSession *)self context];
  orientationAccomodation = [context orientationAccomodation];
  homeScreenRotationStyle = [orientationAccomodation homeScreenRotationStyle];

  if (!homeScreenRotationStyle)
  {
    context2 = [(SBAssistantSession *)self context];
    orientationAccomodation2 = [context2 orientationAccomodation];
    [orientationAccomodation2 setStatusBarOrientation:1 forEmbeddedDisplayAnimated:0];
  }

  context3 = [(SBAssistantSession *)self context];
  lockScreenManager = [context3 lockScreenManager];
  isUILocked = [lockScreenManager isUILocked];

  context4 = [(SBAssistantSession *)self context];
  v12 = context4;
  if (isUILocked)
  {
    orientationAccomodation3 = [context4 orientationAccomodation];
    homeScreenRotationStyle2 = [orientationAccomodation3 homeScreenRotationStyle];

    if (homeScreenRotationStyle2)
    {
      return;
    }

    context5 = [(SBAssistantSession *)self context];
    orientationAccomodation4 = [context5 orientationAccomodation];
    context9 = orientationAccomodation4;
    v17 = @"AssistantController restore orientation (locked)";
  }

  else
  {
    switcherController = [context4 switcherController];
    layoutStatePrimaryElement = [switcherController layoutStatePrimaryElement];
    workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];

    context6 = [(SBAssistantSession *)self context];
    v24 = context6;
    if (sceneHandle)
    {
      switcherController2 = [context6 switcherController];
      layoutStatePrimaryElement2 = [switcherController2 layoutStatePrimaryElement];
      workspaceEntity2 = [layoutStatePrimaryElement2 workspaceEntity];
      applicationSceneEntity2 = [workspaceEntity2 applicationSceneEntity];
      context5 = [applicationSceneEntity2 sceneHandle];

      if (context5)
      {
        statusBarOrientation = [context5 statusBarOrientation];
      }

      else
      {
        statusBarOrientation = 1;
      }

      context7 = [(SBAssistantSession *)self context];
      orientationAccomodation5 = [context7 orientationAccomodation];
      homeScreenRotationStyle3 = [orientationAccomodation5 homeScreenRotationStyle];

      if (homeScreenRotationStyle3)
      {
        context8 = [(SBAssistantSession *)self context];
        orientationAccomodation6 = [context8 orientationAccomodation];
        [orientationAccomodation6 updateNativeOrientationWithOrientation:statusBarOrientation logMessage:{@"AssistantController restore orientation (not locked, has app)"}];
      }

      context9 = [(SBAssistantSession *)self context];
      orientationAccomodation7 = [context9 orientationAccomodation];
      [orientationAccomodation7 noteInterfaceOrientationChanged:statusBarOrientation force:1 logMessage:{@"AssistantController restore orientation (not locked, has app)"}];

      goto LABEL_17;
    }

    orientationAccomodation8 = [context6 orientationAccomodation];
    homeScreenRotationStyle4 = [orientationAccomodation8 homeScreenRotationStyle];

    if (homeScreenRotationStyle4)
    {
      return;
    }

    context5 = [(SBAssistantSession *)self context];
    orientationAccomodation4 = [context5 orientationAccomodation];
    context9 = orientationAccomodation4;
    v17 = @"AssistantController restore orientation (not locked, no app)";
  }

  [orientationAccomodation4 noteInterfaceOrientationChanged:1 force:1 logMessage:v17];
LABEL_17:
}

- (void)_updateAssistantAccessoryWindowWindowLevel
{
  elevatedSiriEffectsViewControllerAssertion = [(SBAssistantSession *)self elevatedSiriEffectsViewControllerAssertion];
  isActive = [elevatedSiriEffectsViewControllerAssertion isActive];

  v5 = -0.5;
  if (isActive)
  {
    v5 = 0.5;
  }

  v6 = *MEMORY[0x277D76EE8] + 25.0 + v5 - (*MEMORY[0x277D76EE8] + 25.0);
  assistantWindow = [(SBAssistantSession *)self assistantWindow];
  [assistantWindow windowLevel];
  v9 = v8;

  assistantAccessoryWindow = [(SBAssistantSession *)self assistantAccessoryWindow];
  [assistantAccessoryWindow setWindowLevel:v6 + v9];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"supportedInterfaceOrientations", object, change, context}])
  {

    [(SBAssistantSession *)self _updateOrientationLock];
  }
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (int64_t)participantState
{
  if ([(SBAssistantSession *)self isVisible])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (SBAssistantSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)siriStoppedHostingSceneWithIdentifier:(NSObject *)a3 bundleIdentifier:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _SBFLoggingMethodProem();
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ - assistant session requested scene hosting to stop but _hostedLayoutElementAssertion is already invalidated, ignoring", &v5, 0xCu);
}

@end
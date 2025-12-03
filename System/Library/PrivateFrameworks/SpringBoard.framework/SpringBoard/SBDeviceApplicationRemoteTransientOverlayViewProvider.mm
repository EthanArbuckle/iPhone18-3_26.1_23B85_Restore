@interface SBDeviceApplicationRemoteTransientOverlayViewProvider
- (BOOL)isPresentingOnBehalfOfApplication:(id)application;
- (BOOL)isPresentingOnBehalfOfSceneIdentityTokenString:(id)string;
- (BOOL)isPresentingOnBehalfOfScenePersistentIdentifier:(id)identifier;
- (BOOL)isPresentingTransientOverlay:(id)overlay;
- (BOOL)prefersStatusBarHidden;
- (BOOL)wantsResignActiveAssertion;
- (SBDeviceApplicationRemoteTransientOverlayViewProvider)initWithSceneHandle:(id)handle delegate:(id)delegate handlesSceneBackedRemoteTransientOverlaysOnly:(BOOL)only;
- (SBWindowScene)windowScene;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (int64_t)priority;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activateIfPossible;
- (void)_deactivateIfPossible;
- (void)_dismissPresentedTransientOverlaysForDeviceLock;
- (void)_dismissRemoteOverlayVC:(id)c;
- (void)_handleAppSwitcherWillPresent:(id)present;
- (void)_preventKeyboardFocusForPresentedRemoteViewControllerIfNeeded:(id)needed;
- (void)_redirectKeyboardFocusToPresentedRemoteViewController:(id)controller;
- (void)_stopPreventingKeyboardFocusForRemoteViewController:(id)controller;
- (void)_stopRedirectingKeyboardFocusToRemoteViewController:(id)controller;
- (void)configureForSecureDisplay:(BOOL)display;
- (void)dealloc;
- (void)dismissRemoteTransientOverlayViewController:(id)controller;
- (void)noteDisplayModeChange:(int64_t)change;
- (void)presentRemoteTransientOverlayViewController:(id)controller presentationRequest:(id)request;
- (void)transientOverlayViewControllerDidUpdateHIDEventDeferringDisabled:(id)disabled;
- (void)transientOverlayViewControllerNeedsSceneDeactivationUpdate:(id)update;
- (void)transientOverlayViewControllerNeedsStatusBarAppearanceUpdate:(id)update;
- (void)willDoBoundsPreservingRotationFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
@end

@implementation SBDeviceApplicationRemoteTransientOverlayViewProvider

- (void)_activateIfPossible
{
  if ([(NSMutableArray *)self->_activePresentationContexts count]== 1)
  {
    v3 = [[SBDeviceApplicationRemoteTransientOverlayContainerViewController alloc] initWithViewProvider:self];
    containerVC = self->_containerVC;
    self->_containerVC = v3;

    v5.receiver = self;
    v5.super_class = SBDeviceApplicationRemoteTransientOverlayViewProvider;
    [(SBDeviceApplicationSceneOverlayViewProvider *)&v5 _activateIfPossible];
  }
}

- (SBDeviceApplicationRemoteTransientOverlayViewProvider)initWithSceneHandle:(id)handle delegate:(id)delegate handlesSceneBackedRemoteTransientOverlaysOnly:(BOOL)only
{
  v11.receiver = self;
  v11.super_class = SBDeviceApplicationRemoteTransientOverlayViewProvider;
  v6 = [(SBDeviceApplicationSceneOverlayViewProvider *)&v11 initWithSceneHandle:handle delegate:delegate];
  v7 = v6;
  if (v6)
  {
    v6->_handlesSceneBackedRemoteTransientOverlaysOnly = only;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handleCoverSheetDidPresent_ name:@"SBCoverSheetDidPresentNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__handleAppSwitcherWillPresent_ name:@"SBUIAppSwitcherWillRevealNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[_SBActiveRemoteTransientOverlayViewProviderRegistry sharedInstance];
  [v3 unregisterViewProvider:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBCoverSheetDidPresentNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"SBUIAppSwitcherWillRevealNotification" object:0];

  v6.receiver = self;
  v6.super_class = SBDeviceApplicationRemoteTransientOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v6 dealloc];
}

- (BOOL)prefersStatusBarHidden
{
  lastObject = [(NSMutableArray *)self->_activePresentationContexts lastObject];
  remoteViewController = [lastObject remoteViewController];
  prefersStatusBarHidden = [remoteViewController prefersStatusBarHidden];

  return prefersStatusBarHidden;
}

- (int64_t)preferredStatusBarStyle
{
  lastObject = [(NSMutableArray *)self->_activePresentationContexts lastObject];
  remoteViewController = [lastObject remoteViewController];
  preferredStatusBarStyle = [remoteViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (void)configureForSecureDisplay:(BOOL)display
{
  if (display)
  {
    [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _dismissPresentedTransientOverlaysForDeviceLock];
  }
}

- (void)noteDisplayModeChange:(int64_t)change
{
  v5 = +[_SBActiveRemoteTransientOverlayViewProviderRegistry sharedInstance];
  v6 = v5;
  if (change == 4)
  {
    [v5 registerViewProvider:self];
  }

  else
  {
    [v5 unregisterViewProvider:self];
  }
}

- (int64_t)priority
{
  privacyPreflightController = [SBApp privacyPreflightController];
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  application = [sceneHandle application];
  info = [application info];
  applicationIdentity = [info applicationIdentity];
  v8 = [privacyPreflightController requiresPreflightForApplication:applicationIdentity];

  if (v8)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (BOOL)wantsResignActiveAssertion
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_activePresentationContexts;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        remoteViewController = [v7 remoteViewController];
        v9 = [remoteViewController isPresentedByBundleIdentifier:@"com.apple.PDUIApp"];

        if ((v9 & 1) == 0)
        {
          remoteViewController2 = [v7 remoteViewController];
          preferredSceneDeactivationReasonValue = [remoteViewController2 preferredSceneDeactivationReasonValue];

          if (preferredSceneDeactivationReasonValue)
          {
            continue;
          }
        }

        v12 = 0;
        goto LABEL_13;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_13:

  return v12;
}

- (void)willDoBoundsPreservingRotationFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self handlesSceneBackedRemoteTransientOverlaysOnly])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_activePresentationContexts;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          remoteViewController = [*(*(&v13 + 1) + 8 * v11) remoteViewController];
          [remoteViewController _doBoundsPreservingRotationFromInterfaceOrientation:orientation toInterfaceOrientation:interfaceOrientation];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)presentRemoteTransientOverlayViewController:(id)controller presentationRequest:(id)request
{
  controllerCopy = controller;
  requestCopy = request;
  if (!self->_activePresentationContexts)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activePresentationContexts = self->_activePresentationContexts;
    self->_activePresentationContexts = v7;
  }

  if (![(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self isPresentingTransientOverlay:controllerCopy])
  {
    presentationTarget = [requestCopy presentationTarget];
    v10 = objc_alloc_init(SBDeviceApplicationRemoteTransientOverlayPresentationContext);
    [(SBDeviceApplicationRemoteTransientOverlayPresentationContext *)v10 setRemoteViewController:controllerCopy];
    [(SBDeviceApplicationRemoteTransientOverlayPresentationContext *)v10 setPresentationTarget:presentationTarget];
    if ([requestCopy shouldStashPictureInPictureIfNeeded])
    {
      windowSceneManager = [SBApp windowSceneManager];
      sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
      v13 = [windowSceneManager windowSceneForSceneHandle:sceneHandle];

      pictureInPictureManager = [v13 pictureInPictureManager];
      v15 = [pictureInPictureManager acquireStashAssertionForReason:6 identifier:@"EmbeddedRemoteTransientOverlayPresentation"];

      [(SBDeviceApplicationRemoteTransientOverlayPresentationContext *)v10 setPIPStashAssertion:v15];
    }

    [(NSMutableArray *)self->_activePresentationContexts addObject:v10];
    [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _activateIfPossible];
    [controllerCopy setPresentationPrefersStatusBarHidden:1 initialStatusBarSettings:0];
    [controllerCopy setPresentationEmbeddedInTargetScene:1];
    [controllerCopy setTransientOverlayDelegate:self];
    targetPredicate = [presentationTarget targetPredicate];
    process = [targetPredicate process];
    v18 = process;
    if (process)
    {
      [controllerCopy _setMediaOverridePID:{objc_msgSend(process, "pid")}];
    }

    [controllerCopy beginAppearanceTransition:1 animated:0];
    [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)self->_containerVC addChildViewController:controllerCopy];
    view = [controllerCopy view];
    view2 = [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)self->_containerVC view];
    [view2 bounds];
    [view setFrame:?];

    view3 = [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)self->_containerVC view];
    view4 = [controllerCopy view];
    [view3 addSubview:view4];

    [controllerCopy didMoveToParentViewController:self->_containerVC];
    [controllerCopy endAppearanceTransition];
    [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _redirectKeyboardFocusToPresentedRemoteViewController:controllerCopy];
  }
}

- (void)dismissRemoteTransientOverlayViewController:(id)controller
{
  controllerCopy = controller;
  if ([(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self isPresentingTransientOverlay:controllerCopy])
  {
    [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _dismissRemoteOverlayVC:controllerCopy];
    activePresentationContexts = self->_activePresentationContexts;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __101__SBDeviceApplicationRemoteTransientOverlayViewProvider_dismissRemoteTransientOverlayViewController___block_invoke;
    v6[3] = &unk_2783C10B0;
    v7 = controllerCopy;
    [(NSMutableArray *)activePresentationContexts removeObjectAtIndex:[(NSMutableArray *)activePresentationContexts indexOfObjectPassingTest:v6]];
    if (![(NSMutableArray *)self->_activePresentationContexts count])
    {
      self->_needsDeactivationWithNoActiveTransientOverlays = 1;
      [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _deactivateIfPossible];
      self->_needsDeactivationWithNoActiveTransientOverlays = 0;
    }
  }
}

BOOL __101__SBDeviceApplicationRemoteTransientOverlayViewProvider_dismissRemoteTransientOverlayViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteViewController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (BOOL)isPresentingTransientOverlay:(id)overlay
{
  overlayCopy = overlay;
  v5 = overlayCopy;
  activePresentationContexts = self->_activePresentationContexts;
  if (activePresentationContexts)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__SBDeviceApplicationRemoteTransientOverlayViewProvider_isPresentingTransientOverlay___block_invoke;
    v8[3] = &unk_2783C10B0;
    v9 = overlayCopy;
    LOBYTE(activePresentationContexts) = [(NSMutableArray *)activePresentationContexts indexOfObjectPassingTest:v8]!= 0x7FFFFFFFFFFFFFFFLL;
  }

  return activePresentationContexts;
}

BOOL __86__SBDeviceApplicationRemoteTransientOverlayViewProvider_isPresentingTransientOverlay___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteViewController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (SBWindowScene)windowScene
{
  delegate = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  v4 = [delegate windowSceneForOverlayViewProvider:self];

  return v4;
}

- (BOOL)isPresentingOnBehalfOfApplication:(id)application
{
  applicationCopy = application;
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  application = [sceneHandle application];
  if ([application isSameExecutableAsApplication:applicationCopy])
  {
    v7 = 1;
  }

  else
  {
    activePresentationContexts = self->_activePresentationContexts;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __91__SBDeviceApplicationRemoteTransientOverlayViewProvider_isPresentingOnBehalfOfApplication___block_invoke;
    v10[3] = &unk_2783C10D8;
    v11 = applicationCopy;
    v7 = [(NSMutableArray *)activePresentationContexts bs_containsObjectPassingTest:v10];
  }

  return v7;
}

uint64_t __91__SBDeviceApplicationRemoteTransientOverlayViewProvider_isPresentingOnBehalfOfApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteViewController];
  v4 = [*(a1 + 32) bundleIdentifier];
  v5 = [v3 isPresentedByBundleIdentifier:v4];

  return v5;
}

- (BOOL)isPresentingOnBehalfOfSceneIdentityTokenString:(id)string
{
  stringCopy = string;
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  identityToken = [sceneIfExists identityToken];
  stringRepresentation = [identityToken stringRepresentation];
  v9 = [stringRepresentation isEqualToString:stringCopy];

  return v9;
}

- (BOOL)isPresentingOnBehalfOfScenePersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  persistenceIdentifier = [sceneHandle persistenceIdentifier];
  v7 = [persistenceIdentifier isEqualToString:identifierCopy];

  return v7;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  lastObject = [(NSMutableArray *)self->_activePresentationContexts lastObject];
  remoteViewController = [lastObject remoteViewController];
  preferredInterfaceOrientationForPresentation = [remoteViewController preferredInterfaceOrientationForPresentation];

  return preferredInterfaceOrientationForPresentation;
}

- (unint64_t)supportedInterfaceOrientations
{
  lastObject = [(NSMutableArray *)self->_activePresentationContexts lastObject];
  remoteViewController = [lastObject remoteViewController];
  supportedInterfaceOrientations = [remoteViewController supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (void)transientOverlayViewControllerNeedsSceneDeactivationUpdate:(id)update
{
  delegate = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  [delegate overlayViewProviderNeedsUpdateResignActiveAssertions:self];
}

- (void)transientOverlayViewControllerNeedsStatusBarAppearanceUpdate:(id)update
{
  delegate = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  [delegate overlayViewProviderNeedsStatusBarAppearanceUpdate:self];
}

- (void)transientOverlayViewControllerDidUpdateHIDEventDeferringDisabled:(id)disabled
{
  v13 = *MEMORY[0x277D85DE8];
  disabledCopy = disabled;
  v5 = objc_opt_class();
  v6 = disabledCopy;
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

  if (v8)
  {
    if ([v8 hidEventDeferringDisabled])
    {
      [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _stopRedirectingKeyboardFocusToRemoteViewController:v8];
      [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _preventKeyboardFocusForPresentedRemoteViewControllerIfNeeded:v8];
    }

    else
    {
      [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _stopPreventingKeyboardFocusForRemoteViewController:v8];
      v9 = [(NSMapTable *)self->_keyboardFocusRedirectionsByRemoteVC objectForKey:v8];

      if (v9)
      {
        v10 = SBLogTransientOverlay();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138543362;
          v12 = v6;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Not redirecting key focus to embedded remote alert %{public}@ because it already has an assertion.", &v11, 0xCu);
        }
      }

      else
      {
        [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _redirectKeyboardFocusToPresentedRemoteViewController:v8];
      }
    }
  }
}

- (void)_deactivateIfPossible
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_activePresentationContexts count]|| self->_needsDeactivationWithNoActiveTransientOverlays)
  {
    if ([(NSMutableArray *)self->_activePresentationContexts count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v3 = self->_activePresentationContexts;
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v13;
        do
        {
          v7 = 0;
          do
          {
            if (*v13 != v6)
            {
              objc_enumerationMutation(v3);
            }

            remoteViewController = [*(*(&v12 + 1) + 8 * v7) remoteViewController];
            [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _dismissRemoteOverlayVC:remoteViewController];

            ++v7;
          }

          while (v5 != v7);
          v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v5);
      }

      [(NSMutableArray *)self->_activePresentationContexts removeAllObjects];
    }

    v11.receiver = self;
    v11.super_class = SBDeviceApplicationRemoteTransientOverlayViewProvider;
    [(SBDeviceApplicationSceneOverlayViewProvider *)&v11 _deactivateIfPossible];
    containerVC = self->_containerVC;
    self->_containerVC = 0;

    activePresentationContexts = self->_activePresentationContexts;
    self->_activePresentationContexts = 0;
  }
}

- (void)_dismissRemoteOverlayVC:(id)c
{
  cCopy = c;
  [cCopy beginAppearanceTransition:0 animated:0];
  [cCopy willMoveToParentViewController:0];
  view = [cCopy view];
  [view removeFromSuperview];

  [cCopy removeFromParentViewController];
  [cCopy endAppearanceTransition];
  [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _stopRedirectingKeyboardFocusToRemoteViewController:cCopy];
  [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _stopPreventingKeyboardFocusForRemoteViewController:cCopy];
  [cCopy setTransientOverlayDelegate:0];
}

- (void)_redirectKeyboardFocusToPresentedRemoteViewController:(id)controller
{
  controllerCopy = controller;
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  application = [sceneHandle application];
  processState = [application processState];
  v8 = [processState pid];
  sceneIfExists = [sceneHandle sceneIfExists];
  identityToken = [sceneIfExists identityToken];
  v11 = identityToken;
  if (sceneIfExists && !identityToken)
  {
    [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)a2 _redirectKeyboardFocusToPresentedRemoteViewController:sceneHandle, &v28];
    v22 = v28;
LABEL_8:

    goto LABEL_9;
  }

  if (identityToken && [controllerCopy serviceProcessIdentifier] >= 1)
  {
    v26 = application;
    serviceProcessIdentifier = [controllerCopy serviceProcessIdentifier];
    [controllerCopy clientSceneIdentityToken];
    v12 = v23 = v8;
    v13 = +[SBWorkspace mainWorkspace];
    keyboardFocusController = [v13 keyboardFocusController];
    delegate = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
    v16 = [delegate hostWindowForOverlayViewProvider:self];
    v17 = serviceProcessIdentifier;
    v25 = v12;
    v18 = [keyboardFocusController redirectFocusForReason:@"remoteTransientOverlay-identityToken" fromProcessIdentifier:v23 fromSceneIdentityToken:v11 toProcessIdentifier:v17 toSceneIdentityToken:v12 inContainingWindow:v16];

    keyboardFocusRedirectionsByRemoteVC = self->_keyboardFocusRedirectionsByRemoteVC;
    if (!keyboardFocusRedirectionsByRemoteVC)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v21 = self->_keyboardFocusRedirectionsByRemoteVC;
      self->_keyboardFocusRedirectionsByRemoteVC = weakToStrongObjectsMapTable;

      keyboardFocusRedirectionsByRemoteVC = self->_keyboardFocusRedirectionsByRemoteVC;
    }

    [(NSMapTable *)keyboardFocusRedirectionsByRemoteVC setObject:v18 forKey:controllerCopy];

    v22 = v25;
    application = v26;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_stopRedirectingKeyboardFocusToRemoteViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(NSMapTable *)self->_keyboardFocusRedirectionsByRemoteVC objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMapTable *)self->_keyboardFocusRedirectionsByRemoteVC removeObjectForKey:controllerCopy];
  }
}

- (void)_preventKeyboardFocusForPresentedRemoteViewControllerIfNeeded:(id)needed
{
  v17 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  clientSceneIdentityToken = [neededCopy clientSceneIdentityToken];
  if (clientSceneIdentityToken)
  {
    keyboardFocusPreventionAssertionsByRemoteVC = self->_keyboardFocusPreventionAssertionsByRemoteVC;
    if (!keyboardFocusPreventionAssertionsByRemoteVC)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v8 = self->_keyboardFocusPreventionAssertionsByRemoteVC;
      self->_keyboardFocusPreventionAssertionsByRemoteVC = weakToStrongObjectsMapTable;

      keyboardFocusPreventionAssertionsByRemoteVC = self->_keyboardFocusPreventionAssertionsByRemoteVC;
    }

    v9 = [(NSMapTable *)keyboardFocusPreventionAssertionsByRemoteVC objectForKey:neededCopy];

    if (!v9)
    {
      v12 = +[SBWorkspace mainWorkspace];
      keyboardFocusController = [v12 keyboardFocusController];
      v14 = [keyboardFocusController preventFocusForSceneWithIdentityToken:clientSceneIdentityToken reason:@"embedded remote transient overlay disabling event deferral"];

      [(NSMapTable *)self->_keyboardFocusPreventionAssertionsByRemoteVC setObject:v14 forKey:neededCopy];
      goto LABEL_12;
    }

    v10 = SBLogTransientOverlay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = neededCopy;
      v11 = "Not taking new key focus prevention assertion for embedded remote alert %{public}@ because it already has one.";
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, v11, &v15, 0xCu);
    }
  }

  else
  {
    v10 = SBLogTransientOverlay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = neededCopy;
      v11 = "Not taking key focus prevention assertion for embedded remote alert %{public}@ because it doesn't have a scene identity.";
      goto LABEL_9;
    }
  }

LABEL_12:
}

- (void)_stopPreventingKeyboardFocusForRemoteViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(NSMapTable *)self->_keyboardFocusPreventionAssertionsByRemoteVC objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMapTable *)self->_keyboardFocusPreventionAssertionsByRemoteVC removeObjectForKey:controllerCopy];
  }
}

- (void)_dismissPresentedTransientOverlaysForDeviceLock
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSMutableArray *)self->_activePresentationContexts copy];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        presentationTarget = [v8 presentationTarget];
        shouldDismissOnUILock = [presentationTarget shouldDismissOnUILock];

        if (shouldDismissOnUILock)
        {
          remoteViewController = [v8 remoteViewController];
          [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self dismissRemoteTransientOverlayViewController:remoteViewController];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_handleAppSwitcherWillPresent:(id)present
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMutableArray *)self->_activePresentationContexts copy:present];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        presentationTarget = [v9 presentationTarget];
        shouldDismissInSwitcher = [presentationTarget shouldDismissInSwitcher];

        if (shouldDismissInSwitcher)
        {
          remoteViewController = [v9 remoteViewController];
          [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self dismissRemoteTransientOverlayViewController:remoteViewController];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (uint64_t)_redirectKeyboardFocusToPresentedRemoteViewController:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  *a4 = v8;
  return [v8 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationRemoteTransientOverlayViewProvider.m" lineNumber:399 description:{@"no sceneIdentityToken on sceneHandle %@", a3}];
}

@end
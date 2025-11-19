@interface SBDeviceApplicationRemoteTransientOverlayViewProvider
- (BOOL)isPresentingOnBehalfOfApplication:(id)a3;
- (BOOL)isPresentingOnBehalfOfSceneIdentityTokenString:(id)a3;
- (BOOL)isPresentingOnBehalfOfScenePersistentIdentifier:(id)a3;
- (BOOL)isPresentingTransientOverlay:(id)a3;
- (BOOL)prefersStatusBarHidden;
- (BOOL)wantsResignActiveAssertion;
- (SBDeviceApplicationRemoteTransientOverlayViewProvider)initWithSceneHandle:(id)a3 delegate:(id)a4 handlesSceneBackedRemoteTransientOverlaysOnly:(BOOL)a5;
- (SBWindowScene)windowScene;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (int64_t)priority;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activateIfPossible;
- (void)_deactivateIfPossible;
- (void)_dismissPresentedTransientOverlaysForDeviceLock;
- (void)_dismissRemoteOverlayVC:(id)a3;
- (void)_handleAppSwitcherWillPresent:(id)a3;
- (void)_preventKeyboardFocusForPresentedRemoteViewControllerIfNeeded:(id)a3;
- (void)_redirectKeyboardFocusToPresentedRemoteViewController:(id)a3;
- (void)_stopPreventingKeyboardFocusForRemoteViewController:(id)a3;
- (void)_stopRedirectingKeyboardFocusToRemoteViewController:(id)a3;
- (void)configureForSecureDisplay:(BOOL)a3;
- (void)dealloc;
- (void)dismissRemoteTransientOverlayViewController:(id)a3;
- (void)noteDisplayModeChange:(int64_t)a3;
- (void)presentRemoteTransientOverlayViewController:(id)a3 presentationRequest:(id)a4;
- (void)transientOverlayViewControllerDidUpdateHIDEventDeferringDisabled:(id)a3;
- (void)transientOverlayViewControllerNeedsSceneDeactivationUpdate:(id)a3;
- (void)transientOverlayViewControllerNeedsStatusBarAppearanceUpdate:(id)a3;
- (void)willDoBoundsPreservingRotationFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4;
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

- (SBDeviceApplicationRemoteTransientOverlayViewProvider)initWithSceneHandle:(id)a3 delegate:(id)a4 handlesSceneBackedRemoteTransientOverlaysOnly:(BOOL)a5
{
  v11.receiver = self;
  v11.super_class = SBDeviceApplicationRemoteTransientOverlayViewProvider;
  v6 = [(SBDeviceApplicationSceneOverlayViewProvider *)&v11 initWithSceneHandle:a3 delegate:a4];
  v7 = v6;
  if (v6)
  {
    v6->_handlesSceneBackedRemoteTransientOverlaysOnly = a5;
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__handleCoverSheetDidPresent_ name:@"SBCoverSheetDidPresentNotification" object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v7 selector:sel__handleAppSwitcherWillPresent_ name:@"SBUIAppSwitcherWillRevealNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[_SBActiveRemoteTransientOverlayViewProviderRegistry sharedInstance];
  [v3 unregisterViewProvider:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"SBCoverSheetDidPresentNotification" object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:@"SBUIAppSwitcherWillRevealNotification" object:0];

  v6.receiver = self;
  v6.super_class = SBDeviceApplicationRemoteTransientOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v6 dealloc];
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(NSMutableArray *)self->_activePresentationContexts lastObject];
  v3 = [v2 remoteViewController];
  v4 = [v3 prefersStatusBarHidden];

  return v4;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(NSMutableArray *)self->_activePresentationContexts lastObject];
  v3 = [v2 remoteViewController];
  v4 = [v3 preferredStatusBarStyle];

  return v4;
}

- (void)configureForSecureDisplay:(BOOL)a3
{
  if (a3)
  {
    [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _dismissPresentedTransientOverlaysForDeviceLock];
  }
}

- (void)noteDisplayModeChange:(int64_t)a3
{
  v5 = +[_SBActiveRemoteTransientOverlayViewProviderRegistry sharedInstance];
  v6 = v5;
  if (a3 == 4)
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
  v3 = [SBApp privacyPreflightController];
  v4 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v5 = [v4 application];
  v6 = [v5 info];
  v7 = [v6 applicationIdentity];
  v8 = [v3 requiresPreflightForApplication:v7];

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
        v8 = [v7 remoteViewController];
        v9 = [v8 isPresentedByBundleIdentifier:@"com.apple.PDUIApp"];

        if ((v9 & 1) == 0)
        {
          v10 = [v7 remoteViewController];
          v11 = [v10 preferredSceneDeactivationReasonValue];

          if (v11)
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

- (void)willDoBoundsPreservingRotationFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4
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

          v12 = [*(*(&v13 + 1) + 8 * v11) remoteViewController];
          [v12 _doBoundsPreservingRotationFromInterfaceOrientation:a3 toInterfaceOrientation:a4];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)presentRemoteTransientOverlayViewController:(id)a3 presentationRequest:(id)a4
{
  v23 = a3;
  v6 = a4;
  if (!self->_activePresentationContexts)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activePresentationContexts = self->_activePresentationContexts;
    self->_activePresentationContexts = v7;
  }

  if (![(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self isPresentingTransientOverlay:v23])
  {
    v9 = [v6 presentationTarget];
    v10 = objc_alloc_init(SBDeviceApplicationRemoteTransientOverlayPresentationContext);
    [(SBDeviceApplicationRemoteTransientOverlayPresentationContext *)v10 setRemoteViewController:v23];
    [(SBDeviceApplicationRemoteTransientOverlayPresentationContext *)v10 setPresentationTarget:v9];
    if ([v6 shouldStashPictureInPictureIfNeeded])
    {
      v11 = [SBApp windowSceneManager];
      v12 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
      v13 = [v11 windowSceneForSceneHandle:v12];

      v14 = [v13 pictureInPictureManager];
      v15 = [v14 acquireStashAssertionForReason:6 identifier:@"EmbeddedRemoteTransientOverlayPresentation"];

      [(SBDeviceApplicationRemoteTransientOverlayPresentationContext *)v10 setPIPStashAssertion:v15];
    }

    [(NSMutableArray *)self->_activePresentationContexts addObject:v10];
    [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _activateIfPossible];
    [v23 setPresentationPrefersStatusBarHidden:1 initialStatusBarSettings:0];
    [v23 setPresentationEmbeddedInTargetScene:1];
    [v23 setTransientOverlayDelegate:self];
    v16 = [v9 targetPredicate];
    v17 = [v16 process];
    v18 = v17;
    if (v17)
    {
      [v23 _setMediaOverridePID:{objc_msgSend(v17, "pid")}];
    }

    [v23 beginAppearanceTransition:1 animated:0];
    [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)self->_containerVC addChildViewController:v23];
    v19 = [v23 view];
    v20 = [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)self->_containerVC view];
    [v20 bounds];
    [v19 setFrame:?];

    v21 = [(SBDeviceApplicationRemoteTransientOverlayContainerViewController *)self->_containerVC view];
    v22 = [v23 view];
    [v21 addSubview:v22];

    [v23 didMoveToParentViewController:self->_containerVC];
    [v23 endAppearanceTransition];
    [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _redirectKeyboardFocusToPresentedRemoteViewController:v23];
  }
}

- (void)dismissRemoteTransientOverlayViewController:(id)a3
{
  v4 = a3;
  if ([(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self isPresentingTransientOverlay:v4])
  {
    [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _dismissRemoteOverlayVC:v4];
    activePresentationContexts = self->_activePresentationContexts;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __101__SBDeviceApplicationRemoteTransientOverlayViewProvider_dismissRemoteTransientOverlayViewController___block_invoke;
    v6[3] = &unk_2783C10B0;
    v7 = v4;
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

- (BOOL)isPresentingTransientOverlay:(id)a3
{
  v4 = a3;
  v5 = v4;
  activePresentationContexts = self->_activePresentationContexts;
  if (activePresentationContexts)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__SBDeviceApplicationRemoteTransientOverlayViewProvider_isPresentingTransientOverlay___block_invoke;
    v8[3] = &unk_2783C10B0;
    v9 = v4;
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
  v3 = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  v4 = [v3 windowSceneForOverlayViewProvider:self];

  return v4;
}

- (BOOL)isPresentingOnBehalfOfApplication:(id)a3
{
  v4 = a3;
  v5 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v6 = [v5 application];
  if ([v6 isSameExecutableAsApplication:v4])
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
    v11 = v4;
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

- (BOOL)isPresentingOnBehalfOfSceneIdentityTokenString:(id)a3
{
  v4 = a3;
  v5 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v6 = [v5 sceneIfExists];
  v7 = [v6 identityToken];
  v8 = [v7 stringRepresentation];
  v9 = [v8 isEqualToString:v4];

  return v9;
}

- (BOOL)isPresentingOnBehalfOfScenePersistentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v6 = [v5 persistenceIdentifier];
  v7 = [v6 isEqualToString:v4];

  return v7;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  v2 = [(NSMutableArray *)self->_activePresentationContexts lastObject];
  v3 = [v2 remoteViewController];
  v4 = [v3 preferredInterfaceOrientationForPresentation];

  return v4;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(NSMutableArray *)self->_activePresentationContexts lastObject];
  v3 = [v2 remoteViewController];
  v4 = [v3 supportedInterfaceOrientations];

  return v4;
}

- (void)transientOverlayViewControllerNeedsSceneDeactivationUpdate:(id)a3
{
  v4 = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  [v4 overlayViewProviderNeedsUpdateResignActiveAssertions:self];
}

- (void)transientOverlayViewControllerNeedsStatusBarAppearanceUpdate:(id)a3
{
  v4 = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  [v4 overlayViewProviderNeedsStatusBarAppearanceUpdate:self];
}

- (void)transientOverlayViewControllerDidUpdateHIDEventDeferringDisabled:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

            v8 = [*(*(&v12 + 1) + 8 * v7) remoteViewController];
            [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _dismissRemoteOverlayVC:v8];

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

- (void)_dismissRemoteOverlayVC:(id)a3
{
  v5 = a3;
  [v5 beginAppearanceTransition:0 animated:0];
  [v5 willMoveToParentViewController:0];
  v4 = [v5 view];
  [v4 removeFromSuperview];

  [v5 removeFromParentViewController];
  [v5 endAppearanceTransition];
  [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _stopRedirectingKeyboardFocusToRemoteViewController:v5];
  [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self _stopPreventingKeyboardFocusForRemoteViewController:v5];
  [v5 setTransientOverlayDelegate:0];
}

- (void)_redirectKeyboardFocusToPresentedRemoteViewController:(id)a3
{
  v27 = a3;
  v5 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v6 = [v5 application];
  v7 = [v6 processState];
  v8 = [v7 pid];
  v9 = [v5 sceneIfExists];
  v10 = [v9 identityToken];
  v11 = v10;
  if (v9 && !v10)
  {
    [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)a2 _redirectKeyboardFocusToPresentedRemoteViewController:v5, &v28];
    v22 = v28;
LABEL_8:

    goto LABEL_9;
  }

  if (v10 && [v27 serviceProcessIdentifier] >= 1)
  {
    v26 = v6;
    v24 = [v27 serviceProcessIdentifier];
    [v27 clientSceneIdentityToken];
    v12 = v23 = v8;
    v13 = +[SBWorkspace mainWorkspace];
    v14 = [v13 keyboardFocusController];
    v15 = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
    v16 = [v15 hostWindowForOverlayViewProvider:self];
    v17 = v24;
    v25 = v12;
    v18 = [v14 redirectFocusForReason:@"remoteTransientOverlay-identityToken" fromProcessIdentifier:v23 fromSceneIdentityToken:v11 toProcessIdentifier:v17 toSceneIdentityToken:v12 inContainingWindow:v16];

    keyboardFocusRedirectionsByRemoteVC = self->_keyboardFocusRedirectionsByRemoteVC;
    if (!keyboardFocusRedirectionsByRemoteVC)
    {
      v20 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v21 = self->_keyboardFocusRedirectionsByRemoteVC;
      self->_keyboardFocusRedirectionsByRemoteVC = v20;

      keyboardFocusRedirectionsByRemoteVC = self->_keyboardFocusRedirectionsByRemoteVC;
    }

    [(NSMapTable *)keyboardFocusRedirectionsByRemoteVC setObject:v18 forKey:v27];

    v22 = v25;
    v6 = v26;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_stopRedirectingKeyboardFocusToRemoteViewController:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_keyboardFocusRedirectionsByRemoteVC objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMapTable *)self->_keyboardFocusRedirectionsByRemoteVC removeObjectForKey:v6];
  }
}

- (void)_preventKeyboardFocusForPresentedRemoteViewControllerIfNeeded:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 clientSceneIdentityToken];
  if (v5)
  {
    keyboardFocusPreventionAssertionsByRemoteVC = self->_keyboardFocusPreventionAssertionsByRemoteVC;
    if (!keyboardFocusPreventionAssertionsByRemoteVC)
    {
      v7 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v8 = self->_keyboardFocusPreventionAssertionsByRemoteVC;
      self->_keyboardFocusPreventionAssertionsByRemoteVC = v7;

      keyboardFocusPreventionAssertionsByRemoteVC = self->_keyboardFocusPreventionAssertionsByRemoteVC;
    }

    v9 = [(NSMapTable *)keyboardFocusPreventionAssertionsByRemoteVC objectForKey:v4];

    if (!v9)
    {
      v12 = +[SBWorkspace mainWorkspace];
      v13 = [v12 keyboardFocusController];
      v14 = [v13 preventFocusForSceneWithIdentityToken:v5 reason:@"embedded remote transient overlay disabling event deferral"];

      [(NSMapTable *)self->_keyboardFocusPreventionAssertionsByRemoteVC setObject:v14 forKey:v4];
      goto LABEL_12;
    }

    v10 = SBLogTransientOverlay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v4;
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
      v16 = v4;
      v11 = "Not taking key focus prevention assertion for embedded remote alert %{public}@ because it doesn't have a scene identity.";
      goto LABEL_9;
    }
  }

LABEL_12:
}

- (void)_stopPreventingKeyboardFocusForRemoteViewController:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_keyboardFocusPreventionAssertionsByRemoteVC objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMapTable *)self->_keyboardFocusPreventionAssertionsByRemoteVC removeObjectForKey:v6];
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
        v9 = [v8 presentationTarget];
        v10 = [v9 shouldDismissOnUILock];

        if (v10)
        {
          v11 = [v8 remoteViewController];
          [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self dismissRemoteTransientOverlayViewController:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_handleAppSwitcherWillPresent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMutableArray *)self->_activePresentationContexts copy:a3];
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
        v10 = [v9 presentationTarget];
        v11 = [v10 shouldDismissInSwitcher];

        if (v11)
        {
          v12 = [v9 remoteViewController];
          [(SBDeviceApplicationRemoteTransientOverlayViewProvider *)self dismissRemoteTransientOverlayViewController:v12];
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
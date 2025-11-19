@interface SBTransientOverlayPresentationManager
- (BOOL)activePresentationPreventsDragAndDrop;
- (BOOL)canActivePresentationBecomeFirstResponder;
- (BOOL)canActivePresentationBecomeLocalFirstResponder;
- (BOOL)handleHeadsetButtonPress:(BOOL)a3;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVoiceCommandButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hasActivePresentation;
- (BOOL)hasActivePresentationForWindowScene:(id)a3;
- (BOOL)hasActivePresentationFromBundleIdentifier:(id)a3;
- (BOOL)hasActivePresentationFromProcess:(id)a3;
- (BOOL)hasActiveSpotlightPresentation;
- (BOOL)hasIdleTimerBehaviors;
- (BOOL)hasPresentationAboveWindowLevel:(double)a3;
- (BOOL)isPresentingViewController:(id)a3;
- (BOOL)isTopmostPresentationFromSceneWithIdentityTokenString:(id)a3;
- (BOOL)isTopmostPresentedViewController:(id)a3;
- (BOOL)prefersStatusBarActivityItemVisible;
- (BOOL)shouldDisableControlCenter;
- (BOOL)shouldDisableCoverSheetGesture;
- (BOOL)shouldDisableSiri;
- (BOOL)shouldUseSceneBasedKeyboardFocusForActivePresentation;
- (SBTransientOverlayPresentationManager)initWithWindowSceneManager:(id)a3 alertItemsController:(id)a4 lockStateAggregator:(id)a5 reachabilityManager:(id)a6;
- (SBTransientOverlayScenePresenterDelegate)presenterDelegate;
- (id)coordinatorRequestedIdleTimerBehavior:(id)a3;
- (id)defaultDisplayConfigurationForTransientOverlayPresentation;
- (id)idleTimerProvider:(id)a3 didProposeBehavior:(id)a4 forReason:(id)a5;
- (id)keyboardFocusTargetForSBWindowScene:(id)a3;
- (id)topmostPresentedViewController;
- (int64_t)presentedViewControllerCount;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)performDismissalRequest:(id)a3;
- (void)performPresentationRequest:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setCoverSheetPresentationManager:(id)a3;
- (void)transientOverlayScenePresenter:(id)a3 didDismissViewController:(id)a4 wasTopmostPresentation:(BOOL)a5;
- (void)transientOverlayScenePresenter:(id)a3 willPresentViewController:(id)a4;
- (void)windowSceneDidConnect:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBTransientOverlayPresentationManager

- (BOOL)hasIdleTimerBehaviors
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) hasIdleTimerBehaviors])
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

- (BOOL)hasActivePresentation
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) hasActivePresentation])
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

- (SBTransientOverlayPresentationManager)initWithWindowSceneManager:(id)a3 alertItemsController:(id)a4 lockStateAggregator:(id)a5 reachabilityManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = SBTransientOverlayPresentationManager;
  v15 = [(SBTransientOverlayPresentationManager *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_windowSceneManager, a3);
    objc_storeStrong(&v16->_alertItemsController, a4);
    objc_storeStrong(&v16->_lockStateAggregator, a5);
    objc_storeStrong(&v16->_reachabilityManager, a6);
    v17 = [[SBIdleTimerCoordinatorHelper alloc] initWithSourceProvider:v16];
    idleTimerCoordinatorHelper = v16->_idleTimerCoordinatorHelper;
    v16->_idleTimerCoordinatorHelper = v17;
  }

  return v16;
}

- (void)dealloc
{
  [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper removeProvider:self];
  v3.receiver = self;
  v3.super_class = SBTransientOverlayPresentationManager;
  [(SBTransientOverlayPresentationManager *)&v3 dealloc];
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
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_coverSheetPresentationManager, a3);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setCoverSheetPresentationManager:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)shouldDisableControlCenter
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) shouldDisableControlCenter])
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

- (BOOL)shouldDisableCoverSheetGesture
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) shouldDisableCoverSheetGesture])
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

- (BOOL)shouldDisableSiri
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) shouldDisableSiri])
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

- (id)topmostPresentedViewController
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) topmostPresentedViewController];
        if (v7)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)defaultDisplayConfigurationForTransientOverlayPresentation
{
  v2 = [(SBWindowSceneManager *)self->_windowSceneManager activeDisplayWindowScene];
  v3 = [v2 _fbsDisplayConfiguration];

  return v3;
}

- (void)windowSceneDidConnect:(id)a3
{
  v4 = a3;
  presentersByWindowScene = self->_presentersByWindowScene;
  v17 = v4;
  if (!presentersByWindowScene)
  {
    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v7 = self->_presentersByWindowScene;
    self->_presentersByWindowScene = v6;

    v4 = v17;
    presentersByWindowScene = self->_presentersByWindowScene;
  }

  v8 = [(NSMapTable *)presentersByWindowScene objectForKey:v4];

  if (!v8)
  {
    v9 = [SBTransientOverlayScenePresenter alloc];
    alertItemsController = self->_alertItemsController;
    lockStateAggregator = self->_lockStateAggregator;
    v12 = [v17 zStackResolver];
    v13 = [(SBTransientOverlayScenePresenter *)v9 initWithWindowScene:v17 alertItemsController:alertItemsController lockStateAggregator:lockStateAggregator zStackResolver:v12 reachabilityManager:self->_reachabilityManager];

    [(SBTransientOverlayScenePresenter *)v13 addObserver:self];
    [(SBTransientOverlayScenePresenter *)v13 setCoverSheetPresentationManager:self->_coverSheetPresentationManager];
    WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);
    [(SBTransientOverlayScenePresenter *)v13 setDelegate:WeakRetained];

    [(SBTransientOverlayScenePresenter *)v13 setBannerManager:self->_bannerManager];
    v15 = +[SBWorkspace mainWorkspace];
    v16 = [v15 inCallPresentationManager];
    [(SBTransientOverlayScenePresenter *)v13 setInCallPresentationManager:v16];

    [(SBTransientOverlayScenePresenter *)v13 setIdleTimerCoordinator:self];
    [(NSMapTable *)self->_presentersByWindowScene setObject:v13 forKey:v17];
  }
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 presentedViewControllers];
    v8 = [(SBTransientOverlayDismissalRequest *)SBMutableTransientOverlayDismissalRequest dismissalRequestForAllViewControllersInWindowScene:v4];
    [v8 setAnimated:0];
    v24 = v4;
    [(NSMapTable *)self->_presentersByWindowScene removeObjectForKey:v4];
    v25 = v8;
    [v6 performDismissalRequest:v8 outerCompletionHandler:0];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        v12 = 0;
        do
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * v12);
          v14 = objc_opt_class();
          v15 = SBSafeCast(v14, v13);
          v16 = v15;
          if (v15)
          {
            v17 = [v15 pairedRemoteTransientOverlay];
            v18 = v17;
            if (v17)
            {
              v19 = self;
              presentersByWindowScene = self->_presentersByWindowScene;
              v21 = [v17 _sbWindowScene];
              v22 = [(NSMapTable *)presentersByWindowScene objectForKey:v21];

              if (v22)
              {
                v23 = [(SBTransientOverlayDismissalRequest *)SBMutableTransientOverlayDismissalRequest dismissalRequestForViewController:v18];

                [v22 performDismissalRequest:v23 outerCompletionHandler:0];
                v25 = v23;
                v6 = v22;
              }

              else
              {
                v6 = 0;
              }

              self = v19;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    v4 = v24;
  }
}

- (BOOL)hasPresentationAboveWindowLevel:(double)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) hasPresentationAboveWindowLevel:a3])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)canActivePresentationBecomeLocalFirstResponder
{
  v3 = [(SBWindowSceneManager *)self->_windowSceneManager activeDisplayWindowScene];
  if (v3)
  {
    v4 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:v3];
    v5 = [v4 canActivePresentationBecomeLocalFirstResponder];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canActivePresentationBecomeFirstResponder
{
  v2 = [(SBTransientOverlayPresentationManager *)self topmostPresentedViewController];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (BOOL)activePresentationPreventsDragAndDrop
{
  v3 = [(SBTransientOverlayPresentationManager *)self hasActivePresentation];
  if (v3)
  {
    v4 = [(SBTransientOverlayPresentationManager *)self topmostPresentedViewController];
    v5 = [v4 shouldPreventDragAndDrop];

    LOBYTE(v3) = v5;
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
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        v5 += [*(*(&v9 + 1) + 8 * i) presentedViewControllerCount];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(SBWindowSceneManager *)self->_windowSceneManager activeDisplayWindowScene];
  if (v3)
  {
    v4 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:v3];
    v5 = [v4 shouldUseSceneBasedKeyboardFocusForActivePresentation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPresentingViewController:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v10 + 1) + 8 * i) isPresentingViewController:v4])
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

- (BOOL)isTopmostPresentedViewController:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if (v4 && ([*(*(&v10 + 1) + 8 * i) isTopmostPresentedViewController:v4] & 1) != 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
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

LABEL_12:

  return v6;
}

- (BOOL)hasActivePresentationFromProcess:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v10 + 1) + 8 * i) hasActivePresentationFromProcess:v4])
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
  v5 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v10 + 1) + 8 * i) hasActivePresentationFromBundleIdentifier:v4])
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

- (BOOL)hasActivePresentationForWindowScene:(id)a3
{
  v3 = [(SBTransientOverlayPresentationManager *)self transientOverlayPresenterForWindowScene:a3];
  v4 = [v3 hasActivePresentation];

  return v4;
}

- (BOOL)isTopmostPresentationFromSceneWithIdentityTokenString:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v10 + 1) + 8 * i) isTopmostPresentationFromSceneWithIdentityTokenString:v4])
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

- (id)keyboardFocusTargetForSBWindowScene:(id)a3
{
  v3 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:a3];
  v4 = [v3 keyboardFocusTargetForTopmostPresentingScene];

  return v4;
}

- (BOOL)hasActiveSpotlightPresentation
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) hasActiveSpotlightPresentation])
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
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) prefersStatusBarActivityItemVisible])
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

- (void)performDismissalRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 requestType];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = dispatch_group_create();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            dispatch_group_enter(v6);
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __65__SBTransientOverlayPresentationManager_performDismissalRequest___block_invoke;
            v21[3] = &unk_2783A8C18;
            v22 = v6;
            [v16 performDismissalRequest:v4 outerCompletionHandler:v21];
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __65__SBTransientOverlayPresentationManager_performDismissalRequest___block_invoke_2;
      v19[3] = &unk_2783A8C18;
      v20 = v4;
      dispatch_group_notify(v6, MEMORY[0x277D85CD0], v19);

      goto LABEL_26;
    }

    if (v5 == 3)
    {
      v6 = [v4 windowScene];
      if (v6)
      {
        v9 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:v6];
        [v9 performDismissalRequest:v4 outerCompletionHandler:0];
      }

      else
      {
        v18 = [v4 completionHandler];
        v9 = v18;
        if (v18)
        {
          (*(v18 + 16))(v18);
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (!v5)
    {
      v10 = [v4 completionHandler];
      v6 = v10;
      if (v10)
      {
        (*(v10 + 16))(v10);
      }

      goto LABEL_26;
    }

    if (v5 == 1)
    {
      v6 = [v4 viewController];
      v7 = [v6 _sbWindowScene];
      if (v7)
      {
        v8 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:v7];
        [v8 performDismissalRequest:v4 outerCompletionHandler:0];
      }

      else
      {
        v17 = [v4 completionHandler];
        v8 = v17;
        if (v17)
        {
          (*(v17 + 16))(v17);
        }
      }

LABEL_26:
    }
  }
}

void __65__SBTransientOverlayPresentationManager_performDismissalRequest___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) completionHandler];
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (void)performPresentationRequest:(id)a3
{
  v7 = a3;
  if (![(NSMapTable *)self->_presentersByWindowScene count])
  {
    [(SBTransientOverlayPresentationManager *)a2 performPresentationRequest:?];
  }

  v5 = [v7 windowScene];
  if (!v5)
  {
    v5 = [(SBWindowSceneManager *)self->_windowSceneManager activeDisplayWindowScene];
  }

  v6 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:v5];
  [v6 performPresentationRequest:v7];
}

- (BOOL)handleHeadsetButtonPress:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) handleHeadsetButtonPress:v3])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)handleHomeButtonPress
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) handleHomeButtonPress])
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

- (BOOL)handleHomeButtonDoublePress
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) handleHomeButtonDoublePress])
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

- (BOOL)handleHomeButtonLongPress
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) handleHomeButtonLongPress])
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

- (BOOL)handleLockButtonPress
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) handleLockButtonPress])
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

- (BOOL)handleVoiceCommandButtonPress
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) handleVoiceCommandButtonPress])
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

- (BOOL)handleVolumeUpButtonPress
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) handleVolumeUpButtonPress])
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

- (BOOL)handleVolumeDownButtonPress
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
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

        if ([*(*(&v7 + 1) + 8 * i) handleVolumeDownButtonPress])
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

- (id)idleTimerProvider:(id)a3 didProposeBehavior:(id)a4 forReason:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (*(*(&v19 + 1) + 8 * i) == v8)
        {

          v16 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeIdleTimerBehavior:v9 fromProvider:v8 reason:v10];
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper updateProvider:v8 behavior:v9 reason:v10];
LABEL_11:
  v17 = v16;

  return v17;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator:a3];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasIdleTimerBehaviors])
        {
          v10 = [v9 coordinatorRequestedIdleTimerBehavior:self];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = +[SBIdleTimerBehavior defaultBehavior];
LABEL_11:

  return v10;
}

- (void)transientOverlayScenePresenter:(id)a3 willPresentViewController:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 transientOverlayPresentationManager:self willPresentViewController:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)transientOverlayScenePresenter:(id)a3 didDismissViewController:(id)a4 wasTopmostPresentation:(BOOL)a5
{
  v5 = a5;
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 transientOverlayPresentationManager:self didDismissViewController:v7 wasTopmostPresentation:v5];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (SBTransientOverlayScenePresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

  return WeakRetained;
}

- (void)performPresentationRequest:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTransientOverlayPresentationManager.m" lineNumber:430 description:@"The TransientOverlayPresentationManager must have at least one window scene registered..."];
}

@end
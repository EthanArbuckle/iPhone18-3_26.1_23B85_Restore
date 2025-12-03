@interface SBTransientOverlayPresentationManager
- (BOOL)activePresentationPreventsDragAndDrop;
- (BOOL)canActivePresentationBecomeFirstResponder;
- (BOOL)canActivePresentationBecomeLocalFirstResponder;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleHomeButtonLongPress;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVoiceCommandButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hasActivePresentation;
- (BOOL)hasActivePresentationForWindowScene:(id)scene;
- (BOOL)hasActivePresentationFromBundleIdentifier:(id)identifier;
- (BOOL)hasActivePresentationFromProcess:(id)process;
- (BOOL)hasActiveSpotlightPresentation;
- (BOOL)hasIdleTimerBehaviors;
- (BOOL)hasPresentationAboveWindowLevel:(double)level;
- (BOOL)isPresentingViewController:(id)controller;
- (BOOL)isTopmostPresentationFromSceneWithIdentityTokenString:(id)string;
- (BOOL)isTopmostPresentedViewController:(id)controller;
- (BOOL)prefersStatusBarActivityItemVisible;
- (BOOL)shouldDisableControlCenter;
- (BOOL)shouldDisableCoverSheetGesture;
- (BOOL)shouldDisableSiri;
- (BOOL)shouldUseSceneBasedKeyboardFocusForActivePresentation;
- (SBTransientOverlayPresentationManager)initWithWindowSceneManager:(id)manager alertItemsController:(id)controller lockStateAggregator:(id)aggregator reachabilityManager:(id)reachabilityManager;
- (SBTransientOverlayScenePresenterDelegate)presenterDelegate;
- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior;
- (id)defaultDisplayConfigurationForTransientOverlayPresentation;
- (id)idleTimerProvider:(id)provider didProposeBehavior:(id)behavior forReason:(id)reason;
- (id)keyboardFocusTargetForSBWindowScene:(id)scene;
- (id)topmostPresentedViewController;
- (int64_t)presentedViewControllerCount;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)performDismissalRequest:(id)request;
- (void)performPresentationRequest:(id)request;
- (void)removeObserver:(id)observer;
- (void)setCoverSheetPresentationManager:(id)manager;
- (void)transientOverlayScenePresenter:(id)presenter didDismissViewController:(id)controller wasTopmostPresentation:(BOOL)presentation;
- (void)transientOverlayScenePresenter:(id)presenter willPresentViewController:(id)controller;
- (void)windowSceneDidConnect:(id)connect;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBTransientOverlayPresentationManager

- (BOOL)hasIdleTimerBehaviors
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasIdleTimerBehaviors])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasActivePresentation])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (SBTransientOverlayPresentationManager)initWithWindowSceneManager:(id)manager alertItemsController:(id)controller lockStateAggregator:(id)aggregator reachabilityManager:(id)reachabilityManager
{
  managerCopy = manager;
  controllerCopy = controller;
  aggregatorCopy = aggregator;
  reachabilityManagerCopy = reachabilityManager;
  v20.receiver = self;
  v20.super_class = SBTransientOverlayPresentationManager;
  v15 = [(SBTransientOverlayPresentationManager *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_windowSceneManager, manager);
    objc_storeStrong(&v16->_alertItemsController, controller);
    objc_storeStrong(&v16->_lockStateAggregator, aggregator);
    objc_storeStrong(&v16->_reachabilityManager, reachabilityManager);
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
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  objc_storeStrong(&self->_coverSheetPresentationManager, manager);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v11 + 1) + 8 * v10++) setCoverSheetPresentationManager:managerCopy];
      }

      while (v8 != v10);
      v8 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldDisableControlCenter])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldDisableCoverSheetGesture])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldDisableSiri])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        topmostPresentedViewController = [*(*(&v10 + 1) + 8 * i) topmostPresentedViewController];
        if (topmostPresentedViewController)
        {
          v8 = topmostPresentedViewController;
          goto LABEL_11;
        }
      }

      v4 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  activeDisplayWindowScene = [(SBWindowSceneManager *)self->_windowSceneManager activeDisplayWindowScene];
  _fbsDisplayConfiguration = [activeDisplayWindowScene _fbsDisplayConfiguration];

  return _fbsDisplayConfiguration;
}

- (void)windowSceneDidConnect:(id)connect
{
  connectCopy = connect;
  presentersByWindowScene = self->_presentersByWindowScene;
  v17 = connectCopy;
  if (!presentersByWindowScene)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v7 = self->_presentersByWindowScene;
    self->_presentersByWindowScene = strongToStrongObjectsMapTable;

    connectCopy = v17;
    presentersByWindowScene = self->_presentersByWindowScene;
  }

  v8 = [(NSMapTable *)presentersByWindowScene objectForKey:connectCopy];

  if (!v8)
  {
    v9 = [SBTransientOverlayScenePresenter alloc];
    alertItemsController = self->_alertItemsController;
    lockStateAggregator = self->_lockStateAggregator;
    zStackResolver = [v17 zStackResolver];
    v13 = [(SBTransientOverlayScenePresenter *)v9 initWithWindowScene:v17 alertItemsController:alertItemsController lockStateAggregator:lockStateAggregator zStackResolver:zStackResolver reachabilityManager:self->_reachabilityManager];

    [(SBTransientOverlayScenePresenter *)v13 addObserver:self];
    [(SBTransientOverlayScenePresenter *)v13 setCoverSheetPresentationManager:self->_coverSheetPresentationManager];
    WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);
    [(SBTransientOverlayScenePresenter *)v13 setDelegate:WeakRetained];

    [(SBTransientOverlayScenePresenter *)v13 setBannerManager:self->_bannerManager];
    v15 = +[SBWorkspace mainWorkspace];
    inCallPresentationManager = [v15 inCallPresentationManager];
    [(SBTransientOverlayScenePresenter *)v13 setInCallPresentationManager:inCallPresentationManager];

    [(SBTransientOverlayScenePresenter *)v13 setIdleTimerCoordinator:self];
    [(NSMapTable *)self->_presentersByWindowScene setObject:v13 forKey:v17];
  }
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  v32 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v5 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:disconnectCopy];
  if (v5)
  {
    v6 = v5;
    presentedViewControllers = [v5 presentedViewControllers];
    v8 = [(SBTransientOverlayDismissalRequest *)SBMutableTransientOverlayDismissalRequest dismissalRequestForAllViewControllersInWindowScene:disconnectCopy];
    [v8 setAnimated:0];
    v24 = disconnectCopy;
    [(NSMapTable *)self->_presentersByWindowScene removeObjectForKey:disconnectCopy];
    v25 = v8;
    [v6 performDismissalRequest:v8 outerCompletionHandler:0];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = presentedViewControllers;
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
            pairedRemoteTransientOverlay = [v15 pairedRemoteTransientOverlay];
            v18 = pairedRemoteTransientOverlay;
            if (pairedRemoteTransientOverlay)
            {
              selfCopy = self;
              presentersByWindowScene = self->_presentersByWindowScene;
              _sbWindowScene = [pairedRemoteTransientOverlay _sbWindowScene];
              v22 = [(NSMapTable *)presentersByWindowScene objectForKey:_sbWindowScene];

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

              self = selfCopy;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    disconnectCopy = v24;
  }
}

- (BOOL)hasPresentationAboveWindowLevel:(double)level
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v9 + 1) + 8 * i) hasPresentationAboveWindowLevel:level])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  activeDisplayWindowScene = [(SBWindowSceneManager *)self->_windowSceneManager activeDisplayWindowScene];
  if (activeDisplayWindowScene)
  {
    v4 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:activeDisplayWindowScene];
    canActivePresentationBecomeLocalFirstResponder = [v4 canActivePresentationBecomeLocalFirstResponder];
  }

  else
  {
    canActivePresentationBecomeLocalFirstResponder = 0;
  }

  return canActivePresentationBecomeLocalFirstResponder;
}

- (BOOL)canActivePresentationBecomeFirstResponder
{
  topmostPresentedViewController = [(SBTransientOverlayPresentationManager *)self topmostPresentedViewController];
  canBecomeFirstResponder = [topmostPresentedViewController canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (BOOL)activePresentationPreventsDragAndDrop
{
  hasActivePresentation = [(SBTransientOverlayPresentationManager *)self hasActivePresentation];
  if (hasActivePresentation)
  {
    topmostPresentedViewController = [(SBTransientOverlayPresentationManager *)self topmostPresentedViewController];
    shouldPreventDragAndDrop = [topmostPresentedViewController shouldPreventDragAndDrop];

    LOBYTE(hasActivePresentation) = shouldPreventDragAndDrop;
  }

  return hasActivePresentation;
}

- (int64_t)presentedViewControllerCount
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) presentedViewControllerCount];
      }

      v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  activeDisplayWindowScene = [(SBWindowSceneManager *)self->_windowSceneManager activeDisplayWindowScene];
  if (activeDisplayWindowScene)
  {
    v4 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:activeDisplayWindowScene];
    shouldUseSceneBasedKeyboardFocusForActivePresentation = [v4 shouldUseSceneBasedKeyboardFocusForActivePresentation];
  }

  else
  {
    shouldUseSceneBasedKeyboardFocusForActivePresentation = 0;
  }

  return shouldUseSceneBasedKeyboardFocusForActivePresentation;
}

- (BOOL)isPresentingViewController:(id)controller
{
  v15 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v10 + 1) + 8 * i) isPresentingViewController:controllerCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)isTopmostPresentedViewController:(id)controller
{
  v15 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if (controllerCopy && ([*(*(&v10 + 1) + 8 * i) isTopmostPresentedViewController:controllerCopy] & 1) != 0)
        {
          LOBYTE(v6) = 1;
          goto LABEL_12;
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)hasActivePresentationFromProcess:(id)process
{
  v15 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasActivePresentationFromProcess:processCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasActivePresentationFromBundleIdentifier:identifierCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)hasActivePresentationForWindowScene:(id)scene
{
  v3 = [(SBTransientOverlayPresentationManager *)self transientOverlayPresenterForWindowScene:scene];
  hasActivePresentation = [v3 hasActivePresentation];

  return hasActivePresentation;
}

- (BOOL)isTopmostPresentationFromSceneWithIdentityTokenString:(id)string
{
  v15 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v10 + 1) + 8 * i) isTopmostPresentationFromSceneWithIdentityTokenString:stringCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)keyboardFocusTargetForSBWindowScene:(id)scene
{
  v3 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:scene];
  keyboardFocusTargetForTopmostPresentingScene = [v3 keyboardFocusTargetForTopmostPresentingScene];

  return keyboardFocusTargetForTopmostPresentingScene;
}

- (BOOL)hasActiveSpotlightPresentation
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasActiveSpotlightPresentation])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) prefersStatusBarActivityItemVisible])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (void)performDismissalRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  requestType = [requestCopy requestType];
  if (requestType > 1)
  {
    if (requestType == 2)
    {
      windowScene = dispatch_group_create();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
      v12 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(objectEnumerator);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            dispatch_group_enter(windowScene);
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __65__SBTransientOverlayPresentationManager_performDismissalRequest___block_invoke;
            v21[3] = &unk_2783A8C18;
            v22 = windowScene;
            [v16 performDismissalRequest:requestCopy outerCompletionHandler:v21];
          }

          v13 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __65__SBTransientOverlayPresentationManager_performDismissalRequest___block_invoke_2;
      v19[3] = &unk_2783A8C18;
      v20 = requestCopy;
      dispatch_group_notify(windowScene, MEMORY[0x277D85CD0], v19);

      goto LABEL_26;
    }

    if (requestType == 3)
    {
      windowScene = [requestCopy windowScene];
      if (windowScene)
      {
        v9 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:windowScene];
        [v9 performDismissalRequest:requestCopy outerCompletionHandler:0];
      }

      else
      {
        completionHandler = [requestCopy completionHandler];
        v9 = completionHandler;
        if (completionHandler)
        {
          (*(completionHandler + 16))(completionHandler);
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (!requestType)
    {
      completionHandler2 = [requestCopy completionHandler];
      windowScene = completionHandler2;
      if (completionHandler2)
      {
        (*(completionHandler2 + 16))(completionHandler2);
      }

      goto LABEL_26;
    }

    if (requestType == 1)
    {
      windowScene = [requestCopy viewController];
      _sbWindowScene = [windowScene _sbWindowScene];
      if (_sbWindowScene)
      {
        v8 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:_sbWindowScene];
        [v8 performDismissalRequest:requestCopy outerCompletionHandler:0];
      }

      else
      {
        completionHandler3 = [requestCopy completionHandler];
        v8 = completionHandler3;
        if (completionHandler3)
        {
          (*(completionHandler3 + 16))(completionHandler3);
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

- (void)performPresentationRequest:(id)request
{
  requestCopy = request;
  if (![(NSMapTable *)self->_presentersByWindowScene count])
  {
    [(SBTransientOverlayPresentationManager *)a2 performPresentationRequest:?];
  }

  windowScene = [requestCopy windowScene];
  if (!windowScene)
  {
    windowScene = [(SBWindowSceneManager *)self->_windowSceneManager activeDisplayWindowScene];
  }

  v6 = [(NSMapTable *)self->_presentersByWindowScene objectForKey:windowScene];
  [v6 performPresentationRequest:requestCopy];
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v11 + 1) + 8 * i) handleHeadsetButtonPress:pressCopy])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) handleHomeButtonPress])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) handleHomeButtonDoublePress])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) handleHomeButtonLongPress])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) handleLockButtonPress])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) handleVoiceCommandButtonPress])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) handleVolumeUpButtonPress])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v7 + 1) + 8 * i) handleVolumeDownButtonPress])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [objectEnumerator countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (id)idleTimerProvider:(id)provider didProposeBehavior:(id)behavior forReason:(id)reason
{
  v24 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  behaviorCopy = behavior;
  reasonCopy = reason;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  objectEnumerator = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator];
  v12 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        if (*(*(&v19 + 1) + 8 * i) == providerCopy)
        {

          v16 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper proposeIdleTimerBehavior:behaviorCopy fromProvider:providerCopy reason:reasonCopy];
          goto LABEL_11;
        }
      }

      v13 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = [(SBIdleTimerCoordinatorHelper *)self->_idleTimerCoordinatorHelper updateProvider:providerCopy behavior:behaviorCopy reason:reasonCopy];
LABEL_11:
  v17 = v16;

  return v17;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMapTable *)self->_presentersByWindowScene objectEnumerator:behavior];
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

- (void)transientOverlayScenePresenter:(id)presenter willPresentViewController:(id)controller
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
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
          [v11 transientOverlayPresentationManager:self willPresentViewController:controllerCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)transientOverlayScenePresenter:(id)presenter didDismissViewController:(id)controller wasTopmostPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
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
          [v13 transientOverlayPresentationManager:self didDismissViewController:controllerCopy wasTopmostPresentation:presentationCopy];
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
@interface SBMultiDisplayUserInteractionCoordinator
- (SBMultiDisplayUserInteractionCoordinator)init;
- (SBMultiDisplayUserInteractionCoordinatorDelegate)delegate;
- (SBWindowScene)activePointerWindowScene;
- (SBWindowScene)activeTouchDownOriginatedWindowScene;
- (SBWindowScene)activeWindowScene;
- (id)_windowSceneForEvent:(id)event;
- (void)_handleActiveDisplayQualifyingEventInWindowScene:(id)scene source:(id)source;
- (void)addActiveDisplayWindowSceneObserver:(id)observer;
- (void)addPointerInteractionObserver:(id)observer;
- (void)eventSnifferHandledPointerInteractionQualifyingEvent:(id)event;
- (void)eventSnifferHandledPointerTouchDown:(id)down;
- (void)eventSnifferHandledPointerTouchUp:(id)up;
- (void)eventSnifferHandledQualifyingContinuityTouch:(id)touch;
- (void)eventSnifferHandledQualifyingScroll:(id)scroll;
- (void)eventSnifferHandledTouchInteractionQualifyingEvent:(id)event;
- (void)handleSendEvent:(id)event;
- (void)removeActiveDisplayWindowSceneObserver:(id)observer;
- (void)updateActiveWindowScene:(id)scene forUserInteraction:(id)interaction;
- (void)windowSceneDidConnect:(id)connect;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBMultiDisplayUserInteractionCoordinator

- (SBWindowScene)activeWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_activeDisplayWindowScene);

  return WeakRetained;
}

- (SBMultiDisplayUserInteractionCoordinator)init
{
  v6.receiver = self;
  v6.super_class = SBMultiDisplayUserInteractionCoordinator;
  v2 = [(SBMultiDisplayUserInteractionCoordinator *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    sceneToEventSniffers = v2->_sceneToEventSniffers;
    v2->_sceneToEventSniffers = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (void)handleSendEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = [(SBMultiDisplayUserInteractionCoordinator *)self _windowSceneForEvent:eventCopy];
  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(NSMapTable *)self->_sceneToEventSniffers objectForKey:v5, 0];
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

          [*(*(&v11 + 1) + 8 * v10++) handleEvent:eventCopy];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (SBWindowScene)activePointerWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_activePointerWindowScene);

  return WeakRetained;
}

- (void)addPointerInteractionObserver:(id)observer
{
  observerCopy = observer;
  pointerInteractionObservers = self->_pointerInteractionObservers;
  v8 = observerCopy;
  if (!pointerInteractionObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_pointerInteractionObservers;
    self->_pointerInteractionObservers = weakObjectsHashTable;

    observerCopy = v8;
    pointerInteractionObservers = self->_pointerInteractionObservers;
  }

  [(NSHashTable *)pointerInteractionObservers addObject:observerCopy];
}

- (void)updateActiveWindowScene:(id)scene forUserInteraction:(id)interaction
{
  sceneCopy = scene;
  interactionCopy = interaction;
  if (!interactionCopy)
  {
    [SBMultiDisplayUserInteractionCoordinator updateActiveWindowScene:a2 forUserInteraction:self];
  }

  [(SBMultiDisplayUserInteractionCoordinator *)self _handleActiveDisplayQualifyingEventInWindowScene:sceneCopy source:interactionCopy];
}

- (id)_windowSceneForEvent:(id)event
{
  [event _hidEvent];
  v4 = BKSHIDEventGetBaseAttributes();
  contextID = [v4 contextID];
  if (contextID)
  {
    v6 = [MEMORY[0x277D75DA0] _windowWithContextId:contextID];
  }

  else
  {
    v6 = 0;
  }

  _fbsDisplayIdentity = [v6 _fbsDisplayIdentity];
  if (_fbsDisplayIdentity)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [WeakRetained windowSceneForDisplayIdentity:_fbsDisplayIdentity];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handleActiveDisplayQualifyingEventInWindowScene:(id)scene source:(id)source
{
  v31 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_activeDisplayWindowScene);
  if (sceneCopy)
  {
    objc_storeWeak(&self->_activeDisplayWindowScene, sceneCopy);
    if (WeakRetained != sceneCopy)
    {
      v9 = SBLogActiveDisplay();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = SBStringForActiveDisplayTrackingMethodology(1);
        _sceneIdentifier = [WeakRetained _sceneIdentifier];
        _sceneIdentifier2 = [sceneCopy _sceneIdentifier];
        *buf = 138544130;
        v24 = v10;
        v25 = 2114;
        v26 = _sceneIdentifier;
        v27 = 2114;
        v28 = _sceneIdentifier2;
        v29 = 2114;
        v30 = sourceCopy;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating active display from: %{public}@ to %{public}@ source: %{public}@", buf, 0x2Au);
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v13 = self->_activeWindowSceneObservers;
      v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v18 + 1) + 8 * v17++) multiDisplayUserInteractionCoordinator:self updatedActiveWindowScene:{sceneCopy, v18}];
          }

          while (v15 != v17);
          v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)addActiveDisplayWindowSceneObserver:(id)observer
{
  observerCopy = observer;
  activeWindowSceneObservers = self->_activeWindowSceneObservers;
  v8 = observerCopy;
  if (!activeWindowSceneObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_activeWindowSceneObservers;
    self->_activeWindowSceneObservers = weakObjectsHashTable;

    observerCopy = v8;
    activeWindowSceneObservers = self->_activeWindowSceneObservers;
  }

  [(NSHashTable *)activeWindowSceneObservers addObject:observerCopy];
}

- (void)removeActiveDisplayWindowSceneObserver:(id)observer
{
  [(NSHashTable *)self->_activeWindowSceneObservers removeObject:observer];
  if (![(NSHashTable *)self->_activeWindowSceneObservers count])
  {
    activeWindowSceneObservers = self->_activeWindowSceneObservers;
    self->_activeWindowSceneObservers = 0;
  }
}

- (void)windowSceneDidConnect:(id)connect
{
  v13[2] = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  if ([(_SBScrollEventSniffer *)connectCopy isContinuityDisplayWindowScene])
  {
    v5 = objc_alloc_init(_SBScrollEventSniffer);
    [(_SBScrollEventSniffer *)v5 setDelegate:self];
    [(_SBScrollEventSniffer *)v5 setWindowScene:connectCopy];
    v6 = objc_alloc_init(_SBContinuityTouchEventSniffer);
    [(_SBContinuityTouchEventSniffer *)v6 setDelegate:self];
    [(_SBContinuityTouchEventSniffer *)v6 setWindowScene:connectCopy];
    sceneToEventSniffers = self->_sceneToEventSniffers;
    v13[0] = v5;
    v13[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    [(NSMapTable *)sceneToEventSniffers setObject:v8 forKey:connectCopy];
  }

  else
  {
    v5 = objc_alloc_init(_SBPointerTouchDownEventSniffer);
    [(_SBScrollEventSniffer *)v5 setDelegate:self];
    [(_SBScrollEventSniffer *)v5 setWindowScene:connectCopy];
    v6 = objc_alloc_init(_SBTouchInteractionEventSniffer);
    [(_SBContinuityTouchEventSniffer *)v6 setDelegate:self];
    [(_SBContinuityTouchEventSniffer *)v6 setWindowScene:connectCopy];
    v8 = objc_alloc_init(_SBPointerInteractionEventSniffer);
    [(_SBPointerInteractionEventSniffer *)v8 setDelegate:self];
    [(_SBPointerInteractionEventSniffer *)v8 setWindowScene:connectCopy];
    v9 = objc_alloc_init(_SBScrollEventSniffer);
    [(_SBScrollEventSniffer *)v9 setDelegate:self];
    [(_SBScrollEventSniffer *)v9 setWindowScene:connectCopy];
    v10 = self->_sceneToEventSniffers;
    v12[0] = v5;
    v12[1] = v6;
    v12[2] = v8;
    v12[3] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
    [(NSMapTable *)v10 setObject:v11 forKey:connectCopy];

    connectCopy = v9;
  }
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  v13 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  [(NSMapTable *)self->_sceneToEventSniffers removeObjectForKey:disconnectCopy];
  WeakRetained = objc_loadWeakRetained(&self->_activeTouchDownOriginatedWindowScene);
  v6 = WeakRetained;
  if (WeakRetained && WeakRetained == disconnectCopy)
  {
    v7 = SBLogPointer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _sceneIdentifier = [v6 _sceneIdentifier];
      v11 = 138543362;
      v12 = _sceneIdentifier;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Clearing pointer touch down window scene: %{public}@ - scene disconnected", &v11, 0xCu);
    }

    objc_storeWeak(&self->_activeTouchDownOriginatedWindowScene, 0);
  }

  v9 = objc_loadWeakRetained(&self->_activeDisplayWindowScene);

  if (v9 == disconnectCopy)
  {
    objc_storeWeak(&self->_activeDisplayWindowScene, 0);
  }

  v10 = objc_loadWeakRetained(&self->_activePointerWindowScene);

  if (v10 == disconnectCopy)
  {
    objc_storeWeak(&self->_activePointerWindowScene, 0);
  }
}

- (void)eventSnifferHandledPointerTouchDown:(id)down
{
  v12 = *MEMORY[0x277D85DE8];
  windowScene = [down windowScene];
  if (windowScene)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeTouchDownOriginatedWindowScene);
    v6 = SBLogPointer();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (WeakRetained)
    {
      if (v7)
      {
        _sceneIdentifier = [WeakRetained _sceneIdentifier];
        v10 = 138543362;
        v11 = _sceneIdentifier;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Pointer touch down window scene: %{public}@ but we're already tracking it down in scene", &v10, 0xCu);
      }
    }

    else
    {
      if (v7)
      {
        _sceneIdentifier2 = [windowScene _sceneIdentifier];
        v10 = 138543362;
        v11 = _sceneIdentifier2;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Setting pointer touch down window scene: %{public}@", &v10, 0xCu);
      }

      objc_storeWeak(&self->_activeTouchDownOriginatedWindowScene, windowScene);
    }
  }
}

- (void)eventSnifferHandledPointerTouchUp:(id)up
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_activeTouchDownOriginatedWindowScene);
  if (WeakRetained)
  {
    v5 = SBLogPointer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      _sceneIdentifier = [WeakRetained _sceneIdentifier];
      v7 = 138543362;
      v8 = _sceneIdentifier;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Clearing pointer touch down window scene: %{public}@ - touch up", &v7, 0xCu);
    }

    objc_storeWeak(&self->_activeTouchDownOriginatedWindowScene, 0);
  }
}

- (void)eventSnifferHandledTouchInteractionQualifyingEvent:(id)event
{
  windowScene = [event windowScene];
  if (windowScene)
  {
    v5 = windowScene;
    [(SBMultiDisplayUserInteractionCoordinator *)self _handleActiveDisplayQualifyingEventInWindowScene:windowScene source:@"touch"];
    windowScene = v5;
  }
}

- (void)eventSnifferHandledPointerInteractionQualifyingEvent:(id)event
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_activePointerWindowScene);
  windowScene = [eventCopy windowScene];
  if (windowScene)
  {
    objc_storeWeak(&self->_activePointerWindowScene, windowScene);
    if (WeakRetained != windowScene)
    {
      v7 = SBLogActiveDisplay();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = SBStringForActiveDisplayTrackingMethodology(1);
        _sceneIdentifier = [WeakRetained _sceneIdentifier];
        _sceneIdentifier2 = [windowScene _sceneIdentifier];
        *buf = 138543874;
        v22 = v8;
        v23 = 2114;
        v24 = _sceneIdentifier;
        v25 = 2114;
        v26 = _sceneIdentifier2;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating active pointer display from: %{public}@ to %{public}@", buf, 0x20u);
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = [(NSHashTable *)self->_pointerInteractionObservers copy];
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v16 + 1) + 8 * v15++) pointerDidMoveToFromWindowScene:WeakRetained toWindowScene:windowScene];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }

  [(SBMultiDisplayUserInteractionCoordinator *)self _handleActiveDisplayQualifyingEventInWindowScene:windowScene source:@"pointer"];
}

- (void)eventSnifferHandledQualifyingScroll:(id)scroll
{
  windowScene = [scroll windowScene];
  if (windowScene)
  {
    v5 = windowScene;
    [(SBMultiDisplayUserInteractionCoordinator *)self _handleActiveDisplayQualifyingEventInWindowScene:windowScene source:@"scroll"];
    windowScene = v5;
  }
}

- (void)eventSnifferHandledQualifyingContinuityTouch:(id)touch
{
  windowScene = [touch windowScene];
  if (windowScene)
  {
    v5 = windowScene;
    [(SBMultiDisplayUserInteractionCoordinator *)self _handleActiveDisplayQualifyingEventInWindowScene:windowScene source:@"continuity touch"];
    windowScene = v5;
  }
}

- (SBMultiDisplayUserInteractionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBWindowScene)activeTouchDownOriginatedWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_activeTouchDownOriginatedWindowScene);

  return WeakRetained;
}

- (void)updateActiveWindowScene:(uint64_t)a1 forUserInteraction:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMultiDisplayUserInteractionCoordinator.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"actionDescription"}];
}

@end
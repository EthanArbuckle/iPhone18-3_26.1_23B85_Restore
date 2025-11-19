@interface SBMultiDisplayUserInteractionCoordinator
- (SBMultiDisplayUserInteractionCoordinator)init;
- (SBMultiDisplayUserInteractionCoordinatorDelegate)delegate;
- (SBWindowScene)activePointerWindowScene;
- (SBWindowScene)activeTouchDownOriginatedWindowScene;
- (SBWindowScene)activeWindowScene;
- (id)_windowSceneForEvent:(id)a3;
- (void)_handleActiveDisplayQualifyingEventInWindowScene:(id)a3 source:(id)a4;
- (void)addActiveDisplayWindowSceneObserver:(id)a3;
- (void)addPointerInteractionObserver:(id)a3;
- (void)eventSnifferHandledPointerInteractionQualifyingEvent:(id)a3;
- (void)eventSnifferHandledPointerTouchDown:(id)a3;
- (void)eventSnifferHandledPointerTouchUp:(id)a3;
- (void)eventSnifferHandledQualifyingContinuityTouch:(id)a3;
- (void)eventSnifferHandledQualifyingScroll:(id)a3;
- (void)eventSnifferHandledTouchInteractionQualifyingEvent:(id)a3;
- (void)handleSendEvent:(id)a3;
- (void)removeActiveDisplayWindowSceneObserver:(id)a3;
- (void)updateActiveWindowScene:(id)a3 forUserInteraction:(id)a4;
- (void)windowSceneDidConnect:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
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
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    sceneToEventSniffers = v2->_sceneToEventSniffers;
    v2->_sceneToEventSniffers = v3;
  }

  return v2;
}

- (void)handleSendEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBMultiDisplayUserInteractionCoordinator *)self _windowSceneForEvent:v4];
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

          [*(*(&v11 + 1) + 8 * v10++) handleEvent:v4];
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

- (void)addPointerInteractionObserver:(id)a3
{
  v4 = a3;
  pointerInteractionObservers = self->_pointerInteractionObservers;
  v8 = v4;
  if (!pointerInteractionObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_pointerInteractionObservers;
    self->_pointerInteractionObservers = v6;

    v4 = v8;
    pointerInteractionObservers = self->_pointerInteractionObservers;
  }

  [(NSHashTable *)pointerInteractionObservers addObject:v4];
}

- (void)updateActiveWindowScene:(id)a3 forUserInteraction:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (!v7)
  {
    [SBMultiDisplayUserInteractionCoordinator updateActiveWindowScene:a2 forUserInteraction:self];
  }

  [(SBMultiDisplayUserInteractionCoordinator *)self _handleActiveDisplayQualifyingEventInWindowScene:v8 source:v7];
}

- (id)_windowSceneForEvent:(id)a3
{
  [a3 _hidEvent];
  v4 = BKSHIDEventGetBaseAttributes();
  v5 = [v4 contextID];
  if (v5)
  {
    v6 = [MEMORY[0x277D75DA0] _windowWithContextId:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 _fbsDisplayIdentity];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [WeakRetained windowSceneForDisplayIdentity:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handleActiveDisplayQualifyingEventInWindowScene:(id)a3 source:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_activeDisplayWindowScene);
  if (v6)
  {
    objc_storeWeak(&self->_activeDisplayWindowScene, v6);
    if (WeakRetained != v6)
    {
      v9 = SBLogActiveDisplay();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = SBStringForActiveDisplayTrackingMethodology(1);
        v11 = [WeakRetained _sceneIdentifier];
        v12 = [v6 _sceneIdentifier];
        *buf = 138544130;
        v24 = v10;
        v25 = 2114;
        v26 = v11;
        v27 = 2114;
        v28 = v12;
        v29 = 2114;
        v30 = v7;
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

            [*(*(&v18 + 1) + 8 * v17++) multiDisplayUserInteractionCoordinator:self updatedActiveWindowScene:{v6, v18}];
          }

          while (v15 != v17);
          v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)addActiveDisplayWindowSceneObserver:(id)a3
{
  v4 = a3;
  activeWindowSceneObservers = self->_activeWindowSceneObservers;
  v8 = v4;
  if (!activeWindowSceneObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_activeWindowSceneObservers;
    self->_activeWindowSceneObservers = v6;

    v4 = v8;
    activeWindowSceneObservers = self->_activeWindowSceneObservers;
  }

  [(NSHashTable *)activeWindowSceneObservers addObject:v4];
}

- (void)removeActiveDisplayWindowSceneObserver:(id)a3
{
  [(NSHashTable *)self->_activeWindowSceneObservers removeObject:a3];
  if (![(NSHashTable *)self->_activeWindowSceneObservers count])
  {
    activeWindowSceneObservers = self->_activeWindowSceneObservers;
    self->_activeWindowSceneObservers = 0;
  }
}

- (void)windowSceneDidConnect:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(_SBScrollEventSniffer *)v4 isContinuityDisplayWindowScene])
  {
    v5 = objc_alloc_init(_SBScrollEventSniffer);
    [(_SBScrollEventSniffer *)v5 setDelegate:self];
    [(_SBScrollEventSniffer *)v5 setWindowScene:v4];
    v6 = objc_alloc_init(_SBContinuityTouchEventSniffer);
    [(_SBContinuityTouchEventSniffer *)v6 setDelegate:self];
    [(_SBContinuityTouchEventSniffer *)v6 setWindowScene:v4];
    sceneToEventSniffers = self->_sceneToEventSniffers;
    v13[0] = v5;
    v13[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    [(NSMapTable *)sceneToEventSniffers setObject:v8 forKey:v4];
  }

  else
  {
    v5 = objc_alloc_init(_SBPointerTouchDownEventSniffer);
    [(_SBScrollEventSniffer *)v5 setDelegate:self];
    [(_SBScrollEventSniffer *)v5 setWindowScene:v4];
    v6 = objc_alloc_init(_SBTouchInteractionEventSniffer);
    [(_SBContinuityTouchEventSniffer *)v6 setDelegate:self];
    [(_SBContinuityTouchEventSniffer *)v6 setWindowScene:v4];
    v8 = objc_alloc_init(_SBPointerInteractionEventSniffer);
    [(_SBPointerInteractionEventSniffer *)v8 setDelegate:self];
    [(_SBPointerInteractionEventSniffer *)v8 setWindowScene:v4];
    v9 = objc_alloc_init(_SBScrollEventSniffer);
    [(_SBScrollEventSniffer *)v9 setDelegate:self];
    [(_SBScrollEventSniffer *)v9 setWindowScene:v4];
    v10 = self->_sceneToEventSniffers;
    v12[0] = v5;
    v12[1] = v6;
    v12[2] = v8;
    v12[3] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
    [(NSMapTable *)v10 setObject:v11 forKey:v4];

    v4 = v9;
  }
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMapTable *)self->_sceneToEventSniffers removeObjectForKey:v4];
  WeakRetained = objc_loadWeakRetained(&self->_activeTouchDownOriginatedWindowScene);
  v6 = WeakRetained;
  if (WeakRetained && WeakRetained == v4)
  {
    v7 = SBLogPointer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 _sceneIdentifier];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Clearing pointer touch down window scene: %{public}@ - scene disconnected", &v11, 0xCu);
    }

    objc_storeWeak(&self->_activeTouchDownOriginatedWindowScene, 0);
  }

  v9 = objc_loadWeakRetained(&self->_activeDisplayWindowScene);

  if (v9 == v4)
  {
    objc_storeWeak(&self->_activeDisplayWindowScene, 0);
  }

  v10 = objc_loadWeakRetained(&self->_activePointerWindowScene);

  if (v10 == v4)
  {
    objc_storeWeak(&self->_activePointerWindowScene, 0);
  }
}

- (void)eventSnifferHandledPointerTouchDown:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 windowScene];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activeTouchDownOriginatedWindowScene);
    v6 = SBLogPointer();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (WeakRetained)
    {
      if (v7)
      {
        v8 = [WeakRetained _sceneIdentifier];
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Pointer touch down window scene: %{public}@ but we're already tracking it down in scene", &v10, 0xCu);
      }
    }

    else
    {
      if (v7)
      {
        v9 = [v4 _sceneIdentifier];
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Setting pointer touch down window scene: %{public}@", &v10, 0xCu);
      }

      objc_storeWeak(&self->_activeTouchDownOriginatedWindowScene, v4);
    }
  }
}

- (void)eventSnifferHandledPointerTouchUp:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_activeTouchDownOriginatedWindowScene);
  if (WeakRetained)
  {
    v5 = SBLogPointer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained _sceneIdentifier];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Clearing pointer touch down window scene: %{public}@ - touch up", &v7, 0xCu);
    }

    objc_storeWeak(&self->_activeTouchDownOriginatedWindowScene, 0);
  }
}

- (void)eventSnifferHandledTouchInteractionQualifyingEvent:(id)a3
{
  v4 = [a3 windowScene];
  if (v4)
  {
    v5 = v4;
    [(SBMultiDisplayUserInteractionCoordinator *)self _handleActiveDisplayQualifyingEventInWindowScene:v4 source:@"touch"];
    v4 = v5;
  }
}

- (void)eventSnifferHandledPointerInteractionQualifyingEvent:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_activePointerWindowScene);
  v6 = [v4 windowScene];
  if (v6)
  {
    objc_storeWeak(&self->_activePointerWindowScene, v6);
    if (WeakRetained != v6)
    {
      v7 = SBLogActiveDisplay();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = SBStringForActiveDisplayTrackingMethodology(1);
        v9 = [WeakRetained _sceneIdentifier];
        v10 = [v6 _sceneIdentifier];
        *buf = 138543874;
        v22 = v8;
        v23 = 2114;
        v24 = v9;
        v25 = 2114;
        v26 = v10;
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

            [*(*(&v16 + 1) + 8 * v15++) pointerDidMoveToFromWindowScene:WeakRetained toWindowScene:v6];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }

  [(SBMultiDisplayUserInteractionCoordinator *)self _handleActiveDisplayQualifyingEventInWindowScene:v6 source:@"pointer"];
}

- (void)eventSnifferHandledQualifyingScroll:(id)a3
{
  v4 = [a3 windowScene];
  if (v4)
  {
    v5 = v4;
    [(SBMultiDisplayUserInteractionCoordinator *)self _handleActiveDisplayQualifyingEventInWindowScene:v4 source:@"scroll"];
    v4 = v5;
  }
}

- (void)eventSnifferHandledQualifyingContinuityTouch:(id)a3
{
  v4 = [a3 windowScene];
  if (v4)
  {
    v5 = v4;
    [(SBMultiDisplayUserInteractionCoordinator *)self _handleActiveDisplayQualifyingEventInWindowScene:v4 source:@"continuity touch"];
    v4 = v5;
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
@interface SBMousePointerManager
- (BOOL)shouldAllowHardwarePointingDevices;
- (CGAffineTransform)rootWindowTransformForEmbeddedDisplay;
- (SBMousePointerManager)init;
- (id)requestPointerActivationForScene:(id)a3;
- (id)setSystemPointerInteractionContextID:(unsigned int)a3 displayWithHardwareIdentifier:(id)a4;
- (void)_notifyObserversPointingDeviceBecameAvailable:(BOOL)a3;
- (void)_setPointerUIDWithConnectedDeviceCount:(unint64_t)a3;
- (void)_updatePointerAssertionsAndScenes;
- (void)_updateScenesForPointerWithHardwareAttached:(BOOL)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)mousePointerDevicesDidChange:(id)a3;
- (void)pointerClientController:(id)a3 sceneDidActivate:(id)a4;
- (void)pointerClientController:(id)a3 sceneWillDeactivate:(id)a4;
- (void)setRootWindowTransformForEmbeddedDisplay:(CGAffineTransform *)a3;
@end

@implementation SBMousePointerManager

- (SBMousePointerManager)init
{
  v13.receiver = self;
  v13.super_class = SBMousePointerManager;
  v2 = [(SBMousePointerManager *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CF0720] sharedInstance];
    mousePointerService = v2->_mousePointerService;
    v2->_mousePointerService = v3;

    v5 = [(BKSMousePointerService *)v2->_mousePointerService addPointerDeviceObserver:v2];
    mousePointerDeviceObserverToken = v2->_mousePointerDeviceObserverToken;
    v2->_mousePointerDeviceObserverToken = v5;

    v7 = objc_alloc_init(MEMORY[0x277D3DF50]);
    pointerClientController = v2->_pointerClientController;
    v2->_pointerClientController = v7;

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v2, _SBMousePointerManagerAssistiveTouchEnabledDidChange, *MEMORY[0x277D81C48], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v10 = MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&v2->_rootWindowTransformForEmbeddedDisplay.a = *MEMORY[0x277CBF2C0];
    *&v2->_rootWindowTransformForEmbeddedDisplay.c = v11;
    *&v2->_rootWindowTransformForEmbeddedDisplay.tx = *(v10 + 32);
  }

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_mousePointerDeviceObserverToken invalidate];
  mousePointerDeviceObserverToken = self->_mousePointerDeviceObserverToken;
  self->_mousePointerDeviceObserverToken = 0;

  [(PSPointerClientController *)self->_pointerClientController invalidate];
  pointerClientController = self->_pointerClientController;
  self->_pointerClientController = 0;

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x277D81C48], 0);
  v6.receiver = self;
  v6.super_class = SBMousePointerManager;
  [(SBMousePointerManager *)&v6 dealloc];
}

- (id)setSystemPointerInteractionContextID:(unsigned int)a3 displayWithHardwareIdentifier:(id)a4
{
  v4 = *&a3;
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogPointer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Setting system pointer interaction contextID: 0x%x for displayUUID %{public}@", v10, 0x12u);
  }

  v8 = [(PSPointerClientController *)self->_pointerClientController setSystemPointerInteractionContextID:v4 displayUUID:v6];
  if (!v8)
  {
    [SBMousePointerManager setSystemPointerInteractionContextID:displayWithHardwareIdentifier:];
  }

  return v8;
}

- (void)setRootWindowTransformForEmbeddedDisplay:(CGAffineTransform *)a3
{
  BSDispatchQueueAssertMain();
  v5 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v5;
  *&t1.tx = *&a3->tx;
  v6 = *&self->_rootWindowTransformForEmbeddedDisplay.c;
  *&v9.a = *&self->_rootWindowTransformForEmbeddedDisplay.a;
  *&v9.c = v6;
  *&v9.tx = *&self->_rootWindowTransformForEmbeddedDisplay.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v9))
  {
    v7 = *&a3->a;
    v8 = *&a3->tx;
    *&self->_rootWindowTransformForEmbeddedDisplay.c = *&a3->c;
    *&self->_rootWindowTransformForEmbeddedDisplay.tx = v8;
    *&self->_rootWindowTransformForEmbeddedDisplay.a = v7;
    [(SBMousePointerManager *)self _updatePointerAssertionsAndScenes];
  }
}

- (BOOL)shouldAllowHardwarePointingDevices
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return (v3 & 0xFFFFFFFFFFFFFFFBLL) == 1 || _AXSAssistiveTouchEnabled() != 0;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (id)requestPointerActivationForScene:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 _sceneIdentifier];
  v7 = SBLogPointer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Requesting pointer for scene %{public}@", buf, 0xCu);
  }

  if (!self->_systemClientController)
  {
    v8 = objc_opt_new();
    systemClientController = self->_systemClientController;
    self->_systemClientController = v8;

    [(PSPointerSystemClientController *)self->_systemClientController setDelegate:self];
  }

  springBoardScenesToPointerAssertions = self->_springBoardScenesToPointerAssertions;
  if (!springBoardScenesToPointerAssertions)
  {
    v11 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    v12 = self->_springBoardScenesToPointerAssertions;
    self->_springBoardScenesToPointerAssertions = v11;

    springBoardScenesToPointerAssertions = self->_springBoardScenesToPointerAssertions;
  }

  v13 = [(NSMapTable *)springBoardScenesToPointerAssertions objectForKey:v5];
  if (v13)
  {
    [SBMousePointerManager requestPointerActivationForScene:];
  }

  v14 = [v5 _sbDisplayConfiguration];
  v15 = [v14 identity];

  objc_initWeak(buf, self);
  v16 = objc_alloc(MEMORY[0x277CF0CE8]);
  v17 = MEMORY[0x277D85CD0];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __58__SBMousePointerManager_requestPointerActivationForScene___block_invoke;
  v26 = &unk_2783B1A48;
  v18 = v6;
  v27 = v18;
  objc_copyWeak(v31, buf);
  v19 = v5;
  v28 = v19;
  v20 = v15;
  v31[1] = a2;
  v29 = v20;
  v30 = self;
  v21 = [v16 initWithIdentifier:@"com.apple.springboard.SBMousePointerManager" forReason:v18 queue:MEMORY[0x277D85CD0] invalidationBlock:&v23];

  [(NSMapTable *)self->_springBoardScenesToPointerAssertions setObject:v21 forKey:v19, v23, v24, v25, v26];
  [(SBMousePointerManager *)self _updatePointerAssertionsAndScenes];

  objc_destroyWeak(v31);
  objc_destroyWeak(buf);

  return v21;
}

void __58__SBMousePointerManager_requestPointerActivationForScene___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SBLogPointer();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Invalidating pointer for scene %{public}@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = [*(a1 + 40) _sbDisplayConfiguration];
    v6 = [v5 identity];

    if (([v6 isEqual:*(a1 + 48)] & 1) == 0)
    {
      __58__SBMousePointerManager_requestPointerActivationForScene___block_invoke_cold_1();
    }

    v7 = *(WeakRetained + 4);
    v8 = [*(a1 + 40) _sbDisplayConfiguration];
    [v7 invalidateScenesForPointerForDisplayConfiguration:v8];

    [*(WeakRetained + 9) removeObjectForKey:*(a1 + 40)];
  }
}

- (void)mousePointerDevicesDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SBMousePointerManager_mousePointerDevicesDidChange___block_invoke;
  block[3] = &unk_2783A9CE8;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __54__SBMousePointerManager_mousePointerDevicesDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setPointerUIDWithConnectedDeviceCount:{objc_msgSend(*(a1 + 32), "count")}];
}

- (void)pointerClientController:(id)a3 sceneDidActivate:(id)a4
{
  v4 = a4;
  v5 = [v4 settings];
  v8 = [v5 sb_displayIdentityForSceneManagers];

  v6 = +[SBSceneManagerCoordinator sharedInstance];
  v7 = [v6 sceneManagerForDisplayIdentity:v8];

  [v7 addPointerUISceneToPresentationBinder:v4];
}

- (void)pointerClientController:(id)a3 sceneWillDeactivate:(id)a4
{
  v4 = a4;
  v5 = [v4 settings];
  v8 = [v5 sb_displayIdentityForSceneManagers];

  v6 = +[SBSceneManagerCoordinator sharedInstance];
  v7 = [v6 sceneManagerForDisplayIdentity:v8];

  [v7 removePointerUISceneFromPresentationBinder:v4];
}

- (void)_notifyObserversPointingDeviceBecameAvailable:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) mousePointerManager:self hardwarePointingDeviceAttachedDidChange:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_setPointerUIDWithConnectedDeviceCount:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_connectedPointingDevicesCount != a3)
  {
    self->_connectedPointingDevicesCount = a3;
    [(SBMousePointerManager *)self _updatePointerAssertionsAndScenes];
    v4 = SBLogPointer();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      connectedPointingDevicesCount = self->_connectedPointingDevicesCount;
      v6 = 134217984;
      v7 = connectedPointingDevicesCount;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Updating to %lu pointing devices connected", &v6, 0xCu);
    }
  }
}

- (void)_updatePointerAssertionsAndScenes
{
  v3 = [(SBMousePointerManager *)self shouldAllowHardwarePointingDevices];
  suppressEventsAssertion = self->_suppressEventsAssertion;
  if (!v3)
  {
    if (!suppressEventsAssertion)
    {
      v7 = [(BKSMousePointerService *)self->_mousePointerService suppressPointerEventsForReason:@"SpringBoard policy"];
      v8 = self->_suppressEventsAssertion;
      self->_suppressEventsAssertion = v7;
    }

    goto LABEL_10;
  }

  if (suppressEventsAssertion)
  {
    [(BSInvalidatable *)suppressEventsAssertion invalidate];
    v5 = self->_suppressEventsAssertion;
    self->_suppressEventsAssertion = 0;
  }

  if (!self->_connectedPointingDevicesCount)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if ([(NSMapTable *)self->_springBoardScenesToPointerAssertions count])
  {
    if (self->_serviceKeepAliveAssertion)
    {
      v6 = 1;
    }

    else
    {
      v10 = [(PSPointerClientController *)self->_pointerClientController acquireServiceKeepAliveAssertion];
      serviceKeepAliveAssertion = self->_serviceKeepAliveAssertion;
      self->_serviceKeepAliveAssertion = v10;

      v6 = 1;
      [(SBMousePointerManager *)self _notifyObserversPointingDeviceBecameAvailable:1];
    }

    goto LABEL_13;
  }

  v6 = 1;
LABEL_11:
  if (self->_serviceKeepAliveAssertion)
  {
    [(SBMousePointerManager *)self _notifyObserversPointingDeviceBecameAvailable:0];
    [(BSInvalidatable *)self->_serviceKeepAliveAssertion invalidate];
    v9 = self->_serviceKeepAliveAssertion;
    self->_serviceKeepAliveAssertion = 0;
  }

LABEL_13:
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SBMousePointerManager__updatePointerAssertionsAndScenes__block_invoke;
  block[3] = &unk_2783B1A70;
  objc_copyWeak(&v13, &location);
  v14 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __58__SBMousePointerManager__updatePointerAssertionsAndScenes__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateScenesForPointerWithHardwareAttached:*(a1 + 40)];
}

- (void)_updateScenesForPointerWithHardwareAttached:(BOOL)a3
{
  v3 = a3;
  v31 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_springBoardScenesToPointerAssertions;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
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
        v11 = [v10 _sbDisplayConfiguration];
        if (!v11)
        {
          [SBMousePointerManager _updateScenesForPointerWithHardwareAttached:];
        }

        v12 = SBLogPointer();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        if (v3)
        {
          if (v13)
          {
            v16 = [v10 _sceneIdentifier];
            v17 = [v11 hardwareIdentifier];
            systemClientController = self->_systemClientController;
            *buf = 138543874;
            *&buf[4] = v16;
            *&buf[12] = 2114;
            *&buf[14] = v17;
            *&buf[22] = 2048;
            *&buf[24] = systemClientController;
            _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "Activating pointer scenes for SB windowScene %{public}@ (%{public}@) - systemClientController: %p", buf, 0x20u);
          }

          [(PSPointerSystemClientController *)self->_systemClientController prepareScenesForPointerForDisplayConfiguration:v11];
          if ([v11 isMainDisplay] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v14 = self->_systemClientController;
            v15 = *&self->_rootWindowTransformForEmbeddedDisplay.c;
            *buf = *&self->_rootWindowTransformForEmbeddedDisplay.a;
            *&buf[16] = v15;
            v29 = *&self->_rootWindowTransformForEmbeddedDisplay.tx;
            [(PSPointerSystemClientController *)v14 setRootWindowTransform:buf forDisplayConfiguration:v11];
          }
        }

        else
        {
          if (v13)
          {
            v23 = [v10 _sceneIdentifier];
            v19 = [v11 identity];
            v20 = [v11 hardwareIdentifier];
            v21 = self->_systemClientController;
            *buf = 138544130;
            *&buf[4] = v23;
            *&buf[12] = 2112;
            *&buf[14] = v19;
            *&buf[22] = 2114;
            *&buf[24] = v20;
            v22 = v20;
            LOWORD(v29) = 2048;
            *(&v29 + 2) = v21;
            _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "Invalidating pointer scenes for SB windowScene %{public}@ displayIdentity: %@ (%{public}@) - systemClientController: %p", buf, 0x2Au);
          }

          [(PSPointerSystemClientController *)self->_systemClientController invalidateScenesForPointerForDisplayConfiguration:v11];
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }
}

- (CGAffineTransform)rootWindowTransformForEmbeddedDisplay
{
  v3 = *&self[2].a;
  *&retstr->a = *&self[1].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].c;
  return self;
}

- (void)setSystemPointerInteractionContextID:displayWithHardwareIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBMousePointerManager.m" lineNumber:77 description:{@"failed to set the system pointer interaction contextID on display: %@, did you already set it and forget to invalidate it?", v0}];
}

- (void)requestPointerActivationForScene:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBMousePointerManager.m" lineNumber:122 description:{@"attempting to take an assertion when we already have one: %@", v0}];
}

void __58__SBMousePointerManager_requestPointerActivationForScene___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:*(v2 + 72) object:*(v2 + 56) file:@"SBMousePointerManager.m" lineNumber:132 description:{@"the display identity of our windowScene changed from %@ to %@; the world has changed around us and we've been forgotten.", *v1, v0}];
}

- (void)_updateScenesForPointerWithHardwareAttached:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBMousePointerManager.m" lineNumber:241 description:{@"window scene %@ doesn't have a displayConfiguration, why are we tracking disconnected scenes???", v0}];
}

@end
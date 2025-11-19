@interface SBProximitySensorManager
- (NSString)description;
- (SBProximitySensorManager)init;
- (SBProximitySensorManager)initWithHIDInterface:(id)a3 hardwareDefaults:(id)a4 interfaceOrientationProvider:(id)a5;
- (id)suppressBacklightChangesForReason:(id)a3;
- (void)_disableProx;
- (void)_enableProx;
- (void)_reloadDefaults;
- (void)_setObjectInCrudeProximity:(BOOL)a3;
- (void)_setObjectInProximity:(BOOL)a3 detectionMode:(int)a4 postToApps:(BOOL)a5;
- (void)_setProximityDetectionEnabled:(BOOL)a3;
- (void)_setProximityDetectionPermitted:(BOOL)a3;
- (void)_updateProxState;
- (void)addObserver:(id)a3;
- (void)client:(id)a3 wantsProximityDetectionEnabled:(BOOL)a4 disableGracePeriod:(BOOL)a5;
- (void)dealloc;
- (void)processHIDEvent:(__IOHIDEvent *)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SBProximitySensorManager

- (void)_updateProxState
{
  if ([(SBProximitySensorManager *)self _clientsWantDetectionEnabled]&& ![(SBProximitySensorManager *)self isProximityDetectionEnabled])
  {
    if (([(SpringBoard *)self->_interfaceOrientationProvider activeInterfaceOrientation]- 3) >= 2)
    {

      [(SBProximitySensorManager *)self _enableProx];
    }
  }

  else if ([(SBProximitySensorManager *)self isProximityDetectionEnabled]&& (![(SBProximitySensorManager *)self _clientsWantDetectionEnabled]|| ([(SpringBoard *)self->_interfaceOrientationProvider activeInterfaceOrientation]- 3) <= 1) && !self->_objectInProximity)
  {

    [(SBProximitySensorManager *)self _disableProx];
  }
}

- (SBProximitySensorManager)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"init not available"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"SBProximitySensorManager.m";
    v17 = 1024;
    v18 = 55;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (SBProximitySensorManager)initWithHIDInterface:(id)a3 hardwareDefaults:(id)a4 interfaceOrientationProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = SBProximitySensorManager;
  v12 = [(SBProximitySensorManager *)&v24 init];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clientsWantingDetectionEnabled = v12->_clientsWantingDetectionEnabled;
    v12->_clientsWantingDetectionEnabled = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clientsWantingGracePeriodDisabled = v12->_clientsWantingGracePeriodDisabled;
    v12->_clientsWantingGracePeriodDisabled = v15;

    objc_storeStrong(&v12->_hidInterface, a3);
    objc_storeStrong(&v12->_hardwareDefaults, a4);
    objc_storeStrong(&v12->_interfaceOrientationProvider, a5);
    hardwareDefaults = v12->_hardwareDefaults;
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"disableProximitySensor"];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __95__SBProximitySensorManager_initWithHIDInterface_hardwareDefaults_interfaceOrientationProvider___block_invoke;
    v22[3] = &unk_2783A8C18;
    v19 = v12;
    v23 = v19;
    v20 = [(SBHardwareDefaults *)hardwareDefaults observeDefault:v18 onQueue:MEMORY[0x277D85CD0] withBlock:v22];

    [(SBProximitySensorManager *)v19 _reloadDefaults];
    [(SpringBoard *)v12->_interfaceOrientationProvider addActiveOrientationObserver:v19];
  }

  return v12;
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_suppressBacklightChangesAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBProximitySensorManager;
  [(SBProximitySensorManager *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_proximityDetectionEnabled withName:@"_proximityDetectionEnabled"];
  v5 = [v3 appendBool:self->_proximityDetectionPermitted withName:@"_proximityDetectionPermitted"];
  v6 = [v3 appendBool:self->_objectInProximity withName:@"_objectInProximity"];
  v7 = [v3 appendObject:self->_clientsWantingDetectionEnabled withName:@"_clientsWantingDetectionEnabled"];
  v8 = [v3 appendObject:self->_clientsWantingGracePeriodDisabled withName:@"_clientsWantingGracePeriodDisabled"];
  v9 = [v3 build];

  return v9;
}

- (void)client:(id)a3 wantsProximityDetectionEnabled:(BOOL)a4 disableGracePeriod:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (!v9)
  {
    [SBProximitySensorManager client:a2 wantsProximityDetectionEnabled:self disableGracePeriod:?];
  }

  v10 = SBLogProximitySensor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543874;
    v13 = v9;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Client:%{public}@ wants active proximity sensor:%{BOOL}u disable grace period:%{BOOL}u", &v12, 0x18u);
  }

  clientsWantingDetectionEnabled = self->_clientsWantingDetectionEnabled;
  if (v6)
  {
    [(NSMutableSet *)clientsWantingDetectionEnabled addObject:v9];
    if (v5)
    {
      [(NSMutableSet *)self->_clientsWantingGracePeriodDisabled addObject:v9];
    }
  }

  else
  {
    [(NSMutableSet *)clientsWantingDetectionEnabled removeObject:v9];
    [(NSMutableSet *)self->_clientsWantingGracePeriodDisabled removeObject:v9];
  }

  [(SBProximitySensorManager *)self _updateProxState];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    v4 = v8;
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)processHIDEvent:(__IOHIDEvent *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (IOHIDEventGetType() != 14)
  {
    [(SBProximitySensorManager *)a2 processHIDEvent:?];
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v6 = SBLogProximitySensor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = BKSHIDEventGetConciseDescription();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "prox! %{public}@", &v10, 0xCu);
  }

  v8 = BKSHIDEventGetProximityAttributes();
  v9 = [v8 proximityDetectionMode];
  [(SBProximitySensorManager *)self _setObjectInCrudeProximity:(IntegerValue >> 10) & 1];
  [(SBProximitySensorManager *)self _setObjectInProximity:(IntegerValue >> 6) & 1 detectionMode:v9];
}

- (id)suppressBacklightChangesForReason:(id)a3
{
  v4 = a3;
  suppressBacklightChangesAssertion = self->_suppressBacklightChangesAssertion;
  if (!suppressBacklightChangesAssertion)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__SBProximitySensorManager_suppressBacklightChangesForReason___block_invoke;
    v12[3] = &unk_2783BB090;
    v12[4] = self;
    v6 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"SuppressProxBacklightChanges" stateDidChangeHandler:v12];
    v7 = self->_suppressBacklightChangesAssertion;
    self->_suppressBacklightChangesAssertion = v6;

    v8 = self->_suppressBacklightChangesAssertion;
    v9 = SBLogProximitySensor();
    [(BSCompoundAssertion *)v8 setLog:v9];

    suppressBacklightChangesAssertion = self->_suppressBacklightChangesAssertion;
  }

  v10 = [(BSCompoundAssertion *)suppressBacklightChangesAssertion acquireForReason:v4];

  return v10;
}

void __62__SBProximitySensorManager_suppressBacklightChangesForReason___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 isActive];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(*(a1 + 32) + 40) allObjects];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 proximitySensorManager:*(a1 + 32) shouldSuppressBacklightChanges:v3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_setObjectInCrudeProximity:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if (self->_objectInCrudeProximity != a3 || !a3)
  {
    self->_objectInCrudeProximity = a3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSHashTable *)self->_observers allObjects];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 proximitySensorManager:self crudeProximityDidChange:v3];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setObjectInProximity:(BOOL)a3 detectionMode:(int)a4 postToApps:(BOOL)a5
{
  v55[1] = *MEMORY[0x277D85DE8];
  if (self->_objectInProximity != a3)
  {
    v5 = *&a4;
    v6 = a3;
    cf = a5;
    self->_objectInProximity = a3;
    self->_proximityDetectionMode = a4;
    v8 = SBLogProximitySensor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromBKSHIDServicesProximityDetectionMode();
      *buf = 67109378;
      v47 = v6;
      v48 = 2114;
      v49 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "objectInProximity is now:%{BOOL}u mode:(%{public}@)", buf, 0x12u);
    }

    [(SBProximitySensorManager *)self _updateProxState];
    v54 = *MEMORY[0x277D67B30];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_objectInProximity];
    v55[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v35 = v11;
    [v12 postNotificationName:*MEMORY[0x277D67AA0] object:0 userInfo:v11];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = [(NSHashTable *)self->_observers allObjects];
    v14 = [v13 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v43;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v18 proximitySensorManager:self objectWithinProximityDidChange:v6 detectionMode:v5];
          }

          else if (objc_opt_respondsToSelector())
          {
            [v18 proximitySensorManager:self objectWithinProximityDidChange:v6];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v15);
    }

    if (cf)
    {
      mach_absolute_time();
      cfa = IOHIDEventCreateProximtyEvent();
      v19 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      v20 = [v19 externalForegroundApplicationSceneHandles];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v39;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v39 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v38 + 1) + 8 * j) scene];
            v27 = [v26 uiClientSettings];
            v28 = [v27 proximityDetectionModes];

            if ((v28 & 2) != 0)
            {
              v29 = [v26 clientHandle];
              v30 = [v29 bundleIdentifier];

              v31 = [v26 clientProcess];
              v32 = [v31 state];
              v33 = [v32 pid];

              v34 = SBLogProximitySensor();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109634;
                v47 = v6;
                v48 = 2114;
                v49 = v30;
                v50 = 1024;
                v51 = v33;
                _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "sending prox notification (object in proximity:%{BOOL}u) to %{public}@ (pid %d)", buf, 0x18u);
              }

              BKSHIDEventSendToProcess();
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v38 objects:v52 count:16];
        }

        while (v23);
      }

      CFRelease(cfa);
    }
  }
}

- (void)_setProximityDetectionEnabled:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_proximityDetectionEnabled != a3)
  {
    v3 = a3;
    self->_proximityDetectionEnabled = a3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSHashTable *)self->_observers allObjects];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 proximitySensorManager:self proximityDetectionEnabledDidChange:v3];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setProximityDetectionPermitted:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_proximityDetectionPermitted != a3)
  {
    v3 = a3;
    self->_proximityDetectionPermitted = a3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSHashTable *)self->_observers allObjects];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 proximitySensorManager:self proximityDetectionPermittedDidChange:v3];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_reloadDefaults
{
  v3 = [(SBHardwareDefaults *)self->_hardwareDefaults disableProximitySensor]^ 1;

  [(SBProximitySensorManager *)self _setProximityDetectionPermitted:v3];
}

- (void)_enableProx
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SBProximitySensorManager *)self isProximityDetectionPermitted])
  {
    [(SBProximitySensorManager *)self _setProximityDetectionEnabled:1];
    v3 = +[SBMainWorkspace sharedInstanceIfExists];
    v4 = [v3 currentTransaction];
    v5 = [v4 transitionRequest];
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

    v13 = v8;

    v14 = [v13 source] == 61;
    [(SBProximitySensorControlling *)self->_hidInterface setProximityDetectionEnabled:1 changeSource:4 * v14];
    v9 = SBLogProximitySensor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      clientsWantingDetectionEnabled = self->_clientsWantingDetectionEnabled;
      v16 = 138543362;
      v17 = clientsWantingDetectionEnabled;
      v10 = "Enabling proximity sensor detection for clients:%{public}@";
      v11 = v9;
      v12 = 12;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = SBLogProximitySensor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v10 = "Not enabling prox detection because prox isn't permitted on this device";
      v11 = v9;
      v12 = 2;
LABEL_11:
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
    }
  }
}

- (void)_disableProx
{
  [(SBProximitySensorManager *)self _setProximityDetectionEnabled:0];
  hidInterface = self->_hidInterface;

  [(SBProximitySensorControlling *)hidInterface setProximityDetectionEnabled:0];
}

- (void)client:(uint64_t)a1 wantsProximityDetectionEnabled:(uint64_t)a2 disableGracePeriod:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBProximitySensorManager.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"clientID"}];
}

- (void)processHIDEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBProximitySensorManager.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"IOHIDEventGetType(event) == kIOHIDEventTypeProximity"}];
}

@end
@interface SBDisplayManager
- (BOOL)_shouldAcquireAudioPowerAssertionForDisplay:(id)a3;
- (SBDisplayManager)initWithDisplayManager:(id)a3 sceneManagerCoordinator:(id)a4 assertionCoordinator:(id)a5 powerLogReporter:(id)a6;
- (id)_createAndActivateLayoutPublisherForConnectingDisplay:(id)a3;
- (id)_signpostMetadataForController:(id)a3;
- (id)addObserver:(id)a3;
- (id)layoutPublisherForDisplay:(id)a3;
- (int64_t)windowingModeForDisplay:(id)a3;
- (void)_acquireDisplayPowerAssertionForReason:(unint64_t)a3 forDisplay:(id)a4;
- (void)_acquireDisplayStateControlForDisplay:(id)a3 withConfiguration:(id)a4;
- (void)_connectControllerWithInfo:(id)a3 toDisplay:(id)a4 configuration:(id)a5;
- (void)_connectToIdentity:(id)a3 withConfiguration:(id)a4 forDisplayManagerInit:(BOOL)a5;
- (void)_deactivateLayoutPublisher:(id)a3 forDisconnectingDisplay:(id)a4;
- (void)_releaseAllDisplayPowerAssertionsForDisplay:(id)a3;
- (void)_releaseDisplayPowerAssertionForReason:(unint64_t)a3 forDisplay:(id)a4;
- (void)_setCloneMirroringMode:(unint64_t)a3 forDisplay:(id)a4;
- (void)_setDisableIdleSleepReason:(id)a3 forDisplay:(id)a4;
- (void)_setDisplayArrangementItem:(id)a3 forDisplay:(id)a4;
- (void)_setDisplayContentMirroringState:(unint64_t)a3 forDisplay:(id)a4;
- (void)_setDisplayState:(unint64_t)a3 forDisplay:(id)a4;
- (void)_setPowerLogEntry:(id)a3 forDisplay:(id)a4;
- (void)assertionCoordinator:(id)a3 updatedAssertionPreferences:(id)a4 oldPreferences:(id)a5 forDisplay:(id)a6;
- (void)backlightController:(id)a3 willAnimateBacklightToFactor:(float)a4 source:(int64_t)a5;
- (void)beginMonitoringForExternalDisplays:(id)a3;
- (void)cache:(id)a3 didUpdateActiveAudioRoute:(id)a4;
- (void)cache:(id)a3 didUpdateAudioSessionPlaying:(BOOL)a4;
- (void)dealloc;
- (void)displayMonitor:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5;
- (void)displayMonitor:(id)a3 didUpdateIdentity:(id)a4 withConfiguration:(id)a5;
- (void)displayMonitor:(id)a3 willDisconnectIdentity:(id)a4;
- (void)registerDisplayControllerProvider:(id)a3;
@end

@implementation SBDisplayManager

- (SBDisplayManager)initWithDisplayManager:(id)a3 sceneManagerCoordinator:(id)a4 assertionCoordinator:(id)a5 powerLogReporter:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v57.receiver = self;
  v57.super_class = SBDisplayManager;
  v15 = [(SBDisplayManager *)&v57 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_displayManager, a3);
    objc_storeStrong(&v16->_sceneManagerCoordinator, a4);
    objc_storeStrong(&v16->_assertionCoordinator, a5);
    [(SBDisplayAssertionCoordinator *)v16->_assertionCoordinator setDelegate:v16];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connectedIdentityToRecordMap = v16->_connectedIdentityToRecordMap;
    v16->_connectedIdentityToRecordMap = v17;

    v19 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToLayoutPublisherMap = v16->_rootIdentityToLayoutPublisherMap;
    v16->_rootIdentityToLayoutPublisherMap = v19;

    v21 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToCADisplayQueueMap = v16->_rootIdentityToCADisplayQueueMap;
    v16->_rootIdentityToCADisplayQueueMap = v21;

    v23 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    controllerToAssertionMap = v16->_controllerToAssertionMap;
    v16->_controllerToAssertionMap = v23;

    disableIdleSleepReason = v16->_disableIdleSleepReason;
    v16->_disableIdleSleepReason = 0;

    v26 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    factories = v16->_factories;
    v16->_factories = v26;

    v28 = [MEMORY[0x277CBEB38] dictionary];
    identityToControllerMap = v16->_identityToControllerMap;
    v16->_identityToControllerMap = v28;

    v30 = [MEMORY[0x277CBEB38] dictionary];
    identityToWindowingModeMap = v16->_identityToWindowingModeMap;
    v16->_identityToWindowingModeMap = v30;

    objc_storeStrong(&v16->_powerLogReporter, a6);
    v16->_lock._os_unfair_lock_opaque = 0;
    v32 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v16->_lock_observers;
    v16->_lock_observers = v32;

    v34 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToDisableSleepReasons = v16->_rootIdentityToDisableSleepReasons;
    v16->_rootIdentityToDisableSleepReasons = v34;

    v36 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToDisplayArrangementItems = v16->_rootIdentityToDisplayArrangementItems;
    v16->_rootIdentityToDisplayArrangementItems = v36;

    v38 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToCloneMirroringMode = v16->_rootIdentityToCloneMirroringMode;
    v16->_rootIdentityToCloneMirroringMode = v38;

    v40 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToCloneMirroringModeTokens = v16->_rootIdentityToCloneMirroringModeTokens;
    v16->_rootIdentityToCloneMirroringModeTokens = v40;

    v42 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToCADisplayStateControl = v16->_rootIdentityToCADisplayStateControl;
    v16->_rootIdentityToCADisplayStateControl = v42;

    v44 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToDisplayState = v16->_rootIdentityToDisplayState;
    v16->_rootIdentityToDisplayState = v44;

    v46 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToDisplayContentMirroringState = v16->_rootIdentityToDisplayContentMirroringState;
    v16->_rootIdentityToDisplayContentMirroringState = v46;

    v48 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToDisplayPowerAssertions = v16->_rootIdentityToDisplayPowerAssertions;
    v16->_rootIdentityToDisplayPowerAssertions = v48;

    v50 = +[SBAVSystemControllerCache sharedInstance];
    avSystemControllerCache = v16->_avSystemControllerCache;
    v16->_avSystemControllerCache = v50;

    [(SBAVSystemControllerCache *)v16->_avSystemControllerCache addObserver:v16];
    v52 = +[SBBacklightController sharedInstanceIfExists];
    backlightController = v16->_backlightController;
    v16->_backlightController = v52;

    [(SBBacklightController *)v16->_backlightController addObserver:v16];
    v54 = [(FBDisplayManager *)v16->_displayManager mainConfiguration];
    v55 = [v54 identity];
    [(SBDisplayManager *)v16 _connectToIdentity:v55 withConfiguration:v54 forDisplayManagerInit:1];
  }

  return v16;
}

- (void)dealloc
{
  [(FBDisplayManager *)self->_displayManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBDisplayManager;
  [(SBDisplayManager *)&v3 dealloc];
}

- (void)beginMonitoringForExternalDisplays:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SBDisplayManager_beginMonitoringForExternalDisplays___block_invoke;
  v6[3] = &unk_2783A98A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __55__SBDisplayManager_beginMonitoringForExternalDisplays___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) addObserver:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 8) connectedIdentities];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 120) objectForKey:v7];

        if (!v8)
        {
          v9 = *(a1 + 32);
          v10 = [v9[1] configurationForIdentity:v7];
          [v9 _connectToIdentity:v7 withConfiguration:v10 forDisplayManagerInit:1];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)registerDisplayControllerProvider:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBDisplayManager registerDisplayControllerProvider:];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  [SBDisplayManager registerDisplayControllerProvider:];
LABEL_3:
  if ([(NSHashTable *)self->_factories containsObject:v4])
  {
    [SBDisplayManager registerDisplayControllerProvider:];
  }

  [(NSHashTable *)self->_factories addObject:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_connectedIdentityToRecordMap;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_identityToControllerMap objectForKey:v10, v14];

        if (!v11)
        {
          v12 = [(FBDisplayManager *)self->_displayManager configurationForIdentity:v10];
          v13 = [v4 displayControllerInfoForConnectingDisplay:v10 configuration:v12];
          if (v13)
          {
            [(SBDisplayManager *)self _connectControllerWithInfo:v13 toDisplay:v10 configuration:v12];
          }
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)layoutPublisherForDisplay:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDisplayManager layoutPublisherForDisplay:];
  }

  if (([v4 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager layoutPublisherForDisplay:];
  }

  v5 = [(NSMutableDictionary *)self->_rootIdentityToLayoutPublisherMap objectForKey:v4];

  return v5;
}

- (id)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(NSHashTable *)self->_lock_observers containsObject:v4])
  {
    [SBDisplayManager addObserver:];
  }

  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283094718];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__SBDisplayManager_addObserver___block_invoke;
  v10[3] = &unk_2783AEA48;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v11 = v7;
  v8 = [v5 initWithIdentifier:v6 forReason:@"displayCoordinator" invalidationBlock:v10];

  [(NSHashTable *)self->_lock_observers addObject:v7];
  os_unfair_lock_unlock(&self->_lock);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __32__SBDisplayManager_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 34);
    [*&v3[36]._os_unfair_lock_opaque removeObject:*(a1 + 32)];
    os_unfair_lock_unlock(v3 + 34);
    WeakRetained = v3;
  }
}

- (int64_t)windowingModeForDisplay:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDisplayManager windowingModeForDisplay:];
  }

  v5 = [(NSMutableDictionary *)self->_identityToWindowingModeMap objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)displayMonitor:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = SBLogFBDisplayManagerCallbacks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _SBFLoggingMethodProem();
    v11 = [v8 _sbLoggingDescription];
    v14 = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@\n\tconfiguration: %{public}@;\n\tidentity: %{public}@", &v14, 0x20u);
  }

  v12 = [v8 hardwareIdentifier];
  if (v12)
  {
    goto LABEL_7;
  }

  if (([v8 isMainDisplay] & 1) == 0)
  {
    v12 = SBLogFBDisplayManagerCallbacks();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = _SBFLoggingMethodProem();
      v14 = 138544130;
      v15 = v13;
      v16 = 2114;
      v17 = @"connecting";
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_error_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_ERROR, "%{public}@ told about a %{public}@ display with nil hardwareIdentifier. identity: %{public}@; configuration: %{public}@", &v14, 0x2Au);
    }

LABEL_7:
  }

  [(SBDisplayManager *)self _connectToIdentity:v7 withConfiguration:v8 forDisplayManagerInit:0];
}

- (void)_connectToIdentity:(id)a3 withConfiguration:(id)a4 forDisplayManagerInit:(BOOL)a5
{
  v5 = a5;
  v79 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [(NSMutableDictionary *)self->_connectedIdentityToRecordMap objectForKey:v9];
  v12 = [v10 hardwareIdentifier];
  if (v12)
  {

    goto LABEL_4;
  }

  if ([v10 isMainDisplay])
  {
LABEL_4:
    if ([v11 didConnectAtInit])
    {
      v13 = SBLogDisplayControlling();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v78 = v9;
LABEL_26:
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
        goto LABEL_63;
      }
    }

    else
    {
      if (v11)
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        [v15 handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:264 description:{@"told an identity is connecting when we're already tracking it. is frontboard telling us things out of order?: %@", v9}];
      }

      v16 = [[_SBDisplayIdentityRecord alloc] initWithIdentity:v9 connectedAtInit:v5];

      [(NSMutableDictionary *)self->_connectedIdentityToRecordMap setObject:v16 forKey:v9];
      v17 = [v9 isRootIdentity];
      if (v17)
      {
        [(SBDisplayAssertionCoordinator *)self->_assertionCoordinator rootDisplayDidConnect:v9];
        v18 = [(NSMutableDictionary *)self->_rootIdentityToLayoutPublisherMap objectForKey:v9];

        if (!v18)
        {
          v19 = [(SBDisplayManager *)self _createAndActivateLayoutPublisherForConnectingDisplay:v9];
          [(NSMutableDictionary *)self->_rootIdentityToLayoutPublisherMap setObject:v19 forKey:v9];
        }

        v20 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayQueueMap objectForKey:v9];

        if (!v20)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:CADisplayMutation", objc_opt_class(), v9];
          v22 = [MEMORY[0x277CF0C18] serial];
          v23 = [v22 serviceClass:25];
          v24 = v17;
          v25 = a2;
          v26 = BSDispatchQueueCreate();

          [(NSMutableDictionary *)self->_rootIdentityToCADisplayQueueMap setObject:v26 forKey:v9];
          a2 = v25;
          v17 = v24;
        }

        v27 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:v9];

        if (!v27)
        {
          v28 = [v10 CADisplay];
          v29 = [v28 stateControl];

          if (v29)
          {
            [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl setObject:v29 forKey:v9];
          }
        }

        [(SBDisplayManager *)self _acquireDisplayStateControlForDisplay:v9 withConfiguration:v10];
        if ([(SBDisplayManager *)self _shouldAcquireAudioPowerAssertionForDisplay:v9])
        {
          [(SBDisplayManager *)self _acquireDisplayPowerAssertionForReason:1 forDisplay:v9];
        }

        v30 = SBLogDisplayControlling();
        if (os_signpost_enabled(v30))
        {
          *buf = 138543362;
          v78 = v9;
          _os_signpost_emit_with_name_impl(&dword_21ED4E000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_DISPLAY_MANAGER_ROOT_DISPLAY_CONNECTED", "%{public}@", buf, 0xCu);
        }

        if ([v9 isExternal])
        {
          v31 = dispatch_time(0, 100000000);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __79__SBDisplayManager__connectToIdentity_withConfiguration_forDisplayManagerInit___block_invoke;
          block[3] = &unk_2783A9BD8;
          v70 = v16;
          v71 = v10;
          v72 = self;
          v73 = v9;
          dispatch_after(v31, MEMORY[0x277D85CD0], block);
        }

        else
        {
          [(SBDisplayAssertionCoordinator *)self->_assertionCoordinator activateAssertionsForDisplay:v9];
        }
      }

      v56 = v16;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v32 = self->_factories;
      v33 = [(NSHashTable *)v32 countByEnumeratingWithState:&v65 objects:v76 count:16];
      if (v33)
      {
        v34 = v33;
        v54 = v17;
        v53 = a2;
        v13 = 0;
        v35 = *v66;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v66 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = [*(*(&v65 + 1) + 8 * i) displayControllerInfoForConnectingDisplay:v9 configuration:v10];
            if (v37)
            {
              if (v13)
              {
                v39 = [MEMORY[0x277CCA890] currentHandler];
                [v39 handleFailureInMethod:v53 object:self file:@"SBDisplayManager.m" lineNumber:316 description:{@"multiple factories want to provide a controller for the same display: %@; how it started: %@; how it's going: %@", v9, v13, v37}];
              }

              v38 = v37;

              v13 = v38;
            }
          }

          v34 = [(NSHashTable *)v32 countByEnumeratingWithState:&v65 objects:v76 count:16];
        }

        while (v34);

        v17 = v54;
        if (v13)
        {
          [(SBDisplayManager *)self _connectControllerWithInfo:v13 toDisplay:v9 configuration:v10];
        }
      }

      else
      {

        v13 = 0;
      }

      os_unfair_lock_assert_not_owner(&self->_lock);
      os_unfair_lock_lock(&self->_lock);
      v40 = [(NSHashTable *)self->_lock_observers copy];
      os_unfair_lock_unlock(&self->_lock);
      if (v17)
      {
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v55 = v40;
        v41 = v40;
        v42 = [v41 countByEnumeratingWithState:&v61 objects:v75 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v62;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v62 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v61 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                [v46 displayManager:self didConnectToRootDisplay:v9];
              }
            }

            v43 = [v41 countByEnumeratingWithState:&v61 objects:v75 count:16];
          }

          while (v43);
        }

        v40 = v55;
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v47 = v40;
      v48 = [v47 countByEnumeratingWithState:&v57 objects:v74 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v58;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v58 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v57 + 1) + 8 * k);
            if (objc_opt_respondsToSelector())
            {
              [v52 displayManager:self didConnectIdentity:v9 withConfiguration:v10];
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v57 objects:v74 count:16];
        }

        while (v49);
      }

      v11 = v56;
    }

    goto LABEL_63;
  }

  v13 = SBLogDisplayControlling();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v78 = v9;
    v14 = "got a connect for an external display that is missing its hardwareIdentifier. ignoring: %{public}@";
    goto LABEL_26;
  }

LABEL_63:
}

uint64_t __79__SBDisplayManager__connectToIdentity_withConfiguration_forDisplayManagerInit___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = SBLogDisplayAssertions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "activating assertions for configuration: %{public}@", &v5, 0xCu);
    }

    return [*(*(a1 + 48) + 24) activateAssertionsForDisplay:*(a1 + 56)];
  }

  return result;
}

- (void)displayMonitor:(id)a3 didUpdateIdentity:(id)a4 withConfiguration:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = SBLogFBDisplayManagerCallbacks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _SBFLoggingMethodProem();
    v11 = [v8 _sbLoggingDescription];
    v17 = 138543874;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@\n\tconfiguration: %{public}@;\n\tidentity: %{public}@", &v17, 0x20u);
  }

  v12 = [v8 hardwareIdentifier];
  if (!v12)
  {
    if ([v8 isMainDisplay])
    {
      goto LABEL_8;
    }

    v12 = SBLogFBDisplayManagerCallbacks();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = _SBFLoggingMethodProem();
      v17 = 138544130;
      v18 = v16;
      v19 = 2114;
      v20 = @"updating";
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_ERROR, "%{public}@ told about a %{public}@ display with nil hardwareIdentifier. identity: %{public}@; configuration: %{public}@", &v17, 0x2Au);
    }
  }

LABEL_8:
  v13 = [(NSMutableDictionary *)self->_connectedIdentityToRecordMap objectForKey:v7];
  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->_identityToControllerMap objectForKey:v7];
    if (v14)
    {
      v15 = SBLogDisplayControlling();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [SBDisplayManager displayMonitor:didUpdateIdentity:withConfiguration:];
      }

      [v14 displayIdentityDidUpdate:v7 configuration:v8];
    }
  }

  else
  {
    v14 = SBLogDisplayControlling();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v7;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "got an update for an identity that we aren't tracking. ignoring update: %{public}@", &v17, 0xCu);
    }
  }
}

- (void)displayMonitor:(id)a3 willDisconnectIdentity:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(FBDisplayManager *)self->_displayManager configurationForIdentity:v6];
  v8 = SBLogFBDisplayManagerCallbacks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _SBFLoggingMethodProem();
    v10 = [v7 _sbLoggingDescription];
    *buf = 138543874;
    v46 = v9;
    v47 = 2114;
    v48 = v10;
    v49 = 2114;
    v50 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@\n\tconfiguration: %{public}@;\n\tidentity: %{public}@", buf, 0x20u);
  }

  v11 = [v7 hardwareIdentifier];
  if (!v11)
  {
    if ([v7 isMainDisplay])
    {
      goto LABEL_8;
    }

    v11 = SBLogFBDisplayManagerCallbacks();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v32 = _SBFLoggingMethodProem();
      *buf = 138544130;
      v46 = v32;
      v47 = 2114;
      v48 = @"disconnecting";
      v49 = 2114;
      v50 = v6;
      v51 = 2114;
      v52 = v7;
      _os_log_error_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_ERROR, "%{public}@ told about a %{public}@ display with nil hardwareIdentifier. identity: %{public}@; configuration: %{public}@", buf, 0x2Au);
    }
  }

LABEL_8:
  v12 = [(NSMutableDictionary *)self->_connectedIdentityToRecordMap objectForKey:v6];
  if (v12)
  {
    v34 = v7;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    v13 = [(NSHashTable *)self->_lock_observers copy];
    os_unfair_lock_unlock(&self->_lock);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v19 displayManager:self willDisconnectIdentity:v6];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);
    }

    v20 = [(NSMutableDictionary *)self->_identityToControllerMap objectForKey:v6];
    if (v20)
    {
      v21 = [(NSMapTable *)self->_controllerToAssertionMap objectForKey:v20];
      [(SBDisplayAssertionCoordinator *)self->_assertionCoordinator invalidateAssertionForDerivedDisplayDisconnect:v21];
      [v20 displayIdentityDidDisconnect:v6];
      v22 = SBLogDisplayControlling();
      if (os_signpost_enabled(v22))
      {
        v23 = [(SBDisplayManager *)self _signpostMetadataForController:v20];
        *buf = 138543362;
        v46 = v23;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_DISPLAY_MANAGER_CONTROLLER_TAKES_THE_WHEEL", "%{public}@", buf, 0xCu);
      }

      [(NSMutableDictionary *)self->_identityToControllerMap removeObjectForKey:v6];
      [(NSMutableDictionary *)self->_identityToWindowingModeMap removeObjectForKey:v6];
      [(NSMapTable *)self->_controllerToAssertionMap removeObjectForKey:v20];
    }

    if ([v6 isRootIdentity])
    {
      [(SBDisplayAssertionCoordinator *)self->_assertionCoordinator rootDisplayDidDisconnect:v6];
      v24 = [(NSMutableDictionary *)self->_rootIdentityToLayoutPublisherMap objectForKey:v6];
      if (!v24)
      {
        [SBDisplayManager displayMonitor:willDisconnectIdentity:];
      }

      [(SBDisplayManager *)self _deactivateLayoutPublisher:v24 forDisconnectingDisplay:v6];
      [(NSMutableDictionary *)self->_rootIdentityToLayoutPublisherMap removeObjectForKey:v6];
      [(NSMutableDictionary *)self->_rootIdentityToCADisplayQueueMap removeObjectForKey:v6];
      [(SBDisplayManager *)self _releaseAllDisplayPowerAssertionsForDisplay:v6];
      [(NSMutableDictionary *)self->_rootIdentityToDisplayState removeObjectForKey:v6];
      [(NSMutableDictionary *)self->_rootIdentityToDisplayContentMirroringState removeObjectForKey:v6];
      [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl removeObjectForKey:v6];
    }

    [v12 invalidate];
    [(NSMutableDictionary *)self->_connectedIdentityToRecordMap removeObjectForKey:v6];
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    v25 = [(NSHashTable *)self->_lock_observers copy];

    os_unfair_lock_unlock(&self->_lock);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v36;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v35 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v31 displayManager:self didDisconnectIdentity:v6];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v28);
    }

    v12 = v33;
    v7 = v34;
  }

  else
  {
    v26 = SBLogDisplayControlling();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = v6;
      _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "got a disconnect for an identity that we aren't tracking. ignoring disconnect: %{public}@", buf, 0xCu);
    }
  }
}

- (void)assertionCoordinator:(id)a3 updatedAssertionPreferences:(id)a4 oldPreferences:(id)a5 forDisplay:(id)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a6;
  v9 = a4;
  v10 = SBLogDisplayControlling();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = _SBFLoggingMethodProem();
    v18 = 138543362;
    v19 = v11;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ assertion preferences changed. reevaluating", &v18, 0xCu);
  }

  v12 = [v9 powerLogEntry];
  [(SBDisplayManager *)self _setPowerLogEntry:v12 forDisplay:v8];

  v13 = [v9 displayArrangement];
  [(SBDisplayManager *)self _setDisplayArrangementItem:v13 forDisplay:v8];

  -[SBDisplayManager _setCloneMirroringMode:forDisplay:](self, "_setCloneMirroringMode:forDisplay:", [v9 cloneMirroringMode], v8);
  v14 = [v9 disableSystemIdleSleepReason];
  [(SBDisplayManager *)self _setDisableIdleSleepReason:v14 forDisplay:v8];

  -[SBDisplayManager _setDisplayContentMirroringState:forDisplay:](self, "_setDisplayContentMirroringState:forDisplay:", [v9 displayContentMirroringState], v8);
  v15 = [v9 displayState];

  [(SBDisplayManager *)self _setDisplayState:v15 forDisplay:v8];
  v16 = SBLogDisplayControlling();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = _SBFLoggingMethodProem();
    v18 = 138543362;
    v19 = v17;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ assertion preferences changed. done reevaluating", &v18, 0xCu);
  }
}

- (void)backlightController:(id)a3 willAnimateBacklightToFactor:(float)a4 source:(int64_t)a5
{
  v23 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v8 = [(NSMutableDictionary *)self->_identityToControllerMap allValues];
  v9 = v8;
  v10 = fabsf(a4 + -1.0);
  v11 = fabsf(a4);
  if (v11 < 2.2204e-16 || v10 < 2.2204e-16)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v17 embeddedBacklightStateDidChange:v11 >= 2.2204e-16 source:a5];
          }
        }

        v14 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)cache:(id)a3 didUpdateAudioSessionPlaying:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = SBLogDisplayControlling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    *buf = 138543618;
    v20 = v7;
    v21 = 1024;
    v22 = v4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ audioSessionPlaying %d", buf, 0x12u);
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (([v13 isMainDisplay] & 1) == 0)
        {
          if ([(SBDisplayManager *)self _shouldAcquireAudioPowerAssertionForDisplay:v13])
          {
            [(SBDisplayManager *)self _acquireDisplayPowerAssertionForReason:1 forDisplay:v13];
          }

          else
          {
            [(SBDisplayManager *)self _releaseDisplayPowerAssertionForReason:1 forDisplay:v13];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)cache:(id)a3 didUpdateActiveAudioRoute:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SBLogDisplayControlling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    *buf = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ activeAudioRoute %@", buf, 0x16u);
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (([v13 isMainDisplay] & 1) == 0)
        {
          if ([(SBDisplayManager *)self _shouldAcquireAudioPowerAssertionForDisplay:v13])
          {
            [(SBDisplayManager *)self _acquireDisplayPowerAssertionForReason:1 forDisplay:v13];
          }

          else
          {
            [(SBDisplayManager *)self _releaseDisplayPowerAssertionForReason:1 forDisplay:v13];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)_shouldAcquireAudioPowerAssertionForDisplay:(id)a3
{
  if ([a3 isExternal])
  {
    v3 = +[SBAVSystemControllerCache sharedInstance];
    v4 = [v3 isAudioSessionPlaying];
    v5 = [v3 activeAudioRoute];
    v6 = v5;
    if (v4)
    {
      if ([v5 isEqual:@"HDMI"])
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = [v6 isEqual:@"HDMIOutput"];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_setDisplayArrangementItem:(id)a3 forDisplay:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_rootIdentityToDisplayArrangementItems objectForKey:v7];
  if (([v8 isEqual:v6] & 1) == 0 && v6 | v8)
  {
    rootIdentityToDisplayArrangementItems = self->_rootIdentityToDisplayArrangementItems;
    v30 = v7;
    if (v6)
    {
      [(NSMutableDictionary *)rootIdentityToDisplayArrangementItems setObject:v6 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)rootIdentityToDisplayArrangementItems removeObjectForKey:v7];
    }

    v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_rootIdentityToDisplayArrangementItems, "count", v8)}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = self->_rootIdentityToDisplayArrangementItems;
    v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v10)
    {
      v11 = v10;
      v33 = *v35;
      do
      {
        v12 = 0;
        do
        {
          if (*v35 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [(FBDisplayManager *)self->_displayManager configurationForIdentity:*(*(&v34 + 1) + 8 * v12)];
          v14 = [v13 hardwareIdentifier];
          displayManager = self->_displayManager;
          v16 = [v6 relativeDisplayIdentity];
          v17 = [(FBDisplayManager *)displayManager configurationForIdentity:v16];

          v18 = [v17 hardwareIdentifier];
          if (v14)
          {
            v19 = objc_alloc(MEMORY[0x277CF05D8]);
            v20 = [v6 edge];
            [v6 offset];
            v21 = [v19 initWithDisplayUUID:v14 relativeToDisplayUUID:v18 alongEdge:v20 atOffset:?];
            [v32 addObject:v21];
          }

          else
          {
            v21 = SBLogDisplayControlling();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              v22 = _SBFLoggingMethodProem();
              *buf = 138544386;
              v39 = v22;
              v40 = 2114;
              v41 = v13;
              v42 = 2114;
              v43 = 0;
              v44 = 2114;
              v45 = v17;
              v46 = 2114;
              v47 = v18;
              _os_log_fault_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_FAULT, "%{public}@ got nil displayUUIDs, which shouldn't be happening for newly active assertions. rootDisplayConfig: %{public}@; rootDisplayUUID: %{public}@; relativeDisplayConfig: %{public}@; relativeDisplayUUID: %{public}@", buf, 0x34u);
            }
          }

          ++v12;
        }

        while (v11 != v12);
        v11 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v11);
    }

    v23 = SBLogDisplayControlling();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v7 = v30;
      if (v24)
      {
        v25 = _SBFLoggingMethodProem();
        *buf = 138544130;
        v39 = v25;
        v40 = 2114;
        v41 = v30;
        v42 = 2114;
        v43 = v6;
        v44 = 2114;
        v45 = v32;
        v26 = "%{public}@ %{public}@ display arrangement item changed: %{public}@\nupdating backboard with global arrangement: %{public}@";
        v27 = v23;
        v28 = 42;
LABEL_22:
        _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      }
    }

    else
    {
      v7 = v30;
      if (v24)
      {
        v25 = _SBFLoggingMethodProem();
        *buf = 138543874;
        v39 = v25;
        v40 = 2114;
        v41 = v30;
        v42 = 2114;
        v43 = v32;
        v27 = v23;
        v28 = 32;
        goto LABEL_22;
      }
    }

    BKSDisplayServicesSetArrangement();
    v8 = v29;
  }
}

- (void)_setPowerLogEntry:(id)a3 forDisplay:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isRootIdentity])
  {
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [SBDisplayManager _setPowerLogEntry:forDisplay:];
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v8 = SBLogDisplayControlling();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBDisplayManager _setPowerLogEntry:forDisplay:];
  }

  v9 = [(FBDisplayManager *)self->_displayManager configurationForIdentity:v7];
  v6 = [SBDisplayPowerLogEntry forDisplay:v9 mode:0 zoom:0];

LABEL_6:
  [(SBDisplayPowerLogReporter *)self->_powerLogReporter reportPowerLogEntry:v6];
}

- (void)_setCloneMirroringMode:(unint64_t)a3 forDisplay:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (([v7 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _setCloneMirroringMode:forDisplay:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCloneMirroringMode objectForKey:v7];
  v9 = [v8 unsignedIntegerValue];

  if (!a3)
  {
    v12 = SBLogDisplayControlling();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = _SBFLoggingMethodProem();
      v14 = SBDisplayCloneMirroringModeDescription(0);
      *buf = 138543618;
      v29 = v13;
      v30 = 2114;
      v31 = v14;
    }

    v15 = [(NSMutableDictionary *)self->_rootIdentityToCloneMirroringModeTokens objectForKey:v7];
    [v15 invalidate];
    [(NSMutableDictionary *)self->_rootIdentityToCloneMirroringMode removeObjectForKey:v7];
    goto LABEL_18;
  }

  if (v9 != a3)
  {
    rootIdentityToCloneMirroringMode = self->_rootIdentityToCloneMirroringMode;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)rootIdentityToCloneMirroringMode setObject:v11 forKey:v7];

    if (a3 != 1 && a3 != 2)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:579 description:{@"unexpected mirroring mode: %lu", a3}];
    }

    if ([v7 isMainDisplay])
    {
      v15 = SBLogDisplayControlling();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = _SBFLoggingMethodProem();
        v18 = SBDisplayCloneMirroringModeDescription(v9);
        v19 = SBDisplayCloneMirroringModeDescription(a3);
        *buf = 138543874;
        v29 = v17;
        v30 = 2114;
        v31 = v18;
        v32 = 2114;
        v33 = v19;
      }
    }

    else
    {
      v15 = [(NSMutableDictionary *)self->_rootIdentityToCloneMirroringModeTokens objectForKey:v7];
      v27 = [(FBDisplayManager *)self->_displayManager configurationForIdentity:v7];
      v20 = [v27 hardwareIdentifier];
      v21 = BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay();
      v22 = SBLogDisplayControlling();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = _SBFLoggingMethodProem();
        v24 = SBDisplayCloneMirroringModeDescription(v9);
        v25 = SBDisplayCloneMirroringModeDescription(a3);
        v26 = NSStringFromBKSDisplayServicesCloneMirroringMode();
        *buf = 138544130;
        v29 = v23;
        v30 = 2114;
        v31 = v24;
        v32 = 2114;
        v33 = v25;
        v34 = 2114;
        v35 = v26;
      }

      [(NSMutableDictionary *)self->_rootIdentityToCloneMirroringModeTokens setObject:v21 forKey:v7];
      [v15 invalidate];
    }

LABEL_18:
  }
}

- (void)_setDisableIdleSleepReason:(id)a3 forDisplay:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v7 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _setDisableIdleSleepReason:forDisplay:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToDisableSleepReasons objectForKey:v7];
  if (([v8 isEqualToString:v6] & 1) == 0 && v6 | v8)
  {
    v9 = [(NSMutableDictionary *)self->_rootIdentityToDisableSleepReasons count];
    rootIdentityToDisableSleepReasons = self->_rootIdentityToDisableSleepReasons;
    if (v6)
    {
      [(NSMutableDictionary *)rootIdentityToDisableSleepReasons setObject:v6 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)rootIdentityToDisableSleepReasons removeObjectForKey:v7];
    }

    v11 = [(NSMutableDictionary *)self->_rootIdentityToDisableSleepReasons count];
    v12 = [(NSMutableDictionary *)self->_rootIdentityToDisableSleepReasons allValues];
    v13 = [v12 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v14 = [v13 componentsJoinedByString:@"|"];
    v15 = [MEMORY[0x277D0AB08] sharedInstance];
    v16 = v15;
    if (v11)
    {
      [v15 setSystemIdleSleepDisabled:1 forReason:v14];
    }

    if (v9)
    {
      [v16 setSystemIdleSleepDisabled:0 forReason:self->_disableIdleSleepReason];
    }

    v17 = SBLogDisplayControlling();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v11 != 0;
      v19 = _SBFLoggingMethodProem();
      v23 = 138544130;
      v24 = v19;
      if (v8)
      {
        v21 = v8;
      }

      else
      {
      }

      v25 = 2114;
      if (v14)
      {
        v20 = v14;
      }

      v26 = v21;
      v27 = 2114;
      v28 = v20;
      v29 = 1024;
      v30 = v18;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ idle sleep reason changed from %{public}@ to %{public}@; idle sleep disabled: %{BOOL}u", &v23, 0x26u);
    }

    disableIdleSleepReason = self->_disableIdleSleepReason;
    self->_disableIdleSleepReason = v14;
  }
}

- (void)_acquireDisplayStateControlForDisplay:(id)a3 withConfiguration:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v6 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _acquireDisplayStateControlForDisplay:withConfiguration:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:v6];
  if (!v8)
  {
    v9 = SBLogDisplayControlling();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "got a display state update for an identity for which we don't have a CADisplayStateControl, ignoring update: %{public}@", &v12, 0xCu);
    }

    goto LABEL_11;
  }

  v9 = [v7 CADisplay];
  if ([v9 displayType]!= 2)
  {
LABEL_11:

    goto LABEL_12;
  }

  v10 = [v6 isAirPlayDisplay];

  if (v10)
  {
    v11 = SBLogDisplayControlling();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "acquiring wireless display state control for display: %{public}@", &v12, 0xCu);
    }

    [v8 acquireWirelessDisplayStateControl];
  }

LABEL_12:
}

- (void)_acquireDisplayPowerAssertionForReason:(unint64_t)a3 forDisplay:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (([v7 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _acquireDisplayPowerAssertionForReason:forDisplay:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:v7];
  if (!v8)
  {
    v9 = SBLogDisplayControlling();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v7;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "got a display state update for an identity for which we don't have a CADisplayStateControl, ignoring update: %{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (([v7 isMainDisplay] & 1) == 0)
  {
    v9 = [(NSMutableDictionary *)self->_rootIdentityToDisplayPowerAssertions objectForKey:v7];
    if (!v9)
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_rootIdentityToDisplayPowerAssertions setObject:v9 forKey:v7];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v11 = [v9 objectForKey:v10];

    if (!v11)
    {
      if (a3 >= 3)
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:675 description:{@"unexpected display power assertion reason: %lu", a3}];

        v12 = 1;
      }

      else
      {
        v12 = a3 + 1;
      }

      v14 = SBLogDisplayControlling();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = _SBFLoggingMethodProem();
        v16 = SBDisplayPowerAssertionReasonDescription(a3);
        *buf = 138543874;
        v21 = v15;
        v22 = 2114;
        v23 = v16;
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ acquiring power assertion with reason %{public}@ for identity %{public}@", buf, 0x20u);
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v11 = [v8 createPowerAssertionWithReason:v12 identifier:v18];

      [v11 acquire];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v9 setObject:v11 forKey:v19];
    }

LABEL_17:
  }
}

- (void)_releaseDisplayPowerAssertionForReason:(unint64_t)a3 forDisplay:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (([v6 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _releaseDisplayPowerAssertionForReason:forDisplay:];
  }

  v7 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:v6];
  if (!v7)
  {
    v8 = SBLogDisplayControlling();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "got a display state update for an identity for which we don't have a CADisplayStateControl, ignoring update: %{public}@", &v15, 0xCu);
    }

    goto LABEL_13;
  }

  if (([v6 isMainDisplay] & 1) == 0)
  {
    v8 = [(NSMutableDictionary *)self->_rootIdentityToDisplayPowerAssertions objectForKey:v6];
    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v10 = [v8 objectForKey:v9];

      if (v10)
      {
        v11 = SBLogDisplayControlling();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = _SBFLoggingMethodProem();
          v13 = SBDisplayPowerAssertionReasonDescription(a3);
          v15 = 138543874;
          v16 = v12;
          v17 = 2114;
          v18 = v13;
          v19 = 2114;
          v20 = v6;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ releasing power assertion with reason %{public}@ for identity %{public}@", &v15, 0x20u);
        }

        [v10 invalidate];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
        [v8 removeObjectForKey:v14];
      }
    }

LABEL_13:
  }
}

- (void)_releaseAllDisplayPowerAssertionsForDisplay:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _releaseAllDisplayPowerAssertionsForDisplay:];
  }

  v5 = [(NSMutableDictionary *)self->_rootIdentityToDisplayPowerAssertions objectForKey:v4];
  v6 = [v5 allKeys];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
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

        -[SBDisplayManager _releaseDisplayPowerAssertionForReason:forDisplay:](self, "_releaseDisplayPowerAssertionForReason:forDisplay:", [*(*(&v11 + 1) + 8 * v10++) unsignedIntegerValue], v4);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_setDisplayState:(unint64_t)a3 forDisplay:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (([v7 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _setDisplayState:forDisplay:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:v7];
  if (!v8)
  {
    v10 = SBLogDisplayControlling();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v7;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "got a display state update for an identity for which we don't have a CADisplayStateControl, ignoring update: %{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if (([v7 isMainDisplay] & 1) == 0)
  {
    v9 = [(NSMutableDictionary *)self->_rootIdentityToDisplayState objectForKey:v7];
    v10 = v9;
    if (!v9 || [v9 unsignedIntegerValue]!= a3)
    {
      rootIdentityToDisplayState = self->_rootIdentityToDisplayState;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)rootIdentityToDisplayState setObject:v12 forKey:v7];

      if (a3)
      {
        if (a3 == 1)
        {
          [(SBDisplayManager *)self _acquireDisplayPowerAssertionForReason:0 forDisplay:v7];
          v13 = 0;
          v14 = 1;
        }

        else
        {
          v15 = [MEMORY[0x277CCA890] currentHandler];
          [v15 handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:738 description:{@"unexpected display state: %lu", a3}];

          v14 = 0;
          v13 = 1;
        }
      }

      else
      {
        v13 = 1;
        v14 = 0;
      }

      v16 = SBLogDisplayControlling();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        _SBFLoggingMethodProem();
        v17 = v21 = v13;
        v18 = SBDisplayStateDescription([v10 unsignedIntegerValue]);
        v19 = SBDisplayStateDescription(a3);
        *buf = 138544130;
        v27 = v17;
        v28 = 2114;
        v29 = v18;
        v30 = 2114;
        v31 = v19;
        v32 = 2114;
        v33 = v7;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ changing display state from %{public}@ to %{public}@ for identity %{public}@", buf, 0x2Au);

        v13 = v21;
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __48__SBDisplayManager__setDisplayState_forDisplay___block_invoke;
      v22[3] = &unk_2783C4600;
      v22[4] = self;
      v24 = a2;
      v25 = v14;
      v20 = v7;
      v23 = v20;
      [v8 transitionToDisplayState:v14 withCompletion:v22];
      if (v13)
      {
        [(SBDisplayManager *)self _releaseDisplayPowerAssertionForReason:0 forDisplay:v20];
      }
    }

LABEL_19:
  }
}

void __48__SBDisplayManager__setDisplayState_forDisplay___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    v3 = SBLogDisplayControlling();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__SBDisplayManager__setDisplayState_forDisplay___block_invoke_cold_1();
    }
  }
}

- (void)_setDisplayContentMirroringState:(unint64_t)a3 forDisplay:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (([v7 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _setDisplayContentMirroringState:forDisplay:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:v7];
  if (!v8)
  {
    v10 = SBLogDisplayControlling();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v7;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "got a display state update for an identity for which we don't have a CADisplayStateControl, ignoring update: %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (([v7 isMainDisplay] & 1) == 0)
  {
    v9 = [(NSMutableDictionary *)self->_rootIdentityToDisplayContentMirroringState objectForKey:v7];
    v10 = v9;
    if (!v9 || [v9 unsignedIntegerValue]!= a3)
    {
      rootIdentityToDisplayContentMirroringState = self->_rootIdentityToDisplayContentMirroringState;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)rootIdentityToDisplayContentMirroringState setObject:v12 forKey:v7];

      v13 = a3;
      if (a3 >= 2)
      {
        v14 = [MEMORY[0x277CCA890] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:783 description:{@"unexpected display content mirroring state: %lu", a3}];

        v13 = 0;
      }

      v15 = SBLogDisplayControlling();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = _SBFLoggingMethodProem();
        v17 = SBDisplayContentMirroringStateDescription([v10 unsignedIntegerValue]);
        v18 = SBDisplayContentMirroringStateDescription(a3);
        *buf = 138544130;
        v24 = v16;
        v25 = 2114;
        v26 = v17;
        v27 = 2114;
        v28 = v18;
        v29 = 2114;
        v30 = v7;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ changing display content mirroring state from %{public}@ to %{public}@ for identity %{public}@", buf, 0x2Au);
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __64__SBDisplayManager__setDisplayContentMirroringState_forDisplay___block_invoke;
      v19[3] = &unk_2783C4600;
      v19[4] = self;
      v21 = a2;
      v22 = v13;
      v20 = v7;
      [v8 transitionToCloningState:v13 withCompletion:v19];
    }

LABEL_14:
  }
}

void __64__SBDisplayManager__setDisplayContentMirroringState_forDisplay___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    v3 = SBLogDisplayControlling();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__SBDisplayManager__setDisplayContentMirroringState_forDisplay___block_invoke_cold_1();
    }
  }
}

- (void)_connectControllerWithInfo:(id)a3 toDisplay:(id)a4 configuration:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  identityToControllerMap = self->_identityToControllerMap;
  v35 = a5;
  v12 = [(NSMutableDictionary *)identityToControllerMap objectForKey:v10];
  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_identityToWindowingModeMap objectForKey:v10];
    v14 = [v13 unsignedIntegerValue];

    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = SBDisplayWindowingModeDescription(v14);
    [v15 handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:800 description:{@"already have a controller for display: %@; existing: %@; existingWindowingMode: %@; new: %@", v10, v12, v16, v9}];
  }

  v36 = v12;
  v17 = [v9 priorityLevel];
  if (!SBDisplayAssertionLevelIsValid(v17))
  {
    [SBDisplayManager _connectControllerWithInfo:toDisplay:configuration:];
  }

  v18 = [v9 displayController];
  v19 = [v9 windowingMode];
  v20 = [v9 deactivationReasons];
  [(NSMutableDictionary *)self->_identityToControllerMap setObject:v18 forKey:v10];
  identityToWindowingModeMap = self->_identityToWindowingModeMap;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
  [(NSMutableDictionary *)identityToWindowingModeMap setObject:v22 forKey:v10];

  v23 = [(SBSceneManagerCoordinator *)self->_sceneManagerCoordinator sceneManagerForDisplayIdentity:v10];
  rootIdentityToCADisplayQueueMap = self->_rootIdentityToCADisplayQueueMap;
  v25 = [v10 rootIdentity];
  v26 = [(NSMutableDictionary *)rootIdentityToCADisplayQueueMap objectForKey:v25];

  assertionCoordinator = self->_assertionCoordinator;
  v28 = [v10 rootIdentity];
  v29 = [(SBDisplayAssertionCoordinator *)assertionCoordinator acquireAssertionForDisplay:v28 level:v17 deactivationReasons:v20 delegate:v18];

  [(NSMapTable *)self->_controllerToAssertionMap setObject:v29 forKey:v18];
  v30 = SBLogDisplayControlling();
  if (os_signpost_enabled(v30))
  {
    v31 = [(SBDisplayManager *)self _signpostMetadataForController:v18];
    *buf = 138543362;
    v38 = v31;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v30, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_DISPLAY_MANAGER_CONTROLLER_TAKES_THE_WHEEL", "%{public}@", buf, 0xCu);
  }

  v32 = SBLogDisplayControlling();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = _SBFLoggingMethodProem();
    *buf = 138543618;
    v38 = v33;
    v39 = 2114;
    v40 = v9;
    _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ connecting new controllerInfo: %{public}@", buf, 0x16u);
  }

  LOBYTE(v34) = [(SBBacklightController *)self->_backlightController screenIsOn];
  [v18 connectToDisplayIdentity:v10 configuration:v35 displayManager:self sceneManager:v23 caDisplayQueue:v26 assertion:v29 embeddedBacklightOn:v34];
}

- (id)_createAndActivateLayoutPublisherForConnectingDisplay:(id)a3
{
  v3 = a3;
  if (([v3 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _createAndActivateLayoutPublisherForConnectingDisplay:];
  }

  if ([v3 isMainDisplay])
  {
    v4 = [MEMORY[0x277D0AAA0] sharedInstance];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D0AD30]);
    [v5 setDomainIdentifier:@"com.apple.frontboard"];
    v6 = SBExternalDisplayLayoutServiceInstanceIdentifierForDisplay();
    [v5 setInstanceIdentifier:v6];

    v4 = [MEMORY[0x277D0AD28] publisherWithConfiguration:v5];
    if (!v4)
    {
      [SBDisplayManager _createAndActivateLayoutPublisherForConnectingDisplay:];
    }

    [v4 activate];
  }

  return v4;
}

- (void)_deactivateLayoutPublisher:(id)a3 forDisconnectingDisplay:(id)a4
{
  v10 = a3;
  v5 = a4;
  if (([v5 isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _deactivateLayoutPublisher:forDisconnectingDisplay:];
  }

  if (([v5 isMainDisplay] & 1) == 0)
  {
    v6 = objc_opt_class();
    v7 = v10;
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

    [v9 invalidate];
  }
}

- (id)_signpostMetadataForController:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 signpostDescription];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p>", objc_opt_class(), v3];
  }
  v4 = ;

  return v4;
}

- (void)registerDisplayControllerProvider:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDisplayManager registerDisplayControllerProvider:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDisplayManager.m" lineNumber:195 description:@"this call must be made on the main thread"];
}

- (void)registerDisplayControllerProvider:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayControllerFactory" object:? file:? lineNumber:? description:?];
}

- (void)registerDisplayControllerProvider:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)layoutPublisherForDisplay:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDisplayManager layoutPublisherForDisplay:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDisplayManager.m" lineNumber:213 description:@"this call must be made on the main thread"];
}

- (void)layoutPublisherForDisplay:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)addObserver:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)windowingModeForDisplay:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDisplayManager windowingModeForDisplay:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDisplayManager.m" lineNumber:237 description:@"this call must be made on the main thread"];
}

- (void)displayMonitor:didUpdateIdentity:withConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  if (objc_opt_respondsToSelector())
  {
    [v0 signpostDescription];
  }

  else
  {
    v1 = objc_opt_class();
    NSStringFromClass(v1);
  }
  v6 = ;
  OUTLINED_FUNCTION_6_13();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

- (void)displayMonitor:willDisconnectIdentity:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v2 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_setPowerLogEntry:forDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)_setPowerLogEntry:forDisplay:.cold.2()
{
  v4 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_6_13();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0xCu);
}

- (void)_setCloneMirroringMode:forDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)_setDisableIdleSleepReason:forDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)_acquireDisplayStateControlForDisplay:withConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)_acquireDisplayPowerAssertionForReason:forDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)_releaseDisplayPowerAssertionForReason:forDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)_releaseAllDisplayPowerAssertionsForDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)_setDisplayState:forDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

void __48__SBDisplayManager__setDisplayState_forDisplay___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_15(v0);
  v1 = _SBFLoggingMethodProem();
  v2 = NSStringFromCADisplayState();
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_6_13();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);
}

- (void)_setDisplayContentMirroringState:forDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

void __64__SBDisplayManager__setDisplayContentMirroringState_forDisplay___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_15(v0);
  v1 = _SBFLoggingMethodProem();
  v2 = NSStringFromCADisplayCloningState();
  OUTLINED_FUNCTION_3_33();
  OUTLINED_FUNCTION_6_13();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x20u);
}

- (void)_connectControllerWithInfo:toDisplay:configuration:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v1 = SBDisplayAssertionLevelDescription(v0);
  OUTLINED_FUNCTION_0_3();
  [v2 handleFailureInMethod:v1 object:? file:? lineNumber:? description:?];
}

- (void)_createAndActivateLayoutPublisherForConnectingDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[connectingDisplay isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)_createAndActivateLayoutPublisherForConnectingDisplay:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_deactivateLayoutPublisher:forDisconnectingDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[disconnectingDisplay isRootIdentity]" object:? file:? lineNumber:? description:?];
}

@end
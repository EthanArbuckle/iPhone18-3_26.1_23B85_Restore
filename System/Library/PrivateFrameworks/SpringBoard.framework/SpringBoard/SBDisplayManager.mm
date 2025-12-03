@interface SBDisplayManager
- (BOOL)_shouldAcquireAudioPowerAssertionForDisplay:(id)display;
- (SBDisplayManager)initWithDisplayManager:(id)manager sceneManagerCoordinator:(id)coordinator assertionCoordinator:(id)assertionCoordinator powerLogReporter:(id)reporter;
- (id)_createAndActivateLayoutPublisherForConnectingDisplay:(id)display;
- (id)_signpostMetadataForController:(id)controller;
- (id)addObserver:(id)observer;
- (id)layoutPublisherForDisplay:(id)display;
- (int64_t)windowingModeForDisplay:(id)display;
- (void)_acquireDisplayPowerAssertionForReason:(unint64_t)reason forDisplay:(id)display;
- (void)_acquireDisplayStateControlForDisplay:(id)display withConfiguration:(id)configuration;
- (void)_connectControllerWithInfo:(id)info toDisplay:(id)display configuration:(id)configuration;
- (void)_connectToIdentity:(id)identity withConfiguration:(id)configuration forDisplayManagerInit:(BOOL)init;
- (void)_deactivateLayoutPublisher:(id)publisher forDisconnectingDisplay:(id)display;
- (void)_releaseAllDisplayPowerAssertionsForDisplay:(id)display;
- (void)_releaseDisplayPowerAssertionForReason:(unint64_t)reason forDisplay:(id)display;
- (void)_setCloneMirroringMode:(unint64_t)mode forDisplay:(id)display;
- (void)_setDisableIdleSleepReason:(id)reason forDisplay:(id)display;
- (void)_setDisplayArrangementItem:(id)item forDisplay:(id)display;
- (void)_setDisplayContentMirroringState:(unint64_t)state forDisplay:(id)display;
- (void)_setDisplayState:(unint64_t)state forDisplay:(id)display;
- (void)_setPowerLogEntry:(id)entry forDisplay:(id)display;
- (void)assertionCoordinator:(id)coordinator updatedAssertionPreferences:(id)preferences oldPreferences:(id)oldPreferences forDisplay:(id)display;
- (void)backlightController:(id)controller willAnimateBacklightToFactor:(float)factor source:(int64_t)source;
- (void)beginMonitoringForExternalDisplays:(id)displays;
- (void)cache:(id)cache didUpdateActiveAudioRoute:(id)route;
- (void)cache:(id)cache didUpdateAudioSessionPlaying:(BOOL)playing;
- (void)dealloc;
- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor didUpdateIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity;
- (void)registerDisplayControllerProvider:(id)provider;
@end

@implementation SBDisplayManager

- (SBDisplayManager)initWithDisplayManager:(id)manager sceneManagerCoordinator:(id)coordinator assertionCoordinator:(id)assertionCoordinator powerLogReporter:(id)reporter
{
  managerCopy = manager;
  coordinatorCopy = coordinator;
  assertionCoordinatorCopy = assertionCoordinator;
  reporterCopy = reporter;
  v57.receiver = self;
  v57.super_class = SBDisplayManager;
  v15 = [(SBDisplayManager *)&v57 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_displayManager, manager);
    objc_storeStrong(&v16->_sceneManagerCoordinator, coordinator);
    objc_storeStrong(&v16->_assertionCoordinator, assertionCoordinator);
    [(SBDisplayAssertionCoordinator *)v16->_assertionCoordinator setDelegate:v16];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connectedIdentityToRecordMap = v16->_connectedIdentityToRecordMap;
    v16->_connectedIdentityToRecordMap = v17;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToLayoutPublisherMap = v16->_rootIdentityToLayoutPublisherMap;
    v16->_rootIdentityToLayoutPublisherMap = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToCADisplayQueueMap = v16->_rootIdentityToCADisplayQueueMap;
    v16->_rootIdentityToCADisplayQueueMap = dictionary2;

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    controllerToAssertionMap = v16->_controllerToAssertionMap;
    v16->_controllerToAssertionMap = weakToWeakObjectsMapTable;

    disableIdleSleepReason = v16->_disableIdleSleepReason;
    v16->_disableIdleSleepReason = 0;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    factories = v16->_factories;
    v16->_factories = weakObjectsHashTable;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    identityToControllerMap = v16->_identityToControllerMap;
    v16->_identityToControllerMap = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    identityToWindowingModeMap = v16->_identityToWindowingModeMap;
    v16->_identityToWindowingModeMap = dictionary4;

    objc_storeStrong(&v16->_powerLogReporter, reporter);
    v16->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v16->_lock_observers;
    v16->_lock_observers = weakObjectsHashTable2;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToDisableSleepReasons = v16->_rootIdentityToDisableSleepReasons;
    v16->_rootIdentityToDisableSleepReasons = dictionary5;

    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToDisplayArrangementItems = v16->_rootIdentityToDisplayArrangementItems;
    v16->_rootIdentityToDisplayArrangementItems = dictionary6;

    dictionary7 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToCloneMirroringMode = v16->_rootIdentityToCloneMirroringMode;
    v16->_rootIdentityToCloneMirroringMode = dictionary7;

    dictionary8 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToCloneMirroringModeTokens = v16->_rootIdentityToCloneMirroringModeTokens;
    v16->_rootIdentityToCloneMirroringModeTokens = dictionary8;

    dictionary9 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToCADisplayStateControl = v16->_rootIdentityToCADisplayStateControl;
    v16->_rootIdentityToCADisplayStateControl = dictionary9;

    dictionary10 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToDisplayState = v16->_rootIdentityToDisplayState;
    v16->_rootIdentityToDisplayState = dictionary10;

    dictionary11 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToDisplayContentMirroringState = v16->_rootIdentityToDisplayContentMirroringState;
    v16->_rootIdentityToDisplayContentMirroringState = dictionary11;

    dictionary12 = [MEMORY[0x277CBEB38] dictionary];
    rootIdentityToDisplayPowerAssertions = v16->_rootIdentityToDisplayPowerAssertions;
    v16->_rootIdentityToDisplayPowerAssertions = dictionary12;

    v50 = +[SBAVSystemControllerCache sharedInstance];
    avSystemControllerCache = v16->_avSystemControllerCache;
    v16->_avSystemControllerCache = v50;

    [(SBAVSystemControllerCache *)v16->_avSystemControllerCache addObserver:v16];
    v52 = +[SBBacklightController sharedInstanceIfExists];
    backlightController = v16->_backlightController;
    v16->_backlightController = v52;

    [(SBBacklightController *)v16->_backlightController addObserver:v16];
    mainConfiguration = [(FBDisplayManager *)v16->_displayManager mainConfiguration];
    identity = [mainConfiguration identity];
    [(SBDisplayManager *)v16 _connectToIdentity:identity withConfiguration:mainConfiguration forDisplayManagerInit:1];
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

- (void)beginMonitoringForExternalDisplays:(id)displays
{
  displaysCopy = displays;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SBDisplayManager_beginMonitoringForExternalDisplays___block_invoke;
  v6[3] = &unk_2783A98A0;
  v6[4] = self;
  v7 = displaysCopy;
  v5 = displaysCopy;
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

- (void)registerDisplayControllerProvider:(id)provider
{
  v19 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBDisplayManager registerDisplayControllerProvider:];
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  [SBDisplayManager registerDisplayControllerProvider:];
LABEL_3:
  if ([(NSHashTable *)self->_factories containsObject:providerCopy])
  {
    [SBDisplayManager registerDisplayControllerProvider:];
  }

  [(NSHashTable *)self->_factories addObject:providerCopy];
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
          v13 = [providerCopy displayControllerInfoForConnectingDisplay:v10 configuration:v12];
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

- (id)layoutPublisherForDisplay:(id)display
{
  displayCopy = display;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDisplayManager layoutPublisherForDisplay:];
  }

  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager layoutPublisherForDisplay:];
  }

  v5 = [(NSMutableDictionary *)self->_rootIdentityToLayoutPublisherMap objectForKey:displayCopy];

  return v5;
}

- (id)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(NSHashTable *)self->_lock_observers containsObject:observerCopy])
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
  v7 = observerCopy;
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

- (int64_t)windowingModeForDisplay:(id)display
{
  displayCopy = display;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDisplayManager windowingModeForDisplay:];
  }

  v5 = [(NSMutableDictionary *)self->_identityToWindowingModeMap objectForKey:displayCopy];
  v6 = v5;
  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  v22 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  configurationCopy = configuration;
  v9 = SBLogFBDisplayManagerCallbacks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _SBFLoggingMethodProem();
    _sbLoggingDescription = [configurationCopy _sbLoggingDescription];
    v14 = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = _sbLoggingDescription;
    v18 = 2114;
    v19 = identityCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@\n\tconfiguration: %{public}@;\n\tidentity: %{public}@", &v14, 0x20u);
  }

  hardwareIdentifier = [configurationCopy hardwareIdentifier];
  if (hardwareIdentifier)
  {
    goto LABEL_7;
  }

  if (([configurationCopy isMainDisplay] & 1) == 0)
  {
    hardwareIdentifier = SBLogFBDisplayManagerCallbacks();
    if (os_log_type_enabled(hardwareIdentifier, OS_LOG_TYPE_ERROR))
    {
      v13 = _SBFLoggingMethodProem();
      v14 = 138544130;
      v15 = v13;
      v16 = 2114;
      v17 = @"connecting";
      v18 = 2114;
      v19 = identityCopy;
      v20 = 2114;
      v21 = configurationCopy;
      _os_log_error_impl(&dword_21ED4E000, hardwareIdentifier, OS_LOG_TYPE_ERROR, "%{public}@ told about a %{public}@ display with nil hardwareIdentifier. identity: %{public}@; configuration: %{public}@", &v14, 0x2Au);
    }

LABEL_7:
  }

  [(SBDisplayManager *)self _connectToIdentity:identityCopy withConfiguration:configurationCopy forDisplayManagerInit:0];
}

- (void)_connectToIdentity:(id)identity withConfiguration:(id)configuration forDisplayManagerInit:(BOOL)init
{
  initCopy = init;
  v79 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  configurationCopy = configuration;
  v11 = [(NSMutableDictionary *)self->_connectedIdentityToRecordMap objectForKey:identityCopy];
  hardwareIdentifier = [configurationCopy hardwareIdentifier];
  if (hardwareIdentifier)
  {

    goto LABEL_4;
  }

  if ([configurationCopy isMainDisplay])
  {
LABEL_4:
    if ([v11 didConnectAtInit])
    {
      v13 = SBLogDisplayControlling();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v78 = identityCopy;
LABEL_26:
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
        goto LABEL_63;
      }
    }

    else
    {
      if (v11)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:264 description:{@"told an identity is connecting when we're already tracking it. is frontboard telling us things out of order?: %@", identityCopy}];
      }

      v16 = [[_SBDisplayIdentityRecord alloc] initWithIdentity:identityCopy connectedAtInit:initCopy];

      [(NSMutableDictionary *)self->_connectedIdentityToRecordMap setObject:v16 forKey:identityCopy];
      isRootIdentity = [identityCopy isRootIdentity];
      if (isRootIdentity)
      {
        [(SBDisplayAssertionCoordinator *)self->_assertionCoordinator rootDisplayDidConnect:identityCopy];
        v18 = [(NSMutableDictionary *)self->_rootIdentityToLayoutPublisherMap objectForKey:identityCopy];

        if (!v18)
        {
          v19 = [(SBDisplayManager *)self _createAndActivateLayoutPublisherForConnectingDisplay:identityCopy];
          [(NSMutableDictionary *)self->_rootIdentityToLayoutPublisherMap setObject:v19 forKey:identityCopy];
        }

        v20 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayQueueMap objectForKey:identityCopy];

        if (!v20)
        {
          identityCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:CADisplayMutation", objc_opt_class(), identityCopy];
          serial = [MEMORY[0x277CF0C18] serial];
          v23 = [serial serviceClass:25];
          v24 = isRootIdentity;
          v25 = a2;
          v26 = BSDispatchQueueCreate();

          [(NSMutableDictionary *)self->_rootIdentityToCADisplayQueueMap setObject:v26 forKey:identityCopy];
          a2 = v25;
          isRootIdentity = v24;
        }

        v27 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:identityCopy];

        if (!v27)
        {
          cADisplay = [configurationCopy CADisplay];
          stateControl = [cADisplay stateControl];

          if (stateControl)
          {
            [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl setObject:stateControl forKey:identityCopy];
          }
        }

        [(SBDisplayManager *)self _acquireDisplayStateControlForDisplay:identityCopy withConfiguration:configurationCopy];
        if ([(SBDisplayManager *)self _shouldAcquireAudioPowerAssertionForDisplay:identityCopy])
        {
          [(SBDisplayManager *)self _acquireDisplayPowerAssertionForReason:1 forDisplay:identityCopy];
        }

        v30 = SBLogDisplayControlling();
        if (os_signpost_enabled(v30))
        {
          *buf = 138543362;
          v78 = identityCopy;
          _os_signpost_emit_with_name_impl(&dword_21ED4E000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_DISPLAY_MANAGER_ROOT_DISPLAY_CONNECTED", "%{public}@", buf, 0xCu);
        }

        if ([identityCopy isExternal])
        {
          v31 = dispatch_time(0, 100000000);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __79__SBDisplayManager__connectToIdentity_withConfiguration_forDisplayManagerInit___block_invoke;
          block[3] = &unk_2783A9BD8;
          v70 = v16;
          v71 = configurationCopy;
          selfCopy = self;
          v73 = identityCopy;
          dispatch_after(v31, MEMORY[0x277D85CD0], block);
        }

        else
        {
          [(SBDisplayAssertionCoordinator *)self->_assertionCoordinator activateAssertionsForDisplay:identityCopy];
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
        v54 = isRootIdentity;
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

            v37 = [*(*(&v65 + 1) + 8 * i) displayControllerInfoForConnectingDisplay:identityCopy configuration:configurationCopy];
            if (v37)
            {
              if (v13)
              {
                currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler2 handleFailureInMethod:v53 object:self file:@"SBDisplayManager.m" lineNumber:316 description:{@"multiple factories want to provide a controller for the same display: %@; how it started: %@; how it's going: %@", identityCopy, v13, v37}];
              }

              v38 = v37;

              v13 = v38;
            }
          }

          v34 = [(NSHashTable *)v32 countByEnumeratingWithState:&v65 objects:v76 count:16];
        }

        while (v34);

        isRootIdentity = v54;
        if (v13)
        {
          [(SBDisplayManager *)self _connectControllerWithInfo:v13 toDisplay:identityCopy configuration:configurationCopy];
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
      if (isRootIdentity)
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
                [v46 displayManager:self didConnectToRootDisplay:identityCopy];
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
              [v52 displayManager:self didConnectIdentity:identityCopy withConfiguration:configurationCopy];
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
    v78 = identityCopy;
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

- (void)displayMonitor:(id)monitor didUpdateIdentity:(id)identity withConfiguration:(id)configuration
{
  v25 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  configurationCopy = configuration;
  v9 = SBLogFBDisplayManagerCallbacks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _SBFLoggingMethodProem();
    _sbLoggingDescription = [configurationCopy _sbLoggingDescription];
    v17 = 138543874;
    v18 = v10;
    v19 = 2114;
    v20 = _sbLoggingDescription;
    v21 = 2114;
    v22 = identityCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@\n\tconfiguration: %{public}@;\n\tidentity: %{public}@", &v17, 0x20u);
  }

  hardwareIdentifier = [configurationCopy hardwareIdentifier];
  if (!hardwareIdentifier)
  {
    if ([configurationCopy isMainDisplay])
    {
      goto LABEL_8;
    }

    hardwareIdentifier = SBLogFBDisplayManagerCallbacks();
    if (os_log_type_enabled(hardwareIdentifier, OS_LOG_TYPE_ERROR))
    {
      v16 = _SBFLoggingMethodProem();
      v17 = 138544130;
      v18 = v16;
      v19 = 2114;
      v20 = @"updating";
      v21 = 2114;
      v22 = identityCopy;
      v23 = 2114;
      v24 = configurationCopy;
      _os_log_error_impl(&dword_21ED4E000, hardwareIdentifier, OS_LOG_TYPE_ERROR, "%{public}@ told about a %{public}@ display with nil hardwareIdentifier. identity: %{public}@; configuration: %{public}@", &v17, 0x2Au);
    }
  }

LABEL_8:
  v13 = [(NSMutableDictionary *)self->_connectedIdentityToRecordMap objectForKey:identityCopy];
  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->_identityToControllerMap objectForKey:identityCopy];
    if (v14)
    {
      v15 = SBLogDisplayControlling();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [SBDisplayManager displayMonitor:didUpdateIdentity:withConfiguration:];
      }

      [v14 displayIdentityDidUpdate:identityCopy configuration:configurationCopy];
    }
  }

  else
  {
    v14 = SBLogDisplayControlling();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = identityCopy;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "got an update for an identity that we aren't tracking. ignoring update: %{public}@", &v17, 0xCu);
    }
  }
}

- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity
{
  v53 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v7 = [(FBDisplayManager *)self->_displayManager configurationForIdentity:identityCopy];
  v8 = SBLogFBDisplayManagerCallbacks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _SBFLoggingMethodProem();
    _sbLoggingDescription = [v7 _sbLoggingDescription];
    *buf = 138543874;
    v46 = v9;
    v47 = 2114;
    v48 = _sbLoggingDescription;
    v49 = 2114;
    v50 = identityCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@\n\tconfiguration: %{public}@;\n\tidentity: %{public}@", buf, 0x20u);
  }

  hardwareIdentifier = [v7 hardwareIdentifier];
  if (!hardwareIdentifier)
  {
    if ([v7 isMainDisplay])
    {
      goto LABEL_8;
    }

    hardwareIdentifier = SBLogFBDisplayManagerCallbacks();
    if (os_log_type_enabled(hardwareIdentifier, OS_LOG_TYPE_ERROR))
    {
      v32 = _SBFLoggingMethodProem();
      *buf = 138544130;
      v46 = v32;
      v47 = 2114;
      v48 = @"disconnecting";
      v49 = 2114;
      v50 = identityCopy;
      v51 = 2114;
      v52 = v7;
      _os_log_error_impl(&dword_21ED4E000, hardwareIdentifier, OS_LOG_TYPE_ERROR, "%{public}@ told about a %{public}@ display with nil hardwareIdentifier. identity: %{public}@; configuration: %{public}@", buf, 0x2Au);
    }
  }

LABEL_8:
  v12 = [(NSMutableDictionary *)self->_connectedIdentityToRecordMap objectForKey:identityCopy];
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
            [v19 displayManager:self willDisconnectIdentity:identityCopy];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);
    }

    v20 = [(NSMutableDictionary *)self->_identityToControllerMap objectForKey:identityCopy];
    if (v20)
    {
      v21 = [(NSMapTable *)self->_controllerToAssertionMap objectForKey:v20];
      [(SBDisplayAssertionCoordinator *)self->_assertionCoordinator invalidateAssertionForDerivedDisplayDisconnect:v21];
      [v20 displayIdentityDidDisconnect:identityCopy];
      v22 = SBLogDisplayControlling();
      if (os_signpost_enabled(v22))
      {
        v23 = [(SBDisplayManager *)self _signpostMetadataForController:v20];
        *buf = 138543362;
        v46 = v23;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_DISPLAY_MANAGER_CONTROLLER_TAKES_THE_WHEEL", "%{public}@", buf, 0xCu);
      }

      [(NSMutableDictionary *)self->_identityToControllerMap removeObjectForKey:identityCopy];
      [(NSMutableDictionary *)self->_identityToWindowingModeMap removeObjectForKey:identityCopy];
      [(NSMapTable *)self->_controllerToAssertionMap removeObjectForKey:v20];
    }

    if ([identityCopy isRootIdentity])
    {
      [(SBDisplayAssertionCoordinator *)self->_assertionCoordinator rootDisplayDidDisconnect:identityCopy];
      v24 = [(NSMutableDictionary *)self->_rootIdentityToLayoutPublisherMap objectForKey:identityCopy];
      if (!v24)
      {
        [SBDisplayManager displayMonitor:willDisconnectIdentity:];
      }

      [(SBDisplayManager *)self _deactivateLayoutPublisher:v24 forDisconnectingDisplay:identityCopy];
      [(NSMutableDictionary *)self->_rootIdentityToLayoutPublisherMap removeObjectForKey:identityCopy];
      [(NSMutableDictionary *)self->_rootIdentityToCADisplayQueueMap removeObjectForKey:identityCopy];
      [(SBDisplayManager *)self _releaseAllDisplayPowerAssertionsForDisplay:identityCopy];
      [(NSMutableDictionary *)self->_rootIdentityToDisplayState removeObjectForKey:identityCopy];
      [(NSMutableDictionary *)self->_rootIdentityToDisplayContentMirroringState removeObjectForKey:identityCopy];
      [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl removeObjectForKey:identityCopy];
    }

    [v12 invalidate];
    [(NSMutableDictionary *)self->_connectedIdentityToRecordMap removeObjectForKey:identityCopy];
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
            [v31 displayManager:self didDisconnectIdentity:identityCopy];
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
      v46 = identityCopy;
      _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "got a disconnect for an identity that we aren't tracking. ignoring disconnect: %{public}@", buf, 0xCu);
    }
  }
}

- (void)assertionCoordinator:(id)coordinator updatedAssertionPreferences:(id)preferences oldPreferences:(id)oldPreferences forDisplay:(id)display
{
  v20 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  preferencesCopy = preferences;
  v10 = SBLogDisplayControlling();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = _SBFLoggingMethodProem();
    v18 = 138543362;
    v19 = v11;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ assertion preferences changed. reevaluating", &v18, 0xCu);
  }

  powerLogEntry = [preferencesCopy powerLogEntry];
  [(SBDisplayManager *)self _setPowerLogEntry:powerLogEntry forDisplay:displayCopy];

  displayArrangement = [preferencesCopy displayArrangement];
  [(SBDisplayManager *)self _setDisplayArrangementItem:displayArrangement forDisplay:displayCopy];

  -[SBDisplayManager _setCloneMirroringMode:forDisplay:](self, "_setCloneMirroringMode:forDisplay:", [preferencesCopy cloneMirroringMode], displayCopy);
  disableSystemIdleSleepReason = [preferencesCopy disableSystemIdleSleepReason];
  [(SBDisplayManager *)self _setDisableIdleSleepReason:disableSystemIdleSleepReason forDisplay:displayCopy];

  -[SBDisplayManager _setDisplayContentMirroringState:forDisplay:](self, "_setDisplayContentMirroringState:forDisplay:", [preferencesCopy displayContentMirroringState], displayCopy);
  displayState = [preferencesCopy displayState];

  [(SBDisplayManager *)self _setDisplayState:displayState forDisplay:displayCopy];
  v16 = SBLogDisplayControlling();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = _SBFLoggingMethodProem();
    v18 = 138543362;
    v19 = v17;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ assertion preferences changed. done reevaluating", &v18, 0xCu);
  }
}

- (void)backlightController:(id)controller willAnimateBacklightToFactor:(float)factor source:(int64_t)source
{
  v23 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  allValues = [(NSMutableDictionary *)self->_identityToControllerMap allValues];
  v9 = allValues;
  v10 = fabsf(factor + -1.0);
  v11 = fabsf(factor);
  if (v11 < 2.2204e-16 || v10 < 2.2204e-16)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            [v17 embeddedBacklightStateDidChange:v11 >= 2.2204e-16 source:source];
          }
        }

        v14 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)cache:(id)cache didUpdateAudioSessionPlaying:(BOOL)playing
{
  playingCopy = playing;
  v23 = *MEMORY[0x277D85DE8];
  v6 = SBLogDisplayControlling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    *buf = 138543618;
    v20 = v7;
    v21 = 1024;
    v22 = playingCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ audioSessionPlaying %d", buf, 0x12u);
  }

  allKeys = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allKeys);
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

      v10 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)cache:(id)cache didUpdateActiveAudioRoute:(id)route
{
  v23 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  v6 = SBLogDisplayControlling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    *buf = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = routeCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ activeAudioRoute %@", buf, 0x16u);
  }

  allKeys = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allKeys);
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

      v10 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)_shouldAcquireAudioPowerAssertionForDisplay:(id)display
{
  if ([display isExternal])
  {
    v3 = +[SBAVSystemControllerCache sharedInstance];
    isAudioSessionPlaying = [v3 isAudioSessionPlaying];
    activeAudioRoute = [v3 activeAudioRoute];
    v6 = activeAudioRoute;
    if (isAudioSessionPlaying)
    {
      if ([activeAudioRoute isEqual:@"HDMI"])
      {
        LOBYTE(isAudioSessionPlaying) = 1;
      }

      else
      {
        LOBYTE(isAudioSessionPlaying) = [v6 isEqual:@"HDMIOutput"];
      }
    }
  }

  else
  {
    LOBYTE(isAudioSessionPlaying) = 0;
  }

  return isAudioSessionPlaying;
}

- (void)_setDisplayArrangementItem:(id)item forDisplay:(id)display
{
  v49 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  displayCopy = display;
  v8 = [(NSMutableDictionary *)self->_rootIdentityToDisplayArrangementItems objectForKey:displayCopy];
  if (([v8 isEqual:itemCopy] & 1) == 0 && itemCopy | v8)
  {
    rootIdentityToDisplayArrangementItems = self->_rootIdentityToDisplayArrangementItems;
    v30 = displayCopy;
    if (itemCopy)
    {
      [(NSMutableDictionary *)rootIdentityToDisplayArrangementItems setObject:itemCopy forKey:displayCopy];
    }

    else
    {
      [(NSMutableDictionary *)rootIdentityToDisplayArrangementItems removeObjectForKey:displayCopy];
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
          hardwareIdentifier = [v13 hardwareIdentifier];
          displayManager = self->_displayManager;
          relativeDisplayIdentity = [itemCopy relativeDisplayIdentity];
          v17 = [(FBDisplayManager *)displayManager configurationForIdentity:relativeDisplayIdentity];

          hardwareIdentifier2 = [v17 hardwareIdentifier];
          if (hardwareIdentifier)
          {
            v19 = objc_alloc(MEMORY[0x277CF05D8]);
            edge = [itemCopy edge];
            [itemCopy offset];
            v21 = [v19 initWithDisplayUUID:hardwareIdentifier relativeToDisplayUUID:hardwareIdentifier2 alongEdge:edge atOffset:?];
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
              v47 = hardwareIdentifier2;
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
    if (itemCopy)
    {
      displayCopy = v30;
      if (v24)
      {
        v25 = _SBFLoggingMethodProem();
        *buf = 138544130;
        v39 = v25;
        v40 = 2114;
        v41 = v30;
        v42 = 2114;
        v43 = itemCopy;
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
      displayCopy = v30;
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

- (void)_setPowerLogEntry:(id)entry forDisplay:(id)display
{
  entryCopy = entry;
  displayCopy = display;
  if ([displayCopy isRootIdentity])
  {
    if (entryCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [SBDisplayManager _setPowerLogEntry:forDisplay:];
    if (entryCopy)
    {
      goto LABEL_6;
    }
  }

  v8 = SBLogDisplayControlling();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBDisplayManager _setPowerLogEntry:forDisplay:];
  }

  v9 = [(FBDisplayManager *)self->_displayManager configurationForIdentity:displayCopy];
  entryCopy = [SBDisplayPowerLogEntry forDisplay:v9 mode:0 zoom:0];

LABEL_6:
  [(SBDisplayPowerLogReporter *)self->_powerLogReporter reportPowerLogEntry:entryCopy];
}

- (void)_setCloneMirroringMode:(unint64_t)mode forDisplay:(id)display
{
  v36 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _setCloneMirroringMode:forDisplay:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCloneMirroringMode objectForKey:displayCopy];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (!mode)
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

    v15 = [(NSMutableDictionary *)self->_rootIdentityToCloneMirroringModeTokens objectForKey:displayCopy];
    [v15 invalidate];
    [(NSMutableDictionary *)self->_rootIdentityToCloneMirroringMode removeObjectForKey:displayCopy];
    goto LABEL_18;
  }

  if (unsignedIntegerValue != mode)
  {
    rootIdentityToCloneMirroringMode = self->_rootIdentityToCloneMirroringMode;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    [(NSMutableDictionary *)rootIdentityToCloneMirroringMode setObject:v11 forKey:displayCopy];

    if (mode != 1 && mode != 2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:579 description:{@"unexpected mirroring mode: %lu", mode}];
    }

    if ([displayCopy isMainDisplay])
    {
      v15 = SBLogDisplayControlling();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = _SBFLoggingMethodProem();
        v18 = SBDisplayCloneMirroringModeDescription(unsignedIntegerValue);
        v19 = SBDisplayCloneMirroringModeDescription(mode);
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
      v15 = [(NSMutableDictionary *)self->_rootIdentityToCloneMirroringModeTokens objectForKey:displayCopy];
      v27 = [(FBDisplayManager *)self->_displayManager configurationForIdentity:displayCopy];
      hardwareIdentifier = [v27 hardwareIdentifier];
      v21 = BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay();
      v22 = SBLogDisplayControlling();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = _SBFLoggingMethodProem();
        v24 = SBDisplayCloneMirroringModeDescription(unsignedIntegerValue);
        v25 = SBDisplayCloneMirroringModeDescription(mode);
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

      [(NSMutableDictionary *)self->_rootIdentityToCloneMirroringModeTokens setObject:v21 forKey:displayCopy];
      [v15 invalidate];
    }

LABEL_18:
  }
}

- (void)_setDisableIdleSleepReason:(id)reason forDisplay:(id)display
{
  v31 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  displayCopy = display;
  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _setDisableIdleSleepReason:forDisplay:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToDisableSleepReasons objectForKey:displayCopy];
  if (([v8 isEqualToString:reasonCopy] & 1) == 0 && reasonCopy | v8)
  {
    v9 = [(NSMutableDictionary *)self->_rootIdentityToDisableSleepReasons count];
    rootIdentityToDisableSleepReasons = self->_rootIdentityToDisableSleepReasons;
    if (reasonCopy)
    {
      [(NSMutableDictionary *)rootIdentityToDisableSleepReasons setObject:reasonCopy forKey:displayCopy];
    }

    else
    {
      [(NSMutableDictionary *)rootIdentityToDisableSleepReasons removeObjectForKey:displayCopy];
    }

    v11 = [(NSMutableDictionary *)self->_rootIdentityToDisableSleepReasons count];
    allValues = [(NSMutableDictionary *)self->_rootIdentityToDisableSleepReasons allValues];
    v13 = [allValues sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v14 = [v13 componentsJoinedByString:@"|"];
    mEMORY[0x277D0AB08] = [MEMORY[0x277D0AB08] sharedInstance];
    v16 = mEMORY[0x277D0AB08];
    if (v11)
    {
      [mEMORY[0x277D0AB08] setSystemIdleSleepDisabled:1 forReason:v14];
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

- (void)_acquireDisplayStateControlForDisplay:(id)display withConfiguration:(id)configuration
{
  v14 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  configurationCopy = configuration;
  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _acquireDisplayStateControlForDisplay:withConfiguration:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:displayCopy];
  if (!v8)
  {
    cADisplay = SBLogDisplayControlling();
    if (os_log_type_enabled(cADisplay, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = displayCopy;
      _os_log_impl(&dword_21ED4E000, cADisplay, OS_LOG_TYPE_DEFAULT, "got a display state update for an identity for which we don't have a CADisplayStateControl, ignoring update: %{public}@", &v12, 0xCu);
    }

    goto LABEL_11;
  }

  cADisplay = [configurationCopy CADisplay];
  if ([cADisplay displayType]!= 2)
  {
LABEL_11:

    goto LABEL_12;
  }

  isAirPlayDisplay = [displayCopy isAirPlayDisplay];

  if (isAirPlayDisplay)
  {
    v11 = SBLogDisplayControlling();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = displayCopy;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "acquiring wireless display state control for display: %{public}@", &v12, 0xCu);
    }

    [v8 acquireWirelessDisplayStateControl];
  }

LABEL_12:
}

- (void)_acquireDisplayPowerAssertionForReason:(unint64_t)reason forDisplay:(id)display
{
  v26 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _acquireDisplayPowerAssertionForReason:forDisplay:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:displayCopy];
  if (!v8)
  {
    dictionary = SBLogDisplayControlling();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = displayCopy;
      _os_log_impl(&dword_21ED4E000, dictionary, OS_LOG_TYPE_DEFAULT, "got a display state update for an identity for which we don't have a CADisplayStateControl, ignoring update: %{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (([displayCopy isMainDisplay] & 1) == 0)
  {
    dictionary = [(NSMutableDictionary *)self->_rootIdentityToDisplayPowerAssertions objectForKey:displayCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_rootIdentityToDisplayPowerAssertions setObject:dictionary forKey:displayCopy];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
    v11 = [dictionary objectForKey:v10];

    if (!v11)
    {
      if (reason >= 3)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:675 description:{@"unexpected display power assertion reason: %lu", reason}];

        v12 = 1;
      }

      else
      {
        v12 = reason + 1;
      }

      v14 = SBLogDisplayControlling();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = _SBFLoggingMethodProem();
        v16 = SBDisplayPowerAssertionReasonDescription(reason);
        *buf = 138543874;
        v21 = v15;
        v22 = 2114;
        v23 = v16;
        v24 = 2114;
        v25 = displayCopy;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ acquiring power assertion with reason %{public}@ for identity %{public}@", buf, 0x20u);
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v11 = [v8 createPowerAssertionWithReason:v12 identifier:v18];

      [v11 acquire];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
      [dictionary setObject:v11 forKey:v19];
    }

LABEL_17:
  }
}

- (void)_releaseDisplayPowerAssertionForReason:(unint64_t)reason forDisplay:(id)display
{
  v21 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _releaseDisplayPowerAssertionForReason:forDisplay:];
  }

  v7 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:displayCopy];
  if (!v7)
  {
    v8 = SBLogDisplayControlling();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = displayCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "got a display state update for an identity for which we don't have a CADisplayStateControl, ignoring update: %{public}@", &v15, 0xCu);
    }

    goto LABEL_13;
  }

  if (([displayCopy isMainDisplay] & 1) == 0)
  {
    v8 = [(NSMutableDictionary *)self->_rootIdentityToDisplayPowerAssertions objectForKey:displayCopy];
    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
      v10 = [v8 objectForKey:v9];

      if (v10)
      {
        v11 = SBLogDisplayControlling();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = _SBFLoggingMethodProem();
          v13 = SBDisplayPowerAssertionReasonDescription(reason);
          v15 = 138543874;
          v16 = v12;
          v17 = 2114;
          v18 = v13;
          v19 = 2114;
          v20 = displayCopy;
          _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ releasing power assertion with reason %{public}@ for identity %{public}@", &v15, 0x20u);
        }

        [v10 invalidate];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
        [v8 removeObjectForKey:v14];
      }
    }

LABEL_13:
  }
}

- (void)_releaseAllDisplayPowerAssertionsForDisplay:(id)display
{
  v16 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _releaseAllDisplayPowerAssertionsForDisplay:];
  }

  v5 = [(NSMutableDictionary *)self->_rootIdentityToDisplayPowerAssertions objectForKey:displayCopy];
  allKeys = [v5 allKeys];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        -[SBDisplayManager _releaseDisplayPowerAssertionForReason:forDisplay:](self, "_releaseDisplayPowerAssertionForReason:forDisplay:", [*(*(&v11 + 1) + 8 * v10++) unsignedIntegerValue], displayCopy);
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_setDisplayState:(unint64_t)state forDisplay:(id)display
{
  v34 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _setDisplayState:forDisplay:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:displayCopy];
  if (!v8)
  {
    v10 = SBLogDisplayControlling();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = displayCopy;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "got a display state update for an identity for which we don't have a CADisplayStateControl, ignoring update: %{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if (([displayCopy isMainDisplay] & 1) == 0)
  {
    v9 = [(NSMutableDictionary *)self->_rootIdentityToDisplayState objectForKey:displayCopy];
    v10 = v9;
    if (!v9 || [v9 unsignedIntegerValue]!= state)
    {
      rootIdentityToDisplayState = self->_rootIdentityToDisplayState;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
      [(NSMutableDictionary *)rootIdentityToDisplayState setObject:v12 forKey:displayCopy];

      if (state)
      {
        if (state == 1)
        {
          [(SBDisplayManager *)self _acquireDisplayPowerAssertionForReason:0 forDisplay:displayCopy];
          v13 = 0;
          v14 = 1;
        }

        else
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:738 description:{@"unexpected display state: %lu", state}];

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
        v19 = SBDisplayStateDescription(state);
        *buf = 138544130;
        v27 = v17;
        v28 = 2114;
        v29 = v18;
        v30 = 2114;
        v31 = v19;
        v32 = 2114;
        v33 = displayCopy;
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
      v20 = displayCopy;
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

- (void)_setDisplayContentMirroringState:(unint64_t)state forDisplay:(id)display
{
  v31 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _setDisplayContentMirroringState:forDisplay:];
  }

  v8 = [(NSMutableDictionary *)self->_rootIdentityToCADisplayStateControl objectForKey:displayCopy];
  if (!v8)
  {
    v10 = SBLogDisplayControlling();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = displayCopy;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "got a display state update for an identity for which we don't have a CADisplayStateControl, ignoring update: %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (([displayCopy isMainDisplay] & 1) == 0)
  {
    v9 = [(NSMutableDictionary *)self->_rootIdentityToDisplayContentMirroringState objectForKey:displayCopy];
    v10 = v9;
    if (!v9 || [v9 unsignedIntegerValue]!= state)
    {
      rootIdentityToDisplayContentMirroringState = self->_rootIdentityToDisplayContentMirroringState;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
      [(NSMutableDictionary *)rootIdentityToDisplayContentMirroringState setObject:v12 forKey:displayCopy];

      stateCopy = state;
      if (state >= 2)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:783 description:{@"unexpected display content mirroring state: %lu", state}];

        stateCopy = 0;
      }

      v15 = SBLogDisplayControlling();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = _SBFLoggingMethodProem();
        v17 = SBDisplayContentMirroringStateDescription([v10 unsignedIntegerValue]);
        v18 = SBDisplayContentMirroringStateDescription(state);
        *buf = 138544130;
        v24 = v16;
        v25 = 2114;
        v26 = v17;
        v27 = 2114;
        v28 = v18;
        v29 = 2114;
        v30 = displayCopy;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ changing display content mirroring state from %{public}@ to %{public}@ for identity %{public}@", buf, 0x2Au);
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __64__SBDisplayManager__setDisplayContentMirroringState_forDisplay___block_invoke;
      v19[3] = &unk_2783C4600;
      v19[4] = self;
      v21 = a2;
      v22 = stateCopy;
      v20 = displayCopy;
      [v8 transitionToCloningState:stateCopy withCompletion:v19];
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

- (void)_connectControllerWithInfo:(id)info toDisplay:(id)display configuration:(id)configuration
{
  v41 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  displayCopy = display;
  identityToControllerMap = self->_identityToControllerMap;
  configurationCopy = configuration;
  v12 = [(NSMutableDictionary *)identityToControllerMap objectForKey:displayCopy];
  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_identityToWindowingModeMap objectForKey:displayCopy];
    unsignedIntegerValue = [v13 unsignedIntegerValue];

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v16 = SBDisplayWindowingModeDescription(unsignedIntegerValue);
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayManager.m" lineNumber:800 description:{@"already have a controller for display: %@; existing: %@; existingWindowingMode: %@; new: %@", displayCopy, v12, v16, infoCopy}];
  }

  v36 = v12;
  priorityLevel = [infoCopy priorityLevel];
  if (!SBDisplayAssertionLevelIsValid(priorityLevel))
  {
    [SBDisplayManager _connectControllerWithInfo:toDisplay:configuration:];
  }

  displayController = [infoCopy displayController];
  windowingMode = [infoCopy windowingMode];
  deactivationReasons = [infoCopy deactivationReasons];
  [(NSMutableDictionary *)self->_identityToControllerMap setObject:displayController forKey:displayCopy];
  identityToWindowingModeMap = self->_identityToWindowingModeMap;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:windowingMode];
  [(NSMutableDictionary *)identityToWindowingModeMap setObject:v22 forKey:displayCopy];

  v23 = [(SBSceneManagerCoordinator *)self->_sceneManagerCoordinator sceneManagerForDisplayIdentity:displayCopy];
  rootIdentityToCADisplayQueueMap = self->_rootIdentityToCADisplayQueueMap;
  rootIdentity = [displayCopy rootIdentity];
  v26 = [(NSMutableDictionary *)rootIdentityToCADisplayQueueMap objectForKey:rootIdentity];

  assertionCoordinator = self->_assertionCoordinator;
  rootIdentity2 = [displayCopy rootIdentity];
  v29 = [(SBDisplayAssertionCoordinator *)assertionCoordinator acquireAssertionForDisplay:rootIdentity2 level:priorityLevel deactivationReasons:deactivationReasons delegate:displayController];

  [(NSMapTable *)self->_controllerToAssertionMap setObject:v29 forKey:displayController];
  v30 = SBLogDisplayControlling();
  if (os_signpost_enabled(v30))
  {
    v31 = [(SBDisplayManager *)self _signpostMetadataForController:displayController];
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
    v40 = infoCopy;
    _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ connecting new controllerInfo: %{public}@", buf, 0x16u);
  }

  LOBYTE(v34) = [(SBBacklightController *)self->_backlightController screenIsOn];
  [displayController connectToDisplayIdentity:displayCopy configuration:configurationCopy displayManager:self sceneManager:v23 caDisplayQueue:v26 assertion:v29 embeddedBacklightOn:v34];
}

- (id)_createAndActivateLayoutPublisherForConnectingDisplay:(id)display
{
  displayCopy = display;
  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _createAndActivateLayoutPublisherForConnectingDisplay:];
  }

  if ([displayCopy isMainDisplay])
  {
    mEMORY[0x277D0AAA0] = [MEMORY[0x277D0AAA0] sharedInstance];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D0AD30]);
    [v5 setDomainIdentifier:@"com.apple.frontboard"];
    v6 = SBExternalDisplayLayoutServiceInstanceIdentifierForDisplay();
    [v5 setInstanceIdentifier:v6];

    mEMORY[0x277D0AAA0] = [MEMORY[0x277D0AD28] publisherWithConfiguration:v5];
    if (!mEMORY[0x277D0AAA0])
    {
      [SBDisplayManager _createAndActivateLayoutPublisherForConnectingDisplay:];
    }

    [mEMORY[0x277D0AAA0] activate];
  }

  return mEMORY[0x277D0AAA0];
}

- (void)_deactivateLayoutPublisher:(id)publisher forDisconnectingDisplay:(id)display
{
  publisherCopy = publisher;
  displayCopy = display;
  if (([displayCopy isRootIdentity] & 1) == 0)
  {
    [SBDisplayManager _deactivateLayoutPublisher:forDisconnectingDisplay:];
  }

  if (([displayCopy isMainDisplay] & 1) == 0)
  {
    v6 = objc_opt_class();
    v7 = publisherCopy;
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

- (id)_signpostMetadataForController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy signpostDescription];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p>", objc_opt_class(), controllerCopy];
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
@interface SBExternalDisplayService
- (BOOL)_identityParticipatesInExternalDisplayService:(id)service;
- (SBExternalDisplayService)initWithDisplayManager:(id)manager;
- (SBExternalDisplayService)initWithDisplayManager:(id)manager serviceListenerFactory:(id)factory connectedDisplayInfoFactory:(id)infoFactory;
- (id)_extendedModeDisplayConfigurationForHardwareIdentifier:(id)identifier error:(id *)error;
- (id)preferredArrangementOfExternalDisplay:(id)display;
- (void)_notifyOfPropertyChangesForDisplayConfiguration:(id)configuration requestingClient:(id)client;
- (void)addObserver:(id)observer;
- (void)client:(id)client getConnectedDisplayInfoWithCompletion:(id)completion;
- (void)client:(id)client setDisplayArrangement:(id)arrangement forDisplay:(id)display;
- (void)client:(id)client setDisplayMirroringEnabled:(id)enabled forDisplay:(id)display;
- (void)client:(id)client setDisplayModeSettings:(id)settings forDisplay:(id)display options:(id)options completionHandler:(id)handler;
- (void)dealloc;
- (void)displayManager:(id)manager didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayManager:(id)manager willDisconnectIdentity:(id)identity;
- (void)removeObserver:(id)observer;
@end

@implementation SBExternalDisplayService

- (SBExternalDisplayService)initWithDisplayManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(SBExternalDisplayServiceConnectionListenerFactory);
  v6 = objc_alloc_init(SBSConnectedDisplayInfoFactory);
  v7 = [(SBExternalDisplayService *)self initWithDisplayManager:managerCopy serviceListenerFactory:v5 connectedDisplayInfoFactory:v6];

  return v7;
}

- (SBExternalDisplayService)initWithDisplayManager:(id)manager serviceListenerFactory:(id)factory connectedDisplayInfoFactory:(id)infoFactory
{
  managerCopy = manager;
  factoryCopy = factory;
  infoFactoryCopy = infoFactory;
  v23.receiver = self;
  v23.super_class = SBExternalDisplayService;
  v12 = [(SBExternalDisplayService *)&v23 init];
  if (v12)
  {
    v13 = +[SBDefaults localDefaults];
    externalDisplayDefaults = [v13 externalDisplayDefaults];
    defaults = v12->_defaults;
    v12->_defaults = externalDisplayDefaults;

    objc_storeStrong(&v12->_displayManager, manager);
    objc_storeStrong(&v12->_connectedDisplayInfoFactory, infoFactory);
    v16 = [(SBDisplayManager *)v12->_displayManager addObserver:v12];
    displayManagerObserverToken = v12->_displayManagerObserverToken;
    v12->_displayManagerObserverToken = v16;

    v18 = BSDispatchQueueCreateWithQualityOfService();
    serviceQueue = v12->_serviceQueue;
    v12->_serviceQueue = v18;

    v20 = [factoryCopy newExternalDisplayServiceListenerForDelegate:v12 serviceQueue:v12->_serviceQueue];
    serviceConnectionListener = v12->_serviceConnectionListener;
    v12->_serviceConnectionListener = v20;

    [(_SBExternalDisplayServiceConnectionListening *)v12->_serviceConnectionListener activate];
  }

  return v12;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_displayManagerObserverToken invalidate];
  [(_SBExternalDisplayServiceConnectionListening *)self->_serviceConnectionListener invalidate];
  v3.receiver = self;
  v3.super_class = SBExternalDisplayService;
  [(SBExternalDisplayService *)&v3 dealloc];
}

- (id)preferredArrangementOfExternalDisplay:(id)display
{
  displayManager = self->_displayManager;
  displayCopy = display;
  mainIdentity = [(SBDisplayManager *)displayManager mainIdentity];
  v7 = [SBDisplayArrangementItem preferredArrangementOfDisplay:displayCopy relativeTo:mainIdentity preferences:self->_defaults];

  return v7;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  [(NSHashTable *)self->_observers removeObject:observer];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)client:(id)client getConnectedDisplayInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = completionCopy;
  BSDispatchMain();
}

void __73__SBExternalDisplayService_client_getConnectedDisplayInfoWithCompletion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0AA90] sharedInstance];
  v3 = [v2 connectedIdentities];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      if ([*(a1 + 32) _identityParticipatesInExternalDisplayService:{v9, v16}])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277D0AA90] sharedInstance];
    v13 = [v12 configurationForIdentity:v9];
    v14 = [v11 _displayInfoForDisplayIdentity:v9 configuration:v13];

    v10 = *(a1 + 40);
    if (!v14)
    {
      goto LABEL_12;
    }

    v20 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    (*(v10 + 16))(v10, v15, 0);
  }

  else
  {
LABEL_9:

    v10 = *(a1 + 40);
LABEL_12:
    (*(v10 + 16))(v10, MEMORY[0x277CBEBF8], 0);
  }
}

- (void)client:(id)client setDisplayArrangement:(id)arrangement forDisplay:(id)display
{
  clientCopy = client;
  arrangementCopy = arrangement;
  displayCopy = display;
  v13 = arrangementCopy;
  v9 = arrangementCopy;
  v10 = displayCopy;
  v11 = clientCopy;
  BSDispatchMain();
}

void __68__SBExternalDisplayService_client_setDisplayArrangement_forDisplay___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v28 = v3;
    v29 = 2114;
    v30 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBExternalDisplayService: client %{public}@ is setting displayArrangement for display: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v25 = 0;
  v7 = [v5 _extendedModeDisplayConfigurationForHardwareIdentifier:v6 error:&v25];
  v8 = v25;
  if (v7)
  {
    v9 = [*(a1 + 56) edge];
    [*(a1 + 56) offset];
    v11 = v10;
    if (v9 != [*(*(a1 + 48) + 32) arrangementEdge] || (objc_msgSend(*(*(a1 + 48) + 32), "arrangementOffset"), v11 != v12))
    {
      [*(*(a1 + 48) + 32) setArrangementEdge:v9];
      [*(*(a1 + 48) + 32) setArrangementOffset:v11];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = [*(*(a1 + 48) + 56) copy];
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          v17 = 0;
          do
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v21 + 1) + 8 * v17++) externalDisplayServiceDidUpdatePreferredDisplayArrangement:*(a1 + 48)];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v15);
      }

      [*(a1 + 48) _notifyOfPropertyChangesForDisplayConfiguration:v7 requestingClient:*(a1 + 32)];
    }
  }

  else
  {
    v18 = SBLogDisplayControlling();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543874;
      v28 = v19;
      v29 = 2114;
      v30 = v20;
      v31 = 2114;
      v32 = v8;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "SBExternalDisplayService: client %{public}@ cannot set display arrangement for display: %{public}@ due to error: %{public}@", buf, 0x20u);
    }
  }
}

- (void)client:(id)client setDisplayMirroringEnabled:(id)enabled forDisplay:(id)display
{
  clientCopy = client;
  enabledCopy = enabled;
  displayCopy = display;
  v8 = displayCopy;
  v9 = enabledCopy;
  v10 = clientCopy;
  BSDispatchMain();
}

void __73__SBExternalDisplayService_client_setDisplayMirroringEnabled_forDisplay___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) BOOLValue];
    v5 = *(a1 + 48);
    *buf = 138543874;
    v20 = v3;
    v21 = 1024;
    v22 = v4;
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBExternalDisplayService: client %{public}@ is setting mirroringEnabled %{BOOL}u for display: %{public}@", buf, 0x1Cu);
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v18 = 0;
  v8 = [v6 _extendedModeDisplayConfigurationForHardwareIdentifier:v7 error:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = [*(a1 + 40) BOOLValue];
    if (v10 != [*(*(a1 + 56) + 32) isMirroringEnabled])
    {
      v11 = SBLogDisplayControlling();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v20) = v10;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBExternalDisplayService: setting mirroringEnabled to: %{BOOL}u", buf, 8u);
      }

      v12 = +[SBDefaults localDefaults];
      v13 = [v12 appSwitcherDefaults];
      [v13 setShouldUpdateExternalDisplayMirroringWhenWindowManagementStyleUpdates:0];

      [*(*(a1 + 56) + 32) setMirroringEnabled:v10];
      [*(a1 + 56) _notifyOfPropertyChangesForDisplayConfiguration:v8 requestingClient:*(a1 + 32)];
    }
  }

  else
  {
    v14 = SBLogDisplayControlling();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) BOOLValue];
      v17 = *(a1 + 48);
      *buf = 138544130;
      v20 = v15;
      v21 = 1024;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "SBExternalDisplayService: client %{public}@ cannot set mirroringEnabled %{BOOL}u for display: %{public}@ due to error: %{public}@", buf, 0x26u);
    }
  }
}

- (void)client:(id)client setDisplayModeSettings:(id)settings forDisplay:(id)display options:(id)options completionHandler:(id)handler
{
  clientCopy = client;
  settingsCopy = settings;
  v18 = clientCopy;
  displayCopy = display;
  v20 = settingsCopy;
  optionsCopy = options;
  handlerCopy = handler;
  v13 = handlerCopy;
  v14 = optionsCopy;
  v15 = settingsCopy;
  v16 = displayCopy;
  v17 = clientCopy;
  BSDispatchMain();
}

void __95__SBExternalDisplayService_client_setDisplayModeSettings_forDisplay_options_completionHandler___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v24 = v3;
    v25 = 2114;
    v26 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBExternalDisplayService: client %{public}@ is setting displayMode settings for display: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v22 = 0;
  v7 = [v5 _extendedModeDisplayConfigurationForHardwareIdentifier:v6 error:&v22];
  v8 = v22;
  if (v7)
  {
    v9 = [MEMORY[0x277D65DB0] withDisplay:v7];
    v10 = [v9 supportedScales];

    [*(a1 + 56) scale];
    if ((SBSDisplayScaleMaskFromScale() & ~v10) != 0)
    {
      v16 = @"<nil>";
      if (*(a1 + 40))
      {
        v16 = *(a1 + 40);
      }

      v29 = @"displayHardwareIdentifier";
      v30[0] = v16;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D66FB0] code:3 userInfo:v14];

      v8 = v17;
    }

    else
    {
      v11 = [*(a1 + 64) integerValue];
      v12 = MEMORY[0x277CBEB58];
      v13 = [MEMORY[0x277D65DA8] forDisplay:v7];
      v14 = [v12 setWithObject:v13];

      if ((v11 & 2) != 0)
      {
        v15 = [MEMORY[0x277D65DA8] forDisplaysSimilarToDisplay:v7];
        [v14 addObject:v15];
      }

      [*(*(a1 + 48) + 32) setDisplayModeSettings:*(a1 + 56) forDisplaysMatchingPredicates:v14];
      [*(a1 + 48) _notifyOfPropertyChangesForDisplayConfiguration:v7 requestingClient:*(a1 + 32)];
    }
  }

  if (v8)
  {
    v18 = SBLogDisplayControlling();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543874;
      v24 = v19;
      v25 = 2114;
      v26 = v20;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "SBExternalDisplayService: client %{public}@ cannot set displayMode settings for display: %{public}@ due to error: %{public}@", buf, 0x20u);
    }
  }

  v21 = *(a1 + 72);
  if (v21)
  {
    (*(v21 + 16))(v21, v8);
  }
}

- (void)displayManager:(id)manager didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  identityCopy = identity;
  configurationCopy = configuration;
  if ([(SBExternalDisplayService *)self _identityParticipatesInExternalDisplayService:identityCopy])
  {
    v8 = [(SBExternalDisplayService *)self _displayInfoForDisplayIdentity:identityCopy configuration:configurationCopy];
    [(_SBExternalDisplayServiceConnectionListening *)self->_serviceConnectionListener notifyObserversExternalDisplayDidConnect:v8];
  }
}

- (void)displayManager:(id)manager willDisconnectIdentity:(id)identity
{
  managerCopy = manager;
  identityCopy = identity;
  if ([(SBExternalDisplayService *)self _identityParticipatesInExternalDisplayService:identityCopy])
  {
    v7 = [managerCopy configurationForIdentity:identityCopy];
    v8 = [(SBExternalDisplayService *)self _displayInfoForDisplayIdentity:identityCopy configuration:v7];

    [(_SBExternalDisplayServiceConnectionListening *)self->_serviceConnectionListener notifyObserversExternalDisplayWillDisconnect:v8];
  }
}

- (BOOL)_identityParticipatesInExternalDisplayService:(id)service
{
  serviceCopy = service;
  v4 = [serviceCopy isExternal] && (objc_msgSend(serviceCopy, "isContinuityDisplay") & 1) == 0 && objc_msgSend(serviceCopy, "sb_displayWindowingMode") == 1;

  return v4;
}

- (id)_extendedModeDisplayConfigurationForHardwareIdentifier:(id)identifier error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(SBDisplayManager *)self->_displayManager connectedIdentities];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v9 = 0;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        errorCopy = [(SBDisplayManager *)self->_displayManager configurationForIdentity:v12, errorCopy];
        hardwareIdentifier = [errorCopy hardwareIdentifier];
        v15 = [hardwareIdentifier isEqualToString:identifierCopy];

        if (v15)
        {
          if ([v12 sb_displayWindowingMode] == 1)
          {
            v16 = v12;
            v17 = 2;
            goto LABEL_15;
          }

          v9 = 1;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    errorCopy = 0;
    v16 = 0;
    if (v9)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

LABEL_15:
    error = errorCopy;
  }

  else
  {
    errorCopy = 0;
    v16 = 0;
    v17 = 1;
  }

  if (error && !errorCopy)
  {
    if (identifierCopy)
    {
      v18 = identifierCopy;
    }

    else
    {
      v18 = @"<nil>";
    }

    v28 = @"displayHardwareIdentifier";
    v29 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    if (v16)
    {
      v20 = 2;
    }

    else
    {
      v20 = v17;
    }

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D66FB0] code:v20 userInfo:v19];
  }

  return errorCopy;
}

- (void)_notifyOfPropertyChangesForDisplayConfiguration:(id)configuration requestingClient:(id)client
{
  clientCopy = client;
  configurationCopy = configuration;
  identity = [configurationCopy identity];
  v9 = [(SBExternalDisplayService *)self _displayInfoForDisplayIdentity:identity configuration:configurationCopy];

  [(_SBExternalDisplayServiceConnectionListening *)self->_serviceConnectionListener notifyObserversExternalDisplayDidUpdateProperties:v9 requestingClient:clientCopy];
}

@end
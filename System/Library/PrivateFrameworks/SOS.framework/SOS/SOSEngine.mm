@interface SOSEngine
+ (BOOL)authorizedToUseContactStore;
+ (id)GPSCoordinatesURLForLocation:(id)location;
+ (id)_sosMessageForLocation:(id)location isFirstMessage:(BOOL)message myFullName:(id)name myFirstName:(id)firstName reason:(int64_t)reason recipientReason:(unint64_t)recipientReason;
+ (id)additionalTextForCallbackNumber:(id)number;
+ (id)additionalTextForCallbackNumber:(id)number fullName:(id)name firstName:(id)firstName;
+ (id)contactStore;
+ (id)firstNameForContact:(id)contact;
+ (id)fullNameForContact:(id)contact;
+ (id)getUrlForTrigger:(int64_t)trigger;
+ (id)locationShifter;
+ (id)mapTriggerToActivationReason:(int64_t)reason;
+ (id)meContact;
+ (id)sharedInstance;
+ (void)_sendCKMessage:(id)message failureBlock:(id)block;
+ (void)_sendMessage:(id)message location:(id)location recipients:(id)recipients recipientReasonMessages:(id)messages useStandalone:(BOOL)standalone critical:(BOOL)critical failureBlock:(id)block;
+ (void)preloadContactStoreIfNecessary;
+ (void)shiftedLocationWithLocation:(id)location completion:(id)completion;
- (BOOL)isTriggerEnabled:(int64_t)enabled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)locationIsValidToSend:(id)send;
- (SOSEngine)init;
- (SOSEngine)initWithoutEntitlement;
- (SOSFlowManagerCoexProtocol)sosFlowManager;
- (void)SOSSendingLocationUpdateChanged:(id)changed;
- (void)_checkEmergencyCallStatus;
- (void)_checkSOSCallStatus;
- (void)_onEmergencyCallStatusChanged:(id)changed;
- (void)_tuCallCenterStatusChanged:(id)changed;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)broadcastUpdatedSOSStatus:(id)status;
- (void)contactStoreDidChange;
- (void)databaseWasRebuilt;
- (void)dealloc;
- (void)didDismissSOSBeforeSOSCall:(int64_t)call;
- (void)dismissSOSWithCompletion:(id)completion;
- (void)fetchMedicalIDName;
- (void)handoffFallbackWithUUID:(id)d trigger:(int64_t)trigger;
- (void)mostRecentLocationSentWithCompletion:(id)completion;
- (void)notifyEmergencyReasonToSafetyBuddy;
- (void)notifyEmergencyReasonToSafetyBuddyForInternalDevices;
- (void)notifySafetyKitWithSOSStatus:(id)status;
- (void)retriggerSOSWithUUID:(id)d trigger:(int64_t)trigger;
- (void)sosPersistentTimerLocationManagerTimerFired:(id)fired location:(id)location;
- (void)start;
- (void)startSendingLocationUpdateForReason:(int64_t)reason WithCompletion:(id)completion;
- (void)startSendingLocationUpdateWithCompletion:(id)completion;
- (void)stopSendingLocationUpdate;
- (void)syncState:(id)state;
- (void)triggerSOSWithUUID:(id)d triggerMechanism:(int64_t)mechanism source:(int64_t)source completion:(id)completion;
- (void)updateCurrentSOSButtonPressState:(id)state;
- (void)updateCurrentSOSInitiationState:(int64_t)state;
- (void)updateCurrentSOSInteractiveState:(int64_t)state;
- (void)willStartSendingLocationUpdate;
@end

@implementation SOSEngine

- (void)_checkEmergencyCallStatus
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCalls = [mEMORY[0x277D6EDF8] currentCalls];
  v6 = [v3 initWithArray:currentCalls];

  mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
  callsOnDefaultPairedDevice = [mEMORY[0x277D6EDF8]2 callsOnDefaultPairedDevice];
  [v6 addObjectsFromArray:callsOnDefaultPairedDevice];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (v13 && [*(*(&v15 + 1) + 8 * i) isEmergency])
        {
          v10 = v13;
          goto LABEL_12;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  [(SOSEngine *)self _onEmergencyCallStatusChanged:v10];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_checkSOSCallStatus
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCalls = [mEMORY[0x277D6EDF8] currentCalls];
  v5 = [v2 initWithArray:currentCalls];

  mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
  callsOnDefaultPairedDevice = [mEMORY[0x277D6EDF8]2 callsOnDefaultPairedDevice];
  [v5 addObjectsFromArray:callsOnDefaultPairedDevice];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v12 && [*(*(&v15 + 1) + 8 * i) isSOS])
        {
          v9 = v12;
          goto LABEL_12;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v13 = +[SOSStatusManager sharedInstance];
  [v13 handleSOSCallStatusChange:v9];

  v14 = *MEMORY[0x277D85DE8];
}

- (SOSEngine)init
{
  if ([SOSEntitlement currentProcessHasEntitlement:@"com.apple.sos.trigger"])
  {
    self = [(SOSEngine *)self initWithoutEntitlement];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SOSEngine)initWithoutEntitlement
{
  v27.receiver = self;
  v27.super_class = SOSEngine;
  v2 = [(SOSEngine *)&v27 init];
  if (v2)
  {
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSEngine, init", buf, 2u);
    }

    v4 = objc_opt_new();
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v4;

    sharedInstance = [getSAServerClass() sharedInstance];
    v7 = objc_opt_new();
    contactsManager = v2->_contactsManager;
    v2->_contactsManager = v7;

    v9 = +[SOSPersistentTimerLocationManager sharedInstance];
    sosPersistentTimerLocationManager = v2->_sosPersistentTimerLocationManager;
    v2->_sosPersistentTimerLocationManager = v9;

    [(SOSPersistentTimerLocationManager *)v2->_sosPersistentTimerLocationManager setDelegate:v2];
    v11 = +[SOSStatusManager sharedInstance];
    sosStatusManager = v2->_sosStatusManager;
    v2->_sosStatusManager = v11;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_SOSSendingLocationUpdateChanged_ name:@"SOSSendingLocationUpdateChangedNotification" object:0];

    v14 = +[SOSCoordinator sharedInstance];
    sosCoordinator = v2->_sosCoordinator;
    v2->_sosCoordinator = v14;

    [(SOSCoordinator *)v2->_sosCoordinator addObserver:v2->_sosStatusManager];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v2];

    v17 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_4);
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__tuCallCenterStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];

    objc_initWeak(buf, v2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__SOSEngine_initWithoutEntitlement__block_invoke_2;
    block[3] = &unk_279B53930;
    objc_copyWeak(&v25, buf);
    dispatch_async(v17, block);

    v19 = +[SOSCoreAnalyticsReporter sharedInstance];
    coreAnalyticsReporter = v2->_coreAnalyticsReporter;
    v2->_coreAnalyticsReporter = v19;

    v21 = sos_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "SOSEngine, finished init", v23, 2u);
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __35__SOSEngine_initWithoutEntitlement__block_invoke()
{
  v0 = +[SOSStatusManager sharedInstance];
  [v0 checkSOSStatusOnLaunch];
}

void __35__SOSEngine_initWithoutEntitlement__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__SOSEngine_initWithoutEntitlement__block_invoke_3;
  v3[3] = &unk_279B53930;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 registerWithCompletionHandler:v3];

  objc_destroyWeak(&v4);
}

void __35__SOSEngine_initWithoutEntitlement__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkEmergencyCallStatus];
  [WeakRetained _checkSOSCallStatus];
}

- (void)start
{
  v14 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"SOSSendingLocationUpdateStopTimeKey"];

  if (v4)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [date compare:v4] == 1;

    v7 = sos_default_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "Stopping location updates based on timeToStopSending: %@", buf, 0xCu);
      }

      [(SOSEngine *)self stopSendingLocationUpdate];
    }

    else
    {
      if (v8)
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "Starting location updates based on timeToStopSending: %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __18__SOSEngine_start__block_invoke;
      v10[3] = &unk_279B53958;
      objc_copyWeak(&v11, buf);
      [(SOSEngine *)self startSendingLocationUpdateWithCompletion:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __18__SOSEngine_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x277CBEAA8] distantPast];
    v3 = v4[3];
    v4[3] = v2;

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  [(SOSCoordinator *)self->_sosCoordinator removeObserver:self->_sosStatusManager];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = SOSEngine;
  [(SOSEngine *)&v5 dealloc];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SOSEngine_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sSOSEngine;

  return v2;
}

uint64_t __27__SOSEngine_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sSOSEngine = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)_tuCallCenterStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = changedCopy;
  if (changedCopy)
  {
    name = [changedCopy name];
    v7 = [name isEqualToString:*MEMORY[0x277D6EFF0]];

    v8 = sos_default_log();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SOSEngine, received TUCallCenterCallStatusChangedNotification notification", v10, 2u);
      }

      [(SOSEngine *)self _checkEmergencyCallStatus];
      [(SOSEngine *)self _checkSOSCallStatus];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SOSEngine *)v5 _tuCallCenterStatusChanged:v9];
      }
    }
  }
}

- (void)_onEmergencyCallStatusChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = changedCopy;
  if (changedCopy)
  {
    isActive = [changedCopy isActive];
  }

  else
  {
    isActive = 0;
  }

  v7 = sos_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    isEmergencyCallOngoing = self->_isEmergencyCallOngoing;
    v10[0] = 67109376;
    v10[1] = isEmergencyCallOngoing;
    v11 = 1024;
    v12 = isActive;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSEngine,isEmergencyCallOngoing updated, from, %{BOOL}d, to %{BOOL}d", v10, 0xEu);
  }

  self->_isEmergencyCallOngoing = isActive;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)SOSSendingLocationUpdateChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  isSendingLocationUpdate = [(SOSEngine *)self isSendingLocationUpdate];
  v6 = self->_clientConnections;
  objc_sync_enter(v6);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  clientConnections = [(SOSEngine *)self clientConnections];
  v8 = [clientConnections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(clientConnections);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) remoteObjectProxyWithErrorHandler:&__block_literal_global_369];
        [v11 setSendingLocationUpdate:isSendingLocationUpdate];

        ++v10;
      }

      while (v8 != v10);
      v8 = [clientConnections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  v12 = *MEMORY[0x277D85DE8];
}

void __45__SOSEngine_SOSSendingLocationUpdateChanged___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__SOSEngine_SOSSendingLocationUpdateChanged___block_invoke_cold_1();
  }
}

- (void)updateCurrentSOSInitiationState:(int64_t)state
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientConnections = [(SOSEngine *)self clientConnections];
    *buf = 134218242;
    stateCopy = state;
    v21 = 2112;
    v22 = clientConnections;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to update current sos initiation state to %ld for connections: %@", buf, 0x16u);
  }

  self->_currentSOSInitiationState = state;
  if (!state)
  {
    [(SOSPersistentTimerLocationManager *)self->_sosPersistentTimerLocationManager stopRequestingLocationUpdates];
  }

  v7 = self->_clientConnections;
  objc_sync_enter(v7);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clientConnections2 = [(SOSEngine *)self clientConnections];
  v9 = [clientConnections2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(clientConnections2);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) remoteObjectProxyWithErrorHandler:&__block_literal_global_371];
        [v12 updateClientCurrentSOSInitiationState:state];

        ++v11;
      }

      while (v9 != v11);
      v9 = [clientConnections2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  v13 = *MEMORY[0x277D85DE8];
}

void __45__SOSEngine_updateCurrentSOSInitiationState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__SOSEngine_updateCurrentSOSInitiationState___block_invoke_cold_1();
  }
}

- (void)updateCurrentSOSInteractiveState:(int64_t)state
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientConnections = [(SOSEngine *)self clientConnections];
    *buf = 134218242;
    stateCopy = state;
    v23 = 2112;
    v24 = clientConnections;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to update current sos interactive state to %ld for connections: %@", buf, 0x16u);
  }

  self->_currentSOSInteractiveState = state;
  obj = self->_clientConnections;
  objc_sync_enter(obj);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  clientConnections2 = [(SOSEngine *)self clientConnections];
  v8 = [clientConnections2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(clientConnections2);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_373];
        if (objc_opt_respondsToSelector())
        {
          [v12 updateClientCurrentSOSInteractiveState:state];
        }

        else
        {
          v13 = sos_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            stateCopy = v11;
            _os_log_error_impl(&dword_264323000, v13, OS_LOG_TYPE_ERROR, "Could not send client a current interactive state due to client protocol error for connection %@", buf, 0xCu);
          }
        }
      }

      v8 = [clientConnections2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obj);
  v14 = *MEMORY[0x277D85DE8];
}

void __46__SOSEngine_updateCurrentSOSInteractiveState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__SOSEngine_updateCurrentSOSInteractiveState___block_invoke_cold_1();
  }
}

- (void)updateCurrentSOSButtonPressState:(id)state
{
  v24 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientConnections = [(SOSEngine *)self clientConnections];
    *buf = 138412546;
    v21 = stateCopy;
    v22 = 2112;
    v23 = clientConnections;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSEngine,attempting to update current sos button press state to %@ for connections: %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_currentSOSButtonPressState, state);
  v8 = self->_clientConnections;
  objc_sync_enter(v8);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  clientConnections2 = [(SOSEngine *)self clientConnections];
  v10 = [clientConnections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(clientConnections2);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) remoteObjectProxyWithErrorHandler:&__block_literal_global_377];
        [v13 updateClientCurrentSOSButtonPressState:stateCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [clientConnections2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v14 = *MEMORY[0x277D85DE8];
}

void __46__SOSEngine_updateCurrentSOSButtonPressState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__SOSEngine_updateCurrentSOSButtonPressState___block_invoke_cold_1();
  }
}

- (void)dismissSOSWithCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  obj = self->_clientConnections;
  objc_sync_enter(obj);
  clientConnections = [(SOSEngine *)self clientConnections];
  v6 = [clientConnections count];

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  clientConnections2 = [(SOSEngine *)self clientConnections];
  v8 = [clientConnections2 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(clientConnections2);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __38__SOSEngine_dismissSOSWithCompletion___block_invoke;
        v21[3] = &unk_279B53980;
        v12 = completionCopy;
        v22 = v12;
        v13 = [v11 remoteObjectProxyWithErrorHandler:v21];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __38__SOSEngine_dismissSOSWithCompletion___block_invoke_378;
        v16[3] = &unk_279B539D0;
        v18 = v29;
        v19 = v27;
        v20 = v6;
        v17 = v12;
        [v13 dismissClientSOSWithCompletion:v16];

        ++v10;
      }

      while (v8 != v10);
      v8 = [clientConnections2 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
  objc_sync_exit(obj);

  v14 = *MEMORY[0x277D85DE8];
}

void __38__SOSEngine_dismissSOSWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__SOSEngine_dismissSOSWithCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __38__SOSEngine_dismissSOSWithCompletion___block_invoke_378(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SOSEngine_dismissSOSWithCompletion___block_invoke_2;
  block[3] = &unk_279B539A8;
  v9 = a2;
  v2 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = v2;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __38__SOSEngine_dismissSOSWithCompletion___block_invoke_2(uint64_t result)
{
  ++*(*(*(result + 40) + 8) + 24);
  if (*(result + 64) == 1)
  {
    *(*(*(result + 48) + 8) + 24) = 1;
  }

  if (*(*(*(result + 40) + 8) + 24) == *(result + 56))
  {
    return (*(*(result + 32) + 16))(*(result + 32), *(*(*(result + 48) + 8) + 24));
  }

  return result;
}

- (void)didDismissSOSBeforeSOSCall:(int64_t)call
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = self->_clientConnections;
  objc_sync_enter(v5);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  clientConnections = [(SOSEngine *)self clientConnections];
  v7 = [clientConnections countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(clientConnections);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) remoteObjectProxyWithErrorHandler:&__block_literal_global_381];
        [v10 didDismissClientSOSBeforeSOSCall:call];

        ++v9;
      }

      while (v7 != v9);
      v7 = [clientConnections countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

void __40__SOSEngine_didDismissSOSBeforeSOSCall___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__SOSEngine_didDismissSOSBeforeSOSCall___block_invoke_cold_1();
  }
}

- (void)broadcastUpdatedSOSStatus:(id)status
{
  v21 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [statusCopy description];
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSEngine, broadcasting SOSStatus: %@", buf, 0xCu);
  }

  v7 = self->_clientConnections;
  objc_sync_enter(v7);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clientConnections = [(SOSEngine *)self clientConnections];
  v9 = [clientConnections countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(clientConnections);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) remoteObjectProxyWithErrorHandler:&__block_literal_global_383];
        [v12 didUpdateSOSStatus:statusCopy];

        ++v11;
      }

      while (v9 != v11);
      v9 = [clientConnections countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  v13 = *MEMORY[0x277D85DE8];
}

void __39__SOSEngine_broadcastUpdatedSOSStatus___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __39__SOSEngine_broadcastUpdatedSOSStatus___block_invoke_cold_1();
  }
}

- (void)notifySafetyKitWithSOSStatus:(id)status
{
  v17 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if ([statusCopy resolution] == 4)
  {
    sharedInstance = [getSAServerClass() sharedInstance];
    [sharedInstance startMonitoringLocation];
  }

  if ([statusCopy trigger] == 7)
  {
    resolution = [statusCopy resolution];
    if (resolution)
    {
      v6 = resolution == 4;
      v7 = sos_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = "[SOSEngine notifySafetyKitWithSOSStatus:]";
        v15 = 2112;
        v16 = statusCopy;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "%s - Notifying clients most recent kappa event, %@", &v13, 0x16u);
      }

      sharedInstance2 = [getSAServerClass() sharedInstance];
      timeOfDetection = [statusCopy timeOfDetection];
      timeOfResolution = [statusCopy timeOfResolution];
      [sharedInstance2 notifyCrashDetectedAt:timeOfDetection resolvedAt:timeOfResolution resolvedWithResponse:v6 completion:&__block_literal_global_386];

      sharedInstance3 = [getSAServerClass() sharedInstance];
      [sharedInstance3 stopMonitoringLocation];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sosPersistentTimerLocationManagerTimerFired:(id)fired location:(id)location
{
  v53 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if ([(SOSEngine *)self notificationEnabledAndContactsExist])
  {
    v6 = [(SOSEngine *)self locationIsValidToSend:locationCopy];
    v7 = sos_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 136315650;
      v44 = "[SOSEngine sosPersistentTimerLocationManagerTimerFired:location:]";
      v45 = 1024;
      v46 = v6;
      v47 = 2112;
      *v48 = locationCopy;
      _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "%s - isLocationValid: %d location: %@", &v43, 0x1Cu);
    }

    if (!v6)
    {

      locationCopy = 0;
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = standardUserDefaults;
    if (!self->_timeLastMessageSent)
    {
LABEL_36:
      v31 = objc_opt_class();
      phoneNumbersToMessage = [(SOSContactsManager *)self->_contactsManager phoneNumbersToMessage];
      [v31 _sendMessageToRecipients:phoneNumbersToMessage withLocation:locationCopy isFirstMessage:self->_timeLastMessageSent == 0 medicalIDName:self->_medicalIDName Reason:self->_notifyContactsReason];

      objc_storeStrong(&self->_lastLocationSent, locationCopy);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SOSMostRecentLocationSentChangedNotification", 0, 0, 1u);
      date = [MEMORY[0x277CBEAA8] date];
      timeLastMessageSent = self->_timeLastMessageSent;
      self->_timeLastMessageSent = date;

LABEL_37:
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v37 = [standardUserDefaults2 objectForKey:@"SOSSendingLocationUpdateStopTimeKey"];

      if (v37 && ([MEMORY[0x277CBEAA8] date], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "compare:", v37), v38, v39 == 1))
      {
        v40 = sos_default_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v43 = 138412290;
          v44 = v37;
          _os_log_impl(&dword_264323000, v40, OS_LOG_TYPE_DEFAULT, "Stopping timer based on timeToStopSending: %@", &v43, 0xCu);
        }

        [(SOSEngine *)self stopSendingLocationUpdate];
      }

      else
      {
        v41 = sos_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v43 = 138412290;
          v44 = v37;
          _os_log_impl(&dword_264323000, v41, OS_LOG_TYPE_DEFAULT, "Not yet reached timeToStopSending: %@", &v43, 0xCu);
        }
      }

      goto LABEL_46;
    }

    v10 = [standardUserDefaults objectForKey:@"locationUpdateTimerIntervalSeconds"];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v13 = v12;
    }

    else
    {
      v13 = 900.0;
    }

    v15 = [v9 objectForKey:@"locationUpdateMinimumDistanceMeters"];
    v16 = v15;
    if (v15)
    {
      [v15 doubleValue];
      v18 = v17;
    }

    else
    {
      v18 = 402.336;
    }

    if (v13 <= 60.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 10.0;
    }

    [(NSDate *)self->_timeLastMessageSent timeIntervalSinceNow];
    v20 = 0;
    v22 = -v21;
    v23 = v13 - v19;
    lastLocationSent = self->_lastLocationSent;
    if (locationCopy && lastLocationSent)
    {
      [locationCopy distanceFromLocation:?];
      if (v23 <= v22 && v25 > v18)
      {
        v20 = 1;
        v28 = 1;
        goto LABEL_33;
      }

      v20 = v25 > v18;
      lastLocationSent = self->_lastLocationSent;
    }

    if (locationCopy)
    {
      v27 = lastLocationSent == 0;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
LABEL_33:
    v29 = sos_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_lastLocationSent;
      v43 = 136316418;
      v44 = "[SOSEngine sosPersistentTimerLocationManagerTimerFired:location:]";
      v45 = 1024;
      v46 = v28;
      v47 = 1024;
      *v48 = v23 <= v22;
      *&v48[4] = 1024;
      *&v48[6] = v20;
      v49 = 2112;
      v50 = v30;
      v51 = 2112;
      v52 = locationCopy;
      _os_log_impl(&dword_264323000, v29, OS_LOG_TYPE_DEFAULT, "%s - okToSend: %d timeIntervalOk: %d distanceIntervalOk: %d _lastLocationSent: %@ location: %@", &v43, 0x32u);
    }

    if (!v28)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v14 = sos_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 136315138;
    v44 = "[SOSEngine sosPersistentTimerLocationManagerTimerFired:location:]";
    _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "%s - Stopping timer, emergency contact notification no longer enabled", &v43, 0xCu);
  }

  [(SOSEngine *)self stopSendingLocationUpdate];
LABEL_46:

  v42 = *MEMORY[0x277D85DE8];
}

void __87__SOSEngine__sendMessageToRecipients_withLocation_isFirstMessage_medicalIDName_Reason___block_invoke_397(uint64_t a1)
{
  if ([*(a1 + 40) _isBasebandDevice])
  {
    v2 = *(*(a1 + 32) + 16);

    v2();
  }

  else
  {
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __87__SOSEngine__sendMessageToRecipients_withLocation_isFirstMessage_medicalIDName_Reason___block_invoke_397_cold_1(v3);
    }
  }
}

+ (void)_sendMessage:(id)message location:(id)location recipients:(id)recipients recipientReasonMessages:(id)messages useStandalone:(BOOL)standalone critical:(BOOL)critical failureBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  recipientsCopy = recipients;
  messagesCopy = messages;
  blockCopy = block;
  locationCopy = location;
  v20 = sos_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "+[SOSEngine _sendMessage:location:recipients:recipientReasonMessages:useStandalone:critical:failureBlock:]";
    _os_log_impl(&dword_264323000, v20, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __106__SOSEngine__sendMessage_location_recipients_recipientReasonMessages_useStandalone_critical_failureBlock___block_invoke;
  v26[3] = &unk_279B53A18;
  v27 = recipientsCopy;
  v28 = messageCopy;
  v30 = blockCopy;
  selfCopy = self;
  standaloneCopy = standalone;
  criticalCopy = critical;
  v29 = messagesCopy;
  v21 = blockCopy;
  v22 = messagesCopy;
  v23 = messageCopy;
  v24 = recipientsCopy;
  [self shiftedLocationWithLocation:locationCopy completion:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __106__SOSEngine__sendMessage_location_recipients_recipientReasonMessages_useStandalone_critical_failureBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SOSRecipient handlesFromRecipients:*(a1 + 32)];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getCKSOSMessageClass_softClass;
  v14 = getCKSOSMessageClass_softClass;
  if (!getCKSOSMessageClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getCKSOSMessageClass_block_invoke;
    v10[3] = &unk_279B53140;
    v10[4] = &v11;
    __getCKSOSMessageClass_block_invoke(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = [[v5 alloc] initWithMessage:*(a1 + 40) recipients:v4];
  v8 = [SOSRecipient reasonsDictionaryFromRecipients:*(a1 + 32)];
  [v7 setRecipientReasons:v8];

  if (objc_opt_respondsToSelector())
  {
    [v7 setRecipientReasonMessages:*(a1 + 48)];
  }

  v9 = [*(a1 + 64) GPSCoordinatesURLForLocation:v3];
  [v7 setLocationURL:v9];

  [v7 setUseStandalone:*(a1 + 72)];
  [v7 setIsCritical:*(a1 + 73)];
  [*(a1 + 64) _sendCKMessage:v7 failureBlock:*(a1 + 56)];
}

+ (void)_sendCKMessage:(id)message failureBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  blockCopy = block;
  v7 = [messageCopy copy];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __41__SOSEngine__sendCKMessage_failureBlock___block_invoke;
  v18 = &unk_279B53510;
  v8 = v7;
  v19 = v8;
  v9 = blockCopy;
  v20 = v9;
  [messageCopy setFailureBlock:&v15];
  v10 = sos_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = messageCopy;
    _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "Asking CKSOSUtilities to send message: %@", &buf, 0xCu);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v11 = getCKSOSUtilitiesClass_softClass;
  v24 = getCKSOSUtilitiesClass_softClass;
  if (!getCKSOSUtilitiesClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v26 = __getCKSOSUtilitiesClass_block_invoke;
    v27 = &unk_279B53140;
    v28 = &v21;
    __getCKSOSUtilitiesClass_block_invoke(&buf);
    v11 = v22[3];
  }

  v12 = v11;
  _Block_object_dispose(&v21, 8);
  sharedUtilities = [v11 sharedUtilities];
  [sharedUtilities sendMessage:messageCopy];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __41__SOSEngine__sendCKMessage_failureBlock___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to send %@", &v6, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)locationShifter
{
  if (locationShifter_onceToken != -1)
  {
    +[SOSEngine locationShifter];
  }

  v3 = locationShifter_sLocationShifter;

  return v3;
}

void __28__SOSEngine_locationShifter__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = get_MKLocationShifterClass_softClass;
  v8 = get_MKLocationShifterClass_softClass;
  if (!get_MKLocationShifterClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __get_MKLocationShifterClass_block_invoke;
    v4[3] = &unk_279B53140;
    v4[4] = &v5;
    __get_MKLocationShifterClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = objc_alloc_init(v0);
  v3 = locationShifter_sLocationShifter;
  locationShifter_sLocationShifter = v2;
}

+ (void)shiftedLocationWithLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  if (!locationCopy)
  {
    goto LABEL_5;
  }

  locationShifter = [self locationShifter];
  if (!locationShifter)
  {
    goto LABEL_5;
  }

  v9 = locationShifter;
  locationShifter2 = [self locationShifter];
  v11 = [objc_opt_class() isLocationShiftRequiredForLocation:locationCopy];

  if (v11)
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke;
    block[3] = &unk_279B53AB8;
    v15 = completionCopy;
    selfCopy = self;
    v14 = locationCopy;
    dispatch_async(v12, block);
  }

  else
  {
LABEL_5:
    (*(completionCopy + 2))(completionCopy, locationCopy);
  }
}

void __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke(uint64_t a1)
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v2 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_2;
  v18[3] = &unk_279B53A68;
  v20 = v21;
  v19 = *(a1 + 40);
  v3 = MEMORY[0x266735F90](v18);
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOS location shift started", buf, 2u);
  }

  v5 = [*(a1 + 48) locationShifter];
  v6 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_404;
  v13[3] = &unk_279B53A90;
  v14 = v6;
  v7 = v3;
  v16 = v7;
  v8 = v2;
  v15 = v8;
  v9 = MEMORY[0x277D85CD0];
  v10 = MEMORY[0x277D85CD0];
  [v5 shiftLocation:v14 withCompletionHandler:v13 callbackQueue:v9];

  v11 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v11))
  {
    v12 = sos_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOS location shift timed out.", buf, 2u);
    }

    (*(v7 + 2))(v7, *(a1 + 32));
  }

  _Block_object_dispose(v21, 8);
}

void __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_3;
  block[3] = &unk_279B53A40;
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v8 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_3(void *result)
{
  v1 = *(result[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(result[5] + 16))(result[5], result[4]);
  }

  return result;
}

void __52__SOSEngine_shiftedLocationWithLocation_completion___block_invoke_404(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOS location shift completed. Shifted from %@ to %@", &v7, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  dispatch_semaphore_signal(*(a1 + 40));

  v6 = *MEMORY[0x277D85DE8];
}

- (void)willStartSendingLocationUpdate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136315138;
    *&v10[4] = "[SOSEngine willStartSendingLocationUpdate]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", v10, 0xCu);
  }

  if (![(SOSEngine *)self isSendingLocationUpdate])
  {
    timeLastMessageSent = self->_timeLastMessageSent;
    self->_timeLastMessageSent = 0;

    lastLocationSent = self->_lastLocationSent;
    self->_lastLocationSent = 0;

    [(SOSContactsManager *)self->_contactsManager refreshCurrentEmergencyContacts];
  }

  if (![(SOSEngine *)self notificationEnabledAndContactsExist])
  {
    v6 = sos_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v7 = "no emergency contacts to notify";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_14;
  }

  if ([(SOSPersistentTimerLocationManager *)self->_sosPersistentTimerLocationManager isRequestingLocation])
  {
    v6 = sos_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v7 = "Skipping request for warmUpLocationRequest since we are already requesting location";
LABEL_11:
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, v7, v10, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  [(SOSPersistentTimerLocationManager *)self->_sosPersistentTimerLocationManager warmUpLocationRequest];
LABEL_14:
  if (+[SOSUtilities mostRecentlyUsedSOSTriggerMechanism]== 7)
  {
    sharedInstance = [getSAServerClass() sharedInstance];
    [sharedInstance startMonitoringLocation];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startSendingLocationUpdateForReason:(int64_t)reason WithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SOSEngine *)self notificationEnabledAndContactsExist])
  {
    self->_notifyContactsReason = reason;
    [(SOSEngine *)self notifyEmergencyReasonToSafetyBuddy];
    [(SOSEngine *)self startSendingLocationUpdateWithCompletion:completionCopy];
  }

  else
  {
    v7 = sos_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "No valid contacts to message", v8, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)notifyEmergencyReasonToSafetyBuddy
{
  v3 = +[SOSUtilities currentDeviceSOSStatus];
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.SOS"];
  v5 = [v4 valueForKey:@"SimulateSOSNotifyEmergencyContacts"];
  if (+[SOSUtilities _isInternalDevice])
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v3)
    {
      trigger = [v3 trigger];
      v8 = sos_default_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (trigger <= 6)
      {
        if (trigger)
        {
          if (trigger == 5)
          {
            if (v9)
            {
              *v12 = 0;
              _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Newton", v12, 2u);
            }

            v10 = SOSEventNotificationNewton;
            goto LABEL_37;
          }

          if (trigger == 6)
          {
            if (v9)
            {
              *v12 = 0;
              _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Cinnamon", v12, 2u);
            }

            v10 = SOSEventNotificationCinnamon;
LABEL_37:
            notify_post(v10);
            goto LABEL_38;
          }

LABEL_28:
          if (v9)
          {
            *v12 = 0;
            _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Trigger", v12, 2u);
          }

          v10 = SOSEventNotificationTrigger;
          goto LABEL_37;
        }

        if (v9)
        {
          *v12 = 0;
          v11 = "#notifySB notifyEmergencyReasonToSafetyBuddy for unknown reason";
          goto LABEL_16;
        }

LABEL_17:

        goto LABEL_38;
      }

      if (trigger == 7)
      {
        if (v9)
        {
          *v12 = 0;
          _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Kappa", v12, 2u);
        }

        v10 = SOSEventNotificationKappa;
        goto LABEL_37;
      }

      if (trigger == 8)
      {
        if (v9)
        {
          *v12 = 0;
          _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Mandrake", v12, 2u);
        }

        v10 = SOSEventNotificationMandrake;
        goto LABEL_37;
      }

      if (trigger != 9)
      {
        goto LABEL_28;
      }

      if (!v9)
      {
        goto LABEL_17;
      }

      *v12 = 0;
      v11 = "#notifySB notifyEmergencyReasonToSafetyBuddy for unknown reason";
    }

    else
    {
      v8 = sos_default_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *v12 = 0;
      v11 = "#notifySB notifyEmergencyReasonToSafetyBuddy invalid SOSStatus";
    }

LABEL_16:
    _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    goto LABEL_17;
  }

  [(SOSEngine *)self notifyEmergencyReasonToSafetyBuddyForInternalDevices];
LABEL_38:
}

- (void)notifyEmergencyReasonToSafetyBuddyForInternalDevices
{
  if (+[SOSUtilities _isInternalDevice])
  {
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "#notifySB Allowing notify contact reason to notify Safety Monitor since internal device", buf, 2u);
    }

    notifyContactsReason = self->_notifyContactsReason;
    if (notifyContactsReason == 2)
    {
      v5 = sos_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Kappa", v7, 2u);
      }

      v6 = &SOSEventNotificationKappa;
    }

    else if (notifyContactsReason == 1)
    {
      v5 = sos_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Newton", v8, 2u);
      }

      v6 = &SOSEventNotificationNewton;
    }

    else
    {
      if (notifyContactsReason)
      {
        return;
      }

      v5 = sos_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "#notifySB notifyEmergencyReasonToSafetyBuddy for SOS Trigger", v9, 2u);
      }

      v6 = &SOSEventNotificationTrigger;
    }

    notify_post(*v6);
  }
}

- (void)startSendingLocationUpdateWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SOSEngine startSendingLocationUpdateWithCompletion:]";
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SOSEngine_startSendingLocationUpdateWithCompletion___block_invoke;
  v8[3] = &unk_279B53510;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __54__SOSEngine_startSendingLocationUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  *(v4 + 144) = 0;

  if ([*(a1 + 32) notificationEnabledAndContactsExist])
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [v6 objectForKey:@"locationUpdateTimerIntervalSeconds"];
    v8 = v7;
    if (v7)
    {
      [v7 doubleValue];
    }

    else
    {
      v9 = 900.0;
    }

    [*(*(a1 + 32) + 8) fireAndStartTimertWithTimeInterval:v9 / 3.0];
    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [v10 objectForKey:@"SOSSendingLocationUpdateStopTimeKey"];

    if (!v11)
    {
      v12 = [v6 objectForKey:@"stopSendingTimerIntervalSeconds"];
      v13 = v12;
      if (v12)
      {
        [v12 doubleValue];
        v15 = v14;
      }

      else
      {
        v15 = 86400.0;
      }

      v16 = [MEMORY[0x277CBEAA8] date];
      v17 = [v16 dateByAddingTimeInterval:v15];

      v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v18 setObject:v17 forKey:@"SOSSendingLocationUpdateStopTimeKey"];
    }

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = @"SOSSendingLocationUpdateValueKey";
    v24[0] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v19 postNotificationName:@"SOSSendingLocationUpdateChangedNotification" object:0 userInfo:v20];
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 1, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopSendingLocationUpdate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SOSEngine stopSendingLocationUpdate]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(SOSPersistentTimerLocationManager *)self->_sosPersistentTimerLocationManager invalidateTimer];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"SOSSendingLocationUpdateStopTimeKey"];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"SOSSendingLocationUpdateValueKey";
  v9 = MEMORY[0x277CBEC28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [defaultCenter postNotificationName:@"SOSSendingLocationUpdateChangedNotification" object:0 userInfo:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)mostRecentLocationSentWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_class();
  lastLocationSent = self->_lastLocationSent;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SOSEngine_mostRecentLocationSentWithCompletion___block_invoke;
  v8[3] = &unk_279B53AE0;
  v9 = completionCopy;
  v7 = completionCopy;
  [v5 shiftedLocationWithLocation:lastLocationSent completion:v8];
}

- (void)syncState:(id)state
{
  stateCopy = state;
  (*(state + 2))(stateCopy, [(SOSEngine *)self isSendingLocationUpdate], self->_currentSOSInitiationState, self->_currentSOSInteractiveState, self->_currentSOSButtonPressState);
}

+ (id)meContact
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v13[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v4 = *MEMORY[0x277CBD0B8];
  v12[0] = *MEMORY[0x277CBD0B0];
  v12[1] = v4;
  v5 = *MEMORY[0x277CBD0C0];
  v12[2] = *MEMORY[0x277CBD0A8];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v7 = [v3 arrayByAddingObjectsFromArray:v6];

  v8 = +[SOSEngine contactStore];
  v9 = [v8 _ios_meContactWithKeysToFetch:v7 error:0];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)fullNameForContact:(id)contact
{
  if (contact)
  {
    v4 = [MEMORY[0x277CBDA78] stringFromContact:contact style:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)firstNameForContact:(id)contact
{
  if (contact)
  {
    v4 = [MEMORY[0x277CBDA78] stringFromContact:contact style:1000];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_sosMessageForLocation:(id)location isFirstMessage:(BOOL)message myFullName:(id)name myFirstName:(id)firstName reason:(int64_t)reason recipientReason:(unint64_t)recipientReason
{
  v61[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  firstNameCopy = firstName;
  if ([(__CFString *)nameCopy length]&& ![(__CFString *)firstNameCopy length])
  {
    v14 = nameCopy;

    firstNameCopy = v14;
  }

  v15 = @"_NO_NAME";
  if ([(__CFString *)nameCopy length]&& [(__CFString *)firstNameCopy length])
  {
    v15 = @"_HAS_NAME";
  }

  v16 = v15;
  v17 = @"_HAS_LOCATION";
  if (reason == 2)
  {
    if (!location)
    {
      v17 = @"_NO_LOCATION";
    }

    v21 = v17;
    v52 = @"EMERGENCY_TYPE_KAPPA_TRIGGER";
    if (message)
    {
      v20 = @"KAPPA";
      v22 = @"_PHONE";
      goto LABEL_24;
    }
  }

  else
  {
    v18 = @"EMERGENCY_TYPE_SOS_TRIGGER";
    v19 = @"EMERGENCY";
    if (reason)
    {
      v19 = 0;
    }

    else
    {
      v18 = @"EMERGENCY_TYPE_SOS_TRIGGER";
    }

    if (reason == 1)
    {
      v20 = @"NEWTON";
    }

    else
    {
      v20 = v19;
    }

    if (reason == 1)
    {
      v18 = @"EMERGENCY_TYPE_NEWTON_TRIGGER";
    }

    v52 = v18;
    if (!location)
    {
      v17 = @"_NO_LOCATION";
    }

    v21 = v17;
    if (message)
    {
      v22 = &stru_2875C9CD8;
LABEL_24:
      v53 = v21;
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@_TEXT_MESSAGE%@%@%@", v20, v16, v21, v22];
      goto LABEL_26;
    }
  }

  v53 = v21;
  [MEMORY[0x277CCACA8] stringWithFormat:@"EMERGENCY_TEXT_MESSAGE_SUBSEQUENT%@%@", v16, v21, v48, v49];
  v23 = LABEL_26:;
  v24 = @"_EMERGENCYCONTACT";
  if (recipientReason == 2)
  {
    v24 = @"_CHECKIN";
  }

  v55 = v16;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"EMERGENCY_TEXT_MESSAGE_RECIPIENT%@%@", v24, v16];
  if (nameCopy)
  {
    v26 = nameCopy;
  }

  else
  {
    v26 = &stru_2875C9CD8;
  }

  v27 = v26;

  if (firstNameCopy)
  {
    v28 = firstNameCopy;
  }

  else
  {
    v28 = &stru_2875C9CD8;
  }

  v29 = v28;

  v30 = MEMORY[0x277CCACA8];
  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v31 localizedStringForKey:v23 value:&stru_2875C9CD8 table:0];
  v61[0] = v27;
  v61[1] = v29;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
  v34 = [v30 stringWithPositionalSpecifiersFormat:v32 arguments:v33];

  v35 = MEMORY[0x277CCACA8];
  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v50 = v25;
  [v36 localizedStringForKey:v25 value:&stru_2875C9CD8 table:0];
  v38 = v37 = v23;
  v51 = v27;
  v60[0] = v27;
  v60[1] = v29;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v40 = [v35 stringWithPositionalSpecifiersFormat:v38 arguments:v39];

  v41 = MEMORY[0x277CCACA8];
  v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v43 = [v42 localizedStringForKey:v52 value:&stru_2875C9CD8 table:0];
  v44 = [v41 stringWithFormat:@"%@%@ %@", v43, v34, v40];

  v45 = sos_default_log();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v57 = v37;
    v58 = 2112;
    v59 = v44;
    _os_log_impl(&dword_264323000, v45, OS_LOG_TYPE_DEFAULT, "textMessageKey: %@ sosMessage: %@", buf, 0x16u);
  }

  v46 = *MEMORY[0x277D85DE8];

  return v44;
}

+ (id)GPSCoordinatesURLForLocation:(id)location
{
  locationCopy = location;
  v4 = locationCopy;
  if (locationCopy)
  {
    v5 = MEMORY[0x277CCACA8];
    [locationCopy coordinate];
    v7 = v6;
    [v4 coordinate];
    v9 = [v5 stringWithFormat:@"https://maps.apple.com/?ll=%.5f, %.5f", v7, v8];
    if (v9)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"EMERGENCY_PIN_LABEL" value:&stru_2875C9CD8 table:0];
      uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
      v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

      if ([v13 length])
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"&q=%@", v13];
        v15 = [v9 stringByAppendingString:v14];

        v9 = v15;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)additionalTextForCallbackNumber:(id)number
{
  numberCopy = number;
  meContact = [self meContact];
  v6 = [self fullNameForContact:meContact];
  v7 = [self firstNameForContact:meContact];
  v8 = [self additionalTextForCallbackNumber:numberCopy fullName:v6 firstName:v7];

  return v8;
}

+ (id)additionalTextForCallbackNumber:(id)number fullName:(id)name firstName:(id)firstName
{
  numberCopy = number;
  firstNameCopy = firstName;
  v8 = [firstNameCopy length];
  if ([numberCopy length])
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    if (!v8)
    {
      v12 = [v10 localizedStringForKey:@"EMERGENCY_TEXT_CALLBACK_NUMBER_ADDITION_NO_NAME" value:&stru_2875C9CD8 table:0];
      [v9 stringWithFormat:v12, numberCopy, v15];
      goto LABEL_8;
    }

    v12 = [v10 localizedStringForKey:@"EMERGENCY_TEXT_CALLBACK_NUMBER_ADDITION_HAS_NAME" value:&stru_2875C9CD8 table:0];
    v15 = numberCopy;
LABEL_6:
    [v9 stringWithFormat:v12, firstNameCopy, v15];
    v13 = LABEL_8:;

    goto LABEL_9;
  }

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"EMERGENCY_TEXT_CALLBACK_NO_NUMBER_ADDITION_HAS_NAME" value:&stru_2875C9CD8 table:0];
    goto LABEL_6;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (BOOL)locationIsValidToSend:(id)send
{
  *&v27[13] = *MEMORY[0x277D85DE8];
  sendCopy = send;
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = "[SOSEngine locationIsValidToSend:]";
    v26 = 2112;
    *v27 = sendCopy;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "%s - location: %@", &v24, 0x16u);
  }

  if (sendCopy)
  {
    [sendCopy horizontalAccuracy];
    if (v5 >= 0.0)
    {
      [sendCopy horizontalAccuracy];
      if (v10 <= 165.0)
      {
        integrity = [sendCopy integrity];
        v17 = integrity;
        if (integrity == *MEMORY[0x277CE4288] || integrity == *MEMORY[0x277CE4280])
        {
          timestamp = [sendCopy timestamp];
          v6 = timestamp;
          if (timestamp && ([timestamp timeIntervalSinceNow], v20 < -180.0))
          {
            v21 = sos_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 138412290;
              v25 = v6;
              _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "Rejecting location - timestamp too old: %@", &v24, 0xCu);
            }

            v9 = 0;
          }

          else
          {
            v21 = sos_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              [sendCopy horizontalAccuracy];
              v24 = 134218498;
              v25 = v23;
              v26 = 1024;
              *v27 = v17;
              v27[2] = 2112;
              *&v27[3] = v6;
              _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "Keeping location - horizontalAccuracy:%f locationIntegrity:%d timestamp:%@", &v24, 0x1Cu);
            }

            v9 = 1;
          }

          goto LABEL_14;
        }

        v6 = sos_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 67109120;
          LODWORD(v25) = v17;
          v8 = "Rejecting location - locationIntegrity: %d";
          v12 = v6;
          v13 = 8;
          goto LABEL_12;
        }
      }

      else
      {
        v6 = sos_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          [sendCopy horizontalAccuracy];
          v24 = 134217984;
          v25 = v11;
          v8 = "Rejecting location - horizontalAccuracy > 165.0: %f";
          goto LABEL_11;
        }
      }
    }

    else
    {
      v6 = sos_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        [sendCopy horizontalAccuracy];
        v24 = 134217984;
        v25 = v7;
        v8 = "Rejecting location - horizontalAccuracy < 0.0: %f";
LABEL_11:
        v12 = v6;
        v13 = 12;
LABEL_12:
        _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, v8, &v24, v13);
      }
    }

    v9 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)retriggerSOSWithUUID:(id)d trigger:(int64_t)trigger
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_isEmergencyCallOngoing)
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSEngine,retrigger blocked by ongoing emergency call", &v11, 2u);
    }

    v5 = +[SOSStatusManager sharedInstance];
    [v5 updateSOSFlowState:10];
  }

  else
  {
    v5 = [SOSEngine getUrlForTrigger:trigger];
    if (v5)
    {
      v6 = +[SOSStatusManager sharedInstance];
      [v6 updateSOSFlowState:14];

      v7 = sos_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSEngine,opening retrigger URL,%@", &v11, 0xCu);
      }

      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      [defaultWorkspace openURL:v5 configuration:0 completionHandler:&__block_literal_global_495];
    }

    else
    {
      v9 = sos_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SOSEngine,no URL to launch for retrigger", &v11, 2u);
      }

      defaultWorkspace = +[SOSStatusManager sharedInstance];
      [defaultWorkspace updateSOSFlowState:0];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __42__SOSEngine_retriggerSOSWithUUID_trigger___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sos_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__SOSEngine_retriggerSOSWithUUID_trigger___block_invoke_cold_1();
    }

    v5 = +[SOSStatusManager sharedInstance];
    [v5 updateSOSFlowState:0];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS triggered successfully", v6, 2u);
  }
}

- (void)handoffFallbackWithUUID:(id)d trigger:(int64_t)trigger
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = +[SOSUtilities currentDeviceSOSStatus];
  v8 = v7;
  if (v7 && [v7 shouldRejectNewSOSTriggers])
  {
    v9 = sos_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v8;
      v10 = "SOSEngine,handoff fallback blocked by existing SOS flow: %@";
      v11 = v9;
      v12 = 12;
LABEL_8:
      _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
    }
  }

  else if (self->_isEmergencyCallOngoing)
  {
    v9 = sos_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v10 = "SOSEngine,handoff fallback blocked by ongoing emergency call";
      v11 = v9;
      v12 = 2;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [SOSEngine getUrlForTrigger:trigger];
    if (v9)
    {
      v13 = +[SOSStatusManager sharedInstance];
      [v13 sosTriggeredWithUUID:dCopy trigger:trigger source:0];

      v14 = sos_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&dword_264323000, v14, OS_LOG_TYPE_DEFAULT, "SOSEngine,opening handoff fallback URL,%@", &v17, 0xCu);
      }

      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      [defaultWorkspace openURL:v9 configuration:0 completionHandler:&__block_literal_global_497];
    }

    else
    {
      defaultWorkspace = sos_default_log();
      if (os_log_type_enabled(defaultWorkspace, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_264323000, defaultWorkspace, OS_LOG_TYPE_DEFAULT, "SOSEngine,no URL to launch for handoff fallback", &v17, 2u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __45__SOSEngine_handoffFallbackWithUUID_trigger___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sos_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__SOSEngine_retriggerSOSWithUUID_trigger___block_invoke_cold_1();
    }

    v5 = +[SOSStatusManager sharedInstance];
    [v5 updateSOSFlowState:0];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS triggered successfully", v6, 2u);
  }
}

- (void)triggerSOSWithUUID:(id)d triggerMechanism:(int64_t)mechanism source:(int64_t)source completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (!dCopy)
  {
    dCopy = [MEMORY[0x277CCAD78] UUID];
  }

  v12 = sos_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = dCopy;
    v37 = 1024;
    mechanismCopy = mechanism;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS triggered,uuid,%@,mechanism,%d", buf, 0x12u);
  }

  v13 = +[SOSUtilities currentDeviceSOSStatus];
  v14 = +[SOSUtilities pairedDeviceSOSStatus];
  if (v13 && ([v13 shouldRejectNewSOSTriggers] & 1) != 0 || v14 && objc_msgSend(v14, "shouldRejectNewSOSTriggers"))
  {
    v15 = sos_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "SOSEngine, sos flow already active, rejecting", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 2);
    }

    coreAnalyticsReporter = [(SOSEngine *)self coreAnalyticsReporter];
    [coreAnalyticsReporter reportSOSRejectedWithTrigger:mechanism currentTriggerMechanism:{objc_msgSend(v13, "trigger")}];
LABEL_14:

    goto LABEL_45;
  }

  if (self->_isEmergencyCallOngoing)
  {
    v17 = sos_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v17, OS_LOG_TYPE_DEFAULT, "SOSEngine, emergency call is ongoing, rejecting", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 6);
    }

    goto LABEL_45;
  }

  if (![(SOSEngine *)self isTriggerEnabled:mechanism])
  {
    v24 = sos_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v36) = mechanism;
      _os_log_impl(&dword_264323000, v24, OS_LOG_TYPE_DEFAULT, "SOSEngine,trigger (%d) not enabled", buf, 8u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 4);
    }

    coreAnalyticsReporter = +[SOSStatusManager sharedInstance];
    [coreAnalyticsReporter sosTriggerDisabledWithUUID:dCopy trigger:mechanism];
    goto LABEL_14;
  }

  v18 = +[SOSCoordinator sharedInstance];
  v19 = [v18 shouldHandoffToPairedDevice:mechanism];

  if (v19)
  {
    v20 = +[SOSCoordinator sharedInstance];
    v21 = [v20 tryPushToPairedDeviceWithUUID:dCopy triggerMechanism:mechanism];

    if (v21)
    {
      v22 = sos_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v22, OS_LOG_TYPE_DEFAULT, "SOSEngine,successfully completed SOS handoff to paired device", buf, 2u);
      }

      v23 = +[SOSStatusManager sharedInstance];
      [v23 sosTriggerPushedToPairedDeviceWithUUID:dCopy trigger:mechanism];

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 5);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v25 = sos_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v25, OS_LOG_TYPE_DEFAULT, "SOSEngine,handoff SOS trigger to paired device unsupported", buf, 2u);
    }
  }

  v26 = [SOSEngine getUrlForTrigger:mechanism];
  if (v26)
  {
    v27 = +[SOSStatusManager sharedInstance];
    [v27 sosTriggeredWithUUID:dCopy trigger:mechanism source:source];

    v28 = sos_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v26;
      _os_log_impl(&dword_264323000, v28, OS_LOG_TYPE_DEFAULT, "SOSEngine,opening URL,%@", buf, 0xCu);
    }

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __67__SOSEngine_triggerSOSWithUUID_triggerMechanism_source_completion___block_invoke;
    v33[3] = &unk_279B53B28;
    v34 = completionCopy;
    [defaultWorkspace openURL:v26 configuration:0 completionHandler:v33];

    coreAnalyticsReporter2 = [(SOSEngine *)self coreAnalyticsReporter];
    [coreAnalyticsReporter2 reportSOSTriggered:mechanism];
  }

  else
  {
    v31 = sos_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v31, OS_LOG_TYPE_DEFAULT, "SOSEngine,no URL to launch", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

LABEL_45:
  v32 = *MEMORY[0x277D85DE8];
}

void __67__SOSEngine_triggerSOSWithUUID_triggerMechanism_source_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sos_default_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __42__SOSEngine_retriggerSOSWithUUID_trigger___block_invoke_cold_1();
    }

    v9 = +[SOSStatusManager sharedInstance];
    [v9 updateSOSFlowState:0];

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_10:
      v11();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS triggered successfully", v13, 2u);
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v11 = *(v12 + 16);
      goto LABEL_10;
    }
  }
}

- (BOOL)isTriggerEnabled:(int64_t)enabled
{
  enabledCopy = enabled;
  if (enabled > 9)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSEngine *)enabledCopy isTriggerEnabled:v5];
    }

    return 0;
  }

  else if (((1 << enabled) & 0x35F) != 0)
  {
    return 1;
  }

  else if (enabled == 5)
  {

    return +[SOSUtilities newtonTriggersEmergencySOS];
  }

  else
  {

    return +[SOSUtilities kappaTriggersEmergencySOS];
  }
}

+ (id)getUrlForTrigger:(int64_t)trigger
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v4 setScheme:@"telSOS"];
  v5 = [SOSEngine mapTriggerToActivationReason:trigger];
  v6 = [MEMORY[0x277CCAD18] queryItemWithName:@"reason" value:v5];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v4 setQueryItems:v7];

  v8 = [v4 URL];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)mapTriggerToActivationReason:(int64_t)reason
{
  reasonCopy = reason;
  if (reason < 8 && ((0x8Fu >> reason) & 1) != 0)
  {
    return off_279B53C08[reason];
  }

  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SOSEngine *)reasonCopy mapTriggerToActivationReason:v5];
  }

  return @"SOSRemoteAlertActivationReasonActivatingForSOSWithVolumeLockHold";
}

- (void)contactStoreDidChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SOSFriendsChangedNotification" object:0];
}

+ (void)preloadContactStoreIfNecessary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SOSEngine_preloadContactStoreIfNecessary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (preloadContactStoreIfNecessary_once_1 != -1)
  {
    dispatch_once(&preloadContactStoreIfNecessary_once_1, block);
  }
}

void __43__SOSEngine_preloadContactStoreIfNecessary__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.sos.contactStoreQueue", 0);
  v3 = __contactStoreQueue_1;
  __contactStoreQueue_1 = v2;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SOSEngine_preloadContactStoreIfNecessary__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(__contactStoreQueue_1, block);
}

uint64_t __43__SOSEngine_preloadContactStoreIfNecessary__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) authorizedToUseContactStore];
  if (result)
  {
    __contactStore_1 = [MEMORY[0x277CBDAB8] storeWithOptions:1];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

+ (id)contactStore
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  [self preloadContactStoreIfNecessary];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__SOSEngine_contactStore__block_invoke;
  block[3] = &unk_279B53140;
  block[4] = &v5;
  dispatch_sync(__contactStoreQueue_1, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (BOOL)authorizedToUseContactStore
{
  if (authorizedToUseContactStore_onceToken_1 != -1)
  {
    +[SOSEngine authorizedToUseContactStore];
  }

  return authorizedToUseContactStore_contactStoreAuthorized_1;
}

void __40__SOSEngine_authorizedToUseContactStore__block_invoke()
{
  v0 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
  authorizedToUseContactStore_contactStoreAuthorized_1 = v0 == 3;
  if (v0 != 3)
  {
    NSLog(&cfstr_NotAuthorizedT.isa, v0);
  }
}

- (void)fetchMedicalIDName
{
  objc_initWeak(&location, self);
  v2 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  [v2 setDebugIdentifier:@"com.apple.sos"];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__SOSEngine_fetchMedicalIDName__block_invoke;
  v3[3] = &unk_279B53B50;
  objc_copyWeak(&v4, &location);
  [v2 fetchMedicalIDDataWithCompletion:v3];
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
}

void __31__SOSEngine_fetchMedicalIDName__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = CUTWeakLinkClass();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v9 hasAnyData] && (objc_msgSend(v3, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "lostModeIsActive"), v5, (v6 & 1) == 0))
    {
      v7 = [v9 name];
    }

    else
    {
      v7 = 0;
    }

    v8 = WeakRetained[5];
    WeakRetained[5] = v7;
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  uninstallCopy = uninstall;
  v5 = [uninstallCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        v10 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"];

        if (v10)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __38__SOSEngine_applicationsDidUninstall___block_invoke;
          block[3] = &unk_279B532A0;
          block[4] = self;
          dispatch_async(MEMORY[0x277D85CD0], block);
          goto LABEL_11;
        }
      }

      v6 = [uninstallCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __38__SOSEngine_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSendingLocationUpdate];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 stopSendingLocationUpdate];
  }

  return result;
}

- (void)databaseWasRebuilt
{
  if (!+[SOSUtilities isMessagesAppInstalled])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__SOSEngine_databaseWasRebuilt__block_invoke;
    block[3] = &unk_279B532A0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __31__SOSEngine_databaseWasRebuilt__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSendingLocationUpdate];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 stopSendingLocationUpdate];
  }

  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.sos.trigger"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke;
    v12[3] = &unk_279B53BA0;
    v13 = connectionCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], v12);
    v8 = v13;
  }

  else
  {
    v8 = sos_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v16 = connectionCopy;
      *&v16[8] = 2112;
      *&v16[10] = @"com.apple.sos.trigger";
      _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] SOSEngine,New connection %@ missing entitlement: %@", buf, 0x16u);
    }
  }

  v9 = sos_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v16 = bOOLValue;
    *&v16[4] = 2112;
    *&v16[6] = connectionCopy;
    _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SOSEngine,shouldAcceptNewConnection: %d for connection: %@", buf, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

void __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = SOSClientInterface();
  [*(a1 + 32) setRemoteObjectInterface:v2];

  v3 = SOSServerInterface();
  [*(a1 + 32) setExportedInterface:v3];

  [*(a1 + 32) setExportedObject:*(a1 + 40)];
  v4 = [*(a1 + 40) clientConnections];
  objc_sync_enter(v4);
  v5 = [*(a1 + 40) clientConnections];
  [v5 addObject:*(a1 + 32)];

  objc_sync_exit(v4);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, *(a1 + 40));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke_2;
  v9[3] = &unk_279B53930;
  objc_copyWeak(&v10, &location);
  [*(a1 + 32) setInterruptionHandler:v9];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke_534;
  v6[3] = &unk_279B53B78;
  objc_copyWeak(&v7, &from);
  objc_copyWeak(&v8, &location);
  [*(a1 + 32) setInvalidationHandler:v6];
  [*(a1 + 32) resume];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS client connection interrupted", buf, 2u);
  }

  objc_copyWeak(&to, (a1 + 32));
  v3 = objc_loadWeakRetained(&to);
  [v3 invalidate];

  objc_destroyWeak(&to);
}

void __48__SOSEngine_listener_shouldAcceptNewConnection___block_invoke_534(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOSEngine,SOS client connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_copyWeak(&to, (a1 + 40));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&to);

    if (v4)
    {
      v5 = [WeakRetained clientConnections];
      objc_sync_enter(v5);
      v6 = [WeakRetained clientConnections];
      v7 = objc_loadWeakRetained(&to);
      [v6 removeObject:v7];

      objc_sync_exit(v5);
      [WeakRetained updateCurrentSOSInteractiveState:0];
    }
  }

  v8 = sos_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "SOSEngine,completed invalidationHandler cleanup", v9, 2u);
  }

  objc_destroyWeak(&to);
}

- (SOSFlowManagerCoexProtocol)sosFlowManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sosFlowManager);

  return WeakRetained;
}

- (void)_tuCallCenterStatusChanged:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  [v3 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "SOSEngine, unexpected call event notification %s", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __45__SOSEngine_SOSSendingLocationUpdateChanged___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "Could not send client a location update change due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__SOSEngine_updateCurrentSOSInitiationState___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "Could not send client a current initiation state due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__SOSEngine_updateCurrentSOSInteractiveState___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "Could not send client a current interactive state due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__SOSEngine_updateCurrentSOSButtonPressState___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "SOSEngine,could not send client a current button press state due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__SOSEngine_dismissSOSWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "Could not dismiss client due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__SOSEngine_didDismissSOSBeforeSOSCall___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "Could not dismiss client before SOS call due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__SOSEngine_broadcastUpdatedSOSStatus___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "Could not send client a status update due to connection error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__SOSEngine_retriggerSOSWithUUID_trigger___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "SOSEngine,failed to launch SOS with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isTriggerEnabled:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "SOSEngine,isTriggerEnabled,unrecognized SOSTriggerMechanism %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)mapTriggerToActivationReason:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "SOSEngine,trying to get activation reason for unhandled SOSTriggerMechanism,%d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end
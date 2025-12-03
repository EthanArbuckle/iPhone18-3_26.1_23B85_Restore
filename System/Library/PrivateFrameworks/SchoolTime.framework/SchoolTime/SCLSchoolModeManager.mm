@interface SCLSchoolModeManager
- (BOOL)isEligibleDevice:(id)device;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SCLSchoolModeManager)initWithConfiguration:(id)configuration;
- (id)activityCriteria;
- (id)descriptionBuilderForNRDevice:(id)device;
- (id)eligiblePairedDevices;
- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)hints;
- (void)_handleActivityStarted:(id)started;
- (void)_updateActivityRegistration;
- (void)clientProxy:(id)proxy didConnectWithPairingID:(id)d;
- (void)clientProxyDidInvalidate:(id)invalidate;
- (void)createControllerForDevice:(id)device;
- (void)dealloc;
- (void)handleDevicePairedNotification:(id)notification;
- (void)handleDeviceUnpairedNotification:(id)notification;
- (void)loadPairedDevices;
- (void)removeCoordinator:(id)coordinator;
- (void)start;
@end

@implementation SCLSchoolModeManager

- (SCLSchoolModeManager)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v32.receiver = self;
  v32.super_class = SCLSchoolModeManager;
  v5 = [(SCLSchoolModeManager *)&v32 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    coordinatorMap = v5->_coordinatorMap;
    v5->_coordinatorMap = strongToStrongObjectsMapTable;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clients = v5->_clients;
    v5->_clients = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_attr_make_initially_inactive(v12);

    workloop = [configurationCopy workloop];
    v15 = dispatch_queue_create_with_target_V2("com.apple.schooltime.manager", v13, workloop);
    queue = v5->_queue;
    v5->_queue = v15;

    if ([(SCLSchoolModeManagerConfiguration *)v5->_configuration managesSchoolTimeSession])
    {
      v17 = [[SCLSuppressSchoolModeAssertionManager alloc] initWithTargetQueue:v5->_queue];
      supppressionManager = v5->_supppressionManager;
      v5->_supppressionManager = v17;
    }

    v19 = [[SCLInterruptBehaviorResolver alloc] initWithTargetQueue:v5->_queue];
    interruptBehaviorResolver = v5->_interruptBehaviorResolver;
    v5->_interruptBehaviorResolver = v19;

    v21 = [SCLTransportService alloc];
    v22 = v5->_queue;
    service = [configurationCopy service];
    v24 = [(SCLTransportService *)v21 initWithTargetQueue:v22 service:service];
    transportService = v5->_transportService;
    v5->_transportService = v24;

    v26 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.schooltime.schedule"];
    listener = v5->_listener;
    v5->_listener = v26;

    [(NSXPCListener *)v5->_listener _setQueue:v5->_queue];
    [(NSXPCListener *)v5->_listener setDelegate:v5];
    objc_initWeak(&location, v5);
    v28 = v5->_queue;
    objc_copyWeak(&v30, &location);
    v5->_stateHandle = os_state_add_handler();
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v5;
}

uint64_t __46__SCLSchoolModeManager_initWithConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateDataWithHints:a2];

  return v4;
}

- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)hints
{
  configuration = [(SCLSchoolModeManager *)self configuration];
  deviceRegistry = [configuration deviceRegistry];
  v6 = [deviceRegistry getAllDevicesWithArchivedAltAccountDevicesMatching:&__block_literal_global_11];

  v7 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__SCLSchoolModeManager_stateDataWithHints___block_invoke_2;
  v13[3] = &unk_279B6CA50;
  v14 = v7;
  selfCopy = self;
  v16 = v6;
  v8 = v6;
  v9 = v7;
  [v9 appendBodySectionWithName:0 multilinePrefix:0 block:v13];
  build = [v9 build];
  v11 = SCLSStateDataWithTitleDescriptionAndHints(@"SCLSchoolModeManager", build);

  return v11;
}

uint64_t __43__SCLSchoolModeManager_stateDataWithHints___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) coordinatorMap];
  v4 = [v3 objectEnumerator];
  v5 = [v4 allObjects];
  [v2 appendArraySection:v5 withName:@"coordinators" skipIfEmpty:0];

  v6 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 8) allObjects];
  [v6 appendArraySection:v7 withName:@"clients" skipIfEmpty:0];

  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__SCLSchoolModeManager_stateDataWithHints___block_invoke_3;
  v11[3] = &unk_279B6CB80;
  v9 = *(a1 + 32);
  v11[4] = *(a1 + 40);
  return [v9 appendArraySection:v8 withName:@"devices" skipIfEmpty:0 objectTransformer:v11];
}

id __43__SCLSchoolModeManager_stateDataWithHints___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) descriptionBuilderForNRDevice:a2];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilderForNRDevice:(id)device
{
  v3 = MEMORY[0x277CF0C00];
  deviceCopy = device;
  v5 = [v3 builderWithObject:deviceCopy];
  pairingID = [deviceCopy pairingID];
  v7 = [v5 appendObject:pairingID withName:@"pairingID"];

  v8 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB60]];
  v9 = [v5 appendBool:v8 != 0 withName:@"hasPairingStorePath"];

  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB28]];
  v11 = [v5 appendBool:objc_msgSend(v10 withName:{"BOOLValue"), @"isAltAccount"}];

  v12 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB30]];

  v13 = [v5 appendBool:objc_msgSend(v12 withName:{"BOOLValue"), @"isArchived"}];

  return v5;
}

- (void)start
{
  v3 = _os_activity_create(&dword_264829000, "Start School Mode Manager", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = scl_framework_log();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Start School Mode Manager", &unk_26485B361, buf, 2u);
  }

  queue = [(SCLSchoolModeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SCLSchoolModeManager_start__block_invoke;
  block[3] = &unk_279B6C568;
  block[4] = self;
  v6 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_async(queue, v6);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleDevicePairedNotification_ name:*MEMORY[0x277D2BC68] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleDeviceUnpairedNotification_ name:*MEMORY[0x277D2BC78] object:0];

  queue2 = [(SCLSchoolModeManager *)self queue];
  dispatch_activate(queue2);

  listener = [(SCLSchoolModeManager *)self listener];
  [listener resume];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SCLServerStartNotification", 0, 0, 0);
  os_activity_scope_leave(&state);
}

void __29__SCLSchoolModeManager_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) supppressionManager];
  [v2 activate];

  v3 = [*(a1 + 32) interruptBehaviorResolver];
  [v3 activate];

  [*(a1 + 32) loadPairedDevices];
  v4 = [*(a1 + 32) transportService];
  [v4 start];

  [*(a1 + 32) _updateActivityRegistration];
  v5 = scl_framework_log();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_264829000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Start School Mode Manager", &unk_26485B361, v6, 2u);
  }
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  stateHandle = self->_stateHandle;
  os_state_remove_handler();
  v4.receiver = self;
  v4.super_class = SCLSchoolModeManager;
  [(SCLSchoolModeManager *)&v4 dealloc];
}

- (void)loadPairedDevices
{
  v18 = *MEMORY[0x277D85DE8];
  eligiblePairedDevices = [(SCLSchoolModeManager *)self eligiblePairedDevices];
  v4 = scl_pairing_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = eligiblePairedDevices;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "Loading devices %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = eligiblePairedDevices;
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

        [(SCLSchoolModeManager *)self createControllerForDevice:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)eligiblePairedDevices
{
  configuration = [(SCLSchoolModeManager *)self configuration];
  deviceRegistry = [configuration deviceRegistry];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SCLSchoolModeManager_eligiblePairedDevices__block_invoke;
  v7[3] = &unk_279B6CBA8;
  v7[4] = self;
  v5 = [deviceRegistry getAllDevicesWithArchivedAltAccountDevicesMatching:v7];

  return v5;
}

uint64_t __45__SCLSchoolModeManager_eligiblePairedDevices__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) isEligibleDevice:v3];
  v5 = scl_pairing_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 pairingID];
    v7 = [v3 valueForProperty:*MEMORY[0x277D2BB60]];
    v8 = [v3 valueForProperty:*MEMORY[0x277D2BB28]];
    v9 = [v8 BOOLValue];
    v10 = [v3 valueForProperty:*MEMORY[0x277D2BB30]];
    v13 = 134219266;
    v14 = v3;
    v15 = 2112;
    v16 = v6;
    v17 = 1024;
    v18 = v7 != 0;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = [v10 BOOLValue];
    v23 = 1024;
    v24 = v4;
    _os_log_impl(&dword_264829000, v5, OS_LOG_TYPE_DEFAULT, "<NRDevice %p; pairingID=%@; hasPairingPath=%{BOOL}d; isAltAccount=%{BOOL}d; isArchived=%{BOOL}d> isEligible:%{BOOL}d", &v13, 0x2Eu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isEligibleDevice:(id)device
{
  deviceCopy = device;
  configuration = [(SCLSchoolModeManager *)self configuration];
  v6 = SCLIsNRDeviceEligibleForSchoolTime(deviceCopy, [configuration allowsNonTinkerPairing]);

  return v6;
}

- (void)createControllerForDevice:(id)device
{
  v59 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_alloc_init(SCLSchoolModeCoordinatorConfiguration);
  [(SCLSchoolModeCoordinatorConfiguration *)v5 setNRDevice:deviceCopy];
  pairingID = [deviceCopy pairingID];
  v7 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB60]];
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v9 = [v8 URLByAppendingPathComponent:@"SchoolTime"];

  [(SCLSchoolModeCoordinatorConfiguration *)v5 setDirectoryURL:v9];
  [(SCLSchoolModeCoordinatorConfiguration *)v5 setSendsRemoteScheduleSettings:1];
  [(SCLSchoolModeCoordinatorConfiguration *)v5 setSendsRemoteHistoryItems:0];
  v10 = [deviceCopy valueForProperty:*MEMORY[0x277D2BB28]];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v55 = v7;
    v56 = pairingID;
    array = [MEMORY[0x277CBEB18] array];
    configuration = [(SCLSchoolModeManager *)self configuration];
    service = [configuration service];
    v15 = [service linkedDevicesWithRelationship:2];

    if (v15)
    {
      [array addObjectsFromArray:v15];
    }

    v53 = v15;
    configuration2 = [(SCLSchoolModeManager *)self configuration];
    service2 = [configuration2 service];
    devices = [service2 devices];

    if (devices)
    {
      [array addObjectsFromArray:devices];
    }

    v52 = devices;
    v54 = v9;
    configuration3 = [(SCLSchoolModeManager *)self configuration];
    deviceRegistry = [configuration3 deviceRegistry];
    v21 = [deviceRegistry deviceForNRDevice:deviceCopy fromIDSDevices:array];

    v22 = deviceCopy;
    if (!v21)
    {
      v23 = scl_pairing_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        [SCLSchoolModeManager createControllerForDevice:];
      }

      v22 = deviceCopy;
    }

    v50 = v22;
    v51 = array;
    [(SCLSchoolModeCoordinatorConfiguration *)v5 setIdsDevice:v21];
    v24 = [SCLTransportController alloc];
    configuration4 = [(SCLSchoolModeManager *)self configuration];
    deviceRegistry2 = [configuration4 deviceRegistry];
    configuration5 = [(SCLSchoolModeManager *)self configuration];
    service3 = [configuration5 service];
    uniqueIDOverride = [v21 uniqueIDOverride];
    v30 = [(SCLTransportController *)v24 initWithNRDevice:v22 deviceRegistry:deviceRegistry2 service:service3 deviceIdentifier:uniqueIDOverride];

    [(SCLSchoolModeCoordinatorConfiguration *)v5 setTransportController:v30];
    v9 = v54;
    v31 = [v54 URLByAppendingPathComponent:@"UnlockHistory.sqlite3"];
    v32 = [[SCLUnlockHistoryPersistentStore alloc] initWithURL:v31];
    [(SCLSchoolModeCoordinatorConfiguration *)v5 setHistoryStore:v32];

    deviceCopy = v50;
    v7 = v55;
    pairingID = v56;
  }

  else
  {
    v33 = scl_pairing_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [SCLSchoolModeManager createControllerForDevice:v33];
    }

    [(SCLSchoolModeCoordinatorConfiguration *)v5 setSendsRemoteHistoryItems:0];
    [(SCLSchoolModeCoordinatorConfiguration *)v5 setSendsRemoteScheduleSettings:0];
    [(SCLSchoolModeCoordinatorConfiguration *)v5 setManuallyManagedOnly:1];
  }

  configuration6 = [(SCLSchoolModeManager *)self configuration];
  managesSchoolTimeSession = [configuration6 managesSchoolTimeSession];

  if (managesSchoolTimeSession)
  {
    v36 = [SCLSchoolModeServer alloc];
    queue = [(SCLSchoolModeManager *)self queue];
    supppressionManager = [(SCLSchoolModeManager *)self supppressionManager];
    v39 = v9;
    v40 = objc_opt_new();
    v41 = [(SCLSchoolModeServer *)v36 initWithQueue:queue suppressionManager:supppressionManager wakeScheduler:v40];

    v9 = v39;
    [(SCLSchoolModeCoordinatorConfiguration *)v5 setServer:v41];
    interruptBehaviorResolver = [(SCLSchoolModeManager *)self interruptBehaviorResolver];
    [(SCLSchoolModeServer *)v41 addObserver:interruptBehaviorResolver];
  }

  transportController = [(SCLSchoolModeCoordinatorConfiguration *)v5 transportController];

  if (transportController)
  {
    transportService = [(SCLSchoolModeManager *)self transportService];
    transportController2 = [(SCLSchoolModeCoordinatorConfiguration *)v5 transportController];
    [transportService addTransportController:transportController2];
  }

  queue2 = [(SCLSchoolModeManager *)self queue];
  [(SCLSchoolModeCoordinatorConfiguration *)v5 setTargetQueue:queue2];

  v47 = [[SCLSchoolModeCoordinator alloc] initWithConfiguration:v5];
  [(NSMapTable *)self->_coordinatorMap setObject:v47 forKey:pairingID];
  v48 = scl_pairing_log();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = pairingID;
    _os_log_impl(&dword_264829000, v48, OS_LOG_TYPE_DEFAULT, "Created pairing for pairingID %@", buf, 0xCu);
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)handleDevicePairedNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke;
  v7[3] = &unk_279B6C5D8;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = _os_activity_create(&dword_264829000, "Handle Device Paired", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v20.opaque[0] = 0;
  v20.opaque[1] = 0;
  os_activity_scope_enter(v2, &v20);
  v3 = scl_pairing_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_264829000, v3, OS_LOG_TYPE_DEFAULT, "Device paired: %@", buf, 0xCu);
  }

  v5 = (a1 + 32);
  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x277D2BC38]];

  v8 = [v7 pairingID];
  if (!v8)
  {
    v12 = scl_pairing_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke_cold_2(v5, v12, v13, v14, v15, v16, v17, v18);
    }

    goto LABEL_9;
  }

  v9 = [*(a1 + 40) coordinatorMap];
  v10 = [v9 objectForKey:v8];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = scl_pairing_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke_cold_1();
    }

LABEL_9:

    goto LABEL_13;
  }

  if ([*(a1 + 40) isEligibleDevice:v7])
  {
    [*(a1 + 40) createControllerForDevice:v7];
  }

  [*(a1 + 40) _updateActivityRegistration];
LABEL_13:

  os_activity_scope_leave(&v20);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceUnpairedNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke;
  v7[3] = &unk_279B6C5D8;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v35 = _os_activity_create(&dword_264829000, "Handle Device Unpaired", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v35, &state);
  v2 = [*(a1 + 32) userInfo];
  v37 = [v2 objectForKey:*MEMORY[0x277D2BC38]];

  v38 = [v37 pairingID];
  if (v38)
  {
    v3 = scl_pairing_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) userInfo];
      *buf = 138543618;
      v51 = v38;
      v52 = 2112;
      v53 = v4;
      _os_log_impl(&dword_264829000, v3, OS_LOG_TYPE_DEFAULT, "Device unpaired: %{public}@ - %@", buf, 0x16u);
    }

    v5 = [*(a1 + 40) coordinatorMap];
    v36 = [v5 objectForKey:v38];

    if (v36)
    {
      [*(a1 + 40) removeCoordinator:?];
    }

    else
    {
      v13 = scl_pairing_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v38;
        _os_log_impl(&dword_264829000, v13, OS_LOG_TYPE_DEFAULT, "No coordinator was found for pairingID %{public}@; attempting to manually remove unpaired coordinators", buf, 0xCu);
      }

      v14 = MEMORY[0x277CBEB58];
      v15 = [*(a1 + 40) coordinatorMap];
      v16 = [v15 keyEnumerator];
      v17 = [v16 allObjects];
      v18 = [v14 setWithArray:v17];

      [*(a1 + 40) eligiblePairedDevices];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v19 = v44 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v20)
      {
        v21 = *v44;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v43 + 1) + 8 * i);
            v24 = [v23 pairingID];
            if (v24)
            {
              [v18 removeObject:v24];
            }

            else
            {
              v25 = scl_pairing_log();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v51 = v23;
                _os_log_error_impl(&dword_264829000, v25, OS_LOG_TYPE_ERROR, "%@ is missing a pairingID", buf, 0xCu);
              }
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
        }

        while (v20);
      }

      if ([v18 count])
      {
        v26 = scl_pairing_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke_cold_1();
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v27 = v18;
        v28 = [v27 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v28)
        {
          v29 = *v40;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v40 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = *(*(&v39 + 1) + 8 * j);
              v32 = [*(a1 + 40) coordinatorMap];
              v33 = [v32 objectForKey:v31];

              [*(a1 + 40) removeCoordinator:v33];
            }

            v28 = [v27 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v28);
        }
      }
    }

    [*(a1 + 40) _updateActivityRegistration];
  }

  else
  {
    v6 = scl_pairing_log();
    v36 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke_cold_2((a1 + 32), v6, v7, v8, v9, v10, v11, v12);
    }
  }

  os_activity_scope_leave(&state);
  v34 = *MEMORY[0x277D85DE8];
}

- (void)removeCoordinator:(id)coordinator
{
  v31 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  configuration = [coordinatorCopy configuration];
  nRDevice = [configuration NRDevice];
  pairingID = [nRDevice pairingID];

  if (pairingID)
  {
LABEL_2:
    coordinatorMap = [(SCLSchoolModeManager *)self coordinatorMap];
    [coordinatorMap removeObjectForKey:pairingID];

    v9 = scl_pairing_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = pairingID;
      _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_DEFAULT, "Removing coordinator for pairingID %{public}@", buf, 0xCu);
    }

    configuration2 = [coordinatorCopy configuration];
    transportController = [configuration2 transportController];

    if (transportController)
    {
      transportService = [(SCLSchoolModeManager *)self transportService];
      [transportService removeTransportController:transportController];
    }
  }

  else
  {
    v13 = scl_pairing_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SCLSchoolModeManager *)coordinatorCopy removeCoordinator:v13];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    coordinatorMap2 = [(SCLSchoolModeManager *)self coordinatorMap];
    keyEnumerator = [coordinatorMap2 keyEnumerator];

    v16 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
LABEL_11:
      v19 = 0;
      while (1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        coordinatorMap3 = [(SCLSchoolModeManager *)self coordinatorMap];
        v22 = [coordinatorMap3 objectForKey:v20];

        if (v22 == coordinatorCopy)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v30 count:16];
          if (v17)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      pairingID = v20;

      if (pairingID)
      {
        goto LABEL_2;
      }
    }

    else
    {
LABEL_17:
    }

    pairingID = scl_pairing_log();
    if (os_log_type_enabled(pairingID, OS_LOG_TYPE_FAULT))
    {
      [(SCLSchoolModeManager *)coordinatorCopy removeCoordinator:pairingID];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  queue = [(SCLSchoolModeManager *)self queue];
  dispatch_assert_queue_V2(queue);

  queue2 = [(SCLSchoolModeManager *)self queue];
  [connectionCopy _setQueue:queue2];

  v8 = [[SCLSchoolModeClientProxy alloc] initWithConnection:connectionCopy];
  [(SCLSchoolModeClientProxy *)v8 setDelegate:self];
  clients = [(SCLSchoolModeManager *)self clients];
  [clients addObject:v8];

  [connectionCopy resume];
  return 1;
}

- (void)clientProxyDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  queue = [(SCLSchoolModeManager *)self queue];
  dispatch_assert_queue_V2(queue);

  coordinator = [invalidateCopy coordinator];
  [coordinator removeClient:invalidateCopy];
  clients = [(SCLSchoolModeManager *)self clients];
  [clients removeObject:invalidateCopy];
}

- (void)clientProxy:(id)proxy didConnectWithPairingID:(id)d
{
  proxyCopy = proxy;
  dCopy = d;
  queue = [(SCLSchoolModeManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (dCopy)
  {
    coordinatorMap = [(SCLSchoolModeManager *)self coordinatorMap];
    nextObject = [coordinatorMap objectForKey:dCopy];

    if (!nextObject)
    {
      v11 = SCLAutoUpdatingPairingID();
      v12 = [dCopy isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }

      coordinatorMap2 = [(SCLSchoolModeManager *)self coordinatorMap];
      objectEnumerator = [coordinatorMap2 objectEnumerator];
      nextObject = [objectEnumerator nextObject];

      coordinatorMap3 = [(SCLSchoolModeManager *)self coordinatorMap];
      v16 = [coordinatorMap3 count];

      if (v16 >= 2)
      {
        v17 = scl_pairing_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [SCLSchoolModeManager clientProxy:nextObject didConnectWithPairingID:v17];
        }
      }

      if (!nextObject)
      {
LABEL_9:
        v18 = scl_pairing_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [SCLSchoolModeManager clientProxy:didConnectWithPairingID:];
        }

        nextObject = 0;
      }
    }

    [nextObject addClient:proxyCopy];
  }

  else
  {
    nextObject = scl_framework_log();
    if (os_log_type_enabled(nextObject, OS_LOG_TYPE_ERROR))
    {
      [(SCLSchoolModeManager *)nextObject clientProxy:v19 didConnectWithPairingID:v20, v21, v22, v23, v24, v25];
    }
  }
}

- (id)activityCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  v3 = *MEMORY[0x277D86298];
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86250], *MEMORY[0x277D86298]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], v3);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);

  return v2;
}

- (void)_updateActivityRegistration
{
  v27 = *MEMORY[0x277D85DE8];
  coordinatorMap = [(SCLSchoolModeManager *)self coordinatorMap];
  v4 = [coordinatorMap count];

  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    coordinatorMap2 = [(SCLSchoolModeManager *)self coordinatorMap];
    objectEnumerator = [coordinatorMap2 objectEnumerator];

    v7 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v7)
    {
      v8 = *v21;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          configuration = [*(*(&v20 + 1) + 8 * i) configuration];
          isManuallyManagedOnly = [configuration isManuallyManagedOnly];

          v9 &= isManuallyManagedOnly ^ 1;
        }

        v7 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v7);

      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    activityCriteria = [(SCLSchoolModeManager *)self activityCriteria];
    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__SCLSchoolModeManager__updateActivityRegistration__block_invoke;
    v17[3] = &unk_279B6CAB8;
    v15 = activityCriteria;
    v18 = v15;
    objc_copyWeak(&v19, buf);
    xpc_activity_register("com.apple.schooltime.database.maintenance", *MEMORY[0x277D86238], v17);
    objc_destroyWeak(&v19);

    objc_destroyWeak(buf);
    goto LABEL_15;
  }

LABEL_10:
  v13 = scl_persistence_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "com.apple.schooltime.database.maintenance";
    _os_log_impl(&dword_264829000, v13, OS_LOG_TYPE_DEFAULT, "No tinker-paired devices available. Unregistering %s", buf, 0xCu);
  }

  xpc_activity_unregister("com.apple.schooltime.database.maintenance");
LABEL_15:
  v16 = *MEMORY[0x277D85DE8];
}

void __51__SCLSchoolModeManager__updateActivityRegistration__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _handleActivityStarted:v3];
  }

  else
  {
    v5 = scl_persistence_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_264829000, v5, OS_LOG_TYPE_DEFAULT, "Checked in with activity %@", &v10, 0xCu);
    }

    v6 = xpc_activity_copy_criteria(v3);
    v7 = scl_persistence_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "using old criteria", &v10, 2u);
      }
    }

    else
    {
      if (v8)
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Old criteria doesn't exist - setting new criteria", &v10, 2u);
      }

      xpc_activity_set_criteria(v3, *(a1 + 32));
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivityStarted:(id)started
{
  v16 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  v5 = _os_activity_create(&dword_264829000, "Database Maintenance", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = scl_persistence_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = startedCopy;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "Performing database maintenance: %@", buf, 0xCu);
  }

  if (!xpc_activity_set_state(startedCopy, 4))
  {
    v7 = scl_persistence_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SCLSchoolModeManager _handleActivityStarted:v7];
    }
  }

  queue = [(SCLSchoolModeManager *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SCLSchoolModeManager__handleActivityStarted___block_invoke;
  v11[3] = &unk_279B6C5D8;
  v11[4] = self;
  v12 = startedCopy;
  v9 = startedCopy;
  dispatch_async(queue, v11);

  os_activity_scope_leave(&state);
  v10 = *MEMORY[0x277D85DE8];
}

void __47__SCLSchoolModeManager__handleActivityStarted___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) coordinatorMap];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * v7++) purgeOldHistoryItems];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = scl_persistence_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_264829000, v8, OS_LOG_TYPE_DEFAULT, "Completed database maintenance", v11, 2u);
  }

  if (!xpc_activity_set_state(*(a1 + 40), 5))
  {
    v9 = scl_persistence_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __47__SCLSchoolModeManager__handleActivityStarted___block_invoke_cold_1(v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)createControllerForDevice:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_264829000, v0, OS_LOG_TYPE_FAULT, "No linked IDS device for NRDevice with pairingID %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Got pairing notification for pairingID %{public}@ but we already have an SCLDPairing", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__SCLSchoolModeManager_handleDevicePairedNotification___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_1_0(&dword_264829000, a2, a3, "Missing pairingID for device paired notification %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Coordinators have no valid pairingID, but were not the unpaired devices: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__SCLSchoolModeManager_handleDeviceUnpairedNotification___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_1_0(&dword_264829000, a2, a3, "Missing pairingID for device unpaired notification %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeCoordinator:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 configuration];
  v4 = [v3 NRDevice];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "%@ is missing a pairingID - %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeCoordinator:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a2 coordinatorMap];
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(&dword_264829000, a3, OS_LOG_TYPE_FAULT, "Coordinator %@ is not in the coordinator map: %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(void *)a1 didConnectWithPairingID:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 configuration];
  v4 = [v3 NRDevice];
  v5 = [v4 pairingID];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "AutoUpdatingPairingID used when multiple pairings are present. Linking to %@", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:didConnectWithPairingID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "No coordinator for pairingID %@. Pending client until pairing.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(uint64_t)a3 didConnectWithPairingID:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_264829000, a1, a3, "No pairing for client with pairingID %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end
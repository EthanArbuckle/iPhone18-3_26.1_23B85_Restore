@interface SCLSchoolModeXPCClient
- (BOOL)_makeConnection:(id)connection;
- (BOOL)isLoaded;
- (SCLScheduleSettings)scheduleSettings;
- (SCLSchoolModeXPCClient)initWithDelegate:(id)delegate configuration:(id)configuration;
- (SCLSchoolModeXPCClientDelegate)delegate;
- (SCLState)state;
- (id)serverWithErrorHandler:(id)handler;
- (void)_connectionDidInterrupt;
- (void)_connectionDidInvalidate;
- (void)_reconnectToServer;
- (void)addUnlockHistoryItem:(id)item completion:(id)completion;
- (void)applyScheduleSettings:(id)settings completion:(id)completion;
- (void)applyServerSettings:(id)settings;
- (void)dealloc;
- (void)deleteHistoryWithCompletion:(id)completion;
- (void)didChangeUnlockHistory;
- (void)dumpState;
- (void)fetchRecentUnlockHistoryItemsWithCompletion:(id)completion;
- (void)invalidate;
- (void)noteSignificantUserInteraction;
- (void)resume;
- (void)triggerRemoteSync;
@end

@implementation SCLSchoolModeXPCClient

- (SCLSchoolModeXPCClient)initWithDelegate:(id)delegate configuration:(id)configuration
{
  v33 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  configurationCopy = configuration;
  v31.receiver = self;
  v31.super_class = SCLSchoolModeXPCClient;
  v8 = [(SCLSchoolModeXPCClient *)&v31 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_configuration, configuration);
    v9->_connectionLock._os_unfair_lock_opaque = 0;
    v9->_connectionState = 0;
    v9->_clientState = 0;
    v10 = mach_timebase_info(&v9->_timebase);
    if (v10)
    {
      v11 = scl_framework_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SCLSchoolModeXPCClient *)configurationCopy initWithDelegate:v10 configuration:v11];
      }
    }

    v12 = objc_alloc_init(SCLSchoolModeServerSettings);
    serverSettings = v9->_serverSettings;
    v9->_serverSettings = v12;

    v14 = objc_alloc_init(SCLMutableScheduleSettings);
    v15 = objc_alloc_init(SCLSchedule);
    [(SCLMutableScheduleSettings *)v14 setSchedule:v15];

    [(SCLSchoolModeServerSettings *)v9->_serverSettings setScheduleSettings:v14];
    v16 = [[SCLState alloc] initWithActiveState:0 scheduleEnabled:0 inSchedule:0];
    [(SCLSchoolModeServerSettings *)v9->_serverSettings setState:v16];
    [(SCLSchoolModeXPCClient *)v9 _makeConnection:configurationCopy];
    identifier = [configurationCopy identifier];
    objc_initWeak(&location, v9);
    uTF8String = [@"SCLServerStartNotification" UTF8String];
    configuration = [(SCLSchoolModeXPCClient *)v9 configuration];
    targetQueue = [configuration targetQueue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __57__SCLSchoolModeXPCClient_initWithDelegate_configuration___block_invoke;
    handler[3] = &unk_279B6C0B0;
    v21 = identifier;
    v28 = v21;
    objc_copyWeak(&v29, &location);
    v22 = notify_register_dispatch(uTF8String, &v9->_restartNotificationToken, targetQueue, handler);

    if (v22)
    {
      v23 = scl_framework_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v22];
        [(SCLSchoolModeXPCClient *)v21 initWithDelegate:v24 configuration:buf, v23];
      }
    }

    objc_destroyWeak(&v29);

    objc_destroyWeak(&location);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v9;
}

void __57__SCLSchoolModeXPCClient_initWithDelegate_configuration___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = scl_framework_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_264829000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] received server restart notification", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLastServerRestartTime:mach_continuous_time()];
  [WeakRetained _reconnectToServer];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  restartNotificationToken = self->_restartNotificationToken;
  if (restartNotificationToken != -1)
  {
    notify_cancel(restartNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = SCLSchoolModeXPCClient;
  [(SCLSchoolModeXPCClient *)&v4 dealloc];
}

- (BOOL)_makeConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_connectionLock);
  if ([(SCLSchoolModeXPCClient *)self clientState]== 2)
  {
    os_unfair_lock_unlock(&self->_connectionLock);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    if ((self->_connectionState - 3) <= 1)
    {
      [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
      [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
      [(NSXPCConnection *)self->_connection invalidate];
      connection = self->_connection;
      self->_connection = 0;

      self->_connectionState = 2;
    }

    v8 = self->_connection;
    v9 = v8;
    if (!v8)
    {
      testingEndpoint = [connectionCopy testingEndpoint];

      v11 = objc_alloc(MEMORY[0x277CCAE80]);
      v12 = v11;
      if (testingEndpoint)
      {
        testingEndpoint2 = [connectionCopy testingEndpoint];
        v14 = [v12 initWithListenerEndpoint:testingEndpoint2];
        v15 = self->_connection;
        self->_connection = v14;
      }

      else
      {
        v16 = [v11 initWithMachServiceName:@"com.apple.schooltime.schedule" options:0];
        testingEndpoint2 = self->_connection;
        self->_connection = v16;
      }

      identifier = [connectionCopy identifier];
      [(NSXPCConnection *)self->_connection setExportedObject:self];
      v18 = self->_connection;
      v19 = SCLSchoolModeClientXPCInterface();
      [(NSXPCConnection *)v18 setExportedInterface:v19];

      v20 = self->_connection;
      v21 = SCLSchoolModeServerXPCInterface();
      [(NSXPCConnection *)v20 setRemoteObjectInterface:v21];

      v22 = self->_connection;
      targetQueue = [connectionCopy targetQueue];
      [(NSXPCConnection *)v22 _setQueue:targetQueue];

      objc_initWeak(&location, self);
      v24 = self->_connection;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __42__SCLSchoolModeXPCClient__makeConnection___block_invoke;
      v32[3] = &unk_279B6C0D8;
      objc_copyWeak(&v34, &location);
      v25 = identifier;
      v33 = v25;
      [(NSXPCConnection *)v24 setInterruptionHandler:v32];
      v26 = self->_connection;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __42__SCLSchoolModeXPCClient__makeConnection___block_invoke_10;
      v29[3] = &unk_279B6C0D8;
      objc_copyWeak(&v31, &location);
      v27 = v25;
      v30 = v27;
      [(NSXPCConnection *)v26 setInvalidationHandler:v29];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);

      v9 = self->_connection;
    }

    v6 = v9;
    os_unfair_lock_unlock(&self->_connectionLock);
    if (v8)
    {
      v5 = 0;
    }

    else
    {
      [(NSXPCConnection *)v6 resume];
      v5 = 1;
    }
  }

  return v5;
}

void __42__SCLSchoolModeXPCClient__makeConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = scl_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_264829000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Connection was interrupted.", &v6, 0xCu);
  }

  [WeakRetained _connectionDidInterrupt];
  v5 = *MEMORY[0x277D85DE8];
}

void __42__SCLSchoolModeXPCClient__makeConnection___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = scl_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__SCLSchoolModeXPCClient__makeConnection___block_invoke_10_cold_1(a1, v3);
  }

  [WeakRetained _connectionDidInvalidate];
}

- (void)resume
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_264829000, log, OS_LOG_TYPE_ERROR, "Cannot resume an invalidated client %{public}@", buf, 0xCu);
}

void __32__SCLSchoolModeXPCClient_resume__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = [*(*(a1 + 32) + 16) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v5 = [*(a1 + 32) configuration];
  v6 = [v5 identifier];

  v7 = *(a1 + 40);
  v8 = scl_framework_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      __32__SCLSchoolModeXPCClient_resume__block_invoke_cold_1();
    }
  }

  else
  {
    if (v9)
    {
      __32__SCLSchoolModeXPCClient_resume__block_invoke_cold_2();
    }

    v10 = [[SCLState alloc] initWithActiveState:0 scheduleEnabled:0 inSchedule:0];
    [v4 setState:v10];

    [*(a1 + 32) applyServerSettings:v4];
  }
}

void __32__SCLSchoolModeXPCClient_resume__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = scl_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_INFO, "synchronous, updating server settings before applying", v7, 2u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 8));
    v5 = *(*(a1 + 32) + 16);
    v6 = [v3 state];
    [v5 setState:v6];

    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  [*(a1 + 32) applyServerSettings:v3];
}

- (void)_reconnectToServer
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = _os_activity_create(&dword_264829000, "Reconnect SCLSchoolMode", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v3, &v13);
  identifier = [(SCLSchoolModeConfiguration *)self->_configuration identifier];
  configuration = [(SCLSchoolModeXPCClient *)self configuration];
  v6 = [(SCLSchoolModeXPCClient *)self _makeConnection:configuration];

  os_unfair_lock_lock(&self->_connectionLock);
  clientState = [(SCLSchoolModeXPCClient *)self clientState];
  os_unfair_lock_unlock(&self->_connectionLock);
  v8 = scl_framework_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (clientState > 2)
    {
      v9 = &stru_287622948;
    }

    else
    {
      v9 = off_279B6C1E0[clientState];
    }

    *buf = 138543874;
    v15 = identifier;
    v16 = 1024;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_264829000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] made new connection for reconnect: %{BOOL}d; clientState: %@", buf, 0x1Cu);
  }

  if (clientState == 1 && v6)
  {
    v11 = scl_framework_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = identifier;
      _os_log_impl(&dword_264829000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] new connection and previously running, resuming", buf, 0xCu);
    }

    [(SCLSchoolModeXPCClient *)self resume];
  }

  os_activity_scope_leave(&v13);
  v12 = *MEMORY[0x277D85DE8];
}

- (SCLState)state
{
  os_unfair_lock_lock(&self->_lock);
  state = [(SCLSchoolModeServerSettings *)self->_serverSettings state];
  os_unfair_lock_unlock(&self->_lock);

  return state;
}

- (SCLScheduleSettings)scheduleSettings
{
  os_unfair_lock_lock(&self->_lock);
  scheduleSettings = [(SCLSchoolModeServerSettings *)self->_serverSettings scheduleSettings];
  os_unfair_lock_unlock(&self->_lock);

  return scheduleSettings;
}

- (BOOL)isLoaded
{
  os_unfair_lock_lock(&self->_lock);
  isLoaded = [(SCLSchoolModeServerSettings *)self->_serverSettings isLoaded];
  os_unfair_lock_unlock(&self->_lock);
  return isLoaded;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_connectionLock);
  [(SCLSchoolModeXPCClient *)self setClientState:2];
  notify_cancel(self->_restartNotificationToken);
  self->_restartNotificationToken = -1;
  connection = [(SCLSchoolModeXPCClient *)self connection];
  [connection setInterruptionHandler:0];
  [connection setInvalidationHandler:0];
  os_unfair_lock_unlock(&self->_connectionLock);
  [connection invalidate];
}

- (void)applyScheduleSettings:(id)settings completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SCLSchoolModeXPCClient_applyScheduleSettings_completion___block_invoke;
  v11[3] = &unk_279B6C150;
  v12 = completionCopy;
  v7 = completionCopy;
  settingsCopy = settings;
  v9 = [(SCLSchoolModeXPCClient *)self serverWithErrorHandler:v11];
  v10 = [settingsCopy copy];

  [v9 applySchedule:v10 completion:v7];
}

void __55__SCLSchoolModeXPCClient_setActive_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = scl_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 identifier];
    v7 = *(a1 + 48);
    v9 = 138412802;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_INFO, "[%@] setActive %{BOOL}u error %@", &v9, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

void __55__SCLSchoolModeXPCClient_setActive_options_completion___block_invoke_14(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = scl_framework_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) configuration];
    v8 = [v7 identifier];
    v9 = *(a1 + 48);
    v11 = 138413058;
    v12 = v8;
    v13 = 1024;
    v14 = v9;
    v15 = 1024;
    v16 = a2;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_INFO, "[%@] setActive %{BOOL}u success %{BOOL}u error %@", &v11, 0x22u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchRecentUnlockHistoryItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SCLSchoolModeXPCClient_fetchRecentUnlockHistoryItemsWithCompletion___block_invoke;
  v7[3] = &unk_279B6C150;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(SCLSchoolModeXPCClient *)self serverWithErrorHandler:v7];
  [v6 fetchRecentUnlockHistoryItemsWithCompletion:v5];
}

- (void)addUnlockHistoryItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SCLSchoolModeXPCClient_addUnlockHistoryItem_completion___block_invoke;
  v10[3] = &unk_279B6C150;
  v11 = completionCopy;
  v7 = completionCopy;
  itemCopy = item;
  v9 = [(SCLSchoolModeXPCClient *)self serverWithErrorHandler:v10];
  [v9 addUnlockHistoryItem:itemCopy completion:v7];
}

- (void)deleteHistoryWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SCLSchoolModeXPCClient_deleteHistoryWithCompletion___block_invoke;
  v7[3] = &unk_279B6C150;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(SCLSchoolModeXPCClient *)self serverWithErrorHandler:v7];
  [v6 deleteHistoryWithCompletion:v5];
}

- (void)noteSignificantUserInteraction
{
  v2 = [(SCLSchoolModeXPCClient *)self serverWithErrorHandler:&__block_literal_global_0];
  [v2 noteSignificantUserInteraction];
}

- (void)triggerRemoteSync
{
  v2 = [(SCLSchoolModeXPCClient *)self serverWithErrorHandler:&__block_literal_global_17];
  [v2 triggerRemoteSync];
}

- (void)dumpState
{
  v2 = [(SCLSchoolModeXPCClient *)self serverWithErrorHandler:&__block_literal_global_19];
  [v2 dumpState];
}

- (id)serverWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  configuration = [(SCLSchoolModeXPCClient *)self configuration];
  v6 = [(SCLSchoolModeXPCClient *)self _makeConnection:configuration];

  if (v6)
  {
    [(SCLSchoolModeXPCClient *)self resume];
  }

  connection = [(SCLSchoolModeXPCClient *)self connection];
  v8 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v8;
}

- (void)_connectionDidInvalidate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = scl_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [(SCLSchoolModeXPCClient *)self configuration];
    identifier = [configuration identifier];
    configuration2 = [(SCLSchoolModeXPCClient *)self configuration];
    pairingID = [configuration2 pairingID];
    v9 = 138412546;
    v10 = identifier;
    v11 = 2112;
    v12 = pairingID;
    _os_log_impl(&dword_264829000, v3, OS_LOG_TYPE_DEFAULT, "Marking connection as interrupted and NOT reconnecting %@ - %@", &v9, 0x16u);
  }

  os_unfair_lock_lock(&self->_connectionLock);
  self->_connectionState = 4;
  os_unfair_lock_unlock(&self->_connectionLock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_connectionDidInterrupt
{
  v21 = *MEMORY[0x277D85DE8];
  configuration = [(SCLSchoolModeXPCClient *)self configuration];
  targetQueue = [configuration targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  if ([(SCLSchoolModeXPCClient *)self lastServerRestartTime]&& (v5 = mach_continuous_time(), (v5 - [(SCLSchoolModeXPCClient *)self lastServerRestartTime]) * self->_timebase.numer / self->_timebase.denom <= 0x773593FF))
  {
    v6 = scl_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      configuration2 = [(SCLSchoolModeXPCClient *)self configuration];
      identifier = [configuration2 identifier];
      configuration3 = [(SCLSchoolModeXPCClient *)self configuration];
      pairingID = [configuration3 pairingID];
      v17 = 138412546;
      v18 = identifier;
      v19 = 2112;
      v20 = pairingID;
      _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "Marking connection as interrupted and reconnecting %@ - %@ because server recently restarted", &v17, 0x16u);
    }

    os_unfair_lock_lock(&self->_connectionLock);
    self->_connectionState = 3;
    os_unfair_lock_unlock(&self->_connectionLock);
    [(SCLSchoolModeXPCClient *)self _reconnectToServer];
  }

  else
  {
    v11 = scl_framework_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      configuration4 = [(SCLSchoolModeXPCClient *)self configuration];
      identifier2 = [configuration4 identifier];
      configuration5 = [(SCLSchoolModeXPCClient *)self configuration];
      pairingID2 = [configuration5 pairingID];
      v17 = 138412546;
      v18 = identifier2;
      v19 = 2112;
      v20 = pairingID2;
      _os_log_impl(&dword_264829000, v11, OS_LOG_TYPE_DEFAULT, "Marking connection as interrupted and NOT reconnecting %@ - %@", &v17, 0x16u);
    }

    os_unfair_lock_lock(&self->_connectionLock);
    self->_connectionState = 3;
    os_unfair_lock_unlock(&self->_connectionLock);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)applyServerSettings:(id)settings
{
  v25 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_serverSettings;
  v6 = [settingsCopy copy];
  serverSettings = self->_serverSettings;
  self->_serverSettings = v6;

  os_unfair_lock_unlock(&self->_lock);
  state = [(SCLSchoolModeServerSettings *)v5 state];
  state2 = [settingsCopy state];
  v10 = scl_framework_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    configuration = [(SCLSchoolModeXPCClient *)self configuration];
    identifier = [configuration identifier];
    v19 = 138543874;
    v20 = identifier;
    v21 = 2112;
    v22 = state;
    v23 = 2112;
    v24 = state2;
    _os_log_impl(&dword_264829000, v10, OS_LOG_TYPE_INFO, "[%{public}@] Applying server settings, oldState %@, newState %@", &v19, 0x20u);
  }

  if (state != state2 && ([state isEqual:state2] & 1) == 0)
  {
    delegate = [(SCLSchoolModeXPCClient *)self delegate];
    [delegate client:self didUpdateToState:state2 fromState:state];
  }

  scheduleSettings = [(SCLSchoolModeServerSettings *)v5 scheduleSettings];
  scheduleSettings2 = [settingsCopy scheduleSettings];
  if (!-[SCLSchoolModeServerSettings isLoaded](v5, "isLoaded") && [settingsCopy isLoaded])
  {
    delegate2 = [(SCLSchoolModeXPCClient *)self delegate];
    [delegate2 client:self didLoadScheduleSettings:scheduleSettings2];
  }

  if (([scheduleSettings isEqual:scheduleSettings2] & 1) == 0 && -[SCLSchoolModeServerSettings isLoaded](v5, "isLoaded") && objc_msgSend(settingsCopy, "isLoaded"))
  {
    delegate3 = [(SCLSchoolModeXPCClient *)self delegate];
    [delegate3 client:self didUpdateScheduleSettings:scheduleSettings2];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)didChangeUnlockHistory
{
  delegate = [(SCLSchoolModeXPCClient *)self delegate];
  [delegate clientDidChangeUnlockHistory:self];
}

- (SCLSchoolModeXPCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:(NSObject *)a3 configuration:.cold.1(void *a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 identifier];
  v7 = 138543618;
  v8 = v5;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_264829000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Error getting timebase info: %{errno}d", &v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:(uint8_t *)buf configuration:(os_log_t)log .cold.2(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_264829000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Could not register for server restart notification: %@", buf, 0x16u);
}

void __42__SCLSchoolModeXPCClient__makeConnection___block_invoke_10_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Connection was invalidated remotely.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __32__SCLSchoolModeXPCClient_resume__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_264829000, v0, v1, "[%{public}@] Failed to get settings for reconnecting to school mode: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __32__SCLSchoolModeXPCClient_resume__block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_264829000, v0, v1, "[%{public}@] Failed to get initial settings for school mode: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end
@interface VCXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSXPCListenerEndpoint)endpoint;
- (VCVoiceShortcutManager)voiceShortcutManager;
- (VCXPCServer)initWithDatabaseProvider:(id)a3 triggerRegistrar:(id)a4 syncDataEndpoint:(id)a5 runCoordinator:(id)a6 eventHandler:(id)a7 appShortcutsUpdater:(id)a8 contextualActionSyncService:(id)a9;
- (VCXPCServer)initWithUnsecuredAnonymousListenerAndDatabaseProvider:(id)a3;
- (VCXPCServer)initWithXPCListener:(id)a3 databaseProvider:(id)a4 triggerRegistrar:(id)a5 syncDataEndpoint:(id)a6 runCoordinator:(id)a7 eventHandler:(id)a8 appShortcutsUpdater:(id)a9 contextualActionSyncService:(id)a10;
@end

@implementation VCXPCServer

- (VCVoiceShortcutManager)voiceShortcutManager
{
  voiceShortcutManager = self->_voiceShortcutManager;
  if (!voiceShortcutManager)
  {
    v4 = [(VCXPCServer *)self databaseProvider];
    if (v4)
    {
      v5 = [VCVoiceShortcutManager alloc];
      v6 = [(VCXPCServer *)self eventHandler];
      v7 = [(VCXPCServer *)self appShortcutsUpdater];
      v8 = [(VCXPCServer *)self contextualActionSyncService];
      v9 = [(VCVoiceShortcutManager *)v5 initWithDatabaseProvider:v4 eventHandler:v6 appShortcutsUpdater:v7 contextualActionSyncService:v8];
      v10 = self->_voiceShortcutManager;
      self->_voiceShortcutManager = v9;
    }

    voiceShortcutManager = self->_voiceShortcutManager;
  }

  return voiceShortcutManager;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[VCXPCServer listener:shouldAcceptNewConnection:]";
    *&buf[12] = 2114;
    *&buf[14] = self;
    *&buf[22] = 2114;
    *&buf[24] = v6;
    v32 = 2114;
    v33 = v7;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s [%{public}@ listener:%{public}@]", buf, 0x2Au);
  }

  v9 = [(VCXPCServer *)self voiceShortcutManager];
  if (!v9)
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[VCXPCServer listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Rejecting connection because database is inaccessible", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v10 = [MEMORY[0x277D79D80] accessSpecifierForXPCConnection:v7];
  if ([(VCXPCServer *)self skipEntitlementsCheck])
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[VCXPCServer listener:shouldAcceptNewConnection:]";
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEBUG, "%s Skipping entitlement check for connection %{public}@ for testing", buf, 0x16u);
    }

    v12 = [MEMORY[0x277D79D80] accessSpecifierUnrestricted];

    v10 = v12;
  }

  v13 = [v10 allowConnection];
  v14 = getWFGeneralLogObject();
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[VCXPCServer listener:shouldAcceptNewConnection:]";
      *&buf[12] = 2114;
      *&buf[14] = v7;
      *&buf[22] = 2114;
      *&buf[24] = v10;
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Rejecting connection %{public}@ because it has insufficient privileges: %{public}@", buf, 0x20u);
    }

LABEL_18:
    v21 = 0;
    goto LABEL_23;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[VCXPCServer listener:shouldAcceptNewConnection:]";
    *&buf[12] = 2114;
    *&buf[14] = v7;
    *&buf[22] = 2114;
    *&buf[24] = v10;
    _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_INFO, "%s Accepting connection %{public}@ with access %{public}@", buf, 0x20u);
  }

  objc_initWeak(&location, v7);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __50__VCXPCServer_listener_shouldAcceptNewConnection___block_invoke;
  v28[3] = &unk_278900170;
  objc_copyWeak(&v29, &location);
  [v7 setInterruptionHandler:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__VCXPCServer_listener_shouldAcceptNewConnection___block_invoke_188;
  v26[3] = &unk_278900170;
  objc_copyWeak(&v27, &location);
  [v7 setInvalidationHandler:v26];
  [v7 setDelegate:self];
  v16 = [(VCXPCServer *)self xpcInterface];
  [v7 setExportedInterface:v16];

  v17 = [VCVoiceShortcutManagerAccessWrapper alloc];
  v18 = [(VCXPCServer *)self triggerRegistrar];
  v19 = [(VCXPCServer *)self syncDataEndpoint];
  v20 = [(VCXPCServer *)self runCoordinator];
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v22 = [(VCVoiceShortcutManagerAccessWrapper *)v17 initWithVoiceShortcutManager:v9 triggerRegistrar:v18 accessSpecifier:v10 syncDataEndpoint:v19 runCoordinator:v20 auditToken:buf];
  [v7 setExportedObject:v22];

  [v7 resume];
  v23 = getWFGeneralLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[VCXPCServer listener:shouldAcceptNewConnection:]";
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_23103C000, v23, OS_LOG_TYPE_DEBUG, "%s Resumed connection %{public}@", buf, 0x16u);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
  v21 = 1;
LABEL_23:

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

void __50__VCXPCServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFGeneralLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[VCXPCServer listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 2114;
    v7 = WeakRetained;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Connection %{public}@ was interrupted", &v4, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __50__VCXPCServer_listener_shouldAcceptNewConnection___block_invoke_188(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFGeneralLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[VCXPCServer listener:shouldAcceptNewConnection:]_block_invoke";
    v6 = 2114;
    v7 = WeakRetained;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Connection %{public}@ was invalidated", &v4, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (NSXPCListenerEndpoint)endpoint
{
  v2 = [(VCXPCServer *)self xpcListener];
  v3 = [v2 endpoint];

  return v3;
}

- (VCXPCServer)initWithXPCListener:(id)a3 databaseProvider:(id)a4 triggerRegistrar:(id)a5 syncDataEndpoint:(id)a6 runCoordinator:(id)a7 eventHandler:(id)a8 appShortcutsUpdater:(id)a9 contextualActionSyncService:(id)a10
{
  v17 = a3;
  obj = a4;
  v18 = a4;
  v35 = a5;
  v31 = a6;
  v34 = a6;
  v32 = a7;
  v33 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v36 = v17;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"VCXPCServer.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"xpcListener"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x277CCA890] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"VCXPCServer.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];

LABEL_3:
  v37.receiver = self;
  v37.super_class = VCXPCServer;
  v22 = [(VCXPCServer *)&v37 init];
  if (v22)
  {
    v23 = VCDaemonXPCInterface();
    xpcInterface = v22->_xpcInterface;
    v22->_xpcInterface = v23;

    objc_storeStrong(&v22->_xpcListener, a3);
    [(NSXPCListener *)v22->_xpcListener setDelegate:v22];
    objc_storeStrong(&v22->_databaseProvider, obj);
    objc_storeStrong(&v22->_triggerRegistrar, a5);
    objc_storeStrong(&v22->_syncDataEndpoint, v31);
    objc_storeStrong(&v22->_runCoordinator, v32);
    objc_storeStrong(&v22->_eventHandler, a8);
    objc_storeStrong(&v22->_appShortcutsUpdater, a9);
    objc_storeStrong(&v22->_contextualActionSyncService, a10);
    [(NSXPCListener *)v22->_xpcListener resume];
    v25 = v22;
  }

  return v22;
}

- (VCXPCServer)initWithUnsecuredAnonymousListenerAndDatabaseProvider:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [[WFWorkflowRunCoordinator alloc] initWithUserNotificationManager:v5 databaseProvider:v4];
  v7 = [[WFTriggerRegistrar alloc] initWithDatabaseProvider:v4 eventHandler:0 userNotificationManager:v5];
  v8 = [MEMORY[0x277CCAE98] anonymousListener];
  v9 = [(VCXPCServer *)self initWithXPCListener:v8 databaseProvider:v4 triggerRegistrar:v7 syncDataEndpoint:0 runCoordinator:v6 eventHandler:0 appShortcutsUpdater:0 contextualActionSyncService:0];

  if (v9)
  {
    v9->_skipEntitlementsCheck = 1;
    v10 = v9;
  }

  return v9;
}

- (VCXPCServer)initWithDatabaseProvider:(id)a3 triggerRegistrar:(id)a4 syncDataEndpoint:(id)a5 runCoordinator:(id)a6 eventHandler:(id)a7 appShortcutsUpdater:(id)a8 contextualActionSyncService:(id)a9
{
  v16 = MEMORY[0x277CCAE98];
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [v16 alloc];
  v25 = [v24 initWithMachServiceName:*MEMORY[0x277D7A380]];
  v26 = [(VCXPCServer *)self initWithXPCListener:v25 databaseProvider:v23 triggerRegistrar:v22 syncDataEndpoint:v21 runCoordinator:v20 eventHandler:v19 appShortcutsUpdater:v18 contextualActionSyncService:v17];

  return v26;
}

@end
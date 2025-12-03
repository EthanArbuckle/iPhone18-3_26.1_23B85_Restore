@interface VCXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCListenerEndpoint)endpoint;
- (VCVoiceShortcutManager)voiceShortcutManager;
- (VCXPCServer)initWithDatabaseProvider:(id)provider triggerRegistrar:(id)registrar syncDataEndpoint:(id)endpoint runCoordinator:(id)coordinator eventHandler:(id)handler appShortcutsUpdater:(id)updater contextualActionSyncService:(id)service;
- (VCXPCServer)initWithUnsecuredAnonymousListenerAndDatabaseProvider:(id)provider;
- (VCXPCServer)initWithXPCListener:(id)listener databaseProvider:(id)provider triggerRegistrar:(id)registrar syncDataEndpoint:(id)endpoint runCoordinator:(id)coordinator eventHandler:(id)handler appShortcutsUpdater:(id)updater contextualActionSyncService:(id)self0;
@end

@implementation VCXPCServer

- (VCVoiceShortcutManager)voiceShortcutManager
{
  voiceShortcutManager = self->_voiceShortcutManager;
  if (!voiceShortcutManager)
  {
    databaseProvider = [(VCXPCServer *)self databaseProvider];
    if (databaseProvider)
    {
      v5 = [VCVoiceShortcutManager alloc];
      eventHandler = [(VCXPCServer *)self eventHandler];
      appShortcutsUpdater = [(VCXPCServer *)self appShortcutsUpdater];
      contextualActionSyncService = [(VCXPCServer *)self contextualActionSyncService];
      v9 = [(VCVoiceShortcutManager *)v5 initWithDatabaseProvider:databaseProvider eventHandler:eventHandler appShortcutsUpdater:appShortcutsUpdater contextualActionSyncService:contextualActionSyncService];
      v10 = self->_voiceShortcutManager;
      self->_voiceShortcutManager = v9;
    }

    voiceShortcutManager = self->_voiceShortcutManager;
  }

  return voiceShortcutManager;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v34 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[VCXPCServer listener:shouldAcceptNewConnection:]";
    *&buf[12] = 2114;
    *&buf[14] = self;
    *&buf[22] = 2114;
    *&buf[24] = listenerCopy;
    v32 = 2114;
    v33 = connectionCopy;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s [%{public}@ listener:%{public}@]", buf, 0x2Au);
  }

  voiceShortcutManager = [(VCXPCServer *)self voiceShortcutManager];
  if (!voiceShortcutManager)
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

  v10 = [MEMORY[0x277D79D80] accessSpecifierForXPCConnection:connectionCopy];
  if ([(VCXPCServer *)self skipEntitlementsCheck])
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[VCXPCServer listener:shouldAcceptNewConnection:]";
      *&buf[12] = 2114;
      *&buf[14] = connectionCopy;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEBUG, "%s Skipping entitlement check for connection %{public}@ for testing", buf, 0x16u);
    }

    accessSpecifierUnrestricted = [MEMORY[0x277D79D80] accessSpecifierUnrestricted];

    v10 = accessSpecifierUnrestricted;
  }

  allowConnection = [v10 allowConnection];
  v14 = getWFGeneralLogObject();
  v15 = v14;
  if ((allowConnection & 1) == 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[VCXPCServer listener:shouldAcceptNewConnection:]";
      *&buf[12] = 2114;
      *&buf[14] = connectionCopy;
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
    *&buf[14] = connectionCopy;
    *&buf[22] = 2114;
    *&buf[24] = v10;
    _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_INFO, "%s Accepting connection %{public}@ with access %{public}@", buf, 0x20u);
  }

  objc_initWeak(&location, connectionCopy);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __50__VCXPCServer_listener_shouldAcceptNewConnection___block_invoke;
  v28[3] = &unk_278900170;
  objc_copyWeak(&v29, &location);
  [connectionCopy setInterruptionHandler:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__VCXPCServer_listener_shouldAcceptNewConnection___block_invoke_188;
  v26[3] = &unk_278900170;
  objc_copyWeak(&v27, &location);
  [connectionCopy setInvalidationHandler:v26];
  [connectionCopy setDelegate:self];
  xpcInterface = [(VCXPCServer *)self xpcInterface];
  [connectionCopy setExportedInterface:xpcInterface];

  v17 = [VCVoiceShortcutManagerAccessWrapper alloc];
  triggerRegistrar = [(VCXPCServer *)self triggerRegistrar];
  syncDataEndpoint = [(VCXPCServer *)self syncDataEndpoint];
  runCoordinator = [(VCXPCServer *)self runCoordinator];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v22 = [(VCVoiceShortcutManagerAccessWrapper *)v17 initWithVoiceShortcutManager:voiceShortcutManager triggerRegistrar:triggerRegistrar accessSpecifier:v10 syncDataEndpoint:syncDataEndpoint runCoordinator:runCoordinator auditToken:buf];
  [connectionCopy setExportedObject:v22];

  [connectionCopy resume];
  v23 = getWFGeneralLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[VCXPCServer listener:shouldAcceptNewConnection:]";
    *&buf[12] = 2114;
    *&buf[14] = connectionCopy;
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
  xpcListener = [(VCXPCServer *)self xpcListener];
  endpoint = [xpcListener endpoint];

  return endpoint;
}

- (VCXPCServer)initWithXPCListener:(id)listener databaseProvider:(id)provider triggerRegistrar:(id)registrar syncDataEndpoint:(id)endpoint runCoordinator:(id)coordinator eventHandler:(id)handler appShortcutsUpdater:(id)updater contextualActionSyncService:(id)self0
{
  listenerCopy = listener;
  obj = provider;
  providerCopy = provider;
  registrarCopy = registrar;
  endpointCopy = endpoint;
  endpointCopy2 = endpoint;
  coordinatorCopy = coordinator;
  coordinatorCopy2 = coordinator;
  handlerCopy = handler;
  updaterCopy = updater;
  serviceCopy = service;
  v36 = listenerCopy;
  if (listenerCopy)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCXPCServer.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"xpcListener"}];

    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCXPCServer.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];

LABEL_3:
  v37.receiver = self;
  v37.super_class = VCXPCServer;
  v22 = [(VCXPCServer *)&v37 init];
  if (v22)
  {
    v23 = VCDaemonXPCInterface();
    xpcInterface = v22->_xpcInterface;
    v22->_xpcInterface = v23;

    objc_storeStrong(&v22->_xpcListener, listener);
    [(NSXPCListener *)v22->_xpcListener setDelegate:v22];
    objc_storeStrong(&v22->_databaseProvider, obj);
    objc_storeStrong(&v22->_triggerRegistrar, registrar);
    objc_storeStrong(&v22->_syncDataEndpoint, endpointCopy);
    objc_storeStrong(&v22->_runCoordinator, coordinatorCopy);
    objc_storeStrong(&v22->_eventHandler, handler);
    objc_storeStrong(&v22->_appShortcutsUpdater, updater);
    objc_storeStrong(&v22->_contextualActionSyncService, service);
    [(NSXPCListener *)v22->_xpcListener resume];
    v25 = v22;
  }

  return v22;
}

- (VCXPCServer)initWithUnsecuredAnonymousListenerAndDatabaseProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_opt_new();
  v6 = [[WFWorkflowRunCoordinator alloc] initWithUserNotificationManager:v5 databaseProvider:providerCopy];
  v7 = [[WFTriggerRegistrar alloc] initWithDatabaseProvider:providerCopy eventHandler:0 userNotificationManager:v5];
  anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
  v9 = [(VCXPCServer *)self initWithXPCListener:anonymousListener databaseProvider:providerCopy triggerRegistrar:v7 syncDataEndpoint:0 runCoordinator:v6 eventHandler:0 appShortcutsUpdater:0 contextualActionSyncService:0];

  if (v9)
  {
    v9->_skipEntitlementsCheck = 1;
    v10 = v9;
  }

  return v9;
}

- (VCXPCServer)initWithDatabaseProvider:(id)provider triggerRegistrar:(id)registrar syncDataEndpoint:(id)endpoint runCoordinator:(id)coordinator eventHandler:(id)handler appShortcutsUpdater:(id)updater contextualActionSyncService:(id)service
{
  v16 = MEMORY[0x277CCAE98];
  serviceCopy = service;
  updaterCopy = updater;
  handlerCopy = handler;
  coordinatorCopy = coordinator;
  endpointCopy = endpoint;
  registrarCopy = registrar;
  providerCopy = provider;
  v24 = [v16 alloc];
  v25 = [v24 initWithMachServiceName:*MEMORY[0x277D7A380]];
  v26 = [(VCXPCServer *)self initWithXPCListener:v25 databaseProvider:providerCopy triggerRegistrar:registrarCopy syncDataEndpoint:endpointCopy runCoordinator:coordinatorCopy eventHandler:handlerCopy appShortcutsUpdater:updaterCopy contextualActionSyncService:serviceCopy];

  return v26;
}

@end
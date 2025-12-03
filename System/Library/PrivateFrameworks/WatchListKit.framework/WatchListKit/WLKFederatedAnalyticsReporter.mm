@interface WLKFederatedAnalyticsReporter
+ (id)defaultFederatedAnalyticsReporter;
- (NSXPCConnection)connection;
- (void)_invalidationHandler;
- (void)reportPunchout:(id)punchout;
@end

@implementation WLKFederatedAnalyticsReporter

+ (id)defaultFederatedAnalyticsReporter
{
  if (defaultFederatedAnalyticsReporter_token != -1)
  {
    +[WLKFederatedAnalyticsReporter defaultFederatedAnalyticsReporter];
  }

  v3 = defaultFederatedAnalyticsReporter_defaultReporter;

  return v3;
}

uint64_t __66__WLKFederatedAnalyticsReporter_defaultFederatedAnalyticsReporter__block_invoke()
{
  defaultFederatedAnalyticsReporter_defaultReporter = objc_alloc_init(WLKFederatedAnalyticsReporter);

  return MEMORY[0x2821F96F8]();
}

- (void)reportPunchout:(id)punchout
{
  punchoutCopy = punchout;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = [(WLKFederatedAnalyticsReporter *)selfCopy connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_3_0];

  [v6 reportFederatedPunchout:punchoutCopy];
  objc_sync_exit(selfCopy);
}

void __48__WLKFederatedAnalyticsReporter_reportPunchout___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKFederatedAnalyticsReporter - Error: Unable to communicate with the remote object proxy (%@)", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (NSXPCConnection)connection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    connection = selfCopy->_connection;
    selfCopy->_connection = v3;

    v5 = selfCopy->_connection;
    v6 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v5 setExportedInterface:v6];

    [(NSXPCConnection *)selfCopy->_connection setExportedObject:selfCopy];
    v7 = selfCopy->_connection;
    v8 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)selfCopy->_connection setInterruptionHandler:&__block_literal_global_7_0];
    objc_initWeak(&location, selfCopy);
    v9 = selfCopy->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __43__WLKFederatedAnalyticsReporter_connection__block_invoke_8;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:&v12];
    [(NSXPCConnection *)selfCopy->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  v10 = selfCopy->_connection;

  return v10;
}

void __43__WLKFederatedAnalyticsReporter_connection__block_invoke()
{
  v0 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKFederatedAnalyticsReporter - Connection interrupted.", v1, 2u);
  }
}

void __43__WLKFederatedAnalyticsReporter_connection__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidationHandler];
}

- (void)_invalidationHandler
{
  v3 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKFederatedAnalyticsReporter - Connection invalidated.", v6, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = selfCopy->_connection;
  selfCopy->_connection = 0;

  objc_sync_exit(selfCopy);
}

@end
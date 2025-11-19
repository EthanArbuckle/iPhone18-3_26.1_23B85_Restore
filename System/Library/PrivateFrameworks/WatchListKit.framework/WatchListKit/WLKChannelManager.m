@interface WLKChannelManager
+ (id)defaultChannelManager;
- (NSXPCConnection)connection;
- (void)_invalidationHandler;
- (void)vppaConsentedBundleIDsWithCompletion:(id)a3;
@end

@implementation WLKChannelManager

+ (id)defaultChannelManager
{
  if (defaultChannelManager_token != -1)
  {
    +[WLKChannelManager defaultChannelManager];
  }

  v3 = defaultChannelManager_defaultChannelManager;

  return v3;
}

uint64_t __42__WLKChannelManager_defaultChannelManager__block_invoke()
{
  defaultChannelManager_defaultChannelManager = objc_alloc_init(WLKChannelManager);

  return MEMORY[0x2821F96F8]();
}

- (void)vppaConsentedBundleIDsWithCompletion:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(WLKChannelManager *)v4 connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_3_1];

  [v6 vppaConsentedBundleIDsWithCompletion:v7];
  objc_sync_exit(v4);
}

void __58__WLKChannelManager_vppaConsentedBundleIDsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKChannelManager - Error: Unable to communicate with the remote object proxy (%@)", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (NSXPCConnection)connection
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    v6 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v5 setExportedInterface:v6];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    v7 = v2->_connection;
    v8 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_7_1];
    objc_initWeak(&location, v2);
    v9 = v2->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __31__WLKChannelManager_connection__block_invoke_8;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:&v12];
    [(NSXPCConnection *)v2->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);

  v10 = v2->_connection;

  return v10;
}

void __31__WLKChannelManager_connection__block_invoke()
{
  v0 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKChannelManager - Connection interrupted.", v1, 2u);
  }
}

void __31__WLKChannelManager_connection__block_invoke_8(uint64_t a1)
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
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKChannelManager - Connection invalidated.", v6, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  connection = v4->_connection;
  v4->_connection = 0;

  objc_sync_exit(v4);
}

@end
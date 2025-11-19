@interface SocialLayerDaemon
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_acceptMainConnection:(id)a3;
- (void)_appConnectionInvalidated:(id)a3;
- (void)_appleSystemLanguageDidChange:(id)a3;
- (void)endpointForServiceNamed:(id)a3 reply:(id)a4;
- (void)multiplexDidRemoveAllServices:(id)a3;
- (void)setupListeners;
@end

@implementation SocialLayerDaemon

- (void)setupListeners
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Error registering for Apple system language change notification: %d. We will continue without registering, but this will result in localized strings not updating when the system language changes.", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __35__SocialLayerDaemon_setupListeners__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  [v1 _appleSystemLanguageDidChange:0];

  objc_destroyWeak(&to);
}

- (void)_appleSystemLanguageDidChange:(id)a3
{
  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SocialLayerDaemon _appleSystemLanguageDidChange:v4];
  }

  notify_cancel(self->_appleLanguageChangeNotificationToken);
  xpc_transaction_exit_clean();
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!SLDConnectionIsEntitled(v7))
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SocialLayerDaemon listener:v7 shouldAcceptNewConnection:v10];
    }

    goto LABEL_7;
  }

  v8 = [(SocialLayerDaemon *)self xpcListener];

  if (v8 != v6)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  [(SocialLayerDaemon *)self _acceptMainConnection:v7];
  v9 = 1;
LABEL_8:

  return v9;
}

- (void)_acceptMainConnection:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2846BD5A0];
  [v4 setExportedInterface:v5];
  [v4 setExportedObject:self];
  v6 = +[SLDServiceListenerMultiplex emptyMultiplex];
  [v6 setDelegate:self];
  v7 = [(SocialLayerDaemon *)self connectionsToServicesTable];
  [v7 setObject:v6 forKey:v4];

  objc_initWeak(&location, v4);
  objc_initWeak(&from, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __43__SocialLayerDaemon__acceptMainConnection___block_invoke;
  v14 = &unk_2789270F8;
  objc_copyWeak(&v15, &from);
  objc_copyWeak(&v16, &location);
  [v4 setInvalidationHandler:&v11];
  v8 = SLDGlobalWorkloop();
  [v4 _setQueue:{v8, v11, v12, v13, v14}];

  v9 = SLDaemonLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_INFO, "Accepted a new primary client connection: %@", buf, 0xCu);
  }

  [v4 resume];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v10 = *MEMORY[0x277D85DE8];
}

void __43__SocialLayerDaemon__acceptMainConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _appConnectionInvalidated:v2];
}

- (void)endpointForServiceNamed:(id)a3 reply:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CCAE80];
  v8 = a4;
  v9 = [v7 currentConnection];
  v10 = NSClassFromString(v6);
  v11 = [(SocialLayerDaemon *)self connectionsToServicesTable];
  v12 = [v11 objectForKey:v9];

  if (v10 && v12 && -[objc_class conformsToProtocol:](v10, "conformsToProtocol:", &unk_2846AE6F0) && ([v12 endpointForServiceClass:v10], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = SLDaemonLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_debug_impl(&dword_231772000, v15, OS_LOG_TYPE_DEBUG, "Returning endpoint: %@ to client: %@ for service class: %@", &v17, 0x20u);
    }
  }

  else
  {
    v15 = SLDaemonLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SocialLayerDaemon *)v9 endpointForServiceNamed:v6 reply:v15];
    }

    v14 = 0;
  }

  v8[2](v8, v14);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_appConnectionInvalidated:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SLDaemonLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_INFO, "Primary client connection invalidated: %@", &v11, 0xCu);
  }

  v6 = [(SocialLayerDaemon *)self connectionsToServicesTable];
  v7 = [v6 objectForKey:v4];

  v8 = [(SocialLayerDaemon *)self connectionsToServicesTable];
  [v8 removeObjectForKey:v4];

  if (([v7 isEmpty] & 1) == 0)
  {
    v9 = [(SocialLayerDaemon *)self multiplexesPendingRemoval];
    [v9 addObject:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)multiplexDidRemoveAllServices:(id)a3
{
  v4 = a3;
  v5 = [(SocialLayerDaemon *)self multiplexesPendingRemoval];
  [v5 removeObject:v4];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Primary client connection (%@) does not have the right entitlement.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)endpointForServiceNamed:(os_log_t)log reply:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "Primary client connection (%@) requested endpoint for service (%@), but we could not create one", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end
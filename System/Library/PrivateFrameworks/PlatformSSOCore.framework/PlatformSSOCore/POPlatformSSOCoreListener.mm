@interface POPlatformSSOCoreListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)initForLogin:(BOOL)a3 identifierProvider:(id)a4 jwksStroageProvider:(id)a5;
@end

@implementation POPlatformSSOCoreListener

- (id)initForLogin:(BOOL)a3 identifierProvider:(id)a4 jwksStroageProvider:(id)a5
{
  v7 = a3;
  v9 = a4;
  v10 = a5;
  if (v7)
  {
    v11 = @"com.apple.PlatformSSO.login.service-xpc";
  }

  else
  {
    v11 = @"com.apple.PlatformSSO.service-xpc";
  }

  v15.receiver = self;
  v15.super_class = POPlatformSSOCoreListener;
  v12 = [(POAgentListener *)&v15 initWithMachServiceName:v11];
  p_isa = &v12->super.super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_userIdentifierProvider, a4);
    objc_storeStrong(p_isa + 8, a5);
  }

  return p_isa;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (PO_LOG_POAgentListener_once != -1)
  {
    [POPlatformSSOCoreListener listener:shouldAcceptNewConnection:];
  }

  v8 = PO_LOG_POAgentListener_log;
  if (os_log_type_enabled(PO_LOG_POAgentListener_log, OS_LOG_TYPE_DEBUG))
  {
    [(POPlatformSSOCoreListener *)v6 listener:v7 shouldAcceptNewConnection:v8];
  }

  v9 = [POAgentCoreProcess alloc];
  v10 = [(POPlatformSSOCoreListener *)self userIdentifierProvider];
  v11 = [(POPlatformSSOCoreListener *)self jwksStorageProvider];
  v12 = [(POAgentCoreProcess *)v9 initWithXPCConnection:v7 identifierProvider:v10 jwksStroageProvider:v11];

  v13 = [POInternalProtocols interfaceWithInternalProtocol:&unk_2870B1AB8];
  [v7 setExportedInterface:v13];

  [v7 setExportedObject:v12];
  [v7 resume];
  objc_initWeak(&location, v12);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __64__POPlatformSSOCoreListener_listener_shouldAcceptNewConnection___block_invoke;
  v19 = &unk_279A3E4B0;
  objc_copyWeak(&v20, &location);
  [(POAgentCoreProcess *)v12 setInvalidationHandler:&v16];
  v14 = [(POAgentCoreProcess *)v12 invalidationHandler:v16];
  [v7 setInvalidationHandler:v14];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return 1;
}

void __64__POPlatformSSOCoreListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_25E8B1000, log, OS_LOG_TYPE_DEBUG, "%{public}@, %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end
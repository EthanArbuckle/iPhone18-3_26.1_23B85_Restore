@interface POPlatformSSOListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)initForLogin:(BOOL)login authenticationProcess:(id)process;
@end

@implementation POPlatformSSOListener

- (id)initForLogin:(BOOL)login authenticationProcess:(id)process
{
  loginCopy = login;
  processCopy = process;
  if (loginCopy)
  {
    v8 = @"com.apple.PlatformSSO.login.service-xpc";
  }

  else
  {
    v8 = @"com.apple.PlatformSSO.service-xpc";
  }

  v12.receiver = self;
  v12.super_class = POPlatformSSOListener;
  v9 = [(POAgentListener *)&v12 initWithMachServiceName:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_process, process);
  }

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = PO_LOG_POAgentListener();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POPlatformSSOListener listener:shouldAcceptNewConnection:];
  }

  v9 = [POAgentProcess alloc];
  process = [(POPlatformSSOListener *)self process];
  v11 = [(POAgentProcess *)v9 initWithXPCConnection:connectionCopy authenticationProcess:process];

  v12 = [MEMORY[0x277D3D1F8] interfaceWithInternalProtocol:&unk_28708F1E0];
  [connectionCopy setExportedInterface:v12];

  [connectionCopy setExportedObject:v11];
  [connectionCopy resume];
  objc_initWeak(&location, v11);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __60__POPlatformSSOListener_listener_shouldAcceptNewConnection___block_invoke;
  v18 = &unk_279A3A298;
  objc_copyWeak(&v19, &location);
  [(POAgentCoreProcess *)v11 setInvalidationHandler:&v15];
  v13 = [(POAgentCoreProcess *)v11 invalidationHandler:v15];
  [connectionCopy setInvalidationHandler:v13];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return 1;
}

void __60__POPlatformSSOListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_25E831000, v0, v1, "%{public}@, %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end
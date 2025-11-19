@interface POPlatformSSOUIManagerListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (POPlatformSSOUIManagerListener)initWithAuthenticationProcess:(id)a3;
@end

@implementation POPlatformSSOUIManagerListener

- (POPlatformSSOUIManagerListener)initWithAuthenticationProcess:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = POPlatformSSOUIManagerListener;
  v6 = [(POAgentListener *)&v9 initWithMachServiceName:@"com.apple.PlatformSSO.settings.service-xpc"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_process, a3);
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POAgentListener();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POPlatformSSOListener listener:shouldAcceptNewConnection:];
  }

  v9 = [POUIAgentProcess alloc];
  v10 = [(POPlatformSSOUIManagerListener *)self process];
  v11 = [(POUIAgentProcess *)v9 initWithXPCConnection:v7 authenticationProcess:v10];

  v12 = [MEMORY[0x277D3D1F8] interfaceWithInternalProtocol:&unk_287096150];
  [v7 setExportedInterface:v12];

  [v7 setExportedObject:v11];
  [v7 resume];
  objc_initWeak(&location, v11);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__POPlatformSSOUIManagerListener_listener_shouldAcceptNewConnection___block_invoke;
  v18 = &unk_279A3A298;
  objc_copyWeak(&v19, &location);
  [(POUIAgentProcess *)v11 setInvalidationHandler:&v15];
  v13 = [(POUIAgentProcess *)v11 invalidationHandler:v15];
  [v7 setInvalidationHandler:v13];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return 1;
}

void __69__POPlatformSSOUIManagerListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

@end
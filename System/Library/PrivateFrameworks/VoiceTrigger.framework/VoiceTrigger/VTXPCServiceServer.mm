@interface VTXPCServiceServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (VTXPCServiceServer)init;
- (void)startService;
@end

@implementation VTXPCServiceServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v27 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v24 = "[VTXPCServiceServer listener:shouldAcceptNewConnection:]";
    v25 = 2114;
    v26 = connectionCopy;
    _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "::: %{public}s connection: %{public}@", buf, 0x16u);
  }

  v8 = [connectionCopy valueForEntitlement:@"com.apple.voicetrigger.voicetriggerservice"];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28371C988];
    [connectionCopy setRemoteObjectInterface:v9];

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28371F818];
    [connectionCopy setExportedInterface:v10];

    v11 = objc_alloc_init(VTXPCConnection);
    [connectionCopy setExportedObject:v11];
    objc_initWeak(buf, v11);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __57__VTXPCServiceServer_listener_shouldAcceptNewConnection___block_invoke;
    v21[3] = &unk_2784ECDF8;
    objc_copyWeak(&v22, buf);
    [connectionCopy setInterruptionHandler:v21];
    objc_initWeak(&location, connectionCopy);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __57__VTXPCServiceServer_listener_shouldAcceptNewConnection___block_invoke_2;
    v17 = &unk_2784EC460;
    objc_copyWeak(&v18, buf);
    objc_copyWeak(&v19, &location);
    [connectionCopy setInvalidationHandler:&v14];
    [connectionCopy resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v24 = "[VTXPCServiceServer listener:shouldAcceptNewConnection:]";
      v25 = 2114;
      v26 = connectionCopy;
      _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "::: %{public}s Deny connection %{public}@: lack of entitlement.", buf, 0x16u);
    }
  }

  return v8 != 0;
}

void __57__VTXPCServiceServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDisconnect];
}

void __57__VTXPCServiceServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDisconnect];

  v4 = +[VTTriggerEventMonitorManager sharedManager];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v4 removeConnection:v3];
}

- (void)startService
{
  v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.voicetrigger.voicetriggerservice"];
  listener = self->_listener;
  self->_listener = v3;

  [(NSXPCListener *)self->_listener setDelegate:self];
  v5 = self->_listener;

  [(NSXPCListener *)v5 resume];
}

- (VTXPCServiceServer)init
{
  v3.receiver = self;
  v3.super_class = VTXPCServiceServer;
  return [(VTXPCServiceServer *)&v3 init];
}

@end
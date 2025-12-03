@interface TVRCTimedMetadataManager
- (NSXPCConnection)connection;
- (TVRCTimedMetadataUpdating)proxy;
- (void)updateTimedMetadata:(id)metadata;
@end

@implementation TVRCTimedMetadataManager

- (void)updateTimedMetadata:(id)metadata
{
  metadataCopy = metadata;
  proxy = [(TVRCTimedMetadataManager *)self proxy];
  [proxy updateTimedMetadata:metadataCopy];
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.tvremotecore.xpc" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287E6D980];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_7];
    objc_initWeak(&location, self);
    v7 = self->_connection;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __38__TVRCTimedMetadataManager_connection__block_invoke_46;
    v12 = &unk_279D826E8;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)v7 setInvalidationHandler:&v9];
    [(NSXPCConnection *)self->_connection resume:v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);

    connection = self->_connection;
  }

  return connection;
}

void __38__TVRCTimedMetadataManager_connection__block_invoke()
{
  v0 = _TVRCXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __38__TVRCTimedMetadataManager_connection__block_invoke_cold_1(v0);
  }
}

void __38__TVRCTimedMetadataManager_connection__block_invoke_46(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _TVRCXPCLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __38__TVRCTimedMetadataManager_connection__block_invoke_46_cold_1(v2);
    }

    v3 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

- (TVRCTimedMetadataUpdating)proxy
{
  connection = [(TVRCTimedMetadataManager *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_49];

  return v3;
}

void __33__TVRCTimedMetadataManager_proxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _TVRCXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __33__TVRCTimedMetadataManager_proxy__block_invoke_cold_1(v2, v3);
  }
}

void __33__TVRCTimedMetadataManager_proxy__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Proxy creation error (TVRCTimedMetadataUpdating): %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
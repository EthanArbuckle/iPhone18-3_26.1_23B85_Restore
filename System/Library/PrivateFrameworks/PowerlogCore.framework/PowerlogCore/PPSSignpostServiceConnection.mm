@interface PPSSignpostServiceConnection
- (PPSSignpostServiceConnection)init;
- (void)invalidate;
@end

@implementation PPSSignpostServiceConnection

- (PPSSignpostServiceConnection)init
{
  v9.receiver = self;
  v9.super_class = PPSSignpostServiceConnection;
  v2 = [(PPSSignpostServiceConnection *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.PerfPowerServicesSignpostService"];
    connectionToServer = v2->_connectionToServer;
    v2->_connectionToServer = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5432868];
    [(NSXPCConnection *)v2->_connectionToServer setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connectionToServer setInterruptionHandler:&__block_literal_global_13];
    [(NSXPCConnection *)v2->_connectionToServer setInvalidationHandler:&__block_literal_global_16];
    [(NSXPCConnection *)v2->_connectionToServer resume];
    v6 = [(NSXPCConnection *)v2->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20];
    service = v2->_service;
    v2->_service = v6;
  }

  return v2;
}

void __36__PPSSignpostServiceConnection_init__block_invoke()
{
  v0 = PPSLogSignpostController();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __36__PPSSignpostServiceConnection_init__block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void __36__PPSSignpostServiceConnection_init__block_invoke_14()
{
  v0 = PPSLogSignpostController();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __36__PPSSignpostServiceConnection_init__block_invoke_14_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void __36__PPSSignpostServiceConnection_init__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PPSLogSignpostController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __36__PPSSignpostServiceConnection_init__block_invoke_17_cold_1(v2);
  }
}

- (void)invalidate
{
  connectionToServer = self->_connectionToServer;
  if (connectionToServer)
  {
    [(NSXPCConnection *)connectionToServer invalidate];
    v4 = self->_connectionToServer;
    self->_connectionToServer = 0;
  }
}

void __36__PPSSignpostServiceConnection_init__block_invoke_17_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1_2(&dword_1D8611000, v2, v3, "Connection error occurred: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end
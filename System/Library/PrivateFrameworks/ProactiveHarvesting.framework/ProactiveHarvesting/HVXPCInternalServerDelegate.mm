@interface HVXPCInternalServerDelegate
+ (id)server;
+ (void)start;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation HVXPCInternalServerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = MEMORY[0x277CCAE90];
  v5 = a4;
  v6 = [v4 interfaceWithProtocol:&unk_28475F1F0];
  v7 = MEMORY[0x277D42660];
  v8 = objc_opt_new();
  v9 = hv_default_log_handle();
  LOBYTE(v7) = [v7 shouldAcceptConnection:v5 serviceName:@"com.apple.proactive.ProactiveHarvesting.Internal" whitelistedServerInterface:v6 whitelistedClientInterface:0 requestHandler:v8 validateConnection:&__block_literal_global_48 setupClientProxy:0 interruptionHandler:&__block_literal_global_53 invalidationHandler:&__block_literal_global_56_2580 logHandle:v9];

  return v7;
}

void __66__HVXPCInternalServerDelegate_listener_shouldAcceptNewConnection___block_invoke_54()
{
  v0 = hv_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2321EC000, v0, OS_LOG_TYPE_DEFAULT, "HVXPCInternalService: invalidated.", v1, 2u);
  }
}

void __66__HVXPCInternalServerDelegate_listener_shouldAcceptNewConnection___block_invoke_2()
{
  v0 = hv_default_log_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_2321EC000, v0, OS_LOG_TYPE_DEFAULT, "HVXPCInternalService: interrupted.", v1, 2u);
  }
}

uint64_t __66__HVXPCInternalServerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D42660];
  v3 = a2;
  v4 = hv_default_log_handle();
  v5 = [v2 checkForAndLogTrueBooleanEntitlement:@"com.apple.proactive.ProactiveHarvesting.Internal" connection:v3 serviceName:@"com.apple.proactive.ProactiveHarvesting.Internal" logHandle:v4];

  return v5;
}

+ (void)start
{
  v2 = hv_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2321EC000, v2, OS_LOG_TYPE_DEFAULT, "HVXPCInternalServerDelegate: start", v5, 2u);
  }

  v3 = MEMORY[0x277D42658];
  v4 = +[HVXPCInternalServerDelegate server];
  [v3 registerForService:@"com.apple.proactive.ProactiveHarvesting.Internal" delegate:v4];
}

+ (id)server
{
  if (server__pasOnceToken9 != -1)
  {
    dispatch_once(&server__pasOnceToken9, &__block_literal_global_43);
  }

  v3 = server__pasExprOnceResult_2592;

  return v3;
}

void __37__HVXPCInternalServerDelegate_server__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = server__pasExprOnceResult_2592;
  server__pasExprOnceResult_2592 = v1;

  objc_autoreleasePoolPop(v0);
}

@end
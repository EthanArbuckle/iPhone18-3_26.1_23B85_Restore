@interface PSGInternalServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation PSGInternalServerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = MEMORY[0x277CCAE90];
  v5 = a4;
  v6 = [v4 interfaceWithProtocol:&unk_28734D6D8];
  v7 = MEMORY[0x277D42660];
  v8 = objc_opt_new();
  v9 = psg_default_log_handle();
  LOBYTE(v7) = [v7 shouldAcceptConnection:v5 serviceName:@"com.apple.private.psg.internal" whitelistedServerInterface:v6 whitelistedClientInterface:0 requestHandler:v8 validateConnection:&__block_literal_global_87 setupClientProxy:0 interruptionHandler:&__block_literal_global_13 invalidationHandler:&__block_literal_global_15 logHandle:v9];

  return v7;
}

uint64_t __64__PSGInternalServerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D42660];
  v3 = a2;
  v4 = psg_default_log_handle();
  v5 = [v2 checkForAndLogTrueBooleanEntitlement:@"com.apple.private.psg.internal" connection:v3 serviceName:@"com.apple.private.psg.internal" logHandle:v4];

  return v5;
}

@end
@interface PPEventServerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PPEventServerDelegate)init;
@end

@implementation PPEventServerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2847A3EE8];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  [v7 setClasses:v11 forSelector:sel_resolveEventNameRecordChanges_client_queryId_ argumentIndex:0 ofReply:0];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2847B9E20];
  v13 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PPEventServerDelegate_listener_shouldAcceptNewConnection___block_invoke;
  aBlock[3] = &unk_278977610;
  v14 = v13;
  v25 = v14;
  v15 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__PPEventServerDelegate_listener_shouldAcceptNewConnection___block_invoke_2;
  v22[3] = &unk_278977638;
  v23 = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__PPEventServerDelegate_listener_shouldAcceptNewConnection___block_invoke_3;
  v20[3] = &unk_2789790A8;
  v21 = v23;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__PPEventServerDelegate_listener_shouldAcceptNewConnection___block_invoke_4;
  v18[3] = &unk_2789790A8;
  v19 = v21;
  v16 = v21;
  LOBYTE(v10) = [PPXPCServerHelper shouldAcceptConnection:connectionCopy serviceName:@"com.apple.proactive.PersonalizationPortrait.Event" allowedServerInterface:v7 allowedClientInterface:v12 requestHandler:v16 validateConnection:v15 setupClientProxy:v22 interruptionHandler:v20 invalidationHandler:v18];

  return v10;
}

BOOL __60__PPEventServerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 setClientProcessName:a3];
  v6 = [PPXPCServerHelper checkForAndLogTrueBooleanEntitlement:@"com.apple.proactive.PersonalizationPortrait.Event" connection:v5 serviceName:@"com.apple.proactive.PersonalizationPortrait.Event"];

  return v6;
}

- (PPEventServerDelegate)init
{
  v3.receiver = self;
  v3.super_class = PPEventServerDelegate;
  return [(PPEventServerDelegate *)&v3 init];
}

@end
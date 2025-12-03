@interface PPTemporalClusterServerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PPTemporalClusterServerDelegate)init;
@end

@implementation PPTemporalClusterServerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2847A0638];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v7 initWithObjects:{v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  [v5 setClasses:v15 forSelector:sel_rankedTemporalClustersForStartDate_endDate_queryId_ argumentIndex:0 ofReply:0];

  v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2847B9B20];
  v17 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PPTemporalClusterServerDelegate_listener_shouldAcceptNewConnection___block_invoke;
  aBlock[3] = &unk_278977610;
  v18 = v17;
  v31 = v18;
  v19 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __70__PPTemporalClusterServerDelegate_listener_shouldAcceptNewConnection___block_invoke_2;
  v28[3] = &unk_278977638;
  v29 = v18;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __70__PPTemporalClusterServerDelegate_listener_shouldAcceptNewConnection___block_invoke_3;
  v26[3] = &unk_2789790A8;
  v27 = v29;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __70__PPTemporalClusterServerDelegate_listener_shouldAcceptNewConnection___block_invoke_4;
  v24[3] = &unk_2789790A8;
  v25 = v27;
  v20 = v27;
  LOBYTE(v14) = [PPXPCServerHelper shouldAcceptConnection:connectionCopy serviceName:@"com.apple.proactive.PersonalizationPortrait.TemporalCluster" allowedServerInterface:v5 allowedClientInterface:v16 requestHandler:v20 validateConnection:v19 setupClientProxy:v28 interruptionHandler:v26 invalidationHandler:v24];

  return v14;
}

BOOL __70__PPTemporalClusterServerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 setClientProcessName:a3];
  v6 = [PPXPCServerHelper checkForAndLogTrueBooleanEntitlement:@"com.apple.proactive.PersonalizationPortrait.TemporalCluster" connection:v5 serviceName:@"com.apple.proactive.PersonalizationPortrait.TemporalCluster"];

  return v6;
}

- (PPTemporalClusterServerDelegate)init
{
  v3.receiver = self;
  v3.super_class = PPTemporalClusterServerDelegate;
  return [(PPTemporalClusterServerDelegate *)&v3 init];
}

@end
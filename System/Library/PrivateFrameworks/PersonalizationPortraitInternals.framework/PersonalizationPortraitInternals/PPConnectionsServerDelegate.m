@interface PPConnectionsServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PPConnectionsServerDelegate)init;
@end

@implementation PPConnectionsServerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = MEMORY[0x277CCAE90];
  v5 = a4;
  v6 = [v4 interfaceWithProtocol:&unk_2847A1690];
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2847B9C78];
  v8 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PPConnectionsServerDelegate_listener_shouldAcceptNewConnection___block_invoke;
  aBlock[3] = &unk_278977610;
  v9 = v8;
  v21 = v9;
  v10 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__PPConnectionsServerDelegate_listener_shouldAcceptNewConnection___block_invoke_2;
  v18[3] = &unk_278977638;
  v19 = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__PPConnectionsServerDelegate_listener_shouldAcceptNewConnection___block_invoke_3;
  v16[3] = &unk_2789790A8;
  v17 = v19;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__PPConnectionsServerDelegate_listener_shouldAcceptNewConnection___block_invoke_4;
  v14[3] = &unk_2789790A8;
  v15 = v17;
  v11 = v17;
  v12 = [PPXPCServerHelper shouldAcceptConnection:v5 serviceName:@"com.apple.proactive.PersonalizationPortrait.Connections" allowedServerInterface:v6 allowedClientInterface:v7 requestHandler:v11 validateConnection:v10 setupClientProxy:v18 interruptionHandler:v16 invalidationHandler:v14];

  return v12;
}

BOOL __66__PPConnectionsServerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 setClientProcessName:a3];
  v6 = [PPXPCServerHelper checkForAndLogTrueBooleanEntitlement:@"com.apple.proactive.PersonalizationPortrait.Connections" connection:v5 serviceName:@"com.apple.proactive.PersonalizationPortrait.Connections"];

  return v6;
}

- (PPConnectionsServerDelegate)init
{
  v3.receiver = self;
  v3.super_class = PPConnectionsServerDelegate;
  return [(PPConnectionsServerDelegate *)&v3 init];
}

@end
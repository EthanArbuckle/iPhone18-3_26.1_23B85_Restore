@interface WBSCloudHistoryPushAgentProxy
- (WBSCloudHistoryPushAgentProxy)init;
- (id)queryMemoryFootprintWithError:(id *)a3;
- (void)acknowledgePendingPushNotifications;
- (void)clearAcknowledgedPushNotifications;
- (void)dealloc;
- (void)getPushNotifications:(id)a3;
- (void)queryMemoryFootprint:(id)a3;
@end

@implementation WBSCloudHistoryPushAgentProxy

- (WBSCloudHistoryPushAgentProxy)init
{
  v8.receiver = self;
  v8.super_class = WBSCloudHistoryPushAgentProxy;
  v2 = [(WBSCloudHistoryPushAgentProxy *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SafariCloudHistoryPushAgent" options:0];
    agentConnection = v2->_agentConnection;
    v2->_agentConnection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AA3B38];
    [(NSXPCConnection *)v2->_agentConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_agentConnection resume];
    v6 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_agentConnection invalidate];
  v3.receiver = self;
  v3.super_class = WBSCloudHistoryPushAgentProxy;
  [(WBSCloudHistoryPushAgentProxy *)&v3 dealloc];
}

- (void)getPushNotifications:(id)a3
{
  v5 = a3;
  v4 = [(NSXPCConnection *)self->_agentConnection remoteObjectProxy];
  [v4 getPushNotifications:v5];
}

- (id)queryMemoryFootprintWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__WBSCloudHistoryPushAgentProxy_queryMemoryFootprintWithError___block_invoke;
  v10[3] = &unk_1E7FB82B0;
  v10[4] = &v11;
  v5 = MEMORY[0x1BFB13CE0](v10, a2);
  v6 = [(NSXPCConnection *)self->_agentConnection synchronousRemoteObjectProxyWithErrorHandler:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__WBSCloudHistoryPushAgentProxy_queryMemoryFootprintWithError___block_invoke_2;
  v9[3] = &unk_1E7FB82D8;
  v9[4] = &v17;
  v9[5] = &v11;
  [v6 queryMemoryFootprint:v9];

  if (a3)
  {
    *a3 = v12[5];
  }

  v7 = v18[5];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __63__WBSCloudHistoryPushAgentProxy_queryMemoryFootprintWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)queryMemoryFootprint:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__WBSCloudHistoryPushAgentProxy_queryMemoryFootprint___block_invoke;
  v8[3] = &unk_1E7FB7E48;
  v5 = v4;
  v9 = v5;
  v6 = MEMORY[0x1BFB13CE0](v8);
  v7 = [(NSXPCConnection *)self->_agentConnection remoteObjectProxyWithErrorHandler:v6];
  [v7 queryMemoryFootprint:v5];
}

- (void)acknowledgePendingPushNotifications
{
  v2 = [(NSXPCConnection *)self->_agentConnection remoteObjectProxy];
  [v2 acknowledgePendingPushNotifications];
}

- (void)clearAcknowledgedPushNotifications
{
  v2 = [(NSXPCConnection *)self->_agentConnection remoteObjectProxy];
  [v2 clearAcknowledgedPushNotifications];
}

@end
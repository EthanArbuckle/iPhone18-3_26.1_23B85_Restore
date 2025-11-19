@interface WiFiP2PDNSServiceDiscoveryManager
- (id)initUsingWiFiAware:(BOOL)a3 serviceCallback:(id)a4;
- (void)handleConnectionEstablishedWithProxy:(id)a3;
- (void)handleEventType:(unint64_t)a3 keyData:(id)a4 valueData:(id)a5;
- (void)startConnectionUsingProxy:(id)a3 completionHandler:(id)a4;
- (void)startServiceDiscoveryWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)stopServiceDiscoveryWithConfiguration:(id)a3;
@end

@implementation WiFiP2PDNSServiceDiscoveryManager

- (id)initUsingWiFiAware:(BOOL)a3 serviceCallback:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = WiFiP2PDNSServiceDiscoveryManager;
  v7 = [(WiFiP2PDNSServiceDiscoveryManager *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_useWiFiAware = a3;
    v9 = MEMORY[0x2318E0CF0](v6);
    serviceCallback = v8->_serviceCallback;
    v8->_serviceCallback = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    registeredServices = v8->_registeredServices;
    v8->_registeredServices = v11;

    v13 = [WiFiP2PXPCConnection alloc];
    if (v8->_useWiFiAware)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v16 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.WiFiP2PDNSServiceDiscoveryManager", 0, v15);
    v17 = [(WiFiP2PXPCConnection *)v13 initWithEndpointType:v14 queue:v16 retryTimeout:+[WiFiP2PXPCConnection defaultRetryTimeout]];
    xpcConnection = v8->_xpcConnection;
    v8->_xpcConnection = v17;

    [(WiFiP2PXPCConnection *)v8->_xpcConnection setDelegate:v8];
  }

  return v8;
}

- (void)startConnectionUsingProxy:(id)a3 completionHandler:(id)a4
{
  if (self->_useWiFiAware)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [a3 createXPCResponderWithType:v5 completionHandler:a4];
}

- (void)handleConnectionEstablishedWithProxy:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_registeredServices;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 startServiceDiscoveryWithConfiguration:*(*(&v11 + 1) + 8 * v9++) completionHandler:{&__block_literal_global_6, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleEventType:(unint64_t)a3 keyData:(id)a4 valueData:(id)a5
{
  v10 = a4;
  v8 = a5;
  if (a3 <= 3)
  {
    v9 = dword_22E0049F0[a3];
    (*(self->_serviceCallback + 2))();
  }
}

- (void)startServiceDiscoveryWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  xpcConnection = self->_xpcConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__WiFiP2PDNSServiceDiscoveryManager_startServiceDiscoveryWithConfiguration_completionHandler___block_invoke;
  v15[3] = &unk_2787AB5B8;
  v15[4] = self;
  v16 = v6;
  v17 = v18;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__WiFiP2PDNSServiceDiscoveryManager_startServiceDiscoveryWithConfiguration_completionHandler___block_invoke_2;
  v11[3] = &unk_2787AB5E0;
  v14 = v18;
  v11[4] = self;
  v9 = v16;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v15 clientCompletionHandler:v11];

  _Block_object_dispose(v18, 8);
}

void __94__WiFiP2PDNSServiceDiscoveryManager_startServiceDiscoveryWithConfiguration_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[5];
  v6 = *(a1[4] + 24);
  v7 = a3;
  v8 = a2;
  [v6 addObject:v5];
  *(*(a1[6] + 8) + 24) = 1;
  [v8 startServiceDiscoveryWithConfiguration:a1[5] completionHandler:v7];
}

uint64_t __94__WiFiP2PDNSServiceDiscoveryManager_startServiceDiscoveryWithConfiguration_completionHandler___block_invoke_2(void *a1)
{
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    [*(a1[4] + 24) addObject:a1[5]];
    *(*(a1[7] + 8) + 24) = 1;
  }

  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)stopServiceDiscoveryWithConfiguration:(id)a3
{
  v4 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  xpcConnection = self->_xpcConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__WiFiP2PDNSServiceDiscoveryManager_stopServiceDiscoveryWithConfiguration___block_invoke;
  v10[3] = &unk_2787AB5B8;
  v10[4] = self;
  v11 = v4;
  v12 = v13;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__WiFiP2PDNSServiceDiscoveryManager_stopServiceDiscoveryWithConfiguration___block_invoke_2;
  v7[3] = &unk_2787AB608;
  v9 = v13;
  v7[4] = self;
  v6 = v11;
  v8 = v6;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v10 clientCompletionHandler:v7];

  _Block_object_dispose(v13, 8);
}

void __75__WiFiP2PDNSServiceDiscoveryManager_stopServiceDiscoveryWithConfiguration___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[5];
  v6 = *(a1[4] + 24);
  v7 = a3;
  v8 = a2;
  [v6 removeObject:v5];
  *(*(a1[6] + 8) + 24) = 1;
  [v8 stopServiceDiscoveryWithConfiguration:a1[5] completionHandler:v7];
}

uint64_t __75__WiFiP2PDNSServiceDiscoveryManager_stopServiceDiscoveryWithConfiguration___block_invoke_2(void *a1)
{
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    [*(a1[4] + 24) removeObject:a1[5]];
    *(*(a1[6] + 8) + 24) = 1;
  }

  result = [*(a1[4] + 24) count];
  if (!result)
  {
    v3 = *(a1[4] + 32);

    return [v3 stop];
  }

  return result;
}

@end
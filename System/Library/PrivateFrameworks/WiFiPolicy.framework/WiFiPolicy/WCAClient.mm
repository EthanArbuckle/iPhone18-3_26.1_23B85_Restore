@interface WCAClient
+ (id)sharedClient;
- (WCAClient)init;
- (void)_establishDaemonConnection;
- (void)_invalidateDaemonConnectionIfPossible;
- (void)executeFetchRequest:(id)request;
- (void)fetchWiFiAssetsFromServer;
@end

@implementation WCAClient

void __39__WCAClient__establishDaemonConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__WCAClient__establishDaemonConnection__block_invoke_2;
    block[3] = &unk_2789C6630;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

- (void)_establishDaemonConnection
{
  if (!self->_connectionToService)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.wifi.WiFiCloudAssetsXPCService"];
    connectionToService = self->_connectionToService;
    self->_connectionToService = v3;

    if (self->_connectionToService)
    {
      v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2848EA2B8];
      [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v5];

      [(NSXPCConnection *)self->_connectionToService resume];
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __39__WCAClient__establishDaemonConnection__block_invoke;
      v8[3] = &unk_2789C68F8;
      objc_copyWeak(&v9, &location);
      [(NSXPCConnection *)self->_connectionToService setInvalidationHandler:v8];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __39__WCAClient__establishDaemonConnection__block_invoke_3;
      v6[3] = &unk_2789C68F8;
      objc_copyWeak(&v7, &location);
      [(NSXPCConnection *)self->_connectionToService setInterruptionHandler:v6];
      objc_destroyWeak(&v7);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

+ (id)sharedClient
{
  if (sharedClient_onceToken != -1)
  {
    +[WCAClient sharedClient];
  }

  v3 = sharedClient_wcaClient;

  return v3;
}

- (void)_invalidateDaemonConnectionIfPossible
{
  connectionToService = self->_connectionToService;
  if (connectionToService)
  {
    [(NSXPCConnection *)connectionToService invalidate];
    v4 = self->_connectionToService;
    self->_connectionToService = 0;
  }
}

uint64_t __39__WCAClient__establishDaemonConnection__block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    NSLog(&cfstr_SXpcConnection.isa, "[WCAClient _establishDaemonConnection]_block_invoke_2");
    v2 = *(v1 + 32);

    return [v2 _invalidateDaemonConnectionIfPossible];
  }

  return result;
}

void __39__WCAClient__establishDaemonConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__WCAClient__establishDaemonConnection__block_invoke_4;
    block[3] = &unk_2789C6630;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __39__WCAClient__establishDaemonConnection__block_invoke_4(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    NSLog(&cfstr_SXpcConnection_0.isa, "[WCAClient _establishDaemonConnection]_block_invoke_4");
    v2 = *(v1 + 32);

    return [v2 _invalidateDaemonConnectionIfPossible];
  }

  return result;
}

- (WCAClient)init
{
  v6.receiver = self;
  v6.super_class = WCAClient;
  v2 = [(WCAClient *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.wificloudassets.wcaclient", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)executeFetchRequest:(id)request
{
  requestCopy = request;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__WCAClient_executeFetchRequest___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

void __33__WCAClient_executeFetchRequest___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 16);
  [*(a1 + 32) _establishDaemonConnection];
  v2 = *(*(a1 + 32) + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __33__WCAClient_executeFetchRequest___block_invoke_2;
  v12[3] = &unk_2789C7A58;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v13 = v3;
  v14 = v4;
  v5 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__WCAClient_executeFetchRequest___block_invoke_4;
  v9[3] = &unk_2789C7A80;
  v7 = v6;
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  [v5 executeFetchRequest:v7 completionHandler:v9];
}

void __33__WCAClient_executeFetchRequest___block_invoke_2(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_Error_1.isa, a2);
  v3 = [*(a1 + 32) completionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) completionHandler];
    v4[2](v4, 0, 0);
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__WCAClient_executeFetchRequest___block_invoke_3;
  block[3] = &unk_2789C6630;
  block[4] = v5;
  dispatch_async(v6, block);
}

void __33__WCAClient_executeFetchRequest___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 24) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

void __33__WCAClient_executeFetchRequest___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) completionHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) completionHandler];
    (v5)[2](v5, v3, 0);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__WCAClient_executeFetchRequest___block_invoke_5;
  block[3] = &unk_2789C6630;
  block[4] = v6;
  dispatch_async(v7, block);
}

void __33__WCAClient_executeFetchRequest___block_invoke_5(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = dispatch_time(0, 5000000000);
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__WCAClient_executeFetchRequest___block_invoke_6;
  v6[3] = &unk_2789C7170;
  v6[4] = v4;
  v6[5] = v2;
  dispatch_after(v3, v5, v6);
}

void *__33__WCAClient_executeFetchRequest___block_invoke_6(uint64_t a1)
{
  v2 = a1 + 32;
  result = *(a1 + 32);
  if (*(v2 + 8) == result[2])
  {
    return [result _invalidateDaemonConnectionIfPossible];
  }

  return result;
}

- (void)fetchWiFiAssetsFromServer
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WCAClient_fetchWiFiAssetsFromServer__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__WCAClient_fetchWiFiAssetsFromServer__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 16);
  [*(a1 + 32) _establishDaemonConnection];
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxyWithErrorHandler:&__block_literal_global_9];
  [v2 fetchWiFiAssetsFromServer];
}

uint64_t __25__WCAClient_sharedClient__block_invoke()
{
  v0 = objc_alloc_init(WCAClient);
  v1 = sharedClient_wcaClient;
  sharedClient_wcaClient = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
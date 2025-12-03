@interface SKSyncXPCCaller
- (SKSyncXPCCaller)initWithHelperClient:(id)client;
- (id)syncRemoteObject;
- (void)queueWithCompletionBlock:(id)block;
- (void)wait;
@end

@implementation SKSyncXPCCaller

- (SKSyncXPCCaller)initWithHelperClient:(id)client
{
  clientCopy = client;
  v10.receiver = self;
  v10.super_class = SKSyncXPCCaller;
  v6 = [(SKSyncXPCCaller *)&v10 init];
  if (v6)
  {
    v7 = dispatch_group_create();
    group = v6->_group;
    v6->_group = v7;

    objc_storeStrong(&v6->_helperClient, client);
  }

  return v6;
}

- (id)syncRemoteObject
{
  helperClient = [(SKSyncXPCCaller *)self helperClient];
  hasDaemonAccess = [helperClient hasDaemonAccess];

  if (hasDaemonAccess)
  {
    group = [(SKSyncXPCCaller *)self group];
    dispatch_group_enter(group);

    helperClient2 = [(SKSyncXPCCaller *)self helperClient];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__SKSyncXPCCaller_syncRemoteObject__block_invoke;
    v9[3] = &unk_279D1F948;
    v9[4] = self;
    v7 = [helperClient2 remoteObjectProxyWithSync:1 errorHandler:v9];
  }

  else
  {
    helperClient2 = SKGetOSLog();
    if (os_log_type_enabled(helperClient2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BBB8000, helperClient2, OS_LOG_TYPE_DEFAULT, "Skipping sync command, no daemon access", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

void __35__SKSyncXPCCaller_syncRemoteObject__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SKSyncXPCCaller syncRemoteObject]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s: %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 32) group];
  dispatch_group_leave(v5);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)wait
{
  group = [(SKSyncXPCCaller *)self group];
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)queueWithCompletionBlock:(id)block
{
  blockCopy = block;
  helperClient = [(SKSyncXPCCaller *)self helperClient];
  xpcQueue = [helperClient xpcQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__SKSyncXPCCaller_queueWithCompletionBlock___block_invoke;
  v8[3] = &unk_279D1F678;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(xpcQueue, v8);
}

void __44__SKSyncXPCCaller_queueWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) group];
  dispatch_group_leave(v3);
}

@end
@interface WRMClientInterface
- (WRMClientInterface)init;
- (void)registerClient:(int)client queue:(id)queue notificationHandler:(id)handler;
- (void)unregisterClient;
- (void)unregisterClientWithNotificationBlockRelease;
@end

@implementation WRMClientInterface

- (WRMClientInterface)init
{
  v9.receiver = self;
  v9.super_class = WRMClientInterface;
  v2 = [(WRMClientInterface *)&v9 init];
  v3 = v2;
  if (v2)
  {
    mConnection = v2->mConnection;
    v2->mConnection = 0;

    mQueue = v3->mQueue;
    v3->mQueue = 0;

    v3->mProcessId = 0;
    mNotificationBlock = v3->mNotificationBlock;
    v3->mNotificationBlock = 0;

    v7 = v3;
  }

  return v3;
}

- (void)registerClient:(int)client queue:(id)queue notificationHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (queueCopy)
  {
    v10 = queueCopy;
    mQueue = self->mQueue;
    self->mQueue = v10;
  }

  else
  {
    v12 = MEMORY[0x277D85CD0];
    v13 = MEMORY[0x277D85CD0];
    mQueue = self->mQueue;
    self->mQueue = v12;
  }

  self->mProcessId = client;
  v14 = self->mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WRMClientInterface_registerClient_queue_notificationHandler___block_invoke;
  block[3] = &unk_279ED5E80;
  block[4] = self;
  v17 = handlerCopy;
  clientCopy = client;
  v15 = handlerCopy;
  dispatch_async(v14, block);
}

void __63__WRMClientInterface_registerClient_queue_notificationHandler___block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 8))
  {
    v2 = MEMORY[0x2743E9050](*(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", *(*(a1 + 32) + 24), 0);
    v6 = *(*(a1 + 32) + 8);
    *(*(a1 + 32) + 8) = mach_service;

    objc_initWeak(&location, *(a1 + 32));
    v7 = *(*(a1 + 32) + 8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__WRMClientInterface_registerClient_queue_notificationHandler___block_invoke_2;
    v15[3] = &unk_279ED6110;
    objc_copyWeak(&v16, &location);
    xpc_connection_set_event_handler(v7, v15);
    xpc_connection_resume(*(*(a1 + 32) + 8));
    keys[0] = "kWCMRegisterProcess_ProcessId";
    v8 = xpc_uint64_create(*(a1 + 48));
    values = v8;
    v9 = xpc_dictionary_create(keys, &values, 1uLL);
    *v19 = xmmword_279ED6130;
    v10 = xpc_uint64_create(1uLL);
    v18[0] = v10;
    v11 = v9;
    v18[1] = v11;
    v12 = xpc_dictionary_create(v19, v18, 2uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v12);

    for (i = 1; i != -1; --i)
    {
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __63__WRMClientInterface_registerClient_queue_notificationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_7;
  }

  v4 = MEMORY[0x2743E9320](v7);
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = *(WeakRetained[4] + 16);
LABEL_6:
    v6();
    goto LABEL_7;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v5 = MEMORY[0x2743E9250](v7);
    free(v5);
    goto LABEL_7;
  }

  NSLog(&cfstr_Wrmclientinter.isa);
  if (v7 == MEMORY[0x277D863F0])
  {
    NSLog(&cfstr_Wrmclientinter_0.isa);
    v6 = *(WeakRetained[4] + 16);
    goto LABEL_6;
  }

  if (v7 == MEMORY[0x277D863F8])
  {
    NSLog(&cfstr_Wrmclientinter_1.isa);
  }

LABEL_7:
}

- (void)unregisterClient
{
  mQueue = self->mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WRMClientInterface_unregisterClient__block_invoke;
  block[3] = &unk_279ED5D68;
  block[4] = self;
  dispatch_async(mQueue, block);
}

void __38__WRMClientInterface_unregisterClient__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = 0;

    v1 = *(a1 + 32);
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    *(v1 + 32) = 0;
  }
}

- (void)unregisterClientWithNotificationBlockRelease
{
  mQueue = self->mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WRMClientInterface_unregisterClientWithNotificationBlockRelease__block_invoke;
  block[3] = &unk_279ED5D68;
  block[4] = self;
  dispatch_async(mQueue, block);
}

void __66__WRMClientInterface_unregisterClientWithNotificationBlockRelease__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = 0;

    v1 = *(a1 + 32);
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    *(v1 + 32) = 0;
  }
}

@end
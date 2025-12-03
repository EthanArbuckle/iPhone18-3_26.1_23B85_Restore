@interface RERemoteTrainingClientListener
+ (id)sharedTrainingClientListener;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RERemoteTrainingClientListener)init;
- (RERemoteTrainingClientListenerDelegate)delegate;
- (void)dealloc;
@end

@implementation RERemoteTrainingClientListener

+ (id)sharedTrainingClientListener
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RERemoteTrainingClientListener_sharedTrainingClientListener__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedTrainingClientListener_onceToken != -1)
  {
    dispatch_once(&sharedTrainingClientListener_onceToken, block);
  }

  v2 = sharedTrainingClientListener_listener;

  return v2;
}

uint64_t __62__RERemoteTrainingClientListener_sharedTrainingClientListener__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedTrainingClientListener_listener;
  sharedTrainingClientListener_listener = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (RERemoteTrainingClientListener)init
{
  v15.receiver = self;
  v15.super_class = RERemoteTrainingClientListener;
  v2 = [(RERemoteTrainingClientListener *)&v15 init];
  if (v2)
  {
    v3 = RECreateSharedQueueWithQOS(@"RERemoteTrainingClientListener", QOS_CLASS_UTILITY);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clients = v2->_clients;
    v2->_clients = v5;

    v7 = RELogForDomain(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_22859F000, v7, OS_LOG_TYPE_INFO, "Starting remote training listener", v14, 2u);
    }

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v10 = RERemoteTrainingMachServiceForProcessName(processName);

    v11 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v10];
    listener = v2->_listener;
    v2->_listener = v11;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  [(NSXPCListener *)self->_listener setDelegate:0];
  listener = self->_listener;
  self->_listener = 0;

  v4.receiver = self;
  v4.super_class = RERemoteTrainingClientListener;
  [(RERemoteTrainingClientListener *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RERemoteTrainingClientListener_listener_shouldAcceptNewConnection___block_invoke;
  block[3] = &unk_2785FB070;
  v13 = listenerCopy;
  v14 = connectionCopy;
  selfCopy = self;
  v9 = connectionCopy;
  v10 = listenerCopy;
  dispatch_async(queue, block);

  return 1;
}

void __69__RERemoteTrainingClientListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = RELogForDomain(17);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) description];
    *buf = 136315138;
    v9 = [v3 UTF8String];
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_INFO, "New connection: %s", buf, 0xCu);
  }

  v4 = [[_RELocalTrainingContext alloc] initWithConnection:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__RERemoteTrainingClientListener_listener_shouldAcceptNewConnection___block_invoke_7;
  v7[3] = &unk_2785FB048;
  v7[4] = *(a1 + 48);
  [(_RELocalTrainingContext *)v4 setInvalidationHandler:v7];
  [*(*(a1 + 48) + 8) addObject:v4];
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 32));
  [WeakRetained remoteTrainingClientListenerDidConnectContext:v4];

  v6 = *MEMORY[0x277D85DE8];
}

void __69__RERemoteTrainingClientListener_listener_shouldAcceptNewConnection___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__RERemoteTrainingClientListener_listener_shouldAcceptNewConnection___block_invoke_2;
  v7[3] = &unk_2785F9AE0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __69__RERemoteTrainingClientListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained remoteTrainingClientListenerDidDisconnectContext:*(a1 + 40)];
}

- (RERemoteTrainingClientListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
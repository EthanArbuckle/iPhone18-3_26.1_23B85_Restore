@interface REUpNextSiriServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (REUpNextSiriServer)init;
- (void)_accessObservers:(id)a3;
- (void)_accessRemoteClients:(id)a3;
- (void)_removeConnection:(id)a3;
- (void)addObserver:(id)a3;
- (void)completedRequestWithDomain:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation REUpNextSiriServer

- (REUpNextSiriServer)init
{
  v12.receiver = self;
  v12.super_class = REUpNextSiriServer;
  v2 = [(REUpNextSiriServer *)&v12 init];
  if (v2)
  {
    v3 = RECreateSharedQueueWithQOS(@"upnext.siriserver", QOS_CLASS_UTILITY);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    connections = v2->_connections;
    v2->_connections = v7;

    v9 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.NanoTimeKit.Siri"];
    listener = v2->_listener;
    v2->_listener = v9;

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
  v4.super_class = REUpNextSiriServer;
  [(REUpNextSiriServer *)&v4 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__REUpNextSiriServer_addObserver___block_invoke;
  v6[3] = &unk_2785F9AE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(REUpNextSiriServer *)self _onqueue_async:v6];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__REUpNextSiriServer_removeObserver___block_invoke;
  v6[3] = &unk_2785F9AE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(REUpNextSiriServer *)self _onqueue_async:v6];
}

- (void)completedRequestWithDomain:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__REUpNextSiriServer_completedRequestWithDomain___block_invoke;
  v6[3] = &unk_2785FA758;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(REUpNextSiriServer *)self _accessObservers:v6];
}

- (void)_accessObservers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__REUpNextSiriServer__accessObservers___block_invoke;
  v6[3] = &unk_2785F9A40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(REUpNextSiriServer *)self _onqueue_async:v6];
}

void __39__REUpNextSiriServer__accessObservers___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = REUpNextSiriClientInterface();
  [v7 setRemoteObjectInterface:v8];

  v9 = REUpNextSiriServerInterface();
  [v7 setExportedInterface:v9];

  [v7 setExportedObject:self];
  objc_initWeak(&location, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__REUpNextSiriServer_listener_shouldAcceptNewConnection___block_invoke;
  v14[3] = &unk_2785FA2E0;
  v14[4] = self;
  objc_copyWeak(&v15, &location);
  [v7 setInvalidationHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__REUpNextSiriServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v12[3] = &unk_2785F9AE0;
  v12[4] = self;
  v10 = v7;
  v13 = v10;
  [(REUpNextSiriServer *)self _onqueue_async:v12];
  [v10 resume];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return 1;
}

void __57__REUpNextSiriServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 _removeConnection:WeakRetained];
}

- (void)_removeConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__REUpNextSiriServer__removeConnection___block_invoke;
    v6[3] = &unk_2785F9AE0;
    v6[4] = self;
    v7 = v4;
    [(REUpNextSiriServer *)self _onqueue_async:v6];
  }
}

- (void)_accessRemoteClients:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__REUpNextSiriServer__accessRemoteClients___block_invoke;
  v6[3] = &unk_2785F9A40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(REUpNextSiriServer *)self _onqueue_async:v6];
}

void __43__REUpNextSiriServer__accessRemoteClients___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) remoteObjectProxyWithErrorHandler:{&__block_literal_global_11, v10}];
        (*(v7 + 16))(v7, v8);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __43__REUpNextSiriServer__accessRemoteClients___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = RELogForDomain(9);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __43__REUpNextSiriServer__accessRemoteClients___block_invoke_2_cold_1(v2, v3);
  }
}

void __43__REUpNextSiriServer__accessRemoteClients___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "XPC Siri Server connection error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
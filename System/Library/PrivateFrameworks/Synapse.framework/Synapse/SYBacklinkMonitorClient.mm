@interface SYBacklinkMonitorClient
- (SYBacklinkMonitorClient)init;
- (void)_configureConnectionAndResume;
- (void)_createConnectionIfNeeded;
- (void)_invalidateConnection;
- (void)_processNotifyActiveUserActivityDidChange:(id)a3 context:(id)a4 serviceProxy:(id)a5 completion:(id)a6;
- (void)createConnectionWithEndpoint:(id)a3;
- (void)dealloc;
- (void)notifyActiveUserActivityDidChange:(id)a3 context:(id)a4 completion:(id)a5;
- (void)updateWithFilterCache:(id)a3;
@end

@implementation SYBacklinkMonitorClient

- (SYBacklinkMonitorClient)init
{
  v9.receiver = self;
  v9.super_class = SYBacklinkMonitorClient;
  v2 = [(SYBacklinkMonitorClient *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    pendingCompletionBlocks = v2->__pendingCompletionBlocks;
    v2->__pendingCompletionBlocks = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.synapse.UserActivityServiceClient", v5);
    clientQueue = v2->__clientQueue;
    v2->__clientQueue = v6;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(SYBacklinkMonitorClient *)self _connection];
  [v3 invalidate];

  [(SYBacklinkMonitorClient *)self set_connection:0];
  v4.receiver = self;
  v4.super_class = SYBacklinkMonitorClient;
  [(SYBacklinkMonitorClient *)&v4 dealloc];
}

- (void)notifyActiveUserActivityDidChange:(id)a3 context:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 needsCacheUpdate])
  {
    [(SYBacklinkMonitorClient *)self set_filterCache:0];
    v11 = 0;
    goto LABEL_6;
  }

  v12 = [(SYBacklinkMonitorClient *)self _filterCache];

  if (!v12)
  {
LABEL_7:
    v14 = [(SYBacklinkMonitorClient *)self _clientQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke;
    v17[3] = &unk_27856C3F0;
    v17[4] = self;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    dispatch_async(v14, v17);

    goto LABEL_8;
  }

  v13 = [(SYBacklinkMonitorClient *)self _filterCache];
  v11 = [v13 containsMatchingEntriesForItem:v8];

  if ([(SYBacklinkMonitorClient *)self _previousFilterCacheMatched]|| v11 != [(SYBacklinkMonitorClient *)self _previousFilterCacheMatched])
  {
LABEL_6:
    [(SYBacklinkMonitorClient *)self set_previousFilterCacheMatched:v11];
    goto LABEL_7;
  }

  v16 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v22 = v8;
    _os_log_impl(&dword_225901000, v16, OS_LOG_TYPE_INFO, "BacklinkClient: Changed activity was filtered out: %p.", buf, 0xCu);
  }

  if (v10)
  {
    (*(v10 + 2))(v10, 1, 0);
  }

LABEL_8:

  v15 = *MEMORY[0x277D85DE8];
}

void __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createConnectionIfNeeded];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  v2 = [*(a1 + 32) _connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke_5;
  v5[3] = &unk_27856B808;
  v5[4] = &v6;
  v3 = [v2 remoteObjectProxyWithErrorHandler:v5];

  if (v3)
  {
    [*(a1 + 32) _processNotifyActiveUserActivityDidChange:*(a1 + 40) context:*(a1 + 48) serviceProxy:v3 completion:*(a1 + 56)];
  }

  else
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, v7[5]);
    }
  }

  _Block_object_dispose(&v6, 8);
}

void __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke_5_cold_1(v4, v5);
  }
}

- (void)updateWithFilterCache:(id)a3
{
  [(SYBacklinkMonitorClient *)self set_filterCache:a3];

  [(SYBacklinkMonitorClient *)self set_previousFilterCacheMatched:0];
}

- (void)_processNotifyActiveUserActivityDidChange:(id)a3 context:(id)a4 serviceProxy:(id)a5 completion:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 copy];
    v16 = [(SYBacklinkMonitorClient *)self _pendingCompletionBlocks];
    v17 = MEMORY[0x22AA6A360](v15);
    [v16 addObject:v17];
  }

  else
  {
    v15 = 0;
  }

  v18 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = v10;
    _os_log_impl(&dword_225901000, v18, OS_LOG_TYPE_DEFAULT, "BacklinkClient: Sending request to service for activity info: %p.", buf, 0xCu);
  }

  if ([v11 needsCacheUpdate])
  {
    [v11 setNeedsCacheUpdate:1];
  }

  else
  {
    v19 = [(SYBacklinkMonitorClient *)self _filterCache];
    [v11 setNeedsCacheUpdate:v19 == 0];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __101__SYBacklinkMonitorClient__processNotifyActiveUserActivityDidChange_context_serviceProxy_completion___block_invoke;
  v23[3] = &unk_27856BEA0;
  v24 = v10;
  v25 = v15;
  v23[4] = self;
  v20 = v10;
  v21 = v15;
  [v12 activeUserActivityDidChange:v20 context:v11 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __101__SYBacklinkMonitorClient__processNotifyActiveUserActivityDidChange_context_serviceProxy_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SYBacklinkMonitorClient__processNotifyActiveUserActivityDidChange_context_serviceProxy_completion___block_invoke_2;
  block[3] = &unk_27856BAB8;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  block[4] = v4;
  v7 = v5;
  dispatch_async(v2, block);
}

void __101__SYBacklinkMonitorClient__processNotifyActiveUserActivityDidChange_context_serviceProxy_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) _pendingCompletionBlocks];
    v3 = MEMORY[0x22AA6A360](*(a1 + 48));
    v4 = [v2 containsObject:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"N";
    v7 = *(a1 + 40);
    if (v4)
    {
      v6 = @"Y";
    }

    v11 = 134218242;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "BacklinkClient: Service request did finish for activity info %p. Call completion: %@.", &v11, 0x16u);
  }

  if (v4)
  {
    v8 = [*(a1 + 32) _pendingCompletionBlocks];
    v9 = MEMORY[0x22AA6A360](*(a1 + 48));
    [v8 removeObject:v9];

    (*(*(a1 + 48) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_createConnectionIfNeeded
{
  v3 = [(SYBacklinkMonitorClient *)self _connection];

  if (!v3)
  {
    v4 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "BacklinkClient: Setting up connection.", v8, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.synapse.backlink-service" options:0];
    [(SYBacklinkMonitorClient *)self set_connection:v5];

    v6 = [(SYBacklinkMonitorClient *)self _connection];
    v7 = [(SYBacklinkMonitorClient *)self _clientQueue];
    [v6 _setQueue:v7];

    [(SYBacklinkMonitorClient *)self _configureConnectionAndResume];
  }
}

- (void)_configureConnectionAndResume
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYBacklinkMonitorClient.m" lineNumber:151 description:@"the XPC connection is unexpectedly nil"];
}

void __56__SYBacklinkMonitorClient__configureConnectionAndResume__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "BacklinkClient: Connection was invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

void __56__SYBacklinkMonitorClient__configureConnectionAndResume__block_invoke_23(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "BacklinkClient: Connection was interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

- (void)_invalidateConnection
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 _pendingCompletionBlocks];
  v5 = 134217984;
  v6 = [v3 count];
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "BacklinkClient: Invalidating connection. Pending completion blocks: %ld", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)createConnectionWithEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(SYBacklinkMonitorClient *)self _clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SYBacklinkMonitorClient_createConnectionWithEndpoint___block_invoke;
  v7[3] = &unk_27856B5C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __56__SYBacklinkMonitorClient_createConnectionWithEndpoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  [v2 invalidate];

  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:*(a1 + 40)];
  [*(a1 + 32) set_connection:v3];

  v4 = [*(a1 + 32) _connection];
  v5 = [*(a1 + 32) _clientQueue];
  [v4 _setQueue:v5];

  v6 = *(a1 + 32);

  return [v6 _configureConnectionAndResume];
}

void __80__SYBacklinkMonitorClient_notifyActiveUserActivityDidChange_context_completion___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "BacklinkClient: Error creating remote service proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
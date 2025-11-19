@interface SYBacklinkMonitorService
- (BOOL)hasKeepAliveTransaction;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SYBacklinkMonitorServiceTestingDelegate)testingDelegate;
- (id)_listenerEndpoint;
- (id)initForTesting:(BOOL)a3;
- (void)_createAndScheduleOperationForHandle:(id)a3 withUserActivity:(id)a4 context:(id)a5;
- (void)_evaluateAndBeginPendingOperations;
- (void)_notesActivationDidChange:(BOOL)a3;
- (void)_updateKeepAliveTransaction;
- (void)backlinkMonitorOperation:(id)a3 shouldUpdateFilterCache:(id)a4;
- (void)backlinkMonitorOperationDidFinish:(id)a3;
- (void)beginListeningToConnections;
- (void)dealloc;
- (void)handleDidDisconnect:(id)a3;
- (void)scheduleOperationForHandle:(id)a3 withUserActivity:(id)a4 context:(id)a5;
@end

@implementation SYBacklinkMonitorService

- (void)beginListeningToConnections
{
  v3 = [(SYBacklinkMonitorService *)self _listener];

  if (!v3)
  {
    v4 = [(SYBacklinkMonitorService *)self _forTesting];
    v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "BacklinkService: Starting Backlink Monitor Service with anonymous listener for testing", buf, 2u);
      }

      v7 = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      if (v6)
      {
        *v13 = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "BacklinkService: Starting Backlink Monitor Service", v13, 2u);
      }

      v7 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.synapse.backlink-service"];
    }

    v8 = v7;
    [(SYBacklinkMonitorService *)self set_listener:v7];

    v9 = [(SYBacklinkMonitorService *)self _listener];
    v10 = [(SYBacklinkMonitorService *)self _serviceQueue];
    [v9 _setQueue:v10];

    v11 = [(SYBacklinkMonitorService *)self _listener];
    [v11 setDelegate:self];

    v12 = [(SYBacklinkMonitorService *)self _listener];
    [v12 resume];
  }
}

- (id)initForTesting:(BOOL)a3
{
  v19.receiver = self;
  v19.super_class = SYBacklinkMonitorService;
  v4 = [(SYBacklinkMonitorService *)&v19 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.synapse.UserActivityService", v5);
    serviceQueue = v4->__serviceQueue;
    v4->__serviceQueue = v6;

    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    handles = v4->__handles;
    v4->__handles = v8;

    v10 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:3];
    pendingOperations = v4->__pendingOperations;
    v4->__pendingOperations = v10;

    objc_initWeak(&location, v4);
    v12 = [SYNotesActivationObserver alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__SYBacklinkMonitorService_initForTesting___block_invoke;
    v16[3] = &unk_27856BA48;
    objc_copyWeak(&v17, &location);
    v13 = [(SYNotesActivationObserver *)v12 initWithHandler:v16];
    notesObserver = v4->__notesObserver;
    v4->__notesObserver = v13;

    v4->__forTesting = a3;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __43__SYBacklinkMonitorService_initForTesting___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notesActivationDidChange:a2];
}

- (void)dealloc
{
  v3 = [(SYBacklinkMonitorService *)self _listener];
  [v3 setDelegate:0];

  v4 = [(SYBacklinkMonitorService *)self _listener];
  [v4 invalidate];

  [(SYBacklinkMonitorService *)self set_listener:0];
  v5.receiver = self;
  v5.super_class = SYBacklinkMonitorService;
  [(SYBacklinkMonitorService *)&v5 dealloc];
}

- (void)_notesActivationDidChange:(BOOL)a3
{
  if (a3)
  {
    [(NSMutableOrderedSet *)self->__pendingOperations removeAllObjects];
    handles = self->__handles;

    [(NSMutableDictionary *)handles enumerateKeysAndObjectsUsingBlock:&__block_literal_global_5];
  }
}

- (void)_createAndScheduleOperationForHandle:(id)a3 withUserActivity:(id)a4 context:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SYBacklinkMonitorService *)self _pendingOperations];
  v12 = [v11 count];

  if (v12)
  {
    v13 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(SYBacklinkMonitorService *)self _pendingOperations];
      v15 = [v14 firstObject];
      v26 = 134218240;
      v27 = v15;
      v28 = 2048;
      v29 = v9;
      _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_INFO, "BacklinkService: cancelling pending operation %p for user activity info %p.", &v26, 0x16u);
    }

    v16 = [(SYBacklinkMonitorService *)self _pendingOperations];
    [v16 removeAllObjects];
  }

  v17 = [(SYBacklinkMonitorService *)self _pendingOperations];
  v18 = [SYBacklinkMonitorOperation alloc];
  v19 = [(SYBacklinkMonitorService *)self _serviceQueue];
  v20 = -[SYBacklinkMonitorOperation initWithDelegate:processingQueue:inputUserActivityInfo:processIdentifier:](v18, "initWithDelegate:processingQueue:inputUserActivityInfo:processIdentifier:", self, v19, v9, [v8 processIdentifier]);
  [v17 addObject:v20];

  LODWORD(v17) = [v10 needsCacheUpdate];
  if (v17 && ![(SYBacklinkMonitorService *)self _forTesting])
  {
    v21 = [(SYBacklinkMonitorService *)self _pendingOperations];
    v22 = [SYBacklinkMonitorFilterCacheOperation alloc];
    v23 = [(SYBacklinkMonitorService *)self _serviceQueue];
    v24 = -[SYBacklinkMonitorOperation initWithDelegate:processingQueue:inputUserActivityInfo:processIdentifier:](v22, "initWithDelegate:processingQueue:inputUserActivityInfo:processIdentifier:", self, v23, v9, [v8 processIdentifier]);
    [v21 addObject:v24];
  }

  [(SYBacklinkMonitorService *)self _updateKeepAliveTransaction];
  [(SYBacklinkMonitorService *)self _evaluateAndBeginPendingOperations];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateAndBeginPendingOperations
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYBacklinkMonitorService.m" lineNumber:139 description:@"No pending operation to make active"];
}

- (void)_updateKeepAliveTransaction
{
  v3 = [(SYBacklinkMonitorService *)self _pendingOperations];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SYBacklinkMonitorService *)self _activeOperation];
    v4 = v5 != 0;
  }

  v6 = [(SYBacklinkMonitorService *)self _keepAliveTransaction];

  if (!v4 || v6)
  {
    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {

      [(SYBacklinkMonitorService *)self set_keepAliveTransaction:0];
    }
  }

  else
  {
    v8 = os_transaction_create();
    [(SYBacklinkMonitorService *)self set_keepAliveTransaction:v8];
  }
}

- (void)backlinkMonitorOperationDidFinish:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SYBacklinkMonitorService *)self _activeOperation];

  if (v5 == v4)
  {
    v6 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 inputUserActivityInfo];
      v12 = 134218240;
      v13 = v4;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "BacklinkService: operation finished %p for activity info %p.", &v12, 0x16u);
    }

    v8 = [v4 type];
    v9 = v4;
    if (v8 != 1)
    {
      if ([v4 type] != 2)
      {
LABEL_8:
        [(SYBacklinkMonitorService *)self set_activeOperation:0];
        [(SYBacklinkMonitorService *)self _updateKeepAliveTransaction];
        v10 = [(SYBacklinkMonitorService *)self testingDelegate];
        [v10 backlinkMonitorService:self didFinishOperation:v4];

        [(SYBacklinkMonitorService *)self _evaluateAndBeginPendingOperations];
        goto LABEL_9;
      }

      v9 = 0;
    }

    [(SYBacklinkMonitorService *)self set_longerLivedOperation:v9];
    goto LABEL_8;
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)backlinkMonitorOperation:(id)a3 shouldUpdateFilterCache:(id)a4
{
  handles = self->__handles;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInt:{objc_msgSend(a3, "processIdentifier")}];
  v9 = [(NSMutableDictionary *)handles objectForKey:v8];

  [v9 setFilterCache:v7];
}

- (void)scheduleOperationForHandle:(id)a3 withUserActivity:(id)a4 context:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    v15 = v8;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_INFO, "BacklinkService: Received request to process activity change. Activity info: %p.", &v14, 0xCu);
  }

  [(SYBacklinkMonitorService *)self _createAndScheduleOperationForHandle:v10 withUserActivity:v8 context:v9];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SYRemoteCurrentActivityDidChange", 0, 0, 1u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleDidDisconnect:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = v4;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_INFO, "BacklinkService: Received handle disconnect: %p.", &v9, 0xCu);
  }

  v6 = [(SYBacklinkMonitorService *)self _handles];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
  [v6 removeObjectForKey:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SYBacklinkMonitorService listener:a2 shouldAcceptNewConnection:self];
  }

  v9 = [(SYBacklinkMonitorService *)self _listener];

  if (v9 == v7)
  {
    v10 = [(SYBacklinkMonitorService *)self _serviceQueue];
    v11 = [SYBacklinkMonitorServiceHandle handleWithConnection:v8 queue:v10];

    [v11 setDelegate:self];
    handles = self->__handles;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "processIdentifier")}];
    [(NSMutableDictionary *)handles setObject:v11 forKey:v13];

    [v8 resume];
  }

  v14 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v8 processIdentifier];
    v16 = @"No";
    if (v9 == v7)
    {
      v16 = @"Yes";
    }

    v19 = 134218242;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_INFO, "BacklinkService: Listener should accept connection from pid %ld: %@", &v19, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9 == v7;
}

- (id)_listenerEndpoint
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(SYBacklinkMonitorService *)self _serviceQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SYBacklinkMonitorService__listenerEndpoint__block_invoke;
  v6[3] = &unk_27856B858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__SYBacklinkMonitorService__listenerEndpoint__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _listener];
  v2 = [v5 endpoint];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasKeepAliveTransaction
{
  v2 = [(SYBacklinkMonitorService *)self _keepAliveTransaction];
  v3 = v2 != 0;

  return v3;
}

- (SYBacklinkMonitorServiceTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYBacklinkMonitorService.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"newConnection"}];
}

@end
@interface SYBacklinkMonitorService
- (BOOL)hasKeepAliveTransaction;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SYBacklinkMonitorServiceTestingDelegate)testingDelegate;
- (id)_listenerEndpoint;
- (id)initForTesting:(BOOL)testing;
- (void)_createAndScheduleOperationForHandle:(id)handle withUserActivity:(id)activity context:(id)context;
- (void)_evaluateAndBeginPendingOperations;
- (void)_notesActivationDidChange:(BOOL)change;
- (void)_updateKeepAliveTransaction;
- (void)backlinkMonitorOperation:(id)operation shouldUpdateFilterCache:(id)cache;
- (void)backlinkMonitorOperationDidFinish:(id)finish;
- (void)beginListeningToConnections;
- (void)dealloc;
- (void)handleDidDisconnect:(id)disconnect;
- (void)scheduleOperationForHandle:(id)handle withUserActivity:(id)activity context:(id)context;
@end

@implementation SYBacklinkMonitorService

- (void)beginListeningToConnections
{
  _listener = [(SYBacklinkMonitorService *)self _listener];

  if (!_listener)
  {
    _forTesting = [(SYBacklinkMonitorService *)self _forTesting];
    v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (_forTesting)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "BacklinkService: Starting Backlink Monitor Service with anonymous listener for testing", buf, 2u);
      }

      anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    }

    else
    {
      if (v6)
      {
        *v13 = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "BacklinkService: Starting Backlink Monitor Service", v13, 2u);
      }

      anonymousListener = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.synapse.backlink-service"];
    }

    v8 = anonymousListener;
    [(SYBacklinkMonitorService *)self set_listener:anonymousListener];

    _listener2 = [(SYBacklinkMonitorService *)self _listener];
    _serviceQueue = [(SYBacklinkMonitorService *)self _serviceQueue];
    [_listener2 _setQueue:_serviceQueue];

    _listener3 = [(SYBacklinkMonitorService *)self _listener];
    [_listener3 setDelegate:self];

    _listener4 = [(SYBacklinkMonitorService *)self _listener];
    [_listener4 resume];
  }
}

- (id)initForTesting:(BOOL)testing
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

    v4->__forTesting = testing;
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
  _listener = [(SYBacklinkMonitorService *)self _listener];
  [_listener setDelegate:0];

  _listener2 = [(SYBacklinkMonitorService *)self _listener];
  [_listener2 invalidate];

  [(SYBacklinkMonitorService *)self set_listener:0];
  v5.receiver = self;
  v5.super_class = SYBacklinkMonitorService;
  [(SYBacklinkMonitorService *)&v5 dealloc];
}

- (void)_notesActivationDidChange:(BOOL)change
{
  if (change)
  {
    [(NSMutableOrderedSet *)self->__pendingOperations removeAllObjects];
    handles = self->__handles;

    [(NSMutableDictionary *)handles enumerateKeysAndObjectsUsingBlock:&__block_literal_global_5];
  }
}

- (void)_createAndScheduleOperationForHandle:(id)handle withUserActivity:(id)activity context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  activityCopy = activity;
  contextCopy = context;
  _pendingOperations = [(SYBacklinkMonitorService *)self _pendingOperations];
  v12 = [_pendingOperations count];

  if (v12)
  {
    v13 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      _pendingOperations2 = [(SYBacklinkMonitorService *)self _pendingOperations];
      firstObject = [_pendingOperations2 firstObject];
      v26 = 134218240;
      v27 = firstObject;
      v28 = 2048;
      v29 = activityCopy;
      _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_INFO, "BacklinkService: cancelling pending operation %p for user activity info %p.", &v26, 0x16u);
    }

    _pendingOperations3 = [(SYBacklinkMonitorService *)self _pendingOperations];
    [_pendingOperations3 removeAllObjects];
  }

  _pendingOperations4 = [(SYBacklinkMonitorService *)self _pendingOperations];
  v18 = [SYBacklinkMonitorOperation alloc];
  _serviceQueue = [(SYBacklinkMonitorService *)self _serviceQueue];
  v20 = -[SYBacklinkMonitorOperation initWithDelegate:processingQueue:inputUserActivityInfo:processIdentifier:](v18, "initWithDelegate:processingQueue:inputUserActivityInfo:processIdentifier:", self, _serviceQueue, activityCopy, [handleCopy processIdentifier]);
  [_pendingOperations4 addObject:v20];

  LODWORD(_pendingOperations4) = [contextCopy needsCacheUpdate];
  if (_pendingOperations4 && ![(SYBacklinkMonitorService *)self _forTesting])
  {
    _pendingOperations5 = [(SYBacklinkMonitorService *)self _pendingOperations];
    v22 = [SYBacklinkMonitorFilterCacheOperation alloc];
    _serviceQueue2 = [(SYBacklinkMonitorService *)self _serviceQueue];
    v24 = -[SYBacklinkMonitorOperation initWithDelegate:processingQueue:inputUserActivityInfo:processIdentifier:](v22, "initWithDelegate:processingQueue:inputUserActivityInfo:processIdentifier:", self, _serviceQueue2, activityCopy, [handleCopy processIdentifier]);
    [_pendingOperations5 addObject:v24];
  }

  [(SYBacklinkMonitorService *)self _updateKeepAliveTransaction];
  [(SYBacklinkMonitorService *)self _evaluateAndBeginPendingOperations];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateAndBeginPendingOperations
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SYBacklinkMonitorService.m" lineNumber:139 description:@"No pending operation to make active"];
}

- (void)_updateKeepAliveTransaction
{
  _pendingOperations = [(SYBacklinkMonitorService *)self _pendingOperations];
  if ([_pendingOperations count])
  {
    v4 = 1;
  }

  else
  {
    _activeOperation = [(SYBacklinkMonitorService *)self _activeOperation];
    v4 = _activeOperation != 0;
  }

  _keepAliveTransaction = [(SYBacklinkMonitorService *)self _keepAliveTransaction];

  if (!v4 || _keepAliveTransaction)
  {
    if (_keepAliveTransaction)
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

- (void)backlinkMonitorOperationDidFinish:(id)finish
{
  v16 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  _activeOperation = [(SYBacklinkMonitorService *)self _activeOperation];

  if (_activeOperation == finishCopy)
  {
    v6 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      inputUserActivityInfo = [finishCopy inputUserActivityInfo];
      v12 = 134218240;
      v13 = finishCopy;
      v14 = 2048;
      v15 = inputUserActivityInfo;
      _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "BacklinkService: operation finished %p for activity info %p.", &v12, 0x16u);
    }

    type = [finishCopy type];
    v9 = finishCopy;
    if (type != 1)
    {
      if ([finishCopy type] != 2)
      {
LABEL_8:
        [(SYBacklinkMonitorService *)self set_activeOperation:0];
        [(SYBacklinkMonitorService *)self _updateKeepAliveTransaction];
        testingDelegate = [(SYBacklinkMonitorService *)self testingDelegate];
        [testingDelegate backlinkMonitorService:self didFinishOperation:finishCopy];

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

- (void)backlinkMonitorOperation:(id)operation shouldUpdateFilterCache:(id)cache
{
  handles = self->__handles;
  v6 = MEMORY[0x277CCABB0];
  cacheCopy = cache;
  v8 = [v6 numberWithInt:{objc_msgSend(operation, "processIdentifier")}];
  v9 = [(NSMutableDictionary *)handles objectForKey:v8];

  [v9 setFilterCache:cacheCopy];
}

- (void)scheduleOperationForHandle:(id)handle withUserActivity:(id)activity context:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  contextCopy = context;
  handleCopy = handle;
  v11 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    v15 = activityCopy;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_INFO, "BacklinkService: Received request to process activity change. Activity info: %p.", &v14, 0xCu);
  }

  [(SYBacklinkMonitorService *)self _createAndScheduleOperationForHandle:handleCopy withUserActivity:activityCopy context:contextCopy];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SYRemoteCurrentActivityDidChange", 0, 0, 1u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleDidDisconnect:(id)disconnect
{
  v11 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = disconnectCopy;
    _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_INFO, "BacklinkService: Received handle disconnect: %p.", &v9, 0xCu);
  }

  _handles = [(SYBacklinkMonitorService *)self _handles];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(disconnectCopy, "processIdentifier")}];
  [_handles removeObjectForKey:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (!connectionCopy)
  {
    [SYBacklinkMonitorService listener:a2 shouldAcceptNewConnection:self];
  }

  _listener = [(SYBacklinkMonitorService *)self _listener];

  if (_listener == listenerCopy)
  {
    _serviceQueue = [(SYBacklinkMonitorService *)self _serviceQueue];
    v11 = [SYBacklinkMonitorServiceHandle handleWithConnection:connectionCopy queue:_serviceQueue];

    [v11 setDelegate:self];
    handles = self->__handles;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "processIdentifier")}];
    [(NSMutableDictionary *)handles setObject:v11 forKey:v13];

    [connectionCopy resume];
  }

  v14 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    processIdentifier = [connectionCopy processIdentifier];
    v16 = @"No";
    if (_listener == listenerCopy)
    {
      v16 = @"Yes";
    }

    v19 = 134218242;
    v20 = processIdentifier;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_INFO, "BacklinkService: Listener should accept connection from pid %ld: %@", &v19, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return _listener == listenerCopy;
}

- (id)_listenerEndpoint
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  _serviceQueue = [(SYBacklinkMonitorService *)self _serviceQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SYBacklinkMonitorService__listenerEndpoint__block_invoke;
  v6[3] = &unk_27856B858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(_serviceQueue, v6);

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
  _keepAliveTransaction = [(SYBacklinkMonitorService *)self _keepAliveTransaction];
  v3 = _keepAliveTransaction != 0;

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
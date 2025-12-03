@interface SYBacklinkMonitorServiceHandle
+ (id)handleWithConnection:(id)connection queue:(id)queue;
- (SYBacklinkMonitorServiceHandle)initWithConnection:(id)connection queue:(id)queue;
- (SYBacklinkMonitorServiceHandleDelegate)delegate;
- (int64_t)_indicatorCoverage;
- (void)_killConnectionWithCallback;
- (void)activeUserActivityDidChange:(id)change context:(id)context completion:(id)completion;
- (void)dealloc;
- (void)indicatorCoverageWithCompletion:(id)completion;
- (void)setFilterCache:(id)cache;
- (void)setIndicatorCoverage:(id)coverage;
@end

@implementation SYBacklinkMonitorServiceHandle

- (int64_t)_indicatorCoverage
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Synapse"];
  v3 = [v2 objectForKey:@"indicatorCoverage"];

  if (v3)
  {
    v4 = [v2 integerForKey:@"indicatorCoverage"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)handleWithConnection:(id)connection queue:(id)queue
{
  queueCopy = queue;
  connectionCopy = connection;
  v8 = [[self alloc] initWithConnection:connectionCopy queue:queueCopy];

  return v8;
}

- (SYBacklinkMonitorServiceHandle)initWithConnection:(id)connection queue:(id)queue
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = SYBacklinkMonitorServiceHandle;
  v9 = [(SYBacklinkMonitorServiceHandle *)&v22 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v24 = connectionCopy;
      _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_INFO, "BacklinkServiceHandle: Creating handle for connection: %p.", buf, 0xCu);
    }

    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v9->_handleQueue, queue);
    [connectionCopy _setQueue:v9->_handleQueue];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F5860];
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:v9];
    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F54F0];
    [connectionCopy setRemoteObjectInterface:v12];

    objc_initWeak(buf, v9);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __59__SYBacklinkMonitorServiceHandle_initWithConnection_queue___block_invoke;
    v19 = &unk_27856C4D0;
    objc_copyWeak(&v21, buf);
    v20 = v9;
    v13 = MEMORY[0x22AA6A360](&v16);
    [connectionCopy setInterruptionHandler:{v13, v16, v17, v18, v19}];
    [connectionCopy setInvalidationHandler:v13];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

void __59__SYBacklinkMonitorServiceHandle_initWithConnection_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _killConnectionWithCallback];
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SYBacklinkMonitorServiceHandle;
  [(SYBacklinkMonitorServiceHandle *)&v3 dealloc];
}

- (void)_killConnectionWithCallback
{
  delegate = [(SYBacklinkMonitorServiceHandle *)self delegate];
  [delegate handleDidDisconnect:self];
}

- (void)setFilterCache:(id)cache
{
  cacheCopy = cache;
  connection = [(SYBacklinkMonitorServiceHandle *)self connection];
  v5 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_12];

  if (v5)
  {
    [v5 updateWithFilterCache:cacheCopy];
  }
}

void __49__SYBacklinkMonitorServiceHandle_setFilterCache___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__SYBacklinkMonitorServiceHandle_setFilterCache___block_invoke_cold_1(v2, v3);
  }
}

- (void)activeUserActivityDidChange:(id)change context:(id)context completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  completionCopy = completion;
  contextCopy = context;
  v11 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    v15 = changeCopy;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_INFO, "BacklinkServiceHandle: Received request to process activity change. Activity info: %p.", &v14, 0xCu);
  }

  delegate = [(SYBacklinkMonitorServiceHandle *)self delegate];
  [delegate scheduleOperationForHandle:self withUserActivity:changeCopy context:contextCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setIndicatorCoverage:(id)coverage
{
  v13 = *MEMORY[0x277D85DE8];
  integerValue = [coverage integerValue];
  if (integerValue <= 2)
  {
    v5 = integerValue;
    v6 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134218240;
      _indicatorCoverage = [(SYBacklinkMonitorServiceHandle *)self _indicatorCoverage];
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_INFO, "BacklinkServiceHandle: Change indicator coverage from: %ld to: %ld", &v9, 0x16u);
    }

    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Synapse"];
    [v7 setInteger:v5 forKey:@"indicatorCoverage"];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)indicatorCoverageWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    _indicatorCoverage = [(SYBacklinkMonitorServiceHandle *)self _indicatorCoverage];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:_indicatorCoverage];
    completionCopy[2](completionCopy, v6);
  }
}

- (SYBacklinkMonitorServiceHandleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __49__SYBacklinkMonitorServiceHandle_setFilterCache___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "BacklinkServiceHandle: Error creating remote service proxy: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
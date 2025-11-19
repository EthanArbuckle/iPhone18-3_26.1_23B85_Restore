@interface SYBacklinkMonitorServiceHandle
+ (id)handleWithConnection:(id)a3 queue:(id)a4;
- (SYBacklinkMonitorServiceHandle)initWithConnection:(id)a3 queue:(id)a4;
- (SYBacklinkMonitorServiceHandleDelegate)delegate;
- (int64_t)_indicatorCoverage;
- (void)_killConnectionWithCallback;
- (void)activeUserActivityDidChange:(id)a3 context:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)indicatorCoverageWithCompletion:(id)a3;
- (void)setFilterCache:(id)a3;
- (void)setIndicatorCoverage:(id)a3;
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

+ (id)handleWithConnection:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithConnection:v7 queue:v6];

  return v8;
}

- (SYBacklinkMonitorServiceHandle)initWithConnection:(id)a3 queue:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = SYBacklinkMonitorServiceHandle;
  v9 = [(SYBacklinkMonitorServiceHandle *)&v22 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v24 = v7;
      _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_INFO, "BacklinkServiceHandle: Creating handle for connection: %p.", buf, 0xCu);
    }

    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v9->_handleQueue, a4);
    [v7 _setQueue:v9->_handleQueue];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F5860];
    [v7 setExportedInterface:v11];

    [v7 setExportedObject:v9];
    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F54F0];
    [v7 setRemoteObjectInterface:v12];

    objc_initWeak(buf, v9);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __59__SYBacklinkMonitorServiceHandle_initWithConnection_queue___block_invoke;
    v19 = &unk_27856C4D0;
    objc_copyWeak(&v21, buf);
    v20 = v9;
    v13 = MEMORY[0x22AA6A360](&v16);
    [v7 setInterruptionHandler:{v13, v16, v17, v18, v19}];
    [v7 setInvalidationHandler:v13];

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
  v3 = [(SYBacklinkMonitorServiceHandle *)self delegate];
  [v3 handleDidDisconnect:self];
}

- (void)setFilterCache:(id)a3
{
  v6 = a3;
  v4 = [(SYBacklinkMonitorServiceHandle *)self connection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_12];

  if (v5)
  {
    [v5 updateWithFilterCache:v6];
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

- (void)activeUserActivityDidChange:(id)a3 context:(id)a4 completion:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    v15 = v8;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_INFO, "BacklinkServiceHandle: Received request to process activity change. Activity info: %p.", &v14, 0xCu);
  }

  v12 = [(SYBacklinkMonitorServiceHandle *)self delegate];
  [v12 scheduleOperationForHandle:self withUserActivity:v8 context:v10];

  if (v9)
  {
    v9[2](v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setIndicatorCoverage:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 integerValue];
  if (v4 <= 2)
  {
    v5 = v4;
    v6 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134218240;
      v10 = [(SYBacklinkMonitorServiceHandle *)self _indicatorCoverage];
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_INFO, "BacklinkServiceHandle: Change indicator coverage from: %ld to: %ld", &v9, 0x16u);
    }

    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Synapse"];
    [v7 setInteger:v5 forKey:@"indicatorCoverage"];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)indicatorCoverageWithCompletion:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SYBacklinkMonitorServiceHandle *)self _indicatorCoverage];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v4[2](v4, v6);
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
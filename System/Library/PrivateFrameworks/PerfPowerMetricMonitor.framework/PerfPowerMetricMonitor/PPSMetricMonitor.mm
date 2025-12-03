@interface PPSMetricMonitor
- (BOOL)setUpdateInterval:(double)interval error:(id *)error;
- (BOOL)startMonitoringProcessWithName:(id)name error:(id *)error;
- (BOOL)startMonitoringProcessesWithName:(id)name error:(id *)error;
- (BOOL)startMonitoringProcessesWithNames:(id)names PIDs:(id)ds error:(id *)error;
- (BOOL)startMonitoringProcessesWithPID:(id)d error:(id *)error;
- (BOOL)startMonitoringSystemMetricsWithError:(id *)error;
- (PPSMetricMonitor)initWithConfiguration:(id)configuration delegate:(id)delegate error:(id *)error;
- (PPSMetricMonitorDelegate)delegate;
- (id)collectMetricsOnDemand;
- (id)collectMetricsOnSnapshot:(id *)snapshot;
- (void)_cancelUpdateTimer;
- (void)_handleXPCInterruption;
- (void)_resetMonitoringState;
- (void)_resumeMonitoring;
- (void)_setUpXPCConnectionWithConfig:(id)config;
- (void)_startUpdateTimer:(double)timer;
- (void)collectMetricsOnDemand;
- (void)endWithError:(id)error;
- (void)stopMonitoring;
- (void)updateWithMetricCollection:(id)collection;
@end

@implementation PPSMetricMonitor

- (PPSMetricMonitor)initWithConfiguration:(id)configuration delegate:(id)delegate error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  delegateCopy = delegate;
  v11 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = configurationCopy;
    _os_log_impl(&dword_22E4FA000, v11, OS_LOG_TYPE_INFO, "Initializing with config : %@", buf, 0xCu);
  }

  v30.receiver = self;
  v30.super_class = PPSMetricMonitor;
  v12 = [(PPSMetricMonitor *)&v30 init];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  objc_storeWeak(&v12->_delegate, delegateCopy);
  objc_storeStrong(&v12->_config, configuration);
  currentProcessPIDs = v12->_currentProcessPIDs;
  v12->_monitoringState = 0;
  v12->_currentProcessPIDs = 0;

  *&v12->_isInterrupted = 0;
  monitoredStartTime = v12->_monitoredStartTime;
  v12->_monitoredStartTime = 0;

  v16 = dispatch_queue_create("com.apple.PerfPowerMetricMonitor.xpcMessagingQueue", v13);
  xpcMessagingQueue = v12->_xpcMessagingQueue;
  v12->_xpcMessagingQueue = v16;

  v18 = dispatch_queue_create("com.apple.PerfPowerMetricMonitor.delegateQueue", v13);
  delegateQueue = v12->_delegateQueue;
  v12->_delegateQueue = v18;

  mode = [configurationCopy mode];
  v21 = 0.0;
  if ((mode - 1) < 3)
  {
    goto LABEL_5;
  }

  if (!mode)
  {
    [configurationCopy updateInterval];
    v21 = 0.2;
    if (v22 < 0.2)
    {
      v23 = PPSMetricMonitorLogHandleForCategory(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PPSMetricMonitor initWithConfiguration:configurationCopy delegate:? error:?];
      }

LABEL_5:
      [configurationCopy setUpdateInterval:v21];
    }
  }

  if (![configurationCopy updateDelegate] || (objc_opt_respondsToSelector() & 1) != 0)
  {

LABEL_14:
    v24 = v12;
    goto LABEL_15;
  }

  v27 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    [PPSMetricMonitor initWithConfiguration:delegate:error:];
  }

  if (error)
  {
    v28 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Invalid configuration";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    *error = [v28 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v29];
  }

  v24 = 0;
LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)startMonitoringSystemMetricsWithError:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E4FA000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "startMonitoringSystemMetrics", "", buf, 2u);
  }

  v6 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringSystemMetricsWithError:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v8 = connection == 0;

    if (v8)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v10 = dispatch_semaphore_create(0);
    *buf = 0;
    v32 = buf;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy_;
    v35 = __Block_byref_object_dispose_;
    v36 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PPSMetricMonitor_startMonitoringSystemMetricsWithError___block_invoke;
    block[3] = &unk_2788478F8;
    block[4] = self;
    v30 = buf;
    v12 = v10;
    v29 = v12;
    dispatch_sync(xpcMessagingQueue, block);

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v13 = *(v32 + 5);
    v14 = v13 == 0;
    if (v13)
    {
      if (error)
      {
        *error = v13;
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless = [config2 isHeadless];

      if (!isHeadless)
      {
        goto LABEL_27;
      }
    }

    else
    {
      connection2 = [(PPSMetricMonitor *)self connection];

      if (connection2)
      {
        [(PPSMetricMonitor *)self setMonitoringState:1];
      }

      config3 = [(PPSMetricMonitor *)self config];
      isHeadless2 = [config3 isHeadless];

      if (!isHeadless2)
      {
        config4 = [(PPSMetricMonitor *)self config];
        v25 = [config4 mode] == 0;

        if (!v25)
        {
LABEL_27:

          _Block_object_dispose(buf, 8);
          goto LABEL_28;
        }

        config5 = [(PPSMetricMonitor *)self config];
        [config5 updateInterval];
        [(PPSMetricMonitor *)self _startUpdateTimer:?];
LABEL_26:

        goto LABEL_27;
      }

      if (![(PPSMetricMonitor *)self isAnalyticsSent])
      {
        date = [MEMORY[0x277CBEAA8] date];
        [(PPSMetricMonitor *)self setMonitoredStartTime:date];

        [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
      }
    }

    config5 = [(PPSMetricMonitor *)self connection];
    [config5 invalidate];
    goto LABEL_26;
  }

  if (!error)
  {
    v14 = 0;
    goto LABEL_29;
  }

  v18 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [PPSMetricMonitor startMonitoringSystemMetricsWithError:];
  }

  v19 = MEMORY[0x277CCA9B8];
  v37 = *MEMORY[0x277CCA450];
  v38[0] = @"Already monitoring";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  [v19 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v12];
  *error = v14 = 0;
LABEL_28:

LABEL_29:
  v26 = *MEMORY[0x277D85DE8];
  return v14;
}

void __58__PPSMetricMonitor_startMonitoringSystemMetricsWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PPSMetricMonitor_startMonitoringSystemMetricsWithError___block_invoke_2;
  v5[3] = &unk_2788478D0;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 startMonitoringSystemMetricsWithCompletion:v5];
}

void __58__PPSMetricMonitor_startMonitoringSystemMetricsWithError___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __56__PPSMetricMonitor_startMonitoringProcessWithPID_error___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remoteProxy];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__PPSMetricMonitor_startMonitoringProcessWithPID_error___block_invoke_2;
  v8[3] = &unk_2788478D0;
  v7 = *(a1 + 40);
  v5 = v7;
  v9 = v7;
  [v2 startMonitoringProcessesWithPID:v4 completion:v8];

  v6 = *MEMORY[0x277D85DE8];
}

void __56__PPSMetricMonitor_startMonitoringProcessWithPID_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)startMonitoringProcessesWithPID:(id)d error:(id *)error
{
  v46[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringProcessesWithPID:error:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v9 = connection == 0;

    if (v9)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v11 = dispatch_semaphore_create(0);
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    v43 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PPSMetricMonitor_startMonitoringProcessesWithPID_error___block_invoke;
    block[3] = &unk_278847968;
    block[4] = self;
    v13 = dCopy;
    v35 = v13;
    v37 = &v38;
    v14 = v11;
    v36 = v14;
    dispatch_sync(xpcMessagingQueue, block);

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = v39[5];
    v16 = v15 == 0;
    if (v15)
    {
      if (error)
      {
        *error = v15;
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless = [config2 isHeadless];

      if (!isHeadless)
      {
        goto LABEL_27;
      }

      connection2 = [(PPSMetricMonitor *)self connection];
      [connection2 invalidate];
    }

    else
    {
      connection3 = [(PPSMetricMonitor *)self connection];

      if (connection3)
      {
        [(PPSMetricMonitor *)self setMonitoringState:2];
        v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v13];
        [(PPSMetricMonitor *)self setCurrentProcessPIDs:v23];
      }

      config3 = [(PPSMetricMonitor *)self config];
      isHeadless2 = [config3 isHeadless];

      if (isHeadless2 && (-[PPSMetricMonitor connection](self, "connection"), v26 = objc_claimAutoreleasedReturnValue(), [v26 invalidate], v26, !-[PPSMetricMonitor isAnalyticsSent](self, "isAnalyticsSent")))
      {
        date = [MEMORY[0x277CBEAA8] date];
        [(PPSMetricMonitor *)self setMonitoredStartTime:date];

        v30 = v13;
        AnalyticsSendEventLazy();
        v31 = PPSMetricMonitorLogHandleForCategory(1);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          -[PPSMetricMonitor startMonitoringProcessesWithPID:error:].cold.3(v44, [v30 count], v31);
        }

        [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
        connection2 = v30;
      }

      else
      {
        config4 = [(PPSMetricMonitor *)self config];
        v28 = [config4 mode] == 0;

        if (!v28)
        {
LABEL_27:

          _Block_object_dispose(&v38, 8);
LABEL_28:

          goto LABEL_29;
        }

        connection2 = [(PPSMetricMonitor *)self config];
        [connection2 updateInterval];
        [(PPSMetricMonitor *)self _startUpdateTimer:?];
      }
    }

    goto LABEL_27;
  }

  if (error)
  {
    v20 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor startMonitoringProcessWithPID:error:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    v46[0] = @"Already monitoring";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    [v21 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v14];
    *error = v16 = 0;
    goto LABEL_28;
  }

  v16 = 0;
LABEL_29:

  v32 = *MEMORY[0x277D85DE8];
  return v16;
}

void __58__PPSMetricMonitor_startMonitoringProcessesWithPID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__PPSMetricMonitor_startMonitoringProcessesWithPID_error___block_invoke_2;
  v6[3] = &unk_2788478D0;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 startMonitoringProcessesWithPID:v3 completion:v6];
}

void __58__PPSMetricMonitor_startMonitoringProcessesWithPID_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id __58__PPSMetricMonitor_startMonitoringProcessesWithPID_error___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"targetAppCount";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)startMonitoringProcessWithName:(id)name error:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringProcessWithName:error:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v9 = connection == 0;

    if (v9)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v11 = dispatch_semaphore_create(0);
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy_;
    v45 = __Block_byref_object_dispose_;
    v46 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __57__PPSMetricMonitor_startMonitoringProcessWithName_error___block_invoke;
    v36 = &unk_278847968;
    selfCopy = self;
    v13 = nameCopy;
    v38 = v13;
    v40 = &v41;
    v14 = v11;
    v39 = v14;
    dispatch_sync(xpcMessagingQueue, &v33);

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = v42[5];
    v16 = v15 == 0;
    if (v15)
    {
      if (error)
      {
        *error = v15;
      }

      v17 = [(PPSMetricMonitor *)self config:v33];
      isHeadless = [v17 isHeadless];

      if (!isHeadless)
      {
        goto LABEL_23;
      }

      connection2 = [(PPSMetricMonitor *)self connection];
      [connection2 invalidate];
    }

    else
    {
      v22 = [(PPSMetricMonitor *)self connection:v33];

      if (v22)
      {
        [(PPSMetricMonitor *)self setMonitoringState:2];
        v47 = v13;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        [(PPSMetricMonitor *)self setCurrentProcessNames:v23];
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless2 = [config2 isHeadless];

      if (isHeadless2)
      {
        connection3 = [(PPSMetricMonitor *)self connection];
        [connection3 invalidate];

        if (![(PPSMetricMonitor *)self isAnalyticsSent])
        {
          date = [MEMORY[0x277CBEAA8] date];
          [(PPSMetricMonitor *)self setMonitoredStartTime:date];

          AnalyticsSendEventLazy();
          v32 = PPSMetricMonitorLogHandleForCategory(1);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [PPSMetricMonitor startMonitoringProcessWithPID:error:];
          }

          [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
          goto LABEL_23;
        }
      }

      config3 = [(PPSMetricMonitor *)self config];
      v28 = [config3 mode] == 0;

      if (!v28)
      {
LABEL_23:

        _Block_object_dispose(&v41, 8);
        goto LABEL_24;
      }

      connection2 = [(PPSMetricMonitor *)self config];
      [connection2 updateInterval];
      [(PPSMetricMonitor *)self _startUpdateTimer:?];
    }

    goto LABEL_23;
  }

  if (!error)
  {
    v16 = 0;
    goto LABEL_25;
  }

  v20 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [PPSMetricMonitor startMonitoringProcessWithName:error:];
  }

  v21 = MEMORY[0x277CCA9B8];
  v48 = *MEMORY[0x277CCA450];
  v49[0] = @"Already monitoring";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  [v21 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v14];
  *error = v16 = 0;
LABEL_24:

LABEL_25:
  v29 = *MEMORY[0x277D85DE8];
  return v16;
}

void __57__PPSMetricMonitor_startMonitoringProcessWithName_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__PPSMetricMonitor_startMonitoringProcessWithName_error___block_invoke_2;
  v6[3] = &unk_2788478D0;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 startMonitoringProcessWithName:v3 completion:v6];
}

void __57__PPSMetricMonitor_startMonitoringProcessWithName_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)startMonitoringProcessesWithName:(id)name error:(id *)error
{
  v46[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringProcessesWithName:error:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v9 = connection == 0;

    if (v9)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v11 = dispatch_semaphore_create(0);
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    v43 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PPSMetricMonitor_startMonitoringProcessesWithName_error___block_invoke;
    block[3] = &unk_278847968;
    block[4] = self;
    v13 = nameCopy;
    v35 = v13;
    v37 = &v38;
    v14 = v11;
    v36 = v14;
    dispatch_sync(xpcMessagingQueue, block);

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = v39[5];
    v16 = v15 == 0;
    if (v15)
    {
      if (error)
      {
        *error = v15;
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless = [config2 isHeadless];

      if (!isHeadless)
      {
        goto LABEL_27;
      }

      connection2 = [(PPSMetricMonitor *)self connection];
      [connection2 invalidate];
    }

    else
    {
      connection3 = [(PPSMetricMonitor *)self connection];

      if (connection3)
      {
        [(PPSMetricMonitor *)self setMonitoringState:2];
        v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v13];
        [(PPSMetricMonitor *)self setCurrentProcessNames:v23];
      }

      config3 = [(PPSMetricMonitor *)self config];
      isHeadless2 = [config3 isHeadless];

      if (isHeadless2 && (-[PPSMetricMonitor connection](self, "connection"), v26 = objc_claimAutoreleasedReturnValue(), [v26 invalidate], v26, !-[PPSMetricMonitor isAnalyticsSent](self, "isAnalyticsSent")))
      {
        date = [MEMORY[0x277CBEAA8] date];
        [(PPSMetricMonitor *)self setMonitoredStartTime:date];

        v30 = v13;
        AnalyticsSendEventLazy();
        v31 = PPSMetricMonitorLogHandleForCategory(1);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          -[PPSMetricMonitor startMonitoringProcessesWithPID:error:].cold.3(v44, [v30 count], v31);
        }

        [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
        connection2 = v30;
      }

      else
      {
        config4 = [(PPSMetricMonitor *)self config];
        v28 = [config4 mode] == 0;

        if (!v28)
        {
LABEL_27:

          _Block_object_dispose(&v38, 8);
LABEL_28:

          goto LABEL_29;
        }

        connection2 = [(PPSMetricMonitor *)self config];
        [connection2 updateInterval];
        [(PPSMetricMonitor *)self _startUpdateTimer:?];
      }
    }

    goto LABEL_27;
  }

  if (error)
  {
    v20 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor startMonitoringProcessWithName:error:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    v46[0] = @"Already monitoring";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    [v21 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v14];
    *error = v16 = 0;
    goto LABEL_28;
  }

  v16 = 0;
LABEL_29:

  v32 = *MEMORY[0x277D85DE8];
  return v16;
}

void __59__PPSMetricMonitor_startMonitoringProcessesWithName_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__PPSMetricMonitor_startMonitoringProcessesWithName_error___block_invoke_2;
  v6[3] = &unk_2788478D0;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 startMonitoringProcessesWithName:v3 completion:v6];
}

void __59__PPSMetricMonitor_startMonitoringProcessesWithName_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id __59__PPSMetricMonitor_startMonitoringProcessesWithName_error___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"targetAppCount";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)startMonitoringProcessesWithNames:(id)names PIDs:(id)ds error:(id *)error
{
  v57[1] = *MEMORY[0x277D85DE8];
  namesCopy = names;
  dsCopy = ds;
  v10 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor startMonitoringProcessesWithNames:PIDs:error:];
  }

  if (![(PPSMetricMonitor *)self monitoringState]|| [(PPSMetricMonitor *)self isInterrupted])
  {
    [(PPSMetricMonitor *)self _resetMonitoringState];
    connection = [(PPSMetricMonitor *)self connection];
    v12 = connection == 0;

    if (v12)
    {
      config = [(PPSMetricMonitor *)self config];
      [(PPSMetricMonitor *)self _setUpXPCConnectionWithConfig:config];
    }

    v14 = dispatch_semaphore_create(0);
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy_;
    v53 = __Block_byref_object_dispose_;
    v54 = 0;
    xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
    block = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke;
    v43 = &unk_2788479B8;
    selfCopy = self;
    v45 = namesCopy;
    v16 = dsCopy;
    v46 = v16;
    v48 = &v49;
    v17 = v14;
    v47 = v17;
    dispatch_sync(xpcMessagingQueue, &block);

    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v18 = v50[5];
    v19 = v18 == 0;
    if (v18)
    {
      if (error)
      {
        *error = v18;
      }
    }

    else
    {
      connection2 = [(PPSMetricMonitor *)self connection];

      if (connection2)
      {
        [(PPSMetricMonitor *)self setMonitoringState:2];
        v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v16];
        [(PPSMetricMonitor *)self setCurrentProcessPIDs:v23];
      }

      config2 = [(PPSMetricMonitor *)self config];
      isHeadless = [config2 isHeadless];

      if (isHeadless && ![(PPSMetricMonitor *)self isAnalyticsSent])
      {
        date = [MEMORY[0x277CBEAA8] date];
        [(PPSMetricMonitor *)self setMonitoredStartTime:date];

        v35 = MEMORY[0x277D85DD0];
        v36 = 3221225472;
        v37 = __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke_3;
        v38 = &unk_278847990;
        v27 = v16;
        v39 = v27;
        AnalyticsSendEventLazy();
        v28 = PPSMetricMonitorLogHandleForCategory(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          -[PPSMetricMonitor startMonitoringProcessesWithPID:error:].cold.3(v55, [v27 count], v28);
        }

        [(PPSMetricMonitor *)self setIsAnalyticsSent:1];
      }

      v29 = [(PPSMetricMonitor *)self config:v35];
      if ([v29 mode])
      {
      }

      else
      {
        config3 = [(PPSMetricMonitor *)self config];
        isHeadless2 = [config3 isHeadless];

        if ((isHeadless2 & 1) == 0)
        {
          config4 = [(PPSMetricMonitor *)self config];
          [config4 updateInterval];
          [(PPSMetricMonitor *)self _startUpdateTimer:?];
        }
      }
    }

    _Block_object_dispose(&v49, 8);
LABEL_27:

    goto LABEL_28;
  }

  if (error)
  {
    v20 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor startMonitoringProcessesWithNames:PIDs:error:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA450];
    v57[0] = @"Already monitoring";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    [v21 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:7 userInfo:v17];
    *error = v19 = 0;
    goto LABEL_27;
  }

  v19 = 0;
LABEL_28:

  v33 = *MEMORY[0x277D85DE8];
  return v19;
}

void __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteProxy];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke_2;
  v7[3] = &unk_2788478D0;
  v6 = *(a1 + 56);
  v5 = v6;
  v8 = v6;
  [v2 startMonitoringProcessesWithNames:v3 withPIDs:v4 completion:v7];
}

void __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id __65__PPSMetricMonitor_startMonitoringProcessesWithNames_PIDs_error___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"targetAppCount";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)collectMetricsOnSnapshot:(id *)snapshot
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = [(PPSMetricMonitor *)self monitoringState];
    *&buf[12] = 1024;
    *&buf[14] = [(PPSMetricMonitor *)self isInterrupted];
    _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_DEFAULT, "collecting snapshot, monitoringState=%ld, isInterrupted=%d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = __Block_byref_object_copy_;
  v21[3] = __Block_byref_object_dispose_;
  v22 = 0;
  if ([(PPSMetricMonitor *)self isInterrupted])
  {
    v6 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26 = @"Cannot collect metrics when interrupted";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v8 = [v6 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:3 userInfo:v7];
  }

  else
  {
    if ([(PPSMetricMonitor *)self monitoringState])
    {
      goto LABEL_8;
    }

    v9 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24 = @"Cannot collect metrics when not monitoring";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v8 = [v9 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:10 userInfo:v7];
  }

  v10 = *(v21[0] + 40);
  *(v21[0] + 40) = v8;

LABEL_8:
  if (*(v21[0] + 40))
  {
    v11 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor collectMetricsOnSnapshot:v21];
    }
  }

  else
  {
    connection = [(PPSMetricMonitor *)self connection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__PPSMetricMonitor_collectMetricsOnSnapshot___block_invoke;
    v19[3] = &unk_2788479E0;
    v19[4] = &v20;
    v13 = [connection synchronousRemoteObjectProxyWithErrorHandler:v19];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__PPSMetricMonitor_collectMetricsOnSnapshot___block_invoke_2;
    v18[3] = &unk_278847A08;
    v18[4] = buf;
    v18[5] = &v20;
    [v13 collectMetricsOnDemand:v18];

    v14 = *(v21[0] + 40);
    if (v14)
    {
      *snapshot = v14;
    }
  }

  v15 = *(*&buf[8] + 40);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(buf, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __45__PPSMetricMonitor_collectMetricsOnSnapshot___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)collectMetricsOnDemand
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor collectMetricsOnDemand];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = objc_alloc_init(PPSMetricCollection);
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy_;
  v17[3] = __Block_byref_object_dispose_;
  v18 = 0;
  if ([(PPSMetricMonitor *)self isInterrupted])
  {
    v4 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"Cannot collect metrics when interrupted";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:3 userInfo:v5];
  }

  else
  {
    if ([(PPSMetricMonitor *)self monitoringState])
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26 = @"Cannot collect metrics when not monitoring";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v6 = [v7 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:10 userInfo:v5];
  }

  v8 = *(v17[0] + 40);
  *(v17[0] + 40) = v6;

LABEL_8:
  if (*(v17[0] + 40))
  {
    connection = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(connection, OS_LOG_TYPE_ERROR))
    {
      [(PPSMetricMonitor *)v17 collectMetricsOnDemand];
    }
  }

  else
  {
    connection = [(PPSMetricMonitor *)self connection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __42__PPSMetricMonitor_collectMetricsOnDemand__block_invoke;
    v15[3] = &unk_2788479E0;
    v15[4] = &v16;
    v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__PPSMetricMonitor_collectMetricsOnDemand__block_invoke_2;
    v14[3] = &unk_278847A08;
    v14[4] = &v19;
    v14[5] = &v16;
    [v10 collectMetricsOnDemand:v14];
  }

  v11 = v20[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __42__PPSMetricMonitor_collectMetricsOnDemand__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)stopMonitoring
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34__PPSMetricMonitor_stopMonitoring__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteProxy];
  [v1 finishMonitoringAndSendMetrics];
}

- (BOOL)setUpdateInterval:(double)interval error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (interval < 0.2)
  {
    v7 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor setUpdateInterval:error:];
    }

    v8 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Update interval smaller than 0.2 s is not supported; defaulting to 0.2 s";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v8 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v9];
  }

  v10 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v15 = 134217984;
    intervalCopy = interval;
    _os_log_impl(&dword_22E4FA000, v10, OS_LOG_TYPE_INFO, "Setting update interval to %f s", &v15, 0xCu);
  }

  updateTimer = [(PPSMetricMonitor *)self updateTimer];

  if (updateTimer)
  {
    updateTimer2 = [(PPSMetricMonitor *)self updateTimer];
    dispatch_source_set_timer(updateTimer2, 0, (interval * 1000000000.0), 0x989680uLL);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_resetMonitoringState
{
  [(PPSMetricMonitor *)self setMonitoringState:0];
  [(PPSMetricMonitor *)self setCurrentProcessPIDs:0];
  [(PPSMetricMonitor *)self setCurrentProcessNames:0];

  [(PPSMetricMonitor *)self setIsInterrupted:0];
}

- (void)updateWithMetricCollection:(id)collection
{
  collectionCopy = collection;
  delegate = [(PPSMetricMonitor *)self delegate];

  if (delegate)
  {
    delegate2 = [(PPSMetricMonitor *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegateQueue = [(PPSMetricMonitor *)self delegateQueue];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __47__PPSMetricMonitor_updateWithMetricCollection___block_invoke;
      v16 = &unk_278847A58;
      selfCopy = self;
      v18 = collectionCopy;
      dispatch_async(delegateQueue, &v13);

      goto LABEL_9;
    }

    v9 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitor updateWithMetricCollection:];
    }
  }

  else
  {
    v9 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitor updateWithMetricCollection:];
    }
  }

LABEL_9:
  v10 = [(PPSMetricMonitor *)self config:v13];
  mode = [v10 mode];

  if (mode == 1)
  {
    connection = [(PPSMetricMonitor *)self connection];
    [connection invalidate];
  }
}

void __47__PPSMetricMonitor_updateWithMetricCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metricMonitor:*(a1 + 32) didUpdateWithMetrics:*(a1 + 40)];
}

- (void)endWithError:(id)error
{
  errorCopy = error;
  monitoredStartTime = [(PPSMetricMonitor *)self monitoredStartTime];

  if (monitoredStartTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    monitoredStartTime2 = [(PPSMetricMonitor *)self monitoredStartTime];
    [date timeIntervalSinceDate:monitoredStartTime2];

    [(PPSMetricMonitor *)self setMonitoredStartTime:0];
    v8 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitor endWithError:];
    }

    AnalyticsSendEventLazy();
  }

  delegate = [(PPSMetricMonitor *)self delegate];
  [delegate metricMonitor:self didEndWithError:errorCopy];

  [(PPSMetricMonitor *)self _resetMonitoringState];
}

id __33__PPSMetricMonitor_endWithError___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"monitoringDuration";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_setUpXPCConnectionWithConfig:(id)config
{
  configCopy = config;
  v5 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitor _setUpXPCConnectionWithConfig:];
  }

  v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PerfPowerMetricMonitor.xpc" options:4096];
  [(PPSMetricMonitor *)self setConnection:v6];

  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284302200];
  connection = [(PPSMetricMonitor *)self connection];
  [connection setRemoteObjectInterface:v7];

  connection2 = [(PPSMetricMonitor *)self connection];
  remoteObjectInterface = [connection2 remoteObjectInterface];
  v11 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [remoteObjectInterface setClasses:v11 forSelector:sel_setUpWithConfiguration_completion_ argumentIndex:0 ofReply:0];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284301658];
  connection3 = [(PPSMetricMonitor *)self connection];
  [connection3 setExportedInterface:v12];

  connection4 = [(PPSMetricMonitor *)self connection];
  exportedInterface = [connection4 exportedInterface];
  v16 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [exportedInterface setClasses:v16 forSelector:sel_updateWithMetricCollection_ argumentIndex:0 ofReply:0];

  connection5 = [(PPSMetricMonitor *)self connection];
  [connection5 setExportedObject:self];

  objc_initWeak(&location, self);
  connection6 = [(PPSMetricMonitor *)self connection];
  v19 = [connection6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_79];
  [(PPSMetricMonitor *)self setRemoteProxy:v19];

  connection7 = [(PPSMetricMonitor *)self connection];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_80;
  v31[3] = &unk_278847AC0;
  objc_copyWeak(&v32, &location);
  [connection7 setInterruptionHandler:v31];

  connection8 = [(PPSMetricMonitor *)self connection];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_81;
  v29[3] = &unk_278847AC0;
  objc_copyWeak(&v30, &location);
  [connection8 setInvalidationHandler:v29];

  v22 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E4FA000, v22, OS_LOG_TYPE_DEFAULT, "Connecting to perfpowermetricd", buf, 2u);
  }

  connection9 = [(PPSMetricMonitor *)self connection];
  [connection9 resume];

  xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_86;
  v26[3] = &unk_278847A58;
  v26[4] = self;
  v27 = configCopy;
  v25 = configCopy;
  dispatch_async(xpcMessagingQueue, v26);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_cold_1();
  }
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_80(uint64_t a1)
{
  v2 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_80_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleXPCInterruption];
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_81(uint64_t a1)
{
  v2 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_81_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setRemoteProxy:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 monitoringState];

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_82;
    block[3] = &unk_278847AC0;
    objc_copyWeak(&v10, (a1 + 32));
    dispatch_async(v8, block);

    objc_destroyWeak(&v10);
  }
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_82(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"XPC connection invalidated";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:1 userInfo:v3];
  [WeakRetained endWithError:v4];

  v5 = *MEMORY[0x277D85DE8];
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_86(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) remoteProxy];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_2;
  v4[3] = &unk_278847AC0;
  objc_copyWeak(&v5, &location);
  [v2 setUpWithConfiguration:v3 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_3;
    block[3] = &unk_278847AC0;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(v6, block);

    objc_destroyWeak(&v8);
  }
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 metricMonitorDidBecomeReady:WeakRetained];

  v3 = PPSMetricMonitorLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22E4FA000, v3, OS_LOG_TYPE_INFO, "metric Monitor is ready", v4, 2u);
  }
}

- (void)_handleXPCInterruption
{
  [(PPSMetricMonitor *)self setIsInterrupted:1];
  delegate = [(PPSMetricMonitor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegateQueue = [(PPSMetricMonitor *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PPSMetricMonitor__handleXPCInterruption__block_invoke;
    block[3] = &unk_278847A30;
    block[4] = self;
    dispatch_async(delegateQueue, block);
  }

  xpcMessagingQueue = [(PPSMetricMonitor *)self xpcMessagingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_2;
  v7[3] = &unk_278847A30;
  v7[4] = self;
  dispatch_async(xpcMessagingQueue, v7);
}

void __42__PPSMetricMonitor__handleXPCInterruption__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metricMonitorInterruptionDidBegin:*(a1 + 32)];
}

void __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) remoteProxy];
  v3 = [*(a1 + 32) config];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_3;
  v4[3] = &unk_278847AC0;
  objc_copyWeak(&v5, &location);
  [v2 setUpWithConfiguration:v3 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_3(uint64_t a1)
{
  v2 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E4FA000, v2, OS_LOG_TYPE_DEFAULT, "Resumed XPC connection to perfpowermetricd", buf, 2u);
  }

  v3 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_91;
  block[3] = &unk_278847AC0;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void __42__PPSMetricMonitor__handleXPCInterruption__block_invoke_91(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resumeMonitoring];
}

- (void)_resumeMonitoring
{
  v8 = *MEMORY[0x277D85DE8];
  currentProcessNames = [self currentProcessNames];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __37__PPSMetricMonitor__resumeMonitoring__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metricMonitorInterruptionDidEnd:*(a1 + 32)];
}

void __37__PPSMetricMonitor__resumeMonitoring__block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [v5 setObject:@"Failed to resume after interruption" forKeyedSubscript:*MEMORY[0x277CCA450]];
  v2 = *(a1 + 32);
  if (v2)
  {
    [v5 setObject:v2 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:3 userInfo:v5];
  [v3 endWithError:v4];
}

- (void)_cancelUpdateTimer
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_startUpdateTimer:(double)timer
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    timerCopy = timer;
    _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_INFO, "Starting update timer with interval: %f", buf, 0xCu);
  }

  [(PPSMetricMonitor *)self _cancelUpdateTimer];
  delegateQueue = [(PPSMetricMonitor *)self delegateQueue];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, delegateQueue);
  [(PPSMetricMonitor *)self setUpdateTimer:v7];

  updateTimer = [(PPSMetricMonitor *)self updateTimer];
  dispatch_source_set_timer(updateTimer, 0, (timer * 1000000000.0), 0x989680uLL);

  updateTimer2 = [(PPSMetricMonitor *)self updateTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __38__PPSMetricMonitor__startUpdateTimer___block_invoke;
  handler[3] = &unk_278847A30;
  handler[4] = self;
  dispatch_source_set_event_handler(updateTimer2, handler);

  updateTimer3 = [(PPSMetricMonitor *)self updateTimer];
  dispatch_resume(updateTimer3);

  v11 = *MEMORY[0x277D85DE8];
}

- (PPSMetricMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithConfiguration:(void *)a1 delegate:error:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 updateInterval];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringSystemMetricsWithError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startMonitoringSystemMetricsWithError:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startMonitoringProcessWithPID:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringProcessWithPID:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startMonitoringProcessWithPID:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startMonitoringProcessesWithPID:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringProcessesWithPID:(NSObject *)a3 error:.cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_5(&dword_22E4FA000, a2, a3, "processes monitored count: %lu", a1);
}

- (void)startMonitoringProcessWithName:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringProcessWithName:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startMonitoringProcessesWithName:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringProcessesWithNames:PIDs:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_22E4FA000, v1, OS_LOG_TYPE_DEBUG, "Start monitoring processes with names and pids: %@ %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringProcessesWithNames:PIDs:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)collectMetricsOnSnapshot:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 40);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)collectMetricsOnDemand
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*self + 40);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setUpdateInterval:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateWithMetricCollection:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateWithMetricCollection:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)endWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setUpXPCConnectionWithConfig:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_80_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_81_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end
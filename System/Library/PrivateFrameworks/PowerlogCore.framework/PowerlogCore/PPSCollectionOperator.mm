@interface PPSCollectionOperator
- (PPSCollectionOperator)init;
- (void)initOperatorDependancies;
- (void)monitorMetricsForSubsystem:(id)a3 category:(id)a4 payload:(id)a5;
@end

@implementation PPSCollectionOperator

void __49__PPSCollectionOperator_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = a5;
  v9 = PPSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __49__PPSCollectionOperator_initOperatorDependancies__block_invoke_cold_1(v7, v8, v9);
  }

  v10 = [v7 componentsSeparatedByString:@"::"];
  if ([v10 count] == 2)
  {
    v11 = *(a1 + 32);
    v12 = [v10 objectAtIndexedSubscript:0];
    v13 = [v10 objectAtIndexedSubscript:1];
    [v11 monitorMetricsForSubsystem:v12 category:v13 payload:v8];

    v14 = *(a1 + 32);
    v15 = [v10 objectAtIndexedSubscript:0];
    v16 = [v10 objectAtIndexedSubscript:1];
    [v14 logForSubsystem:v15 category:v16 data:v8];
  }

  else
  {
    v15 = PPSLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __49__PPSCollectionOperator_initOperatorDependancies__block_invoke_cold_2(v7, v15);
    }
  }
}

- (PPSCollectionOperator)init
{
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PPSCollectionOperator;
    self = [(PLOperator *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v3 = [PLXPCListenerOperatorComposition alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__PPSCollectionOperator_initOperatorDependancies__block_invoke;
  v18[3] = &unk_1E851A538;
  v18[4] = self;
  v4 = [(PLXPCListenerOperatorComposition *)v3 initWithOperator:self withRegistration:&unk_1F540D008 withBlock:v18];
  metricListener = self->_metricListener;
  self->_metricListener = v4;

  if (+[PLPlatform internalBuild])
  {
    v6 = [[PLXPCResponderOperatorComposition alloc] initWithOperator:self withRegistration:&unk_1F540D030 withBlock:&__block_literal_global_30];
    allowlistResponder = self->_allowlistResponder;
    self->_allowlistResponder = v6;

    v8 = [PLCFNotificationOperatorComposition alloc];
    v9 = [(PLOperator *)self workQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__PPSCollectionOperator_initOperatorDependancies__block_invoke_38;
    v17[3] = &unk_1E8519090;
    v17[4] = self;
    v10 = [(PLCFNotificationOperatorComposition *)v8 initWithWorkQueue:v9 forNotification:@"com.apple.powerlog.dataStreamStartMonitor" requireState:0 withBlock:v17];
    startMonitor = self->_startMonitor;
    self->_startMonitor = v10;

    v12 = [PLCFNotificationOperatorComposition alloc];
    v13 = [(PLOperator *)self workQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__PPSCollectionOperator_initOperatorDependancies__block_invoke_53;
    v16[3] = &unk_1E8519090;
    v16[4] = self;
    v14 = [(PLCFNotificationOperatorComposition *)v12 initWithWorkQueue:v13 forNotification:@"com.apple.powerlog.dataStreamStopMonitor" requireState:0 withBlock:v16];
    stopMonitor = self->_stopMonitor;
    self->_stopMonitor = v14;
  }
}

id __49__PPSCollectionOperator_initOperatorDependancies__block_invoke_31()
{
  v0 = PPSLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8611000, v0, OS_LOG_TYPE_DEFAULT, "Received request to query allowlist", v3, 2u);
  }

  v1 = +[PPSCoreUtilities getAllowlist];

  return v1;
}

void __49__PPSCollectionOperator_initOperatorDependancies__block_invoke_38(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setMonitor:1];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"PerfPowerServicesDataStream"];
  v3 = [v2 stringForKey:@"MonitorSubsystem"];
  [*(a1 + 32) setMonitoredSubsystem:v3];

  v4 = [v2 stringForKey:@"MonitorCategory"];
  [*(a1 + 32) setMonitoredCategory:v4];

  v5 = PPSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) monitoredSubsystem];
    v7 = [*(a1 + 32) monitoredCategory];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Starting monitoring for subsystem: %@ category: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __49__PPSCollectionOperator_initOperatorDependancies__block_invoke_53(uint64_t a1)
{
  v2 = PPSLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "Stopping monitoring", v4, 2u);
  }

  [*(a1 + 32) setMonitor:0];
  [*(a1 + 32) setMonitoredSubsystem:0];
  return [*(a1 + 32) setMonitoredCategory:0];
}

- (void)monitorMetricsForSubsystem:(id)a3 category:(id)a4 payload:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PPSCollectionOperator *)self monitor])
  {
    v11 = [(PPSCollectionOperator *)self monitoredSubsystem];
    if ([v11 isEqualToString:v8])
    {
      v12 = [(PPSCollectionOperator *)self monitoredCategory];
      v13 = [v12 isEqualToString:v9];

      if (v13)
      {
        v14 = PPSDataStreamLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = v10;
          _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "%@", &v16, 0xCu);
        }
      }
    }

    else
    {
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __49__PPSCollectionOperator_initOperatorDependancies__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "Metric Key: %@ Payload: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __49__PPSCollectionOperator_initOperatorDependancies__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Malformed client message received from %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
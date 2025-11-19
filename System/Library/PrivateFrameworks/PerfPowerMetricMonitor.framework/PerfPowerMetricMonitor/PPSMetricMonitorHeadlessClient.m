@interface PPSMetricMonitorHeadlessClient
+ (BOOL)isMonitoring;
+ (BOOL)startMonitoringProcessesWithNames:(id)a3 config:(id)a4 error:(id *)a5;
+ (BOOL)startMonitoringProcessesWithPID:(id)a3 config:(id)a4 error:(id *)a5;
+ (BOOL)startMonitoringSystemMetricsWithConfig:(id)a3 error:(id *)a4;
+ (id)_initConnection;
+ (id)monitoredProcesses;
+ (void)stopMonitoring;
@end

@implementation PPSMetricMonitorHeadlessClient

+ (BOOL)startMonitoringSystemMetricsWithConfig:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 updateDelegate] & 1) == 0 && objc_msgSend(v5, "isHeadless") && (objc_msgSend(v5, "emitTracingSignposts"))
  {
    v6 = [[PPSMetricMonitor alloc] initWithConfiguration:v5 delegate:0 error:a4];
    v7 = [(PPSMetricMonitor *)v6 startMonitoringSystemMetricsWithError:a4];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Invalid configuration";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [v8 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v9];

    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)startMonitoringProcessesWithPID:(id)a3 config:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v8 updateDelegate] & 1) == 0 && objc_msgSend(v8, "isHeadless") && (objc_msgSend(v8, "emitTracingSignposts"))
  {
    v9 = [[PPSMetricMonitor alloc] initWithConfiguration:v8 delegate:0 error:a5];
    v10 = [(PPSMetricMonitor *)v9 startMonitoringProcessesWithPID:v7 error:a5];
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"Invalid configuration";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a5 = [v11 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v12];

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)startMonitoringProcessesWithNames:(id)a3 config:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v8 updateDelegate] & 1) == 0 && objc_msgSend(v8, "isHeadless") && (objc_msgSend(v8, "emitTracingSignposts"))
  {
    v9 = [[PPSMetricMonitor alloc] initWithConfiguration:v8 delegate:0 error:a5];
    v10 = [(PPSMetricMonitor *)v9 startMonitoringProcessesWithName:v7 error:a5];
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"Invalid configuration";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a5 = [v11 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v12];

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)monitoredProcesses
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v2 = [a1 _initConnection];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__0;
  v8[4] = __Block_byref_object_dispose__0;
  v9 = 0;
  [v2 resume];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__PPSMetricMonitorHeadlessClient_monitoredProcesses__block_invoke;
  v7[3] = &unk_2788479E0;
  v7[4] = v8;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__PPSMetricMonitorHeadlessClient_monitoredProcesses__block_invoke_2;
  v6[3] = &unk_278847B08;
  v6[4] = &v10;
  [v3 headlessClientMonitoredProcesses:v6];

  [v2 invalidate];
  v4 = v11[5];
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(&v10, 8);

  return v4;
}

+ (void)stopMonitoring
{
  v2 = [a1 _initConnection];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__0;
  v5[4] = __Block_byref_object_dispose__0;
  v6 = 0;
  [v2 resume];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PPSMetricMonitorHeadlessClient_stopMonitoring__block_invoke;
  v4[3] = &unk_2788479E0;
  v4[4] = v5;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v4];
  [v3 stopMonitoringHeadlessClient];

  [v2 invalidate];
  _Block_object_dispose(v5, 8);
}

+ (id)_initConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PerfPowerMetricMonitorHeadless.xpc" options:4096];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2843022E8];
  [v3 setRemoteObjectInterface:v4];

  [v3 setExportedObject:a1];

  return v3;
}

+ (BOOL)isMonitoring
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = [a1 _initConnection];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__0;
  v7[4] = __Block_byref_object_dispose__0;
  v8 = 0;
  [v2 resume];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PPSMetricMonitorHeadlessClient_isMonitoring__block_invoke;
  v6[3] = &unk_2788479E0;
  v6[4] = v7;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PPSMetricMonitorHeadlessClient_isMonitoring__block_invoke_2;
  v5[3] = &unk_278847B30;
  v5[4] = &v9;
  [v3 isMonitoringForHeadlessWithCompletion:v5];

  [v2 invalidate];
  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(&v9, 8);
  return v3;
}

@end
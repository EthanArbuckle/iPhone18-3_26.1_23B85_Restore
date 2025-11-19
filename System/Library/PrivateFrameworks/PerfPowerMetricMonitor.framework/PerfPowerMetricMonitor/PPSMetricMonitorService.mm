@interface PPSMetricMonitorService
+ (id)sharedInstance;
- (BOOL)_canStartMonitoringForClient:(id)a3 withError:(id *)a4;
- (BOOL)_getHeadlessClientStatus;
- (BOOL)_hasEntitlements:(id)a3;
- (BOOL)_shouldAcceptNewConnection:(id)a3;
- (BOOL)_shouldAcceptheadlessClientConnection:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PPSMetricMonitorService)init;
- (PPSMetricMonitorServiceDelegate)delegate;
- (double)_postAccountingProcessesForSubsystem:(int64_t)a3 processes:(id)a4 metrics:(id)a5;
- (double)_quantizePowerMetric:(double)a3;
- (id)_checkIfProcessesAreAlive:(id)a3;
- (id)_findProcesses:(id)a3;
- (id)fullProcessNameForPid:(int)a3;
- (void)_addProcessesNeededForAccounting:(id)a3;
- (void)_cancelHeadlessTimeoutTimer;
- (void)_cancelProcessPollingTimer;
- (void)_cancelQueryTimer;
- (void)_collectMetricsAndUpdateHeadlessClient;
- (void)_collectMetricsWithTimeout:(int)a3;
- (void)_emitPowerSignpostWithMetric:(id)a3 value:(id)a4;
- (void)_emitPowerSignpostWithMetric:(id)a3 value:(id)a4 pid:(id)a5;
- (void)_handleConnectionEndedWithClient:(id)a3;
- (void)_pollForProcessNames:(id)a3;
- (void)_sendMetricMonitorTimeoutNotification;
- (void)_startHeadlessTimeoutTimer;
- (void)_startProcessPollingTimer:(id)a3;
- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(unint64_t)a3;
- (void)collectMetricsOnDemand:(id)a3;
- (void)emitPowerMetrics:(id)a3 ofClient:(id)a4;
- (void)emitTracingToolPowerMetrics:(id)a3 ofClient:(id)a4;
- (void)finishMonitoringAndSendMetrics;
- (void)headlessClientMonitoredProcesses:(id)a3;
- (void)isMonitoringForHeadlessWithCompletion:(id)a3;
- (void)setHeadlessQueryTimer:(double)a3;
- (void)setUpWithConfiguration:(id)a3 completion:(id)a4;
- (void)startHeadlessUpdateTimer:(double)a3;
- (void)startMonitoringPids:(id)a3 forClient:(id)a4 withError:(id *)a5;
- (void)startMonitoringProcessWithName:(id)a3 completion:(id)a4;
- (void)startMonitoringProcessWithPID:(id)a3 completion:(id)a4;
- (void)startMonitoringProcessesWithName:(id)a3 completion:(id)a4;
- (void)startMonitoringProcessesWithNames:(id)a3 withPIDs:(id)a4 completion:(id)a5;
- (void)startMonitoringProcessesWithPID:(id)a3 completion:(id)a4;
- (void)startMonitoringSystemMetricsWithCompletion:(id)a3;
- (void)startXPCListener;
- (void)stopMonitoringHeadlessClient;
@end

@implementation PPSMetricMonitorService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PPSMetricMonitorService sharedInstance];
  }

  v3 = sharedInstance_service;

  return v3;
}

uint64_t __41__PPSMetricMonitorService_sharedInstance__block_invoke()
{
  sharedInstance_service = objc_alloc_init(PPSMetricMonitorService);

  return MEMORY[0x2821F96F8]();
}

- (PPSMetricMonitorService)init
{
  v20.receiver = self;
  v20.super_class = PPSMetricMonitorService;
  v2 = [(PPSMetricMonitorService *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    clients = v2->_clients;
    v2->_clients = v3;

    v2->_hasHeadlessClient = 0;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.PerfPowerMetricMonitor.monitorQueue", v5);
    metricQueryQueue = v2->_metricQueryQueue;
    v2->_metricQueryQueue = v6;

    v2->_updateInterval = 0.0;
    v8 = [MEMORY[0x277CBEAA8] distantPast];
    lastQueryDate = v2->_lastQueryDate;
    v2->_lastQueryDate = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    sleepWakeHistory = v2->_sleepWakeHistory;
    v2->_sleepWakeHistory = v10;

    monitoredStartTime = v2->_monitoredStartTime;
    v2->_monitoredStartTime = 0;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    headlessClientTrackedProcesses = v2->_headlessClientTrackedProcesses;
    v2->_headlessClientTrackedProcesses = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"backboardd", @"videocodecd", 0}];
    postAccountingProcessesScreenState = v2->_postAccountingProcessesScreenState;
    v2->_postAccountingProcessesScreenState = v15;

    v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"audiomxd", 0}];
    postAccountingAudio = v2->_postAccountingAudio;
    v2->_postAccountingAudio = v17;
  }

  return v2;
}

- (void)startXPCListener
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isMonitoringForHeadlessWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService isMonitoringForHeadlessWithCompletion:];
  }

  v4[2](v4, [(PPSMetricMonitorService *)self _getHeadlessClientStatus]);
}

- (void)headlessClientMonitoredProcesses:(id)a3
{
  v4 = a3;
  v5 = [(PPSMetricMonitorService *)self metricQueryQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__PPSMetricMonitorService_headlessClientMonitoredProcesses___block_invoke;
  v7[3] = &unk_278847B70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __60__PPSMetricMonitorService_headlessClientMonitoredProcesses___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [v2 objectForKeyedSubscript:&unk_2843008A0];

  if (v3)
  {
    v4 = [*(a1 + 32) clients];
    v9 = [v4 objectForKeyedSubscript:&unk_2843008A0];

    v5 = *(a1 + 40);
    v6 = [v9 monitoredProcessNames];
    v7 = [v6 copy];
    (*(v5 + 16))(v5, v7);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

- (void)stopMonitoringHeadlessClient
{
  v3 = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke;
  block[3] = &unk_278847A30;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke(uint64_t a1)
{
  v2 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) clients];
  v4 = [v3 objectForKeyedSubscript:&unk_2843008A0];

  if (v4)
  {
    [*(a1 + 32) _handleConnectionEndedWithClient:v4];
    [*(a1 + 32) _cancelQueryTimer];
    v5 = [*(a1 + 32) delegate];
    [v5 disableAccounting];
  }

  v6 = [*(a1 + 32) clients];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [*(a1 + 32) delegate];
    [v8 allClientsDidDisconnect];
  }

  [*(a1 + 32) setHasHeadlessClient:0];
  [*(a1 + 32) _cancelHeadlessTimeoutTimer];
  v9 = [*(a1 + 32) monitoredStartTime];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [*(a1 + 32) monitoredStartTime];
    [v10 timeIntervalSinceDate:v11];

    [*(a1 + 32) setMonitoredStartTime:0];
    v12 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke_cold_2();
    }

    AnalyticsSendEventLazy();
  }
}

id __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke_112(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"monitoringDuration";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)_getHeadlessClientStatus
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PPSMetricMonitorService *)self metricQueryQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PPSMetricMonitorService__getHeadlessClientStatus__block_invoke;
  v5[3] = &unk_278847B98;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __51__PPSMetricMonitorService__getHeadlessClientStatus__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasHeadlessClient];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)_postAccountingProcessesForSubsystem:(int64_t)a3 processes:(id)a4 metrics:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    v12 = 0.0;
    v28 = v7;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [(PPSMetricMonitorService *)self delegate];
        v16 = [v15 pidForProcessName:v14];

        if (v16 >= 1)
        {
          v17 = [v8 processMetrics];
          v18 = [MEMORY[0x277CCABB0] numberWithInt:v16];
          v19 = [v17 objectForKey:v18];

          if (v19)
          {
            if (a3 == 1)
            {
              v20 = [v8 processMetrics];
              v21 = [MEMORY[0x277CCABB0] numberWithInt:v16];
              v22 = [v20 objectForKeyedSubscript:v21];
              v23 = [v22 gpuEnergy];
            }

            else
            {
              if (a3)
              {
                continue;
              }

              v20 = [v8 processMetrics];
              v21 = [MEMORY[0x277CCABB0] numberWithInt:v16];
              v22 = [v20 objectForKeyedSubscript:v21];
              v23 = [v22 cpuEnergy];
            }

            v24 = v23;
            v25 = [v23 value];
            v12 = v12 + [v25 unsignedLongLongValue] / 1000000000.0;

            v7 = v28;
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v10)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = 0.0;
LABEL_17:

  v26 = *MEMORY[0x277D85DE8];
  return v12;
}

- (double)_quantizePowerMetric:(double)a3
{
  v3 = a3 * 30.0;
  v4 = [(PPSMetricMonitorService *)self delegate];
  [v4 metricNormalizer];
  v6 = v3 / v5;

  result = 0.0;
  if (v6 >= 0.1)
  {
    result = 0.1;
    if (v6 >= 0.5)
    {
      if (v6 >= 30.0)
      {
        return round((v6 + -30.0) / 3.0) * 3.0 + 30.0;
      }

      else
      {
        return round(v6);
      }
    }
  }

  return result;
}

- (void)emitTracingToolPowerMetrics:(id)a3 ofClient:(id)a4
{
  v260 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(v8);

  v9 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService emitTracingToolPowerMetrics:ofClient:];
  }

  v10 = mach_continuous_time();
  v11 = [(PPSMetricMonitorService *)self previousMct];
  v12 = [(PPSMetricMonitorService *)self delegate];
  v13 = [v12 getMachTimeFromSeconds:1.5];

  v14 = [(PPSMetricMonitorService *)self previousGPUMct];
  v15 = v10 - v13;
  if (v10 < v13)
  {
    v15 = 0;
  }

  v223 = v15;
  v16 = [(PPSMetricMonitorService *)self networkingTrackPreviousMct];
  if (v10 <= v11)
  {
    v112 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService emitTracingToolPowerMetrics:ofClient:];
    }

    [(PPSMetricMonitorService *)self setPreviousMct:v10];
  }

  else
  {
    v17 = v16 + 1;
    if (v16 + 1 >= v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v14 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v14;
    }

    [(PPSMetricMonitorService *)self _updateAndTrimSleepWakeHistoryRelativeTo:v19];
    v20 = [v6 sampleTime];
    [v20 doubleValue];
    v22 = v21;

    [(PPSMetricMonitorService *)self _postAccountingProcessesForSubsystem:0 processes:self->_postAccountingProcessesScreenState metrics:v6];
    v221 = v23;
    [(PPSMetricMonitorService *)self _postAccountingProcessesForSubsystem:1 processes:self->_postAccountingProcessesScreenState metrics:v6];
    v222 = v24;
    [(PPSMetricMonitorService *)self _postAccountingProcessesForSubsystem:0 processes:self->_postAccountingAudio metrics:v6];
    v26 = v25;
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v231 = 0u;
    v151 = v7;
    obj = [v7 monitoredPIDs];
    v27 = [obj countByEnumeratingWithState:&v228 objects:v259 count:16];
    v225 = v10;
    if (v27)
    {
      v28 = v27;
      v218 = 0;
      v214 = 0;
      v152 = v14 + 1;
      v217 = v10 - v17;
      v227 = *v229;
      v215 = self;
      v216 = v6;
      v220 = v14;
      v153 = v17;
      do
      {
        v29 = 0;
        v224 = v28;
        do
        {
          if (*v229 != v227)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v228 + 1) + 8 * v29);
          v31 = [v6 processMetrics];
          v32 = [v31 objectForKey:v30];

          if (v32)
          {
            v33 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
            v34 = [v33 objectForKeyedSubscript:v30];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v34 isEqualToString:@"videocodecd"] & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"backboardd") & 1) == 0 && (objc_msgSend(v34, "isEqualToString:", @"audiomxd") & 1) == 0)
            {
              v35 = [v6 processMetrics];
              v36 = [v35 objectForKeyedSubscript:v30];
              v37 = [v36 weightOnScreen];
              [v37 doubleValue];
              v39 = v38;

              if (v39 <= 0.0)
              {
                v40 = 0.0;
              }

              else
              {
                v40 = v221 * v39;
              }

              if (v39 <= 0.0)
              {
                v41 = 0.0;
              }

              else
              {
                v41 = v222 * v39;
              }

              v42 = [v6 processMetrics];
              v43 = [v42 objectForKeyedSubscript:v30];
              v44 = [v43 audioActive];

              if (v44)
              {
                v45 = v26 + v40;
              }

              else
              {
                v45 = v40;
              }

              v46 = [v6 processMetrics];
              v47 = [v46 objectForKeyedSubscript:v30];
              v48 = [v47 cpuEnergy];
              v49 = [v48 value];
              v50 = [v49 unsignedLongLongValue];

              v51 = [v6 processMetrics];
              v52 = [v51 objectForKeyedSubscript:v30];
              v53 = [v52 gpuEnergy];
              v54 = [v53 value];
              v55 = (v41 + [v54 unsignedLongLongValue] / 1000000000.0) / v22;

              v56 = powerMetricsTotalsLogHandle();
              v57 = [v30 intValue];
              if ((v57 - 1) <= 0xFFFFFFFD)
              {
                v58 = v57;
                if (os_signpost_enabled(v56))
                {
                  spid = v58;
                  v212 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
                  v210 = [v212 objectForKeyedSubscript:v30];
                  v178 = [v210 UTF8String];
                  [(PPSMetricMonitorService *)self _quantizePowerMetric:(v45 + v50 / 1000000000.0) / v22];
                  v177 = v59;
                  [(PPSMetricMonitorService *)self _quantizePowerMetric:v55];
                  v175 = v60;
                  v208 = [v6 processMetrics];
                  v206 = [v208 objectForKeyedSubscript:v30];
                  v204 = [v206 qosUtility];
                  [v204 doubleValue];
                  v173 = v61;
                  v202 = [v6 processMetrics];
                  v200 = [v202 objectForKeyedSubscript:v30];
                  v198 = [v200 qosBackground];
                  [v198 doubleValue];
                  v170 = v62;
                  v196 = [v6 processMetrics];
                  v194 = [v196 objectForKeyedSubscript:v30];
                  v192 = [v194 qosUserInitiated];
                  [v192 doubleValue];
                  v167 = v63;
                  v190 = [v6 processMetrics];
                  v188 = [v190 objectForKeyedSubscript:v30];
                  v184 = [v188 qosUserInteractive];
                  [v184 doubleValue];
                  v164 = v64;
                  v183 = [v6 processMetrics];
                  v182 = [v183 objectForKeyedSubscript:v30];
                  v181 = [v182 cpuInstructions];
                  v180 = [v181 value];
                  v161 = [v180 unsignedLongLongValue];
                  v179 = [v6 processMetrics];
                  v176 = [v179 objectForKeyedSubscript:v30];
                  v174 = [v176 aneTime];
                  [v174 doubleValue];
                  v159 = v65;
                  v172 = [v6 processMetrics];
                  v171 = [v172 objectForKeyedSubscript:v30];
                  v169 = [v171 locationDesiredAccuracy];
                  [v169 doubleValue];
                  v66 = v26;
                  v68 = v67;
                  v168 = [v6 processMetrics];
                  v166 = [v168 objectForKeyedSubscript:v30];
                  v165 = [v166 applicationState];
                  v155 = [v165 intValue];
                  v163 = [v6 processMetrics];
                  v162 = [v163 objectForKeyedSubscript:v30];
                  v160 = [v162 displayPower];
                  [v160 doubleValue];
                  [(PPSMetricMonitorService *)self _quantizePowerMetric:v69 / v22];
                  v70 = v22;
                  v72 = v71;
                  v154 = [(PPSMetricMonitorService *)self previousMct]+ 1;
                  v158 = [v6 processMetrics];
                  v157 = [v158 objectForKeyedSubscript:v30];
                  v156 = [v157 qosDefault];
                  [v156 doubleValue];
                  v74 = v73;
                  v75 = [v6 processMetrics];
                  v76 = [v75 objectForKeyedSubscript:v30];
                  [v76 qosMaintenance];
                  v78 = v77 = v56;
                  [v78 doubleValue];
                  v79 = v55;
                  v81 = v80;
                  v82 = [v6 processMetrics];
                  v83 = [v82 objectForKeyedSubscript:v30];
                  v84 = [v83 qosUnspecified];
                  [v84 doubleValue];
                  *buf = 136450306;
                  v233 = v178;
                  v234 = 2050;
                  v235 = v177;
                  v236 = 2050;
                  v237 = v175;
                  v238 = 2050;
                  *v239 = v173;
                  *&v239[8] = 2050;
                  *v240 = v170;
                  *&v240[8] = 2050;
                  *&v240[10] = v167;
                  *&v240[18] = 2050;
                  *&v240[20] = v164;
                  *&v240[28] = 2050;
                  *&v240[30] = v161;
                  v241 = 2050;
                  v242 = v159;
                  v243 = 2050;
                  v244 = v68;
                  v26 = v66;
                  v245 = 1026;
                  v246 = v155;
                  v247 = 2050;
                  v248 = v72;
                  v22 = v70;
                  v249 = 2050;
                  v250 = v154;
                  v251 = 2050;
                  v252 = v225;
                  v253 = 2050;
                  v254 = v74;
                  v255 = 2050;
                  v256 = v81;
                  v55 = v79;
                  v257 = 2050;
                  v258 = v85;
                  _os_signpost_emit_with_name_impl(&dword_22E4FA000, v77, OS_SIGNPOST_EVENT, spid, "Per-app subsystem power", "Process name: %{public}s\nSignpost ID is PID\nCPU Power Impact = %{public, name=CPU_Power_Impact}.2f\nGPU Power Impact = %{public, name=GPU_Power_Impact}.2f\nQOS Utility = %{public, name=QOS_Utility, units=s}.2f s\nQOS Background = %{public, name=QOS_Background, units=s}.2f s\nQOS User Initiated = %{public, name=QOS_User_Initiated, units=s}.2f s\nQOS User Interactive = %{public, name=QOS_User_Interactive, units=s}.2f s\nCPU Instructions = %{public, name=CPU_Instructions}lld \nANE Time = %{public, name=ANE_Time, units=s}.2f s \nLocation Desired Accuracy = %{public, name=Location_Desired_Accuracy}.2f \nApplication State = %{public, name=Application_State}d \nDisplay Power Impact = %{public, name=Display_Power_Impact}.2f\n%{public, signpost.description:begin_time}llu\n%{public, signpost.description:end_time}llu\nQOS Default = %{public, name=QOS_Default, units=s}.2f s\nQOS Maintenance = %{public, name=QOS_Maintenance, units=s}.2f s\nQOS Unspecified = %{public, name=QOS_Unspecified, units=s}.2f s\n", buf, 0xA8u);

                  v6 = v216;
                  v56 = v77;

                  self = v215;
                }
              }

              v28 = v224;
              if (v223 > v220)
              {
                v86 = powerMetricsTotalsLogHandle();
                v87 = [v30 intValue];
                if ((v87 - 1) <= 0xFFFFFFFD)
                {
                  v88 = v87;
                  if (os_signpost_enabled(v86))
                  {
                    v89 = v88;
                    v90 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
                    v91 = [v90 objectForKeyedSubscript:v30];
                    *&v92 = COERCE_DOUBLE([v91 UTF8String]);
                    [(PPSMetricMonitorService *)self _quantizePowerMetric:v55];
                    *buf = 134349826;
                    v233 = v152;
                    v234 = 2050;
                    v235 = v223;
                    v236 = 2082;
                    v237 = *&v92;
                    v28 = v224;
                    v238 = 2050;
                    *v239 = v93;
                    _os_signpost_emit_with_name_impl(&dword_22E4FA000, v86, OS_SIGNPOST_EVENT, v89, "Per-app GPU power impact", "%{public, signpost.description:begin_time}llu\n%{public, signpost.description:end_time}llu\nProcess name: %{public}s\nSignpost ID is PID\nGPU Power Impact = %{public, name=GPU_Power_Impact}.2f\n", buf, 0x2Au);
                  }
                }

                v214 = 1;
              }

              v94 = [v6 processMetrics];
              v95 = [v94 objectForKeyedSubscript:v30];
              v96 = [v95 networkingPower];

              if (v96)
              {
                v97 = [(PPSMetricMonitorService *)self delegate];
                [v97 getSecondsFromMachTime:v217];
                v99 = v98;

                v100 = powerMetricsTotalsLogHandle();
                v101 = [v30 intValue];
                if ((v101 - 1) <= 0xFFFFFFFD)
                {
                  v102 = v101;
                  if (os_signpost_enabled(v100))
                  {
                    v203 = v102;
                    v219 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
                    v213 = [v219 objectForKeyedSubscript:v30];
                    *&v193 = COERCE_DOUBLE([v213 UTF8String]);
                    v211 = [v6 processMetrics];
                    v209 = [v211 objectForKeyedSubscript:v30];
                    v207 = [v209 wifiIn];
                    v189 = [v207 intValue];
                    v205 = [v6 processMetrics];
                    v201 = [v205 objectForKeyedSubscript:v30];
                    v199 = [v201 wifiOut];
                    spida = [v199 intValue];
                    v197 = [v6 processMetrics];
                    v195 = [v197 objectForKeyedSubscript:v30];
                    v191 = [v195 cellIn];
                    v185 = [v191 intValue];
                    v103 = [v6 processMetrics];
                    v104 = [v103 objectForKeyedSubscript:v30];
                    v105 = [v104 cellOut];
                    v106 = [v105 intValue];
                    v107 = [v216 processMetrics];
                    v108 = [v107 objectForKeyedSubscript:v30];
                    v109 = [v108 networkingPower];
                    [v109 doubleValue];
                    [(PPSMetricMonitorService *)v215 _quantizePowerMetric:v110 / v99];
                    *buf = 134350850;
                    v233 = v153;
                    v234 = 2050;
                    v235 = v225;
                    v236 = 2082;
                    v237 = *&v193;
                    v238 = 1026;
                    *v239 = v189;
                    *&v239[4] = 1026;
                    *&v239[6] = spida;
                    *v240 = 1026;
                    *&v240[2] = v185;
                    *&v240[6] = 1026;
                    *&v240[8] = v106;
                    v6 = v216;
                    *&v240[12] = 2050;
                    *&v240[14] = v111;
                    _os_signpost_emit_with_name_impl(&dword_22E4FA000, v100, OS_SIGNPOST_EVENT, v203, "Per-app networking power", "%{public, signpost.description:begin_time}llu\n%{public, signpost.description:end_time}llu\nProcess name: %{public}s\nSignpost ID is PID\nWifi In = %{public, name=Wifi_In, units=B}d B\nWifi Out = %{public, name=Wifi_Out, units=B}d B\nCellular In = %{public, name=Cellular_In, units=B}d B\nCellular Out = %{public, name=Cellular_Out, units=B}d B\nNetworking Power Impact = %{public, name=Networking_Power_Impact}.2f\n", buf, 0x42u);

                    self = v215;
                    v28 = v224;
                  }
                }

                v218 = 1;
              }

              v10 = v225;
            }
          }

          ++v29;
        }

        while (v28 != v29);
        v28 = [obj countByEnumeratingWithState:&v228 objects:v259 count:16];
      }

      while (v28);
    }

    else
    {
      v218 = 0;
      v214 = 0;
    }

    v113 = [(PPSMetricMonitorService *)self delegate];
    v114 = [v113 isPluggedIn];

    v115 = 0.0;
    if ((v114 & 1) == 0)
    {
      v116 = [(PPSMetricMonitorService *)self delegate];
      [v116 batteryCapacity];
      v118 = v117;

      v119 = [v6 systemLoadPower];
      [v119 doubleValue];
      v121 = v120 * 1000.0 / v118 * 100.0;

      v115 = v121 / v22;
    }

    v122 = [(PPSMetricMonitorService *)self delegate];
    [v122 brightnessPercent];
    v124 = v123;

    v125 = powerMetricsTotalsLogHandle();
    if (os_signpost_enabled(v125))
    {
      v126 = [(PPSMetricMonitorService *)self previousMct]+ 1;
      v127 = [v6 thermalPressure];
      v128 = [v6 displayAPL];
      [v128 doubleValue];
      v130 = v129;
      v131 = [v6 displayFPS];
      [v131 doubleValue];
      *buf = 134350848;
      v233 = v126;
      v234 = 2050;
      v235 = v225;
      v236 = 2050;
      v237 = v115;
      v238 = 2050;
      *v239 = v127;
      *&v239[8] = 1026;
      *v240 = v114;
      *&v240[4] = 2050;
      *&v240[6] = v130;
      *&v240[14] = 2050;
      *&v240[16] = v132;
      *&v240[24] = 2050;
      *&v240[26] = round(v124 * 100.0);
      _os_signpost_emit_with_name_impl(&dword_22E4FA000, v125, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SystemMetrics", "%{public, signpost.description:begin_time}llu\n%{public, signpost.description:end_time}llu\nSystem Power Usage (sampled power) = %{public, name=System_Power_Usage, units=%/hr}.2f %%/hr\nThermal State = %{public, name=Thermal_State}ld \nCharging Status = %{public, name=Charging_State}d \nDisplay APL = %{public, name=Display_APL}.2f \nFrame Rate = %{public, name=Frame_Rate, units =fps}.2f FPS \nDisplay Brightness Percentage = %{public, name=Display_Brightness_Percentage, units=%}.2f %%\n", buf, 0x4Eu);

      v10 = v225;
    }

    v133 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService emitTracingToolPowerMetrics:v6 ofClient:?];
    }

    v134 = PPSMetricMonitorLogHandleForCategory(2);
    v7 = v151;
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService emitTracingToolPowerMetrics:v6 ofClient:?];
    }

    v135 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService emitTracingToolPowerMetrics:v6 ofClient:?];
    }

    [(PPSMetricMonitorService *)self setPreviousMct:v10];
    if (v218)
    {
      [(PPSMetricMonitorService *)self setNetworkingTrackPreviousMct:v10];
    }

    if (v214)
    {
      [(PPSMetricMonitorService *)self setPreviousGPUMct:v223];
    }

    v136 = [(PPSMetricMonitorService *)self sleepWakeHistory];
    v137 = [v136 lastObject];
    if (!v137)
    {
      goto LABEL_72;
    }

    v138 = v137;
    v139 = [(PPSMetricMonitorService *)self sleepWakeHistory];
    v140 = [v139 lastObject];
    v141 = [v140 isEmitted];

    if ((v141 & 1) == 0)
    {
      v142 = powerMetricsTotalsLogHandle();
      if (os_signpost_enabled(v142))
      {
        v143 = [(PPSMetricMonitorService *)self sleepWakeHistory];
        v144 = [v143 lastObject];
        v145 = [v144 sleepTime];
        v146 = [(PPSMetricMonitorService *)self sleepWakeHistory];
        v147 = [v146 lastObject];
        v148 = [v147 wakeTime];
        *buf = 134349312;
        v233 = v145;
        v234 = 2050;
        v235 = v148;
        _os_signpost_emit_with_name_impl(&dword_22E4FA000, v142, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DidSleep", "%{public, signpost.description:begin_time}llu\n%{public, signpost.description:end_time}llu\n", buf, 0x16u);
      }

      v136 = [(PPSMetricMonitorService *)self sleepWakeHistory];
      v149 = [v136 lastObject];
      [v149 setIsEmitted:1];

LABEL_72:
    }
  }

  v150 = *MEMORY[0x277D85DE8];
}

- (void)emitPowerMetrics:(id)a3 ofClient:(id)a4
{
  v123 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService emitPowerMetrics:ofClient:];
  }

  v9 = [v6 displayPower];
  v10 = [v9 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Display_Power_W" value:v10];

  v11 = [v6 displayAPL];
  v12 = [v11 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Display_APL" value:v12];

  v13 = [v6 dramPower];
  v14 = [v13 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"DRAM_Power_W" value:v14];

  v15 = [v6 otherSocPower];
  v16 = [v15 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Other_SoC_Power_W" value:v16];

  v17 = [v6 cpuPower];
  v18 = [v17 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"CPU_Power_W" value:v18];

  v19 = [v6 gpuPower];
  v20 = [v19 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"GPU_Power_W" value:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "thermalPressure")}];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Thermal_State" value:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "inducedThermalPressure")}];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Induced_Thermal_State" value:v22];

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v110 = v7;
  obj = [v7 monitoredPIDs];
  v23 = [obj countByEnumeratingWithState:&v117 objects:v122 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v118;
    do
    {
      v26 = 0;
      do
      {
        if (*v118 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v117 + 1) + 8 * v26);
        v28 = [v6 processMetrics];
        v29 = [v28 objectForKeyedSubscript:v27];
        v30 = [v29 gpuCost];
        v31 = [v30 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"GPU_Cost" value:v31 pid:v27];

        v32 = [v6 processMetrics];
        v33 = [v32 objectForKeyedSubscript:v27];
        v34 = [v33 gpuTime];
        v35 = [v34 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"GPU_Time" value:v35 pid:v27];

        v36 = [v6 processMetrics];
        v37 = [v36 objectForKeyedSubscript:v27];
        v38 = [v37 cpuInstructions];
        v39 = [v38 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"CPU_Inst" value:v39 pid:v27];

        v40 = [v6 processMetrics];
        v41 = [v40 objectForKeyedSubscript:v27];
        v42 = [v41 cpuPInstructions];
        v43 = [v42 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"CPU_PInst" value:v43 pid:v27];

        v44 = [v6 processMetrics];
        v45 = [v44 objectForKeyedSubscript:v27];
        v46 = [v45 bytesRead];
        v47 = [v46 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Disk_Read" value:v47 pid:v27];

        v48 = [v6 processMetrics];
        v49 = [v48 objectForKeyedSubscript:v27];
        v50 = [v49 bytesWritten];
        v51 = [v50 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Disk_Write" value:v51 pid:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [obj countByEnumeratingWithState:&v117 objects:v122 count:16];
    }

    while (v24);
  }

  v52 = [v6 batteryPower];
  v53 = [v52 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Battery_Power_W" value:v53];

  v54 = [v6 dcInputPower];
  v55 = [v54 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"DC_Input_Power_W" value:v55];

  v56 = [v6 chargingRate];
  v57 = [v56 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Charging_Rate_mA" value:v57];

  v58 = [v6 cellularPower];
  v59 = [v58 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Cellular_Power_W" value:v59];

  v60 = [v6 skinTemperature];
  v61 = [v60 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Skin_Temp_C" value:v61];

  v62 = [v6 batteryTemperature];
  v63 = [v62 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Battery_Temp_C" value:v63];

  v64 = [v6 systemLoadPower];
  v65 = [v64 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"System_Load_Power_W" value:v65];

  v66 = [v6 wifiPower];
  v67 = [v66 value];
  [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"WiFi_Power_W" value:v67];

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obja = [v110 monitoredPIDs];
  v68 = [obja countByEnumeratingWithState:&v113 objects:v121 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v114;
    do
    {
      v71 = 0;
      do
      {
        if (*v114 != v70)
        {
          objc_enumerationMutation(obja);
        }

        v72 = *(*(&v113 + 1) + 8 * v71);
        v73 = [v6 processMetrics];
        v74 = [v73 objectForKeyedSubscript:v72];
        v75 = [v74 energyCost];
        v76 = [v75 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Energy_Cost" value:v76 pid:v72];

        v77 = [v6 processMetrics];
        v78 = [v77 objectForKeyedSubscript:v72];
        v79 = [v78 energyOverhead];
        v80 = [v79 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Energy_Overhead" value:v80 pid:v72];

        v81 = [v6 processMetrics];
        v82 = [v81 objectForKeyedSubscript:v72];
        v83 = [v82 applicationState];
        v84 = [v83 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Application_State" value:v84 pid:v72];

        v85 = [v6 processMetrics];
        v86 = [v85 objectForKeyedSubscript:v72];
        v87 = [v86 ongoingLocation];
        v88 = [v87 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Ongoing_Location" value:v88 pid:v72];

        v89 = [v6 processMetrics];
        v90 = [v89 objectForKeyedSubscript:v72];
        v91 = [v90 locationCost];
        v92 = [v91 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Location_Cost" value:v92 pid:v72];

        v93 = [v6 processMetrics];
        v94 = [v93 objectForKeyedSubscript:v72];
        v95 = [v94 wifiIn];
        v96 = [v95 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"WiFi_In" value:v96 pid:v72];

        v97 = [v6 processMetrics];
        v98 = [v97 objectForKeyedSubscript:v72];
        v99 = [v98 wifiOut];
        v100 = [v99 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"WiFi_Out" value:v100 pid:v72];

        v101 = [v6 processMetrics];
        v102 = [v101 objectForKeyedSubscript:v72];
        v103 = [v102 cellIn];
        v104 = [v103 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Cell_In" value:v104 pid:v72];

        v105 = [v6 processMetrics];
        v106 = [v105 objectForKeyedSubscript:v72];
        v107 = [v106 cellOut];
        v108 = [v107 value];
        [(PPSMetricMonitorService *)self _emitPowerSignpostWithMetric:@"Cell_Out" value:v108 pid:v72];

        ++v71;
      }

      while (v69 != v71);
      v69 = [obja countByEnumeratingWithState:&v113 objects:v121 count:16];
    }

    while (v69);
  }

  v109 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldAcceptNewConnection:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 processIdentifier];
  v6 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v5;
    _os_log_impl(&dword_22E4FA000, v6, OS_LOG_TYPE_DEFAULT, "New client connection from PID %d", &buf, 8u);
  }

  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284301658];
  [v4 setRemoteObjectInterface:v7];

  v8 = [v4 remoteObjectInterface];
  v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v8 setClasses:v9 forSelector:sel_updateWithMetricCollection_ argumentIndex:0 ofReply:0];

  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284302200];
  [v4 setExportedInterface:v10];

  v11 = [v4 exportedInterface];
  v12 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v11 setClasses:v12 forSelector:sel_setUpWithConfiguration_completion_ argumentIndex:0 ofReply:0];

  [v4 setExportedObject:self];
  v13 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_245];
  v14 = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_246;
  block[3] = &unk_278847BC0;
  block[4] = self;
  v32 = v5;
  v15 = v4;
  v30 = v15;
  v16 = v13;
  v31 = v16;
  dispatch_sync(v14, block);

  objc_initWeak(&buf, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_248;
  v26[3] = &unk_278847C10;
  v28 = v5;
  v26[4] = self;
  objc_copyWeak(&v27, &buf);
  [v15 setInterruptionHandler:v26];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_2;
  v22 = &unk_278847C10;
  v25 = v5;
  v23 = self;
  objc_copyWeak(&v24, &buf);
  [v15 setInvalidationHandler:&v19];
  [v15 resume];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&buf);

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__PPSMetricMonitor__setUpXPCConnectionWithConfig___block_invoke_cold_1();
  }
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_246(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [[PPSClient alloc] initWithConnection:*(a1 + 40) remoteProxy:*(a1 + 48)];
  v3 = [*(a1 + 32) clients];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 56);
    v7 = [*(a1 + 32) clients];
    v8 = [v7 allKeys];
    v10[0] = 67109378;
    v10[1] = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_DEFAULT, "New client connection from PID %d. Current clients: %@", v10, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_248(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&dword_22E4FA000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection from PID: %d interrupted", buf, 8u);
  }

  v4 = [*(a1 + 32) metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_249;
  block[3] = &unk_278847BE8;
  objc_copyWeak(&v7, (a1 + 40));
  v8 = *(a1 + 48);
  block[4] = *(a1 + 32);
  dispatch_sync(v4, block);

  objc_destroyWeak(&v7);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_249(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained clients];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v13 = [v3 objectForKeyedSubscript:v4];

  if (v13)
  {
    v5 = [v13 config];
    v6 = [v5 isHeadless];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = [v7 clients];
      [v8 setObject:v13 forKeyedSubscript:&unk_2843008A0];

      v9 = [*(a1 + 32) clients];
      v10 = MEMORY[0x277CCABB0];
      v11 = [v13 connection];
      v12 = [v10 numberWithInt:{objc_msgSend(v11, "processIdentifier")}];
      [v9 removeObjectForKey:v12];
    }

    else
    {
      [v7 _handleConnectionEndedWithClient:v13];
    }
  }
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = PPSMetricMonitorLogHandleForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&dword_22E4FA000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection from PID %d invalidated", buf, 8u);
  }

  v4 = [*(a1 + 32) metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_250;
  block[3] = &unk_278847BE8;
  objc_copyWeak(&v7, (a1 + 40));
  v8 = *(a1 + 48);
  block[4] = *(a1 + 32);
  dispatch_sync(v4, block);

  objc_destroyWeak(&v7);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__PPSMetricMonitorService__shouldAcceptNewConnection___block_invoke_250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained clients];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v17 = [v3 objectForKeyedSubscript:v4];

  if (v17)
  {
    v5 = [v17 config];
    v6 = [v5 isHeadless];

    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = [v7 clients];
      [v8 setObject:v17 forKeyedSubscript:&unk_2843008A0];

      v9 = [*(a1 + 32) clients];
      v10 = MEMORY[0x277CCABB0];
      v11 = [v17 connection];
      v12 = [v10 numberWithInt:{objc_msgSend(v11, "processIdentifier")}];
      [v9 removeObjectForKey:v12];
    }

    else
    {
      [v7 _handleConnectionEndedWithClient:v17];
    }
  }

  v13 = [*(a1 + 32) clients];
  v14 = [v13 count];

  if (!v14)
  {
    v15 = objc_loadWeakRetained((a1 + 40));
    v16 = [v15 delegate];
    [v16 allClientsDidDisconnect];
  }
}

- (BOOL)_shouldAcceptheadlessClientConnection:(id)a3
{
  v4 = a3;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _shouldAcceptheadlessClientConnection:];
  }

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2843022E8];
  [v4 setExportedInterface:v6];

  [v4 setExportedObject:self];
  [v4 resume];

  return 1;
}

- (void)_collectMetricsWithTimeout:(int)a3
{
  v5 = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _collectMetricsWithTimeout:];
  }

  v7 = [(PPSMetricMonitorService *)self lastQueryDate];
  [v7 timeIntervalSinceNow];
  v9 = v8;

  if (v9 < -0.1)
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [(PPSMetricMonitorService *)self setLastQueryDate:v10];

    v11 = [(PPSMetricMonitorService *)self delegate];
    v12 = [v11 collectMetricsWithTimeout:a3];

    v13 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService _collectMetricsWithTimeout:];
    }

    v14 = [(PPSMetricMonitorService *)self clients];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke;
    v16[3] = &unk_278847C38;
    v17 = v12;
    v15 = v12;
    [v14 enumerateKeysAndObjectsUsingBlock:v16];
  }
}

void __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 clientMetrics];

  if (!v7)
  {
    v8 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke_cold_1();
    }

    v9 = objc_alloc_init(PPSMetricCollection);
    [v6 setClientMetrics:v9];

    v10 = [v6 clientMetrics];
    v11 = [v6 monitoredPIDs];
    [v10 clearMetrics:v11];
  }

  v12 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke_cold_2();
  }

  v13 = [v6 clientMetrics];
  v14 = *(a1 + 32);
  v15 = [v6 monitoredPIDs];
  [v13 combineWithMetricCollection:v14 trackedPids:v15];
}

- (void)_collectMetricsAndUpdateHeadlessClient
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_cancelQueryTimer
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)startHeadlessUpdateTimer:(double)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = a3;
    _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Starting headless update timer with interval: %f", buf, 0xCu);
  }

  [(PPSMetricMonitorService *)self _cancelQueryTimer];
  v6 = [(PPSMetricMonitorService *)self metricQueryQueue];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v6);
  [(PPSMetricMonitorService *)self setHeadlessUpdateTimer:v7];

  v8 = [(PPSMetricMonitorService *)self headlessUpdateTimer];
  dispatch_source_set_timer(v8, 0, (a3 * 1000000000.0), 0x989680uLL);

  v9 = [(PPSMetricMonitorService *)self headlessUpdateTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__PPSMetricMonitorService_startHeadlessUpdateTimer___block_invoke;
  handler[3] = &unk_278847A30;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);

  v10 = [MEMORY[0x277CBEAA8] date];
  [(PPSMetricMonitorService *)self setMonitoredStartTime:v10];

  v11 = [(PPSMetricMonitorService *)self headlessUpdateTimer];
  dispatch_resume(v11);

  v12 = *MEMORY[0x277D85DE8];
}

void __52__PPSMetricMonitorService_startHeadlessUpdateTimer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [v2 objectForKeyedSubscript:&unk_2843008A0];

  v4 = [*(a1 + 32) _checkIfProcessesAreAlive:v3];
  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    v7 = 0;
    [v5 addMonitoredProcessesWithPIDs:v4 error:&v7];
  }

  [*(a1 + 32) _collectMetricsAndUpdateHeadlessClient];
  v6 = [v3 monitoredPIDs];
  [v6 addObjectsFromArray:v4];
}

- (void)setHeadlessQueryTimer:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a3;
    _os_log_impl(&dword_22E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Starting headless query timer with interval: %f", &v11, 0xCu);
  }

  v6 = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(v6);

  if (a3 < 0.2)
  {
    v7 = PPSMetricMonitorLogHandleForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitorService setHeadlessQueryTimer:];
    }
  }

  v8 = [(PPSMetricMonitorService *)self headlessUpdateTimer];

  if (v8)
  {
    [(PPSMetricMonitorService *)self setUpdateInterval:a3];
    v9 = [(PPSMetricMonitorService *)self headlessUpdateTimer];
    dispatch_source_set_timer(v9, 0, (a3 * 1000000000.0), 0x989680uLL);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 serviceName];
  v7 = [v6 isEqualToString:@"com.apple.PerfPowerMetricMonitor.xpc"];

  if (v7)
  {
    v8 = [(PPSMetricMonitorService *)self _shouldAcceptNewConnection:v5];
  }

  else
  {
    v9 = [v5 serviceName];
    v10 = [v9 isEqualToString:@"com.apple.PerfPowerMetricMonitorHeadless.xpc"];

    if (!v10)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v8 = [(PPSMetricMonitorService *)self _shouldAcceptheadlessClientConnection:v5];
  }

  v11 = v8;
LABEL_7:

  return v11;
}

- (void)setUpWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCAE80];
  v8 = a4;
  v9 = [v7 currentConnection];
  v10 = [v9 processIdentifier];

  v11 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService setUpWithConfiguration:completion:];
  }

  v12 = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PPSMetricMonitorService_setUpWithConfiguration_completion___block_invoke;
  block[3] = &unk_278847C60;
  v16 = v10;
  block[4] = self;
  v15 = v6;
  v13 = v6;
  dispatch_sync(v12, block);

  v8[2](v8);
}

void __61__PPSMetricMonitorService_setUpWithConfiguration_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v6 = [v2 objectForKeyedSubscript:v3];

  [v6 setConfig:*(a1 + 40)];
  v4 = [*(a1 + 32) delegate];
  LOBYTE(v3) = [v4 isMonitoringMetrics];

  if ((v3 & 1) == 0)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 setUpForMonitoring];
  }
}

- (void)startMonitoringSystemMetricsWithCompletion:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [v5 processIdentifier];

  v7 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&dword_22E4FA000, v7, OS_LOG_TYPE_DEFAULT, "Start monitoring system metrics was called by client: %d", buf, 8u);
  }

  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v8 = [(PPSMetricMonitorService *)self metricQueryQueue];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __70__PPSMetricMonitorService_startMonitoringSystemMetricsWithCompletion___block_invoke;
  v18 = &unk_278847C88;
  v21 = buf;
  v22 = &v23;
  v19 = self;
  v9 = v4;
  v20 = v9;
  dispatch_sync(v8, &v15);

  if (!v24[5])
  {
    v10 = [*(v30 + 5) config];
    if ([v10 isHeadless])
    {
      v11 = [*(v30 + 5) config];
      v12 = [v11 mode] == 0;

      if (v12)
      {
        self->_previousMct = mach_continuous_time();
        v13 = [*(v30 + 5) config];
        [v13 updateInterval];
        [(PPSMetricMonitorService *)self startHeadlessUpdateTimer:?];

        [(PPSMetricMonitorService *)self _startHeadlessTimeoutTimer];
      }
    }

    else
    {
    }

    (*(v9 + 2))(v9, 0);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(buf, 8);

  v14 = *MEMORY[0x277D85DE8];
}

void __70__PPSMetricMonitorService_startMonitoringSystemMetricsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCAE80] currentConnection];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
  v6 = [v2 objectForKeyedSubscript:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *(a1 + 32);
  v12 = *(*(*(a1 + 48) + 8) + 40);
  v13 = *(*(a1 + 56) + 8);
  obj = *(v13 + 40);
  LOBYTE(v5) = [v11 _canStartMonitoringForClient:v12 withError:&obj];
  objc_storeStrong((v13 + 40), obj);
  if (v5)
  {
    v14 = [*(a1 + 32) delegate];
    v15 = [v14 isMonitoringMetrics];

    if ((v15 & 1) == 0)
    {
      v16 = [*(a1 + 32) delegate];
      [v16 startMonitoring];
    }
  }

  else
  {
    v17 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 40) + 16))();
  }
}

- (void)startMonitoringProcessWithPID:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(PPSMetricMonitorService *)self startMonitoringProcessesWithPID:v9 completion:v7, v11, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringProcessesWithPID:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAE80] currentConnection];
  v9 = [v8 processIdentifier];

  v10 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = v9;
    LOWORD(v31) = 2112;
    *(&v31 + 2) = v6;
    _os_log_impl(&dword_22E4FA000, v10, OS_LOG_TYPE_DEFAULT, "Start monitoring processes with pids was called by client: %d PID: %@", buf, 0x12u);
  }

  *buf = 0;
  *&v31 = buf;
  *(&v31 + 1) = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v11 = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke;
  block[3] = &unk_278847CB0;
  v22 = buf;
  v23 = &v24;
  block[4] = self;
  v12 = v7;
  v21 = v12;
  v13 = v6;
  v20 = v13;
  dispatch_sync(v11, block);

  if (!v25[5])
  {
    v14 = [*(v31 + 40) config];
    if ([v14 isHeadless])
    {
      v15 = [*(v31 + 40) config];
      v16 = [v15 mode] == 0;

      if (v16)
      {
        v17 = [*(v31 + 40) config];
        [v17 updateInterval];
        [(PPSMetricMonitorService *)self startHeadlessUpdateTimer:?];

        [(PPSMetricMonitorService *)self _startHeadlessTimeoutTimer];
      }
    }

    else
    {
    }

    (*(v12 + 2))(v12, 0);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clients];
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCAE80] currentConnection];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
  v6 = [v2 objectForKeyedSubscript:v5];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(*(*(a1 + 56) + 8) + 40) config];
  LODWORD(v5) = [v9 isHeadless];

  if (v5)
  {
    *(*(a1 + 32) + 32) = mach_continuous_time();
    *(*(a1 + 32) + 40) = mach_continuous_time();
    *(*(a1 + 32) + 48) = mach_continuous_time();
  }

  v10 = *(a1 + 32);
  v11 = *(*(*(a1 + 56) + 8) + 40);
  v12 = *(*(a1 + 64) + 8);
  obj = *(v12 + 40);
  v13 = [v10 _canStartMonitoringForClient:v11 withError:&obj];
  objc_storeStrong((v12 + 40), obj);
  if (v13)
  {
    v14 = [*(a1 + 40) mutableCopy];
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [*(*(*(a1 + 56) + 8) + 40) setMonitoredProcessNames:v15];

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [*(*(*(a1 + 56) + 8) + 40) setRequestedProcessNames:v16];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v59;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v59 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v58 + 1) + 8 * i);
          v23 = [*(a1 + 32) fullProcessNameForPid:{objc_msgSend(v22, "intValue")}];
          if (v23)
          {
            v24 = [*(*(*(a1 + 56) + 8) + 40) monitoredProcessNames];
            [v24 addObject:v23];

            v25 = [*(a1 + 32) headlessClientTrackedProcesses];
            [v25 setObject:v23 forKeyedSubscript:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v19);
    }

    v26 = [*(*(*(a1 + 56) + 8) + 40) config];
    v27 = [v26 isHeadless];

    if (v27)
    {
      v52 = [MEMORY[0x277CBEB58] set];
      [*(a1 + 32) _addProcessesNeededForAccounting:*(*(*(a1 + 56) + 8) + 40)];
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v28 = [*(*(*(a1 + 56) + 8) + 40) requestedProcessNames];
      v29 = [v28 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v55;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v55 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v54 + 1) + 8 * j);
            v34 = [*(a1 + 32) delegate];
            v35 = [v34 pidForProcessName:v33];

            if (v35 >= 1)
            {
              v36 = [MEMORY[0x277CCABB0] numberWithInt:v35];
              [v17 addObject:v36];

              [v52 addObject:v33];
              v37 = [*(a1 + 32) headlessClientTrackedProcesses];
              v38 = [MEMORY[0x277CCABB0] numberWithInt:v35];
              [v37 setObject:v33 forKeyedSubscript:v38];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v30);
      }

      v39 = [*(*(*(a1 + 56) + 8) + 40) requestedProcessNames];
      [v39 minusSet:v52];
    }

    v40 = [*(*(*(a1 + 56) + 8) + 40) config];
    v41 = [v40 includeBackBoardUsage];

    if (v41)
    {
      v42 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke_cold_1();
      }

      v43 = MEMORY[0x277CCABB0];
      v44 = [*(a1 + 32) delegate];
      v45 = [v43 numberWithInt:{objc_msgSend(v44, "pidForProcessName:", @"backboardd"}];
      [v17 addObject:v45];
    }

    v46 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke_cold_2();
    }

    v47 = *(a1 + 32);
    v48 = *(*(*(a1 + 56) + 8) + 40);
    v49 = *(*(a1 + 64) + 8);
    v53 = *(v49 + 40);
    [v47 startMonitoringPids:v17 forClient:v48 withError:&v53];
    objc_storeStrong((v49 + 40), v53);
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v50 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringProcessWithName:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(PPSMetricMonitorService *)self startMonitoringProcessesWithName:v9 completion:v7, v11, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_addProcessesNeededForAccounting:(id)a3
{
  v7 = a3;
  v3 = [v7 config];
  if ([v3 isHeadless])
  {
    v4 = [v7 requestedProcessNames];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = [v7 requestedProcessNames];
    [v5 addObject:@"backboardd"];

    v6 = [v7 requestedProcessNames];
    [v6 addObject:@"videocodecd"];

    v3 = [v7 requestedProcessNames];
    [v3 addObject:@"audiomxd"];
  }

LABEL_5:
}

- (void)startMonitoringProcessesWithName:(id)a3 completion:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CCAE80] currentConnection];
  v7 = [v6 processIdentifier];

  v8 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = v7;
    LOWORD(v59) = 2112;
    *(&v59 + 2) = v32;
    _os_log_impl(&dword_22E4FA000, v8, OS_LOG_TYPE_DEFAULT, "Start monitoring processes with names was called by client: %d processName: %@ ", buf, 0x12u);
  }

  *buf = 0;
  *&v59 = buf;
  *(&v59 + 1) = 0x3032000000;
  v60 = __Block_byref_object_copy__1;
  v61 = __Block_byref_object_dispose__1;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__1;
  v55 = __Block_byref_object_dispose__1;
  v56 = 0;
  v9 = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke;
  block[3] = &unk_278847CD8;
  v48 = &v51;
  v49 = buf;
  block[4] = self;
  v50 = v7;
  v31 = v5;
  v47 = v31;
  dispatch_sync(v9, block);

  if (!*(v59 + 40))
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v32];
    [v52[5] setMonitoredProcessNames:v10];

    v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v32];
    [v52[5] setRequestedProcessNames:v11];

    v12 = [v52[5] config];
    v13 = [v12 isHeadless];

    if (v13)
    {
      [(PPSMetricMonitorService *)self _addProcessesNeededForAccounting:v52[5], v31];
      self->_previousMct = mach_continuous_time();
      self->_networkingTrackPreviousMct = mach_continuous_time();
      self->_previousGPUMct = mach_continuous_time();
    }

    v33 = [MEMORY[0x277CBEB58] set];
    v14 = [MEMORY[0x277CBEB18] array];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = [v52[5] requestedProcessNames];
    v16 = [v15 countByEnumeratingWithState:&v42 objects:v57 count:16];
    if (v16)
    {
      v17 = *v43;
      do
      {
        v18 = 0;
        do
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v42 + 1) + 8 * v18);
          v20 = [(PPSMetricMonitorService *)self delegate];
          v21 = [v20 pidForProcessName:v19];

          if (v21 >= 1)
          {
            v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
            [v14 addObject:v22];

            [v33 addObject:v19];
            v23 = [v52[5] config];
            v24 = [v23 isHeadless];

            if (v24)
            {
              v25 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
              v26 = [MEMORY[0x277CCABB0] numberWithInt:v21];
              [v25 setObject:v19 forKeyedSubscript:v26];
            }
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v42 objects:v57 count:16];
      }

      while (v16);
    }

    v27 = [(PPSMetricMonitorService *)self metricQueryQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2;
    v35[3] = &unk_278847D00;
    v41 = &v51;
    v36 = v14;
    v37 = self;
    v38 = v32;
    v39 = v33;
    v40 = v31;
    v28 = v33;
    v29 = v14;
    dispatch_sync(v27, v35);
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(buf, 8);

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  [v7 _canStartMonitoringForClient:v8 withError:&obj];
  objc_storeStrong((v9 + 40), obj);
  v10 = *(*(*(a1 + 56) + 8) + 40);
  return (*(*(a1 + 40) + 16))();
}

void __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count] || (objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "config"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isHeadless"), v2, v3))
  {
    v4 = a1 + 72;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(*(*(a1 + 72) + 8) + 40);
    v23 = 0;
    [v5 startMonitoringPids:v6 forClient:v7 withError:&v23];
    v8 = v23;
    if (v8)
    {
      v9 = v8;
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v10 = [*(*(*(a1 + 72) + 8) + 40) requestedProcessNames];
      [v10 minusSet:*(a1 + 56)];

      v11 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2_cold_2((a1 + 56), a1 + 72);
      }

      v12 = [*(*(*v4 + 8) + 40) config];
      if ([v12 isHeadless])
      {
        v13 = [*(*(*v4 + 8) + 40) config];
        v14 = [v13 mode];

        if (!v14)
        {
          v15 = *(a1 + 40);
          v16 = [*(*(*(a1 + 72) + 8) + 40) config];
          [v16 updateInterval];
          [v15 startHeadlessUpdateTimer:?];

          [*(a1 + 40) _startHeadlessTimeoutTimer];
        }
      }

      else
      {
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v17 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2_cold_1(a1);
    }

    v18 = *(a1 + 64);
    v19 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Invalid process name";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v21 = [v19 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:5 userInfo:v20];
    (*(v18 + 16))(v18, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringPids:(id)a3 forClient:(id)a4 withError:(id *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(v10);

  v11 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 connection];
    v22[0] = 67109378;
    v22[1] = [v12 processIdentifier];
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_22E4FA000, v11, OS_LOG_TYPE_DEFAULT, "Start monitoring pids was called by client: %d pids: %@ ", v22, 0x12u);
  }

  v13 = [v9 config];
  v14 = [v13 isHeadless];

  if (v14)
  {
    v15 = [(PPSMetricMonitorService *)self delegate];
    [v15 enableAccounting];
  }

  v16 = [(PPSMetricMonitorService *)self delegate];
  v17 = [v16 isMonitoringMetrics];

  v18 = [(PPSMetricMonitorService *)self delegate];
  [v18 addMonitoredProcessesWithPIDs:v8 error:a5];

  if (v17)
  {
    [(PPSMetricMonitorService *)self _collectMetricsWithTimeout:0];
  }

  else
  {
    v19 = [(PPSMetricMonitorService *)self delegate];
    [v19 startMonitoring];
  }

  v20 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v8];
  [v9 setMonitoredPIDs:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringProcessesWithNames:(id)a3 withPIDs:(id)a4 completion:(id)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v41 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CCAE80] currentConnection];
  v10 = [v9 processIdentifier];

  v11 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = v10;
    *v78 = 2112;
    *&v78[2] = v43;
    *&v78[10] = 2112;
    *&v78[12] = v41;
    _os_log_impl(&dword_22E4FA000, v11, OS_LOG_TYPE_DEFAULT, "Start monitoring processes with names and pids was called by client: %d process names: %@, PIDs: %@ ", buf, 0x1Cu);
  }

  *buf = 0;
  *v78 = buf;
  *&v78[8] = 0x3032000000;
  *&v78[16] = __Block_byref_object_copy__1;
  v79 = __Block_byref_object_dispose__1;
  v80 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__1;
  v72 = __Block_byref_object_dispose__1;
  v73 = 0;
  v12 = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__PPSMetricMonitorService_startMonitoringProcessesWithNames_withPIDs_completion___block_invoke;
  block[3] = &unk_278847CD8;
  v65 = &v68;
  v66 = buf;
  block[4] = self;
  v67 = v10;
  v42 = v8;
  v64 = v42;
  dispatch_sync(v12, block);

  if (*(*v78 + 40))
  {
    v42[2]();
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v43];
    [v69[5] setMonitoredProcessNames:v13];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v14 = v41;
    v15 = [v14 countByEnumeratingWithState:&v59 objects:v76 count:16];
    if (v15)
    {
      v16 = *v60;
      do
      {
        v17 = 0;
        do
        {
          if (*v60 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = -[PPSMetricMonitorService fullProcessNameForPid:](self, "fullProcessNameForPid:", [*(*(&v59 + 1) + 8 * v17) intValue]);
          if (v18)
          {
            v19 = [v69[5] monitoredProcessNames];
            [v19 addObject:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v59 objects:v76 count:16];
      }

      while (v15);
    }

    v20 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v43];
    [v69[5] setRequestedProcessNames:v20];

    v21 = [v69[5] config];
    LODWORD(v20) = [v21 isHeadless];

    if (v20)
    {
      [(PPSMetricMonitorService *)self _addProcessesNeededForAccounting:v69[5]];
    }

    v44 = [MEMORY[0x277CBEB58] set];
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v14];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v23 = [v69[5] requestedProcessNames];
    v24 = [v23 countByEnumeratingWithState:&v55 objects:v75 count:16];
    if (v24)
    {
      v25 = *v56;
      do
      {
        v26 = 0;
        do
        {
          if (*v56 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v55 + 1) + 8 * v26);
          v28 = [(PPSMetricMonitorService *)self delegate];
          v29 = [v28 pidForProcessName:v27];

          if (v29 >= 1)
          {
            v30 = [MEMORY[0x277CCABB0] numberWithInt:v29];
            [v22 addObject:v30];

            [v44 addObject:v27];
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = [v23 countByEnumeratingWithState:&v55 objects:v75 count:16];
      }

      while (v24);
    }

    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__1;
    v53 = __Block_byref_object_dispose__1;
    v54 = 0;
    v31 = [(PPSMetricMonitorService *)self metricQueryQueue];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __81__PPSMetricMonitorService_startMonitoringProcessesWithNames_withPIDs_completion___block_invoke_2;
    v45[3] = &unk_278847D28;
    v45[4] = self;
    v32 = v22;
    v46 = v32;
    v47 = &v68;
    v48 = &v49;
    dispatch_sync(v31, v45);

    if (v50[5])
    {
      v42[2]();
    }

    else
    {
      v33 = [v69[5] requestedProcessNames];
      [v33 minusSet:v44];

      v34 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = [v69[5] requestedProcessNames];
        [(PPSMetricMonitorService *)v44 startMonitoringProcessesWithNames:v35 withPIDs:v74 completion:v34];
      }

      v36 = [v69[5] requestedProcessNames];
      v37 = [v36 count] == 0;

      if (!v37)
      {
        [(PPSMetricMonitorService *)self _startProcessPollingTimer:v69[5]];
      }

      v38 = [v69[5] config];
      v39 = [v38 isHeadless];

      if (v39)
      {
        [(PPSMetricMonitorService *)self _startHeadlessTimeoutTimer];
      }

      (v42[2])(v42, 0);
    }

    _Block_object_dispose(&v49, 8);
  }

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(buf, 8);

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __81__PPSMetricMonitorService_startMonitoringProcessesWithNames_withPIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  [v7 _canStartMonitoringForClient:v8 withError:&obj];
  objc_storeStrong((v9 + 40), obj);
  v10 = *(*(*(a1 + 56) + 8) + 40);
  return (*(*(a1 + 40) + 16))();
}

void __81__PPSMetricMonitorService_startMonitoringProcessesWithNames_withPIDs_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(*(a1[6] + 8) + 40);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  [v2 startMonitoringPids:v1 forClient:v3 withError:&obj];
  objc_storeStrong((v4 + 40), obj);
}

- (void)finishMonitoringAndSendMetrics
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__PPSMetricMonitorService_finishMonitoringAndSendMetrics__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clients];
  v3 = (a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v5 = [v2 objectForKeyedSubscript:v4];

  [*(a1 + 32) _collectMetricsWithTimeout:5 andUpdateClient:v5];
  v6 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __57__PPSMetricMonitorService_finishMonitoringAndSendMetrics__block_invoke_cold_1(v3);
  }

  v7 = [v5 clientMetrics];
  v8 = [v5 monitoredPIDs];
  [v7 clearMetrics:v8];
}

- (void)collectMetricsOnDemand:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [v5 processIdentifier];

  v7 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService collectMetricsOnDemand:];
  }

  v8 = [(PPSMetricMonitorService *)self metricQueryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke;
  block[3] = &unk_278847D78;
  v12 = v6;
  block[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_sync(v8, block);
}

void __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clients];
  v3 = (a1 + 48);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v5 = [v2 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 requestedProcessNames];
    v7 = [v6 count];

    if (v7)
    {
      v8 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke_cold_1(v5, v8);
      }
    }

    [*(a1 + 32) _collectMetricsWithTimeout:1 andUpdateClient:v5];
    v9 = *(a1 + 40);
    v10 = [v5 clientMetrics];
    v11 = [v10 copy];
    (*(v9 + 16))(v9, v11, 0);

    v12 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __57__PPSMetricMonitorService_finishMonitoringAndSendMetrics__block_invoke_cold_1(v3);
    }

    v13 = [v5 clientMetrics];
    v14 = [v5 monitoredPIDs];
    [v13 clearMetrics:v14];
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"PID %d does not have a valid connection", *v3];
    v15 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = v13;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v15 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v16];

    v17 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke_cold_3();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canStartMonitoringForClient:(id)a3 withError:(id *)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(v7);

  v8 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _canStartMonitoringForClient:v6 withError:?];
  }

  v9 = [v6 config];

  if (v9)
  {
    v10 = [v6 config];
    v11 = [v10 isHeadless];

    if (!v11)
    {
      v19 = 1;
      goto LABEL_14;
    }

    if ([(PPSMetricMonitorService *)self hasHeadlessClient])
    {
      v12 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PPSMetricMonitorService _canStartMonitoringForClient:withError:];
      }

      v13 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v28 = @"Only one headless client is allowed";
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v28;
      v16 = &v27;
    }

    else
    {
      v22 = [v6 connection];
      v23 = [(PPSMetricMonitorService *)self _hasEntitlements:v22];

      if (v23)
      {
        v19 = 1;
        [(PPSMetricMonitorService *)self setHasHeadlessClient:1];
        goto LABEL_14;
      }

      v24 = PPSMetricMonitorLogHandleForCategory(2);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [PPSMetricMonitorService _canStartMonitoringForClient:withError:];
      }

      v13 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      v26 = @"Missing headless client entitlement";
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v26;
      v16 = &v25;
    }
  }

  else
  {
    v17 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [PPSMetricMonitorService _canStartMonitoringForClient:v6 withError:v17];
    }

    v13 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"Client config is nil";
    v14 = MEMORY[0x277CBEAC0];
    v15 = v30;
    v16 = &v29;
  }

  v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
  *a4 = [v13 errorWithDomain:@"com.apple.PerfPowerMetricMonitor" code:0 userInfo:v18];

  v19 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_handleConnectionEndedWithClient:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _handleConnectionEndedWithClient:v4];
  }

  v7 = [v4 config];
  v8 = [v7 isHeadless];

  v9 = [(PPSMetricMonitorService *)self clients];
  v10 = v9;
  if (v8)
  {
    [v9 removeObjectForKey:&unk_2843008A0];

    [(PPSMetricMonitorService *)self _cancelHeadlessTimeoutTimer];
  }

  else
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [v4 connection];
    v13 = [v11 numberWithInt:{objc_msgSend(v12, "processIdentifier")}];
    [v10 removeObjectForKey:v13];
  }

  v14 = [v4 monitoredPIDs];

  if (v14)
  {
    v15 = [MEMORY[0x277CBEB58] set];
    v16 = [(PPSMetricMonitorService *)self clients];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __60__PPSMetricMonitorService__handleConnectionEndedWithClient___block_invoke;
    v33[3] = &unk_278847C38;
    v17 = v15;
    v34 = v17;
    [v16 enumerateKeysAndObjectsUsingBlock:v33];

    v18 = [v4 monitoredPIDs];
    v19 = [v18 mutableCopy];

    [v19 minusSet:v17];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        v24 = 0;
        do
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v29 + 1) + 8 * v24);
          v26 = [(PPSMetricMonitorService *)self delegate];
          [v26 removeMonitoredProcessWithPID:{objc_msgSend(v25, "intValue")}];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v22);
    }
  }

  v27 = [v4 clientMetrics];

  if (v27)
  {
    [v4 setClientMetrics:0];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __60__PPSMetricMonitorService__handleConnectionEndedWithClient___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 monitoredPIDs];
  [v3 unionSet:v4];
}

- (void)_startProcessPollingTimer:(id)a3
{
  v4 = a3;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _startProcessPollingTimer:v4];
  }

  v6 = [(PPSMetricMonitorService *)self metricQueryQueue];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v6);
  [(PPSMetricMonitorService *)self setProcessPollingRepeatingTimer:v7];

  v8 = [(PPSMetricMonitorService *)self processPollingRepeatingTimer];
  v9 = dispatch_time(0, 0);
  dispatch_source_set_timer(v8, v9, 0xBEBC200uLL, 0x989680uLL);

  objc_initWeak(&location, self);
  v10 = [(PPSMetricMonitorService *)self processPollingRepeatingTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __53__PPSMetricMonitorService__startProcessPollingTimer___block_invoke;
  handler[3] = &unk_278847DA0;
  objc_copyWeak(&v16, &location);
  v11 = v4;
  v15 = v11;
  dispatch_source_set_event_handler(v10, handler);

  v12 = [(PPSMetricMonitorService *)self processPollingRepeatingTimer];
  dispatch_resume(v12);

  v13 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _startProcessPollingTimer:];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __53__PPSMetricMonitorService__startProcessPollingTimer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pollForProcessNames:*(a1 + 32)];
}

- (void)_cancelProcessPollingTimer
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_checkIfProcessesAreAlive:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _checkIfProcessesAreAlive:v4];
  }

  v6 = [v4 requestedProcessNames];
  v7 = [v6 count];

  if (v7)
  {
    v27 = [(PPSMetricMonitorService *)self _findProcesses:v4];
  }

  else
  {
    v27 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v4 monitoredPIDs];
  v9 = [v8 copy];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(*(&v29 + 1) + 8 * i) intValue];
        if (![(PPSMetricMonitorService *)self _isProcessAlive:v14])
        {
          v15 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
          v16 = [MEMORY[0x277CCABB0] numberWithInt:v14];
          v17 = [v15 objectForKeyedSubscript:v16];

          v18 = PPSMetricMonitorLogHandleForCategory(2);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v17;
            _os_log_impl(&dword_22E4FA000, v18, OS_LOG_TYPE_INFO, "Process %@ has exited", buf, 0xCu);
          }

          v19 = [v4 requestedProcessNames];
          [v19 addObject:v17];

          v20 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
          v21 = [MEMORY[0x277CCABB0] numberWithInt:v14];
          [v20 removeObjectForKey:v21];

          v22 = [v4 monitoredPIDs];
          v23 = [MEMORY[0x277CCABB0] numberWithInt:v14];
          [v22 removeObject:v23];

          v24 = [(PPSMetricMonitorService *)self delegate];
          [v24 removeMonitoredProcessWithPID:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v11);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_findProcesses:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = proc_listpids(1u, 0, 0, 0);
  if ((v5 & 0x80000000) != 0 || (v6 = v5, v7 = v5, (v8 = malloc_type_malloc(v5, 0x100004052888210uLL)) == 0))
  {
    v11 = 0;
  }

  else
  {
    v9 = v8;
    memset(v8, 255, v7);
    v28 = v9;
    v10 = proc_listpids(1u, 0, v9, v6);
    v11 = objc_opt_new();
    v12 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService _findProcesses:];
    }

    if (v10 >= 4)
    {
      if (v10 >> 2 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v10 >> 2;
      }

      do
      {
        v15 = *v9++;
        v14 = v15;
        if (v15 >= 1)
        {
          v16 = [(PPSMetricMonitorService *)self fullProcessNameForPid:v14];
          v17 = [v4 requestedProcessNames];
          v18 = [v17 containsObject:v16];

          if (v18)
          {
            v19 = PPSMetricMonitorLogHandleForCategory(2);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v30 = v14;
              v31 = 2112;
              v32 = v16;
              _os_log_impl(&dword_22E4FA000, v19, OS_LOG_TYPE_INFO, "Found PID (%d) for %@. Adding to monitor.", buf, 0x12u);
            }

            v20 = [v4 requestedProcessNames];
            [v20 removeObject:v16];

            v21 = [MEMORY[0x277CCABB0] numberWithInt:v14];
            [v11 addObject:v21];

            v22 = [v4 config];
            v23 = [v22 isHeadless];

            if (v23)
            {
              v24 = [(PPSMetricMonitorService *)self headlessClientTrackedProcesses];
              v25 = [MEMORY[0x277CCABB0] numberWithInt:v14];
              [v24 setObject:v16 forKeyedSubscript:v25];
            }
          }
        }

        --v13;
      }

      while (v13);
    }

    free(v28);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_pollForProcessNames:(id)a3
{
  v4 = a3;
  v5 = [v4 requestedProcessNames];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(PPSMetricMonitorService *)self _findProcesses:v4];
    if ([v7 count])
    {
      v8 = [(PPSMetricMonitorService *)self delegate];
      v10 = 0;
      [v8 addMonitoredProcessesWithPIDs:v7 error:&v10];

      [(PPSMetricMonitorService *)self _collectMetricsWithTimeout:1];
      v9 = [v4 monitoredPIDs];
      [v9 addObjectsFromArray:v7];
    }
  }

  else
  {
    [(PPSMetricMonitorService *)self _cancelProcessPollingTimer];
    v7 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService _pollForProcessNames:];
    }
  }
}

- (id)fullProcessNameForPid:(int)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3 < 1 || (bzero(buffer, 0x1000uLL), proc_pidpath(a3, buffer, 0x1000u) < 1))
  {
    v4 = 0;
  }

  else
  {
    buffer[4095] = 0;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:basename(buffer)];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_emitPowerSignpostWithMetric:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = PLLogPowerSignpost();
  PLEmitPowerSignpost(v7, v6, v5, 0);
}

- (void)_emitPowerSignpostWithMetric:(id)a3 value:(id)a4 pid:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = PLLogPowerSignpost();
  PLEmitPowerSignpost(v10, v9, v8, v7);
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(unint64_t)a3
{
  v5 = [(PPSMetricMonitorService *)self metricQueryQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PPSMetricMonitorService *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_18;
  }

  v7 = [(PPSMetricMonitorService *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
LABEL_18:
    v27 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PPSMetricMonitorService _updateAndTrimSleepWakeHistoryRelativeTo:];
    }

    v14 = [(PPSMetricMonitorService *)self sleepWakeHistory];
    [v14 removeAllObjects];
    goto LABEL_21;
  }

  v9 = [(PPSMetricMonitorService *)self delegate];
  v10 = [v9 queryLastSleepTimeMCT];

  v11 = [(PPSMetricMonitorService *)self delegate];
  v12 = [v11 queryLastWakeTimeMCT];

  if (!v10)
  {
    return;
  }

  v13 = [(PPSMetricMonitorService *)self sleepWakeHistory];
  v14 = [v13 lastObject];

  if (v14 && v10 <= [v14 sleepTime])
  {
    if (v10 == [v14 sleepTime])
    {
      if (v12 > [v14 wakeTime])
      {
        v28 = PPSMetricMonitorLogHandleForCategory(2);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PPSMetricMonitorService _updateAndTrimSleepWakeHistoryRelativeTo:v14];
        }

        [v14 setWakeTime:v12];
      }

      goto LABEL_10;
    }

    v16 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      [(PPSMetricMonitorService *)v14 _updateAndTrimSleepWakeHistoryRelativeTo:v10, &v16->super];
    }
  }

  else
  {
    v15 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PPSMetricMonitorService _updateAndTrimSleepWakeHistoryRelativeTo:];
    }

    v16 = [[PPSSleepWakeInterval alloc] initWithSleepTime:v10 wakeTime:v12];
    v17 = [(PPSMetricMonitorService *)self sleepWakeHistory];
    [v17 addObject:v16];
  }

LABEL_10:
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __68__PPSMetricMonitorService__updateAndTrimSleepWakeHistoryRelativeTo___block_invoke;
  v29[3] = &__block_descriptor_40_e47_B24__0__PPSSleepWakeInterval_8__NSDictionary_16l;
  v29[4] = a3;
  v18 = [MEMORY[0x277CCAC30] predicateWithBlock:v29];
  v19 = [(PPSMetricMonitorService *)self sleepWakeHistory];
  v20 = [v19 filteredArrayUsingPredicate:v18];

  v21 = [v20 count];
  v22 = [(PPSMetricMonitorService *)self sleepWakeHistory];
  v23 = [v22 count];

  if (v21 < v23)
  {
    v24 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [(PPSMetricMonitorService *)self _updateAndTrimSleepWakeHistoryRelativeTo:v20];
    }

    v25 = [v20 mutableCopy];
    [(PPSMetricMonitorService *)self setSleepWakeHistory:v25];
  }

  v26 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricMonitorService _updateAndTrimSleepWakeHistoryRelativeTo:?];
  }

LABEL_21:
}

BOOL __68__PPSMetricMonitorService__updateAndTrimSleepWakeHistoryRelativeTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ![v3 wakeTime] || objc_msgSend(v3, "wakeTime") == -1 || objc_msgSend(v3, "wakeTime") > *(a1 + 32);

  return v4;
}

- (void)_startHeadlessTimeoutTimer
{
  v3 = [(PPSMetricMonitorService *)self headlessTimeoutTimer];

  if (!v3)
  {
    v4 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E4FA000, v4, OS_LOG_TYPE_DEFAULT, "Starting headless timeout timer", buf, 2u);
    }

    v5 = dispatch_get_global_queue(-32768, 0);
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
    [(PPSMetricMonitorService *)self setHeadlessTimeoutTimer:v6];

    v7 = [(PPSMetricMonitorService *)self headlessTimeoutTimer];
    v8 = dispatch_walltime(0, 36000000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);

    v9 = [(PPSMetricMonitorService *)self headlessTimeoutTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__PPSMetricMonitorService__startHeadlessTimeoutTimer__block_invoke;
    handler[3] = &unk_278847A30;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);

    v10 = [(PPSMetricMonitorService *)self headlessTimeoutTimer];
    dispatch_resume(v10);
  }
}

uint64_t __53__PPSMetricMonitorService__startHeadlessTimeoutTimer__block_invoke(uint64_t a1)
{
  v2 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22E4FA000, v2, OS_LOG_TYPE_DEFAULT, "The timeout was reached, stopping timer", v4, 2u);
  }

  [*(a1 + 32) stopMonitoringHeadlessClient];
  return [*(a1 + 32) _sendMetricMonitorTimeoutNotification];
}

- (void)_cancelHeadlessTimeoutTimer
{
  v3 = [(PPSMetricMonitorService *)self headlessTimeoutTimer];

  if (v3)
  {
    v4 = PPSMetricMonitorLogHandleForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22E4FA000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling headless timeout timer", v6, 2u);
    }

    v5 = [(PPSMetricMonitorService *)self headlessTimeoutTimer];
    dispatch_source_cancel(v5);

    [(PPSMetricMonitorService *)self setHeadlessTimeoutTimer:0];
  }
}

- (void)_sendMetricMonitorTimeoutNotification
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasEntitlements:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.PerfPowerMetricMonitorHeadless.client"];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PPSMetricMonitorServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)isMonitoringForHeadlessWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__PPSMetricMonitorService_stopMonitoringHeadlessClient__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)emitTracingToolPowerMetrics:ofClient:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)emitTracingToolPowerMetrics:ofClient:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)emitTracingToolPowerMetrics:(void *)a1 ofClient:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 displayPower];
  [v1 doubleValue];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)emitTracingToolPowerMetrics:(void *)a1 ofClient:.cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 cellularPower];
  [v1 doubleValue];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)emitTracingToolPowerMetrics:(void *)a1 ofClient:.cold.5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 wifiPower];
  [v1 doubleValue];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)emitPowerMetrics:ofClient:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_shouldAcceptheadlessClientConnection:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_collectMetricsWithTimeout:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_collectMetricsWithTimeout:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__PPSMetricMonitorService__collectMetricsWithTimeout___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setHeadlessQueryTimer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setUpWithConfiguration:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __70__PPSMetricMonitorService_startMonitoringProcessesWithPID_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__PPSMetricMonitorService_startMonitoringProcessesWithName_completion___block_invoke_2_cold_2(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v9 = [*(*(*a2 + 8) + 40) requestedProcessNames];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startMonitoringProcessesWithNames:(uint8_t *)buf withPIDs:(os_log_t)log completion:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_22E4FA000, log, OS_LOG_TYPE_DEBUG, "Found procs :%@, pending:%@", buf, 0x16u);
}

- (void)_collectMetricsWithTimeout:(void *)a1 andUpdateClient:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);

  v7 = *MEMORY[0x277D85DE8];
}

void __57__PPSMetricMonitorService_finishMonitoringAndSendMetrics__block_invoke_cold_1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)collectMetricsOnDemand:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 requestedProcessNames];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_22E4FA000, a2, OS_LOG_TYPE_ERROR, "Failed to find matching PID for process name(s): %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __50__PPSMetricMonitorService_collectMetricsOnDemand___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_canStartMonitoringForClient:(void *)a1 withError:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_canStartMonitoringForClient:withError:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_canStartMonitoringForClient:withError:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_canStartMonitoringForClient:(void *)a1 withError:(NSObject *)a2 .cold.4(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 connection];
  [v3 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  _os_log_fault_impl(&dword_22E4FA000, a2, OS_LOG_TYPE_FAULT, "Client %d config is nil", v5, 8u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleConnectionEndedWithClient:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startProcessPollingTimer:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startProcessPollingTimer:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_checkIfProcessesAreAlive:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 connection];
  [v1 processIdentifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_findProcesses:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pollForProcessNames:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 sleepTime];
  v7 = 134218240;
  v8 = a2;
  OUTLINED_FUNCTION_8();
  v9 = v5;
  _os_log_error_impl(&dword_22E4FA000, a3, OS_LOG_TYPE_ERROR, "Queried sleep time (%llu) is older than last known sleep time (%llu). Ignoring.", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(void *)a1 .cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 sleepTime];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(void *)a1 .cold.5(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 sleepWakeHistory];
  [v3 count];
  [a2 count];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndTrimSleepWakeHistoryRelativeTo:(void *)a1 .cold.6(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 sleepWakeHistory];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_hasEntitlements:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
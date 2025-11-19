@interface PLCPUEnergyIssueDetectorService
+ (void)load;
- (PLCPUEnergyIssueDetectorService)init;
- (double)getCPUTime:(id)a3;
- (id)buildCallBack:(id)a3 withGroup:(BOOL)a4 withHandler:(id)a5;
- (id)loadCPUAllowlist;
- (id)loadCpuThresholds;
- (int)customLongTermCPUThreshold;
- (int)matchingPidWithProcessName:(id)a3 withBundleID:(id)a4;
- (void)checkCpuUsage:(id)a3 withNewCoaltionArray:(id)a4;
- (void)handleBatteryCallback:(id)a3;
- (void)handleCoalitionCallback:(id)a3;
- (void)initOperatorDependancies;
- (void)listAllRunningPidsWithBuffer:(int *)a3 withSizeOfBuffer:(int)a4;
- (void)sendEnergyIssueSignatureNotification:(id)a3 withThreshold:(double)a4;
@end

@implementation PLCPUEnergyIssueDetectorService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLCPUEnergyIssueDetectorService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLCPUEnergyIssueDetectorService)init
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "seedBuild") & 1) == 0 && !objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLCPUEnergyIssueDetectorService;
    self = [(PLOperator *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0 && ((objc_msgSend(MEMORY[0x277D3F208], "seedBuild") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild")))
  {
    v3 = objc_alloc(MEMORY[0x277D3F270]);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__PLCPUEnergyIssueDetectorService_initOperatorDependancies__block_invoke;
    v19[3] = &unk_27825A1D8;
    v19[4] = self;
    v4 = [v3 initWithOperator:self withRegistration:&unk_282C18B98 withBlock:v19];
    [(PLCPUEnergyIssueDetectorService *)self setDetectorListener:v4];

    self->_pluggedInBetweenCoalitionSBC = 0;
    self->_deviceIsPluggedIn = 0;
    v5 = objc_opt_new();
    cpuUsage = self->_cpuUsage;
    self->_cpuUsage = v5;

    v7 = [(PLCPUEnergyIssueDetectorService *)self loadCpuThresholds];
    cpuThresholds = self->_cpuThresholds;
    self->_cpuThresholds = v7;

    v9 = [(PLCPUEnergyIssueDetectorService *)self loadCPUAllowlist];
    cpuAllowList = self->_cpuAllowList;
    self->_cpuAllowList = v9;

    v11 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoalitionInterval"];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__PLCPUEnergyIssueDetectorService_initOperatorDependancies__block_invoke_2;
    v18[3] = &unk_27825A2E8;
    v18[4] = self;
    v12 = [(PLCPUEnergyIssueDetectorService *)self buildCallBack:v11 withGroup:1 withHandler:v18];
    [(PLCPUEnergyIssueDetectorService *)self setCoalitionCallback:v12];

    entryKeyPLCoalitionAgentEventIntervalCoalition = self->_entryKeyPLCoalitionAgentEventIntervalCoalition;
    self->_entryKeyPLCoalitionAgentEventIntervalCoalition = v11;
    v14 = v11;

    v15 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"Battery"];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__PLCPUEnergyIssueDetectorService_initOperatorDependancies__block_invoke_3;
    v17[3] = &unk_27825A2E8;
    v17[4] = self;
    v16 = [(PLCPUEnergyIssueDetectorService *)self buildCallBack:v15 withGroup:0 withHandler:v17];
    [(PLCPUEnergyIssueDetectorService *)self setBatteryCallback:v16];
  }
}

- (id)buildCallBack:(id)a3 withGroup:(BOOL)a4 withHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupID_%@", v8];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = objc_alloc(MEMORY[0x277D3F1A8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__PLCPUEnergyIssueDetectorService_buildCallBack_withGroup_withHandler___block_invoke;
  v16[3] = &unk_27825A338;
  v17 = v9;
  v13 = v9;
  v14 = [v12 initWithOperator:self forEntryKey:v11 withBlock:v16];

  return v14;
}

uint64_t __71__PLCPUEnergyIssueDetectorService_buildCallBack_withGroup_withHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)handleCoalitionCallback:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v9 = [v4 monotonicDate];
  v6 = [v5 objectForKey:@"group"];

  v7 = [(PLCPUEnergyIssueDetectorService *)self entryKeyPLCoalitionAgentEventIntervalCoalition];
  v8 = [v6 objectForKeyedSubscript:v7];

  [(PLCPUEnergyIssueDetectorService *)self checkCpuUsage:v9 withNewCoaltionArray:v8];
}

- (void)handleBatteryCallback:(id)a3
{
  v20 = a3;
  v4 = [v20 objectForKeyedSubscript:@"entry"];
  v5 = [v4 objectForKeyedSubscript:@"ExternalConnected"];
  v6 = [v5 BOOLValue];

  v7 = [v20 objectForKeyedSubscript:@"entry"];
  v8 = [v7 objectForKeyedSubscript:@"CurrentCapacity"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v20 objectForKeyedSubscript:@"entry"];
  v12 = [v11 objectForKeyedSubscript:@"MaxCapacity"];
  [v12 doubleValue];
  v14 = v13;

  v15 = 0.0;
  if (v14 > 0.0)
  {
    v15 = v10 * 100.0 / v14;
  }

  v16 = [MEMORY[0x277D3F258] isPingPongChargingWith:v6 andBatteryLevelPercent:v15];
  v17 = [v20 objectForKeyedSubscript:@"entry"];
  v18 = [v17 objectForKeyedSubscript:@"IsCharging"];
  v19 = [v18 BOOLValue] | v16;

  [(PLCPUEnergyIssueDetectorService *)self setDeviceIsPluggedIn:v19 & 1];
  if ([(PLCPUEnergyIssueDetectorService *)self deviceIsPluggedIn])
  {
    [(PLCPUEnergyIssueDetectorService *)self setPluggedInBetweenCoalitionSBC:1];
  }
}

- (double)getCPUTime:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"cpu_time"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)checkCpuUsage:(id)a3 withNewCoaltionArray:(id)a4
{
  v104 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (self->_detectionStartTime)
  {
    [v7 timeIntervalSinceDate:?];
    if (v9 > 3600.0)
    {
      [(NSMutableDictionary *)self->_cpuUsage removeAllObjects];
    }
  }

  else
  {
    objc_storeStrong(&self->_detectionStartTime, a3);
  }

  v10 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __70__PLCPUEnergyIssueDetectorService_checkCpuUsage_withNewCoaltionArray___block_invoke;
    v100[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v100[4] = v11;
    if (qword_2811F6110 != -1)
    {
      dispatch_once(&qword_2811F6110, v100);
    }

    if (_MergedGlobals_1_44 == 1)
    {
      v12 = v8;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"CPUEnergyIssueDetectorService: checkCpuUsage"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLCPUEnergyIssueDetectorService.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCPUEnergyIssueDetectorService checkCpuUsage:withNewCoaltionArray:]"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:222];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v103 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v12;
      v10 = 0x277D3F000uLL;
    }
  }

  if (!-[PLCPUEnergyIssueDetectorService pluggedInBetweenCoalitionSBC](self, "pluggedInBetweenCoalitionSBC") && [v8 count])
  {
    v87 = v8;
    v88 = v7;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v8;
    v19 = [obj countByEnumeratingWithState:&v96 objects:v101 count:16];
    if (v19)
    {
      v20 = v19;
      v91 = *v97;
      do
      {
        v21 = 0;
        do
        {
          if (*v97 != v91)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v96 + 1) + 8 * v21);
          if ([*(v10 + 384) debugEnabled])
          {
            v23 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __70__PLCPUEnergyIssueDetectorService_checkCpuUsage_withNewCoaltionArray___block_invoke_68;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v23;
            if (qword_2811F6118 != -1)
            {
              dispatch_once(&qword_2811F6118, block);
            }

            if (byte_2811F6109 == 1)
            {
              v24 = MEMORY[0x277CCACA8];
              v25 = [v22 objectForKeyedSubscript:@"LaunchdName"];
              v26 = [v22 objectForKeyedSubscript:@"BundleId"];
              v27 = [v24 stringWithFormat:@"CPUEnergyIssueDetectorService: entry[LaunchdName] = %@, entry[bunldeId]=%@", v25, v26];

              v28 = MEMORY[0x277D3F178];
              v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLCPUEnergyIssueDetectorService.m"];
              v30 = [v29 lastPathComponent];
              v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCPUEnergyIssueDetectorService checkCpuUsage:withNewCoaltionArray:]"];
              [v28 logMessage:v27 fromFile:v30 fromFunction:v31 fromLineNumber:228];

              v32 = PLLogCommon();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v103 = v27;
                _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v10 = 0x277D3F000uLL;
            }
          }

          v33 = [MEMORY[0x277D3F258] getIdentifierFromEntry:v22];
          if ([*(v10 + 384) debugEnabled])
          {
            v34 = objc_opt_class();
            v94[0] = MEMORY[0x277D85DD0];
            v94[1] = 3221225472;
            v94[2] = __70__PLCPUEnergyIssueDetectorService_checkCpuUsage_withNewCoaltionArray___block_invoke_80;
            v94[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v94[4] = v34;
            if (qword_2811F6120 != -1)
            {
              dispatch_once(&qword_2811F6120, v94);
            }

            if (byte_2811F610A == 1)
            {
              v35 = MEMORY[0x277CCACA8];
              v36 = [(NSDictionary *)self->_cpuThresholds objectForKeyedSubscript:v33];
              [v36 doubleValue];
              v38 = [v35 stringWithFormat:@"CPUEnergyIssueDetectorService: bundleId=%@, _cpuThreshold[bundleID]=%f", v33, v37];

              v39 = MEMORY[0x277D3F178];
              v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLCPUEnergyIssueDetectorService.m"];
              v41 = [v40 lastPathComponent];
              v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCPUEnergyIssueDetectorService checkCpuUsage:withNewCoaltionArray:]"];
              [v39 logMessage:v38 fromFile:v41 fromFunction:v42 fromLineNumber:233];

              v43 = PLLogCommon();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v103 = v38;
                _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v10 = 0x277D3F000uLL;
            }
          }

          if (v33)
          {
            v44 = [v22 objectForKeyedSubscript:@"BundleId"];
            v45 = [v44 length];

            if (!v45 && ![(NSArray *)self->_cpuAllowList containsObject:v33])
            {
              if ([*(v10 + 384) debugEnabled])
              {
                v46 = objc_opt_class();
                v93[0] = MEMORY[0x277D85DD0];
                v93[1] = 3221225472;
                v93[2] = __70__PLCPUEnergyIssueDetectorService_checkCpuUsage_withNewCoaltionArray___block_invoke_86;
                v93[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v93[4] = v46;
                if (qword_2811F6128 != -1)
                {
                  dispatch_once(&qword_2811F6128, v93);
                }

                if (byte_2811F610B == 1)
                {
                  v89 = v20;
                  v47 = MEMORY[0x277CCACA8];
                  v48 = [(NSMutableDictionary *)self->_cpuUsage objectForKeyedSubscript:v33];
                  [v48 doubleValue];
                  v50 = v49;
                  v51 = [(NSDictionary *)self->_cpuThresholds objectForKeyedSubscript:v33];
                  [v51 doubleValue];
                  v53 = [v47 stringWithFormat:@"CPUEnergyIssueDetectorService: bundleID=%@, cpuUsage=%f, threshold=%f", v33, v50, v52];

                  v54 = MEMORY[0x277D3F178];
                  v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLCPUEnergyIssueDetectorService.m"];
                  v56 = [v55 lastPathComponent];
                  v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCPUEnergyIssueDetectorService checkCpuUsage:withNewCoaltionArray:]"];
                  [v54 logMessage:v53 fromFile:v56 fromFunction:v57 fromLineNumber:254];

                  v58 = PLLogCommon();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v103 = v53;
                    _os_log_debug_impl(&dword_21A4C6000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v10 = 0x277D3F000;
                  v20 = v89;
                }
              }

              v59 = [(NSMutableDictionary *)self->_cpuUsage objectForKey:v33];

              v60 = MEMORY[0x277CCABB0];
              if (v59)
              {
                v61 = [(NSMutableDictionary *)self->_cpuUsage objectForKeyedSubscript:v33];
                [v61 doubleValue];
                v63 = v62;
                [(PLCPUEnergyIssueDetectorService *)self getCPUTime:v22];
                v65 = [v60 numberWithDouble:v63 + v64];
                [(NSMutableDictionary *)self->_cpuUsage setObject:v65 forKeyedSubscript:v33];
              }

              else
              {
                [(PLCPUEnergyIssueDetectorService *)self getCPUTime:v22];
                v61 = [v60 numberWithDouble:?];
                [(NSMutableDictionary *)self->_cpuUsage setObject:v61 forKeyedSubscript:v33];
              }

              v66 = [(NSDictionary *)self->_cpuThresholds objectForKey:v33];

              v67 = 2000.0;
              if (v66)
              {
                v68 = [(NSDictionary *)self->_cpuThresholds objectForKeyedSubscript:v33];
                [v68 doubleValue];
                v67 = v69;
              }

              if ([(PLCPUEnergyIssueDetectorService *)self customLongTermCPUThreshold]>= 1)
              {
                v67 = [(PLCPUEnergyIssueDetectorService *)self customLongTermCPUThreshold];
              }

              v70 = [(NSMutableDictionary *)self->_cpuUsage objectForKeyedSubscript:v33];
              [v70 doubleValue];
              v72 = v71;

              if (v72 > v67)
              {
                if ([*(v10 + 384) debugEnabled])
                {
                  v73 = objc_opt_class();
                  v92[0] = MEMORY[0x277D85DD0];
                  v92[1] = 3221225472;
                  v92[2] = __70__PLCPUEnergyIssueDetectorService_checkCpuUsage_withNewCoaltionArray___block_invoke_93;
                  v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v92[4] = v73;
                  if (qword_2811F6130 != -1)
                  {
                    dispatch_once(&qword_2811F6130, v92);
                  }

                  if (byte_2811F610C == 1)
                  {
                    v74 = MEMORY[0x277CCACA8];
                    v75 = [(NSMutableDictionary *)self->_cpuUsage objectForKeyedSubscript:v33];
                    [v75 doubleValue];
                    v77 = v76;
                    v78 = [(NSDictionary *)self->_cpuThresholds objectForKeyedSubscript:v33];
                    [v78 doubleValue];
                    v80 = [v74 stringWithFormat:@"CPUEnergyIssueDetectorService: CPU threshold crossed: %@ CPU usage of %f crossed threshold %f", v33, v77, v79];

                    v81 = MEMORY[0x277D3F178];
                    v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLCPUEnergyIssueDetectorService.m"];
                    v83 = [v82 lastPathComponent];
                    v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCPUEnergyIssueDetectorService checkCpuUsage:withNewCoaltionArray:]"];
                    [v81 logMessage:v80 fromFile:v83 fromFunction:v84 fromLineNumber:274];

                    v85 = PLLogCommon();
                    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v103 = v80;
                      _os_log_debug_impl(&dword_21A4C6000, v85, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }

                    v10 = 0x277D3F000;
                  }
                }

                [(PLCPUEnergyIssueDetectorService *)self sendEnergyIssueSignatureNotification:v33 withThreshold:v67];
                [(NSMutableDictionary *)self->_cpuUsage setObject:&unk_282C11E20 forKeyedSubscript:v33];
              }
            }
          }

          ++v21;
        }

        while (v20 != v21);
        v20 = [obj countByEnumeratingWithState:&v96 objects:v101 count:16];
      }

      while (v20);
    }

    v8 = v87;
    v7 = v88;
  }

  [(PLCPUEnergyIssueDetectorService *)self setPluggedInBetweenCoalitionSBC:[(PLCPUEnergyIssueDetectorService *)self deviceIsPluggedIn]];

  v86 = *MEMORY[0x277D85DE8];
}

uint64_t __70__PLCPUEnergyIssueDetectorService_checkCpuUsage_withNewCoaltionArray___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_44 = result;
  return result;
}

uint64_t __70__PLCPUEnergyIssueDetectorService_checkCpuUsage_withNewCoaltionArray___block_invoke_68(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6109 = result;
  return result;
}

uint64_t __70__PLCPUEnergyIssueDetectorService_checkCpuUsage_withNewCoaltionArray___block_invoke_80(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F610A = result;
  return result;
}

uint64_t __70__PLCPUEnergyIssueDetectorService_checkCpuUsage_withNewCoaltionArray___block_invoke_86(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F610B = result;
  return result;
}

uint64_t __70__PLCPUEnergyIssueDetectorService_checkCpuUsage_withNewCoaltionArray___block_invoke_93(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F610C = result;
  return result;
}

- (void)listAllRunningPidsWithBuffer:(int *)a3 withSizeOfBuffer:(int)a4
{
  if (a4 >= 1)
  {
    memset(a3, 255, 4 * a4);
  }

  proc_listpids(1u, 0, a3, 4 * a4);
}

- (int)matchingPidWithProcessName:(id)a3 withBundleID:(id)a4
{
  v4 = MEMORY[0x28223BE20](self, a2);
  v6 = v5;
  v7 = v4;
  v32 = *MEMORY[0x277D85DE8];
  v9 = v8;
  v10 = v6;
  context = objc_autoreleasePoolPush();
  [v7 listAllRunningPidsWithBuffer:v31 withSizeOfBuffer:1024];
  v11 = proc_listpids(1u, 0, 0, 0);
  v12 = 0;
  if (v11 >= 4)
  {
    v13 = 0;
    v14 = v11 >> 2;
    v15 = v31;
    v26 = v14;
    while (1)
    {
      if (v9)
      {
        v16 = [MEMORY[0x277D3F258] processNameForPid:*v15];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v17 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __75__PLCPUEnergyIssueDetectorService_matchingPidWithProcessName_withBundleID___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v17;
          if (qword_2811F6138 != -1)
          {
            dispatch_once(&qword_2811F6138, block);
          }

          if (byte_2811F610D == 1)
          {
            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"pid[%d]=%@", *v15, v16];
            v19 = MEMORY[0x277D3F178];
            v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLCPUEnergyIssueDetectorService.m"];
            v21 = [v20 lastPathComponent];
            v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCPUEnergyIssueDetectorService matchingPidWithProcessName:withBundleID:]"];
            [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:318];

            v23 = PLLogCommon();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v30 = v18;
              _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v14 = v26;
          }
        }

        if ([v16 isEqualToString:v9])
        {
LABEL_19:
          v12 = *v15;

          break;
        }
      }

      if (v10)
      {
        v16 = [MEMORY[0x277D3F258] bundleIDFromPid:*v15];
        if ([v10 isEqualToString:v16])
        {
          goto LABEL_19;
        }
      }

      v12 = 0;
      if (v13 <= 0x3FE)
      {
        ++v13;
        ++v15;
        if (v14 > v13)
        {
          continue;
        }
      }

      break;
    }
  }

  objc_autoreleasePoolPop(context);

  v24 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __75__PLCPUEnergyIssueDetectorService_matchingPidWithProcessName_withBundleID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F610D = result;
  return result;
}

- (void)sendEnergyIssueSignatureNotification:(id)a3 withThreshold:(double)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277D6AFC0]);
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&a4];
    v9 = [v7 signatureWithDomain:@"Energy" type:@"CPU" subType:@"LongTerm" subtypeContext:&stru_282B650A0 detectedProcess:v6 triggerThresholdValues:v8];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__PLCPUEnergyIssueDetectorService_sendEnergyIssueSignatureNotification_withThreshold___block_invoke;
    v10[3] = &unk_27825A2E8;
    v10[4] = self;
    [v7 snapshotWithSignature:v9 duration:0 events:0 payload:0 actions:v10 reply:120.0];
  }
}

void __86__PLCPUEnergyIssueDetectorService_sendEnergyIssueSignatureNotification_withThreshold___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B1A0]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B190]];
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_16;
    }

    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__PLCPUEnergyIssueDetectorService_sendEnergyIssueSignatureNotification_withThreshold___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F6140 != -1)
    {
      dispatch_once(&qword_2811F6140, block);
    }

    if (byte_2811F610E != 1)
    {
      goto LABEL_16;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SDRDiagnosticReporter response = %@, sessionID = %@", v3, v6];
    v10 = MEMORY[0x277D3F178];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLCPUEnergyIssueDetectorService.m"];
    v12 = [v11 lastPathComponent];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCPUEnergyIssueDetectorService sendEnergyIssueSignatureNotification:withThreshold:]_block_invoke"];
    [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:358];

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

LABEL_15:
LABEL_16:

    goto LABEL_17;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = *(a1 + 32);
    v16 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __86__PLCPUEnergyIssueDetectorService_sendEnergyIssueSignatureNotification_withThreshold___block_invoke_124;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v16;
    if (qword_2811F6148 != -1)
    {
      dispatch_once(&qword_2811F6148, v22);
    }

    if (byte_2811F610F == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SDRDiagnosticReporter dampened"];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLCPUEnergyIssueDetectorService.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCPUEnergyIssueDetectorService sendEnergyIssueSignatureNotification:withThreshold:]_block_invoke_2"];
      [v17 logMessage:v6 fromFile:v19 fromFunction:v20 fromLineNumber:361];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_15;
    }
  }

LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __86__PLCPUEnergyIssueDetectorService_sendEnergyIssueSignatureNotification_withThreshold___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F610E = result;
  return result;
}

uint64_t __86__PLCPUEnergyIssueDetectorService_sendEnergyIssueSignatureNotification_withThreshold___block_invoke_124(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F610F = result;
  return result;
}

- (id)loadCPUAllowlist
{
  cpuAllowList = self->_cpuAllowList;
  if (!cpuAllowList)
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Maps_mapspushd", @"NPKCompanionAgent", @"OTACrashCopier", @"Springboard", @"askpermissiond", @"familynotification", @"fileprovider_fileproviderd", @"homed", @"mobile_lockdown", @"mobile_softwareupdated", @"mobile.softwareupdated", @"abm-helper", @"pairedsyncd", @"passd", @"pipelined", @"prdaily", @"seld", @"tipsd", @"wcd", @"kernel_task", @"ReportCrash", 0}];
    v5 = self->_cpuAllowList;
    self->_cpuAllowList = v4;

    cpuAllowList = self->_cpuAllowList;
  }

  return cpuAllowList;
}

- (id)loadCpuThresholds
{
  cpuThresholds = self->_cpuThresholds;
  if (!cpuThresholds)
  {
    self->_cpuThresholds = &unk_282C18BC0;
    cpuThresholds = self->_cpuThresholds;
  }

  return cpuThresholds;
}

- (int)customLongTermCPUThreshold
{
  if (qword_2811F6150 != -1)
  {
    dispatch_once(&qword_2811F6150, &__block_literal_global_46);
  }

  v3 = qword_2811F6158;
  if (!qword_2811F6158)
  {
    return -1;
  }

  return [v3 intValue];
}

uint64_t __61__PLCPUEnergyIssueDetectorService_customLongTermCPUThreshold__block_invoke()
{
  v0 = *MEMORY[0x277CBF040];
  v1 = *MEMORY[0x277CBF030];
  [MEMORY[0x277D3F258] containerPath];
  v2 = _CFPreferencesCopyValueWithContainer();
  qword_2811F6158 = v2;

  return MEMORY[0x2821F96F8](v2);
}

@end
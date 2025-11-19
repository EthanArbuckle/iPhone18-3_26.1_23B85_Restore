@interface PLBluetoothAgent
+ (BOOL)shouldLogMarconi;
+ (id)entryEventBackwardDefinitionA2DPPower;
+ (id)entryEventBackwardDefinitionAHFPPower;
+ (id)entryEventBackwardDefinitionCBDiscoveryStats;
+ (id)entryEventBackwardDefinitionDetailedPowerProfileStats;
+ (id)entryEventBackwardDefinitionEnhancedPowerProfileStats;
+ (id)entryEventBackwardDefinitionEnhancedPowerStatsPerCore;
+ (id)entryEventBackwardDefinitionHCITrace;
+ (id)entryEventBackwardDefinitionMaxDutyCycle;
+ (id)entryEventBackwardDefinitionPowerProfileStats;
+ (id)entryEventBackwardDefinitionThreadRadioPowerProfileStats;
+ (id)entryEventBackwardDefinitionWirelessProxScanDStats;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventBackwardWakeupVSE;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionMagnet;
+ (id)entryEventPointDefinitionMagnetOperation;
+ (id)entryEventPointDefinitions;
+ (id)getBluetooth5GKeys;
+ (id)getScanCoreKeys;
+ (void)load;
- (BOOL)isConnectable;
- (BOOL)isConnected;
- (BOOL)isDiscoverable;
- (BOOL)modulePowered;
- (BTLocalDeviceImpl)localBluetoothDevice;
- (PLBluetoothAgent)init;
- (id)advertisingDataDescription:(const char *)a3 :(unint64_t)a4;
- (id)btHardwareChipsetQuery;
- (void)attachSession;
- (void)dealloc;
- (void)initOperatorDependancies;
- (void)log;
- (void)logEventBackwardA2DP:(id)a3;
- (void)logEventBackwardCBDiscovery:(id)a3;
- (void)logEventBackwardHFP:(id)a3;
- (void)logEventBackwardMaxDutyCycle:(id)a3;
- (void)logEventBackwardPowerProfileStats;
- (void)logEventBackwardPowerStatsPerCore;
- (void)logEventBackwardWirelessProximity:(id)a3;
- (void)logEventForwardDeviceState;
- (void)logEventForwardPairedDevices;
- (void)logEventIntervalConnectedDevices;
- (void)logEventIntervalHCIRawData:(id)a3;
- (void)logEventIntervalWakeVSE:(id)a3;
- (void)logEventPointMagnet:(id)a3;
- (void)logEventPointMagnetOperation:(id)a3;
- (void)logwithBTOnCheck;
- (void)modelBluetoothOffPower;
- (void)modelBluetoothPower:(id)a3;
@end

@implementation PLBluetoothAgent

- (void)log
{
  if ([(PLBluetoothAgent *)self modulePowered])
  {
    if (!self->_lastPowerEntryDate || ([MEMORY[0x277CBEAA8] monotonicDate], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeIntervalSinceDate:", self->_lastPowerEntryDate), v5 = v4, v3, v5 > 60.0))
    {
      if (+[PLBluetoothAgent shouldLogEnhancedStatsPerCore])
      {
        [(PLBluetoothAgent *)self logEventBackwardPowerStatsPerCore];
      }

      else
      {
        [(PLBluetoothAgent *)self logEventBackwardPowerProfileStats];
      }
    }
  }

  [(PLBluetoothAgent *)self logEventForwardDeviceState];
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  [*(a1 + 32) logwithBTOnCheck];
  v2 = [*(a1 + 32) ENScanCache];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 ENScanCache];
    [v4 logEventBackwardMaxDutyCycle:v5];

    v6 = [*(a1 + 32) ENScanCache];
    [v6 removeAllObjects];
  }
}

- (void)logwithBTOnCheck
{
  if ([(PLBluetoothAgent *)self modulePowered])
  {

    [(PLBluetoothAgent *)self log];
  }

  else
  {

    [(PLBluetoothAgent *)self modelBluetoothOffPower];
  }
}

- (BOOL)modulePowered
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  ModulePower = BTLocalDeviceGetModulePower();
  if (ModulePower)
  {
    v3 = ModulePower;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__PLBluetoothAgent_modulePowered__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (qword_2811F4430 != -1)
      {
        dispatch_once(&qword_2811F4430, block);
      }

      if (byte_2811F4375 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetModulePower: failed! %d\n", v3];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modulePowered]"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1077];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  result = v14 == -1;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BTLocalDeviceImpl)localBluetoothDevice
{
  v20 = *MEMORY[0x277D85DE8];
  result = self->localBluetoothDevice;
  if (!result)
  {
    result = self->session;
    if (result)
    {
      Default = BTLocalDeviceGetDefault();
      if (Default || (result = self->localBluetoothDevice) == 0)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v5 = objc_opt_class();
          block = MEMORY[0x277D85DD0];
          v14 = 3221225472;
          v15 = __40__PLBluetoothAgent_localBluetoothDevice__block_invoke;
          v16 = &__block_descriptor_40_e5_v8__0lu32l8;
          v17 = v5;
          if (qword_2811F4428 != -1)
          {
            dispatch_once(&qword_2811F4428, &block);
          }

          if (byte_2811F4374 == 1)
          {
            v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetDefault: failed! %d\n", Default, block, v14, v15, v16, v17];
            v7 = MEMORY[0x277D3F178];
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
            v9 = [v8 lastPathComponent];
            v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent localBluetoothDevice]"];
            [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:1052];

            v11 = PLLogCommon();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v19 = v6;
              _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        result = 0;
        self->localBluetoothDevice = 0;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)logEventBackwardPowerProfileStats
{
  v187 = *MEMORY[0x277D85DE8];
  v183 = 0;
  v184 = 0;
  v3 = *MEMORY[0x277D3F5C8];
  v4 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"PowerProfileStats"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  if (([MEMORY[0x277D3F208] isWiFiClass:1004011] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004012))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      v182[0] = MEMORY[0x277D85DD0];
      v182[1] = 3221225472;
      v182[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke;
      v182[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v182[4] = v6;
      if (qword_2811F4520 != -1)
      {
        dispatch_once(&qword_2811F4520, v182);
      }

      if (byte_2811F4393 == 1)
      {
        v7 = self;
        v8 = v5;
        v9 = v4;
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"reading detailedpowerprofile"];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v13 = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
        [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:1941];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v186 = v10;
          _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v4 = v9;
        v5 = v8;
        self = v7;
      }
    }

    v180 = 0;
    v181 = 0;
    v178 = 0;
    v179 = 0;
    v176 = 0;
    v177 = 0;
    v175 = 0;
    [(PLBluetoothAgent *)self localBluetoothDevice];
    DetailedPowerProfileStatistics = BTLocalDeviceReadDetailedPowerProfileStatistics();
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{DetailedPowerProfileStatistics, &v178, &v178 + 4, &v177 + 4, &v177, &v176 + 4, &v176, &v175 + 4, &v175}];
    [v5 setObject:v17 forKeyedSubscript:@"ErrorCode"];

    v18 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v3 andName:@"DetailedPowerProfileStats"];
    v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v18];
    if (DetailedPowerProfileStatistics)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v20 = objc_opt_class();
        v174[0] = MEMORY[0x277D85DD0];
        v174[1] = 3221225472;
        v174[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_869;
        v174[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v174[4] = v20;
        if (qword_2811F4528 != -1)
        {
          dispatch_once(&qword_2811F4528, v174);
        }

        if (byte_2811F4394 == 1)
        {
          v164 = v4;
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: could not read power profile statistics (error: %u)", DetailedPowerProfileStatistics];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v24 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
          [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:1992];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v186 = v21;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v4 = v164;
        }
      }

      if (DetailedPowerProfileStatistics == 7)
      {
        v27 = [(PLOperator *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_873;
        block[3] = &unk_2782591D0;
        block[4] = self;
        dispatch_async(v27, block);
      }
    }

    else
    {
      v165 = v4;
      v28 = [MEMORY[0x277CBEAA8] monotonicDate];
      lastPowerEntryDate = self->_lastPowerEntryDate;
      self->_lastPowerEntryDate = v28;

      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v181)];
      [v19 setObject:v30 forKeyedSubscript:@"durationTotal"];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v181];
      [v19 setObject:v31 forKeyedSubscript:@"durationActive"];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v180)];
      [v19 setObject:v32 forKeyedSubscript:@"durationIdle"];

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v180];
      [v19 setObject:v33 forKeyedSubscript:@"durationSleep"];

      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v179)];
      [v19 setObject:v34 forKeyedSubscript:@"disableCounter"];

      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v179];
      [v19 setObject:v35 forKeyedSubscript:@"iPATxBT"];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v178)];
      [v19 setObject:v36 forKeyedSubscript:@"iPATxLE"];

      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v178];
      [v19 setObject:v37 forKeyedSubscript:@"ePATxBT"];

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v177)];
      [v19 setObject:v38 forKeyedSubscript:@"ePATxLE"];

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v177];
      [v19 setObject:v39 forKeyedSubscript:@"connectedRxBT"];

      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v176)];
      [v19 setObject:v40 forKeyedSubscript:@"connectedRxLE"];

      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v176];
      [v19 setObject:v41 forKeyedSubscript:@"scanRxBT"];

      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v175)];
      [v19 setObject:v42 forKeyedSubscript:@"scanRxLE"];

      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v175];
      [v19 setObject:v43 forKeyedSubscript:@"totalPHYCal"];

      if (HIDWORD(v181))
      {
        LODWORD(v44) = v180;
        v45 = (v44 / HIDWORD(v181) * 10000.0);
        HIWORD(v183) = (v44 / HIDWORD(v181) * 10000.0);
        v46 = ((HIDWORD(v176) + v177 + v176 + HIDWORD(v175)) / HIDWORD(v181) * 10000.0);
        LOWORD(v184) = ((HIDWORD(v176) + v177 + v176 + HIDWORD(v175)) / HIDWORD(v181) * 10000.0);
        *&v47 = (HIDWORD(v178) + v179 + v178 + HIDWORD(v177)) / HIDWORD(v181) * 10000.0;
        HIWORD(v184) = *&v47;
        LODWORD(v47) = HIDWORD(v180);
        v48 = v47 / HIDWORD(v181) * 10000.0;
        v49 = v48;
        LOWORD(v183) = v48;
      }

      else
      {
        v49 = 0;
        v45 = 0;
        v46 = 0;
      }

      v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      [v5 setObject:v100 forKeyedSubscript:@"TXPower"];

      v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v46];
      [v5 setObject:v101 forKeyedSubscript:@"RXPower"];

      v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v45];
      [v5 setObject:v102 forKeyedSubscript:@"SleepPower"];

      v103 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v49];
      [v5 setObject:v103 forKeyedSubscript:@"OtherPower"];

      v4 = v165;
    }

    [(PLOperator *)self logEntry:v19];

    goto LABEL_62;
  }

  v50 = +[PLBluetoothAgent shouldLogEnhancedStats];
  v51 = [MEMORY[0x277D3F180] debugEnabled];
  if (!v50)
  {
    if (v51)
    {
      v79 = objc_opt_class();
      v169[0] = MEMORY[0x277D85DD0];
      v169[1] = 3221225472;
      v169[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_890;
      v169[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v169[4] = v79;
      if (qword_2811F4550 != -1)
      {
        dispatch_once(&qword_2811F4550, v169);
      }

      if (byte_2811F4399 == 1)
      {
        v80 = self;
        v81 = v5;
        v82 = v4;
        v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"Getting power profile stats"];
        v84 = MEMORY[0x277D3F178];
        v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v86 = [v85 lastPathComponent];
        v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
        [v84 logMessage:v83 fromFile:v86 fromFunction:v87 fromLineNumber:2113];

        v88 = PLLogCommon();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v186 = v83;
          _os_log_debug_impl(&dword_21A4C6000, v88, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v4 = v82;
        v5 = v81;
        self = v80;
      }
    }

    [(PLBluetoothAgent *)self localBluetoothDevice];
    PowerProfileStatistics = BTLocalDeviceReadPowerProfileStatistics();
    v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:PowerProfileStatistics];
    [v5 setObject:v90 forKeyedSubscript:@"ErrorCode"];

    if (PowerProfileStatistics)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v91 = objc_opt_class();
        v168[0] = MEMORY[0x277D85DD0];
        v168[1] = 3221225472;
        v168[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_896;
        v168[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v168[4] = v91;
        if (qword_2811F4558 != -1)
        {
          dispatch_once(&qword_2811F4558, v168);
        }

        if (byte_2811F439A == 1)
        {
          v92 = v4;
          v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: could not read power profile statistics (error: %u)", PowerProfileStatistics];
          v94 = MEMORY[0x277D3F178];
          v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v96 = [v95 lastPathComponent];
          v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
          [v94 logMessage:v93 fromFile:v96 fromFunction:v97 fromLineNumber:2123];

          v98 = PLLogCommon();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v186 = v93;
            _os_log_debug_impl(&dword_21A4C6000, v98, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v4 = v92;
        }
      }

      if (PowerProfileStatistics == 7)
      {
        v99 = [(PLOperator *)self workQueue];
        v167[0] = MEMORY[0x277D85DD0];
        v167[1] = 3221225472;
        v167[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_897;
        v167[3] = &unk_2782591D0;
        v167[4] = self;
        dispatch_async(v99, v167);
      }

      [(PLOperator *)self logEntry:v5];
      goto LABEL_67;
    }

    v104 = [MEMORY[0x277CBEAA8] monotonicDate];
    v105 = self->_lastPowerEntryDate;
    self->_lastPowerEntryDate = v104;

    v106 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIWORD(v184)];
    [v5 setObject:v106 forKeyedSubscript:@"TXPower"];

    v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v184];
    [v5 setObject:v107 forKeyedSubscript:@"RXPower"];

    v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIWORD(v183)];
    [v5 setObject:v108 forKeyedSubscript:@"SleepPower"];

    v109 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v183];
    [v5 setObject:v109 forKeyedSubscript:@"OtherPower"];

LABEL_65:
    [(PLOperator *)self logEntry:v5];
LABEL_66:
    v110 = [v5 copy];
    [(PLBluetoothAgent *)self modelBluetoothPower:v110];

    goto LABEL_67;
  }

  if (v51)
  {
    v52 = objc_opt_class();
    v172[0] = MEMORY[0x277D85DD0];
    v172[1] = 3221225472;
    v172[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_876;
    v172[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v172[4] = v52;
    if (qword_2811F4538 != -1)
    {
      dispatch_once(&qword_2811F4538, v172);
    }

    if (byte_2811F4396 == 1)
    {
      v53 = self;
      v54 = v5;
      v55 = v4;
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"Getting Enhanced BT stats"];
      v57 = MEMORY[0x277D3F178];
      v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v59 = [v58 lastPathComponent];
      v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
      [v57 logMessage:v56 fromFile:v59 fromFunction:v60 fromLineNumber:2010];

      v61 = PLLogCommon();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v186 = v56;
        _os_log_debug_impl(&dword_21A4C6000, v61, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v4 = v55;
      v5 = v54;
      self = v53;
    }
  }

  v62 = malloc_type_malloc(0xF8uLL, 0x10000401CD0A21CuLL);
  if (!v62)
  {
    goto LABEL_65;
  }

  v63 = v62;
  v166 = v4;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  DetailedPowerProfileStatistics = BTLocalDeviceReadEnhancedPowerProfileStatistics();
  v162 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v3 andName:@"EnhancedPowerProfileStats"];
  v64 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v162];
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DetailedPowerProfileStatistics];
  v161 = v64;
  [v64 setObject:v65 forKeyedSubscript:@"ErrorCode"];

  v66 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v3 andName:@"ThreadRadioPowerProfileStats"];
  v67 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v66];
  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DetailedPowerProfileStatistics];
  v163 = v67;
  [v67 setObject:v68 forKeyedSubscript:@"ErrorCode"];

  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DetailedPowerProfileStatistics];
  [v5 setObject:v69 forKeyedSubscript:@"ErrorCode"];

  if (DetailedPowerProfileStatistics)
  {
    v70 = v161;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v71 = objc_opt_class();
      v171[0] = MEMORY[0x277D85DD0];
      v171[1] = 3221225472;
      v171[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_882;
      v171[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v171[4] = v71;
      if (qword_2811F4540 != -1)
      {
        dispatch_once(&qword_2811F4540, v171);
      }

      if (byte_2811F4397 == 1)
      {
        v160 = v66;
        v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: could not read enhanced power profile statistics (error: %u)", DetailedPowerProfileStatistics];
        v73 = MEMORY[0x277D3F178];
        v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v75 = [v74 lastPathComponent];
        v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]"];
        [v73 logMessage:v72 fromFile:v75 fromFunction:v76 fromLineNumber:2094];

        v77 = PLLogCommon();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v186 = v72;
          _os_log_debug_impl(&dword_21A4C6000, v77, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v66 = v160;
      }
    }

    if (DetailedPowerProfileStatistics == 7)
    {
      v78 = [(PLOperator *)self workQueue];
      v170[0] = MEMORY[0x277D85DD0];
      v170[1] = 3221225472;
      v170[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_886;
      v170[3] = &unk_2782591D0;
      v170[4] = self;
      dispatch_async(v78, v170);
    }
  }

  else
  {
    v112 = [MEMORY[0x277CBEAA8] monotonicDate];
    v113 = self->_lastPowerEntryDate;
    self->_lastPowerEntryDate = v112;

    v114 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 1)];
    [v5 setObject:v114 forKeyedSubscript:@"TXPower"];

    v115 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 2)];
    [v5 setObject:v115 forKeyedSubscript:@"RXPower"];

    v116 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 3)];
    [v5 setObject:v116 forKeyedSubscript:@"SleepPower"];

    v117 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 4)];
    [v5 setObject:v117 forKeyedSubscript:@"OtherPower"];

    v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 1)];
    v70 = v161;
    [v161 setObject:v118 forKeyedSubscript:@"TXPower"];

    v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 2)];
    [v161 setObject:v119 forKeyedSubscript:@"RXPower"];

    v120 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 3)];
    [v161 setObject:v120 forKeyedSubscript:@"SleepPower"];

    v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 4)];
    [v161 setObject:v121 forKeyedSubscript:@"OtherPower"];

    v122 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 38)];
    [v161 setObject:v122 forKeyedSubscript:@"iPACounter"];

    v123 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 39)];
    [v161 setObject:v123 forKeyedSubscript:@"ePACounter"];

    v124 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 9)];
    [v161 setObject:v124 forKeyedSubscript:@"ActiveDuration"];

    v125 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 27)];
    [v161 setObject:v125 forKeyedSubscript:@"DeepSleepDuration"];

    v126 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 10)];
    [v161 setObject:v126 forKeyedSubscript:@"D3SuspendDuration"];

    v127 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 11)];
    [v161 setObject:v127 forKeyedSubscript:@"PerstDuration"];

    v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 13)];
    [v161 setObject:v128 forKeyedSubscript:@"L0Duration"];

    v129 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 17)];
    [v161 setObject:v129 forKeyedSubscript:@"L11Duration"];

    v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 19)];
    [v161 setObject:v130 forKeyedSubscript:@"L12Duration"];

    v131 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 21)];
    [v161 setObject:v131 forKeyedSubscript:@"L2Duration"];

    v132 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 28)];
    [v161 setObject:v132 forKeyedSubscript:@"BTTimestamp"];

    v133 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 43)];
    [v161 setObject:v133 forKeyedSubscript:@"epaTransmitPercentage"];

    v134 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 41)];
    [v161 setObject:v134 forKeyedSubscript:@"txbfTransmitPercentage"];

    v135 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 44)];
    [v161 setObject:v135 forKeyedSubscript:@"txbfEpaTransmitPercentage"];

    v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 42)];
    [v161 setObject:v136 forKeyedSubscript:@"mrcReceivePercentage"];

    v137 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 40)];
    [v161 setObject:v137 forKeyedSubscript:@"lpScanReceivePercentage"];

    if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
    {
      v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 45)];
      [v161 setObject:v138 forKeyedSubscript:@"rxScanPercentage"];

      v139 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 46)];
      [v161 setObject:v139 forKeyedSubscript:@"mainCoreELNAOnPercentage"];

      v140 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 47)];
      [v161 setObject:v140 forKeyedSubscript:@"mainCoreELNAOffPercentage"];

      v141 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 48)];
      [v161 setObject:v141 forKeyedSubscript:@"scanCoreELNAOnPercentage"];

      v142 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 49)];
      [v161 setObject:v142 forKeyedSubscript:@"scanCoreELNAOffPercentage"];

      v143 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 46)];
      [v5 setObject:v143 forKeyedSubscript:@"mainCoreELNAOnPercentage"];

      v144 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 47)];
      [v5 setObject:v144 forKeyedSubscript:@"mainCoreELNAOffPercentage"];

      v145 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 48)];
      [v5 setObject:v145 forKeyedSubscript:@"scanCoreELNAOnPercentage"];

      v146 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 49)];
      [v5 setObject:v146 forKeyedSubscript:@"scanCoreELNAOffPercentage"];
    }

    if (+[PLBluetoothAgent areBluetooth5GAndThreadRadioLoggingEnabled])
    {
      v147 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 54)];
      [v161 setObject:v147 forKeyedSubscript:@"iPA5GCounter"];

      v148 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 55)];
      [v161 setObject:v148 forKeyedSubscript:@"ePA5GCounter"];

      v149 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 112)];
      [v161 setObject:v149 forKeyedSubscript:@"txbf5GTransmitPercentage"];

      v150 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 113)];
      [v161 setObject:v150 forKeyedSubscript:@"mrc5GReceivePercentage"];

      v151 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 114)];
      [v161 setObject:v151 forKeyedSubscript:@"epa5GTransmitPercentage"];

      v152 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 115)];
      [v161 setObject:v152 forKeyedSubscript:@"txbf5GEpaTransmitPercentage"];

      v153 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63[29]];
      [v161 setObject:v153 forKeyedSubscript:@"Duration5GTx"];

      v154 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63[30]];
      [v161 setObject:v154 forKeyedSubscript:@"Duration5GRx"];
    }

    if (+[PLBluetoothAgent areBluetooth5GAndThreadRadioLoggingEnabled])
    {
      v155 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 28)];
      [v163 setObject:v155 forKeyedSubscript:@"RadioTimestamp"];

      v156 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 50)];
      [v163 setObject:v156 forKeyedSubscript:@"m154TransmitPercentage"];

      v157 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 51)];
      [v163 setObject:v157 forKeyedSubscript:@"m154ReceivePercentage"];

      v158 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 52)];
      [v163 setObject:v158 forKeyedSubscript:@"iPAThreadCounter"];

      v159 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v63 + 53)];
      [v163 setObject:v159 forKeyedSubscript:@"ePAThreadCounter"];

      [(PLOperator *)self logEntry:v163];
    }

    [(PLOperator *)self logEntry:v161];
  }

  free(v63);

  v4 = v166;
LABEL_62:
  [(PLOperator *)self logEntry:v5];
  if (!DetailedPowerProfileStatistics)
  {
    goto LABEL_66;
  }

LABEL_67:

  v111 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardDeviceState
{
  v12 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DeviceState"];
  v3 = [(PLBluetoothAgent *)self modulePowered];
  v4 = [(PLBluetoothAgent *)self isDiscoverable];
  v5 = [(PLBluetoothAgent *)self isConnected];
  v6 = [(PLBluetoothAgent *)self isConnectable];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v7 setObject:v8 forKeyedSubscript:@"DevicePowered"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  [v7 setObject:v9 forKeyedSubscript:@"DeviceDiscoverable"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v7 setObject:v10 forKeyedSubscript:@"DeviceConnected"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v7 setObject:v11 forKeyedSubscript:@"DeviceConnectable"];

  [(PLOperator *)self logEntry:v7];
}

- (BOOL)isDiscoverable
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  Discoverable = BTLocalDeviceGetDiscoverable();
  if (Discoverable)
  {
    v3 = Discoverable;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __34__PLBluetoothAgent_isDiscoverable__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (qword_2811F4438 != -1)
      {
        dispatch_once(&qword_2811F4438, block);
      }

      if (byte_2811F4376 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetDiscoverable: failed! %d\n", v3];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent isDiscoverable]"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1093];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  result = v14 == -1;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isConnected
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  ConnectionStatus = BTLocalDeviceGetConnectionStatus();
  if (ConnectionStatus)
  {
    v3 = ConnectionStatus;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __31__PLBluetoothAgent_isConnected__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (qword_2811F4440 != -1)
      {
        dispatch_once(&qword_2811F4440, block);
      }

      if (byte_2811F4377 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetConnectionStatus: failed! %d\n", v3];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent isConnected]"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1113];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  result = v14 == -1;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isConnectable
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  Connectable = BTLocalDeviceGetConnectable();
  if (Connectable)
  {
    v3 = Connectable;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__PLBluetoothAgent_isConnectable__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v4;
      if (qword_2811F4448 != -1)
      {
        dispatch_once(&qword_2811F4448, block);
      }

      if (byte_2811F4378 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetConnectable: failed! %d\n", v3];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent isConnectable]"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1136];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  result = v14 == -1;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLBluetoothAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"Magnet";
  v3 = [a1 entryEventPointDefinitionMagnet];
  v8[1] = @"MagnetOperation";
  v9[0] = v3;
  v4 = [a1 entryEventPointDefinitionMagnetOperation];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventPointDefinitionMagnet
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_282C1BF58;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"clientname";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_StringFormat];
  v16[0] = v3;
  v15[1] = @"inputBytesPerSecond";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"packetsPerSecond";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v16[2] = v7;
  v15[3] = @"sessionId";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionMagnetOperation
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1BF58;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"state";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"value";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitions
{
  v42[2] = *MEMORY[0x277D85DE8];
  v41[0] = @"PairedDevices";
  v38 = *MEMORY[0x277D3F4E8];
  v2 = v38;
  v36 = *MEMORY[0x277D3F568];
  v3 = v36;
  v37 = &unk_282C1BF58;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v40[0] = v27;
  v39 = *MEMORY[0x277D3F540];
  v4 = v39;
  v34[0] = @"PairedDevicesName";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_StringFormat];
  v35[0] = v25;
  v34[1] = @"PairedDevicesDefaultName";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_StringFormat];
  v35[1] = v23;
  v34[2] = @"PairedDevicesMac";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v35[2] = v21;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  v40[1] = v20;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v38 count:2];
  v41[1] = @"DeviceState";
  v42[0] = v19;
  v30 = v3;
  v31 = &unk_282C1BF68;
  v32[0] = v2;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v32[1] = v4;
  v33[0] = v18;
  v28[0] = @"DevicePowered";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v17 commonTypeDict_BoolFormat];
  v29[0] = v5;
  v28[1] = @"DeviceDiscoverable";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v29[1] = v7;
  v28[2] = @"DeviceConnectable";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_BoolFormat];
  v29[2] = v9;
  v28[3] = @"DeviceConnected";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_BoolFormat];
  v29[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v33[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v42[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventBackwardDefinitions
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v32 = [MEMORY[0x277D3F208] kPLWiFiClassOfDevice];
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Wifi/BT Chipset for Device is  = %d\n", buf, 8u);
  }

  if ([a1 shouldLogMarconi])
  {
    v29[0] = @"DetailedPowerProfileStats";
    v4 = [a1 entryEventBackwardDefinitionDetailedPowerProfileStats];
    v30[0] = v4;
    v29[1] = @"HCITrace";
    v5 = [a1 entryEventBackwardDefinitionHCITrace];
    v30[1] = v5;
    v29[2] = @"PowerProfileStats";
    v6 = [a1 entryEventBackwardDefinitionPowerProfileStats];
    v30[2] = v6;
    v29[3] = @"BTWakeupVSE";
    v7 = [a1 entryEventBackwardWakeupVSE];
    v30[3] = v7;
    v29[4] = @"WirelessProxScanDStats";
    v8 = [a1 entryEventBackwardDefinitionWirelessProxScanDStats];
    v30[4] = v8;
    v29[5] = @"CBDiscoveryStats";
    v9 = [a1 entryEventBackwardDefinitionCBDiscoveryStats];
    v30[5] = v9;
    v29[6] = @"A2DPPower";
    v10 = [a1 entryEventBackwardDefinitionA2DPPower];
    v30[6] = v10;
    v29[7] = @"HFPPower";
    v11 = [a1 entryEventBackwardDefinitionAHFPPower];
    v30[7] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:8];
LABEL_5:

LABEL_9:
    goto LABEL_10;
  }

  if (([MEMORY[0x277D3F208] isWiFiClass:1004007] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004010))
  {
    v27[0] = @"HFPPower";
    v4 = [a1 entryEventBackwardDefinitionAHFPPower];
    v28[0] = v4;
    v27[1] = @"A2DPPower";
    v5 = [a1 entryEventBackwardDefinitionA2DPPower];
    v28[1] = v5;
    v27[2] = @"HCITrace";
    v6 = [a1 entryEventBackwardDefinitionHCITrace];
    v28[2] = v6;
    v27[3] = @"MaxDutyCycle";
    v7 = [a1 entryEventBackwardDefinitionMaxDutyCycle];
    v28[3] = v7;
    v27[4] = @"PowerProfileStats";
    v8 = [a1 entryEventBackwardDefinitionPowerProfileStats];
    v28[4] = v8;
    v27[5] = @"WirelessProxScanDStats";
    v9 = [a1 entryEventBackwardDefinitionWirelessProxScanDStats];
    v28[5] = v9;
    v27[6] = @"CBDiscoveryStats";
    v10 = [a1 entryEventBackwardDefinitionCBDiscoveryStats];
    v28[6] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:7];
    goto LABEL_9;
  }

  if ([a1 shouldLogEnhancedStats])
  {
    v25[0] = @"PowerProfileStats";
    v4 = [a1 entryEventBackwardDefinitionPowerProfileStats];
    v26[0] = v4;
    v25[1] = @"EnhancedPowerProfileStats";
    v5 = [a1 entryEventBackwardDefinitionEnhancedPowerProfileStats];
    v26[1] = v5;
    v25[2] = @"ThreadRadioPowerProfileStats";
    v6 = [a1 entryEventBackwardDefinitionThreadRadioPowerProfileStats];
    v26[2] = v6;
    v25[3] = @"HCITrace";
    v7 = [a1 entryEventBackwardDefinitionHCITrace];
    v26[3] = v7;
    v25[4] = @"WirelessProxScanDStats";
    v8 = [a1 entryEventBackwardDefinitionWirelessProxScanDStats];
    v26[4] = v8;
    v25[5] = @"CBDiscoveryStats";
    v20 = [a1 entryEventBackwardDefinitionCBDiscoveryStats];
    v26[5] = v20;
    v25[6] = @"A2DPPower";
    v15 = [a1 entryEventBackwardDefinitionA2DPPower];
    v26[6] = v15;
    v25[7] = @"HFPPower";
    v16 = [a1 entryEventBackwardDefinitionAHFPPower];
    v26[7] = v16;
    v25[8] = @"BTWakeupVSE";
    v17 = [a1 entryEventBackwardWakeupVSE];
    v26[8] = v17;
    v25[9] = @"MaxDutyCycle";
    v18 = [a1 entryEventBackwardDefinitionMaxDutyCycle];
    v26[9] = v18;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:10];
  }

  else
  {
    if ([a1 shouldLogEnhancedStatsPerCore])
    {
      v23[0] = @"PowerProfileStats";
      v4 = [a1 entryEventBackwardDefinitionPowerProfileStats];
      v24[0] = v4;
      v23[1] = @"EnhancedPowerStatsPerCore";
      v5 = [a1 entryEventBackwardDefinitionEnhancedPowerStatsPerCore];
      v24[1] = v5;
      v23[2] = @"HCITrace";
      v6 = [a1 entryEventBackwardDefinitionHCITrace];
      v24[2] = v6;
      v23[3] = @"WirelessProxScanDStats";
      v7 = [a1 entryEventBackwardDefinitionWirelessProxScanDStats];
      v24[3] = v7;
      v23[4] = @"CBDiscoveryStats";
      v8 = [a1 entryEventBackwardDefinitionCBDiscoveryStats];
      v24[4] = v8;
      v23[5] = @"A2DPPower";
      v9 = [a1 entryEventBackwardDefinitionA2DPPower];
      v24[5] = v9;
      v23[6] = @"HFPPower";
      v10 = [a1 entryEventBackwardDefinitionAHFPPower];
      v24[6] = v10;
      v23[7] = @"BTWakeupVSE";
      v11 = [a1 entryEventBackwardWakeupVSE];
      v24[7] = v11;
      v23[8] = @"MaxDutyCycle";
      v19 = [a1 entryEventBackwardDefinitionMaxDutyCycle];
      v24[8] = v19;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:9];

      goto LABEL_5;
    }

    v21[0] = @"HCITrace";
    v4 = [a1 entryEventBackwardDefinitionHCITrace];
    v22[0] = v4;
    v21[1] = @"MaxDutyCycle";
    v5 = [a1 entryEventBackwardDefinitionMaxDutyCycle];
    v22[1] = v5;
    v21[2] = @"PowerProfileStats";
    v6 = [a1 entryEventBackwardDefinitionPowerProfileStats];
    v22[2] = v6;
    v21[3] = @"WirelessProxScanDStats";
    v7 = [a1 entryEventBackwardDefinitionWirelessProxScanDStats];
    v22[3] = v7;
    v21[4] = @"CBDiscoveryStats";
    v8 = [a1 entryEventBackwardDefinitionCBDiscoveryStats];
    v22[4] = v8;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAHFPPower
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1BF58;
  v21[1] = @"log";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"HFPDuration";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v19[0] = v15;
  v18[1] = @"HFPpercantageePA1";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v19[1] = v4;
  v18[2] = @"HFPpercentageiPA1";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v19[2] = v6;
  v18[3] = @"HFPpercantageePA2";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v19[3] = v8;
  v18[4] = @"HFPpercentageiPA2";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionA2DPPower
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1BF58;
  v17[1] = @"log";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"A2DPDuration";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v15[0] = v5;
  v14[1] = @"A2DPpercantageePA";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"A2DPpercantageiPA";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionDetailedPowerProfileStats
{
  v41[2] = *MEMORY[0x277D85DE8];
  v40[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v38[0] = *MEMORY[0x277D3F568];
  v38[1] = v2;
  v39[0] = &unk_282C1BF58;
  v39[1] = @"log";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v41[0] = v35;
  v40[1] = *MEMORY[0x277D3F540];
  v36[0] = @"durationTotal";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v37[0] = v33;
  v36[1] = @"durationActive";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_IntegerFormat];
  v37[1] = v31;
  v36[2] = @"durationIdle";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v37[2] = v29;
  v36[3] = @"durationSleep";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v37[3] = v27;
  v36[4] = @"disableCounter";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v37[4] = v25;
  v36[5] = @"iPATxBT";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v37[5] = v23;
  v36[6] = @"iPATxLE";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v37[6] = v21;
  v36[7] = @"ePATxBT";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v37[7] = v19;
  v36[8] = @"ePATxLE";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v37[8] = v17;
  v36[9] = @"connectedRxBT";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v37[9] = v15;
  v36[10] = @"connectedRxLE";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v37[10] = v4;
  v36[11] = @"scanRxBT";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v37[11] = v6;
  v36[12] = @"scanRxLE";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v37[12] = v8;
  v36[13] = @"totalPHYCal";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v37[13] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:14];
  v41[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionHCITrace
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BF78;
  v13[1] = @"log";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"HCIRawData";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_RawDataFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventBackwardDefinitionMaxDutyCycle
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1BF58;
  v15[1] = @"log";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Count";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"Duration";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventBackwardDefinitionPowerProfileStats
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1BF68;
  v21[1] = @"log";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"ErrorCode";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v19[0] = v15;
  v18[1] = @"TXPower";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v19[1] = v4;
  v18[2] = @"RXPower";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v19[2] = v6;
  v18[3] = @"SleepPower";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v19[3] = v8;
  v18[4] = @"OtherPower";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionEnhancedPowerProfileStats
{
  v71[21] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v70[0] = @"ErrorCode";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_IntegerFormat];
  v71[0] = v55;
  v70[1] = @"TXPower";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_IntegerFormat];
  v71[1] = v53;
  v70[2] = @"RXPower";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_IntegerFormat];
  v71[2] = v51;
  v70[3] = @"SleepPower";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_IntegerFormat];
  v71[3] = v49;
  v70[4] = @"OtherPower";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_IntegerFormat];
  v71[4] = v47;
  v70[5] = @"iPACounter";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_IntegerFormat];
  v71[5] = v45;
  v70[6] = @"ePACounter";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_IntegerFormat];
  v71[6] = v43;
  v70[7] = @"ActiveDuration";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_IntegerFormat];
  v71[7] = v41;
  v70[8] = @"D3SuspendDuration";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_IntegerFormat];
  v71[8] = v39;
  v70[9] = @"PerstDuration";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_IntegerFormat];
  v71[9] = v37;
  v70[10] = @"DeepSleepDuration";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_IntegerFormat];
  v71[10] = v35;
  v70[11] = @"L0Duration";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v71[11] = v33;
  v70[12] = @"L11Duration";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_IntegerFormat];
  v71[12] = v31;
  v70[13] = @"L12Duration";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v71[13] = v29;
  v70[14] = @"L2Duration";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v71[14] = v27;
  v70[15] = @"BTTimestamp";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v71[15] = v25;
  v70[16] = @"epaTransmitPercentage";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v71[16] = v23;
  v70[17] = @"txbfTransmitPercentage";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v71[17] = v4;
  v70[18] = @"txbfEpaTransmitPercentage";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v71[18] = v6;
  v70[19] = @"mrcReceivePercentage";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v71[19] = v8;
  v70[20] = @"lpScanReceivePercentage";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v71[20] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:21];
  v12 = [v2 initWithDictionary:v11];

  v13 = [a1 getScanCoreKeys];
  [v12 addEntriesFromDictionary:v13];

  v14 = [a1 getBluetooth5GKeys];
  [v12 addEntriesFromDictionary:v14];

  if ([a1 areBluetooth5GAndThreadRadioLoggingEnabled])
  {
    v68[0] = *MEMORY[0x277D3F4E8];
    v66 = *MEMORY[0x277D3F568];
    v67 = &unk_282C1BF88;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v68[1] = *MEMORY[0x277D3F540];
    v69[0] = v15;
    v69[1] = v12;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v69;
    v18 = v68;
LABEL_8:
    v20 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:2];

    goto LABEL_9;
  }

  if ([MEMORY[0x277D3F208] isWiFiClass:1004015])
  {
    v64[0] = *MEMORY[0x277D3F4E8];
    v62 = *MEMORY[0x277D3F568];
    v63 = &unk_282C1BF98;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v64[1] = *MEMORY[0x277D3F540];
    v65[0] = v15;
    v65[1] = v12;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v65;
    v18 = v64;
    goto LABEL_8;
  }

  if (([MEMORY[0x277D3F208] isWiFiClass:1004013] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
  {
    v60[0] = *MEMORY[0x277D3F4E8];
    v19 = *MEMORY[0x277D3F548];
    v58[0] = *MEMORY[0x277D3F568];
    v58[1] = v19;
    v59[0] = &unk_282C1BFA8;
    v59[1] = @"log";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    v60[1] = *MEMORY[0x277D3F540];
    v61[0] = v15;
    v61[1] = v12;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v61;
    v18 = v60;
    goto LABEL_8;
  }

  v20 = MEMORY[0x277CBEC10];
LABEL_9:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)getScanCoreKeys
{
  v16[5] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v15[0] = @"rxScanPercentage";
    v14 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v14 commonTypeDict_IntegerFormat];
    v16[0] = v3;
    v15[1] = @"mainCoreELNAOnPercentage";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v16[1] = v5;
    v15[2] = @"mainCoreELNAOffPercentage";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v16[2] = v7;
    v15[3] = @"scanCoreELNAOnPercentage";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v16[3] = v9;
    v15[4] = @"scanCoreELNAOffPercentage";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v16[4] = v11;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)getBluetooth5GKeys
{
  v22[8] = *MEMORY[0x277D85DE8];
  if ([a1 areBluetooth5GAndThreadRadioLoggingEnabled])
  {
    v21[0] = @"iPA5GCounter";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v22[0] = v19;
    v21[1] = @"ePA5GCounter";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v22[1] = v17;
    v21[2] = @"txbf5GTransmitPercentage";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v22[2] = v15;
    v21[3] = @"mrc5GReceivePercentage";
    v14 = [MEMORY[0x277D3F198] sharedInstance];
    v2 = [v14 commonTypeDict_IntegerFormat];
    v22[3] = v2;
    v21[4] = @"epa5GTransmitPercentage";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v22[4] = v4;
    v21[5] = @"txbf5GEpaTransmitPercentage";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v22[5] = v6;
    v21[6] = @"Duration5GTx";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v22[6] = v8;
    v21[7] = @"Duration5GRx";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v22[7] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:8];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionThreadRadioPowerProfileStats
{
  v27[6] = *MEMORY[0x277D85DE8];
  v16 = objc_alloc(MEMORY[0x277CBEB38]);
  v26[0] = @"ErrorCode";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v27[0] = v19;
  v26[1] = @"RadioTimestamp";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v2 = [v18 commonTypeDict_IntegerFormat];
  v27[1] = v2;
  v26[2] = @"m154TransmitPercentage";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v27[2] = v4;
  v26[3] = @"m154ReceivePercentage";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v27[3] = v6;
  v26[4] = @"iPAThreadCounter";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v27[4] = v8;
  v26[5] = @"ePAThreadCounter";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v27[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v17 = [v16 initWithDictionary:v11];

  if ([a1 areBluetooth5GAndThreadRadioLoggingEnabled])
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v22 = *MEMORY[0x277D3F568];
    v23 = &unk_282C1BF58;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v24[1] = *MEMORY[0x277D3F540];
    v25[0] = v12;
    v25[1] = v17;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionEnhancedPowerStatsPerCore
{
  v105[45] = *MEMORY[0x277D85DE8];
  v64 = objc_alloc(MEMORY[0x277CBEB38]);
  v104[0] = @"ErrorCode";
  v98 = [MEMORY[0x277D3F198] sharedInstance];
  v97 = [v98 commonTypeDict_IntegerFormat];
  v105[0] = v97;
  v104[1] = @"BTTimestamp";
  v96 = [MEMORY[0x277D3F198] sharedInstance];
  v95 = [v96 commonTypeDict_IntegerFormat];
  v105[1] = v95;
  v104[2] = @"ActiveDuration";
  v94 = [MEMORY[0x277D3F198] sharedInstance];
  v93 = [v94 commonTypeDict_IntegerFormat];
  v105[2] = v93;
  v104[3] = @"MainCoreTXPower";
  v92 = [MEMORY[0x277D3F198] sharedInstance];
  v91 = [v92 commonTypeDict_IntegerFormat];
  v105[3] = v91;
  v104[4] = @"MainCoreRXPower";
  v90 = [MEMORY[0x277D3F198] sharedInstance];
  v89 = [v90 commonTypeDict_IntegerFormat];
  v105[4] = v89;
  v104[5] = @"MainCoreSleepPower";
  v88 = [MEMORY[0x277D3F198] sharedInstance];
  v87 = [v88 commonTypeDict_IntegerFormat];
  v105[5] = v87;
  v104[6] = @"MainCoreOtherPower";
  v86 = [MEMORY[0x277D3F198] sharedInstance];
  v85 = [v86 commonTypeDict_IntegerFormat];
  v105[6] = v85;
  v104[7] = @"MainCoreRxScanPercentage";
  v84 = [MEMORY[0x277D3F198] sharedInstance];
  v83 = [v84 commonTypeDict_IntegerFormat];
  v105[7] = v83;
  v104[8] = @"MainCoreElnaOnPercentage";
  v82 = [MEMORY[0x277D3F198] sharedInstance];
  v81 = [v82 commonTypeDict_IntegerFormat];
  v105[8] = v81;
  v104[9] = @"MainCoreElnaOffPercentage";
  v80 = [MEMORY[0x277D3F198] sharedInstance];
  v79 = [v80 commonTypeDict_IntegerFormat];
  v105[9] = v79;
  v104[10] = @"MainCoreMrcRxPercentage";
  v78 = [MEMORY[0x277D3F198] sharedInstance];
  v77 = [v78 commonTypeDict_IntegerFormat];
  v105[10] = v77;
  v104[11] = @"MainCoreIpaTxPercentage";
  v76 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v76 commonTypeDict_IntegerFormat];
  v105[11] = v75;
  v104[12] = @"MainCoreEpaTxPercentage";
  v74 = [MEMORY[0x277D3F198] sharedInstance];
  v73 = [v74 commonTypeDict_IntegerFormat];
  v105[12] = v73;
  v104[13] = @"MainCoreTxbfTxPercentage";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_IntegerFormat];
  v105[13] = v71;
  v104[14] = @"MainCoreEpaTxbfTxPercentage";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_IntegerFormat];
  v105[14] = v69;
  v104[15] = @"MainCoreM154TransmitPercentage";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_IntegerFormat];
  v105[15] = v67;
  v104[16] = @"MainCoreM154ReceivePercentage";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v66 commonTypeDict_IntegerFormat];
  v105[16] = v63;
  v104[17] = @"SecondaryCoreTXPower";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_IntegerFormat];
  v105[17] = v61;
  v104[18] = @"SecondaryCoreRXPower";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_IntegerFormat];
  v105[18] = v59;
  v104[19] = @"SecondaryCoreSleepPower";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_IntegerFormat];
  v105[19] = v57;
  v104[20] = @"SecondaryCoreOtherPower";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_IntegerFormat];
  v105[20] = v55;
  v104[21] = @"SecondaryCoreRxScanPercentage";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_IntegerFormat];
  v105[21] = v53;
  v104[22] = @"SecondaryCoreElnaOnPercentage";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_IntegerFormat];
  v105[22] = v51;
  v104[23] = @"SecondaryCoreElnaOffPercentage";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_IntegerFormat];
  v105[23] = v49;
  v104[24] = @"SecondaryCoreMrcRxPercentage";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_IntegerFormat];
  v105[24] = v47;
  v104[25] = @"SecondaryCoreIpaTxPercentage";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_IntegerFormat];
  v105[25] = v45;
  v104[26] = @"SecondaryCoreEpaTxPercentage";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_IntegerFormat];
  v105[26] = v43;
  v104[27] = @"SecondaryCoreTxbfTxPercentage";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_IntegerFormat];
  v105[27] = v41;
  v104[28] = @"SecondaryCoreEpaTxbfTxPercentage";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_IntegerFormat];
  v105[28] = v39;
  v104[29] = @"SecondaryCoreM154TransmitPercentage";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_IntegerFormat];
  v105[29] = v37;
  v104[30] = @"SecondaryCoreM154ReceivePercentage";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_IntegerFormat];
  v105[30] = v35;
  v104[31] = @"ScanCoreTXPower";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v105[31] = v33;
  v104[32] = @"ScanCoreRXPower";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_IntegerFormat];
  v105[32] = v31;
  v104[33] = @"ScanCoreSleepPower";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v105[33] = v29;
  v104[34] = @"ScanCoreOtherPower";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v105[34] = v27;
  v104[35] = @"ScanCoreRxScanPercentage";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v105[35] = v25;
  v104[36] = @"ScanCoreElnaOnPercentage";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v105[36] = v23;
  v104[37] = @"ScanCoreElnaOffPercentage";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v105[37] = v21;
  v104[38] = @"ScanCoreMrcRxPercentage";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v105[38] = v19;
  v104[39] = @"ScanCoreIpaTxPercentage";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v105[39] = v17;
  v104[40] = @"ScanCoreEpaTxPercentage";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v2 = [v16 commonTypeDict_IntegerFormat];
  v105[40] = v2;
  v104[41] = @"ScanCoreTxbfTxPercentage";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v105[41] = v4;
  v104[42] = @"ScanCoreEpaTxbfTxPercentage";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v105[42] = v6;
  v104[43] = @"ScanCoreM154TransmitPercentage";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v105[43] = v8;
  v104[44] = @"ScanCoreM154ReceivePercentage";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v105[44] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:45];
  v65 = [v64 initWithDictionary:v11];

  if ([a1 shouldLogEnhancedStatsPerCore])
  {
    v102[0] = *MEMORY[0x277D3F4E8];
    v100 = *MEMORY[0x277D3F568];
    v101 = &unk_282C1BF58;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v102[1] = *MEMORY[0x277D3F540];
    v103[0] = v12;
    v103[1] = v65;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardWakeupVSE
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_282C1BFB8;
  v28[1] = @"log";
  v3 = *MEMORY[0x277D3F4F0];
  v27[2] = *MEMORY[0x277D3F4A0];
  v27[3] = v3;
  v28[2] = MEMORY[0x277CBEC38];
  v28[3] = &unk_282C140D0;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"VSEType";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_IntegerFormat];
  v26[0] = v22;
  v25[1] = @"VSEReasonCode";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v26[1] = v20;
  v25[2] = @"VSEReasonString";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_StringFormat];
  v26[2] = v18;
  v25[3] = @"VSERaw";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_RawDataFormat];
  v26[3] = v16;
  v25[4] = @"WakeEventType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v26[4] = v5;
  v25[5] = @"BundleID";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat_withBundleID];
  v26[5] = v7;
  v25[6] = @"DeviceName";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v26[6] = v9;
  v25[7] = @"PeerType";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v26[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];
  v30[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionWirelessProxScanDStats
{
  v17[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3F598];
  v16[0] = *MEMORY[0x277D3F5A8];
  v16[1] = v2;
  v17[0] = &unk_282C10AE8;
  v17[1] = &unk_282C10B00;
  v16[2] = *MEMORY[0x277D3F5A0];
  v17[2] = &unk_282C10B18;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v14[0] = *MEMORY[0x277D3F4E8];
  v4 = *MEMORY[0x277D3F548];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v4;
  v13[0] = &unk_282C1BFC8;
  v13[1] = @"log";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v5;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"ClientScanDuration";
  v10[1] = @"ClientAdvDuration";
  v11[0] = v3;
  v11[1] = v3;
  v10[2] = @"ClientScanConfig";
  v11[2] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventBackwardDefinitionCBDiscoveryStats
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1BF58;
  v25[1] = @"log";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"apID";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat];
  v23[0] = v19;
  v22[1] = @"apIX";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v23[1] = v17;
  v22[2] = @"sonC";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[2] = v15;
  v22[3] = @"sofC";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v23[3] = v4;
  v22[4] = @"sonD";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v23[4] = v6;
  v22[5] = @"sofD";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v23[5] = v8;
  v22[6] = @"dsFl";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v23[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v30[1] = *MEMORY[0x277D85DE8];
  v29 = @"ConnectedDevices";
  v27[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v25[0] = *MEMORY[0x277D3F568];
  v25[1] = v2;
  v26[0] = &unk_282C1BFD8;
  v26[1] = MEMORY[0x277CBEC38];
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v28[0] = v22;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"Name";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_StringFormat];
  v24[0] = v20;
  v23[1] = @"MAC";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_StringFormat];
  v24[1] = v18;
  v23[2] = @"timestampEnd";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_DateFormat];
  v24[2] = v16;
  v23[3] = @"DeviceType";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v15 commonTypeDict_IntegerFormat];
  v24[3] = v3;
  v23[4] = @"DefaultName";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v24[4] = v5;
  v23[5] = @"IsRequest";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v24[5] = v7;
  v23[6] = @"BundleID";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat_withBundleID];
  v24[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
  v28[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v30[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLBluetoothAgent)init
{
  v10.receiver = self;
  v10.super_class = PLBluetoothAgent;
  v2 = [(PLAgent *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->session = 0;
    v2->localBluetoothDevice = 0;
    btHardwareChipset = v2->_btHardwareChipset;
    v2->_btHardwareChipset = 0;

    v3->_logCount = 0;
    v5 = [MEMORY[0x277CBEB38] dictionary];
    ENScanCache = v3->_ENScanCache;
    v3->_ENScanCache = v5;

    v7 = objc_alloc_init(MEMORY[0x277D49638]);
    beaconManager = v3->_beaconManager;
    v3->_beaconManager = v7;

    [(PLBluetoothAgent *)v3 attachSession];
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke;
  v50[3] = &unk_2782597E8;
  v50[4] = self;
  v3 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v50];
  batteryLevelChanged = self->_batteryLevelChanged;
  self->_batteryLevelChanged = v3;

  if (([MEMORY[0x277D3F180] debugEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "isDevBoard"))
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2;
    v49[3] = &unk_2782597E8;
    v49[4] = self;
    v5 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v49];
    sbcChanged = self->_sbcChanged;
    self->_sbcChanged = v5;
  }

  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x277D3F270]);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_548;
    v48[3] = &unk_27825A1D8;
    v48[4] = self;
    v8 = [v7 initWithOperator:self withRegistration:&unk_282C17720 withBlock:v48];
    [(PLBluetoothAgent *)self setLeConnectionListener:v8];
  }

  if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild") && objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v9 = objc_alloc(MEMORY[0x277D3F270]);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_564;
    v47[3] = &unk_27825A1D8;
    v47[4] = self;
    v10 = [v9 initWithOperator:self withRegistration:&unk_282C17748 withBlock:v47];
    [(PLBluetoothAgent *)self setBtHCIListener:v10];
  }

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_573;
  v46[3] = &unk_27825A1D8;
  v46[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_282C17770 withBlock:v46];
  [(PLBluetoothAgent *)self setWirelessProxListener:v12];
  v13 = objc_alloc(MEMORY[0x277D3F270]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_585;
  v45[3] = &unk_27825A1D8;
  v45[4] = self;
  v14 = [v13 initWithOperator:self withRegistration:&unk_282C17798 withBlock:v45];
  [(PLBluetoothAgent *)self setCBDiscoveryListener:v14];
  v15 = objc_alloc(MEMORY[0x277D3F270]);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_597;
  v44[3] = &unk_27825A1D8;
  v44[4] = self;
  v16 = [v15 initWithOperator:self withRegistration:&unk_282C177C0 withBlock:v44];
  [(PLBluetoothAgent *)self setENListener:v16];

  if (([MEMORY[0x277D3F208] isWiFiClass:1004007] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004010) & 1) != 0 || +[PLBluetoothAgent shouldLogEnhancedStats](PLBluetoothAgent, "shouldLogEnhancedStats") || +[PLBluetoothAgent shouldLogEnhancedStatsPerCore](PLBluetoothAgent, "shouldLogEnhancedStatsPerCore") || +[PLBluetoothAgent shouldLogMarconi](PLBluetoothAgent, "shouldLogMarconi"))
  {
    v17 = objc_alloc(MEMORY[0x277D3F270]);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_616;
    v43[3] = &unk_27825A1D8;
    v43[4] = self;
    v18 = [v17 initWithOperator:self withRegistration:&unk_282C177E8 withBlock:v43];
    [(PLBluetoothAgent *)self setBtA2DPListener:v18];
    v19 = objc_alloc(MEMORY[0x277D3F270]);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_625;
    v42[3] = &unk_27825A1D8;
    v42[4] = self;
    v20 = [v19 initWithOperator:self withRegistration:&unk_282C17810 withBlock:v42];
    [(PLBluetoothAgent *)self setBtHFPListener:v20];
  }

  if (+[PLBluetoothAgent shouldLogMarconi](PLBluetoothAgent, "shouldLogMarconi") || +[PLBluetoothAgent shouldLogEnhancedStats](PLBluetoothAgent, "shouldLogEnhancedStats") || ([MEMORY[0x277D3F208] isARMMac] & 1) != 0 || +[PLBluetoothAgent shouldLogEnhancedStatsPerCore](PLBluetoothAgent, "shouldLogEnhancedStatsPerCore"))
  {
    v21 = objc_alloc(MEMORY[0x277D3F270]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_634;
    v41[3] = &unk_27825A1D8;
    v41[4] = self;
    v22 = [v21 initWithOperator:self withRegistration:&unk_282C17838 withBlock:v41];
    [(PLBluetoothAgent *)self setBtHCIVSEListener:v22];
  }

  v23 = dispatch_time(0, 2000000000);
  v24 = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_635;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_after(v23, v24, block);

  v25 = [MEMORY[0x277CBEAA8] monotonicDate];
  v26 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v26 createDistributionEventForwardWithDistributionID:47 withChildNodeNameToWeight:&unk_282C17860 withStartDate:v25];

  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v27 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v27 createDistributionEventForwardWithDistributionID:45 withChildNodeNameToWeight:&unk_282C17888 withStartDate:v25];
  }

  v28 = objc_alloc(MEMORY[0x277D3F1F0]);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_656;
  v39[3] = &unk_2782597E8;
  v39[4] = self;
  v29 = [v28 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v39];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v29;

  v31 = objc_alloc(MEMORY[0x277D3F270]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_664;
  v38[3] = &unk_27825A1D8;
  v38[4] = self;
  v32 = [v31 initWithOperator:self withRegistration:&unk_282C178B0 withBlock:v38];
  magnetListener = self->_magnetListener;
  self->_magnetListener = v32;

  if ([MEMORY[0x277D3F180] fullMode])
  {
    v34 = objc_alloc(MEMORY[0x277D3F270]);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_676;
    v37[3] = &unk_27825A1D8;
    v37[4] = self;
    v35 = [v34 initWithOperator:self withRegistration:&unk_282C178D8 withBlock:v37];
    magnetOperationListener = self->_magnetOperationListener;
    self->_magnetOperationListener = v35;
  }
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_549;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F43C8 != -1)
    {
      dispatch_once(&qword_2811F43C8, &block);
    }

    if (_MergedGlobals_1_21 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"got callback! %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:873];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventIntervalLeConnectedDevices:v6 withRequest:0];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_549(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_21 = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_565;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F43D0 != -1)
    {
      dispatch_once(&qword_2811F43D0, &block);
    }

    if (byte_2811F4369 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"got callback! %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:885];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventIntervalHCIRawData:v6];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_565(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4369 = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_573(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_574;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F43D8 != -1)
    {
      dispatch_once(&qword_2811F43D8, &block);
    }

    if (byte_2811F436A == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WirelessProximityListener got callback! %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:895];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventBackwardWirelessProximity:v6];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_574(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436A = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_585(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_586;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F43E0 != -1)
    {
      dispatch_once(&qword_2811F43E0, &block);
    }

    if (byte_2811F436B == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CBDiscoveryScanListener got callback! %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:904];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventBackwardCBDiscovery:v6];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_586(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436B = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_597(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_598;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F43E8 != -1)
    {
      dispatch_once(&qword_2811F43E8, block);
    }

    if (byte_2811F436C == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"EN BT Status Listener got callback! %@", v6];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:912];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = [v6 objectForKeyedSubscript:@"CTScanCount"];
  v16 = [*(a1 + 32) ENScanCache];
  [v16 setObject:v15 forKeyedSubscript:@"Count"];

  v17 = [v6 objectForKeyedSubscript:@"CTScanDuration"];
  v18 = [*(a1 + 32) ENScanCache];
  [v18 setObject:v17 forKeyedSubscript:@"Duration"];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = *(a1 + 32);
    v20 = objc_opt_class();
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_604;
    v36 = &__block_descriptor_40_e5_v8__0lu32l8;
    v37 = v20;
    if (qword_2811F43F0 != -1)
    {
      dispatch_once(&qword_2811F43F0, &v33);
    }

    if (byte_2811F436D == 1)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = [*(a1 + 32) ENScanCache];
      v23 = [v22 objectForKeyedSubscript:@"Count"];
      v24 = [*(a1 + 32) ENScanCache];
      v25 = [v24 objectForKeyedSubscript:@"Duration"];
      v26 = [v21 stringWithFormat:@"Updated Cache to %@ %@!", v23, v25, v33, v34, v35, v36, v37];

      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v29 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke_2"];
      [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:915];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v26;
        _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_598(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436C = result;
  return result;
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_604(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436D = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_616(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_617;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F43F8 != -1)
    {
      dispatch_once(&qword_2811F43F8, &block);
    }

    if (byte_2811F436E == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"got callback! %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:924];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventBackwardA2DP:v6];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_617(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436E = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_625(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_626;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F4400 != -1)
    {
      dispatch_once(&qword_2811F4400, &block);
    }

    if (byte_2811F436F == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"got callback! %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:932];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventBackwardHFP:v6];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_626(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F436F = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogBluetooth();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HostWakeReport payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalWakeVSE:v6];
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_635(uint64_t a1)
{
  result = [*(a1 + 32) isConnected];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 logEventIntervalConnectedDevices];
  }

  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_656(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_3;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v5;
    if (qword_2811F4408 != -1)
    {
      dispatch_once(&qword_2811F4408, &block);
    }

    if (byte_2811F4370 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Notification from ThermalMonitor: %@", v3, block, v16, v17, v18, v19];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke_2"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:972];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = +[PLBluetoothAgent shouldLogEnhancedStatsPerCore];
  v13 = *(a1 + 32);
  if (v12)
  {
    [v13 logEventBackwardPowerStatsPerCore];
  }

  else
  {
    [v13 logEventBackwardPowerProfileStats];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4370 = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_665;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F4410 != -1)
    {
      dispatch_once(&qword_2811F4410, &block);
    }

    if (byte_2811F4371 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Magnet Listener Payload %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:989];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointMagnet:v6];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_665(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4371 = result;
  return result;
}

void __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_676(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_677;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v8;
    if (qword_2811F4418 != -1)
    {
      dispatch_once(&qword_2811F4418, &block);
    }

    if (byte_2811F4372 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Magnet Operation Listener Payload %@", v6, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:998];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointMagnetOperation:v6];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_initOperatorDependancies__block_invoke_2_677(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4372 = result;
  return result;
}

- (void)logEventPointMagnet:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v4 andName:@"Magnet"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMagnetOperation:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v4 andName:@"MagnetOperation"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  self->keepSessionAlive = 0;
  if (self->session)
  {
    v3 = BTSessionDetachWithQueue();
    if (v3)
    {
      v4 = v3;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v5 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __27__PLBluetoothAgent_dealloc__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v5;
        if (qword_2811F4420 != -1)
        {
          dispatch_once(&qword_2811F4420, block);
        }

        if (byte_2811F4373 == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not detach the Bluetooth session. (error: %d)", v4];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v9 = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent dealloc]"];
          [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:1034];

          v11 = PLLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v16 = v6;
            _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }
  }

  v13.receiver = self;
  v13.super_class = PLBluetoothAgent;
  [(PLAgent *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __27__PLBluetoothAgent_dealloc__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4373 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_localBluetoothDevice__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4374 = result;
  return result;
}

uint64_t __33__PLBluetoothAgent_modulePowered__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4375 = result;
  return result;
}

uint64_t __34__PLBluetoothAgent_isDiscoverable__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4376 = result;
  return result;
}

uint64_t __31__PLBluetoothAgent_isConnected__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4377 = result;
  return result;
}

uint64_t __33__PLBluetoothAgent_isConnectable__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4378 = result;
  return result;
}

- (void)attachSession
{
  v3 = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PLBluetoothAgent_attachSession__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __33__PLBluetoothAgent_attachSession__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 48) = 1;
  if (!*(*(a1 + 32) + 56))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v2 = *(a1 + 32);
      v3 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__PLBluetoothAgent_attachSession__block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (qword_2811F4450 != -1)
      {
        dispatch_once(&qword_2811F4450, block);
      }

      if (byte_2811F4379 == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempting to attach to session"];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v7 = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent attachSession]_block_invoke"];
        [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:1156];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v28 = v4;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 bundleIdentifier];
    v13 = [v10 stringWithFormat:@"PowerLogV2-%@-%u", v12, getpid()];

    [v13 cStringUsingEncoding:4];
    v14 = [*(a1 + 32) workQueue];
    v15 = BTSessionAttachWithQueue();

    if (v15 && [MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __33__PLBluetoothAgent_attachSession__block_invoke_711;
      v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v25[4] = v17;
      if (qword_2811F4458 != -1)
      {
        dispatch_once(&qword_2811F4458, v25);
      }

      if (byte_2811F437A == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Could not attach the Bluetooth session. (error: %d)", v15];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v21 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent attachSession]_block_invoke_2"];
        [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:1161];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v28 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __33__PLBluetoothAgent_attachSession__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4379 = result;
  return result;
}

uint64_t __33__PLBluetoothAgent_attachSession__block_invoke_711(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437A = result;
  return result;
}

uint64_t __47__PLBluetoothAgent_sessionAttached_withResult___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437B = result;
  return result;
}

uint64_t __47__PLBluetoothAgent_sessionAttached_withResult___block_invoke_721(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437C = result;
  return result;
}

uint64_t __47__PLBluetoothAgent_sessionAttached_withResult___block_invoke_725(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  block[5] = 0;
  [*(a1 + 32) localBluetoothDevice];
  v2 = *(a1 + 32);
  v3 = BTLocalDeviceRegisterForPowerProfileStatistics();
  if (v3)
  {
    v4 = v3;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__PLBluetoothAgent_sessionAttached_withResult___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (qword_2811F4470 != -1)
      {
        dispatch_once(&qword_2811F4470, block);
      }

      if (byte_2811F437D == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not register for Power notifications. (error: %d)", v4];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent sessionAttached:withResult:]_block_invoke"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:1193];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v19 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 176);
  *(v13 + 176) = 0;

  result = [*(a1 + 32) log];
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __47__PLBluetoothAgent_sessionAttached_withResult___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437D = result;
  return result;
}

uint64_t __49__PLBluetoothAgent_sessionTerminated_withResult___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437E = result;
  return result;
}

void __49__PLBluetoothAgent_sessionTerminated_withResult___block_invoke_733(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained attachSession];
}

uint64_t __63__PLBluetoothAgent_bluetoothSessionEvent_onSession_withResult___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F437F = result;
  return result;
}

uint64_t __61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4380 = result;
  return result;
}

uint64_t __61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke_743(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4381 = result;
  return result;
}

uint64_t __61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke_749(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4382 = result;
  return result;
}

uint64_t __61__PLBluetoothAgent_bluetoothDeviceEvent_onDevice_withResult___block_invoke_755(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4383 = result;
  return result;
}

- (void)logEventForwardPairedDevices
{
  v115 = *MEMORY[0x277D85DE8];
  v64 = 0;
  memset(v65, 0, sizeof(v65));
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBluetoothAgent *)self localBluetoothDevice];
  PairedDevices = BTLocalDeviceGetPairedDevices();
  v5 = 0x277D3F000uLL;
  v6 = MEMORY[0x277D3F5D0];
  v7 = 0x277D3F000uLL;
  v56 = v3;
  if (PairedDevices)
  {
    v8 = PairedDevices;
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_29;
    }

    v9 = objc_opt_class();
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke;
    v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v63[4] = v9;
    if (qword_2811F44A8 != -1)
    {
      dispatch_once(&qword_2811F44A8, v63);
    }

    if (byte_2811F4384 != 1)
    {
      goto LABEL_29;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetPairedDevices: failed! %d\n", v8];
    v11 = MEMORY[0x277D3F178];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
    v13 = [v12 lastPathComponent];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventForwardPairedDevices]"];
    [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:1386];

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v99) = 138412290;
      *(&v99 + 4) = v10;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", &v99, 0xCu);
    }

    v3 = v56;
    v7 = 0x277D3F000uLL;
    v6 = MEMORY[0x277D3F5D0];
LABEL_28:
    v5 = 0x277D3F000uLL;
LABEL_29:
    if ([*(v5 + 384) debugEnabled])
    {
      v42 = objc_opt_class();
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_777;
      v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v59[4] = v42;
      if (qword_2811F44C0 != -1)
      {
        dispatch_once(&qword_2811F44C0, v59);
      }

      if (byte_2811F4387 == 1)
      {
        v43 = v7;
        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"No BT paired device, nothing to log"];
        v45 = MEMORY[0x277D3F178];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v47 = [v46 lastPathComponent];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventForwardPairedDevices]"];
        [v45 logMessage:v44 fromFile:v47 fromFunction:v48 fromLineNumber:1415];

        v49 = PLLogCommon();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v99) = 138412290;
          *(&v99 + 4) = v44;
          _os_log_debug_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_DEBUG, "%@", &v99, 0xCu);
        }

        v3 = v56;
        v7 = v43;
        v6 = MEMORY[0x277D3F5D0];
      }
    }

    v50 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*v6 andName:@"PairedDevices"];
    v51 = [objc_alloc(*(v7 + 400)) initWithEntryKey:v50];
    [v51 setIsErrorEntry:1];
    [v51 setObject:@"No BT paired device forKeyedSubscript:{nothing to log", @"__PLEntryErrorString__"}];
    [(PLOperator *)self logEntry:v51];

    goto LABEL_37;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  memset(v82, 0, sizeof(v82));
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_765;
    v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v62[4] = v17;
    if (qword_2811F44B0 != -1)
    {
      dispatch_once(&qword_2811F44B0, v62);
    }

    if (byte_2811F4385 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth: No devices paired"];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventForwardPairedDevices]"];
      [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:1392];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v67 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v3 = v56;
      v7 = 0x277D3F000;
      v6 = MEMORY[0x277D3F5D0];
    }
  }

  if (!v64)
  {
    goto LABEL_28;
  }

  v55 = &v53;
  v24 = 0;
  v25 = *v6;
  v57 = v61;
  v58 = v25;
  *&v16 = 138412290;
  v54 = v16;
  do
  {
    v26 = v65[v24];
    BTDeviceGetAddressString();
    v27 = v65[v24];
    BTDeviceGetDefaultName();
    v28 = v65[v24];
    BTDeviceGetName();
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v29 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v61[0] = __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_771;
      v61[1] = &__block_descriptor_40_e5_v8__0lu32l8;
      v61[2] = v29;
      if (qword_2811F44B8 != -1)
      {
        dispatch_once(&qword_2811F44B8, block);
      }

      if (byte_2811F4386 == 1)
      {
        v30 = self;
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth: Local device is paired to device : %s (%s) with mac : %s\n", &v99, &v83, &v68];
        v32 = MEMORY[0x277D3F178];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v34 = [v33 lastPathComponent];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventForwardPairedDevices]"];
        [v32 logMessage:v31 fromFile:v34 fromFunction:v35 fromLineNumber:1399];

        v36 = PLLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = v54;
          v67 = v31;
          _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        self = v30;
        v3 = v56;
        v7 = 0x277D3F000uLL;
      }
    }

    v37 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v58 andName:@"PairedDevices"];
    v38 = [objc_alloc(*(v7 + 400)) initWithEntryKey:v37];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v83];
    [v38 setObject:v39 forKeyedSubscript:@"PairedDevicesDefaultName"];

    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v99];
    [v38 setObject:v40 forKeyedSubscript:@"PairedDevicesName"];

    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v68];
    [v38 setObject:v41 forKeyedSubscript:@"PairedDevicesMac"];

    [v38 setEntryDate:v3];
    [(PLOperator *)self logEntry:v38];
    v68 = 0uLL;
    *&v69 = 0;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;

    ++v24;
  }

  while (v24 < v64);
  v6 = MEMORY[0x277D3F5D0];
  v5 = 0x277D3F000;
  if (!v64)
  {
    goto LABEL_29;
  }

LABEL_37:

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4384 = result;
  return result;
}

uint64_t __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_765(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4385 = result;
  return result;
}

uint64_t __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_771(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4386 = result;
  return result;
}

uint64_t __48__PLBluetoothAgent_logEventForwardPairedDevices__block_invoke_777(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4387 = result;
  return result;
}

uint64_t __67__PLBluetoothAgent_logEventIntervalLeConnectedDevices_withRequest___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4388 = result;
  return result;
}

uint64_t __67__PLBluetoothAgent_logEventIntervalLeConnectedDevices_withRequest___block_invoke_792(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4389 = result;
  return result;
}

- (void)logEventIntervalHCIRawData:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3F180];
  v5 = a3;
  if ([v4 debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBluetoothAgent_logEventIntervalHCIRawData___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F44D8 != -1)
    {
      dispatch_once(&qword_2811F44D8, block);
    }

    if (byte_2811F438A == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"inside HCI trace callback logEventIntervalHCIRawData"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalHCIRawData:]"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:1480];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"HCITrace"];
  v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
  v15 = [v5 objectForKey:@"HCITrace"];

  [v14 setObject:v15 forKeyedSubscript:@"HCIRawData"];
  [(PLOperator *)self logEntry:v14];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLBluetoothAgent_logEventIntervalHCIRawData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438A = result;
  return result;
}

- (id)advertisingDataDescription:(const char *)a3 :(unint64_t)a4
{
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (a4 >= 2)
  {
    do
    {
      v7 = *a3;
      if (*a3)
      {
        v8 = a4 > v7;
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        break;
      }

      v9 = *(a3 + 1);
      if (v9 == 255)
      {
        if (v7 >= 5 && a3[2] == 76)
        {
          v11 = 4;
          do
          {
            v12 = v11 + (a3[(v11 + 1)] & 0x1F);
            [v6 appendFormat:@" --%@: %d, ", @"LE_adv_type", a3[v11]];
            v11 = v12 + 2;
          }

          while (v7 + 1 >= (v12 + 2) + 2);
        }
      }

      else if (v9 == 1 && v7 >= 2)
      {
        [v6 appendFormat:@" Flags: %#04X, ", *(a3 + 2)];
      }

      a3 += v7 + 1;
      a4 -= v7 + 1;
    }

    while (a4 > 1);
  }

  return v6;
}

- (void)logEventIntervalWakeVSE:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLBluetoothAgent_logEventIntervalWakeVSE___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F44E0 != -1)
    {
      dispatch_once(&qword_2811F44E0, block);
    }

    if (byte_2811F438B == 1)
    {
      v6 = self;
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"wake payload = %@", v4];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalWakeVSE:]"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:1573];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v63 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      self = v6;
    }
  }

  v60 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BTWakeupVSE"];
  v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v60];
  v14 = [v4 objectForKey:@"WakeEventType"];
  v15 = [v4 objectForKey:@"HostWakeReport"];
  v16 = [v15 length];
  v59 = v4;
  if (v14)
  {
    [v13 setObject:v14 forKeyedSubscript:@"WakeEventType"];
    if ([v14 intValue] >= 1)
    {
      v17 = [v4 objectForKey:@"BundleID"];
      [v13 setObject:v17 forKeyedSubscript:@"BundleID"];

      v18 = [v4 objectForKey:@"DeviceName"];
      [v13 setObject:v18 forKeyedSubscript:@"DeviceName"];

      v19 = [v4 objectForKey:@"PeerType"];
      [v13 setObject:v19 forKeyedSubscript:@"PeerType"];

      [v13 setObject:v15 forKeyedSubscript:@"VSERaw"];
      v20 = [v14 intValue];
      if (v20 > 4)
      {
        if (v20 != 5)
        {
          if (v20 == 8)
          {
            v39 = self;
            if (v16 <= 1)
            {
              v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:255];
              [v13 setObject:v40 forKeyedSubscript:@"VSEReasonCode"];
            }

            v41 = *[v15 bytes];
            v42 = [v15 bytes];
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v41 | (*(v42 + 1) << 8)];
            [v13 setObject:v24 forKeyedSubscript:@"VSEReasonCode"];
            self = v39;
            goto LABEL_59;
          }

          goto LABEL_87;
        }

        v47 = [MEMORY[0x277CCABB0] numberWithInt:4];
        [v13 setObject:v47 forKeyedSubscript:@"VSEType"];

        v45 = MEMORY[0x277CCABB0];
        v46 = 5000;
      }

      else
      {
        if ((v20 - 1) < 2)
        {
          v21 = [MEMORY[0x277CCABB0] numberWithInt:4];
          [v13 setObject:v21 forKeyedSubscript:@"VSEType"];

          v22 = [MEMORY[0x277CCABB0] numberWithInt:62013];
          [v13 setObject:v22 forKeyedSubscript:@"VSEReasonCode"];

          if (v15)
          {
            v23 = -[PLBluetoothAgent advertisingDataDescription::](self, "advertisingDataDescription::", [v15 bytes], v16);
            v24 = v23;
            v25 = @"undecodable LE ADV";
            if (v23 && [(__CFString *)v23 length])
            {
              v25 = v24;
            }

            v26 = @"VSEReasonString";
            v27 = v13;
            v28 = v25;
            goto LABEL_58;
          }

LABEL_87:
          [(PLOperator *)self logEntry:v13];
          goto LABEL_88;
        }

        if (v20 != 3)
        {
          goto LABEL_87;
        }

        v44 = [MEMORY[0x277CCABB0] numberWithInt:4];
        [v13 setObject:v44 forKeyedSubscript:@"VSEType"];

        v45 = MEMORY[0x277CCABB0];
        v46 = 3000;
      }

      v24 = [v45 numberWithInt:v46];
      v26 = @"VSEReasonCode";
      v27 = v13;
      v28 = v24;
LABEL_58:
      [v27 setObject:v28 forKeyedSubscript:v26];
LABEL_59:

      goto LABEL_87;
    }
  }

  if ([MEMORY[0x277D3F208] isWatch])
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  if (v16 < (v29 | 5))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0xFFFFFFFFLL;
LABEL_86:
    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v32];
    [v13 setObject:v55 forKeyedSubscript:@"VSEType"];

    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30 + 1000 * v31];
    [v13 setObject:v56 forKeyedSubscript:@"VSEReasonCode"];

    [v13 setObject:v15 forKeyedSubscript:@"VSERaw"];
    goto LABEL_87;
  }

  v58 = self;
  v33 = ([v15 bytes] + v29);
  v32 = *v33;
  v31 = v33[1];
  v30 = v33[3];
  if ([MEMORY[0x277D3F208] isWiFiClass:1004014])
  {
LABEL_23:
    if ([MEMORY[0x277D3F208] isWatch])
    {
      if (v31 == 62 && v16 > (v29 | 8))
      {
        v30 = v33[8];
      }
    }

    v35 = [MEMORY[0x277D3F208] isWatch];
    if (v32 != 4 || v31 != 62)
    {
      self = v58;
      goto LABEL_86;
    }

    v36 = &v33[v35];
    if (v30 == 2)
    {
      self = v58;
      if (v16 >= 0x19)
      {
        if (v36[5] != 62)
        {
          goto LABEL_81;
        }

        if (v16 - 18 >= v36[17])
        {
          v37 = v36[17];
        }

        else
        {
          v37 = v16 - 18;
        }

        v38 = v36 + 18;
LABEL_67:
        v48 = [(PLBluetoothAgent *)self advertisingDataDescription:v38];
        v49 = v48;
        if (v48)
        {
          if ([(__CFString *)v48 length])
          {
            v50 = v49;
          }

          else
          {
            v50 = @"undecodable LE ADV";
          }
        }

        else
        {
          v50 = @"undecodable LE ADV";
        }

        [v13 setObject:v50 forKeyedSubscript:@"VSEReasonString"];

        goto LABEL_81;
      }
    }

    else
    {
      self = v58;
      if (v30 == 13 && v16 >= 0x28)
      {
        if (v36[5] != 62)
        {
          goto LABEL_81;
        }

        if (v16 - 33 >= v36[32])
        {
          v37 = v36[32];
        }

        else
        {
          v37 = v16 - 33;
        }

        v38 = v36 + 33;
        goto LABEL_67;
      }
    }

    if (v16 <= 0xD)
    {
LABEL_85:
      v32 = 4;
      v31 = 62;
      goto LABEL_86;
    }

LABEL_81:
    if ((v36[10] & 0xF0) == 0xA0)
    {
      v52 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v53 = [v13 objectForKeyedSubscript:@"VSEReasonString"];

      if (v53)
      {
        v54 = [v13 objectForKeyedSubscript:@"VSEReasonString"];
        [v52 appendString:v54];
      }

      [v52 appendString:{@" passup ADV, "}];
      [v13 setObject:v52 forKeyedSubscript:@"VSEReasonString"];
    }

    goto LABEL_85;
  }

  if (v32 != 6 || v31 != 0)
  {
    if (v32 == 4 && v31 == 62)
    {
      if (v30 > 0xD || ((1 << v30) & 0x2404) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v32 != 5 || v31 != 14)
    {
      goto LABEL_23;
    }
  }

LABEL_88:

  v57 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBluetoothAgent_logEventIntervalWakeVSE___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438B = result;
  return result;
}

- (void)logEventIntervalConnectedDevices
{
  v118 = self;
  v106 = &v104;
  v198 = *MEMORY[0x277D85DE8];
  v150 = 0;
  memset(v151, 0, sizeof(v151));
  v113 = [MEMORY[0x277CBEAA8] monotonicDate];
  v107 = objc_opt_new();
  [(PLBluetoothAgent *)v118 localBluetoothDevice];
  ConnectedDevices = BTLocalDeviceGetConnectedDevices();
  if (ConnectedDevices)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      v149[0] = MEMORY[0x277D85DD0];
      v149[1] = 3221225472;
      v149[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke;
      v149[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v149[4] = v3;
      if (qword_2811F44E8 != -1)
      {
        dispatch_once(&qword_2811F44E8, v149);
      }

      if (byte_2811F438C == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power ERROR: BTLocalDeviceGetConnectedDevices: failed! %d\n", ConnectedDevices];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v7 = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
        [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:1810];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *v182 = 138412290;
          *&v182[4] = v4;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", v182, 0xCu);
        }
      }
    }

LABEL_111:
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v94 = objc_opt_class();
      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v120[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_860;
      v120[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v120[4] = v94;
      if (qword_2811F4518 != -1)
      {
        dispatch_once(&qword_2811F4518, v120);
      }

      if (byte_2811F4392 == 1)
      {
        v95 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nothing changes in BT connected device list"];
        v96 = MEMORY[0x277D3F178];
        v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v98 = [v97 lastPathComponent];
        v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
        [v96 logMessage:v95 fromFile:v98 fromFunction:v99 fromLineNumber:1921];

        v100 = PLLogCommon();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
        {
          *v182 = 138412290;
          *&v182[4] = v95;
          _os_log_debug_impl(&dword_21A4C6000, v100, OS_LOG_TYPE_DEBUG, "%@", v182, 0xCu);
        }
      }
    }

    v101 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ConnectedDevices"];
    v102 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v101];
    [v102 setIsErrorEntry:1];
    [v102 setObject:@"Nothing changes in BT connected device list" forKeyedSubscript:@"__PLEntryErrorString__"];
    [(PLOperator *)v118 logEntry:v102];

    goto LABEL_119;
  }

  *(&v10 + 1) = 0;
  v197 = 0u;
  v196 = 0u;
  v195 = 0u;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  *v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v173 = 0u;
  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v168 = 0u;
  v167 = 0u;
  v166 = 0u;
  v164 = 0;
  v163 = 0;
  v165 = 0;
  v148 = 0;
  if (v150)
  {
    goto LABEL_18;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v147[0] = MEMORY[0x277D85DD0];
    v147[1] = 3221225472;
    v147[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_827;
    v147[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v147[4] = v11;
    if (qword_2811F44F0 != -1)
    {
      dispatch_once(&qword_2811F44F0, v147);
    }

    if (byte_2811F438D == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth: No devices connected"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:1817];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
      }
    }
  }

  if (v150)
  {
LABEL_18:
    v18 = 0;
    *&v10 = 138412290;
    *v119 = v10;
    do
    {
      v19 = [MEMORY[0x277CBEB38] dictionary];
      v20 = *(v151 + v18);
      if (!BTDeviceGetAddressString())
      {
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v163];
        if (v21)
        {
          [v19 setObject:v21 forKeyedSubscript:@"MAC"];
        }
      }

      v22 = *(v151 + v18);
      if (!BTDeviceGetDefaultName())
      {
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v166];
        if (v23)
        {
          [v19 setObject:v23 forKeyedSubscript:@"DefaultName"];
        }
      }

      v24 = *(v151 + v18);
      if (!BTDeviceGetName())
      {
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:v182];
        if (v25)
        {
          [v19 setObject:v25 forKeyedSubscript:@"Name"];
        }
      }

      if ([v19 count])
      {
        v26 = *(v151 + v18);
        if (!BTDeviceGetDeviceType())
        {
          v27 = [MEMORY[0x277CCABB0] numberWithInt:v148];
          if (v27)
          {
            [v19 setObject:v27 forKeyedSubscript:@"DeviceType"];
          }
        }

        [v107 addObject:v19];
      }

      else
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot get BT device attributes."];
        v29 = MEMORY[0x277D3F178];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v31 = [v30 lastPathComponent];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
        [v29 logMessage:v28 fromFile:v31 fromFunction:v32 fromLineNumber:1836];

        v33 = PLLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = v119[0];
          *(&buf + 4) = v28;
          _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }

      v164 = 0;
      v163 = 0;
      v165 = 0;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v197 = 0u;
      v196 = 0u;
      v195 = 0u;
      v194 = 0u;
      v193 = 0u;
      v192 = 0u;
      v191 = 0u;
      v190 = 0u;
      v189 = 0u;
      v188 = 0u;
      v187 = 0u;
      v186 = 0u;
      v185 = 0u;
      v184 = 0u;
      v183 = 0u;
      *v182 = 0u;

      ++v18;
    }

    while (v18 < v150);
  }

  v112 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ConnectedDevices"];
  v34 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:0 withComparisonOperation:6];
  v162 = v34;
  v105 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:1];

  v35 = [(PLOperator *)v118 storage];
  v36 = [v35 entriesForKey:v112 withComparisons:v105];

  v115 = objc_opt_new();
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  obj = v36;
  v37 = [obj countByEnumeratingWithState:&v143 objects:v161 count:16];
  if (v37)
  {
    v38 = *v144;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v144 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v143 + 1) + 8 * i);
        if (v40)
        {
          v41 = [*(*(&v143 + 1) + 8 * i) objectForKeyedSubscript:@"Name"];
          if (v41)
          {
            v42 = [v40 objectForKeyedSubscript:@"MAC"];
            if (v42)
            {
              v43 = [v40 objectForKeyedSubscript:@"DeviceType"];
              v44 = v43 == 0;

              if (!v44)
              {
                [v115 addObject:v40];
              }
            }

            else
            {
            }
          }
        }
      }

      v37 = [obj countByEnumeratingWithState:&v143 objects:v161 count:16];
    }

    while (v37);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v116 = v107;
  v114 = [v116 countByEnumeratingWithState:&v139 objects:v160 count:16];
  if (v114)
  {
    v110 = 0;
    v111 = *v140;
    *&v45 = 138412290;
    v108 = v45;
    do
    {
      v46 = 0;
      do
      {
        if (*v140 != v111)
        {
          v47 = v46;
          objc_enumerationMutation(v116);
          v46 = v47;
        }

        v117 = v46;
        v48 = *(*(&v139 + 1) + 8 * v46);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v49 = objc_opt_class();
          v138[0] = MEMORY[0x277D85DD0];
          v138[1] = 3221225472;
          v138[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_838;
          v138[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v138[4] = v49;
          if (qword_2811F44F8 != -1)
          {
            dispatch_once(&qword_2811F44F8, v138);
          }

          if (byte_2811F438E == 1)
          {
            v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth: Local device is connected to device :%@", v48];
            v51 = MEMORY[0x277D3F178];
            v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
            v53 = [v52 lastPathComponent];
            v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
            [v51 logMessage:v50 fromFile:v53 fromFunction:v54 fromLineNumber:1875];

            v55 = PLLogCommon();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = v108;
              *(&buf + 4) = v50;
              _os_log_debug_impl(&dword_21A4C6000, v55, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
            }
          }
        }

        v56 = objc_alloc(MEMORY[0x277D3F190]);
        v57 = [v56 initWithEntryKey:v112 withRawData:v48];
        [v57 setEntryDate:v113];
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v119[0] = v115;
        v58 = [v119[0] countByEnumeratingWithState:&v134 objects:v159 count:16];
        if (v58)
        {
          v59 = *v135;
          while (2)
          {
            v60 = 0;
            do
            {
              if (*v135 != v59)
              {
                objc_enumerationMutation(v119[0]);
              }

              v61 = *(*(&v134 + 1) + 8 * v60);
              if ([MEMORY[0x277D3F180] debugEnabled])
              {
                v62 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_844;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v62;
                if (qword_2811F4500 != -1)
                {
                  dispatch_once(&qword_2811F4500, block);
                }

                if (byte_2811F438F == 1)
                {
                  v63 = MEMORY[0x277CCACA8];
                  v64 = [v61 objectForKeyedSubscript:@"MAC"];
                  v65 = [v57 objectForKeyedSubscript:@"MAC"];
                  v66 = [v63 stringWithFormat:@"Bluetooth: checking for duplicate |%@| ==?== |%@|", v64, v65];

                  v67 = MEMORY[0x277D3F178];
                  v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
                  v69 = [v68 lastPathComponent];
                  v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
                  [v67 logMessage:v66 fromFile:v69 fromFunction:v70 fromLineNumber:1882];

                  v71 = PLLogCommon();
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                  {
                    LODWORD(buf) = v108;
                    *(&buf + 4) = v66;
                    _os_log_debug_impl(&dword_21A4C6000, v71, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
                  }
                }
              }

              v72 = [v61 objectForKeyedSubscript:@"MAC"];
              v73 = [v57 objectForKeyedSubscript:@"MAC"];
              v74 = [v72 isEqualToString:v73];

              if (v74)
              {

                if ([MEMORY[0x277D3F180] debugEnabled])
                {
                  v75 = objc_opt_class();
                  v132[0] = MEMORY[0x277D85DD0];
                  v132[1] = 3221225472;
                  v132[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_850;
                  v132[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v132[4] = v75;
                  if (qword_2811F4508 != -1)
                  {
                    dispatch_once(&qword_2811F4508, v132);
                  }

                  if (byte_2811F4390 == 1)
                  {
                    v76 = MEMORY[0x277CCACA8];
                    v77 = [v57 objectForKeyedSubscript:@"MAC"];
                    v78 = [v76 stringWithFormat:@"Bluetooth: Entry already exists for MAC %@", v77];

                    v79 = MEMORY[0x277D3F178];
                    v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
                    v81 = [v80 lastPathComponent];
                    v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]"];
                    [v79 logMessage:v78 fromFile:v81 fromFunction:v82 fromLineNumber:1895];

                    v83 = PLLogCommon();
                    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                    {
                      LODWORD(buf) = v108;
                      *(&buf + 4) = v78;
                      _os_log_debug_impl(&dword_21A4C6000, v83, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
                    }
                  }
                }

                goto LABEL_89;
              }

              ++v60;
            }

            while (v58 != v60);
            v58 = [v119[0] countByEnumeratingWithState:&v134 objects:v159 count:16];
            if (v58)
            {
              continue;
            }

            break;
          }
        }

        [(PLOperator *)v118 logEntry:v57];
        v110 = 1;
LABEL_89:

        v46 = v117 + 1;
      }

      while (v117 + 1 != v114);
      v114 = [v116 countByEnumeratingWithState:&v139 objects:v160 count:16];
    }

    while (v114);
  }

  else
  {
    v110 = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v155 = 0x3032000000;
  v156 = __Block_byref_object_copy__6;
  v157 = __Block_byref_object_dispose__6;
  v158 = [MEMORY[0x277CBEAA8] monotonicDate];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v115 = v115;
  v84 = [v115 countByEnumeratingWithState:&v128 objects:v153 count:16];
  if (v84)
  {
    v117 = *v129;
    do
    {
      v119[0] = v84;
      v85 = 0;
      do
      {
        if (*v129 != v117)
        {
          objc_enumerationMutation(v115);
        }

        v86 = *(*(&v128 + 1) + 8 * v85);
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v87 = v116;
        v88 = [v87 countByEnumeratingWithState:&v124 objects:v152 count:16];
        if (v88)
        {
          v89 = *v125;
          while (2)
          {
            for (j = 0; j != v88; ++j)
            {
              if (*v125 != v89)
              {
                objc_enumerationMutation(v87);
              }

              v91 = [*(*(&v124 + 1) + 8 * j) objectForKeyedSubscript:@"MAC"];
              v92 = [v86 objectForKeyedSubscript:@"MAC"];
              v93 = [v91 isEqualToString:v92];

              if (v93)
              {

                goto LABEL_108;
              }
            }

            v88 = [v87 countByEnumeratingWithState:&v124 objects:v152 count:16];
            if (v88)
            {
              continue;
            }

            break;
          }
        }

        v122[0] = 0;
        v122[1] = v122;
        v122[2] = 0x3032000000;
        v122[3] = __Block_byref_object_copy__6;
        v122[4] = __Block_byref_object_dispose__6;
        v123 = v86;
        v121[0] = MEMORY[0x277D85DD0];
        v121[1] = 3221225472;
        v121[2] = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_854;
        v121[3] = &unk_27825BC18;
        v121[5] = v122;
        v121[6] = &buf;
        v121[4] = v118;
        [(PLOperator *)v118 updateEntry:v123 withBlock:v121];
        _Block_object_dispose(v122, 8);

        v110 = 1;
LABEL_108:
        v85 = v85 + 1;
      }

      while (v85 != v119[0]);
      v84 = [v115 countByEnumeratingWithState:&v128 objects:v153 count:16];
    }

    while (v84);
  }

  _Block_object_dispose(&buf, 8);
  if ((v110 & 1) == 0)
  {
    goto LABEL_111;
  }

LABEL_119:

  v103 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438C = result;
  return result;
}

uint64_t __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_827(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438D = result;
  return result;
}

uint64_t __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_838(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438E = result;
  return result;
}

uint64_t __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_844(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F438F = result;
  return result;
}

uint64_t __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_850(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4390 = result;
  return result;
}

void __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_854(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(*(a1[5] + 8) + 40) setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:@"timestampEnd"];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = a1[4];
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_2;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (qword_2811F4510 != -1)
    {
      dispatch_once(&qword_2811F4510, &block);
    }

    if (byte_2811F4391 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth: Device disconnected:%@", *(*(a1[5] + 8) + 40), block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventIntervalConnectedDevices]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:1913];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4391 = result;
  return result;
}

uint64_t __52__PLBluetoothAgent_logEventIntervalConnectedDevices__block_invoke_860(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4392 = result;
  return result;
}

uint64_t __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4393 = result;
  return result;
}

uint64_t __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_869(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4394 = result;
  return result;
}

void __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_873(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  block[5] = 0;
  [*(a1 + 32) localBluetoothDevice];
  v2 = *(a1 + 32);
  v3 = BTLocalDeviceRegisterForPowerProfileStatistics();
  if (v3)
  {
    v4 = v3;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (qword_2811F4530 != -1)
      {
        dispatch_once(&qword_2811F4530, block);
      }

      if (byte_2811F4395 == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not register for Power notifications. (error: %d)", v4];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]_block_invoke"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:1998];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4395 = result;
  return result;
}

uint64_t __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_876(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4396 = result;
  return result;
}

uint64_t __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_882(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4397 = result;
  return result;
}

void __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_886(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  block[5] = 0;
  [*(a1 + 32) localBluetoothDevice];
  v2 = *(a1 + 32);
  v3 = BTLocalDeviceRegisterForPowerProfileStatistics();
  if (v3)
  {
    v4 = v3;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2_887;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (qword_2811F4548 != -1)
      {
        dispatch_once(&qword_2811F4548, block);
      }

      if (byte_2811F4398 == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not register for Power notifications. (error: %d)", v4];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]_block_invoke"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2102];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2_887(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4398 = result;
  return result;
}

uint64_t __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_890(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4399 = result;
  return result;
}

uint64_t __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_896(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439A = result;
  return result;
}

void __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_897(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  block[5] = 0;
  [*(a1 + 32) localBluetoothDevice];
  v2 = *(a1 + 32);
  v3 = BTLocalDeviceRegisterForPowerProfileStatistics();
  if (v3)
  {
    v4 = v3;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2_898;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (qword_2811F4560 != -1)
      {
        dispatch_once(&qword_2811F4560, block);
      }

      if (byte_2811F439B == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not register for Power notifications. (error: %d)", v4];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardPowerProfileStats]_block_invoke"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2129];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLBluetoothAgent_logEventBackwardPowerProfileStats__block_invoke_2_898(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439B = result;
  return result;
}

- (void)logEventBackwardPowerStatsPerCore
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3F5C8];
  v4 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"EnhancedPowerStatsPerCore"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  if (!+[PLBluetoothAgent shouldLogEnhancedStatsPerCore])
  {
    goto LABEL_12;
  }

  v6 = PLLogBluetooth();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Getting Enhanced BT stats per core", buf, 2u);
  }

  v7 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  [(PLBluetoothAgent *)self localBluetoothDevice];
  EnhancedPowerStatsPerCore = BTLocalDeviceReadEnhancedPowerStatsPerCore();
  v10 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v3 andName:@"PowerProfileStats"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:EnhancedPowerStatsPerCore];
  [v5 setObject:v12 forKeyedSubscript:@"ErrorCode"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:EnhancedPowerStatsPerCore];
  [v11 setObject:v13 forKeyedSubscript:@"ErrorCode"];

  if (EnhancedPowerStatsPerCore)
  {
    v14 = PLLogBluetooth();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v75 = EnhancedPowerStatsPerCore;
      _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "ERROR: could not read enhanced power statistics per core (error: %u)", buf, 8u);
    }

    if (EnhancedPowerStatsPerCore == 7)
    {
      v15 = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLBluetoothAgent_logEventBackwardPowerStatsPerCore__block_invoke;
      block[3] = &unk_2782591D0;
      block[4] = self;
      dispatch_async(v15, block);
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] monotonicDate];
    lastPowerEntryDate = self->_lastPowerEntryDate;
    self->_lastPowerEntryDate = v16;

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 4)];
    [v11 setObject:v18 forKeyedSubscript:@"TXPower"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 5)];
    [v11 setObject:v19 forKeyedSubscript:@"RXPower"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 6)];
    [v11 setObject:v20 forKeyedSubscript:@"SleepPower"];

    [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 7)];
    v22 = v21 = v11;
    [v21 setObject:v22 forKeyedSubscript:@"OtherPower"];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 4)];
    [v5 setObject:v23 forKeyedSubscript:@"TXPower"];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 5)];
    [v5 setObject:v24 forKeyedSubscript:@"RXPower"];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 6)];
    [v5 setObject:v25 forKeyedSubscript:@"SleepPower"];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 7)];
    [v5 setObject:v26 forKeyedSubscript:@"OtherPower"];

    v11 = v21;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v8];
    [v5 setObject:v27 forKeyedSubscript:@"BTTimestamp"];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8[1]];
    [v5 setObject:v28 forKeyedSubscript:@"ActiveDuration"];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 4)];
    [v5 setObject:v29 forKeyedSubscript:@"MainCoreTXPower"];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 5)];
    [v5 setObject:v30 forKeyedSubscript:@"MainCoreRXPower"];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 6)];
    [v5 setObject:v31 forKeyedSubscript:@"MainCoreSleepPower"];

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 7)];
    [v5 setObject:v32 forKeyedSubscript:@"MainCoreOtherPower"];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 8)];
    [v5 setObject:v33 forKeyedSubscript:@"MainCoreRxScanPercentage"];

    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 9)];
    [v5 setObject:v34 forKeyedSubscript:@"MainCoreElnaOnPercentage"];

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 10)];
    [v5 setObject:v35 forKeyedSubscript:@"MainCoreElnaOffPercentage"];

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 11)];
    [v5 setObject:v36 forKeyedSubscript:@"MainCoreMrcRxPercentage"];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 12)];
    [v5 setObject:v37 forKeyedSubscript:@"MainCoreIpaTxPercentage"];

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 13)];
    [v5 setObject:v38 forKeyedSubscript:@"MainCoreEpaTxPercentage"];

    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 14)];
    [v5 setObject:v39 forKeyedSubscript:@"MainCoreTxbfTxPercentage"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 15)];
    [v5 setObject:v40 forKeyedSubscript:@"MainCoreEpaTxbfTxPercentage"];

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 16)];
    [v5 setObject:v41 forKeyedSubscript:@"MainCoreM154TransmitPercentage"];

    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 17)];
    [v5 setObject:v42 forKeyedSubscript:@"MainCoreM154ReceivePercentage"];

    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 18)];
    [v5 setObject:v43 forKeyedSubscript:@"SecondaryCoreTXPower"];

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 19)];
    [v5 setObject:v44 forKeyedSubscript:@"SecondaryCoreRXPower"];

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 20)];
    [v5 setObject:v45 forKeyedSubscript:@"SecondaryCoreSleepPower"];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 21)];
    [v5 setObject:v46 forKeyedSubscript:@"SecondaryCoreOtherPower"];

    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 22)];
    [v5 setObject:v47 forKeyedSubscript:@"SecondaryCoreRxScanPercentage"];

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 23)];
    [v5 setObject:v48 forKeyedSubscript:@"SecondaryCoreElnaOnPercentage"];

    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 24)];
    [v5 setObject:v49 forKeyedSubscript:@"SecondaryCoreElnaOffPercentage"];

    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 25)];
    [v5 setObject:v50 forKeyedSubscript:@"SecondaryCoreMrcRxPercentage"];

    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 26)];
    [v5 setObject:v51 forKeyedSubscript:@"SecondaryCoreIpaTxPercentage"];

    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 27)];
    [v5 setObject:v52 forKeyedSubscript:@"SecondaryCoreEpaTxPercentage"];

    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 28)];
    [v5 setObject:v53 forKeyedSubscript:@"SecondaryCoreTxbfTxPercentage"];

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 29)];
    [v5 setObject:v54 forKeyedSubscript:@"SecondaryCoreEpaTxbfTxPercentage"];

    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 30)];
    [v5 setObject:v55 forKeyedSubscript:@"SecondaryCoreM154TransmitPercentage"];

    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 31)];
    [v5 setObject:v56 forKeyedSubscript:@"SecondaryCoreM154ReceivePercentage"];

    v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 32)];
    [v5 setObject:v57 forKeyedSubscript:@"ScanCoreTXPower"];

    v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 33)];
    [v5 setObject:v58 forKeyedSubscript:@"ScanCoreRXPower"];

    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 34)];
    [v5 setObject:v59 forKeyedSubscript:@"ScanCoreSleepPower"];

    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 35)];
    [v5 setObject:v60 forKeyedSubscript:@"ScanCoreOtherPower"];

    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 36)];
    [v5 setObject:v61 forKeyedSubscript:@"ScanCoreRxScanPercentage"];

    v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 37)];
    [v5 setObject:v62 forKeyedSubscript:@"ScanCoreElnaOnPercentage"];

    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 38)];
    [v5 setObject:v63 forKeyedSubscript:@"ScanCoreElnaOffPercentage"];

    v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 39)];
    [v5 setObject:v64 forKeyedSubscript:@"ScanCoreMrcRxPercentage"];

    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 40)];
    [v5 setObject:v65 forKeyedSubscript:@"ScanCoreIpaTxPercentage"];

    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 41)];
    [v5 setObject:v66 forKeyedSubscript:@"ScanCoreEpaTxPercentage"];

    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 42)];
    [v5 setObject:v67 forKeyedSubscript:@"ScanCoreTxbfTxPercentage"];

    v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 43)];
    [v5 setObject:v68 forKeyedSubscript:@"ScanCoreEpaTxbfTxPercentage"];

    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 44)];
    [v5 setObject:v69 forKeyedSubscript:@"ScanCoreM154TransmitPercentage"];

    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v8 + 45)];
    [v5 setObject:v70 forKeyedSubscript:@"ScanCoreM154ReceivePercentage"];

    [(PLOperator *)self logEntry:v5];
    [(PLOperator *)self logEntry:v21];
  }

  free(v8);

  if (!EnhancedPowerStatsPerCore)
  {
LABEL_12:
    v71 = [v5 copy];
    [(PLBluetoothAgent *)self modelBluetoothPower:v71];
  }

  v72 = *MEMORY[0x277D85DE8];
}

void __53__PLBluetoothAgent_logEventBackwardPowerStatsPerCore__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) localBluetoothDevice];
  v2 = *(a1 + 32);
  v3 = BTLocalDeviceRegisterForPowerProfileStatistics();
  if (v3)
  {
    v4 = v3;
    v5 = PLLogBluetooth();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v4;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Could not register for Power notifications. (error: %d)", buf, 8u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldLogMarconi
{
  if ([MEMORY[0x277D3F208] isWiFiClass:1004011])
  {
    return 1;
  }

  v3 = MEMORY[0x277D3F208];

  return [v3 isWiFiClass:1004012];
}

- (void)logEventBackwardCBDiscovery:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CBDiscoveryStats"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v25];
  v26 = v3;
  v5 = [v3 objectForKeyedSubscript:@"agsE"];
  v6 = v5;
  if (v5)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      obj = v6;
      v28 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"apID"];
          [v4 setObject:v11 forKeyedSubscript:@"apID"];

          v12 = [v10 objectForKeyedSubscript:@"apIX"];
          [v4 setObject:v12 forKeyedSubscript:@"apIX"];

          v13 = [v10 objectForKeyedSubscript:@"sonC"];
          [v4 setObject:v13 forKeyedSubscript:@"sonC"];

          v14 = [v10 objectForKeyedSubscript:@"sofC"];
          [v4 setObject:v14 forKeyedSubscript:@"sofC"];

          v15 = [v10 objectForKeyedSubscript:@"dsFl"];
          [v4 setObject:v15 forKeyedSubscript:@"dsFl"];

          [(PLOperator *)self logEntry:v4];
        }

        v6 = obj;
        v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__PLBluetoothAgent_logEventBackwardCBDiscovery___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v16;
      if (qword_2811F4568 != -1)
      {
        dispatch_once(&qword_2811F4568, block);
      }

      if (byte_2811F439C == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: CBDiscovery return empty dictionary"];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v20 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardCBDiscovery:]"];
        [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:2277];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v37 = v17;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v23 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
    [v4 setObject:v23 forKeyedSubscript:@"apIX"];

    [(PLOperator *)self logEntry:v4];
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLBluetoothAgent_logEventBackwardCBDiscovery___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439C = result;
  return result;
}

- (void)logEventBackwardWirelessProximity:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"WirelessProxScanDStats"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  if (v4)
  {
    v7 = [v4 objectForKeyedSubscript:@"Scan"];
    [v6 setObject:v7 forKeyedSubscript:@"ClientScanDuration"];

    v8 = [v4 objectForKeyedSubscript:@"Advertise"];
    [v6 setObject:v8 forKeyedSubscript:@"ClientAdvDuration"];

    v9 = [v4 objectForKeyedSubscript:@"AggressiveScan"];
    [v6 setObject:v9 forKeyedSubscript:@"ClientScanConfig"];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__PLBluetoothAgent_logEventBackwardWirelessProximity___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (qword_2811F4570 != -1)
      {
        dispatch_once(&qword_2811F4570, block);
      }

      if (byte_2811F439D == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: WirelessProximity return empty dictionary"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v14 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardWirelessProximity:]"];
        [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:2300];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v20 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v6 setObject:&unk_282C140E8 forKeyedSubscript:@"ClientScanDuration"];
  }

  [(PLOperator *)self logEntry:v6];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __54__PLBluetoothAgent_logEventBackwardWirelessProximity___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439D = result;
  return result;
}

- (void)logEventBackwardMaxDutyCycle:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLBluetoothAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MaxDutyCycle"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v4];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __49__PLBluetoothAgent_logEventBackwardMaxDutyCycle___block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v7;
    if (qword_2811F4578 != -1)
    {
      dispatch_once(&qword_2811F4578, &block);
    }

    if (byte_2811F439E == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Write to dB: %@", v4, block, v16, v17, v18, v19];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent logEventBackwardMaxDutyCycle:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:2319];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLOperator *)self logEntry:v6];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLBluetoothAgent_logEventBackwardMaxDutyCycle___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439E = result;
  return result;
}

- (void)logEventBackwardA2DP:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v10 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v4 andName:@"A2DPPower"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [v5 objectForKey:@"Duration"];
  [v6 setObject:v7 forKeyedSubscript:@"A2DPDuration"];

  v8 = [v5 objectForKey:@"PercentageEPAPower"];
  [v6 setObject:v8 forKeyedSubscript:@"A2DPpercantageePA"];

  v9 = [v5 objectForKey:@"PercentageIPAPower"];

  [v6 setObject:v9 forKeyedSubscript:@"A2DPpercantageiPA"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardHFP:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v12 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v4 andName:@"HFPPower"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v7 = [v5 objectForKey:@"Duration"];
  [v6 setObject:v7 forKeyedSubscript:@"HFPDuration"];

  v8 = [v5 objectForKey:@"PercentageEPAPowerFirstWindow"];
  [v6 setObject:v8 forKeyedSubscript:@"HFPpercantageePA1"];

  v9 = [v5 objectForKey:@"PercentageEPAPowerSecondWindow"];
  [v6 setObject:v9 forKeyedSubscript:@"HFPpercantageePA2"];

  v10 = [v5 objectForKey:@"PercentageIPAPowerFirstWindow"];
  [v6 setObject:v10 forKeyedSubscript:@"HFPpercentageiPA1"];

  v11 = [v5 objectForKey:@"PercentageIPAPowerSecondWindow"];

  [v6 setObject:v11 forKeyedSubscript:@"HFPpercentageiPA2"];
  [(PLOperator *)self logEntry:v6];
}

- (id)btHardwareChipsetQuery
{
  if (!self->_btHardwareChipset)
  {
    if ([MEMORY[0x277D3F208] isWiFiClass:1004001])
    {
      v3 = @"4334";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004002])
    {
      v3 = @"43342";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004003])
    {
      v3 = @"4324";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004006])
    {
      v3 = @"4345";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004005])
    {
      v3 = @"4350";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004008])
    {
      v3 = @"43452";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004007])
    {
      v3 = @"4355";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004010])
    {
      v3 = @"4357";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004013])
    {
      v3 = @"4377";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004014])
    {
      v3 = @"4378";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004015])
    {
      v3 = @"4387";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004016])
    {
      v3 = @"4388";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004017])
    {
      v3 = @"4399";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004011])
    {
      v3 = @"1001";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004012])
    {
      v3 = @"2001";
    }

    else if ([MEMORY[0x277D3F208] isWiFiClass:1004018])
    {
      v3 = @"31011";
    }

    else
    {
      if (![MEMORY[0x277D3F208] isWiFiClass:1004019])
      {
        goto LABEL_37;
      }

      v3 = @"1";
    }

    btHardwareChipset = self->_btHardwareChipset;
    self->_btHardwareChipset = &v3->isa;
  }

LABEL_37:
  v5 = self->_btHardwareChipset;

  return v5;
}

- (void)modelBluetoothPower:(id)a3
{
  v201 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v150 = [(PLBluetoothAgent *)self btHardwareChipsetQuery];
    v5 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"bluetooth"];
    v6 = [v5 objectForKeyedSubscript:v150];
    v7 = [v6 objectForKeyedSubscript:@"tx"];
    [v7 doubleValue];
    v146 = v8;

    v9 = [v5 objectForKeyedSubscript:v150];
    v10 = [v9 objectForKeyedSubscript:@"rx"];
    [v10 doubleValue];
    v145 = v11;

    v12 = [v5 objectForKeyedSubscript:v150];
    v13 = [v12 objectForKeyedSubscript:@"other"];
    [v13 doubleValue];
    v144 = v14;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v15;
      if (qword_2811F4580 != -1)
      {
        dispatch_once(&qword_2811F4580, block);
      }

      if (byte_2811F439F == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"coefficientTxPower = %f, coefficientTxPower = %f, coefficientOtherPower = %f", *&v146, *&v145, *&v144];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:2419];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v22 = [v4 objectForKeyedSubscript:@"TXPower"];
    [v22 doubleValue];
    v143 = v23;

    v24 = [v4 objectForKeyedSubscript:@"RXPower"];
    [v24 doubleValue];
    v26 = v25;

    v27 = [v4 objectForKeyedSubscript:@"OtherPower"];
    [v27 doubleValue];
    v29 = v28;

    v30 = [v4 objectForKeyedSubscript:@"SleepPower"];
    [v30 doubleValue];
    v142 = v31;

    v32 = 0.0;
    v33 = 0.0;
    v147 = 0.0;
    v148 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
    {
      v38 = [v5 objectForKeyedSubscript:v150];
      v39 = [v38 objectForKeyedSubscript:@"mcon"];
      [v39 doubleValue];
      v148 = v40;

      v41 = [v5 objectForKeyedSubscript:v150];
      v42 = [v41 objectForKeyedSubscript:@"mcoff"];
      [v42 doubleValue];
      v147 = v43;

      v44 = [v5 objectForKeyedSubscript:v150];
      v45 = [v44 objectForKeyedSubscript:@"scon"];
      [v45 doubleValue];
      v33 = v46;

      v47 = [v5 objectForKeyedSubscript:v150];
      v48 = [v47 objectForKeyedSubscript:@"scoff"];
      [v48 doubleValue];
      v32 = v49;

      v50 = [v4 objectForKeyedSubscript:@"mainCoreELNAOnPercentage"];
      [v50 doubleValue];
      v37 = v51;

      v52 = [v4 objectForKeyedSubscript:@"mainCoreELNAOffPercentage"];
      [v52 doubleValue];
      v36 = v53;

      v54 = [v4 objectForKeyedSubscript:@"scanCoreELNAOnPercentage"];
      [v54 doubleValue];
      v35 = v55;

      v56 = [v4 objectForKeyedSubscript:@"scanCoreELNAOffPercentage"];
      [v56 doubleValue];
      v34 = v57;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v58 = objc_opt_class();
      v192[0] = MEMORY[0x277D85DD0];
      v192[1] = 3221225472;
      v192[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1021;
      v192[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v192[4] = v58;
      if (qword_2811F4588 != -1)
      {
        dispatch_once(&qword_2811F4588, v192);
      }

      if (byte_2811F43A0 == 1)
      {
        v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"txDur=%f, rxDur=%f, otherDur=%f, sleepDur=%f, mcondur=%f, mcoffdur=%f, scondur=%f, scoffdur=%f", *&v143, *&v26, *&v29, v142, *&v37, *&v36, *&v35, *&v34];
        v60 = MEMORY[0x277D3F178];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v62 = [v61 lastPathComponent];
        v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v60 logMessage:v59 fromFile:v62 fromFunction:v63 fromLineNumber:2450];

        v64 = PLLogCommon();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v59;
          _os_log_debug_impl(&dword_21A4C6000, v64, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v65 = 0.0;
    v66 = 0.0;
    v67 = 0.0;
    v68 = 0.0;
    if (v36 + v34 + v35 + v37 < v26)
    {
      v26 = v26 - v35 - v34 - v37 - v36;
      v65 = v34;
      v66 = v35;
      v67 = v36;
      v68 = v37;
    }

    v69 = v143;
    if (v143 > 10000.0)
    {
      v69 = 0.0;
    }

    if (v26 <= 10000.0)
    {
      v70 = v26;
    }

    else
    {
      v70 = 0.0;
    }

    if (v29 <= 10000.0)
    {
      v71 = v29;
    }

    else
    {
      v71 = 0.0;
    }

    if (v68 > 10000.0)
    {
      v68 = 0.0;
    }

    if (v67 > 10000.0)
    {
      v67 = 0.0;
    }

    if (v66 > 10000.0)
    {
      v66 = 0.0;
    }

    if (v65 > 10000.0)
    {
      v65 = 0.0;
    }

    v72 = (v145 * v70 + v146 * v69 + v144 * v71 + v68 * v148 + v67 * v147 + v66 * v33 + v65 * v32) / 10000.0;
    if (v72 >= 0.0)
    {
      v73 = v72;
    }

    else
    {
      v73 = 0.0;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v74 = objc_opt_class();
      v191[0] = MEMORY[0x277D85DD0];
      v191[1] = 3221225472;
      v191[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1027;
      v191[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v191[4] = v74;
      if (qword_2811F4590 != -1)
      {
        dispatch_once(&qword_2811F4590, v191);
      }

      if (byte_2811F43A1 == 1)
      {
        v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bluetooth power=%f", *&v73];
        v76 = MEMORY[0x277D3F178];
        v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v78 = [v77 lastPathComponent];
        v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v76 logMessage:v75 fromFile:v78 fromFunction:v79 fromLineNumber:2491];

        v80 = PLLogCommon();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v75;
          _os_log_debug_impl(&dword_21A4C6000, v80, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v189 = 0;
    v190[0] = &v189;
    v190[1] = 0x2020000000;
    *&v190[2] = v73;
    v185 = 0;
    v186 = &v185;
    v187 = 0x2020000000;
    v188 = 0;
    v183 = 0;
    v184[0] = &v183;
    v184[1] = 0x2020000000;
    v184[2] = 0;
    v81 = [MEMORY[0x277CBEB58] setWithObject:*MEMORY[0x277D49810]];
    [v81 addObject:*MEMORY[0x277D49808]];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v82 = objc_opt_class();
      v182[0] = MEMORY[0x277D85DD0];
      v182[1] = 3221225472;
      v182[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1034;
      v182[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v182[4] = v82;
      if (qword_2811F4598 != -1)
      {
        dispatch_once(&qword_2811F4598, v182);
      }

      if (byte_2811F43A2 == 1)
      {
        v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"Types: %@", v81];
        v84 = MEMORY[0x277D3F178];
        v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v86 = [v85 lastPathComponent];
        v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v84 logMessage:v83 fromFile:v86 fromFunction:v87 fromLineNumber:2505];

        v88 = PLLogCommon();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v83;
          _os_log_debug_impl(&dword_21A4C6000, v88, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v89 = dispatch_semaphore_create(0);
    v90 = [(PLBluetoothAgent *)self beaconManager];
    v179[0] = MEMORY[0x277D85DD0];
    v179[1] = 3221225472;
    v179[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1038;
    v179[3] = &unk_27825BC40;
    v179[4] = self;
    v181 = &v185;
    v91 = v89;
    v180 = v91;
    [v90 allBeaconsOfTypes:v81 completion:v179];

    v92 = dispatch_time(0, 120000000000);
    if (dispatch_semaphore_wait(v91, v92) && [MEMORY[0x277D3F180] debugEnabled])
    {
      v93 = objc_opt_class();
      v178[0] = MEMORY[0x277D85DD0];
      v178[1] = 3221225472;
      v178[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1052;
      v178[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v178[4] = v93;
      if (qword_2811F45B0 != -1)
      {
        dispatch_once(&qword_2811F45B0, v178);
      }

      if (byte_2811F43A5 == 1)
      {
        v94 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timed out, ItemPaired: %d", *(v186 + 24)];
        v95 = MEMORY[0x277D3F178];
        v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v97 = [v96 lastPathComponent];
        v98 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v95 logMessage:v94 fromFile:v97 fromFunction:v98 fromLineNumber:2517];

        v99 = PLLogCommon();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v94;
          _os_log_debug_impl(&dword_21A4C6000, v99, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v175 = &v174;
    v176 = 0x2020000000;
    v177 = 0x4016000000000000;
    v170 = 0;
    v171 = &v170;
    v172 = 0x2020000000;
    v173 = 0x3FF6666666666666;
    v174 = 0;
    v169[0] = 0;
    v169[1] = v169;
    v169[2] = 0x2020000000;
    v169[3] = 0x401199999999999ALL;
    v167 = 0;
    v168[0] = &v167;
    v168[1] = 0x2020000000;
    v168[2] = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v197 = 0x3032000000;
    v198 = __Block_byref_object_copy__6;
    v199 = __Block_byref_object_dispose__6;
    v100 = [v4 entryDate];
    v200 = [v100 dateByAddingTimeInterval:-5.0];

    if ([MEMORY[0x277D3F208] isiPhone])
    {
      v101 = objc_alloc_init(MEMORY[0x277CC5C90]);
      v155[0] = MEMORY[0x277D85DD0];
      v155[1] = 3221225472;
      v155[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1057;
      v155[3] = &unk_27825BC68;
      v102 = v101;
      v156 = v102;
      v157 = self;
      v159 = &v185;
      v160 = &v189;
      v161 = v169;
      v162 = &v167;
      v163 = &v174;
      v164 = &v183;
      v165 = &v170;
      v158 = v4;
      p_buf = &buf;
      [v102 activateWithCompletionHandler:v155];

      v103 = v156;
    }

    else
    {
      if (*(v186 + 24) == 1)
      {
        if (*(v190[0] + 24) >= v171[3])
        {
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v120 = objc_opt_class();
            v153[0] = MEMORY[0x277D85DD0];
            v153[1] = 3221225472;
            v153[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1118;
            v153[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v153[4] = v120;
            if (qword_2811F4610 != -1)
            {
              dispatch_once(&qword_2811F4610, v153);
            }

            if (byte_2811F43B1 == 1)
            {
              v121 = *(v190[0] + 24);
              v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f > %f", v121, v175[3]];
              v123 = MEMORY[0x277D3F178];
              v124 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
              v125 = [v124 lastPathComponent];
              v126 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
              [v123 logMessage:v122 fromFile:v125 fromFunction:v126 fromLineNumber:2640];

              v127 = PLLogCommon();
              if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
              {
                *v194 = 138412290;
                v195 = v122;
                _os_log_debug_impl(&dword_21A4C6000, v127, OS_LOG_TYPE_DEBUG, "%@", v194, 0xCu);
              }
            }
          }

          v112 = v184;
          *(v168[0] + 24) = v175[3];
          v113 = *(v171 + 3);
        }

        else
        {
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v104 = objc_opt_class();
            v154[0] = MEMORY[0x277D85DD0];
            v154[1] = 3221225472;
            v154[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1115;
            v154[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v154[4] = v104;
            if (qword_2811F4608 != -1)
            {
              dispatch_once(&qword_2811F4608, v154);
            }

            if (byte_2811F43B0 == 1)
            {
              v105 = *(v190[0] + 24);
              v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f < %f", v105, v175[3]];
              v107 = MEMORY[0x277D3F178];
              v108 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
              v109 = [v108 lastPathComponent];
              v110 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
              [v107 logMessage:v106 fromFile:v109 fromFunction:v110 fromLineNumber:2636];

              v111 = PLLogCommon();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
              {
                *v194 = 138412290;
                v195 = v106;
                _os_log_debug_impl(&dword_21A4C6000, v111, OS_LOG_TYPE_DEBUG, "%@", v194, 0xCu);
              }
            }
          }

          v112 = v190;
          *(v168[0] + 24) = v175[3];
          v113 = 0;
        }
      }

      else
      {
        v112 = v168;
        v113 = 0;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v114 = objc_opt_class();
          v152[0] = MEMORY[0x277D85DD0];
          v152[1] = 3221225472;
          v152[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1121;
          v152[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v152[4] = v114;
          if (qword_2811F4618 != -1)
          {
            dispatch_once(&qword_2811F4618, v152);
          }

          if (byte_2811F43B2 == 1)
          {
            v149 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTPower: %f", *(v190[0] + 24)];
            v115 = MEMORY[0x277D3F178];
            v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
            v117 = [v116 lastPathComponent];
            v118 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
            [v115 logMessage:v149 fromFile:v117 fromFunction:v118 fromLineNumber:2645];

            v119 = PLLogCommon();
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
            {
              *v194 = 138412290;
              v195 = v149;
              _os_log_debug_impl(&dword_21A4C6000, v119, OS_LOG_TYPE_DEBUG, "%@", v194, 0xCu);
            }
          }
        }
      }

      *(*v112 + 24) = v113;
      *(v190[0] + 24) = fmax(*(v190[0] + 24) - *(v184[0] + 24), 0.0);
      v128 = [MEMORY[0x277D3F0C0] sharedInstance];
      v129 = *(v190[0] + 24);
      v130 = [v4 entryDate];
      [v128 createPowerEventBackwardWithRootNodeID:50 withPower:v130 withEndDate:v129];

      v131 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v131 createPowerEventBackwardWithRootNodeID:59 withPower:*(*(&buf + 1) + 40) withEndDate:*(v168[0] + 24)];

      v132 = [MEMORY[0x277D3F0C0] sharedInstance];
      v133 = [v4 entryDate];
      [v132 createPowerEventBackwardWithRootNodeID:59 withPower:v133 withEndDate:0.0];

      v102 = [MEMORY[0x277D3F0C0] sharedInstance];
      v103 = [v4 entryDate];
      [v102 createDistributionEventForwardWithDistributionID:47 withChildNodeNameToWeight:&unk_282C17950 withStartDate:v103];
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v134 = objc_opt_class();
      v151[0] = MEMORY[0x277D85DD0];
      v151[1] = 3221225472;
      v151[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1128;
      v151[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v151[4] = v134;
      if (qword_2811F4620 != -1)
      {
        dispatch_once(&qword_2811F4620, v151);
      }

      if (byte_2811F43B3 == 1)
      {
        v135 = [MEMORY[0x277CCACA8] stringWithFormat:@"ITpower: %f", *(v168[0] + 24)];
        v136 = MEMORY[0x277D3F178];
        v137 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v138 = [v137 lastPathComponent];
        v139 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]"];
        [v136 logMessage:v135 fromFile:v138 fromFunction:v139 fromLineNumber:2668];

        v140 = PLLogCommon();
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
        {
          *v194 = 138412290;
          v195 = v135;
          _os_log_debug_impl(&dword_21A4C6000, v140, OS_LOG_TYPE_DEBUG, "%@", v194, 0xCu);
        }
      }
    }

    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v167, 8);
    _Block_object_dispose(v169, 8);
    _Block_object_dispose(&v170, 8);
    _Block_object_dispose(&v174, 8);

    _Block_object_dispose(&v183, 8);
    _Block_object_dispose(&v185, 8);
    _Block_object_dispose(&v189, 8);
  }

  v141 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F439F = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1021(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A0 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1027(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A1 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1034(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A2 = result;
  return result;
}

void __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1038(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F45A0 != -1)
    {
      dispatch_once(&qword_2811F45A0, block);
    }

    if (byte_2811F43A3 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Count: %lu", objc_msgSend(v3, "count")];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:2508];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = [v3 count] != 0;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1044;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v13;
    if (qword_2811F45A8 != -1)
    {
      dispatch_once(&qword_2811F45A8, v21);
    }

    if (byte_2811F43A4 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ItemPaired: %d", *(*(*(a1 + 48) + 8) + 24)];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
      [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:2510];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A3 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1044(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A4 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1052(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A5 = result;
  return result;
}

void __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1057(uint64_t a1, void *a2)
{
  v131 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) exposureNotificationEnabled];
  v5 = [MEMORY[0x277D3F180] debugEnabled];
  if (v3)
  {
    v6 = 0.0;
    if (v5)
    {
      v7 = *(a1 + 40);
      v8 = objc_opt_class();
      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_2_1058;
      v128[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v128[4] = v8;
      if (qword_2811F45B8 != -1)
      {
        dispatch_once(&qword_2811F45B8, v128);
      }

      if (byte_2811F43A6 == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: activateWithCompletionHandler failed: %@", v3];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke"];
        [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:2551];

        v14 = PLLogCommon();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
LABEL_7:

          goto LABEL_77;
        }

        *buf = 138412290;
        v130 = v9;
LABEL_86:
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        goto LABEL_7;
      }
    }

    goto LABEL_77;
  }

  if (v5)
  {
    v15 = *(a1 + 40);
    v16 = objc_opt_class();
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1064;
    v127[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v127[4] = v16;
    if (qword_2811F45C0 != -1)
    {
      dispatch_once(&qword_2811F45C0, v127);
    }

    if (byte_2811F43A7 == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: activateWithCompletionHandler: %@", *(a1 + 32)];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
      [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:2555];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v130 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v23 = *(*(*(a1 + 56) + 8) + 24);
  if (v4)
  {
    v24 = *(*(*(a1 + 64) + 8) + 24);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v25 = *(*(*(a1 + 72) + 8) + 24);
      v26 = [MEMORY[0x277D3F180] debugEnabled];
      if (v24 >= v25)
      {
        if (v26)
        {
          v63 = *(a1 + 40);
          v64 = objc_opt_class();
          v125[0] = MEMORY[0x277D85DD0];
          v125[1] = 3221225472;
          v125[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1076;
          v125[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v125[4] = v64;
          if (qword_2811F45D0 != -1)
          {
            dispatch_once(&qword_2811F45D0, v125);
          }

          if (byte_2811F43A9 == 1)
          {
            v65 = *(*(*(a1 + 64) + 8) + 24);
            v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f > %f", v65, *(*(*(a1 + 72) + 8) + 24)];
            v67 = MEMORY[0x277D3F178];
            v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
            v69 = [v68 lastPathComponent];
            v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
            [v67 logMessage:v66 fromFile:v69 fromFunction:v70 fromLineNumber:2564];

            v71 = PLLogCommon();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v130 = v66;
              _os_log_debug_impl(&dword_21A4C6000, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
        *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24);
        goto LABEL_76;
      }

      if (v26)
      {
        v27 = *(a1 + 40);
        v28 = objc_opt_class();
        v126[0] = MEMORY[0x277D85DD0];
        v126[1] = 3221225472;
        v126[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1070;
        v126[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v126[4] = v28;
        if (qword_2811F45C8 != -1)
        {
          dispatch_once(&qword_2811F45C8, v126);
        }

        if (byte_2811F43A8 == 1)
        {
          v29 = *(*(*(a1 + 64) + 8) + 24);
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f < %f", v29, *(*(*(a1 + 72) + 8) + 24)];
          v31 = MEMORY[0x277D3F178];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v33 = [v32 lastPathComponent];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
          [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:2559];

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v130 = v30;
            _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
    }

    else
    {
      v48 = [MEMORY[0x277D3F180] debugEnabled];
      if (v24 >= 3.2)
      {
        if (v48)
        {
          v81 = *(a1 + 40);
          v82 = objc_opt_class();
          v123[0] = MEMORY[0x277D85DD0];
          v123[1] = 3221225472;
          v123[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1085;
          v123[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v123[4] = v82;
          if (qword_2811F45E0 != -1)
          {
            dispatch_once(&qword_2811F45E0, v123);
          }

          if (byte_2811F43AB == 1)
          {
            v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f > %f", *(*(*(a1 + 64) + 8) + 24), 0x400999999999999ALL];
            v84 = MEMORY[0x277D3F178];
            v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
            v86 = [v85 lastPathComponent];
            v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
            [v84 logMessage:v83 fromFile:v86 fromFunction:v87 fromLineNumber:2577];

            v88 = PLLogCommon();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v130 = v83;
              _os_log_debug_impl(&dword_21A4C6000, v88, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        *(*(*(a1 + 96) + 8) + 24) = 0x400999999999999ALL;
        goto LABEL_76;
      }

      if (v48)
      {
        v49 = *(a1 + 40);
        v50 = objc_opt_class();
        v124[0] = MEMORY[0x277D85DD0];
        v124[1] = 3221225472;
        v124[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1082;
        v124[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v124[4] = v50;
        if (qword_2811F45D8 != -1)
        {
          dispatch_once(&qword_2811F45D8, v124);
        }

        if (byte_2811F43AA == 1)
        {
          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f < %f", *(*(*(a1 + 64) + 8) + 24), 0x400999999999999ALL];
          v52 = MEMORY[0x277D3F178];
          v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v54 = [v53 lastPathComponent];
          v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
          [v52 logMessage:v51 fromFile:v54 fromFunction:v55 fromLineNumber:2573];

          v56 = PLLogCommon();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v130 = v51;
            _os_log_debug_impl(&dword_21A4C6000, v56, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_76:
    v6 = 9.0;
    goto LABEL_77;
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v36 = *(*(*(a1 + 64) + 8) + 24);
    v37 = *(*(*(a1 + 104) + 8) + 24);
    v38 = [MEMORY[0x277D3F180] debugEnabled];
    if (v36 >= v37)
    {
      if (v38)
      {
        v72 = *(a1 + 40);
        v73 = objc_opt_class();
        v121[0] = MEMORY[0x277D85DD0];
        v121[1] = 3221225472;
        v121[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1091;
        v121[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v121[4] = v73;
        if (qword_2811F45F0 != -1)
        {
          dispatch_once(&qword_2811F45F0, v121);
        }

        if (byte_2811F43AD == 1)
        {
          v74 = *(*(*(a1 + 64) + 8) + 24);
          v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f > %f", v74, *(*(*(a1 + 104) + 8) + 24)];
          v76 = MEMORY[0x277D3F178];
          v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v78 = [v77 lastPathComponent];
          v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
          [v76 logMessage:v75 fromFile:v78 fromFunction:v79 fromLineNumber:2590];

          v80 = PLLogCommon();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v130 = v75;
            _os_log_debug_impl(&dword_21A4C6000, v80, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24);
    }

    else
    {
      if (v38)
      {
        v39 = *(a1 + 40);
        v40 = objc_opt_class();
        v122[0] = MEMORY[0x277D85DD0];
        v122[1] = 3221225472;
        v122[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1088;
        v122[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v122[4] = v40;
        if (qword_2811F45E8 != -1)
        {
          dispatch_once(&qword_2811F45E8, v122);
        }

        if (byte_2811F43AC == 1)
        {
          v41 = *(*(*(a1 + 64) + 8) + 24);
          v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTpower %f < %f", v41, *(*(*(a1 + 104) + 8) + 24)];
          v43 = MEMORY[0x277D3F178];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v45 = [v44 lastPathComponent];
          v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
          [v43 logMessage:v42 fromFile:v45 fromFunction:v46 fromLineNumber:2586];

          v47 = PLLogCommon();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v130 = v42;
            _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = 0.0;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v57 = *(a1 + 40);
      v58 = objc_opt_class();
      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v120[2] = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1094;
      v120[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v120[4] = v58;
      if (qword_2811F45F8 != -1)
      {
        dispatch_once(&qword_2811F45F8, v120);
      }

      if (byte_2811F43AE == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTPower: BTPower: %f", *(*(*(a1 + 64) + 8) + 24)];
        v59 = MEMORY[0x277D3F178];
        v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v61 = [v60 lastPathComponent];
        v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
        [v59 logMessage:v9 fromFile:v61 fromFunction:v62 fromLineNumber:2598];

        v14 = PLLogCommon();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_7;
        }

        *buf = 138412290;
        v130 = v9;
        goto LABEL_86;
      }
    }
  }

LABEL_77:
  [*(a1 + 32) invalidate];
  *(*(*(a1 + 64) + 8) + 24) = fmax(*(*(*(a1 + 64) + 8) + 24) - *(*(*(a1 + 96) + 8) + 24), 0.0);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v89 = *(a1 + 40);
    v90 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v116 = 3221225472;
    v117 = __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1100;
    v118 = &__block_descriptor_40_e5_v8__0lu32l8;
    v119 = v90;
    if (qword_2811F4600 != -1)
    {
      dispatch_once(&qword_2811F4600, &block);
    }

    if (byte_2811F43AF == 1)
    {
      v91 = MEMORY[0x277CCACA8];
      v92 = *(*(*(a1 + 64) + 8) + 24);
      v93 = *(*(*(a1 + 80) + 8) + 24);
      v94 = [*(a1 + 48) entryDate];
      v95 = [v91 stringWithFormat:@"ModelBTPower: Model %f to node 50, %f to node 58, %f to node 59 at %@", v92, *&v6, v93, v94, block, v116, v117, v118, v119];

      v96 = MEMORY[0x277D3F178];
      v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
      v98 = [v97 lastPathComponent];
      v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothPower:]_block_invoke_2"];
      [v96 logMessage:v95 fromFile:v98 fromFunction:v99 fromLineNumber:2603];

      v100 = PLLogCommon();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v130 = v95;
        _os_log_debug_impl(&dword_21A4C6000, v100, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v101 = [MEMORY[0x277D3F0C0] sharedInstance];
  v102 = *(*(*(a1 + 64) + 8) + 24);
  v103 = [*(a1 + 48) entryDate];
  [v101 createPowerEventBackwardWithRootNodeID:50 withPower:v103 withEndDate:v102];

  v104 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v104 createPowerEventBackwardWithRootNodeID:58 withPower:*(*(*(a1 + 112) + 8) + 40) withEndDate:v6];

  v105 = [MEMORY[0x277D3F0C0] sharedInstance];
  v106 = [*(a1 + 48) entryDate];
  [v105 createPowerEventBackwardWithRootNodeID:58 withPower:v106 withEndDate:0.0];

  v107 = [MEMORY[0x277D3F0C0] sharedInstance];
  v108 = [*(a1 + 48) entryDate];
  [v107 createDistributionEventForwardWithDistributionID:45 withChildNodeNameToWeight:&unk_282C17900 withStartDate:v108];

  v109 = [MEMORY[0x277D3F0C0] sharedInstance];
  [v109 createPowerEventBackwardWithRootNodeID:59 withPower:*(*(*(a1 + 112) + 8) + 40) withEndDate:*(*(*(a1 + 80) + 8) + 24)];

  v110 = [MEMORY[0x277D3F0C0] sharedInstance];
  v111 = [*(a1 + 48) entryDate];
  [v110 createPowerEventBackwardWithRootNodeID:59 withPower:v111 withEndDate:0.0];

  v112 = [MEMORY[0x277D3F0C0] sharedInstance];
  v113 = [*(a1 + 48) entryDate];
  [v112 createDistributionEventForwardWithDistributionID:47 withChildNodeNameToWeight:&unk_282C17928 withStartDate:v113];

  v114 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_2_1058(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A6 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1064(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A7 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1070(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A8 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1076(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43A9 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1082(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AA = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1085(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AB = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1088(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AC = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1091(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AD = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1094(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AE = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1100(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43AF = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1115(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B0 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1118(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B1 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1121(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B2 = result;
  return result;
}

uint64_t __40__PLBluetoothAgent_modelBluetoothPower___block_invoke_1128(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B3 = result;
  return result;
}

- (void)modelBluetoothOffPower
{
  v29 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v2 = [MEMORY[0x277CBEAA8] monotonicDate];
    v3 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v3 createPowerEventBackwardWithRootNodeID:50 withPower:v2 withEndDate:0.0];

    v4 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v4 createPowerEventBackwardWithRootNodeID:59 withPower:v2 withEndDate:0.0];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLBluetoothAgent_modelBluetoothOffPower__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (qword_2811F4628 != -1)
      {
        dispatch_once(&qword_2811F4628, block);
      }

      if (byte_2811F43B4 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTOffPower"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothOffPower]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:2688];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v28 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if ([MEMORY[0x277D3F208] isiPhone])
    {
      v12 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v12 createPowerEventBackwardWithRootNodeID:58 withPower:v2 withEndDate:0.0];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v13 = objc_opt_class();
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __42__PLBluetoothAgent_modelBluetoothOffPower__block_invoke_1137;
        v24 = &__block_descriptor_40_e5_v8__0lu32l8;
        v25 = v13;
        if (qword_2811F4630 != -1)
        {
          dispatch_once(&qword_2811F4630, &v21);
        }

        if (byte_2811F43B5 == 1)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ModelBTOffPower", v21, v22, v23, v24, v25];
          v15 = MEMORY[0x277D3F178];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBluetoothAgent.m"];
          v17 = [v16 lastPathComponent];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBluetoothAgent modelBluetoothOffPower]"];
          [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:2693];

          v19 = PLLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v28 = v14;
            _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBluetoothAgent_modelBluetoothOffPower__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B4 = result;
  return result;
}

uint64_t __42__PLBluetoothAgent_modelBluetoothOffPower__block_invoke_1137(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F43B5 = result;
  return result;
}

@end
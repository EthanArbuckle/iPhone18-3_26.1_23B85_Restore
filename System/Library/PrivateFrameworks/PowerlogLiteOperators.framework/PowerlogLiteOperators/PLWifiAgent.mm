@interface PLWifiAgent
+ (BOOL)isScanLoggingEnabled;
+ (id)entryEventBackwardDefinitionAutoJoin;
+ (id)entryEventBackwardDefinitionBeaconProfile;
+ (id)entryEventBackwardDefinitionControlCPUPowerStats;
+ (id)entryEventBackwardDefinitionCumulativeBasic;
+ (id)entryEventBackwardDefinitionCumulativeMultiCore;
+ (id)entryEventBackwardDefinitionDiffBasic;
+ (id)entryEventBackwardDefinitionHotspotPowerStats;
+ (id)entryEventBackwardDefinitionScanForwardStats;
+ (id)entryEventBackwardDefinitionScans;
+ (id)entryEventBackwardDefinitionUserScan;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionAWDLState;
+ (id)entryEventForwardDefinitionHotspotState;
+ (id)entryEventForwardDefinitionModuleInfo;
+ (id)entryEventForwardDefinitionPowerState;
+ (id)entryEventForwardDefinitionRSSI;
+ (id)entryEventForwardDefinitionWifiAssist;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitionAWDLServicesAndPorts;
+ (id)entryEventPointDefinitionJoin;
+ (id)entryEventPointDefinitionRemoteControlSession;
+ (id)entryEventPointDefinitionWake;
+ (id)entryEventPointDefinitionWifiInstantPower;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)hasWiFi;
- (BOOL)isWiFiPowered;
- (BOOL)isWowEnabled;
- (BOOL)isWowSupported;
- (PLWifiAgent)init;
- (id)wifiChipsetQuery;
- (id)wifiManufacturerQuery;
- (unint64_t)getCurrentChannelWidth:(__WiFiNetwork *)width;
- (void)findWifiDevice;
- (void)handleRemoteSessionCallbackWithUserInfo:(id)info;
- (void)initOperatorDependancies;
- (void)log;
- (void)logAWDLStateEntry:(id)entry;
- (void)logEventBackwardControlCPUPowerStats;
- (void)logEventBackwardUserScanDuration;
- (void)logEventBackwardWifiProperties:(id)properties withNetworkProperties:(id)networkProperties shallModelPower:(BOOL)power;
- (void)logEventForwardAWDLState:(id)state;
- (void)logEventForwardHotspotState:(id)state;
- (void)logEventForwardModuleInfo;
- (void)logEventForwardRSSI:(id)i;
- (void)logEventPointAWDLServicesAndPorts;
- (void)logEventPointJoin:(unsigned __int8)join withStats:(id)stats;
- (void)logEventPointRemoteControlSession:(id)session;
- (void)logEventPointWake:(id)wake;
- (void)logEventPointWakeDataFrame:(id)frame withParams:(id)params toEntry:(id)entry;
- (void)logEventPointWakeLink:(id)link withParams:(id)params toEntry:(id)entry;
- (void)logEventPointWakePNO:(id)o withParams:(id)params toEntry:(id)entry;
- (void)logFromAJCallback:(id)callback withFlag:(unsigned __int8)flag withStats:(id)stats;
- (void)logFromLinkChangeCallback:(id)callback withStats:(id)stats;
- (void)modelWiFiPower:(id)power;
- (void)modelWiFiSegmentPower:(id)power withDataPower:(double)dataPower withIdlePower:(double)idlePower withLocationPower:(double)locationPower withPipelinePower:(double)pipelinePower withTotalDuration:(double)duration;
- (void)setWiFiAWDLDevice:(__WiFiDeviceClient *)device;
- (void)setWiFiHotspotDevice:(__WiFiDeviceClient *)device;
- (void)setWifiDevice:(__WiFiDeviceClient *)device;
- (void)setWifiManager:(__WiFiManagerClient *)manager;
- (void)updateEventBackwardUserScanDuration:(id)duration;
- (void)writeModeledPower;
@end

@implementation PLWifiAgent

void __39__PLWifiAgent_initOperatorDependancies__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F6760 != -1)
    {
      dispatch_once(&qword_2811F6760, block);
    }

    if (byte_2811F66BC == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wifi Application Key Logger: %@ = %@", v6, v5];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:2564];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasWiFi
{
  wifiManager = [(PLWifiAgent *)self wifiManager];
  if (wifiManager)
  {
    LOBYTE(wifiManager) = [(PLWifiAgent *)self wifiDevice]!= 0;
  }

  return wifiManager;
}

- (void)log
{
  [(PLWifiAgent *)self logEventBackwardWifiProperties:1];
  [(PLWifiAgent *)self logEventBackwardUserScanDuration];
  [(PLWifiAgent *)self logEventPointAWDLServicesAndPorts];

  [(PLWifiAgent *)self logEventBackwardControlCPUPowerStats];
}

- (BOOL)isWowEnabled
{
  isWowSupported = [(PLWifiAgent *)self isWowSupported];
  if (isWowSupported)
  {
    [(PLWifiAgent *)self wifiManager];
    LOBYTE(isWowSupported) = WiFiManagerClientGetWoWState() != 0;
  }

  return isWowSupported;
}

- (BOOL)isWowSupported
{
  hasWiFi = [(PLWifiAgent *)self hasWiFi];
  if (hasWiFi)
  {
    [(PLWifiAgent *)self wifiManager];
    LOBYTE(hasWiFi) = WiFiManagerClientGetWoWCapability() != 0;
  }

  return hasWiFi;
}

- (BOOL)isWiFiPowered
{
  hasWiFi = [(PLWifiAgent *)self hasWiFi];
  if (hasWiFi)
  {
    [(PLWifiAgent *)self wifiDevice];
    LOBYTE(hasWiFi) = WiFiDeviceClientGetPower() != 0;
  }

  return hasWiFi;
}

- (id)wifiChipsetQuery
{
  v35 = *MEMORY[0x277D85DE8];
  wifiChipset = self->_wifiChipset;
  if (wifiChipset)
  {
    goto LABEL_56;
  }

  v4 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ModuleInfo"];
  storage = [(PLOperator *)self storage];
  v6 = [storage lastEntryForKey:v4];

  if (v6)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __31__PLWifiAgent_wifiChipsetQuery__block_invoke;
      v31 = &__block_descriptor_40_e5_v8__0lu32l8;
      v32 = v7;
      if (qword_2811F68C8 != -1)
      {
        dispatch_once(&qword_2811F68C8, &block);
      }

      if (byte_2811F66E9 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"last module entry: %@", v6, block, v29, v30, v31, v32];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiChipsetQuery]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:4589];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v34 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v14 = [v6 objectForKeyedSubscript:@"ProductId"];
    intValue = [v14 intValue];

    v16 = 0;
    if (intValue > 17459)
    {
      if (intValue > 31010)
      {
        if (intValue > 48411)
        {
          if (intValue == 48412)
          {
            v24 = @"4324";
            goto LABEL_54;
          }

          v17 = 48417;
          goto LABEL_44;
        }

        if (intValue == 31011)
        {
          v24 = @"31011";
          goto LABEL_54;
        }

        if (intValue != 48410)
        {
          goto LABEL_19;
        }

        v24 = @"4334";
      }

      else if (intValue > 17543)
      {
        if (intValue == 17544)
        {
          v24 = @"4377";
          goto LABEL_54;
        }

        if (intValue != 18347)
        {
          goto LABEL_19;
        }

        v24 = @"43452";
      }

      else
      {
        if (intValue == 17460)
        {
          v24 = @"4388";
          goto LABEL_54;
        }

        if (intValue != 17489)
        {
          goto LABEL_19;
        }

        v24 = @"4399";
      }
    }

    else if (intValue > 17371)
    {
      if (intValue > 17444)
      {
        if (intValue == 17445)
        {
          v24 = @"4378";
          goto LABEL_54;
        }

        if (intValue != 17459)
        {
          goto LABEL_19;
        }

        v24 = @"4387";
      }

      else
      {
        if (intValue == 17372)
        {
          v24 = @"4355";
          goto LABEL_54;
        }

        if (intValue != 17418)
        {
          goto LABEL_19;
        }

        v24 = @"4357";
      }
    }

    else
    {
      if (intValue <= 17314)
      {
        if (intValue == 1)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
          goto LABEL_54;
        }

        v17 = 17204;
LABEL_44:
        if (intValue == v17)
        {
          v24 = @"43342";
          goto LABEL_54;
        }

LABEL_19:

        goto LABEL_57;
      }

      if (intValue == 17315)
      {
        v24 = @"4350";
        goto LABEL_54;
      }

      if (intValue != 17323)
      {
        goto LABEL_19;
      }

      v24 = @"4345";
    }

LABEL_54:
    v25 = self->_wifiChipset;
    self->_wifiChipset = &v24->isa;

    goto LABEL_55;
  }

  if ([(PLOperator *)self isDebugEnabled])
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"wifiChipsetQuery: WiFi Module entry not found. Assume 4334 for now."];
    v19 = MEMORY[0x277D3F178];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
    lastPathComponent2 = [v20 lastPathComponent];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiChipsetQuery]"];
    [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:4652];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v18;
      _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v16 = @"4334";
    goto LABEL_19;
  }

LABEL_55:

  wifiChipset = self->_wifiChipset;
LABEL_56:
  v16 = wifiChipset;
LABEL_57:
  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)wifiManufacturerQuery
{
  selfCopy = self;
  v48 = *MEMORY[0x277D85DE8];
  wifiManufacturer = self->_wifiManufacturer;
  if (!wifiManufacturer)
  {
    v4 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ModuleInfo"];
    storage = [(PLOperator *)selfCopy storage];
    v6 = [storage lastEntryForKey:v4];

    if (!v6)
    {
LABEL_37:

      wifiManufacturer = selfCopy->_wifiManufacturer;
      goto LABEL_38;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PLWifiAgent_wifiManufacturerQuery__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (qword_2811F68D0 != -1)
      {
        dispatch_once(&qword_2811F68D0, block);
      }

      if (byte_2811F66EA == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"last module entry: %@", v6];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiManufacturerQuery]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:4666];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v47 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v37 = v6;
    v38 = v4;
    v35 = [v6 objectForKeyedSubscript:@"ModuleInfo"];
    v14 = [v35 componentsSeparatedByString:@" "];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
    v36 = selfCopy;
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [*(*(&v40 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v20 count] == 2)
          {
            v21 = [v20 objectAtIndexedSubscript:0];
            v22 = [v21 isEqualToString:@"V"];

            if (v22)
            {
              v23 = [v20 objectAtIndexedSubscript:1];

              v17 = v23;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v4 = v38;
    if ([v17 isEqualToString:@"u"])
    {
      v24 = @"usi";
      selfCopy = v36;
    }

    else
    {
      selfCopy = v36;
      if ([v17 isEqualToString:@"t"])
      {
        v24 = @"usi";
        goto LABEL_36;
      }

      if (([v17 isEqualToString:@"m"] & 1) != 0 || !objc_msgSend(MEMORY[0x277D3F180], "debugEnabled"))
      {
        goto LABEL_35;
      }

      v25 = objc_opt_class();
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __36__PLWifiAgent_wifiManufacturerQuery__block_invoke_2622;
      v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v39[4] = v25;
      if (qword_2811F68D8 != -1)
      {
        dispatch_once(&qword_2811F68D8, v39);
      }

      if (byte_2811F66EB != 1)
      {
LABEL_35:
        v24 = @"murata";
        goto LABEL_36;
      }

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLWiFiAgent wifiManufacturerQuery: manufacturer string not recognized: %@. Defaulting to murata", v17];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiManufacturerQuery]"];
      [v27 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:4687];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v26;
        _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v24 = @"murata";
      v4 = v38;
    }

    v6 = v37;
LABEL_36:
    v32 = selfCopy->_wifiManufacturer;
    selfCopy->_wifiManufacturer = &v24->isa;

    goto LABEL_37;
  }

LABEL_38:
  v33 = *MEMORY[0x277D85DE8];

  return wifiManufacturer;
}

- (void)logEventBackwardUserScanDuration
{
  v9 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CumulativeUserScanDurations"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_autoJoinScanDuration];
  [v3 setObject:v4 forKeyedSubscript:@"AutojoinScanDuration"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_locationScanDuration];
  [v3 setObject:v5 forKeyedSubscript:@"LocationScanDuration"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_pipelineScanDuration];
  [v3 setObject:v6 forKeyedSubscript:@"PipelineScanDuration"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_unknownScanDuration];
  [v3 setObject:v7 forKeyedSubscript:@"UnknownScanDuration"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_setupScanDuration];
  [v3 setObject:v8 forKeyedSubscript:@"SetupScanDuration"];

  [(PLOperator *)self logEntry:v3];
}

- (void)logEventPointAWDLServicesAndPorts
{
  v40 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self hasWiFi])
  {
    monitor = self->_monitor;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v4 = [(WiFiP2PAWDLStateMonitor *)monitor fetchAWDLActiveServices:&v37 withActivePorts:&v36 error:&v35];
    v5 = v37;
    v6 = v36;
    v7 = v35;
    v8 = PLLogWifi();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Call to fetch active services and ports was successful.", buf, 2u);
      }

      v10 = [v5 count];
      v11 = [v6 count];
      v8 = PLLogWifi();
      v12 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      if (v10 | v11)
      {
        selfCopy = self;
        v34 = v7;
        if (v12)
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Found active services and ports to log", buf, 2u);
        }

        v8 = objc_opt_new();
        if (v10 >= 4)
        {
          v16 = 4;
        }

        else
        {
          v16 = v10;
        }

        if (v10)
        {
          v32 = v11;
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = v18;
            v20 = v17 + 1;
            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"service_%i", v17 + 1];

            v21 = [v5 objectAtIndexedSubscript:v17];
            [v8 setObject:v21 forKeyedSubscript:v18];

            v17 = v20;
          }

          while (v16 != v20);

          v11 = v32;
        }

        if (v11 >= 4)
        {
          v22 = 4;
        }

        else
        {
          v22 = v11;
        }

        if (v11)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            v25 = v24;
            v26 = v23 + 1;
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"port_%i", v23 + 1];

            v27 = [v6 objectAtIndexedSubscript:v23];
            [v8 setObject:v27 forKeyedSubscript:v24];

            v23 = v26;
          }

          while (v22 != v26);
        }

        v28 = PLLogWifi();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v39 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "Map of Active Services and Ports: %@", buf, 0xCu);
        }

        v29 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AWDLServicesAndPorts"];
        v30 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v29 withRawData:v8];
        [(PLOperator *)selfCopy logEntry:v30];

        v7 = v34;
        goto LABEL_32;
      }

      if (v12)
      {
        *buf = 0;
        v13 = "No active services and ports to log";
        v14 = v8;
        v15 = 2;
LABEL_12:
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, v13, buf, v15);
      }
    }

    else if (v9)
    {
      *buf = 138412290;
      v39 = v7;
      v13 = "Call to fetch active services and ports failed with error: %@";
      v14 = v8;
      v15 = 12;
      goto LABEL_12;
    }

LABEL_32:

    goto LABEL_33;
  }

  v7 = PLLogWifi();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "No wifi to log active services and ports about", buf, 2u);
  }

LABEL_33:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)writeModeledPower
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && self->_wifi_segment_timestamp != self->_wifi_segment_lastWrittenTimestamp)
  {
    if (self->_wifi_segment_power_data > 2500.0)
    {
      self->_wifi_segment_power_data = 2500.0;
    }

    if (self->_wifi_segment_power_idle > 2500.0)
    {
      self->_wifi_segment_power_idle = 2500.0;
    }

    if (self->_wifi_segment_power_location > 2500.0)
    {
      self->_wifi_segment_power_location = 2500.0;
    }

    if (self->_wifi_segment_power_pipeline > 2500.0)
    {
      self->_wifi_segment_power_pipeline = 2500.0;
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:11 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_data];

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]2 createPowerEventBackwardWithRootNodeID:53 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_idle];

    mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]3 createPowerEventBackwardWithRootNodeID:12 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_location];

    mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0]4 createPowerEventBackwardWithRootNodeID:13 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_pipeline];

    objc_storeStrong(&self->_wifi_segment_lastWrittenDate, self->_wifi_segment_date);
    self->_wifi_segment_lastWrittenTimestamp = self->_wifi_segment_timestamp;
  }
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLWifiAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitionWifiInstantPower
{
  v14[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_282C1CA28;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"WifiPower";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v10 = commonTypeDict_RealFormat;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v14[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventPointDefinitions
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"Wake";
  v2 = +[PLWifiAgent entryEventPointDefinitionWake];
  v11[0] = v2;
  v10[1] = @"AWDLServicesAndPorts";
  v3 = +[PLWifiAgent entryEventPointDefinitionAWDLServicesAndPorts];
  v11[1] = v3;
  v10[2] = @"Join";
  v4 = +[PLWifiAgent entryEventPointDefinitionJoin];
  v11[2] = v4;
  v10[3] = @"RemoteControlSession";
  v5 = +[PLWifiAgent entryEventPointDefinitionRemoteControlSession];
  v11[3] = v5;
  v10[4] = @"MetricMonitorInstantKeys";
  v6 = +[PLWifiAgent entryEventPointDefinitionWifiInstantPower];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionWake
{
  v39[3] = *MEMORY[0x277D85DE8];
  v38[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v36[0] = *MEMORY[0x277D3F568];
  v36[1] = v2;
  v37[0] = &unk_282C1CA38;
  v37[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4A0];
  v36[2] = *MEMORY[0x277D3F550];
  v36[3] = v3;
  v37[2] = MEMORY[0x277CBEC28];
  v37[3] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  v39[0] = v29;
  v38[1] = *MEMORY[0x277D3F540];
  v34[0] = @"WakeReason";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v35[0] = commonTypeDict_StringFormat;
  v34[1] = @"WakeTime";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v35[1] = commonTypeDict_RealFormat;
  v34[2] = @"PID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v35[2] = commonTypeDict_IntegerFormat;
  v34[3] = @"ProcessName";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat_withProcessName];
  v35[3] = commonTypeDict_StringFormat_withProcessName;
  v34[4] = @"WakeLen";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v35[4] = commonTypeDict_IntegerFormat2;
  v34[5] = @"spi";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v35[5] = commonTypeDict_IntegerFormat3;
  v34[6] = @"seqNo";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v35[6] = commonTypeDict_IntegerFormat4;
  v34[7] = @"TCPKAWakeReason";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v35[7] = commonTypeDict_StringFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:8];
  v39[1] = v8;
  v38[2] = *MEMORY[0x277D3F500];
  v32[0] = @"value";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v32[1] = @"unit";
  v33[0] = commonTypeDict_StringFormat3;
  v11 = *MEMORY[0x277D3F5B0];
  v30[0] = *MEMORY[0x277D3F5A8];
  v30[1] = v11;
  v31[0] = &unk_282C12D68;
  v31[1] = @"s";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v39[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventPointDefinitionJoin
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v33[0] = &unk_282C1CA48;
  v33[1] = MEMORY[0x277CBEC28];
  v32[2] = *MEMORY[0x277D3F550];
  v33[2] = MEMORY[0x277CBEC28];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v35[0] = v29;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"State";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v31[0] = commonTypeDict_IntegerFormat;
  v30[1] = @"Reason";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v31[1] = commonTypeDict_IntegerFormat2;
  v30[2] = @"LPM_LPAS_POWER_BUDGET_REMAINING";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v31[2] = commonTypeDict_IntegerFormat3;
  v30[3] = @"LPM_POWER_CONSUMPTION_DUE_TO_FRTS";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v31[3] = commonTypeDict_IntegerFormat4;
  v30[4] = @"LPM_POWER_CONSUMPTION_DUE_TO_MAC";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v31[4] = commonTypeDict_IntegerFormat5;
  v30[5] = @"LPM_POWER_CONSUMPTION_DUE_TO_RF";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v31[5] = commonTypeDict_IntegerFormat6;
  v30[6] = @"LPM_POWER_CONSUMPTION_DUE_TO_ROAM_SCAN";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v31[6] = commonTypeDict_IntegerFormat7;
  v30[7] = @"LPM_POWER_CONSUMPTION_DUE_TO_USER_SCAN";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v31[7] = commonTypeDict_IntegerFormat8;
  v30[8] = @"LPM_POWER_CONSUMPTION_IN_SELF_MANAGED_LPAS";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v31[8] = commonTypeDict_IntegerFormat9;
  v30[9] = @"LPM_TOTAL_LPAS_DURATION";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v31[9] = commonTypeDict_IntegerFormat10;
  v30[10] = @"LPM_TOTAL_LPAS_POWER_PERIOD_REMAINING";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v31[10] = commonTypeDict_IntegerFormat11;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
  v35[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionRemoteControlSession
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v21 = *MEMORY[0x277D3F568];
  v22 = &unk_282C1CA28;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"Active";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v20[0] = commonTypeDict_BoolFormat;
  v19[1] = @"BundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v20[1] = commonTypeDict_StringFormat_withBundleID;
  v19[2] = @"ConnectionID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v20[2] = commonTypeDict_StringFormat;
  v19[3] = @"DeviceType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v20[3] = commonTypeDict_IntegerFormat;
  v19[4] = @"Reason";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v20[4] = commonTypeDict_StringFormat2;
  v19[5] = @"TransportType";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v20[5] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionAWDLServicesAndPorts
{
  v28[2] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277D3F4E8];
  v25 = *MEMORY[0x277D3F568];
  v26 = &unk_282C1CA28;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28[0] = v22;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"port_1";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v24[0] = commonTypeDict_IntegerFormat;
  v23[1] = @"port_2";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v24[1] = commonTypeDict_IntegerFormat2;
  v23[2] = @"port_3";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v24[2] = commonTypeDict_IntegerFormat3;
  v23[3] = @"port_4";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v24[3] = commonTypeDict_IntegerFormat4;
  v23[4] = @"service_1";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v24[4] = commonTypeDict_StringFormat;
  v23[5] = @"service_2";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v24[5] = commonTypeDict_StringFormat2;
  v23[6] = @"service_3";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v24[6] = commonTypeDict_StringFormat3;
  v23[7] = @"service_4";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v24[7] = commonTypeDict_StringFormat4;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:8];
  v28[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitions
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"AWDLState";
  v2 = +[PLWifiAgent entryEventForwardDefinitionAWDLState];
  v11[0] = v2;
  v10[1] = @"HotspotState";
  v3 = +[PLWifiAgent entryEventForwardDefinitionHotspotState];
  v11[1] = v3;
  v10[2] = @"ModuleInfo";
  v4 = +[PLWifiAgent entryEventForwardDefinitionModuleInfo];
  v11[2] = v4;
  v10[3] = @"WifiAssist";
  v5 = +[PLWifiAgent entryEventForwardDefinitionWifiAssist];
  v11[3] = v5;
  v10[4] = @"RSSI";
  v6 = +[PLWifiAgent entryEventForwardDefinitionRSSI];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionModuleInfo
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_282C1CA28;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"ChipInfo";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v16[0] = commonTypeDict_StringFormat;
  v15[1] = @"ManufacturerId";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v16[1] = commonTypeDict_IntegerFormat;
  v15[2] = @"ModuleInfo";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v16[2] = commonTypeDict_StringFormat2;
  v15[3] = @"ProductId";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v16[3] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionRSSI
{
  v28[2] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v25[0] = *MEMORY[0x277D3F568];
  v25[1] = v2;
  v26[0] = &unk_282C1CA28;
  v26[1] = MEMORY[0x277CBEC28];
  v25[2] = *MEMORY[0x277D3F508];
  v3 = MEMORY[0x277CBEC38];
  v26[2] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v28[0] = v4;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"RSSI";
  v5 = *MEMORY[0x277D3F5A8];
  v22[0] = &unk_282C12D80;
  v6 = *MEMORY[0x277D3F520];
  v21[0] = v5;
  v21[1] = v6;
  v19 = *MEMORY[0x277D3F518];
  v20 = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v23[1] = @"ScaledRSSI";
  v24[0] = v8;
  v17[1] = v6;
  v18[0] = &unk_282C12D80;
  v17[0] = v5;
  v15 = *MEMORY[0x277D3F510];
  v16 = &unk_282C1CA58;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v24[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v28[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionWifiAssist
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1CA28;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"WifiAssistFallback";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionHotspotState
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1CA28;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"HotSpotOn";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v12[1] = @"ADHS";
  v13[0] = commonTypeDict_BoolFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v13[1] = commonTypeDict_BoolFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionAWDLState
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1CA68;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"AWDLDown";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v12[1] = @"AWDLRanging";
  v13[0] = commonTypeDict_BoolFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionPowerState
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1CA28;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"PowerOn";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventBackwardDefinitions
{
  v15[9] = *MEMORY[0x277D85DE8];
  v2 = +[PLWifiAgent entryEventBackwardDefinitionBeaconProfile];
  v15[0] = v2;
  v14[1] = @"CumulativeProperties";
  v3 = +[PLWifiAgent entryEventBackwardDefinitionCumulativeBasic];
  v15[1] = v3;
  v14[2] = @"DiffProperties";
  v4 = +[PLWifiAgent entryEventBackwardDefinitionDiffBasic];
  v15[2] = v4;
  v14[3] = @"CumulativeUserScanDurations";
  v5 = +[PLWifiAgent entryEventBackwardDefinitionUserScan];
  v15[3] = v5;
  v14[4] = @"HotspotPowerStats";
  v6 = +[PLWifiAgent entryEventBackwardDefinitionHotspotPowerStats];
  v15[4] = v6;
  v14[5] = @"AutoJoin";
  v7 = +[PLWifiAgent entryEventBackwardDefinitionAutoJoin];
  v15[5] = v7;
  v14[6] = @"Scans";
  v8 = +[PLWifiAgent entryEventBackwardDefinitionScans];
  v15[6] = v8;
  v14[7] = @"ScanForwardStats";
  v9 = +[PLWifiAgent entryEventBackwardDefinitionScanForwardStats];
  v15[7] = v9;
  v14[8] = @"ControlCPUPowerStats";
  v10 = +[PLWifiAgent entryEventBackwardDefinitionControlCPUPowerStats];
  v15[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionAutoJoin
{
  v77[2] = *MEMORY[0x277D85DE8];
  v76[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v74[0] = *MEMORY[0x277D3F568];
  v74[1] = v2;
  v75[0] = &unk_282C1CA78;
  v75[1] = MEMORY[0x277CBEC28];
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
  v77[0] = v71;
  v76[1] = *MEMORY[0x277D3F540];
  v72[0] = @"AutoJoinAbortedCount";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v73[0] = commonTypeDict_IntegerFormat;
  v72[1] = @"AutoJoinCount";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v73[1] = commonTypeDict_IntegerFormat2;
  v72[2] = @"AutoJoinDidFindCandidateCount";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v73[2] = commonTypeDict_IntegerFormat3;
  v72[3] = @"AutoJoinRetryCount";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v73[3] = commonTypeDict_IntegerFormat4;
  v72[4] = @"CombinedScanChannelCount";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v73[4] = commonTypeDict_IntegerFormat5;
  v72[5] = @"CombinedScanChannelCount2ghz";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v73[5] = commonTypeDict_IntegerFormat6;
  v72[6] = @"CombinedScanChannelCount5ghz";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v73[6] = commonTypeDict_IntegerFormat7;
  v72[7] = @"GasQueryCount";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v73[7] = commonTypeDict_IntegerFormat8;
  v72[8] = @"AutoHotspotCount";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v73[8] = commonTypeDict_IntegerFormat9;
  v72[9] = @"Unlocked";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v73[9] = commonTypeDict_IntegerFormat10;
  v72[10] = @"CountryCodeChanged";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v73[10] = commonTypeDict_IntegerFormat11;
  v72[11] = @"KnownNetworkAdded";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v73[11] = commonTypeDict_IntegerFormat12;
  v72[12] = @"LinkDown";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v73[12] = commonTypeDict_IntegerFormat13;
  v72[13] = @"AssocFailure";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v73[13] = commonTypeDict_IntegerFormat14;
  v72[14] = @"Retry";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v73[14] = commonTypeDict_IntegerFormat15;
  v72[15] = @"PowerOn";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v73[15] = commonTypeDict_IntegerFormat16;
  v72[16] = @"AjEnabled";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v73[16] = commonTypeDict_IntegerFormat17;
  v72[17] = @"Manual";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v73[17] = commonTypeDict_IntegerFormat18;
  v72[18] = @"DarkWake";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v73[18] = commonTypeDict_IntegerFormat19;
  v72[19] = @"UserWake";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v73[19] = commonTypeDict_IntegerFormat20;
  v72[20] = @"CallEnded";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v73[20] = commonTypeDict_IntegerFormat21;
  v72[21] = @"PlaybackEnded";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v73[21] = commonTypeDict_IntegerFormat22;
  v72[22] = @"DeviceUnlocked";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
  v73[22] = commonTypeDict_IntegerFormat23;
  v72[23] = @"Registration";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v73[23] = commonTypeDict_IntegerFormat24;
  v72[24] = @"AppState";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v73[24] = commonTypeDict_IntegerFormat25;
  v72[25] = @"MaintWake";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v73[25] = commonTypeDict_IntegerFormat26;
  v72[26] = @"NetServiceInactive";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v73[26] = commonTypeDict_IntegerFormat27;
  v72[27] = @"BssidChanged";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v73[27] = commonTypeDict_IntegerFormat28;
  v72[28] = @"Retry(fg)";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v73[28] = commonTypeDict_IntegerFormat29;
  v72[29] = @"Retry(inactive)";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat];
  v73[29] = commonTypeDict_IntegerFormat30;
  v72[30] = @"CombinedScanChannelCount6ghz";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat];
  v73[30] = commonTypeDict_IntegerFormat31;
  v72[31] = @"Followup6ghzScanChannelCount";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat];
  v73[31] = commonTypeDict_IntegerFormat32;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:32];
  v77[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)isScanLoggingEnabled
{
  if ([MEMORY[0x277D3F208] isWiFiClass:1004015] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004016) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004017))
  {
    return 1;
  }

  v3 = MEMORY[0x277D3F208];

  return [v3 isWiFiClass:1004018];
}

+ (id)entryEventBackwardDefinitionScans
{
  v35[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v34[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F550];
    v32[0] = *MEMORY[0x277D3F568];
    v32[1] = v3;
    v33[0] = &unk_282C1CA28;
    v33[1] = MEMORY[0x277CBEC28];
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v35[0] = v29;
    v34[1] = *MEMORY[0x277D3F540];
    v30[0] = @"Duration2G";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_ms];
    v31[0] = commonTypeDict_IntegerFormat_withUnit_ms;
    v30[1] = @"Duration5G";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_ms];
    v31[1] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v30[2] = @"Duration6G";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_ms];
    v31[2] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v30[3] = @"Count2G";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v31[3] = commonTypeDict_IntegerFormat;
    v30[4] = @"Count5G";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v31[4] = commonTypeDict_IntegerFormat2;
    v30[5] = @"Count6G";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v31[5] = commonTypeDict_IntegerFormat3;
    v30[6] = @"CountActive";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v31[6] = commonTypeDict_IntegerFormat4;
    v30[7] = @"CountPassive";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v31[7] = commonTypeDict_IntegerFormat5;
    v30[8] = @"Count2GSC";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v31[8] = commonTypeDict_IntegerFormat6;
    v30[9] = @"Count5GSC";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v31[9] = commonTypeDict_IntegerFormat7;
    v30[10] = @"Count6GSC";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v31[10] = commonTypeDict_IntegerFormat8;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
    v35[1] = v12;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entryEventBackwardDefinitionScanForwardStats
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ([self isScanForwardLoggingEnabled])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_282C1CA28;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"ScanForwardCurrentBSSS";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_ms];
    v14[0] = commonTypeDict_IntegerFormat_withUnit_ms;
    v13[1] = @"ScanForwardForwardedBSSS";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_ms];
    v14[1] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v13[2] = @"ScanForwardTotalSPMIMSGS";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_ms];
    v14[2] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventBackwardDefinitionControlCPUPowerStats
{
  v78[2] = *MEMORY[0x277D85DE8];
  v77[0] = *MEMORY[0x277D3F4E8];
  v75 = *MEMORY[0x277D3F568];
  v76 = &unk_282C1CA28;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  v78[0] = v72;
  v77[1] = *MEMORY[0x277D3F540];
  v73[0] = @"DeepSleepCount";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v74[0] = commonTypeDict_IntegerFormat;
  v73[1] = @"WarmSleepCount";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v74[1] = commonTypeDict_IntegerFormat2;
  v73[2] = @"AwakeCount";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v74[2] = commonTypeDict_IntegerFormat3;
  v73[3] = @"AwakeL3Count";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v74[3] = commonTypeDict_IntegerFormat4;
  v73[4] = @"DeepSleepDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v74[4] = commonTypeDict_IntegerFormat5;
  v73[5] = @"WarmSleepDuration";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v74[5] = commonTypeDict_IntegerFormat6;
  v73[6] = @"AwakeDuration";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v74[6] = commonTypeDict_IntegerFormat7;
  v73[7] = @"AwakeL3Duration";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v74[7] = commonTypeDict_IntegerFormat8;
  v73[8] = @"CCPUIdleDuration";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v74[8] = commonTypeDict_IntegerFormat9;
  v73[9] = @"WiFiUMACIdleDuration";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v74[9] = commonTypeDict_IntegerFormat10;
  v73[10] = @"WiFiPHY2GIdleDuration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v74[10] = commonTypeDict_IntegerFormat11;
  v73[11] = @"WiFiPHY5GIdleDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v74[11] = commonTypeDict_IntegerFormat12;
  v73[12] = @"WiFiTXIdleDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v74[12] = commonTypeDict_IntegerFormat13;
  v73[13] = @"WiFiRXIdleDuration";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v74[13] = commonTypeDict_IntegerFormat14;
  v73[14] = @"WiFiLMACCommonIdleDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v74[14] = commonTypeDict_IntegerFormat15;
  v73[15] = @"WiFiLMAC2GIdleDuration";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v74[15] = commonTypeDict_IntegerFormat16;
  v73[16] = @"WiFiLMAC5GIdleDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v74[16] = commonTypeDict_IntegerFormat17;
  v73[17] = @"WiFiScanIdleDuration";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v74[17] = commonTypeDict_IntegerFormat18;
  v73[18] = @"BTMainIdleDuration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v74[18] = commonTypeDict_IntegerFormat19;
  v73[19] = @"BTSecondaryIdleDuration";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v74[19] = commonTypeDict_IntegerFormat20;
  v73[20] = @"BTScanIdleDuration";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v74[20] = commonTypeDict_IntegerFormat21;
  v73[21] = @"BTPHY2GIdleDuration";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v74[21] = commonTypeDict_IntegerFormat22;
  v73[22] = @"BTPHY5GIdleDuration";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
  v74[22] = commonTypeDict_IntegerFormat23;
  v73[23] = @"PCIeL0EntryCount";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v74[23] = commonTypeDict_IntegerFormat24;
  v73[24] = @"PCIeL1EntryCount";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v74[24] = commonTypeDict_IntegerFormat25;
  v73[25] = @"PCIeL1Dot1EntryCount";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v74[25] = commonTypeDict_IntegerFormat26;
  v73[26] = @"PCIeL1Dot2EntryCount";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v74[26] = commonTypeDict_IntegerFormat27;
  v73[27] = @"PCIeL3EntryCount";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v74[27] = commonTypeDict_IntegerFormat28;
  v73[28] = @"PCIeL0Duration";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v74[28] = commonTypeDict_IntegerFormat29;
  v73[29] = @"PCIeL1Duration";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat];
  v74[29] = commonTypeDict_IntegerFormat30;
  v73[30] = @"PCIeL1Dot1Duration";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat];
  v74[30] = commonTypeDict_IntegerFormat31;
  v73[31] = @"PCIeL1Dot2Duration";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat];
  v74[31] = commonTypeDict_IntegerFormat32;
  v73[32] = @"PCIeL3Duration";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat33 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat];
  v74[32] = commonTypeDict_IntegerFormat33;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:33];
  v78[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionHotspotPowerStats
{
  v33[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] kPLWiFiClassIsOneOf:{1004010, 1004013, 1004014, 1004015, 1004016, 1004017, 1004018, 1004019, 0}])
  {
    v32[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v30[0] = *MEMORY[0x277D3F568];
    v30[1] = v2;
    v31[0] = &unk_282C1CA28;
    v31[1] = MEMORY[0x277CBEC28];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v33[0] = v27;
    v32[1] = *MEMORY[0x277D3F540];
    v28[0] = @"ADHSActiveStateCount";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v29[0] = commonTypeDict_IntegerFormat;
    v28[1] = @"ADHSDynamicStateCount";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v29[1] = commonTypeDict_IntegerFormat2;
    v28[2] = @"ADHSLowPowerStateCount";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v29[2] = commonTypeDict_IntegerFormat3;
    v28[3] = @"ADHSOffStateCount";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v29[3] = commonTypeDict_IntegerFormat4;
    v28[4] = @"ADHSTXPackets";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v29[4] = commonTypeDict_IntegerFormat5;
    v28[5] = @"ADHSRXPackets";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v29[5] = commonTypeDict_IntegerFormat6;
    v28[6] = @"ADHSActiveStateDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_ms];
    v29[6] = commonTypeDict_IntegerFormat_withUnit_ms;
    v28[7] = @"ADHSDynamicStateDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_ms];
    v29[7] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v28[8] = @"ADHSLowPowerStateDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_ms];
    v29[8] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v28[9] = @"ADHSOffStateDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_ms];
    v29[9] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
    v33[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionBeaconProfile
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isMac] & 1) != 0 || !objc_msgSend(self, "isBeaconLoggingEnabled"))
  {
    v13 = MEMORY[0x277CBEC10];
  }

  else
  {
    v23[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F550];
    v21[0] = *MEMORY[0x277D3F568];
    v21[1] = v3;
    v22[0] = &unk_282C1CA28;
    v22[1] = MEMORY[0x277CBEC28];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v24[0] = v18;
    v23[1] = *MEMORY[0x277D3F540];
    v19[0] = @"ScheduleBeacon";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v20[0] = commonTypeDict_IntegerFormat;
    v19[1] = @"MissedBeacon";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v20[1] = commonTypeDict_IntegerFormat2;
    v19[2] = @"ReceivedBeacon";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v20[2] = commonTypeDict_IntegerFormat3;
    v19[3] = @"TrimmedBeacon";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v20[3] = commonTypeDict_IntegerFormat4;
    v19[4] = @"WifiTimestamp";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v20[4] = commonTypeDict_IntegerFormat5;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v24[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionUserScan
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1CA28;
  v21[1] = MEMORY[0x277CBEC28];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"AutojoinScanDuration";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_ms];
  v19[0] = commonTypeDict_IntegerFormat_withUnit_ms;
  v18[1] = @"LocationScanDuration";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_ms];
  v19[1] = commonTypeDict_IntegerFormat_withUnit_ms2;
  v18[2] = @"PipelineScanDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_ms];
  v19[2] = commonTypeDict_IntegerFormat_withUnit_ms3;
  v18[3] = @"SetupScanDuration";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat_withUnit_ms];
  v19[3] = commonTypeDict_IntegerFormat_withUnit_ms4;
  v18[4] = @"UnknownScanDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
  v19[4] = commonTypeDict_IntegerFormat_withUnit_ms5;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionCumulativeMultiCore
{
  v220[57] = *MEMORY[0x277D85DE8];
  v207 = objc_alloc(MEMORY[0x277CBEB38]);
  v219[0] = @"WifiTimestamp";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_s];
  v220[0] = commonTypeDict_IntegerFormat_withUnit_s;
  v219[1] = @"PMDuration";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_s];
  v220[1] = commonTypeDict_IntegerFormat_withUnit_s2;
  v219[2] = @"MPCDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_s];
  v220[2] = commonTypeDict_IntegerFormat_withUnit_s3;
  v219[3] = @"TXDuration";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[3] = commonTypeDict_IntegerFormat_withUnit_ms;
  v219[4] = @"RXDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
  v219[5] = @"HSICSuspendDuration";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
  v220[5] = commonTypeDict_IntegerFormat_withUnit_s4;
  v219[6] = @"HSICActiveDuration";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
  v220[6] = commonTypeDict_IntegerFormat_withUnit_s5;
  v219[7] = @"PNOScanSSIDDuration";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
  v220[7] = commonTypeDict_IntegerFormat_withUnit_s6;
  v219[8] = @"PNOBSSIDDuration";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
  v220[8] = commonTypeDict_IntegerFormat_withUnit_s7;
  v219[9] = @"RoamScanDuration";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
  v220[9] = commonTypeDict_IntegerFormat_withUnit_s8;
  v219[10] = @"AssociatedScanDuration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
  v220[10] = commonTypeDict_IntegerFormat_withUnit_s9;
  v219[11] = @"OtherScanDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
  v220[11] = commonTypeDict_IntegerFormat_withUnit_s10;
  v219[12] = @"UserScanDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
  v220[12] = commonTypeDict_IntegerFormat_withUnit_s11;
  v219[13] = @"FRTSDuration";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
  v219[14] = @"PCIESuspendDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
  v220[14] = commonTypeDict_IntegerFormat_withUnit_us;
  v219[15] = @"PCIEActiveDuration";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
  v220[15] = commonTypeDict_IntegerFormat_withUnit_us2;
  v219[16] = @"PCIEPERSTDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
  v220[16] = commonTypeDict_IntegerFormat_withUnit_us3;
  v219[17] = @"PCIEL0Count";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v220[17] = commonTypeDict_IntegerFormat;
  v219[18] = @"PCIEL0Duration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us4 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_us];
  v220[18] = commonTypeDict_IntegerFormat_withUnit_us4;
  v219[19] = @"PCIEL2Count";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v220[19] = commonTypeDict_IntegerFormat2;
  v219[20] = @"PCIEL2Duration";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us5 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_us];
  v220[20] = commonTypeDict_IntegerFormat_withUnit_us5;
  v219[21] = @"PCIEL1Count";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v220[21] = commonTypeDict_IntegerFormat3;
  v219[22] = @"PCIEL1Duration";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us6 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_us];
  v220[22] = commonTypeDict_IntegerFormat_withUnit_us6;
  v219[23] = @"PCIEL11Count";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v220[23] = commonTypeDict_IntegerFormat4;
  v219[24] = @"PCIEL11Duration";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us7 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_us];
  v220[24] = commonTypeDict_IntegerFormat_withUnit_us7;
  v219[25] = @"PCIEL12Count";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v220[25] = commonTypeDict_IntegerFormat5;
  v219[26] = @"PCIEL12Duration";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us8 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat_withUnit_us];
  v220[26] = commonTypeDict_IntegerFormat_withUnit_us8;
  v219[27] = @"AWDLTXDuration";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[27] = commonTypeDict_IntegerFormat_withUnit_ms4;
  v219[28] = @"AWDLRXDuration";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[28] = commonTypeDict_IntegerFormat_withUnit_ms5;
  v219[29] = @"AWDLAWDuration";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat_withUnit_s];
  v220[29] = commonTypeDict_IntegerFormat_withUnit_s12;
  v219[30] = @"AWDLScanDuration";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat_withUnit_s];
  v220[30] = commonTypeDict_IntegerFormat_withUnit_s13;
  v219[31] = @"AutojoinScanDuration";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[31] = commonTypeDict_IntegerFormat_withUnit_ms6;
  v219[32] = @"LocationScanDuration";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[32] = commonTypeDict_IntegerFormat_withUnit_ms7;
  v219[33] = @"PipelineScanDuration";
  mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[33] = commonTypeDict_IntegerFormat_withUnit_ms8;
  v219[34] = @"SetupScanDuration";
  mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[34] = commonTypeDict_IntegerFormat_withUnit_ms9;
  v219[35] = @"UnknownScanDuration";
  mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[35] = commonTypeDict_IntegerFormat_withUnit_ms10;
  v219[36] = @"CurrentChannel";
  mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat];
  v220[36] = commonTypeDict_IntegerFormat6;
  v219[37] = @"CurrentSSID";
  mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]38 commonTypeDict_StringFormat];
  v220[37] = commonTypeDict_StringFormat;
  v219[38] = @"CurrentBandwidth";
  mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat];
  v220[38] = commonTypeDict_IntegerFormat7;
  v219[39] = @"WifiPowered";
  mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]40 commonTypeDict_BoolFormat];
  v220[39] = commonTypeDict_BoolFormat;
  v219[40] = @"WowEnabled";
  mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]41 commonTypeDict_BoolFormat];
  v220[40] = commonTypeDict_BoolFormat2;
  v219[41] = @"Carplay";
  mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]42 commonTypeDict_BoolFormat];
  v220[41] = commonTypeDict_BoolFormat3;
  v219[42] = @"SISOTXDuration";
  mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]43 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[42] = commonTypeDict_IntegerFormat_withUnit_ms11;
  v219[43] = @"MIMOTXDuration";
  mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms12 = [mEMORY[0x277D3F198]44 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[43] = commonTypeDict_IntegerFormat_withUnit_ms12;
  v219[44] = @"MIMORXDuration";
  mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms13 = [mEMORY[0x277D3F198]45 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[44] = commonTypeDict_IntegerFormat_withUnit_ms13;
  v219[45] = @"SISORXDuration";
  mEMORY[0x277D3F198]46 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms14 = [mEMORY[0x277D3F198]46 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[45] = commonTypeDict_IntegerFormat_withUnit_ms14;
  v219[46] = @"MIMOCSDuration";
  mEMORY[0x277D3F198]47 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms15 = [mEMORY[0x277D3F198]47 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[46] = commonTypeDict_IntegerFormat_withUnit_ms15;
  v219[47] = @"SISOCSDuration";
  mEMORY[0x277D3F198]48 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms16 = [mEMORY[0x277D3F198]48 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[47] = commonTypeDict_IntegerFormat_withUnit_ms16;
  v219[48] = @"OCLRXDuration";
  mEMORY[0x277D3F198]49 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms17 = [mEMORY[0x277D3F198]49 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[48] = commonTypeDict_IntegerFormat_withUnit_ms17;
  v219[49] = @"OCLCSDuration";
  mEMORY[0x277D3F198]50 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms18 = [mEMORY[0x277D3F198]50 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[49] = commonTypeDict_IntegerFormat_withUnit_ms18;
  v219[50] = @"READINGTYPE";
  mEMORY[0x277D3F198]51 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]51 commonTypeDict_IntegerFormat];
  v220[50] = commonTypeDict_IntegerFormat8;
  v219[51] = @"isADHSConnected";
  mEMORY[0x277D3F198]52 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]52 commonTypeDict_IntegerFormat];
  v220[51] = commonTypeDict_IntegerFormat9;
  v219[52] = @"AutoHotspotBTScanDuration";
  mEMORY[0x277D3F198]53 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s14 = [mEMORY[0x277D3F198]53 commonTypeDict_IntegerFormat_withUnit_s];
  v220[52] = commonTypeDict_IntegerFormat_withUnit_s14;
  v219[53] = @"AutoHotspotBTScanCount";
  mEMORY[0x277D3F198]54 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]54 commonTypeDict_IntegerFormat];
  v220[53] = commonTypeDict_IntegerFormat10;
  v219[54] = @"OPSFullDuration";
  mEMORY[0x277D3F198]55 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms19 = [mEMORY[0x277D3F198]55 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[54] = commonTypeDict_IntegerFormat_withUnit_ms19;
  v219[55] = @"OPSPartialDuration";
  mEMORY[0x277D3F198]56 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms20 = [mEMORY[0x277D3F198]56 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[55] = commonTypeDict_IntegerFormat_withUnit_ms20;
  v219[56] = @"PSBWDuration";
  mEMORY[0x277D3F198]57 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms21 = [mEMORY[0x277D3F198]57 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[56] = commonTypeDict_IntegerFormat_withUnit_ms21;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:v219 count:57];
  v208 = [v207 initWithDictionary:v11];

  if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
  {
    v217[0] = @"SCAssocScanCount";
    mEMORY[0x277D3F198]58 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]58 commonTypeDict_IntegerFormat];
    v218[0] = commonTypeDict_IntegerFormat11;
    v217[1] = @"SCAssocScanDuration";
    mEMORY[0x277D3F198]59 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]59 commonTypeDict_IntegerFormat];
    v218[1] = commonTypeDict_IntegerFormat12;
    v217[2] = @"SCBlankedScanCount";
    mEMORY[0x277D3F198]60 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]60 commonTypeDict_IntegerFormat];
    v218[2] = commonTypeDict_IntegerFormat13;
    v217[3] = @"SCIdleDurationSISO";
    mEMORY[0x277D3F198]61 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]61 commonTypeDict_IntegerFormat];
    v218[3] = commonTypeDict_IntegerFormat14;
    v217[4] = @"SCPMDuration";
    mEMORY[0x277D3F198]62 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]62 commonTypeDict_IntegerFormat];
    v218[4] = commonTypeDict_IntegerFormat15;
    v217[5] = @"SCPNOScanCount";
    mEMORY[0x277D3F198]63 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]63 commonTypeDict_IntegerFormat];
    v218[5] = commonTypeDict_IntegerFormat16;
    v217[6] = @"SCPNOScanDuration";
    mEMORY[0x277D3F198]64 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]64 commonTypeDict_IntegerFormat];
    v218[6] = commonTypeDict_IntegerFormat17;
    v217[7] = @"SCRoamScanCount";
    mEMORY[0x277D3F198]65 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]65 commonTypeDict_IntegerFormat];
    v218[7] = commonTypeDict_IntegerFormat18;
    v217[8] = @"SCRoamScanDuration";
    mEMORY[0x277D3F198]66 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]66 commonTypeDict_IntegerFormat];
    v218[8] = commonTypeDict_IntegerFormat19;
    v217[9] = @"SCRXDurationSISO";
    mEMORY[0x277D3F198]67 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]67 commonTypeDict_IntegerFormat];
    v218[9] = commonTypeDict_IntegerFormat20;
    v217[10] = @"SCRXMPCDuration";
    mEMORY[0x277D3F198]68 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]68 commonTypeDict_IntegerFormat];
    v218[10] = commonTypeDict_IntegerFormat21;
    v217[11] = @"SCTimestamp";
    mEMORY[0x277D3F198]69 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]69 commonTypeDict_IntegerFormat];
    v218[11] = commonTypeDict_IntegerFormat22;
    v217[12] = @"SCUserScanCount";
    mEMORY[0x277D3F198]70 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]70 commonTypeDict_IntegerFormat];
    v218[12] = commonTypeDict_IntegerFormat23;
    v217[13] = @"SCUserScanDuration";
    mEMORY[0x277D3F198]71 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]71 commonTypeDict_IntegerFormat];
    v218[13] = commonTypeDict_IntegerFormat24;
    v217[14] = @"InactivityDuration";
    mEMORY[0x277D3F198]72 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]72 commonTypeDict_IntegerFormat];
    v218[14] = commonTypeDict_IntegerFormat25;
    v217[15] = @"InactivityLPBeaconsMissed";
    mEMORY[0x277D3F198]73 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]73 commonTypeDict_IntegerFormat];
    v218[15] = commonTypeDict_IntegerFormat26;
    v217[16] = @"InactivityLPBeaconsReceived";
    mEMORY[0x277D3F198]74 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]74 commonTypeDict_IntegerFormat];
    v218[16] = commonTypeDict_IntegerFormat27;
    v217[17] = @"InactivityLPBeaconsScheduled";
    mEMORY[0x277D3F198]75 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]75 commonTypeDict_IntegerFormat];
    v218[17] = commonTypeDict_IntegerFormat28;
    v217[18] = @"InactivityLPEarlyBeaconsTerminated";
    mEMORY[0x277D3F198]76 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]76 commonTypeDict_IntegerFormat];
    v218[18] = commonTypeDict_IntegerFormat29;
    v217[19] = @"InactivityLPWakeDuration";
    mEMORY[0x277D3F198]77 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]77 commonTypeDict_IntegerFormat];
    v218[19] = commonTypeDict_IntegerFormat30;
    v217[20] = @"InactivityMPCBeaconsMissed";
    mEMORY[0x277D3F198]78 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]78 commonTypeDict_IntegerFormat];
    v218[20] = commonTypeDict_IntegerFormat31;
    v217[21] = @"InactivityMPCBeaconsReceived";
    mEMORY[0x277D3F198]79 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]79 commonTypeDict_IntegerFormat];
    v218[21] = commonTypeDict_IntegerFormat32;
    v217[22] = @"InactivityMPCBeaconsScheduled";
    mEMORY[0x277D3F198]80 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat33 = [mEMORY[0x277D3F198]80 commonTypeDict_IntegerFormat];
    v218[22] = commonTypeDict_IntegerFormat33;
    v217[23] = @"InactivityMPEarlyBeaconsTerminated";
    mEMORY[0x277D3F198]81 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat34 = [mEMORY[0x277D3F198]81 commonTypeDict_IntegerFormat];
    v218[23] = commonTypeDict_IntegerFormat34;
    v217[24] = @"InactivityMPWakeDuration";
    mEMORY[0x277D3F198]82 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat35 = [mEMORY[0x277D3F198]82 commonTypeDict_IntegerFormat];
    v218[24] = commonTypeDict_IntegerFormat35;
    v217[25] = @"MulticastRXDuration";
    mEMORY[0x277D3F198]83 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms22 = [mEMORY[0x277D3F198]83 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[25] = commonTypeDict_IntegerFormat_withUnit_ms22;
    v217[26] = @"BroadcastRXDuration";
    mEMORY[0x277D3F198]84 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms23 = [mEMORY[0x277D3F198]84 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[26] = commonTypeDict_IntegerFormat_withUnit_ms23;
    v217[27] = @"IBSSRXDuration";
    mEMORY[0x277D3F198]85 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms24 = [mEMORY[0x277D3F198]85 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[27] = commonTypeDict_IntegerFormat_withUnit_ms24;
    v217[28] = @"MBSSRXDuration";
    mEMORY[0x277D3F198]86 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms25 = [mEMORY[0x277D3F198]86 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[28] = commonTypeDict_IntegerFormat_withUnit_ms25;
    v217[29] = @"OBSSRXDuration";
    mEMORY[0x277D3F198]87 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms26 = [mEMORY[0x277D3F198]87 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[29] = commonTypeDict_IntegerFormat_withUnit_ms26;
    v217[30] = @"MulticastRxBytes";
    mEMORY[0x277D3F198]88 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat36 = [mEMORY[0x277D3F198]88 commonTypeDict_IntegerFormat];
    v218[30] = commonTypeDict_IntegerFormat36;
    v217[31] = @"MulticastRxPkts";
    mEMORY[0x277D3F198]89 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat37 = [mEMORY[0x277D3F198]89 commonTypeDict_IntegerFormat];
    v218[31] = commonTypeDict_IntegerFormat37;
    v217[32] = @"MulticastRxTotal";
    mEMORY[0x277D3F198]90 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat38 = [mEMORY[0x277D3F198]90 commonTypeDict_IntegerFormat];
    v218[32] = commonTypeDict_IntegerFormat38;
    v217[33] = @"ExtPhyOfflineDuration2G";
    mEMORY[0x277D3F198]91 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms27 = [mEMORY[0x277D3F198]91 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[33] = commonTypeDict_IntegerFormat_withUnit_ms27;
    v217[34] = @"ExtPhyOfflineDuration5G";
    mEMORY[0x277D3F198]92 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms28 = [mEMORY[0x277D3F198]92 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[34] = commonTypeDict_IntegerFormat_withUnit_ms28;
    v217[35] = @"ExtPhyOfflineDurationSC";
    mEMORY[0x277D3F198]93 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms29 = [mEMORY[0x277D3F198]93 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[35] = commonTypeDict_IntegerFormat_withUnit_ms29;
    v217[36] = @"ExtPhyPowerGateDuration2G";
    mEMORY[0x277D3F198]94 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms30 = [mEMORY[0x277D3F198]94 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[36] = commonTypeDict_IntegerFormat_withUnit_ms30;
    v217[37] = @"ExtPhyPowerGateDuration5G";
    mEMORY[0x277D3F198]95 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms31 = [mEMORY[0x277D3F198]95 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[37] = commonTypeDict_IntegerFormat_withUnit_ms31;
    v217[38] = @"ExtPhyPowerGateDurationSC";
    mEMORY[0x277D3F198]96 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms32 = [mEMORY[0x277D3F198]96 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[38] = commonTypeDict_IntegerFormat_withUnit_ms32;
    v217[39] = @"ExtPhyRXDuration2G";
    mEMORY[0x277D3F198]97 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms33 = [mEMORY[0x277D3F198]97 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[39] = commonTypeDict_IntegerFormat_withUnit_ms33;
    v217[40] = @"ExtPhyRXDuration5G";
    mEMORY[0x277D3F198]98 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms34 = [mEMORY[0x277D3F198]98 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[40] = commonTypeDict_IntegerFormat_withUnit_ms34;
    v217[41] = @"ExtPhyRXDurationSC";
    mEMORY[0x277D3F198]99 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms35 = [mEMORY[0x277D3F198]99 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[41] = commonTypeDict_IntegerFormat_withUnit_ms35;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v218 forKeys:v217 count:42];

    v12 = v208;
    [v208 addEntriesFromDictionary:v13];
    v215[0] = *MEMORY[0x277D3F4E8];
    v213 = *MEMORY[0x277D3F568];
    v214 = &unk_282C1CA88;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
    v215[1] = *MEMORY[0x277D3F540];
    v216[0] = v24;
    v216[1] = v208;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v216 forKeys:v215 count:2];

    goto LABEL_6;
  }

  v12 = v208;
  if (([MEMORY[0x277D3F208] isWiFiClass:1004013] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
  {
    v211[0] = *MEMORY[0x277D3F4E8];
    v209 = *MEMORY[0x277D3F568];
    v210 = &unk_282C1CA38;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
    v211[1] = *MEMORY[0x277D3F540];
    v212[0] = v13;
    v212[1] = v208;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v212 forKeys:v211 count:2];
LABEL_6:

    goto LABEL_7;
  }

  v14 = MEMORY[0x277CBEC10];
LABEL_7:

  v25 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventBackwardDefinitionCumulativeBasic
{
  v573[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] kPLWiFiClassIsOneOf:{1004013, 1004014, 1004015, 1004016, 1004017, 1004018, 1004019, 0}])
  {
    entryEventBackwardDefinitionCumulativeMultiCore = [self entryEventBackwardDefinitionCumulativeMultiCore];
  }

  else if ([MEMORY[0x277D3F208] isWiFiClass:1004010])
  {
    v572[0] = *MEMORY[0x277D3F4E8];
    v570 = *MEMORY[0x277D3F568];
    v571 = &unk_282C1CA38;
    v533 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v571 forKeys:&v570 count:1];
    v573[0] = v533;
    v572[1] = *MEMORY[0x277D3F540];
    v568[0] = @"WifiTimestamp";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_s];
    v569[0] = commonTypeDict_IntegerFormat_withUnit_s;
    v568[1] = @"PMDuration";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_s];
    v569[1] = commonTypeDict_IntegerFormat_withUnit_s2;
    v568[2] = @"MPCDuration";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_s];
    v569[2] = commonTypeDict_IntegerFormat_withUnit_s3;
    v568[3] = @"TXDuration";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[3] = commonTypeDict_IntegerFormat_withUnit_ms;
    v568[4] = @"RXDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v568[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
    v569[5] = commonTypeDict_IntegerFormat_withUnit_s4;
    v568[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
    v569[6] = commonTypeDict_IntegerFormat_withUnit_s5;
    v568[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
    v569[7] = commonTypeDict_IntegerFormat_withUnit_s6;
    v568[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
    v569[8] = commonTypeDict_IntegerFormat_withUnit_s7;
    v568[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
    v569[9] = commonTypeDict_IntegerFormat_withUnit_s8;
    v568[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
    v569[10] = commonTypeDict_IntegerFormat_withUnit_s9;
    v568[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
    v569[11] = commonTypeDict_IntegerFormat_withUnit_s10;
    v568[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
    v569[12] = commonTypeDict_IntegerFormat_withUnit_s11;
    v568[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v568[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
    v569[14] = commonTypeDict_IntegerFormat_withUnit_us;
    v568[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
    v569[15] = commonTypeDict_IntegerFormat_withUnit_us2;
    v568[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
    v569[16] = commonTypeDict_IntegerFormat_withUnit_us3;
    v568[17] = @"PCIEL0Count";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
    v569[17] = commonTypeDict_IntegerFormat;
    v568[18] = @"PCIEL0Duration";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us4 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_us];
    v569[18] = commonTypeDict_IntegerFormat_withUnit_us4;
    v568[19] = @"PCIEL2Count";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
    v569[19] = commonTypeDict_IntegerFormat2;
    v568[20] = @"PCIEL2Duration";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us5 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_us];
    v569[20] = commonTypeDict_IntegerFormat_withUnit_us5;
    v568[21] = @"PCIEL1Count";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
    v569[21] = commonTypeDict_IntegerFormat3;
    v568[22] = @"PCIEL1Duration";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us6 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_us];
    v569[22] = commonTypeDict_IntegerFormat_withUnit_us6;
    v568[23] = @"PCIEL11Count";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
    v569[23] = commonTypeDict_IntegerFormat4;
    v568[24] = @"PCIEL11Duration";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us7 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_us];
    v569[24] = commonTypeDict_IntegerFormat_withUnit_us7;
    v568[25] = @"PCIEL12Count";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
    v569[25] = commonTypeDict_IntegerFormat5;
    v568[26] = @"PCIEL12Duration";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us8 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat_withUnit_us];
    v569[26] = commonTypeDict_IntegerFormat_withUnit_us8;
    v568[27] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[27] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v568[28] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[28] = commonTypeDict_IntegerFormat_withUnit_ms5;
    v568[29] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat_withUnit_s];
    v569[29] = commonTypeDict_IntegerFormat_withUnit_s12;
    v568[30] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat_withUnit_s];
    v569[30] = commonTypeDict_IntegerFormat_withUnit_s13;
    v568[31] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[31] = commonTypeDict_IntegerFormat_withUnit_ms6;
    v568[32] = @"LocationScanDuration";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[32] = commonTypeDict_IntegerFormat_withUnit_ms7;
    v568[33] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[33] = commonTypeDict_IntegerFormat_withUnit_ms8;
    v568[34] = @"SetupScanDuration";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[34] = commonTypeDict_IntegerFormat_withUnit_ms9;
    v568[35] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[35] = commonTypeDict_IntegerFormat_withUnit_ms10;
    v568[36] = @"CurrentChannel";
    mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat];
    v569[36] = commonTypeDict_IntegerFormat6;
    v568[37] = @"CurrentSSID";
    mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]38 commonTypeDict_StringFormat];
    v569[37] = commonTypeDict_StringFormat;
    v568[38] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat];
    v569[38] = commonTypeDict_IntegerFormat7;
    v568[39] = @"WifiPowered";
    mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]40 commonTypeDict_BoolFormat];
    v569[39] = commonTypeDict_BoolFormat;
    v568[40] = @"WowEnabled";
    mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]41 commonTypeDict_BoolFormat];
    v569[40] = commonTypeDict_BoolFormat2;
    v568[41] = @"Carplay";
    mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]42 commonTypeDict_BoolFormat];
    v569[41] = commonTypeDict_BoolFormat3;
    v568[42] = @"SISOTXDuration";
    mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]43 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[42] = commonTypeDict_IntegerFormat_withUnit_ms11;
    v568[43] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms12 = [mEMORY[0x277D3F198]44 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[43] = commonTypeDict_IntegerFormat_withUnit_ms12;
    v568[44] = @"MIMORXDuration";
    mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms13 = [mEMORY[0x277D3F198]45 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[44] = commonTypeDict_IntegerFormat_withUnit_ms13;
    v568[45] = @"SISORXDuration";
    mEMORY[0x277D3F198]46 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms14 = [mEMORY[0x277D3F198]46 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[45] = commonTypeDict_IntegerFormat_withUnit_ms14;
    v568[46] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]47 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms15 = [mEMORY[0x277D3F198]47 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[46] = commonTypeDict_IntegerFormat_withUnit_ms15;
    v568[47] = @"SISOCSDuration";
    mEMORY[0x277D3F198]48 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms16 = [mEMORY[0x277D3F198]48 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[47] = commonTypeDict_IntegerFormat_withUnit_ms16;
    v568[48] = @"OCLRXDuration";
    mEMORY[0x277D3F198]49 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms17 = [mEMORY[0x277D3F198]49 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[48] = commonTypeDict_IntegerFormat_withUnit_ms17;
    v568[49] = @"OCLCSDuration";
    mEMORY[0x277D3F198]50 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms18 = [mEMORY[0x277D3F198]50 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[49] = commonTypeDict_IntegerFormat_withUnit_ms18;
    v568[50] = @"READINGTYPE";
    mEMORY[0x277D3F198]51 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]51 commonTypeDict_IntegerFormat];
    v569[50] = commonTypeDict_IntegerFormat8;
    v568[51] = @"isADHSConnected";
    mEMORY[0x277D3F198]52 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]52 commonTypeDict_IntegerFormat];
    v569[51] = commonTypeDict_IntegerFormat9;
    v568[52] = @"AutoHotspotBTScanDuration";
    mEMORY[0x277D3F198]53 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms19 = [mEMORY[0x277D3F198]53 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[52] = commonTypeDict_IntegerFormat_withUnit_ms19;
    v568[53] = @"AutoHotspotBTScanCount";
    mEMORY[0x277D3F198]54 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]54 commonTypeDict_IntegerFormat];
    v569[53] = commonTypeDict_IntegerFormat10;
    v568[54] = @"OPSFullDuration";
    mEMORY[0x277D3F198]55 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms20 = [mEMORY[0x277D3F198]55 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[54] = commonTypeDict_IntegerFormat_withUnit_ms20;
    v568[55] = @"OPSPartialDuration";
    mEMORY[0x277D3F198]56 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms21 = [mEMORY[0x277D3F198]56 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[55] = commonTypeDict_IntegerFormat_withUnit_ms21;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v569 forKeys:v568 count:56];
    v573[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v573 forKeys:v572 count:2];

    entryEventBackwardDefinitionCumulativeMultiCore = v13;
  }

  else if ([MEMORY[0x277D3F208] isWiFiClass:1004007])
  {
    v566[0] = *MEMORY[0x277D3F4E8];
    v564 = *MEMORY[0x277D3F568];
    v565 = &unk_282C1CA38;
    v534 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v565 forKeys:&v564 count:1];
    v567[0] = v534;
    v566[1] = *MEMORY[0x277D3F540];
    v562[0] = @"WifiTimestamp";
    mEMORY[0x277D3F198]57 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s14 = [mEMORY[0x277D3F198]57 commonTypeDict_IntegerFormat_withUnit_s];
    v563[0] = commonTypeDict_IntegerFormat_withUnit_s14;
    v562[1] = @"PMDuration";
    mEMORY[0x277D3F198]58 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s15 = [mEMORY[0x277D3F198]58 commonTypeDict_IntegerFormat_withUnit_s];
    v563[1] = commonTypeDict_IntegerFormat_withUnit_s15;
    v562[2] = @"MPCDuration";
    mEMORY[0x277D3F198]59 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s16 = [mEMORY[0x277D3F198]59 commonTypeDict_IntegerFormat_withUnit_s];
    v563[2] = commonTypeDict_IntegerFormat_withUnit_s16;
    v562[3] = @"TXDuration";
    mEMORY[0x277D3F198]60 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms22 = [mEMORY[0x277D3F198]60 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[3] = commonTypeDict_IntegerFormat_withUnit_ms22;
    v562[4] = @"RXDuration";
    mEMORY[0x277D3F198]61 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms23 = [mEMORY[0x277D3F198]61 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[4] = commonTypeDict_IntegerFormat_withUnit_ms23;
    v562[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]62 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s17 = [mEMORY[0x277D3F198]62 commonTypeDict_IntegerFormat_withUnit_s];
    v563[5] = commonTypeDict_IntegerFormat_withUnit_s17;
    v562[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]63 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s18 = [mEMORY[0x277D3F198]63 commonTypeDict_IntegerFormat_withUnit_s];
    v563[6] = commonTypeDict_IntegerFormat_withUnit_s18;
    v562[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]64 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s19 = [mEMORY[0x277D3F198]64 commonTypeDict_IntegerFormat_withUnit_s];
    v563[7] = commonTypeDict_IntegerFormat_withUnit_s19;
    v562[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]65 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s20 = [mEMORY[0x277D3F198]65 commonTypeDict_IntegerFormat_withUnit_s];
    v563[8] = commonTypeDict_IntegerFormat_withUnit_s20;
    v562[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]66 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s21 = [mEMORY[0x277D3F198]66 commonTypeDict_IntegerFormat_withUnit_s];
    v563[9] = commonTypeDict_IntegerFormat_withUnit_s21;
    v562[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]67 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s22 = [mEMORY[0x277D3F198]67 commonTypeDict_IntegerFormat_withUnit_s];
    v563[10] = commonTypeDict_IntegerFormat_withUnit_s22;
    v562[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]68 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s23 = [mEMORY[0x277D3F198]68 commonTypeDict_IntegerFormat_withUnit_s];
    v563[11] = commonTypeDict_IntegerFormat_withUnit_s23;
    v562[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]69 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s24 = [mEMORY[0x277D3F198]69 commonTypeDict_IntegerFormat_withUnit_s];
    v563[12] = commonTypeDict_IntegerFormat_withUnit_s24;
    v562[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]70 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms24 = [mEMORY[0x277D3F198]70 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[13] = commonTypeDict_IntegerFormat_withUnit_ms24;
    v562[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]71 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us9 = [mEMORY[0x277D3F198]71 commonTypeDict_IntegerFormat_withUnit_us];
    v563[14] = commonTypeDict_IntegerFormat_withUnit_us9;
    v562[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]72 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us10 = [mEMORY[0x277D3F198]72 commonTypeDict_IntegerFormat_withUnit_us];
    v563[15] = commonTypeDict_IntegerFormat_withUnit_us10;
    v562[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]73 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us11 = [mEMORY[0x277D3F198]73 commonTypeDict_IntegerFormat_withUnit_us];
    v563[16] = commonTypeDict_IntegerFormat_withUnit_us11;
    v562[17] = @"PCIEL0Count";
    mEMORY[0x277D3F198]74 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]74 commonTypeDict_IntegerFormat];
    v563[17] = commonTypeDict_IntegerFormat11;
    v562[18] = @"PCIEL0Duration";
    mEMORY[0x277D3F198]75 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us12 = [mEMORY[0x277D3F198]75 commonTypeDict_IntegerFormat_withUnit_us];
    v563[18] = commonTypeDict_IntegerFormat_withUnit_us12;
    v562[19] = @"PCIEL2Count";
    mEMORY[0x277D3F198]76 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]76 commonTypeDict_IntegerFormat];
    v563[19] = commonTypeDict_IntegerFormat12;
    v562[20] = @"PCIEL2Duration";
    mEMORY[0x277D3F198]77 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us13 = [mEMORY[0x277D3F198]77 commonTypeDict_IntegerFormat_withUnit_us];
    v563[20] = commonTypeDict_IntegerFormat_withUnit_us13;
    v562[21] = @"PCIEL1Count";
    mEMORY[0x277D3F198]78 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]78 commonTypeDict_IntegerFormat];
    v563[21] = commonTypeDict_IntegerFormat13;
    v562[22] = @"PCIEL1Duration";
    mEMORY[0x277D3F198]79 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us14 = [mEMORY[0x277D3F198]79 commonTypeDict_IntegerFormat_withUnit_us];
    v563[22] = commonTypeDict_IntegerFormat_withUnit_us14;
    v562[23] = @"PCIEL11Count";
    mEMORY[0x277D3F198]80 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]80 commonTypeDict_IntegerFormat];
    v563[23] = commonTypeDict_IntegerFormat14;
    v562[24] = @"PCIEL11Duration";
    mEMORY[0x277D3F198]81 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us15 = [mEMORY[0x277D3F198]81 commonTypeDict_IntegerFormat_withUnit_us];
    v563[24] = commonTypeDict_IntegerFormat_withUnit_us15;
    v562[25] = @"PCIEL12Count";
    mEMORY[0x277D3F198]82 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]82 commonTypeDict_IntegerFormat];
    v563[25] = commonTypeDict_IntegerFormat15;
    v562[26] = @"PCIEL12Duration";
    mEMORY[0x277D3F198]83 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us16 = [mEMORY[0x277D3F198]83 commonTypeDict_IntegerFormat_withUnit_us];
    v563[26] = commonTypeDict_IntegerFormat_withUnit_us16;
    v562[27] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]84 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms25 = [mEMORY[0x277D3F198]84 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[27] = commonTypeDict_IntegerFormat_withUnit_ms25;
    v562[28] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]85 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms26 = [mEMORY[0x277D3F198]85 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[28] = commonTypeDict_IntegerFormat_withUnit_ms26;
    v562[29] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]86 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s25 = [mEMORY[0x277D3F198]86 commonTypeDict_IntegerFormat_withUnit_s];
    v563[29] = commonTypeDict_IntegerFormat_withUnit_s25;
    v562[30] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]87 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s26 = [mEMORY[0x277D3F198]87 commonTypeDict_IntegerFormat_withUnit_s];
    v563[30] = commonTypeDict_IntegerFormat_withUnit_s26;
    v562[31] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]88 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms27 = [mEMORY[0x277D3F198]88 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[31] = commonTypeDict_IntegerFormat_withUnit_ms27;
    v562[32] = @"LocationScanDuration";
    mEMORY[0x277D3F198]89 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms28 = [mEMORY[0x277D3F198]89 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[32] = commonTypeDict_IntegerFormat_withUnit_ms28;
    v562[33] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]90 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms29 = [mEMORY[0x277D3F198]90 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[33] = commonTypeDict_IntegerFormat_withUnit_ms29;
    v562[34] = @"SetupScanDuration";
    mEMORY[0x277D3F198]91 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms30 = [mEMORY[0x277D3F198]91 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[34] = commonTypeDict_IntegerFormat_withUnit_ms30;
    v562[35] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]92 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms31 = [mEMORY[0x277D3F198]92 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[35] = commonTypeDict_IntegerFormat_withUnit_ms31;
    v562[36] = @"CurrentChannel";
    mEMORY[0x277D3F198]93 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]93 commonTypeDict_IntegerFormat];
    v563[36] = commonTypeDict_IntegerFormat16;
    v562[37] = @"CurrentSSID";
    mEMORY[0x277D3F198]94 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]94 commonTypeDict_StringFormat];
    v563[37] = commonTypeDict_StringFormat2;
    v562[38] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]95 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]95 commonTypeDict_IntegerFormat];
    v563[38] = commonTypeDict_IntegerFormat17;
    v562[39] = @"WifiPowered";
    mEMORY[0x277D3F198]96 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]96 commonTypeDict_BoolFormat];
    v563[39] = commonTypeDict_BoolFormat4;
    v562[40] = @"WowEnabled";
    mEMORY[0x277D3F198]97 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat5 = [mEMORY[0x277D3F198]97 commonTypeDict_BoolFormat];
    v563[40] = commonTypeDict_BoolFormat5;
    v562[41] = @"Carplay";
    mEMORY[0x277D3F198]98 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat6 = [mEMORY[0x277D3F198]98 commonTypeDict_BoolFormat];
    v563[41] = commonTypeDict_BoolFormat6;
    v562[42] = @"SISOTXDuration";
    mEMORY[0x277D3F198]99 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms32 = [mEMORY[0x277D3F198]99 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[42] = commonTypeDict_IntegerFormat_withUnit_ms32;
    v562[43] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]100 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms33 = [mEMORY[0x277D3F198]100 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[43] = commonTypeDict_IntegerFormat_withUnit_ms33;
    v562[44] = @"MIMORXDuration";
    mEMORY[0x277D3F198]101 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms34 = [mEMORY[0x277D3F198]101 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[44] = commonTypeDict_IntegerFormat_withUnit_ms34;
    v562[45] = @"SISORXDuration";
    mEMORY[0x277D3F198]102 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms35 = [mEMORY[0x277D3F198]102 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[45] = commonTypeDict_IntegerFormat_withUnit_ms35;
    v562[46] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]103 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms36 = [mEMORY[0x277D3F198]103 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[46] = commonTypeDict_IntegerFormat_withUnit_ms36;
    v562[47] = @"SISOCSDuration";
    mEMORY[0x277D3F198]104 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms37 = [mEMORY[0x277D3F198]104 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[47] = commonTypeDict_IntegerFormat_withUnit_ms37;
    v562[48] = @"OCLRXDuration";
    mEMORY[0x277D3F198]105 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms38 = [mEMORY[0x277D3F198]105 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[48] = commonTypeDict_IntegerFormat_withUnit_ms38;
    v562[49] = @"OCLCSDuration";
    mEMORY[0x277D3F198]106 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms39 = [mEMORY[0x277D3F198]106 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[49] = commonTypeDict_IntegerFormat_withUnit_ms39;
    v562[50] = @"READINGTYPE";
    mEMORY[0x277D3F198]107 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]107 commonTypeDict_IntegerFormat];
    v563[50] = commonTypeDict_IntegerFormat18;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v563 forKeys:v562 count:51];
    v567[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v567 forKeys:v566 count:2];

    entryEventBackwardDefinitionCumulativeMultiCore = v23;
  }

  else if ([MEMORY[0x277D3F208] isWiFiClass:1004005])
  {
    v560[0] = *MEMORY[0x277D3F4E8];
    v558 = *MEMORY[0x277D3F568];
    v559 = &unk_282C1CA98;
    v535 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v559 forKeys:&v558 count:1];
    v561[0] = v535;
    v560[1] = *MEMORY[0x277D3F540];
    v556[0] = @"WifiTimestamp";
    mEMORY[0x277D3F198]108 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s27 = [mEMORY[0x277D3F198]108 commonTypeDict_IntegerFormat_withUnit_s];
    v557[0] = commonTypeDict_IntegerFormat_withUnit_s27;
    v556[1] = @"PMDuration";
    mEMORY[0x277D3F198]109 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s28 = [mEMORY[0x277D3F198]109 commonTypeDict_IntegerFormat_withUnit_s];
    v557[1] = commonTypeDict_IntegerFormat_withUnit_s28;
    v556[2] = @"MPCDuration";
    mEMORY[0x277D3F198]110 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s29 = [mEMORY[0x277D3F198]110 commonTypeDict_IntegerFormat_withUnit_s];
    v557[2] = commonTypeDict_IntegerFormat_withUnit_s29;
    v556[3] = @"TXDuration";
    mEMORY[0x277D3F198]111 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms40 = [mEMORY[0x277D3F198]111 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[3] = commonTypeDict_IntegerFormat_withUnit_ms40;
    v556[4] = @"RXDuration";
    mEMORY[0x277D3F198]112 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms41 = [mEMORY[0x277D3F198]112 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[4] = commonTypeDict_IntegerFormat_withUnit_ms41;
    v556[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]113 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s30 = [mEMORY[0x277D3F198]113 commonTypeDict_IntegerFormat_withUnit_s];
    v557[5] = commonTypeDict_IntegerFormat_withUnit_s30;
    v556[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]114 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s31 = [mEMORY[0x277D3F198]114 commonTypeDict_IntegerFormat_withUnit_s];
    v557[6] = commonTypeDict_IntegerFormat_withUnit_s31;
    v556[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]115 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s32 = [mEMORY[0x277D3F198]115 commonTypeDict_IntegerFormat_withUnit_s];
    v557[7] = commonTypeDict_IntegerFormat_withUnit_s32;
    v556[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]116 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s33 = [mEMORY[0x277D3F198]116 commonTypeDict_IntegerFormat_withUnit_s];
    v557[8] = commonTypeDict_IntegerFormat_withUnit_s33;
    v556[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]117 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s34 = [mEMORY[0x277D3F198]117 commonTypeDict_IntegerFormat_withUnit_s];
    v557[9] = commonTypeDict_IntegerFormat_withUnit_s34;
    v556[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]118 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s35 = [mEMORY[0x277D3F198]118 commonTypeDict_IntegerFormat_withUnit_s];
    v557[10] = commonTypeDict_IntegerFormat_withUnit_s35;
    v556[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]119 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s36 = [mEMORY[0x277D3F198]119 commonTypeDict_IntegerFormat_withUnit_s];
    v557[11] = commonTypeDict_IntegerFormat_withUnit_s36;
    v556[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]120 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s37 = [mEMORY[0x277D3F198]120 commonTypeDict_IntegerFormat_withUnit_s];
    v557[12] = commonTypeDict_IntegerFormat_withUnit_s37;
    v556[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]121 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms42 = [mEMORY[0x277D3F198]121 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[13] = commonTypeDict_IntegerFormat_withUnit_ms42;
    v556[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]122 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us17 = [mEMORY[0x277D3F198]122 commonTypeDict_IntegerFormat_withUnit_us];
    v557[14] = commonTypeDict_IntegerFormat_withUnit_us17;
    v556[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]123 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us18 = [mEMORY[0x277D3F198]123 commonTypeDict_IntegerFormat_withUnit_us];
    v557[15] = commonTypeDict_IntegerFormat_withUnit_us18;
    v556[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]124 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us19 = [mEMORY[0x277D3F198]124 commonTypeDict_IntegerFormat_withUnit_us];
    v557[16] = commonTypeDict_IntegerFormat_withUnit_us19;
    v556[17] = @"PCIEL0Count";
    mEMORY[0x277D3F198]125 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]125 commonTypeDict_IntegerFormat];
    v557[17] = commonTypeDict_IntegerFormat19;
    v556[18] = @"PCIEL0Duration";
    mEMORY[0x277D3F198]126 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us20 = [mEMORY[0x277D3F198]126 commonTypeDict_IntegerFormat_withUnit_us];
    v557[18] = commonTypeDict_IntegerFormat_withUnit_us20;
    v556[19] = @"PCIEL2Count";
    mEMORY[0x277D3F198]127 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]127 commonTypeDict_IntegerFormat];
    v557[19] = commonTypeDict_IntegerFormat20;
    v556[20] = @"PCIEL2Duration";
    mEMORY[0x277D3F198]128 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us21 = [mEMORY[0x277D3F198]128 commonTypeDict_IntegerFormat_withUnit_us];
    v557[20] = commonTypeDict_IntegerFormat_withUnit_us21;
    v556[21] = @"PCIEL1Count";
    mEMORY[0x277D3F198]129 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]129 commonTypeDict_IntegerFormat];
    v557[21] = commonTypeDict_IntegerFormat21;
    v556[22] = @"PCIEL1Duration";
    mEMORY[0x277D3F198]130 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us22 = [mEMORY[0x277D3F198]130 commonTypeDict_IntegerFormat_withUnit_us];
    v557[22] = commonTypeDict_IntegerFormat_withUnit_us22;
    v556[23] = @"PCIEL11Count";
    mEMORY[0x277D3F198]131 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]131 commonTypeDict_IntegerFormat];
    v557[23] = commonTypeDict_IntegerFormat22;
    v556[24] = @"PCIEL11Duration";
    mEMORY[0x277D3F198]132 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us23 = [mEMORY[0x277D3F198]132 commonTypeDict_IntegerFormat_withUnit_us];
    v557[24] = commonTypeDict_IntegerFormat_withUnit_us23;
    v556[25] = @"PCIEL12Count";
    mEMORY[0x277D3F198]133 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]133 commonTypeDict_IntegerFormat];
    v557[25] = commonTypeDict_IntegerFormat23;
    v556[26] = @"PCIEL12Duration";
    mEMORY[0x277D3F198]134 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us24 = [mEMORY[0x277D3F198]134 commonTypeDict_IntegerFormat_withUnit_us];
    v557[26] = commonTypeDict_IntegerFormat_withUnit_us24;
    v556[27] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]135 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms43 = [mEMORY[0x277D3F198]135 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[27] = commonTypeDict_IntegerFormat_withUnit_ms43;
    v556[28] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]136 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms44 = [mEMORY[0x277D3F198]136 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[28] = commonTypeDict_IntegerFormat_withUnit_ms44;
    v556[29] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]137 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s38 = [mEMORY[0x277D3F198]137 commonTypeDict_IntegerFormat_withUnit_s];
    v557[29] = commonTypeDict_IntegerFormat_withUnit_s38;
    v556[30] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]138 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s39 = [mEMORY[0x277D3F198]138 commonTypeDict_IntegerFormat_withUnit_s];
    v557[30] = commonTypeDict_IntegerFormat_withUnit_s39;
    v556[31] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]139 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms45 = [mEMORY[0x277D3F198]139 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[31] = commonTypeDict_IntegerFormat_withUnit_ms45;
    v556[32] = @"LocationScanDuration";
    mEMORY[0x277D3F198]140 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms46 = [mEMORY[0x277D3F198]140 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[32] = commonTypeDict_IntegerFormat_withUnit_ms46;
    v556[33] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]141 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms47 = [mEMORY[0x277D3F198]141 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[33] = commonTypeDict_IntegerFormat_withUnit_ms47;
    v556[34] = @"SetupScanDuration";
    mEMORY[0x277D3F198]142 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms48 = [mEMORY[0x277D3F198]142 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[34] = commonTypeDict_IntegerFormat_withUnit_ms48;
    v556[35] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]143 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms49 = [mEMORY[0x277D3F198]143 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[35] = commonTypeDict_IntegerFormat_withUnit_ms49;
    v556[36] = @"CurrentChannel";
    mEMORY[0x277D3F198]144 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]144 commonTypeDict_IntegerFormat];
    v557[36] = commonTypeDict_IntegerFormat24;
    v556[37] = @"CurrentSSID";
    mEMORY[0x277D3F198]145 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]145 commonTypeDict_StringFormat];
    v557[37] = commonTypeDict_StringFormat3;
    v556[38] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]146 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]146 commonTypeDict_IntegerFormat];
    v557[38] = commonTypeDict_IntegerFormat25;
    v556[39] = @"WifiPowered";
    mEMORY[0x277D3F198]147 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat7 = [mEMORY[0x277D3F198]147 commonTypeDict_BoolFormat];
    v557[39] = commonTypeDict_BoolFormat7;
    v556[40] = @"WowEnabled";
    mEMORY[0x277D3F198]148 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat8 = [mEMORY[0x277D3F198]148 commonTypeDict_BoolFormat];
    v557[40] = commonTypeDict_BoolFormat8;
    v556[41] = @"Carplay";
    mEMORY[0x277D3F198]149 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat9 = [mEMORY[0x277D3F198]149 commonTypeDict_BoolFormat];
    v557[41] = commonTypeDict_BoolFormat9;
    v556[42] = @"SISOTXDuration";
    mEMORY[0x277D3F198]150 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms50 = [mEMORY[0x277D3F198]150 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[42] = commonTypeDict_IntegerFormat_withUnit_ms50;
    v556[43] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]151 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms51 = [mEMORY[0x277D3F198]151 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[43] = commonTypeDict_IntegerFormat_withUnit_ms51;
    v556[44] = @"MIMORXDuration";
    mEMORY[0x277D3F198]152 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms52 = [mEMORY[0x277D3F198]152 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[44] = commonTypeDict_IntegerFormat_withUnit_ms52;
    v556[45] = @"SISORXDuration";
    mEMORY[0x277D3F198]153 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms53 = [mEMORY[0x277D3F198]153 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[45] = commonTypeDict_IntegerFormat_withUnit_ms53;
    v556[46] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]154 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms54 = [mEMORY[0x277D3F198]154 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[46] = commonTypeDict_IntegerFormat_withUnit_ms54;
    v556[47] = @"SISOCSDuration";
    mEMORY[0x277D3F198]155 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms55 = [mEMORY[0x277D3F198]155 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[47] = commonTypeDict_IntegerFormat_withUnit_ms55;
    v556[48] = @"READINGTYPE";
    mEMORY[0x277D3F198]156 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]156 commonTypeDict_IntegerFormat];
    v557[48] = commonTypeDict_IntegerFormat26;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v557 forKeys:v556 count:49];
    v561[1] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v561 forKeys:v560 count:2];

    entryEventBackwardDefinitionCumulativeMultiCore = v33;
  }

  else if (([MEMORY[0x277D3F208] isWiFiClass:1004011] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004012) && objc_msgSend(MEMORY[0x277D3F208], "kPLSoCClassOfDevice") < 1001205)
  {
    v554[0] = *MEMORY[0x277D3F4E8];
    v552 = *MEMORY[0x277D3F568];
    v553 = &unk_282C1CAA8;
    v536 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v553 forKeys:&v552 count:1];
    v555[0] = v536;
    v554[1] = *MEMORY[0x277D3F540];
    v550[0] = @"WifiTimestamp";
    mEMORY[0x277D3F198]157 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s40 = [mEMORY[0x277D3F198]157 commonTypeDict_IntegerFormat_withUnit_s];
    v551[0] = commonTypeDict_IntegerFormat_withUnit_s40;
    v550[1] = @"PMDuration";
    mEMORY[0x277D3F198]158 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s41 = [mEMORY[0x277D3F198]158 commonTypeDict_IntegerFormat_withUnit_s];
    v551[1] = commonTypeDict_IntegerFormat_withUnit_s41;
    v550[2] = @"MPCDuration";
    mEMORY[0x277D3F198]159 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s42 = [mEMORY[0x277D3F198]159 commonTypeDict_IntegerFormat_withUnit_s];
    v551[2] = commonTypeDict_IntegerFormat_withUnit_s42;
    v550[3] = @"TXDuration";
    mEMORY[0x277D3F198]160 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms56 = [mEMORY[0x277D3F198]160 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[3] = commonTypeDict_IntegerFormat_withUnit_ms56;
    v550[4] = @"RXDuration";
    mEMORY[0x277D3F198]161 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms57 = [mEMORY[0x277D3F198]161 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[4] = commonTypeDict_IntegerFormat_withUnit_ms57;
    v550[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]162 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s43 = [mEMORY[0x277D3F198]162 commonTypeDict_IntegerFormat_withUnit_s];
    v551[5] = commonTypeDict_IntegerFormat_withUnit_s43;
    v550[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]163 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s44 = [mEMORY[0x277D3F198]163 commonTypeDict_IntegerFormat_withUnit_s];
    v551[6] = commonTypeDict_IntegerFormat_withUnit_s44;
    v550[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]164 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s45 = [mEMORY[0x277D3F198]164 commonTypeDict_IntegerFormat_withUnit_s];
    v551[7] = commonTypeDict_IntegerFormat_withUnit_s45;
    v550[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]165 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s46 = [mEMORY[0x277D3F198]165 commonTypeDict_IntegerFormat_withUnit_s];
    v551[8] = commonTypeDict_IntegerFormat_withUnit_s46;
    v550[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]166 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s47 = [mEMORY[0x277D3F198]166 commonTypeDict_IntegerFormat_withUnit_s];
    v551[9] = commonTypeDict_IntegerFormat_withUnit_s47;
    v550[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]167 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s48 = [mEMORY[0x277D3F198]167 commonTypeDict_IntegerFormat_withUnit_s];
    v551[10] = commonTypeDict_IntegerFormat_withUnit_s48;
    v550[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]168 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s49 = [mEMORY[0x277D3F198]168 commonTypeDict_IntegerFormat_withUnit_s];
    v551[11] = commonTypeDict_IntegerFormat_withUnit_s49;
    v550[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]169 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s50 = [mEMORY[0x277D3F198]169 commonTypeDict_IntegerFormat_withUnit_s];
    v551[12] = commonTypeDict_IntegerFormat_withUnit_s50;
    v550[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]170 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms58 = [mEMORY[0x277D3F198]170 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[13] = commonTypeDict_IntegerFormat_withUnit_ms58;
    v550[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]171 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us25 = [mEMORY[0x277D3F198]171 commonTypeDict_IntegerFormat_withUnit_us];
    v551[14] = commonTypeDict_IntegerFormat_withUnit_us25;
    v550[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]172 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us26 = [mEMORY[0x277D3F198]172 commonTypeDict_IntegerFormat_withUnit_us];
    v551[15] = commonTypeDict_IntegerFormat_withUnit_us26;
    v550[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]173 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us27 = [mEMORY[0x277D3F198]173 commonTypeDict_IntegerFormat_withUnit_us];
    v551[16] = commonTypeDict_IntegerFormat_withUnit_us27;
    v550[17] = @"PCIEL0Count";
    mEMORY[0x277D3F198]174 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]174 commonTypeDict_IntegerFormat];
    v551[17] = commonTypeDict_IntegerFormat27;
    v550[18] = @"PCIEL0Duration";
    mEMORY[0x277D3F198]175 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us28 = [mEMORY[0x277D3F198]175 commonTypeDict_IntegerFormat_withUnit_us];
    v551[18] = commonTypeDict_IntegerFormat_withUnit_us28;
    v550[19] = @"PCIEL2Count";
    mEMORY[0x277D3F198]176 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat28 = [mEMORY[0x277D3F198]176 commonTypeDict_IntegerFormat];
    v551[19] = commonTypeDict_IntegerFormat28;
    v550[20] = @"PCIEL2Duration";
    mEMORY[0x277D3F198]177 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us29 = [mEMORY[0x277D3F198]177 commonTypeDict_IntegerFormat_withUnit_us];
    v551[20] = commonTypeDict_IntegerFormat_withUnit_us29;
    v550[21] = @"PCIEL1Count";
    mEMORY[0x277D3F198]178 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat29 = [mEMORY[0x277D3F198]178 commonTypeDict_IntegerFormat];
    v551[21] = commonTypeDict_IntegerFormat29;
    v550[22] = @"PCIEL1Duration";
    mEMORY[0x277D3F198]179 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us30 = [mEMORY[0x277D3F198]179 commonTypeDict_IntegerFormat_withUnit_us];
    v551[22] = commonTypeDict_IntegerFormat_withUnit_us30;
    v550[23] = @"PCIEL11Count";
    mEMORY[0x277D3F198]180 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat30 = [mEMORY[0x277D3F198]180 commonTypeDict_IntegerFormat];
    v551[23] = commonTypeDict_IntegerFormat30;
    v550[24] = @"PCIEL11Duration";
    mEMORY[0x277D3F198]181 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us31 = [mEMORY[0x277D3F198]181 commonTypeDict_IntegerFormat_withUnit_us];
    v551[24] = commonTypeDict_IntegerFormat_withUnit_us31;
    v550[25] = @"PCIEL12Count";
    mEMORY[0x277D3F198]182 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat31 = [mEMORY[0x277D3F198]182 commonTypeDict_IntegerFormat];
    v551[25] = commonTypeDict_IntegerFormat31;
    v550[26] = @"PCIEL12Duration";
    mEMORY[0x277D3F198]183 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us32 = [mEMORY[0x277D3F198]183 commonTypeDict_IntegerFormat_withUnit_us];
    v551[26] = commonTypeDict_IntegerFormat_withUnit_us32;
    v550[27] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]184 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms59 = [mEMORY[0x277D3F198]184 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[27] = commonTypeDict_IntegerFormat_withUnit_ms59;
    v550[28] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]185 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms60 = [mEMORY[0x277D3F198]185 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[28] = commonTypeDict_IntegerFormat_withUnit_ms60;
    v550[29] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]186 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s51 = [mEMORY[0x277D3F198]186 commonTypeDict_IntegerFormat_withUnit_s];
    v551[29] = commonTypeDict_IntegerFormat_withUnit_s51;
    v550[30] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]187 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s52 = [mEMORY[0x277D3F198]187 commonTypeDict_IntegerFormat_withUnit_s];
    v551[30] = commonTypeDict_IntegerFormat_withUnit_s52;
    v550[31] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]188 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms61 = [mEMORY[0x277D3F198]188 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[31] = commonTypeDict_IntegerFormat_withUnit_ms61;
    v550[32] = @"LocationScanDuration";
    mEMORY[0x277D3F198]189 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms62 = [mEMORY[0x277D3F198]189 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[32] = commonTypeDict_IntegerFormat_withUnit_ms62;
    v550[33] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]190 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms63 = [mEMORY[0x277D3F198]190 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[33] = commonTypeDict_IntegerFormat_withUnit_ms63;
    v550[34] = @"SetupScanDuration";
    mEMORY[0x277D3F198]191 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms64 = [mEMORY[0x277D3F198]191 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[34] = commonTypeDict_IntegerFormat_withUnit_ms64;
    v550[35] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]192 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms65 = [mEMORY[0x277D3F198]192 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[35] = commonTypeDict_IntegerFormat_withUnit_ms65;
    v550[36] = @"CurrentChannel";
    mEMORY[0x277D3F198]193 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat32 = [mEMORY[0x277D3F198]193 commonTypeDict_IntegerFormat];
    v551[36] = commonTypeDict_IntegerFormat32;
    v550[37] = @"CurrentSSID";
    mEMORY[0x277D3F198]194 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]194 commonTypeDict_StringFormat];
    v551[37] = commonTypeDict_StringFormat4;
    v550[38] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]195 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat33 = [mEMORY[0x277D3F198]195 commonTypeDict_IntegerFormat];
    v551[38] = commonTypeDict_IntegerFormat33;
    v550[39] = @"WifiPowered";
    mEMORY[0x277D3F198]196 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat10 = [mEMORY[0x277D3F198]196 commonTypeDict_BoolFormat];
    v551[39] = commonTypeDict_BoolFormat10;
    v550[40] = @"WowEnabled";
    mEMORY[0x277D3F198]197 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat11 = [mEMORY[0x277D3F198]197 commonTypeDict_BoolFormat];
    v551[40] = commonTypeDict_BoolFormat11;
    v550[41] = @"Carplay";
    mEMORY[0x277D3F198]198 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat12 = [mEMORY[0x277D3F198]198 commonTypeDict_BoolFormat];
    v551[41] = commonTypeDict_BoolFormat12;
    v550[42] = @"READINGTYPE";
    mEMORY[0x277D3F198]199 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat34 = [mEMORY[0x277D3F198]199 commonTypeDict_IntegerFormat];
    v551[42] = commonTypeDict_IntegerFormat34;
    v550[43] = @"PhyOfflineDuration";
    mEMORY[0x277D3F198]200 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat35 = [mEMORY[0x277D3F198]200 commonTypeDict_IntegerFormat];
    v551[43] = commonTypeDict_IntegerFormat35;
    v550[44] = @"PhyCalibrationDuration";
    mEMORY[0x277D3F198]201 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat36 = [mEMORY[0x277D3F198]201 commonTypeDict_IntegerFormat];
    v551[44] = commonTypeDict_IntegerFormat36;
    v550[45] = @"PhyCalibrationCount";
    mEMORY[0x277D3F198]202 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat37 = [mEMORY[0x277D3F198]202 commonTypeDict_IntegerFormat];
    v551[45] = commonTypeDict_IntegerFormat37;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v551 forKeys:v550 count:46];
    v555[1] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v555 forKeys:v554 count:2];

    entryEventBackwardDefinitionCumulativeMultiCore = v43;
  }

  else
  {
    if ([MEMORY[0x277D3F208] isWiFiClass:1004012] && objc_msgSend(MEMORY[0x277D3F208], "kPLSoCClassOfDevice") > 1001204)
    {
      v548[0] = *MEMORY[0x277D3F4E8];
      v546 = *MEMORY[0x277D3F568];
      v547 = &unk_282C1CA38;
      v537 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v547 forKeys:&v546 count:1];
      v549[0] = v537;
      v548[1] = *MEMORY[0x277D3F540];
      v544[0] = @"WifiTimestamp";
      mEMORY[0x277D3F198]203 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s53 = [mEMORY[0x277D3F198]203 commonTypeDict_IntegerFormat_withUnit_s];
      v545[0] = commonTypeDict_IntegerFormat_withUnit_s53;
      v544[1] = @"PMDuration";
      mEMORY[0x277D3F198]204 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s54 = [mEMORY[0x277D3F198]204 commonTypeDict_IntegerFormat_withUnit_s];
      v545[1] = commonTypeDict_IntegerFormat_withUnit_s54;
      v544[2] = @"MPCDuration";
      mEMORY[0x277D3F198]205 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s55 = [mEMORY[0x277D3F198]205 commonTypeDict_IntegerFormat_withUnit_s];
      v545[2] = commonTypeDict_IntegerFormat_withUnit_s55;
      v544[3] = @"TXDuration";
      mEMORY[0x277D3F198]206 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms66 = [mEMORY[0x277D3F198]206 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[3] = commonTypeDict_IntegerFormat_withUnit_ms66;
      v544[4] = @"RXDuration";
      mEMORY[0x277D3F198]207 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms67 = [mEMORY[0x277D3F198]207 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[4] = commonTypeDict_IntegerFormat_withUnit_ms67;
      v544[5] = @"HSICSuspendDuration";
      mEMORY[0x277D3F198]208 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s56 = [mEMORY[0x277D3F198]208 commonTypeDict_IntegerFormat_withUnit_s];
      v545[5] = commonTypeDict_IntegerFormat_withUnit_s56;
      v544[6] = @"HSICActiveDuration";
      mEMORY[0x277D3F198]209 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s57 = [mEMORY[0x277D3F198]209 commonTypeDict_IntegerFormat_withUnit_s];
      v545[6] = commonTypeDict_IntegerFormat_withUnit_s57;
      v544[7] = @"PNOScanSSIDDuration";
      mEMORY[0x277D3F198]210 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s58 = [mEMORY[0x277D3F198]210 commonTypeDict_IntegerFormat_withUnit_s];
      v545[7] = commonTypeDict_IntegerFormat_withUnit_s58;
      v544[8] = @"PNOBSSIDDuration";
      mEMORY[0x277D3F198]211 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s59 = [mEMORY[0x277D3F198]211 commonTypeDict_IntegerFormat_withUnit_s];
      v545[8] = commonTypeDict_IntegerFormat_withUnit_s59;
      v544[9] = @"RoamScanDuration";
      mEMORY[0x277D3F198]212 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s60 = [mEMORY[0x277D3F198]212 commonTypeDict_IntegerFormat_withUnit_s];
      v545[9] = commonTypeDict_IntegerFormat_withUnit_s60;
      v544[10] = @"AssociatedScanDuration";
      mEMORY[0x277D3F198]213 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s61 = [mEMORY[0x277D3F198]213 commonTypeDict_IntegerFormat_withUnit_s];
      v545[10] = commonTypeDict_IntegerFormat_withUnit_s61;
      v544[11] = @"OtherScanDuration";
      mEMORY[0x277D3F198]214 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s62 = [mEMORY[0x277D3F198]214 commonTypeDict_IntegerFormat_withUnit_s];
      v545[11] = commonTypeDict_IntegerFormat_withUnit_s62;
      v544[12] = @"UserScanDuration";
      mEMORY[0x277D3F198]215 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s63 = [mEMORY[0x277D3F198]215 commonTypeDict_IntegerFormat_withUnit_s];
      v545[12] = commonTypeDict_IntegerFormat_withUnit_s63;
      v544[13] = @"FRTSDuration";
      mEMORY[0x277D3F198]216 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms68 = [mEMORY[0x277D3F198]216 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[13] = commonTypeDict_IntegerFormat_withUnit_ms68;
      v544[14] = @"PCIESuspendDuration";
      mEMORY[0x277D3F198]217 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us33 = [mEMORY[0x277D3F198]217 commonTypeDict_IntegerFormat_withUnit_us];
      v545[14] = commonTypeDict_IntegerFormat_withUnit_us33;
      v544[15] = @"PCIEActiveDuration";
      mEMORY[0x277D3F198]218 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us34 = [mEMORY[0x277D3F198]218 commonTypeDict_IntegerFormat_withUnit_us];
      v545[15] = commonTypeDict_IntegerFormat_withUnit_us34;
      v544[16] = @"PCIEPERSTDuration";
      mEMORY[0x277D3F198]219 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us35 = [mEMORY[0x277D3F198]219 commonTypeDict_IntegerFormat_withUnit_us];
      v545[16] = commonTypeDict_IntegerFormat_withUnit_us35;
      v544[17] = @"PCIEL0Count";
      mEMORY[0x277D3F198]220 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat38 = [mEMORY[0x277D3F198]220 commonTypeDict_IntegerFormat];
      v545[17] = commonTypeDict_IntegerFormat38;
      v544[18] = @"PCIEL0Duration";
      mEMORY[0x277D3F198]221 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us36 = [mEMORY[0x277D3F198]221 commonTypeDict_IntegerFormat_withUnit_us];
      v545[18] = commonTypeDict_IntegerFormat_withUnit_us36;
      v544[19] = @"PCIEL2Count";
      mEMORY[0x277D3F198]222 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat39 = [mEMORY[0x277D3F198]222 commonTypeDict_IntegerFormat];
      v545[19] = commonTypeDict_IntegerFormat39;
      v544[20] = @"PCIEL2Duration";
      mEMORY[0x277D3F198]223 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us37 = [mEMORY[0x277D3F198]223 commonTypeDict_IntegerFormat_withUnit_us];
      v545[20] = commonTypeDict_IntegerFormat_withUnit_us37;
      v544[21] = @"PCIEL1Count";
      mEMORY[0x277D3F198]224 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat40 = [mEMORY[0x277D3F198]224 commonTypeDict_IntegerFormat];
      v545[21] = commonTypeDict_IntegerFormat40;
      v544[22] = @"PCIEL1Duration";
      mEMORY[0x277D3F198]225 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us38 = [mEMORY[0x277D3F198]225 commonTypeDict_IntegerFormat_withUnit_us];
      v545[22] = commonTypeDict_IntegerFormat_withUnit_us38;
      v544[23] = @"PCIEL11Count";
      mEMORY[0x277D3F198]226 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat41 = [mEMORY[0x277D3F198]226 commonTypeDict_IntegerFormat];
      v545[23] = commonTypeDict_IntegerFormat41;
      v544[24] = @"PCIEL11Duration";
      mEMORY[0x277D3F198]227 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us39 = [mEMORY[0x277D3F198]227 commonTypeDict_IntegerFormat_withUnit_us];
      v545[24] = commonTypeDict_IntegerFormat_withUnit_us39;
      v544[25] = @"PCIEL12Count";
      mEMORY[0x277D3F198]228 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat42 = [mEMORY[0x277D3F198]228 commonTypeDict_IntegerFormat];
      v545[25] = commonTypeDict_IntegerFormat42;
      v544[26] = @"PCIEL12Duration";
      mEMORY[0x277D3F198]229 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us40 = [mEMORY[0x277D3F198]229 commonTypeDict_IntegerFormat_withUnit_us];
      v545[26] = commonTypeDict_IntegerFormat_withUnit_us40;
      v544[27] = @"AWDLTXDuration";
      mEMORY[0x277D3F198]230 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms69 = [mEMORY[0x277D3F198]230 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[27] = commonTypeDict_IntegerFormat_withUnit_ms69;
      v544[28] = @"AWDLRXDuration";
      mEMORY[0x277D3F198]231 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms70 = [mEMORY[0x277D3F198]231 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[28] = commonTypeDict_IntegerFormat_withUnit_ms70;
      v544[29] = @"AWDLAWDuration";
      mEMORY[0x277D3F198]232 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s64 = [mEMORY[0x277D3F198]232 commonTypeDict_IntegerFormat_withUnit_s];
      v545[29] = commonTypeDict_IntegerFormat_withUnit_s64;
      v544[30] = @"AWDLScanDuration";
      mEMORY[0x277D3F198]233 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s65 = [mEMORY[0x277D3F198]233 commonTypeDict_IntegerFormat_withUnit_s];
      v545[30] = commonTypeDict_IntegerFormat_withUnit_s65;
      v544[31] = @"AutojoinScanDuration";
      mEMORY[0x277D3F198]234 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms71 = [mEMORY[0x277D3F198]234 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[31] = commonTypeDict_IntegerFormat_withUnit_ms71;
      v544[32] = @"LocationScanDuration";
      mEMORY[0x277D3F198]235 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms72 = [mEMORY[0x277D3F198]235 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[32] = commonTypeDict_IntegerFormat_withUnit_ms72;
      v544[33] = @"PipelineScanDuration";
      mEMORY[0x277D3F198]236 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms73 = [mEMORY[0x277D3F198]236 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[33] = commonTypeDict_IntegerFormat_withUnit_ms73;
      v544[34] = @"SetupScanDuration";
      mEMORY[0x277D3F198]237 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms74 = [mEMORY[0x277D3F198]237 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[34] = commonTypeDict_IntegerFormat_withUnit_ms74;
      v544[35] = @"UnknownScanDuration";
      mEMORY[0x277D3F198]238 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms75 = [mEMORY[0x277D3F198]238 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[35] = commonTypeDict_IntegerFormat_withUnit_ms75;
      v544[36] = @"CurrentChannel";
      mEMORY[0x277D3F198]239 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat43 = [mEMORY[0x277D3F198]239 commonTypeDict_IntegerFormat];
      v545[36] = commonTypeDict_IntegerFormat43;
      v544[37] = @"CurrentSSID";
      mEMORY[0x277D3F198]240 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]240 commonTypeDict_StringFormat];
      v545[37] = commonTypeDict_StringFormat5;
      v544[38] = @"CurrentBandwidth";
      mEMORY[0x277D3F198]241 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat44 = [mEMORY[0x277D3F198]241 commonTypeDict_IntegerFormat];
      v545[38] = commonTypeDict_IntegerFormat44;
      v544[39] = @"WifiPowered";
      mEMORY[0x277D3F198]242 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat13 = [mEMORY[0x277D3F198]242 commonTypeDict_BoolFormat];
      v545[39] = commonTypeDict_BoolFormat13;
      v544[40] = @"WowEnabled";
      mEMORY[0x277D3F198]243 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat14 = [mEMORY[0x277D3F198]243 commonTypeDict_BoolFormat];
      v545[40] = commonTypeDict_BoolFormat14;
      v544[41] = @"Carplay";
      mEMORY[0x277D3F198]244 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat15 = [mEMORY[0x277D3F198]244 commonTypeDict_BoolFormat];
      v545[41] = commonTypeDict_BoolFormat15;
      v544[42] = @"READINGTYPE";
      mEMORY[0x277D3F198]245 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat45 = [mEMORY[0x277D3F198]245 commonTypeDict_IntegerFormat];
      v545[42] = commonTypeDict_IntegerFormat45;
      v544[43] = @"PhyOfflineDuration";
      mEMORY[0x277D3F198]246 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat46 = [mEMORY[0x277D3F198]246 commonTypeDict_IntegerFormat];
      v545[43] = commonTypeDict_IntegerFormat46;
      v544[44] = @"PhyCalibrationDuration";
      mEMORY[0x277D3F198]247 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat47 = [mEMORY[0x277D3F198]247 commonTypeDict_IntegerFormat];
      v545[44] = commonTypeDict_IntegerFormat47;
      v544[45] = @"PhyCalibrationCount";
      mEMORY[0x277D3F198]248 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat48 = [mEMORY[0x277D3F198]248 commonTypeDict_IntegerFormat];
      v545[45] = commonTypeDict_IntegerFormat48;
      v544[46] = @"PNOScanSSID5GDuration";
      mEMORY[0x277D3F198]249 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s66 = [mEMORY[0x277D3F198]249 commonTypeDict_IntegerFormat_withUnit_s];
      v545[46] = commonTypeDict_IntegerFormat_withUnit_s66;
      v544[47] = @"PNOBSSID5GDuration";
      mEMORY[0x277D3F198]250 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s67 = [mEMORY[0x277D3F198]250 commonTypeDict_IntegerFormat_withUnit_s];
      v545[47] = commonTypeDict_IntegerFormat_withUnit_s67;
      v544[48] = @"RoamScan5GDuration";
      mEMORY[0x277D3F198]251 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s68 = [mEMORY[0x277D3F198]251 commonTypeDict_IntegerFormat_withUnit_s];
      v545[48] = commonTypeDict_IntegerFormat_withUnit_s68;
      v544[49] = @"AssociatedScan5GDuration";
      mEMORY[0x277D3F198]252 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s69 = [mEMORY[0x277D3F198]252 commonTypeDict_IntegerFormat_withUnit_s];
      v545[49] = commonTypeDict_IntegerFormat_withUnit_s69;
      v544[50] = @"OtherScan5GDuration";
      mEMORY[0x277D3F198]253 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s70 = [mEMORY[0x277D3F198]253 commonTypeDict_IntegerFormat_withUnit_s];
      v545[50] = commonTypeDict_IntegerFormat_withUnit_s70;
      v544[51] = @"UserScan5GDuration";
      mEMORY[0x277D3F198]254 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s71 = [mEMORY[0x277D3F198]254 commonTypeDict_IntegerFormat_withUnit_s];
      v545[51] = commonTypeDict_IntegerFormat_withUnit_s71;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v545 forKeys:v544 count:52];
      v549[1] = v52;
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v549 forKeys:v548 count:2];
    }

    else
    {
      v542[0] = *MEMORY[0x277D3F4E8];
      v540 = *MEMORY[0x277D3F568];
      v541 = &unk_282C1CAB8;
      v537 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v541 forKeys:&v540 count:1];
      v543[0] = v537;
      v542[1] = *MEMORY[0x277D3F540];
      v538[0] = @"WifiTimestamp";
      mEMORY[0x277D3F198]203 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s53 = [mEMORY[0x277D3F198]203 commonTypeDict_IntegerFormat_withUnit_s];
      v539[0] = commonTypeDict_IntegerFormat_withUnit_s53;
      v538[1] = @"PMDuration";
      mEMORY[0x277D3F198]204 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s54 = [mEMORY[0x277D3F198]204 commonTypeDict_IntegerFormat_withUnit_s];
      v539[1] = commonTypeDict_IntegerFormat_withUnit_s54;
      v538[2] = @"MPCDuration";
      mEMORY[0x277D3F198]205 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s55 = [mEMORY[0x277D3F198]205 commonTypeDict_IntegerFormat_withUnit_s];
      v539[2] = commonTypeDict_IntegerFormat_withUnit_s55;
      v538[3] = @"TXDuration";
      mEMORY[0x277D3F198]206 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms66 = [mEMORY[0x277D3F198]206 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[3] = commonTypeDict_IntegerFormat_withUnit_ms66;
      v538[4] = @"RXDuration";
      mEMORY[0x277D3F198]207 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms67 = [mEMORY[0x277D3F198]207 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[4] = commonTypeDict_IntegerFormat_withUnit_ms67;
      v538[5] = @"HSICSuspendDuration";
      mEMORY[0x277D3F198]208 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s56 = [mEMORY[0x277D3F198]208 commonTypeDict_IntegerFormat_withUnit_s];
      v539[5] = commonTypeDict_IntegerFormat_withUnit_s56;
      v538[6] = @"HSICActiveDuration";
      mEMORY[0x277D3F198]209 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s57 = [mEMORY[0x277D3F198]209 commonTypeDict_IntegerFormat_withUnit_s];
      v539[6] = commonTypeDict_IntegerFormat_withUnit_s57;
      v538[7] = @"PNOScanSSIDDuration";
      mEMORY[0x277D3F198]210 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s58 = [mEMORY[0x277D3F198]210 commonTypeDict_IntegerFormat_withUnit_s];
      v539[7] = commonTypeDict_IntegerFormat_withUnit_s58;
      v538[8] = @"PNOBSSIDDuration";
      mEMORY[0x277D3F198]211 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s59 = [mEMORY[0x277D3F198]211 commonTypeDict_IntegerFormat_withUnit_s];
      v539[8] = commonTypeDict_IntegerFormat_withUnit_s59;
      v538[9] = @"RoamScanDuration";
      mEMORY[0x277D3F198]212 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s60 = [mEMORY[0x277D3F198]212 commonTypeDict_IntegerFormat_withUnit_s];
      v539[9] = commonTypeDict_IntegerFormat_withUnit_s60;
      v538[10] = @"AssociatedScanDuration";
      mEMORY[0x277D3F198]213 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s61 = [mEMORY[0x277D3F198]213 commonTypeDict_IntegerFormat_withUnit_s];
      v539[10] = commonTypeDict_IntegerFormat_withUnit_s61;
      v538[11] = @"OtherScanDuration";
      mEMORY[0x277D3F198]214 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s62 = [mEMORY[0x277D3F198]214 commonTypeDict_IntegerFormat_withUnit_s];
      v539[11] = commonTypeDict_IntegerFormat_withUnit_s62;
      v538[12] = @"UserScanDuration";
      mEMORY[0x277D3F198]215 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s63 = [mEMORY[0x277D3F198]215 commonTypeDict_IntegerFormat_withUnit_s];
      v539[12] = commonTypeDict_IntegerFormat_withUnit_s63;
      v538[13] = @"FRTSDuration";
      mEMORY[0x277D3F198]216 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms68 = [mEMORY[0x277D3F198]216 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[13] = commonTypeDict_IntegerFormat_withUnit_ms68;
      v538[14] = @"PCIESuspendDuration";
      mEMORY[0x277D3F198]217 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us33 = [mEMORY[0x277D3F198]217 commonTypeDict_IntegerFormat_withUnit_us];
      v539[14] = commonTypeDict_IntegerFormat_withUnit_us33;
      v538[15] = @"PCIEActiveDuration";
      mEMORY[0x277D3F198]218 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us34 = [mEMORY[0x277D3F198]218 commonTypeDict_IntegerFormat_withUnit_us];
      v539[15] = commonTypeDict_IntegerFormat_withUnit_us34;
      v538[16] = @"PCIEPERSTDuration";
      mEMORY[0x277D3F198]219 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us35 = [mEMORY[0x277D3F198]219 commonTypeDict_IntegerFormat_withUnit_us];
      v539[16] = commonTypeDict_IntegerFormat_withUnit_us35;
      v538[17] = @"PCIEL0Count";
      mEMORY[0x277D3F198]220 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat38 = [mEMORY[0x277D3F198]220 commonTypeDict_IntegerFormat];
      v539[17] = commonTypeDict_IntegerFormat38;
      v538[18] = @"PCIEL0Duration";
      mEMORY[0x277D3F198]221 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us36 = [mEMORY[0x277D3F198]221 commonTypeDict_IntegerFormat_withUnit_us];
      v539[18] = commonTypeDict_IntegerFormat_withUnit_us36;
      v538[19] = @"PCIEL2Count";
      mEMORY[0x277D3F198]222 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat39 = [mEMORY[0x277D3F198]222 commonTypeDict_IntegerFormat];
      v539[19] = commonTypeDict_IntegerFormat39;
      v538[20] = @"PCIEL2Duration";
      mEMORY[0x277D3F198]223 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us37 = [mEMORY[0x277D3F198]223 commonTypeDict_IntegerFormat_withUnit_us];
      v539[20] = commonTypeDict_IntegerFormat_withUnit_us37;
      v538[21] = @"PCIEL1Count";
      mEMORY[0x277D3F198]224 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat40 = [mEMORY[0x277D3F198]224 commonTypeDict_IntegerFormat];
      v539[21] = commonTypeDict_IntegerFormat40;
      v538[22] = @"PCIEL1Duration";
      mEMORY[0x277D3F198]225 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us38 = [mEMORY[0x277D3F198]225 commonTypeDict_IntegerFormat_withUnit_us];
      v539[22] = commonTypeDict_IntegerFormat_withUnit_us38;
      v538[23] = @"PCIEL11Count";
      mEMORY[0x277D3F198]226 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat41 = [mEMORY[0x277D3F198]226 commonTypeDict_IntegerFormat];
      v539[23] = commonTypeDict_IntegerFormat41;
      v538[24] = @"PCIEL11Duration";
      mEMORY[0x277D3F198]227 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us39 = [mEMORY[0x277D3F198]227 commonTypeDict_IntegerFormat_withUnit_us];
      v539[24] = commonTypeDict_IntegerFormat_withUnit_us39;
      v538[25] = @"PCIEL12Count";
      mEMORY[0x277D3F198]228 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat42 = [mEMORY[0x277D3F198]228 commonTypeDict_IntegerFormat];
      v539[25] = commonTypeDict_IntegerFormat42;
      v538[26] = @"PCIEL12Duration";
      mEMORY[0x277D3F198]229 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_us40 = [mEMORY[0x277D3F198]229 commonTypeDict_IntegerFormat_withUnit_us];
      v539[26] = commonTypeDict_IntegerFormat_withUnit_us40;
      v538[27] = @"AWDLTXDuration";
      mEMORY[0x277D3F198]230 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms69 = [mEMORY[0x277D3F198]230 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[27] = commonTypeDict_IntegerFormat_withUnit_ms69;
      v538[28] = @"AWDLRXDuration";
      mEMORY[0x277D3F198]231 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms70 = [mEMORY[0x277D3F198]231 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[28] = commonTypeDict_IntegerFormat_withUnit_ms70;
      v538[29] = @"AWDLAWDuration";
      mEMORY[0x277D3F198]232 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s64 = [mEMORY[0x277D3F198]232 commonTypeDict_IntegerFormat_withUnit_s];
      v539[29] = commonTypeDict_IntegerFormat_withUnit_s64;
      v538[30] = @"AWDLScanDuration";
      mEMORY[0x277D3F198]233 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_s65 = [mEMORY[0x277D3F198]233 commonTypeDict_IntegerFormat_withUnit_s];
      v539[30] = commonTypeDict_IntegerFormat_withUnit_s65;
      v538[31] = @"AutojoinScanDuration";
      mEMORY[0x277D3F198]234 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms71 = [mEMORY[0x277D3F198]234 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[31] = commonTypeDict_IntegerFormat_withUnit_ms71;
      v538[32] = @"LocationScanDuration";
      mEMORY[0x277D3F198]235 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms72 = [mEMORY[0x277D3F198]235 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[32] = commonTypeDict_IntegerFormat_withUnit_ms72;
      v538[33] = @"PipelineScanDuration";
      mEMORY[0x277D3F198]236 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms73 = [mEMORY[0x277D3F198]236 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[33] = commonTypeDict_IntegerFormat_withUnit_ms73;
      v538[34] = @"SetupScanDuration";
      mEMORY[0x277D3F198]237 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms74 = [mEMORY[0x277D3F198]237 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[34] = commonTypeDict_IntegerFormat_withUnit_ms74;
      v538[35] = @"UnknownScanDuration";
      mEMORY[0x277D3F198]238 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat_withUnit_ms75 = [mEMORY[0x277D3F198]238 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[35] = commonTypeDict_IntegerFormat_withUnit_ms75;
      v538[36] = @"CurrentChannel";
      mEMORY[0x277D3F198]239 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat43 = [mEMORY[0x277D3F198]239 commonTypeDict_IntegerFormat];
      v539[36] = commonTypeDict_IntegerFormat43;
      v538[37] = @"CurrentSSID";
      mEMORY[0x277D3F198]240 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]240 commonTypeDict_StringFormat];
      v539[37] = commonTypeDict_StringFormat5;
      v538[38] = @"CurrentBandwidth";
      mEMORY[0x277D3F198]241 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat44 = [mEMORY[0x277D3F198]241 commonTypeDict_IntegerFormat];
      v539[38] = commonTypeDict_IntegerFormat44;
      v538[39] = @"WifiPowered";
      mEMORY[0x277D3F198]255 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat16 = [mEMORY[0x277D3F198]255 commonTypeDict_BoolFormat];
      v539[39] = commonTypeDict_BoolFormat16;
      v538[40] = @"WowEnabled";
      mEMORY[0x277D3F198]256 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat17 = [mEMORY[0x277D3F198]256 commonTypeDict_BoolFormat];
      v539[40] = commonTypeDict_BoolFormat17;
      v538[41] = @"Carplay";
      mEMORY[0x277D3F198]257 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_BoolFormat18 = [mEMORY[0x277D3F198]257 commonTypeDict_BoolFormat];
      v539[41] = commonTypeDict_BoolFormat18;
      v538[42] = @"READINGTYPE";
      mEMORY[0x277D3F198]258 = [MEMORY[0x277D3F198] sharedInstance];
      commonTypeDict_IntegerFormat49 = [mEMORY[0x277D3F198]258 commonTypeDict_IntegerFormat];
      v539[42] = commonTypeDict_IntegerFormat49;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v539 forKeys:v538 count:43];
      v543[1] = v62;
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v543 forKeys:v542 count:2];
    }

    entryEventBackwardDefinitionCumulativeMultiCore = v53;
  }

  v63 = *MEMORY[0x277D85DE8];

  return entryEventBackwardDefinitionCumulativeMultiCore;
}

+ (id)entryEventBackwardDefinitionDiffBasic
{
  v194[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isWiFiClass:1004013] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
  {
    v193[0] = *MEMORY[0x277D3F4E8];
    v191 = *MEMORY[0x277D3F568];
    v192 = &unk_282C1CAC8;
    v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
    v194[0] = v105;
    v193[1] = *MEMORY[0x277D3F540];
    v189[0] = @"TimeDuration";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_withUnit_s];
    v190[0] = commonTypeDict_IntegerFormat_withUnit_s;
    v189[1] = @"PMDuration";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_withUnit_s];
    v190[1] = commonTypeDict_IntegerFormat_withUnit_s2;
    v189[2] = @"MPCDuration";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_withUnit_s];
    v190[2] = commonTypeDict_IntegerFormat_withUnit_s3;
    v189[3] = @"TXDuration";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[3] = commonTypeDict_IntegerFormat_withUnit_ms;
    v189[4] = @"RXDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v189[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
    v190[5] = commonTypeDict_IntegerFormat_withUnit_s4;
    v189[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
    v190[6] = commonTypeDict_IntegerFormat_withUnit_s5;
    v189[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
    v190[7] = commonTypeDict_IntegerFormat_withUnit_s6;
    v189[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
    v190[8] = commonTypeDict_IntegerFormat_withUnit_s7;
    v189[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
    v190[9] = commonTypeDict_IntegerFormat_withUnit_s8;
    v189[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
    v190[10] = commonTypeDict_IntegerFormat_withUnit_s9;
    v189[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
    v190[11] = commonTypeDict_IntegerFormat_withUnit_s10;
    v189[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
    v190[12] = commonTypeDict_IntegerFormat_withUnit_s11;
    v189[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v189[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
    v190[14] = commonTypeDict_IntegerFormat_withUnit_us;
    v189[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
    v190[15] = commonTypeDict_IntegerFormat_withUnit_us2;
    v189[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
    v190[16] = commonTypeDict_IntegerFormat_withUnit_us3;
    v189[17] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[17] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v189[18] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[18] = commonTypeDict_IntegerFormat_withUnit_ms5;
    v189[19] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat_withUnit_s];
    v190[19] = commonTypeDict_IntegerFormat_withUnit_s12;
    v189[20] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_s];
    v190[20] = commonTypeDict_IntegerFormat_withUnit_s13;
    v189[21] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[21] = commonTypeDict_IntegerFormat_withUnit_ms6;
    v189[22] = @"LocationScanDuration";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[22] = commonTypeDict_IntegerFormat_withUnit_ms7;
    v189[23] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[23] = commonTypeDict_IntegerFormat_withUnit_ms8;
    v189[24] = @"SetupScanDuration";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[24] = commonTypeDict_IntegerFormat_withUnit_ms9;
    v189[25] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[25] = commonTypeDict_IntegerFormat_withUnit_ms10;
    v189[26] = @"CurrentChannel";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
    v190[26] = commonTypeDict_IntegerFormat;
    v189[27] = @"CurrentSSID";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat];
    v190[27] = commonTypeDict_StringFormat;
    v189[28] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
    v190[28] = commonTypeDict_IntegerFormat2;
    v189[29] = @"WifiPowered";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
    v190[29] = commonTypeDict_BoolFormat;
    v189[30] = @"WowEnabled";
    mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]31 commonTypeDict_BoolFormat];
    v190[30] = commonTypeDict_BoolFormat2;
    v189[31] = @"SISOTXDuration";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[31] = commonTypeDict_IntegerFormat_withUnit_ms11;
    v189[32] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms12 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[32] = commonTypeDict_IntegerFormat_withUnit_ms12;
    v189[33] = @"MIMORXDuration";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms13 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[33] = commonTypeDict_IntegerFormat_withUnit_ms13;
    v189[34] = @"SISORXDuration";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms14 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[34] = commonTypeDict_IntegerFormat_withUnit_ms14;
    v189[35] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms15 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[35] = commonTypeDict_IntegerFormat_withUnit_ms15;
    v189[36] = @"SISOCSDuration";
    mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms16 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[36] = commonTypeDict_IntegerFormat_withUnit_ms16;
    v189[37] = @"OCLRXDuration";
    mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms17 = [mEMORY[0x277D3F198]38 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[37] = commonTypeDict_IntegerFormat_withUnit_ms17;
    v189[38] = @"OCLCSDuration";
    mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms18 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[38] = commonTypeDict_IntegerFormat_withUnit_ms18;
    v189[39] = @"OPSFullDuration";
    mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms19 = [mEMORY[0x277D3F198]40 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[39] = commonTypeDict_IntegerFormat_withUnit_ms19;
    v189[40] = @"OPSPartialDuration";
    mEMORY[0x277D3F198]41 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms20 = [mEMORY[0x277D3F198]41 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[40] = commonTypeDict_IntegerFormat_withUnit_ms20;
    v189[41] = @"PSBWDuration";
    mEMORY[0x277D3F198]42 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms21 = [mEMORY[0x277D3F198]42 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[41] = commonTypeDict_IntegerFormat_withUnit_ms21;
    v189[42] = @"isADHSConnected";
    mEMORY[0x277D3F198]43 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]43 commonTypeDict_IntegerFormat];
    v190[42] = commonTypeDict_IntegerFormat3;
    v189[43] = @"AutoHotspotBTScanDuration";
    mEMORY[0x277D3F198]44 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s14 = [mEMORY[0x277D3F198]44 commonTypeDict_IntegerFormat_withUnit_s];
    v190[43] = commonTypeDict_IntegerFormat_withUnit_s14;
    v189[44] = @"AutoHotspotBTScanCount";
    mEMORY[0x277D3F198]45 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]45 commonTypeDict_IntegerFormat];
    v190[44] = commonTypeDict_IntegerFormat4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v190 forKeys:v189 count:45];
    v194[1] = v10;
    v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:2];

    commonTypeDict_IntegerFormat_withUnit_s25 = commonTypeDict_IntegerFormat_withUnit_s;
    mEMORY[0x277D3F198]77 = mEMORY[0x277D3F198]31;

    mEMORY[0x277D3F198]76 = mEMORY[0x277D3F198]4;
    commonTypeDict_IntegerFormat_withUnit_s27 = commonTypeDict_IntegerFormat_withUnit_s3;

    mEMORY[0x277D3F198]75 = mEMORY[0x277D3F198]3;
    commonTypeDict_IntegerFormat_withUnit_s26 = commonTypeDict_IntegerFormat_withUnit_s2;

    mEMORY[0x277D3F198]74 = mEMORY[0x277D3F198]2;
    mEMORY[0x277D3F198]73 = mEMORY[0x277D3F198];

    v19 = v105;
LABEL_4:

LABEL_5:
LABEL_6:

    goto LABEL_7;
  }

  if ([MEMORY[0x277D3F208] isWiFiClass:1004010])
  {
    v187[0] = *MEMORY[0x277D3F4E8];
    v185 = *MEMORY[0x277D3F568];
    v186 = &unk_282C1CAC8;
    v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
    v188[0] = v106;
    v187[1] = *MEMORY[0x277D3F540];
    v183[0] = @"TimeDuration";
    mEMORY[0x277D3F198]46 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s15 = [mEMORY[0x277D3F198]46 commonTypeDict_IntegerFormat_withUnit_s];
    v184[0] = commonTypeDict_IntegerFormat_withUnit_s15;
    v183[1] = @"PMDuration";
    mEMORY[0x277D3F198]47 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s16 = [mEMORY[0x277D3F198]47 commonTypeDict_IntegerFormat_withUnit_s];
    v184[1] = commonTypeDict_IntegerFormat_withUnit_s16;
    v183[2] = @"MPCDuration";
    mEMORY[0x277D3F198]48 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s17 = [mEMORY[0x277D3F198]48 commonTypeDict_IntegerFormat_withUnit_s];
    v184[2] = commonTypeDict_IntegerFormat_withUnit_s17;
    v183[3] = @"TXDuration";
    mEMORY[0x277D3F198]49 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]49 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[3] = commonTypeDict_IntegerFormat_withUnit_ms;
    v183[4] = @"RXDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v183[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
    v184[5] = commonTypeDict_IntegerFormat_withUnit_s4;
    v183[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
    v184[6] = commonTypeDict_IntegerFormat_withUnit_s5;
    v183[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
    v184[7] = commonTypeDict_IntegerFormat_withUnit_s6;
    v183[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
    v184[8] = commonTypeDict_IntegerFormat_withUnit_s7;
    v183[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
    v184[9] = commonTypeDict_IntegerFormat_withUnit_s8;
    v183[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
    v184[10] = commonTypeDict_IntegerFormat_withUnit_s9;
    v183[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
    v184[11] = commonTypeDict_IntegerFormat_withUnit_s10;
    v183[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
    v184[12] = commonTypeDict_IntegerFormat_withUnit_s11;
    v183[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v183[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
    v184[14] = commonTypeDict_IntegerFormat_withUnit_us;
    v183[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
    v184[15] = commonTypeDict_IntegerFormat_withUnit_us2;
    v183[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
    v184[16] = commonTypeDict_IntegerFormat_withUnit_us3;
    v183[17] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[17] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v183[18] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[18] = commonTypeDict_IntegerFormat_withUnit_ms5;
    v183[19] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat_withUnit_s];
    v184[19] = commonTypeDict_IntegerFormat_withUnit_s12;
    v183[20] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_s];
    v184[20] = commonTypeDict_IntegerFormat_withUnit_s13;
    v183[21] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[21] = commonTypeDict_IntegerFormat_withUnit_ms6;
    v183[22] = @"LocationScanDuration";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[22] = commonTypeDict_IntegerFormat_withUnit_ms7;
    v183[23] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[23] = commonTypeDict_IntegerFormat_withUnit_ms8;
    v183[24] = @"SetupScanDuration";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[24] = commonTypeDict_IntegerFormat_withUnit_ms9;
    v183[25] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[25] = commonTypeDict_IntegerFormat_withUnit_ms10;
    v183[26] = @"CurrentChannel";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
    v184[26] = commonTypeDict_IntegerFormat;
    v183[27] = @"CurrentSSID";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat];
    v184[27] = commonTypeDict_StringFormat;
    v183[28] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
    v184[28] = commonTypeDict_IntegerFormat2;
    v183[29] = @"WifiPowered";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
    v184[29] = commonTypeDict_BoolFormat;
    v183[30] = @"WowEnabled";
    mEMORY[0x277D3F198]50 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]50 commonTypeDict_BoolFormat];
    v184[30] = commonTypeDict_BoolFormat2;
    v183[31] = @"SISOTXDuration";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[31] = commonTypeDict_IntegerFormat_withUnit_ms11;
    v183[32] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms12 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[32] = commonTypeDict_IntegerFormat_withUnit_ms12;
    v183[33] = @"MIMORXDuration";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms13 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[33] = commonTypeDict_IntegerFormat_withUnit_ms13;
    v183[34] = @"SISORXDuration";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms14 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[34] = commonTypeDict_IntegerFormat_withUnit_ms14;
    v183[35] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]36 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms15 = [mEMORY[0x277D3F198]36 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[35] = commonTypeDict_IntegerFormat_withUnit_ms15;
    v183[36] = @"SISOCSDuration";
    mEMORY[0x277D3F198]37 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms16 = [mEMORY[0x277D3F198]37 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[36] = commonTypeDict_IntegerFormat_withUnit_ms16;
    v183[37] = @"OCLRXDuration";
    mEMORY[0x277D3F198]38 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms17 = [mEMORY[0x277D3F198]38 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[37] = commonTypeDict_IntegerFormat_withUnit_ms17;
    v183[38] = @"OCLCSDuration";
    mEMORY[0x277D3F198]39 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms18 = [mEMORY[0x277D3F198]39 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[38] = commonTypeDict_IntegerFormat_withUnit_ms18;
    v183[39] = @"OPSFullDuration";
    mEMORY[0x277D3F198]40 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms22 = [mEMORY[0x277D3F198]40 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[39] = commonTypeDict_IntegerFormat_withUnit_ms22;
    v183[40] = @"OPSPartialDuration";
    mEMORY[0x277D3F198]51 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms23 = [mEMORY[0x277D3F198]51 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[40] = commonTypeDict_IntegerFormat_withUnit_ms23;
    v183[41] = @"isADHSConnected";
    mEMORY[0x277D3F198]52 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]52 commonTypeDict_IntegerFormat];
    v184[41] = commonTypeDict_IntegerFormat5;
    v183[42] = @"AutoHotspotBTScanDuration";
    mEMORY[0x277D3F198]53 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s18 = [mEMORY[0x277D3F198]53 commonTypeDict_IntegerFormat_withUnit_s];
    v184[42] = commonTypeDict_IntegerFormat_withUnit_s18;
    v183[43] = @"AutoHotspotBTScanCount";
    mEMORY[0x277D3F198]54 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]54 commonTypeDict_IntegerFormat];
    v184[43] = commonTypeDict_IntegerFormat6;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:44];
    v188[1] = v30;
    v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:v187 count:2];

    mEMORY[0x277D3F198]77 = mEMORY[0x277D3F198]50;
    commonTypeDict_IntegerFormat_withUnit_s27 = commonTypeDict_IntegerFormat_withUnit_s17;

    mEMORY[0x277D3F198]75 = mEMORY[0x277D3F198]48;
    commonTypeDict_IntegerFormat_withUnit_s26 = commonTypeDict_IntegerFormat_withUnit_s16;

    mEMORY[0x277D3F198]74 = mEMORY[0x277D3F198]47;
    mEMORY[0x277D3F198]76 = mEMORY[0x277D3F198]49;

    mEMORY[0x277D3F198]73 = mEMORY[0x277D3F198]46;
    v19 = v106;

    commonTypeDict_IntegerFormat_withUnit_s25 = commonTypeDict_IntegerFormat_withUnit_s15;
    goto LABEL_4;
  }

  if ([MEMORY[0x277D3F208] isWiFiClass:1004007])
  {
    v181[0] = *MEMORY[0x277D3F4E8];
    v179 = *MEMORY[0x277D3F568];
    v180 = &unk_282C1CAC8;
    v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
    v182[0] = v107;
    v181[1] = *MEMORY[0x277D3F540];
    v177[0] = @"TimeDuration";
    mEMORY[0x277D3F198]55 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s19 = [mEMORY[0x277D3F198]55 commonTypeDict_IntegerFormat_withUnit_s];
    v178[0] = commonTypeDict_IntegerFormat_withUnit_s19;
    v177[1] = @"PMDuration";
    mEMORY[0x277D3F198]56 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s20 = [mEMORY[0x277D3F198]56 commonTypeDict_IntegerFormat_withUnit_s];
    v178[1] = commonTypeDict_IntegerFormat_withUnit_s20;
    v177[2] = @"MPCDuration";
    mEMORY[0x277D3F198]57 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s21 = [mEMORY[0x277D3F198]57 commonTypeDict_IntegerFormat_withUnit_s];
    v178[2] = commonTypeDict_IntegerFormat_withUnit_s21;
    v177[3] = @"TXDuration";
    mEMORY[0x277D3F198]58 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]58 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[3] = commonTypeDict_IntegerFormat_withUnit_ms;
    v177[4] = @"RXDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v177[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
    v178[5] = commonTypeDict_IntegerFormat_withUnit_s4;
    v177[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
    v178[6] = commonTypeDict_IntegerFormat_withUnit_s5;
    v177[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
    v178[7] = commonTypeDict_IntegerFormat_withUnit_s6;
    v177[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
    v178[8] = commonTypeDict_IntegerFormat_withUnit_s7;
    v177[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
    v178[9] = commonTypeDict_IntegerFormat_withUnit_s8;
    v177[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
    v178[10] = commonTypeDict_IntegerFormat_withUnit_s9;
    v177[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
    v178[11] = commonTypeDict_IntegerFormat_withUnit_s10;
    v177[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
    v178[12] = commonTypeDict_IntegerFormat_withUnit_s11;
    v177[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v177[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
    v178[14] = commonTypeDict_IntegerFormat_withUnit_us;
    v177[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
    v178[15] = commonTypeDict_IntegerFormat_withUnit_us2;
    v177[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
    v178[16] = commonTypeDict_IntegerFormat_withUnit_us3;
    v177[17] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[17] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v177[18] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[18] = commonTypeDict_IntegerFormat_withUnit_ms5;
    v177[19] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat_withUnit_s];
    v178[19] = commonTypeDict_IntegerFormat_withUnit_s12;
    v177[20] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_s];
    v178[20] = commonTypeDict_IntegerFormat_withUnit_s13;
    v177[21] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[21] = commonTypeDict_IntegerFormat_withUnit_ms6;
    v177[22] = @"LocationScanDuration";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[22] = commonTypeDict_IntegerFormat_withUnit_ms7;
    v177[23] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[23] = commonTypeDict_IntegerFormat_withUnit_ms8;
    v177[24] = @"SetupScanDuration";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[24] = commonTypeDict_IntegerFormat_withUnit_ms9;
    v177[25] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[25] = commonTypeDict_IntegerFormat_withUnit_ms10;
    v177[26] = @"CurrentChannel";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
    v178[26] = commonTypeDict_IntegerFormat;
    v177[27] = @"CurrentSSID";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat];
    v178[27] = commonTypeDict_StringFormat;
    v177[28] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
    v178[28] = commonTypeDict_IntegerFormat2;
    v177[29] = @"WifiPowered";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
    v178[29] = commonTypeDict_BoolFormat;
    v177[30] = @"WowEnabled";
    mEMORY[0x277D3F198]59 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]59 commonTypeDict_BoolFormat];
    v178[30] = commonTypeDict_BoolFormat2;
    v177[31] = @"SISOTXDuration";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[31] = commonTypeDict_IntegerFormat_withUnit_ms11;
    v177[32] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms12 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[32] = commonTypeDict_IntegerFormat_withUnit_ms12;
    v177[33] = @"MIMORXDuration";
    mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms13 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[33] = commonTypeDict_IntegerFormat_withUnit_ms13;
    v177[34] = @"SISORXDuration";
    mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms24 = [mEMORY[0x277D3F198]35 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[34] = commonTypeDict_IntegerFormat_withUnit_ms24;
    v177[35] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]60 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms25 = [mEMORY[0x277D3F198]60 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[35] = commonTypeDict_IntegerFormat_withUnit_ms25;
    v177[36] = @"SISOCSDuration";
    mEMORY[0x277D3F198]61 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms26 = [mEMORY[0x277D3F198]61 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[36] = commonTypeDict_IntegerFormat_withUnit_ms26;
    v177[37] = @"OCLRXDuration";
    mEMORY[0x277D3F198]62 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms27 = [mEMORY[0x277D3F198]62 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[37] = commonTypeDict_IntegerFormat_withUnit_ms27;
    v177[38] = @"OCLCSDuration";
    mEMORY[0x277D3F198]63 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms28 = [mEMORY[0x277D3F198]63 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[38] = commonTypeDict_IntegerFormat_withUnit_ms28;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:39];
    v182[1] = v39;
    v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:2];

    mEMORY[0x277D3F198]74 = mEMORY[0x277D3F198]56;
    commonTypeDict_IntegerFormat_withUnit_s25 = commonTypeDict_IntegerFormat_withUnit_s19;

    mEMORY[0x277D3F198]73 = mEMORY[0x277D3F198]55;
    v19 = v107;

    mEMORY[0x277D3F198]77 = mEMORY[0x277D3F198]59;
    mEMORY[0x277D3F198]76 = mEMORY[0x277D3F198]58;

    commonTypeDict_IntegerFormat_withUnit_s27 = commonTypeDict_IntegerFormat_withUnit_s21;
    mEMORY[0x277D3F198]75 = mEMORY[0x277D3F198]57;

    commonTypeDict_IntegerFormat_withUnit_s26 = commonTypeDict_IntegerFormat_withUnit_s20;
    goto LABEL_5;
  }

  v40 = [MEMORY[0x277D3F208] isWiFiClass:1004005];
  v41 = *MEMORY[0x277D3F4E8];
  if (v40)
  {
    v175[0] = *MEMORY[0x277D3F4E8];
    v173 = *MEMORY[0x277D3F568];
    v174 = &unk_282C1CA78;
    v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
    v176[0] = v108;
    v175[1] = *MEMORY[0x277D3F540];
    v171[0] = @"TimeDuration";
    mEMORY[0x277D3F198]64 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s22 = [mEMORY[0x277D3F198]64 commonTypeDict_IntegerFormat_withUnit_s];
    v172[0] = commonTypeDict_IntegerFormat_withUnit_s22;
    v171[1] = @"PMDuration";
    mEMORY[0x277D3F198]65 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s23 = [mEMORY[0x277D3F198]65 commonTypeDict_IntegerFormat_withUnit_s];
    v172[1] = commonTypeDict_IntegerFormat_withUnit_s23;
    v171[2] = @"MPCDuration";
    mEMORY[0x277D3F198]66 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s24 = [mEMORY[0x277D3F198]66 commonTypeDict_IntegerFormat_withUnit_s];
    v172[2] = commonTypeDict_IntegerFormat_withUnit_s24;
    v171[3] = @"TXDuration";
    mEMORY[0x277D3F198]67 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]67 commonTypeDict_IntegerFormat_withUnit_s];
    v172[3] = commonTypeDict_IntegerFormat_withUnit_ms;
    v171[4] = @"RXDuration";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_s];
    v172[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
    v171[5] = @"HSICSuspendDuration";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
    v172[5] = commonTypeDict_IntegerFormat_withUnit_s4;
    v171[6] = @"HSICActiveDuration";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
    v172[6] = commonTypeDict_IntegerFormat_withUnit_s5;
    v171[7] = @"PNOScanSSIDDuration";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
    v172[7] = commonTypeDict_IntegerFormat_withUnit_s6;
    v171[8] = @"PNOBSSIDDuration";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
    v172[8] = commonTypeDict_IntegerFormat_withUnit_s7;
    v171[9] = @"RoamScanDuration";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
    v172[9] = commonTypeDict_IntegerFormat_withUnit_s8;
    v171[10] = @"AssociatedScanDuration";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
    v172[10] = commonTypeDict_IntegerFormat_withUnit_s9;
    v171[11] = @"OtherScanDuration";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
    v172[11] = commonTypeDict_IntegerFormat_withUnit_s10;
    v171[12] = @"UserScanDuration";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
    v172[12] = commonTypeDict_IntegerFormat_withUnit_s11;
    v171[13] = @"FRTSDuration";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
    v171[14] = @"PCIESuspendDuration";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
    v172[14] = commonTypeDict_IntegerFormat_withUnit_us;
    v171[15] = @"PCIEActiveDuration";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
    v172[15] = commonTypeDict_IntegerFormat_withUnit_us2;
    v171[16] = @"PCIEPERSTDuration";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
    v172[16] = commonTypeDict_IntegerFormat_withUnit_us3;
    v171[17] = @"AutojoinScanDuration";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[17] = commonTypeDict_IntegerFormat_withUnit_ms4;
    v171[18] = @"LocationScanDuration";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[18] = commonTypeDict_IntegerFormat_withUnit_ms5;
    v171[19] = @"PipelineScanDuration";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[19] = commonTypeDict_IntegerFormat_withUnit_s12;
    v171[20] = @"SetupScanDuration";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[20] = commonTypeDict_IntegerFormat_withUnit_s13;
    v171[21] = @"UnknownScanDuration";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[21] = commonTypeDict_IntegerFormat_withUnit_ms6;
    v171[22] = @"AWDLTXDuration";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[22] = commonTypeDict_IntegerFormat_withUnit_ms7;
    v171[23] = @"AWDLRXDuration";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[23] = commonTypeDict_IntegerFormat_withUnit_ms8;
    v171[24] = @"AWDLAWDuration";
    mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_s];
    v172[24] = commonTypeDict_IntegerFormat_withUnit_ms9;
    v171[25] = @"AWDLScanDuration";
    mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat_withUnit_s];
    v172[25] = commonTypeDict_IntegerFormat_withUnit_ms10;
    v171[26] = @"CurrentChannel";
    mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
    v172[26] = commonTypeDict_IntegerFormat;
    v171[27] = @"CurrentSSID";
    mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat];
    v172[27] = commonTypeDict_StringFormat;
    v171[28] = @"CurrentBandwidth";
    mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
    v172[28] = commonTypeDict_IntegerFormat2;
    v171[29] = @"WifiPowered";
    mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
    v172[29] = commonTypeDict_BoolFormat;
    v171[30] = @"WowEnabled";
    mEMORY[0x277D3F198]68 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]68 commonTypeDict_BoolFormat];
    v172[30] = commonTypeDict_BoolFormat2;
    v171[31] = @"SISOTXDuration";
    mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms11 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[31] = commonTypeDict_IntegerFormat_withUnit_ms11;
    v171[32] = @"MIMOTXDuration";
    mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms29 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[32] = commonTypeDict_IntegerFormat_withUnit_ms29;
    v171[33] = @"MIMORXDuration";
    mEMORY[0x277D3F198]69 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms30 = [mEMORY[0x277D3F198]69 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[33] = commonTypeDict_IntegerFormat_withUnit_ms30;
    v171[34] = @"SISORXDuration";
    mEMORY[0x277D3F198]70 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms31 = [mEMORY[0x277D3F198]70 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[34] = commonTypeDict_IntegerFormat_withUnit_ms31;
    v171[35] = @"MIMOCSDuration";
    mEMORY[0x277D3F198]71 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms32 = [mEMORY[0x277D3F198]71 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[35] = commonTypeDict_IntegerFormat_withUnit_ms32;
    v171[36] = @"SISOCSDuration";
    mEMORY[0x277D3F198]72 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat_withUnit_ms33 = [mEMORY[0x277D3F198]72 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[36] = commonTypeDict_IntegerFormat_withUnit_ms33;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v171 count:37];
    v176[1] = v50;
    v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:2];

    mEMORY[0x277D3F198]77 = mEMORY[0x277D3F198]68;
    mEMORY[0x277D3F198]76 = mEMORY[0x277D3F198]67;

    commonTypeDict_IntegerFormat_withUnit_s27 = commonTypeDict_IntegerFormat_withUnit_s24;
    mEMORY[0x277D3F198]75 = mEMORY[0x277D3F198]66;

    commonTypeDict_IntegerFormat_withUnit_s26 = commonTypeDict_IntegerFormat_withUnit_s23;
    mEMORY[0x277D3F198]74 = mEMORY[0x277D3F198]65;

    commonTypeDict_IntegerFormat_withUnit_s25 = commonTypeDict_IntegerFormat_withUnit_s22;
    mEMORY[0x277D3F198]73 = mEMORY[0x277D3F198]64;

    v19 = v108;
    goto LABEL_6;
  }

  v169[0] = *MEMORY[0x277D3F4E8];
  v167 = *MEMORY[0x277D3F568];
  v168 = &unk_282C1CA68;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
  v170[0] = v19;
  v169[1] = *MEMORY[0x277D3F540];
  v165[0] = @"TimeDuration";
  mEMORY[0x277D3F198]73 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s25 = [mEMORY[0x277D3F198]73 commonTypeDict_IntegerFormat_withUnit_s];
  v166[0] = commonTypeDict_IntegerFormat_withUnit_s25;
  v165[1] = @"PMDuration";
  mEMORY[0x277D3F198]74 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s26 = [mEMORY[0x277D3F198]74 commonTypeDict_IntegerFormat_withUnit_s];
  v166[1] = commonTypeDict_IntegerFormat_withUnit_s26;
  v165[2] = @"MPCDuration";
  mEMORY[0x277D3F198]75 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s27 = [mEMORY[0x277D3F198]75 commonTypeDict_IntegerFormat_withUnit_s];
  v166[2] = commonTypeDict_IntegerFormat_withUnit_s27;
  v165[3] = @"TXDuration";
  mEMORY[0x277D3F198]76 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms = [mEMORY[0x277D3F198]76 commonTypeDict_IntegerFormat_withUnit_s];
  v166[3] = commonTypeDict_IntegerFormat_withUnit_ms;
  v165[4] = @"RXDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat_withUnit_s];
  v166[4] = commonTypeDict_IntegerFormat_withUnit_ms2;
  v165[5] = @"HSICSuspendDuration";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat_withUnit_s];
  v166[5] = commonTypeDict_IntegerFormat_withUnit_s4;
  v165[6] = @"HSICActiveDuration";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat_withUnit_s];
  v166[6] = commonTypeDict_IntegerFormat_withUnit_s5;
  v165[7] = @"PNOScanSSIDDuration";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat_withUnit_s];
  v166[7] = commonTypeDict_IntegerFormat_withUnit_s6;
  v165[8] = @"PNOBSSIDDuration";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat_withUnit_s];
  v166[8] = commonTypeDict_IntegerFormat_withUnit_s7;
  v165[9] = @"RoamScanDuration";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat_withUnit_s];
  v166[9] = commonTypeDict_IntegerFormat_withUnit_s8;
  v165[10] = @"AssociatedScanDuration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat_withUnit_s];
  v166[10] = commonTypeDict_IntegerFormat_withUnit_s9;
  v165[11] = @"OtherScanDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat_withUnit_s];
  v166[11] = commonTypeDict_IntegerFormat_withUnit_s10;
  v165[12] = @"UserScanDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat_withUnit_s];
  v166[12] = commonTypeDict_IntegerFormat_withUnit_s11;
  v165[13] = @"FRTSDuration";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms3 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[13] = commonTypeDict_IntegerFormat_withUnit_ms3;
  v165[14] = @"PCIESuspendDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat_withUnit_us];
  v166[14] = commonTypeDict_IntegerFormat_withUnit_us;
  v165[15] = @"PCIEActiveDuration";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us2 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat_withUnit_us];
  v166[15] = commonTypeDict_IntegerFormat_withUnit_us2;
  v165[16] = @"PCIEPERSTDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_us3 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat_withUnit_us];
  v166[16] = commonTypeDict_IntegerFormat_withUnit_us3;
  v165[17] = @"AutojoinScanDuration";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms4 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[17] = commonTypeDict_IntegerFormat_withUnit_ms4;
  v165[18] = @"LocationScanDuration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms5 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[18] = commonTypeDict_IntegerFormat_withUnit_ms5;
  v165[19] = @"PipelineScanDuration";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s12 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[19] = commonTypeDict_IntegerFormat_withUnit_s12;
  v165[20] = @"SetupScanDuration";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_s13 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[20] = commonTypeDict_IntegerFormat_withUnit_s13;
  v165[21] = @"UnknownScanDuration";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms6 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[21] = commonTypeDict_IntegerFormat_withUnit_ms6;
  v165[22] = @"AWDLTXDuration";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms7 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[22] = commonTypeDict_IntegerFormat_withUnit_ms7;
  v165[23] = @"AWDLRXDuration";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms8 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[23] = commonTypeDict_IntegerFormat_withUnit_ms8;
  v165[24] = @"AWDLAWDuration";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms9 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat_withUnit_s];
  v166[24] = commonTypeDict_IntegerFormat_withUnit_ms9;
  v165[25] = @"AWDLScanDuration";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms10 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat_withUnit_s];
  v166[25] = commonTypeDict_IntegerFormat_withUnit_ms10;
  v165[26] = @"CurrentChannel";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v166[26] = commonTypeDict_IntegerFormat;
  v165[27] = @"CurrentSSID";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]28 commonTypeDict_StringFormat];
  v166[27] = commonTypeDict_StringFormat;
  v165[28] = @"CurrentBandwidth";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v166[28] = commonTypeDict_IntegerFormat2;
  v165[29] = @"WifiPowered";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]30 commonTypeDict_BoolFormat];
  v166[29] = commonTypeDict_BoolFormat;
  v165[30] = @"WowEnabled";
  mEMORY[0x277D3F198]77 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]77 commonTypeDict_BoolFormat];
  v166[30] = commonTypeDict_BoolFormat2;
  mEMORY[0x277D3F198]32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v166 forKeys:v165 count:31];
  v170[1] = mEMORY[0x277D3F198]32;
  v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v169 count:2];
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];

  return v109;
}

- (void)setWifiManager:(__WiFiManagerClient *)manager
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self wifiManager]== manager)
  {
LABEL_15:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  wifiManager = [(PLWifiAgent *)self wifiManager];
  v6 = MEMORY[0x277CBF058];
  if (wifiManager)
  {
    [(PLWifiAgent *)self wifiManager];
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    [(PLWifiAgent *)self wifiManager];
    CFRunLoopGetMain();
    v7 = *v6;
    WiFiManagerClientUnscheduleFromRunLoop();
  }

  self->_wifiManager = manager;
  if (![(PLWifiAgent *)self wifiManager])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__PLWifiAgent_setWifiManager___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (qword_2811F6700 != -1)
      {
        dispatch_once(&qword_2811F6700, block);
      }

      if (_MergedGlobals_1_55 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi manager reference"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiManager:]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2318];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v20 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_15;
  }

  [(PLWifiAgent *)self wifiManager];
  CFRunLoopGetMain();
  v8 = *v6;
  WiFiManagerClientScheduleWithRunLoop();
  [(PLWifiAgent *)self wifiManager];
  WiFiManagerClientRegisterDeviceAttachmentCallback();
  v9 = *MEMORY[0x277D85DE8];

  [(PLWifiAgent *)self findWifiDevice];
}

uint64_t __30__PLWifiAgent_setWifiManager___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_55 = result;
  return result;
}

- (void)setWiFiHotspotDevice:(__WiFiDeviceClient *)device
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self wifiHotspotDevice]!= device)
  {
    if ([(PLWifiAgent *)self wifiHotspotDevice])
    {
      [(PLWifiAgent *)self wifiHotspotDevice];
      WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
    }

    self->_wifiHotspotDevice = device;
    if ([(PLWifiAgent *)self wifiHotspotDevice])
    {
      [(PLWifiAgent *)self wifiHotspotDevice];
      WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v5 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __36__PLWifiAgent_setWiFiHotspotDevice___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v5;
        if (qword_2811F6708 != -1)
        {
          dispatch_once(&qword_2811F6708, block);
        }

        if (byte_2811F66B1 == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: set wifi hotspot device reference"];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiHotspotDevice:]"];
          [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2339];

          v11 = PLLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v25 = v6;
LABEL_19:
            _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            goto LABEL_16;
          }

          goto LABEL_16;
        }
      }
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __36__PLWifiAgent_setWiFiHotspotDevice___block_invoke_857;
      v21 = &__block_descriptor_40_e5_v8__0lu32l8;
      v22 = v12;
      if (qword_2811F6710 != -1)
      {
        dispatch_once(&qword_2811F6710, &v18);
      }

      if (byte_2811F66B2 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi hotspot device reference", v18, v19, v20, v21, v22];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiHotspotDevice:]"];
        [v13 logMessage:v6 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:2341];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v6;
          goto LABEL_19;
        }

LABEL_16:
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PLWifiAgent_setWiFiHotspotDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B1 = result;
  return result;
}

uint64_t __36__PLWifiAgent_setWiFiHotspotDevice___block_invoke_857(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B2 = result;
  return result;
}

- (void)setWiFiAWDLDevice:(__WiFiDeviceClient *)device
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self wifiAwdlDevice]!= device)
  {
    if ([(PLWifiAgent *)self wifiAwdlDevice])
    {
      [(PLWifiAgent *)self wifiAwdlDevice];
      WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
    }

    self->_wifiAwdlDevice = device;
    if ([(PLWifiAgent *)self wifiAwdlDevice])
    {
      [(PLWifiAgent *)self wifiAwdlDevice];
      WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v5 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __33__PLWifiAgent_setWiFiAWDLDevice___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v5;
        if (qword_2811F6718 != -1)
        {
          dispatch_once(&qword_2811F6718, block);
        }

        if (byte_2811F66B3 == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: set wifi awdl device reference"];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiAWDLDevice:]"];
          [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2361];

          v11 = PLLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v25 = v6;
LABEL_19:
            _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            goto LABEL_16;
          }

          goto LABEL_16;
        }
      }
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __33__PLWifiAgent_setWiFiAWDLDevice___block_invoke_866;
      v21 = &__block_descriptor_40_e5_v8__0lu32l8;
      v22 = v12;
      if (qword_2811F6720 != -1)
      {
        dispatch_once(&qword_2811F6720, &v18);
      }

      if (byte_2811F66B4 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi awdl device reference", v18, v19, v20, v21, v22];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiAWDLDevice:]"];
        [v13 logMessage:v6 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:2363];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v6;
          goto LABEL_19;
        }

LABEL_16:
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __33__PLWifiAgent_setWiFiAWDLDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B3 = result;
  return result;
}

uint64_t __33__PLWifiAgent_setWiFiAWDLDevice___block_invoke_866(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B4 = result;
  return result;
}

- (void)setWifiDevice:(__WiFiDeviceClient *)device
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self wifiDevice]== device)
  {
LABEL_25:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([(PLWifiAgent *)self wifiDevice])
  {
    [(PLWifiAgent *)self wifiDevice];
    WiFiDeviceClientRegisterPowerCallback();
    [(PLWifiAgent *)self wifiDevice];
    WiFiDeviceClientRegisterExtendedLinkCallback();
    [(PLWifiAgent *)self wifiDevice];
    WiFiDeviceClientRegisterDeviceAvailableCallback();
    [(PLWifiAgent *)self wifiDevice];
    WiFiDeviceClientRegisterScanUpdateCallback();
    if ([(PLWifiAgent *)self wifiManager])
    {
      [(PLWifiAgent *)self wifiManager];
      WiFiManagerClientRegisterUserAutoJoinStateChangedCallback();
    }

    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLWifiAgent *)self wifiDevice];
      WiFiDeviceClientRegisterLQMCallback();
    }
  }

  self->_wifiDevice = device;
  if (![(PLWifiAgent *)self wifiDevice])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__PLWifiAgent_setWifiDevice___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (qword_2811F6728 != -1)
      {
        dispatch_once(&qword_2811F6728, block);
      }

      if (byte_2811F66B5 == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi device reference"];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiDevice:]"];
        [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:2420];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v16 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_25;
  }

  [(PLWifiAgent *)self wifiDevice];
  WiFiDeviceClientRegisterPowerCallback();
  [(PLWifiAgent *)self wifiDevice];
  WiFiDeviceClientRegisterExtendedLinkCallback();
  [(PLWifiAgent *)self wifiDevice];
  WiFiDeviceClientRegisterDeviceAvailableCallback();
  if (([MEMORY[0x277D3F180] taskMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
  {
    [(PLWifiAgent *)self wifiDevice];
    WiFiDeviceClientRegisterScanUpdateCallback();
  }

  if ([(PLWifiAgent *)self wifiManager])
  {
    [(PLWifiAgent *)self wifiManager];
    WiFiManagerClientRegisterUserAutoJoinStateChangedCallback();
  }

  if ([MEMORY[0x277D3F180] fullMode])
  {
    [(PLWifiAgent *)self wifiDevice];
    WiFiDeviceClientRegisterLQMCallback();
  }

  v5 = *MEMORY[0x277D85DE8];

  [(PLWifiAgent *)self logEventForwardModuleInfo];
}

uint64_t __29__PLWifiAgent_setWifiDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B5 = result;
  return result;
}

- (void)findWifiDevice
{
  v61 = *MEMORY[0x277D85DE8];
  if (![(PLWifiAgent *)self wifiManager])
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_58;
    }

    v46 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_902;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v46;
    if (qword_2811F6758 != -1)
    {
      dispatch_once(&qword_2811F6758, v53);
    }

    if (byte_2811F66BB != 1)
    {
LABEL_58:
      v13 = 0;
      goto LABEL_59;
    }

    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No wifi manager set--this method should not be getting called"];
    v47 = MEMORY[0x277D3F178];
    v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
    lastPathComponent = [v48 lastPathComponent];
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
    [v47 logMessage:v40 fromFile:lastPathComponent fromFunction:v50 fromLineNumber:2480];

    v45 = PLLogCommon();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v60 = v40;
      _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_57;
  }

  [(PLWifiAgent *)self wifiManager];
  v3 = WiFiManagerClientCopyDevices();
  v4 = v3;
  v5 = 0x277D3F000uLL;
  if (v3 && [v3 count])
  {
    -[PLWifiAgent setWifiDevice:](self, "setWifiDevice:", [v4 objectAtIndex:0]);
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __29__PLWifiAgent_findWifiDevice__block_invoke;
    v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v58[4] = v6;
    if (qword_2811F6730 != -1)
    {
      dispatch_once(&qword_2811F6730, v58);
    }

    if (byte_2811F66B6 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No wifi devices found"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
      [v8 logMessage:v7 fromFile:lastPathComponent2 fromFunction:v11 fromLineNumber:2437];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLWifiAgent *)self wifiManager];
  v13 = WiFiManagerClientCopyInterfaces();

  if (v13 && [v13 count])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_878;
      v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v57[4] = v14;
      if (qword_2811F6738 != -1)
      {
        dispatch_once(&qword_2811F6738, v57);
      }

      if (byte_2811F66B7 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: wifi devices found count: %lu", objc_msgSend(v13, "count")];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent3 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
        [v16 logMessage:v15 fromFile:lastPathComponent3 fromFunction:v19 fromLineNumber:2445];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v60 = v15;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if ([v13 count])
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v52 = v13;
      do
      {
        v24 = [v13 objectAtIndex:v21];
        if (WiFiDeviceClientIsInterfaceAWDL())
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v25 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_884;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v25;
            if (qword_2811F6740 != -1)
            {
              dispatch_once(&qword_2811F6740, block);
            }

            if (byte_2811F66B8 == 1)
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: wifi devices found: %@", WiFiDeviceClientGetInterfaceName()];
              v27 = MEMORY[0x277D3F178];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent4 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
              [v27 logMessage:v26 fromFile:lastPathComponent4 fromFunction:v30 fromLineNumber:2453];

              v31 = PLLogCommon();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v60 = v26;
                _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = 0x277D3F000uLL;
              v13 = v52;
            }
          }

          [(PLWifiAgent *)self setWiFiAWDLDevice:v24];
          v22 = 1;
        }

        if (WiFiDeviceClientIsInterfaceHostAp())
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v32 = objc_opt_class();
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_890;
            v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v55[4] = v32;
            if (qword_2811F6748 != -1)
            {
              dispatch_once(&qword_2811F6748, v55);
            }

            if (byte_2811F66B9 == 1)
            {
              v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: wifi hs devices found: %@", WiFiDeviceClientGetInterfaceName()];
              v34 = MEMORY[0x277D3F178];
              v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent5 = [v35 lastPathComponent];
              v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
              [v34 logMessage:v33 fromFile:lastPathComponent5 fromFunction:v37 fromLineNumber:2461];

              v38 = PLLogCommon();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v60 = v33;
                _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = 0x277D3F000;
              v13 = v52;
            }
          }

          [(PLWifiAgent *)self setWiFiHotspotDevice:v24];
          v23 = 1;
        }

        if (v22 & v23)
        {
          break;
        }

        ++v21;
      }

      while ([v13 count] > v21);
    }

    goto LABEL_59;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v39 = objc_opt_class();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __29__PLWifiAgent_findWifiDevice__block_invoke_896;
    v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v54[4] = v39;
    if (qword_2811F6750 != -1)
    {
      dispatch_once(&qword_2811F6750, v54);
    }

    if (byte_2811F66BA == 1)
    {
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No wifi interfaces found"];
      v41 = MEMORY[0x277D3F178];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent6 = [v42 lastPathComponent];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
      [v41 logMessage:v40 fromFile:lastPathComponent6 fromFunction:v44 fromLineNumber:2476];

      v45 = PLLogCommon();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = v40;
        _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_57:
    }
  }

LABEL_59:

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B6 = result;
  return result;
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke_878(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B7 = result;
  return result;
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke_884(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B8 = result;
  return result;
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke_890(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66B9 = result;
  return result;
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke_896(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BA = result;
  return result;
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke_902(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BB = result;
  return result;
}

- (PLWifiAgent)init
{
  v12.receiver = self;
  v12.super_class = PLWifiAgent;
  v2 = [(PLAgent *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastLoggedTimestamp = 0;
    v2->_autoJoinScanDuration = 0;
    v2->_locationScanDuration = 0;
    v2->_pipelineScanDuration = 0;
    v2->_setupScanDuration = 0;
    v2->_unknownScanDuration = 0;
    wifiChipset = v2->_wifiChipset;
    v2->_wifiChipset = 0;

    wifiManufacturer = v3->_wifiManufacturer;
    v3->_wifiManufacturer = 0;

    v3->_remainingAllowedRSSIEntryCount = 0;
    v6 = objc_alloc(MEMORY[0x277D3F1A8]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __19__PLWifiAgent_init__block_invoke;
    v10[3] = &unk_2782597E8;
    v7 = v3;
    v11 = v7;
    v8 = [v6 initWithOperator:v7 forEntryKey:@"ApplicationMetrics_RemoteControlSession_1_2" withBlock:v10];
    [(PLWifiAgent *)v7 setRemoteSessionCallback:v8];
  }

  return v3;
}

uint64_t __19__PLWifiAgent_init__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleRemoteSessionCallbackWithUserInfo:a2];
  }

  return result;
}

- (void)initOperatorDependancies
{
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBECE8];
  [(PLWifiAgent *)self setWifiManager:WiFiManagerClientCreate()];
  v4 = objc_alloc(MEMORY[0x277D3F160]);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke;
  v36[3] = &unk_2782597E8;
  v36[4] = self;
  v5 = [v4 initWithOperator:self forNotification:@"com.apple.airport.userNotification" requireState:1 withBlock:v36];
  notificationWiFiChanged = self->_notificationWiFiChanged;
  self->_notificationWiFiChanged = v5;

  if ([(PLOperator *)self isDebugEnabled])
  {
    v7 = objc_alloc(MEMORY[0x277D3F1A8]);
    v39[0] = &unk_282C12D98;
    v39[1] = &unk_282C12DB0;
    v40[0] = &unk_282C1CA28;
    v40[1] = &unk_282C12DC8;
    v41 = @"Level";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v42[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_934;
    v35[3] = &unk_2782597E8;
    v35[4] = self;
    v10 = [v7 initWithOperator:self forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v9 withBlock:v35];
    batteryLevelChanged = self->_batteryLevelChanged;
    self->_batteryLevelChanged = v10;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_2_935;
  v34[3] = &unk_2782597E8;
  v34[4] = self;
  v12 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v34];
  sbcLevelChanged = self->_sbcLevelChanged;
  self->_sbcLevelChanged = v12;

  v14 = objc_alloc(MEMORY[0x277D3F1A8]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_942;
  v33[3] = &unk_2782597E8;
  v33[4] = self;
  v15 = [v14 initWithOperator:self forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" withBlock:v33];
  [(PLWifiAgent *)self setDeviceWake:v15];
  block[5] = MEMORY[0x277D85DD0];
  block[6] = 3221225472;
  block[7] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_950;
  block[8] = &unk_27825D6C0;
  block[9] = self;
  block[10] = 0;
  if (!tcp_connection_fallback_watcher_create() && [MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_951;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v16;
    if (qword_2811F6778 != -1)
    {
      dispatch_once(&qword_2811F6778, block);
    }

    if (byte_2811F66BF == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create cell fallback observer"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]"];
      [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:2634];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v23 = [objc_alloc(MEMORY[0x277D3F1F0]) initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:&__block_literal_global_961];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v23;

  v25 = objc_alloc(MEMORY[0x277D3F270]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_972;
  v31[3] = &unk_27825A1D8;
  v31[4] = self;
  v26 = [v25 initWithOperator:self withRegistration:&unk_282C19390 withBlock:v31];
  remoteControlSessionListener = self->_remoteControlSessionListener;
  self->_remoteControlSessionListener = v26;

  if ([(PLWifiAgent *)self hasWiFi])
  {
    v28 = objc_alloc_init(MEMORY[0x277D7BB28]);
    monitor = self->_monitor;
    self->_monitor = v28;
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLWifiAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BC = result;
  return result;
}

uint64_t __39__PLWifiAgent_initOperatorDependancies__block_invoke_934(uint64_t a1)
{
  [*(a1 + 32) log];
  result = [MEMORY[0x277D3F208] isHomePod];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 writeModeledPower];
  }

  return result;
}

uint64_t __39__PLWifiAgent_initOperatorDependancies__block_invoke_2_935(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setRemainingAllowedRSSIEntryCount:3];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6768 != -1)
    {
      dispatch_once(&qword_2811F6768, block);
    }

    if (byte_2811F66BD == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logging on mac"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]_block_invoke_2"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:2583];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) log];
  result = [MEMORY[0x277D3F208] isHomePod];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) writeModeledPower];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __39__PLWifiAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BD = result;
  return result;
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_942(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [a2 objectForKey:@"entry"];
    v4 = v3;
    if (v3)
    {
      [v3 objectForKeyedSubscript:@"Reason"];
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_2_946;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (qword_2811F6770 != -1)
      {
        dispatch_once(&qword_2811F6770, block);
      }

      if (byte_2811F66BE == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: No entry object associated with SleepWake entry"];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]_block_invoke"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2597];

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

uint64_t __39__PLWifiAgent_initOperatorDependancies__block_invoke_2_946(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BE = result;
  return result;
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_950(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = tcp_fallback_watcher_fallback_inuse();
    v3 = *(a1 + 32);

    [v3 logEventForwardWifiAssist:v2];
  }

  else
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "cellFallbackObserver could not be created", v5, 2u);
    }
  }
}

uint64_t __39__PLWifiAgent_initOperatorDependancies__block_invoke_951(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66BF = result;
  return result;
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_959(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_972(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogWifi();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "RemoteControlSession payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointRemoteControlSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)getCurrentChannelWidth:(__WiFiNetwork *)width
{
  v19 = *MEMORY[0x277D85DE8];
  Property = WiFiNetworkGetProperty();
  if (Property)
  {
    valuePtr = 0;
    CFNumberGetValue(Property, kCFNumberSInt32Type, &valuePtr);
    if ((valuePtr & 2) != 0)
    {
      result = 20;
    }

    else
    {
      v4 = 80;
      v5 = 10;
      v6 = 160;
      if ((valuePtr & 0x800) == 0)
      {
        v6 = 0;
      }

      if ((valuePtr & 1) == 0)
      {
        v5 = v6;
      }

      if ((valuePtr & 0x400) == 0)
      {
        v4 = v5;
      }

      if ((valuePtr & 4) != 0)
      {
        result = 40;
      }

      else
      {
        result = v4;
      }
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__PLWifiAgent_getCurrentChannelWidth___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (qword_2811F6780 != -1)
      {
        dispatch_once(&qword_2811F6780, block);
      }

      if (byte_2811F66C0 == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"channel width flag is null"];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent getCurrentChannelWidth:]"];
        [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2731];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          valuePtr = 138412290;
          v18 = v9;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", &valuePtr, 0xCu);
        }
      }
    }

    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __38__PLWifiAgent_getCurrentChannelWidth___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C0 = result;
  return result;
}

uint64_t __78__PLWifiAgent_logFromWiFiNoAvailableCallback_withAvailability_withWakeParams___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C1 = result;
  return result;
}

void __78__PLWifiAgent_logFromWiFiNoAvailableCallback_withAvailability_withWakeParams___block_invoke_999(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) logEventBackwardWifiProperties:1];
    if (*(a1 + 40))
    {
      [*(a1 + 32) logEventPointWake:?];
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)logFromLinkChangeCallback:(id)callback withStats:(id)stats
{
  callbackCopy = callback;
  statsCopy = stats;
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke;
  block[3] = &unk_27825D6E8;
  block[4] = self;
  v12 = callbackCopy;
  v13 = statsCopy;
  v9 = statsCopy;
  v10 = callbackCopy;
  dispatch_async(workQueue, block);
}

void __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F6790 != -1)
    {
      dispatch_once(&qword_2811F6790, block);
    }

    if (byte_2811F66C2 == 1)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [*(a1 + 32) className];
      v7 = [v5 stringWithFormat:@"%@ got CFCallback %@", v6, *(a1 + 40)];

      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromLinkChangeCallback:withStats:]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2786];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_1005;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v14;
    if (qword_2811F6798 != -1)
    {
      dispatch_once(&qword_2811F6798, v22);
    }

    if (byte_2811F66C3 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"link change dic: %@", *(a1 + 48)];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromLinkChangeCallback:withStats:]_block_invoke_2"];
      [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:2787];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) log];
  objc_autoreleasePoolPop(v2);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C2 = result;
  return result;
}

uint64_t __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_1005(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C3 = result;
  return result;
}

- (void)logFromAJCallback:(id)callback withFlag:(unsigned __int8)flag withStats:(id)stats
{
  callbackCopy = callback;
  statsCopy = stats;
  workQueue = [(PLOperator *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke;
  v13[3] = &unk_278261A00;
  v13[4] = self;
  v14 = callbackCopy;
  flagCopy = flag;
  v15 = statsCopy;
  v11 = statsCopy;
  v12 = callbackCopy;
  dispatch_async(workQueue, v13);
}

void __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F67A0 != -1)
    {
      dispatch_once(&qword_2811F67A0, block);
    }

    if (byte_2811F66C4 == 1)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [*(a1 + 32) className];
      v7 = [v5 stringWithFormat:@"%@ got AJCallback %@", v6, *(a1 + 40)];

      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logFromAJCallback:withFlag:withStats:]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2815];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointJoin:*(a1 + 56) withStats:*(a1 + 48)];
  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C4 = result;
  return result;
}

- (void)logEventPointWake:(id)wake
{
  v98 = *MEMORY[0x277D85DE8];
  wakeCopy = wake;
  if ([(PLWifiAgent *)self hasWiFi])
  {
    if (wakeCopy)
    {
      v5 = wakeCopy;
      goto LABEL_12;
    }

    [(PLWifiAgent *)self wifiDevice];
    v5 = WiFiDeviceClientCopyProperty();
    if (v5)
    {
LABEL_12:
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v12 = objc_opt_class();
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1027;
        v93[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v93[4] = v12;
        if (qword_2811F67B8 != -1)
        {
          dispatch_once(&qword_2811F67B8, v93);
        }

        if (byte_2811F66C7 == 1)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"wake params = %@", v5];
          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:2861];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v97 = v13;
            _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v19 = [v5 objectForCFString:@"IO80211InterfaceWoWWakeUpCommand"];
      v11 = [v5 objectForCFString:@"IO80211InterfaceWoWWakeUpData"];
      v20 = [v5 objectForKey:@"IO80211InterfaceWoWWakeUpTCPKAWakeReason"];
      v21 = [v5 objectForCFString:@"IO80211InterfaceWoWWakeUpTimeStamp"];
      [v21 doubleValue];
      v23 = v22;

      v24 = MEMORY[0x277CCABB0];
      v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v23];
      convertFromSystemToMonotonic = [v25 convertFromSystemToMonotonic];
      [convertFromSystemToMonotonic timeIntervalSince1970];
      v27 = [v24 numberWithDouble:?];

      v28 = v19;
      v29 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Wake"];
      v30 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v29];
      [v30 setObject:v28 forKeyedSubscript:@"WakeReason"];
      v87 = v27;
      [v30 setObject:v27 forKeyedSubscript:@"WakeTime"];
      v88 = v20;
      [v30 setObject:v20 forKeyedSubscript:@"TCPKAWakeReason"];
      if (v11)
      {
        v31 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSObject length](v11, "length")}];
        [v30 setObject:v31 forKeyedSubscript:@"WakeLen"];
      }

      if (([v28 isEqualToString:@"DataFrame"] & 1) == 0 && !objc_msgSend(v28, "isEqualToString:", @"E_RX_IP_PACKET"))
      {
        if ([v28 isEqualToString:@"E_PFN_NET_FOUND"])
        {
          [(PLWifiAgent *)self logEventPointWakePNO:v11 withParams:v5 toEntry:v30];
        }

        else if ([v28 isEqualToString:@"E_LINK"])
        {
          [(PLWifiAgent *)self logEventPointWakeLink:v11 withParams:v5 toEntry:v30];
        }

        else if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v73 = objc_opt_class();
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1094;
          v90[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v90[4] = v73;
          if (qword_2811F67D0 != -1)
          {
            dispatch_once(&qword_2811F67D0, v90);
          }

          if (byte_2811F66CA == 1)
          {
            v74 = v29;
            v86 = v28;
            v82 = v11;
            v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: unrecognized wake reason: %@", v28];
            v76 = MEMORY[0x277D3F178];
            v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent2 = [v77 lastPathComponent];
            v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
            [v76 logMessage:v75 fromFile:lastPathComponent2 fromFunction:v79 fromLineNumber:2910];

            v80 = PLLogCommon();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v97 = v75;
              _os_log_debug_impl(&dword_21A4C6000, v80, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v11 = v82;
            v28 = v86;
            v29 = v74;
          }
        }

        goto LABEL_51;
      }

      v85 = v28;
      [(PLWifiAgent *)self logEventPointWakeDataFrame:v11 withParams:v5 toEntry:v30];
      v32 = [v30 objectForKeyedSubscript:@"tcp_dest_port"];
      v83 = v29;
      v84 = wakeCopy;
      if (v32 && (v33 = v32, [v30 objectForKeyedSubscript:@"tcp_source_port"], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, v34))
      {
        v35 = MEMORY[0x277CCABB0];
        v36 = [v30 objectForKeyedSubscript:@"tcp_dest_port"];
        v89 = [v35 numberWithInteger:{objc_msgSend(v36, "integerValue")}];

        v37 = MEMORY[0x277CCABB0];
        v38 = @"tcp_source_port";
      }

      else
      {
        v39 = [v30 objectForKeyedSubscript:@"udp_dest_port"];
        if (!v39 || (v40 = v39, [v30 objectForKeyedSubscript:@"udp_source_port"], v41 = objc_claimAutoreleasedReturnValue(), v41, v40, !v41))
        {
          if (![MEMORY[0x277D3F180] debugEnabled])
          {
            goto LABEL_40;
          }

          v47 = objc_opt_class();
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1066;
          v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v92[4] = v47;
          if (qword_2811F67C0 != -1)
          {
            dispatch_once(&qword_2811F67C0, v92);
          }

          if (byte_2811F66C8 != 1)
          {
LABEL_40:
            v46 = v11;
            v45 = 0;
            v89 = 0;
            goto LABEL_41;
          }

          v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: unsupported network protocol"];
          v48 = MEMORY[0x277D3F178];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent3 = [v49 lastPathComponent];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v48 logMessage:v44 fromFile:lastPathComponent3 fromFunction:v51 fromLineNumber:2889];

          v52 = PLLogCommon();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v97 = v44;
            _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v45 = 0;
          v89 = 0;
LABEL_30:
          v46 = v11;

LABEL_41:
          v53 = +[PLProcessPortMap sharedInstance];
          v54 = [v30 objectForKeyedSubscript:@"ip_destination"];
          v55 = [v30 objectForKeyedSubscript:@"ip_source"];
          v56 = [v30 objectForKeyedSubscript:@"ip_protocol"];
          v57 = [v53 pidAndProcessNameForDestAddress:v54 withDestPort:v89 withSourceAddress:v55 withSourcePort:v45 withProtocol:v56];

          v11 = v46;
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v58 = objc_opt_class();
            v91[0] = MEMORY[0x277D85DD0];
            v91[1] = 3221225472;
            v91[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1082;
            v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v91[4] = v58;
            if (qword_2811F67C8 != -1)
            {
              dispatch_once(&qword_2811F67C8, v91);
            }

            if (byte_2811F66C9 == 1)
            {
              v81 = v46;
              v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"pidAndProcessName=%@", v57];
              v60 = MEMORY[0x277D3F178];
              v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent4 = [v61 lastPathComponent];
              v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
              [v60 logMessage:v59 fromFile:lastPathComponent4 fromFunction:v63 fromLineNumber:2898];

              v64 = PLLogCommon();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v97 = v59;
                _os_log_debug_impl(&dword_21A4C6000, v64, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v11 = v81;
            }
          }

          if (v57)
          {
            v65 = [v57 pid];
            [v30 setObject:v65 forKeyedSubscript:@"PID"];

            processName = [v57 processName];
            [v30 setObject:processName forKeyedSubscript:@"ProcessName"];
          }

          wakeCopy = v84;
          v28 = v85;
          v29 = v83;
LABEL_51:
          [(PLOperator *)self logEntry:v30];

          goto LABEL_52;
        }

        v42 = MEMORY[0x277CCABB0];
        v43 = [v30 objectForKeyedSubscript:@"udp_dest_port"];
        v89 = [v42 numberWithInteger:{objc_msgSend(v43, "integerValue")}];

        v37 = MEMORY[0x277CCABB0];
        v38 = @"udp_source_port";
      }

      v44 = [v30 objectForKeyedSubscript:v38];
      v45 = [v37 numberWithInteger:{objc_msgSend(v44, "integerValue")}];
      goto LABEL_30;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v68 = objc_opt_class();
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1021;
      v94[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v94[4] = v68;
      if (qword_2811F67B0 != -1)
      {
        dispatch_once(&qword_2811F67B0, v94);
      }

      if (byte_2811F66C6 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: woke up for wlan but WoW wakeup parameters dictionary returned nil"];
        v69 = MEMORY[0x277D3F178];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent5 = [v70 lastPathComponent];
        v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
        [v69 logMessage:v5 fromFile:lastPathComponent5 fromFunction:v72 fromLineNumber:2859];

        v11 = PLLogCommon();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_52;
        }

        *buf = 138412290;
        v97 = v5;
        goto LABEL_10;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__PLWifiAgent_logEventPointWake___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F67A8 != -1)
    {
      dispatch_once(&qword_2811F67A8, block);
    }

    if (byte_2811F66C5 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log power properties about"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent6 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
      [v7 logMessage:v5 fromFile:lastPathComponent6 fromFunction:v10 fromLineNumber:2845];

      v11 = PLLogCommon();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
LABEL_52:

        goto LABEL_53;
      }

      *buf = 138412290;
      v97 = v5;
LABEL_10:
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_52;
    }
  }

LABEL_53:

  v67 = *MEMORY[0x277D85DE8];
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C5 = result;
  return result;
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke_1021(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C6 = result;
  return result;
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke_1027(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C7 = result;
  return result;
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke_1066(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C8 = result;
  return result;
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke_1082(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66C9 = result;
  return result;
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke_1094(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CA = result;
  return result;
}

- (void)logEventPointWakeDataFrame:(id)frame withParams:(id)params toEntry:(id)entry
{
  v97 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  entryCopy = entry;
  if ([frameCopy length] > 0xE)
  {
    [frameCopy getBytes:buf length:14];
    v15 = [frameCopy subdataWithRange:{14, objc_msgSend(frameCopy, "length") - 14}];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buf[0], buf[1], buf[2], buf[3], v95, BYTE1(v95)];;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", BYTE2(v95), BYTE3(v95), BYTE4(v95), BYTE5(v95), BYTE6(v95), HIBYTE(v95)];;
    v18 = [MEMORY[0x277D3F1F8] decodeEtherType:bswap32(v96) >> 16];
    [entryCopy setObject:v17 forKeyedSubscript:@"RemoteMAC"];
    [entryCopy setObject:v16 forKeyedSubscript:@"LocalMAC"];
    [entryCopy setObject:v18 forKeyedSubscript:@"EtherType"];
    if (([v18 isEqualToString:@"IPv4"] & 1) != 0 || objc_msgSend(v18, "isEqualToString:", @"IPv6"))
    {
      v19 = [MEMORY[0x277D3F1F8] decodeIPPacket:v15 encryptedPath:0];
      debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
      if (v19)
      {
        v84 = v15;
        v85 = v16;
        if (debugEnabled)
        {
          v21 = objc_opt_class();
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1128;
          v89[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v89[4] = v21;
          if (qword_2811F67E8 != -1)
          {
            dispatch_once(&qword_2811F67E8, v89);
          }

          if (byte_2811F66CD == 1)
          {
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dictionary for IP: %@", v19];
            v23 = MEMORY[0x277D3F178];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent = [v24 lastPathComponent];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
            [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:2948];

            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *v92 = 138412290;
              v93 = v22;
              _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", v92, 0xCu);
            }
          }
        }

        v28 = [v19 objectForKeyedSubscript:@"destination"];
        [entryCopy setObject:v28 forKeyedSubscript:@"ip_destination"];

        v29 = [v19 objectForKeyedSubscript:@"source"];
        [entryCopy setObject:v29 forKeyedSubscript:@"ip_source"];

        v30 = [v19 objectForKeyedSubscript:@"protocol"];
        [entryCopy setObject:v30 forKeyedSubscript:@"ip_protocol"];

        v31 = MEMORY[0x277CCACA8];
        v32 = [v19 objectForKeyedSubscript:@"version"];
        v33 = [v31 stringWithFormat:@"%@", v32];
        [entryCopy setObject:v33 forKeyedSubscript:@"ip_version"];

        v34 = MEMORY[0x277CCABB0];
        v35 = [v19 objectForKeyedSubscript:@"seqNo"];
        v36 = [v34 numberWithUnsignedInt:{objc_msgSend(v35, "unsignedIntValue")}];
        [entryCopy setObject:v36 forKeyedSubscript:@"seqNo"];

        v37 = MEMORY[0x277CCABB0];
        v38 = [v19 objectForKeyedSubscript:@"spi"];
        v39 = [v37 numberWithUnsignedInt:{objc_msgSend(v38, "unsignedIntValue")}];
        [entryCopy setObject:v39 forKeyedSubscript:@"spi"];

        v40 = [v19 objectForKey:@"protocol"];
        LODWORD(v32) = [v40 isEqualToString:@"TCP"];

        if (v32)
        {
          v41 = MEMORY[0x277CCACA8];
          v42 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v43 = [v42 objectForKeyedSubscript:@"ack"];
          v44 = [v41 stringWithFormat:@"%@", v43];
          [entryCopy setObject:v44 forKeyedSubscript:@"tcp_ack"];

          v45 = MEMORY[0x277CCACA8];
          v46 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v47 = [v46 objectForKeyedSubscript:@"seq"];
          v48 = [v45 stringWithFormat:@"%@", v47];
          [entryCopy setObject:v48 forKeyedSubscript:@"tcp_seq"];

          v49 = MEMORY[0x277CCACA8];
          v50 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v51 = [v50 objectForKeyedSubscript:@"window"];
          v52 = [v49 stringWithFormat:@"%@", v51];
          [entryCopy setObject:v52 forKeyedSubscript:@"tcp_window"];

          v53 = MEMORY[0x277CCACA8];
          v54 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v55 = [v54 objectForKeyedSubscript:@"control"];
          v56 = [v53 stringWithFormat:@"%@", v55];
          [entryCopy setObject:v56 forKeyedSubscript:@"tcp_control"];

          v57 = MEMORY[0x277CCACA8];
          v58 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v59 = [v58 objectForKeyedSubscript:@"dest_port"];
          v60 = [v57 stringWithFormat:@"%@", v59];
          [entryCopy setObject:v60 forKeyedSubscript:@"tcp_dest_port"];

          v61 = MEMORY[0x277CCACA8];
          v62 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v63 = [v62 objectForKeyedSubscript:@"source_port"];
          v64 = [v61 stringWithFormat:@"%@", v63];
          v65 = @"tcp_source_port";
        }

        else
        {
          v76 = [v19 objectForKey:@"protocol"];
          v77 = [v76 isEqualToString:@"UDP"];

          if (!v77)
          {
            v15 = v84;
            v16 = v85;
            goto LABEL_42;
          }

          v78 = MEMORY[0x277CCACA8];
          v79 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v80 = [v79 objectForKeyedSubscript:@"dest_port"];
          v81 = [v78 stringWithFormat:@"%@", v80];
          [entryCopy setObject:v81 forKeyedSubscript:@"udp_dest_port"];

          v82 = MEMORY[0x277CCACA8];
          v62 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v63 = [v62 objectForKeyedSubscript:@"source_port"];
          v64 = [v82 stringWithFormat:@"%@", v63];
          v65 = @"udp_source_port";
        }

        [entryCopy setObject:v64 forKeyedSubscript:v65];

        v16 = v85;
      }

      else
      {
        if (!debugEnabled)
        {
          goto LABEL_40;
        }

        v66 = objc_opt_class();
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1122;
        v90[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v90[4] = v66;
        if (qword_2811F67E0 != -1)
        {
          dispatch_once(&qword_2811F67E0, v90);
        }

        if (byte_2811F66CC != 1)
        {
LABEL_40:
          v19 = 0;
          goto LABEL_42;
        }

        v84 = v15;
        v86 = v16;
        v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to decode IP packet"];
        v67 = MEMORY[0x277D3F178];
        v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v68 lastPathComponent];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
        [v67 logMessage:v62 fromFile:lastPathComponent2 fromFunction:v70 fromLineNumber:2946];

        v63 = PLLogCommon();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          *v92 = 138412290;
          v93 = v62;
          _os_log_debug_impl(&dword_21A4C6000, v63, OS_LOG_TYPE_DEBUG, "%@", v92, 0xCu);
        }

        v16 = v86;
      }

      v15 = v84;
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_43;
      }

      v71 = objc_opt_class();
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1191;
      v88[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v88[4] = v71;
      if (qword_2811F67F0 != -1)
      {
        dispatch_once(&qword_2811F67F0, v88);
      }

      if (byte_2811F66CE != 1)
      {
        goto LABEL_43;
      }

      v87 = v16;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrelated etherType: %@", v18];
      v72 = MEMORY[0x277D3F178];
      v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent3 = [v73 lastPathComponent];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
      [v72 logMessage:v19 fromFile:lastPathComponent3 fromFunction:v75 fromLineNumber:2973];

      v62 = PLLogCommon();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *v92 = 138412290;
        v93 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", v92, 0xCu);
      }

      v16 = v87;
    }

LABEL_42:
LABEL_43:

    goto LABEL_44;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F67D8 != -1)
    {
      dispatch_once(&qword_2811F67D8, block);
    }

    if (byte_2811F66CB == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: payload too short: length of %lu", objc_msgSend(frameCopy, "length")];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent4 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent4 fromFunction:v13 fromLineNumber:2920];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v95 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_44:

  v83 = *MEMORY[0x277D85DE8];
}

uint64_t __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CB = result;
  return result;
}

uint64_t __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1122(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CC = result;
  return result;
}

uint64_t __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1128(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CD = result;
  return result;
}

uint64_t __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1191(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CE = result;
  return result;
}

- (void)logEventPointWakePNO:(id)o withParams:(id)params toEntry:(id)entry
{
  v56 = *MEMORY[0x277D85DE8];
  oCopy = o;
  entryCopy = entry;
  v9 = [params objectForCFString:@"IO80211InterfaceWoWWakeUpCommand"];
  memset(v53, 0, sizeof(v53));
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  memset(v52, 0, 44);
  v44 = v9;
  if ([oCopy length] <= 0x67)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (qword_2811F67F8 != -1)
      {
        dispatch_once(&qword_2811F67F8, block);
      }

      if (byte_2811F66CF == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WoW wake payload too small to decode E_PFN_NET_FOUND"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2986];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v54 = 138412290;
          v55 = v11;
LABEL_40:
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", v54, 0xCu);
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_31;
  }

  [oCopy getBytes:v53 length:48];
  [oCopy getBytes:v48 range:{48, 56}];
  if (v53[1] != 553648128)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v33 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1200;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v33;
      if (qword_2811F6800 != -1)
      {
        dispatch_once(&qword_2811F6800, v46);
      }

      if (byte_2811F66D0 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFi Logger wl_event_msg_t.event_type (0x%x) and wow_wakeup_command (%@ 0x%x) don't match", bswap32(v53[1]), v9, 16];
        v34 = MEMORY[0x277D3F178];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent2 = [v35 lastPathComponent];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
        [v34 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v37 fromLineNumber:2994];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *v54 = 138412290;
          v55 = v11;
          goto LABEL_40;
        }

LABEL_28:
        v21 = 0;
        goto LABEL_29;
      }
    }

LABEL_31:
    v25 = 0;
    goto LABEL_32;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v48[2]];
  [entryCopy setObject:v17 forKeyedSubscript:@"network_count"];

  v18 = v48[2];
  if (v48[2] >= 5)
  {
    v19 = 5;
  }

  else
  {
    v19 = v48[2];
  }

  v48[2] = v19;
  if (!v18)
  {
    goto LABEL_31;
  }

  v20 = 0;
  v21 = 0;
  v22 = 60;
  while ([oCopy length] >= (v22 + 44))
  {
    if (v20)
    {
      [oCopy getBytes:v52 range:{v22, 44}];
    }

    else
    {
      v23 = *((v48 | 0xC) + 0x10);
      v52[0] = *(v48 | 0xC);
      v52[1] = v23;
      *(&v52[1] + 12) = *((v48 | 0xC) + 0x1C);
    }

    if (BYTE7(v52[0]) >= 0x20u)
    {
      v24 = 32;
    }

    else
    {
      v24 = BYTE7(v52[0]);
    }

    BYTE7(v52[0]) = v24;
    __memcpy_chk();
    v54[v24] = 0;
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", LOBYTE(v52[0]), BYTE1(v52[0]), BYTE2(v52[0]), BYTE3(v52[0]), BYTE4(v52[0]), BYTE5(v52[0])];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v52[0])];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_channel", v20];
    [entryCopy setObject:v26 forKeyedSubscript:v27];

    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v54];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_ssid", v20];
    [entryCopy setObject:v28 forKeyedSubscript:v29];

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_bssid", v20];
    [entryCopy setObject:v25 forKeyedSubscript:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithInt:SWORD4(v52[2])];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_rssi", v20];
    [entryCopy setObject:v31 forKeyedSubscript:v32];

    ++v20;
    v22 += 44;
    v21 = v25;
    if (v20 >= v48[2])
    {
      goto LABEL_32;
    }
  }

  if (![MEMORY[0x277D3F180] debugEnabled])
  {
    goto LABEL_30;
  }

  v39 = objc_opt_class();
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1209;
  v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v45[4] = v39;
  if (qword_2811F6808 != -1)
  {
    dispatch_once(&qword_2811F6808, v45);
  }

  if (byte_2811F66D1 != 1)
  {
    goto LABEL_30;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WoW wake payload too small to decode all PNO networks"];
  v40 = MEMORY[0x277D3F178];
  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
  lastPathComponent3 = [v41 lastPathComponent];
  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
  [v40 logMessage:v11 fromFile:lastPathComponent3 fromFunction:v43 fromLineNumber:3004];

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v51 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_29:

LABEL_30:
  v25 = v21;
LABEL_32:

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66CF = result;
  return result;
}

uint64_t __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1200(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D0 = result;
  return result;
}

uint64_t __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1209(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D1 = result;
  return result;
}

- (void)logEventPointWakeLink:(id)link withParams:(id)params toEntry:(id)entry
{
  v31 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  entryCopy = entry;
  memset(v30, 0, sizeof(v30));
  if ([linkCopy length] > 0x2F)
  {
    [linkCopy getBytes:v30 length:48];
    if (DWORD1(v30[0]) == 0x10000000)
    {
      v10 = [(PLWifiAgent *)self decodeWifiEventLinkReason:bswap32(HIDWORD(v30[0]))];
      [entryCopy setObject:v10 forKeyedSubscript:@"loss_reason"];
LABEL_16:

      goto LABEL_17;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke_1236;
      v25 = &__block_descriptor_40_e5_v8__0lu32l8;
      v26 = v16;
      if (qword_2811F6818 != -1)
      {
        dispatch_once(&qword_2811F6818, &v22);
      }

      if (byte_2811F66D3 == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFi Logger wl_event_msg_t.event_type (0x%x) and wow_wakeup_command (0x%x) don't match", bswap32(DWORD1(v30[0])), 16, v22, v23, v24, v25, v26];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
        [v17 logMessage:v10 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:3044];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v29 = v10;
          goto LABEL_19;
        }

LABEL_15:

        goto LABEL_16;
      }
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F6810 != -1)
    {
      dispatch_once(&qword_2811F6810, block);
    }

    if (byte_2811F66D2 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"WoW wake payload too small to decode E_LINK"];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent2 fromFunction:v14 fromLineNumber:3035];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v10;
LABEL_19:
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D2 = result;
  return result;
}

uint64_t __56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke_1236(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D3 = result;
  return result;
}

- (void)logEventPointJoin:(unsigned __int8)join withStats:(id)stats
{
  joinCopy = join;
  v22 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  if ([(PLWifiAgent *)self hasWiFi])
  {
    if (statsCopy)
    {
      v7 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Join"];
      v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
      v9 = [statsCopy objectForKey:*MEMORY[0x277D29968]];
      [v8 setObject:v9 forKeyedSubscript:@"Reason"];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:joinCopy != 0];
      [v8 setObject:v10 forKeyedSubscript:@"State"];

      [(PLOperator *)self logEntry:v8];
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLWifiAgent_logEventPointJoin_withStats___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6820 != -1)
    {
      dispatch_once(&qword_2811F6820, block);
    }

    if (byte_2811F66D4 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log power properties about"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointJoin:withStats:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:3051];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLWifiAgent_logEventPointJoin_withStats___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D4 = result;
  return result;
}

- (void)logEventPointRemoteControlSession:(id)session
{
  v4 = *MEMORY[0x277D3F5E8];
  sessionCopy = session;
  v7 = [(PLOperator *)PLWifiAgent entryKeyForType:v4 andName:@"RemoteControlSession"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:sessionCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardModuleInfo
{
  v35 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self hasWiFi])
  {
    v3 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ModuleInfo"];
    storage = [(PLOperator *)self storage];
    v5 = [storage lastEntryForKey:v3];

    if (v5)
    {
LABEL_32:

      goto LABEL_33;
    }

    [(PLWifiAgent *)self wifiDevice];
    v6 = WiFiDeviceClientCopyProperty();
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __40__PLWifiAgent_logEventForwardModuleInfo__block_invoke_1248;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v7;
      if (qword_2811F6830 != -1)
      {
        dispatch_once(&qword_2811F6830, v31);
      }

      if (byte_2811F66D6 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Module parameters: %@", v6];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardModuleInfo]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:3139];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v34 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v6)
    {
      v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
      v15 = [v6 objectForKey:@"ChipInfo"];
      [v14 setObject:v15 forKeyedSubscript:@"ChipInfo"];

      v16 = [v6 objectForKey:@"ManufacturerID"];
      [v14 setObject:v16 forKeyedSubscript:@"ManufacturerId"];

      v17 = [v6 objectForKey:@"ModuleInfo"];
      [v14 setObject:v17 forKeyedSubscript:@"ModuleInfo"];

      v18 = [v6 objectForKey:@"ProductID"];
      [v14 setObject:v18 forKeyedSubscript:@"ProductId"];

      [(PLOperator *)self logEntry:v14];
    }

    else
    {
      v24 = [MEMORY[0x277D3F208] isWiFiClass:1004019];
      v25 = PLLogWifi();
      v14 = v25;
      if (v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Debug: Call to fetch module parameters returned (null).", buf, 2u);
        }

        v14 = MGCopyAnswer();
        v26 = PLLogWifi();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v34 = v14;
          _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "WiFi Chipset: %@", buf, 0xCu);
        }

        if ([v14 length])
        {
          v27 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
          [v27 setObject:v14 forKeyedSubscript:@"ChipInfo"];
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
          [v27 setObject:v28 forKeyedSubscript:@"ManufacturerId"];

          [v27 setObject:@"V=u" forKeyedSubscript:@"ModuleInfo"];
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
          [v27 setObject:v29 forKeyedSubscript:@"ProductId"];

          [(PLOperator *)self logEntry:v27];
        }

        else
        {
          v27 = PLLogWifi();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_ERROR, "WiFi Chipset is an empty string.", buf, 2u);
          }
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "Error: Call to fetch module parameters returned (null).", buf, 2u);
      }
    }

LABEL_31:
    goto LABEL_32;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLWifiAgent_logEventForwardModuleInfo__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v19;
    if (qword_2811F6828 != -1)
    {
      dispatch_once(&qword_2811F6828, block);
    }

    if (byte_2811F66D5 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log module info about"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardModuleInfo]"];
      [v20 logMessage:v3 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:3129];

      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_31;
    }
  }

LABEL_33:
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLWifiAgent_logEventForwardModuleInfo__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D5 = result;
  return result;
}

uint64_t __40__PLWifiAgent_logEventForwardModuleInfo__block_invoke_1248(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D6 = result;
  return result;
}

- (void)logEventForwardRSSI:(id)i
{
  v24 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (iCopy)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __35__PLWifiAgent_logEventForwardRSSI___block_invoke;
      v20 = &__block_descriptor_40_e5_v8__0lu32l8;
      v21 = v5;
      if (qword_2811F6838 != -1)
      {
        dispatch_once(&qword_2811F6838, &block);
      }

      if (byte_2811F66D7 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"LinkQuality Callback: %@", iCopy, block, v18, v19, v20, v21];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardRSSI:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3184];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v12 = [iCopy objectForKey:@"RSSI"];
    v13 = [iCopy objectForKey:@"SCALED_RSSI"];
    v14 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"RSSI"];
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
    [v15 setObject:v12 forKeyedSubscript:@"RSSI"];
    [v15 setObject:v13 forKeyedSubscript:@"ScaledRSSI"];
    [(PLOperator *)self logEntry:v15];
    [(PLWifiAgent *)self setRemainingAllowedRSSIEntryCount:[(PLWifiAgent *)self remainingAllowedRSSIEntryCount]- 1];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __35__PLWifiAgent_logEventForwardRSSI___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D7 = result;
  return result;
}

- (void)logAWDLStateEntry:(id)entry
{
  entryCopy = entry;
  dictionary = [entryCopy dictionary];
  entryDate = [entryCopy entryDate];

  [(PLOperator *)self logForSubsystem:@"WifiMetrics" category:@"AWDLState" data:dictionary date:entryDate];
}

- (void)logEventForwardAWDLState:(id)state
{
  v24 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (stateCopy)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__PLWifiAgent_logEventForwardAWDLState___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (qword_2811F6840 != -1)
      {
        dispatch_once(&qword_2811F6840, block);
      }

      if (byte_2811F66D8 == 1)
      {
        stateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"AWDL Availability Callback: %@", stateCopy];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardAWDLState:]"];
        [v7 logMessage:stateCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3278];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = stateCopy;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v12 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AWDLState"];
    storage = [(PLOperator *)self storage];
    v14 = [storage lastEntryForKey:v12];

    if (!v14 || ([v14 objectForKeyedSubscript:@"AWDLDown"], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(stateCopy, "objectForKeyedSubscript:", @"LINK_CHANGED_IS_LINKDOWN"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v15 != v16))
    {
      v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
      v18 = [stateCopy objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
      [v17 setObject:v18 forKeyedSubscript:@"AWDLDown"];

      [v17 setObject:&unk_282C12DF8 forKeyedSubscript:@"AWDLRanging"];
      v20 = 0;
      [(PLWifiAgent *)self wifiAwdlDevice];
      WiFiDeviceClientCopyInterfaceStateInfo();
      [(PLOperator *)self logEntry:v17];
      [(PLWifiAgent *)self logAWDLStateEntry:v17];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLWifiAgent_logEventForwardAWDLState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D8 = result;
  return result;
}

uint64_t __40__PLWifiAgent_logEventForwardAWDLState___block_invoke_1289(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66D9 = result;
  return result;
}

- (void)logEventForwardHotspotState:(id)state
{
  v49 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    v6 = *MEMORY[0x277D297F0];
    v7 = [stateCopy objectForKeyedSubscript:*MEMORY[0x277D297F0]];
    if (v7)
    {
      v8 = v7;
      v9 = *MEMORY[0x277D297F8];
      v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277D297F8]];

      if (v10)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v11 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __43__PLWifiAgent_logEventForwardHotspotState___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v11;
          if (qword_2811F6850 != -1)
          {
            dispatch_once(&qword_2811F6850, block);
          }

          if (byte_2811F66DA == 1)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hotspot Availability Callback: %@", v5];
            v13 = MEMORY[0x277D3F178];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent = [v14 lastPathComponent];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardHotspotState:]"];
            [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:3307];

            v17 = PLLogCommon();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v48 = v12;
              _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v18 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"HotspotState"];
        storage = [(PLOperator *)self storage];
        v20 = [storage lastEntryForKey:v18];

        if (v20)
        {
          v21 = [v20 objectForKeyedSubscript:@"HotSpotOn"];
          if (v21)
          {
            v22 = v21;
            v23 = [v20 objectForKeyedSubscript:@"ADHS"];

            if (v23)
            {
              v24 = [v20 objectForKeyedSubscript:@"HotSpotOn"];
              bOOLValue = [v24 BOOLValue];
              v26 = [v5 objectForKeyedSubscript:v9];
              if (bOOLValue == [v26 BOOLValue])
              {
                v27 = [v20 objectForKeyedSubscript:@"ADHS"];
                bOOLValue2 = [v27 BOOLValue];
                v28 = [v5 objectForKeyedSubscript:v6];
                bOOLValue3 = [v28 BOOLValue];

                if (bOOLValue2 == bOOLValue3)
                {
                  if (![MEMORY[0x277D3F180] debugEnabled])
                  {
                    goto LABEL_19;
                  }

                  v37 = objc_opt_class();
                  v45[0] = MEMORY[0x277D85DD0];
                  v45[1] = 3221225472;
                  v45[2] = __43__PLWifiAgent_logEventForwardHotspotState___block_invoke_1298;
                  v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v45[4] = v37;
                  if (qword_2811F6858 != -1)
                  {
                    dispatch_once(&qword_2811F6858, v45);
                  }

                  if (byte_2811F66DB != 1)
                  {
                    goto LABEL_19;
                  }

                  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Same hotspot data: %@", v5];
                  v38 = MEMORY[0x277D3F178];
                  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                  lastPathComponent2 = [v39 lastPathComponent];
                  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardHotspotState:]"];
                  [v38 logMessage:v29 fromFile:lastPathComponent2 fromFunction:v41 fromLineNumber:3313];

                  v42 = PLLogCommon();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v48 = v29;
                    _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

LABEL_18:
LABEL_19:

                  goto LABEL_20;
                }
              }

              else
              {
              }
            }
          }
        }

        v29 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v18];
        v30 = MEMORY[0x277CCABB0];
        v31 = [v5 objectForKeyedSubscript:v9];
        v32 = [v30 numberWithBool:{objc_msgSend(v31, "BOOLValue")}];
        [v29 setObject:v32 forKeyedSubscript:@"HotSpotOn"];

        v33 = MEMORY[0x277CCABB0];
        v34 = [v5 objectForKeyedSubscript:v6];
        v35 = [v33 numberWithBool:{objc_msgSend(v34, "BOOLValue")}];
        [v29 setObject:v35 forKeyedSubscript:@"ADHS"];

        [(PLOperator *)self logEntry:v29];
        goto LABEL_18;
      }
    }
  }

LABEL_20:

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLWifiAgent_logEventForwardHotspotState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DA = result;
  return result;
}

uint64_t __43__PLWifiAgent_logEventForwardHotspotState___block_invoke_1298(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DB = result;
  return result;
}

- (void)updateEventBackwardUserScanDuration:(id)duration
{
  v32 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  if (durationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [durationCopy objectForKey:@"SCAN_CHANNELS"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_30:

        goto LABEL_31;
      }

      v6 = [durationCopy objectForKey:@"ScanReqClientName"];
      if (!v5 || ([MEMORY[0x277CBEB68] null], v7 = objc_claimAutoreleasedReturnValue(), v7, v5 == v7))
      {
        v8 = 0;
        intValue = 110;
        v17 = 3000;
        if (!v6)
        {
LABEL_21:
          v18 = &OBJC_IVAR___PLWifiAgent__autoJoinScanDuration;
LABEL_22:
          *(&self->super.super.super.isa + *v18) = (*(&self->super.super.super.isa + *v18) + v17);
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v21 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __51__PLWifiAgent_updateEventBackwardUserScanDuration___block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v21;
            if (qword_2811F6860 != -1)
            {
              dispatch_once(&qword_2811F6860, block);
            }

            if (byte_2811F66DC == 1)
            {
              v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"User scan counter update: clientName = %@, dwellTime= %lu, channelCountNum = %lu, totalScanTime = %lu\n", v6, intValue, v8, v17];
              v23 = MEMORY[0x277D3F178];
              v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent = [v24 lastPathComponent];
              v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent updateEventBackwardUserScanDuration:]"];
              [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:3411];

              v27 = PLLogCommon();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v31 = v22;
                _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          goto LABEL_29;
        }

LABEL_12:
        if ([v6 hasPrefix:@"location"])
        {
          v18 = &OBJC_IVAR___PLWifiAgent__locationScanDuration;
        }

        else if ([v6 hasPrefix:@"Setup"])
        {
          v18 = &OBJC_IVAR___PLWifiAgent__setupScanDuration;
        }

        else
        {
          v19 = [v6 hasPrefix:@"pipe"];
          v20 = 5;
          if (v19)
          {
            v20 = 3;
          }

          v18 = &OBJC_IVAR___PLWifiAgent__lastLoggedTimestamp[v20];
        }

        goto LABEL_22;
      }

      if (objc_opt_respondsToSelector())
      {
        v8 = [v5 count];
        v9 = [durationCopy objectForKey:@"SCAN_DWELL_TIME"];
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = v9;
        v11 = [durationCopy objectForKey:@"SCAN_DWELL_TIME"];
        null = [MEMORY[0x277CBEB68] null];

        if (v11 == null)
        {
LABEL_19:
          intValue = 110;
LABEL_20:
          v17 = intValue * v8;
          if (!v6)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }

        v13 = [durationCopy objectForKey:@"SCAN_DWELL_TIME"];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          v15 = [durationCopy objectForKey:@"SCAN_DWELL_TIME"];
          intValue = [v15 intValue];

          goto LABEL_20;
        }
      }

LABEL_29:

      goto LABEL_30;
    }
  }

LABEL_31:

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __51__PLWifiAgent_updateEventBackwardUserScanDuration___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DC = result;
  return result;
}

- (void)logEventBackwardControlCPUPowerStats
{
  if ([MEMORY[0x277D3F208] isWiFiClass:1004019])
  {
    v3 = CENGetPowerStats();
    v4 = PLLogWifi();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Call to fetch Control CPU stats was successful.", v7, 2u);
      }

      v5 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ControlCPUPowerStats"];
      v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v3];
      [(PLOperator *)self logEntry:v6];
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Error: Call to fetch Control CPU stats failed.", buf, 2u);
    }
  }
}

uint64_t __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DD = result;
  return result;
}

uint64_t __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1343(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DE = result;
  return result;
}

uint64_t __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1349(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66DF = result;
  return result;
}

uint64_t __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1357(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E0 = result;
  return result;
}

uint64_t __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1363(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E1 = result;
  return result;
}

- (void)logEventBackwardWifiProperties:(id)properties withNetworkProperties:(id)networkProperties shallModelPower:(BOOL)power
{
  powerCopy = power;
  v421[10] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  networkPropertiesCopy = networkProperties;
  v420[0] = @"SOFTAP_LOWPOWER_STATS_ACTIVE_STATE_DURATION";
  v420[1] = @"SOFTAP_LOWPOWER_STATS_ACTIVE_STATE_COUNT";
  v421[0] = @"ADHSActiveStateDuration";
  v421[1] = @"ADHSActiveStateCount";
  v420[2] = @"SOFTAP_LOWPOWER_STATS_DYNAMIC_STATE_DURATION";
  v420[3] = @"SOFTAP_LOWPOWER_STATS_DYNAMIC_STATE_COUNT";
  v421[2] = @"ADHSDynamicStateDuration";
  v421[3] = @"ADHSDynamicStateDuration";
  v420[4] = @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_COUNT";
  v420[5] = @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_COUNT";
  v421[4] = @"ADHSLowPowerStateDuration";
  v421[5] = @"ADHSLowPowerStateDuration";
  v420[6] = @"SOFTAP_LOWPOWER_STATS_OFF_STATE_COUNT";
  v420[7] = @"SOFTAP_LOWPOWER_STATS_OFF_STATE_COUNT";
  v421[6] = @"ADHSOffStateDuration";
  v421[7] = @"ADHSOffStateDuration";
  v420[8] = @"SOFTAP_LOWPOWER_STATS_TXPACKETS";
  v420[9] = @"SOFTAP_LOWPOWER_STATS_RXPACKETS";
  v421[8] = @"ADHSTXPackets";
  v421[9] = @"ADHSRXPackets";
  v349 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v421 forKeys:v420 count:10];
  allValues = [v349 allValues];
  v8 = *MEMORY[0x277D3F5C8];
  v333 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"HotspotPowerStats"];
  v9 = [propertiesCopy objectForKeyedSubscript:@"CACHED_TIME_STAMP"];
  integerValue = [v9 integerValue];

  v11 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_ASSOCIATED_SLEEP_DURATION"];
  integerValue2 = [v11 integerValue];

  v13 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_UNASSOCIATED_SLEEP_DURATION"];
  integerValue3 = [v13 integerValue];

  v15 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_TIME_STAMP"];
  integerValue4 = [v15 integerValue];

  v17 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"CumulativeProperties"];
  v343 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"DiffProperties"];
  v331 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"BeaconProfile"];
  v336 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"AutoJoin"];
  v335 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"Scans"];
  v334 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"ScanForwardStats"];
  v342 = v17;
  selfCopy = self;
  if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
  {
    v18 = self->_lastEntryForMetricd;
  }

  else
  {
    storage = [(PLOperator *)self storage];
    v18 = [storage lastEntryForKey:v17];
  }

  v361 = (integerValue2 | integerValue3) != 0;
  v346 = v18;
  if (v18)
  {
    v20 = [(PLEntry *)v18 objectForKeyedSubscript:@"WifiTimestamp"];
    unsignedIntegerValue = [v20 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v357 = integerValue;
  v21 = objc_opt_new();
  v22 = +[PLWifiAgent isBeaconLoggingEnabled];
  v23 = MEMORY[0x277CBEC10];
  v24 = &unk_282C195E8;
  if (!v22)
  {
    v24 = MEMORY[0x277CBEC10];
  }

  obj = v24;
  isUsingAnOlderWifiChip = [MEMORY[0x277D3F208] isUsingAnOlderWifiChip];
  v26 = &unk_282C19610;
  if (isUsingAnOlderWifiChip)
  {
    v26 = v23;
  }

  v353 = v26;
  v27 = +[PLWifiAgent isScanForwardLoggingEnabled];
  v28 = &unk_282C19638;
  if (!v27)
  {
    v28 = v23;
  }

  v354 = v28;
  v340 = v21;
  [v21 addEntriesFromDictionary:&unk_282C193B8];
  kPLWiFiClassOfDevice = [MEMORY[0x277D3F208] kPLWiFiClassOfDevice];
  v30 = 0;
  HIDWORD(v341) = 0;
  v31 = &unk_282C194F8;
  v32 = &unk_282C194D0;
  v33 = &unk_282C194A8;
  v34 = &unk_282C19408;
  v35 = &unk_282C193E0;
  v363 = propertiesCopy;
  if (kPLWiFiClassOfDevice <= 1004010)
  {
    if (kPLWiFiClassOfDevice <= 1004005)
    {
      if ((kPLWiFiClassOfDevice - 1004001) >= 3)
      {
        LODWORD(v341) = 0;
        v339 = 0;
        if ((kPLWiFiClassOfDevice - 1004004) >= 2)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

LABEL_33:
      LODWORD(v341) = 0;
      v339 = 0;
LABEL_44:
      [v21 addEntriesFromDictionary:v35];
      v35 = v34;
      goto LABEL_45;
    }

    if (kPLWiFiClassOfDevice <= 1004007)
    {
      if (kPLWiFiClassOfDevice == 1004006)
      {
        goto LABEL_33;
      }

      v38 = 0;
      goto LABEL_42;
    }

    if (kPLWiFiClassOfDevice == 1004008)
    {
      goto LABEL_33;
    }

    LODWORD(v341) = 0;
    v339 = 0;
    if (kPLWiFiClassOfDevice != 1004010)
    {
      goto LABEL_45;
    }

LABEL_41:
    [v21 addEntriesFromDictionary:v35];
    v38 = 1;
    v35 = v34;
    v34 = v33;
    v33 = v32;
    v32 = v31;
LABEL_42:
    v339 = HIDWORD(v341);
    [v21 addEntriesFromDictionary:v35];
    LODWORD(v341) = 1;
    HIDWORD(v341) = v38;
    v35 = v34;
    v34 = v33;
    v33 = v32;
    v30 = &unk_282C19660;
    goto LABEL_43;
  }

  v36 = integerValue4;
  v37 = &unk_282C19520;
  if (kPLWiFiClassOfDevice > 1004014)
  {
    if ((kPLWiFiClassOfDevice - 1004016) >= 3)
    {
      if (kPLWiFiClassOfDevice == 1004015)
      {
        v39 = &unk_282C195C0;
        v40 = &unk_282C19430;
      }

      else
      {
        LODWORD(v341) = 0;
        v339 = 0;
        integerValue4 = v36;
        if (kPLWiFiClassOfDevice != 1004019)
        {
          goto LABEL_45;
        }

        [v21 addEntriesFromDictionary:&unk_282C193E0];
        [v21 addEntriesFromDictionary:&unk_282C19408];
        v39 = &unk_282C19480;
        v37 = &unk_282C19458;
        v31 = &unk_282C19430;
        v32 = &unk_282C195C0;
        v33 = &unk_282C19520;
        v40 = &unk_282C194F8;
        v34 = &unk_282C194D0;
        v35 = &unk_282C194A8;
      }
    }

    else
    {
      v39 = &unk_282C19430;
      v37 = &unk_282C195C0;
      v31 = &unk_282C19520;
      v32 = &unk_282C194F8;
      v33 = &unk_282C194D0;
      v40 = &unk_282C194A8;
    }

    [v21 addEntriesFromDictionary:v35];
    [v21 addEntriesFromDictionary:v34];
    HIDWORD(v341) = 1;
    v35 = v40;
    v34 = v33;
    v33 = v32;
    v32 = v31;
    v31 = v37;
    v37 = v39;
LABEL_40:
    [v21 addEntriesFromDictionary:v35];
    v35 = v34;
    v34 = v33;
    v33 = v32;
    v32 = v31;
    v31 = v37;
    propertiesCopy = v363;
    integerValue4 = v36;
    goto LABEL_41;
  }

  if ((kPLWiFiClassOfDevice - 1004013) < 2)
  {
    goto LABEL_40;
  }

  if (kPLWiFiClassOfDevice == 1004011)
  {
    v341 = 0;
    v339 = 0;
    v30 = 0;
    v33 = &unk_282C19570;
    v34 = &unk_282C19548;
    integerValue4 = v36;
LABEL_43:
    [v21 addEntriesFromDictionary:v35];
    v35 = v34;
    v34 = v33;
    goto LABEL_44;
  }

  LODWORD(v341) = 0;
  v339 = 0;
  integerValue4 = v36;
  if (kPLWiFiClassOfDevice != 1004012)
  {
LABEL_45:
    [v21 addEntriesFromDictionary:v35];
    v41 = v30;
    goto LABEL_46;
  }

  [v21 addEntriesFromDictionary:&unk_282C193E0];
  [v21 addEntriesFromDictionary:&unk_282C19548];
  [v21 addEntriesFromDictionary:&unk_282C19570];
  HIDWORD(v341) = 0;
  if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] > 1001204)
  {
    v30 = &unk_282C19660;
    LODWORD(v341) = 1;
    v339 = 0;
    v35 = &unk_282C19598;
    goto LABEL_45;
  }

  v41 = 0;
  LODWORD(v341) = 0;
  v339 = 0;
LABEL_46:
  v42 = v342;
  if (v361)
  {
    if (integerValue4 > v357)
    {
      if (unsignedIntegerValue)
      {
        v43 = v357 > unsignedIntegerValue;
      }

      else
      {
        v43 = 1;
      }

      v44 = v43;
      if (v44)
      {
        v45 = 2;
      }

      else
      {
        v45 = 1;
      }

      goto LABEL_64;
    }

    v46 = v357 > unsignedIntegerValue;
    v45 = 1;
    goto LABEL_60;
  }

  v45 = 1;
  if (v346)
  {
    v46 = v357 > unsignedIntegerValue;
LABEL_60:
    if (v46)
    {
      v44 = 1;
    }

    else
    {
      v44 = 2;
    }

    goto LABEL_64;
  }

  v44 = 1;
LABEL_64:
  v47 = 0x277CCA000uLL;
  v355 = v41;
  while (1)
  {
    v48 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v42];
    v351 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v343];
    v352 = v48;
    v345 = v45;
    if (v44 != 2)
    {
      break;
    }

    if (v346)
    {
      if (![(PLWifiAgent *)selfCopy isWiFiPowered])
      {
        v49 = [(PLEntry *)v346 copy];
        v50 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v343];
        null = [MEMORY[0x277CBEB68] null];
        [v49 setObject:null forKeyedSubscript:@"CurrentSSID"];

        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentChannel"];
        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentBandwidth"];
        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"WifiPowered"];
        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"Carplay"];
        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_autoJoinScanDuration];
        [v49 setObject:v52 forKeyedSubscript:@"AutojoinScanDuration"];

        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_locationScanDuration];
        [v49 setObject:v53 forKeyedSubscript:@"LocationScanDuration"];

        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_pipelineScanDuration];
        [v49 setObject:v54 forKeyedSubscript:@"PipelineScanDuration"];

        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_unknownScanDuration];
        [v49 setObject:v55 forKeyedSubscript:@"UnknownScanDuration"];

        v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_setupScanDuration];
        v57 = v49;
        [v49 setObject:v56 forKeyedSubscript:@"SetupScanDuration"];

        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AWDLAWDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AWDLRXDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AWDLScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AWDLTXDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AssociatedScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"AutojoinScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentBandwidth"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentChannel"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentSSID"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"FRTSDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"HSICActiveDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"HSICSuspendDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"LocationScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MPCDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OtherScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PCIEActiveDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PCIEPERSTDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PCIESuspendDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PMDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PNOBSSIDDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PNOScanSSIDDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PipelineScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"RXDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"RoamScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SetupScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"TXDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"TimeDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"UnknownScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"UserScanDuration"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"WifiPowered"];
        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"WowEnabled"];
        if ([MEMORY[0x277D3F208] isWiFiClass:1004005])
        {
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISOTXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMOTXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMORXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISORXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMOCSDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISOCSDuration"];
        }

        if (([MEMORY[0x277D3F208] isWiFiClass:1004007] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004010) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004013) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
        {
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISOTXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMOTXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMORXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISORXDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"MIMOCSDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SISOCSDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OCLCSDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OCLRXDuration"];
        }

        if ([MEMORY[0x277D3F208] isWiFiClass:1004010])
        {
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OPSFullDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OPSPartialDuration"];
        }

        propertiesCopy = v363;
        if (([MEMORY[0x277D3F208] isWiFiClass:1004013] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
        {
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OPSFullDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"OPSPartialDuration"];
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"PSBWDuration"];
        }

        if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
        {
          [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"SCRXDurationSISO"];
        }

        if (v341)
        {
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v58 = [v41 countByEnumeratingWithState:&v368 objects:v408 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v369;
            do
            {
              for (i = 0; i != v59; ++i)
              {
                if (*v369 != v60)
                {
                  objc_enumerationMutation(v41);
                }

                [v50 setObject:&unk_282C12DF8 forKeyedSubscript:*(*(&v368 + 1) + 8 * i)];
              }

              v59 = [v41 countByEnumeratingWithState:&v368 objects:v408 count:16];
            }

            while (v59);
          }
        }

        if (HIDWORD(v341))
        {
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v62 = allValues;
          v63 = [v62 countByEnumeratingWithState:&v364 objects:v407 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v365;
            do
            {
              for (j = 0; j != v64; ++j)
              {
                if (*v365 != v65)
                {
                  objc_enumerationMutation(v62);
                }

                [v50 setObject:&unk_282C12DF8 forKeyedSubscript:*(*(&v364 + 1) + 8 * j)];
              }

              v64 = [v62 countByEnumeratingWithState:&v364 objects:v407 count:16];
            }

            while (v64);
          }

          v41 = v355;
        }

        [v50 setObject:&unk_282C12DF8 forKeyedSubscript:@"TimeDuration"];
        v67 = [(PLEntry *)v346 objectForKey:@"CurrentChannel"];
        [v50 setObject:v67 forKeyedSubscript:@"CurrentChannel"];

        v68 = [(PLEntry *)v346 objectForKey:@"CurrentSSID"];
        [v50 setObject:v68 forKeyedSubscript:@"CurrentSSID"];

        v69 = [(PLEntry *)v346 objectForKey:@"CurrentBandwidth"];
        [v50 setObject:v69 forKeyedSubscript:@"CurrentBandwidth"];

        v70 = [(PLEntry *)v346 objectForKey:@"WowEnabled"];
        [v50 setObject:v70 forKeyedSubscript:@"WowEnabled"];

        v71 = [(PLEntry *)v346 objectForKey:@"WifiPowered"];
        [v50 setObject:v71 forKeyedSubscript:@"WifiPowered"];

        v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
        [v57 setObject:v72 forKeyedSubscript:@"READINGTYPE"];

        if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
        {
          objc_storeStrong(&selfCopy->_lastEntryForMetricd, v57);
        }

        else
        {
          [(PLOperator *)selfCopy logEntry:v57];
        }

        v42 = v342;
        v45 = v345;
        v208 = v346;
        if (powerCopy)
        {
          [(PLWifiAgent *)selfCopy modelWiFiPower:v50];
        }

        v44 = 2;
        v47 = 0x277CCA000;
LABEL_291:
        v346 = v208;

        goto LABEL_293;
      }
    }

    else
    {
      v346 = 0;
    }

    v44 = 2;
LABEL_293:

    v43 = v45-- <= 1;
    if (v43)
    {
      goto LABEL_310;
    }
  }

  v73 = *(v47 + 2992);
  if (v44)
  {
    v74 = @"CACHED_TIME_STAMP";
  }

  else
  {
    v74 = @"INSTANT_TIME_STAMP";
  }

  v75 = [propertiesCopy objectForKeyedSubscript:v74];
  v76 = [v73 numberWithUnsignedInteger:{objc_msgSend(v75, "integerValue")}];
  [v48 setObject:v76 forKeyedSubscript:@"WifiTimestamp"];

  if (v346)
  {
    v77 = *(v47 + 2992);
    v78 = [v48 objectForKeyedSubscript:@"WifiTimestamp"];
    unsignedIntegerValue2 = [v78 unsignedIntegerValue];
    v80 = [(PLEntry *)v346 objectForKeyedSubscript:@"WifiTimestamp"];
    v81 = [v77 numberWithInteger:{unsignedIntegerValue2 - objc_msgSend(v80, "unsignedIntegerValue")}];
    [v351 setObject:v81 forKeyedSubscript:@"TimeDuration"];
  }

  v344 = v44;
  v360 = &unk_282C16860;
  if (([MEMORY[0x277D3F208] isWiFiClass:1004011] & 1) == 0)
  {
    v82 = [MEMORY[0x277D3F208] isWiFiClass:1004012];
    v83 = &unk_282C16860;
    if (!v82)
    {
      v83 = &unk_282C16878;
    }

    v360 = v83;
  }

  v406 = 0u;
  v405 = 0u;
  v404 = 0u;
  v403 = 0u;
  v84 = v340;
  v85 = v346;
  v362 = [v84 countByEnumeratingWithState:&v403 objects:v419 count:16];
  if (v362)
  {
    v358 = v44 != 0;
    v356 = *v404;
    do
    {
      v86 = 0;
      do
      {
        v87 = v85;
        if (*v404 != v356)
        {
          objc_enumerationMutation(v84);
        }

        v88 = *(*(&v403 + 1) + 8 * v86);
        v89 = [v84 objectForKeyedSubscript:v88];
        v90 = [v89 objectAtIndexedSubscript:v358];
        v91 = [v363 objectForKeyedSubscript:v90];
        integerValue5 = [v91 integerValue];

        if ([v360 containsObject:v88])
        {
          v93 = integerValue5 / 0x3E8uLL;
        }

        else
        {
          v93 = integerValue5;
        }

        v47 = 0x277CCA000uLL;
        v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v93];
        [v48 setObject:v94 forKeyedSubscript:v88];

        v85 = v87;
        if (v87)
        {
          v95 = [(PLEntry *)v87 objectForKey:v88];
          if ([v95 isNil])
          {
            goto LABEL_147;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            unsignedLongValue = [v95 unsignedLongValue];
            goto LABEL_124;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            unsignedLongValue = [v95 longLongValue];
LABEL_124:
            v97 = unsignedLongValue;
            v98 = unsignedLongValue - v93;
            if (unsignedLongValue > v93)
            {
              if ([&unk_282C16890 containsObject:v88])
              {
                v99 = MEMORY[0x277CCABB0];
                if (v98 - 858994 <= 0x346DC4)
                {
                  v100 = v93 - v97 + 4294967;
                  goto LABEL_146;
                }
              }

              else
              {
                if ([MEMORY[0x277D3F180] debugEnabled])
                {
                  v109 = objc_opt_class();
                  v402[0] = MEMORY[0x277D85DD0];
                  v402[1] = 3221225472;
                  v402[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke;
                  v402[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v402[4] = v109;
                  v110 = v402;
                  if (qword_2811F6890 != -1)
                  {
                    dispatch_once(&qword_2811F6890, v110);
                  }

                  if (byte_2811F66E2 == 1)
                  {
                    v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"diff[%@] = %lu < %lu, ignoring setting to zero", v88, v93, v97];
                    v112 = MEMORY[0x277D3F178];
                    v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                    lastPathComponent = [v113 lastPathComponent];
                    v115 = v111;
                    v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
                    [v112 logMessage:v115 fromFile:lastPathComponent fromFunction:v116 fromLineNumber:4228];

                    v117 = PLLogCommon();
                    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v410 = v115;
                      _os_log_debug_impl(&dword_21A4C6000, v117, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }

                    v87 = v346;
                  }
                }

                v99 = MEMORY[0x277CCABB0];
              }

              v100 = 0;
LABEL_146:
              v118 = [v99 numberWithUnsignedInteger:v100];
              [v351 setObject:v118 forKeyedSubscript:v88];

              v85 = v87;
LABEL_147:

              v48 = v352;
              goto LABEL_148;
            }
          }

          else
          {
            v97 = 0;
          }

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v101 = objc_opt_class();
            v401[0] = MEMORY[0x277D85DD0];
            v401[1] = 3221225472;
            v401[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2505;
            v401[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v401[4] = v101;
            v102 = v401;
            if (qword_2811F6898 != -1)
            {
              dispatch_once(&qword_2811F6898, v102);
            }

            if (byte_2811F66E3 == 1)
            {
              v103 = [MEMORY[0x277CCACA8] stringWithFormat:@"diff[%@] = %lu - %lu", v88, v93, v97];
              v347 = MEMORY[0x277D3F178];
              v104 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent2 = [v104 lastPathComponent];
              v106 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
              [v347 logMessage:v103 fromFile:lastPathComponent2 fromFunction:v106 fromLineNumber:4234];

              v107 = v103;
              v108 = PLLogCommon();
              if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v410 = v107;
                _os_log_debug_impl(&dword_21A4C6000, v108, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v87 = v346;
              v47 = 0x277CCA000uLL;
            }
          }

          v99 = MEMORY[0x277CCABB0];
          v100 = v93 - v97;
          goto LABEL_146;
        }

LABEL_148:
        ++v86;
      }

      while (v362 != v86);
      v362 = [v84 countByEnumeratingWithState:&v403 objects:v419 count:16];
    }

    while (v362);
  }

  v346 = v85;
  if (v85 && v344 == 1)
  {
    [(PLEntry *)v85 objectForKey:@"CurrentChannel"];
    v120 = v119 = v85;
    [v48 setObject:v120 forKeyedSubscript:@"CurrentChannel"];

    v121 = [(PLEntry *)v119 objectForKey:@"CurrentSSID"];
    [v48 setObject:v121 forKeyedSubscript:@"CurrentSSID"];

    v122 = [(PLEntry *)v119 objectForKey:@"CurrentBandwidth"];
    [v48 setObject:v122 forKeyedSubscript:@"CurrentBandwidth"];

    v123 = [(PLEntry *)v119 objectForKey:@"WowEnabled"];
    [v48 setObject:v123 forKeyedSubscript:@"WowEnabled"];

    v124 = [(PLEntry *)v119 objectForKey:@"Carplay"];
    [v48 setObject:v124 forKeyedSubscript:@"Carplay"];

    v125 = [(PLEntry *)v119 objectForKey:@"WifiPowered"];
  }

  else
  {
    v126 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentChannel"];
    [v48 setObject:v126 forKeyedSubscript:@"CurrentChannel"];

    v127 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentSSID"];
    [v48 setObject:v127 forKeyedSubscript:@"CurrentSSID"];

    v128 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentBandwidth"];
    [v48 setObject:v128 forKeyedSubscript:@"CurrentBandwidth"];

    v129 = [networkPropertiesCopy objectForKeyedSubscript:@"Carplay"];
    [v48 setObject:v129 forKeyedSubscript:@"Carplay"];

    v130 = [*(v47 + 2992) numberWithBool:{-[PLWifiAgent isWowEnabled](selfCopy, "isWowEnabled")}];
    [v48 setObject:v130 forKeyedSubscript:@"WowEnabled"];

    v125 = [*(v47 + 2992) numberWithBool:{-[PLWifiAgent isWiFiPowered](selfCopy, "isWiFiPowered")}];
  }

  [v48 setObject:v125 forKeyedSubscript:@"WifiPowered"];

  propertiesCopy = v363;
  if (v341)
  {
    v131 = [v363 objectForKeyedSubscript:@"AutoJoinPowerDiag"];
    v132 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v336];
    v397 = 0u;
    v398 = 0u;
    v399 = 0u;
    v400 = 0u;
    allKeys = [v355 allKeys];
    v134 = [allKeys countByEnumeratingWithState:&v397 objects:v418 count:16];
    if (v134)
    {
      v135 = v134;
      v136 = *v398;
      do
      {
        for (k = 0; k != v135; ++k)
        {
          if (*v398 != v136)
          {
            objc_enumerationMutation(allKeys);
          }

          v138 = *(*(&v397 + 1) + 8 * k);
          v139 = [v355 objectForKeyedSubscript:v138];
          [v132 setObject:0 forKeyedSubscript:v139];

          v140 = [v131 objectForKey:v138];

          if (v140)
          {
            v141 = [v131 objectForKeyedSubscript:v138];
            v142 = [v355 objectForKeyedSubscript:v138];
            [v132 setObject:v141 forKeyedSubscript:v142];
          }

          v143 = [v131 objectForKeyedSubscript:@"auto_join_trigger_counts"];
          v144 = [v143 objectForKey:v138];

          if (v144)
          {
            v145 = [v131 objectForKeyedSubscript:@"auto_join_trigger_counts"];
            v146 = [v145 objectForKeyedSubscript:v138];
            v147 = [v355 objectForKeyedSubscript:v138];
            [v132 setObject:v146 forKeyedSubscript:v147];
          }
        }

        v135 = [allKeys countByEnumeratingWithState:&v397 objects:v418 count:16];
      }

      while (v135);
    }

    [(PLOperator *)selfCopy logEntry:v132];
    v48 = v352;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v148 = objc_opt_class();
      v396[0] = MEMORY[0x277D85DD0];
      v396[1] = 3221225472;
      v396[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2517;
      v396[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v396[4] = v148;
      v149 = v396;
      if (qword_2811F68A0 != -1)
      {
        dispatch_once(&qword_2811F68A0, v149);
      }

      if (byte_2811F66E4 == 1)
      {
        v132 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged AJ keys:%@", v132];
        v151 = MEMORY[0x277D3F178];
        v152 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent3 = [v152 lastPathComponent];
        v154 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v151 logMessage:v132 fromFile:lastPathComponent3 fromFunction:v154 fromLineNumber:4283];

        v155 = PLLogCommon();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v410 = v132;
          _os_log_debug_impl(&dword_21A4C6000, v155, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    propertiesCopy = v363;
  }

  if (HIDWORD(v341))
  {
    v156 = [propertiesCopy objectForKey:@"AutoHotspotLPHSPowerStats"];

    if (v156)
    {
      v157 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v333];
      v158 = [propertiesCopy objectForKeyedSubscript:@"AutoHotspotLPHSPowerStats"];
      v392 = 0u;
      v393 = 0u;
      v394 = 0u;
      v395 = 0u;
      allKeys2 = [v349 allKeys];
      v160 = [allKeys2 countByEnumeratingWithState:&v392 objects:v417 count:16];
      if (v160)
      {
        v161 = v160;
        v162 = *v393;
        do
        {
          for (m = 0; m != v161; ++m)
          {
            if (*v393 != v162)
            {
              objc_enumerationMutation(allKeys2);
            }

            v164 = *(*(&v392 + 1) + 8 * m);
            v165 = [v158 objectForKey:v164];

            if (v165)
            {
              v166 = [v158 objectForKeyedSubscript:v164];
              v167 = [v349 objectForKeyedSubscript:v164];
              [v157 setObject:v166 forKeyedSubscript:v167];
            }
          }

          v161 = [allKeys2 countByEnumeratingWithState:&v392 objects:v417 count:16];
        }

        while (v161);
      }

      [(PLOperator *)selfCopy logEntry:v157];
      v48 = v352;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v168 = objc_opt_class();
        v391[0] = MEMORY[0x277D85DD0];
        v391[1] = 3221225472;
        v391[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2526;
        v391[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v391[4] = v168;
        v169 = v391;
        if (qword_2811F68A8 != -1)
        {
          dispatch_once(&qword_2811F68A8, v169);
        }

        if (byte_2811F66E5 == 1)
        {
          v157 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged ADHS keys:%@", v157];
          v171 = MEMORY[0x277D3F178];
          v172 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent4 = [v172 lastPathComponent];
          v174 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v171 logMessage:v157 fromFile:lastPathComponent4 fromFunction:v174 fromLineNumber:4298];

          v175 = PLLogCommon();
          if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v410 = v157;
            _os_log_debug_impl(&dword_21A4C6000, v175, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }
  }

  if (v339)
  {
    v389 = 0u;
    v390 = 0u;
    v387 = 0u;
    v388 = 0u;
    v176 = [&unk_282C19688 countByEnumeratingWithState:&v387 objects:v416 count:16];
    if (v176)
    {
      v177 = v176;
      v178 = *v388;
      do
      {
        for (n = 0; n != v177; ++n)
        {
          if (*v388 != v178)
          {
            objc_enumerationMutation(&unk_282C19688);
          }

          v180 = *(*(&v387 + 1) + 8 * n);
          v181 = [&unk_282C19688 objectForKeyedSubscript:v180];
          v182 = [propertiesCopy objectForKey:v181];

          if (v182)
          {
            v183 = [&unk_282C19688 objectForKeyedSubscript:v180];
            v184 = [propertiesCopy objectForKeyedSubscript:v183];
            [v48 setObject:v184 forKeyedSubscript:v180];
          }
        }

        v177 = [&unk_282C19688 countByEnumeratingWithState:&v387 objects:v416 count:16];
      }

      while (v177);
    }
  }

  if (v346)
  {
    v185 = [(PLEntry *)v346 objectForKey:@"CurrentChannel"];
    [v351 setObject:v185 forKeyedSubscript:@"CurrentChannel"];

    v186 = [(PLEntry *)v346 objectForKey:@"CurrentSSID"];
    [v351 setObject:v186 forKeyedSubscript:@"CurrentSSID"];

    v187 = [(PLEntry *)v346 objectForKey:@"CurrentBandwidth"];
    [v351 setObject:v187 forKeyedSubscript:@"CurrentBandwidth"];

    v188 = [(PLEntry *)v346 objectForKey:@"WowEnabled"];
    [v351 setObject:v188 forKeyedSubscript:@"WowEnabled"];

    v189 = [(PLEntry *)v346 objectForKey:@"WifiPowered"];
    [v351 setObject:v189 forKeyedSubscript:@"WifiPowered"];
  }

  v47 = 0x277CCA000uLL;
  v190 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_autoJoinScanDuration];
  [v48 setObject:v190 forKeyedSubscript:@"AutojoinScanDuration"];

  v191 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_locationScanDuration];
  [v48 setObject:v191 forKeyedSubscript:@"LocationScanDuration"];

  v192 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_pipelineScanDuration];
  [v48 setObject:v192 forKeyedSubscript:@"PipelineScanDuration"];

  v193 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_unknownScanDuration];
  [v48 setObject:v193 forKeyedSubscript:@"UnknownScanDuration"];

  v194 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_setupScanDuration];
  [v48 setObject:v194 forKeyedSubscript:@"SetupScanDuration"];

  v41 = v355;
  v45 = v345;
  if (v346)
  {
    v195 = [(PLEntry *)v346 objectForKeyedSubscript:@"AutojoinScanDuration"];
    if (v195)
    {
      v196 = v195;
      v197 = [(PLEntry *)v346 objectForKeyedSubscript:@"LocationScanDuration"];
      if (!v197)
      {

LABEL_224:
        v45 = v345;
        goto LABEL_225;
      }

      v198 = v197;
      v199 = [(PLEntry *)v346 objectForKeyedSubscript:@"PipelineScanDuration"];
      if (v199)
      {
        v200 = v199;
        v201 = [(PLEntry *)v346 objectForKeyedSubscript:@"UnknownScanDuration"];
        if (v201)
        {
          v202 = v201;
          v203 = [(PLEntry *)v346 objectForKeyedSubscript:@"SetupScanDuration"];

          v41 = v355;
          v45 = v345;
          if (!v203)
          {
            goto LABEL_225;
          }

          v204 = [v48 objectForKeyedSubscript:@"AutojoinScanDuration"];
          unsignedLongLongValue = [v204 unsignedLongLongValue];
          v206 = [(PLEntry *)v346 objectForKeyedSubscript:@"AutojoinScanDuration"];
          unsignedLongLongValue2 = [v206 unsignedLongLongValue];

          if (unsignedLongLongValue >= unsignedLongLongValue2)
          {
            v290 = MEMORY[0x277CCABB0];
            v291 = [v48 objectForKeyedSubscript:@"AutojoinScanDuration"];
            unsignedLongLongValue3 = [v291 unsignedLongLongValue];
            v293 = [(PLEntry *)v346 objectForKeyedSubscript:@"AutojoinScanDuration"];
            v294 = [v290 numberWithUnsignedLongLong:{unsignedLongLongValue3 - objc_msgSend(v293, "unsignedLongLongValue")}];
            [v351 setObject:v294 forKeyedSubscript:@"AutojoinScanDuration"];
          }

          else
          {
            [v351 setObject:0 forKeyedSubscript:@"AutojoinScanDuration"];
          }

          v295 = [v48 objectForKeyedSubscript:@"LocationScanDuration"];
          unsignedLongLongValue4 = [v295 unsignedLongLongValue];
          v297 = [(PLEntry *)v346 objectForKeyedSubscript:@"LocationScanDuration"];
          unsignedLongLongValue5 = [v297 unsignedLongLongValue];

          if (unsignedLongLongValue4 >= unsignedLongLongValue5)
          {
            v299 = MEMORY[0x277CCABB0];
            v300 = [v48 objectForKeyedSubscript:@"LocationScanDuration"];
            unsignedLongLongValue6 = [v300 unsignedLongLongValue];
            v302 = [(PLEntry *)v346 objectForKeyedSubscript:@"LocationScanDuration"];
            v303 = [v299 numberWithUnsignedLongLong:{unsignedLongLongValue6 - objc_msgSend(v302, "unsignedLongLongValue")}];
            [v351 setObject:v303 forKeyedSubscript:@"LocationScanDuration"];
          }

          else
          {
            [v351 setObject:0 forKeyedSubscript:@"LocationScanDuration"];
          }

          v304 = [v48 objectForKeyedSubscript:@"PipelineScanDuration"];
          unsignedLongLongValue7 = [v304 unsignedLongLongValue];
          v306 = [(PLEntry *)v346 objectForKeyedSubscript:@"PipelineScanDuration"];
          unsignedLongLongValue8 = [v306 unsignedLongLongValue];

          if (unsignedLongLongValue7 >= unsignedLongLongValue8)
          {
            v308 = MEMORY[0x277CCABB0];
            v309 = [v48 objectForKeyedSubscript:@"PipelineScanDuration"];
            unsignedLongLongValue9 = [v309 unsignedLongLongValue];
            v311 = [(PLEntry *)v346 objectForKeyedSubscript:@"PipelineScanDuration"];
            v312 = [v308 numberWithUnsignedLongLong:{unsignedLongLongValue9 - objc_msgSend(v311, "unsignedLongLongValue")}];
            [v351 setObject:v312 forKeyedSubscript:@"PipelineScanDuration"];
          }

          else
          {
            [v351 setObject:0 forKeyedSubscript:@"PipelineScanDuration"];
          }

          v313 = [v48 objectForKeyedSubscript:@"UnknownScanDuration"];
          unsignedLongLongValue10 = [v313 unsignedLongLongValue];
          v315 = [(PLEntry *)v346 objectForKeyedSubscript:@"UnknownScanDuration"];
          unsignedLongLongValue11 = [v315 unsignedLongLongValue];

          if (unsignedLongLongValue10 >= unsignedLongLongValue11)
          {
            v317 = MEMORY[0x277CCABB0];
            v318 = [v48 objectForKeyedSubscript:@"UnknownScanDuration"];
            unsignedLongLongValue12 = [v318 unsignedLongLongValue];
            v320 = [(PLEntry *)v346 objectForKeyedSubscript:@"UnknownScanDuration"];
            v321 = [v317 numberWithUnsignedLongLong:{unsignedLongLongValue12 - objc_msgSend(v320, "unsignedLongLongValue")}];
            [v351 setObject:v321 forKeyedSubscript:@"UnknownScanDuration"];
          }

          else
          {
            [v351 setObject:0 forKeyedSubscript:@"UnknownScanDuration"];
          }

          v322 = [v48 objectForKeyedSubscript:@"SetupScanDuration"];
          unsignedLongLongValue13 = [v322 unsignedLongLongValue];
          v324 = [(PLEntry *)v346 objectForKeyedSubscript:@"SetupScanDuration"];
          unsignedLongLongValue14 = [v324 unsignedLongLongValue];

          if (unsignedLongLongValue13 < unsignedLongLongValue14)
          {
            [v351 setObject:0 forKeyedSubscript:@"SetupScanDuration"];
            goto LABEL_223;
          }

          v326 = MEMORY[0x277CCABB0];
          v196 = [v48 objectForKeyedSubscript:@"SetupScanDuration"];
          unsignedLongLongValue15 = [v196 unsignedLongLongValue];
          v328 = [(PLEntry *)v346 objectForKeyedSubscript:@"SetupScanDuration"];
          v329 = [v326 numberWithUnsignedLongLong:{unsignedLongLongValue15 - objc_msgSend(v328, "unsignedLongLongValue")}];
          [v351 setObject:v329 forKeyedSubscript:@"SetupScanDuration"];

LABEL_222:
LABEL_223:
          v41 = v355;
          goto LABEL_224;
        }
      }

      goto LABEL_222;
    }
  }

LABEL_225:
  v209 = v344;
  v210 = selfCopy;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v211 = objc_opt_class();
    v386[0] = MEMORY[0x277D85DD0];
    v386[1] = 3221225472;
    v386[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2532;
    v386[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v386[4] = v211;
    v212 = v386;
    if (qword_2811F68B0 != -1)
    {
      dispatch_once(&qword_2811F68B0, v212);
    }

    if (byte_2811F66E6 == 1)
    {
      v213 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last logged data: %@ current data:%@", v346, v48];
      v214 = MEMORY[0x277D3F178];
      v215 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent5 = [v215 lastPathComponent];
      v217 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
      [v214 logMessage:v213 fromFile:lastPathComponent5 fromFunction:v217 fromLineNumber:4364];

      v218 = PLLogCommon();
      if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v410 = v213;
        _os_log_debug_impl(&dword_21A4C6000, v218, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v41 = v355;
      v45 = v345;
      v210 = selfCopy;
    }
  }

  v219 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v344];
  [v48 setObject:v219 forKeyedSubscript:@"READINGTYPE"];

  if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
  {
    [(PLWifiAgent *)v210 setLastEntryForMetricd:v48];
  }

  else
  {
    [(PLOperator *)v210 logEntry:v48];
  }

  v220 = v346;
  if (+[PLWifiAgent isBeaconLoggingEnabled])
  {
    v221 = [v48 objectForKeyedSubscript:@"CurrentChannel"];
    if ([v221 integerValue] >= 1)
    {
      v222 = [v48 objectForKeyedSubscript:@"WifiTimestamp"];
      integerValue6 = [v222 integerValue];
      v224 = [(PLEntry *)v346 objectForKeyedSubscript:@"WifiTimestamp"];
      v225 = [v224 integerValue] + 60000;

      v41 = v355;
      v220 = v346;

      v43 = integerValue6 <= v225;
      v210 = selfCopy;
      v45 = v345;
      if (v43)
      {
        goto LABEL_247;
      }

      v221 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v331];
      v382 = 0u;
      v383 = 0u;
      v384 = 0u;
      v385 = 0u;
      v226 = [obj countByEnumeratingWithState:&v382 objects:v415 count:16];
      if (v226)
      {
        v227 = v226;
        v228 = *v383;
        do
        {
          for (ii = 0; ii != v227; ++ii)
          {
            if (*v383 != v228)
            {
              objc_enumerationMutation(obj);
            }

            v230 = *(*(&v382 + 1) + 8 * ii);
            v231 = [obj objectForKeyedSubscript:v230];
            v232 = [v231 objectAtIndexedSubscript:v344 != 0];
            v233 = [v363 objectForKeyedSubscript:v232];
            integerValue7 = [v233 integerValue];

            v47 = 0x277CCA000uLL;
            v235 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue7];
            [v221 setObject:v235 forKeyedSubscript:v230];
          }

          v227 = [obj countByEnumeratingWithState:&v382 objects:v415 count:16];
        }

        while (v227);
      }

      v48 = v352;
      v236 = [v352 objectForKeyedSubscript:@"WifiTimestamp"];
      [v221 setObject:v236 forKeyedSubscript:@"WifiTimestamp"];

      v210 = selfCopy;
      [(PLOperator *)selfCopy logEntry:v221];
      propertiesCopy = v363;
      v220 = v346;
      v41 = v355;
      v209 = v344;
      v45 = v345;
    }
  }

LABEL_247:
  if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
  {
    v237 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v335];
    v378 = 0u;
    v379 = 0u;
    v380 = 0u;
    v381 = 0u;
    v238 = [v353 countByEnumeratingWithState:&v378 objects:v414 count:16];
    if (v238)
    {
      v239 = v238;
      v240 = *v379;
      do
      {
        for (jj = 0; jj != v239; ++jj)
        {
          if (*v379 != v240)
          {
            objc_enumerationMutation(v353);
          }

          v242 = *(*(&v378 + 1) + 8 * jj);
          v243 = [v353 objectForKeyedSubscript:v242];
          v244 = [v243 objectAtIndexedSubscript:v344 != 0];
          v245 = [v363 objectForKeyedSubscript:v244];
          integerValue8 = [v245 integerValue];

          v47 = 0x277CCA000uLL;
          v247 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue8];
          [v237 setObject:v247 forKeyedSubscript:v242];
        }

        v239 = [v353 countByEnumeratingWithState:&v378 objects:v414 count:16];
      }

      while (v239);
    }

    v48 = v352;
    v248 = [v352 objectForKeyedSubscript:@"WifiTimestamp"];
    [v237 setObject:v248 forKeyedSubscript:@"WifiTimestamp"];

    propertiesCopy = v363;
    v210 = selfCopy;
    v220 = v346;
    v41 = v355;
    v45 = v345;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v249 = objc_opt_class();
      v377[0] = MEMORY[0x277D85DD0];
      v377[1] = 3221225472;
      v377[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2538;
      v377[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v377[4] = v249;
      v250 = v377;
      if (qword_2811F68B8 != -1)
      {
        dispatch_once(&qword_2811F68B8, v250);
      }

      v220 = v346;
      if (byte_2811F66E7 == 1)
      {
        v353 = [MEMORY[0x277CCACA8] stringWithFormat:@" current data:%@ %@", v237, v353];
        v252 = MEMORY[0x277D3F178];
        v253 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent6 = [v253 lastPathComponent];
        v255 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v252 logMessage:v353 fromFile:lastPathComponent6 fromFunction:v255 fromLineNumber:4396];

        v256 = PLLogCommon();
        if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v410 = v353;
          _os_log_debug_impl(&dword_21A4C6000, v256, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v41 = v355;
        v45 = v345;
        v47 = 0x277CCA000;
        v220 = v346;
        v210 = selfCopy;
      }
    }

    [(PLOperator *)v210 logEntry:v237];

    v209 = v344;
  }

  if (+[PLWifiAgent isScanForwardLoggingEnabled])
  {
    v257 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v334];
    v373 = 0u;
    v374 = 0u;
    v375 = 0u;
    v376 = 0u;
    v258 = [v354 countByEnumeratingWithState:&v373 objects:v413 count:16];
    if (v258)
    {
      v259 = v258;
      v260 = v209 != 0;
      v261 = *v374;
      do
      {
        for (kk = 0; kk != v259; ++kk)
        {
          if (*v374 != v261)
          {
            objc_enumerationMutation(v354);
          }

          v263 = *(*(&v373 + 1) + 8 * kk);
          v264 = [v354 objectForKeyedSubscript:v263];
          v265 = [v264 objectAtIndexedSubscript:v260];
          v266 = [v363 objectForKeyedSubscript:v265];
          integerValue9 = [v266 integerValue];

          v47 = 0x277CCA000uLL;
          v268 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue9];
          [v257 setObject:v268 forKeyedSubscript:v263];
        }

        v259 = [v354 countByEnumeratingWithState:&v373 objects:v413 count:16];
      }

      while (v259);
    }

    v48 = v352;
    v269 = [v352 objectForKeyedSubscript:@"WifiTimestamp"];
    [v257 setObject:v269 forKeyedSubscript:@"WifiTimestamp"];

    v210 = selfCopy;
    v220 = v346;
    v41 = v355;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v270 = objc_opt_class();
      v372[0] = MEMORY[0x277D85DD0];
      v372[1] = 3221225472;
      v372[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2544;
      v372[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v372[4] = v270;
      v271 = v372;
      if (qword_2811F68C0 != -1)
      {
        dispatch_once(&qword_2811F68C0, v271);
      }

      v220 = v346;
      if (byte_2811F66E8 == 1)
      {
        v354 = [MEMORY[0x277CCACA8] stringWithFormat:@"ScanForward current data: %@ %@", v257, v354];
        v273 = MEMORY[0x277D3F178];
        v274 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent7 = [v274 lastPathComponent];
        v276 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v273 logMessage:v354 fromFile:lastPathComponent7 fromFunction:v276 fromLineNumber:4410];

        v277 = PLLogCommon();
        if (os_log_type_enabled(v277, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v410 = v354;
          _os_log_debug_impl(&dword_21A4C6000, v277, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v41 = v355;
        v47 = 0x277CCA000;
        v220 = v346;
        v210 = selfCopy;
      }
    }

    v278 = PLLogWifi();
    propertiesCopy = v363;
    if (os_log_type_enabled(v278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v410 = v257;
      v411 = 2112;
      v412 = v354;
      _os_log_debug_impl(&dword_21A4C6000, v278, OS_LOG_TYPE_DEBUG, "ScanForward current data: %@ %@", buf, 0x16u);
    }

    [(PLOperator *)v210 logEntry:v257];
    v45 = v345;
  }

  v42 = v342;
  if (v220)
  {
    v279 = [v351 objectForKeyedSubscript:@"TimeDuration"];
    integerValue10 = [v279 integerValue];

    v43 = integerValue10 < 1;
    v42 = v342;
    if (!v43)
    {
      if (v45 != 1)
      {
        v281 = [v351 objectForKeyedSubscript:@"TimeDuration"];
        v282 = [v281 integerValue] / 1000.0;

        entryDate = [v351 entryDate];
        entryDate2 = [(PLEntry *)v346 entryDate];
        [entryDate timeIntervalSinceDate:entryDate2];
        v286 = v285;

        v42 = v342;
        if (v282 < v286)
        {
          v287 = MEMORY[0x277CBEAA8];
          entryDate3 = [(PLEntry *)v346 entryDate];
          v289 = [v287 dateWithTimeInterval:entryDate3 sinceDate:v282];
          [v351 setEntryDate:v289];

          v42 = v342;
        }
      }

      if (powerCopy)
      {
        [(PLWifiAgent *)v210 modelWiFiPower:v351];
      }
    }
  }

  if (v45 != 1)
  {
    v208 = v48;

    if (!v208)
    {
      v346 = 0;
      v44 = 0;
      goto LABEL_293;
    }

    v57 = [(PLEntry *)v208 objectForKeyedSubscript:@"WifiTimestamp"];
    [v57 unsignedIntegerValue];
    v44 = 0;
    goto LABEL_291;
  }

LABEL_310:
  v330 = *MEMORY[0x277D85DE8];
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E2 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2505(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E3 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2517(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E4 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2526(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E5 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2532(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E6 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2538(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E7 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2544(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E8 = result;
  return result;
}

uint64_t __31__PLWifiAgent_wifiChipsetQuery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66E9 = result;
  return result;
}

uint64_t __36__PLWifiAgent_wifiManufacturerQuery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66EA = result;
  return result;
}

uint64_t __36__PLWifiAgent_wifiManufacturerQuery__block_invoke_2622(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66EB = result;
  return result;
}

- (void)modelWiFiPower:(id)power
{
  v495 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v5 = [powerCopy objectForKeyedSubscript:@"WifiPowered"];

    if (!v5)
    {
      entryDate = [powerCopy entryDate];
      v57 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
      [v57 doubleValue];
      [(PLWifiAgent *)self modelWiFiSegmentPower:entryDate withDataPower:0.0 withIdlePower:0.0 withLocationPower:0.0 withPipelinePower:0.0 withTotalDuration:v58 / 1000.0];
LABEL_88:

      goto LABEL_89;
    }

    v6 = 0x277D3F000;
    if (([MEMORY[0x277D3F208] isWiFiClass:1004002] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004003))
    {
      v7 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
      [v10 doubleValue];
      v485 = v11;

      v12 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
      [v12 doubleValue];
      v481 = v13;

      v14 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
      [v14 doubleValue];
      v478 = v15;

      v16 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
      [v16 doubleValue];
      v475 = v17;

      v18 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
      [v18 doubleValue];
      v473 = v19;

      v20 = [powerCopy objectForKeyedSubscript:@"HSICActiveDuration"];
      [v20 doubleValue];
      v470 = v21;

      v22 = [powerCopy objectForKeyedSubscript:@"AssociatedScanDuration"];
      [v22 doubleValue];
      v24 = v23;
      v25 = [powerCopy objectForKeyedSubscript:@"OtherScanDuration"];
      [v25 doubleValue];
      v27 = v26;
      v28 = [powerCopy objectForKeyedSubscript:@"PNOBSSIDDuration"];
      [v28 doubleValue];
      v30 = v29;
      v31 = [powerCopy objectForKeyedSubscript:@"PNOScanSSIDDuration"];
      [v31 doubleValue];
      v33 = v32;
      v34 = [powerCopy objectForKeyedSubscript:@"RoamScanDuration"];
      [v34 doubleValue];
      v36 = v35;
      v37 = [powerCopy objectForKeyedSubscript:@"SetupScanDuration"];
      [v37 doubleValue];
      v39 = v38;
      [powerCopy objectForKeyedSubscript:@"UserScanDuration"];
      v41 = v40 = self;
      [v41 doubleValue];
      v43 = v42;

      self = v40;
      v44 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
      [v44 doubleValue];
      v467 = v45;

      v46 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
      wifiChipsetQuery = [(PLWifiAgent *)v40 wifiChipsetQuery];
      v48 = [v46 objectForKeyedSubscript:wifiChipsetQuery];
      wifiManufacturerQuery = [(PLWifiAgent *)v40 wifiManufacturerQuery];
      v50 = [v48 objectForKeyedSubscript:wifiManufacturerQuery];

      if (v9 >= 0.0)
      {
        v59 = v24 + v27 + v30 + v33 + v36 + v39 + v43;
        v60 = @"5";
        if (v9 != 0.0)
        {
          v61 = @"2.4";
          if (v9 > 11.0)
          {
            v61 = @"5";
          }

          v60 = v61;
        }

        v62 = [v50 objectForKeyedSubscript:v60];
        v63 = [v62 objectForKeyedSubscript:@"tx"];
        [v63 doubleValue];
        v65 = v64;

        v66 = [v50 objectForKeyedSubscript:v60];
        v67 = [v66 objectForKeyedSubscript:@"rx"];
        [v67 doubleValue];
        v69 = v68;

        v70 = [v50 objectForKeyedSubscript:v60];
        v71 = [v70 objectForKeyedSubscript:@"cs"];
        [v71 doubleValue];
        v73 = v72;

        v74 = [v50 objectForKeyedSubscript:v60];
        v75 = [v74 objectForKeyedSubscript:@"hsic"];
        [v75 doubleValue];
        v77 = v76;

        v78 = v478 - v485 - v481 - v475 - v473;
        if (v78 < 0.0)
        {
          v78 = 0.0;
        }

        v79 = v78 * v73;
        v80 = v470 + v481 + v485 + v59 - v478;
        if (v80 < 0.0)
        {
          v80 = 0.0;
        }

        v81 = v80 * v77;
        v82 = v475 * v65 + v473 * v69;
        v54 = v82 + v79 + v81;
        v83 = v467 - v473 - v475;
        if (v83 < 0.0)
        {
          v83 = 0.0;
        }

        v84 = v82 + v81 + v83 * v73;
        if (v9 == 0.0)
        {
          v55 = 0.0;
        }

        else
        {
          v55 = v84;
        }
      }

      else
      {
        v51 = [v50 objectForKeyedSubscript:@"scan"];
        [v51 doubleValue];
        v53 = v52;

        v54 = (v478 - v485 - v481) * v53;
        v55 = 0.0;
      }
    }

    else
    {
      if (([MEMORY[0x277D3F208] isWiFiClass:1004006] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004004) & 1) == 0 && !objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004008))
      {
        if ([MEMORY[0x277D3F208] kPLWiFiClassIsOneOf:{1004005, 1004007, 1004010, 1004013, 1004014, 1004015, 1004016, 1004017, 1004018, 0}])
        {
          v193 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
          [v193 doubleValue];
          v479 = v194;

          v195 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
          [v195 doubleValue];
          v197 = v196;

          v198 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
          [v198 doubleValue];
          v200 = v199;

          v201 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
          [v201 doubleValue];
          v203 = v202;

          v204 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
          [v204 doubleValue];
          v483 = v205;

          v206 = [powerCopy objectForKeyedSubscript:@"MIMOTXDuration"];
          [v206 doubleValue];
          v208 = v207;

          v209 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
          [v209 doubleValue];
          v211 = v210;

          v212 = [powerCopy objectForKeyedSubscript:@"MIMORXDuration"];
          [v212 doubleValue];
          v214 = v213;

          v215 = [powerCopy objectForKeyedSubscript:@"SISORXDuration"];
          [v215 doubleValue];

          v216 = [powerCopy objectForKeyedSubscript:@"MIMOCSDuration"];
          [v216 doubleValue];
          v218 = v217;

          v219 = [powerCopy objectForKeyedSubscript:@"SISOCSDuration"];
          [v219 doubleValue];

          v220 = [powerCopy objectForKeyedSubscript:@"OCLCSDuration"];
          [v220 doubleValue];
          v463 = v221;

          v474 = 0.0;
          if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
          {
            v222 = [powerCopy objectForKeyedSubscript:@"SCRXDurationSISO"];
            [v222 doubleValue];
            v474 = v223;
          }

          v224 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
          [v224 doubleValue];
          v468 = v225;

          if (v214 <= v211)
          {
            v226 = v214;
          }

          else
          {
            v226 = v211;
          }

          v465 = v226;
          if (v208 <= v483)
          {
            v227 = v208;
          }

          else
          {
            v227 = v483;
          }

          if (v203 - v211 - v483 - v197 - v200 >= 0.0)
          {
            v228 = v203 - v211 - v483 - v197 - v200;
          }

          else
          {
            v228 = 0.0;
          }

          if (v218 > v228)
          {
            v218 = v228;
          }

          v229 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
          wifiChipsetQuery2 = [(PLWifiAgent *)self wifiChipsetQuery];
          v476 = v229;
          v231 = [v229 objectForKeyedSubscript:wifiChipsetQuery2];
          wifiManufacturerQuery2 = [(PLWifiAgent *)self wifiManufacturerQuery];
          v233 = [v231 objectForKeyedSubscript:wifiManufacturerQuery2];

          if (v479 >= 0.0)
          {
            v472 = v233;
            selfCopy = self;
            v280 = @"5";
            if (v479 != 0.0)
            {
              v281 = @"2.4";
              if (v479 > 11.0)
              {
                v281 = @"5";
              }

              v280 = v281;
            }

            v282 = [powerCopy objectForKeyedSubscript:@"CurrentBandwidth"];
            [v282 doubleValue];
            v284 = v283;

            if (v284)
            {
              v285 = v284;
            }

            else
            {
              v285 = 20;
            }

            v285 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v285];
            v287 = [v233 objectForKeyedSubscript:v280];
            v288 = [v287 objectForKeyedSubscript:v285];
            v289 = [v288 objectForKeyedSubscript:@"mimo_tx"];
            [v289 doubleValue];
            v453 = v290;

            v291 = [v233 objectForKeyedSubscript:v280];
            v292 = [v291 objectForKeyedSubscript:v285];
            v293 = [v292 objectForKeyedSubscript:@"mimo_rx"];
            [v293 doubleValue];
            v451 = v294;

            v295 = [v233 objectForKeyedSubscript:v280];
            v296 = [v295 objectForKeyedSubscript:v285];
            v297 = [v296 objectForKeyedSubscript:@"mimo_cs"];
            [v297 doubleValue];
            v457 = v298;

            v299 = [v233 objectForKeyedSubscript:v280];
            v300 = [v299 objectForKeyedSubscript:v285];
            v301 = [v300 objectForKeyedSubscript:@"siso_tx"];
            [v301 doubleValue];
            v449 = v302;

            v303 = [v233 objectForKeyedSubscript:v280];
            v304 = [v303 objectForKeyedSubscript:v285];
            v305 = [v304 objectForKeyedSubscript:@"siso_rx"];
            [v305 doubleValue];
            v447 = v306;

            v307 = [v233 objectForKeyedSubscript:v280];
            v308 = [v307 objectForKeyedSubscript:v285];
            v309 = [v308 objectForKeyedSubscript:@"siso_cs"];
            [v309 doubleValue];
            v461 = v310;

            v311 = [v233 objectForKeyedSubscript:v280];
            v312 = [v311 objectForKeyedSubscript:v285];
            v313 = [v312 objectForKeyedSubscript:@"ocl_cs"];
            [v313 doubleValue];
            v445 = v314;

            v315 = 0.0;
            if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
            {
              v316 = [v233 objectForKeyedSubscript:v280];
              v317 = [v316 objectForKeyedSubscript:@"sc"];
              [v317 doubleValue];
              v315 = v318;
            }

            v455 = v227;
            v319 = v483 - v227;
            v320 = v211 - v465;
            self = selfCopy;
            v459 = v218;
            if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
            {
              v321 = v320 * v447 + v465 * v451;
              v6 = 0x277D3F000;
              v237 = v476;
            }

            else
            {
              v367 = [powerCopy objectForKeyedSubscript:@"OPSFullDuration"];
              [v367 doubleValue];
              v369 = v368;

              v370 = [powerCopy objectForKeyedSubscript:@"OPSPartialDuration"];
              [v370 doubleValue];
              v372 = v371;

              if (v369 >= 0.0)
              {
                v373 = v369;
              }

              else
              {
                v373 = 0.0;
              }

              v443 = v373;
              if (v372 >= 0.0)
              {
                v374 = v372;
              }

              else
              {
                v374 = 0.0;
              }

              v375 = [v233 objectForKeyedSubscript:v280];
              v376 = [v375 objectForKeyedSubscript:v285];
              v377 = [v376 objectForKeyedSubscript:@"ops_full"];
              [v377 doubleValue];
              v441 = v378;

              v379 = [v233 objectForKeyedSubscript:v280];
              v380 = [v379 objectForKeyedSubscript:v285];
              v381 = [v380 objectForKeyedSubscript:@"ops_partial"];
              [v381 doubleValue];
              v383 = v382;

              v384 = v320 * v447;
              v237 = v476;
              if (v465 <= v443 + v374)
              {
                v321 = v384 + v465 * v451;
              }

              else
              {
                v321 = v384 + (v465 - v443 - v374) * v451 + v374 * v383 + v443 * v441;
              }

              self = selfCopy;
              v6 = 0x277D3F000uLL;
              v218 = v459;
            }

            v403 = v319 * v449;
            v404 = v228 - v218;
            if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100020) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v463 > v218)
            {
              v405 = v457;
              v406 = v404 * v461 + v218 * v457;
            }

            else
            {
              v405 = v457;
              v406 = v463 * v445 + (v218 - v463) * v457 + v404 * v461;
            }

            v407 = v403 + v455 * v453;
            if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
            {
              v408 = 0.0;
            }

            else
            {
              v408 = v474 * v315;
            }

            if ([*(v6 + 384) debugEnabled])
            {
              v409 = objc_opt_class();
              v492[0] = MEMORY[0x277D85DD0];
              v492[1] = 3221225472;
              v492[2] = __30__PLWifiAgent_modelWiFiPower___block_invoke;
              v492[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v492[4] = v409;
              if (qword_2811F68E0 != -1)
              {
                dispatch_once(&qword_2811F68E0, v492);
              }

              if (byte_2811F66EC == 1)
              {
                v410 = [MEMORY[0x277CCACA8] stringWithFormat:@"txE = %f, rxE = %f, csE = %f, scE = %f", *&v407, *&v321, *&v406, *&v408];
                v411 = MEMORY[0x277D3F178];
                v412 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                lastPathComponent = [v412 lastPathComponent];
                v414 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
                [v411 logMessage:v410 fromFile:lastPathComponent fromFunction:v414 fromLineNumber:4984];

                v415 = PLLogCommon();
                if (os_log_type_enabled(v415, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *&buf[4] = v410;
                  _os_log_debug_impl(&dword_21A4C6000, v415, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                self = selfCopy;
                v6 = 0x277D3F000;
                v237 = v476;
              }
            }

            v416 = v407 + v321;
            v417 = v416 + v406;
            if (v468 - v211 - v483 >= 0.0)
            {
              v418 = v468 - v211 - v483;
            }

            else
            {
              v418 = 0.0;
            }

            v419 = [MEMORY[0x277D3F208] isWiFiClass:1004005];
            if (v418 >= v459)
            {
              if ((v419 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v463 > v418)
              {
                v420 = (v418 - v459) * v461 + v459 * v405;
              }

              else
              {
                v420 = v463 * v445 + (v459 - v463) * v405 + (v418 - v459) * v461;
              }
            }

            else if ((v419 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v463 > v418)
            {
              v420 = v418 * v405;
            }

            else
            {
              v420 = v463 * v445 + (v418 - v463) * v405;
            }

            v54 = v417 + v408;
            if (v420 < 0.0)
            {
              v420 = 0.0;
            }

            v421 = v416 + v420;
            if (v479 == 0.0)
            {
              v55 = 0.0;
            }

            else
            {
              v55 = v421;
            }

            v233 = v472;
          }

          else
          {
            v234 = [v233 objectForKeyedSubscript:{@"scan", v479}];
            [v234 doubleValue];
            v236 = v235;

            v54 = (v203 - v197 - v200) * v236;
            v55 = 0.0;
            v237 = v476;
          }

          goto LABEL_44;
        }

        v55 = 0.0;
        v54 = 0.0;
        if (![MEMORY[0x277D3F208] isWiFiClass:1004019])
        {
LABEL_44:
          v139 = [powerCopy objectForKeyedSubscript:@"LocationScanDuration"];
          [v139 doubleValue];
          v141 = v140;

          v142 = [powerCopy objectForKeyedSubscript:@"PipelineScanDuration"];
          [v142 doubleValue];
          v144 = v143;

          entryDate = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
          wifiChipset = [(PLWifiAgent *)self wifiChipset];
          v146 = [entryDate objectForKeyedSubscript:wifiChipset];
          wifiManufacturer = [(PLWifiAgent *)self wifiManufacturer];
          v57 = [v146 objectForKeyedSubscript:wifiManufacturer];

          v148 = [v57 objectForKeyedSubscript:@"scan"];
          [v148 doubleValue];
          v150 = v149;

          v151 = v141 * v150;
          v152 = v141 <= 0.0;
          v153 = 0.0;
          if (v152)
          {
            v154 = 0.0;
          }

          else
          {
            v154 = v151;
          }

          if (v144 <= 0.0)
          {
            v155 = 0.0;
          }

          else
          {
            v155 = v144 * v150;
          }

          v156 = v54 - v55 - v154 - v155;
          if (v55 < 0.0)
          {
            v55 = 0.0;
          }

          if (v156 >= 0.0)
          {
            v157 = v156;
          }

          else
          {
            v157 = 0.0;
          }

          v158 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
          [v158 doubleValue];
          v160 = v159;

          v161 = 0.0;
          v162 = 0.0;
          v163 = 0.0;
          v164 = 0.0;
          if (v160 > 0.0)
          {
            if (v155 >= 0.0)
            {
              v165 = v155;
            }

            else
            {
              v165 = 0.0;
            }

            if (v154 >= 0.0)
            {
              v166 = v154;
            }

            else
            {
              v166 = 0.0;
            }

            if (v54 >= 0.0)
            {
              v167 = v54;
            }

            else
            {
              v167 = 0.0;
            }

            v153 = v167 / v160;
            v162 = v166 / v160;
            v152 = v167 <= v55;
            v163 = v165 / v160;
            if (v152)
            {
              if (v153 <= v162 + v163)
              {
                v161 = 0.0;
              }

              else
              {
                v161 = v153 - v162 - v163;
              }
            }

            else
            {
              v161 = v55 / v160;
              v164 = v157 / v160;
            }
          }

          v168 = v161;
          v169 = v163;
          v170 = v162;
          if ([*(v6 + 384) debugEnabled])
          {
            v171 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __30__PLWifiAgent_modelWiFiPower___block_invoke_2688;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v171;
            if (qword_2811F68F0 != -1)
            {
              dispatch_once(&qword_2811F68F0, block);
            }

            if (byte_2811F66EE == 1)
            {
              selfCopy2 = self;
              v173 = [MEMORY[0x277CCACA8] stringWithFormat:@"wifi_power = %f, wifi_power_data = %f, wifi_power_location = %f, wifi_power_wow = %f, wifi_power_idle = %f", *&v153, *&v168, *&v170, 0, *&v164];
              v174 = MEMORY[0x277D3F178];
              v175 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent2 = [v175 lastPathComponent];
              v177 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
              [v174 logMessage:v173 fromFile:lastPathComponent2 fromFunction:v177 fromLineNumber:5292];

              v178 = PLLogCommon();
              if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v173;
                _os_log_debug_impl(&dword_21A4C6000, v178, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              self = selfCopy2;
            }
          }

          if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
          {
            entryDate2 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MetricMonitorInstantKeys"];
            v180 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:entryDate2];
            v181 = [MEMORY[0x277CCABB0] numberWithDouble:v153];
            [v180 setObject:v181 forKeyedSubscript:@"WifiPower"];
            if ([(PLWifiAgent *)self wifiAwdlDevice])
            {
              *buf = 0;
              selfCopy3 = self;
              [(PLWifiAgent *)self wifiAwdlDevice];
              WiFiDeviceClientCopyInterfaceStateInfo();
              v182 = *buf;
              if (*buf)
              {
                v183 = [*buf objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];

                if (v183)
                {
                  v184 = MEMORY[0x277CCABB0];
                  v185 = [v182 objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
                  v186 = [v184 numberWithInt:{objc_msgSend(v185, "intValue")}];
                  [v180 setObject:v186 forKeyedSubscript:@"AWDLDown"];
                }

                v187 = [v182 objectForKeyedSubscript:@"RANGING_ACTIVE_SESSION"];

                if (v187)
                {
                  v188 = MEMORY[0x277CCABB0];
                  v189 = [v182 objectForKeyedSubscript:@"RANGING_ACTIVE_SESSION"];
                  v190 = [v188 numberWithInt:{objc_msgSend(v189, "intValue")}];
                  [v180 setObject:v190 forKeyedSubscript:@"AWDLRanging"];
                }
              }

              self = selfCopy3;
            }

            v493 = v180;
            v191 = [MEMORY[0x277CBEA60] arrayWithObjects:&v493 count:1];
            [(PLOperator *)self postEntries:v191];
          }

          else
          {
            entryDate2 = [powerCopy entryDate];
            [(PLWifiAgent *)self modelWiFiSegmentPower:entryDate2 withDataPower:v168 withIdlePower:v164 withLocationPower:v170 withPipelinePower:v169 withTotalDuration:v160 / 1000.0];
          }

          goto LABEL_88;
        }

        v238 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
        [v238 doubleValue];
        v480 = v239;

        v240 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
        [v240 doubleValue];
        v242 = v241;

        v243 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
        [v243 doubleValue];
        v245 = v244;

        v246 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
        [v246 doubleValue];
        v248 = v247;

        v249 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
        [v249 doubleValue];
        v484 = v250;

        v251 = [powerCopy objectForKeyedSubscript:@"MIMOTXDuration"];
        [v251 doubleValue];
        v253 = v252;

        v254 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
        [v254 doubleValue];
        v256 = v255;

        v257 = [powerCopy objectForKeyedSubscript:@"MIMORXDuration"];
        [v257 doubleValue];
        v259 = v258;

        v260 = [powerCopy objectForKeyedSubscript:@"SISORXDuration"];
        [v260 doubleValue];

        v261 = [powerCopy objectForKeyedSubscript:@"MIMOCSDuration"];
        [v261 doubleValue];
        v263 = v262;

        v264 = [powerCopy objectForKeyedSubscript:@"SISOCSDuration"];
        [v264 doubleValue];

        v265 = [powerCopy objectForKeyedSubscript:@"OCLCSDuration"];
        [v265 doubleValue];
        v466 = v266;

        v477 = 0.0;
        if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
        {
          v267 = [powerCopy objectForKeyedSubscript:@"SCRXDurationSISO"];
          [v267 doubleValue];
          v477 = v268;
        }

        v269 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
        [v269 doubleValue];
        v471 = v270;

        if (v259 <= v256)
        {
          v271 = v259;
        }

        else
        {
          v271 = v256;
        }

        v469 = v271;
        if (v253 <= v484)
        {
          v272 = v253;
        }

        else
        {
          v272 = v484;
        }

        if (v248 - v256 - v484 - v242 - v245 >= 0.0)
        {
          v273 = v248 - v256 - v484 - v242 - v245;
        }

        else
        {
          v273 = 0.0;
        }

        if (v263 > v273)
        {
          v263 = v273;
        }

        v46 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
        wifiChipsetQuery3 = [(PLWifiAgent *)self wifiChipsetQuery];
        v275 = [v46 objectForKeyedSubscript:wifiChipsetQuery3];
        v276 = [v275 objectForKeyedSubscript:@"usi"];

        if (v480 >= 0.0)
        {
          v462 = v46;
          selfCopy4 = self;
          v322 = @"5";
          if (v480 != 0.0)
          {
            v323 = @"2.4";
            if (v480 > 11.0)
            {
              v323 = @"5";
            }

            v322 = v323;
          }

          v324 = [powerCopy objectForKeyedSubscript:@"CurrentBandwidth"];
          [v324 doubleValue];
          v326 = v325;

          v327 = [(__CFString *)v322 isEqualToString:@"2.4"];
          if (v326)
          {
            v328 = v327;
          }

          else
          {
            v328 = 1;
          }

          if (v328)
          {
            v329 = 20;
          }

          else
          {
            v329 = v326;
          }

          v329 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v329];
          [v276 objectForKeyedSubscript:v322];
          v332 = v331 = v276;
          v333 = [v332 objectForKeyedSubscript:v329];
          v334 = [v333 objectForKeyedSubscript:@"mimo_tx"];
          [v334 doubleValue];
          v454 = v335;

          v336 = [v331 objectForKeyedSubscript:v322];
          v337 = [v336 objectForKeyedSubscript:v329];
          v338 = [v337 objectForKeyedSubscript:@"mimo_rx"];
          [v338 doubleValue];
          v452 = v339;

          v340 = [v331 objectForKeyedSubscript:v322];
          v341 = [v340 objectForKeyedSubscript:v329];
          v342 = [v341 objectForKeyedSubscript:@"mimo_cs"];
          [v342 doubleValue];
          v458 = v343;

          v344 = [v331 objectForKeyedSubscript:v322];
          v345 = [v344 objectForKeyedSubscript:v329];
          v346 = [v345 objectForKeyedSubscript:@"siso_tx"];
          [v346 doubleValue];
          v450 = v347;

          v348 = [v331 objectForKeyedSubscript:v322];
          v349 = [v348 objectForKeyedSubscript:v329];
          v350 = [v349 objectForKeyedSubscript:@"siso_rx"];
          [v350 doubleValue];
          v448 = v351;

          v352 = [v331 objectForKeyedSubscript:v322];
          v353 = [v352 objectForKeyedSubscript:v329];
          v354 = [v353 objectForKeyedSubscript:@"siso_cs"];
          [v354 doubleValue];
          v464 = v355;

          v356 = [v331 objectForKeyedSubscript:v322];
          v357 = [v356 objectForKeyedSubscript:v329];
          v358 = [v357 objectForKeyedSubscript:@"ocl_cs"];
          [v358 doubleValue];
          v446 = v359;

          v360 = 0.0;
          if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
          {
            v361 = [v331 objectForKeyedSubscript:v322];
            v362 = [v361 objectForKeyedSubscript:@"sc"];
            [v362 doubleValue];
            v360 = v363;
          }

          v456 = v272;
          v364 = v484 - v272;
          v365 = v256 - v469;
          self = selfCopy4;
          v460 = v263;
          if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
          {
            v366 = v365 * v448 + v469 * v452;
            v6 = 0x277D3F000;
            v276 = v331;
          }

          else
          {
            v385 = [powerCopy objectForKeyedSubscript:@"OPSFullDuration"];
            [v385 doubleValue];
            v387 = v386;

            v388 = [powerCopy objectForKeyedSubscript:@"OPSPartialDuration"];
            [v388 doubleValue];
            v390 = v389;

            if (v387 >= 0.0)
            {
              v391 = v387;
            }

            else
            {
              v391 = 0.0;
            }

            v444 = v391;
            if (v390 >= 0.0)
            {
              v392 = v390;
            }

            else
            {
              v392 = 0.0;
            }

            v393 = [v331 objectForKeyedSubscript:v322];
            v394 = [v393 objectForKeyedSubscript:v329];
            v395 = [v394 objectForKeyedSubscript:@"ops_full"];
            [v395 doubleValue];
            v442 = v396;

            v397 = [v331 objectForKeyedSubscript:v322];
            v398 = [v397 objectForKeyedSubscript:v329];
            v399 = [v398 objectForKeyedSubscript:@"ops_partial"];
            [v399 doubleValue];
            v401 = v400;

            v402 = v365 * v448;
            if (v469 <= v444 + v392)
            {
              v366 = v402 + v469 * v452;
            }

            else
            {
              v366 = v402 + (v469 - v444 - v392) * v452 + v392 * v401 + v444 * v442;
            }

            self = selfCopy4;
            v6 = 0x277D3F000uLL;
            v276 = v331;
            v263 = v460;
          }

          v422 = v364 * v450;
          v423 = v273 - v263;
          if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100020) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v466 > v263)
          {
            v424 = v458;
            v425 = v423 * v464 + v263 * v458;
          }

          else
          {
            v424 = v458;
            v425 = v466 * v446 + (v263 - v466) * v458 + v423 * v464;
          }

          v426 = v422 + v456 * v454;
          if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
          {
            v427 = 0.0;
          }

          else
          {
            v427 = v477 * v360;
          }

          if ([*(v6 + 384) debugEnabled])
          {
            v428 = objc_opt_class();
            v491[0] = MEMORY[0x277D85DD0];
            v491[1] = 3221225472;
            v491[2] = __30__PLWifiAgent_modelWiFiPower___block_invoke_2685;
            v491[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v491[4] = v428;
            if (qword_2811F68E8 != -1)
            {
              dispatch_once(&qword_2811F68E8, v491);
            }

            if (byte_2811F66ED == 1)
            {
              v429 = [MEMORY[0x277CCACA8] stringWithFormat:@"txE = %f, rxE = %f, csE = %f, scE = %f", *&v426, *&v366, *&v425, *&v427];
              v430 = MEMORY[0x277D3F178];
              v431 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent3 = [v431 lastPathComponent];
              v433 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
              [v430 logMessage:v429 fromFile:lastPathComponent3 fromFunction:v433 fromLineNumber:5175];

              v434 = PLLogCommon();
              if (os_log_type_enabled(v434, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v429;
                _os_log_debug_impl(&dword_21A4C6000, v434, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              self = selfCopy4;
              v6 = 0x277D3F000;
              v46 = v462;
              v276 = v331;
            }
          }

          v435 = v426 + v366;
          v436 = v435 + v425;
          if (v471 - v256 - v484 >= 0.0)
          {
            v437 = v471 - v256 - v484;
          }

          else
          {
            v437 = 0.0;
          }

          v438 = [MEMORY[0x277D3F208] isWiFiClass:1004005];
          if (v437 >= v460)
          {
            if ((v438 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v466 > v437)
            {
              v439 = (v437 - v460) * v464 + v460 * v424;
            }

            else
            {
              v439 = v466 * v446 + (v460 - v466) * v424 + (v437 - v460) * v464;
            }
          }

          else if ((v438 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v466 > v437)
          {
            v439 = v437 * v424;
          }

          else
          {
            v439 = v466 * v446 + (v437 - v466) * v424;
          }

          v54 = v436 + v427;
          if (v439 < 0.0)
          {
            v439 = 0.0;
          }

          v440 = v435 + v439;
          if (v480 == 0.0)
          {
            v55 = 0.0;
          }

          else
          {
            v55 = v440;
          }
        }

        else
        {
          v277 = [v276 objectForKeyedSubscript:{@"scan", v480}];
          [v277 doubleValue];
          v279 = v278;

          v54 = (v248 - v242 - v245) * v279;
          v55 = 0.0;
        }

LABEL_43:
        goto LABEL_44;
      }

      v85 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
      [v85 doubleValue];
      v87 = v86;

      v88 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
      [v88 doubleValue];
      v90 = v89;

      v91 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
      [v91 doubleValue];
      v93 = v92;

      v94 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
      [v94 doubleValue];
      v96 = v95;

      v97 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
      [v97 doubleValue];
      v99 = v98;

      v100 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
      [v100 doubleValue];
      v102 = v101;

      v103 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
      [v103 doubleValue];
      v105 = v104;

      v46 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
      wifiChipsetQuery4 = [(PLWifiAgent *)self wifiChipsetQuery];
      v107 = [v46 objectForKeyedSubscript:wifiChipsetQuery4];
      wifiManufacturerQuery3 = [(PLWifiAgent *)self wifiManufacturerQuery];
      v50 = [v107 objectForKeyedSubscript:wifiManufacturerQuery3];

      if (v87 < 0.0)
      {
        v109 = [v50 objectForKeyedSubscript:@"scan"];
        [v109 doubleValue];
        v111 = v110;

        v54 = (v96 - v90 - v93) * v111;
        v55 = 0.0;
LABEL_42:

        goto LABEL_43;
      }

      v482 = v105;
      v486 = v90;
      selfCopy5 = self;
      v113 = @"5";
      if (v87 != 0.0)
      {
        v114 = @"2.4";
        if (v87 > 11.0)
        {
          v114 = @"5";
        }

        v113 = v114;
      }

      v115 = [powerCopy objectForKeyedSubscript:@"CurrentBandwidth"];
      [v115 doubleValue];
      v117 = v116;

      if (v117)
      {
        v118 = v117;
      }

      else
      {
        v118 = 20;
      }

      v118 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v118];
      v120 = [v50 objectForKeyedSubscript:v113];
      v121 = [v120 objectForKeyedSubscript:v118];
      v122 = [v121 objectForKeyedSubscript:@"tx"];
      [v122 doubleValue];
      v124 = v123;

      v125 = [v50 objectForKeyedSubscript:v113];
      v126 = [v125 objectForKeyedSubscript:v118];
      v127 = [v126 objectForKeyedSubscript:@"rx"];
      [v127 doubleValue];
      v129 = v128;

      v130 = [v50 objectForKeyedSubscript:v113];
      v131 = [v130 objectForKeyedSubscript:v118];
      v132 = [v131 objectForKeyedSubscript:@"cs"];
      [v132 doubleValue];
      v134 = v133;

      v135 = v96 - v486 - v93 - v99 - v102;
      v55 = 0.0;
      if (v135 < 0.0)
      {
        v135 = 0.0;
      }

      v136 = v135 * v134;
      v137 = v99 * v124 + v102 * v129;
      if (v87 != 0.0)
      {
        v138 = v482 - v102 - v99;
        if (v138 < 0.0)
        {
          v138 = 0.0;
        }

        v55 = v137 + v138 * v134;
      }

      v54 = v137 + v136;

      self = selfCopy5;
    }

    v6 = 0x277D3F000uLL;
    goto LABEL_42;
  }

LABEL_89:

  v192 = *MEMORY[0x277D85DE8];
}

uint64_t __30__PLWifiAgent_modelWiFiPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66EC = result;
  return result;
}

uint64_t __30__PLWifiAgent_modelWiFiPower___block_invoke_2685(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66ED = result;
  return result;
}

uint64_t __30__PLWifiAgent_modelWiFiPower___block_invoke_2688(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F66EE = result;
  return result;
}

- (void)modelWiFiSegmentPower:(id)power withDataPower:(double)dataPower withIdlePower:(double)idlePower withLocationPower:(double)locationPower withPipelinePower:(double)pipelinePower withTotalDuration:(double)duration
{
  powerCopy = power;
  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if ((isHomePod & 1) == 0)
  {
    isHomePod = [powerCopy timeIntervalSince1970];
    v17 = v16;
    if (self->_wifi_segment_lastWrittenDate)
    {
      wifi_segment_lastWrittenTimestamp = self->_wifi_segment_lastWrittenTimestamp;
      v19 = self->_wifi_segment_timestamp - wifi_segment_lastWrittenTimestamp;
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      if (v19 > 0.0)
      {
        v23 = v19 * self->_wifi_segment_power_data;
        v20 = v19 * self->_wifi_segment_power_idle;
        v21 = v19 * self->_wifi_segment_power_location;
        v22 = v19 * self->_wifi_segment_power_pipeline;
      }

      v24 = v17 - wifi_segment_lastWrittenTimestamp;
      if (v24 > 0.0)
      {
        self->_wifi_segment_power_data = (v23 + dataPower * duration) / v24;
        self->_wifi_segment_power_idle = (v20 + idlePower * duration) / v24;
        self->_wifi_segment_power_location = (v21 + locationPower * duration) / v24;
        self->_wifi_segment_power_pipeline = (v22 + pipelinePower * duration) / v24;
        objc_storeStrong(&self->_wifi_segment_date, power);
        self->_wifi_segment_timestamp = v17;
      }
    }

    else
    {
      objc_storeStrong(&self->_wifi_segment_lastWrittenDate, power);
      self->_wifi_segment_lastWrittenTimestamp = v17;
      objc_storeStrong(&self->_wifi_segment_date, power);
      self->_wifi_segment_timestamp = self->_wifi_segment_lastWrittenTimestamp;
      self->_wifi_segment_power_data = dataPower;
      self->_wifi_segment_power_idle = idlePower;
      self->_wifi_segment_power_location = locationPower;
      self->_wifi_segment_power_pipeline = pipelinePower;
    }
  }

  MEMORY[0x2821F96F8](isHomePod);
}

- (void)handleRemoteSessionCallbackWithUserInfo:(id)info
{
  v3 = [info objectForKey:@"entry"];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 objectForKeyedSubscript:@"event"];

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    entryDate = [v7 entryDate];
    if (v4)
    {
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:11 withRemovingChildNodeName:@"ScreenContinuityShell" withStartDate:entryDate];
    }

    else
    {
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:11 withAddingChildNodeName:@"ScreenContinuityShell" withStartDate:entryDate];
    }

    v3 = v7;
  }
}

@end
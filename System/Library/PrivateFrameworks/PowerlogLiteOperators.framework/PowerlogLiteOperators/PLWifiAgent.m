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
- (unint64_t)getCurrentChannelWidth:(__WiFiNetwork *)a3;
- (void)findWifiDevice;
- (void)handleRemoteSessionCallbackWithUserInfo:(id)a3;
- (void)initOperatorDependancies;
- (void)log;
- (void)logAWDLStateEntry:(id)a3;
- (void)logEventBackwardControlCPUPowerStats;
- (void)logEventBackwardUserScanDuration;
- (void)logEventBackwardWifiProperties:(id)a3 withNetworkProperties:(id)a4 shallModelPower:(BOOL)a5;
- (void)logEventForwardAWDLState:(id)a3;
- (void)logEventForwardHotspotState:(id)a3;
- (void)logEventForwardModuleInfo;
- (void)logEventForwardRSSI:(id)a3;
- (void)logEventPointAWDLServicesAndPorts;
- (void)logEventPointJoin:(unsigned __int8)a3 withStats:(id)a4;
- (void)logEventPointRemoteControlSession:(id)a3;
- (void)logEventPointWake:(id)a3;
- (void)logEventPointWakeDataFrame:(id)a3 withParams:(id)a4 toEntry:(id)a5;
- (void)logEventPointWakeLink:(id)a3 withParams:(id)a4 toEntry:(id)a5;
- (void)logEventPointWakePNO:(id)a3 withParams:(id)a4 toEntry:(id)a5;
- (void)logFromAJCallback:(id)a3 withFlag:(unsigned __int8)a4 withStats:(id)a5;
- (void)logFromLinkChangeCallback:(id)a3 withStats:(id)a4;
- (void)modelWiFiPower:(id)a3;
- (void)modelWiFiSegmentPower:(id)a3 withDataPower:(double)a4 withIdlePower:(double)a5 withLocationPower:(double)a6 withPipelinePower:(double)a7 withTotalDuration:(double)a8;
- (void)setWiFiAWDLDevice:(__WiFiDeviceClient *)a3;
- (void)setWiFiHotspotDevice:(__WiFiDeviceClient *)a3;
- (void)setWifiDevice:(__WiFiDeviceClient *)a3;
- (void)setWifiManager:(__WiFiManagerClient *)a3;
- (void)updateEventBackwardUserScanDuration:(id)a3;
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
  v3 = [(PLWifiAgent *)self wifiManager];
  if (v3)
  {
    LOBYTE(v3) = [(PLWifiAgent *)self wifiDevice]!= 0;
  }

  return v3;
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
  v3 = [(PLWifiAgent *)self isWowSupported];
  if (v3)
  {
    [(PLWifiAgent *)self wifiManager];
    LOBYTE(v3) = WiFiManagerClientGetWoWState() != 0;
  }

  return v3;
}

- (BOOL)isWowSupported
{
  v3 = [(PLWifiAgent *)self hasWiFi];
  if (v3)
  {
    [(PLWifiAgent *)self wifiManager];
    LOBYTE(v3) = WiFiManagerClientGetWoWCapability() != 0;
  }

  return v3;
}

- (BOOL)isWiFiPowered
{
  v3 = [(PLWifiAgent *)self hasWiFi];
  if (v3)
  {
    [(PLWifiAgent *)self wifiDevice];
    LOBYTE(v3) = WiFiDeviceClientGetPower() != 0;
  }

  return v3;
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
  v5 = [(PLOperator *)self storage];
  v6 = [v5 lastEntryForKey:v4];

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
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiChipsetQuery]"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:4589];

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
    v15 = [v14 intValue];

    v16 = 0;
    if (v15 > 17459)
    {
      if (v15 > 31010)
      {
        if (v15 > 48411)
        {
          if (v15 == 48412)
          {
            v24 = @"4324";
            goto LABEL_54;
          }

          v17 = 48417;
          goto LABEL_44;
        }

        if (v15 == 31011)
        {
          v24 = @"31011";
          goto LABEL_54;
        }

        if (v15 != 48410)
        {
          goto LABEL_19;
        }

        v24 = @"4334";
      }

      else if (v15 > 17543)
      {
        if (v15 == 17544)
        {
          v24 = @"4377";
          goto LABEL_54;
        }

        if (v15 != 18347)
        {
          goto LABEL_19;
        }

        v24 = @"43452";
      }

      else
      {
        if (v15 == 17460)
        {
          v24 = @"4388";
          goto LABEL_54;
        }

        if (v15 != 17489)
        {
          goto LABEL_19;
        }

        v24 = @"4399";
      }
    }

    else if (v15 > 17371)
    {
      if (v15 > 17444)
      {
        if (v15 == 17445)
        {
          v24 = @"4378";
          goto LABEL_54;
        }

        if (v15 != 17459)
        {
          goto LABEL_19;
        }

        v24 = @"4387";
      }

      else
      {
        if (v15 == 17372)
        {
          v24 = @"4355";
          goto LABEL_54;
        }

        if (v15 != 17418)
        {
          goto LABEL_19;
        }

        v24 = @"4357";
      }
    }

    else
    {
      if (v15 <= 17314)
      {
        if (v15 == 1)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
          goto LABEL_54;
        }

        v17 = 17204;
LABEL_44:
        if (v15 == v17)
        {
          v24 = @"43342";
          goto LABEL_54;
        }

LABEL_19:

        goto LABEL_57;
      }

      if (v15 == 17315)
      {
        v24 = @"4350";
        goto LABEL_54;
      }

      if (v15 != 17323)
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
    v21 = [v20 lastPathComponent];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiChipsetQuery]"];
    [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:4652];

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
  v2 = self;
  v48 = *MEMORY[0x277D85DE8];
  wifiManufacturer = self->_wifiManufacturer;
  if (!wifiManufacturer)
  {
    v4 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ModuleInfo"];
    v5 = [(PLOperator *)v2 storage];
    v6 = [v5 lastEntryForKey:v4];

    if (!v6)
    {
LABEL_37:

      wifiManufacturer = v2->_wifiManufacturer;
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
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiManufacturerQuery]"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:4666];

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
    v36 = v2;
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
      v2 = v36;
    }

    else
    {
      v2 = v36;
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
      v29 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiManufacturerQuery]"];
      [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:4687];

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
    v32 = v2->_wifiManufacturer;
    v2->_wifiManufacturer = &v24->isa;

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
        v33 = self;
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
        [(PLOperator *)v33 logEntry:v30];

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

    v3 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v3 createPowerEventBackwardWithRootNodeID:11 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_data];

    v4 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v4 createPowerEventBackwardWithRootNodeID:53 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_idle];

    v5 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v5 createPowerEventBackwardWithRootNodeID:12 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_location];

    v6 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v6 createPowerEventBackwardWithRootNodeID:13 withPower:self->_wifi_segment_date withEndDate:self->_wifi_segment_power_pipeline];

    objc_storeStrong(&self->_wifi_segment_lastWrittenDate, self->_wifi_segment_date);
    self->_wifi_segment_lastWrittenTimestamp = self->_wifi_segment_timestamp;
  }
}

+ (void)load
{
  v2.receiver = a1;
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
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v10 = v4;
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
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_StringFormat];
  v35[0] = v27;
  v34[1] = @"WakeTime";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_RealFormat];
  v35[1] = v25;
  v34[2] = @"PID";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v35[2] = v23;
  v34[3] = @"ProcessName";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat_withProcessName];
  v35[3] = v21;
  v34[4] = @"WakeLen";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v35[4] = v19;
  v34[5] = @"spi";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v35[5] = v17;
  v34[6] = @"seqNo";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v35[6] = v5;
  v34[7] = @"TCPKAWakeReason";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v35[7] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:8];
  v39[1] = v8;
  v38[2] = *MEMORY[0x277D3F500];
  v32[0] = @"value";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v32[1] = @"unit";
  v33[0] = v10;
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
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v31[0] = v27;
  v30[1] = @"Reason";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v31[1] = v25;
  v30[2] = @"LPM_LPAS_POWER_BUDGET_REMAINING";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v31[2] = v23;
  v30[3] = @"LPM_POWER_CONSUMPTION_DUE_TO_FRTS";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v31[3] = v21;
  v30[4] = @"LPM_POWER_CONSUMPTION_DUE_TO_MAC";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v31[4] = v19;
  v30[5] = @"LPM_POWER_CONSUMPTION_DUE_TO_RF";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v31[5] = v17;
  v30[6] = @"LPM_POWER_CONSUMPTION_DUE_TO_ROAM_SCAN";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v31[6] = v15;
  v30[7] = @"LPM_POWER_CONSUMPTION_DUE_TO_USER_SCAN";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v31[7] = v4;
  v30[8] = @"LPM_POWER_CONSUMPTION_IN_SELF_MANAGED_LPAS";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v31[8] = v6;
  v30[9] = @"LPM_TOTAL_LPAS_DURATION";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v31[9] = v8;
  v30[10] = @"LPM_TOTAL_LPAS_POWER_PERIOD_REMAINING";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v31[10] = v10;
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
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_BoolFormat];
  v20[0] = v16;
  v19[1] = @"BundleID";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_StringFormat_withBundleID];
  v20[1] = v14;
  v19[2] = @"ConnectionID";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_StringFormat];
  v20[2] = v3;
  v19[3] = @"DeviceType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[3] = v5;
  v19[4] = @"Reason";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v20[4] = v7;
  v19[5] = @"TransportType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v20[5] = v9;
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
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v24[0] = v20;
  v23[1] = @"port_2";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v24[1] = v18;
  v23[2] = @"port_3";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v24[2] = v16;
  v23[3] = @"port_4";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v24[3] = v14;
  v23[4] = @"service_1";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_StringFormat];
  v24[4] = v3;
  v23[5] = @"service_2";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v24[5] = v5;
  v23[6] = @"service_3";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v24[6] = v7;
  v23[7] = @"service_4";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v24[7] = v9;
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
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_StringFormat];
  v16[0] = v3;
  v15[1] = @"ManufacturerId";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"ModuleInfo";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v16[2] = v7;
  v15[3] = @"ProductId";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v16[3] = v9;
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
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
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
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v12[1] = @"ADHS";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v13[1] = v7;
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
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v12[1] = @"AWDLRanging";
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
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
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
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_IntegerFormat];
  v73[0] = v69;
  v72[1] = @"AutoJoinCount";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_IntegerFormat];
  v73[1] = v67;
  v72[2] = @"AutoJoinDidFindCandidateCount";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_IntegerFormat];
  v73[2] = v65;
  v72[3] = @"AutoJoinRetryCount";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_IntegerFormat];
  v73[3] = v63;
  v72[4] = @"CombinedScanChannelCount";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_IntegerFormat];
  v73[4] = v61;
  v72[5] = @"CombinedScanChannelCount2ghz";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_IntegerFormat];
  v73[5] = v59;
  v72[6] = @"CombinedScanChannelCount5ghz";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_IntegerFormat];
  v73[6] = v57;
  v72[7] = @"GasQueryCount";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_IntegerFormat];
  v73[7] = v55;
  v72[8] = @"AutoHotspotCount";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_IntegerFormat];
  v73[8] = v53;
  v72[9] = @"Unlocked";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_IntegerFormat];
  v73[9] = v51;
  v72[10] = @"CountryCodeChanged";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_IntegerFormat];
  v73[10] = v49;
  v72[11] = @"KnownNetworkAdded";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_IntegerFormat];
  v73[11] = v47;
  v72[12] = @"LinkDown";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_IntegerFormat];
  v73[12] = v45;
  v72[13] = @"AssocFailure";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_IntegerFormat];
  v73[13] = v43;
  v72[14] = @"Retry";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_IntegerFormat];
  v73[14] = v41;
  v72[15] = @"PowerOn";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_IntegerFormat];
  v73[15] = v39;
  v72[16] = @"AjEnabled";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_IntegerFormat];
  v73[16] = v37;
  v72[17] = @"Manual";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_IntegerFormat];
  v73[17] = v35;
  v72[18] = @"DarkWake";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v73[18] = v33;
  v72[19] = @"UserWake";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_IntegerFormat];
  v73[19] = v31;
  v72[20] = @"CallEnded";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v73[20] = v29;
  v72[21] = @"PlaybackEnded";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v73[21] = v27;
  v72[22] = @"DeviceUnlocked";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v73[22] = v25;
  v72[23] = @"Registration";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v73[23] = v23;
  v72[24] = @"AppState";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v73[24] = v21;
  v72[25] = @"MaintWake";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v73[25] = v19;
  v72[26] = @"NetServiceInactive";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v73[26] = v17;
  v72[27] = @"BssidChanged";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v73[27] = v15;
  v72[28] = @"Retry(fg)";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v73[28] = v4;
  v72[29] = @"Retry(inactive)";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v73[29] = v6;
  v72[30] = @"CombinedScanChannelCount6ghz";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v73[30] = v8;
  v72[31] = @"Followup6ghzScanChannelCount";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v73[31] = v10;
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
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat_withUnit_ms];
    v31[0] = v27;
    v30[1] = @"Duration5G";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat_withUnit_ms];
    v31[1] = v25;
    v30[2] = @"Duration6G";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat_withUnit_ms];
    v31[2] = v23;
    v30[3] = @"Count2G";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v31[3] = v21;
    v30[4] = @"Count5G";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v31[4] = v19;
    v30[5] = @"Count6G";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v31[5] = v17;
    v30[6] = @"CountActive";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v31[6] = v15;
    v30[7] = @"CountPassive";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v31[7] = v5;
    v30[8] = @"Count2GSC";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v31[8] = v7;
    v30[9] = @"Count5GSC";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v31[9] = v9;
    v30[10] = @"Count6GSC";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v31[10] = v11;
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
  if ([a1 isScanForwardLoggingEnabled])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_282C1CA28;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"ScanForwardCurrentBSSS";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat_withUnit_ms];
    v14[0] = v4;
    v13[1] = @"ScanForwardForwardedBSSS";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat_withUnit_ms];
    v14[1] = v6;
    v13[2] = @"ScanForwardTotalSPMIMSGS";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat_withUnit_ms];
    v14[2] = v8;
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
  v71 = [MEMORY[0x277D3F198] sharedInstance];
  v70 = [v71 commonTypeDict_IntegerFormat];
  v74[0] = v70;
  v73[1] = @"WarmSleepCount";
  v69 = [MEMORY[0x277D3F198] sharedInstance];
  v68 = [v69 commonTypeDict_IntegerFormat];
  v74[1] = v68;
  v73[2] = @"AwakeCount";
  v67 = [MEMORY[0x277D3F198] sharedInstance];
  v66 = [v67 commonTypeDict_IntegerFormat];
  v74[2] = v66;
  v73[3] = @"AwakeL3Count";
  v65 = [MEMORY[0x277D3F198] sharedInstance];
  v64 = [v65 commonTypeDict_IntegerFormat];
  v74[3] = v64;
  v73[4] = @"DeepSleepDuration";
  v63 = [MEMORY[0x277D3F198] sharedInstance];
  v62 = [v63 commonTypeDict_IntegerFormat];
  v74[4] = v62;
  v73[5] = @"WarmSleepDuration";
  v61 = [MEMORY[0x277D3F198] sharedInstance];
  v60 = [v61 commonTypeDict_IntegerFormat];
  v74[5] = v60;
  v73[6] = @"AwakeDuration";
  v59 = [MEMORY[0x277D3F198] sharedInstance];
  v58 = [v59 commonTypeDict_IntegerFormat];
  v74[6] = v58;
  v73[7] = @"AwakeL3Duration";
  v57 = [MEMORY[0x277D3F198] sharedInstance];
  v56 = [v57 commonTypeDict_IntegerFormat];
  v74[7] = v56;
  v73[8] = @"CCPUIdleDuration";
  v55 = [MEMORY[0x277D3F198] sharedInstance];
  v54 = [v55 commonTypeDict_IntegerFormat];
  v74[8] = v54;
  v73[9] = @"WiFiUMACIdleDuration";
  v53 = [MEMORY[0x277D3F198] sharedInstance];
  v52 = [v53 commonTypeDict_IntegerFormat];
  v74[9] = v52;
  v73[10] = @"WiFiPHY2GIdleDuration";
  v51 = [MEMORY[0x277D3F198] sharedInstance];
  v50 = [v51 commonTypeDict_IntegerFormat];
  v74[10] = v50;
  v73[11] = @"WiFiPHY5GIdleDuration";
  v49 = [MEMORY[0x277D3F198] sharedInstance];
  v48 = [v49 commonTypeDict_IntegerFormat];
  v74[11] = v48;
  v73[12] = @"WiFiTXIdleDuration";
  v47 = [MEMORY[0x277D3F198] sharedInstance];
  v46 = [v47 commonTypeDict_IntegerFormat];
  v74[12] = v46;
  v73[13] = @"WiFiRXIdleDuration";
  v45 = [MEMORY[0x277D3F198] sharedInstance];
  v44 = [v45 commonTypeDict_IntegerFormat];
  v74[13] = v44;
  v73[14] = @"WiFiLMACCommonIdleDuration";
  v43 = [MEMORY[0x277D3F198] sharedInstance];
  v42 = [v43 commonTypeDict_IntegerFormat];
  v74[14] = v42;
  v73[15] = @"WiFiLMAC2GIdleDuration";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_IntegerFormat];
  v74[15] = v40;
  v73[16] = @"WiFiLMAC5GIdleDuration";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_IntegerFormat];
  v74[16] = v38;
  v73[17] = @"WiFiScanIdleDuration";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_IntegerFormat];
  v74[17] = v36;
  v73[18] = @"BTMainIdleDuration";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_IntegerFormat];
  v74[18] = v34;
  v73[19] = @"BTSecondaryIdleDuration";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_IntegerFormat];
  v74[19] = v32;
  v73[20] = @"BTScanIdleDuration";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_IntegerFormat];
  v74[20] = v30;
  v73[21] = @"BTPHY2GIdleDuration";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v74[21] = v28;
  v73[22] = @"BTPHY5GIdleDuration";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_IntegerFormat];
  v74[22] = v26;
  v73[23] = @"PCIeL0EntryCount";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v74[23] = v24;
  v73[24] = @"PCIeL1EntryCount";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_IntegerFormat];
  v74[24] = v22;
  v73[25] = @"PCIeL1Dot1EntryCount";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v74[25] = v20;
  v73[26] = @"PCIeL1Dot2EntryCount";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v74[26] = v18;
  v73[27] = @"PCIeL3EntryCount";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v74[27] = v16;
  v73[28] = @"PCIeL0Duration";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v74[28] = v14;
  v73[29] = @"PCIeL1Duration";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v74[29] = v3;
  v73[30] = @"PCIeL1Dot1Duration";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v74[30] = v5;
  v73[31] = @"PCIeL1Dot2Duration";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v74[31] = v7;
  v73[32] = @"PCIeL3Duration";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v74[32] = v9;
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
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v29[0] = v25;
    v28[1] = @"ADHSDynamicStateCount";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v29[1] = v23;
    v28[2] = @"ADHSLowPowerStateCount";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v29[2] = v21;
    v28[3] = @"ADHSOffStateCount";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v29[3] = v19;
    v28[4] = @"ADHSTXPackets";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v29[4] = v17;
    v28[5] = @"ADHSRXPackets";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v29[5] = v15;
    v28[6] = @"ADHSActiveStateDuration";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat_withUnit_ms];
    v29[6] = v4;
    v28[7] = @"ADHSDynamicStateDuration";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat_withUnit_ms];
    v29[7] = v6;
    v28[8] = @"ADHSLowPowerStateDuration";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat_withUnit_ms];
    v29[8] = v8;
    v28[9] = @"ADHSOffStateDuration";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat_withUnit_ms];
    v29[9] = v10;
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
  if (([MEMORY[0x277D3F208] isMac] & 1) != 0 || !objc_msgSend(a1, "isBeaconLoggingEnabled"))
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
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v20[0] = v16;
    v19[1] = @"MissedBeacon";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v20[1] = v5;
    v19[2] = @"ReceivedBeacon";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v20[2] = v7;
    v19[3] = @"TrimmedBeacon";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v20[3] = v9;
    v19[4] = @"WifiTimestamp";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v20[4] = v11;
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
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat_withUnit_ms];
  v19[0] = v15;
  v18[1] = @"LocationScanDuration";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat_withUnit_ms];
  v19[1] = v4;
  v18[2] = @"PipelineScanDuration";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat_withUnit_ms];
  v19[2] = v6;
  v18[3] = @"SetupScanDuration";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat_withUnit_ms];
  v19[3] = v8;
  v18[4] = @"UnknownScanDuration";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat_withUnit_ms];
  v19[4] = v10;
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
  v205 = [MEMORY[0x277D3F198] sharedInstance];
  v203 = [v205 commonTypeDict_IntegerFormat_withUnit_s];
  v220[0] = v203;
  v219[1] = @"PMDuration";
  v201 = [MEMORY[0x277D3F198] sharedInstance];
  v199 = [v201 commonTypeDict_IntegerFormat_withUnit_s];
  v220[1] = v199;
  v219[2] = @"MPCDuration";
  v197 = [MEMORY[0x277D3F198] sharedInstance];
  v195 = [v197 commonTypeDict_IntegerFormat_withUnit_s];
  v220[2] = v195;
  v219[3] = @"TXDuration";
  v193 = [MEMORY[0x277D3F198] sharedInstance];
  v191 = [v193 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[3] = v191;
  v219[4] = @"RXDuration";
  v189 = [MEMORY[0x277D3F198] sharedInstance];
  v187 = [v189 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[4] = v187;
  v219[5] = @"HSICSuspendDuration";
  v185 = [MEMORY[0x277D3F198] sharedInstance];
  v183 = [v185 commonTypeDict_IntegerFormat_withUnit_s];
  v220[5] = v183;
  v219[6] = @"HSICActiveDuration";
  v181 = [MEMORY[0x277D3F198] sharedInstance];
  v179 = [v181 commonTypeDict_IntegerFormat_withUnit_s];
  v220[6] = v179;
  v219[7] = @"PNOScanSSIDDuration";
  v177 = [MEMORY[0x277D3F198] sharedInstance];
  v175 = [v177 commonTypeDict_IntegerFormat_withUnit_s];
  v220[7] = v175;
  v219[8] = @"PNOBSSIDDuration";
  v173 = [MEMORY[0x277D3F198] sharedInstance];
  v171 = [v173 commonTypeDict_IntegerFormat_withUnit_s];
  v220[8] = v171;
  v219[9] = @"RoamScanDuration";
  v169 = [MEMORY[0x277D3F198] sharedInstance];
  v167 = [v169 commonTypeDict_IntegerFormat_withUnit_s];
  v220[9] = v167;
  v219[10] = @"AssociatedScanDuration";
  v165 = [MEMORY[0x277D3F198] sharedInstance];
  v163 = [v165 commonTypeDict_IntegerFormat_withUnit_s];
  v220[10] = v163;
  v219[11] = @"OtherScanDuration";
  v161 = [MEMORY[0x277D3F198] sharedInstance];
  v159 = [v161 commonTypeDict_IntegerFormat_withUnit_s];
  v220[11] = v159;
  v219[12] = @"UserScanDuration";
  v157 = [MEMORY[0x277D3F198] sharedInstance];
  v155 = [v157 commonTypeDict_IntegerFormat_withUnit_s];
  v220[12] = v155;
  v219[13] = @"FRTSDuration";
  v153 = [MEMORY[0x277D3F198] sharedInstance];
  v151 = [v153 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[13] = v151;
  v219[14] = @"PCIESuspendDuration";
  v149 = [MEMORY[0x277D3F198] sharedInstance];
  v147 = [v149 commonTypeDict_IntegerFormat_withUnit_us];
  v220[14] = v147;
  v219[15] = @"PCIEActiveDuration";
  v145 = [MEMORY[0x277D3F198] sharedInstance];
  v143 = [v145 commonTypeDict_IntegerFormat_withUnit_us];
  v220[15] = v143;
  v219[16] = @"PCIEPERSTDuration";
  v141 = [MEMORY[0x277D3F198] sharedInstance];
  v139 = [v141 commonTypeDict_IntegerFormat_withUnit_us];
  v220[16] = v139;
  v219[17] = @"PCIEL0Count";
  v137 = [MEMORY[0x277D3F198] sharedInstance];
  v135 = [v137 commonTypeDict_IntegerFormat];
  v220[17] = v135;
  v219[18] = @"PCIEL0Duration";
  v133 = [MEMORY[0x277D3F198] sharedInstance];
  v131 = [v133 commonTypeDict_IntegerFormat_withUnit_us];
  v220[18] = v131;
  v219[19] = @"PCIEL2Count";
  v129 = [MEMORY[0x277D3F198] sharedInstance];
  v127 = [v129 commonTypeDict_IntegerFormat];
  v220[19] = v127;
  v219[20] = @"PCIEL2Duration";
  v125 = [MEMORY[0x277D3F198] sharedInstance];
  v123 = [v125 commonTypeDict_IntegerFormat_withUnit_us];
  v220[20] = v123;
  v219[21] = @"PCIEL1Count";
  v121 = [MEMORY[0x277D3F198] sharedInstance];
  v119 = [v121 commonTypeDict_IntegerFormat];
  v220[21] = v119;
  v219[22] = @"PCIEL1Duration";
  v117 = [MEMORY[0x277D3F198] sharedInstance];
  v115 = [v117 commonTypeDict_IntegerFormat_withUnit_us];
  v220[22] = v115;
  v219[23] = @"PCIEL11Count";
  v113 = [MEMORY[0x277D3F198] sharedInstance];
  v111 = [v113 commonTypeDict_IntegerFormat];
  v220[23] = v111;
  v219[24] = @"PCIEL11Duration";
  v109 = [MEMORY[0x277D3F198] sharedInstance];
  v107 = [v109 commonTypeDict_IntegerFormat_withUnit_us];
  v220[24] = v107;
  v219[25] = @"PCIEL12Count";
  v105 = [MEMORY[0x277D3F198] sharedInstance];
  v103 = [v105 commonTypeDict_IntegerFormat];
  v220[25] = v103;
  v219[26] = @"PCIEL12Duration";
  v101 = [MEMORY[0x277D3F198] sharedInstance];
  v99 = [v101 commonTypeDict_IntegerFormat_withUnit_us];
  v220[26] = v99;
  v219[27] = @"AWDLTXDuration";
  v97 = [MEMORY[0x277D3F198] sharedInstance];
  v95 = [v97 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[27] = v95;
  v219[28] = @"AWDLRXDuration";
  v93 = [MEMORY[0x277D3F198] sharedInstance];
  v91 = [v93 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[28] = v91;
  v219[29] = @"AWDLAWDuration";
  v89 = [MEMORY[0x277D3F198] sharedInstance];
  v87 = [v89 commonTypeDict_IntegerFormat_withUnit_s];
  v220[29] = v87;
  v219[30] = @"AWDLScanDuration";
  v85 = [MEMORY[0x277D3F198] sharedInstance];
  v83 = [v85 commonTypeDict_IntegerFormat_withUnit_s];
  v220[30] = v83;
  v219[31] = @"AutojoinScanDuration";
  v81 = [MEMORY[0x277D3F198] sharedInstance];
  v79 = [v81 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[31] = v79;
  v219[32] = @"LocationScanDuration";
  v77 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v77 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[32] = v75;
  v219[33] = @"PipelineScanDuration";
  v73 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v73 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[33] = v71;
  v219[34] = @"SetupScanDuration";
  v69 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v69 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[34] = v67;
  v219[35] = @"UnknownScanDuration";
  v65 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v65 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[35] = v63;
  v219[36] = @"CurrentChannel";
  v61 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v61 commonTypeDict_IntegerFormat];
  v220[36] = v59;
  v219[37] = @"CurrentSSID";
  v57 = [MEMORY[0x277D3F198] sharedInstance];
  v56 = [v57 commonTypeDict_StringFormat];
  v220[37] = v56;
  v219[38] = @"CurrentBandwidth";
  v55 = [MEMORY[0x277D3F198] sharedInstance];
  v54 = [v55 commonTypeDict_IntegerFormat];
  v220[38] = v54;
  v219[39] = @"WifiPowered";
  v53 = [MEMORY[0x277D3F198] sharedInstance];
  v52 = [v53 commonTypeDict_BoolFormat];
  v220[39] = v52;
  v219[40] = @"WowEnabled";
  v51 = [MEMORY[0x277D3F198] sharedInstance];
  v50 = [v51 commonTypeDict_BoolFormat];
  v220[40] = v50;
  v219[41] = @"Carplay";
  v49 = [MEMORY[0x277D3F198] sharedInstance];
  v48 = [v49 commonTypeDict_BoolFormat];
  v220[41] = v48;
  v219[42] = @"SISOTXDuration";
  v47 = [MEMORY[0x277D3F198] sharedInstance];
  v46 = [v47 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[42] = v46;
  v219[43] = @"MIMOTXDuration";
  v45 = [MEMORY[0x277D3F198] sharedInstance];
  v44 = [v45 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[43] = v44;
  v219[44] = @"MIMORXDuration";
  v43 = [MEMORY[0x277D3F198] sharedInstance];
  v42 = [v43 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[44] = v42;
  v219[45] = @"SISORXDuration";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[45] = v40;
  v219[46] = @"MIMOCSDuration";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[46] = v38;
  v219[47] = @"SISOCSDuration";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[47] = v36;
  v219[48] = @"OCLRXDuration";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[48] = v34;
  v219[49] = @"OCLCSDuration";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[49] = v32;
  v219[50] = @"READINGTYPE";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_IntegerFormat];
  v220[50] = v30;
  v219[51] = @"isADHSConnected";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v220[51] = v28;
  v219[52] = @"AutoHotspotBTScanDuration";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v2 = [v27 commonTypeDict_IntegerFormat_withUnit_s];
  v220[52] = v2;
  v219[53] = @"AutoHotspotBTScanCount";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v220[53] = v4;
  v219[54] = @"OPSFullDuration";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[54] = v6;
  v219[55] = @"OPSPartialDuration";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[55] = v8;
  v219[56] = @"PSBWDuration";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat_withUnit_ms];
  v220[56] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:v219 count:57];
  v208 = [v207 initWithDictionary:v11];

  if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
  {
    v217[0] = @"SCAssocScanCount";
    v206 = [MEMORY[0x277D3F198] sharedInstance];
    v204 = [v206 commonTypeDict_IntegerFormat];
    v218[0] = v204;
    v217[1] = @"SCAssocScanDuration";
    v202 = [MEMORY[0x277D3F198] sharedInstance];
    v200 = [v202 commonTypeDict_IntegerFormat];
    v218[1] = v200;
    v217[2] = @"SCBlankedScanCount";
    v198 = [MEMORY[0x277D3F198] sharedInstance];
    v196 = [v198 commonTypeDict_IntegerFormat];
    v218[2] = v196;
    v217[3] = @"SCIdleDurationSISO";
    v194 = [MEMORY[0x277D3F198] sharedInstance];
    v192 = [v194 commonTypeDict_IntegerFormat];
    v218[3] = v192;
    v217[4] = @"SCPMDuration";
    v190 = [MEMORY[0x277D3F198] sharedInstance];
    v188 = [v190 commonTypeDict_IntegerFormat];
    v218[4] = v188;
    v217[5] = @"SCPNOScanCount";
    v186 = [MEMORY[0x277D3F198] sharedInstance];
    v184 = [v186 commonTypeDict_IntegerFormat];
    v218[5] = v184;
    v217[6] = @"SCPNOScanDuration";
    v182 = [MEMORY[0x277D3F198] sharedInstance];
    v180 = [v182 commonTypeDict_IntegerFormat];
    v218[6] = v180;
    v217[7] = @"SCRoamScanCount";
    v178 = [MEMORY[0x277D3F198] sharedInstance];
    v176 = [v178 commonTypeDict_IntegerFormat];
    v218[7] = v176;
    v217[8] = @"SCRoamScanDuration";
    v174 = [MEMORY[0x277D3F198] sharedInstance];
    v172 = [v174 commonTypeDict_IntegerFormat];
    v218[8] = v172;
    v217[9] = @"SCRXDurationSISO";
    v170 = [MEMORY[0x277D3F198] sharedInstance];
    v168 = [v170 commonTypeDict_IntegerFormat];
    v218[9] = v168;
    v217[10] = @"SCRXMPCDuration";
    v166 = [MEMORY[0x277D3F198] sharedInstance];
    v164 = [v166 commonTypeDict_IntegerFormat];
    v218[10] = v164;
    v217[11] = @"SCTimestamp";
    v162 = [MEMORY[0x277D3F198] sharedInstance];
    v160 = [v162 commonTypeDict_IntegerFormat];
    v218[11] = v160;
    v217[12] = @"SCUserScanCount";
    v158 = [MEMORY[0x277D3F198] sharedInstance];
    v156 = [v158 commonTypeDict_IntegerFormat];
    v218[12] = v156;
    v217[13] = @"SCUserScanDuration";
    v154 = [MEMORY[0x277D3F198] sharedInstance];
    v152 = [v154 commonTypeDict_IntegerFormat];
    v218[13] = v152;
    v217[14] = @"InactivityDuration";
    v150 = [MEMORY[0x277D3F198] sharedInstance];
    v148 = [v150 commonTypeDict_IntegerFormat];
    v218[14] = v148;
    v217[15] = @"InactivityLPBeaconsMissed";
    v146 = [MEMORY[0x277D3F198] sharedInstance];
    v144 = [v146 commonTypeDict_IntegerFormat];
    v218[15] = v144;
    v217[16] = @"InactivityLPBeaconsReceived";
    v142 = [MEMORY[0x277D3F198] sharedInstance];
    v140 = [v142 commonTypeDict_IntegerFormat];
    v218[16] = v140;
    v217[17] = @"InactivityLPBeaconsScheduled";
    v138 = [MEMORY[0x277D3F198] sharedInstance];
    v136 = [v138 commonTypeDict_IntegerFormat];
    v218[17] = v136;
    v217[18] = @"InactivityLPEarlyBeaconsTerminated";
    v134 = [MEMORY[0x277D3F198] sharedInstance];
    v132 = [v134 commonTypeDict_IntegerFormat];
    v218[18] = v132;
    v217[19] = @"InactivityLPWakeDuration";
    v130 = [MEMORY[0x277D3F198] sharedInstance];
    v128 = [v130 commonTypeDict_IntegerFormat];
    v218[19] = v128;
    v217[20] = @"InactivityMPCBeaconsMissed";
    v126 = [MEMORY[0x277D3F198] sharedInstance];
    v124 = [v126 commonTypeDict_IntegerFormat];
    v218[20] = v124;
    v217[21] = @"InactivityMPCBeaconsReceived";
    v122 = [MEMORY[0x277D3F198] sharedInstance];
    v120 = [v122 commonTypeDict_IntegerFormat];
    v218[21] = v120;
    v217[22] = @"InactivityMPCBeaconsScheduled";
    v118 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v118 commonTypeDict_IntegerFormat];
    v218[22] = v116;
    v217[23] = @"InactivityMPEarlyBeaconsTerminated";
    v114 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v114 commonTypeDict_IntegerFormat];
    v218[23] = v112;
    v217[24] = @"InactivityMPWakeDuration";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v108 = [v110 commonTypeDict_IntegerFormat];
    v218[24] = v108;
    v217[25] = @"MulticastRXDuration";
    v106 = [MEMORY[0x277D3F198] sharedInstance];
    v104 = [v106 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[25] = v104;
    v217[26] = @"BroadcastRXDuration";
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v100 = [v102 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[26] = v100;
    v217[27] = @"IBSSRXDuration";
    v98 = [MEMORY[0x277D3F198] sharedInstance];
    v96 = [v98 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[27] = v96;
    v217[28] = @"MBSSRXDuration";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v92 = [v94 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[28] = v92;
    v217[29] = @"OBSSRXDuration";
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v90 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[29] = v88;
    v217[30] = @"MulticastRxBytes";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v86 commonTypeDict_IntegerFormat];
    v218[30] = v84;
    v217[31] = @"MulticastRxPkts";
    v82 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v82 commonTypeDict_IntegerFormat];
    v218[31] = v80;
    v217[32] = @"MulticastRxTotal";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v78 commonTypeDict_IntegerFormat];
    v218[32] = v76;
    v217[33] = @"ExtPhyOfflineDuration2G";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v74 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[33] = v72;
    v217[34] = @"ExtPhyOfflineDuration5G";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v70 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[34] = v68;
    v217[35] = @"ExtPhyOfflineDurationSC";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v66 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[35] = v64;
    v217[36] = @"ExtPhyPowerGateDuration2G";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v62 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[36] = v60;
    v217[37] = @"ExtPhyPowerGateDuration5G";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v58 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[37] = v15;
    v217[38] = @"ExtPhyPowerGateDurationSC";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v16 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[38] = v17;
    v217[39] = @"ExtPhyRXDuration2G";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v18 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[39] = v19;
    v217[40] = @"ExtPhyRXDuration5G";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v20 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[40] = v21;
    v217[41] = @"ExtPhyRXDurationSC";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v22 commonTypeDict_IntegerFormat_withUnit_ms];
    v218[41] = v23;
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
    v3 = [a1 entryEventBackwardDefinitionCumulativeMultiCore];
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
    v528 = [MEMORY[0x277D3F198] sharedInstance];
    v523 = [v528 commonTypeDict_IntegerFormat_withUnit_s];
    v569[0] = v523;
    v568[1] = @"PMDuration";
    v518 = [MEMORY[0x277D3F198] sharedInstance];
    v513 = [v518 commonTypeDict_IntegerFormat_withUnit_s];
    v569[1] = v513;
    v568[2] = @"MPCDuration";
    v508 = [MEMORY[0x277D3F198] sharedInstance];
    v503 = [v508 commonTypeDict_IntegerFormat_withUnit_s];
    v569[2] = v503;
    v568[3] = @"TXDuration";
    v498 = [MEMORY[0x277D3F198] sharedInstance];
    v493 = [v498 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[3] = v493;
    v568[4] = @"RXDuration";
    v488 = [MEMORY[0x277D3F198] sharedInstance];
    v483 = [v488 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[4] = v483;
    v568[5] = @"HSICSuspendDuration";
    v478 = [MEMORY[0x277D3F198] sharedInstance];
    v473 = [v478 commonTypeDict_IntegerFormat_withUnit_s];
    v569[5] = v473;
    v568[6] = @"HSICActiveDuration";
    v468 = [MEMORY[0x277D3F198] sharedInstance];
    v463 = [v468 commonTypeDict_IntegerFormat_withUnit_s];
    v569[6] = v463;
    v568[7] = @"PNOScanSSIDDuration";
    v458 = [MEMORY[0x277D3F198] sharedInstance];
    v453 = [v458 commonTypeDict_IntegerFormat_withUnit_s];
    v569[7] = v453;
    v568[8] = @"PNOBSSIDDuration";
    v448 = [MEMORY[0x277D3F198] sharedInstance];
    v443 = [v448 commonTypeDict_IntegerFormat_withUnit_s];
    v569[8] = v443;
    v568[9] = @"RoamScanDuration";
    v438 = [MEMORY[0x277D3F198] sharedInstance];
    v433 = [v438 commonTypeDict_IntegerFormat_withUnit_s];
    v569[9] = v433;
    v568[10] = @"AssociatedScanDuration";
    v428 = [MEMORY[0x277D3F198] sharedInstance];
    v423 = [v428 commonTypeDict_IntegerFormat_withUnit_s];
    v569[10] = v423;
    v568[11] = @"OtherScanDuration";
    v418 = [MEMORY[0x277D3F198] sharedInstance];
    v413 = [v418 commonTypeDict_IntegerFormat_withUnit_s];
    v569[11] = v413;
    v568[12] = @"UserScanDuration";
    v408 = [MEMORY[0x277D3F198] sharedInstance];
    v403 = [v408 commonTypeDict_IntegerFormat_withUnit_s];
    v569[12] = v403;
    v568[13] = @"FRTSDuration";
    v398 = [MEMORY[0x277D3F198] sharedInstance];
    v393 = [v398 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[13] = v393;
    v568[14] = @"PCIESuspendDuration";
    v388 = [MEMORY[0x277D3F198] sharedInstance];
    v383 = [v388 commonTypeDict_IntegerFormat_withUnit_us];
    v569[14] = v383;
    v568[15] = @"PCIEActiveDuration";
    v378 = [MEMORY[0x277D3F198] sharedInstance];
    v373 = [v378 commonTypeDict_IntegerFormat_withUnit_us];
    v569[15] = v373;
    v568[16] = @"PCIEPERSTDuration";
    v368 = [MEMORY[0x277D3F198] sharedInstance];
    v363 = [v368 commonTypeDict_IntegerFormat_withUnit_us];
    v569[16] = v363;
    v568[17] = @"PCIEL0Count";
    v358 = [MEMORY[0x277D3F198] sharedInstance];
    v353 = [v358 commonTypeDict_IntegerFormat];
    v569[17] = v353;
    v568[18] = @"PCIEL0Duration";
    v348 = [MEMORY[0x277D3F198] sharedInstance];
    v343 = [v348 commonTypeDict_IntegerFormat_withUnit_us];
    v569[18] = v343;
    v568[19] = @"PCIEL2Count";
    v338 = [MEMORY[0x277D3F198] sharedInstance];
    v333 = [v338 commonTypeDict_IntegerFormat];
    v569[19] = v333;
    v568[20] = @"PCIEL2Duration";
    v328 = [MEMORY[0x277D3F198] sharedInstance];
    v323 = [v328 commonTypeDict_IntegerFormat_withUnit_us];
    v569[20] = v323;
    v568[21] = @"PCIEL1Count";
    v318 = [MEMORY[0x277D3F198] sharedInstance];
    v313 = [v318 commonTypeDict_IntegerFormat];
    v569[21] = v313;
    v568[22] = @"PCIEL1Duration";
    v308 = [MEMORY[0x277D3F198] sharedInstance];
    v303 = [v308 commonTypeDict_IntegerFormat_withUnit_us];
    v569[22] = v303;
    v568[23] = @"PCIEL11Count";
    v298 = [MEMORY[0x277D3F198] sharedInstance];
    v293 = [v298 commonTypeDict_IntegerFormat];
    v569[23] = v293;
    v568[24] = @"PCIEL11Duration";
    v288 = [MEMORY[0x277D3F198] sharedInstance];
    v283 = [v288 commonTypeDict_IntegerFormat_withUnit_us];
    v569[24] = v283;
    v568[25] = @"PCIEL12Count";
    v278 = [MEMORY[0x277D3F198] sharedInstance];
    v273 = [v278 commonTypeDict_IntegerFormat];
    v569[25] = v273;
    v568[26] = @"PCIEL12Duration";
    v268 = [MEMORY[0x277D3F198] sharedInstance];
    v263 = [v268 commonTypeDict_IntegerFormat_withUnit_us];
    v569[26] = v263;
    v568[27] = @"AWDLTXDuration";
    v258 = [MEMORY[0x277D3F198] sharedInstance];
    v253 = [v258 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[27] = v253;
    v568[28] = @"AWDLRXDuration";
    v248 = [MEMORY[0x277D3F198] sharedInstance];
    v243 = [v248 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[28] = v243;
    v568[29] = @"AWDLAWDuration";
    v238 = [MEMORY[0x277D3F198] sharedInstance];
    v233 = [v238 commonTypeDict_IntegerFormat_withUnit_s];
    v569[29] = v233;
    v568[30] = @"AWDLScanDuration";
    v228 = [MEMORY[0x277D3F198] sharedInstance];
    v223 = [v228 commonTypeDict_IntegerFormat_withUnit_s];
    v569[30] = v223;
    v568[31] = @"AutojoinScanDuration";
    v218 = [MEMORY[0x277D3F198] sharedInstance];
    v213 = [v218 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[31] = v213;
    v568[32] = @"LocationScanDuration";
    v208 = [MEMORY[0x277D3F198] sharedInstance];
    v203 = [v208 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[32] = v203;
    v568[33] = @"PipelineScanDuration";
    v198 = [MEMORY[0x277D3F198] sharedInstance];
    v193 = [v198 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[33] = v193;
    v568[34] = @"SetupScanDuration";
    v188 = [MEMORY[0x277D3F198] sharedInstance];
    v183 = [v188 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[34] = v183;
    v568[35] = @"UnknownScanDuration";
    v178 = [MEMORY[0x277D3F198] sharedInstance];
    v173 = [v178 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[35] = v173;
    v568[36] = @"CurrentChannel";
    v168 = [MEMORY[0x277D3F198] sharedInstance];
    v163 = [v168 commonTypeDict_IntegerFormat];
    v569[36] = v163;
    v568[37] = @"CurrentSSID";
    v158 = [MEMORY[0x277D3F198] sharedInstance];
    v153 = [v158 commonTypeDict_StringFormat];
    v569[37] = v153;
    v568[38] = @"CurrentBandwidth";
    v148 = [MEMORY[0x277D3F198] sharedInstance];
    v143 = [v148 commonTypeDict_IntegerFormat];
    v569[38] = v143;
    v568[39] = @"WifiPowered";
    v138 = [MEMORY[0x277D3F198] sharedInstance];
    v133 = [v138 commonTypeDict_BoolFormat];
    v569[39] = v133;
    v568[40] = @"WowEnabled";
    v128 = [MEMORY[0x277D3F198] sharedInstance];
    v123 = [v128 commonTypeDict_BoolFormat];
    v569[40] = v123;
    v568[41] = @"Carplay";
    v118 = [MEMORY[0x277D3F198] sharedInstance];
    v113 = [v118 commonTypeDict_BoolFormat];
    v569[41] = v113;
    v568[42] = @"SISOTXDuration";
    v109 = [MEMORY[0x277D3F198] sharedInstance];
    v105 = [v109 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[42] = v105;
    v568[43] = @"MIMOTXDuration";
    v101 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v101 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[43] = v97;
    v568[44] = @"MIMORXDuration";
    v93 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v93 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[44] = v89;
    v568[45] = @"SISORXDuration";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v86 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[45] = v83;
    v568[46] = @"MIMOCSDuration";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v80 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[46] = v77;
    v568[47] = @"SISOCSDuration";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v75 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[47] = v73;
    v568[48] = @"OCLRXDuration";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[48] = v71;
    v568[49] = @"OCLCSDuration";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[49] = v69;
    v568[50] = @"READINGTYPE";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat];
    v569[50] = v67;
    v568[51] = @"isADHSConnected";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_IntegerFormat];
    v569[51] = v65;
    v568[52] = @"AutoHotspotBTScanDuration";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[52] = v5;
    v568[53] = @"AutoHotspotBTScanCount";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v569[53] = v7;
    v568[54] = @"OPSFullDuration";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[54] = v9;
    v568[55] = @"OPSPartialDuration";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat_withUnit_ms];
    v569[55] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v569 forKeys:v568 count:56];
    v573[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v573 forKeys:v572 count:2];

    v3 = v13;
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
    v529 = [MEMORY[0x277D3F198] sharedInstance];
    v524 = [v529 commonTypeDict_IntegerFormat_withUnit_s];
    v563[0] = v524;
    v562[1] = @"PMDuration";
    v519 = [MEMORY[0x277D3F198] sharedInstance];
    v514 = [v519 commonTypeDict_IntegerFormat_withUnit_s];
    v563[1] = v514;
    v562[2] = @"MPCDuration";
    v509 = [MEMORY[0x277D3F198] sharedInstance];
    v504 = [v509 commonTypeDict_IntegerFormat_withUnit_s];
    v563[2] = v504;
    v562[3] = @"TXDuration";
    v499 = [MEMORY[0x277D3F198] sharedInstance];
    v494 = [v499 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[3] = v494;
    v562[4] = @"RXDuration";
    v489 = [MEMORY[0x277D3F198] sharedInstance];
    v484 = [v489 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[4] = v484;
    v562[5] = @"HSICSuspendDuration";
    v479 = [MEMORY[0x277D3F198] sharedInstance];
    v474 = [v479 commonTypeDict_IntegerFormat_withUnit_s];
    v563[5] = v474;
    v562[6] = @"HSICActiveDuration";
    v469 = [MEMORY[0x277D3F198] sharedInstance];
    v464 = [v469 commonTypeDict_IntegerFormat_withUnit_s];
    v563[6] = v464;
    v562[7] = @"PNOScanSSIDDuration";
    v459 = [MEMORY[0x277D3F198] sharedInstance];
    v454 = [v459 commonTypeDict_IntegerFormat_withUnit_s];
    v563[7] = v454;
    v562[8] = @"PNOBSSIDDuration";
    v449 = [MEMORY[0x277D3F198] sharedInstance];
    v444 = [v449 commonTypeDict_IntegerFormat_withUnit_s];
    v563[8] = v444;
    v562[9] = @"RoamScanDuration";
    v439 = [MEMORY[0x277D3F198] sharedInstance];
    v434 = [v439 commonTypeDict_IntegerFormat_withUnit_s];
    v563[9] = v434;
    v562[10] = @"AssociatedScanDuration";
    v429 = [MEMORY[0x277D3F198] sharedInstance];
    v424 = [v429 commonTypeDict_IntegerFormat_withUnit_s];
    v563[10] = v424;
    v562[11] = @"OtherScanDuration";
    v419 = [MEMORY[0x277D3F198] sharedInstance];
    v414 = [v419 commonTypeDict_IntegerFormat_withUnit_s];
    v563[11] = v414;
    v562[12] = @"UserScanDuration";
    v409 = [MEMORY[0x277D3F198] sharedInstance];
    v404 = [v409 commonTypeDict_IntegerFormat_withUnit_s];
    v563[12] = v404;
    v562[13] = @"FRTSDuration";
    v399 = [MEMORY[0x277D3F198] sharedInstance];
    v394 = [v399 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[13] = v394;
    v562[14] = @"PCIESuspendDuration";
    v389 = [MEMORY[0x277D3F198] sharedInstance];
    v384 = [v389 commonTypeDict_IntegerFormat_withUnit_us];
    v563[14] = v384;
    v562[15] = @"PCIEActiveDuration";
    v379 = [MEMORY[0x277D3F198] sharedInstance];
    v374 = [v379 commonTypeDict_IntegerFormat_withUnit_us];
    v563[15] = v374;
    v562[16] = @"PCIEPERSTDuration";
    v369 = [MEMORY[0x277D3F198] sharedInstance];
    v364 = [v369 commonTypeDict_IntegerFormat_withUnit_us];
    v563[16] = v364;
    v562[17] = @"PCIEL0Count";
    v359 = [MEMORY[0x277D3F198] sharedInstance];
    v354 = [v359 commonTypeDict_IntegerFormat];
    v563[17] = v354;
    v562[18] = @"PCIEL0Duration";
    v349 = [MEMORY[0x277D3F198] sharedInstance];
    v344 = [v349 commonTypeDict_IntegerFormat_withUnit_us];
    v563[18] = v344;
    v562[19] = @"PCIEL2Count";
    v339 = [MEMORY[0x277D3F198] sharedInstance];
    v334 = [v339 commonTypeDict_IntegerFormat];
    v563[19] = v334;
    v562[20] = @"PCIEL2Duration";
    v329 = [MEMORY[0x277D3F198] sharedInstance];
    v324 = [v329 commonTypeDict_IntegerFormat_withUnit_us];
    v563[20] = v324;
    v562[21] = @"PCIEL1Count";
    v319 = [MEMORY[0x277D3F198] sharedInstance];
    v314 = [v319 commonTypeDict_IntegerFormat];
    v563[21] = v314;
    v562[22] = @"PCIEL1Duration";
    v309 = [MEMORY[0x277D3F198] sharedInstance];
    v304 = [v309 commonTypeDict_IntegerFormat_withUnit_us];
    v563[22] = v304;
    v562[23] = @"PCIEL11Count";
    v299 = [MEMORY[0x277D3F198] sharedInstance];
    v294 = [v299 commonTypeDict_IntegerFormat];
    v563[23] = v294;
    v562[24] = @"PCIEL11Duration";
    v289 = [MEMORY[0x277D3F198] sharedInstance];
    v284 = [v289 commonTypeDict_IntegerFormat_withUnit_us];
    v563[24] = v284;
    v562[25] = @"PCIEL12Count";
    v279 = [MEMORY[0x277D3F198] sharedInstance];
    v274 = [v279 commonTypeDict_IntegerFormat];
    v563[25] = v274;
    v562[26] = @"PCIEL12Duration";
    v269 = [MEMORY[0x277D3F198] sharedInstance];
    v264 = [v269 commonTypeDict_IntegerFormat_withUnit_us];
    v563[26] = v264;
    v562[27] = @"AWDLTXDuration";
    v259 = [MEMORY[0x277D3F198] sharedInstance];
    v254 = [v259 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[27] = v254;
    v562[28] = @"AWDLRXDuration";
    v249 = [MEMORY[0x277D3F198] sharedInstance];
    v244 = [v249 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[28] = v244;
    v562[29] = @"AWDLAWDuration";
    v239 = [MEMORY[0x277D3F198] sharedInstance];
    v234 = [v239 commonTypeDict_IntegerFormat_withUnit_s];
    v563[29] = v234;
    v562[30] = @"AWDLScanDuration";
    v229 = [MEMORY[0x277D3F198] sharedInstance];
    v224 = [v229 commonTypeDict_IntegerFormat_withUnit_s];
    v563[30] = v224;
    v562[31] = @"AutojoinScanDuration";
    v219 = [MEMORY[0x277D3F198] sharedInstance];
    v214 = [v219 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[31] = v214;
    v562[32] = @"LocationScanDuration";
    v209 = [MEMORY[0x277D3F198] sharedInstance];
    v204 = [v209 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[32] = v204;
    v562[33] = @"PipelineScanDuration";
    v199 = [MEMORY[0x277D3F198] sharedInstance];
    v194 = [v199 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[33] = v194;
    v562[34] = @"SetupScanDuration";
    v189 = [MEMORY[0x277D3F198] sharedInstance];
    v184 = [v189 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[34] = v184;
    v562[35] = @"UnknownScanDuration";
    v179 = [MEMORY[0x277D3F198] sharedInstance];
    v174 = [v179 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[35] = v174;
    v562[36] = @"CurrentChannel";
    v169 = [MEMORY[0x277D3F198] sharedInstance];
    v164 = [v169 commonTypeDict_IntegerFormat];
    v563[36] = v164;
    v562[37] = @"CurrentSSID";
    v159 = [MEMORY[0x277D3F198] sharedInstance];
    v154 = [v159 commonTypeDict_StringFormat];
    v563[37] = v154;
    v562[38] = @"CurrentBandwidth";
    v149 = [MEMORY[0x277D3F198] sharedInstance];
    v144 = [v149 commonTypeDict_IntegerFormat];
    v563[38] = v144;
    v562[39] = @"WifiPowered";
    v139 = [MEMORY[0x277D3F198] sharedInstance];
    v134 = [v139 commonTypeDict_BoolFormat];
    v563[39] = v134;
    v562[40] = @"WowEnabled";
    v129 = [MEMORY[0x277D3F198] sharedInstance];
    v124 = [v129 commonTypeDict_BoolFormat];
    v563[40] = v124;
    v562[41] = @"Carplay";
    v119 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v119 commonTypeDict_BoolFormat];
    v563[41] = v114;
    v562[42] = @"SISOTXDuration";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v106 = [v110 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[42] = v106;
    v562[43] = @"MIMOTXDuration";
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v98 = [v102 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[43] = v98;
    v562[44] = @"MIMORXDuration";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v90 = [v94 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[44] = v90;
    v562[45] = @"SISORXDuration";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v87 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[45] = v84;
    v562[46] = @"MIMOCSDuration";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v81 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[46] = v78;
    v562[47] = @"SISOCSDuration";
    v14 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v14 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[47] = v15;
    v562[48] = @"OCLRXDuration";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v16 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[48] = v17;
    v562[49] = @"OCLCSDuration";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v18 commonTypeDict_IntegerFormat_withUnit_ms];
    v563[49] = v19;
    v562[50] = @"READINGTYPE";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v20 commonTypeDict_IntegerFormat];
    v563[50] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v563 forKeys:v562 count:51];
    v567[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v567 forKeys:v566 count:2];

    v3 = v23;
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
    v530 = [MEMORY[0x277D3F198] sharedInstance];
    v525 = [v530 commonTypeDict_IntegerFormat_withUnit_s];
    v557[0] = v525;
    v556[1] = @"PMDuration";
    v520 = [MEMORY[0x277D3F198] sharedInstance];
    v515 = [v520 commonTypeDict_IntegerFormat_withUnit_s];
    v557[1] = v515;
    v556[2] = @"MPCDuration";
    v510 = [MEMORY[0x277D3F198] sharedInstance];
    v505 = [v510 commonTypeDict_IntegerFormat_withUnit_s];
    v557[2] = v505;
    v556[3] = @"TXDuration";
    v500 = [MEMORY[0x277D3F198] sharedInstance];
    v495 = [v500 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[3] = v495;
    v556[4] = @"RXDuration";
    v490 = [MEMORY[0x277D3F198] sharedInstance];
    v485 = [v490 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[4] = v485;
    v556[5] = @"HSICSuspendDuration";
    v480 = [MEMORY[0x277D3F198] sharedInstance];
    v475 = [v480 commonTypeDict_IntegerFormat_withUnit_s];
    v557[5] = v475;
    v556[6] = @"HSICActiveDuration";
    v470 = [MEMORY[0x277D3F198] sharedInstance];
    v465 = [v470 commonTypeDict_IntegerFormat_withUnit_s];
    v557[6] = v465;
    v556[7] = @"PNOScanSSIDDuration";
    v460 = [MEMORY[0x277D3F198] sharedInstance];
    v455 = [v460 commonTypeDict_IntegerFormat_withUnit_s];
    v557[7] = v455;
    v556[8] = @"PNOBSSIDDuration";
    v450 = [MEMORY[0x277D3F198] sharedInstance];
    v445 = [v450 commonTypeDict_IntegerFormat_withUnit_s];
    v557[8] = v445;
    v556[9] = @"RoamScanDuration";
    v440 = [MEMORY[0x277D3F198] sharedInstance];
    v435 = [v440 commonTypeDict_IntegerFormat_withUnit_s];
    v557[9] = v435;
    v556[10] = @"AssociatedScanDuration";
    v430 = [MEMORY[0x277D3F198] sharedInstance];
    v425 = [v430 commonTypeDict_IntegerFormat_withUnit_s];
    v557[10] = v425;
    v556[11] = @"OtherScanDuration";
    v420 = [MEMORY[0x277D3F198] sharedInstance];
    v415 = [v420 commonTypeDict_IntegerFormat_withUnit_s];
    v557[11] = v415;
    v556[12] = @"UserScanDuration";
    v410 = [MEMORY[0x277D3F198] sharedInstance];
    v405 = [v410 commonTypeDict_IntegerFormat_withUnit_s];
    v557[12] = v405;
    v556[13] = @"FRTSDuration";
    v400 = [MEMORY[0x277D3F198] sharedInstance];
    v395 = [v400 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[13] = v395;
    v556[14] = @"PCIESuspendDuration";
    v390 = [MEMORY[0x277D3F198] sharedInstance];
    v385 = [v390 commonTypeDict_IntegerFormat_withUnit_us];
    v557[14] = v385;
    v556[15] = @"PCIEActiveDuration";
    v380 = [MEMORY[0x277D3F198] sharedInstance];
    v375 = [v380 commonTypeDict_IntegerFormat_withUnit_us];
    v557[15] = v375;
    v556[16] = @"PCIEPERSTDuration";
    v370 = [MEMORY[0x277D3F198] sharedInstance];
    v365 = [v370 commonTypeDict_IntegerFormat_withUnit_us];
    v557[16] = v365;
    v556[17] = @"PCIEL0Count";
    v360 = [MEMORY[0x277D3F198] sharedInstance];
    v355 = [v360 commonTypeDict_IntegerFormat];
    v557[17] = v355;
    v556[18] = @"PCIEL0Duration";
    v350 = [MEMORY[0x277D3F198] sharedInstance];
    v345 = [v350 commonTypeDict_IntegerFormat_withUnit_us];
    v557[18] = v345;
    v556[19] = @"PCIEL2Count";
    v340 = [MEMORY[0x277D3F198] sharedInstance];
    v335 = [v340 commonTypeDict_IntegerFormat];
    v557[19] = v335;
    v556[20] = @"PCIEL2Duration";
    v330 = [MEMORY[0x277D3F198] sharedInstance];
    v325 = [v330 commonTypeDict_IntegerFormat_withUnit_us];
    v557[20] = v325;
    v556[21] = @"PCIEL1Count";
    v320 = [MEMORY[0x277D3F198] sharedInstance];
    v315 = [v320 commonTypeDict_IntegerFormat];
    v557[21] = v315;
    v556[22] = @"PCIEL1Duration";
    v310 = [MEMORY[0x277D3F198] sharedInstance];
    v305 = [v310 commonTypeDict_IntegerFormat_withUnit_us];
    v557[22] = v305;
    v556[23] = @"PCIEL11Count";
    v300 = [MEMORY[0x277D3F198] sharedInstance];
    v295 = [v300 commonTypeDict_IntegerFormat];
    v557[23] = v295;
    v556[24] = @"PCIEL11Duration";
    v290 = [MEMORY[0x277D3F198] sharedInstance];
    v285 = [v290 commonTypeDict_IntegerFormat_withUnit_us];
    v557[24] = v285;
    v556[25] = @"PCIEL12Count";
    v280 = [MEMORY[0x277D3F198] sharedInstance];
    v275 = [v280 commonTypeDict_IntegerFormat];
    v557[25] = v275;
    v556[26] = @"PCIEL12Duration";
    v270 = [MEMORY[0x277D3F198] sharedInstance];
    v265 = [v270 commonTypeDict_IntegerFormat_withUnit_us];
    v557[26] = v265;
    v556[27] = @"AWDLTXDuration";
    v260 = [MEMORY[0x277D3F198] sharedInstance];
    v255 = [v260 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[27] = v255;
    v556[28] = @"AWDLRXDuration";
    v250 = [MEMORY[0x277D3F198] sharedInstance];
    v245 = [v250 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[28] = v245;
    v556[29] = @"AWDLAWDuration";
    v240 = [MEMORY[0x277D3F198] sharedInstance];
    v235 = [v240 commonTypeDict_IntegerFormat_withUnit_s];
    v557[29] = v235;
    v556[30] = @"AWDLScanDuration";
    v230 = [MEMORY[0x277D3F198] sharedInstance];
    v225 = [v230 commonTypeDict_IntegerFormat_withUnit_s];
    v557[30] = v225;
    v556[31] = @"AutojoinScanDuration";
    v220 = [MEMORY[0x277D3F198] sharedInstance];
    v215 = [v220 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[31] = v215;
    v556[32] = @"LocationScanDuration";
    v210 = [MEMORY[0x277D3F198] sharedInstance];
    v205 = [v210 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[32] = v205;
    v556[33] = @"PipelineScanDuration";
    v200 = [MEMORY[0x277D3F198] sharedInstance];
    v195 = [v200 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[33] = v195;
    v556[34] = @"SetupScanDuration";
    v190 = [MEMORY[0x277D3F198] sharedInstance];
    v185 = [v190 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[34] = v185;
    v556[35] = @"UnknownScanDuration";
    v180 = [MEMORY[0x277D3F198] sharedInstance];
    v175 = [v180 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[35] = v175;
    v556[36] = @"CurrentChannel";
    v170 = [MEMORY[0x277D3F198] sharedInstance];
    v165 = [v170 commonTypeDict_IntegerFormat];
    v557[36] = v165;
    v556[37] = @"CurrentSSID";
    v160 = [MEMORY[0x277D3F198] sharedInstance];
    v155 = [v160 commonTypeDict_StringFormat];
    v557[37] = v155;
    v556[38] = @"CurrentBandwidth";
    v150 = [MEMORY[0x277D3F198] sharedInstance];
    v145 = [v150 commonTypeDict_IntegerFormat];
    v557[38] = v145;
    v556[39] = @"WifiPowered";
    v140 = [MEMORY[0x277D3F198] sharedInstance];
    v135 = [v140 commonTypeDict_BoolFormat];
    v557[39] = v135;
    v556[40] = @"WowEnabled";
    v130 = [MEMORY[0x277D3F198] sharedInstance];
    v125 = [v130 commonTypeDict_BoolFormat];
    v557[40] = v125;
    v556[41] = @"Carplay";
    v120 = [MEMORY[0x277D3F198] sharedInstance];
    v115 = [v120 commonTypeDict_BoolFormat];
    v557[41] = v115;
    v556[42] = @"SISOTXDuration";
    v111 = [MEMORY[0x277D3F198] sharedInstance];
    v107 = [v111 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[42] = v107;
    v556[43] = @"MIMOTXDuration";
    v103 = [MEMORY[0x277D3F198] sharedInstance];
    v99 = [v103 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[43] = v99;
    v556[44] = @"MIMORXDuration";
    v95 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v95 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[44] = v91;
    v556[45] = @"SISORXDuration";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v24 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[45] = v25;
    v556[46] = @"MIMOCSDuration";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v26 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[46] = v27;
    v556[47] = @"SISOCSDuration";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v28 commonTypeDict_IntegerFormat_withUnit_ms];
    v557[47] = v29;
    v556[48] = @"READINGTYPE";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v30 commonTypeDict_IntegerFormat];
    v557[48] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v557 forKeys:v556 count:49];
    v561[1] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v561 forKeys:v560 count:2];

    v3 = v33;
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
    v531 = [MEMORY[0x277D3F198] sharedInstance];
    v526 = [v531 commonTypeDict_IntegerFormat_withUnit_s];
    v551[0] = v526;
    v550[1] = @"PMDuration";
    v521 = [MEMORY[0x277D3F198] sharedInstance];
    v516 = [v521 commonTypeDict_IntegerFormat_withUnit_s];
    v551[1] = v516;
    v550[2] = @"MPCDuration";
    v511 = [MEMORY[0x277D3F198] sharedInstance];
    v506 = [v511 commonTypeDict_IntegerFormat_withUnit_s];
    v551[2] = v506;
    v550[3] = @"TXDuration";
    v501 = [MEMORY[0x277D3F198] sharedInstance];
    v496 = [v501 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[3] = v496;
    v550[4] = @"RXDuration";
    v491 = [MEMORY[0x277D3F198] sharedInstance];
    v486 = [v491 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[4] = v486;
    v550[5] = @"HSICSuspendDuration";
    v481 = [MEMORY[0x277D3F198] sharedInstance];
    v476 = [v481 commonTypeDict_IntegerFormat_withUnit_s];
    v551[5] = v476;
    v550[6] = @"HSICActiveDuration";
    v471 = [MEMORY[0x277D3F198] sharedInstance];
    v466 = [v471 commonTypeDict_IntegerFormat_withUnit_s];
    v551[6] = v466;
    v550[7] = @"PNOScanSSIDDuration";
    v461 = [MEMORY[0x277D3F198] sharedInstance];
    v456 = [v461 commonTypeDict_IntegerFormat_withUnit_s];
    v551[7] = v456;
    v550[8] = @"PNOBSSIDDuration";
    v451 = [MEMORY[0x277D3F198] sharedInstance];
    v446 = [v451 commonTypeDict_IntegerFormat_withUnit_s];
    v551[8] = v446;
    v550[9] = @"RoamScanDuration";
    v441 = [MEMORY[0x277D3F198] sharedInstance];
    v436 = [v441 commonTypeDict_IntegerFormat_withUnit_s];
    v551[9] = v436;
    v550[10] = @"AssociatedScanDuration";
    v431 = [MEMORY[0x277D3F198] sharedInstance];
    v426 = [v431 commonTypeDict_IntegerFormat_withUnit_s];
    v551[10] = v426;
    v550[11] = @"OtherScanDuration";
    v421 = [MEMORY[0x277D3F198] sharedInstance];
    v416 = [v421 commonTypeDict_IntegerFormat_withUnit_s];
    v551[11] = v416;
    v550[12] = @"UserScanDuration";
    v411 = [MEMORY[0x277D3F198] sharedInstance];
    v406 = [v411 commonTypeDict_IntegerFormat_withUnit_s];
    v551[12] = v406;
    v550[13] = @"FRTSDuration";
    v401 = [MEMORY[0x277D3F198] sharedInstance];
    v396 = [v401 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[13] = v396;
    v550[14] = @"PCIESuspendDuration";
    v391 = [MEMORY[0x277D3F198] sharedInstance];
    v386 = [v391 commonTypeDict_IntegerFormat_withUnit_us];
    v551[14] = v386;
    v550[15] = @"PCIEActiveDuration";
    v381 = [MEMORY[0x277D3F198] sharedInstance];
    v376 = [v381 commonTypeDict_IntegerFormat_withUnit_us];
    v551[15] = v376;
    v550[16] = @"PCIEPERSTDuration";
    v371 = [MEMORY[0x277D3F198] sharedInstance];
    v366 = [v371 commonTypeDict_IntegerFormat_withUnit_us];
    v551[16] = v366;
    v550[17] = @"PCIEL0Count";
    v361 = [MEMORY[0x277D3F198] sharedInstance];
    v356 = [v361 commonTypeDict_IntegerFormat];
    v551[17] = v356;
    v550[18] = @"PCIEL0Duration";
    v351 = [MEMORY[0x277D3F198] sharedInstance];
    v346 = [v351 commonTypeDict_IntegerFormat_withUnit_us];
    v551[18] = v346;
    v550[19] = @"PCIEL2Count";
    v341 = [MEMORY[0x277D3F198] sharedInstance];
    v336 = [v341 commonTypeDict_IntegerFormat];
    v551[19] = v336;
    v550[20] = @"PCIEL2Duration";
    v331 = [MEMORY[0x277D3F198] sharedInstance];
    v326 = [v331 commonTypeDict_IntegerFormat_withUnit_us];
    v551[20] = v326;
    v550[21] = @"PCIEL1Count";
    v321 = [MEMORY[0x277D3F198] sharedInstance];
    v316 = [v321 commonTypeDict_IntegerFormat];
    v551[21] = v316;
    v550[22] = @"PCIEL1Duration";
    v311 = [MEMORY[0x277D3F198] sharedInstance];
    v306 = [v311 commonTypeDict_IntegerFormat_withUnit_us];
    v551[22] = v306;
    v550[23] = @"PCIEL11Count";
    v301 = [MEMORY[0x277D3F198] sharedInstance];
    v296 = [v301 commonTypeDict_IntegerFormat];
    v551[23] = v296;
    v550[24] = @"PCIEL11Duration";
    v291 = [MEMORY[0x277D3F198] sharedInstance];
    v286 = [v291 commonTypeDict_IntegerFormat_withUnit_us];
    v551[24] = v286;
    v550[25] = @"PCIEL12Count";
    v281 = [MEMORY[0x277D3F198] sharedInstance];
    v276 = [v281 commonTypeDict_IntegerFormat];
    v551[25] = v276;
    v550[26] = @"PCIEL12Duration";
    v271 = [MEMORY[0x277D3F198] sharedInstance];
    v266 = [v271 commonTypeDict_IntegerFormat_withUnit_us];
    v551[26] = v266;
    v550[27] = @"AWDLTXDuration";
    v261 = [MEMORY[0x277D3F198] sharedInstance];
    v256 = [v261 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[27] = v256;
    v550[28] = @"AWDLRXDuration";
    v251 = [MEMORY[0x277D3F198] sharedInstance];
    v246 = [v251 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[28] = v246;
    v550[29] = @"AWDLAWDuration";
    v241 = [MEMORY[0x277D3F198] sharedInstance];
    v236 = [v241 commonTypeDict_IntegerFormat_withUnit_s];
    v551[29] = v236;
    v550[30] = @"AWDLScanDuration";
    v231 = [MEMORY[0x277D3F198] sharedInstance];
    v226 = [v231 commonTypeDict_IntegerFormat_withUnit_s];
    v551[30] = v226;
    v550[31] = @"AutojoinScanDuration";
    v221 = [MEMORY[0x277D3F198] sharedInstance];
    v216 = [v221 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[31] = v216;
    v550[32] = @"LocationScanDuration";
    v211 = [MEMORY[0x277D3F198] sharedInstance];
    v206 = [v211 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[32] = v206;
    v550[33] = @"PipelineScanDuration";
    v201 = [MEMORY[0x277D3F198] sharedInstance];
    v196 = [v201 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[33] = v196;
    v550[34] = @"SetupScanDuration";
    v191 = [MEMORY[0x277D3F198] sharedInstance];
    v186 = [v191 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[34] = v186;
    v550[35] = @"UnknownScanDuration";
    v181 = [MEMORY[0x277D3F198] sharedInstance];
    v176 = [v181 commonTypeDict_IntegerFormat_withUnit_ms];
    v551[35] = v176;
    v550[36] = @"CurrentChannel";
    v171 = [MEMORY[0x277D3F198] sharedInstance];
    v166 = [v171 commonTypeDict_IntegerFormat];
    v551[36] = v166;
    v550[37] = @"CurrentSSID";
    v161 = [MEMORY[0x277D3F198] sharedInstance];
    v156 = [v161 commonTypeDict_StringFormat];
    v551[37] = v156;
    v550[38] = @"CurrentBandwidth";
    v151 = [MEMORY[0x277D3F198] sharedInstance];
    v146 = [v151 commonTypeDict_IntegerFormat];
    v551[38] = v146;
    v550[39] = @"WifiPowered";
    v141 = [MEMORY[0x277D3F198] sharedInstance];
    v136 = [v141 commonTypeDict_BoolFormat];
    v551[39] = v136;
    v550[40] = @"WowEnabled";
    v131 = [MEMORY[0x277D3F198] sharedInstance];
    v126 = [v131 commonTypeDict_BoolFormat];
    v551[40] = v126;
    v550[41] = @"Carplay";
    v121 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v121 commonTypeDict_BoolFormat];
    v551[41] = v116;
    v550[42] = @"READINGTYPE";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v34 commonTypeDict_IntegerFormat];
    v551[42] = v35;
    v550[43] = @"PhyOfflineDuration";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v36 commonTypeDict_IntegerFormat];
    v551[43] = v37;
    v550[44] = @"PhyCalibrationDuration";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v38 commonTypeDict_IntegerFormat];
    v551[44] = v39;
    v550[45] = @"PhyCalibrationCount";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v40 commonTypeDict_IntegerFormat];
    v551[45] = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v551 forKeys:v550 count:46];
    v555[1] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v555 forKeys:v554 count:2];

    v3 = v43;
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
      v532 = [MEMORY[0x277D3F198] sharedInstance];
      v527 = [v532 commonTypeDict_IntegerFormat_withUnit_s];
      v545[0] = v527;
      v544[1] = @"PMDuration";
      v522 = [MEMORY[0x277D3F198] sharedInstance];
      v517 = [v522 commonTypeDict_IntegerFormat_withUnit_s];
      v545[1] = v517;
      v544[2] = @"MPCDuration";
      v512 = [MEMORY[0x277D3F198] sharedInstance];
      v507 = [v512 commonTypeDict_IntegerFormat_withUnit_s];
      v545[2] = v507;
      v544[3] = @"TXDuration";
      v502 = [MEMORY[0x277D3F198] sharedInstance];
      v497 = [v502 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[3] = v497;
      v544[4] = @"RXDuration";
      v492 = [MEMORY[0x277D3F198] sharedInstance];
      v487 = [v492 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[4] = v487;
      v544[5] = @"HSICSuspendDuration";
      v482 = [MEMORY[0x277D3F198] sharedInstance];
      v477 = [v482 commonTypeDict_IntegerFormat_withUnit_s];
      v545[5] = v477;
      v544[6] = @"HSICActiveDuration";
      v472 = [MEMORY[0x277D3F198] sharedInstance];
      v467 = [v472 commonTypeDict_IntegerFormat_withUnit_s];
      v545[6] = v467;
      v544[7] = @"PNOScanSSIDDuration";
      v462 = [MEMORY[0x277D3F198] sharedInstance];
      v457 = [v462 commonTypeDict_IntegerFormat_withUnit_s];
      v545[7] = v457;
      v544[8] = @"PNOBSSIDDuration";
      v452 = [MEMORY[0x277D3F198] sharedInstance];
      v447 = [v452 commonTypeDict_IntegerFormat_withUnit_s];
      v545[8] = v447;
      v544[9] = @"RoamScanDuration";
      v442 = [MEMORY[0x277D3F198] sharedInstance];
      v437 = [v442 commonTypeDict_IntegerFormat_withUnit_s];
      v545[9] = v437;
      v544[10] = @"AssociatedScanDuration";
      v432 = [MEMORY[0x277D3F198] sharedInstance];
      v427 = [v432 commonTypeDict_IntegerFormat_withUnit_s];
      v545[10] = v427;
      v544[11] = @"OtherScanDuration";
      v422 = [MEMORY[0x277D3F198] sharedInstance];
      v417 = [v422 commonTypeDict_IntegerFormat_withUnit_s];
      v545[11] = v417;
      v544[12] = @"UserScanDuration";
      v412 = [MEMORY[0x277D3F198] sharedInstance];
      v407 = [v412 commonTypeDict_IntegerFormat_withUnit_s];
      v545[12] = v407;
      v544[13] = @"FRTSDuration";
      v402 = [MEMORY[0x277D3F198] sharedInstance];
      v397 = [v402 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[13] = v397;
      v544[14] = @"PCIESuspendDuration";
      v392 = [MEMORY[0x277D3F198] sharedInstance];
      v387 = [v392 commonTypeDict_IntegerFormat_withUnit_us];
      v545[14] = v387;
      v544[15] = @"PCIEActiveDuration";
      v382 = [MEMORY[0x277D3F198] sharedInstance];
      v377 = [v382 commonTypeDict_IntegerFormat_withUnit_us];
      v545[15] = v377;
      v544[16] = @"PCIEPERSTDuration";
      v372 = [MEMORY[0x277D3F198] sharedInstance];
      v367 = [v372 commonTypeDict_IntegerFormat_withUnit_us];
      v545[16] = v367;
      v544[17] = @"PCIEL0Count";
      v362 = [MEMORY[0x277D3F198] sharedInstance];
      v357 = [v362 commonTypeDict_IntegerFormat];
      v545[17] = v357;
      v544[18] = @"PCIEL0Duration";
      v352 = [MEMORY[0x277D3F198] sharedInstance];
      v347 = [v352 commonTypeDict_IntegerFormat_withUnit_us];
      v545[18] = v347;
      v544[19] = @"PCIEL2Count";
      v342 = [MEMORY[0x277D3F198] sharedInstance];
      v337 = [v342 commonTypeDict_IntegerFormat];
      v545[19] = v337;
      v544[20] = @"PCIEL2Duration";
      v332 = [MEMORY[0x277D3F198] sharedInstance];
      v327 = [v332 commonTypeDict_IntegerFormat_withUnit_us];
      v545[20] = v327;
      v544[21] = @"PCIEL1Count";
      v322 = [MEMORY[0x277D3F198] sharedInstance];
      v317 = [v322 commonTypeDict_IntegerFormat];
      v545[21] = v317;
      v544[22] = @"PCIEL1Duration";
      v312 = [MEMORY[0x277D3F198] sharedInstance];
      v307 = [v312 commonTypeDict_IntegerFormat_withUnit_us];
      v545[22] = v307;
      v544[23] = @"PCIEL11Count";
      v302 = [MEMORY[0x277D3F198] sharedInstance];
      v297 = [v302 commonTypeDict_IntegerFormat];
      v545[23] = v297;
      v544[24] = @"PCIEL11Duration";
      v292 = [MEMORY[0x277D3F198] sharedInstance];
      v287 = [v292 commonTypeDict_IntegerFormat_withUnit_us];
      v545[24] = v287;
      v544[25] = @"PCIEL12Count";
      v282 = [MEMORY[0x277D3F198] sharedInstance];
      v277 = [v282 commonTypeDict_IntegerFormat];
      v545[25] = v277;
      v544[26] = @"PCIEL12Duration";
      v272 = [MEMORY[0x277D3F198] sharedInstance];
      v267 = [v272 commonTypeDict_IntegerFormat_withUnit_us];
      v545[26] = v267;
      v544[27] = @"AWDLTXDuration";
      v262 = [MEMORY[0x277D3F198] sharedInstance];
      v257 = [v262 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[27] = v257;
      v544[28] = @"AWDLRXDuration";
      v252 = [MEMORY[0x277D3F198] sharedInstance];
      v247 = [v252 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[28] = v247;
      v544[29] = @"AWDLAWDuration";
      v242 = [MEMORY[0x277D3F198] sharedInstance];
      v237 = [v242 commonTypeDict_IntegerFormat_withUnit_s];
      v545[29] = v237;
      v544[30] = @"AWDLScanDuration";
      v232 = [MEMORY[0x277D3F198] sharedInstance];
      v227 = [v232 commonTypeDict_IntegerFormat_withUnit_s];
      v545[30] = v227;
      v544[31] = @"AutojoinScanDuration";
      v222 = [MEMORY[0x277D3F198] sharedInstance];
      v217 = [v222 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[31] = v217;
      v544[32] = @"LocationScanDuration";
      v212 = [MEMORY[0x277D3F198] sharedInstance];
      v207 = [v212 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[32] = v207;
      v544[33] = @"PipelineScanDuration";
      v202 = [MEMORY[0x277D3F198] sharedInstance];
      v197 = [v202 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[33] = v197;
      v544[34] = @"SetupScanDuration";
      v192 = [MEMORY[0x277D3F198] sharedInstance];
      v187 = [v192 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[34] = v187;
      v544[35] = @"UnknownScanDuration";
      v182 = [MEMORY[0x277D3F198] sharedInstance];
      v177 = [v182 commonTypeDict_IntegerFormat_withUnit_ms];
      v545[35] = v177;
      v544[36] = @"CurrentChannel";
      v172 = [MEMORY[0x277D3F198] sharedInstance];
      v167 = [v172 commonTypeDict_IntegerFormat];
      v545[36] = v167;
      v544[37] = @"CurrentSSID";
      v162 = [MEMORY[0x277D3F198] sharedInstance];
      v157 = [v162 commonTypeDict_StringFormat];
      v545[37] = v157;
      v544[38] = @"CurrentBandwidth";
      v152 = [MEMORY[0x277D3F198] sharedInstance];
      v147 = [v152 commonTypeDict_IntegerFormat];
      v545[38] = v147;
      v544[39] = @"WifiPowered";
      v142 = [MEMORY[0x277D3F198] sharedInstance];
      v137 = [v142 commonTypeDict_BoolFormat];
      v545[39] = v137;
      v544[40] = @"WowEnabled";
      v132 = [MEMORY[0x277D3F198] sharedInstance];
      v127 = [v132 commonTypeDict_BoolFormat];
      v545[40] = v127;
      v544[41] = @"Carplay";
      v122 = [MEMORY[0x277D3F198] sharedInstance];
      v117 = [v122 commonTypeDict_BoolFormat];
      v545[41] = v117;
      v544[42] = @"READINGTYPE";
      v112 = [MEMORY[0x277D3F198] sharedInstance];
      v108 = [v112 commonTypeDict_IntegerFormat];
      v545[42] = v108;
      v544[43] = @"PhyOfflineDuration";
      v104 = [MEMORY[0x277D3F198] sharedInstance];
      v100 = [v104 commonTypeDict_IntegerFormat];
      v545[43] = v100;
      v544[44] = @"PhyCalibrationDuration";
      v96 = [MEMORY[0x277D3F198] sharedInstance];
      v92 = [v96 commonTypeDict_IntegerFormat];
      v545[44] = v92;
      v544[45] = @"PhyCalibrationCount";
      v88 = [MEMORY[0x277D3F198] sharedInstance];
      v85 = [v88 commonTypeDict_IntegerFormat];
      v545[45] = v85;
      v544[46] = @"PNOScanSSID5GDuration";
      v82 = [MEMORY[0x277D3F198] sharedInstance];
      v79 = [v82 commonTypeDict_IntegerFormat_withUnit_s];
      v545[46] = v79;
      v544[47] = @"PNOBSSID5GDuration";
      v76 = [MEMORY[0x277D3F198] sharedInstance];
      v74 = [v76 commonTypeDict_IntegerFormat_withUnit_s];
      v545[47] = v74;
      v544[48] = @"RoamScan5GDuration";
      v44 = [MEMORY[0x277D3F198] sharedInstance];
      v45 = [v44 commonTypeDict_IntegerFormat_withUnit_s];
      v545[48] = v45;
      v544[49] = @"AssociatedScan5GDuration";
      v46 = [MEMORY[0x277D3F198] sharedInstance];
      v47 = [v46 commonTypeDict_IntegerFormat_withUnit_s];
      v545[49] = v47;
      v544[50] = @"OtherScan5GDuration";
      v48 = [MEMORY[0x277D3F198] sharedInstance];
      v49 = [v48 commonTypeDict_IntegerFormat_withUnit_s];
      v545[50] = v49;
      v544[51] = @"UserScan5GDuration";
      v50 = [MEMORY[0x277D3F198] sharedInstance];
      v51 = [v50 commonTypeDict_IntegerFormat_withUnit_s];
      v545[51] = v51;
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
      v532 = [MEMORY[0x277D3F198] sharedInstance];
      v527 = [v532 commonTypeDict_IntegerFormat_withUnit_s];
      v539[0] = v527;
      v538[1] = @"PMDuration";
      v522 = [MEMORY[0x277D3F198] sharedInstance];
      v517 = [v522 commonTypeDict_IntegerFormat_withUnit_s];
      v539[1] = v517;
      v538[2] = @"MPCDuration";
      v512 = [MEMORY[0x277D3F198] sharedInstance];
      v507 = [v512 commonTypeDict_IntegerFormat_withUnit_s];
      v539[2] = v507;
      v538[3] = @"TXDuration";
      v502 = [MEMORY[0x277D3F198] sharedInstance];
      v497 = [v502 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[3] = v497;
      v538[4] = @"RXDuration";
      v492 = [MEMORY[0x277D3F198] sharedInstance];
      v487 = [v492 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[4] = v487;
      v538[5] = @"HSICSuspendDuration";
      v482 = [MEMORY[0x277D3F198] sharedInstance];
      v477 = [v482 commonTypeDict_IntegerFormat_withUnit_s];
      v539[5] = v477;
      v538[6] = @"HSICActiveDuration";
      v472 = [MEMORY[0x277D3F198] sharedInstance];
      v467 = [v472 commonTypeDict_IntegerFormat_withUnit_s];
      v539[6] = v467;
      v538[7] = @"PNOScanSSIDDuration";
      v462 = [MEMORY[0x277D3F198] sharedInstance];
      v457 = [v462 commonTypeDict_IntegerFormat_withUnit_s];
      v539[7] = v457;
      v538[8] = @"PNOBSSIDDuration";
      v452 = [MEMORY[0x277D3F198] sharedInstance];
      v447 = [v452 commonTypeDict_IntegerFormat_withUnit_s];
      v539[8] = v447;
      v538[9] = @"RoamScanDuration";
      v442 = [MEMORY[0x277D3F198] sharedInstance];
      v437 = [v442 commonTypeDict_IntegerFormat_withUnit_s];
      v539[9] = v437;
      v538[10] = @"AssociatedScanDuration";
      v432 = [MEMORY[0x277D3F198] sharedInstance];
      v427 = [v432 commonTypeDict_IntegerFormat_withUnit_s];
      v539[10] = v427;
      v538[11] = @"OtherScanDuration";
      v422 = [MEMORY[0x277D3F198] sharedInstance];
      v417 = [v422 commonTypeDict_IntegerFormat_withUnit_s];
      v539[11] = v417;
      v538[12] = @"UserScanDuration";
      v412 = [MEMORY[0x277D3F198] sharedInstance];
      v407 = [v412 commonTypeDict_IntegerFormat_withUnit_s];
      v539[12] = v407;
      v538[13] = @"FRTSDuration";
      v402 = [MEMORY[0x277D3F198] sharedInstance];
      v397 = [v402 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[13] = v397;
      v538[14] = @"PCIESuspendDuration";
      v392 = [MEMORY[0x277D3F198] sharedInstance];
      v387 = [v392 commonTypeDict_IntegerFormat_withUnit_us];
      v539[14] = v387;
      v538[15] = @"PCIEActiveDuration";
      v382 = [MEMORY[0x277D3F198] sharedInstance];
      v377 = [v382 commonTypeDict_IntegerFormat_withUnit_us];
      v539[15] = v377;
      v538[16] = @"PCIEPERSTDuration";
      v372 = [MEMORY[0x277D3F198] sharedInstance];
      v367 = [v372 commonTypeDict_IntegerFormat_withUnit_us];
      v539[16] = v367;
      v538[17] = @"PCIEL0Count";
      v362 = [MEMORY[0x277D3F198] sharedInstance];
      v357 = [v362 commonTypeDict_IntegerFormat];
      v539[17] = v357;
      v538[18] = @"PCIEL0Duration";
      v352 = [MEMORY[0x277D3F198] sharedInstance];
      v347 = [v352 commonTypeDict_IntegerFormat_withUnit_us];
      v539[18] = v347;
      v538[19] = @"PCIEL2Count";
      v342 = [MEMORY[0x277D3F198] sharedInstance];
      v337 = [v342 commonTypeDict_IntegerFormat];
      v539[19] = v337;
      v538[20] = @"PCIEL2Duration";
      v332 = [MEMORY[0x277D3F198] sharedInstance];
      v327 = [v332 commonTypeDict_IntegerFormat_withUnit_us];
      v539[20] = v327;
      v538[21] = @"PCIEL1Count";
      v322 = [MEMORY[0x277D3F198] sharedInstance];
      v317 = [v322 commonTypeDict_IntegerFormat];
      v539[21] = v317;
      v538[22] = @"PCIEL1Duration";
      v312 = [MEMORY[0x277D3F198] sharedInstance];
      v307 = [v312 commonTypeDict_IntegerFormat_withUnit_us];
      v539[22] = v307;
      v538[23] = @"PCIEL11Count";
      v302 = [MEMORY[0x277D3F198] sharedInstance];
      v297 = [v302 commonTypeDict_IntegerFormat];
      v539[23] = v297;
      v538[24] = @"PCIEL11Duration";
      v292 = [MEMORY[0x277D3F198] sharedInstance];
      v287 = [v292 commonTypeDict_IntegerFormat_withUnit_us];
      v539[24] = v287;
      v538[25] = @"PCIEL12Count";
      v282 = [MEMORY[0x277D3F198] sharedInstance];
      v277 = [v282 commonTypeDict_IntegerFormat];
      v539[25] = v277;
      v538[26] = @"PCIEL12Duration";
      v272 = [MEMORY[0x277D3F198] sharedInstance];
      v267 = [v272 commonTypeDict_IntegerFormat_withUnit_us];
      v539[26] = v267;
      v538[27] = @"AWDLTXDuration";
      v262 = [MEMORY[0x277D3F198] sharedInstance];
      v257 = [v262 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[27] = v257;
      v538[28] = @"AWDLRXDuration";
      v252 = [MEMORY[0x277D3F198] sharedInstance];
      v247 = [v252 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[28] = v247;
      v538[29] = @"AWDLAWDuration";
      v242 = [MEMORY[0x277D3F198] sharedInstance];
      v237 = [v242 commonTypeDict_IntegerFormat_withUnit_s];
      v539[29] = v237;
      v538[30] = @"AWDLScanDuration";
      v232 = [MEMORY[0x277D3F198] sharedInstance];
      v227 = [v232 commonTypeDict_IntegerFormat_withUnit_s];
      v539[30] = v227;
      v538[31] = @"AutojoinScanDuration";
      v222 = [MEMORY[0x277D3F198] sharedInstance];
      v217 = [v222 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[31] = v217;
      v538[32] = @"LocationScanDuration";
      v212 = [MEMORY[0x277D3F198] sharedInstance];
      v207 = [v212 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[32] = v207;
      v538[33] = @"PipelineScanDuration";
      v202 = [MEMORY[0x277D3F198] sharedInstance];
      v197 = [v202 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[33] = v197;
      v538[34] = @"SetupScanDuration";
      v192 = [MEMORY[0x277D3F198] sharedInstance];
      v187 = [v192 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[34] = v187;
      v538[35] = @"UnknownScanDuration";
      v182 = [MEMORY[0x277D3F198] sharedInstance];
      v177 = [v182 commonTypeDict_IntegerFormat_withUnit_ms];
      v539[35] = v177;
      v538[36] = @"CurrentChannel";
      v172 = [MEMORY[0x277D3F198] sharedInstance];
      v167 = [v172 commonTypeDict_IntegerFormat];
      v539[36] = v167;
      v538[37] = @"CurrentSSID";
      v162 = [MEMORY[0x277D3F198] sharedInstance];
      v157 = [v162 commonTypeDict_StringFormat];
      v539[37] = v157;
      v538[38] = @"CurrentBandwidth";
      v152 = [MEMORY[0x277D3F198] sharedInstance];
      v147 = [v152 commonTypeDict_IntegerFormat];
      v539[38] = v147;
      v538[39] = @"WifiPowered";
      v54 = [MEMORY[0x277D3F198] sharedInstance];
      v55 = [v54 commonTypeDict_BoolFormat];
      v539[39] = v55;
      v538[40] = @"WowEnabled";
      v56 = [MEMORY[0x277D3F198] sharedInstance];
      v57 = [v56 commonTypeDict_BoolFormat];
      v539[40] = v57;
      v538[41] = @"Carplay";
      v58 = [MEMORY[0x277D3F198] sharedInstance];
      v59 = [v58 commonTypeDict_BoolFormat];
      v539[41] = v59;
      v538[42] = @"READINGTYPE";
      v60 = [MEMORY[0x277D3F198] sharedInstance];
      v61 = [v60 commonTypeDict_IntegerFormat];
      v539[42] = v61;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v539 forKeys:v538 count:43];
      v543[1] = v62;
      v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v543 forKeys:v542 count:2];
    }

    v3 = v53;
  }

  v63 = *MEMORY[0x277D85DE8];

  return v3;
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
    v101 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v101 commonTypeDict_IntegerFormat_withUnit_s];
    v190[0] = v97;
    v189[1] = @"PMDuration";
    v93 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v93 commonTypeDict_IntegerFormat_withUnit_s];
    v190[1] = v89;
    v189[2] = @"MPCDuration";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v81 = [v85 commonTypeDict_IntegerFormat_withUnit_s];
    v190[2] = v81;
    v189[3] = @"TXDuration";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v164 = [v77 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[3] = v164;
    v189[4] = @"RXDuration";
    v163 = [MEMORY[0x277D3F198] sharedInstance];
    v162 = [v163 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[4] = v162;
    v189[5] = @"HSICSuspendDuration";
    v161 = [MEMORY[0x277D3F198] sharedInstance];
    v160 = [v161 commonTypeDict_IntegerFormat_withUnit_s];
    v190[5] = v160;
    v189[6] = @"HSICActiveDuration";
    v159 = [MEMORY[0x277D3F198] sharedInstance];
    v158 = [v159 commonTypeDict_IntegerFormat_withUnit_s];
    v190[6] = v158;
    v189[7] = @"PNOScanSSIDDuration";
    v157 = [MEMORY[0x277D3F198] sharedInstance];
    v156 = [v157 commonTypeDict_IntegerFormat_withUnit_s];
    v190[7] = v156;
    v189[8] = @"PNOBSSIDDuration";
    v155 = [MEMORY[0x277D3F198] sharedInstance];
    v154 = [v155 commonTypeDict_IntegerFormat_withUnit_s];
    v190[8] = v154;
    v189[9] = @"RoamScanDuration";
    v153 = [MEMORY[0x277D3F198] sharedInstance];
    v152 = [v153 commonTypeDict_IntegerFormat_withUnit_s];
    v190[9] = v152;
    v189[10] = @"AssociatedScanDuration";
    v151 = [MEMORY[0x277D3F198] sharedInstance];
    v150 = [v151 commonTypeDict_IntegerFormat_withUnit_s];
    v190[10] = v150;
    v189[11] = @"OtherScanDuration";
    v149 = [MEMORY[0x277D3F198] sharedInstance];
    v148 = [v149 commonTypeDict_IntegerFormat_withUnit_s];
    v190[11] = v148;
    v189[12] = @"UserScanDuration";
    v147 = [MEMORY[0x277D3F198] sharedInstance];
    v146 = [v147 commonTypeDict_IntegerFormat_withUnit_s];
    v190[12] = v146;
    v189[13] = @"FRTSDuration";
    v145 = [MEMORY[0x277D3F198] sharedInstance];
    v144 = [v145 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[13] = v144;
    v189[14] = @"PCIESuspendDuration";
    v143 = [MEMORY[0x277D3F198] sharedInstance];
    v142 = [v143 commonTypeDict_IntegerFormat_withUnit_us];
    v190[14] = v142;
    v189[15] = @"PCIEActiveDuration";
    v141 = [MEMORY[0x277D3F198] sharedInstance];
    v140 = [v141 commonTypeDict_IntegerFormat_withUnit_us];
    v190[15] = v140;
    v189[16] = @"PCIEPERSTDuration";
    v139 = [MEMORY[0x277D3F198] sharedInstance];
    v138 = [v139 commonTypeDict_IntegerFormat_withUnit_us];
    v190[16] = v138;
    v189[17] = @"AWDLTXDuration";
    v137 = [MEMORY[0x277D3F198] sharedInstance];
    v136 = [v137 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[17] = v136;
    v189[18] = @"AWDLRXDuration";
    v135 = [MEMORY[0x277D3F198] sharedInstance];
    v134 = [v135 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[18] = v134;
    v189[19] = @"AWDLAWDuration";
    v133 = [MEMORY[0x277D3F198] sharedInstance];
    v132 = [v133 commonTypeDict_IntegerFormat_withUnit_s];
    v190[19] = v132;
    v189[20] = @"AWDLScanDuration";
    v131 = [MEMORY[0x277D3F198] sharedInstance];
    v130 = [v131 commonTypeDict_IntegerFormat_withUnit_s];
    v190[20] = v130;
    v189[21] = @"AutojoinScanDuration";
    v129 = [MEMORY[0x277D3F198] sharedInstance];
    v128 = [v129 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[21] = v128;
    v189[22] = @"LocationScanDuration";
    v127 = [MEMORY[0x277D3F198] sharedInstance];
    v126 = [v127 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[22] = v126;
    v189[23] = @"PipelineScanDuration";
    v125 = [MEMORY[0x277D3F198] sharedInstance];
    v124 = [v125 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[23] = v124;
    v189[24] = @"SetupScanDuration";
    v123 = [MEMORY[0x277D3F198] sharedInstance];
    v122 = [v123 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[24] = v122;
    v189[25] = @"UnknownScanDuration";
    v121 = [MEMORY[0x277D3F198] sharedInstance];
    v120 = [v121 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[25] = v120;
    v189[26] = @"CurrentChannel";
    v119 = [MEMORY[0x277D3F198] sharedInstance];
    v118 = [v119 commonTypeDict_IntegerFormat];
    v190[26] = v118;
    v189[27] = @"CurrentSSID";
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_StringFormat];
    v190[27] = v116;
    v189[28] = @"CurrentBandwidth";
    v115 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v115 commonTypeDict_IntegerFormat];
    v190[28] = v114;
    v189[29] = @"WifiPowered";
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_BoolFormat];
    v190[29] = v112;
    v189[30] = @"WowEnabled";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v73 commonTypeDict_BoolFormat];
    v190[30] = v111;
    v189[31] = @"SISOTXDuration";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v110 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[31] = v72;
    v189[32] = @"MIMOTXDuration";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v71 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[32] = v69;
    v189[33] = @"MIMORXDuration";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[33] = v67;
    v189[34] = @"SISORXDuration";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v66 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[34] = v64;
    v189[35] = @"MIMOCSDuration";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[35] = v62;
    v189[36] = @"SISOCSDuration";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[36] = v60;
    v189[37] = @"OCLRXDuration";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[37] = v58;
    v189[38] = @"OCLCSDuration";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[38] = v56;
    v189[39] = @"OPSFullDuration";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v55 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[39] = v53;
    v189[40] = @"OPSPartialDuration";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[40] = v51;
    v189[41] = @"PSBWDuration";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat_withUnit_ms];
    v190[41] = v3;
    v189[42] = @"isADHSConnected";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v190[42] = v5;
    v189[43] = @"AutoHotspotBTScanDuration";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat_withUnit_s];
    v190[43] = v7;
    v189[44] = @"AutoHotspotBTScanCount";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v190[44] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v190 forKeys:v189 count:45];
    v194[1] = v10;
    v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:2];

    v11 = v97;
    v12 = v73;

    v13 = v77;
    v14 = v81;

    v15 = v85;
    v16 = v89;

    v17 = v93;
    v18 = v101;

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
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v98 = [v102 commonTypeDict_IntegerFormat_withUnit_s];
    v184[0] = v98;
    v183[1] = @"PMDuration";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v90 = [v94 commonTypeDict_IntegerFormat_withUnit_s];
    v184[1] = v90;
    v183[2] = @"MPCDuration";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v86 commonTypeDict_IntegerFormat_withUnit_s];
    v184[2] = v82;
    v183[3] = @"TXDuration";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v164 = [v78 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[3] = v164;
    v183[4] = @"RXDuration";
    v163 = [MEMORY[0x277D3F198] sharedInstance];
    v162 = [v163 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[4] = v162;
    v183[5] = @"HSICSuspendDuration";
    v161 = [MEMORY[0x277D3F198] sharedInstance];
    v160 = [v161 commonTypeDict_IntegerFormat_withUnit_s];
    v184[5] = v160;
    v183[6] = @"HSICActiveDuration";
    v159 = [MEMORY[0x277D3F198] sharedInstance];
    v158 = [v159 commonTypeDict_IntegerFormat_withUnit_s];
    v184[6] = v158;
    v183[7] = @"PNOScanSSIDDuration";
    v157 = [MEMORY[0x277D3F198] sharedInstance];
    v156 = [v157 commonTypeDict_IntegerFormat_withUnit_s];
    v184[7] = v156;
    v183[8] = @"PNOBSSIDDuration";
    v155 = [MEMORY[0x277D3F198] sharedInstance];
    v154 = [v155 commonTypeDict_IntegerFormat_withUnit_s];
    v184[8] = v154;
    v183[9] = @"RoamScanDuration";
    v153 = [MEMORY[0x277D3F198] sharedInstance];
    v152 = [v153 commonTypeDict_IntegerFormat_withUnit_s];
    v184[9] = v152;
    v183[10] = @"AssociatedScanDuration";
    v151 = [MEMORY[0x277D3F198] sharedInstance];
    v150 = [v151 commonTypeDict_IntegerFormat_withUnit_s];
    v184[10] = v150;
    v183[11] = @"OtherScanDuration";
    v149 = [MEMORY[0x277D3F198] sharedInstance];
    v148 = [v149 commonTypeDict_IntegerFormat_withUnit_s];
    v184[11] = v148;
    v183[12] = @"UserScanDuration";
    v147 = [MEMORY[0x277D3F198] sharedInstance];
    v146 = [v147 commonTypeDict_IntegerFormat_withUnit_s];
    v184[12] = v146;
    v183[13] = @"FRTSDuration";
    v145 = [MEMORY[0x277D3F198] sharedInstance];
    v144 = [v145 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[13] = v144;
    v183[14] = @"PCIESuspendDuration";
    v143 = [MEMORY[0x277D3F198] sharedInstance];
    v142 = [v143 commonTypeDict_IntegerFormat_withUnit_us];
    v184[14] = v142;
    v183[15] = @"PCIEActiveDuration";
    v141 = [MEMORY[0x277D3F198] sharedInstance];
    v140 = [v141 commonTypeDict_IntegerFormat_withUnit_us];
    v184[15] = v140;
    v183[16] = @"PCIEPERSTDuration";
    v139 = [MEMORY[0x277D3F198] sharedInstance];
    v138 = [v139 commonTypeDict_IntegerFormat_withUnit_us];
    v184[16] = v138;
    v183[17] = @"AWDLTXDuration";
    v137 = [MEMORY[0x277D3F198] sharedInstance];
    v136 = [v137 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[17] = v136;
    v183[18] = @"AWDLRXDuration";
    v135 = [MEMORY[0x277D3F198] sharedInstance];
    v134 = [v135 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[18] = v134;
    v183[19] = @"AWDLAWDuration";
    v133 = [MEMORY[0x277D3F198] sharedInstance];
    v132 = [v133 commonTypeDict_IntegerFormat_withUnit_s];
    v184[19] = v132;
    v183[20] = @"AWDLScanDuration";
    v131 = [MEMORY[0x277D3F198] sharedInstance];
    v130 = [v131 commonTypeDict_IntegerFormat_withUnit_s];
    v184[20] = v130;
    v183[21] = @"AutojoinScanDuration";
    v129 = [MEMORY[0x277D3F198] sharedInstance];
    v128 = [v129 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[21] = v128;
    v183[22] = @"LocationScanDuration";
    v127 = [MEMORY[0x277D3F198] sharedInstance];
    v126 = [v127 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[22] = v126;
    v183[23] = @"PipelineScanDuration";
    v125 = [MEMORY[0x277D3F198] sharedInstance];
    v124 = [v125 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[23] = v124;
    v183[24] = @"SetupScanDuration";
    v123 = [MEMORY[0x277D3F198] sharedInstance];
    v122 = [v123 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[24] = v122;
    v183[25] = @"UnknownScanDuration";
    v121 = [MEMORY[0x277D3F198] sharedInstance];
    v120 = [v121 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[25] = v120;
    v183[26] = @"CurrentChannel";
    v119 = [MEMORY[0x277D3F198] sharedInstance];
    v118 = [v119 commonTypeDict_IntegerFormat];
    v184[26] = v118;
    v183[27] = @"CurrentSSID";
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_StringFormat];
    v184[27] = v116;
    v183[28] = @"CurrentBandwidth";
    v115 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v115 commonTypeDict_IntegerFormat];
    v184[28] = v114;
    v183[29] = @"WifiPowered";
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_BoolFormat];
    v184[29] = v112;
    v183[30] = @"WowEnabled";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v74 commonTypeDict_BoolFormat];
    v184[30] = v111;
    v183[31] = @"SISOTXDuration";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v110 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[31] = v72;
    v183[32] = @"MIMOTXDuration";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v71 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[32] = v69;
    v183[33] = @"MIMORXDuration";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[33] = v67;
    v183[34] = @"SISORXDuration";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v66 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[34] = v64;
    v183[35] = @"MIMOCSDuration";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[35] = v62;
    v183[36] = @"SISOCSDuration";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[36] = v60;
    v183[37] = @"OCLRXDuration";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[37] = v58;
    v183[38] = @"OCLCSDuration";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[38] = v56;
    v183[39] = @"OPSFullDuration";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[39] = v54;
    v183[40] = @"OPSPartialDuration";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v22 commonTypeDict_IntegerFormat_withUnit_ms];
    v184[40] = v23;
    v183[41] = @"isADHSConnected";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v24 commonTypeDict_IntegerFormat];
    v184[41] = v25;
    v183[42] = @"AutoHotspotBTScanDuration";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v26 commonTypeDict_IntegerFormat_withUnit_s];
    v184[42] = v27;
    v183[43] = @"AutoHotspotBTScanCount";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v28 commonTypeDict_IntegerFormat];
    v184[43] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:44];
    v188[1] = v30;
    v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:v187 count:2];

    v12 = v74;
    v14 = v82;

    v15 = v86;
    v16 = v90;

    v17 = v94;
    v13 = v78;

    v18 = v102;
    v19 = v106;

    v11 = v98;
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
    v103 = [MEMORY[0x277D3F198] sharedInstance];
    v99 = [v103 commonTypeDict_IntegerFormat_withUnit_s];
    v178[0] = v99;
    v177[1] = @"PMDuration";
    v95 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v95 commonTypeDict_IntegerFormat_withUnit_s];
    v178[1] = v91;
    v177[2] = @"MPCDuration";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v87 commonTypeDict_IntegerFormat_withUnit_s];
    v178[2] = v83;
    v177[3] = @"TXDuration";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v164 = [v79 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[3] = v164;
    v177[4] = @"RXDuration";
    v163 = [MEMORY[0x277D3F198] sharedInstance];
    v162 = [v163 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[4] = v162;
    v177[5] = @"HSICSuspendDuration";
    v161 = [MEMORY[0x277D3F198] sharedInstance];
    v160 = [v161 commonTypeDict_IntegerFormat_withUnit_s];
    v178[5] = v160;
    v177[6] = @"HSICActiveDuration";
    v159 = [MEMORY[0x277D3F198] sharedInstance];
    v158 = [v159 commonTypeDict_IntegerFormat_withUnit_s];
    v178[6] = v158;
    v177[7] = @"PNOScanSSIDDuration";
    v157 = [MEMORY[0x277D3F198] sharedInstance];
    v156 = [v157 commonTypeDict_IntegerFormat_withUnit_s];
    v178[7] = v156;
    v177[8] = @"PNOBSSIDDuration";
    v155 = [MEMORY[0x277D3F198] sharedInstance];
    v154 = [v155 commonTypeDict_IntegerFormat_withUnit_s];
    v178[8] = v154;
    v177[9] = @"RoamScanDuration";
    v153 = [MEMORY[0x277D3F198] sharedInstance];
    v152 = [v153 commonTypeDict_IntegerFormat_withUnit_s];
    v178[9] = v152;
    v177[10] = @"AssociatedScanDuration";
    v151 = [MEMORY[0x277D3F198] sharedInstance];
    v150 = [v151 commonTypeDict_IntegerFormat_withUnit_s];
    v178[10] = v150;
    v177[11] = @"OtherScanDuration";
    v149 = [MEMORY[0x277D3F198] sharedInstance];
    v148 = [v149 commonTypeDict_IntegerFormat_withUnit_s];
    v178[11] = v148;
    v177[12] = @"UserScanDuration";
    v147 = [MEMORY[0x277D3F198] sharedInstance];
    v146 = [v147 commonTypeDict_IntegerFormat_withUnit_s];
    v178[12] = v146;
    v177[13] = @"FRTSDuration";
    v145 = [MEMORY[0x277D3F198] sharedInstance];
    v144 = [v145 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[13] = v144;
    v177[14] = @"PCIESuspendDuration";
    v143 = [MEMORY[0x277D3F198] sharedInstance];
    v142 = [v143 commonTypeDict_IntegerFormat_withUnit_us];
    v178[14] = v142;
    v177[15] = @"PCIEActiveDuration";
    v141 = [MEMORY[0x277D3F198] sharedInstance];
    v140 = [v141 commonTypeDict_IntegerFormat_withUnit_us];
    v178[15] = v140;
    v177[16] = @"PCIEPERSTDuration";
    v139 = [MEMORY[0x277D3F198] sharedInstance];
    v138 = [v139 commonTypeDict_IntegerFormat_withUnit_us];
    v178[16] = v138;
    v177[17] = @"AWDLTXDuration";
    v137 = [MEMORY[0x277D3F198] sharedInstance];
    v136 = [v137 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[17] = v136;
    v177[18] = @"AWDLRXDuration";
    v135 = [MEMORY[0x277D3F198] sharedInstance];
    v134 = [v135 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[18] = v134;
    v177[19] = @"AWDLAWDuration";
    v133 = [MEMORY[0x277D3F198] sharedInstance];
    v132 = [v133 commonTypeDict_IntegerFormat_withUnit_s];
    v178[19] = v132;
    v177[20] = @"AWDLScanDuration";
    v131 = [MEMORY[0x277D3F198] sharedInstance];
    v130 = [v131 commonTypeDict_IntegerFormat_withUnit_s];
    v178[20] = v130;
    v177[21] = @"AutojoinScanDuration";
    v129 = [MEMORY[0x277D3F198] sharedInstance];
    v128 = [v129 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[21] = v128;
    v177[22] = @"LocationScanDuration";
    v127 = [MEMORY[0x277D3F198] sharedInstance];
    v126 = [v127 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[22] = v126;
    v177[23] = @"PipelineScanDuration";
    v125 = [MEMORY[0x277D3F198] sharedInstance];
    v124 = [v125 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[23] = v124;
    v177[24] = @"SetupScanDuration";
    v123 = [MEMORY[0x277D3F198] sharedInstance];
    v122 = [v123 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[24] = v122;
    v177[25] = @"UnknownScanDuration";
    v121 = [MEMORY[0x277D3F198] sharedInstance];
    v120 = [v121 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[25] = v120;
    v177[26] = @"CurrentChannel";
    v119 = [MEMORY[0x277D3F198] sharedInstance];
    v118 = [v119 commonTypeDict_IntegerFormat];
    v178[26] = v118;
    v177[27] = @"CurrentSSID";
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_StringFormat];
    v178[27] = v116;
    v177[28] = @"CurrentBandwidth";
    v115 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v115 commonTypeDict_IntegerFormat];
    v178[28] = v114;
    v177[29] = @"WifiPowered";
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_BoolFormat];
    v178[29] = v112;
    v177[30] = @"WowEnabled";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v75 commonTypeDict_BoolFormat];
    v178[30] = v111;
    v177[31] = @"SISOTXDuration";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v110 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[31] = v72;
    v177[32] = @"MIMOTXDuration";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v71 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[32] = v69;
    v177[33] = @"MIMORXDuration";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[33] = v67;
    v177[34] = @"SISORXDuration";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[34] = v65;
    v177[35] = @"MIMOCSDuration";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v31 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[35] = v32;
    v177[36] = @"SISOCSDuration";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v33 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[36] = v34;
    v177[37] = @"OCLRXDuration";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v35 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[37] = v36;
    v177[38] = @"OCLCSDuration";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v37 commonTypeDict_IntegerFormat_withUnit_ms];
    v178[38] = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:39];
    v182[1] = v39;
    v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:2];

    v17 = v95;
    v11 = v99;

    v18 = v103;
    v19 = v107;

    v12 = v75;
    v13 = v79;

    v14 = v83;
    v15 = v87;

    v16 = v91;
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
    v104 = [MEMORY[0x277D3F198] sharedInstance];
    v100 = [v104 commonTypeDict_IntegerFormat_withUnit_s];
    v172[0] = v100;
    v171[1] = @"PMDuration";
    v96 = [MEMORY[0x277D3F198] sharedInstance];
    v92 = [v96 commonTypeDict_IntegerFormat_withUnit_s];
    v172[1] = v92;
    v171[2] = @"MPCDuration";
    v88 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v88 commonTypeDict_IntegerFormat_withUnit_s];
    v172[2] = v84;
    v171[3] = @"TXDuration";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v164 = [v80 commonTypeDict_IntegerFormat_withUnit_s];
    v172[3] = v164;
    v171[4] = @"RXDuration";
    v163 = [MEMORY[0x277D3F198] sharedInstance];
    v162 = [v163 commonTypeDict_IntegerFormat_withUnit_s];
    v172[4] = v162;
    v171[5] = @"HSICSuspendDuration";
    v161 = [MEMORY[0x277D3F198] sharedInstance];
    v160 = [v161 commonTypeDict_IntegerFormat_withUnit_s];
    v172[5] = v160;
    v171[6] = @"HSICActiveDuration";
    v159 = [MEMORY[0x277D3F198] sharedInstance];
    v158 = [v159 commonTypeDict_IntegerFormat_withUnit_s];
    v172[6] = v158;
    v171[7] = @"PNOScanSSIDDuration";
    v157 = [MEMORY[0x277D3F198] sharedInstance];
    v156 = [v157 commonTypeDict_IntegerFormat_withUnit_s];
    v172[7] = v156;
    v171[8] = @"PNOBSSIDDuration";
    v155 = [MEMORY[0x277D3F198] sharedInstance];
    v154 = [v155 commonTypeDict_IntegerFormat_withUnit_s];
    v172[8] = v154;
    v171[9] = @"RoamScanDuration";
    v153 = [MEMORY[0x277D3F198] sharedInstance];
    v152 = [v153 commonTypeDict_IntegerFormat_withUnit_s];
    v172[9] = v152;
    v171[10] = @"AssociatedScanDuration";
    v151 = [MEMORY[0x277D3F198] sharedInstance];
    v150 = [v151 commonTypeDict_IntegerFormat_withUnit_s];
    v172[10] = v150;
    v171[11] = @"OtherScanDuration";
    v149 = [MEMORY[0x277D3F198] sharedInstance];
    v148 = [v149 commonTypeDict_IntegerFormat_withUnit_s];
    v172[11] = v148;
    v171[12] = @"UserScanDuration";
    v147 = [MEMORY[0x277D3F198] sharedInstance];
    v146 = [v147 commonTypeDict_IntegerFormat_withUnit_s];
    v172[12] = v146;
    v171[13] = @"FRTSDuration";
    v145 = [MEMORY[0x277D3F198] sharedInstance];
    v144 = [v145 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[13] = v144;
    v171[14] = @"PCIESuspendDuration";
    v143 = [MEMORY[0x277D3F198] sharedInstance];
    v142 = [v143 commonTypeDict_IntegerFormat_withUnit_us];
    v172[14] = v142;
    v171[15] = @"PCIEActiveDuration";
    v141 = [MEMORY[0x277D3F198] sharedInstance];
    v140 = [v141 commonTypeDict_IntegerFormat_withUnit_us];
    v172[15] = v140;
    v171[16] = @"PCIEPERSTDuration";
    v139 = [MEMORY[0x277D3F198] sharedInstance];
    v138 = [v139 commonTypeDict_IntegerFormat_withUnit_us];
    v172[16] = v138;
    v171[17] = @"AutojoinScanDuration";
    v137 = [MEMORY[0x277D3F198] sharedInstance];
    v136 = [v137 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[17] = v136;
    v171[18] = @"LocationScanDuration";
    v135 = [MEMORY[0x277D3F198] sharedInstance];
    v134 = [v135 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[18] = v134;
    v171[19] = @"PipelineScanDuration";
    v133 = [MEMORY[0x277D3F198] sharedInstance];
    v132 = [v133 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[19] = v132;
    v171[20] = @"SetupScanDuration";
    v131 = [MEMORY[0x277D3F198] sharedInstance];
    v130 = [v131 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[20] = v130;
    v171[21] = @"UnknownScanDuration";
    v129 = [MEMORY[0x277D3F198] sharedInstance];
    v128 = [v129 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[21] = v128;
    v171[22] = @"AWDLTXDuration";
    v127 = [MEMORY[0x277D3F198] sharedInstance];
    v126 = [v127 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[22] = v126;
    v171[23] = @"AWDLRXDuration";
    v125 = [MEMORY[0x277D3F198] sharedInstance];
    v124 = [v125 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[23] = v124;
    v171[24] = @"AWDLAWDuration";
    v123 = [MEMORY[0x277D3F198] sharedInstance];
    v122 = [v123 commonTypeDict_IntegerFormat_withUnit_s];
    v172[24] = v122;
    v171[25] = @"AWDLScanDuration";
    v121 = [MEMORY[0x277D3F198] sharedInstance];
    v120 = [v121 commonTypeDict_IntegerFormat_withUnit_s];
    v172[25] = v120;
    v171[26] = @"CurrentChannel";
    v119 = [MEMORY[0x277D3F198] sharedInstance];
    v118 = [v119 commonTypeDict_IntegerFormat];
    v172[26] = v118;
    v171[27] = @"CurrentSSID";
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_StringFormat];
    v172[27] = v116;
    v171[28] = @"CurrentBandwidth";
    v115 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v115 commonTypeDict_IntegerFormat];
    v172[28] = v114;
    v171[29] = @"WifiPowered";
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_BoolFormat];
    v172[29] = v112;
    v171[30] = @"WowEnabled";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v76 commonTypeDict_BoolFormat];
    v172[30] = v111;
    v171[31] = @"SISOTXDuration";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v110 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[31] = v72;
    v171[32] = @"MIMOTXDuration";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[32] = v70;
    v171[33] = @"MIMORXDuration";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v42 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[33] = v43;
    v171[34] = @"SISORXDuration";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v44 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[34] = v45;
    v171[35] = @"MIMOCSDuration";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v46 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[35] = v47;
    v171[36] = @"SISOCSDuration";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v48 commonTypeDict_IntegerFormat_withUnit_ms];
    v172[36] = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v171 count:37];
    v176[1] = v50;
    v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:2];

    v12 = v76;
    v13 = v80;

    v14 = v84;
    v15 = v88;

    v16 = v92;
    v17 = v96;

    v11 = v100;
    v18 = v104;

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
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v18 commonTypeDict_IntegerFormat_withUnit_s];
  v166[0] = v11;
  v165[1] = @"PMDuration";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat_withUnit_s];
  v166[1] = v16;
  v165[2] = @"MPCDuration";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat_withUnit_s];
  v166[2] = v14;
  v165[3] = @"TXDuration";
  v13 = [MEMORY[0x277D3F198] sharedInstance];
  v164 = [v13 commonTypeDict_IntegerFormat_withUnit_s];
  v166[3] = v164;
  v165[4] = @"RXDuration";
  v163 = [MEMORY[0x277D3F198] sharedInstance];
  v162 = [v163 commonTypeDict_IntegerFormat_withUnit_s];
  v166[4] = v162;
  v165[5] = @"HSICSuspendDuration";
  v161 = [MEMORY[0x277D3F198] sharedInstance];
  v160 = [v161 commonTypeDict_IntegerFormat_withUnit_s];
  v166[5] = v160;
  v165[6] = @"HSICActiveDuration";
  v159 = [MEMORY[0x277D3F198] sharedInstance];
  v158 = [v159 commonTypeDict_IntegerFormat_withUnit_s];
  v166[6] = v158;
  v165[7] = @"PNOScanSSIDDuration";
  v157 = [MEMORY[0x277D3F198] sharedInstance];
  v156 = [v157 commonTypeDict_IntegerFormat_withUnit_s];
  v166[7] = v156;
  v165[8] = @"PNOBSSIDDuration";
  v155 = [MEMORY[0x277D3F198] sharedInstance];
  v154 = [v155 commonTypeDict_IntegerFormat_withUnit_s];
  v166[8] = v154;
  v165[9] = @"RoamScanDuration";
  v153 = [MEMORY[0x277D3F198] sharedInstance];
  v152 = [v153 commonTypeDict_IntegerFormat_withUnit_s];
  v166[9] = v152;
  v165[10] = @"AssociatedScanDuration";
  v151 = [MEMORY[0x277D3F198] sharedInstance];
  v150 = [v151 commonTypeDict_IntegerFormat_withUnit_s];
  v166[10] = v150;
  v165[11] = @"OtherScanDuration";
  v149 = [MEMORY[0x277D3F198] sharedInstance];
  v148 = [v149 commonTypeDict_IntegerFormat_withUnit_s];
  v166[11] = v148;
  v165[12] = @"UserScanDuration";
  v147 = [MEMORY[0x277D3F198] sharedInstance];
  v146 = [v147 commonTypeDict_IntegerFormat_withUnit_s];
  v166[12] = v146;
  v165[13] = @"FRTSDuration";
  v145 = [MEMORY[0x277D3F198] sharedInstance];
  v144 = [v145 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[13] = v144;
  v165[14] = @"PCIESuspendDuration";
  v143 = [MEMORY[0x277D3F198] sharedInstance];
  v142 = [v143 commonTypeDict_IntegerFormat_withUnit_us];
  v166[14] = v142;
  v165[15] = @"PCIEActiveDuration";
  v141 = [MEMORY[0x277D3F198] sharedInstance];
  v140 = [v141 commonTypeDict_IntegerFormat_withUnit_us];
  v166[15] = v140;
  v165[16] = @"PCIEPERSTDuration";
  v139 = [MEMORY[0x277D3F198] sharedInstance];
  v138 = [v139 commonTypeDict_IntegerFormat_withUnit_us];
  v166[16] = v138;
  v165[17] = @"AutojoinScanDuration";
  v137 = [MEMORY[0x277D3F198] sharedInstance];
  v136 = [v137 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[17] = v136;
  v165[18] = @"LocationScanDuration";
  v135 = [MEMORY[0x277D3F198] sharedInstance];
  v134 = [v135 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[18] = v134;
  v165[19] = @"PipelineScanDuration";
  v133 = [MEMORY[0x277D3F198] sharedInstance];
  v132 = [v133 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[19] = v132;
  v165[20] = @"SetupScanDuration";
  v131 = [MEMORY[0x277D3F198] sharedInstance];
  v130 = [v131 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[20] = v130;
  v165[21] = @"UnknownScanDuration";
  v129 = [MEMORY[0x277D3F198] sharedInstance];
  v128 = [v129 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[21] = v128;
  v165[22] = @"AWDLTXDuration";
  v127 = [MEMORY[0x277D3F198] sharedInstance];
  v126 = [v127 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[22] = v126;
  v165[23] = @"AWDLRXDuration";
  v125 = [MEMORY[0x277D3F198] sharedInstance];
  v124 = [v125 commonTypeDict_IntegerFormat_withUnit_ms];
  v166[23] = v124;
  v165[24] = @"AWDLAWDuration";
  v123 = [MEMORY[0x277D3F198] sharedInstance];
  v122 = [v123 commonTypeDict_IntegerFormat_withUnit_s];
  v166[24] = v122;
  v165[25] = @"AWDLScanDuration";
  v121 = [MEMORY[0x277D3F198] sharedInstance];
  v120 = [v121 commonTypeDict_IntegerFormat_withUnit_s];
  v166[25] = v120;
  v165[26] = @"CurrentChannel";
  v119 = [MEMORY[0x277D3F198] sharedInstance];
  v118 = [v119 commonTypeDict_IntegerFormat];
  v166[26] = v118;
  v165[27] = @"CurrentSSID";
  v117 = [MEMORY[0x277D3F198] sharedInstance];
  v116 = [v117 commonTypeDict_StringFormat];
  v166[27] = v116;
  v165[28] = @"CurrentBandwidth";
  v115 = [MEMORY[0x277D3F198] sharedInstance];
  v114 = [v115 commonTypeDict_IntegerFormat];
  v166[28] = v114;
  v165[29] = @"WifiPowered";
  v113 = [MEMORY[0x277D3F198] sharedInstance];
  v112 = [v113 commonTypeDict_BoolFormat];
  v166[29] = v112;
  v165[30] = @"WowEnabled";
  v12 = [MEMORY[0x277D3F198] sharedInstance];
  v111 = [v12 commonTypeDict_BoolFormat];
  v166[30] = v111;
  v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v166 forKeys:v165 count:31];
  v170[1] = v110;
  v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v169 count:2];
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];

  return v109;
}

- (void)setWifiManager:(__WiFiManagerClient *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self wifiManager]== a3)
  {
LABEL_15:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = [(PLWifiAgent *)self wifiManager];
  v6 = MEMORY[0x277CBF058];
  if (v5)
  {
    [(PLWifiAgent *)self wifiManager];
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    [(PLWifiAgent *)self wifiManager];
    CFRunLoopGetMain();
    v7 = *v6;
    WiFiManagerClientUnscheduleFromRunLoop();
  }

  self->_wifiManager = a3;
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
        v14 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiManager:]"];
        [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:2318];

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

- (void)setWiFiHotspotDevice:(__WiFiDeviceClient *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self wifiHotspotDevice]!= a3)
  {
    if ([(PLWifiAgent *)self wifiHotspotDevice])
    {
      [(PLWifiAgent *)self wifiHotspotDevice];
      WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
    }

    self->_wifiHotspotDevice = a3;
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
          v9 = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiHotspotDevice:]"];
          [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:2339];

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
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiHotspotDevice:]"];
        [v13 logMessage:v6 fromFile:v15 fromFunction:v16 fromLineNumber:2341];

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

- (void)setWiFiAWDLDevice:(__WiFiDeviceClient *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self wifiAwdlDevice]!= a3)
  {
    if ([(PLWifiAgent *)self wifiAwdlDevice])
    {
      [(PLWifiAgent *)self wifiAwdlDevice];
      WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
    }

    self->_wifiAwdlDevice = a3;
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
          v9 = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiAWDLDevice:]"];
          [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:2361];

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
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiAWDLDevice:]"];
        [v13 logMessage:v6 fromFile:v15 fromFunction:v16 fromLineNumber:2363];

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

- (void)setWifiDevice:(__WiFiDeviceClient *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self wifiDevice]== a3)
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

  self->_wifiDevice = a3;
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
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiDevice:]"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2420];

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
    v49 = [v48 lastPathComponent];
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
    [v47 logMessage:v40 fromFile:v49 fromFunction:v50 fromLineNumber:2480];

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
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2437];

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
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
        [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:2445];

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
              v29 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
              [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:2453];

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
              v36 = [v35 lastPathComponent];
              v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
              [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:2461];

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
      v43 = [v42 lastPathComponent];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
      [v41 logMessage:v40 fromFile:v43 fromFunction:v44 fromLineNumber:2476];

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
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]"];
      [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:2634];

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

- (unint64_t)getCurrentChannelWidth:(__WiFiNetwork *)a3
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
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent getCurrentChannelWidth:]"];
        [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:2731];

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

- (void)logFromLinkChangeCallback:(id)a3 withStats:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke;
  block[3] = &unk_27825D6E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)logFromAJCallback:(id)a3 withFlag:(unsigned __int8)a4 withStats:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(PLOperator *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke;
  v13[3] = &unk_278261A00;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
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

- (void)logEventPointWake:(id)a3
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PLWifiAgent *)self hasWiFi])
  {
    if (v4)
    {
      v5 = v4;
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
          v16 = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:2861];

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
      v26 = [v25 convertFromSystemToMonotonic];
      [v26 timeIntervalSince1970];
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
            v78 = [v77 lastPathComponent];
            v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
            [v76 logMessage:v75 fromFile:v78 fromFunction:v79 fromLineNumber:2910];

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
      v84 = v4;
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
          v50 = [v49 lastPathComponent];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v48 logMessage:v44 fromFile:v50 fromFunction:v51 fromLineNumber:2889];

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
              v62 = [v61 lastPathComponent];
              v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
              [v60 logMessage:v59 fromFile:v62 fromFunction:v63 fromLineNumber:2898];

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

            v66 = [v57 processName];
            [v30 setObject:v66 forKeyedSubscript:@"ProcessName"];
          }

          v4 = v84;
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
        v71 = [v70 lastPathComponent];
        v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
        [v69 logMessage:v5 fromFile:v71 fromFunction:v72 fromLineNumber:2859];

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
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
      [v7 logMessage:v5 fromFile:v9 fromFunction:v10 fromLineNumber:2845];

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

- (void)logEventPointWakeDataFrame:(id)a3 withParams:(id)a4 toEntry:(id)a5
{
  v97 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  if ([v6 length] > 0xE)
  {
    [v6 getBytes:buf length:14];
    v15 = [v6 subdataWithRange:{14, objc_msgSend(v6, "length") - 14}];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", buf[0], buf[1], buf[2], buf[3], v95, BYTE1(v95)];;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", BYTE2(v95), BYTE3(v95), BYTE4(v95), BYTE5(v95), BYTE6(v95), HIBYTE(v95)];;
    v18 = [MEMORY[0x277D3F1F8] decodeEtherType:bswap32(v96) >> 16];
    [v7 setObject:v17 forKeyedSubscript:@"RemoteMAC"];
    [v7 setObject:v16 forKeyedSubscript:@"LocalMAC"];
    [v7 setObject:v18 forKeyedSubscript:@"EtherType"];
    if (([v18 isEqualToString:@"IPv4"] & 1) != 0 || objc_msgSend(v18, "isEqualToString:", @"IPv6"))
    {
      v19 = [MEMORY[0x277D3F1F8] decodeIPPacket:v15 encryptedPath:0];
      v20 = [MEMORY[0x277D3F180] debugEnabled];
      if (v19)
      {
        v84 = v15;
        v85 = v16;
        if (v20)
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
            v25 = [v24 lastPathComponent];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
            [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:2948];

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
        [v7 setObject:v28 forKeyedSubscript:@"ip_destination"];

        v29 = [v19 objectForKeyedSubscript:@"source"];
        [v7 setObject:v29 forKeyedSubscript:@"ip_source"];

        v30 = [v19 objectForKeyedSubscript:@"protocol"];
        [v7 setObject:v30 forKeyedSubscript:@"ip_protocol"];

        v31 = MEMORY[0x277CCACA8];
        v32 = [v19 objectForKeyedSubscript:@"version"];
        v33 = [v31 stringWithFormat:@"%@", v32];
        [v7 setObject:v33 forKeyedSubscript:@"ip_version"];

        v34 = MEMORY[0x277CCABB0];
        v35 = [v19 objectForKeyedSubscript:@"seqNo"];
        v36 = [v34 numberWithUnsignedInt:{objc_msgSend(v35, "unsignedIntValue")}];
        [v7 setObject:v36 forKeyedSubscript:@"seqNo"];

        v37 = MEMORY[0x277CCABB0];
        v38 = [v19 objectForKeyedSubscript:@"spi"];
        v39 = [v37 numberWithUnsignedInt:{objc_msgSend(v38, "unsignedIntValue")}];
        [v7 setObject:v39 forKeyedSubscript:@"spi"];

        v40 = [v19 objectForKey:@"protocol"];
        LODWORD(v32) = [v40 isEqualToString:@"TCP"];

        if (v32)
        {
          v41 = MEMORY[0x277CCACA8];
          v42 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v43 = [v42 objectForKeyedSubscript:@"ack"];
          v44 = [v41 stringWithFormat:@"%@", v43];
          [v7 setObject:v44 forKeyedSubscript:@"tcp_ack"];

          v45 = MEMORY[0x277CCACA8];
          v46 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v47 = [v46 objectForKeyedSubscript:@"seq"];
          v48 = [v45 stringWithFormat:@"%@", v47];
          [v7 setObject:v48 forKeyedSubscript:@"tcp_seq"];

          v49 = MEMORY[0x277CCACA8];
          v50 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v51 = [v50 objectForKeyedSubscript:@"window"];
          v52 = [v49 stringWithFormat:@"%@", v51];
          [v7 setObject:v52 forKeyedSubscript:@"tcp_window"];

          v53 = MEMORY[0x277CCACA8];
          v54 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v55 = [v54 objectForKeyedSubscript:@"control"];
          v56 = [v53 stringWithFormat:@"%@", v55];
          [v7 setObject:v56 forKeyedSubscript:@"tcp_control"];

          v57 = MEMORY[0x277CCACA8];
          v58 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v59 = [v58 objectForKeyedSubscript:@"dest_port"];
          v60 = [v57 stringWithFormat:@"%@", v59];
          [v7 setObject:v60 forKeyedSubscript:@"tcp_dest_port"];

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
          [v7 setObject:v81 forKeyedSubscript:@"udp_dest_port"];

          v82 = MEMORY[0x277CCACA8];
          v62 = [v19 objectForKeyedSubscript:@"protocol_info"];
          v63 = [v62 objectForKeyedSubscript:@"source_port"];
          v64 = [v82 stringWithFormat:@"%@", v63];
          v65 = @"udp_source_port";
        }

        [v7 setObject:v64 forKeyedSubscript:v65];

        v16 = v85;
      }

      else
      {
        if (!v20)
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
        v69 = [v68 lastPathComponent];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
        [v67 logMessage:v62 fromFile:v69 fromFunction:v70 fromLineNumber:2946];

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
      v74 = [v73 lastPathComponent];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
      [v72 logMessage:v19 fromFile:v74 fromFunction:v75 fromLineNumber:2973];

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
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: payload too short: length of %lu", objc_msgSend(v6, "length")];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:2920];

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

- (void)logEventPointWakePNO:(id)a3 withParams:(id)a4 toEntry:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [a4 objectForCFString:@"IO80211InterfaceWoWWakeUpCommand"];
  memset(v53, 0, sizeof(v53));
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  memset(v52, 0, 44);
  v44 = v9;
  if ([v7 length] <= 0x67)
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
        v14 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
        [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:2986];

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

  [v7 getBytes:v53 length:48];
  [v7 getBytes:v48 range:{48, 56}];
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
        v36 = [v35 lastPathComponent];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
        [v34 logMessage:v11 fromFile:v36 fromFunction:v37 fromLineNumber:2994];

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
  [v8 setObject:v17 forKeyedSubscript:@"network_count"];

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
  while ([v7 length] >= (v22 + 44))
  {
    if (v20)
    {
      [v7 getBytes:v52 range:{v22, 44}];
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
    [v8 setObject:v26 forKeyedSubscript:v27];

    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v54];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_ssid", v20];
    [v8 setObject:v28 forKeyedSubscript:v29];

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_bssid", v20];
    [v8 setObject:v25 forKeyedSubscript:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithInt:SWORD4(v52[2])];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_rssi", v20];
    [v8 setObject:v31 forKeyedSubscript:v32];

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
  v42 = [v41 lastPathComponent];
  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
  [v40 logMessage:v11 fromFile:v42 fromFunction:v43 fromLineNumber:3004];

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

- (void)logEventPointWakeLink:(id)a3 withParams:(id)a4 toEntry:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  memset(v30, 0, sizeof(v30));
  if ([v7 length] > 0x2F)
  {
    [v7 getBytes:v30 length:48];
    if (DWORD1(v30[0]) == 0x10000000)
    {
      v10 = [(PLWifiAgent *)self decodeWifiEventLinkReason:bswap32(HIDWORD(v30[0]))];
      [v8 setObject:v10 forKeyedSubscript:@"loss_reason"];
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
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
        [v17 logMessage:v10 fromFile:v19 fromFunction:v20 fromLineNumber:3044];

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
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:3035];

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

- (void)logEventPointJoin:(unsigned __int8)a3 withStats:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(PLWifiAgent *)self hasWiFi])
  {
    if (v6)
    {
      v7 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Join"];
      v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
      v9 = [v6 objectForKey:*MEMORY[0x277D29968]];
      [v8 setObject:v9 forKeyedSubscript:@"Reason"];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4 != 0];
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
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointJoin:withStats:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:3051];

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

- (void)logEventPointRemoteControlSession:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLWifiAgent entryKeyForType:v4 andName:@"RemoteControlSession"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardModuleInfo
{
  v35 = *MEMORY[0x277D85DE8];
  if ([(PLWifiAgent *)self hasWiFi])
  {
    v3 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ModuleInfo"];
    v4 = [(PLOperator *)self storage];
    v5 = [v4 lastEntryForKey:v3];

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
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardModuleInfo]"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:3139];

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
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardModuleInfo]"];
      [v20 logMessage:v3 fromFile:v22 fromFunction:v23 fromLineNumber:3129];

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

- (void)logEventForwardRSSI:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"LinkQuality Callback: %@", v4, block, v18, v19, v20, v21];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardRSSI:]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:3184];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v12 = [v4 objectForKey:@"RSSI"];
    v13 = [v4 objectForKey:@"SCALED_RSSI"];
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

- (void)logAWDLStateEntry:(id)a3
{
  v4 = a3;
  v6 = [v4 dictionary];
  v5 = [v4 entryDate];

  [(PLOperator *)self logForSubsystem:@"WifiMetrics" category:@"AWDLState" data:v6 date:v5];
}

- (void)logEventForwardAWDLState:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"AWDL Availability Callback: %@", v4];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardAWDLState:]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:3278];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v12 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AWDLState"];
    v13 = [(PLOperator *)self storage];
    v14 = [v13 lastEntryForKey:v12];

    if (!v14 || ([v14 objectForKeyedSubscript:@"AWDLDown"], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"LINK_CHANGED_IS_LINKDOWN"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v15 != v16))
    {
      v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
      v18 = [v4 objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];
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

- (void)logEventForwardHotspotState:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277D297F0];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D297F0]];
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
            v15 = [v14 lastPathComponent];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardHotspotState:]"];
            [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:3307];

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
        v19 = [(PLOperator *)self storage];
        v20 = [v19 lastEntryForKey:v18];

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
              v25 = [v24 BOOLValue];
              v26 = [v5 objectForKeyedSubscript:v9];
              if (v25 == [v26 BOOLValue])
              {
                v27 = [v20 objectForKeyedSubscript:@"ADHS"];
                v44 = [v27 BOOLValue];
                v28 = [v5 objectForKeyedSubscript:v6];
                v43 = [v28 BOOLValue];

                if (v44 == v43)
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
                  v40 = [v39 lastPathComponent];
                  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardHotspotState:]"];
                  [v38 logMessage:v29 fromFile:v40 fromFunction:v41 fromLineNumber:3313];

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

- (void)updateEventBackwardUserScanDuration:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKey:@"SCAN_CHANNELS"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_30:

        goto LABEL_31;
      }

      v6 = [v4 objectForKey:@"ScanReqClientName"];
      if (!v5 || ([MEMORY[0x277CBEB68] null], v7 = objc_claimAutoreleasedReturnValue(), v7, v5 == v7))
      {
        v8 = 0;
        v16 = 110;
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
              v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"User scan counter update: clientName = %@, dwellTime= %lu, channelCountNum = %lu, totalScanTime = %lu\n", v6, v16, v8, v17];
              v23 = MEMORY[0x277D3F178];
              v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              v25 = [v24 lastPathComponent];
              v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent updateEventBackwardUserScanDuration:]"];
              [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:3411];

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
        v9 = [v4 objectForKey:@"SCAN_DWELL_TIME"];
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = v9;
        v11 = [v4 objectForKey:@"SCAN_DWELL_TIME"];
        v12 = [MEMORY[0x277CBEB68] null];

        if (v11 == v12)
        {
LABEL_19:
          v16 = 110;
LABEL_20:
          v17 = v16 * v8;
          if (!v6)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }

        v13 = [v4 objectForKey:@"SCAN_DWELL_TIME"];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          v15 = [v4 objectForKey:@"SCAN_DWELL_TIME"];
          v16 = [v15 intValue];

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

- (void)logEventBackwardWifiProperties:(id)a3 withNetworkProperties:(id)a4 shallModelPower:(BOOL)a5
{
  v338 = a5;
  v421[10] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v337 = a4;
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
  v332 = [v349 allValues];
  v8 = *MEMORY[0x277D3F5C8];
  v333 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"HotspotPowerStats"];
  v9 = [v7 objectForKeyedSubscript:@"CACHED_TIME_STAMP"];
  v10 = [v9 integerValue];

  v11 = [v7 objectForKeyedSubscript:@"INSTANT_ASSOCIATED_SLEEP_DURATION"];
  v12 = [v11 integerValue];

  v13 = [v7 objectForKeyedSubscript:@"INSTANT_UNASSOCIATED_SLEEP_DURATION"];
  v14 = [v13 integerValue];

  v15 = [v7 objectForKeyedSubscript:@"INSTANT_TIME_STAMP"];
  v16 = [v15 integerValue];

  v17 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"CumulativeProperties"];
  v343 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"DiffProperties"];
  v331 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"BeaconProfile"];
  v336 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"AutoJoin"];
  v335 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"Scans"];
  v334 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"ScanForwardStats"];
  v342 = v17;
  v348 = self;
  if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
  {
    v18 = self->_lastEntryForMetricd;
  }

  else
  {
    v19 = [(PLOperator *)self storage];
    v18 = [v19 lastEntryForKey:v17];
  }

  v361 = (v12 | v14) != 0;
  v346 = v18;
  if (v18)
  {
    v20 = [(PLEntry *)v18 objectForKeyedSubscript:@"WifiTimestamp"];
    v359 = [v20 unsignedIntegerValue];
  }

  else
  {
    v359 = 0;
  }

  v357 = v10;
  v21 = objc_opt_new();
  v22 = +[PLWifiAgent isBeaconLoggingEnabled];
  v23 = MEMORY[0x277CBEC10];
  v24 = &unk_282C195E8;
  if (!v22)
  {
    v24 = MEMORY[0x277CBEC10];
  }

  obj = v24;
  v25 = [MEMORY[0x277D3F208] isUsingAnOlderWifiChip];
  v26 = &unk_282C19610;
  if (v25)
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
  v29 = [MEMORY[0x277D3F208] kPLWiFiClassOfDevice];
  v30 = 0;
  HIDWORD(v341) = 0;
  v31 = &unk_282C194F8;
  v32 = &unk_282C194D0;
  v33 = &unk_282C194A8;
  v34 = &unk_282C19408;
  v35 = &unk_282C193E0;
  v363 = v7;
  if (v29 <= 1004010)
  {
    if (v29 <= 1004005)
    {
      if ((v29 - 1004001) >= 3)
      {
        LODWORD(v341) = 0;
        v339 = 0;
        if ((v29 - 1004004) >= 2)
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

    if (v29 <= 1004007)
    {
      if (v29 == 1004006)
      {
        goto LABEL_33;
      }

      v38 = 0;
      goto LABEL_42;
    }

    if (v29 == 1004008)
    {
      goto LABEL_33;
    }

    LODWORD(v341) = 0;
    v339 = 0;
    if (v29 != 1004010)
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

  v36 = v16;
  v37 = &unk_282C19520;
  if (v29 > 1004014)
  {
    if ((v29 - 1004016) >= 3)
    {
      if (v29 == 1004015)
      {
        v39 = &unk_282C195C0;
        v40 = &unk_282C19430;
      }

      else
      {
        LODWORD(v341) = 0;
        v339 = 0;
        v16 = v36;
        if (v29 != 1004019)
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
    v7 = v363;
    v16 = v36;
    goto LABEL_41;
  }

  if ((v29 - 1004013) < 2)
  {
    goto LABEL_40;
  }

  if (v29 == 1004011)
  {
    v341 = 0;
    v339 = 0;
    v30 = 0;
    v33 = &unk_282C19570;
    v34 = &unk_282C19548;
    v16 = v36;
LABEL_43:
    [v21 addEntriesFromDictionary:v35];
    v35 = v34;
    v34 = v33;
    goto LABEL_44;
  }

  LODWORD(v341) = 0;
  v339 = 0;
  v16 = v36;
  if (v29 != 1004012)
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
    if (v16 > v357)
    {
      if (v359)
      {
        v43 = v357 > v359;
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

    v46 = v357 > v359;
    v45 = 1;
    goto LABEL_60;
  }

  v45 = 1;
  if (v346)
  {
    v46 = v357 > v359;
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
      if (![(PLWifiAgent *)v348 isWiFiPowered])
      {
        v49 = [(PLEntry *)v346 copy];
        v50 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v343];
        v51 = [MEMORY[0x277CBEB68] null];
        [v49 setObject:v51 forKeyedSubscript:@"CurrentSSID"];

        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentChannel"];
        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"CurrentBandwidth"];
        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"WifiPowered"];
        [v49 setObject:&unk_282C12DF8 forKeyedSubscript:@"Carplay"];
        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v348->_autoJoinScanDuration];
        [v49 setObject:v52 forKeyedSubscript:@"AutojoinScanDuration"];

        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v348->_locationScanDuration];
        [v49 setObject:v53 forKeyedSubscript:@"LocationScanDuration"];

        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v348->_pipelineScanDuration];
        [v49 setObject:v54 forKeyedSubscript:@"PipelineScanDuration"];

        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v348->_unknownScanDuration];
        [v49 setObject:v55 forKeyedSubscript:@"UnknownScanDuration"];

        v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v348->_setupScanDuration];
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

        v7 = v363;
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
          v62 = v332;
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
          objc_storeStrong(&v348->_lastEntryForMetricd, v57);
        }

        else
        {
          [(PLOperator *)v348 logEntry:v57];
        }

        v42 = v342;
        v45 = v345;
        v208 = v346;
        if (v338)
        {
          [(PLWifiAgent *)v348 modelWiFiPower:v50];
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

  v75 = [v7 objectForKeyedSubscript:v74];
  v76 = [v73 numberWithUnsignedInteger:{objc_msgSend(v75, "integerValue")}];
  [v48 setObject:v76 forKeyedSubscript:@"WifiTimestamp"];

  if (v346)
  {
    v77 = *(v47 + 2992);
    v78 = [v48 objectForKeyedSubscript:@"WifiTimestamp"];
    v79 = [v78 unsignedIntegerValue];
    v80 = [(PLEntry *)v346 objectForKeyedSubscript:@"WifiTimestamp"];
    v81 = [v77 numberWithInteger:{v79 - objc_msgSend(v80, "unsignedIntegerValue")}];
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
        v92 = [v91 integerValue];

        if ([v360 containsObject:v88])
        {
          v93 = v92 / 0x3E8uLL;
        }

        else
        {
          v93 = v92;
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
            v96 = [v95 unsignedLongValue];
            goto LABEL_124;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v96 = [v95 longLongValue];
LABEL_124:
            v97 = v96;
            v98 = v96 - v93;
            if (v96 > v93)
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
                    v114 = [v113 lastPathComponent];
                    v115 = v111;
                    v116 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
                    [v112 logMessage:v115 fromFile:v114 fromFunction:v116 fromLineNumber:4228];

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
              v105 = [v104 lastPathComponent];
              v106 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
              [v347 logMessage:v103 fromFile:v105 fromFunction:v106 fromLineNumber:4234];

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
    v126 = [v337 objectForKeyedSubscript:@"CurrentChannel"];
    [v48 setObject:v126 forKeyedSubscript:@"CurrentChannel"];

    v127 = [v337 objectForKeyedSubscript:@"CurrentSSID"];
    [v48 setObject:v127 forKeyedSubscript:@"CurrentSSID"];

    v128 = [v337 objectForKeyedSubscript:@"CurrentBandwidth"];
    [v48 setObject:v128 forKeyedSubscript:@"CurrentBandwidth"];

    v129 = [v337 objectForKeyedSubscript:@"Carplay"];
    [v48 setObject:v129 forKeyedSubscript:@"Carplay"];

    v130 = [*(v47 + 2992) numberWithBool:{-[PLWifiAgent isWowEnabled](v348, "isWowEnabled")}];
    [v48 setObject:v130 forKeyedSubscript:@"WowEnabled"];

    v125 = [*(v47 + 2992) numberWithBool:{-[PLWifiAgent isWiFiPowered](v348, "isWiFiPowered")}];
  }

  [v48 setObject:v125 forKeyedSubscript:@"WifiPowered"];

  v7 = v363;
  if (v341)
  {
    v131 = [v363 objectForKeyedSubscript:@"AutoJoinPowerDiag"];
    v132 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v336];
    v397 = 0u;
    v398 = 0u;
    v399 = 0u;
    v400 = 0u;
    v133 = [v355 allKeys];
    v134 = [v133 countByEnumeratingWithState:&v397 objects:v418 count:16];
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
            objc_enumerationMutation(v133);
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

        v135 = [v133 countByEnumeratingWithState:&v397 objects:v418 count:16];
      }

      while (v135);
    }

    [(PLOperator *)v348 logEntry:v132];
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
        v150 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged AJ keys:%@", v132];
        v151 = MEMORY[0x277D3F178];
        v152 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v153 = [v152 lastPathComponent];
        v154 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v151 logMessage:v150 fromFile:v153 fromFunction:v154 fromLineNumber:4283];

        v155 = PLLogCommon();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v410 = v150;
          _os_log_debug_impl(&dword_21A4C6000, v155, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v7 = v363;
  }

  if (HIDWORD(v341))
  {
    v156 = [v7 objectForKey:@"AutoHotspotLPHSPowerStats"];

    if (v156)
    {
      v157 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v333];
      v158 = [v7 objectForKeyedSubscript:@"AutoHotspotLPHSPowerStats"];
      v392 = 0u;
      v393 = 0u;
      v394 = 0u;
      v395 = 0u;
      v159 = [v349 allKeys];
      v160 = [v159 countByEnumeratingWithState:&v392 objects:v417 count:16];
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
              objc_enumerationMutation(v159);
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

          v161 = [v159 countByEnumeratingWithState:&v392 objects:v417 count:16];
        }

        while (v161);
      }

      [(PLOperator *)v348 logEntry:v157];
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
          v170 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged ADHS keys:%@", v157];
          v171 = MEMORY[0x277D3F178];
          v172 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          v173 = [v172 lastPathComponent];
          v174 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v171 logMessage:v170 fromFile:v173 fromFunction:v174 fromLineNumber:4298];

          v175 = PLLogCommon();
          if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v410 = v170;
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
          v182 = [v7 objectForKey:v181];

          if (v182)
          {
            v183 = [&unk_282C19688 objectForKeyedSubscript:v180];
            v184 = [v7 objectForKeyedSubscript:v183];
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
  v190 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v348->_autoJoinScanDuration];
  [v48 setObject:v190 forKeyedSubscript:@"AutojoinScanDuration"];

  v191 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v348->_locationScanDuration];
  [v48 setObject:v191 forKeyedSubscript:@"LocationScanDuration"];

  v192 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v348->_pipelineScanDuration];
  [v48 setObject:v192 forKeyedSubscript:@"PipelineScanDuration"];

  v193 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v348->_unknownScanDuration];
  [v48 setObject:v193 forKeyedSubscript:@"UnknownScanDuration"];

  v194 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v348->_setupScanDuration];
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
          v205 = [v204 unsignedLongLongValue];
          v206 = [(PLEntry *)v346 objectForKeyedSubscript:@"AutojoinScanDuration"];
          v207 = [v206 unsignedLongLongValue];

          if (v205 >= v207)
          {
            v290 = MEMORY[0x277CCABB0];
            v291 = [v48 objectForKeyedSubscript:@"AutojoinScanDuration"];
            v292 = [v291 unsignedLongLongValue];
            v293 = [(PLEntry *)v346 objectForKeyedSubscript:@"AutojoinScanDuration"];
            v294 = [v290 numberWithUnsignedLongLong:{v292 - objc_msgSend(v293, "unsignedLongLongValue")}];
            [v351 setObject:v294 forKeyedSubscript:@"AutojoinScanDuration"];
          }

          else
          {
            [v351 setObject:0 forKeyedSubscript:@"AutojoinScanDuration"];
          }

          v295 = [v48 objectForKeyedSubscript:@"LocationScanDuration"];
          v296 = [v295 unsignedLongLongValue];
          v297 = [(PLEntry *)v346 objectForKeyedSubscript:@"LocationScanDuration"];
          v298 = [v297 unsignedLongLongValue];

          if (v296 >= v298)
          {
            v299 = MEMORY[0x277CCABB0];
            v300 = [v48 objectForKeyedSubscript:@"LocationScanDuration"];
            v301 = [v300 unsignedLongLongValue];
            v302 = [(PLEntry *)v346 objectForKeyedSubscript:@"LocationScanDuration"];
            v303 = [v299 numberWithUnsignedLongLong:{v301 - objc_msgSend(v302, "unsignedLongLongValue")}];
            [v351 setObject:v303 forKeyedSubscript:@"LocationScanDuration"];
          }

          else
          {
            [v351 setObject:0 forKeyedSubscript:@"LocationScanDuration"];
          }

          v304 = [v48 objectForKeyedSubscript:@"PipelineScanDuration"];
          v305 = [v304 unsignedLongLongValue];
          v306 = [(PLEntry *)v346 objectForKeyedSubscript:@"PipelineScanDuration"];
          v307 = [v306 unsignedLongLongValue];

          if (v305 >= v307)
          {
            v308 = MEMORY[0x277CCABB0];
            v309 = [v48 objectForKeyedSubscript:@"PipelineScanDuration"];
            v310 = [v309 unsignedLongLongValue];
            v311 = [(PLEntry *)v346 objectForKeyedSubscript:@"PipelineScanDuration"];
            v312 = [v308 numberWithUnsignedLongLong:{v310 - objc_msgSend(v311, "unsignedLongLongValue")}];
            [v351 setObject:v312 forKeyedSubscript:@"PipelineScanDuration"];
          }

          else
          {
            [v351 setObject:0 forKeyedSubscript:@"PipelineScanDuration"];
          }

          v313 = [v48 objectForKeyedSubscript:@"UnknownScanDuration"];
          v314 = [v313 unsignedLongLongValue];
          v315 = [(PLEntry *)v346 objectForKeyedSubscript:@"UnknownScanDuration"];
          v316 = [v315 unsignedLongLongValue];

          if (v314 >= v316)
          {
            v317 = MEMORY[0x277CCABB0];
            v318 = [v48 objectForKeyedSubscript:@"UnknownScanDuration"];
            v319 = [v318 unsignedLongLongValue];
            v320 = [(PLEntry *)v346 objectForKeyedSubscript:@"UnknownScanDuration"];
            v321 = [v317 numberWithUnsignedLongLong:{v319 - objc_msgSend(v320, "unsignedLongLongValue")}];
            [v351 setObject:v321 forKeyedSubscript:@"UnknownScanDuration"];
          }

          else
          {
            [v351 setObject:0 forKeyedSubscript:@"UnknownScanDuration"];
          }

          v322 = [v48 objectForKeyedSubscript:@"SetupScanDuration"];
          v323 = [v322 unsignedLongLongValue];
          v324 = [(PLEntry *)v346 objectForKeyedSubscript:@"SetupScanDuration"];
          v325 = [v324 unsignedLongLongValue];

          if (v323 < v325)
          {
            [v351 setObject:0 forKeyedSubscript:@"SetupScanDuration"];
            goto LABEL_223;
          }

          v326 = MEMORY[0x277CCABB0];
          v196 = [v48 objectForKeyedSubscript:@"SetupScanDuration"];
          v327 = [v196 unsignedLongLongValue];
          v328 = [(PLEntry *)v346 objectForKeyedSubscript:@"SetupScanDuration"];
          v329 = [v326 numberWithUnsignedLongLong:{v327 - objc_msgSend(v328, "unsignedLongLongValue")}];
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
  v210 = v348;
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
      v216 = [v215 lastPathComponent];
      v217 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
      [v214 logMessage:v213 fromFile:v216 fromFunction:v217 fromLineNumber:4364];

      v218 = PLLogCommon();
      if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v410 = v213;
        _os_log_debug_impl(&dword_21A4C6000, v218, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v41 = v355;
      v45 = v345;
      v210 = v348;
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
      v223 = [v222 integerValue];
      v224 = [(PLEntry *)v346 objectForKeyedSubscript:@"WifiTimestamp"];
      v225 = [v224 integerValue] + 60000;

      v41 = v355;
      v220 = v346;

      v43 = v223 <= v225;
      v210 = v348;
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
            v234 = [v233 integerValue];

            v47 = 0x277CCA000uLL;
            v235 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v234];
            [v221 setObject:v235 forKeyedSubscript:v230];
          }

          v227 = [obj countByEnumeratingWithState:&v382 objects:v415 count:16];
        }

        while (v227);
      }

      v48 = v352;
      v236 = [v352 objectForKeyedSubscript:@"WifiTimestamp"];
      [v221 setObject:v236 forKeyedSubscript:@"WifiTimestamp"];

      v210 = v348;
      [(PLOperator *)v348 logEntry:v221];
      v7 = v363;
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
          v246 = [v245 integerValue];

          v47 = 0x277CCA000uLL;
          v247 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v246];
          [v237 setObject:v247 forKeyedSubscript:v242];
        }

        v239 = [v353 countByEnumeratingWithState:&v378 objects:v414 count:16];
      }

      while (v239);
    }

    v48 = v352;
    v248 = [v352 objectForKeyedSubscript:@"WifiTimestamp"];
    [v237 setObject:v248 forKeyedSubscript:@"WifiTimestamp"];

    v7 = v363;
    v210 = v348;
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
        v251 = [MEMORY[0x277CCACA8] stringWithFormat:@" current data:%@ %@", v237, v353];
        v252 = MEMORY[0x277D3F178];
        v253 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v254 = [v253 lastPathComponent];
        v255 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v252 logMessage:v251 fromFile:v254 fromFunction:v255 fromLineNumber:4396];

        v256 = PLLogCommon();
        if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v410 = v251;
          _os_log_debug_impl(&dword_21A4C6000, v256, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v41 = v355;
        v45 = v345;
        v47 = 0x277CCA000;
        v220 = v346;
        v210 = v348;
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
          v267 = [v266 integerValue];

          v47 = 0x277CCA000uLL;
          v268 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v267];
          [v257 setObject:v268 forKeyedSubscript:v263];
        }

        v259 = [v354 countByEnumeratingWithState:&v373 objects:v413 count:16];
      }

      while (v259);
    }

    v48 = v352;
    v269 = [v352 objectForKeyedSubscript:@"WifiTimestamp"];
    [v257 setObject:v269 forKeyedSubscript:@"WifiTimestamp"];

    v210 = v348;
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
        v272 = [MEMORY[0x277CCACA8] stringWithFormat:@"ScanForward current data: %@ %@", v257, v354];
        v273 = MEMORY[0x277D3F178];
        v274 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v275 = [v274 lastPathComponent];
        v276 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v273 logMessage:v272 fromFile:v275 fromFunction:v276 fromLineNumber:4410];

        v277 = PLLogCommon();
        if (os_log_type_enabled(v277, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v410 = v272;
          _os_log_debug_impl(&dword_21A4C6000, v277, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v41 = v355;
        v47 = 0x277CCA000;
        v220 = v346;
        v210 = v348;
      }
    }

    v278 = PLLogWifi();
    v7 = v363;
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
    v280 = [v279 integerValue];

    v43 = v280 < 1;
    v42 = v342;
    if (!v43)
    {
      if (v45 != 1)
      {
        v281 = [v351 objectForKeyedSubscript:@"TimeDuration"];
        v282 = [v281 integerValue] / 1000.0;

        v283 = [v351 entryDate];
        v284 = [(PLEntry *)v346 entryDate];
        [v283 timeIntervalSinceDate:v284];
        v286 = v285;

        v42 = v342;
        if (v282 < v286)
        {
          v287 = MEMORY[0x277CBEAA8];
          v288 = [(PLEntry *)v346 entryDate];
          v289 = [v287 dateWithTimeInterval:v288 sinceDate:v282];
          [v351 setEntryDate:v289];

          v42 = v342;
        }
      }

      if (v338)
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

- (void)modelWiFiPower:(id)a3
{
  v495 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v5 = [v4 objectForKeyedSubscript:@"WifiPowered"];

    if (!v5)
    {
      v56 = [v4 entryDate];
      v57 = [v4 objectForKeyedSubscript:@"TimeDuration"];
      [v57 doubleValue];
      [(PLWifiAgent *)self modelWiFiSegmentPower:v56 withDataPower:0.0 withIdlePower:0.0 withLocationPower:0.0 withPipelinePower:0.0 withTotalDuration:v58 / 1000.0];
LABEL_88:

      goto LABEL_89;
    }

    v6 = 0x277D3F000;
    if (([MEMORY[0x277D3F208] isWiFiClass:1004002] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004003))
    {
      v7 = [v4 objectForKeyedSubscript:@"CurrentChannel"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [v4 objectForKeyedSubscript:@"PMDuration"];
      [v10 doubleValue];
      v485 = v11;

      v12 = [v4 objectForKeyedSubscript:@"MPCDuration"];
      [v12 doubleValue];
      v481 = v13;

      v14 = [v4 objectForKeyedSubscript:@"TimeDuration"];
      [v14 doubleValue];
      v478 = v15;

      v16 = [v4 objectForKeyedSubscript:@"TXDuration"];
      [v16 doubleValue];
      v475 = v17;

      v18 = [v4 objectForKeyedSubscript:@"RXDuration"];
      [v18 doubleValue];
      v473 = v19;

      v20 = [v4 objectForKeyedSubscript:@"HSICActiveDuration"];
      [v20 doubleValue];
      v470 = v21;

      v22 = [v4 objectForKeyedSubscript:@"AssociatedScanDuration"];
      [v22 doubleValue];
      v24 = v23;
      v25 = [v4 objectForKeyedSubscript:@"OtherScanDuration"];
      [v25 doubleValue];
      v27 = v26;
      v28 = [v4 objectForKeyedSubscript:@"PNOBSSIDDuration"];
      [v28 doubleValue];
      v30 = v29;
      v31 = [v4 objectForKeyedSubscript:@"PNOScanSSIDDuration"];
      [v31 doubleValue];
      v33 = v32;
      v34 = [v4 objectForKeyedSubscript:@"RoamScanDuration"];
      [v34 doubleValue];
      v36 = v35;
      v37 = [v4 objectForKeyedSubscript:@"SetupScanDuration"];
      [v37 doubleValue];
      v39 = v38;
      [v4 objectForKeyedSubscript:@"UserScanDuration"];
      v41 = v40 = self;
      [v41 doubleValue];
      v43 = v42;

      self = v40;
      v44 = [v4 objectForKeyedSubscript:@"FRTSDuration"];
      [v44 doubleValue];
      v467 = v45;

      v46 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
      v47 = [(PLWifiAgent *)v40 wifiChipsetQuery];
      v48 = [v46 objectForKeyedSubscript:v47];
      v49 = [(PLWifiAgent *)v40 wifiManufacturerQuery];
      v50 = [v48 objectForKeyedSubscript:v49];

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
          v193 = [v4 objectForKeyedSubscript:@"CurrentChannel"];
          [v193 doubleValue];
          v479 = v194;

          v195 = [v4 objectForKeyedSubscript:@"PMDuration"];
          [v195 doubleValue];
          v197 = v196;

          v198 = [v4 objectForKeyedSubscript:@"MPCDuration"];
          [v198 doubleValue];
          v200 = v199;

          v201 = [v4 objectForKeyedSubscript:@"TimeDuration"];
          [v201 doubleValue];
          v203 = v202;

          v204 = [v4 objectForKeyedSubscript:@"TXDuration"];
          [v204 doubleValue];
          v483 = v205;

          v206 = [v4 objectForKeyedSubscript:@"MIMOTXDuration"];
          [v206 doubleValue];
          v208 = v207;

          v209 = [v4 objectForKeyedSubscript:@"RXDuration"];
          [v209 doubleValue];
          v211 = v210;

          v212 = [v4 objectForKeyedSubscript:@"MIMORXDuration"];
          [v212 doubleValue];
          v214 = v213;

          v215 = [v4 objectForKeyedSubscript:@"SISORXDuration"];
          [v215 doubleValue];

          v216 = [v4 objectForKeyedSubscript:@"MIMOCSDuration"];
          [v216 doubleValue];
          v218 = v217;

          v219 = [v4 objectForKeyedSubscript:@"SISOCSDuration"];
          [v219 doubleValue];

          v220 = [v4 objectForKeyedSubscript:@"OCLCSDuration"];
          [v220 doubleValue];
          v463 = v221;

          v474 = 0.0;
          if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
          {
            v222 = [v4 objectForKeyedSubscript:@"SCRXDurationSISO"];
            [v222 doubleValue];
            v474 = v223;
          }

          v224 = [v4 objectForKeyedSubscript:@"FRTSDuration"];
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
          v230 = [(PLWifiAgent *)self wifiChipsetQuery];
          v476 = v229;
          v231 = [v229 objectForKeyedSubscript:v230];
          v232 = [(PLWifiAgent *)self wifiManufacturerQuery];
          v233 = [v231 objectForKeyedSubscript:v232];

          if (v479 >= 0.0)
          {
            v472 = v233;
            v488 = self;
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

            v282 = [v4 objectForKeyedSubscript:@"CurrentBandwidth"];
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

            v286 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v285];
            v287 = [v233 objectForKeyedSubscript:v280];
            v288 = [v287 objectForKeyedSubscript:v286];
            v289 = [v288 objectForKeyedSubscript:@"mimo_tx"];
            [v289 doubleValue];
            v453 = v290;

            v291 = [v233 objectForKeyedSubscript:v280];
            v292 = [v291 objectForKeyedSubscript:v286];
            v293 = [v292 objectForKeyedSubscript:@"mimo_rx"];
            [v293 doubleValue];
            v451 = v294;

            v295 = [v233 objectForKeyedSubscript:v280];
            v296 = [v295 objectForKeyedSubscript:v286];
            v297 = [v296 objectForKeyedSubscript:@"mimo_cs"];
            [v297 doubleValue];
            v457 = v298;

            v299 = [v233 objectForKeyedSubscript:v280];
            v300 = [v299 objectForKeyedSubscript:v286];
            v301 = [v300 objectForKeyedSubscript:@"siso_tx"];
            [v301 doubleValue];
            v449 = v302;

            v303 = [v233 objectForKeyedSubscript:v280];
            v304 = [v303 objectForKeyedSubscript:v286];
            v305 = [v304 objectForKeyedSubscript:@"siso_rx"];
            [v305 doubleValue];
            v447 = v306;

            v307 = [v233 objectForKeyedSubscript:v280];
            v308 = [v307 objectForKeyedSubscript:v286];
            v309 = [v308 objectForKeyedSubscript:@"siso_cs"];
            [v309 doubleValue];
            v461 = v310;

            v311 = [v233 objectForKeyedSubscript:v280];
            v312 = [v311 objectForKeyedSubscript:v286];
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
            self = v488;
            v459 = v218;
            if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
            {
              v321 = v320 * v447 + v465 * v451;
              v6 = 0x277D3F000;
              v237 = v476;
            }

            else
            {
              v367 = [v4 objectForKeyedSubscript:@"OPSFullDuration"];
              [v367 doubleValue];
              v369 = v368;

              v370 = [v4 objectForKeyedSubscript:@"OPSPartialDuration"];
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
              v376 = [v375 objectForKeyedSubscript:v286];
              v377 = [v376 objectForKeyedSubscript:@"ops_full"];
              [v377 doubleValue];
              v441 = v378;

              v379 = [v233 objectForKeyedSubscript:v280];
              v380 = [v379 objectForKeyedSubscript:v286];
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

              self = v488;
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
                v413 = [v412 lastPathComponent];
                v414 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
                [v411 logMessage:v410 fromFile:v413 fromFunction:v414 fromLineNumber:4984];

                v415 = PLLogCommon();
                if (os_log_type_enabled(v415, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *&buf[4] = v410;
                  _os_log_debug_impl(&dword_21A4C6000, v415, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                self = v488;
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
          v139 = [v4 objectForKeyedSubscript:@"LocationScanDuration"];
          [v139 doubleValue];
          v141 = v140;

          v142 = [v4 objectForKeyedSubscript:@"PipelineScanDuration"];
          [v142 doubleValue];
          v144 = v143;

          v56 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
          v145 = [(PLWifiAgent *)self wifiChipset];
          v146 = [v56 objectForKeyedSubscript:v145];
          v147 = [(PLWifiAgent *)self wifiManufacturer];
          v57 = [v146 objectForKeyedSubscript:v147];

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

          v158 = [v4 objectForKeyedSubscript:@"TimeDuration"];
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
              v172 = self;
              v173 = [MEMORY[0x277CCACA8] stringWithFormat:@"wifi_power = %f, wifi_power_data = %f, wifi_power_location = %f, wifi_power_wow = %f, wifi_power_idle = %f", *&v153, *&v168, *&v170, 0, *&v164];
              v174 = MEMORY[0x277D3F178];
              v175 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              v176 = [v175 lastPathComponent];
              v177 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
              [v174 logMessage:v173 fromFile:v176 fromFunction:v177 fromLineNumber:5292];

              v178 = PLLogCommon();
              if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v173;
                _os_log_debug_impl(&dword_21A4C6000, v178, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              self = v172;
            }
          }

          if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
          {
            v179 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MetricMonitorInstantKeys"];
            v180 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v179];
            v181 = [MEMORY[0x277CCABB0] numberWithDouble:v153];
            [v180 setObject:v181 forKeyedSubscript:@"WifiPower"];
            if ([(PLWifiAgent *)self wifiAwdlDevice])
            {
              *buf = 0;
              v487 = self;
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

              self = v487;
            }

            v493 = v180;
            v191 = [MEMORY[0x277CBEA60] arrayWithObjects:&v493 count:1];
            [(PLOperator *)self postEntries:v191];
          }

          else
          {
            v179 = [v4 entryDate];
            [(PLWifiAgent *)self modelWiFiSegmentPower:v179 withDataPower:v168 withIdlePower:v164 withLocationPower:v170 withPipelinePower:v169 withTotalDuration:v160 / 1000.0];
          }

          goto LABEL_88;
        }

        v238 = [v4 objectForKeyedSubscript:@"CurrentChannel"];
        [v238 doubleValue];
        v480 = v239;

        v240 = [v4 objectForKeyedSubscript:@"PMDuration"];
        [v240 doubleValue];
        v242 = v241;

        v243 = [v4 objectForKeyedSubscript:@"MPCDuration"];
        [v243 doubleValue];
        v245 = v244;

        v246 = [v4 objectForKeyedSubscript:@"TimeDuration"];
        [v246 doubleValue];
        v248 = v247;

        v249 = [v4 objectForKeyedSubscript:@"TXDuration"];
        [v249 doubleValue];
        v484 = v250;

        v251 = [v4 objectForKeyedSubscript:@"MIMOTXDuration"];
        [v251 doubleValue];
        v253 = v252;

        v254 = [v4 objectForKeyedSubscript:@"RXDuration"];
        [v254 doubleValue];
        v256 = v255;

        v257 = [v4 objectForKeyedSubscript:@"MIMORXDuration"];
        [v257 doubleValue];
        v259 = v258;

        v260 = [v4 objectForKeyedSubscript:@"SISORXDuration"];
        [v260 doubleValue];

        v261 = [v4 objectForKeyedSubscript:@"MIMOCSDuration"];
        [v261 doubleValue];
        v263 = v262;

        v264 = [v4 objectForKeyedSubscript:@"SISOCSDuration"];
        [v264 doubleValue];

        v265 = [v4 objectForKeyedSubscript:@"OCLCSDuration"];
        [v265 doubleValue];
        v466 = v266;

        v477 = 0.0;
        if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
        {
          v267 = [v4 objectForKeyedSubscript:@"SCRXDurationSISO"];
          [v267 doubleValue];
          v477 = v268;
        }

        v269 = [v4 objectForKeyedSubscript:@"FRTSDuration"];
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
        v274 = [(PLWifiAgent *)self wifiChipsetQuery];
        v275 = [v46 objectForKeyedSubscript:v274];
        v276 = [v275 objectForKeyedSubscript:@"usi"];

        if (v480 >= 0.0)
        {
          v462 = v46;
          v489 = self;
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

          v324 = [v4 objectForKeyedSubscript:@"CurrentBandwidth"];
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

          v330 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v329];
          [v276 objectForKeyedSubscript:v322];
          v332 = v331 = v276;
          v333 = [v332 objectForKeyedSubscript:v330];
          v334 = [v333 objectForKeyedSubscript:@"mimo_tx"];
          [v334 doubleValue];
          v454 = v335;

          v336 = [v331 objectForKeyedSubscript:v322];
          v337 = [v336 objectForKeyedSubscript:v330];
          v338 = [v337 objectForKeyedSubscript:@"mimo_rx"];
          [v338 doubleValue];
          v452 = v339;

          v340 = [v331 objectForKeyedSubscript:v322];
          v341 = [v340 objectForKeyedSubscript:v330];
          v342 = [v341 objectForKeyedSubscript:@"mimo_cs"];
          [v342 doubleValue];
          v458 = v343;

          v344 = [v331 objectForKeyedSubscript:v322];
          v345 = [v344 objectForKeyedSubscript:v330];
          v346 = [v345 objectForKeyedSubscript:@"siso_tx"];
          [v346 doubleValue];
          v450 = v347;

          v348 = [v331 objectForKeyedSubscript:v322];
          v349 = [v348 objectForKeyedSubscript:v330];
          v350 = [v349 objectForKeyedSubscript:@"siso_rx"];
          [v350 doubleValue];
          v448 = v351;

          v352 = [v331 objectForKeyedSubscript:v322];
          v353 = [v352 objectForKeyedSubscript:v330];
          v354 = [v353 objectForKeyedSubscript:@"siso_cs"];
          [v354 doubleValue];
          v464 = v355;

          v356 = [v331 objectForKeyedSubscript:v322];
          v357 = [v356 objectForKeyedSubscript:v330];
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
          self = v489;
          v460 = v263;
          if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
          {
            v366 = v365 * v448 + v469 * v452;
            v6 = 0x277D3F000;
            v276 = v331;
          }

          else
          {
            v385 = [v4 objectForKeyedSubscript:@"OPSFullDuration"];
            [v385 doubleValue];
            v387 = v386;

            v388 = [v4 objectForKeyedSubscript:@"OPSPartialDuration"];
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
            v394 = [v393 objectForKeyedSubscript:v330];
            v395 = [v394 objectForKeyedSubscript:@"ops_full"];
            [v395 doubleValue];
            v442 = v396;

            v397 = [v331 objectForKeyedSubscript:v322];
            v398 = [v397 objectForKeyedSubscript:v330];
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

            self = v489;
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
              v432 = [v431 lastPathComponent];
              v433 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
              [v430 logMessage:v429 fromFile:v432 fromFunction:v433 fromLineNumber:5175];

              v434 = PLLogCommon();
              if (os_log_type_enabled(v434, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v429;
                _os_log_debug_impl(&dword_21A4C6000, v434, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              self = v489;
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

      v85 = [v4 objectForKeyedSubscript:@"CurrentChannel"];
      [v85 doubleValue];
      v87 = v86;

      v88 = [v4 objectForKeyedSubscript:@"PMDuration"];
      [v88 doubleValue];
      v90 = v89;

      v91 = [v4 objectForKeyedSubscript:@"MPCDuration"];
      [v91 doubleValue];
      v93 = v92;

      v94 = [v4 objectForKeyedSubscript:@"TimeDuration"];
      [v94 doubleValue];
      v96 = v95;

      v97 = [v4 objectForKeyedSubscript:@"TXDuration"];
      [v97 doubleValue];
      v99 = v98;

      v100 = [v4 objectForKeyedSubscript:@"RXDuration"];
      [v100 doubleValue];
      v102 = v101;

      v103 = [v4 objectForKeyedSubscript:@"FRTSDuration"];
      [v103 doubleValue];
      v105 = v104;

      v46 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"wifi"];
      v106 = [(PLWifiAgent *)self wifiChipsetQuery];
      v107 = [v46 objectForKeyedSubscript:v106];
      v108 = [(PLWifiAgent *)self wifiManufacturerQuery];
      v50 = [v107 objectForKeyedSubscript:v108];

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
      v112 = self;
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

      v115 = [v4 objectForKeyedSubscript:@"CurrentBandwidth"];
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

      v119 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v118];
      v120 = [v50 objectForKeyedSubscript:v113];
      v121 = [v120 objectForKeyedSubscript:v119];
      v122 = [v121 objectForKeyedSubscript:@"tx"];
      [v122 doubleValue];
      v124 = v123;

      v125 = [v50 objectForKeyedSubscript:v113];
      v126 = [v125 objectForKeyedSubscript:v119];
      v127 = [v126 objectForKeyedSubscript:@"rx"];
      [v127 doubleValue];
      v129 = v128;

      v130 = [v50 objectForKeyedSubscript:v113];
      v131 = [v130 objectForKeyedSubscript:v119];
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

      self = v112;
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

- (void)modelWiFiSegmentPower:(id)a3 withDataPower:(double)a4 withIdlePower:(double)a5 withLocationPower:(double)a6 withPipelinePower:(double)a7 withTotalDuration:(double)a8
{
  v25 = a3;
  v15 = [MEMORY[0x277D3F208] isHomePod];
  if ((v15 & 1) == 0)
  {
    v15 = [v25 timeIntervalSince1970];
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
        self->_wifi_segment_power_data = (v23 + a4 * a8) / v24;
        self->_wifi_segment_power_idle = (v20 + a5 * a8) / v24;
        self->_wifi_segment_power_location = (v21 + a6 * a8) / v24;
        self->_wifi_segment_power_pipeline = (v22 + a7 * a8) / v24;
        objc_storeStrong(&self->_wifi_segment_date, a3);
        self->_wifi_segment_timestamp = v17;
      }
    }

    else
    {
      objc_storeStrong(&self->_wifi_segment_lastWrittenDate, a3);
      self->_wifi_segment_lastWrittenTimestamp = v17;
      objc_storeStrong(&self->_wifi_segment_date, a3);
      self->_wifi_segment_timestamp = self->_wifi_segment_lastWrittenTimestamp;
      self->_wifi_segment_power_data = a4;
      self->_wifi_segment_power_idle = a5;
      self->_wifi_segment_power_location = a6;
      self->_wifi_segment_power_pipeline = a7;
    }
  }

  MEMORY[0x2821F96F8](v15);
}

- (void)handleRemoteSessionCallbackWithUserInfo:(id)a3
{
  v3 = [a3 objectForKey:@"entry"];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 objectForKeyedSubscript:@"event"];

    v5 = [MEMORY[0x277D3F0C0] sharedInstance];
    v6 = [v7 entryDate];
    if (v4)
    {
      [v5 createDistributionEventForwardWithDistributionID:11 withRemovingChildNodeName:@"ScreenContinuityShell" withStartDate:v6];
    }

    else
    {
      [v5 createDistributionEventForwardWithDistributionID:11 withAddingChildNodeName:@"ScreenContinuityShell" withStartDate:v6];
    }

    v3 = v7;
  }
}

@end
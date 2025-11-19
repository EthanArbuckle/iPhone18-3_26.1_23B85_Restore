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

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLWifiAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitionWifiInstantPower
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (+[PLUtilities isPerfPowerMetricd])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_28714B608;
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
  v37[0] = &unk_28714B618;
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
  v31[0] = &unk_287146360;
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
  v33[0] = &unk_28714B628;
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
  v22 = &unk_28714B608;
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
  v26 = &unk_28714B608;
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
  v18 = &unk_28714B608;
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
  v26[0] = &unk_28714B608;
  v26[1] = MEMORY[0x277CBEC28];
  v25[2] = *MEMORY[0x277D3F508];
  v3 = MEMORY[0x277CBEC38];
  v26[2] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v28[0] = v4;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"RSSI";
  v5 = *MEMORY[0x277D3F5A8];
  v22[0] = &unk_287146378;
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
  v18[0] = &unk_287146378;
  v17[0] = v5;
  v15 = *MEMORY[0x277D3F510];
  v16 = &unk_28714B638;
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
  v12 = &unk_28714B608;
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
  v15[0] = &unk_28714B608;
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
  v15[0] = &unk_28714B648;
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
  v12 = &unk_28714B608;
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
  v75[0] = &unk_28714B658;
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
    v33[0] = &unk_28714B608;
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
    v16 = &unk_28714B608;
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
  v76 = &unk_28714B608;
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
    v31[0] = &unk_28714B608;
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
    v22[0] = &unk_28714B608;
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
  v21[0] = &unk_28714B608;
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
    v214 = &unk_28714B668;
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
    v210 = &unk_28714B618;
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
    v571 = &unk_28714B618;
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
    v565 = &unk_28714B618;
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
    v559 = &unk_28714B678;
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
    v553 = &unk_28714B688;
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
      v547 = &unk_28714B618;
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
      v541 = &unk_28714B698;
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
    v192 = &unk_28714B6A8;
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
    v186 = &unk_28714B6A8;
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
    v180 = &unk_28714B6A8;
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
    v174 = &unk_28714B658;
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
  v168 = &unk_28714B648;
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
  if ([(PLWifiAgent *)self wifiManager]!= a3)
  {
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
    if ([(PLWifiAgent *)self wifiManager])
    {
      [(PLWifiAgent *)self wifiManager];
      CFRunLoopGetMain();
      v8 = *v6;
      WiFiManagerClientScheduleWithRunLoop();
      [(PLWifiAgent *)self wifiManager];
      WiFiManagerClientRegisterDeviceAttachmentCallback();

      [(PLWifiAgent *)self findWifiDevice];
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__PLWifiAgent_setWifiManager___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v9;
      if (setWifiManager__defaultOnce != -1)
      {
        dispatch_once(&setWifiManager__defaultOnce, block);
      }

      if (setWifiManager__classDebugEnabled == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi manager reference"];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v13 = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiManager:]"];
        [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:2318];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

uint64_t __30__PLWifiAgent_setWifiManager___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWifiManager__classDebugEnabled = result;
  return result;
}

- (void)setWiFiHotspotDevice:(__WiFiDeviceClient *)a3
{
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
        if (setWiFiHotspotDevice__defaultOnce != -1)
        {
          dispatch_once(&setWiFiHotspotDevice__defaultOnce, block);
        }

        if (setWiFiHotspotDevice__classDebugEnabled == 1)
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
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

LABEL_17:
        }
      }
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __36__PLWifiAgent_setWiFiHotspotDevice___block_invoke_857;
      v20 = &__block_descriptor_40_e5_v8__0lu32l8;
      v21 = v12;
      if (setWiFiHotspotDevice__defaultOnce_855 != -1)
      {
        dispatch_once(&setWiFiHotspotDevice__defaultOnce_855, &v17);
      }

      if (setWiFiHotspotDevice__classDebugEnabled_856 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi hotspot device reference", v17, v18, v19, v20, v21];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiHotspotDevice:]"];
        [v13 logMessage:v6 fromFile:v15 fromFunction:v16 fromLineNumber:2341];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_17;
      }
    }
  }
}

uint64_t __36__PLWifiAgent_setWiFiHotspotDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWiFiHotspotDevice__classDebugEnabled = result;
  return result;
}

uint64_t __36__PLWifiAgent_setWiFiHotspotDevice___block_invoke_857(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWiFiHotspotDevice__classDebugEnabled_856 = result;
  return result;
}

- (void)setWiFiAWDLDevice:(__WiFiDeviceClient *)a3
{
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
        if (setWiFiAWDLDevice__defaultOnce != -1)
        {
          dispatch_once(&setWiFiAWDLDevice__defaultOnce, block);
        }

        if (setWiFiAWDLDevice__classDebugEnabled == 1)
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
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

LABEL_17:
        }
      }
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __33__PLWifiAgent_setWiFiAWDLDevice___block_invoke_866;
      v20 = &__block_descriptor_40_e5_v8__0lu32l8;
      v21 = v12;
      if (setWiFiAWDLDevice__defaultOnce_864 != -1)
      {
        dispatch_once(&setWiFiAWDLDevice__defaultOnce_864, &v17);
      }

      if (setWiFiAWDLDevice__classDebugEnabled_865 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi awdl device reference", v17, v18, v19, v20, v21];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiAWDLDevice:]"];
        [v13 logMessage:v6 fromFile:v15 fromFunction:v16 fromLineNumber:2363];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_17;
      }
    }
  }
}

uint64_t __33__PLWifiAgent_setWiFiAWDLDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWiFiAWDLDevice__classDebugEnabled = result;
  return result;
}

uint64_t __33__PLWifiAgent_setWiFiAWDLDevice___block_invoke_866(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWiFiAWDLDevice__classDebugEnabled_865 = result;
  return result;
}

- (void)setWifiDevice:(__WiFiDeviceClient *)a3
{
  if ([(PLWifiAgent *)self wifiDevice]!= a3)
  {
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
    if ([(PLWifiAgent *)self wifiDevice])
    {
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

      [(PLWifiAgent *)self logEventForwardModuleInfo];
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__PLWifiAgent_setWifiDevice___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (setWifiDevice__defaultOnce != -1)
      {
        dispatch_once(&setWifiDevice__defaultOnce, block);
      }

      if (setWifiDevice__classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Was passed an invalid wifi device reference"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiDevice:]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:2420];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

uint64_t __29__PLWifiAgent_setWifiDevice___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setWifiDevice__classDebugEnabled = result;
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
    if (findWifiDevice_defaultOnce_900 != -1)
    {
      dispatch_once(&findWifiDevice_defaultOnce_900, v53);
    }

    if (findWifiDevice_classDebugEnabled_901 != 1)
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
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
    if (findWifiDevice_defaultOnce != -1)
    {
      dispatch_once(&findWifiDevice_defaultOnce, v58);
    }

    if (findWifiDevice_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
      if (findWifiDevice_defaultOnce_876 != -1)
      {
        dispatch_once(&findWifiDevice_defaultOnce_876, v57);
      }

      if (findWifiDevice_classDebugEnabled_877 == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
            if (findWifiDevice_defaultOnce_882 != -1)
            {
              dispatch_once(&findWifiDevice_defaultOnce_882, block);
            }

            if (findWifiDevice_classDebugEnabled_883 == 1)
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
                _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
            if (findWifiDevice_defaultOnce_888 != -1)
            {
              dispatch_once(&findWifiDevice_defaultOnce_888, v55);
            }

            if (findWifiDevice_classDebugEnabled_889 == 1)
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
                _os_log_debug_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
    if (findWifiDevice_defaultOnce_894 != -1)
    {
      dispatch_once(&findWifiDevice_defaultOnce_894, v54);
    }

    if (findWifiDevice_classDebugEnabled_895 == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
  findWifiDevice_classDebugEnabled = result;
  return result;
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke_878(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled_877 = result;
  return result;
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke_884(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled_883 = result;
  return result;
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke_890(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled_889 = result;
  return result;
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke_896(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled_895 = result;
  return result;
}

uint64_t __29__PLWifiAgent_findWifiDevice__block_invoke_902(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  findWifiDevice_classDebugEnabled_901 = result;
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
    v10[3] = &unk_279A5BE78;
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
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBECE8];
  [(PLWifiAgent *)self setWifiManager:WiFiManagerClientCreate()];
  v4 = objc_alloc(MEMORY[0x277D3F160]);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke;
  v36[3] = &unk_279A5BE78;
  v36[4] = self;
  v5 = [v4 initWithOperator:self forNotification:@"com.apple.airport.userNotification" requireState:1 withBlock:v36];
  notificationWiFiChanged = self->_notificationWiFiChanged;
  self->_notificationWiFiChanged = v5;

  if ([(PLOperator *)self isDebugEnabled])
  {
    v7 = objc_alloc(MEMORY[0x277D3F1A8]);
    v37[0] = &unk_287146390;
    v37[1] = &unk_2871463A8;
    v38[0] = &unk_28714B608;
    v38[1] = &unk_2871463C0;
    v39 = @"Level";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v40[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_934;
    v35[3] = &unk_279A5BE78;
    v35[4] = self;
    v10 = [v7 initWithOperator:self forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v9 withBlock:v35];
    batteryLevelChanged = self->_batteryLevelChanged;
    self->_batteryLevelChanged = v10;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_2_935;
  v34[3] = &unk_279A5BE78;
  v34[4] = self;
  v12 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v34];
  sbcLevelChanged = self->_sbcLevelChanged;
  self->_sbcLevelChanged = v12;

  v14 = objc_alloc(MEMORY[0x277D3F1A8]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_942;
  v33[3] = &unk_279A5BE78;
  v33[4] = self;
  v15 = [v14 initWithOperator:self forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" withBlock:v33];
  [(PLWifiAgent *)self setDeviceWake:v15];
  block[5] = MEMORY[0x277D85DD0];
  block[6] = 3221225472;
  block[7] = __39__PLWifiAgent_initOperatorDependancies__block_invoke_950;
  block[8] = &unk_279A5C600;
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
    if (initOperatorDependancies_defaultOnce_0 != -1)
    {
      dispatch_once(&initOperatorDependancies_defaultOnce_0, block);
    }

    if (initOperatorDependancies_classDebugEnabled_0 == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
  v31[3] = &unk_279A5BCB8;
  v31[4] = self;
  v26 = [v25 initWithOperator:self withRegistration:&unk_287148E00 withBlock:v31];
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

void __39__PLWifiAgent_initOperatorDependancies__block_invoke(uint64_t a1, void *a2, void *a3)
{
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
    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_defaultOnce, block);
    }

    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __39__PLWifiAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_classDebugEnabled = result;
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
    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_2_defaultOnce, block);
    }

    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_2_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) log];
  result = [MEMORY[0x277D3F208] isHomePod];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) writeModeledPower];
  }

  return result;
}

uint64_t __39__PLWifiAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_2_classDebugEnabled = result;
  return result;
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_942(uint64_t a1, void *a2)
{
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
      if (kPLWifiAgentEventForwardWifiAssist_block_invoke_3_defaultOnce != -1)
      {
        dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_3_defaultOnce, block);
      }

      if (kPLWifiAgentEventForwardWifiAssist_block_invoke_3_classDebugEnabled == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }
  }
}

uint64_t __39__PLWifiAgent_initOperatorDependancies__block_invoke_2_946(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_3_classDebugEnabled = result;
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
      __39__PLWifiAgent_initOperatorDependancies__block_invoke_950_cold_1();
    }
  }
}

uint64_t __39__PLWifiAgent_initOperatorDependancies__block_invoke_951(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled_0 = result;
  return result;
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_959(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCameraAgent_initOperatorDependancies__block_invoke_172_cold_1();
  }
}

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_972(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogWifi();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLWifiAgent_initOperatorDependancies__block_invoke_972_cold_1();
  }

  [*(a1 + 32) logEventPointRemoteControlSession:v6];
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

- (BOOL)hasWiFi
{
  v3 = [(PLWifiAgent *)self wifiManager];
  if (v3)
  {
    LOBYTE(v3) = [(PLWifiAgent *)self wifiDevice]!= 0;
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

- (unint64_t)getCurrentChannelWidth:(__WiFiNetwork *)a3
{
  Property = WiFiNetworkGetProperty();
  if (Property)
  {
    valuePtr = 0;
    CFNumberGetValue(Property, kCFNumberSInt32Type, &valuePtr);
    if ((valuePtr & 2) != 0)
    {
      return 20;
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
        return 40;
      }

      else
      {
        return v4;
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
      if (getCurrentChannelWidth__defaultOnce != -1)
      {
        dispatch_once(&getCurrentChannelWidth__defaultOnce, block);
      }

      if (getCurrentChannelWidth__classDebugEnabled == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    return 0;
  }
}

uint64_t __38__PLWifiAgent_getCurrentChannelWidth___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getCurrentChannelWidth__classDebugEnabled = result;
  return result;
}

uint64_t __78__PLWifiAgent_logFromWiFiNoAvailableCallback_withAvailability_withWakeParams___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logFromWiFiNoAvailableCallback_withAvailability_withWakeParams__classDebugEnabled = result;
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
  block[3] = &unk_279A5C768;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke(uint64_t a1)
{
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
    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_4_defaultOnce != -1)
    {
      dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_4_defaultOnce, block);
    }

    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_4_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_1005;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v14;
    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_4_defaultOnce_1003 != -1)
    {
      dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_4_defaultOnce_1003, v21);
    }

    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_4_classDebugEnabled_1004 == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) log];
  objc_autoreleasePoolPop(v2);
}

uint64_t __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_4_classDebugEnabled = result;
  return result;
}

uint64_t __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke_1005(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_4_classDebugEnabled_1004 = result;
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
  v13[3] = &unk_279A5CEB8;
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
    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_5_defaultOnce != -1)
    {
      dispatch_once(&kPLWifiAgentEventForwardWifiAssist_block_invoke_5_defaultOnce, block);
    }

    if (kPLWifiAgentEventForwardWifiAssist_block_invoke_5_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) logEventPointJoin:*(a1 + 56) withStats:*(a1 + 48)];
  objc_autoreleasePoolPop(v2);
}

uint64_t __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLWifiAgentEventForwardWifiAssist_block_invoke_5_classDebugEnabled = result;
  return result;
}

- (void)log
{
  [(PLWifiAgent *)self logEventBackwardWifiProperties:1];
  [(PLWifiAgent *)self logEventBackwardUserScanDuration];
  [(PLWifiAgent *)self logEventPointAWDLServicesAndPorts];

  [(PLWifiAgent *)self logEventBackwardControlCPUPowerStats];
}

- (void)logEventPointWake:(id)a3
{
  v4 = a3;
  if ([(PLWifiAgent *)self hasWiFi])
  {
    if (v4)
    {
      v5 = v4;
      goto LABEL_11;
    }

    [(PLWifiAgent *)self wifiDevice];
    v5 = WiFiDeviceClientCopyProperty();
    if (v5)
    {
LABEL_11:
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v12 = objc_opt_class();
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1027;
        v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v91[4] = v12;
        if (logEventPointWake__defaultOnce_1025 != -1)
        {
          dispatch_once(&logEventPointWake__defaultOnce_1025, v91);
        }

        if (logEventPointWake__classDebugEnabled_1026 == 1)
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
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v87 = v4;
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

      v28 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Wake"];
      v29 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v28];
      [v29 setObject:v19 forKeyedSubscript:@"WakeReason"];
      v85 = v27;
      [v29 setObject:v27 forKeyedSubscript:@"WakeTime"];
      v86 = v20;
      [v29 setObject:v20 forKeyedSubscript:@"TCPKAWakeReason"];
      if (v11)
      {
        v30 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSObject length](v11, "length")}];
        [v29 setObject:v30 forKeyedSubscript:@"WakeLen"];
      }

      if (([v19 isEqualToString:@"DataFrame"] & 1) == 0 && !objc_msgSend(v19, "isEqualToString:", @"E_RX_IP_PACKET"))
      {
        if ([v19 isEqualToString:@"E_PFN_NET_FOUND"])
        {
          [(PLWifiAgent *)self logEventPointWakePNO:v11 withParams:v5 toEntry:v29];
LABEL_51:
          [(PLOperator *)self logEntry:v29];

LABEL_52:
          goto LABEL_53;
        }

        if ([v19 isEqualToString:@"E_LINK"])
        {
          [(PLWifiAgent *)self logEventPointWakeLink:v11 withParams:v5 toEntry:v29];
          goto LABEL_51;
        }

        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_51;
        }

        v72 = objc_opt_class();
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1094;
        v88[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v88[4] = v72;
        if (logEventPointWake__defaultOnce_1092 != -1)
        {
          dispatch_once(&logEventPointWake__defaultOnce_1092, v88);
        }

        if (logEventPointWake__classDebugEnabled_1093 != 1)
        {
          goto LABEL_51;
        }

        v82 = v28;
        v84 = v5;
        v73 = v19;
        v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: unrecognized wake reason: %@", v19];
        v75 = MEMORY[0x277D3F178];
        v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v77 = [v76 lastPathComponent];
        v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
        [v75 logMessage:v74 fromFile:v77 fromFunction:v78 fromLineNumber:2910];

        v79 = PLLogCommon();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v19 = v73;
        v5 = v84;
LABEL_50:
        v28 = v82;
        goto LABEL_51;
      }

      v82 = v28;
      [(PLWifiAgent *)self logEventPointWakeDataFrame:v11 withParams:v5 toEntry:v29];
      v31 = [v29 objectForKeyedSubscript:@"tcp_dest_port"];
      v81 = v11;
      v83 = v5;
      if (v31 && (v32 = v31, [v29 objectForKeyedSubscript:@"tcp_source_port"], v33 = objc_claimAutoreleasedReturnValue(), v33, v32, v33))
      {
        v34 = v19;
        v35 = MEMORY[0x277CCABB0];
        v36 = [v29 objectForKeyedSubscript:@"tcp_dest_port"];
        v37 = [v35 numberWithInteger:{objc_msgSend(v36, "integerValue")}];

        v38 = MEMORY[0x277CCABB0];
        v39 = @"tcp_source_port";
      }

      else
      {
        v40 = [v29 objectForKeyedSubscript:@"udp_dest_port"];
        if (!v40 || (v41 = v40, [v29 objectForKeyedSubscript:@"udp_source_port"], v42 = objc_claimAutoreleasedReturnValue(), v42, v41, !v42))
        {
          if (![MEMORY[0x277D3F180] debugEnabled])
          {
            goto LABEL_39;
          }

          v47 = objc_opt_class();
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1066;
          v90[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v90[4] = v47;
          if (logEventPointWake__defaultOnce_1064 != -1)
          {
            dispatch_once(&logEventPointWake__defaultOnce_1064, v90);
          }

          if (logEventPointWake__classDebugEnabled_1065 != 1)
          {
LABEL_39:
            v34 = v19;
            v46 = 0;
            v37 = 0;
            goto LABEL_40;
          }

          v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: unsupported network protocol"];
          v48 = MEMORY[0x277D3F178];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          v50 = [v49 lastPathComponent];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v48 logMessage:v45 fromFile:v50 fromFunction:v51 fromLineNumber:2889];

          v52 = PLLogCommon();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v34 = v19;

          v46 = 0;
          v37 = 0;
LABEL_29:

LABEL_40:
          v53 = +[PLProcessPortMap sharedInstance];
          v54 = [v29 objectForKeyedSubscript:@"ip_destination"];
          v55 = [v29 objectForKeyedSubscript:@"ip_source"];
          v56 = [v29 objectForKeyedSubscript:@"ip_protocol"];
          v57 = [v53 pidAndProcessNameForDestAddress:v54 withDestPort:v37 withSourceAddress:v55 withSourcePort:v46 withProtocol:v56];

          v19 = v34;
          v5 = v83;
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v58 = objc_opt_class();
            v89[0] = MEMORY[0x277D85DD0];
            v89[1] = 3221225472;
            v89[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1082;
            v89[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v89[4] = v58;
            if (logEventPointWake__defaultOnce_1080 != -1)
            {
              dispatch_once(&logEventPointWake__defaultOnce_1080, v89);
            }

            if (logEventPointWake__classDebugEnabled_1081 == 1)
            {
              v80 = v19;
              v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"pidAndProcessName=%@", v57];
              v60 = MEMORY[0x277D3F178];
              v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              v62 = [v61 lastPathComponent];
              v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
              [v60 logMessage:v59 fromFile:v62 fromFunction:v63 fromLineNumber:2898];

              v64 = PLLogCommon();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }

              v19 = v80;
              v5 = v83;
            }
          }

          if (v57)
          {
            v65 = [v57 pid];
            [v29 setObject:v65 forKeyedSubscript:@"PID"];

            v66 = [v57 processName];
            [v29 setObject:v66 forKeyedSubscript:@"ProcessName"];
          }

          v4 = v87;
          v11 = v81;
          goto LABEL_50;
        }

        v34 = v19;
        v43 = MEMORY[0x277CCABB0];
        v44 = [v29 objectForKeyedSubscript:@"udp_dest_port"];
        v37 = [v43 numberWithInteger:{objc_msgSend(v44, "integerValue")}];

        v38 = MEMORY[0x277CCABB0];
        v39 = @"udp_source_port";
      }

      v45 = [v29 objectForKeyedSubscript:v39];
      v46 = [v38 numberWithInteger:{objc_msgSend(v45, "integerValue")}];
      goto LABEL_29;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v67 = objc_opt_class();
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __33__PLWifiAgent_logEventPointWake___block_invoke_1021;
      v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v92[4] = v67;
      if (logEventPointWake__defaultOnce_1019 != -1)
      {
        dispatch_once(&logEventPointWake__defaultOnce_1019, v92);
      }

      if (logEventPointWake__classDebugEnabled_1020 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: woke up for wlan but WoW wakeup parameters dictionary returned nil"];
        v68 = MEMORY[0x277D3F178];
        v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v70 = [v69 lastPathComponent];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
        [v68 logMessage:v5 fromFile:v70 fromFunction:v71 fromLineNumber:2859];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_52;
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
    if (logEventPointWake__defaultOnce != -1)
    {
      dispatch_once(&logEventPointWake__defaultOnce, block);
    }

    if (logEventPointWake__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"No wifi to log power properties about"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
      [v7 logMessage:v5 fromFile:v9 fromFunction:v10 fromLineNumber:2845];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_52;
    }
  }

LABEL_53:
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled = result;
  return result;
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke_1021(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled_1020 = result;
  return result;
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke_1027(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled_1026 = result;
  return result;
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke_1066(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled_1065 = result;
  return result;
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke_1082(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled_1081 = result;
  return result;
}

uint64_t __33__PLWifiAgent_logEventPointWake___block_invoke_1094(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWake__classDebugEnabled_1093 = result;
  return result;
}

- (void)logEventPointWakeDataFrame:(id)a3 withParams:(id)a4 toEntry:(id)a5
{
  v94 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  if ([v6 length] > 0xE)
  {
    [v6 getBytes:v92 length:14];
    v15 = [v6 subdataWithRange:{14, objc_msgSend(v6, "length") - 14}];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v92[0], v92[1], v92[2], v92[3], v92[4], v92[5]];;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v92[6], v92[7], v92[8], v92[9], v92[10], v92[11]];;
    v18 = [MEMORY[0x277D3F1F8] decodeEtherType:bswap32(v93) >> 16];
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
          if (logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1126 != -1)
          {
            dispatch_once(&logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1126, v89);
          }

          if (logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1127 == 1)
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
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
            goto LABEL_40;
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
        if (logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1120 != -1)
        {
          dispatch_once(&logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1120, v90);
        }

        if (logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1121 != 1)
        {
          goto LABEL_40;
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v16 = v86;
      }

      v15 = v84;
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_41;
      }

      v71 = objc_opt_class();
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1191;
      v88[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v88[4] = v71;
      if (logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1189 != -1)
      {
        dispatch_once(&logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1189, v88);
      }

      if (logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1190 != 1)
      {
        goto LABEL_41;
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v16 = v87;
    }

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (logEventPointWakeDataFrame_withParams_toEntry__defaultOnce != -1)
    {
      dispatch_once(&logEventPointWakeDataFrame_withParams_toEntry__defaultOnce, block);
    }

    if (logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

LABEL_42:

  v83 = *MEMORY[0x277D85DE8];
}

uint64_t __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled = result;
  return result;
}

uint64_t __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1122(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1121 = result;
  return result;
}

uint64_t __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1128(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1127 = result;
  return result;
}

uint64_t __61__PLWifiAgent_logEventPointWakeDataFrame_withParams_toEntry___block_invoke_1191(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1190 = result;
  return result;
}

- (void)logEventPointWakePNO:(id)a3 withParams:(id)a4 toEntry:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [a4 objectForCFString:@"IO80211InterfaceWoWWakeUpCommand"];
  memset(v52, 0, 48);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  memset(v51, 0, 44);
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
      if (logEventPointWakePNO_withParams_toEntry__defaultOnce != -1)
      {
        dispatch_once(&logEventPointWakePNO_withParams_toEntry__defaultOnce, block);
      }

      if (logEventPointWakePNO_withParams_toEntry__classDebugEnabled == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

LABEL_29:
        v21 = 0;
        goto LABEL_30;
      }
    }

    goto LABEL_32;
  }

  [v7 getBytes:v52 length:48];
  [v7 getBytes:v49 range:{48, 56}];
  if (v52[1] != 553648128)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v33 = objc_opt_class();
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1200;
      v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v47[4] = v33;
      if (logEventPointWakePNO_withParams_toEntry__defaultOnce_1198 != -1)
      {
        dispatch_once(&logEventPointWakePNO_withParams_toEntry__defaultOnce_1198, v47);
      }

      if (logEventPointWakePNO_withParams_toEntry__classDebugEnabled_1199 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFi Logger wl_event_msg_t.event_type (0x%x) and wow_wakeup_command (%@ 0x%x) don't match", bswap32(v52[1]), v9, 16];
        v34 = MEMORY[0x277D3F178];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v36 = [v35 lastPathComponent];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
        [v34 logMessage:v11 fromFile:v36 fromFunction:v37 fromLineNumber:2994];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        goto LABEL_29;
      }
    }

LABEL_32:
    v25 = 0;
    goto LABEL_33;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v49[2]];
  [v8 setObject:v17 forKeyedSubscript:@"network_count"];

  v18 = v49[2];
  if (v49[2] >= 5)
  {
    v19 = 5;
  }

  else
  {
    v19 = v49[2];
  }

  v49[2] = v19;
  if (!v18)
  {
    goto LABEL_32;
  }

  v20 = 0;
  v21 = 0;
  v22 = 60;
  v45 = v7;
  while ([v7 length] >= (v22 + 44))
  {
    if (v20)
    {
      [v7 getBytes:v51 range:{v22, 44}];
    }

    else
    {
      v23 = *((v49 | 0xC) + 0x10);
      v51[0] = *(v49 | 0xC);
      v51[1] = v23;
      *(&v51[1] + 12) = *((v49 | 0xC) + 0x1C);
    }

    if (BYTE7(v51[0]) >= 0x20u)
    {
      v24 = 32;
    }

    else
    {
      v24 = BYTE7(v51[0]);
    }

    BYTE7(v51[0]) = v24;
    __memcpy_chk();
    v53[v24] = 0;
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", LOBYTE(v51[0]), BYTE1(v51[0]), BYTE2(v51[0]), BYTE3(v51[0]), BYTE4(v51[0]), BYTE5(v51[0])];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v51[0])];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_channel", v20];
    [v8 setObject:v26 forKeyedSubscript:v27];

    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v53];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_ssid", v20];
    [v8 setObject:v28 forKeyedSubscript:v29];

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_bssid", v20];
    [v8 setObject:v25 forKeyedSubscript:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithInt:SWORD4(v51[2])];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_rssi", v20];
    [v8 setObject:v31 forKeyedSubscript:v32];

    ++v20;
    v22 += 44;
    v21 = v25;
    v7 = v45;
    if (v20 >= v49[2])
    {
      goto LABEL_33;
    }
  }

  if (![MEMORY[0x277D3F180] debugEnabled])
  {
    goto LABEL_31;
  }

  v39 = objc_opt_class();
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1209;
  v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v46[4] = v39;
  if (logEventPointWakePNO_withParams_toEntry__defaultOnce_1207 != -1)
  {
    dispatch_once(&logEventPointWakePNO_withParams_toEntry__defaultOnce_1207, v46);
  }

  if (logEventPointWakePNO_withParams_toEntry__classDebugEnabled_1208 != 1)
  {
    goto LABEL_31;
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
    __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
  }

LABEL_30:

LABEL_31:
  v25 = v21;
LABEL_33:

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakePNO_withParams_toEntry__classDebugEnabled = result;
  return result;
}

uint64_t __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1200(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakePNO_withParams_toEntry__classDebugEnabled_1199 = result;
  return result;
}

uint64_t __55__PLWifiAgent_logEventPointWakePNO_withParams_toEntry___block_invoke_1209(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakePNO_withParams_toEntry__classDebugEnabled_1208 = result;
  return result;
}

- (void)logEventPointWakeLink:(id)a3 withParams:(id)a4 toEntry:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  memset(v28, 0, sizeof(v28));
  if ([v7 length] > 0x2F)
  {
    [v7 getBytes:v28 length:48];
    if (DWORD1(v28[0]) == 0x10000000)
    {
      v10 = [(PLWifiAgent *)self decodeWifiEventLinkReason:bswap32(HIDWORD(v28[0]))];
      [v8 setObject:v10 forKeyedSubscript:@"loss_reason"];
LABEL_17:

      goto LABEL_18;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke_1236;
      v25 = &__block_descriptor_40_e5_v8__0lu32l8;
      v26 = v16;
      if (logEventPointWakeLink_withParams_toEntry__defaultOnce_1234 != -1)
      {
        dispatch_once(&logEventPointWakeLink_withParams_toEntry__defaultOnce_1234, &v22);
      }

      if (logEventPointWakeLink_withParams_toEntry__classDebugEnabled_1235 == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFi Logger wl_event_msg_t.event_type (0x%x) and wow_wakeup_command (0x%x) don't match", bswap32(DWORD1(v28[0])), 16, v22, v23, v24, v25, v26];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
        [v17 logMessage:v10 fromFile:v19 fromFunction:v20 fromLineNumber:3044];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

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
    if (logEventPointWakeLink_withParams_toEntry__defaultOnce != -1)
    {
      dispatch_once(&logEventPointWakeLink_withParams_toEntry__defaultOnce, block);
    }

    if (logEventPointWakeLink_withParams_toEntry__classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

LABEL_16:

      goto LABEL_17;
    }
  }

LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeLink_withParams_toEntry__classDebugEnabled = result;
  return result;
}

uint64_t __56__PLWifiAgent_logEventPointWakeLink_withParams_toEntry___block_invoke_1236(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointWakeLink_withParams_toEntry__classDebugEnabled_1235 = result;
  return result;
}

- (void)logEventPointJoin:(unsigned __int8)a3 withStats:(id)a4
{
  v4 = a3;
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
    if (logEventPointJoin_withStats__defaultOnce != -1)
    {
      dispatch_once(&logEventPointJoin_withStats__defaultOnce, block);
    }

    if (logEventPointJoin_withStats__classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __43__PLWifiAgent_logEventPointJoin_withStats___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointJoin_withStats__classDebugEnabled = result;
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
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "WiFi Chipset: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLWifiAgent_logEventForwardModuleInfo__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardModuleInfo_classDebugEnabled = result;
  return result;
}

uint64_t __40__PLWifiAgent_logEventForwardModuleInfo__block_invoke_1248(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardModuleInfo_classDebugEnabled_1247 = result;
  return result;
}

- (void)logEventForwardRSSI:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __35__PLWifiAgent_logEventForwardRSSI___block_invoke;
      v19 = &__block_descriptor_40_e5_v8__0lu32l8;
      v20 = v5;
      if (logEventForwardRSSI__defaultOnce != -1)
      {
        dispatch_once(&logEventForwardRSSI__defaultOnce, &block);
      }

      if (logEventForwardRSSI__classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"LinkQuality Callback: %@", v4, block, v17, v18, v19, v20];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardRSSI:]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:3184];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
}

uint64_t __35__PLWifiAgent_logEventForwardRSSI___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardRSSI__classDebugEnabled = result;
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
      if (logEventForwardAWDLState__defaultOnce != -1)
      {
        dispatch_once(&logEventForwardAWDLState__defaultOnce, block);
      }

      if (logEventForwardAWDLState__classDebugEnabled == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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

      [v17 setObject:&unk_2871463F0 forKeyedSubscript:@"AWDLRanging"];
      v19 = 0;
      [(PLWifiAgent *)self wifiAwdlDevice];
      WiFiDeviceClientCopyInterfaceStateInfo();
      [(PLOperator *)self logEntry:v17];
      [(PLWifiAgent *)self logAWDLStateEntry:v17];
    }
  }
}

uint64_t __40__PLWifiAgent_logEventForwardAWDLState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardAWDLState__classDebugEnabled = result;
  return result;
}

uint64_t __40__PLWifiAgent_logEventForwardAWDLState___block_invoke_1289(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardAWDLState__classDebugEnabled_1288 = result;
  return result;
}

- (void)logEventForwardHotspotState:(id)a3
{
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
          if (logEventForwardHotspotState__defaultOnce != -1)
          {
            dispatch_once(&logEventForwardHotspotState__defaultOnce, block);
          }

          if (logEventForwardHotspotState__classDebugEnabled == 1)
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
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
                v43 = [v27 BOOLValue];
                v28 = [v5 objectForKeyedSubscript:v6];
                v42 = [v28 BOOLValue];

                if (v43 == v42)
                {
                  if (![MEMORY[0x277D3F180] debugEnabled])
                  {
                    goto LABEL_19;
                  }

                  v36 = objc_opt_class();
                  v44[0] = MEMORY[0x277D85DD0];
                  v44[1] = 3221225472;
                  v44[2] = __43__PLWifiAgent_logEventForwardHotspotState___block_invoke_1298;
                  v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v44[4] = v36;
                  if (logEventForwardHotspotState__defaultOnce_1296 != -1)
                  {
                    dispatch_once(&logEventForwardHotspotState__defaultOnce_1296, v44);
                  }

                  if (logEventForwardHotspotState__classDebugEnabled_1297 != 1)
                  {
                    goto LABEL_19;
                  }

                  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Same hotspot data: %@", v5];
                  v37 = MEMORY[0x277D3F178];
                  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                  v39 = [v38 lastPathComponent];
                  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardHotspotState:]"];
                  [v37 logMessage:v29 fromFile:v39 fromFunction:v40 fromLineNumber:3313];

                  v41 = PLLogCommon();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
}

uint64_t __43__PLWifiAgent_logEventForwardHotspotState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardHotspotState__classDebugEnabled = result;
  return result;
}

uint64_t __43__PLWifiAgent_logEventForwardHotspotState___block_invoke_1298(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardHotspotState__classDebugEnabled_1297 = result;
  return result;
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

- (void)updateEventBackwardUserScanDuration:(id)a3
{
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
            v20 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __51__PLWifiAgent_updateEventBackwardUserScanDuration___block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v20;
            if (updateEventBackwardUserScanDuration__defaultOnce != -1)
            {
              dispatch_once(&updateEventBackwardUserScanDuration__defaultOnce, block);
            }

            if (updateEventBackwardUserScanDuration__classDebugEnabled == 1)
            {
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"User scan counter update: clientName = %@, dwellTime= %lu, channelCountNum = %lu, totalScanTime = %lu\n", v6, v16, v8, v17];
              v22 = MEMORY[0x277D3F178];
              v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              v24 = [v23 lastPathComponent];
              v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent updateEventBackwardUserScanDuration:]"];
              [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:3411];

              v26 = PLLogCommon();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
          v18 = &OBJC_IVAR___PLWifiAgent__unknownScanDuration;
          if (v19)
          {
            v18 = &OBJC_IVAR___PLWifiAgent__pipelineScanDuration;
          }
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
}

uint64_t __51__PLWifiAgent_updateEventBackwardUserScanDuration___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateEventBackwardUserScanDuration__classDebugEnabled = result;
  return result;
}

- (void)logEventBackwardControlCPUPowerStats
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventPointAWDLServicesAndPorts
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties__classDebugEnabled = result;
  return result;
}

uint64_t __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1343(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties__classDebugEnabled_1342 = result;
  return result;
}

uint64_t __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1349(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties__classDebugEnabled_1348 = result;
  return result;
}

uint64_t __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1357(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties__classDebugEnabled_1356 = result;
  return result;
}

uint64_t __46__PLWifiAgent_logEventBackwardWifiProperties___block_invoke_1363(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties__classDebugEnabled_1362 = result;
  return result;
}

- (void)logEventBackwardWifiProperties:(id)a3 withNetworkProperties:(id)a4 shallModelPower:(BOOL)a5
{
  v337 = a5;
  v423[10] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v336 = a4;
  v422[0] = @"SOFTAP_LOWPOWER_STATS_ACTIVE_STATE_DURATION";
  v422[1] = @"SOFTAP_LOWPOWER_STATS_ACTIVE_STATE_COUNT";
  v423[0] = @"ADHSActiveStateDuration";
  v423[1] = @"ADHSActiveStateCount";
  v422[2] = @"SOFTAP_LOWPOWER_STATS_DYNAMIC_STATE_DURATION";
  v422[3] = @"SOFTAP_LOWPOWER_STATS_DYNAMIC_STATE_COUNT";
  v423[2] = @"ADHSDynamicStateDuration";
  v423[3] = @"ADHSDynamicStateDuration";
  v422[4] = @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_COUNT";
  v422[5] = @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_COUNT";
  v423[4] = @"ADHSLowPowerStateDuration";
  v423[5] = @"ADHSLowPowerStateDuration";
  v422[6] = @"SOFTAP_LOWPOWER_STATS_OFF_STATE_COUNT";
  v422[7] = @"SOFTAP_LOWPOWER_STATS_OFF_STATE_COUNT";
  v423[6] = @"ADHSOffStateDuration";
  v423[7] = @"ADHSOffStateDuration";
  v422[8] = @"SOFTAP_LOWPOWER_STATS_TXPACKETS";
  v422[9] = @"SOFTAP_LOWPOWER_STATS_RXPACKETS";
  v423[8] = @"ADHSTXPackets";
  v423[9] = @"ADHSRXPackets";
  v348 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v423 forKeys:v422 count:10];
  v331 = [v348 allValues];
  v8 = *MEMORY[0x277D3F5C8];
  v332 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"HotspotPowerStats"];
  v9 = [v7 objectForKeyedSubscript:@"CACHED_TIME_STAMP"];
  v10 = [v9 integerValue];

  v11 = [v7 objectForKeyedSubscript:@"INSTANT_ASSOCIATED_SLEEP_DURATION"];
  v12 = [v11 integerValue];

  v13 = [v7 objectForKeyedSubscript:@"INSTANT_UNASSOCIATED_SLEEP_DURATION"];
  v14 = [v13 integerValue];

  v15 = [v7 objectForKeyedSubscript:@"INSTANT_TIME_STAMP"];
  obj = [v15 integerValue];

  v16 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"CumulativeProperties"];
  v342 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"DiffProperties"];
  v330 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"BeaconProfile"];
  v335 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"AutoJoin"];
  v334 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"Scans"];
  v333 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"ScanForwardStats"];
  v341 = v16;
  v17 = self;
  if (+[PLUtilities isPerfPowerMetricd])
  {
    v18 = self->_lastEntryForMetricd;
  }

  else
  {
    v19 = [(PLOperator *)self storage];
    v20 = v16;
    v21 = v19;
    v18 = [v19 lastEntryForKey:v20];
  }

  v363 = (v12 | v14) != 0;
  v351 = v18;
  if (v18)
  {
    v22 = [(PLEntry *)v18 objectForKeyedSubscript:@"WifiTimestamp"];
    v361 = [v22 unsignedIntegerValue];
  }

  else
  {
    v361 = 0;
  }

  v23 = v10;
  v24 = objc_opt_new();
  v25 = +[PLWifiAgent isBeaconLoggingEnabled];
  v26 = MEMORY[0x277CBEC10];
  v27 = &unk_287149058;
  if (!v25)
  {
    v27 = MEMORY[0x277CBEC10];
  }

  v349 = v27;
  v28 = [MEMORY[0x277D3F208] isUsingAnOlderWifiChip];
  v29 = &unk_287149080;
  if (v28)
  {
    v29 = v26;
  }

  v353 = v29;
  v30 = +[PLWifiAgent isScanForwardLoggingEnabled];
  v31 = &unk_2871490A8;
  if (!v30)
  {
    v31 = v26;
  }

  v354 = v31;
  v339 = v24;
  [v24 addEntriesFromDictionary:&unk_287148E28];
  v32 = [MEMORY[0x277D3F208] kPLWiFiClassOfDevice];
  v33 = 0;
  HIDWORD(v340) = 0;
  v34 = &unk_287148F68;
  v35 = &unk_287148F40;
  v36 = &unk_287148F18;
  v37 = &unk_287148E78;
  v38 = &unk_287148E50;
  v345 = v7;
  v347 = v17;
  if (v32 <= 1004010)
  {
    if (v32 <= 1004005)
    {
      if ((v32 - 1004001) >= 3)
      {
        LODWORD(v340) = 0;
        v338 = 0;
        v39 = v339;
        if ((v32 - 1004004) >= 2)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

LABEL_33:
      LODWORD(v340) = 0;
      v338 = 0;
      v39 = v339;
LABEL_44:
      [v39 addEntriesFromDictionary:v38];
      v38 = v37;
      goto LABEL_45;
    }

    if (v32 <= 1004007)
    {
      if (v32 == 1004006)
      {
        goto LABEL_33;
      }

      v41 = 0;
      v39 = v339;
      goto LABEL_42;
    }

    if (v32 == 1004008)
    {
      goto LABEL_33;
    }

    LODWORD(v340) = 0;
    v338 = 0;
    v39 = v339;
    if (v32 != 1004010)
    {
      goto LABEL_45;
    }

LABEL_41:
    [v39 addEntriesFromDictionary:v38];
    v41 = 1;
    v38 = v37;
    v37 = v36;
    v36 = v35;
    v35 = v34;
LABEL_42:
    v338 = HIDWORD(v340);
    [v39 addEntriesFromDictionary:v38];
    LODWORD(v340) = 1;
    HIDWORD(v340) = v41;
    v38 = v37;
    v37 = v36;
    v36 = v35;
    v33 = &unk_2871490D0;
    goto LABEL_43;
  }

  v40 = &unk_287148F90;
  if (v32 > 1004014)
  {
    if ((v32 - 1004016) >= 3)
    {
      if (v32 == 1004015)
      {
        v42 = &unk_287149030;
        v43 = &unk_287148EA0;
      }

      else
      {
        LODWORD(v340) = 0;
        v338 = 0;
        v17 = v347;
        v39 = v339;
        if (v32 != 1004019)
        {
          goto LABEL_45;
        }

        [v339 addEntriesFromDictionary:&unk_287148E50];
        [v339 addEntriesFromDictionary:&unk_287148E78];
        v42 = &unk_287148EF0;
        v40 = &unk_287148EC8;
        v34 = &unk_287148EA0;
        v35 = &unk_287149030;
        v36 = &unk_287148F90;
        v43 = &unk_287148F68;
        v37 = &unk_287148F40;
        v38 = &unk_287148F18;
      }
    }

    else
    {
      v42 = &unk_287148EA0;
      v40 = &unk_287149030;
      v34 = &unk_287148F90;
      v35 = &unk_287148F68;
      v36 = &unk_287148F40;
      v43 = &unk_287148F18;
    }

    v39 = v339;
    [v339 addEntriesFromDictionary:v38];
    [v339 addEntriesFromDictionary:v37];
    HIDWORD(v340) = 1;
    v38 = v43;
    v37 = v36;
    v36 = v35;
    v35 = v34;
    v34 = v40;
    v40 = v42;
    v7 = v345;
LABEL_40:
    [v39 addEntriesFromDictionary:v38];
    v38 = v37;
    v37 = v36;
    v36 = v35;
    v35 = v34;
    v34 = v40;
    v17 = v347;
    goto LABEL_41;
  }

  if ((v32 - 1004013) < 2)
  {
    v39 = v339;
    goto LABEL_40;
  }

  if (v32 == 1004011)
  {
    v340 = 0;
    v338 = 0;
    v33 = 0;
    v36 = &unk_287148FE0;
    v37 = &unk_287148FB8;
    v17 = v347;
    v39 = v339;
LABEL_43:
    [v39 addEntriesFromDictionary:v38];
    v38 = v37;
    v37 = v36;
    goto LABEL_44;
  }

  LODWORD(v340) = 0;
  v338 = 0;
  v17 = v347;
  v39 = v339;
  if (v32 != 1004012)
  {
LABEL_45:
    [v39 addEntriesFromDictionary:v38];
    v44 = v33;
    goto LABEL_46;
  }

  [v339 addEntriesFromDictionary:&unk_287148E50];
  [v339 addEntriesFromDictionary:&unk_287148FB8];
  [v339 addEntriesFromDictionary:&unk_287148FE0];
  HIDWORD(v340) = 0;
  if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] > 1001204)
  {
    v33 = &unk_2871490D0;
    LODWORD(v340) = 1;
    v338 = 0;
    v38 = &unk_287149008;
    goto LABEL_45;
  }

  v44 = 0;
  LODWORD(v340) = 0;
  v338 = 0;
LABEL_46:
  v45 = v351;
  v46 = v17;
  if (v363)
  {
    if (obj > v23)
    {
      if (v361)
      {
        v47 = v23 > v361;
      }

      else
      {
        v47 = 1;
      }

      v48 = v47;
      if (v48)
      {
        v49 = 2;
      }

      else
      {
        v49 = 1;
      }

      goto LABEL_64;
    }

    v50 = v23 > v361;
    v49 = 1;
    goto LABEL_60;
  }

  v49 = 1;
  if (v351)
  {
    v50 = v23 > v361;
LABEL_60:
    if (v50)
    {
      v48 = 1;
    }

    else
    {
      v48 = 2;
    }

    goto LABEL_64;
  }

  v48 = 1;
LABEL_64:
  v51 = 0x277CCA000uLL;
  v52 = v341;
  v355 = v44;
  do
  {
    v53 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v52];
    v350 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v342];
    if (v48 == 2)
    {
      if (!v45 || [(PLWifiAgent *)v46 isWiFiPowered])
      {
        v48 = 2;
        goto LABEL_291;
      }

      v344 = v49;
      v186 = [(PLEntry *)v45 copy];
      v187 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v342];
      v188 = [MEMORY[0x277CBEB68] null];
      [v186 setObject:v188 forKeyedSubscript:@"CurrentSSID"];

      [v186 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentChannel"];
      [v186 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentBandwidth"];
      [v186 setObject:&unk_2871463F0 forKeyedSubscript:@"WifiPowered"];
      [v186 setObject:&unk_2871463F0 forKeyedSubscript:@"Carplay"];
      v189 = [*(v51 + 2992) numberWithUnsignedInteger:v46->_autoJoinScanDuration];
      [v186 setObject:v189 forKeyedSubscript:@"AutojoinScanDuration"];

      v190 = [*(v51 + 2992) numberWithUnsignedInteger:v46->_locationScanDuration];
      [v186 setObject:v190 forKeyedSubscript:@"LocationScanDuration"];

      v191 = [*(v51 + 2992) numberWithUnsignedInteger:v46->_pipelineScanDuration];
      [v186 setObject:v191 forKeyedSubscript:@"PipelineScanDuration"];

      v192 = [*(v51 + 2992) numberWithUnsignedInteger:v46->_unknownScanDuration];
      [v186 setObject:v192 forKeyedSubscript:@"UnknownScanDuration"];

      v193 = [*(v51 + 2992) numberWithUnsignedInteger:v46->_setupScanDuration];
      v365 = v186;
      [v186 setObject:v193 forKeyedSubscript:@"SetupScanDuration"];

      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"AWDLAWDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"AWDLRXDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"AWDLScanDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"AWDLTXDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"AssociatedScanDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"AutojoinScanDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentBandwidth"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentChannel"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"CurrentSSID"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"FRTSDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"HSICActiveDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"HSICSuspendDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"LocationScanDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"MPCDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"OtherScanDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"PCIEActiveDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"PCIEPERSTDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"PCIESuspendDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"PMDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"PNOBSSIDDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"PNOScanSSIDDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"PipelineScanDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"RXDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"RoamScanDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"SetupScanDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"TXDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"TimeDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"UnknownScanDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"UserScanDuration"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"WifiPowered"];
      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"WowEnabled"];
      if ([MEMORY[0x277D3F208] isWiFiClass:1004005])
      {
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"SISOTXDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMOTXDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMORXDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"SISORXDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMOCSDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"SISOCSDuration"];
      }

      if (([MEMORY[0x277D3F208] isWiFiClass:1004007] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004010) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004013) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
      {
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"SISOTXDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMOTXDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMORXDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"SISORXDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"MIMOCSDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"SISOCSDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"OCLCSDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"OCLRXDuration"];
      }

      v51 = 0x277CCA000uLL;
      if ([MEMORY[0x277D3F208] isWiFiClass:1004010])
      {
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"OPSFullDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"OPSPartialDuration"];
      }

      if (([MEMORY[0x277D3F208] isWiFiClass:1004013] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004014))
      {
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"OPSFullDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"OPSPartialDuration"];
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"PSBWDuration"];
      }

      if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
      {
        [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"SCRXDurationSISO"];
      }

      if (v340)
      {
        v372 = 0u;
        v373 = 0u;
        v370 = 0u;
        v371 = 0u;
        v194 = [v44 countByEnumeratingWithState:&v370 objects:v410 count:16];
        if (v194)
        {
          v195 = v194;
          v196 = *v371;
          do
          {
            for (i = 0; i != v195; ++i)
            {
              if (*v371 != v196)
              {
                objc_enumerationMutation(v44);
              }

              [v187 setObject:&unk_2871463F0 forKeyedSubscript:*(*(&v370 + 1) + 8 * i)];
            }

            v195 = [v44 countByEnumeratingWithState:&v370 objects:v410 count:16];
          }

          while (v195);
        }
      }

      if (HIDWORD(v340))
      {
        v368 = 0u;
        v369 = 0u;
        v366 = 0u;
        v367 = 0u;
        v198 = v331;
        v199 = [v198 countByEnumeratingWithState:&v366 objects:v409 count:16];
        if (v199)
        {
          v200 = v199;
          v201 = *v367;
          do
          {
            for (j = 0; j != v200; ++j)
            {
              if (*v367 != v201)
              {
                objc_enumerationMutation(v198);
              }

              [v187 setObject:&unk_2871463F0 forKeyedSubscript:*(*(&v366 + 1) + 8 * j)];
            }

            v200 = [v198 countByEnumeratingWithState:&v366 objects:v409 count:16];
          }

          while (v200);
        }

        v44 = v355;
      }

      [v187 setObject:&unk_2871463F0 forKeyedSubscript:@"TimeDuration"];
      v203 = [(PLEntry *)v45 objectForKey:@"CurrentChannel"];
      [v187 setObject:v203 forKeyedSubscript:@"CurrentChannel"];

      v204 = [(PLEntry *)v45 objectForKey:@"CurrentSSID"];
      [v187 setObject:v204 forKeyedSubscript:@"CurrentSSID"];

      v205 = [(PLEntry *)v45 objectForKey:@"CurrentBandwidth"];
      [v187 setObject:v205 forKeyedSubscript:@"CurrentBandwidth"];

      v206 = [(PLEntry *)v45 objectForKey:@"WowEnabled"];
      [v187 setObject:v206 forKeyedSubscript:@"WowEnabled"];

      v207 = [(PLEntry *)v45 objectForKey:@"WifiPowered"];
      [v187 setObject:v207 forKeyedSubscript:@"WifiPowered"];

      v208 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
      v209 = v365;
      [v365 setObject:v208 forKeyedSubscript:@"READINGTYPE"];

      if (+[PLUtilities isPerfPowerMetricd])
      {
        objc_storeStrong(&v347->_lastEntryForMetricd, v365);
      }

      else
      {
        [(PLOperator *)v347 logEntry:v365];
      }

      v210 = v344;
      v46 = v347;
      if (v337)
      {
        [(PLWifiAgent *)v347 modelWiFiPower:v187];
      }

      v48 = 2;
      v7 = v345;
      goto LABEL_289;
    }

    v343 = v49;
    v54 = *(v51 + 2992);
    if (v48)
    {
      v55 = @"CACHED_TIME_STAMP";
    }

    else
    {
      v55 = @"INSTANT_TIME_STAMP";
    }

    v56 = [v7 objectForKeyedSubscript:v55];
    v57 = [v54 numberWithUnsignedInteger:{objc_msgSend(v56, "integerValue")}];
    [v53 setObject:v57 forKeyedSubscript:@"WifiTimestamp"];

    if (v45)
    {
      v58 = *(v51 + 2992);
      v59 = [v53 objectForKeyedSubscript:@"WifiTimestamp"];
      v60 = [v59 unsignedIntegerValue];
      v61 = [(PLEntry *)v45 objectForKeyedSubscript:@"WifiTimestamp"];
      v62 = [v58 numberWithInteger:{v60 - objc_msgSend(v61, "unsignedIntegerValue")}];
      [v350 setObject:v62 forKeyedSubscript:@"TimeDuration"];
    }

    v362 = v53;
    v357 = &unk_28714D418;
    if (([MEMORY[0x277D3F208] isWiFiClass:1004011] & 1) == 0)
    {
      v63 = [MEMORY[0x277D3F208] isWiFiClass:1004012];
      v64 = &unk_28714D418;
      if (!v63)
      {
        v64 = &unk_28714D430;
      }

      v357 = v64;
    }

    v408 = 0u;
    v407 = 0u;
    v406 = 0u;
    v405 = 0u;
    v65 = v339;
    v352 = v45;
    v364 = v48;
    obja = [v65 countByEnumeratingWithState:&v405 objects:v421 count:16];
    if (obja)
    {
      v356 = *v406;
      do
      {
        v66 = 0;
        do
        {
          if (*v406 != v356)
          {
            objc_enumerationMutation(v65);
          }

          v67 = *(*(&v405 + 1) + 8 * v66);
          v68 = [v65 objectForKeyedSubscript:v67];
          v69 = [v68 objectAtIndexedSubscript:v48 != 0];
          v70 = [v7 objectForKeyedSubscript:v69];
          v71 = [v70 integerValue];

          if ([v357 containsObject:v67])
          {
            v72 = v71 / 0x3E8uLL;
          }

          else
          {
            v72 = v71;
          }

          v73 = [*(v51 + 2992) numberWithUnsignedInteger:v72];
          [v362 setObject:v73 forKeyedSubscript:v67];

          if (v45)
          {
            v74 = [(PLEntry *)v45 objectForKey:v67];
            if ([v74 isNil])
            {
              goto LABEL_115;
            }

            v75 = *(v51 + 2992);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v76 = [v74 unsignedLongValue];
              goto LABEL_92;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v76 = [v74 longLongValue];
LABEL_92:
              v77 = v76;
              v78 = v76 - v72;
              if (v76 > v72)
              {
                if ([&unk_28714D448 containsObject:v67])
                {
                  v79 = *(v51 + 2992);
                  if (v78 - 858994 <= 0x346DC4)
                  {
                    v80 = v72 - v77 + 4294967;
                    goto LABEL_114;
                  }
                }

                else
                {
                  if ([MEMORY[0x277D3F180] debugEnabled])
                  {
                    v89 = objc_opt_class();
                    v404[0] = MEMORY[0x277D85DD0];
                    v404[1] = 3221225472;
                    v404[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke;
                    v404[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                    v404[4] = v89;
                    v90 = v404;
                    if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce != -1)
                    {
                      dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce, v90);
                    }

                    if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled == 1)
                    {
                      v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"diff[%@] = %lu < %lu, ignoring setting to zero", v67, v72, v77];
                      v92 = MEMORY[0x277D3F178];
                      v93 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                      v94 = [v93 lastPathComponent];
                      v95 = v91;
                      v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
                      [v92 logMessage:v95 fromFile:v94 fromFunction:v96 fromLineNumber:4228];

                      v97 = PLLogCommon();
                      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v412 = v95;
                        _os_log_debug_impl(&dword_25EE51000, v97, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }

                      v51 = 0x277CCA000uLL;
                    }
                  }

                  v79 = *(v51 + 2992);
                }

                v80 = 0;
LABEL_114:
                v98 = [v79 numberWithUnsignedInteger:v80];
                [v350 setObject:v98 forKeyedSubscript:v67];

LABEL_115:
                v45 = v352;
                goto LABEL_116;
              }
            }

            else
            {
              v77 = 0;
            }

            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v81 = objc_opt_class();
              v403[0] = MEMORY[0x277D85DD0];
              v403[1] = 3221225472;
              v403[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2505;
              v403[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v403[4] = v81;
              v82 = v403;
              if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2503 != -1)
              {
                dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2503, v82);
              }

              if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2504 == 1)
              {
                v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"diff[%@] = %lu - %lu", v67, v72, v77];
                v346 = MEMORY[0x277D3F178];
                v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                v85 = [v84 lastPathComponent];
                v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
                [v346 logMessage:v83 fromFile:v85 fromFunction:v86 fromLineNumber:4234];

                v87 = v83;
                v88 = PLLogCommon();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v412 = v87;
                  _os_log_debug_impl(&dword_25EE51000, v88, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v7 = v345;
                v51 = 0x277CCA000uLL;
              }
            }

            v79 = *(v51 + 2992);
            v80 = v72 - v77;
            goto LABEL_114;
          }

LABEL_116:
          v66 = v66 + 1;
          v48 = v364;
        }

        while (obja != v66);
        obja = [v65 countByEnumeratingWithState:&v405 objects:v421 count:16];
      }

      while (obja);
    }

    if (v45 && v48 == 1)
    {
      v99 = [(PLEntry *)v45 objectForKey:@"CurrentChannel"];
      v100 = v362;
      [v362 setObject:v99 forKeyedSubscript:@"CurrentChannel"];

      v101 = [(PLEntry *)v45 objectForKey:@"CurrentSSID"];
      [v362 setObject:v101 forKeyedSubscript:@"CurrentSSID"];

      v102 = [(PLEntry *)v45 objectForKey:@"CurrentBandwidth"];
      [v362 setObject:v102 forKeyedSubscript:@"CurrentBandwidth"];

      v103 = [(PLEntry *)v45 objectForKey:@"WowEnabled"];
      [v362 setObject:v103 forKeyedSubscript:@"WowEnabled"];

      v104 = [(PLEntry *)v45 objectForKey:@"Carplay"];
      [v362 setObject:v104 forKeyedSubscript:@"Carplay"];

      v105 = [(PLEntry *)v45 objectForKey:@"WifiPowered"];
    }

    else
    {
      v106 = [v336 objectForKeyedSubscript:@"CurrentChannel"];
      v100 = v362;
      [v362 setObject:v106 forKeyedSubscript:@"CurrentChannel"];

      v107 = [v336 objectForKeyedSubscript:@"CurrentSSID"];
      [v362 setObject:v107 forKeyedSubscript:@"CurrentSSID"];

      v108 = [v336 objectForKeyedSubscript:@"CurrentBandwidth"];
      [v362 setObject:v108 forKeyedSubscript:@"CurrentBandwidth"];

      v109 = [v336 objectForKeyedSubscript:@"Carplay"];
      [v362 setObject:v109 forKeyedSubscript:@"Carplay"];

      v110 = [*(v51 + 2992) numberWithBool:{-[PLWifiAgent isWowEnabled](v347, "isWowEnabled")}];
      [v362 setObject:v110 forKeyedSubscript:@"WowEnabled"];

      v105 = [*(v51 + 2992) numberWithBool:{-[PLWifiAgent isWiFiPowered](v347, "isWiFiPowered")}];
    }

    [v100 setObject:v105 forKeyedSubscript:@"WifiPowered"];

    if (v340)
    {
      v111 = [v7 objectForKeyedSubscript:@"AutoJoinPowerDiag"];
      v112 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v335];
      v399 = 0u;
      v400 = 0u;
      v401 = 0u;
      v402 = 0u;
      objb = [v355 allKeys];
      v113 = [objb countByEnumeratingWithState:&v399 objects:v420 count:16];
      if (v113)
      {
        v114 = v113;
        v115 = *v400;
        do
        {
          for (k = 0; k != v114; ++k)
          {
            if (*v400 != v115)
            {
              objc_enumerationMutation(objb);
            }

            v117 = *(*(&v399 + 1) + 8 * k);
            v118 = [v355 objectForKeyedSubscript:v117];
            [v112 setObject:0 forKeyedSubscript:v118];

            v119 = [v111 objectForKey:v117];

            if (v119)
            {
              v120 = [v111 objectForKeyedSubscript:v117];
              v121 = [v355 objectForKeyedSubscript:v117];
              [v112 setObject:v120 forKeyedSubscript:v121];
            }

            v122 = [v111 objectForKeyedSubscript:@"auto_join_trigger_counts"];
            v123 = [v122 objectForKey:v117];

            if (v123)
            {
              v124 = [v111 objectForKeyedSubscript:@"auto_join_trigger_counts"];
              v125 = [v124 objectForKeyedSubscript:v117];
              v126 = [v355 objectForKeyedSubscript:v117];
              [v112 setObject:v125 forKeyedSubscript:v126];
            }
          }

          v114 = [objb countByEnumeratingWithState:&v399 objects:v420 count:16];
        }

        while (v114);
      }

      [(PLOperator *)v347 logEntry:v112];
      v45 = v352;
      v51 = 0x277CCA000;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v127 = objc_opt_class();
        v398[0] = MEMORY[0x277D85DD0];
        v398[1] = 3221225472;
        v398[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2517;
        v398[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v398[4] = v127;
        v128 = v398;
        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2515 != -1)
        {
          dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2515, v128);
        }

        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2516 == 1)
        {
          v129 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged AJ keys:%@", v112];
          v130 = MEMORY[0x277D3F178];
          v131 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          v132 = [v131 lastPathComponent];
          v133 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v130 logMessage:v129 fromFile:v132 fromFunction:v133 fromLineNumber:4283];

          v134 = PLLogCommon();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v412 = v129;
            _os_log_debug_impl(&dword_25EE51000, v134, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v51 = 0x277CCA000;
        }
      }
    }

    if (HIDWORD(v340))
    {
      v135 = [v7 objectForKey:@"AutoHotspotLPHSPowerStats"];

      if (v135)
      {
        v136 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v332];
        v137 = [v7 objectForKeyedSubscript:@"AutoHotspotLPHSPowerStats"];
        v394 = 0u;
        v395 = 0u;
        v396 = 0u;
        v397 = 0u;
        v138 = [v348 allKeys];
        v139 = [v138 countByEnumeratingWithState:&v394 objects:v419 count:16];
        if (v139)
        {
          v140 = v139;
          v141 = *v395;
          do
          {
            for (m = 0; m != v140; ++m)
            {
              if (*v395 != v141)
              {
                objc_enumerationMutation(v138);
              }

              v143 = *(*(&v394 + 1) + 8 * m);
              v144 = [v137 objectForKey:v143];

              if (v144)
              {
                v145 = [v137 objectForKeyedSubscript:v143];
                v146 = [v348 objectForKeyedSubscript:v143];
                [v136 setObject:v145 forKeyedSubscript:v146];
              }
            }

            v140 = [v138 countByEnumeratingWithState:&v394 objects:v419 count:16];
          }

          while (v140);
        }

        [(PLOperator *)v347 logEntry:v136];
        v45 = v352;
        v51 = 0x277CCA000;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v147 = objc_opt_class();
          v393[0] = MEMORY[0x277D85DD0];
          v393[1] = 3221225472;
          v393[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2526;
          v393[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v393[4] = v147;
          v148 = v393;
          if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2524 != -1)
          {
            dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2524, v148);
          }

          if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2525 == 1)
          {
            v149 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged ADHS keys:%@", v136];
            v150 = MEMORY[0x277D3F178];
            v151 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            v152 = [v151 lastPathComponent];
            v153 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
            [v150 logMessage:v149 fromFile:v152 fromFunction:v153 fromLineNumber:4298];

            v154 = PLLogCommon();
            if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v412 = v149;
              _os_log_debug_impl(&dword_25EE51000, v154, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v51 = 0x277CCA000uLL;
          }
        }
      }
    }

    if (v338)
    {
      v391 = 0u;
      v392 = 0u;
      v389 = 0u;
      v390 = 0u;
      v155 = [&unk_2871490F8 countByEnumeratingWithState:&v389 objects:v418 count:16];
      if (v155)
      {
        v156 = v155;
        v157 = *v390;
        do
        {
          for (n = 0; n != v156; ++n)
          {
            if (*v390 != v157)
            {
              objc_enumerationMutation(&unk_2871490F8);
            }

            v159 = *(*(&v389 + 1) + 8 * n);
            v160 = [&unk_2871490F8 objectForKeyedSubscript:v159];
            v161 = [v7 objectForKey:v160];

            if (v161)
            {
              v162 = [&unk_2871490F8 objectForKeyedSubscript:v159];
              v163 = [v7 objectForKeyedSubscript:v162];
              [v362 setObject:v163 forKeyedSubscript:v159];
            }
          }

          v156 = [&unk_2871490F8 countByEnumeratingWithState:&v389 objects:v418 count:16];
        }

        while (v156);
      }
    }

    if (v45)
    {
      v164 = [(PLEntry *)v45 objectForKey:@"CurrentChannel"];
      [v350 setObject:v164 forKeyedSubscript:@"CurrentChannel"];

      v165 = [(PLEntry *)v45 objectForKey:@"CurrentSSID"];
      [v350 setObject:v165 forKeyedSubscript:@"CurrentSSID"];

      v166 = [(PLEntry *)v45 objectForKey:@"CurrentBandwidth"];
      [v350 setObject:v166 forKeyedSubscript:@"CurrentBandwidth"];

      v167 = [(PLEntry *)v45 objectForKey:@"WowEnabled"];
      [v350 setObject:v167 forKeyedSubscript:@"WowEnabled"];

      v168 = [(PLEntry *)v45 objectForKey:@"WifiPowered"];
      [v350 setObject:v168 forKeyedSubscript:@"WifiPowered"];
    }

    v169 = [*(v51 + 2992) numberWithUnsignedInteger:v347->_autoJoinScanDuration];
    v53 = v362;
    [v362 setObject:v169 forKeyedSubscript:@"AutojoinScanDuration"];

    v170 = [*(v51 + 2992) numberWithUnsignedInteger:v347->_locationScanDuration];
    [v362 setObject:v170 forKeyedSubscript:@"LocationScanDuration"];

    v171 = [*(v51 + 2992) numberWithUnsignedInteger:v347->_pipelineScanDuration];
    [v362 setObject:v171 forKeyedSubscript:@"PipelineScanDuration"];

    v172 = [*(v51 + 2992) numberWithUnsignedInteger:v347->_unknownScanDuration];
    [v362 setObject:v172 forKeyedSubscript:@"UnknownScanDuration"];

    v173 = [*(v51 + 2992) numberWithUnsignedInteger:v347->_setupScanDuration];
    [v362 setObject:v173 forKeyedSubscript:@"SetupScanDuration"];

    v44 = v355;
    v48 = v364;
    if (v45)
    {
      v174 = [(PLEntry *)v45 objectForKeyedSubscript:@"AutojoinScanDuration"];
      if (v174)
      {
        v175 = v174;
        v176 = [(PLEntry *)v45 objectForKeyedSubscript:@"LocationScanDuration"];
        if (!v176)
        {

          goto LABEL_223;
        }

        v177 = v176;
        v178 = [(PLEntry *)v45 objectForKeyedSubscript:@"PipelineScanDuration"];
        if (v178)
        {
          v179 = v178;
          v180 = [(PLEntry *)v45 objectForKeyedSubscript:@"UnknownScanDuration"];
          if (v180)
          {
            v181 = [(PLEntry *)v45 objectForKeyedSubscript:@"SetupScanDuration"];

            v44 = v355;
            if (!v181)
            {
              goto LABEL_223;
            }

            v182 = [v362 objectForKeyedSubscript:@"AutojoinScanDuration"];
            v183 = [v182 unsignedLongLongValue];
            v184 = [(PLEntry *)v45 objectForKeyedSubscript:@"AutojoinScanDuration"];
            v185 = [v184 unsignedLongLongValue];

            if (v183 >= v185)
            {
              v289 = *(v51 + 2992);
              v290 = [v362 objectForKeyedSubscript:@"AutojoinScanDuration"];
              v291 = [v290 unsignedLongLongValue];
              v292 = [(PLEntry *)v45 objectForKeyedSubscript:@"AutojoinScanDuration"];
              v293 = [v289 numberWithUnsignedLongLong:{v291 - objc_msgSend(v292, "unsignedLongLongValue")}];
              [v350 setObject:v293 forKeyedSubscript:@"AutojoinScanDuration"];
            }

            else
            {
              [v350 setObject:0 forKeyedSubscript:@"AutojoinScanDuration"];
            }

            v294 = [v362 objectForKeyedSubscript:@"LocationScanDuration"];
            v295 = [v294 unsignedLongLongValue];
            v296 = [(PLEntry *)v45 objectForKeyedSubscript:@"LocationScanDuration"];
            v297 = [v296 unsignedLongLongValue];

            if (v295 >= v297)
            {
              v298 = *(v51 + 2992);
              v299 = [v362 objectForKeyedSubscript:@"LocationScanDuration"];
              v300 = [v299 unsignedLongLongValue];
              v301 = [(PLEntry *)v45 objectForKeyedSubscript:@"LocationScanDuration"];
              v302 = [v298 numberWithUnsignedLongLong:{v300 - objc_msgSend(v301, "unsignedLongLongValue")}];
              [v350 setObject:v302 forKeyedSubscript:@"LocationScanDuration"];
            }

            else
            {
              [v350 setObject:0 forKeyedSubscript:@"LocationScanDuration"];
            }

            v303 = [v362 objectForKeyedSubscript:@"PipelineScanDuration"];
            v304 = [v303 unsignedLongLongValue];
            v305 = [(PLEntry *)v45 objectForKeyedSubscript:@"PipelineScanDuration"];
            v306 = [v305 unsignedLongLongValue];

            if (v304 >= v306)
            {
              v307 = *(v51 + 2992);
              v308 = [v362 objectForKeyedSubscript:@"PipelineScanDuration"];
              v309 = [v308 unsignedLongLongValue];
              v310 = [(PLEntry *)v45 objectForKeyedSubscript:@"PipelineScanDuration"];
              v311 = [v307 numberWithUnsignedLongLong:{v309 - objc_msgSend(v310, "unsignedLongLongValue")}];
              [v350 setObject:v311 forKeyedSubscript:@"PipelineScanDuration"];
            }

            else
            {
              [v350 setObject:0 forKeyedSubscript:@"PipelineScanDuration"];
            }

            v312 = [v362 objectForKeyedSubscript:@"UnknownScanDuration"];
            v313 = [v312 unsignedLongLongValue];
            v314 = [(PLEntry *)v45 objectForKeyedSubscript:@"UnknownScanDuration"];
            v315 = [v314 unsignedLongLongValue];

            if (v313 >= v315)
            {
              v316 = *(v51 + 2992);
              v317 = [v362 objectForKeyedSubscript:@"UnknownScanDuration"];
              v318 = [v317 unsignedLongLongValue];
              v319 = [(PLEntry *)v45 objectForKeyedSubscript:@"UnknownScanDuration"];
              v320 = [v316 numberWithUnsignedLongLong:{v318 - objc_msgSend(v319, "unsignedLongLongValue")}];
              [v350 setObject:v320 forKeyedSubscript:@"UnknownScanDuration"];
            }

            else
            {
              [v350 setObject:0 forKeyedSubscript:@"UnknownScanDuration"];
            }

            v321 = [v362 objectForKeyedSubscript:@"SetupScanDuration"];
            v322 = [v321 unsignedLongLongValue];
            v323 = [(PLEntry *)v45 objectForKeyedSubscript:@"SetupScanDuration"];
            v324 = [v323 unsignedLongLongValue];

            if (v322 < v324)
            {
              [v350 setObject:0 forKeyedSubscript:@"SetupScanDuration"];
              goto LABEL_222;
            }

            v325 = *(v51 + 2992);
            v175 = [v362 objectForKeyedSubscript:@"SetupScanDuration"];
            v326 = [v175 unsignedLongLongValue];
            v327 = [(PLEntry *)v45 objectForKeyedSubscript:@"SetupScanDuration"];
            v328 = [v325 numberWithUnsignedLongLong:{v326 - objc_msgSend(v327, "unsignedLongLongValue")}];
            [v350 setObject:v328 forKeyedSubscript:@"SetupScanDuration"];

LABEL_221:
LABEL_222:
            v44 = v355;
            goto LABEL_223;
          }
        }

        goto LABEL_221;
      }
    }

LABEL_223:
    v46 = v347;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v211 = objc_opt_class();
      v388[0] = MEMORY[0x277D85DD0];
      v388[1] = 3221225472;
      v388[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2532;
      v388[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v388[4] = v211;
      v212 = v388;
      if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2530 != -1)
      {
        dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2530, v212);
      }

      if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2531 == 1)
      {
        v213 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last logged data: %@ current data:%@", v45, v362];
        v214 = MEMORY[0x277D3F178];
        v215 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v216 = [v215 lastPathComponent];
        v217 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v214 logMessage:v213 fromFile:v216 fromFunction:v217 fromLineNumber:4364];

        v218 = PLLogCommon();
        if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v412 = v213;
          _os_log_debug_impl(&dword_25EE51000, v218, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v44 = v355;
        v46 = v347;
      }
    }

    v219 = [*(v51 + 2992) numberWithUnsignedInt:v364];
    [v362 setObject:v219 forKeyedSubscript:@"READINGTYPE"];

    if (+[PLUtilities isPerfPowerMetricd])
    {
      [(PLWifiAgent *)v46 setLastEntryForMetricd:v362];
    }

    else
    {
      [(PLOperator *)v46 logEntry:v362];
    }

    if (+[PLWifiAgent isBeaconLoggingEnabled])
    {
      v220 = [v362 objectForKeyedSubscript:@"CurrentChannel"];
      if ([v220 integerValue] >= 1)
      {
        v221 = [v362 objectForKeyedSubscript:@"WifiTimestamp"];
        v222 = [v221 integerValue];
        v223 = [(PLEntry *)v45 objectForKeyedSubscript:@"WifiTimestamp"];
        v224 = [v223 integerValue] + 60000;

        v44 = v355;
        v47 = v222 <= v224;
        v46 = v347;
        if (v47)
        {
          goto LABEL_245;
        }

        v220 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v330];
        v384 = 0u;
        v385 = 0u;
        v386 = 0u;
        v387 = 0u;
        v225 = [v349 countByEnumeratingWithState:&v384 objects:v417 count:16];
        if (v225)
        {
          v226 = v225;
          v227 = *v385;
          do
          {
            for (ii = 0; ii != v226; ++ii)
            {
              if (*v385 != v227)
              {
                objc_enumerationMutation(v349);
              }

              v229 = *(*(&v384 + 1) + 8 * ii);
              v230 = [v349 objectForKeyedSubscript:v229];
              v231 = [v230 objectAtIndexedSubscript:v48 != 0];
              v232 = [v7 objectForKeyedSubscript:v231];
              v233 = [v232 integerValue];

              v234 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v233];
              [v220 setObject:v234 forKeyedSubscript:v229];

              v48 = v364;
            }

            v226 = [v349 countByEnumeratingWithState:&v384 objects:v417 count:16];
          }

          while (v226);
        }

        v53 = v362;
        v235 = [v362 objectForKeyedSubscript:@"WifiTimestamp"];
        [v220 setObject:v235 forKeyedSubscript:@"WifiTimestamp"];

        v46 = v347;
        [(PLOperator *)v347 logEntry:v220];
        v45 = v352;
        v44 = v355;
        v51 = 0x277CCA000;
      }
    }

LABEL_245:
    if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
    {
      v236 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v334];
      v380 = 0u;
      v381 = 0u;
      v382 = 0u;
      v383 = 0u;
      v237 = [v353 countByEnumeratingWithState:&v380 objects:v416 count:16];
      if (v237)
      {
        v238 = v237;
        v239 = *v381;
        do
        {
          for (jj = 0; jj != v238; ++jj)
          {
            if (*v381 != v239)
            {
              objc_enumerationMutation(v353);
            }

            v241 = *(*(&v380 + 1) + 8 * jj);
            v242 = [v353 objectForKeyedSubscript:v241];
            v243 = [v242 objectAtIndexedSubscript:v48 != 0];
            v244 = [v7 objectForKeyedSubscript:v243];
            v245 = [v244 integerValue];

            v246 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v245];
            [v236 setObject:v246 forKeyedSubscript:v241];

            v48 = v364;
          }

          v238 = [v353 countByEnumeratingWithState:&v380 objects:v416 count:16];
        }

        while (v238);
      }

      v53 = v362;
      v247 = [v362 objectForKeyedSubscript:@"WifiTimestamp"];
      [v236 setObject:v247 forKeyedSubscript:@"WifiTimestamp"];

      v46 = v347;
      v45 = v352;
      v44 = v355;
      v51 = 0x277CCA000;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v248 = objc_opt_class();
        v379[0] = MEMORY[0x277D85DD0];
        v379[1] = 3221225472;
        v379[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2538;
        v379[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v379[4] = v248;
        v249 = v379;
        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2536 != -1)
        {
          dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2536, v249);
        }

        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2537 == 1)
        {
          v250 = [MEMORY[0x277CCACA8] stringWithFormat:@" current data:%@ %@", v236, v353];
          v251 = MEMORY[0x277D3F178];
          v252 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          v253 = [v252 lastPathComponent];
          v254 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v251 logMessage:v250 fromFile:v253 fromFunction:v254 fromLineNumber:4396];

          v255 = PLLogCommon();
          if (os_log_type_enabled(v255, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v412 = v250;
            _os_log_debug_impl(&dword_25EE51000, v255, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v44 = v355;
          v48 = v364;
          v46 = v347;
          v53 = v362;
        }
      }

      [(PLOperator *)v46 logEntry:v236];
    }

    if (+[PLWifiAgent isScanForwardLoggingEnabled])
    {
      v256 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v333];
      v375 = 0u;
      v376 = 0u;
      v377 = 0u;
      v378 = 0u;
      v257 = [v354 countByEnumeratingWithState:&v375 objects:v415 count:16];
      if (v257)
      {
        v258 = v257;
        v259 = *v376;
        do
        {
          for (kk = 0; kk != v258; ++kk)
          {
            if (*v376 != v259)
            {
              objc_enumerationMutation(v354);
            }

            v261 = *(*(&v375 + 1) + 8 * kk);
            v262 = [v354 objectForKeyedSubscript:v261];
            v263 = [v262 objectAtIndexedSubscript:v48 != 0];
            v264 = [v7 objectForKeyedSubscript:v263];
            v265 = [v264 integerValue];

            v266 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v265];
            [v256 setObject:v266 forKeyedSubscript:v261];

            v48 = v364;
          }

          v258 = [v354 countByEnumeratingWithState:&v375 objects:v415 count:16];
        }

        while (v258);
      }

      v53 = v362;
      v267 = [v362 objectForKeyedSubscript:@"WifiTimestamp"];
      [v256 setObject:v267 forKeyedSubscript:@"WifiTimestamp"];

      v46 = v347;
      v44 = v355;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v268 = objc_opt_class();
        v374[0] = MEMORY[0x277D85DD0];
        v374[1] = 3221225472;
        v374[2] = __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2544;
        v374[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v374[4] = v268;
        v269 = v374;
        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2542 != -1)
        {
          dispatch_once(&logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__defaultOnce_2542, v269);
        }

        if (logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2543 == 1)
        {
          v270 = [MEMORY[0x277CCACA8] stringWithFormat:@"ScanForward current data: %@ %@", v256, v354];
          v271 = MEMORY[0x277D3F178];
          v272 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          v273 = [v272 lastPathComponent];
          v274 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v271 logMessage:v270 fromFile:v273 fromFunction:v274 fromLineNumber:4410];

          v275 = PLLogCommon();
          if (os_log_type_enabled(v275, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v412 = v270;
            _os_log_debug_impl(&dword_25EE51000, v275, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v44 = v355;
          v48 = v364;
          v46 = v347;
        }
      }

      v276 = PLLogWifi();
      v45 = v352;
      v51 = 0x277CCA000;
      if (os_log_type_enabled(v276, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v412 = v256;
        v413 = 2112;
        v414 = v354;
        _os_log_debug_impl(&dword_25EE51000, v276, OS_LOG_TYPE_DEBUG, "ScanForward current data: %@ %@", buf, 0x16u);
      }

      [(PLOperator *)v46 logEntry:v256];
    }

    if (v45)
    {
      v277 = [v350 objectForKeyedSubscript:@"TimeDuration"];
      v278 = [v277 integerValue];

      if (v278 >= 1)
      {
        if (v343 != 1)
        {
          v279 = [v350 objectForKeyedSubscript:@"TimeDuration"];
          v280 = [v279 integerValue] / 1000.0;

          v281 = [v350 entryDate];
          v282 = [(PLEntry *)v45 entryDate];
          [v281 timeIntervalSinceDate:v282];
          v284 = v283;

          if (v280 < v284)
          {
            v285 = MEMORY[0x277CBEAA8];
            v286 = [(PLEntry *)v45 entryDate];
            v287 = [v285 dateWithTimeInterval:v286 sinceDate:v280];
            [v350 setEntryDate:v287];
          }
        }

        if (v337)
        {
          [(PLWifiAgent *)v46 modelWiFiPower:v350];
        }
      }
    }

    v49 = v343;
    if (v343 != 1)
    {
      v288 = v53;

      if (v288)
      {
        v210 = v343;
        v209 = [(PLEntry *)v288 objectForKeyedSubscript:@"WifiTimestamp"];
        [v209 unsignedIntegerValue];
        v48 = 0;
        v45 = v288;
LABEL_289:

        v49 = v210;
        goto LABEL_291;
      }

      v45 = 0;
      v48 = 0;
    }

LABEL_291:

    v47 = v49-- <= 1;
    v52 = v341;
  }

  while (!v47);

  v329 = *MEMORY[0x277D85DE8];
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2505(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2504 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2517(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2516 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2526(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2525 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2532(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2531 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2538(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2537 = result;
  return result;
}

uint64_t __84__PLWifiAgent_logEventBackwardWifiProperties_withNetworkProperties_shallModelPower___block_invoke_2544(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardWifiProperties_withNetworkProperties_shallModelPower__classDebugEnabled_2543 = result;
  return result;
}

- (id)wifiChipsetQuery
{
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
      v28 = 3221225472;
      v29 = __31__PLWifiAgent_wifiChipsetQuery__block_invoke;
      v30 = &__block_descriptor_40_e5_v8__0lu32l8;
      v31 = v7;
      if (wifiChipsetQuery_defaultOnce != -1)
      {
        dispatch_once(&wifiChipsetQuery_defaultOnce, &block);
      }

      if (wifiChipsetQuery_classDebugEnabled == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"last module entry: %@", v6, block, v28, v29, v30, v31];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiChipsetQuery]"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:4589];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
    }

    v16 = @"4334";
    goto LABEL_19;
  }

LABEL_55:

  wifiChipset = self->_wifiChipset;
LABEL_56:
  v16 = wifiChipset;
LABEL_57:

  return v16;
}

uint64_t __31__PLWifiAgent_wifiChipsetQuery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  wifiChipsetQuery_classDebugEnabled = result;
  return result;
}

- (id)wifiManufacturerQuery
{
  v2 = self;
  v46 = *MEMORY[0x277D85DE8];
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
      if (wifiManufacturerQuery_defaultOnce != -1)
      {
        dispatch_once(&wifiManufacturerQuery_defaultOnce, block);
      }

      if (wifiManufacturerQuery_classDebugEnabled == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
      if (wifiManufacturerQuery_defaultOnce_2620 != -1)
      {
        dispatch_once(&wifiManufacturerQuery_defaultOnce_2620, v39);
      }

      if (wifiManufacturerQuery_classDebugEnabled_2621 != 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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

uint64_t __36__PLWifiAgent_wifiManufacturerQuery__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  wifiManufacturerQuery_classDebugEnabled = result;
  return result;
}

uint64_t __36__PLWifiAgent_wifiManufacturerQuery__block_invoke_2622(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  wifiManufacturerQuery_classDebugEnabled_2621 = result;
  return result;
}

- (void)modelWiFiPower:(id)a3
{
  v485[1] = *MEMORY[0x277D85DE8];
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
LABEL_84:

      goto LABEL_85;
    }

    v6 = 0x277D3F000;
    if (([MEMORY[0x277D3F208] isWiFiClass:1004002] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004003))
    {
      v7 = [v4 objectForKeyedSubscript:@"CurrentChannel"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [v4 objectForKeyedSubscript:@"PMDuration"];
      [v10 doubleValue];
      v478 = v11;

      v12 = [v4 objectForKeyedSubscript:@"MPCDuration"];
      [v12 doubleValue];
      v474 = v13;

      v14 = [v4 objectForKeyedSubscript:@"TimeDuration"];
      [v14 doubleValue];
      v471 = v15;

      v16 = [v4 objectForKeyedSubscript:@"TXDuration"];
      [v16 doubleValue];
      v468 = v17;

      v18 = [v4 objectForKeyedSubscript:@"RXDuration"];
      [v18 doubleValue];
      v466 = v19;

      v20 = [v4 objectForKeyedSubscript:@"HSICActiveDuration"];
      [v20 doubleValue];
      v463 = v21;

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
      v460 = v45;

      v46 = [PLUtilities powerModelForOperatorName:@"wifi"];
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

        v78 = v471 - v478 - v474 - v468 - v466;
        if (v78 < 0.0)
        {
          v78 = 0.0;
        }

        v79 = v78 * v73;
        v80 = v463 + v474 + v478 + v59 - v471;
        if (v80 < 0.0)
        {
          v80 = 0.0;
        }

        v81 = v80 * v77;
        v82 = v468 * v65 + v466 * v69;
        v54 = v82 + v79 + v81;
        v83 = v460 - v466 - v468;
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

        v54 = (v471 - v478 - v474) * v53;
        v55 = 0.0;
      }
    }

    else
    {
      if (([MEMORY[0x277D3F208] isWiFiClass:1004006] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004004) & 1) == 0 && !objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004008))
      {
        if ([MEMORY[0x277D3F208] kPLWiFiClassIsOneOf:{1004005, 1004007, 1004010, 1004013, 1004014, 1004015, 1004016, 1004017, 1004018, 0}])
        {
          v184 = [v4 objectForKeyedSubscript:@"CurrentChannel"];
          [v184 doubleValue];
          v472 = v185;

          v186 = [v4 objectForKeyedSubscript:@"PMDuration"];
          [v186 doubleValue];
          v188 = v187;

          v189 = [v4 objectForKeyedSubscript:@"MPCDuration"];
          [v189 doubleValue];
          v191 = v190;

          v192 = [v4 objectForKeyedSubscript:@"TimeDuration"];
          [v192 doubleValue];
          v194 = v193;

          v195 = [v4 objectForKeyedSubscript:@"TXDuration"];
          [v195 doubleValue];
          v476 = v196;

          v197 = [v4 objectForKeyedSubscript:@"MIMOTXDuration"];
          [v197 doubleValue];
          v199 = v198;

          v200 = [v4 objectForKeyedSubscript:@"RXDuration"];
          [v200 doubleValue];
          v202 = v201;

          v203 = [v4 objectForKeyedSubscript:@"MIMORXDuration"];
          [v203 doubleValue];
          v205 = v204;

          v206 = [v4 objectForKeyedSubscript:@"SISORXDuration"];
          [v206 doubleValue];

          v207 = [v4 objectForKeyedSubscript:@"MIMOCSDuration"];
          [v207 doubleValue];
          v209 = v208;

          v210 = [v4 objectForKeyedSubscript:@"SISOCSDuration"];
          [v210 doubleValue];

          v211 = [v4 objectForKeyedSubscript:@"OCLCSDuration"];
          [v211 doubleValue];
          v452 = v212;

          v467 = 0.0;
          if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
          {
            v213 = [v4 objectForKeyedSubscript:@"SCRXDurationSISO"];
            [v213 doubleValue];
            v467 = v214;
          }

          v215 = [v4 objectForKeyedSubscript:@"FRTSDuration"];
          [v215 doubleValue];
          v461 = v216;

          if (v205 <= v202)
          {
            v217 = v205;
          }

          else
          {
            v217 = v202;
          }

          if (v199 <= v476)
          {
            v218 = v199;
          }

          else
          {
            v218 = v476;
          }

          if (v194 - v202 - v476 - v188 - v191 >= 0.0)
          {
            v219 = v194 - v202 - v476 - v188 - v191;
          }

          else
          {
            v219 = 0.0;
          }

          if (v209 <= v219)
          {
            v220 = v209;
          }

          else
          {
            v220 = v219;
          }

          v454 = v220;
          v456 = v217;
          v221 = [PLUtilities powerModelForOperatorName:@"wifi"];
          v222 = [(PLWifiAgent *)self wifiChipsetQuery];
          v469 = v221;
          v223 = [v221 objectForKeyedSubscript:v222];
          v224 = [(PLWifiAgent *)self wifiManufacturerQuery];
          v225 = [v223 objectForKeyedSubscript:v224];

          if (v472 >= 0.0)
          {
            v465 = v225;
            v480 = self;
            v273 = @"5";
            if (v472 != 0.0)
            {
              v274 = @"2.4";
              if (v472 > 11.0)
              {
                v274 = @"5";
              }

              v273 = v274;
            }

            v275 = [v4 objectForKeyedSubscript:@"CurrentBandwidth"];
            [v275 doubleValue];
            v277 = v276;

            if (v277)
            {
              v278 = v277;
            }

            else
            {
              v278 = 20;
            }

            v279 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v278];
            v280 = [v225 objectForKeyedSubscript:v273];
            v281 = [v280 objectForKeyedSubscript:v279];
            v282 = [v281 objectForKeyedSubscript:@"mimo_tx"];
            [v282 doubleValue];
            v446 = v283;

            v284 = [v225 objectForKeyedSubscript:v273];
            v285 = [v284 objectForKeyedSubscript:v279];
            v286 = [v285 objectForKeyedSubscript:@"mimo_rx"];
            [v286 doubleValue];
            v288 = v287;

            v289 = [v225 objectForKeyedSubscript:v273];
            v290 = [v289 objectForKeyedSubscript:v279];
            v291 = [v290 objectForKeyedSubscript:@"mimo_cs"];
            [v291 doubleValue];
            v459 = v292;

            v293 = [v225 objectForKeyedSubscript:v273];
            v294 = [v293 objectForKeyedSubscript:v279];
            v295 = [v294 objectForKeyedSubscript:@"siso_tx"];
            [v295 doubleValue];
            v444 = v296;

            v297 = [v225 objectForKeyedSubscript:v273];
            v298 = [v297 objectForKeyedSubscript:v279];
            v299 = [v298 objectForKeyedSubscript:@"siso_rx"];
            [v299 doubleValue];
            v442 = v300;

            v301 = [v225 objectForKeyedSubscript:v273];
            v302 = [v301 objectForKeyedSubscript:v279];
            v303 = [v302 objectForKeyedSubscript:@"siso_cs"];
            [v303 doubleValue];
            v450 = v304;

            v305 = [v225 objectForKeyedSubscript:v273];
            v306 = [v305 objectForKeyedSubscript:v279];
            v307 = [v306 objectForKeyedSubscript:@"ocl_cs"];
            [v307 doubleValue];
            v440 = v308;

            v309 = 0.0;
            if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
            {
              v310 = [v225 objectForKeyedSubscript:v273];
              v311 = [v310 objectForKeyedSubscript:@"sc"];
              [v311 doubleValue];
              v309 = v312;
            }

            v448 = v218;
            v313 = v476 - v218;
            v314 = v202 - v456;
            self = v480;
            if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
            {
              v315 = v314 * v442 + v456 * v288;
              v6 = 0x277D3F000;
              v229 = v469;
            }

            else
            {
              v438 = v288;
              v362 = [v4 objectForKeyedSubscript:@"OPSFullDuration"];
              [v362 doubleValue];
              v364 = v363;

              v365 = [v4 objectForKeyedSubscript:@"OPSPartialDuration"];
              [v365 doubleValue];
              v367 = v366;

              if (v364 >= 0.0)
              {
                v368 = v364;
              }

              else
              {
                v368 = 0.0;
              }

              v436 = v368;
              if (v367 >= 0.0)
              {
                v369 = v367;
              }

              else
              {
                v369 = 0.0;
              }

              v370 = [v225 objectForKeyedSubscript:v273];
              v371 = [v370 objectForKeyedSubscript:v279];
              v372 = [v371 objectForKeyedSubscript:@"ops_full"];
              [v372 doubleValue];
              v434 = v373;

              v374 = [v225 objectForKeyedSubscript:v273];
              v375 = [v374 objectForKeyedSubscript:v279];
              v376 = [v375 objectForKeyedSubscript:@"ops_partial"];
              [v376 doubleValue];
              v378 = v377;

              v379 = v314 * v442;
              v229 = v469;
              if (v456 <= v436 + v369)
              {
                v315 = v379 + v456 * v438;
              }

              else
              {
                v315 = v379 + (v456 - v436 - v369) * v438 + v369 * v378 + v436 * v434;
              }

              self = v480;
              v6 = 0x277D3F000uLL;
            }

            v398 = v313 * v444;
            v399 = v219 - v454;
            if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100020) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v452 > v454)
            {
              v400 = v399 * v450 + v454 * v459;
            }

            else
            {
              v400 = v452 * v440 + (v454 - v452) * v459 + v399 * v450;
            }

            v401 = v398 + v448 * v446;
            if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
            {
              v402 = 0.0;
            }

            else
            {
              v402 = v467 * v309;
            }

            if ([*(v6 + 384) debugEnabled])
            {
              v403 = objc_opt_class();
              v484[0] = MEMORY[0x277D85DD0];
              v484[1] = 3221225472;
              v484[2] = __30__PLWifiAgent_modelWiFiPower___block_invoke;
              v484[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v484[4] = v403;
              if (modelWiFiPower__defaultOnce != -1)
              {
                dispatch_once(&modelWiFiPower__defaultOnce, v484);
              }

              if (modelWiFiPower__classDebugEnabled == 1)
              {
                v404 = [MEMORY[0x277CCACA8] stringWithFormat:@"txE = %f, rxE = %f, csE = %f, scE = %f", *&v401, *&v315, *&v400, *&v402];
                v405 = MEMORY[0x277D3F178];
                v406 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
                v407 = [v406 lastPathComponent];
                v408 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
                [v405 logMessage:v404 fromFile:v407 fromFunction:v408 fromLineNumber:4984];

                v409 = PLLogCommon();
                if (os_log_type_enabled(v409, OS_LOG_TYPE_DEBUG))
                {
                  __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
                }

                self = v480;
                v6 = 0x277D3F000;
                v229 = v469;
              }
            }

            v410 = v401 + v315;
            v411 = v410 + v400;
            if (v461 - v202 - v476 >= 0.0)
            {
              v412 = v461 - v202 - v476;
            }

            else
            {
              v412 = 0.0;
            }

            v413 = [MEMORY[0x277D3F208] isWiFiClass:1004005];
            if (v412 >= v454)
            {
              if ((v413 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v452 > v412)
              {
                v414 = (v412 - v454) * v450 + v454 * v459;
              }

              else
              {
                v414 = v452 * v440 + (v454 - v452) * v459 + (v412 - v454) * v450;
              }
            }

            else if ((v413 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v452 > v412)
            {
              v414 = v412 * v459;
            }

            else
            {
              v414 = v452 * v440 + (v412 - v452) * v459;
            }

            v54 = v411 + v402;
            if (v414 < 0.0)
            {
              v414 = 0.0;
            }

            v415 = v410 + v414;
            if (v472 == 0.0)
            {
              v55 = 0.0;
            }

            else
            {
              v55 = v415;
            }

            v225 = v465;
          }

          else
          {
            v226 = [v225 objectForKeyedSubscript:{@"scan", v472}];
            [v226 doubleValue];
            v228 = v227;

            v54 = (v194 - v188 - v191) * v228;
            v55 = 0.0;
            v229 = v469;
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

          v56 = [PLUtilities powerModelForOperatorName:@"wifi"];
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

          if (v55 >= 0.0)
          {
            v156 = v55;
          }

          else
          {
            v156 = 0.0;
          }

          if (v54 - v55 - v154 - v155 >= 0.0)
          {
            v157 = v54 - v55 - v154 - v155;
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
            v152 = v167 <= v156;
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
              v161 = v156 / v160;
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
            if (modelWiFiPower__defaultOnce_2686 != -1)
            {
              dispatch_once(&modelWiFiPower__defaultOnce_2686, block);
            }

            if (modelWiFiPower__classDebugEnabled_2687 == 1)
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
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }

              self = v172;
            }
          }

          if (+[PLUtilities isPerfPowerMetricd])
          {
            v179 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MetricMonitorInstantKeys"];
            v180 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v179];
            v181 = [MEMORY[0x277CCABB0] numberWithDouble:v153];
            [v180 setObject:v181 forKeyedSubscript:@"WifiPower"];
            if ([(PLWifiAgent *)self wifiAwdlDevice])
            {
              [(PLWifiAgent *)self wifiAwdlDevice];
              WiFiDeviceClientCopyInterfaceStateInfo();
            }

            v485[0] = v180;
            v182 = [MEMORY[0x277CBEA60] arrayWithObjects:v485 count:1];
            [(PLOperator *)self postEntries:v182];
          }

          else
          {
            v179 = [v4 entryDate];
            [(PLWifiAgent *)self modelWiFiSegmentPower:v179 withDataPower:v168 withIdlePower:v164 withLocationPower:v170 withPipelinePower:v169 withTotalDuration:v160 / 1000.0];
          }

          goto LABEL_84;
        }

        v230 = [v4 objectForKeyedSubscript:@"CurrentChannel"];
        [v230 doubleValue];
        v473 = v231;

        v232 = [v4 objectForKeyedSubscript:@"PMDuration"];
        [v232 doubleValue];
        v234 = v233;

        v235 = [v4 objectForKeyedSubscript:@"MPCDuration"];
        [v235 doubleValue];
        v237 = v236;

        v238 = [v4 objectForKeyedSubscript:@"TimeDuration"];
        [v238 doubleValue];
        v240 = v239;

        v241 = [v4 objectForKeyedSubscript:@"TXDuration"];
        [v241 doubleValue];
        v477 = v242;

        v243 = [v4 objectForKeyedSubscript:@"MIMOTXDuration"];
        [v243 doubleValue];
        v245 = v244;

        v246 = [v4 objectForKeyedSubscript:@"RXDuration"];
        [v246 doubleValue];
        v248 = v247;

        v249 = [v4 objectForKeyedSubscript:@"MIMORXDuration"];
        [v249 doubleValue];
        v251 = v250;

        v252 = [v4 objectForKeyedSubscript:@"SISORXDuration"];
        [v252 doubleValue];

        v253 = [v4 objectForKeyedSubscript:@"MIMOCSDuration"];
        [v253 doubleValue];
        v255 = v254;

        v256 = [v4 objectForKeyedSubscript:@"SISOCSDuration"];
        [v256 doubleValue];

        v257 = [v4 objectForKeyedSubscript:@"OCLCSDuration"];
        [v257 doubleValue];
        v455 = v258;

        v470 = 0.0;
        if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
        {
          v259 = [v4 objectForKeyedSubscript:@"SCRXDurationSISO"];
          [v259 doubleValue];
          v470 = v260;
        }

        v261 = [v4 objectForKeyedSubscript:@"FRTSDuration"];
        [v261 doubleValue];
        v464 = v262;

        if (v251 <= v248)
        {
          v263 = v251;
        }

        else
        {
          v263 = v248;
        }

        if (v245 <= v477)
        {
          v264 = v245;
        }

        else
        {
          v264 = v477;
        }

        if (v240 - v248 - v477 - v234 - v237 >= 0.0)
        {
          v265 = v240 - v248 - v477 - v234 - v237;
        }

        else
        {
          v265 = 0.0;
        }

        if (v255 <= v265)
        {
          v266 = v255;
        }

        else
        {
          v266 = v265;
        }

        v457 = v266;
        v458 = v263;
        v46 = [PLUtilities powerModelForOperatorName:@"wifi"];
        v267 = [(PLWifiAgent *)self wifiChipsetQuery];
        v268 = [v46 objectForKeyedSubscript:v267];
        v269 = [v268 objectForKeyedSubscript:@"usi"];

        if (v473 >= 0.0)
        {
          v451 = v46;
          v481 = self;
          v316 = @"5";
          if (v473 != 0.0)
          {
            v317 = @"2.4";
            if (v473 > 11.0)
            {
              v317 = @"5";
            }

            v316 = v317;
          }

          v318 = [v4 objectForKeyedSubscript:@"CurrentBandwidth"];
          [v318 doubleValue];
          v320 = v319;

          v321 = [(__CFString *)v316 isEqualToString:@"2.4"];
          if (v320)
          {
            v322 = v321;
          }

          else
          {
            v322 = 1;
          }

          if (v322)
          {
            v323 = 20;
          }

          else
          {
            v323 = v320;
          }

          v324 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v323];
          [v269 objectForKeyedSubscript:v316];
          v326 = v325 = v269;
          v327 = [v326 objectForKeyedSubscript:v324];
          v328 = [v327 objectForKeyedSubscript:@"mimo_tx"];
          [v328 doubleValue];
          v447 = v329;

          v330 = [v325 objectForKeyedSubscript:v316];
          v331 = [v330 objectForKeyedSubscript:v324];
          v332 = [v331 objectForKeyedSubscript:@"mimo_rx"];
          [v332 doubleValue];
          v334 = v333;

          v335 = [v325 objectForKeyedSubscript:v316];
          v336 = [v335 objectForKeyedSubscript:v324];
          v337 = [v336 objectForKeyedSubscript:@"mimo_cs"];
          [v337 doubleValue];
          v462 = v338;

          v339 = [v325 objectForKeyedSubscript:v316];
          v340 = [v339 objectForKeyedSubscript:v324];
          v341 = [v340 objectForKeyedSubscript:@"siso_tx"];
          [v341 doubleValue];
          v445 = v342;

          v343 = [v325 objectForKeyedSubscript:v316];
          v344 = [v343 objectForKeyedSubscript:v324];
          v345 = [v344 objectForKeyedSubscript:@"siso_rx"];
          [v345 doubleValue];
          v443 = v346;

          v347 = [v325 objectForKeyedSubscript:v316];
          v348 = [v347 objectForKeyedSubscript:v324];
          v349 = [v348 objectForKeyedSubscript:@"siso_cs"];
          [v349 doubleValue];
          v453 = v350;

          v351 = [v325 objectForKeyedSubscript:v316];
          v352 = [v351 objectForKeyedSubscript:v324];
          v353 = [v352 objectForKeyedSubscript:@"ocl_cs"];
          [v353 doubleValue];
          v441 = v354;

          v355 = 0.0;
          if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
          {
            v356 = [v325 objectForKeyedSubscript:v316];
            v357 = [v356 objectForKeyedSubscript:@"sc"];
            [v357 doubleValue];
            v355 = v358;
          }

          v449 = v264;
          v359 = v477 - v264;
          v360 = v248 - v458;
          self = v481;
          if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
          {
            v361 = v360 * v443 + v458 * v334;
            v6 = 0x277D3F000;
          }

          else
          {
            v439 = v334;
            v380 = [v4 objectForKeyedSubscript:@"OPSFullDuration"];
            [v380 doubleValue];
            v382 = v381;

            v383 = [v4 objectForKeyedSubscript:@"OPSPartialDuration"];
            [v383 doubleValue];
            v385 = v384;

            if (v382 >= 0.0)
            {
              v386 = v382;
            }

            else
            {
              v386 = 0.0;
            }

            v437 = v386;
            if (v385 >= 0.0)
            {
              v387 = v385;
            }

            else
            {
              v387 = 0.0;
            }

            v388 = [v325 objectForKeyedSubscript:v316];
            v389 = [v388 objectForKeyedSubscript:v324];
            v390 = [v389 objectForKeyedSubscript:@"ops_full"];
            [v390 doubleValue];
            v435 = v391;

            v392 = [v325 objectForKeyedSubscript:v316];
            v393 = [v392 objectForKeyedSubscript:v324];
            v394 = [v393 objectForKeyedSubscript:@"ops_partial"];
            [v394 doubleValue];
            v396 = v395;

            v397 = v360 * v443;
            if (v458 <= v437 + v387)
            {
              v361 = v397 + v458 * v439;
            }

            else
            {
              v361 = v397 + (v458 - v437 - v387) * v439 + v387 * v396 + v437 * v435;
            }

            self = v481;
            v6 = 0x277D3F000uLL;
          }

          v269 = v325;
          v416 = v359 * v445;
          v417 = v265 - v457;
          if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100020) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v455 > v457)
          {
            v418 = v417 * v453 + v457 * v462;
          }

          else
          {
            v418 = v455 * v441 + (v457 - v455) * v462 + v417 * v453;
          }

          v419 = v416 + v449 * v447;
          if ([MEMORY[0x277D3F208] isUsingAnOlderWifiChip])
          {
            v420 = 0.0;
          }

          else
          {
            v420 = v470 * v355;
          }

          if ([*(v6 + 384) debugEnabled])
          {
            v421 = objc_opt_class();
            v483[0] = MEMORY[0x277D85DD0];
            v483[1] = 3221225472;
            v483[2] = __30__PLWifiAgent_modelWiFiPower___block_invoke_2685;
            v483[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v483[4] = v421;
            if (modelWiFiPower__defaultOnce_2683 != -1)
            {
              dispatch_once(&modelWiFiPower__defaultOnce_2683, v483);
            }

            if (modelWiFiPower__classDebugEnabled_2684 == 1)
            {
              v422 = [MEMORY[0x277CCACA8] stringWithFormat:@"txE = %f, rxE = %f, csE = %f, scE = %f", *&v419, *&v361, *&v418, *&v420];
              v423 = MEMORY[0x277D3F178];
              v424 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              v425 = [v424 lastPathComponent];
              v426 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
              [v423 logMessage:v422 fromFile:v425 fromFunction:v426 fromLineNumber:5175];

              v427 = PLLogCommon();
              if (os_log_type_enabled(v427, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }

              self = v481;
              v6 = 0x277D3F000;
              v46 = v451;
              v269 = v325;
            }
          }

          v428 = v419 + v361;
          v429 = v428 + v418;
          if (v464 - v248 - v477 >= 0.0)
          {
            v430 = v464 - v248 - v477;
          }

          else
          {
            v430 = 0.0;
          }

          v431 = [MEMORY[0x277D3F208] isWiFiClass:1004005];
          if (v430 >= v457)
          {
            if ((v431 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v455 > v430)
            {
              v432 = (v430 - v457) * v453 + v457 * v462;
            }

            else
            {
              v432 = v455 * v441 + (v457 - v455) * v462 + (v430 - v457) * v453;
            }
          }

          else if ((v431 & 1) != 0 || ([MEMORY[0x277D3F208] isDeviceClass:100020] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100021) & 1) != 0 || v455 > v430)
          {
            v432 = v430 * v462;
          }

          else
          {
            v432 = v455 * v441 + (v430 - v455) * v462;
          }

          v54 = v429 + v420;
          if (v432 < 0.0)
          {
            v432 = 0.0;
          }

          v433 = v428 + v432;
          if (v473 == 0.0)
          {
            v55 = 0.0;
          }

          else
          {
            v55 = v433;
          }
        }

        else
        {
          v270 = [v269 objectForKeyedSubscript:{@"scan", v473}];
          [v270 doubleValue];
          v272 = v271;

          v54 = (v240 - v234 - v237) * v272;
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

      v46 = [PLUtilities powerModelForOperatorName:@"wifi"];
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

      v475 = v105;
      v479 = v90;
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

      v135 = v96 - v479 - v93 - v99 - v102;
      v55 = 0.0;
      if (v135 < 0.0)
      {
        v135 = 0.0;
      }

      v136 = v135 * v134;
      v137 = v99 * v124 + v102 * v129;
      if (v87 != 0.0)
      {
        v138 = v475 - v102 - v99;
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

LABEL_85:

  v183 = *MEMORY[0x277D85DE8];
}

uint64_t __30__PLWifiAgent_modelWiFiPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelWiFiPower__classDebugEnabled = result;
  return result;
}

uint64_t __30__PLWifiAgent_modelWiFiPower___block_invoke_2685(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelWiFiPower__classDebugEnabled_2684 = result;
  return result;
}

uint64_t __30__PLWifiAgent_modelWiFiPower___block_invoke_2688(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  modelWiFiPower__classDebugEnabled_2687 = result;
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

void __39__PLWifiAgent_initOperatorDependancies__block_invoke_972_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "RemoteControlSession payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardWifiProperties:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "wifi properties: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end
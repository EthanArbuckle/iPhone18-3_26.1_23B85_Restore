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

+ (void)load
{
  v2.receiver = self;
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
  v22 = &unk_28714B608;
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
  v26 = &unk_28714B608;
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
  v18 = &unk_28714B608;
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
  v15[0] = &unk_28714B608;
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
  v15[0] = &unk_28714B648;
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
  v12 = &unk_28714B608;
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
  v75[0] = &unk_28714B658;
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
    v33[0] = &unk_28714B608;
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
    v16 = &unk_28714B608;
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
  v76 = &unk_28714B608;
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
    v31[0] = &unk_28714B608;
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
    v22[0] = &unk_28714B608;
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
  v21[0] = &unk_28714B608;
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
    entryEventBackwardDefinitionCumulativeMultiCore = [self entryEventBackwardDefinitionCumulativeMultiCore];
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
    v565 = &unk_28714B618;
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
    v559 = &unk_28714B678;
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
    v553 = &unk_28714B688;
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
      v547 = &unk_28714B618;
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
      v541 = &unk_28714B698;
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
    v192 = &unk_28714B6A8;
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
    v186 = &unk_28714B6A8;
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
    v180 = &unk_28714B6A8;
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
    v174 = &unk_28714B658;
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
  v168 = &unk_28714B648;
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
  if ([(PLWifiAgent *)self wifiManager]!= manager)
  {
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
        lastPathComponent = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiManager:]"];
        [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:2318];

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

- (void)setWiFiHotspotDevice:(__WiFiDeviceClient *)device
{
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
        if (setWiFiHotspotDevice__defaultOnce != -1)
        {
          dispatch_once(&setWiFiHotspotDevice__defaultOnce, block);
        }

        if (setWiFiHotspotDevice__classDebugEnabled == 1)
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
        lastPathComponent2 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiHotspotDevice:]"];
        [v13 logMessage:v6 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:2341];

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

- (void)setWiFiAWDLDevice:(__WiFiDeviceClient *)device
{
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
        if (setWiFiAWDLDevice__defaultOnce != -1)
        {
          dispatch_once(&setWiFiAWDLDevice__defaultOnce, block);
        }

        if (setWiFiAWDLDevice__classDebugEnabled == 1)
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
        lastPathComponent2 = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWiFiAWDLDevice:]"];
        [v13 logMessage:v6 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:2363];

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

- (void)setWifiDevice:(__WiFiDeviceClient *)device
{
  if ([(PLWifiAgent *)self wifiDevice]!= device)
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

    self->_wifiDevice = device;
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
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent setWifiDevice:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:2420];

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
    lastPathComponent = [v48 lastPathComponent];
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
    [v47 logMessage:v40 fromFile:lastPathComponent fromFunction:v50 fromLineNumber:2480];

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
      lastPathComponent2 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
      [v8 logMessage:v7 fromFile:lastPathComponent2 fromFunction:v11 fromLineNumber:2437];

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
        lastPathComponent3 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
        [v16 logMessage:v15 fromFile:lastPathComponent3 fromFunction:v19 fromLineNumber:2445];

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
              lastPathComponent4 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
              [v27 logMessage:v26 fromFile:lastPathComponent4 fromFunction:v30 fromLineNumber:2453];

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
              lastPathComponent5 = [v35 lastPathComponent];
              v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
              [v34 logMessage:v33 fromFile:lastPathComponent5 fromFunction:v37 fromLineNumber:2461];

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
      lastPathComponent6 = [v42 lastPathComponent];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent findWifiDevice]"];
      [v41 logMessage:v40 fromFile:lastPathComponent6 fromFunction:v44 fromLineNumber:2476];

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
      lastPathComponent = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent initOperatorDependancies]"];
      [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:2634];

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
  hasWiFi = [(PLWifiAgent *)self hasWiFi];
  if (hasWiFi)
  {
    [(PLWifiAgent *)self wifiDevice];
    LOBYTE(hasWiFi) = WiFiDeviceClientGetPower() != 0;
  }

  return hasWiFi;
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

- (unint64_t)getCurrentChannelWidth:(__WiFiNetwork *)width
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
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent getCurrentChannelWidth:]"];
        [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2731];

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

- (void)logFromLinkChangeCallback:(id)callback withStats:(id)stats
{
  callbackCopy = callback;
  statsCopy = stats;
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PLWifiAgent_logFromLinkChangeCallback_withStats___block_invoke;
  block[3] = &unk_279A5C768;
  block[4] = self;
  v12 = callbackCopy;
  v13 = statsCopy;
  v9 = statsCopy;
  v10 = callbackCopy;
  dispatch_async(workQueue, block);
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

- (void)logFromAJCallback:(id)callback withFlag:(unsigned __int8)flag withStats:(id)stats
{
  callbackCopy = callback;
  statsCopy = stats;
  workQueue = [(PLOperator *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__PLWifiAgent_logFromAJCallback_withFlag_withStats___block_invoke;
  v13[3] = &unk_279A5CEB8;
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

- (void)logEventPointWake:(id)wake
{
  wakeCopy = wake;
  if ([(PLWifiAgent *)self hasWiFi])
  {
    if (wakeCopy)
    {
      v5 = wakeCopy;
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
          lastPathComponent = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:2861];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v87 = wakeCopy;
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
        lastPathComponent2 = [v76 lastPathComponent];
        v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
        [v75 logMessage:v74 fromFile:lastPathComponent2 fromFunction:v78 fromLineNumber:2910];

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
          lastPathComponent3 = [v49 lastPathComponent];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
          [v48 logMessage:v45 fromFile:lastPathComponent3 fromFunction:v51 fromLineNumber:2889];

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
              lastPathComponent4 = [v61 lastPathComponent];
              v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
              [v60 logMessage:v59 fromFile:lastPathComponent4 fromFunction:v63 fromLineNumber:2898];

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

            processName = [v57 processName];
            [v29 setObject:processName forKeyedSubscript:@"ProcessName"];
          }

          wakeCopy = v87;
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
        lastPathComponent5 = [v69 lastPathComponent];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
        [v68 logMessage:v5 fromFile:lastPathComponent5 fromFunction:v71 fromLineNumber:2859];

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
      lastPathComponent6 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWake:]"];
      [v7 logMessage:v5 fromFile:lastPathComponent6 fromFunction:v10 fromLineNumber:2845];

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

- (void)logEventPointWakeDataFrame:(id)frame withParams:(id)params toEntry:(id)entry
{
  v94 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  entryCopy = entry;
  if ([frameCopy length] > 0xE)
  {
    [frameCopy getBytes:v92 length:14];
    v15 = [frameCopy subdataWithRange:{14, objc_msgSend(frameCopy, "length") - 14}];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v92[0], v92[1], v92[2], v92[3], v92[4], v92[5]];;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v92[6], v92[7], v92[8], v92[9], v92[10], v92[11]];;
    v18 = [MEMORY[0x277D3F1F8] decodeEtherType:bswap32(v93) >> 16];
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
          if (logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1126 != -1)
          {
            dispatch_once(&logEventPointWakeDataFrame_withParams_toEntry__defaultOnce_1126, v89);
          }

          if (logEventPointWakeDataFrame_withParams_toEntry__classDebugEnabled_1127 == 1)
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
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
            goto LABEL_40;
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
        lastPathComponent2 = [v68 lastPathComponent];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
        [v67 logMessage:v62 fromFile:lastPathComponent2 fromFunction:v70 fromLineNumber:2946];

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
      lastPathComponent3 = [v73 lastPathComponent];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
      [v72 logMessage:v19 fromFile:lastPathComponent3 fromFunction:v75 fromLineNumber:2973];

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
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: payload too short: length of %lu", objc_msgSend(frameCopy, "length")];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
      lastPathComponent4 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeDataFrame:withParams:toEntry:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent4 fromFunction:v13 fromLineNumber:2920];

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

- (void)logEventPointWakePNO:(id)o withParams:(id)params toEntry:(id)entry
{
  v54 = *MEMORY[0x277D85DE8];
  oCopy = o;
  entryCopy = entry;
  v9 = [params objectForCFString:@"IO80211InterfaceWoWWakeUpCommand"];
  memset(v52, 0, 48);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  memset(v51, 0, 44);
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
      if (logEventPointWakePNO_withParams_toEntry__defaultOnce != -1)
      {
        dispatch_once(&logEventPointWakePNO_withParams_toEntry__defaultOnce, block);
      }

      if (logEventPointWakePNO_withParams_toEntry__classDebugEnabled == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

LABEL_29:
        v21 = 0;
        goto LABEL_30;
      }
    }

    goto LABEL_32;
  }

  [oCopy getBytes:v52 length:48];
  [oCopy getBytes:v49 range:{48, 56}];
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
        lastPathComponent2 = [v35 lastPathComponent];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
        [v34 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v37 fromLineNumber:2994];

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
  [entryCopy setObject:v17 forKeyedSubscript:@"network_count"];

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
  v45 = oCopy;
  while ([oCopy length] >= (v22 + 44))
  {
    if (v20)
    {
      [oCopy getBytes:v51 range:{v22, 44}];
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
    [entryCopy setObject:v26 forKeyedSubscript:v27];

    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v53];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_ssid", v20];
    [entryCopy setObject:v28 forKeyedSubscript:v29];

    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_bssid", v20];
    [entryCopy setObject:v25 forKeyedSubscript:v30];

    v31 = [MEMORY[0x277CCABB0] numberWithInt:SWORD4(v51[2])];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"network%d_rssi", v20];
    [entryCopy setObject:v31 forKeyedSubscript:v32];

    ++v20;
    v22 += 44;
    v21 = v25;
    oCopy = v45;
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
  lastPathComponent3 = [v41 lastPathComponent];
  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakePNO:withParams:toEntry:]"];
  [v40 logMessage:v11 fromFile:lastPathComponent3 fromFunction:v43 fromLineNumber:3004];

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

- (void)logEventPointWakeLink:(id)link withParams:(id)params toEntry:(id)entry
{
  v29 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  entryCopy = entry;
  memset(v28, 0, sizeof(v28));
  if ([linkCopy length] > 0x2F)
  {
    [linkCopy getBytes:v28 length:48];
    if (DWORD1(v28[0]) == 0x10000000)
    {
      v10 = [(PLWifiAgent *)self decodeWifiEventLinkReason:bswap32(HIDWORD(v28[0]))];
      [entryCopy setObject:v10 forKeyedSubscript:@"loss_reason"];
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
        lastPathComponent = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
        [v17 logMessage:v10 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:3044];

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
      lastPathComponent2 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventPointWakeLink:withParams:toEntry:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent2 fromFunction:v14 fromLineNumber:3035];

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

- (void)logEventPointJoin:(unsigned __int8)join withStats:(id)stats
{
  joinCopy = join;
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
    if (logEventPointJoin_withStats__defaultOnce != -1)
    {
      dispatch_once(&logEventPointJoin_withStats__defaultOnce, block);
    }

    if (logEventPointJoin_withStats__classDebugEnabled == 1)
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

- (void)logEventForwardRSSI:(id)i
{
  iCopy = i;
  if (iCopy)
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
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"LinkQuality Callback: %@", iCopy, block, v17, v18, v19, v20];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardRSSI:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3184];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
}

uint64_t __35__PLWifiAgent_logEventForwardRSSI___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventForwardRSSI__classDebugEnabled = result;
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
      if (logEventForwardAWDLState__defaultOnce != -1)
      {
        dispatch_once(&logEventForwardAWDLState__defaultOnce, block);
      }

      if (logEventForwardAWDLState__classDebugEnabled == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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

- (void)logEventForwardHotspotState:(id)state
{
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
          if (logEventForwardHotspotState__defaultOnce != -1)
          {
            dispatch_once(&logEventForwardHotspotState__defaultOnce, block);
          }

          if (logEventForwardHotspotState__classDebugEnabled == 1)
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
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
                  lastPathComponent2 = [v38 lastPathComponent];
                  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventForwardHotspotState:]"];
                  [v37 logMessage:v29 fromFile:lastPathComponent2 fromFunction:v40 fromLineNumber:3313];

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

- (void)updateEventBackwardUserScanDuration:(id)duration
{
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
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"User scan counter update: clientName = %@, dwellTime= %lu, channelCountNum = %lu, totalScanTime = %lu\n", v6, intValue, v8, v17];
              v22 = MEMORY[0x277D3F178];
              v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
              lastPathComponent = [v23 lastPathComponent];
              v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent updateEventBackwardUserScanDuration:]"];
              [v22 logMessage:v21 fromFile:lastPathComponent fromFunction:v25 fromLineNumber:3411];

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

- (void)logEventBackwardWifiProperties:(id)properties withNetworkProperties:(id)networkProperties shallModelPower:(BOOL)power
{
  powerCopy = power;
  v423[10] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  networkPropertiesCopy = networkProperties;
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
  allValues = [v348 allValues];
  v8 = *MEMORY[0x277D3F5C8];
  v332 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"HotspotPowerStats"];
  v9 = [propertiesCopy objectForKeyedSubscript:@"CACHED_TIME_STAMP"];
  integerValue = [v9 integerValue];

  v11 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_ASSOCIATED_SLEEP_DURATION"];
  integerValue2 = [v11 integerValue];

  v13 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_UNASSOCIATED_SLEEP_DURATION"];
  integerValue3 = [v13 integerValue];

  v15 = [propertiesCopy objectForKeyedSubscript:@"INSTANT_TIME_STAMP"];
  obj = [v15 integerValue];

  v16 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"CumulativeProperties"];
  v342 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"DiffProperties"];
  v330 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"BeaconProfile"];
  v335 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"AutoJoin"];
  v334 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"Scans"];
  v333 = [(PLOperator *)PLWifiAgent entryKeyForType:v8 andName:@"ScanForwardStats"];
  v341 = v16;
  selfCopy = self;
  if (+[PLUtilities isPerfPowerMetricd])
  {
    v18 = self->_lastEntryForMetricd;
  }

  else
  {
    storage = [(PLOperator *)self storage];
    v20 = v16;
    v21 = storage;
    v18 = [storage lastEntryForKey:v20];
  }

  v363 = (integerValue2 | integerValue3) != 0;
  v351 = v18;
  if (v18)
  {
    v22 = [(PLEntry *)v18 objectForKeyedSubscript:@"WifiTimestamp"];
    unsignedIntegerValue = [v22 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v23 = integerValue;
  v24 = objc_opt_new();
  v25 = +[PLWifiAgent isBeaconLoggingEnabled];
  v26 = MEMORY[0x277CBEC10];
  v27 = &unk_287149058;
  if (!v25)
  {
    v27 = MEMORY[0x277CBEC10];
  }

  v349 = v27;
  isUsingAnOlderWifiChip = [MEMORY[0x277D3F208] isUsingAnOlderWifiChip];
  v29 = &unk_287149080;
  if (isUsingAnOlderWifiChip)
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
  kPLWiFiClassOfDevice = [MEMORY[0x277D3F208] kPLWiFiClassOfDevice];
  v33 = 0;
  HIDWORD(v340) = 0;
  v34 = &unk_287148F68;
  v35 = &unk_287148F40;
  v36 = &unk_287148F18;
  v37 = &unk_287148E78;
  v38 = &unk_287148E50;
  v345 = propertiesCopy;
  v347 = selfCopy;
  if (kPLWiFiClassOfDevice <= 1004010)
  {
    if (kPLWiFiClassOfDevice <= 1004005)
    {
      if ((kPLWiFiClassOfDevice - 1004001) >= 3)
      {
        LODWORD(v340) = 0;
        v338 = 0;
        v39 = v339;
        if ((kPLWiFiClassOfDevice - 1004004) >= 2)
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

    if (kPLWiFiClassOfDevice <= 1004007)
    {
      if (kPLWiFiClassOfDevice == 1004006)
      {
        goto LABEL_33;
      }

      v41 = 0;
      v39 = v339;
      goto LABEL_42;
    }

    if (kPLWiFiClassOfDevice == 1004008)
    {
      goto LABEL_33;
    }

    LODWORD(v340) = 0;
    v338 = 0;
    v39 = v339;
    if (kPLWiFiClassOfDevice != 1004010)
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
  if (kPLWiFiClassOfDevice > 1004014)
  {
    if ((kPLWiFiClassOfDevice - 1004016) >= 3)
    {
      if (kPLWiFiClassOfDevice == 1004015)
      {
        v42 = &unk_287149030;
        v43 = &unk_287148EA0;
      }

      else
      {
        LODWORD(v340) = 0;
        v338 = 0;
        selfCopy = v347;
        v39 = v339;
        if (kPLWiFiClassOfDevice != 1004019)
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
    propertiesCopy = v345;
LABEL_40:
    [v39 addEntriesFromDictionary:v38];
    v38 = v37;
    v37 = v36;
    v36 = v35;
    v35 = v34;
    v34 = v40;
    selfCopy = v347;
    goto LABEL_41;
  }

  if ((kPLWiFiClassOfDevice - 1004013) < 2)
  {
    v39 = v339;
    goto LABEL_40;
  }

  if (kPLWiFiClassOfDevice == 1004011)
  {
    v340 = 0;
    v338 = 0;
    v33 = 0;
    v36 = &unk_287148FE0;
    v37 = &unk_287148FB8;
    selfCopy = v347;
    v39 = v339;
LABEL_43:
    [v39 addEntriesFromDictionary:v38];
    v38 = v37;
    v37 = v36;
    goto LABEL_44;
  }

  LODWORD(v340) = 0;
  v338 = 0;
  selfCopy = v347;
  v39 = v339;
  if (kPLWiFiClassOfDevice != 1004012)
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
  v46 = selfCopy;
  if (v363)
  {
    if (obj > v23)
    {
      if (unsignedIntegerValue)
      {
        v47 = v23 > unsignedIntegerValue;
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

    v50 = v23 > unsignedIntegerValue;
    v49 = 1;
    goto LABEL_60;
  }

  v49 = 1;
  if (v351)
  {
    v50 = v23 > unsignedIntegerValue;
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
      null = [MEMORY[0x277CBEB68] null];
      [v186 setObject:null forKeyedSubscript:@"CurrentSSID"];

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
        v198 = allValues;
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
      if (powerCopy)
      {
        [(PLWifiAgent *)v347 modelWiFiPower:v187];
      }

      v48 = 2;
      propertiesCopy = v345;
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

    v56 = [propertiesCopy objectForKeyedSubscript:v55];
    v57 = [v54 numberWithUnsignedInteger:{objc_msgSend(v56, "integerValue")}];
    [v53 setObject:v57 forKeyedSubscript:@"WifiTimestamp"];

    if (v45)
    {
      v58 = *(v51 + 2992);
      v59 = [v53 objectForKeyedSubscript:@"WifiTimestamp"];
      unsignedIntegerValue2 = [v59 unsignedIntegerValue];
      v61 = [(PLEntry *)v45 objectForKeyedSubscript:@"WifiTimestamp"];
      v62 = [v58 numberWithInteger:{unsignedIntegerValue2 - objc_msgSend(v61, "unsignedIntegerValue")}];
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
          v70 = [propertiesCopy objectForKeyedSubscript:v69];
          integerValue4 = [v70 integerValue];

          if ([v357 containsObject:v67])
          {
            v72 = integerValue4 / 0x3E8uLL;
          }

          else
          {
            v72 = integerValue4;
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
              unsignedLongValue = [v74 unsignedLongValue];
              goto LABEL_92;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              unsignedLongValue = [v74 longLongValue];
LABEL_92:
              v77 = unsignedLongValue;
              v78 = unsignedLongValue - v72;
              if (unsignedLongValue > v72)
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
                      lastPathComponent = [v93 lastPathComponent];
                      v95 = v91;
                      v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
                      [v92 logMessage:v95 fromFile:lastPathComponent fromFunction:v96 fromLineNumber:4228];

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
                lastPathComponent2 = [v84 lastPathComponent];
                v86 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
                [v346 logMessage:v83 fromFile:lastPathComponent2 fromFunction:v86 fromLineNumber:4234];

                v87 = v83;
                v88 = PLLogCommon();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v412 = v87;
                  _os_log_debug_impl(&dword_25EE51000, v88, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                propertiesCopy = v345;
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
      v106 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentChannel"];
      v100 = v362;
      [v362 setObject:v106 forKeyedSubscript:@"CurrentChannel"];

      v107 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentSSID"];
      [v362 setObject:v107 forKeyedSubscript:@"CurrentSSID"];

      v108 = [networkPropertiesCopy objectForKeyedSubscript:@"CurrentBandwidth"];
      [v362 setObject:v108 forKeyedSubscript:@"CurrentBandwidth"];

      v109 = [networkPropertiesCopy objectForKeyedSubscript:@"Carplay"];
      [v362 setObject:v109 forKeyedSubscript:@"Carplay"];

      v110 = [*(v51 + 2992) numberWithBool:{-[PLWifiAgent isWowEnabled](v347, "isWowEnabled")}];
      [v362 setObject:v110 forKeyedSubscript:@"WowEnabled"];

      v105 = [*(v51 + 2992) numberWithBool:{-[PLWifiAgent isWiFiPowered](v347, "isWiFiPowered")}];
    }

    [v100 setObject:v105 forKeyedSubscript:@"WifiPowered"];

    if (v340)
    {
      v111 = [propertiesCopy objectForKeyedSubscript:@"AutoJoinPowerDiag"];
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
          v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged AJ keys:%@", v112];
          v130 = MEMORY[0x277D3F178];
          v131 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent3 = [v131 lastPathComponent];
          v133 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v130 logMessage:v112 fromFile:lastPathComponent3 fromFunction:v133 fromLineNumber:4283];

          v134 = PLLogCommon();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v412 = v112;
            _os_log_debug_impl(&dword_25EE51000, v134, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v51 = 0x277CCA000;
        }
      }
    }

    if (HIDWORD(v340))
    {
      v135 = [propertiesCopy objectForKey:@"AutoHotspotLPHSPowerStats"];

      if (v135)
      {
        v136 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v332];
        v137 = [propertiesCopy objectForKeyedSubscript:@"AutoHotspotLPHSPowerStats"];
        v394 = 0u;
        v395 = 0u;
        v396 = 0u;
        v397 = 0u;
        allKeys = [v348 allKeys];
        v139 = [allKeys countByEnumeratingWithState:&v394 objects:v419 count:16];
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
                objc_enumerationMutation(allKeys);
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

            v140 = [allKeys countByEnumeratingWithState:&v394 objects:v419 count:16];
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
            v136 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged ADHS keys:%@", v136];
            v150 = MEMORY[0x277D3F178];
            v151 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
            lastPathComponent4 = [v151 lastPathComponent];
            v153 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
            [v150 logMessage:v136 fromFile:lastPathComponent4 fromFunction:v153 fromLineNumber:4298];

            v154 = PLLogCommon();
            if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v412 = v136;
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
            v161 = [propertiesCopy objectForKey:v160];

            if (v161)
            {
              v162 = [&unk_2871490F8 objectForKeyedSubscript:v159];
              v163 = [propertiesCopy objectForKeyedSubscript:v162];
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
            unsignedLongLongValue = [v182 unsignedLongLongValue];
            v184 = [(PLEntry *)v45 objectForKeyedSubscript:@"AutojoinScanDuration"];
            unsignedLongLongValue2 = [v184 unsignedLongLongValue];

            if (unsignedLongLongValue >= unsignedLongLongValue2)
            {
              v289 = *(v51 + 2992);
              v290 = [v362 objectForKeyedSubscript:@"AutojoinScanDuration"];
              unsignedLongLongValue3 = [v290 unsignedLongLongValue];
              v292 = [(PLEntry *)v45 objectForKeyedSubscript:@"AutojoinScanDuration"];
              v293 = [v289 numberWithUnsignedLongLong:{unsignedLongLongValue3 - objc_msgSend(v292, "unsignedLongLongValue")}];
              [v350 setObject:v293 forKeyedSubscript:@"AutojoinScanDuration"];
            }

            else
            {
              [v350 setObject:0 forKeyedSubscript:@"AutojoinScanDuration"];
            }

            v294 = [v362 objectForKeyedSubscript:@"LocationScanDuration"];
            unsignedLongLongValue4 = [v294 unsignedLongLongValue];
            v296 = [(PLEntry *)v45 objectForKeyedSubscript:@"LocationScanDuration"];
            unsignedLongLongValue5 = [v296 unsignedLongLongValue];

            if (unsignedLongLongValue4 >= unsignedLongLongValue5)
            {
              v298 = *(v51 + 2992);
              v299 = [v362 objectForKeyedSubscript:@"LocationScanDuration"];
              unsignedLongLongValue6 = [v299 unsignedLongLongValue];
              v301 = [(PLEntry *)v45 objectForKeyedSubscript:@"LocationScanDuration"];
              v302 = [v298 numberWithUnsignedLongLong:{unsignedLongLongValue6 - objc_msgSend(v301, "unsignedLongLongValue")}];
              [v350 setObject:v302 forKeyedSubscript:@"LocationScanDuration"];
            }

            else
            {
              [v350 setObject:0 forKeyedSubscript:@"LocationScanDuration"];
            }

            v303 = [v362 objectForKeyedSubscript:@"PipelineScanDuration"];
            unsignedLongLongValue7 = [v303 unsignedLongLongValue];
            v305 = [(PLEntry *)v45 objectForKeyedSubscript:@"PipelineScanDuration"];
            unsignedLongLongValue8 = [v305 unsignedLongLongValue];

            if (unsignedLongLongValue7 >= unsignedLongLongValue8)
            {
              v307 = *(v51 + 2992);
              v308 = [v362 objectForKeyedSubscript:@"PipelineScanDuration"];
              unsignedLongLongValue9 = [v308 unsignedLongLongValue];
              v310 = [(PLEntry *)v45 objectForKeyedSubscript:@"PipelineScanDuration"];
              v311 = [v307 numberWithUnsignedLongLong:{unsignedLongLongValue9 - objc_msgSend(v310, "unsignedLongLongValue")}];
              [v350 setObject:v311 forKeyedSubscript:@"PipelineScanDuration"];
            }

            else
            {
              [v350 setObject:0 forKeyedSubscript:@"PipelineScanDuration"];
            }

            v312 = [v362 objectForKeyedSubscript:@"UnknownScanDuration"];
            unsignedLongLongValue10 = [v312 unsignedLongLongValue];
            v314 = [(PLEntry *)v45 objectForKeyedSubscript:@"UnknownScanDuration"];
            unsignedLongLongValue11 = [v314 unsignedLongLongValue];

            if (unsignedLongLongValue10 >= unsignedLongLongValue11)
            {
              v316 = *(v51 + 2992);
              v317 = [v362 objectForKeyedSubscript:@"UnknownScanDuration"];
              unsignedLongLongValue12 = [v317 unsignedLongLongValue];
              v319 = [(PLEntry *)v45 objectForKeyedSubscript:@"UnknownScanDuration"];
              v320 = [v316 numberWithUnsignedLongLong:{unsignedLongLongValue12 - objc_msgSend(v319, "unsignedLongLongValue")}];
              [v350 setObject:v320 forKeyedSubscript:@"UnknownScanDuration"];
            }

            else
            {
              [v350 setObject:0 forKeyedSubscript:@"UnknownScanDuration"];
            }

            v321 = [v362 objectForKeyedSubscript:@"SetupScanDuration"];
            unsignedLongLongValue13 = [v321 unsignedLongLongValue];
            v323 = [(PLEntry *)v45 objectForKeyedSubscript:@"SetupScanDuration"];
            unsignedLongLongValue14 = [v323 unsignedLongLongValue];

            if (unsignedLongLongValue13 < unsignedLongLongValue14)
            {
              [v350 setObject:0 forKeyedSubscript:@"SetupScanDuration"];
              goto LABEL_222;
            }

            v325 = *(v51 + 2992);
            v175 = [v362 objectForKeyedSubscript:@"SetupScanDuration"];
            unsignedLongLongValue15 = [v175 unsignedLongLongValue];
            v327 = [(PLEntry *)v45 objectForKeyedSubscript:@"SetupScanDuration"];
            v328 = [v325 numberWithUnsignedLongLong:{unsignedLongLongValue15 - objc_msgSend(v327, "unsignedLongLongValue")}];
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
        v362 = [MEMORY[0x277CCACA8] stringWithFormat:@"Last logged data: %@ current data:%@", v45, v362];
        v214 = MEMORY[0x277D3F178];
        v215 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
        lastPathComponent5 = [v215 lastPathComponent];
        v217 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
        [v214 logMessage:v362 fromFile:lastPathComponent5 fromFunction:v217 fromLineNumber:4364];

        v218 = PLLogCommon();
        if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v412 = v362;
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
        integerValue5 = [v221 integerValue];
        v223 = [(PLEntry *)v45 objectForKeyedSubscript:@"WifiTimestamp"];
        v224 = [v223 integerValue] + 60000;

        v44 = v355;
        v47 = integerValue5 <= v224;
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
              v232 = [propertiesCopy objectForKeyedSubscript:v231];
              integerValue6 = [v232 integerValue];

              v234 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue6];
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
            v244 = [propertiesCopy objectForKeyedSubscript:v243];
            integerValue7 = [v244 integerValue];

            v246 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue7];
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
          v353 = [MEMORY[0x277CCACA8] stringWithFormat:@" current data:%@ %@", v236, v353];
          v251 = MEMORY[0x277D3F178];
          v252 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent6 = [v252 lastPathComponent];
          v254 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v251 logMessage:v353 fromFile:lastPathComponent6 fromFunction:v254 fromLineNumber:4396];

          v255 = PLLogCommon();
          if (os_log_type_enabled(v255, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v412 = v353;
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
            v264 = [propertiesCopy objectForKeyedSubscript:v263];
            integerValue8 = [v264 integerValue];

            v266 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue8];
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
          v354 = [MEMORY[0x277CCACA8] stringWithFormat:@"ScanForward current data: %@ %@", v256, v354];
          v271 = MEMORY[0x277D3F178];
          v272 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLWifiAgent.m"];
          lastPathComponent7 = [v272 lastPathComponent];
          v274 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent logEventBackwardWifiProperties:withNetworkProperties:shallModelPower:]"];
          [v271 logMessage:v354 fromFile:lastPathComponent7 fromFunction:v274 fromLineNumber:4410];

          v275 = PLLogCommon();
          if (os_log_type_enabled(v275, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v412 = v354;
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
      integerValue9 = [v277 integerValue];

      if (integerValue9 >= 1)
      {
        if (v343 != 1)
        {
          v279 = [v350 objectForKeyedSubscript:@"TimeDuration"];
          v280 = [v279 integerValue] / 1000.0;

          entryDate = [v350 entryDate];
          entryDate2 = [(PLEntry *)v45 entryDate];
          [entryDate timeIntervalSinceDate:entryDate2];
          v284 = v283;

          if (v280 < v284)
          {
            v285 = MEMORY[0x277CBEAA8];
            entryDate3 = [(PLEntry *)v45 entryDate];
            v287 = [v285 dateWithTimeInterval:entryDate3 sinceDate:v280];
            [v350 setEntryDate:v287];
          }
        }

        if (powerCopy)
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
  storage = [(PLOperator *)self storage];
  v6 = [storage lastEntryForKey:v4];

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
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiChipsetQuery]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:4589];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
  selfCopy = self;
  v46 = *MEMORY[0x277D85DE8];
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
      if (wifiManufacturerQuery_defaultOnce != -1)
      {
        dispatch_once(&wifiManufacturerQuery_defaultOnce, block);
      }

      if (wifiManufacturerQuery_classDebugEnabled == 1)
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
      lastPathComponent2 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent wifiManufacturerQuery]"];
      [v27 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:4687];

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
    v32 = selfCopy->_wifiManufacturer;
    selfCopy->_wifiManufacturer = &v24->isa;

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

- (void)modelWiFiPower:(id)power
{
  v485[1] = *MEMORY[0x277D85DE8];
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
LABEL_84:

      goto LABEL_85;
    }

    v6 = 0x277D3F000;
    if (([MEMORY[0x277D3F208] isWiFiClass:1004002] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004003))
    {
      v7 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
      [v10 doubleValue];
      v478 = v11;

      v12 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
      [v12 doubleValue];
      v474 = v13;

      v14 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
      [v14 doubleValue];
      v471 = v15;

      v16 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
      [v16 doubleValue];
      v468 = v17;

      v18 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
      [v18 doubleValue];
      v466 = v19;

      v20 = [powerCopy objectForKeyedSubscript:@"HSICActiveDuration"];
      [v20 doubleValue];
      v463 = v21;

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
      v460 = v45;

      v46 = [PLUtilities powerModelForOperatorName:@"wifi"];
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
          v184 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
          [v184 doubleValue];
          v472 = v185;

          v186 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
          [v186 doubleValue];
          v188 = v187;

          v189 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
          [v189 doubleValue];
          v191 = v190;

          v192 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
          [v192 doubleValue];
          v194 = v193;

          v195 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
          [v195 doubleValue];
          v476 = v196;

          v197 = [powerCopy objectForKeyedSubscript:@"MIMOTXDuration"];
          [v197 doubleValue];
          v199 = v198;

          v200 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
          [v200 doubleValue];
          v202 = v201;

          v203 = [powerCopy objectForKeyedSubscript:@"MIMORXDuration"];
          [v203 doubleValue];
          v205 = v204;

          v206 = [powerCopy objectForKeyedSubscript:@"SISORXDuration"];
          [v206 doubleValue];

          v207 = [powerCopy objectForKeyedSubscript:@"MIMOCSDuration"];
          [v207 doubleValue];
          v209 = v208;

          v210 = [powerCopy objectForKeyedSubscript:@"SISOCSDuration"];
          [v210 doubleValue];

          v211 = [powerCopy objectForKeyedSubscript:@"OCLCSDuration"];
          [v211 doubleValue];
          v452 = v212;

          v467 = 0.0;
          if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
          {
            v213 = [powerCopy objectForKeyedSubscript:@"SCRXDurationSISO"];
            [v213 doubleValue];
            v467 = v214;
          }

          v215 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
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
          wifiChipsetQuery2 = [(PLWifiAgent *)self wifiChipsetQuery];
          v469 = v221;
          v223 = [v221 objectForKeyedSubscript:wifiChipsetQuery2];
          wifiManufacturerQuery2 = [(PLWifiAgent *)self wifiManufacturerQuery];
          v225 = [v223 objectForKeyedSubscript:wifiManufacturerQuery2];

          if (v472 >= 0.0)
          {
            v465 = v225;
            selfCopy = self;
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

            v275 = [powerCopy objectForKeyedSubscript:@"CurrentBandwidth"];
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

            v278 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v278];
            v280 = [v225 objectForKeyedSubscript:v273];
            v281 = [v280 objectForKeyedSubscript:v278];
            v282 = [v281 objectForKeyedSubscript:@"mimo_tx"];
            [v282 doubleValue];
            v446 = v283;

            v284 = [v225 objectForKeyedSubscript:v273];
            v285 = [v284 objectForKeyedSubscript:v278];
            v286 = [v285 objectForKeyedSubscript:@"mimo_rx"];
            [v286 doubleValue];
            v288 = v287;

            v289 = [v225 objectForKeyedSubscript:v273];
            v290 = [v289 objectForKeyedSubscript:v278];
            v291 = [v290 objectForKeyedSubscript:@"mimo_cs"];
            [v291 doubleValue];
            v459 = v292;

            v293 = [v225 objectForKeyedSubscript:v273];
            v294 = [v293 objectForKeyedSubscript:v278];
            v295 = [v294 objectForKeyedSubscript:@"siso_tx"];
            [v295 doubleValue];
            v444 = v296;

            v297 = [v225 objectForKeyedSubscript:v273];
            v298 = [v297 objectForKeyedSubscript:v278];
            v299 = [v298 objectForKeyedSubscript:@"siso_rx"];
            [v299 doubleValue];
            v442 = v300;

            v301 = [v225 objectForKeyedSubscript:v273];
            v302 = [v301 objectForKeyedSubscript:v278];
            v303 = [v302 objectForKeyedSubscript:@"siso_cs"];
            [v303 doubleValue];
            v450 = v304;

            v305 = [v225 objectForKeyedSubscript:v273];
            v306 = [v305 objectForKeyedSubscript:v278];
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
            self = selfCopy;
            if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
            {
              v315 = v314 * v442 + v456 * v288;
              v6 = 0x277D3F000;
              v229 = v469;
            }

            else
            {
              v438 = v288;
              v362 = [powerCopy objectForKeyedSubscript:@"OPSFullDuration"];
              [v362 doubleValue];
              v364 = v363;

              v365 = [powerCopy objectForKeyedSubscript:@"OPSPartialDuration"];
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
              v371 = [v370 objectForKeyedSubscript:v278];
              v372 = [v371 objectForKeyedSubscript:@"ops_full"];
              [v372 doubleValue];
              v434 = v373;

              v374 = [v225 objectForKeyedSubscript:v273];
              v375 = [v374 objectForKeyedSubscript:v278];
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

              self = selfCopy;
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
                lastPathComponent = [v406 lastPathComponent];
                v408 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
                [v405 logMessage:v404 fromFile:lastPathComponent fromFunction:v408 fromLineNumber:4984];

                v409 = PLLogCommon();
                if (os_log_type_enabled(v409, OS_LOG_TYPE_DEBUG))
                {
                  __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
                }

                self = selfCopy;
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
          v139 = [powerCopy objectForKeyedSubscript:@"LocationScanDuration"];
          [v139 doubleValue];
          v141 = v140;

          v142 = [powerCopy objectForKeyedSubscript:@"PipelineScanDuration"];
          [v142 doubleValue];
          v144 = v143;

          entryDate = [PLUtilities powerModelForOperatorName:@"wifi"];
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
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }

              self = selfCopy2;
            }
          }

          if (+[PLUtilities isPerfPowerMetricd])
          {
            entryDate2 = [(PLOperator *)PLWifiAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MetricMonitorInstantKeys"];
            v180 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:entryDate2];
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
            entryDate2 = [powerCopy entryDate];
            [(PLWifiAgent *)self modelWiFiSegmentPower:entryDate2 withDataPower:v168 withIdlePower:v164 withLocationPower:v170 withPipelinePower:v169 withTotalDuration:v160 / 1000.0];
          }

          goto LABEL_84;
        }

        v230 = [powerCopy objectForKeyedSubscript:@"CurrentChannel"];
        [v230 doubleValue];
        v473 = v231;

        v232 = [powerCopy objectForKeyedSubscript:@"PMDuration"];
        [v232 doubleValue];
        v234 = v233;

        v235 = [powerCopy objectForKeyedSubscript:@"MPCDuration"];
        [v235 doubleValue];
        v237 = v236;

        v238 = [powerCopy objectForKeyedSubscript:@"TimeDuration"];
        [v238 doubleValue];
        v240 = v239;

        v241 = [powerCopy objectForKeyedSubscript:@"TXDuration"];
        [v241 doubleValue];
        v477 = v242;

        v243 = [powerCopy objectForKeyedSubscript:@"MIMOTXDuration"];
        [v243 doubleValue];
        v245 = v244;

        v246 = [powerCopy objectForKeyedSubscript:@"RXDuration"];
        [v246 doubleValue];
        v248 = v247;

        v249 = [powerCopy objectForKeyedSubscript:@"MIMORXDuration"];
        [v249 doubleValue];
        v251 = v250;

        v252 = [powerCopy objectForKeyedSubscript:@"SISORXDuration"];
        [v252 doubleValue];

        v253 = [powerCopy objectForKeyedSubscript:@"MIMOCSDuration"];
        [v253 doubleValue];
        v255 = v254;

        v256 = [powerCopy objectForKeyedSubscript:@"SISOCSDuration"];
        [v256 doubleValue];

        v257 = [powerCopy objectForKeyedSubscript:@"OCLCSDuration"];
        [v257 doubleValue];
        v455 = v258;

        v470 = 0.0;
        if (([MEMORY[0x277D3F208] isUsingAnOlderWifiChip] & 1) == 0)
        {
          v259 = [powerCopy objectForKeyedSubscript:@"SCRXDurationSISO"];
          [v259 doubleValue];
          v470 = v260;
        }

        v261 = [powerCopy objectForKeyedSubscript:@"FRTSDuration"];
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
        wifiChipsetQuery3 = [(PLWifiAgent *)self wifiChipsetQuery];
        v268 = [v46 objectForKeyedSubscript:wifiChipsetQuery3];
        v269 = [v268 objectForKeyedSubscript:@"usi"];

        if (v473 >= 0.0)
        {
          v451 = v46;
          selfCopy3 = self;
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

          v318 = [powerCopy objectForKeyedSubscript:@"CurrentBandwidth"];
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

          v323 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v323];
          [v269 objectForKeyedSubscript:v316];
          v326 = v325 = v269;
          v327 = [v326 objectForKeyedSubscript:v323];
          v328 = [v327 objectForKeyedSubscript:@"mimo_tx"];
          [v328 doubleValue];
          v447 = v329;

          v330 = [v325 objectForKeyedSubscript:v316];
          v331 = [v330 objectForKeyedSubscript:v323];
          v332 = [v331 objectForKeyedSubscript:@"mimo_rx"];
          [v332 doubleValue];
          v334 = v333;

          v335 = [v325 objectForKeyedSubscript:v316];
          v336 = [v335 objectForKeyedSubscript:v323];
          v337 = [v336 objectForKeyedSubscript:@"mimo_cs"];
          [v337 doubleValue];
          v462 = v338;

          v339 = [v325 objectForKeyedSubscript:v316];
          v340 = [v339 objectForKeyedSubscript:v323];
          v341 = [v340 objectForKeyedSubscript:@"siso_tx"];
          [v341 doubleValue];
          v445 = v342;

          v343 = [v325 objectForKeyedSubscript:v316];
          v344 = [v343 objectForKeyedSubscript:v323];
          v345 = [v344 objectForKeyedSubscript:@"siso_rx"];
          [v345 doubleValue];
          v443 = v346;

          v347 = [v325 objectForKeyedSubscript:v316];
          v348 = [v347 objectForKeyedSubscript:v323];
          v349 = [v348 objectForKeyedSubscript:@"siso_cs"];
          [v349 doubleValue];
          v453 = v350;

          v351 = [v325 objectForKeyedSubscript:v316];
          v352 = [v351 objectForKeyedSubscript:v323];
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
          self = selfCopy3;
          if (([MEMORY[0x277D3F208] isWiFiClass:1004005] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWiFiClass:", 1004007))
          {
            v361 = v360 * v443 + v458 * v334;
            v6 = 0x277D3F000;
          }

          else
          {
            v439 = v334;
            v380 = [powerCopy objectForKeyedSubscript:@"OPSFullDuration"];
            [v380 doubleValue];
            v382 = v381;

            v383 = [powerCopy objectForKeyedSubscript:@"OPSPartialDuration"];
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
            v389 = [v388 objectForKeyedSubscript:v323];
            v390 = [v389 objectForKeyedSubscript:@"ops_full"];
            [v390 doubleValue];
            v435 = v391;

            v392 = [v325 objectForKeyedSubscript:v316];
            v393 = [v392 objectForKeyedSubscript:v323];
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

            self = selfCopy3;
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
              lastPathComponent3 = [v424 lastPathComponent];
              v426 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLWifiAgent modelWiFiPower:]"];
              [v423 logMessage:v422 fromFile:lastPathComponent3 fromFunction:v426 fromLineNumber:5175];

              v427 = PLLogCommon();
              if (os_log_type_enabled(v427, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }

              self = selfCopy3;
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

      v46 = [PLUtilities powerModelForOperatorName:@"wifi"];
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

      v475 = v105;
      v479 = v90;
      selfCopy4 = self;
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

      self = selfCopy4;
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
@interface PLLocationAgent
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionClientStatus;
+ (id)entryEventForwardDefinitionGPSSubscription;
+ (id)entryEventForwardDefinitionGnssSession;
+ (id)entryEventForwardDefinitionLogLevel;
+ (id)entryEventForwardDefinitionOdometry;
+ (id)entryEventForwardDefinitionStatusBar;
+ (id)entryEventForwardDefinitionSuppressionManagerClient;
+ (id)entryEventForwardDefinitionTechStatus;
+ (id)entryEventForwardDefinitionViewObstructed;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionMapsBusyness;
+ (id)entryEventIntervalDefinitionPDR;
+ (id)entryEventIntervalDefinitionSeparationAlert;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneDefinitionClientStatusDebug;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionClientStatus;
+ (id)entryEventPointDefinitionMiLo;
+ (id)entryEventPointDefinitionMotionPacket;
+ (id)entryEventPointDefinitionWifiLocationScanRequesters;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)shouldRateLimitTechStatus;
- (PLLocationAgent)init;
- (id)getOpenEntryForClientSettings:(id)a3 withTimeStarted:(id)a4 withClient:(id)a5 withType:(id)a6 withEntryKey:(id)a7;
- (id)humanReadableNameForTechnology:(id)a3;
- (id)lastEntryWithClient:(id)a3 withType:(id)a4 withBundleID:(id)a5 withEntryKey:(id)a6;
- (unint64_t)convertCheckInEvent:(id)a3;
- (unint64_t)convertClientEvent:(id)a3;
- (unint64_t)convertOdometryEvent:(id)a3;
- (unint64_t)convertViewObstructedEvent:(id)a3;
- (void)closeOpenEntryForClient:(id)a3 withOpenEntry:(id)a4 withTimeStopped:(id)a5;
- (void)initOperatorDependancies;
- (void)logEventForwardCheckInSession:(id)a3;
- (void)logEventForwardClientStatuswithPayload:(id)a3;
- (void)logEventForwardGnssSession:(id)a3;
- (void)logEventForwardOdometry:(id)a3;
- (void)logEventForwardSuppressionManagerClient:(id)a3;
- (void)logEventForwardTechStatus;
- (void)logEventForwardTechStatus_withLimiter;
- (void)logEventForwardViewObstructed:(id)a3;
- (void)logEventFowardGPSSubscription:(id)a3;
- (void)logEventIntervalMapsBusynessState:(id)a3;
- (void)logEventIntervalPDR:(id)a3;
- (void)logEventIntervalSeparationAlert:(id)a3;
- (void)logEventNoneClientStatus;
- (void)logEventNoneClientStatusDebugWithClients:(id)a3;
- (void)logEventPointClientStatus;
- (void)logEventPointGeofenceTrigger:(id)a3;
- (void)logEventPointMiLoScans:(id)a3;
- (void)logEventPointMotionPacket:(id)a3;
- (void)logEventPointWifiLocationScanRequesters:(id)a3;
- (void)logPredictedContextInferenceEvent:(id)a3;
- (void)logPredictedContextTrainingEvent:(id)a3;
- (void)modelGpsSegmentPower:(id)a3 withGpsPower:(double)a4 withTotalDuration:(double)a5;
- (void)processesOfInterest:(id)a3;
- (void)resyncActiveClients;
- (void)updateClientsLocationInfo:(id)a3;
- (void)updateGnssPowerMetric:(id)a3;
- (void)updateLocalCacheWithClient:(id)a3 withType:(id)a4 withBundleID:(id)a5 withEntry:(id)a6;
- (void)updateLocationDistributionEvents;
- (void)updateLocationQualificationEvents;
- (void)writeModeledPower;
@end

@implementation PLLocationAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLLocationAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"ClientStatus";
  v3 = [a1 entryEventPointDefinitionClientStatus];
  v12[0] = v3;
  v11[1] = @"GeoFenceHandoff";
  v4 = [a1 entryEventPointDefinitionGeoFenceHandoff];
  v12[1] = v4;
  v11[2] = @"WifiLocationScanRequesters";
  v5 = [a1 entryEventPointDefinitionWifiLocationScanRequesters];
  v12[2] = v5;
  v11[3] = @"MiLoScanEvent";
  v6 = [a1 entryEventPointDefinitionMiLo];
  v12[3] = v6;
  v11[4] = @"MotionPacket";
  v7 = [a1 entryEventPointDefinitionMotionPacket];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventPointDefinitionClientStatus
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F498];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_28714B3E8;
  v28[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4A0];
  v27[2] = *MEMORY[0x277D3F558];
  v27[3] = v3;
  v28[2] = MEMORY[0x277CBEC38];
  v28[3] = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"timestampEnd";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_DateFormat];
  v26[0] = v22;
  v25[1] = @"Type";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_StringFormat];
  v26[1] = v20;
  v25[2] = @"Client";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_StringFormat_withBundleID];
  v26[2] = v18;
  v25[3] = @"BundleId";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat_withBundleID];
  v26[3] = v16;
  v25[4] = @"Executable";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withProcessName];
  v26[4] = v5;
  v25[5] = @"Authorized";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v26[5] = v7;
  v25[6] = @"LocationDesiredAccuracy";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_RealFormat];
  v26[6] = v9;
  v25[7] = @"LocationDistanceFilter";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_RealFormat];
  v26[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];
  v30[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventPointDefinitionWifiLocationScanRequesters
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B3F8;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"scanRequester";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v12[1] = @"numRequests";
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

+ (id)entryEventPointDefinitionMiLo
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v21 = *MEMORY[0x277D3F568];
  v22 = &unk_28714B408;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"BTScanDuration";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_RealFormat];
  v20[0] = v16;
  v19[1] = @"BleActiveScanRate";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v20[1] = v14;
  v19[2] = @"NumLocalizations";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v20[2] = v3;
  v19[3] = @"NumRecordings";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[3] = v5;
  v19[4] = @"TriggerType";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v20[4] = v7;
  v19[5] = @"WiFiScanDuration";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_RealFormat];
  v20[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionMotionPacket
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_28714B3F8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"action";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v14[0] = v4;
  v13[1] = @"nonWaking";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v14[1] = v6;
  v13[2] = @"type";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventForwardDefinitions
{
  v18[9] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v17[0] = @"TechStatus";
    v3 = [a1 entryEventForwardDefinitionTechStatus];
    v18[0] = v3;
    v17[1] = @"ClientStatus";
    v4 = [a1 entryEventForwardDefinitionClientStatus];
    v18[1] = v4;
    v17[2] = @"LogLevel";
    v5 = [a1 entryEventForwardDefinitionLogLevel];
    v18[2] = v5;
    v17[3] = @"StatusBar";
    v6 = [a1 entryEventForwardDefinitionStatusBar];
    v18[3] = v6;
    v17[4] = @"GnssSession";
    v7 = [a1 entryEventForwardDefinitionGnssSession];
    v18[4] = v7;
    v17[5] = @"GPSActivation";
    v8 = [a1 entryEventForwardDefinitionGPSSubscription];
    v18[5] = v8;
    v17[6] = @"Odometry";
    v9 = [a1 entryEventForwardDefinitionOdometry];
    v18[6] = v9;
    v17[7] = @"ViewObstructed";
    v10 = [a1 entryEventForwardDefinitionViewObstructed];
    v18[7] = v10;
    v17[8] = @"SuppressionManagerClient";
    v11 = [a1 entryEventForwardDefinitionSuppressionManagerClient];
    v18[8] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:9];
  }

  else
  {
    v3 = [a1 entryEventForwardDefinitionTechStatus];
    v16[0] = v3;
    v15[1] = @"ClientStatus";
    v4 = [a1 entryEventForwardDefinitionClientStatus];
    v16[1] = v4;
    v15[2] = @"StatusBar";
    v5 = [a1 entryEventForwardDefinitionStatusBar];
    v16[2] = v5;
    v15[3] = @"GnssSession";
    v6 = [a1 entryEventForwardDefinitionGnssSession];
    v16[3] = v6;
    v15[4] = @"GPSActivation";
    v7 = [a1 entryEventForwardDefinitionGPSSubscription];
    v16[4] = v7;
    v15[5] = @"Odometry";
    v8 = [a1 entryEventForwardDefinitionOdometry];
    v16[5] = v8;
    v15[6] = @"ViewObstructed";
    v9 = [a1 entryEventForwardDefinitionViewObstructed];
    v16[6] = v9;
    v15[7] = @"SuppressionManagerClient";
    v10 = [a1 entryEventForwardDefinitionSuppressionManagerClient];
    v16[7] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionTechStatus
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v33[0] = &unk_28714B408;
  v33[1] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v35[0] = v29;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"gps";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_BoolFormat];
  v31[0] = v27;
  v30[1] = @"nmea";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_BoolFormat];
  v31[1] = v25;
  v30[2] = @"accessory";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_BoolFormat];
  v31[2] = v23;
  v30[3] = @"wifi";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_BoolFormat];
  v31[3] = v21;
  v30[4] = @"skyhook";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_BoolFormat];
  v31[4] = v19;
  v30[5] = @"cell";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_BoolFormat];
  v31[5] = v17;
  v30[6] = @"lac";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_BoolFormat];
  v31[6] = v15;
  v30[7] = @"mcc";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v31[7] = v4;
  v30[8] = @"gps_coarse";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v31[8] = v6;
  v30[9] = @"pipeline";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_BoolFormat];
  v31[9] = v8;
  v30[10] = @"wifi2";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_BoolFormat];
  v31[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
  v35[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionClientStatus
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F498];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_28714B418;
  v29[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F590];
  v28[2] = *MEMORY[0x277D3F558];
  v28[3] = v3;
  v29[2] = MEMORY[0x277CBEC38];
  v29[3] = &unk_287145CB8;
  v4 = *MEMORY[0x277D3F4A0];
  v28[4] = *MEMORY[0x277D3F588];
  v28[5] = v4;
  v29[4] = &unk_28714B428;
  v29[5] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"timestampEnd";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_DateFormat];
  v27[0] = v23;
  v26[1] = @"Type";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v27[1] = v21;
  v26[2] = @"Client";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat_withBundleID];
  v27[2] = v19;
  v26[3] = @"BundleId";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat_withBundleID];
  v27[3] = v17;
  v26[4] = @"Executable";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withProcessName];
  v27[4] = v6;
  v26[5] = @"LocationDesiredAccuracy";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v27[5] = v8;
  v26[6] = @"LocationDistanceFilter";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v27[6] = v10;
  v26[7] = @"InUseLevel";
  v11 = [MEMORY[0x277D3F198] sharedInstance];
  v12 = [v11 commonTypeDict_IntegerFormat];
  v27[7] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:8];
  v31[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventForwardDefinitionLogLevel
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B3F8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Level";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"RotationEnabled";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionStatusBar
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B3F8;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Status";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"BundleID";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat_withBundleID];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionGnssSession
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B3E8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"eventType";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"eventStatus";
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

+ (id)entryEventForwardDefinitionGPSSubscription
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B3F8;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"ServiceName";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v12[1] = @"Register";
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

+ (id)entryEventForwardDefinitionOdometry
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_28714B3F8;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"odometryEvent";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v15[0] = v5;
  v14[1] = @"updateInterval";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_RealFormat];
  v15[1] = v7;
  v14[2] = @"identifier";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionSuppressionManagerClient
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_28714B3F8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"clientEvent";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v14[0] = v4;
  v13[1] = @"clientType";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v14[1] = v6;
  v13[2] = @"clientNumbers";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventForwardDefinitionViewObstructed
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_28714B3F8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"VOEvent";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventBackwardDefinitions
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isGPSClass:1008002] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008003) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008005) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008004) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008006))
  {
    v25 = @"GPSPower";
    v23[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v21[0] = *MEMORY[0x277D3F568];
    v21[1] = v2;
    v22[0] = &unk_28714B3E8;
    v22[1] = @"log";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v24[0] = v18;
    v23[1] = *MEMORY[0x277D3F540];
    v19[0] = @"startTime";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v20[0] = v16;
    v19[1] = @"measuredInterval";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v15 commonTypeDict_IntegerFormat];
    v20[1] = v3;
    v19[2] = @"activeInterval";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v20[2] = v5;
    v19[3] = @"averagePower";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v20[3] = v7;
    v19[4] = @"activeL5IntervalSec";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v20[4] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v24[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v26[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"MapsBusyness";
  v3 = [a1 entryEventIntervalDefinitionMapsBusyness];
  v10[0] = v3;
  v9[1] = @"SeparationAlert";
  v4 = [a1 entryEventIntervalDefinitionSeparationAlert];
  v10[1] = v4;
  v9[2] = @"PDR";
  v5 = [a1 entryEventIntervalDefinitionPDR];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventIntervalDefinitionMapsBusyness
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v27 = *MEMORY[0x277D3F568];
  v28 = &unk_28714B3E8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"timestampEnd";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_DateFormat];
  v26[0] = v22;
  v25[1] = @"Launched";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v26[1] = v20;
  v25[2] = @"HarvestedRealTimeOnPower";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v26[2] = v18;
  v25[3] = @"HarvestedRealTimeOnBattery";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v26[3] = v16;
  v25[4] = @"HarvestedDifferential";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v26[4] = v14;
  v25[5] = @"RateLimit";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v26[5] = v3;
  v25[6] = @"LocationNotUsable";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v26[6] = v5;
  v25[7] = @"LocationNoAuth";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v26[7] = v7;
  v25[8] = @"LocationUnavailable";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v26[8] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
  v30[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventIntervalDefinitionSeparationAlert
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v27 = *MEMORY[0x277D3F568];
  v28 = &unk_28714B3F8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"timestampEnd";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_DateFormat];
  v26[0] = v22;
  v25[1] = @"DurationOfVisits";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_RealFormat];
  v26[1] = v20;
  v25[2] = @"NumberOfVisits";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v26[2] = v18;
  v25[3] = @"TotalGeoFence";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v26[3] = v16;
  v25[4] = @"GPSAttribution";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v26[4] = v14;
  v25[5] = @"BTScanCount";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v26[5] = v3;
  v25[6] = @"WifiScanCount";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v26[6] = v5;
  v25[7] = @"Notifications";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v26[7] = v7;
  v25[8] = @"DevicesMonitored";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v26[8] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
  v30[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventIntervalDefinitionPDR
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_28714B3F8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"sessionEndTime";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_RealFormat];
  v16[0] = v3;
  v15[1] = @"numFences";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"identifier";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v16[2] = v7;
  v15[3] = @"sessionStartTime";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_RealFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventNoneDefinitions
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([a1 isDebugEnabled])
  {
    v7 = @"ClientStatusDebug";
    v3 = [a1 entryEventNoneDefinitionClientStatusDebug];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventNoneDefinitionClientStatusDebug
{
  v49[2] = *MEMORY[0x277D85DE8];
  v48[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v46[0] = *MEMORY[0x277D3F568];
  v46[1] = v2;
  v47[0] = &unk_28714B3F8;
  v47[1] = MEMORY[0x277CBEC38];
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v49[0] = v43;
  v48[1] = *MEMORY[0x277D3F540];
  v44[0] = @"Client";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_StringFormat];
  v45[0] = v41;
  v44[1] = @"BundleId";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_StringFormat_withBundleID];
  v45[1] = v39;
  v44[2] = @"Executable";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_StringFormat];
  v45[2] = v37;
  v44[3] = @"Authorized";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_BoolFormat];
  v45[3] = v35;
  v44[4] = @"LocationDesiredAccuracy";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_RealFormat];
  v45[4] = v33;
  v44[5] = @"LocationDistanceFilter";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_RealFormat];
  v45[5] = v31;
  v44[6] = @"LocationTimeStarted";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[6] = v29;
  v44[7] = @"LocationTimeStopped";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[7] = v27;
  v44[8] = @"FenceTimeStarted";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[8] = v25;
  v44[9] = @"FenceTimeStopped";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[9] = v23;
  v44[10] = @"SignificantTimeStarted";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[10] = v21;
  v44[11] = @"SignificantTimeStopped";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[11] = v19;
  v44[12] = @"BeaconRegionTimeStarted";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[12] = v17;
  v44[13] = @"BeaconRegionTimeStopped";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[13] = v15;
  v44[14] = @"RangeTimeStarted";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[14] = v4;
  v44[15] = @"RangeTimeStopped";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[15] = v6;
  v44[16] = @"VisitTimeStarted";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[16] = v8;
  v44[17] = @"VisitTimeStopped";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[17] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:18];
  v49[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLLocationAgent)init
{
  v44 = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = PLLocationAgent;
  v2 = [(PLAgent *)&v41 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    clientStatusTypeStrings = v2->_clientStatusTypeStrings;
    v2->_clientStatusTypeStrings = v3;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = [&unk_28714CA10 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v29)
    {
      v28 = *v38;
      do
      {
        v5 = 0;
        do
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(&unk_28714CA10);
          }

          v30 = v5;
          v6 = *(*(&v37 + 1) + 8 * v5);
          v7 = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)v2->_clientStatusTypeStrings setObject:v7 forKeyedSubscript:v6];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v8 = [&unk_28714CA28 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v34;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v34 != v10)
                {
                  objc_enumerationMutation(&unk_28714CA28);
                }

                v12 = *(*(&v33 + 1) + 8 * i);
                v13 = [v6 stringByAppendingString:v12];
                v14 = [(NSMutableDictionary *)v2->_clientStatusTypeStrings objectForKeyedSubscript:v6];
                [v14 setObject:v13 forKeyedSubscript:v12];
              }

              v9 = [&unk_28714CA28 countByEnumeratingWithState:&v33 objects:v42 count:16];
            }

            while (v9);
          }

          v5 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [&unk_28714CA10 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v29);
    }

    v15 = [MEMORY[0x277CBEB38] dictionary];
    localCache = v2->_localCache;
    v2->_localCache = v15;

    techStatusLimiterIsActive = v2->_techStatusLimiterIsActive;
    v2->_techStatusLimiterIsActive = MEMORY[0x277CBEC28];

    v18 = objc_alloc(MEMORY[0x277D3F160]);
    v19 = *MEMORY[0x277CBFB88];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __23__PLLocationAgent_init__block_invoke;
    v31[3] = &unk_279A5BE78;
    v20 = v2;
    v32 = v20;
    v21 = [v18 initWithOperator:v20 forNotification:v19 requireState:0 withBlock:v31];
    techStatusChangedNotification = v20->_techStatusChangedNotification;
    v20->_techStatusChangedNotification = v21;

    v23 = objc_opt_new();
    processes = v20->_processes;
    v20->_processes = v23;

    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 addObserver:v20 selector:sel_processesOfInterest_ name:@"PLLocationAgent.addProcessesOfInterest" object:0];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __23__PLLocationAgent_init__block_invoke(uint64_t a1)
{
  v2 = PLLogLocation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __23__PLLocationAgent_init__block_invoke_cold_1();
  }

  return [*(a1 + 32) logEventForwardTechStatus_withLimiter];
}

- (void)processesOfInterest:(id)a3
{
  v4 = [a3 userInfo];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 objectForKeyedSubscript:@"entry"];
    if (v5)
    {
      v6 = [(PLLocationAgent *)self processes];
      v7 = [v8 objectForKeyedSubscript:@"entry"];
      [v6 unionSet:v7];
    }

    v4 = v8;
  }
}

- (void)initOperatorDependancies
{
  bundleIDToWeightUsingGPSCache = self->_bundleIDToWeightUsingGPSCache;
  self->_bundleIDToWeightUsingGPSCache = 0;

  bundleIDToWeightUsingWiFiCache = self->_bundleIDToWeightUsingWiFiCache;
  self->_bundleIDToWeightUsingWiFiCache = 0;

  bundleIDToWeightUsingLocationCache = self->_bundleIDToWeightUsingLocationCache;
  self->_bundleIDToWeightUsingLocationCache = 0;

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  activeClients = self->_activeClients;
  self->_activeClients = v6;

  v8 = [MEMORY[0x277CBEB58] set];
  activeBackgroundLocationClients = self->_activeBackgroundLocationClients;
  self->_activeBackgroundLocationClients = v8;

  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    if ([MEMORY[0x277D3F208] internalBuild])
    {
      v10 = objc_alloc(MEMORY[0x277D3F270]);
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke;
      v91[3] = &unk_279A5BCB8;
      v91[4] = self;
      v11 = [v10 initWithOperator:self withRegistration:&unk_287148568 withBlock:v91];
      logLevelNotification = self->_logLevelNotification;
      self->_logLevelNotification = v11;
    }

    [(PLLocationAgent *)self logEventForwardClientStatuswithPayload:0];
    v13 = objc_alloc(MEMORY[0x277D3F270]);
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_398;
    v90[3] = &unk_279A5BCB8;
    v90[4] = self;
    v14 = [v13 initWithOperator:self withRegistration:&unk_287148590 withBlock:v90];
    statusBarNotification = self->_statusBarNotification;
    self->_statusBarNotification = v14;

    v16 = objc_alloc(MEMORY[0x277D3F270]);
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_409;
    v89[3] = &unk_279A5BCB8;
    v89[4] = self;
    v17 = [v16 initWithOperator:self withRegistration:&unk_2871485B8 withBlock:v89];
    clientStatusNotification = self->_clientStatusNotification;
    self->_clientStatusNotification = v17;

    v19 = objc_alloc(MEMORY[0x277D3F270]);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_414;
    v88[3] = &unk_279A5BCB8;
    v88[4] = self;
    v20 = [v19 initWithOperator:self withRegistration:&unk_2871485E0 withBlock:v88];
    separationAlertListener = self->_separationAlertListener;
    self->_separationAlertListener = v20;

    v22 = objc_alloc(MEMORY[0x277D3F270]);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_424;
    v87[3] = &unk_279A5BCB8;
    v87[4] = self;
    v23 = [v22 initWithOperator:self withRegistration:&unk_287148608 withBlock:v87];
    mapsBusynessStateListener = self->_mapsBusynessStateListener;
    self->_mapsBusynessStateListener = v23;

    if (([MEMORY[0x277D3F208] isGPSClass:1008002] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008003) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008005) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008004) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008006))
    {
      v25 = objc_alloc(MEMORY[0x277D3F270]);
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_432;
      v86[3] = &unk_279A5BCB8;
      v86[4] = self;
      v26 = [v25 initWithOperator:self withRegistration:&unk_287148630 withBlock:v86];
      locationGPSListener = self->_locationGPSListener;
      self->_locationGPSListener = v26;

      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_434;
      v85[3] = &unk_279A5BE78;
      v85[4] = self;
      v28 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v85];
      sbcLevelChanged = self->_sbcLevelChanged;
      self->_sbcLevelChanged = v28;

      v30 = objc_alloc(MEMORY[0x277D3F1F0]);
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_440;
      v84[3] = &unk_279A5BE78;
      v84[4] = self;
      v31 = [v30 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v84];
      thermalMonitorListener = self->_thermalMonitorListener;
      self->_thermalMonitorListener = v31;
    }

    v33 = objc_alloc(MEMORY[0x277D3F270]);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_445;
    v83[3] = &unk_279A5BCB8;
    v83[4] = self;
    v34 = [v33 initWithOperator:self withRegistration:&unk_287148658 withBlock:v83];
    wifiLocationScanRequestersListener = self->_wifiLocationScanRequestersListener;
    self->_wifiLocationScanRequestersListener = v34;

    v36 = objc_alloc(MEMORY[0x277D3F270]);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_453;
    v82[3] = &unk_279A5BCB8;
    v82[4] = self;
    v37 = [v36 initWithOperator:self withRegistration:&unk_287148680 withBlock:v82];
    odometryListener = self->_odometryListener;
    self->_odometryListener = v37;

    v39 = objc_alloc(MEMORY[0x277D3F270]);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_461;
    v81[3] = &unk_279A5BCB8;
    v81[4] = self;
    v40 = [v39 initWithOperator:self withRegistration:&unk_2871486A8 withBlock:v81];
    pdrListener = self->_pdrListener;
    self->_pdrListener = v40;

    v42 = objc_alloc(MEMORY[0x277D3F270]);
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_471;
    v80[3] = &unk_279A5BCB8;
    v80[4] = self;
    v43 = [v42 initWithOperator:self withRegistration:&unk_2871486D0 withBlock:v80];
    [(PLLocationAgent *)self setCheckInSessionXPCListener:v43];

    v44 = objc_alloc(MEMORY[0x277D3F270]);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_476;
    v79[3] = &unk_279A5BCB8;
    v79[4] = self;
    v45 = [v44 initWithOperator:self withRegistration:&unk_2871486F8 withBlock:v79];
    miLoScansListener = self->_miLoScansListener;
    self->_miLoScansListener = v45;

    v47 = objc_alloc(MEMORY[0x277D3F270]);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_484;
    v78[3] = &unk_279A5BCB8;
    v78[4] = self;
    v48 = [v47 initWithOperator:self withRegistration:&unk_287148720 withBlock:v78];
    gpsSubscriptionListener = self->_gpsSubscriptionListener;
    self->_gpsSubscriptionListener = v48;

    v50 = objc_alloc(MEMORY[0x277D3F270]);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_489;
    v77[3] = &unk_279A5BCB8;
    v77[4] = self;
    v51 = [v50 initWithOperator:self withRegistration:&unk_287148748 withBlock:v77];
    gnssSessionListener = self->_gnssSessionListener;
    self->_gnssSessionListener = v51;

    v53 = objc_alloc(MEMORY[0x277D3F270]);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_494;
    v76[3] = &unk_279A5BCB8;
    v76[4] = self;
    v54 = [v53 initWithOperator:self withRegistration:&unk_287148770 withBlock:v76];
    motionPacketListener = self->_motionPacketListener;
    self->_motionPacketListener = v54;

    v56 = objc_alloc(MEMORY[0x277D3F270]);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_502;
    v75[3] = &unk_279A5BCB8;
    v75[4] = self;
    v57 = [v56 initWithOperator:self withRegistration:&unk_287148798 withBlock:v75];
    viewObstructedListener = self->_viewObstructedListener;
    self->_viewObstructedListener = v57;

    v59 = objc_alloc(MEMORY[0x277D3F270]);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_510;
    v74[3] = &unk_279A5BCB8;
    v74[4] = self;
    v60 = [v59 initWithOperator:self withRegistration:&unk_2871487C0 withBlock:v74];
    suppressionManagerClientListener = self->_suppressionManagerClientListener;
    self->_suppressionManagerClientListener = v60;

    v62 = objc_alloc(MEMORY[0x277D3F270]);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_518;
    v73[3] = &unk_279A5BCB8;
    v73[4] = self;
    v63 = [v62 initWithOperator:self withRegistration:&unk_2871487E8 withBlock:v73];
    predictedContextInferenceListener = self->_predictedContextInferenceListener;
    self->_predictedContextInferenceListener = v63;

    v65 = objc_alloc(MEMORY[0x277D3F270]);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_526;
    v72[3] = &unk_279A5BCB8;
    v72[4] = self;
    v66 = [v65 initWithOperator:self withRegistration:&unk_287148810 withBlock:v72];
    predictedContextTrainingMetrics = self->_predictedContextTrainingMetrics;
    self->_predictedContextTrainingMetrics = v66;

    v68 = objc_alloc(MEMORY[0x277D3F270]);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_534;
    v71[3] = &unk_279A5BCB8;
    v71[4] = self;
    v69 = [v68 initWithOperator:self withRegistration:&unk_287148838 withBlock:v71];
    geoFenceTriggerListener = self->_geoFenceTriggerListener;
    self->_geoFenceTriggerListener = v69;
  }
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  v8 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LogLevel"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [*(a1 + 32) logEntry:v9];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_398_cold_1();
  }

  v8 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"StatusBar"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [v6 objectForKeyedSubscript:@"Status"];
  [v9 setObject:v10 forKeyedSubscript:@"Status"];

  v11 = [v6 objectForKeyedSubscript:@"Pid"];
  v12 = +[PLUtilities bundleIDFromPid:](PLUtilities, "bundleIDFromPid:", [v11 intValue]);
  [v9 setObject:v12 forKeyedSubscript:@"BundleID"];

  [*(a1 + 32) logEntry:v9];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_409(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_409_cold_1();
  }

  [*(a1 + 32) logEventForwardClientStatuswithPayload:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_414_cold_1();
  }

  [*(a1 + 32) logEventIntervalSeparationAlert:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_424_cold_1();
  }

  [*(a1 + 32) logEventIntervalMapsBusynessState:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_432(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_432_cold_1();
  }

  [*(a1 + 32) updateGnssPowerMetric:v6];
}

uint64_t __43__PLLocationAgent_initOperatorDependancies__block_invoke_434(uint64_t a1)
{
  if (notify_post("com.apple.powerlog.gpslogtrigger"))
  {
    v2 = PLLogLocation();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __43__PLLocationAgent_initOperatorDependancies__block_invoke_434_cold_1();
    }
  }

  return [*(a1 + 32) writeModeledPower];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_440(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogLocation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_440_cold_1();
  }

  if (notify_post("com.apple.powerlog.gpslogtrigger"))
  {
    v5 = PLLogLocation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __43__PLLocationAgent_initOperatorDependancies__block_invoke_434_cold_1();
    }
  }

  [*(a1 + 32) writeModeledPower];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_445(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_445_cold_1();
  }

  [*(a1 + 32) logEventPointWifiLocationScanRequesters:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_453(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_453_cold_1();
  }

  [*(a1 + 32) logEventForwardOdometry:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_461(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_461_cold_1();
  }

  [*(a1 + 32) logEventIntervalPDR:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_471(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_471_cold_1();
  }

  [*(a1 + 32) logEventForwardCheckInSession:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_476(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_476_cold_1();
  }

  [*(a1 + 32) logEventPointMiLoScans:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_484_cold_1();
  }

  [*(a1 + 32) logEventFowardGPSSubscription:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_489(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_489_cold_1();
  }

  [*(a1 + 32) logEventForwardGnssSession:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_494_cold_1();
  }

  [*(a1 + 32) logEventPointMotionPacket:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_502(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_502_cold_1();
  }

  [*(a1 + 32) logEventForwardViewObstructed:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_510_cold_1();
  }

  [*(a1 + 32) logEventForwardSuppressionManagerClient:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_518_cold_1();
  }

  [*(a1 + 32) logPredictedContextInferenceEvent:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_526(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_526_cold_1();
  }

  [*(a1 + 32) logPredictedContextTrainingEvent:v6];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__PLLocationAgent_initOperatorDependancies__block_invoke_534_cold_1();
  }

  [*(a1 + 32) logEventPointGeofenceTrigger:v6];
}

- (id)humanReadableNameForTechnology:(id)a3
{
  v3 = [a3 intValue] - 1;
  if (v3 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_279A5D210[v3];
  }
}

- (void)logEventPointClientStatus
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__PLLocationAgent_logEventPointClientStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __44__PLLocationAgent_logEventPointClientStatus__block_invoke_cold_1();
  }

  v8 = [*(a1 + 32) processes];
  if (([v8 containsObject:v5] & 1) != 0 || !+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd"))
  {
  }

  else
  {
    v9 = +[PLUtilities isPerfPowerMetricd];

    if (v9)
    {
      goto LABEL_20;
    }
  }

  v27 = v5;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [*(a1 + 32) clientStatusTypeStrings];
  v10 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v10)
  {
    v12 = v10;
    v29 = *v31;
    *&v11 = 138412802;
    v26 = v11;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v15 = [*(a1 + 32) clientStatusTypeStrings];
        v16 = [v15 objectForKeyedSubscript:v14];
        v17 = [v16 objectForKeyedSubscript:@"TimeStarted"];
        v18 = [v6 objectForKeyedSubscript:v17];

        v19 = [*(a1 + 32) clientStatusTypeStrings];
        v20 = [v19 objectForKeyedSubscript:v14];
        v21 = [v20 objectForKeyedSubscript:@"TimeStopped"];
        v22 = [v6 objectForKeyedSubscript:v21];

        if (v18 | v22)
        {
          v23 = PLLogLocation();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = v26;
            v35 = v14;
            v36 = 2112;
            v37 = v18;
            v38 = 2112;
            v39 = v22;
            _os_log_debug_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEBUG, "type=%@, timeStarted=%@, timeStopped=%@", buf, 0x20u);
          }

          v24 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withRawData:v6];
          [v24 setObject:v27 forKeyedSubscript:@"Client"];
          [v24 setObject:v14 forKeyedSubscript:@"Type"];
          [*(a1 + 48) addObject:v24];
        }

        ++v13;
      }

      while (v12 != v13);
      v12 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v12);
  }

  v5 = v27;
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointGeofenceTrigger:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"timestampValue"];

  if (v5)
  {
    v6 = MEMORY[0x277CBEAA8];
    v7 = [v4 objectForKeyedSubscript:@"timestampValue"];
    [v7 doubleValue];
    v8 = [v6 dateWithTimeIntervalSinceReferenceDate:?];

    v9 = [v8 convertFromSystemToMonotonic];

    v10 = PLLogLocation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PLLocationAgent logEventPointGeofenceTrigger:v4];
    }

    [(PLOperator *)self logForSubsystem:@"CoreLocation" category:@"GeofenceTrigger" data:v4 date:v9];
  }

  else
  {
    v11 = PLLogLocation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLLocationAgent logEventPointGeofenceTrigger:];
    }

    [(PLOperator *)self logForSubsystem:@"CoreLocation" category:@"GeofenceTrigger" data:v4];
  }
}

- (void)logEventPointWifiLocationScanRequesters:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"WifiLocationScanRequesters"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMiLoScans:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"MiLoScanEvent"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMotionPacket:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"MotionPacket"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (BOOL)shouldRateLimitTechStatus
{
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") || ![MEMORY[0x277D3F180] liteMode])
  {
    return 0;
  }

  v3 = [(PLLocationAgent *)self lastTechStatusNotificationDate];

  if (v3)
  {
    v4 = [(PLLocationAgent *)self lastTechStatusNotificationDate];
    [v4 timeIntervalSinceNow];
    v6 = v5 >= -2.0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLLocationAgent *)self setLastTechStatusNotificationDate:v4];
    v6 = 0;
  }

  return v6;
}

- (void)logEventForwardTechStatus_withLimiter
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__PLLocationAgent_logEventForwardTechStatus_withLimiter__block_invoke(uint64_t a1)
{
  [*(a1 + 32) logEventForwardTechStatus];
  [*(a1 + 32) setTechStatusLimiterIsActive:MEMORY[0x277CBEC28]];
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setLastTechStatusNotificationDate:v2];
}

- (void)logEventForwardTechStatus
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = PLLogLocation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLApplicationAgent refreshAllAppsAndPlugins];
  }

  v23 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"TechStatus"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v23];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v4 definedKeys];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v9 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 setObject:v9 forKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = CLCopyTechnologiesInUse();
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = MEMORY[0x277CBEC38];
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * j);
        v18 = [(PLLocationAgent *)self humanReadableNameForTechnology:v17];
        [v4 setObject:v15 forKeyedSubscript:v18];

        v19 = PLLogLocation();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = [(PLLocationAgent *)self humanReadableNameForTechnology:v17];
          *buf = 138412290;
          v33 = v20;
          _os_log_debug_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEBUG, "Technology in use=%@", buf, 0xCu);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v13);
  }

  [(PLOperator *)self logEntry:v4];
  v21 = PLLogLocation();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [PLApplicationAgent refreshAllAppsAndPlugins];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateLocalCacheWithClient:(id)a3 withType:(id)a4 withBundleID:(id)a5 withEntry:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = PLLogLocation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v30 = 138412802;
    v31 = v10;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v13;
    _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "client=%@, type=%@, entry=%@", &v30, 0x20u);
  }

  if (v10 && v11)
  {
    if (!v12)
    {
      v12 = &stru_287103958;
    }

    v15 = [(PLLocationAgent *)self localCache];
    v16 = [v15 objectForKeyedSubscript:v10];

    if (!v16)
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
      v18 = [(PLLocationAgent *)self localCache];
      [v18 setObject:v17 forKeyedSubscript:v10];
    }

    v19 = [(PLLocationAgent *)self localCache];
    v20 = [v19 objectForKeyedSubscript:v10];
    v21 = [v20 objectForKeyedSubscript:v11];

    if (!v21)
    {
      v22 = [MEMORY[0x277CBEB38] dictionary];
      v23 = [(PLLocationAgent *)self localCache];
      v24 = [v23 objectForKeyedSubscript:v10];
      [v24 setObject:v22 forKeyedSubscript:v11];
    }

    v25 = v13;
    if (!v13)
    {
      v25 = [MEMORY[0x277CBEB68] null];
    }

    v26 = [(PLLocationAgent *)self localCache];
    v27 = [v26 objectForKeyedSubscript:v10];
    v28 = [v27 objectForKeyedSubscript:v11];
    [v28 setObject:v25 forKeyedSubscript:v12];

    if (!v13)
    {
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)lastEntryWithClient:(id)a3 withType:(id)a4 withBundleID:(id)a5 withEntryKey:(id)a6
{
  v28[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 0;
  if (v10 && v11)
  {
    if (!v12)
    {
      v12 = &stru_287103958;
    }

    v15 = [(PLLocationAgent *)self localCache];
    v16 = [v15 objectForKeyedSubscript:v10];
    v17 = [v16 objectForKeyedSubscript:v11];
    v18 = [v17 objectForKeyedSubscript:v12];

    if (!v18)
    {
      v27 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Client" withValue:v10 withComparisonOperation:0];
      v19 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Type" withValue:v11 withComparisonOperation:0];
      v20 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"BundleId" withValue:v12 withComparisonOperation:0];
      v21 = [(PLOperator *)self storage];
      v28[0] = v27;
      v28[1] = v19;
      v28[2] = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
      v18 = [v21 lastEntryForKey:v13 withComparisons:v22 isSingleton:0];

      [(PLLocationAgent *)self updateLocalCacheWithClient:v10 withType:v11 withBundleID:v12 withEntry:v18];
    }

    v23 = [MEMORY[0x277CBEB68] null];
    if (v18 == v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = v18;
    }

    v14 = v24;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)resyncActiveClients
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 lastResyncActiveClientsDate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardClientStatuswithPayload:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(PLLocationAgent *)self lastResyncActiveClientsDate];

  v7 = PLLogLocation();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      [PLLocationAgent logEventForwardClientStatuswithPayload:];
    }

    if (v4)
    {
      v9 = [MEMORY[0x277CBEAA8] monotonicDate];
      v10 = [(PLLocationAgent *)self lastResyncActiveClientsDate];
      [v9 timeIntervalSinceDate:v10];
      v12 = v11;

      if (v12 >= 3600.0)
      {
        v14 = PLLogLocation();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLLocationAgent logEventForwardClientStatuswithPayload:];
        }

        [(PLLocationAgent *)self resyncActiveClients];
      }

      else
      {
        [(PLLocationAgent *)self updateClientsLocationInfo:v4];
      }
    }

    else
    {
      v13 = PLLogLocation();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLLocationAgent logEventForwardClientStatuswithPayload:];
      }
    }
  }

  else
  {
    if (v8)
    {
      [PLLocationAgent logEventForwardClientStatuswithPayload:];
    }

    [(PLLocationAgent *)self resyncActiveClients];
  }
}

- (id)getOpenEntryForClientSettings:(id)a3 withTimeStarted:(id)a4 withClient:(id)a5 withType:(id)a6 withEntryKey:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [a3 mutableCopy];
  v17 = MEMORY[0x277CBEAA8];
  [v15 doubleValue];
  v19 = v18;

  v20 = [v17 dateWithTimeIntervalSinceReferenceDate:v19];
  v21 = [v20 convertFromSystemToMonotonic];
  [v16 setObject:v21 forKeyedSubscript:@"entryDate"];

  v22 = v16;
  v23 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12 withRawData:v22];

  [v23 setObject:v14 forKeyedSubscript:@"Client"];
  [v23 setObject:v13 forKeyedSubscript:@"Type"];
  v24 = [v23 objectForKeyedSubscript:@"BundleId"];
  [(PLLocationAgent *)self updateLocalCacheWithClient:v14 withType:v13 withBundleID:v24 withEntry:v23];

  return v23;
}

- (void)closeOpenEntryForClient:(id)a3 withOpenEntry:(id)a4 withTimeStopped:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CBEAA8];
  [a5 doubleValue];
  v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
  v12 = [v11 convertFromSystemToMonotonic];

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __73__PLLocationAgent_closeOpenEntryForClient_withOpenEntry_withTimeStopped___block_invoke;
  v24 = &unk_279A5C3F8;
  v25 = v9;
  v26 = v12;
  v13 = v12;
  v14 = v9;
  [(PLOperator *)self updateEntry:v14 withBlock:&v21];
  v15 = [(PLLocationAgent *)self activeClients:v21];
  v16 = [v15 objectForKey:v8];

  if (v16)
  {
    v17 = [v16 objectForKeyedSubscript:@"BundleId"];
    v18 = [(PLLocationAgent *)self activeClients];
    [v18 removeObjectForKey:v8];

    if (v17)
    {
      v19 = [(PLLocationAgent *)self activeBackgroundLocationClients];
      [v19 removeObject:v17];
    }

    v20 = PLLogLocation();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [PLLocationAgent closeOpenEntryForClient:? withOpenEntry:? withTimeStopped:?];
    }
  }
}

void __73__PLLocationAgent_closeOpenEntryForClient_withOpenEntry_withTimeStopped___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = PLLogLocation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __73__PLLocationAgent_closeOpenEntryForClient_withOpenEntry_withTimeStopped___block_invoke_cold_1(v1);
  }
}

- (void)updateClientsLocationInfo:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ClientStatus"];
  if ([(PLOperator *)self isDebugEnabled])
  {
    [(PLLocationAgent *)self logEventNoneClientStatusDebugWithClients:v4];
  }

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [(PLLocationAgent *)self activeBackgroundLocationClients];
  v10 = [v9 copy];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__PLLocationAgent_updateClientsLocationInfo___block_invoke;
  v20[3] = &unk_279A5D1F0;
  v20[4] = self;
  v11 = v6;
  v21 = v11;
  v12 = v7;
  v22 = v12;
  v13 = v8;
  v23 = v13;
  [v4 enumerateKeysAndObjectsUsingBlock:v20];
  if ([v12 count])
  {
    v14 = PLLogLocation();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLLocationAgent logEventPointClientStatus];
    }

    v24 = v11;
    v25[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [(PLOperator *)self logEntries:v15 withGroupID:v11];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
    [v15 setIsErrorEntry:1];
    [(PLOperator *)self logEntry:v15];
  }

  [(PLLocationAgent *)self updateLocationDistributionEvents];
  v16 = [(PLLocationAgent *)self activeBackgroundLocationClients];
  v17 = [v10 isEqualToSet:v16];

  if ((v17 & 1) == 0)
  {
    [(PLLocationAgent *)self updateLocationQualificationEvents];
  }

  objc_autoreleasePoolPop(v5);
  v18 = PLLogLocation();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [PLApplicationAgent refreshAllAppsAndPlugins];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __45__PLLocationAgent_updateClientsLocationInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v50 = a2;
  v4 = a3;
  v5 = PLLogLocation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __44__PLLocationAgent_logEventPointClientStatus__block_invoke_cold_1();
  }

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v6 = (a1 + 32);
    obj = [*(a1 + 32) clientStatusTypeStrings];
    v7 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (!v7)
    {
      goto LABEL_60;
    }

    v9 = v7;
    v51 = *v62;
    *&v8 = 138412546;
    v44 = v8;
    while (1)
    {
      v10 = 0;
      v47 = v9;
      do
      {
        if (*v62 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v61 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = [*v6 clientStatusTypeStrings];
        v13 = [v12 objectForKeyedSubscript:v11];
        v14 = [v13 objectForKeyedSubscript:@"TimeStarted"];
        v15 = [v4 objectForKeyedSubscript:v14];

        v16 = [*v6 clientStatusTypeStrings];
        v17 = [v16 objectForKeyedSubscript:v11];
        v18 = [v17 objectForKeyedSubscript:@"TimeStopped"];
        v19 = [v4 objectForKeyedSubscript:v18];

        v20 = [v4 objectForKeyedSubscript:@"InUseLevel"];
        v21 = PLLogLocation();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v68 = v20;
          _os_log_debug_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEBUG, "InUseLevel = %@", buf, 0xCu);
        }

        if (v15 | v19)
        {
          if (v15)
          {
            v22 = [v4 objectForKeyedSubscript:@"LocationDesiredAccuracy"];
            v23 = v22;
            if (v22 && [v22 integerValue]>= 6378136)
            {
              if ([v23 integerValue]!= 2147483642)
              {
                [v23 integerValue];
              }

              goto LABEL_53;
            }
          }

          else
          {
            v23 = PLLogLocation();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v68 = v11;
              v69 = 2112;
              v70 = 0;
              v71 = 2112;
              v72 = v19;
              _os_log_debug_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEBUG, "type=%@, timeStarted=%@, timeStopped=%@", buf, 0x20u);
            }
          }

          v23 = [v4 objectForKeyedSubscript:@"BundleId"];
          v24 = [*(a1 + 32) lastEntryWithClient:v50 withType:v11 withBundleID:v23 withEntryKey:*(a1 + 40)];
          v25 = PLLogLocation();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v68 = v24;
            _os_log_debug_impl(&dword_25EE51000, v25, OS_LOG_TYPE_DEBUG, "lastEntry=%@", buf, 0xCu);
          }

          if (!v24 || ([v24 objectForKeyedSubscript:@"timestampEnd"], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
          {
            v27 = PLLogLocation();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              __45__PLLocationAgent_updateClientsLocationInfo___block_invoke_cold_5(&v59, v60);
            }

            if (v15)
            {
              v28 = [*(a1 + 32) getOpenEntryForClientSettings:v4 withTimeStarted:v15 withClient:v50 withType:v11 withEntryKey:*(a1 + 40)];
              [*(a1 + 48) addObject:v28];
              goto LABEL_28;
            }

LABEL_51:
            v28 = 0;
LABEL_52:

LABEL_53:
            v9 = v47;
            goto LABEL_54;
          }

          v34 = PLLogLocation();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            __45__PLLocationAgent_updateClientsLocationInfo___block_invoke_cold_2(&v57, v58);
          }

          v45 = [v20 intValue];
          v35 = [v24 objectForKeyedSubscript:@"InUseLevel"];
          v36 = [v35 intValue];

          v37 = PLLogLocation();
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
          if (!v15 || v45 == v36)
          {
            if (v19)
            {
              v6 = (a1 + 32);
              if (v38)
              {
                __45__PLLocationAgent_updateClientsLocationInfo___block_invoke_cold_4(&v55, v56);
              }

              [*(a1 + 32) closeOpenEntryForClient:v50 withOpenEntry:v24 withTimeStopped:v19];
              goto LABEL_51;
            }

            v6 = (a1 + 32);
            if (v38)
            {
              __45__PLLocationAgent_updateClientsLocationInfo___block_invoke_cold_3(&v53, v54);
            }

            v28 = v24;
          }

          else
          {
            if (v38)
            {
              v41 = [v24 objectForKeyedSubscript:@"InUseLevel"];
              *buf = v44;
              v68 = v41;
              v69 = 2112;
              v70 = v20;
              _os_log_debug_impl(&dword_25EE51000, v37, OS_LOG_TYPE_DEBUG, "Inuse level changed from %@ to %@", buf, 0x16u);
            }

            v39 = MEMORY[0x277CCABB0];
            [*(a1 + 56) timeIntervalSinceReferenceDate];
            v46 = [v39 numberWithDouble:?];
            v40 = PLLogLocation();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              *buf = v44;
              v68 = v15;
              v69 = 2112;
              v70 = v46;
              _os_log_debug_impl(&dword_25EE51000, v40, OS_LOG_TYPE_DEBUG, "TimestampStarted: %@ TimestampInUseLevel: %@", buf, 0x16u);
            }

            [*(a1 + 32) closeOpenEntryForClient:v50 withOpenEntry:v24 withTimeStopped:v46];
            v28 = [*(a1 + 32) getOpenEntryForClientSettings:v4 withTimeStarted:v46 withClient:v50 withType:v11 withEntryKey:*(a1 + 40)];
            [*(a1 + 48) addObject:v28];

LABEL_28:
            v6 = (a1 + 32);
            if (!v28)
            {
              goto LABEL_52;
            }
          }

          if ([v11 isEqualToString:{@"Location", v44}])
          {
            v29 = PLLogLocation();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v68 = v28;
              _os_log_debug_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEBUG, "still open location openEntry=%@", buf, 0xCu);
            }

            v30 = [*v6 activeClients];
            [v30 setObject:v28 forKeyedSubscript:v50];

            v31 = PLLogLocation();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              __45__PLLocationAgent_updateClientsLocationInfo___block_invoke_cold_6(v65, v6, &v66, v31);
            }

            v32 = [v28 objectForKeyedSubscript:@"BundleId"];
            if (v32 && ![v20 intValue])
            {
              v33 = [*v6 activeBackgroundLocationClients];
              [v33 addObject:v32];

              v6 = (a1 + 32);
            }
          }

          goto LABEL_52;
        }

LABEL_54:

        objc_autoreleasePoolPop(context);
        ++v10;
      }

      while (v9 != v10);
      v42 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
      v9 = v42;
      if (!v42)
      {
LABEL_60:

        break;
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (unint64_t)convertClientEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"enabled"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"disabled"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (unint64_t)convertViewObstructedEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"suppress"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"unsuppress"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)logEventForwardSuppressionManagerClient:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v10 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"SuppressionManagerClient"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"clientEvent"];

  v8 = [(PLLocationAgent *)self convertClientEvent:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"clientEvent"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardViewObstructed:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v10 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"ViewObstructed"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [v5 objectForKeyedSubscript:@"VOEvent"];

  v8 = [(PLLocationAgent *)self convertViewObstructedEvent:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"VOEvent"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventFowardGPSSubscription:(id)a3
{
  v15 = a3;
  v4 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"GPSActivation"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [v15 objectForKeyedSubscript:@"ServiceName"];
  v7 = [v6 rangeOfString:@"peer silo:"];
  v9 = v8;
  v10 = [v6 rangeOfString:@">"];
  v11 = 0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v6 substringWithRange:{v7 + v9, v10 - (v7 + v9)}];
  }

  [v5 setObject:v11 forKeyedSubscript:@"ServiceName"];
  v12 = MEMORY[0x277CCABB0];
  v13 = [v15 objectForKeyedSubscript:@"Register"];
  v14 = [v12 numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
  [v5 setObject:v14 forKeyedSubscript:@"Register"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardGnssSession:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"GnssSession"];
  v6 = [v4 objectForKeyedSubscript:@"eventCfTimeSec"];

  if (v6)
  {
    v7 = MEMORY[0x277CBEAA8];
    v8 = [v4 objectForKeyedSubscript:@"eventCfTimeSec"];
    [v8 doubleValue];
    v9 = [v7 dateWithTimeIntervalSinceReferenceDate:?];

    v10 = [v9 convertFromSystemToMonotonic];

    v11 = PLLogLocation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLLocationAgent logEventForwardGnssSession:v4];
    }

    v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withDate:v10];
    v13 = [v4 objectForKeyedSubscript:@"eventType"];
    [v12 setObject:v13 forKeyedSubscript:@"eventType"];

    v14 = [v4 objectForKeyedSubscript:@"eventStatus"];
    [v12 setObject:v14 forKeyedSubscript:@"eventStatus"];

    [(PLOperator *)self logEntry:v12];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v4];
    [(PLOperator *)self logEntry:v10];
  }
}

- (unint64_t)convertOdometryEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"start"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"stop"])
  {
    v4 = 0;
  }

  else
  {
    v5 = PLLogLocation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLLocationAgent convertOdometryEvent:];
    }

    v4 = 2;
  }

  return v4;
}

- (unint64_t)convertCheckInEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"start"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"stop"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)logEventForwardOdometry:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v12 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"Odometry"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v7 = [v5 objectForKeyedSubscript:@"odometryEvent"];
  v8 = [(PLLocationAgent *)self convertOdometryEvent:v7];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"odometryEvent"];

  v10 = [v5 objectForKeyedSubscript:@"updateInterval"];
  [v6 setObject:v10 forKeyedSubscript:@"updateInterval"];

  v11 = [v5 objectForKeyedSubscript:@"identifier"];

  [v6 setObject:v11 forKeyedSubscript:@"identifier"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardCheckInSession:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"event"];

  v7 = [(PLLocationAgent *)self convertCheckInEvent:v6];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v5 setObject:v8 forKeyedSubscript:@"event"];

  v9 = PLLogLocation();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLLocationAgent logEventForwardCheckInSession:];
  }

  [(PLOperator *)self logForSubsystem:@"CoreRoutine" category:@"CheckInSession" data:v5];
}

- (void)logPredictedContextInferenceEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"inferenceLatency"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"inferenceLatency"];
    [v7 doubleValue];
    v9 = v8;

    [PLUtilities roundToSigFigDouble:2 withSigFig:v9];
    v11 = v10;
    v12 = PLLogLocation();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLLocationAgent logPredictedContextInferenceEvent:];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v5 setValue:v13 forKey:@"inferenceLatency"];
  }

  [(PLOperator *)self logForSubsystem:@"CoreRoutine" category:@"PredictedContextInferenceEvent" data:v5];
}

- (void)logPredictedContextTrainingEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"trainingDuration"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"trainingDuration"];
    [v7 doubleValue];
    v9 = v8;

    [PLUtilities roundToSigFigDouble:2 withSigFig:v9];
    v11 = v10;
    v12 = PLLogLocation();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLLocationAgent logPredictedContextTrainingEvent:];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v5 setValue:v13 forKey:@"trainingDuration"];
  }

  [(PLOperator *)self logForSubsystem:@"CoreRoutine" category:@"PredictedContextTrainingEvent" data:v5];
}

- (void)logEventIntervalSeparationAlert:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v13 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"SeparationAlert"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"timestamp"];

  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = [v10 convertFromSystemToMonotonic];
  [v6 setEntryDate:v11];

  v12 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v6 setObject:v12 forKeyedSubscript:@"timestampEnd"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalMapsBusynessState:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v21 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"MapsBusyness"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v21];
  v7 = [v5 objectForKeyedSubscript:&unk_287145D18];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = [v10 convertFromSystemToMonotonic];
  [v6 setEntryDate:v11];

  v12 = [v5 objectForKeyedSubscript:&unk_287145D30];
  [v6 setObject:v12 forKeyedSubscript:@"Launched"];

  v13 = [v5 objectForKeyedSubscript:&unk_287145D48];
  [v6 setObject:v13 forKeyedSubscript:@"HarvestedRealTimeOnPower"];

  v14 = [v5 objectForKeyedSubscript:&unk_287145D60];
  [v6 setObject:v14 forKeyedSubscript:@"HarvestedRealTimeOnBattery"];

  v15 = [v5 objectForKeyedSubscript:&unk_287145D78];
  [v6 setObject:v15 forKeyedSubscript:@"HarvestedDifferential"];

  v16 = [v5 objectForKeyedSubscript:&unk_287145D90];
  [v6 setObject:v16 forKeyedSubscript:@"RateLimit"];

  v17 = [v5 objectForKeyedSubscript:&unk_287145DA8];
  [v6 setObject:v17 forKeyedSubscript:@"LocationNotUsable"];

  v18 = [v5 objectForKeyedSubscript:&unk_287145DC0];
  [v6 setObject:v18 forKeyedSubscript:@"LocationNoAuth"];

  v19 = [v5 objectForKeyedSubscript:&unk_287145DD8];

  [v6 setObject:v19 forKeyedSubscript:@"LocationUnavailable"];
  v20 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v6 setObject:v20 forKeyedSubscript:@"timestampEnd"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalPDR:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"PDR"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventNoneClientStatus
{
  v3 = CLCopyAppsUsingLocation();
  [(PLLocationAgent *)self logEventNoneClientStatusDebugWithClients:v3];
}

- (void)logEventNoneClientStatusDebugWithClients:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D3F5E0];
  v5 = a3;
  v6 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"ClientStatusDebug"];
  v7 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__PLLocationAgent_logEventNoneClientStatusDebugWithClients___block_invoke;
  v12[3] = &unk_279A5C140;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v12];

  v15 = v9;
  v16[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(PLOperator *)self logEntries:v10 withGroupID:v9];

  v11 = *MEMORY[0x277D85DE8];
}

void __60__PLLocationAgent_logEventNoneClientStatusDebugWithClients___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withRawData:v6];
  [v7 setObject:v5 forKeyedSubscript:@"Client"];
  [*(a1 + 40) addObject:v7];
  v8 = PLLogLocation();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&dword_25EE51000, v8, OS_LOG_TYPE_DEBUG, "Client=%@ entry=%@ clientSettings=%@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateLocationDistributionEvents
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateLocationQualificationEvents
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v6 = [MEMORY[0x277D3F0C0] sharedInstance];
    v3 = [(PLLocationAgent *)self activeBackgroundLocationClients];
    v4 = [v3 allObjects];
    v5 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v6 createQualificationEventForwardWithQualificationID:15 withChildNodeNames:v4 withStartDate:v5];
  }
}

- (void)updateGnssPowerMetric:(id)a3
{
  v20 = a3;
  v4 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"GPSPower"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [v20 objectForKey:@"intervalStartTime"];
  [v5 setObject:v6 forKeyedSubscript:@"startTime"];

  v7 = [v20 objectForKey:@"measuredInterval"];
  [v5 setObject:v7 forKeyedSubscript:@"measuredInterval"];

  v8 = [v20 objectForKey:@"activeInterval"];
  [v5 setObject:v8 forKeyedSubscript:@"activeInterval"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [v20 objectForKey:@"averagePower"];
  [v10 doubleValue];
  v12 = [v9 numberWithInt:(100 * v11)];
  [v5 setObject:v12 forKeyedSubscript:@"averagePower"];

  v13 = [v20 objectForKey:@"activeL5IntervalSec"];
  [v5 setObject:v13 forKeyedSubscript:@"activeL5IntervalSec"];

  [(PLOperator *)self logEntry:v5];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v14 = [v5 entryDate];
    v15 = [v20 objectForKey:@"averagePower"];
    [v15 doubleValue];
    v17 = v16;
    v18 = [v20 objectForKey:@"measuredInterval"];
    [v18 doubleValue];
    [(PLLocationAgent *)self modelGpsSegmentPower:v14 withGpsPower:v17 withTotalDuration:v19];
  }
}

- (void)modelGpsSegmentPower:(id)a3 withGpsPower:(double)a4 withTotalDuration:(double)a5
{
  v16 = a3;
  v9 = [MEMORY[0x277D3F208] isHomePod];
  if ((v9 & 1) == 0)
  {
    v9 = [v16 timeIntervalSince1970];
    v11 = v10;
    if (self->_gps_segment_lastWrittenDate)
    {
      gps_segment_lastWrittenTimestamp = self->_gps_segment_lastWrittenTimestamp;
      v13 = self->_gps_segment_timestamp - gps_segment_lastWrittenTimestamp;
      v14 = 0.0;
      if (v13 > 0.0)
      {
        v14 = v13 * self->_gps_segment_power;
      }

      v15 = v11 - gps_segment_lastWrittenTimestamp;
      if (v15 > 0.0)
      {
        self->_gps_segment_power = (v14 + a4 * a5) / v15;
        objc_storeStrong(&self->_gps_segment_date, a3);
        self->_gps_segment_timestamp = v11;
      }
    }

    else
    {
      objc_storeStrong(&self->_gps_segment_lastWrittenDate, a3);
      self->_gps_segment_lastWrittenTimestamp = v11;
      objc_storeStrong(&self->_gps_segment_date, a3);
      self->_gps_segment_timestamp = self->_gps_segment_lastWrittenTimestamp;
      self->_gps_segment_power = a4;
    }
  }

  MEMORY[0x2821F96F8](v9);
}

- (void)writeModeledPower
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && self->_gps_segment_timestamp != self->_gps_segment_lastWrittenTimestamp)
  {
    if (self->_gps_segment_power > 1000.0)
    {
      self->_gps_segment_power = 1000.0;
    }

    v3 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v3 createPowerEventBackwardWithRootNodeID:48 withPower:self->_gps_segment_date withEndDate:self->_gps_segment_power];

    objc_storeStrong(&self->_gps_segment_lastWrittenDate, self->_gps_segment_date);
    self->_gps_segment_lastWrittenTimestamp = self->_gps_segment_timestamp;
  }
}

void __23__PLLocationAgent_init__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_398_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_409_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_414_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_424_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_432_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_434_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_440_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_445_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_453_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_461_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_471_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_476_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_484_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_489_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_494_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_502_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_510_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_518_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_526_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_534_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__PLLocationAgent_logEventPointClientStatus__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointGeofenceTrigger:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"timestampValue"];
  [v1 intValue];
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointGeofenceTrigger:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventForwardClientStatuswithPayload:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventForwardClientStatuswithPayload:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardClientStatuswithPayload:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventForwardClientStatuswithPayload:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)closeOpenEntryForClient:(void *)a1 withOpenEntry:withTimeStopped:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 activeClients];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __73__PLLocationAgent_closeOpenEntryForClient_withOpenEntry_withTimeStopped___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__PLLocationAgent_updateClientsLocationInfo___block_invoke_cold_6(uint8_t *a1, id *a2, void *a3, NSObject *a4)
{
  v7 = [*a2 activeClients];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_25EE51000, a4, OS_LOG_TYPE_DEBUG, "Active clients: %@", a1, 0xCu);
}

- (void)logEventForwardGnssSession:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"eventCfTimeSec"];
  [v1 intValue];
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)convertOdometryEvent:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardCheckInSession:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logPredictedContextInferenceEvent:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logPredictedContextTrainingEvent:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end
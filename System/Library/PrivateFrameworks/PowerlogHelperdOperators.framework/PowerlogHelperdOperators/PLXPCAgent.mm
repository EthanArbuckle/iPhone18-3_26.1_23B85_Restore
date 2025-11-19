@interface PLXPCAgent
+ (BOOL)shouldLogiOSWatchOSOnly;
+ (id)entryAggregateDefinitionKeyboardTime;
+ (id)entryAggregateDefinitionKeyboardWordsAndCharacters;
+ (id)entryAggregateDefinitions;
+ (id)entryEventBackwardDefinitionAVConference;
+ (id)entryEventBackwardDefinitionActiveStylus;
+ (id)entryEventBackwardDefinitionAttentionPolling;
+ (id)entryEventBackwardDefinitionAttentionSampling;
+ (id)entryEventBackwardDefinitionAttentionService;
+ (id)entryEventBackwardDefinitionCallScreeningDuration;
+ (id)entryEventBackwardDefinitionDRMaxRate;
+ (id)entryEventBackwardDefinitionEnergyTelemetry;
+ (id)entryEventBackwardDefinitionFrameCount;
+ (id)entryEventBackwardDefinitionKeyboardSession;
+ (id)entryEventBackwardDefinitionODHN;
+ (id)entryEventBackwardDefinitionODOff;
+ (id)entryEventBackwardDefinitionODOn;
+ (id)entryEventBackwardDefinitionPassiveStylus;
+ (id)entryEventBackwardDefinitionPeekPop;
+ (id)entryEventBackwardDefinitionSiriFalseAlarm;
+ (id)entryEventBackwardDefinitionSpotlightQos;
+ (id)entryEventBackwardDefinitionTrackpadResidencies;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardCallScreeningEnabled;
+ (id)entryEventForwardDefinitionAccessory;
+ (id)entryEventForwardDefinitionAccessoryMotion;
+ (id)entryEventForwardDefinitionAirDrop;
+ (id)entryEventForwardDefinitionAirDropSession;
+ (id)entryEventForwardDefinitionAppAccessory;
+ (id)entryEventForwardDefinitionAppleBacklightBrightness;
+ (id)entryEventForwardDefinitionAudioRouting;
+ (id)entryEventForwardDefinitionAvailabilityModes;
+ (id)entryEventForwardDefinitionCarPlay;
+ (id)entryEventForwardDefinitionCarPlayScreens;
+ (id)entryEventForwardDefinitionEnhancedDiscovery;
+ (id)entryEventForwardDefinitionInCallService;
+ (id)entryEventForwardDefinitionMXDiscoveryLevel;
+ (id)entryEventForwardDefinitionNetworkRelay;
+ (id)entryEventForwardDefinitionNetworkRelayWiFiAssertion;
+ (id)entryEventForwardDefinitionPasskeyAuthentication;
+ (id)entryEventForwardDefinitionRapidSecurityResponse;
+ (id)entryEventForwardDefinitionSOSKVSRateLimitingEvent;
+ (id)entryEventForwardDefinitionSafariFetcher;
+ (id)entryEventForwardDefinitionSecondaryDisplay;
+ (id)entryEventForwardDefinitionSiri;
+ (id)entryEventForwardDefinitionSleepMode;
+ (id)entryEventForwardDefinitionSpatialAudio;
+ (id)entryEventForwardDefinitionThermalHiP;
+ (id)entryEventForwardDefinitionThermalLevel;
+ (id)entryEventForwardDefinitionThermalSensors;
+ (id)entryEventForwardDefinitionUARPStatus;
+ (id)entryEventForwardDefinitionUIKitActivity;
+ (id)entryEventForwardDefinitionUIKitAlert;
+ (id)entryEventForwardDefinitionUIKitEclipse;
+ (id)entryEventForwardDefinitionUIKitKeyboard;
+ (id)entryEventForwardDefinitionWatchPresence;
+ (id)entryEventForwardDefinitionWebApp;
+ (id)entryEventForwardDefinitionWirelessSync;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventForwardDefinitionsDosimetry;
+ (id)entryEventIntervalDefinitionAirTrafficAssetDownload;
+ (id)entryEventIntervalDefinitionAnimatedStickerCreation;
+ (id)entryEventIntervalDefinitionCoreDuetKnowledgeSync;
+ (id)entryEventIntervalDefinitionRapportReceivedMessage;
+ (id)entryEventIntervalDefinitionSpotlightIndexes;
+ (id)entryEventIntervalDefinitionSpotlightQueries;
+ (id)entryEventIntervalDefinitionStaticStickerCreation;
+ (id)entryEventIntervalDefinitionUserSafety;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitioPortraitHighlightsResult;
+ (id)entryEventPointDefinitionADD;
+ (id)entryEventPointDefinitionAirPlayDiscoveryMode;
+ (id)entryEventPointDefinitionAppActivationPerformanceActivationData;
+ (id)entryEventPointDefinitionAppActivationPerformanceCPUStatistics;
+ (id)entryEventPointDefinitionAppActivationPerformanceMemoryStatistics;
+ (id)entryEventPointDefinitionAppActivationPerformancePowerStateStatistics;
+ (id)entryEventPointDefinitionAppActivationPerformanceProcessData;
+ (id)entryEventPointDefinitionCacheDelete;
+ (id)entryEventPointDefinitionCloudKit;
+ (id)entryEventPointDefinitionCommuteRefresh;
+ (id)entryEventPointDefinitionDACalendarItemsDownloaded;
+ (id)entryEventPointDefinitionDACalendarItemsUploaded;
+ (id)entryEventPointDefinitionDASyncStart;
+ (id)entryEventPointDefinitionFocusFilters;
+ (id)entryEventPointDefinitionJetsam;
+ (id)entryEventPointDefinitionLocationVehicularDetection;
+ (id)entryEventPointDefinitionMachineTranslation;
+ (id)entryEventPointDefinitionMailFetch;
+ (id)entryEventPointDefinitionMobileBackupEvents;
+ (id)entryEventPointDefinitionMobileBackupStatistics;
+ (id)entryEventPointDefinitionMotionWakeReason;
+ (id)entryEventPointDefinitionNanoMailSession;
+ (id)entryEventPointDefinitionNavd;
+ (id)entryEventPointDefinitionNavdGeoNetworkActivity;
+ (id)entryEventPointDefinitionNavdMapsNavigationStateEvent;
+ (id)entryEventPointDefinitionNavdMapsWidgetSession;
+ (id)entryEventPointDefinitionNetworkRelayBTLinkAssertion;
+ (id)entryEventPointDefinitionSecItem;
+ (id)entryEventPointDefinitionShortcutsTriggerFired;
+ (id)entryEventPointDefinitionSiriActivication;
+ (id)entryEventPointDefinitionSleepLock;
+ (id)entryEventPointDefinitionSpotlightHighlightsResult;
+ (id)entryEventPointDefinitionSpotlightWatchdogFired;
+ (id)entryEventPointDefinitionTerminusBTWake;
+ (id)entryEventPointDefinitionTestMarkers;
+ (id)entryEventPointDefinitionWeatherNotification;
+ (id)entryEventPointDefinitionWeatherNotificationState;
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointDefinitionsBackgroundTransfer;
+ (id)entryEventPointDefinitionsSymptomsNetworkAdvisory;
+ (void)load;
- (BOOL)shouldLogAppActivationData;
- (PLXPCAgent)init;
- (id)entryRequestResponseForPayload:(id)a3;
- (int)convertPPSSKALogEventName:(id)a3;
- (int)convertPixelCount:(int)a3;
- (int)mapAvailabilityModeSemanticType:(int64_t)a3;
- (int64_t)eventNameStringToEnum:(id)a3;
- (int64_t)mapPixelsToBucket:(unint64_t)a3;
- (int64_t)modeTypeStringToEnum:(id)a3;
- (unint64_t)convertAirDropSessionState:(id)a3;
- (void)createAccessoryAccountingEventWithName:(id)a3 isStartEvent:(BOOL)a4;
- (void)createAirDropAccountingEvent:(id)a3;
- (void)createInCallServiceAccountingEvent:(id)a3;
- (void)handleSBCNotificationWithUserInfo:(id)a3;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)log;
- (void)logAlbumAnimation:(id)a3;
- (void)logAlbumMotion:(id)a3;
- (void)logEventAggregateTelNotification:(id)a3;
- (void)logEventBackwardAVConference:(id)a3;
- (void)logEventBackwardActiveStylus:(id)a3;
- (void)logEventBackwardAttentionPolling:(id)a3;
- (void)logEventBackwardAttentionSampling:(id)a3;
- (void)logEventBackwardAttentionService:(id)a3;
- (void)logEventBackwardCallScreeningDuration:(id)a3;
- (void)logEventBackwardDRMaxRate:(id)a3;
- (void)logEventBackwardEnergyTelemetry:(id)a3;
- (void)logEventBackwardFrameCount:(id)a3;
- (void)logEventBackwardKeyboardSession:(id)a3;
- (void)logEventBackwardKeyboardTrackpad:(id)a3;
- (void)logEventBackwardLayerCount:(id)a3;
- (void)logEventBackwardNamePeek:(id)a3;
- (void)logEventBackwardNamePop:(id)a3;
- (void)logEventBackwardNameSpotlightQos:(id)a3;
- (void)logEventBackwardODHN:(id)a3;
- (void)logEventBackwardODOff:(id)a3;
- (void)logEventBackwardODOn:(id)a3;
- (void)logEventBackwardPassiveStylus:(id)a3;
- (void)logEventBackwardRenderPassCount:(id)a3;
- (void)logEventBackwardSiriFalseAlarm:(id)a3;
- (void)logEventEventForwardMessageTranscript:(id)a3;
- (void)logEventEventPointRCSSessionManagement:(id)a3;
- (void)logEventForwardAccessory:(id)a3;
- (void)logEventForwardAccessoryMotion:(id)a3;
- (void)logEventForwardAirDrop:(id)a3;
- (void)logEventForwardAirDropSession:(id)a3;
- (void)logEventForwardAppAccessory:(id)a3;
- (void)logEventForwardAppleBackklightBrightness:(id)a3;
- (void)logEventForwardAppleDiffusion:(id)a3;
- (void)logEventForwardAssetLoadGF:(id)a3;
- (void)logEventForwardAudioRouting:(id)a3;
- (void)logEventForwardAvailabilityModes:(id)a3;
- (void)logEventForwardCallScreeningEnabled:(id)a3;
- (void)logEventForwardCarPlay:(id)a3;
- (void)logEventForwardCarPlayScreens:(id)a3;
- (void)logEventForwardDosimetry:(id)a3;
- (void)logEventForwardEDRRequests:(id)a3;
- (void)logEventForwardEnhancedDiscovery:(id)a3;
- (void)logEventForwardGMSOptIn;
- (void)logEventForwardHandwritingInference:(id)a3;
- (void)logEventForwardIHA;
- (void)logEventForwardInCallService:(id)a3;
- (void)logEventForwardLinkAdvisory:(id)a3;
- (void)logEventForwardMMExecuteRequest:(id)a3;
- (void)logEventForwardMXDiscoveryLevel:(id)a3;
- (void)logEventForwardNetworkRelay:(id)a3;
- (void)logEventForwardNetworkRelayWiFiAssertion:(id)a3;
- (void)logEventForwardPasskeyAuthentication:(id)a3;
- (void)logEventForwardRapidSecurityResponse:(id)a3;
- (void)logEventForwardRelevanceContextUpdate:(id)a3;
- (void)logEventForwardSOSKVSRateLimitingEvent:(id)a3;
- (void)logEventForwardSafariFetcherStatus:(id)a3;
- (void)logEventForwardSecondaryDisplay:(id)a3;
- (void)logEventForwardSiri:(id)a3;
- (void)logEventForwardSleepMode:(id)a3;
- (void)logEventForwardSmartReplySession:(id)a3;
- (void)logEventForwardSpatialAudio:(id)a3;
- (void)logEventForwardSummarization:(id)a3;
- (void)logEventForwardTGIExecuteRequest:(id)a3;
- (void)logEventForwardThermalHiP:(id)a3;
- (void)logEventForwardThermalLevel:(id)a3;
- (void)logEventForwardThermalSensors:(id)a3;
- (void)logEventForwardUIKitActivity:(id)a3;
- (void)logEventForwardUIKitAlert:(id)a3;
- (void)logEventForwardUIKitEclipse:(id)a3;
- (void)logEventForwardUIKitKeyboard:(id)a3;
- (void)logEventForwardWatchPresence:(id)a3;
- (void)logEventForwardWebApp:(id)a3;
- (void)logEventForwardWirelessSync:(id)a3;
- (void)logEventFowardUARPStatus:(id)a3;
- (void)logEventIntervalAirTrafficAssetDownload:(id)a3;
- (void)logEventIntervalAnimatedStickerCreation:(id)a3;
- (void)logEventIntervalCoreDuetKnowledgeSync:(id)a3;
- (void)logEventIntervalEndCPUViolations:(id)a3;
- (void)logEventIntervalNameSpotlightIndexes:(id)a3;
- (void)logEventIntervalNameSpotlightQueries:(id)a3;
- (void)logEventIntervalPowerExceptionsDetection:(id)a3;
- (void)logEventIntervalRapportReceivedMessage:(id)a3;
- (void)logEventIntervalStaticStickerCreation:(id)a3;
- (void)logEventIntervalUserSafetyProcessing:(id)a3;
- (void)logEventIntervalVKDataScanner:(id)a3;
- (void)logEventPointADD:(id)a3;
- (void)logEventPointANE:(id)a3 withCategory:(id)a4;
- (void)logEventPointAirPlayDiscoveryMode:(id)a3;
- (void)logEventPointAppActivationPerformanceActivationData:(id)a3;
- (void)logEventPointAppActivationPerformanceCPUStatistics:(id)a3;
- (void)logEventPointAppActivationPerformanceMemoryStatistics:(id)a3;
- (void)logEventPointAppActivationPerformancePowerStateStatistics:(id)a3;
- (void)logEventPointAppActivationPerformanceProcessData:(id)a3;
- (void)logEventPointBackgroundTransfer:(id)a3;
- (void)logEventPointCacheDelete:(id)a3;
- (void)logEventPointCloudKit:(id)a3;
- (void)logEventPointCommuteRefreshSession:(id)a3;
- (void)logEventPointDACalendarItemsDownloaded:(id)a3;
- (void)logEventPointDACalendarItemsUploaded:(id)a3;
- (void)logEventPointDASyncStart:(id)a3;
- (void)logEventPointFocusFilters:(id)a3;
- (void)logEventPointJetsam:(unint64_t)a3;
- (void)logEventPointLocationVehicularDetectionSession:(id)a3;
- (void)logEventPointMachineTranslation:(id)a3;
- (void)logEventPointMailFetch:(id)a3;
- (void)logEventPointMobileBackupEvents:(id)a3;
- (void)logEventPointMobileBackupStatistics:(id)a3;
- (void)logEventPointMotionWakeReasonSession:(id)a3;
- (void)logEventPointNamePortraitHighlightsResult:(id)a3;
- (void)logEventPointNameSpotlightHighlightsResult:(id)a3;
- (void)logEventPointNameSpotlightWatchdogFired:(id)a3;
- (void)logEventPointNanoMailSession:(id)a3;
- (void)logEventPointNavd:(id)a3;
- (void)logEventPointNavdGeoNetworkActivity:(id)a3;
- (void)logEventPointNavdMapsNavigationStateEvent:(id)a3;
- (void)logEventPointNavdMapsWidgetSession:(id)a3;
- (void)logEventPointNetworkRelayBTLinkAssertion:(id)a3;
- (void)logEventPointNetworkRelayTerminusBTWake:(id)a3;
- (void)logEventPointNetworkSymptomsAdviosry:(id)a3;
- (void)logEventPointSecItemSession:(id)a3;
- (void)logEventPointShortcutsTriggerFired:(id)a3;
- (void)logEventPointSiriActivation:(id)a3;
- (void)logEventPointSleepLock:(id)a3;
- (void)logEventPointTestMarker:(id)a3;
- (void)logEventPointWeatherNotification:(id)a3;
- (void)logEventPointWeatherNotificationState:(id)a3;
- (void)logFileResidentInfo:(id)a3;
- (void)logMailCategorization:(id)a3;
- (void)logNetworkActivity:(id)a3 withEntryKey:(id)a4;
- (void)logPhotosGenerativeEdit:(id)a3;
- (void)logStatusKitAgentAggregatePushes:(id)a3;
- (void)setAccountingEntriesFor:(id)a3 withBundleID:(id)a4 withStartTime:(double)a5 withEndTime:(double)a6;
@end

@implementation PLXPCAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLXPCAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (BOOL)shouldLogiOSWatchOSOnly
{
  if (shouldLogiOSWatchOSOnly_onceToken != -1)
  {
    +[PLXPCAgent shouldLogiOSWatchOSOnly];
  }

  return shouldLogiOSWatchOSOnly_result;
}

uint64_t __37__PLXPCAgent_shouldLogiOSWatchOSOnly__block_invoke()
{
  if ([MEMORY[0x277D3F208] isiOS])
  {
    result = 1;
  }

  else
  {
    result = [MEMORY[0x277D3F208] isWatch];
  }

  shouldLogiOSWatchOSOnly_result = result;
  return result;
}

+ (id)entryEventPointDefinitions
{
  v48[41] = *MEMORY[0x277D85DE8];
  v47[0] = @"TestMarker";
  v46 = [a1 entryEventPointDefinitionTestMarkers];
  v48[0] = v46;
  v47[1] = @"DASyncStart";
  v45 = [a1 entryEventPointDefinitionDASyncStart];
  v48[1] = v45;
  v47[2] = @"MailFetch";
  v44 = [a1 entryEventPointDefinitionMailFetch];
  v48[2] = v44;
  v47[3] = @"NanoMailSession";
  v43 = [a1 entryEventPointDefinitionNanoMailSession];
  v48[3] = v43;
  v47[4] = @"Jetsam";
  v42 = [a1 entryEventPointDefinitionJetsam];
  v48[4] = v42;
  v47[5] = @"Symptoms-NetworkAdvisory";
  v41 = [a1 entryEventPointDefinitionsSymptomsNetworkAdvisory];
  v48[5] = v41;
  v47[6] = @"BackgroundTransfer";
  v40 = [a1 entryEventPointDefinitionsBackgroundTransfer];
  v48[6] = v40;
  v47[7] = @"MobileBackupStatistics";
  v39 = [a1 entryEventPointDefinitionMobileBackupStatistics];
  v48[7] = v39;
  v47[8] = @"MobileBackupEvents";
  v38 = [a1 entryEventPointDefinitionMobileBackupEvents];
  v48[8] = v38;
  v47[9] = @"CloudKit";
  v37 = [a1 entryEventPointDefinitionCloudKit];
  v48[9] = v37;
  v47[10] = @"NetworkEnergyModel";
  v36 = [a1 entryEventPointDefinitionNetworkEnergyModel];
  v48[10] = v36;
  v47[11] = @"CacheDelete";
  v35 = [a1 entryEventPointDefinitionCacheDelete];
  v48[11] = v35;
  v47[12] = @"MachineTranslation";
  v34 = [a1 entryEventPointDefinitionMachineTranslation];
  v48[12] = v34;
  v47[13] = @"AppActivationPerformanceActivationData";
  v33 = [a1 entryEventPointDefinitionAppActivationPerformanceActivationData];
  v48[13] = v33;
  v47[14] = @"AppActivationPerformanceProcessData";
  v32 = [a1 entryEventPointDefinitionAppActivationPerformanceProcessData];
  v48[14] = v32;
  v47[15] = @"AppActivationPerformanceCPUStatistics";
  v31 = [a1 entryEventPointDefinitionAppActivationPerformanceCPUStatistics];
  v48[15] = v31;
  v47[16] = @"AppActivationPerformanceMemoryStatistics";
  v30 = [a1 entryEventPointDefinitionAppActivationPerformanceMemoryStatistics];
  v48[16] = v30;
  v47[17] = @"AppActivationPerformancePowerStateStatistics";
  v29 = [a1 entryEventPointDefinitionAppActivationPerformancePowerStateStatistics];
  v48[17] = v29;
  v47[18] = @"ShortcutsTriggerFired";
  v28 = [a1 entryEventPointDefinitionShortcutsTriggerFired];
  v48[18] = v28;
  v47[19] = @"NetworkRelayBTLinkAssertion";
  v27 = [a1 entryEventPointDefinitionNetworkRelayBTLinkAssertion];
  v48[19] = v27;
  v47[20] = @"SleepLock";
  v26 = [a1 entryEventPointDefinitionSleepLock];
  v48[20] = v26;
  v47[21] = @"WeatherNotificationState";
  v25 = [a1 entryEventPointDefinitionWeatherNotificationState];
  v48[21] = v25;
  v47[22] = @"WeatherNotification";
  v24 = [a1 entryEventPointDefinitionWeatherNotification];
  v48[22] = v24;
  v47[23] = @"TerminusBTWake";
  v23 = [a1 entryEventPointDefinitionTerminusBTWake];
  v48[23] = v23;
  v47[24] = @"PortraitHighlightsResult";
  v22 = [a1 entryEventPointDefinitioPortraitHighlightsResult];
  v48[24] = v22;
  v47[25] = @"SpotlightHighlightsResult";
  v21 = [a1 entryEventPointDefinitionSpotlightHighlightsResult];
  v48[25] = v21;
  v47[26] = @"FocusFilters";
  v20 = [a1 entryEventPointDefinitionFocusFilters];
  v48[26] = v20;
  v47[27] = @"DACalendarItemsDownloaded";
  v19 = [a1 entryEventPointDefinitionDACalendarItemsDownloaded];
  v48[27] = v19;
  v47[28] = @"DACalendarItemsUploaded";
  v18 = [a1 entryEventPointDefinitionDACalendarItemsUploaded];
  v48[28] = v18;
  v47[29] = @"navd";
  v17 = [a1 entryEventPointDefinitionNavd];
  v48[29] = v17;
  v47[30] = @"MapsWidgetSession";
  v16 = [a1 entryEventPointDefinitionNavdMapsWidgetSession];
  v48[30] = v16;
  v47[31] = @"GEONetworkActivity";
  v3 = [a1 entryEventPointDefinitionNavdGeoNetworkActivity];
  v48[31] = v3;
  v47[32] = @"MapsNavigationStateEvent";
  v4 = [a1 entryEventPointDefinitionNavdMapsNavigationStateEvent];
  v48[32] = v4;
  v47[33] = @"VehicularDetection";
  v5 = [a1 entryEventPointDefinitionLocationVehicularDetection];
  v48[33] = v5;
  v47[34] = @"MotionWakeReason";
  v6 = [a1 entryEventPointDefinitionMotionWakeReason];
  v48[34] = v6;
  v47[35] = @"CommuteRefresh";
  v7 = [a1 entryEventPointDefinitionCommuteRefresh];
  v48[35] = v7;
  v47[36] = @"SecItem";
  v8 = [a1 entryEventPointDefinitionSecItem];
  v48[36] = v8;
  v47[37] = @"SiriActivation";
  v9 = [a1 entryEventPointDefinitionSiriActivication];
  v48[37] = v9;
  v47[38] = @"SpotlightWatchdogFired";
  v10 = [a1 entryEventPointDefinitionSpotlightWatchdogFired];
  v48[38] = v10;
  v47[39] = @"AirPlayDiscoveryMode";
  v11 = [a1 entryEventPointDefinitionAirPlayDiscoveryMode];
  v48[39] = v11;
  v47[40] = @"ADD";
  v12 = [a1 entryEventPointDefinitionADD];
  v48[40] = v12;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:41];

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)entryEventPointDefinitionADD
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"APWakeReason";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v14[0] = v4;
  v13[1] = @"reasonStartTimestamp";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v14[1] = v6;
  v13[2] = @"reasonEndTimestamp";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventPointDefinitionWeatherNotificationState
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"severeNotificationEnabled";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v11[1] = @"precipitationNotificationEnabled";
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

+ (id)entryEventPointDefinitionWeatherNotification
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_28714B6D8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"channels";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v16[0] = v3;
  v15[1] = @"totalRelevantAlerts";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"totalPushes";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v16[2] = v7;
  v15[3] = @"totalNotifications";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionSleepLock
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_28714B6C8;
  v13[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"state";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionNetworkRelayBTLinkAssertion
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"client";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v11[1] = @"type";
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

+ (id)entryEventPointDefinitionTerminusBTWake
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"seqNo";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"spi";
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

+ (id)entryEventPointDefinitioPortraitHighlightsResult
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_28714B6C8;
  v19[1] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"BundleID";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat_withBundleID];
  v17[0] = v4;
  v16[1] = @"limit";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v17[1] = v6;
  v16[2] = @"portraitResultCount";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v17[2] = v8;
  v16[3] = @"portraitCacheDate";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_DateFormat];
  v17[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionSpotlightHighlightsResult
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B6C8;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"BundleID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v12[1] = @"spotlightResultCount";
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

+ (id)entryEventPointDefinitionFocusFilters
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_28714B6C8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"ExtensionCount";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v16[0] = v3;
  v15[1] = @"Reason";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"Source";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v16[2] = v7;
  v15[3] = @"SemanticType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionDASyncStart
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v16[0] = *MEMORY[0x277D3F568];
    v16[1] = v2;
    v17[0] = &unk_28714B6C8;
    v17[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v19[0] = v3;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"AccountClass";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_StringFormat];
    v15[0] = v5;
    v14[1] = @"AccountID";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat];
    v15[1] = v7;
    v14[2] = @"AccountName";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_StringFormat];
    v15[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionDACalendarItemsDownloaded
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_28714B6C8;
  v21[1] = MEMORY[0x277CBEC28];
  v20[2] = *MEMORY[0x277D3F580];
  v21[2] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"AccountClass";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v19[0] = v15;
  v18[1] = @"AccountID";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v19[1] = v4;
  v18[2] = @"AccountName";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v19[2] = v6;
  v18[3] = @"ContainerID";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v19[3] = v8;
  v18[4] = @"NumberOfItemsChanged";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionDACalendarItemsUploaded
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_28714B6C8;
  v21[1] = MEMORY[0x277CBEC28];
  v20[2] = *MEMORY[0x277D3F580];
  v21[2] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"AccountClass";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v19[0] = v15;
  v18[1] = @"AccountID";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v19[1] = v4;
  v18[2] = @"AccountName";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v19[2] = v6;
  v18[3] = @"ContainerID";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v19[3] = v8;
  v18[4] = @"NumberOfItemsChanged";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionMailFetch
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_28714B6C8;
  v23[1] = MEMORY[0x277CBEC28];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"account";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat];
  v21[0] = v17;
  v20[1] = @"cause";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v21[1] = v15;
  v20[2] = @"duration";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v21[2] = v4;
  v20[3] = @"rx";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v21[3] = v6;
  v20[4] = @"tx";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v21[4] = v8;
  v20[5] = @"wifi";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_BoolFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionNanoMailSession
{
  v21[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isWatch])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v18[0] = *MEMORY[0x277D3F568];
    v18[1] = v2;
    v19[0] = &unk_28714B6C8;
    v19[1] = MEMORY[0x277CBEC28];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"Category";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v17[0] = v4;
    v16[1] = @"Duration";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_s];
    v17[1] = v6;
    v16[2] = @"Account type";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v17[2] = v8;
    v16[3] = @"Network interface";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v17[3] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
    v21[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionTestMarkers
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B6C8;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Status";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v12[1] = @"TestName";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionJetsam
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_28714B6C8;
    v13[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"Level";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v11 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionsSymptomsNetworkAdvisory
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B6C8;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"advisoryKey";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"Network Type";
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

+ (id)entryEventPointDefinitionsBackgroundTransfer
{
  v51[2] = *MEMORY[0x277D85DE8];
  v50[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v48[0] = *MEMORY[0x277D3F568];
  v48[1] = v2;
  v49[0] = &unk_28714B6E8;
  v49[1] = MEMORY[0x277CBEC28];
  v48[2] = *MEMORY[0x277D3F4A0];
  v49[2] = MEMORY[0x277CBEC38];
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
  v51[0] = v45;
  v50[1] = *MEMORY[0x277D3F540];
  v46[0] = @"taskKind";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_IntegerFormat];
  v47[0] = v43;
  v46[1] = @"taskID";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_IntegerFormat];
  v47[1] = v41;
  v46[2] = @"bundleID";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_StringFormat_withBundleID];
  v47[2] = v39;
  v46[3] = @"taskUUID";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_StringFormat];
  v47[3] = v37;
  v46[4] = @"sessionID";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_StringFormat];
  v47[4] = v35;
  v46[5] = @"state";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v47[5] = v33;
  v46[6] = @"bytesSent";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_IntegerFormat];
  v47[6] = v31;
  v46[7] = @"bytesReceived";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v47[7] = v29;
  v46[8] = @"willRetry";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v47[8] = v27;
  v46[9] = @"previousFailureCount";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v47[9] = v25;
  v46[10] = @"interfaceName";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_StringFormat];
  v47[10] = v23;
  v46[11] = @"errorCode";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v47[11] = v21;
  v46[12] = @"errorDomain";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat];
  v47[12] = v19;
  v46[13] = @"errorCFStreamErrorCode";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v47[13] = v17;
  v46[14] = @"errorCFStreamErrorDomain";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v47[14] = v15;
  v46[15] = @"errorFailingURLSessionTask";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v47[15] = v4;
  v46[16] = @"errorFailingURL";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v47[16] = v6;
  v46[17] = @"isDiscretionary";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_BoolFormat];
  v47[17] = v8;
  v46[18] = @"isDataBudgetingEnabled";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_BoolFormat];
  v47[18] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:19];
  v51[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionNavd
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_28714B6C8;
  v13[1] = MEMORY[0x277CBEC28];
  v12[2] = *MEMORY[0x277D3F580];
  v13[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"EventRequest";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionNavdMapsWidgetSession
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_28714B6C8;
  v19[1] = MEMORY[0x277CBEC28];
  v18[2] = *MEMORY[0x277D3F580];
  v19[2] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"StartUnix";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v17[0] = v4;
  v16[1] = @"EndUnix";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v17[1] = v6;
  v16[2] = @"ScreenLocked";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v17[2] = v8;
  v16[3] = @"TransportType";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v17[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionNavdGeoNetworkActivity
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_28714B6F8;
  v21[1] = MEMORY[0x277CBEC28];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"StartUnix";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v19[0] = v15;
  v18[1] = @"EndUnix";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v19[1] = v4;
  v18[2] = @"Client";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v19[2] = v6;
  v18[3] = @"NetworkingReason";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v19[3] = v8;
  v18[4] = @"RequestCount";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionNavdMapsNavigationStateEvent
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_28714B6F8;
  v23[1] = MEMORY[0x277CBEC28];
  v22[2] = *MEMORY[0x277D3F580];
  v23[2] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"StartUnix";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v21[0] = v17;
  v20[1] = @"EndUnix";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v21[1] = v15;
  v20[2] = @"NightMode";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v21[2] = v4;
  v20[3] = @"NavigationType";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v21[3] = v6;
  v20[4] = @"NavigationAppState";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v21[4] = v8;
  v20[5] = @"NavigationMapType";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionMobileBackupStatistics
{
  v53[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v52[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v50[0] = *MEMORY[0x277D3F568];
    v50[1] = v2;
    v51[0] = &unk_28714B708;
    v51[1] = MEMORY[0x277CBEC28];
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
    v53[0] = v47;
    v52[1] = *MEMORY[0x277D3F540];
    v48[0] = @"DomainName";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_StringFormat];
    v49[0] = v45;
    v48[1] = @"DirectoryCount";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v49[1] = v43;
    v48[2] = @"FileCount";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_IntegerFormat];
    v49[2] = v41;
    v48[3] = @"SymLinkCount";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v49[3] = v39;
    v48[4] = @"SparseFileCount";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_IntegerFormat];
    v49[4] = v37;
    v48[5] = @"EncryptionKeyCount";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v49[5] = v35;
    v48[6] = @"DeletionMarkerCount";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v49[6] = v33;
    v48[7] = @"DataProtectionACount";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v49[7] = v31;
    v48[8] = @"DataProtectionBCount";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v49[8] = v29;
    v48[9] = @"DataProtectionCCount";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v49[9] = v27;
    v48[10] = @"DataProtectionDCount";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v49[10] = v25;
    v48[11] = @"SQLiteFileCount";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v49[11] = v23;
    v48[12] = @"TotalSQLiteFileSize";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v49[12] = v21;
    v48[13] = @"TotalFileSize";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v49[13] = v19;
    v48[14] = @"TotalResourceSize";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v49[14] = v17;
    v48[15] = @"TotalAttributeSize";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v49[15] = v15;
    v48[16] = @"RecordChurnPct";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v49[16] = v4;
    v48[17] = @"ContentChurnPct";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v49[17] = v6;
    v48[18] = @"FailureCount";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v49[18] = v8;
    v48[19] = @"BackupType";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v49[19] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:20];
    v53[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionMobileBackupEvents
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_28714B6C8;
    v21[1] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"end";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_DateFormat];
    v19[0] = v15;
    v18[1] = @"finished";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_BoolFormat];
    v19[1] = v4;
    v18[2] = @"hasError";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_BoolFormat];
    v19[2] = v6;
    v18[3] = @"start";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_DateFormat];
    v19[3] = v8;
    v18[4] = @"state";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_StringFormat];
    v19[4] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v23[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionAppActivationPerformanceActivationData
{
  v29[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v28[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v26[0] = *MEMORY[0x277D3F568];
    v26[1] = v2;
    v27[0] = &unk_28714B6C8;
    v27[1] = MEMORY[0x277CBEC28];
    v26[2] = *MEMORY[0x277D3F4A0];
    v27[2] = MEMORY[0x277CBEC38];
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v29[0] = v23;
    v28[1] = *MEMORY[0x277D3F540];
    v24[0] = @"ActivationID";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v25[0] = v21;
    v24[1] = @"UniqueID";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v25[1] = v19;
    v24[2] = @"BundleID";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_StringFormat_withBundleID];
    v25[2] = v17;
    v24[3] = @"ActivationDuration_ms";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v25[3] = v15;
    v24[4] = @"ActivationResult";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v25[4] = v4;
    v24[5] = @"ActivationType";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v25[5] = v6;
    v24[6] = @"SystemUptime";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v25[6] = v8;
    v24[7] = @"ActivationFlags";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v25[7] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:8];
    v29[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionAppActivationPerformanceProcessData
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_28714B6C8;
    v15[1] = MEMORY[0x277CBEC28];
    v14[2] = *MEMORY[0x277D3F4A0];
    v15[2] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"UniqueID";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v12[1] = @"ProcessName";
    v13[0] = v5;
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat_withProcessName];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v17[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionAppActivationPerformanceCPUStatistics
{
  v41[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v40[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v38[0] = *MEMORY[0x277D3F568];
    v38[1] = v2;
    v39[0] = &unk_28714B6C8;
    v39[1] = MEMORY[0x277CBEC28];
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v41[0] = v35;
    v40[1] = *MEMORY[0x277D3F540];
    v36[0] = @"ActivationID";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v37[0] = v33;
    v36[1] = @"UniqueID";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v37[1] = v31;
    v36[2] = @"TotalCPU_ms";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v37[2] = v29;
    v36[3] = @"QOSDisabled_ms";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v37[3] = v27;
    v36[4] = @"QOSUserInteractive_ms";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v37[4] = v25;
    v36[5] = @"QOSUserInitiated_ms";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v37[5] = v23;
    v36[6] = @"QOSDefault_ms";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v37[6] = v21;
    v36[7] = @"QOSUtility_ms";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v37[7] = v19;
    v36[8] = @"QOSMaintenance_ms";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v37[8] = v17;
    v36[9] = @"QOSBackground_ms";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v37[9] = v15;
    v36[10] = @"IOReads_kb";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v37[10] = v4;
    v36[11] = @"IOWrites_kb";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v37[11] = v6;
    v36[12] = @"PageIns";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v37[12] = v8;
    v36[13] = @"ProcessLifecycleState";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v37[13] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:14];
    v41[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionAppActivationPerformanceMemoryStatistics
{
  v61[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v60[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v58[0] = *MEMORY[0x277D3F568];
    v58[1] = v2;
    v59[0] = &unk_28714B6C8;
    v59[1] = MEMORY[0x277CBEC28];
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    v61[0] = v55;
    v60[1] = *MEMORY[0x277D3F540];
    v56[0] = @"SequenceID";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_IntegerFormat];
    v57[0] = v53;
    v56[1] = @"ActivationID";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_IntegerFormat];
    v57[1] = v51;
    v56[2] = @"FreeQueue";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_IntegerFormat];
    v57[2] = v49;
    v56[3] = @"ActiveQueue";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_IntegerFormat];
    v57[3] = v47;
    v56[4] = @"InactiveQueue";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_IntegerFormat];
    v57[4] = v45;
    v56[5] = @"SpeculativeQueue";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v57[5] = v43;
    v56[6] = @"ThrottledQueue";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_IntegerFormat];
    v57[6] = v41;
    v56[7] = @"WiredQueue";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v57[7] = v39;
    v56[8] = @"PurgeableQueue";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_IntegerFormat];
    v57[8] = v37;
    v56[9] = @"FileBackedQueue";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v57[9] = v35;
    v56[10] = @"AnonymousQueue";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v57[10] = v33;
    v56[11] = @"Faults";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v57[11] = v31;
    v56[12] = @"CopyOnWriteFault";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v57[12] = v29;
    v56[13] = @"ZeroFill";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v57[13] = v27;
    v56[14] = @"Reactivated";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v57[14] = v25;
    v56[15] = @"Purged";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v57[15] = v23;
    v56[16] = @"TotalCompressed";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v57[16] = v21;
    v56[17] = @"CompressorSize";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v57[17] = v19;
    v56[18] = @"Decompressions";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v57[18] = v17;
    v56[19] = @"Compressions";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v57[19] = v15;
    v56[20] = @"PageIns";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v57[20] = v4;
    v56[21] = @"PageOuts";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v57[21] = v6;
    v56[22] = @"SwapIns";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v57[22] = v8;
    v56[23] = @"SwapOuts";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v57[23] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:24];
    v61[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionAppActivationPerformancePowerStateStatistics
{
  v21[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v18[0] = *MEMORY[0x277D3F568];
    v18[1] = v2;
    v19[0] = &unk_28714B6C8;
    v19[1] = MEMORY[0x277CBEC28];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"ActivationID";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v17[0] = v4;
    v16[1] = @"CPU";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v17[1] = v6;
    v16[2] = @"State";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v17[2] = v8;
    v16[3] = @"DutyCycle";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v17[3] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
    v21[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionCloudKit
{
  v83[2] = *MEMORY[0x277D85DE8];
  v82[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v80[0] = *MEMORY[0x277D3F568];
  v80[1] = v2;
  v81[0] = &unk_28714B718;
  v81[1] = MEMORY[0x277CBEC28];
  v80[2] = *MEMORY[0x277D3F4A0];
  v81[2] = MEMORY[0x277CBEC38];
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v83[0] = v77;
  v82[1] = *MEMORY[0x277D3F540];
  v78[0] = @"operationID";
  v76 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v76 commonTypeDict_StringFormat];
  v79[0] = v75;
  v78[1] = @"operationType";
  v74 = [MEMORY[0x277D3F198] sharedInstance];
  v73 = [v74 commonTypeDict_IntegerFormat];
  v79[1] = v73;
  v78[2] = @"containerIdentifier";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_StringFormat];
  v79[2] = v71;
  v78[3] = @"containerEnvironment";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_IntegerFormat];
  v79[3] = v69;
  v78[4] = @"bundleIdentifier";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_StringFormat_withBundleID];
  v79[4] = v67;
  v78[5] = @"sourceAppBundleIdentifier";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_StringFormat_withAppName];
  v79[5] = v65;
  v78[6] = @"CKStartDate";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_DateFormat];
  v79[6] = v63;
  v78[7] = @"CKDuration";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_RealFormat];
  v79[7] = v61;
  v78[8] = @"CKBytesUploaded";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_IntegerFormat];
  v79[8] = v59;
  v78[9] = @"CKBytesDownloaded";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_IntegerFormat];
  v79[9] = v57;
  v78[10] = @"CKConnections";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_IntegerFormat];
  v79[10] = v55;
  v78[11] = @"CKConnectionsCreated";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_IntegerFormat];
  v79[11] = v53;
  v78[12] = @"CKRecordsUploaded";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_IntegerFormat];
  v79[12] = v51;
  v78[13] = @"CKRecordsDownloaded";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_IntegerFormat];
  v79[13] = v49;
  v78[14] = @"CKRecordsDeleted";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_IntegerFormat];
  v79[14] = v47;
  v78[15] = @"CKRetries";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_IntegerFormat];
  v79[15] = v45;
  v78[16] = @"MMCSDuration";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_RealFormat];
  v79[16] = v43;
  v78[17] = @"MMCSBytesUploaded";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_IntegerFormat];
  v79[17] = v41;
  v78[18] = @"MMCSBytesDownloaded";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_IntegerFormat];
  v79[18] = v39;
  v78[19] = @"MMCSConnections";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_IntegerFormat];
  v79[19] = v37;
  v78[20] = @"MMCSConnectionsCreated";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_IntegerFormat];
  v79[20] = v35;
  v78[21] = @"CKRequestUUIDs";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_StringFormat];
  v79[21] = v33;
  v78[22] = @"MMCSRequestUUIDs";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_StringFormat];
  v79[22] = v31;
  v78[23] = @"operationGroupID";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_StringFormat];
  v79[23] = v29;
  v78[24] = @"operationGroupName";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_StringFormat];
  v79[24] = v27;
  v78[25] = @"operationGroupQuantity";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v79[25] = v25;
  v78[26] = @"CKNumberOfRequests";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v79[26] = v23;
  v78[27] = @"MMCSNumberOfRequests";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v79[27] = v21;
  v78[28] = @"operationQualityOfService";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v79[28] = v19;
  v78[29] = @"CKProtoRequestOperationsByCount";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat];
  v79[29] = v17;
  v78[30] = @"CKAssetsUploaded";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v79[30] = v15;
  v78[31] = @"CKAssetsUploadedFileSize";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v79[31] = v4;
  v78[32] = @"CKAssetsDownloaded";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v79[32] = v6;
  v78[33] = @"CKAssetsDownloadedFileSize";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v79[33] = v8;
  v78[34] = @"ZoneNames";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v79[34] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:35];
  v83[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionLocationVehicularDetection
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_28714B6C8;
  v13[1] = MEMORY[0x277CBEC28];
  v12[2] = *MEMORY[0x277D3F580];
  v13[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Mode";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionMotionWakeReason
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_28714B6C8;
  v13[1] = MEMORY[0x277CBEC28];
  v12[2] = *MEMORY[0x277D3F580];
  v13[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"OscarWakeReason";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionCommuteRefresh
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_28714B6C8;
  v29[1] = MEMORY[0x277CBEC28];
  v28[2] = *MEMORY[0x277D3F580];
  v29[2] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"LOIEntryDate";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v27[0] = v23;
  v26[1] = @"LOIExitDate";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v27[1] = v21;
  v26[2] = @"destinationLOI";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v27[2] = v19;
  v26[3] = @"endDate";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v27[3] = v17;
  v26[4] = @"networkRequest";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v27[4] = v15;
  v26[5] = @"notified";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v27[5] = v4;
  v26[6] = @"scheduledWakeup";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v27[6] = v6;
  v26[7] = @"startDate";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v27[7] = v8;
  v26[8] = @"trigger";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionCacheDelete
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_28714B6C8;
  v23[1] = MEMORY[0x277CBEC28];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"operationType";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v21[0] = v17;
  v20[1] = @"urgencyLevel";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v21[1] = v15;
  v20[2] = @"serviceName";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v21[2] = v4;
  v20[3] = @"duration";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v21[3] = v6;
  v20[4] = @"requestedBytes";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v21[4] = v8;
  v20[5] = @"purgedBytes";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionMachineTranslation
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_28714B6C8;
  v16[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4F0];
  v15[2] = *MEMORY[0x277D3F4A0];
  v15[3] = v3;
  v16[2] = MEMORY[0x277CBEC38];
  v16[3] = &unk_28714D460;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v18[0] = v4;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"processName";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withProcessName];
  v13[1] = @"requestType";
  v14[0] = v6;
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventPointDefinitionSecItem
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B6C8;
  v15[1] = MEMORY[0x277CBEC28];
  v14[2] = *MEMORY[0x277D3F580];
  v15[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"operation";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v12[1] = @"AccessGroup";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionSiriActivication
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isWatch])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_28714B6C8;
    v15[1] = MEMORY[0x277CBEC28];
    v14[2] = *MEMORY[0x277D3F580];
    v15[2] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"event";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v12[1] = @"mode";
    v13[0] = v5;
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v17[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionSpotlightWatchdogFired
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_28714B6C8;
    v13[1] = MEMORY[0x277CBEC28];
    v12[2] = *MEMORY[0x277D3F580];
    v13[2] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"indexingWatchdogFired";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v11 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionShortcutsTriggerFired
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS])
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v22[0] = *MEMORY[0x277D3F568];
    v22[1] = v2;
    v23[0] = &unk_28714B6C8;
    v23[1] = MEMORY[0x277CBEC28];
    v22[2] = *MEMORY[0x277D3F4A0];
    v23[2] = MEMORY[0x277CBEC38];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v25[0] = v19;
    v24[1] = *MEMORY[0x277D3F540];
    v20[0] = @"WFTriggerKind";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v21[0] = v17;
    v20[1] = @"WFActionCount";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v21[1] = v15;
    v20[2] = @"WFTriggerID";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_StringFormat];
    v21[2] = v4;
    v20[3] = @"WFWorkflowID";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_StringFormat];
    v21[3] = v6;
    v20[4] = @"WFWorkflowName";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_StringFormat];
    v21[4] = v8;
    v20[5] = @"WFAssociatedAppBundleID";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_StringFormat_withBundleID];
    v21[5] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
    v25[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionAirPlayDiscoveryMode
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Mode";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitions
{
  v45[38] = *MEMORY[0x277D85DE8];
  v44[0] = @"UIKitKeyboard";
  v43 = [a1 entryEventForwardDefinitionUIKitKeyboard];
  v45[0] = v43;
  v44[1] = @"UIKitActivity";
  v42 = [a1 entryEventForwardDefinitionUIKitActivity];
  v45[1] = v42;
  v44[2] = @"SafariFetcher";
  v41 = [a1 entryEventForwardDefinitionSafariFetcher];
  v45[2] = v41;
  v44[3] = @"AppAccessory";
  v40 = [a1 entryEventForwardDefinitionAppAccessory];
  v45[3] = v40;
  v44[4] = @"InCallService";
  v39 = [a1 entryEventForwardDefinitionInCallService];
  v45[4] = v39;
  v44[5] = @"WebApp";
  v38 = [a1 entryEventForwardDefinitionWebApp];
  v45[5] = v38;
  v44[6] = @"ThermalLevel";
  v37 = [a1 entryEventForwardDefinitionThermalLevel];
  v45[6] = v37;
  v44[7] = @"AirDrop";
  v36 = [a1 entryEventForwardDefinitionAirDrop];
  v45[7] = v36;
  v44[8] = @"AirDropSession";
  v35 = [a1 entryEventForwardDefinitionAirDropSession];
  v45[8] = v35;
  v44[9] = @"Accessory";
  v34 = [a1 entryEventForwardDefinitionAccessory];
  v45[9] = v34;
  v44[10] = @"UARPStatus";
  v33 = [a1 entryEventForwardDefinitionUARPStatus];
  v45[10] = v33;
  v44[11] = @"CallScreeningEnabled";
  v32 = [a1 entryEventForwardCallScreeningEnabled];
  v45[11] = v32;
  v44[12] = @"SOSKVSRateLimitingEvent";
  v31 = [a1 entryEventForwardDefinitionSOSKVSRateLimitingEvent];
  v45[12] = v31;
  v44[13] = @"ThermalHiP";
  v30 = [a1 entryEventForwardDefinitionThermalHiP];
  v45[13] = v30;
  v44[14] = @"AppleBacklightBrightness";
  v29 = [a1 entryEventForwardDefinitionAppleBacklightBrightness];
  v45[14] = v29;
  v44[15] = @"UIKitEclipse";
  v28 = [a1 entryEventForwardDefinitionUIKitEclipse];
  v45[15] = v28;
  v44[16] = @"Dosimetry";
  v27 = +[PLXPCAgent entryEventForwardDefinitionsDosimetry];
  v45[16] = v27;
  v44[17] = @"SecondaryDisplay";
  v26 = [a1 entryEventForwardDefinitionSecondaryDisplay];
  v45[17] = v26;
  v44[18] = @"SleepMode";
  v25 = [a1 entryEventForwardDefinitionSleepMode];
  v45[18] = v25;
  v44[19] = @"SpatialAudio";
  v24 = [a1 entryEventForwardDefinitionSpatialAudio];
  v45[19] = v24;
  v44[20] = @"ThermalSensors";
  v23 = [a1 entryEventForwardDefinitionThermalSensors];
  v45[20] = v23;
  v44[21] = @"TelephonyState";
  v22 = [a1 entryEventForwardDefinitionTelephonyState];
  v45[21] = v22;
  v44[22] = @"PreferredLink";
  v21 = [a1 entryEventForwardDefinitionPreferredLink];
  v45[22] = v21;
  v44[23] = @"AudioRouting";
  v20 = [a1 entryEventForwardDefinitionAudioRouting];
  v45[23] = v20;
  v44[24] = @"WirelessSync";
  v19 = [a1 entryEventForwardDefinitionWirelessSync];
  v45[24] = v19;
  v44[25] = @"EnhancedDiscovery";
  v18 = [a1 entryEventForwardDefinitionEnhancedDiscovery];
  v45[25] = v18;
  v44[26] = @"Siri";
  v17 = [a1 entryEventForwardDefinitionSiri];
  v45[26] = v17;
  v44[27] = @"UIKitAlert";
  v16 = [a1 entryEventForwardDefinitionUIKitAlert];
  v45[27] = v16;
  v44[28] = @"AccessoryMotion";
  v3 = [a1 entryEventForwardDefinitionAccessoryMotion];
  v45[28] = v3;
  v44[29] = @"MXDiscoveryLevel";
  v4 = [a1 entryEventForwardDefinitionMXDiscoveryLevel];
  v45[29] = v4;
  v44[30] = @"RapidSecurityResponse";
  v5 = [a1 entryEventForwardDefinitionRapidSecurityResponse];
  v45[30] = v5;
  v44[31] = @"CarPlay";
  v6 = [a1 entryEventForwardDefinitionCarPlay];
  v45[31] = v6;
  v44[32] = @"CarPlayScreens";
  v7 = [a1 entryEventForwardDefinitionCarPlayScreens];
  v45[32] = v7;
  v44[33] = @"NetworkRelay";
  v8 = [a1 entryEventForwardDefinitionNetworkRelay];
  v45[33] = v8;
  v44[34] = @"NetworkRelayWiFiAssertion";
  v9 = [a1 entryEventForwardDefinitionNetworkRelayWiFiAssertion];
  v45[34] = v9;
  v44[35] = @"WatchPresence";
  v10 = [a1 entryEventForwardDefinitionWatchPresence];
  v45[35] = v10;
  v44[36] = @"PasskeyAuthentication";
  v11 = [a1 entryEventForwardDefinitionPasskeyAuthentication];
  v45[36] = v11;
  v44[37] = @"AvailabilityModes";
  v12 = [a1 entryEventForwardDefinitionAvailabilityModes];
  v45[37] = v12;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:38];

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)entryEventForwardDefinitionAvailabilityModes
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v19 = *MEMORY[0x277D3F568];
  v20 = &unk_28714B6C8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"Available";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_BoolFormat];
  v18[0] = v14;
  v17[1] = @"ExtensionCount";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v18[1] = v3;
  v17[2] = @"Reason";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v18[2] = v5;
  v17[3] = @"Source";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v18[3] = v7;
  v17[4] = @"SemanticType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v18[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionWatchPresence
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B6C8;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Event";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"RSSI";
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

+ (id)entryEventForwardDefinitionUIKitKeyboard
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v16[0] = *MEMORY[0x277D3F568];
    v16[1] = v2;
    v17[0] = &unk_28714B728;
    v17[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v19[0] = v3;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"Status";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_BoolFormat];
    v15[0] = v5;
    v14[1] = @"Keyboard-ID";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat];
    v15[1] = v7;
    v14[2] = @"Process-ID";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v15[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionUIKitEclipse
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_28714B6C8;
    v15[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"Mode";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v12[1] = @"Value";
    v13[0] = v5;
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v17[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionMXDiscoveryLevel
{
  v33[3] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_28714B6D8;
  v31[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4A0];
  v31[2] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277D3F4F0];
  v30[2] = v3;
  v30[3] = v4;
  v29[0] = @"Level";
  v29[1] = @"Client";
  v29[2] = @"OnBehalfOf";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v31[3] = v22;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v33[0] = v21;
  v32[1] = *MEMORY[0x277D3F540];
  v27[0] = @"ObjectHash";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat];
  v28[0] = v19;
  v27[1] = @"Client";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat_withAppName];
  v28[1] = v17;
  v27[2] = @"Level";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v28[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v33[1] = v7;
  v32[2] = *MEMORY[0x277D3F500];
  v25[0] = @"key";
  v23 = @"OnBehalfOf";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat_withBundleID];
  v24 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v25[1] = @"value";
  v26[0] = v10;
  v11 = [MEMORY[0x277D3F198] sharedInstance];
  v12 = [v11 commonTypeDict_StringFormat];
  v26[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v33[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventForwardDefinitionCarPlay
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_28714B6C8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"Activated";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_BoolFormat];
    v14[0] = v4;
    v13[1] = @"Wireless";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_BoolFormat];
    v14[1] = v6;
    v13[2] = @"SessionID";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
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

+ (id)entryEventForwardDefinitionCarPlayScreens
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v17 = *MEMORY[0x277D3F568];
    v18 = &unk_28714B6D8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v14;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"Resume";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_BoolFormat];
    v16[0] = v3;
    v15[1] = @"SessionID";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v16[1] = v5;
    v15[2] = @"ScreenUUID";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat];
    v16[2] = v7;
    v15[3] = @"Size";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v16[3] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    v20[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionSecondaryDisplay
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiPad] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isMac"))
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v16[0] = *MEMORY[0x277D3F568];
    v16[1] = v2;
    v17[0] = &unk_28714B6C8;
    v17[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v19[0] = v3;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"IsConnected";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v15[0] = v5;
    v14[1] = @"Codec";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat];
    v15[1] = v7;
    v14[2] = @"Transport";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v15[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionSpatialAudio
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_28714B6F8;
  v20[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4F0];
  v19[2] = *MEMORY[0x277D3F4A0];
  v19[3] = v3;
  v20[2] = MEMORY[0x277CBEC38];
  v20[3] = &unk_28714D478;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"processName";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withProcessName];
  v18[0] = v5;
  v17[1] = @"spatialAudio";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v18[1] = v7;
  v17[2] = @"headTracking";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_BoolFormat];
  v18[2] = v9;
  v17[3] = @"up-mixing";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_BoolFormat];
  v18[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v22[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventForwardDefinitionAccessoryMotion
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_28714B6C8;
  v17[1] = MEMORY[0x277CBEC28];
  v16[2] = *MEMORY[0x277D3F4A0];
  v17[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"client";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v15[0] = v5;
  v14[1] = @"tracking";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v15[1] = v7;
  v14[2] = @"eventType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionAudioRouting
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B6C8;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"EventType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"ScanType";
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

+ (id)entryEventForwardDefinitionUIKitActivity
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_28714B6C8;
    v13[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"Status";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_BoolFormat];
    v11 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionUIKitAlert
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_28714B6C8;
    v13[1] = MEMORY[0x277CBEC28];
    v12[2] = *MEMORY[0x277D3F580];
    v13[2] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"Status";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_BoolFormat];
    v11 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionSafariFetcher
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B6C8;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"subevent";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v12[1] = @"item";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionAccessory
{
  v36[2] = *MEMORY[0x277D85DE8];
  v35[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v33[0] = *MEMORY[0x277D3F568];
  v33[1] = v2;
  v34[0] = &unk_28714B6C8;
  v34[1] = MEMORY[0x277CBEC28];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v36[0] = v28;
  v35[1] = *MEMORY[0x277D3F540];
  v31[0] = *MEMORY[0x277D18390];
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_BoolFormat];
  v32[0] = v26;
  v31[1] = *MEMORY[0x277D183F0];
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_StringFormat];
  v32[1] = v24;
  v31[2] = *MEMORY[0x277D183E0];
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_StringFormat];
  v32[2] = v22;
  v31[3] = *MEMORY[0x277D183E8];
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_StringFormat];
  v32[3] = v20;
  v31[4] = *MEMORY[0x277D18458];
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_StringFormat];
  v32[4] = v18;
  v31[5] = *MEMORY[0x277D183B8];
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat];
  v32[5] = v16;
  v31[6] = *MEMORY[0x277D183C8];
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v15 commonTypeDict_StringFormat];
  v32[6] = v3;
  v31[7] = *MEMORY[0x277D18450];
  v29 = *MEMORY[0x277D3F5A8];
  v30 = &unk_287146498;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v32[7] = v4;
  v31[8] = *MEMORY[0x277D18448];
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v32[8] = v6;
  v31[9] = *MEMORY[0x277D18398];
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v32[9] = v8;
  v31[10] = *MEMORY[0x277D18468];
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v32[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:11];
  v36[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionAppAccessory
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_28714B6C8;
  v21[1] = MEMORY[0x277CBEC28];
  v20[2] = *MEMORY[0x277D3F4A0];
  v21[2] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = *MEMORY[0x277D184A8];
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_BoolFormat];
  v19[0] = v15;
  v18[1] = *MEMORY[0x277D184A0];
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat_withBundleID];
  v19[1] = v4;
  v18[2] = *MEMORY[0x277D183F0];
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v19[2] = v6;
  v18[3] = *MEMORY[0x277D184B0];
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v19[3] = v8;
  v18[4] = *MEMORY[0x277D18370];
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionUARPStatus
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_28714B6C8;
  v25[1] = MEMORY[0x277CBEC28];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"state";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v23[0] = v19;
  v22[1] = @"model";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat];
  v23[1] = v17;
  v22[2] = @"requestOffset";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[2] = v15;
  v22[3] = @"bytesTransferred";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v23[3] = v4;
  v22[4] = @"activeFWVers";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v23[4] = v6;
  v22[5] = @"fwVersion";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v23[5] = v8;
  v22[6] = @"error";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v23[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardCallScreeningEnabled
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Enabled";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionAirDrop
{
  v21[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v18[0] = *MEMORY[0x277D3F568];
    v18[1] = v2;
    v19[0] = &unk_28714B6C8;
    v19[1] = MEMORY[0x277CBEC28];
    v18[2] = *MEMORY[0x277D3F4A0];
    v19[2] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"Subevent";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_StringFormat];
    v17[0] = v4;
    v16[1] = @"State";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_StringFormat];
    v17[1] = v6;
    v16[2] = @"bundleId";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_StringFormat_withBundleID];
    v17[2] = v8;
    v16[3] = @"pid";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v17[3] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
    v21[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionAirDropSession
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v19 = *MEMORY[0x277D3F568];
  v20 = &unk_28714B6C8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"FileSize";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v18[0] = v14;
  v17[1] = @"Identifier";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_StringFormat];
  v18[1] = v3;
  v17[2] = @"Interface";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v18[2] = v5;
  v17[3] = @"Subevent";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v18[3] = v7;
  v17[4] = @"State";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v18[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionSiri
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_28714B6C8;
  v13[1] = MEMORY[0x277CBEC28];
  v12[2] = *MEMORY[0x277D3F580];
  v13[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"event";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionInCallService
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_28714B6D8;
  v21[1] = MEMORY[0x277CBEC28];
  v20[2] = *MEMORY[0x277D3F4A0];
  v21[2] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"bundleID";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat_withBundleID];
  v19[0] = v15;
  v18[1] = @"status";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v19[1] = v4;
  v18[2] = @"kCallSubType";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v19[2] = v6;
  v18[3] = @"providerIdentifier";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v19[3] = v8;
  v18[4] = @"video";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_BoolFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionWebApp
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v16[0] = *MEMORY[0x277D3F568];
    v16[1] = v2;
    v17[0] = &unk_28714B6C8;
    v17[1] = MEMORY[0x277CBEC28];
    v16[2] = *MEMORY[0x277D3F4A0];
    v17[2] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v19[0] = v3;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"identifier";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_StringFormat_withAppName];
    v15[0] = v5;
    v14[1] = @"title";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat];
    v15[1] = v7;
    v14[2] = @"url";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_StringFormat];
    v15[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionThermalLevel
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_28714B6C8;
  v17[1] = MEMORY[0x277CBEC38];
  v16[2] = *MEMORY[0x277D3F550];
  v17[2] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"startOffset";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v15[0] = v5;
  v14[1] = @"thermalLevel";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"pressureLevel";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionThermalHiP
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_28714B6C8;
  v19[1] = MEMORY[0x277CBEC28];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"timeOffset";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v17[0] = v4;
  v16[1] = @"status";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v17[1] = v6;
  v16[2] = @"client";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v17[2] = v8;
  v16[3] = @"count";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v17[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionSOSKVSRateLimitingEvent
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_28714B6C8;
  v17[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"AccessGroup";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v15[0] = v5;
  v14[1] = @"BadnessLevel";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"peerShouldSend";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_BoolFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionAppleBacklightBrightness
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_28714B6D8;
  v13[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"linearBrightness";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionNetworkRelay
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_28714B6F8;
  v17[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"QuickRelayClients";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withProcessName];
  v15[0] = v5;
  v14[1] = @"State";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"SessionID";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionNetworkRelayWiFiAssertion
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_28714B6C8;
  v19[1] = MEMORY[0x277CBEC28];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"WiFiWoWState";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v17[0] = v4;
  v16[1] = @"WiFiClientType";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v17[1] = v6;
  v16[2] = @"WiFiAssertionReason";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v17[2] = v8;
  v16[3] = @"WiFiAssertionClients";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v17[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionSleepMode
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_28714B6C8;
  v17[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"state";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v15[0] = v5;
  v14[1] = @"specificState";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"sleepScreenEnabled";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_BoolFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionsDosimetry
{
  v14[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isWatch])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_28714B6C8;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"noiseEnabled";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_BoolFormat];
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

+ (id)entryEventForwardDefinitionThermalSensors
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v33[0] = &unk_28714B6C8;
  v33[1] = MEMORY[0x277CBEC28];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v35[0] = v29;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"TS0A";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v31[0] = v27;
  v30[1] = @"TG0B";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v31[1] = v25;
  v30[2] = @"TSBa";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v31[2] = v23;
  v30[3] = @"TSBE";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v31[3] = v21;
  v30[4] = @"TSBH";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v31[4] = v19;
  v30[5] = @"TSRM";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v31[5] = v17;
  v30[6] = @"TSBQ";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v31[6] = v15;
  v30[7] = @"TSBR";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v31[7] = v4;
  v30[8] = @"TSFC";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v31[8] = v6;
  v30[9] = @"TSFD";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v31[9] = v8;
  v30[10] = @"PG0B";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v31[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
  v35[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionWirelessSync
{
  v22[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isTVOS])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v21[0] = *MEMORY[0x277D3F4E8];
    v19 = *MEMORY[0x277D3F568];
    v20 = &unk_28714B6C8;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[0] = v16;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"HostClient";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_StringFormat];
    v18[0] = v14;
    v17[1] = @"Service";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_StringFormat];
    v18[1] = v4;
    v17[2] = @"ServiceInstanceID";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_StringFormat];
    v18[2] = v6;
    v17[3] = @"DurationSeconds";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v18[3] = v8;
    v17[4] = @"SyncStart";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_BoolFormat];
    v18[4] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
    v22[1] = v11;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entryEventForwardDefinitionPasskeyAuthentication
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"AuthenticationDidStart";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionEnhancedDiscovery
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Reason";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v11[1] = @"Enabled";
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

+ (id)entryEventForwardDefinitionRapidSecurityResponse
{
  v58[2] = *MEMORY[0x277D85DE8];
  v57[0] = *MEMORY[0x277D3F4E8];
  v55 = *MEMORY[0x277D3F568];
  v56 = &unk_28714B6C8;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v58[0] = v52;
  v57[1] = *MEMORY[0x277D3F540];
  v53[0] = @"EventType";
  v51 = [MEMORY[0x277D3F198] sharedInstance];
  v50 = [v51 commonTypeDict_IntegerFormat];
  v54[0] = v50;
  v53[1] = @"event";
  v49 = [MEMORY[0x277D3F198] sharedInstance];
  v48 = [v49 commonTypeDict_IntegerFormat];
  v54[1] = v48;
  v53[2] = @"RequestUUID";
  v47 = [MEMORY[0x277D3F198] sharedInstance];
  v46 = [v47 commonTypeDict_StringFormat];
  v54[2] = v46;
  v53[3] = @"result";
  v45 = [MEMORY[0x277D3F198] sharedInstance];
  v44 = [v45 commonTypeDict_StringFormat];
  v54[3] = v44;
  v53[4] = @"RollbackRecProcAttributedProc";
  v43 = [MEMORY[0x277D3F198] sharedInstance];
  v42 = [v43 commonTypeDict_StringFormat];
  v54[4] = v42;
  v53[5] = @"failureReason";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_StringFormat];
  v54[5] = v40;
  v53[6] = @"type";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_StringFormat];
  v54[6] = v38;
  v53[7] = @"updateType";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_IntegerFormat];
  v54[7] = v36;
  v53[8] = @"eventTime";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_IntegerFormat];
  v54[8] = v34;
  v53[9] = @"targetOSVersion";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_StringFormat];
  v54[9] = v32;
  v53[10] = @"installTonight";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_BoolFormat];
  v54[10] = v30;
  v53[11] = @"brainVersion";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_StringFormat];
  v54[11] = v28;
  v53[12] = @"MobileAssetAssetAudience";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_StringFormat];
  v54[12] = v26;
  v53[13] = @"breadcrumbs";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_StringFormat];
  v54[13] = v24;
  v53[14] = @"originalOSVersion";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_StringFormat];
  v54[14] = v22;
  v53[15] = @"forcedResetUptime";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v54[15] = v20;
  v53[16] = @"initialForcedResetUptime";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v54[16] = v18;
  v53[17] = @"preRecoveryClientId";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat];
  v54[17] = v16;
  v53[18] = @"recoveryInitiated";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_BoolFormat];
  v54[18] = v14;
  v53[19] = @"controllerVersion";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_StringFormat];
  v54[19] = v3;
  v53[20] = @"preConv";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v54[20] = v5;
  v53[21] = @"postConv";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v54[21] = v7;
  v53[22] = @"fsckMetrics";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v54[22] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:23];
  v58[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitions
{
  v25[18] = *MEMORY[0x277D85DE8];
  v24[0] = @"SiriAlarm";
  v23 = [a1 entryEventBackwardDefinitionSiriFalseAlarm];
  v25[0] = v23;
  v24[1] = @"PeekPop";
  v22 = [a1 entryEventBackwardDefinitionPeekPop];
  v25[1] = v22;
  v24[2] = @"AASSampling";
  v21 = [a1 entryEventBackwardDefinitionAttentionSampling];
  v25[2] = v21;
  v24[3] = @"AASPolling";
  v20 = [a1 entryEventBackwardDefinitionAttentionPolling];
  v25[3] = v20;
  v24[4] = @"AASService";
  v19 = [a1 entryEventBackwardDefinitionAttentionService];
  v25[4] = v19;
  v24[5] = @"ODOff";
  v18 = [a1 entryEventBackwardDefinitionODOff];
  v25[5] = v18;
  v24[6] = @"ODOn";
  v17 = [a1 entryEventBackwardDefinitionODOn];
  v25[6] = v17;
  v24[7] = @"ODHN";
  v16 = [a1 entryEventBackwardDefinitionODHN];
  v25[7] = v16;
  v24[8] = @"DRMaxRate";
  v3 = [a1 entryEventBackwardDefinitionDRMaxRate];
  v25[8] = v3;
  v24[9] = @"FrameCount";
  v4 = [a1 entryEventBackwardDefinitionFrameCount];
  v25[9] = v4;
  v24[10] = @"EnergyTelemetry";
  v5 = [a1 entryEventBackwardDefinitionEnergyTelemetry];
  v25[10] = v5;
  v24[11] = @"CallScreeningDuration";
  v6 = [a1 entryEventBackwardDefinitionCallScreeningDuration];
  v25[11] = v6;
  v24[12] = @"KeyboardSession";
  v7 = [a1 entryEventBackwardDefinitionKeyboardSession];
  v25[12] = v7;
  v24[13] = @"KeyboardTrackpadResidencies";
  v8 = [a1 entryEventBackwardDefinitionTrackpadResidencies];
  v25[13] = v8;
  v24[14] = @"ActiveStylusInking";
  v9 = [a1 entryEventBackwardDefinitionActiveStylus];
  v25[14] = v9;
  v24[15] = @"PassiveStylusInking";
  v10 = [a1 entryEventBackwardDefinitionPassiveStylus];
  v25[15] = v10;
  v24[16] = @"AVConference";
  v11 = [a1 entryEventBackwardDefinitionAVConference];
  v25[16] = v11;
  v24[17] = @"SpotlightQos";
  v12 = [a1 entryEventBackwardDefinitionSpotlightQos];
  v25[17] = v12;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:18];

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)entryEventBackwardDefinitionSiriFalseAlarm
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_28714B6C8;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"numFalseWakeUp";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"secondsSinceLastReport";
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

+ (id)entryEventBackwardDefinitionCallScreeningDuration
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Duration";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventBackwardDefinitionKeyboardSession
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_28714B6D8;
  v23[1] = MEMORY[0x277CBEC28];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"WordsTapped";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v21[0] = v17;
  v20[1] = @"CharactersTapped";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v21[1] = v15;
  v20[2] = @"WordsPathed";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v21[2] = v4;
  v20[3] = @"CharactersPathed";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v21[3] = v6;
  v20[4] = @"TimeSpentTapTyping";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v21[4] = v8;
  v20[5] = @"TimeSpentPathTyping";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionTrackpadResidencies
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_28714B6C8;
    v21[1] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"SampleTime";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_RealFormat];
    v19[0] = v15;
    v18[1] = @"Active";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v19[1] = v4;
    v18[2] = @"Inactive";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v19[2] = v6;
    v18[3] = @"LowPower";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v19[3] = v8;
    v18[4] = @"Ready";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat];
    v19[4] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v23[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionActiveStylus
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_28714B6D8;
    v21[1] = MEMORY[0x277CBEC28];
    v20[2] = *MEMORY[0x277D3F580];
    v21[2] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"Inking";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_RealFormat];
    v19[0] = v15;
    v18[1] = @"Hovering";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v19[1] = v4;
    v18[2] = @"NotTracking";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v19[2] = v6;
    v18[3] = @"SampleTime";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v19[3] = v8;
    v18[4] = @"TouchDownCount";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v19[4] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v23[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPassiveStylus
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_28714B6D8;
    v21[1] = MEMORY[0x277CBEC28];
    v20[2] = *MEMORY[0x277D3F580];
    v21[2] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"Inking";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_RealFormat];
    v19[0] = v15;
    v18[1] = @"Hovering";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v19[1] = v4;
    v18[2] = @"NotTracking";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v19[2] = v6;
    v18[3] = @"SampleTime";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v19[3] = v8;
    v18[4] = @"TouchDownCount";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v19[4] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v23[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPeekPop
{
  v21[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v18[0] = *MEMORY[0x277D3F568];
    v18[1] = v2;
    v19[0] = &unk_28714B6C8;
    v19[1] = MEMORY[0x277CBEC28];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"Process-ID";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v17[0] = v4;
    v16[1] = @"PeekCount";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v17[1] = v6;
    v16[2] = @"PopCount";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v17[2] = v8;
    v16[3] = @"PeekDuration";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat];
    v17[3] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
    v21[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionSpotlightQos
{
  v19[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v16[0] = *MEMORY[0x277D3F568];
    v16[1] = v2;
    v17[0] = &unk_28714B6C8;
    v17[1] = MEMORY[0x277CBEC28];
    v16[2] = *MEMORY[0x277D3F580];
    v17[2] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v19[0] = v3;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"utiType";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_StringFormat];
    v15[0] = v5;
    v14[1] = @"qos";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v15[1] = v7;
    v14[2] = @"count";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v15[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionAttentionSampling
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v16[0] = *MEMORY[0x277D3F568];
    v16[1] = v2;
    v17[0] = &unk_28714B6C8;
    v17[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v19[0] = v3;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"client";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_StringFormat];
    v15[0] = v5;
    v14[1] = @"samplingRateMS";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v15[1] = v7;
    v14[2] = @"cumulativeSamplingTimeMS";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v15[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionAttentionPolling
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_28714B6C8;
    v15[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"client";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_StringFormat];
    v12[1] = @"cumulativeSamplingTimeMS";
    v13[0] = v5;
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v17[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventBackwardDefinitionAttentionService
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_28714B6C8;
    v21[1] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"singleShotsRequested";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v19[0] = v15;
    v18[1] = @"pollsRequested";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v19[1] = v4;
    v18[2] = @"cumulativeSamplingTimeMS";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v19[2] = v6;
    v18[3] = @"positiveOutcomes";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v19[3] = v8;
    v18[4] = @"negativeOutcomes";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v19[4] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v23[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionODOff
{
  v35[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v34[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v32[0] = *MEMORY[0x277D3F568];
    v32[1] = v2;
    v33[0] = &unk_28714B6D8;
    v33[1] = MEMORY[0x277CBEC28];
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v35[0] = v29;
    v34[1] = *MEMORY[0x277D3F540];
    v30[0] = @"mach_absolute_time";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v31[0] = v27;
    v30[1] = @"DR_0";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v31[1] = v25;
    v30[2] = @"DR_1";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v31[2] = v23;
    v30[3] = @"DR_2";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v31[3] = v21;
    v30[4] = @"DR_3";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v31[4] = v19;
    v30[5] = @"DR_4";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v31[5] = v17;
    v30[6] = @"DR_5";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v31[6] = v15;
    v30[7] = @"DR_6";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v31[7] = v4;
    v30[8] = @"DR_7";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v31[8] = v6;
    v30[9] = @"DR_8";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v31[9] = v8;
    v30[10] = @"DR_9";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v31[10] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
    v35[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionODOn
{
  v35[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v34[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v32[0] = *MEMORY[0x277D3F568];
    v32[1] = v2;
    v33[0] = &unk_28714B6D8;
    v33[1] = MEMORY[0x277CBEC28];
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v35[0] = v29;
    v34[1] = *MEMORY[0x277D3F540];
    v30[0] = @"mach_absolute_time";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v31[0] = v27;
    v30[1] = @"DR_0";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v31[1] = v25;
    v30[2] = @"DR_1";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v31[2] = v23;
    v30[3] = @"DR_2";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v31[3] = v21;
    v30[4] = @"DR_3";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v31[4] = v19;
    v30[5] = @"DR_4";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v31[5] = v17;
    v30[6] = @"DR_5";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v31[6] = v15;
    v30[7] = @"DR_6";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v31[7] = v4;
    v30[8] = @"DR_7";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v31[8] = v6;
    v30[9] = @"DR_8";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v31[9] = v8;
    v30[10] = @"DR_9";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v31[10] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
    v35[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionODHN
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_28714B6D8;
    v15[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"mach_absolute_time";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v12[1] = @"count";
    v13[0] = v5;
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v17[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventBackwardDefinitionDRMaxRate
{
  v35[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v34[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v32[0] = *MEMORY[0x277D3F568];
    v32[1] = v2;
    v33[0] = &unk_28714B6C8;
    v33[1] = MEMORY[0x277CBEC28];
    v32[2] = *MEMORY[0x277D3F580];
    v33[2] = MEMORY[0x277CBEC38];
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v35[0] = v29;
    v34[1] = *MEMORY[0x277D3F540];
    v30[0] = @"mach_absolute_time";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v31[0] = v27;
    v30[1] = @"DR_0";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v31[1] = v25;
    v30[2] = @"DR_1";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v31[2] = v23;
    v30[3] = @"DR_2";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v31[3] = v21;
    v30[4] = @"DR_3";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v31[4] = v19;
    v30[5] = @"DR_4";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v31[5] = v17;
    v30[6] = @"DR_5";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v31[6] = v15;
    v30[7] = @"DR_6";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v31[7] = v4;
    v30[8] = @"DR_7";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v31[8] = v6;
    v30[9] = @"DR_8";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v31[9] = v8;
    v30[10] = @"DR_9";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v31[10] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
    v35[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionFrameCount
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v22[0] = *MEMORY[0x277D3F568];
    v22[1] = v2;
    v23[0] = &unk_28714B6C8;
    v23[1] = MEMORY[0x277CBEC28];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v25[0] = v19;
    v24[1] = *MEMORY[0x277D3F540];
    v20[0] = @"reason";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v21[0] = v17;
    v20[1] = @"duration";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v21[1] = v15;
    v20[2] = @"bucket_0";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v21[2] = v4;
    v20[3] = @"bucket_1";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v21[3] = v6;
    v20[4] = @"bucket_2";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v21[4] = v8;
    v20[5] = @"bucket_3";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v21[5] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
    v25[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionEnergyTelemetry
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_28714B6D8;
  v19[1] = MEMORY[0x277CBEC28];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"slot_id";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v17[0] = v4;
  v16[1] = @"wall_energy_consumed";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v17[1] = v6;
  v16[2] = @"system_energy_consumed";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v17[2] = v8;
  v16[3] = @"adapter_family";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v17[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAVConference
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_28714B6C8;
  v23[1] = MEMORY[0x277CBEC28];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"ClientName";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat];
  v21[0] = v17;
  v20[1] = @"ServiceName";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v21[1] = v15;
  v20[2] = @"DRTN";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v21[2] = v4;
  v20[3] = @"DUPTYPE";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v21[3] = v6;
  v20[4] = @"CONFIG";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v21[4] = v8;
  v20[5] = @"DCCFG";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v17[8] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v16[0] = @"AirTraffic_AssetDownload";
    v3 = [a1 entryEventIntervalDefinitionAirTrafficAssetDownload];
    v17[0] = v3;
    v16[1] = @"AnimatedStickerCreation";
    v4 = [a1 entryEventIntervalDefinitionAnimatedStickerCreation];
    v17[1] = v4;
    v16[2] = @"CoreDuet_KnowledgeSync";
    v5 = [a1 entryEventIntervalDefinitionCoreDuetKnowledgeSync];
    v17[2] = v5;
    v16[3] = @"RapportReceivedMessage";
    v6 = [a1 entryEventIntervalDefinitionRapportReceivedMessage];
    v17[3] = v6;
    v16[4] = @"SpotlightIndexes";
    v7 = [a1 entryEventIntervalDefinitionSpotlightIndexes];
    v17[4] = v7;
    v16[5] = @"SpotlightQueries";
    v8 = [a1 entryEventIntervalDefinitionSpotlightQueries];
    v17[5] = v8;
    v16[6] = @"StaticStickerCreation";
    v9 = [a1 entryEventIntervalDefinitionStaticStickerCreation];
    v17[6] = v9;
    v16[7] = @"UserSafetyProcessing";
    v10 = [a1 entryEventIntervalDefinitionUserSafety];
    v17[7] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:8];
  }

  else
  {
    v14[0] = @"RapportReceivedMessage";
    v3 = [a1 entryEventIntervalDefinitionRapportReceivedMessage];
    v15[0] = v3;
    v14[1] = @"SpotlightIndexes";
    v4 = [a1 entryEventIntervalDefinitionSpotlightIndexes];
    v15[1] = v4;
    v14[2] = @"SpotlightQueries";
    v5 = [a1 entryEventIntervalDefinitionSpotlightQueries];
    v15[2] = v5;
    v14[3] = @"UserSafetyProcessing";
    v6 = [a1 entryEventIntervalDefinitionUserSafety];
    v15[3] = v6;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventIntervalDefinitionAirTrafficAssetDownload
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33[0] = *MEMORY[0x277D3F4E8];
  v31 = *MEMORY[0x277D3F568];
  v32 = &unk_28714B6C8;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v34[0] = v28;
  v33[1] = *MEMORY[0x277D3F540];
  v29[0] = @"timestampEnd";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_DateFormat];
  v30[0] = v26;
  v29[1] = @"linkType";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v30[1] = v24;
  v29[2] = @"dataclass";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_StringFormat];
  v30[2] = v22;
  v29[3] = @"assetType";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_StringFormat];
  v30[3] = v20;
  v29[4] = @"sumBytesRequested";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v30[4] = v18;
  v29[5] = @"countDownloadsBegun";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v30[5] = v16;
  v29[6] = @"countCanUseCellular";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v30[6] = v14;
  v29[7] = @"countIsForeground";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v30[7] = v3;
  v29[8] = @"sumBytesDownloaded";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v30[8] = v5;
  v29[9] = @"countDownloadsSucceeded";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v30[9] = v7;
  v29[10] = @"countDownloadsFailed";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v30[10] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];
  v34[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventIntervalDefinitionAnimatedStickerCreation
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"ProcessedFrameCount";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"timestampEnd";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_DateFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventIntervalDefinitionCoreDuetKnowledgeSync
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"timestampEnd";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_DateFormat];
  v11[1] = @"isEmpty";
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

+ (id)entryEventIntervalDefinitionRapportReceivedMessage
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_28714B6C8;
  v27[1] = MEMORY[0x277CBEC38];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v29[0] = v23;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"timestampEnd";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_DateFormat];
  v25[0] = v21;
  v24[1] = @"type";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v25[1] = v19;
  v24[2] = @"bytes";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v25[2] = v17;
  v24[3] = @"identifier";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat_withBundleID];
  v25[3] = v15;
  v24[4] = @"appID";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat_withBundleID];
  v25[4] = v4;
  v24[5] = @"linkType";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v25[5] = v6;
  v24[6] = @"messages";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v25[6] = v8;
  v24[7] = @"senderID";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v25[7] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:8];
  v29[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitionSpotlightIndexes
{
  v39[2] = *MEMORY[0x277D85DE8];
  v38[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v36[0] = *MEMORY[0x277D3F568];
  v36[1] = v2;
  v37[0] = &unk_28714B738;
  v37[1] = MEMORY[0x277CBEC38];
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v39[0] = v33;
  v38[1] = *MEMORY[0x277D3F540];
  v34[0] = @"timestampEnd";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_DateFormat];
  v35[0] = v31;
  v34[1] = @"BundleID";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_StringFormat_withBundleID];
  v35[1] = v29;
  v34[2] = @"IndexCount";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v35[2] = v27;
  v34[3] = @"DeletedCount";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v35[3] = v25;
  v34[4] = @"WatchdogCount";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v35[4] = v23;
  v34[5] = @"ClientMitigationCount";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v35[5] = v21;
  v34[6] = @"processName";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat];
  v35[6] = v19;
  v34[7] = @"computeEmbeddings";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v35[7] = v17;
  v34[8] = @"computeEmbeddingsForQuery";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v35[8] = v15;
  v34[9] = @"computeKeyphrases";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v35[9] = v4;
  v34[10] = @"reindexItemCount";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v35[10] = v6;
  v34[11] = @"reindexAll";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v35[11] = v8;
  v34[12] = @"reason";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v35[12] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:13];
  v39[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitionSpotlightQueries
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_28714B6F8;
  v27[1] = MEMORY[0x277CBEC38];
  v26[2] = *MEMORY[0x277D3F4F0];
  v25[0] = @"BundleID";
  v25[1] = @"ResultCount";
  v25[2] = @"StartQueryCount";
  v25[3] = @"CancelQueryCount";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v27[2] = v22;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v29[0] = v21;
  v28[1] = *MEMORY[0x277D3F540];
  v23[0] = @"timestampEnd";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_DateFormat];
  v24[0] = v19;
  v23[1] = @"BundleID";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat_withBundleID];
  v24[1] = v17;
  v23[2] = @"Reason";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v24[2] = v15;
  v23[3] = @"StartQueryCount";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v24[3] = v4;
  v23[4] = @"CancelQueryCount";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v24[4] = v6;
  v23[5] = @"ResultCount";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v24[5] = v8;
  v23[6] = @"processName";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v24[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
  v29[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitionStaticStickerCreation
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_28714B6C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"timestampEnd";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_DateFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventIntervalDefinitionUserSafety
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_28714B6D8;
  v19[1] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"AssetType";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v17[0] = v4;
  v16[1] = @"ClientBundleID";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withBundleID];
  v17[1] = v6;
  v16[2] = @"EndTimestamp";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_DateFormat];
  v17[2] = v8;
  v16[3] = @"IsCacheReused";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_BoolFormat];
  v17[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryAggregateDefinitions
{
  v31[3] = *MEMORY[0x277D85DE8];
  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v30[0] = @"Aggregate";
    v28[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F550];
    v26[0] = *MEMORY[0x277D3F568];
    v26[1] = v3;
    v27[0] = &unk_28714B6C8;
    v27[1] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v29[0] = v4;
    v28[1] = *MEMORY[0x277D3F540];
    v24[0] = @"name";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_StringFormat];
    v24[1] = @"count";
    v25[0] = v16;
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v15 commonTypeDict_RealFormat_aggregateFunction_sum];
    v25[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v29[1] = v6;
    v28[2] = *MEMORY[0x277D3F478];
    v22 = &unk_28714B6B8;
    v20 = *MEMORY[0x277D3F470];
    v21 = &unk_28714B748;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v28[3] = *MEMORY[0x277D3F488];
    v29[2] = v8;
    v29[3] = &unk_28714D490;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
    v31[0] = v9;
    v30[1] = @"KeyboardWordsAndCharacters";
    v10 = [a1 entryAggregateDefinitionKeyboardWordsAndCharacters];
    v31[1] = v10;
    v30[2] = @"KeyboardTime";
    v11 = [a1 entryAggregateDefinitionKeyboardTime];
    v31[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  }

  else
  {
    v18 = @"TouchEvents";
    v4 = [a1 entryAggregateDefinitionTouchEvents];
    v19 = v4;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryAggregateDefinitionKeyboardWordsAndCharacters
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_28714B6C8;
  v27[1] = MEMORY[0x277CBEC28];
  v26[2] = *MEMORY[0x277D3F580];
  v27[2] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v29[0] = v18;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"WordsTapped";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[0] = v16;
  v24[1] = @"CharactersTapped";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v15 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[1] = v3;
  v24[2] = @"WordsPathed";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[2] = v5;
  v24[3] = @"CharactersPathed";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v29[1] = v8;
  v28[2] = *MEMORY[0x277D3F478];
  v22 = &unk_28714B758;
  v20 = *MEMORY[0x277D3F470];
  v21 = &unk_28714B748;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v29[2] = v10;
  v28[3] = *MEMORY[0x277D3F488];
  v19[0] = @"WordsTapped";
  v19[1] = @"CharactersTapped";
  v19[2] = @"WordsPathed";
  v19[3] = @"CharactersPathed";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  v29[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryAggregateDefinitionKeyboardTime
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_28714B6C8;
  v23[1] = MEMORY[0x277CBEC28];
  v22[2] = *MEMORY[0x277D3F580];
  v23[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"TimeSpentTapTyping";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v20[1] = @"TimeSpentPathTyping";
  v21[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v21[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_28714B6B8;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_28714B748;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15[0] = @"TimeSpentTapTyping";
  v15[1] = @"TimeSpentPathTyping";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLXPCAgent)init
{
  if (+[PLUtilities isPerfPowerMetricd])
  {
    v3 = 0;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PLXPCAgent;
    v4 = [(PLAgent *)&v21 init];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      localCache = v4->_localCache;
      v4->_localCache = v5;

      v7 = [MEMORY[0x277CBEB38] dictionary];
      inferenceEntries = v4->_inferenceEntries;
      v4->_inferenceEntries = v7;

      v9 = [MEMORY[0x277CBEB38] dictionary];
      summarizationEntries = v4->_summarizationEntries;
      v4->_summarizationEntries = v9;

      v11 = [MEMORY[0x277CBEB38] dictionary];
      summarizedNotificationEntries = v4->_summarizedNotificationEntries;
      v4->_summarizedNotificationEntries = v11;

      if (+[PLXPCAgent shouldLogiOSWatchOSOnly](PLXPCAgent, "shouldLogiOSWatchOSOnly") && [MEMORY[0x277D3F180] BOOLForKey:@"MemoryPressureNotification" ifNotSet:0])
      {
        v13 = objc_alloc(MEMORY[0x277D3F1F0]);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __18__PLXPCAgent_init__block_invoke;
        v19[3] = &unk_279A5BE78;
        v14 = v4;
        v20 = v14;
        v15 = [v13 initWithOperator:v14 forNotification:@"kPLMemoryPressureNotification" withBlock:v19];
        MemoryWarningListener = v14->_MemoryWarningListener;
        v14->_MemoryWarningListener = v15;
      }

      v4->_lastLinearBrightness = -1;
      lastEDRTrigger = v4->_lastEDRTrigger;
      v4->_lastEDRTrigger = 0;
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

void __18__PLXPCAgent_init__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v12)
  {
    v9 = [v12 objectForKeyedSubscript:@"kPLMemoryPressureNotification"];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v12 objectForKeyedSubscript:@"kPLMemoryPressureNotification"];
      [v10 logEventPointJetsam:{objc_msgSend(v11, "unsignedLongValue")}];
    }
  }
}

- (void)initTaskOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke;
  v56[3] = &unk_279A5BCB8;
  v56[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_287149148 withBlock:v56];
  [(PLXPCAgent *)self setNavdXPCListener:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1723;
  v55[3] = &unk_279A5BCB8;
  v55[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_287149170 withBlock:v55];
  [(PLXPCAgent *)self setNavdXPCListener:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1728;
  v54[3] = &unk_279A5BCB8;
  v54[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_287149198 withBlock:v54];
  [(PLXPCAgent *)self setNavdXPCListener:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1735;
  v53[3] = &unk_279A5BCB8;
  v53[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_2871491C0 withBlock:v53];
  [(PLXPCAgent *)self setDACalendarItemsDownloadedXPCListener:v10];

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1740;
  v52[3] = &unk_279A5BCB8;
  v52[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_2871491E8 withBlock:v52];
  [(PLXPCAgent *)self setDACalendarItemsUploadedXPCListener:v12];

  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v13 = objc_alloc(MEMORY[0x277D3F270]);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1750;
    v51[3] = &unk_279A5BCB8;
    v51[4] = self;
    v14 = [v13 initWithOperator:self withRegistration:&unk_287149210 withBlock:v51];
    [(PLXPCAgent *)self setUIKitAlertXPCListener:v14];
  }

  v15 = objc_alloc(MEMORY[0x277D3F270]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1760;
  v50[3] = &unk_279A5BCB8;
  v50[4] = self;
  v16 = [v15 initWithOperator:self withRegistration:&unk_287149238 withBlock:v50];
  [(PLXPCAgent *)self setSiriXPCListener:v16];

  v17 = objc_alloc(MEMORY[0x277D3F270]);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1765;
  v49[3] = &unk_279A5BCB8;
  v49[4] = self;
  v18 = [v17 initWithOperator:self withRegistration:&unk_287149260 withBlock:v49];
  [(PLXPCAgent *)self setNanoSiriXPCListener:v18];

  v19 = objc_alloc(MEMORY[0x277D3F270]);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1772;
  v48[3] = &unk_279A5BCB8;
  v48[4] = self;
  v20 = [v19 initWithOperator:self withRegistration:&unk_287149288 withBlock:v48];
  [(PLXPCAgent *)self setSpotlightQosXPCListener:v20];

  v21 = objc_alloc(MEMORY[0x277D3F270]);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1777;
  v47[3] = &unk_279A5BCB8;
  v47[4] = self;
  v22 = [v21 initWithOperator:self withRegistration:&unk_2871492B0 withBlock:v47];
  [(PLXPCAgent *)self setSpotlightWatchdogFiredXPCListener:v22];

  v23 = objc_alloc(MEMORY[0x277D3F270]);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1784;
  v46[3] = &unk_279A5BCB8;
  v46[4] = self;
  v24 = [v23 initWithOperator:self withRegistration:&unk_2871492D8 withBlock:v46];
  [(PLXPCAgent *)self setLocationVehicularDetectionXPCListener:v24];

  v25 = objc_alloc(MEMORY[0x277D3F270]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1789;
  v45[3] = &unk_279A5BCB8;
  v45[4] = self;
  v26 = [v25 initWithOperator:self withRegistration:&unk_287149300 withBlock:v45];
  [(PLXPCAgent *)self setMotionWakeReasonXPCListener:v26];

  v27 = objc_alloc(MEMORY[0x277D3F270]);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1794;
  v44[3] = &unk_279A5BCB8;
  v44[4] = self;
  v28 = [v27 initWithOperator:self withRegistration:&unk_287149328 withBlock:v44];
  [(PLXPCAgent *)self setCommuteRefreshXPCListener:v28];

  v29 = objc_alloc(MEMORY[0x277D3F270]);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1801;
  v43[3] = &unk_279A5BCB8;
  v43[4] = self;
  v30 = [v29 initWithOperator:self withRegistration:&unk_287149350 withBlock:v43];
  [(PLXPCAgent *)self setSecItemXPCListener:v30];

  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v31 = objc_alloc(MEMORY[0x277D3F270]);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1808;
    v42[3] = &unk_279A5BCB8;
    v42[4] = self;
    v32 = [v31 initWithOperator:self withRegistration:&unk_287149378 withBlock:v42];
    [(PLXPCAgent *)self setDRMaxRateListener:v32];
  }

  if ([MEMORY[0x277D3F208] isiPad])
  {
    v33 = objc_alloc(MEMORY[0x277D3F270]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1818;
    v41[3] = &unk_279A5BCB8;
    v41[4] = self;
    v34 = [v33 initWithOperator:self withRegistration:&unk_2871493A0 withBlock:v41];
    [(PLXPCAgent *)self setActiveStylusXPCListener:v34];

    v35 = objc_alloc(MEMORY[0x277D3F270]);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1826;
    v40[3] = &unk_279A5BCB8;
    v40[4] = self;
    v36 = [v35 initWithOperator:self withRegistration:&unk_2871493C8 withBlock:v40];
    [(PLXPCAgent *)self setPassiveStylusXPCListener:v36];
  }

  v37 = objc_alloc(MEMORY[0x277D3F270]);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1833;
  v39[3] = &unk_279A5BCB8;
  v39[4] = self;
  v38 = [v37 initWithOperator:self withRegistration:&unk_2871493F0 withBlock:v39];
  [(PLXPCAgent *)self setWatchPresenceXPCListener:v38];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_cold_1();
  }

  [*(a1 + 32) logEventPointNavd:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1723(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1723_cold_1();
  }

  [*(a1 + 32) logEventPointNavdMapsWidgetSession:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1728_cold_1();
  }

  [*(a1 + 32) logEventPointNavdMapsNavigationStateEvent:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1735(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1735_cold_1();
  }

  [*(a1 + 32) logEventPointDACalendarItemsDownloaded:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1740_cold_1();
  }

  [*(a1 + 32) logEventPointDACalendarItemsUploaded:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1750_cold_1();
  }

  [*(a1 + 32) logEventForwardUIKitAlert:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1760_cold_1();
  }

  [*(a1 + 32) logEventForwardSiri:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1765(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1765_cold_1();
  }

  [*(a1 + 32) logEventPointSiriActivation:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1772(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1772_cold_1();
  }

  [*(a1 + 32) logEventBackwardNameSpotlightQos:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1777(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1777_cold_1();
  }

  [*(a1 + 32) logEventPointNameSpotlightWatchdogFired:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1784_cold_1();
  }

  [*(a1 + 32) logEventPointLocationVehicularDetectionSession:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1789(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1789_cold_1();
  }

  [*(a1 + 32) logEventPointMotionWakeReasonSession:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1794_cold_1();
  }

  [*(a1 + 32) logEventPointCommuteRefreshSession:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1801(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1801_cold_1();
  }

  [*(a1 + 32) logEventPointSecItemSession:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1808_cold_1();
  }

  [*(a1 + 32) logEventBackwardDRMaxRate:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1818(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1818_cold_1();
  }

  [*(a1 + 32) logEventBackwardActiveStylus:v8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1826(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1826_cold_1();
  }

  [*(a1 + 32) logEventBackwardPassiveStylus:v8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1833(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1833_cold_1();
  }

  [*(a1 + 32) logEventForwardWatchPresence:v6];
}

- (void)initOperatorDependancies
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*a1)
  {
    v4 = [*a1 objectForKeyedSubscript:@"noiseEnabled"];
  }

  else
  {
    v4 = 0;
  }

  v6 = 138412546;
  v7 = @"noiseEnabled";
  OUTLINED_FUNCTION_5_2();
  v8 = v4;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "Dosimetry state %@ was %@\n", &v6, 0x16u);
  if (v3)
  {
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  [*(a1 + 32) logEventForwardAppleDiffusion:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1850_cold_1();
  }

  [*(a1 + 32) logEventForwardHandwritingInference:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1858_cold_1();
  }

  [*(a1 + 32) logEventForwardSummarization:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1866(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1866_cold_1();
  }

  [*(a1 + 32) logEventForwardAssetLoadGF:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1874_cold_1();
  }

  [*(a1 + 32) logFileResidentInfo:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1882(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1882_cold_1();
  }

  [*(a1 + 32) logEventForwardMMExecuteRequest:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1890_cold_1();
  }

  [*(a1 + 32) logPhotosGenerativeEdit:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1898_cold_1();
  }

  [*(a1 + 32) logEventForwardTGIExecuteRequest:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1906(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1906_cold_1();
  }

  [*(a1 + 32) logEventForwardSmartReplySession:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1908(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_DEFAULT, "GenerativeFunctionMetrics OptIn State Changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardGMSOptIn];
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1916(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1916_cold_1();
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"modelCompilation"];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1927(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1927_cold_1();
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"modelInference"];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1938_cold_1();
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"modelLoad"];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1949(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1949_cold_1();
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"modelUnload"];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1960_cold_1();
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"newInstanceModelLoad"];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1971(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1971_cold_1();
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"newInstanceModelUnload"];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2_cold_1();
  }

  [*(a1 + 32) logEventPointNavdGeoNetworkActivity:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1990_cold_1();
  }

  [*(a1 + 32) logEventForwardMXDiscoveryLevel:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_1998_cold_1();
  }

  [*(a1 + 32) logEventPointAirPlayDiscoveryMode:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2003(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1794_cold_1();
  }

  [*(a1 + 32) logEventPointCommuteRefreshSession:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2010_cold_1();
  }

  [*(a1 + 32) logEventPointTestMarker:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2017(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_DEFAULT, "[Energy Telemetry] callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardEnergyTelemetry:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2025(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2025_cold_1();
  }

  [*(a1 + 32) logEventForwardUIKitEclipse:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2035(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2035_cold_1();
  }

  [*(a1 + 32) logEventForwardSleepMode:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2040_cold_1();
  }

  [*(a1 + 32) logEventPointSleepLock:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2047(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2047_cold_1();
  }

  [*(a1 + 32) logEventPointWeatherNotificationState:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2052(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2052_cold_1();
  }

  [*(a1 + 32) logEventPointWeatherNotification:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2062(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2062_cold_1();
  }

  [*(a1 + 32) logEventForwardSecondaryDisplay:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2070_cold_1();
  }

  [*(a1 + 32) logEventForwardUIKitKeyboard:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2078_cold_1();
  }

  [*(a1 + 32) logEventForwardUIKitActivity:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2083(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2083_cold_1();
  }

  [*(a1 + 32) logEventPointDASyncStart:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2091(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2091_cold_1();
  }

  [*(a1 + 32) logEventForwardLinkAdvisory:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2099(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2099_cold_1();
  }

  [*(a1 + 32) logEventEventForwardMessageTranscript:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2107(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2107_cold_1();
  }

  [*(a1 + 32) logEventEventPointRCSSessionManagement:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2115(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2115_cold_1();
  }

  [*(a1 + 32) logEventIntervalVKDataScanner:v8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2123(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2123_cold_1();
  }

  [*(a1 + 32) logAlbumAnimation:v8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2131(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2131_cold_1();
  }

  [*(a1 + 32) logAlbumMotion:v8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2138(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2138_cold_1();
  }

  [*(a1 + 32) logEventBackwardCallScreeningDuration:v8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2143(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2143_cold_1();
  }

  [*(a1 + 32) logEventForwardCallScreeningEnabled:v8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2151(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2151_cold_1();
  }

  [*(a1 + 32) logEventBackwardKeyboardTrackpad:v8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2161(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2161_cold_1();
  }

  [*(a1 + 32) logEventBackwardKeyboardSession:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2169(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2169_cold_1();
  }

  [*(a1 + 32) logEventBackwardRenderPassCount:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2177(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2177_cold_1();
  }

  [*(a1 + 32) logEventBackwardLayerCount:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2185(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2185_cold_1();
  }

  [*(a1 + 32) logEventForwardEDRRequests:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2193(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2193_cold_1();
  }

  [*(a1 + 32) logEventIntervalEndCPUViolations:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2201(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2201_cold_1();
  }

  [*(a1 + 32) logEventIntervalPowerExceptionsDetection:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2208_cold_1();
  }

  [*(a1 + 32) logEventIntervalAnimatedStickerCreation:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2213(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2213_cold_1();
  }

  [*(a1 + 32) logEventIntervalStaticStickerCreation:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2221(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2221_cold_1();
  }

  [*(a1 + 32) logMailCategorization:v8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2229(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2229_cold_1();
  }

  [*(a1 + 32) logEventIntervalUserSafetyProcessing:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2234_cold_1();
  }

  [*(a1 + 32) logEventForwardCarPlay:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2239(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2239_cold_1();
  }

  [*(a1 + 32) logEventForwardCarPlayScreens:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2247(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2247_cold_1();
  }

  [*(a1 + 32) logEventForwardRelevanceContextUpdate:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2257(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2257_cold_1();
  }

  [*(a1 + 32) logEventPointMailFetch:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2264_cold_1();
  }

  [*(a1 + 32) logEventPointNanoMailSession:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2274_cold_1();
  }

  [*(a1 + 32) logEventForwardSafariFetcherStatus:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2282(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a5;
  v6 = PLLogXPC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2282_cold_1();
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v5 objectForKeyedSubscript:@"bundleIDs"];
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v13 = MEMORY[0x277CCABB0];
        v14 = [v5 objectForKeyedSubscript:@"bundleIDs"];
        v15 = [v13 numberWithDouble:{1.0 / objc_msgSend(v14, "count")}];
        [v7 setObject:v15 forKeyedSubscript:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = [MEMORY[0x277D3F0C0] sharedInstance];
  v17 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v16 createDistributionEventForwardWithDistributionID:42 withChildNodeNameToWeight:v7 withStartDate:v17];

  v18 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2300_cold_1();
  }

  [*(a1 + 32) logEventForwardAppAccessory:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2308_cold_1();
  }

  v8 = [v6 mutableCopy];
  v9 = *MEMORY[0x277D18450];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D18450]];
  if (v10)
  {
    v11 = v10;
    v12 = [v8 objectForKeyedSubscript:v9];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [v8 objectForKeyedSubscript:v9];
      v15 = [v14 allKeys];
      [v8 setObject:v15 forKeyedSubscript:v9];
    }
  }

  [*(a1 + 32) logEventForwardAccessory:v8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2315(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2315_cold_1();
  }

  [*(a1 + 32) logEventPointNetworkSymptomsAdviosry:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2325(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2325_cold_1();
  }

  [*(a1 + 32) logEventPointBackgroundTransfer:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2333(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2333_cold_1();
  }

  [*(a1 + 32) logEventForwardInCallService:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2343(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2343_cold_1();
  }

  [*(a1 + 32) logEventForwardWebApp:v6];
}

id __38__PLXPCAgent_initOperatorDependancies__block_invoke_2352(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [*(a1 + 32) entryRequestResponseForPayload:v6];
  v8 = PLLogXPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2352_cold_1();
  }

  return v7;
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2361(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2361_cold_1();
  }

  [*(a1 + 32) logEventAggregateTelNotification:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2371(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2371_cold_1();
  }

  [*(a1 + 32) logEventBackwardSiriFalseAlarm:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2379(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2379_cold_1();
  }

  [*(a1 + 32) logEventBackwardNamePeek:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2387(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2387_cold_1();
  }

  [*(a1 + 32) logEventBackwardNamePop:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2397(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2397_cold_1();
  }

  [*(a1 + 32) logEventForwardThermalLevel:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2405(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2405_cold_1();
  }

  [*(a1 + 32) logEventForwardThermalSensors:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2413(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2413_cold_1();
  }

  [*(a1 + 32) logEventForwardThermalHiP:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2423(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2423_cold_1();
  }

  [*(a1 + 32) logEventPointMobileBackupStatistics:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2431(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2423_cold_1();
  }

  [*(a1 + 32) logEventPointMobileBackupEvents:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2441(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2441_cold_1();
  }

  [*(a1 + 32) logEventPointCloudKit:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2451(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2451_cold_1();
  }

  [*(a1 + 32) logEventPointCacheDelete:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2461(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2461_cold_1();
  }

  [*(a1 + 32) logEventPointMachineTranslation:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2471(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2471_cold_1();
  }

  [*(a1 + 32) logEventBackwardAttentionSampling:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2479(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2479_cold_1();
  }

  [*(a1 + 32) logEventBackwardAttentionPolling:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2487(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2487_cold_1();
  }

  [*(a1 + 32) logEventBackwardAttentionService:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2492(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2492_cold_1();
  }

  [*(a1 + 32) logEventBackwardODOff:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2497(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2497_cold_1();
  }

  [*(a1 + 32) logEventBackwardODOn:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2502(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2502_cold_1();
  }

  [*(a1 + 32) logEventBackwardODHN:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2507(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2507_cold_1();
  }

  [*(a1 + 32) logEventBackwardFrameCount:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2514_cold_1();
  }

  [*(a1 + 32) logEventForwardAirDropSession:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2519(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2519_cold_1();
  }

  [*(a1 + 32) logEventForwardAirDrop:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2524_cold_1();
  }

  [*(a1 + 32) logEventForwardSOSKVSRateLimitingEvent:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2538_cold_1();
  }

  [*(a1 + 32) logEventIntervalAirTrafficAssetDownload:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2545(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2545_cold_1();
  }

  [*(a1 + 32) logEventIntervalCoreDuetKnowledgeSync:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2555(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2555_cold_1();
  }

  [*(a1 + 32) logEventPointAppActivationPerformanceActivationData:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2563(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2555_cold_1();
  }

  [*(a1 + 32) logEventPointAppActivationPerformanceProcessData:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2571(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2555_cold_1();
  }

  [*(a1 + 32) logEventPointAppActivationPerformanceCPUStatistics:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2579(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2555_cold_1();
  }

  [*(a1 + 32) logEventPointAppActivationPerformanceMemoryStatistics:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2587(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2555_cold_1();
  }

  [*(a1 + 32) logEventPointAppActivationPerformancePowerStateStatistics:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2592(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2592_cold_1();
  }

  [*(a1 + 32) logEventPointShortcutsTriggerFired:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2602(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2602_cold_1();
  }

  [*(a1 + 32) logEventForwardAppleBackklightBrightness:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2612(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2612_cold_1();
  }

  [*(a1 + 32) logEventForwardNetworkRelay:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2620_cold_1();
  }

  [*(a1 + 32) logEventForwardNetworkRelayWiFiAssertion:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2628_cold_1();
  }

  [*(a1 + 32) logEventPointNetworkRelayBTLinkAssertion:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2636(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2636_cold_1();
  }

  [*(a1 + 32) logEventPointNetworkRelayTerminusBTWake:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2643(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2643_cold_1();
  }

  [*(a1 + 32) logEventForwardAccessoryMotion:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2651(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2651_cold_1();
  }

  [*(a1 + 32) logEventFowardUARPStatus:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2661(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2661_cold_1();
  }

  [*(a1 + 32) logEventForwardDosimetry:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2671(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2671_cold_1();
  }

  [*(a1 + 32) logEventForwardAudioRouting:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2681(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2681_cold_1();
  }

  [*(a1 + 32) logEventIntervalRapportReceivedMessage:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2688_cold_1();
  }

  [*(a1 + 32) logEventForwardEnhancedDiscovery:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2698_cold_1();
  }

  [*(a1 + 32) logEventForwardWirelessSync:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2706(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2706_cold_1();
  }

  [*(a1 + 32) logEventForwardWirelessSync:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2714_cold_1();
  }

  [*(a1 + 32) logEventForwardSpatialAudio:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2722(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2722_cold_1();
  }

  [*(a1 + 32) logEventBackwardAVConference:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2729(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2729_cold_1();
  }

  [*(a1 + 32) logEventForwardAvailabilityModes:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2734_cold_1();
  }

  [*(a1 + 32) logEventPointFocusFilters:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2741(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2741_cold_1();
  }

  [*(a1 + 32) logEventPointNamePortraitHighlightsResult:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2746(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2746_cold_1();
  }

  [*(a1 + 32) logEventPointNameSpotlightHighlightsResult:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2754_cold_1();
  }

  [*(a1 + 32) logEventIntervalNameSpotlightIndexes:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2759(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2759_cold_1();
  }

  [*(a1 + 32) logEventIntervalNameSpotlightQueries:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2766(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2766_cold_1();
  }

  [*(a1 + 32) logEventForwardPasskeyAuthentication:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2776(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2776_cold_1();
  }

  [*(a1 + 32) logEventPointADD:v6];
}

id __38__PLXPCAgent_initOperatorDependancies__block_invoke_2784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a5;
  v6 = PLLogXPC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2784_cold_1();
  }

  v11 = @"Task Mode";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F180], "taskMode")}];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2796(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2796_cold_1();
  }

  [*(a1 + 32) logEventForwardRapidSecurityResponse:v6];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2797(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_DEFAULT, "IHA Toggle State Changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardIHA];
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2805(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__PLXPCAgent_initOperatorDependancies__block_invoke_2805_cold_1();
  }

  [*(a1 + 32) logStatusKitAgentAggregatePushes:v6];
}

- (id)entryRequestResponseForPayload:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  [v6 setObject:v7 forKeyedSubscript:@"timedout"];

  v8 = [v4 objectForKeyedSubscript:@"timeout"];

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"timeout"];
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 60.0;
  }

  v12 = [v4 objectForKeyedSubscript:@"Operator"];

  if (v12)
  {
    v13 = MEMORY[0x277D3F1A0];
    v40 = v4;
    v14 = [v4 objectForKeyedSubscript:@"Operator"];
    v15 = [v13 entryKeysForOperatorName:v14];
    [v5 addObjectsFromArray:v15];
  }

  else
  {
    v16 = [v4 objectForKeyedSubscript:@"EntryKey"];

    if (!v16)
    {
      v35 = [MEMORY[0x277D3F2A0] sharedCore];
      v36 = [v35 agents];
      [v36 log];

      v37 = [MEMORY[0x277D3F2A0] sharedCore];
      v38 = [v37 services];
      [v38 log];

      v32 = &unk_28714A6D8;
      goto LABEL_25;
    }

    v40 = v4;
    v14 = [v4 objectForKeyedSubscript:@"EntryKey"];
    [v5 addObject:v14];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = v5;
  obj = v5;
  v17 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    v20 = 0x277D3F000uLL;
    v41 = self;
    do
    {
      v21 = 0;
      do
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v44 + 1) + 8 * v21);
        v23 = PLLogXPC();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v49 = v22;
          _os_log_debug_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEBUG, "requesting %@", buf, 0xCu);
        }

        v24 = *(v20 + 424);
        v43 = 0;
        v25 = [v24 requestEntryForEntryKey:v22 forOperator:self withTimeout:&v43 error:v11];
        v26 = v43;
        if (v26)
        {
          v27 = [v6 objectForKeyedSubscript:@"timedout"];
          [v27 addObject:v22];

          v28 = PLLogXPC();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v49 = v22;
            v50 = 2112;
            v51 = v26;
            _os_log_error_impl(&dword_25EE51000, v28, OS_LOG_TYPE_ERROR, "timeout %@: %@", buf, 0x16u);
          }
        }

        v29 = [v25 serializedForJSON];
        if (v29)
        {
          [v6 setObject:v29 forKey:v22];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
          v31 = v30 = v20;
          [v6 setObject:v31 forKey:v22];

          v20 = v30;
          self = v41;
        }

        ++v21;
      }

      while (v18 != v21);
      v18 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v18);
  }

  v32 = v6;
  v5 = v39;
  v4 = v40;
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)handleSBCNotificationWithUserInfo:(id)a3
{
  v14 = [a3 objectForKeyedSubscript:@"entry"];
  if (v14)
  {
    v4 = [MEMORY[0x277CBEB68] null];
    v5 = [v14 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      v6 = [v14 entryDate];
      [v6 timeIntervalSince1970];
      self->_lastSBCupdateTimestamp = v7;

      v8 = [(PLXPCAgent *)self inferenceEntries];
      [(PLXPCAgent *)self distributeBundleIDEntriesToWeight:v8 toDistributionID:53];

      [(NSMutableDictionary *)self->_inferenceEntries removeAllObjects];
      v9 = [(PLXPCAgent *)self summarizationEntries];
      [(PLXPCAgent *)self distributeBundleIDEntriesToWeight:v9 toDistributionID:54];

      v10 = [MEMORY[0x277D3F0C0] sharedInstance];
      v11 = [(PLXPCAgent *)self summarizedNotificationEntries];
      v12 = [v11 allKeys];
      v13 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v10 createQualificationEventBackwardWithQualificationID:17 withChildNodeNames:v12 withEndDate:v13];

      [(NSMutableDictionary *)self->_summarizationEntries removeAllObjects];
      [(NSMutableDictionary *)self->_summarizedNotificationEntries removeAllObjects];
    }
  }
}

- (void)log
{
  [(PLXPCAgent *)self logEventForwardGMSOptIn];

  [(PLXPCAgent *)self logEventForwardIHA];
}

- (void)logEventAggregateTelNotification:(id)a3
{
  v11 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Aggregate"];
  if (v11)
  {
    v5 = [v11 objectForKeyedSubscript:@"telNotification"];
    if (v5)
    {
      v6 = [v11 objectForKeyedSubscript:@"telNotification"];
      if ([v6 isEqualToString:@"kCTRegistrationCellChangedNotification"])
      {
      }

      else
      {
        v7 = [v11 objectForKeyedSubscript:@"telNotification"];
        v8 = [v7 isEqualToString:@"kCTCellMonitorUpdateNotification"];

        if (!v8)
        {
          goto LABEL_9;
        }
      }

      v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
      if (v9)
      {
        v10 = [v11 objectForKeyedSubscript:@"telNotification"];
        [v9 setObject:v10 forKeyedSubscript:@"name"];

        [v9 setObject:&unk_287146978 forKeyedSubscript:@"count"];
        [(PLOperator *)self logEntry:v9];
      }
    }
  }

LABEL_9:
}

- (void)logEventBackwardSiriFalseAlarm:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SiriAlarm"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardKeyboardTrackpad:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"KeyboardTrackpadResidencies"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardActiveStylus:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"ActiveStylusInking"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardPassiveStylus:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"PassiveStylusInking"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardKeyboardSession:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v54 = v4;
    v53 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"KeyboardSession"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v53];
    v6 = *MEMORY[0x277D3F5B8];
    v52 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"KeyboardWordsAndCharacters"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v52];
    v51 = [(PLOperator *)PLXPCAgent entryKeyForType:v6 andName:@"KeyboardTime"];
    v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v51];
    v9 = [v54 objectForKey:@"WordsTapped"];

    if (v9)
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = [v54 objectForKeyedSubscript:@"WordsTapped"];
      v12 = [v10 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v11, "intValue"), 2)}];
      [v5 setObject:v12 forKeyedSubscript:@"WordsTapped"];

      v13 = MEMORY[0x277CCABB0];
      v14 = [v5 objectForKeyedSubscript:@"WordsTapped"];
      v15 = [v13 numberWithInt:{objc_msgSend(v14, "intValue")}];
      [v7 setObject:v15 forKeyedSubscript:@"WordsTapped"];
    }

    v16 = [v54 objectForKey:@"CharactersTapped"];

    if (v16)
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = [v54 objectForKeyedSubscript:@"CharactersTapped"];
      v19 = [v17 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v18, "intValue"), 2)}];
      [v5 setObject:v19 forKeyedSubscript:@"CharactersTapped"];

      v20 = MEMORY[0x277CCABB0];
      v21 = [v5 objectForKeyedSubscript:@"CharactersTapped"];
      v22 = [v20 numberWithInt:{objc_msgSend(v21, "intValue")}];
      [v7 setObject:v22 forKeyedSubscript:@"CharactersTapped"];
    }

    v23 = [v54 objectForKey:@"WordsPathed"];

    if (v23)
    {
      v24 = MEMORY[0x277CCABB0];
      v25 = [v54 objectForKeyedSubscript:@"WordsPathed"];
      v26 = [v24 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v25, "intValue"), 2)}];
      [v5 setObject:v26 forKeyedSubscript:@"WordsPathed"];

      v27 = MEMORY[0x277CCABB0];
      v28 = [v5 objectForKeyedSubscript:@"WordsPathed"];
      v29 = [v27 numberWithInt:{objc_msgSend(v28, "intValue")}];
      [v7 setObject:v29 forKeyedSubscript:@"WordsPathed"];
    }

    v30 = [v54 objectForKey:@"CharactersPathed"];

    if (v30)
    {
      v31 = MEMORY[0x277CCABB0];
      v32 = [v54 objectForKeyedSubscript:@"CharactersPathed"];
      v33 = [v31 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v32, "intValue"), 2)}];
      [v5 setObject:v33 forKeyedSubscript:@"CharactersPathed"];

      v34 = MEMORY[0x277CCABB0];
      v35 = [v5 objectForKeyedSubscript:@"CharactersPathed"];
      v36 = [v34 numberWithInt:{objc_msgSend(v35, "intValue")}];
      [v7 setObject:v36 forKeyedSubscript:@"CharactersPathed"];
    }

    v37 = [v54 objectForKey:@"TimeSpentTapTyping"];

    if (v37)
    {
      v38 = MEMORY[0x277CCABB0];
      v39 = [v54 objectForKeyedSubscript:@"TimeSpentTapTyping"];
      v40 = [v38 numberWithInteger:{objc_msgSend(v39, "integerValue")}];
      [v5 setObject:v40 forKeyedSubscript:@"TimeSpentTapTyping"];

      v41 = MEMORY[0x277CCABB0];
      v42 = [v5 objectForKeyedSubscript:@"TimeSpentTapTyping"];
      v43 = [v41 numberWithInt:{objc_msgSend(v42, "intValue")}];
      [v8 setObject:v43 forKeyedSubscript:@"TimeSpentTapTyping"];
    }

    v44 = [v54 objectForKey:@"TimeSpentPathTyping"];

    if (v44)
    {
      v45 = MEMORY[0x277CCABB0];
      v46 = [v54 objectForKeyedSubscript:@"TimeSpentPathTyping"];
      v47 = [v45 numberWithInteger:{objc_msgSend(v46, "integerValue")}];
      [v5 setObject:v47 forKeyedSubscript:@"TimeSpentPathTyping"];

      v48 = MEMORY[0x277CCABB0];
      v49 = [v5 objectForKeyedSubscript:@"TimeSpentPathTyping"];
      v50 = [v48 numberWithInt:{objc_msgSend(v49, "intValue")}];
      [v8 setObject:v50 forKeyedSubscript:@"TimeSpentPathTyping"];
    }

    [(PLOperator *)self logEntry:v5];
    if (([MEMORY[0x277D3F180] taskMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
    {
      [(PLOperator *)self logEntry:v7];
      [(PLOperator *)self logEntry:v8];
    }

    v4 = v54;
  }
}

- (void)logEventPointSleepLock:(id)a3
{
  v4 = a3;
  if (+[PLUtilities isHealthDataSubmissionAllowed])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SleepLock"];
    v6 = objc_alloc(MEMORY[0x277D3F190]);
    v7 = [v4 objectForKeyedSubscript:@"SleepLock"];
    v8 = [v6 initWithEntryKey:v5 withRawData:v7];

    [(PLOperator *)self logEntry:v8];
  }

  else
  {
    v9 = PLLogXPC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLXPCAgent logEventPointSleepLock:];
    }
  }
}

- (void)logEventPointWeatherNotificationState:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"WeatherNotificationState"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointWeatherNotification:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"WeatherNotification"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v4];
    [(PLOperator *)self logEntry:v6];
  }

  else
  {
    v7 = PLLogXPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLXPCAgent logEventPointWeatherNotification:];
    }
  }
}

- (void)logEventPointNetworkRelayBTLinkAssertion:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"NetworkRelayBTLinkAssertion"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointNetworkRelayTerminusBTWake:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v13 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"TerminusBTWake"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 objectForKeyedSubscript:@"Packet SPI"];
  v9 = [v7 numberWithUnsignedInt:{objc_msgSend(v8, "unsignedIntValue")}];
  [v6 setObject:v9 forKeyedSubscript:@"spi"];

  v10 = MEMORY[0x277CCABB0];
  v11 = [v5 objectForKeyedSubscript:@"Packet sequence number"];

  v12 = [v10 numberWithUnsignedInt:{objc_msgSend(v11, "unsignedIntValue")}];
  [v6 setObject:v12 forKeyedSubscript:@"seqNo"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointNamePortraitHighlightsResult:(id)a3
{
  v19 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"PortraitHighlightsResult"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [v19 objectForKeyedSubscript:@"client"];
  if (v6)
  {
    v7 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:v6 error:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 bundleIdentifier];
      [v5 setObject:v9 forKeyedSubscript:@"BundleID"];
    }

    v10 = [v5 objectForKeyedSubscript:@"BundleID"];

    if (!v10)
    {
      [v5 setObject:v6 forKeyedSubscript:@"BundleID"];
    }
  }

  v11 = [v19 objectForKeyedSubscript:@"limit"];
  [v5 setObject:v11 forKeyedSubscript:@"limit"];

  v12 = MEMORY[0x277CCABB0];
  v13 = [v19 objectForKeyedSubscript:@"portraitResultCount"];
  v14 = [v12 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v13, "intValue"), 2)}];
  [v5 setObject:v14 forKeyedSubscript:@"portraitResultCount"];

  v15 = [v19 objectForKeyedSubscript:@"portraitCacheDate"];
  if (v15)
  {
    v16 = [MEMORY[0x277CBEB68] null];
    v17 = [v15 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      v18 = [v15 convertFromSystemToMonotonic];
      [v5 setObject:v18 forKeyedSubscript:@"portraitCacheDate"];
    }
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointNameSpotlightHighlightsResult:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v15 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SpotlightHighlightsResult"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"client"];

  if (v7)
  {
    v8 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:v7 error:0];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 bundleIdentifier];
      [v6 setObject:v10 forKeyedSubscript:@"BundleID"];
    }

    v11 = [v6 objectForKeyedSubscript:@"BundleID"];

    if (!v11)
    {
      [v6 setObject:v7 forKeyedSubscript:@"BundleID"];
    }
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = [v6 objectForKeyedSubscript:@"spotlightResultCount"];
  v14 = [v12 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v13, "intValue"), 2)}];
  [v6 setObject:v14 forKeyedSubscript:@"spotlightResultCount"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointTestMarker:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"TestMarker"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDASyncStart:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"DASyncStart"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDACalendarItemsDownloaded:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"DACalendarItemsDownloaded"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDACalendarItemsUploaded:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"DACalendarItemsUploaded"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMailFetch:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"MailFetch"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointNanoMailSession:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v36 = v4;
    v4 = [MEMORY[0x277D3F208] isWatch];
    if (v4)
    {
      v5 = [v36 objectForKeyedSubscript:@"Category"];

      if (v5)
      {
        v6 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"NanoMailSession"];
        v7 = [MEMORY[0x277CBEAA8] monotonicDate];
        v8 = [v36 objectForKeyedSubscript:@"Timestamp"];

        if (v8)
        {
          v9 = MEMORY[0x277CBEAA8];
          v10 = [v36 objectForKeyedSubscript:@"Timestamp"];
          [v10 doubleValue];
          v11 = [v9 dateWithTimeIntervalSince1970:?];
          v12 = [v11 convertFromSystemToMonotonic];

          v7 = v12;
        }

        if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
        {
          v13 = MEMORY[0x277CBEAA8];
          [v7 timeIntervalSince1970];
          v15 = [v13 dateWithTimeIntervalSince1970:round(v14 / 10.0) * 10.0];

          v7 = v15;
        }

        v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withDate:v7];
        v17 = [v36 objectForKeyedSubscript:@"Category"];
        v18 = [v17 isEqualToString:@"LoadWebView"];

        if (v18)
        {
          v19 = 1;
        }

        else
        {
          v20 = [v36 objectForKeyedSubscript:@"Category"];
          v21 = [v20 isEqualToString:@"MailFetch"];

          if (v21)
          {
            v19 = 2;
          }

          else
          {
            v22 = [v36 objectForKeyedSubscript:@"Category"];
            v23 = [v22 isEqualToString:@"AttachmentDownload"];

            if (v23)
            {
              v19 = 3;
            }

            else
            {
              v24 = [v36 objectForKeyedSubscript:@"Category"];
              v25 = [v24 isEqualToString:@"ContentDownload"];

              if (v25)
              {
                v19 = 4;
              }

              else
              {
                v19 = 0;
              }
            }
          }
        }

        v26 = [MEMORY[0x277CCABB0] numberWithInt:v19];
        [v16 setObject:v26 forKeyedSubscript:@"Category"];

        v27 = [v36 objectForKeyedSubscript:@"Duration"];
        [v16 setObject:v27 forKeyedSubscript:@"Duration"];

        if ([MEMORY[0x277D3F180] fullMode])
        {
          v28 = [v36 objectForKeyedSubscript:@"Account type"];
          [v16 setObject:v28 forKeyedSubscript:@"Account type"];

          v29 = [v36 objectForKeyedSubscript:@"Duration"];
        }

        else
        {
          v30 = [v36 objectForKeyedSubscript:@"Duration"];

          if (!v30)
          {
LABEL_22:
            v35 = [v36 objectForKeyedSubscript:@"Network interface"];
            [v16 setObject:v35 forKeyedSubscript:@"Network interface"];

            [(PLOperator *)self logEntry:v16];
            goto LABEL_23;
          }

          v31 = [v36 objectForKeyedSubscript:@"Duration"];
          [v31 doubleValue];
          v33 = v32;

          v29 = [MEMORY[0x277CCABB0] numberWithDouble:round(v33 * 100.0) / 100.0];
        }

        v34 = v29;
        [v16 setObject:v29 forKeyedSubscript:@"Duration"];

        goto LABEL_22;
      }
    }
  }

LABEL_23:

  MEMORY[0x2821F96F8](v4);
}

- (void)logEventPointJetsam:(unint64_t)a3
{
  v5 = [(PLOperator *)self storage];
  [v5 flushCachesWithReason:@"Jetsam"];

  v8 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Jetsam"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  [v6 setObject:v7 forKeyedSubscript:@"Level"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointBackgroundTransfer:(id)a3
{
  if (a3)
  {
    v22 = [a3 mutableCopy];
    v4 = [v22 objectForKeyedSubscript:@"errorFailingURL"];
    if (v4)
    {
      v5 = v4;
      v6 = [v22 objectForKeyedSubscript:@"errorFailingURL"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v22 objectForKeyedSubscript:@"errorFailingURL"];
        v9 = [v8 absoluteString];
        [v22 setObject:v9 forKeyedSubscript:@"errorFailingURL"];
      }
    }

    v10 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BackgroundTransfer"];
    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:v22];
    v12 = [v11 objectForKeyedSubscript:@"bytesReceived"];
    v13 = [v12 intValue];

    if (v13 >= 101)
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = [v11 objectForKeyedSubscript:@"bytesReceived"];
      v16 = [v14 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v15, "intValue"), 2)}];
      [v11 setObject:v16 forKeyedSubscript:@"bytesReceived"];
    }

    v17 = [v11 objectForKeyedSubscript:@"bytesSent"];
    v18 = [v17 intValue];

    if (v18 >= 101)
    {
      v19 = MEMORY[0x277CCABB0];
      v20 = [v11 objectForKeyedSubscript:@"bytesSent"];
      v21 = [v19 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v20, "intValue"), 2)}];
      [v11 setObject:v21 forKeyedSubscript:@"bytesSent"];
    }

    [(PLOperator *)self logEntry:v11];
  }
}

- (void)logEventPointNavd:(id)a3
{
  v13 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"navd"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [v13 objectForKey:@"Event"];
  v7 = [v6 isEqualToString:@"ReceivedNewHypothesis"];

  if (v7)
  {
    v8 = &unk_287146990;
  }

  else
  {
    v9 = [v13 objectForKey:@"Event"];
    v10 = [v9 isEqualToString:@"SendingETARequest"];

    if (v10)
    {
      v8 = &unk_2871469A8;
    }

    else
    {
      v11 = [v13 objectForKey:@"Event"];
      v12 = [v11 isEqualToString:@"RequestingDirections"];

      if (!v12)
      {
        goto LABEL_8;
      }

      v8 = &unk_2871469C0;
    }
  }

  [v5 setObject:v8 forKeyedSubscript:@"EventRequest"];
LABEL_8:
  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointNavdMapsWidgetSession:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"MapsWidgetSession"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointNavdGeoNetworkActivity:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v6 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"GEONetworkActivity"];
  [(PLXPCAgent *)self logNetworkActivity:v5 withEntryKey:v6];
}

- (void)logNetworkActivity:(id)a3 withEntryKey:(id)a4
{
  v26 = self;
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v33 = [v5 objectForKeyedSubscript:@"StartUnix"];
  v32 = [v5 objectForKeyedSubscript:@"EndUnix"];
  v7 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [v5 allKeys];
  v8 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    v27 = *v39;
    v28 = v5;
    do
    {
      v11 = 0;
      v29 = v9;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = [v5 objectForKeyedSubscript:{v12, v26}];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v31 = v11;
          v15 = [v5 objectForKeyedSubscript:v12];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v16 = [v15 allKeys];
          v17 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v35;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v35 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v34 + 1) + 8 * i);
                v22 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
                [v22 setObject:v33 forKeyedSubscript:@"StartUnix"];
                [v22 setObject:v32 forKeyedSubscript:@"EndUnix"];
                [v22 setObject:v12 forKeyedSubscript:@"Client"];
                [v22 setObject:v21 forKeyedSubscript:@"NetworkingReason"];
                v23 = [v15 objectForKeyedSubscript:v21];
                [v22 setObject:v23 forKeyedSubscript:@"RequestCount"];

                [v7 addObject:v22];
              }

              v18 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
            }

            while (v18);
          }

          v5 = v28;
          v9 = v29;
          v10 = v27;
          v11 = v31;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v9);
  }

  v42 = v6;
  v43 = v7;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  [(PLOperator *)v26 logEntries:v24 withGroupID:v6];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointNavdMapsNavigationStateEvent:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"MapsNavigationStateEvent"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMobileBackupStatistics:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MobileBackupStatistics"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = objc_alloc(MEMORY[0x277D3F190]);
        v13 = [v4 objectForKeyedSubscript:v11];
        v14 = [v12 initWithEntryKey:v5 withRawData:v13];

        [(PLOperator *)self logEntry:v14];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointMobileBackupEvents:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v21 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"MobileBackupEvents"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v21 withRawData:v5];

  if (([MEMORY[0x277D3F208] internalBuild] & 1) == 0)
  {
    v7 = MEMORY[0x277CBEAA8];
    v8 = [v6 objectForKeyedSubscript:@"start"];
    [v8 timeIntervalSince1970];
    v10 = [v7 dateWithTimeIntervalSince1970:round(v9)];
    [v6 setObject:v10 forKeyedSubscript:@"start"];

    v11 = MEMORY[0x277CBEAA8];
    v12 = [v6 objectForKeyedSubscript:@"end"];
    [v12 timeIntervalSince1970];
    v14 = [v11 dateWithTimeIntervalSince1970:round(v13)];
    [v6 setObject:v14 forKeyedSubscript:@"end"];
  }

  v15 = [v6 objectForKeyedSubscript:@"finished"];
  v16 = [v15 BOOLValue];

  if (v16)
  {
    v17 = MEMORY[0x277D3F180];
    v18 = objc_alloc(MEMORY[0x277CCABB0]);
    v19 = [v6 objectForKeyedSubscript:@"end"];
    [v19 timeIntervalSince1970];
    v20 = [v18 initWithDouble:?];
    [v17 setObject:v20 forKey:@"LastBackupTimestamp" saveToDisk:1];
  }

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointADD:(id)a3
{
  v4 = a3;
  if (+[PLUtilities isSafetyDataSubmissionAllowed])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ADD"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v4];
    [(PLOperator *)self logEntry:v6];
  }

  else
  {
    v7 = PLLogXPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventPointADD:];
    }
  }
}

- (BOOL)shouldLogAppActivationData
{
  if ([MEMORY[0x277D3F180] taskMode])
  {
    return 1;
  }

  v3 = MEMORY[0x277D3F180];

  return [v3 eplEnabled];
}

- (void)logEventPointAppActivationPerformanceActivationData:(id)a3
{
  v12 = a3;
  if ([(PLXPCAgent *)self shouldLogAppActivationData])
  {
    v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppActivationPerformanceActivationData"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v12];
    v6 = [v12 objectForKeyedSubscript:@"Timestamp"];

    if (v6)
    {
      v7 = [v12 objectForKeyedSubscript:@"Timestamp"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
      v11 = [v10 convertFromSystemToMonotonic];
      [v5 setEntryDate:v11];

      [(PLOperator *)self logEntry:v5];
    }
  }
}

- (void)logEventPointAppActivationPerformanceProcessData:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = self;
  if ([(PLXPCAgent *)self shouldLogAppActivationData])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppActivationPerformanceProcessData"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [v4 allKeys];
    v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          v11 = objc_alloc(MEMORY[0x277D3F190]);
          v12 = [v4 objectForKeyedSubscript:v10];
          v13 = [v11 initWithEntryKey:v5 withRawData:v12];

          v14 = [v4 objectForKeyedSubscript:v10];
          v15 = [v14 objectForKeyedSubscript:@"Timestamp"];

          if (v15)
          {
            v16 = [v4 objectForKeyedSubscript:v10];
            v17 = [v16 objectForKeyedSubscript:@"Timestamp"];
            [v17 doubleValue];
            v19 = v18;

            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v19];
            v21 = [v20 convertFromSystemToMonotonic];
            [v13 setEntryDate:v21];

            [(PLOperator *)v24 logEntry:v13];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointAppActivationPerformanceCPUStatistics:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = self;
  if ([(PLXPCAgent *)self shouldLogAppActivationData])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppActivationPerformanceCPUStatistics"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [v4 allKeys];
    v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          v11 = objc_alloc(MEMORY[0x277D3F190]);
          v12 = [v4 objectForKeyedSubscript:v10];
          v13 = [v11 initWithEntryKey:v5 withRawData:v12];

          v14 = [v4 objectForKeyedSubscript:v10];
          v15 = [v14 objectForKeyedSubscript:@"Timestamp"];

          if (v15)
          {
            v16 = [v4 objectForKeyedSubscript:v10];
            v17 = [v16 objectForKeyedSubscript:@"Timestamp"];
            [v17 doubleValue];
            v19 = v18;

            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v19];
            v21 = [v20 convertFromSystemToMonotonic];
            [v13 setEntryDate:v21];

            [(PLOperator *)v24 logEntry:v13];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointAppActivationPerformanceMemoryStatistics:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = self;
  if ([(PLXPCAgent *)self shouldLogAppActivationData])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppActivationPerformanceMemoryStatistics"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [v4 allKeys];
    v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          v11 = objc_alloc(MEMORY[0x277D3F190]);
          v12 = [v4 objectForKeyedSubscript:v10];
          v13 = [v11 initWithEntryKey:v5 withRawData:v12];

          v14 = [v4 objectForKeyedSubscript:v10];
          v15 = [v14 objectForKeyedSubscript:@"Timestamp"];

          if (v15)
          {
            v16 = [v4 objectForKeyedSubscript:v10];
            v17 = [v16 objectForKeyedSubscript:@"Timestamp"];
            [v17 doubleValue];
            v19 = v18;

            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v19];
            v21 = [v20 convertFromSystemToMonotonic];
            [v13 setEntryDate:v21];

            [(PLOperator *)v24 logEntry:v13];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointAppActivationPerformancePowerStateStatistics:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = self;
  if ([(PLXPCAgent *)self shouldLogAppActivationData])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppActivationPerformancePowerStateStatistics"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [v4 allKeys];
    v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          v11 = objc_alloc(MEMORY[0x277D3F190]);
          v12 = [v4 objectForKeyedSubscript:v10];
          v13 = [v11 initWithEntryKey:v5 withRawData:v12];

          v14 = [v4 objectForKeyedSubscript:v10];
          v15 = [v14 objectForKeyedSubscript:@"Timestamp"];

          if (v15)
          {
            v16 = [v4 objectForKeyedSubscript:v10];
            v17 = [v16 objectForKeyedSubscript:@"Timestamp"];
            [v17 doubleValue];
            v19 = v18;

            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v19];
            v21 = [v20 convertFromSystemToMonotonic];
            [v13 setEntryDate:v21];

            [(PLOperator *)v24 logEntry:v13];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAvailabilityModes:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v15 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AvailabilityModes"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withRawData:v5];
  v7 = MEMORY[0x277CBEAA8];
  v8 = [v5 objectForKeyedSubscript:@"timestamp"];
  v9 = [v8 convertFromSystemToMonotonic];
  [v9 timeIntervalSince1970];
  v11 = [v7 dateWithTimeIntervalSince1970:round(v10)];
  [v6 setEntryDate:v11];

  v12 = MEMORY[0x277CCABB0];
  v13 = [v5 objectForKeyedSubscript:@"SemanticType"];

  v14 = [v12 numberWithUnsignedInt:{-[PLXPCAgent mapAvailabilityModeSemanticType:](self, "mapAvailabilityModeSemanticType:", objc_msgSend(v13, "intValue"))}];
  [v6 setObject:v14 forKeyedSubscript:@"SemanticType"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointFocusFilters:(id)a3
{
  v14 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"FocusFilters"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v14];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v14 objectForKeyedSubscript:@"timestamp"];
  v8 = [v7 convertFromSystemToMonotonic];
  [v8 timeIntervalSince1970];
  v10 = [v6 dateWithTimeIntervalSince1970:round(v9)];
  [v5 setEntryDate:v10];

  if (([MEMORY[0x277D3F180] taskMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [v14 objectForKeyedSubscript:@"SemanticType"];
    v13 = [v11 numberWithUnsignedInt:{-[PLXPCAgent mapAvailabilityModeSemanticType:](self, "mapAvailabilityModeSemanticType:", objc_msgSend(v12, "intValue"))}];
    [v5 setObject:v13 forKeyedSubscript:@"SemanticType"];
  }

  else
  {
    [v5 setObject:0 forKeyedSubscript:@"SemanticType"];
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointCloudKit:(id)a3
{
  v58 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CloudKit"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v58];
  v6 = [v58 objectForKeyedSubscript:@"CKRequestUUIDs"];
  v7 = [v6 count];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v58 objectForKeyedSubscript:@"CKRequestUUIDs"];
    v10 = [v8 stringWithFormat:@"%@", v9];
    [v5 setObject:v10 forKeyedSubscript:@"CKRequestUUIDs"];
  }

  v11 = [v58 objectForKeyedSubscript:@"MMCSRequestUUIDs"];
  v12 = [v11 count];

  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [v58 objectForKeyedSubscript:@"MMCSRequestUUIDs"];
    v15 = [v13 stringWithFormat:@"%@", v14];
    [v5 setObject:v15 forKeyedSubscript:@"MMCSRequestUUIDs"];
  }

  v16 = [v58 objectForKeyedSubscript:@"CKProtoRequestOperationsByCount"];
  v17 = [v16 count];

  if (v17)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [v58 objectForKeyedSubscript:@"CKProtoRequestOperationsByCount"];
    v20 = [v19 description];
    v21 = [v18 stringWithFormat:@"%@", v20];
    [v5 setObject:v21 forKeyedSubscript:@"CKProtoRequestOperationsByCount"];
  }

  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v22 = [v58 objectForKeyedSubscript:@"operationGroupID"];

    if (v22)
    {
      v23 = [v58 objectForKeyedSubscript:@"operationGroupID"];
      v24 = [v23 length];
      if (v24 >= 4)
      {
        v25 = 4;
      }

      else
      {
        v25 = v24;
      }

      v26 = [v23 substringToIndex:v25];
      [v5 setObject:v26 forKeyedSubscript:@"operationGroupID"];
    }
  }

  if (([MEMORY[0x277D3F208] internalBuild] & 1) == 0)
  {
    [v5 setObject:&stru_287103958 forKeyedSubscript:@"operationID"];
    v27 = MEMORY[0x277CCABB0];
    v28 = [v5 objectForKeyedSubscript:@"CKBytesUploaded"];
    v29 = [v27 numberWithInt:{(100 * ((objc_msgSend(v28, "intValue") + 50) / 100))}];
    [v5 setObject:v29 forKeyedSubscript:@"CKBytesUploaded"];

    v30 = MEMORY[0x277CCABB0];
    v31 = [v5 objectForKeyedSubscript:@"CKBytesDownloaded"];
    v32 = [v30 numberWithInt:{(100 * ((objc_msgSend(v31, "intValue") + 50) / 100))}];
    [v5 setObject:v32 forKeyedSubscript:@"CKBytesDownloaded"];

    v33 = [v5 objectForKeyedSubscript:@"CKRecordsUploaded"];
    v34 = [v33 intValue];

    if (v34 >= 1001)
    {
      v35 = MEMORY[0x277CCABB0];
      v36 = [v5 objectForKeyedSubscript:@"CKRecordsUploaded"];
      v37 = [v35 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v36, "intValue"), 3)}];
      [v5 setObject:v37 forKeyedSubscript:@"CKRecordsUploaded"];
    }

    v38 = [v5 objectForKeyedSubscript:@"CKRecordsDownloaded"];
    v39 = [v38 intValue];

    if (v39 >= 1001)
    {
      v40 = MEMORY[0x277CCABB0];
      v41 = [v5 objectForKeyedSubscript:@"CKRecordsDownloaded"];
      v42 = [v40 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v41, "intValue"), 3)}];
      [v5 setObject:v42 forKeyedSubscript:@"CKRecordsDownloaded"];
    }

    v43 = [v5 objectForKeyedSubscript:@"CKRecordsDeleted"];
    v44 = [v43 intValue];

    if (v44 >= 1001)
    {
      v45 = MEMORY[0x277CCABB0];
      v46 = [v5 objectForKeyedSubscript:@"CKRecordsDeleted"];
      v47 = [v45 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v46, "intValue"), 3)}];
      [v5 setObject:v47 forKeyedSubscript:@"CKRecordsDeleted"];
    }

    v48 = [v5 objectForKeyedSubscript:@"CKAssetsUploaded"];
    v49 = [v48 intValue];

    if (v49 >= 101)
    {
      v50 = MEMORY[0x277CCABB0];
      v51 = [v5 objectForKeyedSubscript:@"CKAssetsUploaded"];
      v52 = [v50 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v51, "intValue"), 2)}];
      [v5 setObject:v52 forKeyedSubscript:@"CKAssetsUploaded"];
    }

    v53 = [v5 objectForKeyedSubscript:@"CKAssetsDownloaded"];
    v54 = [v53 intValue];

    if (v54 >= 101)
    {
      v55 = MEMORY[0x277CCABB0];
      v56 = [v5 objectForKeyedSubscript:@"CKAssetsDownloaded"];
      v57 = [v55 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v56, "intValue"), 2)}];
      [v5 setObject:v57 forKeyedSubscript:@"CKAssetsDownloaded"];
    }
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointLocationVehicularDetectionSession:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v14 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"VehicularDetection"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withRawData:v5];

  v7 = MEMORY[0x277CBEAA8];
  v8 = [v6 entryDate];
  [v8 timeIntervalSince1970];
  v10 = v9;
  v11 = [v6 entryDate];
  [v11 timeIntervalSince1970];
  *&v12 = v12;
  v13 = [v7 dateWithTimeIntervalSince1970:{round(v10 - fmodf(*&v12, 60.0))}];
  [v6 setEntryDate:v13];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMotionWakeReasonSession:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"MotionWakeReason"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointCommuteRefreshSession:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v22 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"CommuteRefresh"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v22 withRawData:v5];

  v7 = [v6 objectForKeyedSubscript:@"LOIEntryDate"];
  LODWORD(v5) = [v7 intValue];

  if (v5 >= 1)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [v6 objectForKeyedSubscript:@"LOIEntryDate"];
    v10 = [v9 intValue];
    v11 = [v6 objectForKeyedSubscript:@"LOIEntryDate"];
    v12 = [v11 intValue];
    v13 = [v8 numberWithInt:(v10 + 300 * (v12 / 300) - v12)];
    [v6 setObject:v13 forKeyedSubscript:@"LOIEntryDate"];
  }

  v14 = [v6 objectForKeyedSubscript:@"LOIExitDate"];
  v15 = [v14 intValue];

  if (v15 >= 1)
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = [v6 objectForKeyedSubscript:@"LOIExitDate"];
    v18 = [v17 intValue];
    v19 = [v6 objectForKeyedSubscript:@"LOIExitDate"];
    v20 = [v19 intValue];
    v21 = [v16 numberWithInt:(v18 + 300 * (v20 / 300) - v20)];
    [v6 setObject:v21 forKeyedSubscript:@"LOIExitDate"];
  }

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointSecItemSession:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SecItem"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointSiriActivation:(id)a3
{
  v10 = a3;
  if (v10 && [MEMORY[0x277D3F208] isWatch])
  {
    v4 = [MEMORY[0x277CBEAA8] monotonicDate];
    if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
    {
      v5 = MEMORY[0x277CBEAA8];
      [v4 timeIntervalSince1970];
      v7 = [v5 dateWithTimeIntervalSince1970:round(v6 / 60.0) * 60.0];

      v4 = v7;
    }

    v8 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SiriActivation"];
    v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v10];
    [v9 setEntryDate:v4];
    [(PLOperator *)self logEntry:v9];
  }
}

- (void)logEventPointAirPlayDiscoveryMode:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v10 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AirPlayDiscoveryMode"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [v5 objectForKeyedSubscript:@"Mode"];

  v8 = [(PLXPCAgent *)self modeTypeStringToEnum:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"Mode"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointShortcutsTriggerFired:(id)a3
{
  if (!a3)
  {
    return;
  }

  v15 = [a3 mutableCopy];
  if (![MEMORY[0x277D3F180] fullMode])
  {
    [v15 setObject:0 forKeyedSubscript:@"WFTriggerID"];
    [v15 setObject:0 forKeyedSubscript:@"WFWorkflowID"];
    [v15 setObject:0 forKeyedSubscript:@"WFWorkflowName"];
    [v15 setObject:0 forKeyedSubscript:@"WFAssociatedAppBundleID"];
LABEL_10:
    v9 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ShortcutsTriggerFired"];
    v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:v15];
    if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
    {
      v11 = MEMORY[0x277CBEAA8];
      v12 = [v10 entryDate];
      [v12 timeIntervalSince1970];
      v14 = [v11 dateWithTimeIntervalSince1970:round(v13)];
      [v10 setEntryDate:v14];
    }

    [(PLOperator *)self logEntry:v10];

    goto LABEL_13;
  }

  v4 = [v15 objectForKeyedSubscript:@"WFWorkflowName"];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 length];
    if (v6 >= 0x40)
    {
      v7 = 64;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 substringToIndex:v7];
    [v15 setObject:v8 forKeyedSubscript:@"WFWorkflowName"];

    goto LABEL_10;
  }

LABEL_13:
}

- (void)logEventForwardSOSKVSRateLimitingEvent:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 objectForKeyedSubscript:@"timestamp"], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_15:
    v11 = PLLogXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PLXPCAgent logEventForwardSOSKVSRateLimitingEvent:];
    }

    goto LABEL_17;
  }

  v7 = v6;
  v8 = [v5 objectForKeyedSubscript:@"peerShouldSend"];
  if (!v8)
  {

    goto LABEL_15;
  }

  v9 = v8;
  v10 = [v5 objectForKeyedSubscript:@"attributeBadness"];

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SOSKVSRateLimitingEvent"];
  v12 = [v5 objectForKeyedSubscript:@"timestamp"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v14];
  v16 = [v15 convertFromSystemToMonotonic];

  v17 = [v5 objectForKeyedSubscript:@"peerShouldSend"];
  v18 = [v17 BOOLValue];

  v31 = v5;
  [v5 objectForKeyedSubscript:@"attributeBadness"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = v35 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        SOSKVSEntries = self->_SOSKVSEntries;
        self->_SOSKVSEntries = SOSKVSEntries + 1;
        if (SOSKVSEntries >= 1000)
        {
          v30 = PLLogXPC();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [PLXPCAgent logEventForwardSOSKVSRateLimitingEvent:];
          }

          goto LABEL_21;
        }

        v26 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
        [v26 setEntryDate:v16];
        [v26 setObject:v24 forKeyedSubscript:@"AccessGroup"];
        v27 = [v19 objectForKeyedSubscript:v24];
        [v26 setObject:v27 forKeyedSubscript:@"BadnessLevel"];

        v28 = [MEMORY[0x277CCABB0] numberWithBool:v18];
        [v26 setObject:v28 forKeyedSubscript:@"peerShouldSend"];

        [(PLOperator *)self logEntry:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v5 = v31;
LABEL_17:

  v29 = *MEMORY[0x277D85DE8];
}

- (int)convertPPSSKALogEventName:(id)a3
{
  v3 = a3;
  v4 = PLLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent convertPPSSKALogEventName:];
  }

  if ([v3 isEqualToString:@"AssertedPresence"])
  {
    v5 = 0;
  }

  else if ([v3 isEqualToString:@"CreatedChannel"])
  {
    v5 = 1;
  }

  else if ([v3 isEqualToString:@"PolledForPresence"])
  {
    v5 = 2;
  }

  else if ([v3 isEqualToString:@"ProvisionedPayload"])
  {
    v5 = 3;
  }

  else if ([v3 isEqualToString:@"PublishedStatus"])
  {
    v5 = 4;
  }

  else if ([v3 isEqualToString:@"ReceivedPayload"])
  {
    v5 = 5;
  }

  else if ([v3 isEqualToString:@"IDSMessage"])
  {
    v5 = 6;
  }

  else if ([v3 isEqualToString:@"Subscribed"])
  {
    v5 = 7;
  }

  else if ([v3 isEqualToString:@"UnassertedPresence"])
  {
    v5 = 8;
  }

  else if ([v3 isEqualToString:@"Unsubscribed"])
  {
    v5 = 9;
  }

  else
  {
    v6 = PLLogXPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent convertPPSSKALogEventName:];
    }

    v5 = 10;
  }

  return v5;
}

- (void)logStatusKitAgentAggregatePushes:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x277CBEAA8] monotonicDate];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * v11);
          v13 = [MEMORY[0x277CBEB38] dictionary];
          v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLXPCAgent convertPPSSKALogEventName:](self, "convertPPSSKALogEventName:", v12)}];
          [v13 setObject:v14 forKeyedSubscript:@"EventName"];

          v15 = [v7 objectForKeyedSubscript:v12];
          v16 = v15;
          if (v15 && [v15 count])
          {
            v17 = [v16 objectForKeyedSubscript:@"ChannelType"];
            [v13 setObject:v17 forKeyedSubscript:@"ChannelType"];

            v18 = [v16 objectForKeyedSubscript:@"ClientID"];
            [v13 setObject:v18 forKeyedSubscript:@"ClientID"];

            v19 = [v16 objectForKeyedSubscript:@"NumIncoming"];
            [v13 setObject:v19 forKeyedSubscript:@"NumIncoming"];

            v20 = [v16 objectForKeyedSubscript:@"NumOutgoing"];
            [v13 setObject:v20 forKeyedSubscript:@"NumOutgoing"];

            v21 = [v16 objectForKeyedSubscript:@"Topic"];
            [v13 setObject:v21 forKeyedSubscript:@"Topic"];
          }

          else
          {
            v21 = PLLogXPC();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v30 = v12;
              _os_log_debug_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEBUG, "StatusKitAgent AggregatedPushes pushes Dictionary is empty for event: %@", buf, 0xCu);
            }
          }

          v22 = PLLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v30 = v13;
            _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "StatusKitAgent AggregatedPushes entryPayload:%@", buf, 0xCu);
          }

          [(PLOperator *)self logForSubsystem:@"StatusKitAgent" category:@"AggregatedPushes" data:v13 date:v6];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v9);
    }

    v5 = v24;
  }

  else
  {
    v6 = PLLogXPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logStatusKitAgentAggregatePushes:];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardGMSOptIn
{
  if ([MEMORY[0x277D3F208] hasGenerativeModelSystems] && objc_msgSend(MEMORY[0x277D3F208], "isiOS"))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__PLXPCAgent_logEventForwardGMSOptIn__block_invoke;
    v5[3] = &unk_279A5CA58;
    v5[4] = self;
    [MEMORY[0x277CFB458] getGMOptInToggleWithCompletion:v5];
  }

  else
  {
    v3 = PLLogXPC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_DEFAULT, "Device does not support GenerativeFunctionMetrics OptIn logging", v4, 2u);
    }
  }
}

void __37__PLXPCAgent_logEventForwardGMSOptIn__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v7 = PLLogXPC();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __37__PLXPCAgent_logEventForwardGMSOptIn__block_invoke_cold_1();
    }

    [v6 setObject:&unk_2871469D8 forKeyedSubscript:@"Enabled"];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = a2;
      _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_DEFAULT, "GenerativeFunctionMetrics OptIn isEnabled state: %d", buf, 8u);
    }

    v9 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    [v6 setObject:v9 forKeyedSubscript:@"Enabled"];
  }

  [*(a1 + 32) logForSubsystem:@"GenerativeFunctionMetrics" category:@"OptIn" data:v6];
  [*(a1 + 32) logForSubsystem:@"BackgroundProcessing" category:@"GenerativeFunctionMetricsOptIn" data:v6];
  v12 = v6;
  v10 = v6;
  AnalyticsSendEventLazy();

  v11 = *MEMORY[0x277D85DE8];
}

id __37__PLXPCAgent_logEventForwardGMSOptIn__block_invoke_2950(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PLLogXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"Enabled"];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "GenerativeFunctionMetrics OptIn state being sent to Core Analytics: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)logEventForwardAssetLoadGF:(id)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"timestampValue"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"timestampValue"];
  v10 = [v4 objectForKeyedSubscript:@"eventType"];
  LODWORD(v7) = [v10 intValue];

  v11 = [v4 objectForKeyedSubscript:@"catalogResourceIdentifier"];
  v12 = [PLUtilities removeFirstPartyBundleIDPrefix:v11];
  [v5 setObject:v12 forKeyedSubscript:@"catalogResourceIdentifier"];

  if (v7 == 1)
  {
    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"assetLoad" data:v5 date:v9];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_2871469D8 withComparisonOperation:6];
    v14 = objc_alloc(MEMORY[0x277D3F260]);
    v15 = [v5 objectForKeyedSubscript:@"catalogResourceIdentifier"];
    v16 = [v14 initWithKey:@"catalogResourceIdentifier" withValue:v15 withComparisonOperation:0];

    v17 = [MEMORY[0x277D3F2A0] sharedCore];
    v18 = [v17 storage];
    v28[0] = v16;
    v28[1] = v13;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v20 = [v18 lastEntryForKey:@"GenerativeFunctionMetrics_assetLoad_1_2" withComparisons:v19 isSingleton:1];

    v21 = PLLogXPC();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      if (v22)
      {
        [PLXPCAgent logEventForwardAssetLoadGF:];
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __41__PLXPCAgent_logEventForwardAssetLoadGF___block_invoke;
      v24[3] = &unk_279A5C768;
      v25 = v20;
      v26 = v9;
      v27 = v4;
      [(PLOperator *)self updateEntry:v25 withBlock:v24];
    }

    else
    {
      if (v22)
      {
        [PLXPCAgent logEventForwardAssetLoadGF:];
      }

      [v5 setObject:v9 forKeyedSubscript:@"timestampEnd"];
      [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"assetLoad" data:v5 date:v9];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __41__PLXPCAgent_logEventForwardAssetLoadGF___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = [v1[2] objectForKeyedSubscript:@"result"];
  [*v1 setObject:v2 forKeyedSubscript:@"result"];

  v3 = PLLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __41__PLXPCAgent_logEventForwardAssetLoadGF___block_invoke_cold_1(v1);
  }
}

- (void)logFileResidentInfo:(id)a3
{
  v16 = a3;
  v4 = [v16 mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [v16 objectForKeyedSubscript:@"timestampValue"];
  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSince1970:?];

  v8 = [v7 convertFromSystemToMonotonic];

  [v4 removeObjectForKey:@"timestampValue"];
  v9 = [v16 objectForKeyedSubscript:@"fileResidentRatio"];

  if (v9)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [v16 objectForKeyedSubscript:@"fileResidentRatio"];
    [v11 doubleValue];
    v13 = [v10 numberWithInt:(v12 * 100.0)];
    [v4 setObject:v13 forKeyedSubscript:@"fileResidentRatio"];
  }

  v14 = [v16 objectForKeyedSubscript:@"catalogResourceIdentifier"];
  v15 = [PLUtilities removeFirstPartyBundleIDPrefix:v14];
  [v4 setObject:v15 forKeyedSubscript:@"catalogResourceIdentifier"];

  [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"fileResidentInfo" data:v4 date:v8];
}

- (void)logEventForwardMMExecuteRequest:(id)a3
{
  v44[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"timestampValue"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"timestampValue"];
  v10 = [v4 objectForKeyedSubscript:@"eventType"];
  LODWORD(v7) = [v10 intValue];

  if (v7 == 1)
  {
    v11 = [v4 objectForKeyedSubscript:@"createdByBundleIdentifier"];
    v12 = [PLUtilities removeFirstPartyBundleIDPrefix:v11];
    [v5 setObject:v12 forKeyedSubscript:@"createdByBundleIdentifier"];

    v13 = [v4 objectForKeyedSubscript:@"onBehalfOfBundleIdentifier"];
    v14 = [PLUtilities removeFirstPartyBundleIDPrefix:v13];
    [v5 setObject:v14 forKeyedSubscript:@"onBehalfOfBundleIdentifier"];

    v15 = [v4 objectForKeyedSubscript:@"catalogResourceIdentifier"];
    v16 = [PLUtilities removeFirstPartyBundleIDPrefix:v15];
    [v5 setObject:v16 forKeyedSubscript:@"catalogResourceIdentifier"];

    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"mmExecuteRequest" data:v5 date:v9];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_2871469D8 withComparisonOperation:6];
    v18 = objc_alloc(MEMORY[0x277D3F260]);
    v19 = [v5 objectForKeyedSubscript:@"requestIdentifier"];
    v20 = [v18 initWithKey:@"requestIdentifier" withValue:v19 withComparisonOperation:0];

    v21 = [MEMORY[0x277D3F2A0] sharedCore];
    v22 = [v21 storage];
    v44[0] = v20;
    v44[1] = v17;
    v39 = v17;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v24 = [v22 lastEntryForKey:@"GenerativeFunctionMetrics_mmExecuteRequest_1_2" withComparisons:v23 isSingleton:1];

    v25 = PLLogXPC();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    if (v24)
    {
      v37 = v20;
      if (v26)
      {
        [PLXPCAgent logEventForwardMMExecuteRequest:];
      }

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __46__PLXPCAgent_logEventForwardMMExecuteRequest___block_invoke;
      v40[3] = &unk_279A5C768;
      v27 = v24;
      v41 = v27;
      v28 = v9;
      v42 = v28;
      v43 = v5;
      [(PLOperator *)self updateEntry:v27 withBlock:v40];
      v29 = [v27 objectForKeyedSubscript:@"onBehalfOfBundleIdentifier"];
      v30 = [v27 objectForKeyedSubscript:@"createdByBundleIdentifier"];
      v31 = [v30 isEqualToString:@"assistantd"];

      if (v31)
      {

        v29 = @"assistantd";
      }

      v32 = [v27 entryDate];
      [v32 timeIntervalSince1970];
      v34 = v33;

      [v28 timeIntervalSince1970];
      [(PLXPCAgent *)self setAccountingEntriesFor:self->_inferenceEntries withBundleID:v29 withStartTime:v34 withEndTime:v35];

      v20 = v38;
    }

    else
    {
      if (v26)
      {
        [PLXPCAgent logEventForwardMMExecuteRequest:];
      }

      [v5 setObject:v9 forKeyedSubscript:@"timestampEnd"];
      [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"mmExecuteRequest" data:v5 date:v9];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __46__PLXPCAgent_logEventForwardMMExecuteRequest___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = [v1[2] objectForKeyedSubscript:@"error"];
  [*v1 setObject:v2 forKeyedSubscript:@"error"];

  v3 = PLLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __46__PLXPCAgent_logEventForwardMMExecuteRequest___block_invoke_cold_1(v1);
  }
}

- (void)logPhotosGenerativeEdit:(id)a3
{
  v12 = a3;
  v4 = [v12 objectForKeyedSubscript:@"endTime"];
  if (v4)
  {
    v5 = v4;
    v6 = [v12 objectForKeyedSubscript:@"startTime"];

    if (v6)
    {
      v7 = [v12 mutableCopy];
      v8 = [v12 objectForKeyedSubscript:@"endTime"];
      v9 = [v8 convertFromSystemToMonotonic];

      [v7 setObject:v9 forKeyedSubscript:@"timestampEnd"];
      v10 = [v12 objectForKeyedSubscript:@"startTime"];
      v11 = [v10 convertFromSystemToMonotonic];

      [v7 removeObjectForKey:@"startTime"];
      [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"PhotosGenerativeEdit" data:v7 date:v11];
    }
  }
}

- (void)logEventForwardSummarization:(id)a3
{
  v25 = a3;
  if (![MEMORY[0x277D3F208] hasGenerativeModelSystems])
  {
    goto LABEL_12;
  }

  v4 = [v25 mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [v25 objectForKeyedSubscript:@"timestampEnd"];
  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSinceReferenceDate:?];

  v8 = [v7 convertFromSystemToMonotonic];

  [v4 setObject:v8 forKeyedSubscript:@"timestampEnd"];
  v9 = MEMORY[0x277CBEAA8];
  v10 = [v25 objectForKeyedSubscript:@"timestampStart"];
  [v10 doubleValue];
  v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

  v12 = [v11 convertFromSystemToMonotonic];

  [v4 removeObjectForKey:@"timestampStart"];
  v13 = [v25 objectForKey:@"kind"];
  if (v13)
  {
    v14 = v13;
    v15 = [v25 objectForKeyedSubscript:@"kind"];
    v16 = [v15 intValue];

    if (v16 == 4)
    {
      if ([MEMORY[0x277D3F208] isiOS])
      {
        v17 = @"com.apple.mobilemail";
LABEL_8:
        [v4 setObject:v17 forKeyedSubscript:@"bundleID"];
        goto LABEL_9;
      }

      if ([MEMORY[0x277D3F208] isARMMac])
      {
        v17 = @"com.apple.mail";
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"Summarization" data:v4 date:v12];
  v18 = [v4 objectForKeyedSubscript:@"bundleID"];
  [v12 timeIntervalSince1970];
  v20 = v19;
  [v8 timeIntervalSince1970];
  v22 = v21;
  [(PLXPCAgent *)self setAccountingEntriesFor:self->_summarizationEntries withBundleID:v18 withStartTime:v20 withEndTime:v21];
  v23 = [v25 objectForKeyedSubscript:@"kind"];
  v24 = [v23 intValue];

  if ((v24 & 0xFFFFFFFE) == 2)
  {
    [(PLXPCAgent *)self setAccountingEntriesFor:self->_summarizedNotificationEntries withBundleID:v18 withStartTime:v20 withEndTime:v22];
  }

LABEL_12:
}

- (void)logEventForwardTGIExecuteRequest:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"timestampValue"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"timestampValue"];
  v10 = [v4 objectForKeyedSubscript:@"eventType"];
  v11 = [v10 intValue];

  v12 = PLLogXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventForwardTGIExecuteRequest:];
  }

  if (v11 == 1)
  {
    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"tgiExecuteRequest" data:v5 date:v9];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_2871469D8 withComparisonOperation:6];
    v14 = objc_alloc(MEMORY[0x277D3F260]);
    v15 = [v5 objectForKeyedSubscript:@"requestIdentifier"];
    v16 = [v14 initWithKey:@"requestIdentifier" withValue:v15 withComparisonOperation:0];

    v17 = [MEMORY[0x277D3F2A0] sharedCore];
    v18 = [v17 storage];
    v38[0] = v16;
    v38[1] = v13;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v20 = [v18 lastEntryForKey:@"GenerativeFunctionMetrics_tgiExecuteRequest_1_2" withComparisons:v19 isSingleton:1];

    v21 = PLLogXPC();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      if (v22)
      {
        [PLXPCAgent logEventForwardTGIExecuteRequest:];
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __47__PLXPCAgent_logEventForwardTGIExecuteRequest___block_invoke;
      v34[3] = &unk_279A5C768;
      v35 = v20;
      v36 = v9;
      v37 = v4;
      [(PLOperator *)self updateEntry:v35 withBlock:v34];
    }

    else
    {
      if (v22)
      {
        [PLXPCAgent logEventForwardTGIExecuteRequest:];
      }

      [v5 setObject:v9 forKeyedSubscript:@"timestampEnd"];
      v23 = [v4 objectForKeyedSubscript:@"sd_draftTokenAcceptanceRate"];

      if (v23)
      {
        v24 = MEMORY[0x277CCABB0];
        v25 = [v4 objectForKeyedSubscript:@"sd_draftTokenAcceptanceRate"];
        [v25 doubleValue];
        v27 = [v24 numberWithInt:(v26 * 100.0)];
        [v5 setObject:v27 forKeyedSubscript:@"sd_draftTokenAcceptanceRate"];
      }

      v28 = [v4 objectForKeyedSubscript:@"sd_speculationSuccessRate"];

      if (v28)
      {
        v29 = MEMORY[0x277CCABB0];
        v30 = [v4 objectForKeyedSubscript:@"sd_speculationSuccessRate"];
        [v30 doubleValue];
        v32 = [v29 numberWithInt:(v31 * 100.0)];
        [v5 setObject:v32 forKeyedSubscript:@"sd_speculationSuccessRate"];
      }

      [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"tgiExecuteRequest" data:v5 date:v9];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __47__PLXPCAgent_logEventForwardTGIExecuteRequest___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v3 = [v2[2] objectForKeyedSubscript:@"errorType"];
  [*v2 setObject:v3 forKeyedSubscript:@"errorType"];

  v4 = [v2[2] objectForKeyedSubscript:@"extendTokenInferenceLatency"];
  [*v2 setObject:v4 forKeyedSubscript:@"extendTokenInferenceLatency"];

  v5 = [v2[2] objectForKeyedSubscript:@"firstTokenInferenceLatency"];
  [*v2 setObject:v5 forKeyedSubscript:@"firstTokenInferenceLatency"];

  v6 = [v2[2] objectForKeyedSubscript:@"inputTokensCount"];
  [*v2 setObject:v6 forKeyedSubscript:@"inputTokensCount"];

  v7 = [v2[2] objectForKeyedSubscript:@"outputTokensCount"];
  [*v2 setObject:v7 forKeyedSubscript:@"outputTokensCount"];

  v8 = [v2[2] objectForKeyedSubscript:@"qos"];
  [*v2 setObject:v8 forKeyedSubscript:@"qos"];

  v9 = [v2[2] objectForKeyedSubscript:@"sd_draftModelInferenceCallCount"];
  [*v2 setObject:v9 forKeyedSubscript:@"sd_draftModelInferenceCallCount"];

  v10 = [v2[2] objectForKeyedSubscript:@"sd_targetModelInferenceCallCount"];
  [*v2 setObject:v10 forKeyedSubscript:@"sd_targetModelInferenceCallCount"];

  v11 = [v2[2] objectForKeyedSubscript:@"sd_draftOutputTokensCount"];
  [*v2 setObject:v11 forKeyedSubscript:@"sd_draftOutputTokensCount"];

  v12 = [v2[2] objectForKeyedSubscript:@"sd_totalOutputTokensCount"];
  [*v2 setObject:v12 forKeyedSubscript:@"sd_totalOutputTokensCount"];

  v13 = [v2[2] objectForKeyedSubscript:@"sd_draftModelTotalLatency"];
  [*v2 setObject:v13 forKeyedSubscript:@"sd_draftModelTotalLatency"];

  v14 = [v2[2] objectForKeyedSubscript:@"sd_targetModelTotalLatency"];
  [*v2 setObject:v14 forKeyedSubscript:@"sd_targetModelTotalLatency"];

  v15 = [v2[2] objectForKeyedSubscript:@"sd_draftTokenAcceptanceRate"];

  if (v15)
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = [*(a1 + 48) objectForKeyedSubscript:@"sd_draftTokenAcceptanceRate"];
    [v17 doubleValue];
    v19 = [v16 numberWithInt:(v18 * 100.0)];
    [*(a1 + 32) setObject:v19 forKeyedSubscript:@"sd_draftTokenAcceptanceRate"];
  }

  v20 = [*(a1 + 48) objectForKeyedSubscript:@"sd_speculationSuccessRate"];

  if (v20)
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = [*(a1 + 48) objectForKeyedSubscript:@"sd_speculationSuccessRate"];
    [v22 doubleValue];
    v24 = [v21 numberWithInt:(v23 * 100.0)];
    [*(a1 + 32) setObject:v24 forKeyedSubscript:@"sd_speculationSuccessRate"];
  }

  v25 = PLLogXPC();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __47__PLXPCAgent_logEventForwardTGIExecuteRequest___block_invoke_cold_1(v2);
  }
}

- (void)logEventForwardSmartReplySession:(id)a3
{
  v39[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"EventTime"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSinceReferenceDate:?];

  v9 = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"EventTime"];
  v10 = [v4 objectForKeyedSubscript:@"EventType"];
  v11 = [v10 intValue];

  v12 = PLLogXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventForwardSmartReplySession:];
  }

  if (v11)
  {
    v32 = v9;
    v34 = self;
    v13 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_2871469D8 withComparisonOperation:6];
    v14 = objc_alloc(MEMORY[0x277D3F260]);
    v15 = [v4 objectForKeyedSubscript:@"App"];
    v16 = [v14 initWithKey:@"App" withValue:v15 withComparisonOperation:0];

    v17 = objc_alloc(MEMORY[0x277D3F260]);
    v18 = [v4 objectForKeyedSubscript:@"QueryType"];
    v19 = [v17 initWithKey:@"QueryType" withValue:v18 withComparisonOperation:0];

    v20 = objc_alloc(MEMORY[0x277D3F260]);
    v21 = [v4 objectForKeyedSubscript:@"InputTokenCount"];
    v22 = [v20 initWithKey:@"InputTokenCount" withValue:v21 withComparisonOperation:0];

    v23 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"OutputTokenCount" withValue:&unk_2871469D8 withComparisonOperation:6];
    v24 = [MEMORY[0x277D3F2A0] sharedCore];
    v25 = [v24 storage];
    v33 = v13;
    v39[0] = v13;
    v39[1] = v16;
    v31 = v16;
    v39[2] = v19;
    v39[3] = v22;
    v39[4] = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:5];
    v27 = [v25 lastEntryForKey:@"GenerativeFunctionMetrics_SmartReplySession_1_2" withComparisons:v26 isSingleton:1];

    v28 = PLLogXPC();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
    if (v27)
    {
      v9 = v32;
      if (v29)
      {
        [PLXPCAgent logEventForwardSmartReplySession:];
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __47__PLXPCAgent_logEventForwardSmartReplySession___block_invoke;
      v35[3] = &unk_279A5C768;
      v36 = v27;
      v37 = v32;
      v38 = v4;
      [(PLOperator *)v34 updateEntry:v36 withBlock:v35];
    }

    else
    {
      v9 = v32;
      if (v29)
      {
        [PLXPCAgent logEventForwardSmartReplySession:];
      }

      [v5 setObject:v32 forKeyedSubscript:@"timestampEnd"];
      [(PLOperator *)v34 logForSubsystem:@"GenerativeFunctionMetrics" category:@"SmartReplySession" data:v5 date:v32];
    }
  }

  else
  {
    [v5 removeObjectForKey:@"OutputTokenCount"];
    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"SmartReplySession" data:v5 date:v9];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __47__PLXPCAgent_logEventForwardSmartReplySession___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = [v1[2] objectForKeyedSubscript:@"OutputTokenCount"];
  [*v1 setObject:v2 forKeyedSubscript:@"OutputTokenCount"];

  v3 = [v1[2] objectForKeyedSubscript:@"EventType"];
  [*v1 setObject:v3 forKeyedSubscript:@"EventType"];

  v4 = PLLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __47__PLXPCAgent_logEventForwardSmartReplySession___block_invoke_cold_1(v1);
  }
}

- (int)convertPixelCount:(int)a3
{
  v4 = PLLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent convertPixelCount:];
  }

  if ((a3 - 100000) < 0x186A1)
  {
    return 1;
  }

  if ((a3 - 200001) < 0x493E0)
  {
    return 2;
  }

  if ((a3 - 500001) < 0x927C0)
  {
    return 3;
  }

  if (a3 > 1100000)
  {
    return 4;
  }

  v6 = PLLogXPC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent convertPixelCount:];
  }

  return 5;
}

- (void)logEventForwardAppleDiffusion:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F208] hasGenerativeModelSystems])
  {
    v5 = [v4 mutableCopy];
    v6 = [v4 objectForKeyedSubscript:@"endDate"];
    v7 = [v6 convertFromSystemToMonotonic];

    [v5 setObject:v7 forKeyedSubscript:@"timestampEnd"];
    v8 = [v4 objectForKeyedSubscript:@"startDate"];
    v9 = [v8 convertFromSystemToMonotonic];

    [v5 removeObjectForKey:@"startDate"];
    v10 = [v5 objectForKeyedSubscript:@"inputPixels"];

    if (v10)
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = [v4 objectForKeyedSubscript:@"inputPixels"];
      v13 = [v11 numberWithInt:{-[PLXPCAgent convertPixelCount:](self, "convertPixelCount:", objc_msgSend(v12, "intValue"))}];
      [v5 setObject:v13 forKeyedSubscript:@"inputPixels"];
    }

    v14 = [v5 objectForKeyedSubscript:@"outputPixels"];

    if (v14)
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = [v4 objectForKeyedSubscript:@"outputPixels"];
      v17 = [v15 numberWithInt:{-[PLXPCAgent convertPixelCount:](self, "convertPixelCount:", objc_msgSend(v16, "intValue"))}];
      [v5 setObject:v17 forKeyedSubscript:@"outputPixels"];
    }

    v18 = PLLogXPC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventForwardAppleDiffusion:];
    }

    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"appleDiffusion" data:v5 date:v9];
  }
}

- (void)logEventForwardHandwritingInference:(id)a3
{
  v29 = a3;
  v4 = [v29 mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [v29 objectForKeyedSubscript:@"startTimestamp"];
  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSinceReferenceDate:?];

  v8 = [v7 convertFromSystemToMonotonic];

  [v4 removeObjectForKey:@"startTimestamp"];
  v9 = MEMORY[0x277CBEAA8];
  v10 = [v29 objectForKeyedSubscript:@"endTimestamp"];
  [v10 doubleValue];
  v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

  v12 = [v11 convertFromSystemToMonotonic];

  [v4 setObject:v12 forKeyedSubscript:@"timestampEnd"];
  v13 = [v29 objectForKeyedSubscript:@"inputStringLength"];

  if (v13)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = [v29 objectForKeyedSubscript:@"inputStringLength"];
    v16 = [v14 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v15, "intValue"), 1)}];
    [v4 setObject:v16 forKeyedSubscript:@"inputStringLength"];
  }

  v17 = [v29 objectForKeyedSubscript:@"inputStrokeCount"];

  if (v17)
  {
    v18 = MEMORY[0x277CCABB0];
    v19 = [v29 objectForKeyedSubscript:@"inputStrokeCount"];
    v20 = [v18 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v19, "intValue"), 1)}];
    [v4 setObject:v20 forKeyedSubscript:@"inputStrokeCount"];
  }

  v21 = [v29 objectForKeyedSubscript:@"outputStringLength"];

  if (v21)
  {
    v22 = MEMORY[0x277CCABB0];
    v23 = [v29 objectForKeyedSubscript:@"outputStringLength"];
    v24 = [v22 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v23, "intValue"), 1)}];
    [v4 setObject:v24 forKeyedSubscript:@"outputStringLength"];
  }

  v25 = [v29 objectForKeyedSubscript:@"outputStrokeCount"];

  if (v25)
  {
    v26 = MEMORY[0x277CCABB0];
    v27 = [v29 objectForKeyedSubscript:@"outputStrokeCount"];
    v28 = [v26 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v27, "intValue"), 1)}];
    [v4 setObject:v28 forKeyedSubscript:@"outputStrokeCount"];
  }

  [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"HandwritingInference" data:v4 date:v8];
}

- (void)logEventPointANE:(id)a3 withCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![MEMORY[0x277D3F208] hasANE])
  {
    goto LABEL_22;
  }

  v8 = PLLogXPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventPointANE:withCategory:];
  }

  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v9 = PLLogXPC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventPointANE:withCategory:];
    }

    [(PLOperator *)self logForSubsystem:@"ANE" category:v7 data:v6];
    goto LABEL_22;
  }

  v10 = [v6 mutableCopy];
  v11 = PLLogXPC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventPointANE:withCategory:];
  }

  v12 = [v6 objectForKey:@"privacy_score"];

  if (v12)
  {
    v13 = [v6 objectForKeyedSubscript:@"privacy_score"];
    v14 = [v13 BOOLValue];

    v15 = PLLogXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventPointANE:withCategory:];
    }

    if (v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = PLLogXPC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventPointANE:withCategory:];
    }
  }

  [v10 setObject:&stru_287103958 forKeyedSubscript:@"modelURL"];
LABEL_19:
  v17 = PLLogXPC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventPointANE:withCategory:];
  }

  [(PLOperator *)self logForSubsystem:@"ANE" category:v7 data:v10];
LABEL_22:
}

- (void)logEventForwardWatchPresence:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v10 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"WatchPresence"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"Event"];

  v8 = [(PLXPCAgent *)self eventNameStringToEnum:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"Event"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardUIKitKeyboard:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"UIKitKeyboard"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardUIKitEclipse:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"UIKitEclipse"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardWirelessSync:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v9 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"WirelessSync"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:v5];
  v7 = [v5 objectForKey:@"DurationSeconds"];

  if (v7)
  {
    v8 = MEMORY[0x277CBEC28];
  }

  else
  {
    v8 = MEMORY[0x277CBEC38];
  }

  [v6 setObject:v8 forKeyedSubscript:@"SyncStart"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventEventForwardMessageTranscript:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"timestampValue"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"timestampValue"];
  v10 = PLLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventEventForwardMessageTranscript:];
  }

  v11 = [v4 objectForKeyedSubscript:@"event"];

  if (v11)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [v4 objectForKeyedSubscript:@"event"];
    v14 = [v12 numberWithInt:{objc_msgSend(v13, "intValue")}];
    [v5 setObject:v14 forKeyedSubscript:@"TranscriptVisibilityState"];

    [v5 removeObjectForKey:@"event"];
  }

  v15 = [v4 objectForKeyedSubscript:@"posterName"];

  if (v15)
  {
    v16 = [v4 objectForKeyedSubscript:@"posterName"];
    [v5 setObject:v16 forKeyedSubscript:@"PosterName"];
  }

  [(PLOperator *)self logForSubsystem:@"Message" category:@"TranscriptForeground" data:v5 date:v9];
}

- (void)logEventForwardMXDiscoveryLevel:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"MXDiscoveryLevel"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v17];
  v5 = [v3 objectForKeyedSubscript:@"Client"];
  [v4 setObject:v5 forKeyedSubscript:@"Client"];

  v6 = [v3 objectForKeyedSubscript:@"ObjectHash"];
  [v4 setObject:v6 forKeyedSubscript:@"ObjectHash"];

  v7 = [v3 objectForKeyedSubscript:@"Level"];
  [v4 setObject:v7 forKeyedSubscript:@"Level"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v3 objectForKeyedSubscript:@"OnBehalfOf"];
  v8 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v24 = @"OnBehalfOf";
        v25 = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v14 = [v3 objectForKeyedSubscript:@"OnBehalfOf"];
        v15 = [v14 objectForKeyedSubscript:v12];
        [v4 setObject:v15 forKeyedSubscript:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }

  [(PLOperator *)self logEntry:v4];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardCarPlay:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"CarPlay"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardCarPlayScreens:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v12 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"CarPlayScreens"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"Width"];
  v8 = [v7 unsignedIntValue];

  v9 = [v5 objectForKeyedSubscript:@"Height"];

  LODWORD(v5) = [v9 unsignedIntValue];
  v10 = [(PLXPCAgent *)self mapPixelsToBucket:v5 * v8];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [v6 setObject:v11 forKeyedSubscript:@"Size"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardSecondaryDisplay:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x277D3F208] isiPad] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isMac"))
  {
    v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SecondaryDisplay"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v6];
    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventForwardUIKitActivity:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"UIKitActivity"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardUIKitAlert:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"UIKitAlert"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardSafariFetcherStatus:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SafariFetcher"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAppleBackklightBrightness:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"linearBrightness"];

    if (v6)
    {
      v7 = [v5 objectForKeyedSubscript:@"linearBrightness"];
      [v7 doubleValue];
      v9 = v8;

      v10 = (v9 * 100.0);
      v11 = PLLogXPC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLXPCAgent logEventForwardAppleBackklightBrightness:];
      }

      if (self->_lastLinearBrightness == v10)
      {
        v12 = PLLogXPC();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLXPCAgent logEventForwardAppleBackklightBrightness:];
        }
      }

      else
      {
        self->_lastLinearBrightness = v10;
        v12 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AppleBacklightBrightness"];
        v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12 withRawData:v5];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_lastLinearBrightness];
        [v13 setObject:v14 forKeyedSubscript:@"linearBrightness"];

        [(PLOperator *)self logEntry:v13];
      }
    }
  }
}

- (void)logEventForwardAccessory:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"Accessory"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAppAccessory:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AppAccessory"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (unint64_t)convertAirDropSessionState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Start"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Stop"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Failed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"InterfaceChanged"])
  {
    v4 = 3;
  }

  else
  {
    v5 = PLLogXPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent convertAirDropSessionState:];
    }

    v4 = 4;
  }

  return v4;
}

- (void)logEventForwardAirDropSession:(id)a3
{
  v23 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AirDropSession"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v23 objectForKeyedSubscript:@"Subevent"];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "isEqualToString:", @"Send"}];
  [v5 setObject:v8 forKeyedSubscript:@"Subevent"];

  v9 = [v23 objectForKeyedSubscript:@"State"];
  v10 = [(PLXPCAgent *)self convertAirDropSessionState:v9];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  [v5 setObject:v11 forKeyedSubscript:@"State"];

  v12 = [v23 objectForKeyedSubscript:@"ContentSize"];

  if (v12)
  {
    v13 = [v23 objectForKeyedSubscript:@"ContentSize"];
    [v13 doubleValue];
    v15 = v14;

    LODWORD(v16) = llround(v15 * 0.000000953674316);
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    [v5 setObject:v17 forKeyedSubscript:@"FileSize"];
  }

  v18 = MEMORY[0x277CCACA8];
  v19 = [v23 objectForKeyedSubscript:@"TransferID"];
  v20 = [v18 stringWithFormat:@"%@", v19];
  v21 = [PLUtilities hashString:v20];
  [v5 setObject:v21 forKeyedSubscript:@"Identifier"];

  v22 = [v23 objectForKeyedSubscript:@"Interface"];
  [v5 setObject:v22 forKeyedSubscript:@"Interface"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardAirDrop:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v8 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AirDrop"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"id"];

  [v6 setObject:v7 forKeyedSubscript:@"bundleId"];
  [(PLOperator *)self logEntry:v6];
  [(PLXPCAgent *)self createAirDropAccountingEvent:v6];
}

- (void)logEventForwardSiri:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"Siri"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardInCallService:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v13 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"InCallService"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"providerContext"];

  v8 = [v7 objectForKeyedSubscript:@"kCallSubType"];

  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"kCallSubType"];
  }

  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAA8];
    v10 = [v6 entryDate];
    [v10 timeIntervalSince1970];
    v12 = [v9 dateWithTimeIntervalSince1970:round(v11)];
    [v6 setEntryDate:v12];
  }

  [(PLOperator *)self logEntry:v6];
  [(PLXPCAgent *)self createInCallServiceAccountingEvent:v6];
}

- (void)logEventForwardCallScreeningEnabled:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"CallScreeningEnabled"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardWebApp:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"WebApp"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardThermalLevel:(id)a3
{
  v17 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ThermalLevel"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v17];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v17 objectForKeyedSubscript:@"Time"];

  if (v7)
  {
    v8 = MEMORY[0x277CBEAA8];
    v9 = [v17 objectForKeyedSubscript:@"Time"];
    [v9 doubleValue];
    v10 = [v8 dateWithTimeIntervalSince1970:?];

    v11 = [v10 earlierDate:v6];

    v6 = v11;
  }

  v12 = [v6 convertFromSystemToMonotonic];
  v13 = [v5 entryDate];
  [v12 timeIntervalSinceDate:v13];
  v15 = llround(v14);

  v16 = [MEMORY[0x277CCABB0] numberWithLong:v15];
  [v5 setObject:v16 forKeyedSubscript:@"startOffset"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardThermalSensors:(id)a3
{
  v13 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ThermalSensors"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v13];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v13 objectForKeyedSubscript:@"Time"];

  if (v7)
  {
    v8 = MEMORY[0x277CBEAA8];
    v9 = [v13 objectForKeyedSubscript:@"Time"];
    [v9 doubleValue];
    v10 = [v8 dateWithTimeIntervalSince1970:?];

    v11 = [v10 earlierDate:v6];

    v6 = v11;
  }

  v12 = [v6 convertFromSystemToMonotonic];
  [v5 setEntryDate:v12];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardThermalHiP:(id)a3
{
  v16 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ThermalHiP"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v16];
  v6 = [v16 objectForKeyedSubscript:@"Time"];
  if (v6)
  {
    [v16 objectForKeyedSubscript:@"Time"];
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v7 = ;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v7, "intValue")}];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 earlierDate:v9];
  v11 = [v10 convertFromSystemToMonotonic];

  v12 = [v5 entryDate];
  [v11 timeIntervalSinceDate:v12];
  v14 = llround(v13);

  v15 = [MEMORY[0x277CCABB0] numberWithLong:v14];
  [v5 setObject:v15 forKeyedSubscript:@"timeOffset"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardNetworkRelay:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"NetworkRelay"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v7 = [v4 objectForKeyedSubscript:@"QuickRelayClients"];

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"QuickRelayClients"];
    v9 = [v8 allObjects];
    v10 = [v9 componentsJoinedByString:{@", "}];

    v11 = PLLogXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventForwardNetworkRelay:];
    }

    [v6 setObject:v10 forKeyedSubscript:@"QuickRelayClients"];
  }

  v12 = [MEMORY[0x277CBEAA8] monotonicDate];
  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v13 = MEMORY[0x277CBEAA8];
    [v12 timeIntervalSince1970];
    v15 = [v13 dateWithTimeIntervalSince1970:round(v14 / 60.0) * 60.0];

    v12 = v15;
  }

  [v6 setEntryDate:v12];
  v16 = [v4 objectForKeyedSubscript:@"SessionID"];
  [v6 setObject:v16 forKeyedSubscript:@"SessionID"];

  v17 = [v4 objectForKeyedSubscript:@"State"];
  [v6 setObject:v17 forKeyedSubscript:@"State"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardNetworkRelayWiFiAssertion:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"WiFiAssertionClients"];
  v6 = [v5 allObjects];
  v12 = [v6 componentsJoinedByString:{@", "}];

  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"NetworkRelayWiFiAssertion"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
  v9 = [v4 objectForKeyedSubscript:@"WiFiWoWState"];
  [v8 setObject:v9 forKeyedSubscript:@"WiFiWoWState"];

  v10 = [v4 objectForKeyedSubscript:@"WiFiClientType"];
  [v8 setObject:v10 forKeyedSubscript:@"WiFiClientType"];

  v11 = [v4 objectForKeyedSubscript:@"WiFiAssertionReason"];

  [v8 setObject:v11 forKeyedSubscript:@"WiFiAssertionReason"];
  [v8 setObject:v12 forKeyedSubscript:@"WiFiAssertionClients"];
  [(PLOperator *)self logEntry:v8];
}

- (void)logEventForwardAudioRouting:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AudioRouting"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    v7 = [v4 valueForKey:@"timestamp"];

    if (v7)
    {
      v8 = MEMORY[0x277CBEAA8];
      v9 = [v4 objectForKeyedSubscript:@"timestamp"];
      [v9 doubleValue];
      v10 = [v8 dateWithTimeIntervalSinceReferenceDate:?];

      v11 = [v10 convertFromSystemToMonotonic];
      [v6 setEntryDate:v11];
    }

    v12 = [v4 valueForKey:@"kEventType"];
    v13 = [v12 isEqualToString:@"ScanStart"];

    if (v13)
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = 1;
    }

    else
    {
      v17 = [v4 valueForKey:@"kEventType"];
      v18 = [v17 isEqualToString:@"ScanStop"];

      v14 = MEMORY[0x277CCABB0];
      if (v18)
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }
    }

    v19 = [v14 numberWithInt:v15];
    [v6 setObject:v19 forKeyedSubscript:@"EventType"];
    v20 = [v4 valueForKey:@"kScanType"];
    [v6 setObject:v20 forKeyedSubscript:@"ScanType"];

    [(PLOperator *)self logEntry:v6];
  }

  else
  {
    v16 = PLLogXPC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLXPCAgent logEventForwardAudioRouting:];
    }
  }
}

- (void)logEventForwardAccessoryMotion:(id)a3
{
  v15 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AccessoryMotion"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v15];
  v6 = [v15 objectForKeyedSubscript:@"client"];
  if (v6)
  {
    v7 = v6;
    v8 = [v15 objectForKeyedSubscript:@"client"];
    v9 = [v8 isEqualToString:@"/usr/sbin/mediaserverd"];

    if (v9)
    {
      [v5 setObject:@"mediaserverd" forKeyedSubscript:@"client"];
    }
  }

  [(PLOperator *)self logEntry:v5];
  v10 = [v15 objectForKeyedSubscript:@"tracking"];
  v11 = [v10 BOOLValue];

  v12 = [MEMORY[0x277D3F0C0] sharedInstance];
  v13 = [v5 objectForKeyedSubscript:@"client"];
  v14 = [v5 entryDate];
  if (v11)
  {
    [v12 createDistributionEventForwardWithDistributionID:46 withAddingChildNodeName:v13 withStartDate:v14];
  }

  else
  {
    [v12 createDistributionEventForwardWithDistributionID:46 withRemovingChildNodeName:v13 withStartDate:v14];
  }
}

- (void)logEventFowardUARPStatus:(id)a3
{
  v4 = a3;
  if ([(PLXPCAgent *)self accessoryUARPEntryCount]< 501)
  {
    v6 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"UARPStatus"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:v4];
    [(PLOperator *)self logEntry:v7];
    [(PLXPCAgent *)self setAccessoryUARPEntryCount:[(PLXPCAgent *)self accessoryUARPEntryCount]+ 1];
  }

  else
  {
    v5 = PLLogXPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PLXPCAgent logEventFowardUARPStatus:];
    }
  }
}

- (void)logEventForwardDosimetry:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"noiseEnabled"];

  if (v5)
  {
    lastDosimetryEntry = self->_lastDosimetryEntry;
    if (!lastDosimetryEntry)
    {
      goto LABEL_4;
    }

    v7 = [(PLEntry *)lastDosimetryEntry objectForKeyedSubscript:@"noiseEnabled"];
    v8 = [v7 BOOLValue];
    v9 = [v4 objectForKeyedSubscript:@"noiseEnabled"];
    v10 = [v9 BOOLValue];

    if (v8 != v10)
    {
LABEL_4:
      v11 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Dosimetry"];
      v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11 withRawData:v4];
      [(PLOperator *)self logEntry:v12];
      [(PLXPCAgent *)self setLastDosimetryEntry:v12];
      v13 = PLLogXPC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLXPCAgent logEventForwardDosimetry:?];
      }
    }

    v14 = PLLogXPC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventForwardDosimetry:v4];
    }
  }
}

- (void)logEventForwardSpatialAudio:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v8 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SpatialAudio"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"stereoUpmix"];

  [v6 setObject:v7 forKeyedSubscript:@"up-mixing"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardPasskeyAuthentication:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"PasskeyAuthentication"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardEnhancedDiscovery:(id)a3
{
  v4 = a3;
  v6 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"EnhancedDiscovery"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:v4];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardSleepMode:(id)a3
{
  v4 = a3;
  if (+[PLUtilities isHealthDataSubmissionAllowed])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SleepMode"];
    v6 = objc_alloc(MEMORY[0x277D3F190]);
    v7 = [v4 objectForKeyedSubscript:@"SleepTime"];
    v8 = [v6 initWithEntryKey:v5 withRawData:v7];

    [(PLOperator *)self logEntry:v8];
    out_token = 0;
    notify_register_check([@"PLSleepModeNotification" UTF8String], &out_token);
    LODWORD(v7) = out_token;
    v9 = [v8 objectForKeyedSubscript:@"state"];
    notify_set_state(v7, [v9 integerValue]);

    notify_post([@"PLSleepModeNotification" UTF8String]);
    notify_cancel(out_token);
  }

  else
  {
    v5 = PLLogXPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PLXPCAgent logEventForwardSleepMode:];
    }
  }
}

- (void)logEventForwardRapidSecurityResponse:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"RapidSecurityResponse"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardRelevanceContextUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"timestampOfEvent"];

  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"timestampOfEvent"];
  v10 = PLLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventForwardRelevanceContextUpdate:];
  }

  [(PLOperator *)self logForSubsystem:@"Widget" category:@"RelevanceContextUpdate" data:v5 date:v9];
}

- (void)logEventForwardLinkAdvisory:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"timestamp"];

  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  v10 = PLLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventForwardLinkAdvisory:];
  }

  [(PLOperator *)self logForSubsystem:@"NetworkRelay" category:@"LinkAdvisory" data:v5 date:v9];
}

- (void)logEventForwardIHA
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[PLUtilities isHealthDataSubmissionAllowed];
  v4 = PLLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_DEFAULT, "IHA Toggle State: %d", v8, 8u);
  }

  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v5 setObject:v6 forKeyedSubscript:@"Enabled"];

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"IHAConsent" data:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardCallScreeningDuration:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"CallScreeningDuration"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardNameSpotlightQos:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D3F208] isMac])
  {
    v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"SpotlightQos"];
    v5 = [MEMORY[0x277CBEAA8] monotonicDate];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [v3 allKeys];
    v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v21)
    {
      v19 = *v29;
      v20 = v3;
      do
      {
        v6 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = v6;
          v7 = *(*(&v28 + 1) + 8 * v6);
          v8 = [v3 objectForKeyedSubscript:v7];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v9 = [v8 allKeys];
          v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v25;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v25 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v24 + 1) + 8 * i);
                v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withDate:v5];
                [v15 setObject:v7 forKeyedSubscript:@"utiType"];
                [v15 setObject:v14 forKeyedSubscript:@"qos"];
                v16 = [v8 objectForKeyedSubscript:v14];
                [v15 setObject:v16 forKeyedSubscript:@"count"];

                [(PLOperator *)self logEntry:v15];
              }

              v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v11);
          }

          v6 = v22 + 1;
          v3 = v20;
        }

        while (v22 + 1 != v21);
        v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointNameSpotlightWatchdogFired:(id)a3
{
  v6 = a3;
  if ([MEMORY[0x277D3F208] isMac])
  {
    v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"SpotlightWatchdogFired"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v6];
    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardNamePop:(id)a3
{
  v4 = [(PLXPCAgent *)self popCount]+ 1;

  [(PLXPCAgent *)self setPopCount:v4];
}

- (void)logEventBackwardNamePeek:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"PeekPop"];
  v6 = [v4 objectForKeyedSubscript:@"Process-ID"];
  v7 = [v6 integerValue];

  v8 = [(PLXPCAgent *)self peekStartTime];

  if (!v8)
  {
    [(PLXPCAgent *)self setPeekStartTime:0];
    [(PLXPCAgent *)self setPeekpopProcessID:v7];
    [(PLXPCAgent *)self setPeekCount:0];
    [(PLXPCAgent *)self setPopCount:0];
    [(PLXPCAgent *)self setPeekDuration:0.0];
  }

  if ([(PLXPCAgent *)self peekpopProcessID]&& v7 != [(PLXPCAgent *)self peekpopProcessID])
  {
    v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLXPCAgent peekpopProcessID](self, "peekpopProcessID")}];
    [v9 setObject:v10 forKeyedSubscript:@"Process-ID"];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLXPCAgent peekCount](self, "peekCount")}];
    [v9 setObject:v11 forKeyedSubscript:@"PeekCount"];

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLXPCAgent popCount](self, "popCount")}];
    [v9 setObject:v12 forKeyedSubscript:@"PopCount"];

    v13 = MEMORY[0x277CCABB0];
    [(PLXPCAgent *)self peekDuration];
    v14 = [v13 numberWithDouble:?];
    [v9 setObject:v14 forKeyedSubscript:@"PeekDuration"];

    [(PLOperator *)self logEntry:v9];
    [(PLXPCAgent *)self setPeekCount:0];
    [(PLXPCAgent *)self setPopCount:0];
    [(PLXPCAgent *)self setPeekDuration:0.0];
    [(PLXPCAgent *)self setPeekStartTime:0];
  }

  [(PLXPCAgent *)self setPeekpopProcessID:v7];
  v15 = [v4 objectForKeyedSubscript:@"Status"];
  v16 = [v15 integerValue];

  if (v16 == 1)
  {
    [(PLXPCAgent *)self setPeekCount:[(PLXPCAgent *)self peekCount]+ 1];
    v17 = [v4 objectForKeyedSubscript:@"Timestamp"];
    [(PLXPCAgent *)self setPeekStartTime:v17];

    v18 = PLLogXPC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventBackwardNamePeek:?];
    }

LABEL_13:

    goto LABEL_14;
  }

  v19 = [(PLXPCAgent *)self peekStartTime];

  if (v19)
  {
    v18 = [v4 objectForKeyedSubscript:@"Timestamp"];
    v20 = [(PLXPCAgent *)self peekStartTime];
    [v18 timeIntervalSinceDate:v20];
    v22 = v21;
    [(PLXPCAgent *)self peekDuration];
    [(PLXPCAgent *)self setPeekDuration:v22 + v23];

    v24 = PLLogXPC();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventBackwardNamePeek:?];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)logEventBackwardAttentionSampling:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AASSampling"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardAttentionPolling:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AASPolling"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardAttentionService:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AASService"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardODOff:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"ODOff"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardODOn:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"ODOn"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardODHN:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"ODHN"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardEDRRequests:(id)a3
{
  v4 = a3;
  lastEDRTrigger = self->_lastEDRTrigger;
  if (!lastEDRTrigger || ([MEMORY[0x277CBEAA8] monotonicDate], v6 = objc_claimAutoreleasedReturnValue(), -[NSDate timeIntervalSinceDate:](lastEDRTrigger, "timeIntervalSinceDate:", v6), v8 = fabs(v7), v6, v8 >= 30.0))
  {
    v9 = [v4 objectForKeyedSubscript:@"EDRRequests"];
    v10 = v9;
    if (v9)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __41__PLXPCAgent_logEventForwardEDRRequests___block_invoke;
      v13[3] = &unk_279A5E370;
      v13[4] = self;
      [v9 enumerateObjectsUsingBlock:v13];
      v11 = [MEMORY[0x277CBEAA8] monotonicDate];
      v12 = self->_lastEDRTrigger;
      self->_lastEDRTrigger = v11;
    }
  }
}

void __41__PLXPCAgent_logEventForwardEDRRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 mutableCopy];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v3 objectForKeyedSubscript:@"headroom"];
  [v7 doubleValue];
  [PLUtilities roundToSigFigDouble:4 withSigFig:?];
  v8 = [v6 numberWithDouble:?];
  [v5 setObject:v8 forKeyedSubscript:@"headroom"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [v3 objectForKeyedSubscript:@"max_desired_headroom"];
  [v10 doubleValue];
  [PLUtilities roundToSigFigDouble:4 withSigFig:?];
  v11 = [v9 numberWithDouble:?];
  [v5 setObject:v11 forKeyedSubscript:@"max_desired_headroom"];

  v12 = PLLogXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __41__PLXPCAgent_logEventForwardEDRRequests___block_invoke_cold_1();
  }

  [*(a1 + 32) logForSubsystem:@"RenderData" category:@"EDRRequests" data:v5];
  objc_autoreleasePoolPop(v4);
}

- (void)logEventBackwardFrameCount:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"data"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"FrameCount"];
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [v5 objectForKeyedSubscript:@"data"];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__PLXPCAgent_logEventBackwardFrameCount___block_invoke;
    v14[3] = &unk_279A5E398;
    v10 = v7;
    v15 = v10;
    v11 = v8;
    v16 = v11;
    [v9 enumerateObjectsUsingBlock:v14];

    if ([v11 count])
    {
      v17 = v10;
      v18[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [(PLOperator *)self logEntries:v12 withGroupID:v10];
    }
  }

  else
  {
    v10 = PLLogXPC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PLXPCAgent logEventBackwardFrameCount:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __41__PLXPCAgent_logEventBackwardFrameCount___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  if ([v22 count] == 6)
  {
    v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32)];
    v4 = MEMORY[0x277CCABB0];
    v5 = [v22 objectAtIndexedSubscript:0];
    v6 = [v4 numberWithInteger:{objc_msgSend(v5, "integerValue")}];
    [v3 setObject:v6 forKeyedSubscript:@"reason"];

    v7 = MEMORY[0x277CCABB0];
    v8 = [v22 objectAtIndexedSubscript:1];
    v9 = [v7 numberWithInteger:{objc_msgSend(v8, "integerValue")}];
    [v3 setObject:v9 forKeyedSubscript:@"bucket_0"];

    v10 = MEMORY[0x277CCABB0];
    v11 = [v22 objectAtIndexedSubscript:2];
    v12 = [v10 numberWithInteger:{objc_msgSend(v11, "integerValue")}];
    [v3 setObject:v12 forKeyedSubscript:@"bucket_1"];

    v13 = MEMORY[0x277CCABB0];
    v14 = [v22 objectAtIndexedSubscript:3];
    v15 = [v13 numberWithInteger:{objc_msgSend(v14, "integerValue")}];
    [v3 setObject:v15 forKeyedSubscript:@"bucket_2"];

    v16 = MEMORY[0x277CCABB0];
    v17 = [v22 objectAtIndexedSubscript:4];
    v18 = [v16 numberWithInteger:{objc_msgSend(v17, "integerValue")}];
    [v3 setObject:v18 forKeyedSubscript:@"bucket_3"];

    v19 = MEMORY[0x277CCABB0];
    v20 = [v22 objectAtIndexedSubscript:5];
    v21 = [v19 numberWithInteger:{objc_msgSend(v20, "integerValue")}];
    [v3 setObject:v21 forKeyedSubscript:@"duration"];

    [*(a1 + 40) addObject:v3];
  }
}

- (void)logEventBackwardRenderPassCount:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"data"];

  if ([v6 count] >= 0xA)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    [v5 setObject:v7 forKeyedSubscript:@"bucket0"];

    v8 = [v6 objectAtIndexedSubscript:1];
    [v5 setObject:v8 forKeyedSubscript:@"bucket1"];

    v9 = [v6 objectAtIndexedSubscript:2];
    [v5 setObject:v9 forKeyedSubscript:@"bucket2"];

    v10 = [v6 objectAtIndexedSubscript:3];
    [v5 setObject:v10 forKeyedSubscript:@"bucket3"];

    v11 = [v6 objectAtIndexedSubscript:4];
    [v5 setObject:v11 forKeyedSubscript:@"bucket4"];

    v12 = [v6 objectAtIndexedSubscript:5];
    [v5 setObject:v12 forKeyedSubscript:@"bucket5"];

    v13 = [v6 objectAtIndexedSubscript:6];
    [v5 setObject:v13 forKeyedSubscript:@"bucket6"];

    v14 = [v6 objectAtIndexedSubscript:7];
    [v5 setObject:v14 forKeyedSubscript:@"bucket7"];

    v15 = [v6 objectAtIndexedSubscript:8];
    [v5 setObject:v15 forKeyedSubscript:@"bucket8"];

    v16 = [v6 objectAtIndexedSubscript:9];
    [v5 setObject:v16 forKeyedSubscript:@"bucket9"];
  }

  v17 = PLLogXPC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventBackwardRenderPassCount:];
  }

  [(PLOperator *)self logForSubsystem:@"RenderData" category:@"RenderPassCount" data:v5];
}

- (void)logEventBackwardLayerCount:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"data"];

  if ([v6 count] >= 0xA)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    [v5 setObject:v7 forKeyedSubscript:@"bucket0"];

    v8 = [v6 objectAtIndexedSubscript:1];
    [v5 setObject:v8 forKeyedSubscript:@"bucket1"];

    v9 = [v6 objectAtIndexedSubscript:2];
    [v5 setObject:v9 forKeyedSubscript:@"bucket2"];

    v10 = [v6 objectAtIndexedSubscript:3];
    [v5 setObject:v10 forKeyedSubscript:@"bucket3"];

    v11 = [v6 objectAtIndexedSubscript:4];
    [v5 setObject:v11 forKeyedSubscript:@"bucket4"];

    v12 = [v6 objectAtIndexedSubscript:5];
    [v5 setObject:v12 forKeyedSubscript:@"bucket5"];

    v13 = [v6 objectAtIndexedSubscript:6];
    [v5 setObject:v13 forKeyedSubscript:@"bucket6"];

    v14 = [v6 objectAtIndexedSubscript:7];
    [v5 setObject:v14 forKeyedSubscript:@"bucket7"];

    v15 = [v6 objectAtIndexedSubscript:8];
    [v5 setObject:v15 forKeyedSubscript:@"bucket8"];

    v16 = [v6 objectAtIndexedSubscript:9];
    [v5 setObject:v16 forKeyedSubscript:@"bucket9"];
  }

  v17 = PLLogXPC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventBackwardLayerCount:];
  }

  [(PLOperator *)self logForSubsystem:@"RenderData" category:@"LayerCount" data:v5];
}

- (void)logEventBackwardEnergyTelemetry:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v48 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"EnergyTelemetry"];
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [v4 objectForKeyedSubscript:@"NumRows"];
    v7 = [v6 unsignedIntValue];

    v8 = [v4 objectForKeyedSubscript:@"Keys"];
    v9 = [v8 indexOfObject:@"telemetry_date"];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = PLLogXPC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PLXPCAgent logEventBackwardEnergyTelemetry:];
      }

      goto LABEL_22;
    }

    v46 = self;
    v47 = v5;
    if (!v7)
    {
LABEL_18:
      v5 = v47;
      if (![v47 count])
      {
LABEL_23:

        goto LABEL_24;
      }

      v11 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v11 timeIntervalSince1970];
      v34 = v33;
      v35 = [v47 lastObject];
      v36 = [v35 entryDate];
      [v36 timeIntervalSince1970];
      v38 = v37;

      v39 = (v34 - v38) / 60.0;
      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v47 lastObject];
        v42 = [v41 entryDate];
        *buf = 138412802;
        *v52 = v11;
        *&v52[8] = 2112;
        *&v52[10] = v42;
        v53 = 2048;
        v54 = v39;
        _os_log_impl(&dword_25EE51000, v40, OS_LOG_TYPE_DEFAULT, "[Energy Telemetry] receivedTime = %@, endTime = %@, delayInMinutes = %f", buf, 0x20u);
      }

      AnalyticsSendEventLazy();
      v49 = v48;
      v50 = v47;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      [(PLOperator *)v46 logEntries:v43 withGroupID:v48];

LABEL_22:
      goto LABEL_23;
    }

    v12 = 0;
    *&v10 = 138412546;
    v45 = v10;
    while (1)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v12, v45}];
      v14 = [v4 objectForKeyedSubscript:v13];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      v17 = [v4 objectForKeyedSubscript:v16];
      v18 = [v17 count];

      if (v18 <= v9)
      {
        goto LABEL_15;
      }

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      v20 = [v4 objectForKeyedSubscript:v19];
      v21 = [v20 objectAtIndexedSubscript:v9];

      v22 = MEMORY[0x277CBEAC0];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      v24 = [v4 objectForKeyedSubscript:v23];
      v25 = [v4 objectForKeyedSubscript:@"Keys"];
      v26 = [v22 dictionaryWithObjects:v24 forKeys:v25];

      v27 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v48 withRawData:v26];
      v28 = [v21 convertFromSystemToMonotonic];
      [v27 setEntryDate:v28];

      [v47 addObject:v27];
      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v27 entryDate];
        *buf = 67109378;
        *v52 = v12;
        *&v52[4] = 2112;
        *&v52[6] = v30;
        _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEFAULT, "[Energy Telemetry] sample %d entryDate = %@", buf, 0x12u);
      }

LABEL_17:
      v12 = (v12 + 1);
      if (v7 == v12)
      {
        goto LABEL_18;
      }
    }

LABEL_15:
    v21 = PLLogXPC();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      v32 = [v4 objectForKeyedSubscript:v31];
      *buf = v45;
      *v52 = v32;
      *&v52[8] = 1024;
      *&v52[10] = v12;
      _os_log_error_impl(&dword_25EE51000, v21, OS_LOG_TYPE_ERROR, "[Energy Telemetry] Invalid sample %@ at index %d", buf, 0x12u);
    }

    goto LABEL_17;
  }

  v48 = PLLogXPC();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    [PLXPCAgent logEventBackwardEnergyTelemetry:];
  }

LABEL_24:

  v44 = *MEMORY[0x277D85DE8];
}

id __46__PLXPCAgent_logEventBackwardEnergyTelemetry___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"delay";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)logEventBackwardDRMaxRate:(id)a3
{
  v4 = *MEMORY[0x277D3F5C8];
  v5 = a3;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"DRMaxRate"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointNetworkSymptomsAdviosry:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v21 = v4;
    v5 = [v4 objectForKeyedSubscript:@"Network Type"];
    v4 = v21;
    if (v5)
    {
      v6 = [v21 objectForKeyedSubscript:@"advisoryKey"];

      v4 = v21;
      if (v6)
      {
        v7 = [(PLXPCAgent *)self localCache];
        v8 = [v7 objectForKeyedSubscript:@"Symptoms-NetworkAdvisory"];

        if (!v8)
        {
          v9 = objc_opt_new();
          v10 = [(PLXPCAgent *)self localCache];
          [v10 setObject:v9 forKeyedSubscript:@"Symptoms-NetworkAdvisory"];
        }

        v11 = [v21 objectForKeyedSubscript:@"Network Type"];
        v12 = [v21 objectForKeyedSubscript:@"advisoryKey"];
        v13 = [(PLXPCAgent *)self localCache];
        v14 = [v13 objectForKeyedSubscript:@"Symptoms-NetworkAdvisory"];
        v15 = [v14 objectForKeyedSubscript:v11];

        if (!v15 || (v16 = [v15 intValue], v16 != objc_msgSend(v12, "intValue")))
        {
          v17 = [(PLXPCAgent *)self localCache];
          v18 = [v17 objectForKeyedSubscript:@"Symptoms-NetworkAdvisory"];
          [v18 setObject:v12 forKeyedSubscript:v11];

          v19 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Symptoms-NetworkAdvisory"];
          v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v19];
          [v20 setObject:v11 forKeyedSubscript:@"Network Type"];
          [v20 setObject:v12 forKeyedSubscript:@"advisoryKey"];
          [(PLOperator *)self logEntry:v20];
        }

        v4 = v21;
      }
    }
  }
}

- (void)logEventPointCacheDelete:(id)a3
{
  v20 = self;
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CacheDelete"];
  v21 = v3;
  v5 = [v3 objectForKey:@"events"];
  v23 = +[PLUtilities deviceBootTime];
  v6 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v11];
        v13 = [v11 objectForKeyedSubscript:@"startFromUptime"];

        if (v13)
        {
          v14 = [v11 objectForKeyedSubscript:@"startFromUptime"];
          [v14 doubleValue];
          v16 = v15;

          v17 = [v23 dateByAddingTimeInterval:v16];
          [v12 setEntryDate:v17];
        }

        [v6 addObject:{v12, v20}];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  v28 = v4;
  v29 = v6;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [(PLOperator *)v20 logEntries:v18 withGroupID:v4];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointMachineTranslation:(id)a3
{
  v6 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MachineTranslation"];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v6];
    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventEventPointRCSSessionManagement:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"Timestamp"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"Timestamp"];
  v10 = PLLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventEventPointRCSSessionManagement:];
  }

  [(PLOperator *)self logForSubsystem:@"Message" category:@"RCSSessionManagement" data:v5 date:v9];
  v11 = [v4 objectForKeyedSubscript:@"TransactionType"];
  if (v11)
  {
    v12 = v11;
    v13 = [v4 objectForKeyedSubscript:@"TransactionType"];
    v14 = [v13 intValue];

    if (v14 == 4)
    {
      v15 = PLLogXPC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLXPCAgent logEventEventPointRCSSessionManagement:];
      }

      [(PLOperator *)self logForSubsystem:@"Message" category:@"SIPRegisterKeepAlive" data:v5 date:v9];
    }
  }
}

- (void)logEventIntervalAirTrafficAssetDownload:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v49 = self;
  v50 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"AirTraffic_AssetDownload"];
  if (v50)
  {
    v48 = [MEMORY[0x277D3F180] fullMode];
    v45 = v4;
    [v4 objectForKeyedSubscript:@"messages"];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v56 = 0u;
    v51 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v51)
    {
      v47 = *v54;
      do
      {
        v5 = 0;
        do
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v52 = v5;
          v6 = *(*(&v53 + 1) + 8 * v5);
          v7 = [v6 objectForKeyedSubscript:@"timestamp"];
          v8 = v7;
          if (v48)
          {
            v9 = [v6 objectForKeyedSubscript:@"timestampEnd"];
          }

          else
          {
            [v7 timeIntervalSince1970];
            v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:round(v10 / 10.0) * 10.0];

            v12 = [v6 objectForKeyedSubscript:@"timestampEnd"];
            [v12 timeIntervalSince1970];
            v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:round(v13 / 10.0) * 10.0];

            [v9 timeIntervalSinceDate:v11];
            if (v14 >= 10.0)
            {
              v8 = v11;
            }

            else
            {
              v15 = [v11 dateByAddingTimeInterval:10.0];

              v8 = v11;
              v9 = v15;
            }
          }

          v16 = objc_alloc(MEMORY[0x277D3F190]);
          v17 = [v8 convertFromSystemToMonotonic];
          v18 = [v16 initWithEntryKey:v50 withDate:v17];

          v19 = [v9 convertFromSystemToMonotonic];
          [v18 setObject:v19 forKeyedSubscript:@"timestampEnd"];

          v20 = [v6 objectForKeyedSubscript:@"linkType"];
          [v18 setObject:v20 forKeyedSubscript:@"linkType"];

          v21 = [v6 objectForKeyedSubscript:@"dataclass"];
          [v18 setObject:v21 forKeyedSubscript:@"dataclass"];

          v22 = [v6 objectForKeyedSubscript:@"assetType"];
          [v18 setObject:v22 forKeyedSubscript:@"assetType"];

          v23 = [v6 objectForKeyedSubscript:@"sumBytesRequested"];
          v24 = v23;
          if (v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = &unk_2871469D8;
          }

          [v18 setObject:v25 forKeyedSubscript:@"sumBytesRequested"];
          v26 = [v6 objectForKeyedSubscript:@"countDownloadsBegun"];
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = &unk_2871469D8;
          }

          [v18 setObject:v28 forKeyedSubscript:@"countDownloadsBegun"];
          v29 = [v6 objectForKeyedSubscript:@"countCanUseCellular"];
          v30 = v29;
          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = &unk_2871469D8;
          }

          [v18 setObject:v31 forKeyedSubscript:@"countCanUseCellular"];
          v32 = [v6 objectForKeyedSubscript:@"countIsForeground"];
          v33 = v32;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = &unk_2871469D8;
          }

          [v18 setObject:v34 forKeyedSubscript:@"countIsForeground"];
          v35 = [v6 objectForKeyedSubscript:@"sumBytesDownloaded"];
          v36 = v35;
          if (v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = &unk_2871469D8;
          }

          [v18 setObject:v37 forKeyedSubscript:@"sumBytesDownloaded"];
          v38 = [v6 objectForKeyedSubscript:@"countDownloadsSucceeded"];
          v39 = v38;
          if (v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = &unk_2871469D8;
          }

          [v18 setObject:v40 forKeyedSubscript:@"countDownloadsSucceeded"];
          v41 = [v6 objectForKeyedSubscript:@"countDownloadsFailed"];
          v42 = v41;
          if (v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = &unk_2871469D8;
          }

          [v18 setObject:v43 forKeyedSubscript:@"countDownloadsFailed"];
          [(PLOperator *)v49 logEntry:v18];

          v5 = v52 + 1;
        }

        while (v51 != v52 + 1);
        v51 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v51);
    }

    v4 = v45;
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalCoreDuetKnowledgeSync:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
  {
    v5 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoreDuet_KnowledgeSync"];
    if (!v5)
    {
LABEL_16:

      goto LABEL_17;
    }

    v6 = [v4 objectForKeyedSubscript:@"timestamp"];
    v7 = [v4 objectForKeyedSubscript:@"timestampEnd"];
    v8 = [v4 objectForKeyedSubscript:@"isEmpty"];
    v9 = [v4 objectForKeyedSubscript:@"transportType"];
    v10 = v9;
    if (v6 && v7 && v8 && v9)
    {
      if ([v9 integerValue])
      {
LABEL_15:

        goto LABEL_16;
      }

      [v6 timeIntervalSince1970];
      v12 = v11;
      [v7 timeIntervalSince1970];
      if (v13 >= v12)
      {
        v15 = v13;
        v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:round(v12)];

        v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:round(v15)];

        v18 = objc_alloc(MEMORY[0x277D3F190]);
        v19 = [v16 convertFromSystemToMonotonic];
        v20 = [v18 initWithEntryKey:v5 withDate:v19];

        v21 = [v17 convertFromSystemToMonotonic];
        [v20 setObject:v21 forKeyedSubscript:@"timestampEnd"];

        [v20 setObject:v8 forKeyedSubscript:@"isEmpty"];
        [(PLOperator *)self logEntry:v20];

        v7 = v17;
        v6 = v16;
        goto LABEL_15;
      }

      v14 = PLLogXPC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PLXPCAgent logEventIntervalCoreDuetKnowledgeSync:];
      }
    }

    else
    {
      v14 = PLLogXPC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PLXPCAgent logEventIntervalCoreDuetKnowledgeSync:];
      }
    }

    goto LABEL_15;
  }

LABEL_17:
}

- (void)logEventIntervalAnimatedStickerCreation:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v16 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AnimatedStickerCreation"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v5 objectForKeyedSubscript:@"StartTimestamp"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16 withDate:v9];
  v11 = [v5 objectForKeyedSubscript:@"ProcessedFrameCount"];
  [v10 setObject:v11 forKeyedSubscript:@"ProcessedFrameCount"];

  v12 = MEMORY[0x277CBEAA8];
  v13 = [v5 objectForKeyedSubscript:@"EndTimestamp"];

  [v13 doubleValue];
  v14 = [v12 dateWithTimeIntervalSince1970:?];

  v15 = [v14 convertFromSystemToMonotonic];

  [v10 setObject:v15 forKeyedSubscript:@"timestampEnd"];
  [(PLOperator *)self logEntry:v10];
}

- (void)logEventIntervalStaticStickerCreation:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v15 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"StaticStickerCreation"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v5 objectForKeyedSubscript:@"StartTimestamp"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withDate:v9];
  v11 = MEMORY[0x277CBEAA8];
  v12 = [v5 objectForKeyedSubscript:@"EndTimestamp"];

  [v12 doubleValue];
  v13 = [v11 dateWithTimeIntervalSince1970:?];

  v14 = [v13 convertFromSystemToMonotonic];

  [v10 setObject:v14 forKeyedSubscript:@"timestampEnd"];
  [(PLOperator *)self logEntry:v10];
}

- (void)logEventIntervalRapportReceivedMessage:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"RapportReceivedMessage"];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"timeBegin"];
    v7 = [v4 objectForKeyedSubscript:@"timeEnd"];
    v8 = v7;
    if (v6 && v7)
    {
      v9 = objc_alloc(MEMORY[0x277D3F190]);
      v10 = [v6 convertFromSystemToMonotonic];
      v11 = [v9 initWithEntryKey:v5 withDate:v10];

      v12 = [v8 convertFromSystemToMonotonic];
      [v11 setObject:v12 forKeyedSubscript:@"timestampEnd"];

      v13 = [v4 objectForKeyedSubscript:@"appID"];
      [v11 setObject:v13 forKeyedSubscript:@"appID"];

      v14 = [v4 objectForKeyedSubscript:@"type"];
      [v11 setObject:v14 forKeyedSubscript:@"type"];

      v15 = [v4 objectForKeyedSubscript:@"bytes"];
      [v11 setObject:v15 forKeyedSubscript:@"bytes"];

      v16 = [v4 objectForKeyedSubscript:@"identifier"];
      [v11 setObject:v16 forKeyedSubscript:@"identifier"];

      v17 = [v4 objectForKeyedSubscript:@"linkType"];
      [v11 setObject:v17 forKeyedSubscript:@"linkType"];

      v18 = [v4 objectForKeyedSubscript:@"messages"];
      [v11 setObject:v18 forKeyedSubscript:@"messages"];

      v19 = [v4 objectForKeyedSubscript:@"senderID"];
      [v11 setObject:v19 forKeyedSubscript:@"senderID"];

      [(PLOperator *)self logEntry:v11];
    }

    else
    {
      v20 = PLLogXPC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PLXPCAgent logEventIntervalRapportReceivedMessage:];
      }
    }
  }
}

- (void)logEventIntervalNameSpotlightIndexes:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"processName"];
  v6 = [v4 objectForKeyedSubscript:@"timestamp"];
  v7 = [v6 convertFromSystemToMonotonic];

  v8 = [v4 objectForKeyedSubscript:@"timestampEnd"];
  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [MEMORY[0x277CBEAA8] monotonicDate];
  v11 = v10;
  if (v7)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = v10;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v9 = v11;
LABEL_3:
  v12 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"SpotlightIndexes"];
  v13 = [MEMORY[0x277CBEB18] array];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __51__PLXPCAgent_logEventIntervalNameSpotlightIndexes___block_invoke;
  v24 = &unk_279A5E408;
  v14 = v12;
  v25 = v14;
  v15 = v7;
  v26 = v15;
  v16 = v9;
  v27 = v16;
  v17 = v5;
  v28 = v17;
  v18 = v13;
  v29 = v18;
  [v4 enumerateKeysAndObjectsUsingBlock:&v21];
  if ([v18 count])
  {
    v30 = v14;
    v31[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [(PLOperator *)self logEntries:v19 withGroupID:v14];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __51__PLXPCAgent_logEventIntervalNameSpotlightIndexes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
    [v7 setObject:*(a1 + 48) forKeyedSubscript:@"timestampEnd"];
    [v7 setObject:v5 forKeyedSubscript:@"BundleID"];
    [v7 setObject:*(a1 + 56) forKeyedSubscript:@"processName"];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__PLXPCAgent_logEventIntervalNameSpotlightIndexes___block_invoke_2;
    v9[3] = &unk_279A5E3E0;
    v10 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    [*(a1 + 64) addObject:v8];
  }
}

void __51__PLXPCAgent_logEventIntervalNameSpotlightIndexes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(a3, "intValue"), 2)}];
  if ([v5 isEqualToString:@"indexItems"])
  {
    v7 = *(a1 + 32);
    v8 = @"IndexCount";
LABEL_7:
    [v7 setObject:v6 forKeyedSubscript:v8];
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"deleteItems"])
  {
    v7 = *(a1 + 32);
    v8 = @"DeletedCount";
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"computeEmbeddings"])
  {
    v7 = *(a1 + 32);
    v8 = @"computeEmbeddings";
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"computeEmbeddingsForQuery"])
  {
    if (![MEMORY[0x277D3F208] internalBuild])
    {
      goto LABEL_8;
    }

    v7 = *(a1 + 32);
    v8 = @"computeEmbeddingsForQuery";
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"computeKeyphrases"])
  {
    v7 = *(a1 + 32);
    v8 = @"computeKeyphrases";
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"reindexItemCount"])
  {
    v7 = *(a1 + 32);
    v8 = @"reindexItemCount";
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"reason"])
  {
    v7 = *(a1 + 32);
    v8 = @"reason";
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"reindexAll"])
  {
    v7 = *(a1 + 32);
    v8 = @"reindexAll";
    goto LABEL_7;
  }

  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __51__PLXPCAgent_logEventIntervalNameSpotlightIndexes___block_invoke_2_cold_1();
  }

LABEL_8:
}

- (void)logEventIntervalNameSpotlightQueries:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"processName"];
  v6 = [v4 objectForKeyedSubscript:@"timestamp"];
  v7 = [v6 convertFromSystemToMonotonic];

  v8 = [v4 objectForKeyedSubscript:@"timestampEnd"];
  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [MEMORY[0x277CBEAA8] monotonicDate];
  v11 = v10;
  if (v7)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = v10;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v9 = v11;
LABEL_3:
  v12 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"SpotlightQueries"];
  v13 = [MEMORY[0x277CBEB18] array];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __51__PLXPCAgent_logEventIntervalNameSpotlightQueries___block_invoke;
  v24 = &unk_279A5E408;
  v14 = v12;
  v25 = v14;
  v15 = v7;
  v26 = v15;
  v16 = v9;
  v27 = v16;
  v17 = v5;
  v28 = v17;
  v18 = v13;
  v29 = v18;
  [v4 enumerateKeysAndObjectsUsingBlock:&v21];
  if ([v18 count])
  {
    v30 = v14;
    v31[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [(PLOperator *)self logEntries:v19 withGroupID:v14];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __51__PLXPCAgent_logEventIntervalNameSpotlightQueries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
    [v7 setObject:*(a1 + 48) forKeyedSubscript:@"timestampEnd"];
    [v7 setObject:v5 forKeyedSubscript:@"BundleID"];
    [v7 setObject:*(a1 + 56) forKeyedSubscript:@"processName"];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__PLXPCAgent_logEventIntervalNameSpotlightQueries___block_invoke_2;
    v9[3] = &unk_279A5E430;
    v10 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    [*(a1 + 64) addObject:v8];
  }
}

void __51__PLXPCAgent_logEventIntervalNameSpotlightQueries___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"Reason"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PLXPCAgent_logEventIntervalNameSpotlightQueries___block_invoke_3;
  v7[3] = &unk_279A5E3E0;
  v8 = *(a1 + 32);
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

void __51__PLXPCAgent_logEventIntervalNameSpotlightQueries___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(a3, "intValue"), 2)}];
  if ([v5 isEqualToString:@"startQuery"])
  {
    v7 = *(a1 + 32);
    v8 = @"StartQueryCount";
LABEL_7:
    [v7 setObject:v6 forKeyedSubscript:v8];
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"cancelQuery"])
  {
    v7 = *(a1 + 32);
    v8 = @"CancelQueryCount";
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"finishQuery"])
  {
    v7 = *(a1 + 32);
    v8 = @"ResultCount";
    goto LABEL_7;
  }

  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __51__PLXPCAgent_logEventIntervalNameSpotlightIndexes___block_invoke_2_cold_1();
  }

LABEL_8:
}

- (void)logEventBackwardAVConference:(id)a3
{
  v14 = a3;
  v4 = [v14 objectForKeyedSubscript:@"method"];
  if (v4)
  {
    v5 = v4;
    v6 = [v14 objectForKeyedSubscript:@"method"];
    v7 = [v6 intValue];

    if (v7 == 70)
    {
      v8 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AVConference"];
      v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v14];
      v10 = [v14 objectForKeyedSubscript:@"_clientName"];

      if (v10)
      {
        v11 = [v14 objectForKeyedSubscript:@"_clientName"];
        [v9 setObject:v11 forKeyedSubscript:@"ClientName"];
      }

      v12 = [v14 objectForKeyedSubscript:@"_serviceName"];

      if (v12)
      {
        v13 = [v14 objectForKeyedSubscript:@"_serviceName"];
        [v9 setObject:v13 forKeyedSubscript:@"ServiceName"];
      }

      [(PLOperator *)self logEntry:v9];
    }
  }
}

- (void)logEventIntervalUserSafetyProcessing:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v18 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"UserSafetyProcessing"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v5 objectForKeyedSubscript:@"StartTimestamp"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v18 withDate:v9];
  v11 = [v5 objectForKeyedSubscript:@"AssetType"];
  [v10 setObject:v11 forKeyedSubscript:@"AssetType"];

  v12 = [v5 objectForKeyedSubscript:@"ClientBundleID"];
  [v10 setObject:v12 forKeyedSubscript:@"ClientBundleID"];

  v13 = MEMORY[0x277CBEAA8];
  v14 = [v5 objectForKeyedSubscript:@"EndTimestamp"];
  [v14 doubleValue];
  v15 = [v13 dateWithTimeIntervalSince1970:?];

  v16 = [v15 convertFromSystemToMonotonic];

  [v10 setObject:v16 forKeyedSubscript:@"EndTimestamp"];
  v17 = [v5 objectForKeyedSubscript:@"IsCacheReused"];

  [v10 setObject:v17 forKeyedSubscript:@"IsCacheReused"];
  [(PLOperator *)self logEntry:v10];
}

- (void)logEventIntervalEndCPUViolations:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"timestampEnd"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  [v5 setObject:v9 forKeyedSubscript:@"timestampEnd"];
  v10 = MEMORY[0x277CBEAA8];
  v11 = [v4 objectForKeyedSubscript:@"timestamp"];

  [v11 doubleValue];
  v12 = [v10 dateWithTimeIntervalSince1970:?];

  v13 = [v12 convertFromSystemToMonotonic];

  v14 = PLLogXPC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventIntervalEndCPUViolations:];
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"CPUViolations" data:v5 date:v13];
}

- (void)logEventIntervalPowerExceptionsDetection:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"timestampEnd"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  v10 = MEMORY[0x277CBEAA8];
  v11 = [v4 objectForKeyedSubscript:@"timestampStart"];

  [v11 doubleValue];
  v12 = [v10 dateWithTimeIntervalSince1970:?];

  v13 = [v12 convertFromSystemToMonotonic];

  [v5 setObject:v9 forKeyedSubscript:@"timestampEnd"];
  [v5 setObject:v13 forKeyedSubscript:@"timestampStart"];
  v14 = PLLogXPC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventIntervalPowerExceptionsDetection:];
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"PowerExceptionsDetection" data:v5 date:0];
}

- (void)logEventIntervalVKDataScanner:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v4 objectForKeyedSubscript:@"SessionStartTime"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"SessionStartTime"];
  v10 = MEMORY[0x277CBEAA8];
  v11 = [v4 objectForKeyedSubscript:@"SessionStopTime"];

  [v11 doubleValue];
  v12 = [v10 dateWithTimeIntervalSince1970:?];

  v13 = [v12 convertFromSystemToMonotonic];

  [v5 setObject:v13 forKeyedSubscript:@"SessionStopTime"];
  v14 = PLLogXPC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventIntervalVKDataScanner:];
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"VKDataScanner" data:v5 date:v9];
}

- (void)logAlbumAnimation:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"AlbumAnimationDuration"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"AlbumAnimationDuration"];
    [v7 doubleValue];
    v9 = v8;

    LODWORD(v7) = llround(v9);
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [v5 setValue:v10 forKey:@"AlbumAnimationDuration"];

    v11 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [v5 setObject:v11 forKeyedSubscript:@"AlbumAnimationDuration"];
  }

  v12 = PLLogXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logAlbumAnimation:];
  }

  [(PLOperator *)self logForSubsystem:@"RenderData" category:@"AlbumAnimationDuration" data:v5];
}

- (void)logAlbumMotion:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"AlbumMotionDownload"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"AlbumMotionDownload"];
    [v7 doubleValue];
    v9 = v8;

    [PLUtilities roundToSigFigDouble:2 withSigFig:v9];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v5 setValue:v10 forKey:@"AlbumMotionDownload"];
  }

  v11 = PLLogXPC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logAlbumMotion:];
  }

  [(PLOperator *)self logForSubsystem:@"RenderData" category:@"AlbumMotionDownload" data:v5];
}

- (void)logMailCategorization:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"count"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"count"];
    v8 = [v7 intValue];

    if (v8 > 10)
    {
      v9 = [PLUtilities roundToSigFig:v8 withSigFig:1];
      v10 = [MEMORY[0x277CCABB0] numberWithInt:v9];
      [v5 setValue:v10 forKey:@"count"];
    }

    else
    {
      [v5 setObject:&unk_2871469F0 forKeyedSubscript:@"count"];
    }
  }

  v11 = PLLogXPC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logMailCategorization:];
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"MailCategorizationEvent" data:v5];
}

- (void)createAccessoryAccountingEventWithName:(id)a3 isStartEvent:(BOOL)a4
{
  v4 = a4;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v6 = @"accessory-unknown";
    if (v5 && [(__CFString *)v5 length])
    {
      v6 = v5;
    }

    v7 = v6;
    v8 = v7;
    if (v4)
    {
      v13 = v7;
      v14[0] = &unk_28714B6C8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v9 = MEMORY[0x277CBEC10];
    }

    v10 = [MEMORY[0x277D3F0C0] sharedInstance];
    v11 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v10 createDistributionEventForwardWithDistributionID:10 withChildNodeNameToWeight:v9 withStartDate:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)createAirDropAccountingEvent:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v4 = [v3 objectForKeyedSubscript:@"State"];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 objectForKeyedSubscript:@"Subevent"];
      if (!v6)
      {
        goto LABEL_15;
      }

      v7 = v6;
      v8 = [v3 objectForKeyedSubscript:@"Subevent"];
      if ([v8 isEqualToString:@"BluetoothScanning"])
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [v3 objectForKeyedSubscript:@"Subevent"];
      v10 = [v9 isEqualToString:@"BonjourAdvertise"];

      if ((v10 & 1) == 0)
      {
        v11 = [v3 objectForKeyedSubscript:@"bundleId"];
        if (v11)
        {
          v5 = [v3 objectForKeyedSubscript:@"bundleId"];
        }

        else
        {
          v5 = @"airdrop-unknown";
        }

        v12 = [v3 objectForKeyedSubscript:@"State"];
        v13 = [v12 isEqualToString:@"Start"];

        if (v13)
        {
          v22 = v5;
          v23[0] = &unk_28714B6C8;
          v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
          v21 = v5;
          v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
LABEL_13:
          v16 = [MEMORY[0x277D3F0C0] sharedInstance];
          v17 = [v3 entryDate];
          [v16 createQualificationEventForwardWithQualificationID:4 withChildNodeNames:v8 withStartDate:v17];

          v18 = [MEMORY[0x277D3F0C0] sharedInstance];
          v19 = [v3 entryDate];
          [v18 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:v7 withStartDate:v19];

          goto LABEL_14;
        }

        v14 = [v3 objectForKeyedSubscript:@"State"];
        v15 = [v14 isEqualToString:@"Stop"];

        if (v15)
        {
          v8 = MEMORY[0x277CBEBF8];
          v7 = &unk_28714A700;
          goto LABEL_13;
        }

LABEL_15:
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)createInCallServiceAccountingEvent:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v4 = [v3 objectForKeyedSubscript:@"bundleID"];
    if (v4)
    {
      v5 = [v3 objectForKeyedSubscript:@"bundleID"];
    }

    else
    {
      v5 = @"incallservice-unknown";
    }

    v6 = [v3 objectForKeyedSubscript:@"status"];
    if ([v6 isEqualToString:@"callForegrounded"])
    {
      v7 = [MEMORY[0x277D3F0C0] sharedInstance];
      v8 = [v3 entryDate];
      [v7 createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:v5 withStartDate:v8];

      v9 = [MEMORY[0x277D3F0C0] sharedInstance];
      v10 = [v3 entryDate];
      [v9 createQualificationEventForwardWithQualificationID:2 withAddingChildNodeName:v5 withStartDate:v10];
    }

    else if ([v6 isEqualToString:@"callBackgrounded"])
    {
      v11 = [MEMORY[0x277D3F0C0] sharedInstance];
      v12 = [v3 entryDate];
      [v11 createDistributionEventForwardWithDistributionID:1 withRemovingChildNodeName:v5 withStartDate:v12];

      v9 = [MEMORY[0x277D3F0C0] sharedInstance];
      v10 = [v3 entryDate];
      [v9 createQualificationEventForwardWithQualificationID:2 withRemovingChildNodeName:v5 withStartDate:v10];
    }

    else if ([v6 isEqualToString:@"callStart"])
    {
      v13 = [MEMORY[0x277D3F0C0] sharedInstance];
      v14 = [v3 entryDate];
      [v13 createDistributionEventForwardWithDistributionID:11 withAddingChildNodeName:v5 withStartDate:v14];

      v15 = [MEMORY[0x277D3F0C0] sharedInstance];
      v16 = [v3 entryDate];
      [v15 createDistributionEventForwardWithDistributionID:7 withAddingChildNodeName:v5 withStartDate:v16];

      v9 = [MEMORY[0x277D3F0C0] sharedInstance];
      v23 = v5;
      v24[0] = &unk_28714B6C8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v17 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v9 createDistributionEventForwardWithDistributionID:44 withChildNodeNameToWeight:v10 withStartDate:v17];
    }

    else
    {
      if (![v6 isEqualToString:@"callStop"])
      {
LABEL_14:

        goto LABEL_15;
      }

      v18 = [MEMORY[0x277D3F0C0] sharedInstance];
      v19 = [v3 entryDate];
      [v18 createDistributionEventForwardWithDistributionID:11 withRemovingChildNodeName:v5 withStartDate:v19];

      v20 = [MEMORY[0x277D3F0C0] sharedInstance];
      v21 = [v3 entryDate];
      [v20 createDistributionEventForwardWithDistributionID:7 withRemovingChildNodeName:v5 withStartDate:v21];

      v9 = [MEMORY[0x277D3F0C0] sharedInstance];
      v10 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v9 createDistributionEventForwardWithDistributionID:44 withChildNodeNameToWeight:&unk_28714A728 withStartDate:v10];
    }

    goto LABEL_14;
  }

LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
}

- (int)mapAvailabilityModeSemanticType:(int64_t)a3
{
  if ((a3 + 2) > 0xB)
  {
    return 6;
  }

  else
  {
    return dword_25F023E30[a3 + 2];
  }
}

- (int64_t)modeTypeStringToEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Presence"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"DetailedNonP2P"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"Detailed"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)mapPixelsToBucket:(unint64_t)a3
{
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (a3 > 0x7E9000)
  {
    v6 = 5;
  }

  if (a3 >= 0x1FA401)
  {
    v5 = v6;
  }

  if (a3 > 0xE1000)
  {
    v4 = v5;
  }

  if (a3 >= 0x7E901)
  {
    v3 = v4;
  }

  if (a3 >= 0x5DC01)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)eventNameStringToEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WatchPresence"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WatchAbsence"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WatchDisconnected"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WatchConnected"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"WatchUnavailable"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"WatchUnreachable"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"WatchSwitched"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"WatchWristStatusOnWrist"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"WatchWristStatusOffWrist"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"WatchWristStatusDisabled"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccountingEntriesFor:(id)a3 withBundleID:(id)a4 withStartTime:(double)a5 withEndTime:(double)a6
{
  v21 = a3;
  v10 = a4;
  if (v10)
  {
    lastSBCupdateTimestamp = self->_lastSBCupdateTimestamp;
    if (lastSBCupdateTimestamp >= a6 || lastSBCupdateTimestamp <= a5)
    {
      lastSBCupdateTimestamp = a5;
    }

    v13 = a6 - lastSBCupdateTimestamp;
    if (v13 > 0.0)
    {
      v14 = [v21 objectForKey:v10];

      if (v14)
      {
        v15 = [v21 objectForKey:v10];
        [v15 doubleValue];
        v17 = v16;

        v18 = MEMORY[0x277CCABB0];
        v19 = v13 + v17;
      }

      else
      {
        v18 = MEMORY[0x277CCABB0];
        v19 = v13;
      }

      v20 = [v18 numberWithDouble:v19];
      [v21 setObject:v20 forKey:v10];
    }
  }
}

double __65__PLXPCAgent_distributeBundleIDEntriesToWeight_toDistributionID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

void __65__PLXPCAgent_distributeBundleIDEntriesToWeight_toDistributionID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  [a3 doubleValue];
  v8 = [v5 numberWithDouble:v7 / *(*(*(a1 + 40) + 8) + 24)];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Navd callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1723_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Navd Maps Widget Session callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1728_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Navd Navigation State Event callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1735_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "DACalendarItemsDownloaded callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1740_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "DACalendarItemsUploaded callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1750_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "UIKit alert callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1760_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Siri Borealis callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1765_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Siri Activation callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1772_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "SpotlightQos callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1777_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "SpotlightWatchdog callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1784_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Location Vehicular Detection Session callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1789_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "MotionWakeReason Session callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1794_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "CommuteRefresh Session callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1801_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "SecItem Session callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1808_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "DR MaxRate callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1818_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "Active stylus payload received from %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1826_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "Passive stylus payload received from %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1833_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "WatchPresence payload, %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics appleDiffusion payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1850_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics HandwritingInference payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1858_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics Summarization payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1866_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics assetLoad payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1874_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics fileResidentInfo payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1882_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics mmExecuteRequest payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1890_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics PhotosGenerativeEdit payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1898_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics tgiExecuteRequest payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1906_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics SmartReplySession payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1916_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "ANEd model compilation payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1927_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "ANEd model inference payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1938_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "ANEd model load payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1949_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "ANEd model unload payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1960_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "ANEd new instance model load payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1971_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "ANEd new instance model unload payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Navd GEO Network Activity callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1990_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "MXDiscoveryLevel payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1998_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Airplay DiscoveryMode payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2010_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "TestMarker callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2025_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "UIKit eclipse callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2035_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Sleep Mode activity callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2040_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Sleep Lock activity callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2047_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Weather Notification State callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2052_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Weather Notification callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2062_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "SecondaryDisplay callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2070_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "UIKit keyboard callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2078_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "UIKit activity callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2083_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "DASyncStart callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2091_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "LinkAdvisory payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2099_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Message TranscriptForeground payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2107_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "RCSSessionManagement payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2115_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "XPCMetrics::VKDataScanner payload received from %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2123_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "RenderData::AlbumAnimationDuration payload received from %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2131_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "RenderData::AlbumMotionDownload payload received from %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2138_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "CallScreeningDuration payload received from %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2143_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "CallScreeningEnabled payload received from %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2151_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "Trackpad logging payload received from %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2161_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "KeyboardSession callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2169_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "RenderPassCount callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2177_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "LayerCount callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2185_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "EDR Requests callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2193_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "CPUViolations payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2201_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PowerExceptionsDetection payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2208_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AnimatedStickerCreation callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2213_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "StaticStickerCreation callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2221_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "XPCMetrics::MailCategorizationEvent payload received from %@, %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2229_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "MADIVSProcessing callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2234_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "CarPlay payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2239_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "CarPlayScreens payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2247_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "RelevanceContextUpdate payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2257_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Mail Framework Fetch AFC callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2264_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "NanoMailSession callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2274_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Safari Reading list fetcher callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2282_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Safari View Service callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2300_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "App Accessory callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2308_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Accessory callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2315_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Network Symptoms callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2325_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Background transfer callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2333_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "InCallService callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2343_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "WebApp callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2352_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_25EE51000, v0, v1, "EntryRequest callback: payload=%@\nentries=%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2361_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Location callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2371_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Siri False Alarm callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2379_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Peek callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2387_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Pop callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2397_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Thermal level callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2405_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Thermal sensors callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2413_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Thermal HiP callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2423_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Mobile Backup callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2441_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "CloudKit callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2451_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "CacheDelete callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2461_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Translation callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2471_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AttentionSampling callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2479_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AttentionPolling callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2487_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AttentionService callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2492_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "OD Off callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2497_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "OD On callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2502_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "OD HN callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2507_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "FrameCount callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2514_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AirDropSession callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2519_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AirDrop callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2524_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "SOS KVS Rate Limiting Event callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2538_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AirTraffic callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2545_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "CoreDuet KnowledgeSync callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2555_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "App Activation Performance callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2592_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Shortcuts trigger fired callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2602_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AppleBacklight Brightness callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2612_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "NetworkRelay callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2620_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "NetworkRelay WiFi Assertion callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2628_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "NetworkRelay BT Link Assertion callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2636_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "NetworkRelay Terminus BT wake callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2643_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AccessoryMotion callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2651_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "UARP Update callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2661_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Dosimetry callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2671_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AudioRouting callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2681_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Rapport received message callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2688_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "EnhancedDiscovery callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2698_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "WirelessSyncStart payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2706_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "WirelessSyncStop payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2714_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Spatial Audio callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2722_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AVConference callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2729_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AvailabilityModes payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2734_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "FocusFilters payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2741_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PortraitHighlightsResult payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2746_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "SpotlightHighlightsResult payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2754_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "SpotlightIndexes payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2759_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "SpotlightQueries payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2766_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Passkey Authentication callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2776_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "ADD callback %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2784_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "TaskModeQuery: payload=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2796_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Rapid Security Response callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2805_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "StatusKitAgent AggregatedPushes callback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointSleepLock:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventPointWeatherNotification:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventPointADD:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventForwardSOSKVSRateLimitingEvent:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventForwardSOSKVSRateLimitingEvent:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)convertPPSSKALogEventName:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "StatusKitAgent AggregatedPushes converting eventName %@ to an enum", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)convertPPSSKALogEventName:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "StatusKitAgent AggregatedPushes eventName %@ does not fall in any enum", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logStatusKitAgentAggregatePushes:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __37__PLXPCAgent_logEventForwardGMSOptIn__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAssetLoadGF:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics assetLoad found openEntry = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAssetLoadGF:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__PLXPCAgent_logEventForwardAssetLoadGF___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v1, v2, "GenerativeFunctionMetrics assetLoad updateEntry: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardMMExecuteRequest:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics mmExecuteRequest found openEntry = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardMMExecuteRequest:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__PLXPCAgent_logEventForwardMMExecuteRequest___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v1, v2, "GenerativeFunctionMetrics mmExecuteRequest updateEntry: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardTGIExecuteRequest:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardTGIExecuteRequest:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics tgiExecuteRequest found openEntry = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardTGIExecuteRequest:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__PLXPCAgent_logEventForwardTGIExecuteRequest___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v1, v2, "GenerativeFunctionMetrics tgiExecuteRequest updateEntry: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardSmartReplySession:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardSmartReplySession:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics SmartReplySession found openEntry = %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardSmartReplySession:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __47__PLXPCAgent_logEventForwardSmartReplySession___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_11(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v1, v2, "GenerativeFunctionMetrics SmartReplySession updateEntry: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)convertPixelCount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)convertPixelCount:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAppleDiffusion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "GenerativeFunctionMetrics appleDiffusion updatedPayload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointANE:withCategory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "logEventPointANE for category: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointANE:withCategory:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "logEventPointANE mutablepayload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointANE:withCategory:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointANE:withCategory:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventPointANE:withCategory:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "logEventPointANE updated payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointANE:withCategory:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "logEventPointANE internal build, payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventEventForwardMessageTranscript:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Message TranscriptForeground monotonic eventTime: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAppleBackklightBrightness:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAppleBackklightBrightness:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)convertAirDropSessionState:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "AirDropSession Unknown/Other AirDropSession State %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardNetworkRelay:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "NetworkRelay QuickRelayClients string: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAudioRouting:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventFowardUARPStatus:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardDosimetry:(id *)a1 .cold.1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 objectForKeyedSubscript:@"noiseEnabled"];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardDosimetry:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"noiseEnabled"];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardSleepMode:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventForwardRelevanceContextUpdate:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "RelevanceContextUpdate updated payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardLinkAdvisory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "LinkAdvisory monotonic eventTime: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardNamePeek:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 peekpopProcessID];
  [a1 peekDuration];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardNamePeek:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 peekpopProcessID];
  v2 = [a1 peekStartTime];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __41__PLXPCAgent_logEventForwardEDRRequests___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "logging EDR Requests payload %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardFrameCount:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardRenderPassCount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "RenderPassCount updated payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardLayerCount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "layerCount updated payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardEnergyTelemetry:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventBackwardEnergyTelemetry:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventEventPointRCSSessionManagement:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "RCSSessionManagement monotonic eventTime: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventEventPointRCSSessionManagement:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventIntervalCoreDuetKnowledgeSync:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalCoreDuetKnowledgeSync:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEventIntervalRapportReceivedMessage:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__PLXPCAgent_logEventIntervalNameSpotlightIndexes___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalEndCPUViolations:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "CPUViolations updated payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalPowerExceptionsDetection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "PowerExceptionsDetection updated payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalVKDataScanner:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "XPCMetrics::VKDataScanner updated payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAlbumAnimation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "RenderData::AlbumAnimationDuration updated payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logAlbumMotion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "RenderData::AlbumMotionDownload updated payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logMailCategorization:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "XPCMetrics::MailCategorizationEvent updated payload: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end
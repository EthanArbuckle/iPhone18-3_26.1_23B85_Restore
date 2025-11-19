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

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AnimatedStickerCreation callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalAnimatedStickerCreation:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2805(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "StatusKitAgent AggregatedPushes callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logStatusKitAgentAggregatePushes:v6];
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLXPCAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (BOOL)shouldLogiOSWatchOSOnly
{
  if (qword_2811F6E10 != -1)
  {
    dispatch_once(&qword_2811F6E10, &__block_literal_global_840);
  }

  return _MergedGlobals_1_68;
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

  _MergedGlobals_1_68 = result;
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
  v16 = &unk_282C1CE48;
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
  v14 = &unk_282C1CE48;
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
  v18 = &unk_282C1CE58;
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
  v13[0] = &unk_282C1CE48;
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
  v14 = &unk_282C1CE48;
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
  v14 = &unk_282C1CE48;
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
  v19[0] = &unk_282C1CE48;
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
  v15[0] = &unk_282C1CE48;
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
  v18 = &unk_282C1CE48;
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
    v17[0] = &unk_282C1CE48;
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
  v21[0] = &unk_282C1CE48;
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
  v21[0] = &unk_282C1CE48;
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
  v23[0] = &unk_282C1CE48;
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
    v19[0] = &unk_282C1CE48;
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
  v15[0] = &unk_282C1CE48;
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
    v13[0] = &unk_282C1CE48;
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
  v15[0] = &unk_282C1CE48;
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
  v49[0] = &unk_282C1CE68;
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
  v13[0] = &unk_282C1CE48;
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
  v19[0] = &unk_282C1CE48;
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
  v21[0] = &unk_282C1CE78;
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
  v23[0] = &unk_282C1CE78;
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
    v51[0] = &unk_282C1CE88;
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
    v21[0] = &unk_282C1CE48;
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
    v27[0] = &unk_282C1CE48;
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
    v15[0] = &unk_282C1CE48;
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
    v39[0] = &unk_282C1CE48;
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
    v59[0] = &unk_282C1CE48;
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
    v19[0] = &unk_282C1CE48;
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
  v81[0] = &unk_282C1CE98;
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
  v13[0] = &unk_282C1CE48;
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
  v13[0] = &unk_282C1CE48;
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
  v29[0] = &unk_282C1CE48;
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
  v23[0] = &unk_282C1CE48;
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
  v16[0] = &unk_282C1CE48;
  v16[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4F0];
  v15[2] = *MEMORY[0x277D3F4A0];
  v15[3] = v3;
  v16[2] = MEMORY[0x277CBEC38];
  v16[3] = &unk_282C16BF0;
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
  v15[0] = &unk_282C1CE48;
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
    v15[0] = &unk_282C1CE48;
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
    v13[0] = &unk_282C1CE48;
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
    v23[0] = &unk_282C1CE48;
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
  v12 = &unk_282C1CE48;
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
  v20 = &unk_282C1CE48;
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
  v15[0] = &unk_282C1CE48;
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
    v17[0] = &unk_282C1CEA8;
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
    v15[0] = &unk_282C1CE48;
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
  v31[0] = &unk_282C1CE58;
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
    v16 = &unk_282C1CE48;
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
    v18 = &unk_282C1CE58;
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
    v17[0] = &unk_282C1CE48;
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
  v20[0] = &unk_282C1CE78;
  v20[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4F0];
  v19[2] = *MEMORY[0x277D3F4A0];
  v19[3] = v3;
  v20[2] = MEMORY[0x277CBEC38];
  v20[3] = &unk_282C16C08;
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
  v17[0] = &unk_282C1CE48;
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
  v15[0] = &unk_282C1CE48;
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
    v13[0] = &unk_282C1CE48;
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
    v13[0] = &unk_282C1CE48;
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
  v15[0] = &unk_282C1CE48;
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
  v34[0] = &unk_282C1CE48;
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
  v30 = &unk_282C13728;
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
  v21[0] = &unk_282C1CE48;
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
  v25[0] = &unk_282C1CE48;
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
  v12 = &unk_282C1CE48;
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
    v19[0] = &unk_282C1CE48;
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
  v20 = &unk_282C1CE48;
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
  v13[0] = &unk_282C1CE48;
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
  v21[0] = &unk_282C1CE58;
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
    v17[0] = &unk_282C1CE48;
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
  v17[0] = &unk_282C1CE48;
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
  v19[0] = &unk_282C1CE48;
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
  v17[0] = &unk_282C1CE48;
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
  v13[0] = &unk_282C1CE58;
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
  v17[0] = &unk_282C1CE78;
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
  v19[0] = &unk_282C1CE48;
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
  v17[0] = &unk_282C1CE48;
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
    v12 = &unk_282C1CE48;
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
  v33[0] = &unk_282C1CE48;
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
    v20 = &unk_282C1CE48;
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
  v12 = &unk_282C1CE48;
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
  v14 = &unk_282C1CE48;
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
  v56 = &unk_282C1CE48;
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
  v15[0] = &unk_282C1CE48;
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
  v12 = &unk_282C1CE48;
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
  v23[0] = &unk_282C1CE58;
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
    v21[0] = &unk_282C1CE48;
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
    v21[0] = &unk_282C1CE58;
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
    v21[0] = &unk_282C1CE58;
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
    v19[0] = &unk_282C1CE48;
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
    v17[0] = &unk_282C1CE48;
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
    v17[0] = &unk_282C1CE48;
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
    v15[0] = &unk_282C1CE48;
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
    v21[0] = &unk_282C1CE48;
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
    v33[0] = &unk_282C1CE58;
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
    v33[0] = &unk_282C1CE58;
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
    v15[0] = &unk_282C1CE58;
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
    v33[0] = &unk_282C1CE48;
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
    v23[0] = &unk_282C1CE48;
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
  v19[0] = &unk_282C1CE58;
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
  v23[0] = &unk_282C1CE48;
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
  v32 = &unk_282C1CE48;
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
  v14 = &unk_282C1CE48;
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
  v14 = &unk_282C1CE48;
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
  v27[0] = &unk_282C1CE48;
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
  v37[0] = &unk_282C1CEB8;
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
  v27[0] = &unk_282C1CE78;
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
  v12 = &unk_282C1CE48;
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
  v19[0] = &unk_282C1CE58;
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
    v27[0] = &unk_282C1CE48;
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
    v22 = &unk_282C1CE38;
    v20 = *MEMORY[0x277D3F470];
    v21 = &unk_282C1CEC8;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v28[3] = *MEMORY[0x277D3F488];
    v29[2] = v8;
    v29[3] = &unk_282C16C20;
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
  v27[0] = &unk_282C1CE48;
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
  v22 = &unk_282C1CED8;
  v20 = *MEMORY[0x277D3F470];
  v21 = &unk_282C1CEC8;
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
  v23[0] = &unk_282C1CE48;
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
  v18 = &unk_282C1CE38;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_282C1CEC8;
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
  if ([MEMORY[0x277D3F258] isPerfPowerMetricd])
  {
    v3 = 0;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = PLXPCAgent;
    v4 = [(PLAgent *)&v22 init];
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
        v14 = *MEMORY[0x277D3F600];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __18__PLXPCAgent_init__block_invoke;
        v20[3] = &unk_2782597E8;
        v15 = v4;
        v21 = v15;
        v16 = [v13 initWithOperator:v15 forNotification:v14 withBlock:v20];
        MemoryWarningListener = v15->_MemoryWarningListener;
        v15->_MemoryWarningListener = v16;
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
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (v13)
  {
    v9 = *MEMORY[0x277D3F600];
    v10 = [v13 objectForKeyedSubscript:*MEMORY[0x277D3F600]];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [v13 objectForKeyedSubscript:v9];
      [v11 logEventPointJetsam:{objc_msgSend(v12, "unsignedLongValue")}];
    }
  }
}

- (void)initTaskOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke;
  v56[3] = &unk_27825A1D8;
  v56[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C1A470 withBlock:v56];
  [(PLXPCAgent *)self setNavdXPCListener:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1723;
  v55[3] = &unk_27825A1D8;
  v55[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C1A498 withBlock:v55];
  [(PLXPCAgent *)self setNavdXPCListener:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1728;
  v54[3] = &unk_27825A1D8;
  v54[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_282C1A4C0 withBlock:v54];
  [(PLXPCAgent *)self setNavdXPCListener:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1735;
  v53[3] = &unk_27825A1D8;
  v53[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C1A4E8 withBlock:v53];
  [(PLXPCAgent *)self setDACalendarItemsDownloadedXPCListener:v10];

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1740;
  v52[3] = &unk_27825A1D8;
  v52[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_282C1A510 withBlock:v52];
  [(PLXPCAgent *)self setDACalendarItemsUploadedXPCListener:v12];

  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v13 = objc_alloc(MEMORY[0x277D3F270]);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1750;
    v51[3] = &unk_27825A1D8;
    v51[4] = self;
    v14 = [v13 initWithOperator:self withRegistration:&unk_282C1A538 withBlock:v51];
    [(PLXPCAgent *)self setUIKitAlertXPCListener:v14];
  }

  v15 = objc_alloc(MEMORY[0x277D3F270]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1760;
  v50[3] = &unk_27825A1D8;
  v50[4] = self;
  v16 = [v15 initWithOperator:self withRegistration:&unk_282C1A560 withBlock:v50];
  [(PLXPCAgent *)self setSiriXPCListener:v16];

  v17 = objc_alloc(MEMORY[0x277D3F270]);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1765;
  v49[3] = &unk_27825A1D8;
  v49[4] = self;
  v18 = [v17 initWithOperator:self withRegistration:&unk_282C1A588 withBlock:v49];
  [(PLXPCAgent *)self setNanoSiriXPCListener:v18];

  v19 = objc_alloc(MEMORY[0x277D3F270]);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1772;
  v48[3] = &unk_27825A1D8;
  v48[4] = self;
  v20 = [v19 initWithOperator:self withRegistration:&unk_282C1A5B0 withBlock:v48];
  [(PLXPCAgent *)self setSpotlightQosXPCListener:v20];

  v21 = objc_alloc(MEMORY[0x277D3F270]);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1777;
  v47[3] = &unk_27825A1D8;
  v47[4] = self;
  v22 = [v21 initWithOperator:self withRegistration:&unk_282C1A5D8 withBlock:v47];
  [(PLXPCAgent *)self setSpotlightWatchdogFiredXPCListener:v22];

  v23 = objc_alloc(MEMORY[0x277D3F270]);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1784;
  v46[3] = &unk_27825A1D8;
  v46[4] = self;
  v24 = [v23 initWithOperator:self withRegistration:&unk_282C1A600 withBlock:v46];
  [(PLXPCAgent *)self setLocationVehicularDetectionXPCListener:v24];

  v25 = objc_alloc(MEMORY[0x277D3F270]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1789;
  v45[3] = &unk_27825A1D8;
  v45[4] = self;
  v26 = [v25 initWithOperator:self withRegistration:&unk_282C1A628 withBlock:v45];
  [(PLXPCAgent *)self setMotionWakeReasonXPCListener:v26];

  v27 = objc_alloc(MEMORY[0x277D3F270]);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1794;
  v44[3] = &unk_27825A1D8;
  v44[4] = self;
  v28 = [v27 initWithOperator:self withRegistration:&unk_282C1A650 withBlock:v44];
  [(PLXPCAgent *)self setCommuteRefreshXPCListener:v28];

  v29 = objc_alloc(MEMORY[0x277D3F270]);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1801;
  v43[3] = &unk_27825A1D8;
  v43[4] = self;
  v30 = [v29 initWithOperator:self withRegistration:&unk_282C1A678 withBlock:v43];
  [(PLXPCAgent *)self setSecItemXPCListener:v30];

  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v31 = objc_alloc(MEMORY[0x277D3F270]);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1808;
    v42[3] = &unk_27825A1D8;
    v42[4] = self;
    v32 = [v31 initWithOperator:self withRegistration:&unk_282C1A6A0 withBlock:v42];
    [(PLXPCAgent *)self setDRMaxRateListener:v32];
  }

  if ([MEMORY[0x277D3F208] isiPad])
  {
    v33 = objc_alloc(MEMORY[0x277D3F270]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1818;
    v41[3] = &unk_27825A1D8;
    v41[4] = self;
    v34 = [v33 initWithOperator:self withRegistration:&unk_282C1A6C8 withBlock:v41];
    [(PLXPCAgent *)self setActiveStylusXPCListener:v34];

    v35 = objc_alloc(MEMORY[0x277D3F270]);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1826;
    v40[3] = &unk_27825A1D8;
    v40[4] = self;
    v36 = [v35 initWithOperator:self withRegistration:&unk_282C1A6F0 withBlock:v40];
    [(PLXPCAgent *)self setPassiveStylusXPCListener:v36];
  }

  v37 = objc_alloc(MEMORY[0x277D3F270]);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1833;
  v39[3] = &unk_27825A1D8;
  v39[4] = self;
  v38 = [v37 initWithOperator:self withRegistration:&unk_282C1A718 withBlock:v39];
  [(PLXPCAgent *)self setWatchPresenceXPCListener:v38];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Navd callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNavd:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1723(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Navd Maps Widget Session callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNavdMapsWidgetSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Navd Navigation State Event callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNavdMapsNavigationStateEvent:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1735(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "DACalendarItemsDownloaded callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointDACalendarItemsDownloaded:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "DACalendarItemsUploaded callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointDACalendarItemsUploaded:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "UIKit alert callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardUIKitAlert:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Siri Borealis callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSiri:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1765(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Siri Activation callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointSiriActivation:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1772(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SpotlightQos callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardNameSpotlightQos:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1777(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SpotlightWatchdog callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNameSpotlightWatchdogFired:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Location Vehicular Detection Session callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointLocationVehicularDetectionSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1789(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "MotionWakeReason Session callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointMotionWakeReasonSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CommuteRefresh Session callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointCommuteRefreshSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1801(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SecItem Session callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointSecItemSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "DR MaxRate callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardDRMaxRate:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1818(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Active stylus payload received from %@, %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventBackwardActiveStylus:v8];
  v10 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1826(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Passive stylus payload received from %@, %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventBackwardPassiveStylus:v8];
  v10 = *MEMORY[0x277D85DE8];
}

void __42__PLXPCAgent_initTaskOperatorDependancies__block_invoke_1833(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "WatchPresence payload, %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardWatchPresence:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initOperatorDependancies
{
  v388 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v383[0] = MEMORY[0x277D85DD0];
  v383[1] = 3221225472;
  v383[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke;
  v383[3] = &unk_27825A1D8;
  v383[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C1A740 withBlock:v383];
  [(PLXPCAgent *)self setAppleDiffusionListener:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v382[0] = MEMORY[0x277D85DD0];
  v382[1] = 3221225472;
  v382[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1850;
  v382[3] = &unk_27825A1D8;
  v382[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C1A768 withBlock:v382];
  [(PLXPCAgent *)self setHandwritingInferenceListener:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v381[0] = MEMORY[0x277D85DD0];
  v381[1] = 3221225472;
  v381[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1858;
  v381[3] = &unk_27825A1D8;
  v381[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_282C1A790 withBlock:v381];
  [(PLXPCAgent *)self setSummarizationListener:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v380[0] = MEMORY[0x277D85DD0];
  v380[1] = 3221225472;
  v380[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1866;
  v380[3] = &unk_27825A1D8;
  v380[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C1A7B8 withBlock:v380];
  [(PLXPCAgent *)self setAssetLoadGFListener:v10];

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v379[0] = MEMORY[0x277D85DD0];
  v379[1] = 3221225472;
  v379[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1874;
  v379[3] = &unk_27825A1D8;
  v379[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_282C1A7E0 withBlock:v379];
  [(PLXPCAgent *)self setFileResidentInfoListener:v12];

  v13 = objc_alloc(MEMORY[0x277D3F270]);
  v378[0] = MEMORY[0x277D85DD0];
  v378[1] = 3221225472;
  v378[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1882;
  v378[3] = &unk_27825A1D8;
  v378[4] = self;
  v14 = [v13 initWithOperator:self withRegistration:&unk_282C1A808 withBlock:v378];
  [(PLXPCAgent *)self setMmExecuteRequestListener:v14];

  v15 = objc_alloc(MEMORY[0x277D3F270]);
  v377[0] = MEMORY[0x277D85DD0];
  v377[1] = 3221225472;
  v377[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1890;
  v377[3] = &unk_27825A1D8;
  v377[4] = self;
  v16 = [v15 initWithOperator:self withRegistration:&unk_282C1A830 withBlock:v377];
  [(PLXPCAgent *)self setPhotosGenerativeEditListener:v16];

  v17 = objc_alloc(MEMORY[0x277D3F270]);
  v376[0] = MEMORY[0x277D85DD0];
  v376[1] = 3221225472;
  v376[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1898;
  v376[3] = &unk_27825A1D8;
  v376[4] = self;
  v18 = [v17 initWithOperator:self withRegistration:&unk_282C1A858 withBlock:v376];
  [(PLXPCAgent *)self setTgiExecuteRequestListener:v18];

  v19 = objc_alloc(MEMORY[0x277D3F270]);
  v375[0] = MEMORY[0x277D85DD0];
  v375[1] = 3221225472;
  v375[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1906;
  v375[3] = &unk_27825A1D8;
  v375[4] = self;
  v20 = [v19 initWithOperator:self withRegistration:&unk_282C1A880 withBlock:v375];
  [(PLXPCAgent *)self setSmartReplySessionListener:v20];

  v21 = objc_alloc(MEMORY[0x277D3F160]);
  v374[0] = MEMORY[0x277D85DD0];
  v374[1] = 3221225472;
  v374[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1908;
  v374[3] = &unk_2782597E8;
  v374[4] = self;
  v22 = [v21 initWithOperator:self forNotification:@"com.apple.CloudSubscriptionFeatures.OptIn.Changed" requireState:0 withBlock:v374];
  gmsOptInListener = self->_gmsOptInListener;
  self->_gmsOptInListener = v22;

  if ([MEMORY[0x277D3F208] hasANE])
  {
    v24 = objc_alloc(MEMORY[0x277D3F270]);
    v373[0] = MEMORY[0x277D85DD0];
    v373[1] = 3221225472;
    v373[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1916;
    v373[3] = &unk_27825A1D8;
    v373[4] = self;
    v25 = [v24 initWithOperator:self withRegistration:&unk_282C1A8A8 withBlock:v373];
    [(PLXPCAgent *)self setModelCompilationListener:v25];

    v26 = objc_alloc(MEMORY[0x277D3F270]);
    v372[0] = MEMORY[0x277D85DD0];
    v372[1] = 3221225472;
    v372[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1927;
    v372[3] = &unk_27825A1D8;
    v372[4] = self;
    v27 = [v26 initWithOperator:self withRegistration:&unk_282C1A8D0 withBlock:v372];
    [(PLXPCAgent *)self setModelInferenceListener:v27];

    v28 = objc_alloc(MEMORY[0x277D3F270]);
    v371[0] = MEMORY[0x277D85DD0];
    v371[1] = 3221225472;
    v371[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1938;
    v371[3] = &unk_27825A1D8;
    v371[4] = self;
    v29 = [v28 initWithOperator:self withRegistration:&unk_282C1A8F8 withBlock:v371];
    [(PLXPCAgent *)self setModelLoadListener:v29];

    v30 = objc_alloc(MEMORY[0x277D3F270]);
    v370[0] = MEMORY[0x277D85DD0];
    v370[1] = 3221225472;
    v370[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1949;
    v370[3] = &unk_27825A1D8;
    v370[4] = self;
    v31 = [v30 initWithOperator:self withRegistration:&unk_282C1A920 withBlock:v370];
    [(PLXPCAgent *)self setModelUnLoadListener:v31];

    v32 = objc_alloc(MEMORY[0x277D3F270]);
    v369[0] = MEMORY[0x277D85DD0];
    v369[1] = 3221225472;
    v369[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1960;
    v369[3] = &unk_27825A1D8;
    v369[4] = self;
    v33 = [v32 initWithOperator:self withRegistration:&unk_282C1A948 withBlock:v369];
    [(PLXPCAgent *)self setInstanceModelLoadListener:v33];

    v34 = objc_alloc(MEMORY[0x277D3F270]);
    v368[0] = MEMORY[0x277D85DD0];
    v368[1] = 3221225472;
    v368[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1971;
    v368[3] = &unk_27825A1D8;
    v368[4] = self;
    v35 = [v34 initWithOperator:self withRegistration:&unk_282C1A970 withBlock:v368];
    [(PLXPCAgent *)self setInstanceModelUnLoadListener:v35];
  }

  v367[0] = MEMORY[0x277D85DD0];
  v367[1] = 3221225472;
  v367[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1976;
  v367[3] = &unk_2782597E8;
  v367[4] = self;
  v36 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v367];
  [(PLXPCAgent *)self setBatteryLevelChangedNotifications:v36];

  v37 = objc_alloc(MEMORY[0x277D3F270]);
  v366[0] = MEMORY[0x277D85DD0];
  v366[1] = 3221225472;
  v366[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2;
  v366[3] = &unk_27825A1D8;
  v366[4] = self;
  v38 = [v37 initWithOperator:self withRegistration:&unk_282C1A998 withBlock:v366];
  [(PLXPCAgent *)self setNavdXPCListener:v38];

  v39 = objc_alloc(MEMORY[0x277D3F270]);
  v365[0] = MEMORY[0x277D85DD0];
  v365[1] = 3221225472;
  v365[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1990;
  v365[3] = &unk_27825A1D8;
  v365[4] = self;
  v40 = [v39 initWithOperator:self withRegistration:&unk_282C1A9C0 withBlock:v365];
  [(PLXPCAgent *)self setMXDiscoveryLevelXPCListener:v40];

  v41 = objc_alloc(MEMORY[0x277D3F270]);
  v364[0] = MEMORY[0x277D85DD0];
  v364[1] = 3221225472;
  v364[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_1998;
  v364[3] = &unk_27825A1D8;
  v364[4] = self;
  v42 = [v41 initWithOperator:self withRegistration:&unk_282C1A9E8 withBlock:v364];
  [(PLXPCAgent *)self setAirPlayDiscoveryModeXPCListener:v42];

  v43 = objc_alloc(MEMORY[0x277D3F270]);
  v363[0] = MEMORY[0x277D85DD0];
  v363[1] = 3221225472;
  v363[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2003;
  v363[3] = &unk_27825A1D8;
  v363[4] = self;
  v44 = [v43 initWithOperator:self withRegistration:&unk_282C1AA10 withBlock:v363];
  [(PLXPCAgent *)self setCommuteRefreshXPCListener:v44];

  v45 = objc_alloc(MEMORY[0x277D3F270]);
  v362[0] = MEMORY[0x277D85DD0];
  v362[1] = 3221225472;
  v362[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2010;
  v362[3] = &unk_27825A1D8;
  v362[4] = self;
  v46 = [v45 initWithOperator:self withRegistration:&unk_282C1AA38 withBlock:v362];
  [(PLXPCAgent *)self setTestMarkerXPCListener:v46];

  v47 = objc_alloc(MEMORY[0x277D3F270]);
  v361[0] = MEMORY[0x277D85DD0];
  v361[1] = 3221225472;
  v361[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2017;
  v361[3] = &unk_27825A1D8;
  v361[4] = self;
  v48 = [v47 initWithOperator:self withRegistration:&unk_282C1AA60 withBlock:v361];
  [(PLXPCAgent *)self setEnergyTelemetryXPCListener:v48];

  if ([MEMORY[0x277D3F208] isiOS])
  {
    v49 = objc_alloc(MEMORY[0x277D3F270]);
    v360[0] = MEMORY[0x277D85DD0];
    v360[1] = 3221225472;
    v360[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2025;
    v360[3] = &unk_27825A1D8;
    v360[4] = self;
    v50 = [v49 initWithOperator:self withRegistration:&unk_282C1AA88 withBlock:v360];
    [(PLXPCAgent *)self setUIKitEclipseXPCListener:v50];
  }

  v51 = objc_alloc(MEMORY[0x277D3F270]);
  v359[0] = MEMORY[0x277D85DD0];
  v359[1] = 3221225472;
  v359[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2035;
  v359[3] = &unk_27825A1D8;
  v359[4] = self;
  v52 = [v51 initWithOperator:self withRegistration:&unk_282C1AAB0 withBlock:v359];
  [(PLXPCAgent *)self setSleepModeXPCListener:v52];

  v53 = objc_alloc(MEMORY[0x277D3F270]);
  v358[0] = MEMORY[0x277D85DD0];
  v358[1] = 3221225472;
  v358[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2040;
  v358[3] = &unk_27825A1D8;
  v358[4] = self;
  v54 = [v53 initWithOperator:self withRegistration:&unk_282C1AAD8 withBlock:v358];
  [(PLXPCAgent *)self setSleepLockXPCListener:v54];

  v55 = objc_alloc(MEMORY[0x277D3F270]);
  v357[0] = MEMORY[0x277D85DD0];
  v357[1] = 3221225472;
  v357[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2047;
  v357[3] = &unk_27825A1D8;
  v357[4] = self;
  v56 = [v55 initWithOperator:self withRegistration:&unk_282C1AB00 withBlock:v357];
  [(PLXPCAgent *)self setWeatherNotificationStateXPCListener:v56];

  v57 = objc_alloc(MEMORY[0x277D3F270]);
  v356[0] = MEMORY[0x277D85DD0];
  v356[1] = 3221225472;
  v356[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2052;
  v356[3] = &unk_27825A1D8;
  v356[4] = self;
  v58 = [v57 initWithOperator:self withRegistration:&unk_282C1AB28 withBlock:v356];
  [(PLXPCAgent *)self setWeatherNotificationXPCListener:v58];

  if (([MEMORY[0x277D3F208] isiPad] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isMac"))
  {
    v59 = objc_alloc(MEMORY[0x277D3F270]);
    v355[0] = MEMORY[0x277D85DD0];
    v355[1] = 3221225472;
    v355[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2062;
    v355[3] = &unk_27825A1D8;
    v355[4] = self;
    v60 = [v59 initWithOperator:self withRegistration:&unk_282C1AB50 withBlock:v355];
    [(PLXPCAgent *)self setSecondaryDisplayXPCListener:v60];
  }

  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v61 = objc_alloc(MEMORY[0x277D3F270]);
    v354[0] = MEMORY[0x277D85DD0];
    v354[1] = 3221225472;
    v354[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2070;
    v354[3] = &unk_27825A1D8;
    v354[4] = self;
    v62 = [v61 initWithOperator:self withRegistration:&unk_282C1AB78 withBlock:v354];
    [(PLXPCAgent *)self setUIKitKeyboardXPCListener:v62];

    v63 = objc_alloc(MEMORY[0x277D3F270]);
    v353[0] = MEMORY[0x277D85DD0];
    v353[1] = 3221225472;
    v353[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2078;
    v353[3] = &unk_27825A1D8;
    v353[4] = self;
    v64 = [v63 initWithOperator:self withRegistration:&unk_282C1ABA0 withBlock:v353];
    [(PLXPCAgent *)self setUIKitActivityXPCListener:v64];

    v65 = objc_alloc(MEMORY[0x277D3F270]);
    v352[0] = MEMORY[0x277D85DD0];
    v352[1] = 3221225472;
    v352[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2083;
    v352[3] = &unk_27825A1D8;
    v352[4] = self;
    v66 = [v65 initWithOperator:self withRegistration:&unk_282C1ABC8 withBlock:v352];
    [(PLXPCAgent *)self setDASyncStartXPCListener:v66];
  }

  v67 = objc_alloc(MEMORY[0x277D3F270]);
  v351[0] = MEMORY[0x277D85DD0];
  v351[1] = 3221225472;
  v351[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2091;
  v351[3] = &unk_27825A1D8;
  v351[4] = self;
  v68 = [v67 initWithOperator:self withRegistration:&unk_282C1ABF0 withBlock:v351];
  [(PLXPCAgent *)self setLinkAdvisoryXPCListener:v68];

  v69 = objc_alloc(MEMORY[0x277D3F270]);
  v350[0] = MEMORY[0x277D85DD0];
  v350[1] = 3221225472;
  v350[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2099;
  v350[3] = &unk_27825A1D8;
  v350[4] = self;
  v70 = [v69 initWithOperator:self withRegistration:&unk_282C1AC18 withBlock:v350];
  [(PLXPCAgent *)self setMessageForegroundXPCListener:v70];

  v71 = objc_alloc(MEMORY[0x277D3F270]);
  v349[0] = MEMORY[0x277D85DD0];
  v349[1] = 3221225472;
  v349[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2107;
  v349[3] = &unk_27825A1D8;
  v349[4] = self;
  v72 = [v71 initWithOperator:self withRegistration:&unk_282C1AC40 withBlock:v349];
  [(PLXPCAgent *)self setRCSSessionManagementXPCListener:v72];

  v73 = objc_alloc(MEMORY[0x277D3F270]);
  v348[0] = MEMORY[0x277D85DD0];
  v348[1] = 3221225472;
  v348[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2115;
  v348[3] = &unk_27825A1D8;
  v348[4] = self;
  v74 = [v73 initWithOperator:self withRegistration:&unk_282C1AC68 withBlock:v348];
  [(PLXPCAgent *)self setVkDataScannerListener:v74];

  v75 = objc_alloc(MEMORY[0x277D3F270]);
  v347[0] = MEMORY[0x277D85DD0];
  v347[1] = 3221225472;
  v347[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2123;
  v347[3] = &unk_27825A1D8;
  v347[4] = self;
  v76 = [v75 initWithOperator:self withRegistration:&unk_282C1AC90 withBlock:v347];
  [(PLXPCAgent *)self setAlbumAnimationListener:v76];

  v77 = objc_alloc(MEMORY[0x277D3F270]);
  v346[0] = MEMORY[0x277D85DD0];
  v346[1] = 3221225472;
  v346[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2131;
  v346[3] = &unk_27825A1D8;
  v346[4] = self;
  v78 = [v77 initWithOperator:self withRegistration:&unk_282C1ACB8 withBlock:v346];
  [(PLXPCAgent *)self setAlbumMotionListener:v78];

  v79 = objc_alloc(MEMORY[0x277D3F270]);
  v345[0] = MEMORY[0x277D85DD0];
  v345[1] = 3221225472;
  v345[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2138;
  v345[3] = &unk_27825A1D8;
  v345[4] = self;
  v80 = [v79 initWithOperator:self withRegistration:&unk_282C1ACE0 withBlock:v345];
  [(PLXPCAgent *)self setCallScreeningDurationListener:v80];

  v81 = objc_alloc(MEMORY[0x277D3F270]);
  v344[0] = MEMORY[0x277D85DD0];
  v344[1] = 3221225472;
  v344[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2143;
  v344[3] = &unk_27825A1D8;
  v344[4] = self;
  v82 = [v81 initWithOperator:self withRegistration:&unk_282C1AD08 withBlock:v344];
  [(PLXPCAgent *)self setCallScreeningEnabledListener:v82];

  if ([MEMORY[0x277D3F208] isiPad])
  {
    v83 = objc_alloc(MEMORY[0x277D3F270]);
    v343[0] = MEMORY[0x277D85DD0];
    v343[1] = 3221225472;
    v343[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2151;
    v343[3] = &unk_27825A1D8;
    v343[4] = self;
    v84 = [v83 initWithOperator:self withRegistration:&unk_282C1AD30 withBlock:v343];
    [(PLXPCAgent *)self setKeyboardTrackpadXPCListener:v84];
  }

  v85 = objc_alloc(MEMORY[0x277D3F270]);
  v342[0] = MEMORY[0x277D85DD0];
  v342[1] = 3221225472;
  v342[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2161;
  v342[3] = &unk_27825A1D8;
  v342[4] = self;
  v86 = [v85 initWithOperator:self withRegistration:&unk_282C1AD58 withBlock:v342];
  [(PLXPCAgent *)self setKeyboardSessionXPCListener:v86];

  v87 = objc_alloc(MEMORY[0x277D3F270]);
  v341[0] = MEMORY[0x277D85DD0];
  v341[1] = 3221225472;
  v341[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2169;
  v341[3] = &unk_27825A1D8;
  v341[4] = self;
  v88 = [v87 initWithOperator:self withRegistration:&unk_282C1AD80 withBlock:v341];
  [(PLXPCAgent *)self setRenderPassCountXPCListener:v88];

  v89 = objc_alloc(MEMORY[0x277D3F270]);
  v340[0] = MEMORY[0x277D85DD0];
  v340[1] = 3221225472;
  v340[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2177;
  v340[3] = &unk_27825A1D8;
  v340[4] = self;
  v90 = [v89 initWithOperator:self withRegistration:&unk_282C1ADA8 withBlock:v340];
  [(PLXPCAgent *)self setLayerCountXPCListener:v90];

  if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
  {
    v91 = objc_alloc(MEMORY[0x277D3F270]);
    v339[0] = MEMORY[0x277D85DD0];
    v339[1] = 3221225472;
    v339[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2185;
    v339[3] = &unk_27825A1D8;
    v339[4] = self;
    v92 = [v91 initWithOperator:self withRegistration:&unk_282C1ADD0 withBlock:v339];
    [(PLXPCAgent *)self setEDRRequestsXPCListener:v92];
  }

  v93 = objc_alloc(MEMORY[0x277D3F270]);
  v338[0] = MEMORY[0x277D85DD0];
  v338[1] = 3221225472;
  v338[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2193;
  v338[3] = &unk_27825A1D8;
  v338[4] = self;
  v94 = [v93 initWithOperator:self withRegistration:&unk_282C1ADF8 withBlock:v338];
  [(PLXPCAgent *)self setCPUViolationsXPCListener:v94];

  v95 = objc_alloc(MEMORY[0x277D3F270]);
  v337[0] = MEMORY[0x277D85DD0];
  v337[1] = 3221225472;
  v337[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2201;
  v337[3] = &unk_27825A1D8;
  v337[4] = self;
  v96 = [v95 initWithOperator:self withRegistration:&unk_282C1AE20 withBlock:v337];
  [(PLXPCAgent *)self setPowerExceptionsDetectionXPCListener:v96];

  v97 = objc_alloc(MEMORY[0x277D3F270]);
  v336[0] = MEMORY[0x277D85DD0];
  v336[1] = 3221225472;
  v336[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2208;
  v336[3] = &unk_27825A1D8;
  v336[4] = self;
  v98 = [v97 initWithOperator:self withRegistration:&unk_282C1AE48 withBlock:v336];
  [(PLXPCAgent *)self setAnimatedStickerCreationListener:v98];

  v99 = objc_alloc(MEMORY[0x277D3F270]);
  v335[0] = MEMORY[0x277D85DD0];
  v335[1] = 3221225472;
  v335[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2213;
  v335[3] = &unk_27825A1D8;
  v335[4] = self;
  v100 = [v99 initWithOperator:self withRegistration:&unk_282C1AE70 withBlock:v335];
  [(PLXPCAgent *)self setStaticStickerCreationListener:v100];

  v101 = objc_alloc(MEMORY[0x277D3F270]);
  v334[0] = MEMORY[0x277D85DD0];
  v334[1] = 3221225472;
  v334[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2221;
  v334[3] = &unk_27825A1D8;
  v334[4] = self;
  v102 = [v101 initWithOperator:self withRegistration:&unk_282C1AE98 withBlock:v334];
  [(PLXPCAgent *)self setMailCategorizationListener:v102];

  v103 = objc_alloc(MEMORY[0x277D3F270]);
  v333[0] = MEMORY[0x277D85DD0];
  v333[1] = 3221225472;
  v333[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2229;
  v333[3] = &unk_27825A1D8;
  v333[4] = self;
  v104 = [v103 initWithOperator:self withRegistration:&unk_282C1AEC0 withBlock:v333];
  [(PLXPCAgent *)self setUserSafetyProcessing:v104];

  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v105 = objc_alloc(MEMORY[0x277D3F270]);
    v332[0] = MEMORY[0x277D85DD0];
    v332[1] = 3221225472;
    v332[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2234;
    v332[3] = &unk_27825A1D8;
    v332[4] = self;
    v106 = [v105 initWithOperator:self withRegistration:&unk_282C1AEE8 withBlock:v332];
    [(PLXPCAgent *)self setCarPlayXPCListener:v106];

    v107 = objc_alloc(MEMORY[0x277D3F270]);
    v331[0] = MEMORY[0x277D85DD0];
    v331[1] = 3221225472;
    v331[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2239;
    v331[3] = &unk_27825A1D8;
    v331[4] = self;
    v108 = [v107 initWithOperator:self withRegistration:&unk_282C1AF10 withBlock:v331];
    [(PLXPCAgent *)self setCarPlayScreensXPCListener:v108];
  }

  v109 = objc_alloc(MEMORY[0x277D3F270]);
  v330[0] = MEMORY[0x277D85DD0];
  v330[1] = 3221225472;
  v330[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2247;
  v330[3] = &unk_27825A1D8;
  v330[4] = self;
  v110 = [v109 initWithOperator:self withRegistration:&unk_282C1AF38 withBlock:v330];
  [(PLXPCAgent *)self setRelevanceContextUpdateXPCListener:v110];

  v111 = objc_alloc(MEMORY[0x277D3F270]);
  v329[0] = MEMORY[0x277D85DD0];
  v329[1] = 3221225472;
  v329[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2257;
  v329[3] = &unk_27825A1D8;
  v329[4] = self;
  v112 = [v111 initWithOperator:self withRegistration:&unk_282C1AF60 withBlock:v329];
  [(PLXPCAgent *)self setMailFetchXPCListener:v112];

  if ([MEMORY[0x277D3F208] isWatch])
  {
    v113 = objc_alloc(MEMORY[0x277D3F270]);
    v328[0] = MEMORY[0x277D85DD0];
    v328[1] = 3221225472;
    v328[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2264;
    v328[3] = &unk_27825A1D8;
    v328[4] = self;
    v114 = [v113 initWithOperator:self withRegistration:&unk_282C1AF88 withBlock:v328];
    [(PLXPCAgent *)self setNanoMailSessionXPCListener:v114];
  }

  v115 = objc_alloc(MEMORY[0x277D3F270]);
  v327[0] = MEMORY[0x277D85DD0];
  v327[1] = 3221225472;
  v327[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2274;
  v327[3] = &unk_27825A1D8;
  v327[4] = self;
  v116 = [v115 initWithOperator:self withRegistration:&unk_282C1AFB0 withBlock:v327];
  [(PLXPCAgent *)self setSafariFetcherXPCListener:v116];

  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v117 = [objc_alloc(MEMORY[0x277D3F270]) initWithOperator:self withRegistration:&unk_282C1AFD8 withBlock:&__block_literal_global_2284];
    [(PLXPCAgent *)self setSafariViewServiceXPCListener:v117];
  }

  v118 = objc_alloc(MEMORY[0x277D3F270]);
  v326[0] = MEMORY[0x277D85DD0];
  v326[1] = 3221225472;
  v326[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2300;
  v326[3] = &unk_27825A1D8;
  v326[4] = self;
  v119 = [v118 initWithOperator:self withRegistration:&unk_282C1B000 withBlock:v326];
  [(PLXPCAgent *)self setAppAccessoriesXPCListener:v119];

  v120 = objc_alloc(MEMORY[0x277D3F270]);
  v325[0] = MEMORY[0x277D85DD0];
  v325[1] = 3221225472;
  v325[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2308;
  v325[3] = &unk_27825A1D8;
  v325[4] = self;
  v121 = [v120 initWithOperator:self withRegistration:&unk_282C1B028 withBlock:v325];
  [(PLXPCAgent *)self setAccessoriesXPCListener:v121];

  v122 = objc_alloc(MEMORY[0x277D3F270]);
  v324[0] = MEMORY[0x277D85DD0];
  v324[1] = 3221225472;
  v324[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2315;
  v324[3] = &unk_27825A1D8;
  v324[4] = self;
  v123 = [v122 initWithOperator:self withRegistration:&unk_282C1B050 withBlock:v324];
  [(PLXPCAgent *)self setSymptomsNetworkAdvisory:v123];

  v124 = objc_alloc(MEMORY[0x277D3F270]);
  v323[0] = MEMORY[0x277D85DD0];
  v323[1] = 3221225472;
  v323[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2325;
  v323[3] = &unk_27825A1D8;
  v323[4] = self;
  v125 = [v124 initWithOperator:self withRegistration:&unk_282C1B078 withBlock:v323];
  [(PLXPCAgent *)self setBackgroundTransfer:v125];

  v126 = objc_alloc(MEMORY[0x277D3F270]);
  v322[0] = MEMORY[0x277D85DD0];
  v322[1] = 3221225472;
  v322[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2333;
  v322[3] = &unk_27825A1D8;
  v322[4] = self;
  v127 = [v126 initWithOperator:self withRegistration:&unk_282C1B0A0 withBlock:v322];
  [(PLXPCAgent *)self setInCallServiceXPCListener:v127];

  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v128 = objc_alloc(MEMORY[0x277D3F270]);
    v321[0] = MEMORY[0x277D85DD0];
    v321[1] = 3221225472;
    v321[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2343;
    v321[3] = &unk_27825A1D8;
    v321[4] = self;
    v129 = [v128 initWithOperator:self withRegistration:&unk_282C1B0C8 withBlock:v321];
    [(PLXPCAgent *)self setWebAppXPCListener:v129];
  }

  v130 = objc_alloc(MEMORY[0x277D3F278]);
  v131 = dispatch_get_global_queue(0, 0);
  v320[0] = MEMORY[0x277D85DD0];
  v320[1] = 3221225472;
  v320[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2352;
  v320[3] = &unk_278259810;
  v320[4] = self;
  v132 = [v130 initWithWorkQueue:v131 withRegistration:&unk_282C1B0F0 withBlock:v320];
  [(PLXPCAgent *)self setEntryRequestResponder:v132];

  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v133 = objc_alloc(MEMORY[0x277D3F270]);
    v319[0] = MEMORY[0x277D85DD0];
    v319[1] = 3221225472;
    v319[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2361;
    v319[3] = &unk_27825A1D8;
    v319[4] = self;
    v134 = [v133 initWithOperator:self withRegistration:&unk_282C1B118 withBlock:v319];
    [(PLXPCAgent *)self setTelNotificationXPCListener:v134];
  }

  v135 = objc_alloc(MEMORY[0x277D3F270]);
  v318[0] = MEMORY[0x277D85DD0];
  v318[1] = 3221225472;
  v318[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2371;
  v318[3] = &unk_27825A1D8;
  v318[4] = self;
  v136 = [v135 initWithOperator:self withRegistration:&unk_282C1B140 withBlock:v318];
  [(PLXPCAgent *)self setSiriFalseAlarm:v136];

  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v137 = objc_alloc(MEMORY[0x277D3F270]);
    v317[0] = MEMORY[0x277D85DD0];
    v317[1] = 3221225472;
    v317[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2379;
    v317[3] = &unk_27825A1D8;
    v317[4] = self;
    v138 = [v137 initWithOperator:self withRegistration:&unk_282C1B168 withBlock:v317];
    [(PLXPCAgent *)self setPeekXPCListener:v138];
  }

  v139 = objc_alloc(MEMORY[0x277D3F270]);
  v316[0] = MEMORY[0x277D85DD0];
  v316[1] = 3221225472;
  v316[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2387;
  v316[3] = &unk_27825A1D8;
  v316[4] = self;
  v140 = [v139 initWithOperator:self withRegistration:&unk_282C1B190 withBlock:v316];
  [(PLXPCAgent *)self setPopXPCListener:v140];

  v141 = objc_alloc(MEMORY[0x277D3F270]);
  v315[0] = MEMORY[0x277D85DD0];
  v315[1] = 3221225472;
  v315[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2397;
  v315[3] = &unk_27825A1D8;
  v315[4] = self;
  v142 = [v141 initWithOperator:self withRegistration:&unk_282C1B1B8 withBlock:v315];
  [(PLXPCAgent *)self setThermalLevelXPCListener:v142];

  v143 = objc_alloc(MEMORY[0x277D3F270]);
  v314[0] = MEMORY[0x277D85DD0];
  v314[1] = 3221225472;
  v314[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2405;
  v314[3] = &unk_27825A1D8;
  v314[4] = self;
  v144 = [v143 initWithOperator:self withRegistration:&unk_282C1B1E0 withBlock:v314];
  [(PLXPCAgent *)self setThermalSensorsXPCListener:v144];

  v145 = objc_alloc(MEMORY[0x277D3F270]);
  v313[0] = MEMORY[0x277D85DD0];
  v313[1] = 3221225472;
  v313[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2413;
  v313[3] = &unk_27825A1D8;
  v313[4] = self;
  v146 = [v145 initWithOperator:self withRegistration:&unk_282C1B208 withBlock:v313];
  [(PLXPCAgent *)self setThermalHiPXPCListener:v146];

  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v147 = objc_alloc(MEMORY[0x277D3F270]);
    v312[0] = MEMORY[0x277D85DD0];
    v312[1] = 3221225472;
    v312[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2423;
    v312[3] = &unk_27825A1D8;
    v312[4] = self;
    v148 = [v147 initWithOperator:self withRegistration:&unk_282C1B230 withBlock:v312];
    [(PLXPCAgent *)self setMobileBackupStatisticsXPCListener:v148];

    v149 = objc_alloc(MEMORY[0x277D3F270]);
    v311[0] = MEMORY[0x277D85DD0];
    v311[1] = 3221225472;
    v311[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2431;
    v311[3] = &unk_27825A1D8;
    v311[4] = self;
    v150 = [v149 initWithOperator:self withRegistration:&unk_282C1B258 withBlock:v311];
    [(PLXPCAgent *)self setMobileBackupEventsXPCListener:v150];
  }

  v151 = objc_alloc(MEMORY[0x277D3F270]);
  v310[0] = MEMORY[0x277D85DD0];
  v310[1] = 3221225472;
  v310[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2441;
  v310[3] = &unk_27825A1D8;
  v310[4] = self;
  v152 = [v151 initWithOperator:self withRegistration:&unk_282C1B280 withBlock:v310];
  [(PLXPCAgent *)self setCloudKitXPCListener:v152];

  v153 = objc_alloc(MEMORY[0x277D3F270]);
  v309[0] = MEMORY[0x277D85DD0];
  v309[1] = 3221225472;
  v309[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2451;
  v309[3] = &unk_27825A1D8;
  v309[4] = self;
  v154 = [v153 initWithOperator:self withRegistration:&unk_282C1B2A8 withBlock:v309];
  [(PLXPCAgent *)self setCacheDeleteXPCListener:v154];

  v155 = objc_alloc(MEMORY[0x277D3F270]);
  v308[0] = MEMORY[0x277D85DD0];
  v308[1] = 3221225472;
  v308[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2461;
  v308[3] = &unk_27825A1D8;
  v308[4] = self;
  v156 = [v155 initWithOperator:self withRegistration:&unk_282C1B2D0 withBlock:v308];
  [(PLXPCAgent *)self setMachineTranslationXPCListener:v156];

  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v157 = objc_alloc(MEMORY[0x277D3F270]);
    v307[0] = MEMORY[0x277D85DD0];
    v307[1] = 3221225472;
    v307[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2471;
    v307[3] = &unk_27825A1D8;
    v307[4] = self;
    v158 = [v157 initWithOperator:self withRegistration:&unk_282C1B2F8 withBlock:v307];
    [(PLXPCAgent *)self setAttentionSamplingXPCListener:v158];

    v159 = objc_alloc(MEMORY[0x277D3F270]);
    v306[0] = MEMORY[0x277D85DD0];
    v306[1] = 3221225472;
    v306[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2479;
    v306[3] = &unk_27825A1D8;
    v306[4] = self;
    v160 = [v159 initWithOperator:self withRegistration:&unk_282C1B320 withBlock:v306];
    [(PLXPCAgent *)self setAttentionPollingXPCListener:v160];

    v161 = objc_alloc(MEMORY[0x277D3F270]);
    v305[0] = MEMORY[0x277D85DD0];
    v305[1] = 3221225472;
    v305[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2487;
    v305[3] = &unk_27825A1D8;
    v305[4] = self;
    v162 = [v161 initWithOperator:self withRegistration:&unk_282C1B348 withBlock:v305];
    [(PLXPCAgent *)self setAttentionServiceXPCListener:v162];

    v163 = objc_alloc(MEMORY[0x277D3F270]);
    v304[0] = MEMORY[0x277D85DD0];
    v304[1] = 3221225472;
    v304[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2492;
    v304[3] = &unk_27825A1D8;
    v304[4] = self;
    v164 = [v163 initWithOperator:self withRegistration:&unk_282C1B370 withBlock:v304];
    [(PLXPCAgent *)self setODOffXPCListener:v164];

    v165 = objc_alloc(MEMORY[0x277D3F270]);
    v303[0] = MEMORY[0x277D85DD0];
    v303[1] = 3221225472;
    v303[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2497;
    v303[3] = &unk_27825A1D8;
    v303[4] = self;
    v166 = [v165 initWithOperator:self withRegistration:&unk_282C1B398 withBlock:v303];
    [(PLXPCAgent *)self setODOnXPCListener:v166];

    v167 = objc_alloc(MEMORY[0x277D3F270]);
    v302[0] = MEMORY[0x277D85DD0];
    v302[1] = 3221225472;
    v302[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2502;
    v302[3] = &unk_27825A1D8;
    v302[4] = self;
    v168 = [v167 initWithOperator:self withRegistration:&unk_282C1B3C0 withBlock:v302];
    [(PLXPCAgent *)self setODHNXPCListener:v168];

    v169 = objc_alloc(MEMORY[0x277D3F270]);
    v301[0] = MEMORY[0x277D85DD0];
    v301[1] = 3221225472;
    v301[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2507;
    v301[3] = &unk_27825A1D8;
    v301[4] = self;
    v170 = [v169 initWithOperator:self withRegistration:&unk_282C1B3E8 withBlock:v301];
    [(PLXPCAgent *)self setFrameCountXPCListener:v170];
  }

  v171 = objc_alloc(MEMORY[0x277D3F270]);
  v300[0] = MEMORY[0x277D85DD0];
  v300[1] = 3221225472;
  v300[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2514;
  v300[3] = &unk_27825A1D8;
  v300[4] = self;
  v172 = [v171 initWithOperator:self withRegistration:&unk_282C1B410 withBlock:v300];
  [(PLXPCAgent *)self setAirDropSessionXPCListener:v172];

  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v173 = objc_alloc(MEMORY[0x277D3F270]);
    v299[0] = MEMORY[0x277D85DD0];
    v299[1] = 3221225472;
    v299[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2519;
    v299[3] = &unk_27825A1D8;
    v299[4] = self;
    v174 = [v173 initWithOperator:self withRegistration:&unk_282C1B438 withBlock:v299];
    [(PLXPCAgent *)self setAirDropXPCListener:v174];

    v175 = [MEMORY[0x277D3F0C0] sharedInstance];
    v176 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v175 createQualificationEventForwardWithQualificationID:4 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:v176];
  }

  v177 = *MEMORY[0x277D3F5D0];
  v178 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SOSKVSRateLimitingEvent"];
  v179 = [(PLOperator *)self storage];
  self->_SOSKVSEntries = [v179 countOfEntriesForKey:v178];

  v180 = objc_alloc(MEMORY[0x277D3F270]);
  v298[0] = MEMORY[0x277D85DD0];
  v298[1] = 3221225472;
  v298[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2524;
  v298[3] = &unk_27825A1D8;
  v298[4] = self;
  v181 = [v180 initWithOperator:self withRegistration:&unk_282C1B460 withBlock:v298];
  [(PLXPCAgent *)self setSOSKVSRateLimitingEventXPCListener:v181];

  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v182 = [MEMORY[0x277D3F0C0] sharedInstance];
    v183 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v182 createDistributionEventForwardWithDistributionID:44 withChildNodeNameToWeight:&unk_282C1B488 withStartDate:v183];
  }

  if (+[PLXPCAgent shouldLogiOSWatchOSOnly])
  {
    v184 = objc_alloc(MEMORY[0x277D3F270]);
    v297[0] = MEMORY[0x277D85DD0];
    v297[1] = 3221225472;
    v297[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2538;
    v297[3] = &unk_27825A1D8;
    v297[4] = self;
    v185 = [v184 initWithOperator:self withRegistration:&unk_282C1B4B0 withBlock:v297];
    [(PLXPCAgent *)self setAirTrafficAssetDownloadXPCListener:v185];

    if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
    {
      v186 = objc_alloc(MEMORY[0x277D3F270]);
      v296[0] = MEMORY[0x277D85DD0];
      v296[1] = 3221225472;
      v296[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2545;
      v296[3] = &unk_27825A1D8;
      v296[4] = self;
      v187 = [v186 initWithOperator:self withRegistration:&unk_282C1B4D8 withBlock:v296];
      [(PLXPCAgent *)self setCoreDuetKnowledgeSyncXPCListener:v187];
    }

    v188 = objc_alloc(MEMORY[0x277D3F270]);
    v295[0] = MEMORY[0x277D85DD0];
    v295[1] = 3221225472;
    v295[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2555;
    v295[3] = &unk_27825A1D8;
    v295[4] = self;
    v189 = [v188 initWithOperator:self withRegistration:&unk_282C1B500 withBlock:v295];
    [(PLXPCAgent *)self setAppActivationPerformanceActivationDataXPCListener:v189];

    v190 = objc_alloc(MEMORY[0x277D3F270]);
    v294[0] = MEMORY[0x277D85DD0];
    v294[1] = 3221225472;
    v294[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2563;
    v294[3] = &unk_27825A1D8;
    v294[4] = self;
    v191 = [v190 initWithOperator:self withRegistration:&unk_282C1B528 withBlock:v294];
    [(PLXPCAgent *)self setAppActivationPerformanceProcessDataXPCListener:v191];

    v192 = objc_alloc(MEMORY[0x277D3F270]);
    v293[0] = MEMORY[0x277D85DD0];
    v293[1] = 3221225472;
    v293[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2571;
    v293[3] = &unk_27825A1D8;
    v293[4] = self;
    v193 = [v192 initWithOperator:self withRegistration:&unk_282C1B550 withBlock:v293];
    [(PLXPCAgent *)self setAppActivationPerformanceCPUStatisticsXPCListener:v193];

    v194 = objc_alloc(MEMORY[0x277D3F270]);
    v292[0] = MEMORY[0x277D85DD0];
    v292[1] = 3221225472;
    v292[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2579;
    v292[3] = &unk_27825A1D8;
    v292[4] = self;
    v195 = [v194 initWithOperator:self withRegistration:&unk_282C1B578 withBlock:v292];
    [(PLXPCAgent *)self setAppActivationPerformanceMemoryStatisticsXPCListener:v195];

    v196 = objc_alloc(MEMORY[0x277D3F270]);
    v291[0] = MEMORY[0x277D85DD0];
    v291[1] = 3221225472;
    v291[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2587;
    v291[3] = &unk_27825A1D8;
    v291[4] = self;
    v197 = [v196 initWithOperator:self withRegistration:&unk_282C1B5A0 withBlock:v291];
    [(PLXPCAgent *)self setAppActivationPerformancePowerStateStatisticsXPCListener:v197];
  }

  if ([MEMORY[0x277D3F208] isiOS])
  {
    v198 = objc_alloc(MEMORY[0x277D3F270]);
    v290[0] = MEMORY[0x277D85DD0];
    v290[1] = 3221225472;
    v290[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2592;
    v290[3] = &unk_27825A1D8;
    v290[4] = self;
    v199 = [v198 initWithOperator:self withRegistration:&unk_282C1B5C8 withBlock:v290];
    [(PLXPCAgent *)self setShortcutsTriggerFiredXPCListener:v199];
  }

  if ([MEMORY[0x277D3F208] isMac])
  {
    v200 = objc_alloc(MEMORY[0x277D3F270]);
    v289[0] = MEMORY[0x277D85DD0];
    v289[1] = 3221225472;
    v289[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2602;
    v289[3] = &unk_27825A1D8;
    v289[4] = self;
    v201 = [v200 initWithOperator:self withRegistration:&unk_282C1B5F0 withBlock:v289];
    [(PLXPCAgent *)self setAppleBacklightBrightnessXPCListener:v201];
  }

  v202 = objc_alloc(MEMORY[0x277D3F270]);
  v288[0] = MEMORY[0x277D85DD0];
  v288[1] = 3221225472;
  v288[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2612;
  v288[3] = &unk_27825A1D8;
  v288[4] = self;
  v203 = [v202 initWithOperator:self withRegistration:&unk_282C1B618 withBlock:v288];
  [(PLXPCAgent *)self setNetworkRelayXPCListener:v203];

  v204 = objc_alloc(MEMORY[0x277D3F270]);
  v287[0] = MEMORY[0x277D85DD0];
  v287[1] = 3221225472;
  v287[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2620;
  v287[3] = &unk_27825A1D8;
  v287[4] = self;
  v205 = [v204 initWithOperator:self withRegistration:&unk_282C1B640 withBlock:v287];
  [(PLXPCAgent *)self setNetworkRelayWiFiAssertionXPCListener:v205];

  v206 = objc_alloc(MEMORY[0x277D3F270]);
  v286[0] = MEMORY[0x277D85DD0];
  v286[1] = 3221225472;
  v286[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2628;
  v286[3] = &unk_27825A1D8;
  v286[4] = self;
  v207 = [v206 initWithOperator:self withRegistration:&unk_282C1B668 withBlock:v286];
  [(PLXPCAgent *)self setNetworkRelayBTLinkAssertionXPCListener:v207];

  v208 = objc_alloc(MEMORY[0x277D3F270]);
  v285[0] = MEMORY[0x277D85DD0];
  v285[1] = 3221225472;
  v285[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2636;
  v285[3] = &unk_27825A1D8;
  v285[4] = self;
  v209 = [v208 initWithOperator:self withRegistration:&unk_282C1B690 withBlock:v285];
  [(PLXPCAgent *)self setNetworkRelayTerminusBTWakeXPCListener:v209];

  v210 = objc_alloc(MEMORY[0x277D3F270]);
  v284[0] = MEMORY[0x277D85DD0];
  v284[1] = 3221225472;
  v284[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2643;
  v284[3] = &unk_27825A1D8;
  v284[4] = self;
  v211 = [v210 initWithOperator:self withRegistration:&unk_282C1B6B8 withBlock:v284];
  [(PLXPCAgent *)self setAccessoryMotionXPCListener:v211];

  v212 = [(PLOperator *)PLXPCAgent entryKeyForType:v177 andName:@"UARPStatus"];
  v213 = [(PLOperator *)self storage];
  -[PLXPCAgent setAccessoryUARPEntryCount:](self, "setAccessoryUARPEntryCount:", [v213 countOfEntriesForKey:v212]);

  v214 = objc_alloc(MEMORY[0x277D3F270]);
  v283[0] = MEMORY[0x277D85DD0];
  v283[1] = 3221225472;
  v283[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2651;
  v283[3] = &unk_27825A1D8;
  v283[4] = self;
  v215 = [v214 initWithOperator:self withRegistration:&unk_282C1B6E0 withBlock:v283];
  [(PLXPCAgent *)self setAccessoryUARPListener:v215];

  if ([MEMORY[0x277D3F208] isWatch])
  {
    v216 = [(PLOperator *)PLXPCAgent entryKeyForType:v177 andName:@"Dosimetry"];
    v217 = [(PLOperator *)self storage];
    v218 = [v217 lastEntryForKey:v216];
    lastDosimetryEntry = self->_lastDosimetryEntry;
    self->_lastDosimetryEntry = v218;

    v220 = PLLogXPC();
    if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
    {
      v262 = self->_lastDosimetryEntry;
      if (v262)
      {
        v263 = [(PLEntry *)v262 objectForKeyedSubscript:@"noiseEnabled"];
      }

      else
      {
        v263 = 0;
      }

      *buf = 138412546;
      v385 = @"noiseEnabled";
      v386 = 2112;
      v387 = v263;
      _os_log_debug_impl(&dword_21A4C6000, v220, OS_LOG_TYPE_DEBUG, "Dosimetry state %@ was %@\n", buf, 0x16u);
      if (v262)
      {
      }
    }

    v221 = objc_alloc(MEMORY[0x277D3F270]);
    v282[0] = MEMORY[0x277D85DD0];
    v282[1] = 3221225472;
    v282[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2661;
    v282[3] = &unk_27825A1D8;
    v282[4] = self;
    v222 = [v221 initWithOperator:self withRegistration:&unk_282C1B708 withBlock:v282];
    [(PLXPCAgent *)self setDosimetryXPCListener:v222];
  }

  v223 = objc_alloc(MEMORY[0x277D3F270]);
  v281[0] = MEMORY[0x277D85DD0];
  v281[1] = 3221225472;
  v281[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2671;
  v281[3] = &unk_27825A1D8;
  v281[4] = self;
  v224 = [v223 initWithOperator:self withRegistration:&unk_282C1B730 withBlock:v281];
  [(PLXPCAgent *)self setAudioRoutingXPCListener:v224];

  v225 = objc_alloc(MEMORY[0x277D3F270]);
  v280[0] = MEMORY[0x277D85DD0];
  v280[1] = 3221225472;
  v280[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2681;
  v280[3] = &unk_27825A1D8;
  v280[4] = self;
  v226 = [v225 initWithOperator:self withRegistration:&unk_282C1B758 withBlock:v280];
  [(PLXPCAgent *)self setRapportReceivedMessageXPCListener:v226];

  v227 = objc_alloc(MEMORY[0x277D3F270]);
  v279[0] = MEMORY[0x277D85DD0];
  v279[1] = 3221225472;
  v279[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2688;
  v279[3] = &unk_27825A1D8;
  v279[4] = self;
  v228 = [v227 initWithOperator:self withRegistration:&unk_282C1B780 withBlock:v279];
  [(PLXPCAgent *)self setEnhancedDiscoveryXPCListener:v228];

  v229 = objc_alloc(MEMORY[0x277D3F270]);
  v278[0] = MEMORY[0x277D85DD0];
  v278[1] = 3221225472;
  v278[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2698;
  v278[3] = &unk_27825A1D8;
  v278[4] = self;
  v230 = [v229 initWithOperator:self withRegistration:&unk_282C1B7A8 withBlock:v278];
  [(PLXPCAgent *)self setWirelessSyncStartEventXPCListener:v230];

  v231 = objc_alloc(MEMORY[0x277D3F270]);
  v277[0] = MEMORY[0x277D85DD0];
  v277[1] = 3221225472;
  v277[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2706;
  v277[3] = &unk_27825A1D8;
  v277[4] = self;
  v232 = [v231 initWithOperator:self withRegistration:&unk_282C1B7D0 withBlock:v277];
  [(PLXPCAgent *)self setWirelessSyncStopEventXPCListener:v232];

  v233 = objc_alloc(MEMORY[0x277D3F270]);
  v276[0] = MEMORY[0x277D85DD0];
  v276[1] = 3221225472;
  v276[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2714;
  v276[3] = &unk_27825A1D8;
  v276[4] = self;
  v234 = [v233 initWithOperator:self withRegistration:&unk_282C1B7F8 withBlock:v276];
  [(PLXPCAgent *)self setSpatialAudioXPCListener:v234];

  v235 = objc_alloc(MEMORY[0x277D3F270]);
  v275[0] = MEMORY[0x277D85DD0];
  v275[1] = 3221225472;
  v275[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2722;
  v275[3] = &unk_27825A1D8;
  v275[4] = self;
  v236 = [v235 initWithOperator:self withRegistration:&unk_282C1B820 withBlock:v275];
  [(PLXPCAgent *)self setAVConferenceXPCListener:v236];

  v237 = objc_alloc(MEMORY[0x277D3F270]);
  v274[0] = MEMORY[0x277D85DD0];
  v274[1] = 3221225472;
  v274[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2729;
  v274[3] = &unk_27825A1D8;
  v274[4] = self;
  v238 = [v237 initWithOperator:self withRegistration:&unk_282C1B848 withBlock:v274];
  [(PLXPCAgent *)self setAvailabilityModesXPCListener:v238];

  v239 = objc_alloc(MEMORY[0x277D3F270]);
  v273[0] = MEMORY[0x277D85DD0];
  v273[1] = 3221225472;
  v273[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2734;
  v273[3] = &unk_27825A1D8;
  v273[4] = self;
  v240 = [v239 initWithOperator:self withRegistration:&unk_282C1B870 withBlock:v273];
  [(PLXPCAgent *)self setFocusFiltersXPCListener:v240];

  v241 = objc_alloc(MEMORY[0x277D3F270]);
  v272[0] = MEMORY[0x277D85DD0];
  v272[1] = 3221225472;
  v272[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2741;
  v272[3] = &unk_27825A1D8;
  v272[4] = self;
  v242 = [v241 initWithOperator:self withRegistration:&unk_282C1B898 withBlock:v272];
  [(PLXPCAgent *)self setPortraitHighlightsResultXPCListener:v242];

  v243 = objc_alloc(MEMORY[0x277D3F270]);
  v271[0] = MEMORY[0x277D85DD0];
  v271[1] = 3221225472;
  v271[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2746;
  v271[3] = &unk_27825A1D8;
  v271[4] = self;
  v244 = [v243 initWithOperator:self withRegistration:&unk_282C1B8C0 withBlock:v271];
  [(PLXPCAgent *)self setSpotlightHighlightsResultXPCListener:v244];

  v245 = objc_alloc(MEMORY[0x277D3F270]);
  v270[0] = MEMORY[0x277D85DD0];
  v270[1] = 3221225472;
  v270[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2754;
  v270[3] = &unk_27825A1D8;
  v270[4] = self;
  v246 = [v245 initWithOperator:self withRegistration:&unk_282C1B8E8 withBlock:v270];
  [(PLXPCAgent *)self setSpotlightIndexesXPCListener:v246];

  v247 = objc_alloc(MEMORY[0x277D3F270]);
  v269[0] = MEMORY[0x277D85DD0];
  v269[1] = 3221225472;
  v269[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2759;
  v269[3] = &unk_27825A1D8;
  v269[4] = self;
  v248 = [v247 initWithOperator:self withRegistration:&unk_282C1B910 withBlock:v269];
  [(PLXPCAgent *)self setSpotlightQueriesXPCListener:v248];

  v249 = objc_alloc(MEMORY[0x277D3F270]);
  v268[0] = MEMORY[0x277D85DD0];
  v268[1] = 3221225472;
  v268[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2766;
  v268[3] = &unk_27825A1D8;
  v268[4] = self;
  v250 = [v249 initWithOperator:self withRegistration:&unk_282C1B938 withBlock:v268];
  [(PLXPCAgent *)self setPasskeyAuthenticationXPCListener:v250];

  v251 = objc_alloc(MEMORY[0x277D3F270]);
  v267[0] = MEMORY[0x277D85DD0];
  v267[1] = 3221225472;
  v267[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2776;
  v267[3] = &unk_27825A1D8;
  v267[4] = self;
  v252 = [v251 initWithOperator:self withRegistration:&unk_282C1B960 withBlock:v267];
  [(PLXPCAgent *)self setADDListener:v252];

  v253 = [objc_alloc(MEMORY[0x277D3F278]) initWithWorkQueue:v131 withRegistration:&unk_282C1B988 withBlock:&__block_literal_global_2786];
  [(PLXPCAgent *)self setTaskModeQueryResponder:v253];

  v254 = objc_alloc(MEMORY[0x277D3F270]);
  v266[0] = MEMORY[0x277D85DD0];
  v266[1] = 3221225472;
  v266[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2796;
  v266[3] = &unk_27825A1D8;
  v266[4] = self;
  v255 = [v254 initWithOperator:self withRegistration:&unk_282C1B9B0 withBlock:v266];
  [(PLXPCAgent *)self setRapidSecurityResponseXPCListener:v255];

  v256 = objc_alloc(MEMORY[0x277D3F160]);
  v265[0] = MEMORY[0x277D85DD0];
  v265[1] = 3221225472;
  v265[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2797;
  v265[3] = &unk_2782597E8;
  v265[4] = self;
  v257 = [v256 initWithOperator:self forNotification:@"com.apple.managedconfiguration.allowhealthdatasubmissionchanged" requireState:0 withBlock:v265];
  ihaToggleListener = self->_ihaToggleListener;
  self->_ihaToggleListener = v257;

  v259 = objc_alloc(MEMORY[0x277D3F270]);
  v264[0] = MEMORY[0x277D85DD0];
  v264[1] = 3221225472;
  v264[2] = __38__PLXPCAgent_initOperatorDependancies__block_invoke_2805;
  v264[3] = &unk_27825A1D8;
  v264[4] = self;
  v260 = [v259 initWithOperator:self withRegistration:&unk_282C1B9D8 withBlock:v264];
  [(PLXPCAgent *)self setStatusKitAgentAggregatedPushesListener:v260];

  v261 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics appleDiffusion payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAppleDiffusion:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics HandwritingInference payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardHandwritingInference:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics Summarization payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSummarization:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1866(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics assetLoad payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAssetLoadGF:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics fileResidentInfo payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logFileResidentInfo:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1882(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics mmExecuteRequest payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardMMExecuteRequest:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics PhotosGenerativeEdit payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logPhotosGenerativeEdit:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics tgiExecuteRequest payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardTGIExecuteRequest:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1906(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics SmartReplySession payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSmartReplySession:v6];
  v8 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "GenerativeFunctionMetrics OptIn State Changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardGMSOptIn];
  v6 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1916(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ANEd model compilation payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"modelCompilation"];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1927(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ANEd model inference payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"modelInference"];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ANEd model load payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"modelLoad"];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1949(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ANEd model unload payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"modelUnload"];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ANEd new instance model load payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"newInstanceModelLoad"];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1971(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ANEd new instance model unload payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointANE:v6 withCategory:@"newInstanceModelUnload"];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Navd GEO Network Activity callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNavdGeoNetworkActivity:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "MXDiscoveryLevel payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardMXDiscoveryLevel:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_1998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Airplay DiscoveryMode payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointAirPlayDiscoveryMode:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2003(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CommuteRefresh Session callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointCommuteRefreshSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "TestMarker callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointTestMarker:v6];
  v8 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEFAULT, "[Energy Telemetry] callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardEnergyTelemetry:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2025(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "UIKit eclipse callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardUIKitEclipse:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2035(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Sleep Mode activity callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSleepMode:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Sleep Lock activity callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointSleepLock:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2047(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Weather Notification State callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointWeatherNotificationState:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2052(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Weather Notification callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointWeatherNotification:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2062(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SecondaryDisplay callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSecondaryDisplay:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "UIKit keyboard callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardUIKitKeyboard:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "UIKit activity callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardUIKitActivity:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2083(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "DASyncStart callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointDASyncStart:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2091(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "LinkAdvisory payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardLinkAdvisory:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2099(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Message TranscriptForeground payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventEventForwardMessageTranscript:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2107(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "RCSSessionManagement payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventEventPointRCSSessionManagement:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2115(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "XPCMetrics::VKDataScanner payload received from %@, %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventIntervalVKDataScanner:v8];
  v10 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2123(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "RenderData::AlbumAnimationDuration payload received from %@, %@", &v11, 0x16u);
  }

  [*(a1 + 32) logAlbumAnimation:v8];
  v10 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2131(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "RenderData::AlbumMotionDownload payload received from %@, %@", &v11, 0x16u);
  }

  [*(a1 + 32) logAlbumMotion:v8];
  v10 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2138(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "CallScreeningDuration payload received from %@, %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventBackwardCallScreeningDuration:v8];
  v10 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2143(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "CallScreeningEnabled payload received from %@, %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventForwardCallScreeningEnabled:v8];
  v10 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2151(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Trackpad logging payload received from %@, %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventBackwardKeyboardTrackpad:v8];
  v10 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2161(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "KeyboardSession callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardKeyboardSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2169(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "RenderPassCount callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardRenderPassCount:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2177(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "LayerCount callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardLayerCount:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2185(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "EDR Requests callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardEDRRequests:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2193(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CPUViolations payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalEndCPUViolations:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2201(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PowerExceptionsDetection payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalPowerExceptionsDetection:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2213(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "StaticStickerCreation callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalStaticStickerCreation:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2221(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "XPCMetrics::MailCategorizationEvent payload received from %@, %@", &v11, 0x16u);
  }

  [*(a1 + 32) logMailCategorization:v8];
  v10 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2229(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "MADIVSProcessing callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalUserSafetyProcessing:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CarPlay payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardCarPlay:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2239(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CarPlayScreens payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardCarPlayScreens:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2247(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "RelevanceContextUpdate payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardRelevanceContextUpdate:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2257(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Mail Framework Fetch AFC callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointMailFetch:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "NanoMailSession callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNanoMailSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Safari Reading list fetcher callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSafariFetcherStatus:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2282(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a5;
  v6 = PLLogXPC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Safari View Service callback: %@", buf, 0xCu);
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
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "App Accessory callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAppAccessory:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Accessory callback: %@", &v17, 0xCu);
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

  v16 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2315(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Network Symptoms callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNetworkSymptomsAdviosry:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2325(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Background transfer callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointBackgroundTransfer:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2333(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "InCallService callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardInCallService:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2343(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "WebApp callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardWebApp:v6];
  v8 = *MEMORY[0x277D85DE8];
}

id __38__PLXPCAgent_initOperatorDependancies__block_invoke_2352(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [*(a1 + 32) entryRequestResponseForPayload:v6];
  v8 = PLLogXPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "EntryRequest callback: payload=%@\nentries=%@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2361(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Location callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventAggregateTelNotification:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2371(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Siri False Alarm callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardSiriFalseAlarm:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2379(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Peek callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardNamePeek:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2387(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Pop callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardNamePop:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2397(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Thermal level callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardThermalLevel:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2405(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Thermal sensors callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardThermalSensors:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2413(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Thermal HiP callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardThermalHiP:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2423(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Mobile Backup callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointMobileBackupStatistics:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2431(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Mobile Backup callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointMobileBackupEvents:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2441(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CloudKit callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointCloudKit:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2451(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CacheDelete callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointCacheDelete:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2461(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Translation callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointMachineTranslation:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2471(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AttentionSampling callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardAttentionSampling:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2479(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AttentionPolling callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardAttentionPolling:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2487(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AttentionService callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardAttentionService:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2492(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "OD Off callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardODOff:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2497(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "OD On callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardODOn:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2502(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "OD HN callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardODHN:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2507(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "FrameCount callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardFrameCount:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AirDropSession callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAirDropSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2519(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AirDrop callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAirDrop:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SOS KVS Rate Limiting Event callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSOSKVSRateLimitingEvent:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AirTraffic callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalAirTrafficAssetDownload:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2545(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CoreDuet KnowledgeSync callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalCoreDuetKnowledgeSync:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2555(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "App Activation Performance callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointAppActivationPerformanceActivationData:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2563(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "App Activation Performance callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointAppActivationPerformanceProcessData:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2571(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "App Activation Performance callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointAppActivationPerformanceCPUStatistics:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2579(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "App Activation Performance callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointAppActivationPerformanceMemoryStatistics:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2587(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "App Activation Performance callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointAppActivationPerformancePowerStateStatistics:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2592(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Shortcuts trigger fired callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointShortcutsTriggerFired:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2602(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AppleBacklight Brightness callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAppleBackklightBrightness:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2612(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "NetworkRelay callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardNetworkRelay:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "NetworkRelay WiFi Assertion callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardNetworkRelayWiFiAssertion:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "NetworkRelay BT Link Assertion callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNetworkRelayBTLinkAssertion:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2636(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "NetworkRelay Terminus BT wake callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNetworkRelayTerminusBTWake:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2643(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AccessoryMotion callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAccessoryMotion:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2651(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "UARP Update callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventFowardUARPStatus:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2661(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Dosimetry callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardDosimetry:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2671(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AudioRouting callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAudioRouting:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2681(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Rapport received message callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalRapportReceivedMessage:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "EnhancedDiscovery callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardEnhancedDiscovery:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "WirelessSyncStart payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardWirelessSync:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2706(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "WirelessSyncStop payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardWirelessSync:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Spatial Audio callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSpatialAudio:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2722(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AVConference callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardAVConference:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2729(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AvailabilityModes payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAvailabilityModes:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "FocusFilters payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointFocusFilters:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2741(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PortraitHighlightsResult payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNamePortraitHighlightsResult:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2746(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SpotlightHighlightsResult payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointNameSpotlightHighlightsResult:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SpotlightIndexes payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalNameSpotlightIndexes:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2759(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SpotlightQueries payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalNameSpotlightQueries:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2766(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Passkey Authentication callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardPasskeyAuthentication:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2776(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ADD callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointADD:v6];
  v8 = *MEMORY[0x277D85DE8];
}

id __38__PLXPCAgent_initOperatorDependancies__block_invoke_2784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a5;
  v6 = PLLogXPC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "TaskModeQuery: payload=%@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F180], "taskMode", @"Task Mode"}];
  v12 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __38__PLXPCAgent_initOperatorDependancies__block_invoke_2796(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Rapid Security Response callback: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardRapidSecurityResponse:v6];
  v8 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEFAULT, "IHA Toggle State Changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardIHA];
  v6 = *MEMORY[0x277D85DE8];
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

      v32 = &unk_282C1BA00;
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
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "requesting %@", buf, 0xCu);
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
            _os_log_error_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_ERROR, "timeout %@: %@", buf, 0x16u);
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

        [v9 setObject:&unk_282C13C08 forKeyedSubscript:@"count"];
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
    v58 = v4;
    v57 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"KeyboardSession"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v57];
    v6 = *MEMORY[0x277D3F5B8];
    v56 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"KeyboardWordsAndCharacters"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v56];
    v55 = [(PLOperator *)PLXPCAgent entryKeyForType:v6 andName:@"KeyboardTime"];
    v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v55];
    v9 = [v58 objectForKey:@"WordsTapped"];

    if (v9)
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = MEMORY[0x277D3F258];
      v12 = [v58 objectForKeyedSubscript:@"WordsTapped"];
      v13 = [v10 numberWithInt:{objc_msgSend(v11, "roundToSigFig:withSigFig:", objc_msgSend(v12, "intValue"), 2)}];
      [v5 setObject:v13 forKeyedSubscript:@"WordsTapped"];

      v14 = MEMORY[0x277CCABB0];
      v15 = [v5 objectForKeyedSubscript:@"WordsTapped"];
      v16 = [v14 numberWithInt:{objc_msgSend(v15, "intValue")}];
      [v7 setObject:v16 forKeyedSubscript:@"WordsTapped"];
    }

    v17 = [v58 objectForKey:@"CharactersTapped"];

    if (v17)
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = MEMORY[0x277D3F258];
      v20 = [v58 objectForKeyedSubscript:@"CharactersTapped"];
      v21 = [v18 numberWithInt:{objc_msgSend(v19, "roundToSigFig:withSigFig:", objc_msgSend(v20, "intValue"), 2)}];
      [v5 setObject:v21 forKeyedSubscript:@"CharactersTapped"];

      v22 = MEMORY[0x277CCABB0];
      v23 = [v5 objectForKeyedSubscript:@"CharactersTapped"];
      v24 = [v22 numberWithInt:{objc_msgSend(v23, "intValue")}];
      [v7 setObject:v24 forKeyedSubscript:@"CharactersTapped"];
    }

    v25 = [v58 objectForKey:@"WordsPathed"];

    if (v25)
    {
      v26 = MEMORY[0x277CCABB0];
      v27 = MEMORY[0x277D3F258];
      v28 = [v58 objectForKeyedSubscript:@"WordsPathed"];
      v29 = [v26 numberWithInt:{objc_msgSend(v27, "roundToSigFig:withSigFig:", objc_msgSend(v28, "intValue"), 2)}];
      [v5 setObject:v29 forKeyedSubscript:@"WordsPathed"];

      v30 = MEMORY[0x277CCABB0];
      v31 = [v5 objectForKeyedSubscript:@"WordsPathed"];
      v32 = [v30 numberWithInt:{objc_msgSend(v31, "intValue")}];
      [v7 setObject:v32 forKeyedSubscript:@"WordsPathed"];
    }

    v33 = [v58 objectForKey:@"CharactersPathed"];

    if (v33)
    {
      v34 = MEMORY[0x277CCABB0];
      v35 = MEMORY[0x277D3F258];
      v36 = [v58 objectForKeyedSubscript:@"CharactersPathed"];
      v37 = [v34 numberWithInt:{objc_msgSend(v35, "roundToSigFig:withSigFig:", objc_msgSend(v36, "intValue"), 2)}];
      [v5 setObject:v37 forKeyedSubscript:@"CharactersPathed"];

      v38 = MEMORY[0x277CCABB0];
      v39 = [v5 objectForKeyedSubscript:@"CharactersPathed"];
      v40 = [v38 numberWithInt:{objc_msgSend(v39, "intValue")}];
      [v7 setObject:v40 forKeyedSubscript:@"CharactersPathed"];
    }

    v41 = [v58 objectForKey:@"TimeSpentTapTyping"];

    if (v41)
    {
      v42 = MEMORY[0x277CCABB0];
      v43 = [v58 objectForKeyedSubscript:@"TimeSpentTapTyping"];
      v44 = [v42 numberWithInteger:{objc_msgSend(v43, "integerValue")}];
      [v5 setObject:v44 forKeyedSubscript:@"TimeSpentTapTyping"];

      v45 = MEMORY[0x277CCABB0];
      v46 = [v5 objectForKeyedSubscript:@"TimeSpentTapTyping"];
      v47 = [v45 numberWithInt:{objc_msgSend(v46, "intValue")}];
      [v8 setObject:v47 forKeyedSubscript:@"TimeSpentTapTyping"];
    }

    v48 = [v58 objectForKey:@"TimeSpentPathTyping"];

    if (v48)
    {
      v49 = MEMORY[0x277CCABB0];
      v50 = [v58 objectForKeyedSubscript:@"TimeSpentPathTyping"];
      v51 = [v49 numberWithInteger:{objc_msgSend(v50, "integerValue")}];
      [v5 setObject:v51 forKeyedSubscript:@"TimeSpentPathTyping"];

      v52 = MEMORY[0x277CCABB0];
      v53 = [v5 objectForKeyedSubscript:@"TimeSpentPathTyping"];
      v54 = [v52 numberWithInt:{objc_msgSend(v53, "intValue")}];
      [v8 setObject:v54 forKeyedSubscript:@"TimeSpentPathTyping"];
    }

    [(PLOperator *)self logEntry:v5];
    if (([MEMORY[0x277D3F180] taskMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
    {
      [(PLOperator *)self logEntry:v7];
      [(PLOperator *)self logEntry:v8];
    }

    v4 = v58;
  }
}

- (void)logEventPointSleepLock:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F258] isHealthDataSubmissionAllowed])
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
      *v10 = 0;
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "SleepLock submission not allowed by IHA", v10, 2u);
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
      *v8 = 0;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Empty payload, returning", v8, 2u);
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
  v20 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"PortraitHighlightsResult"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [v20 objectForKeyedSubscript:@"client"];
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

  v11 = [v20 objectForKeyedSubscript:@"limit"];
  [v5 setObject:v11 forKeyedSubscript:@"limit"];

  v12 = MEMORY[0x277CCABB0];
  v13 = MEMORY[0x277D3F258];
  v14 = [v20 objectForKeyedSubscript:@"portraitResultCount"];
  v15 = [v12 numberWithInt:{objc_msgSend(v13, "roundToSigFig:withSigFig:", objc_msgSend(v14, "intValue"), 2)}];
  [v5 setObject:v15 forKeyedSubscript:@"portraitResultCount"];

  v16 = [v20 objectForKeyedSubscript:@"portraitCacheDate"];
  if (v16)
  {
    v17 = [MEMORY[0x277CBEB68] null];
    v18 = [v16 isEqual:v17];

    if ((v18 & 1) == 0)
    {
      v19 = [v16 convertFromSystemToMonotonic];
      [v5 setObject:v19 forKeyedSubscript:@"portraitCacheDate"];
    }
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointNameSpotlightHighlightsResult:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v16 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SpotlightHighlightsResult"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16 withRawData:v5];
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
  v13 = MEMORY[0x277D3F258];
  v14 = [v6 objectForKeyedSubscript:@"spotlightResultCount"];
  v15 = [v12 numberWithInt:{objc_msgSend(v13, "roundToSigFig:withSigFig:", objc_msgSend(v14, "intValue"), 2)}];
  [v6 setObject:v15 forKeyedSubscript:@"spotlightResultCount"];

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
    v24 = [a3 mutableCopy];
    v4 = [v24 objectForKeyedSubscript:@"errorFailingURL"];
    if (v4)
    {
      v5 = v4;
      v6 = [v24 objectForKeyedSubscript:@"errorFailingURL"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v24 objectForKeyedSubscript:@"errorFailingURL"];
        v9 = [v8 absoluteString];
        [v24 setObject:v9 forKeyedSubscript:@"errorFailingURL"];
      }
    }

    v10 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BackgroundTransfer"];
    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:v24];
    v12 = [v11 objectForKeyedSubscript:@"bytesReceived"];
    v13 = [v12 intValue];

    if (v13 >= 101)
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = MEMORY[0x277D3F258];
      v16 = [v11 objectForKeyedSubscript:@"bytesReceived"];
      v17 = [v14 numberWithInt:{objc_msgSend(v15, "roundToSigFig:withSigFig:", objc_msgSend(v16, "intValue"), 2)}];
      [v11 setObject:v17 forKeyedSubscript:@"bytesReceived"];
    }

    v18 = [v11 objectForKeyedSubscript:@"bytesSent"];
    v19 = [v18 intValue];

    if (v19 >= 101)
    {
      v20 = MEMORY[0x277CCABB0];
      v21 = MEMORY[0x277D3F258];
      v22 = [v11 objectForKeyedSubscript:@"bytesSent"];
      v23 = [v20 numberWithInt:{objc_msgSend(v21, "roundToSigFig:withSigFig:", objc_msgSend(v22, "intValue"), 2)}];
      [v11 setObject:v23 forKeyedSubscript:@"bytesSent"];
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
    v8 = &unk_282C13C20;
  }

  else
  {
    v9 = [v13 objectForKey:@"Event"];
    v10 = [v9 isEqualToString:@"SendingETARequest"];

    if (v10)
    {
      v8 = &unk_282C13C38;
    }

    else
    {
      v11 = [v13 objectForKey:@"Event"];
      v12 = [v11 isEqualToString:@"RequestingDirections"];

      if (!v12)
      {
        goto LABEL_8;
      }

      v8 = &unk_282C13C50;
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
  if ([MEMORY[0x277D3F258] isSafetyDataSubmissionAllowed])
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
      *v8 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Not logging ADD because Improve Safety is not enabled", v8, 2u);
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
  v63 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CloudKit"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v63];
  v6 = [v63 objectForKeyedSubscript:@"CKRequestUUIDs"];
  v7 = [v6 count];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v63 objectForKeyedSubscript:@"CKRequestUUIDs"];
    v10 = [v8 stringWithFormat:@"%@", v9];
    [v5 setObject:v10 forKeyedSubscript:@"CKRequestUUIDs"];
  }

  v11 = [v63 objectForKeyedSubscript:@"MMCSRequestUUIDs"];
  v12 = [v11 count];

  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [v63 objectForKeyedSubscript:@"MMCSRequestUUIDs"];
    v15 = [v13 stringWithFormat:@"%@", v14];
    [v5 setObject:v15 forKeyedSubscript:@"MMCSRequestUUIDs"];
  }

  v16 = [v63 objectForKeyedSubscript:@"CKProtoRequestOperationsByCount"];
  v17 = [v16 count];

  if (v17)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [v63 objectForKeyedSubscript:@"CKProtoRequestOperationsByCount"];
    v20 = [v19 description];
    v21 = [v18 stringWithFormat:@"%@", v20];
    [v5 setObject:v21 forKeyedSubscript:@"CKProtoRequestOperationsByCount"];
  }

  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v22 = [v63 objectForKeyedSubscript:@"operationGroupID"];

    if (v22)
    {
      v23 = [v63 objectForKeyedSubscript:@"operationGroupID"];
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
    [v5 setObject:&stru_282B650A0 forKeyedSubscript:@"operationID"];
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
      v36 = MEMORY[0x277D3F258];
      v37 = [v5 objectForKeyedSubscript:@"CKRecordsUploaded"];
      v38 = [v35 numberWithInt:{objc_msgSend(v36, "roundToSigFig:withSigFig:", objc_msgSend(v37, "intValue"), 3)}];
      [v5 setObject:v38 forKeyedSubscript:@"CKRecordsUploaded"];
    }

    v39 = [v5 objectForKeyedSubscript:@"CKRecordsDownloaded"];
    v40 = [v39 intValue];

    if (v40 >= 1001)
    {
      v41 = MEMORY[0x277CCABB0];
      v42 = MEMORY[0x277D3F258];
      v43 = [v5 objectForKeyedSubscript:@"CKRecordsDownloaded"];
      v44 = [v41 numberWithInt:{objc_msgSend(v42, "roundToSigFig:withSigFig:", objc_msgSend(v43, "intValue"), 3)}];
      [v5 setObject:v44 forKeyedSubscript:@"CKRecordsDownloaded"];
    }

    v45 = [v5 objectForKeyedSubscript:@"CKRecordsDeleted"];
    v46 = [v45 intValue];

    if (v46 >= 1001)
    {
      v47 = MEMORY[0x277CCABB0];
      v48 = MEMORY[0x277D3F258];
      v49 = [v5 objectForKeyedSubscript:@"CKRecordsDeleted"];
      v50 = [v47 numberWithInt:{objc_msgSend(v48, "roundToSigFig:withSigFig:", objc_msgSend(v49, "intValue"), 3)}];
      [v5 setObject:v50 forKeyedSubscript:@"CKRecordsDeleted"];
    }

    v51 = [v5 objectForKeyedSubscript:@"CKAssetsUploaded"];
    v52 = [v51 intValue];

    if (v52 >= 101)
    {
      v53 = MEMORY[0x277CCABB0];
      v54 = MEMORY[0x277D3F258];
      v55 = [v5 objectForKeyedSubscript:@"CKAssetsUploaded"];
      v56 = [v53 numberWithInt:{objc_msgSend(v54, "roundToSigFig:withSigFig:", objc_msgSend(v55, "intValue"), 2)}];
      [v5 setObject:v56 forKeyedSubscript:@"CKAssetsUploaded"];
    }

    v57 = [v5 objectForKeyedSubscript:@"CKAssetsDownloaded"];
    v58 = [v57 intValue];

    if (v58 >= 101)
    {
      v59 = MEMORY[0x277CCABB0];
      v60 = MEMORY[0x277D3F258];
      v61 = [v5 objectForKeyedSubscript:@"CKAssetsDownloaded"];
      v62 = [v59 numberWithInt:{objc_msgSend(v60, "roundToSigFig:withSigFig:", objc_msgSend(v61, "intValue"), 2)}];
      [v5 setObject:v62 forKeyedSubscript:@"CKAssetsDownloaded"];
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
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 objectForKeyedSubscript:@"timestamp"], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_15:
    v11 = PLLogXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "SOSKVSRateLimiting Event Dropped, invalid", buf, 2u);
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
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "SOSKVSRateLimiting Event Dropped, table full", buf, 2u);
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

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "StatusKitAgent AggregatedPushes converting eventName %@ to an enum", &v9, 0xCu);
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
      v9 = 138412290;
      v10 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "StatusKitAgent AggregatedPushes eventName %@ does not fall in any enum", &v9, 0xCu);
    }

    v5 = 10;
  }

  v7 = *MEMORY[0x277D85DE8];
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
              _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "StatusKitAgent AggregatedPushes pushes Dictionary is empty for event: %@", buf, 0xCu);
            }
          }

          v22 = PLLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v30 = v13;
            _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "StatusKitAgent AggregatedPushes entryPayload:%@", buf, 0xCu);
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
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "StatusKitAgent AggregatedPushes payload is empty!", buf, 2u);
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
    v5[3] = &unk_278263150;
    v5[4] = self;
    [MEMORY[0x277CFB450] getGMOptInToggleWithCompletion:v5];
  }

  else
  {
    v3 = PLLogXPC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "Device does not support GenerativeFunctionMetrics OptIn logging", v4, 2u);
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
      *buf = 138412290;
      v14 = v5;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "Error grabbing GenerativeFunctionMetrics OptIn state, logging 0: %@", buf, 0xCu);
    }

    [v6 setObject:&unk_282C13C68 forKeyedSubscript:@"Enabled"];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v14) = a2;
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEFAULT, "GenerativeFunctionMetrics OptIn isEnabled state: %d", buf, 8u);
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
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "GenerativeFunctionMetrics OptIn state being sent to Core Analytics: %@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)logEventForwardAssetLoadGF:(id)a3
{
  v31[2] = *MEMORY[0x277D85DE8];
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

  v11 = MEMORY[0x277D3F258];
  v12 = [v4 objectForKeyedSubscript:@"catalogResourceIdentifier"];
  v13 = [v11 removeFirstPartyBundleIDPrefix:v12];
  [v5 setObject:v13 forKeyedSubscript:@"catalogResourceIdentifier"];

  if (v7 == 1)
  {
    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"assetLoad" data:v5 date:v9];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_282C13C68 withComparisonOperation:6];
    v15 = objc_alloc(MEMORY[0x277D3F260]);
    v16 = [v5 objectForKeyedSubscript:@"catalogResourceIdentifier"];
    v17 = [v15 initWithKey:@"catalogResourceIdentifier" withValue:v16 withComparisonOperation:0];

    v18 = [MEMORY[0x277D3F2A0] sharedCore];
    v19 = [v18 storage];
    v31[0] = v17;
    v31[1] = v14;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v21 = [v19 lastEntryForKey:@"GenerativeFunctionMetrics_assetLoad_1_2" withComparisons:v20 isSingleton:1];

    v22 = PLLogXPC();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
    if (v21)
    {
      if (v23)
      {
        *buf = 138412290;
        v30 = v21;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics assetLoad found openEntry = %@", buf, 0xCu);
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __41__PLXPCAgent_logEventForwardAssetLoadGF___block_invoke;
      v25[3] = &unk_27825D6E8;
      v26 = v21;
      v27 = v9;
      v28 = v4;
      [(PLOperator *)self updateEntry:v26 withBlock:v25];
    }

    else
    {
      if (v23)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics assetLoad did not find openEntry", buf, 2u);
      }

      [v5 setObject:v9 forKeyedSubscript:@"timestampEnd"];
      [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"assetLoad" data:v5 date:v9];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __41__PLXPCAgent_logEventForwardAssetLoadGF___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = [*(a1 + 48) objectForKeyedSubscript:@"result"];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"result"];

  v3 = PLLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics assetLoad updateEntry: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)logFileResidentInfo:(id)a3
{
  v17 = a3;
  v4 = [v17 mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [v17 objectForKeyedSubscript:@"timestampValue"];
  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSince1970:?];

  v8 = [v7 convertFromSystemToMonotonic];

  [v4 removeObjectForKey:@"timestampValue"];
  v9 = [v17 objectForKeyedSubscript:@"fileResidentRatio"];

  if (v9)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [v17 objectForKeyedSubscript:@"fileResidentRatio"];
    [v11 doubleValue];
    v13 = [v10 numberWithInt:(v12 * 100.0)];
    [v4 setObject:v13 forKeyedSubscript:@"fileResidentRatio"];
  }

  v14 = MEMORY[0x277D3F258];
  v15 = [v17 objectForKeyedSubscript:@"catalogResourceIdentifier"];
  v16 = [v14 removeFirstPartyBundleIDPrefix:v15];
  [v4 setObject:v16 forKeyedSubscript:@"catalogResourceIdentifier"];

  [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"fileResidentInfo" data:v4 date:v8];
}

- (void)logEventForwardMMExecuteRequest:(id)a3
{
  v48[2] = *MEMORY[0x277D85DE8];
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
    v11 = MEMORY[0x277D3F258];
    v12 = [v4 objectForKeyedSubscript:@"createdByBundleIdentifier"];
    v13 = [v11 removeFirstPartyBundleIDPrefix:v12];
    [v5 setObject:v13 forKeyedSubscript:@"createdByBundleIdentifier"];

    v14 = MEMORY[0x277D3F258];
    v15 = [v4 objectForKeyedSubscript:@"onBehalfOfBundleIdentifier"];
    v16 = [v14 removeFirstPartyBundleIDPrefix:v15];
    [v5 setObject:v16 forKeyedSubscript:@"onBehalfOfBundleIdentifier"];

    v17 = MEMORY[0x277D3F258];
    v18 = [v4 objectForKeyedSubscript:@"catalogResourceIdentifier"];
    v19 = [v17 removeFirstPartyBundleIDPrefix:v18];
    [v5 setObject:v19 forKeyedSubscript:@"catalogResourceIdentifier"];

    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"mmExecuteRequest" data:v5 date:v9];
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_282C13C68 withComparisonOperation:6];
    v21 = objc_alloc(MEMORY[0x277D3F260]);
    v22 = [v5 objectForKeyedSubscript:@"requestIdentifier"];
    v23 = [v21 initWithKey:@"requestIdentifier" withValue:v22 withComparisonOperation:0];

    v24 = [MEMORY[0x277D3F2A0] sharedCore];
    v25 = [v24 storage];
    v48[0] = v23;
    v48[1] = v20;
    v41 = v20;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    v27 = [v25 lastEntryForKey:@"GenerativeFunctionMetrics_mmExecuteRequest_1_2" withComparisons:v26 isSingleton:1];

    v28 = PLLogXPC();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
    if (v27)
    {
      v40 = v23;
      if (v29)
      {
        *buf = 138412290;
        v47 = v27;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics mmExecuteRequest found openEntry = %@", buf, 0xCu);
      }

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __46__PLXPCAgent_logEventForwardMMExecuteRequest___block_invoke;
      v42[3] = &unk_27825D6E8;
      v30 = v27;
      v43 = v30;
      v31 = v9;
      v44 = v31;
      v45 = v5;
      [(PLOperator *)self updateEntry:v30 withBlock:v42];
      v32 = [v30 objectForKeyedSubscript:@"onBehalfOfBundleIdentifier"];
      v33 = [v30 objectForKeyedSubscript:@"createdByBundleIdentifier"];
      v34 = [v33 isEqualToString:@"assistantd"];

      if (v34)
      {

        v32 = @"assistantd";
      }

      v35 = [v30 entryDate];
      [v35 timeIntervalSince1970];
      v37 = v36;

      [v31 timeIntervalSince1970];
      [(PLXPCAgent *)self setAccountingEntriesFor:self->_inferenceEntries withBundleID:v32 withStartTime:v37 withEndTime:v38];

      v23 = v40;
    }

    else
    {
      if (v29)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics mmExecuteRequest did not find openEntry", buf, 2u);
      }

      [v5 setObject:v9 forKeyedSubscript:@"timestampEnd"];
      [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"mmExecuteRequest" data:v5 date:v9];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __46__PLXPCAgent_logEventForwardMMExecuteRequest___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = [*(a1 + 48) objectForKeyedSubscript:@"error"];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"error"];

  v3 = PLLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics mmExecuteRequest updateEntry: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
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
  v40[2] = *MEMORY[0x277D85DE8];
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
    *buf = 67109120;
    LODWORD(v39) = v11;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics eventType: %d", buf, 8u);
  }

  if (v11 == 1)
  {
    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"tgiExecuteRequest" data:v5 date:v9];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_282C13C68 withComparisonOperation:6];
    v14 = objc_alloc(MEMORY[0x277D3F260]);
    v15 = [v5 objectForKeyedSubscript:@"requestIdentifier"];
    v16 = [v14 initWithKey:@"requestIdentifier" withValue:v15 withComparisonOperation:0];

    v17 = [MEMORY[0x277D3F2A0] sharedCore];
    v18 = [v17 storage];
    v40[0] = v16;
    v40[1] = v13;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v20 = [v18 lastEntryForKey:@"GenerativeFunctionMetrics_tgiExecuteRequest_1_2" withComparisons:v19 isSingleton:1];

    v21 = PLLogXPC();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      if (v22)
      {
        *buf = 138412290;
        v39 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics tgiExecuteRequest found openEntry = %@", buf, 0xCu);
      }

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __47__PLXPCAgent_logEventForwardTGIExecuteRequest___block_invoke;
      v34[3] = &unk_27825D6E8;
      v35 = v20;
      v36 = v9;
      v37 = v4;
      [(PLOperator *)self updateEntry:v35 withBlock:v34];
    }

    else
    {
      if (v22)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics tgiExecuteRequest did not find openEntry", buf, 2u);
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
  v29 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = [*(a1 + 48) objectForKeyedSubscript:@"errorType"];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"errorType"];

  v3 = [*(a1 + 48) objectForKeyedSubscript:@"extendTokenInferenceLatency"];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"extendTokenInferenceLatency"];

  v4 = [*(a1 + 48) objectForKeyedSubscript:@"firstTokenInferenceLatency"];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"firstTokenInferenceLatency"];

  v5 = [*(a1 + 48) objectForKeyedSubscript:@"inputTokensCount"];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"inputTokensCount"];

  v6 = [*(a1 + 48) objectForKeyedSubscript:@"outputTokensCount"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"outputTokensCount"];

  v7 = [*(a1 + 48) objectForKeyedSubscript:@"qos"];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"qos"];

  v8 = [*(a1 + 48) objectForKeyedSubscript:@"sd_draftModelInferenceCallCount"];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"sd_draftModelInferenceCallCount"];

  v9 = [*(a1 + 48) objectForKeyedSubscript:@"sd_targetModelInferenceCallCount"];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"sd_targetModelInferenceCallCount"];

  v10 = [*(a1 + 48) objectForKeyedSubscript:@"sd_draftOutputTokensCount"];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"sd_draftOutputTokensCount"];

  v11 = [*(a1 + 48) objectForKeyedSubscript:@"sd_totalOutputTokensCount"];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"sd_totalOutputTokensCount"];

  v12 = [*(a1 + 48) objectForKeyedSubscript:@"sd_draftModelTotalLatency"];
  [*(a1 + 32) setObject:v12 forKeyedSubscript:@"sd_draftModelTotalLatency"];

  v13 = [*(a1 + 48) objectForKeyedSubscript:@"sd_targetModelTotalLatency"];
  [*(a1 + 32) setObject:v13 forKeyedSubscript:@"sd_targetModelTotalLatency"];

  v14 = [*(a1 + 48) objectForKeyedSubscript:@"sd_draftTokenAcceptanceRate"];

  if (v14)
  {
    v15 = MEMORY[0x277CCABB0];
    v16 = [*(a1 + 48) objectForKeyedSubscript:@"sd_draftTokenAcceptanceRate"];
    [v16 doubleValue];
    v18 = [v15 numberWithInt:(v17 * 100.0)];
    [*(a1 + 32) setObject:v18 forKeyedSubscript:@"sd_draftTokenAcceptanceRate"];
  }

  v19 = [*(a1 + 48) objectForKeyedSubscript:@"sd_speculationSuccessRate"];

  if (v19)
  {
    v20 = MEMORY[0x277CCABB0];
    v21 = [*(a1 + 48) objectForKeyedSubscript:@"sd_speculationSuccessRate"];
    [v21 doubleValue];
    v23 = [v20 numberWithInt:(v22 * 100.0)];
    [*(a1 + 32) setObject:v23 forKeyedSubscript:@"sd_speculationSuccessRate"];
  }

  v24 = PLLogXPC();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 32);
    v27 = 138412290;
    v28 = v26;
    _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics tgiExecuteRequest updateEntry: %@", &v27, 0xCu);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardSmartReplySession:(id)a3
{
  v41[5] = *MEMORY[0x277D85DE8];
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
    *buf = 67109120;
    LODWORD(v40) = v11;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics SmartReplySession %d", buf, 8u);
  }

  if (v11)
  {
    v32 = v9;
    v34 = self;
    v13 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_282C13C68 withComparisonOperation:6];
    v14 = objc_alloc(MEMORY[0x277D3F260]);
    v15 = [v4 objectForKeyedSubscript:@"App"];
    v16 = [v14 initWithKey:@"App" withValue:v15 withComparisonOperation:0];

    v17 = objc_alloc(MEMORY[0x277D3F260]);
    v18 = [v4 objectForKeyedSubscript:@"QueryType"];
    v19 = [v17 initWithKey:@"QueryType" withValue:v18 withComparisonOperation:0];

    v20 = objc_alloc(MEMORY[0x277D3F260]);
    v21 = [v4 objectForKeyedSubscript:@"InputTokenCount"];
    v22 = [v20 initWithKey:@"InputTokenCount" withValue:v21 withComparisonOperation:0];

    v23 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"OutputTokenCount" withValue:&unk_282C13C68 withComparisonOperation:6];
    v24 = [MEMORY[0x277D3F2A0] sharedCore];
    v25 = [v24 storage];
    v33 = v13;
    v41[0] = v13;
    v41[1] = v16;
    v31 = v16;
    v41[2] = v19;
    v41[3] = v22;
    v41[4] = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
    v27 = [v25 lastEntryForKey:@"GenerativeFunctionMetrics_SmartReplySession_1_2" withComparisons:v26 isSingleton:1];

    v28 = PLLogXPC();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
    if (v27)
    {
      v9 = v32;
      if (v29)
      {
        *buf = 138412290;
        v40 = v27;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics SmartReplySession found openEntry = %@", buf, 0xCu);
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __47__PLXPCAgent_logEventForwardSmartReplySession___block_invoke;
      v35[3] = &unk_27825D6E8;
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
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics SmartReplySession did not find openEntry", buf, 2u);
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
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = [*(a1 + 48) objectForKeyedSubscript:@"OutputTokenCount"];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"OutputTokenCount"];

  v3 = [*(a1 + 48) objectForKeyedSubscript:@"EventType"];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"EventType"];

  v4 = PLLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics SmartReplySession updateEntry: %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (int)convertPixelCount:(int)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = PLLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 67109120;
    v9 = a3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics appleDiffusion converting pixelCount %d to a bucket", &v8, 8u);
  }

  if ((a3 - 100000) >= 0x186A1)
  {
    if ((a3 - 200001) >= 0x493E0)
    {
      if ((a3 - 500001) >= 0x927C0)
      {
        if (a3 <= 1100000)
        {
          v6 = PLLogXPC();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v8 = 67109120;
            v9 = a3;
            _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics appleDiffusion pixelCount %d does not fall in any bucket", &v8, 8u);
          }

          result = 5;
        }

        else
        {
          result = 4;
        }
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)logEventForwardAppleDiffusion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
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
      v20 = 138412290;
      v21 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "GenerativeFunctionMetrics appleDiffusion updatedPayload: %@", &v20, 0xCu);
    }

    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"appleDiffusion" data:v5 date:v9];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardHandwritingInference:(id)a3
{
  v33 = a3;
  v4 = [v33 mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [v33 objectForKeyedSubscript:@"startTimestamp"];
  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSinceReferenceDate:?];

  v8 = [v7 convertFromSystemToMonotonic];

  [v4 removeObjectForKey:@"startTimestamp"];
  v9 = MEMORY[0x277CBEAA8];
  v10 = [v33 objectForKeyedSubscript:@"endTimestamp"];
  [v10 doubleValue];
  v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

  v12 = [v11 convertFromSystemToMonotonic];

  [v4 setObject:v12 forKeyedSubscript:@"timestampEnd"];
  v13 = [v33 objectForKeyedSubscript:@"inputStringLength"];

  if (v13)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = MEMORY[0x277D3F258];
    v16 = [v33 objectForKeyedSubscript:@"inputStringLength"];
    v17 = [v14 numberWithInt:{objc_msgSend(v15, "roundToSigFig:withSigFig:", objc_msgSend(v16, "intValue"), 1)}];
    [v4 setObject:v17 forKeyedSubscript:@"inputStringLength"];
  }

  v18 = [v33 objectForKeyedSubscript:@"inputStrokeCount"];

  if (v18)
  {
    v19 = MEMORY[0x277CCABB0];
    v20 = MEMORY[0x277D3F258];
    v21 = [v33 objectForKeyedSubscript:@"inputStrokeCount"];
    v22 = [v19 numberWithInt:{objc_msgSend(v20, "roundToSigFig:withSigFig:", objc_msgSend(v21, "intValue"), 1)}];
    [v4 setObject:v22 forKeyedSubscript:@"inputStrokeCount"];
  }

  v23 = [v33 objectForKeyedSubscript:@"outputStringLength"];

  if (v23)
  {
    v24 = MEMORY[0x277CCABB0];
    v25 = MEMORY[0x277D3F258];
    v26 = [v33 objectForKeyedSubscript:@"outputStringLength"];
    v27 = [v24 numberWithInt:{objc_msgSend(v25, "roundToSigFig:withSigFig:", objc_msgSend(v26, "intValue"), 1)}];
    [v4 setObject:v27 forKeyedSubscript:@"outputStringLength"];
  }

  v28 = [v33 objectForKeyedSubscript:@"outputStrokeCount"];

  if (v28)
  {
    v29 = MEMORY[0x277CCABB0];
    v30 = MEMORY[0x277D3F258];
    v31 = [v33 objectForKeyedSubscript:@"outputStrokeCount"];
    v32 = [v29 numberWithInt:{objc_msgSend(v30, "roundToSigFig:withSigFig:", objc_msgSend(v31, "intValue"), 1)}];
    [v4 setObject:v32 forKeyedSubscript:@"outputStrokeCount"];
  }

  [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"HandwritingInference" data:v4 date:v8];
}

- (void)logEventPointANE:(id)a3 withCategory:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![MEMORY[0x277D3F208] hasANE])
  {
    goto LABEL_22;
  }

  v8 = PLLogXPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412290;
    v20 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "logEventPointANE for category: %@", &v19, 0xCu);
  }

  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v9 = PLLogXPC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "logEventPointANE internal build, payload: %@", &v19, 0xCu);
    }

    [(PLOperator *)self logForSubsystem:@"ANE" category:v7 data:v6];
    goto LABEL_22;
  }

  v10 = [v6 mutableCopy];
  v11 = PLLogXPC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412290;
    v20 = v10;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "logEventPointANE mutablepayload: %@", &v19, 0xCu);
  }

  v12 = [v6 objectForKey:@"privacy_score"];

  if (v12)
  {
    v13 = [v6 objectForKeyedSubscript:@"privacy_score"];
    v14 = [v13 BOOLValue];

    v15 = PLLogXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = 67109120;
      LODWORD(v20) = v14;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "logEventPointANE privacy_score: %d", &v19, 8u);
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
      LOWORD(v19) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "logEventPointANE privacy_score missing", &v19, 2u);
    }
  }

  [v10 setObject:&stru_282B650A0 forKeyedSubscript:@"modelURL"];
LABEL_19:
  v17 = PLLogXPC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412290;
    v20 = v10;
    _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "logEventPointANE updated payload: %@", &v19, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"ANE" category:v7 data:v10];
LABEL_22:

  v18 = *MEMORY[0x277D85DE8];
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
  v20 = *MEMORY[0x277D85DE8];
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
    v18 = 138412290;
    v19 = v9;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Message TranscriptForeground monotonic eventTime: %@", &v18, 0xCu);
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

  v17 = *MEMORY[0x277D85DE8];
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
  v18 = *MEMORY[0x277D85DE8];
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
        v16 = 67109120;
        v17 = (v9 * 100.0);
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "Received linear brightness: %d\n", &v16, 8u);
      }

      if (self->_lastLinearBrightness == v10)
      {
        v12 = PLLogXPC();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v16 = 67109120;
          v17 = (v9 * 100.0);
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Skip same linear brightness logging: %d\n", &v16, 8u);
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

  v15 = *MEMORY[0x277D85DE8];
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
  v10 = *MEMORY[0x277D85DE8];
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
      v8 = 138412290;
      v9 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "AirDropSession Unknown/Other AirDropSession State %@", &v8, 0xCu);
    }

    v4 = 4;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)logEventForwardAirDropSession:(id)a3
{
  v24 = a3;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AirDropSession"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v24 objectForKeyedSubscript:@"Subevent"];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "isEqualToString:", @"Send"}];
  [v5 setObject:v8 forKeyedSubscript:@"Subevent"];

  v9 = [v24 objectForKeyedSubscript:@"State"];
  v10 = [(PLXPCAgent *)self convertAirDropSessionState:v9];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  [v5 setObject:v11 forKeyedSubscript:@"State"];

  v12 = [v24 objectForKeyedSubscript:@"ContentSize"];

  if (v12)
  {
    v13 = [v24 objectForKeyedSubscript:@"ContentSize"];
    [v13 doubleValue];
    v15 = v14;

    LODWORD(v16) = llround(v15 * 0.000000953674316);
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    [v5 setObject:v17 forKeyedSubscript:@"FileSize"];
  }

  v18 = MEMORY[0x277D3F258];
  v19 = MEMORY[0x277CCACA8];
  v20 = [v24 objectForKeyedSubscript:@"TransferID"];
  v21 = [v19 stringWithFormat:@"%@", v20];
  v22 = [v18 hashString:v21];
  [v5 setObject:v22 forKeyedSubscript:@"Identifier"];

  v23 = [v24 objectForKeyedSubscript:@"Interface"];
  [v5 setObject:v23 forKeyedSubscript:@"Interface"];

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
  v21 = *MEMORY[0x277D85DE8];
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
      v19 = 138412290;
      v20 = v10;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "NetworkRelay QuickRelayClients string: %@", &v19, 0xCu);
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
  v18 = *MEMORY[0x277D85DE8];
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
      *v21 = 0;
      _os_log_error_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_ERROR, "Received null payload with SmartRouting event.", v21, 2u);
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
  v11 = *MEMORY[0x277D85DE8];
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
      v9 = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Discarding entry %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardDosimetry:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
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

    if (v8 == v10)
    {
      v14 = 0;
    }

    else
    {
LABEL_4:
      v11 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Dosimetry"];
      v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11 withRawData:v4];
      [(PLOperator *)self logEntry:v12];
      [(PLXPCAgent *)self setLastDosimetryEntry:v12];
      v13 = PLLogXPC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v20 = [(PLEntry *)self->_lastDosimetryEntry objectForKeyedSubscript:@"noiseEnabled"];
        v21 = 138412546;
        v22 = @"noiseEnabled";
        v23 = 2112;
        v24 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "Dosimetry state %@ changed to %@\n", &v21, 0x16u);
      }

      v14 = 1;
    }

    v15 = PLLogXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v4 objectForKeyedSubscript:@"noiseEnabled"];
      v18 = v17;
      v19 = "skipped";
      v21 = 138412802;
      v22 = @"noiseEnabled";
      if (v14)
      {
        v19 = "logged";
      }

      v23 = 2112;
      v24 = v17;
      v25 = 2080;
      v26 = v19;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Dosimetry state %@ = %@ %s\n", &v21, 0x20u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
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
  if ([MEMORY[0x277D3F258] isHealthDataSubmissionAllowed])
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
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "SleepMode submission not allowed by IHA", buf, 2u);
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
  v14 = *MEMORY[0x277D85DE8];
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
    v12 = 138412290;
    v13 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "RelevanceContextUpdate updated payload: %@", &v12, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"Widget" category:@"RelevanceContextUpdate" data:v5 date:v9];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardLinkAdvisory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
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
    v12 = 138412290;
    v13 = v9;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "LinkAdvisory monotonic eventTime: %@", &v12, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"NetworkRelay" category:@"LinkAdvisory" data:v5 date:v9];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardIHA
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F258] isHealthDataSubmissionAllowed];
  v4 = PLLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "IHA Toggle State: %d", v8, 8u);
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
  v36 = *MEMORY[0x277D85DE8];
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
      v19 = [(PLXPCAgent *)self peekpopProcessID];
      v20 = [(PLXPCAgent *)self peekStartTime];
      v30 = 134218242;
      v31 = v19;
      v32 = 2112;
      v33 = v20;
      _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "Process-ID=%ld, Peek start time=%@", &v30, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  v21 = [(PLXPCAgent *)self peekStartTime];

  if (v21)
  {
    v18 = [v4 objectForKeyedSubscript:@"Timestamp"];
    v22 = [(PLXPCAgent *)self peekStartTime];
    [v18 timeIntervalSinceDate:v22];
    v24 = v23;
    [(PLXPCAgent *)self peekDuration];
    [(PLXPCAgent *)self setPeekDuration:v24 + v25];

    v26 = PLLogXPC();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v28 = [(PLXPCAgent *)self peekpopProcessID];
      [(PLXPCAgent *)self peekDuration];
      v30 = 134218498;
      v31 = v28;
      v32 = 2112;
      v33 = v18;
      v34 = 2048;
      v35 = v29;
      _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "Process-ID=%ld, Peek end time=%@, Peek duration=%f", &v30, 0x20u);
    }

    goto LABEL_13;
  }

LABEL_14:

  v27 = *MEMORY[0x277D85DE8];
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
      v13[3] = &unk_278260E30;
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
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 mutableCopy];
  v6 = MEMORY[0x277CCABB0];
  v7 = MEMORY[0x277D3F258];
  v8 = [v3 objectForKeyedSubscript:@"headroom"];
  [v8 doubleValue];
  [v7 roundToSigFigDouble:4 withSigFig:?];
  v9 = [v6 numberWithDouble:?];
  [v5 setObject:v9 forKeyedSubscript:@"headroom"];

  v10 = MEMORY[0x277CCABB0];
  v11 = MEMORY[0x277D3F258];
  v12 = [v3 objectForKeyedSubscript:@"max_desired_headroom"];
  [v12 doubleValue];
  [v11 roundToSigFigDouble:4 withSigFig:?];
  v13 = [v10 numberWithDouble:?];
  [v5 setObject:v13 forKeyedSubscript:@"max_desired_headroom"];

  v14 = PLLogXPC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "logging EDR Requests payload %@", &v16, 0xCu);
  }

  [*(a1 + 32) logForSubsystem:@"RenderData" category:@"EDRRequests" data:v5];
  objc_autoreleasePoolPop(v4);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardFrameCount:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"data"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"FrameCount"];
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [v5 objectForKeyedSubscript:@"data"];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __41__PLXPCAgent_logEventBackwardFrameCount___block_invoke;
    v17 = &unk_278263178;
    v10 = v7;
    v18 = v10;
    v11 = v8;
    v19 = v11;
    [v9 enumerateObjectsUsingBlock:&v14];

    if ([v11 count])
    {
      v21 = v10;
      v22[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      [(PLOperator *)self logEntries:v12 withGroupID:v10];
    }
  }

  else
  {
    v10 = PLLogXPC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Error, FrameCount is invalid", buf, 2u);
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
  v21 = *MEMORY[0x277D85DE8];
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
    v19 = 138412290;
    v20 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "RenderPassCount updated payload: %@", &v19, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"RenderData" category:@"RenderPassCount" data:v5];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardLayerCount:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
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
    v19 = 138412290;
    v20 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "layerCount updated payload: %@", &v19, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"RenderData" category:@"LayerCount" data:v5];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardEnergyTelemetry:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    log = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"EnergyTelemetry"];
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
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "[Energy Telemetry] Date key not found in payload", buf, 2u);
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
        _os_log_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEFAULT, "[Energy Telemetry] receivedTime = %@, endTime = %@, delayInMinutes = %f", buf, 0x20u);
      }

      AnalyticsSendEventLazy();
      v49 = log;
      v50 = v47;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      [(PLOperator *)v46 logEntries:v43 withGroupID:log];

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

      v27 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:log withRawData:v26];
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
        _os_log_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEFAULT, "[Energy Telemetry] sample %d entryDate = %@", buf, 0x12u);
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
      _os_log_error_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_ERROR, "[Energy Telemetry] Invalid sample %@ at index %d", buf, 0x12u);
    }

    goto LABEL_17;
  }

  log = PLLogXPC();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_21A4C6000, log, OS_LOG_TYPE_ERROR, "[Energy Telemetry] Empty payload", buf, 2u);
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
  v23 = [MEMORY[0x277D3F258] deviceBootTime];
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
  v19 = *MEMORY[0x277D85DE8];
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
    v17 = 138412290;
    v18 = v9;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "RCSSessionManagement monotonic eventTime: %@", &v17, 0xCu);
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
        LOWORD(v17) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Logging SIPRegisterKeepAlive to RAPID", &v17, 2u);
      }

      [(PLOperator *)self logForSubsystem:@"Message" category:@"SIPRegisterKeepAlive" data:v5 date:v9];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
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
            v25 = &unk_282C13C68;
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
            v28 = &unk_282C13C68;
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
            v31 = &unk_282C13C68;
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
            v34 = &unk_282C13C68;
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
            v37 = &unk_282C13C68;
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
            v40 = &unk_282C13C68;
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
            v43 = &unk_282C13C68;
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
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
  {
    v5 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoreDuet_KnowledgeSync"];
    if (!v5)
    {
LABEL_15:

      goto LABEL_16;
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
LABEL_14:

        goto LABEL_15;
      }

      [v6 timeIntervalSince1970];
      v12 = v11;
      [v7 timeIntervalSince1970];
      if (v13 >= v12)
      {
        v19 = v13;
        v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:round(v12)];

        v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:round(v19)];

        v22 = objc_alloc(MEMORY[0x277D3F190]);
        v23 = [v20 convertFromSystemToMonotonic];
        v24 = [v22 initWithEntryKey:v5 withDate:v23];

        v25 = [v21 convertFromSystemToMonotonic];
        [v24 setObject:v25 forKeyedSubscript:@"timestampEnd"];

        [v24 setObject:v8 forKeyedSubscript:@"isEmpty"];
        [(PLOperator *)self logEntry:v24];

        v7 = v21;
        v6 = v20;
        goto LABEL_14;
      }

      v14 = PLLogXPC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        v15 = "Dropping CoreDuet KnowledgeSync event; End timestamp must be after start timestamp";
        v16 = v14;
        v17 = 2;
LABEL_19:
        _os_log_error_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_ERROR, v15, &v26, v17);
      }
    }

    else
    {
      v14 = PLLogXPC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v26 = 138412290;
        v27 = v4;
        v15 = "Dropping CoreDuet KnowledgeSync event; missing required key in payload: %@";
        v16 = v14;
        v17 = 12;
        goto LABEL_19;
      }
    }

    goto LABEL_14;
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
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
  v24 = *MEMORY[0x277D85DE8];
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
        v22 = 138412290;
        v23 = v4;
        _os_log_error_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_ERROR, "Dropping Rapport received message event; missing required key in payload: %@", &v22, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
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
  v24 = &unk_2782631A0;
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
    v9[3] = &unk_27825CDE8;
    v10 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    [*(a1 + 64) addObject:v8];
  }
}

void __51__PLXPCAgent_logEventIntervalNameSpotlightIndexes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "roundToSigFig:withSigFig:", objc_msgSend(a3, "intValue"), 2)}];
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

  v10 = PLLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "SpotlightIndexes unknown key found: %@", &v11, 0xCu);
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
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
  v24 = &unk_2782631A0;
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
    v9[3] = &unk_2782631C8;
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
  v7[3] = &unk_27825CDE8;
  v8 = *(a1 + 32);
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

void __51__PLXPCAgent_logEventIntervalNameSpotlightQueries___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "roundToSigFig:withSigFig:", objc_msgSend(a3, "intValue"), 2)}];
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

  v10 = PLLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "SpotlightIndexes unknown key found: %@", &v11, 0xCu);
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
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
  v18 = *MEMORY[0x277D85DE8];
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
    v16 = 138412290;
    v17 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "CPUViolations updated payload: %@", &v16, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"CPUViolations" data:v5 date:v13];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalPowerExceptionsDetection:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
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
    v16 = 138412290;
    v17 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "PowerExceptionsDetection updated payload: %@", &v16, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"PowerExceptionsDetection" data:v5 date:0];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalVKDataScanner:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
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
    v16 = 138412290;
    v17 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "XPCMetrics::VKDataScanner updated payload: %@", &v16, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"VKDataScanner" data:v5 date:v9];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)logAlbumAnimation:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
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
    v14 = 138412290;
    v15 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "RenderData::AlbumAnimationDuration updated payload: %@", &v14, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"RenderData" category:@"AlbumAnimationDuration" data:v5];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)logAlbumMotion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"AlbumMotionDownload"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"AlbumMotionDownload"];
    [v7 doubleValue];
    v9 = v8;

    [MEMORY[0x277D3F258] roundToSigFigDouble:2 withSigFig:v9];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v5 setValue:v10 forKey:@"AlbumMotionDownload"];
  }

  v11 = PLLogXPC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "RenderData::AlbumMotionDownload updated payload: %@", &v13, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"RenderData" category:@"AlbumMotionDownload" data:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)logMailCategorization:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"count"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"count"];
    v8 = [v7 intValue];

    if (v8 > 10)
    {
      v9 = [MEMORY[0x277D3F258] roundToSigFig:v8 withSigFig:1];
      v10 = [MEMORY[0x277CCABB0] numberWithInt:v9];
      [v5 setValue:v10 forKey:@"count"];
    }

    else
    {
      [v5 setObject:&unk_282C13C80 forKeyedSubscript:@"count"];
    }
  }

  v11 = PLLogXPC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "XPCMetrics::MailCategorizationEvent updated payload: %@", &v13, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"MailCategorizationEvent" data:v5];
  v12 = *MEMORY[0x277D85DE8];
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
      v14[0] = &unk_282C1CE48;
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
          v23[0] = &unk_282C1CE48;
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
          v7 = &unk_282C1BA28;
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
      v24[0] = &unk_282C1CE48;
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
      [v9 createDistributionEventForwardWithDistributionID:44 withChildNodeNameToWeight:&unk_282C1BA50 withStartDate:v10];
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
    return dword_21AA22390[a3 + 2];
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

@end
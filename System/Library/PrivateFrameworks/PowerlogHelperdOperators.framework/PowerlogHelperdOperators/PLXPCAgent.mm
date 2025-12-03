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
- (id)entryRequestResponseForPayload:(id)payload;
- (int)convertPPSSKALogEventName:(id)name;
- (int)convertPixelCount:(int)count;
- (int)mapAvailabilityModeSemanticType:(int64_t)type;
- (int64_t)eventNameStringToEnum:(id)enum;
- (int64_t)mapPixelsToBucket:(unint64_t)bucket;
- (int64_t)modeTypeStringToEnum:(id)enum;
- (unint64_t)convertAirDropSessionState:(id)state;
- (void)createAccessoryAccountingEventWithName:(id)name isStartEvent:(BOOL)event;
- (void)createAirDropAccountingEvent:(id)event;
- (void)createInCallServiceAccountingEvent:(id)event;
- (void)handleSBCNotificationWithUserInfo:(id)info;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)log;
- (void)logAlbumAnimation:(id)animation;
- (void)logAlbumMotion:(id)motion;
- (void)logEventAggregateTelNotification:(id)notification;
- (void)logEventBackwardAVConference:(id)conference;
- (void)logEventBackwardActiveStylus:(id)stylus;
- (void)logEventBackwardAttentionPolling:(id)polling;
- (void)logEventBackwardAttentionSampling:(id)sampling;
- (void)logEventBackwardAttentionService:(id)service;
- (void)logEventBackwardCallScreeningDuration:(id)duration;
- (void)logEventBackwardDRMaxRate:(id)rate;
- (void)logEventBackwardEnergyTelemetry:(id)telemetry;
- (void)logEventBackwardFrameCount:(id)count;
- (void)logEventBackwardKeyboardSession:(id)session;
- (void)logEventBackwardKeyboardTrackpad:(id)trackpad;
- (void)logEventBackwardLayerCount:(id)count;
- (void)logEventBackwardNamePeek:(id)peek;
- (void)logEventBackwardNamePop:(id)pop;
- (void)logEventBackwardNameSpotlightQos:(id)qos;
- (void)logEventBackwardODHN:(id)n;
- (void)logEventBackwardODOff:(id)off;
- (void)logEventBackwardODOn:(id)on;
- (void)logEventBackwardPassiveStylus:(id)stylus;
- (void)logEventBackwardRenderPassCount:(id)count;
- (void)logEventBackwardSiriFalseAlarm:(id)alarm;
- (void)logEventEventForwardMessageTranscript:(id)transcript;
- (void)logEventEventPointRCSSessionManagement:(id)management;
- (void)logEventForwardAccessory:(id)accessory;
- (void)logEventForwardAccessoryMotion:(id)motion;
- (void)logEventForwardAirDrop:(id)drop;
- (void)logEventForwardAirDropSession:(id)session;
- (void)logEventForwardAppAccessory:(id)accessory;
- (void)logEventForwardAppleBackklightBrightness:(id)brightness;
- (void)logEventForwardAppleDiffusion:(id)diffusion;
- (void)logEventForwardAssetLoadGF:(id)f;
- (void)logEventForwardAudioRouting:(id)routing;
- (void)logEventForwardAvailabilityModes:(id)modes;
- (void)logEventForwardCallScreeningEnabled:(id)enabled;
- (void)logEventForwardCarPlay:(id)play;
- (void)logEventForwardCarPlayScreens:(id)screens;
- (void)logEventForwardDosimetry:(id)dosimetry;
- (void)logEventForwardEDRRequests:(id)requests;
- (void)logEventForwardEnhancedDiscovery:(id)discovery;
- (void)logEventForwardGMSOptIn;
- (void)logEventForwardHandwritingInference:(id)inference;
- (void)logEventForwardIHA;
- (void)logEventForwardInCallService:(id)service;
- (void)logEventForwardLinkAdvisory:(id)advisory;
- (void)logEventForwardMMExecuteRequest:(id)request;
- (void)logEventForwardMXDiscoveryLevel:(id)level;
- (void)logEventForwardNetworkRelay:(id)relay;
- (void)logEventForwardNetworkRelayWiFiAssertion:(id)assertion;
- (void)logEventForwardPasskeyAuthentication:(id)authentication;
- (void)logEventForwardRapidSecurityResponse:(id)response;
- (void)logEventForwardRelevanceContextUpdate:(id)update;
- (void)logEventForwardSOSKVSRateLimitingEvent:(id)event;
- (void)logEventForwardSafariFetcherStatus:(id)status;
- (void)logEventForwardSecondaryDisplay:(id)display;
- (void)logEventForwardSiri:(id)siri;
- (void)logEventForwardSleepMode:(id)mode;
- (void)logEventForwardSmartReplySession:(id)session;
- (void)logEventForwardSpatialAudio:(id)audio;
- (void)logEventForwardSummarization:(id)summarization;
- (void)logEventForwardTGIExecuteRequest:(id)request;
- (void)logEventForwardThermalHiP:(id)p;
- (void)logEventForwardThermalLevel:(id)level;
- (void)logEventForwardThermalSensors:(id)sensors;
- (void)logEventForwardUIKitActivity:(id)activity;
- (void)logEventForwardUIKitAlert:(id)alert;
- (void)logEventForwardUIKitEclipse:(id)eclipse;
- (void)logEventForwardUIKitKeyboard:(id)keyboard;
- (void)logEventForwardWatchPresence:(id)presence;
- (void)logEventForwardWebApp:(id)app;
- (void)logEventForwardWirelessSync:(id)sync;
- (void)logEventFowardUARPStatus:(id)status;
- (void)logEventIntervalAirTrafficAssetDownload:(id)download;
- (void)logEventIntervalAnimatedStickerCreation:(id)creation;
- (void)logEventIntervalCoreDuetKnowledgeSync:(id)sync;
- (void)logEventIntervalEndCPUViolations:(id)violations;
- (void)logEventIntervalNameSpotlightIndexes:(id)indexes;
- (void)logEventIntervalNameSpotlightQueries:(id)queries;
- (void)logEventIntervalPowerExceptionsDetection:(id)detection;
- (void)logEventIntervalRapportReceivedMessage:(id)message;
- (void)logEventIntervalStaticStickerCreation:(id)creation;
- (void)logEventIntervalUserSafetyProcessing:(id)processing;
- (void)logEventIntervalVKDataScanner:(id)scanner;
- (void)logEventPointADD:(id)d;
- (void)logEventPointANE:(id)e withCategory:(id)category;
- (void)logEventPointAirPlayDiscoveryMode:(id)mode;
- (void)logEventPointAppActivationPerformanceActivationData:(id)data;
- (void)logEventPointAppActivationPerformanceCPUStatistics:(id)statistics;
- (void)logEventPointAppActivationPerformanceMemoryStatistics:(id)statistics;
- (void)logEventPointAppActivationPerformancePowerStateStatistics:(id)statistics;
- (void)logEventPointAppActivationPerformanceProcessData:(id)data;
- (void)logEventPointBackgroundTransfer:(id)transfer;
- (void)logEventPointCacheDelete:(id)delete;
- (void)logEventPointCloudKit:(id)kit;
- (void)logEventPointCommuteRefreshSession:(id)session;
- (void)logEventPointDACalendarItemsDownloaded:(id)downloaded;
- (void)logEventPointDACalendarItemsUploaded:(id)uploaded;
- (void)logEventPointDASyncStart:(id)start;
- (void)logEventPointFocusFilters:(id)filters;
- (void)logEventPointJetsam:(unint64_t)jetsam;
- (void)logEventPointLocationVehicularDetectionSession:(id)session;
- (void)logEventPointMachineTranslation:(id)translation;
- (void)logEventPointMailFetch:(id)fetch;
- (void)logEventPointMobileBackupEvents:(id)events;
- (void)logEventPointMobileBackupStatistics:(id)statistics;
- (void)logEventPointMotionWakeReasonSession:(id)session;
- (void)logEventPointNamePortraitHighlightsResult:(id)result;
- (void)logEventPointNameSpotlightHighlightsResult:(id)result;
- (void)logEventPointNameSpotlightWatchdogFired:(id)fired;
- (void)logEventPointNanoMailSession:(id)session;
- (void)logEventPointNavd:(id)navd;
- (void)logEventPointNavdGeoNetworkActivity:(id)activity;
- (void)logEventPointNavdMapsNavigationStateEvent:(id)event;
- (void)logEventPointNavdMapsWidgetSession:(id)session;
- (void)logEventPointNetworkRelayBTLinkAssertion:(id)assertion;
- (void)logEventPointNetworkRelayTerminusBTWake:(id)wake;
- (void)logEventPointNetworkSymptomsAdviosry:(id)adviosry;
- (void)logEventPointSecItemSession:(id)session;
- (void)logEventPointShortcutsTriggerFired:(id)fired;
- (void)logEventPointSiriActivation:(id)activation;
- (void)logEventPointSleepLock:(id)lock;
- (void)logEventPointTestMarker:(id)marker;
- (void)logEventPointWeatherNotification:(id)notification;
- (void)logEventPointWeatherNotificationState:(id)state;
- (void)logFileResidentInfo:(id)info;
- (void)logMailCategorization:(id)categorization;
- (void)logNetworkActivity:(id)activity withEntryKey:(id)key;
- (void)logPhotosGenerativeEdit:(id)edit;
- (void)logStatusKitAgentAggregatePushes:(id)pushes;
- (void)setAccountingEntriesFor:(id)for withBundleID:(id)d withStartTime:(double)time withEndTime:(double)endTime;
@end

@implementation PLXPCAgent

+ (void)load
{
  v2.receiver = self;
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
  entryEventPointDefinitionTestMarkers = [self entryEventPointDefinitionTestMarkers];
  v48[0] = entryEventPointDefinitionTestMarkers;
  v47[1] = @"DASyncStart";
  entryEventPointDefinitionDASyncStart = [self entryEventPointDefinitionDASyncStart];
  v48[1] = entryEventPointDefinitionDASyncStart;
  v47[2] = @"MailFetch";
  entryEventPointDefinitionMailFetch = [self entryEventPointDefinitionMailFetch];
  v48[2] = entryEventPointDefinitionMailFetch;
  v47[3] = @"NanoMailSession";
  entryEventPointDefinitionNanoMailSession = [self entryEventPointDefinitionNanoMailSession];
  v48[3] = entryEventPointDefinitionNanoMailSession;
  v47[4] = @"Jetsam";
  entryEventPointDefinitionJetsam = [self entryEventPointDefinitionJetsam];
  v48[4] = entryEventPointDefinitionJetsam;
  v47[5] = @"Symptoms-NetworkAdvisory";
  entryEventPointDefinitionsSymptomsNetworkAdvisory = [self entryEventPointDefinitionsSymptomsNetworkAdvisory];
  v48[5] = entryEventPointDefinitionsSymptomsNetworkAdvisory;
  v47[6] = @"BackgroundTransfer";
  entryEventPointDefinitionsBackgroundTransfer = [self entryEventPointDefinitionsBackgroundTransfer];
  v48[6] = entryEventPointDefinitionsBackgroundTransfer;
  v47[7] = @"MobileBackupStatistics";
  entryEventPointDefinitionMobileBackupStatistics = [self entryEventPointDefinitionMobileBackupStatistics];
  v48[7] = entryEventPointDefinitionMobileBackupStatistics;
  v47[8] = @"MobileBackupEvents";
  entryEventPointDefinitionMobileBackupEvents = [self entryEventPointDefinitionMobileBackupEvents];
  v48[8] = entryEventPointDefinitionMobileBackupEvents;
  v47[9] = @"CloudKit";
  entryEventPointDefinitionCloudKit = [self entryEventPointDefinitionCloudKit];
  v48[9] = entryEventPointDefinitionCloudKit;
  v47[10] = @"NetworkEnergyModel";
  entryEventPointDefinitionNetworkEnergyModel = [self entryEventPointDefinitionNetworkEnergyModel];
  v48[10] = entryEventPointDefinitionNetworkEnergyModel;
  v47[11] = @"CacheDelete";
  entryEventPointDefinitionCacheDelete = [self entryEventPointDefinitionCacheDelete];
  v48[11] = entryEventPointDefinitionCacheDelete;
  v47[12] = @"MachineTranslation";
  entryEventPointDefinitionMachineTranslation = [self entryEventPointDefinitionMachineTranslation];
  v48[12] = entryEventPointDefinitionMachineTranslation;
  v47[13] = @"AppActivationPerformanceActivationData";
  entryEventPointDefinitionAppActivationPerformanceActivationData = [self entryEventPointDefinitionAppActivationPerformanceActivationData];
  v48[13] = entryEventPointDefinitionAppActivationPerformanceActivationData;
  v47[14] = @"AppActivationPerformanceProcessData";
  entryEventPointDefinitionAppActivationPerformanceProcessData = [self entryEventPointDefinitionAppActivationPerformanceProcessData];
  v48[14] = entryEventPointDefinitionAppActivationPerformanceProcessData;
  v47[15] = @"AppActivationPerformanceCPUStatistics";
  entryEventPointDefinitionAppActivationPerformanceCPUStatistics = [self entryEventPointDefinitionAppActivationPerformanceCPUStatistics];
  v48[15] = entryEventPointDefinitionAppActivationPerformanceCPUStatistics;
  v47[16] = @"AppActivationPerformanceMemoryStatistics";
  entryEventPointDefinitionAppActivationPerformanceMemoryStatistics = [self entryEventPointDefinitionAppActivationPerformanceMemoryStatistics];
  v48[16] = entryEventPointDefinitionAppActivationPerformanceMemoryStatistics;
  v47[17] = @"AppActivationPerformancePowerStateStatistics";
  entryEventPointDefinitionAppActivationPerformancePowerStateStatistics = [self entryEventPointDefinitionAppActivationPerformancePowerStateStatistics];
  v48[17] = entryEventPointDefinitionAppActivationPerformancePowerStateStatistics;
  v47[18] = @"ShortcutsTriggerFired";
  entryEventPointDefinitionShortcutsTriggerFired = [self entryEventPointDefinitionShortcutsTriggerFired];
  v48[18] = entryEventPointDefinitionShortcutsTriggerFired;
  v47[19] = @"NetworkRelayBTLinkAssertion";
  entryEventPointDefinitionNetworkRelayBTLinkAssertion = [self entryEventPointDefinitionNetworkRelayBTLinkAssertion];
  v48[19] = entryEventPointDefinitionNetworkRelayBTLinkAssertion;
  v47[20] = @"SleepLock";
  entryEventPointDefinitionSleepLock = [self entryEventPointDefinitionSleepLock];
  v48[20] = entryEventPointDefinitionSleepLock;
  v47[21] = @"WeatherNotificationState";
  entryEventPointDefinitionWeatherNotificationState = [self entryEventPointDefinitionWeatherNotificationState];
  v48[21] = entryEventPointDefinitionWeatherNotificationState;
  v47[22] = @"WeatherNotification";
  entryEventPointDefinitionWeatherNotification = [self entryEventPointDefinitionWeatherNotification];
  v48[22] = entryEventPointDefinitionWeatherNotification;
  v47[23] = @"TerminusBTWake";
  entryEventPointDefinitionTerminusBTWake = [self entryEventPointDefinitionTerminusBTWake];
  v48[23] = entryEventPointDefinitionTerminusBTWake;
  v47[24] = @"PortraitHighlightsResult";
  entryEventPointDefinitioPortraitHighlightsResult = [self entryEventPointDefinitioPortraitHighlightsResult];
  v48[24] = entryEventPointDefinitioPortraitHighlightsResult;
  v47[25] = @"SpotlightHighlightsResult";
  entryEventPointDefinitionSpotlightHighlightsResult = [self entryEventPointDefinitionSpotlightHighlightsResult];
  v48[25] = entryEventPointDefinitionSpotlightHighlightsResult;
  v47[26] = @"FocusFilters";
  entryEventPointDefinitionFocusFilters = [self entryEventPointDefinitionFocusFilters];
  v48[26] = entryEventPointDefinitionFocusFilters;
  v47[27] = @"DACalendarItemsDownloaded";
  entryEventPointDefinitionDACalendarItemsDownloaded = [self entryEventPointDefinitionDACalendarItemsDownloaded];
  v48[27] = entryEventPointDefinitionDACalendarItemsDownloaded;
  v47[28] = @"DACalendarItemsUploaded";
  entryEventPointDefinitionDACalendarItemsUploaded = [self entryEventPointDefinitionDACalendarItemsUploaded];
  v48[28] = entryEventPointDefinitionDACalendarItemsUploaded;
  v47[29] = @"navd";
  entryEventPointDefinitionNavd = [self entryEventPointDefinitionNavd];
  v48[29] = entryEventPointDefinitionNavd;
  v47[30] = @"MapsWidgetSession";
  entryEventPointDefinitionNavdMapsWidgetSession = [self entryEventPointDefinitionNavdMapsWidgetSession];
  v48[30] = entryEventPointDefinitionNavdMapsWidgetSession;
  v47[31] = @"GEONetworkActivity";
  entryEventPointDefinitionNavdGeoNetworkActivity = [self entryEventPointDefinitionNavdGeoNetworkActivity];
  v48[31] = entryEventPointDefinitionNavdGeoNetworkActivity;
  v47[32] = @"MapsNavigationStateEvent";
  entryEventPointDefinitionNavdMapsNavigationStateEvent = [self entryEventPointDefinitionNavdMapsNavigationStateEvent];
  v48[32] = entryEventPointDefinitionNavdMapsNavigationStateEvent;
  v47[33] = @"VehicularDetection";
  entryEventPointDefinitionLocationVehicularDetection = [self entryEventPointDefinitionLocationVehicularDetection];
  v48[33] = entryEventPointDefinitionLocationVehicularDetection;
  v47[34] = @"MotionWakeReason";
  entryEventPointDefinitionMotionWakeReason = [self entryEventPointDefinitionMotionWakeReason];
  v48[34] = entryEventPointDefinitionMotionWakeReason;
  v47[35] = @"CommuteRefresh";
  entryEventPointDefinitionCommuteRefresh = [self entryEventPointDefinitionCommuteRefresh];
  v48[35] = entryEventPointDefinitionCommuteRefresh;
  v47[36] = @"SecItem";
  entryEventPointDefinitionSecItem = [self entryEventPointDefinitionSecItem];
  v48[36] = entryEventPointDefinitionSecItem;
  v47[37] = @"SiriActivation";
  entryEventPointDefinitionSiriActivication = [self entryEventPointDefinitionSiriActivication];
  v48[37] = entryEventPointDefinitionSiriActivication;
  v47[38] = @"SpotlightWatchdogFired";
  entryEventPointDefinitionSpotlightWatchdogFired = [self entryEventPointDefinitionSpotlightWatchdogFired];
  v48[38] = entryEventPointDefinitionSpotlightWatchdogFired;
  v47[39] = @"AirPlayDiscoveryMode";
  entryEventPointDefinitionAirPlayDiscoveryMode = [self entryEventPointDefinitionAirPlayDiscoveryMode];
  v48[39] = entryEventPointDefinitionAirPlayDiscoveryMode;
  v47[40] = @"ADD";
  entryEventPointDefinitionADD = [self entryEventPointDefinitionADD];
  v48[40] = entryEventPointDefinitionADD;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v14[0] = commonTypeDict_IntegerFormat;
  v13[1] = @"reasonStartTimestamp";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v14[1] = commonTypeDict_IntegerFormat2;
  v13[2] = @"reasonEndTimestamp";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat3;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v11[1] = @"precipitationNotificationEnabled";
  v12[0] = commonTypeDict_BoolFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v12[1] = commonTypeDict_BoolFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v16[0] = commonTypeDict_IntegerFormat;
  v15[1] = @"totalRelevantAlerts";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v16[1] = commonTypeDict_IntegerFormat2;
  v15[2] = @"totalPushes";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v16[2] = commonTypeDict_IntegerFormat3;
  v15[3] = @"totalNotifications";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v16[3] = commonTypeDict_IntegerFormat4;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v11 = commonTypeDict_BoolFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v11[1] = @"type";
  v12[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"spi";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v17[0] = commonTypeDict_StringFormat_withBundleID;
  v16[1] = @"limit";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v17[1] = commonTypeDict_IntegerFormat;
  v16[2] = @"portraitResultCount";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat2;
  v16[3] = @"portraitCacheDate";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v17[3] = commonTypeDict_DateFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v12[1] = @"spotlightResultCount";
  v13[0] = commonTypeDict_StringFormat_withBundleID;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v16[0] = commonTypeDict_IntegerFormat;
  v15[1] = @"Reason";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v16[1] = commonTypeDict_IntegerFormat2;
  v15[2] = @"Source";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v16[2] = commonTypeDict_IntegerFormat3;
  v15[3] = @"SemanticType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v16[3] = commonTypeDict_IntegerFormat4;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v15[0] = commonTypeDict_StringFormat;
    v14[1] = @"AccountID";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v15[1] = commonTypeDict_StringFormat2;
    v14[2] = @"AccountName";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v15[2] = commonTypeDict_StringFormat3;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v19[0] = commonTypeDict_StringFormat;
  v18[1] = @"AccountID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v19[1] = commonTypeDict_StringFormat2;
  v18[2] = @"AccountName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v19[2] = commonTypeDict_StringFormat3;
  v18[3] = @"ContainerID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v19[3] = commonTypeDict_StringFormat4;
  v18[4] = @"NumberOfItemsChanged";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v19[4] = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v19[0] = commonTypeDict_StringFormat;
  v18[1] = @"AccountID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v19[1] = commonTypeDict_StringFormat2;
  v18[2] = @"AccountName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v19[2] = commonTypeDict_StringFormat3;
  v18[3] = @"ContainerID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v19[3] = commonTypeDict_StringFormat4;
  v18[4] = @"NumberOfItemsChanged";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v19[4] = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v21[0] = commonTypeDict_StringFormat;
  v20[1] = @"cause";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v21[1] = commonTypeDict_StringFormat2;
  v20[2] = @"duration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v21[2] = commonTypeDict_StringFormat3;
  v20[3] = @"rx";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v21[3] = commonTypeDict_IntegerFormat;
  v20[4] = @"tx";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v21[4] = commonTypeDict_IntegerFormat2;
  v20[5] = @"wifi";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]6 commonTypeDict_BoolFormat];
  v21[5] = commonTypeDict_BoolFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v17[0] = commonTypeDict_IntegerFormat;
    v16[1] = @"Duration";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat_withUnit_s = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_withUnit_s];
    v17[1] = commonTypeDict_RealFormat_withUnit_s;
    v16[2] = @"Account type";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v17[2] = commonTypeDict_IntegerFormat2;
    v16[3] = @"Network interface";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v17[3] = commonTypeDict_IntegerFormat3;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v12[1] = @"TestName";
  v13[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v13[1] = commonTypeDict_StringFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v11 = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v12[1] = @"Network Type";
  v13[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v47[0] = commonTypeDict_IntegerFormat;
  v46[1] = @"taskID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v47[1] = commonTypeDict_IntegerFormat2;
  v46[2] = @"bundleID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
  v47[2] = commonTypeDict_StringFormat_withBundleID;
  v46[3] = @"taskUUID";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v47[3] = commonTypeDict_StringFormat;
  v46[4] = @"sessionID";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v47[4] = commonTypeDict_StringFormat2;
  v46[5] = @"state";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v47[5] = commonTypeDict_IntegerFormat3;
  v46[6] = @"bytesSent";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v47[6] = commonTypeDict_IntegerFormat4;
  v46[7] = @"bytesReceived";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v47[7] = commonTypeDict_IntegerFormat5;
  v46[8] = @"willRetry";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v47[8] = commonTypeDict_IntegerFormat6;
  v46[9] = @"previousFailureCount";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v47[9] = commonTypeDict_IntegerFormat7;
  v46[10] = @"interfaceName";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]11 commonTypeDict_StringFormat];
  v47[10] = commonTypeDict_StringFormat3;
  v46[11] = @"errorCode";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v47[11] = commonTypeDict_IntegerFormat8;
  v46[12] = @"errorDomain";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]13 commonTypeDict_StringFormat];
  v47[12] = commonTypeDict_StringFormat4;
  v46[13] = @"errorCFStreamErrorCode";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v47[13] = commonTypeDict_IntegerFormat9;
  v46[14] = @"errorCFStreamErrorDomain";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v47[14] = commonTypeDict_IntegerFormat10;
  v46[15] = @"errorFailingURLSessionTask";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]16 commonTypeDict_StringFormat];
  v47[15] = commonTypeDict_StringFormat5;
  v46[16] = @"errorFailingURL";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat6 = [mEMORY[0x277D3F198]17 commonTypeDict_StringFormat];
  v47[16] = commonTypeDict_StringFormat6;
  v46[17] = @"isDiscretionary";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]18 commonTypeDict_BoolFormat];
  v47[17] = commonTypeDict_BoolFormat;
  v46[18] = @"isDataBudgetingEnabled";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]19 commonTypeDict_BoolFormat];
  v47[18] = commonTypeDict_BoolFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11 = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = @"EndUnix";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v17[1] = commonTypeDict_IntegerFormat2;
  v16[2] = @"ScreenLocked";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat3;
  v16[3] = @"TransportType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v17[3] = commonTypeDict_IntegerFormat4;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v19[0] = commonTypeDict_IntegerFormat;
  v18[1] = @"EndUnix";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v19[1] = commonTypeDict_IntegerFormat2;
  v18[2] = @"Client";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v19[2] = commonTypeDict_StringFormat;
  v18[3] = @"NetworkingReason";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v19[3] = commonTypeDict_IntegerFormat3;
  v18[4] = @"RequestCount";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v19[4] = commonTypeDict_IntegerFormat4;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v21[0] = commonTypeDict_IntegerFormat;
  v20[1] = @"EndUnix";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat2;
  v20[2] = @"NightMode";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v21[2] = commonTypeDict_IntegerFormat3;
  v20[3] = @"NavigationType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v21[3] = commonTypeDict_IntegerFormat4;
  v20[4] = @"NavigationAppState";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v21[4] = commonTypeDict_IntegerFormat5;
  v20[5] = @"NavigationMapType";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v21[5] = commonTypeDict_IntegerFormat6;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v49[0] = commonTypeDict_StringFormat;
    v48[1] = @"DirectoryCount";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v49[1] = commonTypeDict_IntegerFormat;
    v48[2] = @"FileCount";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v49[2] = commonTypeDict_IntegerFormat2;
    v48[3] = @"SymLinkCount";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v49[3] = commonTypeDict_IntegerFormat3;
    v48[4] = @"SparseFileCount";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v49[4] = commonTypeDict_IntegerFormat4;
    v48[5] = @"EncryptionKeyCount";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v49[5] = commonTypeDict_IntegerFormat5;
    v48[6] = @"DeletionMarkerCount";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v49[6] = commonTypeDict_IntegerFormat6;
    v48[7] = @"DataProtectionACount";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v49[7] = commonTypeDict_IntegerFormat7;
    v48[8] = @"DataProtectionBCount";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v49[8] = commonTypeDict_IntegerFormat8;
    v48[9] = @"DataProtectionCCount";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v49[9] = commonTypeDict_IntegerFormat9;
    v48[10] = @"DataProtectionDCount";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v49[10] = commonTypeDict_IntegerFormat10;
    v48[11] = @"SQLiteFileCount";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
    v49[11] = commonTypeDict_IntegerFormat11;
    v48[12] = @"TotalSQLiteFileSize";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
    v49[12] = commonTypeDict_IntegerFormat12;
    v48[13] = @"TotalFileSize";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
    v49[13] = commonTypeDict_IntegerFormat13;
    v48[14] = @"TotalResourceSize";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
    v49[14] = commonTypeDict_IntegerFormat14;
    v48[15] = @"TotalAttributeSize";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
    v49[15] = commonTypeDict_IntegerFormat15;
    v48[16] = @"RecordChurnPct";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]17 commonTypeDict_RealFormat];
    v49[16] = commonTypeDict_RealFormat;
    v48[17] = @"ContentChurnPct";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]18 commonTypeDict_RealFormat];
    v49[17] = commonTypeDict_RealFormat2;
    v48[18] = @"FailureCount";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
    v49[18] = commonTypeDict_IntegerFormat16;
    v48[19] = @"BackupType";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
    v49[19] = commonTypeDict_IntegerFormat17;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
    v19[0] = commonTypeDict_DateFormat;
    v18[1] = @"finished";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
    v19[1] = commonTypeDict_BoolFormat;
    v18[2] = @"hasError";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
    v19[2] = commonTypeDict_BoolFormat2;
    v18[3] = @"start";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
    v19[3] = commonTypeDict_DateFormat2;
    v18[4] = @"state";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
    v19[4] = commonTypeDict_StringFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v25[0] = commonTypeDict_IntegerFormat;
    v24[1] = @"UniqueID";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v25[1] = commonTypeDict_IntegerFormat2;
    v24[2] = @"BundleID";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
    v25[2] = commonTypeDict_StringFormat_withBundleID;
    v24[3] = @"ActivationDuration_ms";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v25[3] = commonTypeDict_IntegerFormat3;
    v24[4] = @"ActivationResult";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v25[4] = commonTypeDict_IntegerFormat4;
    v24[5] = @"ActivationType";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v25[5] = commonTypeDict_IntegerFormat5;
    v24[6] = @"SystemUptime";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v25[6] = commonTypeDict_IntegerFormat6;
    v24[7] = @"ActivationFlags";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v25[7] = commonTypeDict_IntegerFormat7;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v12[1] = @"ProcessName";
    v13[0] = commonTypeDict_IntegerFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withProcessName];
    v13[1] = commonTypeDict_StringFormat_withProcessName;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v37[0] = commonTypeDict_IntegerFormat;
    v36[1] = @"UniqueID";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v37[1] = commonTypeDict_IntegerFormat2;
    v36[2] = @"TotalCPU_ms";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v37[2] = commonTypeDict_IntegerFormat3;
    v36[3] = @"QOSDisabled_ms";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v37[3] = commonTypeDict_IntegerFormat4;
    v36[4] = @"QOSUserInteractive_ms";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v37[4] = commonTypeDict_IntegerFormat5;
    v36[5] = @"QOSUserInitiated_ms";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v37[5] = commonTypeDict_IntegerFormat6;
    v36[6] = @"QOSDefault_ms";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v37[6] = commonTypeDict_IntegerFormat7;
    v36[7] = @"QOSUtility_ms";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v37[7] = commonTypeDict_IntegerFormat8;
    v36[8] = @"QOSMaintenance_ms";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v37[8] = commonTypeDict_IntegerFormat9;
    v36[9] = @"QOSBackground_ms";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v37[9] = commonTypeDict_IntegerFormat10;
    v36[10] = @"IOReads_kb";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v37[10] = commonTypeDict_IntegerFormat11;
    v36[11] = @"IOWrites_kb";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
    v37[11] = commonTypeDict_IntegerFormat12;
    v36[12] = @"PageIns";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
    v37[12] = commonTypeDict_IntegerFormat13;
    v36[13] = @"ProcessLifecycleState";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
    v37[13] = commonTypeDict_IntegerFormat14;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v57[0] = commonTypeDict_IntegerFormat;
    v56[1] = @"ActivationID";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v57[1] = commonTypeDict_IntegerFormat2;
    v56[2] = @"FreeQueue";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v57[2] = commonTypeDict_IntegerFormat3;
    v56[3] = @"ActiveQueue";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v57[3] = commonTypeDict_IntegerFormat4;
    v56[4] = @"InactiveQueue";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v57[4] = commonTypeDict_IntegerFormat5;
    v56[5] = @"SpeculativeQueue";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v57[5] = commonTypeDict_IntegerFormat6;
    v56[6] = @"ThrottledQueue";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v57[6] = commonTypeDict_IntegerFormat7;
    v56[7] = @"WiredQueue";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v57[7] = commonTypeDict_IntegerFormat8;
    v56[8] = @"PurgeableQueue";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v57[8] = commonTypeDict_IntegerFormat9;
    v56[9] = @"FileBackedQueue";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v57[9] = commonTypeDict_IntegerFormat10;
    v56[10] = @"AnonymousQueue";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v57[10] = commonTypeDict_IntegerFormat11;
    v56[11] = @"Faults";
    mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
    v57[11] = commonTypeDict_IntegerFormat12;
    v56[12] = @"CopyOnWriteFault";
    mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
    v57[12] = commonTypeDict_IntegerFormat13;
    v56[13] = @"ZeroFill";
    mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
    v57[13] = commonTypeDict_IntegerFormat14;
    v56[14] = @"Reactivated";
    mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
    v57[14] = commonTypeDict_IntegerFormat15;
    v56[15] = @"Purged";
    mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
    v57[15] = commonTypeDict_IntegerFormat16;
    v56[16] = @"TotalCompressed";
    mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
    v57[16] = commonTypeDict_IntegerFormat17;
    v56[17] = @"CompressorSize";
    mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
    v57[17] = commonTypeDict_IntegerFormat18;
    v56[18] = @"Decompressions";
    mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
    v57[18] = commonTypeDict_IntegerFormat19;
    v56[19] = @"Compressions";
    mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
    v57[19] = commonTypeDict_IntegerFormat20;
    v56[20] = @"PageIns";
    mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
    v57[20] = commonTypeDict_IntegerFormat21;
    v56[21] = @"PageOuts";
    mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
    v57[21] = commonTypeDict_IntegerFormat22;
    v56[22] = @"SwapIns";
    mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
    v57[22] = commonTypeDict_IntegerFormat23;
    v56[23] = @"SwapOuts";
    mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
    v57[23] = commonTypeDict_IntegerFormat24;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v17[0] = commonTypeDict_IntegerFormat;
    v16[1] = @"CPU";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v17[1] = commonTypeDict_IntegerFormat2;
    v16[2] = @"State";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v17[2] = commonTypeDict_IntegerFormat3;
    v16[3] = @"DutyCycle";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v17[3] = commonTypeDict_IntegerFormat4;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v79[0] = commonTypeDict_StringFormat;
  v78[1] = @"operationType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v79[1] = commonTypeDict_IntegerFormat;
  v78[2] = @"containerIdentifier";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v79[2] = commonTypeDict_StringFormat2;
  v78[3] = @"containerEnvironment";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v79[3] = commonTypeDict_IntegerFormat2;
  v78[4] = @"bundleIdentifier";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat_withBundleID];
  v79[4] = commonTypeDict_StringFormat_withBundleID;
  v78[5] = @"sourceAppBundleIdentifier";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withAppName = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat_withAppName];
  v79[5] = commonTypeDict_StringFormat_withAppName;
  v78[6] = @"CKStartDate";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]7 commonTypeDict_DateFormat];
  v79[6] = commonTypeDict_DateFormat;
  v78[7] = @"CKDuration";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
  v79[7] = commonTypeDict_RealFormat;
  v78[8] = @"CKBytesUploaded";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v79[8] = commonTypeDict_IntegerFormat3;
  v78[9] = @"CKBytesDownloaded";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v79[9] = commonTypeDict_IntegerFormat4;
  v78[10] = @"CKConnections";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v79[10] = commonTypeDict_IntegerFormat5;
  v78[11] = @"CKConnectionsCreated";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v79[11] = commonTypeDict_IntegerFormat6;
  v78[12] = @"CKRecordsUploaded";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v79[12] = commonTypeDict_IntegerFormat7;
  v78[13] = @"CKRecordsDownloaded";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v79[13] = commonTypeDict_IntegerFormat8;
  v78[14] = @"CKRecordsDeleted";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v79[14] = commonTypeDict_IntegerFormat9;
  v78[15] = @"CKRetries";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v79[15] = commonTypeDict_IntegerFormat10;
  v78[16] = @"MMCSDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]17 commonTypeDict_RealFormat];
  v79[16] = commonTypeDict_RealFormat2;
  v78[17] = @"MMCSBytesUploaded";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v79[17] = commonTypeDict_IntegerFormat11;
  v78[18] = @"MMCSBytesDownloaded";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v79[18] = commonTypeDict_IntegerFormat12;
  v78[19] = @"MMCSConnections";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v79[19] = commonTypeDict_IntegerFormat13;
  v78[20] = @"MMCSConnectionsCreated";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v79[20] = commonTypeDict_IntegerFormat14;
  v78[21] = @"CKRequestUUIDs";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]22 commonTypeDict_StringFormat];
  v79[21] = commonTypeDict_StringFormat3;
  v78[22] = @"MMCSRequestUUIDs";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]23 commonTypeDict_StringFormat];
  v79[22] = commonTypeDict_StringFormat4;
  v78[23] = @"operationGroupID";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]24 commonTypeDict_StringFormat];
  v79[23] = commonTypeDict_StringFormat5;
  v78[24] = @"operationGroupName";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat6 = [mEMORY[0x277D3F198]25 commonTypeDict_StringFormat];
  v79[24] = commonTypeDict_StringFormat6;
  v78[25] = @"operationGroupQuantity";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v79[25] = commonTypeDict_IntegerFormat15;
  v78[26] = @"CKNumberOfRequests";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v79[26] = commonTypeDict_IntegerFormat16;
  v78[27] = @"MMCSNumberOfRequests";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v79[27] = commonTypeDict_IntegerFormat17;
  v78[28] = @"operationQualityOfService";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v79[28] = commonTypeDict_IntegerFormat18;
  v78[29] = @"CKProtoRequestOperationsByCount";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat7 = [mEMORY[0x277D3F198]30 commonTypeDict_StringFormat];
  v79[29] = commonTypeDict_StringFormat7;
  v78[30] = @"CKAssetsUploaded";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat];
  v79[30] = commonTypeDict_IntegerFormat19;
  v78[31] = @"CKAssetsUploadedFileSize";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat];
  v79[31] = commonTypeDict_IntegerFormat20;
  v78[32] = @"CKAssetsDownloaded";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]33 commonTypeDict_IntegerFormat];
  v79[32] = commonTypeDict_IntegerFormat21;
  v78[33] = @"CKAssetsDownloadedFileSize";
  mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat];
  v79[33] = commonTypeDict_IntegerFormat22;
  v78[34] = @"ZoneNames";
  mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat8 = [mEMORY[0x277D3F198]35 commonTypeDict_StringFormat];
  v79[34] = commonTypeDict_StringFormat8;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11 = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v11 = commonTypeDict_StringFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v27[0] = commonTypeDict_IntegerFormat;
  v26[1] = @"LOIExitDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v27[1] = commonTypeDict_IntegerFormat2;
  v26[2] = @"destinationLOI";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v27[2] = commonTypeDict_IntegerFormat3;
  v26[3] = @"endDate";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v27[3] = commonTypeDict_IntegerFormat4;
  v26[4] = @"networkRequest";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v27[4] = commonTypeDict_IntegerFormat5;
  v26[5] = @"notified";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v27[5] = commonTypeDict_IntegerFormat6;
  v26[6] = @"scheduledWakeup";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v27[6] = commonTypeDict_IntegerFormat7;
  v26[7] = @"startDate";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v27[7] = commonTypeDict_IntegerFormat8;
  v26[8] = @"trigger";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v27[8] = commonTypeDict_IntegerFormat9;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v21[0] = commonTypeDict_IntegerFormat;
  v20[1] = @"urgencyLevel";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat2;
  v20[2] = @"serviceName";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v21[2] = commonTypeDict_StringFormat;
  v20[3] = @"duration";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v21[3] = commonTypeDict_RealFormat;
  v20[4] = @"requestedBytes";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v21[4] = commonTypeDict_IntegerFormat3;
  v20[5] = @"purgedBytes";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v21[5] = commonTypeDict_IntegerFormat4;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withProcessName];
  v13[1] = @"requestType";
  v14[0] = commonTypeDict_StringFormat_withProcessName;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v14[1] = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v12[1] = @"AccessGroup";
  v13[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v13[1] = commonTypeDict_StringFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v12[1] = @"mode";
    v13[0] = commonTypeDict_IntegerFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v13[1] = commonTypeDict_IntegerFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v11 = commonTypeDict_IntegerFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v21[0] = commonTypeDict_IntegerFormat;
    v20[1] = @"WFActionCount";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v21[1] = commonTypeDict_IntegerFormat2;
    v20[2] = @"WFTriggerID";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v21[2] = commonTypeDict_StringFormat;
    v20[3] = @"WFWorkflowID";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
    v21[3] = commonTypeDict_StringFormat2;
    v20[4] = @"WFWorkflowName";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
    v21[4] = commonTypeDict_StringFormat3;
    v20[5] = @"WFAssociatedAppBundleID";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat_withBundleID];
    v21[5] = commonTypeDict_StringFormat_withBundleID;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
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
  entryEventForwardDefinitionUIKitKeyboard = [self entryEventForwardDefinitionUIKitKeyboard];
  v45[0] = entryEventForwardDefinitionUIKitKeyboard;
  v44[1] = @"UIKitActivity";
  entryEventForwardDefinitionUIKitActivity = [self entryEventForwardDefinitionUIKitActivity];
  v45[1] = entryEventForwardDefinitionUIKitActivity;
  v44[2] = @"SafariFetcher";
  entryEventForwardDefinitionSafariFetcher = [self entryEventForwardDefinitionSafariFetcher];
  v45[2] = entryEventForwardDefinitionSafariFetcher;
  v44[3] = @"AppAccessory";
  entryEventForwardDefinitionAppAccessory = [self entryEventForwardDefinitionAppAccessory];
  v45[3] = entryEventForwardDefinitionAppAccessory;
  v44[4] = @"InCallService";
  entryEventForwardDefinitionInCallService = [self entryEventForwardDefinitionInCallService];
  v45[4] = entryEventForwardDefinitionInCallService;
  v44[5] = @"WebApp";
  entryEventForwardDefinitionWebApp = [self entryEventForwardDefinitionWebApp];
  v45[5] = entryEventForwardDefinitionWebApp;
  v44[6] = @"ThermalLevel";
  entryEventForwardDefinitionThermalLevel = [self entryEventForwardDefinitionThermalLevel];
  v45[6] = entryEventForwardDefinitionThermalLevel;
  v44[7] = @"AirDrop";
  entryEventForwardDefinitionAirDrop = [self entryEventForwardDefinitionAirDrop];
  v45[7] = entryEventForwardDefinitionAirDrop;
  v44[8] = @"AirDropSession";
  entryEventForwardDefinitionAirDropSession = [self entryEventForwardDefinitionAirDropSession];
  v45[8] = entryEventForwardDefinitionAirDropSession;
  v44[9] = @"Accessory";
  entryEventForwardDefinitionAccessory = [self entryEventForwardDefinitionAccessory];
  v45[9] = entryEventForwardDefinitionAccessory;
  v44[10] = @"UARPStatus";
  entryEventForwardDefinitionUARPStatus = [self entryEventForwardDefinitionUARPStatus];
  v45[10] = entryEventForwardDefinitionUARPStatus;
  v44[11] = @"CallScreeningEnabled";
  entryEventForwardCallScreeningEnabled = [self entryEventForwardCallScreeningEnabled];
  v45[11] = entryEventForwardCallScreeningEnabled;
  v44[12] = @"SOSKVSRateLimitingEvent";
  entryEventForwardDefinitionSOSKVSRateLimitingEvent = [self entryEventForwardDefinitionSOSKVSRateLimitingEvent];
  v45[12] = entryEventForwardDefinitionSOSKVSRateLimitingEvent;
  v44[13] = @"ThermalHiP";
  entryEventForwardDefinitionThermalHiP = [self entryEventForwardDefinitionThermalHiP];
  v45[13] = entryEventForwardDefinitionThermalHiP;
  v44[14] = @"AppleBacklightBrightness";
  entryEventForwardDefinitionAppleBacklightBrightness = [self entryEventForwardDefinitionAppleBacklightBrightness];
  v45[14] = entryEventForwardDefinitionAppleBacklightBrightness;
  v44[15] = @"UIKitEclipse";
  entryEventForwardDefinitionUIKitEclipse = [self entryEventForwardDefinitionUIKitEclipse];
  v45[15] = entryEventForwardDefinitionUIKitEclipse;
  v44[16] = @"Dosimetry";
  v27 = +[PLXPCAgent entryEventForwardDefinitionsDosimetry];
  v45[16] = v27;
  v44[17] = @"SecondaryDisplay";
  entryEventForwardDefinitionSecondaryDisplay = [self entryEventForwardDefinitionSecondaryDisplay];
  v45[17] = entryEventForwardDefinitionSecondaryDisplay;
  v44[18] = @"SleepMode";
  entryEventForwardDefinitionSleepMode = [self entryEventForwardDefinitionSleepMode];
  v45[18] = entryEventForwardDefinitionSleepMode;
  v44[19] = @"SpatialAudio";
  entryEventForwardDefinitionSpatialAudio = [self entryEventForwardDefinitionSpatialAudio];
  v45[19] = entryEventForwardDefinitionSpatialAudio;
  v44[20] = @"ThermalSensors";
  entryEventForwardDefinitionThermalSensors = [self entryEventForwardDefinitionThermalSensors];
  v45[20] = entryEventForwardDefinitionThermalSensors;
  v44[21] = @"TelephonyState";
  entryEventForwardDefinitionTelephonyState = [self entryEventForwardDefinitionTelephonyState];
  v45[21] = entryEventForwardDefinitionTelephonyState;
  v44[22] = @"PreferredLink";
  entryEventForwardDefinitionPreferredLink = [self entryEventForwardDefinitionPreferredLink];
  v45[22] = entryEventForwardDefinitionPreferredLink;
  v44[23] = @"AudioRouting";
  entryEventForwardDefinitionAudioRouting = [self entryEventForwardDefinitionAudioRouting];
  v45[23] = entryEventForwardDefinitionAudioRouting;
  v44[24] = @"WirelessSync";
  entryEventForwardDefinitionWirelessSync = [self entryEventForwardDefinitionWirelessSync];
  v45[24] = entryEventForwardDefinitionWirelessSync;
  v44[25] = @"EnhancedDiscovery";
  entryEventForwardDefinitionEnhancedDiscovery = [self entryEventForwardDefinitionEnhancedDiscovery];
  v45[25] = entryEventForwardDefinitionEnhancedDiscovery;
  v44[26] = @"Siri";
  entryEventForwardDefinitionSiri = [self entryEventForwardDefinitionSiri];
  v45[26] = entryEventForwardDefinitionSiri;
  v44[27] = @"UIKitAlert";
  entryEventForwardDefinitionUIKitAlert = [self entryEventForwardDefinitionUIKitAlert];
  v45[27] = entryEventForwardDefinitionUIKitAlert;
  v44[28] = @"AccessoryMotion";
  entryEventForwardDefinitionAccessoryMotion = [self entryEventForwardDefinitionAccessoryMotion];
  v45[28] = entryEventForwardDefinitionAccessoryMotion;
  v44[29] = @"MXDiscoveryLevel";
  entryEventForwardDefinitionMXDiscoveryLevel = [self entryEventForwardDefinitionMXDiscoveryLevel];
  v45[29] = entryEventForwardDefinitionMXDiscoveryLevel;
  v44[30] = @"RapidSecurityResponse";
  entryEventForwardDefinitionRapidSecurityResponse = [self entryEventForwardDefinitionRapidSecurityResponse];
  v45[30] = entryEventForwardDefinitionRapidSecurityResponse;
  v44[31] = @"CarPlay";
  entryEventForwardDefinitionCarPlay = [self entryEventForwardDefinitionCarPlay];
  v45[31] = entryEventForwardDefinitionCarPlay;
  v44[32] = @"CarPlayScreens";
  entryEventForwardDefinitionCarPlayScreens = [self entryEventForwardDefinitionCarPlayScreens];
  v45[32] = entryEventForwardDefinitionCarPlayScreens;
  v44[33] = @"NetworkRelay";
  entryEventForwardDefinitionNetworkRelay = [self entryEventForwardDefinitionNetworkRelay];
  v45[33] = entryEventForwardDefinitionNetworkRelay;
  v44[34] = @"NetworkRelayWiFiAssertion";
  entryEventForwardDefinitionNetworkRelayWiFiAssertion = [self entryEventForwardDefinitionNetworkRelayWiFiAssertion];
  v45[34] = entryEventForwardDefinitionNetworkRelayWiFiAssertion;
  v44[35] = @"WatchPresence";
  entryEventForwardDefinitionWatchPresence = [self entryEventForwardDefinitionWatchPresence];
  v45[35] = entryEventForwardDefinitionWatchPresence;
  v44[36] = @"PasskeyAuthentication";
  entryEventForwardDefinitionPasskeyAuthentication = [self entryEventForwardDefinitionPasskeyAuthentication];
  v45[36] = entryEventForwardDefinitionPasskeyAuthentication;
  v44[37] = @"AvailabilityModes";
  entryEventForwardDefinitionAvailabilityModes = [self entryEventForwardDefinitionAvailabilityModes];
  v45[37] = entryEventForwardDefinitionAvailabilityModes;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v18[0] = commonTypeDict_BoolFormat;
  v17[1] = @"ExtensionCount";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v18[1] = commonTypeDict_IntegerFormat;
  v17[2] = @"Reason";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v18[2] = commonTypeDict_IntegerFormat2;
  v17[3] = @"Source";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v18[3] = commonTypeDict_IntegerFormat3;
  v17[4] = @"SemanticType";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v18[4] = commonTypeDict_IntegerFormat4;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v12[1] = @"RSSI";
  v13[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v15[0] = commonTypeDict_BoolFormat;
    v14[1] = @"Keyboard-ID";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v15[1] = commonTypeDict_StringFormat;
    v14[2] = @"Process-ID";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v15[2] = commonTypeDict_IntegerFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v12[1] = @"Value";
    v13[0] = commonTypeDict_IntegerFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v13[1] = commonTypeDict_IntegerFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v28[0] = commonTypeDict_StringFormat;
  v27[1] = @"Client";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withAppName = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withAppName];
  v28[1] = commonTypeDict_StringFormat_withAppName;
  v27[2] = @"Level";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v28[2] = commonTypeDict_IntegerFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v33[1] = v7;
  v32[2] = *MEMORY[0x277D3F500];
  v25[0] = @"key";
  v23 = @"OnBehalfOf";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat_withBundleID];
  v24 = commonTypeDict_StringFormat_withBundleID;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v25[1] = @"value";
  v26[0] = v10;
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v26[1] = commonTypeDict_StringFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v14[0] = commonTypeDict_BoolFormat;
    v13[1] = @"Wireless";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
    v14[1] = commonTypeDict_BoolFormat2;
    v13[2] = @"SessionID";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v14[2] = commonTypeDict_IntegerFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v16[0] = commonTypeDict_BoolFormat;
    v15[1] = @"SessionID";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v16[1] = commonTypeDict_IntegerFormat;
    v15[2] = @"ScreenUUID";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v16[2] = commonTypeDict_StringFormat;
    v15[3] = @"Size";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v16[3] = commonTypeDict_IntegerFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v15[0] = commonTypeDict_IntegerFormat;
    v14[1] = @"Codec";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v15[1] = commonTypeDict_StringFormat;
    v14[2] = @"Transport";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v15[2] = commonTypeDict_IntegerFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withProcessName];
  v18[0] = commonTypeDict_StringFormat_withProcessName;
  v17[1] = @"spatialAudio";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v18[1] = commonTypeDict_BoolFormat;
  v17[2] = @"headTracking";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v18[2] = commonTypeDict_BoolFormat2;
  v17[3] = @"up-mixing";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v18[3] = commonTypeDict_BoolFormat3;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v15[0] = commonTypeDict_StringFormat_withBundleID;
  v14[1] = @"tracking";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v15[1] = commonTypeDict_BoolFormat;
  v14[2] = @"eventType";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v12[1] = @"ScanType";
  v13[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v11 = commonTypeDict_BoolFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v11 = commonTypeDict_BoolFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v12[1] = @"item";
  v13[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v13[1] = commonTypeDict_StringFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v32[0] = commonTypeDict_BoolFormat;
  v31[1] = *MEMORY[0x277D183F0];
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v32[1] = commonTypeDict_StringFormat;
  v31[2] = *MEMORY[0x277D183E0];
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v32[2] = commonTypeDict_StringFormat2;
  v31[3] = *MEMORY[0x277D183E8];
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v32[3] = commonTypeDict_StringFormat3;
  v31[4] = *MEMORY[0x277D18458];
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v32[4] = commonTypeDict_StringFormat4;
  v31[5] = *MEMORY[0x277D183B8];
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v32[5] = commonTypeDict_StringFormat5;
  v31[6] = *MEMORY[0x277D183C8];
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v32[6] = commonTypeDict_StringFormat6;
  v31[7] = *MEMORY[0x277D18450];
  v29 = *MEMORY[0x277D3F5A8];
  v30 = &unk_287146498;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v32[7] = v4;
  v31[8] = *MEMORY[0x277D18448];
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v32[8] = commonTypeDict_StringFormat7;
  v31[9] = *MEMORY[0x277D18398];
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v32[9] = commonTypeDict_IntegerFormat;
  v31[10] = *MEMORY[0x277D18468];
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v32[10] = commonTypeDict_IntegerFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v19[0] = commonTypeDict_BoolFormat;
  v18[1] = *MEMORY[0x277D184A0];
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v19[1] = commonTypeDict_StringFormat_withBundleID;
  v18[2] = *MEMORY[0x277D183F0];
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v19[2] = commonTypeDict_StringFormat;
  v18[3] = *MEMORY[0x277D184B0];
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v19[3] = commonTypeDict_StringFormat2;
  v18[4] = *MEMORY[0x277D18370];
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v19[4] = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v23[0] = commonTypeDict_IntegerFormat;
  v22[1] = @"model";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v23[1] = commonTypeDict_StringFormat;
  v22[2] = @"requestOffset";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v23[2] = commonTypeDict_IntegerFormat2;
  v22[3] = @"bytesTransferred";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v23[3] = commonTypeDict_IntegerFormat3;
  v22[4] = @"activeFWVers";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v23[4] = commonTypeDict_StringFormat2;
  v22[5] = @"fwVersion";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v23[5] = commonTypeDict_StringFormat3;
  v22[6] = @"error";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v23[6] = commonTypeDict_IntegerFormat4;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v17[0] = commonTypeDict_StringFormat;
    v16[1] = @"State";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v17[1] = commonTypeDict_StringFormat2;
    v16[2] = @"bundleId";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat_withBundleID];
    v17[2] = commonTypeDict_StringFormat_withBundleID;
    v16[3] = @"pid";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v17[3] = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v18[0] = commonTypeDict_IntegerFormat;
  v17[1] = @"Identifier";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v18[1] = commonTypeDict_StringFormat;
  v17[2] = @"Interface";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v18[2] = commonTypeDict_StringFormat2;
  v17[3] = @"Subevent";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v18[3] = commonTypeDict_IntegerFormat2;
  v17[4] = @"State";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v18[4] = commonTypeDict_IntegerFormat3;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v11 = commonTypeDict_StringFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v19[0] = commonTypeDict_StringFormat_withBundleID;
  v18[1] = @"status";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v19[1] = commonTypeDict_StringFormat;
  v18[2] = @"kCallSubType";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v19[2] = commonTypeDict_StringFormat2;
  v18[3] = @"providerIdentifier";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v19[3] = commonTypeDict_StringFormat3;
  v18[4] = @"video";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]5 commonTypeDict_BoolFormat];
  v19[4] = commonTypeDict_BoolFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat_withAppName = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withAppName];
    v15[0] = commonTypeDict_StringFormat_withAppName;
    v14[1] = @"title";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v15[1] = commonTypeDict_StringFormat;
    v14[2] = @"url";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v15[2] = commonTypeDict_StringFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v15[0] = commonTypeDict_IntegerFormat;
  v14[1] = @"thermalLevel";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat2;
  v14[2] = @"pressureLevel";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat3;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = @"status";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v17[1] = commonTypeDict_IntegerFormat2;
  v16[2] = @"client";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat3;
  v16[3] = @"count";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v17[3] = commonTypeDict_IntegerFormat4;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v15[0] = commonTypeDict_StringFormat;
  v14[1] = @"BadnessLevel";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat;
  v14[2] = @"peerShouldSend";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v15[2] = commonTypeDict_BoolFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11 = commonTypeDict_IntegerFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withProcessName];
  v15[0] = commonTypeDict_StringFormat_withProcessName;
  v14[1] = @"State";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat;
  v14[2] = @"SessionID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v15[2] = commonTypeDict_StringFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = @"WiFiClientType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v17[1] = commonTypeDict_IntegerFormat2;
  v16[2] = @"WiFiAssertionReason";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v17[2] = commonTypeDict_IntegerFormat3;
  v16[3] = @"WiFiAssertionClients";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v17[3] = commonTypeDict_StringFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v15[0] = commonTypeDict_BoolFormat;
  v14[1] = @"specificState";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat;
  v14[2] = @"sleepScreenEnabled";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v15[2] = commonTypeDict_BoolFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v10 = commonTypeDict_BoolFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v31[0] = commonTypeDict_IntegerFormat;
  v30[1] = @"TG0B";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v31[1] = commonTypeDict_IntegerFormat2;
  v30[2] = @"TSBa";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v31[2] = commonTypeDict_IntegerFormat3;
  v30[3] = @"TSBE";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v31[3] = commonTypeDict_IntegerFormat4;
  v30[4] = @"TSBH";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v31[4] = commonTypeDict_IntegerFormat5;
  v30[5] = @"TSRM";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v31[5] = commonTypeDict_IntegerFormat6;
  v30[6] = @"TSBQ";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v31[6] = commonTypeDict_IntegerFormat7;
  v30[7] = @"TSBR";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v31[7] = commonTypeDict_IntegerFormat8;
  v30[8] = @"TSFC";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v31[8] = commonTypeDict_IntegerFormat9;
  v30[9] = @"TSFD";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v31[9] = commonTypeDict_IntegerFormat10;
  v30[10] = @"PG0B";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v31[10] = commonTypeDict_IntegerFormat11;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v18[0] = commonTypeDict_StringFormat;
    v17[1] = @"Service";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v18[1] = commonTypeDict_StringFormat2;
    v17[2] = @"ServiceInstanceID";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v18[2] = commonTypeDict_StringFormat3;
    v17[3] = @"DurationSeconds";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v18[3] = commonTypeDict_RealFormat;
    v17[4] = @"SyncStart";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]5 commonTypeDict_BoolFormat];
    v18[4] = commonTypeDict_BoolFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v11[1] = @"Enabled";
  v12[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v12[1] = commonTypeDict_BoolFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v54[0] = commonTypeDict_IntegerFormat;
  v53[1] = @"event";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v54[1] = commonTypeDict_IntegerFormat2;
  v53[2] = @"RequestUUID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v54[2] = commonTypeDict_StringFormat;
  v53[3] = @"result";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v54[3] = commonTypeDict_StringFormat2;
  v53[4] = @"RollbackRecProcAttributedProc";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v54[4] = commonTypeDict_StringFormat3;
  v53[5] = @"failureReason";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v54[5] = commonTypeDict_StringFormat4;
  v53[6] = @"type";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v54[6] = commonTypeDict_StringFormat5;
  v53[7] = @"updateType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v54[7] = commonTypeDict_IntegerFormat3;
  v53[8] = @"eventTime";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v54[8] = commonTypeDict_IntegerFormat4;
  v53[9] = @"targetOSVersion";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat6 = [mEMORY[0x277D3F198]10 commonTypeDict_StringFormat];
  v54[9] = commonTypeDict_StringFormat6;
  v53[10] = @"installTonight";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]11 commonTypeDict_BoolFormat];
  v54[10] = commonTypeDict_BoolFormat;
  v53[11] = @"brainVersion";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat7 = [mEMORY[0x277D3F198]12 commonTypeDict_StringFormat];
  v54[11] = commonTypeDict_StringFormat7;
  v53[12] = @"MobileAssetAssetAudience";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat8 = [mEMORY[0x277D3F198]13 commonTypeDict_StringFormat];
  v54[12] = commonTypeDict_StringFormat8;
  v53[13] = @"breadcrumbs";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat9 = [mEMORY[0x277D3F198]14 commonTypeDict_StringFormat];
  v54[13] = commonTypeDict_StringFormat9;
  v53[14] = @"originalOSVersion";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat10 = [mEMORY[0x277D3F198]15 commonTypeDict_StringFormat];
  v54[14] = commonTypeDict_StringFormat10;
  v53[15] = @"forcedResetUptime";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v54[15] = commonTypeDict_IntegerFormat5;
  v53[16] = @"initialForcedResetUptime";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v54[16] = commonTypeDict_IntegerFormat6;
  v53[17] = @"preRecoveryClientId";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat11 = [mEMORY[0x277D3F198]18 commonTypeDict_StringFormat];
  v54[17] = commonTypeDict_StringFormat11;
  v53[18] = @"recoveryInitiated";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]19 commonTypeDict_BoolFormat];
  v54[18] = commonTypeDict_BoolFormat2;
  v53[19] = @"controllerVersion";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat12 = [mEMORY[0x277D3F198]20 commonTypeDict_StringFormat];
  v54[19] = commonTypeDict_StringFormat12;
  v53[20] = @"preConv";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat13 = [mEMORY[0x277D3F198]21 commonTypeDict_StringFormat];
  v54[20] = commonTypeDict_StringFormat13;
  v53[21] = @"postConv";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat14 = [mEMORY[0x277D3F198]22 commonTypeDict_StringFormat];
  v54[21] = commonTypeDict_StringFormat14;
  v53[22] = @"fsckMetrics";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat15 = [mEMORY[0x277D3F198]23 commonTypeDict_StringFormat];
  v54[22] = commonTypeDict_StringFormat15;
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
  entryEventBackwardDefinitionSiriFalseAlarm = [self entryEventBackwardDefinitionSiriFalseAlarm];
  v25[0] = entryEventBackwardDefinitionSiriFalseAlarm;
  v24[1] = @"PeekPop";
  entryEventBackwardDefinitionPeekPop = [self entryEventBackwardDefinitionPeekPop];
  v25[1] = entryEventBackwardDefinitionPeekPop;
  v24[2] = @"AASSampling";
  entryEventBackwardDefinitionAttentionSampling = [self entryEventBackwardDefinitionAttentionSampling];
  v25[2] = entryEventBackwardDefinitionAttentionSampling;
  v24[3] = @"AASPolling";
  entryEventBackwardDefinitionAttentionPolling = [self entryEventBackwardDefinitionAttentionPolling];
  v25[3] = entryEventBackwardDefinitionAttentionPolling;
  v24[4] = @"AASService";
  entryEventBackwardDefinitionAttentionService = [self entryEventBackwardDefinitionAttentionService];
  v25[4] = entryEventBackwardDefinitionAttentionService;
  v24[5] = @"ODOff";
  entryEventBackwardDefinitionODOff = [self entryEventBackwardDefinitionODOff];
  v25[5] = entryEventBackwardDefinitionODOff;
  v24[6] = @"ODOn";
  entryEventBackwardDefinitionODOn = [self entryEventBackwardDefinitionODOn];
  v25[6] = entryEventBackwardDefinitionODOn;
  v24[7] = @"ODHN";
  entryEventBackwardDefinitionODHN = [self entryEventBackwardDefinitionODHN];
  v25[7] = entryEventBackwardDefinitionODHN;
  v24[8] = @"DRMaxRate";
  entryEventBackwardDefinitionDRMaxRate = [self entryEventBackwardDefinitionDRMaxRate];
  v25[8] = entryEventBackwardDefinitionDRMaxRate;
  v24[9] = @"FrameCount";
  entryEventBackwardDefinitionFrameCount = [self entryEventBackwardDefinitionFrameCount];
  v25[9] = entryEventBackwardDefinitionFrameCount;
  v24[10] = @"EnergyTelemetry";
  entryEventBackwardDefinitionEnergyTelemetry = [self entryEventBackwardDefinitionEnergyTelemetry];
  v25[10] = entryEventBackwardDefinitionEnergyTelemetry;
  v24[11] = @"CallScreeningDuration";
  entryEventBackwardDefinitionCallScreeningDuration = [self entryEventBackwardDefinitionCallScreeningDuration];
  v25[11] = entryEventBackwardDefinitionCallScreeningDuration;
  v24[12] = @"KeyboardSession";
  entryEventBackwardDefinitionKeyboardSession = [self entryEventBackwardDefinitionKeyboardSession];
  v25[12] = entryEventBackwardDefinitionKeyboardSession;
  v24[13] = @"KeyboardTrackpadResidencies";
  entryEventBackwardDefinitionTrackpadResidencies = [self entryEventBackwardDefinitionTrackpadResidencies];
  v25[13] = entryEventBackwardDefinitionTrackpadResidencies;
  v24[14] = @"ActiveStylusInking";
  entryEventBackwardDefinitionActiveStylus = [self entryEventBackwardDefinitionActiveStylus];
  v25[14] = entryEventBackwardDefinitionActiveStylus;
  v24[15] = @"PassiveStylusInking";
  entryEventBackwardDefinitionPassiveStylus = [self entryEventBackwardDefinitionPassiveStylus];
  v25[15] = entryEventBackwardDefinitionPassiveStylus;
  v24[16] = @"AVConference";
  entryEventBackwardDefinitionAVConference = [self entryEventBackwardDefinitionAVConference];
  v25[16] = entryEventBackwardDefinitionAVConference;
  v24[17] = @"SpotlightQos";
  entryEventBackwardDefinitionSpotlightQos = [self entryEventBackwardDefinitionSpotlightQos];
  v25[17] = entryEventBackwardDefinitionSpotlightQos;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v12[1] = @"secondsSinceLastReport";
  v13[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v10 = commonTypeDict_RealFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v21[0] = commonTypeDict_IntegerFormat;
  v20[1] = @"CharactersTapped";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat2;
  v20[2] = @"WordsPathed";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v21[2] = commonTypeDict_IntegerFormat3;
  v20[3] = @"CharactersPathed";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v21[3] = commonTypeDict_IntegerFormat4;
  v20[4] = @"TimeSpentTapTyping";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v21[4] = commonTypeDict_IntegerFormat5;
  v20[5] = @"TimeSpentPathTyping";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v21[5] = commonTypeDict_IntegerFormat6;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v19[0] = commonTypeDict_RealFormat;
    v18[1] = @"Active";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v19[1] = commonTypeDict_RealFormat2;
    v18[2] = @"Inactive";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v19[2] = commonTypeDict_RealFormat3;
    v18[3] = @"LowPower";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v19[3] = commonTypeDict_RealFormat4;
    v18[4] = @"Ready";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
    v19[4] = commonTypeDict_RealFormat5;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v19[0] = commonTypeDict_RealFormat;
    v18[1] = @"Hovering";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v19[1] = commonTypeDict_RealFormat2;
    v18[2] = @"NotTracking";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v19[2] = commonTypeDict_RealFormat3;
    v18[3] = @"SampleTime";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v19[3] = commonTypeDict_RealFormat4;
    v18[4] = @"TouchDownCount";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v19[4] = commonTypeDict_IntegerFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
    v19[0] = commonTypeDict_RealFormat;
    v18[1] = @"Hovering";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
    v19[1] = commonTypeDict_RealFormat2;
    v18[2] = @"NotTracking";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
    v19[2] = commonTypeDict_RealFormat3;
    v18[3] = @"SampleTime";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v19[3] = commonTypeDict_RealFormat4;
    v18[4] = @"TouchDownCount";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v19[4] = commonTypeDict_IntegerFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v17[0] = commonTypeDict_IntegerFormat;
    v16[1] = @"PeekCount";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v17[1] = commonTypeDict_IntegerFormat2;
    v16[2] = @"PopCount";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v17[2] = commonTypeDict_IntegerFormat3;
    v16[3] = @"PeekDuration";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
    v17[3] = commonTypeDict_RealFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v15[0] = commonTypeDict_StringFormat;
    v14[1] = @"qos";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v15[1] = commonTypeDict_IntegerFormat;
    v14[2] = @"count";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v15[2] = commonTypeDict_IntegerFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v15[0] = commonTypeDict_StringFormat;
    v14[1] = @"samplingRateMS";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v15[1] = commonTypeDict_IntegerFormat;
    v14[2] = @"cumulativeSamplingTimeMS";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v15[2] = commonTypeDict_IntegerFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v12[1] = @"cumulativeSamplingTimeMS";
    v13[0] = commonTypeDict_StringFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v13[1] = commonTypeDict_IntegerFormat;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v19[0] = commonTypeDict_IntegerFormat;
    v18[1] = @"pollsRequested";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v19[1] = commonTypeDict_IntegerFormat2;
    v18[2] = @"cumulativeSamplingTimeMS";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v19[2] = commonTypeDict_IntegerFormat3;
    v18[3] = @"positiveOutcomes";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v19[3] = commonTypeDict_IntegerFormat4;
    v18[4] = @"negativeOutcomes";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v19[4] = commonTypeDict_IntegerFormat5;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v31[0] = commonTypeDict_IntegerFormat;
    v30[1] = @"DR_0";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v31[1] = commonTypeDict_IntegerFormat2;
    v30[2] = @"DR_1";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v31[2] = commonTypeDict_IntegerFormat3;
    v30[3] = @"DR_2";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v31[3] = commonTypeDict_IntegerFormat4;
    v30[4] = @"DR_3";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v31[4] = commonTypeDict_IntegerFormat5;
    v30[5] = @"DR_4";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v31[5] = commonTypeDict_IntegerFormat6;
    v30[6] = @"DR_5";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v31[6] = commonTypeDict_IntegerFormat7;
    v30[7] = @"DR_6";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v31[7] = commonTypeDict_IntegerFormat8;
    v30[8] = @"DR_7";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v31[8] = commonTypeDict_IntegerFormat9;
    v30[9] = @"DR_8";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v31[9] = commonTypeDict_IntegerFormat10;
    v30[10] = @"DR_9";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v31[10] = commonTypeDict_IntegerFormat11;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v31[0] = commonTypeDict_IntegerFormat;
    v30[1] = @"DR_0";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v31[1] = commonTypeDict_IntegerFormat2;
    v30[2] = @"DR_1";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v31[2] = commonTypeDict_IntegerFormat3;
    v30[3] = @"DR_2";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v31[3] = commonTypeDict_IntegerFormat4;
    v30[4] = @"DR_3";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v31[4] = commonTypeDict_IntegerFormat5;
    v30[5] = @"DR_4";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v31[5] = commonTypeDict_IntegerFormat6;
    v30[6] = @"DR_5";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v31[6] = commonTypeDict_IntegerFormat7;
    v30[7] = @"DR_6";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v31[7] = commonTypeDict_IntegerFormat8;
    v30[8] = @"DR_7";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v31[8] = commonTypeDict_IntegerFormat9;
    v30[9] = @"DR_8";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v31[9] = commonTypeDict_IntegerFormat10;
    v30[10] = @"DR_9";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v31[10] = commonTypeDict_IntegerFormat11;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v12[1] = @"count";
    v13[0] = commonTypeDict_IntegerFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v13[1] = commonTypeDict_IntegerFormat2;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v31[0] = commonTypeDict_IntegerFormat;
    v30[1] = @"DR_0";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v31[1] = commonTypeDict_IntegerFormat2;
    v30[2] = @"DR_1";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v31[2] = commonTypeDict_IntegerFormat3;
    v30[3] = @"DR_2";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v31[3] = commonTypeDict_IntegerFormat4;
    v30[4] = @"DR_3";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v31[4] = commonTypeDict_IntegerFormat5;
    v30[5] = @"DR_4";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v31[5] = commonTypeDict_IntegerFormat6;
    v30[6] = @"DR_5";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v31[6] = commonTypeDict_IntegerFormat7;
    v30[7] = @"DR_6";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v31[7] = commonTypeDict_IntegerFormat8;
    v30[8] = @"DR_7";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v31[8] = commonTypeDict_IntegerFormat9;
    v30[9] = @"DR_8";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v31[9] = commonTypeDict_IntegerFormat10;
    v30[10] = @"DR_9";
    mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
    v31[10] = commonTypeDict_IntegerFormat11;
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
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v21[0] = commonTypeDict_IntegerFormat;
    v20[1] = @"duration";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v21[1] = commonTypeDict_IntegerFormat2;
    v20[2] = @"bucket_0";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v21[2] = commonTypeDict_IntegerFormat3;
    v20[3] = @"bucket_1";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v21[3] = commonTypeDict_IntegerFormat4;
    v20[4] = @"bucket_2";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v21[4] = commonTypeDict_IntegerFormat5;
    v20[5] = @"bucket_3";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v21[5] = commonTypeDict_IntegerFormat6;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = @"wall_energy_consumed";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v17[1] = commonTypeDict_RealFormat;
  v16[2] = @"system_energy_consumed";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v17[2] = commonTypeDict_RealFormat2;
  v16[3] = @"adapter_family";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v17[3] = commonTypeDict_IntegerFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v21[0] = commonTypeDict_StringFormat;
  v20[1] = @"ServiceName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v21[1] = commonTypeDict_StringFormat2;
  v20[2] = @"DRTN";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v21[2] = commonTypeDict_IntegerFormat;
  v20[3] = @"DUPTYPE";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v21[3] = commonTypeDict_IntegerFormat2;
  v20[4] = @"CONFIG";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v21[4] = commonTypeDict_StringFormat3;
  v20[5] = @"DCCFG";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v21[5] = commonTypeDict_StringFormat4;
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
    entryEventIntervalDefinitionAirTrafficAssetDownload = [self entryEventIntervalDefinitionAirTrafficAssetDownload];
    v17[0] = entryEventIntervalDefinitionAirTrafficAssetDownload;
    v16[1] = @"AnimatedStickerCreation";
    entryEventIntervalDefinitionAnimatedStickerCreation = [self entryEventIntervalDefinitionAnimatedStickerCreation];
    v17[1] = entryEventIntervalDefinitionAnimatedStickerCreation;
    v16[2] = @"CoreDuet_KnowledgeSync";
    entryEventIntervalDefinitionCoreDuetKnowledgeSync = [self entryEventIntervalDefinitionCoreDuetKnowledgeSync];
    v17[2] = entryEventIntervalDefinitionCoreDuetKnowledgeSync;
    v16[3] = @"RapportReceivedMessage";
    entryEventIntervalDefinitionRapportReceivedMessage = [self entryEventIntervalDefinitionRapportReceivedMessage];
    v17[3] = entryEventIntervalDefinitionRapportReceivedMessage;
    v16[4] = @"SpotlightIndexes";
    entryEventIntervalDefinitionSpotlightIndexes = [self entryEventIntervalDefinitionSpotlightIndexes];
    v17[4] = entryEventIntervalDefinitionSpotlightIndexes;
    v16[5] = @"SpotlightQueries";
    entryEventIntervalDefinitionSpotlightQueries = [self entryEventIntervalDefinitionSpotlightQueries];
    v17[5] = entryEventIntervalDefinitionSpotlightQueries;
    v16[6] = @"StaticStickerCreation";
    entryEventIntervalDefinitionStaticStickerCreation = [self entryEventIntervalDefinitionStaticStickerCreation];
    v17[6] = entryEventIntervalDefinitionStaticStickerCreation;
    v16[7] = @"UserSafetyProcessing";
    entryEventIntervalDefinitionUserSafety = [self entryEventIntervalDefinitionUserSafety];
    v17[7] = entryEventIntervalDefinitionUserSafety;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:8];
  }

  else
  {
    v14[0] = @"RapportReceivedMessage";
    entryEventIntervalDefinitionAirTrafficAssetDownload = [self entryEventIntervalDefinitionRapportReceivedMessage];
    v15[0] = entryEventIntervalDefinitionAirTrafficAssetDownload;
    v14[1] = @"SpotlightIndexes";
    entryEventIntervalDefinitionAnimatedStickerCreation = [self entryEventIntervalDefinitionSpotlightIndexes];
    v15[1] = entryEventIntervalDefinitionAnimatedStickerCreation;
    v14[2] = @"SpotlightQueries";
    entryEventIntervalDefinitionCoreDuetKnowledgeSync = [self entryEventIntervalDefinitionSpotlightQueries];
    v15[2] = entryEventIntervalDefinitionCoreDuetKnowledgeSync;
    v14[3] = @"UserSafetyProcessing";
    entryEventIntervalDefinitionRapportReceivedMessage = [self entryEventIntervalDefinitionUserSafety];
    v15[3] = entryEventIntervalDefinitionRapportReceivedMessage;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v30[0] = commonTypeDict_DateFormat;
  v29[1] = @"linkType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v30[1] = commonTypeDict_IntegerFormat;
  v29[2] = @"dataclass";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v30[2] = commonTypeDict_StringFormat;
  v29[3] = @"assetType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v30[3] = commonTypeDict_StringFormat2;
  v29[4] = @"sumBytesRequested";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v30[4] = commonTypeDict_IntegerFormat2;
  v29[5] = @"countDownloadsBegun";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v30[5] = commonTypeDict_IntegerFormat3;
  v29[6] = @"countCanUseCellular";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v30[6] = commonTypeDict_IntegerFormat4;
  v29[7] = @"countIsForeground";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v30[7] = commonTypeDict_IntegerFormat5;
  v29[8] = @"sumBytesDownloaded";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v30[8] = commonTypeDict_IntegerFormat6;
  v29[9] = @"countDownloadsSucceeded";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v30[9] = commonTypeDict_IntegerFormat7;
  v29[10] = @"countDownloadsFailed";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v30[10] = commonTypeDict_IntegerFormat8;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"timestampEnd";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v12[1] = commonTypeDict_DateFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v11[1] = @"isEmpty";
  v12[0] = commonTypeDict_DateFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v12[1] = commonTypeDict_BoolFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v25[0] = commonTypeDict_DateFormat;
  v24[1] = @"type";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v25[1] = commonTypeDict_IntegerFormat;
  v24[2] = @"bytes";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v25[2] = commonTypeDict_IntegerFormat2;
  v24[3] = @"identifier";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat_withBundleID];
  v25[3] = commonTypeDict_StringFormat_withBundleID;
  v24[4] = @"appID";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat_withBundleID];
  v25[4] = commonTypeDict_StringFormat_withBundleID2;
  v24[5] = @"linkType";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v25[5] = commonTypeDict_IntegerFormat3;
  v24[6] = @"messages";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v25[6] = commonTypeDict_IntegerFormat4;
  v24[7] = @"senderID";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v25[7] = commonTypeDict_StringFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v35[0] = commonTypeDict_DateFormat;
  v34[1] = @"BundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v35[1] = commonTypeDict_StringFormat_withBundleID;
  v34[2] = @"IndexCount";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v35[2] = commonTypeDict_IntegerFormat;
  v34[3] = @"DeletedCount";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v35[3] = commonTypeDict_IntegerFormat2;
  v34[4] = @"WatchdogCount";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v35[4] = commonTypeDict_IntegerFormat3;
  v34[5] = @"ClientMitigationCount";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v35[5] = commonTypeDict_IntegerFormat4;
  v34[6] = @"processName";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v35[6] = commonTypeDict_StringFormat;
  v34[7] = @"computeEmbeddings";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v35[7] = commonTypeDict_IntegerFormat5;
  v34[8] = @"computeEmbeddingsForQuery";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v35[8] = commonTypeDict_IntegerFormat6;
  v34[9] = @"computeKeyphrases";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v35[9] = commonTypeDict_IntegerFormat7;
  v34[10] = @"reindexItemCount";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v35[10] = commonTypeDict_IntegerFormat8;
  v34[11] = @"reindexAll";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v35[11] = commonTypeDict_IntegerFormat9;
  v34[12] = @"reason";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v35[12] = commonTypeDict_IntegerFormat10;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v24[0] = commonTypeDict_DateFormat;
  v23[1] = @"BundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v24[1] = commonTypeDict_StringFormat_withBundleID;
  v23[2] = @"Reason";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v24[2] = commonTypeDict_StringFormat;
  v23[3] = @"StartQueryCount";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v24[3] = commonTypeDict_IntegerFormat;
  v23[4] = @"CancelQueryCount";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v24[4] = commonTypeDict_IntegerFormat2;
  v23[5] = @"ResultCount";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v24[5] = commonTypeDict_IntegerFormat3;
  v23[6] = @"processName";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v24[6] = commonTypeDict_StringFormat2;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v10 = commonTypeDict_DateFormat;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v17[0] = commonTypeDict_IntegerFormat;
  v16[1] = @"ClientBundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v17[1] = commonTypeDict_StringFormat_withBundleID;
  v16[2] = @"EndTimestamp";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v17[2] = commonTypeDict_DateFormat;
  v16[3] = @"IsCacheReused";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v17[3] = commonTypeDict_BoolFormat;
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
    entryAggregateDefinitionTouchEvents = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v29[0] = entryAggregateDefinitionTouchEvents;
    v28[1] = *MEMORY[0x277D3F540];
    v24[0] = @"name";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v24[1] = @"count";
    v25[0] = commonTypeDict_StringFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_aggregateFunction_sum];
    v25[1] = commonTypeDict_RealFormat_aggregateFunction_sum;
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
    entryAggregateDefinitionKeyboardWordsAndCharacters = [self entryAggregateDefinitionKeyboardWordsAndCharacters];
    v31[1] = entryAggregateDefinitionKeyboardWordsAndCharacters;
    v30[2] = @"KeyboardTime";
    entryAggregateDefinitionKeyboardTime = [self entryAggregateDefinitionKeyboardTime];
    v31[2] = entryAggregateDefinitionKeyboardTime;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  }

  else
  {
    v18 = @"TouchEvents";
    entryAggregateDefinitionTouchEvents = [self entryAggregateDefinitionTouchEvents];
    v19 = entryAggregateDefinitionTouchEvents;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[0] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
  v24[1] = @"CharactersTapped";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[1] = commonTypeDict_IntegerFormat_aggregateFunction_sum2;
  v24[2] = @"WordsPathed";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[2] = commonTypeDict_IntegerFormat_aggregateFunction_sum3;
  v24[3] = @"CharactersPathed";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v25[3] = commonTypeDict_IntegerFormat_aggregateFunction_sum4;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v20[1] = @"TimeSpentPathTyping";
  v21[0] = commonTypeDict_IntegerFormat_aggregateFunction_sum;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat_aggregateFunction_sum2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v21[1] = commonTypeDict_IntegerFormat_aggregateFunction_sum2;
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
    selfCopy = 0;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PLXPCAgent;
    v4 = [(PLAgent *)&v21 init];
    if (v4)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      localCache = v4->_localCache;
      v4->_localCache = dictionary;

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      inferenceEntries = v4->_inferenceEntries;
      v4->_inferenceEntries = dictionary2;

      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      summarizationEntries = v4->_summarizationEntries;
      v4->_summarizationEntries = dictionary3;

      dictionary4 = [MEMORY[0x277CBEB38] dictionary];
      summarizedNotificationEntries = v4->_summarizedNotificationEntries;
      v4->_summarizedNotificationEntries = dictionary4;

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
    selfCopy = self;
  }

  return selfCopy;
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
  v3 = *self;
  if (*self)
  {
    v4 = [*self objectForKeyedSubscript:@"noiseEnabled"];
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

- (id)entryRequestResponseForPayload:(id)payload
{
  v53 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  [v6 setObject:v7 forKeyedSubscript:@"timedout"];

  v8 = [payloadCopy objectForKeyedSubscript:@"timeout"];

  if (v8)
  {
    v9 = [payloadCopy objectForKeyedSubscript:@"timeout"];
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 60.0;
  }

  v12 = [payloadCopy objectForKeyedSubscript:@"Operator"];

  if (v12)
  {
    v13 = MEMORY[0x277D3F1A0];
    v40 = payloadCopy;
    v14 = [payloadCopy objectForKeyedSubscript:@"Operator"];
    v15 = [v13 entryKeysForOperatorName:v14];
    [v5 addObjectsFromArray:v15];
  }

  else
  {
    v16 = [payloadCopy objectForKeyedSubscript:@"EntryKey"];

    if (!v16)
    {
      mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
      agents = [mEMORY[0x277D3F2A0] agents];
      [agents log];

      mEMORY[0x277D3F2A0]2 = [MEMORY[0x277D3F2A0] sharedCore];
      services = [mEMORY[0x277D3F2A0]2 services];
      [services log];

      v32 = &unk_28714A6D8;
      goto LABEL_25;
    }

    v40 = payloadCopy;
    v14 = [payloadCopy objectForKeyedSubscript:@"EntryKey"];
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
    selfCopy = self;
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

        serializedForJSON = [v25 serializedForJSON];
        if (serializedForJSON)
        {
          [v6 setObject:serializedForJSON forKey:v22];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
          v31 = v30 = v20;
          [v6 setObject:v31 forKey:v22];

          v20 = v30;
          self = selfCopy;
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
  payloadCopy = v40;
LABEL_25:

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)handleSBCNotificationWithUserInfo:(id)info
{
  v14 = [info objectForKeyedSubscript:@"entry"];
  if (v14)
  {
    null = [MEMORY[0x277CBEB68] null];
    v5 = [v14 isEqual:null];

    if ((v5 & 1) == 0)
    {
      entryDate = [v14 entryDate];
      [entryDate timeIntervalSince1970];
      self->_lastSBCupdateTimestamp = v7;

      inferenceEntries = [(PLXPCAgent *)self inferenceEntries];
      [(PLXPCAgent *)self distributeBundleIDEntriesToWeight:inferenceEntries toDistributionID:53];

      [(NSMutableDictionary *)self->_inferenceEntries removeAllObjects];
      summarizationEntries = [(PLXPCAgent *)self summarizationEntries];
      [(PLXPCAgent *)self distributeBundleIDEntriesToWeight:summarizationEntries toDistributionID:54];

      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      summarizedNotificationEntries = [(PLXPCAgent *)self summarizedNotificationEntries];
      allKeys = [summarizedNotificationEntries allKeys];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [mEMORY[0x277D3F0C0] createQualificationEventBackwardWithQualificationID:17 withChildNodeNames:allKeys withEndDate:monotonicDate];

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

- (void)logEventAggregateTelNotification:(id)notification
{
  notificationCopy = notification;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Aggregate"];
  if (notificationCopy)
  {
    v5 = [notificationCopy objectForKeyedSubscript:@"telNotification"];
    if (v5)
    {
      v6 = [notificationCopy objectForKeyedSubscript:@"telNotification"];
      if ([v6 isEqualToString:@"kCTRegistrationCellChangedNotification"])
      {
      }

      else
      {
        v7 = [notificationCopy objectForKeyedSubscript:@"telNotification"];
        v8 = [v7 isEqualToString:@"kCTCellMonitorUpdateNotification"];

        if (!v8)
        {
          goto LABEL_9;
        }
      }

      v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
      if (v9)
      {
        v10 = [notificationCopy objectForKeyedSubscript:@"telNotification"];
        [v9 setObject:v10 forKeyedSubscript:@"name"];

        [v9 setObject:&unk_287146978 forKeyedSubscript:@"count"];
        [(PLOperator *)self logEntry:v9];
      }
    }
  }

LABEL_9:
}

- (void)logEventBackwardSiriFalseAlarm:(id)alarm
{
  v4 = *MEMORY[0x277D3F5C8];
  alarmCopy = alarm;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SiriAlarm"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:alarmCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardKeyboardTrackpad:(id)trackpad
{
  v4 = *MEMORY[0x277D3F5C8];
  trackpadCopy = trackpad;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"KeyboardTrackpadResidencies"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:trackpadCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardActiveStylus:(id)stylus
{
  v4 = *MEMORY[0x277D3F5C8];
  stylusCopy = stylus;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"ActiveStylusInking"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:stylusCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardPassiveStylus:(id)stylus
{
  v4 = *MEMORY[0x277D3F5C8];
  stylusCopy = stylus;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"PassiveStylusInking"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:stylusCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardKeyboardSession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    v54 = sessionCopy;
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

    sessionCopy = v54;
  }
}

- (void)logEventPointSleepLock:(id)lock
{
  lockCopy = lock;
  if (+[PLUtilities isHealthDataSubmissionAllowed])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SleepLock"];
    v6 = objc_alloc(MEMORY[0x277D3F190]);
    v7 = [lockCopy objectForKeyedSubscript:@"SleepLock"];
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

- (void)logEventPointWeatherNotificationState:(id)state
{
  v4 = *MEMORY[0x277D3F5E8];
  stateCopy = state;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"WeatherNotificationState"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:stateCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointWeatherNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"WeatherNotification"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:notificationCopy];
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

- (void)logEventPointNetworkRelayBTLinkAssertion:(id)assertion
{
  v4 = *MEMORY[0x277D3F5E8];
  assertionCopy = assertion;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"NetworkRelayBTLinkAssertion"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:assertionCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointNetworkRelayTerminusBTWake:(id)wake
{
  v4 = *MEMORY[0x277D3F5E8];
  wakeCopy = wake;
  v13 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"TerminusBTWake"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13];
  v7 = MEMORY[0x277CCABB0];
  v8 = [wakeCopy objectForKeyedSubscript:@"Packet SPI"];
  v9 = [v7 numberWithUnsignedInt:{objc_msgSend(v8, "unsignedIntValue")}];
  [v6 setObject:v9 forKeyedSubscript:@"spi"];

  v10 = MEMORY[0x277CCABB0];
  v11 = [wakeCopy objectForKeyedSubscript:@"Packet sequence number"];

  v12 = [v10 numberWithUnsignedInt:{objc_msgSend(v11, "unsignedIntValue")}];
  [v6 setObject:v12 forKeyedSubscript:@"seqNo"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointNamePortraitHighlightsResult:(id)result
{
  resultCopy = result;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"PortraitHighlightsResult"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [resultCopy objectForKeyedSubscript:@"client"];
  if (v6)
  {
    v7 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:v6 error:0];
    v8 = v7;
    if (v7)
    {
      bundleIdentifier = [v7 bundleIdentifier];
      [v5 setObject:bundleIdentifier forKeyedSubscript:@"BundleID"];
    }

    v10 = [v5 objectForKeyedSubscript:@"BundleID"];

    if (!v10)
    {
      [v5 setObject:v6 forKeyedSubscript:@"BundleID"];
    }
  }

  v11 = [resultCopy objectForKeyedSubscript:@"limit"];
  [v5 setObject:v11 forKeyedSubscript:@"limit"];

  v12 = MEMORY[0x277CCABB0];
  v13 = [resultCopy objectForKeyedSubscript:@"portraitResultCount"];
  v14 = [v12 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v13, "intValue"), 2)}];
  [v5 setObject:v14 forKeyedSubscript:@"portraitResultCount"];

  v15 = [resultCopy objectForKeyedSubscript:@"portraitCacheDate"];
  if (v15)
  {
    null = [MEMORY[0x277CBEB68] null];
    v17 = [v15 isEqual:null];

    if ((v17 & 1) == 0)
    {
      convertFromSystemToMonotonic = [v15 convertFromSystemToMonotonic];
      [v5 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"portraitCacheDate"];
    }
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointNameSpotlightHighlightsResult:(id)result
{
  v4 = *MEMORY[0x277D3F5E8];
  resultCopy = result;
  v15 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SpotlightHighlightsResult"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withRawData:resultCopy];
  v7 = [resultCopy objectForKeyedSubscript:@"client"];

  if (v7)
  {
    v8 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:v7 error:0];
    v9 = v8;
    if (v8)
    {
      bundleIdentifier = [v8 bundleIdentifier];
      [v6 setObject:bundleIdentifier forKeyedSubscript:@"BundleID"];
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

- (void)logEventPointTestMarker:(id)marker
{
  v4 = *MEMORY[0x277D3F5E8];
  markerCopy = marker;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"TestMarker"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:markerCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDASyncStart:(id)start
{
  v4 = *MEMORY[0x277D3F5E8];
  startCopy = start;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"DASyncStart"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:startCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDACalendarItemsDownloaded:(id)downloaded
{
  v4 = *MEMORY[0x277D3F5E8];
  downloadedCopy = downloaded;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"DACalendarItemsDownloaded"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:downloadedCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDACalendarItemsUploaded:(id)uploaded
{
  v4 = *MEMORY[0x277D3F5E8];
  uploadedCopy = uploaded;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"DACalendarItemsUploaded"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:uploadedCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMailFetch:(id)fetch
{
  v4 = *MEMORY[0x277D3F5E8];
  fetchCopy = fetch;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"MailFetch"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:fetchCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointNanoMailSession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    v36 = sessionCopy;
    sessionCopy = [MEMORY[0x277D3F208] isWatch];
    if (sessionCopy)
    {
      v5 = [v36 objectForKeyedSubscript:@"Category"];

      if (v5)
      {
        v6 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"NanoMailSession"];
        monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
        v8 = [v36 objectForKeyedSubscript:@"Timestamp"];

        if (v8)
        {
          v9 = MEMORY[0x277CBEAA8];
          v10 = [v36 objectForKeyedSubscript:@"Timestamp"];
          [v10 doubleValue];
          v11 = [v9 dateWithTimeIntervalSince1970:?];
          convertFromSystemToMonotonic = [v11 convertFromSystemToMonotonic];

          monotonicDate = convertFromSystemToMonotonic;
        }

        if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
        {
          v13 = MEMORY[0x277CBEAA8];
          [monotonicDate timeIntervalSince1970];
          v15 = [v13 dateWithTimeIntervalSince1970:round(v14 / 10.0) * 10.0];

          monotonicDate = v15;
        }

        v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withDate:monotonicDate];
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

  MEMORY[0x2821F96F8](sessionCopy);
}

- (void)logEventPointJetsam:(unint64_t)jetsam
{
  storage = [(PLOperator *)self storage];
  [storage flushCachesWithReason:@"Jetsam"];

  v8 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Jetsam"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:jetsam];
  [v6 setObject:v7 forKeyedSubscript:@"Level"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointBackgroundTransfer:(id)transfer
{
  if (transfer)
  {
    v22 = [transfer mutableCopy];
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
        absoluteString = [v8 absoluteString];
        [v22 setObject:absoluteString forKeyedSubscript:@"errorFailingURL"];
      }
    }

    v10 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"BackgroundTransfer"];
    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:v22];
    v12 = [v11 objectForKeyedSubscript:@"bytesReceived"];
    intValue = [v12 intValue];

    if (intValue >= 101)
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = [v11 objectForKeyedSubscript:@"bytesReceived"];
      v16 = [v14 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v15, "intValue"), 2)}];
      [v11 setObject:v16 forKeyedSubscript:@"bytesReceived"];
    }

    v17 = [v11 objectForKeyedSubscript:@"bytesSent"];
    intValue2 = [v17 intValue];

    if (intValue2 >= 101)
    {
      v19 = MEMORY[0x277CCABB0];
      v20 = [v11 objectForKeyedSubscript:@"bytesSent"];
      v21 = [v19 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v20, "intValue"), 2)}];
      [v11 setObject:v21 forKeyedSubscript:@"bytesSent"];
    }

    [(PLOperator *)self logEntry:v11];
  }
}

- (void)logEventPointNavd:(id)navd
{
  navdCopy = navd;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"navd"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [navdCopy objectForKey:@"Event"];
  v7 = [v6 isEqualToString:@"ReceivedNewHypothesis"];

  if (v7)
  {
    v8 = &unk_287146990;
  }

  else
  {
    v9 = [navdCopy objectForKey:@"Event"];
    v10 = [v9 isEqualToString:@"SendingETARequest"];

    if (v10)
    {
      v8 = &unk_2871469A8;
    }

    else
    {
      v11 = [navdCopy objectForKey:@"Event"];
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

- (void)logEventPointNavdMapsWidgetSession:(id)session
{
  v4 = *MEMORY[0x277D3F5E8];
  sessionCopy = session;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"MapsWidgetSession"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:sessionCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointNavdGeoNetworkActivity:(id)activity
{
  v4 = *MEMORY[0x277D3F5E8];
  activityCopy = activity;
  v6 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"GEONetworkActivity"];
  [(PLXPCAgent *)self logNetworkActivity:activityCopy withEntryKey:v6];
}

- (void)logNetworkActivity:(id)activity withEntryKey:(id)key
{
  selfCopy = self;
  v46 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  keyCopy = key;
  v33 = [activityCopy objectForKeyedSubscript:@"StartUnix"];
  v32 = [activityCopy objectForKeyedSubscript:@"EndUnix"];
  v7 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [activityCopy allKeys];
  v8 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    v27 = *v39;
    v28 = activityCopy;
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
        v13 = [activityCopy objectForKeyedSubscript:{v12, selfCopy}];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v31 = v11;
          v15 = [activityCopy objectForKeyedSubscript:v12];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          allKeys = [v15 allKeys];
          v17 = [allKeys countByEnumeratingWithState:&v34 objects:v44 count:16];
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
                  objc_enumerationMutation(allKeys);
                }

                v21 = *(*(&v34 + 1) + 8 * i);
                v22 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:keyCopy];
                [v22 setObject:v33 forKeyedSubscript:@"StartUnix"];
                [v22 setObject:v32 forKeyedSubscript:@"EndUnix"];
                [v22 setObject:v12 forKeyedSubscript:@"Client"];
                [v22 setObject:v21 forKeyedSubscript:@"NetworkingReason"];
                v23 = [v15 objectForKeyedSubscript:v21];
                [v22 setObject:v23 forKeyedSubscript:@"RequestCount"];

                [v7 addObject:v22];
              }

              v18 = [allKeys countByEnumeratingWithState:&v34 objects:v44 count:16];
            }

            while (v18);
          }

          activityCopy = v28;
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

  v42 = keyCopy;
  v43 = v7;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  [(PLOperator *)selfCopy logEntries:v24 withGroupID:keyCopy];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointNavdMapsNavigationStateEvent:(id)event
{
  v4 = *MEMORY[0x277D3F5E8];
  eventCopy = event;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"MapsNavigationStateEvent"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:eventCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMobileBackupStatistics:(id)statistics
{
  v21 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MobileBackupStatistics"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [statisticsCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = objc_alloc(MEMORY[0x277D3F190]);
        v13 = [statisticsCopy objectForKeyedSubscript:v11];
        v14 = [v12 initWithEntryKey:v5 withRawData:v13];

        [(PLOperator *)self logEntry:v14];
        ++v10;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointMobileBackupEvents:(id)events
{
  v4 = *MEMORY[0x277D3F5E8];
  eventsCopy = events;
  v21 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"MobileBackupEvents"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v21 withRawData:eventsCopy];

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
  bOOLValue = [v15 BOOLValue];

  if (bOOLValue)
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

- (void)logEventPointADD:(id)d
{
  dCopy = d;
  if (+[PLUtilities isSafetyDataSubmissionAllowed])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ADD"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:dCopy];
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

- (void)logEventPointAppActivationPerformanceActivationData:(id)data
{
  dataCopy = data;
  if ([(PLXPCAgent *)self shouldLogAppActivationData])
  {
    v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppActivationPerformanceActivationData"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:dataCopy];
    v6 = [dataCopy objectForKeyedSubscript:@"Timestamp"];

    if (v6)
    {
      v7 = [dataCopy objectForKeyedSubscript:@"Timestamp"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
      convertFromSystemToMonotonic = [v10 convertFromSystemToMonotonic];
      [v5 setEntryDate:convertFromSystemToMonotonic];

      [(PLOperator *)self logEntry:v5];
    }
  }
}

- (void)logEventPointAppActivationPerformanceProcessData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  selfCopy = self;
  if ([(PLXPCAgent *)self shouldLogAppActivationData])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppActivationPerformanceProcessData"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [dataCopy allKeys];
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
          v12 = [dataCopy objectForKeyedSubscript:v10];
          v13 = [v11 initWithEntryKey:v5 withRawData:v12];

          v14 = [dataCopy objectForKeyedSubscript:v10];
          v15 = [v14 objectForKeyedSubscript:@"Timestamp"];

          if (v15)
          {
            v16 = [dataCopy objectForKeyedSubscript:v10];
            v17 = [v16 objectForKeyedSubscript:@"Timestamp"];
            [v17 doubleValue];
            v19 = v18;

            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v19];
            convertFromSystemToMonotonic = [v20 convertFromSystemToMonotonic];
            [v13 setEntryDate:convertFromSystemToMonotonic];

            [(PLOperator *)selfCopy logEntry:v13];
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

- (void)logEventPointAppActivationPerformanceCPUStatistics:(id)statistics
{
  v30 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  selfCopy = self;
  if ([(PLXPCAgent *)self shouldLogAppActivationData])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppActivationPerformanceCPUStatistics"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [statisticsCopy allKeys];
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
          v12 = [statisticsCopy objectForKeyedSubscript:v10];
          v13 = [v11 initWithEntryKey:v5 withRawData:v12];

          v14 = [statisticsCopy objectForKeyedSubscript:v10];
          v15 = [v14 objectForKeyedSubscript:@"Timestamp"];

          if (v15)
          {
            v16 = [statisticsCopy objectForKeyedSubscript:v10];
            v17 = [v16 objectForKeyedSubscript:@"Timestamp"];
            [v17 doubleValue];
            v19 = v18;

            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v19];
            convertFromSystemToMonotonic = [v20 convertFromSystemToMonotonic];
            [v13 setEntryDate:convertFromSystemToMonotonic];

            [(PLOperator *)selfCopy logEntry:v13];
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

- (void)logEventPointAppActivationPerformanceMemoryStatistics:(id)statistics
{
  v30 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  selfCopy = self;
  if ([(PLXPCAgent *)self shouldLogAppActivationData])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppActivationPerformanceMemoryStatistics"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [statisticsCopy allKeys];
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
          v12 = [statisticsCopy objectForKeyedSubscript:v10];
          v13 = [v11 initWithEntryKey:v5 withRawData:v12];

          v14 = [statisticsCopy objectForKeyedSubscript:v10];
          v15 = [v14 objectForKeyedSubscript:@"Timestamp"];

          if (v15)
          {
            v16 = [statisticsCopy objectForKeyedSubscript:v10];
            v17 = [v16 objectForKeyedSubscript:@"Timestamp"];
            [v17 doubleValue];
            v19 = v18;

            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v19];
            convertFromSystemToMonotonic = [v20 convertFromSystemToMonotonic];
            [v13 setEntryDate:convertFromSystemToMonotonic];

            [(PLOperator *)selfCopy logEntry:v13];
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

- (void)logEventPointAppActivationPerformancePowerStateStatistics:(id)statistics
{
  v30 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  selfCopy = self;
  if ([(PLXPCAgent *)self shouldLogAppActivationData])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppActivationPerformancePowerStateStatistics"];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [statisticsCopy allKeys];
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
          v12 = [statisticsCopy objectForKeyedSubscript:v10];
          v13 = [v11 initWithEntryKey:v5 withRawData:v12];

          v14 = [statisticsCopy objectForKeyedSubscript:v10];
          v15 = [v14 objectForKeyedSubscript:@"Timestamp"];

          if (v15)
          {
            v16 = [statisticsCopy objectForKeyedSubscript:v10];
            v17 = [v16 objectForKeyedSubscript:@"Timestamp"];
            [v17 doubleValue];
            v19 = v18;

            v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v19];
            convertFromSystemToMonotonic = [v20 convertFromSystemToMonotonic];
            [v13 setEntryDate:convertFromSystemToMonotonic];

            [(PLOperator *)selfCopy logEntry:v13];
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

- (void)logEventForwardAvailabilityModes:(id)modes
{
  v4 = *MEMORY[0x277D3F5D0];
  modesCopy = modes;
  v15 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AvailabilityModes"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withRawData:modesCopy];
  v7 = MEMORY[0x277CBEAA8];
  v8 = [modesCopy objectForKeyedSubscript:@"timestamp"];
  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];
  [convertFromSystemToMonotonic timeIntervalSince1970];
  v11 = [v7 dateWithTimeIntervalSince1970:round(v10)];
  [v6 setEntryDate:v11];

  v12 = MEMORY[0x277CCABB0];
  v13 = [modesCopy objectForKeyedSubscript:@"SemanticType"];

  v14 = [v12 numberWithUnsignedInt:{-[PLXPCAgent mapAvailabilityModeSemanticType:](self, "mapAvailabilityModeSemanticType:", objc_msgSend(v13, "intValue"))}];
  [v6 setObject:v14 forKeyedSubscript:@"SemanticType"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointFocusFilters:(id)filters
{
  filtersCopy = filters;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"FocusFilters"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:filtersCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [filtersCopy objectForKeyedSubscript:@"timestamp"];
  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];
  [convertFromSystemToMonotonic timeIntervalSince1970];
  v10 = [v6 dateWithTimeIntervalSince1970:round(v9)];
  [v5 setEntryDate:v10];

  if (([MEMORY[0x277D3F180] taskMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [filtersCopy objectForKeyedSubscript:@"SemanticType"];
    v13 = [v11 numberWithUnsignedInt:{-[PLXPCAgent mapAvailabilityModeSemanticType:](self, "mapAvailabilityModeSemanticType:", objc_msgSend(v12, "intValue"))}];
    [v5 setObject:v13 forKeyedSubscript:@"SemanticType"];
  }

  else
  {
    [v5 setObject:0 forKeyedSubscript:@"SemanticType"];
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointCloudKit:(id)kit
{
  kitCopy = kit;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CloudKit"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:kitCopy];
  v6 = [kitCopy objectForKeyedSubscript:@"CKRequestUUIDs"];
  v7 = [v6 count];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [kitCopy objectForKeyedSubscript:@"CKRequestUUIDs"];
    v10 = [v8 stringWithFormat:@"%@", v9];
    [v5 setObject:v10 forKeyedSubscript:@"CKRequestUUIDs"];
  }

  v11 = [kitCopy objectForKeyedSubscript:@"MMCSRequestUUIDs"];
  v12 = [v11 count];

  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [kitCopy objectForKeyedSubscript:@"MMCSRequestUUIDs"];
    v15 = [v13 stringWithFormat:@"%@", v14];
    [v5 setObject:v15 forKeyedSubscript:@"MMCSRequestUUIDs"];
  }

  v16 = [kitCopy objectForKeyedSubscript:@"CKProtoRequestOperationsByCount"];
  v17 = [v16 count];

  if (v17)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [kitCopy objectForKeyedSubscript:@"CKProtoRequestOperationsByCount"];
    v20 = [v19 description];
    v21 = [v18 stringWithFormat:@"%@", v20];
    [v5 setObject:v21 forKeyedSubscript:@"CKProtoRequestOperationsByCount"];
  }

  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v22 = [kitCopy objectForKeyedSubscript:@"operationGroupID"];

    if (v22)
    {
      v23 = [kitCopy objectForKeyedSubscript:@"operationGroupID"];
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
    intValue = [v33 intValue];

    if (intValue >= 1001)
    {
      v35 = MEMORY[0x277CCABB0];
      v36 = [v5 objectForKeyedSubscript:@"CKRecordsUploaded"];
      v37 = [v35 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v36, "intValue"), 3)}];
      [v5 setObject:v37 forKeyedSubscript:@"CKRecordsUploaded"];
    }

    v38 = [v5 objectForKeyedSubscript:@"CKRecordsDownloaded"];
    intValue2 = [v38 intValue];

    if (intValue2 >= 1001)
    {
      v40 = MEMORY[0x277CCABB0];
      v41 = [v5 objectForKeyedSubscript:@"CKRecordsDownloaded"];
      v42 = [v40 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v41, "intValue"), 3)}];
      [v5 setObject:v42 forKeyedSubscript:@"CKRecordsDownloaded"];
    }

    v43 = [v5 objectForKeyedSubscript:@"CKRecordsDeleted"];
    intValue3 = [v43 intValue];

    if (intValue3 >= 1001)
    {
      v45 = MEMORY[0x277CCABB0];
      v46 = [v5 objectForKeyedSubscript:@"CKRecordsDeleted"];
      v47 = [v45 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v46, "intValue"), 3)}];
      [v5 setObject:v47 forKeyedSubscript:@"CKRecordsDeleted"];
    }

    v48 = [v5 objectForKeyedSubscript:@"CKAssetsUploaded"];
    intValue4 = [v48 intValue];

    if (intValue4 >= 101)
    {
      v50 = MEMORY[0x277CCABB0];
      v51 = [v5 objectForKeyedSubscript:@"CKAssetsUploaded"];
      v52 = [v50 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v51, "intValue"), 2)}];
      [v5 setObject:v52 forKeyedSubscript:@"CKAssetsUploaded"];
    }

    v53 = [v5 objectForKeyedSubscript:@"CKAssetsDownloaded"];
    intValue5 = [v53 intValue];

    if (intValue5 >= 101)
    {
      v55 = MEMORY[0x277CCABB0];
      v56 = [v5 objectForKeyedSubscript:@"CKAssetsDownloaded"];
      v57 = [v55 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v56, "intValue"), 2)}];
      [v5 setObject:v57 forKeyedSubscript:@"CKAssetsDownloaded"];
    }
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointLocationVehicularDetectionSession:(id)session
{
  v4 = *MEMORY[0x277D3F5E8];
  sessionCopy = session;
  v14 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"VehicularDetection"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withRawData:sessionCopy];

  v7 = MEMORY[0x277CBEAA8];
  entryDate = [v6 entryDate];
  [entryDate timeIntervalSince1970];
  v10 = v9;
  entryDate2 = [v6 entryDate];
  [entryDate2 timeIntervalSince1970];
  *&v12 = v12;
  v13 = [v7 dateWithTimeIntervalSince1970:{round(v10 - fmodf(*&v12, 60.0))}];
  [v6 setEntryDate:v13];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMotionWakeReasonSession:(id)session
{
  v4 = *MEMORY[0x277D3F5E8];
  sessionCopy = session;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"MotionWakeReason"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:sessionCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointCommuteRefreshSession:(id)session
{
  v4 = *MEMORY[0x277D3F5E8];
  sessionCopy = session;
  v22 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"CommuteRefresh"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v22 withRawData:sessionCopy];

  v7 = [v6 objectForKeyedSubscript:@"LOIEntryDate"];
  LODWORD(sessionCopy) = [v7 intValue];

  if (sessionCopy >= 1)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [v6 objectForKeyedSubscript:@"LOIEntryDate"];
    intValue = [v9 intValue];
    v11 = [v6 objectForKeyedSubscript:@"LOIEntryDate"];
    intValue2 = [v11 intValue];
    v13 = [v8 numberWithInt:(intValue + 300 * (intValue2 / 300) - intValue2)];
    [v6 setObject:v13 forKeyedSubscript:@"LOIEntryDate"];
  }

  v14 = [v6 objectForKeyedSubscript:@"LOIExitDate"];
  intValue3 = [v14 intValue];

  if (intValue3 >= 1)
  {
    v16 = MEMORY[0x277CCABB0];
    v17 = [v6 objectForKeyedSubscript:@"LOIExitDate"];
    intValue4 = [v17 intValue];
    v19 = [v6 objectForKeyedSubscript:@"LOIExitDate"];
    intValue5 = [v19 intValue];
    v21 = [v16 numberWithInt:(intValue4 + 300 * (intValue5 / 300) - intValue5)];
    [v6 setObject:v21 forKeyedSubscript:@"LOIExitDate"];
  }

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointSecItemSession:(id)session
{
  v4 = *MEMORY[0x277D3F5E8];
  sessionCopy = session;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SecItem"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:sessionCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointSiriActivation:(id)activation
{
  activationCopy = activation;
  if (activationCopy && [MEMORY[0x277D3F208] isWatch])
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
    {
      v5 = MEMORY[0x277CBEAA8];
      [monotonicDate timeIntervalSince1970];
      v7 = [v5 dateWithTimeIntervalSince1970:round(v6 / 60.0) * 60.0];

      monotonicDate = v7;
    }

    v8 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SiriActivation"];
    v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:activationCopy];
    [v9 setEntryDate:monotonicDate];
    [(PLOperator *)self logEntry:v9];
  }
}

- (void)logEventPointAirPlayDiscoveryMode:(id)mode
{
  v4 = *MEMORY[0x277D3F5E8];
  modeCopy = mode;
  v10 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AirPlayDiscoveryMode"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [modeCopy objectForKeyedSubscript:@"Mode"];

  v8 = [(PLXPCAgent *)self modeTypeStringToEnum:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"Mode"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointShortcutsTriggerFired:(id)fired
{
  if (!fired)
  {
    return;
  }

  v15 = [fired mutableCopy];
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
      entryDate = [v10 entryDate];
      [entryDate timeIntervalSince1970];
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

- (void)logEventForwardSOSKVSRateLimitingEvent:(id)event
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = eventCopy;
  if (!eventCopy || ([eventCopy objectForKeyedSubscript:@"timestamp"], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
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
  convertFromSystemToMonotonic = [v15 convertFromSystemToMonotonic];

  v17 = [v5 objectForKeyedSubscript:@"peerShouldSend"];
  bOOLValue = [v17 BOOLValue];

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
        [v26 setEntryDate:convertFromSystemToMonotonic];
        [v26 setObject:v24 forKeyedSubscript:@"AccessGroup"];
        v27 = [v19 objectForKeyedSubscript:v24];
        [v26 setObject:v27 forKeyedSubscript:@"BadnessLevel"];

        v28 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
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

- (int)convertPPSSKALogEventName:(id)name
{
  nameCopy = name;
  v4 = PLLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent convertPPSSKALogEventName:];
  }

  if ([nameCopy isEqualToString:@"AssertedPresence"])
  {
    v5 = 0;
  }

  else if ([nameCopy isEqualToString:@"CreatedChannel"])
  {
    v5 = 1;
  }

  else if ([nameCopy isEqualToString:@"PolledForPresence"])
  {
    v5 = 2;
  }

  else if ([nameCopy isEqualToString:@"ProvisionedPayload"])
  {
    v5 = 3;
  }

  else if ([nameCopy isEqualToString:@"PublishedStatus"])
  {
    v5 = 4;
  }

  else if ([nameCopy isEqualToString:@"ReceivedPayload"])
  {
    v5 = 5;
  }

  else if ([nameCopy isEqualToString:@"IDSMessage"])
  {
    v5 = 6;
  }

  else if ([nameCopy isEqualToString:@"Subscribed"])
  {
    v5 = 7;
  }

  else if ([nameCopy isEqualToString:@"UnassertedPresence"])
  {
    v5 = 8;
  }

  else if ([nameCopy isEqualToString:@"Unsubscribed"])
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

- (void)logStatusKitAgentAggregatePushes:(id)pushes
{
  v32 = *MEMORY[0x277D85DE8];
  pushesCopy = pushes;
  v5 = pushesCopy;
  if (pushesCopy && [pushesCopy count])
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
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
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLXPCAgent convertPPSSKALogEventName:](self, "convertPPSSKALogEventName:", v12)}];
          [dictionary setObject:v14 forKeyedSubscript:@"EventName"];

          v15 = [v7 objectForKeyedSubscript:v12];
          v16 = v15;
          if (v15 && [v15 count])
          {
            v17 = [v16 objectForKeyedSubscript:@"ChannelType"];
            [dictionary setObject:v17 forKeyedSubscript:@"ChannelType"];

            v18 = [v16 objectForKeyedSubscript:@"ClientID"];
            [dictionary setObject:v18 forKeyedSubscript:@"ClientID"];

            v19 = [v16 objectForKeyedSubscript:@"NumIncoming"];
            [dictionary setObject:v19 forKeyedSubscript:@"NumIncoming"];

            v20 = [v16 objectForKeyedSubscript:@"NumOutgoing"];
            [dictionary setObject:v20 forKeyedSubscript:@"NumOutgoing"];

            v21 = [v16 objectForKeyedSubscript:@"Topic"];
            [dictionary setObject:v21 forKeyedSubscript:@"Topic"];
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
            v30 = dictionary;
            _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "StatusKitAgent AggregatedPushes entryPayload:%@", buf, 0xCu);
          }

          [(PLOperator *)self logForSubsystem:@"StatusKitAgent" category:@"AggregatedPushes" data:dictionary date:monotonicDate];
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
    monotonicDate = PLLogXPC();
    if (os_log_type_enabled(monotonicDate, OS_LOG_TYPE_DEBUG))
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

- (void)logEventForwardAssetLoadGF:(id)f
{
  v28[2] = *MEMORY[0x277D85DE8];
  fCopy = f;
  v5 = [fCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [fCopy objectForKeyedSubscript:@"timestampValue"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"timestampValue"];
  v10 = [fCopy objectForKeyedSubscript:@"eventType"];
  LODWORD(v7) = [v10 intValue];

  v11 = [fCopy objectForKeyedSubscript:@"catalogResourceIdentifier"];
  v12 = [PLUtilities removeFirstPartyBundleIDPrefix:v11];
  [v5 setObject:v12 forKeyedSubscript:@"catalogResourceIdentifier"];

  if (v7 == 1)
  {
    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"assetLoad" data:v5 date:convertFromSystemToMonotonic];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_2871469D8 withComparisonOperation:6];
    v14 = objc_alloc(MEMORY[0x277D3F260]);
    v15 = [v5 objectForKeyedSubscript:@"catalogResourceIdentifier"];
    v16 = [v14 initWithKey:@"catalogResourceIdentifier" withValue:v15 withComparisonOperation:0];

    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    v28[0] = v16;
    v28[1] = v13;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v20 = [storage lastEntryForKey:@"GenerativeFunctionMetrics_assetLoad_1_2" withComparisons:v19 isSingleton:1];

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
      v26 = convertFromSystemToMonotonic;
      v27 = fCopy;
      [(PLOperator *)self updateEntry:v25 withBlock:v24];
    }

    else
    {
      if (v22)
      {
        [PLXPCAgent logEventForwardAssetLoadGF:];
      }

      [v5 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"timestampEnd"];
      [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"assetLoad" data:v5 date:convertFromSystemToMonotonic];
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

- (void)logFileResidentInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [infoCopy objectForKeyedSubscript:@"timestampValue"];
  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];

  [v4 removeObjectForKey:@"timestampValue"];
  v9 = [infoCopy objectForKeyedSubscript:@"fileResidentRatio"];

  if (v9)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [infoCopy objectForKeyedSubscript:@"fileResidentRatio"];
    [v11 doubleValue];
    v13 = [v10 numberWithInt:(v12 * 100.0)];
    [v4 setObject:v13 forKeyedSubscript:@"fileResidentRatio"];
  }

  v14 = [infoCopy objectForKeyedSubscript:@"catalogResourceIdentifier"];
  v15 = [PLUtilities removeFirstPartyBundleIDPrefix:v14];
  [v4 setObject:v15 forKeyedSubscript:@"catalogResourceIdentifier"];

  [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"fileResidentInfo" data:v4 date:convertFromSystemToMonotonic];
}

- (void)logEventForwardMMExecuteRequest:(id)request
{
  v44[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [requestCopy objectForKeyedSubscript:@"timestampValue"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"timestampValue"];
  v10 = [requestCopy objectForKeyedSubscript:@"eventType"];
  LODWORD(v7) = [v10 intValue];

  if (v7 == 1)
  {
    v11 = [requestCopy objectForKeyedSubscript:@"createdByBundleIdentifier"];
    v12 = [PLUtilities removeFirstPartyBundleIDPrefix:v11];
    [v5 setObject:v12 forKeyedSubscript:@"createdByBundleIdentifier"];

    v13 = [requestCopy objectForKeyedSubscript:@"onBehalfOfBundleIdentifier"];
    v14 = [PLUtilities removeFirstPartyBundleIDPrefix:v13];
    [v5 setObject:v14 forKeyedSubscript:@"onBehalfOfBundleIdentifier"];

    v15 = [requestCopy objectForKeyedSubscript:@"catalogResourceIdentifier"];
    v16 = [PLUtilities removeFirstPartyBundleIDPrefix:v15];
    [v5 setObject:v16 forKeyedSubscript:@"catalogResourceIdentifier"];

    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"mmExecuteRequest" data:v5 date:convertFromSystemToMonotonic];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_2871469D8 withComparisonOperation:6];
    v18 = objc_alloc(MEMORY[0x277D3F260]);
    v19 = [v5 objectForKeyedSubscript:@"requestIdentifier"];
    v20 = [v18 initWithKey:@"requestIdentifier" withValue:v19 withComparisonOperation:0];

    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    v44[0] = v20;
    v44[1] = v17;
    v39 = v17;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v24 = [storage lastEntryForKey:@"GenerativeFunctionMetrics_mmExecuteRequest_1_2" withComparisons:v23 isSingleton:1];

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
      v28 = convertFromSystemToMonotonic;
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

      entryDate = [v27 entryDate];
      [entryDate timeIntervalSince1970];
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

      [v5 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"timestampEnd"];
      [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"mmExecuteRequest" data:v5 date:convertFromSystemToMonotonic];
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

- (void)logPhotosGenerativeEdit:(id)edit
{
  editCopy = edit;
  v4 = [editCopy objectForKeyedSubscript:@"endTime"];
  if (v4)
  {
    v5 = v4;
    v6 = [editCopy objectForKeyedSubscript:@"startTime"];

    if (v6)
    {
      v7 = [editCopy mutableCopy];
      v8 = [editCopy objectForKeyedSubscript:@"endTime"];
      convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

      [v7 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"timestampEnd"];
      v10 = [editCopy objectForKeyedSubscript:@"startTime"];
      convertFromSystemToMonotonic2 = [v10 convertFromSystemToMonotonic];

      [v7 removeObjectForKey:@"startTime"];
      [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"PhotosGenerativeEdit" data:v7 date:convertFromSystemToMonotonic2];
    }
  }
}

- (void)logEventForwardSummarization:(id)summarization
{
  summarizationCopy = summarization;
  if (![MEMORY[0x277D3F208] hasGenerativeModelSystems])
  {
    goto LABEL_12;
  }

  v4 = [summarizationCopy mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [summarizationCopy objectForKeyedSubscript:@"timestampEnd"];
  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSinceReferenceDate:?];

  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];

  [v4 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"timestampEnd"];
  v9 = MEMORY[0x277CBEAA8];
  v10 = [summarizationCopy objectForKeyedSubscript:@"timestampStart"];
  [v10 doubleValue];
  v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

  convertFromSystemToMonotonic2 = [v11 convertFromSystemToMonotonic];

  [v4 removeObjectForKey:@"timestampStart"];
  v13 = [summarizationCopy objectForKey:@"kind"];
  if (v13)
  {
    v14 = v13;
    v15 = [summarizationCopy objectForKeyedSubscript:@"kind"];
    intValue = [v15 intValue];

    if (intValue == 4)
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
  [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"Summarization" data:v4 date:convertFromSystemToMonotonic2];
  v18 = [v4 objectForKeyedSubscript:@"bundleID"];
  [convertFromSystemToMonotonic2 timeIntervalSince1970];
  v20 = v19;
  [convertFromSystemToMonotonic timeIntervalSince1970];
  v22 = v21;
  [(PLXPCAgent *)self setAccountingEntriesFor:self->_summarizationEntries withBundleID:v18 withStartTime:v20 withEndTime:v21];
  v23 = [summarizationCopy objectForKeyedSubscript:@"kind"];
  intValue2 = [v23 intValue];

  if ((intValue2 & 0xFFFFFFFE) == 2)
  {
    [(PLXPCAgent *)self setAccountingEntriesFor:self->_summarizedNotificationEntries withBundleID:v18 withStartTime:v20 withEndTime:v22];
  }

LABEL_12:
}

- (void)logEventForwardTGIExecuteRequest:(id)request
{
  v38[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [requestCopy objectForKeyedSubscript:@"timestampValue"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"timestampValue"];
  v10 = [requestCopy objectForKeyedSubscript:@"eventType"];
  intValue = [v10 intValue];

  v12 = PLLogXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventForwardTGIExecuteRequest:];
  }

  if (intValue == 1)
  {
    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"tgiExecuteRequest" data:v5 date:convertFromSystemToMonotonic];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_2871469D8 withComparisonOperation:6];
    v14 = objc_alloc(MEMORY[0x277D3F260]);
    v15 = [v5 objectForKeyedSubscript:@"requestIdentifier"];
    v16 = [v14 initWithKey:@"requestIdentifier" withValue:v15 withComparisonOperation:0];

    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    v38[0] = v16;
    v38[1] = v13;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v20 = [storage lastEntryForKey:@"GenerativeFunctionMetrics_tgiExecuteRequest_1_2" withComparisons:v19 isSingleton:1];

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
      v36 = convertFromSystemToMonotonic;
      v37 = requestCopy;
      [(PLOperator *)self updateEntry:v35 withBlock:v34];
    }

    else
    {
      if (v22)
      {
        [PLXPCAgent logEventForwardTGIExecuteRequest:];
      }

      [v5 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"timestampEnd"];
      v23 = [requestCopy objectForKeyedSubscript:@"sd_draftTokenAcceptanceRate"];

      if (v23)
      {
        v24 = MEMORY[0x277CCABB0];
        v25 = [requestCopy objectForKeyedSubscript:@"sd_draftTokenAcceptanceRate"];
        [v25 doubleValue];
        v27 = [v24 numberWithInt:(v26 * 100.0)];
        [v5 setObject:v27 forKeyedSubscript:@"sd_draftTokenAcceptanceRate"];
      }

      v28 = [requestCopy objectForKeyedSubscript:@"sd_speculationSuccessRate"];

      if (v28)
      {
        v29 = MEMORY[0x277CCABB0];
        v30 = [requestCopy objectForKeyedSubscript:@"sd_speculationSuccessRate"];
        [v30 doubleValue];
        v32 = [v29 numberWithInt:(v31 * 100.0)];
        [v5 setObject:v32 forKeyedSubscript:@"sd_speculationSuccessRate"];
      }

      [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"tgiExecuteRequest" data:v5 date:convertFromSystemToMonotonic];
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

- (void)logEventForwardSmartReplySession:(id)session
{
  v39[5] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = [sessionCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [sessionCopy objectForKeyedSubscript:@"EventTime"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSinceReferenceDate:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"EventTime"];
  v10 = [sessionCopy objectForKeyedSubscript:@"EventType"];
  intValue = [v10 intValue];

  v12 = PLLogXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventForwardSmartReplySession:];
  }

  if (intValue)
  {
    v32 = convertFromSystemToMonotonic;
    selfCopy = self;
    v13 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"timestampEnd" withValue:&unk_2871469D8 withComparisonOperation:6];
    v14 = objc_alloc(MEMORY[0x277D3F260]);
    v15 = [sessionCopy objectForKeyedSubscript:@"App"];
    v16 = [v14 initWithKey:@"App" withValue:v15 withComparisonOperation:0];

    v17 = objc_alloc(MEMORY[0x277D3F260]);
    v18 = [sessionCopy objectForKeyedSubscript:@"QueryType"];
    v19 = [v17 initWithKey:@"QueryType" withValue:v18 withComparisonOperation:0];

    v20 = objc_alloc(MEMORY[0x277D3F260]);
    v21 = [sessionCopy objectForKeyedSubscript:@"InputTokenCount"];
    v22 = [v20 initWithKey:@"InputTokenCount" withValue:v21 withComparisonOperation:0];

    v23 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"OutputTokenCount" withValue:&unk_2871469D8 withComparisonOperation:6];
    mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
    storage = [mEMORY[0x277D3F2A0] storage];
    v33 = v13;
    v39[0] = v13;
    v39[1] = v16;
    v31 = v16;
    v39[2] = v19;
    v39[3] = v22;
    v39[4] = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:5];
    v27 = [storage lastEntryForKey:@"GenerativeFunctionMetrics_SmartReplySession_1_2" withComparisons:v26 isSingleton:1];

    v28 = PLLogXPC();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
    if (v27)
    {
      convertFromSystemToMonotonic = v32;
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
      v38 = sessionCopy;
      [(PLOperator *)selfCopy updateEntry:v36 withBlock:v35];
    }

    else
    {
      convertFromSystemToMonotonic = v32;
      if (v29)
      {
        [PLXPCAgent logEventForwardSmartReplySession:];
      }

      [v5 setObject:v32 forKeyedSubscript:@"timestampEnd"];
      [(PLOperator *)selfCopy logForSubsystem:@"GenerativeFunctionMetrics" category:@"SmartReplySession" data:v5 date:v32];
    }
  }

  else
  {
    [v5 removeObjectForKey:@"OutputTokenCount"];
    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"SmartReplySession" data:v5 date:convertFromSystemToMonotonic];
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

- (int)convertPixelCount:(int)count
{
  v4 = PLLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent convertPixelCount:];
  }

  if ((count - 100000) < 0x186A1)
  {
    return 1;
  }

  if ((count - 200001) < 0x493E0)
  {
    return 2;
  }

  if ((count - 500001) < 0x927C0)
  {
    return 3;
  }

  if (count > 1100000)
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

- (void)logEventForwardAppleDiffusion:(id)diffusion
{
  diffusionCopy = diffusion;
  if ([MEMORY[0x277D3F208] hasGenerativeModelSystems])
  {
    v5 = [diffusionCopy mutableCopy];
    v6 = [diffusionCopy objectForKeyedSubscript:@"endDate"];
    convertFromSystemToMonotonic = [v6 convertFromSystemToMonotonic];

    [v5 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"timestampEnd"];
    v8 = [diffusionCopy objectForKeyedSubscript:@"startDate"];
    convertFromSystemToMonotonic2 = [v8 convertFromSystemToMonotonic];

    [v5 removeObjectForKey:@"startDate"];
    v10 = [v5 objectForKeyedSubscript:@"inputPixels"];

    if (v10)
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = [diffusionCopy objectForKeyedSubscript:@"inputPixels"];
      v13 = [v11 numberWithInt:{-[PLXPCAgent convertPixelCount:](self, "convertPixelCount:", objc_msgSend(v12, "intValue"))}];
      [v5 setObject:v13 forKeyedSubscript:@"inputPixels"];
    }

    v14 = [v5 objectForKeyedSubscript:@"outputPixels"];

    if (v14)
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = [diffusionCopy objectForKeyedSubscript:@"outputPixels"];
      v17 = [v15 numberWithInt:{-[PLXPCAgent convertPixelCount:](self, "convertPixelCount:", objc_msgSend(v16, "intValue"))}];
      [v5 setObject:v17 forKeyedSubscript:@"outputPixels"];
    }

    v18 = PLLogXPC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventForwardAppleDiffusion:];
    }

    [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"appleDiffusion" data:v5 date:convertFromSystemToMonotonic2];
  }
}

- (void)logEventForwardHandwritingInference:(id)inference
{
  inferenceCopy = inference;
  v4 = [inferenceCopy mutableCopy];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [inferenceCopy objectForKeyedSubscript:@"startTimestamp"];
  [v6 doubleValue];
  v7 = [v5 dateWithTimeIntervalSinceReferenceDate:?];

  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];

  [v4 removeObjectForKey:@"startTimestamp"];
  v9 = MEMORY[0x277CBEAA8];
  v10 = [inferenceCopy objectForKeyedSubscript:@"endTimestamp"];
  [v10 doubleValue];
  v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

  convertFromSystemToMonotonic2 = [v11 convertFromSystemToMonotonic];

  [v4 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampEnd"];
  v13 = [inferenceCopy objectForKeyedSubscript:@"inputStringLength"];

  if (v13)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = [inferenceCopy objectForKeyedSubscript:@"inputStringLength"];
    v16 = [v14 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v15, "intValue"), 1)}];
    [v4 setObject:v16 forKeyedSubscript:@"inputStringLength"];
  }

  v17 = [inferenceCopy objectForKeyedSubscript:@"inputStrokeCount"];

  if (v17)
  {
    v18 = MEMORY[0x277CCABB0];
    v19 = [inferenceCopy objectForKeyedSubscript:@"inputStrokeCount"];
    v20 = [v18 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v19, "intValue"), 1)}];
    [v4 setObject:v20 forKeyedSubscript:@"inputStrokeCount"];
  }

  v21 = [inferenceCopy objectForKeyedSubscript:@"outputStringLength"];

  if (v21)
  {
    v22 = MEMORY[0x277CCABB0];
    v23 = [inferenceCopy objectForKeyedSubscript:@"outputStringLength"];
    v24 = [v22 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v23, "intValue"), 1)}];
    [v4 setObject:v24 forKeyedSubscript:@"outputStringLength"];
  }

  v25 = [inferenceCopy objectForKeyedSubscript:@"outputStrokeCount"];

  if (v25)
  {
    v26 = MEMORY[0x277CCABB0];
    v27 = [inferenceCopy objectForKeyedSubscript:@"outputStrokeCount"];
    v28 = [v26 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v27, "intValue"), 1)}];
    [v4 setObject:v28 forKeyedSubscript:@"outputStrokeCount"];
  }

  [(PLOperator *)self logForSubsystem:@"GenerativeFunctionMetrics" category:@"HandwritingInference" data:v4 date:convertFromSystemToMonotonic];
}

- (void)logEventPointANE:(id)e withCategory:(id)category
{
  eCopy = e;
  categoryCopy = category;
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

    [(PLOperator *)self logForSubsystem:@"ANE" category:categoryCopy data:eCopy];
    goto LABEL_22;
  }

  v10 = [eCopy mutableCopy];
  v11 = PLLogXPC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventPointANE:withCategory:];
  }

  v12 = [eCopy objectForKey:@"privacy_score"];

  if (v12)
  {
    v13 = [eCopy objectForKeyedSubscript:@"privacy_score"];
    bOOLValue = [v13 BOOLValue];

    v15 = PLLogXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventPointANE:withCategory:];
    }

    if (bOOLValue)
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

  [(PLOperator *)self logForSubsystem:@"ANE" category:categoryCopy data:v10];
LABEL_22:
}

- (void)logEventForwardWatchPresence:(id)presence
{
  v4 = *MEMORY[0x277D3F5D0];
  presenceCopy = presence;
  v10 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"WatchPresence"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:presenceCopy];
  v7 = [presenceCopy objectForKeyedSubscript:@"Event"];

  v8 = [(PLXPCAgent *)self eventNameStringToEnum:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"Event"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardUIKitKeyboard:(id)keyboard
{
  v4 = *MEMORY[0x277D3F5D0];
  keyboardCopy = keyboard;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"UIKitKeyboard"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:keyboardCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardUIKitEclipse:(id)eclipse
{
  v4 = *MEMORY[0x277D3F5D0];
  eclipseCopy = eclipse;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"UIKitEclipse"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:eclipseCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardWirelessSync:(id)sync
{
  v4 = *MEMORY[0x277D3F5D0];
  syncCopy = sync;
  v9 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"WirelessSync"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:syncCopy];
  v7 = [syncCopy objectForKey:@"DurationSeconds"];

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

- (void)logEventEventForwardMessageTranscript:(id)transcript
{
  transcriptCopy = transcript;
  v5 = [transcriptCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [transcriptCopy objectForKeyedSubscript:@"timestampValue"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"timestampValue"];
  v10 = PLLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventEventForwardMessageTranscript:];
  }

  v11 = [transcriptCopy objectForKeyedSubscript:@"event"];

  if (v11)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [transcriptCopy objectForKeyedSubscript:@"event"];
    v14 = [v12 numberWithInt:{objc_msgSend(v13, "intValue")}];
    [v5 setObject:v14 forKeyedSubscript:@"TranscriptVisibilityState"];

    [v5 removeObjectForKey:@"event"];
  }

  v15 = [transcriptCopy objectForKeyedSubscript:@"posterName"];

  if (v15)
  {
    v16 = [transcriptCopy objectForKeyedSubscript:@"posterName"];
    [v5 setObject:v16 forKeyedSubscript:@"PosterName"];
  }

  [(PLOperator *)self logForSubsystem:@"Message" category:@"TranscriptForeground" data:v5 date:convertFromSystemToMonotonic];
}

- (void)logEventForwardMXDiscoveryLevel:(id)level
{
  v27 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  v17 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"MXDiscoveryLevel"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v17];
  v5 = [levelCopy objectForKeyedSubscript:@"Client"];
  [v4 setObject:v5 forKeyedSubscript:@"Client"];

  v6 = [levelCopy objectForKeyedSubscript:@"ObjectHash"];
  [v4 setObject:v6 forKeyedSubscript:@"ObjectHash"];

  v7 = [levelCopy objectForKeyedSubscript:@"Level"];
  [v4 setObject:v7 forKeyedSubscript:@"Level"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [levelCopy objectForKeyedSubscript:@"OnBehalfOf"];
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
        v14 = [levelCopy objectForKeyedSubscript:@"OnBehalfOf"];
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

- (void)logEventForwardCarPlay:(id)play
{
  v4 = *MEMORY[0x277D3F5D0];
  playCopy = play;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"CarPlay"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:playCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardCarPlayScreens:(id)screens
{
  v4 = *MEMORY[0x277D3F5D0];
  screensCopy = screens;
  v12 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"CarPlayScreens"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12 withRawData:screensCopy];
  v7 = [screensCopy objectForKeyedSubscript:@"Width"];
  unsignedIntValue = [v7 unsignedIntValue];

  v9 = [screensCopy objectForKeyedSubscript:@"Height"];

  LODWORD(screensCopy) = [v9 unsignedIntValue];
  v10 = [(PLXPCAgent *)self mapPixelsToBucket:screensCopy * unsignedIntValue];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [v6 setObject:v11 forKeyedSubscript:@"Size"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardSecondaryDisplay:(id)display
{
  displayCopy = display;
  if (([MEMORY[0x277D3F208] isiPad] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isMac"))
  {
    v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SecondaryDisplay"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:displayCopy];
    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventForwardUIKitActivity:(id)activity
{
  v4 = *MEMORY[0x277D3F5D0];
  activityCopy = activity;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"UIKitActivity"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:activityCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardUIKitAlert:(id)alert
{
  v4 = *MEMORY[0x277D3F5D0];
  alertCopy = alert;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"UIKitAlert"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:alertCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardSafariFetcherStatus:(id)status
{
  v4 = *MEMORY[0x277D3F5D0];
  statusCopy = status;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SafariFetcher"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:statusCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAppleBackklightBrightness:(id)brightness
{
  brightnessCopy = brightness;
  v5 = brightnessCopy;
  if (brightnessCopy)
  {
    v6 = [brightnessCopy objectForKeyedSubscript:@"linearBrightness"];

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

- (void)logEventForwardAccessory:(id)accessory
{
  v4 = *MEMORY[0x277D3F5D0];
  accessoryCopy = accessory;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"Accessory"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:accessoryCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAppAccessory:(id)accessory
{
  v4 = *MEMORY[0x277D3F5D0];
  accessoryCopy = accessory;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AppAccessory"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:accessoryCopy];

  [(PLOperator *)self logEntry:v6];
}

- (unint64_t)convertAirDropSessionState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Start"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"Stop"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"Failed"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"InterfaceChanged"])
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

- (void)logEventForwardAirDropSession:(id)session
{
  sessionCopy = session;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AirDropSession"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = MEMORY[0x277CCABB0];
  v7 = [sessionCopy objectForKeyedSubscript:@"Subevent"];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "isEqualToString:", @"Send"}];
  [v5 setObject:v8 forKeyedSubscript:@"Subevent"];

  v9 = [sessionCopy objectForKeyedSubscript:@"State"];
  v10 = [(PLXPCAgent *)self convertAirDropSessionState:v9];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  [v5 setObject:v11 forKeyedSubscript:@"State"];

  v12 = [sessionCopy objectForKeyedSubscript:@"ContentSize"];

  if (v12)
  {
    v13 = [sessionCopy objectForKeyedSubscript:@"ContentSize"];
    [v13 doubleValue];
    v15 = v14;

    LODWORD(v16) = llround(v15 * 0.000000953674316);
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    [v5 setObject:v17 forKeyedSubscript:@"FileSize"];
  }

  v18 = MEMORY[0x277CCACA8];
  v19 = [sessionCopy objectForKeyedSubscript:@"TransferID"];
  v20 = [v18 stringWithFormat:@"%@", v19];
  v21 = [PLUtilities hashString:v20];
  [v5 setObject:v21 forKeyedSubscript:@"Identifier"];

  v22 = [sessionCopy objectForKeyedSubscript:@"Interface"];
  [v5 setObject:v22 forKeyedSubscript:@"Interface"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardAirDrop:(id)drop
{
  v4 = *MEMORY[0x277D3F5D0];
  dropCopy = drop;
  v8 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AirDrop"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:dropCopy];
  v7 = [dropCopy objectForKeyedSubscript:@"id"];

  [v6 setObject:v7 forKeyedSubscript:@"bundleId"];
  [(PLOperator *)self logEntry:v6];
  [(PLXPCAgent *)self createAirDropAccountingEvent:v6];
}

- (void)logEventForwardSiri:(id)siri
{
  v4 = *MEMORY[0x277D3F5D0];
  siriCopy = siri;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"Siri"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:siriCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardInCallService:(id)service
{
  v4 = *MEMORY[0x277D3F5D0];
  serviceCopy = service;
  v13 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"InCallService"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:serviceCopy];
  v7 = [serviceCopy objectForKeyedSubscript:@"providerContext"];

  v8 = [v7 objectForKeyedSubscript:@"kCallSubType"];

  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"kCallSubType"];
  }

  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAA8];
    entryDate = [v6 entryDate];
    [entryDate timeIntervalSince1970];
    v12 = [v9 dateWithTimeIntervalSince1970:round(v11)];
    [v6 setEntryDate:v12];
  }

  [(PLOperator *)self logEntry:v6];
  [(PLXPCAgent *)self createInCallServiceAccountingEvent:v6];
}

- (void)logEventForwardCallScreeningEnabled:(id)enabled
{
  v4 = *MEMORY[0x277D3F5D0];
  enabledCopy = enabled;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"CallScreeningEnabled"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:enabledCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardWebApp:(id)app
{
  v4 = *MEMORY[0x277D3F5D0];
  appCopy = app;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"WebApp"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:appCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardThermalLevel:(id)level
{
  levelCopy = level;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ThermalLevel"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:levelCopy];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [levelCopy objectForKeyedSubscript:@"Time"];

  if (v7)
  {
    v8 = MEMORY[0x277CBEAA8];
    v9 = [levelCopy objectForKeyedSubscript:@"Time"];
    [v9 doubleValue];
    v10 = [v8 dateWithTimeIntervalSince1970:?];

    v11 = [v10 earlierDate:date];

    date = v11;
  }

  convertFromSystemToMonotonic = [date convertFromSystemToMonotonic];
  entryDate = [v5 entryDate];
  [convertFromSystemToMonotonic timeIntervalSinceDate:entryDate];
  v15 = llround(v14);

  v16 = [MEMORY[0x277CCABB0] numberWithLong:v15];
  [v5 setObject:v16 forKeyedSubscript:@"startOffset"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardThermalSensors:(id)sensors
{
  sensorsCopy = sensors;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ThermalSensors"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:sensorsCopy];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [sensorsCopy objectForKeyedSubscript:@"Time"];

  if (v7)
  {
    v8 = MEMORY[0x277CBEAA8];
    v9 = [sensorsCopy objectForKeyedSubscript:@"Time"];
    [v9 doubleValue];
    v10 = [v8 dateWithTimeIntervalSince1970:?];

    v11 = [v10 earlierDate:date];

    date = v11;
  }

  convertFromSystemToMonotonic = [date convertFromSystemToMonotonic];
  [v5 setEntryDate:convertFromSystemToMonotonic];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardThermalHiP:(id)p
{
  pCopy = p;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ThermalHiP"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:pCopy];
  v6 = [pCopy objectForKeyedSubscript:@"Time"];
  if (v6)
  {
    [pCopy objectForKeyedSubscript:@"Time"];
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v7 = ;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v7, "intValue")}];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 earlierDate:date];
  convertFromSystemToMonotonic = [v10 convertFromSystemToMonotonic];

  entryDate = [v5 entryDate];
  [convertFromSystemToMonotonic timeIntervalSinceDate:entryDate];
  v14 = llround(v13);

  v15 = [MEMORY[0x277CCABB0] numberWithLong:v14];
  [v5 setObject:v15 forKeyedSubscript:@"timeOffset"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardNetworkRelay:(id)relay
{
  relayCopy = relay;
  v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"NetworkRelay"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v7 = [relayCopy objectForKeyedSubscript:@"QuickRelayClients"];

  if (v7)
  {
    v8 = [relayCopy objectForKeyedSubscript:@"QuickRelayClients"];
    allObjects = [v8 allObjects];
    v10 = [allObjects componentsJoinedByString:{@", "}];

    v11 = PLLogXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventForwardNetworkRelay:];
    }

    [v6 setObject:v10 forKeyedSubscript:@"QuickRelayClients"];
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v13 = MEMORY[0x277CBEAA8];
    [monotonicDate timeIntervalSince1970];
    v15 = [v13 dateWithTimeIntervalSince1970:round(v14 / 60.0) * 60.0];

    monotonicDate = v15;
  }

  [v6 setEntryDate:monotonicDate];
  v16 = [relayCopy objectForKeyedSubscript:@"SessionID"];
  [v6 setObject:v16 forKeyedSubscript:@"SessionID"];

  v17 = [relayCopy objectForKeyedSubscript:@"State"];
  [v6 setObject:v17 forKeyedSubscript:@"State"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardNetworkRelayWiFiAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = [assertionCopy objectForKeyedSubscript:@"WiFiAssertionClients"];
  allObjects = [v5 allObjects];
  v12 = [allObjects componentsJoinedByString:{@", "}];

  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"NetworkRelayWiFiAssertion"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
  v9 = [assertionCopy objectForKeyedSubscript:@"WiFiWoWState"];
  [v8 setObject:v9 forKeyedSubscript:@"WiFiWoWState"];

  v10 = [assertionCopy objectForKeyedSubscript:@"WiFiClientType"];
  [v8 setObject:v10 forKeyedSubscript:@"WiFiClientType"];

  v11 = [assertionCopy objectForKeyedSubscript:@"WiFiAssertionReason"];

  [v8 setObject:v11 forKeyedSubscript:@"WiFiAssertionReason"];
  [v8 setObject:v12 forKeyedSubscript:@"WiFiAssertionClients"];
  [(PLOperator *)self logEntry:v8];
}

- (void)logEventForwardAudioRouting:(id)routing
{
  routingCopy = routing;
  if (routingCopy)
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AudioRouting"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    v7 = [routingCopy valueForKey:@"timestamp"];

    if (v7)
    {
      v8 = MEMORY[0x277CBEAA8];
      v9 = [routingCopy objectForKeyedSubscript:@"timestamp"];
      [v9 doubleValue];
      v10 = [v8 dateWithTimeIntervalSinceReferenceDate:?];

      convertFromSystemToMonotonic = [v10 convertFromSystemToMonotonic];
      [v6 setEntryDate:convertFromSystemToMonotonic];
    }

    v12 = [routingCopy valueForKey:@"kEventType"];
    v13 = [v12 isEqualToString:@"ScanStart"];

    if (v13)
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = 1;
    }

    else
    {
      v17 = [routingCopy valueForKey:@"kEventType"];
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
    v20 = [routingCopy valueForKey:@"kScanType"];
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

- (void)logEventForwardAccessoryMotion:(id)motion
{
  motionCopy = motion;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"AccessoryMotion"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:motionCopy];
  v6 = [motionCopy objectForKeyedSubscript:@"client"];
  if (v6)
  {
    v7 = v6;
    v8 = [motionCopy objectForKeyedSubscript:@"client"];
    v9 = [v8 isEqualToString:@"/usr/sbin/mediaserverd"];

    if (v9)
    {
      [v5 setObject:@"mediaserverd" forKeyedSubscript:@"client"];
    }
  }

  [(PLOperator *)self logEntry:v5];
  v10 = [motionCopy objectForKeyedSubscript:@"tracking"];
  bOOLValue = [v10 BOOLValue];

  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  v13 = [v5 objectForKeyedSubscript:@"client"];
  entryDate = [v5 entryDate];
  if (bOOLValue)
  {
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:46 withAddingChildNodeName:v13 withStartDate:entryDate];
  }

  else
  {
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:46 withRemovingChildNodeName:v13 withStartDate:entryDate];
  }
}

- (void)logEventFowardUARPStatus:(id)status
{
  statusCopy = status;
  if ([(PLXPCAgent *)self accessoryUARPEntryCount]< 501)
  {
    v6 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"UARPStatus"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:statusCopy];
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

- (void)logEventForwardDosimetry:(id)dosimetry
{
  dosimetryCopy = dosimetry;
  v5 = [dosimetryCopy objectForKeyedSubscript:@"noiseEnabled"];

  if (v5)
  {
    lastDosimetryEntry = self->_lastDosimetryEntry;
    if (!lastDosimetryEntry)
    {
      goto LABEL_4;
    }

    v7 = [(PLEntry *)lastDosimetryEntry objectForKeyedSubscript:@"noiseEnabled"];
    bOOLValue = [v7 BOOLValue];
    v9 = [dosimetryCopy objectForKeyedSubscript:@"noiseEnabled"];
    bOOLValue2 = [v9 BOOLValue];

    if (bOOLValue != bOOLValue2)
    {
LABEL_4:
      v11 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Dosimetry"];
      v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11 withRawData:dosimetryCopy];
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
      [PLXPCAgent logEventForwardDosimetry:dosimetryCopy];
    }
  }
}

- (void)logEventForwardSpatialAudio:(id)audio
{
  v4 = *MEMORY[0x277D3F5D0];
  audioCopy = audio;
  v8 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"SpatialAudio"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:audioCopy];
  v7 = [audioCopy objectForKeyedSubscript:@"stereoUpmix"];

  [v6 setObject:v7 forKeyedSubscript:@"up-mixing"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardPasskeyAuthentication:(id)authentication
{
  v4 = *MEMORY[0x277D3F5D0];
  authenticationCopy = authentication;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"PasskeyAuthentication"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:authenticationCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardEnhancedDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  v6 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"EnhancedDiscovery"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:discoveryCopy];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardSleepMode:(id)mode
{
  modeCopy = mode;
  if (+[PLUtilities isHealthDataSubmissionAllowed])
  {
    v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SleepMode"];
    v6 = objc_alloc(MEMORY[0x277D3F190]);
    v7 = [modeCopy objectForKeyedSubscript:@"SleepTime"];
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

- (void)logEventForwardRapidSecurityResponse:(id)response
{
  v4 = *MEMORY[0x277D3F5D0];
  responseCopy = response;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"RapidSecurityResponse"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:responseCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardRelevanceContextUpdate:(id)update
{
  updateCopy = update;
  v5 = [updateCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [updateCopy objectForKeyedSubscript:@"timestampOfEvent"];

  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"timestampOfEvent"];
  v10 = PLLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventForwardRelevanceContextUpdate:];
  }

  [(PLOperator *)self logForSubsystem:@"Widget" category:@"RelevanceContextUpdate" data:v5 date:convertFromSystemToMonotonic];
}

- (void)logEventForwardLinkAdvisory:(id)advisory
{
  advisoryCopy = advisory;
  v5 = [advisoryCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [advisoryCopy objectForKeyedSubscript:@"timestamp"];

  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = PLLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventForwardLinkAdvisory:];
  }

  [(PLOperator *)self logForSubsystem:@"NetworkRelay" category:@"LinkAdvisory" data:v5 date:convertFromSystemToMonotonic];
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

- (void)logEventBackwardCallScreeningDuration:(id)duration
{
  v4 = *MEMORY[0x277D3F5C8];
  durationCopy = duration;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"CallScreeningDuration"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:durationCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardNameSpotlightQos:(id)qos
{
  v34 = *MEMORY[0x277D85DE8];
  qosCopy = qos;
  if ([MEMORY[0x277D3F208] isMac])
  {
    v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"SpotlightQos"];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [qosCopy allKeys];
    v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v21)
    {
      v19 = *v29;
      v20 = qosCopy;
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
          v8 = [qosCopy objectForKeyedSubscript:v7];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          allKeys = [v8 allKeys];
          v10 = [allKeys countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                  objc_enumerationMutation(allKeys);
                }

                v14 = *(*(&v24 + 1) + 8 * i);
                v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withDate:monotonicDate];
                [v15 setObject:v7 forKeyedSubscript:@"utiType"];
                [v15 setObject:v14 forKeyedSubscript:@"qos"];
                v16 = [v8 objectForKeyedSubscript:v14];
                [v15 setObject:v16 forKeyedSubscript:@"count"];

                [(PLOperator *)self logEntry:v15];
              }

              v11 = [allKeys countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v11);
          }

          v6 = v22 + 1;
          qosCopy = v20;
        }

        while (v22 + 1 != v21);
        v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointNameSpotlightWatchdogFired:(id)fired
{
  firedCopy = fired;
  if ([MEMORY[0x277D3F208] isMac])
  {
    v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"SpotlightWatchdogFired"];
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:firedCopy];
    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventBackwardNamePop:(id)pop
{
  v4 = [(PLXPCAgent *)self popCount]+ 1;

  [(PLXPCAgent *)self setPopCount:v4];
}

- (void)logEventBackwardNamePeek:(id)peek
{
  peekCopy = peek;
  v5 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"PeekPop"];
  v6 = [peekCopy objectForKeyedSubscript:@"Process-ID"];
  integerValue = [v6 integerValue];

  peekStartTime = [(PLXPCAgent *)self peekStartTime];

  if (!peekStartTime)
  {
    [(PLXPCAgent *)self setPeekStartTime:0];
    [(PLXPCAgent *)self setPeekpopProcessID:integerValue];
    [(PLXPCAgent *)self setPeekCount:0];
    [(PLXPCAgent *)self setPopCount:0];
    [(PLXPCAgent *)self setPeekDuration:0.0];
  }

  if ([(PLXPCAgent *)self peekpopProcessID]&& integerValue != [(PLXPCAgent *)self peekpopProcessID])
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

  [(PLXPCAgent *)self setPeekpopProcessID:integerValue];
  v15 = [peekCopy objectForKeyedSubscript:@"Status"];
  integerValue2 = [v15 integerValue];

  if (integerValue2 == 1)
  {
    [(PLXPCAgent *)self setPeekCount:[(PLXPCAgent *)self peekCount]+ 1];
    v17 = [peekCopy objectForKeyedSubscript:@"Timestamp"];
    [(PLXPCAgent *)self setPeekStartTime:v17];

    v18 = PLLogXPC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PLXPCAgent logEventBackwardNamePeek:?];
    }

LABEL_13:

    goto LABEL_14;
  }

  peekStartTime2 = [(PLXPCAgent *)self peekStartTime];

  if (peekStartTime2)
  {
    v18 = [peekCopy objectForKeyedSubscript:@"Timestamp"];
    peekStartTime3 = [(PLXPCAgent *)self peekStartTime];
    [v18 timeIntervalSinceDate:peekStartTime3];
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

- (void)logEventBackwardAttentionSampling:(id)sampling
{
  v4 = *MEMORY[0x277D3F5C8];
  samplingCopy = sampling;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AASSampling"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:samplingCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardAttentionPolling:(id)polling
{
  v4 = *MEMORY[0x277D3F5C8];
  pollingCopy = polling;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AASPolling"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:pollingCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardAttentionService:(id)service
{
  v4 = *MEMORY[0x277D3F5C8];
  serviceCopy = service;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AASService"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:serviceCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardODOff:(id)off
{
  v4 = *MEMORY[0x277D3F5C8];
  offCopy = off;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"ODOff"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:offCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardODOn:(id)on
{
  v4 = *MEMORY[0x277D3F5C8];
  onCopy = on;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"ODOn"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:onCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardODHN:(id)n
{
  v4 = *MEMORY[0x277D3F5C8];
  nCopy = n;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"ODHN"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:nCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardEDRRequests:(id)requests
{
  requestsCopy = requests;
  lastEDRTrigger = self->_lastEDRTrigger;
  if (!lastEDRTrigger || ([MEMORY[0x277CBEAA8] monotonicDate], v6 = objc_claimAutoreleasedReturnValue(), -[NSDate timeIntervalSinceDate:](lastEDRTrigger, "timeIntervalSinceDate:", v6), v8 = fabs(v7), v6, v8 >= 30.0))
  {
    v9 = [requestsCopy objectForKeyedSubscript:@"EDRRequests"];
    v10 = v9;
    if (v9)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __41__PLXPCAgent_logEventForwardEDRRequests___block_invoke;
      v13[3] = &unk_279A5E370;
      v13[4] = self;
      [v9 enumerateObjectsUsingBlock:v13];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      v12 = self->_lastEDRTrigger;
      self->_lastEDRTrigger = monotonicDate;
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

- (void)logEventBackwardFrameCount:(id)count
{
  v18[1] = *MEMORY[0x277D85DE8];
  countCopy = count;
  v5 = countCopy;
  if (countCopy && ([countCopy objectForKeyedSubscript:@"data"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"FrameCount"];
    array = [MEMORY[0x277CBEB18] array];
    v9 = [v5 objectForKeyedSubscript:@"data"];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__PLXPCAgent_logEventBackwardFrameCount___block_invoke;
    v14[3] = &unk_279A5E398;
    v10 = v7;
    v15 = v10;
    v11 = array;
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

- (void)logEventBackwardRenderPassCount:(id)count
{
  countCopy = count;
  v5 = [countCopy mutableCopy];
  v6 = [countCopy objectForKeyedSubscript:@"data"];

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

- (void)logEventBackwardLayerCount:(id)count
{
  countCopy = count;
  v5 = [countCopy mutableCopy];
  v6 = [countCopy objectForKeyedSubscript:@"data"];

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

- (void)logEventBackwardEnergyTelemetry:(id)telemetry
{
  v55 = *MEMORY[0x277D85DE8];
  telemetryCopy = telemetry;
  if (telemetryCopy)
  {
    v48 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"EnergyTelemetry"];
    array = [MEMORY[0x277CBEB18] array];
    v6 = [telemetryCopy objectForKeyedSubscript:@"NumRows"];
    unsignedIntValue = [v6 unsignedIntValue];

    v8 = [telemetryCopy objectForKeyedSubscript:@"Keys"];
    v9 = [v8 indexOfObject:@"telemetry_date"];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      monotonicDate = PLLogXPC();
      if (os_log_type_enabled(monotonicDate, OS_LOG_TYPE_ERROR))
      {
        [PLXPCAgent logEventBackwardEnergyTelemetry:];
      }

      goto LABEL_22;
    }

    selfCopy = self;
    v47 = array;
    if (!unsignedIntValue)
    {
LABEL_18:
      array = v47;
      if (![v47 count])
      {
LABEL_23:

        goto LABEL_24;
      }

      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [monotonicDate timeIntervalSince1970];
      v34 = v33;
      lastObject = [v47 lastObject];
      entryDate = [lastObject entryDate];
      [entryDate timeIntervalSince1970];
      v38 = v37;

      v39 = (v34 - v38) / 60.0;
      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        lastObject2 = [v47 lastObject];
        entryDate2 = [lastObject2 entryDate];
        *buf = 138412802;
        *v52 = monotonicDate;
        *&v52[8] = 2112;
        *&v52[10] = entryDate2;
        v53 = 2048;
        v54 = v39;
        _os_log_impl(&dword_25EE51000, v40, OS_LOG_TYPE_DEFAULT, "[Energy Telemetry] receivedTime = %@, endTime = %@, delayInMinutes = %f", buf, 0x20u);
      }

      AnalyticsSendEventLazy();
      v49 = v48;
      v50 = v47;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      [(PLOperator *)selfCopy logEntries:v43 withGroupID:v48];

LABEL_22:
      goto LABEL_23;
    }

    v12 = 0;
    *&v10 = 138412546;
    v45 = v10;
    while (1)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v12, v45}];
      v14 = [telemetryCopy objectForKeyedSubscript:v13];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      v17 = [telemetryCopy objectForKeyedSubscript:v16];
      v18 = [v17 count];

      if (v18 <= v9)
      {
        goto LABEL_15;
      }

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      v20 = [telemetryCopy objectForKeyedSubscript:v19];
      v21 = [v20 objectAtIndexedSubscript:v9];

      v22 = MEMORY[0x277CBEAC0];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      v24 = [telemetryCopy objectForKeyedSubscript:v23];
      v25 = [telemetryCopy objectForKeyedSubscript:@"Keys"];
      v26 = [v22 dictionaryWithObjects:v24 forKeys:v25];

      v27 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v48 withRawData:v26];
      convertFromSystemToMonotonic = [v21 convertFromSystemToMonotonic];
      [v27 setEntryDate:convertFromSystemToMonotonic];

      [v47 addObject:v27];
      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        entryDate3 = [v27 entryDate];
        *buf = 67109378;
        *v52 = v12;
        *&v52[4] = 2112;
        *&v52[6] = entryDate3;
        _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEFAULT, "[Energy Telemetry] sample %d entryDate = %@", buf, 0x12u);
      }

LABEL_17:
      v12 = (v12 + 1);
      if (unsignedIntValue == v12)
      {
        goto LABEL_18;
      }
    }

LABEL_15:
    v21 = PLLogXPC();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      v32 = [telemetryCopy objectForKeyedSubscript:v31];
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

- (void)logEventBackwardDRMaxRate:(id)rate
{
  v4 = *MEMORY[0x277D3F5C8];
  rateCopy = rate;
  v7 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"DRMaxRate"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:rateCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointNetworkSymptomsAdviosry:(id)adviosry
{
  adviosryCopy = adviosry;
  if (adviosryCopy)
  {
    v21 = adviosryCopy;
    v5 = [adviosryCopy objectForKeyedSubscript:@"Network Type"];
    adviosryCopy = v21;
    if (v5)
    {
      v6 = [v21 objectForKeyedSubscript:@"advisoryKey"];

      adviosryCopy = v21;
      if (v6)
      {
        localCache = [(PLXPCAgent *)self localCache];
        v8 = [localCache objectForKeyedSubscript:@"Symptoms-NetworkAdvisory"];

        if (!v8)
        {
          v9 = objc_opt_new();
          localCache2 = [(PLXPCAgent *)self localCache];
          [localCache2 setObject:v9 forKeyedSubscript:@"Symptoms-NetworkAdvisory"];
        }

        v11 = [v21 objectForKeyedSubscript:@"Network Type"];
        v12 = [v21 objectForKeyedSubscript:@"advisoryKey"];
        localCache3 = [(PLXPCAgent *)self localCache];
        v14 = [localCache3 objectForKeyedSubscript:@"Symptoms-NetworkAdvisory"];
        v15 = [v14 objectForKeyedSubscript:v11];

        if (!v15 || (v16 = [v15 intValue], v16 != objc_msgSend(v12, "intValue")))
        {
          localCache4 = [(PLXPCAgent *)self localCache];
          v18 = [localCache4 objectForKeyedSubscript:@"Symptoms-NetworkAdvisory"];
          [v18 setObject:v12 forKeyedSubscript:v11];

          v19 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Symptoms-NetworkAdvisory"];
          v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v19];
          [v20 setObject:v11 forKeyedSubscript:@"Network Type"];
          [v20 setObject:v12 forKeyedSubscript:@"advisoryKey"];
          [(PLOperator *)self logEntry:v20];
        }

        adviosryCopy = v21;
      }
    }
  }
}

- (void)logEventPointCacheDelete:(id)delete
{
  selfCopy = self;
  v31 = *MEMORY[0x277D85DE8];
  deleteCopy = delete;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CacheDelete"];
  v21 = deleteCopy;
  v5 = [deleteCopy objectForKey:@"events"];
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

        [v6 addObject:{v12, selfCopy}];

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
  [(PLOperator *)selfCopy logEntries:v18 withGroupID:v4];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointMachineTranslation:(id)translation
{
  translationCopy = translation;
  v4 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MachineTranslation"];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:translationCopy];
    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventEventPointRCSSessionManagement:(id)management
{
  managementCopy = management;
  v5 = [managementCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [managementCopy objectForKeyedSubscript:@"Timestamp"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"Timestamp"];
  v10 = PLLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventEventPointRCSSessionManagement:];
  }

  [(PLOperator *)self logForSubsystem:@"Message" category:@"RCSSessionManagement" data:v5 date:convertFromSystemToMonotonic];
  v11 = [managementCopy objectForKeyedSubscript:@"TransactionType"];
  if (v11)
  {
    v12 = v11;
    v13 = [managementCopy objectForKeyedSubscript:@"TransactionType"];
    intValue = [v13 intValue];

    if (intValue == 4)
    {
      v15 = PLLogXPC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLXPCAgent logEventEventPointRCSSessionManagement:];
      }

      [(PLOperator *)self logForSubsystem:@"Message" category:@"SIPRegisterKeepAlive" data:v5 date:convertFromSystemToMonotonic];
    }
  }
}

- (void)logEventIntervalAirTrafficAssetDownload:(id)download
{
  v58 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  selfCopy = self;
  v50 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"AirTraffic_AssetDownload"];
  if (v50)
  {
    fullMode = [MEMORY[0x277D3F180] fullMode];
    v45 = downloadCopy;
    [downloadCopy objectForKeyedSubscript:@"messages"];
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
          if (fullMode)
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
          convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];
          v18 = [v16 initWithEntryKey:v50 withDate:convertFromSystemToMonotonic];

          convertFromSystemToMonotonic2 = [v9 convertFromSystemToMonotonic];
          [v18 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampEnd"];

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
          [(PLOperator *)selfCopy logEntry:v18];

          v5 = v52 + 1;
        }

        while (v51 != v52 + 1);
        v51 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v51);
    }

    downloadCopy = v45;
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalCoreDuetKnowledgeSync:(id)sync
{
  syncCopy = sync;
  if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
  {
    v5 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoreDuet_KnowledgeSync"];
    if (!v5)
    {
LABEL_16:

      goto LABEL_17;
    }

    v6 = [syncCopy objectForKeyedSubscript:@"timestamp"];
    v7 = [syncCopy objectForKeyedSubscript:@"timestampEnd"];
    v8 = [syncCopy objectForKeyedSubscript:@"isEmpty"];
    v9 = [syncCopy objectForKeyedSubscript:@"transportType"];
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
        convertFromSystemToMonotonic = [v16 convertFromSystemToMonotonic];
        v20 = [v18 initWithEntryKey:v5 withDate:convertFromSystemToMonotonic];

        convertFromSystemToMonotonic2 = [v17 convertFromSystemToMonotonic];
        [v20 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampEnd"];

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

- (void)logEventIntervalAnimatedStickerCreation:(id)creation
{
  v4 = *MEMORY[0x277D3F5D8];
  creationCopy = creation;
  v16 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"AnimatedStickerCreation"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [creationCopy objectForKeyedSubscript:@"StartTimestamp"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16 withDate:convertFromSystemToMonotonic];
  v11 = [creationCopy objectForKeyedSubscript:@"ProcessedFrameCount"];
  [v10 setObject:v11 forKeyedSubscript:@"ProcessedFrameCount"];

  v12 = MEMORY[0x277CBEAA8];
  v13 = [creationCopy objectForKeyedSubscript:@"EndTimestamp"];

  [v13 doubleValue];
  v14 = [v12 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic2 = [v14 convertFromSystemToMonotonic];

  [v10 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampEnd"];
  [(PLOperator *)self logEntry:v10];
}

- (void)logEventIntervalStaticStickerCreation:(id)creation
{
  v4 = *MEMORY[0x277D3F5D8];
  creationCopy = creation;
  v15 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"StaticStickerCreation"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [creationCopy objectForKeyedSubscript:@"StartTimestamp"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15 withDate:convertFromSystemToMonotonic];
  v11 = MEMORY[0x277CBEAA8];
  v12 = [creationCopy objectForKeyedSubscript:@"EndTimestamp"];

  [v12 doubleValue];
  v13 = [v11 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic2 = [v13 convertFromSystemToMonotonic];

  [v10 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampEnd"];
  [(PLOperator *)self logEntry:v10];
}

- (void)logEventIntervalRapportReceivedMessage:(id)message
{
  messageCopy = message;
  v5 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"RapportReceivedMessage"];
  if (v5)
  {
    v6 = [messageCopy objectForKeyedSubscript:@"timeBegin"];
    v7 = [messageCopy objectForKeyedSubscript:@"timeEnd"];
    v8 = v7;
    if (v6 && v7)
    {
      v9 = objc_alloc(MEMORY[0x277D3F190]);
      convertFromSystemToMonotonic = [v6 convertFromSystemToMonotonic];
      v11 = [v9 initWithEntryKey:v5 withDate:convertFromSystemToMonotonic];

      convertFromSystemToMonotonic2 = [v8 convertFromSystemToMonotonic];
      [v11 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampEnd"];

      v13 = [messageCopy objectForKeyedSubscript:@"appID"];
      [v11 setObject:v13 forKeyedSubscript:@"appID"];

      v14 = [messageCopy objectForKeyedSubscript:@"type"];
      [v11 setObject:v14 forKeyedSubscript:@"type"];

      v15 = [messageCopy objectForKeyedSubscript:@"bytes"];
      [v11 setObject:v15 forKeyedSubscript:@"bytes"];

      v16 = [messageCopy objectForKeyedSubscript:@"identifier"];
      [v11 setObject:v16 forKeyedSubscript:@"identifier"];

      v17 = [messageCopy objectForKeyedSubscript:@"linkType"];
      [v11 setObject:v17 forKeyedSubscript:@"linkType"];

      v18 = [messageCopy objectForKeyedSubscript:@"messages"];
      [v11 setObject:v18 forKeyedSubscript:@"messages"];

      v19 = [messageCopy objectForKeyedSubscript:@"senderID"];
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

- (void)logEventIntervalNameSpotlightIndexes:(id)indexes
{
  v31[1] = *MEMORY[0x277D85DE8];
  indexesCopy = indexes;
  v5 = [indexesCopy objectForKeyedSubscript:@"processName"];
  v6 = [indexesCopy objectForKeyedSubscript:@"timestamp"];
  convertFromSystemToMonotonic = [v6 convertFromSystemToMonotonic];

  v8 = [indexesCopy objectForKeyedSubscript:@"timestampEnd"];
  convertFromSystemToMonotonic2 = [v8 convertFromSystemToMonotonic];

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v11 = monotonicDate;
  if (convertFromSystemToMonotonic)
  {
    if (convertFromSystemToMonotonic2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    convertFromSystemToMonotonic = monotonicDate;
    if (convertFromSystemToMonotonic2)
    {
      goto LABEL_3;
    }
  }

  convertFromSystemToMonotonic2 = v11;
LABEL_3:
  v12 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"SpotlightIndexes"];
  array = [MEMORY[0x277CBEB18] array];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __51__PLXPCAgent_logEventIntervalNameSpotlightIndexes___block_invoke;
  v24 = &unk_279A5E408;
  v14 = v12;
  v25 = v14;
  v15 = convertFromSystemToMonotonic;
  v26 = v15;
  v16 = convertFromSystemToMonotonic2;
  v27 = v16;
  v17 = v5;
  v28 = v17;
  v18 = array;
  v29 = v18;
  [indexesCopy enumerateKeysAndObjectsUsingBlock:&v21];
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

- (void)logEventIntervalNameSpotlightQueries:(id)queries
{
  v31[1] = *MEMORY[0x277D85DE8];
  queriesCopy = queries;
  v5 = [queriesCopy objectForKeyedSubscript:@"processName"];
  v6 = [queriesCopy objectForKeyedSubscript:@"timestamp"];
  convertFromSystemToMonotonic = [v6 convertFromSystemToMonotonic];

  v8 = [queriesCopy objectForKeyedSubscript:@"timestampEnd"];
  convertFromSystemToMonotonic2 = [v8 convertFromSystemToMonotonic];

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v11 = monotonicDate;
  if (convertFromSystemToMonotonic)
  {
    if (convertFromSystemToMonotonic2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    convertFromSystemToMonotonic = monotonicDate;
    if (convertFromSystemToMonotonic2)
    {
      goto LABEL_3;
    }
  }

  convertFromSystemToMonotonic2 = v11;
LABEL_3:
  v12 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"SpotlightQueries"];
  array = [MEMORY[0x277CBEB18] array];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __51__PLXPCAgent_logEventIntervalNameSpotlightQueries___block_invoke;
  v24 = &unk_279A5E408;
  v14 = v12;
  v25 = v14;
  v15 = convertFromSystemToMonotonic;
  v26 = v15;
  v16 = convertFromSystemToMonotonic2;
  v27 = v16;
  v17 = v5;
  v28 = v17;
  v18 = array;
  v29 = v18;
  [queriesCopy enumerateKeysAndObjectsUsingBlock:&v21];
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

- (void)logEventBackwardAVConference:(id)conference
{
  conferenceCopy = conference;
  v4 = [conferenceCopy objectForKeyedSubscript:@"method"];
  if (v4)
  {
    v5 = v4;
    v6 = [conferenceCopy objectForKeyedSubscript:@"method"];
    intValue = [v6 intValue];

    if (intValue == 70)
    {
      v8 = [(PLOperator *)PLXPCAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AVConference"];
      v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:conferenceCopy];
      v10 = [conferenceCopy objectForKeyedSubscript:@"_clientName"];

      if (v10)
      {
        v11 = [conferenceCopy objectForKeyedSubscript:@"_clientName"];
        [v9 setObject:v11 forKeyedSubscript:@"ClientName"];
      }

      v12 = [conferenceCopy objectForKeyedSubscript:@"_serviceName"];

      if (v12)
      {
        v13 = [conferenceCopy objectForKeyedSubscript:@"_serviceName"];
        [v9 setObject:v13 forKeyedSubscript:@"ServiceName"];
      }

      [(PLOperator *)self logEntry:v9];
    }
  }
}

- (void)logEventIntervalUserSafetyProcessing:(id)processing
{
  v4 = *MEMORY[0x277D3F5D8];
  processingCopy = processing;
  v18 = [(PLOperator *)PLXPCAgent entryKeyForType:v4 andName:@"UserSafetyProcessing"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [processingCopy objectForKeyedSubscript:@"StartTimestamp"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v18 withDate:convertFromSystemToMonotonic];
  v11 = [processingCopy objectForKeyedSubscript:@"AssetType"];
  [v10 setObject:v11 forKeyedSubscript:@"AssetType"];

  v12 = [processingCopy objectForKeyedSubscript:@"ClientBundleID"];
  [v10 setObject:v12 forKeyedSubscript:@"ClientBundleID"];

  v13 = MEMORY[0x277CBEAA8];
  v14 = [processingCopy objectForKeyedSubscript:@"EndTimestamp"];
  [v14 doubleValue];
  v15 = [v13 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic2 = [v15 convertFromSystemToMonotonic];

  [v10 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"EndTimestamp"];
  v17 = [processingCopy objectForKeyedSubscript:@"IsCacheReused"];

  [v10 setObject:v17 forKeyedSubscript:@"IsCacheReused"];
  [(PLOperator *)self logEntry:v10];
}

- (void)logEventIntervalEndCPUViolations:(id)violations
{
  violationsCopy = violations;
  v5 = [violationsCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [violationsCopy objectForKeyedSubscript:@"timestampEnd"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  [v5 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"timestampEnd"];
  v10 = MEMORY[0x277CBEAA8];
  v11 = [violationsCopy objectForKeyedSubscript:@"timestamp"];

  [v11 doubleValue];
  v12 = [v10 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic2 = [v12 convertFromSystemToMonotonic];

  v14 = PLLogXPC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventIntervalEndCPUViolations:];
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"CPUViolations" data:v5 date:convertFromSystemToMonotonic2];
}

- (void)logEventIntervalPowerExceptionsDetection:(id)detection
{
  detectionCopy = detection;
  v5 = [detectionCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [detectionCopy objectForKeyedSubscript:@"timestampEnd"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = MEMORY[0x277CBEAA8];
  v11 = [detectionCopy objectForKeyedSubscript:@"timestampStart"];

  [v11 doubleValue];
  v12 = [v10 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic2 = [v12 convertFromSystemToMonotonic];

  [v5 setObject:convertFromSystemToMonotonic forKeyedSubscript:@"timestampEnd"];
  [v5 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampStart"];
  v14 = PLLogXPC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventIntervalPowerExceptionsDetection:];
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"PowerExceptionsDetection" data:v5 date:0];
}

- (void)logEventIntervalVKDataScanner:(id)scanner
{
  scannerCopy = scanner;
  v5 = [scannerCopy mutableCopy];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [scannerCopy objectForKeyedSubscript:@"SessionStartTime"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  [v5 removeObjectForKey:@"SessionStartTime"];
  v10 = MEMORY[0x277CBEAA8];
  v11 = [scannerCopy objectForKeyedSubscript:@"SessionStopTime"];

  [v11 doubleValue];
  v12 = [v10 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic2 = [v12 convertFromSystemToMonotonic];

  [v5 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"SessionStopTime"];
  v14 = PLLogXPC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLXPCAgent logEventIntervalVKDataScanner:];
  }

  [(PLOperator *)self logForSubsystem:@"XPCMetrics" category:@"VKDataScanner" data:v5 date:convertFromSystemToMonotonic];
}

- (void)logAlbumAnimation:(id)animation
{
  animationCopy = animation;
  v5 = [animationCopy mutableCopy];
  v6 = [animationCopy objectForKeyedSubscript:@"AlbumAnimationDuration"];

  if (v6)
  {
    v7 = [animationCopy objectForKeyedSubscript:@"AlbumAnimationDuration"];
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

- (void)logAlbumMotion:(id)motion
{
  motionCopy = motion;
  v5 = [motionCopy mutableCopy];
  v6 = [motionCopy objectForKeyedSubscript:@"AlbumMotionDownload"];

  if (v6)
  {
    v7 = [motionCopy objectForKeyedSubscript:@"AlbumMotionDownload"];
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

- (void)logMailCategorization:(id)categorization
{
  categorizationCopy = categorization;
  v5 = [categorizationCopy mutableCopy];
  v6 = [categorizationCopy objectForKeyedSubscript:@"count"];

  if (v6)
  {
    v7 = [categorizationCopy objectForKeyedSubscript:@"count"];
    intValue = [v7 intValue];

    if (intValue > 10)
    {
      v9 = [PLUtilities roundToSigFig:intValue withSigFig:1];
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

- (void)createAccessoryAccountingEventWithName:(id)name isStartEvent:(BOOL)event
{
  eventCopy = event;
  v14[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v6 = @"accessory-unknown";
    if (nameCopy && [(__CFString *)nameCopy length])
    {
      v6 = nameCopy;
    }

    v7 = v6;
    v8 = v7;
    if (eventCopy)
    {
      v13 = v7;
      v14[0] = &unk_28714B6C8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v9 = MEMORY[0x277CBEC10];
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:10 withChildNodeNameToWeight:v9 withStartDate:monotonicDate];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)createAirDropAccountingEvent:(id)event
{
  v23[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v4 = [eventCopy objectForKeyedSubscript:@"State"];
    if (v4)
    {
      v5 = v4;
      v6 = [eventCopy objectForKeyedSubscript:@"Subevent"];
      if (!v6)
      {
        goto LABEL_15;
      }

      v7 = v6;
      v8 = [eventCopy objectForKeyedSubscript:@"Subevent"];
      if ([v8 isEqualToString:@"BluetoothScanning"])
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [eventCopy objectForKeyedSubscript:@"Subevent"];
      v10 = [v9 isEqualToString:@"BonjourAdvertise"];

      if ((v10 & 1) == 0)
      {
        v11 = [eventCopy objectForKeyedSubscript:@"bundleId"];
        if (v11)
        {
          v5 = [eventCopy objectForKeyedSubscript:@"bundleId"];
        }

        else
        {
          v5 = @"airdrop-unknown";
        }

        v12 = [eventCopy objectForKeyedSubscript:@"State"];
        v13 = [v12 isEqualToString:@"Start"];

        if (v13)
        {
          v22 = v5;
          v23[0] = &unk_28714B6C8;
          v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
          v21 = v5;
          v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
LABEL_13:
          mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
          entryDate = [eventCopy entryDate];
          [mEMORY[0x277D3F0C0] createQualificationEventForwardWithQualificationID:4 withChildNodeNames:v8 withStartDate:entryDate];

          mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
          entryDate2 = [eventCopy entryDate];
          [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:v7 withStartDate:entryDate2];

          goto LABEL_14;
        }

        v14 = [eventCopy objectForKeyedSubscript:@"State"];
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

- (void)createInCallServiceAccountingEvent:(id)event
{
  v24[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v4 = [eventCopy objectForKeyedSubscript:@"bundleID"];
    if (v4)
    {
      v5 = [eventCopy objectForKeyedSubscript:@"bundleID"];
    }

    else
    {
      v5 = @"incallservice-unknown";
    }

    v6 = [eventCopy objectForKeyedSubscript:@"status"];
    if ([v6 isEqualToString:@"callForegrounded"])
    {
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate = [eventCopy entryDate];
      [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:1 withAddingChildNodeName:v5 withStartDate:entryDate];

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate2 = [eventCopy entryDate];
      [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:2 withAddingChildNodeName:v5 withStartDate:entryDate2];
    }

    else if ([v6 isEqualToString:@"callBackgrounded"])
    {
      mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate3 = [eventCopy entryDate];
      [mEMORY[0x277D3F0C0]3 createDistributionEventForwardWithDistributionID:1 withRemovingChildNodeName:v5 withStartDate:entryDate3];

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate2 = [eventCopy entryDate];
      [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:2 withRemovingChildNodeName:v5 withStartDate:entryDate2];
    }

    else if ([v6 isEqualToString:@"callStart"])
    {
      mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate4 = [eventCopy entryDate];
      [mEMORY[0x277D3F0C0]4 createDistributionEventForwardWithDistributionID:11 withAddingChildNodeName:v5 withStartDate:entryDate4];

      mEMORY[0x277D3F0C0]5 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate5 = [eventCopy entryDate];
      [mEMORY[0x277D3F0C0]5 createDistributionEventForwardWithDistributionID:7 withAddingChildNodeName:v5 withStartDate:entryDate5];

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      v23 = v5;
      v24[0] = &unk_28714B6C8;
      entryDate2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:44 withChildNodeNameToWeight:entryDate2 withStartDate:monotonicDate];
    }

    else
    {
      if (![v6 isEqualToString:@"callStop"])
      {
LABEL_14:

        goto LABEL_15;
      }

      mEMORY[0x277D3F0C0]6 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate6 = [eventCopy entryDate];
      [mEMORY[0x277D3F0C0]6 createDistributionEventForwardWithDistributionID:11 withRemovingChildNodeName:v5 withStartDate:entryDate6];

      mEMORY[0x277D3F0C0]7 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate7 = [eventCopy entryDate];
      [mEMORY[0x277D3F0C0]7 createDistributionEventForwardWithDistributionID:7 withRemovingChildNodeName:v5 withStartDate:entryDate7];

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
      [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:44 withChildNodeNameToWeight:&unk_28714A728 withStartDate:entryDate2];
    }

    goto LABEL_14;
  }

LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
}

- (int)mapAvailabilityModeSemanticType:(int64_t)type
{
  if ((type + 2) > 0xB)
  {
    return 6;
  }

  else
  {
    return dword_25F023E30[type + 2];
  }
}

- (int64_t)modeTypeStringToEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"Presence"])
  {
    v4 = 10;
  }

  else if ([enumCopy isEqualToString:@"DetailedNonP2P"])
  {
    v4 = 20;
  }

  else if ([enumCopy isEqualToString:@"Detailed"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)mapPixelsToBucket:(unint64_t)bucket
{
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (bucket > 0x7E9000)
  {
    v6 = 5;
  }

  if (bucket >= 0x1FA401)
  {
    v5 = v6;
  }

  if (bucket > 0xE1000)
  {
    v4 = v5;
  }

  if (bucket >= 0x7E901)
  {
    v3 = v4;
  }

  if (bucket >= 0x5DC01)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)eventNameStringToEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"WatchPresence"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"WatchAbsence"])
  {
    v4 = 2;
  }

  else if ([enumCopy isEqualToString:@"WatchDisconnected"])
  {
    v4 = 3;
  }

  else if ([enumCopy isEqualToString:@"WatchConnected"])
  {
    v4 = 4;
  }

  else if ([enumCopy isEqualToString:@"WatchUnavailable"])
  {
    v4 = 5;
  }

  else if ([enumCopy isEqualToString:@"WatchUnreachable"])
  {
    v4 = 6;
  }

  else if ([enumCopy isEqualToString:@"WatchSwitched"])
  {
    v4 = 7;
  }

  else if ([enumCopy isEqualToString:@"WatchWristStatusOnWrist"])
  {
    v4 = 8;
  }

  else if ([enumCopy isEqualToString:@"WatchWristStatusOffWrist"])
  {
    v4 = 9;
  }

  else if ([enumCopy isEqualToString:@"WatchWristStatusDisabled"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccountingEntriesFor:(id)for withBundleID:(id)d withStartTime:(double)time withEndTime:(double)endTime
{
  forCopy = for;
  dCopy = d;
  if (dCopy)
  {
    lastSBCupdateTimestamp = self->_lastSBCupdateTimestamp;
    if (lastSBCupdateTimestamp >= endTime || lastSBCupdateTimestamp <= time)
    {
      lastSBCupdateTimestamp = time;
    }

    v13 = endTime - lastSBCupdateTimestamp;
    if (v13 > 0.0)
    {
      v14 = [forCopy objectForKey:dCopy];

      if (v14)
      {
        v15 = [forCopy objectForKey:dCopy];
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
      [forCopy setObject:v20 forKey:dCopy];
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
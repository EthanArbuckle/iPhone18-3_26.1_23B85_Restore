@interface PLIOReportAgent
+ (BOOL)isOldLostPerfLoggingModel;
+ (BOOL)shouldLogAmcStatsPerfCounters;
+ (BOOL)shouldLogAtAppSwitchTrigger;
+ (BOOL)shouldLogAudioEvent;
+ (BOOL)shouldLogDCPScanoutStats;
+ (BOOL)shouldLogMTRAging;
+ (BOOL)shouldLogMemCacheStats;
+ (BOOL)shouldLogSleepMedia;
+ (BOOL)shouldLogSoCStats;
+ (BOOL)shouldLogSocStatsEvents;
+ (BOOL)shouldLogSocStatsPmgrCounters;
+ (BOOL)shouldLogThermalUPOLimiting;
+ (id)energyKeyToRootNodeID;
+ (id)entryEventBackwardDefinition3DTouchforce;
+ (id)entryEventBackwardDefinition3DTouchluna;
+ (id)entryEventBackwardDefinitionAMCStatsPerfCounters;
+ (id)entryEventBackwardDefinitionANS2PCIE0;
+ (id)entryEventBackwardDefinitionAOPAOPAudioFW;
+ (id)entryEventBackwardDefinitionAOPAOPSensors;
+ (id)entryEventBackwardDefinitionAOPAOP_Haptics;
+ (id)entryEventBackwardDefinitionAOPAmpPower;
+ (id)entryEventBackwardDefinitionAOPMConnectorPower;
+ (id)entryEventBackwardDefinitionAOPPerformance;
+ (id)entryEventBackwardDefinitionAOPPowerState;
+ (id)entryEventBackwardDefinitionAOPProx;
+ (id)entryEventBackwardDefinitionAOPaccelpower;
+ (id)entryEventBackwardDefinitionAOPcmareceived;
+ (id)entryEventBackwardDefinitionAOPcompasspower;
+ (id)entryEventBackwardDefinitionAOPgyropower;
+ (id)entryEventBackwardDefinitionAOPgyroreceived;
+ (id)entryEventBackwardDefinitionAOPlasreceived;
+ (id)entryEventBackwardDefinitionAOPmuxPower;
+ (id)entryEventBackwardDefinitionAOPpressurepower;
+ (id)entryEventBackwardDefinitionActuatorPowerState;
+ (id)entryEventBackwardDefinitionAppleEmbeddedPCIELinkStates;
+ (id)entryEventBackwardDefinitionBluetooth;
+ (id)entryEventBackwardDefinitionBonnLisaStats;
+ (id)entryEventBackwardDefinitionCPUStatsActiveTimeHistogram;
+ (id)entryEventBackwardDefinitionCPUStatsCPUComplexPerformanceStatesData;
+ (id)entryEventBackwardDefinitionCPUStatsCPUComplexThermalUPOLimiting;
+ (id)entryEventBackwardDefinitionCPUStatsCPUComplexVoltageStateTime;
+ (id)entryEventBackwardDefinitionCPUStatsCPUCorePerformanceStatesData;
+ (id)entryEventBackwardDefinitionCPUStatsCPUEvents;
+ (id)entryEventBackwardDefinitionCPUStatsDVDStats;
+ (id)entryEventBackwardDefinitionCPUStatsVoltageDomainPerformanceStates;
+ (id)entryEventBackwardDefinitionCarnelianVaxholmStats;
+ (id)entryEventBackwardDefinitionCorePerformanceLevelResidency;
+ (id)entryEventBackwardDefinitionCoronetPowerStats;
+ (id)entryEventBackwardDefinitionDCPEXT0Scanout;
+ (id)entryEventBackwardDefinitionDCPEXT0Swap;
+ (id)entryEventBackwardDefinitionDCPEXT1Scanout;
+ (id)entryEventBackwardDefinitionDCPEXT1Swap;
+ (id)entryEventBackwardDefinitionDCPEXT2Scanout;
+ (id)entryEventBackwardDefinitionDCPEXT2Swap;
+ (id)entryEventBackwardDefinitionDCPEXT3Scanout;
+ (id)entryEventBackwardDefinitionDCPEXT3Swap;
+ (id)entryEventBackwardDefinitionDCPScanout;
+ (id)entryEventBackwardDefinitionDCPScanoutStats;
+ (id)entryEventBackwardDefinitionDCPSwap;
+ (id)entryEventBackwardDefinitionDisplay;
+ (id)entryEventBackwardDefinitionEnergyModel;
+ (id)entryEventBackwardDefinitionGPUCStates;
+ (id)entryEventBackwardDefinitionGPUStatsActiveTimeHistogram;
+ (id)entryEventBackwardDefinitionGPUStatsDVDRequestStates;
+ (id)entryEventBackwardDefinitionGPUStatsGPUCLTM;
+ (id)entryEventBackwardDefinitionGPUStatsGPUPerformanceStates;
+ (id)entryEventBackwardDefinitionGPUStatsIdleTimeHistogram;
+ (id)entryEventBackwardDefinitionH11ANEH11ANEEvents;
+ (id)entryEventBackwardDefinitionH11ANEH11ANEPowerState;
+ (id)entryEventBackwardDefinitionH13ISPH13ISPEvents;
+ (id)entryEventBackwardDefinitionH6ISPH6ISPPowerState;
+ (id)entryEventBackwardDefinitionHapticsStats;
+ (id)entryEventBackwardDefinitionIOMFBFrameRatePhase;
+ (id)entryEventBackwardDefinitionIOMFBNativeRate;
+ (id)entryEventBackwardDefinitionIOMFBScanout;
+ (id)entryEventBackwardDefinitionIOMFBSwap;
+ (id)entryEventBackwardDefinitionIOMFBUSRHistogram;
+ (id)entryEventBackwardDefinitionIOReport;
+ (id)entryEventBackwardDefinitionMTPCaptureButton;
+ (id)entryEventBackwardDefinitionMTPIOPState;
+ (id)entryEventBackwardDefinitionMTPPower;
+ (id)entryEventBackwardDefinitionMTRAging;
+ (id)entryEventBackwardDefinitionMemCacheStats;
+ (id)entryEventBackwardDefinitionMesaMesaPowerState;
+ (id)entryEventBackwardDefinitionMultitouch;
+ (id)entryEventBackwardDefinitionMultitouchCPUStats;
+ (id)entryEventBackwardDefinitionMultitouchHighLevelStats;
+ (id)entryEventBackwardDefinitionNVMe;
+ (id)entryEventBackwardDefinitionNVMeBWLimits;
+ (id)entryEventBackwardDefinitionNVMeTimeweightedthrottlestatistics;
+ (id)entryEventBackwardDefinitionOpticalInterfaceStats;
+ (id)entryEventBackwardDefinitionPMPDCS;
+ (id)entryEventBackwardDefinitionPMPDRAMBW;
+ (id)entryEventBackwardDefinitionPMPDRAMState;
+ (id)entryEventBackwardDefinitionPMPEnergyCounters;
+ (id)entryEventBackwardDefinitionPMPFabricBW;
+ (id)entryEventBackwardDefinitionPMPPMCDCSFloor;
+ (id)entryEventBackwardDefinitionPMPPMCSOCFloor;
+ (id)entryEventBackwardDefinitionPMPPerfDrivers;
+ (id)entryEventBackwardDefinitionPMPSOC;
+ (id)entryEventBackwardDefinitionPPMStatsCPMSFerocity;
+ (id)entryEventBackwardDefinitionPPMStatsCPMSLanesEngagement;
+ (id)entryEventBackwardDefinitionPPMStatsCPMSPowerReduction;
+ (id)entryEventBackwardDefinitionPPMStatsDroopController;
+ (id)entryEventBackwardDefinitionPPMStatsPeakPowerPressure;
+ (id)entryEventBackwardDefinitionPPMStatsPolicyCPMS;
+ (id)entryEventBackwardDefinitionPRLUsageAttCheck;
+ (id)entryEventBackwardDefinitionPRLUsageBCheck;
+ (id)entryEventBackwardDefinitionPRLUsageJOn;
+ (id)entryEventBackwardDefinitionPRLUsagePreCheck;
+ (id)entryEventBackwardDefinitionPRLUsageProCheck;
+ (id)entryEventBackwardDefinitionPRLUsageRStandby;
+ (id)entryEventBackwardDefinitionSIOIOPState;
+ (id)entryEventBackwardDefinitionSIOPower;
+ (id)entryEventBackwardDefinitionSoCStatsDeviceStates;
+ (id)entryEventBackwardDefinitionSoCStatsDeviceStatesChannelID;
+ (id)entryEventBackwardDefinitionSoCStatsEvents;
+ (id)entryEventBackwardDefinitionSoCStatsEventsRaw;
+ (id)entryEventBackwardDefinitionSoCStatsH6PMGRCounters;
+ (id)entryEventBackwardDefinitionSoCStatsVoltageDomainPerformanceStates;
+ (id)entryEventBackwardDefinitionSocStatsDvdStats;
+ (id)entryEventBackwardDefinitionSpeakerPowerState;
+ (id)entryEventBackwardDefinitionSpeakerSpeakerEvents;
+ (id)entryEventBackwardDefinitionWLANPowerConnections;
+ (id)entryEventBackwardDefinitionWLANPowerPhyActivity;
+ (id)entryEventBackwardDefinitionWLANPowerPhyScan;
+ (id)entryEventBackwardDefinitionWifiChipAWDLActivity;
+ (id)entryEventBackwardDefinitionWifiChipConnectionActivity;
+ (id)entryEventBackwardDefinitionWifiChipHSICActivity;
+ (id)entryEventBackwardDefinitionWifiChipPCIeActivity;
+ (id)entryEventBackwardDefinitionWifiChipPMAwakeActivity;
+ (id)entryEventBackwardDefinitionWifiChipRadioPhyicalLayerActivity;
+ (id)entryEventBackwardDefinitionWifiChipRxChipErrorCounters;
+ (id)entryEventBackwardDefinitionWifiChipRxPerRateCounters;
+ (id)entryEventBackwardDefinitionWifiChipRxStatCounters;
+ (id)entryEventBackwardDefinitionWifiChipScanActivity;
+ (id)entryEventBackwardDefinitionWifiChipTxChipErrorCounters;
+ (id)entryEventBackwardDefinitionWifiChipTxStatCounters;
+ (id)entryEventBackwardDefinitionbacklightreportplaybackbacklightfactorsreport;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionMemCacheLabels;
+ (id)entryEventForwardDefinitionSoCStatsOprtp;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitionPmtelemetry_Flex;
+ (id)entryEventPointDefinitionSampleSaturation;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)allowlistedChannelID:(unint64_t)a3;
- (BOOL)processNotificationForChannelGroup:(id)a3;
- (PLIOReportAgent)init;
- (id)allowSamplingMemCacheStats:(id)a3;
- (id)buildAudioEventSet:(IOReportGroupChecks *)a3;
- (id)buildBaseSet:(IOReportGroupChecks *)a3;
- (id)buildDailySet:(IOReportGroupChecks *)a3;
- (id)buildDisplayStateChangeSet:(IOReportGroupChecks *)a3;
- (id)buildHalfHourSet:(IOReportGroupChecks *)a3;
- (id)buildScreenStateSet:(IOReportGroupChecks *)a3;
- (id)buildSnapshotSet:(IOReportGroupChecks *)a3;
- (id)buildWakeSet:(IOReportGroupChecks *)a3;
- (id)channelDictionaryWithChannelSet:(id)a3 withMinProcessTime:(double)a4;
- (id)entryForReportingGroup:(id)a3 withKey:(id)a4 withChannelGroup:(id)a5 withEntryDate:(id)a6;
- (id)entryKeyForEventWithGroupName:(id)a3 withSubGroupName:(id)a4;
- (id)getBucketName:(int)a3;
- (id)sampleDeltaForChannelGroup:(id)a3;
- (id)sampleSnapshotForChannelGroup:(id)a3;
- (int)addReportSample:(__CFDictionary *)a3 toEntry:(id)a4;
- (int)getAOPSensorsChannelId:(id)a3;
- (int)getChannelId:(id)a3;
- (int)getComplexVoltageStateTimeChannelId:(id)a3;
- (int)getCoreChannelId:(id)a3;
- (void)addReportingGroup:(id)a3 toEntry:(id)a4;
- (void)connectToMemCacheDriver;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)log;
- (void)logDisplayOffAPWakeStats;
- (void)logEngagementToCA:(id)a3;
- (void)logEventBackwardAOPPerformance:(id)a3 withChannels:(id)a4;
- (void)logEventBackwardAOPPowerState:(id)a3 withChannels:(id)a4;
- (void)logEventBackwardComplexThermalUPOLimiting:(id)a3 withChannels:(id)a4;
- (void)logEventBackwardComplexVoltageStateTime:(id)a3 withChannels:(id)a4;
- (void)logEventBackwardCorePerformanceStates:(id)a3 withChannels:(id)a4;
- (void)logEventBackwardIOReport;
- (void)logEventBackwardIOReportAtAudioEvent;
- (void)logEventBackwardIOReportAtDisplayOffAPWake;
- (void)logEventBackwardIOReportAtDisplayStateChange;
- (void)logEventBackwardIOReportAtScreenStateChange:(id)a3;
- (void)logEventBackwardIOReportAtWake;
- (void)logEventBackwardIOReportWithDelta:(id)a3 forChannelGroup:(id)a4;
- (void)logEventBackwardMTRAging;
- (void)logEventBackwardMemCacheStats:(id)a3;
- (void)logEventBackwardMemCacheStatsAtScreenStateChange:(id)a3;
- (void)logEventBackwardSoCStatsDeviceStatesChannelID:(id)a3 withChannelGroup:(id)a4 withEntryDate:(id)a5;
- (void)logEventForwardMemCacheLabels;
- (void)logEventForwardSoCStatsOperatingPoints;
- (void)logEventPointIOReport;
- (void)logEventPointIOReportSaturation:(id)a3;
- (void)logEventPointPMTelemetryFlex;
- (void)logSOCHOT0Snapshot:(id)a3;
- (void)logSnapshotValues:(id)a3;
- (void)logStateResidency:(id)a3 withKey:(id)a4 withEntryDate:(id)a5;
- (void)modelAPSoCPower:(id)a3;
- (void)modelPMPAPSocPower:(id)a3;
- (void)readAndLogMemCacheStats;
- (void)sampleDeltaForChannelSets;
- (void)startDisplayOffPeriodicTimer;
- (void)stopDisplayOffPeriodicTimer;
- (void)subscribeToChannelSets;
- (void)triggerMemCacheLogging:(id)a3 withDelay:(unint64_t)a4;
@end

@implementation PLIOReportAgent

+ (BOOL)shouldLogMemCacheStats
{
  if (qword_2811F47A8 != -1)
  {
    dispatch_once(&qword_2811F47A8, &__block_literal_global_8327);
  }

  return byte_2811F475D;
}

uint64_t __43__PLIOReportAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  [*(a1 + 32) logEventBackwardIOReport];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v2 = PLLogIOReport();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Received SBC Notification, logging AOD tables", v4, 2u);
    }

    [*(a1 + 32) logEventBackwardIOReportAtDisplayStateChange];
  }

  [*(a1 + 32) logEventPointIOReport];
  return [*(a1 + 32) logEventBackwardPSRToCA];
}

- (void)logEventBackwardIOReport
{
  v3 = [(PLIOReportAgent *)self sampleChannelsSignificantBattery];
  v4 = [(PLIOReportAgent *)self processNotificationForChannelGroup:v3];

  if (v4)
  {
    v5 = [(PLIOReportAgent *)self sampleChannelsSignificantBattery];
    v6 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:v5];
    v7 = [(PLIOReportAgent *)self sampleChannelsSignificantBattery];
    [(PLIOReportAgent *)self logEventBackwardIOReportWithDelta:v6 forChannelGroup:v7];
  }

  v8 = [(PLIOReportAgent *)self sampleChannelsHalfHour];
  v9 = [(PLIOReportAgent *)self processNotificationForChannelGroup:v8];

  if (v9)
  {
    v10 = [(PLIOReportAgent *)self sampleChannelsHalfHour];
    v11 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:v10];
    v12 = [(PLIOReportAgent *)self sampleChannelsHalfHour];
    [(PLIOReportAgent *)self logEventBackwardIOReportWithDelta:v11 forChannelGroup:v12];
  }

  v13 = [(PLIOReportAgent *)self sampleChannelsDaily];
  v14 = [(PLIOReportAgent *)self processNotificationForChannelGroup:v13];

  if (v14)
  {
    v17 = [(PLIOReportAgent *)self sampleChannelsDaily];
    v15 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:v17];
    v16 = [(PLIOReportAgent *)self sampleChannelsDaily];
    [(PLIOReportAgent *)self logEventBackwardIOReportWithDelta:v15 forChannelGroup:v16];
  }
}

- (void)logEventBackwardIOReportAtWake
{
  v3 = [(PLIOReportAgent *)self sampleChannelsWake];
  v4 = [(PLIOReportAgent *)self processNotificationForChannelGroup:v3];

  if (v4)
  {
    v7 = [(PLIOReportAgent *)self sampleChannelsWake];
    v5 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:v7];
    v6 = [(PLIOReportAgent *)self sampleChannelsWake];
    [(PLIOReportAgent *)self logEventBackwardIOReportWithDelta:v5 forChannelGroup:v6];
  }
}

+ (id)energyKeyToRootNodeID
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    if (qword_2811F4868 != -1)
    {
      dispatch_once(&qword_2811F4868, &__block_literal_global_9744);
    }

    v2 = qword_2811F4870;
  }

  return v2;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLIOReportAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"pmtelemetry_flex";
  v3 = [a1 entryEventPointDefinitionPmtelemetry_Flex];
  v8[1] = @"SampleSaturation";
  v9[0] = v3;
  v4 = [a1 entryEventPointDefinitionSampleSaturation];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventPointDefinitionPmtelemetry_Flex
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_282C1C028;
    v18[1] = @"logEventPointIOReport";
    v3 = *MEMORY[0x277D3F580];
    v17[2] = *MEMORY[0x277D3F4F8];
    v17[3] = v3;
    v18[2] = MEMORY[0x277CBEC28];
    v18[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v20[0] = v4;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"SAGV Average Ratio";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v16[0] = v6;
    v15[1] = @"IA HWP Clipped Bins";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v16[1] = v8;
    v15[2] = @"IA IccMax Clipped Bins";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionSampleSaturation
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasCapability:7] && (objc_msgSend(MEMORY[0x277D3F208], "kPLSoCClassOfDevice") < 1001018 || (objc_msgSend(MEMORY[0x277D3F208], "isiOS") & 1) == 0))
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F508];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v3;
    v15[0] = &unk_282C1C028;
    v15[1] = MEMORY[0x277CBEC38];
    v14[2] = *MEMORY[0x277D3F4F8];
    v15[2] = MEMORY[0x277CBEC28];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v17[0] = v4;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"CmpsSampleSaturationCount";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v12[1] = @"MagSampleSaturationCount";
    v13[0] = v6;
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v13[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v17[1] = v9;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v2 = MEMORY[0x277CBEC10];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entryEventForwardDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"MemCacheLabels";
  v3 = [a1 entryEventForwardDefinitionMemCacheLabels];
  v8[1] = @"SoCStatsoprtp";
  v9[0] = v3;
  v4 = [a1 entryEventForwardDefinitionSoCStatsOprtp];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventForwardDefinitionMemCacheLabels
{
  v257[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogMemCacheStats])
  {
    v256[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4F8];
    v254[0] = *MEMORY[0x277D3F568];
    v254[1] = v2;
    v255[0] = &unk_282C1C038;
    v255[1] = MEMORY[0x277CBEC28];
    v3 = *MEMORY[0x277D3F588];
    v254[2] = *MEMORY[0x277D3F590];
    v254[3] = v3;
    v255[2] = &unk_282C10C08;
    v255[3] = &unk_282C10C20;
    v251 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v255 forKeys:v254 count:4];
    v257[0] = v251;
    v256[1] = *MEMORY[0x277D3F540];
    v250 = [PLIOReportAgent keyForSubBlock:0];
    v252[0] = v250;
    v249 = [MEMORY[0x277D3F198] sharedInstance];
    v248 = [v249 commonTypeDict_StringFormat];
    v253[0] = v248;
    v247 = [PLIOReportAgent keyForSubBlock:1];
    v252[1] = v247;
    v246 = [MEMORY[0x277D3F198] sharedInstance];
    v245 = [v246 commonTypeDict_StringFormat];
    v253[1] = v245;
    v244 = [PLIOReportAgent keyForSubBlock:2];
    v252[2] = v244;
    v243 = [MEMORY[0x277D3F198] sharedInstance];
    v242 = [v243 commonTypeDict_StringFormat];
    v253[2] = v242;
    v241 = [PLIOReportAgent keyForSubBlock:3];
    v252[3] = v241;
    v240 = [MEMORY[0x277D3F198] sharedInstance];
    v239 = [v240 commonTypeDict_StringFormat];
    v253[3] = v239;
    v238 = [PLIOReportAgent keyForSubBlock:4];
    v252[4] = v238;
    v237 = [MEMORY[0x277D3F198] sharedInstance];
    v236 = [v237 commonTypeDict_StringFormat];
    v253[4] = v236;
    v235 = [PLIOReportAgent keyForSubBlock:5];
    v252[5] = v235;
    v234 = [MEMORY[0x277D3F198] sharedInstance];
    v233 = [v234 commonTypeDict_StringFormat];
    v253[5] = v233;
    v232 = [PLIOReportAgent keyForSubBlock:6];
    v252[6] = v232;
    v231 = [MEMORY[0x277D3F198] sharedInstance];
    v230 = [v231 commonTypeDict_StringFormat];
    v253[6] = v230;
    v229 = [PLIOReportAgent keyForSubBlock:7];
    v252[7] = v229;
    v228 = [MEMORY[0x277D3F198] sharedInstance];
    v227 = [v228 commonTypeDict_StringFormat];
    v253[7] = v227;
    v226 = [PLIOReportAgent keyForSubBlock:8];
    v252[8] = v226;
    v225 = [MEMORY[0x277D3F198] sharedInstance];
    v224 = [v225 commonTypeDict_StringFormat];
    v253[8] = v224;
    v223 = [PLIOReportAgent keyForSubBlock:9];
    v252[9] = v223;
    v222 = [MEMORY[0x277D3F198] sharedInstance];
    v221 = [v222 commonTypeDict_StringFormat];
    v253[9] = v221;
    v220 = [PLIOReportAgent keyForSubBlock:10];
    v252[10] = v220;
    v219 = [MEMORY[0x277D3F198] sharedInstance];
    v218 = [v219 commonTypeDict_StringFormat];
    v253[10] = v218;
    v217 = [PLIOReportAgent keyForSubBlock:11];
    v252[11] = v217;
    v216 = [MEMORY[0x277D3F198] sharedInstance];
    v215 = [v216 commonTypeDict_StringFormat];
    v253[11] = v215;
    v214 = [PLIOReportAgent keyForSubBlock:12];
    v252[12] = v214;
    v213 = [MEMORY[0x277D3F198] sharedInstance];
    v212 = [v213 commonTypeDict_StringFormat];
    v253[12] = v212;
    v211 = [PLIOReportAgent keyForSubBlock:13];
    v252[13] = v211;
    v210 = [MEMORY[0x277D3F198] sharedInstance];
    v209 = [v210 commonTypeDict_StringFormat];
    v253[13] = v209;
    v208 = [PLIOReportAgent keyForSubBlock:14];
    v252[14] = v208;
    v207 = [MEMORY[0x277D3F198] sharedInstance];
    v206 = [v207 commonTypeDict_StringFormat];
    v253[14] = v206;
    v205 = [PLIOReportAgent keyForSubBlock:15];
    v252[15] = v205;
    v204 = [MEMORY[0x277D3F198] sharedInstance];
    v203 = [v204 commonTypeDict_StringFormat];
    v253[15] = v203;
    v202 = [PLIOReportAgent keyForSubBlock:16];
    v252[16] = v202;
    v201 = [MEMORY[0x277D3F198] sharedInstance];
    v200 = [v201 commonTypeDict_StringFormat];
    v253[16] = v200;
    v199 = [PLIOReportAgent keyForSubBlock:17];
    v252[17] = v199;
    v198 = [MEMORY[0x277D3F198] sharedInstance];
    v197 = [v198 commonTypeDict_StringFormat];
    v253[17] = v197;
    v196 = [PLIOReportAgent keyForSubBlock:18];
    v252[18] = v196;
    v195 = [MEMORY[0x277D3F198] sharedInstance];
    v194 = [v195 commonTypeDict_StringFormat];
    v253[18] = v194;
    v193 = [PLIOReportAgent keyForSubBlock:19];
    v252[19] = v193;
    v192 = [MEMORY[0x277D3F198] sharedInstance];
    v191 = [v192 commonTypeDict_StringFormat];
    v253[19] = v191;
    v190 = [PLIOReportAgent keyForSubBlock:20];
    v252[20] = v190;
    v189 = [MEMORY[0x277D3F198] sharedInstance];
    v188 = [v189 commonTypeDict_StringFormat];
    v253[20] = v188;
    v187 = [PLIOReportAgent keyForSubBlock:21];
    v252[21] = v187;
    v186 = [MEMORY[0x277D3F198] sharedInstance];
    v185 = [v186 commonTypeDict_StringFormat];
    v253[21] = v185;
    v184 = [PLIOReportAgent keyForSubBlock:22];
    v252[22] = v184;
    v183 = [MEMORY[0x277D3F198] sharedInstance];
    v182 = [v183 commonTypeDict_StringFormat];
    v253[22] = v182;
    v181 = [PLIOReportAgent keyForSubBlock:23];
    v252[23] = v181;
    v180 = [MEMORY[0x277D3F198] sharedInstance];
    v179 = [v180 commonTypeDict_StringFormat];
    v253[23] = v179;
    v178 = [PLIOReportAgent keyForSubBlock:24];
    v252[24] = v178;
    v177 = [MEMORY[0x277D3F198] sharedInstance];
    v176 = [v177 commonTypeDict_StringFormat];
    v253[24] = v176;
    v175 = [PLIOReportAgent keyForSubBlock:25];
    v252[25] = v175;
    v174 = [MEMORY[0x277D3F198] sharedInstance];
    v173 = [v174 commonTypeDict_StringFormat];
    v253[25] = v173;
    v172 = [PLIOReportAgent keyForSubBlock:26];
    v252[26] = v172;
    v171 = [MEMORY[0x277D3F198] sharedInstance];
    v170 = [v171 commonTypeDict_StringFormat];
    v253[26] = v170;
    v169 = [PLIOReportAgent keyForSubBlock:27];
    v252[27] = v169;
    v168 = [MEMORY[0x277D3F198] sharedInstance];
    v167 = [v168 commonTypeDict_StringFormat];
    v253[27] = v167;
    v166 = [PLIOReportAgent keyForSubBlock:28];
    v252[28] = v166;
    v165 = [MEMORY[0x277D3F198] sharedInstance];
    v164 = [v165 commonTypeDict_StringFormat];
    v253[28] = v164;
    v163 = [PLIOReportAgent keyForSubBlock:29];
    v252[29] = v163;
    v162 = [MEMORY[0x277D3F198] sharedInstance];
    v161 = [v162 commonTypeDict_StringFormat];
    v253[29] = v161;
    v160 = [PLIOReportAgent keyForSubBlock:30];
    v252[30] = v160;
    v159 = [MEMORY[0x277D3F198] sharedInstance];
    v158 = [v159 commonTypeDict_StringFormat];
    v253[30] = v158;
    v157 = [PLIOReportAgent keyForSubBlock:31];
    v252[31] = v157;
    v156 = [MEMORY[0x277D3F198] sharedInstance];
    v155 = [v156 commonTypeDict_StringFormat];
    v253[31] = v155;
    v154 = [PLIOReportAgent keyForSubBlock:32];
    v252[32] = v154;
    v153 = [MEMORY[0x277D3F198] sharedInstance];
    v152 = [v153 commonTypeDict_StringFormat];
    v253[32] = v152;
    v151 = [PLIOReportAgent keyForSubBlock:33];
    v252[33] = v151;
    v150 = [MEMORY[0x277D3F198] sharedInstance];
    v149 = [v150 commonTypeDict_StringFormat];
    v253[33] = v149;
    v148 = [PLIOReportAgent keyForSubBlock:34];
    v252[34] = v148;
    v147 = [MEMORY[0x277D3F198] sharedInstance];
    v146 = [v147 commonTypeDict_StringFormat];
    v253[34] = v146;
    v145 = [PLIOReportAgent keyForSubBlock:35];
    v252[35] = v145;
    v144 = [MEMORY[0x277D3F198] sharedInstance];
    v143 = [v144 commonTypeDict_StringFormat];
    v253[35] = v143;
    v142 = [PLIOReportAgent keyForSubBlock:36];
    v252[36] = v142;
    v141 = [MEMORY[0x277D3F198] sharedInstance];
    v140 = [v141 commonTypeDict_StringFormat];
    v253[36] = v140;
    v139 = [PLIOReportAgent keyForSubBlock:37];
    v252[37] = v139;
    v138 = [MEMORY[0x277D3F198] sharedInstance];
    v137 = [v138 commonTypeDict_StringFormat];
    v253[37] = v137;
    v136 = [PLIOReportAgent keyForSubBlock:38];
    v252[38] = v136;
    v135 = [MEMORY[0x277D3F198] sharedInstance];
    v134 = [v135 commonTypeDict_StringFormat];
    v253[38] = v134;
    v133 = [PLIOReportAgent keyForSubBlock:39];
    v252[39] = v133;
    v132 = [MEMORY[0x277D3F198] sharedInstance];
    v131 = [v132 commonTypeDict_StringFormat];
    v253[39] = v131;
    v130 = [PLIOReportAgent keyForSubBlock:40];
    v252[40] = v130;
    v129 = [MEMORY[0x277D3F198] sharedInstance];
    v128 = [v129 commonTypeDict_StringFormat];
    v253[40] = v128;
    v127 = [PLIOReportAgent keyForSubBlock:41];
    v252[41] = v127;
    v126 = [MEMORY[0x277D3F198] sharedInstance];
    v125 = [v126 commonTypeDict_StringFormat];
    v253[41] = v125;
    v124 = [PLIOReportAgent keyForSubBlock:42];
    v252[42] = v124;
    v123 = [MEMORY[0x277D3F198] sharedInstance];
    v122 = [v123 commonTypeDict_StringFormat];
    v253[42] = v122;
    v121 = [PLIOReportAgent keyForSubBlock:43];
    v252[43] = v121;
    v120 = [MEMORY[0x277D3F198] sharedInstance];
    v119 = [v120 commonTypeDict_StringFormat];
    v253[43] = v119;
    v118 = [PLIOReportAgent keyForSubBlock:44];
    v252[44] = v118;
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_StringFormat];
    v253[44] = v116;
    v115 = [PLIOReportAgent keyForSubBlock:45];
    v252[45] = v115;
    v114 = [MEMORY[0x277D3F198] sharedInstance];
    v113 = [v114 commonTypeDict_StringFormat];
    v253[45] = v113;
    v112 = [PLIOReportAgent keyForSubBlock:46];
    v252[46] = v112;
    v111 = [MEMORY[0x277D3F198] sharedInstance];
    v110 = [v111 commonTypeDict_StringFormat];
    v253[46] = v110;
    v109 = [PLIOReportAgent keyForSubBlock:47];
    v252[47] = v109;
    v108 = [MEMORY[0x277D3F198] sharedInstance];
    v107 = [v108 commonTypeDict_StringFormat];
    v253[47] = v107;
    v106 = [PLIOReportAgent keyForSubBlock:48];
    v252[48] = v106;
    v105 = [MEMORY[0x277D3F198] sharedInstance];
    v104 = [v105 commonTypeDict_StringFormat];
    v253[48] = v104;
    v103 = [PLIOReportAgent keyForSubBlock:49];
    v252[49] = v103;
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v101 = [v102 commonTypeDict_StringFormat];
    v253[49] = v101;
    v100 = [PLIOReportAgent keyForSubBlock:50];
    v252[50] = v100;
    v99 = [MEMORY[0x277D3F198] sharedInstance];
    v98 = [v99 commonTypeDict_StringFormat];
    v253[50] = v98;
    v97 = [PLIOReportAgent keyForSubBlock:51];
    v252[51] = v97;
    v96 = [MEMORY[0x277D3F198] sharedInstance];
    v95 = [v96 commonTypeDict_StringFormat];
    v253[51] = v95;
    v94 = [PLIOReportAgent keyForSubBlock:52];
    v252[52] = v94;
    v93 = [MEMORY[0x277D3F198] sharedInstance];
    v92 = [v93 commonTypeDict_StringFormat];
    v253[52] = v92;
    v91 = [PLIOReportAgent keyForSubBlock:53];
    v252[53] = v91;
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v90 commonTypeDict_StringFormat];
    v253[53] = v89;
    v88 = [PLIOReportAgent keyForSubBlock:54];
    v252[54] = v88;
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_StringFormat];
    v253[54] = v86;
    v85 = [PLIOReportAgent keyForSubBlock:55];
    v252[55] = v85;
    v84 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v84 commonTypeDict_StringFormat];
    v253[55] = v83;
    v82 = [PLIOReportAgent keyForSubBlock:56];
    v252[56] = v82;
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_StringFormat];
    v253[56] = v80;
    v79 = [PLIOReportAgent keyForSubBlock:57];
    v252[57] = v79;
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v78 commonTypeDict_StringFormat];
    v253[57] = v77;
    v76 = [PLIOReportAgent keyForSubBlock:58];
    v252[58] = v76;
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_StringFormat];
    v253[58] = v74;
    v73 = [PLIOReportAgent keyForSubBlock:59];
    v252[59] = v73;
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_StringFormat];
    v253[59] = v71;
    v70 = [PLIOReportAgent keyForSubBlock:60];
    v252[60] = v70;
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_StringFormat];
    v253[60] = v68;
    v67 = [PLIOReportAgent keyForSubBlock:61];
    v252[61] = v67;
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_StringFormat];
    v253[61] = v65;
    v64 = [PLIOReportAgent keyForSubBlock:62];
    v252[62] = v64;
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_StringFormat];
    v253[62] = v62;
    v61 = [PLIOReportAgent keyForSubBlock:63];
    v252[63] = v61;
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_StringFormat];
    v253[63] = v59;
    v58 = [PLIOReportAgent keyForSubBlock:64];
    v252[64] = v58;
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_StringFormat];
    v253[64] = v56;
    v55 = [PLIOReportAgent keyForSubBlock:65];
    v252[65] = v55;
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_StringFormat];
    v253[65] = v53;
    v52 = [PLIOReportAgent keyForSubBlock:66];
    v252[66] = v52;
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_StringFormat];
    v253[66] = v50;
    v49 = [PLIOReportAgent keyForSubBlock:67];
    v252[67] = v49;
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_StringFormat];
    v253[67] = v47;
    v46 = [PLIOReportAgent keyForSubBlock:68];
    v252[68] = v46;
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_StringFormat];
    v253[68] = v44;
    v43 = [PLIOReportAgent keyForSubBlock:69];
    v252[69] = v43;
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_StringFormat];
    v253[69] = v41;
    v40 = [PLIOReportAgent keyForSubBlock:70];
    v252[70] = v40;
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_StringFormat];
    v253[70] = v38;
    v37 = [PLIOReportAgent keyForSubBlock:71];
    v252[71] = v37;
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_StringFormat];
    v253[71] = v35;
    v34 = [PLIOReportAgent keyForSubBlock:72];
    v252[72] = v34;
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_StringFormat];
    v253[72] = v32;
    v31 = [PLIOReportAgent keyForSubBlock:73];
    v252[73] = v31;
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_StringFormat];
    v253[73] = v29;
    v28 = [PLIOReportAgent keyForSubBlock:74];
    v252[74] = v28;
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_StringFormat];
    v253[74] = v26;
    v25 = [PLIOReportAgent keyForSubBlock:75];
    v252[75] = v25;
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_StringFormat];
    v253[75] = v23;
    v22 = [PLIOReportAgent keyForSubBlock:76];
    v252[76] = v22;
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_StringFormat];
    v253[76] = v20;
    v19 = [PLIOReportAgent keyForSubBlock:77];
    v252[77] = v19;
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_StringFormat];
    v253[77] = v17;
    v16 = [PLIOReportAgent keyForSubBlock:78];
    v252[78] = v16;
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_StringFormat];
    v253[78] = v5;
    v6 = [PLIOReportAgent keyForSubBlock:79];
    v252[79] = v6;
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_StringFormat];
    v253[79] = v8;
    v9 = [PLIOReportAgent keyForSubBlock:80];
    v252[80] = v9;
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_StringFormat];
    v253[80] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v253 forKeys:v252 count:81];
    v257[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v257 forKeys:v256 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventForwardDefinitionSoCStatsOprtp
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] > 1001012 || (objc_msgSend(MEMORY[0x277D3F208], "isHomePod") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isARMMac"))
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4F8];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_282C1C028;
    v15[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"Channel";
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

+ (id)entryEventBackwardDefinitions
{
  v146[136] = *MEMORY[0x277D85DE8];
  v98 = objc_alloc(MEMORY[0x277CBEB38]);
  v145[0] = @"OpticalInterfaceStats";
  v144 = [a1 entryEventBackwardDefinitionOpticalInterfaceStats];
  v146[0] = v144;
  v145[1] = @"BonnLisaStats";
  v143 = [a1 entryEventBackwardDefinitionBonnLisaStats];
  v146[1] = v143;
  v145[2] = @"CoronetPowerStats";
  v142 = [a1 entryEventBackwardDefinitionCoronetPowerStats];
  v146[2] = v142;
  v145[3] = @"SpeakerPowerState";
  v141 = [a1 entryEventBackwardDefinitionSpeakerPowerState];
  v146[3] = v141;
  v145[4] = @"ActuatorPowerState";
  v140 = [a1 entryEventBackwardDefinitionActuatorPowerState];
  v146[4] = v140;
  v145[5] = @"AOPAOP_Haptics";
  v139 = [a1 entryEventBackwardDefinitionAOPAOP_Haptics];
  v146[5] = v139;
  v145[6] = @"AOPAOPAudioFW";
  v138 = [a1 entryEventBackwardDefinitionAOPAOPAudioFW];
  v146[6] = v138;
  v145[7] = @"MultitouchMultitouchCPUstats";
  v137 = [a1 entryEventBackwardDefinitionMultitouchCPUStats];
  v146[7] = v137;
  v145[8] = @"VDDOK1";
  v136 = [a1 entryEventBackwardDefinitionVDDOK1];
  v146[8] = v136;
  v145[9] = @"VDDOK2";
  v135 = [a1 entryEventBackwardDefinitionVDDOK2];
  v146[9] = v135;
  v145[10] = @"DisplayPuvloB";
  v134 = [a1 entryEventBackwardDefinitionDisplayPuvloB];
  v146[10] = v134;
  v145[11] = @"CarnelianVaxholmStats";
  v133 = [a1 entryEventBackwardDefinitionCarnelianVaxholmStats];
  v146[11] = v133;
  v145[12] = @"HapticsStats";
  v132 = [a1 entryEventBackwardDefinitionHapticsStats];
  v146[12] = v132;
  v145[13] = @"SoCStatsDeviceStates";
  v131 = [a1 entryEventBackwardDefinitionSoCStatsDeviceStates];
  v146[13] = v131;
  v145[14] = @"SoCStatsDeviceStatesChannelID";
  v130 = [a1 entryEventBackwardDefinitionSoCStatsDeviceStatesChannelID];
  v146[14] = v130;
  v145[15] = @"SoCStatsEventsRaw";
  v129 = [a1 entryEventBackwardDefinitionSoCStatsEventsRaw];
  v146[15] = v129;
  v145[16] = @"SoCStatsEvents";
  v128 = [a1 entryEventBackwardDefinitionSoCStatsEvents];
  v146[16] = v128;
  v145[17] = @"EnergyModel";
  v127 = [a1 entryEventBackwardDefinitionEnergyModel];
  v146[17] = v127;
  v145[18] = @"PMPEnergyCounters";
  v126 = [a1 entryEventBackwardDefinitionPMPEnergyCounters];
  v146[18] = v126;
  v145[19] = @"IOMFBUSRHistogram";
  v125 = [a1 entryEventBackwardDefinitionIOMFBUSRHistogram];
  v146[19] = v125;
  v145[20] = @"IOMFBNativeRate";
  v124 = [a1 entryEventBackwardDefinitionIOMFBNativeRate];
  v146[20] = v124;
  v145[21] = @"IOMFBSwapHistogram";
  v123 = [a1 entryEventBackwardDefinitionIOMFBSwap];
  v146[21] = v123;
  v145[22] = @"IOMFBScanoutHistogram";
  v122 = [a1 entryEventBackwardDefinitionIOMFBScanout];
  v146[22] = v122;
  v145[23] = @"DCPswap";
  v121 = [a1 entryEventBackwardDefinitionDCPSwap];
  v146[23] = v121;
  v145[24] = @"DCPscanout";
  v120 = [a1 entryEventBackwardDefinitionDCPScanout];
  v146[24] = v120;
  v145[25] = @"DCPscanoutstats";
  v119 = [a1 entryEventBackwardDefinitionDCPScanoutStats];
  v146[25] = v119;
  v145[26] = @"DCPEXT0swap";
  v118 = [a1 entryEventBackwardDefinitionDCPEXT0Swap];
  v146[26] = v118;
  v145[27] = @"DCPEXT0scanout";
  v117 = [a1 entryEventBackwardDefinitionDCPEXT0Scanout];
  v146[27] = v117;
  v145[28] = @"DCPEXT1swap";
  v116 = [a1 entryEventBackwardDefinitionDCPEXT1Swap];
  v146[28] = v116;
  v145[29] = @"DCPEXT1scanout";
  v115 = [a1 entryEventBackwardDefinitionDCPEXT1Scanout];
  v146[29] = v115;
  v145[30] = @"DCPEXT2swap";
  v114 = [a1 entryEventBackwardDefinitionDCPEXT2Swap];
  v146[30] = v114;
  v145[31] = @"DCPEXT2scanout";
  v113 = [a1 entryEventBackwardDefinitionDCPEXT2Scanout];
  v146[31] = v113;
  v145[32] = @"DCPEXT3swap";
  v112 = [a1 entryEventBackwardDefinitionDCPEXT3Swap];
  v146[32] = v112;
  v145[33] = @"DCPEXT3scanout";
  v111 = [a1 entryEventBackwardDefinitionDCPEXT3Scanout];
  v146[33] = v111;
  v145[34] = @"MultitouchMultitouchhighlevelstats";
  v110 = [a1 entryEventBackwardDefinitionMultitouchHighLevelStats];
  v146[34] = v110;
  v145[35] = @"3DTouchforce";
  v109 = [a1 entryEventBackwardDefinition3DTouchforce];
  v146[35] = v109;
  v145[36] = @"3DTouchluna";
  v108 = [a1 entryEventBackwardDefinition3DTouchluna];
  v146[36] = v108;
  v145[37] = @"CorePerformanceLevelResidency";
  v107 = [a1 entryEventBackwardDefinitionCorePerformanceLevelResidency];
  v146[37] = v107;
  v145[38] = @"AOPAmpPower";
  v106 = [a1 entryEventBackwardDefinitionAOPAmpPower];
  v146[38] = v106;
  v145[39] = @"AOPAOPSensors";
  v105 = [a1 entryEventBackwardDefinitionAOPAOPSensors];
  v146[39] = v105;
  v145[40] = @"AOPmuxPower";
  v104 = [a1 entryEventBackwardDefinitionAOPmuxPower];
  v146[40] = v104;
  v145[41] = @"PPMStatsDroopController";
  v103 = [a1 entryEventBackwardDefinitionPPMStatsDroopController];
  v146[41] = v103;
  v145[42] = @"PPMStatsCPMSLanesengagement";
  v102 = [a1 entryEventBackwardDefinitionPPMStatsCPMSLanesEngagement];
  v146[42] = v102;
  v145[43] = @"PPMStatsCPMSFerocity";
  v101 = [a1 entryEventBackwardDefinitionPPMStatsCPMSFerocity];
  v146[43] = v101;
  v145[44] = @"PPMStatsCPMSPowerReduction";
  v100 = [a1 entryEventBackwardDefinitionPPMStatsCPMSPowerReduction];
  v146[44] = v100;
  v145[45] = @"PPMStatsPeakPowerPressure";
  v99 = [a1 entryEventBackwardDefinitionPPMStatsPeakPowerPressure];
  v146[45] = v99;
  v145[46] = @"PPMStatsPolicyCPMS";
  v97 = [a1 entryEventBackwardDefinitionPPMStatsPolicyCPMS];
  v146[46] = v97;
  v145[47] = @"IOReport";
  v96 = [a1 entryEventBackwardDefinitionIOReport];
  v146[47] = v96;
  v145[48] = @"PRLUsagePreCheck";
  v95 = [a1 entryEventBackwardDefinitionPRLUsagePreCheck];
  v146[48] = v95;
  v145[49] = @"PRLUsageBCheck";
  v94 = [a1 entryEventBackwardDefinitionPRLUsageBCheck];
  v146[49] = v94;
  v145[50] = @"PRLUsageProCheck";
  v93 = [a1 entryEventBackwardDefinitionPRLUsageProCheck];
  v146[50] = v93;
  v145[51] = @"PRLUsageAttCheck";
  v92 = [a1 entryEventBackwardDefinitionPRLUsageAttCheck];
  v146[51] = v92;
  v145[52] = @"PRLUsageJOn";
  v91 = [a1 entryEventBackwardDefinitionPRLUsageJOn];
  v146[52] = v91;
  v145[53] = @"PRLUsageRStandby";
  v90 = [a1 entryEventBackwardDefinitionPRLUsageRStandby];
  v146[53] = v90;
  v145[54] = @"H13ISPH13ISPEvents";
  v89 = [a1 entryEventBackwardDefinitionH13ISPH13ISPEvents];
  v146[54] = v89;
  v145[55] = @"GPUCStates";
  v88 = [a1 entryEventBackwardDefinitionGPUCStates];
  v146[55] = v88;
  v145[56] = @"Display";
  v87 = [a1 entryEventBackwardDefinitionDisplay];
  v146[56] = v87;
  v145[57] = @"NVMe";
  v86 = [a1 entryEventBackwardDefinitionNVMe];
  v146[57] = v86;
  v145[58] = @"NVMeBWLimits";
  v85 = [a1 entryEventBackwardDefinitionNVMeBWLimits];
  v146[58] = v85;
  v145[59] = @"NVMeTimeweightedthrottlestatistics";
  v84 = [a1 entryEventBackwardDefinitionNVMeTimeweightedthrottlestatistics];
  v146[59] = v84;
  v145[60] = @"Bluetooth";
  v83 = [a1 entryEventBackwardDefinitionBluetooth];
  v146[60] = v83;
  v145[61] = @"WLANPowerPhyActivity";
  v82 = [a1 entryEventBackwardDefinitionWLANPowerPhyActivity];
  v146[61] = v82;
  v145[62] = @"WLANPowerPhyScan";
  v81 = [a1 entryEventBackwardDefinitionWLANPowerPhyScan];
  v146[62] = v81;
  v145[63] = @"WLANPowerConnections";
  v80 = [a1 entryEventBackwardDefinitionWLANPowerConnections];
  v146[63] = v80;
  v145[64] = @"CPUStatsCPUComplexThermalUPOLimiting";
  v79 = [a1 entryEventBackwardDefinitionCPUStatsCPUComplexThermalUPOLimiting];
  v146[64] = v79;
  v145[65] = @"SoCStatsClusterPowerStates";
  v78 = [a1 entryEventBackwardDefinitionSoCStatsClusterPowerStates];
  v146[65] = v78;
  v145[66] = @"TrackpadPowerStats";
  v77 = [a1 entryEventBackwardDefinitionTrackpadPowerStats];
  v146[66] = v77;
  v145[67] = @"GPUStatsDVDRequestStates";
  v76 = [a1 entryEventBackwardDefinitionGPUStatsDVDRequestStates];
  v146[67] = v76;
  v145[68] = @"GPUStatsActiveTimeHistogram";
  v75 = [a1 entryEventBackwardDefinitionGPUStatsActiveTimeHistogram];
  v146[68] = v75;
  v145[69] = @"GPUStatsGPUPerformanceStates";
  v74 = [a1 entryEventBackwardDefinitionGPUStatsGPUPerformanceStates];
  v146[69] = v74;
  v145[70] = @"H11ANEH11ANEPowerState";
  v73 = [a1 entryEventBackwardDefinitionH11ANEH11ANEPowerState];
  v146[70] = v73;
  v145[71] = @"H11ANEH11ANEEvents";
  v72 = [a1 entryEventBackwardDefinitionH11ANEH11ANEEvents];
  v146[71] = v72;
  v145[72] = @"GPUStatsIdleTimeHistogram";
  v71 = [a1 entryEventBackwardDefinitionGPUStatsIdleTimeHistogram];
  v146[72] = v71;
  v145[73] = @"GPUStatsCLTMinducedGPUPerformanceStates";
  v70 = [a1 entryEventBackwardDefinitionGPUStatsGPUCLTM];
  v146[73] = v70;
  v145[74] = @"MesaMesaPowerState";
  v69 = [a1 entryEventBackwardDefinitionMesaMesaPowerState];
  v146[74] = v69;
  v145[75] = @"H6ISPH6ISPPowerState";
  v68 = [a1 entryEventBackwardDefinitionH6ISPH6ISPPowerState];
  v146[75] = v68;
  v145[76] = @"backlightreportplaybackbacklightfactorsreport";
  v67 = [a1 entryEventBackwardDefinitionbacklightreportplaybackbacklightfactorsreport];
  v146[76] = v67;
  v145[77] = @"CPUStatsDVDStats";
  v66 = [a1 entryEventBackwardDefinitionCPUStatsDVDStats];
  v146[77] = v66;
  v145[78] = @"CPUStatsActiveTimeHistogram";
  v65 = [a1 entryEventBackwardDefinitionCPUStatsActiveTimeHistogram];
  v146[78] = v65;
  v145[79] = @"CPUStatsVoltageDomainPerformanceStates";
  v64 = [a1 entryEventBackwardDefinitionCPUStatsVoltageDomainPerformanceStates];
  v146[79] = v64;
  v145[80] = @"CPUStatsCPUComplexPerformanceStatesData";
  v63 = [a1 entryEventBackwardDefinitionCPUStatsCPUComplexPerformanceStatesData];
  v146[80] = v63;
  v145[81] = @"CPUStatsCPUCorePerformanceStatesData";
  v62 = [a1 entryEventBackwardDefinitionCPUStatsCPUCorePerformanceStatesData];
  v146[81] = v62;
  v145[82] = @"CPUStatsCPUComplexVoltageStateTime";
  v61 = [a1 entryEventBackwardDefinitionCPUStatsCPUComplexVoltageStateTime];
  v146[82] = v61;
  v145[83] = @"SoCStatsH6PMGRCounters";
  v60 = [a1 entryEventBackwardDefinitionSoCStatsH6PMGRCounters];
  v146[83] = v60;
  v145[84] = @"SoCStatsVoltageDomainPerformanceStates";
  v59 = [a1 entryEventBackwardDefinitionSoCStatsVoltageDomainPerformanceStates];
  v146[84] = v59;
  v145[85] = @"AMCStatsPerfCounters";
  v58 = [a1 entryEventBackwardDefinitionAMCStatsPerfCounters];
  v146[85] = v58;
  v145[86] = @"AppleEmbeddedPCIELinkStates";
  v57 = [a1 entryEventBackwardDefinitionAppleEmbeddedPCIELinkStates];
  v146[86] = v57;
  v145[87] = @"SocStatsDvdStats";
  v56 = [a1 entryEventBackwardDefinitionSocStatsDvdStats];
  v146[87] = v56;
  v145[88] = @"WifiChipConnectionActivity";
  v55 = [a1 entryEventBackwardDefinitionWifiChipConnectionActivity];
  v146[88] = v55;
  v145[89] = @"WifiChipAWDLActivity";
  v54 = [a1 entryEventBackwardDefinitionWifiChipAWDLActivity];
  v146[89] = v54;
  v145[90] = @"WifiChipPMAwakeActivity";
  v53 = [a1 entryEventBackwardDefinitionWifiChipPMAwakeActivity];
  v146[90] = v53;
  v145[91] = @"WifiChipRadioPhyicalLayerActivity";
  v52 = [a1 entryEventBackwardDefinitionWifiChipRadioPhyicalLayerActivity];
  v146[91] = v52;
  v145[92] = @"WifiChipPCIeActivity";
  v51 = [a1 entryEventBackwardDefinitionWifiChipPCIeActivity];
  v146[92] = v51;
  v145[93] = @"WifiChipTxStatCounters";
  v50 = [a1 entryEventBackwardDefinitionWifiChipTxStatCounters];
  v146[93] = v50;
  v145[94] = @"WifiChipScanActivity";
  v49 = [a1 entryEventBackwardDefinitionWifiChipScanActivity];
  v146[94] = v49;
  v145[95] = @"WifiChipHSICActivity";
  v48 = [a1 entryEventBackwardDefinitionWifiChipHSICActivity];
  v146[95] = v48;
  v145[96] = @"WifiChipRxChipErrorCounters";
  v47 = [a1 entryEventBackwardDefinitionWifiChipRxChipErrorCounters];
  v146[96] = v47;
  v145[97] = @"WifiChipTxChipErrorCounters";
  v46 = [a1 entryEventBackwardDefinitionWifiChipTxChipErrorCounters];
  v146[97] = v46;
  v145[98] = @"WifiChipRxPerRateCounters";
  v45 = [a1 entryEventBackwardDefinitionWifiChipRxPerRateCounters];
  v146[98] = v45;
  v145[99] = @"WifiChipRxStatCounters";
  v44 = [a1 entryEventBackwardDefinitionWifiChipRxStatCounters];
  v146[99] = v44;
  v145[100] = @"CPUStatsCPUEvents";
  v43 = [a1 entryEventBackwardDefinitionCPUStatsCPUEvents];
  v146[100] = v43;
  v145[101] = @"MTRAging";
  v42 = [a1 entryEventBackwardDefinitionMTRAging];
  v146[101] = v42;
  v145[102] = @"SpeakerSpeakerEvents";
  v41 = [a1 entryEventBackwardDefinitionSpeakerSpeakerEvents];
  v146[102] = v41;
  v145[103] = @"PMPPerfDrivers";
  v40 = [a1 entryEventBackwardDefinitionPMPPerfDrivers];
  v146[103] = v40;
  v145[104] = @"AOPgyropower";
  v39 = [a1 entryEventBackwardDefinitionAOPgyropower];
  v146[104] = v39;
  v145[105] = @"AOPcompasspower";
  v38 = [a1 entryEventBackwardDefinitionAOPcompasspower];
  v146[105] = v38;
  v145[106] = @"AOPaccelpower";
  v37 = [a1 entryEventBackwardDefinitionAOPaccelpower];
  v146[106] = v37;
  v145[107] = @"AOPpressurepower";
  v36 = [a1 entryEventBackwardDefinitionAOPpressurepower];
  v146[107] = v36;
  v145[108] = @"AOPPowerState";
  v35 = [a1 entryEventBackwardDefinitionAOPPowerState];
  v146[108] = v35;
  v145[109] = @"AOPPerformance";
  v34 = [a1 entryEventBackwardDefinitionAOPPerformance];
  v146[109] = v34;
  v145[110] = @"IOMFBFrameRatePhase";
  v33 = [a1 entryEventBackwardDefinitionIOMFBFrameRatePhase];
  v146[110] = v33;
  v145[111] = @"MemCacheStats";
  v32 = [a1 entryEventBackwardDefinitionMemCacheStats];
  v146[111] = v32;
  v145[112] = @"AOPMConnectorPower";
  v31 = [a1 entryEventBackwardDefinitionAOPMConnectorPower];
  v146[112] = v31;
  v145[113] = @"SDXCController";
  v30 = [a1 entryEventBackwardDefinitionSDXCController];
  v146[113] = v30;
  v145[114] = @"SMCPower";
  v29 = [a1 entryEventBackwardDefinitionSMCPower];
  v146[114] = v29;
  v145[115] = @"MTPPower";
  v28 = [a1 entryEventBackwardDefinitionMTPPower];
  v146[115] = v28;
  v145[116] = @"MTPIOPState";
  v27 = [a1 entryEventBackwardDefinitionMTPIOPState];
  v146[116] = v27;
  v145[117] = @"PMPFAB";
  v26 = [a1 entryEventBackwardDefinitionPMPFAB];
  v146[117] = v26;
  v145[118] = @"PMPDCS";
  v25 = [a1 entryEventBackwardDefinitionPMPDCS];
  v146[118] = v25;
  v145[119] = @"PMPSOC0";
  v24 = [a1 entryEventBackwardDefinitionPMPSOC0];
  v146[119] = v24;
  v145[120] = @"PMPSOC";
  v23 = [a1 entryEventBackwardDefinitionPMPSOC];
  v146[120] = v23;
  v145[121] = @"SIOPower";
  v22 = [a1 entryEventBackwardDefinitionSIOPower];
  v146[121] = v22;
  v145[122] = @"SIOIOPState";
  v21 = [a1 entryEventBackwardDefinitionSIOIOPState];
  v146[122] = v21;
  v145[123] = @"AOPcmareceived";
  v20 = [a1 entryEventBackwardDefinitionAOPcmareceived];
  v146[123] = v20;
  v145[124] = @"AOPgyroreceived";
  v19 = [a1 entryEventBackwardDefinitionAOPgyroreceived];
  v146[124] = v19;
  v145[125] = @"AOPlasreceived";
  v18 = [a1 entryEventBackwardDefinitionAOPlasreceived];
  v146[125] = v18;
  v145[126] = @"PMPDRAMBW";
  v17 = [a1 entryEventBackwardDefinitionPMPDRAMBW];
  v146[126] = v17;
  v145[127] = @"PMPDRAMState";
  v16 = [a1 entryEventBackwardDefinitionPMPDRAMState];
  v146[127] = v16;
  v145[128] = @"PMPFabricBW";
  v3 = [a1 entryEventBackwardDefinitionPMPFabricBW];
  v146[128] = v3;
  v145[129] = @"PMPPMCSOCFloor";
  v4 = [a1 entryEventBackwardDefinitionPMPPMCSOCFloor];
  v146[129] = v4;
  v145[130] = @"PMPPMCDCSFloor";
  v5 = [a1 entryEventBackwardDefinitionPMPPMCDCSFloor];
  v146[130] = v5;
  v145[131] = @"ANS2PCIE0";
  v6 = [a1 entryEventBackwardDefinitionANS2PCIE0];
  v146[131] = v6;
  v145[132] = @"PMPPWRS0";
  v7 = [a1 entryEventBackwardDefinitionPMPPWRS0];
  v146[132] = v7;
  v145[133] = @"PMP0PWRS0";
  v8 = [a1 entryEventBackwardDefinitionPMP0PWRS0];
  v146[133] = v8;
  v145[134] = @"AOPProx";
  v9 = [a1 entryEventBackwardDefinitionAOPProx];
  v146[134] = v9;
  v145[135] = @"MTPbuttoncapture";
  v10 = [a1 entryEventBackwardDefinitionMTPCaptureButton];
  v146[135] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:136];
  v12 = [v98 initWithDictionary:v11];

  v13 = +[PLIOReportAgentIOReportStats entryEventBackwardDefinitions];
  [v12 addEntriesFromDictionary:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionMTPCaptureButton
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_282C1C028;
  v27[1] = @"logEventBackwardIOReport";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v29[0] = v23;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"BaselineTrackingFreq_F1";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_RealFormat];
  v25[0] = v21;
  v24[1] = @"BaselineTrackingFreq_F2";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat];
  v25[1] = v19;
  v24[2] = @"BaselineTrackingFreq_lockout";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v25[2] = v17;
  v24[3] = @"ActiveFreq_F1";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v25[3] = v15;
  v24[4] = @"ActiveFreq_F2";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v25[4] = v4;
  v24[5] = @"ActiveFreq_lockout";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v25[5] = v6;
  v24[6] = @"HighLevelState_Active";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v25[6] = v8;
  v24[7] = @"HighLevelState_Baseline";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v25[7] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:8];
  v29[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAOPProx
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1C028;
  v25[1] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"SampleTime";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat_withUnit_s];
  v23[0] = v19;
  v22[1] = @"PowerState_DC2_120";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v23[1] = v17;
  v22[2] = @"PowerState_DC4_120";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v23[2] = v15;
  v22[3] = @"PowerState_DC3_1_10";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v23[3] = v4;
  v22[4] = @"PowerState_DC3_1_1";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v23[4] = v6;
  v22[5] = @"PowerState_DC3_1_30";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v23[5] = v8;
  v22[6] = @"PowerState_OFF";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v23[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAOPMConnectorPower
{
  v46[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v45[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v43[0] = *MEMORY[0x277D3F568];
    v43[1] = v2;
    v44[0] = &unk_282C1C028;
    v44[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v43[2] = *MEMORY[0x277D3F550];
    v43[3] = v3;
    v44[2] = MEMORY[0x277CBEC28];
    v44[3] = MEMORY[0x277CBEC38];
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
    v46[0] = v40;
    v45[1] = *MEMORY[0x277D3F540];
    v41[0] = @"FWState_Idle";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v42[0] = v38;
    v41[1] = @"FWState_Unknown";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_RealFormat];
    v42[1] = v36;
    v41[2] = @"FWState_Offline";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v42[2] = v34;
    v41[3] = @"FWState_WLPwrOn";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_RealFormat];
    v42[3] = v32;
    v41[4] = @"FWState_Bootload";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v42[4] = v30;
    v41[5] = @"FWState_100msLPP";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_RealFormat];
    v42[5] = v28;
    v41[6] = @"FWState_1sLCovOn";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v42[6] = v26;
    v41[7] = @"FWState_1sLNoP1D";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_RealFormat];
    v42[7] = v24;
    v41[8] = @"FWState_Idle_Transitions";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v42[8] = v22;
    v41[9] = @"FWState_Unknown_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v42[9] = v20;
    v41[10] = @"FWState_Offline_Transitions";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v42[10] = v18;
    v41[11] = @"FWState_WLPwrOn_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v42[11] = v16;
    v41[12] = @"FWState_Bootload_Transitions";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v42[12] = v5;
    v41[13] = @"FWState_100msLPP_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v42[13] = v7;
    v41[14] = @"FWState_1sLCovOn_Transitions";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v42[14] = v9;
    v41[15] = @"FWState_1sLNoP1D_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v42[15] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:16];
    v46[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionIOReport
{
  v26[3] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v23[0] = *MEMORY[0x277D3F568];
  v23[1] = v2;
  v24[0] = &unk_282C1C028;
  v24[1] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v26[0] = v18;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"Group";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat];
  v22[0] = v16;
  v21[1] = @"SubGroup";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v15 commonTypeDict_StringFormat];
  v22[1] = v3;
  v21[2] = @"SampleTime";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_RealFormat_withUnit_s];
  v22[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v26[1] = v6;
  v25[2] = *MEMORY[0x277D3F500];
  v19[0] = @"value";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v19[1] = @"unit";
  v20[0] = v8;
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v26[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionGPUStatsDVDRequestStates
{
  v60[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v59[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v57[0] = *MEMORY[0x277D3F568];
    v57[1] = v2;
    v58[0] = &unk_282C1C048;
    v58[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v57[2] = *MEMORY[0x277D3F4F8];
    v57[3] = v3;
    v58[2] = MEMORY[0x277CBEC28];
    v58[3] = MEMORY[0x277CBEC38];
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];
    v60[0] = v54;
    v59[1] = *MEMORY[0x277D3F540];
    v55[0] = @"SampleTime";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_RealFormat_withUnit_s];
    v56[0] = v52;
    v55[1] = @"GPUDVDH_0-9%";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v56[1] = v50;
    v55[2] = @"GPUDVDH_0-9%_Transitions";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v56[2] = v48;
    v55[3] = @"GPUDVDH_10-19%";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v56[3] = v46;
    v55[4] = @"GPUDVDH_10-19%_Transitions";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v56[4] = v44;
    v55[5] = @"GPUDVDH_20-29%";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v56[5] = v42;
    v55[6] = @"GPUDVDH_20-29%_Transitions";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v56[6] = v40;
    v55[7] = @"GPUDVDH_30-39%";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v56[7] = v38;
    v55[8] = @"GPUDVDH_30-39%_Transitions";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v56[8] = v36;
    v55[9] = @"GPUDVDH_40-49%";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v56[9] = v34;
    v55[10] = @"GPUDVDH_40-49%_Transitions";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v56[10] = v32;
    v55[11] = @"GPUDVDH_50-59%";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v56[11] = v30;
    v55[12] = @"GPUDVDH_50-59%_Transitions";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v56[12] = v28;
    v55[13] = @"GPUDVDH_60-69%";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v56[13] = v26;
    v55[14] = @"GPUDVDH_60-69%_Transitions";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v56[14] = v24;
    v55[15] = @"GPUDVDH_70-79%";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v56[15] = v22;
    v55[16] = @"GPUDVDH_70-79%_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v56[16] = v20;
    v55[17] = @"GPUDVDH_80-89%";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v56[17] = v18;
    v55[18] = @"GPUDVDH_80-89%_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v56[18] = v16;
    v55[19] = @"GPUDVDH_90-99%";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v56[19] = v5;
    v55[20] = @"GPUDVDH_90-99%_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v56[20] = v7;
    v55[21] = @"GPUDVDH_100%";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v56[21] = v9;
    v55[22] = @"GPUDVDH_100%_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v56[22] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:23];
    v60[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionGPUStatsActiveTimeHistogram
{
  v124[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v123[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v121[0] = *MEMORY[0x277D3F568];
    v121[1] = v2;
    v122[0] = &unk_282C1C058;
    v122[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v121[2] = *MEMORY[0x277D3F4F8];
    v121[3] = v3;
    v122[2] = MEMORY[0x277CBEC28];
    v122[3] = MEMORY[0x277CBEC38];
    v118 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:4];
    v124[0] = v118;
    v123[1] = *MEMORY[0x277D3F540];
    v119[0] = @"SampleTime";
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_RealFormat_withUnit_s];
    v120[0] = v116;
    v119[1] = @"0.0ms-0.1ms";
    v115 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v115 commonTypeDict_IntegerFormat];
    v120[1] = v114;
    v119[2] = @"0.1ms-0.2ms";
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_IntegerFormat];
    v120[2] = v112;
    v119[3] = @"0.2ms-0.3ms";
    v111 = [MEMORY[0x277D3F198] sharedInstance];
    v110 = [v111 commonTypeDict_IntegerFormat];
    v120[3] = v110;
    v119[4] = @"0.3ms-0.4ms";
    v109 = [MEMORY[0x277D3F198] sharedInstance];
    v108 = [v109 commonTypeDict_IntegerFormat];
    v120[4] = v108;
    v119[5] = @"0.4ms-0.5ms";
    v107 = [MEMORY[0x277D3F198] sharedInstance];
    v106 = [v107 commonTypeDict_IntegerFormat];
    v120[5] = v106;
    v119[6] = @"0.5ms-1.0ms";
    v105 = [MEMORY[0x277D3F198] sharedInstance];
    v104 = [v105 commonTypeDict_IntegerFormat];
    v120[6] = v104;
    v119[7] = @"1.0ms-1.5ms";
    v103 = [MEMORY[0x277D3F198] sharedInstance];
    v102 = [v103 commonTypeDict_IntegerFormat];
    v120[7] = v102;
    v119[8] = @"1.5ms-2.0ms";
    v101 = [MEMORY[0x277D3F198] sharedInstance];
    v100 = [v101 commonTypeDict_IntegerFormat];
    v120[8] = v100;
    v119[9] = @"2.0ms-2.5ms";
    v99 = [MEMORY[0x277D3F198] sharedInstance];
    v98 = [v99 commonTypeDict_IntegerFormat];
    v120[9] = v98;
    v119[10] = @"2.5ms-3.0ms";
    v97 = [MEMORY[0x277D3F198] sharedInstance];
    v96 = [v97 commonTypeDict_IntegerFormat];
    v120[10] = v96;
    v119[11] = @"3.0ms-3.5ms";
    v95 = [MEMORY[0x277D3F198] sharedInstance];
    v94 = [v95 commonTypeDict_IntegerFormat];
    v120[11] = v94;
    v119[12] = @"3.5ms-4.0ms";
    v93 = [MEMORY[0x277D3F198] sharedInstance];
    v92 = [v93 commonTypeDict_IntegerFormat];
    v120[12] = v92;
    v119[13] = @"4.0ms-4.5ms";
    v91 = [MEMORY[0x277D3F198] sharedInstance];
    v90 = [v91 commonTypeDict_IntegerFormat];
    v120[13] = v90;
    v119[14] = @"4.5ms-5.0ms";
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_IntegerFormat];
    v120[14] = v88;
    v119[15] = @"5.0ms-5.5ms";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_IntegerFormat];
    v120[15] = v86;
    v119[16] = @"5.5ms-6.0ms";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v85 commonTypeDict_IntegerFormat];
    v120[16] = v84;
    v119[17] = @"6.0ms-6.5ms";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_IntegerFormat];
    v120[17] = v82;
    v119[18] = @"6.5ms-7.0ms";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_IntegerFormat];
    v120[18] = v80;
    v119[19] = @"7.0ms-7.5ms";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_IntegerFormat];
    v120[19] = v78;
    v119[20] = @"7.5ms-8.0ms";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_IntegerFormat];
    v120[20] = v76;
    v119[21] = @"8.0ms-8.5ms";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_IntegerFormat];
    v120[21] = v74;
    v119[22] = @"8.5ms-9.0ms";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v120[22] = v72;
    v119[23] = @"9.0ms-9.5ms";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_IntegerFormat];
    v120[23] = v70;
    v119[24] = @"9.5ms-10.0ms";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v120[24] = v68;
    v119[25] = @"10.0ms-10.5ms";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_IntegerFormat];
    v120[25] = v66;
    v119[26] = @"10.5ms-11.0ms";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v120[26] = v64;
    v119[27] = @"11.0ms-11.5ms";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_IntegerFormat];
    v120[27] = v62;
    v119[28] = @"11.5ms-12.0ms";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v120[28] = v60;
    v119[29] = @"12.0ms-12.5ms";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_IntegerFormat];
    v120[29] = v58;
    v119[30] = @"12.5ms-13.0ms";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v120[30] = v56;
    v119[31] = @"13.0ms-13.5ms";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_IntegerFormat];
    v120[31] = v54;
    v119[32] = @"13.5ms-14.0ms";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v120[32] = v52;
    v119[33] = @"14.0ms-14.5ms";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_IntegerFormat];
    v120[33] = v50;
    v119[34] = @"14.5ms-15.0ms";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v120[34] = v48;
    v119[35] = @"15.0ms-15.5ms";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v120[35] = v46;
    v119[36] = @"15.5ms-16.0ms";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v120[36] = v44;
    v119[37] = @"16.0ms-16.5ms";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_IntegerFormat];
    v120[37] = v42;
    v119[38] = @"16.5ms-17.0ms";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v120[38] = v40;
    v119[39] = @"17.0ms-34.0ms";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_IntegerFormat];
    v120[39] = v38;
    v119[40] = @"34.0ms-68.0ms";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v120[40] = v36;
    v119[41] = @"68.0ms-102.0ms";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v120[41] = v34;
    v119[42] = @"102.0ms-136.0ms";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v120[42] = v32;
    v119[43] = @"136.0ms-170.0ms";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v120[43] = v30;
    v119[44] = @"170.0ms-204.0ms";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v120[44] = v28;
    v119[45] = @"204.0ms-238.0ms";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v120[45] = v26;
    v119[46] = @"238.0ms-272.0ms";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v120[46] = v24;
    v119[47] = @"272.0ms-306.0ms";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v120[47] = v22;
    v119[48] = @"306.0ms-340.0ms";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v120[48] = v20;
    v119[49] = @"340.0ms-374.0ms";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v120[49] = v18;
    v119[50] = @"374.0ms-408.0ms";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v120[50] = v16;
    v119[51] = @"408.0ms-442.0ms";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v120[51] = v5;
    v119[52] = @"442.0ms-476.0ms";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v120[52] = v7;
    v119[53] = @"476.0ms-510.0ms";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v120[53] = v9;
    v119[54] = @"510.0ms-544.0ms";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v120[54] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:55];
    v124[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionGPUStatsGPUPerformanceStates
{
  v80[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v79[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v77[0] = *MEMORY[0x277D3F568];
    v77[1] = v2;
    v78[0] = &unk_282C1C068;
    v78[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v77[2] = *MEMORY[0x277D3F4F8];
    v77[3] = v3;
    v78[2] = MEMORY[0x277CBEC28];
    v78[3] = MEMORY[0x277CBEC38];
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:4];
    v80[0] = v74;
    v79[1] = *MEMORY[0x277D3F540];
    v75[0] = @"SampleTime";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_RealFormat_withUnit_s];
    v76[0] = v72;
    v75[1] = @"GPUPH_OFF";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_RealFormat];
    v76[1] = v70;
    v75[2] = @"GPUPH_OFF_Transitions";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v76[2] = v68;
    v75[3] = @"GPUPH_P1";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_RealFormat];
    v76[3] = v66;
    v75[4] = @"GPUPH_P1_Transitions";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v76[4] = v64;
    v75[5] = @"GPUPH_P2";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_RealFormat];
    v76[5] = v62;
    v75[6] = @"GPUPH_P2_Transitions";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v76[6] = v60;
    v75[7] = @"GPUPH_P3";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_RealFormat];
    v76[7] = v58;
    v75[8] = @"GPUPH_P3_Transitions";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v76[8] = v56;
    v75[9] = @"GPUPH_P4";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_RealFormat];
    v76[9] = v54;
    v75[10] = @"GPUPH_P4_Transitions";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v76[10] = v52;
    v75[11] = @"GPUPH_P5";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v76[11] = v50;
    v75[12] = @"GPUPH_P5_Transitions";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v76[12] = v48;
    v75[13] = @"GPUPH_P6";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v76[13] = v46;
    v75[14] = @"GPUPH_P6_Transitions";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v76[14] = v44;
    v75[15] = @"GPUPH_P7";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v76[15] = v42;
    v75[16] = @"GPUPH_P7_Transitions";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v76[16] = v40;
    v75[17] = @"GPUPH_P8";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v76[17] = v38;
    v75[18] = @"GPUPH_P8_Transitions";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v76[18] = v36;
    v75[19] = @"GPUPH_P9";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v76[19] = v34;
    v75[20] = @"GPUPH_P9_Transitions";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v76[20] = v32;
    v75[21] = @"GPUPH_P10";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v76[21] = v30;
    v75[22] = @"GPUPH_P10_Transitions";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v76[22] = v28;
    v75[23] = @"GPUPH_P11";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v76[23] = v26;
    v75[24] = @"GPUPH_P11_Transitions";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v76[24] = v24;
    v75[25] = @"GPUPH_P12";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v76[25] = v22;
    v75[26] = @"GPUPH_P12_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v76[26] = v20;
    v75[27] = @"GPUPH_P13";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v76[27] = v18;
    v75[28] = @"GPUPH_P13_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v76[28] = v16;
    v75[29] = @"GPUPH_P14";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v76[29] = v5;
    v75[30] = @"GPUPH_P14_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v76[30] = v7;
    v75[31] = @"GPUPH_P15";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v76[31] = v9;
    v75[32] = @"GPUPH_P15_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v76[32] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:33];
    v80[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionH11ANEH11ANEPowerState
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasANE])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_282C1C028;
    v15[1] = @"logEventBackwardIOReport";
    v14[2] = *MEMORY[0x277D3F580];
    v15[2] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"ANE Power";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v12[1] = @"ANE Fast";
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

+ (id)entryEventBackwardDefinitionH11ANEH11ANEEvents
{
  v21[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasANE])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v18[0] = *MEMORY[0x277D3F568];
    v18[1] = v2;
    v19[0] = &unk_282C1C028;
    v19[1] = @"logEventBackwardIOReport";
    v18[2] = *MEMORY[0x277D3F580];
    v19[2] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"ANECPU Responses Received";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v17[0] = v4;
    v16[1] = @"ANECPU Commands Sent";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v17[1] = v6;
    v16[2] = @"Number Power Ups";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v17[2] = v8;
    v16[3] = @"Number Power Downs";
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

+ (id)entryEventBackwardDefinitionGPUStatsGPUCLTM
{
  v84[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v83[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v81[0] = *MEMORY[0x277D3F568];
    v81[1] = v2;
    v82[0] = &unk_282C1C058;
    v82[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v81[2] = *MEMORY[0x277D3F4F8];
    v81[3] = v3;
    v82[2] = MEMORY[0x277CBEC28];
    v82[3] = MEMORY[0x277CBEC38];
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:4];
    v84[0] = v78;
    v83[1] = *MEMORY[0x277D3F540];
    v79[0] = @"SampleTime";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_RealFormat_withUnit_s];
    v80[0] = v76;
    v79[1] = @"GPU_CLTM_OFF";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_RealFormat];
    v80[1] = v74;
    v79[2] = @"GPU_CLTM_OFF_Transitions";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v80[2] = v72;
    v79[3] = @"GPU_CLTM_P1";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_RealFormat];
    v80[3] = v70;
    v79[4] = @"GPU_CLTM_P1_Transitions";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v80[4] = v68;
    v79[5] = @"GPU_CLTM_P2";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_RealFormat];
    v80[5] = v66;
    v79[6] = @"GPU_CLTM_P2_Transitions";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v80[6] = v64;
    v79[7] = @"GPU_CLTM_P3";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_RealFormat];
    v80[7] = v62;
    v79[8] = @"GPU_CLTM_P3_Transitions";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v80[8] = v60;
    v79[9] = @"GPU_CLTM_P4";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_RealFormat];
    v80[9] = v58;
    v79[10] = @"GPU_CLTM_P4_Transitions";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v80[10] = v56;
    v79[11] = @"GPU_CLTM_P5";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_RealFormat];
    v80[11] = v54;
    v79[12] = @"GPU_CLTM_P5_Transitions";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v80[12] = v52;
    v79[13] = @"GPU_CLTM_P6";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v80[13] = v50;
    v79[14] = @"GPU_CLTM_P6_Transitions";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v80[14] = v48;
    v79[15] = @"GPU_CLTM_P7";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v80[15] = v46;
    v79[16] = @"GPU_CLTM_P7_Transitions";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v80[16] = v44;
    v79[17] = @"GPU_CLTM_P8";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v80[17] = v42;
    v79[18] = @"GPU_CLTM_P8_Transitions";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v80[18] = v40;
    v79[19] = @"GPU_CLTM_P9";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v80[19] = v38;
    v79[20] = @"GPU_CLTM_P9_Transitions";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v80[20] = v36;
    v79[21] = @"GPU_CLTM_P10";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v80[21] = v34;
    v79[22] = @"GPU_CLTM_P10_Transitions";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v80[22] = v32;
    v79[23] = @"GPU_CLTM_P11";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v80[23] = v30;
    v79[24] = @"GPU_CLTM_P11_Transitions";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v80[24] = v28;
    v79[25] = @"GPU_CLTM_P12";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v80[25] = v26;
    v79[26] = @"GPU_CLTM_P12_Transitions";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v80[26] = v24;
    v79[27] = @"GPU_CLTM_P13";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v80[27] = v22;
    v79[28] = @"GPU_CLTM_P13_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v80[28] = v20;
    v79[29] = @"GPU_CLTM_P14";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v80[29] = v18;
    v79[30] = @"GPU_CLTM_P14_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v80[30] = v16;
    v79[31] = @"GPU_CLTM_P15";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v80[31] = v5;
    v79[32] = @"GPU_CLTM_P15_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v80[32] = v7;
    v79[33] = @"GPU_CLTM_NO_CLTM";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v80[33] = v9;
    v79[34] = @"GPU_CLTM_NO_CLTM_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v80[34] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:35];
    v84[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionGPUStatsIdleTimeHistogram
{
  v124[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v123[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v121[0] = *MEMORY[0x277D3F568];
    v121[1] = v2;
    v122[0] = &unk_282C1C058;
    v122[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v121[2] = *MEMORY[0x277D3F4F8];
    v121[3] = v3;
    v122[2] = MEMORY[0x277CBEC28];
    v122[3] = MEMORY[0x277CBEC38];
    v118 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:4];
    v124[0] = v118;
    v123[1] = *MEMORY[0x277D3F540];
    v119[0] = @"SampleTime";
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_RealFormat_withUnit_s];
    v120[0] = v116;
    v119[1] = @"0.0ms-0.1ms";
    v115 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v115 commonTypeDict_IntegerFormat];
    v120[1] = v114;
    v119[2] = @"0.1ms-0.2ms";
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_IntegerFormat];
    v120[2] = v112;
    v119[3] = @"0.2ms-0.3ms";
    v111 = [MEMORY[0x277D3F198] sharedInstance];
    v110 = [v111 commonTypeDict_IntegerFormat];
    v120[3] = v110;
    v119[4] = @"0.3ms-0.4ms";
    v109 = [MEMORY[0x277D3F198] sharedInstance];
    v108 = [v109 commonTypeDict_IntegerFormat];
    v120[4] = v108;
    v119[5] = @"0.4ms-0.5ms";
    v107 = [MEMORY[0x277D3F198] sharedInstance];
    v106 = [v107 commonTypeDict_IntegerFormat];
    v120[5] = v106;
    v119[6] = @"0.5ms-1.0ms";
    v105 = [MEMORY[0x277D3F198] sharedInstance];
    v104 = [v105 commonTypeDict_IntegerFormat];
    v120[6] = v104;
    v119[7] = @"1.0ms-1.5ms";
    v103 = [MEMORY[0x277D3F198] sharedInstance];
    v102 = [v103 commonTypeDict_IntegerFormat];
    v120[7] = v102;
    v119[8] = @"1.5ms-2.0ms";
    v101 = [MEMORY[0x277D3F198] sharedInstance];
    v100 = [v101 commonTypeDict_IntegerFormat];
    v120[8] = v100;
    v119[9] = @"2.0ms-2.5ms";
    v99 = [MEMORY[0x277D3F198] sharedInstance];
    v98 = [v99 commonTypeDict_IntegerFormat];
    v120[9] = v98;
    v119[10] = @"2.5ms-3.0ms";
    v97 = [MEMORY[0x277D3F198] sharedInstance];
    v96 = [v97 commonTypeDict_IntegerFormat];
    v120[10] = v96;
    v119[11] = @"3.0ms-3.5ms";
    v95 = [MEMORY[0x277D3F198] sharedInstance];
    v94 = [v95 commonTypeDict_IntegerFormat];
    v120[11] = v94;
    v119[12] = @"3.5ms-4.0ms";
    v93 = [MEMORY[0x277D3F198] sharedInstance];
    v92 = [v93 commonTypeDict_IntegerFormat];
    v120[12] = v92;
    v119[13] = @"4.0ms-4.5ms";
    v91 = [MEMORY[0x277D3F198] sharedInstance];
    v90 = [v91 commonTypeDict_IntegerFormat];
    v120[13] = v90;
    v119[14] = @"4.5ms-5.0ms";
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_IntegerFormat];
    v120[14] = v88;
    v119[15] = @"5.0ms-5.5ms";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_IntegerFormat];
    v120[15] = v86;
    v119[16] = @"5.5ms-6.0ms";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v85 commonTypeDict_IntegerFormat];
    v120[16] = v84;
    v119[17] = @"6.0ms-6.5ms";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_IntegerFormat];
    v120[17] = v82;
    v119[18] = @"6.5ms-7.0ms";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_IntegerFormat];
    v120[18] = v80;
    v119[19] = @"7.0ms-7.5ms";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_IntegerFormat];
    v120[19] = v78;
    v119[20] = @"7.5ms-8.0ms";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_IntegerFormat];
    v120[20] = v76;
    v119[21] = @"8.0ms-8.5ms";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_IntegerFormat];
    v120[21] = v74;
    v119[22] = @"8.5ms-9.0ms";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v120[22] = v72;
    v119[23] = @"9.0ms-9.5ms";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_IntegerFormat];
    v120[23] = v70;
    v119[24] = @"9.5ms-10.0ms";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v120[24] = v68;
    v119[25] = @"10.0ms-10.5ms";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_IntegerFormat];
    v120[25] = v66;
    v119[26] = @"10.5ms-11.0ms";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v120[26] = v64;
    v119[27] = @"11.0ms-11.5ms";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_IntegerFormat];
    v120[27] = v62;
    v119[28] = @"11.5ms-12.0ms";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v120[28] = v60;
    v119[29] = @"12.0ms-12.5ms";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_IntegerFormat];
    v120[29] = v58;
    v119[30] = @"12.5ms-13.0ms";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v120[30] = v56;
    v119[31] = @"13.0ms-13.5ms";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_IntegerFormat];
    v120[31] = v54;
    v119[32] = @"13.5ms-14.0ms";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v120[32] = v52;
    v119[33] = @"14.0ms-14.5ms";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_IntegerFormat];
    v120[33] = v50;
    v119[34] = @"14.5ms-15.0ms";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v120[34] = v48;
    v119[35] = @"15.0ms-15.5ms";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v120[35] = v46;
    v119[36] = @"15.5ms-16.0ms";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v120[36] = v44;
    v119[37] = @"16.0ms-16.5ms";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_IntegerFormat];
    v120[37] = v42;
    v119[38] = @"16.5ms-17.0ms";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v120[38] = v40;
    v119[39] = @"17.0ms-34.0ms";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_IntegerFormat];
    v120[39] = v38;
    v119[40] = @"34.0ms-68.0ms";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v120[40] = v36;
    v119[41] = @"68.0ms-102.0ms";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v120[41] = v34;
    v119[42] = @"102.0ms-136.0ms";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v120[42] = v32;
    v119[43] = @"136.0ms-170.0ms";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v120[43] = v30;
    v119[44] = @"170.0ms-204.0ms";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v120[44] = v28;
    v119[45] = @"204.0ms-238.0ms";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v120[45] = v26;
    v119[46] = @"238.0ms-272.0ms";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v120[46] = v24;
    v119[47] = @"272.0ms-306.0ms";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v120[47] = v22;
    v119[48] = @"306.0ms-340.0ms";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v120[48] = v20;
    v119[49] = @"340.0ms-374.0ms";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v120[49] = v18;
    v119[50] = @"374.0ms-408.0ms";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v120[50] = v16;
    v119[51] = @"408.0ms-442.0ms";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v120[51] = v5;
    v119[52] = @"442.0ms-476.0ms";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v120[52] = v7;
    v119[53] = @"476.0ms-510.0ms";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v120[53] = v9;
    v119[54] = @"510.0ms-544.0ms";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v120[54] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:55];
    v124[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionMultitouch
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v26[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v24[0] = *MEMORY[0x277D3F568];
    v24[1] = v2;
    v25[0] = &unk_282C1C058;
    v25[1] = @"logEventBackwardIOReport";
    v24[2] = *MEMORY[0x277D3F4F8];
    v25[2] = MEMORY[0x277CBEC28];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v27[0] = v21;
    v26[1] = *MEMORY[0x277D3F540];
    v22[0] = @"FTOUCH_GERR_OUT SPEC";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_RealFormat];
    v23[0] = v19;
    v22[1] = @"FTOUCH_GERR_IN SPEC";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat];
    v23[1] = v17;
    v22[2] = @"FTOUCH_GERR_Transitions";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v23[2] = v15;
    v22[3] = @"FTOUCH_INRT_NOTLEARN";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v23[3] = v4;
    v22[4] = @"FTOUCH_INRT_LEARN";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v23[4] = v6;
    v22[5] = @"FTOUCH_INRT_Transitions";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v23[5] = v8;
    v22[6] = @"SampleTime";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat];
    v23[6] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
    v27[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionMultitouchHighLevelStats
{
  v93[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS])
  {
    v92[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v90[0] = *MEMORY[0x277D3F568];
    v90[1] = v2;
    v91[0] = &unk_282C1C078;
    v91[1] = @"logEventBackwardIOReport";
    v90[2] = *MEMORY[0x277D3F4F8];
    v91[2] = MEMORY[0x277CBEC28];
    v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:3];
    v93[0] = v61;
    v92[1] = *MEMORY[0x277D3F540];
    v88[0] = @"SampleTime";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v55 commonTypeDict_RealFormat_withUnit_s];
    v89[0] = v59;
    v88[1] = @"High Level_Unknown";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v54 commonTypeDict_IntegerFormat];
    v89[1] = v49;
    v88[2] = @"High Level_Active";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v52 commonTypeDict_IntegerFormat];
    v89[2] = v53;
    v88[3] = @"High Level_Ready";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v51 commonTypeDict_IntegerFormat];
    v89[3] = v45;
    v88[4] = @"High Level_UILock";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_IntegerFormat];
    v89[4] = v66;
    v88[5] = @"High Level_FaceDet";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v89[5] = v64;
    v88[6] = @"High Level_PreReady";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_IntegerFormat];
    v89[6] = v62;
    v88[7] = @"High Level_Anticip";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v60 commonTypeDict_IntegerFormat];
    v89[7] = v58;
    v88[8] = @"High Level_Diag";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v89[8] = v56;
    v88[9] = @"High Level_FastRead";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v50 commonTypeDict_IntegerFormat];
    v89[9] = v48;
    v88[10] = @"High Level_TTW";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v89[10] = v46;
    v88[11] = @"High Level_TTWSup";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v89[11] = v43;
    v88[12] = @"High Level_Active-U";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_IntegerFormat];
    v89[12] = v41;
    v88[13] = @"High Level_Active-U_Transitions";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v89[13] = v39;
    v88[14] = @"High Level_Active_Transitions";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_IntegerFormat];
    v89[14] = v37;
    v88[15] = @"High Level_TTW_Transitions";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v89[15] = v35;
    v88[16] = @"High Level_TTWSup_Transitions";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v89[16] = v33;
    v88[17] = @"High Level_FaceDet_Transitions";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v89[17] = v31;
    v88[18] = @"High Level_AO-Untri";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v89[18] = v29;
    v88[19] = @"High Level_AO-Trigg";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v89[19] = v27;
    v88[20] = @"High Level_TTWActL";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v89[20] = v4;
    v88[21] = @"High Level_TTWRdyL";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v89[21] = v6;
    v88[22] = @"High Level_TTWActS";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v89[22] = v8;
    v88[23] = @"High Level_TTWRdyS";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v89[23] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:24];
    v93[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];

    v13 = v55;
    v14 = v49;

    v15 = v45;
    v16 = v54;

    v17 = v61;
    v18 = v12;

    v19 = v52;
    v20 = v59;

    v21 = v53;
    v22 = v51;

LABEL_5:
    goto LABEL_7;
  }

  if ([MEMORY[0x277D3F208] isWatch])
  {
    v86[0] = *MEMORY[0x277D3F4E8];
    v23 = *MEMORY[0x277D3F548];
    v84[0] = *MEMORY[0x277D3F568];
    v84[1] = v23;
    v85[0] = &unk_282C1C028;
    v85[1] = @"logEventBackwardIOReport";
    v84[2] = *MEMORY[0x277D3F4F8];
    v85[2] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
    v87[0] = v17;
    v86[1] = *MEMORY[0x277D3F540];
    v82[0] = @"HIGH_LVL_ACTIVE";
    v80 = *MEMORY[0x277D3F5A8];
    v24 = v80;
    v81 = &unk_282C10C38;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v83[0] = v13;
    v82[1] = @"HIGH_LVL_ACTIVE_Transitions";
    v78 = v24;
    v79 = &unk_282C10C50;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v83[1] = v20;
    v82[2] = @"HIGH_LVL_READY";
    v76 = v24;
    v77 = &unk_282C10C38;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v83[2] = v16;
    v82[3] = @"HIGH_LVL_READY_Transitions";
    v74 = v24;
    v75 = &unk_282C10C50;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v83[3] = v14;
    v82[4] = @"HIGH_LVL_WOT";
    v72 = v24;
    v73 = &unk_282C10C38;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v83[4] = v19;
    v82[5] = @"HIGH_LVL_WOT_Transitions";
    v70 = v24;
    v71 = &unk_282C10C50;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v83[5] = v21;
    v82[6] = @"SampleTime";
    v68 = v24;
    v69 = &unk_282C10C38;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v83[6] = v22;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:7];
    v87[1] = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
    goto LABEL_5;
  }

  v18 = MEMORY[0x277CBEC10];
LABEL_7:
  v25 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)entryEventBackwardDefinition3DTouchforce
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS])
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v22[0] = *MEMORY[0x277D3F568];
    v22[1] = v2;
    v23[0] = &unk_282C1C058;
    v23[1] = @"logEventBackwardIOReport";
    v22[2] = *MEMORY[0x277D3F4F8];
    v23[2] = MEMORY[0x277CBEC28];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v25[0] = v19;
    v24[1] = *MEMORY[0x277D3F540];
    v20[0] = @"SampleTime";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat_withUnit_s];
    v21[0] = v17;
    v20[1] = @"force_POWER_STATES_INIT";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v21[1] = v15;
    v20[2] = @"force_POWER_STATES_ACTIVE";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v21[2] = v4;
    v20[3] = @"force_POWER_STATES_TIMEOUT";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v21[3] = v6;
    v20[4] = @"force_POWER_STATES_READY";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v21[4] = v8;
    v20[5] = @"force_POWER_STATES_LIGHT_SL";
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

+ (id)entryEventBackwardDefinition3DTouchluna
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isWatch])
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v22[0] = *MEMORY[0x277D3F568];
    v22[1] = v2;
    v23[0] = &unk_282C1C028;
    v23[1] = @"logEventBackwardIOReport";
    v22[2] = *MEMORY[0x277D3F4F8];
    v23[2] = MEMORY[0x277CBEC28];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v25[0] = v19;
    v24[1] = *MEMORY[0x277D3F540];
    v20[0] = @"SampleTime";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat_withUnit_s];
    v21[0] = v17;
    v20[1] = @"luna_POWER_STATES_INIT";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v21[1] = v15;
    v20[2] = @"luna_POWER_STATES_ACTIVE";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v21[2] = v4;
    v20[3] = @"luna_POWER_STATES_TIMEOUT";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v21[3] = v6;
    v20[4] = @"luna_POWER_STATES_READY";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v21[4] = v8;
    v20[5] = @"luna_POWER_STATES_LIGHT_SL";
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

+ (id)entryEventBackwardDefinitionMesaMesaPowerState
{
  v32[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F1B8] hasMesa])
  {
    v31[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v29[0] = *MEMORY[0x277D3F568];
    v29[1] = v2;
    v30[0] = &unk_282C1C048;
    v30[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v29[2] = *MEMORY[0x277D3F4F8];
    v29[3] = v3;
    v30[2] = MEMORY[0x277CBEC28];
    v30[3] = MEMORY[0x277CBEC38];
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
    v32[0] = v26;
    v31[1] = *MEMORY[0x277D3F540];
    v27[0] = @"SampleTime";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_RealFormat_withUnit_s];
    v28[0] = v24;
    v27[1] = @"Power State_OFF";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v28[1] = v22;
    v27[2] = @"Power State_OFF_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v28[2] = v20;
    v27[3] = @"Power State_IDLE";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v28[3] = v18;
    v27[4] = @"Power State_IDLE_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v28[4] = v16;
    v27[5] = @"Power State_FING-DET";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v28[5] = v5;
    v27[6] = @"Power State_FING-DET_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v28[6] = v7;
    v27[7] = @"Power State_IMAGING";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v28[7] = v9;
    v27[8] = @"Power State_IMAGING_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v28[8] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:9];
    v32[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionH6ISPH6ISPPowerState
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v23[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v21[0] = *MEMORY[0x277D3F568];
    v21[1] = v2;
    v22[0] = &unk_282C1C058;
    v22[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v21[2] = *MEMORY[0x277D3F4F8];
    v21[3] = v3;
    v22[2] = MEMORY[0x277CBEC28];
    v22[3] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v24[0] = v18;
    v23[1] = *MEMORY[0x277D3F540];
    v19[0] = @"SampleTime";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat_withUnit_s];
    v20[0] = v16;
    v19[1] = @"ISP Power";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v20[1] = v5;
    v19[2] = @"ISP Fast";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v20[2] = v7;
    v19[3] = @"Sensor0 Power";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v20[3] = v9;
    v19[4] = @"Sensor1 Power";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v20[4] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v24[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionbacklightreportplaybackbacklightfactorsreport
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_282C1C058;
    v18[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v17[2] = *MEMORY[0x277D3F4F8];
    v17[3] = v3;
    v18[2] = MEMORY[0x277CBEC28];
    v18[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v20[0] = v4;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"SampleTime";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_s];
    v16[0] = v6;
    v15[1] = @"MIE factor";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v16[1] = v8;
    v15[2] = @"DPB factor";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionCPUStatsDVDStats
{
  v60[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v59[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v57[0] = *MEMORY[0x277D3F568];
    v57[1] = v2;
    v58[0] = &unk_282C1C048;
    v58[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v57[2] = *MEMORY[0x277D3F4F8];
    v57[3] = v3;
    v58[2] = MEMORY[0x277CBEC28];
    v58[3] = MEMORY[0x277CBEC38];
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];
    v60[0] = v54;
    v59[1] = *MEMORY[0x277D3F540];
    v55[0] = @"SampleTime";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_RealFormat_withUnit_s];
    v56[0] = v52;
    v55[1] = @"DVD States_0-9%";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v56[1] = v50;
    v55[2] = @"DVD States_0-9%_Transitions";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v56[2] = v48;
    v55[3] = @"DVD States_10-19%";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v56[3] = v46;
    v55[4] = @"DVD States_10-19%_Transitions";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v56[4] = v44;
    v55[5] = @"DVD States_20-29%";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v56[5] = v42;
    v55[6] = @"DVD States_20-29%_Transitions";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v56[6] = v40;
    v55[7] = @"DVD States_30-39%";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v56[7] = v38;
    v55[8] = @"DVD States_30-39%_Transitions";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v56[8] = v36;
    v55[9] = @"DVD States_40-49%";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v56[9] = v34;
    v55[10] = @"DVD States_40-49%_Transitions";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v56[10] = v32;
    v55[11] = @"DVD States_50-59%";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v56[11] = v30;
    v55[12] = @"DVD States_50-59%_Transitions";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v56[12] = v28;
    v55[13] = @"DVD States_60-69%";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v56[13] = v26;
    v55[14] = @"DVD States_60-69%_Transitions";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v56[14] = v24;
    v55[15] = @"DVD States_70-79%";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v56[15] = v22;
    v55[16] = @"DVD States_70-79%_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v56[16] = v20;
    v55[17] = @"DVD States_80-89%";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v56[17] = v18;
    v55[18] = @"DVD States_80-89%_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v56[18] = v16;
    v55[19] = @"DVD States_90-99%";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v56[19] = v5;
    v55[20] = @"DVD States_90-99%_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v56[20] = v7;
    v55[21] = @"DVD States_100%";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v56[21] = v9;
    v55[22] = @"DVD States_100%_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v56[22] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:23];
    v60[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionCPUStatsActiveTimeHistogram
{
  v124[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v123[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v121[0] = *MEMORY[0x277D3F568];
    v121[1] = v2;
    v122[0] = &unk_282C1C058;
    v122[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v121[2] = *MEMORY[0x277D3F4F8];
    v121[3] = v3;
    v122[2] = MEMORY[0x277CBEC28];
    v122[3] = MEMORY[0x277CBEC38];
    v118 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:4];
    v124[0] = v118;
    v123[1] = *MEMORY[0x277D3F540];
    v119[0] = @"SampleTime";
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_RealFormat_withUnit_s];
    v120[0] = v116;
    v119[1] = @"0.0ms-0.1ms";
    v115 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v115 commonTypeDict_IntegerFormat];
    v120[1] = v114;
    v119[2] = @"0.1ms-0.2ms";
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_IntegerFormat];
    v120[2] = v112;
    v119[3] = @"0.2ms-0.3ms";
    v111 = [MEMORY[0x277D3F198] sharedInstance];
    v110 = [v111 commonTypeDict_IntegerFormat];
    v120[3] = v110;
    v119[4] = @"0.3ms-0.4ms";
    v109 = [MEMORY[0x277D3F198] sharedInstance];
    v108 = [v109 commonTypeDict_IntegerFormat];
    v120[4] = v108;
    v119[5] = @"0.4ms-0.5ms";
    v107 = [MEMORY[0x277D3F198] sharedInstance];
    v106 = [v107 commonTypeDict_IntegerFormat];
    v120[5] = v106;
    v119[6] = @"0.5ms-1.0ms";
    v105 = [MEMORY[0x277D3F198] sharedInstance];
    v104 = [v105 commonTypeDict_IntegerFormat];
    v120[6] = v104;
    v119[7] = @"1.0ms-1.5ms";
    v103 = [MEMORY[0x277D3F198] sharedInstance];
    v102 = [v103 commonTypeDict_IntegerFormat];
    v120[7] = v102;
    v119[8] = @"1.5ms-2.0ms";
    v101 = [MEMORY[0x277D3F198] sharedInstance];
    v100 = [v101 commonTypeDict_IntegerFormat];
    v120[8] = v100;
    v119[9] = @"2.0ms-2.5ms";
    v99 = [MEMORY[0x277D3F198] sharedInstance];
    v98 = [v99 commonTypeDict_IntegerFormat];
    v120[9] = v98;
    v119[10] = @"2.5ms-3.0ms";
    v97 = [MEMORY[0x277D3F198] sharedInstance];
    v96 = [v97 commonTypeDict_IntegerFormat];
    v120[10] = v96;
    v119[11] = @"3.0ms-3.5ms";
    v95 = [MEMORY[0x277D3F198] sharedInstance];
    v94 = [v95 commonTypeDict_IntegerFormat];
    v120[11] = v94;
    v119[12] = @"3.5ms-4.0ms";
    v93 = [MEMORY[0x277D3F198] sharedInstance];
    v92 = [v93 commonTypeDict_IntegerFormat];
    v120[12] = v92;
    v119[13] = @"4.0ms-4.5ms";
    v91 = [MEMORY[0x277D3F198] sharedInstance];
    v90 = [v91 commonTypeDict_IntegerFormat];
    v120[13] = v90;
    v119[14] = @"4.5ms-5.0ms";
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_IntegerFormat];
    v120[14] = v88;
    v119[15] = @"5.0ms-5.5ms";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_IntegerFormat];
    v120[15] = v86;
    v119[16] = @"5.5ms-6.0ms";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v85 commonTypeDict_IntegerFormat];
    v120[16] = v84;
    v119[17] = @"6.0ms-6.5ms";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_IntegerFormat];
    v120[17] = v82;
    v119[18] = @"6.5ms-7.0ms";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_IntegerFormat];
    v120[18] = v80;
    v119[19] = @"7.0ms-7.5ms";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_IntegerFormat];
    v120[19] = v78;
    v119[20] = @"7.5ms-8.0ms";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_IntegerFormat];
    v120[20] = v76;
    v119[21] = @"8.0ms-8.5ms";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_IntegerFormat];
    v120[21] = v74;
    v119[22] = @"8.5ms-9.0ms";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v120[22] = v72;
    v119[23] = @"9.0ms-9.5ms";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_IntegerFormat];
    v120[23] = v70;
    v119[24] = @"9.5ms-10.0ms";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v120[24] = v68;
    v119[25] = @"10.0ms-10.5ms";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_IntegerFormat];
    v120[25] = v66;
    v119[26] = @"10.5ms-11.0ms";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v120[26] = v64;
    v119[27] = @"11.0ms-11.5ms";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_IntegerFormat];
    v120[27] = v62;
    v119[28] = @"11.5ms-12.0ms";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v120[28] = v60;
    v119[29] = @"12.0ms-12.5ms";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_IntegerFormat];
    v120[29] = v58;
    v119[30] = @"12.5ms-13.0ms";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v120[30] = v56;
    v119[31] = @"13.0ms-13.5ms";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_IntegerFormat];
    v120[31] = v54;
    v119[32] = @"13.5ms-14.0ms";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v120[32] = v52;
    v119[33] = @"14.0ms-14.5ms";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_IntegerFormat];
    v120[33] = v50;
    v119[34] = @"14.5ms-15.0ms";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v120[34] = v48;
    v119[35] = @"15.0ms-15.5ms";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v120[35] = v46;
    v119[36] = @"15.5ms-16.0ms";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v120[36] = v44;
    v119[37] = @"16.0ms-16.5ms";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_IntegerFormat];
    v120[37] = v42;
    v119[38] = @"16.5ms-17.0ms";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v120[38] = v40;
    v119[39] = @"17.0ms-34.0ms";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_IntegerFormat];
    v120[39] = v38;
    v119[40] = @"34.0ms-68.0ms";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v120[40] = v36;
    v119[41] = @"68.0ms-102.0ms";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v120[41] = v34;
    v119[42] = @"102.0ms-136.0ms";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v120[42] = v32;
    v119[43] = @"136.0ms-170.0ms";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v120[43] = v30;
    v119[44] = @"170.0ms-204.0ms";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v120[44] = v28;
    v119[45] = @"204.0ms-238.0ms";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v120[45] = v26;
    v119[46] = @"238.0ms-272.0ms";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v120[46] = v24;
    v119[47] = @"272.0ms-306.0ms";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v120[47] = v22;
    v119[48] = @"306.0ms-340.0ms";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v120[48] = v20;
    v119[49] = @"340.0ms-374.0ms";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v120[49] = v18;
    v119[50] = @"374.0ms-408.0ms";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v120[50] = v16;
    v119[51] = @"408.0ms-442.0ms";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v120[51] = v5;
    v119[52] = @"442.0ms-476.0ms";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v120[52] = v7;
    v119[53] = @"476.0ms-510.0ms";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v120[53] = v9;
    v119[54] = @"510.0ms-544.0ms";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v120[54] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:55];
    v124[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionCPUStatsVoltageDomainPerformanceStates
{
  v116[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v115[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v113[0] = *MEMORY[0x277D3F568];
    v113[1] = v2;
    v114[0] = &unk_282C1C048;
    v114[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v113[2] = *MEMORY[0x277D3F4F8];
    v113[3] = v3;
    v114[2] = MEMORY[0x277CBEC28];
    v114[3] = MEMORY[0x277CBEC38];
    v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:4];
    v116[0] = v110;
    v115[1] = *MEMORY[0x277D3F540];
    v111[0] = @"SampleTime";
    v109 = [MEMORY[0x277D3F198] sharedInstance];
    v108 = [v109 commonTypeDict_RealFormat_withUnit_s];
    v112[0] = v108;
    v111[1] = @"Domain1_V0P0";
    v107 = [MEMORY[0x277D3F198] sharedInstance];
    v106 = [v107 commonTypeDict_RealFormat];
    v112[1] = v106;
    v111[2] = @"Domain1_V0P0_Transitions";
    v105 = [MEMORY[0x277D3F198] sharedInstance];
    v104 = [v105 commonTypeDict_IntegerFormat];
    v112[2] = v104;
    v111[3] = @"Domain1_V0P1";
    v103 = [MEMORY[0x277D3F198] sharedInstance];
    v102 = [v103 commonTypeDict_RealFormat];
    v112[3] = v102;
    v111[4] = @"Domain1_V0P1_Transitions";
    v101 = [MEMORY[0x277D3F198] sharedInstance];
    v100 = [v101 commonTypeDict_IntegerFormat];
    v112[4] = v100;
    v111[5] = @"Domain1_V0P2";
    v99 = [MEMORY[0x277D3F198] sharedInstance];
    v98 = [v99 commonTypeDict_RealFormat];
    v112[5] = v98;
    v111[6] = @"Domain1_V0P2_Transitions";
    v97 = [MEMORY[0x277D3F198] sharedInstance];
    v96 = [v97 commonTypeDict_IntegerFormat];
    v112[6] = v96;
    v111[7] = @"Domain1_V0P3";
    v95 = [MEMORY[0x277D3F198] sharedInstance];
    v94 = [v95 commonTypeDict_RealFormat];
    v112[7] = v94;
    v111[8] = @"Domain1_V0P3_Transitions";
    v93 = [MEMORY[0x277D3F198] sharedInstance];
    v92 = [v93 commonTypeDict_IntegerFormat];
    v112[8] = v92;
    v111[9] = @"Domain1_V0P4";
    v91 = [MEMORY[0x277D3F198] sharedInstance];
    v90 = [v91 commonTypeDict_RealFormat];
    v112[9] = v90;
    v111[10] = @"Domain1_V0P4_Transitions";
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_IntegerFormat];
    v112[10] = v88;
    v111[11] = @"Domain1_V1P0";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_RealFormat];
    v112[11] = v86;
    v111[12] = @"Domain1_V1P0_Transitions";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v85 commonTypeDict_IntegerFormat];
    v112[12] = v84;
    v111[13] = @"Domain1_V1P1";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_RealFormat];
    v112[13] = v82;
    v111[14] = @"Domain1_V1P1_Transitions";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_IntegerFormat];
    v112[14] = v80;
    v111[15] = @"Domain1_V1P2";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_RealFormat];
    v112[15] = v78;
    v111[16] = @"Domain1_V1P2_Transitions";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_IntegerFormat];
    v112[16] = v76;
    v111[17] = @"Domain1_V1P3";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_RealFormat];
    v112[17] = v74;
    v111[18] = @"Domain1_V1P3_Transitions";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v112[18] = v72;
    v111[19] = @"Domain1_V1P4";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_RealFormat];
    v112[19] = v70;
    v111[20] = @"Domain1_V1P4_Transitions";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v112[20] = v68;
    v111[21] = @"Domain1_V2P0";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_RealFormat];
    v112[21] = v66;
    v111[22] = @"Domain1_V2P0_Transitions";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v112[22] = v64;
    v111[23] = @"Domain1_V2P1";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_RealFormat];
    v112[23] = v62;
    v111[24] = @"Domain1_V2P1_Transitions";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v112[24] = v60;
    v111[25] = @"Domain1_V2P2";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_RealFormat];
    v112[25] = v58;
    v111[26] = @"Domain1_V2P2_Transitions";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v112[26] = v56;
    v111[27] = @"Domain1_V2P3";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_RealFormat];
    v112[27] = v54;
    v111[28] = @"Domain1_V2P3_Transitions";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v112[28] = v52;
    v111[29] = @"Domain1_V2P4";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v112[29] = v50;
    v111[30] = @"Domain1_V2P4_Transitions";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v112[30] = v48;
    v111[31] = @"Domain1_V3P0";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v112[31] = v46;
    v111[32] = @"Domain1_V3P0_Transitions";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v112[32] = v44;
    v111[33] = @"Domain1_V3P1";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v112[33] = v42;
    v111[34] = @"Domain1_V3P1_Transitions";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v112[34] = v40;
    v111[35] = @"Domain1_V3P2";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v112[35] = v38;
    v111[36] = @"Domain1_V3P2_Transitions";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v112[36] = v36;
    v111[37] = @"Domain1_V3P3";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v112[37] = v34;
    v111[38] = @"Domain1_V3P3_Transitions";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v112[38] = v32;
    v111[39] = @"Domain1_V3P4";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v112[39] = v30;
    v111[40] = @"Domain1_V3P4_Transitions";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v112[40] = v28;
    v111[41] = @"Domain1_V4P0";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v112[41] = v26;
    v111[42] = @"Domain1_V4P0_Transitions";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v112[42] = v24;
    v111[43] = @"Domain1_V4P1";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v112[43] = v22;
    v111[44] = @"Domain1_V4P1_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v112[44] = v20;
    v111[45] = @"Domain1_V4P2";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v112[45] = v18;
    v111[46] = @"Domain1_V4P2_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v112[46] = v16;
    v111[47] = @"Domain1_V4P3";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v112[47] = v5;
    v111[48] = @"Domain1_V4P3_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v112[48] = v7;
    v111[49] = @"Domain1_V4P4";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v112[49] = v9;
    v111[50] = @"Domain1_V4P4_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v112[50] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:51];
    v116[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionCPUStatsCPUComplexPerformanceStatesData
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v21[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v19[0] = *MEMORY[0x277D3F568];
    v19[1] = v2;
    v20[0] = &unk_282C1C038;
    v20[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v19[2] = *MEMORY[0x277D3F4F8];
    v19[3] = v3;
    v20[2] = MEMORY[0x277CBEC28];
    v20[3] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    v22[0] = v16;
    v21[1] = *MEMORY[0x277D3F540];
    v17[0] = @"Channel";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v18[0] = v5;
    v17[1] = @"DutyCycle";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v18[1] = v7;
    v17[2] = @"State";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v18[2] = v9;
    v17[3] = @"Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v18[3] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v22[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionCPUStatsCPUCorePerformanceStatesData
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v23[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v21[0] = *MEMORY[0x277D3F568];
    v21[1] = v2;
    v22[0] = &unk_282C1C088;
    v22[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v21[2] = *MEMORY[0x277D3F4F8];
    v21[3] = v3;
    v22[2] = MEMORY[0x277CBEC28];
    v22[3] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v24[0] = v18;
    v23[1] = *MEMORY[0x277D3F540];
    v19[0] = @"APWakeTime";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat_withUnit_s];
    v20[0] = v16;
    v19[1] = @"Channel";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v20[1] = v5;
    v19[2] = @"DutyCycle";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v20[2] = v7;
    v19[3] = @"State";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v20[3] = v9;
    v19[4] = @"Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v20[4] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v24[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionCPUStatsCPUComplexVoltageStateTime
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_282C1C028;
    v18[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v17[2] = *MEMORY[0x277D3F4F8];
    v17[3] = v3;
    v18[2] = MEMORY[0x277CBEC28];
    v18[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v20[0] = v4;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"APWakeTime";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_s];
    v16[0] = v6;
    v15[1] = @"Channel";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v16[1] = v8;
    v15[2] = @"Value";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionIOMFBUSRHistogram
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_282C1C028;
    v15[1] = @"logEventBackwardIOReport";
    v14[2] = *MEMORY[0x277D3F4F8];
    v15[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12 = @"IOMFBUSR";
    v4 = *MEMORY[0x277D3F598];
    v10[0] = *MEMORY[0x277D3F5A8];
    v10[1] = v4;
    v11[0] = &unk_282C10C68;
    v11[1] = &unk_282C10C80;
    v10[2] = *MEMORY[0x277D3F5A0];
    v11[2] = &unk_282C10C50;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
    v13 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v17[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventBackwardDefinitionIOMFBNativeRate
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_282C1C058;
    v13[1] = @"logEventBackwardIOReport";
    v12[2] = *MEMORY[0x277D3F4F8];
    v13[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"IOMFBNAT";
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

+ (id)entryEventBackwardDefinitionIOMFBSwap
{
  v37[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v36[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v34[0] = *MEMORY[0x277D3F568];
    v34[1] = v2;
    v35[0] = &unk_282C1C058;
    v35[1] = @"logEventBackwardIOReport";
    v34[2] = *MEMORY[0x277D3F4F8];
    v35[2] = MEMORY[0x277CBEC28];
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v37[0] = v31;
    v36[1] = *MEMORY[0x277D3F540];
    v32[0] = @"SampleTime";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat_withUnit_s];
    v33[0] = v29;
    v32[1] = @"subframes_0";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v33[1] = v27;
    v32[2] = @"subframes_1";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v33[2] = v25;
    v32[3] = @"subframes_2";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v33[3] = v23;
    v32[4] = @"subframes_3";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v33[4] = v21;
    v32[5] = @"subframes_4";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v33[5] = v19;
    v32[6] = @"subframes_5";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v33[6] = v17;
    v32[7] = @"subframes_6";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v33[7] = v15;
    v32[8] = @"subframes_7";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v33[8] = v4;
    v32[9] = @"subframes_8";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v33[9] = v6;
    v32[10] = @"subframes_9";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v33[10] = v8;
    v32[11] = @"subframes_10";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v33[11] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:12];
    v37[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionIOMFBScanout
{
  v37[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v36[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v34[0] = *MEMORY[0x277D3F568];
    v34[1] = v2;
    v35[0] = &unk_282C1C058;
    v35[1] = @"logEventBackwardIOReport";
    v34[2] = *MEMORY[0x277D3F4F8];
    v35[2] = MEMORY[0x277CBEC28];
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v37[0] = v31;
    v36[1] = *MEMORY[0x277D3F540];
    v32[0] = @"SampleTime";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat_withUnit_s];
    v33[0] = v29;
    v32[1] = @"subframes_0";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v33[1] = v27;
    v32[2] = @"subframes_1";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v33[2] = v25;
    v32[3] = @"subframes_2";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v33[3] = v23;
    v32[4] = @"subframes_3";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v33[4] = v21;
    v32[5] = @"subframes_4";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v33[5] = v19;
    v32[6] = @"subframes_5";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v33[6] = v17;
    v32[7] = @"subframes_6";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v33[7] = v15;
    v32[8] = @"subframes_7";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v33[8] = v4;
    v32[9] = @"subframes_8";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v33[9] = v6;
    v32[10] = @"subframes_9";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v33[10] = v8;
    v32[11] = @"subframes_10";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v33[11] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:12];
    v37[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionIOMFBFrameRatePhase
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_282C1C028;
  v22[1] = @"logEventBackwardIOReport";
  v3 = *MEMORY[0x277D3F580];
  v21[2] = *MEMORY[0x277D3F4F8];
  v21[3] = v3;
  v22[2] = MEMORY[0x277CBEC28];
  v22[3] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"SampleTime";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_RealFormat_withUnit_s];
  v20[0] = v16;
  v19[1] = @"fast overlay (video)";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[1] = v5;
  v19[2] = @"fast overlay (rgb)";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v20[2] = v7;
  v19[3] = @"out of phase (video)";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v20[3] = v9;
  v19[4] = @"out of phase (rgb)";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v20[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v24[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionDCPSwap
{
  v65[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F208] hasDCP])
  {
    v64[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v62[0] = *MEMORY[0x277D3F568];
    v62[1] = v2;
    v63[0] = &unk_282C1C038;
    v63[1] = @"logEventBackwardIOReport";
    v62[2] = *MEMORY[0x277D3F4F8];
    v63[2] = MEMORY[0x277CBEC28];
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
    v65[0] = v59;
    v64[1] = *MEMORY[0x277D3F540];
    v60[0] = @"SampleTime";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_RealFormat_withUnit_s];
    v61[0] = v57;
    v60[1] = @"subframes(0)";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_IntegerFormat];
    v61[1] = v55;
    v60[2] = @"subframes(1)";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_IntegerFormat];
    v61[2] = v53;
    v60[3] = @"subframes(2)";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_IntegerFormat];
    v61[3] = v51;
    v60[4] = @"subframes(3)";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_IntegerFormat];
    v61[4] = v49;
    v60[5] = @"subframes(4)";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_IntegerFormat];
    v61[5] = v47;
    v60[6] = @"subframes(5)";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_IntegerFormat];
    v61[6] = v45;
    v60[7] = @"subframes(6)";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v61[7] = v43;
    v60[8] = @"subframes(7)";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_IntegerFormat];
    v61[8] = v41;
    v60[9] = @"subframes(8)";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v61[9] = v39;
    v60[10] = @"subframes(9)";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_IntegerFormat];
    v61[10] = v37;
    v60[11] = @"subframes(10)";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v61[11] = v35;
    v60[12] = @"subframes(11)";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v61[12] = v33;
    v60[13] = @"subframes(12)";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v61[13] = v31;
    v60[14] = @"subframes(13)";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v61[14] = v29;
    v60[15] = @"subframes(14)";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v61[15] = v27;
    v60[16] = @"subframes(15)";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v61[16] = v25;
    v60[17] = @"subframes(16)";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v61[17] = v23;
    v60[18] = @"subframes(17)";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v61[18] = v21;
    v60[19] = @"subframes(18)";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v61[19] = v19;
    v60[20] = @"subframes(19)";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v61[20] = v17;
    v60[21] = @"subframes(20)";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v61[21] = v15;
    v60[22] = @"subframes(21)";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v61[22] = v4;
    v60[23] = @"subframes(22)";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v61[23] = v6;
    v60[24] = @"subframes(23)";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v61[24] = v8;
    v60[25] = @"subframes(24)";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v61[25] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:26];
    v65[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionDCPScanout
{
  v65[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F208] hasDCP])
  {
    v64[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v62[0] = *MEMORY[0x277D3F568];
    v62[1] = v2;
    v63[0] = &unk_282C1C038;
    v63[1] = @"logEventBackwardIOReport";
    v62[2] = *MEMORY[0x277D3F4F8];
    v63[2] = MEMORY[0x277CBEC28];
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
    v65[0] = v59;
    v64[1] = *MEMORY[0x277D3F540];
    v60[0] = @"SampleTime";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_RealFormat_withUnit_s];
    v61[0] = v57;
    v60[1] = @"subframes(0)";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_IntegerFormat];
    v61[1] = v55;
    v60[2] = @"subframes(1)";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_IntegerFormat];
    v61[2] = v53;
    v60[3] = @"subframes(2)";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_IntegerFormat];
    v61[3] = v51;
    v60[4] = @"subframes(3)";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_IntegerFormat];
    v61[4] = v49;
    v60[5] = @"subframes(4)";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_IntegerFormat];
    v61[5] = v47;
    v60[6] = @"subframes(5)";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_IntegerFormat];
    v61[6] = v45;
    v60[7] = @"subframes(6)";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v61[7] = v43;
    v60[8] = @"subframes(7)";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_IntegerFormat];
    v61[8] = v41;
    v60[9] = @"subframes(8)";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v61[9] = v39;
    v60[10] = @"subframes(9)";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_IntegerFormat];
    v61[10] = v37;
    v60[11] = @"subframes(10)";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v61[11] = v35;
    v60[12] = @"subframes(11)";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v61[12] = v33;
    v60[13] = @"subframes(12)";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v61[13] = v31;
    v60[14] = @"subframes(13)";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v61[14] = v29;
    v60[15] = @"subframes(14)";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v61[15] = v27;
    v60[16] = @"subframes(15)";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v61[16] = v25;
    v60[17] = @"subframes(16)";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v61[17] = v23;
    v60[18] = @"subframes(17)";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v61[18] = v21;
    v60[19] = @"subframes(18)";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v61[19] = v19;
    v60[20] = @"subframes(19)";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v61[20] = v17;
    v60[21] = @"subframes(20)";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v61[21] = v15;
    v60[22] = @"subframes(21)";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v61[22] = v4;
    v60[23] = @"subframes(22)";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v61[23] = v6;
    v60[24] = @"subframes(23)";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v61[24] = v8;
    v60[25] = @"subframes(24)";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v61[25] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:26];
    v65[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionDCPEXT0Swap
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F208] hasDCP])
  {
    v37[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v35[0] = *MEMORY[0x277D3F568];
    v35[1] = v2;
    v36[0] = &unk_282C1C028;
    v36[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v35[2] = *MEMORY[0x277D3F4F8];
    v35[3] = v3;
    v36[2] = MEMORY[0x277CBEC28];
    v36[3] = MEMORY[0x277CBEC38];
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v38[0] = v32;
    v37[1] = *MEMORY[0x277D3F540];
    v33[0] = @"SampleTime";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat_withUnit_s];
    v34[0] = v30;
    v33[1] = @"subframes(0)";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v34[1] = v28;
    v33[2] = @"subframes(1)";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v34[2] = v26;
    v33[3] = @"subframes(2)";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v34[3] = v24;
    v33[4] = @"subframes(3)";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v34[4] = v22;
    v33[5] = @"subframes(4)";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v34[5] = v20;
    v33[6] = @"subframes(5)";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v34[6] = v18;
    v33[7] = @"subframes(6)";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v34[7] = v16;
    v33[8] = @"subframes(7)";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v34[8] = v5;
    v33[9] = @"subframes(8)";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v34[9] = v7;
    v33[10] = @"subframes(9)";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v34[10] = v9;
    v33[11] = @"subframes(10)";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v34[11] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:12];
    v38[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionDCPEXT0Scanout
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F208] hasDCP])
  {
    v37[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v35[0] = *MEMORY[0x277D3F568];
    v35[1] = v2;
    v36[0] = &unk_282C1C028;
    v36[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v35[2] = *MEMORY[0x277D3F4F8];
    v35[3] = v3;
    v36[2] = MEMORY[0x277CBEC28];
    v36[3] = MEMORY[0x277CBEC38];
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v38[0] = v32;
    v37[1] = *MEMORY[0x277D3F540];
    v33[0] = @"SampleTime";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat_withUnit_s];
    v34[0] = v30;
    v33[1] = @"subframes(0)";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v34[1] = v28;
    v33[2] = @"subframes(1)";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v34[2] = v26;
    v33[3] = @"subframes(2)";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v34[3] = v24;
    v33[4] = @"subframes(3)";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v34[4] = v22;
    v33[5] = @"subframes(4)";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v34[5] = v20;
    v33[6] = @"subframes(5)";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v34[6] = v18;
    v33[7] = @"subframes(6)";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v34[7] = v16;
    v33[8] = @"subframes(7)";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v34[8] = v5;
    v33[9] = @"subframes(8)";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v34[9] = v7;
    v33[10] = @"subframes(9)";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v34[10] = v9;
    v33[11] = @"subframes(10)";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v34[11] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:12];
    v38[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionDCPEXT1Swap
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F208] hasDCP])
  {
    v37[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v35[0] = *MEMORY[0x277D3F568];
    v35[1] = v2;
    v36[0] = &unk_282C1C028;
    v36[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v35[2] = *MEMORY[0x277D3F4F8];
    v35[3] = v3;
    v36[2] = MEMORY[0x277CBEC28];
    v36[3] = MEMORY[0x277CBEC38];
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v38[0] = v32;
    v37[1] = *MEMORY[0x277D3F540];
    v33[0] = @"SampleTime";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat_withUnit_s];
    v34[0] = v30;
    v33[1] = @"subframes(0)";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v34[1] = v28;
    v33[2] = @"subframes(1)";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v34[2] = v26;
    v33[3] = @"subframes(2)";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v34[3] = v24;
    v33[4] = @"subframes(3)";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v34[4] = v22;
    v33[5] = @"subframes(4)";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v34[5] = v20;
    v33[6] = @"subframes(5)";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v34[6] = v18;
    v33[7] = @"subframes(6)";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v34[7] = v16;
    v33[8] = @"subframes(7)";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v34[8] = v5;
    v33[9] = @"subframes(8)";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v34[9] = v7;
    v33[10] = @"subframes(9)";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v34[10] = v9;
    v33[11] = @"subframes(10)";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v34[11] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:12];
    v38[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionDCPEXT1Scanout
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F208] hasDCP])
  {
    v37[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v35[0] = *MEMORY[0x277D3F568];
    v35[1] = v2;
    v36[0] = &unk_282C1C028;
    v36[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v35[2] = *MEMORY[0x277D3F4F8];
    v35[3] = v3;
    v36[2] = MEMORY[0x277CBEC28];
    v36[3] = MEMORY[0x277CBEC38];
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v38[0] = v32;
    v37[1] = *MEMORY[0x277D3F540];
    v33[0] = @"SampleTime";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat_withUnit_s];
    v34[0] = v30;
    v33[1] = @"subframes(0)";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v34[1] = v28;
    v33[2] = @"subframes(1)";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v34[2] = v26;
    v33[3] = @"subframes(2)";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v34[3] = v24;
    v33[4] = @"subframes(3)";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v34[4] = v22;
    v33[5] = @"subframes(4)";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v34[5] = v20;
    v33[6] = @"subframes(5)";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v34[6] = v18;
    v33[7] = @"subframes(6)";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v34[7] = v16;
    v33[8] = @"subframes(7)";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v34[8] = v5;
    v33[9] = @"subframes(8)";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v34[9] = v7;
    v33[10] = @"subframes(9)";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v34[10] = v9;
    v33[11] = @"subframes(10)";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v34[11] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:12];
    v38[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionDCPEXT2Swap
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F208] hasDCP])
  {
    v37[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v35[0] = *MEMORY[0x277D3F568];
    v35[1] = v2;
    v36[0] = &unk_282C1C028;
    v36[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v35[2] = *MEMORY[0x277D3F4F8];
    v35[3] = v3;
    v36[2] = MEMORY[0x277CBEC28];
    v36[3] = MEMORY[0x277CBEC38];
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v38[0] = v32;
    v37[1] = *MEMORY[0x277D3F540];
    v33[0] = @"SampleTime";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat_withUnit_s];
    v34[0] = v30;
    v33[1] = @"subframes(0)";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v34[1] = v28;
    v33[2] = @"subframes(1)";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v34[2] = v26;
    v33[3] = @"subframes(2)";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v34[3] = v24;
    v33[4] = @"subframes(3)";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v34[4] = v22;
    v33[5] = @"subframes(4)";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v34[5] = v20;
    v33[6] = @"subframes(5)";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v34[6] = v18;
    v33[7] = @"subframes(6)";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v34[7] = v16;
    v33[8] = @"subframes(7)";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v34[8] = v5;
    v33[9] = @"subframes(8)";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v34[9] = v7;
    v33[10] = @"subframes(9)";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v34[10] = v9;
    v33[11] = @"subframes(10)";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v34[11] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:12];
    v38[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionDCPEXT2Scanout
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F208] hasDCP])
  {
    v37[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v35[0] = *MEMORY[0x277D3F568];
    v35[1] = v2;
    v36[0] = &unk_282C1C028;
    v36[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v35[2] = *MEMORY[0x277D3F4F8];
    v35[3] = v3;
    v36[2] = MEMORY[0x277CBEC28];
    v36[3] = MEMORY[0x277CBEC38];
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v38[0] = v32;
    v37[1] = *MEMORY[0x277D3F540];
    v33[0] = @"SampleTime";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat_withUnit_s];
    v34[0] = v30;
    v33[1] = @"subframes(0)";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v34[1] = v28;
    v33[2] = @"subframes(1)";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v34[2] = v26;
    v33[3] = @"subframes(2)";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v34[3] = v24;
    v33[4] = @"subframes(3)";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v34[4] = v22;
    v33[5] = @"subframes(4)";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v34[5] = v20;
    v33[6] = @"subframes(5)";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v34[6] = v18;
    v33[7] = @"subframes(6)";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v34[7] = v16;
    v33[8] = @"subframes(7)";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v34[8] = v5;
    v33[9] = @"subframes(8)";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v34[9] = v7;
    v33[10] = @"subframes(9)";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v34[10] = v9;
    v33[11] = @"subframes(10)";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v34[11] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:12];
    v38[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionDCPEXT3Swap
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F208] hasDCP])
  {
    v37[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v35[0] = *MEMORY[0x277D3F568];
    v35[1] = v2;
    v36[0] = &unk_282C1C028;
    v36[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v35[2] = *MEMORY[0x277D3F4F8];
    v35[3] = v3;
    v36[2] = MEMORY[0x277CBEC28];
    v36[3] = MEMORY[0x277CBEC38];
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v38[0] = v32;
    v37[1] = *MEMORY[0x277D3F540];
    v33[0] = @"SampleTime";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat_withUnit_s];
    v34[0] = v30;
    v33[1] = @"subframes(0)";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v34[1] = v28;
    v33[2] = @"subframes(1)";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v34[2] = v26;
    v33[3] = @"subframes(2)";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v34[3] = v24;
    v33[4] = @"subframes(3)";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v34[4] = v22;
    v33[5] = @"subframes(4)";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v34[5] = v20;
    v33[6] = @"subframes(5)";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v34[6] = v18;
    v33[7] = @"subframes(6)";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v34[7] = v16;
    v33[8] = @"subframes(7)";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v34[8] = v5;
    v33[9] = @"subframes(8)";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v34[9] = v7;
    v33[10] = @"subframes(9)";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v34[10] = v9;
    v33[11] = @"subframes(10)";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v34[11] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:12];
    v38[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionDCPEXT3Scanout
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F208] hasDCP])
  {
    v37[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v35[0] = *MEMORY[0x277D3F568];
    v35[1] = v2;
    v36[0] = &unk_282C1C028;
    v36[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v35[2] = *MEMORY[0x277D3F4F8];
    v35[3] = v3;
    v36[2] = MEMORY[0x277CBEC28];
    v36[3] = MEMORY[0x277CBEC38];
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v38[0] = v32;
    v37[1] = *MEMORY[0x277D3F540];
    v33[0] = @"SampleTime";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat_withUnit_s];
    v34[0] = v30;
    v33[1] = @"subframes(0)";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v34[1] = v28;
    v33[2] = @"subframes(1)";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v34[2] = v26;
    v33[3] = @"subframes(2)";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v34[3] = v24;
    v33[4] = @"subframes(3)";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v34[4] = v22;
    v33[5] = @"subframes(4)";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v34[5] = v20;
    v33[6] = @"subframes(5)";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v34[6] = v18;
    v33[7] = @"subframes(6)";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v34[7] = v16;
    v33[8] = @"subframes(7)";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v34[8] = v5;
    v33[9] = @"subframes(8)";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v34[9] = v7;
    v33[10] = @"subframes(9)";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v34[10] = v9;
    v33[11] = @"subframes(10)";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v34[11] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:12];
    v38[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionDCPScanoutStats
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogDCPScanoutStats])
  {
    v26[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v24[0] = *MEMORY[0x277D3F568];
    v24[1] = v2;
    v25[0] = &unk_282C1C028;
    v25[1] = @"logEventBackwardIOReport";
    v24[2] = *MEMORY[0x277D3F4F8];
    v25[2] = MEMORY[0x277CBEC28];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v27[0] = v21;
    v26[1] = *MEMORY[0x277D3F540];
    v22[0] = @"SampleTime";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_RealFormat_withUnit_s];
    v23[0] = v19;
    v22[1] = @"prc";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v23[1] = v17;
    v22[2] = @"pdc";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v23[2] = v15;
    v22[3] = @"pcc";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v23[3] = v4;
    v22[4] = @"bics";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v23[4] = v6;
    v22[5] = @"ambient";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v23[5] = v8;
    v22[6] = @"duration_exp";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v23[6] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
    v27[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionSoCStatsH6PMGRCounters
{
  v84[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v83[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v81[0] = *MEMORY[0x277D3F568];
    v81[1] = v2;
    v82[0] = &unk_282C1C058;
    v82[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v81[2] = *MEMORY[0x277D3F4F8];
    v81[3] = v3;
    v82[2] = MEMORY[0x277CBEC28];
    v82[3] = MEMORY[0x277CBEC38];
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:4];
    v84[0] = v78;
    v83[1] = *MEMORY[0x277D3F540];
    v79[0] = @"SampleTime";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_RealFormat_withUnit_s];
    v80[0] = v76;
    v79[1] = @"LIO_NOT_IDLE";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_IntegerFormat];
    v80[1] = v74;
    v79[2] = @"LIO_AF_NOT_IDLE";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v80[2] = v72;
    v79[3] = @"SEP_NOT_IDLE";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_IntegerFormat];
    v80[3] = v70;
    v79[4] = @"SIO_NOT_IDLE";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v80[4] = v68;
    v79[5] = @"ANS_NOT_IDLE";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_IntegerFormat];
    v80[5] = v66;
    v79[6] = @"MEDIA_NOT_IDLE";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v80[6] = v64;
    v79[7] = @"JPG_NOT_IDLE";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_IntegerFormat];
    v80[7] = v62;
    v79[8] = @"MSR_NOT_IDLE";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v80[8] = v60;
    v79[9] = @"VDEC_NOT_IDLE";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_IntegerFormat];
    v80[9] = v58;
    v79[10] = @"VENC_SYS_CORE0_NOT_IDLE";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v80[10] = v56;
    v79[11] = @"DISP0_NOT_IDLE";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_IntegerFormat];
    v80[11] = v54;
    v79[12] = @"DISP_BUSMUX_NOT_IDLE";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v80[12] = v52;
    v79[13] = @"DISP1_NOT_IDLE";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_IntegerFormat];
    v80[13] = v50;
    v79[14] = @"SF_NOT_IDLE";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v80[14] = v48;
    v79[15] = @"SMX_NOT_IDLE";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v80[15] = v46;
    v79[16] = @"MCU_NOT_IDLE";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v80[16] = v44;
    v79[17] = @"MCC_NOT_IDLE";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_IntegerFormat];
    v80[17] = v42;
    v79[18] = @"AMPCAH_FIXED_NOT_IDLE";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v80[18] = v40;
    v79[19] = @"AMPCAV_FIXED_NOT_IDLE";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_IntegerFormat];
    v80[19] = v38;
    v79[20] = @"AMPDQH_FIXED_NOT_IDLE";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v80[20] = v36;
    v79[21] = @"AMPDQV_FIXED_NOT_IDLE";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v80[21] = v34;
    v79[22] = @"HSIC0PHY_NOT_IDLE";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v80[22] = v32;
    v79[23] = @"HSIC1PHY_NOT_IDLE";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v80[23] = v30;
    v79[24] = @"HSIC2PHY_NOT_IDLE";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v80[24] = v28;
    v79[25] = @"AF_CLK_ON";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v80[25] = v26;
    v79[26] = @"LIO_CLK_ON";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v80[26] = v24;
    v79[27] = @"DISP0_CLK_ON";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v80[27] = v22;
    v79[28] = @"MCU_FIXED_CLK_ON";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v80[28] = v20;
    v79[29] = @"USB480_0_CLK_ON";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v80[29] = v18;
    v79[30] = @"ISP_SENSOR0_REF_CLK_ON";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v80[30] = v16;
    v79[31] = @"ISP_SENSOR1_REF_CLK_ON";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v80[31] = v5;
    v79[32] = @"SEP_POWER_ON";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v80[32] = v7;
    v79[33] = @"ACS_POWER_ON";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v80[33] = v9;
    v79[34] = @"AMC_POWER_ON";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v80[34] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:35];
    v84[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionSoCStatsVoltageDomainPerformanceStates
{
  v32[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v31[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v29[0] = *MEMORY[0x277D3F568];
    v29[1] = v2;
    v30[0] = &unk_282C1C048;
    v30[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v29[2] = *MEMORY[0x277D3F4F8];
    v29[3] = v3;
    v30[2] = MEMORY[0x277CBEC28];
    v30[3] = MEMORY[0x277CBEC38];
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
    v32[0] = v26;
    v31[1] = *MEMORY[0x277D3F540];
    v27[0] = @"SampleTime";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_RealFormat_withUnit_s];
    v28[0] = v24;
    v27[1] = @"Domain0_V0P0";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v28[1] = v22;
    v27[2] = @"Domain0_V0P0_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v28[2] = v20;
    v27[3] = @"Domain0_V0P1";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v28[3] = v18;
    v27[4] = @"Domain0_V0P1_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v28[4] = v16;
    v27[5] = @"Domain0_V1P0";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v28[5] = v5;
    v27[6] = @"Domain0_V1P0_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v28[6] = v7;
    v27[7] = @"Domain0_V1P1";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v28[7] = v9;
    v27[8] = @"Domain0_V1P1_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v28[8] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:9];
    v32[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionSoCStatsDeviceStatesChannelID
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_282C1C028;
  v20[1] = @"logEventBackwardIOReport";
  v3 = *MEMORY[0x277D3F580];
  v19[2] = *MEMORY[0x277D3F4F8];
  v19[3] = v3;
  v20[2] = MEMORY[0x277CBEC28];
  v20[3] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"SampleTime";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_RealFormat_withUnit_s];
  v18[0] = v5;
  v17[1] = @"channelID";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v18[1] = v7;
  v17[2] = @"value";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_RealFormat];
  v18[2] = v9;
  v17[3] = @"channelName";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_StringFormat];
  v18[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v22[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionSoCStatsDeviceStates
{
  v869[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && [MEMORY[0x277D3F180] BOOLForKey:@"enable_SoCStatsDeviceStates" ifNotSet:0])
  {
    v868[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v866[0] = *MEMORY[0x277D3F568];
    v866[1] = v2;
    v867[0] = &unk_282C1C098;
    v867[1] = @"logEventBackwardIOReport";
    v866[2] = *MEMORY[0x277D3F4F8];
    v867[2] = MEMORY[0x277CBEC28];
    v863 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v867 forKeys:v866 count:3];
    v869[0] = v863;
    v868[1] = *MEMORY[0x277D3F540];
    v864[0] = @"SampleTime";
    v862 = [MEMORY[0x277D3F198] sharedInstance];
    v861 = [v862 commonTypeDict_RealFormat_withUnit_s];
    v865[0] = v861;
    v864[1] = @"CPU0_RUNMAX";
    v860 = [MEMORY[0x277D3F198] sharedInstance];
    v859 = [v860 commonTypeDict_RealFormat];
    v865[1] = v859;
    v864[2] = @"CPU1_RUNMAX";
    v858 = [MEMORY[0x277D3F198] sharedInstance];
    v857 = [v858 commonTypeDict_RealFormat];
    v865[2] = v857;
    v864[3] = @"CPU-SYS-IDLE_RUNMAX";
    v856 = [MEMORY[0x277D3F198] sharedInstance];
    v855 = [v856 commonTypeDict_RealFormat];
    v865[3] = v855;
    v864[4] = @"SIO_P_RUNMAX";
    v854 = [MEMORY[0x277D3F198] sharedInstance];
    v853 = [v854 commonTypeDict_RealFormat];
    v865[4] = v853;
    v864[5] = @"USB_RUNMAX";
    v852 = [MEMORY[0x277D3F198] sharedInstance];
    v851 = [v852 commonTypeDict_RealFormat];
    v865[5] = v851;
    v864[6] = @"USBCTRL_RUNMAX";
    v850 = [MEMORY[0x277D3F198] sharedInstance];
    v849 = [v850 commonTypeDict_RealFormat];
    v865[6] = v849;
    v864[7] = @"USB2HOST0_RUNMAX";
    v848 = [MEMORY[0x277D3F198] sharedInstance];
    v847 = [v848 commonTypeDict_RealFormat];
    v865[7] = v847;
    v864[8] = @"USB2HOST1_RUNMAX";
    v846 = [MEMORY[0x277D3F198] sharedInstance];
    v845 = [v846 commonTypeDict_RealFormat];
    v865[8] = v845;
    v864[9] = @"DISP_BUSMUX_RUNMAX";
    v844 = [MEMORY[0x277D3F198] sharedInstance];
    v843 = [v844 commonTypeDict_RealFormat];
    v865[9] = v843;
    v864[10] = @"MEDIA_RUNMAX";
    v842 = [MEMORY[0x277D3F198] sharedInstance];
    v841 = [v842 commonTypeDict_RealFormat];
    v865[10] = v841;
    v864[11] = @"SECUART0_RUNMAX";
    v840 = [MEMORY[0x277D3F198] sharedInstance];
    v839 = [v840 commonTypeDict_RealFormat];
    v865[11] = v839;
    v864[12] = @"SECUART1_RUNMAX";
    v838 = [MEMORY[0x277D3F198] sharedInstance];
    v837 = [v838 commonTypeDict_RealFormat];
    v865[12] = v837;
    v864[13] = @"ANS_RUNMAX";
    v836 = [MEMORY[0x277D3F198] sharedInstance];
    v835 = [v836 commonTypeDict_RealFormat];
    v865[13] = v835;
    v864[14] = @"ISP_SYS_RUNMAX";
    v834 = [MEMORY[0x277D3F198] sharedInstance];
    v833 = [v834 commonTypeDict_RealFormat];
    v865[14] = v833;
    v864[15] = @"MSR_RUNMAX";
    v832 = [MEMORY[0x277D3F198] sharedInstance];
    v831 = [v832 commonTypeDict_RealFormat];
    v865[15] = v831;
    v864[16] = @"JPG_RUNMAX";
    v830 = [MEMORY[0x277D3F198] sharedInstance];
    v829 = [v830 commonTypeDict_RealFormat];
    v865[16] = v829;
    v864[17] = @"DISP0_RUNMAX";
    v828 = [MEMORY[0x277D3F198] sharedInstance];
    v827 = [v828 commonTypeDict_RealFormat];
    v865[17] = v827;
    v864[18] = @"CPM_RUNMAX";
    v826 = [MEMORY[0x277D3F198] sharedInstance];
    v825 = [v826 commonTypeDict_RealFormat];
    v865[18] = v825;
    v864[19] = @"LIO_RUNMAX";
    v824 = [MEMORY[0x277D3F198] sharedInstance];
    v823 = [v824 commonTypeDict_RealFormat];
    v865[19] = v823;
    v864[20] = @"IOMUX_RUNMAX";
    v822 = [MEMORY[0x277D3F198] sharedInstance];
    v821 = [v822 commonTypeDict_RealFormat];
    v865[20] = v821;
    v864[21] = @"AIC_RUNMAX";
    v820 = [MEMORY[0x277D3F198] sharedInstance];
    v819 = [v820 commonTypeDict_RealFormat];
    v865[21] = v819;
    v864[22] = @"DEBUG_RUNMAX";
    v818 = [MEMORY[0x277D3F198] sharedInstance];
    v817 = [v818 commonTypeDict_RealFormat];
    v865[22] = v817;
    v864[23] = @"DWI_RUNMAX";
    v816 = [MEMORY[0x277D3F198] sharedInstance];
    v815 = [v816 commonTypeDict_RealFormat];
    v865[23] = v815;
    v864[24] = @"GPIO_RUNMAX";
    v814 = [MEMORY[0x277D3F198] sharedInstance];
    v813 = [v814 commonTypeDict_RealFormat];
    v865[24] = v813;
    v864[25] = @"MCA0_RUNMAX";
    v812 = [MEMORY[0x277D3F198] sharedInstance];
    v811 = [v812 commonTypeDict_RealFormat];
    v865[25] = v811;
    v864[26] = @"MCA1_RUNMAX";
    v810 = [MEMORY[0x277D3F198] sharedInstance];
    v809 = [v810 commonTypeDict_RealFormat];
    v865[26] = v809;
    v864[27] = @"MCA2_RUNMAX";
    v808 = [MEMORY[0x277D3F198] sharedInstance];
    v807 = [v808 commonTypeDict_RealFormat];
    v865[27] = v807;
    v864[28] = @"MCA3_RUNMAX";
    v806 = [MEMORY[0x277D3F198] sharedInstance];
    v805 = [v806 commonTypeDict_RealFormat];
    v865[28] = v805;
    v864[29] = @"MCA4_RUNMAX";
    v804 = [MEMORY[0x277D3F198] sharedInstance];
    v803 = [v804 commonTypeDict_RealFormat];
    v865[29] = v803;
    v864[30] = @"PWM0_RUNMAX";
    v802 = [MEMORY[0x277D3F198] sharedInstance];
    v801 = [v802 commonTypeDict_RealFormat];
    v865[30] = v801;
    v864[31] = @"I2C0_RUNMAX";
    v800 = [MEMORY[0x277D3F198] sharedInstance];
    v799 = [v800 commonTypeDict_RealFormat];
    v865[31] = v799;
    v864[32] = @"I2C1_RUNMAX";
    v798 = [MEMORY[0x277D3F198] sharedInstance];
    v797 = [v798 commonTypeDict_RealFormat];
    v865[32] = v797;
    v864[33] = @"I2C2_RUNMAX";
    v796 = [MEMORY[0x277D3F198] sharedInstance];
    v795 = [v796 commonTypeDict_RealFormat];
    v865[33] = v795;
    v864[34] = @"I2C3_RUNMAX";
    v794 = [MEMORY[0x277D3F198] sharedInstance];
    v793 = [v794 commonTypeDict_RealFormat];
    v865[34] = v793;
    v864[35] = @"SPI0_RUNMAX";
    v792 = [MEMORY[0x277D3F198] sharedInstance];
    v791 = [v792 commonTypeDict_RealFormat];
    v865[35] = v791;
    v864[36] = @"SPI1_RUNMAX";
    v790 = [MEMORY[0x277D3F198] sharedInstance];
    v789 = [v790 commonTypeDict_RealFormat];
    v865[36] = v789;
    v864[37] = @"SPI2_RUNMAX";
    v788 = [MEMORY[0x277D3F198] sharedInstance];
    v787 = [v788 commonTypeDict_RealFormat];
    v865[37] = v787;
    v864[38] = @"SPI3_RUNMAX";
    v786 = [MEMORY[0x277D3F198] sharedInstance];
    v785 = [v786 commonTypeDict_RealFormat];
    v865[38] = v785;
    v864[39] = @"UART0_RUNMAX";
    v784 = [MEMORY[0x277D3F198] sharedInstance];
    v783 = [v784 commonTypeDict_RealFormat];
    v865[39] = v783;
    v864[40] = @"UART1_RUNMAX";
    v782 = [MEMORY[0x277D3F198] sharedInstance];
    v781 = [v782 commonTypeDict_RealFormat];
    v865[40] = v781;
    v864[41] = @"UART2_RUNMAX";
    v780 = [MEMORY[0x277D3F198] sharedInstance];
    v779 = [v780 commonTypeDict_RealFormat];
    v865[41] = v779;
    v864[42] = @"UART3_RUNMAX";
    v778 = [MEMORY[0x277D3F198] sharedInstance];
    v777 = [v778 commonTypeDict_RealFormat];
    v865[42] = v777;
    v864[43] = @"UART4_RUNMAX";
    v776 = [MEMORY[0x277D3F198] sharedInstance];
    v775 = [v776 commonTypeDict_RealFormat];
    v865[43] = v775;
    v864[44] = @"UART5_RUNMAX";
    v774 = [MEMORY[0x277D3F198] sharedInstance];
    v773 = [v774 commonTypeDict_RealFormat];
    v865[44] = v773;
    v864[45] = @"UART6_RUNMAX";
    v772 = [MEMORY[0x277D3F198] sharedInstance];
    v771 = [v772 commonTypeDict_RealFormat];
    v865[45] = v771;
    v864[46] = @"AES0_RUNMAX";
    v770 = [MEMORY[0x277D3F198] sharedInstance];
    v769 = [v770 commonTypeDict_RealFormat];
    v865[46] = v769;
    v864[47] = @"SIO_RUNMAX";
    v768 = [MEMORY[0x277D3F198] sharedInstance];
    v767 = [v768 commonTypeDict_RealFormat];
    v865[47] = v767;
    v864[48] = @"HSIC0_PHY_RUNMAX";
    v766 = [MEMORY[0x277D3F198] sharedInstance];
    v765 = [v766 commonTypeDict_RealFormat];
    v865[48] = v765;
    v864[49] = @"HSIC1_PHY_RUNMAX";
    v764 = [MEMORY[0x277D3F198] sharedInstance];
    v763 = [v764 commonTypeDict_RealFormat];
    v865[49] = v763;
    v864[50] = @"HSIC2_PHY_RUNMAX";
    v762 = [MEMORY[0x277D3F198] sharedInstance];
    v761 = [v762 commonTypeDict_RealFormat];
    v865[50] = v761;
    v864[51] = @"ISPSENS0_RUNMAX";
    v760 = [MEMORY[0x277D3F198] sharedInstance];
    v759 = [v760 commonTypeDict_RealFormat];
    v865[51] = v759;
    v864[52] = @"ISPSENS1_RUNMAX";
    v758 = [MEMORY[0x277D3F198] sharedInstance];
    v757 = [v758 commonTypeDict_RealFormat];
    v865[52] = v757;
    v864[53] = @"MCC_RUNMAX";
    v756 = [MEMORY[0x277D3F198] sharedInstance];
    v755 = [v756 commonTypeDict_RealFormat];
    v865[53] = v755;
    v864[54] = @"MCU_RUNMAX";
    v754 = [MEMORY[0x277D3F198] sharedInstance];
    v753 = [v754 commonTypeDict_RealFormat];
    v865[54] = v753;
    v864[55] = @"AMP_RUNMAX";
    v752 = [MEMORY[0x277D3F198] sharedInstance];
    v751 = [v752 commonTypeDict_RealFormat];
    v865[55] = v751;
    v864[56] = @"USB2HOST0_OHCI_RUNMAX";
    v750 = [MEMORY[0x277D3F198] sharedInstance];
    v749 = [v750 commonTypeDict_RealFormat];
    v865[56] = v749;
    v864[57] = @"USB2HOST1_OHCI_RUNMAX";
    v748 = [MEMORY[0x277D3F198] sharedInstance];
    v747 = [v748 commonTypeDict_RealFormat];
    v865[57] = v747;
    v864[58] = @"USBOTG_RUNMAX";
    v746 = [MEMORY[0x277D3F198] sharedInstance];
    v745 = [v746 commonTypeDict_RealFormat];
    v865[58] = v745;
    v864[59] = @"SMX_RUNMAX";
    v744 = [MEMORY[0x277D3F198] sharedInstance];
    v743 = [v744 commonTypeDict_RealFormat];
    v865[59] = v743;
    v864[60] = @"SF_RUNMAX";
    v742 = [MEMORY[0x277D3F198] sharedInstance];
    v741 = [v742 commonTypeDict_RealFormat];
    v865[60] = v741;
    v864[61] = @"CP_RUNMAX";
    v740 = [MEMORY[0x277D3F198] sharedInstance];
    v739 = [v740 commonTypeDict_RealFormat];
    v865[61] = v739;
    v864[62] = @"ISP_DART_RUNMAX";
    v738 = [MEMORY[0x277D3F198] sharedInstance];
    v737 = [v738 commonTypeDict_RealFormat];
    v865[62] = v737;
    v864[63] = @"MSR_DART_RUNMAX";
    v736 = [MEMORY[0x277D3F198] sharedInstance];
    v735 = [v736 commonTypeDict_RealFormat];
    v865[63] = v735;
    v864[64] = @"JPG_DART_RUNMAX";
    v734 = [MEMORY[0x277D3F198] sharedInstance];
    v733 = [v734 commonTypeDict_RealFormat];
    v865[64] = v733;
    v864[65] = @"DISP0-V_RUNMAX";
    v732 = [MEMORY[0x277D3F198] sharedInstance];
    v731 = [v732 commonTypeDict_RealFormat];
    v865[65] = v731;
    v864[66] = @"MIPI_DSI_RUNMAX";
    v730 = [MEMORY[0x277D3F198] sharedInstance];
    v729 = [v730 commonTypeDict_RealFormat];
    v865[66] = v729;
    v864[67] = @"DP_RUNMAX";
    v728 = [MEMORY[0x277D3F198] sharedInstance];
    v727 = [v728 commonTypeDict_RealFormat];
    v865[67] = v727;
    v864[68] = @"DISP1_RUNMAX";
    v726 = [MEMORY[0x277D3F198] sharedInstance];
    v725 = [v726 commonTypeDict_RealFormat];
    v865[68] = v725;
    v864[69] = @"DISP-FB-ACTIVE_RUNMAX";
    v724 = [MEMORY[0x277D3F198] sharedInstance];
    v723 = [v724 commonTypeDict_RealFormat];
    v865[69] = v723;
    v864[70] = @"DISP-FB-MCACHE_RUNMAX";
    v722 = [MEMORY[0x277D3F198] sharedInstance];
    v721 = [v722 commonTypeDict_RealFormat];
    v865[70] = v721;
    v864[71] = @"DISP-MIE-DPB_RUNMAX";
    v720 = [MEMORY[0x277D3F198] sharedInstance];
    v719 = [v720 commonTypeDict_RealFormat];
    v865[71] = v719;
    v864[72] = @"VDEC_RUNMAX";
    v718 = [MEMORY[0x277D3F198] sharedInstance];
    v717 = [v718 commonTypeDict_RealFormat];
    v865[72] = v717;
    v864[73] = @"VENC_SYS_RUNMAX";
    v716 = [MEMORY[0x277D3F198] sharedInstance];
    v715 = [v716 commonTypeDict_RealFormat];
    v865[73] = v715;
    v864[74] = @"ANS_DLL_RUNMAX";
    v714 = [MEMORY[0x277D3F198] sharedInstance];
    v713 = [v714 commonTypeDict_RealFormat];
    v865[74] = v713;
    v864[75] = @"GFX_RUNMAX";
    v712 = [MEMORY[0x277D3F198] sharedInstance];
    v711 = [v712 commonTypeDict_RealFormat];
    v865[75] = v711;
    v864[76] = @"SEP_RUNMAX";
    v710 = [MEMORY[0x277D3F198] sharedInstance];
    v709 = [v710 commonTypeDict_RealFormat];
    v865[76] = v709;
    v864[77] = @"AES_CLKOFF";
    v708 = [MEMORY[0x277D3F198] sharedInstance];
    v707 = [v708 commonTypeDict_RealFormat];
    v865[77] = v707;
    v864[78] = @"AES_RUNMAX";
    v706 = [MEMORY[0x277D3F198] sharedInstance];
    v705 = [v706 commonTypeDict_RealFormat];
    v865[78] = v705;
    v864[79] = @"AIC_CLKOFF";
    v704 = [MEMORY[0x277D3F198] sharedInstance];
    v703 = [v704 commonTypeDict_RealFormat];
    v865[79] = v703;
    v864[80] = @"ANE-DART_CLKOFF";
    v702 = [MEMORY[0x277D3F198] sharedInstance];
    v701 = [v702 commonTypeDict_RealFormat];
    v865[80] = v701;
    v864[81] = @"ANE-DART_RUNMAX";
    v700 = [MEMORY[0x277D3F198] sharedInstance];
    v699 = [v700 commonTypeDict_RealFormat];
    v865[81] = v699;
    v864[82] = @"ANE-SYS-V_CLKOFF";
    v698 = [MEMORY[0x277D3F198] sharedInstance];
    v697 = [v698 commonTypeDict_RealFormat];
    v865[82] = v697;
    v864[83] = @"ANE-SYS-V_RUNMAX";
    v696 = [MEMORY[0x277D3F198] sharedInstance];
    v695 = [v696 commonTypeDict_RealFormat];
    v865[83] = v695;
    v864[84] = @"ANE_SYS_CLKOFF";
    v694 = [MEMORY[0x277D3F198] sharedInstance];
    v693 = [v694 commonTypeDict_RealFormat];
    v865[84] = v693;
    v864[85] = @"ANE_SYS_RUNMAX";
    v692 = [MEMORY[0x277D3F198] sharedInstance];
    v691 = [v692 commonTypeDict_RealFormat];
    v865[85] = v691;
    v864[86] = @"ANS2_CLKOFF";
    v690 = [MEMORY[0x277D3F198] sharedInstance];
    v689 = [v690 commonTypeDict_RealFormat];
    v865[86] = v689;
    v864[87] = @"ANS2_RUNMAX";
    v688 = [MEMORY[0x277D3F198] sharedInstance];
    v687 = [v688 commonTypeDict_RealFormat];
    v865[87] = v687;
    v864[88] = @"APCIE-V_CLKOFF";
    v686 = [MEMORY[0x277D3F198] sharedInstance];
    v685 = [v686 commonTypeDict_RealFormat];
    v865[88] = v685;
    v864[89] = @"APCIE-V_RUNMAX";
    v684 = [MEMORY[0x277D3F198] sharedInstance];
    v683 = [v684 commonTypeDict_RealFormat];
    v865[89] = v683;
    v864[90] = @"APCIE_CLKOFF";
    v682 = [MEMORY[0x277D3F198] sharedInstance];
    v681 = [v682 commonTypeDict_RealFormat];
    v865[90] = v681;
    v864[91] = @"APCIE_GP_CLKOFF";
    v680 = [MEMORY[0x277D3F198] sharedInstance];
    v679 = [v680 commonTypeDict_RealFormat];
    v865[91] = v679;
    v864[92] = @"APCIE_GP_RUNMAX";
    v678 = [MEMORY[0x277D3F198] sharedInstance];
    v677 = [v678 commonTypeDict_RealFormat];
    v865[92] = v677;
    v864[93] = @"APCIE_RUNMAX";
    v676 = [MEMORY[0x277D3F198] sharedInstance];
    v675 = [v676 commonTypeDict_RealFormat];
    v865[93] = v675;
    v864[94] = @"APCIE_ST_CLKOFF";
    v674 = [MEMORY[0x277D3F198] sharedInstance];
    v673 = [v674 commonTypeDict_RealFormat];
    v865[94] = v673;
    v864[95] = @"APCIE_ST_RUNMAX";
    v672 = [MEMORY[0x277D3F198] sharedInstance];
    v671 = [v672 commonTypeDict_RealFormat];
    v865[95] = v671;
    v864[96] = @"AUDIO_CLKOFF";
    v670 = [MEMORY[0x277D3F198] sharedInstance];
    v669 = [v670 commonTypeDict_RealFormat];
    v865[96] = v669;
    v864[97] = @"AUDIO_CPU_CLKOFF";
    v668 = [MEMORY[0x277D3F198] sharedInstance];
    v667 = [v668 commonTypeDict_RealFormat];
    v865[97] = v667;
    v864[98] = @"AUDIO_CPU_RUNMAX";
    v666 = [MEMORY[0x277D3F198] sharedInstance];
    v665 = [v666 commonTypeDict_RealFormat];
    v865[98] = v665;
    v864[99] = @"AUDIO_RUNMAX";
    v664 = [MEMORY[0x277D3F198] sharedInstance];
    v663 = [v664 commonTypeDict_RealFormat];
    v865[99] = v663;
    v864[100] = @"AVD-DART_CLKOFF";
    v662 = [MEMORY[0x277D3F198] sharedInstance];
    v661 = [v662 commonTypeDict_RealFormat];
    v865[100] = v661;
    v864[101] = @"AVD-DART_RUNMAX";
    v660 = [MEMORY[0x277D3F198] sharedInstance];
    v659 = [v660 commonTypeDict_RealFormat];
    v865[101] = v659;
    v864[102] = @"AVD-SOC-VMAX_CLKOFF";
    v658 = [MEMORY[0x277D3F198] sharedInstance];
    v657 = [v658 commonTypeDict_RealFormat];
    v865[102] = v657;
    v864[103] = @"AVD-SOC-VMAX_RUNMAX";
    v656 = [MEMORY[0x277D3F198] sharedInstance];
    v655 = [v656 commonTypeDict_RealFormat];
    v865[103] = v655;
    v864[104] = @"AVD-SOC-VNOM_CLKOFF";
    v654 = [MEMORY[0x277D3F198] sharedInstance];
    v653 = [v654 commonTypeDict_RealFormat];
    v865[104] = v653;
    v864[105] = @"AVD-SOC-VNOM_RUNMAX";
    v652 = [MEMORY[0x277D3F198] sharedInstance];
    v651 = [v652 commonTypeDict_RealFormat];
    v865[105] = v651;
    v864[106] = @"AVD-SYS-V_CLKOFF";
    v650 = [MEMORY[0x277D3F198] sharedInstance];
    v649 = [v650 commonTypeDict_RealFormat];
    v865[106] = v649;
    v864[107] = @"AVD-SYS-V_RUNMAX";
    v648 = [MEMORY[0x277D3F198] sharedInstance];
    v647 = [v648 commonTypeDict_RealFormat];
    v865[107] = v647;
    v864[108] = @"AVD_SYS_CLKOFF";
    v646 = [MEMORY[0x277D3F198] sharedInstance];
    v645 = [v646 commonTypeDict_RealFormat];
    v865[108] = v645;
    v864[109] = @"AVD_SYS_RUNMAX";
    v644 = [MEMORY[0x277D3F198] sharedInstance];
    v643 = [v644 commonTypeDict_RealFormat];
    v865[109] = v643;
    v864[110] = @"CLPC-DCS-VMAX_CLKOFF";
    v642 = [MEMORY[0x277D3F198] sharedInstance];
    v641 = [v642 commonTypeDict_RealFormat];
    v865[110] = v641;
    v864[111] = @"CLPC-DCS-VMAX_RUNMAX";
    v640 = [MEMORY[0x277D3F198] sharedInstance];
    v639 = [v640 commonTypeDict_RealFormat];
    v865[111] = v639;
    v864[112] = @"CLPC-DCS-VNOM_CLKOFF";
    v638 = [MEMORY[0x277D3F198] sharedInstance];
    v637 = [v638 commonTypeDict_RealFormat];
    v865[112] = v637;
    v864[113] = @"CLPC-DCS-VNOM_RUNMAX";
    v636 = [MEMORY[0x277D3F198] sharedInstance];
    v635 = [v636 commonTypeDict_RealFormat];
    v865[113] = v635;
    v864[114] = @"CLPC-SOC-VMAX_CLKOFF";
    v634 = [MEMORY[0x277D3F198] sharedInstance];
    v633 = [v634 commonTypeDict_RealFormat];
    v865[114] = v633;
    v864[115] = @"CLPC-SOC-VMAX_RUNMAX";
    v632 = [MEMORY[0x277D3F198] sharedInstance];
    v631 = [v632 commonTypeDict_RealFormat];
    v865[115] = v631;
    v864[116] = @"CLPC-SOC-VNOM_CLKOFF";
    v630 = [MEMORY[0x277D3F198] sharedInstance];
    v629 = [v630 commonTypeDict_RealFormat];
    v865[116] = v629;
    v864[117] = @"CLPC-SOC-VNOM_RUNMAX";
    v628 = [MEMORY[0x277D3F198] sharedInstance];
    v627 = [v628 commonTypeDict_RealFormat];
    v865[117] = v627;
    v864[118] = @"CPU-BUSY_CLKOFF";
    v626 = [MEMORY[0x277D3F198] sharedInstance];
    v625 = [v626 commonTypeDict_RealFormat];
    v865[118] = v625;
    v864[119] = @"CPU-BUSY_RUNMAX";
    v624 = [MEMORY[0x277D3F198] sharedInstance];
    v623 = [v624 commonTypeDict_RealFormat];
    v865[119] = v623;
    v864[120] = @"DCS0_CLKOFF";
    v622 = [MEMORY[0x277D3F198] sharedInstance];
    v621 = [v622 commonTypeDict_RealFormat];
    v865[120] = v621;
    v864[121] = @"DCS0_RUNMAX";
    v620 = [MEMORY[0x277D3F198] sharedInstance];
    v619 = [v620 commonTypeDict_RealFormat];
    v865[121] = v619;
    v864[122] = @"DCS1_CLKOFF";
    v618 = [MEMORY[0x277D3F198] sharedInstance];
    v617 = [v618 commonTypeDict_RealFormat];
    v865[122] = v617;
    v864[123] = @"DCS1_RUNMAX";
    v616 = [MEMORY[0x277D3F198] sharedInstance];
    v615 = [v616 commonTypeDict_RealFormat];
    v865[123] = v615;
    v864[124] = @"DCS2_CLKOFF";
    v614 = [MEMORY[0x277D3F198] sharedInstance];
    v613 = [v614 commonTypeDict_RealFormat];
    v865[124] = v613;
    v864[125] = @"DCS2_RUNMAX";
    v612 = [MEMORY[0x277D3F198] sharedInstance];
    v611 = [v612 commonTypeDict_RealFormat];
    v865[125] = v611;
    v864[126] = @"DCS3_CLKOFF";
    v610 = [MEMORY[0x277D3F198] sharedInstance];
    v609 = [v610 commonTypeDict_RealFormat];
    v865[126] = v609;
    v864[127] = @"DCS3_RUNMAX";
    v608 = [MEMORY[0x277D3F198] sharedInstance];
    v607 = [v608 commonTypeDict_RealFormat];
    v865[127] = v607;
    v864[128] = @"DEBUG_CLKOFF";
    v606 = [MEMORY[0x277D3F198] sharedInstance];
    v605 = [v606 commonTypeDict_RealFormat];
    v865[128] = v605;
    v864[129] = @"DEBUG_USB_CLKOFF";
    v604 = [MEMORY[0x277D3F198] sharedInstance];
    v603 = [v604 commonTypeDict_RealFormat];
    v865[129] = v603;
    v864[130] = @"DEBUG_USB_RUNMAX";
    v602 = [MEMORY[0x277D3F198] sharedInstance];
    v601 = [v602 commonTypeDict_RealFormat];
    v865[130] = v601;
    v864[131] = @"DISP-CPM-PG_CLKOFF";
    v600 = [MEMORY[0x277D3F198] sharedInstance];
    v599 = [v600 commonTypeDict_RealFormat];
    v865[131] = v599;
    v864[132] = @"DISP-CPM-PG_RUNMAX";
    v598 = [MEMORY[0x277D3F198] sharedInstance];
    v597 = [v598 commonTypeDict_RealFormat];
    v865[132] = v597;
    v864[133] = @"DISP-DCS-PG_CLKOFF";
    v596 = [MEMORY[0x277D3F198] sharedInstance];
    v595 = [v596 commonTypeDict_RealFormat];
    v865[133] = v595;
    v864[134] = @"DISP-DCS-PG_RUNMAX";
    v594 = [MEMORY[0x277D3F198] sharedInstance];
    v593 = [v594 commonTypeDict_RealFormat];
    v865[134] = v593;
    v864[135] = @"DISP-FB-ACTIVE_CLKOFF";
    v592 = [MEMORY[0x277D3F198] sharedInstance];
    v591 = [v592 commonTypeDict_RealFormat];
    v865[135] = v591;
    v864[136] = @"DISP-MIE-DPB_CLKOFF";
    v590 = [MEMORY[0x277D3F198] sharedInstance];
    v589 = [v590 commonTypeDict_RealFormat];
    v865[136] = v589;
    v864[137] = @"DISP0-DART_CLKOFF";
    v588 = [MEMORY[0x277D3F198] sharedInstance];
    v587 = [v588 commonTypeDict_RealFormat];
    v865[137] = v587;
    v864[138] = @"DISP0-DART_RUNMAX";
    v586 = [MEMORY[0x277D3F198] sharedInstance];
    v585 = [v586 commonTypeDict_RealFormat];
    v865[138] = v585;
    v864[139] = @"DISP0-V_CLKOFF";
    v584 = [MEMORY[0x277D3F198] sharedInstance];
    v583 = [v584 commonTypeDict_RealFormat];
    v865[139] = v583;
    v864[140] = @"DISP0_BE_2X_CLKOFF";
    v582 = [MEMORY[0x277D3F198] sharedInstance];
    v581 = [v582 commonTypeDict_RealFormat];
    v865[140] = v581;
    v864[141] = @"DISP0_BE_2X_RUNMAX";
    v580 = [MEMORY[0x277D3F198] sharedInstance];
    v579 = [v580 commonTypeDict_RealFormat];
    v865[141] = v579;
    v864[142] = @"DISP0_BE_CLKOFF";
    v578 = [MEMORY[0x277D3F198] sharedInstance];
    v577 = [v578 commonTypeDict_RealFormat];
    v865[142] = v577;
    v864[143] = @"DISP0_BE_RUNMAX";
    v576 = [MEMORY[0x277D3F198] sharedInstance];
    v575 = [v576 commonTypeDict_RealFormat];
    v865[143] = v575;
    v864[144] = @"DISP0_BUSIF_CLKOFF";
    v574 = [MEMORY[0x277D3F198] sharedInstance];
    v573 = [v574 commonTypeDict_RealFormat];
    v865[144] = v573;
    v864[145] = @"DISP0_BUSIF_RUNMAX";
    v572 = [MEMORY[0x277D3F198] sharedInstance];
    v571 = [v572 commonTypeDict_RealFormat];
    v865[145] = v571;
    v864[146] = @"DISP0_DSC_CLKOFF";
    v570 = [MEMORY[0x277D3F198] sharedInstance];
    v569 = [v570 commonTypeDict_RealFormat];
    v865[146] = v569;
    v864[147] = @"DISP0_DSC_RUNMAX";
    v568 = [MEMORY[0x277D3F198] sharedInstance];
    v567 = [v568 commonTypeDict_RealFormat];
    v865[147] = v567;
    v864[148] = @"DISP0_FE_CLKOFF";
    v566 = [MEMORY[0x277D3F198] sharedInstance];
    v565 = [v566 commonTypeDict_RealFormat];
    v865[148] = v565;
    v864[149] = @"DISP0_FE_RUNMAX";
    v564 = [MEMORY[0x277D3F198] sharedInstance];
    v563 = [v564 commonTypeDict_RealFormat];
    v865[149] = v563;
    v864[150] = @"DISP0_GP0_CLKOFF";
    v562 = [MEMORY[0x277D3F198] sharedInstance];
    v561 = [v562 commonTypeDict_RealFormat];
    v865[150] = v561;
    v864[151] = @"DISP0_GP0_RUNMAX";
    v560 = [MEMORY[0x277D3F198] sharedInstance];
    v559 = [v560 commonTypeDict_RealFormat];
    v865[151] = v559;
    v864[152] = @"DISP0_GP1_CLKOFF";
    v558 = [MEMORY[0x277D3F198] sharedInstance];
    v557 = [v558 commonTypeDict_RealFormat];
    v865[152] = v557;
    v864[153] = @"DISP0_GP1_RUNMAX";
    v556 = [MEMORY[0x277D3F198] sharedInstance];
    v555 = [v556 commonTypeDict_RealFormat];
    v865[153] = v555;
    v864[154] = @"DISP0_HILO_CLKOFF";
    v554 = [MEMORY[0x277D3F198] sharedInstance];
    v553 = [v554 commonTypeDict_RealFormat];
    v865[154] = v553;
    v864[155] = @"DISP0_HILO_RUNMAX";
    v552 = [MEMORY[0x277D3F198] sharedInstance];
    v551 = [v552 commonTypeDict_RealFormat];
    v865[155] = v551;
    v864[156] = @"DISP0_PPP_CLKOFF";
    v550 = [MEMORY[0x277D3F198] sharedInstance];
    v549 = [v550 commonTypeDict_RealFormat];
    v865[156] = v549;
    v864[157] = @"DISP0_PPP_RUNMAX";
    v548 = [MEMORY[0x277D3F198] sharedInstance];
    v547 = [v548 commonTypeDict_RealFormat];
    v865[157] = v547;
    v864[158] = @"DPA_CLKOFF";
    v546 = [MEMORY[0x277D3F198] sharedInstance];
    v545 = [v546 commonTypeDict_RealFormat];
    v865[158] = v545;
    v864[159] = @"DPA_RUNMAX";
    v544 = [MEMORY[0x277D3F198] sharedInstance];
    v543 = [v544 commonTypeDict_RealFormat];
    v865[159] = v543;
    v864[160] = @"DP_CLKOFF";
    v542 = [MEMORY[0x277D3F198] sharedInstance];
    v541 = [v542 commonTypeDict_RealFormat];
    v865[160] = v541;
    v864[161] = @"DWI_CLKOFF";
    v540 = [MEMORY[0x277D3F198] sharedInstance];
    v539 = [v540 commonTypeDict_RealFormat];
    v865[161] = v539;
    v864[162] = @"ECPM_CLKOFF";
    v538 = [MEMORY[0x277D3F198] sharedInstance];
    v537 = [v538 commonTypeDict_RealFormat];
    v865[162] = v537;
    v864[163] = @"ECPM_RUNMAX";
    v536 = [MEMORY[0x277D3F198] sharedInstance];
    v535 = [v536 commonTypeDict_RealFormat];
    v865[163] = v535;
    v864[164] = @"ECPU0_CLKOFF";
    v534 = [MEMORY[0x277D3F198] sharedInstance];
    v533 = [v534 commonTypeDict_RealFormat];
    v865[164] = v533;
    v864[165] = @"ECPU0_RUNMAX";
    v532 = [MEMORY[0x277D3F198] sharedInstance];
    v531 = [v532 commonTypeDict_RealFormat];
    v865[165] = v531;
    v864[166] = @"ECPU1_CLKOFF";
    v530 = [MEMORY[0x277D3F198] sharedInstance];
    v529 = [v530 commonTypeDict_RealFormat];
    v865[166] = v529;
    v864[167] = @"ECPU1_RUNMAX";
    v528 = [MEMORY[0x277D3F198] sharedInstance];
    v527 = [v528 commonTypeDict_RealFormat];
    v865[167] = v527;
    v864[168] = @"ECPU2_CLKOFF";
    v526 = [MEMORY[0x277D3F198] sharedInstance];
    v525 = [v526 commonTypeDict_RealFormat];
    v865[168] = v525;
    v864[169] = @"ECPU2_RUNMAX";
    v524 = [MEMORY[0x277D3F198] sharedInstance];
    v523 = [v524 commonTypeDict_RealFormat];
    v865[169] = v523;
    v864[170] = @"ECPU3_CLKOFF";
    v522 = [MEMORY[0x277D3F198] sharedInstance];
    v521 = [v522 commonTypeDict_RealFormat];
    v865[170] = v521;
    v864[171] = @"ECPU3_RUNMAX";
    v520 = [MEMORY[0x277D3F198] sharedInstance];
    v519 = [v520 commonTypeDict_RealFormat];
    v865[171] = v519;
    v864[172] = @"ECPU_CLKOFF";
    v518 = [MEMORY[0x277D3F198] sharedInstance];
    v517 = [v518 commonTypeDict_RealFormat];
    v865[172] = v517;
    v864[173] = @"ECPU_RUNMAX";
    v516 = [MEMORY[0x277D3F198] sharedInstance];
    v515 = [v516 commonTypeDict_RealFormat];
    v865[173] = v515;
    v864[174] = @"GFX-ASC_CLKOFF";
    v514 = [MEMORY[0x277D3F198] sharedInstance];
    v513 = [v514 commonTypeDict_RealFormat];
    v865[174] = v513;
    v864[175] = @"GFX-ASC_RUNMAX";
    v512 = [MEMORY[0x277D3F198] sharedInstance];
    v511 = [v512 commonTypeDict_RealFormat];
    v865[175] = v511;
    v864[176] = @"GFX-BUSY_CLKOFF";
    v510 = [MEMORY[0x277D3F198] sharedInstance];
    v509 = [v510 commonTypeDict_RealFormat];
    v865[176] = v509;
    v864[177] = @"GFX-BUSY_RUNMAX";
    v508 = [MEMORY[0x277D3F198] sharedInstance];
    v507 = [v508 commonTypeDict_RealFormat];
    v865[177] = v507;
    v864[178] = @"GFX-SGX_CLKOFF";
    v506 = [MEMORY[0x277D3F198] sharedInstance];
    v505 = [v506 commonTypeDict_RealFormat];
    v865[178] = v505;
    v864[179] = @"GFX-SGX_RUNMAX";
    v504 = [MEMORY[0x277D3F198] sharedInstance];
    v503 = [v504 commonTypeDict_RealFormat];
    v865[179] = v503;
    v864[180] = @"GFX_CLKOFF";
    v502 = [MEMORY[0x277D3F198] sharedInstance];
    v501 = [v502 commonTypeDict_RealFormat];
    v865[180] = v501;
    v864[181] = @"GPIO_CLKOFF";
    v500 = [MEMORY[0x277D3F198] sharedInstance];
    v499 = [v500 commonTypeDict_RealFormat];
    v865[181] = v499;
    v864[182] = @"I2C0_CLKOFF";
    v498 = [MEMORY[0x277D3F198] sharedInstance];
    v497 = [v498 commonTypeDict_RealFormat];
    v865[182] = v497;
    v864[183] = @"I2C1_CLKOFF";
    v496 = [MEMORY[0x277D3F198] sharedInstance];
    v495 = [v496 commonTypeDict_RealFormat];
    v865[183] = v495;
    v864[184] = @"I2C2_CLKOFF";
    v494 = [MEMORY[0x277D3F198] sharedInstance];
    v493 = [v494 commonTypeDict_RealFormat];
    v865[184] = v493;
    v864[185] = @"I2C3_CLKOFF";
    v492 = [MEMORY[0x277D3F198] sharedInstance];
    v491 = [v492 commonTypeDict_RealFormat];
    v865[185] = v491;
    v864[186] = @"IMX_CLKOFF";
    v490 = [MEMORY[0x277D3F198] sharedInstance];
    v489 = [v490 commonTypeDict_RealFormat];
    v865[186] = v489;
    v864[187] = @"IMX_RUNMAX";
    v488 = [MEMORY[0x277D3F198] sharedInstance];
    v487 = [v488 commonTypeDict_RealFormat];
    v865[187] = v487;
    v864[188] = @"ISP-DART_CLKOFF";
    v486 = [MEMORY[0x277D3F198] sharedInstance];
    v485 = [v486 commonTypeDict_RealFormat];
    v865[188] = v485;
    v864[189] = @"ISP-DART_RUNMAX";
    v484 = [MEMORY[0x277D3F198] sharedInstance];
    v483 = [v484 commonTypeDict_RealFormat];
    v865[189] = v483;
    v864[190] = @"ISP-SOC-VNOM_CLKOFF";
    v482 = [MEMORY[0x277D3F198] sharedInstance];
    v481 = [v482 commonTypeDict_RealFormat];
    v865[190] = v481;
    v864[191] = @"ISP-SOC-VNOM_RUNMAX";
    v480 = [MEMORY[0x277D3F198] sharedInstance];
    v479 = [v480 commonTypeDict_RealFormat];
    v865[191] = v479;
    v864[192] = @"ISP-SYS-V_CLKOFF";
    v478 = [MEMORY[0x277D3F198] sharedInstance];
    v477 = [v478 commonTypeDict_RealFormat];
    v865[192] = v477;
    v864[193] = @"ISP-SYS-V_RUNMAX";
    v476 = [MEMORY[0x277D3F198] sharedInstance];
    v475 = [v476 commonTypeDict_RealFormat];
    v865[193] = v475;
    v864[194] = @"ISPSENS0_CLKOFF";
    v474 = [MEMORY[0x277D3F198] sharedInstance];
    v473 = [v474 commonTypeDict_RealFormat];
    v865[194] = v473;
    v864[195] = @"ISPSENS1_CLKOFF";
    v472 = [MEMORY[0x277D3F198] sharedInstance];
    v471 = [v472 commonTypeDict_RealFormat];
    v865[195] = v471;
    v864[196] = @"ISPSENS2_CLKOFF";
    v470 = [MEMORY[0x277D3F198] sharedInstance];
    v469 = [v470 commonTypeDict_RealFormat];
    v865[196] = v469;
    v864[197] = @"ISPSENS2_RUNMAX";
    v468 = [MEMORY[0x277D3F198] sharedInstance];
    v467 = [v468 commonTypeDict_RealFormat];
    v865[197] = v467;
    v864[198] = @"ISPSENS3_CLKOFF";
    v466 = [MEMORY[0x277D3F198] sharedInstance];
    v465 = [v466 commonTypeDict_RealFormat];
    v865[198] = v465;
    v864[199] = @"ISPSENS3_RUNMAX";
    v464 = [MEMORY[0x277D3F198] sharedInstance];
    v463 = [v464 commonTypeDict_RealFormat];
    v865[199] = v463;
    v864[200] = @"ISP_SYS_CLKOFF";
    v462 = [MEMORY[0x277D3F198] sharedInstance];
    v461 = [v462 commonTypeDict_RealFormat];
    v865[200] = v461;
    v864[201] = @"JPG-SOC-VMAX_CLKOFF";
    v460 = [MEMORY[0x277D3F198] sharedInstance];
    v459 = [v460 commonTypeDict_RealFormat];
    v865[201] = v459;
    v864[202] = @"JPG-SOC-VMAX_RUNMAX";
    v458 = [MEMORY[0x277D3F198] sharedInstance];
    v457 = [v458 commonTypeDict_RealFormat];
    v865[202] = v457;
    v864[203] = @"JPG-SOC-VNOM_CLKOFF";
    v456 = [MEMORY[0x277D3F198] sharedInstance];
    v455 = [v456 commonTypeDict_RealFormat];
    v865[203] = v455;
    v864[204] = @"JPG-SOC-VNOM_RUNMAX";
    v454 = [MEMORY[0x277D3F198] sharedInstance];
    v453 = [v454 commonTypeDict_RealFormat];
    v865[204] = v453;
    v864[205] = @"JPG0-DART_CLKOFF";
    v452 = [MEMORY[0x277D3F198] sharedInstance];
    v451 = [v452 commonTypeDict_RealFormat];
    v865[205] = v451;
    v864[206] = @"JPG0-DART_RUNMAX";
    v450 = [MEMORY[0x277D3F198] sharedInstance];
    v449 = [v450 commonTypeDict_RealFormat];
    v865[206] = v449;
    v864[207] = @"JPG0-V_CLKOFF";
    v448 = [MEMORY[0x277D3F198] sharedInstance];
    v447 = [v448 commonTypeDict_RealFormat];
    v865[207] = v447;
    v864[208] = @"JPG0-V_RUNMAX";
    v446 = [MEMORY[0x277D3F198] sharedInstance];
    v445 = [v446 commonTypeDict_RealFormat];
    v865[208] = v445;
    v864[209] = @"JPG1-DART_CLKOFF";
    v444 = [MEMORY[0x277D3F198] sharedInstance];
    v443 = [v444 commonTypeDict_RealFormat];
    v865[209] = v443;
    v864[210] = @"JPG1-DART_RUNMAX";
    v442 = [MEMORY[0x277D3F198] sharedInstance];
    v441 = [v442 commonTypeDict_RealFormat];
    v865[210] = v441;
    v864[211] = @"JPG1-V_CLKOFF";
    v440 = [MEMORY[0x277D3F198] sharedInstance];
    v439 = [v440 commonTypeDict_RealFormat];
    v865[211] = v439;
    v864[212] = @"JPG1-V_RUNMAX";
    v438 = [MEMORY[0x277D3F198] sharedInstance];
    v437 = [v438 commonTypeDict_RealFormat];
    v865[212] = v437;
    v864[213] = @"JPG_CLKOFF";
    v436 = [MEMORY[0x277D3F198] sharedInstance];
    v435 = [v436 commonTypeDict_RealFormat];
    v865[213] = v435;
    v864[214] = @"MCA0_CLKOFF";
    v434 = [MEMORY[0x277D3F198] sharedInstance];
    v433 = [v434 commonTypeDict_RealFormat];
    v865[214] = v433;
    v864[215] = @"MCA1_CLKOFF";
    v432 = [MEMORY[0x277D3F198] sharedInstance];
    v431 = [v432 commonTypeDict_RealFormat];
    v865[215] = v431;
    v864[216] = @"MCA2_CLKOFF";
    v430 = [MEMORY[0x277D3F198] sharedInstance];
    v429 = [v430 commonTypeDict_RealFormat];
    v865[216] = v429;
    v864[217] = @"MCA3_CLKOFF";
    v428 = [MEMORY[0x277D3F198] sharedInstance];
    v427 = [v428 commonTypeDict_RealFormat];
    v865[217] = v427;
    v864[218] = @"MCA4_CLKOFF";
    v426 = [MEMORY[0x277D3F198] sharedInstance];
    v425 = [v426 commonTypeDict_RealFormat];
    v865[218] = v425;
    v864[219] = @"MCA5_CLKOFF";
    v424 = [MEMORY[0x277D3F198] sharedInstance];
    v423 = [v424 commonTypeDict_RealFormat];
    v865[219] = v423;
    v864[220] = @"MCA5_RUNMAX";
    v422 = [MEMORY[0x277D3F198] sharedInstance];
    v421 = [v422 commonTypeDict_RealFormat];
    v865[220] = v421;
    v864[221] = @"MCC_CLKOFF";
    v420 = [MEMORY[0x277D3F198] sharedInstance];
    v419 = [v420 commonTypeDict_RealFormat];
    v865[221] = v419;
    v864[222] = @"MIPI_DSI_CLKOFF";
    v418 = [MEMORY[0x277D3F198] sharedInstance];
    v417 = [v418 commonTypeDict_RealFormat];
    v865[222] = v417;
    v864[223] = @"MMX_CLKOFF";
    v416 = [MEMORY[0x277D3F198] sharedInstance];
    v415 = [v416 commonTypeDict_RealFormat];
    v865[223] = v415;
    v864[224] = @"MMX_RUNMAX";
    v414 = [MEMORY[0x277D3F198] sharedInstance];
    v413 = [v414 commonTypeDict_RealFormat];
    v865[224] = v413;
    v864[225] = @"MSR-DART_CLKOFF";
    v412 = [MEMORY[0x277D3F198] sharedInstance];
    v411 = [v412 commonTypeDict_RealFormat];
    v865[225] = v411;
    v864[226] = @"MSR-DART_RUNMAX";
    v410 = [MEMORY[0x277D3F198] sharedInstance];
    v409 = [v410 commonTypeDict_RealFormat];
    v865[226] = v409;
    v864[227] = @"MSR-V_CLKOFF";
    v408 = [MEMORY[0x277D3F198] sharedInstance];
    v407 = [v408 commonTypeDict_RealFormat];
    v865[227] = v407;
    v864[228] = @"MSR-V_RUNMAX";
    v406 = [MEMORY[0x277D3F198] sharedInstance];
    v405 = [v406 commonTypeDict_RealFormat];
    v865[228] = v405;
    v864[229] = @"MSR_ASE_CORE_CLKOFF";
    v404 = [MEMORY[0x277D3F198] sharedInstance];
    v403 = [v404 commonTypeDict_RealFormat];
    v865[229] = v403;
    v864[230] = @"MSR_ASE_CORE_RUNMAX";
    v402 = [MEMORY[0x277D3F198] sharedInstance];
    v401 = [v402 commonTypeDict_RealFormat];
    v865[230] = v401;
    v864[231] = @"MSR_CLKOFF";
    v400 = [MEMORY[0x277D3F198] sharedInstance];
    v399 = [v400 commonTypeDict_RealFormat];
    v865[231] = v399;
    v864[232] = @"NUB_AON_CLKOFF";
    v398 = [MEMORY[0x277D3F198] sharedInstance];
    v397 = [v398 commonTypeDict_RealFormat];
    v865[232] = v397;
    v864[233] = @"NUB_AON_RUNMAX";
    v396 = [MEMORY[0x277D3F198] sharedInstance];
    v395 = [v396 commonTypeDict_RealFormat];
    v865[233] = v395;
    v864[234] = @"NUB_FABRIC_CLKOFF";
    v394 = [MEMORY[0x277D3F198] sharedInstance];
    v393 = [v394 commonTypeDict_RealFormat];
    v865[234] = v393;
    v864[235] = @"NUB_FABRIC_RUNMAX";
    v392 = [MEMORY[0x277D3F198] sharedInstance];
    v391 = [v392 commonTypeDict_RealFormat];
    v865[235] = v391;
    v864[236] = @"NUB_GPIO_CLKOFF";
    v390 = [MEMORY[0x277D3F198] sharedInstance];
    v389 = [v390 commonTypeDict_RealFormat];
    v865[236] = v389;
    v864[237] = @"NUB_GPIO_RUNMAX";
    v388 = [MEMORY[0x277D3F198] sharedInstance];
    v387 = [v388 commonTypeDict_RealFormat];
    v865[237] = v387;
    v864[238] = @"NUB_SRAM_CLKOFF";
    v386 = [MEMORY[0x277D3F198] sharedInstance];
    v385 = [v386 commonTypeDict_RealFormat];
    v865[238] = v385;
    v864[239] = @"NUB_SRAM_RUNMAX";
    v384 = [MEMORY[0x277D3F198] sharedInstance];
    v383 = [v384 commonTypeDict_RealFormat];
    v865[239] = v383;
    v864[240] = @"PCIE_REF_CLKOFF";
    v382 = [MEMORY[0x277D3F198] sharedInstance];
    v381 = [v382 commonTypeDict_RealFormat];
    v865[240] = v381;
    v864[241] = @"PCIE_REF_RUNMAX";
    v380 = [MEMORY[0x277D3F198] sharedInstance];
    v379 = [v380 commonTypeDict_RealFormat];
    v865[241] = v379;
    v864[242] = @"PCPM_CLKOFF";
    v378 = [MEMORY[0x277D3F198] sharedInstance];
    v377 = [v378 commonTypeDict_RealFormat];
    v865[242] = v377;
    v864[243] = @"PCPM_RUNMAX";
    v376 = [MEMORY[0x277D3F198] sharedInstance];
    v375 = [v376 commonTypeDict_RealFormat];
    v865[243] = v375;
    v864[244] = @"PCPU0_CLKOFF";
    v374 = [MEMORY[0x277D3F198] sharedInstance];
    v373 = [v374 commonTypeDict_RealFormat];
    v865[244] = v373;
    v864[245] = @"PCPU0_RUNMAX";
    v372 = [MEMORY[0x277D3F198] sharedInstance];
    v371 = [v372 commonTypeDict_RealFormat];
    v865[245] = v371;
    v864[246] = @"PCPU1_CLKOFF";
    v370 = [MEMORY[0x277D3F198] sharedInstance];
    v369 = [v370 commonTypeDict_RealFormat];
    v865[246] = v369;
    v864[247] = @"PCPU1_RUNMAX";
    v368 = [MEMORY[0x277D3F198] sharedInstance];
    v367 = [v368 commonTypeDict_RealFormat];
    v865[247] = v367;
    v864[248] = @"PCPU_CLKOFF";
    v366 = [MEMORY[0x277D3F198] sharedInstance];
    v365 = [v366 commonTypeDict_RealFormat];
    v865[248] = v365;
    v864[249] = @"PCPU_RUNMAX";
    v364 = [MEMORY[0x277D3F198] sharedInstance];
    v363 = [v364 commonTypeDict_RealFormat];
    v865[249] = v363;
    v864[250] = @"PMGR-DCS-VMAX_CLKOFF";
    v362 = [MEMORY[0x277D3F198] sharedInstance];
    v361 = [v362 commonTypeDict_RealFormat];
    v865[250] = v361;
    v864[251] = @"PMGR-DCS-VMAX_RUNMAX";
    v360 = [MEMORY[0x277D3F198] sharedInstance];
    v359 = [v360 commonTypeDict_RealFormat];
    v865[251] = v359;
    v864[252] = @"PMGR-DCS-VNOM_CLKOFF";
    v358 = [MEMORY[0x277D3F198] sharedInstance];
    v357 = [v358 commonTypeDict_RealFormat];
    v865[252] = v357;
    v864[253] = @"PMGR-DCS-VNOM_RUNMAX";
    v356 = [MEMORY[0x277D3F198] sharedInstance];
    v355 = [v356 commonTypeDict_RealFormat];
    v865[253] = v355;
    v864[254] = @"PMGR-SOC-VMAX_CLKOFF";
    v354 = [MEMORY[0x277D3F198] sharedInstance];
    v353 = [v354 commonTypeDict_RealFormat];
    v865[254] = v353;
    v864[255] = @"PMGR-SOC-VMAX_RUNMAX";
    v352 = [MEMORY[0x277D3F198] sharedInstance];
    v351 = [v352 commonTypeDict_RealFormat];
    v865[255] = v351;
    v864[256] = @"PMGR-SOC-VNOM_CLKOFF";
    v350 = [MEMORY[0x277D3F198] sharedInstance];
    v349 = [v350 commonTypeDict_RealFormat];
    v865[256] = v349;
    v864[257] = @"PMGR-SOC-VNOM_RUNMAX";
    v348 = [MEMORY[0x277D3F198] sharedInstance];
    v347 = [v348 commonTypeDict_RealFormat];
    v865[257] = v347;
    v864[258] = @"PMP_CLKOFF";
    v346 = [MEMORY[0x277D3F198] sharedInstance];
    v345 = [v346 commonTypeDict_RealFormat];
    v865[258] = v345;
    v864[259] = @"PMP_RUNMAX";
    v344 = [MEMORY[0x277D3F198] sharedInstance];
    v343 = [v344 commonTypeDict_RealFormat];
    v865[259] = v343;
    v864[260] = @"PMS_CLKOFF";
    v342 = [MEMORY[0x277D3F198] sharedInstance];
    v341 = [v342 commonTypeDict_RealFormat];
    v865[260] = v341;
    v864[261] = @"PMS_RUNMAX";
    v340 = [MEMORY[0x277D3F198] sharedInstance];
    v339 = [v340 commonTypeDict_RealFormat];
    v865[261] = v339;
    v864[262] = @"PMS_SRAM_CLKOFF";
    v338 = [MEMORY[0x277D3F198] sharedInstance];
    v337 = [v338 commonTypeDict_RealFormat];
    v865[262] = v337;
    v864[263] = @"PMS_SRAM_RUNMAX";
    v336 = [MEMORY[0x277D3F198] sharedInstance];
    v335 = [v336 commonTypeDict_RealFormat];
    v865[263] = v335;
    v864[264] = @"PWM0_CLKOFF";
    v334 = [MEMORY[0x277D3F198] sharedInstance];
    v333 = [v334 commonTypeDict_RealFormat];
    v865[264] = v333;
    v864[265] = @"RMX_CLKOFF";
    v332 = [MEMORY[0x277D3F198] sharedInstance];
    v331 = [v332 commonTypeDict_RealFormat];
    v865[265] = v331;
    v864[266] = @"RMX_RUNMAX";
    v330 = [MEMORY[0x277D3F198] sharedInstance];
    v329 = [v330 commonTypeDict_RealFormat];
    v865[266] = v329;
    v864[267] = @"SBR_CLKOFF";
    v328 = [MEMORY[0x277D3F198] sharedInstance];
    v327 = [v328 commonTypeDict_RealFormat];
    v865[267] = v327;
    v864[268] = @"SBR_RUNMAX";
    v326 = [MEMORY[0x277D3F198] sharedInstance];
    v325 = [v326 commonTypeDict_RealFormat];
    v865[268] = v325;
    v864[269] = @"SEP-PEARL-V_CLKOFF";
    v324 = [MEMORY[0x277D3F198] sharedInstance];
    v323 = [v324 commonTypeDict_RealFormat];
    v865[269] = v323;
    v864[270] = @"SEP-PEARL-V_RUNMAX";
    v322 = [MEMORY[0x277D3F198] sharedInstance];
    v321 = [v322 commonTypeDict_RealFormat];
    v865[270] = v321;
    v864[271] = @"SEP_CLKOFF";
    v320 = [MEMORY[0x277D3F198] sharedInstance];
    v319 = [v320 commonTypeDict_RealFormat];
    v865[271] = v319;
    v864[272] = @"SIO-CPU-V_CLKOFF";
    v318 = [MEMORY[0x277D3F198] sharedInstance];
    v317 = [v318 commonTypeDict_RealFormat];
    v865[272] = v317;
    v864[273] = @"SIO-CPU-V_RUNMAX";
    v316 = [MEMORY[0x277D3F198] sharedInstance];
    v315 = [v316 commonTypeDict_RealFormat];
    v865[273] = v315;
    v864[274] = @"SIO-DART_CLKOFF";
    v314 = [MEMORY[0x277D3F198] sharedInstance];
    v313 = [v314 commonTypeDict_RealFormat];
    v865[274] = v313;
    v864[275] = @"SIO-DART_RUNMAX";
    v312 = [MEMORY[0x277D3F198] sharedInstance];
    v311 = [v312 commonTypeDict_RealFormat];
    v865[275] = v311;
    v864[276] = @"SIO_BUSIF_CLKOFF";
    v310 = [MEMORY[0x277D3F198] sharedInstance];
    v309 = [v310 commonTypeDict_RealFormat];
    v865[276] = v309;
    v864[277] = @"SIO_BUSIF_RUNMAX";
    v308 = [MEMORY[0x277D3F198] sharedInstance];
    v307 = [v308 commonTypeDict_RealFormat];
    v865[277] = v307;
    v864[278] = @"SIO_CLKOFF";
    v306 = [MEMORY[0x277D3F198] sharedInstance];
    v305 = [v306 commonTypeDict_RealFormat];
    v865[278] = v305;
    v864[279] = @"SIO_CPU_CLKOFF";
    v304 = [MEMORY[0x277D3F198] sharedInstance];
    v303 = [v304 commonTypeDict_RealFormat];
    v865[279] = v303;
    v864[280] = @"SIO_CPU_RUNMAX";
    v302 = [MEMORY[0x277D3F198] sharedInstance];
    v301 = [v302 commonTypeDict_RealFormat];
    v865[280] = v301;
    v864[281] = @"SIO_LEAP_CLKOFF";
    v300 = [MEMORY[0x277D3F198] sharedInstance];
    v299 = [v300 commonTypeDict_RealFormat];
    v865[281] = v299;
    v864[282] = @"SIO_LEAP_RUNMAX";
    v298 = [MEMORY[0x277D3F198] sharedInstance];
    v297 = [v298 commonTypeDict_RealFormat];
    v865[282] = v297;
    v864[283] = @"SMC-I2CM1_CLKOFF";
    v296 = [MEMORY[0x277D3F198] sharedInstance];
    v295 = [v296 commonTypeDict_RealFormat];
    v865[283] = v295;
    v864[284] = @"SMC-I2CM1_RUNMAX";
    v294 = [MEMORY[0x277D3F198] sharedInstance];
    v293 = [v294 commonTypeDict_RealFormat];
    v865[284] = v293;
    v864[285] = @"SMX_CLKOFF";
    v292 = [MEMORY[0x277D3F198] sharedInstance];
    v291 = [v292 commonTypeDict_RealFormat];
    v865[285] = v291;
    v864[286] = @"SPI0_CLKOFF";
    v290 = [MEMORY[0x277D3F198] sharedInstance];
    v289 = [v290 commonTypeDict_RealFormat];
    v865[286] = v289;
    v864[287] = @"SPI1_CLKOFF";
    v288 = [MEMORY[0x277D3F198] sharedInstance];
    v287 = [v288 commonTypeDict_RealFormat];
    v865[287] = v287;
    v864[288] = @"SPI2_CLKOFF";
    v286 = [MEMORY[0x277D3F198] sharedInstance];
    v285 = [v286 commonTypeDict_RealFormat];
    v865[288] = v285;
    v864[289] = @"SPI3_CLKOFF";
    v284 = [MEMORY[0x277D3F198] sharedInstance];
    v283 = [v284 commonTypeDict_RealFormat];
    v865[289] = v283;
    v864[290] = @"SPI_P_CLKOFF";
    v282 = [MEMORY[0x277D3F198] sharedInstance];
    v281 = [v282 commonTypeDict_RealFormat];
    v865[290] = v281;
    v864[291] = @"SPI_P_RUNMAX";
    v280 = [MEMORY[0x277D3F198] sharedInstance];
    v279 = [v280 commonTypeDict_RealFormat];
    v865[291] = v279;
    v864[292] = @"SPMI_CLKOFF";
    v278 = [MEMORY[0x277D3F198] sharedInstance];
    v277 = [v278 commonTypeDict_RealFormat];
    v865[292] = v277;
    v864[293] = @"SPMI_RUNMAX";
    v276 = [MEMORY[0x277D3F198] sharedInstance];
    v275 = [v276 commonTypeDict_RealFormat];
    v865[293] = v275;
    v864[294] = @"SPMI_SOC0_CLKOFF";
    v274 = [MEMORY[0x277D3F198] sharedInstance];
    v273 = [v274 commonTypeDict_RealFormat];
    v865[294] = v273;
    v864[295] = @"SPMI_SOC0_RUNMAX";
    v272 = [MEMORY[0x277D3F198] sharedInstance];
    v271 = [v272 commonTypeDict_RealFormat];
    v865[295] = v271;
    v864[296] = @"SPMI_SOC1_CLKOFF";
    v270 = [MEMORY[0x277D3F198] sharedInstance];
    v269 = [v270 commonTypeDict_RealFormat];
    v865[296] = v269;
    v864[297] = @"SPMI_SOC1_RUNMAX";
    v268 = [MEMORY[0x277D3F198] sharedInstance];
    v267 = [v268 commonTypeDict_RealFormat];
    v865[297] = v267;
    v864[298] = @"SPMI_SOC2_CLKOFF";
    v266 = [MEMORY[0x277D3F198] sharedInstance];
    v265 = [v266 commonTypeDict_RealFormat];
    v865[298] = v265;
    v864[299] = @"SPMI_SOC2_RUNMAX";
    v264 = [MEMORY[0x277D3F198] sharedInstance];
    v263 = [v264 commonTypeDict_RealFormat];
    v865[299] = v263;
    v864[300] = @"UART0_CLKOFF";
    v262 = [MEMORY[0x277D3F198] sharedInstance];
    v261 = [v262 commonTypeDict_RealFormat];
    v865[300] = v261;
    v864[301] = @"UART1_CLKOFF";
    v260 = [MEMORY[0x277D3F198] sharedInstance];
    v259 = [v260 commonTypeDict_RealFormat];
    v865[301] = v259;
    v864[302] = @"UART2_CLKOFF";
    v258 = [MEMORY[0x277D3F198] sharedInstance];
    v257 = [v258 commonTypeDict_RealFormat];
    v865[302] = v257;
    v864[303] = @"UART3_CLKOFF";
    v256 = [MEMORY[0x277D3F198] sharedInstance];
    v255 = [v256 commonTypeDict_RealFormat];
    v865[303] = v255;
    v864[304] = @"UART4_CLKOFF";
    v254 = [MEMORY[0x277D3F198] sharedInstance];
    v253 = [v254 commonTypeDict_RealFormat];
    v865[304] = v253;
    v864[305] = @"UART5_CLKOFF";
    v252 = [MEMORY[0x277D3F198] sharedInstance];
    v251 = [v252 commonTypeDict_RealFormat];
    v865[305] = v251;
    v864[306] = @"UART6_CLKOFF";
    v250 = [MEMORY[0x277D3F198] sharedInstance];
    v249 = [v250 commonTypeDict_RealFormat];
    v865[306] = v249;
    v864[307] = @"UART7_CLKOFF";
    v248 = [MEMORY[0x277D3F198] sharedInstance];
    v247 = [v248 commonTypeDict_RealFormat];
    v865[307] = v247;
    v864[308] = @"UART7_RUNMAX";
    v246 = [MEMORY[0x277D3F198] sharedInstance];
    v245 = [v246 commonTypeDict_RealFormat];
    v865[308] = v245;
    v864[309] = @"UART8_CLKOFF";
    v244 = [MEMORY[0x277D3F198] sharedInstance];
    v243 = [v244 commonTypeDict_RealFormat];
    v865[309] = v243;
    v864[310] = @"UART8_RUNMAX";
    v242 = [MEMORY[0x277D3F198] sharedInstance];
    v241 = [v242 commonTypeDict_RealFormat];
    v865[310] = v241;
    v864[311] = @"UART_N_CLKOFF";
    v240 = [MEMORY[0x277D3F198] sharedInstance];
    v239 = [v240 commonTypeDict_RealFormat];
    v865[311] = v239;
    v864[312] = @"UART_N_RUNMAX";
    v238 = [MEMORY[0x277D3F198] sharedInstance];
    v237 = [v238 commonTypeDict_RealFormat];
    v865[312] = v237;
    v864[313] = @"UART_P_CLKOFF";
    v236 = [MEMORY[0x277D3F198] sharedInstance];
    v235 = [v236 commonTypeDict_RealFormat];
    v865[313] = v235;
    v864[314] = @"UART_P_RUNMAX";
    v234 = [MEMORY[0x277D3F198] sharedInstance];
    v233 = [v234 commonTypeDict_RealFormat];
    v865[314] = v233;
    v864[315] = @"USB-AUDIO-V_CLKOFF";
    v232 = [MEMORY[0x277D3F198] sharedInstance];
    v231 = [v232 commonTypeDict_RealFormat];
    v865[315] = v231;
    v864[316] = @"USB-AUDIO-V_RUNMAX";
    v230 = [MEMORY[0x277D3F198] sharedInstance];
    v229 = [v230 commonTypeDict_RealFormat];
    v865[316] = v229;
    v864[317] = @"USB-DART_CLKOFF";
    v228 = [MEMORY[0x277D3F198] sharedInstance];
    v227 = [v228 commonTypeDict_RealFormat];
    v865[317] = v227;
    v864[318] = @"USB-DART_RUNMAX";
    v226 = [MEMORY[0x277D3F198] sharedInstance];
    v225 = [v226 commonTypeDict_RealFormat];
    v865[318] = v225;
    v864[319] = @"USB2DEV_CLKOFF";
    v224 = [MEMORY[0x277D3F198] sharedInstance];
    v223 = [v224 commonTypeDict_RealFormat];
    v865[319] = v223;
    v864[320] = @"USB2DEV_RUNMAX";
    v222 = [MEMORY[0x277D3F198] sharedInstance];
    v221 = [v222 commonTypeDict_RealFormat];
    v865[320] = v221;
    v864[321] = @"USB2HOST0_CLKOFF";
    v220 = [MEMORY[0x277D3F198] sharedInstance];
    v219 = [v220 commonTypeDict_RealFormat];
    v865[321] = v219;
    v864[322] = @"USBCTLREG_CLKOFF";
    v218 = [MEMORY[0x277D3F198] sharedInstance];
    v217 = [v218 commonTypeDict_RealFormat];
    v865[322] = v217;
    v864[323] = @"USBCTLREG_RUNMAX";
    v216 = [MEMORY[0x277D3F198] sharedInstance];
    v215 = [v216 commonTypeDict_RealFormat];
    v865[323] = v215;
    v864[324] = @"USB_CLKOFF";
    v214 = [MEMORY[0x277D3F198] sharedInstance];
    v213 = [v214 commonTypeDict_RealFormat];
    v865[324] = v213;
    v864[325] = @"VDEC-SOC-VNOM_CLKOFF";
    v212 = [MEMORY[0x277D3F198] sharedInstance];
    v211 = [v212 commonTypeDict_RealFormat];
    v865[325] = v211;
    v864[326] = @"VDEC-SOC-VNOM_RUNMAX";
    v210 = [MEMORY[0x277D3F198] sharedInstance];
    v209 = [v210 commonTypeDict_RealFormat];
    v865[326] = v209;
    v864[327] = @"VENC-DART_CLKOFF";
    v208 = [MEMORY[0x277D3F198] sharedInstance];
    v207 = [v208 commonTypeDict_RealFormat];
    v865[327] = v207;
    v864[328] = @"VENC-DART_RUNMAX";
    v206 = [MEMORY[0x277D3F198] sharedInstance];
    v205 = [v206 commonTypeDict_RealFormat];
    v865[328] = v205;
    v864[329] = @"VENC-DUMMY_CLKOFF";
    v204 = [MEMORY[0x277D3F198] sharedInstance];
    v203 = [v204 commonTypeDict_RealFormat];
    v865[329] = v203;
    v864[330] = @"VENC-DUMMY_RUNMAX";
    v202 = [MEMORY[0x277D3F198] sharedInstance];
    v201 = [v202 commonTypeDict_RealFormat];
    v865[330] = v201;
    v864[331] = @"VENC-SOC-VMAX_CLKOFF";
    v200 = [MEMORY[0x277D3F198] sharedInstance];
    v199 = [v200 commonTypeDict_RealFormat];
    v865[331] = v199;
    v864[332] = @"VENC-SOC-VMAX_RUNMAX";
    v198 = [MEMORY[0x277D3F198] sharedInstance];
    v197 = [v198 commonTypeDict_RealFormat];
    v865[332] = v197;
    v864[333] = @"VENC-SOC-VNOM_CLKOFF";
    v196 = [MEMORY[0x277D3F198] sharedInstance];
    v195 = [v196 commonTypeDict_RealFormat];
    v865[333] = v195;
    v864[334] = @"VENC-SOC-VNOM_RUNMAX";
    v194 = [MEMORY[0x277D3F198] sharedInstance];
    v193 = [v194 commonTypeDict_RealFormat];
    v865[334] = v193;
    v864[335] = @"VENC_DMA_CLKOFF";
    v192 = [MEMORY[0x277D3F198] sharedInstance];
    v191 = [v192 commonTypeDict_RealFormat];
    v865[335] = v191;
    v864[336] = @"VENC_DMA_RUNMAX";
    v190 = [MEMORY[0x277D3F198] sharedInstance];
    v189 = [v190 commonTypeDict_RealFormat];
    v865[336] = v189;
    v864[337] = @"VENC_ME0_CLKOFF";
    v188 = [MEMORY[0x277D3F198] sharedInstance];
    v187 = [v188 commonTypeDict_RealFormat];
    v865[337] = v187;
    v864[338] = @"VENC_ME0_RUNMAX";
    v186 = [MEMORY[0x277D3F198] sharedInstance];
    v185 = [v186 commonTypeDict_RealFormat];
    v865[338] = v185;
    v864[339] = @"VENC_ME1_CLKOFF";
    v184 = [MEMORY[0x277D3F198] sharedInstance];
    v183 = [v184 commonTypeDict_RealFormat];
    v865[339] = v183;
    v864[340] = @"VENC_ME1_RUNMAX";
    v182 = [MEMORY[0x277D3F198] sharedInstance];
    v181 = [v182 commonTypeDict_RealFormat];
    v865[340] = v181;
    v864[341] = @"VENC_PIPE4_CLKOFF";
    v180 = [MEMORY[0x277D3F198] sharedInstance];
    v179 = [v180 commonTypeDict_RealFormat];
    v865[341] = v179;
    v864[342] = @"VENC_PIPE4_RUNMAX";
    v178 = [MEMORY[0x277D3F198] sharedInstance];
    v177 = [v178 commonTypeDict_RealFormat];
    v865[342] = v177;
    v864[343] = @"VENC_PIPE5_CLKOFF";
    v176 = [MEMORY[0x277D3F198] sharedInstance];
    v175 = [v176 commonTypeDict_RealFormat];
    v865[343] = v175;
    v864[344] = @"VENC_PIPE5_RUNMAX";
    v174 = [MEMORY[0x277D3F198] sharedInstance];
    v173 = [v174 commonTypeDict_RealFormat];
    v865[344] = v173;
    v864[345] = @"VENC_SYS_CLKOFF";
    v172 = [MEMORY[0x277D3F198] sharedInstance];
    v171 = [v172 commonTypeDict_RealFormat];
    v865[345] = v171;
    v864[346] = @"ANS2-V_CLKOFF";
    v170 = [MEMORY[0x277D3F198] sharedInstance];
    v169 = [v170 commonTypeDict_RealFormat];
    v865[346] = v169;
    v864[347] = @"ANS2-V_RUNMAX";
    v168 = [MEMORY[0x277D3F198] sharedInstance];
    v167 = [v168 commonTypeDict_RealFormat];
    v865[347] = v167;
    v864[348] = @"AOP_I2CM0_CLKOFF";
    v166 = [MEMORY[0x277D3F198] sharedInstance];
    v165 = [v166 commonTypeDict_RealFormat];
    v865[348] = v165;
    v864[349] = @"AOP_I2CM0_RUNMAX";
    v164 = [MEMORY[0x277D3F198] sharedInstance];
    v163 = [v164 commonTypeDict_RealFormat];
    v865[349] = v163;
    v864[350] = @"AOP_I2CM1_CLKOFF";
    v162 = [MEMORY[0x277D3F198] sharedInstance];
    v161 = [v162 commonTypeDict_RealFormat];
    v865[350] = v161;
    v864[351] = @"AOP_I2CM1_RUNMAX";
    v160 = [MEMORY[0x277D3F198] sharedInstance];
    v159 = [v160 commonTypeDict_RealFormat];
    v865[351] = v159;
    v864[352] = @"C0-USB-DART_CLKOFF";
    v158 = [MEMORY[0x277D3F198] sharedInstance];
    v157 = [v158 commonTypeDict_RealFormat];
    v865[352] = v157;
    v864[353] = @"C0-USB-DART_RUNMAX";
    v156 = [MEMORY[0x277D3F198] sharedInstance];
    v155 = [v156 commonTypeDict_RealFormat];
    v865[353] = v155;
    v864[354] = @"C0-USBCTL-V_CLKOFF";
    v154 = [MEMORY[0x277D3F198] sharedInstance];
    v153 = [v154 commonTypeDict_RealFormat];
    v865[354] = v153;
    v864[355] = @"C0-USBCTL-V_RUNMAX";
    v152 = [MEMORY[0x277D3F198] sharedInstance];
    v151 = [v152 commonTypeDict_RealFormat];
    v865[355] = v151;
    v864[356] = @"C0_USB2DEV_CLKOFF";
    v150 = [MEMORY[0x277D3F198] sharedInstance];
    v149 = [v150 commonTypeDict_RealFormat];
    v865[356] = v149;
    v864[357] = @"C0_USB2DEV_RUNMAX";
    v148 = [MEMORY[0x277D3F198] sharedInstance];
    v147 = [v148 commonTypeDict_RealFormat];
    v865[357] = v147;
    v864[358] = @"C0_USB2HOST_CLKOFF";
    v146 = [MEMORY[0x277D3F198] sharedInstance];
    v145 = [v146 commonTypeDict_RealFormat];
    v865[358] = v145;
    v864[359] = @"C0_USB2HOST_RUNMAX";
    v144 = [MEMORY[0x277D3F198] sharedInstance];
    v143 = [v144 commonTypeDict_RealFormat];
    v865[359] = v143;
    v864[360] = @"C0_USB31DRD_CLKOFF";
    v142 = [MEMORY[0x277D3F198] sharedInstance];
    v141 = [v142 commonTypeDict_RealFormat];
    v865[360] = v141;
    v864[361] = @"C0_USB31DRD_RUNMAX";
    v140 = [MEMORY[0x277D3F198] sharedInstance];
    v139 = [v140 commonTypeDict_RealFormat];
    v865[361] = v139;
    v864[362] = @"C0_USBCTL_CLKOFF";
    v138 = [MEMORY[0x277D3F198] sharedInstance];
    v137 = [v138 commonTypeDict_RealFormat];
    v865[362] = v137;
    v864[363] = @"C0_USBCTL_RUNMAX";
    v136 = [MEMORY[0x277D3F198] sharedInstance];
    v135 = [v136 commonTypeDict_RealFormat];
    v865[363] = v135;
    v864[364] = @"C1-USB-DART_CLKOFF";
    v134 = [MEMORY[0x277D3F198] sharedInstance];
    v133 = [v134 commonTypeDict_RealFormat];
    v865[364] = v133;
    v864[365] = @"C1-USB-DART_RUNMAX";
    v132 = [MEMORY[0x277D3F198] sharedInstance];
    v131 = [v132 commonTypeDict_RealFormat];
    v865[365] = v131;
    v864[366] = @"C1-USBCTL-V_CLKOFF";
    v130 = [MEMORY[0x277D3F198] sharedInstance];
    v129 = [v130 commonTypeDict_RealFormat];
    v865[366] = v129;
    v864[367] = @"C1-USBCTL-V_RUNMAX";
    v128 = [MEMORY[0x277D3F198] sharedInstance];
    v127 = [v128 commonTypeDict_RealFormat];
    v865[367] = v127;
    v864[368] = @"C1_USB2DEV_CLKOFF";
    v126 = [MEMORY[0x277D3F198] sharedInstance];
    v125 = [v126 commonTypeDict_RealFormat];
    v865[368] = v125;
    v864[369] = @"C1_USB2DEV_RUNMAX";
    v124 = [MEMORY[0x277D3F198] sharedInstance];
    v123 = [v124 commonTypeDict_RealFormat];
    v865[369] = v123;
    v864[370] = @"C1_USB2HOST_CLKOFF";
    v122 = [MEMORY[0x277D3F198] sharedInstance];
    v121 = [v122 commonTypeDict_RealFormat];
    v865[370] = v121;
    v864[371] = @"C1_USB2HOST_RUNMAX";
    v120 = [MEMORY[0x277D3F198] sharedInstance];
    v119 = [v120 commonTypeDict_RealFormat];
    v865[371] = v119;
    v864[372] = @"C1_USB31DRD_CLKOFF";
    v118 = [MEMORY[0x277D3F198] sharedInstance];
    v117 = [v118 commonTypeDict_RealFormat];
    v865[372] = v117;
    v864[373] = @"C1_USB31DRD_RUNMAX";
    v116 = [MEMORY[0x277D3F198] sharedInstance];
    v115 = [v116 commonTypeDict_RealFormat];
    v865[373] = v115;
    v864[374] = @"C1_USBCTL_CLKOFF";
    v114 = [MEMORY[0x277D3F198] sharedInstance];
    v113 = [v114 commonTypeDict_RealFormat];
    v865[374] = v113;
    v864[375] = @"C1_USBCTL_RUNMAX";
    v112 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v112 commonTypeDict_RealFormat];
    v865[375] = v111;
    v864[376] = @"DCS4_CLKOFF";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v109 = [v110 commonTypeDict_RealFormat];
    v865[376] = v109;
    v864[377] = @"DCS4_RUNMAX";
    v108 = [MEMORY[0x277D3F198] sharedInstance];
    v107 = [v108 commonTypeDict_RealFormat];
    v865[377] = v107;
    v864[378] = @"DCS5_CLKOFF";
    v106 = [MEMORY[0x277D3F198] sharedInstance];
    v105 = [v106 commonTypeDict_RealFormat];
    v865[378] = v105;
    v864[379] = @"DCS5_RUNMAX";
    v104 = [MEMORY[0x277D3F198] sharedInstance];
    v103 = [v104 commonTypeDict_RealFormat];
    v865[379] = v103;
    v864[380] = @"DCS6_CLKOFF";
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v101 = [v102 commonTypeDict_RealFormat];
    v865[380] = v101;
    v864[381] = @"DCS6_RUNMAX";
    v100 = [MEMORY[0x277D3F198] sharedInstance];
    v99 = [v100 commonTypeDict_RealFormat];
    v865[381] = v99;
    v864[382] = @"DCS7_CLKOFF";
    v98 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v98 commonTypeDict_RealFormat];
    v865[382] = v97;
    v864[383] = @"DCS7_RUNMAX";
    v96 = [MEMORY[0x277D3F198] sharedInstance];
    v95 = [v96 commonTypeDict_RealFormat];
    v865[383] = v95;
    v864[384] = @"DISPEXT-DART_CLKOFF";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v93 = [v94 commonTypeDict_RealFormat];
    v865[384] = v93;
    v864[385] = @"DISPEXT-DART_RUNMAX";
    v92 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v92 commonTypeDict_RealFormat];
    v865[385] = v91;
    v864[386] = @"DISPEXT-V_CLKOFF";
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v90 commonTypeDict_RealFormat];
    v865[386] = v89;
    v864[387] = @"DISPEXT-V_RUNMAX";
    v88 = [MEMORY[0x277D3F198] sharedInstance];
    v87 = [v88 commonTypeDict_RealFormat];
    v865[387] = v87;
    v864[388] = @"DISPEXT_BE_CLKOFF";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v85 = [v86 commonTypeDict_RealFormat];
    v865[388] = v85;
    v864[389] = @"DISPEXT_BE_RUNMAX";
    v84 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v84 commonTypeDict_RealFormat];
    v865[389] = v83;
    v864[390] = @"DISPEXT_DSC_CLKOFF";
    v82 = [MEMORY[0x277D3F198] sharedInstance];
    v81 = [v82 commonTypeDict_RealFormat];
    v865[390] = v81;
    v864[391] = @"DISPEXT_DSC_RUNMAX";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v79 = [v80 commonTypeDict_RealFormat];
    v865[391] = v79;
    v864[392] = @"DISPEXT_FE_CLKOFF";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v78 commonTypeDict_RealFormat];
    v865[392] = v77;
    v864[393] = @"DISPEXT_FE_RUNMAX";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v75 = [v76 commonTypeDict_RealFormat];
    v865[393] = v75;
    v864[394] = @"DISPEXT_GP0_CLKOFF";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_RealFormat];
    v865[394] = v73;
    v864[395] = @"DISPEXT_GP0_RUNMAX";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_RealFormat];
    v865[395] = v71;
    v864[396] = @"DISPEXT_GP1_CLKOFF";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_RealFormat];
    v865[396] = v69;
    v864[397] = @"DISPEXT_GP1_RUNMAX";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_RealFormat];
    v865[397] = v67;
    v864[398] = @"DISPEXT_PPP_CLKOFF";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_RealFormat];
    v865[398] = v65;
    v864[399] = @"DISPEXT_PPP_RUNMAX";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_RealFormat];
    v865[399] = v63;
    v864[400] = @"DPA0_CLKOFF";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_RealFormat];
    v865[400] = v61;
    v864[401] = @"DPA0_RUNMAX";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_RealFormat];
    v865[401] = v59;
    v864[402] = @"DPA1_CLKOFF";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_RealFormat];
    v865[402] = v57;
    v864[403] = @"DPA1_RUNMAX";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_RealFormat];
    v865[403] = v55;
    v864[404] = @"DP_EXT_CLKOFF";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_RealFormat];
    v865[404] = v53;
    v864[405] = @"DP_EXT_RUNMAX";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_RealFormat];
    v865[405] = v51;
    v864[406] = @"I2C4_CLKOFF";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_RealFormat];
    v865[406] = v49;
    v864[407] = @"I2C4_RUNMAX";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_RealFormat];
    v865[407] = v47;
    v864[408] = @"PCPU2_CLKOFF";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_RealFormat];
    v865[408] = v45;
    v864[409] = @"PCPU2_RUNMAX";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_RealFormat];
    v865[409] = v43;
    v864[410] = @"PCPU3_CLKOFF";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_RealFormat];
    v865[410] = v41;
    v864[411] = @"PCPU3_RUNMAX";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_RealFormat];
    v865[411] = v39;
    v864[412] = @"SIO-CPU-AUDIO_CLKOFF";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_RealFormat];
    v865[412] = v37;
    v864[413] = @"SIO-CPU-AUDIO_RUNMAX";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_RealFormat];
    v865[413] = v35;
    v864[414] = @"SMC_I2CM0_CLKOFF";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_RealFormat];
    v865[414] = v33;
    v864[415] = @"SMC_I2CM0_RUNMAX";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_RealFormat];
    v865[415] = v31;
    v864[416] = @"SMC_I2CM1_CLKOFF";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat];
    v865[416] = v29;
    v864[417] = @"SMC_I2CM1_RUNMAX";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_RealFormat];
    v865[417] = v27;
    v864[418] = @"SMC_I2CM2_CLKOFF";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_RealFormat];
    v865[418] = v25;
    v864[419] = @"SMC_I2CM2_RUNMAX";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_RealFormat];
    v865[419] = v23;
    v864[420] = @"SMC_I2CM3_CLKOFF";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_RealFormat];
    v865[420] = v21;
    v864[421] = @"SMC_I2CM3_RUNMAX";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_RealFormat];
    v865[421] = v19;
    v864[422] = @"SMC_I2CM4_CLKOFF";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat];
    v865[422] = v17;
    v864[423] = @"SMC_I2CM4_RUNMAX";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_RealFormat];
    v865[423] = v15;
    v864[424] = @"SPI4_CLKOFF";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v865[424] = v4;
    v864[425] = @"SPI4_RUNMAX";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v865[425] = v6;
    v864[426] = @"VENC-SYS-V_CLKOFF";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v865[426] = v8;
    v864[427] = @"VENC-SYS-V_RUNMAX";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat];
    v865[427] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v865 forKeys:v864 count:428];
    v869[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v869 forKeys:v868 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionSoCStatsEventsRaw
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v16[0] = *MEMORY[0x277D3F568];
    v16[1] = v2;
    v17[0] = &unk_282C1C038;
    v17[1] = @"logSOCHOT0Snapshot";
    v16[2] = *MEMORY[0x277D3F4F8];
    v17[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v19[0] = v3;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"SOCHOT0_ACT";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v15[0] = v5;
    v14[1] = @"SOCHOT0_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v15[1] = v7;
    v14[2] = @"DROOP_N";
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

+ (BOOL)shouldLogSleepMedia
{
  if (qword_2811F4780 != -1)
  {
    dispatch_once(&qword_2811F4780, &__block_literal_global_3047);
  }

  return _MergedGlobals_1_25;
}

uint64_t __38__PLIOReportAgent_shouldLogSleepMedia__block_invoke()
{
  result = [MEMORY[0x277D3F208] hasSleepMedia];
  if (result)
  {
    result = [MEMORY[0x277D3F208] isWatch];
  }

  _MergedGlobals_1_25 = result;
  return result;
}

+ (id)entryEventBackwardDefinitionSoCStatsEvents
{
  v329[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats](PLIOReportAgent, "shouldLogSoCStats") && ([MEMORY[0x277D3F208] isWatch] & 1) == 0)
  {
    v328[0] = *MEMORY[0x277D3F4E8];
    v13 = *MEMORY[0x277D3F548];
    v326[0] = *MEMORY[0x277D3F568];
    v326[1] = v13;
    v327[0] = &unk_282C1C0A8;
    v327[1] = @"logEventBackwardIOReport";
    v14 = *MEMORY[0x277D3F580];
    v326[2] = *MEMORY[0x277D3F4F8];
    v326[3] = v14;
    v327[2] = MEMORY[0x277CBEC28];
    v327[3] = MEMORY[0x277CBEC38];
    v221 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v327 forKeys:v326 count:4];
    v329[0] = v221;
    v328[1] = *MEMORY[0x277D3F540];
    v324[0] = @"APWakeTime";
    v216 = [MEMORY[0x277D3F198] sharedInstance];
    v218 = [v216 commonTypeDict_RealFormat_withUnit_s];
    v325[0] = v218;
    v324[1] = @"ANE_ADCLK_TRIG_ACT";
    v211 = [MEMORY[0x277D3F198] sharedInstance];
    v214 = [v211 commonTypeDict_RealFormat];
    v325[1] = v214;
    v324[2] = @"ANE_ADCLK_TRIG_INACT";
    v210 = [MEMORY[0x277D3F198] sharedInstance];
    v208 = [v210 commonTypeDict_RealFormat];
    v325[2] = v208;
    v324[3] = @"ANE_ADCLK_TRIG_Transitions";
    v206 = [MEMORY[0x277D3F198] sharedInstance];
    v317 = [v206 commonTypeDict_IntegerFormat];
    v325[3] = v317;
    v324[4] = @"ANE_DITHR_TRIG_ACT";
    v205 = [MEMORY[0x277D3F198] sharedInstance];
    v316 = [v205 commonTypeDict_RealFormat];
    v325[4] = v316;
    v324[5] = @"ANE_DITHR_TRIG_INACT";
    v315 = [MEMORY[0x277D3F198] sharedInstance];
    v314 = [v315 commonTypeDict_RealFormat];
    v325[5] = v314;
    v324[6] = @"ANE_DITHR_TRIG_Transitions";
    v313 = [MEMORY[0x277D3F198] sharedInstance];
    v312 = [v313 commonTypeDict_IntegerFormat];
    v325[6] = v312;
    v324[7] = @"AWAKE_ACT";
    v311 = [MEMORY[0x277D3F198] sharedInstance];
    v310 = [v311 commonTypeDict_RealFormat];
    v325[7] = v310;
    v324[8] = @"AWAKE_INACT";
    v309 = [MEMORY[0x277D3F198] sharedInstance];
    v308 = [v309 commonTypeDict_RealFormat];
    v325[8] = v308;
    v324[9] = @"AWAKE_Transitions";
    v307 = [MEMORY[0x277D3F198] sharedInstance];
    v306 = [v307 commonTypeDict_IntegerFormat];
    v325[9] = v306;
    v324[10] = @"DCS_VMAX_ACT";
    v305 = [MEMORY[0x277D3F198] sharedInstance];
    v304 = [v305 commonTypeDict_RealFormat];
    v325[10] = v304;
    v324[11] = @"DCS_VMAX_INACT";
    v303 = [MEMORY[0x277D3F198] sharedInstance];
    v302 = [v303 commonTypeDict_RealFormat];
    v325[11] = v302;
    v324[12] = @"DCS_VMAX_Transitions";
    v301 = [MEMORY[0x277D3F198] sharedInstance];
    v300 = [v301 commonTypeDict_IntegerFormat];
    v325[12] = v300;
    v324[13] = @"DCS_VMIN_ACT";
    v299 = [MEMORY[0x277D3F198] sharedInstance];
    v298 = [v299 commonTypeDict_RealFormat];
    v325[13] = v298;
    v324[14] = @"DCS_VMIN_INACT";
    v297 = [MEMORY[0x277D3F198] sharedInstance];
    v296 = [v297 commonTypeDict_RealFormat];
    v325[14] = v296;
    v324[15] = @"DCS_VMIN_Transitions";
    v295 = [MEMORY[0x277D3F198] sharedInstance];
    v294 = [v295 commonTypeDict_IntegerFormat];
    v325[15] = v294;
    v324[16] = @"DCS_VNOM_ACT";
    v293 = [MEMORY[0x277D3F198] sharedInstance];
    v292 = [v293 commonTypeDict_RealFormat];
    v325[16] = v292;
    v324[17] = @"DCS_VNOM_INACT";
    v291 = [MEMORY[0x277D3F198] sharedInstance];
    v290 = [v291 commonTypeDict_RealFormat];
    v325[17] = v290;
    v324[18] = @"DCS_VNOM_Transitions";
    v289 = [MEMORY[0x277D3F198] sharedInstance];
    v288 = [v289 commonTypeDict_IntegerFormat];
    v325[18] = v288;
    v324[19] = @"DEEP_WAIT_ACT";
    v287 = [MEMORY[0x277D3F198] sharedInstance];
    v286 = [v287 commonTypeDict_RealFormat];
    v325[19] = v286;
    v324[20] = @"DEEP_WAIT_INACT";
    v285 = [MEMORY[0x277D3F198] sharedInstance];
    v284 = [v285 commonTypeDict_RealFormat];
    v325[20] = v284;
    v324[21] = @"DEEP_WAIT_Transitions";
    v283 = [MEMORY[0x277D3F198] sharedInstance];
    v282 = [v283 commonTypeDict_IntegerFormat];
    v325[21] = v282;
    v324[22] = @"ECPU_ADCLK_TRIG_ACT";
    v281 = [MEMORY[0x277D3F198] sharedInstance];
    v280 = [v281 commonTypeDict_RealFormat];
    v325[22] = v280;
    v324[23] = @"ECPU_ADCLK_TRIG_INACT";
    v279 = [MEMORY[0x277D3F198] sharedInstance];
    v278 = [v279 commonTypeDict_RealFormat];
    v325[23] = v278;
    v324[24] = @"ECPU_ADCLK_TRIG_Transitions";
    v277 = [MEMORY[0x277D3F198] sharedInstance];
    v276 = [v277 commonTypeDict_IntegerFormat];
    v325[24] = v276;
    v324[25] = @"ECPU_DITHR_TRIG_ACT";
    v275 = [MEMORY[0x277D3F198] sharedInstance];
    v274 = [v275 commonTypeDict_RealFormat];
    v325[25] = v274;
    v324[26] = @"ECPU_DITHR_TRIG_INACT";
    v273 = [MEMORY[0x277D3F198] sharedInstance];
    v272 = [v273 commonTypeDict_RealFormat];
    v325[26] = v272;
    v324[27] = @"ECPU_DITHR_TRIG_Transitions";
    v271 = [MEMORY[0x277D3F198] sharedInstance];
    v270 = [v271 commonTypeDict_IntegerFormat];
    v325[27] = v270;
    v324[28] = @"GPU_ADCLK_TRIG_ACT";
    v269 = [MEMORY[0x277D3F198] sharedInstance];
    v268 = [v269 commonTypeDict_RealFormat];
    v325[28] = v268;
    v324[29] = @"GPU_ADCLK_TRIG_INACT";
    v267 = [MEMORY[0x277D3F198] sharedInstance];
    v266 = [v267 commonTypeDict_RealFormat];
    v325[29] = v266;
    v324[30] = @"GPU_ADCLK_TRIG_Transitions";
    v265 = [MEMORY[0x277D3F198] sharedInstance];
    v264 = [v265 commonTypeDict_IntegerFormat];
    v325[30] = v264;
    v324[31] = @"GPU_DITHR_TRIG_ACT";
    v263 = [MEMORY[0x277D3F198] sharedInstance];
    v262 = [v263 commonTypeDict_RealFormat];
    v325[31] = v262;
    v324[32] = @"GPU_DITHR_TRIG_INACT";
    v261 = [MEMORY[0x277D3F198] sharedInstance];
    v260 = [v261 commonTypeDict_RealFormat];
    v325[32] = v260;
    v324[33] = @"GPU_DITHR_TRIG_Transitions";
    v259 = [MEMORY[0x277D3F198] sharedInstance];
    v258 = [v259 commonTypeDict_IntegerFormat];
    v325[33] = v258;
    v324[34] = @"GPU_DROOP_TRIG_ACT";
    v257 = [MEMORY[0x277D3F198] sharedInstance];
    v256 = [v257 commonTypeDict_RealFormat];
    v325[34] = v256;
    v324[35] = @"GPU_DROOP_TRIG_INACT";
    v255 = [MEMORY[0x277D3F198] sharedInstance];
    v254 = [v255 commonTypeDict_RealFormat];
    v325[35] = v254;
    v324[36] = @"GPU_DROOP_TRIG_Transitions";
    v253 = [MEMORY[0x277D3F198] sharedInstance];
    v252 = [v253 commonTypeDict_IntegerFormat];
    v325[36] = v252;
    v324[37] = @"GPU_ILIMIT_ACT";
    v251 = [MEMORY[0x277D3F198] sharedInstance];
    v250 = [v251 commonTypeDict_RealFormat];
    v325[37] = v250;
    v324[38] = @"GPU_ILIMIT_INACT";
    v249 = [MEMORY[0x277D3F198] sharedInstance];
    v248 = [v249 commonTypeDict_RealFormat];
    v325[38] = v248;
    v324[39] = @"GPU_ILIMIT_Transitions";
    v247 = [MEMORY[0x277D3F198] sharedInstance];
    v246 = [v247 commonTypeDict_IntegerFormat];
    v325[39] = v246;
    v324[40] = @"GPU_UVWARN_ACT";
    v245 = [MEMORY[0x277D3F198] sharedInstance];
    v244 = [v245 commonTypeDict_RealFormat];
    v325[40] = v244;
    v324[41] = @"GPU_UVWARN_INACT";
    v243 = [MEMORY[0x277D3F198] sharedInstance];
    v242 = [v243 commonTypeDict_RealFormat];
    v325[41] = v242;
    v324[42] = @"GPU_UVWARN_Transitions";
    v241 = [MEMORY[0x277D3F198] sharedInstance];
    v240 = [v241 commonTypeDict_IntegerFormat];
    v325[42] = v240;
    v324[43] = @"PCPU_ADCLK_TRIG_ACT";
    v239 = [MEMORY[0x277D3F198] sharedInstance];
    v238 = [v239 commonTypeDict_RealFormat];
    v325[43] = v238;
    v324[44] = @"PCPU_ADCLK_TRIG_INACT";
    v237 = [MEMORY[0x277D3F198] sharedInstance];
    v236 = [v237 commonTypeDict_RealFormat];
    v325[44] = v236;
    v324[45] = @"PCPU_ADCLK_TRIG_Transitions";
    v235 = [MEMORY[0x277D3F198] sharedInstance];
    v234 = [v235 commonTypeDict_IntegerFormat];
    v325[45] = v234;
    v324[46] = @"PCPU_DITHR_TRIG_ACT";
    v233 = [MEMORY[0x277D3F198] sharedInstance];
    v232 = [v233 commonTypeDict_RealFormat];
    v325[46] = v232;
    v324[47] = @"PCPU_DITHR_TRIG_INACT";
    v231 = [MEMORY[0x277D3F198] sharedInstance];
    v230 = [v231 commonTypeDict_RealFormat];
    v325[47] = v230;
    v324[48] = @"PCPU_DITHR_TRIG_Transitions";
    v229 = [MEMORY[0x277D3F198] sharedInstance];
    v228 = [v229 commonTypeDict_IntegerFormat];
    v325[48] = v228;
    v324[49] = @"PRE_UPO_ACT";
    v227 = [MEMORY[0x277D3F198] sharedInstance];
    v226 = [v227 commonTypeDict_RealFormat];
    v325[49] = v226;
    v324[50] = @"PRE_UPO_INACT";
    v225 = [MEMORY[0x277D3F198] sharedInstance];
    v224 = [v225 commonTypeDict_RealFormat];
    v325[50] = v224;
    v324[51] = @"PRE_UPO_Transitions";
    v223 = [MEMORY[0x277D3F198] sharedInstance];
    v222 = [v223 commonTypeDict_IntegerFormat];
    v325[51] = v222;
    v324[52] = @"PRE_UVLO_ACT";
    v220 = [MEMORY[0x277D3F198] sharedInstance];
    v219 = [v220 commonTypeDict_RealFormat];
    v325[52] = v219;
    v324[53] = @"PRE_UVLO_INACT";
    v217 = [MEMORY[0x277D3F198] sharedInstance];
    v215 = [v217 commonTypeDict_RealFormat];
    v325[53] = v215;
    v324[54] = @"PRE_UVLO_Transitions";
    v213 = [MEMORY[0x277D3F198] sharedInstance];
    v212 = [v213 commonTypeDict_IntegerFormat];
    v325[54] = v212;
    v324[55] = @"SLP_DDR_ACT";
    v209 = [MEMORY[0x277D3F198] sharedInstance];
    v207 = [v209 commonTypeDict_RealFormat];
    v325[55] = v207;
    v324[56] = @"SLP_DDR_INACT";
    v204 = [MEMORY[0x277D3F198] sharedInstance];
    v203 = [v204 commonTypeDict_RealFormat];
    v325[56] = v203;
    v324[57] = @"SLP_DDR_Transitions";
    v202 = [MEMORY[0x277D3F198] sharedInstance];
    v201 = [v202 commonTypeDict_IntegerFormat];
    v325[57] = v201;
    v324[58] = @"SLP_S2R_ACT";
    v200 = [MEMORY[0x277D3F198] sharedInstance];
    v199 = [v200 commonTypeDict_RealFormat];
    v325[58] = v199;
    v324[59] = @"SLP_S2R_INACT";
    v198 = [MEMORY[0x277D3F198] sharedInstance];
    v197 = [v198 commonTypeDict_RealFormat];
    v325[59] = v197;
    v324[60] = @"SLP_S2R_Transitions";
    v196 = [MEMORY[0x277D3F198] sharedInstance];
    v195 = [v196 commonTypeDict_IntegerFormat];
    v325[60] = v195;
    v324[61] = @"SOCHOT0_ACT";
    v194 = [MEMORY[0x277D3F198] sharedInstance];
    v193 = [v194 commonTypeDict_RealFormat];
    v325[61] = v193;
    v324[62] = @"SOCHOT0_INACT";
    v192 = [MEMORY[0x277D3F198] sharedInstance];
    v191 = [v192 commonTypeDict_RealFormat];
    v325[62] = v191;
    v324[63] = @"SOCHOT1_ACT";
    v190 = [MEMORY[0x277D3F198] sharedInstance];
    v189 = [v190 commonTypeDict_RealFormat];
    v325[63] = v189;
    v324[64] = @"SOCHOT1_INACT";
    v188 = [MEMORY[0x277D3F198] sharedInstance];
    v187 = [v188 commonTypeDict_RealFormat];
    v325[64] = v187;
    v324[65] = @"SOCHOT1_Transitions";
    v186 = [MEMORY[0x277D3F198] sharedInstance];
    v185 = [v186 commonTypeDict_IntegerFormat];
    v325[65] = v185;
    v324[66] = @"SOC_VMAX_ACT";
    v184 = [MEMORY[0x277D3F198] sharedInstance];
    v183 = [v184 commonTypeDict_RealFormat];
    v325[66] = v183;
    v324[67] = @"SOC_VMAX_INACT";
    v182 = [MEMORY[0x277D3F198] sharedInstance];
    v181 = [v182 commonTypeDict_RealFormat];
    v325[67] = v181;
    v324[68] = @"SOC_VMAX_Transitions";
    v180 = [MEMORY[0x277D3F198] sharedInstance];
    v179 = [v180 commonTypeDict_IntegerFormat];
    v325[68] = v179;
    v324[69] = @"SOC_VMIN_ACT";
    v178 = [MEMORY[0x277D3F198] sharedInstance];
    v177 = [v178 commonTypeDict_RealFormat];
    v325[69] = v177;
    v324[70] = @"SOC_VMIN_INACT";
    v176 = [MEMORY[0x277D3F198] sharedInstance];
    v175 = [v176 commonTypeDict_RealFormat];
    v325[70] = v175;
    v324[71] = @"SOC_VMIN_Transitions";
    v174 = [MEMORY[0x277D3F198] sharedInstance];
    v173 = [v174 commonTypeDict_IntegerFormat];
    v325[71] = v173;
    v324[72] = @"SOC_VNOM_ACT";
    v172 = [MEMORY[0x277D3F198] sharedInstance];
    v171 = [v172 commonTypeDict_RealFormat];
    v325[72] = v171;
    v324[73] = @"SOC_VNOM_INACT";
    v170 = [MEMORY[0x277D3F198] sharedInstance];
    v169 = [v170 commonTypeDict_RealFormat];
    v325[73] = v169;
    v324[74] = @"SOC_VNOM_Transitions";
    v168 = [MEMORY[0x277D3F198] sharedInstance];
    v167 = [v168 commonTypeDict_IntegerFormat];
    v325[74] = v167;
    v324[75] = @"ANE_DROOP_TRIG_ACT";
    v166 = [MEMORY[0x277D3F198] sharedInstance];
    v165 = [v166 commonTypeDict_RealFormat];
    v325[75] = v165;
    v324[76] = @"ANE_DROOP_TRIG_INACT";
    v164 = [MEMORY[0x277D3F198] sharedInstance];
    v163 = [v164 commonTypeDict_RealFormat];
    v325[76] = v163;
    v324[77] = @"ANE_DROOP_TRIG_Transitions";
    v162 = [MEMORY[0x277D3F198] sharedInstance];
    v161 = [v162 commonTypeDict_IntegerFormat];
    v325[77] = v161;
    v324[78] = @"ANE_UVWRN_TRIG_ACT";
    v160 = [MEMORY[0x277D3F198] sharedInstance];
    v159 = [v160 commonTypeDict_RealFormat];
    v325[78] = v159;
    v324[79] = @"ANE_UVWRN_TRIG_INACT";
    v158 = [MEMORY[0x277D3F198] sharedInstance];
    v157 = [v158 commonTypeDict_RealFormat];
    v325[79] = v157;
    v324[80] = @"ANE_UVWRN_TRIG_Transitions";
    v156 = [MEMORY[0x277D3F198] sharedInstance];
    v155 = [v156 commonTypeDict_IntegerFormat];
    v325[80] = v155;
    v324[81] = @"DCS_VMID_ACT";
    v154 = [MEMORY[0x277D3F198] sharedInstance];
    v153 = [v154 commonTypeDict_RealFormat];
    v325[81] = v153;
    v324[82] = @"DCS_VMID_INACT";
    v152 = [MEMORY[0x277D3F198] sharedInstance];
    v151 = [v152 commonTypeDict_RealFormat];
    v325[82] = v151;
    v324[83] = @"DCS_VMID_Transitions";
    v150 = [MEMORY[0x277D3F198] sharedInstance];
    v149 = [v150 commonTypeDict_IntegerFormat];
    v325[83] = v149;
    v324[84] = @"ECPU_DROOP_TRIG_ACT";
    v148 = [MEMORY[0x277D3F198] sharedInstance];
    v147 = [v148 commonTypeDict_RealFormat];
    v325[84] = v147;
    v324[85] = @"ECPU_DROOP_TRIG_INACT";
    v146 = [MEMORY[0x277D3F198] sharedInstance];
    v145 = [v146 commonTypeDict_RealFormat];
    v325[85] = v145;
    v324[86] = @"ECPU_DROOP_TRIG_Transitions";
    v144 = [MEMORY[0x277D3F198] sharedInstance];
    v143 = [v144 commonTypeDict_IntegerFormat];
    v325[86] = v143;
    v324[87] = @"ECPU_UVWRN_TRIG_ACT";
    v142 = [MEMORY[0x277D3F198] sharedInstance];
    v141 = [v142 commonTypeDict_RealFormat];
    v325[87] = v141;
    v324[88] = @"ECPU_UVWRN_TRIG_INACT";
    v140 = [MEMORY[0x277D3F198] sharedInstance];
    v139 = [v140 commonTypeDict_RealFormat];
    v325[88] = v139;
    v324[89] = @"ECPU_UVWRN_TRIG_Transitions";
    v138 = [MEMORY[0x277D3F198] sharedInstance];
    v137 = [v138 commonTypeDict_IntegerFormat];
    v325[89] = v137;
    v324[90] = @"GPU_ILIMIT_TRIG_ACT";
    v136 = [MEMORY[0x277D3F198] sharedInstance];
    v135 = [v136 commonTypeDict_RealFormat];
    v325[90] = v135;
    v324[91] = @"GPU_ILIMIT_TRIG_INACT";
    v134 = [MEMORY[0x277D3F198] sharedInstance];
    v133 = [v134 commonTypeDict_RealFormat];
    v325[91] = v133;
    v324[92] = @"GPU_ILIMIT_TRIG_Transitions";
    v132 = [MEMORY[0x277D3F198] sharedInstance];
    v131 = [v132 commonTypeDict_IntegerFormat];
    v325[92] = v131;
    v324[93] = @"GPU_UVWRN_TRIG_ACT";
    v130 = [MEMORY[0x277D3F198] sharedInstance];
    v129 = [v130 commonTypeDict_RealFormat];
    v325[93] = v129;
    v324[94] = @"GPU_UVWRN_TRIG_INACT";
    v128 = [MEMORY[0x277D3F198] sharedInstance];
    v127 = [v128 commonTypeDict_RealFormat];
    v325[94] = v127;
    v324[95] = @"GPU_UVWRN_TRIG_Transitions";
    v126 = [MEMORY[0x277D3F198] sharedInstance];
    v125 = [v126 commonTypeDict_IntegerFormat];
    v325[95] = v125;
    v324[96] = @"PCPU_DROOP_TRIG_ACT";
    v124 = [MEMORY[0x277D3F198] sharedInstance];
    v123 = [v124 commonTypeDict_RealFormat];
    v325[96] = v123;
    v324[97] = @"PCPU_DROOP_TRIG_INACT";
    v122 = [MEMORY[0x277D3F198] sharedInstance];
    v121 = [v122 commonTypeDict_RealFormat];
    v325[97] = v121;
    v324[98] = @"PCPU_DROOP_TRIG_Transitions";
    v120 = [MEMORY[0x277D3F198] sharedInstance];
    v119 = [v120 commonTypeDict_IntegerFormat];
    v325[98] = v119;
    v324[99] = @"PCPU_UVWRN_TRIG_ACT";
    v118 = [MEMORY[0x277D3F198] sharedInstance];
    v117 = [v118 commonTypeDict_RealFormat];
    v325[99] = v117;
    v324[100] = @"PCPU_UVWRN_TRIG_INACT";
    v116 = [MEMORY[0x277D3F198] sharedInstance];
    v115 = [v116 commonTypeDict_RealFormat];
    v325[100] = v115;
    v324[101] = @"PCPU_UVWRN_TRIG_Transitions";
    v114 = [MEMORY[0x277D3F198] sharedInstance];
    v113 = [v114 commonTypeDict_IntegerFormat];
    v325[101] = v113;
    v324[102] = @"SOC_VMID_ACT";
    v112 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v112 commonTypeDict_RealFormat];
    v325[102] = v111;
    v324[103] = @"SOC_VMID_INACT";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v109 = [v110 commonTypeDict_RealFormat];
    v325[103] = v109;
    v324[104] = @"SOC_VMID_Transitions";
    v108 = [MEMORY[0x277D3F198] sharedInstance];
    v107 = [v108 commonTypeDict_IntegerFormat];
    v325[104] = v107;
    v324[105] = @"DISP_VMIN_ACT";
    v106 = [MEMORY[0x277D3F198] sharedInstance];
    v105 = [v106 commonTypeDict_RealFormat];
    v325[105] = v105;
    v324[106] = @"DISP_VNOM_ACT";
    v104 = [MEMORY[0x277D3F198] sharedInstance];
    v103 = [v104 commonTypeDict_RealFormat];
    v325[106] = v103;
    v324[107] = @"DISP_VNOM2_ACT";
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v101 = [v102 commonTypeDict_RealFormat];
    v325[107] = v101;
    v324[108] = @"DISP_VMAX_ACT";
    v100 = [MEMORY[0x277D3F198] sharedInstance];
    v99 = [v100 commonTypeDict_RealFormat];
    v325[108] = v99;
    v324[109] = @"SLP_MEDIA_ACT";
    v98 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v98 commonTypeDict_RealFormat];
    v325[109] = v97;
    v324[110] = @"SLP_MEDIA_INACT";
    v96 = [MEMORY[0x277D3F198] sharedInstance];
    v95 = [v96 commonTypeDict_RealFormat];
    v325[110] = v95;
    v324[111] = @"SLP_MEDIA_Transitions";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v93 = [v94 commonTypeDict_IntegerFormat];
    v325[111] = v93;
    v324[112] = @"SOC_VOVD_ACT";
    v92 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v92 commonTypeDict_RealFormat];
    v325[112] = v91;
    v324[113] = @"DCS_F1_ACT";
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v90 commonTypeDict_RealFormat];
    v325[113] = v89;
    v324[114] = @"DCS_F2_ACT";
    v88 = [MEMORY[0x277D3F198] sharedInstance];
    v87 = [v88 commonTypeDict_RealFormat];
    v325[114] = v87;
    v324[115] = @"DCS_F3_ACT";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v85 = [v86 commonTypeDict_RealFormat];
    v325[115] = v85;
    v324[116] = @"DCS_F4_ACT";
    v84 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v84 commonTypeDict_RealFormat];
    v325[116] = v83;
    v324[117] = @"DCS_F5_ACT";
    v82 = [MEMORY[0x277D3F198] sharedInstance];
    v81 = [v82 commonTypeDict_RealFormat];
    v325[117] = v81;
    v324[118] = @"DCS_F6_ACT";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v79 = [v80 commonTypeDict_RealFormat];
    v325[118] = v79;
    v324[119] = @"VBAT_CHOKE_ACT";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v78 commonTypeDict_RealFormat];
    v325[119] = v77;
    v324[120] = @"AF_FAST_CLK_SLO_ACT";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v75 = [v76 commonTypeDict_RealFormat];
    v325[120] = v75;
    v324[121] = @"PCPU_ADCLK_TRIG0_ACT";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_RealFormat];
    v325[121] = v73;
    v324[122] = @"ECPU_DITHR_TRIG0_ACT";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_RealFormat];
    v325[122] = v71;
    v324[123] = @"PCPU_DITHR_TRIG0_ACT";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_RealFormat];
    v325[123] = v69;
    v324[124] = @"ECPU_EXT_TRIG0_ACT";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_RealFormat];
    v325[124] = v67;
    v324[125] = @"ECPU_EXT_TRIG1_ACT";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_RealFormat];
    v325[125] = v65;
    v324[126] = @"ECPU_EXT_TRIG2_ACT";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_RealFormat];
    v325[126] = v63;
    v324[127] = @"ECPU_EXT_TRIG3_ACT";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_RealFormat];
    v325[127] = v61;
    v324[128] = @"PCPU_EXT_TRIG0_ACT";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_RealFormat];
    v325[128] = v59;
    v324[129] = @"PCPU_EXT_TRIG1_ACT";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_RealFormat];
    v325[129] = v57;
    v324[130] = @"PCPU_EXT_TRIG2_ACT";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_RealFormat];
    v325[130] = v55;
    v324[131] = @"PCPU_EXT_TRIG3_ACT";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_RealFormat];
    v325[131] = v53;
    v324[132] = @"GPU_EXT_TRIG0_ACT";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_RealFormat];
    v325[132] = v51;
    v324[133] = @"GPU_EXT_TRIG1_ACT";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_RealFormat];
    v325[133] = v49;
    v324[134] = @"GPU_EXT_TRIG2_ACT";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_RealFormat];
    v325[134] = v47;
    v324[135] = @"GPU_EXT_TRIG3_ACT";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_RealFormat];
    v325[135] = v45;
    v324[136] = @"ANE_EXT_TRIG0_ACT";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_RealFormat];
    v325[136] = v43;
    v324[137] = @"ANE_EXT_TRIG1_ACT";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_RealFormat];
    v325[137] = v41;
    v324[138] = @"ANE_EXT_TRIG2_ACT";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_RealFormat];
    v325[138] = v39;
    v324[139] = @"ANE_EXT_TRIG3_ACT";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_RealFormat];
    v325[139] = v37;
    v324[140] = @"AVE_VMIN_ACT";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_RealFormat];
    v325[140] = v35;
    v324[141] = @"AVE_VMIN_INACT";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_RealFormat];
    v325[141] = v33;
    v324[142] = @"AVE_VMIN_Transitions";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v325[142] = v31;
    v324[143] = @"AVE_VNOM_ACT";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat];
    v325[143] = v29;
    v324[144] = @"AVE_VNOM_INACT";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_RealFormat];
    v325[144] = v27;
    v324[145] = @"AVE_VNOM_Transitions";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v15 commonTypeDict_IntegerFormat];
    v325[145] = v16;
    v324[146] = @"AVE_VMAX_ACT";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v17 commonTypeDict_RealFormat];
    v325[146] = v18;
    v324[147] = @"AVE_VMAX_INACT";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v19 commonTypeDict_RealFormat];
    v325[147] = v20;
    v324[148] = @"AVE_VMAX_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v21 commonTypeDict_IntegerFormat];
    v325[148] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v325 forKeys:v324 count:149];
    v329[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v329 forKeys:v328 count:2];

    v6 = v211;
    v10 = v206;

    v9 = v208;
    v4 = v216;

    v8 = v210;
    v11 = v205;

    v5 = v218;
    v7 = v214;

    v12 = v24;
    v3 = v221;
  }

  else
  {
    if (![MEMORY[0x277D3F208] isWatch] || !+[PLIOReportAgent shouldLogSleepMedia](PLIOReportAgent, "shouldLogSleepMedia"))
    {
      v12 = MEMORY[0x277CBEC10];
      goto LABEL_9;
    }

    v322[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4F8];
    v320[0] = *MEMORY[0x277D3F568];
    v320[1] = v2;
    v321[0] = &unk_282C1C088;
    v321[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v321 forKeys:v320 count:2];
    v323[0] = v3;
    v322[1] = *MEMORY[0x277D3F540];
    v318[0] = @"SampleTime";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat_withUnit_s];
    v319[0] = v5;
    v318[1] = @"AWAKE_ACT";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v319[1] = v7;
    v318[2] = @"AWAKE_HOT_ACT";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v319[2] = v9;
    v318[3] = @"SLP_S2R_ACT";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v317 = [v10 commonTypeDict_RealFormat];
    v319[3] = v317;
    v318[4] = @"SLP_MEDIA_ACT";
    v11 = [MEMORY[0x277D3F198] sharedInstance];
    v316 = [v11 commonTypeDict_RealFormat];
    v319[4] = v316;
    v315 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v319 forKeys:v318 count:5];
    v323[1] = v315;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v323 forKeys:v322 count:2];
  }

LABEL_9:
  v25 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionEnergyModel
{
  v373[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v372[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v370[0] = *MEMORY[0x277D3F568];
    v370[1] = v2;
    v371[0] = &unk_282C1C0B8;
    v371[1] = @"logEventBackwardIOReport";
    v370[2] = *MEMORY[0x277D3F4F8];
    v371[2] = MEMORY[0x277CBEC28];
    v367 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v371 forKeys:v370 count:3];
    v373[0] = v367;
    v372[1] = *MEMORY[0x277D3F540];
    v368[0] = @"SampleTime";
    v366 = [MEMORY[0x277D3F198] sharedInstance];
    v365 = [v366 commonTypeDict_RealFormat_withUnit_s];
    v369[0] = v365;
    v368[1] = @"CPU Energy";
    v364 = [MEMORY[0x277D3F198] sharedInstance];
    v363 = [v364 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[1] = v363;
    v368[2] = @"VENC Energy";
    v362 = [MEMORY[0x277D3F198] sharedInstance];
    v361 = [v362 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[2] = v361;
    v368[3] = @"VDEC Energy";
    v360 = [MEMORY[0x277D3F198] sharedInstance];
    v359 = [v360 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[3] = v359;
    v368[4] = @"ISP Energy";
    v358 = [MEMORY[0x277D3F198] sharedInstance];
    v357 = [v358 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[4] = v357;
    v368[5] = @"Rest of SoC Energy";
    v356 = [MEMORY[0x277D3F198] sharedInstance];
    v355 = [v356 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[5] = v355;
    v368[6] = @"GPU Energy";
    v354 = [MEMORY[0x277D3F198] sharedInstance];
    v353 = [v354 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[6] = v353;
    v368[7] = @"DRAM Energy";
    v352 = [MEMORY[0x277D3F198] sharedInstance];
    v351 = [v352 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[7] = v351;
    v368[8] = @"SoC Energy";
    v350 = [MEMORY[0x277D3F198] sharedInstance];
    v349 = [v350 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[8] = v349;
    v368[9] = @"GPU";
    v348 = [MEMORY[0x277D3F198] sharedInstance];
    v347 = [v348 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[9] = v347;
    v368[10] = @"ANE";
    v346 = [MEMORY[0x277D3F198] sharedInstance];
    v345 = [v346 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[10] = v345;
    v368[11] = @"ISP";
    v344 = [MEMORY[0x277D3F198] sharedInstance];
    v343 = [v344 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[11] = v343;
    v368[12] = @"AVE";
    v342 = [MEMORY[0x277D3F198] sharedInstance];
    v341 = [v342 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[12] = v341;
    v368[13] = @"VDEC";
    v340 = [MEMORY[0x277D3F198] sharedInstance];
    v339 = [v340 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[13] = v339;
    v368[14] = @"MSR";
    v338 = [MEMORY[0x277D3F198] sharedInstance];
    v337 = [v338 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[14] = v337;
    v368[15] = @"DISP";
    v336 = [MEMORY[0x277D3F198] sharedInstance];
    v335 = [v336 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[15] = v335;
    v368[16] = @"SOC_AON";
    v334 = [MEMORY[0x277D3F198] sharedInstance];
    v333 = [v334 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[16] = v333;
    v368[17] = @"SOC_REST";
    v332 = [MEMORY[0x277D3F198] sharedInstance];
    v331 = [v332 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[17] = v331;
    v368[18] = @"DCS";
    v330 = [MEMORY[0x277D3F198] sharedInstance];
    v329 = [v330 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[18] = v329;
    v368[19] = @"DRAM";
    v328 = [MEMORY[0x277D3F198] sharedInstance];
    v327 = [v328 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[19] = v327;
    v368[20] = @"GPU SRAM";
    v326 = [MEMORY[0x277D3F198] sharedInstance];
    v325 = [v326 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[20] = v325;
    v368[21] = @"PCIe Port 1 Energy";
    v324 = [MEMORY[0x277D3F198] sharedInstance];
    v323 = [v324 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[21] = v323;
    v368[22] = @"CPUDTL00";
    v322 = [MEMORY[0x277D3F198] sharedInstance];
    v321 = [v322 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[22] = v321;
    v368[23] = @"CPUDTL01";
    v320 = [MEMORY[0x277D3F198] sharedInstance];
    v319 = [v320 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[23] = v319;
    v368[24] = @"CPUDTL02";
    v318 = [MEMORY[0x277D3F198] sharedInstance];
    v317 = [v318 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[24] = v317;
    v368[25] = @"CPUDTL03";
    v316 = [MEMORY[0x277D3F198] sharedInstance];
    v315 = [v316 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[25] = v315;
    v368[26] = @"CPUDTL04";
    v314 = [MEMORY[0x277D3F198] sharedInstance];
    v313 = [v314 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[26] = v313;
    v368[27] = @"CPUDTL05";
    v312 = [MEMORY[0x277D3F198] sharedInstance];
    v311 = [v312 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[27] = v311;
    v368[28] = @"CPUDTL06";
    v310 = [MEMORY[0x277D3F198] sharedInstance];
    v309 = [v310 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[28] = v309;
    v368[29] = @"CPUDTL07";
    v308 = [MEMORY[0x277D3F198] sharedInstance];
    v307 = [v308 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[29] = v307;
    v368[30] = @"CPUDTL08";
    v306 = [MEMORY[0x277D3F198] sharedInstance];
    v305 = [v306 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[30] = v305;
    v368[31] = @"CPUDTL09";
    v304 = [MEMORY[0x277D3F198] sharedInstance];
    v303 = [v304 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[31] = v303;
    v368[32] = @"CPUDTL10";
    v302 = [MEMORY[0x277D3F198] sharedInstance];
    v301 = [v302 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[32] = v301;
    v368[33] = @"CPUDTL11";
    v300 = [MEMORY[0x277D3F198] sharedInstance];
    v299 = [v300 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[33] = v299;
    v368[34] = @"CPUDTL12";
    v298 = [MEMORY[0x277D3F198] sharedInstance];
    v297 = [v298 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[34] = v297;
    v368[35] = @"CPUDTL13";
    v296 = [MEMORY[0x277D3F198] sharedInstance];
    v295 = [v296 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[35] = v295;
    v368[36] = @"CPUDTL14";
    v294 = [MEMORY[0x277D3F198] sharedInstance];
    v293 = [v294 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[36] = v293;
    v368[37] = @"CPUDTL15";
    v292 = [MEMORY[0x277D3F198] sharedInstance];
    v291 = [v292 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[37] = v291;
    v368[38] = @"CPUDTL16";
    v290 = [MEMORY[0x277D3F198] sharedInstance];
    v289 = [v290 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[38] = v289;
    v368[39] = @"CPUDTL17";
    v288 = [MEMORY[0x277D3F198] sharedInstance];
    v287 = [v288 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[39] = v287;
    v368[40] = @"CPUDTL18";
    v286 = [MEMORY[0x277D3F198] sharedInstance];
    v285 = [v286 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[40] = v285;
    v368[41] = @"CPUDTL19";
    v284 = [MEMORY[0x277D3F198] sharedInstance];
    v283 = [v284 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[41] = v283;
    v368[42] = @"CPUDTL20";
    v282 = [MEMORY[0x277D3F198] sharedInstance];
    v281 = [v282 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[42] = v281;
    v368[43] = @"CPUDTL21";
    v280 = [MEMORY[0x277D3F198] sharedInstance];
    v279 = [v280 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[43] = v279;
    v368[44] = @"CPUDTL22";
    v278 = [MEMORY[0x277D3F198] sharedInstance];
    v277 = [v278 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[44] = v277;
    v368[45] = @"CPUDTL23";
    v276 = [MEMORY[0x277D3F198] sharedInstance];
    v275 = [v276 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[45] = v275;
    v368[46] = @"CPUDTL24";
    v274 = [MEMORY[0x277D3F198] sharedInstance];
    v273 = [v274 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[46] = v273;
    v368[47] = @"CPUDTL25";
    v272 = [MEMORY[0x277D3F198] sharedInstance];
    v271 = [v272 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[47] = v271;
    v368[48] = @"CPUDTL26";
    v270 = [MEMORY[0x277D3F198] sharedInstance];
    v269 = [v270 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[48] = v269;
    v368[49] = @"CPUDTL27";
    v268 = [MEMORY[0x277D3F198] sharedInstance];
    v267 = [v268 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[49] = v267;
    v368[50] = @"CPUDTL30";
    v266 = [MEMORY[0x277D3F198] sharedInstance];
    v265 = [v266 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[50] = v265;
    v368[51] = @"CPUDTL31";
    v264 = [MEMORY[0x277D3F198] sharedInstance];
    v263 = [v264 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[51] = v263;
    v368[52] = @"CPUDTL32";
    v262 = [MEMORY[0x277D3F198] sharedInstance];
    v261 = [v262 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[52] = v261;
    v368[53] = @"CPUDTL33";
    v260 = [MEMORY[0x277D3F198] sharedInstance];
    v259 = [v260 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[53] = v259;
    v368[54] = @"CPUDTL34";
    v258 = [MEMORY[0x277D3F198] sharedInstance];
    v257 = [v258 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[54] = v257;
    v368[55] = @"CPUDTL35";
    v256 = [MEMORY[0x277D3F198] sharedInstance];
    v255 = [v256 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[55] = v255;
    v368[56] = @"CPUDTL36";
    v254 = [MEMORY[0x277D3F198] sharedInstance];
    v253 = [v254 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[56] = v253;
    v368[57] = @"CPUDTL37";
    v252 = [MEMORY[0x277D3F198] sharedInstance];
    v251 = [v252 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[57] = v251;
    v368[58] = @"CPUDTL40";
    v250 = [MEMORY[0x277D3F198] sharedInstance];
    v249 = [v250 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[58] = v249;
    v368[59] = @"CPUDTL41";
    v248 = [MEMORY[0x277D3F198] sharedInstance];
    v247 = [v248 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[59] = v247;
    v368[60] = @"CPUDTL42";
    v246 = [MEMORY[0x277D3F198] sharedInstance];
    v245 = [v246 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[60] = v245;
    v368[61] = @"CPUDTL43";
    v244 = [MEMORY[0x277D3F198] sharedInstance];
    v243 = [v244 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[61] = v243;
    v368[62] = @"CPUDTL44";
    v242 = [MEMORY[0x277D3F198] sharedInstance];
    v241 = [v242 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[62] = v241;
    v368[63] = @"CPUDTL45";
    v240 = [MEMORY[0x277D3F198] sharedInstance];
    v239 = [v240 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[63] = v239;
    v368[64] = @"CPUDTL46";
    v238 = [MEMORY[0x277D3F198] sharedInstance];
    v237 = [v238 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[64] = v237;
    v368[65] = @"CPUDTL47";
    v236 = [MEMORY[0x277D3F198] sharedInstance];
    v235 = [v236 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[65] = v235;
    v368[66] = @"CPUDTL50";
    v234 = [MEMORY[0x277D3F198] sharedInstance];
    v233 = [v234 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[66] = v233;
    v368[67] = @"CPUDTL51";
    v232 = [MEMORY[0x277D3F198] sharedInstance];
    v231 = [v232 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[67] = v231;
    v368[68] = @"CPUDTL52";
    v230 = [MEMORY[0x277D3F198] sharedInstance];
    v229 = [v230 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[68] = v229;
    v368[69] = @"CPUDTL53";
    v228 = [MEMORY[0x277D3F198] sharedInstance];
    v227 = [v228 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[69] = v227;
    v368[70] = @"CPUDTL54";
    v226 = [MEMORY[0x277D3F198] sharedInstance];
    v225 = [v226 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[70] = v225;
    v368[71] = @"CPUDTL55";
    v224 = [MEMORY[0x277D3F198] sharedInstance];
    v223 = [v224 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[71] = v223;
    v368[72] = @"CPUDTL56";
    v222 = [MEMORY[0x277D3F198] sharedInstance];
    v221 = [v222 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[72] = v221;
    v368[73] = @"CPUDTL57";
    v220 = [MEMORY[0x277D3F198] sharedInstance];
    v219 = [v220 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[73] = v219;
    v368[74] = @"PCPUDTL00";
    v218 = [MEMORY[0x277D3F198] sharedInstance];
    v217 = [v218 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[74] = v217;
    v368[75] = @"PCPUDTL01";
    v216 = [MEMORY[0x277D3F198] sharedInstance];
    v215 = [v216 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[75] = v215;
    v368[76] = @"PCPUDTL02";
    v214 = [MEMORY[0x277D3F198] sharedInstance];
    v213 = [v214 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[76] = v213;
    v368[77] = @"PCPUDTL03";
    v212 = [MEMORY[0x277D3F198] sharedInstance];
    v211 = [v212 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[77] = v211;
    v368[78] = @"PCPUDTL04";
    v210 = [MEMORY[0x277D3F198] sharedInstance];
    v209 = [v210 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[78] = v209;
    v368[79] = @"PCPUDTL05";
    v208 = [MEMORY[0x277D3F198] sharedInstance];
    v207 = [v208 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[79] = v207;
    v368[80] = @"PCPUDTL06";
    v206 = [MEMORY[0x277D3F198] sharedInstance];
    v205 = [v206 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[80] = v205;
    v368[81] = @"PCPUDTL07";
    v204 = [MEMORY[0x277D3F198] sharedInstance];
    v203 = [v204 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[81] = v203;
    v368[82] = @"PCPUDTL08";
    v202 = [MEMORY[0x277D3F198] sharedInstance];
    v201 = [v202 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[82] = v201;
    v368[83] = @"PCPUDTL09";
    v200 = [MEMORY[0x277D3F198] sharedInstance];
    v199 = [v200 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[83] = v199;
    v368[84] = @"PCPUDTL0a";
    v198 = [MEMORY[0x277D3F198] sharedInstance];
    v197 = [v198 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[84] = v197;
    v368[85] = @"PCPUDTL0b";
    v196 = [MEMORY[0x277D3F198] sharedInstance];
    v195 = [v196 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[85] = v195;
    v368[86] = @"PCPUDTL0c";
    v194 = [MEMORY[0x277D3F198] sharedInstance];
    v193 = [v194 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[86] = v193;
    v368[87] = @"PCPUDTL0d";
    v192 = [MEMORY[0x277D3F198] sharedInstance];
    v191 = [v192 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[87] = v191;
    v368[88] = @"PCPUDTL0e";
    v190 = [MEMORY[0x277D3F198] sharedInstance];
    v189 = [v190 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[88] = v189;
    v368[89] = @"PCPUDTL0f";
    v188 = [MEMORY[0x277D3F198] sharedInstance];
    v187 = [v188 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[89] = v187;
    v368[90] = @"PCPUDTL010";
    v186 = [MEMORY[0x277D3F198] sharedInstance];
    v185 = [v186 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[90] = v185;
    v368[91] = @"PCPUDTL011";
    v184 = [MEMORY[0x277D3F198] sharedInstance];
    v183 = [v184 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[91] = v183;
    v368[92] = @"PCPUDTL012";
    v182 = [MEMORY[0x277D3F198] sharedInstance];
    v181 = [v182 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[92] = v181;
    v368[93] = @"PCPUDTL10";
    v180 = [MEMORY[0x277D3F198] sharedInstance];
    v179 = [v180 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[93] = v179;
    v368[94] = @"PCPUDTL11";
    v178 = [MEMORY[0x277D3F198] sharedInstance];
    v177 = [v178 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[94] = v177;
    v368[95] = @"PCPUDTL12";
    v176 = [MEMORY[0x277D3F198] sharedInstance];
    v175 = [v176 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[95] = v175;
    v368[96] = @"PCPUDTL13";
    v174 = [MEMORY[0x277D3F198] sharedInstance];
    v173 = [v174 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[96] = v173;
    v368[97] = @"PCPUDTL14";
    v172 = [MEMORY[0x277D3F198] sharedInstance];
    v171 = [v172 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[97] = v171;
    v368[98] = @"PCPUDTL15";
    v170 = [MEMORY[0x277D3F198] sharedInstance];
    v169 = [v170 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[98] = v169;
    v368[99] = @"PCPUDTL16";
    v168 = [MEMORY[0x277D3F198] sharedInstance];
    v167 = [v168 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[99] = v167;
    v368[100] = @"PCPUDTL17";
    v166 = [MEMORY[0x277D3F198] sharedInstance];
    v165 = [v166 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[100] = v165;
    v368[101] = @"PCPUDTL18";
    v164 = [MEMORY[0x277D3F198] sharedInstance];
    v163 = [v164 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[101] = v163;
    v368[102] = @"PCPUDTL19";
    v162 = [MEMORY[0x277D3F198] sharedInstance];
    v161 = [v162 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[102] = v161;
    v368[103] = @"PCPUDTL1a";
    v160 = [MEMORY[0x277D3F198] sharedInstance];
    v159 = [v160 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[103] = v159;
    v368[104] = @"PCPUDTL1b";
    v158 = [MEMORY[0x277D3F198] sharedInstance];
    v157 = [v158 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[104] = v157;
    v368[105] = @"PCPUDTL1c";
    v156 = [MEMORY[0x277D3F198] sharedInstance];
    v155 = [v156 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[105] = v155;
    v368[106] = @"PCPUDTL1d";
    v154 = [MEMORY[0x277D3F198] sharedInstance];
    v153 = [v154 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[106] = v153;
    v368[107] = @"PCPUDTL1e";
    v152 = [MEMORY[0x277D3F198] sharedInstance];
    v151 = [v152 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[107] = v151;
    v368[108] = @"PCPUDTL1f";
    v150 = [MEMORY[0x277D3F198] sharedInstance];
    v149 = [v150 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[108] = v149;
    v368[109] = @"PCPUDTL110";
    v148 = [MEMORY[0x277D3F198] sharedInstance];
    v147 = [v148 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[109] = v147;
    v368[110] = @"PCPUDTL111";
    v146 = [MEMORY[0x277D3F198] sharedInstance];
    v145 = [v146 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[110] = v145;
    v368[111] = @"PCPUDTL112";
    v144 = [MEMORY[0x277D3F198] sharedInstance];
    v143 = [v144 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[111] = v143;
    v368[112] = @"PCPUDTL20";
    v142 = [MEMORY[0x277D3F198] sharedInstance];
    v141 = [v142 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[112] = v141;
    v368[113] = @"PCPUDTL21";
    v140 = [MEMORY[0x277D3F198] sharedInstance];
    v139 = [v140 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[113] = v139;
    v368[114] = @"PCPUDTL22";
    v138 = [MEMORY[0x277D3F198] sharedInstance];
    v137 = [v138 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[114] = v137;
    v368[115] = @"PCPUDTL23";
    v136 = [MEMORY[0x277D3F198] sharedInstance];
    v135 = [v136 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[115] = v135;
    v368[116] = @"PCPUDTL24";
    v134 = [MEMORY[0x277D3F198] sharedInstance];
    v133 = [v134 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[116] = v133;
    v368[117] = @"PCPUDTL25";
    v132 = [MEMORY[0x277D3F198] sharedInstance];
    v131 = [v132 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[117] = v131;
    v368[118] = @"PCPUDTL26";
    v130 = [MEMORY[0x277D3F198] sharedInstance];
    v129 = [v130 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[118] = v129;
    v368[119] = @"PCPUDTL27";
    v128 = [MEMORY[0x277D3F198] sharedInstance];
    v127 = [v128 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[119] = v127;
    v368[120] = @"PCPUDTL28";
    v126 = [MEMORY[0x277D3F198] sharedInstance];
    v125 = [v126 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[120] = v125;
    v368[121] = @"PCPUDTL29";
    v124 = [MEMORY[0x277D3F198] sharedInstance];
    v123 = [v124 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[121] = v123;
    v368[122] = @"PCPUDTL2a";
    v122 = [MEMORY[0x277D3F198] sharedInstance];
    v121 = [v122 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[122] = v121;
    v368[123] = @"PCPUDTL2b";
    v120 = [MEMORY[0x277D3F198] sharedInstance];
    v119 = [v120 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[123] = v119;
    v368[124] = @"PCPUDTL2c";
    v118 = [MEMORY[0x277D3F198] sharedInstance];
    v117 = [v118 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[124] = v117;
    v368[125] = @"PCPUDTL2d";
    v116 = [MEMORY[0x277D3F198] sharedInstance];
    v115 = [v116 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[125] = v115;
    v368[126] = @"PCPUDTL2e";
    v114 = [MEMORY[0x277D3F198] sharedInstance];
    v113 = [v114 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[126] = v113;
    v368[127] = @"PCPUDTL2f";
    v112 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v112 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[127] = v111;
    v368[128] = @"PCPUDTL210";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v109 = [v110 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[128] = v109;
    v368[129] = @"PCPUDTL211";
    v108 = [MEMORY[0x277D3F198] sharedInstance];
    v107 = [v108 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[129] = v107;
    v368[130] = @"PCPUDTL212";
    v106 = [MEMORY[0x277D3F198] sharedInstance];
    v105 = [v106 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[130] = v105;
    v368[131] = @"PCPUDTL30";
    v104 = [MEMORY[0x277D3F198] sharedInstance];
    v103 = [v104 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[131] = v103;
    v368[132] = @"PCPUDTL31";
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v101 = [v102 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[132] = v101;
    v368[133] = @"PCPUDTL32";
    v100 = [MEMORY[0x277D3F198] sharedInstance];
    v99 = [v100 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[133] = v99;
    v368[134] = @"PCPUDTL33";
    v98 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v98 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[134] = v97;
    v368[135] = @"PCPUDTL34";
    v96 = [MEMORY[0x277D3F198] sharedInstance];
    v95 = [v96 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[135] = v95;
    v368[136] = @"PCPUDTL35";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v93 = [v94 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[136] = v93;
    v368[137] = @"PCPUDTL36";
    v92 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v92 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[137] = v91;
    v368[138] = @"PCPUDTL37";
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v90 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[138] = v89;
    v368[139] = @"PCPUDTL38";
    v88 = [MEMORY[0x277D3F198] sharedInstance];
    v87 = [v88 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[139] = v87;
    v368[140] = @"PCPUDTL39";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v85 = [v86 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[140] = v85;
    v368[141] = @"PCPUDTL3a";
    v84 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v84 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[141] = v83;
    v368[142] = @"PCPUDTL3b";
    v82 = [MEMORY[0x277D3F198] sharedInstance];
    v81 = [v82 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[142] = v81;
    v368[143] = @"PCPUDTL3c";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v79 = [v80 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[143] = v79;
    v368[144] = @"PCPUDTL3d";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v78 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[144] = v77;
    v368[145] = @"PCPUDTL3e";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v75 = [v76 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[145] = v75;
    v368[146] = @"PCPUDTL3f";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[146] = v73;
    v368[147] = @"PCPUDTL310";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[147] = v71;
    v368[148] = @"PCPUDTL311";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[148] = v69;
    v368[149] = @"PCPUDTL312";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[149] = v67;
    v368[150] = @"ECPU0";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[150] = v65;
    v368[151] = @"ECPU1";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[151] = v63;
    v368[152] = @"ECPU2";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[152] = v61;
    v368[153] = @"ECPU3";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[153] = v59;
    v368[154] = @"ECPU4";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[154] = v57;
    v368[155] = @"ECPU5";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[155] = v55;
    v368[156] = @"PCPU0";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[156] = v53;
    v368[157] = @"PCPU1";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[157] = v51;
    v368[158] = @"PCPU2";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[158] = v49;
    v368[159] = @"PCPU3";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[159] = v47;
    v368[160] = @"ECPM";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[160] = v45;
    v368[161] = @"PCPM";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[161] = v43;
    v368[162] = @"ECPU";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[162] = v41;
    v368[163] = @"PCPU";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[163] = v39;
    v368[164] = @"ECPM_SRAM";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[164] = v37;
    v368[165] = @"ECPU0_SRAM";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[165] = v35;
    v368[166] = @"ECPU1_SRAM";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[166] = v33;
    v368[167] = @"ECPU2_SRAM";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[167] = v31;
    v368[168] = @"ECPU3_SRAM";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[168] = v29;
    v368[169] = @"ECPU4_SRAM";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[169] = v27;
    v368[170] = @"ECPU5_SRAM";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[170] = v25;
    v368[171] = @"PCIe Port 0 Energy";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[171] = v23;
    v368[172] = @"PCIe Port 2 Energy";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[172] = v21;
    v368[173] = @"PCPM_SRAM";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[173] = v19;
    v368[174] = @"PCPU0_SRAM";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[174] = v17;
    v368[175] = @"PCPU1_SRAM";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[175] = v15;
    v368[176] = @"PCPU2_SRAM";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[176] = v4;
    v368[177] = @"PCPU3_SRAM";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[177] = v6;
    v368[178] = @"DISPEXT";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[178] = v8;
    v368[179] = @"AMCC";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat_withUnit_mJ];
    v369[179] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v369 forKeys:v368 count:180];
    v373[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v373 forKeys:v372 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPMPEnergyCounters
{
  v71[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v70[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v68[0] = *MEMORY[0x277D3F568];
    v68[1] = v2;
    v69[0] = &unk_282C1C0C8;
    v69[1] = @"logEventBackwardIOReport";
    v68[2] = *MEMORY[0x277D3F4F8];
    v69[2] = MEMORY[0x277CBEC28];
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
    v71[0] = v65;
    v70[1] = *MEMORY[0x277D3F540];
    v66[0] = @"SampleTime";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_RealFormat_withUnit_s];
    v67[0] = v63;
    v66[1] = @"DRAM";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_RealFormat_withUnit_mJ];
    v67[1] = v61;
    v66[2] = @"DISP";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_RealFormat_withUnit_mJ];
    v67[2] = v59;
    v66[3] = @"SOC_AON";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_RealFormat_withUnit_mJ];
    v67[3] = v57;
    v66[4] = @"SOC_REST";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_RealFormat_withUnit_mJ];
    v67[4] = v55;
    v66[5] = @"ECPU";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_RealFormat_withUnit_mJ];
    v67[5] = v53;
    v66[6] = @"PCPU";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_RealFormat_withUnit_mJ];
    v67[6] = v51;
    v66[7] = @"ECPM";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_RealFormat_withUnit_mJ];
    v67[7] = v49;
    v66[8] = @"PCPM";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_RealFormat_withUnit_mJ];
    v67[8] = v47;
    v66[9] = @"ISP";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_RealFormat_withUnit_mJ];
    v67[9] = v45;
    v66[10] = @"VENC";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_RealFormat_withUnit_mJ];
    v67[10] = v43;
    v66[11] = @"VDEC";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_RealFormat_withUnit_mJ];
    v67[11] = v41;
    v66[12] = @"MSR";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_RealFormat_withUnit_mJ];
    v67[12] = v39;
    v66[13] = @"DCS";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_RealFormat_withUnit_mJ];
    v67[13] = v37;
    v66[14] = @"ANE";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_RealFormat_withUnit_mJ];
    v67[14] = v35;
    v66[15] = @"ECORE0";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_RealFormat_withUnit_mJ];
    v67[15] = v33;
    v66[16] = @"ECORE1";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_RealFormat_withUnit_mJ];
    v67[16] = v31;
    v66[17] = @"ECORE2";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat_withUnit_mJ];
    v67[17] = v29;
    v66[18] = @"ECORE3";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_RealFormat_withUnit_mJ];
    v67[18] = v27;
    v66[19] = @"PCORE0";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_RealFormat_withUnit_mJ];
    v67[19] = v25;
    v66[20] = @"PCORE1";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_RealFormat_withUnit_mJ];
    v67[20] = v23;
    v66[21] = @"PCORE2";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_RealFormat_withUnit_mJ];
    v67[21] = v21;
    v66[22] = @"PCORE3";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_RealFormat_withUnit_mJ];
    v67[22] = v19;
    v66[23] = @"DISP0";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat_withUnit_mJ];
    v67[23] = v17;
    v66[24] = @"DISPX";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_RealFormat_withUnit_mJ];
    v67[24] = v15;
    v66[25] = @"BAT";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat_withUnit_mJ];
    v67[25] = v4;
    v66[26] = @"GPU";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_mJ];
    v67[26] = v6;
    v66[27] = @"AVE";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat_withUnit_mJ];
    v67[27] = v8;
    v66[28] = @"GPU SRAM";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat_withUnit_mJ];
    v67[28] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:29];
    v71[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPMPPerfDrivers
{
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    [MEMORY[0x277D3F208] isWatch];
  }

  return MEMORY[0x277CBEC10];
}

+ (id)entryEventBackwardDefinitionSocStatsDvdStats
{
  v40[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v39[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v37[0] = *MEMORY[0x277D3F568];
    v37[1] = v2;
    v38[0] = &unk_282C1C028;
    v38[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v37[2] = *MEMORY[0x277D3F4F8];
    v37[3] = v3;
    v38[2] = MEMORY[0x277CBEC28];
    v38[3] = MEMORY[0x277CBEC38];
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
    v40[0] = v34;
    v39[1] = *MEMORY[0x277D3F540];
    v35[0] = @"SampleTime";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_RealFormat_withUnit_s];
    v36[0] = v32;
    v35[1] = @"DVD States_0-9%";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v36[1] = v30;
    v35[2] = @"DVD States_10-19%";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_RealFormat];
    v36[2] = v28;
    v35[3] = @"DVD States_20-29%";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v36[3] = v26;
    v35[4] = @"DVD States_30-39%";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_RealFormat];
    v36[4] = v24;
    v35[5] = @"DVD States_40-49%";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v36[5] = v22;
    v35[6] = @"DVD States_50-59%";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_RealFormat];
    v36[6] = v20;
    v35[7] = @"DVD States_60-69%";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v36[7] = v18;
    v35[8] = @"DVD States_70-79%";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat];
    v36[8] = v16;
    v35[9] = @"DVD States_80-89%";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v36[9] = v5;
    v35[10] = @"DVD States_90-99%";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v36[10] = v7;
    v35[11] = @"DVD States_100%";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v36[11] = v9;
    v35[12] = @"DVD States_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v36[12] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:13];
    v40[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionAMCStatsPerfCounters
{
  v444[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v443[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v441[0] = *MEMORY[0x277D3F568];
    v441[1] = v2;
    v442[0] = &unk_282C1C0D8;
    v442[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v441[2] = *MEMORY[0x277D3F4F8];
    v441[3] = v3;
    v442[2] = MEMORY[0x277CBEC28];
    v442[3] = MEMORY[0x277CBEC38];
    v438 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v442 forKeys:v441 count:4];
    v444[0] = v438;
    v443[1] = *MEMORY[0x277D3F540];
    v439[0] = @"SampleTime";
    v437 = [MEMORY[0x277D3F198] sharedInstance];
    v436 = [v437 commonTypeDict_RealFormat_withUnit_s];
    v440[0] = v436;
    v439[1] = @"APWakeTime";
    v435 = [MEMORY[0x277D3F198] sharedInstance];
    v434 = [v435 commonTypeDict_RealFormat_withUnit_s];
    v440[1] = v434;
    v439[2] = @"ATC0 RD";
    v433 = [MEMORY[0x277D3F198] sharedInstance];
    v432 = [v433 commonTypeDict_IntegerFormat];
    v440[2] = v432;
    v439[3] = @"ATC0 WR";
    v431 = [MEMORY[0x277D3F198] sharedInstance];
    v430 = [v431 commonTypeDict_IntegerFormat];
    v440[3] = v430;
    v439[4] = @"ATC0 DCS RD";
    v429 = [MEMORY[0x277D3F198] sharedInstance];
    v428 = [v429 commonTypeDict_IntegerFormat];
    v440[4] = v428;
    v439[5] = @"ATC0 DCS WR";
    v427 = [MEMORY[0x277D3F198] sharedInstance];
    v426 = [v427 commonTypeDict_IntegerFormat];
    v440[5] = v426;
    v439[6] = @"ATC1 RD";
    v425 = [MEMORY[0x277D3F198] sharedInstance];
    v424 = [v425 commonTypeDict_IntegerFormat];
    v440[6] = v424;
    v439[7] = @"ATC1 WR";
    v423 = [MEMORY[0x277D3F198] sharedInstance];
    v422 = [v423 commonTypeDict_IntegerFormat];
    v440[7] = v422;
    v439[8] = @"ATC1 NRO RD";
    v421 = [MEMORY[0x277D3F198] sharedInstance];
    v420 = [v421 commonTypeDict_IntegerFormat];
    v440[8] = v420;
    v439[9] = @"ATC1 NRO WR";
    v419 = [MEMORY[0x277D3F198] sharedInstance];
    v418 = [v419 commonTypeDict_IntegerFormat];
    v440[9] = v418;
    v439[10] = @"ATC1 DCS RD";
    v417 = [MEMORY[0x277D3F198] sharedInstance];
    v416 = [v417 commonTypeDict_IntegerFormat];
    v440[10] = v416;
    v439[11] = @"ATC1 DCS WR";
    v415 = [MEMORY[0x277D3F198] sharedInstance];
    v414 = [v415 commonTypeDict_IntegerFormat];
    v440[11] = v414;
    v439[12] = @"ATC2 RD";
    v413 = [MEMORY[0x277D3F198] sharedInstance];
    v412 = [v413 commonTypeDict_IntegerFormat];
    v440[12] = v412;
    v439[13] = @"ATC2 WR";
    v411 = [MEMORY[0x277D3F198] sharedInstance];
    v410 = [v411 commonTypeDict_IntegerFormat];
    v440[13] = v410;
    v439[14] = @"ATC2 DCS RD";
    v409 = [MEMORY[0x277D3F198] sharedInstance];
    v408 = [v409 commonTypeDict_IntegerFormat];
    v440[14] = v408;
    v439[15] = @"ATC2 DCS WR";
    v407 = [MEMORY[0x277D3F198] sharedInstance];
    v406 = [v407 commonTypeDict_IntegerFormat];
    v440[15] = v406;
    v439[16] = @"ATC3 RD";
    v405 = [MEMORY[0x277D3F198] sharedInstance];
    v404 = [v405 commonTypeDict_IntegerFormat];
    v440[16] = v404;
    v439[17] = @"ATC3 WR";
    v403 = [MEMORY[0x277D3F198] sharedInstance];
    v402 = [v403 commonTypeDict_IntegerFormat];
    v440[17] = v402;
    v439[18] = @"ATC3 DCS RD";
    v401 = [MEMORY[0x277D3F198] sharedInstance];
    v400 = [v401 commonTypeDict_IntegerFormat];
    v440[18] = v400;
    v439[19] = @"ATC3 DCS WR";
    v399 = [MEMORY[0x277D3F198] sharedInstance];
    v398 = [v399 commonTypeDict_IntegerFormat];
    v440[19] = v398;
    v439[20] = @"Bandwidth";
    v397 = [MEMORY[0x277D3F198] sharedInstance];
    v396 = [v397 commonTypeDict_IntegerFormat];
    v440[20] = v396;
    v439[21] = @"Fabric Bandwidth";
    v395 = [MEMORY[0x277D3F198] sharedInstance];
    v394 = [v395 commonTypeDict_IntegerFormat];
    v440[21] = v394;
    v439[22] = @"AMCC CPU Read";
    v393 = [MEMORY[0x277D3F198] sharedInstance];
    v392 = [v393 commonTypeDict_IntegerFormat];
    v440[22] = v392;
    v439[23] = @"AMCC CPU Write";
    v391 = [MEMORY[0x277D3F198] sharedInstance];
    v390 = [v391 commonTypeDict_IntegerFormat];
    v440[23] = v390;
    v439[24] = @"AMCC ANS Read";
    v389 = [MEMORY[0x277D3F198] sharedInstance];
    v388 = [v389 commonTypeDict_IntegerFormat];
    v440[24] = v388;
    v439[25] = @"AMCC ANS Write";
    v387 = [MEMORY[0x277D3F198] sharedInstance];
    v386 = [v387 commonTypeDict_IntegerFormat];
    v440[25] = v386;
    v439[26] = @"AMCC ISP BW";
    v385 = [MEMORY[0x277D3F198] sharedInstance];
    v384 = [v385 commonTypeDict_IntegerFormat];
    v440[26] = v384;
    v439[27] = @"AMCC Media BW";
    v383 = [MEMORY[0x277D3F198] sharedInstance];
    v382 = [v383 commonTypeDict_IntegerFormat];
    v440[27] = v382;
    v439[28] = @"AMCX Memory Bandwidth";
    v381 = [MEMORY[0x277D3F198] sharedInstance];
    v380 = [v381 commonTypeDict_IntegerFormat];
    v440[28] = v380;
    v439[29] = @"AMCX CAS Count";
    v379 = [MEMORY[0x277D3F198] sharedInstance];
    v378 = [v379 commonTypeDict_IntegerFormat];
    v440[29] = v378;
    v439[30] = @"AMCX RAS Count";
    v377 = [MEMORY[0x277D3F198] sharedInstance];
    v376 = [v377 commonTypeDict_IntegerFormat];
    v440[30] = v376;
    v439[31] = @"AMCX SlfRfr Cycles";
    v375 = [MEMORY[0x277D3F198] sharedInstance];
    v374 = [v375 commonTypeDict_IntegerFormat];
    v440[31] = v374;
    v439[32] = @"AMCX SlfRfr Entries";
    v373 = [MEMORY[0x277D3F198] sharedInstance];
    v372 = [v373 commonTypeDict_IntegerFormat];
    v440[32] = v372;
    v439[33] = @"ANE DCS";
    v371 = [MEMORY[0x277D3F198] sharedInstance];
    v370 = [v371 commonTypeDict_IntegerFormat];
    v440[33] = v370;
    v439[34] = @"ANE RD";
    v369 = [MEMORY[0x277D3F198] sharedInstance];
    v368 = [v369 commonTypeDict_IntegerFormat];
    v440[34] = v368;
    v439[35] = @"ANE WR";
    v367 = [MEMORY[0x277D3F198] sharedInstance];
    v366 = [v367 commonTypeDict_IntegerFormat];
    v440[35] = v366;
    v439[36] = @"CPU DCS";
    v365 = [MEMORY[0x277D3F198] sharedInstance];
    v364 = [v365 commonTypeDict_IntegerFormat];
    v440[36] = v364;
    v439[37] = @"CPU RD";
    v363 = [MEMORY[0x277D3F198] sharedInstance];
    v362 = [v363 commonTypeDict_IntegerFormat];
    v440[37] = v362;
    v439[38] = @"CPU WR";
    v361 = [MEMORY[0x277D3F198] sharedInstance];
    v360 = [v361 commonTypeDict_IntegerFormat];
    v440[38] = v360;
    v439[39] = @"DCS";
    v359 = [MEMORY[0x277D3F198] sharedInstance];
    v358 = [v359 commonTypeDict_IntegerFormat];
    v440[39] = v358;
    v439[40] = @"DCS CAS";
    v357 = [MEMORY[0x277D3F198] sharedInstance];
    v356 = [v357 commonTypeDict_IntegerFormat];
    v440[40] = v356;
    v439[41] = @"DCS PD ENTRIES";
    v355 = [MEMORY[0x277D3F198] sharedInstance];
    v354 = [v355 commonTypeDict_IntegerFormat];
    v440[41] = v354;
    v439[42] = @"DCS RAS";
    v353 = [MEMORY[0x277D3F198] sharedInstance];
    v352 = [v353 commonTypeDict_IntegerFormat];
    v440[42] = v352;
    v439[43] = @"DCS RD";
    v351 = [MEMORY[0x277D3F198] sharedInstance];
    v350 = [v351 commonTypeDict_IntegerFormat];
    v440[43] = v350;
    v439[44] = @"DCS SR ENTRIES";
    v349 = [MEMORY[0x277D3F198] sharedInstance];
    v348 = [v349 commonTypeDict_IntegerFormat];
    v440[44] = v348;
    v439[45] = @"DCS WR";
    v347 = [MEMORY[0x277D3F198] sharedInstance];
    v346 = [v347 commonTypeDict_IntegerFormat];
    v440[45] = v346;
    v439[46] = @"DISP DCS";
    v345 = [MEMORY[0x277D3F198] sharedInstance];
    v344 = [v345 commonTypeDict_IntegerFormat];
    v440[46] = v344;
    v439[47] = @"DISP RD";
    v343 = [MEMORY[0x277D3F198] sharedInstance];
    v342 = [v343 commonTypeDict_IntegerFormat];
    v440[47] = v342;
    v439[48] = @"DISP WR";
    v341 = [MEMORY[0x277D3F198] sharedInstance];
    v340 = [v341 commonTypeDict_IntegerFormat];
    v440[48] = v340;
    v439[49] = @"DISPDFR RD";
    v339 = [MEMORY[0x277D3F198] sharedInstance];
    v338 = [v339 commonTypeDict_IntegerFormat];
    v440[49] = v338;
    v439[50] = @"DISPDFR WR";
    v337 = [MEMORY[0x277D3F198] sharedInstance];
    v336 = [v337 commonTypeDict_IntegerFormat];
    v440[50] = v336;
    v439[51] = @"DFR DCS RD";
    v335 = [MEMORY[0x277D3F198] sharedInstance];
    v334 = [v335 commonTypeDict_IntegerFormat];
    v440[51] = v334;
    v439[52] = @"DFR DCS WR";
    v333 = [MEMORY[0x277D3F198] sharedInstance];
    v332 = [v333 commonTypeDict_IntegerFormat];
    v440[52] = v332;
    v439[53] = @"GFX DCS";
    v331 = [MEMORY[0x277D3F198] sharedInstance];
    v330 = [v331 commonTypeDict_IntegerFormat];
    v440[53] = v330;
    v439[54] = @"GFX RD";
    v329 = [MEMORY[0x277D3F198] sharedInstance];
    v328 = [v329 commonTypeDict_IntegerFormat];
    v440[54] = v328;
    v439[55] = @"GFX WR";
    v327 = [MEMORY[0x277D3F198] sharedInstance];
    v326 = [v327 commonTypeDict_IntegerFormat];
    v440[55] = v326;
    v439[56] = @"GFX1 RD";
    v325 = [MEMORY[0x277D3F198] sharedInstance];
    v324 = [v325 commonTypeDict_IntegerFormat];
    v440[56] = v324;
    v439[57] = @"GFX1 WR";
    v323 = [MEMORY[0x277D3F198] sharedInstance];
    v322 = [v323 commonTypeDict_IntegerFormat];
    v440[57] = v322;
    v439[58] = @"ISP DCS";
    v321 = [MEMORY[0x277D3F198] sharedInstance];
    v320 = [v321 commonTypeDict_IntegerFormat];
    v440[58] = v320;
    v439[59] = @"ISP RD";
    v319 = [MEMORY[0x277D3F198] sharedInstance];
    v318 = [v319 commonTypeDict_IntegerFormat];
    v440[59] = v318;
    v439[60] = @"ISP WR";
    v317 = [MEMORY[0x277D3F198] sharedInstance];
    v316 = [v317 commonTypeDict_IntegerFormat];
    v440[60] = v316;
    v439[61] = @"JPG RD";
    v315 = [MEMORY[0x277D3F198] sharedInstance];
    v314 = [v315 commonTypeDict_IntegerFormat];
    v440[61] = v314;
    v439[62] = @"JPG WR";
    v313 = [MEMORY[0x277D3F198] sharedInstance];
    v312 = [v313 commonTypeDict_IntegerFormat];
    v440[62] = v312;
    v439[63] = @"MSR DCS";
    v311 = [MEMORY[0x277D3F198] sharedInstance];
    v310 = [v311 commonTypeDict_IntegerFormat];
    v440[63] = v310;
    v439[64] = @"MSR RD";
    v309 = [MEMORY[0x277D3F198] sharedInstance];
    v308 = [v309 commonTypeDict_IntegerFormat];
    v440[64] = v308;
    v439[65] = @"MSR WR";
    v307 = [MEMORY[0x277D3F198] sharedInstance];
    v306 = [v307 commonTypeDict_IntegerFormat];
    v440[65] = v306;
    v439[66] = @"PCIE RD";
    v305 = [MEMORY[0x277D3F198] sharedInstance];
    v304 = [v305 commonTypeDict_IntegerFormat];
    v440[66] = v304;
    v439[67] = @"PCIE WR";
    v303 = [MEMORY[0x277D3F198] sharedInstance];
    v302 = [v303 commonTypeDict_IntegerFormat];
    v440[67] = v302;
    v439[68] = @"SBR RD";
    v301 = [MEMORY[0x277D3F198] sharedInstance];
    v300 = [v301 commonTypeDict_IntegerFormat];
    v440[68] = v300;
    v439[69] = @"SBR WR";
    v299 = [MEMORY[0x277D3F198] sharedInstance];
    v298 = [v299 commonTypeDict_IntegerFormat];
    v440[69] = v298;
    v439[70] = @"SEP RD";
    v297 = [MEMORY[0x277D3F198] sharedInstance];
    v296 = [v297 commonTypeDict_IntegerFormat];
    v440[70] = v296;
    v439[71] = @"SEP WR";
    v295 = [MEMORY[0x277D3F198] sharedInstance];
    v294 = [v295 commonTypeDict_IntegerFormat];
    v440[71] = v294;
    v439[72] = @"SOC RD";
    v293 = [MEMORY[0x277D3F198] sharedInstance];
    v292 = [v293 commonTypeDict_IntegerFormat];
    v440[72] = v292;
    v439[73] = @"SOC WR";
    v291 = [MEMORY[0x277D3F198] sharedInstance];
    v290 = [v291 commonTypeDict_IntegerFormat];
    v440[73] = v290;
    v439[74] = @"VDEC DCS";
    v289 = [MEMORY[0x277D3F198] sharedInstance];
    v288 = [v289 commonTypeDict_IntegerFormat];
    v440[74] = v288;
    v439[75] = @"VDEC RD";
    v287 = [MEMORY[0x277D3F198] sharedInstance];
    v286 = [v287 commonTypeDict_IntegerFormat];
    v440[75] = v286;
    v439[76] = @"VDEC WR";
    v285 = [MEMORY[0x277D3F198] sharedInstance];
    v284 = [v285 commonTypeDict_IntegerFormat];
    v440[76] = v284;
    v439[77] = @"VENC DCS";
    v283 = [MEMORY[0x277D3F198] sharedInstance];
    v282 = [v283 commonTypeDict_IntegerFormat];
    v440[77] = v282;
    v439[78] = @"VENC RD";
    v281 = [MEMORY[0x277D3F198] sharedInstance];
    v280 = [v281 commonTypeDict_IntegerFormat];
    v440[78] = v280;
    v439[79] = @"VENC WR";
    v279 = [MEMORY[0x277D3F198] sharedInstance];
    v278 = [v279 commonTypeDict_IntegerFormat];
    v440[79] = v278;
    v439[80] = @"DISPEXT RD";
    v277 = [MEMORY[0x277D3F198] sharedInstance];
    v276 = [v277 commonTypeDict_IntegerFormat];
    v440[80] = v276;
    v439[81] = @"DISPEXT WR";
    v275 = [MEMORY[0x277D3F198] sharedInstance];
    v274 = [v275 commonTypeDict_IntegerFormat];
    v440[81] = v274;
    v439[82] = @"USB RD";
    v273 = [MEMORY[0x277D3F198] sharedInstance];
    v272 = [v273 commonTypeDict_IntegerFormat];
    v440[82] = v272;
    v439[83] = @"USB WR";
    v271 = [MEMORY[0x277D3F198] sharedInstance];
    v270 = [v271 commonTypeDict_IntegerFormat];
    v440[83] = v270;
    v439[84] = @"ANE DCS RD";
    v269 = [MEMORY[0x277D3F198] sharedInstance];
    v268 = [v269 commonTypeDict_IntegerFormat];
    v440[84] = v268;
    v439[85] = @"ANE DCS WR";
    v267 = [MEMORY[0x277D3F198] sharedInstance];
    v266 = [v267 commonTypeDict_IntegerFormat];
    v440[85] = v266;
    v439[86] = @"ANS2 DCS RD";
    v265 = [MEMORY[0x277D3F198] sharedInstance];
    v264 = [v265 commonTypeDict_IntegerFormat];
    v440[86] = v264;
    v439[87] = @"ANS2 DCS WR";
    v263 = [MEMORY[0x277D3F198] sharedInstance];
    v262 = [v263 commonTypeDict_IntegerFormat];
    v440[87] = v262;
    v439[88] = @"ANS2 RD";
    v261 = [MEMORY[0x277D3F198] sharedInstance];
    v260 = [v261 commonTypeDict_IntegerFormat];
    v440[88] = v260;
    v439[89] = @"ANS2 WR";
    v259 = [MEMORY[0x277D3F198] sharedInstance];
    v258 = [v259 commonTypeDict_IntegerFormat];
    v440[89] = v258;
    v439[90] = @"DCS PD CYCLES";
    v257 = [MEMORY[0x277D3F198] sharedInstance];
    v256 = [v257 commonTypeDict_IntegerFormat];
    v440[90] = v256;
    v439[91] = @"DCS SR CYCLES";
    v255 = [MEMORY[0x277D3F198] sharedInstance];
    v254 = [v255 commonTypeDict_IntegerFormat];
    v440[91] = v254;
    v439[92] = @"DISP DCS RD";
    v253 = [MEMORY[0x277D3F198] sharedInstance];
    v252 = [v253 commonTypeDict_IntegerFormat];
    v440[92] = v252;
    v439[93] = @"DISP DCS WR";
    v251 = [MEMORY[0x277D3F198] sharedInstance];
    v250 = [v251 commonTypeDict_IntegerFormat];
    v440[93] = v250;
    v439[94] = @"ISP DCS RD";
    v249 = [MEMORY[0x277D3F198] sharedInstance];
    v248 = [v249 commonTypeDict_IntegerFormat];
    v440[94] = v248;
    v439[95] = @"ISP DCS WR";
    v247 = [MEMORY[0x277D3F198] sharedInstance];
    v246 = [v247 commonTypeDict_IntegerFormat];
    v440[95] = v246;
    v439[96] = @"JPG DCS RD";
    v245 = [MEMORY[0x277D3F198] sharedInstance];
    v244 = [v245 commonTypeDict_IntegerFormat];
    v440[96] = v244;
    v439[97] = @"JPG DCS WR";
    v243 = [MEMORY[0x277D3F198] sharedInstance];
    v242 = [v243 commonTypeDict_IntegerFormat];
    v440[97] = v242;
    v439[98] = @"MSR DCS RD";
    v241 = [MEMORY[0x277D3F198] sharedInstance];
    v240 = [v241 commonTypeDict_IntegerFormat];
    v440[98] = v240;
    v439[99] = @"MSR DCS WR";
    v239 = [MEMORY[0x277D3F198] sharedInstance];
    v238 = [v239 commonTypeDict_IntegerFormat];
    v440[99] = v238;
    v439[100] = @"NRT DISP RD";
    v237 = [MEMORY[0x277D3F198] sharedInstance];
    v236 = [v237 commonTypeDict_IntegerFormat];
    v440[100] = v236;
    v439[101] = @"NRT DISP WR";
    v235 = [MEMORY[0x277D3F198] sharedInstance];
    v234 = [v235 commonTypeDict_IntegerFormat];
    v440[101] = v234;
    v439[102] = @"RT ISP RD";
    v233 = [MEMORY[0x277D3F198] sharedInstance];
    v232 = [v233 commonTypeDict_IntegerFormat];
    v440[102] = v232;
    v439[103] = @"RT ISP WR";
    v231 = [MEMORY[0x277D3F198] sharedInstance];
    v230 = [v231 commonTypeDict_IntegerFormat];
    v440[103] = v230;
    v439[104] = @"NRT ISP RD";
    v229 = [MEMORY[0x277D3F198] sharedInstance];
    v228 = [v229 commonTypeDict_IntegerFormat];
    v440[104] = v228;
    v439[105] = @"NRT ISP WR";
    v227 = [MEMORY[0x277D3F198] sharedInstance];
    v226 = [v227 commonTypeDict_IntegerFormat];
    v440[105] = v226;
    v439[106] = @"PCIE DCS RD";
    v225 = [MEMORY[0x277D3F198] sharedInstance];
    v224 = [v225 commonTypeDict_IntegerFormat];
    v440[106] = v224;
    v439[107] = @"PCIE DCS WR";
    v223 = [MEMORY[0x277D3F198] sharedInstance];
    v222 = [v223 commonTypeDict_IntegerFormat];
    v440[107] = v222;
    v439[108] = @"RT DISP RD";
    v221 = [MEMORY[0x277D3F198] sharedInstance];
    v220 = [v221 commonTypeDict_IntegerFormat];
    v440[108] = v220;
    v439[109] = @"RT DISP WR";
    v219 = [MEMORY[0x277D3F198] sharedInstance];
    v218 = [v219 commonTypeDict_IntegerFormat];
    v440[109] = v218;
    v439[110] = @"SBR DCS RD";
    v217 = [MEMORY[0x277D3F198] sharedInstance];
    v216 = [v217 commonTypeDict_IntegerFormat];
    v440[110] = v216;
    v439[111] = @"SBR DCS WR";
    v215 = [MEMORY[0x277D3F198] sharedInstance];
    v214 = [v215 commonTypeDict_IntegerFormat];
    v440[111] = v214;
    v439[112] = @"USB DCS RD";
    v213 = [MEMORY[0x277D3F198] sharedInstance];
    v212 = [v213 commonTypeDict_IntegerFormat];
    v440[112] = v212;
    v439[113] = @"USB DCS WR";
    v211 = [MEMORY[0x277D3F198] sharedInstance];
    v210 = [v211 commonTypeDict_IntegerFormat];
    v440[113] = v210;
    v439[114] = @"VDEC DCS RD";
    v209 = [MEMORY[0x277D3F198] sharedInstance];
    v208 = [v209 commonTypeDict_IntegerFormat];
    v440[114] = v208;
    v439[115] = @"VDEC DCS WR";
    v207 = [MEMORY[0x277D3F198] sharedInstance];
    v206 = [v207 commonTypeDict_IntegerFormat];
    v440[115] = v206;
    v439[116] = @"VENC DCS RD";
    v205 = [MEMORY[0x277D3F198] sharedInstance];
    v204 = [v205 commonTypeDict_IntegerFormat];
    v440[116] = v204;
    v439[117] = @"VENC DCS WR";
    v203 = [MEMORY[0x277D3F198] sharedInstance];
    v202 = [v203 commonTypeDict_IntegerFormat];
    v440[117] = v202;
    v439[118] = @"ECPU DCS RD";
    v201 = [MEMORY[0x277D3F198] sharedInstance];
    v200 = [v201 commonTypeDict_IntegerFormat];
    v440[118] = v200;
    v439[119] = @"ECPU DCS WR";
    v199 = [MEMORY[0x277D3F198] sharedInstance];
    v198 = [v199 commonTypeDict_IntegerFormat];
    v440[119] = v198;
    v439[120] = @"ECPU RD";
    v197 = [MEMORY[0x277D3F198] sharedInstance];
    v196 = [v197 commonTypeDict_IntegerFormat];
    v440[120] = v196;
    v439[121] = @"ECPU WR";
    v195 = [MEMORY[0x277D3F198] sharedInstance];
    v194 = [v195 commonTypeDict_IntegerFormat];
    v440[121] = v194;
    v439[122] = @"GFX DCS RD";
    v193 = [MEMORY[0x277D3F198] sharedInstance];
    v192 = [v193 commonTypeDict_IntegerFormat];
    v440[122] = v192;
    v439[123] = @"GFX DCS WR";
    v191 = [MEMORY[0x277D3F198] sharedInstance];
    v190 = [v191 commonTypeDict_IntegerFormat];
    v440[123] = v190;
    v439[124] = @"PCPU DCS RD";
    v189 = [MEMORY[0x277D3F198] sharedInstance];
    v188 = [v189 commonTypeDict_IntegerFormat];
    v440[124] = v188;
    v439[125] = @"PCPU DCS WR";
    v187 = [MEMORY[0x277D3F198] sharedInstance];
    v186 = [v187 commonTypeDict_IntegerFormat];
    v440[125] = v186;
    v439[126] = @"PCPU RD";
    v185 = [MEMORY[0x277D3F198] sharedInstance];
    v184 = [v185 commonTypeDict_IntegerFormat];
    v440[126] = v184;
    v439[127] = @"PCPU WR";
    v183 = [MEMORY[0x277D3F198] sharedInstance];
    v182 = [v183 commonTypeDict_IntegerFormat];
    v440[127] = v182;
    v439[128] = @"ANS3 DCS RD";
    v181 = [MEMORY[0x277D3F198] sharedInstance];
    v180 = [v181 commonTypeDict_IntegerFormat];
    v440[128] = v180;
    v439[129] = @"ANS3 DCS WR";
    v179 = [MEMORY[0x277D3F198] sharedInstance];
    v178 = [v179 commonTypeDict_IntegerFormat];
    v440[129] = v178;
    v439[130] = @"ANS3 RD";
    v177 = [MEMORY[0x277D3F198] sharedInstance];
    v176 = [v177 commonTypeDict_IntegerFormat];
    v440[130] = v176;
    v439[131] = @"ANS3 WR";
    v175 = [MEMORY[0x277D3F198] sharedInstance];
    v174 = [v175 commonTypeDict_IntegerFormat];
    v440[131] = v174;
    v439[132] = @"FABRIC RD";
    v173 = [MEMORY[0x277D3F198] sharedInstance];
    v172 = [v173 commonTypeDict_IntegerFormat];
    v440[132] = v172;
    v439[133] = @"FABRIC WR";
    v171 = [MEMORY[0x277D3F198] sharedInstance];
    v170 = [v171 commonTypeDict_IntegerFormat];
    v440[133] = v170;
    v439[134] = @"GFX0 RD";
    v169 = [MEMORY[0x277D3F198] sharedInstance];
    v168 = [v169 commonTypeDict_IntegerFormat];
    v440[134] = v168;
    v439[135] = @"GFX0 WR";
    v167 = [MEMORY[0x277D3F198] sharedInstance];
    v166 = [v167 commonTypeDict_IntegerFormat];
    v440[135] = v166;
    v439[136] = @"GFXC";
    v165 = [MEMORY[0x277D3F198] sharedInstance];
    v164 = [v165 commonTypeDict_IntegerFormat];
    v440[136] = v164;
    v439[137] = @"GFXC RD";
    v163 = [MEMORY[0x277D3F198] sharedInstance];
    v162 = [v163 commonTypeDict_IntegerFormat];
    v440[137] = v162;
    v439[138] = @"GFXC WR";
    v161 = [MEMORY[0x277D3F198] sharedInstance];
    v160 = [v161 commonTypeDict_IntegerFormat];
    v440[138] = v160;
    v439[139] = @"GFXC DCS RD";
    v159 = [MEMORY[0x277D3F198] sharedInstance];
    v158 = [v159 commonTypeDict_IntegerFormat];
    v440[139] = v158;
    v439[140] = @"GFXC DCS WR";
    v157 = [MEMORY[0x277D3F198] sharedInstance];
    v156 = [v157 commonTypeDict_IntegerFormat];
    v440[140] = v156;
    v439[141] = @"GRT DISP RD";
    v155 = [MEMORY[0x277D3F198] sharedInstance];
    v154 = [v155 commonTypeDict_IntegerFormat];
    v440[141] = v154;
    v439[142] = @"JPG";
    v153 = [MEMORY[0x277D3F198] sharedInstance];
    v152 = [v153 commonTypeDict_IntegerFormat];
    v440[142] = v152;
    v439[143] = @"MSR";
    v151 = [MEMORY[0x277D3F198] sharedInstance];
    v150 = [v151 commonTypeDict_IntegerFormat];
    v440[143] = v150;
    v439[144] = @"NUB_SMC_MTP";
    v149 = [MEMORY[0x277D3F198] sharedInstance];
    v148 = [v149 commonTypeDict_IntegerFormat];
    v440[144] = v148;
    v439[145] = @"NUB_SMC_MTP RD";
    v147 = [MEMORY[0x277D3F198] sharedInstance];
    v146 = [v147 commonTypeDict_IntegerFormat];
    v440[145] = v146;
    v439[146] = @"NUB_SMC_MTP WR";
    v145 = [MEMORY[0x277D3F198] sharedInstance];
    v144 = [v145 commonTypeDict_IntegerFormat];
    v440[146] = v144;
    v439[147] = @"PD duration(usec)";
    v143 = [MEMORY[0x277D3F198] sharedInstance];
    v142 = [v143 commonTypeDict_IntegerFormat];
    v440[147] = v142;
    v439[148] = @"SIO_PMS_AOP";
    v141 = [MEMORY[0x277D3F198] sharedInstance];
    v140 = [v141 commonTypeDict_IntegerFormat];
    v440[148] = v140;
    v439[149] = @"SIO_PMS_AOP RD";
    v139 = [MEMORY[0x277D3F198] sharedInstance];
    v138 = [v139 commonTypeDict_IntegerFormat];
    v440[149] = v138;
    v439[150] = @"SIO_PMS_AOP WR";
    v137 = [MEMORY[0x277D3F198] sharedInstance];
    v136 = [v137 commonTypeDict_IntegerFormat];
    v440[150] = v136;
    v439[151] = @"SR duration(usec)";
    v135 = [MEMORY[0x277D3F198] sharedInstance];
    v134 = [v135 commonTypeDict_IntegerFormat];
    v440[151] = v134;
    v439[152] = @"SOC0 RD";
    v133 = [MEMORY[0x277D3F198] sharedInstance];
    v132 = [v133 commonTypeDict_IntegerFormat];
    v440[152] = v132;
    v439[153] = @"SOC0 WR";
    v131 = [MEMORY[0x277D3F198] sharedInstance];
    v130 = [v131 commonTypeDict_IntegerFormat];
    v440[153] = v130;
    v439[154] = @"FABRIC";
    v129 = [MEMORY[0x277D3F198] sharedInstance];
    v128 = [v129 commonTypeDict_IntegerFormat];
    v440[154] = v128;
    v439[155] = @"SEP DCS WR";
    v127 = [MEMORY[0x277D3F198] sharedInstance];
    v126 = [v127 commonTypeDict_IntegerFormat];
    v440[155] = v126;
    v439[156] = @"SEP DCS RD";
    v125 = [MEMORY[0x277D3F198] sharedInstance];
    v124 = [v125 commonTypeDict_IntegerFormat];
    v440[156] = v124;
    v439[157] = @"SEP";
    v123 = [MEMORY[0x277D3F198] sharedInstance];
    v122 = [v123 commonTypeDict_IntegerFormat];
    v440[157] = v122;
    v439[158] = @"SCODEC RT RD";
    v121 = [MEMORY[0x277D3F198] sharedInstance];
    v120 = [v121 commonTypeDict_IntegerFormat];
    v440[158] = v120;
    v439[159] = @"SCODEC RT WR";
    v119 = [MEMORY[0x277D3F198] sharedInstance];
    v118 = [v119 commonTypeDict_IntegerFormat];
    v440[159] = v118;
    v439[160] = @"SCODEC DCS RD";
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_IntegerFormat];
    v440[160] = v116;
    v439[161] = @"SCODEC DCS WR";
    v115 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v115 commonTypeDict_IntegerFormat];
    v440[161] = v114;
    v439[162] = @"SCODEC NRT RD";
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_IntegerFormat];
    v440[162] = v112;
    v439[163] = @"SCODEC NRT WR";
    v111 = [MEMORY[0x277D3F198] sharedInstance];
    v110 = [v111 commonTypeDict_IntegerFormat];
    v440[163] = v110;
    v439[164] = @"DISPDFR RT RD";
    v109 = [MEMORY[0x277D3F198] sharedInstance];
    v108 = [v109 commonTypeDict_IntegerFormat];
    v440[164] = v108;
    v439[165] = @"DISPDFR RT WR";
    v107 = [MEMORY[0x277D3F198] sharedInstance];
    v106 = [v107 commonTypeDict_IntegerFormat];
    v440[165] = v106;
    v439[166] = @"DISPDFR NRT RD";
    v105 = [MEMORY[0x277D3F198] sharedInstance];
    v104 = [v105 commonTypeDict_IntegerFormat];
    v440[166] = v104;
    v439[167] = @"DISPDFR NRT WR";
    v103 = [MEMORY[0x277D3F198] sharedInstance];
    v102 = [v103 commonTypeDict_IntegerFormat];
    v440[167] = v102;
    v439[168] = @"DISPDFR DCS RD";
    v101 = [MEMORY[0x277D3F198] sharedInstance];
    v100 = [v101 commonTypeDict_IntegerFormat];
    v440[168] = v100;
    v439[169] = @"DISPDFR DCS WR";
    v99 = [MEMORY[0x277D3F198] sharedInstance];
    v98 = [v99 commonTypeDict_IntegerFormat];
    v440[169] = v98;
    v439[170] = @"DISPEXT RT RD";
    v97 = [MEMORY[0x277D3F198] sharedInstance];
    v96 = [v97 commonTypeDict_IntegerFormat];
    v440[170] = v96;
    v439[171] = @"DISPEXT RT WR";
    v95 = [MEMORY[0x277D3F198] sharedInstance];
    v94 = [v95 commonTypeDict_IntegerFormat];
    v440[171] = v94;
    v439[172] = @"DISPEXT NRT RD";
    v93 = [MEMORY[0x277D3F198] sharedInstance];
    v92 = [v93 commonTypeDict_IntegerFormat];
    v440[172] = v92;
    v439[173] = @"DISPEXT NRT WR";
    v91 = [MEMORY[0x277D3F198] sharedInstance];
    v90 = [v91 commonTypeDict_IntegerFormat];
    v440[173] = v90;
    v439[174] = @"DISPEXT DCS RD";
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_IntegerFormat];
    v440[174] = v88;
    v439[175] = @"DISPEXT DCS WR";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_IntegerFormat];
    v440[175] = v86;
    v439[176] = @"ANS RD";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v85 commonTypeDict_IntegerFormat];
    v440[176] = v84;
    v439[177] = @"ANS WR";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_IntegerFormat];
    v440[177] = v82;
    v439[178] = @"ANS DCS RD";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_IntegerFormat];
    v440[178] = v80;
    v439[179] = @"ANS DCS WR";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_IntegerFormat];
    v440[179] = v78;
    v439[180] = @"GFXR0 RD";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_IntegerFormat];
    v440[180] = v76;
    v439[181] = @"GFXW0 WR";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_IntegerFormat];
    v440[181] = v74;
    v439[182] = @"GFXR1 RD";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v440[182] = v72;
    v439[183] = @"GFXW1 WR";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_IntegerFormat];
    v440[183] = v70;
    v439[184] = @"JPEG DCS RD";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v440[184] = v68;
    v439[185] = @"JPEG DCS WR";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_IntegerFormat];
    v440[185] = v66;
    v439[186] = @"JPEG RD";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v440[186] = v64;
    v439[187] = @"JPEG WR";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_IntegerFormat];
    v440[187] = v62;
    v439[188] = @"NUB_SMC_MTP DCS RD";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v440[188] = v60;
    v439[189] = @"NUB_SMC_MTP DCS WR";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_IntegerFormat];
    v440[189] = v58;
    v439[190] = @"PRORES";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v440[190] = v56;
    v439[191] = @"SIO_PMS_AOP DCS RD";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_IntegerFormat];
    v440[191] = v54;
    v439[192] = @"SIO_PMS_AOP DCS WR";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v440[192] = v52;
    v439[193] = @"ATC DCS RD";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_IntegerFormat];
    v440[193] = v50;
    v439[194] = @"ATC DCS WR";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v440[194] = v48;
    v439[195] = @"ATC RD";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v440[195] = v46;
    v439[196] = @"ATC WR";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v440[196] = v44;
    v439[197] = @"AVD DCS RD";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_IntegerFormat];
    v440[197] = v42;
    v439[198] = @"AVD DCS WR";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v440[198] = v40;
    v439[199] = @"AVD RD";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_IntegerFormat];
    v440[199] = v38;
    v439[200] = @"AVD WR";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v440[200] = v36;
    v439[201] = @"AVE DCS RD";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v440[201] = v34;
    v439[202] = @"AVE DCS WR";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v440[202] = v32;
    v439[203] = @"AVE RD";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v440[203] = v30;
    v439[204] = @"AVE WR";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v440[204] = v28;
    v439[205] = @"NRT DISPEXT RD";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v440[205] = v26;
    v439[206] = @"NRT DISPEXT WR";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v440[206] = v24;
    v439[207] = @"RT DISPEXT RD";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v440[207] = v22;
    v439[208] = @"RT DISPEXT WR";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v440[208] = v20;
    v439[209] = @"SIO DCS RD";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v440[209] = v18;
    v439[210] = @"SIO DCS WR";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v440[210] = v16;
    v439[211] = @"SIO RD";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v440[211] = v5;
    v439[212] = @"SIO WR";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v440[212] = v7;
    v439[213] = @"SOC0NRO RD";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v440[213] = v9;
    v439[214] = @"SOC0NRO WR";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v440[214] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v440 forKeys:v439 count:215];
    v444[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v444 forKeys:v443 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionAppleEmbeddedPCIELinkStates
{
  v142[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v141[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v139[0] = *MEMORY[0x277D3F568];
    v139[1] = v2;
    v140[0] = &unk_282C1C068;
    v140[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v139[2] = *MEMORY[0x277D3F4F8];
    v139[3] = v3;
    v140[2] = MEMORY[0x277CBEC28];
    v140[3] = MEMORY[0x277CBEC38];
    v136 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:4];
    v142[0] = v136;
    v141[1] = *MEMORY[0x277D3F540];
    v137[0] = @"Port 0 Link States_L0";
    v135 = [MEMORY[0x277D3F198] sharedInstance];
    v134 = [v135 commonTypeDict_RealFormat];
    v138[0] = v134;
    v137[1] = @"Port 0 Link States_L1.0";
    v133 = [MEMORY[0x277D3F198] sharedInstance];
    v132 = [v133 commonTypeDict_RealFormat];
    v138[1] = v132;
    v137[2] = @"Port 0 Link States_L1.1";
    v131 = [MEMORY[0x277D3F198] sharedInstance];
    v130 = [v131 commonTypeDict_RealFormat];
    v138[2] = v130;
    v137[3] = @"Port 0 Link States_L1.2";
    v129 = [MEMORY[0x277D3F198] sharedInstance];
    v128 = [v129 commonTypeDict_RealFormat];
    v138[3] = v128;
    v137[4] = @"Port 0 Link States_L0_Transitions";
    v127 = [MEMORY[0x277D3F198] sharedInstance];
    v126 = [v127 commonTypeDict_IntegerFormat];
    v138[4] = v126;
    v137[5] = @"Port 0 Link States_L1.0_Transitions";
    v125 = [MEMORY[0x277D3F198] sharedInstance];
    v124 = [v125 commonTypeDict_IntegerFormat];
    v138[5] = v124;
    v137[6] = @"Port 0 Link States_L1.1_Transitions";
    v123 = [MEMORY[0x277D3F198] sharedInstance];
    v122 = [v123 commonTypeDict_IntegerFormat];
    v138[6] = v122;
    v137[7] = @"Port 0 Link States_L1.2_Transitions";
    v121 = [MEMORY[0x277D3F198] sharedInstance];
    v120 = [v121 commonTypeDict_IntegerFormat];
    v138[7] = v120;
    v137[8] = @"Port 1 Link States_L0";
    v119 = [MEMORY[0x277D3F198] sharedInstance];
    v118 = [v119 commonTypeDict_RealFormat];
    v138[8] = v118;
    v137[9] = @"Port 1 Link States_L1.0";
    v117 = [MEMORY[0x277D3F198] sharedInstance];
    v116 = [v117 commonTypeDict_RealFormat];
    v138[9] = v116;
    v137[10] = @"Port 1 Link States_L1.1";
    v115 = [MEMORY[0x277D3F198] sharedInstance];
    v114 = [v115 commonTypeDict_RealFormat];
    v138[10] = v114;
    v137[11] = @"Port 1 Link States_L1.2";
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_RealFormat];
    v138[11] = v112;
    v137[12] = @"Port 1 Link States_L0_Transitions";
    v111 = [MEMORY[0x277D3F198] sharedInstance];
    v110 = [v111 commonTypeDict_IntegerFormat];
    v138[12] = v110;
    v137[13] = @"Port 1 Link States_L1.0_Transitions";
    v109 = [MEMORY[0x277D3F198] sharedInstance];
    v108 = [v109 commonTypeDict_IntegerFormat];
    v138[13] = v108;
    v137[14] = @"Port 1 Link States_L1.1_Transitions";
    v107 = [MEMORY[0x277D3F198] sharedInstance];
    v106 = [v107 commonTypeDict_IntegerFormat];
    v138[14] = v106;
    v137[15] = @"Port 1 Link States_L1.2_Transitions";
    v105 = [MEMORY[0x277D3F198] sharedInstance];
    v104 = [v105 commonTypeDict_IntegerFormat];
    v138[15] = v104;
    v137[16] = @"Port 2 Link States_L0";
    v103 = [MEMORY[0x277D3F198] sharedInstance];
    v102 = [v103 commonTypeDict_RealFormat];
    v138[16] = v102;
    v137[17] = @"Port 2 Link States_L1.0";
    v101 = [MEMORY[0x277D3F198] sharedInstance];
    v100 = [v101 commonTypeDict_RealFormat];
    v138[17] = v100;
    v137[18] = @"Port 2 Link States_L1.1";
    v99 = [MEMORY[0x277D3F198] sharedInstance];
    v98 = [v99 commonTypeDict_RealFormat];
    v138[18] = v98;
    v137[19] = @"Port 2 Link States_L1.2";
    v97 = [MEMORY[0x277D3F198] sharedInstance];
    v96 = [v97 commonTypeDict_RealFormat];
    v138[19] = v96;
    v137[20] = @"Port 2 Link States_L0_Transitions";
    v95 = [MEMORY[0x277D3F198] sharedInstance];
    v94 = [v95 commonTypeDict_IntegerFormat];
    v138[20] = v94;
    v137[21] = @"Port 2 Link States_L1.0_Transitions";
    v93 = [MEMORY[0x277D3F198] sharedInstance];
    v92 = [v93 commonTypeDict_IntegerFormat];
    v138[21] = v92;
    v137[22] = @"Port 2 Link States_L1.1_Transitions";
    v91 = [MEMORY[0x277D3F198] sharedInstance];
    v90 = [v91 commonTypeDict_IntegerFormat];
    v138[22] = v90;
    v137[23] = @"Port 2 Link States_L1.2_Transitions";
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_IntegerFormat];
    v138[23] = v88;
    v137[24] = @"Port 3 Link States_L0";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_RealFormat];
    v138[24] = v86;
    v137[25] = @"Port 3 Link States_L1.0";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v85 commonTypeDict_RealFormat];
    v138[25] = v84;
    v137[26] = @"Port 3 Link States_L1.1";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_RealFormat];
    v138[26] = v82;
    v137[27] = @"Port 3 Link States_L1.2";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_RealFormat];
    v138[27] = v80;
    v137[28] = @"Port 3 Link States_L0_Transitions";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_IntegerFormat];
    v138[28] = v78;
    v137[29] = @"Port 3 Link States_L1.0_Transitions";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_IntegerFormat];
    v138[29] = v76;
    v137[30] = @"Port 3 Link States_L1.1_Transitions";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_IntegerFormat];
    v138[30] = v74;
    v137[31] = @"Port 3 Link States_L1.2_Transitions";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v138[31] = v72;
    v137[32] = @"apciec0 Link States_L0";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_RealFormat];
    v138[32] = v70;
    v137[33] = @"apciec0 Link States_L1.0";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_RealFormat];
    v138[33] = v68;
    v137[34] = @"apciec0 Link States_L1.1";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_RealFormat];
    v138[34] = v66;
    v137[35] = @"apciec0 Link States_L1.2";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_RealFormat];
    v138[35] = v64;
    v137[36] = @"apciec0 Link States_L0_Transitions";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_RealFormat];
    v138[36] = v62;
    v137[37] = @"apciec0 Link States_L1.0_Transitions";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_RealFormat];
    v138[37] = v60;
    v137[38] = @"apciec0 Link States_L1.1_Transitions";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_RealFormat];
    v138[38] = v58;
    v137[39] = @"apciec0 Link States_L1.2_Transitions";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_RealFormat];
    v138[39] = v56;
    v137[40] = @"apciec1 Link States_L0";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_RealFormat];
    v138[40] = v54;
    v137[41] = @"apciec1 Link States_L1.0";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_RealFormat];
    v138[41] = v52;
    v137[42] = @"apciec1 Link States_L1.1";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v138[42] = v50;
    v137[43] = @"apciec1 Link States_L1.2";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_RealFormat];
    v138[43] = v48;
    v137[44] = @"apciec1 Link States_L0_Transitions";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v138[44] = v46;
    v137[45] = @"apciec1 Link States_L1.0_Transitions";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_RealFormat];
    v138[45] = v44;
    v137[46] = @"apciec1 Link States_L1.1_Transitions";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v138[46] = v42;
    v137[47] = @"apciec1 Link States_L1.2_Transitions";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_RealFormat];
    v138[47] = v40;
    v137[48] = @"apciec2 Link States_L0";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v138[48] = v38;
    v137[49] = @"apciec2 Link States_L1.0";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_RealFormat];
    v138[49] = v36;
    v137[50] = @"apciec2 Link States_L1.1";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v138[50] = v34;
    v137[51] = @"apciec2 Link States_L1.2";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_RealFormat];
    v138[51] = v32;
    v137[52] = @"apciec2 Link States_L0_Transitions";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v138[52] = v30;
    v137[53] = @"apciec2 Link States_L1.0_Transitions";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_RealFormat];
    v138[53] = v28;
    v137[54] = @"apciec2 Link States_L1.1_Transitions";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v138[54] = v26;
    v137[55] = @"apciec2 Link States_L1.2_Transitions";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_RealFormat];
    v138[55] = v24;
    v137[56] = @"apciec3 Link States_L0";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v138[56] = v22;
    v137[57] = @"apciec3 Link States_L1.0";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_RealFormat];
    v138[57] = v20;
    v137[58] = @"apciec3 Link States_L1.1";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v138[58] = v18;
    v137[59] = @"apciec3 Link States_L1.2";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat];
    v138[59] = v16;
    v137[60] = @"apciec3 Link States_L0_Transitions";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v138[60] = v5;
    v137[61] = @"apciec3 Link States_L1.0_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v138[61] = v7;
    v137[62] = @"apciec3 Link States_L1.1_Transitions";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v138[62] = v9;
    v137[63] = @"apciec3 Link States_L1.2_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_RealFormat];
    v138[63] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:64];
    v142[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionWifiChipHSICActivity
{
  v30[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v29[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v27[0] = *MEMORY[0x277D3F568];
    v27[1] = v2;
    v28[0] = &unk_282C1C028;
    v28[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v27[2] = *MEMORY[0x277D3F4F8];
    v27[3] = v3;
    v28[2] = MEMORY[0x277CBEC28];
    v28[3] = MEMORY[0x277CBEC38];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
    v30[0] = v24;
    v29[1] = *MEMORY[0x277D3F540];
    v25[0] = @"SampleTime";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat_withUnit_s];
    v26[0] = v22;
    v25[1] = @"        Suspend Count";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_RealFormat];
    v26[1] = v20;
    v25[2] = @"        Suspend Dur  ";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v26[2] = v18;
    v25[3] = @"         Resume Count";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat];
    v26[3] = v16;
    v25[4] = @"     Disconnect Count";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v26[4] = v5;
    v25[5] = @"     Disconnect Dur  ";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v26[5] = v7;
    v25[6] = @"      Reconnect Count";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v26[6] = v9;
    v25[7] = @"         Active Dur  ";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_RealFormat];
    v26[7] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];
    v30[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionWifiChipTxStatCounters
{
  v40[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v39[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v37[0] = *MEMORY[0x277D3F568];
    v37[1] = v2;
    v38[0] = &unk_282C1C028;
    v38[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v37[2] = *MEMORY[0x277D3F4F8];
    v37[3] = v3;
    v38[2] = MEMORY[0x277CBEC28];
    v38[3] = MEMORY[0x277CBEC38];
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
    v40[0] = v34;
    v39[1] = *MEMORY[0x277D3F540];
    v35[0] = @"SampleTime";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_RealFormat_withUnit_s];
    v36[0] = v32;
    v35[1] = @" tx data frames           ";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v36[1] = v30;
    v35[2] = @" tx data bytes            ";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_RealFormat];
    v36[2] = v28;
    v35[3] = @" tx mac retransmits       ";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v36[3] = v26;
    v35[4] = @" tx data errors           ";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_RealFormat];
    v36[4] = v24;
    v35[5] = @" tx management frames     ";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v36[5] = v22;
    v35[6] = @" tx short preamble frames ";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_RealFormat];
    v36[6] = v20;
    v35[7] = @" tx status errors         ";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v36[7] = v18;
    v35[8] = @" tx out of buffers errors ";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat];
    v36[8] = v16;
    v35[9] = @" tx discard not associated";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v36[9] = v5;
    v35[10] = @" tx runt frames           ";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v36[10] = v7;
    v35[11] = @" tx header cache hit      ";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v36[11] = v9;
    v35[12] = @" tx header cache miss     ";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_RealFormat];
    v36[12] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:13];
    v40[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionWifiChipPCIeActivity
{
  v62[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v61[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v59[0] = *MEMORY[0x277D3F568];
    v59[1] = v2;
    v60[0] = &unk_282C1C028;
    v60[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v59[2] = *MEMORY[0x277D3F4F8];
    v59[3] = v3;
    v60[2] = MEMORY[0x277CBEC28];
    v60[3] = MEMORY[0x277CBEC38];
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:4];
    v62[0] = v56;
    v61[1] = *MEMORY[0x277D3F540];
    v57[0] = @"SampleTime";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_RealFormat_withUnit_s];
    v58[0] = v54;
    v57[1] = @" PCIe Active         Dur  ";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_RealFormat];
    v58[1] = v52;
    v57[2] = @" PCIe D3 Suspend     Count";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v58[2] = v50;
    v57[3] = @" PCIe D3 Suspend     Dur  ";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_RealFormat];
    v58[3] = v48;
    v57[4] = @" PCIe D0 Resume      Count";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v58[4] = v46;
    v57[5] = @" PCIe PERST Assert   Count";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_RealFormat];
    v58[5] = v44;
    v57[6] = @" PCIe PERST Deassert Count";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v58[6] = v42;
    v57[7] = @" PCIe PERST          Dur  ";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_RealFormat];
    v58[7] = v40;
    v57[8] = @" PCIe L0 Entry       Count";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v58[8] = v38;
    v57[9] = @" PCIe L0             Dur  ";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_RealFormat];
    v58[9] = v36;
    v57[10] = @" PCIe L1 Entry       Count";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v58[10] = v34;
    v57[11] = @" PCIe L1             Dur  ";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_RealFormat];
    v58[11] = v32;
    v57[12] = @" PCIe L1.1 Entry     Count";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v58[12] = v30;
    v57[13] = @" PCIe L1.1           Dur  ";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_RealFormat];
    v58[13] = v28;
    v57[14] = @" PCIe L1.2 Entry     Count";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v58[14] = v26;
    v57[15] = @" PCIe L1.2           Dur  ";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_RealFormat];
    v58[15] = v24;
    v57[16] = @" PCIe H2D Doorbell                   Count";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v58[16] = v22;
    v57[17] = @" PCIe D2H Doorbell                   Count";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_RealFormat];
    v58[17] = v20;
    v57[18] = @" PCIe Submissions                    Count";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v58[18] = v18;
    v57[19] = @" PCIe Completions                    Count";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat];
    v58[19] = v16;
    v57[20] = @" PCIe Rx Completions                 Count";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v58[20] = v5;
    v57[21] = @" PCIe Interrupt count Due to Rx Completion";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v58[21] = v7;
    v57[22] = @" PCIe Tx Completions                 Count";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v58[22] = v9;
    v57[23] = @" PCIe Interrupt count Due to Tx Completion";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_RealFormat];
    v58[23] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:24];
    v62[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionWifiChipRxStatCounters
{
  v48[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v47[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v45[0] = *MEMORY[0x277D3F568];
    v45[1] = v2;
    v46[0] = &unk_282C1C028;
    v46[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v45[2] = *MEMORY[0x277D3F4F8];
    v45[3] = v3;
    v46[2] = MEMORY[0x277CBEC28];
    v46[3] = MEMORY[0x277CBEC38];
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];
    v48[0] = v42;
    v47[1] = *MEMORY[0x277D3F540];
    v43[0] = @"SampleTime";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_RealFormat_withUnit_s];
    v44[0] = v40;
    v43[1] = @" rx data frames                     ";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v44[1] = v38;
    v43[2] = @" rx data bytes                      ";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_RealFormat];
    v44[2] = v36;
    v43[3] = @" rx data errors                     ";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v44[3] = v34;
    v43[4] = @" rx management frames               ";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_RealFormat];
    v44[4] = v32;
    v43[5] = @" rx out of buffers errors           ";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v44[5] = v30;
    v43[6] = @" rx non data frames in data channel ";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_RealFormat];
    v44[6] = v28;
    v43[7] = @" rx bad DS errors                   ";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v44[7] = v26;
    v43[8] = @" rx bad control or management frames";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_RealFormat];
    v44[8] = v24;
    v43[9] = @" rx fragmentation errors            ";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v44[9] = v22;
    v43[10] = @" tx runt frames                     ";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_RealFormat];
    v44[10] = v20;
    v43[11] = @" rx giant frames                    ";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v44[11] = v18;
    v43[12] = @" rx no scb error                    ";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat];
    v44[12] = v16;
    v43[13] = @" rx invalid frames                  ";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v44[13] = v5;
    v43[14] = @" rx frames with Invalid Src Mac     ";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v44[14] = v7;
    v43[15] = @" rx frames tossed for invalid da    ";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v44[15] = v9;
    v43[16] = @" rx frames filtered out             ";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_RealFormat];
    v44[16] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:17];
    v48[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionWifiChipConnectionActivity
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_282C1C028;
    v18[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v17[2] = *MEMORY[0x277D3F4F8];
    v17[3] = v3;
    v18[2] = MEMORY[0x277CBEC28];
    v18[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v20[0] = v4;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"SampleTime";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_s];
    v16[0] = v6;
    v15[1] = @"        Connections Made";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v16[1] = v8;
    v15[2] = @"        Connections  Dur";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionWifiChipAWDLActivity
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v23[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v21[0] = *MEMORY[0x277D3F568];
    v21[1] = v2;
    v22[0] = &unk_282C1C028;
    v22[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v21[2] = *MEMORY[0x277D3F4F8];
    v21[3] = v3;
    v22[2] = MEMORY[0x277CBEC28];
    v22[3] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v24[0] = v18;
    v23[1] = *MEMORY[0x277D3F540];
    v19[0] = @"SampleTime";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat_withUnit_s];
    v20[0] = v16;
    v19[1] = @" AWDL Radio Tx Dur";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v20[1] = v5;
    v19[2] = @" AWDL Radio Rx Dur";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v20[2] = v7;
    v19[3] = @" AWDL       Aw Dur";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v20[3] = v9;
    v19[4] = @" AWDL    PScan Dur";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v20[4] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v24[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionWifiChipPMAwakeActivity
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_282C1C028;
    v18[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v17[2] = *MEMORY[0x277D3F4F8];
    v17[3] = v3;
    v18[2] = MEMORY[0x277CBEC28];
    v18[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v20[0] = v4;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"SampleTime";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_s];
    v16[0] = v6;
    v15[1] = @"        PM Associated   Dur";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v16[1] = v8;
    v15[2] = @"        PM Unassociated Dur";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionWifiChipRadioPhyicalLayerActivity
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_282C1C028;
    v18[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v17[2] = *MEMORY[0x277D3F4F8];
    v17[3] = v3;
    v18[2] = MEMORY[0x277CBEC28];
    v18[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v20[0] = v4;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"SampleTime";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_s];
    v16[0] = v6;
    v15[1] = @"      Radio Tx Dur";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v16[1] = v8;
    v15[2] = @"      Radio Rx Dur";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionWifiChipScanActivity
{
  v40[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v39[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v37[0] = *MEMORY[0x277D3F568];
    v37[1] = v2;
    v38[0] = &unk_282C1C028;
    v38[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v37[2] = *MEMORY[0x277D3F4F8];
    v37[3] = v3;
    v38[2] = MEMORY[0x277CBEC28];
    v38[3] = MEMORY[0x277CBEC38];
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
    v40[0] = v34;
    v39[1] = *MEMORY[0x277D3F540];
    v35[0] = @"SampleTime";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_RealFormat_withUnit_s];
    v36[0] = v32;
    v35[1] = @"         User Scan Count";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v36[1] = v30;
    v35[2] = @"        User Scan Dur  ";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v36[2] = v28;
    v35[3] = @"       Assoc Scan Count";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v36[3] = v26;
    v35[4] = @"       Assoc Scan Dur  ";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v36[4] = v24;
    v35[5] = @"        Roam Scan Count";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v36[5] = v22;
    v35[6] = @"        Roam Scan Dur  ";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v36[6] = v20;
    v35[7] = @"   PNO BSSID Scan Count";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v36[7] = v18;
    v35[8] = @"   PNO BSSID Scan Dur  ";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v36[8] = v16;
    v35[9] = @"   PNO SSID  Scan Count";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v36[9] = v5;
    v35[10] = @"   PNO SSID  Scan Dur  ";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v36[10] = v7;
    v35[11] = @"       Other Scan Count";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v36[11] = v9;
    v35[12] = @"         Other Scan Dur";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v36[12] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:13];
    v40[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionWifiChipRxChipErrorCounters
{
  v36[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v35[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v33[0] = *MEMORY[0x277D3F568];
    v33[1] = v2;
    v34[0] = &unk_282C1C028;
    v34[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v33[2] = *MEMORY[0x277D3F4F8];
    v33[3] = v3;
    v34[2] = MEMORY[0x277CBEC28];
    v34[3] = MEMORY[0x277CBEC38];
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
    v36[0] = v30;
    v35[1] = *MEMORY[0x277D3F540];
    v31[0] = @"SampleTime";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_RealFormat_withUnit_s];
    v32[0] = v28;
    v31[1] = @" rx fifo overflow errors               ";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v32[1] = v26;
    v31[2] = @" rx dma descriptor underflow errors 0  ";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v32[2] = v24;
    v31[3] = @" rx dma descriptor underflow errors 1  ";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v32[3] = v22;
    v31[4] = @" rx dma descriptor underflow errors 2  ";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v32[4] = v20;
    v31[5] = @" rx dma descriptor underflow errors 3  ";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v32[5] = v18;
    v31[6] = @" rx dma descriptor underflow errors 4  ";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v32[6] = v16;
    v31[7] = @" rx dma descriptor underflow errors 5  ";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v32[7] = v5;
    v31[8] = @" d11cnt   txrts value when reset d11cnt";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v32[8] = v7;
    v31[9] = @" d11cnt   rxcrc value when reset d11cnt";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v32[9] = v9;
    v31[10] = @" d11cnt txnocts value when reset d11cnt";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v32[10] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:11];
    v36[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionWifiChipTxChipErrorCounters
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_282C1C028;
    v18[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v17[2] = *MEMORY[0x277D3F4F8];
    v17[3] = v3;
    v18[2] = MEMORY[0x277CBEC28];
    v18[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v20[0] = v4;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"SampleTime";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_s];
    v16[0] = v6;
    v15[1] = @" tx fifo underflows       ";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v16[1] = v8;
    v15[2] = @" tx phy errors            ";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionWifiChipRxPerRateCounters
{
  v58[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v57[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v55[0] = *MEMORY[0x277D3F568];
    v55[1] = v2;
    v56[0] = &unk_282C1C028;
    v56[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v55[2] = *MEMORY[0x277D3F4F8];
    v55[3] = v3;
    v56[2] = MEMORY[0x277CBEC28];
    v56[3] = MEMORY[0x277CBEC38];
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
    v58[0] = v52;
    v57[1] = *MEMORY[0x277D3F540];
    v53[0] = @"SampleTime";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat_withUnit_s];
    v54[0] = v50;
    v53[1] = @" packets rx at 1    Mbps          ";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v54[1] = v48;
    v53[2] = @" packets rx at 2    Mbps          ";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v54[2] = v46;
    v53[3] = @" packets rx at 5.5  Mbps          ";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v54[3] = v44;
    v53[4] = @" packets rx at 6    Mbps          ";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_IntegerFormat];
    v54[4] = v42;
    v53[5] = @" packets rx at 9    Mbps          ";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v54[5] = v40;
    v53[6] = @" packets rx at 11   Mbps          ";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_IntegerFormat];
    v54[6] = v38;
    v53[7] = @" packets rx at 12   Mbps          ";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v54[7] = v36;
    v53[8] = @" packets rx at 18   Mbps          ";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v54[8] = v34;
    v53[9] = @" packets rx at 24   Mbps          ";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v54[9] = v32;
    v53[10] = @" packets rx at 36   Mbps          ";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v54[10] = v30;
    v53[11] = @" packets rx at 48   Mbps          ";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v54[11] = v28;
    v53[12] = @" packets rx at 54   Mbps          ";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v54[12] = v26;
    v53[13] = @" packets rx at 108  Mbps          ";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v54[13] = v24;
    v53[14] = @" packets rx at 162  Mbps          ";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v54[14] = v22;
    v53[15] = @" packets rx at 216  Mbps          ";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v54[15] = v20;
    v53[16] = @" packets rx at 270  Mbps          ";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v54[16] = v18;
    v53[17] = @" packets rx at 324  Mbps          ";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v54[17] = v16;
    v53[18] = @" packets rx at 378  Mbps          ";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v54[18] = v5;
    v53[19] = @" packets rx at 432  Mbps          ";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v54[19] = v7;
    v53[20] = @" packets rx at 486  Mbps          ";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v54[20] = v9;
    v53[21] = @" packets rx at 540  Mbps          ";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v54[21] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:22];
    v58[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionOpticalInterfaceStats
{
  v372[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogOpticalInterfaceStats])
  {
    v371[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v369[0] = *MEMORY[0x277D3F568];
    v369[1] = v2;
    v370[0] = &unk_282C1C0E8;
    v370[1] = @"logEventBackwardIOReport";
    v369[2] = *MEMORY[0x277D3F4F8];
    v370[2] = MEMORY[0x277CBEC28];
    v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v370 forKeys:v369 count:3];
    v372[0] = v128;
    v371[1] = *MEMORY[0x277D3F540];
    v367[0] = @"SampleTime";
    v4 = *MEMORY[0x277D3F5B0];
    v365[0] = *MEMORY[0x277D3F5A8];
    v3 = v365[0];
    v365[1] = v4;
    v366[0] = &unk_282C10C38;
    v366[1] = @"s";
    v127 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v366 forKeys:v365 count:2];
    v368[0] = v127;
    v367[1] = @"OPTICAL_POWER_UNKNOWN";
    v363 = v3;
    v364 = &unk_282C10C38;
    v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v364 forKeys:&v363 count:1];
    v368[1] = v126;
    v367[2] = @"OPTICAL_POWER_UNKNOWN_Transitions";
    v361 = v3;
    v362 = &unk_282C10C50;
    v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v362 forKeys:&v361 count:1];
    v368[2] = v125;
    v367[3] = @"OPTICAL_POWER_BG0_1";
    v359 = v3;
    v360 = &unk_282C10C38;
    v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v360 forKeys:&v359 count:1];
    v368[3] = v124;
    v367[4] = @"OPTICAL_POWER_BG0_1_Transitions";
    v357 = v3;
    v358 = &unk_282C10C50;
    v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v358 forKeys:&v357 count:1];
    v368[4] = v123;
    v367[5] = @"OPTICAL_POWER_BG2_19";
    v355 = v3;
    v356 = &unk_282C10C38;
    v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v356 forKeys:&v355 count:1];
    v368[5] = v122;
    v367[6] = @"OPTICAL_POWER_BG2_19_Transitions";
    v353 = v3;
    v354 = &unk_282C10C50;
    v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v354 forKeys:&v353 count:1];
    v368[6] = v121;
    v367[7] = @"OPTICAL_POWER_BG1_19";
    v351 = v3;
    v352 = &unk_282C10C38;
    v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v352 forKeys:&v351 count:1];
    v368[7] = v120;
    v367[8] = @"OPTICAL_POWER_BG1_19_Transitions";
    v349 = v3;
    v350 = &unk_282C10C50;
    v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
    v368[8] = v119;
    v367[9] = @"OPTICAL_POWER_BG2_2";
    v347 = v3;
    v348 = &unk_282C10C38;
    v118 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v348 forKeys:&v347 count:1];
    v368[9] = v118;
    v367[10] = @"OPTICAL_POWER_BG2_2_Transitions";
    v345 = v3;
    v346 = &unk_282C10C50;
    v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v346 forKeys:&v345 count:1];
    v368[10] = v117;
    v367[11] = @"OPTICAL_POWER_BG1_2";
    v343 = v3;
    v344 = &unk_282C10C38;
    v116 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v344 forKeys:&v343 count:1];
    v368[11] = v116;
    v367[12] = @"OPTICAL_POWER_BG1_2_Transitions";
    v341 = v3;
    v342 = &unk_282C10C50;
    v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
    v368[12] = v115;
    v367[13] = @"OPTICAL_POWER_BG2_6";
    v339 = v3;
    v340 = &unk_282C10C38;
    v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v340 forKeys:&v339 count:1];
    v368[13] = v114;
    v367[14] = @"OPTICAL_POWER_BG2_6_Transitions";
    v337 = v3;
    v338 = &unk_282C10C50;
    v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v338 forKeys:&v337 count:1];
    v368[14] = v113;
    v367[15] = @"OPTICAL_POWER_BG1_6";
    v335 = v3;
    v336 = &unk_282C10C38;
    v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v336 forKeys:&v335 count:1];
    v368[15] = v112;
    v367[16] = @"OPTICAL_POWER_BG1_6_Transitions";
    v333 = v3;
    v334 = &unk_282C10C50;
    v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v334 forKeys:&v333 count:1];
    v368[16] = v111;
    v367[17] = @"OPTICAL_POWER_FL2_3";
    v331 = v3;
    v332 = &unk_282C10C38;
    v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v332 forKeys:&v331 count:1];
    v368[17] = v110;
    v367[18] = @"OPTICAL_POWER_FL2_3_Transitions";
    v329 = v3;
    v330 = &unk_282C10C50;
    v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v330 forKeys:&v329 count:1];
    v368[18] = v109;
    v367[19] = @"OPTICAL_POWER_TA2_2";
    v327 = v3;
    v328 = &unk_282C10C38;
    v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v328 forKeys:&v327 count:1];
    v368[19] = v108;
    v367[20] = @"OPTICAL_POWER_TA2_2_Transitions";
    v325 = v3;
    v326 = &unk_282C10C50;
    v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v326 forKeys:&v325 count:1];
    v368[20] = v107;
    v367[21] = @"OPTICAL_POWER_TA1_2";
    v323 = v3;
    v324 = &unk_282C10C38;
    v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v324 forKeys:&v323 count:1];
    v368[21] = v106;
    v367[22] = @"OPTICAL_POWER_TA1_2_Transitions";
    v321 = v3;
    v322 = &unk_282C10C50;
    v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v322 forKeys:&v321 count:1];
    v368[22] = v105;
    v367[23] = @"OPTICAL_POWER_HN2_6";
    v319 = v3;
    v320 = &unk_282C10C38;
    v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v320 forKeys:&v319 count:1];
    v368[23] = v104;
    v367[24] = @"OPTICAL_POWER_HN2_6_Transitions";
    v317 = v3;
    v318 = &unk_282C10C50;
    v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v318 forKeys:&v317 count:1];
    v368[24] = v103;
    v367[25] = @"OPTICAL_POWER_HN1_6";
    v315 = v3;
    v316 = &unk_282C10C38;
    v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v316 forKeys:&v315 count:1];
    v368[25] = v102;
    v367[26] = @"OPTICAL_POWER_HN1_6_Transitions";
    v313 = v3;
    v314 = &unk_282C10C50;
    v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v314 forKeys:&v313 count:1];
    v368[26] = v101;
    v367[27] = @"OPTICAL_POWER_BL1_8";
    v311 = v3;
    v312 = &unk_282C10C38;
    v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v312 forKeys:&v311 count:1];
    v368[27] = v100;
    v367[28] = @"OPTICAL_POWER_BL1_8_Transitions";
    v309 = v3;
    v310 = &unk_282C10C50;
    v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v310 forKeys:&v309 count:1];
    v368[28] = v99;
    v367[29] = @"OPTICAL_POWER_OS0_10";
    v307 = v3;
    v308 = &unk_282C10C38;
    v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v308 forKeys:&v307 count:1];
    v368[29] = v98;
    v367[30] = @"OPTICAL_POWER_OS0_10_Transitions";
    v305 = v3;
    v306 = &unk_282C10C50;
    v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v306 forKeys:&v305 count:1];
    v368[30] = v97;
    v367[31] = @"OPTICAL_POWER_SC2_16";
    v303 = v3;
    v304 = &unk_282C10C38;
    v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v304 forKeys:&v303 count:1];
    v368[31] = v96;
    v367[32] = @"OPTICAL_POWER_SC2_16_Transitions";
    v301 = v3;
    v302 = &unk_282C10C50;
    v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v302 forKeys:&v301 count:1];
    v368[32] = v95;
    v367[33] = @"OPTICAL_POWER_SC1_16";
    v299 = v3;
    v300 = &unk_282C10C38;
    v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
    v368[33] = v94;
    v367[34] = @"OPTICAL_POWER_SC1_16_Transitions";
    v297 = v3;
    v298 = &unk_282C10C50;
    v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
    v368[34] = v93;
    v367[35] = @"OPTICAL_POWER_SC0_17";
    v295 = v3;
    v296 = &unk_282C10C38;
    v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
    v368[35] = v92;
    v367[36] = @"OPTICAL_POWER_SC0_17_Transitions";
    v293 = v3;
    v294 = &unk_282C10C50;
    v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
    v368[36] = v91;
    v367[37] = @"OPTICAL_POWER_SC2_17";
    v291 = v3;
    v292 = &unk_282C10C38;
    v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
    v368[37] = v90;
    v367[38] = @"OPTICAL_POWER_SC2_17_Transitions";
    v289 = v3;
    v290 = &unk_282C10C50;
    v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v290 forKeys:&v289 count:1];
    v368[38] = v89;
    v367[39] = @"OPTICAL_POWER_SC1_17";
    v287 = v3;
    v288 = &unk_282C10C38;
    v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v288 forKeys:&v287 count:1];
    v368[39] = v88;
    v367[40] = @"OPTICAL_POWER_SC1_17_Transitions";
    v285 = v3;
    v286 = &unk_282C10C50;
    v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v286 forKeys:&v285 count:1];
    v368[40] = v87;
    v367[41] = @"OPTICAL_POWER_SC2_BGHR";
    v283 = v3;
    v284 = &unk_282C10C38;
    v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v284 forKeys:&v283 count:1];
    v368[41] = v86;
    v367[42] = @"OPTICAL_POWER_SC2_BGHR_Transitions";
    v281 = v3;
    v282 = &unk_282C10C50;
    v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v282 forKeys:&v281 count:1];
    v368[42] = v85;
    v367[43] = @"OPTICAL_POWER_SC2_PO";
    v279 = v3;
    v280 = &unk_282C10C38;
    v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v280 forKeys:&v279 count:1];
    v368[43] = v84;
    v367[44] = @"OPTICAL_POWER_SC2_PO_Transitions";
    v277 = v3;
    v278 = &unk_282C10C50;
    v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v278 forKeys:&v277 count:1];
    v368[44] = v83;
    v367[45] = @"OPTICAL_POWER_SC2_FL";
    v275 = v3;
    v276 = &unk_282C10C38;
    v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v276 forKeys:&v275 count:1];
    v368[45] = v82;
    v367[46] = @"OPTICAL_POWER_SC2_FL_Transitions";
    v273 = v3;
    v274 = &unk_282C10C50;
    v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v274 forKeys:&v273 count:1];
    v368[46] = v81;
    v367[47] = @"OPTICAL_POWER_SC2_TACH";
    v271 = v3;
    v272 = &unk_282C10C38;
    v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v272 forKeys:&v271 count:1];
    v368[47] = v80;
    v367[48] = @"OPTICAL_POWER_SC2_TACH_Transitions";
    v269 = v3;
    v270 = &unk_282C10C50;
    v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
    v368[48] = v79;
    v367[49] = @"OPTICAL_POWER_SC2_HRNN";
    v267 = v3;
    v268 = &unk_282C10C38;
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
    v368[49] = v78;
    v367[50] = @"OPTICAL_POWER_SC2_HRNN_Transitions";
    v265 = v3;
    v266 = &unk_282C10C50;
    v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
    v368[50] = v77;
    v367[51] = @"OPTICAL_POWER_PO2_19";
    v263 = v3;
    v264 = &unk_282C10C38;
    v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v264 forKeys:&v263 count:1];
    v368[51] = v76;
    v367[52] = @"OPTICAL_POWER_PO2_19_Transitions";
    v261 = v3;
    v262 = &unk_282C10C50;
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
    v368[52] = v75;
    v367[53] = @"OPTICAL_POWER_PO1_19";
    v259 = v3;
    v260 = &unk_282C10C38;
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v260 forKeys:&v259 count:1];
    v368[53] = v74;
    v367[54] = @"OPTICAL_POWER_PO1_19_Transitions";
    v257 = v3;
    v258 = &unk_282C10C50;
    v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v258 forKeys:&v257 count:1];
    v368[54] = v73;
    v367[55] = @"OPTICAL_POWER_BG4_6";
    v255 = v3;
    v256 = &unk_282C10C38;
    v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v256 forKeys:&v255 count:1];
    v368[55] = v72;
    v367[56] = @"OPTICAL_POWER_BG4_6_Transitions";
    v253 = v3;
    v254 = &unk_282C10C50;
    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v254 forKeys:&v253 count:1];
    v368[56] = v71;
    v367[57] = @"OPTICAL_POWER_BG3_6";
    v251 = v3;
    v252 = &unk_282C10C38;
    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v252 forKeys:&v251 count:1];
    v368[57] = v70;
    v367[58] = @"OPTICAL_POWER_BG3_6_Transitions";
    v249 = v3;
    v250 = &unk_282C10C50;
    v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v250 forKeys:&v249 count:1];
    v368[58] = v69;
    v367[59] = @"OPTICAL_POWER_HN4_6";
    v247 = v3;
    v248 = &unk_282C10C38;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v248 forKeys:&v247 count:1];
    v368[59] = v68;
    v367[60] = @"OPTICAL_POWER_HN4_6_Transitions";
    v245 = v3;
    v246 = &unk_282C10C50;
    v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v246 forKeys:&v245 count:1];
    v368[60] = v67;
    v367[61] = @"OPTICAL_POWER_HN3_6";
    v243 = v3;
    v244 = &unk_282C10C38;
    v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v244 forKeys:&v243 count:1];
    v368[61] = v66;
    v367[62] = @"OPTICAL_POWER_HN3_6_Transitions";
    v241 = v3;
    v242 = &unk_282C10C50;
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v242 forKeys:&v241 count:1];
    v368[62] = v65;
    v367[63] = @"OPTICAL_POWER_HN0_21";
    v239 = v3;
    v240 = &unk_282C10C38;
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v240 forKeys:&v239 count:1];
    v368[63] = v64;
    v367[64] = @"OPTICAL_POWER_HN0_21_Transitions";
    v237 = v3;
    v238 = &unk_282C10C50;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v238 forKeys:&v237 count:1];
    v368[64] = v63;
    v367[65] = @"OPTICAL_POWER_SC1_BGHR";
    v235 = v3;
    v236 = &unk_282C10C38;
    v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v236 forKeys:&v235 count:1];
    v368[65] = v62;
    v367[66] = @"OPTICAL_POWER_SC1_BGHR_Transitions";
    v233 = v3;
    v234 = &unk_282C10C50;
    v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v234 forKeys:&v233 count:1];
    v368[66] = v61;
    v367[67] = @"OPTICAL_POWER_SC1_PO";
    v231 = v3;
    v232 = &unk_282C10C38;
    v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v232 forKeys:&v231 count:1];
    v368[67] = v60;
    v367[68] = @"OPTICAL_POWER_SC1_PO_Transitions";
    v229 = v3;
    v230 = &unk_282C10C50;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v230 forKeys:&v229 count:1];
    v368[68] = v59;
    v367[69] = @"OPTICAL_POWER_SC1_FL";
    v227 = v3;
    v228 = &unk_282C10C38;
    v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v228 forKeys:&v227 count:1];
    v368[69] = v58;
    v367[70] = @"OPTICAL_POWER_SC1_FL_Transitions";
    v225 = v3;
    v226 = &unk_282C10C50;
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v226 forKeys:&v225 count:1];
    v368[70] = v57;
    v367[71] = @"OPTICAL_POWER_SC1_TACH";
    v223 = v3;
    v224 = &unk_282C10C38;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v224 forKeys:&v223 count:1];
    v368[71] = v56;
    v367[72] = @"OPTICAL_POWER_SC1_TACH_Transitions";
    v221 = v3;
    v222 = &unk_282C10C50;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v222 forKeys:&v221 count:1];
    v368[72] = v55;
    v367[73] = @"OPTICAL_POWER_SC1_HRNN";
    v219 = v3;
    v220 = &unk_282C10C38;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
    v368[73] = v54;
    v367[74] = @"OPTICAL_POWER_SC1_HRNN_Transitions";
    v217 = v3;
    v218 = &unk_282C10C50;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v218 forKeys:&v217 count:1];
    v368[74] = v53;
    v367[75] = @"OPTICAL_POWER_SC1_BL";
    v215 = v3;
    v216 = &unk_282C10C38;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
    v368[75] = v52;
    v367[76] = @"OPTICAL_POWER_SC1_BL_Transitions";
    v213 = v3;
    v214 = &unk_282C10C50;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
    v368[76] = v51;
    v367[77] = @"OPTICAL_POWER_SC2_BL";
    v211 = v3;
    v212 = &unk_282C10C38;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
    v368[77] = v50;
    v367[78] = @"OPTICAL_POWER_SC2_BL_Transitions";
    v209 = v3;
    v210 = &unk_282C10C50;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
    v368[78] = v49;
    v367[79] = @"OPTICAL_POWER_BG4_19";
    v207 = v3;
    v208 = &unk_282C10C38;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
    v368[79] = v48;
    v367[80] = @"OPTICAL_POWER_BG4_19_Transitions";
    v205 = v3;
    v206 = &unk_282C10C50;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
    v368[80] = v47;
    v367[81] = @"OPTICAL_POWER_BG4_2";
    v203 = v3;
    v204 = &unk_282C10C38;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
    v368[81] = v46;
    v367[82] = @"OPTICAL_POWER_BG4_2_Transitions";
    v201 = v3;
    v202 = &unk_282C10C50;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
    v368[82] = v45;
    v367[83] = @"OPTICAL_POWER_FL4_3";
    v199 = v3;
    v200 = &unk_282C10C38;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
    v368[83] = v44;
    v367[84] = @"OPTICAL_POWER_FL4_3_Transitions";
    v197 = v3;
    v198 = &unk_282C10C50;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
    v368[84] = v43;
    v367[85] = @"OPTICAL_POWER_GR1_24";
    v195 = v3;
    v196 = &unk_282C10C38;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
    v368[85] = v42;
    v367[86] = @"OPTICAL_POWER_GR1_24_Transitions";
    v193 = v3;
    v194 = &unk_282C10C50;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
    v368[86] = v41;
    v367[87] = @"OPTICAL_POWER_PO4_19";
    v191 = v3;
    v192 = &unk_282C10C38;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
    v368[87] = v40;
    v367[88] = @"OPTICAL_POWER_PO4_19_Transitions";
    v189 = v3;
    v190 = &unk_282C10C50;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
    v368[88] = v39;
    v367[89] = @"OPTICAL_POWER_SC4_16";
    v187 = v3;
    v188 = &unk_282C10C38;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
    v368[89] = v38;
    v367[90] = @"OPTICAL_POWER_SC4_16_Transitions";
    v185 = v3;
    v186 = &unk_282C10C50;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
    v368[90] = v37;
    v367[91] = @"OPTICAL_POWER_SC4_17";
    v183 = v3;
    v184 = &unk_282C10C38;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
    v368[91] = v36;
    v367[92] = @"OPTICAL_POWER_SC4_17_Transitions";
    v181 = v3;
    v182 = &unk_282C10C50;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
    v368[92] = v35;
    v367[93] = @"OPTICAL_POWER_SC4_BGHR";
    v179 = v3;
    v180 = &unk_282C10C38;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
    v368[93] = v34;
    v367[94] = @"OPTICAL_POWER_SC4_BGHR_Transitions";
    v177 = v3;
    v178 = &unk_282C10C50;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
    v368[94] = v33;
    v367[95] = @"OPTICAL_POWER_SC4_BL";
    v175 = v3;
    v176 = &unk_282C10C38;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
    v368[95] = v32;
    v367[96] = @"OPTICAL_POWER_SC4_BL_Transitions";
    v173 = v3;
    v174 = &unk_282C10C50;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
    v368[96] = v31;
    v367[97] = @"OPTICAL_POWER_SC4_FL";
    v171 = v3;
    v172 = &unk_282C10C38;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
    v368[97] = v30;
    v367[98] = @"OPTICAL_POWER_SC4_FL_Transitions";
    v169 = v3;
    v170 = &unk_282C10C50;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
    v368[98] = v29;
    v367[99] = @"OPTICAL_POWER_SC4_HRNN";
    v167 = v3;
    v168 = &unk_282C10C38;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
    v368[99] = v28;
    v367[100] = @"OPTICAL_POWER_SC4_HRNN_Transitions";
    v165 = v3;
    v166 = &unk_282C10C50;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
    v368[100] = v27;
    v367[101] = @"OPTICAL_POWER_SC4_PO";
    v163 = v3;
    v164 = &unk_282C10C38;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
    v368[101] = v26;
    v367[102] = @"OPTICAL_POWER_SC4_PO_Transitions";
    v161 = v3;
    v162 = &unk_282C10C50;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
    v368[102] = v25;
    v367[103] = @"OPTICAL_POWER_SC4_TACH";
    v159 = v3;
    v160 = &unk_282C10C38;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
    v368[103] = v24;
    v367[104] = @"OPTICAL_POWER_SC4_TACH_Transitions";
    v157 = v3;
    v158 = &unk_282C10C50;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
    v368[104] = v23;
    v367[105] = @"OPTICAL_POWER_TA4_2";
    v155 = v3;
    v156 = &unk_282C10C38;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
    v368[105] = v22;
    v367[106] = @"OPTICAL_POWER_TA4_2_Transitions";
    v153 = v3;
    v154 = &unk_282C10C50;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
    v368[106] = v21;
    v367[107] = @"OPTICAL_POWER_HE2_25";
    v151 = v3;
    v152 = &unk_282C10C38;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
    v368[107] = v20;
    v367[108] = @"OPTICAL_POWER_HE2_25_Transitions";
    v149 = v3;
    v150 = &unk_282C10C50;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
    v368[108] = v19;
    v367[109] = @"OPTICAL_POWER_HE4_25";
    v147 = v3;
    v148 = &unk_282C10C38;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
    v368[109] = v18;
    v367[110] = @"OPTICAL_POWER_HE4_25_Transitions";
    v145 = v3;
    v146 = &unk_282C10C50;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
    v368[110] = v17;
    v367[111] = @"OPTICAL_POWER_HE1_25";
    v143 = v3;
    v144 = &unk_282C10C38;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
    v368[111] = v5;
    v367[112] = @"OPTICAL_POWER_HE1_25_Transitions";
    v141 = v3;
    v142 = &unk_282C10C50;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
    v368[112] = v6;
    v367[113] = @"OPTICAL_POWER_SC2_HE";
    v139 = v3;
    v140 = &unk_282C10C38;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
    v368[113] = v7;
    v367[114] = @"OPTICAL_POWER_SC2_HE_Transitions";
    v137 = v3;
    v138 = &unk_282C10C50;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
    v368[114] = v8;
    v367[115] = @"OPTICAL_POWER_SC4_HE";
    v135 = v3;
    v136 = &unk_282C10C38;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
    v368[115] = v9;
    v367[116] = @"OPTICAL_POWER_SC4_HE_Transitions";
    v133 = v3;
    v134 = &unk_282C10C50;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
    v368[116] = v10;
    v367[117] = @"OPTICAL_POWER_SC1_HE";
    v131 = v3;
    v132 = &unk_282C10C38;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
    v368[117] = v11;
    v367[118] = @"OPTICAL_POWER_SC1_HE_Transitions";
    v129 = v3;
    v130 = &unk_282C10C50;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
    v368[118] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v368 forKeys:v367 count:119];
    v372[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v372 forKeys:v371 count:2];
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventBackwardDefinitionBonnLisaStats
{
  v83[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] == 1001201)
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v82[0] = *MEMORY[0x277D3F4E8];
    v3 = *MEMORY[0x277D3F548];
    v80[0] = *MEMORY[0x277D3F568];
    v80[1] = v3;
    v81[0] = &unk_282C1C038;
    v81[1] = @"logEventBackwardIOReport";
    v80[2] = *MEMORY[0x277D3F4F8];
    v81[2] = MEMORY[0x277CBEC28];
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
    v83[0] = v31;
    v82[1] = *MEMORY[0x277D3F540];
    v78[0] = @"LISA_POW_ALG_512";
    v76 = *MEMORY[0x277D3F5A8];
    v4 = v76;
    v77 = &unk_282C10C38;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v79[0] = v30;
    v78[1] = @"LISA_POW_ALG_512_Transitions";
    v74 = v4;
    v75 = &unk_282C10C50;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v79[1] = v29;
    v78[2] = @"LISA_POW_ALG_1K";
    v72 = v4;
    v73 = &unk_282C10C38;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v79[2] = v28;
    v78[3] = @"LISA_POW_ALG_1K_Transitions";
    v70 = v4;
    v71 = &unk_282C10C50;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v79[3] = v27;
    v78[4] = @"LISA_POW_ALG_2K";
    v68 = v4;
    v69 = &unk_282C10C38;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v79[4] = v26;
    v78[5] = @"LISA_POW_ALG_2K_Transitions";
    v66 = v4;
    v67 = &unk_282C10C50;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v79[5] = v25;
    v78[6] = @"LISA_POW_ALG_4K";
    v64 = v4;
    v65 = &unk_282C10C38;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v79[6] = v24;
    v78[7] = @"LISA_POW_ALG_4K_Transitions";
    v62 = v4;
    v63 = &unk_282C10C50;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v79[7] = v23;
    v78[8] = @"LISA_POW_ALG_8K";
    v60 = v4;
    v61 = &unk_282C10C38;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v79[8] = v22;
    v78[9] = @"LISA_POW_ALG_8K_Transitions";
    v58 = v4;
    v59 = &unk_282C10C50;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v79[9] = v21;
    v78[10] = @"LISA_POW_CNF_1K";
    v56 = v4;
    v57 = &unk_282C10C38;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v79[10] = v20;
    v78[11] = @"LISA_POW_CNF_1K_Transitions";
    v54 = v4;
    v55 = &unk_282C10C50;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v79[11] = v19;
    v78[12] = @"LISA_POW_CNF_2K";
    v52 = v4;
    v53 = &unk_282C10C38;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v79[12] = v18;
    v78[13] = @"LISA_POW_CNF_2K_Transitions";
    v50 = v4;
    v51 = &unk_282C10C50;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v79[13] = v17;
    v78[14] = @"LISA_POW_CNF_4K";
    v48 = v4;
    v49 = &unk_282C10C38;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v79[14] = v16;
    v78[15] = @"LISA_POW_CNF_4K_Transitions";
    v46 = v4;
    v47 = &unk_282C10C50;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v79[15] = v5;
    v78[16] = @"LISA_POW_CNF_8K";
    v44 = v4;
    v45 = &unk_282C10C38;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v79[16] = v6;
    v78[17] = @"LISA_POW_CNF_8K_Transitions";
    v42 = v4;
    v43 = &unk_282C10C50;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v79[17] = v7;
    v78[18] = @"LISA_POW_BURST_32";
    v40 = v4;
    v41 = &unk_282C10C38;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v79[18] = v8;
    v78[19] = @"LISA_POW_BURST_32_Transitions";
    v38 = v4;
    v39 = &unk_282C10C50;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v79[19] = v9;
    v78[20] = @"LISA_POW_OFF";
    v36 = v4;
    v37 = &unk_282C10C38;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v79[20] = v10;
    v78[21] = @"LISA_POW_OFF_Transitions";
    v34 = v4;
    v35 = &unk_282C10C50;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v79[21] = v11;
    v78[22] = @"SampleTime";
    v32 = v4;
    v33 = &unk_282C10C38;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v79[22] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:23];
    v83[1] = v13;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entryEventBackwardDefinitionCoronetPowerStats
{
  v32[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] kPLDeviceClass] == 200039)
  {
    v31[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v29[0] = *MEMORY[0x277D3F568];
    v29[1] = v2;
    v30[0] = &unk_282C1C028;
    v30[1] = @"logEventBackwardIOReport";
    v29[2] = *MEMORY[0x277D3F4F8];
    v30[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
    v32[0] = v3;
    v31[1] = *MEMORY[0x277D3F540];
    v27[0] = @"CORONET_POW_VERN_120";
    v25 = *MEMORY[0x277D3F5A8];
    v4 = v25;
    v26 = &unk_282C10C38;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v28[0] = v5;
    v27[1] = @"CORONET_POW_VERN_120_Transitions";
    v23 = v4;
    v24 = &unk_282C10C50;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v28[1] = v6;
    v27[2] = @"CORONET_POW_SNIFF_16";
    v21 = v4;
    v22 = &unk_282C10C38;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v28[2] = v7;
    v27[3] = @"CORONET_POW_SNIFF_16_Transitions";
    v19 = v4;
    v20 = &unk_282C10C50;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v28[3] = v8;
    v27[4] = @"CORONET_POW_OFF";
    v17 = v4;
    v18 = &unk_282C10C38;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v28[4] = v9;
    v27[5] = @"CORONET_POW_OFF_Transitions";
    v15 = v4;
    v16 = &unk_282C10C50;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v28[5] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];
    v32[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionSpeakerPowerState
{
  v35[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isWatch] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isHomePod"))
  {
    v34[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v32[0] = *MEMORY[0x277D3F568];
    v32[1] = v2;
    v33[0] = &unk_282C1C028;
    v33[1] = @"logEventBackwardIOReport";
    v32[2] = *MEMORY[0x277D3F4F8];
    v33[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v35[0] = v3;
    v34[1] = *MEMORY[0x277D3F540];
    v30[0] = @"State_OFF";
    v28 = *MEMORY[0x277D3F5A8];
    v4 = v28;
    v29 = &unk_282C10C38;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v31[0] = v5;
    v30[1] = @"State_OFF_Transitions";
    v26 = v4;
    v27 = &unk_282C10C50;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v31[1] = v6;
    v30[2] = @"State_ON";
    v24 = v4;
    v25 = &unk_282C10C38;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v31[2] = v7;
    v30[3] = @"State_ON_Transitions";
    v22 = v4;
    v23 = &unk_282C10C50;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v31[3] = v8;
    v30[4] = @"State_PREWARM";
    v20 = v4;
    v21 = &unk_282C10C38;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v31[4] = v9;
    v30[5] = @"State_PREWARM_Transitions";
    v18 = v4;
    v19 = &unk_282C10C50;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v31[5] = v10;
    v30[6] = @"SampleTime";
    v16 = v4;
    v17 = &unk_282C10C38;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v31[6] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:7];
    v35[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionActuatorPowerState
{
  v35[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isWatch])
  {
    v34[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v32[0] = *MEMORY[0x277D3F568];
    v32[1] = v2;
    v33[0] = &unk_282C1C028;
    v33[1] = @"logEventBackwardIOReport";
    v32[2] = *MEMORY[0x277D3F4F8];
    v33[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v35[0] = v3;
    v34[1] = *MEMORY[0x277D3F540];
    v30[0] = @"State_OFF";
    v28 = *MEMORY[0x277D3F5A8];
    v4 = v28;
    v29 = &unk_282C10C38;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v31[0] = v5;
    v30[1] = @"State_OFF_Transitions";
    v26 = v4;
    v27 = &unk_282C10C50;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v31[1] = v6;
    v30[2] = @"State_ON";
    v24 = v4;
    v25 = &unk_282C10C38;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v31[2] = v7;
    v30[3] = @"State_ON_Transitions";
    v22 = v4;
    v23 = &unk_282C10C50;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v31[3] = v8;
    v30[4] = @"State_PREWARM";
    v20 = v4;
    v21 = &unk_282C10C38;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v31[4] = v9;
    v30[5] = @"State_PREWARM_Transitions";
    v18 = v4;
    v19 = &unk_282C10C50;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v31[5] = v10;
    v30[6] = @"SampleTime";
    v16 = v4;
    v17 = &unk_282C10C38;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v31[6] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:7];
    v35[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionAOPAOP_Haptics
{
  v38[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isWatch])
  {
    v37[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v35[0] = *MEMORY[0x277D3F568];
    v35[1] = v2;
    v36[0] = &unk_282C1C028;
    v36[1] = @"logEventBackwardIOReport";
    v35[2] = *MEMORY[0x277D3F4F8];
    v36[2] = MEMORY[0x277CBEC28];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
    v38[0] = v16;
    v37[1] = *MEMORY[0x277D3F540];
    v33[0] = @"Req received(0)";
    v31 = *MEMORY[0x277D3F5A8];
    v3 = v31;
    v32 = &unk_282C10C50;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v34[0] = v4;
    v33[1] = @"Req received(1)";
    v29 = v3;
    v30 = &unk_282C10C50;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v34[1] = v5;
    v33[2] = @"Dropped-QueFull(0)";
    v27 = v3;
    v28 = &unk_282C10C50;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v34[2] = v6;
    v33[3] = @"Dropped-QueFull(1)";
    v25 = v3;
    v26 = &unk_282C10C50;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v34[3] = v7;
    v33[4] = @"Dropped-Policy(0)";
    v23 = v3;
    v24 = &unk_282C10C50;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v34[4] = v8;
    v33[5] = @"Dropped-Policy(1)";
    v21 = v3;
    v22 = &unk_282C10C50;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v34[5] = v9;
    v33[6] = @"Dropped-Error(0)";
    v19 = v3;
    v20 = &unk_282C10C50;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v34[6] = v10;
    v33[7] = @"Dropped-Error(1)";
    v17 = v3;
    v18 = &unk_282C10C50;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v34[7] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:8];
    v38[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionAOPAOPAudioFW
{
  v35[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F1B8] isWatch] && objc_msgSend(MEMORY[0x277D3F1B8], "hasAlwaysListening"))
  {
    v34[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v32[0] = *MEMORY[0x277D3F568];
    v32[1] = v2;
    v33[0] = &unk_282C1C028;
    v33[1] = @"logEventBackwardIOReport";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v35[0] = v3;
    v34[1] = *MEMORY[0x277D3F540];
    v30[0] = @"HPMicStartCnt";
    v28 = *MEMORY[0x277D3F5A8];
    v4 = v28;
    v29 = &unk_282C10C50;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v31[0] = v5;
    v30[1] = @"HPMicStopCnt";
    v26 = v4;
    v27 = &unk_282C10C50;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v31[1] = v6;
    v30[2] = @"LPMicStartCnt";
    v24 = v4;
    v25 = &unk_282C10C50;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v31[2] = v7;
    v30[3] = @"LPMicStopCnt";
    v22 = v4;
    v23 = &unk_282C10C50;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v31[3] = v8;
    v30[4] = @"TotHPMicOnDur";
    v20 = v4;
    v21 = &unk_282C10C50;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v31[4] = v9;
    v30[5] = @"TotLPMicOnDur";
    v18 = v4;
    v19 = &unk_282C10C50;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v31[5] = v10;
    v30[6] = @"TotTimeWindDur";
    v16 = v4;
    v17 = &unk_282C10C50;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v31[6] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:7];
    v35[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionMultitouchCPUStats
{
  v35[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isWatch])
  {
    v34[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v32[0] = *MEMORY[0x277D3F568];
    v32[1] = v2;
    v33[0] = &unk_282C1C028;
    v33[1] = @"logEventBackwardIOReport";
    v32[2] = *MEMORY[0x277D3F4F8];
    v33[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v35[0] = v3;
    v34[1] = *MEMORY[0x277D3F540];
    v30[0] = @"CPU_PM0";
    v28 = *MEMORY[0x277D3F5A8];
    v4 = v28;
    v29 = &unk_282C10C38;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v31[0] = v5;
    v30[1] = @"CPU_PM0_Transitions";
    v26 = v4;
    v27 = &unk_282C10C50;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v31[1] = v6;
    v30[2] = @"CPU_PM3";
    v24 = v4;
    v25 = &unk_282C10C38;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v31[2] = v7;
    v30[3] = @"CPU_PM3_Transitions";
    v22 = v4;
    v23 = &unk_282C10C50;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v31[3] = v8;
    v30[4] = @"CPU_PM4";
    v20 = v4;
    v21 = &unk_282C10C38;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v31[4] = v9;
    v30[5] = @"CPU_PM4_Transitions";
    v18 = v4;
    v19 = &unk_282C10C50;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v31[5] = v10;
    v30[6] = @"SampleTime";
    v16 = v4;
    v17 = &unk_282C10C38;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v31[6] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:7];
    v35[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionCorePerformanceLevelResidency
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v16[0] = *MEMORY[0x277D3F568];
    v16[1] = v2;
    v17[0] = &unk_282C1C058;
    v17[1] = @"logEventBackwardIOReport";
    v16[2] = *MEMORY[0x277D3F4F8];
    v17[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v19[0] = v3;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"Channel";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v15[0] = v5;
    v14[1] = @"State";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v15[1] = v7;
    v14[2] = @"Residency";
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

+ (id)entryEventBackwardDefinitionAOPAmpPower
{
  v27[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS] && objc_msgSend(MEMORY[0x277D3F208], "hasAOP"))
  {
    v26[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v24[0] = *MEMORY[0x277D3F568];
    v24[1] = v2;
    v25[0] = &unk_282C1C058;
    v25[1] = @"logEventBackwardIOReport";
    v24[2] = *MEMORY[0x277D3F4F8];
    v25[2] = MEMORY[0x277CBEC28];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v27[0] = v21;
    v26[1] = *MEMORY[0x277D3F540];
    v22[0] = @"SampleTime";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_RealFormat_withUnit_s];
    v23[0] = v19;
    v22[1] = @"arc_DIS";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat];
    v23[1] = v17;
    v22[2] = @"arc_DIS_Transitions";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v23[2] = v15;
    v22[3] = @"arc_ENA";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v23[3] = v4;
    v22[4] = @"arc_ENA_Transitions";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v23[4] = v6;
    v22[5] = @"arc_PREW";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v23[5] = v8;
    v22[6] = @"arc_PREW_Transitions";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v23[6] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
    v27[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAOPmuxPower
{
  v27[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS] && objc_msgSend(MEMORY[0x277D3F208], "hasAOP"))
  {
    v26[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v24[0] = *MEMORY[0x277D3F568];
    v24[1] = v2;
    v25[0] = &unk_282C1C058;
    v25[1] = @"logEventBackwardIOReport";
    v24[2] = *MEMORY[0x277D3F4F8];
    v25[2] = MEMORY[0x277CBEC28];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v27[0] = v21;
    v26[1] = *MEMORY[0x277D3F540];
    v22[0] = @"SampleTime";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_RealFormat_withUnit_s];
    v23[0] = v19;
    v22[1] = @"mux_ON";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat];
    v23[1] = v17;
    v22[2] = @"mux_ON_Transitions";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v23[2] = v15;
    v22[3] = @"mux_OFF";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v23[3] = v4;
    v22[4] = @"mux_OFF_Transitions";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v23[4] = v6;
    v22[5] = @"mux_IDLE";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v23[5] = v8;
    v22[6] = @"mux_IDLE_Transitions";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v23[6] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
    v27[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAOPAOPSensors
{
  v21[2] = *MEMORY[0x277D85DE8];
  if ((([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch")) && objc_msgSend(MEMORY[0x277D3F208], "hasAOP"))
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v18[0] = *MEMORY[0x277D3F568];
    v18[1] = v2;
    v19[0] = &unk_282C1C0F8;
    v19[1] = @"logEventBackwardIOReport";
    v18[2] = *MEMORY[0x277D3F4F8];
    v19[2] = MEMORY[0x277CBEC28];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"Channel";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v17[0] = v4;
    v16[1] = @"DutyCycle";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v17[1] = v6;
    v16[2] = @"State";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v17[2] = v8;
    v16[3] = @"Transitions";
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

+ (id)entryEventBackwardDefinitionPRLUsagePreCheck
{
  v32[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v31[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v29[0] = *MEMORY[0x277D3F568];
    v29[1] = v2;
    v30[0] = &unk_282C1C038;
    v30[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v29[2] = *MEMORY[0x277D3F4F8];
    v29[3] = v3;
    v30[2] = MEMORY[0x277CBEC28];
    v30[3] = MEMORY[0x277CBEC38];
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
    v32[0] = v26;
    v31[1] = *MEMORY[0x277D3F540];
    v27[0] = @"PassCount";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v28[0] = v24;
    v27[1] = @"FailCount";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v28[1] = v22;
    v27[2] = @"FloodCount";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v28[2] = v20;
    v27[3] = @"SparseCount";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v28[3] = v18;
    v27[4] = @"DenseCount";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v28[4] = v16;
    v27[5] = @"100msCount";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v28[5] = v5;
    v27[6] = @"250msCount";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v28[6] = v7;
    v27[7] = @"400msCount";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v28[7] = v9;
    v27[8] = @"800msCount";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v28[8] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:9];
    v32[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionPRLUsageBCheck
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v23[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v21[0] = *MEMORY[0x277D3F568];
    v21[1] = v2;
    v22[0] = &unk_282C1C028;
    v22[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v21[2] = *MEMORY[0x277D3F4F8];
    v21[3] = v3;
    v22[2] = MEMORY[0x277CBEC28];
    v22[3] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v24[0] = v18;
    v23[1] = *MEMORY[0x277D3F540];
    v19[0] = @"PassCount";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v20[0] = v16;
    v19[1] = @"FailCount";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v20[1] = v5;
    v19[2] = @"FloodCount";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v20[2] = v7;
    v19[3] = @"SparseCount";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v20[3] = v9;
    v19[4] = @"DenseCount";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v20[4] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v24[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionPRLUsageProCheck
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v23[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v21[0] = *MEMORY[0x277D3F568];
    v21[1] = v2;
    v22[0] = &unk_282C1C028;
    v22[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v21[2] = *MEMORY[0x277D3F4F8];
    v21[3] = v3;
    v22[2] = MEMORY[0x277CBEC28];
    v22[3] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v24[0] = v18;
    v23[1] = *MEMORY[0x277D3F540];
    v19[0] = @"PassCount";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v20[0] = v16;
    v19[1] = @"FailCount";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v20[1] = v5;
    v19[2] = @"FloodCount";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v20[2] = v7;
    v19[3] = @"SparseCount";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v20[3] = v9;
    v19[4] = @"DenseCount";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v20[4] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v24[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionPRLUsageAttCheck
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v23[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v21[0] = *MEMORY[0x277D3F568];
    v21[1] = v2;
    v22[0] = &unk_282C1C028;
    v22[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v21[2] = *MEMORY[0x277D3F4F8];
    v21[3] = v3;
    v22[2] = MEMORY[0x277CBEC28];
    v22[3] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v24[0] = v18;
    v23[1] = *MEMORY[0x277D3F540];
    v19[0] = @"PassCount";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v20[0] = v16;
    v19[1] = @"FailCount";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v20[1] = v5;
    v19[2] = @"FloodCount";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v20[2] = v7;
    v19[3] = @"SparseCount";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v20[3] = v9;
    v19[4] = @"DenseCount";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v20[4] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v24[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionPRLUsageJOn
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v15[0] = *MEMORY[0x277D3F568];
    v15[1] = v2;
    v16[0] = &unk_282C1C028;
    v16[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v15[2] = *MEMORY[0x277D3F4F8];
    v15[3] = v3;
    v16[2] = MEMORY[0x277CBEC28];
    v16[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    v18[0] = v4;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"AuthCount";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v13[1] = @"AttCount";
    v14[0] = v6;
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v14[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
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

+ (id)entryEventBackwardDefinitionPRLUsageRStandby
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v15[0] = *MEMORY[0x277D3F568];
    v15[1] = v2;
    v16[0] = &unk_282C1C028;
    v16[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v15[2] = *MEMORY[0x277D3F4F8];
    v15[3] = v3;
    v16[2] = MEMORY[0x277CBEC28];
    v16[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    v18[0] = v4;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"AuthDur";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v13[1] = @"AttDur";
    v14[0] = v6;
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v14[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
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

+ (id)entryEventBackwardDefinitionH13ISPH13ISPEvents
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C028;
  v17[1] = @"logEventBackwardIOReport";
  v16[2] = *MEMORY[0x277D3F4F8];
  v17[2] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"Number Rgl INT_FAULT_LVT_LATCH";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v15[0] = v5;
  v14[1] = @"Number Rgl INT_FAULT_VINUVLO_LATCH";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"Number SB IVFM";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventBackwardDefinitionCPUStatsCPUEvents
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_282C1C028;
    v18[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v17[2] = *MEMORY[0x277D3F4F8];
    v17[3] = v3;
    v18[2] = MEMORY[0x277CBEC28];
    v18[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v20[0] = v4;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"SampleTime";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_s];
    v16[0] = v6;
    v15[1] = @"DPE0_ACT";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v16[1] = v8;
    v15[2] = @"DPE0_Transitions";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)isOldLostPerfLoggingModel
{
  if (qword_2811F4788 != -1)
  {
    dispatch_once(&qword_2811F4788, &__block_literal_global_5860);
  }

  return byte_2811F4759;
}

uint64_t __44__PLIOReportAgent_isOldLostPerfLoggingModel__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiPhone];
  if (result)
  {
    if ([MEMORY[0x277D3F208] isDeviceClass:102007] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102008) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102009) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102010) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102011) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102012) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102013) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102014) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102015) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102016) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102017))
    {
      result = 1;
    }

    else
    {
      result = [MEMORY[0x277D3F208] isDeviceClass:102018];
    }
  }

  byte_2811F4759 = result;
  return result;
}

+ (BOOL)shouldLogThermalUPOLimiting
{
  if ([MEMORY[0x277D3F180] BOOLForKey:@"enableLostPerfLogging" ifNotSet:0])
  {
    v2 = 1;
  }

  else
  {
    v2 = [MEMORY[0x277D3F180] isTaskFullEPLMode];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLIOReportAgent_shouldLogThermalUPOLimiting__block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = v2;
  if (qword_2811F4790 != -1)
  {
    dispatch_once(&qword_2811F4790, block);
  }

  return byte_2811F475A & v2 & 1;
}

uint64_t __46__PLIOReportAgent_shouldLogThermalUPOLimiting__block_invoke(uint64_t a1)
{
  result = +[PLIOReportAgent isOldLostPerfLoggingModel];
  byte_2811F475A = result;
  if (result && (*(a1 + 32) & 1) == 0)
  {
    v3 = MEMORY[0x277D3F180];

    return [v3 enableRestartAtEPL];
  }

  return result;
}

+ (id)entryEventBackwardDefinitionCPUStatsCPUComplexThermalUPOLimiting
{
  v143[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogThermalUPOLimiting])
  {
    v142[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4F8];
    v140[0] = *MEMORY[0x277D3F568];
    v140[1] = v2;
    v141[0] = &unk_282C1C048;
    v141[1] = MEMORY[0x277CBEC28];
    v137 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:2];
    v143[0] = v137;
    v142[1] = *MEMORY[0x277D3F540];
    v138[0] = @"SampleTime";
    v136 = [MEMORY[0x277D3F198] sharedInstance];
    v135 = [v136 commonTypeDict_RealFormat_withUnit_s];
    v139[0] = v135;
    v138[1] = @"APWakeTime";
    v134 = [MEMORY[0x277D3F198] sharedInstance];
    v133 = [v134 commonTypeDict_RealFormat_withUnit_s];
    v139[1] = v133;
    v138[2] = @"CLTM-f_DominantLost_H_H";
    v132 = [MEMORY[0x277D3F198] sharedInstance];
    v131 = [v132 commonTypeDict_RealFormat];
    v139[2] = v131;
    v138[3] = @"CLTM-f_DominantLost_H_M";
    v130 = [MEMORY[0x277D3F198] sharedInstance];
    v129 = [v130 commonTypeDict_RealFormat];
    v139[3] = v129;
    v138[4] = @"CLTM-f_DominantLost_H_L";
    v128 = [MEMORY[0x277D3F198] sharedInstance];
    v127 = [v128 commonTypeDict_RealFormat];
    v139[4] = v127;
    v138[5] = @"CLTM-f_DominantLost_M_M";
    v126 = [MEMORY[0x277D3F198] sharedInstance];
    v125 = [v126 commonTypeDict_RealFormat];
    v139[5] = v125;
    v138[6] = @"CLTM-f_DominantLost_M_L";
    v124 = [MEMORY[0x277D3F198] sharedInstance];
    v123 = [v124 commonTypeDict_RealFormat];
    v139[6] = v123;
    v138[7] = @"CLTM-f_DominantLost_L_L";
    v122 = [MEMORY[0x277D3F198] sharedInstance];
    v121 = [v122 commonTypeDict_RealFormat];
    v139[7] = v121;
    v138[8] = @"CLTM-f_DominantNoLost";
    v120 = [MEMORY[0x277D3F198] sharedInstance];
    v119 = [v120 commonTypeDict_RealFormat];
    v139[8] = v119;
    v138[9] = @"CLTM-f_NotDominantCouldHaveLost";
    v118 = [MEMORY[0x277D3F198] sharedInstance];
    v117 = [v118 commonTypeDict_RealFormat];
    v139[9] = v117;
    v138[10] = @"CLTM-f_NotDominantWouldNotLost";
    v116 = [MEMORY[0x277D3F198] sharedInstance];
    v115 = [v116 commonTypeDict_RealFormat];
    v139[10] = v115;
    v138[11] = @"CLTM-s_DominantLost_H_H";
    v114 = [MEMORY[0x277D3F198] sharedInstance];
    v113 = [v114 commonTypeDict_RealFormat];
    v139[11] = v113;
    v138[12] = @"CLTM-s_DominantLost_H_M";
    v112 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v112 commonTypeDict_RealFormat];
    v139[12] = v111;
    v138[13] = @"CLTM-s_DominantLost_H_L";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v109 = [v110 commonTypeDict_RealFormat];
    v139[13] = v109;
    v138[14] = @"CLTM-s_DominantLost_M_M";
    v108 = [MEMORY[0x277D3F198] sharedInstance];
    v107 = [v108 commonTypeDict_RealFormat];
    v139[14] = v107;
    v138[15] = @"CLTM-s_DominantLost_M_L";
    v106 = [MEMORY[0x277D3F198] sharedInstance];
    v105 = [v106 commonTypeDict_RealFormat];
    v139[15] = v105;
    v138[16] = @"CLTM-s_DominantLost_L_L";
    v104 = [MEMORY[0x277D3F198] sharedInstance];
    v103 = [v104 commonTypeDict_RealFormat];
    v139[16] = v103;
    v138[17] = @"CLTM-s_DominantNoLost";
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v101 = [v102 commonTypeDict_RealFormat];
    v139[17] = v101;
    v138[18] = @"CLTM-s_NotDominantCouldHaveLost";
    v100 = [MEMORY[0x277D3F198] sharedInstance];
    v99 = [v100 commonTypeDict_RealFormat];
    v139[18] = v99;
    v138[19] = @"CLTM-s_NotDominantWouldNotLost";
    v98 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v98 commonTypeDict_RealFormat];
    v139[19] = v97;
    v138[20] = @"HIP_DominantLost_H_H";
    v96 = [MEMORY[0x277D3F198] sharedInstance];
    v95 = [v96 commonTypeDict_RealFormat];
    v139[20] = v95;
    v138[21] = @"HIP_DominantLost_H_M";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v93 = [v94 commonTypeDict_RealFormat];
    v139[21] = v93;
    v138[22] = @"HIP_DominantLost_H_L";
    v92 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v92 commonTypeDict_RealFormat];
    v139[22] = v91;
    v138[23] = @"HIP_DominantLost_M_M";
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v90 commonTypeDict_RealFormat];
    v139[23] = v89;
    v138[24] = @"HIP_DominantLost_M_L";
    v88 = [MEMORY[0x277D3F198] sharedInstance];
    v87 = [v88 commonTypeDict_RealFormat];
    v139[24] = v87;
    v138[25] = @"HIP_DominantLost_L_L";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v85 = [v86 commonTypeDict_RealFormat];
    v139[25] = v85;
    v138[26] = @"HIP_DominantNoLost";
    v84 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v84 commonTypeDict_RealFormat];
    v139[26] = v83;
    v138[27] = @"HIP_NotDominantCouldHaveLost";
    v82 = [MEMORY[0x277D3F198] sharedInstance];
    v81 = [v82 commonTypeDict_RealFormat];
    v139[27] = v81;
    v138[28] = @"HIP_NotDominantWouldNotLost";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v79 = [v80 commonTypeDict_RealFormat];
    v139[28] = v79;
    v138[29] = @"UPO_DominantLost_H_H";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v78 commonTypeDict_RealFormat];
    v139[29] = v77;
    v138[30] = @"UPO_DominantLost_H_M";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v75 = [v76 commonTypeDict_RealFormat];
    v139[30] = v75;
    v138[31] = @"UPO_DominantLost_H_L";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_RealFormat];
    v139[31] = v73;
    v138[32] = @"UPO_DominantLost_M_M";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_RealFormat];
    v139[32] = v71;
    v138[33] = @"UPO_DominantLost_M_L";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_RealFormat];
    v139[33] = v69;
    v138[34] = @"UPO_DominantLost_L_L";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_RealFormat];
    v139[34] = v67;
    v138[35] = @"UPO_DominantNoLost";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_RealFormat];
    v139[35] = v65;
    v138[36] = @"UPO_NotDominantCouldHaveLost";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_RealFormat];
    v139[36] = v63;
    v138[37] = @"UPO_NotDominantWouldNotLost";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_RealFormat];
    v139[37] = v61;
    v138[38] = @"LPM_DominantLost_H_H";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_RealFormat];
    v139[38] = v59;
    v138[39] = @"LPM_DominantLost_H_M";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_RealFormat];
    v139[39] = v57;
    v138[40] = @"LPM_DominantLost_H_L";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_RealFormat];
    v139[40] = v55;
    v138[41] = @"LPM_DominantLost_M_M";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_RealFormat];
    v139[41] = v53;
    v138[42] = @"LPM_DominantLost_M_L";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_RealFormat];
    v139[42] = v51;
    v138[43] = @"LPM_DominantLost_L_L";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_RealFormat];
    v139[43] = v49;
    v138[44] = @"LPM_DominantNoLost";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_RealFormat];
    v139[44] = v47;
    v138[45] = @"LPM_NotDominantCouldHaveLost";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_RealFormat];
    v139[45] = v45;
    v138[46] = @"LPM_NotDominantWouldNotLost";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_RealFormat];
    v139[46] = v43;
    v138[47] = @"Droop_DominantLost_H_H";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_RealFormat];
    v139[47] = v41;
    v138[48] = @"Droop_DominantLost_H_M";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_RealFormat];
    v139[48] = v39;
    v138[49] = @"Droop_DominantLost_H_L";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_RealFormat];
    v139[49] = v37;
    v138[50] = @"Droop_DominantLost_M_M";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_RealFormat];
    v139[50] = v35;
    v138[51] = @"Droop_DominantLost_M_L";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_RealFormat];
    v139[51] = v33;
    v138[52] = @"Droop_DominantLost_L_L";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_RealFormat];
    v139[52] = v31;
    v138[53] = @"Droop_DominantNoLost";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat];
    v139[53] = v29;
    v138[54] = @"Droop_NotDominantCouldHaveLost";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_RealFormat];
    v139[54] = v27;
    v138[55] = @"Droop_NotDominantWouldNotLost";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_RealFormat];
    v139[55] = v25;
    v138[56] = @"CLTM-a_DominantLost_H_H";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_RealFormat];
    v139[56] = v23;
    v138[57] = @"CLTM-a_DominantLost_H_M";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_RealFormat];
    v139[57] = v21;
    v138[58] = @"CLTM-a_DominantLost_H_L";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_RealFormat];
    v139[58] = v19;
    v138[59] = @"CLTM-a_DominantLost_M_M";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat];
    v139[59] = v17;
    v138[60] = @"CLTM-a_DominantLost_M_L";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_RealFormat];
    v139[60] = v15;
    v138[61] = @"CLTM-a_DominantLost_L_L";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v139[61] = v4;
    v138[62] = @"CLTM-a_DominantNoLost";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat];
    v139[62] = v6;
    v138[63] = @"CLTM-a_NotDominantCouldHaveLost";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v139[63] = v8;
    v138[64] = @"CLTM-a_NotDominantWouldNotLost";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat];
    v139[64] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:65];
    v143[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPPMStatsDroopController
{
  v59[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS])
  {
    v58[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v56[0] = *MEMORY[0x277D3F568];
    v56[1] = v2;
    v57[0] = &unk_282C1C028;
    v57[1] = @"logEventBackwardIOReport";
    v56[2] = *MEMORY[0x277D3F4F8];
    v57[2] = MEMORY[0x277CBEC28];
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];
    v59[0] = v53;
    v58[1] = *MEMORY[0x277D3F540];
    v54[0] = @"SampleTime";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_RealFormat_withUnit_s];
    v55[0] = v51;
    v54[1] = @"Utiliztn_0-9%";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_RealFormat];
    v55[1] = v49;
    v54[2] = @"Utiliztn_0-9%_Transitions";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_IntegerFormat];
    v55[2] = v47;
    v54[3] = @"Utiliztn_10-19%";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_RealFormat];
    v55[3] = v45;
    v54[4] = @"Utiliztn_10-19%_Transitions";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v55[4] = v43;
    v54[5] = @"Utiliztn_20-29%";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_RealFormat];
    v55[5] = v41;
    v54[6] = @"Utiliztn_20-29%_Transitions";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v55[6] = v39;
    v54[7] = @"Utiliztn_30-39%";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_RealFormat];
    v55[7] = v37;
    v54[8] = @"Utiliztn_30-39%_Transitions";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v55[8] = v35;
    v54[9] = @"Utiliztn_40-49%";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_RealFormat];
    v55[9] = v33;
    v54[10] = @"Utiliztn_40-49%_Transitions";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v55[10] = v31;
    v54[11] = @"Utiliztn_50-59%";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat];
    v55[11] = v29;
    v54[12] = @"Utiliztn_50-59%_Transitions";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v55[12] = v27;
    v54[13] = @"Utiliztn_60-69%";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_RealFormat];
    v55[13] = v25;
    v54[14] = @"Utiliztn_60-69%_Transitions";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v55[14] = v23;
    v54[15] = @"Utiliztn_70-79%";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_RealFormat];
    v55[15] = v21;
    v54[16] = @"Utiliztn_70-79%_Transitions";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v55[16] = v19;
    v54[17] = @"Utiliztn_80-89%";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat];
    v55[17] = v17;
    v54[18] = @"Utiliztn_80-89%_Transitions";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v55[18] = v15;
    v54[19] = @"Utiliztn_90-99%";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v55[19] = v4;
    v54[20] = @"Utiliztn_90-99%_Transitions";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v55[20] = v6;
    v54[21] = @"Utiliztn_100%";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v55[21] = v8;
    v54[22] = @"Utiliztn_100%_Transitions";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v55[22] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:23];
    v59[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPPMStatsCPMSPowerReduction
{
  v159[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CF6ED8] isCPMSSupported])
  {
    v158[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v156[0] = *MEMORY[0x277D3F568];
    v156[1] = v2;
    v157[0] = &unk_282C1C028;
    v157[1] = @"logEventBackwardIOReport";
    v156[2] = *MEMORY[0x277D3F4F8];
    v157[2] = MEMORY[0x277CBEC28];
    v153 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:3];
    v159[0] = v153;
    v158[1] = *MEMORY[0x277D3F540];
    v154[0] = @"SampleTime";
    v152 = [MEMORY[0x277D3F198] sharedInstance];
    v151 = [v152 commonTypeDict_RealFormat_withUnit_s];
    v155[0] = v151;
    v154[1] = @"Sys100ms_0%";
    v150 = [MEMORY[0x277D3F198] sharedInstance];
    v149 = [v150 commonTypeDict_RealFormat];
    v155[1] = v149;
    v154[2] = @"Sys100ms_0%_Transitions";
    v148 = [MEMORY[0x277D3F198] sharedInstance];
    v147 = [v148 commonTypeDict_IntegerFormat];
    v155[2] = v147;
    v154[3] = @"Sys100ms_1-9%";
    v146 = [MEMORY[0x277D3F198] sharedInstance];
    v145 = [v146 commonTypeDict_RealFormat];
    v155[3] = v145;
    v154[4] = @"Sys100ms_1-9%_Transitions";
    v144 = [MEMORY[0x277D3F198] sharedInstance];
    v143 = [v144 commonTypeDict_IntegerFormat];
    v155[4] = v143;
    v154[5] = @"Sys100ms_10-19%";
    v142 = [MEMORY[0x277D3F198] sharedInstance];
    v141 = [v142 commonTypeDict_RealFormat];
    v155[5] = v141;
    v154[6] = @"Sys100ms_10-19%_Transitions";
    v140 = [MEMORY[0x277D3F198] sharedInstance];
    v139 = [v140 commonTypeDict_IntegerFormat];
    v155[6] = v139;
    v154[7] = @"Sys100ms_20-29%";
    v138 = [MEMORY[0x277D3F198] sharedInstance];
    v137 = [v138 commonTypeDict_RealFormat];
    v155[7] = v137;
    v154[8] = @"Sys100ms_20-29%_Transitions";
    v136 = [MEMORY[0x277D3F198] sharedInstance];
    v135 = [v136 commonTypeDict_IntegerFormat];
    v155[8] = v135;
    v154[9] = @"Sys100ms_30-39%";
    v134 = [MEMORY[0x277D3F198] sharedInstance];
    v133 = [v134 commonTypeDict_RealFormat];
    v155[9] = v133;
    v154[10] = @"Sys100ms_30-39%_Transitions";
    v132 = [MEMORY[0x277D3F198] sharedInstance];
    v131 = [v132 commonTypeDict_IntegerFormat];
    v155[10] = v131;
    v154[11] = @"Sys100ms_40-49%";
    v130 = [MEMORY[0x277D3F198] sharedInstance];
    v129 = [v130 commonTypeDict_RealFormat];
    v155[11] = v129;
    v154[12] = @"Sys100ms_40-49%_Transitions";
    v128 = [MEMORY[0x277D3F198] sharedInstance];
    v127 = [v128 commonTypeDict_IntegerFormat];
    v155[12] = v127;
    v154[13] = @"Sys100ms_50-59%";
    v126 = [MEMORY[0x277D3F198] sharedInstance];
    v125 = [v126 commonTypeDict_RealFormat];
    v155[13] = v125;
    v154[14] = @"Sys100ms_50-59%_Transitions";
    v124 = [MEMORY[0x277D3F198] sharedInstance];
    v123 = [v124 commonTypeDict_IntegerFormat];
    v155[14] = v123;
    v154[15] = @"Sys100ms_60-69%";
    v122 = [MEMORY[0x277D3F198] sharedInstance];
    v121 = [v122 commonTypeDict_RealFormat];
    v155[15] = v121;
    v154[16] = @"Sys100ms_60-69%_Transitions";
    v120 = [MEMORY[0x277D3F198] sharedInstance];
    v119 = [v120 commonTypeDict_IntegerFormat];
    v155[16] = v119;
    v154[17] = @"Sys100ms_70-79%";
    v118 = [MEMORY[0x277D3F198] sharedInstance];
    v117 = [v118 commonTypeDict_RealFormat];
    v155[17] = v117;
    v154[18] = @"Sys100ms_70-79%_Transitions";
    v116 = [MEMORY[0x277D3F198] sharedInstance];
    v115 = [v116 commonTypeDict_IntegerFormat];
    v155[18] = v115;
    v154[19] = @"Sys100ms_80-89%";
    v114 = [MEMORY[0x277D3F198] sharedInstance];
    v113 = [v114 commonTypeDict_RealFormat];
    v155[19] = v113;
    v154[20] = @"Sys100ms_80-89%_Transitions";
    v112 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v112 commonTypeDict_IntegerFormat];
    v155[20] = v111;
    v154[21] = @"Sys100ms_90-99%";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v109 = [v110 commonTypeDict_RealFormat];
    v155[21] = v109;
    v154[22] = @"Sys100ms_90-99%_Transitions";
    v108 = [MEMORY[0x277D3F198] sharedInstance];
    v107 = [v108 commonTypeDict_IntegerFormat];
    v155[22] = v107;
    v154[23] = @"Sys100ms_100%";
    v106 = [MEMORY[0x277D3F198] sharedInstance];
    v105 = [v106 commonTypeDict_RealFormat];
    v155[23] = v105;
    v154[24] = @"Sys100ms_100%_Transitions";
    v104 = [MEMORY[0x277D3F198] sharedInstance];
    v103 = [v104 commonTypeDict_IntegerFormat];
    v155[24] = v103;
    v154[25] = @"SysInst_0%";
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v101 = [v102 commonTypeDict_RealFormat];
    v155[25] = v101;
    v154[26] = @"SysInst_0%_Transitions";
    v100 = [MEMORY[0x277D3F198] sharedInstance];
    v99 = [v100 commonTypeDict_IntegerFormat];
    v155[26] = v99;
    v154[27] = @"SysInst_1-9%";
    v98 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v98 commonTypeDict_RealFormat];
    v155[27] = v97;
    v154[28] = @"SysInst_1-9%_Transitions";
    v96 = [MEMORY[0x277D3F198] sharedInstance];
    v95 = [v96 commonTypeDict_IntegerFormat];
    v155[28] = v95;
    v154[29] = @"SysInst_10-19%";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v93 = [v94 commonTypeDict_RealFormat];
    v155[29] = v93;
    v154[30] = @"SysInst_10-19%_Transitions";
    v92 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v92 commonTypeDict_IntegerFormat];
    v155[30] = v91;
    v154[31] = @"SysInst_20-29%";
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v90 commonTypeDict_RealFormat];
    v155[31] = v89;
    v154[32] = @"SysInst_20-29%_Transitions";
    v88 = [MEMORY[0x277D3F198] sharedInstance];
    v87 = [v88 commonTypeDict_IntegerFormat];
    v155[32] = v87;
    v154[33] = @"SysInst_30-39%";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v85 = [v86 commonTypeDict_RealFormat];
    v155[33] = v85;
    v154[34] = @"SysInst_30-39%_Transitions";
    v84 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v84 commonTypeDict_IntegerFormat];
    v155[34] = v83;
    v154[35] = @"SysInst_40-49%";
    v82 = [MEMORY[0x277D3F198] sharedInstance];
    v81 = [v82 commonTypeDict_RealFormat];
    v155[35] = v81;
    v154[36] = @"SysInst_40-49%_Transitions";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v79 = [v80 commonTypeDict_IntegerFormat];
    v155[36] = v79;
    v154[37] = @"SysInst_50-59%";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v78 commonTypeDict_RealFormat];
    v155[37] = v77;
    v154[38] = @"SysInst_50-59%_Transitions";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v75 = [v76 commonTypeDict_IntegerFormat];
    v155[38] = v75;
    v154[39] = @"SysInst_60-69%";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_RealFormat];
    v155[39] = v73;
    v154[40] = @"SysInst_60-69%_Transitions";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_IntegerFormat];
    v155[40] = v71;
    v154[41] = @"SysInst_70-79%";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_RealFormat];
    v155[41] = v69;
    v154[42] = @"SysInst_70-79%_Transitions";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat];
    v155[42] = v67;
    v154[43] = @"SysInst_80-89%";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_RealFormat];
    v155[43] = v65;
    v154[44] = @"SysInst_80-89%_Transitions";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_IntegerFormat];
    v155[44] = v63;
    v154[45] = @"SysInst_90-99%";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_RealFormat];
    v155[45] = v61;
    v154[46] = @"SysInst_90-99%_Transitions";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_IntegerFormat];
    v155[46] = v59;
    v154[47] = @"SysInst_100%";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_RealFormat];
    v155[47] = v57;
    v154[48] = @"SysInst_100%_Transitions";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_IntegerFormat];
    v155[48] = v55;
    v154[49] = @"Sys1s_0%";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_RealFormat];
    v155[49] = v53;
    v154[50] = @"Sys1s_0%_Transitions";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_IntegerFormat];
    v155[50] = v51;
    v154[51] = @"Sys1s_1-9%";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_RealFormat];
    v155[51] = v49;
    v154[52] = @"Sys1s_1-9%_Transitions";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_IntegerFormat];
    v155[52] = v47;
    v154[53] = @"Sys1s_10-19%";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_RealFormat];
    v155[53] = v45;
    v154[54] = @"Sys1s_10-19%_Transitions";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v155[54] = v43;
    v154[55] = @"Sys1s_20-29%";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_RealFormat];
    v155[55] = v41;
    v154[56] = @"Sys1s_20-29%_Transitions";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v155[56] = v39;
    v154[57] = @"Sys1s_30-39%";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_RealFormat];
    v155[57] = v37;
    v154[58] = @"Sys1s_30-39%_Transitions";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v155[58] = v35;
    v154[59] = @"Sys1s_40-49%";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_RealFormat];
    v155[59] = v33;
    v154[60] = @"Sys1s_40-49%_Transitions";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v155[60] = v31;
    v154[61] = @"Sys1s_50-59%";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat];
    v155[61] = v29;
    v154[62] = @"Sys1s_50-59%_Transitions";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v155[62] = v27;
    v154[63] = @"Sys1s_60-69%";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_RealFormat];
    v155[63] = v25;
    v154[64] = @"Sys1s_60-69%_Transitions";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v155[64] = v23;
    v154[65] = @"Sys1s_70-79%";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_RealFormat];
    v155[65] = v21;
    v154[66] = @"Sys1s_70-79%_Transitions";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v155[66] = v19;
    v154[67] = @"Sys1s_80-89%";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat];
    v155[67] = v17;
    v154[68] = @"Sys1s_80-89%_Transitions";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v155[68] = v15;
    v154[69] = @"Sys1s_90-99%";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v155[69] = v4;
    v154[70] = @"Sys1s_90-99%_Transitions";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v155[70] = v6;
    v154[71] = @"Sys1s_100%";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v155[71] = v8;
    v154[72] = @"Sys1s_100%_Transitions";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v155[72] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:73];
    v159[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPPMStatsCPMSFerocity
{
  v159[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CF6ED8] isCPMSSupported])
  {
    v158[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v156[0] = *MEMORY[0x277D3F568];
    v156[1] = v2;
    v157[0] = &unk_282C1C028;
    v157[1] = @"logEventBackwardIOReport";
    v156[2] = *MEMORY[0x277D3F4F8];
    v157[2] = MEMORY[0x277CBEC28];
    v153 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v157 forKeys:v156 count:3];
    v159[0] = v153;
    v158[1] = *MEMORY[0x277D3F540];
    v154[0] = @"SampleTime";
    v152 = [MEMORY[0x277D3F198] sharedInstance];
    v151 = [v152 commonTypeDict_RealFormat_withUnit_s];
    v155[0] = v151;
    v154[1] = @"Fer100ms_0%";
    v150 = [MEMORY[0x277D3F198] sharedInstance];
    v149 = [v150 commonTypeDict_RealFormat];
    v155[1] = v149;
    v154[2] = @"Fer100ms_0%_Transitions";
    v148 = [MEMORY[0x277D3F198] sharedInstance];
    v147 = [v148 commonTypeDict_IntegerFormat];
    v155[2] = v147;
    v154[3] = @"Fer100ms_1-9%";
    v146 = [MEMORY[0x277D3F198] sharedInstance];
    v145 = [v146 commonTypeDict_RealFormat];
    v155[3] = v145;
    v154[4] = @"Fer100ms_1-9%_Transitions";
    v144 = [MEMORY[0x277D3F198] sharedInstance];
    v143 = [v144 commonTypeDict_IntegerFormat];
    v155[4] = v143;
    v154[5] = @"Fer100ms_10-19%";
    v142 = [MEMORY[0x277D3F198] sharedInstance];
    v141 = [v142 commonTypeDict_RealFormat];
    v155[5] = v141;
    v154[6] = @"Fer100ms_10-19%_Transitions";
    v140 = [MEMORY[0x277D3F198] sharedInstance];
    v139 = [v140 commonTypeDict_IntegerFormat];
    v155[6] = v139;
    v154[7] = @"Fer100ms_20-29%";
    v138 = [MEMORY[0x277D3F198] sharedInstance];
    v137 = [v138 commonTypeDict_RealFormat];
    v155[7] = v137;
    v154[8] = @"Fer100ms_20-29%_Transitions";
    v136 = [MEMORY[0x277D3F198] sharedInstance];
    v135 = [v136 commonTypeDict_IntegerFormat];
    v155[8] = v135;
    v154[9] = @"Fer100ms_30-39%";
    v134 = [MEMORY[0x277D3F198] sharedInstance];
    v133 = [v134 commonTypeDict_RealFormat];
    v155[9] = v133;
    v154[10] = @"Fer100ms_30-39%_Transitions";
    v132 = [MEMORY[0x277D3F198] sharedInstance];
    v131 = [v132 commonTypeDict_IntegerFormat];
    v155[10] = v131;
    v154[11] = @"Fer100ms_40-49%";
    v130 = [MEMORY[0x277D3F198] sharedInstance];
    v129 = [v130 commonTypeDict_RealFormat];
    v155[11] = v129;
    v154[12] = @"Fer100ms_40-49%_Transitions";
    v128 = [MEMORY[0x277D3F198] sharedInstance];
    v127 = [v128 commonTypeDict_IntegerFormat];
    v155[12] = v127;
    v154[13] = @"Fer100ms_50-59%";
    v126 = [MEMORY[0x277D3F198] sharedInstance];
    v125 = [v126 commonTypeDict_RealFormat];
    v155[13] = v125;
    v154[14] = @"Fer100ms_50-59%_Transitions";
    v124 = [MEMORY[0x277D3F198] sharedInstance];
    v123 = [v124 commonTypeDict_IntegerFormat];
    v155[14] = v123;
    v154[15] = @"Fer100ms_60-69%";
    v122 = [MEMORY[0x277D3F198] sharedInstance];
    v121 = [v122 commonTypeDict_RealFormat];
    v155[15] = v121;
    v154[16] = @"Fer100ms_60-69%_Transitions";
    v120 = [MEMORY[0x277D3F198] sharedInstance];
    v119 = [v120 commonTypeDict_IntegerFormat];
    v155[16] = v119;
    v154[17] = @"Fer100ms_70-79%";
    v118 = [MEMORY[0x277D3F198] sharedInstance];
    v117 = [v118 commonTypeDict_RealFormat];
    v155[17] = v117;
    v154[18] = @"Fer100ms_70-79%_Transitions";
    v116 = [MEMORY[0x277D3F198] sharedInstance];
    v115 = [v116 commonTypeDict_IntegerFormat];
    v155[18] = v115;
    v154[19] = @"Fer100ms_80-89%";
    v114 = [MEMORY[0x277D3F198] sharedInstance];
    v113 = [v114 commonTypeDict_RealFormat];
    v155[19] = v113;
    v154[20] = @"Fer100ms_80-89%_Transitions";
    v112 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v112 commonTypeDict_IntegerFormat];
    v155[20] = v111;
    v154[21] = @"Fer100ms_90-99%";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v109 = [v110 commonTypeDict_RealFormat];
    v155[21] = v109;
    v154[22] = @"Fer100ms_90-99%_Transitions";
    v108 = [MEMORY[0x277D3F198] sharedInstance];
    v107 = [v108 commonTypeDict_IntegerFormat];
    v155[22] = v107;
    v154[23] = @"Fer100ms_100%";
    v106 = [MEMORY[0x277D3F198] sharedInstance];
    v105 = [v106 commonTypeDict_RealFormat];
    v155[23] = v105;
    v154[24] = @"Fer100ms_100%_Transitions";
    v104 = [MEMORY[0x277D3F198] sharedInstance];
    v103 = [v104 commonTypeDict_IntegerFormat];
    v155[24] = v103;
    v154[25] = @"FerInst_0%";
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v101 = [v102 commonTypeDict_RealFormat];
    v155[25] = v101;
    v154[26] = @"FerInst_0%_Transitions";
    v100 = [MEMORY[0x277D3F198] sharedInstance];
    v99 = [v100 commonTypeDict_IntegerFormat];
    v155[26] = v99;
    v154[27] = @"FerInst_1-9%";
    v98 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v98 commonTypeDict_RealFormat];
    v155[27] = v97;
    v154[28] = @"FerInst_1-9%_Transitions";
    v96 = [MEMORY[0x277D3F198] sharedInstance];
    v95 = [v96 commonTypeDict_IntegerFormat];
    v155[28] = v95;
    v154[29] = @"FerInst_10-19%";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v93 = [v94 commonTypeDict_RealFormat];
    v155[29] = v93;
    v154[30] = @"FerInst_10-19%_Transitions";
    v92 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v92 commonTypeDict_IntegerFormat];
    v155[30] = v91;
    v154[31] = @"FerInst_20-29%";
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v90 commonTypeDict_RealFormat];
    v155[31] = v89;
    v154[32] = @"FerInst_20-29%_Transitions";
    v88 = [MEMORY[0x277D3F198] sharedInstance];
    v87 = [v88 commonTypeDict_IntegerFormat];
    v155[32] = v87;
    v154[33] = @"FerInst_30-39%";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v85 = [v86 commonTypeDict_RealFormat];
    v155[33] = v85;
    v154[34] = @"FerInst_30-39%_Transitions";
    v84 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v84 commonTypeDict_IntegerFormat];
    v155[34] = v83;
    v154[35] = @"FerInst_40-49%";
    v82 = [MEMORY[0x277D3F198] sharedInstance];
    v81 = [v82 commonTypeDict_RealFormat];
    v155[35] = v81;
    v154[36] = @"FerInst_40-49%_Transitions";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v79 = [v80 commonTypeDict_IntegerFormat];
    v155[36] = v79;
    v154[37] = @"FerInst_50-59%";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v78 commonTypeDict_RealFormat];
    v155[37] = v77;
    v154[38] = @"FerInst_50-59%_Transitions";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v75 = [v76 commonTypeDict_IntegerFormat];
    v155[38] = v75;
    v154[39] = @"FerInst_60-69%";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_RealFormat];
    v155[39] = v73;
    v154[40] = @"FerInst_60-69%_Transitions";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_IntegerFormat];
    v155[40] = v71;
    v154[41] = @"FerInst_70-79%";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_RealFormat];
    v155[41] = v69;
    v154[42] = @"FerInst_70-79%_Transitions";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat];
    v155[42] = v67;
    v154[43] = @"FerInst_80-89%";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_RealFormat];
    v155[43] = v65;
    v154[44] = @"FerInst_80-89%_Transitions";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_IntegerFormat];
    v155[44] = v63;
    v154[45] = @"FerInst_90-99%";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_RealFormat];
    v155[45] = v61;
    v154[46] = @"FerInst_90-99%_Transitions";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_IntegerFormat];
    v155[46] = v59;
    v154[47] = @"FerInst_100%";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_RealFormat];
    v155[47] = v57;
    v154[48] = @"FerInst_100%_Transitions";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_IntegerFormat];
    v155[48] = v55;
    v154[49] = @"Fer1s_0%";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_RealFormat];
    v155[49] = v53;
    v154[50] = @"Fer1s_0%_Transitions";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_IntegerFormat];
    v155[50] = v51;
    v154[51] = @"Fer1s_1-9%";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_RealFormat];
    v155[51] = v49;
    v154[52] = @"Fer1s_1-9%_Transitions";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_IntegerFormat];
    v155[52] = v47;
    v154[53] = @"Fer1s_10-19%";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_RealFormat];
    v155[53] = v45;
    v154[54] = @"Fer1s_10-19%_Transitions";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v155[54] = v43;
    v154[55] = @"Fer1s_20-29%";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_RealFormat];
    v155[55] = v41;
    v154[56] = @"Fer1s_20-29%_Transitions";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v155[56] = v39;
    v154[57] = @"Fer1s_30-39%";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_RealFormat];
    v155[57] = v37;
    v154[58] = @"Fer1s_30-39%_Transitions";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v155[58] = v35;
    v154[59] = @"Fer1s_40-49%";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_RealFormat];
    v155[59] = v33;
    v154[60] = @"Fer1s_40-49%_Transitions";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v155[60] = v31;
    v154[61] = @"Fer1s_50-59%";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat];
    v155[61] = v29;
    v154[62] = @"Fer1s_50-59%_Transitions";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v155[62] = v27;
    v154[63] = @"Fer1s_60-69%";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_RealFormat];
    v155[63] = v25;
    v154[64] = @"Fer1s_60-69%_Transitions";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v155[64] = v23;
    v154[65] = @"Fer1s_70-79%";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_RealFormat];
    v155[65] = v21;
    v154[66] = @"Fer1s_70-79%_Transitions";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v155[66] = v19;
    v154[67] = @"Fer1s_80-89%";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat];
    v155[67] = v17;
    v154[68] = @"Fer1s_80-89%_Transitions";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v155[68] = v15;
    v154[69] = @"Fer1s_90-99%";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v155[69] = v4;
    v154[70] = @"Fer1s_90-99%_Transitions";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v155[70] = v6;
    v154[71] = @"Fer1s_100%";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v155[71] = v8;
    v154[72] = @"Fer1s_100%_Transitions";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v155[72] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v155 forKeys:v154 count:73];
    v159[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPPMStatsPeakPowerPressure
{
  v31[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CF6ED8] isCPMSSupported])
  {
    v30[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v28[0] = *MEMORY[0x277D3F568];
    v28[1] = v2;
    v29[0] = &unk_282C1C028;
    v29[1] = @"logEventBackwardIOReport";
    v28[2] = *MEMORY[0x277D3F4F8];
    v29[2] = MEMORY[0x277CBEC28];
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v31[0] = v25;
    v30[1] = *MEMORY[0x277D3F540];
    v26[0] = @"SampleTime";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_RealFormat_withUnit_s];
    v27[0] = v23;
    v26[1] = @"PPPNotif_0";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_RealFormat];
    v27[1] = v21;
    v26[2] = @"PPPNotif_0_Transitions";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v27[2] = v19;
    v26[3] = @"PPPNotif_1";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat];
    v27[3] = v17;
    v26[4] = @"PPPNotif_1_Transitions";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v27[4] = v15;
    v26[5] = @"PPPNotif_2";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v27[5] = v4;
    v26[6] = @"PPPNotif_2_Transitions";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v27[6] = v6;
    v26[7] = @"PPPNotif_3";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v27[7] = v8;
    v26[8] = @"PPPNotif_3_Transitions";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v27[8] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
    v31[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPPMStatsPolicyCPMS
{
  v351[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CF6ED8] isCPMSSupported])
  {
    v350[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v348[0] = *MEMORY[0x277D3F568];
    v348[1] = v2;
    v349[0] = &unk_282C1C028;
    v349[1] = @"logEventBackwardIOReport";
    v348[2] = *MEMORY[0x277D3F4F8];
    v349[2] = MEMORY[0x277CBEC28];
    v345 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v349 forKeys:v348 count:3];
    v351[0] = v345;
    v350[1] = *MEMORY[0x277D3F540];
    v346[0] = @"SampleTime";
    v344 = [MEMORY[0x277D3F198] sharedInstance];
    v343 = [v344 commonTypeDict_RealFormat_withUnit_s];
    v347[0] = v343;
    v346[1] = @"ServoCE0_0%";
    v342 = [MEMORY[0x277D3F198] sharedInstance];
    v341 = [v342 commonTypeDict_RealFormat];
    v347[1] = v341;
    v346[2] = @"ServoCE0_0%_Transitions";
    v340 = [MEMORY[0x277D3F198] sharedInstance];
    v339 = [v340 commonTypeDict_IntegerFormat];
    v347[2] = v339;
    v346[3] = @"ServoCE0_1-9%";
    v338 = [MEMORY[0x277D3F198] sharedInstance];
    v337 = [v338 commonTypeDict_RealFormat];
    v347[3] = v337;
    v346[4] = @"ServoCE0_1-9%_Transitions";
    v336 = [MEMORY[0x277D3F198] sharedInstance];
    v335 = [v336 commonTypeDict_IntegerFormat];
    v347[4] = v335;
    v346[5] = @"ServoCE0_10-19%";
    v334 = [MEMORY[0x277D3F198] sharedInstance];
    v333 = [v334 commonTypeDict_RealFormat];
    v347[5] = v333;
    v346[6] = @"ServoCE0_10-19%_Transitions";
    v332 = [MEMORY[0x277D3F198] sharedInstance];
    v331 = [v332 commonTypeDict_IntegerFormat];
    v347[6] = v331;
    v346[7] = @"ServoCE0_20-29%";
    v330 = [MEMORY[0x277D3F198] sharedInstance];
    v329 = [v330 commonTypeDict_RealFormat];
    v347[7] = v329;
    v346[8] = @"ServoCE0_20-29%_Transitions";
    v328 = [MEMORY[0x277D3F198] sharedInstance];
    v327 = [v328 commonTypeDict_IntegerFormat];
    v347[8] = v327;
    v346[9] = @"ServoCE0_30-39%";
    v326 = [MEMORY[0x277D3F198] sharedInstance];
    v325 = [v326 commonTypeDict_RealFormat];
    v347[9] = v325;
    v346[10] = @"ServoCE0_30-39%_Transitions";
    v324 = [MEMORY[0x277D3F198] sharedInstance];
    v323 = [v324 commonTypeDict_IntegerFormat];
    v347[10] = v323;
    v346[11] = @"ServoCE0_40-49%";
    v322 = [MEMORY[0x277D3F198] sharedInstance];
    v321 = [v322 commonTypeDict_RealFormat];
    v347[11] = v321;
    v346[12] = @"ServoCE0_40-49%_Transitions";
    v320 = [MEMORY[0x277D3F198] sharedInstance];
    v319 = [v320 commonTypeDict_IntegerFormat];
    v347[12] = v319;
    v346[13] = @"ServoCE0_50-59%";
    v318 = [MEMORY[0x277D3F198] sharedInstance];
    v317 = [v318 commonTypeDict_RealFormat];
    v347[13] = v317;
    v346[14] = @"ServoCE0_50-59%_Transitions";
    v316 = [MEMORY[0x277D3F198] sharedInstance];
    v315 = [v316 commonTypeDict_IntegerFormat];
    v347[14] = v315;
    v346[15] = @"ServoCE0_60-69%";
    v314 = [MEMORY[0x277D3F198] sharedInstance];
    v313 = [v314 commonTypeDict_RealFormat];
    v347[15] = v313;
    v346[16] = @"ServoCE0_60-69%_Transitions";
    v312 = [MEMORY[0x277D3F198] sharedInstance];
    v311 = [v312 commonTypeDict_IntegerFormat];
    v347[16] = v311;
    v346[17] = @"ServoCE0_70-79%";
    v310 = [MEMORY[0x277D3F198] sharedInstance];
    v309 = [v310 commonTypeDict_RealFormat];
    v347[17] = v309;
    v346[18] = @"ServoCE0_70-79%_Transitions";
    v308 = [MEMORY[0x277D3F198] sharedInstance];
    v307 = [v308 commonTypeDict_IntegerFormat];
    v347[18] = v307;
    v346[19] = @"ServoCE0_80-89%";
    v306 = [MEMORY[0x277D3F198] sharedInstance];
    v305 = [v306 commonTypeDict_RealFormat];
    v347[19] = v305;
    v346[20] = @"ServoCE0_80-89%_Transitions";
    v304 = [MEMORY[0x277D3F198] sharedInstance];
    v303 = [v304 commonTypeDict_IntegerFormat];
    v347[20] = v303;
    v346[21] = @"ServoCE0_90-99%";
    v302 = [MEMORY[0x277D3F198] sharedInstance];
    v301 = [v302 commonTypeDict_RealFormat];
    v347[21] = v301;
    v346[22] = @"ServoCE0_90-99%_Transitions";
    v300 = [MEMORY[0x277D3F198] sharedInstance];
    v299 = [v300 commonTypeDict_IntegerFormat];
    v347[22] = v299;
    v346[23] = @"ServoCE0_100%";
    v298 = [MEMORY[0x277D3F198] sharedInstance];
    v297 = [v298 commonTypeDict_RealFormat];
    v347[23] = v297;
    v346[24] = @"ServoCE0_100%_Transitions";
    v296 = [MEMORY[0x277D3F198] sharedInstance];
    v295 = [v296 commonTypeDict_IntegerFormat];
    v347[24] = v295;
    v346[25] = @"ServoCE1_0%";
    v294 = [MEMORY[0x277D3F198] sharedInstance];
    v293 = [v294 commonTypeDict_RealFormat];
    v347[25] = v293;
    v346[26] = @"ServoCE1_0%_Transitions";
    v292 = [MEMORY[0x277D3F198] sharedInstance];
    v291 = [v292 commonTypeDict_IntegerFormat];
    v347[26] = v291;
    v346[27] = @"ServoCE1_1-9%";
    v290 = [MEMORY[0x277D3F198] sharedInstance];
    v289 = [v290 commonTypeDict_RealFormat];
    v347[27] = v289;
    v346[28] = @"ServoCE1_1-9%_Transitions";
    v288 = [MEMORY[0x277D3F198] sharedInstance];
    v287 = [v288 commonTypeDict_IntegerFormat];
    v347[28] = v287;
    v346[29] = @"ServoCE1_10-19%";
    v286 = [MEMORY[0x277D3F198] sharedInstance];
    v285 = [v286 commonTypeDict_RealFormat];
    v347[29] = v285;
    v346[30] = @"ServoCE1_10-19%_Transitions";
    v284 = [MEMORY[0x277D3F198] sharedInstance];
    v283 = [v284 commonTypeDict_IntegerFormat];
    v347[30] = v283;
    v346[31] = @"ServoCE1_20-29%";
    v282 = [MEMORY[0x277D3F198] sharedInstance];
    v281 = [v282 commonTypeDict_RealFormat];
    v347[31] = v281;
    v346[32] = @"ServoCE1_20-29%_Transitions";
    v280 = [MEMORY[0x277D3F198] sharedInstance];
    v279 = [v280 commonTypeDict_IntegerFormat];
    v347[32] = v279;
    v346[33] = @"ServoCE1_30-39%";
    v278 = [MEMORY[0x277D3F198] sharedInstance];
    v277 = [v278 commonTypeDict_RealFormat];
    v347[33] = v277;
    v346[34] = @"ServoCE1_30-39%_Transitions";
    v276 = [MEMORY[0x277D3F198] sharedInstance];
    v275 = [v276 commonTypeDict_IntegerFormat];
    v347[34] = v275;
    v346[35] = @"ServoCE1_40-49%";
    v274 = [MEMORY[0x277D3F198] sharedInstance];
    v273 = [v274 commonTypeDict_RealFormat];
    v347[35] = v273;
    v346[36] = @"ServoCE1_40-49%_Transitions";
    v272 = [MEMORY[0x277D3F198] sharedInstance];
    v271 = [v272 commonTypeDict_IntegerFormat];
    v347[36] = v271;
    v346[37] = @"ServoCE1_50-59%";
    v270 = [MEMORY[0x277D3F198] sharedInstance];
    v269 = [v270 commonTypeDict_RealFormat];
    v347[37] = v269;
    v346[38] = @"ServoCE1_50-59%_Transitions";
    v268 = [MEMORY[0x277D3F198] sharedInstance];
    v267 = [v268 commonTypeDict_IntegerFormat];
    v347[38] = v267;
    v346[39] = @"ServoCE1_60-69%";
    v266 = [MEMORY[0x277D3F198] sharedInstance];
    v265 = [v266 commonTypeDict_RealFormat];
    v347[39] = v265;
    v346[40] = @"ServoCE1_60-69%_Transitions";
    v264 = [MEMORY[0x277D3F198] sharedInstance];
    v263 = [v264 commonTypeDict_IntegerFormat];
    v347[40] = v263;
    v346[41] = @"ServoCE1_70-79%";
    v262 = [MEMORY[0x277D3F198] sharedInstance];
    v261 = [v262 commonTypeDict_RealFormat];
    v347[41] = v261;
    v346[42] = @"ServoCE1_70-79%_Transitions";
    v260 = [MEMORY[0x277D3F198] sharedInstance];
    v259 = [v260 commonTypeDict_IntegerFormat];
    v347[42] = v259;
    v346[43] = @"ServoCE1_80-89%";
    v258 = [MEMORY[0x277D3F198] sharedInstance];
    v257 = [v258 commonTypeDict_RealFormat];
    v347[43] = v257;
    v346[44] = @"ServoCE1_80-89%_Transitions";
    v256 = [MEMORY[0x277D3F198] sharedInstance];
    v255 = [v256 commonTypeDict_IntegerFormat];
    v347[44] = v255;
    v346[45] = @"ServoCE1_90-99%";
    v254 = [MEMORY[0x277D3F198] sharedInstance];
    v253 = [v254 commonTypeDict_RealFormat];
    v347[45] = v253;
    v346[46] = @"ServoCE1_90-99%_Transitions";
    v252 = [MEMORY[0x277D3F198] sharedInstance];
    v251 = [v252 commonTypeDict_IntegerFormat];
    v347[46] = v251;
    v346[47] = @"ServoCE1_100%";
    v250 = [MEMORY[0x277D3F198] sharedInstance];
    v249 = [v250 commonTypeDict_RealFormat];
    v347[47] = v249;
    v346[48] = @"ServoCE1_100%_Transitions";
    v248 = [MEMORY[0x277D3F198] sharedInstance];
    v247 = [v248 commonTypeDict_IntegerFormat];
    v347[48] = v247;
    v346[49] = @"ServoCE2_0%";
    v246 = [MEMORY[0x277D3F198] sharedInstance];
    v245 = [v246 commonTypeDict_RealFormat];
    v347[49] = v245;
    v346[50] = @"ServoCE2_0%_Transitions";
    v244 = [MEMORY[0x277D3F198] sharedInstance];
    v243 = [v244 commonTypeDict_IntegerFormat];
    v347[50] = v243;
    v346[51] = @"ServoCE2_1-9%";
    v242 = [MEMORY[0x277D3F198] sharedInstance];
    v241 = [v242 commonTypeDict_RealFormat];
    v347[51] = v241;
    v346[52] = @"ServoCE2_1-9%_Transitions";
    v240 = [MEMORY[0x277D3F198] sharedInstance];
    v239 = [v240 commonTypeDict_IntegerFormat];
    v347[52] = v239;
    v346[53] = @"ServoCE2_10-19%";
    v238 = [MEMORY[0x277D3F198] sharedInstance];
    v237 = [v238 commonTypeDict_RealFormat];
    v347[53] = v237;
    v346[54] = @"ServoCE2_10-19%_Transitions";
    v236 = [MEMORY[0x277D3F198] sharedInstance];
    v235 = [v236 commonTypeDict_IntegerFormat];
    v347[54] = v235;
    v346[55] = @"ServoCE2_20-29%";
    v234 = [MEMORY[0x277D3F198] sharedInstance];
    v233 = [v234 commonTypeDict_RealFormat];
    v347[55] = v233;
    v346[56] = @"ServoCE2_20-29%_Transitions";
    v232 = [MEMORY[0x277D3F198] sharedInstance];
    v231 = [v232 commonTypeDict_IntegerFormat];
    v347[56] = v231;
    v346[57] = @"ServoCE2_30-39%";
    v230 = [MEMORY[0x277D3F198] sharedInstance];
    v229 = [v230 commonTypeDict_RealFormat];
    v347[57] = v229;
    v346[58] = @"ServoCE2_30-39%_Transitions";
    v228 = [MEMORY[0x277D3F198] sharedInstance];
    v227 = [v228 commonTypeDict_IntegerFormat];
    v347[58] = v227;
    v346[59] = @"ServoCE2_40-49%";
    v226 = [MEMORY[0x277D3F198] sharedInstance];
    v225 = [v226 commonTypeDict_RealFormat];
    v347[59] = v225;
    v346[60] = @"ServoCE2_40-49%_Transitions";
    v224 = [MEMORY[0x277D3F198] sharedInstance];
    v223 = [v224 commonTypeDict_IntegerFormat];
    v347[60] = v223;
    v346[61] = @"ServoCE2_50-59%";
    v222 = [MEMORY[0x277D3F198] sharedInstance];
    v221 = [v222 commonTypeDict_RealFormat];
    v347[61] = v221;
    v346[62] = @"ServoCE2_50-59%_Transitions";
    v220 = [MEMORY[0x277D3F198] sharedInstance];
    v219 = [v220 commonTypeDict_IntegerFormat];
    v347[62] = v219;
    v346[63] = @"ServoCE2_60-69%";
    v218 = [MEMORY[0x277D3F198] sharedInstance];
    v217 = [v218 commonTypeDict_RealFormat];
    v347[63] = v217;
    v346[64] = @"ServoCE2_60-69%_Transitions";
    v216 = [MEMORY[0x277D3F198] sharedInstance];
    v215 = [v216 commonTypeDict_IntegerFormat];
    v347[64] = v215;
    v346[65] = @"ServoCE2_70-79%";
    v214 = [MEMORY[0x277D3F198] sharedInstance];
    v213 = [v214 commonTypeDict_RealFormat];
    v347[65] = v213;
    v346[66] = @"ServoCE2_70-79%_Transitions";
    v212 = [MEMORY[0x277D3F198] sharedInstance];
    v211 = [v212 commonTypeDict_IntegerFormat];
    v347[66] = v211;
    v346[67] = @"ServoCE2_80-89%";
    v210 = [MEMORY[0x277D3F198] sharedInstance];
    v209 = [v210 commonTypeDict_RealFormat];
    v347[67] = v209;
    v346[68] = @"ServoCE2_80-89%_Transitions";
    v208 = [MEMORY[0x277D3F198] sharedInstance];
    v207 = [v208 commonTypeDict_IntegerFormat];
    v347[68] = v207;
    v346[69] = @"ServoCE2_90-99%";
    v206 = [MEMORY[0x277D3F198] sharedInstance];
    v205 = [v206 commonTypeDict_RealFormat];
    v347[69] = v205;
    v346[70] = @"ServoCE2_90-99%_Transitions";
    v204 = [MEMORY[0x277D3F198] sharedInstance];
    v203 = [v204 commonTypeDict_IntegerFormat];
    v347[70] = v203;
    v346[71] = @"ServoCE2_100%";
    v202 = [MEMORY[0x277D3F198] sharedInstance];
    v201 = [v202 commonTypeDict_RealFormat];
    v347[71] = v201;
    v346[72] = @"ServoCE2_100%_Transitions";
    v200 = [MEMORY[0x277D3F198] sharedInstance];
    v199 = [v200 commonTypeDict_IntegerFormat];
    v347[72] = v199;
    v346[73] = @"ServoCE3_0%";
    v198 = [MEMORY[0x277D3F198] sharedInstance];
    v197 = [v198 commonTypeDict_RealFormat];
    v347[73] = v197;
    v346[74] = @"ServoCE3_0%_Transitions";
    v196 = [MEMORY[0x277D3F198] sharedInstance];
    v195 = [v196 commonTypeDict_IntegerFormat];
    v347[74] = v195;
    v346[75] = @"ServoCE3_1-9%";
    v194 = [MEMORY[0x277D3F198] sharedInstance];
    v193 = [v194 commonTypeDict_RealFormat];
    v347[75] = v193;
    v346[76] = @"ServoCE3_1-9%_Transitions";
    v192 = [MEMORY[0x277D3F198] sharedInstance];
    v191 = [v192 commonTypeDict_IntegerFormat];
    v347[76] = v191;
    v346[77] = @"ServoCE3_10-19%";
    v190 = [MEMORY[0x277D3F198] sharedInstance];
    v189 = [v190 commonTypeDict_RealFormat];
    v347[77] = v189;
    v346[78] = @"ServoCE3_10-19%_Transitions";
    v188 = [MEMORY[0x277D3F198] sharedInstance];
    v187 = [v188 commonTypeDict_IntegerFormat];
    v347[78] = v187;
    v346[79] = @"ServoCE3_20-29%";
    v186 = [MEMORY[0x277D3F198] sharedInstance];
    v185 = [v186 commonTypeDict_RealFormat];
    v347[79] = v185;
    v346[80] = @"ServoCE3_20-29%_Transitions";
    v184 = [MEMORY[0x277D3F198] sharedInstance];
    v183 = [v184 commonTypeDict_IntegerFormat];
    v347[80] = v183;
    v346[81] = @"ServoCE3_30-39%";
    v182 = [MEMORY[0x277D3F198] sharedInstance];
    v181 = [v182 commonTypeDict_RealFormat];
    v347[81] = v181;
    v346[82] = @"ServoCE3_30-39%_Transitions";
    v180 = [MEMORY[0x277D3F198] sharedInstance];
    v179 = [v180 commonTypeDict_IntegerFormat];
    v347[82] = v179;
    v346[83] = @"ServoCE3_40-49%";
    v178 = [MEMORY[0x277D3F198] sharedInstance];
    v177 = [v178 commonTypeDict_RealFormat];
    v347[83] = v177;
    v346[84] = @"ServoCE3_40-49%_Transitions";
    v176 = [MEMORY[0x277D3F198] sharedInstance];
    v175 = [v176 commonTypeDict_IntegerFormat];
    v347[84] = v175;
    v346[85] = @"ServoCE3_50-59%";
    v174 = [MEMORY[0x277D3F198] sharedInstance];
    v173 = [v174 commonTypeDict_RealFormat];
    v347[85] = v173;
    v346[86] = @"ServoCE3_50-59%_Transitions";
    v172 = [MEMORY[0x277D3F198] sharedInstance];
    v171 = [v172 commonTypeDict_IntegerFormat];
    v347[86] = v171;
    v346[87] = @"ServoCE3_60-69%";
    v170 = [MEMORY[0x277D3F198] sharedInstance];
    v169 = [v170 commonTypeDict_RealFormat];
    v347[87] = v169;
    v346[88] = @"ServoCE3_60-69%_Transitions";
    v168 = [MEMORY[0x277D3F198] sharedInstance];
    v167 = [v168 commonTypeDict_IntegerFormat];
    v347[88] = v167;
    v346[89] = @"ServoCE3_70-79%";
    v166 = [MEMORY[0x277D3F198] sharedInstance];
    v165 = [v166 commonTypeDict_RealFormat];
    v347[89] = v165;
    v346[90] = @"ServoCE3_70-79%_Transitions";
    v164 = [MEMORY[0x277D3F198] sharedInstance];
    v163 = [v164 commonTypeDict_IntegerFormat];
    v347[90] = v163;
    v346[91] = @"ServoCE3_80-89%";
    v162 = [MEMORY[0x277D3F198] sharedInstance];
    v161 = [v162 commonTypeDict_RealFormat];
    v347[91] = v161;
    v346[92] = @"ServoCE3_80-89%_Transitions";
    v160 = [MEMORY[0x277D3F198] sharedInstance];
    v159 = [v160 commonTypeDict_IntegerFormat];
    v347[92] = v159;
    v346[93] = @"ServoCE3_90-99%";
    v158 = [MEMORY[0x277D3F198] sharedInstance];
    v157 = [v158 commonTypeDict_RealFormat];
    v347[93] = v157;
    v346[94] = @"ServoCE3_90-99%_Transitions";
    v156 = [MEMORY[0x277D3F198] sharedInstance];
    v155 = [v156 commonTypeDict_IntegerFormat];
    v347[94] = v155;
    v346[95] = @"ServoCE3_100%";
    v154 = [MEMORY[0x277D3F198] sharedInstance];
    v153 = [v154 commonTypeDict_RealFormat];
    v347[95] = v153;
    v346[96] = @"ServoCE3_100%_Transitions";
    v152 = [MEMORY[0x277D3F198] sharedInstance];
    v151 = [v152 commonTypeDict_IntegerFormat];
    v347[96] = v151;
    v346[97] = @"ServoCE4_0%";
    v150 = [MEMORY[0x277D3F198] sharedInstance];
    v149 = [v150 commonTypeDict_RealFormat];
    v347[97] = v149;
    v346[98] = @"ServoCE4_0%_Transitions";
    v148 = [MEMORY[0x277D3F198] sharedInstance];
    v147 = [v148 commonTypeDict_IntegerFormat];
    v347[98] = v147;
    v346[99] = @"ServoCE4_1-9%";
    v146 = [MEMORY[0x277D3F198] sharedInstance];
    v145 = [v146 commonTypeDict_RealFormat];
    v347[99] = v145;
    v346[100] = @"ServoCE4_1-9%_Transitions";
    v144 = [MEMORY[0x277D3F198] sharedInstance];
    v143 = [v144 commonTypeDict_IntegerFormat];
    v347[100] = v143;
    v346[101] = @"ServoCE4_10-19%";
    v142 = [MEMORY[0x277D3F198] sharedInstance];
    v141 = [v142 commonTypeDict_RealFormat];
    v347[101] = v141;
    v346[102] = @"ServoCE4_10-19%_Transitions";
    v140 = [MEMORY[0x277D3F198] sharedInstance];
    v139 = [v140 commonTypeDict_IntegerFormat];
    v347[102] = v139;
    v346[103] = @"ServoCE4_20-29%";
    v138 = [MEMORY[0x277D3F198] sharedInstance];
    v137 = [v138 commonTypeDict_RealFormat];
    v347[103] = v137;
    v346[104] = @"ServoCE4_20-29%_Transitions";
    v136 = [MEMORY[0x277D3F198] sharedInstance];
    v135 = [v136 commonTypeDict_IntegerFormat];
    v347[104] = v135;
    v346[105] = @"ServoCE4_30-39%";
    v134 = [MEMORY[0x277D3F198] sharedInstance];
    v133 = [v134 commonTypeDict_RealFormat];
    v347[105] = v133;
    v346[106] = @"ServoCE4_30-39%_Transitions";
    v132 = [MEMORY[0x277D3F198] sharedInstance];
    v131 = [v132 commonTypeDict_IntegerFormat];
    v347[106] = v131;
    v346[107] = @"ServoCE4_40-49%";
    v130 = [MEMORY[0x277D3F198] sharedInstance];
    v129 = [v130 commonTypeDict_RealFormat];
    v347[107] = v129;
    v346[108] = @"ServoCE4_40-49%_Transitions";
    v128 = [MEMORY[0x277D3F198] sharedInstance];
    v127 = [v128 commonTypeDict_IntegerFormat];
    v347[108] = v127;
    v346[109] = @"ServoCE4_50-59%";
    v126 = [MEMORY[0x277D3F198] sharedInstance];
    v125 = [v126 commonTypeDict_RealFormat];
    v347[109] = v125;
    v346[110] = @"ServoCE4_50-59%_Transitions";
    v124 = [MEMORY[0x277D3F198] sharedInstance];
    v123 = [v124 commonTypeDict_IntegerFormat];
    v347[110] = v123;
    v346[111] = @"ServoCE4_60-69%";
    v122 = [MEMORY[0x277D3F198] sharedInstance];
    v121 = [v122 commonTypeDict_RealFormat];
    v347[111] = v121;
    v346[112] = @"ServoCE4_60-69%_Transitions";
    v120 = [MEMORY[0x277D3F198] sharedInstance];
    v119 = [v120 commonTypeDict_IntegerFormat];
    v347[112] = v119;
    v346[113] = @"ServoCE4_70-79%";
    v118 = [MEMORY[0x277D3F198] sharedInstance];
    v117 = [v118 commonTypeDict_RealFormat];
    v347[113] = v117;
    v346[114] = @"ServoCE4_70-79%_Transitions";
    v116 = [MEMORY[0x277D3F198] sharedInstance];
    v115 = [v116 commonTypeDict_IntegerFormat];
    v347[114] = v115;
    v346[115] = @"ServoCE4_80-89%";
    v114 = [MEMORY[0x277D3F198] sharedInstance];
    v113 = [v114 commonTypeDict_RealFormat];
    v347[115] = v113;
    v346[116] = @"ServoCE4_80-89%_Transitions";
    v112 = [MEMORY[0x277D3F198] sharedInstance];
    v111 = [v112 commonTypeDict_IntegerFormat];
    v347[116] = v111;
    v346[117] = @"ServoCE4_90-99%";
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v109 = [v110 commonTypeDict_RealFormat];
    v347[117] = v109;
    v346[118] = @"ServoCE4_90-99%_Transitions";
    v108 = [MEMORY[0x277D3F198] sharedInstance];
    v107 = [v108 commonTypeDict_IntegerFormat];
    v347[118] = v107;
    v346[119] = @"ServoCE4_100%";
    v106 = [MEMORY[0x277D3F198] sharedInstance];
    v105 = [v106 commonTypeDict_RealFormat];
    v347[119] = v105;
    v346[120] = @"ServoCE4_100%_Transitions";
    v104 = [MEMORY[0x277D3F198] sharedInstance];
    v103 = [v104 commonTypeDict_IntegerFormat];
    v347[120] = v103;
    v346[121] = @"ServoCE5_0%";
    v102 = [MEMORY[0x277D3F198] sharedInstance];
    v101 = [v102 commonTypeDict_RealFormat];
    v347[121] = v101;
    v346[122] = @"ServoCE5_0%_Transitions";
    v100 = [MEMORY[0x277D3F198] sharedInstance];
    v99 = [v100 commonTypeDict_IntegerFormat];
    v347[122] = v99;
    v346[123] = @"ServoCE5_1-9%";
    v98 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v98 commonTypeDict_RealFormat];
    v347[123] = v97;
    v346[124] = @"ServoCE5_1-9%_Transitions";
    v96 = [MEMORY[0x277D3F198] sharedInstance];
    v95 = [v96 commonTypeDict_IntegerFormat];
    v347[124] = v95;
    v346[125] = @"ServoCE5_10-19%";
    v94 = [MEMORY[0x277D3F198] sharedInstance];
    v93 = [v94 commonTypeDict_RealFormat];
    v347[125] = v93;
    v346[126] = @"ServoCE5_10-19%_Transitions";
    v92 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v92 commonTypeDict_IntegerFormat];
    v347[126] = v91;
    v346[127] = @"ServoCE5_20-29%";
    v90 = [MEMORY[0x277D3F198] sharedInstance];
    v89 = [v90 commonTypeDict_RealFormat];
    v347[127] = v89;
    v346[128] = @"ServoCE5_20-29%_Transitions";
    v88 = [MEMORY[0x277D3F198] sharedInstance];
    v87 = [v88 commonTypeDict_IntegerFormat];
    v347[128] = v87;
    v346[129] = @"ServoCE5_30-39%";
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v85 = [v86 commonTypeDict_RealFormat];
    v347[129] = v85;
    v346[130] = @"ServoCE5_30-39%_Transitions";
    v84 = [MEMORY[0x277D3F198] sharedInstance];
    v83 = [v84 commonTypeDict_IntegerFormat];
    v347[130] = v83;
    v346[131] = @"ServoCE5_40-49%";
    v82 = [MEMORY[0x277D3F198] sharedInstance];
    v81 = [v82 commonTypeDict_RealFormat];
    v347[131] = v81;
    v346[132] = @"ServoCE5_40-49%_Transitions";
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v79 = [v80 commonTypeDict_IntegerFormat];
    v347[132] = v79;
    v346[133] = @"ServoCE5_50-59%";
    v78 = [MEMORY[0x277D3F198] sharedInstance];
    v77 = [v78 commonTypeDict_RealFormat];
    v347[133] = v77;
    v346[134] = @"ServoCE5_50-59%_Transitions";
    v76 = [MEMORY[0x277D3F198] sharedInstance];
    v75 = [v76 commonTypeDict_IntegerFormat];
    v347[134] = v75;
    v346[135] = @"ServoCE5_60-69%";
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_RealFormat];
    v347[135] = v73;
    v346[136] = @"ServoCE5_60-69%_Transitions";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_IntegerFormat];
    v347[136] = v71;
    v346[137] = @"ServoCE5_70-79%";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_RealFormat];
    v347[137] = v69;
    v346[138] = @"ServoCE5_70-79%_Transitions";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat];
    v347[138] = v67;
    v346[139] = @"ServoCE5_80-89%";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_RealFormat];
    v347[139] = v65;
    v346[140] = @"ServoCE5_80-89%_Transitions";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_IntegerFormat];
    v347[140] = v63;
    v346[141] = @"ServoCE5_90-99%";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_RealFormat];
    v347[141] = v61;
    v346[142] = @"ServoCE5_90-99%_Transitions";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_IntegerFormat];
    v347[142] = v59;
    v346[143] = @"ServoCE5_100%";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_RealFormat];
    v347[143] = v57;
    v346[144] = @"ServoCE5_100%_Transitions";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_IntegerFormat];
    v347[144] = v55;
    v346[145] = @"ServoCE6_0%";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_RealFormat];
    v347[145] = v53;
    v346[146] = @"ServoCE6_0%_Transitions";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_IntegerFormat];
    v347[146] = v51;
    v346[147] = @"ServoCE6_1-9%";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_RealFormat];
    v347[147] = v49;
    v346[148] = @"ServoCE6_1-9%_Transitions";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_IntegerFormat];
    v347[148] = v47;
    v346[149] = @"ServoCE6_10-19%";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_RealFormat];
    v347[149] = v45;
    v346[150] = @"ServoCE6_10-19%_Transitions";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v347[150] = v43;
    v346[151] = @"ServoCE6_20-29%";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_RealFormat];
    v347[151] = v41;
    v346[152] = @"ServoCE6_20-29%_Transitions";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_IntegerFormat];
    v347[152] = v39;
    v346[153] = @"ServoCE6_30-39%";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_RealFormat];
    v347[153] = v37;
    v346[154] = @"ServoCE6_30-39%_Transitions";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_IntegerFormat];
    v347[154] = v35;
    v346[155] = @"ServoCE6_40-49%";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_RealFormat];
    v347[155] = v33;
    v346[156] = @"ServoCE6_40-49%_Transitions";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v347[156] = v31;
    v346[157] = @"ServoCE6_50-59%";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat];
    v347[157] = v29;
    v346[158] = @"ServoCE6_50-59%_Transitions";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v347[158] = v27;
    v346[159] = @"ServoCE6_60-69%";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_RealFormat];
    v347[159] = v25;
    v346[160] = @"ServoCE6_60-69%_Transitions";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v347[160] = v23;
    v346[161] = @"ServoCE6_70-79%";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_RealFormat];
    v347[161] = v21;
    v346[162] = @"ServoCE6_70-79%_Transitions";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v347[162] = v19;
    v346[163] = @"ServoCE6_80-89%";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat];
    v347[163] = v17;
    v346[164] = @"ServoCE6_80-89%_Transitions";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v347[164] = v15;
    v346[165] = @"ServoCE6_90-99%";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat];
    v347[165] = v4;
    v346[166] = @"ServoCE6_90-99%_Transitions";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v347[166] = v6;
    v346[167] = @"ServoCE6_100%";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat];
    v347[167] = v8;
    v346[168] = @"ServoCE6_100%_Transitions";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v347[168] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v347 forKeys:v346 count:169];
    v351[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v351 forKeys:v350 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPPMStatsCPMSLanesEngagement
{
  v79[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CF6ED8] isCPMSSupported])
  {
    v78[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v76[0] = *MEMORY[0x277D3F568];
    v76[1] = v2;
    v77[0] = &unk_282C1C028;
    v77[1] = @"logEventBackwardIOReport";
    v76[2] = *MEMORY[0x277D3F4F8];
    v77[2] = MEMORY[0x277CBEC28];
    v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
    v79[0] = v73;
    v78[1] = *MEMORY[0x277D3F540];
    v74[0] = @"SampleTime";
    v72 = [MEMORY[0x277D3F198] sharedInstance];
    v71 = [v72 commonTypeDict_RealFormat_withUnit_s];
    v75[0] = v71;
    v74[1] = @"LanesEng_0";
    v70 = [MEMORY[0x277D3F198] sharedInstance];
    v69 = [v70 commonTypeDict_RealFormat_withUnit_s];
    v75[1] = v69;
    v74[2] = @"LanesEng_1";
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_RealFormat_withUnit_s];
    v75[2] = v67;
    v74[3] = @"LanesEng_2";
    v66 = [MEMORY[0x277D3F198] sharedInstance];
    v65 = [v66 commonTypeDict_RealFormat_withUnit_s];
    v75[3] = v65;
    v74[4] = @"LanesEng_3";
    v64 = [MEMORY[0x277D3F198] sharedInstance];
    v63 = [v64 commonTypeDict_RealFormat_withUnit_s];
    v75[4] = v63;
    v74[5] = @"LanesEng_4";
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_RealFormat_withUnit_s];
    v75[5] = v61;
    v74[6] = @"LanesEng_5";
    v60 = [MEMORY[0x277D3F198] sharedInstance];
    v59 = [v60 commonTypeDict_RealFormat_withUnit_s];
    v75[6] = v59;
    v74[7] = @"LanesEng_6";
    v58 = [MEMORY[0x277D3F198] sharedInstance];
    v57 = [v58 commonTypeDict_RealFormat_withUnit_s];
    v75[7] = v57;
    v74[8] = @"LanesEng_7";
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_RealFormat_withUnit_s];
    v75[8] = v55;
    v74[9] = @"LanesEng_8";
    v54 = [MEMORY[0x277D3F198] sharedInstance];
    v53 = [v54 commonTypeDict_RealFormat_withUnit_s];
    v75[9] = v53;
    v74[10] = @"LanesEng_9";
    v52 = [MEMORY[0x277D3F198] sharedInstance];
    v51 = [v52 commonTypeDict_RealFormat_withUnit_s];
    v75[10] = v51;
    v74[11] = @"LanesEng_10";
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_RealFormat_withUnit_s];
    v75[11] = v49;
    v74[12] = @"LanesEng_11";
    v48 = [MEMORY[0x277D3F198] sharedInstance];
    v47 = [v48 commonTypeDict_RealFormat_withUnit_s];
    v75[12] = v47;
    v74[13] = @"LanesEng_12";
    v46 = [MEMORY[0x277D3F198] sharedInstance];
    v45 = [v46 commonTypeDict_RealFormat_withUnit_s];
    v75[13] = v45;
    v74[14] = @"LanesEng_13";
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_RealFormat_withUnit_s];
    v75[14] = v43;
    v74[15] = @"LanesEng_14";
    v42 = [MEMORY[0x277D3F198] sharedInstance];
    v41 = [v42 commonTypeDict_RealFormat_withUnit_s];
    v75[15] = v41;
    v74[16] = @"LanesEng_15";
    v40 = [MEMORY[0x277D3F198] sharedInstance];
    v39 = [v40 commonTypeDict_RealFormat_withUnit_s];
    v75[16] = v39;
    v74[17] = @"LanesEng_16";
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_RealFormat_withUnit_s];
    v75[17] = v37;
    v74[18] = @"LanesEng_17";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_RealFormat_withUnit_s];
    v75[18] = v35;
    v74[19] = @"LanesEng_18";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_RealFormat_withUnit_s];
    v75[19] = v33;
    v74[20] = @"LanesEng_19";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_RealFormat_withUnit_s];
    v75[20] = v31;
    v74[21] = @"LanesEng_20";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat_withUnit_s];
    v75[21] = v29;
    v74[22] = @"LanesEng_21";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_RealFormat_withUnit_s];
    v75[22] = v27;
    v74[23] = @"LanesEng_22";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_RealFormat_withUnit_s];
    v75[23] = v25;
    v74[24] = @"LanesEng_23";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_RealFormat_withUnit_s];
    v75[24] = v23;
    v74[25] = @"LanesEng_24";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_RealFormat_withUnit_s];
    v75[25] = v21;
    v74[26] = @"LanesEng_25";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_RealFormat_withUnit_s];
    v75[26] = v19;
    v74[27] = @"LanesEng_26";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat_withUnit_s];
    v75[27] = v17;
    v74[28] = @"LanesEng_27";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_RealFormat_withUnit_s];
    v75[28] = v15;
    v74[29] = @"LanesEng_28";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat_withUnit_s];
    v75[29] = v4;
    v74[30] = @"LanesEng_29";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_s];
    v75[30] = v6;
    v74[31] = @"LanesEng_30";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat_withUnit_s];
    v75[31] = v8;
    v74[32] = @"LanesEng_31";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat_withUnit_s];
    v75[32] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:33];
    v79[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionCarnelianVaxholmStats
{
  v21[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isWatch])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v18[0] = *MEMORY[0x277D3F568];
    v18[1] = v2;
    v19[0] = &unk_282C1C058;
    v19[1] = @"logEventBackwardIOReport";
    v18[2] = *MEMORY[0x277D3F4F8];
    v19[2] = MEMORY[0x277CBEC28];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"SampleTime";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat_withUnit_s];
    v17[0] = v4;
    v16[1] = @"VAX_Power_ECG0_0";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_RealFormat_withUnit_s];
    v17[1] = v6;
    v16[2] = @"VAX_Power_ECG1_0";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_RealFormat_withUnit_s];
    v17[2] = v8;
    v16[3] = @"VAX_Power_EMG0_0";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_RealFormat_withUnit_s];
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

+ (id)entryEventBackwardDefinitionHapticsStats
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_282C1C028;
    v13[1] = @"logEventBackwardIOReport";
    v12[2] = *MEMORY[0x277D3F4F8];
    v13[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"Haptic.AccumEnergy";
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

+ (id)entryEventBackwardDefinitionGPUCStates
{
  v21[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v18[0] = *MEMORY[0x277D3F568];
    v18[1] = v2;
    v19[0] = &unk_282C1C028;
    v19[1] = @"logEventBackwardIOReport";
    v18[2] = *MEMORY[0x277D3F4F8];
    v19[2] = MEMORY[0x277CBEC28];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"SampleTime";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat_withUnit_s];
    v17[0] = v4;
    v16[1] = @"RC0";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v17[1] = v6;
    v16[2] = @"RC1";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v17[2] = v8;
    v16[3] = @"RC6";
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

+ (id)entryEventBackwardDefinitionDisplay
{
  v31[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v30[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v28[0] = *MEMORY[0x277D3F568];
    v28[1] = v2;
    v29[0] = &unk_282C1C058;
    v29[1] = @"logEventBackwardIOReport";
    v28[2] = *MEMORY[0x277D3F4F8];
    v29[2] = MEMORY[0x277CBEC28];
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
    v31[0] = v25;
    v30[1] = *MEMORY[0x277D3F540];
    v26[0] = @"SampleTime";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_RealFormat_withUnit_s];
    v27[0] = v23;
    v26[1] = @"Dynamic Pixel Backlight State_ON";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v27[1] = v21;
    v26[2] = @"Panel Self Refresh State_BOTHOFF";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v27[2] = v19;
    v26[3] = @"Panel Self Refresh State_GPUON";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v27[3] = v17;
    v26[4] = @"Panel Self Refresh State_TCONON";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v27[4] = v15;
    v26[5] = @"Panel Self Refresh State_BOTHON";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v27[5] = v4;
    v26[6] = @"Panel Self Refresh State_BYPASS";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v27[6] = v6;
    v26[7] = @"Panel Self Refresh State_FIFO";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v27[7] = v8;
    v26[8] = @"Panel Self Refresh State_OTHERS";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v27[8] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
    v31[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionNVMeBWLimits
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_282C1C028;
    v21[1] = @"logEventBackwardIOReport";
    v20[2] = *MEMORY[0x277D3F4F8];
    v21[2] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"SampleTime";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_RealFormat_withUnit_s];
    v19[0] = v15;
    v18[1] = @"Tier0 BW Scale Factor";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v19[1] = v4;
    v18[2] = @"Tier1 BW Scale Factor";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v19[2] = v6;
    v18[3] = @"Tier2 BW Scale Factor";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v19[3] = v8;
    v18[4] = @"Tier3 BW Scale Factor";
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

+ (id)entryEventBackwardDefinitionNVMeTimeweightedthrottlestatistics
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v22[0] = *MEMORY[0x277D3F568];
    v22[1] = v2;
    v23[0] = &unk_282C1C028;
    v23[1] = @"logEventBackwardIOReport";
    v22[2] = *MEMORY[0x277D3F4F8];
    v23[2] = MEMORY[0x277CBEC28];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v25[0] = v19;
    v24[1] = *MEMORY[0x277D3F540];
    v20[0] = @"SampleTime";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_RealFormat_withUnit_s];
    v21[0] = v17;
    v20[1] = @"Tier0 Throttle Time";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v21[1] = v15;
    v20[2] = @"Tier1 Throttle Time";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v21[2] = v4;
    v20[3] = @"Tier2 Throttle Time";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v21[3] = v6;
    v20[4] = @"Tier3 Throttle Time";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v21[4] = v8;
    v20[5] = @"Total time elapsed";
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

+ (id)entryEventBackwardDefinitionNVMe
{
  v21[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v20[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v18[0] = *MEMORY[0x277D3F568];
    v18[1] = v2;
    v19[0] = &unk_282C1C028;
    v19[1] = @"logEventBackwardIOReport";
    v18[2] = *MEMORY[0x277D3F4F8];
    v19[2] = MEMORY[0x277CBEC28];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v21[0] = v15;
    v20[1] = *MEMORY[0x277D3F540];
    v16[0] = @"SampleTime";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_RealFormat_withUnit_s];
    v17[0] = v4;
    v16[1] = @"NVMe Power States_OFF";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v17[1] = v6;
    v16[2] = @"NVMe Power States_PAUSE";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v17[2] = v8;
    v16[3] = @"NVMe Power States_ACTIVE";
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

+ (id)entryEventBackwardDefinitionBluetooth
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_282C1C028;
    v21[1] = @"logEventBackwardIOReport";
    v20[2] = *MEMORY[0x277D3F4F8];
    v21[2] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"SampleTime";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_RealFormat_withUnit_s];
    v19[0] = v15;
    v18[1] = @"Bluetooth Internal Power State_OFF";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v19[1] = v4;
    v18[2] = @"Bluetooth Internal Power State_ON";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v19[2] = v6;
    v18[3] = @"Bluetooth Internal Power State_SLEEP";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v19[3] = v8;
    v18[4] = @"Bluetooth Internal Power State_IDLE";
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

+ (id)entryEventBackwardDefinitionWLANPowerPhyActivity
{
  v19[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v16[0] = *MEMORY[0x277D3F568];
    v16[1] = v2;
    v17[0] = &unk_282C1C028;
    v17[1] = @"logEventBackwardIOReport";
    v16[2] = *MEMORY[0x277D3F4F8];
    v17[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v19[0] = v3;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"SampleTime";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat_withUnit_s];
    v15[0] = v5;
    v14[1] = @"      Radio Tx Dur";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v15[1] = v7;
    v14[2] = @"      Radio Rx Dur";
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

+ (id)entryEventBackwardDefinitionWLANPowerPhyScan
{
  v19[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v18[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v16[0] = *MEMORY[0x277D3F568];
    v16[1] = v2;
    v17[0] = &unk_282C1C028;
    v17[1] = @"logEventBackwardIOReport";
    v16[2] = *MEMORY[0x277D3F4F8];
    v17[2] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v19[0] = v3;
    v18[1] = *MEMORY[0x277D3F540];
    v14[0] = @"SampleTime";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat_withUnit_s];
    v15[0] = v5;
    v14[1] = @"         User Scan Count";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v15[1] = v7;
    v14[2] = @"        User Scan Dur  ";
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

+ (id)entryEventBackwardDefinitionWLANPowerConnections
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isMac])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_282C1C028;
    v21[1] = @"logEventBackwardIOReport";
    v20[2] = *MEMORY[0x277D3F4F8];
    v21[2] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"SampleTime";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_RealFormat_withUnit_s];
    v19[0] = v15;
    v18[1] = @" AWDL Radio Tx Dur";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v19[1] = v4;
    v18[2] = @" AWDL Radio Rx Dur";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v19[2] = v6;
    v18[3] = @" AWDL       Aw Dur";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v19[3] = v8;
    v18[4] = @" AWDL    PScan Dur";
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

+ (BOOL)shouldLogMTRAging
{
  if (qword_2811F4798 != -1)
  {
    dispatch_once(&qword_2811F4798, &__block_literal_global_7270);
  }

  return byte_2811F475B;
}

uint64_t __36__PLIOReportAgent_shouldLogMTRAging__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  byte_2811F475B = result > 1001010;
  return result;
}

+ (id)entryEventBackwardDefinitionMTRAging
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogMTRAging])
  {
    v19[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4F8];
    v17[0] = *MEMORY[0x277D3F568];
    v17[1] = v2;
    v18[0] = &unk_282C1C028;
    v18[1] = MEMORY[0x277CBEC28];
    v3 = *MEMORY[0x277D3F580];
    v17[2] = *MEMORY[0x277D3F558];
    v17[3] = v3;
    v18[2] = MEMORY[0x277CBEC38];
    v18[3] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v20[0] = v4;
    v19[1] = *MEMORY[0x277D3F540];
    v15[0] = @"Component";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_StringFormat];
    v16[0] = v6;
    v15[1] = @"Node";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v16[1] = v8;
    v15[2] = @"dF_norm";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v20[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)shouldLogAudioEvent
{
  if (qword_2811F47A0 != -1)
  {
    dispatch_once(&qword_2811F47A0, &__block_literal_global_7281);
  }

  return byte_2811F475C;
}

uint64_t __38__PLIOReportAgent_shouldLogAudioEvent__block_invoke()
{
  if ((([MEMORY[0x277D3F180] taskMode] & 1) != 0 || (result = objc_msgSend(MEMORY[0x277D3F180], "fullMode"), result)) && (result = objc_msgSend(MEMORY[0x277D3F208], "isWatch"), result))
  {
    result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    v1 = result > 1001203;
  }

  else
  {
    v1 = 0;
  }

  byte_2811F475C = v1;
  return result;
}

+ (id)entryEventBackwardDefinitionSpeakerSpeakerEvents
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogAudioEvent])
  {
    v14[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4F8];
    v12[0] = *MEMORY[0x277D3F568];
    v12[1] = v2;
    v13[0] = &unk_282C1C028;
    v13[1] = MEMORY[0x277CBEC28];
    v12[2] = *MEMORY[0x277D3F580];
    v13[2] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v15[0] = v3;
    v14[1] = *MEMORY[0x277D3F540];
    v10 = @"SpeakerBdeEvent";
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

+ (id)entryEventBackwardDefinitionAOPPowerState
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_282C1C028;
  v22[1] = @"logEventBackwardIOReport";
  v3 = *MEMORY[0x277D3F580];
  v21[2] = *MEMORY[0x277D3F4F8];
  v21[3] = v3;
  v22[2] = MEMORY[0x277CBEC28];
  v22[3] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"SampleTime";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_RealFormat_withUnit_s];
  v20[0] = v16;
  v19[1] = @"CPUPowerGated";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[1] = v5;
  v19[2] = @"PreventPowerGate";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v20[2] = v7;
  v19[3] = @"Active";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v20[3] = v9;
  v19[4] = @"On";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v20[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v24[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionAOPPerformance
{
  v37[2] = *MEMORY[0x277D85DE8];
  if ((([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch")) && objc_msgSend(MEMORY[0x277D3F180], "fullMode"))
  {
    v36[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v34[0] = *MEMORY[0x277D3F568];
    v34[1] = v2;
    v35[0] = &unk_282C1C028;
    v35[1] = @"logEventBackwardIOReport";
    v34[2] = *MEMORY[0x277D3F4F8];
    v35[2] = MEMORY[0x277CBEC28];
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v37[0] = v31;
    v36[1] = *MEMORY[0x277D3F540];
    v32[0] = @"SampleTime";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_RealFormat_withUnit_s];
    v33[0] = v29;
    v32[1] = @"Threadtime_total";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v33[1] = v27;
    v32[2] = @"Threadtime_audio";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v33[2] = v25;
    v32[3] = @"Threadtime_main";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v33[3] = v23;
    v32[4] = @"Threadtime_pearl";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v33[4] = v21;
    v32[5] = @"Threadtime_prox";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v33[5] = v19;
    v32[6] = @"Threadtime_rtk_ep_w";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v33[6] = v17;
    v32[7] = @"Threadtime_voicetri";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v33[7] = v15;
    v32[8] = @"Threadtime_SVC";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v33[8] = v4;
    v32[9] = @"Threadtime_IRQ";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v33[9] = v6;
    v32[10] = @"Threadtime_cma";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v33[10] = v8;
    v32[11] = @"Threadtime_power";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v33[11] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:12];
    v37[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAOPgyropower
{
  v96[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS])
  {
    v95[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v93[0] = *MEMORY[0x277D3F568];
    v93[1] = v2;
    v94[0] = &unk_282C1C028;
    v94[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v93[2] = *MEMORY[0x277D3F4F8];
    v93[3] = v3;
    v94[2] = MEMORY[0x277CBEC28];
    v94[3] = MEMORY[0x277CBEC38];
    v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:4];
    v96[0] = v90;
    v95[1] = *MEMORY[0x277D3F540];
    v91[0] = @"SampleTime";
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_RealFormat_withUnit_s];
    v92[0] = v88;
    v91[1] = @"power mode_OFF";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_RealFormat];
    v92[1] = v86;
    v91[2] = @"power mode_OFF_Transitions";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v85 commonTypeDict_IntegerFormat];
    v92[2] = v84;
    v91[3] = @"power mode_LNM";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_RealFormat];
    v92[3] = v82;
    v91[4] = @"power mode_LNM_Transitions";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_IntegerFormat];
    v92[4] = v80;
    v91[5] = @"power mode_LPM";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_RealFormat];
    v92[5] = v78;
    v91[6] = @"power mode_LPM_Transitions";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_IntegerFormat];
    v92[6] = v76;
    v91[7] = @"sample interval_20000";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_RealFormat];
    v92[7] = v74;
    v91[8] = @"sample interval_20000_Transitions";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v92[8] = v72;
    v91[9] = @"sample interval_10000";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_RealFormat];
    v92[9] = v70;
    v91[10] = @"sample interval_10000_Transitions";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v92[10] = v68;
    v91[11] = @"sample interval_5000";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_RealFormat];
    v92[11] = v66;
    v91[12] = @"sample interval_5000_Transitions";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v92[12] = v64;
    v91[13] = @"sample interval_2500";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_RealFormat];
    v92[13] = v62;
    v91[14] = @"sample interval_2500_Transitions";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v92[14] = v60;
    v91[15] = @"sample interval_1250";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_RealFormat];
    v92[15] = v58;
    v91[16] = @"sample interval_1250_Transitions";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v92[16] = v56;
    v91[17] = @"sample interval_off";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_RealFormat];
    v92[17] = v54;
    v91[18] = @"sample interval_off_Transitions";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v92[18] = v52;
    v91[19] = @"batch interval_1000000";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v92[19] = v50;
    v91[20] = @"batch interval_1000000_Transitions";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v92[20] = v48;
    v91[21] = @"batch interval_500000";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v92[21] = v46;
    v91[22] = @"batch interval_500000_Transitions";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v92[22] = v44;
    v91[23] = @"batch interval_200000";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v92[23] = v42;
    v91[24] = @"batch interval_200000_Transitions";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v92[24] = v40;
    v91[25] = @"batch interval_100000";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v92[25] = v38;
    v91[26] = @"batch interval_100000_Transitions";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v92[26] = v36;
    v91[27] = @"batch interval_50000";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v92[27] = v34;
    v91[28] = @"batch interval_50000_Transitions";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v92[28] = v32;
    v91[29] = @"batch interval_20000";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v92[29] = v30;
    v91[30] = @"batch interval_20000_Transitions";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v92[30] = v28;
    v91[31] = @"batch interval_10000";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v92[31] = v26;
    v91[32] = @"batch interval_10000_Transitions";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v92[32] = v24;
    v91[33] = @"batch interval_5000";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v92[33] = v22;
    v91[34] = @"batch interval_5000_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v92[34] = v20;
    v91[35] = @"batch interval_2000";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v92[35] = v18;
    v91[36] = @"batch interval_2000_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v92[36] = v16;
    v91[37] = @"batch interval_1000";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v92[37] = v5;
    v91[38] = @"batch interval_1000_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v92[38] = v7;
    v91[39] = @"batch interval_off";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v92[39] = v9;
    v91[40] = @"batch interval_off_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v92[40] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:41];
    v96[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionAOPcompasspower
{
  v96[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS])
  {
    v95[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v93[0] = *MEMORY[0x277D3F568];
    v93[1] = v2;
    v94[0] = &unk_282C1C028;
    v94[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v93[2] = *MEMORY[0x277D3F4F8];
    v93[3] = v3;
    v94[2] = MEMORY[0x277CBEC28];
    v94[3] = MEMORY[0x277CBEC38];
    v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:4];
    v96[0] = v90;
    v95[1] = *MEMORY[0x277D3F540];
    v91[0] = @"SampleTime";
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_RealFormat_withUnit_s];
    v92[0] = v88;
    v91[1] = @"power mode_OFF";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_RealFormat];
    v92[1] = v86;
    v91[2] = @"power mode_OFF_Transitions";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v85 commonTypeDict_IntegerFormat];
    v92[2] = v84;
    v91[3] = @"power mode_LNM";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_RealFormat];
    v92[3] = v82;
    v91[4] = @"power mode_LNM_Transitions";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_IntegerFormat];
    v92[4] = v80;
    v91[5] = @"power mode_LPM";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_RealFormat];
    v92[5] = v78;
    v91[6] = @"power mode_LPM_Transitions";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_IntegerFormat];
    v92[6] = v76;
    v91[7] = @"sample interval_20000";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_RealFormat];
    v92[7] = v74;
    v91[8] = @"sample interval_20000_Transitions";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v92[8] = v72;
    v91[9] = @"sample interval_10000";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_RealFormat];
    v92[9] = v70;
    v91[10] = @"sample interval_10000_Transitions";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v92[10] = v68;
    v91[11] = @"sample interval_5000";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_RealFormat];
    v92[11] = v66;
    v91[12] = @"sample interval_5000_Transitions";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v92[12] = v64;
    v91[13] = @"sample interval_2500";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_RealFormat];
    v92[13] = v62;
    v91[14] = @"sample interval_2500_Transitions";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v92[14] = v60;
    v91[15] = @"sample interval_1250";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_RealFormat];
    v92[15] = v58;
    v91[16] = @"sample interval_1250_Transitions";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v92[16] = v56;
    v91[17] = @"sample interval_off";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_RealFormat];
    v92[17] = v54;
    v91[18] = @"sample interval_off_Transitions";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v92[18] = v52;
    v91[19] = @"batch interval_1000000";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v92[19] = v50;
    v91[20] = @"batch interval_1000000_Transitions";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v92[20] = v48;
    v91[21] = @"batch interval_500000";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v92[21] = v46;
    v91[22] = @"batch interval_500000_Transitions";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v92[22] = v44;
    v91[23] = @"batch interval_200000";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v92[23] = v42;
    v91[24] = @"batch interval_200000_Transitions";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v92[24] = v40;
    v91[25] = @"batch interval_100000";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v92[25] = v38;
    v91[26] = @"batch interval_100000_Transitions";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v92[26] = v36;
    v91[27] = @"batch interval_50000";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v92[27] = v34;
    v91[28] = @"batch interval_50000_Transitions";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v92[28] = v32;
    v91[29] = @"batch interval_20000";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v92[29] = v30;
    v91[30] = @"batch interval_20000_Transitions";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v92[30] = v28;
    v91[31] = @"batch interval_10000";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v92[31] = v26;
    v91[32] = @"batch interval_10000_Transitions";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v92[32] = v24;
    v91[33] = @"batch interval_5000";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v92[33] = v22;
    v91[34] = @"batch interval_5000_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v92[34] = v20;
    v91[35] = @"batch interval_2000";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v92[35] = v18;
    v91[36] = @"batch interval_2000_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v92[36] = v16;
    v91[37] = @"batch interval_1000";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v92[37] = v5;
    v91[38] = @"batch interval_1000_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v92[38] = v7;
    v91[39] = @"batch interval_off";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v92[39] = v9;
    v91[40] = @"batch interval_off_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v92[40] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:41];
    v96[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionAOPaccelpower
{
  v96[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS])
  {
    v95[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v93[0] = *MEMORY[0x277D3F568];
    v93[1] = v2;
    v94[0] = &unk_282C1C028;
    v94[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v93[2] = *MEMORY[0x277D3F4F8];
    v93[3] = v3;
    v94[2] = MEMORY[0x277CBEC28];
    v94[3] = MEMORY[0x277CBEC38];
    v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:4];
    v96[0] = v90;
    v95[1] = *MEMORY[0x277D3F540];
    v91[0] = @"SampleTime";
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_RealFormat_withUnit_s];
    v92[0] = v88;
    v91[1] = @"power mode_OFF";
    v87 = [MEMORY[0x277D3F198] sharedInstance];
    v86 = [v87 commonTypeDict_RealFormat];
    v92[1] = v86;
    v91[2] = @"power mode_OFF_Transitions";
    v85 = [MEMORY[0x277D3F198] sharedInstance];
    v84 = [v85 commonTypeDict_IntegerFormat];
    v92[2] = v84;
    v91[3] = @"power mode_LNM";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_RealFormat];
    v92[3] = v82;
    v91[4] = @"power mode_LNM_Transitions";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_IntegerFormat];
    v92[4] = v80;
    v91[5] = @"power mode_LPM";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_RealFormat];
    v92[5] = v78;
    v91[6] = @"power mode_LPM_Transitions";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_IntegerFormat];
    v92[6] = v76;
    v91[7] = @"sample interval_20000";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_RealFormat];
    v92[7] = v74;
    v91[8] = @"sample interval_20000_Transitions";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_IntegerFormat];
    v92[8] = v72;
    v91[9] = @"sample interval_10000";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_RealFormat];
    v92[9] = v70;
    v91[10] = @"sample interval_10000_Transitions";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_IntegerFormat];
    v92[10] = v68;
    v91[11] = @"sample interval_5000";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_RealFormat];
    v92[11] = v66;
    v91[12] = @"sample interval_5000_Transitions";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v92[12] = v64;
    v91[13] = @"sample interval_2500";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_RealFormat];
    v92[13] = v62;
    v91[14] = @"sample interval_2500_Transitions";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_IntegerFormat];
    v92[14] = v60;
    v91[15] = @"sample interval_1250";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_RealFormat];
    v92[15] = v58;
    v91[16] = @"sample interval_1250_Transitions";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_IntegerFormat];
    v92[16] = v56;
    v91[17] = @"sample interval_off";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_RealFormat];
    v92[17] = v54;
    v91[18] = @"sample interval_off_Transitions";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v92[18] = v52;
    v91[19] = @"batch interval_1000000";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v92[19] = v50;
    v91[20] = @"batch interval_1000000_Transitions";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_IntegerFormat];
    v92[20] = v48;
    v91[21] = @"batch interval_500000";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v92[21] = v46;
    v91[22] = @"batch interval_500000_Transitions";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_IntegerFormat];
    v92[22] = v44;
    v91[23] = @"batch interval_200000";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v92[23] = v42;
    v91[24] = @"batch interval_200000_Transitions";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v92[24] = v40;
    v91[25] = @"batch interval_100000";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v92[25] = v38;
    v91[26] = @"batch interval_100000_Transitions";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_IntegerFormat];
    v92[26] = v36;
    v91[27] = @"batch interval_50000";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v92[27] = v34;
    v91[28] = @"batch interval_50000_Transitions";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_IntegerFormat];
    v92[28] = v32;
    v91[29] = @"batch interval_20000";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v92[29] = v30;
    v91[30] = @"batch interval_20000_Transitions";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v92[30] = v28;
    v91[31] = @"batch interval_10000";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v92[31] = v26;
    v91[32] = @"batch interval_10000_Transitions";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v92[32] = v24;
    v91[33] = @"batch interval_5000";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v92[33] = v22;
    v91[34] = @"batch interval_5000_Transitions";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v92[34] = v20;
    v91[35] = @"batch interval_2000";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v92[35] = v18;
    v91[36] = @"batch interval_2000_Transitions";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v92[36] = v16;
    v91[37] = @"batch interval_1000";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v92[37] = v5;
    v91[38] = @"batch interval_1000_Transitions";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v92[38] = v7;
    v91[39] = @"batch interval_off";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v92[39] = v9;
    v91[40] = @"batch interval_off_Transitions";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_IntegerFormat];
    v92[40] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:41];
    v96[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionAOPpressurepower
{
  v90[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiOS])
  {
    v89[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v87[0] = *MEMORY[0x277D3F568];
    v87[1] = v2;
    v88[0] = &unk_282C1C038;
    v88[1] = @"logEventBackwardIOReport";
    v3 = *MEMORY[0x277D3F580];
    v87[2] = *MEMORY[0x277D3F4F8];
    v87[3] = v3;
    v88[2] = MEMORY[0x277CBEC28];
    v88[3] = MEMORY[0x277CBEC38];
    v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:4];
    v90[0] = v84;
    v89[1] = *MEMORY[0x277D3F540];
    v85[0] = @"SampleTime";
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_RealFormat_withUnit_s];
    v86[0] = v82;
    v85[1] = @"power mode_OFF";
    v81 = [MEMORY[0x277D3F198] sharedInstance];
    v80 = [v81 commonTypeDict_RealFormat];
    v86[1] = v80;
    v85[2] = @"power mode_OFF_Transitions";
    v79 = [MEMORY[0x277D3F198] sharedInstance];
    v78 = [v79 commonTypeDict_IntegerFormat];
    v86[2] = v78;
    v85[3] = @"power mode_LNM";
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_RealFormat];
    v86[3] = v76;
    v85[4] = @"power mode_LNM_Transitions";
    v75 = [MEMORY[0x277D3F198] sharedInstance];
    v74 = [v75 commonTypeDict_IntegerFormat];
    v86[4] = v74;
    v85[5] = @"power mode_LPM";
    v73 = [MEMORY[0x277D3F198] sharedInstance];
    v72 = [v73 commonTypeDict_RealFormat];
    v86[5] = v72;
    v85[6] = @"power mode_LPM_Transitions";
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_IntegerFormat];
    v86[6] = v70;
    v85[7] = @"sample interval_4000000";
    v69 = [MEMORY[0x277D3F198] sharedInstance];
    v68 = [v69 commonTypeDict_RealFormat];
    v86[7] = v68;
    v85[8] = @"sample interval_2000000";
    v67 = [MEMORY[0x277D3F198] sharedInstance];
    v66 = [v67 commonTypeDict_RealFormat];
    v86[8] = v66;
    v85[9] = @"sample interval_1000000";
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_RealFormat];
    v86[9] = v64;
    v85[10] = @"sample interval_500000";
    v63 = [MEMORY[0x277D3F198] sharedInstance];
    v62 = [v63 commonTypeDict_RealFormat];
    v86[10] = v62;
    v85[11] = @"sample interval_200000";
    v61 = [MEMORY[0x277D3F198] sharedInstance];
    v60 = [v61 commonTypeDict_RealFormat];
    v86[11] = v60;
    v85[12] = @"sample interval_100000";
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_RealFormat];
    v86[12] = v58;
    v85[13] = @"sample interval_40000";
    v57 = [MEMORY[0x277D3F198] sharedInstance];
    v56 = [v57 commonTypeDict_RealFormat];
    v86[13] = v56;
    v85[14] = @"sample interval_off";
    v55 = [MEMORY[0x277D3F198] sharedInstance];
    v54 = [v55 commonTypeDict_RealFormat];
    v86[14] = v54;
    v85[15] = @"batch interval_1000000";
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_RealFormat];
    v86[15] = v52;
    v85[16] = @"batch interval_500000";
    v51 = [MEMORY[0x277D3F198] sharedInstance];
    v50 = [v51 commonTypeDict_RealFormat];
    v86[16] = v50;
    v85[17] = @"batch interval_200000";
    v49 = [MEMORY[0x277D3F198] sharedInstance];
    v48 = [v49 commonTypeDict_RealFormat];
    v86[17] = v48;
    v85[18] = @"batch interval_100000";
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_RealFormat];
    v86[18] = v46;
    v85[19] = @"batch interval_50000";
    v45 = [MEMORY[0x277D3F198] sharedInstance];
    v44 = [v45 commonTypeDict_RealFormat];
    v86[19] = v44;
    v85[20] = @"batch interval_20000";
    v43 = [MEMORY[0x277D3F198] sharedInstance];
    v42 = [v43 commonTypeDict_RealFormat];
    v86[20] = v42;
    v85[21] = @"batch interval_10000";
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_RealFormat];
    v86[21] = v40;
    v85[22] = @"batch interval_5000";
    v39 = [MEMORY[0x277D3F198] sharedInstance];
    v38 = [v39 commonTypeDict_RealFormat];
    v86[22] = v38;
    v85[23] = @"batch interval_2000";
    v37 = [MEMORY[0x277D3F198] sharedInstance];
    v36 = [v37 commonTypeDict_RealFormat];
    v86[23] = v36;
    v85[24] = @"batch interval_1000";
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_RealFormat];
    v86[24] = v34;
    v85[25] = @"batch interval_off";
    v33 = [MEMORY[0x277D3F198] sharedInstance];
    v32 = [v33 commonTypeDict_RealFormat];
    v86[25] = v32;
    v85[26] = @"sample interval_4166";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_RealFormat];
    v86[26] = v30;
    v85[27] = @"sample interval_8333";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_RealFormat];
    v86[27] = v28;
    v85[28] = @"sample interval_16666";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_RealFormat];
    v86[28] = v26;
    v85[29] = @"sample interval_33333";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_RealFormat];
    v86[29] = v24;
    v85[30] = @"sample interval_66666";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_RealFormat];
    v86[30] = v22;
    v85[31] = @"sample interval_133333";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_RealFormat];
    v86[31] = v20;
    v85[32] = @"sample interval_266666";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_RealFormat];
    v86[32] = v18;
    v85[33] = @"sample interval_531914";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_RealFormat];
    v86[33] = v16;
    v85[34] = @"sample interval_1063829";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_RealFormat];
    v86[34] = v5;
    v85[35] = @"sample interval_2127659";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_RealFormat];
    v86[35] = v7;
    v85[36] = @"sample interval_4347826";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_RealFormat];
    v86[36] = v9;
    v85[37] = @"sample interval_8333333";
    v10 = [MEMORY[0x277D3F198] sharedInstance];
    v11 = [v10 commonTypeDict_RealFormat];
    v86[37] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:38];
    v90[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventBackwardDefinitionMTPPower
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C028;
  v29[1] = @"logEventBackwardIOReport";
  v28[2] = *MEMORY[0x277D3F580];
  v29[2] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"SampleTime";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat_withUnit_s];
  v27[0] = v23;
  v26[1] = @"Duty cycle";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v27[1] = v21;
  v26[2] = @"Sleep count";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v27[2] = v19;
  v26[3] = @"Wake count";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v27[3] = v17;
  v26[4] = @"Power state_ON";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v27[4] = v15;
  v26[5] = @"Free heap";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v27[5] = v4;
  v26[6] = @"Total heap";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v27[6] = v6;
  v26[7] = @"Peak heap alloc";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v27[7] = v8;
  v26[8] = @"CPU count";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionMTPIOPState
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C028;
  v29[1] = @"logEventBackwardIOReport";
  v28[2] = *MEMORY[0x277D3F580];
  v29[2] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"SampleTime";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat_withUnit_s];
  v27[0] = v23;
  v26[1] = @"status_Off";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_RealFormat];
  v27[1] = v21;
  v26[2] = @"status_Sleep";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat];
  v27[2] = v19;
  v26[3] = @"status_Quiesce";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v27[3] = v17;
  v26[4] = @"status_Wait_Vr";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v27[4] = v15;
  v26[5] = @"status_Vers_OK";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v27[5] = v4;
  v26[6] = @"status_Ready";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v27[6] = v6;
  v26[7] = @"status_Pwr_Dwn";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v27[7] = v8;
  v26[8] = @"status_Running";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionSIOPower
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C028;
  v29[1] = @"logEventBackwardIOReport";
  v28[2] = *MEMORY[0x277D3F580];
  v29[2] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"SampleTime";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat_withUnit_s];
  v27[0] = v23;
  v26[1] = @"Duty cycle";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v27[1] = v21;
  v26[2] = @"Sleep count";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v27[2] = v19;
  v26[3] = @"Wake count";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v27[3] = v17;
  v26[4] = @"Power state_ON";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v27[4] = v15;
  v26[5] = @"Free heap";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v27[5] = v4;
  v26[6] = @"Total heap";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v27[6] = v6;
  v26[7] = @"Peak heap alloc";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v27[7] = v8;
  v26[8] = @"CPU count";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionSIOIOPState
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C028;
  v29[1] = @"logEventBackwardIOReport";
  v28[2] = *MEMORY[0x277D3F580];
  v29[2] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"SampleTime";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat_withUnit_s];
  v27[0] = v23;
  v26[1] = @"status_Off";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_RealFormat];
  v27[1] = v21;
  v26[2] = @"status_Sleep";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat];
  v27[2] = v19;
  v26[3] = @"status_Quiesce";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v27[3] = v17;
  v26[4] = @"status_Wait_Vr";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v27[4] = v15;
  v26[5] = @"status_Vers_OK";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v27[5] = v4;
  v26[6] = @"status_Ready";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v27[6] = v6;
  v26[7] = @"status_Pwr_Dwn";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v27[7] = v8;
  v26[8] = @"status_Running";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPMPSOC
{
  v99[2] = *MEMORY[0x277D85DE8];
  v98[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v96[0] = *MEMORY[0x277D3F568];
  v96[1] = v2;
  v97[0] = &unk_282C1C028;
  v97[1] = @"logEventBackwardIOReport";
  v96[2] = *MEMORY[0x277D3F580];
  v97[2] = MEMORY[0x277CBEC38];
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:3];
  v99[0] = v93;
  v98[1] = *MEMORY[0x277D3F540];
  v94[0] = @"SampleTime";
  v92 = [MEMORY[0x277D3F198] sharedInstance];
  v91 = [v92 commonTypeDict_RealFormat_withUnit_s];
  v95[0] = v91;
  v94[1] = @"EACC0_VMIN";
  v90 = [MEMORY[0x277D3F198] sharedInstance];
  v89 = [v90 commonTypeDict_RealFormat];
  v95[1] = v89;
  v94[2] = @"EACC0_VMAX";
  v88 = [MEMORY[0x277D3F198] sharedInstance];
  v87 = [v88 commonTypeDict_RealFormat];
  v95[2] = v87;
  v94[3] = @"PACC0_VMIN";
  v86 = [MEMORY[0x277D3F198] sharedInstance];
  v85 = [v86 commonTypeDict_RealFormat];
  v95[3] = v85;
  v94[4] = @"PACC0_VMAX";
  v84 = [MEMORY[0x277D3F198] sharedInstance];
  v83 = [v84 commonTypeDict_RealFormat];
  v95[4] = v83;
  v94[5] = @"AGX_VMIN";
  v82 = [MEMORY[0x277D3F198] sharedInstance];
  v81 = [v82 commonTypeDict_RealFormat];
  v95[5] = v81;
  v94[6] = @"AGX_VMAX";
  v80 = [MEMORY[0x277D3F198] sharedInstance];
  v79 = [v80 commonTypeDict_RealFormat];
  v95[6] = v79;
  v94[7] = @"ANE0_VMIN";
  v78 = [MEMORY[0x277D3F198] sharedInstance];
  v77 = [v78 commonTypeDict_RealFormat];
  v95[7] = v77;
  v94[8] = @"ANE0_VMAX";
  v76 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v76 commonTypeDict_RealFormat];
  v95[8] = v75;
  v94[9] = @"ISP_VMIN";
  v74 = [MEMORY[0x277D3F198] sharedInstance];
  v73 = [v74 commonTypeDict_RealFormat];
  v95[9] = v73;
  v94[10] = @"ISP_VMAX";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_RealFormat];
  v95[10] = v71;
  v94[11] = @"DISP_VMIN";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_RealFormat];
  v95[11] = v69;
  v94[12] = @"DISP_VMAX";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_RealFormat];
  v95[12] = v67;
  v94[13] = @"DISPEXT_VMIN";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_RealFormat];
  v95[13] = v65;
  v94[14] = @"DISPEXT_VMAX";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_RealFormat];
  v95[14] = v63;
  v94[15] = @"AVE_VMIN";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_RealFormat];
  v95[15] = v61;
  v94[16] = @"AVE_VMAX";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_RealFormat];
  v95[16] = v59;
  v94[17] = @"AVD_VMIN";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_RealFormat];
  v95[17] = v57;
  v94[18] = @"AVD_VMAX";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_RealFormat];
  v95[18] = v55;
  v94[19] = @"MSR_VMIN";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_RealFormat];
  v95[19] = v53;
  v94[20] = @"MSR_VMAX";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_RealFormat];
  v95[20] = v51;
  v94[21] = @"JPEG_VMIN";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_RealFormat];
  v95[21] = v49;
  v94[22] = @"JPEG_VMAX";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_RealFormat];
  v95[22] = v47;
  v94[23] = @"SCODEC_VMIN";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_RealFormat];
  v95[23] = v45;
  v94[24] = @"SCODEC_VMAX";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_RealFormat];
  v95[24] = v43;
  v94[25] = @"AGX-SLOW-AF-RD_VMIN";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_RealFormat];
  v95[25] = v41;
  v94[26] = @"AGX-SLOW-AF-RD_VMAX";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_RealFormat];
  v95[26] = v39;
  v94[27] = @"AGX-FAST-AF-RD_VMIN";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_RealFormat];
  v95[27] = v37;
  v94[28] = @"AGX-FAST-AF-RD_VMAX";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_RealFormat];
  v95[28] = v35;
  v94[29] = @"AGX-SLOW-AF-WR_VMIN";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_RealFormat];
  v95[29] = v33;
  v94[30] = @"AGX-SLOW-AF-WR_VMAX";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_RealFormat];
  v95[30] = v31;
  v94[31] = @"AGX-FAST-AF-WR_VMIN";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_RealFormat];
  v95[31] = v29;
  v94[32] = @"AGX-FAST-AF-WR_VMAX";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_RealFormat];
  v95[32] = v27;
  v94[33] = @"ANE-BW_VMIN";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_RealFormat];
  v95[33] = v25;
  v94[34] = @"ANE-BW_VMAX";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat];
  v95[34] = v23;
  v94[35] = @"SOC0-RD-BWR_VMIN";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_RealFormat];
  v95[35] = v21;
  v94[36] = @"SOC0-RD-BWR_VMAX";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat];
  v95[36] = v19;
  v94[37] = @"SOC0-WR-BWR_VMIN";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v95[37] = v17;
  v94[38] = @"SOC0-WR-BWR_VMAX";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v95[38] = v15;
  v94[39] = @"SOC1-RD-BWR_VMIN";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v95[39] = v4;
  v94[40] = @"SOC1-RD-BWR_VMAX";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v95[40] = v6;
  v94[41] = @"SOC1-WR-BWR_VMIN";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v95[41] = v8;
  v94[42] = @"SOC1-WR-BWR_VMAX";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v95[42] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:43];
  v99[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPMPDCS
{
  v175[2] = *MEMORY[0x277D85DE8];
  v174[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v172[0] = *MEMORY[0x277D3F568];
  v172[1] = v2;
  v173[0] = &unk_282C1C038;
  v173[1] = @"logEventBackwardIOReport";
  v172[2] = *MEMORY[0x277D3F580];
  v173[2] = MEMORY[0x277CBEC38];
  v169 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:3];
  v175[0] = v169;
  v174[1] = *MEMORY[0x277D3F540];
  v170[0] = @"SampleTime";
  v168 = [MEMORY[0x277D3F198] sharedInstance];
  v167 = [v168 commonTypeDict_RealFormat_withUnit_s];
  v171[0] = v167;
  v170[1] = @"EACC0_F1";
  v166 = [MEMORY[0x277D3F198] sharedInstance];
  v165 = [v166 commonTypeDict_RealFormat];
  v171[1] = v165;
  v170[2] = @"EACC0_F2";
  v164 = [MEMORY[0x277D3F198] sharedInstance];
  v163 = [v164 commonTypeDict_RealFormat];
  v171[2] = v163;
  v170[3] = @"EACC0_F3";
  v162 = [MEMORY[0x277D3F198] sharedInstance];
  v161 = [v162 commonTypeDict_RealFormat];
  v171[3] = v161;
  v170[4] = @"EACC0_F5";
  v160 = [MEMORY[0x277D3F198] sharedInstance];
  v159 = [v160 commonTypeDict_RealFormat];
  v171[4] = v159;
  v170[5] = @"PACC0_F1";
  v158 = [MEMORY[0x277D3F198] sharedInstance];
  v157 = [v158 commonTypeDict_RealFormat];
  v171[5] = v157;
  v170[6] = @"PACC0_F2";
  v156 = [MEMORY[0x277D3F198] sharedInstance];
  v155 = [v156 commonTypeDict_RealFormat];
  v171[6] = v155;
  v170[7] = @"PACC0_F3";
  v154 = [MEMORY[0x277D3F198] sharedInstance];
  v153 = [v154 commonTypeDict_RealFormat];
  v171[7] = v153;
  v170[8] = @"PACC0_F5";
  v152 = [MEMORY[0x277D3F198] sharedInstance];
  v151 = [v152 commonTypeDict_RealFormat];
  v171[8] = v151;
  v170[9] = @"AGX_F1";
  v150 = [MEMORY[0x277D3F198] sharedInstance];
  v149 = [v150 commonTypeDict_RealFormat];
  v171[9] = v149;
  v170[10] = @"AGX_F2";
  v148 = [MEMORY[0x277D3F198] sharedInstance];
  v147 = [v148 commonTypeDict_RealFormat];
  v171[10] = v147;
  v170[11] = @"AGX_F3";
  v146 = [MEMORY[0x277D3F198] sharedInstance];
  v145 = [v146 commonTypeDict_RealFormat];
  v171[11] = v145;
  v170[12] = @"AGX_F5";
  v144 = [MEMORY[0x277D3F198] sharedInstance];
  v143 = [v144 commonTypeDict_RealFormat];
  v171[12] = v143;
  v170[13] = @"ANE0_F1";
  v142 = [MEMORY[0x277D3F198] sharedInstance];
  v141 = [v142 commonTypeDict_RealFormat];
  v171[13] = v141;
  v170[14] = @"ANE0_F2";
  v140 = [MEMORY[0x277D3F198] sharedInstance];
  v139 = [v140 commonTypeDict_RealFormat];
  v171[14] = v139;
  v170[15] = @"ANE0_F3";
  v138 = [MEMORY[0x277D3F198] sharedInstance];
  v137 = [v138 commonTypeDict_RealFormat];
  v171[15] = v137;
  v170[16] = @"ANE0_F5";
  v136 = [MEMORY[0x277D3F198] sharedInstance];
  v135 = [v136 commonTypeDict_RealFormat];
  v171[16] = v135;
  v170[17] = @"LTR_F1";
  v134 = [MEMORY[0x277D3F198] sharedInstance];
  v133 = [v134 commonTypeDict_RealFormat];
  v171[17] = v133;
  v170[18] = @"LTR_F2";
  v132 = [MEMORY[0x277D3F198] sharedInstance];
  v131 = [v132 commonTypeDict_RealFormat];
  v171[18] = v131;
  v170[19] = @"LTR_F3";
  v130 = [MEMORY[0x277D3F198] sharedInstance];
  v129 = [v130 commonTypeDict_RealFormat];
  v171[19] = v129;
  v170[20] = @"LTR_F5";
  v128 = [MEMORY[0x277D3F198] sharedInstance];
  v127 = [v128 commonTypeDict_RealFormat];
  v171[20] = v127;
  v170[21] = @"DISP_F1";
  v126 = [MEMORY[0x277D3F198] sharedInstance];
  v125 = [v126 commonTypeDict_RealFormat];
  v171[21] = v125;
  v170[22] = @"DISP_F2";
  v124 = [MEMORY[0x277D3F198] sharedInstance];
  v123 = [v124 commonTypeDict_RealFormat];
  v171[22] = v123;
  v170[23] = @"DISP_F3";
  v122 = [MEMORY[0x277D3F198] sharedInstance];
  v121 = [v122 commonTypeDict_RealFormat];
  v171[23] = v121;
  v170[24] = @"DISP_F5";
  v120 = [MEMORY[0x277D3F198] sharedInstance];
  v119 = [v120 commonTypeDict_RealFormat];
  v171[24] = v119;
  v170[25] = @"DCS-BW_F1";
  v118 = [MEMORY[0x277D3F198] sharedInstance];
  v117 = [v118 commonTypeDict_RealFormat];
  v171[25] = v117;
  v170[26] = @"DCS-BW_F2";
  v116 = [MEMORY[0x277D3F198] sharedInstance];
  v115 = [v116 commonTypeDict_RealFormat];
  v171[26] = v115;
  v170[27] = @"DCS-BW_F3";
  v114 = [MEMORY[0x277D3F198] sharedInstance];
  v113 = [v114 commonTypeDict_RealFormat];
  v171[27] = v113;
  v170[28] = @"DCS-BW_F5";
  v112 = [MEMORY[0x277D3F198] sharedInstance];
  v111 = [v112 commonTypeDict_RealFormat];
  v171[28] = v111;
  v170[29] = @"AGX-SLOW-DCS-BW_F1";
  v110 = [MEMORY[0x277D3F198] sharedInstance];
  v109 = [v110 commonTypeDict_RealFormat];
  v171[29] = v109;
  v170[30] = @"AGX-SLOW-DCS-BW_F2";
  v108 = [MEMORY[0x277D3F198] sharedInstance];
  v107 = [v108 commonTypeDict_RealFormat];
  v171[30] = v107;
  v170[31] = @"AGX-SLOW-DCS-BW_F3";
  v106 = [MEMORY[0x277D3F198] sharedInstance];
  v105 = [v106 commonTypeDict_RealFormat];
  v171[31] = v105;
  v170[32] = @"AGX-SLOW-DCS-BW_F5";
  v104 = [MEMORY[0x277D3F198] sharedInstance];
  v103 = [v104 commonTypeDict_RealFormat];
  v171[32] = v103;
  v170[33] = @"AGX-FAST-DCS-BW_F1";
  v102 = [MEMORY[0x277D3F198] sharedInstance];
  v101 = [v102 commonTypeDict_RealFormat];
  v171[33] = v101;
  v170[34] = @"AGX-FAST-DCS-BW_F2";
  v100 = [MEMORY[0x277D3F198] sharedInstance];
  v99 = [v100 commonTypeDict_RealFormat];
  v171[34] = v99;
  v170[35] = @"AGX-FAST-DCS-BW_F3";
  v98 = [MEMORY[0x277D3F198] sharedInstance];
  v97 = [v98 commonTypeDict_RealFormat];
  v171[35] = v97;
  v170[36] = @"AGX-FAST-DCS-BW_F5";
  v96 = [MEMORY[0x277D3F198] sharedInstance];
  v95 = [v96 commonTypeDict_RealFormat];
  v171[36] = v95;
  v170[37] = @"DCS-BWR_F1";
  v94 = [MEMORY[0x277D3F198] sharedInstance];
  v93 = [v94 commonTypeDict_RealFormat];
  v171[37] = v93;
  v170[38] = @"DCS-BWR_F2";
  v92 = [MEMORY[0x277D3F198] sharedInstance];
  v91 = [v92 commonTypeDict_RealFormat];
  v171[38] = v91;
  v170[39] = @"DCS-BWR_F3";
  v90 = [MEMORY[0x277D3F198] sharedInstance];
  v89 = [v90 commonTypeDict_RealFormat];
  v171[39] = v89;
  v170[40] = @"DCS-BWR_F5";
  v88 = [MEMORY[0x277D3F198] sharedInstance];
  v87 = [v88 commonTypeDict_RealFormat];
  v171[40] = v87;
  v170[41] = @"ISP_F1";
  v86 = [MEMORY[0x277D3F198] sharedInstance];
  v85 = [v86 commonTypeDict_RealFormat];
  v171[41] = v85;
  v170[42] = @"ISP_F2";
  v84 = [MEMORY[0x277D3F198] sharedInstance];
  v83 = [v84 commonTypeDict_RealFormat];
  v171[42] = v83;
  v170[43] = @"ISP_F3";
  v82 = [MEMORY[0x277D3F198] sharedInstance];
  v81 = [v82 commonTypeDict_RealFormat];
  v171[43] = v81;
  v170[44] = @"ISP_F5";
  v80 = [MEMORY[0x277D3F198] sharedInstance];
  v79 = [v80 commonTypeDict_RealFormat];
  v171[44] = v79;
  v170[45] = @"DISPEXT_F1";
  v78 = [MEMORY[0x277D3F198] sharedInstance];
  v77 = [v78 commonTypeDict_RealFormat];
  v171[45] = v77;
  v170[46] = @"DISPEXT_F2";
  v76 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v76 commonTypeDict_RealFormat];
  v171[46] = v75;
  v170[47] = @"DISPEXT_F3";
  v74 = [MEMORY[0x277D3F198] sharedInstance];
  v73 = [v74 commonTypeDict_RealFormat];
  v171[47] = v73;
  v170[48] = @"DISPEXT_F5";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_RealFormat];
  v171[48] = v71;
  v170[49] = @"AVE_F1";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_RealFormat];
  v171[49] = v69;
  v170[50] = @"AVE_F2";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_RealFormat];
  v171[50] = v67;
  v170[51] = @"AVE_F3";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_RealFormat];
  v171[51] = v65;
  v170[52] = @"AVE_F5";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_RealFormat];
  v171[52] = v63;
  v170[53] = @"AVD_F1";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_RealFormat];
  v171[53] = v61;
  v170[54] = @"AVD_F2";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_RealFormat];
  v171[54] = v59;
  v170[55] = @"AVD_F3";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_RealFormat];
  v171[55] = v57;
  v170[56] = @"AVD_F5";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_RealFormat];
  v171[56] = v55;
  v170[57] = @"MSR_F1";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_RealFormat];
  v171[57] = v53;
  v170[58] = @"MSR_F2";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_RealFormat];
  v171[58] = v51;
  v170[59] = @"MSR_F3";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_RealFormat];
  v171[59] = v49;
  v170[60] = @"MSR_F5";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_RealFormat];
  v171[60] = v47;
  v170[61] = @"JPEG_F1";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_RealFormat];
  v171[61] = v45;
  v170[62] = @"JPEG_F2";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_RealFormat];
  v171[62] = v43;
  v170[63] = @"JPEG_F3";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_RealFormat];
  v171[63] = v41;
  v170[64] = @"JPEG_F5";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_RealFormat];
  v171[64] = v39;
  v170[65] = @"SCODEC_F1";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_RealFormat];
  v171[65] = v37;
  v170[66] = @"SCODEC_F2";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_RealFormat];
  v171[66] = v35;
  v170[67] = @"SCODEC_F3";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_RealFormat];
  v171[67] = v33;
  v170[68] = @"SOCDEC_F5";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_RealFormat];
  v171[68] = v31;
  v170[69] = @"DISPx_F1";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_RealFormat];
  v171[69] = v29;
  v170[70] = @"DISPx_F2";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_RealFormat];
  v171[70] = v27;
  v170[71] = @"DISPx_F3";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_RealFormat];
  v171[71] = v25;
  v170[72] = @"DISPx_F5";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat];
  v171[72] = v23;
  v170[73] = @"DCS-RD-BWR_F1";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_RealFormat];
  v171[73] = v21;
  v170[74] = @"DCS-RD-BWR_F2";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat];
  v171[74] = v19;
  v170[75] = @"DCS-RD-BWR_F3";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v171[75] = v17;
  v170[76] = @"DCS-RD-BWR_F5";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v171[76] = v15;
  v170[77] = @"DCS-WR-BWR_F1";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v171[77] = v4;
  v170[78] = @"DCS-WR-BWR_F2";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v171[78] = v6;
  v170[79] = @"DCS-WR-BWR_F3";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v171[79] = v8;
  v170[80] = @"DCS-WR-BWR_F5";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v171[80] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:81];
  v175[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v175 forKeys:v174 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAOPcmareceived
{
  v43[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOP])
  {
    v42[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v40[0] = *MEMORY[0x277D3F568];
    v40[1] = v2;
    v41[0] = &unk_282C1C028;
    v41[1] = @"logEventBackwardIOReport";
    v40[2] = *MEMORY[0x277D3F580];
    v41[2] = MEMORY[0x277CBEC38];
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v43[0] = v37;
    v42[1] = *MEMORY[0x277D3F540];
    v38[0] = @"SampleTime";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_RealFormat_withUnit_s];
    v39[0] = v35;
    v38[1] = @"Ready reports";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v39[1] = v33;
    v38[2] = @"Gyro reports";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v39[2] = v31;
    v38[3] = @"Accel reports";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v39[3] = v29;
    v38[4] = @"Compass reports";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v39[4] = v27;
    v38[5] = @"HID reports";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v39[5] = v25;
    v38[6] = @"Grape reports";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v39[6] = v23;
    v38[7] = @"Platinum reports";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v39[7] = v21;
    v38[8] = @"Lisa reports";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v39[8] = v19;
    v38[9] = @"ALS reports";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v39[9] = v17;
    v38[10] = @"Osmium reports";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v39[10] = v15;
    v38[11] = @"Message reports";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v39[11] = v4;
    v38[12] = @"SPI reports";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v39[12] = v6;
    v38[13] = @"Reset reports";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v39[13] = v8;
    v38[14] = @"Responses";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v39[14] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:15];
    v43[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAOPgyroreceived
{
  v43[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOP])
  {
    v42[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v40[0] = *MEMORY[0x277D3F568];
    v40[1] = v2;
    v41[0] = &unk_282C1C028;
    v41[1] = @"logEventBackwardIOReport";
    v40[2] = *MEMORY[0x277D3F580];
    v41[2] = MEMORY[0x277CBEC38];
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v43[0] = v37;
    v42[1] = *MEMORY[0x277D3F540];
    v38[0] = @"SampleTime";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_RealFormat_withUnit_s];
    v39[0] = v35;
    v38[1] = @"Ready reports";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v39[1] = v33;
    v38[2] = @"Gyro reports";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v39[2] = v31;
    v38[3] = @"Accel reports";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v39[3] = v29;
    v38[4] = @"Compass reports";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v39[4] = v27;
    v38[5] = @"HID reports";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v39[5] = v25;
    v38[6] = @"Grape reports";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v39[6] = v23;
    v38[7] = @"Platinum reports";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v39[7] = v21;
    v38[8] = @"Lisa reports";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v39[8] = v19;
    v38[9] = @"ALS reports";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v39[9] = v17;
    v38[10] = @"Osmium reports";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v39[10] = v15;
    v38[11] = @"Message reports";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v39[11] = v4;
    v38[12] = @"SPI reports";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v39[12] = v6;
    v38[13] = @"Reset reports";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v39[13] = v8;
    v38[14] = @"Responses";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v39[14] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:15];
    v43[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionAOPlasreceived
{
  v43[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOP])
  {
    v42[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v40[0] = *MEMORY[0x277D3F568];
    v40[1] = v2;
    v41[0] = &unk_282C1C028;
    v41[1] = @"logEventBackwardIOReport";
    v40[2] = *MEMORY[0x277D3F580];
    v41[2] = MEMORY[0x277CBEC38];
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v43[0] = v37;
    v42[1] = *MEMORY[0x277D3F540];
    v38[0] = @"SampleTime";
    v36 = [MEMORY[0x277D3F198] sharedInstance];
    v35 = [v36 commonTypeDict_RealFormat_withUnit_s];
    v39[0] = v35;
    v38[1] = @"Ready reports";
    v34 = [MEMORY[0x277D3F198] sharedInstance];
    v33 = [v34 commonTypeDict_IntegerFormat];
    v39[1] = v33;
    v38[2] = @"Gyro reports";
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v39[2] = v31;
    v38[3] = @"Accel reports";
    v30 = [MEMORY[0x277D3F198] sharedInstance];
    v29 = [v30 commonTypeDict_IntegerFormat];
    v39[3] = v29;
    v38[4] = @"Compass reports";
    v28 = [MEMORY[0x277D3F198] sharedInstance];
    v27 = [v28 commonTypeDict_IntegerFormat];
    v39[4] = v27;
    v38[5] = @"HID reports";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v39[5] = v25;
    v38[6] = @"Grape reports";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v39[6] = v23;
    v38[7] = @"Platinum reports";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v39[7] = v21;
    v38[8] = @"Lisa reports";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v39[8] = v19;
    v38[9] = @"ALS reports";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v39[9] = v17;
    v38[10] = @"Osmium reports";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v39[10] = v15;
    v38[11] = @"Message reports";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v39[11] = v4;
    v38[12] = @"SPI reports";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v39[12] = v6;
    v38[13] = @"Reset reports";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v39[13] = v8;
    v38[14] = @"Responses";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v39[14] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:15];
    v43[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPMPDRAMBW
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v33[0] = &unk_282C1C028;
  v33[1] = @"logEventBackwardIOReport";
  v32[2] = *MEMORY[0x277D3F580];
  v33[2] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v35[0] = v29;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"SampleTime";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_RealFormat_withUnit_s];
  v31[0] = v27;
  v30[1] = @"F1 RD";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v31[1] = v25;
  v30[2] = @"F1 WR";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v31[2] = v23;
  v30[3] = @"F2 RD";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v31[3] = v21;
  v30[4] = @"F2 WR";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v31[4] = v19;
  v30[5] = @"F3 RD";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v31[5] = v17;
  v30[6] = @"F3 WR";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v31[6] = v15;
  v30[7] = @"F4 RD";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v31[7] = v4;
  v30[8] = @"F4 WR";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v31[8] = v6;
  v30[9] = @"F5 RD";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v31[9] = v8;
  v30[10] = @"F5 WR";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v31[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
  v35[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPMPDRAMState
{
  v45[2] = *MEMORY[0x277D85DE8];
  v44[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v42[0] = *MEMORY[0x277D3F568];
  v42[1] = v2;
  v43[0] = &unk_282C1C028;
  v43[1] = @"logEventBackwardIOReport";
  v42[2] = *MEMORY[0x277D3F580];
  v43[2] = MEMORY[0x277CBEC38];
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
  v45[0] = v39;
  v44[1] = *MEMORY[0x277D3F540];
  v40[0] = @"SampleTime";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_RealFormat_withUnit_s];
  v41[0] = v37;
  v40[1] = @"FxS_F1 AC";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_RealFormat];
  v41[1] = v35;
  v40[2] = @"FxS_F1 PD";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_RealFormat];
  v41[2] = v33;
  v40[3] = @"FxS_F1 SR";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_RealFormat];
  v41[3] = v31;
  v40[4] = @"FxS_F2 AC";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_RealFormat];
  v41[4] = v29;
  v40[5] = @"FxS_F2 PD";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_RealFormat];
  v41[5] = v27;
  v40[6] = @"FxS_F2 SR";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_RealFormat];
  v41[6] = v25;
  v40[7] = @"FxS_F3 AC";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat];
  v41[7] = v23;
  v40[8] = @"FxS_F3 PD";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_RealFormat];
  v41[8] = v21;
  v40[9] = @"FxS_F3 SR";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat];
  v41[9] = v19;
  v40[10] = @"FxS_F4 AC";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v41[10] = v17;
  v40[11] = @"FxS_F4 PD";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v41[11] = v15;
  v40[12] = @"FxS_F4 SR";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v41[12] = v4;
  v40[13] = @"FxS_F5 AC";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v41[13] = v6;
  v40[14] = @"FxS_F5 PD";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v41[14] = v8;
  v40[15] = @"FxS_F5 SR";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v41[15] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:16];
  v45[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPMPFabricBW
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C028;
  v29[1] = @"logEventBackwardIOReport";
  v28[2] = *MEMORY[0x277D3F580];
  v29[2] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"SampleTime";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat_withUnit_s];
  v27[0] = v23;
  v26[1] = @"VMAX RD";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v27[1] = v21;
  v26[2] = @"VMAX WR";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v27[2] = v19;
  v26[3] = @"VMIN RD";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v27[3] = v17;
  v26[4] = @"VMIN WR";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v27[4] = v15;
  v26[5] = @"VNOM RD";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v27[5] = v4;
  v26[6] = @"VNOM WR";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v27[6] = v6;
  v26[7] = @"VOVD RD";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v27[7] = v8;
  v26[8] = @"VOVD WR";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPMPPMCSOCFloor
{
  v79[2] = *MEMORY[0x277D85DE8];
  v78[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v76[0] = *MEMORY[0x277D3F568];
  v76[1] = v2;
  v77[0] = &unk_282C1C028;
  v77[1] = @"logEventBackwardIOReport";
  v76[2] = *MEMORY[0x277D3F580];
  v77[2] = MEMORY[0x277CBEC38];
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v79[0] = v73;
  v78[1] = *MEMORY[0x277D3F540];
  v74[0] = @"SampleTime";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_RealFormat_withUnit_s];
  v75[0] = v71;
  v74[1] = @"PMP_VMIN";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_RealFormat];
  v75[1] = v69;
  v74[2] = @"PMP_VNOM";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_RealFormat];
  v75[2] = v67;
  v74[3] = @"PMP_VMAX";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_RealFormat];
  v75[3] = v65;
  v74[4] = @"PMP_VOVD";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_RealFormat];
  v75[4] = v63;
  v74[5] = @"CLPC_VMIN";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_RealFormat];
  v75[5] = v61;
  v74[6] = @"CLPC_VNOM";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_RealFormat];
  v75[6] = v59;
  v74[7] = @"CLPC_VMAX";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_RealFormat];
  v75[7] = v57;
  v74[8] = @"CLPC_VOVD";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_RealFormat];
  v75[8] = v55;
  v74[9] = @"GFX_VMIN";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_RealFormat];
  v75[9] = v53;
  v74[10] = @"GFX_VNOM";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_RealFormat];
  v75[10] = v51;
  v74[11] = @"GFX_VMAX";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_RealFormat];
  v75[11] = v49;
  v74[12] = @"GFX_VOVD";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_RealFormat];
  v75[12] = v47;
  v74[13] = @"AP_VMIN";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_RealFormat];
  v75[13] = v45;
  v74[14] = @"AP_VNOM";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_RealFormat];
  v75[14] = v43;
  v74[15] = @"AP_VMAX";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_RealFormat];
  v75[15] = v41;
  v74[16] = @"AP_VOVD";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_RealFormat];
  v75[16] = v39;
  v74[17] = @"BWR_VMIN";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_RealFormat];
  v75[17] = v37;
  v74[18] = @"BWR_VNOM";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_RealFormat];
  v75[18] = v35;
  v74[19] = @"BWR_VMAX";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_RealFormat];
  v75[19] = v33;
  v74[20] = @"BWR_VOVD";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_RealFormat];
  v75[20] = v31;
  v74[21] = @"RMBS_VMIN";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_RealFormat];
  v75[21] = v29;
  v74[22] = @"RMBS_VNOM";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_RealFormat];
  v75[22] = v27;
  v74[23] = @"RMBS_VMAX";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_RealFormat];
  v75[23] = v25;
  v74[24] = @"RMBS_VOVD";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat];
  v75[24] = v23;
  v74[25] = @"BOOST_VMIN";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_RealFormat];
  v75[25] = v21;
  v74[26] = @"BOOST_VNOM";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat];
  v75[26] = v19;
  v74[27] = @"BOOST_VMAX";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v75[27] = v17;
  v74[28] = @"BOOST_VOVD";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v75[28] = v15;
  v74[29] = @"MISC_VMIN";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v75[29] = v4;
  v74[30] = @"MISC_VNOM";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v75[30] = v6;
  v74[31] = @"MISC_VMAX";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v75[31] = v8;
  v74[32] = @"MISC_VOVD";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v75[32] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:33];
  v79[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionPMPPMCDCSFloor
{
  v111[2] = *MEMORY[0x277D85DE8];
  v110[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v108[0] = *MEMORY[0x277D3F568];
  v108[1] = v2;
  v109[0] = &unk_282C1C028;
  v109[1] = @"logEventBackwardIOReport";
  v108[2] = *MEMORY[0x277D3F580];
  v109[2] = MEMORY[0x277CBEC38];
  v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:3];
  v111[0] = v105;
  v110[1] = *MEMORY[0x277D3F540];
  v106[0] = @"SampleTime";
  v104 = [MEMORY[0x277D3F198] sharedInstance];
  v103 = [v104 commonTypeDict_RealFormat_withUnit_s];
  v107[0] = v103;
  v106[1] = @"PMP_F1";
  v102 = [MEMORY[0x277D3F198] sharedInstance];
  v101 = [v102 commonTypeDict_RealFormat];
  v107[1] = v101;
  v106[2] = @"PMP_F2";
  v100 = [MEMORY[0x277D3F198] sharedInstance];
  v99 = [v100 commonTypeDict_RealFormat];
  v107[2] = v99;
  v106[3] = @"PMP_F3";
  v98 = [MEMORY[0x277D3F198] sharedInstance];
  v97 = [v98 commonTypeDict_RealFormat];
  v107[3] = v97;
  v106[4] = @"PMP_F4";
  v96 = [MEMORY[0x277D3F198] sharedInstance];
  v95 = [v96 commonTypeDict_RealFormat];
  v107[4] = v95;
  v106[5] = @"PMP_F5";
  v94 = [MEMORY[0x277D3F198] sharedInstance];
  v93 = [v94 commonTypeDict_RealFormat];
  v107[5] = v93;
  v106[6] = @"PMP_F6";
  v92 = [MEMORY[0x277D3F198] sharedInstance];
  v91 = [v92 commonTypeDict_RealFormat];
  v107[6] = v91;
  v106[7] = @"CLPC_F1";
  v90 = [MEMORY[0x277D3F198] sharedInstance];
  v89 = [v90 commonTypeDict_RealFormat];
  v107[7] = v89;
  v106[8] = @"CLPC_F2";
  v88 = [MEMORY[0x277D3F198] sharedInstance];
  v87 = [v88 commonTypeDict_RealFormat];
  v107[8] = v87;
  v106[9] = @"CLPC_F3";
  v86 = [MEMORY[0x277D3F198] sharedInstance];
  v85 = [v86 commonTypeDict_RealFormat];
  v107[9] = v85;
  v106[10] = @"CLPC_F4";
  v84 = [MEMORY[0x277D3F198] sharedInstance];
  v83 = [v84 commonTypeDict_RealFormat];
  v107[10] = v83;
  v106[11] = @"CLPC_F5";
  v82 = [MEMORY[0x277D3F198] sharedInstance];
  v81 = [v82 commonTypeDict_RealFormat];
  v107[11] = v81;
  v106[12] = @"CLPC_F6";
  v80 = [MEMORY[0x277D3F198] sharedInstance];
  v79 = [v80 commonTypeDict_RealFormat];
  v107[12] = v79;
  v106[13] = @"GFX_F1";
  v78 = [MEMORY[0x277D3F198] sharedInstance];
  v77 = [v78 commonTypeDict_RealFormat];
  v107[13] = v77;
  v106[14] = @"GFX_F2";
  v76 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v76 commonTypeDict_RealFormat];
  v107[14] = v75;
  v106[15] = @"GFX_F3";
  v74 = [MEMORY[0x277D3F198] sharedInstance];
  v73 = [v74 commonTypeDict_RealFormat];
  v107[15] = v73;
  v106[16] = @"GFX_F4";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_RealFormat];
  v107[16] = v71;
  v106[17] = @"GFX_F5";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_RealFormat];
  v107[17] = v69;
  v106[18] = @"GFX_F6";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_RealFormat];
  v107[18] = v67;
  v106[19] = @"AP_F1";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_RealFormat];
  v107[19] = v65;
  v106[20] = @"AP_F2";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_RealFormat];
  v107[20] = v63;
  v106[21] = @"AP_F3";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_RealFormat];
  v107[21] = v61;
  v106[22] = @"AP_F4";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_RealFormat];
  v107[22] = v59;
  v106[23] = @"AP_F5";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_RealFormat];
  v107[23] = v57;
  v106[24] = @"AP_F6";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_RealFormat];
  v107[24] = v55;
  v106[25] = @"BWR_F1";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_RealFormat];
  v107[25] = v53;
  v106[26] = @"BWR_F2";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_RealFormat];
  v107[26] = v51;
  v106[27] = @"BWR_F3";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_RealFormat];
  v107[27] = v49;
  v106[28] = @"BWR_F4";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_RealFormat];
  v107[28] = v47;
  v106[29] = @"BWR_F5";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_RealFormat];
  v107[29] = v45;
  v106[30] = @"BWR_F6";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_RealFormat];
  v107[30] = v43;
  v106[31] = @"RMBS_F1";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_RealFormat];
  v107[31] = v41;
  v106[32] = @"RMBS_F2";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_RealFormat];
  v107[32] = v39;
  v106[33] = @"RMBS_F3";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_RealFormat];
  v107[33] = v37;
  v106[34] = @"RMBS_F4";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_RealFormat];
  v107[34] = v35;
  v106[35] = @"RMBS_F5";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_RealFormat];
  v107[35] = v33;
  v106[36] = @"RMBS_F6";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_RealFormat];
  v107[36] = v31;
  v106[37] = @"BOOST_F1";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_RealFormat];
  v107[37] = v29;
  v106[38] = @"BOOST_F2";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_RealFormat];
  v107[38] = v27;
  v106[39] = @"BOOST_F3";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_RealFormat];
  v107[39] = v25;
  v106[40] = @"BOOST_F4";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat];
  v107[40] = v23;
  v106[41] = @"BOOST_F5";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_RealFormat];
  v107[41] = v21;
  v106[42] = @"BOOST_F6";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_RealFormat];
  v107[42] = v19;
  v106[43] = @"MISC_F1";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v107[43] = v17;
  v106[44] = @"MISC_F2";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v107[44] = v15;
  v106[45] = @"MISC_F3";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v107[45] = v4;
  v106[46] = @"MISC_F4";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v107[46] = v6;
  v106[47] = @"MISC_F5";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v107[47] = v8;
  v106[48] = @"MISC_F6";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v107[48] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:49];
  v111[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionANS2PCIE0
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C028;
  v29[1] = @"logEventBackwardIOReport";
  v28[2] = *MEMORY[0x277D3F580];
  v29[2] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"SampleTime";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_RealFormat_withUnit_s];
  v27[0] = v23;
  v26[1] = @"Link 0 states_L0";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_RealFormat];
  v27[1] = v21;
  v26[2] = @"Link 0 states_L0_Transitions";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v27[2] = v19;
  v26[3] = @"Link 0 states_L1.0";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_RealFormat];
  v27[3] = v17;
  v26[4] = @"Link 0 states_L1.0_Transitions";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v27[4] = v15;
  v26[5] = @"Link 0 states_L1.1";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v27[5] = v4;
  v26[6] = @"Link 0 states_L1.1_Transitions";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v27[6] = v6;
  v26[7] = @"Link 0 states_L1.2";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v27[7] = v8;
  v26[8] = @"Link 0 states_L1.2_Transitions";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __41__PLIOReportAgent_shouldLogMemCacheStats__block_invoke()
{
  if (([MEMORY[0x277D3F180] BOOLForKey:@"disableMemCacheStatConditions" ifNotSet:0] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F180], "taskMode") & 1) != 0 || (result = objc_msgSend(MEMORY[0x277D3F180], "fullMode"), result))
  {
    result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    v1 = result > 1001012;
  }

  else
  {
    v1 = 0;
  }

  byte_2811F475D = v1;
  return result;
}

+ (id)entryEventBackwardDefinitionMemCacheStats
{
  v258[2] = *MEMORY[0x277D85DE8];
  if (+[PLIOReportAgent shouldLogMemCacheStats])
  {
    v257[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4F8];
    v255[0] = *MEMORY[0x277D3F568];
    v255[1] = v2;
    v256[0] = &unk_282C1C038;
    v256[1] = MEMORY[0x277CBEC28];
    v252 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v256 forKeys:v255 count:2];
    v258[0] = v252;
    v257[1] = *MEMORY[0x277D3F540];
    v253[0] = @"SampleTime";
    v251 = [MEMORY[0x277D3F198] sharedInstance];
    v250 = [v251 commonTypeDict_RealFormat];
    v254[0] = v250;
    v249 = [PLIOReportAgent keyForSubBlock:0];
    v253[1] = v249;
    v248 = [MEMORY[0x277D3F198] sharedInstance];
    v247 = [v248 commonTypeDict_IntegerFormat];
    v254[1] = v247;
    v246 = [PLIOReportAgent keyForSubBlock:1];
    v253[2] = v246;
    v245 = [MEMORY[0x277D3F198] sharedInstance];
    v244 = [v245 commonTypeDict_IntegerFormat];
    v254[2] = v244;
    v243 = [PLIOReportAgent keyForSubBlock:2];
    v253[3] = v243;
    v242 = [MEMORY[0x277D3F198] sharedInstance];
    v241 = [v242 commonTypeDict_IntegerFormat];
    v254[3] = v241;
    v240 = [PLIOReportAgent keyForSubBlock:3];
    v253[4] = v240;
    v239 = [MEMORY[0x277D3F198] sharedInstance];
    v238 = [v239 commonTypeDict_IntegerFormat];
    v254[4] = v238;
    v237 = [PLIOReportAgent keyForSubBlock:4];
    v253[5] = v237;
    v236 = [MEMORY[0x277D3F198] sharedInstance];
    v235 = [v236 commonTypeDict_IntegerFormat];
    v254[5] = v235;
    v234 = [PLIOReportAgent keyForSubBlock:5];
    v253[6] = v234;
    v233 = [MEMORY[0x277D3F198] sharedInstance];
    v232 = [v233 commonTypeDict_IntegerFormat];
    v254[6] = v232;
    v231 = [PLIOReportAgent keyForSubBlock:6];
    v253[7] = v231;
    v230 = [MEMORY[0x277D3F198] sharedInstance];
    v229 = [v230 commonTypeDict_IntegerFormat];
    v254[7] = v229;
    v228 = [PLIOReportAgent keyForSubBlock:7];
    v253[8] = v228;
    v227 = [MEMORY[0x277D3F198] sharedInstance];
    v226 = [v227 commonTypeDict_IntegerFormat];
    v254[8] = v226;
    v225 = [PLIOReportAgent keyForSubBlock:8];
    v253[9] = v225;
    v224 = [MEMORY[0x277D3F198] sharedInstance];
    v223 = [v224 commonTypeDict_IntegerFormat];
    v254[9] = v223;
    v222 = [PLIOReportAgent keyForSubBlock:9];
    v253[10] = v222;
    v221 = [MEMORY[0x277D3F198] sharedInstance];
    v220 = [v221 commonTypeDict_IntegerFormat];
    v254[10] = v220;
    v219 = [PLIOReportAgent keyForSubBlock:10];
    v253[11] = v219;
    v218 = [MEMORY[0x277D3F198] sharedInstance];
    v217 = [v218 commonTypeDict_IntegerFormat];
    v254[11] = v217;
    v216 = [PLIOReportAgent keyForSubBlock:11];
    v253[12] = v216;
    v215 = [MEMORY[0x277D3F198] sharedInstance];
    v214 = [v215 commonTypeDict_IntegerFormat];
    v254[12] = v214;
    v213 = [PLIOReportAgent keyForSubBlock:12];
    v253[13] = v213;
    v212 = [MEMORY[0x277D3F198] sharedInstance];
    v211 = [v212 commonTypeDict_IntegerFormat];
    v254[13] = v211;
    v210 = [PLIOReportAgent keyForSubBlock:13];
    v253[14] = v210;
    v209 = [MEMORY[0x277D3F198] sharedInstance];
    v208 = [v209 commonTypeDict_IntegerFormat];
    v254[14] = v208;
    v207 = [PLIOReportAgent keyForSubBlock:14];
    v253[15] = v207;
    v206 = [MEMORY[0x277D3F198] sharedInstance];
    v205 = [v206 commonTypeDict_IntegerFormat];
    v254[15] = v205;
    v204 = [PLIOReportAgent keyForSubBlock:15];
    v253[16] = v204;
    v203 = [MEMORY[0x277D3F198] sharedInstance];
    v202 = [v203 commonTypeDict_IntegerFormat];
    v254[16] = v202;
    v201 = [PLIOReportAgent keyForSubBlock:16];
    v253[17] = v201;
    v200 = [MEMORY[0x277D3F198] sharedInstance];
    v199 = [v200 commonTypeDict_IntegerFormat];
    v254[17] = v199;
    v198 = [PLIOReportAgent keyForSubBlock:17];
    v253[18] = v198;
    v197 = [MEMORY[0x277D3F198] sharedInstance];
    v196 = [v197 commonTypeDict_IntegerFormat];
    v254[18] = v196;
    v195 = [PLIOReportAgent keyForSubBlock:18];
    v253[19] = v195;
    v194 = [MEMORY[0x277D3F198] sharedInstance];
    v193 = [v194 commonTypeDict_IntegerFormat];
    v254[19] = v193;
    v192 = [PLIOReportAgent keyForSubBlock:19];
    v253[20] = v192;
    v191 = [MEMORY[0x277D3F198] sharedInstance];
    v190 = [v191 commonTypeDict_IntegerFormat];
    v254[20] = v190;
    v189 = [PLIOReportAgent keyForSubBlock:20];
    v253[21] = v189;
    v188 = [MEMORY[0x277D3F198] sharedInstance];
    v187 = [v188 commonTypeDict_IntegerFormat];
    v254[21] = v187;
    v186 = [PLIOReportAgent keyForSubBlock:21];
    v253[22] = v186;
    v185 = [MEMORY[0x277D3F198] sharedInstance];
    v184 = [v185 commonTypeDict_IntegerFormat];
    v254[22] = v184;
    v183 = [PLIOReportAgent keyForSubBlock:22];
    v253[23] = v183;
    v182 = [MEMORY[0x277D3F198] sharedInstance];
    v181 = [v182 commonTypeDict_IntegerFormat];
    v254[23] = v181;
    v180 = [PLIOReportAgent keyForSubBlock:23];
    v253[24] = v180;
    v179 = [MEMORY[0x277D3F198] sharedInstance];
    v178 = [v179 commonTypeDict_IntegerFormat];
    v254[24] = v178;
    v177 = [PLIOReportAgent keyForSubBlock:24];
    v253[25] = v177;
    v176 = [MEMORY[0x277D3F198] sharedInstance];
    v175 = [v176 commonTypeDict_IntegerFormat];
    v254[25] = v175;
    v174 = [PLIOReportAgent keyForSubBlock:25];
    v253[26] = v174;
    v173 = [MEMORY[0x277D3F198] sharedInstance];
    v172 = [v173 commonTypeDict_IntegerFormat];
    v254[26] = v172;
    v171 = [PLIOReportAgent keyForSubBlock:26];
    v253[27] = v171;
    v170 = [MEMORY[0x277D3F198] sharedInstance];
    v169 = [v170 commonTypeDict_IntegerFormat];
    v254[27] = v169;
    v168 = [PLIOReportAgent keyForSubBlock:27];
    v253[28] = v168;
    v167 = [MEMORY[0x277D3F198] sharedInstance];
    v166 = [v167 commonTypeDict_IntegerFormat];
    v254[28] = v166;
    v165 = [PLIOReportAgent keyForSubBlock:28];
    v253[29] = v165;
    v164 = [MEMORY[0x277D3F198] sharedInstance];
    v163 = [v164 commonTypeDict_IntegerFormat];
    v254[29] = v163;
    v162 = [PLIOReportAgent keyForSubBlock:29];
    v253[30] = v162;
    v161 = [MEMORY[0x277D3F198] sharedInstance];
    v160 = [v161 commonTypeDict_IntegerFormat];
    v254[30] = v160;
    v159 = [PLIOReportAgent keyForSubBlock:30];
    v253[31] = v159;
    v158 = [MEMORY[0x277D3F198] sharedInstance];
    v157 = [v158 commonTypeDict_IntegerFormat];
    v254[31] = v157;
    v156 = [PLIOReportAgent keyForSubBlock:31];
    v253[32] = v156;
    v155 = [MEMORY[0x277D3F198] sharedInstance];
    v154 = [v155 commonTypeDict_IntegerFormat];
    v254[32] = v154;
    v153 = [PLIOReportAgent keyForSubBlock:32];
    v253[33] = v153;
    v152 = [MEMORY[0x277D3F198] sharedInstance];
    v151 = [v152 commonTypeDict_IntegerFormat];
    v254[33] = v151;
    v150 = [PLIOReportAgent keyForSubBlock:33];
    v253[34] = v150;
    v149 = [MEMORY[0x277D3F198] sharedInstance];
    v148 = [v149 commonTypeDict_IntegerFormat];
    v254[34] = v148;
    v147 = [PLIOReportAgent keyForSubBlock:34];
    v253[35] = v147;
    v146 = [MEMORY[0x277D3F198] sharedInstance];
    v145 = [v146 commonTypeDict_IntegerFormat];
    v254[35] = v145;
    v144 = [PLIOReportAgent keyForSubBlock:35];
    v253[36] = v144;
    v143 = [MEMORY[0x277D3F198] sharedInstance];
    v142 = [v143 commonTypeDict_IntegerFormat];
    v254[36] = v142;
    v141 = [PLIOReportAgent keyForSubBlock:36];
    v253[37] = v141;
    v140 = [MEMORY[0x277D3F198] sharedInstance];
    v139 = [v140 commonTypeDict_IntegerFormat];
    v254[37] = v139;
    v138 = [PLIOReportAgent keyForSubBlock:37];
    v253[38] = v138;
    v137 = [MEMORY[0x277D3F198] sharedInstance];
    v136 = [v137 commonTypeDict_IntegerFormat];
    v254[38] = v136;
    v135 = [PLIOReportAgent keyForSubBlock:38];
    v253[39] = v135;
    v134 = [MEMORY[0x277D3F198] sharedInstance];
    v133 = [v134 commonTypeDict_IntegerFormat];
    v254[39] = v133;
    v132 = [PLIOReportAgent keyForSubBlock:39];
    v253[40] = v132;
    v131 = [MEMORY[0x277D3F198] sharedInstance];
    v130 = [v131 commonTypeDict_IntegerFormat];
    v254[40] = v130;
    v129 = [PLIOReportAgent keyForSubBlock:40];
    v253[41] = v129;
    v128 = [MEMORY[0x277D3F198] sharedInstance];
    v127 = [v128 commonTypeDict_IntegerFormat];
    v254[41] = v127;
    v126 = [PLIOReportAgent keyForSubBlock:41];
    v253[42] = v126;
    v125 = [MEMORY[0x277D3F198] sharedInstance];
    v124 = [v125 commonTypeDict_IntegerFormat];
    v254[42] = v124;
    v123 = [PLIOReportAgent keyForSubBlock:42];
    v253[43] = v123;
    v122 = [MEMORY[0x277D3F198] sharedInstance];
    v121 = [v122 commonTypeDict_IntegerFormat];
    v254[43] = v121;
    v120 = [PLIOReportAgent keyForSubBlock:43];
    v253[44] = v120;
    v119 = [MEMORY[0x277D3F198] sharedInstance];
    v118 = [v119 commonTypeDict_IntegerFormat];
    v254[44] = v118;
    v117 = [PLIOReportAgent keyForSubBlock:44];
    v253[45] = v117;
    v116 = [MEMORY[0x277D3F198] sharedInstance];
    v115 = [v116 commonTypeDict_IntegerFormat];
    v254[45] = v115;
    v114 = [PLIOReportAgent keyForSubBlock:45];
    v253[46] = v114;
    v113 = [MEMORY[0x277D3F198] sharedInstance];
    v112 = [v113 commonTypeDict_IntegerFormat];
    v254[46] = v112;
    v111 = [PLIOReportAgent keyForSubBlock:46];
    v253[47] = v111;
    v110 = [MEMORY[0x277D3F198] sharedInstance];
    v109 = [v110 commonTypeDict_IntegerFormat];
    v254[47] = v109;
    v108 = [PLIOReportAgent keyForSubBlock:47];
    v253[48] = v108;
    v107 = [MEMORY[0x277D3F198] sharedInstance];
    v106 = [v107 commonTypeDict_IntegerFormat];
    v254[48] = v106;
    v105 = [PLIOReportAgent keyForSubBlock:48];
    v253[49] = v105;
    v104 = [MEMORY[0x277D3F198] sharedInstance];
    v103 = [v104 commonTypeDict_IntegerFormat];
    v254[49] = v103;
    v102 = [PLIOReportAgent keyForSubBlock:49];
    v253[50] = v102;
    v101 = [MEMORY[0x277D3F198] sharedInstance];
    v100 = [v101 commonTypeDict_IntegerFormat];
    v254[50] = v100;
    v99 = [PLIOReportAgent keyForSubBlock:50];
    v253[51] = v99;
    v98 = [MEMORY[0x277D3F198] sharedInstance];
    v97 = [v98 commonTypeDict_IntegerFormat];
    v254[51] = v97;
    v96 = [PLIOReportAgent keyForSubBlock:51];
    v253[52] = v96;
    v95 = [MEMORY[0x277D3F198] sharedInstance];
    v94 = [v95 commonTypeDict_IntegerFormat];
    v254[52] = v94;
    v93 = [PLIOReportAgent keyForSubBlock:52];
    v253[53] = v93;
    v92 = [MEMORY[0x277D3F198] sharedInstance];
    v91 = [v92 commonTypeDict_IntegerFormat];
    v254[53] = v91;
    v90 = [PLIOReportAgent keyForSubBlock:53];
    v253[54] = v90;
    v89 = [MEMORY[0x277D3F198] sharedInstance];
    v88 = [v89 commonTypeDict_IntegerFormat];
    v254[54] = v88;
    v87 = [PLIOReportAgent keyForSubBlock:54];
    v253[55] = v87;
    v86 = [MEMORY[0x277D3F198] sharedInstance];
    v85 = [v86 commonTypeDict_IntegerFormat];
    v254[55] = v85;
    v84 = [PLIOReportAgent keyForSubBlock:55];
    v253[56] = v84;
    v83 = [MEMORY[0x277D3F198] sharedInstance];
    v82 = [v83 commonTypeDict_IntegerFormat];
    v254[56] = v82;
    v81 = [PLIOReportAgent keyForSubBlock:56];
    v253[57] = v81;
    v80 = [MEMORY[0x277D3F198] sharedInstance];
    v79 = [v80 commonTypeDict_IntegerFormat];
    v254[57] = v79;
    v78 = [PLIOReportAgent keyForSubBlock:57];
    v253[58] = v78;
    v77 = [MEMORY[0x277D3F198] sharedInstance];
    v76 = [v77 commonTypeDict_IntegerFormat];
    v254[58] = v76;
    v75 = [PLIOReportAgent keyForSubBlock:58];
    v253[59] = v75;
    v74 = [MEMORY[0x277D3F198] sharedInstance];
    v73 = [v74 commonTypeDict_IntegerFormat];
    v254[59] = v73;
    v72 = [PLIOReportAgent keyForSubBlock:59];
    v253[60] = v72;
    v71 = [MEMORY[0x277D3F198] sharedInstance];
    v70 = [v71 commonTypeDict_IntegerFormat];
    v254[60] = v70;
    v69 = [PLIOReportAgent keyForSubBlock:60];
    v253[61] = v69;
    v68 = [MEMORY[0x277D3F198] sharedInstance];
    v67 = [v68 commonTypeDict_IntegerFormat];
    v254[61] = v67;
    v66 = [PLIOReportAgent keyForSubBlock:61];
    v253[62] = v66;
    v65 = [MEMORY[0x277D3F198] sharedInstance];
    v64 = [v65 commonTypeDict_IntegerFormat];
    v254[62] = v64;
    v63 = [PLIOReportAgent keyForSubBlock:62];
    v253[63] = v63;
    v62 = [MEMORY[0x277D3F198] sharedInstance];
    v61 = [v62 commonTypeDict_IntegerFormat];
    v254[63] = v61;
    v60 = [PLIOReportAgent keyForSubBlock:63];
    v253[64] = v60;
    v59 = [MEMORY[0x277D3F198] sharedInstance];
    v58 = [v59 commonTypeDict_IntegerFormat];
    v254[64] = v58;
    v57 = [PLIOReportAgent keyForSubBlock:64];
    v253[65] = v57;
    v56 = [MEMORY[0x277D3F198] sharedInstance];
    v55 = [v56 commonTypeDict_IntegerFormat];
    v254[65] = v55;
    v54 = [PLIOReportAgent keyForSubBlock:65];
    v253[66] = v54;
    v53 = [MEMORY[0x277D3F198] sharedInstance];
    v52 = [v53 commonTypeDict_IntegerFormat];
    v254[66] = v52;
    v51 = [PLIOReportAgent keyForSubBlock:66];
    v253[67] = v51;
    v50 = [MEMORY[0x277D3F198] sharedInstance];
    v49 = [v50 commonTypeDict_IntegerFormat];
    v254[67] = v49;
    v48 = [PLIOReportAgent keyForSubBlock:67];
    v253[68] = v48;
    v47 = [MEMORY[0x277D3F198] sharedInstance];
    v46 = [v47 commonTypeDict_IntegerFormat];
    v254[68] = v46;
    v45 = [PLIOReportAgent keyForSubBlock:68];
    v253[69] = v45;
    v44 = [MEMORY[0x277D3F198] sharedInstance];
    v43 = [v44 commonTypeDict_IntegerFormat];
    v254[69] = v43;
    v42 = [PLIOReportAgent keyForSubBlock:69];
    v253[70] = v42;
    v41 = [MEMORY[0x277D3F198] sharedInstance];
    v40 = [v41 commonTypeDict_IntegerFormat];
    v254[70] = v40;
    v39 = [PLIOReportAgent keyForSubBlock:70];
    v253[71] = v39;
    v38 = [MEMORY[0x277D3F198] sharedInstance];
    v37 = [v38 commonTypeDict_IntegerFormat];
    v254[71] = v37;
    v36 = [PLIOReportAgent keyForSubBlock:71];
    v253[72] = v36;
    v35 = [MEMORY[0x277D3F198] sharedInstance];
    v34 = [v35 commonTypeDict_IntegerFormat];
    v254[72] = v34;
    v33 = [PLIOReportAgent keyForSubBlock:72];
    v253[73] = v33;
    v32 = [MEMORY[0x277D3F198] sharedInstance];
    v31 = [v32 commonTypeDict_IntegerFormat];
    v254[73] = v31;
    v30 = [PLIOReportAgent keyForSubBlock:73];
    v253[74] = v30;
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_IntegerFormat];
    v254[74] = v28;
    v27 = [PLIOReportAgent keyForSubBlock:74];
    v253[75] = v27;
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v254[75] = v25;
    v24 = [PLIOReportAgent keyForSubBlock:75];
    v253[76] = v24;
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v254[76] = v22;
    v21 = [PLIOReportAgent keyForSubBlock:76];
    v253[77] = v21;
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v254[77] = v19;
    v18 = [PLIOReportAgent keyForSubBlock:77];
    v253[78] = v18;
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v254[78] = v16;
    v15 = [PLIOReportAgent keyForSubBlock:78];
    v253[79] = v15;
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v254[79] = v4;
    v5 = [PLIOReportAgent keyForSubBlock:79];
    v253[80] = v5;
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v254[80] = v7;
    v8 = [PLIOReportAgent keyForSubBlock:80];
    v253[81] = v8;
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v254[81] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v254 forKeys:v253 count:82];
    v258[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v258 forKeys:v257 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)channelDictionaryWithChannelSet:(id)a3 withMinProcessTime:(double)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22 = 0;
  cf = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __70__PLIOReportAgent_channelDictionaryWithChannelSet_withMinProcessTime___block_invoke;
  v19 = &unk_27825CDC0;
  v7 = v6;
  v20 = v7;
  v21 = self;
  v8 = IOReportCopyFilteredChannels();
  if (IOReportGetChannelCount())
  {
    Subscription = IOReportCreateSubscription();
    if (v8)
    {
      CFRelease(v8);
    }

    if (!Subscription)
    {
      goto LABEL_10;
    }

    if (IOReportGetChannelCount())
    {
      v10 = objc_opt_new();
      [v10 setObject:Subscription forKey:@"subscription"];

      v11 = cf;
      [v10 setObject:cf forKey:@"subscribedChannels"];

      v12 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      [v10 setObject:v12 forKey:@"minNotificationProcessTime"];

      goto LABEL_11;
    }

    CFRelease(Subscription);
    v13 = cf;
  }

  else
  {
    v13 = v8;
  }

  CFRelease(v13);
LABEL_10:
  v10 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __70__PLIOReportAgent_channelDictionaryWithChannelSet_withMinProcessTime___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = IOReportChannelGetGroup();
  v4 = IOReportChannelGetSubGroup();
  if (v4)
  {
    v5 = [v3 stringByAppendingString:{@", "}];
    v6 = [v5 stringByAppendingString:v4];
  }

  else
  {
    v6 = v3;
  }

  if ([*(a1 + 32) containsObject:v6])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = *(a1 + 40);
      v8 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__PLIOReportAgent_channelDictionaryWithChannelSet_withMinProcessTime___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (qword_2811F47B0 != -1)
      {
        dispatch_once(&qword_2811F47B0, block);
      }

      if (byte_2811F475E == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! Retain: testObj = %@ !!!", v6];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent channelDictionaryWithChannelSet:withMinProcessTime:]_block_invoke"];
        [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:8264];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v9;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v15 = 0;
LABEL_22:

        goto LABEL_24;
      }
    }
  }

  else if (![MEMORY[0x277D3F208] isWatch] || (IOReportChannelGetChannelName(), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@,%@", v6, v16), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(*(a1 + 32), "containsObject:", v17), v17, v16, (v18 & 1) == 0))
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_23;
    }

    v19 = *(a1 + 40);
    v20 = objc_opt_class();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __70__PLIOReportAgent_channelDictionaryWithChannelSet_withMinProcessTime___block_invoke_8346;
    v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v27[4] = v20;
    if (qword_2811F47B8 != -1)
    {
      dispatch_once(&qword_2811F47B8, v27);
    }

    if (byte_2811F475F != 1)
    {
LABEL_23:
      v15 = 16;
      goto LABEL_24;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! Remove: testObj = %@ !!!", v6];
    v21 = MEMORY[0x277D3F178];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
    v23 = [v22 lastPathComponent];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent channelDictionaryWithChannelSet:withMinProcessTime:]_block_invoke_2"];
    [v21 logMessage:v9 fromFile:v23 fromFunction:v24 fromLineNumber:8274];

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v30 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v15 = 16;
    goto LABEL_22;
  }

  v15 = 0;
LABEL_24:

  objc_autoreleasePoolPop(v2);
  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __70__PLIOReportAgent_channelDictionaryWithChannelSet_withMinProcessTime___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F475E = result;
  return result;
}

uint64_t __70__PLIOReportAgent_channelDictionaryWithChannelSet_withMinProcessTime___block_invoke_8346(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F475F = result;
  return result;
}

uint64_t __70__PLIOReportAgent_channelDictionaryWithChannelSet_withMinProcessTime___block_invoke_8352(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4760 = result;
  return result;
}

- (void)subscribeToChannelSets
{
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  InitializeAllChecks(v27);
  v3 = [(PLIOReportAgent *)self buildBaseSet:v27];
  if (v3)
  {
    v4 = [(PLIOReportAgent *)self channelDictionaryWithChannelSet:v3 withMinProcessTime:-300.0];
    sampleChannelsSignificantBattery = self->_sampleChannelsSignificantBattery;
    self->_sampleChannelsSignificantBattery = v4;
  }

  v6 = [(PLIOReportAgent *)self buildHalfHourSet:v27];
  if (v6)
  {
    v7 = [(PLIOReportAgent *)self channelDictionaryWithChannelSet:v6 withMinProcessTime:-1800.0];
    sampleChannelsHalfHour = self->_sampleChannelsHalfHour;
    self->_sampleChannelsHalfHour = v7;
  }

  v9 = [(PLIOReportAgent *)self buildDailySet:v27];
  if (v9)
  {
    v10 = [(PLIOReportAgent *)self channelDictionaryWithChannelSet:v9 withMinProcessTime:-86400.0];
    sampleChannelsDaily = self->_sampleChannelsDaily;
    self->_sampleChannelsDaily = v10;
  }

  v12 = [(PLIOReportAgent *)self buildScreenStateSet:v27];
  if (v12)
  {
    v13 = [(PLIOReportAgent *)self channelDictionaryWithChannelSet:v12 withMinProcessTime:0.0];
    sampleChannelsScreenState = self->_sampleChannelsScreenState;
    self->_sampleChannelsScreenState = v13;
  }

  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v15 = [(PLIOReportAgent *)self buildDisplayStateChangeSet:v27];
    if (v15)
    {
      v16 = [(PLIOReportAgent *)self channelDictionaryWithChannelSet:v15 withMinProcessTime:0.0];
      sampleChannelsDisplayStateChange = self->_sampleChannelsDisplayStateChange;
      self->_sampleChannelsDisplayStateChange = v16;
    }
  }

  v18 = [(PLIOReportAgent *)self buildAudioEventSet:v27];
  if (v18)
  {
    v19 = [(PLIOReportAgent *)self channelDictionaryWithChannelSet:v18 withMinProcessTime:-60.0];
    sampleChannelsAudioEvent = self->_sampleChannelsAudioEvent;
    self->_sampleChannelsAudioEvent = v19;
  }

  v21 = [(PLIOReportAgent *)self buildWakeSet:v27];
  if (v21)
  {
    v22 = [(PLIOReportAgent *)self channelDictionaryWithChannelSet:v21 withMinProcessTime:0.0];
    sampleChannelsWake = self->_sampleChannelsWake;
    self->_sampleChannelsWake = v22;
  }

  v24 = [(PLIOReportAgent *)self buildSnapshotSet:v27];
  if (v24)
  {
    v25 = [(PLIOReportAgent *)self channelDictionaryWithChannelSet:v24 withMinProcessTime:-300.0];
    sampleChannelsSnapshot = self->_sampleChannelsSnapshot;
    self->_sampleChannelsSnapshot = v25;
  }
}

- (void)sampleDeltaForChannelSets
{
  if (self->_sampleChannelsSignificantBattery)
  {
    v3 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:?];
  }

  if (self->_sampleChannelsHalfHour)
  {
    v4 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:?];
  }

  if (self->_sampleChannelsDaily)
  {
    v5 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:?];
  }

  if (self->_sampleChannelsScreenState)
  {
    v6 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:?];
  }

  if (self->_sampleChannelsAudioEvent)
  {
    v7 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:?];
  }

  if (self->_sampleChannelsWake)
  {
    v8 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:?];
  }
}

- (PLIOReportAgent)init
{
  v3.receiver = self;
  v3.super_class = PLIOReportAgent;
  return [(PLAgent *)&v3 init];
}

- (id)buildBaseSet:(IOReportGroupChecks *)a3
{
  v148[80] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEC38];
  v147[0] = @"AOP,Amp Power";
  v147[1] = @"AOP,mux Power";
  v148[0] = MEMORY[0x277CBEC38];
  v148[1] = MEMORY[0x277CBEC38];
  v147[2] = @"3DTouch,force";
  v147[3] = @"PPM Stats,Droop Controller";
  v148[2] = MEMORY[0x277CBEC38];
  v148[3] = MEMORY[0x277CBEC38];
  v148[4] = MEMORY[0x277CBEC38];
  v147[4] = @"Haptics,Stats";
  v147[5] = @"AOP,gyro power";
  v5 = a3->var5 || a3[1].var0;
  v144 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v148[5] = v144;
  v147[6] = @"AOP,compass power";
  v6 = a3->var5 || a3[1].var0;
  v143 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v148[6] = v143;
  v147[7] = @"AOP,accel power";
  v7 = a3->var5 || a3[1].var0;
  v142 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v148[7] = v142;
  v147[8] = @"AOP,pressure power";
  v8 = a3->var5 || a3[1].var0;
  v141 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v148[8] = v141;
  v147[9] = @"IOMFB Reporting,frame rate phase";
  v9 = a3->var5 || a3[1].var0;
  v140 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v148[9] = v140;
  v147[10] = @"DCP,scanout stats";
  v139 = [MEMORY[0x277CCABB0] numberWithBool:{+[PLIOReportAgent shouldLogDCPScanoutStats](PLIOReportAgent, "shouldLogDCPScanoutStats")}];
  v148[10] = v139;
  v147[11] = @"H13ISP,H13ISP Events";
  v138 = [MEMORY[0x277CCABB0] numberWithBool:a3[2].var1];
  v148[11] = v138;
  v147[12] = @"H16ISP,H16ISP Events";
  v137 = [MEMORY[0x277CCABB0] numberWithBool:a3[2].var1];
  v148[12] = v137;
  v147[13] = @"CPU Stats,CPU Complex Voltage State Time";
  v10 = a3->var5 || a3[1].var0;
  v136 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  v148[13] = v136;
  v147[14] = @"PMP,DRAM BW";
  v11 = a3->var5 || a3[1].var0;
  v135 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v148[14] = v135;
  v147[15] = @"PMP,DRAM State";
  v12 = a3->var5 || a3[1].var0;
  v134 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v148[15] = v134;
  v147[16] = @"PMP,Fabric BW";
  v13 = a3->var5 || a3[1].var0;
  v133 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  v148[16] = v133;
  v147[17] = @"ANS2,PCIE0";
  v14 = a3->var5 || a3[1].var0;
  v132 = [MEMORY[0x277CCABB0] numberWithInt:v14];
  v148[17] = v132;
  v148[18] = v4;
  v147[18] = @"MTP,button-capture";
  v147[19] = @"CPU Stats,CPU Complex Performance States";
  v15 = a3->var5 || a3[1].var0;
  v131 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v148[19] = v131;
  v147[20] = @"CPU Stats,CPU Core Performance States";
  v16 = a3->var5 || a3[1].var0;
  v130 = [MEMORY[0x277CCABB0] numberWithInt:v16];
  v148[20] = v130;
  v148[21] = v4;
  v147[21] = @"AOP,AOP Sensors";
  v147[22] = @"AOP,Power";
  v17 = a3->var5 || a3[1].var0;
  v129 = [MEMORY[0x277CCABB0] numberWithInt:v17];
  v148[22] = v129;
  v147[23] = @"AOP,Performance";
  v128 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var0];
  v148[23] = v128;
  v147[24] = @"Multitouch,Multitouch high level stats";
  v127 = [MEMORY[0x277CCABB0] numberWithInt:!a3[2].var4];
  v148[24] = v127;
  v147[25] = @"DCP0,swap";
  v126 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClassIsOneOf:", 302025, 302028, 302026, 302029, 0)}];
  v148[25] = v126;
  v147[26] = @"DCP0,scanout";
  v125 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClassIsOneOf:", 302025, 302028, 302026, 302029, 0)}];
  v148[26] = v125;
  v147[27] = @"DCP,swap";
  v124 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F208], "hasDCP")}];
  v148[27] = v124;
  v147[28] = @"DCP,scanout";
  v123 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F208], "hasDCP")}];
  v148[28] = v123;
  v147[29] = @"DCPEXT0,swap";
  v18 = MEMORY[0x277CCABB0];
  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v19 = a3->var5 || a3[1].var0;
  }

  else
  {
    v19 = 0;
  }

  v122 = [v18 numberWithInt:v19];
  v148[29] = v122;
  v147[30] = @"DCPEXT0,scanout";
  v20 = MEMORY[0x277CCABB0];
  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v21 = a3->var5 || a3[1].var0;
  }

  else
  {
    v21 = 0;
  }

  v121 = [v20 numberWithInt:v21];
  v148[30] = v121;
  v147[31] = @"DCPEXT1,swap";
  v22 = MEMORY[0x277CCABB0];
  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v23 = a3->var5 || a3[1].var0;
  }

  else
  {
    v23 = 0;
  }

  v120 = [v22 numberWithInt:v23];
  v148[31] = v120;
  v147[32] = @"DCPEXT1,scanout";
  v24 = MEMORY[0x277CCABB0];
  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v25 = a3->var5 || a3[1].var0;
  }

  else
  {
    v25 = 0;
  }

  v119 = [v24 numberWithInt:v25];
  v148[32] = v119;
  v147[33] = @"DCPEXT2,swap";
  v26 = MEMORY[0x277CCABB0];
  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v27 = a3->var5 || a3[1].var0;
  }

  else
  {
    v27 = 0;
  }

  v118 = [v26 numberWithInt:v27];
  v148[33] = v118;
  v147[34] = @"DCPEXT2,scanout";
  v28 = MEMORY[0x277CCABB0];
  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v29 = a3->var5 || a3[1].var0;
  }

  else
  {
    v29 = 0;
  }

  v117 = [v28 numberWithInt:v29];
  v148[34] = v117;
  v147[35] = @"DCPEXT3,swap";
  v30 = MEMORY[0x277CCABB0];
  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v31 = a3->var5 || a3[1].var0;
  }

  else
  {
    v31 = 0;
  }

  v116 = [v30 numberWithInt:v31];
  v148[35] = v116;
  v147[36] = @"DCPEXT3,scanout";
  v32 = MEMORY[0x277CCABB0];
  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v33 = a3->var5 || a3[1].var0;
  }

  else
  {
    v33 = 0;
  }

  v115 = [v32 numberWithInt:v33];
  v148[36] = v115;
  v147[37] = @"PRLUsage,PreCheck";
  if (a3[2].var1)
  {
    v34 = a3->var5 || a3[1].var0;
  }

  else
  {
    v34 = 0;
  }

  v114 = [MEMORY[0x277CCABB0] numberWithInt:v34];
  v148[37] = v114;
  v147[38] = @"PRLUsage,BCheck";
  if (a3[2].var1)
  {
    v35 = a3->var5 || a3[1].var0;
  }

  else
  {
    v35 = 0;
  }

  v113 = [MEMORY[0x277CCABB0] numberWithInt:v35];
  v148[38] = v113;
  v147[39] = @"PRLUsage,ProCheck";
  if (a3[2].var1)
  {
    v36 = a3->var5 || a3[1].var0;
  }

  else
  {
    v36 = 0;
  }

  v112 = [MEMORY[0x277CCABB0] numberWithInt:v36];
  v148[39] = v112;
  v147[40] = @"PRLUsage,AttCheck";
  if (a3[2].var1)
  {
    v37 = a3->var5 || a3[1].var0;
  }

  else
  {
    v37 = 0;
  }

  v111 = [MEMORY[0x277CCABB0] numberWithInt:v37];
  v148[40] = v111;
  v147[41] = @"PRLUsage,JOn";
  if (a3[2].var1)
  {
    v38 = a3->var5 || a3[1].var0;
  }

  else
  {
    v38 = 0;
  }

  v110 = [MEMORY[0x277CCABB0] numberWithInt:v38];
  v148[41] = v110;
  v147[42] = @"PRLUsage,RStandby";
  if (a3[2].var1)
  {
    v39 = a3->var5 || a3[1].var0;
  }

  else
  {
    v39 = 0;
  }

  v109 = [MEMORY[0x277CCABB0] numberWithInt:v39];
  v148[42] = v109;
  v147[43] = @"PPM Stats,CPMS Lanes engagement";
  v108 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var4];
  v148[43] = v108;
  v147[44] = @"PPM Stats,CPMS Ferocity";
  v107 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var4];
  v148[44] = v107;
  v147[45] = @"PPM Stats,CPMS Power Reduction";
  v106 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var4];
  v148[45] = v106;
  v147[46] = @"PPM Stats,Policy CPMS";
  v105 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var4];
  v148[46] = v105;
  v147[47] = @"PPM Stats,Peak Power Pressure";
  v104 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var4];
  v148[47] = v104;
  v147[48] = @"AOP,cma: received";
  v40 = a3->var5 || a3[1].var0;
  v103 = [MEMORY[0x277CCABB0] numberWithInt:v40];
  v148[48] = v103;
  v147[49] = @"AOP,gyro: received";
  v41 = a3->var5 || a3[1].var0;
  v102 = [MEMORY[0x277CCABB0] numberWithInt:v41];
  v148[49] = v102;
  v147[50] = @"AOP,las: received";
  v42 = a3->var5 || a3[1].var0;
  v101 = [MEMORY[0x277CCABB0] numberWithInt:v42];
  v148[50] = v101;
  v147[51] = @"MTP,Power";
  v43 = a3->var5 || a3[1].var0;
  v100 = [MEMORY[0x277CCABB0] numberWithInt:v43];
  v148[51] = v100;
  v147[52] = @"MTP,IOP State";
  v44 = a3->var5 || a3[1].var0;
  v99 = [MEMORY[0x277CCABB0] numberWithInt:v44];
  v148[52] = v99;
  v147[53] = @"PMP,DCS";
  v45 = a3->var5 || a3[1].var0;
  v98 = [MEMORY[0x277CCABB0] numberWithInt:v45];
  v148[53] = v98;
  v147[54] = @"PMP,SOC";
  v46 = a3->var5 || a3[1].var0;
  v97 = [MEMORY[0x277CCABB0] numberWithInt:v46];
  v148[54] = v97;
  v147[55] = @"SIO,Power";
  v47 = a3->var5 || a3[1].var0;
  v96 = [MEMORY[0x277CCABB0] numberWithInt:v47];
  v148[55] = v96;
  v147[56] = @"SIO,IOP State";
  v48 = a3->var5 || a3[1].var0;
  v95 = [MEMORY[0x277CCABB0] numberWithInt:v48];
  v148[56] = v95;
  v147[57] = @"PMP,PMC SOC Floor";
  v49 = a3->var5 || a3[1].var0;
  v94 = [MEMORY[0x277CCABB0] numberWithInt:v49];
  v148[57] = v94;
  v147[58] = @"PMP,PMC DCS Floor";
  v50 = a3->var5 || a3[1].var0;
  v93 = [MEMORY[0x277CCABB0] numberWithInt:v50];
  v148[58] = v93;
  v147[59] = @"Energy Model";
  v92 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var2];
  v148[59] = v92;
  v147[60] = @"IOMFB Reporting,Total native/custom refresh rate";
  v91 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var2];
  v148[60] = v91;
  v147[61] = @"IOMFB Reporting,VBIs between user swaps";
  v90 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var2];
  v148[61] = v90;
  v147[62] = @"IOMFB Reporting,Subframes per swap request";
  v89 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var2];
  v148[62] = v89;
  v147[63] = @"IOMFB Reporting,Subframes per scanout";
  v88 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var2];
  v148[63] = v88;
  v147[64] = @"Core Performance Level";
  v87 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var2];
  v148[64] = v87;
  v147[65] = @"PMP,Energy Counters";
  v86 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var2];
  v148[65] = v86;
  v147[66] = @"PMP,Perf Drivers";
  v148[66] = &unk_282C10C98;
  v147[67] = @"GPU Stats,Idle Time Histogram";
  if (a3[1].var2)
  {
    v51 = a3->var5 || a3[1].var0;
  }

  else
  {
    v51 = 0;
  }

  v85 = [MEMORY[0x277CCABB0] numberWithInt:v51];
  v148[67] = v85;
  v147[68] = @"GPU Stats,Active Time Histogram";
  if (a3[1].var2)
  {
    v52 = a3->var5 || a3[1].var0;
  }

  else
  {
    v52 = 0;
  }

  v84 = [MEMORY[0x277CCABB0] numberWithInt:v52];
  v148[68] = v84;
  v147[69] = @"GPU Stats,GPU Performance States";
  if (a3[1].var2)
  {
    v53 = a3->var5 || a3[1].var0;
  }

  else
  {
    v53 = 0;
  }

  v83 = [MEMORY[0x277CCABB0] numberWithInt:v53];
  v148[69] = v83;
  v147[70] = @"H11ANE,H11ANE Power State";
  if (a3->var4 || a3->var0 || a3->var3)
  {
    v54 = a3->var5 || a3[1].var0;
  }

  else
  {
    v54 = 0;
  }

  v82 = [MEMORY[0x277CCABB0] numberWithInt:v54];
  v148[70] = v82;
  v147[71] = @"H11ANE,H11ANE Events";
  if (a3->var0 || a3->var3)
  {
    v55 = a3->var5 || a3[1].var0;
  }

  else
  {
    v55 = 0;
  }

  v81 = [MEMORY[0x277CCABB0] numberWithInt:v55];
  v148[71] = v81;
  v147[72] = @"GPU Stats,CLTM-induced GPU Performance States";
  if (a3[1].var2)
  {
    v56 = a3->var5 || a3[1].var0;
  }

  else
  {
    v56 = 0;
  }

  v57 = [MEMORY[0x277CCABB0] numberWithInt:v56];
  v148[72] = v57;
  v147[73] = @"GPU Stats,DVD Request States";
  if (a3[1].var2)
  {
    v58 = a3->var5 || a3[1].var0;
  }

  else
  {
    v58 = 0;
  }

  v59 = [MEMORY[0x277CCABB0] numberWithInt:v58];
  v148[73] = v59;
  v147[74] = @"CPU Stats,CPU Events";
  if (a3[1].var2)
  {
    v60 = a3->var5 || a3[1].var0;
  }

  else
  {
    v60 = 0;
  }

  v61 = [MEMORY[0x277CCABB0] numberWithInt:v60];
  v148[74] = v61;
  v147[75] = @"SoC Stats,Voltage Domain Performance States";
  if (a3[1].var2)
  {
    v62 = a3->var5 || a3[1].var0;
  }

  else
  {
    v62 = 0;
  }

  v63 = [MEMORY[0x277CCABB0] numberWithInt:v62];
  v148[75] = v63;
  v147[76] = @"SoC Stats,Device States";
  if (a3[1].var2)
  {
    v64 = a3->var5 || a3[1].var0 || a3[2].var3;
  }

  else
  {
    v64 = 0;
  }

  v65 = [MEMORY[0x277CCABB0] numberWithInt:v64];
  v148[76] = v65;
  v147[77] = @"AMC Stats,Perf Counters";
  v66 = (a3->var0 && a3->var5 || a3[1].var2 && a3[1].var0) && a3[2].var5;
  v67 = [MEMORY[0x277CCABB0] numberWithInt:v66];
  v148[77] = v67;
  v147[78] = @"SoC Stats,Events";
  v68 = a3[1].var2 && (a3->var5 || a3[1].var0) && a3[3].var0;
  v69 = [MEMORY[0x277CCABB0] numberWithInt:v68];
  v148[78] = v69;
  v147[79] = @"AppleEmbeddedPCIE,Link States";
  if (a3[1].var2)
  {
    v70 = a3->var5 || a3[1].var0;
  }

  else
  {
    v70 = 0;
  }

  v71 = [MEMORY[0x277CCABB0] numberWithInt:v70];
  v148[79] = v71;
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:80];

  v73 = objc_opt_new();
  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = __32__PLIOReportAgent_buildBaseSet___block_invoke;
  v145[3] = &unk_27825CDE8;
  v74 = v73;
  v146 = v74;
  [v72 enumerateKeysAndObjectsUsingBlock:v145];
  if (+[PLIOReportAgent shouldLogAtAppSwitchTrigger])
  {
    v75 = [(PLIOReportAgent *)self buildScreenStateSet:a3];
    [v74 minusSet:v75];
  }

  if ([v74 count])
  {
    v76 = v74;
  }

  else
  {
    v76 = 0;
  }

  v77 = v76;

  v78 = *MEMORY[0x277D85DE8];
  return v76;
}

void __32__PLIOReportAgent_buildBaseSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "Base set has following subscription %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)buildHalfHourSet:(IOReportGroupChecks *)a3
{
  v51[18] = *MEMORY[0x277D85DE8];
  v50[0] = @"AOP,MConnectorPower";
  if (a3->var1)
  {
    v4 = a3->var5 || a3[1].var0;
  }

  else
  {
    v4 = 0;
  }

  v47 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v51[0] = v47;
  v50[1] = @"Mesa,Mesa Power State";
  v5 = a3[1].var2 && a3[1].var0;
  v46 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v51[1] = v46;
  v50[2] = @"H6ISP,H6ISP Power State";
  v6 = a3[1].var2 && a3[1].var0;
  v45 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v51[2] = v45;
  v50[3] = @"SoC Stats,H6 PMGR Counters";
  v7 = a3[1].var2 && a3[1].var0;
  v44 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v51[3] = v44;
  v50[4] = @"backlight report,playback backlight factors report";
  v8 = a3[1].var2 && a3[1].var0;
  v43 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v51[4] = v43;
  v50[5] = @"CPU Stats,Voltage Domain Performance States";
  v9 = a3[1].var2 && a3[1].var0;
  v42 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v51[5] = v42;
  v50[6] = @"Wifi Chip Connection Activity";
  v10 = a3[1].var2 && a3[1].var0;
  v41 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  v51[6] = v41;
  v50[7] = @"Wifi Chip AWDL Activity";
  v11 = a3[1].var2 && a3[1].var0;
  v40 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v51[7] = v40;
  v50[8] = @"Wifi Chip PM Awake Activity";
  v12 = a3[1].var2 && a3[1].var0;
  v38 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v51[8] = v38;
  v50[9] = @"Wifi Chip Radio Phyical Layer Activity";
  v13 = a3[1].var2 && a3[1].var0;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{v13, v38}];
  v51[9] = v14;
  v50[10] = @"Wifi Chip PCIe Activity";
  v15 = a3[1].var2 && a3[1].var0;
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v51[10] = v16;
  v50[11] = @"Wifi Chip Tx Stat Counters";
  v17 = a3[1].var2 && a3[1].var0;
  v18 = [MEMORY[0x277CCABB0] numberWithInt:v17];
  v51[11] = v18;
  v50[12] = @"Wifi Chip Scan Activity";
  v19 = a3[1].var2 && a3[1].var0;
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v19];
  v51[12] = v20;
  v50[13] = @"Wifi Chip HSIC Activity";
  v21 = a3[1].var2 && a3[1].var0;
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
  v51[13] = v22;
  v50[14] = @"Wifi Chip Rx Chip Error Counters";
  v23 = a3[1].var2 && a3[1].var0;
  v24 = [MEMORY[0x277CCABB0] numberWithInt:v23];
  v51[14] = v24;
  v50[15] = @"Wifi Chip Rx Per Rate Counters";
  v25 = a3[1].var2 && a3[1].var0;
  v26 = [MEMORY[0x277CCABB0] numberWithInt:v25];
  v51[15] = v26;
  v50[16] = @"Wifi Chip Tx Chip Error Counters";
  v27 = a3[1].var2 && a3[1].var0;
  v28 = [MEMORY[0x277CCABB0] numberWithInt:v27];
  v51[16] = v28;
  v50[17] = @"Wifi Chip Rx Stat Counters";
  v29 = a3[1].var2 && a3[1].var0;
  v30 = [MEMORY[0x277CCABB0] numberWithInt:v29];
  v51[17] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:18];

  v32 = objc_opt_new();
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __36__PLIOReportAgent_buildHalfHourSet___block_invoke;
  v48[3] = &unk_27825CDE8;
  v49 = v32;
  v33 = v32;
  [v31 enumerateKeysAndObjectsUsingBlock:v48];
  if ([v33 count])
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

void __36__PLIOReportAgent_buildHalfHourSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "Half set has following subscription %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)buildDailySet:(IOReportGroupChecks *)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = @"CPU Stats,DVD Stats";
  v4 = a3[1].var2 && a3[1].var0;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v20[1] = @"CPU Stats,Active Time Histogram";
  v21[0] = v5;
  v6 = a3[1].var2 && a3[1].var0;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v21[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v9 = objc_opt_new();
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __33__PLIOReportAgent_buildDailySet___block_invoke;
  v18 = &unk_27825CDE8;
  v19 = v9;
  v10 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:&v15];
  if ([v10 count])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

void __33__PLIOReportAgent_buildDailySet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "Daily set has following subscription %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)buildAudioEventSet:(IOReportGroupChecks *)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = @"Speaker,SpeakerEvents";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var5];
  v17[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v5 = objc_opt_new();
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __38__PLIOReportAgent_buildAudioEventSet___block_invoke;
  v14 = &unk_27825CDE8;
  v15 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v11];
  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

void __38__PLIOReportAgent_buildAudioEventSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)buildScreenStateSet:(IOReportGroupChecks *)a3
{
  v59[27] = *MEMORY[0x277D85DE8];
  v58[0] = @"IOMFB Reporting,Subframes per swap request";
  v55 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[0] = v55;
  v58[1] = @"IOMFB Reporting,Subframes per scanout";
  v54 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[1] = v54;
  v58[2] = @"Energy Model";
  v4 = a3[1].var2 && a3[1].var3;
  v53 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v59[2] = v53;
  v58[3] = @"PMP,Energy Counters";
  v52 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[3] = v52;
  v58[4] = @"IOMFB Reporting,frame rate phase";
  v51 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[4] = v51;
  v58[5] = @"SoC Stats,Device States";
  v5 = a3[2].var3 && a3[1].var3;
  v50 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v59[5] = v50;
  v58[6] = @"CPU Stats,CPU Complex Voltage State Time";
  v49 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[6] = v49;
  v58[7] = @"PMP,DRAM BW";
  v48 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[7] = v48;
  v58[8] = @"PMP,DRAM State";
  v47 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[8] = v47;
  v58[9] = @"PMP,Fabric BW";
  v46 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[9] = v46;
  v58[10] = @"ANS2,PCIE0";
  v45 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[10] = v45;
  v58[11] = @"CPU Stats,CPU Complex Performance States";
  v6 = a3[1].var2 && a3[1].var3;
  v44 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v59[11] = v44;
  v58[12] = @"CPU Stats,CPU Core Performance States";
  v7 = a3[1].var2 && a3[1].var3;
  v43 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v59[12] = v43;
  v58[13] = @"AMC Stats,Perf Counters";
  v8 = a3[1].var3 && a3[2].var5;
  v42 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v59[13] = v42;
  v58[14] = @"GPU Stats,GPU Performance States";
  v41 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[14] = v41;
  v58[15] = @"PMP,DCS";
  v40 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[15] = v40;
  v58[16] = @"PMP,PMC SOC Floor";
  v39 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[16] = v39;
  v58[17] = @"PMP,PMC DCS Floor";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:a3[1].var3];
  v59[17] = v38;
  v58[18] = @"DCP,swap";
  v9 = MEMORY[0x277CCABB0];
  if (a3[1].var3)
  {
    v10 = [MEMORY[0x277D3F208] hasDCP];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 numberWithInt:v10];
  v59[18] = v11;
  v58[19] = @"DCP,scanout";
  v12 = MEMORY[0x277CCABB0];
  if (a3[1].var3)
  {
    v13 = [MEMORY[0x277D3F208] hasDCP];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v12 numberWithInt:v13];
  v59[19] = v14;
  v58[20] = @"DCP0,swap";
  v15 = MEMORY[0x277CCABB0];
  if (a3[1].var3)
  {
    v16 = [MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{302025, 302028, 302026, 302029, 0}];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v15 numberWithInt:v16];
  v59[20] = v17;
  v58[21] = @"DCP0,scanout";
  v18 = MEMORY[0x277CCABB0];
  if (a3[1].var3)
  {
    v19 = [MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{302025, 302028, 302026, 302029, 0}];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v18 numberWithInt:v19];
  v59[21] = v20;
  v58[22] = @"DCP,scanout stats";
  v21 = MEMORY[0x277CCABB0];
  v22 = a3[1].var3 && +[PLIOReportAgent shouldLogDCPScanoutStats];
  v23 = [v21 numberWithInt:v22];
  v59[22] = v23;
  v58[23] = @"CPU Stats,CPU Complex Thermal/UPO Limiting";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:a3[2].var0];
  v59[23] = v24;
  v58[24] = @"SoC Stats,Events";
  v25 = a3[1].var2 && a3[1].var3 && a3[3].var0;
  v26 = [MEMORY[0x277CCABB0] numberWithInt:v25];
  v59[24] = v26;
  v58[25] = @"AppleEmbeddedPCIE,Link States";
  v27 = a3[1].var2 && a3[1].var3;
  v28 = [MEMORY[0x277CCABB0] numberWithInt:v27];
  v59[25] = v28;
  v58[26] = @"Core Performance Level";
  v29 = a3[1].var2 && a3[1].var3;
  v30 = [MEMORY[0x277CCABB0] numberWithInt:v29];
  v59[26] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:27];

  v32 = objc_opt_new();
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __39__PLIOReportAgent_buildScreenStateSet___block_invoke;
  v56[3] = &unk_27825CDE8;
  v57 = v32;
  v33 = v32;
  [v31 enumerateKeysAndObjectsUsingBlock:v56];
  if ([v33 count])
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

void __39__PLIOReportAgent_buildScreenStateSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "ScreenState set has following subscription %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)buildDisplayStateChangeSet:(IOReportGroupChecks *)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v20[0] = @"AOP,Prox";
    v4 = a3->var5 || a3[1].var0;
    v6 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v20[1] = @"Multitouch,Multitouch high level stats";
    v21[0] = v6;
    v7 = a3->var5 || a3[1].var0;
    v8 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v21[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v10 = objc_opt_new();
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __46__PLIOReportAgent_buildDisplayStateChangeSet___block_invoke;
    v18 = &unk_27825CDE8;
    v19 = v10;
    v11 = v10;
    [v9 enumerateKeysAndObjectsUsingBlock:&v15];
    if ([v11 count])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v5 = v12;
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

void __46__PLIOReportAgent_buildDisplayStateChangeSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "Display TriState set has following subscription %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)buildWakeSet:(IOReportGroupChecks *)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = @"SoC Stats,Events";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a3[2].var2];
  v17[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v5 = objc_opt_new();
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __32__PLIOReportAgent_buildWakeSet___block_invoke;
  v14 = &unk_27825CDE8;
  v15 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v11];
  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

void __32__PLIOReportAgent_buildWakeSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)buildSnapshotSet:(IOReportGroupChecks *)a3
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"AOP,HSCDTD602A_Cmps";
  v18[1] = @"AOP,HSCDTD602A_Jarv";
  v19[0] = MEMORY[0x277CBEC38];
  v19[1] = MEMORY[0x277CBEC38];
  v19[2] = MEMORY[0x277CBEC38];
  v18[2] = @"SoC Stats,Events";
  v18[3] = @"SoC Stats,oprtp";
  v3 = MEMORY[0x277CCABB0];
  if (a3->var0 || a3->var4)
  {
    v4 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277D3F208] isARMMac];
  }

  v5 = [v3 numberWithInt:v4];
  v19[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v7 = objc_opt_new();
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __36__PLIOReportAgent_buildSnapshotSet___block_invoke;
  v16 = &unk_27825CDE8;
  v17 = v7;
  v8 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:&v13];
  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

void __36__PLIOReportAgent_buildSnapshotSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReport();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "Snapshot set has following subscription %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldLogAtAppSwitchTrigger
{
  if (qword_2811F47C8 != -1)
  {
    dispatch_once(&qword_2811F47C8, &__block_literal_global_8692);
  }

  return byte_2811F4761;
}

void __46__PLIOReportAgent_shouldLogAtAppSwitchTrigger__block_invoke()
{
  byte_2811F4761 = [MEMORY[0x277D3F180] BOOLForKey:@"enable_AppSwitchTrigger" ifNotSet:0];
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v0 = MEMORY[0x277D3F1A0];
    v1 = [MEMORY[0x277D3F188] className];
    byte_2811F4761 = [v0 isEntryKeySetup:@"PLEnhancedTaskingAgent_EventNone_AppSwitchTrigger" forOperatorName:v1];
  }
}

+ (BOOL)shouldLogAmcStatsPerfCounters
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PLIOReportAgent_shouldLogAmcStatsPerfCounters__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_2811F47D0 != -1)
  {
    dispatch_once(&qword_2811F47D0, block);
  }

  return byte_2811F4762;
}

void __48__PLIOReportAgent_shouldLogAmcStatsPerfCounters__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v2 = MEMORY[0x277D3F1A0];
    v3 = [*(a1 + 32) className];
    byte_2811F4762 = [v2 isEntryKeySetup:@"PLIOReportAgent_EventBackward_AMCStatsPerfCounters" forOperatorName:v3];
  }
}

+ (BOOL)shouldLogSocStatsEvents
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PLIOReportAgent_shouldLogSocStatsEvents__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_2811F47D8 != -1)
  {
    dispatch_once(&qword_2811F47D8, block);
  }

  return byte_2811F4763;
}

void __42__PLIOReportAgent_shouldLogSocStatsEvents__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v2 = MEMORY[0x277D3F1A0];
    v3 = [*(a1 + 32) className];
    byte_2811F4763 = [v2 isEntryKeySetup:@"PLIOReportAgent_EventBackward_SoCStatsEvents" forOperatorName:v3];
  }
}

+ (BOOL)shouldLogSocStatsPmgrCounters
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PLIOReportAgent_shouldLogSocStatsPmgrCounters__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_2811F47E0 != -1)
  {
    dispatch_once(&qword_2811F47E0, block);
  }

  return byte_2811F4764;
}

void __48__PLIOReportAgent_shouldLogSocStatsPmgrCounters__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v2 = MEMORY[0x277D3F1A0];
    v3 = [*(a1 + 32) className];
    byte_2811F4764 = [v2 isEntryKeySetup:@"PLIOReportAgent_EventBackward_SoCStatsPMGRCountersID" forOperatorName:v3];
  }
}

- (BOOL)processNotificationForChannelGroup:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([MEMORY[0x277D3F180] debugEnabled] & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__PLIOReportAgent_processNotificationForChannelGroup___block_invoke;
    block[3] = &unk_27825B7C8;
    v23 = @"PLDebugService_Enabled";
    v24 = 0;
    if (qword_2811F47E8 != -1)
    {
      dispatch_once(&qword_2811F47E8, block);
    }

    v4 = byte_2811F4765;

    if ((v4 & 1) == 0)
    {
      if (v3)
      {
        v8 = [v3 objectForKey:@"lastNotificationDate"];

        if (!v8)
        {
          goto LABEL_10;
        }

        v9 = [v3 objectForKey:@"lastNotificationDate"];
        [v9 timeIntervalSinceNow];
        v11 = v10;
        v12 = [v3 objectForKey:@"minNotificationProcessTime"];
        v13 = [v12 intValue];

        if (v11 < v13)
        {
LABEL_10:
          v14 = [MEMORY[0x277CBEAA8] monotonicDate];
          [v3 setValue:v14 forKey:@"lastNotificationDate"];
          v5 = 1;
LABEL_11:

          goto LABEL_6;
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v15 = objc_opt_class();
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __54__PLIOReportAgent_processNotificationForChannelGroup___block_invoke_2;
          v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v21[4] = v15;
          if (qword_2811F47F0 != -1)
          {
            dispatch_once(&qword_2811F47F0, v21);
          }

          if (byte_2811F4766 == 1)
          {
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"did not log due to process notification time limit"];
            v16 = MEMORY[0x277D3F178];
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
            v18 = [v17 lastPathComponent];
            v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent processNotificationForChannelGroup:]"];
            [v16 logMessage:v14 fromFile:v18 fromFunction:v19 fromLineNumber:8916];

            v20 = PLLogCommon();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v26 = v14;
              _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v5 = 0;
            goto LABEL_11;
          }
        }
      }

      v5 = 0;
      goto LABEL_6;
    }
  }

  v5 = 1;
LABEL_6:

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __54__PLIOReportAgent_processNotificationForChannelGroup___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  byte_2811F4765 = result;
  return result;
}

uint64_t __54__PLIOReportAgent_processNotificationForChannelGroup___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4766 = result;
  return result;
}

- (void)initOperatorDependancies
{
  if (+[PLIOReportAgent shouldLogMemCacheStats])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sampledBundleIDs = self->_sampledBundleIDs;
    self->_sampledBundleIDs = v3;

    self->_collectionEnabled = 0;
    lastSampleDate = self->_lastSampleDate;
    self->_lastSampleDate = 0;
  }

  if (+[PLIOReportAgent shouldLogMTRAging])
  {
    v6 = [objc_alloc(MEMORY[0x277D3F1C8]) initWithOperator:self forService:@"ApplePMGR"];
    iokitAging = self->_iokitAging;
    self->_iokitAging = v6;
  }

  [(PLIOReportAgent *)self subscribeToChannelSets];
  [(PLIOReportAgent *)self sampleDeltaForChannelSets];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke;
  v41[3] = &unk_2782597E8;
  v41[4] = self;
  v8 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v41];
  [(PLIOReportAgent *)self setBatteryLevelChangedNotifications:v8];

  if (+[PLIOReportAgent shouldLogAudioEvent])
  {
    v9 = objc_alloc(MEMORY[0x277D3F1C8]);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8732;
    v40[3] = &unk_27825CE10;
    v40[4] = self;
    v10 = [v9 initWithOperator:self forService:@"AppleEmbeddedAudio" withBlock:v40];
    iokitAudio = self->_iokitAudio;
    self->_iokitAudio = v10;
  }

  if ([MEMORY[0x277D3F180] taskMode])
  {
    v12 = objc_alloc(MEMORY[0x277D3F1F0]);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8741;
    v39[3] = &unk_2782597E8;
    v39[4] = self;
    v13 = [v12 initWithOperator:self forNotification:@"com.apple.powerlog.EnhancedScreenState" withBlock:v39];
    enhancedScreenStateChangeListener = self->_enhancedScreenStateChangeListener;
    self->_enhancedScreenStateChangeListener = v13;
  }

  v15 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
  v16 = objc_alloc(MEMORY[0x277D3F1A8]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8743;
  v38[3] = &unk_2782597E8;
  v38[4] = self;
  v17 = [v16 initWithOperator:self forEntryKey:v15 withBlock:v38];
  [(PLIOReportAgent *)self setScreenstateChangedNotifications:v17];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_2_8744;
  v37[3] = &unk_2782597E8;
  v37[4] = self;
  v18 = [MEMORY[0x277D3F1A8] displayOffNotificationWithOperator:self withBlock:v37];
  [(PLIOReportAgent *)self setDisplayOffNotification:v18];

  if ([MEMORY[0x277D3F180] taskMode])
  {
    v19 = [MEMORY[0x277D3F220] sharedInstance];
    [(PLIOReportAgent *)self setStateTracker:v19];

    v20 = [(PLIOReportAgent *)self stateTracker];
    [v20 registerForStates:8 withOperator:self withBlock:&__block_literal_global_8747];

    if ([MEMORY[0x277D3F208] hasAOD])
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_4;
      v36[3] = &unk_2782597E8;
      v36[4] = self;
      v21 = [MEMORY[0x277D3F1A8] displayOffOrAODNotificationWithOperator:self withBlock:v36];
    }

    else
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8748;
      v35[3] = &unk_2782597E8;
      v35[4] = self;
      v21 = [MEMORY[0x277D3F1A8] displayOffNotificationWithOperator:self withBlock:v35];
    }

    v22 = v21;
    [(PLIOReportAgent *)self setDisplayOffNotification:v21];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8749;
    v34[3] = &unk_2782597E8;
    v34[4] = self;
    v23 = [MEMORY[0x277D3F1A8] displayOnNotificationWithOperator:self withBlock:v34];
    [(PLIOReportAgent *)self setDisplayOnNotification:v23];
  }

  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8750;
    v33[3] = &unk_2782597E8;
    v33[4] = self;
    v24 = [MEMORY[0x277D3F1A8] displayStateChangeNotificationWithOperator:self withBlock:v33];
    [(PLIOReportAgent *)self setDisplayStateChangeNotification:v24];
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8751;
  v32[3] = &unk_2782597E8;
  v32[4] = self;
  v25 = [MEMORY[0x277D3F1A8] wakeEntryNotificationWithOperator:self withBlock:v32];
  [(PLIOReportAgent *)self setWakeNotification:v25];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_2_8752;
  v31[3] = &unk_2782597E8;
  v31[4] = self;
  v26 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v31];
  [(PLIOReportAgent *)self setSleepNotification:v26];

  v27 = objc_alloc(MEMORY[0x277D3F1F0]);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_3_8756;
  v30[3] = &unk_2782597E8;
  v30[4] = self;
  v28 = [v27 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v30];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v28;
}

void __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8732(uint64_t a1, uint64_t a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __43__PLIOReportAgent_initOperatorDependancies__block_invoke_2;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v6;
    if (qword_2811F47F8 != -1)
    {
      dispatch_once(&qword_2811F47F8, &block);
    }

    if (byte_2811F4767 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Get message from %@\n", @"AppleEmbeddedAudio", block, v15, v16, v17, v18];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent initOperatorDependancies]_block_invoke"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:9012];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (a3 == -469794554)
  {
    [*(a1 + 32) logEventBackwardIOReportAtAudioEvent];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLIOReportAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4767 = result;
  return result;
}

void __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8741(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogIOReport();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification for ScreenState change: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventBackwardIOReportAtScreenStateChange:0];
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8743(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) logEventBackwardMemCacheStatsAtScreenStateChange:a2];
  }

  return result;
}

uint64_t __43__PLIOReportAgent_initOperatorDependancies__block_invoke_2_8744(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) logEventBackwardIOReportAtScreenStateChange:0];
  }

  return result;
}

uint64_t __43__PLIOReportAgent_initOperatorDependancies__block_invoke_4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = PLLogIOReport();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "AOD case: Received Display OFF Notification", v4, 2u);
    }

    return [*(v2 + 32) startDisplayOffPeriodicTimer];
  }

  return result;
}

uint64_t __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8748(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = PLLogIOReport();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Non-AOD case: Received Display OFF Notification", v4, 2u);
    }

    return [*(v2 + 32) startDisplayOffPeriodicTimer];
  }

  return result;
}

uint64_t __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8749(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = PLLogIOReport();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Received Display ON Notification", v4, 2u);
    }

    return [*(v2 + 32) stopDisplayOffPeriodicTimer];
  }

  return result;
}

uint64_t __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8750(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = PLLogIOReport();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Received Display State Change Notification, logging AOD tables", v4, 2u);
    }

    return [*(v2 + 32) logEventBackwardIOReportAtDisplayStateChange];
  }

  return result;
}

uint64_t __43__PLIOReportAgent_initOperatorDependancies__block_invoke_8751(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) logEventBackwardIOReportAtWake];
  }

  return result;
}

uint64_t __43__PLIOReportAgent_initOperatorDependancies__block_invoke_2_8752(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) logEventBackwardIOReportAtWake];
  }

  return result;
}

void __43__PLIOReportAgent_initOperatorDependancies__block_invoke_3_8756(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogIOReport();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventBackwardIOReport];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initTaskOperatorDependancies
{
  v3 = [[PLIOReportAgentIOReportStats alloc] initWithAgent:self];
  SoCIOReportStats = self->_SoCIOReportStats;
  self->_SoCIOReportStats = v3;

  v5 = [(PLIOReportAgent *)self SoCIOReportStats];

  if (v5)
  {
    if ([MEMORY[0x277D3F208] isiOS] && +[PLIOReportAgent shouldLogAtAppSwitchTrigger](PLIOReportAgent, "shouldLogAtAppSwitchTrigger"))
    {
      return;
    }

    if (+[PLIOReportAgent shouldLogSocStatsPmgrCounters])
    {
      v6 = [(PLIOReportAgent *)self SoCIOReportStats];
      [v6 initTaskOperatorDependancies];
    }
  }

  [(PLIOReportAgent *)self logEventForwardSoCStatsOperatingPoints];
}

- (void)startDisplayOffPeriodicTimer
{
  if (!self->_displayOffTimer)
  {
    v3 = MEMORY[0x277D3F1E0];
    v4 = [MEMORY[0x277CBEAA8] monotonicDate];
    v5 = [(PLOperator *)self workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__PLIOReportAgent_startDisplayOffPeriodicTimer__block_invoke;
    v10[3] = &unk_27825B230;
    v10[4] = self;
    v6 = [v3 scheduledTimerWithMonotonicFireDate:v4 withInterval:v5 withQueue:v10 withBlock:180.0];
    displayOffTimer = self->_displayOffTimer;
    self->_displayOffTimer = v6;

    v8 = PLLogIOReport();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Display OFF timer started", v9, 2u);
    }
  }
}

- (void)stopDisplayOffPeriodicTimer
{
  displayOffTimer = self->_displayOffTimer;
  if (displayOffTimer)
  {
    [(PLMonotonicTimer *)displayOffTimer cancel];
    v4 = self->_displayOffTimer;
    self->_displayOffTimer = 0;

    v5 = PLLogIOReport();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Display OFF timer stopped", v6, 2u);
    }
  }
}

- (void)logDisplayOffAPWakeStats
{
  v9 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v3 = [(PLStateTrackingComposition *)self->_stateTracker getCurrState:8];
    v4 = [v3 BOOLValue];
    v5 = PLLogIOReport();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8[0] = 67109120;
      v8[1] = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "logDisplayOffAPWakeStats: AP ON is %d", v8, 8u);
    }

    if (v4)
    {
      v6 = PLLogIOReport();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v8[0]) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Log table entries at display OFF + AP ON occurrence", v8, 2u);
      }

      [(PLIOReportAgent *)self logEventBackwardIOReportAtDisplayOffAPWake];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)sampleSnapshotForChannelGroup:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 objectForKeyedSubscript:@"subscription"];

  v6 = [v3 objectForKeyedSubscript:@"subscribedChannels"];
  v7 = v6;
  Samples = 0;
  if (v3 && v5 && v6)
  {
    v9 = [v3 objectForKey:@"cachedSample"];

    if (v9)
    {
      Samples = [v3 objectForKeyedSubscript:@"cachedSample"];
      if (!IOReportUpdateSamples())
      {
        [v3 removeObjectForKey:@"cachedSample"];
        goto LABEL_9;
      }
    }

    else
    {
      Samples = IOReportCreateSamples();
      if (!Samples)
      {
        goto LABEL_9;
      }
    }

    [v3 setObject:Samples forKeyedSubscript:@"cachedSample"];
  }

LABEL_9:

  objc_autoreleasePoolPop(v4);

  return Samples;
}

- (id)sampleDeltaForChannelGroup:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v5 = [v3 objectForKey:@"currentSample"];
    [v3 setValue:v5 forKey:@"lastSample"];

    v6 = [v3 objectForKey:@"currentSampleDate"];
    [v3 setValue:v6 forKey:@"lastSampleDate"];

    v7 = [v3 objectForKey:@"currentSampleAPWakeTime"];
    [v3 setValue:v7 forKey:@"lastSampleAPWakeTime"];

    [v3 objectForKey:@"subscription"];
    [v3 objectForKey:@"subscribedChannels"];
    Samples = IOReportCreateSamples();
    v9 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v3 setValue:v9 forKey:@"currentSampleDate"];

    [v3 setValue:Samples forKey:@"currentSample"];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    [v3 setValue:v10 forKey:@"currentSampleAPWakeTime"];

    v11 = [v3 objectForKey:@"lastSample"];

    if (v11)
    {
      [v3 objectForKey:@"lastSample"];
      [v3 objectForKey:@"currentSample"];
      SamplesDelta = IOReportCreateSamplesDelta();
      [v3 removeObjectForKey:@"lastSample"];
      goto LABEL_7;
    }

    v13 = [v3 objectForKey:@"currentSample"];
  }

  else
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
  }

  SamplesDelta = v13;
LABEL_7:
  objc_autoreleasePoolPop(v4);

  return SamplesDelta;
}

- (void)logStateResidency:(id)a3 withKey:(id)a4 withEntryDate:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = v9;
  v14 = v10;
  v15 = v12;
  IOReportIterate();
  if ([v15 count])
  {
    v18 = v13;
    v19[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];
  }

  objc_autoreleasePoolPop(v11);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __59__PLIOReportAgent_logStateResidency_withKey_withEntryDate___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = IOReportChannelGetChannelName();
  v3 = [*(a1 + 32) getChannelId:v2];
  Count = IOReportStateGetCount();
  v5 = PLLogIOReport();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v15 = v2;
    v16 = 1024;
    v17 = Count;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Logging IOReport Core Performance Level Residency channel %@ with %d states", buf, 0x12u);
  }

  v13 = v2;

  if (Count >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withDate:*(a1 + 48)];
      v8 = [MEMORY[0x277CCABB0] numberWithInt:v3];
      [v7 setObject:v8 forKeyedSubscript:@"Channel"];

      v9 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      [v7 setObject:v9 forKeyedSubscript:@"State"];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetResidency()];
      [v7 setObject:v10 forKeyedSubscript:@"Residency"];

      [*(a1 + 56) addObject:v7];
      v6 = (v6 + 1);
    }

    while (Count != v6);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)addReportingGroup:(id)a3 toEntry:(id)a4
{
  v5 = a4;
  v4 = v5;
  IOReportIterate();
}

- (int)addReportSample:(__CFDictionary *)a3 toEntry:(id)a4
{
  v4 = a4;
  v5 = objc_autoreleasePoolPush();
  v6 = IOReportChannelGetGroup();
  v7 = IOReportChannelGetSubGroup();
  v8 = IOReportChannelGetChannelName();
  if ([v6 isEqualToString:@"Energy Model"] && objc_msgSend(v8, "containsString:", @"ECPUDTL"))
  {
    v9 = @"ECPUDTL";
    v10 = @"CPUDTL";
  }

  else
  {
    if (![v6 isEqualToString:@"AppleEmbeddedPCIE"] || !objc_msgSend(v7, "isEqualToString:", @"Link States"))
    {
      goto LABEL_8;
    }

    v9 = @"PCIe Port ";
    v10 = @"Port ";
  }

  v11 = [v8 stringByReplacingOccurrencesOfString:v9 withString:v10];

  v8 = v11;
LABEL_8:
  if (IOReportChannelGetUnit())
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", IOReportChannelGetUnitLabel()];
  }

  else
  {
    v12 = &stru_282B650A0;
  }

  Format = IOReportChannelGetFormat();
  v84 = v4;
  context = v5;
  v78 = v12;
  v79 = v7;
  switch(Format)
  {
    case 3:
      v77 = v8;
      if ([v8 isEqualToString:@"IOMFBUSR"])
      {
        v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (IOReportHistogramGetBucketCount() >= 1)
        {
          v19 = 0;
          do
          {
            IOReportHistogramGetBucketBounds();
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportHistogramGetBucketHits()];
            [v18 addObject:v20];

            ++v19;
          }

          while (v19 < IOReportHistogramGetBucketCount());
        }

        [v4 setObject:v18 forKeyedSubscript:@"IOMFBUSR"];
      }

      else
      {
        if (([v8 isEqualToString:@"subframes"] & 1) == 0)
        {
          if (IOReportHistogramGetBucketCount() >= 1)
          {
            v56 = 0;
            do
            {
              IOReportHistogramGetBucketBounds();
              v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportHistogramGetBucketHits()];
              v58 = MEMORY[0x277CCACA8];
              IOReportScaleValue();
              v60 = v59;
              IOReportScaleValue();
              v62 = [v58 stringWithFormat:@"%.1f%@-%.1f%@", v60, @"ms", v61, @"ms"];
              [v4 setObject:v57 forKeyedSubscript:v62];

              ++v56;
            }

            while (v56 < IOReportHistogramGetBucketCount());
          }

          goto LABEL_53;
        }

        v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (IOReportHistogramGetBucketCount() >= 1)
        {
          v34 = 0;
          do
          {
            IOReportHistogramGetBucketBounds();
            v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportHistogramGetBucketHits()];
            [v18 addObject:v35];

            ++v34;
          }

          while (v34 < IOReportHistogramGetBucketCount());
        }

        v36 = [v18 objectAtIndexedSubscript:0];
        [v4 setObject:v36 forKeyedSubscript:@"subframes_0"];

        v37 = [v18 objectAtIndexedSubscript:1];
        [v4 setObject:v37 forKeyedSubscript:@"subframes_1"];

        v38 = [v18 objectAtIndexedSubscript:2];
        [v4 setObject:v38 forKeyedSubscript:@"subframes_2"];

        v39 = [v18 objectAtIndexedSubscript:3];
        [v4 setObject:v39 forKeyedSubscript:@"subframes_3"];

        v40 = [v18 objectAtIndexedSubscript:4];
        [v4 setObject:v40 forKeyedSubscript:@"subframes_4"];

        v41 = [v18 objectAtIndexedSubscript:5];
        [v4 setObject:v41 forKeyedSubscript:@"subframes_5"];

        v42 = [v18 objectAtIndexedSubscript:6];
        [v4 setObject:v42 forKeyedSubscript:@"subframes_6"];

        v43 = [v18 objectAtIndexedSubscript:7];
        [v4 setObject:v43 forKeyedSubscript:@"subframes_7"];

        v44 = [v18 objectAtIndexedSubscript:8];
        [v4 setObject:v44 forKeyedSubscript:@"subframes_8"];

        v45 = [v18 objectAtIndexedSubscript:9];
        [v4 setObject:v45 forKeyedSubscript:@"subframes_9"];

        v46 = [v18 objectAtIndexedSubscript:10];
        [v4 setObject:v46 forKeyedSubscript:@"subframes_10"];
      }

LABEL_53:
      v8 = v77;
      break;
    case 2:
      if (IOReportStateGetCount() == 2)
      {
        v15 = v8;
        v16 = [v4 entryKey];
        if ([v16 containsString:@"CPUStatsCPUEvents"])
        {
          v17 = 1;
        }

        else
        {
          v47 = [v4 entryKey];
          v17 = [v47 isEqualToString:@"SMCPower"];
        }

        if (IOReportStateGetCount() < 1)
        {
LABEL_66:
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetInTransitions()];
          v8 = v15;
          v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_Transitions", v15];
          [v84 setObject:v14 forKeyedSubscript:v54];

          goto LABEL_67;
        }

        v48 = 0;
        while (1)
        {
          v49 = IOReportStateGetNameForIndex();
          if (!v49)
          {
            break;
          }

          v50 = v49;
          if ([v49 caseInsensitiveCompare:@"OFF"])
          {
            goto LABEL_61;
          }

LABEL_65:

          v48 = (v48 + 1);
          if (v48 >= IOReportStateGetCount())
          {
            goto LABEL_66;
          }
        }

        v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v48];
LABEL_61:
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v15, v50];
        v52 = MEMORY[0x277CCABB0];
        if (v17)
        {
          [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetResidency()];
        }

        else
        {
          IOReportStateGetDutyCycle();
          [v52 numberWithDouble:?];
        }
        v53 = ;
        [v84 setObject:v53 forKeyedSubscript:v51];

        goto LABEL_65;
      }

      if ([v6 isEqualToString:@"Multitouch"] && (objc_msgSend(v8, "isEqualToString:", @"High Level") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"3DTouch") && (objc_msgSend(v8, "isEqualToString:", @"force_POWER_STATES") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"Bluetooth") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"NVMe") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"Display") & 1) != 0)
      {
        v21 = 1;
      }

      else
      {
        v68 = [v4 entryKey];
        if ([v68 containsString:@"AOPgyropower"])
        {
          v21 = 1;
        }

        else
        {
          v71 = [v4 entryKey];
          if ([v71 containsString:@"AOPcompasspower"])
          {
            v21 = 1;
          }

          else
          {
            v72 = v8;
            v73 = [v4 entryKey];
            if ([v73 containsString:@"AOPpressurepower"])
            {
              v21 = 1;
            }

            else
            {
              v74 = [v4 entryKey];
              if ([v74 containsString:@"AOPaccelpower"])
              {
                v75 = 1;
              }

              else
              {
                v76 = [v4 entryKey];
                v75 = [v76 containsString:@"AOPMConnectorPower"];

                v4 = v84;
              }

              v21 = v75;
            }

            v8 = v72;
          }
        }
      }

      v22 = [v4 entryKey];
      if (([v22 containsString:@"PPMStatsCPMSLanesengagement"] & 1) == 0)
      {
        v23 = [v4 entryKey];
        if (![v23 containsString:@"PPMStatsCPMSFerocity"])
        {
          v63 = v8;
          v64 = [v4 entryKey];
          if (![v64 containsString:@"PPMStatsCPMSPowerReduction"])
          {
            v82 = v21;
            v65 = [v4 entryKey];
            v66 = v4;
            v67 = [v65 containsString:@"SDXCController"];

            if (v67)
            {
              v83 = 1;
              v8 = v63;
              v21 = v82;
            }

            else
            {
              v69 = [v66 entryKey];
              v70 = [v69 containsString:@"AOPProx"];

              v8 = v63;
              v21 = v82;
              if ((v70 & 1) == 0)
              {
                v22 = [v66 entryKey];
                v83 = [v22 containsString:@"MTPbuttoncapture"];
                goto LABEL_35;
              }

              v83 = 1;
            }

LABEL_36:
            if (IOReportStateGetCount() >= 1)
            {
              v24 = 0;
              v81 = v83 | v21;
              do
              {
                v25 = IOReportStateGetNameForIndex();
                if (!v25)
                {
                  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v24];
                }

                v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v8, v25];
                v27 = MEMORY[0x277CCABB0];
                if (v81)
                {
                  [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetResidency()];
                }

                else
                {
                  IOReportStateGetDutyCycle();
                  [v27 numberWithDouble:?];
                }
                v28 = ;
                [v84 setObject:v28 forKeyedSubscript:v26];

                v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetInTransitions()];
                v30 = v8;
                v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_Transitions", v8, v25];
                [v84 setObject:v29 forKeyedSubscript:v31];

                if (v83)
                {
                  IOReportStateGetResidency();
                  v32 = MEMORY[0x277CCABB0];
                  IOReportScaleValue();
                  v33 = [v32 numberWithDouble:?];
                  [v84 setObject:v33 forKeyedSubscript:v26];
                }

                v24 = (v24 + 1);
                v8 = v30;
              }

              while (v24 < IOReportStateGetCount());
            }

            break;
          }

          v83 = 1;
          v8 = v63;
LABEL_35:

          goto LABEL_36;
        }
      }

      v83 = 1;
      goto LABEL_35;
    case 1:
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
      [v4 setObject:v14 forKeyedSubscript:v8];
LABEL_67:

      break;
  }

  objc_autoreleasePoolPop(context);
  return 0;
}

- (id)entryForReportingGroup:(id)a3 withKey:(id)a4 withChannelGroup:(id)a5 withEntryDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x277D3F190];
  v14 = a6;
  v15 = [[v13 alloc] initWithEntryKey:v11 withDate:v14];

  v16 = MEMORY[0x277CCABB0];
  v17 = [v12 objectForKey:@"currentSampleDate"];
  v18 = [v12 objectForKey:@"lastSampleDate"];
  [v17 timeIntervalSinceDate:v18];
  v19 = [v16 numberWithDouble:?];
  [v15 setObject:v19 forKeyedSubscript:@"SampleTime"];

  if (qword_2811F4800 != -1)
  {
    dispatch_once(&qword_2811F4800, &__block_literal_global_8842);
  }

  if ([qword_2811F4808 containsObject:v11])
  {
    v20 = [v12 objectForKey:@"currentSampleAPWakeTime"];
    v21 = [v20 unsignedLongLongValue];

    v22 = [v12 objectForKey:@"lastSampleAPWakeTime"];
    v23 = [v22 unsignedLongLongValue];

    v24 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:v21];
    v26 = v25;
    [MEMORY[0x277D3F258] secondsFromMachTime:v23];
    v28 = [v24 numberWithDouble:v26 - v27];
    [v15 setObject:v28 forKeyedSubscript:@"APWakeTime"];
  }

  [(PLIOReportAgent *)self addReportingGroup:v10 toEntry:v15];

  return v15;
}

void __81__PLIOReportAgent_entryForReportingGroup_withKey_withChannelGroup_withEntryDate___block_invoke()
{
  v0 = qword_2811F4808;
  qword_2811F4808 = &unk_282C141C0;
}

- (void)log
{
  [(PLIOReportAgent *)self logEventBackwardIOReport];
  [(PLIOReportAgent *)self logEventBackwardIOReportAtScreenStateChange:0];
  if (+[PLIOReportAgent shouldLogAudioEvent])
  {
    [(PLIOReportAgent *)self logEventBackwardIOReportAtAudioEvent];
  }

  if (+[PLIOReportAgent shouldLogMTRAging])
  {
    [(PLIOReportAgent *)self logEventBackwardMTRAging];
  }

  if (+[PLIOReportAgent shouldLogMemCacheStats])
  {
    [(PLIOReportAgent *)self logEventForwardMemCacheLabels];
  }

  [(PLIOReportAgent *)self logEventPointIOReport];

  [(PLIOReportAgent *)self logEventForwardSoCStatsOperatingPoints];
}

- (BOOL)allowlistedChannelID:(unint64_t)a3
{
  if (qword_2811F4818 != -1)
  {
    dispatch_once(&qword_2811F4818, &__block_literal_global_8857);
  }

  v4 = qword_2811F4810;
  if (!qword_2811F4810)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v6 = [v4 objectForKey:v5];
  v7 = v6 != 0;

  return v7;
}

void __40__PLIOReportAgent_allowlistedChannelID___block_invoke()
{
  v16[11] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] == 1001013)
  {
    v15[0] = &unk_282C10CB0;
    v15[1] = &unk_282C10CC8;
    v16[0] = @"ANE_SYS";
    v16[1] = @"APCIE";
    v15[2] = &unk_282C10CE0;
    v15[3] = &unk_282C10CF8;
    v16[2] = @"AUDIO";
    v16[3] = @"AVD_SYS";
    v15[4] = &unk_282C10D10;
    v15[5] = &unk_282C10D28;
    v16[4] = @"ISP-SOC-VNOM";
    v16[5] = @"PMGR-SOC-VMAX";
    v15[6] = &unk_282C10D40;
    v15[7] = &unk_282C10D58;
    v16[6] = @"PMGR-DCS-VMAX";
    v16[7] = @"VENC_SYS";
    v15[8] = &unk_282C10D70;
    v15[9] = &unk_282C10D88;
    v16[8] = @"VENC-SOC-VMAX";
    v16[9] = @"AVD-SOC-VNOM";
    v15[10] = &unk_282C10DA0;
    v16[10] = @"VENC-SOC-VNOM";
    v0 = MEMORY[0x277CBEAC0];
    v1 = v16;
    v2 = v15;
    v3 = 11;
    goto LABEL_8;
  }

  if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] == 1001014)
  {
    v13[0] = &unk_282C10DB8;
    v13[1] = &unk_282C10DD0;
    v14[0] = @"ANE_SYS";
    v14[1] = @"APCIE";
    v13[2] = &unk_282C10DE8;
    v13[3] = &unk_282C10E00;
    v14[2] = @"AUDIO_P";
    v14[3] = @"AVD_SYS";
    v13[4] = &unk_282C10E18;
    v13[5] = &unk_282C10E30;
    v14[4] = @"ISP-SOC-VNOM";
    v14[5] = @"VENC_SYS";
    v13[6] = &unk_282C10E48;
    v13[7] = &unk_282C10E60;
    v14[6] = @"AVD-SOC-VNOM";
    v14[7] = @"C0_USBCTL";
    v0 = MEMORY[0x277CBEAC0];
    v1 = v14;
    v2 = v13;
LABEL_7:
    v3 = 8;
    goto LABEL_8;
  }

  if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] == 1001016)
  {
    v11[0] = &unk_282C10E78;
    v11[1] = &unk_282C10E90;
    v12[0] = @"ANE_SYS";
    v12[1] = @"APCIE";
    v11[2] = &unk_282C10EA8;
    v11[3] = &unk_282C10E30;
    v12[2] = @"AUDIO_P";
    v12[3] = @"AVD_SYS";
    v11[4] = &unk_282C10EC0;
    v11[5] = &unk_282C10ED8;
    v12[4] = @"ISP-SOC-VNOM";
    v12[5] = @"VENC_SYS";
    v11[6] = &unk_282C10EF0;
    v11[7] = &unk_282C10F08;
    v12[6] = @"AVD-SOC-VNOM";
    v12[7] = @"C0_USBCTL";
    v0 = MEMORY[0x277CBEAC0];
    v1 = v12;
    v2 = v11;
    goto LABEL_7;
  }

  if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] == 1001017)
  {
    v9[0] = &unk_282C10F20;
    v9[1] = &unk_282C10F38;
    v10[0] = @"ANE-SYS-V";
    v10[1] = @"AVD-SYS-V";
    v9[2] = &unk_282C10F50;
    v9[3] = &unk_282C10F68;
    v10[2] = @"AVD-SOC-VNOM";
    v10[3] = @"AVD-SOC-VMAX";
    v9[4] = &unk_282C10F80;
    v9[5] = &unk_282C10F98;
    v10[4] = @"CLPC-SOC-VNOM";
    v10[5] = @"CLPC-SOC-VMAX";
    v9[6] = &unk_282C10FB0;
    v9[7] = &unk_282C10FC8;
    v10[6] = @"CLPC-DCS-VNOM";
    v10[7] = @"CLPC-DCS-VMAX";
    v9[8] = &unk_282C10FE0;
    v9[9] = &unk_282C10FF8;
    v10[8] = @"SDEC-SOC-VNOM";
    v10[9] = @"SDEC-SOC-VMAX";
    v9[10] = &unk_282C11010;
    v9[11] = &unk_282C11028;
    v10[10] = @"DP-SOC-VMAX";
    v10[11] = @"DP0_VMAX-V";
    v9[12] = &unk_282C11040;
    v9[13] = &unk_282C11058;
    v10[12] = @"DP1_VMAX-V";
    v10[13] = @"ISP-SOC-VNOM";
    v9[14] = &unk_282C11070;
    v9[15] = &unk_282C11088;
    v10[14] = @"ISP-SOC-VMAX";
    v10[15] = @"JPG-SOC-VNOM";
    v9[16] = &unk_282C110A0;
    v9[17] = &unk_282C110B8;
    v10[16] = @"JPG-SOC-VMAX";
    v10[17] = @"PRORES_VNOM-V";
    v9[18] = &unk_282C110D0;
    v9[19] = &unk_282C110E8;
    v10[18] = @"PRORES_VMAX-V";
    v10[19] = @"SCDC_VNOM-V";
    v9[20] = &unk_282C11100;
    v9[21] = &unk_282C11118;
    v10[20] = @"SCDC_VMAX-V";
    v10[21] = @"VENC-AVE-VMAX";
    v9[22] = &unk_282C11130;
    v10[22] = @"VENC-SYS-V";
    v0 = MEMORY[0x277CBEAC0];
    v1 = v10;
    v2 = v9;
    v3 = 23;
  }

  else
  {
    if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] != 1001018)
    {
      goto LABEL_9;
    }

    v7[0] = &unk_282C11148;
    v7[1] = &unk_282C11160;
    v8[0] = @"ANE_SYS";
    v8[1] = @"APCIE";
    v7[2] = &unk_282C11178;
    v7[3] = &unk_282C11190;
    v8[2] = @"AUDIO_P";
    v8[3] = @"AVD_SYS";
    v7[4] = &unk_282C10E18;
    v7[5] = &unk_282C111A8;
    v8[4] = @"ISP-SOC-VNOM";
    v8[5] = @"VENC_SYS";
    v7[6] = &unk_282C10E48;
    v7[7] = &unk_282C111C0;
    v8[6] = @"AVD-SOC-VNOM";
    v8[7] = @"C0_USBCTL";
    v7[8] = &unk_282C111D8;
    v7[9] = &unk_282C111F0;
    v8[8] = @"AP_TMM_PS";
    v8[9] = @"DISP0_PHY";
    v7[10] = &unk_282C11208;
    v7[11] = &unk_282C11220;
    v8[10] = @"ECPM_NRG";
    v8[11] = @"ECPU0_SRAM";
    v7[12] = &unk_282C11238;
    v7[13] = &unk_282C11250;
    v8[12] = @"ECPU1_SRAM";
    v8[13] = @"ECPU2_SRAM";
    v7[14] = &unk_282C11268;
    v7[15] = &unk_282C11280;
    v8[14] = @"ECPU3_SRAM";
    v8[15] = @"ECPU_SRAM";
    v7[16] = &unk_282C11298;
    v7[17] = &unk_282C112B0;
    v8[16] = @"PCPM_NRG";
    v8[17] = @"PCPU0_SRAM";
    v7[18] = &unk_282C112C8;
    v7[19] = &unk_282C112E0;
    v8[18] = @"PCPU1_SRAM";
    v8[19] = @"PCPU_SRAM";
    v7[20] = &unk_282C112F8;
    v7[21] = &unk_282C11310;
    v8[20] = @"PMS_C1PPT_PS";
    v8[21] = @"SOC_RC_PS";
    v0 = MEMORY[0x277CBEAC0];
    v1 = v8;
    v2 = v7;
    v3 = 22;
  }

LABEL_8:
  v4 = [v0 dictionaryWithObjects:v1 forKeys:v2 count:v3];
  v5 = qword_2811F4810;
  qword_2811F4810 = v4;

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardSoCStatsDeviceStatesChannelID:(id)a3 withChannelGroup:(id)a4 withEntryDate:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"SoCStatsDeviceStatesChannelID"];
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = objc_autoreleasePoolPush();
  v16 = MEMORY[0x277D85DD0];
  v17 = v11;
  v18 = v10;
  v19 = v9;
  v20 = v12;
  IOReportIterate();

  objc_autoreleasePoolPop(v13);
  v21 = v17;
  v22[0] = v20;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:{1, v16, 3221225472, __96__PLIOReportAgent_logEventBackwardSoCStatsDeviceStatesChannelID_withChannelGroup_withEntryDate___block_invoke, &unk_27825CE60, self}];
  [(PLOperator *)self logEntries:v14 withGroupID:v17];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __96__PLIOReportAgent_logEventBackwardSoCStatsDeviceStatesChannelID_withChannelGroup_withEntryDate___block_invoke(uint64_t a1)
{
  ChannelID = IOReportChannelGetChannelID();
  if ([*(a1 + 32) allowlistedChannelID:ChannelID] && IOReportStateGetCount() >= 1)
  {
    v3 = 0;
    do
    {
      v4 = IOReportStateGetNameForIndex();
      if (!v4)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v3];
      }

      if ([v4 caseInsensitiveCompare:@"PWROFF"])
      {
        v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withDate:*(a1 + 48)];
        v6 = MEMORY[0x277CCABB0];
        v7 = [*(a1 + 56) objectForKey:@"currentSampleDate"];
        v8 = [*(a1 + 56) objectForKey:@"lastSampleDate"];
        [v7 timeIntervalSinceDate:v8];
        v9 = [v6 numberWithDouble:?];
        [v5 setObject:v9 forKeyedSubscript:@"SampleTime"];

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ChannelID];
        [v5 setObject:v10 forKeyedSubscript:@"channelID"];

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetResidency()];
        [v5 setObject:v11 forKeyedSubscript:@"value"];

        if ([MEMORY[0x277D3F208] internalBuild])
        {
          v12 = IOReportChannelGetChannelName();
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v12, v4];
          [v5 setObject:v13 forKeyedSubscript:@"channelName"];
        }

        [*(a1 + 64) addObject:v5];
      }

      v3 = (v3 + 1);
    }

    while (v3 < IOReportStateGetCount());
  }

  return 0;
}

- (void)logEventForwardSoCStatsOperatingPoints
{
  v24 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] kPLSoCClassOfDevice] > 1001012 || (objc_msgSend(MEMORY[0x277D3F208], "isHomePod") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isARMMac")) && ((objc_msgSend(MEMORY[0x277D3F258], "deviceRebooted") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode")))
  {
    v3 = [(NSMutableDictionary *)self->_sampleChannelsSnapshot objectForKeyedSubscript:@"cachedSample"];
    if (v3)
    {
      v4 = [MEMORY[0x277CBEAA8] monotonicDate];
      v5 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"SoCStatsoprtp"];
      v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
      v7 = [MEMORY[0x277CBEB18] array];
      v8 = objc_opt_new();
      v19 = MEMORY[0x277D85DD0];
      v9 = v6;
      v10 = v5;
      v11 = v4;
      v12 = v7;
      v13 = v8;
      IOReportIterate();
      v14 = PLLogIOReport();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Log OPRTP entries: %@", buf, 0xCu);
      }

      v20 = v10;
      v21 = v12;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:{1, v19, 3221225472, __57__PLIOReportAgent_logEventForwardSoCStatsOperatingPoints__block_invoke, &unk_27825CE88}];
      [(PLOperator *)self logEntries:v15 withGroupID:v10];

      v16 = [MEMORY[0x277CBEB38] dictionary];
      [v16 setObject:v13 forKeyedSubscript:@"__PPSKVPairs__"];
      v17 = PLLogIOReport();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "Log OPRTP entries in UTF: %@", buf, 0xCu);
      }

      [(PLOperator *)self logForSubsystem:@"IOReportMetrics" category:@"SoCStatsoprtp" data:v16 date:v11];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __57__PLIOReportAgent_logEventForwardSoCStatsOperatingPoints__block_invoke(uint64_t a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = IOReportChannelGetChannelName();
  if ([v2 hasPrefix:*(a1 + 32)])
  {
    v3 = *(a1 + 40);
    v4 = [v2 substringFromIndex:{objc_msgSend(*(a1 + 32), "length")}];
    v5 = [v3 numberFromString:v4];

    if (v5)
    {
      ChannelID = IOReportChannelGetChannelID();
      v7 = IOReportSimpleGetIntegerValue() ^ HIDWORD(ChannelID);
      v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 48) withDate:*(a1 + 56)];
      [v8 setObject:v5 forKeyedSubscript:@"Channel"];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
      [v8 setObject:v9 forKeyedSubscript:@"Value"];

      [*(a1 + 64) addObject:v8];
      v10 = *(a1 + 72);
      v15[1] = @"Value";
      v16[0] = v5;
      v15[0] = @"Channel";
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
      v16[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      [v10 addObject:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)logEventPointIOReport
{
  if ([MEMORY[0x277D3F208] isMac])
  {
    [(PLIOReportAgent *)self logEventPointPMTelemetryFlex];
  }

  v4 = [(PLIOReportAgent *)self sampleChannelsSnapshot];
  v3 = [(PLIOReportAgent *)self sampleSnapshotForChannelGroup:v4];
  [(PLIOReportAgent *)self logSnapshotValues:v3];
}

- (void)logEventPointPMTelemetryFlex
{
  v3 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"pmtelemetry_flex"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  if (qword_2811F4828 != -1)
  {
    dispatch_once(&qword_2811F4828, &__block_literal_global_9133);
  }

  v5 = [qword_2811F4820 getCurrentStats];
  if (v5)
  {
    v6 = v4;
    IOReportIterate();
    [(PLOperator *)self logEntry:v6];
  }
}

uint64_t __47__PLIOReportAgent_logEventPointPMTelemetryFlex__block_invoke()
{
  qword_2811F4820 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithDriverName:@"com_apple_driver_pmtelemetry" withGroup:@"pmtelemetry_flex"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __47__PLIOReportAgent_logEventPointPMTelemetryFlex__block_invoke_2(uint64_t a1)
{
  v2 = IOReportChannelGetChannelName();
  if (([v2 isEqualToString:@"SAGV Average Ratio"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"IA HWP Clipped Bins") & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"IA IccMax Clipped Bins"))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v2];
  }

  return 0;
}

- (void)logEventPointIOReportSaturation:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F208] hasCapability:7])
  {
    if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] >= 1001018 && objc_msgSend(MEMORY[0x277D3F208], "isiOS"))
    {
      v5 = PLLogIOReport();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v6 = "Saturation telemetry not supported";
LABEL_8:
        _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, v6, buf, 2u);
      }
    }

    else
    {
      v5 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SampleSaturation"];
      v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
      IOReportIterate();
      v8 = [(PLOperator *)self storage];
      v9 = [v8 lastEntryForKey:v5];

      if (v9 && ![v9 compare:v7])
      {
        v10 = PLLogIOReport();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_INFO, "Last Sample Saturation entry is same as current", buf, 2u);
        }
      }

      else
      {
        [(PLOperator *)self logEntry:v7];
      }
    }
  }

  else
  {
    v5 = PLLogIOReport();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Accessory Power not supported";
      goto LABEL_8;
    }
  }
}

uint64_t __51__PLIOReportAgent_logEventPointIOReportSaturation___block_invoke(uint64_t a1)
{
  v2 = IOReportChannelGetSubGroup();
  if ([v2 isEqualToString:@"HSCDTD602A_Cmps"])
  {
    v3 = IOReportChannelGetChannelName();
    if ([v3 isEqualToString:@"Sample_Saturati"])
    {
      v4 = @"CmpsSampleSaturationCount";
LABEL_7:
      v5 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([v2 isEqualToString:@"HSCDTD602A_Jarv"])
  {
    v3 = IOReportChannelGetChannelName();
    if ([v3 isEqualToString:@"Sample_Saturati"])
    {
      v4 = @"MagSampleSaturationCount";
      goto LABEL_7;
    }

LABEL_8:
  }

  return 0;
}

- (void)logEventBackwardIOReportAtAudioEvent
{
  if (+[PLIOReportAgent shouldLogAudioEvent])
  {
    v3 = [(PLIOReportAgent *)self sampleChannelsAudioEvent];
    v4 = [(PLIOReportAgent *)self processNotificationForChannelGroup:v3];

    if (v4)
    {
      v7 = [(PLIOReportAgent *)self sampleChannelsAudioEvent];
      v5 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:v7];
      v6 = [(PLIOReportAgent *)self sampleChannelsAudioEvent];
      [(PLIOReportAgent *)self logEventBackwardIOReportWithDelta:v5 forChannelGroup:v6];
    }
  }
}

- (void)logEventBackwardIOReportAtScreenStateChange:(id)a3
{
  v4 = [(PLIOReportAgent *)self sampleChannelsScreenState];
  v5 = [(PLIOReportAgent *)self processNotificationForChannelGroup:v4];

  if (v5)
  {
    v6 = [(PLIOReportAgent *)self sampleChannelsScreenState];
    v7 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:v6];
    v8 = [(PLIOReportAgent *)self sampleChannelsScreenState];
    [(PLIOReportAgent *)self logEventBackwardIOReportWithDelta:v7 forChannelGroup:v8];
  }

  v9 = [(PLIOReportAgent *)self SoCIOReportStats];
  if (v9)
  {
    v11 = v9;
    if ([MEMORY[0x277D3F208] isiOS])
    {
      v10 = +[PLIOReportAgent shouldLogAtAppSwitchTrigger];

      if (!v10 || !+[PLIOReportAgent shouldLogSocStatsPmgrCounters])
      {
        return;
      }

      v11 = [(PLIOReportAgent *)self SoCIOReportStats];
      [v11 logEventBackwardSoCStatsPMGRCounters];
    }

    v9 = v11;
  }
}

- (void)logEventBackwardMemCacheStatsAtScreenStateChange:(id)a3
{
  v4 = a3;
  if (+[PLIOReportAgent shouldLogMemCacheStats])
  {
    [(PLIOReportAgent *)self logEventBackwardMemCacheStats:v4];
  }
}

- (void)logEventBackwardIOReportAtDisplayOffAPWake
{
  v3 = [(PLIOReportAgent *)self sampleChannelsScreenState];
  v4 = [(PLIOReportAgent *)self processNotificationForChannelGroup:v3];

  if (v4)
  {
    v7 = [(PLIOReportAgent *)self sampleChannelsScreenState];
    v5 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:v7];
    v6 = [(PLIOReportAgent *)self sampleChannelsScreenState];
    [(PLIOReportAgent *)self logEventBackwardIOReportWithDelta:v5 forChannelGroup:v6];
  }
}

- (void)logEventBackwardIOReportAtDisplayStateChange
{
  if ([MEMORY[0x277D3F208] hasAOD])
  {
    v3 = [(PLIOReportAgent *)self sampleChannelsDisplayStateChange];
    v4 = [(PLIOReportAgent *)self processNotificationForChannelGroup:v3];

    if (v4)
    {
      v7 = [(PLIOReportAgent *)self sampleChannelsDisplayStateChange];
      v5 = [(PLIOReportAgent *)self sampleDeltaForChannelGroup:v7];
      v6 = [(PLIOReportAgent *)self sampleChannelsDisplayStateChange];
      [(PLIOReportAgent *)self logEventBackwardIOReportWithDelta:v5 forChannelGroup:v6];
    }
  }
}

- (id)entryKeyForEventWithGroupName:(id)a3 withSubGroupName:(id)a4
{
  v5 = a4;
  v6 = [a3 stringByReplacingOccurrencesOfStrings:&unk_282C141D8 withString:&stru_282B650A0];
  if (v5)
  {
    v7 = [v5 stringByReplacingOccurrencesOfStrings:&unk_282C141D8 withString:&stru_282B650A0];
    v8 = *MEMORY[0x277D3F5C8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v6, v7];
    v10 = [(PLOperator *)PLIOReportAgent entryKeyForType:v8 andName:v9];
  }

  else
  {
    v11 = *MEMORY[0x277D3F5C8];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v6];
    v10 = [(PLOperator *)PLIOReportAgent entryKeyForType:v11 andName:v7];
  }

  v12 = [MEMORY[0x277D3F198] definitionForEntryKey:v10];

  if (!v12)
  {

    v10 = 0;
  }

  return v10;
}

- (int)getChannelId:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CPU"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPU"))
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CPM"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPM"))
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PCPU"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PCPM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PCPM1"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PCPU1"])
  {
    v4 = 5;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

uint64_t __60__PLIOReportAgent_logEventBackwardComplexPerformanceStates___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = IOReportChannelGetChannelName();
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CPUStatsCPUComplexPerformanceStatesData"];
  v5 = [*(a1 + 32) getChannelId:v2];
  Count = IOReportStateGetCount();
  v7 = PLLogIOReport();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v19 = v2;
    v20 = 1024;
    v21 = Count;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Logging IOReport Complex Performance States channel %@ with %d states", buf, 0x12u);
  }

  v17 = v2;

  if (Count >= 1)
  {
    v8 = 0;
    do
    {
      if (v5 <= 5)
      {
        v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withDate:v3];
        v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
        [v9 setObject:v10 forKeyedSubscript:@"Channel"];

        v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
        [v9 setObject:v11 forKeyedSubscript:@"State"];

        v12 = MEMORY[0x277CCABB0];
        IOReportStateGetDutyCycle();
        v13 = [v12 numberWithDouble:?];
        [v9 setObject:v13 forKeyedSubscript:@"DutyCycle"];

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetInTransitions()];
        [v9 setObject:v14 forKeyedSubscript:@"Transitions"];

        [*(a1 + 32) logEntry:v9];
      }

      v8 = (v8 + 1);
    }

    while (Count != v8);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)getCoreChannelId:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"ECPU000"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPU001") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPU0") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"CPU0"))
  {
    if ([v3 isEqualToString:@"ECPU001"])
    {
      v4 = 18;
    }

    else
    {
      v4 = 0;
    }
  }

  else if (([v3 isEqualToString:@"ECPU010"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPU011") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPU1") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"CPU1"))
  {
    if ([v3 isEqualToString:@"ECPU011"])
    {
      v4 = 19;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    if (([v3 isEqualToString:@"ECPU020"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPU021") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPU2") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"CPU2"))
    {
      v6 = [v3 isEqualToString:@"ECPU021"] == 0;
      v7 = 2;
      v8 = 20;
    }

    else if (([v3 isEqualToString:@"ECPU030"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPU031") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"ECPU3"))
    {
      v6 = [v3 isEqualToString:@"ECPU031"] == 0;
      v7 = 3;
      v8 = 21;
    }

    else if (([v3 isEqualToString:@"ECPU040"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPU041") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"ECPU4"))
    {
      v6 = [v3 isEqualToString:@"ECPU041"] == 0;
      v7 = 4;
      v8 = 22;
    }

    else if (([v3 isEqualToString:@"ECPU050"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ECPU051") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"ECPU5"))
    {
      v6 = [v3 isEqualToString:@"ECPU051"] == 0;
      v7 = 5;
      v8 = 23;
    }

    else if (([v3 isEqualToString:@"PCPU000"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"PCPU001") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU0"))
    {
      v6 = [v3 isEqualToString:@"PCPU001"] == 0;
      v7 = 6;
      v8 = 24;
    }

    else if (([v3 isEqualToString:@"PCPU010"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"PCPU011") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU1"))
    {
      v6 = [v3 isEqualToString:@"PCPU011"] == 0;
      v7 = 7;
      v8 = 25;
    }

    else if (([v3 isEqualToString:@"PCPU020"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"PCPU021") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU2"))
    {
      v6 = [v3 isEqualToString:@"PCPU021"] == 0;
      v7 = 8;
      v8 = 26;
    }

    else if (([v3 isEqualToString:@"PCPU030"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"PCPU031") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU3"))
    {
      v6 = [v3 isEqualToString:@"PCPU031"] == 0;
      v7 = 9;
      v8 = 27;
    }

    else if (([v3 isEqualToString:@"PCPU040"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"PCPU041") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU4"))
    {
      v6 = [v3 isEqualToString:@"PCPU041"] == 0;
      v7 = 10;
      v8 = 28;
    }

    else if (([v3 isEqualToString:@"PCPU050"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"PCPU051") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU5"))
    {
      v6 = [v3 isEqualToString:@"PCPU051"] == 0;
      v7 = 11;
      v8 = 29;
    }

    else if (([v3 isEqualToString:@"PCPU100"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU101"))
    {
      v6 = [v3 isEqualToString:@"PCPU101"] == 0;
      v7 = 12;
      v8 = 30;
    }

    else if (([v3 isEqualToString:@"PCPU110"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU111"))
    {
      v6 = [v3 isEqualToString:@"PCPU111"] == 0;
      v7 = 13;
      v8 = 31;
    }

    else if (([v3 isEqualToString:@"PCPU120"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU121"))
    {
      v6 = [v3 isEqualToString:@"PCPU121"] == 0;
      v7 = 14;
      v8 = 32;
    }

    else if (([v3 isEqualToString:@"PCPU130"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU131"))
    {
      v6 = [v3 isEqualToString:@"PCPU131"] == 0;
      v7 = 15;
      v8 = 33;
    }

    else if (([v3 isEqualToString:@"PCPU140"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"PCPU141"))
    {
      v6 = [v3 isEqualToString:@"PCPU141"] == 0;
      v7 = 16;
      v8 = 34;
    }

    else
    {
      if (([v3 isEqualToString:@"PCPU150"] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", @"PCPU151"))
      {
        v4 = -1;
        goto LABEL_8;
      }

      v6 = [v3 isEqualToString:@"PCPU151"] == 0;
      v7 = 17;
      v8 = 35;
    }

    if (v6)
    {
      v4 = v7;
    }

    else
    {
      v4 = v8;
    }
  }

LABEL_8:

  return v4;
}

- (void)logEventBackwardCorePerformanceStates:(id)a3 withChannels:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 objectForKey:@"currentSampleAPWakeTime"];
  v8 = [v7 unsignedLongLongValue];

  v9 = [v5 objectForKey:@"lastSampleAPWakeTime"];

  v10 = [v9 unsignedLongLongValue];
  [MEMORY[0x277D3F258] secondsFromMachTime:v8];
  [MEMORY[0x277D3F258] secondsFromMachTime:v10];
  IOReportIterate();
}

uint64_t __70__PLIOReportAgent_logEventBackwardCorePerformanceStates_withChannels___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = IOReportChannelGetChannelName();
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CPUStatsCPUCorePerformanceStatesData"];
  v5 = [*(a1 + 32) getCoreChannelId:v2];
  Count = IOReportStateGetCount();
  v7 = PLLogIOReport();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v20 = v2;
    v21 = 1024;
    v22 = Count;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Logging IOReport Core Performance States channel %@ with %d states", buf, 0x12u);
  }

  v18 = v2;

  if (Count >= 1)
  {
    v8 = 0;
    do
    {
      if (v5 <= 0x23)
      {
        v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withDate:v3];
        v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
        [v9 setObject:v10 forKeyedSubscript:@"Channel"];

        v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
        [v9 setObject:v11 forKeyedSubscript:@"State"];

        v12 = MEMORY[0x277CCABB0];
        IOReportStateGetDutyCycle();
        v13 = [v12 numberWithDouble:?];
        [v9 setObject:v13 forKeyedSubscript:@"DutyCycle"];

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetInTransitions()];
        [v9 setObject:v14 forKeyedSubscript:@"Transitions"];

        v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
        [v9 setObject:v15 forKeyedSubscript:@"APWakeTime"];

        [*(a1 + 32) logEntry:v9];
      }

      v8 = (v8 + 1);
    }

    while (Count != v8);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)getComplexVoltageStateTimeChannelId:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ECPM v1"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ECPM v1 idle"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ECPM v2"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ECPM v2 idle"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ECPM v3"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ECPM v3 idle"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ECPM v4"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ECPM v4 idle"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ECPM v5"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ECPM v5 idle"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"PCPM v1"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"PCPM v1 idle"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"PCPM v2"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"PCPM v2 idle"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"PCPM v3"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"PCPM v3 idle"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"PCPM v4"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"PCPM v4 idle"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"PCPM v5"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"PCPM v5 idle"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"PCPM v6"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"PCPM v6 idle"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"PCPM v7"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"PCPM v7 idle"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"PCPM v8"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"PCPM v8 idle"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"PCPM v9"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"PCPM v9 idle"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"PCPM v10"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"PCPM v10 idle"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"PCPM v11"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"PCPM v11 idle"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"PCPM v12"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"PCPM v12 idle"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"PCPM v13"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"PCPM v13 idle"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"PCPM v14"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"PCPM v14 idle"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"PCPM v15"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"PCPM v15 idle"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"PCPM v16"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"PCPM v16 idle"])
  {
    v4 = 41;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)logEventBackwardComplexVoltageStateTime:(id)a3 withChannels:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 objectForKey:@"currentSampleAPWakeTime"];
  v8 = [v7 unsignedLongLongValue];

  v9 = [v5 objectForKey:@"lastSampleAPWakeTime"];

  v10 = [v9 unsignedLongLongValue];
  [MEMORY[0x277D3F258] secondsFromMachTime:v8];
  [MEMORY[0x277D3F258] secondsFromMachTime:v10];
  IOReportIterate();
}

uint64_t __72__PLIOReportAgent_logEventBackwardComplexVoltageStateTime_withChannels___block_invoke(uint64_t a1)
{
  v2 = IOReportChannelGetChannelName();
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CPUStatsCPUComplexVoltageStateTime"];
  v5 = [*(a1 + 32) getComplexVoltageStateTimeChannelId:v2];
  if (v5 <= 0x29)
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withDate:v3];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    [v7 setObject:v8 forKeyedSubscript:@"Channel"];

    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
    [v7 setObject:v9 forKeyedSubscript:@"Value"];

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
    [v7 setObject:v10 forKeyedSubscript:@"APWakeTime"];

    [*(a1 + 32) logEntry:v7];
  }

  return 0;
}

- (id)getBucketName:(int)a3
{
  if ((a3 - 1) > 0x15)
  {
    return 0;
  }

  else
  {
    return off_27825CFC0[a3 - 1];
  }
}

- (void)logEventBackwardComplexThermalUPOLimiting:(id)a3 withChannels:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[PLIOReportAgent shouldLogThermalUPOLimiting])
  {
    v8 = [MEMORY[0x277CBEAA8] monotonicDate];
    v9 = [(PLIOReportAgent *)self entryKeyForEventWithGroupName:@"CPU Stats" withSubGroupName:@"CPU Complex Thermal/UPO Limiting"];
    v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withDate:v8];
    v11 = MEMORY[0x277CCABB0];
    v12 = [v7 objectForKey:@"currentSampleDate"];
    v13 = [v7 objectForKey:@"lastSampleDate"];
    [v12 timeIntervalSinceDate:v13];
    v14 = [v11 numberWithDouble:?];
    [v10 setObject:v14 forKeyedSubscript:@"SampleTime"];

    v15 = [v7 objectForKey:@"currentSampleAPWakeTime"];
    v16 = [v15 unsignedLongLongValue];

    v17 = [v7 objectForKey:@"lastSampleAPWakeTime"];
    v18 = [v17 unsignedLongLongValue];

    [MEMORY[0x277D3F258] secondsFromMachTime:v16];
    v20 = v19;
    [MEMORY[0x277D3F258] secondsFromMachTime:v18];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20 - v21];
    [v10 setObject:v22 forKeyedSubscript:@"APWakeTime"];

    v24 = MEMORY[0x277D85DD0];
    v25 = v10;
    v23 = v10;
    IOReportIterate();
    [(PLOperator *)self logEntry:v23, v24, 3221225472, __74__PLIOReportAgent_logEventBackwardComplexThermalUPOLimiting_withChannels___block_invoke, &unk_27825CDC0, self];
  }
}

uint64_t __74__PLIOReportAgent_logEventBackwardComplexThermalUPOLimiting_withChannels___block_invoke(uint64_t a1)
{
  v2 = IOReportChannelGetChannelName();
  if (IOReportStateGetCount() >= 1)
  {
    v3 = 0;
    do
    {
      v4 = [*(a1 + 32) getBucketName:v3];
      if (v4)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v2, v4];
        v6 = [*(a1 + 40) objectForKeyedSubscript:v5];

        v7 = MEMORY[0x277CCABB0];
        if (v6)
        {
          v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
          [v8 doubleValue];
          v10 = v9;
          IOReportStateGetDutyCycle();
          v12 = [v7 numberWithDouble:v10 + v11];
          [*(a1 + 40) setObject:v12 forKeyedSubscript:v5];
        }

        else
        {
          IOReportStateGetDutyCycle();
          v8 = [v7 numberWithDouble:?];
          [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
        }
      }

      v3 = (v3 + 1);
    }

    while (v3 < IOReportStateGetCount());
  }

  return 0;
}

- (void)logEventBackwardAOPPerformance:(id)a3 withChannels:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] fullMode])
  {
    v8 = [MEMORY[0x277CBEAA8] monotonicDate];
    v9 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AOPPerformance"];
    v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withDate:v8];
    v11 = MEMORY[0x277CCABB0];
    v12 = [v7 objectForKey:@"currentSampleDate"];
    v13 = [v7 objectForKey:@"lastSampleDate"];
    [v12 timeIntervalSinceDate:v13];
    v14 = [v11 numberWithDouble:?];
    [v10 setObject:v14 forKeyedSubscript:@"SampleTime"];

    v17 = v10;
    v15 = v10;
    IOReportIterate();
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLIOReportAgent AOPTotalThreadTime](self, "AOPTotalThreadTime")}];
    [v15 setObject:v16 forKeyedSubscript:@"Threadtime_total"];

    [(PLOperator *)self logEntry:v15];
  }

  else
  {
    IOReportIterate();
  }
}

uint64_t __63__PLIOReportAgent_logEventBackwardAOPPerformance_withChannels___block_invoke(uint64_t a1)
{
  v7 = IOReportChannelGetChannelName();
  if ([v7 isEqualToString:@"Thread time"] && IOReportStateGetCount() >= 1)
  {
    v2 = 0;
    do
    {
      v3 = IOReportStateGetNameForIndex();
      if (!v3)
      {
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v2];
      }

      if (([v3 containsString:@"main"] & 1) != 0 || (objc_msgSend(v3, "containsString:", @"voicetri") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"prox") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"pearl") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"audio") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"rtk_ep_w") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"SVC") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"IRQ") & 1) != 0 || (objc_msgSend(v3, "containsString:", @"cma") & 1) != 0 || objc_msgSend(v3, "containsString:", @"power"))
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"Threadtime", v3];
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetResidency()];
        [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
      }

      [*(a1 + 40) setAOPTotalThreadTime:{IOReportStateGetResidency() + objc_msgSend(*(a1 + 40), "AOPTotalThreadTime")}];

      v2 = (v2 + 1);
    }

    while (v2 < IOReportStateGetCount());
  }

  return 0;
}

uint64_t __63__PLIOReportAgent_logEventBackwardAOPPerformance_withChannels___block_invoke_2(uint64_t a1)
{
  v2 = IOReportChannelGetChannelName();
  if ([v2 isEqualToString:@"Thread time"] && IOReportStateGetCount() >= 1)
  {
    v3 = 0;
    do
    {
      [*(a1 + 32) setAOPTotalThreadTime:{IOReportStateGetResidency() + objc_msgSend(*(a1 + 32), "AOPTotalThreadTime")}];
      ++v3;
    }

    while (v3 < IOReportStateGetCount());
  }

  return 0;
}

- (void)logEventBackwardAOPPowerState:(id)a3 withChannels:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 monotonicDate];
  v10 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AOPPowerState"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withDate:v9];
  v12 = MEMORY[0x277CCABB0];
  v13 = [v7 objectForKey:@"currentSampleDate"];
  v14 = [v7 objectForKey:@"lastSampleDate"];

  [v13 timeIntervalSinceDate:v14];
  v15 = [v12 numberWithDouble:?];
  [v11 setObject:v15 forKeyedSubscript:@"SampleTime"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLIOReportAgent AOPTotalThreadTime](self, "AOPTotalThreadTime")}];
  [v11 setObject:v16 forKeyedSubscript:@"Active"];

  v17 = v11;
  IOReportIterate();

  v18 = [v17 objectForKeyedSubscript:@"Active"];
  if (v18)
  {
    v19 = v18;
    v20 = [v17 objectForKeyedSubscript:@"On"];

    if (v20)
    {
      v21 = MEMORY[0x277CCABB0];
      v22 = [v17 objectForKeyedSubscript:@"On"];
      [v22 doubleValue];
      v24 = v23;
      v25 = [v17 objectForKeyedSubscript:@"Active"];
      [v25 doubleValue];
      v27 = [v21 numberWithDouble:v24 - v26];
      [v17 setObject:v27 forKeyedSubscript:@"PreventPowerGate"];
    }
  }

  [(PLOperator *)self logEntry:v17];
}

uint64_t __62__PLIOReportAgent_logEventBackwardAOPPowerState_withChannels___block_invoke(uint64_t a1)
{
  v7 = IOReportChannelGetChannelName();
  if ([v7 isEqualToString:@"Power state"] && IOReportStateGetCount() >= 1)
  {
    v2 = 0;
    do
    {
      v3 = IOReportStateGetNameForIndex();
      v4 = @"On";
      if (([v3 isEqualToString:@"ON"] & 1) != 0 || (v4 = @"CPUPowerGated", objc_msgSend(v3, "isEqualToString:", @"OFF")))
      {
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetResidency()];
        [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
      }

      ++v2;
    }

    while (v2 < IOReportStateGetCount());
  }

  return 0;
}

uint64_t __49__PLIOReportAgent_logEventBackwardAOPAOPSensors___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = IOReportChannelGetChannelName();
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AOPAOPSensors"];
  v5 = [*(a1 + 32) getAOPSensorsChannelId:v2];
  Count = IOReportStateGetCount();
  v7 = PLLogIOReport();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v19 = v2;
    v20 = 1024;
    v21 = Count;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Logging IOReport AOP Sensors channel %@ with %d states", buf, 0x12u);
  }

  v17 = v2;

  if (Count >= 1)
  {
    v8 = 0;
    do
    {
      if (v5 <= 7)
      {
        v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withDate:v3];
        v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
        [v9 setObject:v10 forKeyedSubscript:@"Channel"];

        v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
        [v9 setObject:v11 forKeyedSubscript:@"State"];

        v12 = MEMORY[0x277CCABB0];
        IOReportStateGetDutyCycle();
        v13 = [v12 numberWithDouble:?];
        [v9 setObject:v13 forKeyedSubscript:@"DutyCycle"];

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetInTransitions()];
        [v9 setObject:v14 forKeyedSubscript:@"Transitions"];

        [*(a1 + 32) logEntry:v9];
      }

      v8 = (v8 + 1);
    }

    while (Count != v8);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)getAOPSensorsChannelId:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"accel"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"als"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"compass"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"compass_1"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"gyro"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"hgaccel"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"pressure"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 7;
    if (([v3 isEqualToString:@"Prox"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"prox"])
      {
        v4 = 7;
      }

      else
      {
        v4 = -1;
      }
    }
  }

  return v4;
}

- (void)logEventBackwardIOReportWithDelta:(id)a3 forChannelGroup:(id)a4
{
  v132 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v89 = v6;
  if (v6)
  {
    context = v8;
    v96 = [MEMORY[0x277CBEAA8] monotonicDate];
    if ([(PLOperator *)self isDebugEnabled])
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CBEAA8] date];
      [v10 timeIntervalSince1970];
      v12 = [v9 stringWithFormat:@"/tmp/delta_%f.plist", v11];
      [v89 writeToFile:v12 atomically:1];
    }

    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v13 = [v89 objectForKey:@"IOReportChannelGroups"];
    v14 = [v13 allKeys];

    obj = v14;
    v90 = [v14 countByEnumeratingWithState:&v123 objects:v131 count:16];
    if (v90)
    {
      v88 = *v124;
      v95 = *MEMORY[0x277D3F5C8];
      v93 = self;
      v94 = v7;
      do
      {
        v15 = 0;
        do
        {
          if (*v124 != v88)
          {
            objc_enumerationMutation(obj);
          }

          v92 = v15;
          v16 = *(*(&v123 + 1) + 8 * v15);
          v91 = objc_autoreleasePoolPush();
          v17 = [v89 objectForKey:@"IOReportChannelGroups"];
          v18 = [v17 objectForKey:v16];

          v19 = [v18 objectForKey:@"IOReportChannelGroups"];
          v20 = [v19 allKeys];
          v21 = [v20 count];

          v105 = v18;
          v110 = v16;
          if (v21)
          {
            [(PLIOReportAgent *)self setAOPTotalThreadTime:0];
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v22 = [v18 objectForKey:@"IOReportChannelGroups"];
            v23 = [v22 allKeys];

            v107 = v23;
            v109 = [v23 countByEnumeratingWithState:&v118 objects:v128 count:16];
            if (!v109)
            {
              v101 = 0;
              v102 = 0;
              v24 = 0;
              goto LABEL_106;
            }

            v101 = 0;
            v102 = 0;
            v24 = 0;
            v108 = *v119;
            while (1)
            {
              v25 = 0;
              do
              {
                if (*v119 != v108)
                {
                  objc_enumerationMutation(v107);
                }

                v26 = *(*(&v118 + 1) + 8 * v25);
                v27 = [v18 objectForKey:@"IOReportChannelGroups"];
                v111 = [v27 objectForKey:v26];

                v28 = v110;
                if ([v110 isEqualToString:@"CPU Stats"] && objc_msgSend(v26, "isEqualToString:", @"CPU Complex Performance States"))
                {
                  v29 = v111;
                  [(PLIOReportAgent *)self logEventBackwardComplexPerformanceStates:v111];
LABEL_48:
                  v37 = 0;
                  goto LABEL_49;
                }

                if ([v110 isEqualToString:@"CPU Stats"] && objc_msgSend(v26, "isEqualToString:", @"CPU Core Performance States"))
                {
                  v29 = v111;
                  [(PLIOReportAgent *)self logEventBackwardCorePerformanceStates:v111 withChannels:v7];
                  goto LABEL_48;
                }

                if ([v110 isEqualToString:@"CPU Stats"] && objc_msgSend(v26, "isEqualToString:", @"CPU Complex Thermal/UPO Limiting"))
                {
                  v29 = v111;
                  [(PLIOReportAgent *)self logEventBackwardComplexThermalUPOLimiting:v111 withChannels:v7];
                  goto LABEL_48;
                }

                if ([v110 isEqualToString:@"CPU Stats"] && objc_msgSend(v26, "isEqualToString:", @"CPU Complex Voltage State Time"))
                {
                  v29 = v111;
                  [(PLIOReportAgent *)self logEventBackwardComplexVoltageStateTime:v111 withChannels:v7];
                  goto LABEL_48;
                }

                if (![v110 isEqualToString:@"AOP"] || (objc_msgSend(v26, "isEqualToString:", @"Power") & 1) == 0 && !objc_msgSend(v26, "isEqualToString:", @"Performance"))
                {
                  if ([v110 isEqualToString:@"AOP"] && objc_msgSend(v26, "isEqualToString:", @"AOP Sensors"))
                  {
                    v29 = v111;
                    [(PLIOReportAgent *)self logEventBackwardAOPAOPSensors:v111];
                    goto LABEL_48;
                  }

                  if ([v110 isEqualToString:@"IOMFB Reporting"])
                  {
                    if ([v26 isEqualToString:@"Total native/custom refresh rate"])
                    {
                      if ([MEMORY[0x277D3F208] hasCapability:4])
                      {
                        v32 = v95;
                        v33 = @"IOMFBNativeRate";
                        goto LABEL_64;
                      }

LABEL_67:
                      v39 = [(PLOperator *)PLIOReportAgent entryKeyForType:v95 andName:@"IOReport"];
                      v103 = 1;
                      goto LABEL_68;
                    }

                    if ([v26 isEqualToString:@"Subframes per swap request"])
                    {
                      v32 = v95;
                      v33 = @"IOMFBSwapHistogram";
                    }

                    else if ([v26 isEqualToString:@"Subframes per scanout"])
                    {
                      v32 = v95;
                      v33 = @"IOMFBScanoutHistogram";
                    }

                    else if ([v26 isEqualToString:@"frame rate phase"])
                    {
                      v32 = v95;
                      v33 = @"IOMFBFrameRatePhase";
                    }

                    else
                    {
                      v32 = v95;
                      v33 = @"IOMFBUSRHistogram";
                    }

LABEL_64:
                    v38 = [(PLOperator *)PLIOReportAgent entryKeyForType:v32 andName:v33];
                  }

                  else
                  {
                    if ([v110 isEqualToString:@"SoC Stats"] && objc_msgSend(v26, "isEqualToString:", @"Device States"))
                    {
                      if (([MEMORY[0x277D3F180] BOOLForKey:@"enable_SoCStatsDeviceStates" ifNotSet:0] & 1) == 0)
                      {
                        v29 = v111;
                        [(PLIOReportAgent *)self logEventBackwardSoCStatsDeviceStatesChannelID:v111 withChannelGroup:v7 withEntryDate:v96];
                        goto LABEL_48;
                      }

                      v32 = v95;
                      v33 = @"SoCStatsDeviceStates";
                      goto LABEL_64;
                    }

                    if ([v110 isEqualToString:@"H16ISP"] && objc_msgSend(v26, "isEqualToString:", @"H16ISP Events"))
                    {
                      v32 = v95;
                      v33 = @"H13ISPH13ISPEvents";
                      goto LABEL_64;
                    }

                    v38 = [(PLIOReportAgent *)self entryKeyForEventWithGroupName:v110 withSubGroupName:v26];
                  }

                  v39 = v38;
                  if (!v38)
                  {
                    goto LABEL_67;
                  }

                  v103 = 0;
LABEL_68:
                  v104 = v39;
                  v40 = [(PLIOReportAgent *)self entryForReportingGroup:v111 withKey:v39 withChannelGroup:v7 withEntryDate:v96];

                  v106 = v40;
                  if ([v26 isEqualToString:@"Energy Counters"])
                  {
                    [(PLIOReportAgent *)self modelPMPAPSocPower:v40];
                  }

                  else if (([v26 isEqualToString:@"CPMS Lanes engagement"] & 1) != 0 || (objc_msgSend(v26, "isEqualToString:", @"CPMS Ferocity") & 1) != 0 || (objc_msgSend(v26, "isEqualToString:", @"CPMS Power Reduction") & 1) != 0 || (objc_msgSend(v26, "isEqualToString:", @"Policy CPMS") & 1) != 0 || objc_msgSend(v26, "isEqualToString:", @"Peak Power Pressure"))
                  {
                    [(PLIOReportAgent *)self logEngagementToCA:v40];
                  }

                  else if ([v110 isEqualToString:@"Trackpad Power Stats"] && objc_msgSend(v26, "isEqualToString:", @"Trackpad Power State Time (ms)"))
                  {
                    v98 = objc_opt_new();
                    v114 = 0u;
                    v115 = 0u;
                    v116 = 0u;
                    v117 = 0u;
                    v100 = [v40 definedKeys];
                    v51 = [v100 countByEnumeratingWithState:&v114 objects:v127 count:16];
                    if (v51)
                    {
                      v52 = v51;
                      v53 = *v115;
                      v97 = *v115;
                      do
                      {
                        v54 = 0;
                        v99 = v52;
                        do
                        {
                          if (*v115 != v53)
                          {
                            objc_enumerationMutation(v100);
                          }

                          v55 = *(*(&v114 + 1) + 8 * v54);
                          if (([v55 isEqualToString:@"SampleTime"] & 1) == 0)
                          {
                            v56 = MEMORY[0x277CCABB0];
                            v57 = MEMORY[0x277D3F258];
                            v58 = [v106 objectForKeyedSubscript:v55];
                            v59 = [v56 numberWithInt:{objc_msgSend(v57, "roundToSigFig:withSigFig:", objc_msgSend(v58, "intValue"), 3)}];
                            [v106 setObject:v59 forKeyedSubscript:v55];

                            v60 = MEMORY[0x277CCABB0];
                            v61 = MEMORY[0x277D3F258];
                            v28 = v110;
                            v62 = [v106 objectForKeyedSubscript:v55];
                            v63 = [v62 intValue];
                            v64 = v61;
                            v52 = v99;
                            v65 = [v60 numberWithInt:{objc_msgSend(v64, "roundToSigFig:withSigFig:", v63, 3)}];
                            [v98 setObject:v65 forKeyedSubscript:v55];

                            v53 = v97;
                          }

                          ++v54;
                        }

                        while (v52 != v54);
                        v52 = [v100 countByEnumeratingWithState:&v114 objects:v127 count:16];
                      }

                      while (v52);
                    }

                    block[5] = MEMORY[0x277D85DD0];
                    block[6] = 3221225472;
                    block[7] = __69__PLIOReportAgent_logEventBackwardIOReportWithDelta_forChannelGroup___block_invoke_9612;
                    block[8] = &unk_278259D58;
                    v113 = v98;
                    v66 = v98;
                    AnalyticsSendEventLazy();

                    self = v93;
                    v7 = v94;
                    v40 = v106;
                  }

                  if (v103)
                  {
                    [v40 setObject:v28 forKeyedSubscript:@"Group"];
                    [v40 setObject:v26 forKeyedSubscript:@"SubGroup"];
                  }

                  [v40 allValues];
                  v42 = v41 = v40;
                  v43 = [v42 count];

                  if (v43)
                  {
                    v18 = v105;
                    v29 = v111;
                    v24 = v41;
                    if ([MEMORY[0x277D3F180] debugEnabled])
                    {
                      v44 = objc_opt_class();
                      block[0] = MEMORY[0x277D85DD0];
                      block[1] = 3221225472;
                      block[2] = __69__PLIOReportAgent_logEventBackwardIOReportWithDelta_forChannelGroup___block_invoke_2;
                      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                      block[4] = v44;
                      if (qword_2811F4838 != -1)
                      {
                        dispatch_once(&qword_2811F4838, block);
                      }

                      if (byte_2811F4769 == 1)
                      {
                        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! entry=%@ !!!", v41];
                        v46 = MEMORY[0x277D3F178];
                        v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
                        v48 = [v47 lastPathComponent];
                        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent logEventBackwardIOReportWithDelta:forChannelGroup:]"];
                        [v46 logMessage:v45 fromFile:v48 fromFunction:v49 fromLineNumber:10878];

                        v50 = PLLogCommon();
                        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412290;
                          v130 = v45;
                          _os_log_debug_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                        }

                        self = v93;
                        v7 = v94;
                        v18 = v105;
                        v24 = v106;
                      }
                    }

                    [(PLOperator *)self logEntry:v24];
                  }

                  else
                  {
                    v24 = v41;
                    v18 = v105;
                    v29 = v111;
                  }

                  v37 = v104;
                  goto LABEL_49;
                }

                if ([v26 isEqualToString:@"Power"])
                {
                  v30 = v101;
                  v31 = v102;
                  v29 = v111;
                  v101 = v111;
LABEL_44:
                  v36 = v29;

                  v35 = v31;
                  goto LABEL_45;
                }

                v34 = [v26 isEqualToString:@"Performance"];
                v35 = v102;
                v30 = v102;
                v29 = v111;
                v31 = v111;
                if (v34)
                {
                  goto LABEL_44;
                }

LABEL_45:
                v37 = 0;
                v102 = v35;
                if (v35)
                {
                  v18 = v105;
                  if (!v101)
                  {
                    goto LABEL_49;
                  }

                  [PLIOReportAgent logEventBackwardAOPPerformance:"logEventBackwardAOPPerformance:withChannels:" withChannels:?];
                  [(PLIOReportAgent *)self logEventBackwardAOPPowerState:v101 withChannels:v7];
                  goto LABEL_48;
                }

                v18 = v105;
LABEL_49:

                ++v25;
              }

              while (v25 != v109);
              v67 = [v107 countByEnumeratingWithState:&v118 objects:v128 count:16];
              v109 = v67;
              if (!v67)
              {
LABEL_106:

                goto LABEL_125;
              }
            }
          }

          if ([v16 isEqualToString:@"Core Performance Level"])
          {
            [(PLIOReportAgent *)self logStateResidency:v18 withKey:@"PLIOReportAgent_EventBackward_CorePerformanceLevelResidency" withEntryDate:v96];
          }

          else
          {
            v68 = [(PLIOReportAgent *)self entryKeyForEventWithGroupName:v16 withSubGroupName:0];
            v69 = v68;
            if (!v68)
            {
              v69 = [(PLOperator *)PLIOReportAgent entryKeyForType:v95 andName:@"IOReport"];
            }

            v70 = [(PLIOReportAgent *)self entryForReportingGroup:v18 withKey:v69 withChannelGroup:v7 withEntryDate:v96];
            if ([v16 isEqualToString:@"Energy Model"])
            {
              v71 = [v70 objectForKey:@"GPU Energy"];

              if (v71)
              {
                v72 = MEMORY[0x277CCABB0];
                v73 = [v70 objectForKeyedSubscript:@"GPU Energy"];
                [v73 doubleValue];
                v75 = [v72 numberWithDouble:v74 * 0.000001];
                [v70 setObject:v75 forKeyedSubscript:@"GPU Energy"];

                v18 = v105;
              }

              [(PLIOReportAgent *)self modelAPSoCPower:v70];
            }

            if (!v68)
            {
              [v70 setObject:v16 forKeyedSubscript:@"Group"];
              [v70 setObject:0 forKeyedSubscript:@"SubGroup"];
            }

            v76 = [v70 allValues];
            v77 = [v76 count];

            if (v77)
            {
              if ([MEMORY[0x277D3F180] debugEnabled])
              {
                v78 = objc_opt_class();
                v122[0] = MEMORY[0x277D85DD0];
                v122[1] = 3221225472;
                v122[2] = __69__PLIOReportAgent_logEventBackwardIOReportWithDelta_forChannelGroup___block_invoke;
                v122[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v122[4] = v78;
                if (qword_2811F4830 != -1)
                {
                  dispatch_once(&qword_2811F4830, v122);
                }

                if (byte_2811F4768 == 1)
                {
                  v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! entry=%@ !!!", v70];
                  v80 = MEMORY[0x277D3F178];
                  v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
                  v82 = [v81 lastPathComponent];
                  v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent logEventBackwardIOReportWithDelta:forChannelGroup:]"];
                  [v80 logMessage:v79 fromFile:v82 fromFunction:v83 fromLineNumber:10741];

                  v84 = PLLogCommon();
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v130 = v79;
                    _os_log_debug_impl(&dword_21A4C6000, v84, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = v93;
                  v7 = v94;
                  v18 = v105;
                }
              }

              [(PLOperator *)self logEntry:v70];
            }
          }

LABEL_125:

          objc_autoreleasePoolPop(v91);
          v15 = v92 + 1;
        }

        while (v92 + 1 != v90);
        v90 = [obj countByEnumeratingWithState:&v123 objects:v131 count:16];
      }

      while (v90);
    }

    v8 = context;
  }

  objc_autoreleasePoolPop(v8);

  v85 = *MEMORY[0x277D85DE8];
}

uint64_t __69__PLIOReportAgent_logEventBackwardIOReportWithDelta_forChannelGroup___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4768 = result;
  return result;
}

uint64_t __69__PLIOReportAgent_logEventBackwardIOReportWithDelta_forChannelGroup___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4769 = result;
  return result;
}

- (void)logEventBackwardMTRAging
{
  v2 = self;
  v66 = *MEMORY[0x277D85DE8];
  if (self->_iokitAging)
  {
    if ([MEMORY[0x277D3F208] isiOS])
    {
      v3 = &unk_282C179A0;
    }

    else if ([MEMORY[0x277D3F208] isWatch])
    {
      v3 = &unk_282C179C8;
    }

    else
    {
      v3 = MEMORY[0x277CBEC10];
    }

    v46 = [MEMORY[0x277CBEAA8] monotonicDate];
    v47 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MTRAging"];
    v49 = objc_opt_new();
    if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
    {
      v45 = objc_opt_new();
      v48 = 1;
    }

    else
    {
      v48 = 0;
      v45 = 0;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v53 = [v3 countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v53)
    {
      v52 = *v57;
      v50 = v2;
      v51 = v3;
      do
      {
        v10 = 0;
        do
        {
          if (*v57 != v52)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v56 + 1) + 8 * v10);
          v12 = [v3 objectForKeyedSubscript:v11];
          v13 = [v12 stringByAppendingString:@"Data"];

          v14 = MEMORY[0x277D3F1C8];
          v15 = [(PLIOReportAgent *)v2 iokitAging];
          v16 = [v14 snapshotFromIOEntry:objc_msgSend(v15 forKey:{"service"), v13}];

          if (v16)
          {
            if (__ROR8__(0xAAAAAAAAAAAAAAABLL * [v16 length], 3) < 0xAAAAAAAAAAAAAABuLL)
            {
              v24 = [v16 bytes];
              v25 = [v16 length];
              if (v25 >= 0x18)
              {
                v26 = v25 / 0x18;
                v27 = (v24 + 16);
                do
                {
                  if (*(v27 - 4) == 1 && *(v27 - 3) == 1 && *(v27 - 2) == 2 && !*(v27 - 1))
                  {
                    if ([MEMORY[0x277D3F180] debugEnabled])
                    {
                      v28 = objc_opt_class();
                      block[0] = MEMORY[0x277D85DD0];
                      block[1] = 3221225472;
                      block[2] = __43__PLIOReportAgent_logEventBackwardMTRAging__block_invoke_9654;
                      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                      block[4] = v28;
                      if (qword_2811F4850 != -1)
                      {
                        dispatch_once(&qword_2811F4850, block);
                      }

                      if (byte_2811F476C == 1)
                      {
                        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"value = %llu, node=%d (id=%d, type=%d, unit=%d, flags=%d, counter=%d)", *v27 & 0xFFFFFFFFFFFFFFLL, *(v27 - 2), *(v27 - 4), *(v27 - 3), *(v27 - 2), *(v27 - 1), HIBYTE(*v27)];
                        v44 = MEMORY[0x277D3F178];
                        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
                        v31 = [v30 lastPathComponent];
                        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent logEventBackwardMTRAging]"];
                        [v44 logMessage:v29 fromFile:v31 fromFunction:v32 fromLineNumber:10974];

                        v33 = v29;
                        v34 = PLLogCommon();
                        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412290;
                          v65 = v33;
                          _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                        }

                        v2 = v50;
                      }
                    }

                    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v27 - 2)];
                    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v27 & 0xFFFFFFFFFFFFFFLL];
                    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mtr.%@.%@", v11, v35];
                    [v49 setObject:v36 forKeyedSubscript:v37];
                    v38 = v35;
                    v39 = v36;
                    AnalyticsSendEventLazy();
                    if (v48)
                    {
                      v40 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v47 withDate:v46];
                      [v40 setObject:v11 forKeyedSubscript:@"Component"];
                      [v40 setObject:v38 forKeyedSubscript:@"Node"];
                      [v40 setObject:v39 forKeyedSubscript:@"dF_norm"];
                      [v45 addObject:v40];

                      v2 = v50;
                    }

                    v3 = v51;
                  }

                  v27 += 3;
                  --v26;
                }

                while (v26);
              }
            }

            else if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v17 = objc_opt_class();
              v55[0] = MEMORY[0x277D85DD0];
              v55[1] = 3221225472;
              v55[2] = __43__PLIOReportAgent_logEventBackwardMTRAging__block_invoke_9648;
              v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v55[4] = v17;
              if (qword_2811F4848 != -1)
              {
                dispatch_once(&qword_2811F4848, v55);
              }

              if (byte_2811F476B == 1)
              {
                v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"rawData is not a multiple of RoscData"];
                v19 = MEMORY[0x277D3F178];
                v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
                v21 = [v20 lastPathComponent];
                v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent logEventBackwardMTRAging]"];
                [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:10965];

                v23 = PLLogCommon();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v65 = v18;
                  _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v2 = v50;
                v3 = v51;
              }
            }
          }

          ++v10;
        }

        while (v10 != v53);
        v41 = [v3 countByEnumeratingWithState:&v56 objects:v63 count:16];
        v53 = v41;
      }

      while (v41);
    }

    if ([v49 count])
    {
      MEMORY[0x21CEDCD50](0, v49);
    }

    if (v48 && [v45 count])
    {
      v61 = v47;
      v62 = v45;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      [(PLOperator *)v2 logEntries:v42 withGroupID:v47];
    }

LABEL_58:
    goto LABEL_59;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __43__PLIOReportAgent_logEventBackwardMTRAging__block_invoke;
    v60[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v60[4] = v4;
    if (qword_2811F4840 != -1)
    {
      dispatch_once(&qword_2811F4840, v60);
    }

    if (byte_2811F476A == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"iokitAging is nil"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent logEventBackwardMTRAging]"];
      v46 = v5;
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:10892];

      v47 = PLLogCommon();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v65 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_58;
    }
  }

LABEL_59:
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLIOReportAgent_logEventBackwardMTRAging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F476A = result;
  return result;
}

uint64_t __43__PLIOReportAgent_logEventBackwardMTRAging__block_invoke_9648(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F476B = result;
  return result;
}

uint64_t __43__PLIOReportAgent_logEventBackwardMTRAging__block_invoke_9654(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F476C = result;
  return result;
}

id __43__PLIOReportAgent_logEventBackwardMTRAging__block_invoke_9661(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5[0] = @"component";
  v5[1] = @"node";
  v6 = v1;
  v5[2] = @"df_norm";
  v7 = *(a1 + 48);
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)logEngagementToCA:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 definedKeys];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __37__PLIOReportAgent_logEngagementToCA___block_invoke;
  v15 = &unk_278259C90;
  v6 = v3;
  v16 = v6;
  v7 = v4;
  v17 = v7;
  [v5 enumerateObjectsUsingBlock:&v12];

  if ([v7 count])
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 count];
      v10 = [v6 entryKey];
      *buf = 134218242;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, "cpms: pushing %lu keys to aggd for entry key %@", buf, 0x16u);
    }

    MEMORY[0x21CEDCD50](v7, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __37__PLIOReportAgent_logEngagementToCA___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqualToString:@"SampleTime"] & 1) == 0)
  {
    if ([v3 containsString:@"LanesEng"])
    {
      v4 = [v3 componentsSeparatedByString:@"_"];
      if ([v4 count] != 2)
      {
LABEL_15:

        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.power.battery.cpms.%@", v3];
        if ([v4 containsString:@"%"])
        {
          v19 = [v4 stringByReplacingOccurrencesOfString:@"%" withString:&stru_282B650A0];

          v4 = v19;
        }

        if (![v3 containsString:@"_Transitions"])
        {
          v21 = [*(a1 + 32) objectForKeyedSubscript:v3];
          [v21 doubleValue];
          v23 = v22;

          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v23 * 1000.0)];
          [*(a1 + 40) setObject:v8 forKeyedSubscript:v4];
          goto LABEL_21;
        }

        v20 = MEMORY[0x277CCABB0];
        v8 = [*(a1 + 32) objectForKeyedSubscript:v3];
        v10 = [v20 numberWithInt:{objc_msgSend(v8, "intValue")}];
        [*(a1 + 40) setObject:v10 forKeyedSubscript:v4];
LABEL_19:

LABEL_21:
        goto LABEL_22;
      }

      v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
      [v5 doubleValue];
      v7 = (v6 * 1000.0);

      if (!v7)
      {
LABEL_22:

        goto LABEL_23;
      }

      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __37__PLIOReportAgent_logEngagementToCA___block_invoke_2;
      v32 = &unk_27825CF28;
      v4 = v4;
      v33 = v4;
      v34 = v7;
      AnalyticsSendEventLazy();
      v8 = v4;
LABEL_14:

      goto LABEL_15;
    }

    v4 = [v3 substringWithRange:{0, 3}];
    v9 = [v3 substringFromIndex:3];
    v8 = [v9 stringByReplacingOccurrencesOfString:@"%" withString:&stru_282B650A0];

    v10 = [v8 componentsSeparatedByString:@"_"];
    v11 = [v10 count];
    if (v11 == 2)
    {
      v16 = [*(a1 + 32) objectForKeyedSubscript:v3];
      [v16 doubleValue];
      v18 = (v17 * 1000.0);

      if (!v18)
      {
        goto LABEL_19;
      }

      v14 = &v24;
      v24 = v4;
      v15 = v25;
      v25[0] = v10;
      v25[1] = v18;
    }

    else
    {
      if (v11 != 3)
      {
LABEL_13:

        goto LABEL_14;
      }

      v12 = [*(a1 + 32) objectForKeyedSubscript:v3];
      v13 = [v12 intValue];

      if (v13 < 1)
      {
        goto LABEL_19;
      }

      v25[2] = MEMORY[0x277D85DD0];
      v25[3] = 3221225472;
      v25[4] = __37__PLIOReportAgent_logEngagementToCA___block_invoke_3;
      v25[5] = &unk_27825CF50;
      v14 = &v26;
      v26 = v4;
      v15 = &v27;
      v27 = v10;
      v28 = v13;
    }

    AnalyticsSendEventLazy();

    goto LABEL_13;
  }

LABEL_23:
}

id __37__PLIOReportAgent_logEngagementToCA___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) objectAtIndexedSubscript:1];
  [v2 setObject:v3 forKeyedSubscript:@"bin"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  [v2 setObject:v4 forKeyedSubscript:@"engagement"];

  return v2;
}

id __37__PLIOReportAgent_logEngagementToCA___block_invoke_3(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"area"];
  v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
  [v2 setObject:v3 forKeyedSubscript:@"timeScale"];

  v4 = [*(a1 + 40) objectAtIndexedSubscript:1];
  [v2 setObject:v4 forKeyedSubscript:@"bin"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  [v2 setObject:v5 forKeyedSubscript:@"transitionCount"];

  return v2;
}

id __37__PLIOReportAgent_logEngagementToCA___block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"area"];
  v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
  [v2 setObject:v3 forKeyedSubscript:@"timeScale"];

  v4 = [*(a1 + 40) objectAtIndexedSubscript:1];
  [v2 setObject:v4 forKeyedSubscript:@"bin"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  [v2 setObject:v5 forKeyedSubscript:@"residency"];

  return v2;
}

- (id)allowSamplingMemCacheStats:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D3F180] BOOLForKey:@"disableMemCacheStatConditions" ifNotSet:0];
  if ((v5 & 1) == 0)
  {
    v6 = [(PLIOReportAgent *)self sampledBundleIDs];
    v7 = [v6 count];

    if (v7 >= 0xB)
    {
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v30) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Met max collection threshold", &v30, 2u);
      }

      goto LABEL_14;
    }
  }

  if (!v4)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = [v4 objectForKeyedSubscript:@"entry"];

  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = [v4 objectForKeyedSubscript:@"entry"];
  v8 = [v9 objectForKeyedSubscript:@"bundleID"];

  if (!v8 || ([v8 isEqualToString:self->_lastFgApp]& 1) != 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  objc_storeStrong(&self->_lastFgApp, v8);
  v10 = [MEMORY[0x277CBEAA8] date];
  lastFgAppSwitch = self->_lastFgAppSwitch;
  self->_lastFgAppSwitch = v10;

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    lastFgApp = self->_lastFgApp;
    v29 = self->_lastFgAppSwitch;
    v30 = 138412546;
    v31 = lastFgApp;
    v32 = 2112;
    v33 = v29;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Fg App Switch app: %@ at : %@", &v30, 0x16u);
  }

  if ([(PLIOReportAgent *)self collectionEnabled])
  {
    v13 = PLLogCommon();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
LABEL_13:

      goto LABEL_14;
    }

    LOWORD(v30) = 0;
    v18 = "Collection enabled for another app";
    v19 = v13;
    v20 = 2;
LABEL_28:
    _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, v18, &v30, v20);
    goto LABEL_13;
  }

  if ((v5 & 1) == 0)
  {
    v16 = [(PLIOReportAgent *)self sampledBundleIDs];
    v17 = [v16 containsObject:v8];

    if (v17)
    {
      v13 = PLLogCommon();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      v30 = 138412290;
      v31 = v8;
      v18 = "App %@ already sampled";
      v19 = v13;
      v20 = 12;
      goto LABEL_28;
    }

    v21 = [(PLIOReportAgent *)self lastSampleDate];
    if (v21)
    {
      v22 = v21;
      v23 = [MEMORY[0x277CBEAA8] date];
      v24 = [(PLIOReportAgent *)self lastSampleDate];
      [v23 timeIntervalSinceDate:v24];
      v26 = v25;

      if (v26 < 3600.0)
      {
        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v27 = [(PLIOReportAgent *)self lastSampleDate];
          v30 = 138412290;
          v31 = v27;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "Not enough time since last sample: %@", &v30, 0xCu);
        }

        goto LABEL_13;
      }
    }
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)connectToMemCacheDriver
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_memCacheDriverConn)
  {
    goto LABEL_8;
  }

  v3 = *MEMORY[0x277CD28A0];
  v4 = IOServiceMatching("AppleMemCacheController");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (!MatchingService)
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15[0]) = 0;
      v10 = "Could not find object for AppleMemCacheController";
      v11 = v9;
      v12 = 2;
      goto LABEL_13;
    }

LABEL_7:

LABEL_8:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = MatchingService;
  v7 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &self->_memCacheDriverConn);
  if (v7)
  {
    v8 = v7;
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109120;
      v15[1] = v8;
      v10 = "Cannot open AppleMemCacheController service with ret: 0x%x";
      v11 = v9;
      v12 = 8;
LABEL_13:
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, v10, v15, v12);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v14 = *MEMORY[0x277D85DE8];

  IOObjectRelease(v6);
}

- (void)readAndLogMemCacheStats
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  v3 = MEMORY[0x21CEDC4F0](self->_memCacheDriverConn, 1, *MEMORY[0x277D85F48], &v26, &v25, 1);
  if (v3)
  {
    v4 = v3;
    log = PLLogCommon();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v30) = v4;
      _os_log_error_impl(&dword_21A4C6000, log, OS_LOG_TYPE_ERROR, "Failed to map data collection memory ret:0x%x\n", buf, 8u);
    }
  }

  else
  {
    v5 = v26;
    log = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MemCacheStats"];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = IODataQueuePeek(v5);
    if (v7)
    {
      v8 = v7;
      while (1)
      {
        v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:log];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v8->data];
        [v9 setObject:v10 forKeyedSubscript:@"SampleTime"];

        if (*v8[1].data)
        {
          v11 = 0;
          do
          {
            v12 = [PLIOReportAgent keyForSubBlock:v11];
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v8[2].size + v11)];
            [v9 setObject:v13 forKeyedSubscript:v12];

            ++v11;
          }

          while (v11 < *v8[1].data);
        }

        [v6 addObject:v9];
        if ([v6 count] == 256)
        {
          break;
        }

        v14 = IODataQueueDequeue(v5, 0, 0);
        if (v14)
        {
          v15 = v14;
          v16 = PLLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v30) = v15;
            _os_log_error_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_ERROR, "Failed to move to next entry in queue. ret:0x%x\n", buf, 8u);
          }

          break;
        }

        v8 = IODataQueuePeek(v5);
        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    if ([v6 count])
    {
      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v23 = [v6 count];
        *buf = 134217984;
        v30 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "Num stats entries: %lu", buf, 0xCu);
      }

      v27 = log;
      v28 = v6;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [(PLOperator *)self logEntries:v18 withGroupID:log];
    }

    v19 = MEMORY[0x21CEDC500](self->_memCacheDriverConn, 1, *MEMORY[0x277D85F48], v26);
    if (v19)
    {
      v20 = v19;
      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v30) = v20;
        _os_log_error_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_ERROR, "Failed to unmap memory ret:0x%x\n", buf, 8u);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)triggerMemCacheLogging:(id)a3 withDelay:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(input[0]) = 138412290;
    *(input + 4) = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Triggered MemCache logging for app: %@", input, 0xCu);
  }

  if (![(PLIOReportAgent *)self fgAppChangedSince:a4]&& ![(PLIOReportAgent *)self collectionEnabled])
  {
    [(PLIOReportAgent *)self connectToMemCacheDriver];
    if (self->_memCacheDriverConn)
    {
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(input[0]) = 138412290;
        *(input + 4) = v6;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Enabling data collection for app: %@", input, 0xCu);
      }

      *input = xmmword_21AA21B70;
      [(PLIOReportAgent *)self setCollectionEnabled:1];
      IOConnectCallScalarMethod(self->_memCacheDriverConn, 0xEu, input, 2u, 0, 0);
      v9 = dispatch_time(0, 6096000000);
      v10 = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__PLIOReportAgent_triggerMemCacheLogging_withDelay___block_invoke;
      block[3] = &unk_27825CFA0;
      block[4] = self;
      v14 = 6096000000;
      v13 = v6;
      dispatch_after(v9, v10, block);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLIOReportAgent_triggerMemCacheLogging_withDelay___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) fgAppChangedSince:*(a1 + 48) / 0x3B9ACA00uLL] & 1) == 0)
  {
    v2 = PLLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = 138412290;
      v11 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Reading collected samples for app: %@", &v10, 0xCu);
    }

    [*(a1 + 32) readAndLogMemCacheStats];
    v3 = [*(a1 + 32) sampledBundleIDs];
    [v3 addObject:*(a1 + 40)];

    v4 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setLastSampleDate:v4];
  }

  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v10 = 138412290;
    v11 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Disabling data collection for app: %@", &v10, 0xCu);
  }

  IOConnectCallScalarMethod(*(*(a1 + 32) + 52), 0xFu, 0, 0, 0, 0);
  result = [*(a1 + 32) setCollectionEnabled:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)logEventBackwardMemCacheStats:(id)a3
{
  v4 = [(PLIOReportAgent *)self allowSamplingMemCacheStats:a3];
  if (v4)
  {
    if (arc4random_uniform(2u))
    {
      v5 = dispatch_time(0, 10000000000);
      v6 = [(PLOperator *)self workQueue];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __49__PLIOReportAgent_logEventBackwardMemCacheStats___block_invoke;
      v7[3] = &unk_278259658;
      v7[4] = self;
      v8 = v4;
      dispatch_after(v5, v6, v7);
    }

    else
    {
      [(PLIOReportAgent *)self triggerMemCacheLogging:v4 withDelay:0];
    }
  }
}

- (void)logEventForwardMemCacheLabels
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *outputStruct = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Log MemCache Labels", outputStruct, 2u);
  }

  [(PLIOReportAgent *)self connectToMemCacheDriver];
  memCacheDriverConn = self->_memCacheDriverConn;
  if (memCacheDriverConn)
  {
    outputStructCnt = 2048;
    v5 = IOConnectCallStructMethod(memCacheDriverConn, 0x10u, 0, 0, outputStruct, &outputStructCnt);
    if (v5)
    {
      v6 = v5;
      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v19 = v6;
        _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Failed to get the data header with ret: 0x%x\n", buf, 8u);
      }
    }

    else
    {
      v7 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"MemCacheLabels"];
      v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", outputStruct];
      v10 = [v9 componentsSeparatedByString:{@", "}];
      if ([v10 count])
      {
        v11 = 0;
        do
        {
          v12 = [v10 objectAtIndexedSubscript:v11];
          v13 = [v12 length];

          if (v13)
          {
            v14 = [PLIOReportAgent keyForSubBlock:v11];
            v15 = [v10 objectAtIndexedSubscript:v11];
            [v8 setObject:v15 forKeyedSubscript:v14];
          }

          ++v11;
        }

        while ([v10 count] > v11);
      }

      [(PLOperator *)self logEntry:v8];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)modelAPSoCPower:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D3F208] isHomePod];
  if (v3 && (v4 & 1) == 0)
  {
    v5 = [v3 objectForKeyedSubscript:@"SampleTime"];
    [v5 doubleValue];
    v7 = v6;

    v8 = [v3 entryDate];
    v66 = [v8 dateByAddingTimeInterval:-v7];

    v9 = [v3 entryDate];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __35__PLIOReportAgent_modelAPSoCPower___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (qword_2811F4858 != -1)
      {
        dispatch_once(&qword_2811F4858, block);
      }

      if (byte_2811F476D == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastSampleDate=%@, currentSampleDate=%@, sampleTime=%f", v66, v9, *&v7];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
        v14 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent modelAPSoCPower:]"];
        [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:11351];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v74 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [objc_opt_class() energyKeyToRootNodeID];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v65 = v70 = 0u;
    v17 = [v65 allKeys];
    v18 = [v17 countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v68;
      do
      {
        v21 = 0;
        do
        {
          if (*v68 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v67 + 1) + 8 * v21);
          v23 = [v3 objectForKeyedSubscript:v22];

          if (v23)
          {
            v24 = [v65 objectForKeyedSubscript:v22];
            v25 = [v3 objectForKeyedSubscript:v22];
            [v25 doubleValue];
            v27 = v26;

            v28 = v27 / v7;
            if ([v22 isEqual:@"CPU Energy"])
            {
              if (([MEMORY[0x277D3F208] isDeviceClass:102011] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102012) || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100022) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100023))
              {
                v28 = v28 * 0.68;
              }

              else if (([MEMORY[0x277D3F208] isDeviceClass:102015] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102016) || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102017) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102018))
              {
                v28 = v28 * 1.55;
              }

              else if (([MEMORY[0x277D3F208] isDeviceClass:102021] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102022) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102025) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102026))
              {
                v28 = v28 + 8.0;
              }

              goto LABEL_38;
            }

            if ([v22 isEqual:@"Rest of SoC Energy"])
            {
              if (([MEMORY[0x277D3F208] isDeviceClass:102017] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102018))
              {
                v28 = v28 * 1.6;
              }

              goto LABEL_38;
            }

            if (![v22 isEqual:@"DRAM Energy"])
            {
              goto LABEL_38;
            }

            if (([MEMORY[0x277D3F208] isSoCClass:1001004] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isSoCClass:", 1001005))
            {
              v28 = v28 * 3.5;
              goto LABEL_38;
            }

            if (([MEMORY[0x277D3F208] isSoCClass:1001006] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isSoCClass:", 1001007))
            {
              v28 = v28 * 2.4;
              goto LABEL_38;
            }

            if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] <= 1001009 || objc_msgSend(MEMORY[0x277D3F208], "kPLSoCClassOfDevice") >= 1001015)
            {
LABEL_38:
              if ([v24 intValue] == 54)
              {
                v29 = PLLogCommon();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  v74 = 0x403E000000000000;
                  _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "Adjusting APSOCBase power to default value: %f", buf, 0xCu);
                }

                v28 = 30.0;
              }

              v30 = [MEMORY[0x277D3F0C0] sharedInstance];
              [v30 createPowerEventIntervalWithRootNodeID:objc_msgSend(v24 withPower:"intValue") withStartDate:v66 withEndDate:{v9, v28}];

              if ([v24 intValue] == 54)
              {
                v31 = [MEMORY[0x277D3F0C0] sharedInstance];
                [v31 createQualificationEventIntervalWithQualificationID:13 withChildNodeNames:&unk_282C141F0 withStartDate:v66 withEndDate:v9];
              }
            }
          }

          ++v21;
        }

        while (v19 != v21);
        v32 = [v17 countByEnumeratingWithState:&v67 objects:v72 count:16];
        v19 = v32;
      }

      while (v32);
    }

    v33 = [v3 objectForKeyedSubscript:@"DRAM"];
    if (v33)
    {
      v34 = v33;
      v35 = [v3 objectForKeyedSubscript:@"DCS"];

      if (v35)
      {
        v36 = [v3 objectForKeyedSubscript:@"DRAM"];
        [v36 doubleValue];
        v38 = v37;
        v39 = [v3 objectForKeyedSubscript:@"DCS"];
        [v39 doubleValue];
        v41 = v38 + v40;

        v42 = [MEMORY[0x277D3F0C0] sharedInstance];
        [v42 createPowerEventIntervalWithRootNodeID:9 withPower:v66 withStartDate:v9 withEndDate:v41 / v7];
      }
    }

    v43 = [v3 objectForKeyedSubscript:@"ECPU"];
    if (v43)
    {
      v44 = v43;
      v45 = [v3 objectForKeyedSubscript:@"PCPU"];

      if (v45)
      {
        v46 = [v3 objectForKeyedSubscript:@"ECPU"];
        [v46 doubleValue];
        v48 = v47;
        v49 = [v3 objectForKeyedSubscript:@"PCPU"];
        [v49 doubleValue];
        v51 = v48 + v50;

        v52 = v51 / v7;
        if ([MEMORY[0x277D3F208] kPLSoCClassOfDevice] > 1001015)
        {
          v52 = v52 + 10.0;
        }

        v53 = [MEMORY[0x277D3F0C0] sharedInstance];
        [v53 createPowerEventIntervalWithRootNodeID:2 withPower:v66 withStartDate:v9 withEndDate:v52];
      }
    }

    v54 = [v3 objectForKeyedSubscript:@"DISP"];
    if (v54)
    {
      v55 = v54;
      v56 = [v3 objectForKeyedSubscript:@"MSR"];

      if (v56)
      {
        v57 = [v3 objectForKeyedSubscript:@"DISP"];
        [v57 doubleValue];
        v59 = v58;
        v60 = [v3 objectForKeyedSubscript:@"MSR"];
        [v60 doubleValue];
        v62 = v59 + v61;

        v63 = [MEMORY[0x277D3F0C0] sharedInstance];
        [v63 createPowerEventIntervalWithRootNodeID:57 withPower:v66 withStartDate:v9 withEndDate:v62 / v7];
      }
    }
  }

  v64 = *MEMORY[0x277D85DE8];
}

uint64_t __35__PLIOReportAgent_modelAPSoCPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F476D = result;
  return result;
}

- (void)modelPMPAPSocPower:(id)a3
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D3F208] isHomePod];
  if (!v3 || (v4 & 1) != 0)
  {
    goto LABEL_72;
  }

  v5 = [v3 objectForKeyedSubscript:@"SampleTime"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v3 entryDate];
  v9 = [v8 dateByAddingTimeInterval:-v7];

  v10 = [v3 entryDate];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__PLIOReportAgent_modelPMPAPSocPower___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F4860 != -1)
    {
      dispatch_once(&qword_2811F4860, block);
    }

    if (byte_2811F476E == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastSampleDate=%@, currentSampleDate=%@, sampleTime=%f", v9, v10, *&v7];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLIOReportAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLIOReportAgent modelPMPAPSocPower:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:11469];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v84 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18 = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  if (v18 == 1001010)
  {
    v19 = [v3 objectForKeyedSubscript:@"DRAM"];

    if (v19)
    {
      v20 = [v3 objectForKeyedSubscript:@"DRAM"];
      [v20 doubleValue];
      v22 = v21;

      v23 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v23 createPowerEventIntervalWithRootNodeID:9 withPower:v9 withStartDate:v10 withEndDate:v22 / v7];
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  v24 = v18;
  [objc_opt_class() energyKeyToRootNodeID];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = v80 = 0u;
  v25 = [v76 allKeys];
  v26 = [v25 countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (!v26)
  {
    goto LABEL_54;
  }

  v27 = v26;
  v28 = *v78;
  do
  {
    v29 = 0;
    do
    {
      if (*v78 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v77 + 1) + 8 * v29);
      v31 = [v3 objectForKeyedSubscript:v30];

      if (v31)
      {
        v32 = [v76 objectForKeyedSubscript:v30];
        v33 = [v3 objectForKeyedSubscript:v30];
        [v33 doubleValue];
        v35 = v34;

        v36 = v35 / v7;
        if (v24 <= 1001013)
        {
          if (v24 == 1001011)
          {
            v37 = [v32 intValue];
            v38 = v36 * 1.5;
            goto LABEL_39;
          }

          if (v24 == 1001013 && [v32 intValue] == 7 && ((objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100062) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100063)))
          {
            v36 = v36 + v36;
          }
        }

        else
        {
          switch(v24)
          {
            case 1001014:
              if ([v32 intValue] == 7)
              {
                if (([MEMORY[0x277D3F208] isDeviceClass:100052] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100053) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102034) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102035) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 102036))
                {
                  v36 = v36 * 4.0;
                }

                else if ([MEMORY[0x277D3F208] isDeviceClass:102037])
                {
                  v36 = v36 * 1.25;
                }
              }

              break;
            case 1001015:
              v37 = [v32 intValue];
              v38 = v36 + v36;
              goto LABEL_39;
            case 1001021:
              v37 = [v32 intValue];
              v38 = v36 * 1.27;
LABEL_39:
              if (v37 == 7)
              {
                v36 = v38;
              }

              break;
          }
        }

        if ([v32 intValue] == 54)
        {
          v39 = PLLogCommon();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v84 = 0x403E000000000000;
            _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "Adjusting APSOCBase power to default value: %f", buf, 0xCu);
          }

          v36 = 30.0;
        }

        v40 = [MEMORY[0x277D3F0C0] sharedInstance];
        [v40 createPowerEventIntervalWithRootNodeID:objc_msgSend(v32 withPower:"intValue") withStartDate:v9 withEndDate:{v10, v36}];

        if ([v32 intValue] == 54)
        {
          v41 = [MEMORY[0x277D3F0C0] sharedInstance];
          [v41 createQualificationEventIntervalWithQualificationID:13 withChildNodeNames:&unk_282C14208 withStartDate:v9 withEndDate:v10];
        }
      }

      ++v29;
    }

    while (v27 != v29);
    v42 = [v25 countByEnumeratingWithState:&v77 objects:v82 count:16];
    v27 = v42;
  }

  while (v42);
LABEL_54:

  v43 = [v3 objectForKeyedSubscript:@"DRAM"];
  if (v43)
  {
    v44 = v43;
    v45 = [v3 objectForKeyedSubscript:@"DCS"];

    if (v45)
    {
      v46 = [v3 objectForKeyedSubscript:@"DRAM"];
      [v46 doubleValue];
      v48 = v47;
      v49 = [v3 objectForKeyedSubscript:@"DCS"];
      [v49 doubleValue];
      v51 = v48 + v50;

      v52 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v52 createPowerEventIntervalWithRootNodeID:9 withPower:v9 withStartDate:v10 withEndDate:v51 / v7];
    }
  }

  v53 = [v3 objectForKeyedSubscript:@"ECPU"];
  if (v53)
  {
    v54 = v53;
    v55 = [v3 objectForKeyedSubscript:@"PCPU"];

    if (v55)
    {
      v56 = [v3 objectForKeyedSubscript:@"ECPU"];
      [v56 doubleValue];
      v58 = v57;
      v59 = [v3 objectForKeyedSubscript:@"PCPU"];
      [v59 doubleValue];
      v61 = v58 + v60;

      if (v24 == 1001011)
      {
        v62 = v61 / v7 * 1.4;
      }

      else
      {
        v62 = v61 / v7;
      }

      v63 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v63 createPowerEventIntervalWithRootNodeID:2 withPower:v9 withStartDate:v10 withEndDate:v62];
    }
  }

  v64 = [v3 objectForKeyedSubscript:@"DISP"];
  if (v64 && (v65 = v64, [v3 objectForKeyedSubscript:@"MSR"], v66 = objc_claimAutoreleasedReturnValue(), v66, v65, v66))
  {
    v67 = [v3 objectForKeyedSubscript:@"DISP"];
    [v67 doubleValue];
    v69 = v68;
    v70 = [v3 objectForKeyedSubscript:@"MSR"];
    [v70 doubleValue];
    v72 = v69 + v71;

    v73 = v72 / v7;
    if (([MEMORY[0x277D3F208] isDeviceClass:100052] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isDeviceClass:", 100053))
    {
      v73 = v73 + v73;
    }

    v23 = v76;
    v74 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v74 createPowerEventIntervalWithRootNodeID:57 withPower:v9 withStartDate:v10 withEndDate:v73];
  }

  else
  {
    v23 = v76;
  }

LABEL_70:

LABEL_71:
LABEL_72:

  v75 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLIOReportAgent_modelPMPAPSocPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F476E = result;
  return result;
}

uint64_t __40__PLIOReportAgent_energyKeyToRootNodeID__block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = qword_2811F4870;
  qword_2811F4870 = v0;

  v2 = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  if (v2 >= 1001003)
  {
    v7 = v2;
    if (v2 >= 0xF4633)
    {
      if (v2 >= 0xF4638)
      {
        [qword_2811F4870 setObject:&unk_282C11340 forKeyedSubscript:@"AVE"];
        [qword_2811F4870 setObject:&unk_282C11358 forKeyedSubscript:@"VDEC"];
        [qword_2811F4870 setObject:&unk_282C10C80 forKeyedSubscript:@"ISP"];
        [qword_2811F4870 setObject:&unk_282C11178 forKeyedSubscript:@"SOC_AON"];
        if (v7 >= 0xF463C)
        {
          v8 = @"AMCC";
        }

        else
        {
          v8 = @"SOC_REST";
        }

        [qword_2811F4870 setObject:&unk_282C11328 forKeyedSubscript:v8];
        [qword_2811F4870 setObject:&unk_282C11370 forKeyedSubscript:@"GPU"];
        v3 = &unk_282C113B8;
        v4 = qword_2811F4870;
        v5 = @"ANE";
      }

      else
      {
        [qword_2811F4870 setObject:&unk_282C11340 forKeyedSubscript:@"VENC"];
        [qword_2811F4870 setObject:&unk_282C11358 forKeyedSubscript:@"VDEC"];
        [qword_2811F4870 setObject:&unk_282C10C80 forKeyedSubscript:@"ISP"];
        [qword_2811F4870 setObject:&unk_282C11178 forKeyedSubscript:@"SOC_AON"];
        [qword_2811F4870 setObject:&unk_282C11328 forKeyedSubscript:@"SOC_REST"];
        v3 = &unk_282C11370;
        v4 = qword_2811F4870;
        v5 = @"GPU Energy";
      }
    }

    else
    {
      [qword_2811F4870 setObject:&unk_282C11340 forKeyedSubscript:@"VENC Energy"];
      [qword_2811F4870 setObject:&unk_282C11358 forKeyedSubscript:@"VDEC Energy"];
      [qword_2811F4870 setObject:&unk_282C10C80 forKeyedSubscript:@"ISP Energy"];
      [qword_2811F4870 setObject:&unk_282C11178 forKeyedSubscript:@"SoC Base Energy"];
      [qword_2811F4870 setObject:&unk_282C11328 forKeyedSubscript:@"Rest of SoC Energy"];
      [qword_2811F4870 setObject:&unk_282C11370 forKeyedSubscript:@"GPU Energy"];
      result = [qword_2811F4870 setObject:&unk_282C11388 forKeyedSubscript:@"CPU Energy"];
      if (v7 - 1001004 > 5)
      {
        return result;
      }

      v3 = &unk_282C113A0;
      v4 = qword_2811F4870;
      v5 = @"DRAM Energy";
    }
  }

  else
  {
    v3 = &unk_282C11328;
    v4 = qword_2811F4870;
    v5 = @"SoC Energy";
  }

  return [v4 setObject:v3 forKeyedSubscript:v5];
}

- (void)logSnapshotValues:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"IOReportChannelGroups"];
  v6 = [v5 allKeys];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__PLIOReportAgent_logSnapshotValues___block_invoke;
  v8[3] = &unk_278259C90;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __37__PLIOReportAgent_logSnapshotValues___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:@"IOReportChannelGroups"];
  v5 = [v4 objectForKey:v3];

  if ([v3 isEqualToString:@"AOP"])
  {
    [*(a1 + 40) logEventPointIOReportSaturation:v5];
  }

  else
  {
    v6 = [v5 objectForKey:@"IOReportChannelGroups"];
    v7 = [v6 allKeys];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__PLIOReportAgent_logSnapshotValues___block_invoke_2;
    v10[3] = &unk_278259CE0;
    v11 = v5;
    v8 = v3;
    v9 = *(a1 + 40);
    v12 = v8;
    v13 = v9;
    [v7 enumerateObjectsUsingBlock:v10];
  }
}

void __37__PLIOReportAgent_logSnapshotValues___block_invoke_2(id *a1, void *a2)
{
  v5 = a2;
  v3 = [a1[4] objectForKey:@"IOReportChannelGroups"];
  v4 = [v3 objectForKey:v5];

  if ([a1[5] isEqualToString:@"SoC Stats"] && objc_msgSend(v5, "isEqualToString:", @"Events"))
  {
    [a1[6] logSOCHOT0Snapshot:v4];
  }

  else if ([a1[5] isEqualToString:@"NULL"] && objc_msgSend(v5, "isEqualToString:", @"NULL"))
  {
    [a1[6] logDroopSnapshot:v4];
  }
}

- (void)logSOCHOT0Snapshot:(id)a3
{
  v4 = a3;
  if (+[PLIOReportAgent shouldLogSoCStats])
  {
    v5 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"SoCStatsEventsRaw"];
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
    v6 = v7;
    IOReportIterate();
    [(PLOperator *)self logEntry:v6];
  }
}

uint64_t __38__PLIOReportAgent_logSOCHOT0Snapshot___block_invoke(uint64_t a1)
{
  v2 = IOReportChannelGetChannelName();
  if ([v2 isEqualToString:@"SOCHOT0"] && IOReportStateGetCount() == 2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetResidency()];
    [*(a1 + 32) setObject:v3 forKeyedSubscript:@"SOCHOT0_ACT"];

    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IOReportStateGetInTransitions()];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:@"SOCHOT0_Transitions"];
  }

  return 0;
}

+ (BOOL)shouldLogSoCStats
{
  if (qword_2811F4878 != -1)
  {
    dispatch_once(&qword_2811F4878, &__block_literal_global_9772);
  }

  return byte_2811F476F;
}

uint64_t __36__PLIOReportAgent_shouldLogSoCStats__block_invoke()
{
  result = [MEMORY[0x277D3F208] isArchARM];
  byte_2811F476F = result;
  return result;
}

+ (BOOL)shouldLogDCPScanoutStats
{
  if (![MEMORY[0x277D3F1B8] isiPhone] || !objc_msgSend(MEMORY[0x277D3F1B8], "hasDCP"))
  {
    return 0;
  }

  v2 = MEMORY[0x277D3F1B8];

  return [v2 hasPerseus];
}

@end
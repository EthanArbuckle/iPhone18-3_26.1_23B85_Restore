@interface WiFiUsageMonitor
+ (id)LQMAnalysisReasonForFault:(unint64_t)a3;
+ (id)getTDConfirmedEventStringForDisplay:(id *)a3;
+ (id)getTDEvalCompleteEventStringForDisplay:(int)a3;
+ (id)sharedInstance;
+ (void)appendTDStateToDict:(id)a3 from:(id)a4;
- (BOOL)submitAnalytics:(id)a3;
- (BOOL)submitBeaconInfoToCAForInterface:(id)a3;
- (WiFiUsageMonitor)init;
- (id)canStartLQMAnalysisforTrigger:(id)a3 andReason:(id)a4 onWindow:(id)a5;
- (id)faultReasonCount:(unint64_t)a3 forInterface:(id)a4;
- (id)getProperty:(id)a3 forAllSessionsOfInterface:(id)a4;
- (id)lastBssSessionInfoForInterface:(id)a3;
- (id)lastRangingSessionMetric;
- (id)summaryForInterface:(id)a3;
- (void)addFaultEvent:(unint64_t)a3 forInterface:(id)a4;
- (void)addFaultEvent:(unint64_t)a3 forInterface:(id)a4 at:(id)a5 event:(id)a6;
- (void)addFaultEvent:(unint64_t)a3 forInterface:(id)a4 event:(id)a5;
- (void)addRangingRttSampleWithRssi:(int64_t)a3 rtt:(int64_t)a4 snr:(unint64_t)a5 flags:(unint64_t)a6 channel:(unint64_t)a7 coreId:(unint64_t)a8 bitErrorRate:(unint64_t)a9 phyError:(unint64_t)a10 andPeerSnr:(unint64_t)a11 andPeerCoreId:(unint64_t)a12 andPeerBitErrorRate:(unint64_t)a13 andPeerPhyError:(unint64_t)a14;
- (void)addSoftApClientEvent:(BOOL)a3 identifier:(id)a4 isAppleClient:(BOOL)a5 isInstantHotspot:(BOOL)a6 isAutoHotspot:(BOOL)a7 isHidden:(BOOL)a8;
- (void)addSoftApCoexEvent:(unint64_t)a3 deniedUnii1ChannelMap:(unint64_t)a4 deniedUnii2aChannelMap:(unint64_t)a5 deniedUnii2cChannelMap:(unint64_t)a6 deniedUnii3ChannelMap:(unint64_t)a7;
- (void)addTriggerDisconnectEvent:(id)a3 isAlerted:(BOOL)a4 isConfirmed:(BOOL)a5 isExecuted:(BOOL)a6;
- (void)appendBTStatsToDict:(id)a3;
- (void)appendSARStatsToDict:(id)a3;
- (void)appendUsbStatsToDict:(id)a3;
- (void)brokenLinkDetected:(id)a3;
- (void)enableSubmitAnalyticsNoSampling:(BOOL)a3;
- (void)enableXCTestNotifications;
- (void)faultEventDetected:(id)a3;
- (void)getMobileAssets;
- (void)linkTestEvent:(id)a3 withReason:(id)a4 forInterface:(id)a5;
- (void)notifyDHCPChanges:(id)a3;
- (void)notifyDriverAvailability:(id)a3 available:(BOOL)a4 version:(unint64_t)a5 flags:(unint64_t)a6 eventID:(unint64_t)a7 reason:(int64_t)a8 subReason:(int64_t)a9 minorReason:(int64_t)a10 reasonString:(id)a11;
- (void)notifyIPv4Changes:(id)a3;
- (void)notifyIPv6Changes:(id)a3;
- (void)notifyInterfaceRankingState:(BOOL)a3 forInterface:(id)a4;
- (void)notifyIpConfigurationStateWithMethod:(BOOL)a3 dhcpLeaseDuration:(double)a4 hasRoutableIpV4:(BOOL)a5 hasRoutableIpV6:(BOOL)a6;
- (void)notifyNetworkQualityResults:(id)a3 forInterface:(id)a4;
- (void)pushRNFEventToHUD:(BOOL)a3;
- (void)pushTDEventToHUD:(id)a3;
- (void)rangingCompletedWithValidCount:(unint64_t)a3 resultStatus:(int64_t)a4 resultFlags:(unint64_t)a5;
- (void)rangingSessionRequestedWithSelfPreferredChannel:(unint64_t)a3 selfMainChannel:(unint64_t)a4 selfChannelFlags:(unint64_t)a5 peerPreferredChannel:(unint64_t)a6 peerMainChannel:(unint64_t)a7 peerChannelFlags:(unint64_t)a8 requester:(id)a9;
- (void)rangingStartedWithNumMeasurements:(unint64_t)a3;
- (void)receiveKernelLQMRollingWindow:(id)a3 ForInterface:(id)a4;
- (void)receivedBssTransitionRequest:(id)a3 candidateListIncluded:(BOOL)a4 isAbridged:(BOOL)a5 disassociationImminent:(BOOL)a6 bssTerminationIncluded:(BOOL)a7 essDisassociationImminent:(BOOL)a8;
- (void)resetDeviceSessionforInterface:(id)a3;
- (void)sentBssTransitionResponse:(id)a3 status:(int64_t)a4 terminationDelayRequested:(BOOL)a5;
- (void)setAwdlSequence:(id)a3;
- (void)setAwdlState:(BOOL)a3 inMode:(int64_t)a4;
- (void)setBluetoothState:(BOOL)a3 connectedDeviceCount:(unint64_t)a4 inA2dp:(BOOL)a5 inSco:(BOOL)a6 inUniAoS:(BOOL)a7 inBiAoS:(BOOL)a8 btAudioBand:(BOOL)a9;
- (void)setCallState:(BOOL)a3;
- (void)setCellularDataStatus:(id)a3 inAirplaneMode:(BOOL)a4;
- (void)setCellularFallbackState:(BOOL)a3 forInterface:(id)a4;
- (void)setCellularOutrankingState:(BOOL)a3 forInterface:(id)a4;
- (void)setCompanionConnectionState:(BOOL)a3;
- (void)setCompatibilityModeEnabled:(BOOL)a3;
- (void)setCompletionHandler:(id)a3 withContext:(void *)a4 onQueue:(id)a5;
- (void)setControlCenterState:(BOOL)a3 withKnownLocation:(BOOL)a4 forInterface:(id)a5;
- (void)setCurrentApplicationName:(id)a3 withAttributes:(id)a4;
- (void)setDeviceChargingState:(BOOL)a3;
- (void)setDeviceInitializationFailureReason:(id)a3 timeSinceBoot:(double)a4;
- (void)setDeviceLockState:(BOOL)a3;
- (void)setDisplayState:(BOOL)a3;
- (void)setFaultEventHandler:(id)a3;
- (void)setForgetNetworkEvent:(id)a3 forInterface:(id)a4;
- (void)setJoinEvent:(BOOL)a3 withReason:(unint64_t)a4 lastDisconnectReason:(unint64_t)a5 lastJoinFailure:(int64_t)a6 andNetworkDetails:(id)a7 forInterface:(id)a8;
- (void)setLinkEvent:(BOOL)a3 isInvoluntary:(BOOL)a4 linkChangeReason:(int64_t)a5 linkChangeSubreason:(int64_t)a6 withNetworkDetails:(id)a7 forInterface:(id)a8;
- (void)setMediaState:(BOOL)a3;
- (void)setMotionState:(id)a3;
- (void)setPowerBudget:(int64_t)a3 andThermalIndex:(int64_t)a4 forInterface:(id)a5;
- (void)setPowerState:(BOOL)a3 forInterface:(id)a4;
- (void)setPrivacyRestrictionDisabled:(BOOL)a3;
- (void)setRoamingARCriteria:(id *)a3 forInterface:(id)a4;
- (void)setRoamingConfiguration:(int64_t)a3 withChannelList:(id)a4 forInterface:(id)a5;
- (void)setRoamingState:(BOOL)a3 withReason:(unint64_t)a4 asString:(id)a5 andStatus:(unint64_t)a6 asString:(id)a7 andLatency:(unint64_t)a8 andRoamData:(id)a9 andPingPongSequence:(id)a10 forInterface:(id)a11;
- (void)setSARState:(BOOL)a3 builtInReceiverOn:(BOOL)a4;
- (void)setScanningState:(BOOL)a3 client:(unint64_t)a4 neighborBSS:(id)a5 otherBSS:(id)a6 withChannelInfoList:(id)a7 withRequest:(id)a8 forInterface:(id)a9;
- (void)setSecondaryInterfaceName:(id)a3;
- (void)setSmartCoverState:(id)a3;
- (void)setSoftApState:(BOOL)a3 requester:(id)a4 status:(id)a5 changeReason:(id)a6 channelNumber:(unint64_t)a7 countryCode:(unint64_t)a8 isHidden:(BOOL)a9 isInfraConnected:(BOOL)a10 isAwdlUp:(BOOL)a11 lowPowerModeDuration:(double)a12 compatibilityMode:(BOOL)a13 requestToUpLatency:(double)a14 idleTimeBeforeTeardownSec:(double)a15 idleTimeAfterLastClientDisconnectedSec:(double)a16;
- (void)setSteeringRequest:(unint64_t)a3 preferredChannel:(unint64_t)a4 preferredBand:(int)a5 preferredSSID:(id)a6 targetSSIDDiffersFromCurrent:(BOOL)a7 preferredBSS:(id)a8 ssidIsSplit:(BOOL)a9 transitionCandidates:(BOOL)a10;
- (void)setSystemWakeState:(BOOL)a3 wokenByWiFi:(BOOL)a4;
- (void)setTdLogic_alertedBy:(int)a3 forInterface:(id)a4;
- (void)setTdLogic_badRssiThreshold:(int64_t)a3 goodRssiThreshold:(int64_t)a4;
- (void)setTdLogic_decisionState:(id *)a3 forInterface:(id)a4;
- (void)setTdLogic_deferJoin:(unint64_t)a3 perBSSID:(unint64_t)a4;
- (void)setTdLogic_end:(int)a3 evalTime:(double)a4 rssi:(int64_t)a5 roamTime:(double)a6 forInterface:(id)a7;
- (void)setTdLogic_fastTdState:(id *)a3 forInterface:(id)a4;
- (void)setTdLogic_waitForRoamTime:(double)a3 forInterface:(id)a4;
- (void)setUsbStatus:(BOOL)a3 currentDevices:(id)a4 currentNoiseDelta:(int64_t)a5;
- (void)startLQMAnalysis:(id)a3;
- (void)startMonitoringWiFiInterface:(id)a3 withLinkSessionOnly:(BOOL)a4;
- (void)submitBootLatenciesToCA;
- (void)submitLqmToCA:(id)a3 forInterface:(id)a4;
- (void)submitScanResultWithNeighborBSS:(id)a3 withOtherBSS:(id)a4 withChannelInfoList:(id)a5;
- (void)updateBeaconCache:(id)a3 afterRoamAttempt:(id)a4 whileCurrentBSSID:(id)a5 forInterface:(id)a6;
- (void)updateBeaconInfo:(id)a3 andParsedIE:(id)a4 forInterface:(id)a5;
- (void)updateBssPerChannelWith:(id)a3 into:(id)a4 and:(id)a5 withChannelInfoList:(id)a6;
- (void)updateCurrentNetworkDetails:(id)a3;
- (void)updateIsBSPActive:(BOOL)a3;
- (void)updateKnownNetworksSupportingSeamless:(id)a3 forBSS:(id)a4 andSSID:(id)a5 beaconCache:(id)a6;
- (void)updateLQMWindowCriteria;
- (void)updateLinkQuality:(id)a3 forInterface:(id)a4 supportsLinkRecommendations:(BOOL)a5;
- (void)updateLinkRecoveryDisabled:(BOOL)a3;
- (void)updateLinkTestInterval:(unint64_t)a3;
- (void)updateRealTimeCoex:(BOOL)a3 type:(unint64_t)a4 reasons:(id)a5;
- (void)updateRoamCache:(id)a3 forInterface:(id)a4;
- (void)updateScanForwardStats:(id)a3;
- (void)updateSleepPowerStats:(double)a3 unassociatedDuration:(double)a4 associatedDuration:(double)a5 roamingDuration:(double)a6;
- (void)updateWPSInfo:(id)a3;
- (void)updateWithChQualScore:(unint64_t)a3 txLatencyScore:(unint64_t)a4 rxLatencyScore:(unint64_t)a5 txLossScore:(unint64_t)a6 rxLossScore:(unint64_t)a7 txLatencyP95:(unint64_t)a8 linkRecommendationFlags:(unint64_t)a9 rtTrafficStatus:(unint64_t)a10 forInterface:(id)a11;
- (void)updateWithCompatibilityMode:(unsigned __int8)a3;
- (void)updateWithMLORuntimeConfig:(id *)a3 forInterface:(id)a4;
- (void)updateWithRoamingSuppression:(unsigned __int8)a3;
- (void)updateWowState:(BOOL)a3 lpasState:(BOOL)a4 lowPowerState:(BOOL)a5 batterySaverState:(BOOL)a6;
@end

@implementation WiFiUsageMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[WiFiUsageMonitor sharedInstance];
  }

  v3 = sharedInstance_sharedWiFiUsageMonitor;

  return v3;
}

uint64_t __34__WiFiUsageMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WiFiUsageMonitor);
  v1 = sharedInstance_sharedWiFiUsageMonitor;
  sharedInstance_sharedWiFiUsageMonitor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WiFiUsageMonitor)init
{
  v34.receiver = self;
  v34.super_class = WiFiUsageMonitor;
  v2 = [(WiFiUsageMonitor *)&v34 init];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = *(v2 + 5);
  *(v2 + 5) = v3;

  *(v2 + 42) = getpid();
  *(v2 + 43) = 0;
  *(v2 + 36) = 0;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = *(v2 + 13);
  *(v2 + 13) = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = *(v2 + 14);
  *(v2 + 14) = v7;

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = *(v2 + 15);
  *(v2 + 15) = v9;

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("com.apple.wifi.usage-monitor", v11);
  v13 = *(v2 + 18);
  *(v2 + 18) = v12;

  *(v2 + 16) = 0;
  v14 = *(v2 + 26);
  *(v2 + 26) = 0;

  v15 = *(v2 + 27);
  *(v2 + 27) = 0;

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = *(v2 + 28);
  *(v2 + 28) = v16;

  *(v2 + 37) = 0x7FFFFFFFFFFFFFFFLL;
  v18 = [[WiFiSoftError alloc] initWithName:@"Trigger Disconnect"];
  v19 = *(v2 + 38);
  *(v2 + 38) = v18;

  v20 = [[WiFiSoftError alloc] initWithName:@"Cellular Fallback"];
  v21 = *(v2 + 39);
  *(v2 + 39) = v20;

  v22 = *(v2 + 10);
  *(v2 + 10) = 0;

  objc_initWeak(&location, v2);
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __24__WiFiUsageMonitor_init__block_invoke;
  v31 = &unk_2789C6B58;
  objc_copyWeak(&v32, &location);
  v23 = MEMORY[0x23839E400](&v28);
  v24 = *(v2 + 29);
  *(v2 + 29) = v23;

  dispatch_async(*(v2 + 18), &__block_literal_global_272);
  v25 = [MEMORY[0x277CCAB98] defaultCenter];
  [v25 addObserver:v2 selector:sel_faultEventDetected_ name:@"SessionNotificationFaultEventDetected" object:0];

  v26 = [MEMORY[0x277CCAB98] defaultCenter];
  [v26 addObserver:v2 selector:sel_brokenLinkDetected_ name:@"SessionNotificationBrokenLinkDetected" object:0];

  [v2 getMobileAssets];
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
  return v2;
}

void __24__WiFiUsageMonitor_init__block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v3 canSubmitToCA])
  {
    v16 = WeakRetained;
    [v3 summary];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v30 = 0u;
    obj = [v20 allKeys];
    v19 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v19)
    {
      v18 = *v28;
      do
      {
        v5 = 0;
        do
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = v5;
          v6 = *(*(&v27 + 1) + 8 * v5);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v7 = [v20 objectForKeyedSubscript:v6];
            v8 = [v7 count];
            *buf = 136315650;
            v33 = "[WiFiUsageMonitor init]_block_invoke";
            v34 = 2112;
            v35 = v6;
            v36 = 2048;
            v37 = v8;
            _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: calling AnalyticsSendEventLazy for LQM window analysis as %@ (%lu metrics)", buf, 0x20u);
          }

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v9 = [v20 objectForKeyedSubscript:v6];
          v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v23 + 1) + 8 * i);
                v22 = v3;
                AnalyticsSendEventLazy();
              }

              v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v11);
          }

          v5 = v21 + 1;
        }

        while (v21 + 1 != v19);
        v19 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v19);
    }

    WeakRetained = v16;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[WiFiUsageMonitor init]_block_invoke_2";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - not submitting this analysis to CA (downsampled)", buf, 0xCu);
  }

  [WeakRetained[28] removeObject:v3];

  v15 = *MEMORY[0x277D85DE8];
}

void __24__WiFiUsageMonitor_init__block_invoke_270()
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = objc_opt_class();
    v1 = v0;
    v4 = 136315650;
    v5 = "[WiFiUsageMonitor init]_block_invoke";
    v6 = 2112;
    v7 = v0;
    v8 = 2112;
    v9 = objc_opt_class();
    v2 = v9;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: started configuration of %@ and %@", &v4, 0x20u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)faultEventDetected:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"SessionNotificationFaultType"];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"SessionNotificationInterfaceName"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = WiFiUsageFaultReasonStringMap([v6 unsignedIntegerValue]);
    v13 = 136315906;
    v14 = "[WiFiUsageMonitor faultEventDetected:]";
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: fault event %@(%@) detected on interface %@", &v13, 0x2Au);
  }

  if (v6 && v8)
  {
    v10 = [v6 intValue];
    v11 = [MEMORY[0x277CBEAA8] now];
    [(WiFiUsageMonitor *)self addFaultEvent:v10 forInterface:v8 at:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)brokenLinkDetected:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__WiFiUsageMonitor_brokenLinkDetected___block_invoke;
  v7[3] = &unk_2789C6608;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __39__WiFiUsageMonitor_brokenLinkDetected___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"SessionNotificationBrokenLinkReason"];

  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"SessionNotificationInterfaceName"];

  if (*(*(a1 + 40) + 160))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[WiFiUsageMonitor brokenLinkDetected:]_block_invoke";
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: handling broken link with reason %@ detected on interface %@", &v11, 0x20u);
    }

    v6 = *(a1 + 32);
    v7 = *(*(a1 + 40) + 160);
    v8 = [v6 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"SessionNotificationBrokenLinkReason"];
    (*(v7 + 16))(v7, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCompletionHandler:(id)a3 withContext:(void *)a4 onQueue:(id)a5
{
  v8 = a3;
  v9 = a5;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__WiFiUsageMonitor_setCompletionHandler_withContext_onQueue___block_invoke;
  v13[3] = &unk_2789C6B80;
  v15 = v8;
  v16 = a4;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(internalQueue, v13);
}

void __61__WiFiUsageMonitor_setCompletionHandler_withContext_onQueue___block_invoke(void *a1)
{
  v2 = MEMORY[0x23839E400](a1[6]);
  v3 = a1[4];
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;

  *(a1[4] + 168) = a1[7];
  v5 = a1[5];
  v6 = (a1[4] + 176);

  objc_storeStrong(v6, v5);
}

- (void)setFaultEventHandler:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__WiFiUsageMonitor_setFaultEventHandler___block_invoke;
  v7[3] = &unk_2789C6BA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __41__WiFiUsageMonitor_setFaultEventHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x23839E400](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)startMonitoringWiFiInterface:(id)a3 withLinkSessionOnly:(BOOL)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke;
  block[3] = &unk_2789C6C20;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 104) allKeys];
    v3 = v2;
    if (*(a1 + 32) && ([v2 containsObject:?] & 1) == 0)
    {
      v4 = [[WiFiUsageInterfaceCapabilities alloc] initWithInterfaceName:*(a1 + 32)];
      [*(*(a1 + 40) + 136) setValue:v4 forKey:*(a1 + 32)];
      v5 = [MEMORY[0x277CBEB18] array];
      v6 = [[WiFiUsageLinkSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
      v7 = v6;
      if (*(*(a1 + 40) + 33) == 1)
      {
        [(WiFiUsageSession *)v6 enableXCTestNotifications];
      }

      [v5 addObject:v7];
      v25 = v7;
      if ((*(a1 + 48) & 1) == 0)
      {
        v26 = [[WiFiUsageDeviceSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v8 = [[WiFiUsageNetworkSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v9 = [[WiFiUsageApplicationSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v10 = [[WiFiUsageSoftApSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v11 = [[WiFiUsageBatterySaveSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v12 = [[WiFiUsageRealTimeCoexSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4];
        v13 = [[WiFiUsagePoorLinkSession alloc] initWithInterfaceName:*(a1 + 32) andCapabilities:v4 onQueue:*(*(a1 + 40) + 144)];
        if (*(*(a1 + 40) + 33) == 1)
        {
          [(WiFiUsageSession *)v26 enableXCTestNotifications];
          if (*(*(a1 + 40) + 33))
          {
            [(WiFiUsageSession *)v8 enableXCTestNotifications];
            if (*(*(a1 + 40) + 33))
            {
              [(WiFiUsageSession *)v9 enableXCTestNotifications];
              if (*(*(a1 + 40) + 33))
              {
                [(WiFiUsageSession *)v10 enableXCTestNotifications];
                if (*(*(a1 + 40) + 33))
                {
                  [(WiFiUsageSession *)v11 enableXCTestNotifications];
                  if (*(*(a1 + 40) + 33))
                  {
                    [(WiFiUsageSession *)v12 enableXCTestNotifications];
                    if (*(*(a1 + 40) + 33))
                    {
                      [(WiFiUsageSession *)v13 enableXCTestNotifications];
                    }
                  }
                }
              }
            }
          }
        }

        [v5 addObject:v26];
        [v5 addObject:v8];
        [v5 addObject:v9];
        [v5 addObject:v10];
        [v5 addObject:v11];
        [v5 addObject:v12];
        [v5 addObject:v13];
      }

      v27 = v3;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = v5;
      v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v31;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v30 + 1) + 8 * i);
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke_289;
            v28[3] = &unk_2789C6BF8;
            v29 = *(a1 + 40);
            [v19 setCompletionHandler:v28 withContext:v29 onQueue:*(v29 + 144)];
            [v19 systemWakeStateDidChange:1 wokenByWiFi:0];
            [v19 lockStateDidChange:*(*(a1 + 40) + 9)];
            [v19 displayStateDidChange:*(*(a1 + 40) + 10)];
            [v19 motionStateDidChange:*(*(a1 + 40) + 48)];
            [v19 callStateDidChange:*(*(a1 + 40) + 13)];
            [v19 mediaStateDidChange:*(*(a1 + 40) + 14)];
            [v19 chargingStateDidChange:*(*(a1 + 40) + 11)];
            [v19 companionStateDidChange:*(*(a1 + 40) + 12)];
            [v19 secondaryInterfaceNameDidChange:*(*(a1 + 40) + 88)];
            [v19 setPrivacyRestrictionDisabled:*(*(a1 + 40) + 32)];
            [v19 setProcessInitTime:*(*(a1 + 40) + 40)];
            [v19 tdLogic_badRssi:*(*(a1 + 40) + 64) goodRSSI:*(*(a1 + 40) + 72)];
          }

          v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v16);
      }

      [*(*(a1 + 40) + 104) setValue:v14 forKey:*(a1 + 32)];
      [*(*(a1 + 40) + 112) setValue:v25 forKey:*(a1 + 32)];
      if (*(*(a1 + 40) + 33) == 1)
      {
        v20 = [MEMORY[0x277CCAB98] defaultCenter];
        v21 = [MEMORY[0x277CCAB88] notificationWithName:@"interface usage session was set" object:0];
        [v20 postNotification:v21];
      }

      v22 = [[WiFiUsageLQMRollingWindow alloc] initWithInterfaceName:*(a1 + 32) andInterfaceCapabilities:v4];
      [(WiFiUsageLQMRollingWindow *)v22 configureDataTriggeredCriteria];
      [*(*(a1 + 40) + 120) setObject:v22 forKey:*(a1 + 32)];

      v3 = v27;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 32);
    *buf = 136315394;
    v36 = "[WiFiUsageMonitor startMonitoringWiFiInterface:withLinkSessionOnly:]_block_invoke";
    v37 = 2112;
    v38 = v23;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName:%@", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke_289(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if ([v6 type] == 9)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [v7 usageSessions];
    v9 = [v6 interfaceName];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v11)
    {
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          if ([v14 type] != 9 && objc_msgSend(v14, "isSessionActive"))
          {
            [v14 poorLinkSessionStats:v6];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v11);
    }
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v15 = *(a1 + 32);
  if (!*(v15 + 152))
  {
    goto LABEL_16;
  }

  if (!*(v15 + 176))
  {
    goto LABEL_16;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = *(v17 + 176);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke_2;
  block[3] = &unk_2789C6BD0;
  v27 = &v28;
  block[4] = v17;
  v26 = v6;
  dispatch_sync(v18, block);

  objc_autoreleasePoolPop(v16);
  if ((v29[3] & 1) == 0)
  {
LABEL_16:
    v19 = objc_autoreleasePoolPush();
    [v7 submitAnalytics:v6];
    objc_autoreleasePoolPop(v19);
  }

  v20 = +[WiFiSoftApUsageMonitor sharedInstance];
  if (v20)
  {
    v21 = [v6 type] == 6;

    if (v21)
    {
      v22 = +[WiFiSoftApUsageMonitor sharedInstance];
      v23 = [v6 sessionSummary:0];
      [v22 updateStats:v23];
    }
  }

  _Block_object_dispose(&v28, 8);

  v24 = *MEMORY[0x277D85DE8];
}

void __69__WiFiUsageMonitor_startMonitoringWiFiInterface_withLinkSessionOnly___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  v4 = *(v2 + 168);
  v5 = [*(a1 + 40) type];
  v6 = [*(a1 + 40) sessionSummary:0];
  *(*(*(a1 + 48) + 8) + 24) = (*(v3 + 16))(v3, v4, v5, v6);
}

- (void)setPrivacyRestrictionDisabled:(BOOL)a3
{
  self->_privacyRestrictionDisabled = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WiFiUsageMonitor_setPrivacyRestrictionDisabled___block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __50__WiFiUsageMonitor_setPrivacyRestrictionDisabled___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            v12 = 0;
            do
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v16 + 1) + 8 * v12++) setPrivacyRestrictionDisabled:*(*(a1 + 32) + 32)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  if (*(*(a1 + 32) + 33) == 1)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = [MEMORY[0x277CCAB88] notificationWithName:@"setPrivacyRestrictionDisabled" object:0];
    [v13 postNotification:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setSystemWakeState:(BOOL)a3 wokenByWiFi:(BOOL)a4
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__WiFiUsageMonitor_setSystemWakeState_wokenByWiFi___block_invoke;
  v5[3] = &unk_2789C6C48;
  v5[4] = self;
  v6 = a3;
  v7 = a4;
  dispatch_async(internalQueue, v5);
}

void __51__WiFiUsageMonitor_setSystemWakeState_wokenByWiFi___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 8) != v2)
  {
    *(v1 + 8) = v2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * v8);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              v14 = 0;
              do
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v18 + 1) + 8 * v14++) systemWakeStateDidChange:*(*(a1 + 32) + 8) wokenByWiFi:*(a1 + 41)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 33) == 1)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [MEMORY[0x277CCAB88] notificationWithName:@"setSystemWakeState" object:0];
    [v15 postNotification:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceLockState:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__WiFiUsageMonitor_setDeviceLockState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

void __39__WiFiUsageMonitor_setDeviceLockState___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 9) != v2)
  {
    *(v1 + 9) = v2;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        v8 = 0;
        do
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v25 + 1) + 8 * v8);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v22;
            do
            {
              v14 = 0;
              do
              {
                if (*v22 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v21 + 1) + 8 * v14++) lockStateDidChange:*(*(a1 + 32) + 9)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v6);
    }

    v1 = *(a1 + 32);
    if ((*(v1 + 9) & 1) == 0 && !*(v1 + 352) && *(v1 + 336) <= 0x64uLL)
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = *(a1 + 32);
      v17 = *(v16 + 352);
      *(v16 + 352) = v15;

      v1 = *(a1 + 32);
    }
  }

  if (*(v1 + 33) == 1)
  {
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = [MEMORY[0x277CCAB88] notificationWithName:@"DeviceLockState" object:0];
    [v18 postNotification:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setDisplayState:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__WiFiUsageMonitor_setDisplayState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

void __36__WiFiUsageMonitor_setDisplayState___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 10) != v2)
  {
    *(v1 + 10) = v2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * v8);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              v14 = 0;
              do
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v18 + 1) + 8 * v14++) displayStateDidChange:*(*(a1 + 32) + 10)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 33) == 1)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [MEMORY[0x277CCAB88] notificationWithName:@"setDisplayState" object:0];
    [v15 postNotification:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setMotionState:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WiFiUsageMonitor_setMotionState___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __35__WiFiUsageMonitor_setMotionState___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (([*(*(a1 + 32) + 48) isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v2 = [*(*(a1 + 32) + 104) allValues];
    v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v21;
      do
      {
        v6 = 0;
        do
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v20 + 1) + 8 * v6);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v17;
            do
            {
              v12 = 0;
              do
              {
                if (*v17 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                [*(*(&v16 + 1) + 8 * v12++) motionStateDidChange:*(a1 + 40)];
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v10);
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v4);
    }
  }

  if (*(*(a1 + 32) + 33) == 1)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = [MEMORY[0x277CCAB88] notificationWithName:@"setMotionState" object:0];
    [v13 postNotification:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setSmartCoverState:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__WiFiUsageMonitor_setSmartCoverState___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __39__WiFiUsageMonitor_setSmartCoverState___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            v12 = 0;
            do
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v16 + 1) + 8 * v12++) smartCoverStateDidChange:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  if (*(*(a1 + 32) + 33) == 1)
  {
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = [MEMORY[0x277CCAB88] notificationWithName:@"setSmartCoverState" object:0];
    [v13 postNotification:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setCallState:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__WiFiUsageMonitor_setCallState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

void __33__WiFiUsageMonitor_setCallState___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 13) != v2)
  {
    *(v1 + 13) = v2;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v50;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v50 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v49 + 1) + 8 * i);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v45 objects:v54 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v46;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v46 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v45 + 1) + 8 * j) callStateDidChange:*(*(a1 + 32) + 13)];
              }

              v12 = [v10 countByEnumeratingWithState:&v45 objects:v54 count:16];
            }

            while (v12);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v6);
    }

    v15 = *(a1 + 32);
    if (*(v15 + 13) == 1)
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      v17 = *(a1 + 32);
      v18 = *(v17 + 240);
      *(v17 + 240) = v16;

      v15 = *(a1 + 32);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [*(v15 + 120) allValues];
    v38 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v38)
    {
      v37 = *v42;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v42 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v41 + 1) + 8 * k);
          v21 = *(a1 + 32);
          if (v21[13])
          {
            v22 = @"Call Start";
          }

          else
          {
            v22 = @"Call End";
          }

          v23 = [v21 canStartLQMAnalysisforTrigger:@"InCall" andReason:v22 onWindow:*(*(&v41 + 1) + 8 * k)];
          if (v23)
          {
            v24 = *(a1 + 32);
            v39 = v24[13];
            v25 = v24[15];
            v26 = v24[16];
            v27 = [WiFiUsageLQMWindowAnalysisInCall alloc];
            v28 = *(a1 + 32);
            if (*(v28 + 13))
            {
              v29 = @"Call Start";
            }

            else
            {
              v29 = @"Call End";
            }

            [*(v28 + 240) timeIntervalSinceNow];
            v31 = *(*(a1 + 32) + 144);
            v40 = v40 & 0xFFFFFFFFFF000000 | v39 | (v25 << 8) | (v26 << 16);
            v32 = [WiFiUsageLQMWindowAnalysisInCall initWithRollingWindow:v27 andCallStatus:"initWithRollingWindow:andCallStatus:andCallDuration:andContext:andTimestamp:onQueue:" andCallDuration:v20 andContext:v29 andTimestamp:-v30 onQueue:?];
            [*(a1 + 32) startLQMAnalysis:v32];
          }
        }

        v38 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v38);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 33) == 1)
  {
    v33 = [MEMORY[0x277CCAB98] defaultCenter];
    v34 = [MEMORY[0x277CCAB88] notificationWithName:@"setCallState" object:0];
    [v33 postNotification:v34];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)setMediaState:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__WiFiUsageMonitor_setMediaState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

void __34__WiFiUsageMonitor_setMediaState___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 14) != v2)
  {
    *(v1 + 14) = v2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * v8);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              v14 = 0;
              do
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v18 + 1) + 8 * v14++) mediaStateDidChange:*(*(a1 + 32) + 14)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 33) == 1)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [MEMORY[0x277CCAB88] notificationWithName:@"setMediaState" object:0];
    [v15 postNotification:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceChargingState:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__WiFiUsageMonitor_setDeviceChargingState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

void __43__WiFiUsageMonitor_setDeviceChargingState___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 11) != v2)
  {
    *(v1 + 11) = v2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * v8);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              v14 = 0;
              do
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v18 + 1) + 8 * v14++) chargingStateDidChange:*(*(a1 + 32) + 11)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v1 = *(a1 + 32);
  }

  if (*(v1 + 33) == 1)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [MEMORY[0x277CCAB88] notificationWithName:@"DeviceChargingState" object:0];
    [v15 postNotification:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setCompanionConnectionState:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__WiFiUsageMonitor_setCompanionConnectionState___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

void __48__WiFiUsageMonitor_setCompanionConnectionState___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 12) != v2)
  {
    *(v1 + 12) = v2;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v17;
            do
            {
              v14 = 0;
              do
              {
                if (*v17 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v16 + 1) + 8 * v14++) companionStateDidChange:*(*(a1 + 32) + 12)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v6);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setCompatibilityModeEnabled:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__WiFiUsageMonitor_setCompatibilityModeEnabled___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

void __48__WiFiUsageMonitor_setCompatibilityModeEnabled___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 28) != v2)
  {
    *(v1 + 28) = v2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v18 + 1) + 8 * j);
                [v15 updateWithCompatibilityMode:*(a1 + 40)];
                if ([v15 type] == 4)
                {
                  v16 = [v15 currentBssSession];
                  [v16 updateWithCompatibilityMode:*(a1 + 40)];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v12);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setSecondaryInterfaceName:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WiFiUsageMonitor_setSecondaryInterfaceName___block_invoke;
  v7[3] = &unk_2789C6608;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __46__WiFiUsageMonitor_setSecondaryInterfaceName___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_22;
  }

  v3 = *(*(a1 + 40) + 88);
  if (!v3)
  {
    goto LABEL_5;
  }

  if (([v3 isEqualToString:?] & 1) == 0)
  {
    v1 = *(a1 + 32);
LABEL_5:
    v4 = [v1 copy];
    v5 = *(a1 + 40);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [*(*(a1 + 40) + 104) allValues];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v22;
            do
            {
              v17 = 0;
              do
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [*(*(&v21 + 1) + 8 * v17++) secondaryInterfaceNameDidChange:*(*(a1 + 40) + 88)];
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v15);
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }
  }

  if (*(*(a1 + 40) + 33) == 1)
  {
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = [MEMORY[0x277CCAB88] notificationWithName:@"secondary interface name set" object:0];
    [v18 postNotification:v19];
  }

LABEL_22:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentApplicationName:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WiFiUsageMonitor_setCurrentApplicationName_withAttributes___block_invoke;
  block[3] = &unk_2789C6C70;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

void __61__WiFiUsageMonitor_setCurrentApplicationName_withAttributes___block_invoke(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = [*(a1[4] + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          do
          {
            v12 = 0;
            do
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v26 + 1) + 8 * v12++) applicationStateDidChange:a1[5] withAttributes:a1[6]];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v4);
  }

  v13 = a1[4];
  if (*(v13 + 33) == 1)
  {
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = [MEMORY[0x277CCAB88] notificationWithName:@"CurrentApplicationName" object:0];
    [v14 postNotification:v15];

    v13 = a1[4];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [*(v13 + 120) allValues];
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v22 + 1) + 8 * v20++) setCurrentApplicationName:a1[5] withAttributes:a1[6]];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateLQMWindowCriteria
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WiFiUsageMonitor_updateLQMWindowCriteria__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __43__WiFiUsageMonitor_updateLQMWindowCriteria__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(*(a1 + 32) + 120) allValues];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) configureDataTriggeredCriteria];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setJoinEvent:(BOOL)a3 withReason:(unint64_t)a4 lastDisconnectReason:(unint64_t)a5 lastJoinFailure:(int64_t)a6 andNetworkDetails:(id)a7 forInterface:(id)a8
{
  v14 = a7;
  v15 = a8;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__WiFiUsageMonitor_setJoinEvent_withReason_lastDisconnectReason_lastJoinFailure_andNetworkDetails_forInterface___block_invoke;
  block[3] = &unk_2789C6C98;
  block[4] = self;
  v20 = v15;
  v25 = a3;
  v21 = v14;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v17 = v14;
  v18 = v15;
  dispatch_async(internalQueue, block);
}

void __112__WiFiUsageMonitor_setJoinEvent_withReason_lastDisconnectReason_lastJoinFailure_andNetworkDetails_forInterface___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = [*(*(a1 + 32) + 104) valueForKey:{*(a1 + 40), 0}];
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v39 + 1) + 8 * v7);
        v9 = *(a1 + 80);
        if (v9 == 1)
        {
          v1 = [*(a1 + 48) networkName];
          v10 = v1;
        }

        else
        {
          v10 = 0;
        }

        [v8 joinStateDidChange:v10 withReason:*(a1 + 56) lastDisconnectReason:*(a1 + 64) lastJoinFailure:*(a1 + 72) andNetworkDetails:*(a1 + 48)];
        if (v9)
        {
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v5);
  }

  if (*(*(a1 + 32) + 33) == 1)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = [MEMORY[0x277CCAB88] notificationWithName:@"SetJoinEvent" object:0];
    [v11 postNotification:v12];
  }

  if (*(a1 + 80) == 1)
  {
    v13 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
    v14 = *(a1 + 32);
    v15 = [WiFiUsageSession joinReasonString:*(a1 + 56)];
    v16 = [v14 canStartLQMAnalysisforTrigger:@"Join" andReason:v15 onWindow:v13];

    if (v16)
    {
      v17 = *(a1 + 32);
      v18 = v17[13];
      v19 = v17[15];
      v20 = v17[16];
      v21 = [WiFiUsageLQMWindowAnalysisJoin alloc];
      v22 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
      v23 = [WiFiUsageSession joinReasonString:*(a1 + 56)];
      v24 = [(WiFiUsageLQMWindowAnalysisJoin *)v21 initWithRollingWindow:v22 andReasonString:v23 andContext:v18 | (v19 << 8) | (v20 << 16) andTimestamp:v16 onQueue:*(*(a1 + 32) + 144)];

      [*(a1 + 32) startLQMAnalysis:v24];
    }

    v25 = *(a1 + 32);
    if (*(v25 + 336) <= 0x64uLL)
    {
      if (*(v25 + 416) || *(v25 + 456))
      {
        *(v25 + 36) = 1;
      }

      else
      {
        ++*(v25 + 344);
        v27 = [MEMORY[0x277CBEAA8] date];
        v28 = *(a1 + 32);
        v29 = *(v28 + 360);
        *(v28 + 360) = v27;

        v30 = MEMORY[0x277CCABB0];
        +[WiFiUsagePrivacyFilter timeSinceBootInSeconds];
        v31 = [v30 numberWithDouble:?];
        v32 = *(a1 + 32);
        v33 = *(v32 + 368);
        *(v32 + 368) = v31;

        v34 = *(a1 + 32);
        if (*(v34 + 352))
        {
          v35 = MEMORY[0x277CCABB0];
          [*(v34 + 360) timeIntervalSinceDate:?];
          v36 = [v35 numberWithDouble:?];
          v37 = *(a1 + 32);
          v38 = *(v37 + 376);
          *(v37 + 376) = v36;
        }
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)setForgetNetworkEvent:(id)a3 forInterface:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__WiFiUsageMonitor_setForgetNetworkEvent_forInterface___block_invoke;
    block[3] = &unk_2789C6C70;
    v11 = v6;
    v12 = self;
    v13 = v7;
    dispatch_async(internalQueue, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[WiFiUsageMonitor setForgetNetworkEvent:forInterface:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s Do Nothing as WiFiDirectDonation Feature Flag Disabled! details:%@", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __55__WiFiUsageMonitor_setForgetNetworkEvent_forInterface___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    *buf = 136315394;
    v16 = "[WiFiUsageMonitor setForgetNetworkEvent:forInterface:]_block_invoke";
    v17 = 2112;
    v18 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s details:%@", buf, 0x16u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1[5] + 104) valueForKey:{a1[6], 0}];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 type] == 3)
        {
          [v8 processForgetNetwork:a1[4]];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setLinkEvent:(BOOL)a3 isInvoluntary:(BOOL)a4 linkChangeReason:(int64_t)a5 linkChangeSubreason:(int64_t)a6 withNetworkDetails:(id)a7 forInterface:(id)a8
{
  v14 = a7;
  v15 = a8;
  internalQueue = self->_internalQueue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __116__WiFiUsageMonitor_setLinkEvent_isInvoluntary_linkChangeReason_linkChangeSubreason_withNetworkDetails_forInterface___block_invoke;
  v19[3] = &unk_2789C6CC0;
  v19[4] = self;
  v20 = v15;
  v24 = a3;
  v25 = a4;
  v21 = v14;
  v22 = a5;
  v23 = a6;
  v17 = v14;
  v18 = v15;
  dispatch_async(internalQueue, v19);
}

void __116__WiFiUsageMonitor_setLinkEvent_isInvoluntary_linkChangeReason_linkChangeSubreason_withNetworkDetails_forInterface___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    v4 = *(a1 + 48);
    if (*(a1 + 72))
    {
      v3 = @"YES";
    }

    *buf = 136315651;
    v73 = "[WiFiUsageMonitor setLinkEvent:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:forInterface:]_block_invoke";
    v74 = 2112;
    v75 = v3;
    v76 = 2113;
    v77 = v4;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - isUp:%@ details:%{private}@", buf, 0x20u);
  }

  if (*(a1 + 72) == 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(v5 + 280);
    *(v5 + 280) = v6;
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = *(v8 + 280);
    *(v8 + 280) = 0;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v9 = [*(*(a1 + 32) + 104) valueForKey:*(a1 + 40)];
  v10 = [v9 countByEnumeratingWithState:&v67 objects:v71 count:16];
  v11 = v10;
  if (v10)
  {
    v12 = *v68;
    v13 = v10;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v67 + 1) + 8 * i);
        [v15 linkStateDidChange:*(a1 + 72) isInvoluntary:*(a1 + 73) linkChangeReason:*(a1 + 56) linkChangeSubreason:*(a1 + 64) withNetworkDetails:*(a1 + 48)];
        if (*(a1 + 72) == 1 && [v15 isSessionActive])
        {
          v16 = [*(a1 + 32) lastApProfile];
          [v15 updateApProfile:v16];
        }
      }

      v13 = [v9 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v13);
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) setLastApProfile:0];
  }

  if (*(*(a1 + 32) + 33) == 1)
  {
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    v18 = [MEMORY[0x277CCAB88] notificationWithName:@"SetLinkEvent" object:0];
    [v17 postNotification:v18];
  }

  if (v11 && (*(a1 + 72) & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v19 = [*(*(a1 + 32) + 120) objectForKey:?];
      v20 = *(a1 + 32);
      v21 = [WiFiUsageSession disconnectReasonString:*(a1 + 56)];
      v22 = [v20 canStartLQMAnalysisforTrigger:@"LinkDown" andReason:v21 onWindow:v19];

      if (v22)
      {
        v23 = *(a1 + 32);
        v66 = v23[13];
        v65 = v23[15];
        v24 = v23[16];
        v25 = [WiFiUsageLQMWindowAnalysisLinkDown alloc];
        v26 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
        v27 = *(a1 + 73);
        v28 = *(a1 + 56);
        v29 = *(a1 + 64);
        if (v2)
        {
          [v2 sessionDuration];
          v31 = v30;
        }

        else
        {
          v31 = 0x8000000000000000;
        }

        v33 = [(WiFiUsageLQMWindowAnalysisLinkDown *)v25 initWithRollingWindow:v26 WithIsInvoluntary:v27 AndLinkChangeReason:v28 AndLinkChangeSubreason:v29 AndDuration:v31 andContext:v66 | (v65 << 8) | (v24 << 16) AndTimestamp:v22 onQueue:*(*(a1 + 32) + 144)];

        [*(a1 + 32) startLQMAnalysis:v33];
      }

      if (v19)
      {
        v34 = [v19 triggerCriteriaFilterList];
        v35 = [v34 count];

        if (v35)
        {
          if ([v19 endOngoingCriteria])
          {
            v36 = *(a1 + 32);
            v37 = v36[13];
            v38 = v36[15];
            v39 = v36[16];
            v40 = [WiFiUsageLQMWindowAnalysisDataTriggered alloc];
            v41 = [MEMORY[0x277CBEAA8] now];
            v42 = [(WiFiUsageLQMWindowAnalysisDataTriggered *)v40 initWithRollingWindow:v19 andSubReason:@"LinkDown" andContext:v37 | (v38 << 8) | (v39 << 16) andTimestamp:v41 onQueue:*(*(a1 + 32) + 144)];

            [*(a1 + 32) startLQMAnalysis:v42];
            [v19 cleanUpStashedMedians];
            [v19 clearOngoingCriteriaDates];
          }
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 40);
      *buf = 136315394;
      v73 = "[WiFiUsageMonitor setLinkEvent:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:forInterface:]_block_invoke";
      v74 = 2112;
      v75 = v32;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName:%@", buf, 0x16u);
    }
  }

  if (*(a1 + 72))
  {
    goto LABEL_53;
  }

  if (v2)
  {
    [v2 sessionDuration];
    v44 = v43;
  }

  else
  {
    v44 = 9.22337204e18;
  }

  v45 = [*(a1 + 48) connectedBss];
  v46 = [v45 bssid];
  [WiFiUsageAccessPointProfile updateWithAssocTime:v46 forBssid:v44];

  if (*(a1 + 72))
  {
LABEL_53:
    v47 = *(a1 + 32);
    if (*(v47 + 336) <= 0x64uLL)
    {
      if (*(v47 + 416) || *(v47 + 456))
      {
        *(v47 + 36) = 1;
      }

      else
      {
        v49 = [MEMORY[0x277CBEAA8] date];
        v50 = *(a1 + 32);
        v51 = *(v50 + 384);
        *(v50 + 384) = v49;

        v52 = MEMORY[0x277CCABB0];
        +[WiFiUsagePrivacyFilter timeSinceBootInSeconds];
        v53 = [v52 numberWithDouble:?];
        v54 = *(a1 + 32);
        v55 = *(v54 + 392);
        *(v54 + 392) = v53;

        v56 = *(a1 + 32);
        if (*(v56 + 352))
        {
          v57 = MEMORY[0x277CCABB0];
          [*(v56 + 384) timeIntervalSinceDate:?];
          v58 = [v57 numberWithDouble:?];
          v59 = *(a1 + 32);
          v60 = *(v59 + 400);
          *(v59 + 400) = v58;

          v56 = *(a1 + 32);
        }

        if (*(v56 + 360))
        {
          v61 = MEMORY[0x277CCABB0];
          [*(v56 + 384) timeIntervalSinceDate:?];
          v62 = [v61 numberWithDouble:?];
          v63 = *(a1 + 32);
          v64 = *(v63 + 408);
          *(v63 + 408) = v62;
        }
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

+ (void)appendTDStateToDict:(id)a3 from:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = MEMORY[0x277CCABB0];
  if (!v6)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v11 = @"TD_inTDEval";
LABEL_18:
    [v5 setObject:v10 forKeyedSubscript:v11];

    goto LABEL_19;
  }

  if ([v6 isSessionActive])
  {
    v9 = [v7 isInTDEval];
  }

  else
  {
    v9 = 0;
  }

  v12 = [v8 numberWithBool:v9];
  [v5 setObject:v12 forKeyedSubscript:@"TD_inTDEval"];

  if ([v7 isSessionActive])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "tdConfirmed")}];
    [v5 setObject:v13 forKeyedSubscript:@"TD_Triggered"];

    if ([v7 isLastDecisionStateValid])
    {
      v14 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v15 = [v14 numberWithBool:v118];
      [v5 setObject:v15 forKeyedSubscript:@"TD_Decision_TxPER"];

      v16 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v17 = [v16 numberWithBool:v117];
      [v5 setObject:v17 forKeyedSubscript:@"TD_Decision_FWTxPER"];

      v18 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v19 = [v18 numberWithBool:v116];
      [v5 setObject:v19 forKeyedSubscript:@"TD_Decision_BeaconPER"];

      v20 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v21 = [v20 numberWithBool:v115];
      [v5 setObject:v21 forKeyedSubscript:@"TD_Decision_GatewayARPFailure"];

      v22 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v23 = [v22 numberWithBool:v114];
      [v5 setObject:v23 forKeyedSubscript:@"TD_Decision_SymptomsDNSError"];

      v24 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v25 = [v24 numberWithBool:v113];
      [v5 setObject:v25 forKeyedSubscript:@"TD_Decision_AutoLeave"];

      v26 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v27 = [v26 numberWithBool:v112];
      [v5 setObject:v27 forKeyedSubscript:@"TD_Decision_ActiveProbe"];

      v28 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v29 = [v28 numberWithBool:v111];
      [v5 setObject:v29 forKeyedSubscript:@"TD_Decision_FastTD"];

      v30 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v31 = [v30 numberWithInteger:v110];
      [v5 setObject:v31 forKeyedSubscript:@"TD_AutoLeaveRSSIthreshold"];
    }

    if ([v7 isLastFastTdVotesValid])
    {
      v32 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v33 = [v32 numberWithBool:v109];
      [v5 setObject:v33 forKeyedSubscript:@"TD_VoteFastTD_LinkRecommendation"];

      v34 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v35 = [v34 numberWithBool:v108];
      [v5 setObject:v35 forKeyedSubscript:@"TD_VoteFastTD_TXPER"];

      v36 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v37 = [v36 numberWithBool:v107];
      [v5 setObject:v37 forKeyedSubscript:@"TD_VoteFastTD_FWTXPER"];

      v38 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v39 = [v38 numberWithBool:v106];
      [v5 setObject:v39 forKeyedSubscript:@"TD_VoteFastTD_BeaconPER"];

      v40 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v41 = [v40 numberWithBool:v105];
      [v5 setObject:v41 forKeyedSubscript:@"TD_VoteFastTD_2GPoorLink"];

      v42 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v43 = [v42 numberWithBool:v104];
      [v5 setObject:v43 forKeyedSubscript:@"TD_VoteFastTD_2GDataStall"];

      v44 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v45 = [v44 numberWithBool:v103];
      [v5 setObject:v45 forKeyedSubscript:@"TD_VoteFastTD_HighLatency"];

      v46 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v47 = [v46 numberWithBool:v102];
      [v5 setObject:v47 forKeyedSubscript:@"TD_VoteFastTD_InsufficientRxFrames"];

      v48 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v49 = [v48 numberWithInteger:v101];
      [v5 setObject:v49 forKeyedSubscript:@"TD_VoteFastTD_VoteCount"];

      v50 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v51 = [v50 numberWithBool:v100];
      [v5 setObject:v51 forKeyedSubscript:@"TD_StateFastTD_RTApp"];

      v52 = MEMORY[0x277CCABB0];
      [v7 last_FastTdVotes];
      v53 = [v52 numberWithBool:v99];
      [v5 setObject:v53 forKeyedSubscript:@"TD_StateFastTD_Cheap5G"];
    }

    v54 = [v7 lastTDEval_ConfirmedAt];
    if (v54)
    {
      v55 = v54;
      v56 = [v7 isLastSuppressStateValid];

      if (v56)
      {
        v57 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 24) & 1}];
        [v5 setObject:v57 forKeyedSubscript:@"TD_Suppress_SymptomsNODataStall"];

        v58 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 32) & 1}];
        [v5 setObject:v58 forKeyedSubscript:@"TD_Suppress_SymptomsAppPolicy"];

        v59 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 40) & 1}];
        [v5 setObject:v59 forKeyedSubscript:@"TD_Suppress_FastCheapCellular"];

        v60 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 48) & 1}];
        [v5 setObject:v60 forKeyedSubscript:@"TD_Suppress_2dBGuard"];

        v61 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 56) & 1}];
        [v5 setObject:v61 forKeyedSubscript:@"TD_Suppress_NoFGnetwApp"];

        v62 = MEMORY[0x277CCABB0];
        [v7 last_SuppressState];
        v64 = [v62 numberWithBool:v63 & 1];
        [v5 setObject:v64 forKeyedSubscript:@"TD_Suppress_TTR"];

        v65 = MEMORY[0x277CCABB0];
        [v7 last_SuppressState];
        v67 = [v65 numberWithBool:(v66 >> 8) & 1];
        [v5 setObject:v67 forKeyedSubscript:@"TD_Suppress_UserInput"];

        v68 = MEMORY[0x277CCABB0];
        [v7 last_SuppressState];
        v70 = [v68 numberWithBool:(v69 >> 16) & 1];
        [v5 setObject:v70 forKeyedSubscript:@"TD_Suppress_GoodAfterRoam"];

        v71 = MEMORY[0x277CCABB0];
        [v7 last_SuppressState];
        v73 = [v71 numberWithBool:(v72 >> 24) & 1];
        [v5 setObject:v73 forKeyedSubscript:@"TD_Suppress_ActiveProbing"];

        v74 = MEMORY[0x277CCABB0];
        [v7 last_SuppressState];
        v76 = [v74 numberWithBool:HIDWORD(v75) & 1];
        [v5 setObject:v76 forKeyedSubscript:@"TD_Suppress_Roam"];
      }
    }

    if ([v7 isLastDecisionStateValid])
    {
      [v7 last_DecisionState];
      v77 = [WiFiUsagePrivacyFilter getLabelForTDMode:v98];
      [v5 setObject:v77 forKeyedSubscript:@"TD_Mode"];

      v78 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v79 = [v78 numberWithBool:v97];
      [v5 setObject:v79 forKeyedSubscript:@"TD_EdgeBSS"];

      v80 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v81 = [v80 numberWithBool:v96];
      [v5 setObject:v81 forKeyedSubscript:@"TD_MotionDetected"];

      v82 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v83 = [v82 numberWithBool:v95];
      [v5 setObject:v83 forKeyedSubscript:@"TD_WalkoutDetected"];

      v84 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v85 = [v84 numberWithBool:v94];
      [v5 setObject:v85 forKeyedSubscript:@"TD_WaitForRoam"];

      v86 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v87 = [v86 numberWithBool:v93];
      [v5 setObject:v87 forKeyedSubscript:@"TD_AppsUsingWiFi"];

      v88 = MEMORY[0x277CCABB0];
      [v7 last_DecisionState];
      v89 = [v88 numberWithBool:v92];
      [v5 setObject:v89 forKeyedSubscript:@"TD_monitorOnly"];
    }

    if ([v7 isLastSuppressStateValid])
    {
      v90 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 16) & 1}];
      [v5 setObject:v90 forKeyedSubscript:@"TD_FastTDEvaluation"];

      v91 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "last_SuppressState") & 1}];
      [v5 setObject:v91 forKeyedSubscript:@"TD_AggressiveTD"];

      v10 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v7, "last_SuppressState") >> 8) & 1}];
      v11 = @"TD_RNF_allowed";
      goto LABEL_18;
    }
  }

LABEL_19:
}

- (void)appendUsbStatsToDict:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAnyUsbInserted];
  [v4 setObject:v5 forKeyedSubscript:@"isUsbInserted"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSArray count](self->_usbDevices, "count")}];
  [v4 setObject:v6 forKeyedSubscript:@"usbDevicesCount"];

  if ([(NSArray *)self->_usbDevices count])
  {
    v7 = [(NSArray *)self->_usbDevices firstObject];
    v8 = +[WiFiUsagePrivacyFilter getLabelForUsbVendor:](WiFiUsagePrivacyFilter, "getLabelForUsbVendor:", [v7 vid]);
    [v4 setObject:v8 forKeyedSubscript:@"usbVendor"];

    v9 = [v4 objectForKeyedSubscript:@"usbVendor"];
    LOBYTE(v7) = [v9 isEqualToString:@"Other"];

    if ((v7 & 1) == 0)
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = [(NSArray *)self->_usbDevices firstObject];
      v12 = [v10 numberWithInteger:{objc_msgSend(v11, "vid")}];
      [v4 setObject:v12 forKeyedSubscript:@"usbVendorID"];
    }
  }

  v26 = v4;
  v13 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = self->_usbDevices;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        if ([v20 vidIsApple])
        {
          v17 = [v20 vidIsApple];
        }

        v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "controllerID")}];
        [v13 addObject:v21];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:v17 & 1];
  [v26 setObject:v22 forKeyedSubscript:@"isAnyUSBDeviceVendorApple"];

  if ([v13 count] == 1)
  {
    v23 = [v13 anyObject];
    [v26 setObject:v23 forKeyedSubscript:@"usbController"];
  }

  if ([(NSArray *)self->_usbDevices count]&& self->_noiseDeltaUponUSBInsertion != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v26 setObject:v24 forKeyedSubscript:@"noiseDeltaUponUSBInsertion"];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)appendBTStatsToDict:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  inActiveSco = self->_inActiveSco;
  v6 = a3;
  v7 = [v4 numberWithBool:inActiveSco];
  [v6 setObject:v7 forKeyedSubscript:@"isSCOActive"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_inActiveA2dp];
  [v6 setObject:v8 forKeyedSubscript:@"isA2dpActive"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_inActiveCall];
  [v6 setObject:v9 forKeyedSubscript:@"inCall"];

  if (self->_curBTAudioBand)
  {
    v10 = @"5";
  }

  else
  {
    v10 = @"2.4";
  }

  [v6 setObject:v10 forKeyedSubscript:@"BTBand"];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_inActiveUniAoS];
  [v6 setObject:v11 forKeyedSubscript:@"isUniAoSActive"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_inActiveBiAoS];
  [v6 setObject:v12 forKeyedSubscript:@"isBiAoSActive"];
}

- (void)appendSARStatsToDict:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  lastWiFiSARState = self->_lastWiFiSARState;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInteger:lastWiFiSARState];
  [v5 setObject:v6 forKeyedSubscript:@"wifiSARState"];
}

- (void)updateLinkQuality:(id)a3 forInterface:(id)a4 supportsLinkRecommendations:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__WiFiUsageMonitor_updateLinkQuality_forInterface_supportsLinkRecommendations___block_invoke;
  v13[3] = &unk_2789C6CE8;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v17 = a5;
  v11 = v8;
  v12 = v9;
  dispatch_async(internalQueue, v13);
}

void __79__WiFiUsageMonitor_updateLinkQuality_forInterface_supportsLinkRecommendations___block_invoke(uint64_t a1)
{
  v87 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 184);
    v3 = [WiFiUsageInterfaceStats statsForInterfaceName:?];
    v4 = v3;
    if (v2)
    {
      v5 = [WiFiUsageInterfaceStats statsForInterfaceName:*(*(a1 + 40) + 88)];
      [*(a1 + 48) updateWithTxBytes:objc_msgSend(v4 RxBytes:"txBytes") - objc_msgSend(*(*(a1 + 40) + 184) TxL3Packets:"txBytes") RxL3Packets:objc_msgSend(v4 txBytesSecondary:"rxBytes") - objc_msgSend(*(*(a1 + 40) + 184) rxBytesSecondary:{"rxBytes"), objc_msgSend(v4, "txL3Packets") - objc_msgSend(*(*(a1 + 40) + 184), "txL3Packets"), objc_msgSend(v4, "rxL3Packets") - objc_msgSend(*(*(a1 + 40) + 184), "rxL3Packets"), objc_msgSend(v5, "txBytes") - objc_msgSend(*(*(a1 + 40) + 192), "txBytes"), objc_msgSend(v5, "rxBytes") - objc_msgSend(*(*(a1 + 40) + 192), "rxBytes")}];
      v6 = *(a1 + 40);
      v7 = *(v6 + 184);
      *(v6 + 184) = v4;
      v8 = v4;

      v9 = *(a1 + 40);
      v10 = *(v9 + 192);
      *(v9 + 192) = v5;
    }

    else
    {
      v12 = *(a1 + 40);
      v13 = *(v12 + 184);
      *(v12 + 184) = v3;

      v14 = [WiFiUsageInterfaceStats statsForInterfaceName:*(*(a1 + 40) + 88)];
      v15 = *(a1 + 40);
      v8 = *(v15 + 192);
      *(v15 + 192) = v14;
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v16 = [*(*(a1 + 40) + 104) valueForKey:*(a1 + 32)];
    v17 = [v16 countByEnumeratingWithState:&v77 objects:v82 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v78;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v78 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v77 + 1) + 8 * i);
          if ([v21 expectsLQMUpdates])
          {
            [v21 linkQualityDidChange:*(a1 + 48)];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v77 objects:v82 count:16];
      }

      while (v18);
    }

    v22 = *(a1 + 40);
    if (*(v22 + 33) == 1)
    {
      v23 = [MEMORY[0x277CCAB98] defaultCenter];
      v24 = [MEMORY[0x277CCAB88] notificationWithName:@"UpdateLinkQuality" object:0];
      [v23 postNotification:v24];

      v22 = *(a1 + 40);
    }

    v25 = [*(v22 + 120) valueForKey:*(a1 + 32)];
    v26 = [v25 capabilities];
    if (!v26 || (v27 = v26, [v25 capabilities], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "maxInterfacePHYRate"), v28, v27, !v29))
    {
      v30 = [[WiFiUsageInterfaceCapabilities alloc] initWithInterfaceName:*(a1 + 32)];
      if (v30)
      {
        [*(*(a1 + 40) + 136) setValue:v30 forKey:*(a1 + 32)];
        [v25 setCapabilities:v30];
      }
    }

    v31 = *(a1 + 48);
    v32 = [v25 capabilities];
    [v31 updateWithInterfaceCapabilities:v32 AndNetworkDetails:*(*(a1 + 40) + 280)];

    v33 = [v25 triggerCriteriaFilterList];
    if ([(WiFiUsageLQMWindowAnalysisDataTriggered *)v33 count])
    {
      v34 = [v25 checkCriteriaBSSIDWithSample:*(a1 + 48)];

      if (!v34)
      {
        goto LABEL_27;
      }

      v35 = *(a1 + 40);
      v36 = v35[13];
      v37 = v35[15];
      v38 = v35[16];
      v39 = [WiFiUsageLQMWindowAnalysisDataTriggered alloc];
      v40 = [MEMORY[0x277CBEAA8] now];
      v33 = [(WiFiUsageLQMWindowAnalysisDataTriggered *)v39 initWithRollingWindow:v25 andSubReason:@"BSSID Change" andContext:v36 | (v37 << 8) | (v38 << 16) andTimestamp:v40 onQueue:*(*(a1 + 40) + 144)];

      [*(a1 + 40) startLQMAnalysis:v33];
      [v25 cleanUpStashedMedians];
      [v25 clearOngoingCriteriaDates];
    }

LABEL_27:
    [v25 addSample:*(a1 + 48)];
    if ((*(a1 + 56) & 1) == 0 && ([*(a1 + 40) isBSPActive] & 1) == 0)
    {
      [*(a1 + 40) submitLqmToCA:*(a1 + 48) forInterface:*(a1 + 32)];
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v41 = [*(*(a1 + 40) + 224) copy];
    v42 = [v41 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v74;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v74 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [*(*(&v73 + 1) + 8 * j) updateWithLQMSample:*(a1 + 48)];
        }

        v43 = [v41 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v43);
    }

    v46 = [v25 triggerCriteriaFilterList];
    v47 = [v46 count];

    if (v47)
    {
      v48 = [v25 evaluateCriteriaWithStopUponFirstMatch:1];
      if ([v48 matched])
      {
        v49 = [v48 firstTriggered];
        v50 = [v48 currentSample];
        v51 = [v49 isEqual:v50];
      }

      else
      {
        v51 = 0;
      }

      if ([v48 matched])
      {
        v52 = 0;
        v53 = &stru_28487EF20;
        v54 = @"Match Start";
        if (!v51)
        {
          v54 = &stru_28487EF20;
        }

        v55 = &stru_28487EF20;
      }

      else
      {
        v56 = [v48 firstTriggered];

        v53 = &stru_28487EF20;
        v54 = @"Match Start";
        if (!v51)
        {
          v54 = &stru_28487EF20;
        }

        v52 = v56 != 0;
        v55 = @"Match End";
        if (!v56)
        {
          v55 = &stru_28487EF20;
        }

        if ((v51 & v52) != 0)
        {
          v53 = @"&";
        }
      }

      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v54, v53, v55];
      if ((v51 | v52) == 1)
      {
        v58 = [MEMORY[0x277CBEAA8] now];
        if (v51)
        {
          v59 = [*(a1 + 40) canStartLQMAnalysisforTrigger:@"Match Start" andReason:v57 onWindow:v25];

          v58 = v59;
        }

        v60 = *(a1 + 40);
        v61 = [[WiFiUsageLQMWindowAnalysisDataTriggered alloc] initWithRollingWindow:v25 andSubReason:v57 andContext:*(v60 + 13) | (*(v60 + 15) << 8) | (*(v60 + 16) << 16) andTimestamp:v58 onQueue:*(v60 + 144)];
        [*(a1 + 40) startLQMAnalysis:v61];
      }

      [v25 cleanUpStashedMedians];
      if (v52)
      {
        [v25 clearOngoingCriteriaDates];
      }
    }

    if ([WiFiUsageLQMWindowAnalysis isInCallAnalysisDue:*(*(a1 + 40) + 248)])
    {
      v62 = [*(*(a1 + 40) + 120) objectForKey:*(a1 + 32)];
      v63 = [*(a1 + 40) canStartLQMAnalysisforTrigger:@"InCall" andReason:@"in Call" onWindow:v62];
      if (v63)
      {
        v64 = *(a1 + 40);
        v65 = v64[13];
        v66 = v64[15];
        v67 = v64[16];
        v68 = [WiFiUsageLQMWindowAnalysisInCall alloc];
        v69 = [*(*(a1 + 40) + 120) objectForKey:*(a1 + 32)];
        [*(*(a1 + 40) + 240) timeIntervalSinceNow];
        v71 = [(WiFiUsageLQMWindowAnalysisInCall *)v68 initWithRollingWindow:v69 andCallStatus:@"in Call" andCallDuration:v65 | (v66 << 8) | (v67 << 16) andContext:v63 andTimestamp:*(*(a1 + 40) + 144) onQueue:-v70];

        [*(a1 + 40) startLQMAnalysis:v71];
      }
    }

    goto LABEL_63;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v84 = "[WiFiUsageMonitor updateLinkQuality:forInterface:supportsLinkRecommendations:]_block_invoke";
    v85 = 2112;
    v86 = v11;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

LABEL_63:
  v72 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconInfo:(id)a3 andParsedIE:(id)a4 forInterface:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [v8 copy];
    v12 = [v9 copy];
    internalQueue = self->_internalQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__WiFiUsageMonitor_updateBeaconInfo_andParsedIE_forInterface___block_invoke;
    v17[3] = &unk_2789C6D10;
    v18 = v8;
    v19 = self;
    v20 = v11;
    v21 = v12;
    v14 = v12;
    v15 = v11;
    dispatch_async(internalQueue, v17);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[WiFiUsageMonitor updateBeaconInfo:andParsedIE:forInterface:]";
    v24 = 2112;
    v25 = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __62__WiFiUsageMonitor_updateBeaconInfo_andParsedIE_forInterface___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [WiFiUsageAccessPointProfile profileFromBeaconData:*(a1 + 48) andParsedIE:*(a1 + 56)];
    [*(a1 + 40) setLastApProfile:v2];
  }
}

- (void)updateWPSInfo:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WiFiUsageMonitor_updateWPSInfo___block_invoke;
  block[3] = &unk_2789C6630;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, block);
}

- (BOOL)submitBeaconInfoToCAForInterface:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(NSMutableDictionary *)self->_usageSessions valueForKey:v4, 0];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 isSessionActive] && objc_msgSend(v9, "type") == 4)
          {
            v6 = [v9 networkDetails];
            v10 = [v6 connectedBss];
            v11 = [v10 bssid];

            [WiFiUsageAccessPointProfile submitToCAForBSSID:v11];
            LOBYTE(v6) = 1;
            goto LABEL_16;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiUsageMonitor submitBeaconInfoToCAForInterface:];
    }

    LOBYTE(v6) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setPowerBudget:(int64_t)a3 andThermalIndex:(int64_t)a4 forInterface:(id)a5
{
  v8 = a5;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__WiFiUsageMonitor_setPowerBudget_andThermalIndex_forInterface___block_invoke;
  v11[3] = &unk_2789C6D38;
  v12 = v8;
  v13 = self;
  v14 = a3;
  v15 = a4;
  v10 = v8;
  dispatch_async(internalQueue, v11);
}

void __64__WiFiUsageMonitor_setPowerBudget_andThermalIndex_forInterface___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [*(a1[5] + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v11 + 1) + 8 * v6++) powerBudgetDidChange:a1[6] andThermalIndex:a1[7]];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    if (*(a1[5] + 33) == 1)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = [MEMORY[0x277CCAB88] notificationWithName:@"SetPowerBudgetAndThermalIndex" object:0];
      [v7 postNotification:v8];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    *buf = 136315394;
    v17 = "[WiFiUsageMonitor setPowerBudget:andThermalIndex:forInterface:]_block_invoke";
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setBluetoothState:(BOOL)a3 connectedDeviceCount:(unint64_t)a4 inA2dp:(BOOL)a5 inSco:(BOOL)a6 inUniAoS:(BOOL)a7 inBiAoS:(BOOL)a8 btAudioBand:(BOOL)a9
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__WiFiUsageMonitor_setBluetoothState_connectedDeviceCount_inA2dp_inSco_inUniAoS_inBiAoS_btAudioBand___block_invoke;
  block[3] = &unk_2789C6D60;
  v11 = a5;
  v12 = a6;
  block[4] = self;
  block[5] = a4;
  v13 = a7;
  v14 = a8;
  v15 = a9;
  v16 = a3;
  dispatch_async(internalQueue, block);
}

void __101__WiFiUsageMonitor_setBluetoothState_connectedDeviceCount_inA2dp_inSco_inUniAoS_inBiAoS_btAudioBand___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (*(v2 + 15) != v3 || *(v2 + 16) != *(a1 + 49) || *(v2 + 56) != *(a1 + 40) || *(v2 + 17) != *(a1 + 50) || *(v2 + 18) != *(a1 + 51) || *(v2 + 19) != *(a1 + 52))
  {
    *(v2 + 15) = v3;
    v4 = *(a1 + 40);
    *(*(a1 + 32) + 16) = *(a1 + 49);
    *(*(a1 + 32) + 56) = v4;
    *(*(a1 + 32) + 17) = *(a1 + 50);
    *(*(a1 + 32) + 18) = *(a1 + 51);
    *(*(a1 + 32) + 19) = *(a1 + 52);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [*(*(a1 + 32) + 104) allValues];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * v9);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              v15 = 0;
              do
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                LOBYTE(v19) = *(a1 + 52);
                [*(*(&v20 + 1) + 8 * v15++) bluetoothStateDidChange:*(a1 + 53) connectedDeviceCount:*(a1 + 40) inA2dp:*(a1 + 48) inSco:*(a1 + 49) inUniAoS:*(a1 + 50) inBiAoS:*(a1 + 51) btAudioBand:v19];
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v13);
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    v2 = *(a1 + 32);
  }

  if (*(v2 + 33) == 1)
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = [MEMORY[0x277CCAB88] notificationWithName:@"SetBluetoothStateAndConnectedDeviceCountAndInA2dpAndInSco" object:0];
    [v16 postNotification:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setSARState:(BOOL)a3 builtInReceiverOn:(BOOL)a4
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__WiFiUsageMonitor_setSARState_builtInReceiverOn___block_invoke;
  v5[3] = &unk_2789C6C48;
  v6 = a3;
  v7 = a4;
  v5[4] = self;
  dispatch_async(internalQueue, v5);
}

uint64_t __50__WiFiUsageMonitor_setSARState_builtInReceiverOn___block_invoke(uint64_t result)
{
  v1 = 3;
  if (*(result + 41))
  {
    v1 = 1;
  }

  v2 = 4;
  if (*(result + 41))
  {
    v2 = 2;
  }

  if (*(result + 40))
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  *(*(result + 32) + 496) = v3;
  return result;
}

- (void)setAwdlState:(BOOL)a3 inMode:(int64_t)a4
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WiFiUsageMonitor_setAwdlState_inMode___block_invoke;
  block[3] = &unk_2789C6D88;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(internalQueue, block);
}

void __40__WiFiUsageMonitor_setAwdlState_inMode___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v2[20] != v3)
  {
    v2[20] = v3;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = [*(*(a1 + 32) + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        v8 = 0;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v23 + 1) + 8 * v8);
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            do
            {
              v14 = 0;
              do
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v19 + 1) + 8 * v14++) awdlStateDidChange:*(a1 + 48) inMode:*(a1 + 40)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }

    v2 = *(a1 + 32);
    if (v2[20] == 1)
    {
      v15 = [v2 rangingSession];
      [v15 rangingLinkUp];

      v2 = *(a1 + 32);
    }
  }

  if (v2[33] == 1)
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = [MEMORY[0x277CCAB88] notificationWithName:@"setAwdlState" object:0];
    [v16 postNotification:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setSoftApState:(BOOL)a3 requester:(id)a4 status:(id)a5 changeReason:(id)a6 channelNumber:(unint64_t)a7 countryCode:(unint64_t)a8 isHidden:(BOOL)a9 isInfraConnected:(BOOL)a10 isAwdlUp:(BOOL)a11 lowPowerModeDuration:(double)a12 compatibilityMode:(BOOL)a13 requestToUpLatency:(double)a14 idleTimeBeforeTeardownSec:(double)a15 idleTimeAfterLastClientDisconnectedSec:(double)a16
{
  v25 = a4;
  v26 = a5;
  v27 = a6;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __249__WiFiUsageMonitor_setSoftApState_requester_status_changeReason_channelNumber_countryCode_isHidden_isInfraConnected_isAwdlUp_lowPowerModeDuration_compatibilityMode_requestToUpLatency_idleTimeBeforeTeardownSec_idleTimeAfterLastClientDisconnectedSec___block_invoke;
  block[3] = &unk_2789C6DB0;
  v43 = a3;
  block[4] = self;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v37 = a7;
  v38 = a8;
  v44 = a9;
  v45 = a10;
  v46 = a11;
  v47 = a13;
  v39 = a12;
  v40 = a14;
  v41 = a15;
  v42 = a16;
  v29 = v27;
  v30 = v26;
  v31 = v25;
  dispatch_async(internalQueue, block);
}

void __249__WiFiUsageMonitor_setSoftApState_requester_status_changeReason_channelNumber_countryCode_isHidden_isInfraConnected_isAwdlUp_lowPowerModeDuration_compatibilityMode_requestToUpLatency_idleTimeBeforeTeardownSec_idleTimeAfterLastClientDisconnectedSec___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              LODWORD(v14) = *(a1 + 113);
              [*(*(&v15 + 1) + 8 * v12++) softApStateDidChange:*(a1 + 112) requester:*(a1 + 40) status:*(a1 + 48) changeReason:*(a1 + 56) channelNumber:*(a1 + 64) countryCode:*(a1 + 72) isHidden:*(a1 + 80) isInfraConnected:*(a1 + 88) isAwdlUp:*(a1 + 96) lowPowerModeDuration:*(a1 + 104) compatibilityMode:v14 requestToUpLatency:? idleTimeBeforeTeardownSec:? idleTimeAfterLastClientDisconnectedSec:?];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addSoftApClientEvent:(BOOL)a3 identifier:(id)a4 isAppleClient:(BOOL)a5 isInstantHotspot:(BOOL)a6 isAutoHotspot:(BOOL)a7 isHidden:(BOOL)a8
{
  v14 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__WiFiUsageMonitor_addSoftApClientEvent_identifier_isAppleClient_isInstantHotspot_isAutoHotspot_isHidden___block_invoke;
  block[3] = &unk_2789C6DD8;
  v19 = a3;
  block[4] = self;
  v18 = v14;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v16 = v14;
  dispatch_async(internalQueue, block);
}

void __106__WiFiUsageMonitor_addSoftApClientEvent_identifier_isAppleClient_isInstantHotspot_isAutoHotspot_isHidden___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v15 + 1) + 8 * j);
              if ([v13 type] == 6)
              {
                [v13 addSoftApClientEvent:*(a1 + 48) identifier:*(a1 + 40) isAppleClient:*(a1 + 49) isInstantHotspot:*(a1 + 50) isAutoHotspot:*(a1 + 51) isHidden:*(a1 + 52)];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addSoftApCoexEvent:(unint64_t)a3 deniedUnii1ChannelMap:(unint64_t)a4 deniedUnii2aChannelMap:(unint64_t)a5 deniedUnii2cChannelMap:(unint64_t)a6 deniedUnii3ChannelMap:(unint64_t)a7
{
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __129__WiFiUsageMonitor_addSoftApCoexEvent_deniedUnii1ChannelMap_deniedUnii2aChannelMap_deniedUnii2cChannelMap_deniedUnii3ChannelMap___block_invoke;
  v8[3] = &unk_2789C6E00;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = a5;
  v8[8] = a6;
  v8[9] = a7;
  dispatch_async(internalQueue, v8);
}

void __129__WiFiUsageMonitor_addSoftApCoexEvent_deniedUnii1ChannelMap_deniedUnii2aChannelMap_deniedUnii2cChannelMap_deniedUnii3ChannelMap___block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1[4] + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v15 + 1) + 8 * j);
              if ([v13 type] == 6)
              {
                [v13 addSoftApCoexEvent:a1[5] deniedUnii1ChannelMap:a1[6] deniedUnii2aChannelMap:a1[7] deniedUnii2cChannelMap:a1[8] deniedUnii3ChannelMap:a1[9]];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setRoamingState:(BOOL)a3 withReason:(unint64_t)a4 asString:(id)a5 andStatus:(unint64_t)a6 asString:(id)a7 andLatency:(unint64_t)a8 andRoamData:(id)a9 andPingPongSequence:(id)a10 forInterface:(id)a11
{
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  queue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __131__WiFiUsageMonitor_setRoamingState_withReason_asString_andStatus_asString_andLatency_andRoamData_andPingPongSequence_forInterface___block_invoke;
  block[3] = &unk_2789C6E28;
  v29 = v19;
  v30 = self;
  v38 = a3;
  v35 = a4;
  v36 = a6;
  v37 = a8;
  v31 = v20;
  v32 = v18;
  v33 = v16;
  v34 = v17;
  v21 = v17;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  v25 = v19;
  dispatch_async(queue, block);
}

void __131__WiFiUsageMonitor_setRoamingState_withReason_asString_andStatus_asString_andLatency_andRoamData_andPingPongSequence_forInterface___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [[WiFiUsageSessionPingPongStats alloc] initWithPingPongSequence:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 104);
  if (*(v3 + 21) == v4)
  {
    v5 = 0;
    goto LABEL_21;
  }

  *(v3 + 21) = v4;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [*(*(a1 + 40) + 104) valueForKey:*(a1 + 48)];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    v5 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v8 = v7;
  v5 = 0;
  v9 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * i);
      [v11 roamingStateDidChange:*(a1 + 104) reason:*(a1 + 80) andStatus:*(a1 + 88) andLatency:*(a1 + 96) andRoamData:*(a1 + 56) andPingPongStats:v2];
      if ([v11 type] == 4)
      {
        v12 = [v11 currentBssSession];

        v5 = v12;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);

  if ((v4 & 1) == 0)
  {
    v6 = [*(*(a1 + 40) + 120) objectForKey:*(a1 + 48)];
    v13 = [*(a1 + 40) canStartLQMAnalysisforTrigger:@"Roaming" andReason:*(a1 + 64) onWindow:v6];
    if (v13)
    {
      v14 = *(a1 + 40);
      v15 = [[WiFiUsageLQMWindowAnalysisRoaming alloc] initWithRollingWindow:v6 WithRoamingState:*(a1 + 104) andReasonString:*(a1 + 64) andStatus:*(a1 + 88) asString:*(a1 + 72) andLatency:*(a1 + 96) andRoamData:*(a1 + 56) andCurrentBSSSession:v5 andContext:*(v14 + 13) | (*(v14 + 15) << 8) | (*(v14 + 16) << 16) andPingPongStats:v2 andTimestamp:v13 onQueue:*(v14 + 144)];
      [*(a1 + 40) startLQMAnalysis:v15];
    }

    goto LABEL_20;
  }

LABEL_21:
  [v5 roamingStateDidChange:*(a1 + 104) reason:*(a1 + 80) andStatus:*(a1 + 88) andLatency:*(a1 + 96) andRoamData:*(a1 + 56) andPingPongNth:{-[WiFiUsageSessionPingPongStats pingPongNth](v2, "pingPongNth") != 0}];
  if (*(*(a1 + 40) + 33) == 1)
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = [MEMORY[0x277CCAB88] notificationWithName:@"setRoamingState" object:0];
    [v16 postNotification:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setRoamingARCriteria:(id *)a3 forInterface:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__WiFiUsageMonitor_setRoamingARCriteria_forInterface___block_invoke;
  v10[3] = &unk_2789C6E50;
  v11 = v6;
  v12 = self;
  v8 = *&a3->var5;
  v13 = *&a3->var0;
  v14 = v8;
  v9 = v6;
  dispatch_async(internalQueue, v10);
}

void __54__WiFiUsageMonitor_setRoamingARCriteria_forInterface___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * v6);
          v8 = *(a1 + 64);
          *buf = *(a1 + 48);
          *&buf[16] = v8;
          [v7 roamingARConfigurationDidChange:buf];
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 136315394;
    *&buf[4] = "[WiFiUsageMonitor setRoamingARCriteria:forInterface:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setRoamingConfiguration:(int64_t)a3 withChannelList:(id)a4 forInterface:(id)a5
{
  v8 = a4;
  v9 = a5;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__WiFiUsageMonitor_setRoamingConfiguration_withChannelList_forInterface___block_invoke;
  v13[3] = &unk_2789C6A88;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v17 = a3;
  v11 = v8;
  v12 = v9;
  dispatch_async(internalQueue, v13);
}

void __73__WiFiUsageMonitor_setRoamingConfiguration_withChannelList_forInterface___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [*(a1[5] + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v9 + 1) + 8 * v6++) roamingConfigurationDidChange:a1[7] withChannelList:a1[6]];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    *buf = 136315394;
    v15 = "[WiFiUsageMonitor setRoamingConfiguration:withChannelList:forInterface:]_block_invoke";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateRoamCache:(id)a3 forInterface:(id)a4
{
  v5 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WiFiUsageMonitor_updateRoamCache_forInterface___block_invoke;
  block[3] = &unk_2789C6630;
  v9 = v5;
  v7 = v5;
  dispatch_async(internalQueue, block);
}

void __49__WiFiUsageMonitor_updateRoamCache_forInterface___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[WiFiUsageMonitor updateRoamCache:forInterface:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", &v4, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateBeaconCache:(id)a3 afterRoamAttempt:(id)a4 whileCurrentBSSID:(id)a5 forInterface:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__WiFiUsageMonitor_updateBeaconCache_afterRoamAttempt_whileCurrentBSSID_forInterface___block_invoke;
  block[3] = &unk_2789C6E78;
  v20 = v13;
  v21 = v11;
  v22 = v12;
  v23 = v10;
  v24 = self;
  v15 = v10;
  v16 = v12;
  v17 = v11;
  v18 = v13;
  dispatch_async(internalQueue, block);
}

void __86__WiFiUsageMonitor_updateBeaconCache_afterRoamAttempt_whileCurrentBSSID_forInterface___block_invoke(uint64_t a1)
{
  v135 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = (a1 + 40);
    v65 = [*(a1 + 40) objectForKey:@"ROAMEDEVENT_REASON"];
    v64 = [*v2 objectForKey:@"ROAMEDEVENT_STATUS"];
    v69 = [*v2 objectForKey:@"ROAMEDEVENT_ORIGIN_CHANNEL_FLAGS"];
    v68 = [*v2 objectForKey:@"ROAMEDEVENT_ORIGIN_CHANNEL"];
    v67 = [*v2 objectForKey:@"ROAMEDEVENT_TARGET_CHANNEL_FLAGS"];
    v66 = [*v2 objectForKey:@"ROAMEDEVENT_TARGET_CHANNEL"];
    v3 = [WiFiUsagePrivacyFilter bandFromFlags:v69 OrChannel:v68];
    v4 = [WiFiUsagePrivacyFilter bandFromFlags:v67 OrChannel:v66];
    v5 = MEMORY[0x277CCACA8];
    v6 = [WiFiUsagePrivacyFilter bandAsString:v3];
    v7 = [WiFiUsagePrivacyFilter bandAsString:v4];
    v63 = [v5 stringWithFormat:@"%@GHz->%@GHz", v6, v7];

    v61 = [v64 intValue] & 0x1FF;
    v8 = [v65 unsignedIntegerValue];
    if (v8 != 3766619137)
    {
      v14 = v8;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v115 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
        v116 = 2048;
        v117 = v14;
        v10 = MEMORY[0x277D86220];
        v11 = "%s - ignoring beaconCache for CandidatesStats (reason(%lu) is not LowRssi)";
        v12 = 22;
        goto LABEL_10;
      }

LABEL_79:

      goto LABEL_80;
    }

    if ([*(a1 + 48) length] <= 5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 48);
        *buf = 136315650;
        v115 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
        v116 = 2160;
        v117 = 1752392040;
        v118 = 2112;
        v119 = v9;
        v10 = MEMORY[0x277D86220];
        v11 = "%s - currentBSSID (%{mask.hash}@) too short";
        v12 = 32;
LABEL_10:
        _os_log_impl(&dword_2332D7000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
        goto LABEL_79;
      }

      goto LABEL_79;
    }

    v112 = 0;
    v111 = 0;
    [*(a1 + 48) getBytes:&v111 length:6];
    v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x:%02x:%02x:%02x:%02x:%02x", v111, BYTE1(v111), BYTE2(v111), HIBYTE(v111), v112, HIBYTE(v112)];
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v15 = *(a1 + 56);
    v16 = [v15 countByEnumeratingWithState:&v107 objects:v134 count:16];
    if (v16)
    {
      v81 = 0;
      v17 = *v108;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v108 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v107 + 1) + 8 * i);
          v20 = [v19 objectForKey:@"BSSID"];
          v21 = [v19 objectForKey:@"SSID"];
          if ([v20 isEqualToString:v83])
          {
            v22 = v21;

            v81 = v22;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v107 objects:v134 count:16];
      }

      while (v16);

      if (v81)
      {
        v78 = objc_opt_new();
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v23 = *(a1 + 56);
        v24 = [v23 countByEnumeratingWithState:&v103 objects:v133 count:16];
        if (v24)
        {
          v25 = *v104;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v104 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v103 + 1) + 8 * j);
              v28 = [v27 objectForKey:@"AGE"];
              v29 = [v27 objectForKey:@"SSID"];
              if ([v28 unsignedIntegerValue] <= 0x1388 && objc_msgSend(v29, "isEqualToData:", v81))
              {
                [v78 addObject:v27];
              }
            }

            v24 = [v23 countByEnumeratingWithState:&v103 objects:v133 count:16];
          }

          while (v24);
        }

        v80 = [v78 count];
        v82 = objc_opt_new();
        v70 = v63;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        obj = v78;
        v30 = [obj countByEnumeratingWithState:&v99 objects:v132 count:16];
        if (v30)
        {
          v77 = -95;
          v76 = 3;
          v72 = *v100;
          v79 = -95;
          v75 = -95;
          v73 = 3;
          v74 = 3;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v100 != v72)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v99 + 1) + 8 * k);
              v33 = [v32 objectForKey:@"BSSID"];
              v34 = [v32 objectForKey:@"CHANNEL_FLAGS"];
              v35 = [v32 objectForKey:@"CHANNEL"];
              v36 = [v32 objectForKey:@"RSSI"];
              v37 = [WiFiUsagePrivacyFilter bandFromFlags:v34 OrChannel:v35];
              v38 = [MEMORY[0x277CCABB0] numberWithInteger:v37];
              v39 = [v82 objectForKeyedSubscript:v38];
              v40 = v39 == 0;

              if (v40)
              {
                v41 = objc_opt_new();
                [v82 setObject:v41 forKeyedSubscript:v38];
              }

              v42 = [v82 objectForKeyedSubscript:v38];
              [v42 addObject:v33];

              if (v80)
              {
                if (v36 && [v36 integerValue] >= v79)
                {
                  v79 = [v36 integerValue];
                  v74 = v37;
                }

                if ([v33 isEqualToString:v83])
                {
                  v77 = [v36 integerValue];
                  v76 = v37;
                }

                else if (v36 && [v36 integerValue] >= v75)
                {
                  v75 = [v36 integerValue];
                  v73 = v37;
                }

                v43 = MEMORY[0x277D86220];
                v44 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = [WiFiUsagePrivacyFilter bandAsString:v37];
                  v46 = [v33 isEqualToString:v83];
                  *buf = 136316418;
                  v47 = &stru_28487EF20;
                  if (v46)
                  {
                    v47 = @"(current BSSID)";
                  }

                  v115 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
                  v116 = 2160;
                  v117 = 1752392040;
                  v118 = 2112;
                  v119 = v33;
                  v120 = 2112;
                  v121 = v45;
                  v122 = 2112;
                  v123 = v36;
                  v124 = 2112;
                  v125 = v47;
                  _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - bssid:%{mask.hash}@ %@Ghz rssi:%@dBm %@", buf, 0x3Eu);
                }
              }
            }

            v30 = [obj countByEnumeratingWithState:&v99 objects:v132 count:16];
          }

          while (v30);
        }

        else
        {
          v77 = -95;
          v76 = 3;
          v79 = -95;
          v75 = -95;
          v73 = 3;
          v74 = 3;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v115 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
          v116 = 2112;
          v117 = v82;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - roamCandidatesByBand:%@", buf, 0x16u);
        }

        if (v80)
        {
          v48 = MEMORY[0x277D86220];
          v49 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [WiFiUsagePrivacyFilter bandAsString:v74];
            v51 = [WiFiUsagePrivacyFilter bandAsString:v73];
            v52 = v51;
            v53 = @"NO";
            *buf = 136317186;
            v115 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
            v116 = 2048;
            v117 = v77;
            if (!v61)
            {
              v53 = @"YES";
            }

            v118 = 2048;
            v119 = v79;
            v120 = 2112;
            v121 = v50;
            v122 = 2048;
            v123 = v75;
            v124 = 2112;
            v125 = v51;
            v126 = 2048;
            v127 = v80;
            v128 = 2112;
            v129 = v70;
            v130 = 2112;
            v131 = v53;
            _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - \ncurrentBSSrssi:%lddBm strongestRSSI:%lddBm strongestRssiBand:%@ strongestRssiExcludingCurrent:%lddBm strongestRSSIbandExcludingCurrent:%@Ghz candidatesCount:%lu roamBandTransition:%@ roamSuccessful:%@", buf, 0x5Cu);
          }
        }

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v54 = [*(*(a1 + 64) + 104) valueForKey:*(a1 + 32)];
        v55 = [v54 countByEnumeratingWithState:&v95 objects:v113 count:16];
        v56 = v70;
        if (v55)
        {
          v57 = *v96;
          do
          {
            for (m = 0; m != v55; ++m)
            {
              if (*v96 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = *(*(&v95 + 1) + 8 * m);
              v84 = v77;
              v85 = v76;
              v86 = 0;
              v87 = v79;
              v88 = v75;
              v89 = v74;
              v90 = v73;
              v91 = v80;
              v92 = v82;
              v93 = v56;
              v94 = v61 == 0;
              if (v59)
              {
                [v59 roamCandidatesStatsDidUpdate:&v84];
              }

              else
              {

                v56 = v70;
              }
            }

            v55 = [v54 countByEnumeratingWithState:&v95 objects:v113 count:16];
          }

          while (v55);
        }

LABEL_78:
        goto LABEL_79;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v115 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
      v116 = 2160;
      v117 = 1752392040;
      v118 = 2112;
      v119 = v83;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - currentBSSID (%{mask.hash}@) not in beaconCache", buf, 0x20u);
    }

    goto LABEL_78;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 136315394;
    v115 = "[WiFiUsageMonitor updateBeaconCache:afterRoamAttempt:whileCurrentBSSID:forInterface:]_block_invoke";
    v116 = 2112;
    v117 = v13;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

LABEL_80:
  v60 = *MEMORY[0x277D85DE8];
}

- (void)updateBssPerChannelWith:(id)a3 into:(id)a4 and:(id)a5 withChannelInfoList:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v35 = a5;
  v12 = a6;
  v13 = [v12 copy];
  lastChannelInfoList = self->_lastChannelInfoList;
  self->_lastChannelInfoList = v13;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [WiFiUsageChannel channelWithChannelInfo:*(*(&v40 + 1) + 8 * i)];
        v21 = [v11 objectForKeyedSubscript:v20];

        if (!v21)
        {
          v22 = objc_opt_new();
          [v11 setObject:v22 forKeyedSubscript:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v17);
  }

  v34 = v15;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = v10;
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v36 + 1) + 8 * j);
        v29 = [WiFiUsageChannel channelWithBssDetails:v28, v34];
        v30 = [v11 objectForKeyedSubscript:v29];
        v31 = [v28 bssid];
        [v30 addObject:v31];

        v32 = [v28 bssid];
        [v35 addObject:v32];
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v25);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)submitScanResultWithNeighborBSS:(id)a3 withOtherBSS:(id)a4 withChannelInfoList:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (+[WiFiUsagePrivacyFilter canPerformActionWithSampleRate:](WiFiUsagePrivacyFilter, "canPerformActionWithSampleRate:", 1) && (v7 && [v7 count] || v8 && objc_msgSend(v8, "count")))
  {
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    v51 = v7;
    [(WiFiUsageMonitor *)self updateBssPerChannelWith:v7 into:v10 and:v11 withChannelInfoList:v9];
    v50 = v8;
    v53 = v10;
    v48 = v11;
    [(WiFiUsageMonitor *)self updateBssPerChannelWith:v8 into:v10 and:v11 withChannelInfoList:v9];
    v12 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v49 = v9;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v64;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v64 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [WiFiUsageChannel channelWithChannelInfo:*(*(&v63 + 1) + 8 * i)];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v15);
    }

    v19 = objc_opt_new();
    v20 = [(NSDictionary *)self->_lastScanRequest objectForKeyedSubscript:@"SCAN_CHANNELS"];

    v21 = v12;
    if (v20)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v22 = [(NSDictionary *)self->_lastScanRequest objectForKeyedSubscript:@"SCAN_CHANNELS"];
      v23 = [v22 countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v60;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v60 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [WiFiUsageChannel channelWithScanChannel:*(*(&v59 + 1) + 8 * j)];
            [v27 updateDFSInfoFromSupportedChannels:v12];
            [v19 addObject:v27];
          }

          v24 = [v22 countByEnumeratingWithState:&v59 objects:v68 count:16];
        }

        while (v24);
      }

      v21 = v19;
    }

    v28 = v21;

    v58 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    obj = v28;
    v29 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v56;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v56 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v55 + 1) + 8 * k);
          v34 = objc_opt_new();
          v35 = MEMORY[0x277CCABB0];
          v36 = [(NSDictionary *)self->_lastScanRequest objectForKeyedSubscript:@"SCAN_TYPE"];
          v37 = [v35 numberWithBool:{objc_msgSend(v36, "unsignedIntegerValue") == 1}];
          [v34 setObject:v37 forKeyedSubscript:@"isActive"];

          v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v33, "channel")}];
          [v34 setObject:v38 forKeyedSubscript:@"channel"];

          v39 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v33, "isDFSChannel")}];
          [v34 setObject:v39 forKeyedSubscript:@"isDFSChannel"];

          v40 = +[WiFiUsagePrivacyFilter bandAsString:](WiFiUsagePrivacyFilter, "bandAsString:", [v33 band]);
          [v34 setObject:v40 forKeyedSubscript:@"band"];

          v41 = MEMORY[0x277CCABB0];
          v42 = [v53 objectForKeyedSubscript:v33];
          v43 = [v41 numberWithUnsignedInteger:{objc_msgSend(v42, "count")}];
          [v34 setObject:v43 forKeyedSubscript:@"PerChannelUniqueBSSCount"];

          v44 = v34;
          AnalyticsSendEventLazy();
        }

        v30 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v30);
    }

    v45 = v48;
    v46 = obj;
    AnalyticsSendEventLazy();

    v8 = v50;
    v7 = v51;
    v9 = v49;
  }

  v47 = *MEMORY[0x277D85DE8];
}

id __85__WiFiUsageMonitor_submitScanResultWithNeighborBSS_withOtherBSS_withChannelInfoList___block_invoke_2(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"All";
  v7[0] = @"band";
  v7[1] = @"scannedChannels";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v8[1] = v2;
  v7[2] = @"PerChannelUniqueBSSCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setScanningState:(BOOL)a3 client:(unint64_t)a4 neighborBSS:(id)a5 otherBSS:(id)a6 withChannelInfoList:(id)a7 withRequest:(id)a8 forInterface:(id)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  internalQueue = self->_internalQueue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __110__WiFiUsageMonitor_setScanningState_client_neighborBSS_otherBSS_withChannelInfoList_withRequest_forInterface___block_invoke;
  v26[3] = &unk_2789C6EC8;
  v27 = v19;
  v28 = self;
  v34 = a3;
  v29 = v15;
  v30 = v16;
  v32 = v17;
  v33 = a4;
  v31 = v18;
  v21 = v17;
  v22 = v18;
  v23 = v16;
  v24 = v15;
  v25 = v19;
  dispatch_async(internalQueue, v26);
}

void __110__WiFiUsageMonitor_setScanningState_client_neighborBSS_otherBSS_withChannelInfoList_withRequest_forInterface___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 88);
    if (*(v2 + 22) != v3 || *(a1 + 48) || *(a1 + 56))
    {
      *(v2 + 22) = v3;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        do
        {
          v8 = 0;
          do
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v14 + 1) + 8 * v8++) scanningStateDidChange:*(a1 + 88) client:*(a1 + 80) neighborBSS:*(a1 + 48) otherBSS:*(a1 + 56)];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 40);
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      objc_storeStrong((v2 + 272), v9);
      v2 = *(a1 + 40);
    }

    if (*(v2 + 33) == 1)
    {
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = [MEMORY[0x277CCAB88] notificationWithName:@"setScanningState" object:0];
      [v10 postNotification:v11];

      v2 = *(a1 + 40);
    }

    [v2 submitScanResultWithNeighborBSS:*(a1 + 48) withOtherBSS:*(a1 + 56) withChannelInfoList:*(a1 + 72)];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 136315394;
    v20 = "[WiFiUsageMonitor setScanningState:client:neighborBSS:otherBSS:withChannelInfoList:withRequest:forInterface:]_block_invoke";
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setPowerState:(BOOL)a3 forInterface:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WiFiUsageMonitor_setPowerState_forInterface___block_invoke;
  block[3] = &unk_2789C6C20;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __47__WiFiUsageMonitor_setPowerState_forInterface___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (*(v2 + 23) != v3)
    {
      *(v2 + 23) = v3;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v13 + 1) + 8 * v8++) powerStateDidChange:*(a1 + 48)];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 40);
    }

    if (*(v2 + 33) == 1)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [MEMORY[0x277CCAB88] notificationWithName:@"setPowerState" object:0];
      [v9 postNotification:v10];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v19 = "[WiFiUsageMonitor setPowerState:forInterface:]_block_invoke";
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setControlCenterState:(BOOL)a3 withKnownLocation:(BOOL)a4 forInterface:(id)a5
{
  v8 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__WiFiUsageMonitor_setControlCenterState_withKnownLocation_forInterface___block_invoke;
  block[3] = &unk_2789C6EF0;
  v12 = v8;
  v13 = self;
  v14 = a3;
  v15 = a4;
  v10 = v8;
  dispatch_async(internalQueue, block);
}

void __73__WiFiUsageMonitor_setControlCenterState_withKnownLocation_forInterface___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (*(v2 + 24) != v3)
    {
      *(v2 + 24) = v3;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v13 + 1) + 8 * v8++) controlCenterStateDidChange:*(a1 + 48) withKnownLocation:*(a1 + 49)];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 40);
    }

    if (*(v2 + 33) == 1)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [MEMORY[0x277CCAB88] notificationWithName:@"setControlCenterState" object:0];
      [v9 postNotification:v10];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v19 = "[WiFiUsageMonitor setControlCenterState:withKnownLocation:forInterface:]_block_invoke";
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setCellularDataStatus:(id)a3 inAirplaneMode:(BOOL)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WiFiUsageMonitor_setCellularDataStatus_inAirplaneMode___block_invoke;
  block[3] = &unk_2789C6C20;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

uint64_t __57__WiFiUsageMonitor_setCellularDataStatus_inAirplaneMode___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 96)];
  v3 = *(a1 + 40);
  if (!result || *(v3 + 25) != *(a1 + 48))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [*(v3 + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v17;
            do
            {
              v14 = 0;
              do
              {
                if (*v17 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v16 + 1) + 8 * v14++) cellularDataStatusDidChange:*(a1 + 32) inAirplaneMode:*(a1 + 48)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v6);
    }

    [*(a1 + 40) setCurrentCellularStatus:*(a1 + 32)];
    result = [*(a1 + 40) setAirplaneModeEnabled:*(a1 + 48)];
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setCellularFallbackState:(BOOL)a3 forInterface:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WiFiUsageMonitor_setCellularFallbackState_forInterface___block_invoke;
  block[3] = &unk_2789C6C20;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __58__WiFiUsageMonitor_setCellularFallbackState_forInterface___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (*(v2 + 26) != v3)
    {
      *(v2 + 26) = v3;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v13 + 1) + 8 * v8++) cellularFallbackStateDidChange:*(a1 + 48)];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 40);
      if (*(v2 + 280))
      {
        [v2 pushRNFEventToHUD:*(a1 + 48)];
        v2 = *(a1 + 40);
      }
    }

    if (*(v2 + 33) == 1)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [MEMORY[0x277CCAB88] notificationWithName:@"CellularFallbackState" object:0];
      [v9 postNotification:v10];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v19 = "[WiFiUsageMonitor setCellularFallbackState:forInterface:]_block_invoke";
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setCellularOutrankingState:(BOOL)a3 forInterface:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WiFiUsageMonitor_setCellularOutrankingState_forInterface___block_invoke;
  block[3] = &unk_2789C6C20;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __60__WiFiUsageMonitor_setCellularOutrankingState_forInterface___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    if (*(v2 + 27) != v3)
    {
      *(v2 + 27) = v3;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v13 + 1) + 8 * v8++) cellularOutrankingStateDidChange:*(a1 + 48)];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      v2 = *(a1 + 40);
    }

    if (*(v2 + 33) == 1)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = [MEMORY[0x277CCAB88] notificationWithName:@"CellularOutrankingState" object:0];
      [v9 postNotification:v10];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v19 = "[WiFiUsageMonitor setCellularOutrankingState:forInterface:]_block_invoke";
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)notifyNetworkQualityResults:(id)a3 forInterface:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WiFiUsageMonitor_notifyNetworkQualityResults_forInterface___block_invoke;
  block[3] = &unk_2789C6C70;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(internalQueue, block);
}

void __61__WiFiUsageMonitor_notifyNetworkQualityResults_forInterface___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 104) valueForKey:?];
    v3 = [v2 count];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [*(a1 + 48) objectForKeyedSubscript:@"networkQualityResponsiveness"];
          [v9 setResponsivenessScore:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    if (v3)
    {
      v11 = [*(*(a1 + 40) + 120) objectForKey:*(a1 + 32)];
      v12 = [*(a1 + 40) canStartLQMAnalysisforTrigger:@"NetworkQuality" andReason:0 onWindow:v11];
      if (v12)
      {
        v13 = [*(a1 + 48) objectForKeyedSubscript:@"networkQualityResponsiveness"];
        v14 = +[WiFiUsageLQMTransformations getBinNetworkQualityResponsiveness:As:](WiFiUsageLQMTransformations, "getBinNetworkQualityResponsiveness:As:", [v13 unsignedLongValue], 0);
        [*(a1 + 48) setObject:v14 forKeyedSubscript:@"networkQualityResponsiveness"];

        v15 = *(a1 + 40);
        v16 = [[WiFiUsageLQMWindowAnalysisNetworkQuality alloc] initWithRollingWindow:v11 AndDictionary:*(a1 + 48) andContext:*(v15 + 13) | (*(v15 + 15) << 8) | (*(v15 + 16) << 16) andTimestamp:v12 onQueue:*(v15 + 144)];
        [*(a1 + 40) startLQMAnalysis:v16];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    *buf = 136315394;
    v25 = "[WiFiUsageMonitor notifyNetworkQualityResults:forInterface:]_block_invoke";
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)LQMAnalysisReasonForFault:(unint64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1 <= 0x1A && ((0x707023Fu >> v4) & 1) != 0)
  {
    v5 = *off_2789C7270[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addFaultEvent:(unint64_t)a3 forInterface:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = [v6 date];
  [(WiFiUsageMonitor *)self addFaultEvent:a3 forInterface:v7 at:v8];
}

- (void)addFaultEvent:(unint64_t)a3 forInterface:(id)a4 event:(id)a5
{
  v8 = MEMORY[0x277CBEAA8];
  v9 = a5;
  v10 = a4;
  v11 = [v8 date];
  [(WiFiUsageMonitor *)self addFaultEvent:a3 forInterface:v10 at:v11 event:v9];
}

- (void)addFaultEvent:(unint64_t)a3 forInterface:(id)a4 at:(id)a5 event:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WiFiUsageMonitor_addFaultEvent_forInterface_at_event___block_invoke;
  block[3] = &unk_2789C6F18;
  v21 = v12;
  v22 = a3;
  v18 = v10;
  v19 = self;
  v20 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(internalQueue, block);
}

void __56__WiFiUsageMonitor_addFaultEvent_forInterface_at_event___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && objc_opt_class())
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 32);
    if (!v3 || ![v3 length])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = *(a1 + 64);
        *buf = 136315650;
        v36 = "[WiFiUsageMonitor addFaultEvent:forInterface:at:event:]_block_invoke";
        v37 = 2112;
        v38 = v4;
        v39 = 2048;
        v40 = v5;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid interfaceName %@ reason %lu", buf, 0x20u);
      }

      v2 = @"UnkownInterface";
    }

    v6 = *(*(a1 + 40) + 280);
    if (v6)
    {
      v7 = [v6 connectedBss];

      if (v7)
      {
        v8 = [*(*(a1 + 40) + 280) connectedBss];
        v7 = [v8 bssid];
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = [MEMORY[0x277D7B940] sharedDeviceAnalyticsClient];
    v10 = *(a1 + 48);
    v11 = WiFiUsageFaultReasonStringMap(*(a1 + 64));
    [v9 faultEventOn:v7 at:v10 type:v11 interface:v2];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [*(*(a1 + 40) + 104) valueForKey:{*(a1 + 32), 0}];
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  v14 = v13;
  if (v13)
  {
    v15 = *v31;
    v16 = v13;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v30 + 1) + 8 * i) faultEventDetected:*(a1 + 64) event:*(a1 + 56)];
      }

      v16 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v16);
  }

  if (*(*(a1 + 40) + 33) == 1)
  {
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = [MEMORY[0x277CCAB88] notificationWithName:@"AddFaultEvent" object:0];
    [v18 postNotification:v19];
  }

  if (v14)
  {
    v20 = [*(*(a1 + 40) + 120) objectForKey:*(a1 + 32)];
    v21 = [WiFiUsageMonitor LQMAnalysisReasonForFault:*(a1 + 64)];
    if (v21)
    {
      v22 = [*(a1 + 40) canStartLQMAnalysisforTrigger:v21 andReason:0 onWindow:v20];
      if (*(a1 + 64) == 18)
      {
        v23 = [MEMORY[0x277CBEAA8] now];
        v24 = v23;
        if (*(*(a1 + 40) + 128))
        {
          [v23 timeIntervalSinceDate:?];
          if (v25 <= 60.0)
          {
            objc_storeStrong((*(a1 + 40) + 128), v24);

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(*(a1 + 40) + 128);
              *buf = 136315650;
              v36 = "[WiFiUsageMonitor addFaultEvent:forInterface:at:event:]_block_invoke";
              v37 = 2112;
              v38 = @"SlowWiFiDnsFailure";
              v39 = 2112;
              v40 = v26;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Not starting LQM window analysis triggered by %@. Last triggered: %@", buf, 0x20u);
            }

            v22 = 0;
          }
        }
      }

      if (v22)
      {
        v27 = *(a1 + 40);
        v28 = [[WiFiUsageLQMWindowAnalysis alloc] initWithRollingWindow:v20 andReason:v21 andContext:*(v27 + 13) | (*(v27 + 15) << 8) | (*(v27 + 16) << 16) andTimestamp:v22 onQueue:*(v27 + 144)];
        [*(a1 + 40) startLQMAnalysis:v28];
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)linkTestEvent:(id)a3 withReason:(id)a4 forInterface:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__WiFiUsageMonitor_linkTestEvent_withReason_forInterface___block_invoke;
  v15[3] = &unk_2789C6D10;
  v15[4] = self;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(internalQueue, v15);
}

uint64_t __58__WiFiUsageMonitor_linkTestEvent_withReason_forInterface___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v8 = v2;
    v4 = [*(a1 + 32) canStartLQMAnalysisforTrigger:@"LinkTest" andReason:*(a1 + 48) onWindow:v2];
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [[WiFiUsageLQMWindowAnalysisLinkTest alloc] initWithRollingWindow:v8 andReason:*(a1 + 48) withWFMeasureResults:*(a1 + 56) andContext:*(v5 + 13) | (*(v5 + 15) << 8) | (*(v5 + 16) << 16) andTimestamp:v4 onQueue:*(v5 + 144)];
      [*(a1 + 32) startLQMAnalysis:v6];
    }

    v3 = v8;
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)addTriggerDisconnectEvent:(id)a3 isAlerted:(BOOL)a4 isConfirmed:(BOOL)a5 isExecuted:(BOOL)a6
{
  v10 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__WiFiUsageMonitor_addTriggerDisconnectEvent_isAlerted_isConfirmed_isExecuted___block_invoke;
  block[3] = &unk_2789C6F40;
  v14 = v10;
  v15 = self;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v12 = v10;
  dispatch_async(internalQueue, block);
}

void __79__WiFiUsageMonitor_addTriggerDisconnectEvent_isAlerted_isConfirmed_isExecuted___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      do
      {
        v6 = 0;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v12 + 1) + 8 * v6++) triggerDisconnectAlerted:*(a1 + 48) confirmed:*(a1 + 49) executed:*(a1 + 50)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    v7 = *(a1 + 40);
    if (*(a1 + 49) == 1 && (v7[30] & 1) == 0)
    {
      [v7 setLastTDEvalConfirmed:1];
      v7 = *(a1 + 40);
    }

    if (*(a1 + 50) == 1 && (v7[31] & 1) == 0)
    {
      v7[31] = 1;
      [*(a1 + 40) setLastTDEvalStartedBy:0];
      v7 = *(a1 + 40);
    }

    if (v7[33] == 1)
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v9 = [MEMORY[0x277CCAB88] notificationWithName:@"AddTriggerDisconnectEvent" object:0];
      [v8 postNotification:v9];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 136315394;
    v18 = "[WiFiUsageMonitor addTriggerDisconnectEvent:isAlerted:isConfirmed:isExecuted:]_block_invoke";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setTdLogic_badRssiThreshold:(int64_t)a3 goodRssiThreshold:(int64_t)a4
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WiFiUsageMonitor_setTdLogic_badRssiThreshold_goodRssiThreshold___block_invoke;
  block[3] = &unk_2789C6F68;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(internalQueue, block);
}

void __66__WiFiUsageMonitor_setTdLogic_badRssiThreshold_goodRssiThreshold___block_invoke(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  if (*(v2 + 64) != v3 || *(v2 + 72) != a1[6])
  {
    *(v2 + 64) = v3;
    *(a1[4] + 72) = a1[6];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [*(a1[4] + 104) allValues];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v17;
            do
            {
              v14 = 0;
              do
              {
                if (*v17 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v16 + 1) + 8 * v14++) tdLogic_badRssi:*(a1[4] + 64) goodRSSI:*(a1[4] + 72)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v6);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setTdLogic_deferJoin:(unint64_t)a3 perBSSID:(unint64_t)a4
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WiFiUsageMonitor_setTdLogic_deferJoin_perBSSID___block_invoke;
  block[3] = &unk_2789C6F68;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(internalQueue, block);
}

void __50__WiFiUsageMonitor_setTdLogic_deferJoin_perBSSID___block_invoke(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1[4] + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v14 + 1) + 8 * v12++) tdLogic_deferJoin:a1[5] perBSSID:a1[6]];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setTdLogic_alertedBy:(int)a3 forInterface:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WiFiUsageMonitor_setTdLogic_alertedBy_forInterface___block_invoke;
  block[3] = &unk_2789C66B0;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __54__WiFiUsageMonitor_setTdLogic_alertedBy_forInterface___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      do
      {
        v6 = 0;
        do
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v14 + 1) + 8 * v6++) tdLogic_alertedBy:*(a1 + 48)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }

    v7 = *(a1 + 40);
    if (!*(v7 + 80))
    {
      *(v7 + 30) = 0;
      *(*(a1 + 40) + 31) = 0;
      v8 = *(a1 + 40);
      v9 = *(v8 + 320);
      *(v8 + 320) = 0;

      v10 = *(a1 + 40);
      v11 = [WiFiUsagePrivacyFilter getLabelForTDTrigger:*(a1 + 48)];
      [v10 setLastTDEvalStartedBy:v11];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 136315394;
    v20 = "[WiFiUsageMonitor setTdLogic_alertedBy:forInterface:]_block_invoke";
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setTdLogic_decisionState:(id *)a3 forInterface:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__WiFiUsageMonitor_setTdLogic_decisionState_forInterface___block_invoke;
  v10[3] = &unk_2789C6E50;
  v11 = v6;
  v12 = self;
  v8 = *&a3->var13;
  v13 = *&a3->var0;
  v14 = v8;
  v9 = v6;
  dispatch_async(internalQueue, v10);
}

void __58__WiFiUsageMonitor_setTdLogic_decisionState_forInterface___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      do
      {
        v6 = 0;
        do
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v14 + 1) + 8 * v6);
          v8 = *(a1 + 64);
          *buf = *(a1 + 48);
          *&buf[16] = v8;
          [v7 tdLogic_decisionState:buf];
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v4);
    }

    if (*(*(a1 + 40) + 30) == 1)
    {
      v9 = *(a1 + 64);
      *buf = *(a1 + 48);
      *&buf[16] = v9;
      v10 = [WiFiUsageMonitor getTDConfirmedEventStringForDisplay:buf];
      v11 = v10;
      if (v10 && ([v10 isEqualToString:*(*(a1 + 40) + 320)] & 1) == 0)
      {
        [*(a1 + 40) setLastTDConfirmedDisplayStr:v11];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 136315394;
    *&buf[4] = "[WiFiUsageMonitor setTdLogic_decisionState:forInterface:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v12;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setTdLogic_fastTdState:(id *)a3 forInterface:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WiFiUsageMonitor_setTdLogic_fastTdState_forInterface___block_invoke;
  block[3] = &unk_2789C6F90;
  v10 = v6;
  v11 = self;
  v12 = *a3;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __56__WiFiUsageMonitor_setTdLogic_fastTdState_forInterface___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * v6);
          *buf = *(a1 + 48);
          *&buf[16] = *(a1 + 64);
          [v7 tdLogic_fastTdState:buf];
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 136315394;
    *&buf[4] = "[WiFiUsageMonitor setTdLogic_fastTdState:forInterface:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__WiFiUsageMonitor_setTdLogic_execState_forInterface___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(*(a1 + 40) + 104) valueForKey:0];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v1 = v1 & 0xFFFFFF0000000000 | *(a1 + 56) | (*(a1 + 60) << 32);
          [*(*(&v10 + 1) + 8 * v7++) tdLogic_execState:{*(a1 + 48), v1}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 136315394;
    v16 = "[WiFiUsageMonitor setTdLogic_execState:forInterface:]_block_invoke";
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setTdLogic_end:(int)a3 evalTime:(double)a4 rssi:(int64_t)a5 roamTime:(double)a6 forInterface:(id)a7
{
  v12 = a7;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__WiFiUsageMonitor_setTdLogic_end_evalTime_rssi_roamTime_forInterface___block_invoke;
  v15[3] = &unk_2789C6FE0;
  v16 = v12;
  v17 = self;
  v21 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v14 = v12;
  dispatch_async(internalQueue, v15);
}

void __71__WiFiUsageMonitor_setTdLogic_end_evalTime_rssi_roamTime_forInterface___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v11 + 1) + 8 * v6++) tdLogic_end:*(a1 + 72) evalTime:*(a1 + 56) rssi:*(a1 + 48) roamTime:*(a1 + 64)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    v7 = *(a1 + 40);
    if (v7[10])
    {
      [v7 setLastTDEvalStartedBy:0];
      v8 = [WiFiUsageMonitor getTDEvalCompleteEventStringForDisplay:*(a1 + 72)];
      if (v8)
      {
        [*(a1 + 40) setLastTDEvalStartedBy:0];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 136315394;
    v17 = "[WiFiUsageMonitor setTdLogic_end:evalTime:rssi:roamTime:forInterface:]_block_invoke";
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setTdLogic_waitForRoamTime:(double)a3 forInterface:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WiFiUsageMonitor_setTdLogic_waitForRoamTime_forInterface___block_invoke;
  block[3] = &unk_2789C7008;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __60__WiFiUsageMonitor_setTdLogic_waitForRoamTime_forInterface___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v9 + 1) + 8 * v6++) tdLogic_waitForRoamTime:*(a1 + 48)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[WiFiUsageMonitor setTdLogic_waitForRoamTime:forInterface:]_block_invoke";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithMLORuntimeConfig:(id *)a3 forInterface:(id)a4
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v5 = *&a3->var1[2];
  v7 = *&a3->var0;
  v8 = v5;
  block[2] = __60__WiFiUsageMonitor_updateWithMLORuntimeConfig_forInterface___block_invoke;
  block[3] = &unk_2789C7030;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __60__WiFiUsageMonitor_updateWithMLORuntimeConfig_forInterface___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [WiFiUsagePrivacyFilter bandAsString:*(a1 + 48)];
  v4 = [WiFiUsagePrivacyFilter bandAsString:*(a1 + 52)];
  v5 = [WiFiUsagePrivacyFilter bandAsString:*(a1 + 56)];
  v6 = [WiFiUsagePrivacyFilter bandAsString:*(a1 + 60)];
  v7 = v6;
  if (*(a1 + 64))
  {
    v8 = @"trafficSwitchEnabled";
  }

  else
  {
    v8 = &stru_28487EF20;
  }

  NSLog(&cfstr_SNumlinksLuPre.isa, "[WiFiUsageMonitor updateWithMLORuntimeConfig:forInterface:]_block_invoke", v2, v3, v4, v5, v6, v8);

  v9 = [*(*(a1 + 32) + 280) connectedBss];
  v10 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v10;
  [v9 updateMLORuntimeConfig:v11];
}

- (BOOL)submitAnalytics:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_xctest_disableSampling || ([v4 sessionDuration], v6 >= 10.0))
  {
    v7 = 1;
  }

  else
  {
    v7 = !-[WiFiUsageMonitor shouldFilterSession:](self, "shouldFilterSession:", [v5 type]);
  }

  if (self->_xctest_disableSampling)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v5 canSubmitToCA];
  }

  v9 = v8 & v7;
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v24 = v9;
    if (v10)
    {
      v11 = [v5 sessionName];
      xctest_disableSampling = self->_xctest_disableSampling;
      if (xctest_disableSampling)
      {
        v13 = @"xctest_disableSampling";
      }

      else
      {
        v13 = [v5 describeCAConfig];
      }

      *buf = 136315650;
      v27 = "[WiFiUsageMonitor submitAnalytics:]";
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: submitting analytics for session type %@ (%@)", buf, 0x20u);
      if (!xctest_disableSampling)
      {
      }
    }

    [v5 recordCAsubmission];
    v16 = [v5 metricName];
    v17 = v5;
    AnalyticsSendEventLazy();

    for (i = 0; i != 3; ++i)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [v17 metricName];
      v21 = [v19 stringWithFormat:@"%@.durationByBand", v20];
      v25 = v17;
      AnalyticsSendEventLazy();
    }

    LOBYTE(v9) = v24;
  }

  else if (v10)
  {
    v14 = [v5 sessionName];
    v15 = [v5 describeCAConfig];
    *buf = 136315650;
    v27 = "[WiFiUsageMonitor submitAnalytics:]";
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: NOT submitting analytics for session type %@ (%@)", buf, 0x20u);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

id __36__WiFiUsageMonitor_submitAnalytics___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) metricName];
    v6 = 136315394;
    v7 = "[WiFiUsageMonitor submitAnalytics:]_block_invoke";
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: AnalyticsSendEventLazy callback for %@", &v6, 0x16u);
  }

  v3 = [*(a1 + 32) sessionSummary:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)summaryForInterface:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__WiFiUsageMonitor_summaryForInterface___block_invoke;
    block[3] = &unk_2789C6C70;
    block[4] = self;
    v15 = v4;
    v7 = v5;
    v16 = v7;
    dispatch_sync(internalQueue, block);
    if (self->_xctest)
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v9 = [MEMORY[0x277CCAB88] notificationWithName:@"summaryForInterface" object:0];
      [v8 postNotification:v9];
    }

    v10 = v16;
    v11 = v7;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[WiFiUsageMonitor summaryForInterface:]";
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __40__WiFiUsageMonitor_summaryForInterface___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1[4] + 104) valueForKey:{a1[5], 0}];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        if ([v7 isSessionActive])
        {
          v9 = [v7 sessionSummary:0];
          v10 = a1[6];
          v11 = [v9 objectForKeyedSubscript:@"SessionName"];
          [v10 setValue:v9 forKey:v11];
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)rangingSessionRequestedWithSelfPreferredChannel:(unint64_t)a3 selfMainChannel:(unint64_t)a4 selfChannelFlags:(unint64_t)a5 peerPreferredChannel:(unint64_t)a6 peerMainChannel:(unint64_t)a7 peerChannelFlags:(unint64_t)a8 requester:(id)a9
{
  v16 = a9;
  v17 = objc_alloc_init(WiFiUsageRangingSession);
  [(WiFiUsageRangingSession *)v17 rangingSessionRequestedWithSelfPreferredChannel:a3 selfMainChannel:a4 selfChannelFlags:a5 peerPreferredChannel:a6 peerMainChannel:a7 peerChannelFlags:a8 requester:v16];

  [(WiFiUsageMonitor *)self setRangingSession:v17];
}

- (void)rangingStartedWithNumMeasurements:(unint64_t)a3
{
  v5 = [(WiFiUsageMonitor *)self rangingSession];

  if (!v5)
  {
    v6 = objc_alloc_init(WiFiUsageRangingSession);
    [(WiFiUsageMonitor *)self setRangingSession:v6];
  }

  v7 = [(WiFiUsageMonitor *)self rangingSession];
  [v7 rangingStartedWithNumMeasurements:a3];
}

- (void)rangingCompletedWithValidCount:(unint64_t)a3 resultStatus:(int64_t)a4 resultFlags:(unint64_t)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = [(WiFiUsageMonitor *)self rangingSession];

  if (v9)
  {
    v10 = [(WiFiUsageMonitor *)self rangingSession];
    [v10 rangingCompletedWithValidCount:a3 resultStatus:a4 resultFlags:a5];

    v11 = [(WiFiUsageMonitor *)self rangingSession];
    v12 = [v11 sessionSummary:1];
    v13 = [v12 copy];

    v14 = [(WiFiUsageMonitor *)self rangingSession];
    v15 = [v14 metricName];
    v16 = [v15 copy];

    if (v13 && v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "[WiFiUsageMonitor rangingCompletedWithValidCount:resultStatus:resultFlags:]";
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: submitting analytics for ranging session", buf, 0xCu);
      }

      v19[5] = MEMORY[0x277D85DD0];
      v19[6] = 3221225472;
      v19[7] = __76__WiFiUsageMonitor_rangingCompletedWithValidCount_resultStatus_resultFlags___block_invoke;
      v19[8] = &unk_2789C6A10;
      v20 = v13;
      AnalyticsSendEventLazy();
    }

    internalQueue = self->_internalQueue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__WiFiUsageMonitor_rangingCompletedWithValidCount_resultStatus_resultFlags___block_invoke_2;
    v19[3] = &unk_2789C6630;
    v19[4] = self;
    dispatch_async(internalQueue, v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __76__WiFiUsageMonitor_rangingCompletedWithValidCount_resultStatus_resultFlags___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = [*(*(a1 + 32) + 104) allValues];
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v14;
          do
          {
            v11 = 0;
            do
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [*(*(&v13 + 1) + 8 * v11++) rangingCompleted];
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addRangingRttSampleWithRssi:(int64_t)a3 rtt:(int64_t)a4 snr:(unint64_t)a5 flags:(unint64_t)a6 channel:(unint64_t)a7 coreId:(unint64_t)a8 bitErrorRate:(unint64_t)a9 phyError:(unint64_t)a10 andPeerSnr:(unint64_t)a11 andPeerCoreId:(unint64_t)a12 andPeerBitErrorRate:(unint64_t)a13 andPeerPhyError:(unint64_t)a14
{
  v17 = [(WiFiUsageMonitor *)self rangingSession];

  if (v17)
  {
    v18 = [(WiFiUsageMonitor *)self rangingSession];
    [v18 addRangingRttSampleWithRssi:a3 rtt:a4 snr:a5 flags:a6 channel:a7 coreId:a8 bitErrorRate:a9 phyError:a10 andPeerSnr:a11 andPeerCoreId:a12 andPeerBitErrorRate:a13 andPeerPhyError:a14];
  }
}

- (id)lastRangingSessionMetric
{
  v2 = [(WiFiUsageMonitor *)self rangingSession];
  v3 = [v2 sessionSummary:1];

  return v3;
}

- (id)lastBssSessionInfoForInterface:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(NSMutableDictionary *)self->_usageSessions valueForKey:v4, 0];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 type] == 4)
          {
            v11 = [v10 lastBssSessionInfo];

            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[WiFiUsageMonitor lastBssSessionInfoForInterface:]";
    v21 = 2112;
    v22 = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v11 = 0;
LABEL_15:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)enableXCTestNotifications
{
  if (!self->_xctest)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__WiFiUsageMonitor_enableXCTestNotifications__block_invoke;
    block[3] = &unk_2789C6630;
    block[4] = self;
    dispatch_async(internalQueue, block);
  }

  self->_xctest = 1;
}

void __45__WiFiUsageMonitor_enableXCTestNotifications__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = [*(*(a1 + 32) + 104) allValues];
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v14;
          do
          {
            v11 = 0;
            do
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [*(*(&v13 + 1) + 8 * v11++) enableXCTestNotifications];
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enableSubmitAnalyticsNoSampling:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  self->_xctest_disableSampling = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (self->_xctest_disableSampling)
    {
      v4 = @"YES";
    }

    v6 = 136315394;
    v7 = "[WiFiUsageMonitor enableSubmitAnalyticsNoSampling:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - _xctest_disableSampling:%@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)canStartLQMAnalysisforTrigger:(id)a3 andReason:(id)a4 onWindow:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [[WiFiUsageLQMRelatedTrigger alloc] initWithTrigger:v8 andReason:v9 andTimestamp:v11];
  [v10 addTrigger:v12];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = self->_pendingLqmAnalysis;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v24 + 1) + 8 * i) updateWithSubsequentTrigger:{v12, v24}];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v38 count:16];
    }

    while (v15);
  }

  v18 = [(NSMutableArray *)self->_pendingLqmAnalysis count];
  if (v18 >= +[WiFiUsageLQMWindowAnalysis maxConcurrentAnalysis])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = +[WiFiUsageLQMWindowAnalysis maxConcurrentAnalysis];
      v21 = [(NSMutableArray *)self->_pendingLqmAnalysis count];
      *buf = 136316162;
      v29 = "[WiFiUsageMonitor canStartLQMAnalysisforTrigger:andReason:onWindow:]";
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      v34 = 2048;
      v35 = v20;
      v36 = 1024;
      v37 = v21;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Cannot start WiFiUsageLQMWindowAnalysis for %@(%@) (max number of concurrent analysis (%lu) reached: %u)", buf, 0x30u);
    }

    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)startLQMAnalysis:(id)a3
{
  v8 = a3;
  [v8 setCompletionHandler:self->_lqmAnalysisCompletionHandler];
  if (v8)
  {
    if (([v8 isDone] & 1) == 0)
    {
      [(NSMutableArray *)self->_pendingLqmAnalysis addObject:v8];
      v4 = [v8 reason];
      v5 = [v4 isEqualToString:@"InCall"];

      if (v5)
      {
        v6 = [v8 timestamp];
        lastInCallAnalysis = self->_lastInCallAnalysis;
        self->_lastInCallAnalysis = v6;
      }
    }
  }
}

- (void)receiveKernelLQMRollingWindow:(id)a3 ForInterface:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315394;
    v16 = "[WiFiUsageMonitor receiveKernelLQMRollingWindow:ForInterface:]";
    v17 = 2112;
    v18 = 0;
    v9 = MEMORY[0x277D86220];
    v10 = "%s - Invalid interfaceName: %@";
    v11 = 22;
LABEL_8:
    _os_log_impl(&dword_2332D7000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, v11);
    goto LABEL_9;
  }

  if (!+[WiFiUsageLQMWindowAnalysis isKernerlParsingEnabled])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v16 = "[WiFiUsageMonitor receiveKernelLQMRollingWindow:ForInterface:]";
    v9 = MEMORY[0x277D86220];
    v10 = "%s - kernel parsing not enabled";
    v11 = 12;
    goto LABEL_8;
  }

  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__WiFiUsageMonitor_receiveKernelLQMRollingWindow_ForInterface___block_invoke;
  v13[3] = &unk_2789C6608;
  v13[4] = self;
  v14 = v6;
  dispatch_async(internalQueue, v13);

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
}

void __63__WiFiUsageMonitor_receiveKernelLQMRollingWindow_ForInterface___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [*(*(a1 + 32) + 224) copy];
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [v6 windowBeforeTrigger];
        v9 = [v6 lqmWindowsFeatures];
        v10 = [WiFiUsageLQMKernelRollingWindow kernelLQMRollingWindow:v7 withReferenceWindow:v8 andLqmFeatures:v9];
        [v6 setLqmWindowsFeatures:v10];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)receivedBssTransitionRequest:(id)a3 candidateListIncluded:(BOOL)a4 isAbridged:(BOOL)a5 disassociationImminent:(BOOL)a6 bssTerminationIncluded:(BOOL)a7 essDisassociationImminent:(BOOL)a8
{
  v14 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __154__WiFiUsageMonitor_receivedBssTransitionRequest_candidateListIncluded_isAbridged_disassociationImminent_bssTerminationIncluded_essDisassociationImminent___block_invoke;
  block[3] = &unk_2789C6DD8;
  v18 = v14;
  v19 = self;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v16 = v14;
  dispatch_async(internalQueue, block);
}

void __154__WiFiUsageMonitor_receivedBssTransitionRequest_candidateListIncluded_isAbridged_disassociationImminent_bssTerminationIncluded_essDisassociationImminent___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v9 + 1) + 8 * v6++) receivedBssTransitionRequestWithCandidateListIncluded:*(a1 + 48) isAbridged:*(a1 + 49) disassociationImminent:*(a1 + 50) bssTerminationIncluded:*(a1 + 51) essDisassociationImminent:*(a1 + 52)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[WiFiUsageMonitor receivedBssTransitionRequest:candidateListIncluded:isAbridged:disassociationImminent:bssTerminationIncluded:essDisassociationImminent:]_block_invoke";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sentBssTransitionResponse:(id)a3 status:(int64_t)a4 terminationDelayRequested:(BOOL)a5
{
  v8 = a3;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__WiFiUsageMonitor_sentBssTransitionResponse_status_terminationDelayRequested___block_invoke;
  v11[3] = &unk_2789C7080;
  v12 = v8;
  v13 = self;
  v14 = a4;
  v15 = a5;
  v10 = v8;
  dispatch_async(internalQueue, v11);
}

void __79__WiFiUsageMonitor_sentBssTransitionResponse_status_terminationDelayRequested___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [*(*(a1 + 40) + 104) valueForKey:0];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v9 + 1) + 8 * v6++) sentBssTransitionResponseWithStatus:*(a1 + 48) terminationDelayRequested:*(a1 + 56)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[WiFiUsageMonitor sentBssTransitionResponse:status:terminationDelayRequested:]_block_invoke";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Invalid interfaceName: %@", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceInitializationFailureReason:(id)a3 timeSinceBoot:(double)a4
{
  v6 = @"Success";
  if (a3)
  {
    v6 = a3;
  }

  v7 = MEMORY[0x277CBEB38];
  v8 = v6;
  v9 = a3;
  v10 = [v7 dictionary];
  [v10 setObject:v8 forKeyedSubscript:@"WiFiDeviceInitializationFailureReason"];

  v11 = [WiFiUsagePrivacyFilter numberWithDuration:a4];
  [v10 setObject:v11 forKeyedSubscript:@"WiFiTimeSinceBoot"];

  v13 = v10;
  v12 = v10;
  AnalyticsSendEventLazy();
}

- (void)updateWowState:(BOOL)a3 lpasState:(BOOL)a4 lowPowerState:(BOOL)a5 batterySaverState:(BOOL)a6
{
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__WiFiUsageMonitor_updateWowState_lpasState_lowPowerState_batterySaverState___block_invoke;
  v7[3] = &unk_2789C70A8;
  v7[4] = self;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  dispatch_async(internalQueue, v7);
}

void __77__WiFiUsageMonitor_updateWowState_lpasState_lowPowerState_batterySaverState___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v14 + 1) + 8 * v12++) updateWowState:*(a1 + 40) lpasState:*(a1 + 41) lowPowerState:*(a1 + 42) batterySaverState:*(a1 + 43)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateSleepPowerStats:(double)a3 unassociatedDuration:(double)a4 associatedDuration:(double)a5 roamingDuration:(double)a6
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__WiFiUsageMonitor_updateSleepPowerStats_unassociatedDuration_associatedDuration_roamingDuration___block_invoke;
  block[3] = &unk_2789C7030;
  block[4] = self;
  *&block[5] = a3;
  *&block[6] = a4;
  *&block[7] = a5;
  *&block[8] = a6;
  dispatch_async(internalQueue, block);
}

void __98__WiFiUsageMonitor_updateSleepPowerStats_unassociatedDuration_associatedDuration_roamingDuration___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v14 + 1) + 8 * v12++) updateSleepPowerStats:*(a1 + 40) unassociatedDuration:*(a1 + 48) associatedDuration:*(a1 + 56) roamingDuration:*(a1 + 64)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)submitLqmToCA:(id)a3 forInterface:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v67 = a4;
  if (!self->_xctest_disableSampling)
  {
    lqmDistributionSampling_store = self->_lqmDistributionSampling_store;
    if (lqmDistributionSampling_store)
    {
      if (![WiFiUsagePrivacyFilter canPerformActionWithRawSampleRate:[(NSNumber *)lqmDistributionSampling_store longValue]])
      {
        goto LABEL_10;
      }
    }

    else if (![WiFiUsagePrivacyFilter canPerformActionWithSampleRate:1])
    {
      goto LABEL_10;
    }
  }

  v63 = MEMORY[0x277D7B948];
  v65 = [v6 networkDetails];
  v64 = [v65 connectedBss];
  v61 = [v64 channel];
  v62 = [v6 networkDetails];
  v60 = [v62 connectedBss];
  v59 = +[WiFiUsagePrivacyFilter waBandFromBand:](WiFiUsagePrivacyFilter, "waBandFromBand:", [v60 band]);
  v58 = [v6 rssi];
  v57 = [v6 noise];
  v56 = [v6 snr];
  v55 = [v6 totalReportedCca];
  v54 = [v6 selfCca];
  v53 = [v6 otherCca];
  v52 = [v6 interference];
  v51 = [v6 beaconPer];
  v50 = [v6 rxFrames];
  v8 = [v6 rxRetriesOverRxFrames];
  v49 = [v6 rxFrames] * v8;
  v48 = [v6 txFrames];
  v9 = [v6 txRetriesOverTxFrames];
  v47 = [v6 txFrames] * v9;
  v10 = [v6 txFailsOverTxFrames];
  v11 = [v6 rxFrames] * v10;
  v12 = [v6 txRate];
  v13 = [v6 rxRate];
  v14 = [v6 isAnyAppInFG];
  v15 = [v6 isFTactive];
  v16 = [v6 isTimeSensitiveAppRunning];
  v17 = [v6 duration];
  v18 = self->_lqmDistributionSampling_store;
  if (v18)
  {
    v19 = [(NSNumber *)v18 longValue];
  }

  else
  {
    v19 = 1;
  }

  BYTE2(v46) = v16;
  BYTE1(v46) = v15;
  LOBYTE(v46) = v14;
  v20 = [v63 waLQMonChannel:v61 band:v59 rssi:v58 noise:v57 snr:v56 totalCCA:v55 selfCca:v54 otherCca:v53 interference:v52 beaconPer:v51 rxFrames:v50 rxRetryFrames:v49 txFrames:v48 txRetries:v47 txFail:v11 txRate:v12 rxRate:v13 isAnyAppInFG:v46 isFTactive:+[WiFiUsagePrivacyFilter scalingFactorForRawSampleRate:](WiFiUsagePrivacyFilter isTimeSensitiveAppRunning:"scalingFactorForRawSampleRate:" duration:v19) * v17];

  v21 = [MEMORY[0x277D7B940] sharedDeviceAnalyticsClient];
  v22 = [v6 networkDetails];
  v23 = [v22 connectedBss];
  v24 = [v23 bssid];
  v25 = [v6 timestamp];
  [v21 lqmEvent:v20 on:v24 at:v25];

LABEL_10:
  if (!self->_xctest_disableSampling)
  {
    lqmDistributionSampling_telemetry = self->_lqmDistributionSampling_telemetry;
    if (lqmDistributionSampling_telemetry)
    {
      if (![WiFiUsagePrivacyFilter canPerformActionWithRawSampleRate:[(NSNumber *)lqmDistributionSampling_telemetry longValue]])
      {
        goto LABEL_34;
      }
    }

    else if (![WiFiUsagePrivacyFilter canPerformActionWithSampleRate:1])
    {
      goto LABEL_34;
    }
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v27 = [(NSMutableDictionary *)self->_usageSessions valueForKey:v67];
  v28 = [v27 countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = *v75;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v75 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v74 + 1) + 8 * i);
        if ([v33 type] == 9)
        {
          v34 = v33;

          v30 = v34;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v74 objects:v79 count:16];
    }

    while (v29);
  }

  else
  {
    v30 = 0;
  }

  v35 = objc_opt_new();
  [objc_opt_class() appendTDStateToDict:v35 from:v30];
  [(WiFiUsageMonitor *)self appendUsbStatsToDict:v35];
  [(WiFiUsageMonitor *)self appendBTStatsToDict:v35];
  [(WiFiUsageMonitor *)self appendSARStatsToDict:v35];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v66 = v6;
  v36 = [v6 mloSamples];
  v37 = [v36 countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v71;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v71 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v70 + 1) + 8 * j);
        v42 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v35];
        v43 = [v41 asDictionaryInto:v42];
        AnalyticsSendEvent();
      }

      v38 = [v36 countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v38);
  }

  v6 = v66;
  v68 = v66;
  v69 = v35;
  v44 = v35;
  AnalyticsSendEventLazy();

LABEL_34:
  v45 = *MEMORY[0x277D85DE8];
}

- (void)submitBootLatenciesToCA
{
  v123[3] = *MEMORY[0x277D85DE8];
  if (self->_numberOfJoins && !self->_detectedJoinAfterIPConfig)
  {
    if (self->_bootToLastJoin)
    {
      v122[0] = @"latencyType";
      v3 = [MEMORY[0x277CCABB0] numberWithInteger:0];
      v123[0] = v3;
      v122[1] = @"latencyValue";
      v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_bootToLastJoin, "integerValue")}];
      v123[1] = v4;
      v122[2] = @"numberOfJoinsAttempts";
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v123[2] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v6 description];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = [v7 UTF8String];
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_bootToLastJoin: %s\n", buf, 0x16u);
      }

      bootToLastJoin = self->_bootToLastJoin;
      self->_bootToLastJoin = 0;
    }

    if (self->_firstUnlockToLastJoin)
    {
      v116[0] = @"latencyType";
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v117[0] = v9;
      v116[1] = @"latencyValue";
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_firstUnlockToLastJoin, "integerValue")}];
      v117[1] = v10;
      v116[2] = @"numberOfJoinsAttempts";
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v117[2] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v12 description];
        v14 = [v13 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v14;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_firstUnlockToLastJoin: %s\n", buf, 0x16u);
      }

      firstUnlockToLastJoin = self->_firstUnlockToLastJoin;
      self->_firstUnlockToLastJoin = 0;
    }

    if (self->_bootToLastLinkUp)
    {
      v114[0] = @"latencyType";
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:2];
      v115[0] = v16;
      v114[1] = @"latencyValue";
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_bootToLastLinkUp, "integerValue")}];
      v115[1] = v17;
      v114[2] = @"numberOfJoinsAttempts";
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v115[2] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v19 description];
        v21 = [v20 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v21;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_bootToLastLinkUp: %s\n", buf, 0x16u);
      }

      bootToLastLinkUp = self->_bootToLastLinkUp;
      self->_bootToLastLinkUp = 0;
    }

    if (self->_firstUnlockToLastLinkUp)
    {
      v112[0] = @"latencyType";
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:3];
      v113[0] = v23;
      v112[1] = @"latencyValue";
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_firstUnlockToLastLinkUp, "integerValue")}];
      v113[1] = v24;
      v112[2] = @"numberOfJoinsAttempts";
      v25 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v113[2] = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v26 description];
        v28 = [v27 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v28;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_firstUnlockToLastLinkUp: %s\n", buf, 0x16u);
      }

      firstUnlockToLastLinkUp = self->_firstUnlockToLastLinkUp;
      self->_firstUnlockToLastLinkUp = 0;
    }

    if (self->_lastJoinToLastLinkUp)
    {
      v110[0] = @"latencyType";
      v30 = [MEMORY[0x277CCABB0] numberWithInteger:4];
      v111[0] = v30;
      v110[1] = @"latencyValue";
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_lastJoinToLastLinkUp, "integerValue")}];
      v111[1] = v31;
      v110[2] = @"numberOfJoinsAttempts";
      v32 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v111[2] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v33 description];
        v35 = [v34 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v35;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_lastJoinToLastLinkUp: %s\n", buf, 0x16u);
      }

      lastJoinToLastLinkUp = self->_lastJoinToLastLinkUp;
      self->_lastJoinToLastLinkUp = 0;
    }

    if (self->_bootToIPv4)
    {
      v108[0] = @"latencyType";
      v37 = [MEMORY[0x277CCABB0] numberWithInteger:5];
      v109[0] = v37;
      v108[1] = @"latencyValue";
      v38 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_bootToIPv4, "integerValue")}];
      v109[1] = v38;
      v108[2] = @"numberOfJoinsAttempts";
      v39 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v109[2] = v39;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v40 description];
        v42 = [v41 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v42;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_bootToIPv4: %s\n", buf, 0x16u);
      }

      bootToIPv4 = self->_bootToIPv4;
      self->_bootToIPv4 = 0;
    }

    if (self->_firstUnlockToIPv4)
    {
      v106[0] = @"latencyType";
      v44 = [MEMORY[0x277CCABB0] numberWithInteger:6];
      v107[0] = v44;
      v106[1] = @"latencyValue";
      v45 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_firstUnlockToIPv4, "integerValue")}];
      v107[1] = v45;
      v106[2] = @"numberOfJoinsAttempts";
      v46 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v107[2] = v46;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v47 description];
        v49 = [v48 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v49;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_firstUnlockToIPv4: %s\n", buf, 0x16u);
      }

      firstUnlockToIPv4 = self->_firstUnlockToIPv4;
      self->_firstUnlockToIPv4 = 0;
    }

    if (self->_lastJoinToIPv4)
    {
      v104[0] = @"latencyType";
      v51 = [MEMORY[0x277CCABB0] numberWithInteger:7];
      v105[0] = v51;
      v104[1] = @"latencyValue";
      v52 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_lastJoinToIPv4, "integerValue")}];
      v105[1] = v52;
      v104[2] = @"numberOfJoinsAttempts";
      v53 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v105[2] = v53;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v55 = [v54 description];
        v56 = [v55 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v56;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_lastJoinToIPv4: %s\n", buf, 0x16u);
      }

      lastJoinToIPv4 = self->_lastJoinToIPv4;
      self->_lastJoinToIPv4 = 0;
    }

    if (self->_lastLinkUpToIPv4)
    {
      v102[0] = @"latencyType";
      v58 = [MEMORY[0x277CCABB0] numberWithInteger:8];
      v103[0] = v58;
      v102[1] = @"latencyValue";
      v59 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_lastLinkUpToIPv4, "integerValue")}];
      v103[1] = v59;
      v102[2] = @"numberOfJoinsAttempts";
      v60 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v103[2] = v60;
      v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v62 = [v61 description];
        v63 = [v62 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v63;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_lastLinkUpToIPv4: %s\n", buf, 0x16u);
      }

      lastLinkUpToIPv4 = self->_lastLinkUpToIPv4;
      self->_lastLinkUpToIPv4 = 0;
    }

    if (self->_bootToIPv6)
    {
      v100[0] = @"latencyType";
      v65 = [MEMORY[0x277CCABB0] numberWithInteger:9];
      v101[0] = v65;
      v100[1] = @"latencyValue";
      v66 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_bootToIPv6, "integerValue")}];
      v101[1] = v66;
      v100[2] = @"numberOfJoinsAttempts";
      v67 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v101[2] = v67;
      v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v69 = [v68 description];
        v70 = [v69 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v70;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_bootToIPv6: %s\n", buf, 0x16u);
      }

      bootToIPv6 = self->_bootToIPv6;
      self->_bootToIPv6 = 0;
    }

    if (self->_firstUnlockToIPv6)
    {
      v98[0] = @"latencyType";
      v72 = [MEMORY[0x277CCABB0] numberWithInteger:10];
      v99[0] = v72;
      v98[1] = @"latencyValue";
      v73 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_firstUnlockToIPv6, "integerValue")}];
      v99[1] = v73;
      v98[2] = @"numberOfJoinsAttempts";
      v74 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v99[2] = v74;
      v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v76 = [v75 description];
        v77 = [v76 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v77;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_firstUnlockToIPv6: %s\n", buf, 0x16u);
      }

      firstUnlockToIPv6 = self->_firstUnlockToIPv6;
      self->_firstUnlockToIPv6 = 0;
    }

    if (self->_lastJoinToIPv6)
    {
      v96[0] = @"latencyType";
      v79 = [MEMORY[0x277CCABB0] numberWithInteger:11];
      v97[0] = v79;
      v96[1] = @"latencyValue";
      v80 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_lastJoinToIPv6, "integerValue")}];
      v97[1] = v80;
      v96[2] = @"numberOfJoinsAttempts";
      v81 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v97[2] = v81;
      v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v83 = [v82 description];
        v84 = [v83 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v84;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_lastJoinToIPv6: %s\n", buf, 0x16u);
      }

      lastJoinToIPv6 = self->_lastJoinToIPv6;
      self->_lastJoinToIPv6 = 0;
    }

    if (self->_lastLinkUpToIPv6)
    {
      v86 = [MEMORY[0x277CCABB0] numberWithInteger:{12, @"latencyType"}];
      v95[0] = v86;
      v94[1] = @"latencyValue";
      v87 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSNumber integerValue](self->_lastLinkUpToIPv6, "integerValue")}];
      v95[1] = v87;
      v94[2] = @"numberOfJoinsAttempts";
      v88 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfJoins];
      v95[2] = v88;
      v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:3];

      AnalyticsSendEvent();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v90 = [v89 description];
        v91 = [v90 UTF8String];
        *buf = 136315394;
        v119 = "[WiFiUsageMonitor submitBootLatenciesToCA]";
        v120 = 2080;
        v121 = v91;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: dict_lastLinkUpToIPv6: %s\n", buf, 0x16u);
      }

      lastLinkUpToIPv6 = self->_lastLinkUpToIPv6;
      self->_lastLinkUpToIPv6 = 0;
    }
  }

  v93 = *MEMORY[0x277D85DE8];
}

- (void)updateWithChQualScore:(unint64_t)a3 txLatencyScore:(unint64_t)a4 rxLatencyScore:(unint64_t)a5 txLossScore:(unint64_t)a6 rxLossScore:(unint64_t)a7 txLatencyP95:(unint64_t)a8 linkRecommendationFlags:(unint64_t)a9 rtTrafficStatus:(unint64_t)a10 forInterface:(id)a11
{
  v17 = a11;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __162__WiFiUsageMonitor_updateWithChQualScore_txLatencyScore_rxLatencyScore_txLossScore_rxLossScore_txLatencyP95_linkRecommendationFlags_rtTrafficStatus_forInterface___block_invoke;
  block[3] = &unk_2789C70D0;
  block[4] = self;
  v21 = v17;
  v22 = a3;
  v23 = a4;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v19 = v17;
  dispatch_async(internalQueue, block);
}

void __162__WiFiUsageMonitor_updateWithChQualScore_txLatencyScore_rxLatencyScore_txLossScore_rxLossScore_txLatencyP95_linkRecommendationFlags_rtTrafficStatus_forInterface___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 samples];
  v4 = [v3 lastObject];

  v5 = *(a1 + 88);
  [v4 updateWithChQualScore:*(a1 + 48) txLatencyScore:*(a1 + 56) rxLatencyScore:*(a1 + 56) txLossScore:*(a1 + 64) rxLossScore:*(a1 + 72) txLatencyP95:*(a1 + 80) linkRecommendationFlags:v5 rtTrafficStatus:*(a1 + 96)];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [*(*(a1 + 32) + 104) valueForKey:*(a1 + 40)];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 expectsLQMUpdates])
        {
          [v11 updateWithScores:v4];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (![*(a1 + 32) isBSPActive] || (objc_msgSend(v4, "numberForKeyPath:", @"bspTriggerCount"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    [*(a1 + 32) submitLqmToCA:v4 forInterface:*(a1 + 40)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateIsBSPActive:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__WiFiUsageMonitor_updateIsBSPActive___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

void __329__WiFiUsageMonitor_updateWithBspOverflowed_IsBSPActive_BspTimeToTST_BspSampleDurationMS_IsScanActiveBSP_IsP2PActiveBSP_BspTriggerCount_BspMutePercentage_BspMaxMuteMS_BspAvgMuteMS_BspErrorPercentage_BspTimeOutPercentageOfTriggers_BspRejectOrFailPercentageOfTriggers_bspMaxConsecutiveFails_supportsLinkRecommendation_forInterface___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 samples];
  v6 = [v3 lastObject];

  v4 = *(a1 + 80);
  [v6 populateWithBspOverflowed:*(a1 + 128) IsBSPActive:*(a1 + 129) BspTimeToTST:*(a1 + 48) BspSampleDurationMS:*(a1 + 56) IsScanActiveBSP:*(a1 + 130) IsP2PActiveBSP:*(a1 + 131) BspTriggerCount:*(a1 + 64) BspMutePercentage:*(a1 + 72) BspMaxMuteMS:*(a1 + 80) BspAvgMuteMS:*(a1 + 88) BspErrorPercentage:*(a1 + 96) BspTimeOutPercentageOfTriggers:*(a1 + 104) BspRejectOrFailPercentageOfTriggers:*(a1 + 112) BspMaxConsecutiveFails:*(a1 + 120)];
  if ([*(a1 + 32) isBSPActive])
  {
    if (*(a1 + 132) != 1 || ([v6 numberForKeyPath:@"chanQualScore"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      [*(a1 + 32) submitLqmToCA:v6 forInterface:*(a1 + 40)];
    }
  }
}

- (void)notifyIPv4Changes:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WiFiUsageMonitor_notifyIPv4Changes___block_invoke;
  v7[3] = &unk_2789C6608;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __38__WiFiUsageMonitor_notifyIPv4Changes___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [[WiFiUsageNetworkIPv4Details alloc] initWithDictionary:*(a1 + 32)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v47 = "[WiFiUsageMonitor notifyIPv4Changes:]_block_invoke";
    v48 = 2112;
    v49 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - details: %@", buf, 0x16u);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [*(*(a1 + 40) + 104) allValues];
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v37;
          do
          {
            v13 = 0;
            do
            {
              if (*v37 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v36 + 1) + 8 * v13++) processIPv4Changes:v2];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v5);
  }

  if ([(WiFiUsageNetworkIPv4Details *)v2 isValid])
  {
    v14 = *(a1 + 40);
    if (!*(v14 + 416) && *(v14 + 336) <= 0x64uLL)
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = *(a1 + 40);
      v17 = *(v16 + 416);
      *(v16 + 416) = v15;

      v18 = MEMORY[0x277CCABB0];
      +[WiFiUsagePrivacyFilter timeSinceBootInSeconds];
      v19 = [v18 numberWithDouble:?];
      v20 = *(a1 + 40);
      v21 = *(v20 + 424);
      *(v20 + 424) = v19;

      v22 = *(a1 + 40);
      if (*(v22 + 352))
      {
        v23 = MEMORY[0x277CCABB0];
        [*(v22 + 416) timeIntervalSinceDate:?];
        v24 = [v23 numberWithDouble:?];
        v25 = *(a1 + 40);
        v26 = *(v25 + 432);
        *(v25 + 432) = v24;

        v22 = *(a1 + 40);
      }

      if (*(v22 + 360))
      {
        v27 = MEMORY[0x277CCABB0];
        [*(v22 + 416) timeIntervalSinceDate:?];
        v28 = [v27 numberWithDouble:?];
        v29 = *(a1 + 40);
        v30 = *(v29 + 440);
        *(v29 + 440) = v28;

        v22 = *(a1 + 40);
      }

      if (*(v22 + 384))
      {
        v31 = MEMORY[0x277CCABB0];
        [*(v22 + 416) timeIntervalSinceDate:?];
        v32 = [v31 numberWithDouble:?];
        v33 = *(a1 + 40);
        v34 = *(v33 + 448);
        *(v33 + 448) = v32;

        v22 = *(a1 + 40);
      }

      [v22 submitBootLatenciesToCA];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)notifyIPv6Changes:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WiFiUsageMonitor_notifyIPv6Changes___block_invoke;
  v7[3] = &unk_2789C6608;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __38__WiFiUsageMonitor_notifyIPv6Changes___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [[WiFiUsageNetworkIPv6Details alloc] initWithDictionary:*(a1 + 32)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v47 = "[WiFiUsageMonitor notifyIPv6Changes:]_block_invoke";
    v48 = 2112;
    v49 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - details: %@", buf, 0x16u);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = [*(*(a1 + 40) + 104) allValues];
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v37;
          do
          {
            v13 = 0;
            do
            {
              if (*v37 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v36 + 1) + 8 * v13++) processIPv6Changes:v2];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v5);
  }

  if ([(WiFiUsageNetworkIPv6Details *)v2 isValid])
  {
    v14 = *(a1 + 40);
    if (!*(v14 + 456) && *(v14 + 336) <= 0x64uLL)
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = *(a1 + 40);
      v17 = *(v16 + 456);
      *(v16 + 456) = v15;

      v18 = MEMORY[0x277CCABB0];
      +[WiFiUsagePrivacyFilter timeSinceBootInSeconds];
      v19 = [v18 numberWithDouble:?];
      v20 = *(a1 + 40);
      v21 = *(v20 + 464);
      *(v20 + 464) = v19;

      v22 = *(a1 + 40);
      if (*(v22 + 352))
      {
        v23 = MEMORY[0x277CCABB0];
        [*(v22 + 456) timeIntervalSinceDate:?];
        v24 = [v23 numberWithDouble:?];
        v25 = *(a1 + 40);
        v26 = *(v25 + 472);
        *(v25 + 472) = v24;

        v22 = *(a1 + 40);
      }

      if (*(v22 + 360))
      {
        v27 = MEMORY[0x277CCABB0];
        [*(v22 + 456) timeIntervalSinceDate:?];
        v28 = [v27 numberWithDouble:?];
        v29 = *(a1 + 40);
        v30 = *(v29 + 480);
        *(v29 + 480) = v28;

        v22 = *(a1 + 40);
      }

      if (*(v22 + 384))
      {
        v31 = MEMORY[0x277CCABB0];
        [*(v22 + 456) timeIntervalSinceDate:?];
        v32 = [v31 numberWithDouble:?];
        v33 = *(a1 + 40);
        v34 = *(v33 + 488);
        *(v33 + 488) = v32;

        v22 = *(a1 + 40);
      }

      [v22 submitBootLatenciesToCA];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)notifyDHCPChanges:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WiFiUsageMonitor_notifyDHCPChanges___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __38__WiFiUsageMonitor_notifyDHCPChanges___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    *buf = 136315906;
    v27 = "[WiFiUsageMonitor notifyDHCPChanges:]_block_invoke";
    v28 = 1024;
    v29 = 3199;
    v30 = 2048;
    v31 = v2;
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d, self[%p], dictionary: %@", buf, 0x26u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [*(*(a1 + 32) + 104) allValues];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v16 + 1) + 8 * v14++) processDHCPChanges:*(a1 + 40)];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)notifyIpConfigurationStateWithMethod:(BOOL)a3 dhcpLeaseDuration:(double)a4 hasRoutableIpV4:(BOOL)a5 hasRoutableIpV6:(BOOL)a6
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__WiFiUsageMonitor_notifyIpConfigurationStateWithMethod_dhcpLeaseDuration_hasRoutableIpV4_hasRoutableIpV6___block_invoke;
  block[3] = &unk_2789C7120;
  block[4] = self;
  v8 = a3;
  *&block[5] = a4;
  v9 = a5;
  v10 = a6;
  dispatch_async(internalQueue, block);
}

void __107__WiFiUsageMonitor_notifyIpConfigurationStateWithMethod_dhcpLeaseDuration_hasRoutableIpV4_hasRoutableIpV6___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v14 + 1) + 8 * v12++) ipConfigurationDidChangeWithMethod:*(a1 + 48) dhcpLeaseDuration:*(a1 + 49) hasRoutableIpV4:*(a1 + 50) hasRoutableIpV6:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)notifyInterfaceRankingState:(BOOL)a3 forInterface:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WiFiUsageMonitor_notifyInterfaceRankingState_forInterface___block_invoke;
  block[3] = &unk_2789C6C20;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

void __61__WiFiUsageMonitor_notifyInterfaceRankingState_forInterface___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 104) objectForKey:*(a1 + 40)];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) interfaceRankingDidChange:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyDriverAvailability:(id)a3 available:(BOOL)a4 version:(unint64_t)a5 flags:(unint64_t)a6 eventID:(unint64_t)a7 reason:(int64_t)a8 subReason:(int64_t)a9 minorReason:(int64_t)a10 reasonString:(id)a11
{
  v17 = a3;
  v18 = a11;
  internalQueue = self->_internalQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __119__WiFiUsageMonitor_notifyDriverAvailability_available_version_flags_eventID_reason_subReason_minorReason_reasonString___block_invoke;
  v22[3] = &unk_2789C7148;
  v22[4] = self;
  v23 = v17;
  v31 = a4;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a9;
  v30 = a10;
  v24 = v18;
  v25 = a5;
  v20 = v18;
  v21 = v17;
  dispatch_async(internalQueue, v22);
}

void __119__WiFiUsageMonitor_notifyDriverAvailability_available_version_flags_eventID_reason_subReason_minorReason_reasonString___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 104) valueForKey:*(a1 + 40)];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) processDriverAvailability:*(a1 + 40) available:*(a1 + 104) version:*(a1 + 56) flags:*(a1 + 64) eventID:*(a1 + 72) reason:*(a1 + 80) subReason:*(a1 + 88) minorReason:*(a1 + 96) reasonString:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateWithRoamingSuppression:(unsigned __int8)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__WiFiUsageMonitor_updateWithRoamingSuppression___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

void __49__WiFiUsageMonitor_updateWithRoamingSuppression___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v16 + 1) + 8 * j);
              [v13 updateWithRoamingSuppression:*(a1 + 40)];
              if ([v13 type] == 4)
              {
                v14 = [v13 currentBssSession];
                [v14 updateWithRoamingSuppression:*(a1 + 40)];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateWithCompatibilityMode:(unsigned __int8)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__WiFiUsageMonitor_updateWithCompatibilityMode___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

- (void)updateCurrentNetworkDetails:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WiFiUsageMonitor_updateCurrentNetworkDetails___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __48__WiFiUsageMonitor_updateCurrentNetworkDetails___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 280), *(a1 + 40));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v14 + 1) + 8 * v12++) updateAssociatedNetworkDetails:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateRealTimeCoex:(BOOL)a3 type:(unint64_t)a4 reasons:(id)a5
{
  v8 = a5;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__WiFiUsageMonitor_updateRealTimeCoex_type_reasons___block_invoke;
  v11[3] = &unk_2789C7080;
  v14 = a3;
  v12 = v8;
  v13 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(internalQueue, v11);
}

void __52__WiFiUsageMonitor_updateRealTimeCoex_type_reasons___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v14 + 1) + 8 * v12++) setRealtimeCoexStarted:*(a1 + 56) type:*(a1 + 48) reasons:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setAwdlSequence:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__WiFiUsageMonitor_setAwdlSequence___block_invoke;
  v7[3] = &unk_2789C6608;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __36__WiFiUsageMonitor_setAwdlSequence___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v33;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [*(*(a1 + 40) + 280) isCurrentBssOnChannel:v9];
        if (([v9 is5GHz] & 1) != 0 || objc_msgSend(v9, "is6GHz"))
        {
          v7 = v7 + 1.0;
        }

        else if ([v9 is2_4GHz])
        {
          v7 = v7 + 0.5;
        }

        v5 += v10;
      }

      v4 = [v2 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v7 = 0.0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [*(*(a1 + 40) + 104) allValues];
  v11 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v23 = *v29;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * j);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v24 + 1) + 8 * k);
              [v20 setAwdlSequence:*(a1 + 32) infraScore:v5 p2pScore:v7];
              [v20 setRealTimeCoexStatus:v7 >= 16.0 type:0];
            }

            v17 = [v15 countByEnumeratingWithState:&v24 objects:v36 count:16];
          }

          while (v17);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateLinkRecoveryDisabled:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__WiFiUsageMonitor_updateLinkRecoveryDisabled___block_invoke;
  v4[3] = &unk_2789C6688;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

void __47__WiFiUsageMonitor_updateLinkRecoveryDisabled___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 112) allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) updateLinkRecoveryDisabled:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateLinkTestInterval:(unint64_t)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__WiFiUsageMonitor_updateLinkTestInterval___block_invoke;
  v4[3] = &unk_2789C7170;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(internalQueue, v4);
}

void __43__WiFiUsageMonitor_updateLinkTestInterval___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 112) allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) updateLinkTestInterval:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setSteeringRequest:(unint64_t)a3 preferredChannel:(unint64_t)a4 preferredBand:(int)a5 preferredSSID:(id)a6 targetSSIDDiffersFromCurrent:(BOOL)a7 preferredBSS:(id)a8 ssidIsSplit:(BOOL)a9 transitionCandidates:(BOOL)a10
{
  v16 = a6;
  v17 = a8;
  internalQueue = self->_internalQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __159__WiFiUsageMonitor_setSteeringRequest_preferredChannel_preferredBand_preferredSSID_targetSSIDDiffersFromCurrent_preferredBSS_ssidIsSplit_transitionCandidates___block_invoke;
  v21[3] = &unk_2789C7198;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v21[4] = self;
  v22 = v16;
  v27 = a7;
  v23 = v17;
  v28 = a9;
  v29 = a10;
  v19 = v17;
  v20 = v16;
  dispatch_async(internalQueue, v21);
}

void __159__WiFiUsageMonitor_setSteeringRequest_preferredChannel_preferredBand_preferredSSID_targetSSIDDiffersFromCurrent_preferredBSS_ssidIsSplit_transitionCandidates___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              LOWORD(v14) = *(a1 + 77);
              [*(*(&v15 + 1) + 8 * v12++) setSteeringRequest:*(a1 + 56) preferredChannel:*(a1 + 64) preferredBand:*(a1 + 72) preferredSSID:*(a1 + 40) targetSSIDDiffersFromCurrent:*(a1 + 76) preferredBSS:*(a1 + 48) ssidIsSplit:v14 transitionCandidates:?];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateKnownNetworksSupportingSeamless:(id)a3 forBSS:(id)a4 andSSID:(id)a5 beaconCache:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke;
  block[3] = &unk_2789C6E78;
  v20 = v11;
  v21 = v13;
  v22 = v12;
  v23 = v10;
  v24 = self;
  v15 = v10;
  v16 = v12;
  v17 = v13;
  v18 = v11;
  dispatch_async(internalQueue, block);
}

void __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke(uint64_t a1)
{
  v177 = *MEMORY[0x277D85DE8];
  v127 = objc_opt_new();
  v114 = objc_opt_new();
  v107 = objc_opt_new();
  v109 = objc_opt_new();
  v111 = [WiFiUsagePrivacyFilter isLocallyAdministeredBitSetInBSSData:*(a1 + 32)];
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v115 = a1;
  obj = *(a1 + 40);
  v118 = [obj countByEnumeratingWithState:&v158 objects:v176 count:16];
  if (v118)
  {
    v128 = 0;
    v116 = *v159;
    v103 = -1;
    v105 = -1;
    do
    {
      for (i = 0; i != v118; ++i)
      {
        if (*v159 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v158 + 1) + 8 * i);
        v125 = [v3 objectForKey:@"BSSID"];
        v4 = [WiFiUsagePrivacyFilter macAddressData:?];
        v120 = [WiFiUsagePrivacyFilter isLocallyAdministeredBitSetInBSSData:v4];
        v5 = [v3 objectForKey:@"SSID"];
        v123 = v4;
        if (v5)
        {
          v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
        }

        else
        {
          v6 = 0;
        }

        v7 = [v3 objectForKey:@"CHANNEL"];
        v8 = [v7 unsignedIntegerValue];
        v9 = [v3 objectForKey:@"CHANNEL_FLAGS"];
        v10 = [v9 unsignedIntegerValue];
        v11 = [v3 objectForKey:@"RSSI"];
        v12 = v125;
        v13 = +[WiFiUsageBssDetails bssWithIdentifier:channel:channelFlags:rssi:](WiFiUsageBssDetails, "bssWithIdentifier:channel:channelFlags:rssi:", v125, v8, v10, [v11 integerValue]);

        if (v13)
        {
          [v114 addObject:v13];
        }

        if (v5 && [v5 length] && (objc_msgSend(v123, "isEqualToData:", *(v115 + 32)) & 1) == 0 && ((v111 ^ v120) & 1) == 0)
        {
          if ([v6 isEqualToString:*(v115 + 48)])
          {
            ++v128;
          }

          else
          {
            [v127 addObject:v5];
            v14 = [DataComparisonByBytes dataComparisonByBytesWithData1:v123 data2:*(v115 + 32) reference:v5];
            if (+[ObjectComparisonByTokens addComparison:to:ifMinOverlap:](ObjectComparisonByTokens, "addComparison:to:ifMinOverlap:", v14, v107, 4) && [v14 distance] < v105)
            {
              v105 = [v14 distance];
            }

            v15 = [StringComparisonByChars stringComparisonByCharsWithString1:v6 string2:*(v115 + 48) reference:v5];
            if (+[ObjectComparisonByTokens addComparison:to:ifMinOverlap:](ObjectComparisonByTokens, "addComparison:to:ifMinOverlap:", v15, v109, [*(v115 + 48) length] >> 1) && objc_msgSend(v15, "diffTokensCount") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v15, "diffTokensCount") < v103)
            {
              v103 = [v15 diffTokensCount];
            }
          }

          v12 = v125;
        }
      }

      v118 = [obj countByEnumeratingWithState:&v158 objects:v176 count:16];
    }

    while (v118);
  }

  else
  {
    v128 = 0;
    v103 = -1;
    v105 = -1;
  }

  v16 = v115;
  v17 = [*(v115 + 56) set];
  [v127 intersectSet:v17];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(v115 + 48) dataUsingEncoding:4];
    *buf = 136315907;
    v169 = "[WiFiUsageMonitor updateKnownNetworksSupportingSeamless:forBSS:andSSID:beaconCache:]_block_invoke";
    v170 = 2160;
    v171 = 1752392040;
    v172 = 2112;
    v173 = v18;
    v174 = 2113;
    v175 = v127;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s -  SSIDTransitionCandidates(excluding %{mask.hash}@):%{private}@\n", buf, 0x2Au);
  }

  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"distance == %lu", v105];
  [v107 filterUsingPredicate:v19];

  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"diffTokensCount == %lu", v103];
  [v109 filterUsingPredicate:v20];

  v21 = objc_opt_new();
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v22 = v107;
  v23 = [v22 countByEnumeratingWithState:&v154 objects:v167 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v155;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v155 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v154 + 1) + 8 * j);
        v28 = [v27 reference];
        v29 = [v21 objectForKeyedSubscript:v28];

        if (!v29)
        {
          v30 = objc_opt_new();
          v31 = [v27 reference];
          [v21 setObject:v30 forKeyedSubscript:v31];
        }

        v32 = [v27 reference];
        v33 = [v21 objectForKeyedSubscript:v32];
        [v33 addObject:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v154 objects:v167 count:16];
    }

    while (v24);
  }

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v117 = v109;
  v34 = [v117 countByEnumeratingWithState:&v150 objects:v166 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v151;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v151 != v36)
        {
          objc_enumerationMutation(v117);
        }

        v38 = *(*(&v150 + 1) + 8 * k);
        v39 = [v38 reference];
        v40 = [v21 objectForKeyedSubscript:v39];

        if (!v40)
        {
          v41 = objc_opt_new();
          v42 = [v38 reference];
          [v21 setObject:v41 forKeyedSubscript:v42];
        }

        v43 = [v38 reference];
        v44 = [v21 objectForKeyedSubscript:v43];
        [v44 addObject:v38];
      }

      v35 = [v117 countByEnumeratingWithState:&v150 objects:v166 count:16];
    }

    while (v35);
  }

  v104 = v22;

  v45 = [v21 keysOfEntriesPassingTest:&__block_literal_global_757];
  v46 = [v45 allObjects];
  v47 = MEMORY[0x277CBEAC0];
  v48 = objc_opt_new();
  v106 = v21;
  v49 = [v21 objectsForKeys:v46 notFoundMarker:v48];
  v101 = v46;
  v50 = [v47 dictionaryWithObjects:v49 forKeys:v46];

  v126 = v50;
  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -  Top Potential Candidates And Votes:%@\n", "-[WiFiUsageMonitor updateKnownNetworksSupportingSeamless:forBSS:andSSID:beaconCache:]_block_invoke_2", v50];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v51, "UTF8String")];
    v53 = [v52 UTF8String];
    *buf = 136446210;
    v169 = v53;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v102 = v45;
  v124 = [MEMORY[0x277CBEB58] setWithSet:v45];
  [v124 minusSet:v127];
  v54 = objc_opt_new();
  [*(v115 + 64) updateBssPerChannelWith:v114 into:v54 and:0 withChannelInfoList:*(*(v115 + 64) + 264)];
  v55 = [v54 keysOfEntriesPassingTest:&__block_literal_global_768];
  v56 = [v55 count];

  v57 = [v54 keysOfEntriesPassingTest:&__block_literal_global_770];
  v58 = [v57 count];

  v59 = 1;
  if (v56)
  {
    v59 = 2;
  }

  if (v58)
  {
    v60 = v59;
  }

  else
  {
    v60 = v56 != 0;
  }

  v61 = [v54 keysOfEntriesPassingTest:&__block_literal_global_772];
  v62 = [v61 count];

  if (v62)
  {
    v63 = v60 + 1;
  }

  else
  {
    v63 = v60;
  }

  if ([WiFiUsagePrivacyFilter canPerformActionWithSampleRate:2])
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v108 = [v126 allKeys];
    obja = [v108 countByEnumeratingWithState:&v146 objects:v165 count:16];
    if (obja)
    {
      v110 = *v147;
      do
      {
        v64 = 0;
        do
        {
          if (*v147 != v110)
          {
            objc_enumerationMutation(v108);
          }

          v119 = v64;
          v65 = *(*(&v146 + 1) + 8 * v64);
          v66 = objc_opt_new();
          v67 = [MEMORY[0x277CCABB0] numberWithInteger:v128];
          [v66 setObject:v67 forKeyedSubscript:@"roamCandidatesInScan"];

          v68 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v127, "count")}];
          [v66 setObject:v68 forKeyedSubscript:@"knownCandidatesInScan"];

          v69 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v126, "count")}];
          [v66 setObject:v69 forKeyedSubscript:@"potentialCandidatesInScan"];

          v70 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v127, "containsObject:", v65)}];
          [v66 setObject:v70 forKeyedSubscript:@"potentialCandidateIsKnown"];

          v71 = [MEMORY[0x277CCABB0] numberWithInteger:v63];
          [v66 setObject:v71 forKeyedSubscript:@"uniqueBandsInScan"];

          v72 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v54, "count")}];
          [v66 setObject:v72 forKeyedSubscript:@"uniqueChannelsInScan"];

          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v121 = [v126 objectForKeyedSubscript:v65];
          v73 = [v121 countByEnumeratingWithState:&v142 objects:v164 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = *v143;
            do
            {
              for (m = 0; m != v74; ++m)
              {
                if (*v143 != v75)
                {
                  objc_enumerationMutation(v121);
                }

                v77 = *(*(&v142 + 1) + 8 * m);
                if ([v77 isMemberOfClass:objc_opt_class()])
                {
                  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v77, "sameTokensCount")}];
                  [v66 setObject:v78 forKeyedSubscript:@"SSID_overlap"];

                  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v77, "diffTokensCount")}];
                  [v66 setObject:v79 forKeyedSubscript:@"SSID_diff"];

                  v80 = MEMORY[0x277CCABB0];
                  v81 = [v77 obj1];
                  v82 = [v80 numberWithInteger:{objc_msgSend(v81, "length")}];
                  [v66 setObject:v82 forKeyedSubscript:@"SSID1_length"];

                  v83 = MEMORY[0x277CCABB0];
                  v84 = [v77 obj2];
                  v85 = [v83 numberWithInteger:{objc_msgSend(v84, "length")}];
                  [v66 setObject:v85 forKeyedSubscript:@"SSID2_length"];
                }

                if ([v77 isMemberOfClass:objc_opt_class()])
                {
                  v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v77, "sameTokensCount")}];
                  [v66 setObject:v86 forKeyedSubscript:@"BSSID_overlap"];

                  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v77, "diffTokensCount")}];
                  [v66 setObject:v87 forKeyedSubscript:@"BSSID_diff"];

                  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v77, "distance")}];
                  [v66 setObject:v88 forKeyedSubscript:@"BSSID_distance"];
                }
              }

              v74 = [v121 countByEnumeratingWithState:&v142 objects:v164 count:16];
            }

            while (v74);
          }

          v137 = MEMORY[0x277D85DD0];
          v138 = 3221225472;
          v139 = __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke_4;
          v140 = &unk_2789C6A10;
          v141 = v66;
          v89 = v66;
          AnalyticsSendEventLazy();

          v64 = v119 + 1;
        }

        while ((v119 + 1) != obja);
        obja = [v108 countByEnumeratingWithState:&v146 objects:v165 count:16];
      }

      while (obja);
    }

    v16 = v115;
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v122 = [*(*(v16 + 64) + 104) allValues];
  v90 = [v122 countByEnumeratingWithState:&v133 objects:v163 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v134;
    do
    {
      for (n = 0; n != v91; ++n)
      {
        if (*v134 != v92)
        {
          objc_enumerationMutation(v122);
        }

        v94 = *(*(&v133 + 1) + 8 * n);
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v95 = v94;
        v96 = [v95 countByEnumeratingWithState:&v129 objects:v162 count:16];
        if (v96)
        {
          v97 = v96;
          v98 = *v130;
          do
          {
            for (ii = 0; ii != v97; ++ii)
            {
              if (*v130 != v98)
              {
                objc_enumerationMutation(v95);
              }

              [*(*(&v129 + 1) + 8 * ii) setSSIDTransitionCandidates:v127 SSIDTransitionPotentialCandidates:v126 potentialCandidatesMinusCandidates:v124 roamCandidates:v128 uniqueChannels:objc_msgSend(v54 uniqueBands:{"count"), v63}];
            }

            v97 = [v95 countByEnumeratingWithState:&v129 objects:v162 count:16];
          }

          while (v97);
        }
      }

      v91 = [v122 countByEnumeratingWithState:&v133 objects:v163 count:16];
    }

    while (v91);
  }

  v100 = *MEMORY[0x277D85DE8];
}

BOOL __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke_765(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([a2 band])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 count] != 0;
  }

  return v5;
}

BOOL __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 band] == 1 && objc_msgSend(v4, "count") != 0;

  return v5;
}

BOOL __85__WiFiUsageMonitor_updateKnownNetworksSupportingSeamless_forBSS_andSSID_beaconCache___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 band] == 2 && objc_msgSend(v4, "count") != 0;

  return v5;
}

- (void)updateScanForwardStats:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__WiFiUsageMonitor_updateScanForwardStats___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __43__WiFiUsageMonitor_updateScanForwardStats___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v14 + 1) + 8 * v12++) updateScanForwardStats:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setUsbStatus:(BOOL)a3 currentDevices:(id)a4 currentNoiseDelta:(int64_t)a5
{
  v8 = a4;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__WiFiUsageMonitor_setUsbStatus_currentDevices_currentNoiseDelta___block_invoke;
  v11[3] = &unk_2789C7080;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(internalQueue, v11);
}

void __66__WiFiUsageMonitor_setUsbStatus_currentDevices_currentNoiseDelta___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 35) = [*(a1 + 40) count] != 0;
  objc_storeStrong((*(a1 + 32) + 288), *(a1 + 40));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(*(a1 + 32) + 104) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:{v7, 0}];
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v14 + 1) + 8 * v12++) updateUsbStatus:*(a1 + 56) currentDevices:*(a1 + 40)];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  *(*(a1 + 32) + 296) = *(a1 + 48);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)pushTDEventToHUD:(id)a3
{
  if (a3)
  {
    tdSoftError = self->_tdSoftError;
    if (tdSoftError)
    {
      v4 = [(WiFiSoftError *)tdSoftError updateHUDWithMessage:?];
    }
  }
}

- (void)pushRNFEventToHUD:(BOOL)a3
{
  if (self->_rnfSoftError)
  {
    if (a3)
    {
      v4 = @"Wi-Fi Assist: cellular fallback is active";
    }

    else
    {
      v4 = @"Wi-Fi Assist: cellular fallback is inactive";
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4];
    v5 = [(WiFiSoftError *)self->_rnfSoftError updateHUDWithMessage:v6];
  }
}

+ (id)getTDConfirmedEventStringForDisplay:(id *)a3
{
  v3 = &stru_28487EF20;
  if (a3->var0)
  {
    v4 = @"Tx PER";
  }

  else
  {
    v4 = &stru_28487EF20;
  }

  v5 = @"Beacon PER";
  if (!a3->var1)
  {
    v5 = &stru_28487EF20;
  }

  if (a3->var2)
  {
    v6 = @"FW Tx PER";
  }

  else
  {
    v6 = &stru_28487EF20;
  }

  if (a3->var3)
  {
    v7 = @"Gateway ARP Failures";
  }

  else
  {
    v7 = &stru_28487EF20;
  }

  if (a3->var4)
  {
    v3 = @"Symptoms DNS Errors";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@%@", v4, v5, v6, v7, v3];
  if ([v8 length])
  {
    v9 = [MEMORY[0x277CCAB68] stringWithFormat:@"TD evaluation in progress: high %@ detected", v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)getTDEvalCompleteEventStringForDisplay:(int)a3
{
  v3 = @"Roamed";
  v4 = @"Unknown";
  if (a3 == 13)
  {
    v4 = @"Link down";
  }

  if (a3 != 14)
  {
    v3 = v4;
  }

  if (a3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"RSSI improved";
  }

  v6 = [(__CFString *)v5 length];
  if (v6)
  {
    v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"TD evaluation complete: outcome %@", v5];
  }

  return v6;
}

- (void)resetDeviceSessionforInterface:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__WiFiUsageMonitor_resetDeviceSessionforInterface___block_invoke;
    v7[3] = &unk_2789C6608;
    v7[4] = self;
    v8 = v4;
    dispatch_async(internalQueue, v7);
  }
}

void __51__WiFiUsageMonitor_resetDeviceSessionforInterface___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:{*(a1 + 40), 0}];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 type] == 1)
        {
          [v6 sessionDidStart];
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
}

- (id)faultReasonCount:(unint64_t)a3 forInterface:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (v6 && a3 - 38 >= 0xFFFFFFFFFFFFFFDBLL)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__1;
    v18 = __Block_byref_object_dispose__1;
    v19 = objc_opt_new();
    internalQueue = self->_internalQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__WiFiUsageMonitor_faultReasonCount_forInterface___block_invoke;
    v10[3] = &unk_2789C7200;
    v10[4] = self;
    v11 = v6;
    v12 = &v14;
    v13 = a3;
    dispatch_sync(internalQueue, v10);
    v7 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return v7;
}

void __50__WiFiUsageMonitor_faultReasonCount_forInterface___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:{a1[5], 0}];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = *(*(a1[6] + 8) + 40);
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "faultReasonCount:", a1[7])}];
        v10 = [v7 sessionName];
        [v8 setValue:v9 forKey:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)getProperty:(id)a3 forAllSessionsOfInterface:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__1;
    v19 = __Block_byref_object_dispose__1;
    v20 = objc_opt_new();
    internalQueue = self->_internalQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__WiFiUsageMonitor_getProperty_forAllSessionsOfInterface___block_invoke;
    v11[3] = &unk_2789C7228;
    v11[4] = self;
    v12 = v7;
    v14 = &v15;
    v13 = v6;
    dispatch_sync(internalQueue, v11);
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __58__WiFiUsageMonitor_getProperty_forAllSessionsOfInterface___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:{a1[5], 0}];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if ([v6 isSessionActive])
        {
          v7 = *(*(a1[7] + 8) + 40);
          v8 = [v6 valueForKey:a1[6]];
          v9 = [v6 sessionName];
          [v7 setObject:v8 forKey:v9];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)getMobileAssets
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__WiFiUsageMonitor_getMobileAssets__block_invoke;
  v2[3] = &unk_2789C7250;
  v2[4] = self;
  [WCAFetchWiFiBehaviorParameters fetchWiFiBehaviorWithCompletion:v2];
}

void __35__WiFiUsageMonitor_getMobileAssets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_SReceivedWcafe.isa, "[WiFiUsageMonitor getMobileAssets]_block_invoke", v3);
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WiFiUsageMonitor_getMobileAssets__block_invoke_2;
  block[3] = &unk_2789C6608;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, block);
}

void __35__WiFiUsageMonitor_getMobileAssets__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) datapathTelemetry];

  if (v2)
  {
    v3 = [*(a1 + 32) datapathTelemetry];
    [WiFiUsageLQMConfiguration setConfig:v3];
  }

  else
  {
    NSLog(&cfstr_SKeyNotFoundIn.isa, "[WiFiUsageMonitor getMobileAssets]_block_invoke_2", @"DataPathTelemetry");
  }

  v4 = [*(a1 + 32) apProfile];

  if (v4)
  {
    v5 = [*(a1 + 32) apProfile];
    [WiFiUsageAccessPointProfileConfiguration setConfig:v5];
  }

  else
  {
    NSLog(&cfstr_SKeyNotFoundIn.isa, "[WiFiUsageMonitor getMobileAssets]_block_invoke_2", @"AccessPointProfile");
  }

  v6 = [*(a1 + 32) beaconParsing];

  if (v6)
  {
    v7 = [*(a1 + 32) beaconParsing];
    [WiFiUsageBeaconParsingConfiguration setConfig:v7];
  }

  else
  {
    NSLog(&cfstr_SKeyNotFoundIn.isa, "[WiFiUsageMonitor getMobileAssets]_block_invoke_2", @"BeaconParsing");
  }

  v8 = [*(a1 + 32) lqmDistribution];

  if (v8)
  {
    v9 = [*(a1 + 32) lqmDistribution];
    [WiFiUsageLQMConfiguration setConfig:v9];

    v10 = [WiFiUsageLQMDistributionConfiguration getConfigForKey:@"telemetrySampling"];
    v11 = *(a1 + 40);
    v12 = *(v11 + 208);
    *(v11 + 208) = v10;

    v13 = [WiFiUsageLQMDistributionConfiguration getConfigForKey:@"analyticsStoreSampling"];
    v14 = *(a1 + 40);
    v15 = *(v14 + 216);
    *(v14 + 216) = v13;

    MEMORY[0x2821F96F8](v13, v15);
  }

  else
  {
    NSLog(&cfstr_SKeyNotFoundIn.isa, "[WiFiUsageMonitor getMobileAssets]_block_invoke_2", @"LQMDistribution");
  }
}

- (void)submitBeaconInfoToCAForInterface:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136315394;
  v2 = "[WiFiUsageMonitor submitBeaconInfoToCAForInterface:]";
  v3 = 2112;
  v4 = 0;
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - Invalid interfaceName: %@", &v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

@end
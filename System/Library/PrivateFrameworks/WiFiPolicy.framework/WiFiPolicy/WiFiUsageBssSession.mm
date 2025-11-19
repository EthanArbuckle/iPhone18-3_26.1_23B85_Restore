@interface WiFiUsageBssSession
- ($6E47B81FEB72AA1B248A20B58E3F028F)roamConfigCriteria;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamConfigChannels;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamNeighsLrgstCurrentToBestRssiByBand;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamNeighsLrgstCurrentToNextBestRssiByBand;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamNeighsSmllstCurrentToBestRssiByBand;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamNeighsSmllstCurrentToNextBestRssiByBand;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSIByBand;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSICountByBand;
- (BOOL)submitAnalytics;
- (WiFiUsageBssSession)initWithInterfaceName:(id)a3 bssEnvironment:(id)a4 andBssDetails:(id)a5 andNetworkDetails:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)inRoamSuppressionEnabledDurationPerc;
- (void)bssDidChange:(id)a3 withDetails:(id)a4;
- (void)callStateDidChange:(BOOL)a3;
- (void)cellularFallbackStateDidChange:(BOOL)a3;
- (void)cellularOutrankingStateDidChange:(BOOL)a3;
- (void)faultEventDetected:(unint64_t)a3;
- (void)linkQualityDidChange:(id)a3;
- (void)motionStateDidChange:(BOOL)a3 andVehicularState:(BOOL)a4;
- (void)reset;
- (void)roamCandidatesStatsDidUpdate:(id *)a3;
- (void)roamingARConfigurationDidChange:(id *)a3;
- (void)roamingConfigurationDidChange:(int64_t)a3 withChannelList:(id)a4;
- (void)roamingStateDidChange:(BOOL)a3 reason:(unint64_t)a4 andStatus:(unint64_t)a5 andLatency:(unint64_t)a6 andRoamData:(id)a7 andPingPongNth:(BOOL)a8;
- (void)sentBssTransitionResponseWithStatus:(int64_t)a3 terminationDelayRequested:(BOOL)a4;
- (void)setJoinRssi:(int64_t)a3;
- (void)setRoamConfigChannels:(id *)a3;
- (void)setRoamConfigCriteria:(id *)a3;
- (void)setRoamNeighsLrgstCurrentToBestRssiByBand:(id *)a3;
- (void)setRoamNeighsLrgstCurrentToNextBestRssiByBand:(id *)a3;
- (void)setRoamNeighsSmllstCurrentToBestRssiByBand:(id *)a3;
- (void)setRoamNeighsSmllstCurrentToNextBestRssiByBand:(id *)a3;
- (void)setStrongestRSSIByBand:(id *)a3;
- (void)setStrongestRSSICountByBand:(id *)a3;
- (void)triggerDisconnectAlerted:(BOOL)a3 confirmed:(BOOL)a4 executed:(BOOL)a5;
- (void)updateActivityDurations:(id)a3;
- (void)updateRssi:(int64_t)a3 timeSinceLastUpdate:(double)a4;
- (void)updateRssiDiffStats:(id *)a3 For:(id)a4;
- (void)updateWithCompatibilityMode:(unsigned __int8)a3;
- (void)updateWithRoamingSuppression:(unsigned __int8)a3;
@end

@implementation WiFiUsageBssSession

- (WiFiUsageBssSession)initWithInterfaceName:(id)a3 bssEnvironment:(id)a4 andBssDetails:(id)a5 andNetworkDetails:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [MEMORY[0x277CBEAA8] date];
    v19.receiver = self;
    v19.super_class = WiFiUsageBssSession;
    v15 = [(WiFiUsageBssSession *)&v19 init];
    [(WiFiUsageBssSession *)v15 setInterfaceName:v10];
    v16 = objc_opt_new();
    [(WiFiUsageBssSession *)v15 setRoamNeighborsByBand:v16];

    [(WiFiUsageBssSession *)v15 reset];
    [(WiFiUsageBssSession *)v15 setBssEnvironment:v11];
    [(WiFiUsageBssSession *)v15 setOriginBssDetails:v12];
    [(WiFiUsageBssSession *)v15 setTargetBssDetails:0];
    [(WiFiUsageBssSession *)v15 setNetworkDetails:v13];
    -[WiFiUsageBssSession setJoinRssi:](v15, "setJoinRssi:", [v12 rssi]);
    -[WiFiUsageBssSession setCurrentBand:](v15, "setCurrentBand:", [v12 band]);
    -[WiFiUsageBssSession setCurrentChannel:](v15, "setCurrentChannel:", [v12 channel]);
    -[WiFiUsageBssSession setLastLinkRssi:](v15, "setLastLinkRssi:", [v12 rssi]);
    [(WiFiUsageBssSession *)v15 setJoinedTimestamp:v14];
    self = v15;

    v17 = self;
  }

  else
  {
    NSLog(&cfstr_SCannotInitSes.isa, "[WiFiUsageBssSession initWithInterfaceName:bssEnvironment:andBssDetails:andNetworkDetails:]", 0);
    v17 = 0;
  }

  return v17;
}

- (void)reset
{
  *&self->_faultReasonCount[30] = 0u;
  *&self->_faultReasonCount[28] = 0u;
  *&self->_faultReasonCount[26] = 0u;
  *&self->_faultReasonCount[24] = 0u;
  *&self->_faultReasonCount[22] = 0u;
  *&self->_faultReasonCount[20] = 0u;
  *&self->_faultReasonCount[18] = 0u;
  *&self->_faultReasonCount[16] = 0u;
  *&self->_faultReasonCount[14] = 0u;
  *&self->_faultReasonCount[12] = 0u;
  *&self->_faultReasonCount[10] = 0u;
  *&self->_faultReasonCount[8] = 0u;
  *&self->_faultReasonCount[6] = 0u;
  *&self->_faultReasonCount[4] = 0u;
  *&self->_faultReasonCount[2] = 0u;
  *self->_faultReasonCount = 0u;
  *&self->_faultReasonCount[34] = 0u;
  *&self->_faultReasonCount[36] = 0u;
  *&self->_faultReasonCount[32] = 0u;
  [(WiFiUsageBssSession *)self setJoinedTimestamp:0];
  [(WiFiUsageBssSession *)self setLastLqmUpdateTimestamp:0];
  [(WiFiUsageBssSession *)self setLastPoorCoverageEntryTimestamp:0];
  [(WiFiUsageBssSession *)self setOriginBssDetails:0];
  [(WiFiUsageBssSession *)self setTargetBssDetails:0];
  [(WiFiUsageBssSession *)self setCellularFallbackEnabled:0];
  [(WiFiUsageBssSession *)self setCellularOutrankingEnabled:0];
  [(WiFiUsageBssSession *)self setBssEnvironment:0];
  [(WiFiUsageBssSession *)self setSupportsFastlane:0];
  [(WiFiUsageBssSession *)self setSupportsFastTransition:0];
  [(WiFiUsageBssSession *)self setSupportsNeighborReport:0];
  [(WiFiUsageBssSession *)self setSupportsBssTransitionManagement:0];
  [(WiFiUsageBssSession *)self setSupportsAdaptiveFastTransition:0];
  [(WiFiUsageBssSession *)self setSupportsAdaptiveRoaming:0];
  [(WiFiUsageBssSession *)self setSupportsNetworkAssurance:0];
  [(WiFiUsageBssSession *)self setRoamConfigTriggerRssi:-75];
  *&self->_roamConfigChannels.valueByBand[2] = 0u;
  *self->_roamConfigChannels.valueByBand = 0u;
  *&self->_roamConfigCriteria.isAllowed = 0u;
  *&self->_roamConfigCriteria.networkOfInterestType = 0u;
  [(WiFiUsageBssSession *)self setJoinRssi:0];
  [(WiFiUsageBssSession *)self setNewRssi:0];
  [(WiFiUsageBssSession *)self setLastLinkRssi:0];
  [(WiFiUsageBssSession *)self setLastRoamScanRssi:0];
  [(WiFiUsageBssSession *)self setCurrentBand:3];
  [(WiFiUsageBssSession *)self setNewBand:3];
  [(WiFiUsageBssSession *)self setCurrentChannel:0];
  [(WiFiUsageBssSession *)self setNewChannel:0];
  [(WiFiUsageBssSession *)self setLinkRssiGt40:0];
  [(WiFiUsageBssSession *)self setLinkRssi40to50:0];
  [(WiFiUsageBssSession *)self setLinkRssi50to60:0];
  [(WiFiUsageBssSession *)self setLinkRssi60to65:0];
  [(WiFiUsageBssSession *)self setLinkRssi65to70:0];
  [(WiFiUsageBssSession *)self setLinkRssi70to75:0];
  [(WiFiUsageBssSession *)self setLinkRssi75to80:0];
  [(WiFiUsageBssSession *)self setLinkRssi80to85:0];
  [(WiFiUsageBssSession *)self setLinkRssi85to90:0];
  [(WiFiUsageBssSession *)self setLinkRssiLt90:0];
  [(WiFiUsageBssSession *)self setRoamReasonInitialAssociationCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonLowRssiCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonDeauthDisassocCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonBeaconLostCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonSteeredByApCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonSteeredByBtmCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonSteeredByCsaCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonReassocRequestedCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonHostTriggeredCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonBetterCandidateCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonBetterConditionCount:0];
  [(WiFiUsageBssSession *)self setRoamReasonMiscCount:0];
  [(WiFiUsageBssSession *)self setRoamStatusSucceededCount:0];
  [(WiFiUsageBssSession *)self setRoamStatusFailedCount:0];
  [(WiFiUsageBssSession *)self setRoamStatusNoCandidateCount:0];
  [(WiFiUsageBssSession *)self setRoamStatusNoQualifiedCandidateCount:0];
  [(WiFiUsageBssSession *)self setRoamIsWNMScoreUsedCount:0];
  [(WiFiUsageBssSession *)self setRoamPingPongNth:0];
  [(WiFiUsageBssSession *)self setIsRoamSuppressionEnabled:0];
  [(WiFiUsageBssSession *)self setRoamsAfterSupprLifted:0];
  [(WiFiUsageBssSession *)self setLastRoamSuppressionToggled:0];
  [(WiFiUsageBssSession *)self setInRoamSuppressionEnabledCount:0];
  [(WiFiUsageBssSession *)self setInRoamSuppressionEnabledDuration:0.0];
  [(WiFiUsageBssSession *)self setLastRoamSuppressionWaitForRoamStart:0.0];
  [(WiFiUsageBssSession *)self setLastRoamSuppressionWaitForRoamEnd:0.0];
  [(WiFiUsageBssSession *)self setBssTransitionRequestCount:0];
  [(WiFiUsageBssSession *)self setBssTransitionAcceptedCount:0];
  [(WiFiUsageBssSession *)self setBssTransitionRejectedCount:0];
  [(WiFiUsageBssSession *)self setMinCandidatesCount:0];
  [(WiFiUsageBssSession *)self setMaxCandidatesCount:0];
  [(WiFiUsageBssSession *)self setCurrentRSSIStrongestCount:0];
  [(NSMutableDictionary *)self->_roamNeighborsByBand removeAllObjects];
  *&self->_strongestRSSICountByBand.valueByBand[2] = 0u;
  *self->_strongestRSSICountByBand.valueByBand = 0u;
  *self->_strongestRSSIByBand.valueByBand = 0u;
  *&self->_strongestRSSIByBand.valueByBand[2] = 0u;
  *self->_roamNeighsSmllstCurrentToBestRssiByBand.valueByBand = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBand.valueByBand[2] = 0u;
  *self->_roamNeighsLrgstCurrentToBestRssiByBand.valueByBand = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBand.valueByBand[2] = 0u;
  *self->_roamNeighsSmllstCurrentToNextBestRssiByBand.valueByBand = 0u;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBand.valueByBand[2] = 0u;
  *self->_roamNeighsLrgstCurrentToNextBestRssiByBand.valueByBand = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBand.valueByBand[2] = 0u;
  [(WiFiUsageBssSession *)self setHighRssiRoamScanCount:0];
  [(WiFiUsageBssSession *)self setLowRssiRoamScanCount:0];
  [(WiFiUsageBssSession *)self setUnexpectedBeaconLostRoamScanCount:0];
  [(WiFiUsageBssSession *)self setPoorCoverageAndA2dpDuration:0.0];
  [(WiFiUsageBssSession *)self setPoorCoverageAndScoDuration:0.0];
  [(WiFiUsageBssSession *)self setPoorCoverageAndAwdlDuration:0.0];
  [(WiFiUsageBssSession *)self setPoorCoverageAndScanDuration:0.0];
  [(WiFiUsageBssSession *)self setMinRoamLatency:0.0];
  [(WiFiUsageBssSession *)self setMaxRoamLatency:0.0];
  [(WiFiUsageBssSession *)self setPartialScanCount:0];
  [(WiFiUsageBssSession *)self setFullScanCount:0];
  [(WiFiUsageBssSession *)self setCallStartedTime:0];
  [(WiFiUsageBssSession *)self setInVehicleEntryTime:0];
  [(WiFiUsageBssSession *)self setInMotionStartedTime:0];
  [(WiFiUsageBssSession *)self setA2dpActiveTime:0];
  [(WiFiUsageBssSession *)self setScoActiveTime:0];
  [(WiFiUsageBssSession *)self setHidPresentTime:0];
  [(WiFiUsageBssSession *)self setAwdlActiveTime:0];
  [(WiFiUsageBssSession *)self setRoamingActiveTime:0];
  [(WiFiUsageBssSession *)self setScanningActiveTime:0];
  [(WiFiUsageBssSession *)self setLastCellularFallbackStateChangedTime:0];
  [(WiFiUsageBssSession *)self setLastCellularOutrankingStateChangedTime:0];
  [(WiFiUsageBssSession *)self setInCallDuration:0.0];
  [(WiFiUsageBssSession *)self setInVehicleDuration:0.0];
  [(WiFiUsageBssSession *)self setInMotionDuration:0.0];
  [(WiFiUsageBssSession *)self setInA2dpDuration:0.0];
  [(WiFiUsageBssSession *)self setInScoDuration:0.0];
  [(WiFiUsageBssSession *)self setInHidPresentDuration:0.0];
  [(WiFiUsageBssSession *)self setInAwdlDuration:0.0];
  [(WiFiUsageBssSession *)self setInRoamDuration:0.0];
  [(WiFiUsageBssSession *)self setInScanDuration:0.0];
  [(WiFiUsageBssSession *)self setInCellularFallbackDuration:0.0];
  [(WiFiUsageBssSession *)self setInCellularOutrankingDuration:0.0];
  [(WiFiUsageBssSession *)self setInPoorCoverageDuration:0.0];
  [(WiFiUsageBssSession *)self setInCallEventCount:0];
  [(WiFiUsageBssSession *)self setInVehicleEventCount:0];
  [(WiFiUsageBssSession *)self setInMotionEventCount:0];
  [(WiFiUsageBssSession *)self setInA2dpEventCount:0];
  [(WiFiUsageBssSession *)self setInScoEventCount:0];
  [(WiFiUsageBssSession *)self setInHidPresentCount:0];
  [(WiFiUsageBssSession *)self setInAwdlEventCount:0];
  [(WiFiUsageBssSession *)self setInRoamEventCount:0];
  [(WiFiUsageBssSession *)self setInScanEventCount:0];
  [(WiFiUsageBssSession *)self setCellularFallbackStateChangedCount:0];
  [(WiFiUsageBssSession *)self setCellularOutrankingStateChangedCount:0];
  [(WiFiUsageBssSession *)self setLocationScanCount:0];
  [(WiFiUsageBssSession *)self setIndoorScanCount:0];
  [(WiFiUsageBssSession *)self setTriggerDisconnectAlertedCount:0];
  [(WiFiUsageBssSession *)self setTriggerDisconnectConfirmedCount:0];
  [(WiFiUsageBssSession *)self setTriggerDisconnectExecutedCount:0];
  v3 = [MEMORY[0x277CBEAA8] now];
  [(WiFiUsageBssSession *)self setLastCompatibilityModeChangedTime:v3];
}

- (void)setJoinRssi:(int64_t)a3
{
  self->_joinRssi = a3;
  self->_leftRssi = a3;
  self->_maxLinkRssi = a3;
  self->_minLinkRssi = a3;
  self->_avgLinkRssi = a3;
}

- (void)bssDidChange:(id)a3 withDetails:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAA8] date];
  lastLinkRssi = self->_lastLinkRssi;
  if (lastLinkRssi >= self->_lastRoamScanRssi)
  {
    lastLinkRssi = self->_lastRoamScanRssi;
  }

  self->_leftRssi = lastLinkRssi;
  if (v6 && (-[WiFiUsageBssSession setNewBand:](self, "setNewBand:", [v6 band]), -[WiFiUsageBssSession setNewChannel:](self, "setNewChannel:", objc_msgSend(v6, "channel")), -[WiFiUsageBssSession setNewRssi:](self, "setNewRssi:", objc_msgSend(v6, "rssi")), -[WiFiUsageBssSession setTargetBssDetails:](self, "setTargetBssDetails:", v6), self->_roamingActiveTime))
  {
    NSLog(&cfstr_SInRoamingStat.isa, "[WiFiUsageBssSession bssDidChange:withDetails:]");
  }

  else
  {
    if (self->_originBssDetails)
    {
      NSLog(&cfstr_SBssSessionEnd.isa, "[WiFiUsageBssSession bssDidChange:withDetails:]");
      [(WiFiUsageBssSession *)self updateActivityDurations:v7];
      [(WiFiUsageBssSession *)self submitAnalytics];
      [(WiFiUsageBssSession *)self reset];
    }

    if (v6)
    {
      [(WiFiUsageBssSession *)self setOriginBssDetails:v6];
      [(WiFiUsageBssSession *)self setTargetBssDetails:0];
      -[WiFiUsageBssSession setJoinRssi:](self, "setJoinRssi:", [v6 rssi]);
      -[WiFiUsageBssSession setCurrentBand:](self, "setCurrentBand:", [v6 band]);
      -[WiFiUsageBssSession setCurrentChannel:](self, "setCurrentChannel:", [v6 channel]);
      -[WiFiUsageBssSession setLastLinkRssi:](self, "setLastLinkRssi:", [v6 rssi]);
      [(WiFiUsageBssSession *)self setJoinedTimestamp:v7];
      [(WiFiUsageBssSession *)self setBssEnvironment:v9];
    }
  }
}

- (void)updateActivityDurations:(id)a3
{
  v4 = a3;
  lastLqmUpdateTimestamp = self->_lastLqmUpdateTimestamp;
  v36 = v4;
  if (!lastLqmUpdateTimestamp)
  {
    lastLqmUpdateTimestamp = self->_joinedTimestamp;
  }

  [v4 timeIntervalSinceDate:lastLqmUpdateTimestamp];
  [(WiFiUsageBssSession *)self updateRssi:self->_lastLinkRssi timeSinceLastUpdate:?];
  lastPoorCoverageEntryTimestamp = self->_lastPoorCoverageEntryTimestamp;
  if (lastPoorCoverageEntryTimestamp)
  {
    if (self->_a2dpActiveTime)
    {
      [(NSDate *)lastPoorCoverageEntryTimestamp timeIntervalSinceDate:?];
      v7 = 960;
      if (v8 > 0.0)
      {
        v7 = 448;
      }

      [v36 timeIntervalSinceDate:*(&self->super.isa + v7)];
      self->_poorCoverageAndA2dpDuration = v9 + self->_poorCoverageAndA2dpDuration;
    }

    if (self->_scoActiveTime)
    {
      [(NSDate *)self->_lastPoorCoverageEntryTimestamp timeIntervalSinceDate:?];
      v10 = 968;
      if (v11 > 0.0)
      {
        v10 = 448;
      }

      [v36 timeIntervalSinceDate:*(&self->super.isa + v10)];
      self->_poorCoverageAndScoDuration = v12 + self->_poorCoverageAndScoDuration;
    }

    if (self->_awdlActiveTime)
    {
      [(NSDate *)self->_lastPoorCoverageEntryTimestamp timeIntervalSinceDate:?];
      v13 = 984;
      if (v14 > 0.0)
      {
        v13 = 448;
      }

      [v36 timeIntervalSinceDate:*(&self->super.isa + v13)];
      self->_poorCoverageAndAwdlDuration = v15 + self->_poorCoverageAndAwdlDuration;
    }

    v16 = v36;
    if (self->_scanningActiveTime)
    {
      [(NSDate *)self->_lastPoorCoverageEntryTimestamp timeIntervalSinceDate:?];
      v17 = 1000;
      if (v18 > 0.0)
      {
        v17 = 448;
      }

      [v36 timeIntervalSinceDate:*(&self->super.isa + v17)];
      v16 = v36;
      self->_poorCoverageAndScanDuration = v19 + self->_poorCoverageAndScanDuration;
    }

    [v16 timeIntervalSinceDate:self->_lastPoorCoverageEntryTimestamp];
    self->_inPoorCoverageDuration = v20 + self->_inPoorCoverageDuration;
    [(WiFiUsageBssSession *)self setLastPoorCoverageEntryTimestamp:0];
  }

  if (self->_inMotionStartedTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inMotionDuration = v21 + self->_inMotionDuration;
    [(WiFiUsageBssSession *)self setInMotionStartedTime:0];
  }

  v22 = v36;
  if (self->_inVehicleEntryTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inVehicleDuration = v23 + self->_inVehicleDuration;
    [(WiFiUsageBssSession *)self setInVehicleEntryTime:0];
    v22 = v36;
  }

  if (self->_callStartedTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inCallDuration = v24 + self->_inCallDuration;
    [(WiFiUsageBssSession *)self setCallStartedTime:0];
    v22 = v36;
  }

  if (self->_a2dpActiveTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inA2dpDuration = v25 + self->_inA2dpDuration;
    [(WiFiUsageBssSession *)self setA2dpActiveTime:0];
    v22 = v36;
  }

  if (self->_scoActiveTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inScoDuration = v26 + self->_inScoDuration;
    [(WiFiUsageBssSession *)self setScoActiveTime:0];
    v22 = v36;
  }

  if (self->_hidPresentTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inHidPresentDuration = v27 + self->_inHidPresentDuration;
    [(WiFiUsageBssSession *)self setHidPresentTime:0];
    v22 = v36;
  }

  if (self->_awdlActiveTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inAwdlDuration = v28 + self->_inAwdlDuration;
    [(WiFiUsageBssSession *)self setAwdlActiveTime:0];
    v22 = v36;
  }

  if (self->_roamingActiveTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inRoamDuration = v29 + self->_inRoamDuration;
    [(WiFiUsageBssSession *)self setRoamingActiveTime:0];
    v22 = v36;
  }

  if (self->_lastRoamSuppressionToggled && self->_isRoamSuppressionEnabled)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inRoamSuppressionEnabledDuration = v30 + self->_inRoamSuppressionEnabledDuration;
    lastRoamSuppressionToggled = self->_lastRoamSuppressionToggled;
    self->_lastRoamSuppressionToggled = 0;

    v22 = v36;
  }

  if (self->_scanningActiveTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inScanDuration = v32 + self->_inScanDuration;
    [(WiFiUsageBssSession *)self setScanningActiveTime:0];
    v22 = v36;
  }

  if (self->_lastCellularFallbackStateChangedTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inCellularFallbackDuration = v33 + self->_inCellularFallbackDuration;
    [(WiFiUsageBssSession *)self setLastCellularFallbackStateChangedTime:0];
    v22 = v36;
  }

  if (self->_lastCellularOutrankingStateChangedTime)
  {
    [v36 timeIntervalSinceDate:?];
    self->_inCellularOutrankingDuration = v34 + self->_inCellularOutrankingDuration;
    [(WiFiUsageBssSession *)self setLastCellularOutrankingStateChangedTime:0];
    v22 = v36;
  }

  if (self->_isCompatibilityModeEnabled)
  {
    [v36 timeIntervalSinceDate:self->_lastCompatibilityModeChangedTime];
    self->_inCompatibilityModeEnabledDuration = v35 + self->_inCompatibilityModeEnabledDuration;
    [(WiFiUsageBssSession *)self setLastCompatibilityModeChangedTime:0];
    v22 = v36;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithInterfaceName:self->_interfaceName bssEnvironment:self->_bssEnvironment andBssDetails:self->_originBssDetails andNetworkDetails:self->_networkDetails];
  v5 = [(NSMutableDictionary *)self->_sessionInfo mutableCopy];
  v6 = *(v4 + 376);
  *(v4 + 376) = v5;

  v7 = [(NSDate *)self->_joinedTimestamp copy];
  v8 = *(v4 + 432);
  *(v4 + 432) = v7;

  v9 = [(NSDate *)self->_lastLqmUpdateTimestamp copy];
  v10 = *(v4 + 440);
  *(v4 + 440) = v9;

  v11 = [(NSDate *)self->_lastPoorCoverageEntryTimestamp copy];
  v12 = *(v4 + 448);
  *(v4 + 448) = v11;

  v13 = [(NSDate *)self->_lastCellularFallbackStateChangedTime copy];
  v14 = *(v4 + 456);
  *(v4 + 456) = v13;

  v15 = [(NSDate *)self->_lastCellularOutrankingStateChangedTime copy];
  v16 = *(v4 + 464);
  *(v4 + 464) = v15;

  v17 = [(WiFiUsageBssDetails *)self->_targetBssDetails copy];
  v18 = *(v4 + 480);
  *(v4 + 480) = v17;

  *(v4 + 352) = self->_cellularFallbackEnabled;
  *(v4 + 353) = self->_cellularOutrankingEnabled;
  *(v4 + 354) = self->_supportsNeighborReport;
  *(v4 + 355) = self->_supportsFastTransition;
  *(v4 + 356) = self->_supportsBssTransitionManagement;
  *(v4 + 357) = self->_supportsAdaptiveFastTransition;
  *(v4 + 358) = self->_supportsFastlane;
  *(v4 + 359) = self->_supportsNetworkAssurance;
  *(v4 + 360) = self->_supportsAdaptiveRoaming;
  *(v4 + 384) = self->_roamConfigTriggerRssi;
  v19 = *self->_roamConfigChannels.valueByBand;
  *(v4 + 1264) = *&self->_roamConfigChannels.valueByBand[2];
  *(v4 + 1248) = v19;
  v20 = *&self->_roamConfigCriteria.isAllowed;
  *(v4 + 1296) = *&self->_roamConfigCriteria.networkOfInterestType;
  *(v4 + 1280) = v20;
  *(v4 + 504) = self->_newRssi;
  *(v4 + 512) = self->_lastLinkRssi;
  *(v4 + 520) = self->_lastRoamScanRssi;
  *(v4 + 368) = self->_currentBand;
  *(v4 + 372) = self->_newBand;
  *(v4 + 528) = self->_currentChannel;
  *(v4 + 536) = self->_newChannel;
  *(v4 + 544) = self->_linkRssiGt40;
  *(v4 + 552) = self->_linkRssi40to50;
  *(v4 + 560) = self->_linkRssi50to60;
  *(v4 + 568) = self->_linkRssi60to65;
  *(v4 + 576) = self->_linkRssi65to70;
  *(v4 + 584) = self->_linkRssi70to75;
  *(v4 + 592) = self->_linkRssi75to80;
  *(v4 + 600) = self->_linkRssi80to85;
  *(v4 + 608) = self->_linkRssi85to90;
  *(v4 + 616) = self->_linkRssiLt90;
  *(v4 + 624) = self->_roamReasonInitialAssociationCount;
  *(v4 + 632) = self->_roamReasonLowRssiCount;
  *(v4 + 640) = self->_roamReasonDeauthDisassocCount;
  *(v4 + 648) = self->_roamReasonBeaconLostCount;
  *(v4 + 656) = self->_roamReasonSteeredByApCount;
  *(v4 + 664) = self->_roamReasonSteeredByBtmCount;
  *(v4 + 672) = self->_roamReasonSteeredByCsaCount;
  *(v4 + 680) = self->_roamReasonReassocRequestedCount;
  *(v4 + 688) = self->_roamReasonHostTriggeredCount;
  *(v4 + 696) = self->_roamReasonBetterCandidateCount;
  *(v4 + 704) = self->_roamReasonBetterConditionCount;
  *(v4 + 712) = self->_roamReasonMiscCount;
  *(v4 + 720) = self->_roamStatusSucceededCount;
  *(v4 + 728) = self->_roamStatusFailedCount;
  roamStatusNoCandidateCount = self->_roamStatusNoCandidateCount;
  *(v4 + 736) = roamStatusNoCandidateCount;
  *(v4 + 744) = roamStatusNoCandidateCount;
  *(v4 + 760) = self->_roamPingPongNth;
  *(v4 + 363) = self->_roamInMotion;
  *(v4 + 792) = self->_bssTransitionRequestCount;
  *(v4 + 800) = self->_bssTransitionAcceptedCount;
  *(v4 + 808) = self->_bssTransitionRejectedCount;
  *(v4 + 816) = self->_minCandidatesCount;
  *(v4 + 824) = self->_maxCandidatesCount;
  *(v4 + 832) = self->_currentRSSIStrongestCount;
  v22 = [(NSMutableDictionary *)self->_roamNeighborsByBand copy];
  v23 = *(v4 + 840);
  *(v4 + 840) = v22;

  v24 = *self->_strongestRSSICountByBand.valueByBand;
  *(v4 + 1328) = *&self->_strongestRSSICountByBand.valueByBand[2];
  *(v4 + 1312) = v24;
  v25 = *self->_strongestRSSIByBand.valueByBand;
  *(v4 + 1360) = *&self->_strongestRSSIByBand.valueByBand[2];
  *(v4 + 1344) = v25;
  v26 = *self->_roamNeighsSmllstCurrentToBestRssiByBand.valueByBand;
  *(v4 + 1392) = *&self->_roamNeighsSmllstCurrentToBestRssiByBand.valueByBand[2];
  *(v4 + 1376) = v26;
  v27 = *self->_roamNeighsLrgstCurrentToBestRssiByBand.valueByBand;
  *(v4 + 1424) = *&self->_roamNeighsLrgstCurrentToBestRssiByBand.valueByBand[2];
  *(v4 + 1408) = v27;
  v28 = *self->_roamNeighsSmllstCurrentToNextBestRssiByBand.valueByBand;
  *(v4 + 1456) = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBand.valueByBand[2];
  *(v4 + 1440) = v28;
  v29 = *self->_roamNeighsLrgstCurrentToNextBestRssiByBand.valueByBand;
  *(v4 + 1488) = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBand.valueByBand[2];
  *(v4 + 1472) = v29;
  *(v4 + 848) = self->_highRssiRoamScanCount;
  *(v4 + 856) = self->_lowRssiRoamScanCount;
  *(v4 + 864) = self->_unexpectedBeaconLostRoamScanCount;
  *(v4 + 872) = self->_poorCoverageAndA2dpDuration;
  *(v4 + 880) = self->_poorCoverageAndScoDuration;
  *(v4 + 888) = self->_poorCoverageAndAwdlDuration;
  *(v4 + 896) = self->_poorCoverageAndScanDuration;
  *(v4 + 904) = self->_minRoamLatency;
  *(v4 + 912) = self->_maxRoamLatency;
  *(v4 + 920) = self->_partialScanCount;
  *(v4 + 928) = self->_fullScanCount;
  v30 = [(NSDate *)self->_callStartedTime copy];
  v31 = *(v4 + 936);
  *(v4 + 936) = v30;

  v32 = [(NSDate *)self->_inVehicleEntryTime copy];
  v33 = *(v4 + 944);
  *(v4 + 944) = v32;

  v34 = [(NSDate *)self->_inMotionStartedTime copy];
  v35 = *(v4 + 952);
  *(v4 + 952) = v34;

  v36 = [(NSDate *)self->_a2dpActiveTime copy];
  v37 = *(v4 + 960);
  *(v4 + 960) = v36;

  v38 = [(NSDate *)self->_scoActiveTime copy];
  v39 = *(v4 + 968);
  *(v4 + 968) = v38;

  v40 = [(NSDate *)self->_hidPresentTime copy];
  v41 = *(v4 + 976);
  *(v4 + 976) = v40;

  v42 = [(NSDate *)self->_awdlActiveTime copy];
  v43 = *(v4 + 984);
  *(v4 + 984) = v42;

  v44 = [(NSDate *)self->_roamingActiveTime copy];
  v45 = *(v4 + 992);
  *(v4 + 992) = v44;

  v46 = [(NSDate *)self->_scanningActiveTime copy];
  v47 = *(v4 + 1000);
  *(v4 + 1000) = v46;

  *(v4 + 1008) = self->_inCallDuration;
  *(v4 + 1016) = self->_inVehicleDuration;
  *(v4 + 1024) = self->_inMotionDuration;
  *(v4 + 1032) = self->_inA2dpDuration;
  *(v4 + 1040) = self->_inScoDuration;
  *(v4 + 1048) = self->_inHidPresentDuration;
  *(v4 + 1056) = self->_inAwdlDuration;
  *(v4 + 1064) = self->_inRoamDuration;
  *(v4 + 1072) = self->_inScanDuration;
  *(v4 + 1080) = self->_inCellularFallbackDuration;
  *(v4 + 1088) = self->_inCellularOutrankingDuration;
  *(v4 + 1096) = self->_inPoorCoverageDuration;
  *(v4 + 1112) = self->_inCallEventCount;
  *(v4 + 1120) = self->_inVehicleEventCount;
  *(v4 + 1128) = self->_inMotionEventCount;
  *(v4 + 1136) = self->_inA2dpEventCount;
  *(v4 + 1144) = self->_inScoEventCount;
  *(v4 + 1152) = self->_inHidPresentCount;
  *(v4 + 1160) = self->_inAwdlEventCount;
  *(v4 + 1168) = self->_inRoamEventCount;
  *(v4 + 1176) = self->_inScanEventCount;
  *(v4 + 1184) = self->_cellularFallbackStateChangedCount;
  *(v4 + 1192) = self->_cellularOutrankingStateChangedCount;
  *(v4 + 1200) = self->_locationScanCount;
  *(v4 + 1208) = self->_indoorScanCount;
  *(v4 + 1224) = self->_triggerDisconnectAlertedCount;
  *(v4 + 1232) = self->_triggerDisconnectConfirmedCount;
  *(v4 + 1240) = self->_triggerDisconnectExecutedCount;
  *(v4 + 362) = self->_isCompatibilityModeEnabled;
  *(v4 + 1216) = self->_compatibilityModeChangeCount;
  objc_storeStrong((v4 + 472), self->_lastCompatibilityModeChangedTime);
  *(v4 + 1104) = self->_inCompatibilityModeEnabledDuration;
  return v4;
}

- (BOOL)submitAnalytics
{
  v205 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(WiFiUsageBssSession *)self joinedTimestamp];
  v196 = v3;
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:@"BSS" forKeyedSubscript:@"SessionName"];
  v8 = [WiFiUsagePrivacyFilter numberWithDuration:v6];
  [v7 setObject:v8 forKeyedSubscript:@"SessionDuration"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsNeighborReport];
  [v7 setObject:v9 forKeyedSubscript:@"SupportsNeighborReport"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsFastTransition];
  [v7 setObject:v10 forKeyedSubscript:@"SupportsFastTransition"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsBssTransitionManagement];
  [v7 setObject:v11 forKeyedSubscript:@"SupportsBssTransitionManagement"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsAdaptiveFastTransition];
  [v7 setObject:v12 forKeyedSubscript:@"SupportsAdaptiveFastTransition"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsFastlane];
  [v7 setObject:v13 forKeyedSubscript:@"SupportsFastlane"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsNetworkAssurance];
  [v7 setObject:v14 forKeyedSubscript:@"SupportsNetworkAssurance"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsAdaptiveRoaming];
  [v7 setObject:v15 forKeyedSubscript:@"SupportsAdaptiveRoaming"];

  [v7 setObject:self->_bssEnvironment forKeyedSubscript:@"NetworkBssEnvironment"];
  [v7 setObject:self->_bssEnvironment forKeyedSubscript:@"NetworkBssEnvironmentString"];
  v16 = MEMORY[0x277CCABB0];
  v17 = [(WiFiUsageNetworkDetails *)self->_networkDetails hasEnterpriseSecurity]|| [(WiFiUsageNetworkDetails *)self->_networkDetails isWidelyDeployed];
  v18 = [v16 numberWithBool:v17];
  [v7 setObject:v18 forKeyedSubscript:@"NetworkIsEnterprise"];

  v19 = MEMORY[0x277CCABB0];
  v20 = [(WiFiUsageNetworkDetails *)self->_networkDetails isWidelyDeployed]|| [(WiFiUsageNetworkDetails *)self->_networkDetails isPublic];
  v21 = [v19 numberWithBool:v20];
  [v7 setObject:v21 forKeyedSubscript:@"NetworkIsPublic"];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roamConfigTriggerRssi];
  [v7 setObject:v22 forKeyedSubscript:@"RoamConfigTriggerRssi"];

  v23 = *&self->_roamConfigChannels.valueByBand[2];
  v202 = *self->_roamConfigChannels.valueByBand;
  v203 = v23;
  v24 = [WiFiUsagePrivacyFilter getLabelForIntegerByBand:&v202];
  [v7 setObject:v24 forKeyedSubscript:@"RoamConfigChannelCountByBand"];

  v25 = *&self->_roamConfigChannels.valueByBand[2];
  v202 = *self->_roamConfigChannels.valueByBand;
  v203 = v25;
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:{+[WiFiUsagePrivacyFilter getSumAllBands:](WiFiUsagePrivacyFilter, "getSumAllBands:", &v202)}];
  [v7 setObject:v26 forKeyedSubscript:@"RoamConfigChannelCountTotal"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.forceApply];
  [v7 setObject:v27 forKeyedSubscript:@"RoamConfigARIsForceApplied"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.deviceSupport];
  [v7 setObject:v28 forKeyedSubscript:@"RoamConfigARdeviceSupport"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamConfigCriteria.isEAP];
  [v7 setObject:v29 forKeyedSubscript:@"RoamConfigARIsEAP"];

  v30 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roamConfigCriteria.environment];
  [v7 setObject:v30 forKeyedSubscript:@"RoamConfigAREnv"];

  v31 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roamConfigCriteria.networkOfInterestType];
  [v7 setObject:v31 forKeyedSubscript:@"RoamConfigARNetworkType"];

  v32 = [MEMORY[0x277CCABB0] numberWithInteger:self->_roamConfigCriteria.LOIType];
  [v7 setObject:v32 forKeyedSubscript:@"RoamConfigARLOIType"];

  v33 = [WiFiUsagePrivacyFilter getLabelForNeighborsByBand:self->_roamNeighborsByBand];
  [v7 setObject:v33 forKeyedSubscript:@"RoamNeighborsCountByBand"];

  v34 = [WiFiUsagePrivacyFilter getSumArrayCountAllBand:self->_roamNeighborsByBand];
  [v7 setObject:v34 forKeyedSubscript:@"RoamNeighborsCountTotal"];

  v35 = [WiFiUsagePrivacyFilter numberWithInstances:self->_minCandidatesCount];
  [v7 setObject:v35 forKeyedSubscript:@"RoamCandidatesCountMin"];

  v36 = [WiFiUsagePrivacyFilter numberWithInstances:self->_maxCandidatesCount];
  [v7 setObject:v36 forKeyedSubscript:@"RoamCandidatesCountMax"];

  roamReasonLowRssiCount = self->_roamReasonLowRssiCount;
  if (roamReasonLowRssiCount)
  {
    v38 = [WiFiUsagePrivacyFilter getBinEvery10Over100:100 * self->_currentRSSIStrongestCount / roamReasonLowRssiCount As:0];
    [v7 setObject:v38 forKeyedSubscript:@"RoamCandidatesLowRssiCurrentBSSIsBestPerc"];
  }

  else
  {
    [v7 setObject:0 forKeyedSubscript:@"RoamCandidatesLowRssiCurrentBSSIsBestPerc"];
  }

  v39 = *&self->_strongestRSSICountByBand.valueByBand[2];
  v202 = *self->_strongestRSSICountByBand.valueByBand;
  v203 = v39;
  v40 = [WiFiUsagePrivacyFilter getLabelForPercIntegerByBand:&v202];
  [v7 setObject:v40 forKeyedSubscript:@"RoamCandidatesStrongestRssiByBandPerc"];

  v41 = *&self->_strongestRSSIByBand.valueByBand[2];
  v202 = *self->_strongestRSSIByBand.valueByBand;
  v203 = v41;
  v42 = [WiFiUsagePrivacyFilter getLabelForRssiByBand:&v202];
  [v7 setObject:v42 forKeyedSubscript:@"RoamCandidatesStrongestRssiByBand"];

  v43 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBand.valueByBand[2];
  v202 = *self->_roamNeighsSmllstCurrentToNextBestRssiByBand.valueByBand;
  v203 = v43;
  v44 = [WiFiUsagePrivacyFilter getLabelForRssiDeltaByBand:&v202];
  [v7 setObject:v44 forKeyedSubscript:@"RoamCandidatesSmallestDiffCurrentToNextBestRSSIByBand"];

  v45 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBand.valueByBand[2];
  v202 = *self->_roamNeighsLrgstCurrentToNextBestRssiByBand.valueByBand;
  v203 = v45;
  v46 = [WiFiUsagePrivacyFilter getLabelForRssiDeltaByBand:&v202];
  [v7 setObject:v46 forKeyedSubscript:@"RoamCandidatesLargestDiffCurrentToNextBestRSSIByBand"];

  v47 = *&self->_roamNeighsSmllstCurrentToBestRssiByBand.valueByBand[2];
  v202 = *self->_roamNeighsSmllstCurrentToBestRssiByBand.valueByBand;
  v203 = v47;
  v48 = [WiFiUsagePrivacyFilter getLabelForRssiDeltaByBand:&v202];
  [v7 setObject:v48 forKeyedSubscript:@"RoamCandidatesSmallestDiffCurrentToBestRSSIByBand"];

  v49 = *&self->_roamNeighsLrgstCurrentToBestRssiByBand.valueByBand[2];
  v202 = *self->_roamNeighsLrgstCurrentToBestRssiByBand.valueByBand;
  v203 = v49;
  v50 = [WiFiUsagePrivacyFilter getLabelForRssiDeltaByBand:&v202];
  [v7 setObject:v50 forKeyedSubscript:@"RoamCandidatesLargestDiffCurrentToBestRSSIByBand"];

  v51 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonInitialAssociationCount];
  [v7 setObject:v51 forKeyedSubscript:@"RoamReasonInitialAssociationCount"];

  v52 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonLowRssiCount];
  [v7 setObject:v52 forKeyedSubscript:@"RoamReasonLowRssiCount"];

  v53 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonDeauthDisassocCount];
  [v7 setObject:v53 forKeyedSubscript:@"RoamReasonDeauthDisassocCount"];

  v54 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonBeaconLostCount];
  [v7 setObject:v54 forKeyedSubscript:@"RoamReasonBeaconLostCount"];

  v55 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonSteeredByApCount];
  [v7 setObject:v55 forKeyedSubscript:@"RoamReasonSteeredByApCount"];

  v56 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonSteeredByBtmCount];
  [v7 setObject:v56 forKeyedSubscript:@"RoamReasonSteeredByBtmCount"];

  v57 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonSteeredByCsaCount];
  [v7 setObject:v57 forKeyedSubscript:@"RoamReasonSteeredByCsaCount"];

  v58 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonReassocRequestedCount];
  [v7 setObject:v58 forKeyedSubscript:@"RoamReasonReassocRequestedCount"];

  v59 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonHostTriggeredCount];
  [v7 setObject:v59 forKeyedSubscript:@"RoamReasonHostTriggeredCount"];

  v60 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonBetterCandidateCount];
  [v7 setObject:v60 forKeyedSubscript:@"RoamReasonBetterCandidateCount"];

  v61 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonBetterConditionCount];
  [v7 setObject:v61 forKeyedSubscript:@"RoamReasonBetterConditionCount"];

  v62 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamReasonMiscCount];
  [v7 setObject:v62 forKeyedSubscript:@"RoamReasonMiscCount"];

  v63 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamStatusSucceededCount];
  [v7 setObject:v63 forKeyedSubscript:@"RoamStatusSucceededCount"];

  v64 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamStatusFailedCount];
  [v7 setObject:v64 forKeyedSubscript:@"RoamStatusFailedCount"];

  v65 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamStatusNoCandidateCount];
  [v7 setObject:v65 forKeyedSubscript:@"RoamStatusNoCandidateCount"];

  v66 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamStatusNoQualifiedCandidateCount];
  [v7 setObject:v66 forKeyedSubscript:@"RoamStatusNoQualifiedCandidateCount"];

  v67 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamIsWNMScoreUsedCount];
  [v7 setObject:v67 forKeyedSubscript:@"RoamWNMScoreUsedCount"];

  v68 = [WiFiUsagePrivacyFilter numberWithInstances:self->_roamPingPongNth];
  [v7 setObject:v68 forKeyedSubscript:@"RoamPingPongNth"];

  v69 = [MEMORY[0x277CCABB0] numberWithBool:self->_roamInMotion];
  [v7 setObject:v69 forKeyedSubscript:@"RoamInMotion"];

  v70 = [WiFiUsagePrivacyFilter numberWithInstances:self->_bssTransitionRequestCount];
  [v7 setObject:v70 forKeyedSubscript:@"RoamBssTransitionRequestCount"];

  v71 = [WiFiUsagePrivacyFilter numberWithInstances:self->_bssTransitionAcceptedCount];
  [v7 setObject:v71 forKeyedSubscript:@"RoamBssTransitionAcceptedCount"];

  v72 = [WiFiUsagePrivacyFilter numberWithInstances:self->_bssTransitionRejectedCount];
  [v7 setObject:v72 forKeyedSubscript:@"RoamBssTransitionRejectedCount"];

  v73 = [WiFiUsagePrivacyFilter numberWithInstances:self->_highRssiRoamScanCount];
  [v7 setObject:v73 forKeyedSubscript:@"RoamScanCountHighRssi"];

  v74 = [WiFiUsagePrivacyFilter numberWithInstances:self->_lowRssiRoamScanCount];
  [v7 setObject:v74 forKeyedSubscript:@"RoamScanCountLowRssi"];

  v75 = [WiFiUsagePrivacyFilter numberWithInstances:self->_unexpectedBeaconLostRoamScanCount];
  [v7 setObject:v75 forKeyedSubscript:@"RoamScanCountUnexpectedBeaconLost"];

  v76 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inRoamSuppressionEnabledCount];
  [v7 setObject:v76 forKeyedSubscript:@"WiFiInRoamSuppressedCount"];

  v77 = [WiFiUsagePrivacyFilter timePercentage:self->_inRoamSuppressionEnabledDuration overTotalDuration:v6];
  [v7 setObject:v77 forKeyedSubscript:@"WiFiInRoamSuppressedDuration"];

  lastRoamSuppressionWaitForRoamStart = self->_lastRoamSuppressionWaitForRoamStart;
  *&lastRoamSuppressionWaitForRoamStart = lastRoamSuppressionWaitForRoamStart;
  v79 = [MEMORY[0x277CCABB0] numberWithFloat:lastRoamSuppressionWaitForRoamStart];
  [v7 setObject:v79 forKeyedSubscript:@"WiFiInRoamSuppressedWaitForRoamStart"];

  lastRoamSuppressionWaitForRoamEnd = self->_lastRoamSuppressionWaitForRoamEnd;
  *&lastRoamSuppressionWaitForRoamEnd = lastRoamSuppressionWaitForRoamEnd;
  v81 = [MEMORY[0x277CCABB0] numberWithFloat:lastRoamSuppressionWaitForRoamEnd];
  [v7 setObject:v81 forKeyedSubscript:@"WiFiInRoamSuppressedWaitForRoamEnd"];

  v82 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inCallEventCount];
  [v7 setObject:v82 forKeyedSubscript:@"SystemInCallCount"];

  v83 = [WiFiUsagePrivacyFilter timePercentage:self->_inCallDuration overTotalDuration:v6];
  [v7 setObject:v83 forKeyedSubscript:@"SystemInCallDuration"];

  v84 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inVehicleEventCount];
  [v7 setObject:v84 forKeyedSubscript:@"SystemInVehicleCount"];

  v85 = [WiFiUsagePrivacyFilter timePercentage:self->_inVehicleDuration overTotalDuration:v6];
  [v7 setObject:v85 forKeyedSubscript:@"SystemInVehicleDuration"];

  v86 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inMotionEventCount];
  [v7 setObject:v86 forKeyedSubscript:@"SystemInMotionCount"];

  v87 = [WiFiUsagePrivacyFilter timePercentage:self->_inMotionDuration overTotalDuration:v6];
  [v7 setObject:v87 forKeyedSubscript:@"SystemInMotionDuration"];

  v88 = [WiFiUsagePrivacyFilter numberWithInstances:self->_triggerDisconnectAlertedCount];
  [v7 setObject:v88 forKeyedSubscript:@"TriggerDisconnectAlertedCount"];

  v89 = [WiFiUsagePrivacyFilter numberWithInstances:self->_triggerDisconnectConfirmedCount];
  [v7 setObject:v89 forKeyedSubscript:@"TriggerDisconnectConfirmedCount"];

  v90 = [WiFiUsagePrivacyFilter numberWithInstances:self->_triggerDisconnectExecutedCount];
  [v7 setObject:v90 forKeyedSubscript:@"TriggerDisconnectExecutedCount"];

  v91 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inA2dpEventCount];
  [v7 setObject:v91 forKeyedSubscript:@"BluetoothInA2dpCount"];

  v92 = [WiFiUsagePrivacyFilter timePercentage:self->_inA2dpDuration overTotalDuration:v6];
  [v7 setObject:v92 forKeyedSubscript:@"BluetoothInA2dpDuration"];

  v93 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inScoEventCount];
  [v7 setObject:v93 forKeyedSubscript:@"BluetoothInScoCount"];

  v94 = [WiFiUsagePrivacyFilter timePercentage:self->_inScoDuration overTotalDuration:v6];
  [v7 setObject:v94 forKeyedSubscript:@"BluetoothInScoDuration"];

  v95 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inHidPresentCount];
  [v7 setObject:v95 forKeyedSubscript:@"BluetoothInHidCount"];

  v96 = [WiFiUsagePrivacyFilter timePercentage:self->_inHidPresentDuration overTotalDuration:v6];
  [v7 setObject:v96 forKeyedSubscript:@"BluetoothInHidDuration"];

  v97 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inAwdlEventCount];
  [v7 setObject:v97 forKeyedSubscript:@"WiFiInAwdlCount"];

  v98 = [WiFiUsagePrivacyFilter timePercentage:self->_inAwdlDuration overTotalDuration:v6];
  [v7 setObject:v98 forKeyedSubscript:@"WiFiInAwdlDuration"];

  v99 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inRoamEventCount];
  [v7 setObject:v99 forKeyedSubscript:@"WiFiInRoamCount"];

  v100 = [WiFiUsagePrivacyFilter timePercentage:self->_inRoamDuration overTotalDuration:v6];
  [v7 setObject:v100 forKeyedSubscript:@"WiFiInRoamDuration"];

  v101 = [WiFiUsagePrivacyFilter numberWithInstances:self->_inScanEventCount];
  [v7 setObject:v101 forKeyedSubscript:@"WiFiInScanCount"];

  v102 = [WiFiUsagePrivacyFilter numberWithInstances:self->_locationScanCount];
  [v7 setObject:v102 forKeyedSubscript:@"WiFiInLocationScanCount"];

  v103 = [WiFiUsagePrivacyFilter numberWithInstances:self->_indoorScanCount];
  [v7 setObject:v103 forKeyedSubscript:@"WiFiInIndoorScanCount"];

  v104 = [WiFiUsagePrivacyFilter timePercentage:self->_inScanDuration overTotalDuration:v6];
  [v7 setObject:v104 forKeyedSubscript:@"WiFiInScanDuration"];

  v105 = [WiFiUsagePrivacyFilter timePercentage:self->_inCellularFallbackDuration overTotalDuration:v6];
  [v7 setObject:v105 forKeyedSubscript:@"WiFiInCellularFallbackDuration"];

  v106 = [WiFiUsagePrivacyFilter numberWithInstances:self->_cellularFallbackStateChangedCount];
  [v7 setObject:v106 forKeyedSubscript:@"WiFiCellularFallbackStateChangedCount"];

  v107 = [WiFiUsagePrivacyFilter timePercentage:self->_inCellularOutrankingDuration overTotalDuration:v6];
  [v7 setObject:v107 forKeyedSubscript:@"WiFiInCellularOutrankingDuration"];

  v108 = [WiFiUsagePrivacyFilter numberWithInstances:self->_cellularOutrankingStateChangedCount];
  [v7 setObject:v108 forKeyedSubscript:@"WiFiCellularOutrankingStateChangedCount"];

  v109 = [WiFiUsagePrivacyFilter timePercentage:self->_inPoorCoverageDuration overTotalDuration:v6];
  [v7 setObject:v109 forKeyedSubscript:@"PoorCoverageDuration"];

  v110 = [WiFiUsagePrivacyFilter timePercentage:self->_poorCoverageAndA2dpDuration overTotalDuration:v6];
  [v7 setObject:v110 forKeyedSubscript:@"PoorCoverageAndA2dpDuration"];

  v111 = [WiFiUsagePrivacyFilter timePercentage:self->_poorCoverageAndScoDuration overTotalDuration:v6];
  [v7 setObject:v111 forKeyedSubscript:@"PoorCoverageAndScoDuration"];

  v112 = [WiFiUsagePrivacyFilter timePercentage:self->_poorCoverageAndAwdlDuration overTotalDuration:v6];
  [v7 setObject:v112 forKeyedSubscript:@"PoorCoverageAndAwdlDuration"];

  v113 = [WiFiUsagePrivacyFilter timePercentage:self->_poorCoverageAndScanDuration overTotalDuration:v6];
  [v7 setObject:v113 forKeyedSubscript:@"PoorCoverageAndScanDuration"];

  v114 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[1]];
  [v7 setObject:v114 forKeyedSubscript:@"FaultReasonDnsFailureCount"];

  v115 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[2]];
  [v7 setObject:v115 forKeyedSubscript:@"FaultReasonArpFailureCount"];

  v116 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[4]];
  [v7 setObject:v116 forKeyedSubscript:@"FaultReasonShortFlowCount"];

  v117 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[5]];
  [v7 setObject:v117 forKeyedSubscript:@"FaultReasonRTTFailureCount"];

  v118 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[3]];
  [v7 setObject:v118 forKeyedSubscript:@"FaultReasonSymptomDataStallCount"];

  v119 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[6]];
  [v7 setObject:v119 forKeyedSubscript:@"FaultReasonL2DatapathStallCount"];

  v120 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[10]];
  [v7 setObject:v120 forKeyedSubscript:@"FaultReasonSlowWiFi"];

  v121 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[19]];
  [v7 setObject:v121 forKeyedSubscript:@"FaultReasonSlowWiFiDUT"];

  v122 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[13]];
  [v7 setObject:v122 forKeyedSubscript:@"FaultReasonDhcpFailure"];

  v123 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[14]];
  [v7 setObject:v123 forKeyedSubscript:@"FaultReasonLinkTestLocalCheckFailure"];

  v124 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[15]];
  [v7 setObject:v124 forKeyedSubscript:@"FaultReasonLinkTestInternetCheckFailure"];

  v125 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[16]];
  [v7 setObject:v125 forKeyedSubscript:@"FaultReasonLinkTestDNSCheckFailure"];

  v126 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[20]];
  [v7 setObject:v126 forKeyedSubscript:@"FaultReasonUserOverridesCellularOutranking"];

  v127 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[25]];
  [v7 setObject:v127 forKeyedSubscript:@"FaultReasonSiriTimedOut"];

  v128 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[26]];
  [v7 setObject:v128 forKeyedSubscript:@"FaultReasonApsdTimedOut"];

  v129 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[27]];
  [v7 setObject:v129 forKeyedSubscript:@"FaultReasonBrokenBackhaulLinkFailed"];

  v130 = [WiFiUsagePrivacyFilter numberWithInstances:self->_faultReasonCount[36]];
  [v7 setObject:v130 forKeyedSubscript:@"FaultReasonRxDataStallEvent"];

  v131 = [MEMORY[0x277CCABB0] numberWithInteger:self->_joinRssi];
  [v7 setObject:v131 forKeyedSubscript:@"RssiAtJoin"];

  v132 = [MEMORY[0x277CCABB0] numberWithInteger:self->_leftRssi];
  [v7 setObject:v132 forKeyedSubscript:@"RssiAtLeave"];

  v133 = [MEMORY[0x277CCABB0] numberWithInteger:self->_newRssi];
  [v7 setObject:v133 forKeyedSubscript:@"RssiAfterRoam"];

  v134 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lastLinkRssi];
  [v7 setObject:v134 forKeyedSubscript:@"RssiLastLink"];

  v135 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lastRoamScanRssi];
  [v7 setObject:v135 forKeyedSubscript:@"RssiLastRoamScan"];

  v136 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxLinkRssi];
  [v7 setObject:v136 forKeyedSubscript:@"RssiMax"];

  v137 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minLinkRssi];
  [v7 setObject:v137 forKeyedSubscript:@"RssiMin"];

  v138 = [MEMORY[0x277CCABB0] numberWithInteger:self->_avgLinkRssi];
  [v7 setObject:v138 forKeyedSubscript:@"RssiAvg"];

  v139 = [WiFiUsagePrivacyFilter bandAsString:self->_currentBand];
  [v7 setObject:v139 forKeyedSubscript:@"BandAtJoin"];

  v140 = [WiFiUsagePrivacyFilter bandAsString:self->_newBand];
  [v7 setObject:v140 forKeyedSubscript:@"BandAfterRoam"];

  v141 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentChannel];
  [v7 setObject:v141 forKeyedSubscript:@"ChannelAtJoin"];

  v142 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_newChannel];
  [v7 setObject:v142 forKeyedSubscript:@"ChannelAfterRoam"];

  if (+[WiFiUsagePrivacyFilter isInternalInstall]&& [(WiFiUsageNetworkDetails *)self->_networkDetails isInternal])
  {
    v143 = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];
    [v7 setObject:v143 forKeyedSubscript:@"NetworkName"];

    v144 = [(WiFiUsageBssDetails *)self->_originBssDetails bssid];
    [v7 setObject:v144 forKeyedSubscript:@"RoamBssidOrigin"];

    v145 = [(WiFiUsageBssDetails *)self->_originBssDetails bssid];
    v146 = [WiFiUsageAccessPointProfile apNameForBSSID:v145];

    [v7 setObject:v146 forKeyedSubscript:@"RoamOriginAPName"];
    v147 = [[WiFiUsageAppleWiFiNameBlocks alloc] initWithAPName:v146];
    v148 = v147;
    if (v147)
    {
      v149 = [(WiFiUsageAppleWiFiNameBlocks *)v147 building];
      [v7 setObject:v149 forKeyedSubscript:@"RoamOriginAPNamePortionA"];

      v150 = [(WiFiUsageAppleWiFiNameBlocks *)v148 section];
      [v7 setObject:v150 forKeyedSubscript:@"RoamOriginAPNamePortionB"];

      v151 = [(WiFiUsageAppleWiFiNameBlocks *)v148 floor];
      [v7 setObject:v151 forKeyedSubscript:@"RoamOriginAPNamePortionC"];

      v152 = [(WiFiUsageAppleWiFiNameBlocks *)v148 pod];
      [v7 setObject:v152 forKeyedSubscript:@"RoamOriginAPNamePortionD"];

      v153 = [(WiFiUsageAppleWiFiNameBlocks *)v148 other];
      [v7 setObject:v153 forKeyedSubscript:@"RoamOriginAPNamePortionE"];
    }

    v154 = [(WiFiUsageBssDetails *)self->_targetBssDetails bssid];
    [v7 setObject:v154 forKeyedSubscript:@"RoamBssidTarget"];

    v155 = [(WiFiUsageBssDetails *)self->_targetBssDetails bssid];
    v156 = [WiFiUsageAccessPointProfile apNameForBSSID:v155];

    [v7 setObject:v156 forKeyedSubscript:@"RoamTargetAPName"];
    v157 = [[WiFiUsageAppleWiFiNameBlocks alloc] initWithAPName:v156];

    if (v157)
    {
      v158 = [(WiFiUsageAppleWiFiNameBlocks *)v157 building];
      [v7 setObject:v158 forKeyedSubscript:@"RoamTargetAPNamePortionA"];

      v159 = [(WiFiUsageAppleWiFiNameBlocks *)v157 section];
      [v7 setObject:v159 forKeyedSubscript:@"RoamTargetAPNamePortionB"];

      v160 = [(WiFiUsageAppleWiFiNameBlocks *)v157 floor];
      [v7 setObject:v160 forKeyedSubscript:@"RoamTargetAPNamePortionC"];

      v161 = [(WiFiUsageAppleWiFiNameBlocks *)v157 pod];
      [v7 setObject:v161 forKeyedSubscript:@"RoamTargetAPNamePortionD"];

      v162 = [(WiFiUsageAppleWiFiNameBlocks *)v157 other];
      [v7 setObject:v162 forKeyedSubscript:@"RoamTargetAPNamePortionE"];
    }
  }

  if (self->_linkRssiGt40 < 0)
  {
    linkRssiGt40 = 0;
  }

  else
  {
    [v7 setObject:@"Gt40" forKeyedSubscript:@"RssiMode"];
    linkRssiGt40 = self->_linkRssiGt40;
  }

  if (self->_linkRssi40to50 >= linkRssiGt40)
  {
    [v7 setObject:@"40to50" forKeyedSubscript:@"RssiMode"];
    linkRssiGt40 = self->_linkRssi40to50;
  }

  if (self->_linkRssi50to60 >= linkRssiGt40)
  {
    [v7 setObject:@"50to60" forKeyedSubscript:@"RssiMode"];
    linkRssiGt40 = self->_linkRssi50to60;
  }

  if (self->_linkRssi60to65 >= linkRssiGt40)
  {
    [v7 setObject:@"60to65" forKeyedSubscript:@"RssiMode"];
    linkRssiGt40 = self->_linkRssi60to65;
  }

  if (self->_linkRssi65to70 >= linkRssiGt40)
  {
    [v7 setObject:@"65to70" forKeyedSubscript:@"RssiMode"];
    linkRssiGt40 = self->_linkRssi65to70;
  }

  if (self->_linkRssi70to75 >= linkRssiGt40)
  {
    [v7 setObject:@"70to75" forKeyedSubscript:@"RssiMode"];
    linkRssiGt40 = self->_linkRssi70to75;
  }

  if (self->_linkRssi75to80 >= linkRssiGt40)
  {
    [v7 setObject:@"75to80" forKeyedSubscript:@"RssiMode"];
    linkRssiGt40 = self->_linkRssi75to80;
  }

  if (self->_linkRssi80to85 >= linkRssiGt40)
  {
    [v7 setObject:@"80to85" forKeyedSubscript:@"RssiMode"];
    linkRssiGt40 = self->_linkRssi80to85;
  }

  if (self->_linkRssi85to90 >= linkRssiGt40)
  {
    [v7 setObject:@"85to90" forKeyedSubscript:@"RssiMode"];
    linkRssiGt40 = self->_linkRssi85to90;
  }

  if (self->_linkRssiLt90 >= linkRssiGt40)
  {
    [v7 setObject:@"Lt90" forKeyedSubscript:@"RssiMode"];
  }

  v164 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_minRoamLatency];
  [v7 setObject:v164 forKeyedSubscript:@"RoamLatencyMin"];

  v165 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxRoamLatency];
  [v7 setObject:v165 forKeyedSubscript:@"RoamLatencyMax"];

  v166 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_partialScanCount];
  [v7 setObject:v166 forKeyedSubscript:@"PartialScanCount"];

  v167 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fullScanCount];
  [v7 setObject:v167 forKeyedSubscript:@"FullScanCount"];

  v168 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCompatibilityModeEnabledAtStart];
  [v7 setObject:v168 forKeyedSubscript:@"WiFiCompatibilityModeEnabledAtStart"];

  v169 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCompatibilityModeEnabled];
  [v7 setObject:v169 forKeyedSubscript:@"WiFiCompatibilityModeEnabledAtEnd"];

  v170 = [MEMORY[0x277CCABB0] numberWithInteger:self->_compatibilityModeChangeCount];
  [v7 setObject:v170 forKeyedSubscript:@"WiFiCompatibilityModeChangeCount"];

  v171 = [WiFiUsagePrivacyFilter timePercentage:self->_inCompatibilityModeEnabledDuration overTotalDuration:v6];
  [v7 setObject:v171 forKeyedSubscript:@"WiFiCompatibilityModeChangeDuration"];

  v172 = [(WiFiUsageBssSession *)self originBssDetails];
  v173 = [v172 eventDictionary:1];
  [v7 addEntriesFromDictionary:v173];

  context = objc_autoreleasePoolPush();
  v174 = MEMORY[0x277CCAB68];
  v197 = self;
  v175 = objc_opt_class();
  v176 = NSStringFromClass(v175);
  v177 = [v174 stringWithFormat:@"%@:: ", v176];

  v178 = v7;
  v179 = [v7 allKeys];
  v180 = [v179 sortedArrayUsingSelector:sel_compare_];

  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v181 = v180;
  v182 = [v181 countByEnumeratingWithState:&v198 objects:v204 count:16];
  if (v182)
  {
    v183 = v182;
    v184 = *v199;
    do
    {
      for (i = 0; i != v183; ++i)
      {
        if (*v199 != v184)
        {
          objc_enumerationMutation(v181);
        }

        v186 = *(*(&v198 + 1) + 8 * i);
        v187 = [v178 objectForKey:v186];
        [v177 appendFormat:@"%@=%@; ", v186, v187, context];

        if ([v177 length] >= 0xB5)
        {
          NSLog(&stru_284888320.isa, v177);
          v188 = MEMORY[0x277CCACA8];
          v189 = objc_opt_class();
          v190 = NSStringFromClass(v189);
          v191 = [v188 stringWithFormat:@"%@:: ", v190];
          [v177 setString:v191];
        }
      }

      v183 = [v181 countByEnumeratingWithState:&v198 objects:v204 count:16];
    }

    while (v183);
  }

  NSLog(&stru_284888320.isa, v177);
  NSLog(&cfstr_STotalBssSessi.isa, "-[WiFiUsageBssSession submitAnalytics]", [v181 count]);

  objc_autoreleasePoolPop(context);
  v192 = v178;
  AnalyticsSendEventLazy();

  [(WiFiUsageBssSession *)v197 setSessionInfo:v192];
  v193 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)motionStateDidChange:(BOOL)a3 andVehicularState:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [MEMORY[0x277CBEAA8] date];
  v11 = v7;
  if (v5)
  {
    [(WiFiUsageBssSession *)self setInMotionStartedTime:v7];
    ++self->_inMotionEventCount;
  }

  else if (self->_inMotionStartedTime)
  {
    [v7 timeIntervalSinceDate:?];
    self->_inMotionDuration = v8 + self->_inMotionDuration;
    [(WiFiUsageBssSession *)self setInMotionStartedTime:0];
  }

  if (v4)
  {
    [(WiFiUsageBssSession *)self setInVehicleEntryTime:v11];
    v9 = v11;
    ++self->_inVehicleEventCount;
  }

  else
  {
    v9 = v11;
    if (self->_inVehicleEntryTime)
    {
      [v11 timeIntervalSinceDate:?];
      self->_inVehicleDuration = v10 + self->_inVehicleDuration;
      [(WiFiUsageBssSession *)self setInVehicleEntryTime:0];
      v9 = v11;
    }
  }
}

- (void)callStateDidChange:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = v5;
  if (v3)
  {
    v8 = v5;
    v5 = [(WiFiUsageBssSession *)self setCallStartedTime:v5];
    v6 = v8;
    ++self->_inCallEventCount;
  }

  else if (self->_callStartedTime)
  {
    v9 = v5;
    [v5 timeIntervalSinceDate:?];
    self->_inCallDuration = v7 + self->_inCallDuration;
    v5 = [(WiFiUsageBssSession *)self setCallStartedTime:0];
    v6 = v9;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)updateRssi:(int64_t)a3 timeSinceLastUpdate:(double)a4
{
  lastPoorCoverageEntryTimestamp = [MEMORY[0x277CBEAA8] date];
  v8 = lastPoorCoverageEntryTimestamp;
  if (a3)
  {
    v40 = lastPoorCoverageEntryTimestamp;
    [(WiFiUsageBssSession *)self setLastLinkRssi:a3];
    if (a3 <= -41)
    {
      if (a3 <= 0xFFFFFFFFFFFFFFCDLL)
      {
        v9 = 560;
        v10 = 568;
        v11 = 576;
        v12 = 584;
        v13 = 592;
        v14 = 600;
        v15 = 616;
        if (a3 > 0xFFFFFFFFFFFFFFA5)
        {
          v15 = 608;
        }

        if (a3 <= 0xFFFFFFFFFFFFFFAALL)
        {
          v14 = v15;
        }

        if (a3 <= 0xFFFFFFFFFFFFFFAFLL)
        {
          v13 = v14;
        }

        if (a3 <= 0xFFFFFFFFFFFFFFB4)
        {
          v12 = v13;
        }

        if (a3 <= 0xFFFFFFFFFFFFFFB9)
        {
          v11 = v12;
        }

        if (a3 <= 0xFFFFFFFFFFFFFFBELL)
        {
          v10 = v11;
        }

        if (a3 <= 0xFFFFFFFFFFFFFFC3)
        {
          v9 = v10;
        }
      }

      else
      {
        v9 = 552;
      }
    }

    else
    {
      v9 = 544;
    }

    v8 = v40;
    *(&self->super.isa + v9) = (*(&self->super.isa + v9) + a4);
    maxLinkRssi = self->_maxLinkRssi;
    minLinkRssi = self->_minLinkRssi;
    if (minLinkRssi >= a3)
    {
      v18 = a3;
    }

    else
    {
      v18 = self->_minLinkRssi;
    }

    if (minLinkRssi)
    {
      v19 = v18;
    }

    else
    {
      v19 = a3;
    }

    if (maxLinkRssi <= a3)
    {
      v20 = a3;
    }

    else
    {
      v20 = self->_maxLinkRssi;
    }

    if (maxLinkRssi)
    {
      v21 = v20;
    }

    else
    {
      v21 = a3;
    }

    self->_maxLinkRssi = v21;
    self->_minLinkRssi = v19;
    avgLinkRssi = self->_avgLinkRssi;
    v23 = vcvtd_n_f64_s64(avgLinkRssi + a3, 1uLL);
    if (avgLinkRssi)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    self->_avgLinkRssi = v24;
    lastPoorCoverageEntryTimestamp = self->_lastPoorCoverageEntryTimestamp;
    if (self->_roamConfigTriggerRssi <= a3)
    {
      if (!lastPoorCoverageEntryTimestamp)
      {
        goto LABEL_57;
      }

      if (self->_a2dpActiveTime)
      {
        [lastPoorCoverageEntryTimestamp timeIntervalSinceDate:?];
        v26 = 960;
        if (v27 > 0.0)
        {
          v26 = 448;
        }

        [v40 timeIntervalSinceDate:*(&self->super.isa + v26)];
        self->_poorCoverageAndA2dpDuration = v28 + self->_poorCoverageAndA2dpDuration;
      }

      if (self->_scoActiveTime)
      {
        [(NSDate *)self->_lastPoorCoverageEntryTimestamp timeIntervalSinceDate:?];
        v29 = 968;
        if (v30 > 0.0)
        {
          v29 = 448;
        }

        [v40 timeIntervalSinceDate:*(&self->super.isa + v29)];
        self->_poorCoverageAndScoDuration = v31 + self->_poorCoverageAndScoDuration;
      }

      if (self->_awdlActiveTime)
      {
        [(NSDate *)self->_lastPoorCoverageEntryTimestamp timeIntervalSinceDate:?];
        v32 = 984;
        if (v33 > 0.0)
        {
          v32 = 448;
        }

        [v40 timeIntervalSinceDate:*(&self->super.isa + v32)];
        self->_poorCoverageAndAwdlDuration = v34 + self->_poorCoverageAndAwdlDuration;
      }

      v35 = v40;
      if (self->_scanningActiveTime)
      {
        [(NSDate *)self->_lastPoorCoverageEntryTimestamp timeIntervalSinceDate:?];
        v36 = 1000;
        if (v37 > 0.0)
        {
          v36 = 448;
        }

        [v40 timeIntervalSinceDate:*(&self->super.isa + v36)];
        v35 = v40;
        self->_poorCoverageAndScanDuration = v38 + self->_poorCoverageAndScanDuration;
      }

      [v35 timeIntervalSinceDate:self->_lastPoorCoverageEntryTimestamp];
      v25 = 0;
      self->_inPoorCoverageDuration = v39 + self->_inPoorCoverageDuration;
    }

    else
    {
      v25 = v40;
      if (lastPoorCoverageEntryTimestamp)
      {
        goto LABEL_57;
      }
    }

    lastPoorCoverageEntryTimestamp = [(WiFiUsageBssSession *)self setLastPoorCoverageEntryTimestamp:v25];
    v8 = v40;
  }

LABEL_57:

  MEMORY[0x2821F96F8](lastPoorCoverageEntryTimestamp, v8);
}

- (void)linkQualityDidChange:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = v4;
  lastLqmUpdateTimestamp = self->_lastLqmUpdateTimestamp;
  if (!lastLqmUpdateTimestamp)
  {
    lastLqmUpdateTimestamp = self->_joinedTimestamp;
  }

  [v4 timeIntervalSinceDate:lastLqmUpdateTimestamp];
  v8 = v7;
  if (!self->_lastLqmUpdateTimestamp || v7 >= 1.0)
  {
    [(WiFiUsageBssSession *)self setLastLqmUpdateTimestamp:v5];
    -[WiFiUsageBssSession updateRssi:timeSinceLastUpdate:](self, "updateRssi:timeSinceLastUpdate:", [v9 rssi], v8);
  }
}

- (void)roamingStateDidChange:(BOOL)a3 reason:(unint64_t)a4 andStatus:(unint64_t)a5 andLatency:(unint64_t)a6 andRoamData:(id)a7 andPingPongNth:(BOOL)a8
{
  v8 = a8;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v41 = a7;
  v14 = [MEMORY[0x277CBEAA8] date];
  v15 = v14;
  if (v12)
  {
    [(WiFiUsageBssSession *)self setRoamingActiveTime:v14];
    ++self->_inRoamEventCount;
    if (self->_lastRoamSuppressionToggled && !self->_isRoamSuppressionEnabled && !self->_roamsAfterSupprLifted)
    {
      [v15 timeIntervalSinceDate:?];
      self->_lastRoamSuppressionWaitForRoamStart = v16;
      NSLog(&cfstr_SLastroamsuppr.isa, "[WiFiUsageBssSession roamingStateDidChange:reason:andStatus:andLatency:andRoamData:andPingPongNth:]", *&v16);
    }

    lastLinkRssi = self->_lastLinkRssi;
    self->_lastRoamScanRssi = lastLinkRssi;
    if (lastLinkRssi > self->_roamConfigTriggerRssi)
    {
      ++self->_highRssiRoamScanCount;
      switch(v11)
      {
        case -528348160:
          goto LABEL_65;
        case -528348159:
          goto LABEL_67;
        case -528348158:
        case -528348157:
          goto LABEL_29;
        case -528348156:
          ++self->_unexpectedBeaconLostRoamScanCount;
          goto LABEL_69;
        case -528348154:
          goto LABEL_63;
        case -528348152:
          goto LABEL_66;
        case -528348151:
        case -528348150:
        case -528348148:
        case -528348145:
          goto LABEL_19;
        case -528348149:
          goto LABEL_62;
        case -528348146:
          goto LABEL_61;
        case -528348141:
          goto LABEL_70;
        case -528348139:
          goto LABEL_68;
        default:
          goto LABEL_64;
      }
    }

    ++self->_lowRssiRoamScanCount;
    switch(v11)
    {
      case -528348160:
LABEL_65:
        ++self->_roamReasonInitialAssociationCount;
        break;
      case -528348159:
LABEL_67:
        ++self->_roamReasonLowRssiCount;
        break;
      case -528348158:
      case -528348157:
LABEL_29:
        ++self->_roamReasonDeauthDisassocCount;
        break;
      case -528348156:
LABEL_69:
        ++self->_roamReasonBeaconLostCount;
        break;
      case -528348154:
LABEL_63:
        ++self->_roamReasonSteeredByApCount;
        break;
      case -528348152:
LABEL_66:
        ++self->_roamReasonBetterCandidateCount;
        break;
      case -528348151:
      case -528348150:
      case -528348148:
      case -528348145:
LABEL_19:
        ++self->_roamReasonBetterConditionCount;
        break;
      case -528348149:
LABEL_62:
        ++self->_roamReasonSteeredByBtmCount;
        break;
      case -528348146:
LABEL_61:
        ++self->_roamReasonSteeredByCsaCount;
        break;
      case -528348141:
LABEL_70:
        ++self->_roamReasonReassocRequestedCount;
        break;
      case -528348139:
LABEL_68:
        ++self->_roamReasonHostTriggeredCount;
        break;
      default:
LABEL_64:
        ++self->_roamReasonMiscCount;
        break;
    }
  }

  else if (self->_roamingActiveTime)
  {
    if (!a6)
    {
      [v14 timeIntervalSinceDate:?];
      a6 = (v18 * 1000.0);
    }

    v19.f64[0] = self->_minRoamLatency;
    v19.f64[1] = a6;
    v20.f64[1] = self->_maxRoamLatency;
    v20.f64[0] = a6;
    *&self->_minRoamLatency = vbslq_s8(vbicq_s8(vcgtq_f64(v20, v19), vceqzq_f64(*&self->_minRoamLatency)), *&self->_minRoamLatency, vdupq_laneq_s64(v19, 1));
    v21 = [v41 objectForKey:@"ROAM_SCAN_SUMMARY"];
    v22 = v21;
    if (v21 && ([v21 objectForKeyedSubscript:@"ROAM_NUM_FULL_BAND_SCANS"], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
    {
      v24 = [v22 objectForKeyedSubscript:@"ROAM_NUM_FULL_BAND_SCANS"];
      v25 = [v24 integerValue];

      if (v25 >= 1)
      {
        ++self->_fullScanCount;
      }

      v26 = [v22 objectForKeyedSubscript:@"ROAM_NUM_PARTIAL_SCANS"];
      v27 = [v26 integerValue];

      if (v27 >= 1)
      {
        ++self->_partialScanCount;
      }
    }

    else
    {
      v28 = [v41 objectForKey:@"ROAMEDEVENT_CHANNELS_SCANNED_COUNT"];
      v29 = v28;
      if (v28)
      {
        v30 = [v28 unsignedIntegerValue];
        v31 = 920;
        if (v30 > 0xD)
        {
          v31 = 928;
        }

        ++*(&self->super.isa + v31);
      }
    }

    [v15 timeIntervalSinceDate:self->_roamingActiveTime];
    self->_inRoamDuration = v32 + self->_inRoamDuration;
    [(WiFiUsageBssSession *)self setRoamingActiveTime:0];
    if (self->_lastRoamSuppressionToggled && !self->_isRoamSuppressionEnabled)
    {
      roamsAfterSupprLifted = self->_roamsAfterSupprLifted;
      v34 = roamsAfterSupprLifted + 1;
      self->_roamsAfterSupprLifted = roamsAfterSupprLifted + 1;
      if (roamsAfterSupprLifted)
      {
        lastRoamSuppressionWaitForRoamEnd = self->_lastRoamSuppressionWaitForRoamEnd;
      }

      else
      {
        [v15 timeIntervalSinceDate:?];
        self->_lastRoamSuppressionWaitForRoamEnd = lastRoamSuppressionWaitForRoamEnd;
        v34 = self->_roamsAfterSupprLifted;
      }

      NSLog(&cfstr_SRoamsaftersup.isa, "[WiFiUsageBssSession roamingStateDidChange:reason:andStatus:andLatency:andRoamData:andPingPongNth:]", v34, *&lastRoamSuppressionWaitForRoamEnd);
    }

    if (v10 == -528350205)
    {
      ++self->_roamStatusNoCandidateCount;
    }

    else if (v10 == -528350133)
    {
      ++self->_roamStatusNoQualifiedCandidateCount;
    }

    else if (v10)
    {
      ++self->_roamStatusFailedCount;
    }

    else
    {
      ++self->_roamStatusSucceededCount;
      self->_roamPingPongNth = v8;
      self->_roamInMotion = self->_inMotionStartedTime != 0;
    }

    v36 = [v41 objectForKey:@"ROAMEDEVENT_FLAGS"];
    v37 = v36;
    if (v36)
    {
      self->_roamIsWNMScoreUsedCount += ([v36 unsignedIntegerValue] >> 6) & 1;
    }

    if (self->_targetBssDetails)
    {
      NSLog(&cfstr_SBssSessionEnd.isa, "[WiFiUsageBssSession roamingStateDidChange:reason:andStatus:andLatency:andRoamData:andPingPongNth:]");
      [(WiFiUsageBssSession *)self updateActivityDurations:v15];
      [(WiFiUsageBssSession *)self submitAnalytics];
      [(WiFiUsageBssSession *)self reset];
      [(WiFiUsageBssSession *)self setOriginBssDetails:self->_targetBssDetails];
      [(WiFiUsageBssSession *)self setJoinRssi:[(WiFiUsageBssDetails *)self->_targetBssDetails rssi]];
      [(WiFiUsageBssSession *)self setCurrentBand:[(WiFiUsageBssDetails *)self->_targetBssDetails band]];
      [(WiFiUsageBssSession *)self setCurrentChannel:[(WiFiUsageBssDetails *)self->_targetBssDetails channel]];
      [(WiFiUsageBssSession *)self setLastLinkRssi:[(WiFiUsageBssDetails *)self->_targetBssDetails rssi]];
      [(WiFiUsageBssSession *)self setTargetBssDetails:0];
      [(WiFiUsageBssSession *)self setJoinedTimestamp:v15];
    }
  }

  v38 = [v41 objectForKey:@"ROAMEDEVENT_FLAGS"];
  v39 = v38;
  if (!v38)
  {
    goto LABEL_52;
  }

  v40 = [v38 unsignedIntegerValue];
  if (v40)
  {
    self->_supportsNeighborReport = 1;
    if ((v40 & 2) == 0)
    {
LABEL_47:
      if ((v40 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_57;
    }
  }

  else if ((v40 & 2) == 0)
  {
    goto LABEL_47;
  }

  self->_supportsFastTransition = 1;
  if ((v40 & 4) == 0)
  {
LABEL_48:
    if ((v40 & 8) == 0)
    {
      goto LABEL_49;
    }

LABEL_58:
    self->_supportsAdaptiveFastTransition = 1;
    if ((v40 & 0x10) == 0)
    {
LABEL_50:
      if ((v40 & 0x20) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    goto LABEL_59;
  }

LABEL_57:
  self->_supportsBssTransitionManagement = 1;
  if ((v40 & 8) != 0)
  {
    goto LABEL_58;
  }

LABEL_49:
  if ((v40 & 0x10) == 0)
  {
    goto LABEL_50;
  }

LABEL_59:
  self->_supportsFastlane = 1;
  if ((v40 & 0x20) != 0)
  {
LABEL_51:
    self->_supportsNetworkAssurance = 1;
  }

LABEL_52:
}

- (void)roamingARConfigurationDidChange:(id *)a3
{
  self->_supportsAdaptiveRoaming = a3->var0;
  v3 = *&a3->var0;
  *&self->_roamConfigCriteria.networkOfInterestType = *&a3->var5;
  *&self->_roamConfigCriteria.isAllowed = v3;
}

- (void)roamingConfigurationDidChange:(int64_t)a3 withChannelList:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  self->_roamConfigTriggerRssi = a3;
  *self->_roamConfigChannels.valueByBand = 0u;
  *&self->_roamConfigChannels.valueByBand[2] = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [a4 allObjects];
  v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) objectForKey:@"IO80211ChannelFlags"];
        v10 = +[WiFiUsagePrivacyFilter bandFromFlags:](WiFiUsagePrivacyFilter, "bandFromFlags:", [v9 integerValue]);

        ++self->_roamConfigChannels.valueByBand[v10];
        self->_roamConfigChannels.valid[v10] = 1;
      }

      v6 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateRssiDiffStats:(id *)a3 For:(id)a4
{
  v6 = a4;
  var3 = a3->var3;
  var0 = a3->var0;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"roamNeighsSmllst%@RssiByBand", v6];
  v28 = 0u;
  v29 = 0u;
  v10 = [(WiFiUsageBssSession *)self valueForKey:v9];
  v11 = v10;
  if (v10)
  {
    [v10 integerByBandValue];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v12 = var3 - var0;

  var5 = a3->var5;
  if (*(&v29 + var5 + 8) != 1 || v12 < *(&v28 + var5))
  {
    *(&v28 + var5) = v12;
    *(&v29 + var5 + 8) = 1;
    v26 = v28;
    v27 = v29;
    v14 = [MEMORY[0x277CCAE60] valuewithIntegerByBand:&v26];
    [(WiFiUsageBssSession *)self setValue:v14 forKey:v9];
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"roamNeighsLrgst%@RssiByBand", v6];

  v26 = 0u;
  v27 = 0u;
  v16 = [(WiFiUsageBssSession *)self valueForKey:v15];
  v17 = v16;
  if (v16)
  {
    [v16 integerByBandValue];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v18 = a3->var5;
  if (*(&v27 + v18 + 8) != 1 || v12 > *(&v26 + v18))
  {
    *(&v26 + v18) = v12;
    *(&v27 + v18 + 8) = 1;
    v24 = v26;
    v25 = v27;
    v19 = [MEMORY[0x277CCAE60] valuewithIntegerByBand:&v24];
    [(WiFiUsageBssSession *)self setValue:v19 forKey:v15];

    v18 = a3->var5;
  }

  v20 = a3->var3;
  v21 = [WiFiUsagePrivacyFilter bandAsString:v18];
  v24 = v28;
  v25 = v29;
  v22 = [WiFiUsagePrivacyFilter getLabelForRssiDeltaByBand:&v24];
  v24 = v26;
  v25 = v27;
  v23 = [WiFiUsagePrivacyFilter getLabelForRssiDeltaByBand:&v24];
  NSLog(&cfstr_SStrongestrssi.isa, "[WiFiUsageBssSession updateRssiDiffStats:For:]", v20, v12, v21, v22, v23);
}

- (void)roamCandidatesStatsDidUpdate:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [a3->var7 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_roamNeighborsByBand objectForKey:v9];
        if (!v10)
        {
          v10 = objc_opt_new();
          [(NSMutableDictionary *)self->_roamNeighborsByBand setObject:v10 forKeyedSubscript:v9];
        }

        v11 = [a3->var7 objectForKeyedSubscript:v9];
        v12 = [v11 allObjects];
        [v10 addObjectsFromArray:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v6);
  }

  minCandidatesCount = self->_minCandidatesCount;
  if (minCandidatesCount >= a3->var6)
  {
    var6 = a3->var6;
  }

  else
  {
    var6 = self->_minCandidatesCount;
  }

  if (minCandidatesCount)
  {
    v15 = var6;
  }

  else
  {
    v15 = a3->var6;
  }

  self->_minCandidatesCount = v15;
  maxCandidatesCount = self->_maxCandidatesCount;
  if (maxCandidatesCount <= a3->var6)
  {
    v17 = a3->var6;
  }

  else
  {
    v17 = self->_maxCandidatesCount;
  }

  if (maxCandidatesCount)
  {
    v18 = v17;
  }

  else
  {
    v18 = a3->var6;
  }

  self->_maxCandidatesCount = v18;
  NSLog(&cfstr_SStatsCandidat.isa, "[WiFiUsageBssSession roamCandidatesStatsDidUpdate:]", a3->var6, v15, v18);
  currentRSSIStrongestCount = self->_currentRSSIStrongestCount;
  if (a3->var2 == a3->var0)
  {
    self->_currentRSSIStrongestCount = ++currentRSSIStrongestCount;
  }

  var4 = a3->var4;
  v21 = &self->super.isa + var4;
  v21[164] = (v21[164] + 1);
  v22 = self + var4;
  v22[1336] = 1;
  var2 = a3->var2;
  v21[168] = var2;
  v22[1368] = 1;
  NSLog(&cfstr_SStatsStronges.isa, "[WiFiUsageBssSession roamCandidatesStatsDidUpdate:]", var2, a3->var0, currentRSSIStrongestCount);
  var0 = a3->var0;
  if (a3->var0 >= -94)
  {
    var3 = a3->var3;
    if (var3 >= -94)
    {
      if (var3 >= var0)
      {
        v26 = &v30;
      }

      else
      {
        v26 = &v31;
      }

      if (var3 >= var0)
      {
        v27 = @"CurrentToBest";
      }

      else
      {
        v27 = @"CurrentToNextBest";
      }

      v28 = *&a3->var2;
      *v26 = *&a3->var0;
      *(v26 + 1) = v28;
      *(v26 + 2) = *&a3->var4;
      *(v26 + 6) = a3->var7;
      *(v26 + 7) = a3->var8;
      v26[64] = a3->var9;
      [(WiFiUsageBssSession *)self updateRssiDiffStats:v26 For:v27];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)cellularFallbackStateDidChange:(BOOL)a3
{
  v5 = [MEMORY[0x277CBEAA8] date];
  self->_cellularFallbackEnabled = a3;
  if (a3)
  {
    ++self->_cellularFallbackStateChangedCount;
    v8 = v5;
    v6 = v5;
  }

  else
  {
    if (!self->_lastCellularFallbackStateChangedTime)
    {
      goto LABEL_6;
    }

    v8 = v5;
    [v5 timeIntervalSinceDate:?];
    v6 = 0;
    self->_inCellularFallbackDuration = v7 + self->_inCellularFallbackDuration;
  }

  [(WiFiUsageBssSession *)self setLastCellularFallbackStateChangedTime:v6];
  v5 = v8;
LABEL_6:
}

- (void)cellularOutrankingStateDidChange:(BOOL)a3
{
  v5 = [MEMORY[0x277CBEAA8] date];
  self->_cellularOutrankingEnabled = a3;
  if (a3)
  {
    ++self->_cellularOutrankingStateChangedCount;
    v8 = v5;
    v6 = v5;
  }

  else
  {
    if (!self->_lastCellularOutrankingStateChangedTime)
    {
      goto LABEL_6;
    }

    v8 = v5;
    [v5 timeIntervalSinceDate:?];
    v6 = 0;
    self->_inCellularOutrankingDuration = v7 + self->_inCellularOutrankingDuration;
  }

  [(WiFiUsageBssSession *)self setLastCellularOutrankingStateChangedTime:v6];
  v5 = v8;
LABEL_6:
}

- (void)faultEventDetected:(unint64_t)a3
{
  if (a3 - 1 <= 0x24)
  {
    ++self->_faultReasonCount[a3];
  }
}

- (void)triggerDisconnectAlerted:(BOOL)a3 confirmed:(BOOL)a4 executed:(BOOL)a5
{
  if (a3)
  {
    ++self->_triggerDisconnectAlertedCount;
    if (!a4)
    {
LABEL_3:
      if (!a5)
      {
        return;
      }

LABEL_7:
      ++self->_triggerDisconnectExecutedCount;
      return;
    }
  }

  else if (!a4)
  {
    goto LABEL_3;
  }

  ++self->_triggerDisconnectConfirmedCount;
  if (a5)
  {
    goto LABEL_7;
  }
}

- (void)sentBssTransitionResponseWithStatus:(int64_t)a3 terminationDelayRequested:(BOOL)a4
{
  v4 = 808;
  if (!a3)
  {
    v4 = 800;
  }

  ++*(&self->super.isa + v4);
}

- (void)updateWithRoamingSuppression:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CBEAA8] now];
  if (v3)
  {
    if (self->_isRoamSuppressionEnabled)
    {
      goto LABEL_7;
    }

LABEL_6:
    obja = v5;
    ++self->_inRoamSuppressionEnabledCount;
    objc_storeStrong(&self->_lastRoamSuppressionToggled, v5);
    self->_roamsAfterSupprLifted = 0;
    self->_lastRoamSuppressionWaitForRoamStart = 0.0;
    self->_lastRoamSuppressionWaitForRoamEnd = 0.0;
    NSLog(&cfstr_SRoamsuppressi_0.isa, "[WiFiUsageBssSession updateWithRoamingSuppression:]", self->_inRoamSuppressionEnabledCount);
    v5 = obja;
    goto LABEL_7;
  }

  if (self->_isRoamSuppressionEnabled)
  {
    obj = v5;
    [v5 timeIntervalSinceDate:self->_lastRoamSuppressionToggled];
    v7 = v6 + self->_inRoamSuppressionEnabledDuration;
    self->_inRoamSuppressionEnabledDuration = v7;
    NSLog(&cfstr_SRoamsuppressi.isa, "[WiFiUsageBssSession updateWithRoamingSuppression:]", *&v7);
    v5 = obj;
    if (self->_isRoamSuppressionEnabled)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  self->_isRoamSuppressionEnabled = v3 != 0;
}

- (unint64_t)inRoamSuppressionEnabledDurationPerc
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = v3;
  inRoamSuppressionEnabledDuration = self->_inRoamSuppressionEnabledDuration;
  if (self->_lastRoamSuppressionToggled && self->_isRoamSuppressionEnabled)
  {
    [v3 timeIntervalSinceDate:?];
    inRoamSuppressionEnabledDuration = inRoamSuppressionEnabledDuration + v6;
  }

  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(WiFiUsageBssSession *)self joinedTimestamp];
  [v7 timeIntervalSinceDate:v8];
  v10 = [WiFiUsagePrivacyFilter timePercentage:inRoamSuppressionEnabledDuration overTotalDuration:v9];
  v11 = [v10 unsignedIntegerValue];

  return v11;
}

- (void)updateWithCompatibilityMode:(unsigned __int8)a3
{
  v3 = a3;
  isCompatibilityModeEnabled = self->_isCompatibilityModeEnabled;
  if (!a3 && self->_isCompatibilityModeEnabled)
  {
    [(NSDate *)self->_lastCompatibilityModeChangedTime timeIntervalSinceNow];
    self->_inCompatibilityModeEnabledDuration = self->_inCompatibilityModeEnabledDuration - v6;
    isCompatibilityModeEnabled = self->_isCompatibilityModeEnabled;
  }

  if (isCompatibilityModeEnabled != v3)
  {
    [(WiFiUsageBssSession *)self setIsCompatibilityModeEnabled:v3 != 0];
    ++self->_compatibilityModeChangeCount;
    v7 = [MEMORY[0x277CBEAA8] now];
    [(WiFiUsageBssSession *)self setLastCompatibilityModeChangedTime:v7];
  }
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamConfigChannels
{
  v3 = *&self[39].var0[2];
  *retstr->var0 = *self[39].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setRoamConfigChannels:(id *)a3
{
  v3 = *a3->var0;
  *&self->_roamConfigChannels.valueByBand[2] = *&a3->var0[2];
  *self->_roamConfigChannels.valueByBand = v3;
}

- ($6E47B81FEB72AA1B248A20B58E3F028F)roamConfigCriteria
{
  v3 = *&self[40].var5;
  *&retstr->var0 = *&self[40].var0;
  *&retstr->var5 = v3;
  return self;
}

- (void)setRoamConfigCriteria:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_roamConfigCriteria.networkOfInterestType = *&a3->var5;
  *&self->_roamConfigCriteria.isAllowed = v3;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSICountByBand
{
  v3 = *&self[41].var0[2];
  *retstr->var0 = *self[41].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setStrongestRSSICountByBand:(id *)a3
{
  v3 = *a3->var0;
  *&self->_strongestRSSICountByBand.valueByBand[2] = *&a3->var0[2];
  *self->_strongestRSSICountByBand.valueByBand = v3;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSIByBand
{
  v3 = *&self[42].var0[2];
  *retstr->var0 = *self[42].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setStrongestRSSIByBand:(id *)a3
{
  v3 = *a3->var0;
  *&self->_strongestRSSIByBand.valueByBand[2] = *&a3->var0[2];
  *self->_strongestRSSIByBand.valueByBand = v3;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamNeighsSmllstCurrentToBestRssiByBand
{
  v3 = *&self[43].var0[2];
  *retstr->var0 = *self[43].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setRoamNeighsSmllstCurrentToBestRssiByBand:(id *)a3
{
  v3 = *a3->var0;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBand.valueByBand[2] = *&a3->var0[2];
  *self->_roamNeighsSmllstCurrentToBestRssiByBand.valueByBand = v3;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamNeighsLrgstCurrentToBestRssiByBand
{
  v3 = *&self[44].var0[2];
  *retstr->var0 = *self[44].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setRoamNeighsLrgstCurrentToBestRssiByBand:(id *)a3
{
  v3 = *a3->var0;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBand.valueByBand[2] = *&a3->var0[2];
  *self->_roamNeighsLrgstCurrentToBestRssiByBand.valueByBand = v3;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamNeighsSmllstCurrentToNextBestRssiByBand
{
  v3 = *&self[45].var0[2];
  *retstr->var0 = *self[45].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setRoamNeighsSmllstCurrentToNextBestRssiByBand:(id *)a3
{
  v3 = *a3->var0;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBand.valueByBand[2] = *&a3->var0[2];
  *self->_roamNeighsSmllstCurrentToNextBestRssiByBand.valueByBand = v3;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)roamNeighsLrgstCurrentToNextBestRssiByBand
{
  v3 = *&self[46].var0[2];
  *retstr->var0 = *self[46].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setRoamNeighsLrgstCurrentToNextBestRssiByBand:(id *)a3
{
  v3 = *a3->var0;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBand.valueByBand[2] = *&a3->var0[2];
  *self->_roamNeighsLrgstCurrentToNextBestRssiByBand.valueByBand = v3;
}

@end
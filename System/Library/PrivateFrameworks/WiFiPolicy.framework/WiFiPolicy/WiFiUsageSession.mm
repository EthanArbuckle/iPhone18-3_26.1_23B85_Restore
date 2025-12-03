@interface WiFiUsageSession
+ (BOOL)isDriverUnavailabilityReasonVoluntary:(int)voluntary subReason:(int)reason orReasonString:(id)string;
+ (id)disconnectReasonString:(unint64_t)string;
+ (id)joinReasonString:(unint64_t)string;
- ($06992ED503081CE345EDB9EEA121564E)bandUsageDuration;
- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsLrgstCurrentToBestRssiByBandTransition;
- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsLrgstCurrentToNextBestRssiByBandTransition;
- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsSmllstCurrentToBestRssiByBandTransition;
- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsSmllstCurrentToNextBestRssiByBandTransition;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSIByBand;
- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSICountByBand;
- (BOOL)canSubmitToCA;
- (BOOL)incrementCountWithPrefix:(id)prefix name:(id)name;
- (BOOL)infraIsPartOfSplitSSID;
- (WiFiUsageSession)initWithSessionType:(unint64_t)type andInterfaceName:(id)name andCapabilities:(id)capabilities;
- (id)copyWithZone:(_NSZone *)zone;
- (id)countWithPrefix:(id)prefix name:(id)name;
- (id)description;
- (id)redactedDescription;
- (id)sessionName;
- (int64_t)averageCca;
- (int64_t)averageRssi;
- (int64_t)averageSnr;
- (int64_t)lastRssi;
- (os_state_data_s)_generateState;
- (unint64_t)faultReasonCount:(unint64_t)count;
- (unint64_t)totalRxFrames;
- (unint64_t)totalTxFrames;
- (void)applicationStateDidChange:(id)change withAttributes:(id)attributes;
- (void)chargingStateDidChange:(BOOL)change;
- (void)companionStateDidChange:(BOOL)change;
- (void)dealloc;
- (void)displayStateDidChange:(BOOL)change;
- (void)faultEventDetected:(unint64_t)detected event:(id)event;
- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details;
- (void)linkQualityDidChange:(id)change;
- (void)linkStateDidChange:(BOOL)change isInvoluntary:(BOOL)involuntary linkChangeReason:(int64_t)reason linkChangeSubreason:(int64_t)subreason withNetworkDetails:(id)details;
- (void)lockStateDidChange:(BOOL)change;
- (void)mediaStateDidChange:(BOOL)change;
- (void)motionStateDidChange:(id)change;
- (void)poorLinkSessionStats:(id)stats;
- (void)powerBudgetDidChange:(int64_t)change andThermalIndex:(int64_t)index;
- (void)powerStateDidChange:(BOOL)change;
- (void)processIPv4Changes:(id)changes;
- (void)processIPv6Changes:(id)changes;
- (void)roamCandidatesStatsDidUpdate:(id *)update;
- (void)roamingARConfigurationDidChange:(id *)change;
- (void)roamingStateDidChange:(BOOL)change reason:(unint64_t)reason andStatus:(unint64_t)status andLatency:(unint64_t)latency andRoamData:(id)data andPingPongStats:(id)stats;
- (void)sessionDidEnd;
- (void)sessionDidStart;
- (void)setAwdlSequence:(id)sequence infraScore:(unint64_t)score p2pScore:(double)p2pScore;
- (void)setBandUsageDuration:(id *)duration;
- (void)setCompletionHandler:(id)handler withContext:(id)context onQueue:(id)queue;
- (void)setLastDisconnectReason:(int64_t)reason;
- (void)setRealtimeCoexStarted:(BOOL)started type:(unint64_t)type reasons:(id)reasons;
- (void)setRoamNeighsLrgstCurrentToBestRssiByBandTransition:(id *)transition;
- (void)setRoamNeighsLrgstCurrentToNextBestRssiByBandTransition:(id *)transition;
- (void)setRoamNeighsSmllstCurrentToBestRssiByBandTransition:(id *)transition;
- (void)setRoamNeighsSmllstCurrentToNextBestRssiByBandTransition:(id *)transition;
- (void)setSSIDTransitionCandidates:(id)candidates SSIDTransitionPotentialCandidates:(id)potentialCandidates potentialCandidatesMinusCandidates:(id)minusCandidates roamCandidates:(unint64_t)roamCandidates uniqueChannels:(unint64_t)channels uniqueBands:(unint64_t)bands;
- (void)setStrongestRSSIByBand:(id *)band;
- (void)setStrongestRSSICountByBand:(id *)band;
- (void)summarizeAndReset6eModeStats:(id)stats;
- (void)summarizeSession;
- (void)systemWakeStateDidChange:(BOOL)change wokenByWiFi:(BOOL)fi;
- (void)tallyAssociatedDuration:(id)duration;
- (void)tallyInfraScoreDuration:(unint64_t)duration until:(id)until;
- (void)tallyP2PScoreDuration:(double)duration until:(id)until;
- (void)trackEventLatencies;
- (void)triggerDisconnectAlerted:(BOOL)alerted confirmed:(BOOL)confirmed executed:(BOOL)executed;
- (void)update6eModeStats:(id)stats;
- (void)updateApProfile:(id)profile;
- (void)updateAssociatedNetworkDetails:(id)details;
- (void)updateBandUsageFor:(int)for With:(id)with;
- (void)updateLinkRecoveryDisabled:(BOOL)disabled;
- (void)updateRssiDiffStats:(id *)stats For:(id)for;
- (void)updateScanForwardStats:(id)stats;
- (void)updateUsbInsertedDuration:(id)duration;
- (void)updateUsbStatus:(BOOL)status currentDevices:(id)devices;
- (void)updateWithCompatibilityMode:(unsigned __int8)mode;
- (void)updateWithRoamingSuppression:(unsigned __int8)suppression;
- (void)updateWowState:(BOOL)state lpasState:(BOOL)lpasState lowPowerState:(BOOL)powerState batterySaverState:(BOOL)saverState;
@end

@implementation WiFiUsageSession

- (void)sessionDidStart
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(WiFiUsageSession *)self isSessionActive]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[WiFiUsageSession sessionDidStart]";
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s on %@ -- Warning! active session is being RE-started", &v14, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(WiFiUsageSession *)self setDeferCompletion:0];
  [(WiFiUsageSession *)self setSessionDuration:0.0];
  [(WiFiUsageSession *)self setSystemAwakeDuration:0.0];
  [(WiFiUsageSession *)self setMediaPlaybackDuration:0.0];
  [(WiFiUsageSession *)self setChargingDuration:0.0];
  [(WiFiUsageSession *)self setInCallDuration:0.0];
  [(WiFiUsageSession *)self setInVehicleDuration:0.0];
  [(WiFiUsageSession *)self setInMotionDuration:0.0];
  [(WiFiUsageSession *)self setInA2dpDuration:0.0];
  [(WiFiUsageSession *)self setInScoDuration:0.0];
  [(WiFiUsageSession *)self setInHidPresentDuration:0.0];
  [(WiFiUsageSession *)self setInAwdlDuration:0.0];
  [(WiFiUsageSession *)self setInRoamDuration:0.0];
  [(WiFiUsageSession *)self setInScanDuration:0.0];
  [(WiFiUsageSession *)self setPoweredOnDuration:0.0];
  [(WiFiUsageSession *)self setAssociatedDuration:0.0];
  [(WiFiUsageSession *)self setAssociatedSleepDuration:0.0];
  [(WiFiUsageSession *)self setInCellularFallbackDuration:0.0];
  [(WiFiUsageSession *)self setInCellularOutrankingDuration:0.0];
  [(WiFiUsageSession *)self setInSoftApDuration:0.0];
  *&self->_bandUsageDuration.valueByBand[2] = 0u;
  *self->_bandUsageDuration.valueByBand = 0u;
  [(WiFiUsageSession *)self setInControlCenterAutoJoinDisabledDuration:0.0];
  [(WiFiUsageSession *)self setCompanionConnectedDuration:0.0];
  [(WiFiUsageSession *)self setInWowStateDuration:0.0];
  [(WiFiUsageSession *)self setInLpasStateDuration:0.0];
  [(WiFiUsageSession *)self setInLowPowerStateDuration:0.0];
  [(WiFiUsageSession *)self setInBatterySaverStateDuration:0.0];
  [(WiFiUsageSession *)self setLinkRecoveryDisabledDuration:0.0];
  [(WiFiUsageSession *)self setSleepPowerStatsTotalDuration:0.0];
  [(WiFiUsageSession *)self setSleepPowerStatsUnassociatedDuration:0.0];
  [(WiFiUsageSession *)self setSleepPowerStatsAssociatedDuration:0.0];
  [(WiFiUsageSession *)self setSleepPowerStatsRoamingDuration:0.0];
  [(WiFiUsageSession *)self setMediaPlaybackEventCount:0];
  [(WiFiUsageSession *)self setChargingEventCount:0];
  [(WiFiUsageSession *)self setInCallEventCount:0];
  [(WiFiUsageSession *)self setInVehicleEventCount:0];
  [(WiFiUsageSession *)self setInMotionEventCount:0];
  [(WiFiUsageSession *)self setInA2dpEventCount:0];
  [(WiFiUsageSession *)self setInScoEventCount:0];
  [(WiFiUsageSession *)self setInHidPresentCount:0];
  [(WiFiUsageSession *)self setInAwdlEventCount:0];
  [(WiFiUsageSession *)self setInRoamEventCount:0];
  [(WiFiUsageSession *)self setInScanEventCount:0];
  [(WiFiUsageSession *)self setRangingEventCount:0];
  [(WiFiUsageSession *)self setCompanionConnectionStateChangedCount:0];
  [(WiFiUsageSession *)self setLinkRecoveryDisabledCount:0];
  [(WiFiUsageSession *)self setWowStateChangedCount:0];
  [(WiFiUsageSession *)self setLpasStateChangedCount:0];
  [(WiFiUsageSession *)self setLowPowerStateChangedCount:0];
  [(WiFiUsageSession *)self setBatterySaverStateChangedCount:0];
  [(WiFiUsageSession *)self setSystemWakeStateChangedCount:0];
  [(WiFiUsageSession *)self setSystemWokenByWiFiCount:0];
  [(WiFiUsageSession *)self setLockStateChangedCount:0];
  [(WiFiUsageSession *)self setDisplayStateChangedCount:0];
  [(WiFiUsageSession *)self setJoinStateChangedCount:0];
  [(WiFiUsageSession *)self setNetworkChangedCount:0];
  [(WiFiUsageSession *)self setLinkStateChangedCount:0];
  [(WiFiUsageSession *)self setRapidLinkTransitionCount:0];
  [(WiFiUsageSession *)self setPrimaryInterfaceStateChangeCount:0];
  [(WiFiUsageSession *)self setApplicationStateChangedCount:0];
  [(WiFiUsageSession *)self setPowerStateChangedCount:0];
  [(WiFiUsageSession *)self setPowerToggleEventCount:0];
  [(WiFiUsageSession *)self setControlCenterStateChangedCount:0];
  [(WiFiUsageSession *)self setControlCenterToggleEventCount:0];
  [(WiFiUsageSession *)self setCellularFallbackStateChangedCount:0];
  [(WiFiUsageSession *)self setCellularOutrankingStateChangedCount:0];
  [(WiFiUsageSession *)self setSmartCoverStateChangedCount:0];
  [(WiFiUsageSession *)self setNeighborBssCount:0];
  [(WiFiUsageSession *)self setOtherBssCount:0];
  v4 = [WiFiUsageInterfaceStats statsForInterfaceName:self->_interfaceName];
  [(WiFiUsageSession *)self setIfStatsAtStart:v4];

  v5 = [WiFiUsageInterfaceStats statsForInterfaceName:self->_secondaryInterfaceName];
  [(WiFiUsageSession *)self setSecondaryIfStatsAtStart:v5];

  [(WiFiUsageSession *)self setActiveApplications:0];
  [(WiFiUsageSession *)self setTriggerDisconnectAlertedCount:0];
  [(WiFiUsageSession *)self setTriggerDisconnectConfirmedCount:0];
  [(WiFiUsageSession *)self setTriggerDisconnectExecutedCount:0];
  [(WiFiUsageSession *)self setIsInTDEval:0];
  self->_perClientScanCount[26] = 0;
  *&self->_perClientScanCount[24] = 0u;
  *&self->_perClientScanCount[22] = 0u;
  *&self->_perClientScanCount[20] = 0u;
  *&self->_perClientScanCount[18] = 0u;
  *&self->_perClientScanCount[16] = 0u;
  *&self->_perClientScanCount[14] = 0u;
  *&self->_perClientScanCount[12] = 0u;
  *&self->_perClientScanCount[10] = 0u;
  *&self->_perClientScanCount[8] = 0u;
  *&self->_perClientScanCount[6] = 0u;
  *&self->_perClientScanCount[4] = 0u;
  *&self->_perClientScanCount[2] = 0u;
  *self->_perClientScanCount = 0u;
  *self->_faultReasonCount = 0u;
  *&self->_faultReasonCount[2] = 0u;
  *&self->_faultReasonCount[4] = 0u;
  *&self->_faultReasonCount[6] = 0u;
  *&self->_faultReasonCount[8] = 0u;
  *&self->_faultReasonCount[10] = 0u;
  *&self->_faultReasonCount[12] = 0u;
  *&self->_faultReasonCount[14] = 0u;
  *&self->_faultReasonCount[16] = 0u;
  *&self->_faultReasonCount[18] = 0u;
  *&self->_faultReasonCount[20] = 0u;
  *&self->_faultReasonCount[22] = 0u;
  *&self->_faultReasonCount[24] = 0u;
  *&self->_faultReasonCount[26] = 0u;
  *&self->_faultReasonCount[28] = 0u;
  *&self->_faultReasonCount[30] = 0u;
  *&self->_faultReasonCount[32] = 0u;
  *&self->_faultReasonCount[34] = 0u;
  self->_joinReasonCount[14] = 0;
  *&self->_joinReasonCount[10] = 0u;
  *&self->_joinReasonCount[12] = 0u;
  *&self->_joinReasonCount[6] = 0u;
  *&self->_joinReasonCount[8] = 0u;
  *&self->_joinReasonCount[2] = 0u;
  *&self->_joinReasonCount[4] = 0u;
  *&self->_faultReasonCount[36] = 0u;
  *self->_joinReasonCount = 0u;
  disconnectReasonMap = self->_disconnectReasonMap;
  if (disconnectReasonMap)
  {
    [(NSMutableDictionary *)disconnectReasonMap removeAllObjects];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_disconnectReasonMap;
    self->_disconnectReasonMap = v7;
  }

  [(WiFiUsageSession *)self setIsSessionActive:1];
  [(WiFiUsageSession *)self setLastPowerBudgetChangedTime:date];
  [(WiFiUsageSession *)self setPowerBudgetMaxDuration:0.0];
  [(WiFiUsageSession *)self setPowerBudget90Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget80Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget70Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget60Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget50Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget40Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget30Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget20Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudget10Duration:0.0];
  [(WiFiUsageSession *)self setPowerBudgetMinDuration:0.0];
  [(WiFiUsageSession *)self setThermalIndexMaxDuration:0.0];
  [(WiFiUsageSession *)self setThermalIndex90Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex80Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex70Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex60Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex50Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex40Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex30Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex20Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndex10Duration:0.0];
  [(WiFiUsageSession *)self setThermalIndexMinDuration:0.0];
  [(WiFiUsageSession *)self setRoamReasonInitialAssociationCount:0];
  [(WiFiUsageSession *)self setRoamReasonLowRssiCount:0];
  [(WiFiUsageSession *)self setRoamReasonDeauthDisassocCount:0];
  [(WiFiUsageSession *)self setRoamReasonBeaconLostCount:0];
  [(WiFiUsageSession *)self setRoamReasonSteeredByApCount:0];
  [(WiFiUsageSession *)self setRoamReasonSteeredByBtmCount:0];
  [(WiFiUsageSession *)self setRoamReasonSteeredByCsaCount:0];
  [(WiFiUsageSession *)self setRoamReasonReassocRequestedCount:0];
  [(WiFiUsageSession *)self setRoamReasonHostTriggeredCount:0];
  [(WiFiUsageSession *)self setRoamReasonBetterCandidateCount:0];
  [(WiFiUsageSession *)self setRoamReasonBetterConditionCount:0];
  [(WiFiUsageSession *)self setRoamReasonMiscCount:0];
  [(WiFiUsageSession *)self setRoamStatusSucceededCount:0];
  [(WiFiUsageSession *)self setRoamStatusFailedCount:0];
  [(WiFiUsageSession *)self setRoamStatusNoCandidateCount:0];
  [(WiFiUsageSession *)self setRoamStatusNoQualifiedCandidateCount:0];
  [(WiFiUsageSession *)self setRoamStatusFailedNoScan:0];
  [(WiFiUsageSession *)self setRoamIsWNMScoreUsedCount:0];
  [(WiFiUsageSession *)self setRoamPingPongAboveThresholdCount:0];
  [(WiFiUsageSession *)self setRoamPingPongAboveThresholdCount:0];
  [(WiFiUsageSession *)self setRoamPingPongAboveThresholdCountLowRssiOnly:0];
  [(WiFiUsageSession *)self setRoamPingPongLowRssiAndReassocOnly:0];
  [(WiFiUsageSession *)self setRoamPingPongReassocOnly:0];
  [(WiFiUsageSession *)self setRoamsAfterSupprLifted:0];
  [(WiFiUsageSession *)self setIsRoamSuppressionEnabled:0];
  [(WiFiUsageSession *)self setLastRoamSuppressionToggled:0];
  [(WiFiUsageSession *)self setInRoamSuppressionEnabled:0.0];
  [(WiFiUsageSession *)self setInRoamSuppressionEnabledCount:0];
  [(WiFiUsageSession *)self setInRoamSuppressionWaitForRoamStart:0.0];
  [(WiFiUsageSession *)self setInRoamSuppressionWaitForRoamEnd:0.0];
  [(WiFiUsageSession *)self setMinCandidatesCount:0];
  [(WiFiUsageSession *)self setMaxCandidatesCount:0];
  [(WiFiUsageSession *)self setCurrentRSSIStrongestCount:0];
  [(NSMutableDictionary *)self->_roamNeighborsByBand removeAllObjects];
  [(NSMutableDictionary *)self->_roamCandidatesPerBandWhenSuccessful removeAllObjects];
  [(NSMutableDictionary *)self->_roamCandidatesPerBandWhenUnSuccessful removeAllObjects];
  *&self->_strongestRSSICountByBand.valueByBand[2] = 0u;
  *self->_strongestRSSICountByBand.valueByBand = 0u;
  *self->_strongestRSSIByBand.valueByBand = 0u;
  *&self->_strongestRSSIByBand.valueByBand[2] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][0] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][2] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[1][1] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][0] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][2] = 0u;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valid[2][2] = 0;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][0] = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][2] = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[1][1] = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][0] = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][2] = 0u;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valid[2][2] = 0;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valid[2][2] = 0;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][2] = 0u;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][0] = 0u;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[1][1] = 0u;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][2] = 0u;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][0] = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valid[2][2] = 0;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][0] = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][2] = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][2] = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[1][1] = 0u;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][0] = 0u;
  if (self->_sessionEndTime)
  {
    [date timeIntervalSinceDate:?];
    [(WiFiUsageSession *)self setSessionTimeSinceLastSession:?];
  }

  lqm = self->_lqm;
  if (lqm)
  {
    [(WiFiUsageSessionLQM *)lqm reset];
  }

  [(WiFiUsageSession *)self setSessionStartTime:date];
  [(WiFiUsageSession *)self setSessionEndTime:0];
  [(WiFiUsageSession *)self setDriverUnavailabilityCount:0];
  [(WiFiUsageSession *)self trackEventLatencies];
  [(WiFiUsageSession *)self setIsCompatibilityModeEnabledAtStart:self->_isCompatibilityModeEnabled];
  [(WiFiUsageSession *)self setLastCompatibilityModeChangedTime:date];
  [(WiFiUsageSession *)self setCompatibilityModeChangeCount:0];
  [(WiFiUsageSession *)self setInCompatibilityModeEnabledDuration:0.0];
  [(WiFiUsageSession *)self setNetworkDetailsAtEnd:0];
  [(WiFiUsageSession *)self setIpV4DetailsPrevSession:self->_ipV4Details];
  [(WiFiUsageSession *)self setIpV4Details:0];
  [(WiFiUsageSession *)self setIpV6DetailsPrevSession:self->_ipV6Details];
  [(WiFiUsageSession *)self setIpV6Details:0];
  [(WiFiUsageSession *)self setBandAtSessionStart:self->_currentBand];
  [(WiFiUsageSession *)self setIsAssociatedAtSessionStart:self->_isAssociated];
  [(WiFiUsageSession *)self setInCoexRealTimeAtSessionStart:self->_inCoexRealTime];
  [(WiFiUsageSession *)self setRssiAtSessionStart:0x7FFFFFFFFFFFFFFFLL];
  [(WiFiUsageSession *)self setCountRoamScan:0];
  [(WiFiUsageSession *)self setLastRoamScanFoundSSIDTransitionTarget:0];
  [(WiFiUsageSession *)self setCountSSIDTransitionTargetInLastRoamScan:0];
  [(WiFiUsageSession *)self setCountRoamScanThatFoundSSIDTransitionTarget:0];
  [(WiFiUsageSession *)self setLastRoamScanFoundSSIDTransitionPotentialCandidate:0];
  [(WiFiUsageSession *)self setCountSSIDTransitionPotentialCandidatesInLastRoamScan:0];
  [(WiFiUsageSession *)self setCountSSIDTransitionPotentialCandidatesInLastRoamScanNotInTransitionableSet:0];
  [(WiFiUsageSession *)self setCountRoamScanThatFoundSSIDTransitionPotentialCandidate:0];
  [(WiFiUsageSession *)self setLastRoamScanContainsRoamCandidateCount:0];
  [(WiFiUsageSession *)self setLastRoamScanUniqueChannelsCount:0];
  [(WiFiUsageSession *)self setLastRoamScanUniqueBandsCount:0];
  [(WiFiUsageSession *)self setLastSSIDdisable6eModeAtStart:0];
  [(WiFiUsageSession *)self setLastSSIDdisabled6eModeChangeCount:0];
  [(WiFiUsageSession *)self setLastSSIDIn6eModeOffDuration:0.0];
  disable6eMode = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
  [(WiFiUsageSession *)self setNetworkDisable6eModeAtStart:disable6eMode];

  disable6eMode2 = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
  if (disable6eMode2)
  {
    v12 = date;
  }

  else
  {
    v12 = 0;
  }

  [(WiFiUsageSession *)self setLastNetwork6eDisableModeChangedTime:v12];

  [(WiFiUsageSession *)self setInNetwork6eModeOffDuration:0.0];
  [(WiFiUsageSession *)self setNetwork6eDisabledModeChangeCount:0];
  [(WiFiUsageSession *)self setInPoorLinkSessionCount:0];
  [(WiFiUsageSession *)self setInPoorLinkSessionDuration:0.0];
  [(WiFiUsageSession *)self setTdAfterJoinAfterTDCount:0];
  [(WiFiUsageSession *)self setCurrent_subsequentTdAfterJoinAfterTDCount:0];
  [(WiFiUsageSession *)self setMin_subsequentTdAfterJoinAfterTDCount:0x7FFFFFFFFFFFFFFFLL];
  [(WiFiUsageSession *)self setMax_subsequentTdAfterJoinAfterTDCount:0];
  [(WiFiUsageSession *)self setTdSessionStartedByBadRSSICount:0];
  [(WiFiUsageSession *)self setTdSessionStartedByTDRecommendedCount:0];
  [(WiFiUsageSession *)self setTdSessionStartedBySymptomDNSFailureCount:0];
  [(WiFiUsageSession *)self setTdEvalEndedCount:0];
  [(WiFiUsageSession *)self setTdEvalCumulativeDuration:0.0];
  [(WiFiUsageSession *)self setTdEvalStartedCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedByBadRSSICount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsARPFailureCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsDNSFailCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsShortFlowCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsDataStallCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsDNSStallCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedBySymptomsDNSFailCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedByActiveProbingCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedByFGNetwAppChangeCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedByUserNotificationCount:0];
  [(WiFiUsageSession *)self setTdEvalStartedByCheckReassocCount:0];
  [(WiFiUsageSession *)self setLastUsbStatusChange:0];
  [(WiFiUsageSession *)self setUsbDeviceEventCount:0];
  [(WiFiUsageSession *)self setUsbInsertedDuration:0.0];
  [(WiFiUsageSession *)self setLastAWDLSequenceUpdate:0];
  [(WiFiUsageSession *)self setInAWDL_BestInfraScoreDuration:0.0];
  [(WiFiUsageSession *)self setInAWDL_BestP2PScoreDuration:0.0];
  [(WiFiUsageSession *)self setInAWDL_WorstInfraScoreDuration:0.0];
  [(WiFiUsageSession *)self setInAWDL_WorstP2PScoreDuration:0.0];
  [(WiFiUsageSession *)self setJoinLinkUpLatencyFromSessionStart:0.0];
  [(WiFiUsageSession *)self setLongestUnassociatedDuration:0.0];
  [(WiFiUsageSession *)self setAirplaneModeStateChangedCount:0];
  [(WiFiUsageSession *)self setMaxPhyMode:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)trackEventLatencies
{
  [(WiFiUsageSession *)self setDriverAvailabilityLatencyFromChipReset:0.0];
  [(WiFiUsageSession *)self setDriverAvailabilityLatencyFromTermination:0.0];
  [(WiFiUsageSession *)self setJoinScanLatencyFromDriverAvailability:0.0];
  [(WiFiUsageSession *)self setJoinStartedLatencyFromDriverAvailability:0.0];
  [(WiFiUsageSession *)self setJoinLinkUpLatencyFromDriverAvailability:0.0];
  [(WiFiUsageSession *)self setJoinIpConfigurationLatencyFromDriverAvailability:0.0];
  [(WiFiUsageSession *)self setJoinInterfaceRankingLatencyFromDriverAvailability:0.0];

  [(WiFiUsageSession *)self setLastDriverUnavailableReason:0];
}

- (WiFiUsageSession)initWithSessionType:(unint64_t)type andInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  capabilitiesCopy = capabilities;
  date = [MEMORY[0x277CBEAA8] date];
  if (nameCopy)
  {
    v22.receiver = self;
    v22.super_class = WiFiUsageSession;
    v11 = [(WiFiUsageSession *)&v22 init];
    [v11 setSessionInitTime:date];
    [v11 setSessionPid:getpid()];
    [v11 setType:type];
    [v11 setInterfaceName:nameCopy];
    [v11 setCapabilities:capabilitiesCopy];
    [v11 setSessionTimeSinceLastSession:-1.0];
    [v11 setIsSessionActive:0];
    [v11 setLastSystemWakeTime:date];
    [v11 setLastPowerBudget:-1];
    [v11 setLastThermalIndex:-1];
    [v11 setLastJoinReason:-1];
    [v11 setPrevJoinReason:-1];
    [v11 setSavedLastJoinReason:-1];
    [v11 setLastJoinFailure:-1];
    [v11 setSavedLastJoinFailure:-1];
    [v11 setLastDisconnectReason:-1];
    [v11 setPreviousDisconnectReason:-1];
    [v11 setSavedPreviousDisconnectReason:-1];
    [v11 setLastDisconnectSubreason:-1];
    [v11 setSmartCoverStateChangedCount:0];
    [v11 setNetworkDetailsAtEnd:0];
    [v11 setCurrentBssSession:0];
    [v11 setResponsivenessScore:0];
    *(v11 + 27) = 0;
    *(v11 + 200) = 0u;
    *(v11 + 184) = 0u;
    *(v11 + 168) = 0u;
    *(v11 + 152) = 0u;
    *(v11 + 136) = 0u;
    *(v11 + 120) = 0u;
    *(v11 + 104) = 0u;
    *(v11 + 88) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 40) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 8) = 0u;
    *(v11 + 14) = 0u;
    *(v11 + 15) = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 17) = 0u;
    *(v11 + 18) = 0u;
    *(v11 + 19) = 0u;
    *(v11 + 20) = 0u;
    *(v11 + 21) = 0u;
    *(v11 + 22) = 0u;
    *(v11 + 23) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 25) = 0u;
    *(v11 + 26) = 0u;
    *(v11 + 27) = 0u;
    *(v11 + 28) = 0u;
    *(v11 + 29) = 0u;
    *(v11 + 30) = 0u;
    *(v11 + 31) = 0u;
    *(v11 + 80) = 0;
    *(v11 + 38) = 0u;
    *(v11 + 39) = 0u;
    *(v11 + 36) = 0u;
    *(v11 + 37) = 0u;
    *(v11 + 34) = 0u;
    *(v11 + 35) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 33) = 0u;
    v12 = *(v11 + 1132);
    if (v12)
    {
      [v12 removeAllObjects];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = *(v11 + 1132);
      *(v11 + 1132) = v14;
    }

    [v11 setLastDriverUnavailableReason:0];
    [v11 setLastDriverTerminationTime:0];
    [v11 setLastChipResetTime:0];
    [v11 setDriverProcessLifespan:0.0];
    [v11 setDriverAvailabilityLifespan:0.0];
    [v11 setIsDriverAvailable:1];
    [v11 setDriverUnavailabilityCount:0];
    [v11 setLastDriverAvailableTime:date];
    [v11 trackEventLatencies];
    v16 = objc_opt_new();
    [v11 setRoamNeighborsByBand:v16];

    v17 = objc_opt_new();
    [v11 setRoamCandidatesPerBandWhenSuccessful:v17];

    v18 = objc_opt_new();
    [v11 setRoamCandidatesPerBandWhenUnSuccessful:v18];

    v19 = objc_opt_new();
    [v11 setPrevNetworkNames:v19];

    [v11 setLastCoexRealTimeOn:0];
    [v11 setLastCoexRealTimeOff:0];
    [v11 setConsecutiveJoinFailureCount:0];
    v11[9067] = 0;
    self = v11;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[WiFiUsageSession initWithSessionType:andInterfaceName:andCapabilities:]";
      v25 = 2112;
      v26 = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Cannot create Session (invalid interfaceName: %@)", buf, 0x16u);
    }

    selfCopy = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)dealloc
{
  if (self->_osStateHandle)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = WiFiUsageSession;
  [(WiFiUsageSession *)&v3 dealloc];
}

- (os_state_data_s)_generateState
{
  v33 = *MEMORY[0x277D85DE8];
  type = self->_type;
  if (type != 4 && type != 1)
  {
    v18 = 0;
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    sessionName = [(WiFiUsageSession *)self sessionName];
    *buf = 136315394;
    v26 = "[WiFiUsageSession _generateState]";
    v27 = 2112;
    v28 = sessionName;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@ BEGIN", buf, 0x16u);
  }

  if (self->_isSessionActive)
  {
    v6 = MEMORY[0x277CCACA8];
    sessionName2 = [(WiFiUsageSession *)self sessionName];
    v8 = [v6 stringWithFormat:@"%s %@", "-[WiFiUsageSession _generateState]", sessionName2];

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"Avg", @"Min", @"Max", @"Count", @"Duration", 0}];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = [(WiFiUsageSession *)self sessionSummary:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __34__WiFiUsageSession__generateState__block_invoke;
    v22[3] = &unk_2789C7E80;
    v23 = v9;
    v12 = dictionary;
    v24 = v12;
    v13 = v9;
    [v11 enumerateKeysAndObjectsUsingBlock:v22];

    if (v12 && [v12 count])
    {
      v14 = [MEMORY[0x277CCAC58] dataWithPropertyList:v12 format:100 options:0 error:0];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 length];
        v17 = malloc_type_calloc(1uLL, v16 + 200, 0x1000040BEF03554uLL);
        v18 = v17;
        if (v17)
        {
          v17->var0 = 1;
          v17->var1.var1 = v16;
          [v8 UTF8String];
          __strlcpy_chk();
          memcpy(v18->var4, [v15 bytes], v16);
        }

        goto LABEL_17;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v8 = 0;
    v12 = 0;
  }

  v18 = 0;
  v16 = 0;
LABEL_17:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = "success";
    *buf = 136315906;
    v26 = "[WiFiUsageSession _generateState]";
    v27 = 2080;
    if (!v18)
    {
      v19 = "failed";
    }

    v28 = v19;
    v29 = 2048;
    v30 = v16;
    v31 = 1024;
    v32 = 0x8000;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: END (%s), bytes: %zu (limit: %d)", buf, 0x26u);
  }

LABEL_22:
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

void __34__WiFiUsageSession__generateState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isEqualToNumber:&unk_2848BA328])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([v5 rangeOfString:*(*(&v13 + 1) + 8 * v11) options:{1, v13}] != 0x7FFFFFFFFFFFFFFFLL)
          {

            goto LABEL_13;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  [*(a1 + 40) setObject:v6 forKeyedSubscript:{v5, v13}];
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setCompletionHandler:(id)handler withContext:(id)context onQueue:(id)queue
{
  queueCopy = queue;
  contextCopy = context;
  [(WiFiUsageSession *)self setCompletionHandler:handler];
  [(WiFiUsageSession *)self setCompletionContext:contextCopy];

  [(WiFiUsageSession *)self setCompletionQueue:queueCopy];
  objc_initWeak(&location, self);
  objc_copyWeak(&v11, &location);
  v10 = os_state_add_handler();

  self->_osStateHandle = v10;
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __61__WiFiUsageSession_setCompletionHandler_withContext_onQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _generateState];

  return v2;
}

- (void)setLastDisconnectReason:(int64_t)reason
{
  v5 = [WiFiUsageSession disconnectReasonString:?];
  v6 = v5;
  self->_lastDisconnectReason = reason;
  if (v5)
  {
    v14 = v5;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"WiFiDisconnectReason%@", v5];
    v8 = [(NSMutableDictionary *)self->_disconnectReasonMap objectForKeyedSubscript:v7];

    disconnectReasonMap = self->_disconnectReasonMap;
    if (v8)
    {
      v10 = [(NSMutableDictionary *)disconnectReasonMap objectForKeyedSubscript:v7];
      integerValue = [v10 integerValue];

      v12 = self->_disconnectReasonMap;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
      [(NSMutableDictionary *)v12 setObject:v13 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)disconnectReasonMap setObject:&unk_2848BA340 forKey:v7];
    }

    v6 = v14;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)systemWakeStateDidChange:(BOOL)change wokenByWiFi:(BOOL)fi
{
  fiCopy = fi;
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v11 = date;
  if (changeCopy)
  {
    ++self->_systemWakeStateChangedCount;
    if (fiCopy)
    {
      ++self->_systemWokenByWiFiCount;
    }

    [(WiFiUsageSession *)self setLastSystemWakeTime:date];
    lastSystemSleepTime = self->_lastSystemSleepTime;
    if (lastSystemSleepTime)
    {
      if (self->_lastLinkStateChangedTime)
      {
        [(NSDate *)v11 timeIntervalSinceDate:?];
        lastSystemSleepTime = 0;
        self->_associatedSleepDuration = v9 + self->_associatedSleepDuration;
      }

      else
      {
        lastSystemSleepTime = 0;
      }
    }
  }

  else
  {
    lastSystemSleepTime = date;
    if (self->_lastSystemWakeTime)
    {
      [(NSDate *)date timeIntervalSinceDate:self->_lastSystemWakeTime];
      self->_systemAwakeDuration = v10 + self->_systemAwakeDuration;
      [(WiFiUsageSession *)self setLastSystemWakeTime:v11];
      lastSystemSleepTime = v11;
    }
  }

  [(WiFiUsageSession *)self setLastSystemSleepTime:lastSystemSleepTime];
}

- (void)lockStateDidChange:(BOOL)change
{
  if (change)
  {
    ++self->_lockStateChangedCount;
  }

  self->_isUnlocked = !change;
}

- (void)displayStateDidChange:(BOOL)change
{
  if (change)
  {
    ++self->_displayStateChangedCount;
  }

  self->_isDisplayOn = change;
}

- (void)motionStateDidChange:(id)change
{
  v4 = MEMORY[0x277CBEAA8];
  changeCopy = change;
  date = [v4 date];
  v6 = [changeCopy isEqualToString:@"Stationary"];
  v7 = [changeCopy containsString:@"Driving"];
  v8 = [changeCopy isEqualToString:@"Walking"];

  if (v6)
  {
    if (self->_inMotionStartedTime)
    {
      [date timeIntervalSinceDate:?];
      self->_inMotionDuration = v9 + self->_inMotionDuration;
      [(WiFiUsageSession *)self setInMotionStartedTime:0];
    }

    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [(WiFiUsageSession *)self setInMotionStartedTime:date];
    ++self->_inMotionEventCount;
    if (v7)
    {
LABEL_5:
      [(WiFiUsageSession *)self setInVehicleEntryTime:date];
      ++self->_inVehicleEventCount;
      goto LABEL_9;
    }
  }

  if (self->_inVehicleEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inVehicleDuration = v10 + self->_inVehicleDuration;
    [(WiFiUsageSession *)self setInVehicleEntryTime:0];
  }

LABEL_9:
  if (v8)
  {
    [(WiFiUsageSession *)self setInWalkingEntryTime:date];
    ++self->_inWalkingEventCount;
  }

  else if (self->_inWalkingEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inWalkingDuration = v11 + self->_inWalkingDuration;
    [(WiFiUsageSession *)self setInWalkingEntryTime:0];
  }

  [(WiFiUsageBssSession *)self->_currentBssSession motionStateDidChange:v6 ^ 1u andVehicularState:v7];
}

- (void)mediaStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  if (changeCopy)
  {
    v8 = date;
    date = [(WiFiUsageSession *)self setMediaStartedTime:date];
    v6 = v8;
    ++self->_mediaPlaybackEventCount;
  }

  else if (self->_mediaStartedTime)
  {
    v9 = date;
    [date timeIntervalSinceDate:?];
    self->_mediaPlaybackDuration = v7 + self->_mediaPlaybackDuration;
    date = [(WiFiUsageSession *)self setMediaStartedTime:0];
    v6 = v9;
  }

  MEMORY[0x2821F96F8](date, v6);
}

- (void)chargingStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  if (changeCopy)
  {
    v8 = date;
    date = [(WiFiUsageSession *)self setChargingStartedTime:date];
    v6 = v8;
    ++self->_chargingEventCount;
  }

  else if (self->_chargingStartedTime)
  {
    v9 = date;
    [date timeIntervalSinceDate:?];
    self->_chargingDuration = v7 + self->_chargingDuration;
    date = [(WiFiUsageSession *)self setChargingStartedTime:0];
    v6 = v9;
  }

  MEMORY[0x2821F96F8](date, v6);
}

- (void)companionStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  if (changeCopy)
  {
    v8 = date;
    date = [(WiFiUsageSession *)self setCompanionConnectionTime:date];
    v6 = v8;
    ++self->_companionConnectionStateChangedCount;
  }

  else if (self->_companionConnectionTime)
  {
    v9 = date;
    [date timeIntervalSinceDate:?];
    self->_companionConnectedDuration = v7 + self->_companionConnectedDuration;
    date = [(WiFiUsageSession *)self setCompanionConnectionTime:0];
    v6 = v9;
  }

  MEMORY[0x2821F96F8](date, v6);
}

- (void)updateWowState:(BOOL)state lpasState:(BOOL)lpasState lowPowerState:(BOOL)powerState batterySaverState:(BOOL)saverState
{
  saverStateCopy = saverState;
  powerStateCopy = powerState;
  lpasStateCopy = lpasState;
  stateCopy = state;
  date = [MEMORY[0x277CBEAA8] date];
  wowStateEntryTime = self->_wowStateEntryTime;
  if (stateCopy)
  {
    if (!wowStateEntryTime)
    {
      [(WiFiUsageSession *)self setWowStateEntryTime:date];
      ++self->_wowStateChangedCount;
    }
  }

  else if (wowStateEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inWowStateDuration = v12 + self->_inWowStateDuration;
    [(WiFiUsageSession *)self setWowStateEntryTime:0];
  }

  lpasStateEntryTime = self->_lpasStateEntryTime;
  if (lpasStateCopy)
  {
    if (!lpasStateEntryTime)
    {
      [(WiFiUsageSession *)self setLpasStateEntryTime:date];
      ++self->_lpasStateChangedCount;
    }
  }

  else if (lpasStateEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inLpasStateDuration = v14 + self->_inLpasStateDuration;
    [(WiFiUsageSession *)self setLpasStateEntryTime:0];
  }

  lowPowerStateEntryTime = self->_lowPowerStateEntryTime;
  if (powerStateCopy)
  {
    if (!lowPowerStateEntryTime)
    {
      [(WiFiUsageSession *)self setLowPowerStateEntryTime:date];
      ++self->_lowPowerStateChangedCount;
    }
  }

  else if (lowPowerStateEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inLowPowerStateDuration = v16 + self->_inLowPowerStateDuration;
    [(WiFiUsageSession *)self setLowPowerStateEntryTime:0];
  }

  batterySaverStateEntryTime = self->_batterySaverStateEntryTime;
  if (saverStateCopy)
  {
    if (!batterySaverStateEntryTime)
    {
      [(WiFiUsageSession *)self setBatterySaverStateEntryTime:date];
      ++self->_batterySaverStateChangedCount;
    }
  }

  else if (batterySaverStateEntryTime)
  {
    [date timeIntervalSinceDate:?];
    self->_inBatterySaverStateDuration = v18 + self->_inBatterySaverStateDuration;
    [(WiFiUsageSession *)self setBatterySaverStateEntryTime:0];
  }
}

- (void)applicationStateDidChange:(id)change withAttributes:(id)attributes
{
  v6 = &self->_disconnectReasonCount[928];
  changeCopy = change;
  attributesCopy = attributes;
  if (changeCopy && (v8 = [changeCopy isEqualToString:@"com.apple.springboard"], v9 = changeCopy, (v8 & 1) == 0))
  {
    ++self->_applicationStateChangedCount;
    activeApplications = self->_activeApplications;
    if (!activeApplications)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v13 = self->_activeApplications;
      self->_activeApplications = v12;

      v9 = changeCopy;
      activeApplications = self->_activeApplications;
    }

    [(NSMutableSet *)activeApplications addObject:v9];
    v10 = 0;
  }

  else
  {
    [(WiFiUsageSession *)self setActiveApplications:0];
    v10 = 1;
  }

  *(v6 + 878) = v10;
  if (*(v6 + 875) == 1)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = [MEMORY[0x277CCAB88] notificationWithName:@"applicationStateDidChange" object:0];
    [defaultCenter postNotification:v15];
  }
}

- (void)updateBandUsageFor:(int)for With:(id)with
{
  lastBssChangedTime = with;
  v7 = lastBssChangedTime;
  if (for <= 2)
  {
    lastBssChangedTime = self->_lastBssChangedTime;
    if (lastBssChangedTime)
    {
      v15 = v7;
      [(NSDate *)lastBssChangedTime timeIntervalSinceDate:self->_sessionStartTime];
      v8 = 9328;
      if (v9 > 0.0)
      {
        v8 = 9528;
      }

      v10 = *(&self->super.isa + v8);
      p_bandUsageDuration = &self->_bandUsageDuration;
      valid = self->_bandUsageDuration.valid;
      if (!self->_bandUsageDuration.valid[for])
      {
        p_bandUsageDuration->valueByBand[for] = 0.0;
      }

      v13 = v10;
      [(NSDate *)v15 timeIntervalSinceDate:v13];
      p_bandUsageDuration->valueByBand[for] = v14 + p_bandUsageDuration->valueByBand[for];
      valid[for] = 1;

      v7 = v15;
    }
  }

  MEMORY[0x2821F96F8](lastBssChangedTime, v7);
}

- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details
{
  detailsCopy = details;
  date = [MEMORY[0x277CBEAA8] date];
  if (change)
  {
    if ([(WiFiUsageSession *)self useSavedJoinStats])
    {
      lastJoinReason = self->_lastJoinReason;
      if (lastJoinReason != -1)
      {
        v14 = *&self->_joinReasonCount[10];
        *&self->_savedJoinReasonCount[8] = *&self->_joinReasonCount[8];
        *&self->_savedJoinReasonCount[10] = v14;
        *&self->_savedJoinReasonCount[12] = *&self->_joinReasonCount[12];
        self->_savedJoinReasonCount[14] = self->_joinReasonCount[14];
        v15 = *&self->_joinReasonCount[2];
        *self->_savedJoinReasonCount = *self->_joinReasonCount;
        *&self->_savedJoinReasonCount[2] = v15;
        v16 = *&self->_joinReasonCount[6];
        *&self->_savedJoinReasonCount[4] = *&self->_joinReasonCount[4];
        *&self->_savedJoinReasonCount[6] = v16;
        self->_savedJoinStateChangedCount = self->_joinStateChangedCount;
        self->_savedPrevJoinReason = self->_prevJoinReason;
        self->_savedTimeSincePrevJoin = self->_timeSincePrevJoin;
        self->_savedInCoexRealTimeAtLastJoin = self->_inCoexRealTimeAtLastJoin;
        self->_savedLastJoinReason = lastJoinReason;
        self->_savedPreviousDisconnectReason = self->_previousDisconnectReason;
        self->_savedLastJoinFailure = self->_lastJoinFailure;
      }
    }

    if (!self->_lastJoinFailure)
    {
      [(WiFiUsageSession *)self setConsecutiveJoinFailureCount:0];
    }

    ++self->_joinStateChangedCount;
    ++self->_joinReasonCount[reason];
    [(WiFiUsageSession *)self setPrevJoinReason:self->_lastJoinReason];
    [date timeIntervalSinceDate:self->_lastJoinTime];
    [(WiFiUsageSession *)self setTimeSincePrevJoin:?];
    [(WiFiUsageSession *)self setLastJoinTime:date];
    [(WiFiUsageSession *)self setInCoexRealTimeAtLastJoin:self->_inCoexRealTime];
    [(WiFiUsageSession *)self setLastJoinReason:reason];
    [(WiFiUsageSession *)self setPreviousDisconnectReason:self->_lastDisconnectReason];
    [(WiFiUsageSession *)self setLastJoinFailure:0];
    if (self->_joinStartedLatencyFromDriverAvailability == 0.0 && self->_lastDriverAvailableTime)
    {
      [date timeIntervalSinceDate:?];
      [(WiFiUsageSession *)self setJoinStartedLatencyFromDriverAvailability:?];
    }
  }

  else
  {
    [(WiFiUsageSession *)self setPreviousDisconnectReason:self->_lastDisconnectReason];
    [(WiFiUsageSession *)self setLastDisconnectReason:disconnectReason];
    [(WiFiUsageSession *)self setLastJoinFailure:failure];
    if ([(WiFiUsageSession *)self useSavedJoinStats]&& self->_lastJoinReason != -1)
    {
      self->_savedPreviousDisconnectReason = self->_previousDisconnectReason;
      self->_savedLastJoinFailure = self->_lastJoinFailure;
    }

    if (failure)
    {
      ++self->_consecutiveJoinFailureCount;
    }
  }

  if (self->_rssiAtSessionStart == 0x7FFFFFFFFFFFFFFFLL)
  {
    connectedBss = [detailsCopy connectedBss];
    if ([connectedBss rssi] != 0x7FFFFFFFFFFFFFFFLL)
    {
      connectedBss2 = [detailsCopy connectedBss];
      rssi = [connectedBss2 rssi];

      if (!rssi)
      {
        goto LABEL_20;
      }

      connectedBss = [detailsCopy connectedBss];
      self->_rssiAtSessionStart = [connectedBss rssi];
    }
  }

LABEL_20:
}

- (void)linkStateDidChange:(BOOL)change isInvoluntary:(BOOL)involuntary linkChangeReason:(int64_t)reason linkChangeSubreason:(int64_t)subreason withNetworkDetails:(id)details
{
  reasonCopy = reason;
  involuntaryCopy = involuntary;
  changeCopy = change;
  v81 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  date = [MEMORY[0x277CBEAA8] date];
  originBssDetails = [(WiFiUsageBssSession *)self->_currentBssSession originBssDetails];
  bssid = [originBssDetails bssid];

  connectedBss = [detailsCopy connectedBss];
  bssid2 = [connectedBss bssid];

  connectedBss2 = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
  band = [connectedBss2 band];

  connectedBss3 = [detailsCopy connectedBss];
  self->_currentBand = [connectedBss3 band];

  connectedBss4 = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
  channel = [connectedBss4 channel];

  connectedBss5 = [detailsCopy connectedBss];
  channel2 = [connectedBss5 channel];

  connectedBss6 = [detailsCopy connectedBss];
  v60 = 0;
  v21 = [WiFiUsageAccessPointProfile profileForBSSID:bssid2 withError:&v60];
  v22 = v60;
  [connectedBss6 setApProfile:v21];

  connectedBss7 = [detailsCopy connectedBss];
  v57 = v22;
  [connectedBss7 setApProfileError:v22];

  v58 = bssid2;
  v59 = bssid;
  v24 = 1;
  if ([bssid isEqual:bssid2] && channel == channel2)
  {
    v24 = band != self->_currentBand;
  }

  v25 = date;
  if (changeCopy)
  {
    if (!self->_isAssociated)
    {
      [date timeIntervalSinceDate:self->_sessionStartTime];
      [(WiFiUsageSession *)self setJoinLinkUpLatencyFromSessionStart:?];
    }

    self->_isAssociated = 1;
    networkDetails = self->_networkDetails;
    if (networkDetails && (-[WiFiUsageNetworkDetails networkName](networkDetails, "networkName"), v27 = objc_claimAutoreleasedReturnValue(), [detailsCopy networkName], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "isEqualToString:", v28), v28, v27, (v29 & 1) == 0))
    {
      ++self->_networkChangedCount;
      if ([(NSMutableArray *)self->_prevNetworkNames count]&& [(NSMutableArray *)self->_prevNetworkNames count]>= 2)
      {
        [(NSMutableArray *)self->_prevNetworkNames removeObjectAtIndex:0];
      }

      networkName = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];

      if (!networkName)
      {
        goto LABEL_36;
      }

      prevNetworkNames = self->_prevNetworkNames;
      networkName2 = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];
      [(NSMutableArray *)prevNetworkNames addObject:networkName2];
    }

    else
    {
      if (v59 && (!v24 || !self->_lastBssChangedTime || !self->_networkDetails))
      {
        goto LABEL_36;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        sessionName = [(WiFiUsageSession *)self sessionName];
        v31 = [WiFiUsagePrivacyFilter bandAsString:band];
        v32 = [WiFiUsagePrivacyFilter bandAsString:self->_currentBand];
        *buf = 136317442;
        v62 = "[WiFiUsageSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]";
        v63 = 2112;
        v64 = sessionName;
        v65 = 2160;
        v66 = 1752392040;
        v67 = 2112;
        v68 = v59;
        v69 = 1024;
        v70 = channel;
        v71 = 2112;
        v72 = v31;
        v73 = 2160;
        v74 = 1752392040;
        v75 = 2112;
        v76 = v58;
        v77 = 1024;
        v78 = channel2;
        v79 = 2112;
        v80 = v32;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@: roamed from BSSID %{mask.hash}@ on channel %d(%@Ghz) to BSSID %{mask.hash}@ on channel %d(%@Ghz)", buf, 0x5Eu);
      }

      if ([(WiFiUsageSession *)self isSessionActive]&& self->_lastBssChangedTime)
      {
        [(WiFiUsageSession *)self updateBandUsageFor:band With:v25];
      }

      [(WiFiUsageSession *)self setLastBssChangedTime:v25];
      currentBssSession = self->_currentBssSession;
      networkName2 = [detailsCopy bssEnvironment];
      connectedBss8 = [detailsCopy connectedBss];
      [(WiFiUsageBssSession *)currentBssSession bssDidChange:networkName2 withDetails:connectedBss8];
    }

LABEL_36:
    if (detailsCopy && !self->_currentBssSession && self->_type == 4)
    {
      v42 = [WiFiUsageBssSession alloc];
      interfaceName = self->_interfaceName;
      bssEnvironment = [detailsCopy bssEnvironment];
      connectedBss9 = [detailsCopy connectedBss];
      v46 = [(WiFiUsageBssSession *)v42 initWithInterfaceName:interfaceName bssEnvironment:bssEnvironment andBssDetails:connectedBss9 andNetworkDetails:detailsCopy];
      [(WiFiUsageSession *)self setCurrentBssSession:v46];
    }

    ++self->_linkStateChangedCount;
    if (self->_lastLinkStateChangedTime)
    {
      [v25 timeIntervalSinceDate:?];
      if (v47 > self->_longestUnassociatedDuration)
      {
        self->_longestUnassociatedDuration = v47;
      }
    }

    if (self->_lastUnexpectedLinkDownTime)
    {
      [v25 timeIntervalSinceDate:?];
      if (v48 < 20.0)
      {
        ++self->_rapidLinkTransitionCount;
      }
    }

    [(WiFiUsageSession *)self setLastUnexpectedLinkDownTime:0, reasonCopy];
    if (!self->_lastLinkStateChangedTime)
    {
      [(WiFiUsageSession *)self setLastLinkStateChangedTime:v25];
    }

    if (!self->_lastBssChangedTime)
    {
      [(WiFiUsageSession *)self setLastBssChangedTime:v25];
    }

    if (self->_joinLinkUpLatencyFromDriverAvailability == 0.0 && self->_lastDriverAvailableTime)
    {
      [v25 timeIntervalSinceDate:?];
      [(WiFiUsageSession *)self setJoinLinkUpLatencyFromDriverAvailability:?];
    }

    connectedBss10 = [detailsCopy connectedBss];
    v50 = +[WiFiUsageLQMTransformations maxPhyModeFrom:](WiFiUsageLQMTransformations, "maxPhyModeFrom:", [connectedBss10 phyMode]);

    if (v50 > self->_maxPhyMode)
    {
      self->_maxPhyMode = v50;
    }

    goto LABEL_55;
  }

  self->_isAssociated = 0;
  [(WiFiUsageSession *)self setLastDisconnectReason:reasonCopy];
  [(WiFiUsageSession *)self setLastDisconnectSubreason:subreason];
  if (involuntaryCopy)
  {
    v36 = date;
  }

  else
  {
    v36 = 0;
  }

  [(WiFiUsageSession *)self setLastUnexpectedLinkDownTime:v36, reasonCopy];
  [(WiFiUsageSession *)self tallyAssociatedDuration:date];
  if (self->_lastBssChangedTime)
  {
    v37 = self->_networkDetails;
    if (v37)
    {
      connectedBss11 = [(WiFiUsageNetworkDetails *)v37 connectedBss];
      -[WiFiUsageSession updateBandUsageFor:With:](self, "updateBandUsageFor:With:", [connectedBss11 band], date);
    }

    [(WiFiUsageSession *)self setLastBssChangedTime:0];
  }

  v39 = self->_currentBssSession;
  if (v39)
  {
    [(WiFiUsageBssSession *)v39 bssDidChange:0 withDetails:0];
  }

  if (self->_lastAWDLSequenceUpdate)
  {
    [(WiFiUsageSession *)self tallyInfraScoreDuration:0 until:date];
    [(WiFiUsageSession *)self tallyP2PScoreDuration:date until:self->_inAWDL_lastP2PScore];
    objc_storeStrong(&self->_lastAWDLSequenceUpdate, date);
  }

LABEL_55:
  -[WiFiUsageSession setIsInstantHotspot:](self, "setIsInstantHotspot:", [detailsCopy isInstantHotspot]);
  -[WiFiUsageSession setIsAutoHotspot:](self, "setIsAutoHotspot:", [detailsCopy isAutoHotspot]);
  [(WiFiUsageSession *)self updateAssociatedNetworkDetails:detailsCopy];

  v51 = *MEMORY[0x277D85DE8];
}

- (void)linkQualityDidChange:(id)change
{
  changeCopy = change;
  if ([(WiFiUsageSession *)self isSessionActive])
  {
    lqm = self->_lqm;
    if (lqm)
    {
      [(WiFiUsageSessionLQM *)lqm updateLinkQuality:changeCopy forSession:self->_type];
    }

    else
    {
      v5 = [[WiFiUsageSessionLQM alloc] initWithLQMSample:changeCopy forInterface:self->_interfaceName];
      v6 = self->_lqm;
      self->_lqm = v5;
    }

    if (self->_rssiAtSessionStart == 0x7FFFFFFFFFFFFFFFLL)
    {
      rssi = 1;
    }

    else
    {
      rssi = [changeCopy rssi];
    }

    self->_rssiAtSessionStart = rssi;
    [(WiFiUsageBssSession *)self->_currentBssSession linkQualityDidChange:changeCopy];
  }
}

- (void)updateApProfile:(id)profile
{
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v5 = profileCopy;
  if (self->_networkDetails)
  {
    bssid = [profileCopy bssid];
    connectedBss = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
    bssid2 = [connectedBss bssid];
    v9 = [WiFiUsagePrivacyFilter reformatMACAddress:bssid2];
    v10 = [bssid isEqualToString:v9];

    if (v10)
    {
      connectedBss2 = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
      apProfile = [v5 apProfile];
      [connectedBss2 setApProfile:apProfile];

      connectedBss3 = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
      [connectedBss3 setHasColocatedMLOs:{objc_msgSend(v5, "hasColocatedMLOs")}];
LABEL_6:

      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      connectedBss3 = [(WiFiUsageSession *)self sessionName];
      v15 = 136315394;
      v16 = "[WiFiUsageSession updateApProfile:]";
      v17 = 2112;
      v18 = connectedBss3;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - mismatched BSSID between beaconData and connectedBss - not updating session %@", &v15, 0x16u);
      goto LABEL_6;
    }
  }

LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)powerBudgetDidChange:(int64_t)change andThermalIndex:(int64_t)index
{
  date = [MEMORY[0x277CBEAA8] date];
  lastPowerBudget = self->_lastPowerBudget;
  v14 = date;
  if (lastPowerBudget <= 99)
  {
    if (lastPowerBudget <= 89)
    {
      if (lastPowerBudget <= 79)
      {
        if (lastPowerBudget <= 69)
        {
          if (lastPowerBudget <= 59)
          {
            if (lastPowerBudget <= 49)
            {
              if (lastPowerBudget <= 39)
              {
                if (lastPowerBudget <= 29)
                {
                  if (lastPowerBudget <= 19)
                  {
                    if (lastPowerBudget <= 9)
                    {
                      if (lastPowerBudget < 0)
                      {
                        goto LABEL_24;
                      }

                      v9 = 10184;
                    }

                    else
                    {
                      v9 = 10176;
                    }
                  }

                  else
                  {
                    v9 = 10168;
                  }
                }

                else
                {
                  v9 = 10160;
                }
              }

              else
              {
                v9 = 10152;
              }
            }

            else
            {
              v9 = 10144;
            }
          }

          else
          {
            v9 = 10136;
          }
        }

        else
        {
          v9 = 10128;
        }
      }

      else
      {
        v9 = 10120;
      }
    }

    else
    {
      v9 = 10112;
    }
  }

  else
  {
    v9 = 10104;
  }

  [date timeIntervalSinceDate:self->_lastPowerBudgetChangedTime];
  date = v14;
  *(&self->super.isa + v9) = v10 + *(&self->super.isa + v9);
LABEL_24:
  lastThermalIndex = self->_lastThermalIndex;
  if (lastThermalIndex <= 99)
  {
    if (lastThermalIndex <= 89)
    {
      if (lastThermalIndex <= 79)
      {
        if (lastThermalIndex <= 69)
        {
          if (lastThermalIndex <= 59)
          {
            if (lastThermalIndex <= 49)
            {
              if (lastThermalIndex <= 39)
              {
                if (lastThermalIndex <= 29)
                {
                  if (lastThermalIndex <= 19)
                  {
                    if (lastThermalIndex <= 9)
                    {
                      if (lastThermalIndex < 0)
                      {
                        goto LABEL_47;
                      }

                      v12 = 10272;
                      date = v14;
                    }

                    else
                    {
                      v12 = 10264;
                    }
                  }

                  else
                  {
                    v12 = 10256;
                  }
                }

                else
                {
                  v12 = 10248;
                }
              }

              else
              {
                v12 = 10240;
              }
            }

            else
            {
              v12 = 10232;
            }
          }

          else
          {
            v12 = 10224;
          }
        }

        else
        {
          v12 = 10216;
        }
      }

      else
      {
        v12 = 10208;
      }
    }

    else
    {
      v12 = 10200;
    }
  }

  else
  {
    v12 = 10192;
  }

  [date timeIntervalSinceDate:self->_lastPowerBudgetChangedTime];
  *(&self->super.isa + v12) = v13 + *(&self->super.isa + v12);
LABEL_47:
  [(WiFiUsageSession *)self setLastPowerBudget:change];
  [(WiFiUsageSession *)self setLastThermalIndex:index];
  [(WiFiUsageSession *)self setLastPowerBudgetChangedTime:v14];
}

- (void)roamingStateDidChange:(BOOL)change reason:(unint64_t)reason andStatus:(unint64_t)status andLatency:(unint64_t)latency andRoamData:(id)data andPingPongStats:(id)stats
{
  changeCopy = change;
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  statsCopy = stats;
  date = [MEMORY[0x277CBEAA8] date];
  v16 = date;
  if (changeCopy)
  {
    [(WiFiUsageSession *)self setRoamingActiveTime:date];
    ++self->_inRoamEventCount;
    if (self->_lastRoamSuppressionToggled)
    {
      if (!self->_isRoamSuppressionEnabled && !self->_roamsAfterSupprLifted)
      {
        [v16 timeIntervalSinceDate:?];
        self->_inRoamSuppressionWaitForRoamStart = v17 + self->_inRoamSuppressionWaitForRoamStart;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          inRoamSuppressionWaitForRoamStart = self->_inRoamSuppressionWaitForRoamStart;
          v28 = 136315394;
          v29 = "[WiFiUsageSession roamingStateDidChange:reason:andStatus:andLatency:andRoamData:andPingPongStats:]";
          v30 = 2048;
          v31 = inRoamSuppressionWaitForRoamStart;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - incremented inRoamSuppressionWaitForRoamStart:%fs", &v28, 0x16u);
        }
      }
    }

    switch(reason)
    {
      case 0xE0820C00uLL:
        ++self->_roamReasonInitialAssociationCount;
        break;
      case 0xE0820C01uLL:
        ++self->_roamReasonLowRssiCount;
        break;
      case 0xE0820C02uLL:
      case 0xE0820C03uLL:
        ++self->_roamReasonDeauthDisassocCount;
        break;
      case 0xE0820C04uLL:
        ++self->_roamReasonBeaconLostCount;
        break;
      case 0xE0820C06uLL:
        ++self->_roamReasonSteeredByApCount;
        break;
      case 0xE0820C08uLL:
        ++self->_roamReasonBetterCandidateCount;
        break;
      case 0xE0820C09uLL:
      case 0xE0820C0AuLL:
      case 0xE0820C0CuLL:
      case 0xE0820C0FuLL:
        ++self->_roamReasonBetterConditionCount;
        break;
      case 0xE0820C0BuLL:
        ++self->_roamReasonSteeredByBtmCount;
        break;
      case 0xE0820C0EuLL:
        ++self->_roamReasonSteeredByCsaCount;
        break;
      case 0xE0820C13uLL:
        ++self->_roamReasonReassocRequestedCount;
        break;
      case 0xE0820C15uLL:
        ++self->_roamReasonHostTriggeredCount;
        break;
      default:
        ++self->_roamReasonMiscCount;
        break;
    }

    goto LABEL_25;
  }

  if (!self->_roamingActiveTime)
  {
    goto LABEL_25;
  }

  [date timeIntervalSinceDate:?];
  self->_inRoamDuration = v19 + self->_inRoamDuration;
  [(WiFiUsageSession *)self setRoamingActiveTime:0];
  if (self->_lastRoamSuppressionToggled)
  {
    if (!self->_isRoamSuppressionEnabled && !self->_roamsAfterSupprLifted)
    {
      self->_roamsAfterSupprLifted = 1;
      [v16 timeIntervalSinceDate:?];
      self->_inRoamSuppressionWaitForRoamEnd = v20 + self->_inRoamSuppressionWaitForRoamEnd;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        roamsAfterSupprLifted = self->_roamsAfterSupprLifted;
        inRoamSuppressionWaitForRoamEnd = self->_inRoamSuppressionWaitForRoamEnd;
        v28 = 136315650;
        v29 = "[WiFiUsageSession roamingStateDidChange:reason:andStatus:andLatency:andRoamData:andPingPongStats:]";
        v30 = 2048;
        v31 = *&roamsAfterSupprLifted;
        v32 = 2048;
        v33 = inRoamSuppressionWaitForRoamEnd;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - roamsAfterSupprLifted:%lu. incremented inRoamSuppressionWaitForRoamEnd :%fs", &v28, 0x20u);
      }
    }
  }

  if (status - 3766617153u > 0xA)
  {
    goto LABEL_19;
  }

  if (((1 << (status - 65)) & 0x1CF) != 0)
  {
LABEL_21:
    pingPongSequenceIsReassocOnly = 1;
    v24 = 9968;
    goto LABEL_22;
  }

  if (status != 3766617163)
  {
LABEL_19:
    if (status - 3766617091u <= 0xC)
    {
      if (((1 << (status - 3)) & 0x1702) != 0)
      {
        goto LABEL_21;
      }

      if (status == 3766617091)
      {
        pingPongSequenceIsReassocOnly = 1;
        v24 = 9952;
        goto LABEL_22;
      }
    }

    if (status)
    {
      pingPongSequenceIsReassocOnly = 1;
      v24 = 9944;
    }

    else
    {
      ++self->_roamStatusSucceededCount;
      if (!self->_inMotionStartedTime)
      {
        if ([statsCopy pingPongNth] >= 3)
        {
          ++self->_roamPingPongAboveThresholdCount;
          self->_roamPingPongAboveThresholdCountLowRssiOnly += [statsCopy pingPongSequenceIsLowRssiOnly];
        }

        self->_roamPingPongLowRssiAndReassocOnly += [statsCopy pingPongSequenceIsReassocOrLowRSSIOnly];
      }

      pingPongSequenceIsReassocOnly = [statsCopy pingPongSequenceIsReassocOnly];
      v24 = 10008;
    }

    goto LABEL_22;
  }

  pingPongSequenceIsReassocOnly = 1;
  v24 = 9960;
LABEL_22:
  *(&self->super.isa + v24) = (*(&self->super.isa + v24) + pingPongSequenceIsReassocOnly);
  v25 = [dataCopy objectForKey:@"ROAMEDEVENT_FLAGS"];
  v26 = v25;
  if (v25)
  {
    self->_roamIsWNMScoreUsedCount += ([v25 unsignedIntegerValue] >> 6) & 1;
  }

LABEL_25:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)roamingARConfigurationDidChange:(id *)change
{
  currentBssSession = self->_currentBssSession;
  v4 = *&change->var5;
  v5[0] = *&change->var0;
  v5[1] = v4;
  [(WiFiUsageBssSession *)currentBssSession roamingARConfigurationDidChange:v5];
}

- (void)updateRssiDiffStats:(id *)stats For:(id)for
{
  forCopy = for;
  var3 = stats->var3;
  var0 = stats->var0;
  forCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"roamNeighsSmllst%@RssiByBandTransition", forCopy];
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v10 = [(WiFiUsageSession *)self valueForKey:forCopy];
  v11 = v10;
  if (v10)
  {
    [v10 integerByBandTransitionValue];
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
  }

  v12 = var3 - var0;

  var1 = stats->var1;
  var5 = stats->var5;
  v15 = &v36 + 3 * var1 + var5;
  v17 = v15[72];
  v16 = v15 + 72;
  if (v17 != 1 || v12 < *(&v36 + 3 * var1 + var5))
  {
    *(&v36 + 3 * var1 + var5) = v12;
    *v16 = 1;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v30 = v36;
    v31 = v37;
    v18 = [MEMORY[0x277CCAE60] valuewithIntegerByBandTransition:&v30];
    [(WiFiUsageSession *)self setValue:v18 forKey:forCopy];
  }

  forCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"roamNeighsLrgst%@RssiByBandTransition", forCopy];

  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v20 = [(WiFiUsageSession *)self valueForKey:forCopy2];
  v21 = v20;
  if (v20)
  {
    [v20 integerByBandTransitionValue];
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
  }

  v22 = stats->var1;
  v23 = stats->var5;
  v24 = &v30 + 3 * v22 + v23;
  v26 = v24[72];
  v25 = v24 + 72;
  if (v26 != 1 || v12 > *(&v30 + 3 * v22 + v23))
  {
    *(&v30 + 3 * v22 + v23) = v12;
    *v25 = 1;
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v29 = v35;
    v28[0] = v30;
    v28[1] = v31;
    v27 = [MEMORY[0x277CCAE60] valuewithIntegerByBandTransition:v28];
    [(WiFiUsageSession *)self setValue:v27 forKey:forCopy2];
  }
}

- (void)roamCandidatesStatsDidUpdate:(id *)update
{
  v63 = *MEMORY[0x277D85DE8];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  allKeys = [update->var7 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v6)
  {
    v7 = *v58;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v58 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v57 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_roamNeighborsByBand objectForKey:v9];
        if (!v10)
        {
          v10 = objc_opt_new();
          [(NSMutableDictionary *)self->_roamNeighborsByBand setObject:v10 forKeyedSubscript:v9];
        }

        v11 = [update->var7 objectForKeyedSubscript:v9];
        allObjects = [v11 allObjects];
        [v10 addObjectsFromArray:allObjects];
      }

      v6 = [allKeys countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v6);
  }

  minCandidatesCount = self->_minCandidatesCount;
  if (minCandidatesCount >= update->var6)
  {
    var6 = update->var6;
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
    v15 = update->var6;
  }

  self->_minCandidatesCount = v15;
  maxCandidatesCount = self->_maxCandidatesCount;
  if (maxCandidatesCount <= update->var6)
  {
    v17 = update->var6;
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
    v18 = update->var6;
  }

  self->_maxCandidatesCount = v18;
  if (update->var2 == update->var0)
  {
    ++self->_currentRSSIStrongestCount;
  }

  var4 = update->var4;
  v20 = &self->super.isa + var4;
  v20[1448] = (v20[1448] + 1);
  v21 = self + var4;
  v21[11608] = 1;
  v20[1452] = update->var2;
  v21[11640] = 1;
  var0 = update->var0;
  if (update->var0 >= -94)
  {
    var3 = update->var3;
    if (var3 >= -94)
    {
      if (var3 <= var0)
      {
        v24 = &v56;
      }

      else
      {
        v24 = &v55;
      }

      if (var3 <= var0)
      {
        v25 = @"CurrentToNextBest";
      }

      else
      {
        v25 = @"CurrentToBest";
      }

      v26 = *&update->var2;
      *v24 = *&update->var0;
      *(v24 + 1) = v26;
      *(v24 + 2) = *&update->var4;
      *(v24 + 6) = update->var7;
      *(v24 + 7) = update->var8;
      v24[64] = update->var9;
      [(WiFiUsageSession *)self updateRssiDiffStats:v24 For:v25];
    }
  }

  v53 = 0u;
  v54 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  allKeys2 = [update->var7 allKeys];
  v28 = [allKeys2 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v28)
  {
    v29 = *v50;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(allKeys2);
        }

        v31 = *(*(&v49 + 1) + 8 * j);
        unsignedIntegerValue = [v31 unsignedIntegerValue];
        if (unsignedIntegerValue <= 3)
        {
          v33 = [update->var7 objectForKeyedSubscript:v31];
          *(&v53 + unsignedIntegerValue) = [v33 count];

          *(&v54 + unsignedIntegerValue + 8) = 1;
        }
      }

      v28 = [allKeys2 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v28);
  }

  v48[0] = v53;
  v48[1] = v54;
  v34 = [IntegerByBandObj integerByBandWith:v48 withCap:1];
  v35 = 10096;
  if (update->var9)
  {
    v35 = 10088;
  }

  v36 = *(&self->super.isa + v35);
  v37 = [v36 objectForKeyedSubscript:v34];
  if (!v37)
  {
    v37 = objc_opt_new();
    [v36 setObject:v37 forKeyedSubscript:v34];
  }

  [v37 increment];
  currentBssSession = self->_currentBssSession;
  v39 = *&update->var2;
  v44[0] = *&update->var0;
  v44[1] = v39;
  v44[2] = *&update->var4;
  v40 = update->var7;
  v45 = v40;
  v41 = update->var8;
  v46 = v41;
  var9 = update->var9;
  if (currentBssSession)
  {
    [(WiFiUsageBssSession *)currentBssSession roamCandidatesStatsDidUpdate:v44];
  }

  else
  {
    v42 = v41;
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)powerStateDidChange:(BOOL)change
{
  changeCopy = change;
  date = [MEMORY[0x277CBEAA8] date];
  self->_poweredOn = changeCopy;
  ++self->_powerStateChangedCount;
  lastPowerStateChangedTime = self->_lastPowerStateChangedTime;
  v10 = date;
  if (changeCopy)
  {
    [date timeIntervalSinceDate:lastPowerStateChangedTime];
    v7 = v10;
    if (v8 < 5.0)
    {
      ++self->_powerToggleEventCount;
    }
  }

  else
  {
    v7 = date;
    if (lastPowerStateChangedTime)
    {
      [date timeIntervalSinceDate:?];
      v7 = v10;
      self->_poweredOnDuration = v9 + self->_poweredOnDuration;
    }
  }

  [(WiFiUsageSession *)self setLastPowerStateChangedTime:v7];
}

- (void)faultEventDetected:(unint64_t)detected event:(id)event
{
  date = [MEMORY[0x277CBEAA8] date];
  if (detected - 1 <= 0x24)
  {
    ++self->_faultReasonCount[detected];
  }

  if (detected == 7)
  {
LABEL_6:
    [(WiFiUsageSession *)self setLastChipResetTime:date];
    if (self->_driverAvailabilityLifespan == 0.0)
    {
      [date timeIntervalSinceDate:self->_lastDriverAvailableTime];
      [(WiFiUsageSession *)self setDriverAvailabilityLifespan:?];
    }

    goto LABEL_10;
  }

  if (detected != 24)
  {
    if (detected != 21)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  [(WiFiUsageSession *)self setLastDriverTerminationTime:date];
  if (self->_driverProcessLifespan == 0.0)
  {
    [date timeIntervalSinceDate:self->_lastDriverAvailableTime];
    [(WiFiUsageSession *)self setDriverProcessLifespan:?];
  }

LABEL_10:
  [(WiFiUsageBssSession *)self->_currentBssSession faultEventDetected:detected];
}

- (void)triggerDisconnectAlerted:(BOOL)alerted confirmed:(BOOL)confirmed executed:(BOOL)executed
{
  if (!alerted)
  {
    if (!confirmed)
    {
      goto LABEL_3;
    }

LABEL_7:
    ++self->_triggerDisconnectConfirmedCount;
    if (!executed)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  ++self->_triggerDisconnectAlertedCount;
  if (confirmed)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (executed)
  {
LABEL_4:
    ++self->_triggerDisconnectExecutedCount;
  }

LABEL_5:
  [WiFiUsageBssSession triggerDisconnectAlerted:"triggerDisconnectAlerted:confirmed:executed:" confirmed:? executed:?];
}

- (BOOL)incrementCountWithPrefix:(id)prefix name:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  nameCopy = name;
  if (nameCopy)
  {
    v8 = &stru_28487EF20;
    if (prefixCopy)
    {
      v8 = prefixCopy;
    }

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@Count", v8, nameCopy];
    v10 = [(WiFiUsageSession *)self valueForKey:nameCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
      [(WiFiUsageSession *)self setValue:v12 forKey:nameCopy];
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)countWithPrefix:(id)prefix name:(id)name
{
  prefixCopy = prefix;
  nameCopy = name;
  if (nameCopy)
  {
    v8 = &stru_28487EF20;
    if (prefixCopy)
    {
      v8 = prefixCopy;
    }

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@Count", v8, nameCopy];
    v10 = [(WiFiUsageSession *)self valueForKey:nameCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)poorLinkSessionStats:(id)stats
{
  v21 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  if ([statsCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = statsCopy;
    ++self->_inPoorLinkSessionCount;
    [v5 sessionDuration];
    self->_inPoorLinkSessionDuration = v6 + self->_inPoorLinkSessionDuration;
    if (self->_lastJoinWhileDeferForTD && [v5 tdExecuted])
    {
      v7 = vaddq_s64(*&self->_tdAfterJoinAfterTDCount, vdupq_n_s64(1uLL));
      *&self->_tdAfterJoinAfterTDCount = v7;
      if (self->_max_subsequentTdAfterJoinAfterTDCount < v7.i64[1])
      {
        self->_max_subsequentTdAfterJoinAfterTDCount = v7.u64[1];
      }
    }

    else
    {
      current_subsequentTdAfterJoinAfterTDCount = self->_current_subsequentTdAfterJoinAfterTDCount;
      if (current_subsequentTdAfterJoinAfterTDCount)
      {
        if (self->_min_subsequentTdAfterJoinAfterTDCount > current_subsequentTdAfterJoinAfterTDCount)
        {
          self->_min_subsequentTdAfterJoinAfterTDCount = current_subsequentTdAfterJoinAfterTDCount;
        }

        self->_current_subsequentTdAfterJoinAfterTDCount = 0;
      }
    }

    v9 = +[WiFiUsagePoorLinkSession sessionStartedBy:](WiFiUsagePoorLinkSession, "sessionStartedBy:", [v5 sessionStartedBy]);
    v10 = [(WiFiUsageSession *)self incrementCountWithPrefix:@"tdSessionStartedBy" name:v9];

    if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[WiFiUsagePoorLinkSession sessionStartedBy:](WiFiUsagePoorLinkSession, "sessionStartedBy:", [v5 sessionStartedBy]);
      v13 = 136315906;
      v14 = "[WiFiUsageSession poorLinkSessionStats:]";
      v15 = 2112;
      v16 = v11;
      v17 = 1024;
      sessionStartedBy = [v5 sessionStartedBy];
      v19 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - tdSession started by %@ (%u) but no counter for this trigger in %@", &v13, 0x26u);
    }

    self->_lastJoinWhileDeferForTD = [v5 nextJoinWhileDeferJoin];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)summarizeSession
{
  v64 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  if (self->_sessionStartTime)
  {
    sessionEndTime = self->_sessionEndTime;
    if (!sessionEndTime)
    {
      sessionEndTime = date;
    }

    [(NSDate *)sessionEndTime timeIntervalSinceDate:?];
    self->_sessionDuration = v5;
  }

  if (self->_mediaStartedTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_mediaPlaybackDuration = v6 + self->_mediaPlaybackDuration;
  }

  if (self->_chargingStartedTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_chargingDuration = v7 + self->_chargingDuration;
  }

  if (self->_companionConnectionTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_companionConnectedDuration = v8 + self->_companionConnectedDuration;
  }

  if (self->_wowStateEntryTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inWowStateDuration = v9 + self->_inWowStateDuration;
  }

  if (self->_lpasStateEntryTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inLpasStateDuration = v10 + self->_inLpasStateDuration;
  }

  if (self->_lowPowerStateEntryTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inLowPowerStateDuration = v11 + self->_inLowPowerStateDuration;
  }

  if (self->_batterySaverStateEntryTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inBatterySaverStateDuration = v12 + self->_inBatterySaverStateDuration;
  }

  if (self->_callStartedTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inCallDuration = v13 + self->_inCallDuration;
  }

  if (self->_inVehicleEntryTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inVehicleDuration = v14 + self->_inVehicleDuration;
  }

  if (self->_inMotionStartedTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inMotionDuration = v15 + self->_inMotionDuration;
  }

  if (self->_a2dpActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inA2dpDuration = v16 + self->_inA2dpDuration;
  }

  if (self->_scoActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inScoDuration = v17 + self->_inScoDuration;
  }

  if (self->_hidPresentTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inHidPresentDuration = v18 + self->_inHidPresentDuration;
  }

  if (self->_awdlActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inAwdlDuration = v19 + self->_inAwdlDuration;
  }

  if (self->_roamingActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inRoamDuration = v20 + self->_inRoamDuration;
  }

  if (self->_lastRoamSuppressionToggled && self->_isRoamSuppressionEnabled)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inRoamSuppressionEnabled = v21 + self->_inRoamSuppressionEnabled;
  }

  if (self->_scanningActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inScanDuration = v22 + self->_inScanDuration;
  }

  if (self->_softApActiveTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_inSoftApDuration = v23 + self->_inSoftApDuration;
  }

  if (self->_lastSystemWakeTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_systemAwakeDuration = v24 + self->_systemAwakeDuration;
    [(WiFiUsageSession *)self setLastSystemWakeTime:date];
  }

  if (self->_poweredOn)
  {
    if (self->_lastPowerStateChangedTime)
    {
      [(NSDate *)date timeIntervalSinceDate:?];
      self->_poweredOnDuration = v25 + self->_poweredOnDuration;
    }

    [(WiFiUsageSession *)self setLastPowerStateChangedTime:date];
  }

  if (self->_linkRecoveryDisabledTime)
  {
    [(NSDate *)date timeIntervalSinceDate:?];
    self->_linkRecoveryDisabledDuration = v26 + self->_linkRecoveryDisabledDuration;
  }

  [(WiFiUsageSession *)self tallyAssociatedDuration:date];
  if (self->_lastBssChangedTime)
  {
    networkDetails = self->_networkDetails;
    if (networkDetails)
    {
      connectedBss = [(WiFiUsageNetworkDetails *)networkDetails connectedBss];
      -[WiFiUsageSession updateBandUsageFor:With:](self, "updateBandUsageFor:With:", [connectedBss band], date);
    }

    [(WiFiUsageSession *)self setLastBssChangedTime:date];
  }

  if (self->_cellularFallbackEnabled)
  {
    if (self->_lastCellularFallbackStateChangedTime)
    {
      [(NSDate *)date timeIntervalSinceDate:?];
      self->_inCellularFallbackDuration = v29 + self->_inCellularFallbackDuration;
    }

    [(WiFiUsageSession *)self setLastCellularFallbackStateChangedTime:date];
  }

  if (self->_cellularOutrankingEnabled)
  {
    if (self->_lastCellularOutrankingStateChangedTime)
    {
      [(NSDate *)date timeIntervalSinceDate:?];
      self->_inCellularOutrankingDuration = v30 + self->_inCellularOutrankingDuration;
    }

    [(WiFiUsageSession *)self setLastCellularOutrankingStateChangedTime:date];
  }

  if (!self->_controlCenterEnabled)
  {
    if (self->_lastControlCenterStateChangedTime)
    {
      [(NSDate *)date timeIntervalSinceDate:?];
      self->_inControlCenterAutoJoinDisabledDuration = v31 + self->_inControlCenterAutoJoinDisabledDuration;
    }

    [(WiFiUsageSession *)self setLastControlCenterStateChangedTime:date];
  }

  v32 = [WiFiUsageInterfaceStats statsForInterfaceName:self->_interfaceName];
  v33 = [WiFiUsageInterfaceStats statsForInterfaceName:self->_secondaryInterfaceName];
  -[WiFiUsageSession setNetInterfaceTxBytes:](self, "setNetInterfaceTxBytes:", [v32 txBytes] - -[WiFiUsageInterfaceStats txBytes](self->_ifStatsAtStart, "txBytes"));
  -[WiFiUsageSession setNetInterfaceRxBytes:](self, "setNetInterfaceRxBytes:", [v32 rxBytes] - -[WiFiUsageInterfaceStats rxBytes](self->_ifStatsAtStart, "rxBytes"));
  -[WiFiUsageSession setSecondaryInterfaceTxBytes:](self, "setSecondaryInterfaceTxBytes:", [v33 txBytes] - -[WiFiUsageInterfaceStats txBytes](self->_secondaryIfStatsAtStart, "txBytes"));
  -[WiFiUsageSession setSecondaryInterfaceRxBytes:](self, "setSecondaryInterfaceRxBytes:", [v33 rxBytes] - -[WiFiUsageInterfaceStats rxBytes](self->_secondaryIfStatsAtStart, "rxBytes"));
  if ([(NSDate *)self->_lastPowerBudgetChangedTime isEqualToDate:self->_sessionStartTime])
  {
    [(WiFiUsageSession *)self powerBudgetDidChange:self->_lastPowerBudget andThermalIndex:self->_lastThermalIndex];
  }

  if (self->_isCompatibilityModeEnabled)
  {
    [(NSDate *)date timeIntervalSinceDate:self->_lastCompatibilityModeChangedTime];
    self->_inCompatibilityModeEnabledDuration = v34 + self->_inCompatibilityModeEnabledDuration;
    v35 = MEMORY[0x277D86220];
    v36 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      compatibilityModeChangeCount = self->_compatibilityModeChangeCount;
      v54 = 136315394;
      v55 = "[WiFiUsageSession summarizeSession]";
      v56 = 2048;
      selfCopy2 = compatibilityModeChangeCount;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - _compatibilityModeChangeCount:%lu", &v54, 0x16u);
    }
  }

  disable6eMode = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
  if ([disable6eMode isEqualToString:@"off"])
  {
    lastNetwork6eDisableModeChangedTime = self->_lastNetwork6eDisableModeChangedTime;

    if (lastNetwork6eDisableModeChangedTime)
    {
      [(NSDate *)date timeIntervalSinceDate:self->_lastNetwork6eDisableModeChangedTime];
      self->_inNetwork6eModeOffDuration = v40 + self->_inNetwork6eModeOffDuration;
    }
  }

  else
  {
  }

  v41 = MEMORY[0x277D86220];
  v42 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    inNetwork6eModeOffDuration = self->_inNetwork6eModeOffDuration;
    v44 = self->_lastNetwork6eDisableModeChangedTime;
    sessionDuration = self->_sessionDuration;
    v54 = 136316162;
    v55 = "[WiFiUsageSession summarizeSession]";
    v56 = 2112;
    selfCopy2 = self;
    v58 = 2048;
    v59 = inNetwork6eModeOffDuration;
    v60 = 2112;
    v61 = v44;
    v62 = 2048;
    v63 = sessionDuration;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s on %@ - _inNetwork6eModeOffDuration:%fs (lastNetwork6eDisableModedChangedTime:%@ sessionDuration:%fs)", &v54, 0x34u);
  }

  if ([(WiFiUsageSession *)self useSavedJoinStats]&& self->_savedLastJoinReason != -1)
  {
    [(WiFiUsageSession *)self setJoinStateChangedCount:self->_savedJoinStateChangedCount];
    [(WiFiUsageSession *)self setLastJoinReason:self->_savedLastJoinReason];
    [(WiFiUsageSession *)self setLastJoinFailure:self->_savedLastJoinFailure];
    [(WiFiUsageSession *)self setPreviousDisconnectReason:self->_savedPreviousDisconnectReason];
    [(WiFiUsageSession *)self setInCoexRealTimeAtLastJoin:self->_savedInCoexRealTimeAtLastJoin];
    [(WiFiUsageSession *)self setPrevJoinReason:self->_savedPrevJoinReason];
    [(WiFiUsageSession *)self setTimeSincePrevJoin:self->_savedTimeSincePrevJoin];
    v46 = *&self->_savedJoinReasonCount[10];
    *&self->_joinReasonCount[8] = *&self->_savedJoinReasonCount[8];
    *&self->_joinReasonCount[10] = v46;
    *&self->_joinReasonCount[12] = *&self->_savedJoinReasonCount[12];
    self->_joinReasonCount[14] = self->_savedJoinReasonCount[14];
    v47 = *&self->_savedJoinReasonCount[2];
    *self->_joinReasonCount = *self->_savedJoinReasonCount;
    *&self->_joinReasonCount[2] = v47;
    v48 = *&self->_savedJoinReasonCount[6];
    *&self->_joinReasonCount[4] = *&self->_savedJoinReasonCount[4];
    *&self->_joinReasonCount[6] = v48;
    v49 = v41;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [objc_opt_class() joinReasonString:self->_lastJoinReason];
      v51 = [objc_opt_class() joinReasonString:self->_savedLastJoinReason];
      v54 = 136315906;
      v55 = "[WiFiUsageSession summarizeSession]";
      v56 = 2112;
      selfCopy2 = self;
      v58 = 2112;
      v59 = *&v50;
      v60 = 2112;
      v61 = v51;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s on %@ _lastJoinReason:%@ _savedLastJoinReason:%@", &v54, 0x2Au);
    }
  }

  if (self->_anyUsbDeviceConnected)
  {
    [(WiFiUsageSession *)self updateUsbInsertedDuration:self->_sessionEndTime];
  }

  if (self->_lastAWDLSequenceUpdate)
  {
    [(WiFiUsageSession *)self tallyInfraScoreDuration:self->_inAWDL_lastInfraScore until:date];
    [(WiFiUsageSession *)self tallyP2PScoreDuration:date until:self->_inAWDL_lastP2PScore];
    objc_storeStrong(&self->_lastAWDLSequenceUpdate, date);
  }

  if (self->_lastLinkStateChangedTime)
  {
    if (!self->_isAssociated)
    {
      [(NSDate *)date timeIntervalSinceDate:?];
      if (v52 > self->_longestUnassociatedDuration)
      {
        self->_longestUnassociatedDuration = v52;
      }
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)sessionDidEnd
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = &self->_disconnectReasonCount[928];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v3 + 880);
    v14 = "[WiFiUsageSession sessionDidEnd]";
    *buf = 136315650;
    if (v4)
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v15 = 2112;
    selfCopy = self;
    v17 = 2080;
    v18 = v5;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s on %@ deferCompletion=%s", buf, 0x20u);
  }

  if (*(v3 + 872) == 1)
  {
    [(WiFiUsageSession *)self setIsSessionActive:0];
    date = [MEMORY[0x277CBEAA8] date];
    [(WiFiUsageSession *)self setSessionEndTime:date];

    [(WiFiUsageSession *)self summarizeSession];
    if ((v3[110] & 1) == 0 && self->_completionHandler && self->_completionQueue)
    {
      v7 = [(WiFiUsageSession *)self copy];
      v8 = v7[1443];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__WiFiUsageSession_sessionDidEnd__block_invoke;
      block[3] = &unk_2789C6630;
      v12 = v7;
      v9 = v7;
      dispatch_async(v8, block);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __33__WiFiUsageSession_sessionDidEnd__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 11536);
  return (*(*(v1 + 11528) + 16))();
}

- (id)sessionName
{
  type = self->_type;
  if (type > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C7EC8[type];
  }
}

+ (id)joinReasonString:(unint64_t)string
{
  if (string + 1 >= 0x10)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown=%u", string];
  }

  else
  {
    string = off_2789C7F20[string + 1];
  }

  return string;
}

+ (id)disconnectReasonString:(unint64_t)string
{
  if (string <= 5)
  {
    if (string <= 1)
    {
      if (string == -1)
      {
        v4 = @"Uninitialized";
      }

      else if (string)
      {
        if (string == 1)
        {
          v4 = @"Deauth";
        }

        else
        {
LABEL_39:
          if (string > 0x3E7)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown=%u", string];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithCString:convertLinkChangeReasonToString()];
          }
          v4 = ;
        }
      }

      else
      {
        v4 = @"None";
      }
    }

    else if (string > 3)
    {
      if (string == 4)
      {
        v4 = @"SystemSleep";
      }

      else
      {
        v4 = @"PoweredOff";
      }
    }

    else if (string == 2)
    {
      v4 = @"BeaconLoss";
    }

    else
    {
      v4 = @"Internal";
    }
  }

  else
  {
    switch(string)
    {
      case 0x3E8uLL:
        v4 = @"TriggerDisconnect";

        break;
      case 0x3E9uLL:
        v4 = @"Application";

        break;
      case 0x3EAuLL:
        v4 = @"TemporarilyDisabled";

        break;
      case 0x3EBuLL:
        v4 = @"PreferenceChanged";

        break;
      case 0x3ECuLL:
        v4 = @"DecryptFailure";

        break;
      case 0x3EDuLL:
        v4 = @"NotPrimary";

        break;
      case 0x3EEuLL:
        v4 = @"Thermal";

        break;
      case 0x3EFuLL:
        v4 = @"InternetSharing";

        break;
      case 0x3F0uLL:
        v4 = @"Settings";

        break;
      case 0x3F1uLL:
        v4 = @"Misc";

        break;
      case 0x3F2uLL:
        v4 = @"EapRestart";

        break;
      case 0x3F3uLL:
        v4 = @"ControlCenter";

        break;
      case 0x3F4uLL:
        v4 = @"EapFailure";

        break;
      case 0x3F5uLL:
        v4 = @"Transition";

        break;
      case 0x3F6uLL:
        v4 = @"AutoUnlock";

        break;
      case 0x3F7uLL:
        v4 = @"Captive";

        break;
      case 0x3F8uLL:
        v4 = @"UserNotification";

        break;
      case 0x3F9uLL:
        v4 = @"BssSteering";

        break;
      case 0x3FAuLL:
        v4 = @"HotspotAssociation";

        break;
      case 0x3FBuLL:
        v4 = @"HotspotTransition";

        break;
      case 0x3FCuLL:
        v4 = @"BssChanged";

        break;
      case 0x3FDuLL:
        v4 = @"CarPlayDisabled";

        break;
      case 0x3FEuLL:
        v4 = @"BatterySaverMode";

        break;
      case 0x3FFuLL:
        v4 = @"AirPlay";

        break;
      case 0x400uLL:
        v4 = @"6EEnabled";

        break;
      case 0x401uLL:
        v4 = @"6EDisabled";

        break;
      case 0x402uLL:
        v4 = @"ColocatedUserJoin";

        break;
      case 0x403uLL:
        v4 = @"InfraRelayDisconnect";

        break;
      case 0x404uLL:
        v4 = @"P2PRealTimeInitiated";

        break;
      case 0x405uLL:
        v4 = @"SleepOnCaptive";

        break;
      case 0x406uLL:
        v4 = @"ShortLease";

        break;
      case 0x407uLL:
        v4 = @"AutoJoinDisabled";

        break;
      case 0x408uLL:
        v4 = @"SleepDenylisted";

        break;
      case 0x409uLL:
        v4 = @"UnspecifiedClientDisconnect";

        break;
      case 0x40AuLL:
        v4 = @"HotspotConnectionInactive";

        break;
      case 0x40BuLL:
        v4 = @"SharingSilentRepair";

        break;
      default:
        if (string == 6)
        {
          v4 = @"JoinFailure";
        }

        else
        {
          if (string != 7)
          {
            goto LABEL_39;
          }

          v4 = @"ColocatedNetworkTransition";
        }

        break;
    }
  }

  return v4;
}

+ (BOOL)isDriverUnavailabilityReasonVoluntary:(int)voluntary subReason:(int)reason orReasonString:(id)string
{
  v7 = (voluntary + 528345087) < 4 || voluntary == -528340989 || voluntary == -528336891;
  v8 = reason == -528340989 || v7;
  return [string isEqualToString:@"Driver Booted"] | v8;
}

- (unint64_t)totalRxFrames
{
  v2 = [(WiFiUsageSession *)self lqm];
  totalRxFrames = [v2 totalRxFrames];

  return totalRxFrames;
}

- (unint64_t)totalTxFrames
{
  v2 = [(WiFiUsageSession *)self lqm];
  totalTxFrames = [v2 totalTxFrames];

  return totalTxFrames;
}

- (int64_t)averageCca
{
  v2 = [(WiFiUsageSession *)self lqm];
  avgTotalCca = [v2 avgTotalCca];

  return avgTotalCca;
}

- (int64_t)averageRssi
{
  v2 = [(WiFiUsageSession *)self lqm];
  avgRssi = [v2 avgRssi];

  return avgRssi;
}

- (int64_t)averageSnr
{
  v2 = [(WiFiUsageSession *)self lqm];
  avgSnr = [v2 avgSnr];

  return avgSnr;
}

- (int64_t)lastRssi
{
  v2 = [(WiFiUsageSession *)self lqm];
  lastRssi = [v2 lastRssi];

  return lastRssi;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = &self->_disconnectReasonCount[928];
  v5 = [objc_alloc(objc_opt_class()) initWithSessionType:self->_type andInterfaceName:self->_interfaceName andCapabilities:self->_capabilities];
  [v5 setCompletionQueue:self->_completionQueue];
  [v5 setCompletionContext:self->_completionContext];
  [v5 setCompletionHandler:self->_completionHandler];
  objc_storeStrong((v5 + 9224), self->_ca_config);
  *(v5 + 9072) = *(v4 + 880);
  [v5 setSessionStartTime:self->_sessionStartTime];
  [v5 setSessionEndTime:self->_sessionEndTime];
  v6 = [(WiFiUsageBssSession *)self->_currentBssSession copy];
  v7 = *(v5 + 9152);
  *(v5 + 9152) = v6;

  *(v5 + 9068) = *(v4 + 876);
  *(v5 + 9069) = *(v4 + 877);
  *(v5 + 9070) = *(v4 + 878);
  *(v5 + 9071) = *(v4 + 879);
  *(v5 + 9192) = self->_driverUnavailabilityCount;
  *(v5 + 10840) = self->_lastThermalIndex;
  *(v5 + 10832) = self->_lastPowerBudget;
  v8 = [(NSMutableSet *)self->_activeApplications copy];
  v9 = *(v5 + 10824);
  *(v5 + 10824) = v8;

  v10 = [(WiFiUsageSessionLQM *)self->_lqm copy];
  v11 = *(v5 + 10816);
  *(v5 + 10816) = v10;

  *(v5 + 10672) = self->_triggerDisconnectAlertedCount;
  *(v5 + 10680) = self->_triggerDisconnectConfirmedCount;
  *(v5 + 10688) = self->_triggerDisconnectExecutedCount;
  *(v5 + 10640) = self->_netInterfaceTxBytes;
  *(v5 + 10648) = self->_netInterfaceRxBytes;
  *(v5 + 10656) = self->_secondaryInterfaceTxBytes;
  *(v5 + 10664) = self->_secondaryInterfaceRxBytes;
  v12 = [(WiFiUsageInterfaceStats *)self->_ifStatsAtStart copy];
  v13 = *(v5 + 10624);
  *(v5 + 10624) = v12;

  v14 = [(WiFiUsageInterfaceStats *)self->_secondaryIfStatsAtStart copy];
  v15 = *(v5 + 10632);
  *(v5 + 10632) = v14;

  *(v5 + 10608) = self->_neighborBssCount;
  *(v5 + 10616) = self->_otherBssCount;
  *(v5 + 10440) = self->_systemWakeStateChangedCount;
  *(v5 + 10448) = self->_systemWokenByWiFiCount;
  *(v5 + 10456) = self->_lockStateChangedCount;
  *(v5 + 10464) = self->_displayStateChangedCount;
  *(v5 + 10472) = self->_networkChangedCount;
  *(v5 + 10480) = self->_joinStateChangedCount;
  *(v5 + 10496) = self->_linkStateChangedCount;
  *(v5 + 10504) = self->_applicationStateChangedCount;
  *(v5 + 10512) = self->_powerStateChangedCount;
  *(v5 + 10520) = self->_powerToggleEventCount;
  *(v5 + 10576) = self->_rapidLinkTransitionCount;
  *(v5 + 10584) = self->_primaryInterfaceStateChangeCount;
  *(v5 + 10552) = self->_controlCenterToggleEventCount;
  *(v5 + 10544) = self->_controlCenterStateChangedCount;
  *(v5 + 10560) = self->_cellularFallbackStateChangedCount;
  *(v5 + 10568) = self->_cellularOutrankingStateChangedCount;
  *(v5 + 10280) = self->_mediaPlaybackEventCount;
  *(v5 + 10288) = self->_chargingEventCount;
  *(v5 + 10296) = self->_inCallEventCount;
  *(v5 + 10312) = self->_inVehicleEventCount;
  *(v5 + 10320) = self->_inMotionEventCount;
  *(v5 + 10328) = self->_inA2dpEventCount;
  *(v5 + 10336) = self->_inScoEventCount;
  *(v5 + 10344) = self->_inHidPresentCount;
  *(v5 + 10352) = self->_inAwdlEventCount;
  *(v5 + 10360) = self->_inRoamEventCount;
  *(v5 + 10368) = self->_inScanEventCount;
  *(v5 + 10376) = self->_inSoftApEventCount;
  *(v5 + 10384) = self->_rangingEventCount;
  *(v5 + 10392) = self->_companionConnectionStateChangedCount;
  *(v5 + 10528) = self->_smartCoverStateChangedCount;
  v16 = [(NSString *)self->_lastSmartCoverState copy];
  v17 = *(v5 + 10536);
  *(v5 + 10536) = v16;

  *(v5 + 9176) = self->_consecutiveJoinFailureCount;
  *(v5 + 10400) = self->_linkRecoveryDisabledCount;
  *(v5 + 9089) = *(v4 + 897);
  *(v5 + 9090) = *(v4 + 898);
  *(v5 + 9091) = *(v4 + 899);
  *(v5 + 9092) = *(v4 + 900);
  objc_storeStrong((v5 + 10992), self->_btAudioBand);
  *(v5 + 10408) = self->_wowStateChangedCount;
  *(v5 + 10416) = self->_lpasStateChangedCount;
  *(v5 + 10424) = self->_lowPowerStateChangedCount;
  *(v5 + 10432) = self->_batterySaverStateChangedCount;
  *(v5 + 10192) = self->_thermalIndexMaxDuration;
  *(v5 + 10200) = self->_thermalIndex90Duration;
  *(v5 + 10208) = self->_thermalIndex80Duration;
  *(v5 + 10216) = self->_thermalIndex70Duration;
  *(v5 + 10224) = self->_thermalIndex60Duration;
  *(v5 + 10232) = self->_thermalIndex50Duration;
  *(v5 + 10240) = self->_thermalIndex40Duration;
  *(v5 + 10248) = self->_thermalIndex30Duration;
  *(v5 + 10256) = self->_thermalIndex20Duration;
  *(v5 + 10264) = self->_thermalIndex10Duration;
  *(v5 + 10272) = self->_thermalIndexMinDuration;
  *(v5 + 10104) = self->_powerBudgetMaxDuration;
  *(v5 + 10112) = self->_powerBudget90Duration;
  *(v5 + 10120) = self->_powerBudget80Duration;
  *(v5 + 10128) = self->_powerBudget70Duration;
  *(v5 + 10136) = self->_powerBudget60Duration;
  *(v5 + 10144) = self->_powerBudget50Duration;
  *(v5 + 10152) = self->_powerBudget40Duration;
  *(v5 + 10160) = self->_powerBudget30Duration;
  *(v5 + 10168) = self->_powerBudget20Duration;
  *(v5 + 10176) = self->_powerBudget10Duration;
  *(v5 + 10184) = self->_powerBudgetMinDuration;
  *(v5 + 9840) = self->_roamReasonInitialAssociationCount;
  *(v5 + 9848) = self->_roamReasonLowRssiCount;
  *(v5 + 9856) = self->_roamReasonDeauthDisassocCount;
  *(v5 + 9864) = self->_roamReasonBeaconLostCount;
  *(v5 + 9872) = self->_roamReasonSteeredByApCount;
  *(v5 + 9880) = self->_roamReasonSteeredByBtmCount;
  *(v5 + 9888) = self->_roamReasonSteeredByCsaCount;
  *(v5 + 9896) = self->_roamReasonReassocRequestedCount;
  *(v5 + 9904) = self->_roamReasonHostTriggeredCount;
  *(v5 + 9912) = self->_roamReasonBetterCandidateCount;
  *(v5 + 9920) = self->_roamReasonBetterConditionCount;
  *(v5 + 9928) = self->_roamReasonMiscCount;
  *(v5 + 9936) = self->_roamStatusSucceededCount;
  *(v5 + 9944) = self->_roamStatusFailedCount;
  *(v5 + 9952) = self->_roamStatusNoCandidateCount;
  *(v5 + 9960) = self->_roamStatusNoQualifiedCandidateCount;
  *(v5 + 9968) = self->_roamStatusFailedNoScan;
  *(v5 + 9976) = self->_roamIsWNMScoreUsedCount;
  *(v5 + 9984) = self->_roamPingPongAboveThresholdCount;
  *(v5 + 9992) = self->_roamPingPongAboveThresholdCountLowRssiOnly;
  *(v5 + 10000) = self->_roamPingPongLowRssiAndReassocOnly;
  *(v5 + 10008) = self->_roamPingPongReassocOnly;
  *(v5 + 9082) = *(v4 + 890);
  v18 = [(NSDate *)self->_lastRoamSuppressionToggled copy];
  v19 = *(v5 + 10016);
  *(v5 + 10016) = v18;

  *(v5 + 10032) = self->_inRoamSuppressionEnabled;
  *(v5 + 10040) = self->_inRoamSuppressionWaitForRoamStart;
  *(v5 + 10048) = self->_inRoamSuppressionWaitForRoamEnd;
  *(v5 + 10056) = self->_minCandidatesCount;
  *(v5 + 10064) = self->_maxCandidatesCount;
  *(v5 + 10072) = self->_currentRSSIStrongestCount;
  v20 = [(NSMutableDictionary *)self->_roamNeighborsByBand copy];
  v21 = *(v5 + 10080);
  *(v5 + 10080) = v20;

  v22 = *self->_strongestRSSICountByBand.valueByBand;
  *(v5 + 11600) = *&self->_strongestRSSICountByBand.valueByBand[2];
  *(v5 + 11584) = v22;
  v23 = *self->_strongestRSSIByBand.valueByBand;
  *(v5 + 11632) = *&self->_strongestRSSIByBand.valueByBand[2];
  *(v5 + 11616) = v23;
  v24 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][0];
  v25 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][2];
  v26 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valid[2][2];
  *(v5 + 11680) = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[1][1];
  *(v5 + 11728) = v26;
  *(v5 + 11712) = v25;
  *(v5 + 11696) = v24;
  v27 = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][0];
  *(v5 + 11664) = *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][2];
  *(v5 + 11648) = v27;
  v29 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][0];
  v28 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][2];
  v30 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[1][1];
  *(v5 + 11816) = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valid[2][2];
  *(v5 + 11784) = v29;
  *(v5 + 11800) = v28;
  *(v5 + 11768) = v30;
  v31 = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][2];
  *(v5 + 11736) = *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][0];
  *(v5 + 11752) = v31;
  v32 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][0];
  *(v5 + 11840) = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][2];
  *(v5 + 11824) = v32;
  v33 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[1][1];
  v34 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][0];
  v35 = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][2];
  *(v5 + 11904) = *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valid[2][2];
  *(v5 + 11888) = v35;
  *(v5 + 11872) = v34;
  *(v5 + 11856) = v33;
  v36 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][2];
  *(v5 + 11912) = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][0];
  *(v5 + 11928) = v36;
  v37 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[1][1];
  v38 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][0];
  v39 = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][2];
  *(v5 + 11992) = *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valid[2][2];
  *(v5 + 11960) = v38;
  *(v5 + 11976) = v39;
  *(v5 + 11944) = v37;
  v40 = [(NSMutableDictionary *)self->_roamCandidatesPerBandWhenSuccessful copy];
  v41 = *(v5 + 10088);
  *(v5 + 10088) = v40;

  v42 = [(NSMutableDictionary *)self->_roamCandidatesPerBandWhenUnSuccessful copy];
  v43 = *(v5 + 10096);
  *(v5 + 10096) = v42;

  *(v5 + 9128) = self->_sessionDuration;
  *(v5 + 9592) = self->_systemAwakeDuration;
  *(v5 + 9600) = self->_mediaPlaybackDuration;
  *(v5 + 9608) = self->_chargingDuration;
  *(v5 + 9624) = self->_inCallDuration;
  *(v5 + 9640) = self->_inVehicleDuration;
  *(v5 + 9648) = self->_inMotionDuration;
  *(v5 + 9656) = self->_inA2dpDuration;
  *(v5 + 9664) = self->_inScoDuration;
  *(v5 + 9672) = self->_inHidPresentDuration;
  *(v5 + 9680) = self->_inAwdlDuration;
  *(v5 + 9688) = self->_inRoamDuration;
  *(v5 + 9696) = self->_inScanDuration;
  *(v5 + 9704) = self->_inSoftApDuration;
  *(v5 + 9712) = self->_poweredOnDuration;
  *(v5 + 9720) = self->_associatedDuration;
  *(v5 + 9066) = *(v4 + 874);
  *(v5 + 9728) = self->_associatedSleepDuration;
  *(v5 + 9736) = self->_inCellularFallbackDuration;
  *(v5 + 9744) = self->_inCellularOutrankingDuration;
  v44 = *self->_bandUsageDuration.valueByBand;
  *(v5 + 11568) = *&self->_bandUsageDuration.valueByBand[2];
  *(v5 + 11552) = v44;
  *(v5 + 9752) = self->_inControlCenterAutoJoinDisabledDuration;
  *(v5 + 9616) = self->_companionConnectedDuration;
  *(v5 + 9768) = self->_linkRecoveryDisabledDuration;
  *(v5 + 10808) = self->_longestUnassociatedDuration;
  *(v5 + 9776) = self->_inWowStateDuration;
  *(v5 + 9784) = self->_inLpasStateDuration;
  *(v5 + 9792) = self->_inLowPowerStateDuration;
  *(v5 + 9800) = self->_inBatterySaverStateDuration;
  *(v5 + 9808) = self->_sleepPowerStatsTotalDuration;
  *(v5 + 9816) = self->_sleepPowerStatsUnassociatedDuration;
  *(v5 + 9824) = self->_sleepPowerStatsAssociatedDuration;
  *(v5 + 9832) = self->_sleepPowerStatsRoamingDuration;
  v45 = [(NSDate *)self->_sessionInitTime copy];
  v46 = *(v5 + 9320);
  *(v5 + 9320) = v45;

  v47 = [(NSDate *)self->_sessionStartTime copy];
  v48 = *(v5 + 9328);
  *(v5 + 9328) = v47;

  v49 = [(NSDate *)self->_sessionEndTime copy];
  v50 = *(v5 + 9336);
  *(v5 + 9336) = v49;

  v51 = [(NSDate *)self->_mediaStartedTime copy];
  v52 = *(v5 + 9344);
  *(v5 + 9344) = v51;

  v53 = [(NSDate *)self->_chargingStartedTime copy];
  v54 = *(v5 + 9352);
  *(v5 + 9352) = v53;

  v55 = [(NSDate *)self->_companionConnectionTime copy];
  v56 = *(v5 + 9360);
  *(v5 + 9360) = v55;

  v57 = [(NSDate *)self->_callStartedTime copy];
  v58 = *(v5 + 9368);
  *(v5 + 9368) = v57;

  v59 = [(NSDate *)self->_inVehicleEntryTime copy];
  v60 = *(v5 + 9384);
  *(v5 + 9384) = v59;

  v61 = [(NSDate *)self->_inMotionStartedTime copy];
  v62 = *(v5 + 9392);
  *(v5 + 9392) = v61;

  v63 = [(NSDate *)self->_a2dpActiveTime copy];
  v64 = *(v5 + 9400);
  *(v5 + 9400) = v63;

  v65 = [(NSDate *)self->_scoActiveTime copy];
  v66 = *(v5 + 9408);
  *(v5 + 9408) = v65;

  v67 = [(NSDate *)self->_hidPresentTime copy];
  v68 = *(v5 + 9416);
  *(v5 + 9416) = v67;

  v69 = [(NSDate *)self->_awdlActiveTime copy];
  v70 = *(v5 + 9424);
  *(v5 + 9424) = v69;

  v71 = [(NSDate *)self->_roamingActiveTime copy];
  v72 = *(v5 + 9432);
  *(v5 + 9432) = v71;

  v73 = [(NSDate *)self->_scanningActiveTime copy];
  v74 = *(v5 + 9440);
  *(v5 + 9440) = v73;

  v75 = [(NSDate *)self->_softApActiveTime copy];
  v76 = *(v5 + 9448);
  *(v5 + 9448) = v75;

  v77 = [(NSDate *)self->_lastPowerStateChangedTime copy];
  v78 = *(v5 + 9456);
  *(v5 + 9456) = v77;

  v79 = [(NSDate *)self->_lastCellularFallbackStateChangedTime copy];
  v80 = *(v5 + 9472);
  *(v5 + 9472) = v79;

  v81 = [(NSDate *)self->_lastCellularOutrankingStateChangedTime copy];
  v82 = *(v5 + 9480);
  *(v5 + 9480) = v81;

  v83 = [(NSDate *)self->_lastControlCenterStateChangedTime copy];
  v84 = *(v5 + 9464);
  *(v5 + 9464) = v83;

  v85 = [(NSDate *)self->_lastSystemWakeTime copy];
  v86 = *(v5 + 9488);
  *(v5 + 9488) = v85;

  v87 = [(NSDate *)self->_lastSystemSleepTime copy];
  v88 = *(v5 + 9496);
  *(v5 + 9496) = v87;

  v89 = [(NSDate *)self->_lastUnexpectedLinkDownTime copy];
  v90 = *(v5 + 9504);
  *(v5 + 9504) = v89;

  v91 = [(NSDate *)self->_lastLinkStateChangedTime copy];
  v92 = *(v5 + 9512);
  *(v5 + 9512) = v91;

  v93 = [(NSDate *)self->_lastPowerBudgetChangedTime copy];
  v94 = *(v5 + 9520);
  *(v5 + 9520) = v93;

  v95 = [(NSDate *)self->_lastBssChangedTime copy];
  v96 = *(v5 + 9528);
  *(v5 + 9528) = v95;

  v97 = [(NSDate *)self->_linkRecoveryDisabledTime copy];
  v98 = *(v5 + 9544);
  *(v5 + 9544) = v97;

  *(v5 + 9079) = *(v4 + 887);
  v99 = [(NSDate *)self->_wowStateEntryTime copy];
  v100 = *(v5 + 9552);
  *(v5 + 9552) = v99;

  v101 = [(NSDate *)self->_lpasStateEntryTime copy];
  v102 = *(v5 + 9560);
  *(v5 + 9560) = v101;

  v103 = [(NSDate *)self->_lowPowerStateEntryTime copy];
  v104 = *(v5 + 9568);
  *(v5 + 9568) = v103;

  v105 = [(NSDate *)self->_batterySaverStateEntryTime copy];
  v106 = *(v5 + 9576);
  *(v5 + 9576) = v105;

  *(v5 + 9256) = self->_lastJoinReason;
  *(v5 + 9264) = self->_lastJoinFailure;
  *(v5 + 9272) = self->_lastDisconnectReason;
  *(v5 + 9280) = self->_lastDisconnectSubreason;
  *(v5 + 9288) = self->_previousDisconnectReason;
  *(v5 + 10488) = self->_savedJoinStateChangedCount;
  *(v5 + 9296) = self->_savedLastJoinReason;
  *(v5 + 9304) = self->_savedLastJoinFailure;
  *(v5 + 9312) = self->_savedPreviousDisconnectReason;
  *(v5 + 9081) = *(v4 + 889);
  v107 = [(NSString *)self->_secondaryInterfaceName copy];
  v108 = *(v5 + 9216);
  *(v5 + 9216) = v107;

  *(v5 + 9064) = *(v4 + 872);
  *(v5 + 9073) = *(v4 + 881);
  *(v5 + 9074) = *(v4 + 882);
  *(v5 + 9075) = *(v4 + 883);
  *(v5 + 9076) = *(v4 + 884);
  *(v5 + 9240) = self->_sessionPid;
  v109 = [(NSDate *)self->_processInitTime copy];
  v110 = *(v5 + 9168);
  *(v5 + 9168) = v109;

  v111 = [(NSString *)self->_cellularDataStatus copy];
  v112 = *(v5 + 9232);
  *(v5 + 9232) = v111;

  *(v5 + 9080) = *(v4 + 888);
  *(v5 + 10600) = self->_airplaneModeStateChangedCount;
  v113 = [(NSString *)self->_lastDriverUnavailableReason copy];
  v114 = *(v5 + 10720);
  *(v5 + 10720) = v113;

  v115 = [(NSDate *)self->_lastDriverTerminationTime copy];
  v116 = *(v5 + 10696);
  *(v5 + 10696) = v115;

  v117 = [(NSDate *)self->_lastChipResetTime copy];
  v118 = *(v5 + 10704);
  *(v5 + 10704) = v117;

  v119 = [(NSDate *)self->_lastDriverAvailableTime copy];
  v120 = *(v5 + 10712);
  *(v5 + 10712) = v119;

  *(v5 + 10728) = self->_driverProcessLifespan;
  *(v5 + 10736) = self->_driverAvailabilityLifespan;
  *(v5 + 10752) = self->_driverAvailabilityLatencyFromTermination;
  *(v5 + 10760) = self->_joinScanLatencyFromDriverAvailability;
  *(v5 + 10768) = self->_joinStartedLatencyFromDriverAvailability;
  *(v5 + 10776) = self->_joinLinkUpLatencyFromDriverAvailability;
  *(v5 + 10784) = self->_joinIpConfigurationLatencyFromDriverAvailability;
  *(v5 + 10792) = self->_joinInterfaceRankingLatencyFromDriverAvailability;
  *(v5 + 10800) = self->_joinLinkUpLatencyFromSessionStart;
  v121 = *self->_perClientScanCount;
  *(v5 + 24) = *&self->_perClientScanCount[2];
  *(v5 + 8) = v121;
  v122 = *&self->_perClientScanCount[4];
  v123 = *&self->_perClientScanCount[6];
  v124 = *&self->_perClientScanCount[8];
  *(v5 + 88) = *&self->_perClientScanCount[10];
  *(v5 + 72) = v124;
  *(v5 + 56) = v123;
  *(v5 + 40) = v122;
  v125 = *&self->_perClientScanCount[12];
  v126 = *&self->_perClientScanCount[14];
  v127 = *&self->_perClientScanCount[16];
  *(v5 + 152) = *&self->_perClientScanCount[18];
  *(v5 + 136) = v127;
  *(v5 + 120) = v126;
  *(v5 + 104) = v125;
  v128 = *&self->_perClientScanCount[20];
  v129 = *&self->_perClientScanCount[22];
  v130 = *&self->_perClientScanCount[24];
  *(v5 + 216) = self->_perClientScanCount[26];
  *(v5 + 200) = v130;
  *(v5 + 184) = v129;
  *(v5 + 168) = v128;
  memcpy((v5 + 224), self->_faultReasonCount, 0x130uLL);
  v131 = *&self->_joinReasonCount[6];
  v133 = *self->_joinReasonCount;
  v132 = *&self->_joinReasonCount[2];
  *(v5 + 560) = *&self->_joinReasonCount[4];
  *(v5 + 576) = v131;
  *(v5 + 528) = v133;
  *(v5 + 544) = v132;
  v135 = *&self->_joinReasonCount[10];
  v134 = *&self->_joinReasonCount[12];
  v136 = *&self->_joinReasonCount[8];
  *(v5 + 640) = self->_joinReasonCount[14];
  *(v5 + 608) = v135;
  *(v5 + 624) = v134;
  *(v5 + 592) = v136;
  v137 = [(NSMutableDictionary *)self->_disconnectReasonMap mutableCopy];
  v138 = *(v5 + 9056);
  *(v5 + 9056) = v137;

  *(v5 + 9077) = *(v4 + 885);
  *(v5 + 9078) = *(v4 + 886);
  *(v5 + 10592) = self->_compatibilityModeChangeCount;
  objc_storeStrong((v5 + 9536), self->_lastCompatibilityModeChangedTime);
  *(v5 + 9760) = self->_inCompatibilityModeEnabledDuration;
  *(v5 + 9108) = self->_bandAtSessionStart;
  *(v5 + 9083) = *(v4 + 891);
  *(v5 + 10848) = self->_rssiAtSessionStart;
  *(v5 + 9584) = self->_sessionTimeSinceLastSession;
  networkDetailsAtEnd = self->_networkDetailsAtEnd;
  v140 = networkDetailsAtEnd;
  if (!networkDetailsAtEnd)
  {
    v140 = [(WiFiUsageNetworkDetails *)self->_networkDetails copy];
  }

  objc_storeStrong((v5 + 9144), v140);
  if (!networkDetailsAtEnd)
  {
  }

  v141 = 10880;
  if (!self->_networkDetailsAtEnd)
  {
    v141 = 10872;
  }

  objc_storeStrong((v5 + 10872), *(&self->super.isa + v141));
  if (self->_networkDetailsAtEnd)
  {
    lastNetwork6eDisableModeChangedTime = 0;
  }

  else
  {
    lastNetwork6eDisableModeChangedTime = self->_lastNetwork6eDisableModeChangedTime;
  }

  objc_storeStrong((v5 + 10888), lastNetwork6eDisableModeChangedTime);
  v143 = 10904;
  if (!self->_networkDetailsAtEnd)
  {
    v143 = 10896;
  }

  *(v5 + 10896) = *(&self->super.isa + v143);
  v144 = 10864;
  if (!self->_networkDetailsAtEnd)
  {
    v144 = 10856;
  }

  *(v5 + 10856) = *(&self->super.isa + v144);
  objc_storeStrong((v5 + 10928), self->_ipV4DetailsPrevSession);
  *(v5 + 9084) = *(v4 + 892);
  objc_storeStrong((v5 + 10936), self->_ipV6DetailsPrevSession);
  *(v5 + 9085) = *(v4 + 893);
  *(v5 + 9086) = *(v4 + 894);
  v145 = [(NSMutableArray *)self->_prevNetworkNames copy];
  v146 = *(v5 + 10960);
  *(v5 + 10960) = v145;

  *(v5 + 9088) = *(v4 + 896);
  *(v5 + 9087) = *(v4 + 895);
  *(v5 + 10968) = self->_prevJoinReason;
  *(v5 + 10984) = self->_timeSincePrevJoin;
  objc_storeStrong((v5 + 10944), self->_lastCoexRealTimeOn);
  objc_storeStrong((v5 + 10952), self->_lastCoexRealTimeOff);
  *(v5 + 9095) = *(v4 + 903);
  *(v5 + 11072) = self->_savedPrevJoinReason;
  *(v5 + 11088) = self->_savedTimeSincePrevJoin;
  *(v5 + 11000) = self->_countRoamScan;
  *(v5 + 9093) = *(v4 + 901);
  *(v5 + 11008) = self->_countSSIDTransitionTargetInLastRoamScan;
  *(v5 + 11016) = self->_countRoamScanThatFoundSSIDTransitionTarget;
  *(v5 + 9094) = *(v4 + 902);
  *(v5 + 11024) = self->_countSSIDTransitionPotentialCandidatesInLastRoamScan;
  *(v5 + 11032) = self->_countSSIDTransitionPotentialCandidatesInLastRoamScanNotInTransitionableSet;
  *(v5 + 11048) = self->_lastRoamScanContainsRoamCandidateCount;
  *(v5 + 11056) = self->_lastRoamScanUniqueChannelsCount;
  *(v5 + 11064) = self->_lastRoamScanUniqueBandsCount;
  *(v5 + 11040) = self->_countRoamScanThatFoundSSIDTransitionPotentialCandidate;
  *(v5 + 11096) = self->_inPoorLinkSessionCount;
  *(v5 + 11104) = self->_inPoorLinkSessionDuration;
  *(v5 + 11112) = self->_tdAfterJoinAfterTDCount;
  *(v5 + 11128) = self->_min_subsequentTdAfterJoinAfterTDCount;
  *(v5 + 11136) = self->_max_subsequentTdAfterJoinAfterTDCount;
  *(v5 + 11144) = self->_tdSessionStartedByBadRSSICount;
  *(v5 + 11152) = self->_tdSessionStartedByTDRecommendedCount;
  *(v5 + 11160) = self->_tdSessionStartedBySymptomDNSFailureCount;
  *(v5 + 11168) = self->_tdEvalEndedCount;
  *(v5 + 11176) = self->_tdEvalCumulativeDuration;
  *(v5 + 11184) = self->_tdEvalStartedCount;
  *(v5 + 11192) = self->_tdEvalStartedByBadRSSICount;
  *(v5 + 11200) = self->_tdEvalStartedBySymptomsARPFailureCount;
  *(v5 + 11208) = self->_tdEvalStartedBySymptomsDNSFailCount;
  *(v5 + 11216) = self->_tdEvalStartedBySymptomsShortFlowCount;
  *(v5 + 11232) = self->_tdEvalStartedBySymptomsDataStallCount;
  *(v5 + 11240) = self->_tdEvalStartedBySymptomsDNSStallCount;
  *(v5 + 11208) = self->_tdEvalStartedBySymptomsDNSFailCount;
  *(v5 + 11248) = self->_tdEvalStartedByActiveProbingCount;
  *(v5 + 11256) = self->_tdEvalStartedByFGNetwAppChangeCount;
  *(v5 + 11264) = self->_tdEvalStartedByUserNotificationCount;
  *(v5 + 11272) = self->_tdEvalStartedByCheckReassocCount;
  objc_storeStrong((v5 + 11288), self->_lastUsbStatusChange);
  *(v5 + 9098) = *(v4 + 906);
  *(v5 + 11280) = self->_usbDeviceEventCount;
  *(v5 + 11296) = self->_usbInsertedDuration;
  objc_storeStrong((v5 + 11304), self->_lastAWDLSequenceUpdate);
  *(v5 + 11312) = self->_inAWDL_BestInfraScore;
  *(v5 + 11320) = self->_inAWDL_WorstInfraScore;
  *(v5 + 11328) = self->_inAWDL_BestP2PScore;
  *(v5 + 11336) = self->_inAWDL_WorstP2PScore;
  *(v5 + 11344) = self->_inAWDL_lastInfraScore;
  *(v5 + 11352) = self->_inAWDL_lastP2PScore;
  *(v5 + 11360) = self->_inAWDL_BestInfraScoreDuration;
  *(v5 + 11368) = self->_inAWDL_BestP2PScoreDuration;
  *(v5 + 11376) = self->_inAWDL_WorstInfraScoreDuration;
  *(v5 + 11384) = self->_inAWDL_WorstP2PScoreDuration;
  *(v5 + 11392) = self->_forwardedBssInwakeCount;
  *(v5 + 11400) = self->_forwardedBssInSleepCount;
  *(v5 + 11408) = self->_hostScanTriggersCount;
  *(v5 + 11416) = self->_roamScanTriggersCount;
  *(v5 + 11424) = self->_pnoScanTriggersCount;
  *(v5 + 11432) = self->_epnoScanTriggersCount;
  *(v5 + 11440) = self->_currentBssMsgInWakeCount;
  *(v5 + 11448) = self->_currentBssMsgInSleepCount;
  *(v5 + 11456) = self->_scanDataMsgInWakeCount;
  *(v5 + 11464) = self->_scanDataMsgInSleepCount;
  *(v5 + 11472) = self->_spmiMsgInAwakeCount;
  *(v5 + 11480) = self->_spmiMsgInSleepCount;
  *(v5 + 11488) = self->_spmiMsgDropRssiFilterCount;
  *(v5 + 11496) = self->_spmiMsgDropMaxFilterCount;
  *(v5 + 11504) = self->_spmiMsgDropSpmiFailCount;
  *(v5 + 11512) = self->_bssDropLowMemoryCount;
  *(v5 + 9112) = self->_maxPhyMode;
  *(v5 + 9099) = *(v4 + 907);
  *(v5 + 9100) = *(v4 + 908);
  return v5;
}

- (unint64_t)faultReasonCount:(unint64_t)count
{
  if (count - 1 > 0x24)
  {
    return 0;
  }

  else
  {
    return self->_faultReasonCount[count];
  }
}

- (void)processIPv4Changes:(id)changes
{
  changesCopy = changes;
  v5 = changesCopy;
  v8 = changesCopy;
  if (changesCopy && self->_ipV4DetailsPrevSession)
  {
    isValid = [changesCopy isValid];
    v5 = v8;
    if (isValid)
    {
      v7 = [(WiFiUsageNetworkIPv4Details *)self->_ipV4DetailsPrevSession isEqual:v8];
      v5 = v8;
      self->_hasDifferentIpv4DetailsThanPrevSession = !v7;
    }
  }

  else if (!changesCopy)
  {
    goto LABEL_8;
  }

  changesCopy = [v5 isValid];
  v5 = v8;
  if (changesCopy)
  {
    changesCopy = [(WiFiUsageSession *)self setIpV4Details:v8];
    v5 = v8;
  }

LABEL_8:

  MEMORY[0x2821F96F8](changesCopy, v5);
}

- (void)processIPv6Changes:(id)changes
{
  changesCopy = changes;
  v5 = changesCopy;
  v8 = changesCopy;
  if (changesCopy && self->_ipV6DetailsPrevSession)
  {
    isValid = [changesCopy isValid];
    v5 = v8;
    if (isValid)
    {
      v7 = [(WiFiUsageNetworkIPv6Details *)self->_ipV6DetailsPrevSession isEqual:v8];
      v5 = v8;
      self->_hasDifferentIpv6DetailsThanPrevSession = v7 ^ 1;
    }
  }

  else if (!changesCopy)
  {
    goto LABEL_8;
  }

  changesCopy = [v5 isValid];
  v5 = v8;
  if (changesCopy)
  {
    changesCopy = [(WiFiUsageSession *)self setIpV6Details:v8];
    v5 = v8;
  }

LABEL_8:

  MEMORY[0x2821F96F8](changesCopy, v5);
}

- (void)setRealtimeCoexStarted:(BOOL)started type:(unint64_t)type reasons:(id)reasons
{
  startedCopy = started;
  reasonsCopy = reasons;
  inCoexRealTime = self->_inCoexRealTime;
  v13 = reasonsCopy;
  if (startedCopy && !self->_inCoexRealTime)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    lastCoexRealTimeOn = self->_lastCoexRealTimeOn;
    self->_lastCoexRealTimeOn = v9;

    reasonsCopy = v13;
    inCoexRealTime = self->_inCoexRealTime;
  }

  if (inCoexRealTime && !startedCopy)
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    lastCoexRealTimeOff = self->_lastCoexRealTimeOff;
    self->_lastCoexRealTimeOff = v11;

    reasonsCopy = v13;
  }

  self->_inCoexRealTime = startedCopy;
}

- (void)setAwdlSequence:(id)sequence infraScore:(unint64_t)score p2pScore:(double)p2pScore
{
  v8 = [MEMORY[0x277CBEAA8] now];
  if (self->_isAssociated)
  {
    scoreCopy = score;
  }

  else
  {
    scoreCopy = 0;
  }

  [(WiFiUsageSession *)self tallyInfraScoreDuration:scoreCopy until:v8];
  [(WiFiUsageSession *)self tallyP2PScoreDuration:v8 until:p2pScore];
  lastAWDLSequenceUpdate = self->_lastAWDLSequenceUpdate;
  self->_lastAWDLSequenceUpdate = v8;
}

- (void)updateLinkRecoveryDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  if (disabledCopy)
  {
    if (!self->_linkRecoveryDisabled)
    {
      v8 = date;
      date = [(WiFiUsageSession *)self setLinkRecoveryDisabledTime:date];
      v6 = v8;
      ++self->_linkRecoveryDisabledCount;
    }
  }

  else if (self->_linkRecoveryDisabledTime)
  {
    v9 = date;
    [date timeIntervalSinceDate:?];
    self->_linkRecoveryDisabledDuration = v7 + self->_linkRecoveryDisabledDuration;
    date = [(WiFiUsageSession *)self setLinkRecoveryDisabledTime:0];
    v6 = v9;
  }

  self->_linkRecoveryDisabled = disabledCopy;

  MEMORY[0x2821F96F8](date, v6);
}

- (BOOL)infraIsPartOfSplitSSID
{
  if ([(WiFiUsageSession *)self bandAtSessionStart]!= 2)
  {
    return 0;
  }

  networkDetails = self->_networkDetails;

  return [(WiFiUsageNetworkDetails *)networkDetails isStandalone6E];
}

- (void)updateWithRoamingSuppression:(unsigned __int8)suppression
{
  suppressionCopy = suppression;
  v5 = [MEMORY[0x277CBEAA8] now];
  if (suppressionCopy)
  {
    if (self->_isRoamSuppressionEnabled)
    {
      goto LABEL_7;
    }

    ++self->_inRoamSuppressionEnabledCount;
    p_lastRoamSuppressionToggled = &self->_lastRoamSuppressionToggled;
  }

  else
  {
    if (!self->_isRoamSuppressionEnabled)
    {
      goto LABEL_7;
    }

    self->_roamsAfterSupprLifted = 0;
    p_lastRoamSuppressionToggled = &self->_lastRoamSuppressionToggled;
    obj = v5;
    [v5 timeIntervalSinceDate:self->_lastRoamSuppressionToggled];
    v5 = obj;
    self->_inRoamSuppressionEnabled = v7 + self->_inRoamSuppressionEnabled;
  }

  obja = v5;
  objc_storeStrong(p_lastRoamSuppressionToggled, v5);
  v5 = obja;
LABEL_7:
  self->_isRoamSuppressionEnabled = suppressionCopy != 0;
}

- (void)updateWithCompatibilityMode:(unsigned __int8)mode
{
  modeCopy = mode;
  isCompatibilityModeEnabled = self->_isCompatibilityModeEnabled;
  if (!mode && self->_isCompatibilityModeEnabled)
  {
    [(NSDate *)self->_lastCompatibilityModeChangedTime timeIntervalSinceNow];
    self->_inCompatibilityModeEnabledDuration = self->_inCompatibilityModeEnabledDuration - v6;
    isCompatibilityModeEnabled = self->_isCompatibilityModeEnabled;
  }

  if (isCompatibilityModeEnabled != modeCopy)
  {
    [(WiFiUsageSession *)self setIsCompatibilityModeEnabled:modeCopy != 0];
    ++self->_compatibilityModeChangeCount;
    v7 = [MEMORY[0x277CBEAA8] now];
    [(WiFiUsageSession *)self setLastCompatibilityModeChangedTime:v7];
  }
}

- (void)updateAssociatedNetworkDetails:(id)details
{
  detailsCopy = details;
  if (detailsCopy)
  {
    v18 = detailsCopy;
    v5 = [MEMORY[0x277CBEAA8] now];
    if (self->_networkDetails)
    {
      networkName = [v18 networkName];
      networkName2 = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];
      v8 = [networkName isEqualToString:networkName2];

      disable6eMode = [v18 disable6eMode];
      if (v8)
      {
        [(WiFiUsageSession *)self update6eModeStats:disable6eMode];
      }

      else
      {
        [(WiFiUsageSession *)self summarizeAndReset6eModeStats:disable6eMode];
      }
    }

    else
    {
      disable6eMode2 = [v18 disable6eMode];
      [(WiFiUsageSession *)self setNetworkDisable6eModeAtStart:disable6eMode2];

      disable6eMode = [v18 disable6eMode];
      if (disable6eMode)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0;
      }

      [(WiFiUsageSession *)self setLastNetwork6eDisableModeChangedTime:v11];
    }

    if (![(WiFiUsageSession *)self isSessionActive]|| !self->_networkDetails)
    {
      goto LABEL_17;
    }

    networkName3 = [v18 networkName];
    networkName4 = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];
    if ([networkName3 isEqualToString:networkName4])
    {
      connectedBss = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
      band = [connectedBss band];
      connectedBss2 = [v18 connectedBss];
      band2 = [connectedBss2 band];

      if (band == band2)
      {
LABEL_17:
        [(WiFiUsageSession *)self setNetworkDetails:v18];

        detailsCopy = v18;
        goto LABEL_18;
      }

      networkName3 = [(WiFiUsageNetworkDetails *)self->_networkDetails connectedBss];
      -[WiFiUsageSession updateBandUsageFor:With:](self, "updateBandUsageFor:With:", [networkName3 band], v5);
    }

    else
    {
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)update6eModeStats:(id)stats
{
  statsCopy = stats;
  disable6eMode = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
  v5 = [disable6eMode isEqualToString:statsCopy];

  if ((v5 & 1) == 0)
  {
    disable6eMode2 = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
    v7 = [disable6eMode2 isEqualToString:@"off"];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEAA8] now];
      v9 = v8;
      if (self->_lastNetwork6eDisableModeChangedTime)
      {
        [v8 timeIntervalSinceDate:?];
        self->_inNetwork6eModeOffDuration = v10 + self->_inNetwork6eModeOffDuration;
      }
    }

    disable6eMode3 = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];

    if (disable6eMode3)
    {
      ++self->_network6eDisabledModeChangeCount;
      v12 = [MEMORY[0x277CBEAA8] now];
      [(WiFiUsageSession *)self setLastNetwork6eDisableModeChangedTime:v12];
    }

    else
    {
      [(WiFiUsageSession *)self setLastNetwork6eDisableModeChangedTime:self->_sessionStartTime];
    }
  }

  networkDisable6eModeAtStart = [(WiFiUsageSession *)self networkDisable6eModeAtStart];

  if (!networkDisable6eModeAtStart)
  {
    [(WiFiUsageSession *)self setNetworkDisable6eModeAtStart:statsCopy];
  }
}

- (void)summarizeAndReset6eModeStats:(id)stats
{
  v4 = MEMORY[0x277CBEAA8];
  statsCopy = stats;
  v10 = [v4 now];
  disable6eMode = [(WiFiUsageNetworkDetails *)self->_networkDetails disable6eMode];
  if ([disable6eMode isEqualToString:@"off"])
  {
    lastNetwork6eDisableModeChangedTime = self->_lastNetwork6eDisableModeChangedTime;

    if (lastNetwork6eDisableModeChangedTime)
    {
      [v10 timeIntervalSinceDate:self->_lastNetwork6eDisableModeChangedTime];
      self->_inNetwork6eModeOffDuration = v8 + self->_inNetwork6eModeOffDuration;
    }
  }

  else
  {
  }

  [(WiFiUsageSession *)self setLastSSIDdisable6eModeAtStart:self->_networkDisable6eModeAtStart];
  [(WiFiUsageSession *)self setLastSSIDdisabled6eModeChangeCount:self->_network6eDisabledModeChangeCount];
  [(WiFiUsageSession *)self setLastSSIDIn6eModeOffDuration:self->_inNetwork6eModeOffDuration];
  [(WiFiUsageSession *)self setNetworkDisable6eModeAtStart:statsCopy];

  if (statsCopy)
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  [(WiFiUsageSession *)self setLastNetwork6eDisableModeChangedTime:v9];
}

- (void)setSSIDTransitionCandidates:(id)candidates SSIDTransitionPotentialCandidates:(id)potentialCandidates potentialCandidatesMinusCandidates:(id)minusCandidates roamCandidates:(unint64_t)roamCandidates uniqueChannels:(unint64_t)channels uniqueBands:(unint64_t)bands
{
  candidatesCopy = candidates;
  potentialCandidatesCopy = potentialCandidates;
  minusCandidatesCopy = minusCandidates;
  if ([(WiFiUsageSession *)self isSessionActive])
  {
    ++self->_countRoamScan;
    v16 = [candidatesCopy count];
    v17 = [potentialCandidatesCopy count];
    [(WiFiUsageSession *)self setLastRoamScanFoundSSIDTransitionTarget:v16 != 0];
    [(WiFiUsageSession *)self setCountSSIDTransitionTargetInLastRoamScan:v16];
    countRoamScanThatFoundSSIDTransitionTarget = self->_countRoamScanThatFoundSSIDTransitionTarget;
    if (v16)
    {
      ++countRoamScanThatFoundSSIDTransitionTarget;
    }

    self->_countRoamScanThatFoundSSIDTransitionTarget = countRoamScanThatFoundSSIDTransitionTarget;
    [(WiFiUsageSession *)self setLastRoamScanFoundSSIDTransitionPotentialCandidate:v17 != 0];
    [(WiFiUsageSession *)self setCountSSIDTransitionPotentialCandidatesInLastRoamScan:v17];
    countRoamScanThatFoundSSIDTransitionPotentialCandidate = self->_countRoamScanThatFoundSSIDTransitionPotentialCandidate;
    if (v17)
    {
      ++countRoamScanThatFoundSSIDTransitionPotentialCandidate;
    }

    self->_countRoamScanThatFoundSSIDTransitionPotentialCandidate = countRoamScanThatFoundSSIDTransitionPotentialCandidate;
    self->_countSSIDTransitionPotentialCandidatesInLastRoamScanNotInTransitionableSet = [minusCandidatesCopy count];
    self->_lastRoamScanContainsRoamCandidateCount = roamCandidates;
    self->_lastRoamScanUniqueChannelsCount = channels;
    self->_lastRoamScanUniqueBandsCount = bands;
  }
}

- (void)updateUsbInsertedDuration:(id)duration
{
  durationCopy = duration;
  v5 = durationCopy;
  lastUsbStatusChange = self->_lastUsbStatusChange;
  if (!lastUsbStatusChange)
  {
    lastUsbStatusChange = self->_sessionStartTime;
  }

  [(NSDate *)durationCopy timeIntervalSinceDate:lastUsbStatusChange];
  self->_usbInsertedDuration = v7 + self->_usbInsertedDuration;
  v8 = self->_lastUsbStatusChange;
  self->_lastUsbStatusChange = v5;
}

- (void)updateUsbStatus:(BOOL)status currentDevices:(id)devices
{
  devicesCopy = devices;
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [devicesCopy count];
  if (self->_lastUsbStatusChange)
  {
    if (!self->_anyUsbDeviceConnected && v6)
    {
      objc_storeStrong(&self->_lastUsbStatusChange, v5);
      goto LABEL_7;
    }

    if (!self->_anyUsbDeviceConnected || v6 != 0)
    {
      goto LABEL_7;
    }
  }

  else if (![devicesCopy count])
  {
    goto LABEL_7;
  }

  [(WiFiUsageSession *)self updateUsbInsertedDuration:v5];
LABEL_7:
  self->_anyUsbDeviceConnected = [devicesCopy count] != 0;
  ++self->_usbDeviceEventCount;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sessionName = [(WiFiUsageSession *)self sessionName];
  if (self->_isSessionActive)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  sessionStartTime = self->_sessionStartTime;
  sessionEndTime = self->_sessionEndTime;
  networkName = [(WiFiUsageNetworkDetails *)self->_networkDetails networkName];
  v9 = [v3 stringWithFormat:@"%@ session (active:%@ start:%@ end:%@ network:%@)", sessionName, v5, sessionStartTime, sessionEndTime, networkName];

  return v9;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  sessionName = [(WiFiUsageSession *)self sessionName];
  v5 = sessionName;
  if (self->_isSessionActive)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  sessionStartTime = self->_sessionStartTime;
  v8 = [v3 stringWithFormat:@"%@ session (active:%@ start:%@ end:%@ network:<REDACTED>)", sessionName, v6, sessionStartTime, self->_sessionEndTime];

  return v8;
}

- (void)tallyAssociatedDuration:(id)duration
{
  lastLinkStateChangedTime = self->_lastLinkStateChangedTime;
  if (lastLinkStateChangedTime)
  {
    sessionStartTime = self->_sessionStartTime;
    durationCopy = duration;
    v7 = [(NSDate *)lastLinkStateChangedTime laterDate:sessionStartTime];
    [durationCopy timeIntervalSinceDate:v7];
    v9 = v8;

    self->_associatedDuration = v9 + self->_associatedDuration;

    [(WiFiUsageSession *)self setLastLinkStateChangedTime:0];
  }
}

- (void)tallyInfraScoreDuration:(unint64_t)duration until:(id)until
{
  untilCopy = until;
  inAWDL_BestInfraScore = self->_inAWDL_BestInfraScore;
  if (self->_inAWDL_lastInfraScore == inAWDL_BestInfraScore)
  {
    if (self->_lastAWDLSequenceUpdate)
    {
      v11 = untilCopy;
      [untilCopy timeIntervalSinceDate:?];
      untilCopy = v11;
      self->_inAWDL_BestInfraScoreDuration = v8 + self->_inAWDL_BestInfraScoreDuration;
      inAWDL_BestInfraScore = self->_inAWDL_BestInfraScore;
    }

    else
    {
      inAWDL_BestInfraScore = self->_inAWDL_lastInfraScore;
    }
  }

  if (inAWDL_BestInfraScore < duration || !self->_lastAWDLSequenceUpdate)
  {
    self->_inAWDL_BestInfraScore = duration;
    self->_inAWDL_BestInfraScoreDuration = 0.0;
  }

  inAWDL_WorstInfraScore = self->_inAWDL_WorstInfraScore;
  if (self->_inAWDL_lastInfraScore == inAWDL_WorstInfraScore)
  {
    if (self->_lastAWDLSequenceUpdate)
    {
      v12 = untilCopy;
      [untilCopy timeIntervalSinceDate:?];
      untilCopy = v12;
      self->_inAWDL_WorstInfraScoreDuration = v10 + self->_inAWDL_WorstInfraScoreDuration;
      inAWDL_WorstInfraScore = self->_inAWDL_WorstInfraScore;
    }

    else
    {
      inAWDL_WorstInfraScore = self->_inAWDL_lastInfraScore;
    }
  }

  if (inAWDL_WorstInfraScore > duration || !self->_lastAWDLSequenceUpdate)
  {
    self->_inAWDL_WorstInfraScore = duration;
    self->_inAWDL_WorstInfraScoreDuration = 0.0;
  }

  self->_inAWDL_lastInfraScore = duration;
}

- (void)tallyP2PScoreDuration:(double)duration until:(id)until
{
  untilCopy = until;
  inAWDL_BestP2PScore = self->_inAWDL_BestP2PScore;
  if (self->_inAWDL_lastP2PScore == inAWDL_BestP2PScore && self->_lastAWDLSequenceUpdate)
  {
    v11 = untilCopy;
    [untilCopy timeIntervalSinceDate:?];
    untilCopy = v11;
    self->_inAWDL_BestP2PScoreDuration = v8 + self->_inAWDL_BestP2PScoreDuration;
    inAWDL_BestP2PScore = self->_inAWDL_BestP2PScore;
  }

  if (inAWDL_BestP2PScore < duration || !self->_lastAWDLSequenceUpdate)
  {
    self->_inAWDL_BestP2PScore = duration;
    self->_inAWDL_BestP2PScoreDuration = 0.0;
  }

  inAWDL_WorstP2PScore = self->_inAWDL_WorstP2PScore;
  if (self->_inAWDL_lastP2PScore == inAWDL_WorstP2PScore && self->_lastAWDLSequenceUpdate)
  {
    v12 = untilCopy;
    [untilCopy timeIntervalSinceDate:?];
    untilCopy = v12;
    self->_inAWDL_WorstP2PScoreDuration = v10 + self->_inAWDL_WorstP2PScoreDuration;
    inAWDL_WorstP2PScore = self->_inAWDL_WorstP2PScore;
  }

  if (inAWDL_WorstP2PScore > duration || !self->_lastAWDLSequenceUpdate)
  {
    self->_inAWDL_WorstP2PScore = duration;
    self->_inAWDL_WorstP2PScoreDuration = 0.0;
  }

  self->_inAWDL_lastP2PScore = duration;
}

- (void)updateScanForwardStats:(id)stats
{
  statsCopy = stats;
  v4 = [statsCopy objectForKey:@"SCAN_FWD_STATS_BSS_AWAKE_CNT"];
  v5 = v4;
  if (v4)
  {
    self->_forwardedBssInwakeCount += [v4 unsignedIntegerValue];
  }

  v6 = [statsCopy objectForKey:@"SCAN_FWD_STATS_BSS_SLEEP_CNT"];

  if (v6)
  {
    self->_forwardedBssInSleepCount += [v6 unsignedIntegerValue];
  }

  v7 = [statsCopy objectForKey:@"SCAN_FWD_STATS_HOST_SCAN_CNT"];

  if (v7)
  {
    self->_hostScanTriggersCount += [v7 unsignedIntegerValue];
  }

  v8 = [statsCopy objectForKey:@"SCAN_FWD_STATS_ROAM_SCAN_CNT"];

  if (v8)
  {
    self->_roamScanTriggersCount += [v8 unsignedIntegerValue];
  }

  v9 = [statsCopy objectForKey:@"SCAN_FWD_STATS_PNO_SCAN_CNT"];

  if (v9)
  {
    self->_pnoScanTriggersCount += [v9 unsignedIntegerValue];
  }

  v10 = [statsCopy objectForKey:@"SCAN_FWD_STATS_EPNO_SCAN_CNT"];

  if (v10)
  {
    self->_epnoScanTriggersCount += [v10 unsignedIntegerValue];
  }

  v11 = [statsCopy objectForKey:@"SCAN_FWD_STATS_CUR_BSS_AWAKE_CNT"];

  if (v11)
  {
    self->_currentBssMsgInWakeCount += [v11 unsignedIntegerValue];
  }

  v12 = [statsCopy objectForKey:@"SCAN_FWD_STATS_CUR_BSS_SLEEP_CNT"];

  if (v12)
  {
    self->_currentBssMsgInSleepCount += [v12 unsignedIntegerValue];
  }

  v13 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SCAN_DATA_AWAKE_CNT"];

  if (v13)
  {
    self->_scanDataMsgInWakeCount += [v13 unsignedIntegerValue];
  }

  v14 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SCAN_DATA_SLEEP_CNT"];

  if (v14)
  {
    self->_scanDataMsgInSleepCount += [v14 unsignedIntegerValue];
  }

  v15 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SPMI_MSG_AWAKE_CNT"];

  if (v15)
  {
    self->_spmiMsgInAwakeCount += [v15 unsignedIntegerValue];
  }

  v16 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SPMI_MSG_SLEEP_CNT"];

  if (v16)
  {
    self->_spmiMsgInSleepCount += [v16 unsignedIntegerValue];
  }

  v17 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SPMI_MSG_DROP_RSSI_CNT"];

  if (v17)
  {
    self->_spmiMsgDropRssiFilterCount += [v17 unsignedIntegerValue];
  }

  v18 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SPMI_MSG_DROP_MAX_CNT"];

  if (v18)
  {
    self->_spmiMsgDropMaxFilterCount += [v18 unsignedIntegerValue];
  }

  v19 = [statsCopy objectForKey:@"SCAN_FWD_STATS_SPMI_MSG_DROP_FAIL_CNT"];

  if (v19)
  {
    self->_spmiMsgDropSpmiFailCount += [v19 unsignedIntegerValue];
  }

  v20 = [statsCopy objectForKey:@"SCAN_FWD_STATS_BSS_DROP_LOW_MEM_CNT"];

  if (v20)
  {
    self->_bssDropLowMemoryCount += [v20 unsignedIntegerValue];
  }
}

- (BOOL)canSubmitToCA
{
  v18 = *MEMORY[0x277D85DE8];
  ca_config = self->_ca_config;
  if (ca_config && ![(WiFiUsageSessionCAConfig *)ca_config canSubmit])
  {
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v6)
    {
      sessionName = [(WiFiUsageSession *)self sessionName];
      metricName = [(WiFiUsageSession *)self metricName];
      ca_config = [(WiFiUsageSession *)self ca_config];
      v10 = 138413058;
      v11 = sessionName;
      v12 = 2080;
      v13 = "[WiFiUsageSession canSubmitToCA]";
      v14 = 2112;
      v15 = metricName;
      v16 = 2112;
      v17 = ca_config;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@ %s - skipping %@ submission (%@)", &v10, 0x2Au);

      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- ($06992ED503081CE345EDB9EEA121564E)bandUsageDuration
{
  v3 = *&self[361].var0[2];
  *retstr->var0 = *self[361].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setBandUsageDuration:(id *)duration
{
  v3 = *duration->var0;
  *&self->_bandUsageDuration.valueByBand[2] = *&duration->var0[2];
  *self->_bandUsageDuration.valueByBand = v3;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSICountByBand
{
  v3 = *&self[362].var0[2];
  *retstr->var0 = *self[362].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setStrongestRSSICountByBand:(id *)band
{
  v3 = *band->var0;
  *&self->_strongestRSSICountByBand.valueByBand[2] = *&band->var0[2];
  *self->_strongestRSSICountByBand.valueByBand = v3;
}

- ($FEE1510A43A03BFC9F45CB2D5A0A197D)strongestRSSIByBand
{
  v3 = *&self[363].var0[2];
  *retstr->var0 = *self[363].var0;
  *&retstr->var0[2] = v3;
  return self;
}

- (void)setStrongestRSSIByBand:(id *)band
{
  v3 = *band->var0;
  *&self->_strongestRSSIByBand.valueByBand[2] = *&band->var0[2];
  *self->_strongestRSSIByBand.valueByBand = v3;
}

- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsSmllstCurrentToBestRssiByBandTransition
{
  v3 = *&self[132].var1[2][2];
  *&retstr->var0[1][1] = *&self[132].var0[2][2];
  *&retstr->var0[2][0] = v3;
  *&retstr->var0[2][2] = *&self[133].var0[0][1];
  *&retstr->var1[2][2] = self[133].var0[1][0];
  v4 = *&self[132].var0[2][0];
  *&retstr->var0[0][0] = *&self[132].var0[1][1];
  *&retstr->var0[0][2] = v4;
  return self;
}

- (void)setRoamNeighsSmllstCurrentToBestRssiByBandTransition:(id *)transition
{
  v3 = *&transition->var0[0][0];
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][2] = *&transition->var0[0][2];
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[0][0] = v3;
  v4 = *&transition->var0[1][1];
  v5 = *&transition->var0[2][0];
  v6 = *&transition->var0[2][2];
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valid[2][2] = *&transition->var1[2][2];
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][2] = v6;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[2][0] = v5;
  *&self->_roamNeighsSmllstCurrentToBestRssiByBandTransition.valueByBands[1][1] = v4;
}

- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsLrgstCurrentToBestRssiByBandTransition
{
  *&retstr->var1[2][2] = self[134].var0[1][0];
  v3 = *&self[133].var1[2][2];
  *&retstr->var0[1][1] = *&self[133].var0[2][2];
  *&retstr->var0[2][0] = v3;
  *&retstr->var0[2][2] = *&self[134].var0[0][1];
  v4 = *&self[133].var0[2][0];
  *&retstr->var0[0][0] = *&self[133].var0[1][1];
  *&retstr->var0[0][2] = v4;
  return self;
}

- (void)setRoamNeighsLrgstCurrentToBestRssiByBandTransition:(id *)transition
{
  v3 = *&transition->var0[1][1];
  v4 = *&transition->var0[2][0];
  v5 = *&transition->var0[2][2];
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valid[2][2] = *&transition->var1[2][2];
  v6 = *&transition->var0[0][2];
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][0] = *&transition->var0[0][0];
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[0][2] = v6;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][0] = v4;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[2][2] = v5;
  *&self->_roamNeighsLrgstCurrentToBestRssiByBandTransition.valueByBands[1][1] = v3;
}

- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsSmllstCurrentToNextBestRssiByBandTransition
{
  v3 = *&self[134].var1[2][2];
  *&retstr->var0[1][1] = *&self[134].var0[2][2];
  *&retstr->var0[2][0] = v3;
  *&retstr->var0[2][2] = *&self[135].var0[0][1];
  *&retstr->var1[2][2] = self[135].var0[1][0];
  v4 = *&self[134].var0[2][0];
  *&retstr->var0[0][0] = *&self[134].var0[1][1];
  *&retstr->var0[0][2] = v4;
  return self;
}

- (void)setRoamNeighsSmllstCurrentToNextBestRssiByBandTransition:(id *)transition
{
  v3 = *&transition->var0[0][0];
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][2] = *&transition->var0[0][2];
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[0][0] = v3;
  v4 = *&transition->var0[1][1];
  v5 = *&transition->var0[2][0];
  v6 = *&transition->var0[2][2];
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valid[2][2] = *&transition->var1[2][2];
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][2] = v6;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[2][0] = v5;
  *&self->_roamNeighsSmllstCurrentToNextBestRssiByBandTransition.valueByBands[1][1] = v4;
}

- ($13477CEFC6EEA4B326536BBEC35DF1AE)roamNeighsLrgstCurrentToNextBestRssiByBandTransition
{
  *&retstr->var1[2][2] = self[136].var0[1][0];
  v3 = *&self[135].var1[2][2];
  *&retstr->var0[1][1] = *&self[135].var0[2][2];
  *&retstr->var0[2][0] = v3;
  *&retstr->var0[2][2] = *&self[136].var0[0][1];
  v4 = *&self[135].var0[2][0];
  *&retstr->var0[0][0] = *&self[135].var0[1][1];
  *&retstr->var0[0][2] = v4;
  return self;
}

- (void)setRoamNeighsLrgstCurrentToNextBestRssiByBandTransition:(id *)transition
{
  v3 = *&transition->var0[1][1];
  v4 = *&transition->var0[2][0];
  v5 = *&transition->var0[2][2];
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valid[2][2] = *&transition->var1[2][2];
  v6 = *&transition->var0[0][2];
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][0] = *&transition->var0[0][0];
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[0][2] = v6;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][0] = v4;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[2][2] = v5;
  *&self->_roamNeighsLrgstCurrentToNextBestRssiByBandTransition.valueByBands[1][1] = v3;
}

@end
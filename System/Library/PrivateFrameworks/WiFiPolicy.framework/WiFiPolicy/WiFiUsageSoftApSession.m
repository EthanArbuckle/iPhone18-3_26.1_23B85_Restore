@interface WiFiUsageSoftApSession
- (WiFiUsageSoftApSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)eventDictionary:(BOOL)a3;
- (void)addSoftApClientEvent:(BOOL)a3 identifier:(id)a4 isAppleClient:(BOOL)a5 isInstantHotspot:(BOOL)a6 isAutoHotspot:(BOOL)a7 isHidden:(BOOL)a8;
- (void)addSoftApCoexEvent:(unint64_t)a3 deniedUnii1ChannelMap:(unint64_t)a4 deniedUnii2aChannelMap:(unint64_t)a5 deniedUnii2cChannelMap:(unint64_t)a6 deniedUnii3ChannelMap:(unint64_t)a7;
- (void)summarizeSession;
@end

@implementation WiFiUsageSoftApSession

- (WiFiUsageSoftApSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4
{
  v6.receiver = self;
  v6.super_class = WiFiUsageSoftApSession;
  v4 = [(WiFiUsageSession *)&v6 initWithSessionType:6 andInterfaceName:a3 andCapabilities:a4];
  [(WiFiUsageSoftApSession *)v4 setTwoFourGHzDeniedChannelCount:0];
  [(WiFiUsageSoftApSession *)v4 setFiveGHzDeniedUnii1ChannelCount:0];
  [(WiFiUsageSoftApSession *)v4 setFiveGHzDeniedUnii2aChannelCount:0];
  [(WiFiUsageSoftApSession *)v4 setFiveGHzDeniedUnii2cChannelCount:0];
  [(WiFiUsageSoftApSession *)v4 setFiveGHzDeniedUnii3ChannelCount:0];
  return v4;
}

- (void)addSoftApClientEvent:(BOOL)a3 identifier:(id)a4 isAppleClient:(BOOL)a5 isInstantHotspot:(BOOL)a6 isAutoHotspot:(BOOL)a7 isHidden:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v14 = a4;
  v15 = v14;
  if (v12)
  {
    if (self->_lastChannel >= 0xE)
    {
      v16 = &OBJC_IVAR___WiFiUsageSoftApSession__fiveGHzClientConnectCount;
    }

    else
    {
      v16 = &OBJC_IVAR___WiFiUsageSoftApSession__twoFourGHzClientConnectCount;
    }

    ++*(&self->super.super.isa + *v16);
    v17 = &OBJC_IVAR___WiFiUsageSoftApSession__broadcastClientConnectCount;
    if (v8)
    {
      v17 = &OBJC_IVAR___WiFiUsageSoftApSession__hiddenClientConnectCount;
    }

    ++*(&self->super.super.isa + *v17);
    v18 = &OBJC_IVAR___WiFiUsageSoftApSession__otherClientConnectCount;
    if (v11)
    {
      v18 = &OBJC_IVAR___WiFiUsageSoftApSession__appleClientConnectCount;
    }

    ++*(&self->super.super.isa + *v18);
    if (v10)
    {
      ++self->_instantHotspotClientConnectCount;
    }

    if (v9)
    {
      ++self->_autoHotspotClientConnectCount;
    }

    v19 = v14;
    if (v14)
    {
      [(NSMutableSet *)self->_connectedClients addObject:v14];
    }

    v14 = [(NSMutableSet *)self->_connectedClients count];
    v15 = v19;
    if (v14 > self->_maxConnectedClientCount)
    {
      v14 = [(NSMutableSet *)self->_connectedClients count];
      v15 = v19;
      self->_maxConnectedClientCount = v14;
    }
  }

  else
  {
    ++self->_clientDisconnectCount;
    if (v14)
    {
      v20 = v14;
      v14 = [(NSMutableSet *)self->_connectedClients removeObject:v14];
      v15 = v20;
    }
  }

  MEMORY[0x2821F96F8](v14, v15);
}

- (void)addSoftApCoexEvent:(unint64_t)a3 deniedUnii1ChannelMap:(unint64_t)a4 deniedUnii2aChannelMap:(unint64_t)a5 deniedUnii2cChannelMap:(unint64_t)a6 deniedUnii3ChannelMap:(unint64_t)a7
{
  [(WiFiUsageSoftApSession *)self setTwoFourGHzDeniedChannelCount:a3];
  [(WiFiUsageSoftApSession *)self setFiveGHzDeniedUnii1ChannelCount:a4];
  [(WiFiUsageSoftApSession *)self setFiveGHzDeniedUnii2aChannelCount:a5];
  [(WiFiUsageSoftApSession *)self setFiveGHzDeniedUnii2cChannelCount:a6];

  [(WiFiUsageSoftApSession *)self setFiveGHzDeniedUnii3ChannelCount:a7];
}

- (id)eventDictionary:(BOOL)a3
{
  v51[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(WiFiUsageSession *)self sessionName];
  [v5 setObject:v6 forKeyedSubscript:@"SessionName"];

  [(WiFiUsageSession *)self sessionDuration];
  v7 = [WiFiUsagePrivacyFilter numberWithDuration:?];
  [v5 setObject:v7 forKeyedSubscript:@"SessionDuration"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WiFiUsageSession sessionPid](self, "sessionPid")}];
  [v5 setObject:v8 forKeyedSubscript:@"SessionPid"];

  [(WiFiUsageSession *)self sessionTimeSinceLastSession];
  v9 = [WiFiUsagePrivacyFilter numberWithDuration:?];
  [v5 setObject:v9 forKeyedSubscript:@"SessionTimeSinceLastSession"];

  [v5 setObject:self->_requester forKeyedSubscript:@"Requester"];
  [v5 setObject:self->_status forKeyedSubscript:@"Status"];
  [v5 setObject:self->_tearDownReason forKeyedSubscript:@"TearDownReason"];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastHiddenState];
  [v5 setObject:v10 forKeyedSubscript:@"LastHiddenState"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_lastChannel];
  [v5 setObject:v11 forKeyedSubscript:@"LastChannel"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_twoFourGHzChannelCount];
  [v5 setObject:v12 forKeyedSubscript:@"TwoFourGHzChannelCount"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzChannelCount];
  [v5 setObject:v13 forKeyedSubscript:@"FiveGHzChannelCount"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_appleClientConnectCount];
  [v5 setObject:v14 forKeyedSubscript:@"AppleClientConnectCount"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_otherClientConnectCount];
  [v5 setObject:v15 forKeyedSubscript:@"OtherClientConnectCount"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_hiddenClientConnectCount];
  [v5 setObject:v16 forKeyedSubscript:@"HiddenClientConnectCount"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_broadcastClientConnectCount];
  [v5 setObject:v17 forKeyedSubscript:@"BroadcastClientConnectCount"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_autoHotspotClientConnectCount];
  [v5 setObject:v18 forKeyedSubscript:@"AutoHotspotClientConnectCount"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_instantHotspotClientConnectCount];
  [v5 setObject:v19 forKeyedSubscript:@"InstantHotspotClientConnectCount"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_twoFourGHzClientConnectCount];
  [v5 setObject:v20 forKeyedSubscript:@"TwoFourGHzClientConnectCount"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzClientConnectCount];
  [v5 setObject:v21 forKeyedSubscript:@"FiveGHzClientConnectCount"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_clientDisconnectCount];
  [v5 setObject:v22 forKeyedSubscript:@"ClientDisconnectCount"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxConnectedClientCount];
  [v5 setObject:v23 forKeyedSubscript:@"MaxConnectedClientCount"];

  lowPowerModeDuration = self->_lowPowerModeDuration;
  [(WiFiUsageSession *)self sessionDuration];
  v26 = [WiFiUsagePrivacyFilter timePercentage:lowPowerModeDuration overTotalDuration:v25];
  [v5 setObject:v26 forKeyedSubscript:@"LowPowerModeDuration"];

  infraActiveDuration = self->_infraActiveDuration;
  [(WiFiUsageSession *)self sessionDuration];
  v29 = [WiFiUsagePrivacyFilter timePercentage:infraActiveDuration overTotalDuration:v28];
  [v5 setObject:v29 forKeyedSubscript:@"InfraActiveDuration"];

  awdlActiveDuration = self->_awdlActiveDuration;
  [(WiFiUsageSession *)self sessionDuration];
  v32 = [WiFiUsagePrivacyFilter timePercentage:awdlActiveDuration overTotalDuration:v31];
  [v5 setObject:v32 forKeyedSubscript:@"AwdlActiveDuration"];

  v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_requestToUpLatency];
  [v5 setObject:v33 forKeyedSubscript:@"RequestToUpLatency"];

  v34 = [WiFiUsagePrivacyFilter numberWithDuration:self->_idleTimeBeforeTeardownSec];
  [v5 setObject:v34 forKeyedSubscript:@"IdleTimeBeforeTeardownSec"];

  v35 = [WiFiUsagePrivacyFilter numberWithDuration:self->_idleTimeAfterLastClientDisconnectedSec];
  [v5 setObject:v35 forKeyedSubscript:@"IdleTimeAfterLastClientDisconnectedSec"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_infraStateChangedCount];
  [v5 setObject:v36 forKeyedSubscript:@"InfraStateChangedCount"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_awdlStateChangedCount];
  [v5 setObject:v37 forKeyedSubscript:@"AwdlStateChangedCount"];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_knownNetworkScanCount];
  [v5 setObject:v38 forKeyedSubscript:@"KnownNetworkScanCount"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_hiddenTransitionCount];
  [v5 setObject:v39 forKeyedSubscript:@"HiddenTransitionCount"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bandTransitionCount];
  [v5 setObject:v40 forKeyedSubscript:@"BandTransitionCount"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_twoFourGHzDeniedChannelCount];
  [v5 setObject:v41 forKeyedSubscript:@"TwoFourGHzDeniedChannelCount"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzDeniedUnii1ChannelCount];
  [v5 setObject:v42 forKeyedSubscript:@"FiveGHzDeniedUnii1ChannelCount"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzDeniedUnii2aChannelCount];
  [v5 setObject:v43 forKeyedSubscript:@"FiveGHzDeniedUnii2aChannelCount"];

  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzDeniedUnii2cChannelCount];
  [v5 setObject:v44 forKeyedSubscript:@"FiveGHzDeniedUnii2cChannelCount"];

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzDeniedUnii3ChannelCount];
  [v5 setObject:v45 forKeyedSubscript:@"FiveGHzDeniedUnii3ChannelCount"];

  v51[0] = self->_appliedCountryCode;
  v46 = [MEMORY[0x277CCACA8] stringWithCString:v51 encoding:4];
  [v5 setObject:v46 forKeyedSubscript:@"CountryCodeApplied"];

  v47 = [MEMORY[0x277CCABB0] numberWithBool:self->_compatibilityEnabled];
  [v5 setObject:v47 forKeyedSubscript:@"MaximizeCompatibilityEnabled"];

  if (!a3)
  {
    v48 = [(WiFiUsageSession *)self sessionStartTime];
    [v5 setObject:v48 forKeyedSubscript:@"SessionStartTimestamp"];
  }

  v49 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)summarizeSession
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = v3;
  if (self->_lastInfraActiveTime)
  {
    [v3 timeIntervalSinceDate:?];
    self->_infraActiveDuration = v5 + self->_infraActiveDuration;
    [(WiFiUsageSoftApSession *)self setLastInfraActiveTime:0];
  }

  if (self->_lastAwdlActiveTime)
  {
    [v4 timeIntervalSinceDate:?];
    self->_awdlActiveDuration = v6 + self->_awdlActiveDuration;
    [(WiFiUsageSoftApSession *)self setLastAwdlActiveTime:0];
  }

  v7.receiver = self;
  v7.super_class = WiFiUsageSoftApSession;
  [(WiFiUsageSession *)&v7 summarizeSession];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(WiFiUsageSession *)self type];
  v6 = [(WiFiUsageSession *)self interfaceName];
  v7 = [(WiFiUsageSession *)self capabilities];
  v8 = [v4 initWithSessionType:v5 andInterfaceName:v6 andCapabilities:v7];

  v9 = [(WiFiUsageSession *)self completionQueue];
  [v8 setCompletionQueue:v9];

  v10 = [(WiFiUsageSession *)self completionContext];
  [v8 setCompletionContext:v10];

  v11 = [(WiFiUsageSession *)self completionHandler];
  [v8 setCompletionHandler:v11];

  [(WiFiUsageSession *)self sessionDuration];
  [v8 setSessionDuration:?];
  v12 = [(WiFiUsageSession *)self sessionStartTime];
  [v8 setSessionStartTime:v12];

  [v8 setIsSessionActive:{-[WiFiUsageSession isSessionActive](self, "isSessionActive")}];
  [v8 setSessionPid:{-[WiFiUsageSession sessionPid](self, "sessionPid")}];
  [v8 setRequester:self->_requester];
  [v8 setStatus:self->_status];
  [v8 setLastAwdlActiveTime:self->_lastAwdlActiveTime];
  [v8 setLastInfraActiveTime:self->_lastInfraActiveTime];
  [v8 setAppleClientConnectCount:self->_appleClientConnectCount];
  [v8 setOtherClientConnectCount:self->_otherClientConnectCount];
  [v8 setHiddenClientConnectCount:self->_hiddenClientConnectCount];
  [v8 setBroadcastClientConnectCount:self->_broadcastClientConnectCount];
  [v8 setTwoFourGHzClientConnectCount:self->_twoFourGHzClientConnectCount];
  [v8 setFiveGHzClientConnectCount:self->_fiveGHzChannelCount];
  [v8 setClientDisconnectCount:self->_clientDisconnectCount];
  [v8 setMaxConnectedClientCount:self->_maxConnectedClientCount];
  [v8 setInstantHotspotClientConnectCount:self->_instantHotspotClientConnectCount];
  [v8 setAutoHotspotClientConnectCount:self->_autoHotspotClientConnectCount];
  [v8 setLastHiddenState:self->_lastHiddenState];
  [v8 setLastChannel:self->_lastChannel];
  [v8 setTwoFourGHzChannelCount:self->_twoFourGHzChannelCount];
  [v8 setFiveGHzChannelCount:self->_fiveGHzChannelCount];
  [v8 setLowPowerModeDuration:self->_lowPowerModeDuration];
  [v8 setInfraActiveDuration:self->_infraActiveDuration];
  [v8 setAwdlActiveDuration:self->_awdlActiveDuration];
  [v8 setRequestToUpLatency:self->_requestToUpLatency];
  [v8 setIdleTimeBeforeTeardownSec:self->_idleTimeBeforeTeardownSec];
  [v8 setIdleTimeAfterLastClientDisconnectedSec:self->_idleTimeAfterLastClientDisconnectedSec];
  [v8 setCompatibilityEnabled:self->_compatibilityEnabled];
  [v8 setInfraStateChangedCount:self->_infraStateChangedCount];
  [v8 setAwdlStateChangedCount:self->_awdlStateChangedCount];
  [v8 setKnownNetworkScanCount:self->_knownNetworkScanCount];
  [v8 setHiddenTransitionCount:self->_hiddenTransitionCount];
  [v8 setBandTransitionCount:self->_bandTransitionCount];
  [v8 setTwoFourGHzDeniedChannelCount:self->_twoFourGHzDeniedChannelCount];
  [v8 setFiveGHzDeniedUnii1ChannelCount:self->_fiveGHzDeniedUnii1ChannelCount];
  [v8 setFiveGHzDeniedUnii2aChannelCount:self->_fiveGHzDeniedUnii2aChannelCount];
  [v8 setFiveGHzDeniedUnii2cChannelCount:self->_fiveGHzDeniedUnii2cChannelCount];
  [v8 setFiveGHzDeniedUnii3ChannelCount:self->_fiveGHzDeniedUnii3ChannelCount];
  [v8 setAppliedCountryCode:self->_appliedCountryCode];
  [v8 setConnectedClients:self->_connectedClients];
  [v8 setTearDownReason:self->_tearDownReason];
  return v8;
}

@end
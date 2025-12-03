@interface WiFiUsageSoftApSession
- (WiFiUsageSoftApSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities;
- (id)copyWithZone:(_NSZone *)zone;
- (id)eventDictionary:(BOOL)dictionary;
- (void)addSoftApClientEvent:(BOOL)event identifier:(id)identifier isAppleClient:(BOOL)client isInstantHotspot:(BOOL)hotspot isAutoHotspot:(BOOL)autoHotspot isHidden:(BOOL)hidden;
- (void)addSoftApCoexEvent:(unint64_t)event deniedUnii1ChannelMap:(unint64_t)map deniedUnii2aChannelMap:(unint64_t)channelMap deniedUnii2cChannelMap:(unint64_t)unii2cChannelMap deniedUnii3ChannelMap:(unint64_t)unii3ChannelMap;
- (void)summarizeSession;
@end

@implementation WiFiUsageSoftApSession

- (WiFiUsageSoftApSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v6.receiver = self;
  v6.super_class = WiFiUsageSoftApSession;
  v4 = [(WiFiUsageSession *)&v6 initWithSessionType:6 andInterfaceName:name andCapabilities:capabilities];
  [(WiFiUsageSoftApSession *)v4 setTwoFourGHzDeniedChannelCount:0];
  [(WiFiUsageSoftApSession *)v4 setFiveGHzDeniedUnii1ChannelCount:0];
  [(WiFiUsageSoftApSession *)v4 setFiveGHzDeniedUnii2aChannelCount:0];
  [(WiFiUsageSoftApSession *)v4 setFiveGHzDeniedUnii2cChannelCount:0];
  [(WiFiUsageSoftApSession *)v4 setFiveGHzDeniedUnii3ChannelCount:0];
  return v4;
}

- (void)addSoftApClientEvent:(BOOL)event identifier:(id)identifier isAppleClient:(BOOL)client isInstantHotspot:(BOOL)hotspot isAutoHotspot:(BOOL)autoHotspot isHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  autoHotspotCopy = autoHotspot;
  hotspotCopy = hotspot;
  clientCopy = client;
  eventCopy = event;
  identifierCopy = identifier;
  v15 = identifierCopy;
  if (eventCopy)
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
    if (hiddenCopy)
    {
      v17 = &OBJC_IVAR___WiFiUsageSoftApSession__hiddenClientConnectCount;
    }

    ++*(&self->super.super.isa + *v17);
    v18 = &OBJC_IVAR___WiFiUsageSoftApSession__otherClientConnectCount;
    if (clientCopy)
    {
      v18 = &OBJC_IVAR___WiFiUsageSoftApSession__appleClientConnectCount;
    }

    ++*(&self->super.super.isa + *v18);
    if (hotspotCopy)
    {
      ++self->_instantHotspotClientConnectCount;
    }

    if (autoHotspotCopy)
    {
      ++self->_autoHotspotClientConnectCount;
    }

    v19 = identifierCopy;
    if (identifierCopy)
    {
      [(NSMutableSet *)self->_connectedClients addObject:identifierCopy];
    }

    identifierCopy = [(NSMutableSet *)self->_connectedClients count];
    v15 = v19;
    if (identifierCopy > self->_maxConnectedClientCount)
    {
      identifierCopy = [(NSMutableSet *)self->_connectedClients count];
      v15 = v19;
      self->_maxConnectedClientCount = identifierCopy;
    }
  }

  else
  {
    ++self->_clientDisconnectCount;
    if (identifierCopy)
    {
      v20 = identifierCopy;
      identifierCopy = [(NSMutableSet *)self->_connectedClients removeObject:identifierCopy];
      v15 = v20;
    }
  }

  MEMORY[0x2821F96F8](identifierCopy, v15);
}

- (void)addSoftApCoexEvent:(unint64_t)event deniedUnii1ChannelMap:(unint64_t)map deniedUnii2aChannelMap:(unint64_t)channelMap deniedUnii2cChannelMap:(unint64_t)unii2cChannelMap deniedUnii3ChannelMap:(unint64_t)unii3ChannelMap
{
  [(WiFiUsageSoftApSession *)self setTwoFourGHzDeniedChannelCount:event];
  [(WiFiUsageSoftApSession *)self setFiveGHzDeniedUnii1ChannelCount:map];
  [(WiFiUsageSoftApSession *)self setFiveGHzDeniedUnii2aChannelCount:channelMap];
  [(WiFiUsageSoftApSession *)self setFiveGHzDeniedUnii2cChannelCount:unii2cChannelMap];

  [(WiFiUsageSoftApSession *)self setFiveGHzDeniedUnii3ChannelCount:unii3ChannelMap];
}

- (id)eventDictionary:(BOOL)dictionary
{
  v51[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sessionName = [(WiFiUsageSession *)self sessionName];
  [dictionary setObject:sessionName forKeyedSubscript:@"SessionName"];

  [(WiFiUsageSession *)self sessionDuration];
  v7 = [WiFiUsagePrivacyFilter numberWithDuration:?];
  [dictionary setObject:v7 forKeyedSubscript:@"SessionDuration"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WiFiUsageSession sessionPid](self, "sessionPid")}];
  [dictionary setObject:v8 forKeyedSubscript:@"SessionPid"];

  [(WiFiUsageSession *)self sessionTimeSinceLastSession];
  v9 = [WiFiUsagePrivacyFilter numberWithDuration:?];
  [dictionary setObject:v9 forKeyedSubscript:@"SessionTimeSinceLastSession"];

  [dictionary setObject:self->_requester forKeyedSubscript:@"Requester"];
  [dictionary setObject:self->_status forKeyedSubscript:@"Status"];
  [dictionary setObject:self->_tearDownReason forKeyedSubscript:@"TearDownReason"];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastHiddenState];
  [dictionary setObject:v10 forKeyedSubscript:@"LastHiddenState"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_lastChannel];
  [dictionary setObject:v11 forKeyedSubscript:@"LastChannel"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_twoFourGHzChannelCount];
  [dictionary setObject:v12 forKeyedSubscript:@"TwoFourGHzChannelCount"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzChannelCount];
  [dictionary setObject:v13 forKeyedSubscript:@"FiveGHzChannelCount"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_appleClientConnectCount];
  [dictionary setObject:v14 forKeyedSubscript:@"AppleClientConnectCount"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_otherClientConnectCount];
  [dictionary setObject:v15 forKeyedSubscript:@"OtherClientConnectCount"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_hiddenClientConnectCount];
  [dictionary setObject:v16 forKeyedSubscript:@"HiddenClientConnectCount"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_broadcastClientConnectCount];
  [dictionary setObject:v17 forKeyedSubscript:@"BroadcastClientConnectCount"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_autoHotspotClientConnectCount];
  [dictionary setObject:v18 forKeyedSubscript:@"AutoHotspotClientConnectCount"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_instantHotspotClientConnectCount];
  [dictionary setObject:v19 forKeyedSubscript:@"InstantHotspotClientConnectCount"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_twoFourGHzClientConnectCount];
  [dictionary setObject:v20 forKeyedSubscript:@"TwoFourGHzClientConnectCount"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzClientConnectCount];
  [dictionary setObject:v21 forKeyedSubscript:@"FiveGHzClientConnectCount"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_clientDisconnectCount];
  [dictionary setObject:v22 forKeyedSubscript:@"ClientDisconnectCount"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxConnectedClientCount];
  [dictionary setObject:v23 forKeyedSubscript:@"MaxConnectedClientCount"];

  lowPowerModeDuration = self->_lowPowerModeDuration;
  [(WiFiUsageSession *)self sessionDuration];
  v26 = [WiFiUsagePrivacyFilter timePercentage:lowPowerModeDuration overTotalDuration:v25];
  [dictionary setObject:v26 forKeyedSubscript:@"LowPowerModeDuration"];

  infraActiveDuration = self->_infraActiveDuration;
  [(WiFiUsageSession *)self sessionDuration];
  v29 = [WiFiUsagePrivacyFilter timePercentage:infraActiveDuration overTotalDuration:v28];
  [dictionary setObject:v29 forKeyedSubscript:@"InfraActiveDuration"];

  awdlActiveDuration = self->_awdlActiveDuration;
  [(WiFiUsageSession *)self sessionDuration];
  v32 = [WiFiUsagePrivacyFilter timePercentage:awdlActiveDuration overTotalDuration:v31];
  [dictionary setObject:v32 forKeyedSubscript:@"AwdlActiveDuration"];

  v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_requestToUpLatency];
  [dictionary setObject:v33 forKeyedSubscript:@"RequestToUpLatency"];

  v34 = [WiFiUsagePrivacyFilter numberWithDuration:self->_idleTimeBeforeTeardownSec];
  [dictionary setObject:v34 forKeyedSubscript:@"IdleTimeBeforeTeardownSec"];

  v35 = [WiFiUsagePrivacyFilter numberWithDuration:self->_idleTimeAfterLastClientDisconnectedSec];
  [dictionary setObject:v35 forKeyedSubscript:@"IdleTimeAfterLastClientDisconnectedSec"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_infraStateChangedCount];
  [dictionary setObject:v36 forKeyedSubscript:@"InfraStateChangedCount"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_awdlStateChangedCount];
  [dictionary setObject:v37 forKeyedSubscript:@"AwdlStateChangedCount"];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_knownNetworkScanCount];
  [dictionary setObject:v38 forKeyedSubscript:@"KnownNetworkScanCount"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_hiddenTransitionCount];
  [dictionary setObject:v39 forKeyedSubscript:@"HiddenTransitionCount"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bandTransitionCount];
  [dictionary setObject:v40 forKeyedSubscript:@"BandTransitionCount"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_twoFourGHzDeniedChannelCount];
  [dictionary setObject:v41 forKeyedSubscript:@"TwoFourGHzDeniedChannelCount"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzDeniedUnii1ChannelCount];
  [dictionary setObject:v42 forKeyedSubscript:@"FiveGHzDeniedUnii1ChannelCount"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzDeniedUnii2aChannelCount];
  [dictionary setObject:v43 forKeyedSubscript:@"FiveGHzDeniedUnii2aChannelCount"];

  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzDeniedUnii2cChannelCount];
  [dictionary setObject:v44 forKeyedSubscript:@"FiveGHzDeniedUnii2cChannelCount"];

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzDeniedUnii3ChannelCount];
  [dictionary setObject:v45 forKeyedSubscript:@"FiveGHzDeniedUnii3ChannelCount"];

  v51[0] = self->_appliedCountryCode;
  v46 = [MEMORY[0x277CCACA8] stringWithCString:v51 encoding:4];
  [dictionary setObject:v46 forKeyedSubscript:@"CountryCodeApplied"];

  v47 = [MEMORY[0x277CCABB0] numberWithBool:self->_compatibilityEnabled];
  [dictionary setObject:v47 forKeyedSubscript:@"MaximizeCompatibilityEnabled"];

  if (!dictionary)
  {
    sessionStartTime = [(WiFiUsageSession *)self sessionStartTime];
    [dictionary setObject:sessionStartTime forKeyedSubscript:@"SessionStartTimestamp"];
  }

  v49 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)summarizeSession
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = date;
  if (self->_lastInfraActiveTime)
  {
    [date timeIntervalSinceDate:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  type = [(WiFiUsageSession *)self type];
  interfaceName = [(WiFiUsageSession *)self interfaceName];
  capabilities = [(WiFiUsageSession *)self capabilities];
  v8 = [v4 initWithSessionType:type andInterfaceName:interfaceName andCapabilities:capabilities];

  completionQueue = [(WiFiUsageSession *)self completionQueue];
  [v8 setCompletionQueue:completionQueue];

  completionContext = [(WiFiUsageSession *)self completionContext];
  [v8 setCompletionContext:completionContext];

  completionHandler = [(WiFiUsageSession *)self completionHandler];
  [v8 setCompletionHandler:completionHandler];

  [(WiFiUsageSession *)self sessionDuration];
  [v8 setSessionDuration:?];
  sessionStartTime = [(WiFiUsageSession *)self sessionStartTime];
  [v8 setSessionStartTime:sessionStartTime];

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
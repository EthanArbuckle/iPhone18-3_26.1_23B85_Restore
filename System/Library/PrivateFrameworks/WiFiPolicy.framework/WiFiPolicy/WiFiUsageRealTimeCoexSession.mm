@interface WiFiUsageRealTimeCoexSession
- (BOOL)isCurrentBandPreferredBand;
- (BOOL)isCurrentChannelPreferredChannel;
- (WiFiUsageRealTimeCoexSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities;
- (id)copyWithZone:(_NSZone *)zone;
- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details;
- (void)processIPv4Changes:(id)changes;
- (void)processIPv6Changes:(id)changes;
- (void)sessionDidStart;
- (void)setPreferredChannelAndBandUsageWithReferenceDate:(id)date;
- (void)setRealtimeCoexStarted:(BOOL)started type:(unint64_t)type reasons:(id)reasons;
- (void)summarizeSession;
- (void)updateAssociatedNetworkDetails:(id)details;
- (void)updatePreferredChannelAndBandUsageWithReferenceDate:(id)date;
@end

@implementation WiFiUsageRealTimeCoexSession

- (void)setRealtimeCoexStarted:(BOOL)started type:(unint64_t)type reasons:(id)reasons
{
  startedCopy = started;
  reasonsCopy = reasons;
  if ([(WiFiUsageSession *)self isSessionActive]&& !startedCopy)
  {
    sessionName = [(WiFiUsageSession *)self sessionName];
    NSLog(&cfstr_SSessionEnded.isa, "[WiFiUsageRealTimeCoexSession setRealtimeCoexStarted:type:reasons:]", sessionName);

    [(WiFiUsageSession *)self sessionDidEnd];
  }

  if (startedCopy)
  {
    isSessionActive = [(WiFiUsageSession *)self isSessionActive];
    sessionName2 = [(WiFiUsageSession *)self sessionName];
    v11 = [WiFiUsagePrivacyFilter getLabelForRTCoexType:type];
    v12 = [reasonsCopy componentsJoinedByString:@"&"];
    v13 = v12;
    if (isSessionActive)
    {
      NSLog(&cfstr_SSessionAlread.isa, "[WiFiUsageRealTimeCoexSession setRealtimeCoexStarted:type:reasons:]", sessionName2, v11, v12);
    }

    else
    {
      NSLog(&cfstr_SSessionStarte_1.isa, "[WiFiUsageRealTimeCoexSession setRealtimeCoexStarted:type:reasons:]", sessionName2, v11, v12);

      self->_rtCoexType = type;
      v14 = [reasonsCopy componentsJoinedByString:@"&"];
      rtCoexSubType = self->_rtCoexSubType;
      self->_rtCoexSubType = v14;

      [(WiFiUsageRealTimeCoexSession *)self sessionDidStart];
    }
  }
}

- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details
{
  changeCopy = change;
  detailsCopy = details;
  if (changeCopy && reason == 12)
  {
    if (!self->_firstSSIDTransition)
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      firstSSIDTransition = self->_firstSSIDTransition;
      self->_firstSSIDTransition = v14;
LABEL_12:
    }
  }

  else if (changeCopy && reason == 2)
  {
    if (!self->_firstManualJoin)
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      firstManualJoin = self->_firstManualJoin;
      self->_firstManualJoin = v16;
    }

    if (self->_firstSSIDTransition && !self->_firstManualJoinAfterSSIDTransition)
    {
      v18 = [MEMORY[0x277CBEAA8] now];
      firstSSIDTransition = self->_firstManualJoinAfterSSIDTransition;
      self->_firstManualJoinAfterSSIDTransition = v18;
      goto LABEL_12;
    }
  }

  firstManualJoinAfterSSIDTransition = self->_firstManualJoinAfterSSIDTransition;
  NSLog(&cfstr_SFirstssidtran.isa, "[WiFiUsageRealTimeCoexSession joinStateDidChange:withReason:lastDisconnectReason:lastJoinFailure:andNetworkDetails:]", self->_firstSSIDTransition, firstManualJoinAfterSSIDTransition, self->_firstManualJoin);
  v20.receiver = self;
  v20.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v20 joinStateDidChange:changeCopy withReason:reason lastDisconnectReason:disconnectReason lastJoinFailure:failure andNetworkDetails:detailsCopy];
}

- (void)processIPv4Changes:(id)changes
{
  changesCopy = changes;
  if ([(WiFiUsageSession *)self lastJoinReason]== 12)
  {
    ipV4Details = [(WiFiUsageSession *)self ipV4Details];
    self->_hasDifferentIpv4DetailsAfterSSIDTransition = [ipV4Details isEqual:changesCopy] ^ 1;

    v6 = [MEMORY[0x277CBEAA8] now];
    firstIPUpdateAfterSSIDTransition = self->_firstIPUpdateAfterSSIDTransition;
    self->_firstIPUpdateAfterSSIDTransition = v6;
  }

  v10.receiver = self;
  v10.super_class = WiFiUsageRealTimeCoexSession;
  v8 = [-[WiFiUsageRealTimeCoexSession class](&v10 class)];
  NSLog(&cfstr_SLastjoinreaso.isa, "[WiFiUsageRealTimeCoexSession processIPv4Changes:]", v8, self->_firstIPUpdateAfterSSIDTransition);

  v9.receiver = self;
  v9.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v9 processIPv4Changes:changesCopy];
}

- (void)processIPv6Changes:(id)changes
{
  changesCopy = changes;
  if ([(WiFiUsageSession *)self lastJoinReason]== 12)
  {
    ipV6Details = [(WiFiUsageSession *)self ipV6Details];
    self->_hasDifferentIpv6DetailsAfterSSIDTransition = [ipV6Details isEqual:changesCopy] ^ 1;
  }

  if (!self->_firstIPUpdateAfterSSIDTransition)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    firstIPUpdateAfterSSIDTransition = self->_firstIPUpdateAfterSSIDTransition;
    self->_firstIPUpdateAfterSSIDTransition = v6;

    v10.receiver = self;
    v10.super_class = WiFiUsageRealTimeCoexSession;
    v8 = [-[WiFiUsageRealTimeCoexSession class](&v10 class)];
    NSLog(&cfstr_SLastjoinreaso.isa, "[WiFiUsageRealTimeCoexSession processIPv6Changes:]", v8, self->_firstIPUpdateAfterSSIDTransition);
  }

  v9.receiver = self;
  v9.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v9 processIPv6Changes:changesCopy];
}

- (void)summarizeSession
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [(WiFiUsageRealTimeCoexSession *)self updateRtCoexInOptimalDuration:self->_isRtCoexOptimal];
  [(WiFiUsageRealTimeCoexSession *)self updatePreferredChannelAndBandUsageWithReferenceDate:v3];
  [(WiFiUsageRealTimeCoexSession *)self setPreferredChannelAndBandUsageWithReferenceDate:v3];
  v4.receiver = self;
  v4.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v4 summarizeSession];
}

- (WiFiUsageRealTimeCoexSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v5.receiver = self;
  v5.super_class = WiFiUsageRealTimeCoexSession;
  return [(WiFiUsageSession *)&v5 initWithSessionType:8 andInterfaceName:name andCapabilities:capabilities];
}

- (void)sessionDidStart
{
  v13.receiver = self;
  v13.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v13 sessionDidStart];
  self->_lastRequestType = 3;
  self->_lastRequestPreferredChannel = 0x7FFFFFFFFFFFFFFFLL;
  self->_lastRequestPreferredBand = 3;
  lastRequestPreferredSSID = self->_lastRequestPreferredSSID;
  self->_lastRequestPreferredSSID = 0;

  self->_lastRequestDifferentSSID = 0;
  lastRequestPreferredBSS = self->_lastRequestPreferredBSS;
  self->_lastRequestPreferredBSS = 0;

  self->_isSplitSSID = 0;
  self->_hasCandidates = 0;
  self->_isRtCoexOptimal = 1;
  firstRtCoexOptimal = self->_firstRtCoexOptimal;
  self->_firstRtCoexOptimal = 0;

  lastRtCoexOptimalStatusChange = self->_lastRtCoexOptimalStatusChange;
  self->_lastRtCoexOptimalStatusChange = 0;

  self->_rtCoexInOptimalDuration = 0.0;
  self->_requestSteerToPreferredChannelCount = 0;
  self->_requestSteerCount = 0;
  self->_requestDisconnectCount = 0;
  lastEnterPreferredChannel = self->_lastEnterPreferredChannel;
  self->_lastEnterPreferredChannel = 0;

  self->_preferredChannelDuration = 0.0;
  lastEnterPreferredBand = self->_lastEnterPreferredBand;
  self->_lastEnterPreferredBand = 0;

  self->_preferredBandDuration = 0.0;
  firstSSIDTransition = self->_firstSSIDTransition;
  self->_firstSSIDTransition = 0;

  firstManualJoin = self->_firstManualJoin;
  self->_firstManualJoin = 0;

  firstManualJoinAfterSSIDTransition = self->_firstManualJoinAfterSSIDTransition;
  self->_firstManualJoinAfterSSIDTransition = 0;

  firstIPUpdateAfterSSIDTransition = self->_firstIPUpdateAfterSSIDTransition;
  self->_firstIPUpdateAfterSSIDTransition = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = WiFiUsageRealTimeCoexSession;
  v4 = [(WiFiUsageSession *)&v8 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    v4[1502] = self->_rtCoexType;
    objc_storeStrong(v4 + 1503, self->_rtCoexSubType);
    v5[1504] = self->_lastRequestType;
    v5[1505] = self->_lastRequestPreferredChannel;
    *(v5 + 3002) = self->_lastRequestPreferredBand;
    objc_storeStrong(v5 + 1506, self->_lastRequestPreferredSSID);
    objc_storeStrong(v5 + 1507, self->_lastRequestPreferredBSS);
    *(v5 + 12001) = self->_isSplitSSID;
    *(v5 + 12002) = self->_hasCandidates;
    *(v5 + 12005) = self->_isRtCoexOptimal;
    objc_storeStrong(v5 + 1508, self->_firstRtCoexOptimal);
    objc_storeStrong(v5 + 1509, self->_lastRtCoexOptimalStatusChange);
    v5[1510] = *&self->_rtCoexInOptimalDuration;
    v5[1519] = self->_requestSteerToPreferredChannelCount;
    v5[1520] = self->_requestSteerCount;
    v5[1521] = self->_requestDisconnectCount;
    objc_storeStrong(v5 + 1511, self->_lastEnterPreferredChannel);
    v5[1512] = *&self->_preferredChannelDuration;
    objc_storeStrong(v5 + 1513, self->_lastEnterPreferredBand);
    v5[1514] = *&self->_preferredBandDuration;
    objc_storeStrong(v5 + 1515, self->_firstSSIDTransition);
    objc_storeStrong(v5 + 1516, self->_firstIPUpdateAfterSSIDTransition);
    objc_storeStrong(v5 + 1517, self->_firstManualJoin);
    objc_storeStrong(v5 + 1518, self->_firstManualJoinAfterSSIDTransition);
    v6 = v5;
  }

  return v5;
}

- (BOOL)isCurrentChannelPreferredChannel
{
  if (self->_lastRequestPreferredBand == 3)
  {
    return 0;
  }

  lastRequestPreferredChannel = self->_lastRequestPreferredChannel;
  if (lastRequestPreferredChannel == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  networkDetails = [(WiFiUsageSession *)self networkDetails];
  connectedBss = [networkDetails connectedBss];
  if (lastRequestPreferredChannel == [connectedBss channel])
  {
    lastRequestPreferredBand = self->_lastRequestPreferredBand;
    networkDetails2 = [(WiFiUsageSession *)self networkDetails];
    connectedBss2 = [networkDetails2 connectedBss];
    v4 = lastRequestPreferredBand == [connectedBss2 band];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isCurrentBandPreferredBand
{
  lastRequestPreferredBand = self->_lastRequestPreferredBand;
  if (lastRequestPreferredBand == 3)
  {
    return 0;
  }

  networkDetails = [(WiFiUsageSession *)self networkDetails];
  connectedBss = [networkDetails connectedBss];
  v3 = lastRequestPreferredBand == [connectedBss band];

  return v3;
}

- (void)updateAssociatedNetworkDetails:(id)details
{
  v4 = MEMORY[0x277CBEAA8];
  detailsCopy = details;
  v6 = [v4 now];
  [(WiFiUsageRealTimeCoexSession *)self updatePreferredChannelAndBandUsageWithReferenceDate:v6];
  v7.receiver = self;
  v7.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v7 updateAssociatedNetworkDetails:detailsCopy];

  [(WiFiUsageRealTimeCoexSession *)self setPreferredChannelAndBandUsageWithReferenceDate:v6];
}

- (void)updatePreferredChannelAndBandUsageWithReferenceDate:(id)date
{
  dateCopy = date;
  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentChannelPreferredChannel]&& self->_lastEnterPreferredChannel)
  {
    [dateCopy timeIntervalSinceDate:?];
    self->_preferredChannelDuration = v4 + self->_preferredChannelDuration;
    lastEnterPreferredChannel = self->_lastEnterPreferredChannel;
    self->_lastEnterPreferredChannel = 0;
  }

  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentBandPreferredBand]&& self->_lastEnterPreferredBand)
  {
    [dateCopy timeIntervalSinceDate:?];
    self->_preferredBandDuration = v6 + self->_preferredBandDuration;
    lastEnterPreferredBand = self->_lastEnterPreferredBand;
    self->_lastEnterPreferredBand = 0;
  }
}

- (void)setPreferredChannelAndBandUsageWithReferenceDate:(id)date
{
  dateCopy = date;
  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentChannelPreferredChannel])
  {
    objc_storeStrong(&self->_lastEnterPreferredChannel, date);
  }

  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentBandPreferredBand])
  {
    objc_storeStrong(&self->_lastEnterPreferredBand, date);
  }
}

@end
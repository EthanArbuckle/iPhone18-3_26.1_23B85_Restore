@interface WiFiUsageRealTimeCoexSession
- (BOOL)isCurrentBandPreferredBand;
- (BOOL)isCurrentChannelPreferredChannel;
- (WiFiUsageRealTimeCoexSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)joinStateDidChange:(id)a3 withReason:(unint64_t)a4 lastDisconnectReason:(int64_t)a5 lastJoinFailure:(int64_t)a6 andNetworkDetails:(id)a7;
- (void)processIPv4Changes:(id)a3;
- (void)processIPv6Changes:(id)a3;
- (void)sessionDidStart;
- (void)setPreferredChannelAndBandUsageWithReferenceDate:(id)a3;
- (void)setRealtimeCoexStarted:(BOOL)a3 type:(unint64_t)a4 reasons:(id)a5;
- (void)summarizeSession;
- (void)updateAssociatedNetworkDetails:(id)a3;
- (void)updatePreferredChannelAndBandUsageWithReferenceDate:(id)a3;
@end

@implementation WiFiUsageRealTimeCoexSession

- (void)setRealtimeCoexStarted:(BOOL)a3 type:(unint64_t)a4 reasons:(id)a5
{
  v6 = a3;
  v16 = a5;
  if ([(WiFiUsageSession *)self isSessionActive]&& !v6)
  {
    v8 = [(WiFiUsageSession *)self sessionName];
    NSLog(&cfstr_SSessionEnded.isa, "[WiFiUsageRealTimeCoexSession setRealtimeCoexStarted:type:reasons:]", v8);

    [(WiFiUsageSession *)self sessionDidEnd];
  }

  if (v6)
  {
    v9 = [(WiFiUsageSession *)self isSessionActive];
    v10 = [(WiFiUsageSession *)self sessionName];
    v11 = [WiFiUsagePrivacyFilter getLabelForRTCoexType:a4];
    v12 = [v16 componentsJoinedByString:@"&"];
    v13 = v12;
    if (v9)
    {
      NSLog(&cfstr_SSessionAlread.isa, "[WiFiUsageRealTimeCoexSession setRealtimeCoexStarted:type:reasons:]", v10, v11, v12);
    }

    else
    {
      NSLog(&cfstr_SSessionStarte_1.isa, "[WiFiUsageRealTimeCoexSession setRealtimeCoexStarted:type:reasons:]", v10, v11, v12);

      self->_rtCoexType = a4;
      v14 = [v16 componentsJoinedByString:@"&"];
      rtCoexSubType = self->_rtCoexSubType;
      self->_rtCoexSubType = v14;

      [(WiFiUsageRealTimeCoexSession *)self sessionDidStart];
    }
  }
}

- (void)joinStateDidChange:(id)a3 withReason:(unint64_t)a4 lastDisconnectReason:(int64_t)a5 lastJoinFailure:(int64_t)a6 andNetworkDetails:(id)a7
{
  v12 = a3;
  v13 = a7;
  if (v12 && a4 == 12)
  {
    if (!self->_firstSSIDTransition)
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      firstSSIDTransition = self->_firstSSIDTransition;
      self->_firstSSIDTransition = v14;
LABEL_12:
    }
  }

  else if (v12 && a4 == 2)
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
  [(WiFiUsageSession *)&v20 joinStateDidChange:v12 withReason:a4 lastDisconnectReason:a5 lastJoinFailure:a6 andNetworkDetails:v13];
}

- (void)processIPv4Changes:(id)a3
{
  v4 = a3;
  if ([(WiFiUsageSession *)self lastJoinReason]== 12)
  {
    v5 = [(WiFiUsageSession *)self ipV4Details];
    self->_hasDifferentIpv4DetailsAfterSSIDTransition = [v5 isEqual:v4] ^ 1;

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
  [(WiFiUsageSession *)&v9 processIPv4Changes:v4];
}

- (void)processIPv6Changes:(id)a3
{
  v4 = a3;
  if ([(WiFiUsageSession *)self lastJoinReason]== 12)
  {
    v5 = [(WiFiUsageSession *)self ipV6Details];
    self->_hasDifferentIpv6DetailsAfterSSIDTransition = [v5 isEqual:v4] ^ 1;
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
  [(WiFiUsageSession *)&v9 processIPv6Changes:v4];
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

- (WiFiUsageRealTimeCoexSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4
{
  v5.receiver = self;
  v5.super_class = WiFiUsageRealTimeCoexSession;
  return [(WiFiUsageSession *)&v5 initWithSessionType:8 andInterfaceName:a3 andCapabilities:a4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = WiFiUsageRealTimeCoexSession;
  v4 = [(WiFiUsageSession *)&v8 copyWithZone:a3];
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

  v5 = [(WiFiUsageSession *)self networkDetails];
  v6 = [v5 connectedBss];
  if (lastRequestPreferredChannel == [v6 channel])
  {
    lastRequestPreferredBand = self->_lastRequestPreferredBand;
    v8 = [(WiFiUsageSession *)self networkDetails];
    v9 = [v8 connectedBss];
    v4 = lastRequestPreferredBand == [v9 band];
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

  v4 = [(WiFiUsageSession *)self networkDetails];
  v5 = [v4 connectedBss];
  v3 = lastRequestPreferredBand == [v5 band];

  return v3;
}

- (void)updateAssociatedNetworkDetails:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  [(WiFiUsageRealTimeCoexSession *)self updatePreferredChannelAndBandUsageWithReferenceDate:v6];
  v7.receiver = self;
  v7.super_class = WiFiUsageRealTimeCoexSession;
  [(WiFiUsageSession *)&v7 updateAssociatedNetworkDetails:v5];

  [(WiFiUsageRealTimeCoexSession *)self setPreferredChannelAndBandUsageWithReferenceDate:v6];
}

- (void)updatePreferredChannelAndBandUsageWithReferenceDate:(id)a3
{
  v8 = a3;
  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentChannelPreferredChannel]&& self->_lastEnterPreferredChannel)
  {
    [v8 timeIntervalSinceDate:?];
    self->_preferredChannelDuration = v4 + self->_preferredChannelDuration;
    lastEnterPreferredChannel = self->_lastEnterPreferredChannel;
    self->_lastEnterPreferredChannel = 0;
  }

  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentBandPreferredBand]&& self->_lastEnterPreferredBand)
  {
    [v8 timeIntervalSinceDate:?];
    self->_preferredBandDuration = v6 + self->_preferredBandDuration;
    lastEnterPreferredBand = self->_lastEnterPreferredBand;
    self->_lastEnterPreferredBand = 0;
  }
}

- (void)setPreferredChannelAndBandUsageWithReferenceDate:(id)a3
{
  v5 = a3;
  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentChannelPreferredChannel])
  {
    objc_storeStrong(&self->_lastEnterPreferredChannel, a3);
  }

  if ([(WiFiUsageRealTimeCoexSession *)self isCurrentBandPreferredBand])
  {
    objc_storeStrong(&self->_lastEnterPreferredBand, a3);
  }
}

@end
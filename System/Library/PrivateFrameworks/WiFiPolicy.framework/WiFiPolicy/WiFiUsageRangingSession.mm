@interface WiFiUsageRangingSession
- (WiFiUsageRangingSession)init;
- (void)addRangingRttSampleWithRssi:(int64_t)rssi rtt:(int64_t)rtt snr:(unint64_t)snr flags:(unint64_t)flags channel:(unint64_t)channel coreId:(unint64_t)id bitErrorRate:(unint64_t)rate phyError:(unint64_t)self0 andPeerSnr:(unint64_t)self1 andPeerCoreId:(unint64_t)self2 andPeerBitErrorRate:(unint64_t)self3 andPeerPhyError:(unint64_t)self4;
- (void)rangingCompletedWithValidCount:(unint64_t)count resultStatus:(int64_t)status resultFlags:(unint64_t)flags;
- (void)rangingLinkUp;
- (void)rangingSessionRequestedWithSelfPreferredChannel:(unint64_t)channel selfMainChannel:(unint64_t)mainChannel selfChannelFlags:(unint64_t)flags peerPreferredChannel:(unint64_t)preferredChannel peerMainChannel:(unint64_t)peerMainChannel peerChannelFlags:(unint64_t)channelFlags requester:(id)requester;
- (void)rangingStartedWithNumMeasurements:(unint64_t)measurements;
@end

@implementation WiFiUsageRangingSession

- (WiFiUsageRangingSession)init
{
  v9.receiver = self;
  v9.super_class = WiFiUsageRangingSession;
  v2 = [(WiFiUsageRangingSession *)&v9 init];
  sessionStartTimestamp = v2->_sessionStartTimestamp;
  v2->_sessionStartTimestamp = 0;

  sessionLinkUpTimestamp = v2->_sessionLinkUpTimestamp;
  v2->_sessionLinkUpTimestamp = 0;

  peerDiscoveryTimestamp = v2->_peerDiscoveryTimestamp;
  v2->_peerDiscoveryTimestamp = 0;

  rangingStartedTimestamp = v2->_rangingStartedTimestamp;
  v2->_rangingStartedTimestamp = 0;

  rangingCompletionTimestamp = v2->_rangingCompletionTimestamp;
  v2->_rangingCompletionTimestamp = 0;

  return v2;
}

- (void)rangingSessionRequestedWithSelfPreferredChannel:(unint64_t)channel selfMainChannel:(unint64_t)mainChannel selfChannelFlags:(unint64_t)flags peerPreferredChannel:(unint64_t)preferredChannel peerMainChannel:(unint64_t)peerMainChannel peerChannelFlags:(unint64_t)channelFlags requester:(id)requester
{
  v16 = MEMORY[0x277CBEAA8];
  requesterCopy = requester;
  date = [v16 date];
  sessionStartTimestamp = self->_sessionStartTimestamp;
  self->_sessionStartTimestamp = date;

  self->_selfPreferredChannel = channel;
  self->_selfMainChannel = mainChannel;
  self->_selfChannelFlags = flags;
  self->_peerPreferredChannel = preferredChannel;
  self->_peerMainChannel = peerMainChannel;
  self->_peerChannelFlags = channelFlags;
  v20 = [requesterCopy copy];

  requester = self->_requester;
  self->_requester = v20;

  sessionLinkUpTimestamp = self->_sessionLinkUpTimestamp;
  self->_sessionLinkUpTimestamp = 0;

  peerDiscoveryTimestamp = self->_peerDiscoveryTimestamp;
  self->_peerDiscoveryTimestamp = 0;

  rangingStartedTimestamp = self->_rangingStartedTimestamp;
  self->_rangingStartedTimestamp = 0;

  rangingCompletionTimestamp = self->_rangingCompletionTimestamp;
  self->_rangingCompletionTimestamp = 0;

  *&self->_measurementStatus = 0u;
  *&self->_linkUpLatency = 0u;
  *&self->_numRequestedMeasurements = 0u;
  rttSamples = self->_rttSamples;

  [(NSMutableArray *)rttSamples removeAllObjects];
}

- (void)rangingLinkUp
{
  date = [MEMORY[0x277CBEAA8] date];
  sessionLinkUpTimestamp = self->_sessionLinkUpTimestamp;
  self->_sessionLinkUpTimestamp = date;

  MEMORY[0x2821F96F8](date, sessionLinkUpTimestamp);
}

- (void)rangingStartedWithNumMeasurements:(unint64_t)measurements
{
  date = [MEMORY[0x277CBEAA8] date];
  if (!self->_sessionLinkUpTimestamp)
  {
    objc_storeStrong(&self->_sessionLinkUpTimestamp, date);
  }

  if (!self->_peerDiscoveryTimestamp)
  {
    objc_storeStrong(&self->_peerDiscoveryTimestamp, date);
  }

  rangingStartedTimestamp = self->_rangingStartedTimestamp;
  self->_rangingStartedTimestamp = date;
  v7 = date;

  self->_numRequestedMeasurements = measurements;
  [(NSMutableArray *)self->_rttSamples removeAllObjects];

  self->_numValidMeasurements = 0;
  self->_measurementStatus = 0;
  self->_measurementFlags = 0;
}

- (void)rangingCompletedWithValidCount:(unint64_t)count resultStatus:(int64_t)status resultFlags:(unint64_t)flags
{
  date = [MEMORY[0x277CBEAA8] date];
  rangingCompletionTimestamp = self->_rangingCompletionTimestamp;
  self->_rangingCompletionTimestamp = date;

  self->_numValidMeasurements = count;
  self->_measurementStatus = status;
  self->_measurementFlags = flags;
  if (self->_sessionStartTimestamp)
  {
    peerDiscoveryTimestamp = self->_peerDiscoveryTimestamp;
    if (peerDiscoveryTimestamp)
    {
      [(NSDate *)peerDiscoveryTimestamp timeIntervalSinceDate:?];
      self->_linkUpLatency = v12;
    }
  }

  if (self->_rangingStartedTimestamp)
  {
    v13 = self->_rangingCompletionTimestamp;
    if (v13)
    {
      [(NSDate *)v13 timeIntervalSinceDate:?];
      self->_rangingLatency = v14;
    }
  }
}

- (void)addRangingRttSampleWithRssi:(int64_t)rssi rtt:(int64_t)rtt snr:(unint64_t)snr flags:(unint64_t)flags channel:(unint64_t)channel coreId:(unint64_t)id bitErrorRate:(unint64_t)rate phyError:(unint64_t)self0 andPeerSnr:(unint64_t)self1 andPeerCoreId:(unint64_t)self2 andPeerBitErrorRate:(unint64_t)self3 andPeerPhyError:(unint64_t)self4
{
  v24 = objc_alloc_init(WiFiUsageRangingRttSample);
  [(WiFiUsageRangingRttSample *)v24 setRssi:rssi];
  [(WiFiUsageRangingRttSample *)v24 setRtt:rtt];
  [(WiFiUsageRangingRttSample *)v24 setFlags:flags];
  [(WiFiUsageRangingRttSample *)v24 setChannel:channel];
  [(WiFiUsageRangingRttSample *)v24 setSelfSnr:snr];
  [(WiFiUsageRangingRttSample *)v24 setSelfCoreId:id];
  [(WiFiUsageRangingRttSample *)v24 setSelfBitErrorRate:rate];
  [(WiFiUsageRangingRttSample *)v24 setSelfPhyError:error];
  [(WiFiUsageRangingRttSample *)v24 setPeerSnr:peerSnr];
  [(WiFiUsageRangingRttSample *)v24 setPeerCoreId:coreId];
  [(WiFiUsageRangingRttSample *)v24 setPeerBitErrorRate:errorRate];
  [(WiFiUsageRangingRttSample *)v24 setPeerPhyError:phyError];
  rttSamples = self->_rttSamples;
  if (!rttSamples)
  {
    array = [MEMORY[0x277CBEB18] array];
    v23 = self->_rttSamples;
    self->_rttSamples = array;

    rttSamples = self->_rttSamples;
  }

  [(NSMutableArray *)rttSamples addObject:v24, coreId];
}

@end
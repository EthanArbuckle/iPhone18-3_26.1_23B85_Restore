@interface WiFiUsageRangingSession
- (WiFiUsageRangingSession)init;
- (void)addRangingRttSampleWithRssi:(int64_t)a3 rtt:(int64_t)a4 snr:(unint64_t)a5 flags:(unint64_t)a6 channel:(unint64_t)a7 coreId:(unint64_t)a8 bitErrorRate:(unint64_t)a9 phyError:(unint64_t)a10 andPeerSnr:(unint64_t)a11 andPeerCoreId:(unint64_t)a12 andPeerBitErrorRate:(unint64_t)a13 andPeerPhyError:(unint64_t)a14;
- (void)rangingCompletedWithValidCount:(unint64_t)a3 resultStatus:(int64_t)a4 resultFlags:(unint64_t)a5;
- (void)rangingLinkUp;
- (void)rangingSessionRequestedWithSelfPreferredChannel:(unint64_t)a3 selfMainChannel:(unint64_t)a4 selfChannelFlags:(unint64_t)a5 peerPreferredChannel:(unint64_t)a6 peerMainChannel:(unint64_t)a7 peerChannelFlags:(unint64_t)a8 requester:(id)a9;
- (void)rangingStartedWithNumMeasurements:(unint64_t)a3;
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

- (void)rangingSessionRequestedWithSelfPreferredChannel:(unint64_t)a3 selfMainChannel:(unint64_t)a4 selfChannelFlags:(unint64_t)a5 peerPreferredChannel:(unint64_t)a6 peerMainChannel:(unint64_t)a7 peerChannelFlags:(unint64_t)a8 requester:(id)a9
{
  v16 = MEMORY[0x277CBEAA8];
  v17 = a9;
  v18 = [v16 date];
  sessionStartTimestamp = self->_sessionStartTimestamp;
  self->_sessionStartTimestamp = v18;

  self->_selfPreferredChannel = a3;
  self->_selfMainChannel = a4;
  self->_selfChannelFlags = a5;
  self->_peerPreferredChannel = a6;
  self->_peerMainChannel = a7;
  self->_peerChannelFlags = a8;
  v20 = [v17 copy];

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
  v3 = [MEMORY[0x277CBEAA8] date];
  sessionLinkUpTimestamp = self->_sessionLinkUpTimestamp;
  self->_sessionLinkUpTimestamp = v3;

  MEMORY[0x2821F96F8](v3, sessionLinkUpTimestamp);
}

- (void)rangingStartedWithNumMeasurements:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEAA8] date];
  if (!self->_sessionLinkUpTimestamp)
  {
    objc_storeStrong(&self->_sessionLinkUpTimestamp, v5);
  }

  if (!self->_peerDiscoveryTimestamp)
  {
    objc_storeStrong(&self->_peerDiscoveryTimestamp, v5);
  }

  rangingStartedTimestamp = self->_rangingStartedTimestamp;
  self->_rangingStartedTimestamp = v5;
  v7 = v5;

  self->_numRequestedMeasurements = a3;
  [(NSMutableArray *)self->_rttSamples removeAllObjects];

  self->_numValidMeasurements = 0;
  self->_measurementStatus = 0;
  self->_measurementFlags = 0;
}

- (void)rangingCompletedWithValidCount:(unint64_t)a3 resultStatus:(int64_t)a4 resultFlags:(unint64_t)a5
{
  v9 = [MEMORY[0x277CBEAA8] date];
  rangingCompletionTimestamp = self->_rangingCompletionTimestamp;
  self->_rangingCompletionTimestamp = v9;

  self->_numValidMeasurements = a3;
  self->_measurementStatus = a4;
  self->_measurementFlags = a5;
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

- (void)addRangingRttSampleWithRssi:(int64_t)a3 rtt:(int64_t)a4 snr:(unint64_t)a5 flags:(unint64_t)a6 channel:(unint64_t)a7 coreId:(unint64_t)a8 bitErrorRate:(unint64_t)a9 phyError:(unint64_t)a10 andPeerSnr:(unint64_t)a11 andPeerCoreId:(unint64_t)a12 andPeerBitErrorRate:(unint64_t)a13 andPeerPhyError:(unint64_t)a14
{
  v24 = objc_alloc_init(WiFiUsageRangingRttSample);
  [(WiFiUsageRangingRttSample *)v24 setRssi:a3];
  [(WiFiUsageRangingRttSample *)v24 setRtt:a4];
  [(WiFiUsageRangingRttSample *)v24 setFlags:a6];
  [(WiFiUsageRangingRttSample *)v24 setChannel:a7];
  [(WiFiUsageRangingRttSample *)v24 setSelfSnr:a5];
  [(WiFiUsageRangingRttSample *)v24 setSelfCoreId:a8];
  [(WiFiUsageRangingRttSample *)v24 setSelfBitErrorRate:a9];
  [(WiFiUsageRangingRttSample *)v24 setSelfPhyError:a10];
  [(WiFiUsageRangingRttSample *)v24 setPeerSnr:a11];
  [(WiFiUsageRangingRttSample *)v24 setPeerCoreId:a12];
  [(WiFiUsageRangingRttSample *)v24 setPeerBitErrorRate:a13];
  [(WiFiUsageRangingRttSample *)v24 setPeerPhyError:a14];
  rttSamples = self->_rttSamples;
  if (!rttSamples)
  {
    v22 = [MEMORY[0x277CBEB18] array];
    v23 = self->_rttSamples;
    self->_rttSamples = v22;

    rttSamples = self->_rttSamples;
  }

  [(NSMutableArray *)rttSamples addObject:v24, a12];
}

@end
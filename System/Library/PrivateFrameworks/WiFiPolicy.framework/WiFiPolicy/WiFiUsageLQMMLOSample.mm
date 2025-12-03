@interface WiFiUsageLQMMLOSample
- (WiFiUsageLQMMLOSample)initWith:(apple_mlo_link_lqm *)with andDuration:(unint64_t)duration;
- (id)asDictionaryInto:(id)into;
- (int64_t)diff_rssicore1_rssicore0;
@end

@implementation WiFiUsageLQMMLOSample

- (WiFiUsageLQMMLOSample)initWith:(apple_mlo_link_lqm *)with andDuration:(unint64_t)duration
{
  v16.receiver = self;
  v16.super_class = WiFiUsageLQMMLOSample;
  v6 = [(WiFiUsageLQMMLOSample *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_duration = duration;
    v6->_isMLOPreferredLink = with->var0;
    v6->_band = [WiFiUsagePrivacyFilter bandFromAppleChannelSpec:*(&with->var0 + 1) >> 14];
    v7->_channelWidth = [WiFiUsagePrivacyFilter channelWidthAppleChannelSpec:(*(&with->var0 + 1) >> 11) & 7];
    v8 = with->var2.octet[1];
    if (!with->var2.octet[1])
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v7->_rssi_core0 = v8;
    v9 = with->var2.octet[2];
    if (!with->var2.octet[2])
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v7->_rssi_core1 = v9;
    var9 = with->var9;
    v7->_txRate = with->var8;
    v7->_rxRate = var9;
    v11 = *&with->var2.octet[4];
    v7->_idleTimeMs = v11;
    v7->_idlePortionOfSamplePercentage = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", v11, 1000 * duration, +[WiFiUsageLQMTransformations ratioScale]);
    var4 = with->var4;
    v7->_txFramesTotal = var4;
    var7 = with->var7;
    v7->_rxUcastFrames = with->var6;
    v7->_txRetriesExhaustedOverTxFrames = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", var7, var4, +[WiFiUsageLQMTransformations ratioScale]);
    v7->_txFailsOverTxFrames = +[WiFiUsageLQMTransformations ratioWithValue:Over:WithScale:](WiFiUsageLQMTransformations, "ratioWithValue:Over:WithScale:", with->var5, with->var4, +[WiFiUsageLQMTransformations ratioScale]);
    v14 = v7;
  }

  return v7;
}

- (int64_t)diff_rssicore1_rssicore0
{
  v3.receiver = self;
  v3.super_class = WiFiUsageLQMMLOSample;
  return [-[WiFiUsageLQMMLOSample class](&v3 class)];
}

- (id)asDictionaryInto:(id)into
{
  v4 = MEMORY[0x277CBEB38];
  v11.receiver = self;
  v11.super_class = WiFiUsageLQMMLOSample;
  v5 = [(WiFiUsageLQMSample *)&v11 asDictionaryInto:into];
  v6 = [v4 dictionaryWithDictionary:v5];

  v7 = [WiFiUsagePrivacyFilter bandAsString:self->_band];
  [v6 setObject:v7 forKeyedSubscript:@"band"];

  v8 = [(WiFiUsageLQMSample *)self numberForKeyPath:@"channelWidth"];
  stringValue = [v8 stringValue];
  [v6 setObject:stringValue forKeyedSubscript:@"channelWidth"];

  return v6;
}

@end
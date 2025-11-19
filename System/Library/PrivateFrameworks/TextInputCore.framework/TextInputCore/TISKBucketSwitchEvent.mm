@interface TISKBucketSwitchEvent
- (id)description;
- (void)reportToSession:(id)a3;
@end

@implementation TISKBucketSwitchEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TISKSessionStats *)self->_sessionStats layout];
  [v4 frame];
  v6 = v5;
  v7 = [(TISKSessionStats *)self->_sessionStats layout];
  [v7 frame];
  v9 = [v3 stringWithFormat:@"bs:%d-%d", v6, v8];

  return v9;
}

- (void)reportToSession:(id)a3
{
  v3 = kTISKNumberOfTappedKeysCounter;
  v4 = a3;
  [v4 addSample:&unk_28400BF10 forKey:v3];
  [v4 addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

@end
@interface TISKBucketSwitchEvent
- (id)description;
- (void)reportToSession:(id)session;
@end

@implementation TISKBucketSwitchEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  layout = [(TISKSessionStats *)self->_sessionStats layout];
  [layout frame];
  v6 = v5;
  layout2 = [(TISKSessionStats *)self->_sessionStats layout];
  [layout2 frame];
  v9 = [v3 stringWithFormat:@"bs:%d-%d", v6, v8];

  return v9;
}

- (void)reportToSession:(id)session
{
  v3 = kTISKNumberOfTappedKeysCounter;
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:v3];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

@end
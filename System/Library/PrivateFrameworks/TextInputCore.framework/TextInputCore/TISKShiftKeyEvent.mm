@interface TISKShiftKeyEvent
- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event;
- (void)reportToSession:(id)session;
@end

@implementation TISKShiftKeyEvent

- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event
{
  timingCopy = timing;
  eventCopy = event;
  if (eventCopy)
  {
    v15.receiver = self;
    v15.super_class = TISKShiftKeyEvent;
    [(TISKEvent *)&v15 reportInterKeyTiming:timingCopy previousEvent:eventCopy];
    [(TISKEvent *)self touchDownTimestamp];
    v9 = v8;
    [eventCopy touchDownTimestamp];
    v11 = v10;
    type = [eventCopy type];
    switch(type)
    {
      case 2:
        v13 = &kTISKSpaceToShiftMetric;
        goto LABEL_8;
      case 10:
        v13 = &kTISK123ToAnyTapMetric;
        goto LABEL_8;
      case 3:
        v13 = &kTISKDeleteToShiftMetric;
LABEL_8:
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:v9 - v11];
        [timingCopy addSample:v14 forKey:*v13];

        break;
    }
  }
}

- (void)reportToSession:(id)session
{
  v3 = kTISKNumberOfTappedKeysCounter;
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:v3];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

@end
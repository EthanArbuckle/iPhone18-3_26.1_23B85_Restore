@interface TISKShiftKeyEvent
- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4;
- (void)reportToSession:(id)a3;
@end

@implementation TISKShiftKeyEvent

- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v15.receiver = self;
    v15.super_class = TISKShiftKeyEvent;
    [(TISKEvent *)&v15 reportInterKeyTiming:v6 previousEvent:v7];
    [(TISKEvent *)self touchDownTimestamp];
    v9 = v8;
    [v7 touchDownTimestamp];
    v11 = v10;
    v12 = [v7 type];
    switch(v12)
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
        [v6 addSample:v14 forKey:*v13];

        break;
    }
  }
}

- (void)reportToSession:(id)a3
{
  v3 = kTISKNumberOfTappedKeysCounter;
  v4 = a3;
  [v4 addSample:&unk_28400BF10 forKey:v3];
  [v4 addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

@end
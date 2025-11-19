@interface TISKSpaceKeyEvent
- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4;
- (void)reportToSession:(id)a3;
@end

@implementation TISKSpaceKeyEvent

- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v19.receiver = self;
    v19.super_class = TISKSpaceKeyEvent;
    [(TISKInputEvent *)&v19 reportInterKeyTiming:v6 previousEvent:v7];
    [(TISKEvent *)self touchDownTimestamp];
    v9 = v8;
    [v7 touchDownTimestamp];
    v11 = v9 - v10;
    v12 = [v7 type];
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v14 = &kTISKDeleteToSpaceMetric;
        goto LABEL_11;
      }

      if (v12 == 8)
      {
        v15 = MEMORY[0x277CCABB0];
        [(TISKEvent *)self touchDownTimestamp];
        v17 = v16;
        [v7 touchUpTimestamp];
        v13 = [v15 numberWithDouble:v17 - v18];
        v14 = &kTISKPathSpaceMetric;
        goto LABEL_11;
      }
    }

    else
    {
      if (!v12)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v14 = &kTISKCharToSpaceMetric;
        goto LABEL_11;
      }

      if (v12 == 2)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v14 = &kTISKSpaceToSpaceMetric;
LABEL_11:
        [v6 addSample:v13 forKey:*v14];
      }
    }
  }
}

- (void)reportToSession:(id)a3
{
  v11.receiver = self;
  v11.super_class = TISKSpaceKeyEvent;
  v4 = a3;
  [(TISKInputEvent *)&v11 reportToSession:v4];
  v5 = MEMORY[0x277CCABB0];
  [(TISKInputEvent *)self touchDownErrorDistance:v11.receiver];
  v6 = [v5 numberWithDouble:?];
  [v4 addSample:v6 forKey:kTISKSpaceDownErrorDistance];

  v7 = MEMORY[0x277CCABB0];
  [(TISKInputEvent *)self touchUpErrorDistance];
  v8 = [v7 numberWithDouble:?];
  [v4 addSample:v8 forKey:kTISKSpaceUpErrorDistance];

  v9 = MEMORY[0x277CCABB0];
  [(TISKInputEvent *)self downUpTimeDelta];
  v10 = [v9 numberWithDouble:?];
  [v4 addSample:v10 forKey:kTISKSpaceTouchDownUpMetric];
}

@end
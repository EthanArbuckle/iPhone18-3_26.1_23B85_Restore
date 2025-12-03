@interface TISKSpaceKeyEvent
- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event;
- (void)reportToSession:(id)session;
@end

@implementation TISKSpaceKeyEvent

- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event
{
  timingCopy = timing;
  eventCopy = event;
  if (eventCopy)
  {
    v19.receiver = self;
    v19.super_class = TISKSpaceKeyEvent;
    [(TISKInputEvent *)&v19 reportInterKeyTiming:timingCopy previousEvent:eventCopy];
    [(TISKEvent *)self touchDownTimestamp];
    v9 = v8;
    [eventCopy touchDownTimestamp];
    v11 = v9 - v10;
    type = [eventCopy type];
    if (type > 2)
    {
      if (type == 3)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v14 = &kTISKDeleteToSpaceMetric;
        goto LABEL_11;
      }

      if (type == 8)
      {
        v15 = MEMORY[0x277CCABB0];
        [(TISKEvent *)self touchDownTimestamp];
        v17 = v16;
        [eventCopy touchUpTimestamp];
        v13 = [v15 numberWithDouble:v17 - v18];
        v14 = &kTISKPathSpaceMetric;
        goto LABEL_11;
      }
    }

    else
    {
      if (!type)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v14 = &kTISKCharToSpaceMetric;
        goto LABEL_11;
      }

      if (type == 2)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v14 = &kTISKSpaceToSpaceMetric;
LABEL_11:
        [timingCopy addSample:v13 forKey:*v14];
      }
    }
  }
}

- (void)reportToSession:(id)session
{
  v11.receiver = self;
  v11.super_class = TISKSpaceKeyEvent;
  sessionCopy = session;
  [(TISKInputEvent *)&v11 reportToSession:sessionCopy];
  v5 = MEMORY[0x277CCABB0];
  [(TISKInputEvent *)self touchDownErrorDistance:v11.receiver];
  v6 = [v5 numberWithDouble:?];
  [sessionCopy addSample:v6 forKey:kTISKSpaceDownErrorDistance];

  v7 = MEMORY[0x277CCABB0];
  [(TISKInputEvent *)self touchUpErrorDistance];
  v8 = [v7 numberWithDouble:?];
  [sessionCopy addSample:v8 forKey:kTISKSpaceUpErrorDistance];

  v9 = MEMORY[0x277CCABB0];
  [(TISKInputEvent *)self downUpTimeDelta];
  v10 = [v9 numberWithDouble:?];
  [sessionCopy addSample:v10 forKey:kTISKSpaceTouchDownUpMetric];
}

@end
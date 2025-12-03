@interface TISK123KeyEvent
- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event;
@end

@implementation TISK123KeyEvent

- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event
{
  timingCopy = timing;
  eventCopy = event;
  if (!eventCopy)
  {
    goto LABEL_11;
  }

  v16.receiver = self;
  v16.super_class = TISK123KeyEvent;
  [(TISKEvent *)&v16 reportInterKeyTiming:timingCopy previousEvent:eventCopy];
  [(TISKEvent *)self touchDownTimestamp];
  v9 = v8;
  [eventCopy touchDownTimestamp];
  v11 = v9 - v10;
  type = [eventCopy type];
  if (type)
  {
    if (type == 2)
    {
      v13 = &kTISKSpaceTo123Metric;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_9;
      }

      v13 = &kTISKDeleteTo123Metric;
    }
  }

  else
  {
    v13 = &kTISKCharTo123Metric;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [timingCopy addSample:v14 forKey:*v13];

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [timingCopy addSample:v15 forKey:kTISKAnyTapTo123Metric];
  }

LABEL_11:
}

@end
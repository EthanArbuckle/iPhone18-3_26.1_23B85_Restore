@interface TISK123KeyEvent
- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4;
@end

@implementation TISK123KeyEvent

- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_11;
  }

  v16.receiver = self;
  v16.super_class = TISK123KeyEvent;
  [(TISKEvent *)&v16 reportInterKeyTiming:v6 previousEvent:v7];
  [(TISKEvent *)self touchDownTimestamp];
  v9 = v8;
  [v7 touchDownTimestamp];
  v11 = v9 - v10;
  v12 = [v7 type];
  if (v12)
  {
    if (v12 == 2)
    {
      v13 = &kTISKSpaceTo123Metric;
    }

    else
    {
      if (v12 != 3)
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
  [v6 addSample:v14 forKey:*v13];

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v6 addSample:v15 forKey:kTISKAnyTapTo123Metric];
  }

LABEL_11:
}

@end
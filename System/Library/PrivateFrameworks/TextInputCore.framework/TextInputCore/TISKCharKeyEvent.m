@interface TISKCharKeyEvent
- (id)description;
- (int64_t)_metricWordKeyPostion:(int64_t)a3;
- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4;
- (void)reportToSession:(id)a3;
@end

@implementation TISKCharKeyEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TISKInputEvent *)self input];
  v5 = [v4 string];
  v6 = v5;
  wordPosition = self->_wordPosition;
  if (self->_isShortWord)
  {
    v8 = &stru_283FDFAF8;
  }

  else
  {
    v8 = @":l";
  }

  v9 = [v3 stringWithFormat:@"%@:%ld%@", v5, self->_wordPosition, v8];

  return v9;
}

- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_20;
  }

  v26.receiver = self;
  v26.super_class = TISKCharKeyEvent;
  [(TISKInputEvent *)&v26 reportInterKeyTiming:v6 previousEvent:v7];
  [(TISKEvent *)self touchDownTimestamp];
  v9 = v8;
  [v7 touchDownTimestamp];
  v11 = v9 - v10;
  [(TISKEvent *)self touchDownTimestamp];
  v13 = v12;
  [v7 touchUpTimestamp];
  v15 = v14;
  v16 = [v7 tap];
  if (v16)
  {
    v17 = v16;
    v18 = [v7 tap];
    if ([v18 isDownUpTap])
    {
      v19 = [v7 type];

      if (v19 == 10)
      {
        goto LABEL_8;
      }

      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [v6 addSample:v17 forKey:kTISKAnyTapToCharMetric];
    }

    else
    {
    }
  }

LABEL_8:
  v20 = [v7 type];
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v22 = kTISKDeleteToCharMetric;
      goto LABEL_18;
    }

    if (v20 == 10)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v22 = kTISK123ToCharMetric;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v20)
    {
      if (!self->_isShortWord)
      {
        wordPosition = self->_wordPosition;
        if (wordPosition < 1)
        {
          goto LABEL_20;
        }

        v24 = [(TISKCharKeyEvent *)self _metricWordKeyPostion:wordPosition - 1];
        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [v6 addSample:v25 forKey:kTISKLongWordTouchDownDownPositionalMetric withPosition:v24];

        v21 = [MEMORY[0x277CCABB0] numberWithDouble:v13 - v15];
        [v6 addSample:v21 forKey:kTISKLongWordTouchUpDownPositionalMetric withPosition:v24];
        goto LABEL_19;
      }

      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v22 = kTISKShortWordCharToCharMetric;
LABEL_18:
      [v6 addSample:v21 forKey:v22];
LABEL_19:

      goto LABEL_20;
    }

    if (v20 == 2)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v22 = kTISKSpaceToCharMetric;
      goto LABEL_18;
    }
  }

LABEL_20:
}

- (void)reportToSession:(id)a3
{
  v17.receiver = self;
  v17.super_class = TISKCharKeyEvent;
  v4 = a3;
  [(TISKInputEvent *)&v17 reportToSession:v4];
  if (self->_isShortWord)
  {
    v5 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self downUpTimeDelta:v17.receiver];
    v6 = [v5 numberWithDouble:?];
    [v4 addSample:v6 forKey:kTISKShortWordCharTouchDownUpMetric];

    v7 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchDownErrorDistance];
    v8 = [v7 numberWithDouble:?];
    [v4 addSample:v8 forKey:kTISKShortWordCharDownErrorDistance];

    v9 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchUpErrorDistance];
    v10 = [v9 numberWithDouble:?];
    [v4 addSample:v10 forKey:kTISKShortWordCharUpErrorDistance];
  }

  else
  {
    v11 = [(TISKCharKeyEvent *)self _metricWordKeyPostion:self->_wordPosition, v17.receiver, v17.super_class];
    v12 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self downUpTimeDelta];
    v13 = [v12 numberWithDouble:?];
    [v4 addSample:v13 forKey:kTISKLongWordTouchDownUpPositionalMetric withPosition:v11];

    v14 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchDownErrorDistance];
    v15 = [v14 numberWithDouble:?];
    [v4 addSample:v15 forKey:kTISKLongWordPositionalDownErrorDistance withPosition:v11];

    v16 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchUpErrorDistance];
    v10 = [v16 numberWithDouble:?];
    [v4 addSample:v10 forKey:kTISKLongWordPositionalUpErrorDistance withPosition:v11];
  }
}

- (int64_t)_metricWordKeyPostion:(int64_t)a3
{
  if (a3 >= 5)
  {
    return 5;
  }

  else
  {
    return a3;
  }
}

@end
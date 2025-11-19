@interface TISKInputEvent
- (BOOL)isMissingATouch;
- (double)downUpTimeDelta;
- (void)_computeErrorDistance;
- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4;
- (void)reportToSession:(id)a3;
@end

@implementation TISKInputEvent

- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v23.receiver = self;
    v23.super_class = TISKInputEvent;
    [(TISKEvent *)&v23 reportInterKeyTiming:v6 previousEvent:v7];
    if ([v7 type] == 10 || (objc_msgSend(v7, "tap"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) != 0))
    {
      [(TISKEvent *)self touchDownTimestamp];
      v12 = v11;
      [v7 touchDownTimestamp];
      v14 = v12 - v13;
      [(TISKEvent *)self touchDownTimestamp];
      v16 = v15;
      [v7 touchUpTimestamp];
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16 - v17];
      [v6 addSample:v18 forKey:kTISKTouchUpDownMetric];

      v19 = [v7 type];
      if (v19 == 10)
      {
        v21 = &kTISK123ToAnyTapMetric;
      }

      else
      {
        if (!v19)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
          [v6 addSample:v20 forKey:kTISKCharToAnyTapMetric];
        }

        v21 = &kTISKTouchDownDownMetric;
      }

      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      [v6 addSample:v22 forKey:*v21];
    }
  }
}

- (void)reportToSession:(id)a3
{
  v13 = a3;
  [v13 addSample:&unk_28400BF10 forKey:kTISKNumberOfTappedKeysCounter];
  [v13 addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(TISKEvent *)self tap];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "numberOfDrags")}];
  [v13 addSample:v6 forKey:kTISKNumberOfDragsCounter];

  if (!self->_ignoreTapData)
  {
    v7 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self downUpTimeDelta];
    v8 = [v7 numberWithDouble:?];
    [v13 addSample:v8 forKey:kTISKTouchDownUpMetric];

    [(TISKInputEvent *)self _computeErrorDistance];
    if (self->_canComputeErrorDistance)
    {
      v9 = MEMORY[0x277CCABB0];
      [(TISKInputEvent *)self touchDownErrorDistance];
      v10 = [v9 numberWithDouble:?];
      [v13 addSample:v10 forKey:kTISKDownErrorDistance];

      v11 = MEMORY[0x277CCABB0];
      [(TISKInputEvent *)self touchUpErrorDistance];
      v12 = [v11 numberWithDouble:?];
      [v13 addSample:v12 forKey:kTISKUpErrorDistance];
    }
  }
}

- (void)_computeErrorDistance
{
  v3 = [(TISKInputEvent *)self input];
  v19 = [v3 string];

  if (!v19)
  {
    v4 = [(TISKInputEvent *)self input];
    v5 = [v4 isBackspace];

    if ((v5 & 1) == 0)
    {
      self->_canComputeErrorDistance = 0;
      return;
    }

    v19 = @"delete";
  }

  v6 = [(TISKEvent *)self tap];
  [v6 getFrameForKey:v19];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  if (CGRectEqualToRect(v21, *MEMORY[0x277CBF398]))
  {
    self->_canComputeErrorDistance = 0;
  }

  else
  {
    v15 = [(TISKEvent *)self tap];
    [v15 downErrorDistance:{v8, v10, v12, v14}];
    self->_downErrorDistance = v16;

    v17 = [(TISKEvent *)self tap];
    [v17 upErrorDistance:{v8, v10, v12, v14}];
    self->_upErrorDistance = v18;
  }
}

- (double)downUpTimeDelta
{
  v3 = [(TISKEvent *)self tap];
  v4 = [v3 lastTouch];
  [v4 timestamp];
  v6 = v5;
  v7 = [(TISKEvent *)self tap];
  v8 = [v7 firstTouch];
  [v8 timestamp];
  v10 = v6 - v9;

  return v10;
}

- (BOOL)isMissingATouch
{
  v3 = [(TISKEvent *)self tap];
  if (v3)
  {
    v4 = [(TISKEvent *)self tap];
    v5 = [v4 isDownUpTap];

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end
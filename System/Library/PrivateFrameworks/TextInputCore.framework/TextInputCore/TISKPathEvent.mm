@interface TISKPathEvent
- (BOOL)isMissingATouch;
- (double)countPathPauses:(id)a3;
- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4;
- (void)reportToSession:(id)a3;
@end

@implementation TISKPathEvent

- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v19.receiver = self;
    v19.super_class = TISKPathEvent;
    [(TISKEvent *)&v19 reportInterKeyTiming:v6 previousEvent:v7];
    [(TISKEvent *)self touchDownTimestamp];
    v9 = v8;
    [v7 touchDownTimestamp];
    v11 = v9 - v10;
    v12 = [v7 type];
    switch(v12)
    {
      case 2:
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v18 = &kTISKSpaceToPathMetric;
        goto LABEL_8;
      case 3:
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v18 = &kTISKDeleteToPathMetric;
        goto LABEL_8;
      case 8:
        v13 = MEMORY[0x277CCABB0];
        [(TISKEvent *)self touchDownTimestamp];
        v15 = v14;
        [v7 touchUpTimestamp];
        v17 = [v13 numberWithDouble:v15 - v16];
        v18 = &kTISKPathToPathMetric;
LABEL_8:
        [v6 addSample:v17 forKey:*v18];

        break;
    }
  }
}

- (void)reportToSession:(id)a3
{
  v18 = a3;
  if ([(TISKEvent *)self isValidCandidate:self->_candidate])
  {
    [v18 addSample:&unk_28400BF10 forKey:kTISKNumberOfWordsCounter];
    [v18 addSample:&unk_28400BF10 forKey:kTISKNumberOfPaths];
    [(TISKEvent *)self touchUpTimestamp];
    v5 = v4;
    [(TISKEvent *)self touchDownTimestamp];
    v7 = v5 - v6;
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    [v18 addSample:v8 forKey:kTISKTotalPathTime];

    if (v7 > 0.0)
    {
      v9 = [(NSString *)self->_candidateString length];
      [v18 addToCounterForRateMetric:v9 forKey:kTISKPathTypingSpeed];
      [v18 addToDurationForRateMetric:kTISKPathTypingSpeed forKey:v7];
      [v18 addToDurationForRateMetric:kTISKTapTypingSpeed forKey:-v7];
    }

    if (v7 > 2.0)
    {
      [(TISKPathEvent *)self countPathPauses:self->_allTouches];
      if (v10 > 0.0)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v18 addSample:v11 forKey:kTISKMidPathPause];
      }
    }

    v12 = MEMORY[0x277CCABB0];
    v13 = [(TISKEvent *)self tap];
    [v13 totalTapDistance];
    v14 = [v12 numberWithDouble:?];
    [v18 addSample:v14 forKey:kTISKTotalPathLength];

    candidate = self->_candidate;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TIKeyboardCandidate *)self->_candidate excessPathRatio];
      if (v16 > 0.0)
      {
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v18 addSample:v17 forKey:kTISKPathErrorDistanceMetric];
      }
    }
  }
}

- (double)countPathPauses:(id)a3
{
  v3 = a3;
  if ([v3 count] >= 4)
  {
    v5 = [v3 count] - 3;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
    if (v5)
    {
      v7 = 1;
      do
      {
        v8 = MEMORY[0x277CCABB0];
        v9 = [v3 objectAtIndexedSubscript:v7];
        v10 = [v3 objectAtIndexedSubscript:++v7];
        v11 = v9;
        [v10 location];
        v13 = v12;
        [v11 location];
        *&v13 = v13 - v14;
        [v10 location];
        v16 = v15;
        [v11 location];
        v18 = v17;

        v19 = v16 - v18;
        *&v20 = hypotf(*&v13, v19);
        v21 = [v8 numberWithFloat:v20];
        [v6 addObject:v21];
      }

      while (v7 <= v5);
    }

    v4 = [v6 copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v22 = v3;
  if ([v22 count] >= 4)
  {
    v24 = [v22 count] - 3;
    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:v24];
    if (v24)
    {
      v26 = 1;
      do
      {
        v27 = MEMORY[0x277CCABB0];
        v28 = [v22 objectAtIndexedSubscript:v26];
        v29 = [v22 objectAtIndexedSubscript:++v26];
        v30 = v28;
        [v29 timestamp];
        v32 = v31;
        [v30 timestamp];
        v34 = v33;

        v35 = [v27 numberWithDouble:v32 - v34];
        [v25 addObject:v35];
      }

      while (v26 <= v24);
    }

    v23 = [v25 copy];
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  v36 = 0.0;
  if ([v4 count] != 1)
  {
    v37 = 0;
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    do
    {
      v41 = [v4 objectAtIndexedSubscript:v37];
      [v41 doubleValue];
      v39 = v39 + v42;

      v43 = [v23 objectAtIndexedSubscript:v37];
      [v43 doubleValue];
      v38 = v38 + v44;

      if (v38 > 2.0 && v39 > 40.0)
      {
        v40 = v40 + 1.0;
      }

      if (v39 > 40.0)
      {
        v39 = 0.0;
        v38 = 0.0;
      }

      ++v37;
    }

    while ([v4 count] - 1 > v37);
    if (v38 > 2.0 && v39 < 40.0)
    {
      v36 = v40 + 1.0;
    }

    else
    {
      v36 = v40;
    }
  }

  return v36;
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
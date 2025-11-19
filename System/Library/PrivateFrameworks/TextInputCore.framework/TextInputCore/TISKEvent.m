@interface TISKEvent
- (BOOL)isValidCandidate:(id)a3;
- (double)touchDownTimestamp;
- (double)touchUpTimestamp;
- (id)downTouchEvent;
- (id)init:(int)a3 emojiSearchMode:(BOOL)a4 order:(int64_t)a5 tap:(id)a6;
- (id)upTouchEvent;
- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4;
@end

@implementation TISKEvent

- (BOOL)isValidCandidate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 candidate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    v7 = [v4 candidate];
    v8 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v9 = [v7 rangeOfCharacterFromSet:v8] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  v8 = [v6 type];
  type = self->_type;
  if (v8 == 12)
  {
    if (type != 12)
    {
      [v17 startTypingTimerWithEvent:self];
      goto LABEL_11;
    }

LABEL_6:
    if ([v7 type] != 12)
    {
      [v17 haltTypingTimerWithEvent:v7];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (type == 12)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (([v17 isTypingTimerHalted] & 1) == 0)
  {
    [(TISKEvent *)self touchDownTimestamp];
    v11 = v10;
    [v7 touchUpTimestamp];
    v13 = v11 - v12;
    if (v13 <= 5.0)
    {
      v15 = [v7 type];
      if (v13 >= 0.0 && v15 == 8)
      {
        [v17 addToDurationForRateMetric:kTISKTapTypingSpeed forKey:-v13];
        [v17 addToDurationForRateMetric:kTISKPathTypingSpeed forKey:v13];
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v17 addSample:v14 forKey:kTISKTypingPauses];

      [v17 haltTypingTimerWithEvent:v7];
      [v17 startTypingTimerWithEvent:self];
      [v17 addSample:&unk_28400BF10 forKey:kTISKEpisodeCount];
    }
  }

LABEL_11:
}

- (double)touchUpTimestamp
{
  tap = self->_tap;
  if (!tap || ![(TISKTap *)tap isDownUpTap])
  {
    return 0.0;
  }

  v4 = [(TISKTap *)self->_tap lastTouch];
  [v4 timestamp];
  v6 = v5;

  return v6;
}

- (double)touchDownTimestamp
{
  tap = self->_tap;
  if (!tap || ![(TISKTap *)tap isDownUpTap])
  {
    return 0.0;
  }

  v4 = [(TISKTap *)self->_tap firstTouch];
  [v4 timestamp];
  v6 = v5;

  return v6;
}

- (id)downTouchEvent
{
  tap = self->_tap;
  if (tap)
  {
    if ([tap isDownUpTap])
    {
      tap = [(TISKTap *)self->_tap firstTouch];
    }

    else
    {
      tap = 0;
    }
  }

  return tap;
}

- (id)upTouchEvent
{
  tap = self->_tap;
  if (tap)
  {
    if ([tap isDownUpTap])
    {
      tap = [(TISKTap *)self->_tap lastTouch];
    }

    else
    {
      tap = 0;
    }
  }

  return tap;
}

- (id)init:(int)a3 emojiSearchMode:(BOOL)a4 order:(int64_t)a5 tap:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = TISKEvent;
  v12 = [(TISKEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = a3;
    v12->_emojiSearchMode = a4;
    v12->_order = a5;
    objc_storeStrong(&v12->_tap, a6);
    v13->_hasTimestamp = v11 != 0;
  }

  return v13;
}

@end
@interface TISKEvent
- (BOOL)isValidCandidate:(id)candidate;
- (double)touchDownTimestamp;
- (double)touchUpTimestamp;
- (id)downTouchEvent;
- (id)init:(int)init emojiSearchMode:(BOOL)mode order:(int64_t)order tap:(id)tap;
- (id)upTouchEvent;
- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event;
@end

@implementation TISKEvent

- (BOOL)isValidCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = candidateCopy;
  if (candidateCopy && ([candidateCopy candidate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    candidate = [v4 candidate];
    alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v9 = [candidate rangeOfCharacterFromSet:alphanumericCharacterSet] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event
{
  timingCopy = timing;
  eventCopy = event;
  v7 = eventCopy;
  if (!eventCopy)
  {
    goto LABEL_11;
  }

  type = [eventCopy type];
  type = self->_type;
  if (type == 12)
  {
    if (type != 12)
    {
      [timingCopy startTypingTimerWithEvent:self];
      goto LABEL_11;
    }

LABEL_6:
    if ([v7 type] != 12)
    {
      [timingCopy haltTypingTimerWithEvent:v7];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (type == 12)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (([timingCopy isTypingTimerHalted] & 1) == 0)
  {
    [(TISKEvent *)self touchDownTimestamp];
    v11 = v10;
    [v7 touchUpTimestamp];
    v13 = v11 - v12;
    if (v13 <= 5.0)
    {
      type2 = [v7 type];
      if (v13 >= 0.0 && type2 == 8)
      {
        [timingCopy addToDurationForRateMetric:kTISKTapTypingSpeed forKey:-v13];
        [timingCopy addToDurationForRateMetric:kTISKPathTypingSpeed forKey:v13];
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [timingCopy addSample:v14 forKey:kTISKTypingPauses];

      [timingCopy haltTypingTimerWithEvent:v7];
      [timingCopy startTypingTimerWithEvent:self];
      [timingCopy addSample:&unk_28400BF10 forKey:kTISKEpisodeCount];
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

  lastTouch = [(TISKTap *)self->_tap lastTouch];
  [lastTouch timestamp];
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

  firstTouch = [(TISKTap *)self->_tap firstTouch];
  [firstTouch timestamp];
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

- (id)init:(int)init emojiSearchMode:(BOOL)mode order:(int64_t)order tap:(id)tap
{
  tapCopy = tap;
  v15.receiver = self;
  v15.super_class = TISKEvent;
  v12 = [(TISKEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = init;
    v12->_emojiSearchMode = mode;
    v12->_order = order;
    objc_storeStrong(&v12->_tap, tap);
    v13->_hasTimestamp = tapCopy != 0;
  }

  return v13;
}

@end
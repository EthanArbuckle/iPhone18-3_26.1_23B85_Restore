@interface TISKLayoutSwitchEvent
- (double)touchDownTimestamp;
- (double)touchUpTimestamp;
- (void)reportToSession:(id)session;
@end

@implementation TISKLayoutSwitchEvent

- (void)reportToSession:(id)session
{
  v3 = kTISKNumberOfTappedKeysCounter;
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:v3];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

- (double)touchUpTimestamp
{
  v3 = [(TISKEvent *)self tap];

  if (v3)
  {
    v4 = [(TISKEvent *)self tap];
    lastTouch = [v4 lastTouch];
    [lastTouch timestamp];
    v7 = v6;

    return v7;
  }

  else
  {

    [(TISKTimestampEvent *)self timestamp];
  }

  return result;
}

- (double)touchDownTimestamp
{
  v3 = [(TISKEvent *)self tap];

  if (v3)
  {
    v4 = [(TISKEvent *)self tap];
    firstTouch = [v4 firstTouch];
    [firstTouch timestamp];
    v7 = v6;

    return v7;
  }

  else
  {

    [(TISKTimestampEvent *)self timestamp];
  }

  return result;
}

@end
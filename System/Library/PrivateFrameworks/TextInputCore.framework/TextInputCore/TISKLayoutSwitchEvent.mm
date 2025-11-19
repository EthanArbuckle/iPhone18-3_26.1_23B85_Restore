@interface TISKLayoutSwitchEvent
- (double)touchDownTimestamp;
- (double)touchUpTimestamp;
- (void)reportToSession:(id)a3;
@end

@implementation TISKLayoutSwitchEvent

- (void)reportToSession:(id)a3
{
  v3 = kTISKNumberOfTappedKeysCounter;
  v4 = a3;
  [v4 addSample:&unk_28400BF10 forKey:v3];
  [v4 addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

- (double)touchUpTimestamp
{
  v3 = [(TISKEvent *)self tap];

  if (v3)
  {
    v4 = [(TISKEvent *)self tap];
    v5 = [v4 lastTouch];
    [v5 timestamp];
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
    v5 = [v4 firstTouch];
    [v5 timestamp];
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
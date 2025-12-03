@interface TISKEmojiSwitchEvent
- (id)description;
- (void)reportToSession:(id)session;
@end

@implementation TISKEmojiSwitchEvent

- (id)description
{
  if ([(TISKEvent *)self emojiSearchMode])
  {
    v2 = @"es:1";
  }

  else
  {
    v2 = @"es:0";
  }

  return v2;
}

- (void)reportToSession:(id)session
{
  v3 = kTISKNumberOfTappedKeysCounter;
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:v3];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

@end
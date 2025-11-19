@interface TISKEmojiSearchEvent
- (id)description;
- (id)init:(double)a3 engaged:(BOOL)a4 order:(int64_t)a5;
- (void)reportToSession:(id)a3;
@end

@implementation TISKEmojiSearchEvent

- (id)description
{
  if (self->_engaged)
  {
    return @"ef:1";
  }

  else
  {
    return @"ef:0";
  }
}

- (void)reportToSession:(id)a3
{
  v3 = kTISKNumberOfTappedKeysCounter;
  v4 = a3;
  [v4 addSample:&unk_28400BF10 forKey:v3];
  [v4 addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

- (id)init:(double)a3 engaged:(BOOL)a4 order:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = TISKEmojiSearchEvent;
  result = [(TISKTimestampEvent *)&v7 init:19 timestamp:1 emojiSearchMode:a5 order:a3];
  if (result)
  {
    *(result + 40) = a4;
  }

  return result;
}

@end
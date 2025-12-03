@interface TISKEmojiSearchEvent
- (id)description;
- (id)init:(double)init engaged:(BOOL)engaged order:(int64_t)order;
- (void)reportToSession:(id)session;
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

- (void)reportToSession:(id)session
{
  v3 = kTISKNumberOfTappedKeysCounter;
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:v3];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
}

- (id)init:(double)init engaged:(BOOL)engaged order:(int64_t)order
{
  v7.receiver = self;
  v7.super_class = TISKEmojiSearchEvent;
  result = [(TISKTimestampEvent *)&v7 init:19 timestamp:1 emojiSearchMode:order order:init];
  if (result)
  {
    *(result + 40) = engaged;
  }

  return result;
}

@end
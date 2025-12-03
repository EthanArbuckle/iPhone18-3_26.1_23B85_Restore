@interface TISKPredictionBarEvent
- (id)description;
- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event;
- (void)reportToSession:(id)session;
@end

@implementation TISKPredictionBarEvent

- (id)description
{
  if (self->_emojiPrediction)
  {
    return @"ep";
  }

  else
  {
    return @"pb";
  }
}

- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event
{
  timingCopy = timing;
  eventCopy = event;
  if (eventCopy)
  {
    v15.receiver = self;
    v15.super_class = TISKPredictionBarEvent;
    [(TISKEvent *)&v15 reportInterKeyTiming:timingCopy previousEvent:eventCopy];
    [(TISKTimestampEvent *)self touchDownTimestamp];
    v9 = v8;
    [eventCopy touchDownTimestamp];
    v11 = v10;
    type = [eventCopy type];
    if (!type)
    {
      v13 = &kTISKCharToPredictionMetric;
      goto LABEL_6;
    }

    if (type == 2)
    {
      v13 = &kTISKSpaceToPredictionMetric;
LABEL_6:
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v9 - v11];
      [timingCopy addSample:v14 forKey:*v13];
    }
  }
}

- (void)reportToSession:(id)session
{
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfTappedKeysCounter];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
  if (self->_emojiPrediction)
  {
    [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfEmojiCounter];
    emojiBucketCategory = [(TISKPredictionBarEvent *)self emojiBucketCategory];

    if (emojiBucketCategory)
    {
      emojiBucketCategory2 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v6 = [emojiBucketCategory2 isEqualToString:@"PositiveEmoji"];

      if (v6)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalPositiveEmoji];
      }

      emojiBucketCategory3 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v8 = [emojiBucketCategory3 isEqualToString:@"SadEmoji"];

      if (v8)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalSadEmoji];
      }

      emojiBucketCategory4 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v10 = [emojiBucketCategory4 isEqualToString:@"AnxietyEmoji"];

      if (v10)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalAnxietyEmoji];
      }

      emojiBucketCategory5 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v12 = [emojiBucketCategory5 isEqualToString:@"AngerEmoji"];

      if (v12)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalAngerEmoji];
      }

      emojiBucketCategory6 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v14 = [emojiBucketCategory6 isEqualToString:@"LowEnergyEmoji"];

      if (v14)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalLowEnergyEmoji];
      }

      emojiBucketCategory7 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v16 = [emojiBucketCategory7 isEqualToString:@"FeelEmoji"];

      if (v16)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalFeelEmoji];
      }

      emojiBucketCategory8 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v18 = [emojiBucketCategory8 isEqualToString:@"ConfusedEmoji"];

      if (v18)
      {
        [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalConfusedEmoji];
      }
    }
  }
}

@end
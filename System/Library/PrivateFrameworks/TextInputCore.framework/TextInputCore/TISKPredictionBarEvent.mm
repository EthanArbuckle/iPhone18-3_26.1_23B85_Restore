@interface TISKPredictionBarEvent
- (id)description;
- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4;
- (void)reportToSession:(id)a3;
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

- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v15.receiver = self;
    v15.super_class = TISKPredictionBarEvent;
    [(TISKEvent *)&v15 reportInterKeyTiming:v6 previousEvent:v7];
    [(TISKTimestampEvent *)self touchDownTimestamp];
    v9 = v8;
    [v7 touchDownTimestamp];
    v11 = v10;
    v12 = [v7 type];
    if (!v12)
    {
      v13 = &kTISKCharToPredictionMetric;
      goto LABEL_6;
    }

    if (v12 == 2)
    {
      v13 = &kTISKSpaceToPredictionMetric;
LABEL_6:
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v9 - v11];
      [v6 addSample:v14 forKey:*v13];
    }
  }
}

- (void)reportToSession:(id)a3
{
  v19 = a3;
  [v19 addSample:&unk_28400BF10 forKey:kTISKNumberOfTappedKeysCounter];
  [v19 addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
  if (self->_emojiPrediction)
  {
    [v19 addSample:&unk_28400BF10 forKey:kTISKNumberOfEmojiCounter];
    v4 = [(TISKPredictionBarEvent *)self emojiBucketCategory];

    if (v4)
    {
      v5 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v6 = [v5 isEqualToString:@"PositiveEmoji"];

      if (v6)
      {
        [v19 addSample:&unk_28400BF10 forKey:kTISKtotalPositiveEmoji];
      }

      v7 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v8 = [v7 isEqualToString:@"SadEmoji"];

      if (v8)
      {
        [v19 addSample:&unk_28400BF10 forKey:kTISKtotalSadEmoji];
      }

      v9 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v10 = [v9 isEqualToString:@"AnxietyEmoji"];

      if (v10)
      {
        [v19 addSample:&unk_28400BF10 forKey:kTISKtotalAnxietyEmoji];
      }

      v11 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v12 = [v11 isEqualToString:@"AngerEmoji"];

      if (v12)
      {
        [v19 addSample:&unk_28400BF10 forKey:kTISKtotalAngerEmoji];
      }

      v13 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v14 = [v13 isEqualToString:@"LowEnergyEmoji"];

      if (v14)
      {
        [v19 addSample:&unk_28400BF10 forKey:kTISKtotalLowEnergyEmoji];
      }

      v15 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v16 = [v15 isEqualToString:@"FeelEmoji"];

      if (v16)
      {
        [v19 addSample:&unk_28400BF10 forKey:kTISKtotalFeelEmoji];
      }

      v17 = [(TISKPredictionBarEvent *)self emojiBucketCategory];
      v18 = [v17 isEqualToString:@"ConfusedEmoji"];

      if (v18)
      {
        [v19 addSample:&unk_28400BF10 forKey:kTISKtotalConfusedEmoji];
      }
    }
  }
}

@end
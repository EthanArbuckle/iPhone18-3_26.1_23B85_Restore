@interface TISKEmojiInputEvent
- (void)reportToSession:(id)a3;
@end

@implementation TISKEmojiInputEvent

- (void)reportToSession:(id)a3
{
  v20 = a3;
  [v20 addSample:&unk_28400BF10 forKey:kTISKNumberOfEmojiCounter];
  [v20 addSample:&unk_28400BF10 forKey:kTISKNumberOfTappedKeysCounter];
  [v20 addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
  v4 = [(TISKEmojiInputEvent *)self emojiBucketCategory];

  v5 = v20;
  if (v4)
  {
    v6 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v7 = [v6 isEqualToString:@"PositiveEmoji"];

    if (v7)
    {
      [v20 addSample:&unk_28400BF10 forKey:kTISKtotalPositiveEmoji];
    }

    v8 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v9 = [v8 isEqualToString:@"SadEmoji"];

    if (v9)
    {
      [v20 addSample:&unk_28400BF10 forKey:kTISKtotalSadEmoji];
    }

    v10 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v11 = [v10 isEqualToString:@"AnxietyEmoji"];

    if (v11)
    {
      [v20 addSample:&unk_28400BF10 forKey:kTISKtotalAnxietyEmoji];
    }

    v12 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v13 = [v12 isEqualToString:@"AngerEmoji"];

    if (v13)
    {
      [v20 addSample:&unk_28400BF10 forKey:kTISKtotalAngerEmoji];
    }

    v14 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v15 = [v14 isEqualToString:@"LowEnergyEmoji"];

    if (v15)
    {
      [v20 addSample:&unk_28400BF10 forKey:kTISKtotalLowEnergyEmoji];
    }

    v16 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v17 = [v16 isEqualToString:@"FeelEmoji"];

    if (v17)
    {
      [v20 addSample:&unk_28400BF10 forKey:kTISKtotalFeelEmoji];
    }

    v18 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v19 = [v18 isEqualToString:@"ConfusedEmoji"];

    v5 = v20;
    if (v19)
    {
      [v20 addSample:&unk_28400BF10 forKey:kTISKtotalConfusedEmoji];
      v5 = v20;
    }
  }
}

@end
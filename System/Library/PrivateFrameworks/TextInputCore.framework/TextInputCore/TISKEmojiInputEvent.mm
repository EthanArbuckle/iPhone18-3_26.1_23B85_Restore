@interface TISKEmojiInputEvent
- (void)reportToSession:(id)session;
@end

@implementation TISKEmojiInputEvent

- (void)reportToSession:(id)session
{
  sessionCopy = session;
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfEmojiCounter];
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfTappedKeysCounter];
  [sessionCopy addToCounterForRateMetric:1 forKey:kTISKTapTypingSpeed];
  emojiBucketCategory = [(TISKEmojiInputEvent *)self emojiBucketCategory];

  v5 = sessionCopy;
  if (emojiBucketCategory)
  {
    emojiBucketCategory2 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v7 = [emojiBucketCategory2 isEqualToString:@"PositiveEmoji"];

    if (v7)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalPositiveEmoji];
    }

    emojiBucketCategory3 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v9 = [emojiBucketCategory3 isEqualToString:@"SadEmoji"];

    if (v9)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalSadEmoji];
    }

    emojiBucketCategory4 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v11 = [emojiBucketCategory4 isEqualToString:@"AnxietyEmoji"];

    if (v11)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalAnxietyEmoji];
    }

    emojiBucketCategory5 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v13 = [emojiBucketCategory5 isEqualToString:@"AngerEmoji"];

    if (v13)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalAngerEmoji];
    }

    emojiBucketCategory6 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v15 = [emojiBucketCategory6 isEqualToString:@"LowEnergyEmoji"];

    if (v15)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalLowEnergyEmoji];
    }

    emojiBucketCategory7 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v17 = [emojiBucketCategory7 isEqualToString:@"FeelEmoji"];

    if (v17)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalFeelEmoji];
    }

    emojiBucketCategory8 = [(TISKEmojiInputEvent *)self emojiBucketCategory];
    v19 = [emojiBucketCategory8 isEqualToString:@"ConfusedEmoji"];

    v5 = sessionCopy;
    if (v19)
    {
      [sessionCopy addSample:&unk_28400BF10 forKey:kTISKtotalConfusedEmoji];
      v5 = sessionCopy;
    }
  }
}

@end
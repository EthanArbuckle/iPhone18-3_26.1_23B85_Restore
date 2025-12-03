@interface SCDAArbitrationParticipationContext
+ (id)_convertBoosts:(id)boosts;
+ (id)_convertLastActivationTime:(double)time;
+ (id)_convertTrumpReason:(id)reason;
+ (unint64_t)_convertTriggerType:(int)type;
- (id)initAdvertisements:(id)advertisements decision:(BOOL)decision requestStartDate:(id)date session:(id)session voiceTriggerTime:(double)time winnerAdvertisement:(id)advertisement;
- (void)_processAdvertisements:(id)advertisements winnerAdvertisement:(id)advertisement;
@end

@implementation SCDAArbitrationParticipationContext

- (void)_processAdvertisements:(id)advertisements winnerAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  v7 = MEMORY[0x1E695DF70];
  advertisementsCopy = advertisements;
  v9 = [[v7 alloc] initWithCapacity:{objc_msgSend(advertisementsCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__SCDAArbitrationParticipationContext__processAdvertisements_winnerAdvertisement___block_invoke;
  v14[3] = &unk_1E85D3148;
  v14[4] = self;
  v15 = advertisementCopy;
  v10 = v9;
  v16 = v10;
  v11 = advertisementCopy;
  [advertisementsCopy enumerateObjectsUsingBlock:v14];

  seenAdvertisements = self->_seenAdvertisements;
  self->_seenAdvertisements = v10;
  v13 = v10;
}

void __82__SCDAArbitrationParticipationContext__processAdvertisements_winnerAdvertisement___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E69CE3B0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v11, "pHash")}];
  [v3 setAdvertHash:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v11, "userConfidence")}];
  [v3 setConfidence:{objc_msgSend(v5, "integerValue")}];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v11, "deviceClass")}];
  [v3 setDeviceClass:{objc_msgSend(v6, "integerValue")}];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v11, "deviceGroup")}];
  [v3 setDeviceGroup:{objc_msgSend(v7, "integerValue")}];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v11, "goodness")}];
  [v3 setGoodnessScore:{objc_msgSend(v8, "integerValue")}];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v11, "productType")}];
  [v3 setProductType:{objc_msgSend(v9, "integerValue")}];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v11, "tieBreaker")}];
  [v3 setTieBreaker:{objc_msgSend(v10, "integerValue")}];

  if ([v11 isMe])
  {
    *(*(a1 + 32) + 8) = [v11 rawAudioGoodnessScore];
    objc_storeStrong((*(a1 + 32) + 96), v3);
  }

  if (*(a1 + 40) == v11)
  {
    objc_storeStrong((*(a1 + 32) + 104), v3);
  }

  [*(a1 + 48) addObject:v3];
}

- (id)initAdvertisements:(id)advertisements decision:(BOOL)decision requestStartDate:(id)date session:(id)session voiceTriggerTime:(double)time winnerAdvertisement:(id)advertisement
{
  decisionCopy = decision;
  advertisementsCopy = advertisements;
  dateCopy = date;
  sessionCopy = session;
  advertisementCopy = advertisement;
  v24.receiver = self;
  v24.super_class = SCDAArbitrationParticipationContext;
  v18 = [(SCDAArbitrationParticipationContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cdaId, session);
    objc_storeStrong(&v19->_requestStartDate, date);
    v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:time];
    voiceTriggerDate = v19->_voiceTriggerDate;
    v19->_voiceTriggerDate = v20;

    v22 = 2;
    if (decisionCopy)
    {
      v22 = 3;
    }

    v19->_result = v22;
    [(SCDAArbitrationParticipationContext *)v19 _processAdvertisements:advertisementsCopy winnerAdvertisement:advertisementCopy];
  }

  return v19;
}

+ (id)_convertBoosts:(id)boosts
{
  boostsCopy = boosts;
  array = [MEMORY[0x1E695DF70] array];
  if ([boostsCopy deviceBoost])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v5 setKind:0];
    [v5 setType:0];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(boostsCopy, "deviceBoost")}];
    [v6 floatValue];
    [v5 setBoostValue:v7];

    [array addObject:v5];
  }

  if ([boostsCopy recentAlarmBoost])
  {
    v8 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v8 setKind:6];
    [v8 setType:0];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(boostsCopy, "recentAlarmBoost")}];
    [v9 floatValue];
    [v8 setBoostValue:v10];

    [array addObject:v8];
  }

  if ([boostsCopy recentMotionBoost])
  {
    v11 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v11 setKind:4];
    [v11 setType:0];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(boostsCopy, "recentMotionBoost")}];
    [v12 floatValue];
    [v11 setBoostValue:v13];

    [array addObject:v11];
  }

  if ([boostsCopy recentUnlockBoost])
  {
    v14 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v14 setKind:1];
    [v14 setType:0];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(boostsCopy, "recentUnlockBoost")}];
    [v15 floatValue];
    [v14 setBoostValue:v16];

    [array addObject:v14];
  }

  if ([boostsCopy recentPlaybackBoost])
  {
    v17 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v17 setKind:5];
    [v17 setType:0];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(boostsCopy, "recentPlaybackBoost")}];
    [v18 floatValue];
    [v17 setBoostValue:v19];

    [array addObject:v17];
  }

  if ([boostsCopy recentSiriRequestBoost])
  {
    v20 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v20 setKind:3];
    [v20 setType:0];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(boostsCopy, "recentSiriRequestBoost")}];
    [v21 floatValue];
    [v20 setBoostValue:v22];

    [array addObject:v20];
  }

  if ([boostsCopy recentRaiseToWakeBoost])
  {
    v23 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v23 setKind:2];
    [v23 setType:0];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(boostsCopy, "recentRaiseToWakeBoost")}];
    [v24 floatValue];
    [v23 setBoostValue:v25];

    [array addObject:v23];
  }

  return array;
}

+ (id)_convertTrumpReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isTrump] && (v4 = objc_msgSend(reasonCopy, "trumpReason"), v4 <= 8))
  {
    v5 = *(&off_1E85D3168 + v4);
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

+ (id)_convertLastActivationTime:(double)time
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v6 = v5;

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithDouble:(v6 - time) * 1000.0];
}

+ (unint64_t)_convertTriggerType:(int)type
{
  if ((type - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1DA78D2D0[type - 1];
  }
}

@end
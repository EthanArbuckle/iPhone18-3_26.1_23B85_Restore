@interface SCDAArbitrationParticipationContext
+ (id)_convertBoosts:(id)a3;
+ (id)_convertLastActivationTime:(double)a3;
+ (id)_convertTrumpReason:(id)a3;
+ (unint64_t)_convertTriggerType:(int)a3;
- (id)initAdvertisements:(id)a3 decision:(BOOL)a4 requestStartDate:(id)a5 session:(id)a6 voiceTriggerTime:(double)a7 winnerAdvertisement:(id)a8;
- (void)_processAdvertisements:(id)a3 winnerAdvertisement:(id)a4;
@end

@implementation SCDAArbitrationParticipationContext

- (void)_processAdvertisements:(id)a3 winnerAdvertisement:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF70];
  v8 = a3;
  v9 = [[v7 alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__SCDAArbitrationParticipationContext__processAdvertisements_winnerAdvertisement___block_invoke;
  v14[3] = &unk_1E85D3148;
  v14[4] = self;
  v15 = v6;
  v10 = v9;
  v16 = v10;
  v11 = v6;
  [v8 enumerateObjectsUsingBlock:v14];

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

- (id)initAdvertisements:(id)a3 decision:(BOOL)a4 requestStartDate:(id)a5 session:(id)a6 voiceTriggerTime:(double)a7 winnerAdvertisement:(id)a8
{
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = SCDAArbitrationParticipationContext;
  v18 = [(SCDAArbitrationParticipationContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_cdaId, a6);
    objc_storeStrong(&v19->_requestStartDate, a5);
    v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a7];
    voiceTriggerDate = v19->_voiceTriggerDate;
    v19->_voiceTriggerDate = v20;

    v22 = 2;
    if (v12)
    {
      v22 = 3;
    }

    v19->_result = v22;
    [(SCDAArbitrationParticipationContext *)v19 _processAdvertisements:v14 winnerAdvertisement:v17];
  }

  return v19;
}

+ (id)_convertBoosts:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  if ([v3 deviceBoost])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v5 setKind:0];
    [v5 setType:0];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "deviceBoost")}];
    [v6 floatValue];
    [v5 setBoostValue:v7];

    [v4 addObject:v5];
  }

  if ([v3 recentAlarmBoost])
  {
    v8 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v8 setKind:6];
    [v8 setType:0];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "recentAlarmBoost")}];
    [v9 floatValue];
    [v8 setBoostValue:v10];

    [v4 addObject:v8];
  }

  if ([v3 recentMotionBoost])
  {
    v11 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v11 setKind:4];
    [v11 setType:0];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "recentMotionBoost")}];
    [v12 floatValue];
    [v11 setBoostValue:v13];

    [v4 addObject:v11];
  }

  if ([v3 recentUnlockBoost])
  {
    v14 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v14 setKind:1];
    [v14 setType:0];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "recentUnlockBoost")}];
    [v15 floatValue];
    [v14 setBoostValue:v16];

    [v4 addObject:v14];
  }

  if ([v3 recentPlaybackBoost])
  {
    v17 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v17 setKind:5];
    [v17 setType:0];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "recentPlaybackBoost")}];
    [v18 floatValue];
    [v17 setBoostValue:v19];

    [v4 addObject:v17];
  }

  if ([v3 recentSiriRequestBoost])
  {
    v20 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v20 setKind:3];
    [v20 setType:0];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "recentSiriRequestBoost")}];
    [v21 floatValue];
    [v20 setBoostValue:v22];

    [v4 addObject:v20];
  }

  if ([v3 recentRaiseToWakeBoost])
  {
    v23 = objc_alloc_init(MEMORY[0x1E69CE3B8]);
    [v23 setKind:2];
    [v23 setType:0];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "recentRaiseToWakeBoost")}];
    [v24 floatValue];
    [v23 setBoostValue:v25];

    [v4 addObject:v23];
  }

  return v4;
}

+ (id)_convertTrumpReason:(id)a3
{
  v3 = a3;
  if ([v3 isTrump] && (v4 = objc_msgSend(v3, "trumpReason"), v4 <= 8))
  {
    v5 = *(&off_1E85D3168 + v4);
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

+ (id)_convertLastActivationTime:(double)a3
{
  v4 = [MEMORY[0x1E696AE30] processInfo];
  [v4 systemUptime];
  v6 = v5;

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithDouble:(v6 - a3) * 1000.0];
}

+ (unint64_t)_convertTriggerType:(int)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1DA78D2D0[a3 - 1];
  }
}

@end
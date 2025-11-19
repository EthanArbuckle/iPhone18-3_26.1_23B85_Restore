@interface PGPlaybackState
+ (id)defaultValueForKey:(id)a3;
+ (id)keysForEqualityOfNumberValues;
- (BOOL)_BOOLForKey:(int64_t)a3;
- (BOOL)hasInvalidTiming;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToPlaybackState:(id)a3;
- (BOOL)supportsMicroPIP;
- (PGPlaybackState)initWithDictionary:(id)a3;
- (PGPlaybackStatePrerollAttributes)prerollAttributes;
- (double)_doubleForKey:(int64_t)a3;
- (double)elapsedTime;
- (double)normalizedProgress;
- (id)_dictionaryForKey:(int64_t)a3;
- (id)_numberForKey:(int64_t)a3;
- (id)_stringForKey:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromPlaybackState:(id)a3;
- (id)succinctDescription;
- (int64_t)_integerForKey:(int64_t)a3;
- (void)_ensureMutableDictionary;
- (void)_setBool:(BOOL)a3 forKey:(int64_t)a4;
- (void)_setDictionaryOrNotFound:(id)a3 forKey:(int64_t)a4;
- (void)_setDouble:(double)a3 forKey:(int64_t)a4;
- (void)_setInteger:(int64_t)a3 forKey:(int64_t)a4;
- (void)_setStateValue:(id)a3 forKey:(int64_t)a4;
- (void)appendDescriptionForKey:(int64_t)a3 value:(id)a4 toBuilder:(id)a5;
- (void)setBackgroundAudioPolicy:(int64_t)a3;
- (void)setPlaybackRate:(double)a3 elapsedTime:(double)a4 timeControlStatus:(int64_t)a5;
- (void)setPrerollAttributes:(id)a3;
- (void)updatePlaybackStateWithDiff:(id)a3;
@end

@implementation PGPlaybackState

- (void)_ensureMutableDictionary
{
  if (!self->_mutableDictionary)
  {
    self->_mutableDictionary = [MEMORY[0x1E695DF90] dictionary];

    MEMORY[0x1EEE66BB8]();
  }
}

- (double)elapsedTime
{
  [(PGPlaybackState *)self anchorContentTime];
  v4 = v3;
  if ([(PGPlaybackState *)self timeControlStatus]== 2)
  {
    [(PGPlaybackState *)self playbackRate];
    if (v5 != 0.0)
    {
      v6 = v5;
      Current = CFAbsoluteTimeGetCurrent();
      [(PGPlaybackState *)self anchorWallTime];
      v4 = v4 + v6 * (Current - v8);
    }
  }

  v9 = fmax(v4, 0.0);
  [(PGPlaybackState *)self contentDuration];
  if (v9 < result)
  {
    return v9;
  }

  return result;
}

+ (id)keysForEqualityOfNumberValues
{
  if (keysForEqualityOfNumberValues_onceToken != -1)
  {
    +[PGPlaybackState keysForEqualityOfNumberValues];
  }

  v3 = keysForEqualityOfNumberValues_keysForEquality;

  return v3;
}

- (PGPlaybackStatePrerollAttributes)prerollAttributes
{
  v3 = [(PGPlaybackState *)self _dictionaryForKey:9];
  v4 = [(PGPlaybackStatePrerollAttributes *)self->_prerollAttributes dictionaryRepresentation];
  v5 = [v3 isEqualToDictionary:v4];

  if ((v5 & 1) == 0)
  {
    if (v3)
    {
      v6 = [[PGPlaybackStatePrerollAttributes alloc] initWithDictionary:v3];
    }

    else
    {
      v6 = 0;
    }

    prerollAttributes = self->_prerollAttributes;
    self->_prerollAttributes = v6;
  }

  v8 = self->_prerollAttributes;
  v9 = v8;

  return v8;
}

void __48__PGPlaybackState_keysForEqualityOfNumberValues__block_invoke()
{
  v0 = keysForEqualityOfNumberValues_keysForEquality;
  keysForEqualityOfNumberValues_keysForEquality = &unk_1F3959180;
}

+ (id)defaultValueForKey:(id)a3
{
  v5 = [a3 integerValue];
  if (v5 <= 8)
  {
    if (v5 > 4)
    {
      if ((v5 - 7) < 2)
      {
        return MEMORY[0x1E695E110];
      }

      if (v5 == 5)
      {
        return &unk_1F3959038;
      }

      if (v5 != 6)
      {
        goto LABEL_23;
      }
    }

    else if ((v5 - 1) >= 2)
    {
      if (v5 == 3)
      {
        return &unk_1F3959038;
      }

      if (v5 != 4)
      {
        goto LABEL_23;
      }
    }

    return &unk_1F3959160;
  }

  if (v5 > 1001)
  {
    if ((v5 - 1003) >= 3)
    {
      if (v5 == 1002 || v5 == 2001)
      {
        return MEMORY[0x1E695E118];
      }

      goto LABEL_23;
    }

    return MEMORY[0x1E695E110];
  }

  if (v5 > 10)
  {
    if (v5 != 11)
    {
      if (v5 == 1001)
      {
        return MEMORY[0x1E695E110];
      }

LABEL_23:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:a1 file:@"PGPlaybackState.m" lineNumber:114 description:@"No invalid key."];

      return 0;
    }

    return &unk_1F3959038;
  }

  if (v5 != 9)
  {
    return MEMORY[0x1E695E110];
  }

  return 0;
}

- (PGPlaybackState)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PGPlaybackState;
  v5 = [(PGPlaybackState *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    mutableDictionary = v5->_mutableDictionary;
    v5->_mutableDictionary = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PGPlaybackState alloc];
  v5 = [(PGPlaybackState *)self dictionaryRepresentation];
  v6 = [(PGPlaybackState *)v4 initWithDictionary:v5];

  return v6;
}

- (void)updatePlaybackStateWithDiff:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(PGPlaybackState *)self _ensureMutableDictionary];
    v5 = [(PGPlaybackState *)self mutableDictionary];
    [v5 addEntriesFromDictionary:v4];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 dictionaryRepresentation];

  v7 = [(PGPlaybackState *)self dictionaryRepresentation];
  v8 = [v6 isEqualToDictionary:v7];

  return v8;
}

- (BOOL)isEquivalentToPlaybackState:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PGPlaybackState *)self elapsedTime];
  v6 = v5;
  [v4 elapsedTime];
  v8 = v6 - v7;
  v9 = -(v6 - v7);
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  if (v9 >= 0.01)
  {
    [(PGPlaybackState *)self elapsedTime];
    LOBYTE(v21) = 0;
    goto LABEL_29;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = +[PGPlaybackState keysForEqualityOfNumberValues];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v4 _numberForKey:{objc_msgSend(v15, "integerValue")}];
        v17 = -[PGPlaybackState _numberForKey:](self, "_numberForKey:", [v15 integerValue]);
        v18 = [v16 isEqualToNumber:v17];

        if ((v18 & 1) == 0 && v16 != v17)
        {
          LOBYTE(v21) = 0;
          goto LABEL_28;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v10 = [v4 prerollAttributes];
  v19 = [(PGPlaybackState *)self prerollAttributes];
  v20 = v19;
  if (v10 == v19)
  {
    v21 = 1;
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v21 = [v10 isEqual:v19];
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  if (v21)
  {
    [(PGPlaybackState *)self playbackRate];
    if (v22 == 0.0)
    {
      [(PGPlaybackState *)self elapsedTime];
      v24 = v23;
      [v20 requiredLinearPlaybackEndTime];
      v26 = v24 - v25;
      if (v26 < 0.0)
      {
        v26 = -v26;
      }

      LOBYTE(v21) = v26 > 0.01 || v8 == 0.0;
    }

    else
    {
      LOBYTE(v21) = 1;
    }
  }

LABEL_27:

LABEL_28:
LABEL_29:

  return v21;
}

- (id)diffFromPlaybackState:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PGPlaybackState *)self isEquivalentToPlaybackState:v4])
  {
    v5 = 0;
    goto LABEL_30;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v4 dictionaryRepresentation];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {
    v5 = 0;
    goto LABEL_29;
  }

  v9 = v8;
  v5 = 0;
  v10 = *v23;
  v21 = v7;
  do
  {
    v11 = 0;
    do
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      v13 = [v12 integerValue];
      v14 = v13;
      if (v13 <= 0xB)
      {
        if (((1 << v13) & 0xDFE) != 0)
        {
          goto LABEL_17;
        }

        if (v13 == 9)
        {
          v15 = [(PGPlaybackState *)self mutableDictionary];
          v16 = [v15 objectForKeyedSubscript:v12];

          v17 = [v4 mutableDictionary];
          v18 = [v17 objectForKeyedSubscript:v12];

          if (([v16 isEqual:v18] & 1) == 0)
          {
            if (!v5)
            {
              v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
            }

            [v5 setObject:v18 forKeyedSubscript:v12];
          }

          v7 = v21;
LABEL_21:

          goto LABEL_22;
        }
      }

      if (v13 - 1001 < 5 || v13 == 2001)
      {
LABEL_17:
        v16 = [(PGPlaybackState *)self _numberForKey:v13];
        v18 = [v4 _numberForKey:v14];
        if (([v16 isEqualToNumber:v18] & 1) == 0)
        {
          if (!v5)
          {
            v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
          }

          [v5 setObject:v18 forKeyedSubscript:v12];
        }

        goto LABEL_21;
      }

LABEL_22:
      ++v11;
    }

    while (v9 != v11);
    v19 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v9 = v19;
  }

  while (v19);
LABEL_29:

LABEL_30:

  return v5;
}

- (double)normalizedProgress
{
  v3 = [(PGPlaybackState *)self hasInvalidTiming];
  v4 = 1.0;
  if (!v3)
  {
    v5 = [(PGPlaybackState *)self contentType];
    v4 = 1.0;
    if (v5 != 2)
    {
      [(PGPlaybackState *)self elapsedTime];
      v7 = v6;
      [(PGPlaybackState *)self contentDuration];
      v4 = v7 / v8;
    }
  }

  return fmin(fmax(v4, 0.0), 1.0);
}

- (BOOL)hasInvalidTiming
{
  v3 = [(PGPlaybackState *)self contentType];
  if (v3 > 5)
  {
    return 0;
  }

  if (((1 << v3) & 0x39) != 0)
  {
    return 1;
  }

  [(PGPlaybackState *)self contentDuration];
  if (v5 <= 0.0)
  {
    return 1;
  }

  [(PGPlaybackState *)self contentDuration];
  [(PGPlaybackState *)self elapsedTime];
  return 0;
}

- (void)setBackgroundAudioPolicy:(int64_t)a3
{
  if (dyld_program_sdk_at_least())
  {

    [(PGPlaybackState *)self _setInteger:a3 forKey:11];
  }
}

- (void)setPlaybackRate:(double)a3 elapsedTime:(double)a4 timeControlStatus:(int64_t)a5
{
  [(PGPlaybackState *)self _setInteger:a5 forKey:5];
  [(PGPlaybackState *)self _setDouble:6 forKey:a3];
  [(PGPlaybackState *)self _setDouble:1 forKey:fmax(a4, 0.0)];
  Current = CFAbsoluteTimeGetCurrent();

  [(PGPlaybackState *)self _setDouble:2 forKey:Current];
}

- (void)setPrerollAttributes:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  v5 = v4;
  v6 = &unk_1F3959050;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  [(PGPlaybackState *)self _setDictionaryOrNotFound:v7 forKey:9];
}

- (BOOL)supportsMicroPIP
{
  if ([(PGPlaybackState *)self contentType]!= 4)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (id)_numberForKey:(int64_t)a3
{
  v4 = [(PGPlaybackState *)self mutableDictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = [v9 defaultValueForKey:v10];
  }

  return v8;
}

- (int64_t)_integerForKey:(int64_t)a3
{
  v3 = [(PGPlaybackState *)self _numberForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (double)_doubleForKey:(int64_t)a3
{
  v3 = [(PGPlaybackState *)self _numberForKey:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)_BOOLForKey:(int64_t)a3
{
  v3 = [(PGPlaybackState *)self _numberForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)_dictionaryForKey:(int64_t)a3
{
  v4 = [(PGPlaybackState *)self mutableDictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = [v9 defaultValueForKey:v10];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)_stringForKey:(int64_t)a3
{
  v4 = [(PGPlaybackState *)self mutableDictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = [v9 defaultValueForKey:v10];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (void)_setInteger:(int64_t)a3 forKey:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(PGPlaybackState *)self _setStateValue:v6 forKey:a4];
}

- (void)_setDouble:(double)a3 forKey:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(PGPlaybackState *)self _setStateValue:v6 forKey:a4];
}

- (void)_setBool:(BOOL)a3 forKey:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(PGPlaybackState *)self _setStateValue:v6 forKey:a4];
}

- (void)_setStateValue:(id)a3 forKey:(int64_t)a4
{
  v6 = a3;
  [(PGPlaybackState *)self _ensureMutableDictionary];
  v8 = [(PGPlaybackState *)self mutableDictionary];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (void)_setDictionaryOrNotFound:(id)a3 forKey:(int64_t)a4
{
  v6 = a3;
  [(PGPlaybackState *)self _ensureMutableDictionary];
  v8 = [(PGPlaybackState *)self mutableDictionary];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (id)succinctDescription
{
  v2 = [(PGPlaybackState *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PGPlaybackState *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)appendDescriptionForKey:(int64_t)a3 value:(id)a4 toBuilder:(id)a5
{
  v20 = a4;
  v8 = a5;
  if (a3 <= 8)
  {
    if (a3 > 4)
    {
      if (a3 > 6)
      {
        if (a3 == 7)
        {
          v9 = @"Muted";
        }

        else
        {
          v9 = @"RequiresLinearPlayback";
        }

LABEL_41:
        v18 = [v8 appendBool:objc_msgSend(v20 withName:{"BOOLValue"), v9}];
        goto LABEL_49;
      }

      if (a3 == 5)
      {
        v16 = [v20 integerValue];
        if (v16 >= 3)
        {
          v14 = @"invalid";
        }

        else
        {
          v14 = off_1E7F33418[v16];
        }

        v19 = @"TimeControlStatus";
        goto LABEL_48;
      }

      v10 = @"PlaybackRate";
    }

    else if (a3 > 2)
    {
      if (a3 == 3)
      {
        v17 = [v20 integerValue];
        if (v17 >= 6)
        {
          v14 = @"invalid";
        }

        else
        {
          v14 = off_1E7F333E8[v17];
        }

        v19 = @"ContentType";
        goto LABEL_48;
      }

      v10 = @"ContentDuration";
    }

    else if (a3 == 1)
    {
      v10 = @"AnchorContentTime";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_49;
      }

      v10 = @"AnchorWallTime";
    }

    [v20 doubleValue];
    v15 = [v8 appendDouble:v10 withName:2 decimalPrecision:?];
    goto LABEL_49;
  }

  if (a3 > 1001)
  {
    if (a3 <= 1003)
    {
      if (a3 == 1002)
      {
        v9 = @"FaceTime-CameraActive";
      }

      else
      {
        v9 = @"FaceTime-MicrophoneMuted";
      }
    }

    else
    {
      switch(a3)
      {
        case 1004:
          v9 = @"FaceTime-CanSwitchCamera";
          break;
        case 1005:
          v9 = @"FaceTime-DisablesLayerCloning";
          break;
        case 2001:
          v9 = @"SecurityCam-HasMicrophone";
          break;
        default:
          goto LABEL_49;
      }
    }

    goto LABEL_41;
  }

  if (a3 <= 10)
  {
    if (a3 == 9)
    {
      v11 = [(PGPlaybackState *)self prerollAttributes];
      v12 = [v11 description];
      [v8 appendString:v12 withName:@"PrerollAttributes" skipIfEmpty:1];

      goto LABEL_49;
    }

    v9 = @"RoutingVideoToHostedWindow";
    goto LABEL_41;
  }

  if (a3 != 11)
  {
    if (a3 != 1001)
    {
      goto LABEL_49;
    }

    v9 = @"FaceTime-SupportsActions";
    goto LABEL_41;
  }

  v13 = [v20 integerValue];
  if (v13 >= 4)
  {
    v14 = @"invalid";
  }

  else
  {
    v14 = off_1E7F33430[v13];
  }

  v19 = @"BackgroundAudioPolicy";
LABEL_48:
  [v8 appendString:v14 withName:v19];
LABEL_49:
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(PGPlaybackState *)self succinctDescriptionBuilder];
  v13.receiver = self;
  v13.super_class = PGPlaybackState;
  v6 = [(PGPlaybackState *)&v13 description];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PGPlaybackState_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E7F32508;
  v7 = v5;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:v6 multilinePrefix:v4 block:v10];

  v8 = v7;
  return v7;
}

void __57__PGPlaybackState_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) elapsedTime];
  v3 = [v2 appendDouble:@"Elapsed Time" withName:2 decimalPrecision:?];
  v4 = [*(a1 + 40) dictionaryRepresentation];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PGPlaybackState_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v7[3] = &unk_1E7F333C8;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
}

void __57__PGPlaybackState_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) appendDescriptionForKey:objc_msgSend(a2 value:"integerValue") toBuilder:{v5, *(a1 + 40)}];
}

@end
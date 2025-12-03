@interface PGPlaybackState
+ (id)defaultValueForKey:(id)key;
+ (id)keysForEqualityOfNumberValues;
- (BOOL)_BOOLForKey:(int64_t)key;
- (BOOL)hasInvalidTiming;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToPlaybackState:(id)state;
- (BOOL)supportsMicroPIP;
- (PGPlaybackState)initWithDictionary:(id)dictionary;
- (PGPlaybackStatePrerollAttributes)prerollAttributes;
- (double)_doubleForKey:(int64_t)key;
- (double)elapsedTime;
- (double)normalizedProgress;
- (id)_dictionaryForKey:(int64_t)key;
- (id)_numberForKey:(int64_t)key;
- (id)_stringForKey:(int64_t)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromPlaybackState:(id)state;
- (id)succinctDescription;
- (int64_t)_integerForKey:(int64_t)key;
- (void)_ensureMutableDictionary;
- (void)_setBool:(BOOL)bool forKey:(int64_t)key;
- (void)_setDictionaryOrNotFound:(id)found forKey:(int64_t)key;
- (void)_setDouble:(double)double forKey:(int64_t)key;
- (void)_setInteger:(int64_t)integer forKey:(int64_t)key;
- (void)_setStateValue:(id)value forKey:(int64_t)key;
- (void)appendDescriptionForKey:(int64_t)key value:(id)value toBuilder:(id)builder;
- (void)setBackgroundAudioPolicy:(int64_t)policy;
- (void)setPlaybackRate:(double)rate elapsedTime:(double)time timeControlStatus:(int64_t)status;
- (void)setPrerollAttributes:(id)attributes;
- (void)updatePlaybackStateWithDiff:(id)diff;
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
  dictionaryRepresentation = [(PGPlaybackStatePrerollAttributes *)self->_prerollAttributes dictionaryRepresentation];
  v5 = [v3 isEqualToDictionary:dictionaryRepresentation];

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

+ (id)defaultValueForKey:(id)key
{
  integerValue = [key integerValue];
  if (integerValue <= 8)
  {
    if (integerValue > 4)
    {
      if ((integerValue - 7) < 2)
      {
        return MEMORY[0x1E695E110];
      }

      if (integerValue == 5)
      {
        return &unk_1F3959038;
      }

      if (integerValue != 6)
      {
        goto LABEL_23;
      }
    }

    else if ((integerValue - 1) >= 2)
    {
      if (integerValue == 3)
      {
        return &unk_1F3959038;
      }

      if (integerValue != 4)
      {
        goto LABEL_23;
      }
    }

    return &unk_1F3959160;
  }

  if (integerValue > 1001)
  {
    if ((integerValue - 1003) >= 3)
    {
      if (integerValue == 1002 || integerValue == 2001)
      {
        return MEMORY[0x1E695E118];
      }

      goto LABEL_23;
    }

    return MEMORY[0x1E695E110];
  }

  if (integerValue > 10)
  {
    if (integerValue != 11)
    {
      if (integerValue == 1001)
      {
        return MEMORY[0x1E695E110];
      }

LABEL_23:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PGPlaybackState.m" lineNumber:114 description:@"No invalid key."];

      return 0;
    }

    return &unk_1F3959038;
  }

  if (integerValue != 9)
  {
    return MEMORY[0x1E695E110];
  }

  return 0;
}

- (PGPlaybackState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PGPlaybackState;
  v5 = [(PGPlaybackState *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    mutableDictionary = v5->_mutableDictionary;
    v5->_mutableDictionary = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PGPlaybackState alloc];
  dictionaryRepresentation = [(PGPlaybackState *)self dictionaryRepresentation];
  v6 = [(PGPlaybackState *)v4 initWithDictionary:dictionaryRepresentation];

  return v6;
}

- (void)updatePlaybackStateWithDiff:(id)diff
{
  if (diff)
  {
    diffCopy = diff;
    [(PGPlaybackState *)self _ensureMutableDictionary];
    mutableDictionary = [(PGPlaybackState *)self mutableDictionary];
    [mutableDictionary addEntriesFromDictionary:diffCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  dictionaryRepresentation = [v5 dictionaryRepresentation];

  dictionaryRepresentation2 = [(PGPlaybackState *)self dictionaryRepresentation];
  v8 = [dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation2];

  return v8;
}

- (BOOL)isEquivalentToPlaybackState:(id)state
{
  v33 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  [(PGPlaybackState *)self elapsedTime];
  v6 = v5;
  [stateCopy elapsedTime];
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
  prerollAttributes = +[PGPlaybackState keysForEqualityOfNumberValues];
  v11 = [prerollAttributes countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(prerollAttributes);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [stateCopy _numberForKey:{objc_msgSend(v15, "integerValue")}];
        v17 = -[PGPlaybackState _numberForKey:](self, "_numberForKey:", [v15 integerValue]);
        v18 = [v16 isEqualToNumber:v17];

        if ((v18 & 1) == 0 && v16 != v17)
        {
          LOBYTE(v21) = 0;
          goto LABEL_28;
        }
      }

      v12 = [prerollAttributes countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  prerollAttributes = [stateCopy prerollAttributes];
  prerollAttributes2 = [(PGPlaybackState *)self prerollAttributes];
  v20 = prerollAttributes2;
  if (prerollAttributes == prerollAttributes2)
  {
    v21 = 1;
    if (!prerollAttributes2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v21 = [prerollAttributes isEqual:prerollAttributes2];
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

- (id)diffFromPlaybackState:(id)state
{
  v27 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if ([(PGPlaybackState *)self isEquivalentToPlaybackState:stateCopy])
  {
    v5 = 0;
    goto LABEL_30;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  dictionaryRepresentation = [stateCopy dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {
    v5 = 0;
    goto LABEL_29;
  }

  v9 = v8;
  v5 = 0;
  v10 = *v23;
  v21 = allKeys;
  do
  {
    v11 = 0;
    do
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(allKeys);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      integerValue = [v12 integerValue];
      v14 = integerValue;
      if (integerValue <= 0xB)
      {
        if (((1 << integerValue) & 0xDFE) != 0)
        {
          goto LABEL_17;
        }

        if (integerValue == 9)
        {
          mutableDictionary = [(PGPlaybackState *)self mutableDictionary];
          v16 = [mutableDictionary objectForKeyedSubscript:v12];

          mutableDictionary2 = [stateCopy mutableDictionary];
          v18 = [mutableDictionary2 objectForKeyedSubscript:v12];

          if (([v16 isEqual:v18] & 1) == 0)
          {
            if (!v5)
            {
              v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
            }

            [v5 setObject:v18 forKeyedSubscript:v12];
          }

          allKeys = v21;
LABEL_21:

          goto LABEL_22;
        }
      }

      if (integerValue - 1001 < 5 || integerValue == 2001)
      {
LABEL_17:
        v16 = [(PGPlaybackState *)self _numberForKey:integerValue];
        v18 = [stateCopy _numberForKey:v14];
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
    v19 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    v9 = v19;
  }

  while (v19);
LABEL_29:

LABEL_30:

  return v5;
}

- (double)normalizedProgress
{
  hasInvalidTiming = [(PGPlaybackState *)self hasInvalidTiming];
  v4 = 1.0;
  if (!hasInvalidTiming)
  {
    contentType = [(PGPlaybackState *)self contentType];
    v4 = 1.0;
    if (contentType != 2)
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
  contentType = [(PGPlaybackState *)self contentType];
  if (contentType > 5)
  {
    return 0;
  }

  if (((1 << contentType) & 0x39) != 0)
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

- (void)setBackgroundAudioPolicy:(int64_t)policy
{
  if (dyld_program_sdk_at_least())
  {

    [(PGPlaybackState *)self _setInteger:policy forKey:11];
  }
}

- (void)setPlaybackRate:(double)rate elapsedTime:(double)time timeControlStatus:(int64_t)status
{
  [(PGPlaybackState *)self _setInteger:status forKey:5];
  [(PGPlaybackState *)self _setDouble:6 forKey:rate];
  [(PGPlaybackState *)self _setDouble:1 forKey:fmax(time, 0.0)];
  Current = CFAbsoluteTimeGetCurrent();

  [(PGPlaybackState *)self _setDouble:2 forKey:Current];
}

- (void)setPrerollAttributes:(id)attributes
{
  dictionaryRepresentation = [attributes dictionaryRepresentation];
  v5 = dictionaryRepresentation;
  v6 = &unk_1F3959050;
  if (dictionaryRepresentation)
  {
    v6 = dictionaryRepresentation;
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

- (id)_numberForKey:(int64_t)key
{
  mutableDictionary = [(PGPlaybackState *)self mutableDictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:key];
  v6 = [mutableDictionary objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:key];
    v8 = [v9 defaultValueForKey:v10];
  }

  return v8;
}

- (int64_t)_integerForKey:(int64_t)key
{
  v3 = [(PGPlaybackState *)self _numberForKey:key];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (double)_doubleForKey:(int64_t)key
{
  v3 = [(PGPlaybackState *)self _numberForKey:key];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)_BOOLForKey:(int64_t)key
{
  v3 = [(PGPlaybackState *)self _numberForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)_dictionaryForKey:(int64_t)key
{
  mutableDictionary = [(PGPlaybackState *)self mutableDictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:key];
  v6 = [mutableDictionary objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:key];
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

- (id)_stringForKey:(int64_t)key
{
  mutableDictionary = [(PGPlaybackState *)self mutableDictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:key];
  v6 = [mutableDictionary objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:key];
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

- (void)_setInteger:(int64_t)integer forKey:(int64_t)key
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:integer];
  [(PGPlaybackState *)self _setStateValue:v6 forKey:key];
}

- (void)_setDouble:(double)double forKey:(int64_t)key
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:double];
  [(PGPlaybackState *)self _setStateValue:v6 forKey:key];
}

- (void)_setBool:(BOOL)bool forKey:(int64_t)key
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:bool];
  [(PGPlaybackState *)self _setStateValue:v6 forKey:key];
}

- (void)_setStateValue:(id)value forKey:(int64_t)key
{
  valueCopy = value;
  [(PGPlaybackState *)self _ensureMutableDictionary];
  mutableDictionary = [(PGPlaybackState *)self mutableDictionary];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:key];
  [mutableDictionary setObject:valueCopy forKeyedSubscript:v7];
}

- (void)_setDictionaryOrNotFound:(id)found forKey:(int64_t)key
{
  foundCopy = found;
  [(PGPlaybackState *)self _ensureMutableDictionary];
  mutableDictionary = [(PGPlaybackState *)self mutableDictionary];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:key];
  [mutableDictionary setObject:foundCopy forKeyedSubscript:v7];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PGPlaybackState *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PGPlaybackState *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)appendDescriptionForKey:(int64_t)key value:(id)value toBuilder:(id)builder
{
  valueCopy = value;
  builderCopy = builder;
  if (key <= 8)
  {
    if (key > 4)
    {
      if (key > 6)
      {
        if (key == 7)
        {
          v9 = @"Muted";
        }

        else
        {
          v9 = @"RequiresLinearPlayback";
        }

LABEL_41:
        v18 = [builderCopy appendBool:objc_msgSend(valueCopy withName:{"BOOLValue"), v9}];
        goto LABEL_49;
      }

      if (key == 5)
      {
        integerValue = [valueCopy integerValue];
        if (integerValue >= 3)
        {
          v14 = @"invalid";
        }

        else
        {
          v14 = off_1E7F33418[integerValue];
        }

        v19 = @"TimeControlStatus";
        goto LABEL_48;
      }

      v10 = @"PlaybackRate";
    }

    else if (key > 2)
    {
      if (key == 3)
      {
        integerValue2 = [valueCopy integerValue];
        if (integerValue2 >= 6)
        {
          v14 = @"invalid";
        }

        else
        {
          v14 = off_1E7F333E8[integerValue2];
        }

        v19 = @"ContentType";
        goto LABEL_48;
      }

      v10 = @"ContentDuration";
    }

    else if (key == 1)
    {
      v10 = @"AnchorContentTime";
    }

    else
    {
      if (key != 2)
      {
        goto LABEL_49;
      }

      v10 = @"AnchorWallTime";
    }

    [valueCopy doubleValue];
    v15 = [builderCopy appendDouble:v10 withName:2 decimalPrecision:?];
    goto LABEL_49;
  }

  if (key > 1001)
  {
    if (key <= 1003)
    {
      if (key == 1002)
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
      switch(key)
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

  if (key <= 10)
  {
    if (key == 9)
    {
      prerollAttributes = [(PGPlaybackState *)self prerollAttributes];
      v12 = [prerollAttributes description];
      [builderCopy appendString:v12 withName:@"PrerollAttributes" skipIfEmpty:1];

      goto LABEL_49;
    }

    v9 = @"RoutingVideoToHostedWindow";
    goto LABEL_41;
  }

  if (key != 11)
  {
    if (key != 1001)
    {
      goto LABEL_49;
    }

    v9 = @"FaceTime-SupportsActions";
    goto LABEL_41;
  }

  integerValue3 = [valueCopy integerValue];
  if (integerValue3 >= 4)
  {
    v14 = @"invalid";
  }

  else
  {
    v14 = off_1E7F33430[integerValue3];
  }

  v19 = @"BackgroundAudioPolicy";
LABEL_48:
  [builderCopy appendString:v14 withName:v19];
LABEL_49:
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(PGPlaybackState *)self succinctDescriptionBuilder];
  v13.receiver = self;
  v13.super_class = PGPlaybackState;
  v6 = [(PGPlaybackState *)&v13 description];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PGPlaybackState_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E7F32508;
  v7 = succinctDescriptionBuilder;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:v6 multilinePrefix:prefixCopy block:v10];

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
@interface _UIDictationAudioLevelSmoother
- (_UIDictationAudioLevelSmoother)initWithBaseValue:(float)value exponentMultiplier:(float)multiplier historyLength:(int64_t)length;
- (_UIDictationAudioLevelSmoother)initWithMinimumPower:(float)power maximumPower:(float)maximumPower historyLength:(int64_t)length;
- (_UIDictationAudioLevelSmoother)initWithMinimumPower:(float)power maximumPower:(float)maximumPower historyLength:(int64_t)length attackSpeed:(float)speed decaySpeed:(float)decaySpeed;
- (float)_updateMedianWithNewValue:(float)value;
- (float)smoothedLevelForMicPower:(float)minimumPower;
- (id)_initWithHistoryLength:(int64_t)length;
- (void)clearHistory;
- (void)dealloc;
@end

@implementation _UIDictationAudioLevelSmoother

- (_UIDictationAudioLevelSmoother)initWithMinimumPower:(float)power maximumPower:(float)maximumPower historyLength:(int64_t)length
{
  result = [(_UIDictationAudioLevelSmoother *)self _initWithHistoryLength:length];
  if (result)
  {
    result->_minimumPower = power;
    result->_maximumPower = maximumPower;
  }

  return result;
}

- (_UIDictationAudioLevelSmoother)initWithMinimumPower:(float)power maximumPower:(float)maximumPower historyLength:(int64_t)length attackSpeed:(float)speed decaySpeed:(float)decaySpeed
{
  result = [_UIDictationAudioLevelSmoother initWithMinimumPower:"initWithMinimumPower:maximumPower:historyLength:" maximumPower:length historyLength:?];
  if (result)
  {
    *&result->_attackVelocity = 0;
    result->_previousLevel = 0.0;
    result->_attackSpeed = speed;
    result->_decaySpeed = decaySpeed;
    result->_usesAttackAndDecaySpeed = 1;
  }

  return result;
}

- (_UIDictationAudioLevelSmoother)initWithBaseValue:(float)value exponentMultiplier:(float)multiplier historyLength:(int64_t)length
{
  result = [(_UIDictationAudioLevelSmoother *)self _initWithHistoryLength:length];
  if (result)
  {
    result->_baseValue = value;
    result->_exponentMultiplier = multiplier;
    result->_usesExponentialCurve = 1;
  }

  return result;
}

- (id)_initWithHistoryLength:(int64_t)length
{
  v7.receiver = self;
  v7.super_class = _UIDictationAudioLevelSmoother;
  v4 = [(_UIDictationAudioLevelSmoother *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_calloc(4uLL, length, 0xE1AA1CEEuLL);
    v4->_samplesSinceLastCleared = 0;
    v4->_runningPowerLevels = v5;
    v4->_powerPointer = 0;
    v4->_historyLength = length;
  }

  return v4;
}

- (void)clearHistory
{
  bzero(self->_runningPowerLevels, 4 * self->_historyLength);
  self->_powerPointer = 0;
  self->_samplesSinceLastCleared = 0;
}

- (void)dealloc
{
  free(self->_runningPowerLevels);
  v3.receiver = self;
  v3.super_class = _UIDictationAudioLevelSmoother;
  [(_UIDictationAudioLevelSmoother *)&v3 dealloc];
}

- (float)_updateMedianWithNewValue:(float)value
{
  runningPowerLevels = self->_runningPowerLevels;
  powerPointer = self->_powerPointer;
  v6 = (powerPointer + 1);
  self->_powerPointer = v6;
  runningPowerLevels[powerPointer] = value;
  historyLength = self->_historyLength;
  if (historyLength <= v6)
  {
    self->_powerPointer = 0;
  }

  samplesSinceLastCleared = self->_samplesSinceLastCleared;
  if (samplesSinceLastCleared < historyLength)
  {
    historyLength = samplesSinceLastCleared + 1;
    self->_samplesSinceLastCleared = samplesSinceLastCleared + 1;
  }

  v9 = malloc_type_calloc(4uLL, historyLength, 0xD45EEDB2uLL);
  if (historyLength >= 1)
  {
    v10 = 0;
    v11 = &v9[historyLength];
    v12 = self->_runningPowerLevels;
    do
    {
      v13 = 0;
      v14 = v12[v10];
      while (v14 >= v9[v13])
      {
        if (historyLength == ++v13)
        {
          *(v11 - 1) = v14;
          goto LABEL_16;
        }
      }

      v15 = (v11 - 1);
      v16 = historyLength - 2;
      if (historyLength - 1 > v13)
      {
        do
        {
          *v15 = *(v15 - 1);
          v15 -= 4;
        }

        while (v16-- > v13);
        v14 = v12[v10];
      }

      v9[v13] = v14;
LABEL_16:
      ++v10;
    }

    while (v10 != historyLength);
  }

  v18 = *(v9 + ((((historyLength + (historyLength >> 63)) << 31) >> 30) & 0xFFFFFFFFFFFFFFFCLL));
  free(v9);
  return v18;
}

- (float)smoothedLevelForMicPower:(float)minimumPower
{
  v4 = minimumPower;
  if (minimumPower >= -0.01)
  {
    minimumPower = self->_minimumPower;
  }

  [(_UIDictationAudioLevelSmoother *)self _updateMedianWithNewValue:*&minimumPower, v4];
  if (self->_usesExponentialCurve)
  {
    v6 = powf(self->_baseValue, v5 * self->_exponentMultiplier);
  }

  else
  {
    v6 = (v5 - self->_minimumPower) / (self->_maximumPower - self->_minimumPower);
    if (self->_usesAttackAndDecaySpeed)
    {
      previousLevel = self->_previousLevel;
      v8 = self->_attackVelocity + (self->_attackSpeed * (fmaxf(v6 - previousLevel, 0.0) - self->_attackVelocity));
      v6 = previousLevel + v8;
      self->_previousLevel = self->_decaySpeed * (previousLevel + v8);
      self->_attackVelocity = v8;
    }
  }

  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  return fmaxf(v6, 0.0);
}

@end
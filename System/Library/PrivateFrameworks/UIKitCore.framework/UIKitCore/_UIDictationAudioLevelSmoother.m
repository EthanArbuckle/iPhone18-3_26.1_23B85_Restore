@interface _UIDictationAudioLevelSmoother
- (_UIDictationAudioLevelSmoother)initWithBaseValue:(float)a3 exponentMultiplier:(float)a4 historyLength:(int64_t)a5;
- (_UIDictationAudioLevelSmoother)initWithMinimumPower:(float)a3 maximumPower:(float)a4 historyLength:(int64_t)a5;
- (_UIDictationAudioLevelSmoother)initWithMinimumPower:(float)a3 maximumPower:(float)a4 historyLength:(int64_t)a5 attackSpeed:(float)a6 decaySpeed:(float)a7;
- (float)_updateMedianWithNewValue:(float)a3;
- (float)smoothedLevelForMicPower:(float)minimumPower;
- (id)_initWithHistoryLength:(int64_t)a3;
- (void)clearHistory;
- (void)dealloc;
@end

@implementation _UIDictationAudioLevelSmoother

- (_UIDictationAudioLevelSmoother)initWithMinimumPower:(float)a3 maximumPower:(float)a4 historyLength:(int64_t)a5
{
  result = [(_UIDictationAudioLevelSmoother *)self _initWithHistoryLength:a5];
  if (result)
  {
    result->_minimumPower = a3;
    result->_maximumPower = a4;
  }

  return result;
}

- (_UIDictationAudioLevelSmoother)initWithMinimumPower:(float)a3 maximumPower:(float)a4 historyLength:(int64_t)a5 attackSpeed:(float)a6 decaySpeed:(float)a7
{
  result = [_UIDictationAudioLevelSmoother initWithMinimumPower:"initWithMinimumPower:maximumPower:historyLength:" maximumPower:a5 historyLength:?];
  if (result)
  {
    *&result->_attackVelocity = 0;
    result->_previousLevel = 0.0;
    result->_attackSpeed = a6;
    result->_decaySpeed = a7;
    result->_usesAttackAndDecaySpeed = 1;
  }

  return result;
}

- (_UIDictationAudioLevelSmoother)initWithBaseValue:(float)a3 exponentMultiplier:(float)a4 historyLength:(int64_t)a5
{
  result = [(_UIDictationAudioLevelSmoother *)self _initWithHistoryLength:a5];
  if (result)
  {
    result->_baseValue = a3;
    result->_exponentMultiplier = a4;
    result->_usesExponentialCurve = 1;
  }

  return result;
}

- (id)_initWithHistoryLength:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = _UIDictationAudioLevelSmoother;
  v4 = [(_UIDictationAudioLevelSmoother *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_calloc(4uLL, a3, 0xE1AA1CEEuLL);
    v4->_samplesSinceLastCleared = 0;
    v4->_runningPowerLevels = v5;
    v4->_powerPointer = 0;
    v4->_historyLength = a3;
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

- (float)_updateMedianWithNewValue:(float)a3
{
  runningPowerLevels = self->_runningPowerLevels;
  powerPointer = self->_powerPointer;
  v6 = (powerPointer + 1);
  self->_powerPointer = v6;
  runningPowerLevels[powerPointer] = a3;
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
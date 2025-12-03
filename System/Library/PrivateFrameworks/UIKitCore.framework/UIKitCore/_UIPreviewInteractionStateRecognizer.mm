@interface _UIPreviewInteractionStateRecognizer
- (_UIPreviewInteractionStateRecognizer)init;
- (double)_thresholdForForceLevel:(int64_t)level;
- (double)currentProgressToState:(int64_t)state;
- (double)velocity;
- (id)description;
- (void)dealloc;
- (void)evaluateWithTouchForce:(double)force atTimestamp:(double)timestamp withCentroidAtLocation:(CGPoint)location;
- (void)reset;
- (void)setShouldDelayReveal:(BOOL)reveal;
@end

@implementation _UIPreviewInteractionStateRecognizer

- (_UIPreviewInteractionStateRecognizer)init
{
  v7.receiver = self;
  v7.super_class = _UIPreviewInteractionStateRecognizer;
  v2 = [(_UIPreviewInteractionStateRecognizer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldDelayReveal = 1;
    *&v2->_standardThreshold = xmmword_18A680CE0;
    v2->_minimumPreviewDuration = 0.075;
    *&v2->_popOffsetInitial = xmmword_18A680CF0;
    *&v2->_popOffsetDecayAlpha = xmmword_18A680D00;
    v2->_popReductionForce = 60.0;
    v2->_popAlwaysThreshold = 5000.0;
    [(_UIPreviewInteractionStateRecognizer *)v2 reset];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__accessibilityForceSensitivityChanged_ name:@"UIAccessibilityForceTouchSensitivityChangedNotification" object:0];

    v5 = v3;
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityForceTouchSensitivityChangedNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIPreviewInteractionStateRecognizer;
  [(_UIPreviewInteractionStateRecognizer *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = _UIPreviewInteractionStateRecognizer;
  v4 = [(_UIPreviewInteractionStateRecognizer *)&v9 description];
  currentState = [(_UIPreviewInteractionStateRecognizer *)self currentState];
  if ((currentState - 1) > 2)
  {
    v6 = @"_UILegacyPreviewInteractionStateInactive";
  }

  else
  {
    v6 = off_1E711B078[currentState - 1];
  }

  v7 = [v3 stringWithFormat:@"%@ {currentState = %@}", v4, v6];

  return v7;
}

- (void)setShouldDelayReveal:(BOOL)reveal
{
  if (self->_shouldDelayReveal != reveal)
  {
    self->_shouldDelayReveal = reveal;
    [(_UIPreviewInteractionStateRecognizer *)self reset];
  }
}

- (double)currentProgressToState:(int64_t)state
{
  result = 0.0;
  if (state >= 2)
  {
    if (state == 3)
    {
      return self->_progressToStrongThreshold;
    }

    else
    {
      [(_UIPreviewInteractionStateRecognizer *)self _thresholdForForceLevel:0.0];
      v6 = v5;
      [(_UIPreviewInteractionStateRecognizer *)self currentTouchForce];
      v8 = v7;
      [(_UIPreviewInteractionStateRecognizer *)self _thresholdForForceLevel:1];
      v10 = v6 - v9;
      result = 1.0;
      if (v10 > 0.0)
      {
        return 1.0 - (v6 - v8) / v10;
      }
    }
  }

  return result;
}

- (double)velocity
{
  v2 = self->_currentTime - self->_previousTime;
  result = 0.0;
  if (v2 > 0.00000011920929)
  {
    [(_UIPreviewInteractionStateRecognizer *)self currentTouchForce];
    v6 = v5;
    [(_UIPreviewInteractionStateRecognizer *)self _normalizedTouchForceValue:self->_previousEffectiveTouchForce];
    return (v6 * 0.25 + v7 * 0.75) / v2;
  }

  return result;
}

- (void)evaluateWithTouchForce:(double)force atTimestamp:(double)timestamp withCentroidAtLocation:(CGPoint)location
{
  [(_UIPreviewInteractionStateRecognizer *)self _denormalizedTouchForceValue:force, timestamp, location.x, location.y];
  if (v7 <= self->_saturationForce)
  {
    saturationForce = v7;
  }

  else
  {
    saturationForce = self->_saturationForce;
  }

  timeMark = self->_timeMark;
  if (timeMark == 0.0)
  {
    self->_timeMark = timestamp;
    timeMark = timestamp;
    currentTime = timestamp;
  }

  else
  {
    currentTime = self->_currentTime;
  }

  self->_currentTime = timestamp;
  self->_previousTime = currentTime;
  v11 = timestamp - currentTime;
  smoothedForce = self->_smoothedForce;
  maximumForce = self->_maximumForce;
  if (saturationForce >= maximumForce)
  {
    v14 = saturationForce;
  }

  else
  {
    v14 = self->_maximumForce;
  }

  self->_maximumForce = v14;
  self->_previousEffectiveTouchForce = saturationForce;
  v15 = saturationForce;
  if (saturationForce > smoothedForce)
  {
    lowpassForceAlpha = self->_lowpassForceAlpha;
    v17 = v11 / 0.00800000038;
    v18 = powf(lowpassForceAlpha, v17);
    v15 = smoothedForce * v18 + saturationForce * (1.0 - v18);
  }

  self->_smoothedForce = v15;
  [(_UIPreviewInteractionStateRecognizer *)self _normalizedTouchForceValue:saturationForce];
  [(_UIPreviewInteractionStateRecognizer *)self setCurrentTouchForce:?];
  deepPressCount = self->_deepPressCount;
  if (deepPressCount)
  {
    actualPeekTime = self->_actualPeekTime;
    if (actualPeekTime < self->_actualPopTime)
    {
      actualPeekTime = self->_actualPopTime;
    }

    v21 = self->_minimumPreviewDuration + actualPeekTime;
    v22 = self->_currentTime;
    if (self->_allowsPopOffsetDecay || (v21 >= v22 ? (v23 = saturationForce + self->_popReductionForce < self->_maximumForce) : (v23 = 1), v23))
    {
      self->_allowsPopOffsetDecay = 1;
    }

    else
    {
      self->_popDecayingOffset = self->_popOffsetInitial;
    }

    if (v21 >= v22)
    {
      highPopThreshold = self->_highPopThreshold;
      if (self->_strongThreshold >= highPopThreshold)
      {
        highPopThreshold = self->_strongThreshold;
      }
    }

    else
    {
      popOffsetDecayAlpha = self->_popOffsetDecayAlpha;
      v26 = v11 / 0.00800000038;
      v27 = powf(popOffsetDecayAlpha, v26);
      previousPopThreshold = self->_previousPopThreshold;
      popOffsetLongterm = self->_popOffsetLongterm;
      v30 = self->_smoothedForce;
      v31 = self->_saturationForce + -15.0 + popOffsetLongterm * -0.5 - v30;
      if (v31 > popOffsetLongterm)
      {
        v31 = self->_popOffsetLongterm;
      }

      v32 = self->_popDecayingOffset * v27 + (1.0 - v27) * v31;
      self->_popDecayingOffset = v32;
      highPopThreshold = self->_strongThreshold;
      v34 = previousPopThreshold * 0.6 + (v30 + v32) * 0.4;
      if (highPopThreshold < v34)
      {
        highPopThreshold = v34;
      }
    }

    self->_previousPopThreshold = highPopThreshold;
    v35 = saturationForce / highPopThreshold;
    self->_progressToStrongThreshold = saturationForce / highPopThreshold;
    if (saturationForce > highPopThreshold)
    {
      self->_timeMark = v22;
      self->_deepPressCount = deepPressCount + 1;
      self->_actualPopTime = v22;
      self->_actualPopForce = saturationForce;
      if (v35 < 1.0)
      {
        v35 = 1.0;
      }

      self->_progressToStrongThreshold = v35;
      selfCopy2 = self;
      v37 = 3;
LABEL_37:

      [(_UIPreviewInteractionStateRecognizer *)selfCopy2 setCurrentState:v37];
    }
  }

  else
  {
    currentState = [(_UIPreviewInteractionStateRecognizer *)self currentState];
    if (timestamp - timeMark >= self->_hintAndPeekInterval)
    {
      if (saturationForce - maximumForce < -self->_hintReductionForce)
      {
        self->_maximumForce = saturationForce;
        self->_timeMark = self->_currentTime;
        return;
      }

      if (!currentState && saturationForce >= self->_revealThreshold)
      {
        self->_actualHintTime = self->_currentTime;
        self->_actualHintForce = saturationForce;
        [(_UIPreviewInteractionStateRecognizer *)self setCurrentState:1];
      }

      standardThreshold = self->_standardThreshold;
      if (saturationForce >= standardThreshold)
      {
        v39 = self->_currentTime;
        self->_timeMark = v39;
        self->_deepPressCount = 1;
        self->_actualPeekTime = v39;
        self->_actualPeekForce = saturationForce;
        if (self->_hintAndPeekInterval <= 0.05)
        {
          standardThreshold = saturationForce;
        }

        self->_highPopThreshold = self->_popOffsetInitial + standardThreshold;
        selfCopy2 = self;
        v37 = 2;
        goto LABEL_37;
      }
    }
  }
}

- (void)reset
{
  shouldDelayReveal = [(_UIPreviewInteractionStateRecognizer *)self shouldDelayReveal];
  v4 = 70.0;
  if (!shouldDelayReveal)
  {
    v4 = 0.0;
  }

  v5 = 0.2;
  if (!shouldDelayReveal)
  {
    v5 = 0.0;
  }

  self->_revealThreshold = v4;
  if (shouldDelayReveal)
  {
    v6 = 30.0;
  }

  else
  {
    v6 = 0.0;
  }

  self->_hintAndPeekInterval = v5;
  self->_hintReductionForce = v6;
  [(_UIPreviewInteractionStateRecognizer *)self setCurrentState:0];
  [(_UIPreviewInteractionStateRecognizer *)self setCurrentTouchForce:0.0];
  self->_deepPressCount = 0;
  self->_smoothedForce = 0.0;
  self->_maximumForce = 0.0;
  *&self->_actualHintForce = 0u;
  *&self->_actualPopForce = 0u;
  *&self->_actualPeekTime = 0u;
  self->_popDecayingOffset = self->_popOffsetInitial;
  self->_allowsPopOffsetDecay = 0;
  self->_progressToStrongThreshold = 0.0;
  self->_currentTime = 0.0;
  self->_previousTime = 0.0;
  self->_timeMark = 0.0;
  v7 = UIApp;
  mainScreen = [objc_opt_self() mainScreen];
  v9 = [v7 _keyWindowForScreen:mainScreen];
  v10 = [v7 _touchesEventForWindow:v9];

  allTouches = [v10 allTouches];
  anyObject = [allTouches anyObject];

  if (anyObject)
  {
    if (fabs(anyObject[36]) >= 2.22044605e-16)
    {
      v12 = anyObject[36];
    }

    else
    {
      v12 = 600.0;
    }
  }

  else
  {
    v12 = 600.0;
  }

  [(_UIPreviewInteractionStateRecognizer *)self _currentTouchForceMultiplier];
  v14 = v12 * v13;
  if (v14 >= v12)
  {
    v14 = v12;
  }

  self->_saturationForce = v14;
}

- (double)_thresholdForForceLevel:(int64_t)level
{
  switch(level)
  {
    case 3:
      strongThreshold = self->_strongThreshold;
LABEL_6:
      [(_UIPreviewInteractionStateRecognizer *)self _normalizedTouchForceValue:strongThreshold];
      return result;
    case 2:
      strongThreshold = self->_actualPeekForce;
      if (strongThreshold <= 0.0)
      {
        strongThreshold = self->_standardThreshold;
      }

      goto LABEL_6;
    case 1:
      strongThreshold = self->_actualHintForce;
      if (strongThreshold <= 0.0)
      {
        strongThreshold = self->_revealThreshold;
      }

      goto LABEL_6;
  }

  return 0.0;
}

@end
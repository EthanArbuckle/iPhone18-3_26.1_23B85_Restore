@interface WBSFluidProgressState
+ (double)_estimatedLoadTimeRemainingFromProgressValue:(double)value;
- (BOOL)isFluidProgressStalled;
- (WBSFluidProgressState)initWithType:(int64_t)type;
- (double)_adjustProgressPosition:(double)result;
- (double)_animationDuration;
- (double)_fractionCompleteAtElapsedTime:(double)time;
- (double)_nextProgressPosition:(double)position;
- (id)description;
- (void)_updateLinearFunction;
- (void)setMinProgressPosition:(double)position;
- (void)setWebKitProgressValue:(double)value;
- (void)updateFluidProgressValue;
- (void)updateNextFluidProgressAnimation;
@end

@implementation WBSFluidProgressState

- (WBSFluidProgressState)initWithType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = WBSFluidProgressState;
  v4 = [(WBSFluidProgressState *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_fluidProgressType = type;
    v4->_startTimeForFluidProgress = CFAbsoluteTimeGetCurrent();
    [(WBSFluidProgressState *)v5 setMinProgressPosition:0.1];
    v5->_fluidProgressAnimationPhase = 1;
    v5->_shouldAnimateUsingInitialPosition = 1;
    v6 = v5;
  }

  return v5;
}

- (id)description
{
  fluidProgressAnimationPhase = self->_fluidProgressAnimationPhase;
  if (fluidProgressAnimationPhase > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E8284DE0[fluidProgressAnimationPhase];
  }

  v4 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WBSFluidProgressState;
  v5 = [(WBSFluidProgressState *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@, animation phase: %@", v5, v3];

  return v6;
}

- (void)setWebKitProgressValue:(double)value
{
  if (self->_minProgressPosition <= value && self->_webKitProgressValue != value && (self->_fluidProgressAnimationPhase & 0xFFFFFFFFFFFFFFFELL) != 4 && !self->_hasCompletedLoad && self->_previousDestinationPosition != 0.4)
  {
    self->_fluidProgressAnimationPhase = 1;
    self->_webKitProgressValue = value;
    self->_lastTimeProgressValueWasUpdated = CFAbsoluteTimeGetCurrent();

    [(WBSFluidProgressState *)self _updateLinearFunction];
  }
}

- (void)setMinProgressPosition:(double)position
{
  if (position > 0.4)
  {
    position = 0.4;
  }

  self->_minProgressPosition = position / 0.4;
}

- (void)updateFluidProgressValue
{
  fluidProgressAnimationPhase = self->_fluidProgressAnimationPhase;
  v4 = 0;
  v5 = 88;
  if (fluidProgressAnimationPhase && fluidProgressAnimationPhase != 5 && !self->_hasCompletedLoad)
  {
    if (self->_fluidProgressType)
    {
      webKitProgressValue = self->_webKitProgressValue;
    }

    else
    {
      [(WBSFluidProgressState *)self secondsElapsedSinceLoadBegan];
      [(WBSFluidProgressState *)self _fractionCompleteAtElapsedTime:?];
    }

    [(WBSFluidProgressState *)self _adjustProgressPosition:webKitProgressValue];
    *&self->_fluidProgressValue = v4;
    v5 = 56;
  }

  *(&self->super.isa + v5) = v4;
}

- (void)updateNextFluidProgressAnimation
{
  v3 = objc_alloc_init(WBSFluidProgressAnimation);
  if (self->_fluidProgressType)
  {
    goto LABEL_2;
  }

  isFluidProgressStalled = [(WBSFluidProgressState *)self isFluidProgressStalled];
  if (self->_previousDestinationPosition > 0.37 && self->_fluidProgressAnimationPhase == 1)
  {
    self->_fluidProgressAnimationPhase = 3;
    self->_previousDestinationPosition = 0.4;
    if (isFluidProgressStalled)
    {
      goto LABEL_19;
    }

LABEL_2:
    v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    goto LABEL_3;
  }

  if (!isFluidProgressStalled)
  {
    goto LABEL_2;
  }

  self->_fluidProgressAnimationPhase = 3;
LABEL_19:
  v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
LABEL_3:
  [(WBSFluidProgressAnimation *)v3 setTimingFunction:v4];

  [(WBSFluidProgressState *)self _animationDuration];
  [(WBSFluidProgressAnimation *)v3 setAnimationDuration:?];
  v5 = 0.0;
  if (self->_shouldAnimateUsingInitialPosition)
  {
    [(WBSFluidProgressState *)self fluidProgressValue];
  }

  [(WBSFluidProgressAnimation *)v3 setInitialPosition:v5];
  [(WBSFluidProgressAnimation *)v3 animationDuration];
  [(WBSFluidProgressState *)self _nextProgressPosition:?];
  [(WBSFluidProgressAnimation *)v3 setDestinationPosition:?];
  if (self->_fluidProgressType == 1)
  {
    previousDestinationPosition = self->_previousDestinationPosition;
    [(WBSFluidProgressAnimation *)v3 destinationPosition];
    if (previousDestinationPosition == v7)
    {
      self->_fluidProgressAnimationPhase = 2;
    }
  }

  [(WBSFluidProgressAnimation *)v3 destinationPosition];
  self->_previousDestinationPosition = v8;
  if (!self->_fluidProgressAnimationPhase)
  {
    self->_fluidProgressAnimationPhase = 1;
  }

  nextFluidProgressAnimation = self->_nextFluidProgressAnimation;
  self->_nextFluidProgressAnimation = v3;
}

- (BOOL)isFluidProgressStalled
{
  if ((self->_fluidProgressAnimationPhase & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    return 0;
  }

  if (CFAbsoluteTimeGetCurrent() - self->_lastTimeProgressValueWasUpdated <= 1.5)
  {
    return 0;
  }

  return (self->_fluidProgressAnimationPhase & 0xFFFFFFFFFFFFFFFBLL) != 0;
}

- (double)_adjustProgressPosition:(double)result
{
  if (self->_minProgressPosition > result)
  {
    result = self->_minProgressPosition;
  }

  if (self->_fluidProgressType != 1)
  {
    return result * 0.4;
  }

  return result;
}

- (double)_animationDuration
{
  fluidProgressAnimationPhase = self->_fluidProgressAnimationPhase;
  if (fluidProgressAnimationPhase == 3)
  {
    return 0.7;
  }

  if (fluidProgressAnimationPhase == 4)
  {
    return (1.0 - self->_previousDestinationPosition) * 0.2;
  }

  return 0.2;
}

+ (double)_estimatedLoadTimeRemainingFromProgressValue:(double)value
{
  v3 = 2.5;
  if (value <= 0.85)
  {
    v3 = 3.0;
    if (value <= 0.8)
    {
      v3 = 5.0;
      if (value <= 0.5)
      {
        return 30.0;
      }
    }
  }

  return v3;
}

- (double)_fractionCompleteAtElapsedTime:(double)time
{
  v3 = 1.0;
  if (self->_fluidProgressAnimationPhase != 4)
  {
    v4 = self->_linearFunctionB + self->_linearFunctionM * time;
    if (v4 < 0.0)
    {
      v4 = 0.0;
    }

    v3 = 1.0;
    if (v4 <= 1.0)
    {
      return v4;
    }
  }

  return v3;
}

- (double)_nextProgressPosition:(double)position
{
  fluidProgressAnimationPhase = self->_fluidProgressAnimationPhase;
  if (fluidProgressAnimationPhase == 4)
  {
    return 1.0;
  }

  if (fluidProgressAnimationPhase == 3)
  {
    result = self->_previousDestinationPosition + 0.02;
    if (result > 0.4)
    {
      return 0.4;
    }
  }

  else
  {
    if (self->_fluidProgressType)
    {
      webKitProgressValue = self->_webKitProgressValue;
    }

    else
    {
      [(WBSFluidProgressState *)self secondsElapsedSinceLoadBegan];
      [(WBSFluidProgressState *)self _fractionCompleteAtElapsedTime:v8 + position];
    }

    [(WBSFluidProgressState *)self _adjustProgressPosition:webKitProgressValue];
  }

  return result;
}

- (void)_updateLinearFunction
{
  [(WBSFluidProgressState *)self secondsElapsedSinceLoadBegan];
  v4 = v3;
  [(WBSFluidProgressState *)self _estimatedLoadTimeRemaining];
  v6 = v5;
  [(WBSFluidProgressState *)self secondsElapsedSinceLoadBegan];
  [(WBSFluidProgressState *)self _fractionCompleteAtElapsedTime:?];
  if (minProgressPosition < self->_minProgressPosition)
  {
    minProgressPosition = self->_minProgressPosition;
  }

  if (minProgressPosition < self->_previousDestinationPosition / 0.4)
  {
    minProgressPosition = self->_previousDestinationPosition / 0.4;
  }

  v8 = (minProgressPosition + -1.0) / (v4 - (v4 + v6));
  self->_linearFunctionM = v8;
  self->_linearFunctionB = 1.0 - v8 * (v4 + v6);
}

@end
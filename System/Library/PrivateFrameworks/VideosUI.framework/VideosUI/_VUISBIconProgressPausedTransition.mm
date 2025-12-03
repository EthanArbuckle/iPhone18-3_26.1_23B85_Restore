@interface _VUISBIconProgressPausedTransition
+ (id)newTransitionToPaused:(BOOL)paused;
- (id)_initToPaused:(BOOL)paused;
- (void)_updateElapsedTimeFromFraction;
- (void)_updateTimingFunction;
- (void)_updateView:(id)view;
- (void)dealloc;
- (void)updateToPaused:(BOOL)paused;
- (void)updateView:(id)view withElapsedTime:(double)time;
@end

@implementation _VUISBIconProgressPausedTransition

+ (id)newTransitionToPaused:(BOOL)paused
{
  pausedCopy = paused;
  v4 = [self alloc];

  return [v4 _initToPaused:pausedCopy];
}

- (id)_initToPaused:(BOOL)paused
{
  v7.receiver = self;
  v7.super_class = _VUISBIconProgressPausedTransition;
  v4 = [(_VUISBIconProgressPausedTransition *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_toPaused = paused;
    v4->_duration = 0.5;
    [(_VUISBIconProgressPausedTransition *)v4 _updateTimingFunction];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _VUISBIconProgressPausedTransition;
  [(_VUISBIconProgressPausedTransition *)&v3 dealloc];
}

- (void)updateToPaused:(BOOL)paused
{
  if (self->_toPaused != paused)
  {
    self->_toPaused = paused;
    self->_fraction = 1.0 - self->_fraction;
    [(_VUISBIconProgressPausedTransition *)self _updateTimingFunction];

    [(_VUISBIconProgressPausedTransition *)self _updateElapsedTimeFromFraction];
  }
}

- (void)updateView:(id)view withElapsedTime:(double)time
{
  v6 = self->_totalElapsedTime + time;
  self->_totalElapsedTime = v6;
  duration = self->_duration;
  v8 = 1.0;
  if (v6 < duration)
  {
    v9 = v6 / duration;
    *&v9 = v9;
    [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:v9, 1.0];
    v8 = v10;
  }

  self->_fraction = v8;

  [(_VUISBIconProgressPausedTransition *)self _updateView:view];
}

- (void)_updateView:(id)view
{
  fraction = self->_fraction;
  if (!self->_toPaused)
  {
    fraction = 1.0 - fraction;
  }

  [view setPauseRadiusFraction:fraction];
  if ([(_VUISBIconProgressPausedTransition *)self isCompleteWithView:view])
  {
    [view setDisplayingPaused:self->_toPaused];
  }

  [view circleBoundingRect];

  [view setNeedsDisplayInRect:?];
}

- (void)_updateTimingFunction
{
  if (self->_toPaused)
  {
    v3 = MEMORY[0x1E6979ED0];
  }

  else
  {
    v3 = MEMORY[0x1E6979EB0];
  }

  self->_timingFunction = [MEMORY[0x1E69793D0] functionWithName:*v3];
}

- (void)_updateElapsedTimeFromFraction
{
  v3 = 0.0;
  v4 = 1.0;
  while (1)
  {
    v5 = v3 + v4;
    v6 = (v3 + v4) * 0.5;
    *&v5 = v6;
    [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:v5];
    v8 = v7;
    fraction = self->_fraction;
    if (vabdd_f64(v8, fraction) < 0.01)
    {
      break;
    }

    if (fraction <= v8)
    {
      v4 = (v3 + v4) * 0.5;
    }

    else
    {
      v3 = (v3 + v4) * 0.5;
    }

    if (v4 - v3 <= 0.01)
    {
      v6 = 0.0;
      break;
    }
  }

  self->_totalElapsedTime = v6 * self->_duration;
}

@end
@interface _SBIconProgressStateTransition
+ (Class)_classForTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
+ (id)newTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
- (id)_initWithFromState:(int64_t)a3 toState:(int64_t)a4;
- (void)_updateView:(id)a3;
- (void)updateView:(id)a3 withElapsedTime:(double)a4;
@end

@implementation _SBIconProgressStateTransition

+ (id)newTransitionFromState:(int64_t)a3 toState:(int64_t)a4
{
  v6 = objc_alloc([a1 _classForTransitionFromState:? toState:?]);

  return [v6 _initWithFromState:a3 toState:a4];
}

+ (Class)_classForTransitionFromState:(int64_t)a3 toState:(int64_t)a4
{
  if (a3 == 2)
  {
    if (a4 > 1)
    {
      goto LABEL_9;
    }
  }

  else if (a3 == 1)
  {
    if (a4 && a4 != 2)
    {
LABEL_9:
      v5 = 0;

      return v5;
    }
  }

  else if (a3 || a4 != 1 && a4 != 2)
  {
    goto LABEL_9;
  }

  v5 = objc_opt_class();

  return v5;
}

- (id)_initWithFromState:(int64_t)a3 toState:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = _SBIconProgressStateTransition;
  v6 = [(_SBIconProgressStateTransition *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_fromState = a3;
    v6->_toState = a4;
    if (v6->_fromState >= a4)
    {
      v8 = MEMORY[0x1E6979EB0];
    }

    else
    {
      v8 = MEMORY[0x1E6979ED0];
    }

    v9 = [MEMORY[0x1E69793D0] functionWithName:*v8];
    timingFunction = v7->_timingFunction;
    v7->_timingFunction = v9;

    v7->_duration = 0.5;
  }

  return v7;
}

- (void)updateView:(id)a3 withElapsedTime:(double)a4
{
  v11 = a3;
  v6 = self->_totalElapsedTime + a4;
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
  [(_SBIconProgressStateTransition *)self _updateView:v11];
}

- (void)_updateView:(id)a3
{
  v4 = a3;
  [v4 setDisplayedState:self->_toState];
  if ([(_SBIconProgressStateTransition *)self isCompleteWithView:v4]&& self->_toState != 2)
  {
    [v4 setDisplayedFraction:0.0];
  }
}

@end
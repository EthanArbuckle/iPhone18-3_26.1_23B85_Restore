@interface _SBIconProgressStateTransition
+ (Class)_classForTransitionFromState:(int64_t)state toState:(int64_t)toState;
+ (id)newTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (id)_initWithFromState:(int64_t)state toState:(int64_t)toState;
- (void)_updateView:(id)view;
- (void)updateView:(id)view withElapsedTime:(double)time;
@end

@implementation _SBIconProgressStateTransition

+ (id)newTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  v6 = objc_alloc([self _classForTransitionFromState:? toState:?]);

  return [v6 _initWithFromState:state toState:toState];
}

+ (Class)_classForTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  if (state == 2)
  {
    if (toState > 1)
    {
      goto LABEL_9;
    }
  }

  else if (state == 1)
  {
    if (toState && toState != 2)
    {
LABEL_9:
      v5 = 0;

      return v5;
    }
  }

  else if (state || toState != 1 && toState != 2)
  {
    goto LABEL_9;
  }

  v5 = objc_opt_class();

  return v5;
}

- (id)_initWithFromState:(int64_t)state toState:(int64_t)toState
{
  v12.receiver = self;
  v12.super_class = _SBIconProgressStateTransition;
  v6 = [(_SBIconProgressStateTransition *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_fromState = state;
    v6->_toState = toState;
    if (v6->_fromState >= toState)
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

- (void)updateView:(id)view withElapsedTime:(double)time
{
  viewCopy = view;
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
  [(_SBIconProgressStateTransition *)self _updateView:viewCopy];
}

- (void)_updateView:(id)view
{
  viewCopy = view;
  [viewCopy setDisplayedState:self->_toState];
  if ([(_SBIconProgressStateTransition *)self isCompleteWithView:viewCopy]&& self->_toState != 2)
  {
    [viewCopy setDisplayedFraction:0.0];
  }
}

@end
@interface _VUISBInstallProgressStateTransition
+ (Class)_classForTransitionFromState:(int64_t)state toState:(int64_t)toState;
+ (id)newTransitionFromState:(int64_t)state toState:(int64_t)toState;
- (id)_initWithFromState:(int64_t)state toState:(int64_t)toState;
- (void)_updateView:(id)view;
- (void)dealloc;
- (void)updateView:(id)view withElapsedTime:(double)time;
@end

@implementation _VUISBInstallProgressStateTransition

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
      return 0;
    }
  }

  else if (state == 1)
  {
    if (toState && toState != 2)
    {
      return 0;
    }
  }

  else if (state || toState != 1 && toState != 2)
  {
    return 0;
  }

  return objc_opt_class();
}

- (id)_initWithFromState:(int64_t)state toState:(int64_t)toState
{
  v10.receiver = self;
  v10.super_class = _VUISBInstallProgressStateTransition;
  v6 = [(_VUISBInstallProgressStateTransition *)&v10 init];
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

    v6->_timingFunction = [MEMORY[0x1E69793D0] functionWithName:*v8];
    v7->_duration = 0.5;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _VUISBInstallProgressStateTransition;
  [(_VUISBInstallProgressStateTransition *)&v3 dealloc];
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

  [(_VUISBInstallProgressStateTransition *)self _updateView:view];
}

- (void)_updateView:(id)view
{
  [view setDisplayedState:self->_toState];
  if ([(_VUISBInstallProgressStateTransition *)self isCompleteWithView:view]&& self->_toState != 2)
  {

    [view setDisplayedFraction:0.0];
  }
}

@end
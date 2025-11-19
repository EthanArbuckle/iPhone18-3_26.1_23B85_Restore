@interface _VUISBInstallProgressStateTransition
+ (Class)_classForTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
+ (id)newTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
- (id)_initWithFromState:(int64_t)a3 toState:(int64_t)a4;
- (void)_updateView:(id)a3;
- (void)dealloc;
- (void)updateView:(id)a3 withElapsedTime:(double)a4;
@end

@implementation _VUISBInstallProgressStateTransition

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
      return 0;
    }
  }

  else if (a3 == 1)
  {
    if (a4 && a4 != 2)
    {
      return 0;
    }
  }

  else if (a3 || a4 != 1 && a4 != 2)
  {
    return 0;
  }

  return objc_opt_class();
}

- (id)_initWithFromState:(int64_t)a3 toState:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = _VUISBInstallProgressStateTransition;
  v6 = [(_VUISBInstallProgressStateTransition *)&v10 init];
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

- (void)updateView:(id)a3 withElapsedTime:(double)a4
{
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

  [(_VUISBInstallProgressStateTransition *)self _updateView:a3];
}

- (void)_updateView:(id)a3
{
  [a3 setDisplayedState:self->_toState];
  if ([(_VUISBInstallProgressStateTransition *)self isCompleteWithView:a3]&& self->_toState != 2)
  {

    [a3 setDisplayedFraction:0.0];
  }
}

@end
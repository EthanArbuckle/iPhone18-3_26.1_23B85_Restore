@interface UIAnimation
- (SEL)action;
- (UIAnimation)initWithTarget:(id)a3;
- (float)fractionForTime:(double)a3;
- (float)progressForFraction:(float)result;
- (id)completion;
- (id)delegate;
- (void)setAction:(SEL)a3;
- (void)setCompletion:(id)a3;
- (void)stopAnimation;
@end

@implementation UIAnimation

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)completion
{
  v2 = _Block_copy(self->_completion);

  return v2;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (UIAnimation)initWithTarget:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = UIAnimation;
  v6 = [(UIAnimation *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_target, a3);
    v8 = [(UIAnimation *)v7 target];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [(UIAnimation *)v7 target];
      v11 = [v10 window];
      v12 = [v11 screen];
      screen = v7->_screen;
      v7->_screen = v12;
    }

    v14 = [(UIScreen *)v7->_screen _displayID];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"mainDisplay";
    }

    objc_storeStrong(&v7->_screenIdentifier, v16);
  }

  return v7;
}

- (void)stopAnimation
{
  v3 = +[UIAnimator sharedAnimator];
  [v3 stopAnimation:self];
}

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

- (void)setCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  completion = self->_completion;
  self->_completion = v4;
}

- (float)progressForFraction:(float)result
{
  v3 = *&self->_animationFlags & 0xF;
  if (v3 == 2)
  {
    v6 = sin(result * 0.785398163);
    return (v6 + v6) * v6;
  }

  else if (v3 == 1)
  {
    v5 = sin((1.0 - result) * 0.785398163);
    return 1.0 - ((v5 + v5) * v5);
  }

  else if ((*&self->_animationFlags & 0xF) == 0)
  {
    v4 = sin(result * 1.57079633);
    return v4 * v4;
  }

  return result;
}

- (float)fractionForTime:(double)a3
{
  startTime = self->_startTime;
  if (self->_state == 1)
  {
    result = fmax((a3 - startTime) / self->_duration, 0.0);
    if (result > 1.0 || 1.0 - result < 0.00100000005)
    {
      return 1.0;
    }
  }

  else
  {
    v5 = startTime < a3;
    v6 = 0.0;
    if (v5)
    {
      return 1.0;
    }

    return v6;
  }

  return result;
}

@end
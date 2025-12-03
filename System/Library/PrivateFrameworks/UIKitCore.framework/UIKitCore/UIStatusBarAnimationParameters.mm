@interface UIStatusBarAnimationParameters
+ (id)fencingAnimation;
+ (void)animateWithParameters:(id)parameters fromCurrentState:(BOOL)state frameInterval:(double)interval animations:(id)animations completion:(id)completion;
- (BSAnimationSettings)bsAnimationSettings;
- (UIStatusBarAnimationParameters)initWithDefaultParameters;
- (UIStatusBarAnimationParameters)initWithEmptyParameters;
- (void)setStartTime:(double)time;
@end

@implementation UIStatusBarAnimationParameters

- (UIStatusBarAnimationParameters)initWithDefaultParameters
{
  v3.receiver = self;
  v3.super_class = UIStatusBarAnimationParameters;
  result = [(UIStatusBarAnimationParameters *)&v3 init];
  if (result)
  {
    result->_curve = 0;
  }

  return result;
}

+ (id)fencingAnimation
{
  initWithEmptyParameters = [[self alloc] initWithEmptyParameters];

  return initWithEmptyParameters;
}

- (BSAnimationSettings)bsAnimationSettings
{
  if ([(UIStatusBarAnimationParameters *)self shouldAnimate])
  {
    v7 = MEMORY[0x1E698E608];
    duration = self->_duration;
    delay = self->_delay;
    v10 = _UIGetAnimationCurveSpline(self->_curve, v3, v4, v5, v6);
    v11 = [v7 settingsWithDuration:v10 delay:duration timingFunction:delay];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UIStatusBarAnimationParameters)initWithEmptyParameters
{
  v3.receiver = self;
  v3.super_class = UIStatusBarAnimationParameters;
  return [(UIStatusBarAnimationParameters *)&v3 init];
}

- (void)setStartTime:(double)time
{
  if (time == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = fmax(CACurrentMediaTime() - time, 0.0);
  }

  self->_delay = v4;
}

+ (void)animateWithParameters:(id)parameters fromCurrentState:(BOOL)state frameInterval:(double)interval animations:(id)animations completion:(id)completion
{
  stateCopy = state;
  parametersCopy = parameters;
  animationsCopy = animations;
  completionCopy = completion;
  if (parametersCopy)
  {
    if ([parametersCopy shouldAnimate])
    {
      [parametersCopy duration];
      v15 = v14;
      [parametersCopy delay];
      v17 = v16;
      curve = [parametersCopy curve];
      v19 = 0;
      v20 = 4;
      if (!stateCopy)
      {
        v20 = 0;
      }

      v21 = v20 | (curve << 16);
      if (interval != 0.0)
      {
        v19 = ((240.0 / round(1.0 / interval)) << 24) - 0x1000000;
      }

      animationFactory = [parametersCopy animationFactory];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __109__UIStatusBarAnimationParameters_animateWithParameters_fromCurrentState_frameInterval_animations_completion___block_invoke;
      v26[3] = &unk_1E70F0F78;
      v27 = animationsCopy;
      [UIView _animateWithDuration:v19 | v21 delay:animationFactory options:v26 factory:completionCopy animations:v15 completion:v17];
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __109__UIStatusBarAnimationParameters_animateWithParameters_fromCurrentState_frameInterval_animations_completion___block_invoke_2;
      v23[3] = &unk_1E70F77D0;
      v24 = animationsCopy;
      v25 = completionCopy;
      [UIView performWithoutAnimation:v23];
    }
  }

  else
  {
    if (animationsCopy)
    {
      animationsCopy[2](animationsCopy);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }
}

uint64_t __109__UIStatusBarAnimationParameters_animateWithParameters_fromCurrentState_frameInterval_animations_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __109__UIStatusBarAnimationParameters_animateWithParameters_fromCurrentState_frameInterval_animations_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end
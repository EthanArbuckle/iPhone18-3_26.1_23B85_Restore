@interface UIStatusBarAnimationParameters
+ (id)fencingAnimation;
+ (void)animateWithParameters:(id)a3 fromCurrentState:(BOOL)a4 frameInterval:(double)a5 animations:(id)a6 completion:(id)a7;
- (BSAnimationSettings)bsAnimationSettings;
- (UIStatusBarAnimationParameters)initWithDefaultParameters;
- (UIStatusBarAnimationParameters)initWithEmptyParameters;
- (void)setStartTime:(double)a3;
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
  v2 = [[a1 alloc] initWithEmptyParameters];

  return v2;
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

- (void)setStartTime:(double)a3
{
  if (a3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = fmax(CACurrentMediaTime() - a3, 0.0);
  }

  self->_delay = v4;
}

+ (void)animateWithParameters:(id)a3 fromCurrentState:(BOOL)a4 frameInterval:(double)a5 animations:(id)a6 completion:(id)a7
{
  v10 = a4;
  v11 = a3;
  v12 = a6;
  v13 = a7;
  if (v11)
  {
    if ([v11 shouldAnimate])
    {
      [v11 duration];
      v15 = v14;
      [v11 delay];
      v17 = v16;
      v18 = [v11 curve];
      v19 = 0;
      v20 = 4;
      if (!v10)
      {
        v20 = 0;
      }

      v21 = v20 | (v18 << 16);
      if (a5 != 0.0)
      {
        v19 = ((240.0 / round(1.0 / a5)) << 24) - 0x1000000;
      }

      v22 = [v11 animationFactory];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __109__UIStatusBarAnimationParameters_animateWithParameters_fromCurrentState_frameInterval_animations_completion___block_invoke;
      v26[3] = &unk_1E70F0F78;
      v27 = v12;
      [UIView _animateWithDuration:v19 | v21 delay:v22 options:v26 factory:v13 animations:v15 completion:v17];
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __109__UIStatusBarAnimationParameters_animateWithParameters_fromCurrentState_frameInterval_animations_completion___block_invoke_2;
      v23[3] = &unk_1E70F77D0;
      v24 = v12;
      v25 = v13;
      [UIView performWithoutAnimation:v23];
    }
  }

  else
  {
    if (v12)
    {
      v12[2](v12);
    }

    if (v13)
    {
      (*(v13 + 2))(v13, 1);
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
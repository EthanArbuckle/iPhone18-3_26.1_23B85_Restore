@interface SBSystemApertureFluidAnimator
- (SBSystemApertureFluidAnimator)initWithSettings:(id)a3;
- (double)transitionDuration:(id)a3;
- (id)_fluidBehaviorSettings;
- (void)animateWithMode:(int64_t)a3 animations:(id)a4 completion:(id)a5;
@end

@implementation SBSystemApertureFluidAnimator

- (SBSystemApertureFluidAnimator)initWithSettings:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBSystemApertureFluidAnimator;
  v5 = [(SBSystemApertureFluidAnimator *)&v7 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x277D65E60]);
      [v4 setDefaultValues];
    }

    [(SBSystemApertureAnimator *)v5 _setSettings:v4];
  }

  return v5;
}

- (void)animateWithMode:(int64_t)a3 animations:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(SBSystemApertureFluidAnimator *)self _fluidBehaviorSettings];
  v11 = [objc_alloc(MEMORY[0x277D67DC0]) initWithFluidBehaviorSettings:v10 tracking:a3 == 5 retargeted:a3 == 4];
  v12 = SBSystemApertureAnimatorCurrentAnimationParameters;
  SBSystemApertureAnimatorCurrentAnimationParameters = v11;

  v13 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__SBSystemApertureFluidAnimator_animateWithMode_animations_completion___block_invoke;
  v16[3] = &unk_2783AE668;
  v17 = v11;
  v18 = v8;
  v14 = v8;
  v15 = v11;
  [v13 sb_animateWithSettings:v10 mode:a3 animations:v9 completion:v16];
}

uint64_t __71__SBSystemApertureFluidAnimator_animateWithMode_animations_completion___block_invoke(uint64_t a1)
{
  v2 = SBSystemApertureAnimatorCurrentAnimationParameters;
  if (*(a1 + 32) == SBSystemApertureAnimatorCurrentAnimationParameters)
  {
    SBSystemApertureAnimatorCurrentAnimationParameters = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (double)transitionDuration:(id)a3
{
  v3 = [(SBSystemApertureFluidAnimator *)self _fluidBehaviorSettings];
  [v3 settlingDuration];
  v5 = v4;

  return v5;
}

- (id)_fluidBehaviorSettings
{
  v2 = [(SBSystemApertureAnimator *)self _settings];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

@end
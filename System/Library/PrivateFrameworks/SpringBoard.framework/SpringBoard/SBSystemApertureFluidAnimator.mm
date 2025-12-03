@interface SBSystemApertureFluidAnimator
- (SBSystemApertureFluidAnimator)initWithSettings:(id)settings;
- (double)transitionDuration:(id)duration;
- (id)_fluidBehaviorSettings;
- (void)animateWithMode:(int64_t)mode animations:(id)animations completion:(id)completion;
@end

@implementation SBSystemApertureFluidAnimator

- (SBSystemApertureFluidAnimator)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v7.receiver = self;
  v7.super_class = SBSystemApertureFluidAnimator;
  v5 = [(SBSystemApertureFluidAnimator *)&v7 init];
  if (v5)
  {
    if (!settingsCopy)
    {
      settingsCopy = objc_alloc_init(MEMORY[0x277D65E60]);
      [settingsCopy setDefaultValues];
    }

    [(SBSystemApertureAnimator *)v5 _setSettings:settingsCopy];
  }

  return v5;
}

- (void)animateWithMode:(int64_t)mode animations:(id)animations completion:(id)completion
{
  completionCopy = completion;
  animationsCopy = animations;
  _fluidBehaviorSettings = [(SBSystemApertureFluidAnimator *)self _fluidBehaviorSettings];
  v11 = [objc_alloc(MEMORY[0x277D67DC0]) initWithFluidBehaviorSettings:_fluidBehaviorSettings tracking:mode == 5 retargeted:mode == 4];
  v12 = SBSystemApertureAnimatorCurrentAnimationParameters;
  SBSystemApertureAnimatorCurrentAnimationParameters = v11;

  v13 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__SBSystemApertureFluidAnimator_animateWithMode_animations_completion___block_invoke;
  v16[3] = &unk_2783AE668;
  v17 = v11;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = v11;
  [v13 sb_animateWithSettings:_fluidBehaviorSettings mode:mode animations:animationsCopy completion:v16];
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

- (double)transitionDuration:(id)duration
{
  _fluidBehaviorSettings = [(SBSystemApertureFluidAnimator *)self _fluidBehaviorSettings];
  [_fluidBehaviorSettings settlingDuration];
  v5 = v4;

  return v5;
}

- (id)_fluidBehaviorSettings
{
  _settings = [(SBSystemApertureAnimator *)self _settings];
  v3 = objc_opt_class();
  v4 = _settings;
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
@interface SBSystemApertureAnimator
- (SBSystemApertureAnimator)initWithSettings:(id)a3;
- (id)_bsAnimationSettings;
- (void)_animateTransition:(id)a3 actions:(id)a4 completion:(id)a5;
- (void)animateTransition:(id)a3;
@end

@implementation SBSystemApertureAnimator

- (SBSystemApertureAnimator)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSystemApertureAnimator;
  v6 = [(SBSystemApertureAnimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
  }

  return v7;
}

- (void)animateTransition:(id)a3
{
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 _alongsideAnimationsCount] >= 1)
  {
    v6 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__SBSystemApertureAnimator_animateTransition___block_invoke;
    v17[3] = &unk_2783A8C18;
    v3 = &v18;
    v18 = v5;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = MEMORY[0x223D6F7F0](v6);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __46__SBSystemApertureAnimator_animateTransition___block_invoke_2;
  v15 = &unk_2783AE4B8;
  v9 = v5;
  v16 = v9;
  v10 = MEMORY[0x223D6F7F0](&v12);
  if (v8)
  {
    if ([v9 isAnimated])
    {
      [(SBSystemApertureAnimator *)self transitionDuration:v9];
      if (v11 > 0.0)
      {
        [(SBSystemApertureAnimator *)self _animateTransition:v9 actions:v8 completion:v10];
        goto LABEL_11;
      }
    }

    v8[2](v8);
  }

  v10[2](v10, 1, 0);
LABEL_11:

  if (v7)
  {
  }
}

uint64_t __46__SBSystemApertureAnimator_animateTransition___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 __runAlongsideAnimations];
  }

  return result;
}

- (id)_bsAnimationSettings
{
  settings = self->_settings;
  v3 = objc_opt_class();
  v4 = settings;
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

- (void)_animateTransition:(id)a3 actions:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CF0D38];
  v9 = a4;
  v10 = [(SBSystemApertureAnimator *)self _bsAnimationSettings];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__SBSystemApertureAnimator__animateTransition_actions_completion___block_invoke;
  v12[3] = &unk_2783A9C70;
  v13 = v7;
  v11 = v7;
  [v8 animateWithSettings:v10 actions:v9 completion:v12];
}

@end
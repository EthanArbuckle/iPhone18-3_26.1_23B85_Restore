@interface SBUISystemApertureElementSourceAnimator
+ (void)setActiveAnimator:(id)a3;
- (SBUISystemApertureElementSourceAnimator)initWithSettings:(id)a3 window:(id)a4;
- (double)transitionDuration:(id)a3;
- (void)_finishTransition:(BOOL)a3;
- (void)_performAnimation;
- (void)addPostAlongsideAnimation:(id)a3;
- (void)addPostflightAction:(id)a3;
- (void)addPreAlongsideAnimation:(id)a3;
- (void)addPreflightAction:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation SBUISystemApertureElementSourceAnimator

- (void)_performAnimation
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_preAlongsideAnimations copy];
  preAlongsideAnimations = self->_preAlongsideAnimations;
  self->_preAlongsideAnimations = 0;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v22 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained __runAlongsideAnimations];
  }

  v11 = [(NSMutableArray *)self->_postAlongsideAnimations copy];
  postAlongsideAnimations = self->_postAlongsideAnimations;
  self->_postAlongsideAnimations = 0;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * v17) + 16))(*(*(&v18 + 1) + 8 * v17));
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

+ (void)setActiveAnimator:(id)a3
{
  v4 = a3;
  v7 = [a1 activeAnimator];
  v5 = SBUISystemApertureElementSourceActiveAnimator;
  SBUISystemApertureElementSourceActiveAnimator = v4;

  v6 = v7;
  if (v7)
  {
    [v7 _finishTransition:0];
    v6 = v7;
  }
}

- (SBUISystemApertureElementSourceAnimator)initWithSettings:(id)a3 window:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBUISystemApertureElementSourceAnimator;
  v9 = [(SBUISystemApertureElementSourceAnimator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_settings, a3);
    objc_storeWeak(&v10->_window, v8);
  }

  return v10;
}

- (void)addPreflightAction:(id)a3
{
  v4 = a3;
  preflightActions = self->_preflightActions;
  v9 = v4;
  if (!preflightActions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_preflightActions;
    self->_preflightActions = v6;

    preflightActions = self->_preflightActions;
  }

  v8 = MEMORY[0x1AC58E960]();
  [(NSMutableArray *)preflightActions addObject:v8];
}

- (void)addPostflightAction:(id)a3
{
  v4 = a3;
  postflightActions = self->_postflightActions;
  v9 = v4;
  if (!postflightActions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_postflightActions;
    self->_postflightActions = v6;

    postflightActions = self->_postflightActions;
  }

  v8 = MEMORY[0x1AC58E960]();
  [(NSMutableArray *)postflightActions addObject:v8];
}

- (void)addPreAlongsideAnimation:(id)a3
{
  v4 = a3;
  preAlongsideAnimations = self->_preAlongsideAnimations;
  v9 = v4;
  if (!preAlongsideAnimations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_preAlongsideAnimations;
    self->_preAlongsideAnimations = v6;

    preAlongsideAnimations = self->_preAlongsideAnimations;
  }

  v8 = MEMORY[0x1AC58E960]();
  [(NSMutableArray *)preAlongsideAnimations addObject:v8];
}

- (void)addPostAlongsideAnimation:(id)a3
{
  v4 = a3;
  postAlongsideAnimations = self->_postAlongsideAnimations;
  v9 = v4;
  if (!postAlongsideAnimations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_postAlongsideAnimations;
    self->_postAlongsideAnimations = v6;

    postAlongsideAnimations = self->_postAlongsideAnimations;
  }

  v8 = MEMORY[0x1AC58E960]();
  [(NSMutableArray *)postAlongsideAnimations addObject:v8];
}

- (void)_finishTransition:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);
  [WeakRetained completeTransition:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SBUISystemApertureElementSourceAnimator__finishTransition___block_invoke;
  v7[3] = &unk_1E789DA60;
  v7[4] = self;
  v8 = v3;
  [MEMORY[0x1E69DD250] SBUISA_performWithoutAnimationOrRetargeting:v7];
  v6 = [objc_opt_class() activeAnimator];

  if (v6 == self)
  {
    [objc_opt_class() setActiveAnimator:0];
  }
}

void __61__SBUISystemApertureElementSourceAnimator__finishTransition___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_window);
  objc_storeWeak(&self->_transitionContext, v4);

  [objc_opt_class() setActiveAnimator:self];
  v6 = [(SBUISystemApertureElementSourceAnimator *)self settings];
  v7 = [v6 isAnimated];

  if ((v7 & 1) == 0)
  {
    [WeakRetained _removeAllRetargetableAnimations:1];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__SBUISystemApertureElementSourceAnimator_animateTransition___block_invoke;
  v12[3] = &unk_1E789DA38;
  v12[4] = self;
  [MEMORY[0x1E69DD250] SBUISA_performWithoutAnimationOrRetargeting:v12];
  v8 = MEMORY[0x1E69DD250];
  v9 = [(SBUISystemApertureElementSourceAnimator *)self settings];
  v10[4] = self;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__SBUISystemApertureElementSourceAnimator_animateTransition___block_invoke_2;
  v11[3] = &unk_1E789DA38;
  v11[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__SBUISystemApertureElementSourceAnimator_animateTransition___block_invoke_3;
  v10[3] = &unk_1E789FEE8;
  [v8 SBUISA_animateWithSettings:v9 animations:v11 completion:v10];
}

void __61__SBUISystemApertureElementSourceAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void __61__SBUISystemApertureElementSourceAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  v2 = [objc_opt_class() activeAnimator];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    v4 = *(a1 + 32);

    [v4 _performAnimation];
  }
}

void __61__SBUISystemApertureElementSourceAnimator_animateTransition___block_invoke_3(uint64_t a1, int a2, int a3)
{
  v6 = [objc_opt_class() activeAnimator];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    v8 = *(a1 + 32);

    [v8 _finishTransition:a2 & ~a3];
  }
}

- (double)transitionDuration:(id)a3
{
  v3 = [(SBUISystemApertureElementSourceAnimator *)self settings];
  v4 = [v3 fluidBehaviorSettings];
  [v4 settlingDuration];
  v6 = v5;

  return v6;
}

@end
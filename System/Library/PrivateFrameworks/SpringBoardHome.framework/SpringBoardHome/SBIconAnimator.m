@interface SBIconAnimator
- (SBIconAnimator)initWithAnimationContainer:(id)a3;
- (SBIconAnimatorDelegate)delegate;
- (UIView)referenceView;
- (id)centralAnimationFactory;
- (void)_animateToFractionFromContext:(id)a3;
- (void)_animateToFractionFromPendingContexts;
- (void)_invalidateCompletions;
- (void)_windowFinishedRotating;
- (void)animateToFraction:(double)a3 afterDelay:(double)a4 withCompletion:(id)a5;
- (void)cleanup;
- (void)dealloc;
- (void)prepare;
- (void)setFraction:(double)a3;
- (void)setInvalidated:(BOOL)a3;
@end

@implementation SBIconAnimator

- (void)prepare
{
  if (!self->_invalidated && !self->_windowIsRotating && !self->_startAnimationAfterRotationEnds)
  {
    [(SBIconAnimator *)self _prepareAnimation];
  }
}

- (UIView)referenceView
{
  v2 = [(SBIconAnimator *)self animationContainer];
  v3 = [v2 containerView];

  return v3;
}

- (void)_invalidateCompletions
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_pendedAnimationContexts;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) completion];
        v9 = v8;
        if (v8)
        {
          (*(v8 + 16))(v8, 0);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_pendedAnimationContexts removeAllObjects];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(SBIconAnimator *)self _invalidateCompletions];
  v4.receiver = self;
  v4.super_class = SBIconAnimator;
  [(SBIconAnimator *)&v4 dealloc];
}

- (void)cleanup
{
  [(SBIconAnimator *)self _setAnimationFraction:0.0];
  [(SBIconAnimator *)self _cleanupAnimation];
  [(UIView *)self->_backgroundDarkeningView removeFromSuperview];
  backgroundDarkeningView = self->_backgroundDarkeningView;
  self->_backgroundDarkeningView = 0;
}

- (SBIconAnimator)initWithAnimationContainer:(id)a3
{
  v5 = a3;
  v6 = [(SBIconAnimator *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animationContainer, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendedAnimationContexts = v7->_pendedAnimationContexts;
    v7->_pendedAnimationContexts = v8;

    v10 = [v5 animationWindow];
    v11 = [v10 isRotating];
    v7->_windowIsRotating = v11;
    if (v11)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 addObserver:v7 selector:sel__windowFinishedRotating name:*MEMORY[0x1E69DE7D0] object:v10];
    }
  }

  return v7;
}

- (void)setInvalidated:(BOOL)a3
{
  if (self->_invalidated != a3)
  {
    self->_invalidated = a3;
    if (a3 && !self->_cleanedUp)
    {
      [(SBIconAnimator *)self cleanup];
      [(SBIconAnimator *)self _invalidateCompletions];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained iconAnimatorWasInvalidated:self];
    }
  }
}

- (id)centralAnimationFactory
{
  v2 = MEMORY[0x1E698E7D0];
  v3 = [(SBHIconAnimationSettings *)self->_settings centralAnimationSettings];
  v4 = [v3 BSAnimationSettings];
  v5 = [v2 factoryWithSettings:v4];

  [v5 setAllowsAdditiveAnimations:1];

  return v5;
}

- (void)setFraction:(double)a3
{
  if (self->_invalidated || self->_windowIsRotating || self->_startAnimationAfterRotationEnds)
  {
    self->_fraction = a3;
  }

  else
  {
    [(SBIconAnimator *)self _setAnimationFraction:a3];
  }
}

- (void)animateToFraction:(double)a3 afterDelay:(double)a4 withCompletion:(id)a5
{
  v8 = a5;
  if ([(SBIconAnimator *)self invalidated])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SBIconAnimator_animateToFraction_afterDelay_withCompletion___block_invoke;
    block[3] = &unk_1E8089600;
    v11 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v9 = objc_alloc_init(SBIconAnimationContext);
    [(SBIconAnimationContext *)v9 setFraction:a3];
    [(SBIconAnimationContext *)v9 setDelay:a4];
    [(SBIconAnimationContext *)v9 setCompletion:v8];
    if (self->_windowIsRotating || self->_startAnimationAfterRotationEnds)
    {
      [(NSMutableArray *)self->_pendedAnimationContexts addObject:v9];
      self->_startAnimationAfterRotationEnds = 1;
    }

    else
    {
      [(SBIconAnimator *)self _animateToFractionFromContext:v9];
    }
  }
}

uint64_t __62__SBIconAnimator_animateToFraction_afterDelay_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_animateToFractionFromPendingContexts
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_pendedAnimationContexts lastObject];
  v4 = objc_alloc_init(SBIconAnimationContext);
  [v3 fraction];
  [(SBIconAnimationContext *)v4 setFraction:?];
  v16 = v3;
  [v3 delay];
  [(SBIconAnimationContext *)v4 setDelay:?];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_pendedAnimationContexts, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_pendedAnimationContexts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 completion];
        v13 = v12;
        if (v12)
        {
          v14 = _Block_copy(v12);
          [v5 addObject:v14];

          [v11 setCompletion:0];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__SBIconAnimator__animateToFractionFromPendingContexts__block_invoke;
  v17[3] = &unk_1E8088F40;
  v18 = v5;
  v15 = v5;
  [(SBIconAnimationContext *)v4 setCompletion:v17];
  [(NSMutableArray *)self->_pendedAnimationContexts removeAllObjects];
  [(SBIconAnimator *)self _animateToFractionFromContext:v4];
}

void __55__SBIconAnimator__animateToFractionFromPendingContexts__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_animateToFractionFromContext:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = [(SBIconAnimator *)self _numberOfSignificantAnimations];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  if (v20[3])
  {
    [v4 fraction];
    v6 = v5;
    [v4 delay];
    v8 = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__SBIconAnimator__animateToFractionFromContext___block_invoke_2;
    v10[3] = &unk_1E8090BB8;
    v12 = v17;
    v13 = &v19;
    v10[4] = self;
    v11 = v4;
    [(SBIconAnimator *)self _animateToFraction:v10 afterDelay:v6 withSharedCompletion:v8];
    v9 = v11;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SBIconAnimator__animateToFractionFromContext___block_invoke;
    block[3] = &unk_1E8090B90;
    v15 = v4;
    v16 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v9 = v15;
  }

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);
}

void __48__SBIconAnimator__animateToFractionFromContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(*(*(a1 + 40) + 8) + 24));
    v2 = v3;
  }
}

void __48__SBIconAnimator__animateToFractionFromContext___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  if (!--*(*(*(a1 + 56) + 8) + 24))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    if (v4)
    {
      *(v3 + 24) = v4 - 1;
    }

    v5 = [*(a1 + 40) completion];
    if (v5)
    {
      v6 = v5;
      v5[2](v5, *(*(*(a1 + 48) + 8) + 24));
      v5 = v6;
    }
  }
}

- (void)_windowFinishedRotating
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69DE7D0];
  v5 = [(SBIconAnimator *)self animationContainer];
  v6 = [v5 animationWindow];
  [v3 removeObserver:self name:v4 object:v6];

  self->_windowIsRotating = 0;
  if (self->_startAnimationAfterRotationEnds)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SBIconAnimator__windowFinishedRotating__block_invoke;
    block[3] = &unk_1E8088C90;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __41__SBIconAnimator__windowFinishedRotating__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 0;
  [*(a1 + 32) prepare];
  [*(a1 + 32) setFraction:*(*(a1 + 32) + 8)];
  v2 = *(a1 + 32);

  return [v2 _animateToFractionFromPendingContexts];
}

- (SBIconAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
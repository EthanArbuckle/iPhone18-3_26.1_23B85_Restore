@interface PNPPlatterAnimator
- (void)animateTransition:(id)transition;
@end

@implementation PNPPlatterAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  isPresenting = [(PNPPlatterAnimator *)self isPresenting];
  containerView = [transitionCopy containerView];
  v7 = MEMORY[0x277D77248];
  if (!isPresenting)
  {
    v7 = MEMORY[0x277D77238];
  }

  v8 = [transitionCopy viewForKey:*v7];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__PNPPlatterAnimator_animateTransition___block_invoke;
  v25[3] = &unk_279A0A178;
  v28 = isPresenting;
  v9 = v8;
  v26 = v9;
  v10 = containerView;
  v27 = v10;
  v11 = MEMORY[0x25F8AE9F0](v25);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __40__PNPPlatterAnimator_animateTransition___block_invoke_3;
  v21[3] = &unk_279A0A178;
  v24 = isPresenting;
  v12 = v9;
  v22 = v12;
  v13 = transitionCopy;
  v23 = v13;
  v14 = MEMORY[0x25F8AE9F0](v21);
  isAnimated = [v13 isAnimated];
  v11[2](v11);
  if (isAnimated)
  {
    v16 = MEMORY[0x277D75D18];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__PNPPlatterAnimator_animateTransition___block_invoke_4;
    v19[3] = &unk_279A0A128;
    v20 = &__block_literal_global_0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__PNPPlatterAnimator_animateTransition___block_invoke_5;
    v17[3] = &unk_279A0A1C0;
    v18 = v14;
    [v16 _animateUsingDefaultTimingWithOptions:6 animations:v19 completion:v17];
  }

  else
  {
    v14[2](v14);
  }
}

uint64_t __40__PNPPlatterAnimator_animateTransition___block_invoke(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v2 = result;
    v3 = *(result + 32);
    [*(result + 40) bounds];
    [v3 setFrame:?];
    v5 = *(v2 + 32);
    v4 = *(v2 + 40);

    return [v4 addSubview:v5];
  }

  return result;
}

uint64_t __40__PNPPlatterAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) removeFromSuperview];
  }

  v2 = *(a1 + 40);

  return [v2 completeTransition:1];
}

@end
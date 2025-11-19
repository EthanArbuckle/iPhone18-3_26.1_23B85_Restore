@interface UIProgressiveBlurPresentationAnimator
@end

@implementation UIProgressiveBlurPresentationAnimator

void __60___UIProgressiveBlurPresentationAnimator_animateTransition___block_invoke(uint64_t a1)
{
  if (*(a1 + 144))
  {
    v2 = 56;
  }

  else
  {
    v2 = 72;
  }

  v3 = 20.0;
  if (!*(a1 + 144))
  {
    v3 = 15.0;
  }

  v4 = *(a1 + 64) * (v3 / *(a1 + v2));
  v5 = *(a1 + 80);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60___UIProgressiveBlurPresentationAnimator_animateTransition___block_invoke_2;
  v16[3] = &unk_1E70F3DC8;
  v6 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 88);
  v19 = *(a1 + 104);
  v20 = *(a1 + 120);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60___UIProgressiveBlurPresentationAnimator_animateTransition___block_invoke_3;
  v14[3] = &unk_1E70F5AC0;
  v15 = *(a1 + 40);
  [UIView _animateWithDuration:393248 delay:v6 options:v16 factory:v14 animations:v4 completion:v5];
  if (*(a1 + 144))
  {
    v7 = 56;
  }

  else
  {
    v7 = 72;
  }

  v8 = 15.0 / *(a1 + v7) * *(a1 + 64);
  v9 = *(a1 + 80);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60___UIProgressiveBlurPresentationAnimator_animateTransition___block_invoke_4;
  v11[3] = &unk_1E70F32F0;
  v10 = *(a1 + 48);
  v12 = *(a1 + 40);
  v13 = *(a1 + 136);
  [UIView _animateWithDuration:393248 delay:v10 options:v11 factory:0 animations:v8 completion:v9];
}

uint64_t __60___UIProgressiveBlurPresentationAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __60___UIProgressiveBlurPresentationAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __60___UIProgressiveBlurPresentationAnimator_animateTransition___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

@end
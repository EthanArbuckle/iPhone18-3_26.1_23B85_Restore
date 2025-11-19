@interface VUIConfirmationAnimatedTransitioning
- (VUIConfirmationAnimatedTransitioning)initWithPresenting:(BOOL)a3;
- (VUIConfirmationAnimatedTransitioningDelegate)delegate;
- (void)animateTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
@end

@implementation VUIConfirmationAnimatedTransitioning

- (VUIConfirmationAnimatedTransitioning)initWithPresenting:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VUIConfirmationAnimatedTransitioning;
  result = [(VUIConfirmationAnimatedTransitioning *)&v5 init];
  if (result)
  {
    result->_presenting = a3;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  [(VUIConfirmationAnimatedTransitioning *)self transitionDuration:v4];
  v6 = v5;
  v7 = [v4 containerView];
  v8 = [v4 viewForKey:*MEMORY[0x1E69DE770]];
  v9 = [v4 viewForKey:*MEMORY[0x1E69DE780]];
  objc_initWeak(&location, v4);
  if ([(VUIConfirmationAnimatedTransitioning *)self isPresenting])
  {
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [v7 setBackgroundColor:v10];

    v11 = [v9 subviews];
    v12 = [v11 lastObject];

    v13 = [MEMORY[0x1E69DC888] clearColor];
    [v12 setBackgroundColor:v13];

    v14 = [v9 layer];
    CGAffineTransformMakeScale(&v26, 0.88, 0.88);
    [v14 setAffineTransform:&v26];

    [v7 addSubview:v9];
    [v9 setAlpha:0.0];
    v15 = MEMORY[0x1E69DD250];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__VUIConfirmationAnimatedTransitioning_animateTransition___block_invoke;
    v24[3] = &unk_1E872D768;
    v25 = v9;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __58__VUIConfirmationAnimatedTransitioning_animateTransition___block_invoke_2;
    v22[3] = &unk_1E872F5D0;
    objc_copyWeak(&v23, &location);
    [v15 animateWithDuration:v24 animations:v22 completion:v6];
    objc_destroyWeak(&v23);
  }

  else
  {
    v16 = MEMORY[0x1E69DD250];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__VUIConfirmationAnimatedTransitioning_animateTransition___block_invoke_3;
    v20[3] = &unk_1E872D768;
    v21 = v8;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__VUIConfirmationAnimatedTransitioning_animateTransition___block_invoke_4;
    v17[3] = &unk_1E872F8D0;
    v18 = v21;
    objc_copyWeak(&v19, &location);
    [v16 animateWithDuration:v20 animations:v17 completion:v6];
    objc_destroyWeak(&v19);

    v12 = v21;
  }

  objc_destroyWeak(&location);
}

void __58__VUIConfirmationAnimatedTransitioning_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 32) layer];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setAffineTransform:v4];
}

void __58__VUIConfirmationAnimatedTransitioning_animateTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeTransition:a2];
}

void __58__VUIConfirmationAnimatedTransitioning_animateTransition___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = [*(a1 + 32) layer];
  CGAffineTransformMakeScale(&v3, 0.88, 0.88);
  [v2 setAffineTransform:&v3];
}

void __58__VUIConfirmationAnimatedTransitioning_animateTransition___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) layer];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v7[0] = *MEMORY[0x1E695EFD0];
  v7[1] = v5;
  v7[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v4 setAffineTransform:v7];

  [*(a1 + 32) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained completeTransition:a2];
}

- (void)animationEnded:(BOOL)a3
{
  v4 = [(VUIConfirmationAnimatedTransitioning *)self delegate];
  [v4 confirmationAnimatedTransitioningAnimationDidEnd:self];
}

- (VUIConfirmationAnimatedTransitioningDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
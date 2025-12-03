@interface SBPasscodeKeyboardAnimator
- (SBPasscodeKeyboardAnimatorDelegate)delegate;
- (void)completeAnimationWithState:(id)state;
- (void)performAnimation:(id)animation afterStarted:(id)started onCompletion:(id)completion;
- (void)prepareForAnimationWithState:(id)state;
- (void)runAnimationWithState:(id)state;
@end

@implementation SBPasscodeKeyboardAnimator

- (void)performAnimation:(id)animation afterStarted:(id)started onCompletion:(id)completion
{
  startedCopy = started;
  v8 = MEMORY[0x1E69DD250];
  completionCopy = completion;
  animationCopy = animation;
  if ([v8 _isInAnimationBlock])
  {
    [MEMORY[0x1E698E7D0] addAlongsideAnimations:animationCopy completion:completionCopy];
  }

  else
  {
    [MEMORY[0x1E698E7D0] animateWithSettings:self->_animationSettings actions:animationCopy completion:completionCopy];
  }

  v11 = startedCopy;
  if (startedCopy)
  {
    (*(startedCopy + 2))(startedCopy);
    v11 = startedCopy;
  }
}

- (void)prepareForAnimationWithState:(id)state
{
  stateCopy = state;
  v26.receiver = self;
  v26.super_class = SBPasscodeKeyboardAnimator;
  [(_UIKeyboardAnimator *)&v26 prepareForAnimationWithState:stateCopy];
  animatingView = [stateCopy animatingView];
  window = [animatingView window];
  [window bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [stateCopy startFrame];
  v28.origin.x = v15;
  v28.origin.y = v16;
  v28.size.width = v17;
  v28.size.height = v18;
  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  v19 = CGRectContainsRect(v27, v28);

  if (v19)
  {
    animatingView2 = [stateCopy animatingView];
    [animatingView2 setAlpha:1.0];
  }

  else
  {
    v21 = MEMORY[0x1E69DD250];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __59__SBPasscodeKeyboardAnimator_prepareForAnimationWithState___block_invoke;
    v24[3] = &unk_1E789DA38;
    v22 = stateCopy;
    v25 = v22;
    [v21 performWithoutAnimation:v24];
    animatingView3 = [v22 animatingView];
    [animatingView3 setAlpha:0.0];

    animatingView2 = v25;
  }
}

void __59__SBPasscodeKeyboardAnimator_prepareForAnimationWithState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) endFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) animatingView];
  [v10 setFrame:{v3, v5, v7, v9}];
}

- (void)runAnimationWithState:(id)state
{
  stateCopy = state;
  v25.receiver = self;
  v25.super_class = SBPasscodeKeyboardAnimator;
  [(_UIKeyboardAnimator *)&v25 runAnimationWithState:stateCopy];
  animatingView = [stateCopy animatingView];
  window = [animatingView window];
  [window bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [stateCopy endFrame];
  v27.origin.x = v15;
  v27.origin.y = v16;
  v27.size.width = v17;
  v27.size.height = v18;
  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  v19 = CGRectContainsRect(v26, v27);

  animatingView2 = [stateCopy animatingView];
  v21 = animatingView2;
  if (v19)
  {
    [animatingView2 setAlpha:1.0];
  }

  else
  {
    [animatingView2 setAlpha:0.0];

    v22 = MEMORY[0x1E69DD250];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52__SBPasscodeKeyboardAnimator_runAnimationWithState___block_invoke;
    v23[3] = &unk_1E789DA38;
    v24 = stateCopy;
    [v22 performWithoutAnimation:v23];
    v21 = v24;
  }
}

void __52__SBPasscodeKeyboardAnimator_runAnimationWithState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) startFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) animatingView];
  [v10 setFrame:{v3, v5, v7, v9}];
}

- (void)completeAnimationWithState:(id)state
{
  stateCopy = state;
  v7.receiver = self;
  v7.super_class = SBPasscodeKeyboardAnimator;
  [(_UIKeyboardAnimator *)&v7 completeAnimationWithState:stateCopy];
  delegate = [(SBPasscodeKeyboardAnimator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passcodeKeyboardAnimatorAnimationDidComplete:self];
  }

  animatingView = [stateCopy animatingView];
  [animatingView setAlpha:1.0];
}

- (SBPasscodeKeyboardAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface _UIProgressiveBlurPresentationController
- (_UIProgressiveBlurPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (id)_preferredAnimationControllerForDismissal;
- (id)_preferredAnimationControllerForPresentation;
- (void)_animateWithCoordinator:(id)a3 isPresenting:(BOOL)a4;
- (void)_configureSubviews;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation _UIProgressiveBlurPresentationController

- (_UIProgressiveBlurPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UIProgressiveBlurPresentationController;
  v4 = [(UIPresentationController *)&v8 initWithPresentedViewController:a3 presentingViewController:a4];
  if (v4)
  {
    v5 = _UISolariumEnabled();
    v6 = 4005;
    if (v5)
    {
      v6 = 17;
    }

    v4->_blurStyle = v6;
  }

  return v4;
}

- (void)presentationTransitionWillBegin
{
  [(_UIProgressiveBlurPresentationController *)self _configureSubviews];
  v4 = [(UIPresentationController *)self presentedViewController];
  v3 = [v4 transitionCoordinator];
  [(_UIProgressiveBlurPresentationController *)self _animateWithCoordinator:v3 isPresenting:1];
}

- (void)dismissalTransitionWillBegin
{
  [(_UIProgressiveBlurPresentationController *)self _configureSubviews];
  v4 = [(UIPresentationController *)self presentedViewController];
  v3 = [v4 transitionCoordinator];
  [(_UIProgressiveBlurPresentationController *)self _animateWithCoordinator:v3 isPresenting:0];
}

- (void)_configureSubviews
{
  if (!self->_visualEffectView)
  {
    v3 = [(UIPresentationController *)self containerView];

    if (v3)
    {
      v4 = [UIVisualEffectView alloc];
      v5 = [(UIPresentationController *)self containerView];
      [v5 bounds];
      v6 = [(UIVisualEffectView *)v4 initWithFrame:?];
      visualEffectView = self->_visualEffectView;
      self->_visualEffectView = v6;

      [(UIVisualEffectView *)self->_visualEffectView setEffect:0];
      v8 = [(UIPresentationController *)self containerView];
      [v8 addSubview:self->_visualEffectView];
    }
  }
}

- (void)_animateWithCoordinator:(id)a3 isPresenting:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_UIProgressiveBlurPresentationController *)self visualEffectView];
  v8 = [UIBlurEffect effectWithStyle:self->_blurStyle];
  v9 = !v4;
  if (v4)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v9)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 0.2;
  }

  v13 = [UIColor colorWithWhite:0.5 alpha:?];
  [v7 setBackgroundColor:v13];

  [v7 setEffect:v11];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81___UIProgressiveBlurPresentationController__animateWithCoordinator_isPresenting___block_invoke;
  aBlock[3] = &unk_1E70F36D0;
  v14 = v7;
  v26 = v14;
  v15 = v10;
  v27 = v15;
  v28 = v12;
  v16 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __81___UIProgressiveBlurPresentationController__animateWithCoordinator_isPresenting___block_invoke_2;
  v23[3] = &unk_1E70F3770;
  v17 = v16;
  v24 = v17;
  if (([v6 animateAlongsideTransition:v23 completion:0] & 1) == 0)
  {
    v18 = +[_UIProgressiveBlurPresentationAnimator alphaAnimationFactory];
    [v6 transitionDuration];
    v20 = v19;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __81___UIProgressiveBlurPresentationController__animateWithCoordinator_isPresenting___block_invoke_3;
    v21[3] = &unk_1E70F0F78;
    v22 = v17;
    [UIView _animateWithDuration:393248 delay:v18 options:v21 factory:0 animations:v20 completion:0.0];
  }
}

- (id)_preferredAnimationControllerForPresentation
{
  v2 = [[_UIProgressiveBlurPresentationAnimator alloc] initForPresenting:1];

  return v2;
}

- (id)_preferredAnimationControllerForDismissal
{
  v2 = [[_UIProgressiveBlurPresentationAnimator alloc] initForPresenting:0];

  return v2;
}

@end
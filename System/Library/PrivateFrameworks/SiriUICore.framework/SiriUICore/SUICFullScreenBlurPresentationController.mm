@interface SUICFullScreenBlurPresentationController
- (SUICFullScreenBlurPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 blurStyle:(unint64_t)a5;
- (unint64_t)blurStyle;
- (void)_stageViewsForFadeIn;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)setBlurStyle:(unint64_t)a3;
@end

@implementation SUICFullScreenBlurPresentationController

- (void)presentationTransitionWillBegin
{
  [(_UIBackdropView *)self->_fullScreenBlurView setAlpha:0.0];
  [(SUICFullScreenBlurPresentationController *)self _stageViewsForFadeIn];
  v3 = [(SUICFullScreenBlurPresentationController *)self presentingViewController];
  v4 = [v3 transitionCoordinator];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__SUICFullScreenBlurPresentationController_presentationTransitionWillBegin__block_invoke;
  v7[3] = &unk_1E81E7D90;
  objc_copyWeak(&v8, &location);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__SUICFullScreenBlurPresentationController_presentationTransitionWillBegin__block_invoke_2;
  v5[3] = &unk_1E81E7D90;
  objc_copyWeak(&v6, &location);
  [v4 animateAlongsideTransition:v7 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __75__SUICFullScreenBlurPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[48] setAlpha:1.0];
    WeakRetained = v2;
  }
}

void __75__SUICFullScreenBlurPresentationController_presentationTransitionWillBegin__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained presentedViewController];
    [v2 becomeFirstResponder];

    WeakRetained = v3;
  }
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  if (!a3)
  {
    [(_UIBackdropView *)self->_fullScreenBlurView removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  v3 = [(SUICFullScreenBlurPresentationController *)self presentingViewController];
  v4 = [v3 transitionCoordinator];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__SUICFullScreenBlurPresentationController_dismissalTransitionWillBegin__block_invoke;
  v7[3] = &unk_1E81E7D90;
  objc_copyWeak(&v8, &location);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__SUICFullScreenBlurPresentationController_dismissalTransitionWillBegin__block_invoke_2;
  v5[3] = &unk_1E81E7D90;
  objc_copyWeak(&v6, &location);
  [v4 animateAlongsideTransition:v7 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __72__SUICFullScreenBlurPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[48] setAlpha:0.0];
    WeakRetained = v2;
  }
}

void __72__SUICFullScreenBlurPresentationController_dismissalTransitionWillBegin__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained presentedViewController];
    v3 = [v2 view];
    [v3 removeFromSuperview];

    [v5[48] removeFromSuperview];
    v4 = [v5 presentedViewController];
    [v4 resignFirstResponder];

    WeakRetained = v5;
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  if (!a3)
  {
    [(SUICFullScreenBlurPresentationController *)self _stageViewsForFadeIn];
  }
}

- (SUICFullScreenBlurPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 blurStyle:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = SUICFullScreenBlurPresentationController;
  v6 = [(SUICFullScreenBlurPresentationController *)&v12 initWithPresentedViewController:a3 presentingViewController:a4];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69DD370]);
    if (a5 == 2)
    {
      v8 = 2020;
    }

    else
    {
      v8 = 2030;
    }

    v9 = [v7 initWithPrivateStyle:v8];
    fullScreenBlurView = v6->_fullScreenBlurView;
    v6->_fullScreenBlurView = v9;
  }

  return v6;
}

- (void)setBlurStyle:(unint64_t)a3
{
  fullScreenBlurView = self->_fullScreenBlurView;
  if (a3 == 2)
  {
    v4 = 2020;
  }

  else
  {
    v4 = 2030;
  }

  [(_UIBackdropView *)fullScreenBlurView transitionToPrivateStyle:v4];
}

- (unint64_t)blurStyle
{
  if ([(_UIBackdropView *)self->_fullScreenBlurView style]== 2020)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_stageViewsForFadeIn
{
  v6 = [(SUICFullScreenBlurPresentationController *)self containerView];
  fullScreenBlurView = self->_fullScreenBlurView;
  [v6 bounds];
  [(_UIBackdropView *)fullScreenBlurView setFrame:?];
  [v6 addSubview:self->_fullScreenBlurView];
  v4 = [(SUICFullScreenBlurPresentationController *)self presentedViewController];
  v5 = [v4 view];
  [(_UIBackdropView *)self->_fullScreenBlurView bounds];
  [v5 setFrame:?];
  [(_UIBackdropView *)self->_fullScreenBlurView addSubview:v5];
}

@end
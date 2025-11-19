@interface VideosExtrasPresentationController
- (CGRect)extrasMenuBarFrame;
- (VideosExtrasPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 extrasMenuBarView:(id)a5 extrasmenuBarFrame:(CGRect)a6;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation VideosExtrasPresentationController

- (VideosExtrasPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4 extrasMenuBarView:(id)a5 extrasmenuBarFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = VideosExtrasPresentationController;
  v15 = [(VideosExtrasPresentationController *)&v18 initWithPresentedViewController:a3 presentingViewController:a4];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_extrasMenuBarView, a5);
    v16->_extrasMenuBarFrame.origin.x = x;
    v16->_extrasMenuBarFrame.origin.y = y;
    v16->_extrasMenuBarFrame.size.width = width;
    v16->_extrasMenuBarFrame.size.height = height;
  }

  return v16;
}

- (void)presentationTransitionWillBegin
{
  v33[4] = *MEMORY[0x1E69E9840];
  v3 = [(VideosExtrasPresentationController *)self extrasMenuBarView];

  if (v3)
  {
    v4 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [v4 setAlpha:0.0];

    v5 = [(VideosExtrasPresentationController *)self containerView];
    v6 = [(VideosExtrasPresentationController *)self presentedViewController];
    v7 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [(VideosExtrasPresentationController *)self extrasMenuBarFrame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v7 setFrame:?];
    [v5 addSubview:v7];
    [v5 bringSubviewToFront:v7];
    v14 = [v7 heightAnchor];
    v15 = [v14 constraintEqualToConstant:v13];

    v16 = [v7 bottomAnchor];
    v17 = [v5 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:v9 + v13];

    v19 = [v7 centerXAnchor];
    v20 = [v5 centerXAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    v22 = [v7 widthAnchor];
    v23 = [v22 constraintEqualToConstant:v11];

    v24 = MEMORY[0x1E696ACD8];
    v33[0] = v21;
    v33[1] = v23;
    v33[2] = v15;
    v33[3] = v18;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v25];

    v26 = [v6 transitionCoordinator];

    if (v26)
    {
      objc_initWeak(&location, self);
      v27 = [v6 transitionCoordinator];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __69__VideosExtrasPresentationController_presentationTransitionWillBegin__block_invoke;
      v29[3] = &unk_1E8736308;
      objc_copyWeak(&v31, &location);
      v30 = v5;
      [v27 animateAlongsideTransition:v29 completion:&__block_literal_global_143];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      v28 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
      [v28 setAlpha:1.0];
    }
  }
}

void __69__VideosExtrasPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained extrasMenuBarView];

  [v3 setAlpha:1.0];
  [*(a1 + 32) bringSubviewToFront:v3];
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4 = [(VideosExtrasPresentationController *)self extrasMenuBarView];

  if (v4)
  {
    v5 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [v5 removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  v33[4] = *MEMORY[0x1E69E9840];
  v3 = [(VideosExtrasPresentationController *)self extrasMenuBarView];

  if (v3)
  {
    v4 = [(VideosExtrasPresentationController *)self containerView];
    v5 = [(VideosExtrasPresentationController *)self presentedViewController];
    v6 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [(VideosExtrasPresentationController *)self extrasMenuBarFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v6 setFrame:?];
    [v4 addSubview:v6];
    [v4 bringSubviewToFront:v6];
    v13 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [v13 setAlpha:1.0];

    v14 = [v6 heightAnchor];
    v15 = [v14 constraintEqualToConstant:v12];

    v16 = [v6 bottomAnchor];
    v17 = [v4 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:v8 + v12];

    v19 = [v6 centerXAnchor];
    v20 = [v4 centerXAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    v22 = [v6 widthAnchor];
    v23 = [v22 constraintEqualToConstant:v10];

    v24 = MEMORY[0x1E696ACD8];
    v33[0] = v21;
    v33[1] = v23;
    v33[2] = v15;
    v33[3] = v18;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v25];

    v26 = [v5 transitionCoordinator];

    if (v26)
    {
      objc_initWeak(&location, self);
      v27 = [v5 transitionCoordinator];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __66__VideosExtrasPresentationController_dismissalTransitionWillBegin__block_invoke;
      v29[3] = &unk_1E8736308;
      objc_copyWeak(&v31, &location);
      v30 = v4;
      [v27 animateAlongsideTransition:v29 completion:0];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      v28 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
      [v28 setAlpha:0.0];
    }
  }
}

void __66__VideosExtrasPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained extrasMenuBarView];

  [v3 setAlpha:0.0];
  [*(a1 + 32) bringSubviewToFront:v3];
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v4 = [(VideosExtrasPresentationController *)self extrasMenuBarView];

  if (v4)
  {
    v5 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [v5 removeFromSuperview];
  }
}

- (CGRect)extrasMenuBarFrame
{
  x = self->_extrasMenuBarFrame.origin.x;
  y = self->_extrasMenuBarFrame.origin.y;
  width = self->_extrasMenuBarFrame.size.width;
  height = self->_extrasMenuBarFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
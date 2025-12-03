@interface VideosExtrasPresentationController
- (CGRect)extrasMenuBarFrame;
- (VideosExtrasPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController extrasMenuBarView:(id)view extrasmenuBarFrame:(CGRect)frame;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation VideosExtrasPresentationController

- (VideosExtrasPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController extrasMenuBarView:(id)view extrasmenuBarFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = VideosExtrasPresentationController;
  v15 = [(VideosExtrasPresentationController *)&v18 initWithPresentedViewController:controller presentingViewController:viewController];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_extrasMenuBarView, view);
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
  extrasMenuBarView = [(VideosExtrasPresentationController *)self extrasMenuBarView];

  if (extrasMenuBarView)
  {
    extrasMenuBarView2 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [extrasMenuBarView2 setAlpha:0.0];

    containerView = [(VideosExtrasPresentationController *)self containerView];
    presentedViewController = [(VideosExtrasPresentationController *)self presentedViewController];
    extrasMenuBarView3 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [(VideosExtrasPresentationController *)self extrasMenuBarFrame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [extrasMenuBarView3 setFrame:?];
    [containerView addSubview:extrasMenuBarView3];
    [containerView bringSubviewToFront:extrasMenuBarView3];
    heightAnchor = [extrasMenuBarView3 heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:v13];

    bottomAnchor = [extrasMenuBarView3 bottomAnchor];
    topAnchor = [containerView topAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v9 + v13];

    centerXAnchor = [extrasMenuBarView3 centerXAnchor];
    centerXAnchor2 = [containerView centerXAnchor];
    v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    widthAnchor = [extrasMenuBarView3 widthAnchor];
    v23 = [widthAnchor constraintEqualToConstant:v11];

    v24 = MEMORY[0x1E696ACD8];
    v33[0] = v21;
    v33[1] = v23;
    v33[2] = v15;
    v33[3] = v18;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v25];

    transitionCoordinator = [presentedViewController transitionCoordinator];

    if (transitionCoordinator)
    {
      objc_initWeak(&location, self);
      transitionCoordinator2 = [presentedViewController transitionCoordinator];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __69__VideosExtrasPresentationController_presentationTransitionWillBegin__block_invoke;
      v29[3] = &unk_1E8736308;
      objc_copyWeak(&v31, &location);
      v30 = containerView;
      [transitionCoordinator2 animateAlongsideTransition:v29 completion:&__block_literal_global_143];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      extrasMenuBarView4 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
      [extrasMenuBarView4 setAlpha:1.0];
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

- (void)presentationTransitionDidEnd:(BOOL)end
{
  extrasMenuBarView = [(VideosExtrasPresentationController *)self extrasMenuBarView];

  if (extrasMenuBarView)
  {
    extrasMenuBarView2 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [extrasMenuBarView2 removeFromSuperview];
  }
}

- (void)dismissalTransitionWillBegin
{
  v33[4] = *MEMORY[0x1E69E9840];
  extrasMenuBarView = [(VideosExtrasPresentationController *)self extrasMenuBarView];

  if (extrasMenuBarView)
  {
    containerView = [(VideosExtrasPresentationController *)self containerView];
    presentedViewController = [(VideosExtrasPresentationController *)self presentedViewController];
    extrasMenuBarView2 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [(VideosExtrasPresentationController *)self extrasMenuBarFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [extrasMenuBarView2 setFrame:?];
    [containerView addSubview:extrasMenuBarView2];
    [containerView bringSubviewToFront:extrasMenuBarView2];
    extrasMenuBarView3 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [extrasMenuBarView3 setAlpha:1.0];

    heightAnchor = [extrasMenuBarView2 heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:v12];

    bottomAnchor = [extrasMenuBarView2 bottomAnchor];
    topAnchor = [containerView topAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v8 + v12];

    centerXAnchor = [extrasMenuBarView2 centerXAnchor];
    centerXAnchor2 = [containerView centerXAnchor];
    v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    widthAnchor = [extrasMenuBarView2 widthAnchor];
    v23 = [widthAnchor constraintEqualToConstant:v10];

    v24 = MEMORY[0x1E696ACD8];
    v33[0] = v21;
    v33[1] = v23;
    v33[2] = v15;
    v33[3] = v18;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v25];

    transitionCoordinator = [presentedViewController transitionCoordinator];

    if (transitionCoordinator)
    {
      objc_initWeak(&location, self);
      transitionCoordinator2 = [presentedViewController transitionCoordinator];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __66__VideosExtrasPresentationController_dismissalTransitionWillBegin__block_invoke;
      v29[3] = &unk_1E8736308;
      objc_copyWeak(&v31, &location);
      v30 = containerView;
      [transitionCoordinator2 animateAlongsideTransition:v29 completion:0];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      extrasMenuBarView4 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
      [extrasMenuBarView4 setAlpha:0.0];
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

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  extrasMenuBarView = [(VideosExtrasPresentationController *)self extrasMenuBarView];

  if (extrasMenuBarView)
  {
    extrasMenuBarView2 = [(VideosExtrasPresentationController *)self extrasMenuBarView];
    [extrasMenuBarView2 removeFromSuperview];
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
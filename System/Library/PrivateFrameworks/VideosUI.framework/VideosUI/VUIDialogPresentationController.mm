@interface VUIDialogPresentationController
- (CGSize)modalSize;
- (UIVisualEffectView)backdropView;
- (VUIDialogPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)_layoutPresentedView;
- (void)_tapGesture:(id)gesture;
- (void)dealloc;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation VUIDialogPresentationController

- (VUIDialogPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v8.receiver = self;
  v8.super_class = VUIDialogPresentationController;
  v4 = [(VUIDialogPresentationController *)&v8 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__tapGesture_];
    backdropView = [(VUIDialogPresentationController *)v4 backdropView];
    [backdropView addGestureRecognizer:v5];
  }

  return v4;
}

- (void)dealloc
{
  backdropView = [(VUIDialogPresentationController *)self backdropView];
  [backdropView removeAllGestureRecognizers];

  v4.receiver = self;
  v4.super_class = VUIDialogPresentationController;
  [(VUIDialogPresentationController *)&v4 dealloc];
}

- (void)presentationTransitionWillBegin
{
  v14.receiver = self;
  v14.super_class = VUIDialogPresentationController;
  [(VUIDialogPresentationController *)&v14 presentationTransitionWillBegin];
  presentedView = [(VUIDialogPresentationController *)self presentedView];
  [presentedView _setContinuousCornerRadius:16.0];

  presentedView2 = [(VUIDialogPresentationController *)self presentedView];
  [presentedView2 setClipsToBounds:1];

  containerView = [(VUIDialogPresentationController *)self containerView];
  backdropView = [(VUIDialogPresentationController *)self backdropView];
  [containerView addSubview:backdropView];

  backdropView2 = [(VUIDialogPresentationController *)self backdropView];
  [backdropView2 setAutoresizingMask:18];

  backdropView3 = [(VUIDialogPresentationController *)self backdropView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [backdropView3 setBackgroundColor:clearColor];

  backdropView4 = [(VUIDialogPresentationController *)self backdropView];
  containerView2 = [(VUIDialogPresentationController *)self containerView];
  [containerView2 bounds];
  [backdropView4 setFrame:?];

  [(VUIDialogPresentationController *)self _layoutPresentedView];
  presentedViewController = [(VUIDialogPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  [transitionCoordinator animateAlongsideTransition:0 completion:&__block_literal_global_146];
}

uint64_t __66__VUIDialogPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v3 = MEMORY[0x1E69DD2E8];

    return [v3 _synchronizeDrawing];
  }

  return result;
}

- (void)dismissalTransitionWillBegin
{
  v5.receiver = self;
  v5.super_class = VUIDialogPresentationController;
  [(VUIDialogPresentationController *)&v5 dismissalTransitionWillBegin];
  presentedViewController = [(VUIDialogPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  [transitionCoordinator animateAlongsideTransition:0 completion:&__block_literal_global_12_1];
}

uint64_t __63__VUIDialogPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v3 = MEMORY[0x1E69DD2E8];

    return [v3 _synchronizeDrawing];
  }

  return result;
}

- (UIVisualEffectView)backdropView
{
  backdropView = self->_backdropView;
  if (!backdropView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    v5 = self->_backdropView;
    self->_backdropView = v4;

    backdropView = self->_backdropView;
  }

  return backdropView;
}

- (void)_layoutPresentedView
{
  presentedView = [(VUIDialogPresentationController *)self presentedView];
  [(VUIDialogPresentationController *)self modalSize];
  v4 = v3;
  v6 = v5;
  containerView = [(VUIDialogPresentationController *)self containerView];
  [containerView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  v16 = CGRectGetWidth(v22) + -33.0;
  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  v17 = CGRectGetHeight(v23) + -33.0;
  if (v16 >= v4)
  {
    v18 = v4;
  }

  else
  {
    v18 = v16;
  }

  if (v17 >= v6)
  {
    v19 = v6;
  }

  else
  {
    v19 = v17;
  }

  [presentedView setFrame:{(v13 - v18) * 0.5, (v15 - v19) * 0.5}];
}

- (void)_tapGesture:(id)gesture
{
  presentedViewController = [(VUIDialogPresentationController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (CGSize)modalSize
{
  width = self->_modalSize.width;
  height = self->_modalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
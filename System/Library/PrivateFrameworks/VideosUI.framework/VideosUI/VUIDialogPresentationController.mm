@interface VUIDialogPresentationController
- (CGSize)modalSize;
- (UIVisualEffectView)backdropView;
- (VUIDialogPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)_layoutPresentedView;
- (void)_tapGesture:(id)a3;
- (void)dealloc;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation VUIDialogPresentationController

- (VUIDialogPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v8.receiver = self;
  v8.super_class = VUIDialogPresentationController;
  v4 = [(VUIDialogPresentationController *)&v8 initWithPresentedViewController:a3 presentingViewController:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__tapGesture_];
    v6 = [(VUIDialogPresentationController *)v4 backdropView];
    [v6 addGestureRecognizer:v5];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(VUIDialogPresentationController *)self backdropView];
  [v3 removeAllGestureRecognizers];

  v4.receiver = self;
  v4.super_class = VUIDialogPresentationController;
  [(VUIDialogPresentationController *)&v4 dealloc];
}

- (void)presentationTransitionWillBegin
{
  v14.receiver = self;
  v14.super_class = VUIDialogPresentationController;
  [(VUIDialogPresentationController *)&v14 presentationTransitionWillBegin];
  v3 = [(VUIDialogPresentationController *)self presentedView];
  [v3 _setContinuousCornerRadius:16.0];

  v4 = [(VUIDialogPresentationController *)self presentedView];
  [v4 setClipsToBounds:1];

  v5 = [(VUIDialogPresentationController *)self containerView];
  v6 = [(VUIDialogPresentationController *)self backdropView];
  [v5 addSubview:v6];

  v7 = [(VUIDialogPresentationController *)self backdropView];
  [v7 setAutoresizingMask:18];

  v8 = [(VUIDialogPresentationController *)self backdropView];
  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [(VUIDialogPresentationController *)self backdropView];
  v11 = [(VUIDialogPresentationController *)self containerView];
  [v11 bounds];
  [v10 setFrame:?];

  [(VUIDialogPresentationController *)self _layoutPresentedView];
  v12 = [(VUIDialogPresentationController *)self presentedViewController];
  v13 = [v12 transitionCoordinator];
  [v13 animateAlongsideTransition:0 completion:&__block_literal_global_146];
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
  v3 = [(VUIDialogPresentationController *)self presentedViewController];
  v4 = [v3 transitionCoordinator];
  [v4 animateAlongsideTransition:0 completion:&__block_literal_global_12_1];
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
  v20 = [(VUIDialogPresentationController *)self presentedView];
  [(VUIDialogPresentationController *)self modalSize];
  v4 = v3;
  v6 = v5;
  v7 = [(VUIDialogPresentationController *)self containerView];
  [v7 bounds];
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

  [v20 setFrame:{(v13 - v18) * 0.5, (v15 - v19) * 0.5}];
}

- (void)_tapGesture:(id)a3
{
  v3 = [(VUIDialogPresentationController *)self presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
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
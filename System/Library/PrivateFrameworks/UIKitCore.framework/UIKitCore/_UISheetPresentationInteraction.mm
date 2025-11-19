@interface _UISheetPresentationInteraction
- (UIPanGestureRecognizer)_panGestureRecognizer;
- (UIView)view;
- (_UISheetPresentationInteractionDelegate)_delegate;
- (void)_handlePan:(id)a3;
- (void)_setPanGestureRecognizer:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UISheetPresentationInteraction

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v7 = [(_UISheetPresentationInteraction *)self view];

  v5 = v7;
  if (v7 && v7 != v4)
  {
    v6 = [(_UISheetPresentationInteraction *)self _panGestureRecognizer];
    [v7 removeGestureRecognizer:v6];

    v5 = v7;
  }
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  [(_UISheetPresentationInteraction *)self setView:v5];
  if (v5)
  {
    v4 = [(_UISheetPresentationInteraction *)self _panGestureRecognizer];
    [v5 addGestureRecognizer:v4];
  }
}

- (UIPanGestureRecognizer)_panGestureRecognizer
{
  panGestureRecognizer = self->__panGestureRecognizer;
  if (!panGestureRecognizer)
  {
    v4 = objc_alloc_init(UIPanGestureRecognizer);
    v5 = self->__panGestureRecognizer;
    self->__panGestureRecognizer = v4;

    [(UIPanGestureRecognizer *)self->__panGestureRecognizer _setCanPanHorizontally:0];
    [(UIGestureRecognizer *)self->__panGestureRecognizer addTarget:self action:sel__handlePan_];
    panGestureRecognizer = self->__panGestureRecognizer;
  }

  return panGestureRecognizer;
}

- (void)_setPanGestureRecognizer:(id)a3
{
  v5 = a3;
  p_panGestureRecognizer = &self->__panGestureRecognizer;
  if (self->__panGestureRecognizer != v5)
  {
    v9 = v5;
    v7 = [(_UISheetPresentationInteraction *)self view];
    panGestureRecognizer = self->__panGestureRecognizer;
    if (panGestureRecognizer)
    {
      [(UIGestureRecognizer *)panGestureRecognizer removeTarget:self action:sel__handlePan_];
      [v7 removeGestureRecognizer:self->__panGestureRecognizer];
    }

    objc_storeStrong(&self->__panGestureRecognizer, a3);
    if (*p_panGestureRecognizer)
    {
      [(UIGestureRecognizer *)*p_panGestureRecognizer addTarget:self action:sel__handlePan_];
      [v7 addGestureRecognizer:self->__panGestureRecognizer];
    }

    v5 = v9;
  }
}

- (void)_handlePan:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [(_UISheetPresentationInteraction *)self _delegate];
    v6 = [v5 _sheetPresentationInteractionPresentingViewController:self];
    v7 = [v5 _sheetPresentationInteractionPresentedViewController:self];
    v8 = [v7 presentationController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      if (objc_opt_respondsToSelector())
      {
        [v5 _sheetPresentationInteractionWillStartPresentationTransition:self];
      }

      [v9 _setPresentsWithGesture:1];
      v10 = [v9 _sheetInteraction];
      [v10 registerPanGestureRecognizer:v4];

      [v4 removeTarget:self action:sel__handlePan_];
      objc_initWeak(&location, self);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __46___UISheetPresentationInteraction__handlePan___block_invoke;
      v17[3] = &unk_1E70F5A28;
      objc_copyWeak(&v18, &location);
      [v9 set_presentationTransitionWillBeginHandler:v17];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46___UISheetPresentationInteraction__handlePan___block_invoke_2;
      v12[3] = &unk_1E70F6B40;
      v11 = v9;
      v13 = v11;
      v14 = v4;
      v15 = self;
      v16 = v5;
      [v11 _startInteractiveTransitionWithProgress:v6 fromViewController:v12 completion:0.0];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

- (_UISheetPresentationInteractionDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end
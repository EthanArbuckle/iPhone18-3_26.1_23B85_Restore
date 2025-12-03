@interface _UISheetPresentationInteraction
- (UIPanGestureRecognizer)_panGestureRecognizer;
- (UIView)view;
- (_UISheetPresentationInteractionDelegate)_delegate;
- (void)_handlePan:(id)pan;
- (void)_setPanGestureRecognizer:(id)recognizer;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation _UISheetPresentationInteraction

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  view = [(_UISheetPresentationInteraction *)self view];

  v5 = view;
  if (view && view != viewCopy)
  {
    _panGestureRecognizer = [(_UISheetPresentationInteraction *)self _panGestureRecognizer];
    [view removeGestureRecognizer:_panGestureRecognizer];

    v5 = view;
  }
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  [(_UISheetPresentationInteraction *)self setView:viewCopy];
  if (viewCopy)
  {
    _panGestureRecognizer = [(_UISheetPresentationInteraction *)self _panGestureRecognizer];
    [viewCopy addGestureRecognizer:_panGestureRecognizer];
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

- (void)_setPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  p_panGestureRecognizer = &self->__panGestureRecognizer;
  if (self->__panGestureRecognizer != recognizerCopy)
  {
    v9 = recognizerCopy;
    view = [(_UISheetPresentationInteraction *)self view];
    panGestureRecognizer = self->__panGestureRecognizer;
    if (panGestureRecognizer)
    {
      [(UIGestureRecognizer *)panGestureRecognizer removeTarget:self action:sel__handlePan_];
      [view removeGestureRecognizer:self->__panGestureRecognizer];
    }

    objc_storeStrong(&self->__panGestureRecognizer, recognizer);
    if (*p_panGestureRecognizer)
    {
      [(UIGestureRecognizer *)*p_panGestureRecognizer addTarget:self action:sel__handlePan_];
      [view addGestureRecognizer:self->__panGestureRecognizer];
    }

    recognizerCopy = v9;
  }
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  if ([panCopy state] == 1)
  {
    _delegate = [(_UISheetPresentationInteraction *)self _delegate];
    v6 = [_delegate _sheetPresentationInteractionPresentingViewController:self];
    v7 = [_delegate _sheetPresentationInteractionPresentedViewController:self];
    presentationController = [v7 presentationController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = presentationController;
      if (objc_opt_respondsToSelector())
      {
        [_delegate _sheetPresentationInteractionWillStartPresentationTransition:self];
      }

      [v9 _setPresentsWithGesture:1];
      _sheetInteraction = [v9 _sheetInteraction];
      [_sheetInteraction registerPanGestureRecognizer:panCopy];

      [panCopy removeTarget:self action:sel__handlePan_];
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
      v14 = panCopy;
      selfCopy = self;
      v16 = _delegate;
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
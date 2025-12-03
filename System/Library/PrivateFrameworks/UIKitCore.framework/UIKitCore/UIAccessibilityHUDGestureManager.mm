@interface UIAccessibilityHUDGestureManager
- (BOOL)_gestureRecognizer:(id)recognizer canCancelGestureRecognizer:(id)gestureRecognizer;
- (BOOL)_gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIAccessibilityHUDGestureManager)initWithView:(id)view delegate:(id)delegate;
- (UIView)view;
- (id)_bestViewControllerForView;
- (id)_subscribedConcurrentGestureRecognizers;
- (void)_backOff;
- (void)_clearButtonItemGestureSubscriptions;
- (void)_concurrentGestureRecognizerFired:(id)fired;
- (void)_didToggleLargeContentViewer:(id)viewer;
- (void)_dismissAccessibilityHUD;
- (void)_gestureRecognizerChanged:(id)changed;
- (void)_invalidate;
- (void)_setRecognizersEnabled:(BOOL)enabled;
- (void)_showAccessibilityHUDItem:(id)item;
- (void)dealloc;
@end

@implementation UIAccessibilityHUDGestureManager

- (void)dealloc
{
  [(UIAccessibilityHUDGestureManager *)self _invalidate];
  v3.receiver = self;
  v3.super_class = UIAccessibilityHUDGestureManager;
  [(UIAccessibilityHUDGestureManager *)&v3 dealloc];
}

- (void)_invalidate
{
  if (!self->_isInvalidated)
  {
    self->_isInvalidated = 1;
    [(UIAccessibilityHUDGestureManager *)self _clearButtonItemGestureSubscriptions];
    [(UIAccessibilityHUDGestureManager *)self _setRecognizersEnabled:0];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained removeGestureRecognizer:self->_recognizer];

    v5 = objc_loadWeakRetained(&self->_view);
    [v5 removeGestureRecognizer:self->_gateRecognizer];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];
  }
}

- (void)_clearButtonItemGestureSubscriptions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _subscribedConcurrentGestureRecognizers = [(UIAccessibilityHUDGestureManager *)self _subscribedConcurrentGestureRecognizers];
  v4 = [_subscribedConcurrentGestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(_subscribedConcurrentGestureRecognizers);
        }

        [*(*(&v9 + 1) + 8 * i) removeTarget:self action:sel__concurrentGestureRecognizerFired_];
      }

      v5 = [_subscribedConcurrentGestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  _subscribedConcurrentGestureRecognizers2 = [(UIAccessibilityHUDGestureManager *)self _subscribedConcurrentGestureRecognizers];
  [_subscribedConcurrentGestureRecognizers2 removeAllObjects];
}

- (id)_subscribedConcurrentGestureRecognizers
{
  subscribedConcurrentGestureRecognizers = self->_subscribedConcurrentGestureRecognizers;
  if (!subscribedConcurrentGestureRecognizers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_subscribedConcurrentGestureRecognizers;
    self->_subscribedConcurrentGestureRecognizers = array;

    subscribedConcurrentGestureRecognizers = self->_subscribedConcurrentGestureRecognizers;
  }

  return subscribedConcurrentGestureRecognizers;
}

- (UIAccessibilityHUDGestureManager)initWithView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = UIAccessibilityHUDGestureManager;
  v8 = [(UIAccessibilityHUDGestureManager *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, viewCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = [[_UIAccessibilityHUDLongPressGestureRecognizer alloc] initWithTarget:v9 action:sel__gestureRecognizerChanged_];
    recognizer = v9->_recognizer;
    v9->_recognizer = v10;

    [(UILongPressGestureRecognizer *)v9->_recognizer setMinimumPressDuration:0.15];
    [(UIGestureRecognizer *)v9->_recognizer setDelegate:v9];
    WeakRetained = objc_loadWeakRetained(&v9->_view);
    [WeakRetained addGestureRecognizer:v9->_recognizer];

    v13 = objc_opt_new();
    gateRecognizer = v9->_gateRecognizer;
    v9->_gateRecognizer = v13;

    [(UIGestureRecognizer *)v9->_gateRecognizer setDelegate:v9];
    v15 = objc_loadWeakRetained(&v9->_view);
    [v15 addGestureRecognizer:v9->_gateRecognizer];

    [(UIAccessibilityHUDGestureManager *)v9 _setRecognizersEnabled:+[UILargeContentViewerInteraction isEnabled]];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__didToggleLargeContentViewer_ name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];

    v17 = objc_loadWeakRetained(&v9->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v18 = objc_loadWeakRetained(&v9->_delegate);
      v9->_delegateDirectlyShowsHUD = objc_opt_respondsToSelector() & 1;
    }

    else
    {
      v9->_delegateDirectlyShowsHUD = 0;
    }

    v19 = objc_loadWeakRetained(&v9->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = objc_loadWeakRetained(&v9->_delegate);
      -[UIGestureRecognizer setCancelsTouchesInView:](v9->_recognizer, "setCancelsTouchesInView:", [v21 _accessibilityHUDGestureManagerCancelsTouchesInView:v9]);
    }
  }

  return v9;
}

- (void)_setRecognizersEnabled:(BOOL)enabled
{
  if (enabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    traitCollection = [WeakRetained traitCollection];
    _isLargeContentViewerEnabled = [traitCollection _isLargeContentViewerEnabled];
  }

  else
  {
    _isLargeContentViewerEnabled = 0;
  }

  [(UIGestureRecognizer *)self->_recognizer setEnabled:_isLargeContentViewerEnabled];
  gateRecognizer = self->_gateRecognizer;

  [(UIGestureRecognizer *)gateRecognizer setEnabled:_isLargeContentViewerEnabled];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_recognizer == beginCopy && (v5 = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_loadWeakRetained(&self->_view);
    [(UILongPressGestureRecognizer *)beginCopy locationInView:v8];
    v9 = [WeakRetained _accessibilityHUDGestureManager:self shouldBeginAtPoint:?];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_gateRecognizer != recognizerCopy)
  {
    if (self->_recognizer != recognizerCopy || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v9 = [WeakRetained _accessibilityHUDGestureManager:self shouldRecognizeSimultaneouslyWithGestureRecognizer:gestureRecognizerCopy], WeakRetained, !v9))
    {
      v15 = 0;
      goto LABEL_9;
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0 || (v12 = objc_loadWeakRetained(&self->_delegate), v13 = [v12 _accessibilityHUDGestureManager:self shouldTerminateHUDGestureForOtherGestureRecognizer:gestureRecognizerCopy], v12, v13))
    {
      [gestureRecognizerCopy addTarget:self action:sel__concurrentGestureRecognizerFired_];
      _subscribedConcurrentGestureRecognizers = [(UIAccessibilityHUDGestureManager *)self _subscribedConcurrentGestureRecognizers];
      [_subscribedConcurrentGestureRecognizers addObject:gestureRecognizerCopy];
    }
  }

  v15 = 1;
LABEL_9:

  return v15;
}

- (BOOL)_gestureRecognizer:(id)recognizer canCancelGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_recognizer == recognizer && (v7 = objc_loadWeakRetained(&self->_delegate), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [WeakRetained _accessibilityHUDGestureManager:self canCancelGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_concurrentGestureRecognizerFired:(id)fired
{
  firedCopy = fired;
  if ([firedCopy state] != 4 && objc_msgSend(firedCopy, "state") != 5)
  {
    [(UIAccessibilityHUDGestureManager *)self _backOff];
  }
}

- (void)_backOff
{
  if ([(UIGestureRecognizer *)self->_recognizer isEnabled])
  {
    [(UIAccessibilityHUDGestureManager *)self _setRecognizersEnabled:0];

    [(UIAccessibilityHUDGestureManager *)self _setRecognizersEnabled:1];
  }
}

- (void)_showAccessibilityHUDItem:(id)item
{
  if (self->_delegateDirectlyShowsHUD)
  {
    itemCopy = item;
    obj = objc_loadWeakRetained(&self->_delegate);
    [obj _accessibilityHUDGestureManager:self showHUDItem:itemCopy];
  }

  else
  {
    itemCopy2 = item;
    obj = [(UIAccessibilityHUDGestureManager *)self _bestViewControllerForView];
    WeakRetained = objc_loadWeakRetained(&self->_viewControllerDisplayingHUD);

    v8 = obj;
    if (obj != WeakRetained)
    {
      v9 = objc_loadWeakRetained(&self->_viewControllerDisplayingHUD);
      [v9 _dismissAccessibilityHUD];

      v8 = obj;
    }

    objc_storeWeak(&self->_viewControllerDisplayingHUD, v8);
    [obj _showAccessibilityHUDItem:itemCopy2];
  }
}

- (void)_dismissAccessibilityHUD
{
  if (self->_delegateDirectlyShowsHUD)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained _dismissAccessibilityHUDForGestureManager:self];
  }

  else
  {
    v3 = objc_loadWeakRetained(&self->_viewControllerDisplayingHUD);
    [v3 _dismissAccessibilityHUD];

    objc_storeWeak(&self->_viewControllerDisplayingHUD, 0);
  }
}

- (void)_didToggleLargeContentViewer:(id)viewer
{
  v4 = +[UILargeContentViewerInteraction isEnabled];

  [(UIAccessibilityHUDGestureManager *)self _setRecognizersEnabled:v4];
}

- (id)_bestViewControllerForView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (v5 = objc_loadWeakRetained(&self->_delegate), [v5 _viewControllerForAccessibilityHUDGestureManager:self], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    +[UIAccessibilityHUDView preferredHUDSize];
    v8 = v7;
    v10 = v9;
    v11 = objc_loadWeakRetained(&self->_view);
    _viewControllerForAncestor = [v11 _viewControllerForAncestor];

    v13 = 0;
    if (_viewControllerForAncestor)
    {
      v14 = 3.40282347e38;
      while (1)
      {
        view = [_viewControllerForAncestor view];
        [view frame];
        v17 = v16;
        v19 = v18;

        v20 = v8 - v17 >= v10 - v19 ? v8 - v17 : v10 - v19;
        if (v20 < 0.0)
        {
          break;
        }

        if (v20 < v14)
        {
          v21 = _viewControllerForAncestor;

          v13 = v21;
          v14 = v20;
        }

        view2 = [_viewControllerForAncestor view];
        superview = [view2 superview];
        _viewControllerForAncestor2 = [superview _viewControllerForAncestor];

        _viewControllerForAncestor = _viewControllerForAncestor2;
        if (!_viewControllerForAncestor2)
        {
          goto LABEL_12;
        }
      }

      v25 = _viewControllerForAncestor;
      v26 = v25;
    }

    else
    {
LABEL_12:
      v25 = v13;
      v13 = v25;
      v26 = 0;
    }

    v6 = v25;
  }

  return v6;
}

- (void)_gestureRecognizerChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [changedCopy locationInView:WeakRetained];
  v7 = v6;
  v9 = v8;

  state = [changedCopy state];
  switch(state)
  {
    case 3:
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 _accessibilityHUDGestureManager:self gestureLiftedAtPoint:{v7, v9}];

      break;
    case 2:
      goto LABEL_5;
    case 1:
      [(UIAccessibilityHUDGestureManager *)self performSelector:sel__openGate withObject:0 afterDelay:1.0];
LABEL_5:
      v11 = objc_loadWeakRetained(&self->_delegate);
      v14 = [v11 _accessibilityHUDGestureManager:self HUDItemForPoint:{v7, v9}];

      if (v14)
      {
        [(UIAccessibilityHUDGestureManager *)self _showAccessibilityHUDItem:v14];
      }

      else
      {

        [(UIAccessibilityHUDGestureManager *)self _dismissAccessibilityHUD];
      }

      return;
  }

  [(UIAccessibilityHUDGestureManager *)self _dismissAccessibilityHUD];
  [(UIAccessibilityHUDGestureManager *)self _clearButtonItemGestureSubscriptions];
  [(_UIRelationshipGestureRecognizer *)self->_gateRecognizer _fail];
  v13 = MEMORY[0x1E69E58C0];

  [v13 cancelPreviousPerformRequestsWithTarget:self selector:sel__openGate object:0];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end
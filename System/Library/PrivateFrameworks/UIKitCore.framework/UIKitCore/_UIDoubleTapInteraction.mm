@interface _UIDoubleTapInteraction
- (BOOL)continueProcessingSecondTapAtLocation:(CGPoint)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGPoint)initialTapLocationInView;
- (UIDelayedAction)doubleTapAction;
- (UIView)view;
- (void)_handleTap:(id)a3;
- (void)_invalidateDoubleTap;
- (void)didMoveToView:(id)a3;
- (void)doubleTapOccurredAtLocation:(CGPoint)a3;
- (void)resetState;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIDoubleTapInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)willMoveToView:(id)a3
{
  v4 = [(_UIDoubleTapInteraction *)self tapGesture];
  v5 = [v4 view];
  v6 = [(_UIDoubleTapInteraction *)self tapGesture];
  [v5 removeGestureRecognizer:v6];

  objc_storeWeak(&self->_view, 0);

  [(_UIDoubleTapInteraction *)self setInitialTapLocationInView:1.79769313e308, 1.79769313e308];
}

- (void)didMoveToView:(id)a3
{
  v4 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    if (!self->_tapGesture)
    {
      v5 = [[_UIDoubleTapInteractionGestureRecognizer alloc] initWithTarget:self action:sel__handleTap_];
      tapGesture = self->_tapGesture;
      self->_tapGesture = v5;

      [(UIGestureRecognizer *)self->_tapGesture setDelegate:self];
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained addGestureRecognizer:self->_tapGesture];
  }
}

- (void)_handleTap:(id)a3
{
  v4 = [a3 state];
  if (v4 == 4)
  {

    [(_UIDoubleTapInteraction *)self resetState];
  }

  else if (v4 == 3 && self)
  {
    v5 = [(_UIDoubleTapInteraction *)self tapGesture];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [v5 locationInView:WeakRetained];
    v8 = v7;
    v10 = v9;

    v11 = [(_UIDoubleTapInteraction *)self doubleTapAction];
    LODWORD(WeakRetained) = [v11 scheduled];

    if (WeakRetained)
    {
      [(_UIDoubleTapInteraction *)self initialTapLocationInView];
      if (sqrt((v12 - *&v8) * (v12 - *&v8) + (v13 - *&v10) * (v13 - *&v10)) < 45.0)
      {
        [(_UIDoubleTapInteraction *)self doubleTapOccurredAtLocation:*&v8, *&v10];
      }

      [(_UIDoubleTapInteraction *)self resetState];
    }

    else
    {
      objc_initWeak(&location, self);
      v17 = MEMORY[0x1E69E9820];
      objc_copyWeak(v18, &location);
      v18[1] = v8;
      v18[2] = v10;
      v14 = [(_UIDoubleTapInteraction *)self tapGesture:v17];
      v16 = v14;
      if (v14)
      {
        objc_setProperty_nonatomic_copy(v14, v15, &v17, 320);
      }

      objc_destroyWeak(v18);
      objc_destroyWeak(&location);
    }

    [(_UIDoubleTapInteraction *)self setInitialTapLocationInView:*&v8, *&v10];
  }
}

- (void)_invalidateDoubleTap
{
  doubleTapAction = self->_doubleTapAction;
  self->_doubleTapAction = 0;

  v4 = [(_UIDoubleTapInteraction *)self tapGesture];
  [v4 setEnabled:0];

  v5 = [(_UIDoubleTapInteraction *)self tapGesture];
  [v5 setEnabled:1];

  v6 = [(_UIDoubleTapInteraction *)self didTimeOut];

  if (v6)
  {
    v7 = [(_UIDoubleTapInteraction *)self didTimeOut];
    [(_UIDoubleTapInteraction *)self initialTapLocationInView];
    v7[2](v7);
  }

  [(_UIDoubleTapInteraction *)self setInitialTapLocationInView:1.79769313e308, 1.79769313e308];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4
{
  v5 = [(_UIDoubleTapInteraction *)self doubleTapAction:a3];
  v6 = [v5 scheduled];

  if (self)
  {
    v7 = [(_UIDoubleTapInteraction *)self tapGesture];
    [v7 setCancelsTouchesInView:v6];

    v8 = [(_UIDoubleTapInteraction *)self tapGesture];
    [v8 setDelaysTouchesEnded:v6];
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [v5 locationInView:WeakRetained];
  v8 = v7;
  v10 = v9;

  v11 = [(_UIDoubleTapInteraction *)self doubleTapAction];
  v12 = [v11 scheduled];

  if (v12)
  {
    if (self)
    {
      [(_UIDoubleTapInteraction *)self initialTapLocationInView];
      v15 = sqrt((v13 - v8) * (v13 - v8) + (v14 - v10) * (v14 - v10)) < 45.0;
      goto LABEL_10;
    }

LABEL_6:
    v15 = 0;
    goto LABEL_10;
  }

  [(_UIDoubleTapInteraction *)self heightFromTopToAcceptTouches];
  if (v16 > 0.0 && v10 > v16)
  {
    goto LABEL_6;
  }

  if ([(_UIDoubleTapInteraction *)self ignoresUIControls])
  {
    v17 = [v5 view];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v15 = 1;
  }

LABEL_10:

  return v15 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if ([(_UIDoubleTapInteraction *)self neverRecognizeSimultaneouslyWithOtherGestures:a3])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(_UIDoubleTapInteraction *)self doubleTapAction];
    v5 = [v6 scheduled] ^ 1;
  }

  return v5;
}

- (BOOL)continueProcessingSecondTapAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIDoubleTapInteraction *)self shouldContinueProcessingSecondTap];

  if (!v6)
  {
    return 1;
  }

  v7 = [(_UIDoubleTapInteraction *)self shouldContinueProcessingSecondTap];
  v8 = v7[2](x, y);

  return v8;
}

- (void)doubleTapOccurredAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIDoubleTapInteraction *)self didDoubleTap];

  if (v6)
  {
    v7 = [(_UIDoubleTapInteraction *)self didDoubleTap];
    v7[2](x, y);
  }
}

- (void)resetState
{
  [(UIDelayedAction *)self->_doubleTapAction cancel];
  doubleTapAction = self->_doubleTapAction;
  self->_doubleTapAction = 0;

  tapGesture = self->_tapGesture;
  if (tapGesture)
  {
    objc_setProperty_nonatomic_copy(tapGesture, v4, 0, 320);
  }

  self->_initialTapLocationInView = _UICGPointNull_0;
}

- (UIDelayedAction)doubleTapAction
{
  doubleTapAction = self->_doubleTapAction;
  if (!doubleTapAction)
  {
    v4 = [[UIDelayedAction alloc] initWithTarget:self action:sel__invalidateDoubleTap userInfo:0 delay:0.35];
    v5 = self->_doubleTapAction;
    self->_doubleTapAction = v4;

    [(UIDelayedAction *)self->_doubleTapAction cancel];
    doubleTapAction = self->_doubleTapAction;
  }

  return doubleTapAction;
}

- (CGPoint)initialTapLocationInView
{
  x = self->_initialTapLocationInView.x;
  y = self->_initialTapLocationInView.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
@interface _UIDoubleTapInteraction
- (BOOL)continueProcessingSecondTapAtLocation:(CGPoint)location;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGPoint)initialTapLocationInView;
- (UIDelayedAction)doubleTapAction;
- (UIView)view;
- (void)_handleTap:(id)tap;
- (void)_invalidateDoubleTap;
- (void)didMoveToView:(id)view;
- (void)doubleTapOccurredAtLocation:(CGPoint)location;
- (void)resetState;
- (void)willMoveToView:(id)view;
@end

@implementation _UIDoubleTapInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)willMoveToView:(id)view
{
  tapGesture = [(_UIDoubleTapInteraction *)self tapGesture];
  view = [tapGesture view];
  tapGesture2 = [(_UIDoubleTapInteraction *)self tapGesture];
  [view removeGestureRecognizer:tapGesture2];

  objc_storeWeak(&self->_view, 0);

  [(_UIDoubleTapInteraction *)self setInitialTapLocationInView:1.79769313e308, 1.79769313e308];
}

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
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

- (void)_handleTap:(id)tap
{
  state = [tap state];
  if (state == 4)
  {

    [(_UIDoubleTapInteraction *)self resetState];
  }

  else if (state == 3 && self)
  {
    tapGesture = [(_UIDoubleTapInteraction *)self tapGesture];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [tapGesture locationInView:WeakRetained];
    v8 = v7;
    v10 = v9;

    doubleTapAction = [(_UIDoubleTapInteraction *)self doubleTapAction];
    LODWORD(WeakRetained) = [doubleTapAction scheduled];

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

  tapGesture = [(_UIDoubleTapInteraction *)self tapGesture];
  [tapGesture setEnabled:0];

  tapGesture2 = [(_UIDoubleTapInteraction *)self tapGesture];
  [tapGesture2 setEnabled:1];

  didTimeOut = [(_UIDoubleTapInteraction *)self didTimeOut];

  if (didTimeOut)
  {
    didTimeOut2 = [(_UIDoubleTapInteraction *)self didTimeOut];
    [(_UIDoubleTapInteraction *)self initialTapLocationInView];
    didTimeOut2[2](didTimeOut2);
  }

  [(_UIDoubleTapInteraction *)self setInitialTapLocationInView:1.79769313e308, 1.79769313e308];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event
{
  v5 = [(_UIDoubleTapInteraction *)self doubleTapAction:recognizer];
  scheduled = [v5 scheduled];

  if (self)
  {
    tapGesture = [(_UIDoubleTapInteraction *)self tapGesture];
    [tapGesture setCancelsTouchesInView:scheduled];

    tapGesture2 = [(_UIDoubleTapInteraction *)self tapGesture];
    [tapGesture2 setDelaysTouchesEnded:scheduled];
  }

  return 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [touchCopy locationInView:WeakRetained];
  v8 = v7;
  v10 = v9;

  doubleTapAction = [(_UIDoubleTapInteraction *)self doubleTapAction];
  scheduled = [doubleTapAction scheduled];

  if (scheduled)
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
    view = [touchCopy view];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if ([(_UIDoubleTapInteraction *)self neverRecognizeSimultaneouslyWithOtherGestures:recognizer])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    doubleTapAction = [(_UIDoubleTapInteraction *)self doubleTapAction];
    v5 = [doubleTapAction scheduled] ^ 1;
  }

  return v5;
}

- (BOOL)continueProcessingSecondTapAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  shouldContinueProcessingSecondTap = [(_UIDoubleTapInteraction *)self shouldContinueProcessingSecondTap];

  if (!shouldContinueProcessingSecondTap)
  {
    return 1;
  }

  shouldContinueProcessingSecondTap2 = [(_UIDoubleTapInteraction *)self shouldContinueProcessingSecondTap];
  v8 = shouldContinueProcessingSecondTap2[2](x, y);

  return v8;
}

- (void)doubleTapOccurredAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  didDoubleTap = [(_UIDoubleTapInteraction *)self didDoubleTap];

  if (didDoubleTap)
  {
    didDoubleTap2 = [(_UIDoubleTapInteraction *)self didDoubleTap];
    didDoubleTap2[2](x, y);
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
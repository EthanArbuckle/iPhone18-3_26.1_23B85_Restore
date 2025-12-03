@interface _UITouchDownClickInteractionDriver
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (UIView)view;
- (_UIClickInteractionDriverDelegate)delegate;
- (_UITouchDownClickInteractionDriver)init;
- (void)_handleGestureRecognizer:(id)recognizer;
- (void)cancelInteraction;
- (void)setView:(id)view;
@end

@implementation _UITouchDownClickInteractionDriver

- (_UITouchDownClickInteractionDriver)init
{
  v6.receiver = self;
  v6.super_class = _UITouchDownClickInteractionDriver;
  v2 = [(_UITouchDownClickInteractionDriver *)&v6 init];
  if (v2)
  {
    v3 = [[_UITouchDownGestureRecognizer alloc] initWithTarget:v2 action:sel__handleGestureRecognizer_];
    gesture = v2->_gesture;
    v2->_gesture = v3;

    [(UIGestureRecognizer *)v2->_gesture setDelegate:v2];
  }

  return v2;
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != obj)
  {
    view = [(UIGestureRecognizer *)self->_gesture view];
    [view removeGestureRecognizer:self->_gesture];

    v6 = objc_storeWeak(&self->_view, obj);
    [obj addGestureRecognizer:self->_gesture];
  }
}

- (void)cancelInteraction
{
  [(UIGestureRecognizer *)self->_gesture setEnabled:0];
  gesture = self->_gesture;

  [(UIGestureRecognizer *)gesture setEnabled:1];
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  view = [(_UITouchDownClickInteractionDriver *)self view];
  if (view)
  {
    [(_UITouchDownGestureRecognizer *)self->_gesture locationInView:view];
    [view convertPoint:spaceCopy toCoordinateSpace:?];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_gesture == recognizerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    view = [(UIGestureRecognizer *)recognizerCopy view];
    view2 = [gestureRecognizerCopy view];
    if (view == view2)
    {
      v10 = 1;
    }

    else
    {
      v10 = [view isDescendantOfView:view2];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  if (self->_gesture == recognizer)
  {
    return [gestureRecognizer _isGestureType:3];
  }

  else
  {
    return 0;
  }
}

- (void)_handleGestureRecognizer:(id)recognizer
{
  state = [(UIGestureRecognizer *)self->_gesture state];
  if ((state - 4) >= 2)
  {
    if (state == UIGestureRecognizerStateEnded)
    {
      delegate = [(_UITouchDownClickInteractionDriver *)self delegate];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __63___UITouchDownClickInteractionDriver__handleGestureRecognizer___block_invoke;
      v6[3] = &unk_1E7105EF8;
      v6[4] = self;
      [delegate clickDriver:self shouldBegin:v6];
    }
  }

  else
  {

    [(_UITouchDownClickInteractionDriver *)self cancelInteraction];
  }
}

- (_UIClickInteractionDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end
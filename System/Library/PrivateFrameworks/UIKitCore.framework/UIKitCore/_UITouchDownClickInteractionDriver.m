@interface _UITouchDownClickInteractionDriver
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (UIView)view;
- (_UIClickInteractionDriverDelegate)delegate;
- (_UITouchDownClickInteractionDriver)init;
- (void)_handleGestureRecognizer:(id)a3;
- (void)cancelInteraction;
- (void)setView:(id)a3;
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

- (void)setView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != obj)
  {
    v5 = [(UIGestureRecognizer *)self->_gesture view];
    [v5 removeGestureRecognizer:self->_gesture];

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

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UITouchDownClickInteractionDriver *)self view];
  if (v5)
  {
    [(_UITouchDownGestureRecognizer *)self->_gesture locationInView:v5];
    [v5 convertPoint:v4 toCoordinateSpace:?];
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

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_gesture == v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [(UIGestureRecognizer *)v6 view];
    v9 = [v7 view];
    if (v8 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = [v8 isDescendantOfView:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  if (self->_gesture == a3)
  {
    return [a4 _isGestureType:3];
  }

  else
  {
    return 0;
  }
}

- (void)_handleGestureRecognizer:(id)a3
{
  v4 = [(UIGestureRecognizer *)self->_gesture state];
  if ((v4 - 4) >= 2)
  {
    if (v4 == UIGestureRecognizerStateEnded)
    {
      v5 = [(_UITouchDownClickInteractionDriver *)self delegate];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __63___UITouchDownClickInteractionDriver__handleGestureRecognizer___block_invoke;
      v6[3] = &unk_1E7105EF8;
      v6[4] = self;
      [v5 clickDriver:self shouldBegin:v6];
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
@interface _UIForceClickInteractionDriver
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)hasExceededAllowableMovement;
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (UIView)view;
- (_UIClickInteractionDriverDelegate)delegate;
- (_UIForceClickInteractionDriver)init;
- (double)allowableMovement;
- (double)touchDuration;
- (double)touchForce;
- (unint64_t)inputPrecision;
- (void)_handleGestureRecognizer:(id)a3;
- (void)cancelInteraction;
- (void)setAllowableMovement:(double)a3;
- (void)setView:(id)a3;
@end

@implementation _UIForceClickInteractionDriver

- (_UIForceClickInteractionDriver)init
{
  v5.receiver = self;
  v5.super_class = _UIForceClickInteractionDriver;
  v2 = [(_UIForceClickInteractionDriver *)&v5 init];
  if (v2)
  {
    v3 = [[UITouchForceGestureRecognizer alloc] initWithTarget:v2 action:sel__handleGestureRecognizer_];
    [(UIGestureRecognizer *)v3 setName:@"kUIClickInteractionForceGestureRecognizer"];
    [(UITouchForceGestureRecognizer *)v3 setMaximumNumberOfTouches:1];
    [(UITouchForceGestureRecognizer *)v3 setAutomaticTouchForce:0.0];
    [(UIGestureRecognizer *)v3 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];
    [(UIGestureRecognizer *)v3 setDelegate:v2];
    [(UIGestureRecognizer *)v3 _setKeepTouchesOnContinuation:1];
    [(_UIForceClickInteractionDriver *)v2 setGestureRecognizer:v3];
  }

  return v2;
}

- (double)touchForce
{
  v2 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [v2 touchForce];
  v4 = v3;

  return v4;
}

- (void)setAllowableMovement:(double)a3
{
  v4 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [v4 setAllowableMovement:a3];
}

- (double)allowableMovement
{
  v2 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [v2 allowableMovement];
  v4 = v3;

  return v4;
}

- (double)touchDuration
{
  v2 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [v2 touchDuration];
  v4 = v3;

  return v4;
}

- (BOOL)hasExceededAllowableMovement
{
  v2 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  v3 = [v2 hasExceededAllowableMovement];

  return v3;
}

- (void)setView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
    v7 = [v6 view];
    [v7 removeGestureRecognizer:v6];

    v8 = objc_storeWeak(&self->_view, obj);
    if (obj)
    {
      self->_currentState = 1;
      v9 = objc_loadWeakRetained(&self->_view);
      [v9 addGestureRecognizer:v6];
    }

    v5 = obj;
  }
}

- (void)cancelInteraction
{
  v3 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [v3 setEnabled:0];

  v4 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [v4 setEnabled:1];
}

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UIForceClickInteractionDriver *)self view];
  if (v5)
  {
    v6 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
    [v6 locationInView:v5];
    v8 = v7;
    v10 = v9;

    [v5 convertPoint:v4 toCoordinateSpace:{v8, v10}];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (unint64_t)inputPrecision
{
  v2 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  if (v2)
  {
    v3 = v2[24];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleGestureRecognizer:(id)a3
{
  p_currentState = &self->_currentState;
  currentState = self->_currentState;
  [(_UIForceClickInteractionDriver *)self touchForce];
  v7 = v6;
  v8 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  v9 = [v8 state];

  if ((v9 - 4) < 2)
  {
LABEL_7:
    v11 = self->_currentState;
    v12 = 3;
LABEL_8:
    handleEvent(stateMachineSpec_8, v11, v12, self, p_currentState);
    goto LABEL_9;
  }

  if (v9 == 3)
  {
    if (currentState == 3)
    {
      handleEvent(stateMachineSpec_8, self->_currentState, 2, self, p_currentState);
    }

    goto LABEL_7;
  }

  if (v9 == 1)
  {
    v10 = [(_UIForceClickInteractionDriver *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59___UIForceClickInteractionDriver__handleGestureRecognizer___block_invoke;
    v16[3] = &unk_1E7105EF8;
    v16[4] = self;
    [v10 clickDriver:self shouldBegin:v16];

    goto LABEL_9;
  }

  if (currentState == 3)
  {
    if (v7 <= 2.2)
    {
      v11 = self->_currentState;
      v12 = 2;
      goto LABEL_8;
    }
  }

  else if (currentState == 2 && v7 >= 2.6)
  {
    v11 = self->_currentState;
    v12 = 1;
    goto LABEL_8;
  }

LABEL_9:
  if (*p_currentState == 2)
  {
    v13 = [(_UIForceClickInteractionDriver *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(_UIForceClickInteractionDriver *)self delegate];
      [v15 clickDriver:self didUpdateHighlightProgress:v7 / 2.6 + 0.0];
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];

  if (v8 != v6)
  {
    goto LABEL_2;
  }

  v10 = [v7 name];
  v11 = [v6 name];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = [v6 view];
    v14 = [v7 view];
    if (v13 == v14)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v13 isDescendantOfView:v14];
    }

    goto LABEL_10;
  }

  v15 = [(_UIForceClickInteractionDriver *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v13 = [(_UIForceClickInteractionDriver *)self delegate];
    v9 = [v13 clickDriver:self shouldDelayGestureRecognizer:v7];
LABEL_10:

    goto LABEL_11;
  }

LABEL_2:
  v9 = 0;
LABEL_11:

  return v9;
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
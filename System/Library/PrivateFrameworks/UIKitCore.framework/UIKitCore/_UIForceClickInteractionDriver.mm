@interface _UIForceClickInteractionDriver
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)hasExceededAllowableMovement;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (UIView)view;
- (_UIClickInteractionDriverDelegate)delegate;
- (_UIForceClickInteractionDriver)init;
- (double)allowableMovement;
- (double)touchDuration;
- (double)touchForce;
- (unint64_t)inputPrecision;
- (void)_handleGestureRecognizer:(id)recognizer;
- (void)cancelInteraction;
- (void)setAllowableMovement:(double)movement;
- (void)setView:(id)view;
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
  gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer touchForce];
  v4 = v3;

  return v4;
}

- (void)setAllowableMovement:(double)movement
{
  gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer setAllowableMovement:movement];
}

- (double)allowableMovement
{
  gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer allowableMovement];
  v4 = v3;

  return v4;
}

- (double)touchDuration
{
  gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer touchDuration];
  v4 = v3;

  return v4;
}

- (BOOL)hasExceededAllowableMovement
{
  gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  hasExceededAllowableMovement = [gestureRecognizer hasExceededAllowableMovement];

  return hasExceededAllowableMovement;
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
    view = [gestureRecognizer view];
    [view removeGestureRecognizer:gestureRecognizer];

    v8 = objc_storeWeak(&self->_view, obj);
    if (obj)
    {
      self->_currentState = 1;
      v9 = objc_loadWeakRetained(&self->_view);
      [v9 addGestureRecognizer:gestureRecognizer];
    }

    v5 = obj;
  }
}

- (void)cancelInteraction
{
  gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer setEnabled:0];

  gestureRecognizer2 = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer2 setEnabled:1];
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  view = [(_UIForceClickInteractionDriver *)self view];
  if (view)
  {
    gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
    [gestureRecognizer locationInView:view];
    v8 = v7;
    v10 = v9;

    [view convertPoint:spaceCopy toCoordinateSpace:{v8, v10}];
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
  gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  if (gestureRecognizer)
  {
    v3 = gestureRecognizer[24];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleGestureRecognizer:(id)recognizer
{
  p_currentState = &self->_currentState;
  currentState = self->_currentState;
  [(_UIForceClickInteractionDriver *)self touchForce];
  v7 = v6;
  gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];
  state = [gestureRecognizer state];

  if ((state - 4) < 2)
  {
LABEL_7:
    v11 = self->_currentState;
    v12 = 3;
LABEL_8:
    handleEvent(stateMachineSpec_8, v11, v12, self, p_currentState);
    goto LABEL_9;
  }

  if (state == 3)
  {
    if (currentState == 3)
    {
      handleEvent(stateMachineSpec_8, self->_currentState, 2, self, p_currentState);
    }

    goto LABEL_7;
  }

  if (state == 1)
  {
    delegate = [(_UIForceClickInteractionDriver *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59___UIForceClickInteractionDriver__handleGestureRecognizer___block_invoke;
    v16[3] = &unk_1E7105EF8;
    v16[4] = self;
    [delegate clickDriver:self shouldBegin:v16];

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
    delegate2 = [(_UIForceClickInteractionDriver *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate3 = [(_UIForceClickInteractionDriver *)self delegate];
      [delegate3 clickDriver:self didUpdateHighlightProgress:v7 / 2.6 + 0.0];
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  gestureRecognizer = [(_UIForceClickInteractionDriver *)self gestureRecognizer];

  if (gestureRecognizer != recognizerCopy)
  {
    goto LABEL_2;
  }

  name = [gestureRecognizerCopy name];
  name2 = [recognizerCopy name];
  v12 = [name isEqualToString:name2];

  if (v12)
  {
    view = [recognizerCopy view];
    view2 = [gestureRecognizerCopy view];
    if (view == view2)
    {
      v9 = 1;
    }

    else
    {
      v9 = [view isDescendantOfView:view2];
    }

    goto LABEL_10;
  }

  delegate = [(_UIForceClickInteractionDriver *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    view = [(_UIForceClickInteractionDriver *)self delegate];
    v9 = [view clickDriver:self shouldDelayGestureRecognizer:gestureRecognizerCopy];
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
@interface _UISecondaryClickClickInteractionDriver
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (UIView)view;
- (_UIClickInteractionDriverDelegate)delegate;
- (_UISecondaryClickClickInteractionDriver)init;
- (unint64_t)inputPrecision;
- (void)_attemptSecondaryClick;
- (void)_handleGestureRecognizer:(id)recognizer;
- (void)cancelInteraction;
- (void)setView:(id)view;
@end

@implementation _UISecondaryClickClickInteractionDriver

- (_UISecondaryClickClickInteractionDriver)init
{
  v5.receiver = self;
  v5.super_class = _UISecondaryClickClickInteractionDriver;
  v2 = [(_UISecondaryClickClickInteractionDriver *)&v5 init];
  if (v2)
  {
    v3 = [(UIGestureRecognizer *)[_UISecondaryClickDriverGestureRecognizer alloc] initWithTarget:v2 action:sel__handleGestureRecognizer_];
    [(UIGestureRecognizer *)v3 setDelegate:v2];
    [(_UISecondaryClickClickInteractionDriver *)v2 setGestureRecognizer:v3];
  }

  return v2;
}

- (_UIClickInteractionDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    gestureRecognizer = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
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
  gestureRecognizer = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer setEnabled:0];

  gestureRecognizer2 = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer2 setEnabled:1];
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  view = [(_UISecondaryClickClickInteractionDriver *)self view];
  if (view)
  {
    gestureRecognizer = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
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
  gestureRecognizer = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  gestureRecognizer = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];

  if (gestureRecognizer == recognizerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    view = [recognizerCopy view];
    view2 = [gestureRecognizerCopy view];
    if (view == view2)
    {
      v11 = 1;
    }

    else
    {
      v11 = [view isDescendantOfView:view2];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_handleGestureRecognizer:(id)recognizer
{
  gestureRecognizer = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
  state = [gestureRecognizer state];

  if (state == 1)
  {

    [(_UISecondaryClickClickInteractionDriver *)self _attemptSecondaryClick];
  }

  else if (state == 4)
  {
    currentState = self->_currentState;

    handleEvent(stateMachineSpec_7, currentState, 3, self, &self->_currentState);
  }
}

- (void)_attemptSecondaryClick
{
  delegate = [(_UISecondaryClickClickInteractionDriver *)self delegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65___UISecondaryClickClickInteractionDriver__attemptSecondaryClick__block_invoke;
  v4[3] = &unk_1E7105EF8;
  v4[4] = self;
  [delegate clickDriver:self shouldBegin:v4];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end
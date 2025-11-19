@interface _UISecondaryClickClickInteractionDriver
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (UIView)view;
- (_UIClickInteractionDriverDelegate)delegate;
- (_UISecondaryClickClickInteractionDriver)init;
- (unint64_t)inputPrecision;
- (void)_attemptSecondaryClick;
- (void)_handleGestureRecognizer:(id)a3;
- (void)cancelInteraction;
- (void)setView:(id)a3;
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

- (void)setView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
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
  v3 = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
  [v3 setEnabled:0];

  v4 = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
  [v4 setEnabled:1];
}

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UISecondaryClickClickInteractionDriver *)self view];
  if (v5)
  {
    v6 = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
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
  v2 = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
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

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];

  if (v8 == v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v6 view];
    v10 = [v7 view];
    if (v9 == v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v9 isDescendantOfView:v10];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_handleGestureRecognizer:(id)a3
{
  v4 = [(_UISecondaryClickClickInteractionDriver *)self gestureRecognizer];
  v5 = [v4 state];

  if (v5 == 1)
  {

    [(_UISecondaryClickClickInteractionDriver *)self _attemptSecondaryClick];
  }

  else if (v5 == 4)
  {
    currentState = self->_currentState;

    handleEvent(stateMachineSpec_7, currentState, 3, self, &self->_currentState);
  }
}

- (void)_attemptSecondaryClick
{
  v3 = [(_UISecondaryClickClickInteractionDriver *)self delegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65___UISecondaryClickClickInteractionDriver__attemptSecondaryClick__block_invoke;
  v4[3] = &unk_1E7105EF8;
  v4[4] = self;
  [v3 clickDriver:self shouldBegin:v4];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end
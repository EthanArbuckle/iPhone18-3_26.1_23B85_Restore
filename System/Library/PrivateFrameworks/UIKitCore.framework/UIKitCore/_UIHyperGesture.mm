@interface _UIHyperGesture
- (_UIHyperGesture)init;
- (_UIHyperGesture)initWithInteractor:(id)interactor;
- (_UIHyperGestureDelegate)_delegate;
- (void)_handleGesture:(id)gesture;
@end

@implementation _UIHyperGesture

- (_UIHyperGesture)init
{
  v3 = [[_UIHyperInteractor alloc] initWithDimensions:1];
  v4 = [(_UIHyperGesture *)self initWithInteractor:v3];

  return v4;
}

- (_UIHyperGesture)initWithInteractor:(id)interactor
{
  interactorCopy = interactor;
  v9.receiver = self;
  v9.super_class = _UIHyperGesture;
  v6 = [(_UIHyperGesture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__interactor, interactor);
  }

  return v7;
}

- (void)_handleGesture:(id)gesture
{
  gestureCopy = gesture;
  _delegate = [(_UIHyperGesture *)self _delegate];
  state = [gestureCopy state];

  if ((state - 3) < 2)
  {
    _interactor = [(_UIHyperGesture *)self _interactor];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __34___UIHyperGesture__handleGesture___block_invoke_4;
    v15 = &unk_1E70F35B8;
    v11 = _delegate;
    v16 = v11;
    selfCopy = self;
    [_interactor _interactionEndedMutatingState:&v12];

    if (objc_opt_respondsToSelector())
    {
      [v11 _hyperGestureInteractionDidEnd:{self, v12, v13, v14, v15}];
    }

    v9 = v16;
    goto LABEL_10;
  }

  if (state == 2)
  {
LABEL_6:
    _interactor2 = [(_UIHyperGesture *)self _interactor];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __34___UIHyperGesture__handleGesture___block_invoke;
    v22[3] = &unk_1E70F4AC0;
    v22[4] = self;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __34___UIHyperGesture__handleGesture___block_invoke_2;
    v21[3] = &unk_1E70F4AC0;
    v21[4] = self;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __34___UIHyperGesture__handleGesture___block_invoke_3;
    v18[3] = &unk_1E70F35B8;
    v19 = _delegate;
    selfCopy2 = self;
    [_interactor2 _interactionChangedMutatingTranslation:v22 velocity:v21 mutatingState:v18];

    v9 = v19;
LABEL_10:

    goto LABEL_11;
  }

  if (state == 1)
  {
    _interactor3 = [(_UIHyperGesture *)self _interactor];
    [_interactor3 _interactionBegan];

    if (objc_opt_respondsToSelector())
    {
      [_delegate _hyperGestureInteractionDidBegin:self];
    }

    goto LABEL_6;
  }

LABEL_11:
}

- (_UIHyperGestureDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

@end
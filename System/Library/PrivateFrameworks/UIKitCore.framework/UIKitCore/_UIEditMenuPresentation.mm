@interface _UIEditMenuPresentation
- (CGRect)menuFrameInCoordinateSpace:(id)a3;
- (UIView)sourceView;
- (_UIEditMenuPresentation)initWithDelegate:(id)a3 sourceView:(id)a4;
- (_UIEditMenuPresentationDelegate)delegate;
- (int64_t)resolvedUserInterfaceStyle;
- (void)completeHandoff;
- (void)didTransitionFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)forceEndDismissalIfNeeded;
- (void)forceEndPresentIfNeeded;
@end

@implementation _UIEditMenuPresentation

- (_UIEditMenuPresentation)initWithDelegate:(id)a3 sourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UIEditMenuPresentation;
  v8 = [(_UIEditMenuPresentation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeWeak(&v9->_sourceView, v7);
    v9->_currentState = 1;
  }

  return v9;
}

- (CGRect)menuFrameInCoordinateSpace:(id)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (int64_t)resolvedUserInterfaceStyle
{
  v3 = [(_UIEditMenuPresentation *)self sourceView];
  v4 = [v3 traitCollection];
  v5 = _UIEditMenuGetPlatformMetrics([v4 userInterfaceIdiom]);

  if ([v5 overrideUserInterfaceStyle])
  {
    v6 = [v5 overrideUserInterfaceStyle];
  }

  else if (dyld_program_sdk_at_least())
  {
    v7 = [(_UIEditMenuPresentation *)self sourceView];
    v8 = [v7 traitCollection];
    v6 = [v8 userInterfaceStyle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)forceEndPresentIfNeeded
{
  if (self->_currentState == 2 && [(_UIEditMenuPresentation *)self enforcesMenuControllerLifecycle])
  {

    [(_UIEditMenuPresentation *)self transitionWithEvent:1];
  }
}

- (void)forceEndDismissalIfNeeded
{
  if (self->_currentState == 4 && [(_UIEditMenuPresentation *)self enforcesMenuControllerLifecycle])
  {

    [(_UIEditMenuPresentation *)self transitionWithEvent:3];
  }
}

- (void)completeHandoff
{
  if (self->_currentState == 7)
  {
    [(_UIEditMenuPresentation *)self hideMenuWithReason:5];
  }
}

- (void)didTransitionFrom:(unint64_t)a3 to:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        return;
      }

      if (a3 != 6)
      {
        v14 = [(_UIEditMenuPresentation *)self presentAnimator];
        [v14 runCompletions];

        [(_UIEditMenuPresentation *)self setPresentAnimator:0];
        return;
      }

      v15 = [(_UIEditMenuPresentation *)self delegate];
      v6 = [(_UIEditMenuPresentation *)self activeConfiguration];
      [v15 _editMenuPresentation:self didTransitionMenuForConfiguration:v6];
LABEL_23:

LABEL_24:

      return;
    }

    v12 = objc_opt_new();
    [(_UIEditMenuPresentation *)self setPresentAnimator:v12];

    v15 = [(_UIEditMenuPresentation *)self delegate];
    v6 = [(_UIEditMenuPresentation *)self activeConfiguration];
    v13 = [(_UIEditMenuPresentation *)self presentAnimator];
    [v15 _editMenuPresentation:self willPresentMenuForConfiguration:v6 animator:v13];
LABEL_22:

    goto LABEL_23;
  }

  if (a4 == 4)
  {
    v7 = objc_opt_new();
    [(_UIEditMenuPresentation *)self setDismissAnimator:v7];

    v8 = [(_UIEditMenuPresentation *)self dismissingConfiguration];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(_UIEditMenuPresentation *)self activeConfiguration];
    }

    v15 = v10;

    v6 = [(_UIEditMenuPresentation *)self delegate];
    v13 = [(_UIEditMenuPresentation *)self dismissAnimator];
    [v6 _editMenuPresentation:self willDismissMenuForConfiguration:v15 animator:v13];
    goto LABEL_22;
  }

  if (a4 != 5)
  {
    if (a4 != 8)
    {
      return;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIEditMenuPresentation.m" lineNumber:324 description:@"We should never reach this state."];
    goto LABEL_24;
  }

  v11 = [(_UIEditMenuPresentation *)self dismissAnimator];
  [v11 runCompletions];

  [(_UIEditMenuPresentation *)self setDismissAnimator:0];
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (_UIEditMenuPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
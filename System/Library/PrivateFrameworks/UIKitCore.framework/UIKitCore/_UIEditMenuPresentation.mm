@interface _UIEditMenuPresentation
- (CGRect)menuFrameInCoordinateSpace:(id)space;
- (UIView)sourceView;
- (_UIEditMenuPresentation)initWithDelegate:(id)delegate sourceView:(id)view;
- (_UIEditMenuPresentationDelegate)delegate;
- (int64_t)resolvedUserInterfaceStyle;
- (void)completeHandoff;
- (void)didTransitionFrom:(unint64_t)from to:(unint64_t)to;
- (void)forceEndDismissalIfNeeded;
- (void)forceEndPresentIfNeeded;
@end

@implementation _UIEditMenuPresentation

- (_UIEditMenuPresentation)initWithDelegate:(id)delegate sourceView:(id)view
{
  delegateCopy = delegate;
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = _UIEditMenuPresentation;
  v8 = [(_UIEditMenuPresentation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeWeak(&v9->_sourceView, viewCopy);
    v9->_currentState = 1;
  }

  return v9;
}

- (CGRect)menuFrameInCoordinateSpace:(id)space
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
  sourceView = [(_UIEditMenuPresentation *)self sourceView];
  traitCollection = [sourceView traitCollection];
  v5 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  if ([v5 overrideUserInterfaceStyle])
  {
    overrideUserInterfaceStyle = [v5 overrideUserInterfaceStyle];
  }

  else if (dyld_program_sdk_at_least())
  {
    sourceView2 = [(_UIEditMenuPresentation *)self sourceView];
    traitCollection2 = [sourceView2 traitCollection];
    overrideUserInterfaceStyle = [traitCollection2 userInterfaceStyle];
  }

  else
  {
    overrideUserInterfaceStyle = 0;
  }

  return overrideUserInterfaceStyle;
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

- (void)didTransitionFrom:(unint64_t)from to:(unint64_t)to
{
  if (to <= 3)
  {
    if (to != 2)
    {
      if (to != 3)
      {
        return;
      }

      if (from != 6)
      {
        presentAnimator = [(_UIEditMenuPresentation *)self presentAnimator];
        [presentAnimator runCompletions];

        [(_UIEditMenuPresentation *)self setPresentAnimator:0];
        return;
      }

      delegate = [(_UIEditMenuPresentation *)self delegate];
      activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
      [delegate _editMenuPresentation:self didTransitionMenuForConfiguration:activeConfiguration];
LABEL_23:

LABEL_24:

      return;
    }

    v12 = objc_opt_new();
    [(_UIEditMenuPresentation *)self setPresentAnimator:v12];

    delegate = [(_UIEditMenuPresentation *)self delegate];
    activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
    presentAnimator2 = [(_UIEditMenuPresentation *)self presentAnimator];
    [delegate _editMenuPresentation:self willPresentMenuForConfiguration:activeConfiguration animator:presentAnimator2];
LABEL_22:

    goto LABEL_23;
  }

  if (to == 4)
  {
    v7 = objc_opt_new();
    [(_UIEditMenuPresentation *)self setDismissAnimator:v7];

    dismissingConfiguration = [(_UIEditMenuPresentation *)self dismissingConfiguration];
    v9 = dismissingConfiguration;
    if (dismissingConfiguration)
    {
      activeConfiguration2 = dismissingConfiguration;
    }

    else
    {
      activeConfiguration2 = [(_UIEditMenuPresentation *)self activeConfiguration];
    }

    delegate = activeConfiguration2;

    activeConfiguration = [(_UIEditMenuPresentation *)self delegate];
    presentAnimator2 = [(_UIEditMenuPresentation *)self dismissAnimator];
    [activeConfiguration _editMenuPresentation:self willDismissMenuForConfiguration:delegate animator:presentAnimator2];
    goto LABEL_22;
  }

  if (to != 5)
  {
    if (to != 8)
    {
      return;
    }

    delegate = [MEMORY[0x1E696AAA8] currentHandler];
    [delegate handleFailureInMethod:a2 object:self file:@"_UIEditMenuPresentation.m" lineNumber:324 description:@"We should never reach this state."];
    goto LABEL_24;
  }

  dismissAnimator = [(_UIEditMenuPresentation *)self dismissAnimator];
  [dismissAnimator runCompletions];

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
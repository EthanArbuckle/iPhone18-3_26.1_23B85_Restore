@interface _UIPopoverDimmingView
- (BOOL)_delegateAllowsInteraction;
- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (BOOL)passthroughScrollInteractionDidRecognize:(id)a3 atLocation:(CGPoint)a4;
- (UIView)transitionContainerView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_sendDelegateDimmingViewWasTapped;
- (void)_updatePassthroughInteraction;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIPopoverDimmingView

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _UIPopoverDimmingView;
  [(UIView *)&v7 didMoveToWindow];
  if (dyld_program_sdk_at_least())
  {
    v3 = [(UIView *)self window];

    if (v3)
    {
      passthroughScrollInteraction = self->_passthroughScrollInteraction;
      if (!passthroughScrollInteraction)
      {
        v5 = objc_alloc_init(_UIPassthroughScrollInteraction);
        v6 = self->_passthroughScrollInteraction;
        self->_passthroughScrollInteraction = v5;

        [(_UIPassthroughScrollInteraction *)self->_passthroughScrollInteraction setDelegate:self];
        [(_UIPopoverDimmingView *)self _updatePassthroughInteraction];
        passthroughScrollInteraction = self->_passthroughScrollInteraction;
      }

      [(UIView *)self addInteraction:passthroughScrollInteraction];
    }
  }
}

- (void)_updatePassthroughInteraction
{
  [(_UIPassthroughScrollInteraction *)self->_passthroughScrollInteraction setEatsTouches:[(_UIPopoverDimmingView *)self passThroughDismissalTaps]^ 1];
  v3 = [(_UIPopoverDimmingView *)self passThroughDismissalTaps];
  passthroughScrollInteraction = self->_passthroughScrollInteraction;

  [(_UIPassthroughScrollInteraction *)passthroughScrollInteraction setRecognizeOnPrimaryButtonDown:v3];
}

- (void)willMoveToWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIPopoverDimmingView;
  [(UIDimmingView *)&v4 willMoveToWindow:a3];
  if (dyld_program_sdk_at_least())
  {
    if (self->_passthroughScrollInteraction)
    {
      [(UIView *)self removeInteraction:?];
    }
  }
}

- (BOOL)_delegateAllowsInteraction
{
  v3 = [(UIDimmingView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(UIDimmingView *)self delegate];
  v6 = [v5 popoverDimmingViewShouldAllowInteraction:self];

  return v6;
}

- (void)_sendDelegateDimmingViewWasTapped
{
  v3 = [(UIDimmingView *)self delegate];
  [v3 popoverDimmingViewDidReceiveDismissalInteraction:self atLocation:{1.79769313e308, 1.79769313e308}];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  self->_lastHitTestWasPassedThrough = 0;
  v11.receiver = self;
  v11.super_class = _UIPopoverDimmingView;
  v8 = [(UIDimmingView *)&v11 hitTest:v7 withEvent:x, y];
  if ((dyld_program_sdk_at_least() & 1) != 0 && v8 == self && ![(UIDimmingView *)self ignoresTouches]&& [_UIPassthroughScrollInteraction _shouldEventBePassedThrough:v7]&& [(_UIPopoverDimmingView *)self _delegateAllowsInteraction])
  {
    v9 = 0;
    self->_lastHitTestWasPassedThrough = 1;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  self->_lastHitTestWasPassedThrough = 0;
  v9 = a5;
  v10 = [a3 view];
  v11 = [(UIView *)self window];
  [v10 convertPoint:v11 toView:{x, y}];
  v13 = v12;
  v15 = v14;

  v16 = [(UIView *)self window];
  v17 = [v16 hitTest:v9 withEvent:{v13, v15}];

  v18 = [(UIView *)self traitCollection];
  v19 = [v18 userInterfaceIdiom];

  v20 = v19 == 6 && !v17 || self->_lastHitTestWasPassedThrough;
  return v20;
}

- (BOOL)passthroughScrollInteractionDidRecognize:(id)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = self;
  v7 = [(UIDimmingView *)self delegate];
  LOBYTE(v6) = [v7 popoverDimmingViewDidReceiveDismissalInteraction:v6 atLocation:{x, y}];

  return v6;
}

- (UIView)transitionContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContainerView);

  return WeakRetained;
}

@end
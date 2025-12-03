@interface _UIPopoverDimmingView
- (BOOL)_delegateAllowsInteraction;
- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (BOOL)passthroughScrollInteractionDidRecognize:(id)recognize atLocation:(CGPoint)location;
- (UIView)transitionContainerView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_sendDelegateDimmingViewWasTapped;
- (void)_updatePassthroughInteraction;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIPopoverDimmingView

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = _UIPopoverDimmingView;
  [(UIView *)&v7 didMoveToWindow];
  if (dyld_program_sdk_at_least())
  {
    window = [(UIView *)self window];

    if (window)
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
  passThroughDismissalTaps = [(_UIPopoverDimmingView *)self passThroughDismissalTaps];
  passthroughScrollInteraction = self->_passthroughScrollInteraction;

  [(_UIPassthroughScrollInteraction *)passthroughScrollInteraction setRecognizeOnPrimaryButtonDown:passThroughDismissalTaps];
}

- (void)willMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = _UIPopoverDimmingView;
  [(UIDimmingView *)&v4 willMoveToWindow:window];
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
  delegate = [(UIDimmingView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(UIDimmingView *)self delegate];
  v6 = [delegate2 popoverDimmingViewShouldAllowInteraction:self];

  return v6;
}

- (void)_sendDelegateDimmingViewWasTapped
{
  delegate = [(UIDimmingView *)self delegate];
  [delegate popoverDimmingViewDidReceiveDismissalInteraction:self atLocation:{1.79769313e308, 1.79769313e308}];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  self->_lastHitTestWasPassedThrough = 0;
  v11.receiver = self;
  v11.super_class = _UIPopoverDimmingView;
  v8 = [(UIDimmingView *)&v11 hitTest:eventCopy withEvent:x, y];
  if ((dyld_program_sdk_at_least() & 1) != 0 && v8 == self && ![(UIDimmingView *)self ignoresTouches]&& [_UIPassthroughScrollInteraction _shouldEventBePassedThrough:eventCopy]&& [(_UIPopoverDimmingView *)self _delegateAllowsInteraction])
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

- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  self->_lastHitTestWasPassedThrough = 0;
  eventCopy = event;
  view = [interaction view];
  window = [(UIView *)self window];
  [view convertPoint:window toView:{x, y}];
  v13 = v12;
  v15 = v14;

  window2 = [(UIView *)self window];
  v17 = [window2 hitTest:eventCopy withEvent:{v13, v15}];

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v20 = userInterfaceIdiom == 6 && !v17 || self->_lastHitTestWasPassedThrough;
  return v20;
}

- (BOOL)passthroughScrollInteractionDidRecognize:(id)recognize atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  selfCopy = self;
  delegate = [(UIDimmingView *)self delegate];
  LOBYTE(selfCopy) = [delegate popoverDimmingViewDidReceiveDismissalInteraction:selfCopy atLocation:{x, y}];

  return selfCopy;
}

- (UIView)transitionContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContainerView);

  return WeakRetained;
}

@end
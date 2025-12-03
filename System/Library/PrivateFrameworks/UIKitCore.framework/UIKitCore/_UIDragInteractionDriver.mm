@interface _UIDragInteractionDriver
- (CGPoint)initialLocationInWindow;
- (UIView)view;
- (_UIDragInteractionDriver)init;
- (_UIDragInteractionDriverDelegate)delegate;
- (unint64_t)_state;
- (void)_handleEvent:(unint64_t)event;
- (void)cancel;
- (void)didTransitionToCancelState;
- (void)didTransitionToInflightState;
- (void)didTransitionToPreparing;
- (void)setInitialLocationInWindow:(CGPoint)window;
- (void)setView:(id)view;
@end

@implementation _UIDragInteractionDriver

- (_UIDragInteractionDriver)init
{
  v3.receiver = self;
  v3.super_class = _UIDragInteractionDriver;
  result = [(_UIDragInteractionDriver *)&v3 init];
  if (result)
  {
    result->_stateMachine.state = 1;
    result->_stateMachine.eventsQueueEnd = 0;
  }

  return result;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)cancel
{
  if (self)
  {
    _UIDragInteractionDriverStateMachineHandleEvent(&self->_stateMachine, self, 5);
  }
}

- (_UIDragInteractionDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_view);

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_view);
      [(_UIDragInteractionDriver *)self detachFromView:v6];
    }

    v7 = objc_storeWeak(&self->_view, obj);

    if (obj)
    {
      v8 = objc_loadWeakRetained(&self->_view);
      [(_UIDragInteractionDriver *)self attachToView:v8];
    }
  }
}

- (void)didTransitionToPreparing
{
  delegate = [(_UIDragInteractionDriver *)self delegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52___UIDragInteractionDriver_didTransitionToPreparing__block_invoke;
  v4[3] = &unk_1E70F5AC0;
  v4[4] = self;
  [delegate dragDriver:self prepareToLiftWithCompletion:v4];
}

- (void)didTransitionToInflightState
{
  delegate = [(_UIDragInteractionDriver *)self delegate];
  v4 = [delegate dragDriverBeginLift:self];

  if ((v4 & 1) == 0)
  {

    [(_UIDragInteractionDriver *)self cancel];
  }
}

- (void)didTransitionToCancelState
{
  delegate = [(_UIDragInteractionDriver *)self delegate];
  [delegate dragDriverCancelLift:self];

  delegate2 = [(_UIDragInteractionDriver *)self delegate];
  [delegate2 dragDriverCancelAddItemsGesture:self];

  if (self)
  {

    _UIDragInteractionDriverStateMachineHandleEvent(&self->_stateMachine, self, 7);
  }
}

- (CGPoint)initialLocationInWindow
{
  x = self->_initialLocationInWindow.x;
  y = self->_initialLocationInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setInitialLocationInWindow:(CGPoint)window
{
  self->_initialLocationInWindow.x = window.x;
  self->_initialLocationInWindow.y = window.y;
  self->_initialLocationInWindow.z = 0.0;
}

- (unint64_t)_state
{
  if (self)
  {
    return *(self + 8);
  }

  return self;
}

- (void)_handleEvent:(unint64_t)event
{
  if (self)
  {
    _UIDragInteractionDriverStateMachineHandleEvent(&self->_stateMachine, self, event);
  }
}

@end
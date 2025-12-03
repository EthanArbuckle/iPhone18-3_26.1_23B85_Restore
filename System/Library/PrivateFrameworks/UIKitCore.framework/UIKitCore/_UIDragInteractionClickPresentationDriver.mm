@interface _UIDragInteractionClickPresentationDriver
- (BOOL)canBeginLiftAtLocation:(CGPoint)location;
- (BOOL)isLifted;
- (void)_performDelayedLift;
- (void)beginDragWithTouches:(id)touches itemIterator:(id)iterator beginningSessionHandler:(id)handler;
- (void)beginLiftAtLocation:(CGPoint)location useDefaultLiftAnimation:(BOOL)animation delay:(double)delay completion:(id)completion;
- (void)cancel;
- (void)didTransitionToBeginState;
- (void)didTransitionToInactiveState;
- (void)didTransitionToInflightState;
@end

@implementation _UIDragInteractionClickPresentationDriver

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = _UIDragInteractionClickPresentationDriver;
  [(_UIDragInteractionDriver *)&v4 cancel];
  [(UIDelayedAction *)self->_delayedLift cancel];
  delayedLift = self->_delayedLift;
  self->_delayedLift = 0;
}

- (BOOL)canBeginLiftAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  isEnabled = [(_UIDragInteractionDriver *)self isEnabled];
  if (isEnabled)
  {
    delegate = [(_UIDragInteractionDriver *)self delegate];
    v8 = [delegate dragDriver:self shouldBeginAtLocation:{x, y}];

    LOBYTE(isEnabled) = v8;
  }

  return isEnabled;
}

- (BOOL)isLifted
{
  if (self)
  {
    LOBYTE(self) = self->super._stateMachine.state == 4;
  }

  return self;
}

- (void)beginLiftAtLocation:(CGPoint)location useDefaultLiftAnimation:(BOOL)animation delay:(double)delay completion:(id)completion
{
  animationCopy = animation;
  y = location.y;
  x = location.x;
  completionCopy = completion;
  [(_UIDragInteractionDriver *)self setShouldAnimateLift:animationCopy];
  [(_UIDragInteractionDriver *)self setInitialLocationInWindow:x, y];
  v12 = _Block_copy(completionCopy);

  liftCompletion = self->_liftCompletion;
  self->_liftCompletion = v12;

  if (delay <= 0.0)
  {

    _UIDragInteractionDriverStateMachineHandleEvent(&self->super._stateMachine, self, 0);
  }

  else
  {
    v14 = [[UIDelayedAction alloc] initWithTarget:self action:sel__performDelayedLift userInfo:0 delay:delay];
    delayedLift = self->_delayedLift;
    self->_delayedLift = v14;
  }
}

- (void)beginDragWithTouches:(id)touches itemIterator:(id)iterator beginningSessionHandler:(id)handler
{
  touchesCopy = touches;
  aBlock = iterator;
  handlerCopy = handler;
  if (!touchesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDragInteractionClickPresentationDriver.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"touches"}];
  }

  touches = self->_touches;
  self->_touches = touchesCopy;
  v12 = touchesCopy;

  v13 = _Block_copy(aBlock);
  itemIterator = self->_itemIterator;
  self->_itemIterator = v13;

  v15 = _Block_copy(handlerCopy);
  sessionHandler = self->_sessionHandler;
  self->_sessionHandler = v15;

  _UIDragInteractionDriverStateMachineHandleEvent(&self->super._stateMachine, self, 3);
}

- (void)_performDelayedLift
{
  delayedLift = self->_delayedLift;
  self->_delayedLift = 0;

  _UIDragInteractionDriverStateMachineHandleEvent(&self->super._stateMachine, self, 0);
}

- (void)didTransitionToBeginState
{
  v7.receiver = self;
  v7.super_class = _UIDragInteractionClickPresentationDriver;
  [(_UIDragInteractionDriver *)&v7 didTransitionToBeginState];
  delegate = [(_UIDragInteractionDriver *)self delegate];
  [delegate dragDriver:self beginDragWithTouches:self->_touches itemUpdater:self->_itemIterator beginningSessionHandler:self->_sessionHandler];

  anyObject = [(NSSet *)self->_touches anyObject];
  window = [anyObject window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    [UIApp _cancelAllEventsOfType:0 onEventRoutingScene:windowScene];
  }

  _UIDragInteractionDriverStateMachineHandleEvent(&self->super._stateMachine, self, 4);
}

- (void)didTransitionToInactiveState
{
  v7.receiver = self;
  v7.super_class = _UIDragInteractionClickPresentationDriver;
  [(_UIDragInteractionDriver *)&v7 didTransitionToInactiveState];
  touches = self->_touches;
  self->_touches = 0;

  itemIterator = self->_itemIterator;
  self->_itemIterator = 0;

  sessionHandler = self->_sessionHandler;
  self->_sessionHandler = 0;

  liftCompletion = self->_liftCompletion;
  self->_liftCompletion = 0;
}

- (void)didTransitionToInflightState
{
  delegate = [(_UIDragInteractionDriver *)self delegate];
  v4 = [delegate dragDriverBeginLift:self];

  if ((v4 & 1) == 0)
  {
    [(_UIDragInteractionClickPresentationDriver *)self cancel];
  }

  liftCompletion = self->_liftCompletion;
  if (liftCompletion)
  {
    liftCompletion[2](liftCompletion, v4);
    v6 = self->_liftCompletion;
    self->_liftCompletion = 0;
  }
}

@end
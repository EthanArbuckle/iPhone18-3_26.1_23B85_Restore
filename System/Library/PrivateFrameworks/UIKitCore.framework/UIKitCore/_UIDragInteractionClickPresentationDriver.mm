@interface _UIDragInteractionClickPresentationDriver
- (BOOL)canBeginLiftAtLocation:(CGPoint)a3;
- (BOOL)isLifted;
- (void)_performDelayedLift;
- (void)beginDragWithTouches:(id)a3 itemIterator:(id)a4 beginningSessionHandler:(id)a5;
- (void)beginLiftAtLocation:(CGPoint)a3 useDefaultLiftAnimation:(BOOL)a4 delay:(double)a5 completion:(id)a6;
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

- (BOOL)canBeginLiftAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIDragInteractionDriver *)self isEnabled];
  if (v6)
  {
    v7 = [(_UIDragInteractionDriver *)self delegate];
    v8 = [v7 dragDriver:self shouldBeginAtLocation:{x, y}];

    LOBYTE(v6) = v8;
  }

  return v6;
}

- (BOOL)isLifted
{
  if (self)
  {
    LOBYTE(self) = self->super._stateMachine.state == 4;
  }

  return self;
}

- (void)beginLiftAtLocation:(CGPoint)a3 useDefaultLiftAnimation:(BOOL)a4 delay:(double)a5 completion:(id)a6
{
  v7 = a4;
  y = a3.y;
  x = a3.x;
  v11 = a6;
  [(_UIDragInteractionDriver *)self setShouldAnimateLift:v7];
  [(_UIDragInteractionDriver *)self setInitialLocationInWindow:x, y];
  v12 = _Block_copy(v11);

  liftCompletion = self->_liftCompletion;
  self->_liftCompletion = v12;

  if (a5 <= 0.0)
  {

    _UIDragInteractionDriverStateMachineHandleEvent(&self->super._stateMachine, self, 0);
  }

  else
  {
    v14 = [[UIDelayedAction alloc] initWithTarget:self action:sel__performDelayedLift userInfo:0 delay:a5];
    delayedLift = self->_delayedLift;
    self->_delayedLift = v14;
  }
}

- (void)beginDragWithTouches:(id)a3 itemIterator:(id)a4 beginningSessionHandler:(id)a5
{
  v9 = a3;
  aBlock = a4;
  v10 = a5;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UIDragInteractionClickPresentationDriver.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"touches"}];
  }

  touches = self->_touches;
  self->_touches = v9;
  v12 = v9;

  v13 = _Block_copy(aBlock);
  itemIterator = self->_itemIterator;
  self->_itemIterator = v13;

  v15 = _Block_copy(v10);
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
  v3 = [(_UIDragInteractionDriver *)self delegate];
  [v3 dragDriver:self beginDragWithTouches:self->_touches itemUpdater:self->_itemIterator beginningSessionHandler:self->_sessionHandler];

  v4 = [(NSSet *)self->_touches anyObject];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  if (v6)
  {
    [UIApp _cancelAllEventsOfType:0 onEventRoutingScene:v6];
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
  v3 = [(_UIDragInteractionDriver *)self delegate];
  v4 = [v3 dragDriverBeginLift:self];

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
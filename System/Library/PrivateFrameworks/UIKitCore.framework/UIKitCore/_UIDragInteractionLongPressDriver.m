@interface _UIDragInteractionLongPressDriver
- (BOOL)_wantsTimeDelayedFailureRequirementGate;
- (BOOL)canExcludeCompetingGestureRecognizer:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasExceededAllowableMovement;
- (BOOL)hasMoveHysteresisBeenReached;
- (BOOL)shouldDelayCompetingGestureRecognizer:(id)a3;
- (_UIDragInteractionLongPressDriver)initWithBehavior:(unint64_t)a3;
- (double)translationInWindow;
- (void)_dragInitiationGestureStateChanged:(id)a3;
- (void)_gateCompetingGestureRecognizers;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_updateLiftMoveHysteresisInDragInitiationGesture;
- (void)attachToView:(id)a3;
- (void)detachFromView:(id)a3;
- (void)didTransitionToBeginState;
- (void)didTransitionToCancelState;
- (void)didTransitionToDeferred;
- (void)didTransitionToInactiveState;
- (void)didTransitionToInflightState;
- (void)didTransitionToPreparing;
- (void)dragInitiationGestureStateChanged:(id)a3;
- (void)invalidateCancellationTimer;
- (void)invalidateCompetingGestureRecognizerGateTimer;
- (void)openCompetingGestureRecognizerGateCancelingGestures:(id)a3;
- (void)openGateCancelingAddItemsGestures;
- (void)reset;
- (void)setAllowedTouchTypes:(id)a3;
- (void)setAutomaticallyAddsFailureRelationships:(BOOL)a3;
- (void)setLiftDelay:(double)a3;
- (void)setLiftMoveHysteresis:(double)a3;
@end

@implementation _UIDragInteractionLongPressDriver

- (void)_updateLiftMoveHysteresisInDragInitiationGesture
{
  behavior = self->_behavior;
  [(_UIDragInteractionDriver *)self liftMoveHysteresis];
  gestureRecognizerForDragInitiation = self->_gestureRecognizerForDragInitiation;
  if (behavior == 1)
  {
    [(_UIDragLiftGestureRecognizer *)gestureRecognizerForDragInitiation setLiftMoveHysteresis:?];
    [(UILongPressGestureRecognizer *)self->_gestureRecognizerForDragInitiation setAllowableMovement:1.79769313e308];
    v5 = self->_gestureRecognizerForDragInitiation;

    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
  }

  else
  {

    [(UILongPressGestureRecognizer *)gestureRecognizerForDragInitiation setAllowableMovement:?];
  }
}

- (void)didTransitionToInactiveState
{
  v3.receiver = self;
  v3.super_class = _UIDragInteractionLongPressDriver;
  [(_UIDragInteractionDriver *)&v3 didTransitionToInactiveState];
  [(_UIDragInteractionLongPressDriver *)self reset];
}

- (void)reset
{
  [(_UIDragInteractionLongPressDriver *)self invalidateCompetingGestureRecognizerGateTimer];
  [(_UIDragInteractionLongPressDriver *)self invalidateCancellationTimer];
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);

  [(_UIDragInteractionDriver *)self setInitialLocationInWindow:v3, v4];
}

- (void)invalidateCompetingGestureRecognizerGateTimer
{
  [(UIDelayedAction *)self->_gateTimer cancel];
  gateTimer = self->_gateTimer;
  self->_gateTimer = 0;
}

- (void)invalidateCancellationTimer
{
  [(UIDelayedAction *)self->_cancellationTimer cancel];
  cancellationTimer = self->_cancellationTimer;
  self->_cancellationTimer = 0;
}

- (_UIDragInteractionLongPressDriver)initWithBehavior:(unint64_t)a3
{
  v19.receiver = self;
  v19.super_class = _UIDragInteractionLongPressDriver;
  v4 = [(_UIDragInteractionDriver *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_behavior = a3;
    [(_UIDragInteractionDriver *)v4 setShouldAnimateLift:1];
    [(_UIDragInteractionDriver *)v5 setCompetingLongPressDelay:_UIDragInteractionDefaultCompetingLongPressDelay()];
    [(_UIDragInteractionDriver *)v5 setCancellationDelay:_UIDragInteractionDefaultCancellationDelay()];
    if (v5->_behavior - 1 > 1)
    {
      [(_UIDragInteractionLongPressDriver *)v5 setLiftMoveHysteresis:_UIDragInteractionDefaultLiftMoveHysteresis()];
      v6 = _UIDragInteractionDefaultLiftDelay();
    }

    else
    {
      [(_UIDragInteractionLongPressDriver *)v5 setLiftMoveHysteresis:_UIDragInteractionDefaultPointerLiftMoveHysteresis()];
      v6 = _UIDragInteractionDefaultPointerLiftDelay();
    }

    [(_UIDragInteractionLongPressDriver *)v5 setLiftDelay:v6];
    v7 = objc_opt_class();
    behavior = v5->_behavior;
    if (behavior == 1 || behavior == 2)
    {
      v7 = objc_opt_class();
    }

    v9 = [[v7 alloc] initWithTarget:v5 action:sel_dragInitiationGestureStateChanged_];
    v10 = _UIDragGestureResolvedName(@"dragInitiation");
    [(UIGestureRecognizer *)v9 setName:v10];

    [(UIGestureRecognizer *)v9 setDelegate:v5];
    [(_UIDragInteractionDriver *)v5 liftDelay];
    [(UILongPressGestureRecognizer *)v9 setMinimumPressDuration:?];
    [(UIGestureRecognizer *)v9 setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v9 setNumberOfTouchesRequired:1];
    gestureRecognizerForDragInitiation = v5->_gestureRecognizerForDragInitiation;
    v5->_gestureRecognizerForDragInitiation = v9;

    [(_UIDragInteractionLongPressDriver *)v5 _updateLiftMoveHysteresisInDragInitiationGesture];
    v12 = objc_opt_new();
    v13 = _UIDragGestureResolvedName(@"dragFailureRelationships");
    [(UIGestureRecognizer *)v12 setName:v13];

    [(UIGestureRecognizer *)v12 setDelegate:v5];
    gestureRecognizerForFailureRelationship = v5->_gestureRecognizerForFailureRelationship;
    v5->_gestureRecognizerForFailureRelationship = v12;

    v15 = objc_opt_new();
    v16 = _UIDragGestureResolvedName(@"dragExclusionRelationships");
    [(UIGestureRecognizer *)v15 setName:v16];

    [(UIGestureRecognizer *)v15 setDelegate:v5];
    gestureRecognizerForExclusionRelationship = v5->_gestureRecognizerForExclusionRelationship;
    v5->_gestureRecognizerForExclusionRelationship = v15;
  }

  return v5;
}

- (void)attachToView:(id)a3
{
  gestureRecognizerForDragInitiation = self->_gestureRecognizerForDragInitiation;
  v5 = a3;
  [v5 addGestureRecognizer:gestureRecognizerForDragInitiation];
  [v5 addGestureRecognizer:self->_gestureRecognizerForExclusionRelationship];
  [v5 addGestureRecognizer:self->_gestureRecognizerForFailureRelationship];
}

- (void)detachFromView:(id)a3
{
  gestureRecognizerForDragInitiation = self->_gestureRecognizerForDragInitiation;
  v5 = a3;
  [v5 removeGestureRecognizer:gestureRecognizerForDragInitiation];
  [v5 removeGestureRecognizer:self->_gestureRecognizerForExclusionRelationship];
  [v5 removeGestureRecognizer:self->_gestureRecognizerForFailureRelationship];
}

- (void)didTransitionToPreparing
{
  [(_UIDragInteractionLongPressDriver *)self _gateCompetingGestureRecognizers];
  v3.receiver = self;
  v3.super_class = _UIDragInteractionLongPressDriver;
  [(_UIDragInteractionDriver *)&v3 didTransitionToPreparing];
}

- (void)didTransitionToDeferred
{
  if (dyld_program_sdk_at_least())
  {
    [(_UIDragInteractionLongPressDriver *)self _gateCompetingGestureRecognizers];
  }

  v3.receiver = self;
  v3.super_class = _UIDragInteractionLongPressDriver;
  [(_UIDragInteractionDriver *)&v3 didTransitionToDeferred];
}

- (void)didTransitionToInflightState
{
  v3 = [(_UIDragInteractionDriver *)self delegate];
  v4 = [v3 dragDriverBeginLift:self];

  if (v4)
  {
    if (![(_UIDragInteractionDriver *)self allowsSimultaneousRecognitionDuringLift])
    {
      gestureRecognizerForExclusionRelationship = self->_gestureRecognizerForExclusionRelationship;

      [(_UIRelationshipGestureRecognizer *)gestureRecognizerForExclusionRelationship _succeed];
    }
  }

  else
  {

    [(_UIDragInteractionDriver *)self cancel];
  }
}

- (void)didTransitionToCancelState
{
  v5[1] = *MEMORY[0x1E69E9840];
  [(_UIDragInteractionLongPressDriver *)self invalidateCompetingGestureRecognizerGateTimer];
  [(_UIDragInteractionLongPressDriver *)self invalidateCancellationTimer];
  v5[0] = self->_gestureRecognizerForDragInitiation;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(_UIDragInteractionLongPressDriver *)self openCompetingGestureRecognizerGateCancelingGestures:v3];

  v4.receiver = self;
  v4.super_class = _UIDragInteractionLongPressDriver;
  [(_UIDragInteractionDriver *)&v4 didTransitionToCancelState];
}

- (void)didTransitionToBeginState
{
  v34 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = _UIDragInteractionLongPressDriver;
  [(_UIDragInteractionDriver *)&v26 didTransitionToBeginState];
  if ([(_UIDragInteractionDriver *)self allowsSimultaneousRecognitionDuringLift])
  {
    [(_UIRelationshipGestureRecognizer *)self->_gestureRecognizerForExclusionRelationship _succeed];
  }

  [(_UIDragInteractionLongPressDriver *)self invalidateCompetingGestureRecognizerGateTimer];
  [(_UIDragInteractionLongPressDriver *)self invalidateCancellationTimer];
  v4 = self->_gestureRecognizerForDragInitiation;
  v5 = [(UIGestureRecognizer *)v4 _allActiveTouches];
  if (![v5 count])
  {
    v10 = *(__UILogGetCategoryCachedImpl("Dragging", &_MergedGlobals_9_17) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v7 = v10;
      v8 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = self;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v4;
      v9 = "%@ %@ gesture recognizer %@ has no touches that are not ended or cancelled, so it cannot be used to start a drag";
      goto LABEL_9;
    }

LABEL_10:
    [(_UIDragInteractionDriver *)self cancel];
    goto LABEL_19;
  }

  if ([v5 count] >= 3)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Dragging", &qword_1ED499DC8) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = self;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v4;
      v9 = "%@ %@ gesture recognizer %@ has more than 2 touches that are not ended or cancelled, so it cannot be used to start a drag";
LABEL_9:
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0x20u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v11 = UIApp;
  v12 = [(_UIDragInteractionDriver *)self view];
  v13 = [v12 window];
  v14 = [v11 _touchesEventForWindow:v13];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(UIGestureRecognizer *)v4 _removeTouch:*(*(&v22 + 1) + 8 * i) forEvent:v14, v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  v20 = [(_UIDragInteractionDriver *)self delegate];
  v21 = [(_UIDragInteractionDriver *)self itemUpdater];
  [v20 dragDriver:self beginDragWithTouches:v15 itemUpdater:v21 beginningSessionHandler:0];

LABEL_19:
}

- (void)setAutomaticallyAddsFailureRelationships:(BOOL)a3
{
  v3 = a3;
  if ([(_UIDragInteractionDriver *)self automaticallyAddsFailureRelationships]!= a3)
  {
    v8.receiver = self;
    v8.super_class = _UIDragInteractionLongPressDriver;
    [(_UIDragInteractionDriver *)&v8 setAutomaticallyAddsFailureRelationships:v3];
    v5 = [(_UIDragInteractionDriver *)self view];
    if (v5)
    {
      v6 = [(_UIDragInteractionDriver *)self automaticallyAddsFailureRelationships];
      gestureRecognizerForFailureRelationship = self->_gestureRecognizerForFailureRelationship;
      if (v6)
      {
        [v5 addGestureRecognizer:gestureRecognizerForFailureRelationship];
      }

      else
      {
        [v5 removeGestureRecognizer:gestureRecognizerForFailureRelationship];
      }
    }
  }
}

- (void)setAllowedTouchTypes:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIDragInteractionLongPressDriver;
  v4 = a3;
  [(_UIDragInteractionDriver *)&v5 setAllowedTouchTypes:v4];
  [(UIGestureRecognizer *)self->_gestureRecognizerForDragInitiation setAllowedTouchTypes:v4, v5.receiver, v5.super_class];
}

- (void)setLiftMoveHysteresis:(double)a3
{
  v4.receiver = self;
  v4.super_class = _UIDragInteractionLongPressDriver;
  [(_UIDragInteractionDriver *)&v4 setLiftMoveHysteresis:a3];
  [(_UIDragInteractionLongPressDriver *)self _updateLiftMoveHysteresisInDragInitiationGesture];
}

- (void)setLiftDelay:(double)a3
{
  v5.receiver = self;
  v5.super_class = _UIDragInteractionLongPressDriver;
  [(_UIDragInteractionDriver *)&v5 setLiftDelay:?];
  [(UILongPressGestureRecognizer *)self->_gestureRecognizerForDragInitiation setMinimumPressDuration:a3];
}

- (BOOL)_wantsTimeDelayedFailureRequirementGate
{
  v3 = [(_UIDragInteractionDriver *)self view];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    return 0;
  }

  else
  {
    return ![(_UIDragInteractionDriver *)self competingLongPressOnLift];
  }
}

- (void)_gateCompetingGestureRecognizers
{
  v3 = [(_UIDragInteractionLongPressDriver *)self _wantsTimeDelayedFailureRequirementGate];
  gateTimer = self->_gateTimer;
  if (v3)
  {
    if (gateTimer)
    {
      [(UIDelayedAction *)gateTimer touch];
    }

    else
    {
      v5 = [UIDelayedAction alloc];
      [(_UIDragInteractionDriver *)self competingLongPressDelay];
      v6 = [(UIDelayedAction *)v5 initWithTarget:self action:sel_openGateCancelingAddItemsGestures userInfo:0 delay:?];
      v7 = self->_gateTimer;
      self->_gateTimer = v6;
    }
  }

  else if (gateTimer)
  {
    [(_UIDragInteractionLongPressDriver *)self invalidateCompetingGestureRecognizerGateTimer];
  }

  v8 = [(_UIDragInteractionDriver *)self cancellationTimerEnabled];
  cancellationTimer = self->_cancellationTimer;
  if (v8)
  {
    if (cancellationTimer)
    {

      [(UIDelayedAction *)cancellationTimer touch];
    }

    else
    {
      v10 = [UIDelayedAction alloc];
      [(_UIDragInteractionDriver *)self cancellationDelay];
      v11 = [(UIDelayedAction *)v10 initWithTarget:self action:sel_cancel userInfo:0 delay:?];
      v12 = self->_cancellationTimer;
      self->_cancellationTimer = v11;
    }
  }

  else if (cancellationTimer)
  {

    [(_UIDragInteractionLongPressDriver *)self invalidateCancellationTimer];
  }
}

- (void)openCompetingGestureRecognizerGateCancelingGestures:(id)a3
{
  if (a3)
  {
    v4 = UIApp;
    v5 = a3;
    v6 = [v4 _gestureEnvironment];
    [(UIGestureEnvironment *)v6 _cancelGestureRecognizers:v5];
  }

  gestureRecognizerForFailureRelationship = self->_gestureRecognizerForFailureRelationship;

  [(_UIRelationshipGestureRecognizer *)gestureRecognizerForFailureRelationship _fail];
}

- (void)openGateCancelingAddItemsGestures
{
  [(_UIDragInteractionLongPressDriver *)self openCompetingGestureRecognizerGateCancelingGestures:0];
  v3 = [(_UIDragInteractionDriver *)self delegate];
  [v3 dragDriverCancelAddItemsGesture:self];
}

- (void)dragInitiationGestureStateChanged:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIDragInteractionLongPressDriver *)self gestureRecognizerForDragInitiation];

  if (v5 == v4)
  {
    [(_UIDragInteractionLongPressDriver *)self _dragInitiationGestureStateChanged:v4];
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Dragging", &dragInitiationGestureStateChanged____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Invalid gesture recognizer sent to drag interaction %@", &v7, 0xCu);
    }
  }
}

- (void)_dragInitiationGestureStateChanged:(id)a3
{
  v17 = a3;
  v4 = [v17 state];
  if (v4 == 3)
  {
    if (!self)
    {
      goto LABEL_17;
    }

    p_stateMachine = &self->super._stateMachine;
    v13 = self;
    v14 = 4;
    goto LABEL_16;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      [(_UIDragInteractionDriver *)self cancel];
      goto LABEL_17;
    }

    if (self->_behavior != 1)
    {
      v15 = [(_UIDragInteractionDriver *)self view];
      v16 = [v15 window];
      [v17 locationInView:v16];
      [(_UIDragInteractionDriver *)self setInitialLocationInWindow:?];

      p_stateMachine = &self->super._stateMachine;
      v13 = self;
      v14 = 0;
LABEL_16:
      _UIDragInteractionDriverStateMachineHandleEvent(p_stateMachine, v13, v14);
      goto LABEL_17;
    }

    v5 = [v17 view];
    [v17 startPoint];
    v7 = v6;
    v9 = v8;
    v10 = [(_UIDragInteractionDriver *)self view];
    v11 = [v10 window];
    [v5 convertPoint:v11 toView:{v7, v9}];
    [(_UIDragInteractionDriver *)self setInitialLocationInWindow:?];

    _UIDragInteractionDriverStateMachineHandleEvent(&self->super._stateMachine, self, 0);
LABEL_7:
    if (self->super._stateMachine.state == 3 && [(_UIDragInteractionLongPressDriver *)self hasExceededAllowableMovement])
    {
      p_stateMachine = &self->super._stateMachine;
      v13 = self;
      v14 = 2;
    }

    else
    {
      if (![(_UIDragInteractionLongPressDriver *)self hasMoveHysteresisBeenReached])
      {
        goto LABEL_17;
      }

      p_stateMachine = &self->super._stateMachine;
      v13 = self;
      v14 = 3;
    }

    goto LABEL_16;
  }

  if (self)
  {
    goto LABEL_7;
  }

  [0 hasMoveHysteresisBeenReached];
LABEL_17:
}

- (double)translationInWindow
{
  [(_UIDragInteractionDriver *)self initialLocationInWindow];
  v4 = v3;
  v6 = v5;
  gestureRecognizerForDragInitiation = self->_gestureRecognizerForDragInitiation;
  v8 = [(_UIDragInteractionDriver *)self view];
  v9 = [v8 window];
  [(UILongPressGestureRecognizer *)gestureRecognizerForDragInitiation locationInView:v9];
  v12 = sqrt((v4 - v10) * (v4 - v10) + (v6 - v11) * (v6 - v11));

  return v12;
}

- (BOOL)hasMoveHysteresisBeenReached
{
  [(_UIDragInteractionLongPressDriver *)self translationInWindow];
  v4 = v3;
  [(_UIDragInteractionDriver *)self liftMoveHysteresis];
  return v4 > v5;
}

- (BOOL)hasExceededAllowableMovement
{
  [(_UIDragInteractionLongPressDriver *)self translationInWindow];
  v4 = v3;
  [(UILongPressGestureRecognizer *)self->_gestureRecognizerForDragInitiation allowableMovement];
  return v4 > v5;
}

- (BOOL)shouldDelayCompetingGestureRecognizer:(id)a3
{
  v4 = a3;
  if (qword_1ED499DD8 != -1)
  {
    dispatch_once(&qword_1ED499DD8, &__block_literal_global_728);
  }

  v5 = qword_1ED499DD0;
  v6 = [v5 containsObject:objc_opt_class()];

  if ((v6 & 1) != 0 || ![v4 _isGestureType:1])
  {
    v8 = 0;
  }

  else
  {
    v7 = [(_UIDragInteractionDriver *)self delegate];
    v8 = [v7 dragDriver:self shouldDelayCompetingGestureRecognizer:v4];
  }

  return v8;
}

- (BOOL)canExcludeCompetingGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(_UIDragInteractionDriver *)self delegate];
  if ([v5 dragDriverWantsExclusionOverride:self])
  {
    v6 = [v5 dragDriver:self canExcludeCompetingGestureRecognizer:v4];
  }

  else
  {
    v7 = [v4 _isGestureType:1];

    v6 = v7 ^ 1;
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UIDragInteractionDriver *)self isEnabled])
  {
    goto LABEL_8;
  }

  v8 = [(_UIDragInteractionDriver *)self delegate];
  v9 = [v8 dragDriver:self shouldReceiveTouch:v7];

  if (!v9)
  {
    goto LABEL_8;
  }

  behavior = self->_behavior;
  if (behavior - 1 >= 2)
  {
    if (behavior || ([v7 _originatesFromPointerEvent] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  if (([v7 _originatesFromPointerEvent] & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ([(_UIDragInteractionDriver *)self additionalTouchesCancelLift])
  {
    v13 = [(UIGestureRecognizer *)self->_gestureRecognizerForDragInitiation _allActiveTouches];
    v14 = [v13 count];

    if (v14 >= 1 && self->_gestureRecognizerForDragInitiation == v6 && self->super._stateMachine.state != 5)
    {
      [(_UIDragInteractionDriver *)self cancel];
    }
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (self->_gestureRecognizerForDragInitiation == v4 && [(UIGestureRecognizer *)self->_gestureRecognizerForExclusionRelationship state]<= UIGestureRecognizerStateChanged)
  {
    v5 = [(_UIDragInteractionDriver *)self view];
    [(UIGestureRecognizer *)v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(_UIDragInteractionDriver *)self delegate];
    v11 = [v10 dragDriver:self shouldBeginAtLocation:{v7, v9}];
  }

  else
  {
    v11 = self->_gestureRecognizerForExclusionRelationship == v4;
  }

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_gestureRecognizerForFailureRelationship == v6)
  {
    v8 = 1;
    goto LABEL_9;
  }

  if (self->_gestureRecognizerForDragInitiation == v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
LABEL_8:
    v8 = isKindOfClass ^ 1;
    goto LABEL_9;
  }

  if (self->_gestureRecognizerForExclusionRelationship == v6)
  {
    isKindOfClass = [(_UIDragInteractionLongPressDriver *)self canExcludeCompetingGestureRecognizer:v7];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_gestureRecognizerForExclusionRelationship != v6 && self->_gestureRecognizerForFailureRelationship == v6 && [(_UIDragInteractionLongPressDriver *)self shouldDelayCompetingGestureRecognizer:v7];

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_gestureRecognizerForDragInitiation == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 1;
    }

    else
    {
      v8 = [(_UIDragInteractionDriver *)self delegate];
      v7 = [v8 dragDriver:self competingGestureRecognizerShouldDelayLift:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(UIGestureRecognizer *)self->_gestureRecognizerForDragInitiation state]== UIGestureRecognizerStateFailed || [(UIGestureRecognizer *)self->_gestureRecognizerForDragInitiation state]== UIGestureRecognizerStateCancelled)
  {
    [(_UIDragInteractionLongPressDriver *)self openCompetingGestureRecognizerGateCancelingGestures:0];
  }

  else if (self->_gestureRecognizerForExclusionRelationship == v4)
  {
    if (self->super._stateMachine.state == 1)
    {
      [(_UIDragInteractionLongPressDriver *)self invalidateCompetingGestureRecognizerGateTimer];
      [(_UIDragInteractionLongPressDriver *)self invalidateCancellationTimer];
      v6[0] = self->_gestureRecognizerForDragInitiation;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
      [(_UIDragInteractionLongPressDriver *)self openCompetingGestureRecognizerGateCancelingGestures:v5];
    }

    [(_UIDragInteractionDriver *)self cancel];
  }
}

@end
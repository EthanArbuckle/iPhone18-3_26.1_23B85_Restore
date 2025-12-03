@interface _UIDragInteractionLongPressDriver
- (BOOL)_wantsTimeDelayedFailureRequirementGate;
- (BOOL)canExcludeCompetingGestureRecognizer:(id)recognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasExceededAllowableMovement;
- (BOOL)hasMoveHysteresisBeenReached;
- (BOOL)shouldDelayCompetingGestureRecognizer:(id)recognizer;
- (_UIDragInteractionLongPressDriver)initWithBehavior:(unint64_t)behavior;
- (double)translationInWindow;
- (void)_dragInitiationGestureStateChanged:(id)changed;
- (void)_gateCompetingGestureRecognizers;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_updateLiftMoveHysteresisInDragInitiationGesture;
- (void)attachToView:(id)view;
- (void)detachFromView:(id)view;
- (void)didTransitionToBeginState;
- (void)didTransitionToCancelState;
- (void)didTransitionToDeferred;
- (void)didTransitionToInactiveState;
- (void)didTransitionToInflightState;
- (void)didTransitionToPreparing;
- (void)dragInitiationGestureStateChanged:(id)changed;
- (void)invalidateCancellationTimer;
- (void)invalidateCompetingGestureRecognizerGateTimer;
- (void)openCompetingGestureRecognizerGateCancelingGestures:(id)gestures;
- (void)openGateCancelingAddItemsGestures;
- (void)reset;
- (void)setAllowedTouchTypes:(id)types;
- (void)setAutomaticallyAddsFailureRelationships:(BOOL)relationships;
- (void)setLiftDelay:(double)delay;
- (void)setLiftMoveHysteresis:(double)hysteresis;
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

- (_UIDragInteractionLongPressDriver)initWithBehavior:(unint64_t)behavior
{
  v19.receiver = self;
  v19.super_class = _UIDragInteractionLongPressDriver;
  v4 = [(_UIDragInteractionDriver *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_behavior = behavior;
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

- (void)attachToView:(id)view
{
  gestureRecognizerForDragInitiation = self->_gestureRecognizerForDragInitiation;
  viewCopy = view;
  [viewCopy addGestureRecognizer:gestureRecognizerForDragInitiation];
  [viewCopy addGestureRecognizer:self->_gestureRecognizerForExclusionRelationship];
  [viewCopy addGestureRecognizer:self->_gestureRecognizerForFailureRelationship];
}

- (void)detachFromView:(id)view
{
  gestureRecognizerForDragInitiation = self->_gestureRecognizerForDragInitiation;
  viewCopy = view;
  [viewCopy removeGestureRecognizer:gestureRecognizerForDragInitiation];
  [viewCopy removeGestureRecognizer:self->_gestureRecognizerForExclusionRelationship];
  [viewCopy removeGestureRecognizer:self->_gestureRecognizerForFailureRelationship];
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
  delegate = [(_UIDragInteractionDriver *)self delegate];
  v4 = [delegate dragDriverBeginLift:self];

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
  _allActiveTouches = [(UIGestureRecognizer *)v4 _allActiveTouches];
  if (![_allActiveTouches count])
  {
    v10 = *(__UILogGetCategoryCachedImpl("Dragging", &_MergedGlobals_9_17) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v7 = v10;
      v8 = NSStringFromSelector(a2);
      *buf = 138412802;
      selfCopy2 = self;
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

  if ([_allActiveTouches count] >= 3)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Dragging", &qword_1ED499DC8) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = NSStringFromSelector(a2);
      *buf = 138412802;
      selfCopy2 = self;
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
  view = [(_UIDragInteractionDriver *)self view];
  window = [view window];
  v14 = [v11 _touchesEventForWindow:window];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = _allActiveTouches;
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

  delegate = [(_UIDragInteractionDriver *)self delegate];
  itemUpdater = [(_UIDragInteractionDriver *)self itemUpdater];
  [delegate dragDriver:self beginDragWithTouches:v15 itemUpdater:itemUpdater beginningSessionHandler:0];

LABEL_19:
}

- (void)setAutomaticallyAddsFailureRelationships:(BOOL)relationships
{
  relationshipsCopy = relationships;
  if ([(_UIDragInteractionDriver *)self automaticallyAddsFailureRelationships]!= relationships)
  {
    v8.receiver = self;
    v8.super_class = _UIDragInteractionLongPressDriver;
    [(_UIDragInteractionDriver *)&v8 setAutomaticallyAddsFailureRelationships:relationshipsCopy];
    view = [(_UIDragInteractionDriver *)self view];
    if (view)
    {
      automaticallyAddsFailureRelationships = [(_UIDragInteractionDriver *)self automaticallyAddsFailureRelationships];
      gestureRecognizerForFailureRelationship = self->_gestureRecognizerForFailureRelationship;
      if (automaticallyAddsFailureRelationships)
      {
        [view addGestureRecognizer:gestureRecognizerForFailureRelationship];
      }

      else
      {
        [view removeGestureRecognizer:gestureRecognizerForFailureRelationship];
      }
    }
  }
}

- (void)setAllowedTouchTypes:(id)types
{
  v5.receiver = self;
  v5.super_class = _UIDragInteractionLongPressDriver;
  typesCopy = types;
  [(_UIDragInteractionDriver *)&v5 setAllowedTouchTypes:typesCopy];
  [(UIGestureRecognizer *)self->_gestureRecognizerForDragInitiation setAllowedTouchTypes:typesCopy, v5.receiver, v5.super_class];
}

- (void)setLiftMoveHysteresis:(double)hysteresis
{
  v4.receiver = self;
  v4.super_class = _UIDragInteractionLongPressDriver;
  [(_UIDragInteractionDriver *)&v4 setLiftMoveHysteresis:hysteresis];
  [(_UIDragInteractionLongPressDriver *)self _updateLiftMoveHysteresisInDragInitiationGesture];
}

- (void)setLiftDelay:(double)delay
{
  v5.receiver = self;
  v5.super_class = _UIDragInteractionLongPressDriver;
  [(_UIDragInteractionDriver *)&v5 setLiftDelay:?];
  [(UILongPressGestureRecognizer *)self->_gestureRecognizerForDragInitiation setMinimumPressDuration:delay];
}

- (BOOL)_wantsTimeDelayedFailureRequirementGate
{
  view = [(_UIDragInteractionDriver *)self view];
  traitCollection = [view traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
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
  _wantsTimeDelayedFailureRequirementGate = [(_UIDragInteractionLongPressDriver *)self _wantsTimeDelayedFailureRequirementGate];
  gateTimer = self->_gateTimer;
  if (_wantsTimeDelayedFailureRequirementGate)
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

  cancellationTimerEnabled = [(_UIDragInteractionDriver *)self cancellationTimerEnabled];
  cancellationTimer = self->_cancellationTimer;
  if (cancellationTimerEnabled)
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

- (void)openCompetingGestureRecognizerGateCancelingGestures:(id)gestures
{
  if (gestures)
  {
    v4 = UIApp;
    gesturesCopy = gestures;
    _gestureEnvironment = [v4 _gestureEnvironment];
    [(UIGestureEnvironment *)_gestureEnvironment _cancelGestureRecognizers:gesturesCopy];
  }

  gestureRecognizerForFailureRelationship = self->_gestureRecognizerForFailureRelationship;

  [(_UIRelationshipGestureRecognizer *)gestureRecognizerForFailureRelationship _fail];
}

- (void)openGateCancelingAddItemsGestures
{
  [(_UIDragInteractionLongPressDriver *)self openCompetingGestureRecognizerGateCancelingGestures:0];
  delegate = [(_UIDragInteractionDriver *)self delegate];
  [delegate dragDriverCancelAddItemsGesture:self];
}

- (void)dragInitiationGestureStateChanged:(id)changed
{
  v9 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  gestureRecognizerForDragInitiation = [(_UIDragInteractionLongPressDriver *)self gestureRecognizerForDragInitiation];

  if (gestureRecognizerForDragInitiation == changedCopy)
  {
    [(_UIDragInteractionLongPressDriver *)self _dragInitiationGestureStateChanged:changedCopy];
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Dragging", &dragInitiationGestureStateChanged____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = changedCopy;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Invalid gesture recognizer sent to drag interaction %@", &v7, 0xCu);
    }
  }
}

- (void)_dragInitiationGestureStateChanged:(id)changed
{
  changedCopy = changed;
  state = [changedCopy state];
  if (state == 3)
  {
    if (!self)
    {
      goto LABEL_17;
    }

    p_stateMachine = &self->super._stateMachine;
    selfCopy4 = self;
    v14 = 4;
    goto LABEL_16;
  }

  if (state != 2)
  {
    if (state != 1)
    {
      [(_UIDragInteractionDriver *)self cancel];
      goto LABEL_17;
    }

    if (self->_behavior != 1)
    {
      view = [(_UIDragInteractionDriver *)self view];
      window = [view window];
      [changedCopy locationInView:window];
      [(_UIDragInteractionDriver *)self setInitialLocationInWindow:?];

      p_stateMachine = &self->super._stateMachine;
      selfCopy4 = self;
      v14 = 0;
LABEL_16:
      _UIDragInteractionDriverStateMachineHandleEvent(p_stateMachine, selfCopy4, v14);
      goto LABEL_17;
    }

    view2 = [changedCopy view];
    [changedCopy startPoint];
    v7 = v6;
    v9 = v8;
    view3 = [(_UIDragInteractionDriver *)self view];
    window2 = [view3 window];
    [view2 convertPoint:window2 toView:{v7, v9}];
    [(_UIDragInteractionDriver *)self setInitialLocationInWindow:?];

    _UIDragInteractionDriverStateMachineHandleEvent(&self->super._stateMachine, self, 0);
LABEL_7:
    if (self->super._stateMachine.state == 3 && [(_UIDragInteractionLongPressDriver *)self hasExceededAllowableMovement])
    {
      p_stateMachine = &self->super._stateMachine;
      selfCopy4 = self;
      v14 = 2;
    }

    else
    {
      if (![(_UIDragInteractionLongPressDriver *)self hasMoveHysteresisBeenReached])
      {
        goto LABEL_17;
      }

      p_stateMachine = &self->super._stateMachine;
      selfCopy4 = self;
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
  view = [(_UIDragInteractionDriver *)self view];
  window = [view window];
  [(UILongPressGestureRecognizer *)gestureRecognizerForDragInitiation locationInView:window];
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

- (BOOL)shouldDelayCompetingGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (qword_1ED499DD8 != -1)
  {
    dispatch_once(&qword_1ED499DD8, &__block_literal_global_728);
  }

  v5 = qword_1ED499DD0;
  v6 = [v5 containsObject:objc_opt_class()];

  if ((v6 & 1) != 0 || ![recognizerCopy _isGestureType:1])
  {
    v8 = 0;
  }

  else
  {
    delegate = [(_UIDragInteractionDriver *)self delegate];
    v8 = [delegate dragDriver:self shouldDelayCompetingGestureRecognizer:recognizerCopy];
  }

  return v8;
}

- (BOOL)canExcludeCompetingGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  delegate = [(_UIDragInteractionDriver *)self delegate];
  if ([delegate dragDriverWantsExclusionOverride:self])
  {
    v6 = [delegate dragDriver:self canExcludeCompetingGestureRecognizer:recognizerCopy];
  }

  else
  {
    v7 = [recognizerCopy _isGestureType:1];

    v6 = v7 ^ 1;
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (![(_UIDragInteractionDriver *)self isEnabled])
  {
    goto LABEL_8;
  }

  delegate = [(_UIDragInteractionDriver *)self delegate];
  v9 = [delegate dragDriver:self shouldReceiveTouch:touchCopy];

  if (!v9)
  {
    goto LABEL_8;
  }

  behavior = self->_behavior;
  if (behavior - 1 >= 2)
  {
    if (behavior || ([touchCopy _originatesFromPointerEvent] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  if (([touchCopy _originatesFromPointerEvent] & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ([(_UIDragInteractionDriver *)self additionalTouchesCancelLift])
  {
    _allActiveTouches = [(UIGestureRecognizer *)self->_gestureRecognizerForDragInitiation _allActiveTouches];
    v14 = [_allActiveTouches count];

    if (v14 >= 1 && self->_gestureRecognizerForDragInitiation == recognizerCopy && self->super._stateMachine.state != 5)
    {
      [(_UIDragInteractionDriver *)self cancel];
    }
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_gestureRecognizerForDragInitiation == beginCopy && [(UIGestureRecognizer *)self->_gestureRecognizerForExclusionRelationship state]<= UIGestureRecognizerStateChanged)
  {
    view = [(_UIDragInteractionDriver *)self view];
    [(UIGestureRecognizer *)beginCopy locationInView:view];
    v7 = v6;
    v9 = v8;

    delegate = [(_UIDragInteractionDriver *)self delegate];
    v11 = [delegate dragDriver:self shouldBeginAtLocation:{v7, v9}];
  }

  else
  {
    v11 = self->_gestureRecognizerForExclusionRelationship == beginCopy;
  }

  return v11;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_gestureRecognizerForFailureRelationship == recognizerCopy)
  {
    v8 = 1;
    goto LABEL_9;
  }

  if (self->_gestureRecognizerForDragInitiation == recognizerCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
LABEL_8:
    v8 = isKindOfClass ^ 1;
    goto LABEL_9;
  }

  if (self->_gestureRecognizerForExclusionRelationship == recognizerCopy)
  {
    isKindOfClass = [(_UIDragInteractionLongPressDriver *)self canExcludeCompetingGestureRecognizer:gestureRecognizerCopy];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = self->_gestureRecognizerForExclusionRelationship != recognizerCopy && self->_gestureRecognizerForFailureRelationship == recognizerCopy && [(_UIDragInteractionLongPressDriver *)self shouldDelayCompetingGestureRecognizer:gestureRecognizerCopy];

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_gestureRecognizerForDragInitiation == recognizer)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 1;
    }

    else
    {
      delegate = [(_UIDragInteractionDriver *)self delegate];
      v7 = [delegate dragDriver:self competingGestureRecognizerShouldDelayLift:gestureRecognizerCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  v6[1] = *MEMORY[0x1E69E9840];
  failedCopy = failed;
  if ([(UIGestureRecognizer *)self->_gestureRecognizerForDragInitiation state]== UIGestureRecognizerStateFailed || [(UIGestureRecognizer *)self->_gestureRecognizerForDragInitiation state]== UIGestureRecognizerStateCancelled)
  {
    [(_UIDragInteractionLongPressDriver *)self openCompetingGestureRecognizerGateCancelingGestures:0];
  }

  else if (self->_gestureRecognizerForExclusionRelationship == failedCopy)
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
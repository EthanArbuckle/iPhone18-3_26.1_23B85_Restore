@interface SBIndirectPanGestureRecognizer
- (BOOL)_hasTranslationReachedThreshold:(double)threshold withTranslation:(CGPoint)translation forEdge:(unint64_t)edge;
- (BOOL)_isPointOnRoundedCorner:(CGPoint)corner corner:(unint64_t)a4 radius:(double)radius inView:(id)view;
- (BOOL)_isPointerOnTopScreenCorner:(CGPoint)corner radius:(double)radius;
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (BOOL)_wantsWatchdogEnabled;
- (CGPoint)_centerOfCircleForRoundedCorner:(unint64_t)corner radius:(double)radius inView:(id)view;
- (CGPoint)_convertPoint:(CGPoint)point fromView:(id)view toView:(id)toView;
- (CGPoint)_pointerModelLocation;
- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration;
- (CGPoint)lastKnownPoint;
- (CGPoint)locationInView:(id)view;
- (CGPoint)origin;
- (CGPoint)translationInView:(id)view;
- (CGPoint)translationWithinHysteresisRange;
- (CGPoint)velocityInView:(id)view;
- (SBIndirectPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action edges:(unint64_t)edges;
- (SBIndirectPanGestureRecognizerOrientationProviding)orientationProvider;
- (UIEvent)currentHoverEvent;
- (UITouch)currentTouch;
- (double)hysteresisForInputType:(unint64_t)type;
- (id)containerView;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_effectiveOrientation;
- (unint64_t)_axisForEdge:(unint64_t)edge;
- (unint64_t)_edgeForPointerModelLocation:(CGPoint)location inView:(id)view inset:(double)inset;
- (void)_hoverCancelled:(id)cancelled withEvent:(id)event;
- (void)_hoverEntered:(id)entered withEvent:(id)event;
- (void)_hoverExited:(id)exited withEvent:(id)event;
- (void)_hoverMoved:(id)moved withEvent:(id)event;
- (void)_mouseIdleTimerElapsed;
- (void)_mouseIdleTimerFired:(id)fired;
- (void)_resetTranslationState;
- (void)_resetWatchdogIfNecessary;
- (void)_setUpIdleTimersIfNeededForEvent:(id)event;
- (void)_startWatchdogTimerIfNecessary;
- (void)_trackpadIdleTimerElapsed;
- (void)_trackpadIdleTimerFired:(id)fired;
- (void)_updateTranslationWithPointerEventAttributes:(id)attributes activeEdge:(unint64_t)edge;
- (void)_watchdogFired;
- (void)dealloc;
- (void)pointerClientControllerPointerVisibilityStateDidChange:(id)change;
- (void)reset;
- (void)setHysteresis:(double)hysteresis forInputType:(unint64_t)type;
- (void)setState:(int64_t)state;
- (void)trackpadDidTouchUpWithEvent:(id)event;
- (void)updateTouchHistoryWithTouches:(id)touches;
@end

@implementation SBIndirectPanGestureRecognizer

- (SBIndirectPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action edges:(unint64_t)edges
{
  selfCopy = self;
  if (edges)
  {
    v25.receiver = self;
    v25.super_class = SBIndirectPanGestureRecognizer;
    v7 = [(SBIndirectPanGestureRecognizer *)&v25 initWithTarget:target action:action];
    v8 = v7;
    if (v7)
    {
      v7->_edges = edges;
      v7->_avoidActivatingForExternallyOwnedEdges = 1;
      v7->_shouldCancelAfterMovingAwayFromEdge = 1;
      v7->_shouldInvertXAxis = 0;
      v7->_shouldInvertYAxis = 0;
      v7->_pausedUntilTouchedUpOrMovedAwayFromEdge = 0;
      translationAdjustmentBlock = v7->_translationAdjustmentBlock;
      v7->_translationAdjustmentBlock = 0;

      v8->_shouldActivateWithThresholdForMouse = 1;
      v8->_activationRecognitionDistance = 80.0;
      v8->_endReason = 0;
      v8->_currentInputType = 2;
      v10 = *MEMORY[0x277CBF348];
      v8->_origin = *MEMORY[0x277CBF348];
      v8->_lastKnownPoint = v10;
      v8->_activatedEdge = 0;
      mouseIdleTimer = v8->_mouseIdleTimer;
      v8->_mouseIdleTimer = 0;

      BSContinuousMachTimeNow();
      v8->_lastKnownMouseEventTimestamp = v12;
      trackpadIdleTimer = v8->_trackpadIdleTimer;
      v8->_trackpadIdleTimer = 0;

      BSContinuousMachTimeNow();
      v8->_lastKnownTrackpadEventTimestamp = v14;
      objc_storeWeak(&v8->_currentHoverEvent, 0);
      objc_storeWeak(&v8->_currentTouch, 0);
      v15 = objc_alloc_init(SBTouchHistory);
      touchHistory = v8->_touchHistory;
      v8->_touchHistory = v15;

      v8->_shouldRequireGestureToStartAtEdge = 0;
      v8->_shouldRequirePointerEventMovement = 1;
      v8->_trackpadHysteresis = 0.0;
      v8->_mouseHysteresis = 0.0;
      gestureStartLocation = v8->_gestureStartLocation;
      v8->_gestureStartLocation = 0;

      v8->_mouseEnteredNearEdgeRegionTimestamp = -1.79769313e308;
      v8->_gesturePassedThroughScreenCenterRegion = 0;
      v8->_lastMouseActivationTimestamp = -1.79769313e308;
      [(SBIndirectPanGestureRecognizer *)v8 setAllowedTouchTypes:&unk_28336EAA8];
      v18 = objc_alloc_init(MEMORY[0x277D3DF50]);
      pointerClientController = v8->_pointerClientController;
      v8->_pointerClientController = v18;

      [(PSPointerClientController *)v8->_pointerClientController setDelegate:v8];
      v8->_pointerHiddenBeforeCurrentTouch = 0;
    }

    selfCopy = v8;
    v20 = selfCopy;
  }

  else
  {
    v22 = SBLogSystemGesture();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SBIndirectPanGestureRecognizer initWithTarget:v22 action:? edges:?];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"SBIndirectPanGestureRecognizer.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"edges != UIRectEdgeNone"}];

    v20 = 0;
  }

  return v20;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_watchdogTimer invalidate];
  [(BSInvalidatable *)self->_logCaptureHandle invalidate];
  [(PSPointerClientController *)self->_pointerClientController invalidate];
  v3.receiver = self;
  v3.super_class = SBIndirectPanGestureRecognizer;
  [(SBIndirectPanGestureRecognizer *)&v3 dealloc];
}

- (void)setState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = SBIndirectPanGestureRecognizer;
  [(SBIndirectPanGestureRecognizer *)&v5 setState:?];
  if ((state - 1) <= 4)
  {
    [(SBIndirectPanGestureRecognizer *)self _resetWatchdogIfNecessary];
  }
}

- (void)reset
{
  _SBIndirectGestureLog(self, @"Resetting gesture");
  v3.receiver = self;
  v3.super_class = SBIndirectPanGestureRecognizer;
  [(SBIndirectPanGestureRecognizer *)&v3 reset];
  [(SBIndirectPanGestureRecognizer *)self _resetWatchdogIfNecessary];
  [(SBIndirectPanGestureRecognizer *)self _resetTranslationState];
}

- (void)_resetTranslationState
{
  self->_endReason = 0;
  [(NSTimer *)self->_mouseIdleTimer invalidate];
  mouseIdleTimer = self->_mouseIdleTimer;
  self->_mouseIdleTimer = 0;

  v7 = *MEMORY[0x277CBF348];
  self->_origin = *MEMORY[0x277CBF348];
  self->_lastKnownPoint = v7;
  BSContinuousMachTimeNow();
  self->_lastKnownMouseEventTimestamp = v4;
  [(NSTimer *)self->_trackpadIdleTimer invalidate];
  trackpadIdleTimer = self->_trackpadIdleTimer;
  self->_trackpadIdleTimer = 0;

  BSContinuousMachTimeNow();
  self->_lastKnownTrackpadEventTimestamp = v6;
  self->_activatedEdge = 0;
  self->_currentInputType = 2;
  self->_translationWithinHysteresisRange = v7;
  [(SBTouchHistory *)self->_touchHistory reset];
  objc_storeWeak(&self->_currentHoverEvent, 0);

  objc_storeWeak(&self->_currentTouch, 0);
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  v5 = [(SBIndirectPanGestureRecognizer *)self containerView:touch];
  WeakRetained = objc_loadWeakRetained(&self->_currentTouch);
  v7 = objc_loadWeakRetained(&self->_currentHoverEvent);
  if (v7)
  {
    v8 = WeakRetained == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v5 && ([(SBIndirectPanGestureRecognizer *)self _pointerModelLocation], (self->_edges & [SBIndirectPanGestureRecognizer _edgeForPointerModelLocation:"_edgeForPointerModelLocation:inView:inset:" inView:v5 inset:?]) != 0))
  {
    [(SBIndirectPanGestureRecognizer *)self _startWatchdogTimerIfNecessary];
    [(BSAuditHistory *)self->_auditHistory addItemWithFormat:@"ShouldReceiveEvent"];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_hoverEntered:(id)entered withEvent:(id)event
{
  enteredCopy = entered;
  eventCopy = event;
  [(BSAuditHistory *)self->_auditHistory addItemWithFormat:@"hoverEntered:withEvent:"];
  WeakRetained = objc_loadWeakRetained(&self->_currentHoverEvent);
  if (!WeakRetained)
  {
    if ([enteredCopy count] == 1)
    {
      [(SBIndirectPanGestureRecognizer *)self _resetTranslationState];
      WeakRetained = eventCopy;
      objc_storeWeak(&self->_currentHoverEvent, WeakRetained);
      anyObject = [enteredCopy anyObject];
      objc_storeWeak(&self->_currentTouch, anyObject);
    }

    else
    {
      WeakRetained = 0;
    }
  }

  allTouches = [WeakRetained allTouches];
  [(SBIndirectPanGestureRecognizer *)self updateTouchHistoryWithTouches:allTouches];

  if (!self->_gestureStartLocation)
  {
    [(SBIndirectPanGestureRecognizer *)self _pointerModelLocation];
    v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:?];
    gestureStartLocation = self->_gestureStartLocation;
    self->_gestureStartLocation = v10;
  }

  [(SBIndirectPanGestureRecognizer *)self _setUpIdleTimersIfNeededForEvent:eventCopy];
}

- (void)_hoverMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_currentTouch);
  v7 = objc_loadWeakRetained(&self->_currentHoverEvent);
  v8 = v7;
  if (WeakRetained)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = @"NOT ";
    if (WeakRetained)
    {
      v11 = @"NOT ";
    }

    else
    {
      v11 = &stru_283094718;
    }

    if (!v7)
    {
      v10 = &stru_283094718;
    }

    [(BSAuditHistory *)self->_auditHistory addItemWithFormat:@"hoverMoved:withEvent: - currentTouch is %@nil - currentHoverEvent is %@nil", v11, v10];
  }

  if ([WeakRetained phase] == 6)
  {
    allTouches = [v8 allTouches];
    [(SBIndirectPanGestureRecognizer *)self updateTouchHistoryWithTouches:allTouches];

    [(SBIndirectPanGestureRecognizer *)self _pointerModelLocation];
    v14 = v13;
    v16 = v15;
    containerView = [(SBIndirectPanGestureRecognizer *)self containerView];
    if ((self->_edges & [(SBIndirectPanGestureRecognizer *)self _edgeForPointerModelLocation:containerView inView:v14 inset:v16, 30.0]) != 0 || (self->_edges & [(SBIndirectPanGestureRecognizer *)self _edgeForPointerModelLocation:containerView inView:v14 inset:v16, 100.0]) != 0)
    {
      if (self->_mouseEnteredNearEdgeRegionTimestamp == -1.79769313e308)
      {
        BSContinuousMachTimeNow();
        self->_mouseEnteredNearEdgeRegionTimestamp = v18;
      }
    }

    else
    {
      self->_mouseEnteredNearEdgeRegionTimestamp = -1.79769313e308;
      self->_gesturePassedThroughScreenCenterRegion = 1;
    }

    v19 = [(SBIndirectPanGestureRecognizer *)self _edgeForPointerModelLocation:containerView inView:v14 inset:v16, 1.0];
    v59 = self->_edges & v19;
    if (v59 && self->_avoidActivatingForExternallyOwnedEdges)
    {
      v20 = eventCopy;
      v21 = v8;
      v22 = containerView;
      v23 = +[SBWorkspace mainWorkspace];
      [v23 universalControlServer];
      v25 = v24 = v19;
      externalProcessActiveOnScreenEdges = [v25 externalProcessActiveOnScreenEdges];

      v19 = v24;
      if ((v24 & ~externalProcessActiveOnScreenEdges) != 0)
      {
        v57 = 0;
      }

      else
      {
        [(BSAuditHistory *)self->_auditHistory addItemWithFormat:@"hoverMoved:withEvent: - externally controlled edges: %lu contains current edge: %lu", externalProcessActiveOnScreenEdges, v24];
        v57 = 1;
      }

      containerView = v22;
      v8 = v21;
      eventCopy = v20;
    }

    else
    {
      v57 = 0;
    }

    [eventCopy _hidEvent];
    v27 = SBPointerHIDSubEventFromEvent();
    if (!v27 || (BKSHIDEventGetPointerAttributes(), (v28 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      [(BSAuditHistory *)self->_auditHistory addItemWithFormat:@"hoverMoved:withEvent: - bailing because pointer attributes is nil"];
      v31 = SBLogSystemGesture();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [SBIndirectPanGestureRecognizer _hoverMoved:v27 withEvent:v31];
      }

      v29 = 0;
      goto LABEL_73;
    }

    v29 = v28;
    v56 = v19;
    v58 = SBPointerEventIsTrackpadEvent(v28);
    if (v58)
    {
      self->_currentInputType = 0;
      v30 = SBPointerEventRepresentsTrackpadTouchUp(v29);
    }

    else
    {
      v30 = 0;
      self->_currentInputType = 1;
    }

    BSContinuousMachTimeNow();
    if (self->_pausedUntilTouchedUpOrMovedAwayFromEdge)
    {
      v33 = v59 ? v30 : 1;
      if ((v33 & 1) != 0 || v32 - self->_lastKnownMouseEventTimestamp >= 0.15)
      {
        self->_pausedUntilTouchedUpOrMovedAwayFromEdge = 0;
      }
    }

    v34 = !SBPointerEventHasMovementOnAxis(v29, 3);
    v35 = v58;
    if (((v58 | v34) & 1) == 0)
    {
      BSContinuousMachTimeNow();
      v35 = v58;
      self->_lastKnownMouseEventTimestamp = v36;
    }

    if (v35)
    {
      [(SBIndirectPanGestureRecognizer *)self _setUpIdleTimersIfNeededForEvent:eventCopy];
      if (!v59 && self->_shouldRequireGestureToStartAtEdge && !self->_gesturePassedThroughScreenCenterRegion && (self->_edges & [(SBIndirectPanGestureRecognizer *)self _edgeForPointerModelLocation:containerView inView:v14 inset:v16, 100.0]) == 0)
      {
        self->_gesturePassedThroughScreenCenterRegion = 1;
      }
    }

    if ([(SBIndirectPanGestureRecognizer *)self state])
    {
      if ([(SBIndirectPanGestureRecognizer *)self state]!= 1)
      {
        if ([(SBIndirectPanGestureRecognizer *)self state]!= 2)
        {
          goto LABEL_73;
        }

        if (!v30)
        {
          if (v59 || !self->_shouldCancelAfterMovingAwayFromEdge)
          {
            [(SBIndirectPanGestureRecognizer *)self setState:2];
            [(SBIndirectPanGestureRecognizer *)self _updateTranslationWithPointerEventAttributes:v29 activeEdge:v56];
            allTouches2 = [v8 allTouches];
            [(SBIndirectPanGestureRecognizer *)self updateTouchHistoryWithTouches:allTouches2];

            if (!(v58 & 1 | !self->_shouldActivateWithThresholdForMouse) || (v58 & self->_shouldActivateWithThresholdForTrackpad) == 1)
            {
              [(SBIndirectPanGestureRecognizer *)self translationInView:containerView];
              if ([(SBIndirectPanGestureRecognizer *)self _hasTranslationReachedThreshold:v56 withTranslation:self->_activationRecognitionDistance forEdge:v51, v52])
              {
                if (v58)
                {
                  _SBIndirectGestureLog(self, @"Moving to state Ended because the trackpad threshold was reached");
                  self->_endReason = 3;
                }

                else
                {
                  _SBIndirectGestureLog(self, @"Moving to state Ended because the mouse threshold was reached");
                  self->_endReason = 4;
                  BSContinuousMachTimeNow();
                  self->_lastMouseActivationTimestamp = v53;
                }

                [(SBIndirectPanGestureRecognizer *)self setState:3];
                [(SBIndirectPanGestureRecognizer *)self setPausedUntilTouchedUpOrMovedAwayFromEdge:1];
              }
            }

            goto LABEL_73;
          }

          _SBIndirectGestureLog(self, @"Moving to state Cancelled; pointer moved away from active edge");
          self->_endReason = 2;
          selfCopy3 = self;
          v45 = 4;
          goto LABEL_72;
        }

        _SBIndirectGestureLog(self, @"Moving to state Ended due to touch-up event");
        self->_endReason = 1;
        goto LABEL_71;
      }

      if ((v59 == 0) | v30 & 1)
      {
        v37 = (v30 & 1) != 0 || self->_pausedUntilTouchedUpOrMovedAwayFromEdge;
        self->_endReason = v37;
        _SBIndirectGestureLog(self, @"Pointer either moved away from active edge, or got touch up. Moving from Began to Ended");
LABEL_71:
        selfCopy3 = self;
        v45 = 3;
LABEL_72:
        [(SBIndirectPanGestureRecognizer *)selfCopy3 setState:v45];
        goto LABEL_73;
      }

      [(SBIndirectPanGestureRecognizer *)self _updateTranslationWithPointerEventAttributes:v29 activeEdge:v56];
      [v8 allTouches];
      v40 = v39 = v29;
      [(SBIndirectPanGestureRecognizer *)self updateTouchHistoryWithTouches:v40];

      containerView2 = [(SBIndirectPanGestureRecognizer *)self containerView];
      _fbsDisplayConfiguration = [containerView2 _fbsDisplayConfiguration];
      hardwareIdentifier = [_fbsDisplayConfiguration hardwareIdentifier];

      v29 = v39;
      BKSHIDServicesCancelTouchesOnDisplay();
      _SBIndirectGestureLog(self, @"Pointer is on active edge; moving from state Began to Changed.");
      [(SBIndirectPanGestureRecognizer *)self setState:2];

LABEL_73:
      goto LABEL_74;
    }

    if ((v59 == 0) | v30 & 1)
    {
      if ((v30 | v58 ^ 1) != 1)
      {
        [(BSAuditHistory *)self->_auditHistory addItemWithFormat:@"hoverMoved:withEvent: - not moving to began/failed because isPointerOnActiveEdge: %d isTouchUp: %d isMouseEvent: %d", v59 != 0, 0, 0];
        goto LABEL_73;
      }

      if (v30)
      {
        v38 = @"Moving from Possible to Failed because of a touch-up";
      }

      else
      {
        v38 = @"Moving from Possible to Failed because we're not on the correct edge";
      }

      goto LABEL_65;
    }

    if (((v57 | (self->_shouldRequirePointerEventMovement && v34)) & 1) != 0 || self->_pausedUntilTouchedUpOrMovedAwayFromEdge)
    {
      v38 = @"Pointer event has a zero offset, moving to Failed";
LABEL_65:
      _SBIndirectGestureLog(self, v38);
      [(SBIndirectPanGestureRecognizer *)self setState:5];
      goto LABEL_73;
    }

    self->_origin.x = v14;
    self->_origin.y = v16;
    self->_lastKnownPoint.x = v14;
    self->_lastKnownPoint.y = v16;
    [(SBIndirectPanGestureRecognizer *)self _updateTranslationWithPointerEventAttributes:v29 activeEdge:v56];
    allTouches3 = [v8 allTouches];
    [(SBIndirectPanGestureRecognizer *)self updateTouchHistoryWithTouches:allTouches3];

    if (containerView)
    {
      if (self->_shouldRequireGestureToStartAtEdge)
      {
        if (v58)
        {
          [(NSValue *)self->_gestureStartLocation pointValue];
          v47 = [SBIndirectPanGestureRecognizer _edgeForPointerModelLocation:"_edgeForPointerModelLocation:inView:inset:" inView:containerView inset:?];
          if (self->_pointerHiddenBeforeCurrentTouch)
          {
            v48 = v29;
            v49 = @"Pointer was hidden";
LABEL_102:
            v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Moving to state Failed shouldBegin is NO. Reason: %@", v49];;
            _SBIndirectGestureLog(self, v55);
            [(SBIndirectPanGestureRecognizer *)self setState:5];

            v29 = v48;
            goto LABEL_73;
          }

          if (v47 != v56)
          {
            v48 = v29;
            v49 = @"Trackpad gesture did not start near the edge.";
            goto LABEL_102;
          }

          if (self->_gesturePassedThroughScreenCenterRegion)
          {
            v48 = v29;
            v49 = @"Trackpad gesture started near the edge, but left the region before coming back.";
            goto LABEL_102;
          }
        }

        else
        {
          if (self->_mouseEnteredNearEdgeRegionTimestamp == -1.79769313e308 || (BSContinuousMachTimeNow(), v54 - self->_mouseEnteredNearEdgeRegionTimestamp <= 0.25))
          {
            v48 = v29;
            if (self->_pointerHiddenBeforeCurrentTouch)
            {
              v49 = @"Pointer was hidden";
            }

            else
            {
              v49 = @"Mouse pointer has not spent enough time on the edge to be considered a second pan.";
            }

            goto LABEL_102;
          }

          self->_pointerHiddenBeforeCurrentTouch = 0;
        }
      }

      self->_activatedEdge = v56;
      _SBIndirectGestureLog(self, @"Moving to state Began");
      selfCopy3 = self;
      v45 = 1;
      goto LABEL_72;
    }

    v48 = v29;
    v49 = @"System gesture view is nil";
    goto LABEL_102;
  }

  -[BSAuditHistory addItemWithFormat:](self->_auditHistory, "addItemWithFormat:", @"hoverMoved:withEvent: - bailing because current touch is: %@ with phase: %ld", WeakRetained, [WeakRetained phase]);
LABEL_74:
}

- (void)_hoverExited:(id)exited withEvent:(id)event
{
  [(SBIndirectPanGestureRecognizer *)self _resetTranslationState:exited];
  if ([(SBIndirectPanGestureRecognizer *)self state]== 1)
  {
    v5 = 3;
  }

  else if ([(SBIndirectPanGestureRecognizer *)self state]== 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(SBIndirectPanGestureRecognizer *)self setState:v5];
}

- (void)_hoverCancelled:(id)cancelled withEvent:(id)event
{
  [(SBIndirectPanGestureRecognizer *)self _resetTranslationState:cancelled];
  if ([(SBIndirectPanGestureRecognizer *)self state]== 1)
  {
    v5 = 4;
  }

  else if ([(SBIndirectPanGestureRecognizer *)self state]== 2)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(SBIndirectPanGestureRecognizer *)self setState:v5];
}

- (void)pointerClientControllerPointerVisibilityStateDidChange:(id)change
{
  pointerVisibilityState = [change pointerVisibilityState];
  v5 = pointerVisibilityState;
  if (self->_pointerVisibilityState)
  {
    v6 = 0;
  }

  else
  {
    v6 = pointerVisibilityState == 1;
  }

  if (v6)
  {
    self->_pointerHiddenBeforeCurrentTouch = 1;
    self->_mouseEnteredNearEdgeRegionTimestamp = -1.79769313e308;
    self->_gesturePassedThroughScreenCenterRegion = 1;
    state = [(SBIndirectPanGestureRecognizer *)self state];
    if ((state - 1) >= 2)
    {
      if (state)
      {
        goto LABEL_11;
      }

      v8 = @"Pointer was hidden: moving from Possible to Failed";
      v9 = 5;
    }

    else
    {
      self->_endReason = 7;
      v8 = @"Pointer was hidden: moving from Began or Changed to Cancelled";
      v9 = 4;
    }

    _SBIndirectGestureLog(self, v8);
    [(SBIndirectPanGestureRecognizer *)self setState:v9];
  }

LABEL_11:
  self->_pointerVisibilityState = v5;
  v10 = @"Visible";
  if (!v5)
  {
    v10 = @"Hidden";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Pointer visibility state changed to %@", v10];
  _SBIndirectGestureLog(self, v11);
}

- (void)_setUpIdleTimersIfNeededForEvent:(id)event
{
  eventCopy = event;
  [eventCopy _hidEvent];
  if (SBPointerHIDSubEventFromEvent())
  {
    v5 = BKSHIDEventGetPointerAttributes();
  }

  else
  {
    v5 = 0;
  }

  if (SBPointerEventIsTrackpadEvent(v5))
  {
    if (!self->_trackpadIdleTimer)
    {
      _SBIndirectGestureLog(self, @"Creating a new trackpad idle timer.");
      objc_initWeak(&location, self);
      v6 = MEMORY[0x277CBEBB8];
      v7 = v14;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __67__SBIndirectPanGestureRecognizer__setUpIdleTimersIfNeededForEvent___block_invoke_2;
      v14[3] = &unk_2783AA438;
      objc_copyWeak(&v15, &location);
      v8 = [v6 timerWithTimeInterval:1 repeats:v14 block:0.1];
      trackpadIdleTimer = self->_trackpadIdleTimer;
      self->_trackpadIdleTimer = v8;

      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [mainRunLoop addTimer:self->_trackpadIdleTimer forMode:*MEMORY[0x277CBE738]];
LABEL_9:

      objc_destroyWeak(v7 + 4);
      objc_destroyWeak(&location);
    }
  }

  else if (!self->_mouseIdleTimer)
  {
    _SBIndirectGestureLog(self, @"Creating a new mouse idle timer.");
    objc_initWeak(&location, self);
    v11 = MEMORY[0x277CBEBB8];
    v7 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__SBIndirectPanGestureRecognizer__setUpIdleTimersIfNeededForEvent___block_invoke;
    v16[3] = &unk_2783AA438;
    objc_copyWeak(&v17, &location);
    v12 = [v11 timerWithTimeInterval:1 repeats:v16 block:0.1];
    mouseIdleTimer = self->_mouseIdleTimer;
    self->_mouseIdleTimer = v12;

    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop addTimer:self->_mouseIdleTimer forMode:*MEMORY[0x277CBE738]];
    goto LABEL_9;
  }
}

void __67__SBIndirectPanGestureRecognizer__setUpIdleTimersIfNeededForEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mouseIdleTimerFired:v3];
}

void __67__SBIndirectPanGestureRecognizer__setUpIdleTimersIfNeededForEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _trackpadIdleTimerFired:v3];
}

- (void)_mouseIdleTimerFired:(id)fired
{
  BSContinuousMachTimeNow();
  v5 = v4 - self->_lastKnownMouseEventTimestamp;
  containerView = [(SBIndirectPanGestureRecognizer *)self containerView];
  [(SBIndirectPanGestureRecognizer *)self velocityInView:containerView];
  v8 = v7;
  v10 = v9;

  v11 = fabs(hypot(v8, v10));
  if (v5 >= 0.15 && v11 < 50.0)
  {

    [(SBIndirectPanGestureRecognizer *)self _mouseIdleTimerElapsed];
  }

  else
  {
    [(BSAuditHistory *)self->_auditHistory addItemWithFormat:@"Not firing mouse idle timer because timeSinceLastMouseEvent: %f, magnitude: %f", *&v5, *&v11];
  }
}

- (void)_mouseIdleTimerElapsed
{
  _SBIndirectGestureLog(self, @"Mouse idle timer has elapsed");
  state = [(SBIndirectPanGestureRecognizer *)self state];
  if ((state - 1) < 2)
  {
    self->_endReason = 5;
    v4 = @"Mouse idle timer: moving from Began or Changed to Cancelled";
    v5 = 4;
LABEL_5:
    _SBIndirectGestureLog(self, v4);
    [(SBIndirectPanGestureRecognizer *)self setState:v5];
    goto LABEL_6;
  }

  if (!state)
  {
    v4 = @"Mouse idle timer: moving from Possible to Failed";
    v5 = 5;
    goto LABEL_5;
  }

LABEL_6:
  _SBIndirectGestureLog(self, @"Invalidating the mouse idle timer");
  [(NSTimer *)self->_mouseIdleTimer invalidate];
  mouseIdleTimer = self->_mouseIdleTimer;
  self->_mouseIdleTimer = 0;

  self->_gesturePassedThroughScreenCenterRegion = 0;
  self->_pointerHiddenBeforeCurrentTouch = 0;
}

- (void)_trackpadIdleTimerFired:(id)fired
{
  BSContinuousMachTimeNow();
  v5 = v4 - self->_lastKnownTrackpadEventTimestamp;
  if (v5 >= 0.15)
  {

    [(SBIndirectPanGestureRecognizer *)self _trackpadIdleTimerElapsed];
  }

  else
  {
    [(BSAuditHistory *)self->_auditHistory addItemWithFormat:@"Not firing trackpad idle timer because timeSinceLastTrackpadEvent: %f", *&v5];
  }
}

- (void)_trackpadIdleTimerElapsed
{
  _SBIndirectGestureLog(self, @"Trackpad idle timer has elapsed");
  state = [(SBIndirectPanGestureRecognizer *)self state];
  if ((state - 1) < 2)
  {
    self->_endReason = 6;
    v4 = @"Trackpad idle timer: moving from Began or Changed to Cancelled";
    v5 = 4;
LABEL_5:
    _SBIndirectGestureLog(self, v4);
    [(SBIndirectPanGestureRecognizer *)self setState:v5];
    goto LABEL_6;
  }

  if (!state)
  {
    v4 = @"Trackpad idle timer: moving from Possible to Failed";
    v5 = 5;
    goto LABEL_5;
  }

LABEL_6:
  _SBIndirectGestureLog(self, @"Invalidating the trackpad idle timer");
  [(NSTimer *)self->_trackpadIdleTimer invalidate];
  trackpadIdleTimer = self->_trackpadIdleTimer;
  self->_trackpadIdleTimer = 0;

  self->_gesturePassedThroughScreenCenterRegion = 0;
  self->_pointerHiddenBeforeCurrentTouch = 0;
}

- (void)trackpadDidTouchUpWithEvent:(id)event
{
  _SBIndirectGestureLog(self, @"Touch-up from the lifecycle monitor: Setting _gestureStartLocation to nil");
  self->_pausedUntilTouchedUpOrMovedAwayFromEdge = 0;
  gestureStartLocation = self->_gestureStartLocation;
  self->_gestureStartLocation = 0;

  self->_gesturePassedThroughScreenCenterRegion = 0;
  self->_pointerHiddenBeforeCurrentTouch = 0;
}

- (void)_startWatchdogTimerIfNecessary
{
  if (!self->_watchdogTimer)
  {
    if ([(SBIndirectPanGestureRecognizer *)self _wantsWatchdogEnabled])
    {
      v3 = objc_alloc(MEMORY[0x277CF0B50]);
      v4 = MEMORY[0x277CCACA8];
      name = [(SBIndirectPanGestureRecognizer *)self name];
      v6 = [v4 stringWithFormat:@"Watchdog - %@", name];
      v7 = [v3 initWithIdentifier:v6];
      watchdogTimer = self->_watchdogTimer;
      self->_watchdogTimer = v7;

      objc_initWeak(&location, self);
      v9 = self->_watchdogTimer;
      [(SBIndirectPanGestureRecognizer *)self _watchdogTimeoutInSeconds];
      v11 = v10;
      v12 = MEMORY[0x277D85CD0];
      v13 = MEMORY[0x277D85CD0];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __64__SBIndirectPanGestureRecognizer__startWatchdogTimerIfNecessary__block_invoke;
      v22[3] = &unk_2783A9918;
      objc_copyWeak(&v23, &location);
      [(BSAbsoluteMachTimer *)v9 scheduleWithFireInterval:v12 leewayInterval:v22 queue:v11 handler:0.0];

      v14 = objc_alloc_init(MEMORY[0x277CF0B88]);
      auditHistory = self->_auditHistory;
      self->_auditHistory = v14;

      v16 = MEMORY[0x277CCACA8];
      name2 = [(SBIndirectPanGestureRecognizer *)self name];
      v18 = [v16 stringWithFormat:@"SpringBoard - SBIndirectPanGestureRecognizer - %p - %@", self, name2];
      objc_copyWeak(&v21, &location);
      v19 = BSLogAddStateCaptureBlockWithTitle();
      logCaptureHandle = self->_logCaptureHandle;
      self->_logCaptureHandle = v19;

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }
}

void __64__SBIndirectPanGestureRecognizer__startWatchdogTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _watchdogFired];
}

__CFString *__64__SBIndirectPanGestureRecognizer__startWatchdogTimerIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained debugDescription];
  }

  else
  {
    v3 = &stru_283094718;
  }

  return v3;
}

- (void)_resetWatchdogIfNecessary
{
  watchdogTimer = self->_watchdogTimer;
  if (watchdogTimer)
  {
    [(BSAbsoluteMachTimer *)watchdogTimer invalidate];
    v4 = self->_watchdogTimer;
    self->_watchdogTimer = 0;

    auditHistory = self->_auditHistory;
    self->_auditHistory = 0;

    [(BSInvalidatable *)self->_logCaptureHandle invalidate];
    logCaptureHandle = self->_logCaptureHandle;
    self->_logCaptureHandle = 0;
  }
}

- (void)_watchdogFired
{
  OUTLINED_FUNCTION_3_1();
  v13 = *MEMORY[0x277D85DE8];
  name = [v3 name];
  sb_stringForState = [v2 sb_stringForState];
  v6 = [v1 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_1_32();
  v10 = sb_stringForState;
  v11 = v7;
  v12 = v8;
  _os_log_error_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_ERROR, "SBIndirectPanGestureRecognizer (%@, %@) – watchdog fired!! - %@", v9, 0x20u);
}

- (BOOL)_wantsWatchdogEnabled
{
  name = [(SBIndirectPanGestureRecognizer *)self name];
  if ([name isEqualToString:@"indirectPresentCoverSheetGestureRecognizer"])
  {
    v4 = 1;
  }

  else
  {
    name2 = [(SBIndirectPanGestureRecognizer *)self name];
    v4 = [name2 isEqualToString:@"indirectPresentControlCenterGestureRecognizer"];
  }

  return v4;
}

- (CGPoint)locationInView:(id)view
{
  p_origin = &self->_origin;
  viewCopy = view;
  containerView = [(SBIndirectPanGestureRecognizer *)self containerView];
  [(SBIndirectPanGestureRecognizer *)self _convertPoint:containerView fromView:viewCopy toView:p_origin->x, p_origin->y];
  v8 = v7;
  v10 = v9;

  [(SBIndirectPanGestureRecognizer *)self translationInView:viewCopy];
  v12 = v11;
  v14 = v13;

  v15 = v8 + v12;
  v16 = v10 + v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)translationInView:(id)view
{
  p_origin = &self->_origin;
  viewCopy = view;
  containerView = [(SBIndirectPanGestureRecognizer *)self containerView];
  [(SBIndirectPanGestureRecognizer *)self _convertPoint:containerView fromView:viewCopy toView:p_origin->x, p_origin->y];
  v8 = v7;
  v10 = v9;

  containerView2 = [(SBIndirectPanGestureRecognizer *)self containerView];
  [(SBIndirectPanGestureRecognizer *)self _convertPoint:containerView2 fromView:viewCopy toView:self->_lastKnownPoint.x, self->_lastKnownPoint.y];
  v13 = v12;
  v15 = v14;

  v16 = v13 - v8;
  v17 = v15 - v10;
  if (self->_shouldInvertXAxis)
  {
    v16 = -(v13 - v8);
  }

  if (self->_shouldInvertYAxis)
  {
    v17 = -v17;
  }

  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)_convertPoint:(CGPoint)point fromView:(id)view toView:(id)toView
{
  y = point.y;
  x = point.x;
  toViewCopy = toView;
  [view convertPoint:0 toView:{x, y}];
  [toViewCopy convertPoint:0 fromView:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)containerView
{
  delegate = [(SBIndirectPanGestureRecognizer *)self delegate];
  v4 = [delegate viewForSystemGestureRecognizer:self];

  return v4;
}

- (void)setHysteresis:(double)hysteresis forInputType:(unint64_t)type
{
  if (hysteresis >= 0.0)
  {
    if (type == 1)
    {
      v5 = 448;
    }

    else
    {
      if (type)
      {
        return;
      }

      v5 = 440;
    }

    *(&self->super.super.isa + v5) = hysteresis;
    return;
  }

  v4 = SBLogSystemGesture();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SBIndirectPanGestureRecognizer setHysteresis:v4 forInputType:?];
  }
}

- (double)hysteresisForInputType:(unint64_t)type
{
  if (type)
  {
    result = 0.0;
    if (type != 1)
    {
      return result;
    }

    v4 = &OBJC_IVAR___SBIndirectPanGestureRecognizer__mouseHysteresis;
  }

  else
  {
    v4 = &OBJC_IVAR___SBIndirectPanGestureRecognizer__trackpadHysteresis;
  }

  return *(&self->super.super.isa + *v4);
}

- (void)_updateTranslationWithPointerEventAttributes:(id)attributes activeEdge:(unint64_t)edge
{
  if (!attributes)
  {
    return;
  }

  attributesCopy = attributes;
  v7 = SBPointerEventIsTrackpadEvent(attributesCopy);
  BSContinuousMachTimeNow();
  v9 = &OBJC_IVAR___SBIndirectPanGestureRecognizer__lastKnownMouseEventTimestamp;
  if (v7)
  {
    v9 = &OBJC_IVAR___SBIndirectPanGestureRecognizer__lastKnownTrackpadEventTimestamp;
  }

  *(&self->super.super.isa + *v9) = v8;
  containerView = [(SBIndirectPanGestureRecognizer *)self containerView];
  _screen = [containerView _screen];

  v11 = SBPointerEventAcceleratedRelativePositionForOrientation(attributesCopy, [(SBIndirectPanGestureRecognizer *)self _effectiveOrientation], _screen);
  v13 = v12;

  v14 = v11 * 0.3;
  v15 = v13 * 0.3;
  if (self->_translationAdjustmentBlock && [(SBIndirectPanGestureRecognizer *)self state]>= 1)
  {
    containerView2 = [(SBIndirectPanGestureRecognizer *)self containerView];
    [(SBIndirectPanGestureRecognizer *)self translationInView:containerView2];
    v18 = v17;
    v20 = v19;

    containerView3 = [(SBIndirectPanGestureRecognizer *)self containerView];
    [(SBIndirectPanGestureRecognizer *)self locationInView:containerView3];
    v23 = v22;
    v25 = v24;

    v14 = (*(self->_translationAdjustmentBlock + 2))(v14, v15, v18, v20, v23, v25);
    v15 = v26;
  }

  v27 = [(SBIndirectPanGestureRecognizer *)self _axisForEdge:edge, _screen];
  if (v27 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [SBIndirectPanGestureRecognizer _updateTranslationWithPointerEventAttributes:activeEdge:];
    v28 = v39;
    goto LABEL_12;
  }

  [(SBIndirectPanGestureRecognizer *)self hysteresisForInputType:self->_currentInputType];
  if (v27 != 2)
  {
LABEL_12:
    p_translationWithinHysteresisRange = &self->_translationWithinHysteresisRange;
    goto LABEL_13;
  }

  p_translationWithinHysteresisRange = &self->_translationWithinHysteresisRange.y;
LABEL_13:
  if (v28 <= 0.0 || fabs(p_translationWithinHysteresisRange->x) > v28)
  {
    self->_lastKnownPoint.x = v14 + self->_lastKnownPoint.x;
    p_y = &self->_lastKnownPoint.y;
LABEL_16:
    p_y->x = v15 + p_y->x;
    goto LABEL_17;
  }

  v31 = v14 + self->_translationWithinHysteresisRange.x;
  v32 = v15 + self->_translationWithinHysteresisRange.y;
  self->_translationWithinHysteresisRange.x = v31;
  self->_translationWithinHysteresisRange.y = v32;
  if (v27 == 2)
  {
    v33 = fabs(v32);
    if (v33 <= v28)
    {
      goto LABEL_17;
    }

    v34 = v33 - v28;
    if (v15 >= 0.0)
    {
      v15 = v34;
    }

    else
    {
      v15 = -v34;
    }

    p_y = &self->_lastKnownPoint.y;
    goto LABEL_16;
  }

  if (v27 == 1)
  {
    v35 = fabs(v31);
    if (v35 > v28)
    {
      v36 = v35 - v28;
      if (v14 >= 0.0)
      {
        v15 = v36;
      }

      else
      {
        v15 = -v36;
      }

      p_y = &self->_lastKnownPoint;
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (CGPoint)_pointerModelLocation
{
  WeakRetained = objc_loadWeakRetained(&self->_currentTouch);
  v4 = objc_loadWeakRetained(&self->_orientationProvider);
  v5 = v4;
  if (v4)
  {
    [v4 indirectPanEffectiveInterfaceOrientation];
    v6 = _SBOrientedPointerLocation(self, WeakRetained);
    v8 = v7;
  }

  else
  {
    containerView = [(SBIndirectPanGestureRecognizer *)self containerView];
    _UISystemGestureLocationForTouchInView();
    v6 = v10;
    v8 = v11;
  }

  v12 = v6;
  v13 = v8;
  result.y = v13;
  result.x = v12;
  return result;
}

- (int64_t)_effectiveOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_orientationProvider);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    indirectPanEffectiveInterfaceOrientation = [WeakRetained indirectPanEffectiveInterfaceOrientation];
  }

  else
  {
    indirectPanEffectiveInterfaceOrientation = [SBApp activeInterfaceOrientation];
  }

  v5 = indirectPanEffectiveInterfaceOrientation;

  return v5;
}

- (void)updateTouchHistoryWithTouches:(id)touches
{
  v22 = *MEMORY[0x277D85DE8];
  touchesCopy = touches;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [touchesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(touchesCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        containerView = [(SBIndirectPanGestureRecognizer *)self containerView];
        [(SBIndirectPanGestureRecognizer *)self locationInView:containerView];
        v12 = v11;
        v14 = v13;

        touchHistory = self->_touchHistory;
        [v9 timestamp];
        [(SBTouchHistory *)touchHistory updateWithLocation:v12 timestamp:v14, v16];
        ++v8;
      }

      while (v6 != v8);
      v6 = [touchesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (CGPoint)averageTouchVelocityOverTimeDuration:(double)duration
{
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:duration];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)velocityInView:(id)view
{
  [(SBIndirectPanGestureRecognizer *)self averageTouchVelocityOverTimeDuration:view, 0.0416666667];
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIndirectPanGestureRecognizer *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBIndirectPanGestureRecognizer *)self succinctDescriptionBuilder];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__SBIndirectPanGestureRecognizer_descriptionBuilderWithMultilinePrefix___block_invoke;
  v19[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v20 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:@"configuration" multilinePrefix:prefixCopy block:v19];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __72__SBIndirectPanGestureRecognizer_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v16 = &unk_2783A92D8;
  selfCopy2 = self;
  v7 = v6;
  v18 = v7;
  [v7 appendBodySectionWithName:@"state" multilinePrefix:prefixCopy block:&v13];

  auditHistory = self->_auditHistory;
  if (auditHistory)
  {
    v9 = [(BSAuditHistory *)auditHistory items:v13];
    [v7 appendArraySection:v9 withName:@"AuditHistory" skipIfEmpty:0];
  }

  v10 = v18;
  v11 = v7;

  return v7;
}

void __72__SBIndirectPanGestureRecognizer_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 304) withName:@"edges"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 295) withName:@"shouldRequireGestureToStartAtEdge"];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 296) withName:@"shouldRequirePointerEventMovement"];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 290) withName:@"shouldInvertXAxis"];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 291) withName:@"shouldInvertYAxis"];
  v7 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 352));
  v8 = [v7 appendObject:WeakRetained withName:@"orientationProvider" skipIfNil:1];
}

void __72__SBIndirectPanGestureRecognizer_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 376));
  v2 = *(a1 + 40);
  v3 = objc_loadWeakRetained((*(a1 + 32) + 368));
  v4 = [v2 appendObject:v3 withName:@"currentHoverEvent"];

  v5 = [*(a1 + 40) appendPointer:WeakRetained withName:@"currentTouch"];
  if (WeakRetained)
  {
    v6 = [*(a1 + 40) appendInteger:objc_msgSend(WeakRetained withName:{"phase"), @"currentTouch.phase"}];
  }

  v7 = [*(a1 + 40) appendPoint:@"lastKnownPoint" withName:{*(*(a1 + 32) + 512), *(*(a1 + 32) + 520)}];
  v8 = [*(a1 + 40) appendTimeInterval:@"lastKnownMouseEventTimestamp" withName:1 decomposeUnits:*(*(a1 + 32) + 384)];
  v9 = [*(a1 + 40) appendTimeInterval:@"lastKnownTrackpadEventTimestamp" withName:1 decomposeUnits:*(*(a1 + 32) + 400)];
  v10 = *(*(a1 + 32) + 464);
  if (v10)
  {
    [v10 timeRemaining];
    v12 = v11 == 0.0;
  }

  else
  {
    v12 = 0;
  }

  v13 = [*(a1 + 40) appendBool:v12 withName:@"watchdogFired" ifEqualTo:1];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIndirectPanGestureRecognizer *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  name = [(SBIndirectPanGestureRecognizer *)self name];
  [v3 appendString:name withName:@"name"];

  sb_stringForState = [(UIGestureRecognizer *)self sb_stringForState];
  [v3 appendString:sb_stringForState withName:@"state"];

  return v3;
}

- (unint64_t)_edgeForPointerModelLocation:(CGPoint)location inView:(id)view inset:(double)inset
{
  y = location.y;
  x = location.x;
  [view frame];
  if (y >= v10 - inset)
  {
    return 4;
  }

  if (y <= inset)
  {
    return 1;
  }

  if (x <= inset)
  {
    return 2;
  }

  if (x >= v9 - inset)
  {
    return 8;
  }

  return [(SBIndirectPanGestureRecognizer *)self _isPointerOnTopScreenCorner:x radius:y, SBScreenDisplayCornerRadius()];
}

- (BOOL)_hasTranslationReachedThreshold:(double)threshold withTranslation:(CGPoint)translation forEdge:(unint64_t)edge
{
  result = 0;
  if (edge > 3)
  {
    if (edge == 4)
    {
      shouldInvertYAxis = self->_shouldInvertYAxis;
      v8 = translation.y <= -threshold;
      v10 = translation.y < threshold;
    }

    else
    {
      if (edge != 8)
      {
        return result;
      }

      shouldInvertYAxis = self->_shouldInvertXAxis;
      v8 = translation.x <= -threshold;
      v10 = translation.x < threshold;
    }

    v11 = !v10;
  }

  else
  {
    if (edge == 1)
    {
      shouldInvertYAxis = self->_shouldInvertYAxis;
      v8 = translation.y >= threshold;
      v9 = translation.y > -threshold;
    }

    else
    {
      if (edge != 2)
      {
        return result;
      }

      shouldInvertYAxis = self->_shouldInvertXAxis;
      v8 = translation.x >= threshold;
      v9 = translation.x > -threshold;
    }

    v11 = !v9;
  }

  if (shouldInvertYAxis)
  {
    return v8;
  }

  else
  {
    return v11;
  }
}

- (unint64_t)_axisForEdge:(unint64_t)edge
{
  result = 1;
  if (edge <= 3)
  {
    if (!edge)
    {
      return 0;
    }

    if (edge != 1)
    {
      return result;
    }

    return 2;
  }

  if (edge == 15)
  {
    return 3;
  }

  if (edge == 4)
  {
    return 2;
  }

  return result;
}

- (BOOL)_isPointerOnTopScreenCorner:(CGPoint)corner radius:(double)radius
{
  if (radius != 0.0)
  {
    y = corner.y;
    x = corner.x;
    containerView = [(SBIndirectPanGestureRecognizer *)self containerView];
    [containerView bounds];
    Width = CGRectGetWidth(v14);
    if (x > radius || y > radius)
    {
      if (x < Width - radius || y > radius)
      {
        radius = 0;
LABEL_13:

        return radius;
      }

      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    radius = [(SBIndirectPanGestureRecognizer *)self _isPointOnRoundedCorner:v11 corner:containerView radius:x inView:y, radius];
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)_isPointOnRoundedCorner:(CGPoint)corner corner:(unint64_t)a4 radius:(double)radius inView:(id)view
{
  y = corner.y;
  x = corner.x;
  [(SBIndirectPanGestureRecognizer *)self _centerOfCircleForRoundedCorner:a4 radius:view inView:radius];
  return vabdd_f64(hypot(x - v9, y - v10), radius) <= 4.0;
}

- (CGPoint)_centerOfCircleForRoundedCorner:(unint64_t)corner radius:(double)radius inView:(id)view
{
  [view bounds];
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  if (corner > 3)
  {
    if (corner == 4)
    {
      Height = CGRectGetHeight(*&v7);
      radiusCopy2 = radius;
    }

    else
    {
      if (corner != 8)
      {
LABEL_8:
        radiusCopy2 = *MEMORY[0x277CBF348];
        radius = *(MEMORY[0x277CBF348] + 8);
        goto LABEL_12;
      }

      radiusCopy2 = CGRectGetWidth(*&v7) - radius;
      v20.origin.x = v11;
      v20.origin.y = v12;
      v20.size.width = v13;
      v20.size.height = v14;
      Height = CGRectGetHeight(v20);
    }

    radius = Height - radius;
    goto LABEL_12;
  }

  if (corner == 1)
  {
    radiusCopy2 = radius;
    goto LABEL_12;
  }

  if (corner != 2)
  {
    goto LABEL_8;
  }

  radiusCopy2 = CGRectGetWidth(*&v7) - radius;
LABEL_12:
  v17 = radiusCopy2;
  radiusCopy3 = radius;
  result.y = radiusCopy3;
  result.x = v17;
  return result;
}

- (SBIndirectPanGestureRecognizerOrientationProviding)orientationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_orientationProvider);

  return WeakRetained;
}

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastKnownPoint
{
  x = self->_lastKnownPoint.x;
  y = self->_lastKnownPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEvent)currentHoverEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_currentHoverEvent);

  return WeakRetained;
}

- (UITouch)currentTouch
{
  WeakRetained = objc_loadWeakRetained(&self->_currentTouch);

  return WeakRetained;
}

- (CGPoint)translationWithinHysteresisRange
{
  x = self->_translationWithinHysteresisRange.x;
  y = self->_translationWithinHysteresisRange.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithTarget:(os_log_t)log action:edges:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SBIndirectPanGestureRecognizer initWithTarget:action:edges:]";
}

- (void)_hoverMoved:(void *)a1 withEvent:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 136315138;
  v5 = [v3 UTF8String];
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Indirect pan gesture received hoverMoved with no pointerAttributes! HIDEvent: %s", &v4, 0xCu);
}

- (uint64_t)_updateTranslationWithPointerEventAttributes:activeEdge:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBIndirectPanGestureRecognizer.m" lineNumber:902 description:@"Received an invalid active edge."];

  result = [v1 hysteresisForInputType:v1[43]];
  *v0 = v5;
  return result;
}

@end
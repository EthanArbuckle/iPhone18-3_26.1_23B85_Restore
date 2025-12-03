@interface RPTDefaultPointerAndFingerInteroppingComposer
+ (id)composerWrapping:(id)wrapping withInteractionOptions:(id)options;
- (CGPoint)_currentlySetAbsolutePosition;
- (id)initFromWrapping:(id)wrapping interactionOptions:(id)options;
- (void)_pointerOrFingerFlickAt:(CGPoint)at byDelta:(CGVector)delta duration:(double)duration;
- (void)_pointerOrFingerScrollAt:(CGPoint)at byDelta:(CGVector)delta duration:(double)duration touchDownAndLift:(BOOL)lift;
- (void)overrideInteractionOptions:(id)options withEventActionsBlock:(id)block;
- (void)pointerMoveDelta:(CGPoint)delta duration:(double)duration frequency:(int64_t)frequency;
- (void)pointerMoveToPoint:(CGPoint)point duration:(double)duration;
- (void)pointerMoveToPointIfApplicable:(CGPoint)applicable;
- (void)pointerOrFingerDoubleTap:(CGPoint)tap;
- (void)pointerOrFingerDragWithStartPoint:(CGPoint)point mask:(unint64_t)mask endPoint:(CGPoint)endPoint mask:(unint64_t)a6 duration:(double)duration;
- (void)pointerOrFingerMoveToPoint:(CGPoint)point duration:(double)duration;
- (void)pointerOrFingerTap:(CGPoint)tap;
- (void)pointerOrFingerTapDown:(CGPoint)down;
- (void)pointerOrFingerTapUp:(CGPoint)up;
@end

@implementation RPTDefaultPointerAndFingerInteroppingComposer

+ (id)composerWrapping:(id)wrapping withInteractionOptions:(id)options
{
  optionsCopy = options;
  wrappingCopy = wrapping;
  v8 = [[self alloc] initFromWrapping:wrappingCopy interactionOptions:optionsCopy];

  return v8;
}

- (void)overrideInteractionOptions:(id)options withEventActionsBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  v9 = [objc_opt_class() composerWrapping:self->_forwardingTarget withInteractionOptions:optionsCopy];

  (*(block + 2))(blockCopy, v9);
}

- (id)initFromWrapping:(id)wrapping interactionOptions:(id)options
{
  wrappingCopy = wrapping;
  optionsCopy = options;
  objc_storeStrong(&self->_forwardingTarget, wrapping);
  objc_storeStrong(&self->_interactionOptions, options);
  prefersPointer = [optionsCopy prefersPointer];
  self->__usePointer = prefersPointer;
  self->__currentlySetAbsolutePosition.x = 0.0;
  self->__currentlySetAbsolutePosition.y = 0.0;
  if (prefersPointer)
  {
    [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
    [(RCPEventStreamComposer *)self->_forwardingTarget pointerSetAbsolutePosition:self->__currentlySetAbsolutePosition.x, self->__currentlySetAbsolutePosition.y];
    [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
  }

  return self;
}

- (void)_pointerOrFingerScrollAt:(CGPoint)at byDelta:(CGVector)delta duration:(double)duration touchDownAndLift:(BOOL)lift
{
  dy = delta.dy;
  dx = delta.dx;
  if (self->__usePointer)
  {
    v10 = at.x + delta.dx * 0.5;
    v11 = at.y + delta.dy * 0.5;
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:lift duration:v10, v11, 0.01];
    [(RCPEventStreamComposer *)self->_forwardingTarget pointerPhasedScroll:[(RPTInteractionOptions *)self->_interactionOptions pointerFrequency] duration:-dx frequency:-dy, duration];
  }

  else
  {
    v10 = at.x + delta.dx;
    v11 = at.y + delta.dy;
    forwardingTarget = self->_forwardingTarget;
    if (lift)
    {
      [RCPEventStreamComposer dragWithStartPoint:"dragWithStartPoint:endPoint:duration:" endPoint:? duration:?];
    }

    else
    {
      [(RCPEventStreamComposer *)forwardingTarget moveToPoint:at.x + delta.dx duration:at.y + delta.dy, duration];
    }
  }

  self->__currentlySetAbsolutePosition.x = v10;
  self->__currentlySetAbsolutePosition.y = v11;
}

- (void)_pointerOrFingerFlickAt:(CGPoint)at byDelta:(CGVector)delta duration:(double)duration
{
  dy = delta.dy;
  dx = delta.dx;
  y = at.y;
  x = at.x;
  v31 = *MEMORY[0x277D85DE8];
  if (self->__usePointer)
  {
    v11 = at.x + delta.dx * 0.5;
    v12 = at.y + delta.dy * 0.5;
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:v11 duration:v12, 0.01];
    v13 = RPTLogTestRunning();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v32.x = v11;
      v32.y = v12;
      v14 = _RPTStringFromCGPoint(v32);
      v33.x = dx;
      v33.y = dy;
      v15 = _RPTStringFromCGPoint(v33);
      v23 = 138543874;
      v24 = v14;
      v25 = 2114;
      v26 = v15;
      v27 = 2048;
      durationCopy3 = duration;
      _os_log_impl(&dword_261A17000, v13, OS_LOG_TYPE_DEFAULT, "RPT: -[RPTDefaultPointerAndFingerInteroppingComposer pointerFlickAt: %{public}@ delta: %{public}@ duration: %f", &v23, 0x20u);
    }

    [(RCPEventStreamComposer *)self->_forwardingTarget pointerPhasedFlick:[(RPTInteractionOptions *)self->_interactionOptions pointerFrequency] duration:-dx frequency:-dy, duration];
  }

  else
  {
    v16 = 0.5 - duration;
    v11 = at.x + delta.dx;
    v12 = at.y + delta.dy;
    v17 = RPTLogTestRunning();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16 >= 0.0)
    {
      if (v18)
      {
        v36.x = x;
        v36.y = y;
        v21 = _RPTStringFromCGPoint(v36);
        v37.x = x + dx;
        v37.y = y + dy;
        v22 = _RPTStringFromCGPoint(v37);
        v23 = 138544130;
        v24 = v21;
        v25 = 2114;
        v26 = v22;
        v27 = 2048;
        durationCopy3 = duration;
        v29 = 2048;
        v30 = *&v16;
        _os_log_impl(&dword_261A17000, v17, OS_LOG_TYPE_DEFAULT, "RPT: -[RPTDefaultPointerAndFingerInteroppingComposer touchFlickAt: %{public}@ to: %{public}@ duration: %f excessDuration: %f", &v23, 0x2Au);
      }
    }

    else
    {
      if (v18)
      {
        v34.x = x;
        v34.y = y;
        v19 = _RPTStringFromCGPoint(v34);
        v35.x = x + dx;
        v35.y = y + dy;
        v20 = _RPTStringFromCGPoint(v35);
        v23 = 138544130;
        v24 = v19;
        v25 = 2114;
        v26 = v20;
        v27 = 2048;
        durationCopy3 = duration;
        v29 = 2048;
        v30 = 0x3FD3333333333333;
        _os_log_impl(&dword_261A17000, v17, OS_LOG_TYPE_DEFAULT, "RPT: -[RPTDefaultPointerAndFingerInteroppingComposer touchFlickAt: %{public}@ to: %{public}@ duration: %f excessDuration: %f", &v23, 0x2Au);
      }

      v16 = 0.3;
    }

    [(RCPEventStreamComposer *)self->_forwardingTarget sendFlickWithStartPoint:x endPoint:y duration:x + dx, y + dy, duration];
    [(RCPEventStreamComposer *)self->_forwardingTarget advanceTime:v16];
  }

  self->__currentlySetAbsolutePosition.x = v11;
  self->__currentlySetAbsolutePosition.y = v12;
}

- (void)pointerMoveToPoint:(CGPoint)point duration:(double)duration
{
  y = point.y;
  x = point.x;
  p_currentlySetAbsolutePosition = &self->__currentlySetAbsolutePosition;
  v7 = point.x - self->__currentlySetAbsolutePosition.x;
  v8 = point.y - self->__currentlySetAbsolutePosition.y;
  if (v7 != *MEMORY[0x277CBF348] || v8 != *(MEMORY[0x277CBF348] + 8))
  {
    [(RCPEventStreamComposer *)self->_forwardingTarget pointerMoveDelta:[(RPTInteractionOptions *)self->_interactionOptions pointerFrequency] duration:v7 frequency:v8, duration];
    p_currentlySetAbsolutePosition->x = x;
    p_currentlySetAbsolutePosition->y = y;
  }
}

- (void)pointerMoveDelta:(CGPoint)delta duration:(double)duration frequency:(int64_t)frequency
{
  v6 = *&delta.x;
  [(RCPEventStreamComposer *)self->_forwardingTarget pointerMoveDelta:frequency duration:delta.x frequency:delta.y, duration];
  self->__currentlySetAbsolutePosition = vaddq_f64(vdupq_lane_s64(v6, 0), self->__currentlySetAbsolutePosition);
}

- (void)pointerMoveToPointIfApplicable:(CGPoint)applicable
{
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:applicable.x duration:applicable.y, 2.0];
  }
}

- (void)pointerOrFingerTapDown:(CGPoint)down
{
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:down.x duration:down.y, 0.8];
    forwardingTarget = self->_forwardingTarget;

    [(RCPEventStreamComposer *)forwardingTarget pointerBeginPressingButton:1];
  }

  else
  {
    v5 = self->_forwardingTarget;

    [(RCPEventStreamComposer *)v5 touchDown:down.x, down.y];
  }
}

- (void)pointerOrFingerMoveToPoint:(CGPoint)point duration:(double)duration
{
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:point.x duration:point.y, duration];
  }

  else
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self moveToPoint:point.x duration:point.y, duration];
  }
}

- (void)pointerOrFingerTapUp:(CGPoint)up
{
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:up.x duration:up.y, 1.0];
    forwardingTarget = self->_forwardingTarget;

    [(RCPEventStreamComposer *)forwardingTarget pointerEndPressingButton:1];
  }

  else
  {
    v5 = self->_forwardingTarget;

    [(RCPEventStreamComposer *)v5 liftUp:up.x, up.y];
  }
}

- (void)pointerOrFingerDragWithStartPoint:(CGPoint)point mask:(unint64_t)mask endPoint:(CGPoint)endPoint mask:(unint64_t)a6 duration:(double)duration
{
  y = endPoint.y;
  x = endPoint.x;
  v10 = point.y;
  v11 = point.x;
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapDown:mask, a6, point.x, point.y];
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:x duration:y, duration];

    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapDown:v11, v10];
  }

  else
  {
    forwardingTarget = self->_forwardingTarget;

    [RCPEventStreamComposer dragWithStartPoint:"dragWithStartPoint:mask:endPoint:mask:duration:" mask:mask endPoint:a6 mask:? duration:?];
  }
}

- (void)pointerOrFingerTap:(CGPoint)tap
{
  y = tap.y;
  x = tap.x;
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapDown:tap.x, tap.y];
    [(RCPEventStreamComposer *)self->_forwardingTarget advanceTime:0.5];

    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapUp:x, y];
  }

  else
  {
    forwardingTarget = self->_forwardingTarget;

    [(RCPEventStreamComposer *)forwardingTarget tap:?];
  }
}

- (void)pointerOrFingerDoubleTap:(CGPoint)tap
{
  y = tap.y;
  x = tap.x;
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapUp:tap.x, tap.y];
    [(RCPEventStreamComposer *)self->_forwardingTarget advanceTime:0.5];

    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapUp:x, y];
  }

  else
  {
    forwardingTarget = self->_forwardingTarget;

    [(RCPEventStreamComposer *)forwardingTarget doubleTap:?];
  }
}

- (CGPoint)_currentlySetAbsolutePosition
{
  x = self->__currentlySetAbsolutePosition.x;
  y = self->__currentlySetAbsolutePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
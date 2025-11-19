@interface RPTDefaultPointerAndFingerInteroppingComposer
+ (id)composerWrapping:(id)a3 withInteractionOptions:(id)a4;
- (CGPoint)_currentlySetAbsolutePosition;
- (id)initFromWrapping:(id)a3 interactionOptions:(id)a4;
- (void)_pointerOrFingerFlickAt:(CGPoint)a3 byDelta:(CGVector)a4 duration:(double)a5;
- (void)_pointerOrFingerScrollAt:(CGPoint)a3 byDelta:(CGVector)a4 duration:(double)a5 touchDownAndLift:(BOOL)a6;
- (void)overrideInteractionOptions:(id)a3 withEventActionsBlock:(id)a4;
- (void)pointerMoveDelta:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5;
- (void)pointerMoveToPoint:(CGPoint)a3 duration:(double)a4;
- (void)pointerMoveToPointIfApplicable:(CGPoint)a3;
- (void)pointerOrFingerDoubleTap:(CGPoint)a3;
- (void)pointerOrFingerDragWithStartPoint:(CGPoint)a3 mask:(unint64_t)a4 endPoint:(CGPoint)a5 mask:(unint64_t)a6 duration:(double)a7;
- (void)pointerOrFingerMoveToPoint:(CGPoint)a3 duration:(double)a4;
- (void)pointerOrFingerTap:(CGPoint)a3;
- (void)pointerOrFingerTapDown:(CGPoint)a3;
- (void)pointerOrFingerTapUp:(CGPoint)a3;
@end

@implementation RPTDefaultPointerAndFingerInteroppingComposer

+ (id)composerWrapping:(id)a3 withInteractionOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initFromWrapping:v7 interactionOptions:v6];

  return v8;
}

- (void)overrideInteractionOptions:(id)a3 withEventActionsBlock:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() composerWrapping:self->_forwardingTarget withInteractionOptions:v8];

  (*(a4 + 2))(v7, v9);
}

- (id)initFromWrapping:(id)a3 interactionOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_forwardingTarget, a3);
  objc_storeStrong(&self->_interactionOptions, a4);
  v9 = [v8 prefersPointer];
  self->__usePointer = v9;
  self->__currentlySetAbsolutePosition.x = 0.0;
  self->__currentlySetAbsolutePosition.y = 0.0;
  if (v9)
  {
    [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
    [(RCPEventStreamComposer *)self->_forwardingTarget pointerSetAbsolutePosition:self->__currentlySetAbsolutePosition.x, self->__currentlySetAbsolutePosition.y];
    [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
  }

  return self;
}

- (void)_pointerOrFingerScrollAt:(CGPoint)a3 byDelta:(CGVector)a4 duration:(double)a5 touchDownAndLift:(BOOL)a6
{
  dy = a4.dy;
  dx = a4.dx;
  if (self->__usePointer)
  {
    v10 = a3.x + a4.dx * 0.5;
    v11 = a3.y + a4.dy * 0.5;
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:a6 duration:v10, v11, 0.01];
    [(RCPEventStreamComposer *)self->_forwardingTarget pointerPhasedScroll:[(RPTInteractionOptions *)self->_interactionOptions pointerFrequency] duration:-dx frequency:-dy, a5];
  }

  else
  {
    v10 = a3.x + a4.dx;
    v11 = a3.y + a4.dy;
    forwardingTarget = self->_forwardingTarget;
    if (a6)
    {
      [RCPEventStreamComposer dragWithStartPoint:"dragWithStartPoint:endPoint:duration:" endPoint:? duration:?];
    }

    else
    {
      [(RCPEventStreamComposer *)forwardingTarget moveToPoint:a3.x + a4.dx duration:a3.y + a4.dy, a5];
    }
  }

  self->__currentlySetAbsolutePosition.x = v10;
  self->__currentlySetAbsolutePosition.y = v11;
}

- (void)_pointerOrFingerFlickAt:(CGPoint)a3 byDelta:(CGVector)a4 duration:(double)a5
{
  dy = a4.dy;
  dx = a4.dx;
  y = a3.y;
  x = a3.x;
  v31 = *MEMORY[0x277D85DE8];
  if (self->__usePointer)
  {
    v11 = a3.x + a4.dx * 0.5;
    v12 = a3.y + a4.dy * 0.5;
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
      v28 = a5;
      _os_log_impl(&dword_261A17000, v13, OS_LOG_TYPE_DEFAULT, "RPT: -[RPTDefaultPointerAndFingerInteroppingComposer pointerFlickAt: %{public}@ delta: %{public}@ duration: %f", &v23, 0x20u);
    }

    [(RCPEventStreamComposer *)self->_forwardingTarget pointerPhasedFlick:[(RPTInteractionOptions *)self->_interactionOptions pointerFrequency] duration:-dx frequency:-dy, a5];
  }

  else
  {
    v16 = 0.5 - a5;
    v11 = a3.x + a4.dx;
    v12 = a3.y + a4.dy;
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
        v28 = a5;
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
        v28 = a5;
        v29 = 2048;
        v30 = 0x3FD3333333333333;
        _os_log_impl(&dword_261A17000, v17, OS_LOG_TYPE_DEFAULT, "RPT: -[RPTDefaultPointerAndFingerInteroppingComposer touchFlickAt: %{public}@ to: %{public}@ duration: %f excessDuration: %f", &v23, 0x2Au);
      }

      v16 = 0.3;
    }

    [(RCPEventStreamComposer *)self->_forwardingTarget sendFlickWithStartPoint:x endPoint:y duration:x + dx, y + dy, a5];
    [(RCPEventStreamComposer *)self->_forwardingTarget advanceTime:v16];
  }

  self->__currentlySetAbsolutePosition.x = v11;
  self->__currentlySetAbsolutePosition.y = v12;
}

- (void)pointerMoveToPoint:(CGPoint)a3 duration:(double)a4
{
  y = a3.y;
  x = a3.x;
  p_currentlySetAbsolutePosition = &self->__currentlySetAbsolutePosition;
  v7 = a3.x - self->__currentlySetAbsolutePosition.x;
  v8 = a3.y - self->__currentlySetAbsolutePosition.y;
  if (v7 != *MEMORY[0x277CBF348] || v8 != *(MEMORY[0x277CBF348] + 8))
  {
    [(RCPEventStreamComposer *)self->_forwardingTarget pointerMoveDelta:[(RPTInteractionOptions *)self->_interactionOptions pointerFrequency] duration:v7 frequency:v8, a4];
    p_currentlySetAbsolutePosition->x = x;
    p_currentlySetAbsolutePosition->y = y;
  }
}

- (void)pointerMoveDelta:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5
{
  v6 = *&a3.x;
  [(RCPEventStreamComposer *)self->_forwardingTarget pointerMoveDelta:a5 duration:a3.x frequency:a3.y, a4];
  self->__currentlySetAbsolutePosition = vaddq_f64(vdupq_lane_s64(v6, 0), self->__currentlySetAbsolutePosition);
}

- (void)pointerMoveToPointIfApplicable:(CGPoint)a3
{
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:a3.x duration:a3.y, 2.0];
  }
}

- (void)pointerOrFingerTapDown:(CGPoint)a3
{
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:a3.x duration:a3.y, 0.8];
    forwardingTarget = self->_forwardingTarget;

    [(RCPEventStreamComposer *)forwardingTarget pointerBeginPressingButton:1];
  }

  else
  {
    v5 = self->_forwardingTarget;

    [(RCPEventStreamComposer *)v5 touchDown:a3.x, a3.y];
  }
}

- (void)pointerOrFingerMoveToPoint:(CGPoint)a3 duration:(double)a4
{
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:a3.x duration:a3.y, a4];
  }

  else
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self moveToPoint:a3.x duration:a3.y, a4];
  }
}

- (void)pointerOrFingerTapUp:(CGPoint)a3
{
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:a3.x duration:a3.y, 1.0];
    forwardingTarget = self->_forwardingTarget;

    [(RCPEventStreamComposer *)forwardingTarget pointerEndPressingButton:1];
  }

  else
  {
    v5 = self->_forwardingTarget;

    [(RCPEventStreamComposer *)v5 liftUp:a3.x, a3.y];
  }
}

- (void)pointerOrFingerDragWithStartPoint:(CGPoint)a3 mask:(unint64_t)a4 endPoint:(CGPoint)a5 mask:(unint64_t)a6 duration:(double)a7
{
  y = a5.y;
  x = a5.x;
  v10 = a3.y;
  v11 = a3.x;
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapDown:a4, a6, a3.x, a3.y];
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerMoveToPoint:x duration:y, a7];

    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapDown:v11, v10];
  }

  else
  {
    forwardingTarget = self->_forwardingTarget;

    [RCPEventStreamComposer dragWithStartPoint:"dragWithStartPoint:mask:endPoint:mask:duration:" mask:a4 endPoint:a6 mask:? duration:?];
  }
}

- (void)pointerOrFingerTap:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapDown:a3.x, a3.y];
    [(RCPEventStreamComposer *)self->_forwardingTarget advanceTime:0.5];

    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapUp:x, y];
  }

  else
  {
    forwardingTarget = self->_forwardingTarget;

    [(RCPEventStreamComposer *)forwardingTarget tap:?];
  }
}

- (void)pointerOrFingerDoubleTap:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->__usePointer)
  {
    [(RPTDefaultPointerAndFingerInteroppingComposer *)self pointerOrFingerTapUp:a3.x, a3.y];
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
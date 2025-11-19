@interface RCPPointerTrackingChildEventStream
- (CAMediaTimingFunction)pointerCurveFunction;
- (CGPoint)currentPointerLocation;
- (CGPoint)orientedDestinationPoint:(CGPoint)a3;
- (CGPoint)orientedNormalPoint:(CGPoint)a3;
- (CGVector)_deltaToPoint:(CGPoint)a3;
- (RCPPointerTrackingChildEventStream)initWithCurrentPointerLocation:(CGPoint)a3;
- (id)finalizeEventStream;
- (int64_t)currentInterfaceOrientation;
- (unint64_t)_currentMachTime;
- (void)_addIOHIDEventToProcessingBuffer:(__IOHIDEvent *)a3;
- (void)moveByDelta:(CGVector)a3 duration:(double)a4;
- (void)movePointerByDelta:(CGVector)a3;
- (void)moveToPoint:(CGPoint)a3 duration:(double)a4;
@end

@implementation RCPPointerTrackingChildEventStream

- (CAMediaTimingFunction)pointerCurveFunction
{
  pointerCurveFunction = self->_pointerCurveFunction;
  if (!pointerCurveFunction)
  {
    v8 = RCPMediaTimingFunctionForInputType(0, 1, v2, v3, v4, v5);
    v9 = self->_pointerCurveFunction;
    self->_pointerCurveFunction = v8;

    pointerCurveFunction = self->_pointerCurveFunction;
  }

  return pointerCurveFunction;
}

- (RCPPointerTrackingChildEventStream)initWithCurrentPointerLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v9.receiver = self;
  v9.super_class = RCPPointerTrackingChildEventStream;
  v5 = [(RCPPointerTrackingChildEventStream *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    processingEventBuffer = v5->_processingEventBuffer;
    v5->_processingEventBuffer = v6;

    v5->_currentTimeOffset = 0.0;
    v5->_frequency = 60.0;
    v5->_currentPointerLocation.x = x;
    v5->_currentPointerLocation.y = y;
  }

  return v5;
}

- (id)finalizeEventStream
{
  v3 = [(NSMutableArray *)self->_processingEventBuffer copy];
  [(NSMutableArray *)self->_processingEventBuffer removeAllObjects];

  return v3;
}

- (void)moveToPoint:(CGPoint)a3 duration:(double)a4
{
  [(RCPPointerTrackingChildEventStream *)self _deltaToPoint:a3.x, a3.y];

  [RCPPointerTrackingChildEventStream moveByDelta:"moveByDelta:duration:" duration:?];
}

- (void)moveByDelta:(CGVector)a3 duration:(double)a4
{
  dy = a3.dy;
  dx = a3.dx;
  frequency = self->_frequency;
  v8 = vcvtpd_s64_f64(frequency * a4);
  v9 = [(RCPPointerTrackingChildEventStream *)self pointerCurveFunction];
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = 1.0 / frequency;
    v12 = v9;
    do
    {
      [v12 rcp_solveForDelta:v8 withSteps:v10 step:{dx, dy}];
      [(RCPPointerTrackingChildEventStream *)self movePointerByDelta:?];
      [(RCPPointerTrackingChildEventStream *)self advanceTime:v11];
      v9 = v12;
      ++v10;
    }

    while (v8 != v10);
  }
}

- (void)movePointerByDelta:(CGVector)a3
{
  dy = a3.dy;
  dx = a3.dx;
  [(RCPPointerTrackingChildEventStream *)self _currentMachTime];
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  [(RCPPointerTrackingChildEventStream *)self _addIOHIDEventToProcessingBuffer:RelativePointerEvent];
  CFRelease(RelativePointerEvent);
  v7 = dx + self->_currentPointerLocation.x;
  v8 = dy + self->_currentPointerLocation.y;

  [(RCPPointerTrackingChildEventStream *)self setCurrentPointerLocation:v7, v8];
}

- (CGVector)_deltaToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(RCPPointerTrackingChildEventStream *)self currentPointerLocation];
  v7 = x - v6;
  [(RCPPointerTrackingChildEventStream *)self currentPointerLocation];
  v9 = y - v8;

  [(RCPPointerTrackingChildEventStream *)self orientedDestinationPoint:v7, v9];
  result.dy = v11;
  result.dx = v10;
  return result;
}

- (unint64_t)_currentMachTime
{
  v3 = [(RCPPointerTrackingChildEventStream *)self environment];
  v4 = [v3 machAbsoluteTimeForTimeInterval:self->_currentTimeOffset];

  return v4;
}

- (void)_addIOHIDEventToProcessingBuffer:(__IOHIDEvent *)a3
{
  v4 = [RCPEvent eventWithHIDEvent:a3 deliveryTimeStamp:[(RCPPointerTrackingChildEventStream *)self _currentMachTime] senderProperties:self->_senderProperties preActions:0];
  [(NSMutableArray *)self->_processingEventBuffer addObject:v4];
}

- (int64_t)currentInterfaceOrientation
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getFBSOrientationObserverClass_softClass;
  v11 = getFBSOrientationObserverClass_softClass;
  if (!getFBSOrientationObserverClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getFBSOrientationObserverClass_block_invoke;
    v7[3] = &unk_279AF0D80;
    v7[4] = &v8;
    __getFBSOrientationObserverClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = objc_alloc_init(v2);
  v5 = [v4 activeInterfaceOrientation];
  [v4 invalidate];

  return v5;
}

- (CGPoint)orientedDestinationPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = RCPLogPlayback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCPPointerTrackingChildEventStream orientedDestinationPoint:v6];
  }

  v7 = [(RCPPointerTrackingChildEventStream *)self currentInterfaceOrientation];
  v8 = -y;
  v9 = -x;
  if (v7 == 2)
  {
    v10 = -x;
  }

  else
  {
    v10 = x;
  }

  if (v7 == 2)
  {
    v11 = -y;
  }

  else
  {
    v11 = y;
  }

  if (v7 == 3)
  {
    v10 = y;
  }

  else
  {
    v9 = v11;
  }

  if (v7 == 4)
  {
    v9 = x;
  }

  else
  {
    v8 = v10;
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)orientedNormalPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = RCPLogPlayback();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RCPPointerTrackingChildEventStream orientedNormalPoint:v6];
  }

  v7 = [(RCPPointerTrackingChildEventStream *)self currentInterfaceOrientation];
  if (v7 == 2)
  {
    v8 = 1.0 - x;
  }

  else
  {
    v8 = x;
  }

  if (v7 == 2)
  {
    v9 = 1.0 - y;
  }

  else
  {
    v9 = y;
  }

  if (v7 == 3)
  {
    v8 = y;
    v9 = 1.0 - x;
  }

  if (v7 == 4)
  {
    v10 = 1.0 - y;
  }

  else
  {
    v10 = v8;
  }

  if (v7 == 4)
  {
    v11 = x;
  }

  else
  {
    v11 = v9;
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)currentPointerLocation
{
  x = self->_currentPointerLocation.x;
  y = self->_currentPointerLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
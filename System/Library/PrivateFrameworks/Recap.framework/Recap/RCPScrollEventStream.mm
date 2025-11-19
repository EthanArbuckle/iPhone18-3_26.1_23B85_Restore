@interface RCPScrollEventStream
- (CAMediaTimingFunction)pointerCurveFunction;
- (RCPScrollEventStream)init;
- (id)_eventWithDelta:(CGVector)a3 phase:(unsigned __int16)a4;
- (id)finalizeEventStream;
- (void)_updateAmplitudeBy:(CGVector)a3;
- (void)advanceByDelta:(CGVector)a3 duration:(double)a4;
@end

@implementation RCPScrollEventStream

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

- (RCPScrollEventStream)init
{
  v6.receiver = self;
  v6.super_class = RCPScrollEventStream;
  v2 = [(RCPScrollEventStream *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    events = v2->_events;
    v2->_events = v3;

    v2->_currentTimeOffset = 0.0;
    *&v2->_frequency = xmmword_261A03DD0;
    v2->_scrollOptions = 69;
  }

  return v2;
}

- (id)finalizeEventStream
{
  v3 = [(RCPScrollEventStream *)self _eventWithDelta:4 phase:0.0, 0.0];
  [(NSMutableArray *)self->_events insertObject:self->_cachedFirstEvent atIndex:0];
  [(NSMutableArray *)self->_events addObject:v3];
  v4 = [(NSMutableArray *)self->_events copy];
  [(NSMutableArray *)self->_events removeAllObjects];

  return v4;
}

- (void)advanceByDelta:(CGVector)a3 duration:(double)a4
{
  dy = a3.dy;
  dx = a3.dx;
  frequency = self->_frequency;
  v8 = 1.0 / frequency;
  v9 = vcvtpd_s64_f64(frequency * a4);
  v10 = [(RCPScrollEventStream *)self _eventWithDelta:1 phase:0.0, 0.0];
  cachedFirstEvent = self->_cachedFirstEvent;
  self->_cachedFirstEvent = v10;

  [(RCPScrollEventStream *)self advanceTime:v8];
  v12 = [(RCPScrollEventStream *)self pointerCurveFunction];
  if (v9 >= 1)
  {
    v13 = 0;
    v14 = v12;
    do
    {
      [v14 rcp_solveForDelta:v9 withSteps:v13 step:{dx, dy}];
      [(RCPScrollEventStream *)self _updateAmplitudeBy:?];
      [(RCPScrollEventStream *)self advanceTime:v8];
      v12 = v14;
      ++v13;
    }

    while (v9 != v13);
  }
}

- (void)_updateAmplitudeBy:(CGVector)a3
{
  v4 = [(RCPScrollEventStream *)self _eventWithDelta:2 phase:a3.dx, a3.dy];
  [(NSMutableArray *)self->_events addObject:v4];
}

- (id)_eventWithDelta:(CGVector)a3 phase:(unsigned __int16)a4
{
  v5 = [(RCPEventEnvironment *)self->_environment machAbsoluteTimeForTimeInterval:self->_currentTimeOffset];
  ScrollEvent = IOHIDEventCreateScrollEvent();
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  IOHIDEventSetPhase();
  IOHIDEventAppendEvent();
  CFRelease(ScrollEvent);
  senderProperties = self->_senderProperties;

  return [RCPEvent eventWithHIDEvent:RelativePointerEvent deliveryTimeStamp:v5 senderProperties:senderProperties preActions:0];
}

@end
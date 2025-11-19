@interface RCPSyntheticFluidSwipeEventStream
- (RCPSyntheticFluidSwipeEventStream)initWithEventType:(unsigned int)a3 flavor:(unsigned __int16)a4 motion:(unsigned __int16)a5;
- (id)finalizeEventStream;
- (unint64_t)_currentMachTime;
- (void)addToBuffer:(__IOHIDEvent *)a3;
- (void)advanceProgressByDelta:(double)a3 duration:(double)a4;
- (void)updateProgressTo:(double)a3;
@end

@implementation RCPSyntheticFluidSwipeEventStream

- (RCPSyntheticFluidSwipeEventStream)initWithEventType:(unsigned int)a3 flavor:(unsigned __int16)a4 motion:(unsigned __int16)a5
{
  v12.receiver = self;
  v12.super_class = RCPSyntheticFluidSwipeEventStream;
  v8 = [(RCPSyntheticFluidSwipeEventStream *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    processingEventBuffer = v8->_processingEventBuffer;
    v8->_processingEventBuffer = v9;

    v8->_currentTimeOffset = 0.0;
    v8->_eventType = a3;
    v8->_flavor = a4;
    v8->_motion = a5;
    v8->_frequency = 60.0;
    v8->_hasCreatedFirstEvent = 0;
  }

  return v8;
}

- (id)finalizeEventStream
{
  v3 = [(NSMutableArray *)self->_processingEventBuffer lastObject];
  v4 = v3;
  if (v3)
  {
    [v3 hidEvent];
    IOHIDEventSetPhase();
  }

  v5 = [(NSMutableArray *)self->_processingEventBuffer copy];
  [(NSMutableArray *)self->_processingEventBuffer removeAllObjects];

  return v5;
}

- (void)advanceProgressByDelta:(double)a3 duration:(double)a4
{
  frequency = self->_frequency;
  v5 = frequency * a4;
  v6 = vcvtpd_s64_f64(v5);
  if (v6 >= 1)
  {
    v8 = 1.0 / frequency;
    v9 = a3 / ceil(v5);
    do
    {
      [(RCPSyntheticFluidSwipeEventStream *)self updateProgressTo:v9 + self->_progress];
      [(RCPSyntheticFluidSwipeEventStream *)self advanceTime:v8];
      --v6;
    }

    while (v6);
  }
}

- (void)updateProgressTo:(double)a3
{
  [(RCPSyntheticFluidSwipeEventStream *)self setProgress:a3];
  [(RCPSyntheticFluidSwipeEventStream *)self _currentMachTime];
  eventType = self->_eventType;
  [(RCPSyntheticFluidSwipeEventStream *)self progress];
  v5 = IOHIDEventCreate();
  if (v5 && (eventType == 27 || eventType == 23 || eventType == 16))
  {
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetIntegerValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
    IOHIDEventSetDoubleValue();
  }

  [(RCPSyntheticFluidSwipeEventStream *)self addToBuffer:v5];

  CFRelease(v5);
}

- (void)addToBuffer:(__IOHIDEvent *)a3
{
  if (!self->_hasCreatedFirstEvent)
  {
    self->_hasCreatedFirstEvent = 1;
  }

  IOHIDEventSetPhase();
  v5 = [(RCPSyntheticFluidSwipeEventStream *)self _currentMachTime];
  v6 = [(RCPSyntheticFluidSwipeEventStream *)self senderProperties];
  v7 = [RCPEvent eventWithHIDEvent:a3 deliveryTimeStamp:v5 senderProperties:v6 preActions:0];

  [(NSMutableArray *)self->_processingEventBuffer addObject:v7];
}

- (unint64_t)_currentMachTime
{
  v3 = [(RCPSyntheticFluidSwipeEventStream *)self environment];
  v4 = [v3 machAbsoluteTimeForTimeInterval:self->_currentTimeOffset];

  return v4;
}

@end
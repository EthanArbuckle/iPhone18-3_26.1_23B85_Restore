@interface RCPSyntheticFluidSwipeEventStream
- (RCPSyntheticFluidSwipeEventStream)initWithEventType:(unsigned int)type flavor:(unsigned __int16)flavor motion:(unsigned __int16)motion;
- (id)finalizeEventStream;
- (unint64_t)_currentMachTime;
- (void)addToBuffer:(__IOHIDEvent *)buffer;
- (void)advanceProgressByDelta:(double)delta duration:(double)duration;
- (void)updateProgressTo:(double)to;
@end

@implementation RCPSyntheticFluidSwipeEventStream

- (RCPSyntheticFluidSwipeEventStream)initWithEventType:(unsigned int)type flavor:(unsigned __int16)flavor motion:(unsigned __int16)motion
{
  v12.receiver = self;
  v12.super_class = RCPSyntheticFluidSwipeEventStream;
  v8 = [(RCPSyntheticFluidSwipeEventStream *)&v12 init];
  if (v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    processingEventBuffer = v8->_processingEventBuffer;
    v8->_processingEventBuffer = array;

    v8->_currentTimeOffset = 0.0;
    v8->_eventType = type;
    v8->_flavor = flavor;
    v8->_motion = motion;
    v8->_frequency = 60.0;
    v8->_hasCreatedFirstEvent = 0;
  }

  return v8;
}

- (id)finalizeEventStream
{
  lastObject = [(NSMutableArray *)self->_processingEventBuffer lastObject];
  v4 = lastObject;
  if (lastObject)
  {
    [lastObject hidEvent];
    IOHIDEventSetPhase();
  }

  v5 = [(NSMutableArray *)self->_processingEventBuffer copy];
  [(NSMutableArray *)self->_processingEventBuffer removeAllObjects];

  return v5;
}

- (void)advanceProgressByDelta:(double)delta duration:(double)duration
{
  frequency = self->_frequency;
  v5 = frequency * duration;
  v6 = vcvtpd_s64_f64(v5);
  if (v6 >= 1)
  {
    v8 = 1.0 / frequency;
    v9 = delta / ceil(v5);
    do
    {
      [(RCPSyntheticFluidSwipeEventStream *)self updateProgressTo:v9 + self->_progress];
      [(RCPSyntheticFluidSwipeEventStream *)self advanceTime:v8];
      --v6;
    }

    while (v6);
  }
}

- (void)updateProgressTo:(double)to
{
  [(RCPSyntheticFluidSwipeEventStream *)self setProgress:to];
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

- (void)addToBuffer:(__IOHIDEvent *)buffer
{
  if (!self->_hasCreatedFirstEvent)
  {
    self->_hasCreatedFirstEvent = 1;
  }

  IOHIDEventSetPhase();
  _currentMachTime = [(RCPSyntheticFluidSwipeEventStream *)self _currentMachTime];
  senderProperties = [(RCPSyntheticFluidSwipeEventStream *)self senderProperties];
  v7 = [RCPEvent eventWithHIDEvent:buffer deliveryTimeStamp:_currentMachTime senderProperties:senderProperties preActions:0];

  [(NSMutableArray *)self->_processingEventBuffer addObject:v7];
}

- (unint64_t)_currentMachTime
{
  environment = [(RCPSyntheticFluidSwipeEventStream *)self environment];
  v4 = [environment machAbsoluteTimeForTimeInterval:self->_currentTimeOffset];

  return v4;
}

@end
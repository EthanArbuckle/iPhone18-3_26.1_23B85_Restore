@interface RCPEventStreamRecorder
+ (id)recorderWithConfiguration:(id)configuration;
- (void)_finalizePointerEvents;
- (void)dealloc;
- (void)enqueueEvent:(id)event;
- (void)setStartLocationEvent:(__IOHIDEvent *)event;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation RCPEventStreamRecorder

+ (id)recorderWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_opt_new();
  v5 = v4[4];
  v4[4] = configurationCopy;
  v6 = configurationCopy;

  v7 = objc_alloc_init(RCPCoreAnalyticsBackedAnalyticsEventSender);
  [v4 setAnalyticsEventSender:v7];

  return v4;
}

- (void)dealloc
{
  startLocationEvent = self->_startLocationEvent;
  if (startLocationEvent)
  {
    CFRelease(startLocationEvent);
  }

  v4.receiver = self;
  v4.super_class = RCPEventStreamRecorder;
  [(RCPEventStreamRecorder *)&v4 dealloc];
}

- (void)setStartLocationEvent:(__IOHIDEvent *)event
{
  startLocationEvent = self->_startLocationEvent;
  if (startLocationEvent)
  {
    CFRelease(startLocationEvent);
  }

  Copy = IOHIDEventCreateCopy();
  self->_startLocationEvent = Copy;

  CFRetain(Copy);
}

- (void)startRecording
{
  [(RCPEventStreamRecorder *)self setStartTimestamp:mach_absolute_time()];
  if (![(RCPEventStreamRecorder *)self state])
  {
    [(RCPEventStreamRecorder *)self setState:1];

    [RCPRecorder registerEventStreamRecorder:self];
  }
}

- (void)stopRecording
{
  [(RCPEventStreamRecorder *)self finalizeEvents];
  [(RCPEventStreamRecorder *)self setState:2];
  analyticsEventSender = [(RCPEventStreamRecorder *)self analyticsEventSender];
  [analyticsEventSender sendEvent:0];

  [RCPRecorder unregisterEventStreamRecorder:self];
}

- (void)enqueueEvent:(id)event
{
  eventCopy = event;
  rawEvents = [(RCPEventStream *)self rawEvents];
  [rawEvents addObject:eventCopy];

  config = [(RCPEventStreamRecorder *)self config];
  [config maxStreamDuration];
  v7 = v6;

  v8 = eventCopy;
  if (v7 > 0.0)
  {
    timestamp = [eventCopy timestamp];
    rawEvents2 = [(RCPEventStream *)self rawEvents];
    v11 = [rawEvents2 count];

    rawEvents3 = [(RCPEventStream *)self rawEvents];
    v13 = [rawEvents3 count];

    if (v13)
    {
      v14 = 0;
      while (1)
      {
        rawEvents4 = [(RCPEventStream *)self rawEvents];
        v16 = [rawEvents4 objectAtIndexedSubscript:v14];
        v17 = RCPTimeIntervalFromMachTimestamp(timestamp - [v16 timestamp]);

        if (v17 < v7)
        {
          break;
        }

        ++v14;
        rawEvents5 = [(RCPEventStream *)self rawEvents];
        v19 = [rawEvents5 count];

        if (v14 >= v19)
        {
          goto LABEL_8;
        }
      }

      v11 = v14;
    }

LABEL_8:
    rawEvents6 = [(RCPEventStream *)self rawEvents];
    [rawEvents6 removeObjectsInRange:{0, v11}];

    v8 = eventCopy;
  }
}

- (void)_finalizePointerEvents
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_startLocationEvent)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    rawEvents = [(RCPEventStream *)self rawEvents];
    v4 = [rawEvents countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(rawEvents);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        [v8 hidEvent];
        if (IOHIDEventGetType() == 17)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [rawEvents countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      v9 = v8;

      if (!v9)
      {
        return;
      }

      [v9 hidEvent];
      IOHIDEventGetSenderID();
      IOHIDEventSetSenderID();
      IOHIDEventGetTimeStamp();
      IOHIDEventSetTimeStamp();
      startLocationEvent = self->_startLocationEvent;
      deliveryTimestamp = [v9 deliveryTimestamp];
      senderProperties = [v9 senderProperties];
      v13 = [RCPEvent eventWithHIDEvent:startLocationEvent deliveryTimeStamp:deliveryTimestamp senderProperties:senderProperties preActions:0];

      rawEvents2 = [(RCPEventStream *)self rawEvents];
      [rawEvents2 insertObject:v13 atIndex:0];

      rawEvents = v9;
    }

LABEL_13:
  }
}

@end
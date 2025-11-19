@interface RCPEventStreamRecorder
+ (id)recorderWithConfiguration:(id)a3;
- (void)_finalizePointerEvents;
- (void)dealloc;
- (void)enqueueEvent:(id)a3;
- (void)setStartLocationEvent:(__IOHIDEvent *)a3;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation RCPEventStreamRecorder

+ (id)recorderWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4[4];
  v4[4] = v3;
  v6 = v3;

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

- (void)setStartLocationEvent:(__IOHIDEvent *)a3
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
  v3 = [(RCPEventStreamRecorder *)self analyticsEventSender];
  [v3 sendEvent:0];

  [RCPRecorder unregisterEventStreamRecorder:self];
}

- (void)enqueueEvent:(id)a3
{
  v21 = a3;
  v4 = [(RCPEventStream *)self rawEvents];
  [v4 addObject:v21];

  v5 = [(RCPEventStreamRecorder *)self config];
  [v5 maxStreamDuration];
  v7 = v6;

  v8 = v21;
  if (v7 > 0.0)
  {
    v9 = [v21 timestamp];
    v10 = [(RCPEventStream *)self rawEvents];
    v11 = [v10 count];

    v12 = [(RCPEventStream *)self rawEvents];
    v13 = [v12 count];

    if (v13)
    {
      v14 = 0;
      while (1)
      {
        v15 = [(RCPEventStream *)self rawEvents];
        v16 = [v15 objectAtIndexedSubscript:v14];
        v17 = RCPTimeIntervalFromMachTimestamp(v9 - [v16 timestamp]);

        if (v17 < v7)
        {
          break;
        }

        ++v14;
        v18 = [(RCPEventStream *)self rawEvents];
        v19 = [v18 count];

        if (v14 >= v19)
        {
          goto LABEL_8;
        }
      }

      v11 = v14;
    }

LABEL_8:
    v20 = [(RCPEventStream *)self rawEvents];
    [v20 removeObjectsInRange:{0, v11}];

    v8 = v21;
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
    v3 = [(RCPEventStream *)self rawEvents];
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        [v8 hidEvent];
        if (IOHIDEventGetType() == 17)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
      v11 = [v9 deliveryTimestamp];
      v12 = [v9 senderProperties];
      v13 = [RCPEvent eventWithHIDEvent:startLocationEvent deliveryTimeStamp:v11 senderProperties:v12 preActions:0];

      v14 = [(RCPEventStream *)self rawEvents];
      [v14 insertObject:v13 atIndex:0];

      v3 = v9;
    }

LABEL_13:
  }
}

@end
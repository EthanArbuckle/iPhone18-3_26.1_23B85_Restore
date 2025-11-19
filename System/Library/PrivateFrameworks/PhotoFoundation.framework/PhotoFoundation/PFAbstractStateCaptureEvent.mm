@interface PFAbstractStateCaptureEvent
+ (unint64_t)currentThreadID;
- (void)end;
- (void)reset;
- (void)setInitialValues;
@end

@implementation PFAbstractStateCaptureEvent

- (void)setInitialValues
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(PFAbstractStateCaptureEvent *)self setStartTimestamp:?];
  [(PFAbstractStateCaptureEvent *)self setQosClass:qos_class_self()];
  v3 = +[PFAbstractStateCaptureEvent currentThreadID];

  [(PFAbstractStateCaptureEvent *)self setThreadID:v3];
}

+ (unint64_t)currentThreadID
{
  v3 = 0;
  pthread_threadid_np(0, &v3);
  return v3;
}

- (void)end
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

  [(PFAbstractStateCaptureEvent *)self setEndTimestamp:?];
}

- (void)reset
{
  [(PFAbstractStateCaptureEvent *)self setStartTimestamp:0.0];
  [(PFAbstractStateCaptureEvent *)self setQosClass:0];
  [(PFAbstractStateCaptureEvent *)self setThreadID:0];

  [(PFAbstractStateCaptureEvent *)self setEndTimestamp:0.0];
}

@end
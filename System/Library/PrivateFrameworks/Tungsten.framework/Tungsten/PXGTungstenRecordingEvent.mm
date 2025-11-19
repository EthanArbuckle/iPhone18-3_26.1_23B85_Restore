@interface PXGTungstenRecordingEvent
- (PXGTungstenRecordingEvent)initWithComponent:(int64_t)a3 eventName:(id)a4;
- (id)serializable;
@end

@implementation PXGTungstenRecordingEvent

- (id)serializable
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGTungstenRecording.m" lineNumber:100 description:{@"Method %s is a responsibility of subclass %@", "-[PXGTungstenRecordingEvent serializable]", v6}];

  abort();
}

- (PXGTungstenRecordingEvent)initWithComponent:(int64_t)a3 eventName:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PXGTungstenRecordingEvent;
  v8 = [(PXGTungstenRecordingEvent *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_component = a3;
    objc_storeStrong(&v8->_eventName, a4);
    v10 = [MEMORY[0x277CCACC8] currentThread];
    v11 = [v10 description];
    threadDescription = v9->_threadDescription;
    v9->_threadDescription = v11;

    v9->_timestamp = CFAbsoluteTimeGetCurrent();
  }

  return v9;
}

@end
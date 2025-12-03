@interface PXGEngineRecordingUpdateEndEvent
+ (id)eventWithUpdated:(BOOL)updated;
- (PXGEngineRecordingUpdateEndEvent)initWithUpdated:(BOOL)updated;
@end

@implementation PXGEngineRecordingUpdateEndEvent

- (PXGEngineRecordingUpdateEndEvent)initWithUpdated:(BOOL)updated
{
  updatedCopy = updated;
  v8.receiver = self;
  v8.super_class = PXGEngineRecordingUpdateEndEvent;
  v4 = [(PXGTungstenRecordingEvent *)&v8 initWithComponent:0 eventName:@"updateEnd"];
  if (v4)
  {
    v5 = objc_alloc_init(PXGEngineRecordingUpdateEndEventSerializable);
    serializable = v4->_serializable;
    v4->_serializable = v5;

    [(PXGEngineRecordingUpdateEndEventSerializable *)v4->_serializable setUpdated:updatedCopy];
  }

  return v4;
}

+ (id)eventWithUpdated:(BOOL)updated
{
  v3 = [[PXGEngineRecordingUpdateEndEvent alloc] initWithUpdated:updated];

  return v3;
}

@end
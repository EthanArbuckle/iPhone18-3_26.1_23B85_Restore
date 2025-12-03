@interface PXGEngineRecordingUpdateStartEvent
+ (id)eventWithTargetTimestamp:(double)timestamp needsUpdate:(unint64_t)update pendingUpdateEntities:(unint64_t)entities;
- (PXGEngineRecordingUpdateStartEvent)initWithTargetTimestamp:(double)timestamp needsUpdate:(unint64_t)update pendingUpdateEntities:(unint64_t)entities;
@end

@implementation PXGEngineRecordingUpdateStartEvent

- (PXGEngineRecordingUpdateStartEvent)initWithTargetTimestamp:(double)timestamp needsUpdate:(unint64_t)update pendingUpdateEntities:(unint64_t)entities
{
  v12.receiver = self;
  v12.super_class = PXGEngineRecordingUpdateStartEvent;
  v8 = [(PXGTungstenRecordingEvent *)&v12 initWithComponent:0 eventName:@"updateStart"];
  if (v8)
  {
    v9 = objc_alloc_init(PXGEngineRecordingUpdateStartEventSerializable);
    serializable = v8->_serializable;
    v8->_serializable = v9;

    [(PXGEngineRecordingUpdateStartEventSerializable *)v8->_serializable setTargetTimestamp:timestamp];
    [(PXGEngineRecordingUpdateStartEventSerializable *)v8->_serializable setNeedsUpdate:update];
    [(PXGEngineRecordingUpdateStartEventSerializable *)v8->_serializable setPendingUpdateEntities:entities];
  }

  return v8;
}

+ (id)eventWithTargetTimestamp:(double)timestamp needsUpdate:(unint64_t)update pendingUpdateEntities:(unint64_t)entities
{
  v5 = [[PXGEngineRecordingUpdateStartEvent alloc] initWithTargetTimestamp:update needsUpdate:entities pendingUpdateEntities:timestamp];

  return v5;
}

@end
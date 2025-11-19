@interface PXGEngineRecordingUpdateStartEvent
+ (id)eventWithTargetTimestamp:(double)a3 needsUpdate:(unint64_t)a4 pendingUpdateEntities:(unint64_t)a5;
- (PXGEngineRecordingUpdateStartEvent)initWithTargetTimestamp:(double)a3 needsUpdate:(unint64_t)a4 pendingUpdateEntities:(unint64_t)a5;
@end

@implementation PXGEngineRecordingUpdateStartEvent

- (PXGEngineRecordingUpdateStartEvent)initWithTargetTimestamp:(double)a3 needsUpdate:(unint64_t)a4 pendingUpdateEntities:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = PXGEngineRecordingUpdateStartEvent;
  v8 = [(PXGTungstenRecordingEvent *)&v12 initWithComponent:0 eventName:@"updateStart"];
  if (v8)
  {
    v9 = objc_alloc_init(PXGEngineRecordingUpdateStartEventSerializable);
    serializable = v8->_serializable;
    v8->_serializable = v9;

    [(PXGEngineRecordingUpdateStartEventSerializable *)v8->_serializable setTargetTimestamp:a3];
    [(PXGEngineRecordingUpdateStartEventSerializable *)v8->_serializable setNeedsUpdate:a4];
    [(PXGEngineRecordingUpdateStartEventSerializable *)v8->_serializable setPendingUpdateEntities:a5];
  }

  return v8;
}

+ (id)eventWithTargetTimestamp:(double)a3 needsUpdate:(unint64_t)a4 pendingUpdateEntities:(unint64_t)a5
{
  v5 = [[PXGEngineRecordingUpdateStartEvent alloc] initWithTargetTimestamp:a4 needsUpdate:a5 pendingUpdateEntities:a3];

  return v5;
}

@end
@interface PXGMetalRecordingFrameEndEvent
+ (id)event;
- (PXGMetalRecordingFrameEndEvent)init;
@end

@implementation PXGMetalRecordingFrameEndEvent

- (PXGMetalRecordingFrameEndEvent)init
{
  v6.receiver = self;
  v6.super_class = PXGMetalRecordingFrameEndEvent;
  v2 = [(PXGTungstenRecordingEvent *)&v6 initWithComponent:1 eventName:@"frameEnd"];
  if (v2)
  {
    v3 = objc_alloc_init(PXGMetalRecordingFrameEndEventSerializable);
    serializable = v2->_serializable;
    v2->_serializable = v3;
  }

  return v2;
}

+ (id)event
{
  v2 = objc_alloc_init(a1);

  return v2;
}

@end
@interface PXGViewRecordingFrameEndEvent
+ (id)event;
- (PXGViewRecordingFrameEndEvent)init;
@end

@implementation PXGViewRecordingFrameEndEvent

- (PXGViewRecordingFrameEndEvent)init
{
  v6.receiver = self;
  v6.super_class = PXGViewRecordingFrameEndEvent;
  v2 = [(PXGTungstenRecordingEvent *)&v6 initWithComponent:2 eventName:@"frameEnd"];
  if (v2)
  {
    v3 = objc_alloc_init(PXGViewRecordingFrameEndEventSerializable);
    serializable = v2->_serializable;
    v2->_serializable = v3;
  }

  return v2;
}

+ (id)event
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end
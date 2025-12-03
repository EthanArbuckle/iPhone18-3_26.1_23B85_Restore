@interface PXGMetalRecordingFrameStartEvent
+ (id)eventWithViewSize:(CGSize)size renderOrigin:(double)origin screenScale:;
- (PXGMetalRecordingFrameStartEvent)initWithViewSize:(CGSize)size renderOrigin:(double)origin screenScale:;
@end

@implementation PXGMetalRecordingFrameStartEvent

- (PXGMetalRecordingFrameStartEvent)initWithViewSize:(CGSize)size renderOrigin:(double)origin screenScale:
{
  v5 = v4;
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = PXGMetalRecordingFrameStartEvent;
  v8 = [(PXGTungstenRecordingEvent *)&v13 initWithComponent:1 eventName:@"frameStart"];
  if (v8)
  {
    v9 = objc_alloc_init(PXGMetalRecordingFrameStartEventSerializable);
    serializable = v8->_serializable;
    v8->_serializable = v9;

    [(PXGMetalRecordingFrameStartEventSerializable *)v8->_serializable setViewSize:width, height];
    [(PXGMetalRecordingFrameStartEventSerializable *)v8->_serializable setRenderOrigin:origin];
    [(PXGMetalRecordingFrameStartEventSerializable *)v8->_serializable setScreenScale:v5];
  }

  return v8;
}

+ (id)eventWithViewSize:(CGSize)size renderOrigin:(double)origin screenScale:
{
  v5 = [[PXGMetalRecordingFrameStartEvent alloc] initWithViewSize:size.width renderOrigin:size.height screenScale:origin, v4];

  return v5;
}

@end
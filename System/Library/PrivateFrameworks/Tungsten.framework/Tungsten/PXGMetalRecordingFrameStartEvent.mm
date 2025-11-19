@interface PXGMetalRecordingFrameStartEvent
+ (id)eventWithViewSize:(CGSize)a3 renderOrigin:(double)a4 screenScale:;
- (PXGMetalRecordingFrameStartEvent)initWithViewSize:(CGSize)a3 renderOrigin:(double)a4 screenScale:;
@end

@implementation PXGMetalRecordingFrameStartEvent

- (PXGMetalRecordingFrameStartEvent)initWithViewSize:(CGSize)a3 renderOrigin:(double)a4 screenScale:
{
  v5 = v4;
  height = a3.height;
  width = a3.width;
  v13.receiver = self;
  v13.super_class = PXGMetalRecordingFrameStartEvent;
  v8 = [(PXGTungstenRecordingEvent *)&v13 initWithComponent:1 eventName:@"frameStart"];
  if (v8)
  {
    v9 = objc_alloc_init(PXGMetalRecordingFrameStartEventSerializable);
    serializable = v8->_serializable;
    v8->_serializable = v9;

    [(PXGMetalRecordingFrameStartEventSerializable *)v8->_serializable setViewSize:width, height];
    [(PXGMetalRecordingFrameStartEventSerializable *)v8->_serializable setRenderOrigin:a4];
    [(PXGMetalRecordingFrameStartEventSerializable *)v8->_serializable setScreenScale:v5];
  }

  return v8;
}

+ (id)eventWithViewSize:(CGSize)a3 renderOrigin:(double)a4 screenScale:
{
  v5 = [[PXGMetalRecordingFrameStartEvent alloc] initWithViewSize:a3.width renderOrigin:a3.height screenScale:a4, v4];

  return v5;
}

@end
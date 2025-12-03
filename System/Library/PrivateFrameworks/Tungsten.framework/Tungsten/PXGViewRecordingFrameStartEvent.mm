@interface PXGViewRecordingFrameStartEvent
+ (id)eventWithViewSize:(CGSize)size renderOrigin:(CGPoint)origin screenScale:(double)scale;
- (PXGViewRecordingFrameStartEvent)initWithViewSize:(CGSize)size renderOrigin:(CGPoint)origin screenScale:(double)scale;
@end

@implementation PXGViewRecordingFrameStartEvent

- (PXGViewRecordingFrameStartEvent)initWithViewSize:(CGSize)size renderOrigin:(CGPoint)origin screenScale:(double)scale
{
  y = origin.y;
  x = origin.x;
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = PXGViewRecordingFrameStartEvent;
  v10 = [(PXGTungstenRecordingEvent *)&v14 initWithComponent:2 eventName:@"frameStart"];
  if (v10)
  {
    v11 = objc_alloc_init(PXGViewRecordingFrameStartEventSerializable);
    serializable = v10->_serializable;
    v10->_serializable = v11;

    [(PXGViewRecordingFrameStartEventSerializable *)v10->_serializable setViewSize:width, height];
    [(PXGViewRecordingFrameStartEventSerializable *)v10->_serializable setRenderOrigin:x, y];
    [(PXGViewRecordingFrameStartEventSerializable *)v10->_serializable setScreenScale:scale];
  }

  return v10;
}

+ (id)eventWithViewSize:(CGSize)size renderOrigin:(CGPoint)origin screenScale:(double)scale
{
  scale = [[PXGViewRecordingFrameStartEvent alloc] initWithViewSize:size.width renderOrigin:size.height screenScale:origin.x, origin.y, scale];

  return scale;
}

@end
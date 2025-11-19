@interface PXGViewRecordingFrameStartEvent
+ (id)eventWithViewSize:(CGSize)a3 renderOrigin:(CGPoint)a4 screenScale:(double)a5;
- (PXGViewRecordingFrameStartEvent)initWithViewSize:(CGSize)a3 renderOrigin:(CGPoint)a4 screenScale:(double)a5;
@end

@implementation PXGViewRecordingFrameStartEvent

- (PXGViewRecordingFrameStartEvent)initWithViewSize:(CGSize)a3 renderOrigin:(CGPoint)a4 screenScale:(double)a5
{
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
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
    [(PXGViewRecordingFrameStartEventSerializable *)v10->_serializable setScreenScale:a5];
  }

  return v10;
}

+ (id)eventWithViewSize:(CGSize)a3 renderOrigin:(CGPoint)a4 screenScale:(double)a5
{
  v5 = [[PXGViewRecordingFrameStartEvent alloc] initWithViewSize:a3.width renderOrigin:a3.height screenScale:a4.x, a4.y, a5];

  return v5;
}

@end
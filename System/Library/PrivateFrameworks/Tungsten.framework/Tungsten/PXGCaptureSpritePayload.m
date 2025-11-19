@interface PXGCaptureSpritePayload
- (PXGCaptureSpritePayload)initWithBehavior:(unint64_t)a3 renderSnapshot:(id)a4;
@end

@implementation PXGCaptureSpritePayload

- (PXGCaptureSpritePayload)initWithBehavior:(unint64_t)a3 renderSnapshot:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXGCaptureSpritePayload;
  v8 = [(PXGCaptureSpritePayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_behavior = a3;
    objc_storeStrong(&v8->_renderSnapshot, a4);
  }

  return v9;
}

@end
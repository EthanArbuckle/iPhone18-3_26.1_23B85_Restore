@interface PXGCaptureSpritePayload
- (PXGCaptureSpritePayload)initWithBehavior:(unint64_t)behavior renderSnapshot:(id)snapshot;
@end

@implementation PXGCaptureSpritePayload

- (PXGCaptureSpritePayload)initWithBehavior:(unint64_t)behavior renderSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v11.receiver = self;
  v11.super_class = PXGCaptureSpritePayload;
  v8 = [(PXGCaptureSpritePayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_behavior = behavior;
    objc_storeStrong(&v8->_renderSnapshot, snapshot);
  }

  return v9;
}

@end
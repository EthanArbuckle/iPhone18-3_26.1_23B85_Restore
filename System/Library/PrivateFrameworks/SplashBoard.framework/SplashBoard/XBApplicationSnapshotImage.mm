@interface XBApplicationSnapshotImage
- (XBApplicationSnapshotImage)initWithSnapshot:(id)a3 interfaceOrientation:(int64_t)a4;
- (id)description;
- (void)dealloc;
@end

@implementation XBApplicationSnapshotImage

- (void)dealloc
{
  [(XBApplicationSnapshot *)self->_snapshot endImageAccess];
  v3.receiver = self;
  v3.super_class = XBApplicationSnapshotImage;
  [(XBApplicationSnapshotImage *)&v3 dealloc];
}

- (XBApplicationSnapshotImage)initWithSnapshot:(id)a3 interfaceOrientation:(int64_t)a4
{
  v7 = a3;
  v8 = XBImageOrientationForInterfaceOrientationRotation(a4, 1);
  v9 = [v7 _cachedImage];
  v10 = v9;
  if (v9)
  {
    if ([v9 CGImage])
    {
      v11 = [v10 CGImage];
      [v10 scale];
      v12 = [(XBApplicationSnapshotImage *)&v16 initWithCGImage:v11 scale:v8 orientation:v15.receiver, v15.super_class, self, XBApplicationSnapshotImage];
    }

    else
    {
      v13 = [v10 ioSurface];
      [v10 scale];
      v12 = [(XBApplicationSnapshotImage *)&v15 _initWithIOSurface:v13 scale:v8 orientation:self, XBApplicationSnapshotImage, v16.receiver, v16.super_class];
    }

    self = v12;
  }

  if (self)
  {
    self->_interfaceOrientation = a4;
    objc_storeStrong(&self->_snapshot, a3);
    [(XBApplicationSnapshot *)self->_snapshot beginImageAccess];
  }

  return self;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __41__XBApplicationSnapshotImage_description__block_invoke;
  v10 = &unk_279CF9508;
  v11 = v3;
  v12 = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:0 block:&v7];
  v5 = [v4 build];

  return v5;
}

void __41__XBApplicationSnapshotImage_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) size];
  v3 = [v2 appendSize:@"size" withName:?];
  v4 = *(a1 + 32);
  [*(a1 + 40) scale];
  v5 = [v4 appendFloat:@"scale" withName:1 decimalPrecision:?];
  v6 = *(a1 + 32);
  v7 = XBImageOrientationDescription([*(a1 + 40) imageOrientation]);
  v8 = [v6 appendObject:v7 withName:@"imageOrientation"];

  v9 = *(a1 + 32);
  v10 = XBStringForInterfaceOrientation(*(*(a1 + 40) + 152));
  v11 = [v9 appendObject:v10 withName:@"interfaceOrientation"];

  v12 = [*(a1 + 32) appendBool:objc_msgSend(*(*(a1 + 40) + 144) withName:{"isImageOpaque"), @"opaque"}];
  v13 = *(a1 + 32);
  v15 = [*(*(a1 + 40) + 144) path];
  v14 = [v13 appendObject:v15 withName:@"path" skipIfNil:1];
}

@end
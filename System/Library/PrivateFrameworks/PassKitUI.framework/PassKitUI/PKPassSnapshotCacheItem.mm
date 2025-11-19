@interface PKPassSnapshotCacheItem
- (PKPassSnapshotCacheItem)initWithCGImage:(CGImage *)a3 scale:(double)a4;
- (void)dealloc;
@end

@implementation PKPassSnapshotCacheItem

- (PKPassSnapshotCacheItem)initWithCGImage:(CGImage *)a3 scale:(double)a4
{
  v8.receiver = self;
  v8.super_class = PKPassSnapshotCacheItem;
  v6 = [(PKPassSnapshotCacheItem *)&v8 init];
  if (v6)
  {
    v6->_image = CGImageRetain(a3);
    v6->_scale = a4;
  }

  return v6;
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = PKPassSnapshotCacheItem;
  [(PKPassSnapshotCacheItem *)&v3 dealloc];
}

@end
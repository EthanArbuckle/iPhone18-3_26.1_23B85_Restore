@interface PXImageAssetUIImageProvider
- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
@end

@implementation PXImageAssetUIImageProvider

- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  image = [asset image];
  (*(handler + 2))(handlerCopy, image, 0);

  return atomic_fetch_add(&self->_mediaRequestID, 1u);
}

@end
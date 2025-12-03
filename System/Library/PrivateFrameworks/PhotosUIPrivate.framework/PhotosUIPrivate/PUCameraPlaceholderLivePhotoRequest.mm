@interface PUCameraPlaceholderLivePhotoRequest
- (PUCameraPlaceholderLivePhotoRequest)initWithAsset:(id)asset resultHandler:(id)handler;
@end

@implementation PUCameraPlaceholderLivePhotoRequest

- (PUCameraPlaceholderLivePhotoRequest)initWithAsset:(id)asset resultHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = PUCameraPlaceholderLivePhotoRequest;
  v9 = [(PUCameraPlaceholderLivePhotoRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    v11 = [handlerCopy copy];
    resultHandler = v10->_resultHandler;
    v10->_resultHandler = v11;
  }

  return v10;
}

@end
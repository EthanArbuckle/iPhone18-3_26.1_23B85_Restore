@interface PUCameraPlaceholderLivePhotoRequest
- (PUCameraPlaceholderLivePhotoRequest)initWithAsset:(id)a3 resultHandler:(id)a4;
@end

@implementation PUCameraPlaceholderLivePhotoRequest

- (PUCameraPlaceholderLivePhotoRequest)initWithAsset:(id)a3 resultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PUCameraPlaceholderLivePhotoRequest;
  v9 = [(PUCameraPlaceholderLivePhotoRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    v11 = [v8 copy];
    resultHandler = v10->_resultHandler;
    v10->_resultHandler = v11;
  }

  return v10;
}

@end
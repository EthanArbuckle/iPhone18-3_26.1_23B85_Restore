@interface PUPXMediaProvider
- (PUPXMediaProvider)init;
- (PUPXMediaProvider)initWithUnderlyingMediaProvider:(id)provider;
- (int)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)cancelImageRequest:(int)request;
@end

@implementation PUPXMediaProvider

- (void)cancelImageRequest:(int)request
{
  underlyingMediaProvider = [(PUPXMediaProvider *)self underlyingMediaProvider];
  [underlyingMediaProvider cancelImageRequest:request];
}

- (int)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  underlyingMediaProvider = [(PUPXMediaProvider *)self underlyingMediaProvider];
  v12 = [underlyingMediaProvider requestAnimatedImageForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];

  return v12;
}

- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  underlyingMediaProvider = [(PUPXMediaProvider *)self underlyingMediaProvider];
  LODWORD(mode) = [underlyingMediaProvider requestLivePhotoForAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:{width, height}];

  return mode;
}

- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  videoCopy = video;
  underlyingMediaProvider = [(PUPXMediaProvider *)self underlyingMediaProvider];
  v12 = [underlyingMediaProvider requestPlayerItemForVideo:videoCopy options:optionsCopy resultHandler:handlerCopy];

  return v12;
}

- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  underlyingMediaProvider = [(PUPXMediaProvider *)self underlyingMediaProvider];
  v12 = [underlyingMediaProvider requestImageURLForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];

  return v12;
}

- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  underlyingMediaProvider = [(PUPXMediaProvider *)self underlyingMediaProvider];
  v12 = [underlyingMediaProvider requestImageDataForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];

  return v12;
}

- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  underlyingMediaProvider = [(PUPXMediaProvider *)self underlyingMediaProvider];
  LODWORD(mode) = [underlyingMediaProvider requestImageForAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:{width, height}];

  return mode;
}

- (PUPXMediaProvider)initWithUnderlyingMediaProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PUPXMediaProvider;
  v6 = [(PUPXMediaProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingMediaProvider, provider);
  }

  return v7;
}

- (PUPXMediaProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXMediaProvider.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PUPXMediaProvider init]"}];

  abort();
}

@end
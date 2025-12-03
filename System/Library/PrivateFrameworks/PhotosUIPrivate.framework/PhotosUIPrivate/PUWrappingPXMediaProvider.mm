@interface PUWrappingPXMediaProvider
- (PUWrappingPXMediaProvider)initWithWrappedMediaProvider:(id)provider;
- (int64_t)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int64_t)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (int64_t)requestStreamForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (int64_t)requestURLForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)cancelImageRequest:(int64_t)request;
@end

@implementation PUWrappingPXMediaProvider

- (void)cancelImageRequest:(int64_t)request
{
  wrappedMediaProvider = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  [wrappedMediaProvider cancelImageRequest:request];
}

- (int64_t)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  wrappedMediaProvider = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__PUWrappingPXMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v20[3] = &unk_1E7B7F8C0;
  v21 = handlerCopy;
  v18 = handlerCopy;
  LODWORD(mode) = [wrappedMediaProvider requestLivePhotoForAsset:assetCopy targetSize:mode contentMode:photoKitRequestOptions options:v20 resultHandler:{width, height}];

  return mode;
}

- (int64_t)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  wrappedMediaProvider = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PUWrappingPXMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7B7F8E8;
  v16 = handlerCopy;
  v13 = handlerCopy;
  LODWORD(handlerCopy) = [wrappedMediaProvider requestAnimatedImageForAsset:assetCopy options:photoKitRequestOptions resultHandler:v15];

  return handlerCopy;
}

- (int64_t)requestStreamForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  videoCopy = video;
  optionsCopy = options;
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUWrappingPXMediaProvider.m" lineNumber:60 description:{@"%s is not implemented", "-[PUWrappingPXMediaProvider requestStreamForVideo:options:resultHandler:]"}];

  abort();
}

- (int64_t)requestURLForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  videoCopy = video;
  optionsCopy = options;
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUWrappingPXMediaProvider.m" lineNumber:56 description:{@"%s is not implemented", "-[PUWrappingPXMediaProvider requestURLForVideo:options:resultHandler:]"}];

  abort();
}

- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  videoCopy = video;
  wrappedMediaProvider = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__PUWrappingPXMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7B77098;
  v16 = handlerCopy;
  v13 = handlerCopy;
  LODWORD(handlerCopy) = [wrappedMediaProvider requestPlayerItemForVideo:videoCopy options:photoKitRequestOptions resultHandler:v15];

  return handlerCopy;
}

- (int64_t)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  wrappedMediaProvider = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PUWrappingPXMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7B7F898;
  v16 = handlerCopy;
  v13 = handlerCopy;
  LODWORD(handlerCopy) = [wrappedMediaProvider requestImageURLForAsset:assetCopy options:photoKitRequestOptions resultHandler:v15];

  return handlerCopy;
}

- (int64_t)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  wrappedMediaProvider = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PUWrappingPXMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7B77070;
  v16 = handlerCopy;
  v13 = handlerCopy;
  LODWORD(handlerCopy) = [wrappedMediaProvider requestImageDataForAsset:assetCopy options:photoKitRequestOptions resultHandler:v15];

  return handlerCopy;
}

- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  wrappedMediaProvider = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  photoKitRequestOptions = [optionsCopy photoKitRequestOptions];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__PUWrappingPXMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v20[3] = &unk_1E7B7F870;
  v21 = handlerCopy;
  v18 = handlerCopy;
  LODWORD(mode) = [wrappedMediaProvider requestImageForAsset:assetCopy targetSize:mode contentMode:photoKitRequestOptions options:v20 resultHandler:{width, height}];

  return mode;
}

void __97__PUWrappingPXMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = a3;
  v7 = a2;
  v8 = [v7 CGImage];
  v9 = [v7 imageOrientation];

  (*(v5 + 16))(v5, v8, v9, v10);
}

- (PUWrappingPXMediaProvider)initWithWrappedMediaProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PUWrappingPXMediaProvider;
  v6 = [(PUWrappingPXMediaProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedMediaProvider, provider);
  }

  return v7;
}

@end
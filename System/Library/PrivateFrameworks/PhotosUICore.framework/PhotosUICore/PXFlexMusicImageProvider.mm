@interface PXFlexMusicImageProvider
- (PXFlexMusicImageProvider)init;
- (id)createImageLoaderForRequest:(id)request;
- (id)imageCacheKeyForRequest:(id)request;
- (id)resultForCompletedImageLoader:(id)loader request:(id)request error:(id *)error;
@end

@implementation PXFlexMusicImageProvider

- (id)resultForCompletedImageLoader:(id)loader request:(id)request error:(id *)error
{
  loaderCopy = loader;
  asset = [request asset];
  if (asset)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v18 = NSStringFromClass(v22);
    px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:96 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"request.asset", v18, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:96 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"request.asset", v18}];
  }

LABEL_3:
  v11 = loaderCopy;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v21 = NSStringFromClass(v24);
    px_descriptionForAssertionMessage2 = [v11 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"imageLoader", v21, px_descriptionForAssertionMessage2}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"imageLoader", v21}];
  }

LABEL_5:
  image = [v11 image];
  error = [v11 error];
  if (image)
  {
    image = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:image];
  }

  if (error)
  {
    v14 = error;
    *error = error;
  }

  return image;
}

- (id)createImageLoaderForRequest:(id)request
{
  requestCopy = request;
  asset = [requestCopy asset];
  if (asset)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:91 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"request.asset", v18, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:91 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"request.asset", v18}];
  }

LABEL_3:
  v7 = [_PXFlexMusicImageLoader alloc];
  asset2 = [requestCopy asset];
  [requestCopy targetSize];
  v10 = v9;
  v12 = v11;

  imageLoadingQueue = [(PXFlexMusicImageProvider *)self imageLoadingQueue];
  v14 = [(_PXFlexMusicImageLoader *)v7 initWithArtworkAsset:asset2 maxSize:imageLoadingQueue sharedImageLoadingQueue:v10, v12];

  return v14;
}

- (id)imageCacheKeyForRequest:(id)request
{
  requestCopy = request;
  asset = [requestCopy asset];
  if (asset)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:80 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"request.asset", v20, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:80 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"request.asset", v20}];
  }

LABEL_3:
  asset2 = [requestCopy asset];
  v8 = MEMORY[0x1E696AEC0];
  audioAsset = [asset2 audioAsset];
  identifier = [audioAsset identifier];
  [requestCopy targetSize];
  v12 = v11;
  v14 = v13;

  v24.width = v12;
  v24.height = v14;
  v15 = NSStringFromCGSize(v24);
  v16 = [v8 stringWithFormat:@"%@-%@", identifier, v15];

  return v16;
}

- (PXFlexMusicImageProvider)init
{
  v3.receiver = self;
  v3.super_class = PXFlexMusicImageProvider;
  if ([(PXAudioAssetImageProvider *)&v3 init])
  {
    px_dispatch_queue_create_serial();
  }

  return 0;
}

@end
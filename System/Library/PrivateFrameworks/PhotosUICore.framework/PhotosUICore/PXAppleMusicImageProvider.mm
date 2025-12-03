@interface PXAppleMusicImageProvider
- (id)createImageLoaderForRequest:(id)request;
- (id)imageCacheKeyForRequest:(id)request;
- (id)resultForCompletedImageLoader:(id)loader request:(id)request error:(id *)error;
@end

@implementation PXAppleMusicImageProvider

- (id)resultForCompletedImageLoader:(id)loader request:(id)request error:(id *)error
{
  loaderCopy = loader;
  requestCopy = request;
  v10 = loaderCopy;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [v10 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:63 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"imageLoader", v15, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:63 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"imageLoader", v15}];
  }

LABEL_3:
  v11 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{objc_msgSend(v10, "image")}];

  return v11;
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
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:58 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"request.asset", v16, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:58 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"request.asset", v16}];
  }

LABEL_3:
  v7 = [_PXAppleMusicImageLoader alloc];
  [requestCopy targetSize];
  v9 = v8;
  v11 = v10;

  v12 = [(_PXAppleMusicImageLoader *)v7 initWithAsset:asset targetSize:v9, v11];

  return v12;
}

- (id)imageCacheKeyForRequest:(id)request
{
  v21[2] = *MEMORY[0x1E69E9840];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"request.asset", v18, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"request.asset", v18}];
  }

LABEL_3:
  [requestCopy targetSize];
  v8 = v7;
  v10 = v9;

  v11 = [off_1E7721928 alloc];
  v21[0] = asset;
  v12 = [MEMORY[0x1E696B098] valueWithCGSize:{v8, v10}];
  v21[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v14 = [v11 initWithObjects:v13];

  return v14;
}

@end
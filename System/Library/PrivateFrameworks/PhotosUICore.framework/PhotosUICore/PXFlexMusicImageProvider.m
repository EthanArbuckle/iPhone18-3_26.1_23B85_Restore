@interface PXFlexMusicImageProvider
- (PXFlexMusicImageProvider)init;
- (id)createImageLoaderForRequest:(id)a3;
- (id)imageCacheKeyForRequest:(id)a3;
- (id)resultForCompletedImageLoader:(id)a3 request:(id)a4 error:(id *)a5;
@end

@implementation PXFlexMusicImageProvider

- (id)resultForCompletedImageLoader:(id)a3 request:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = [a4 asset];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v18 = NSStringFromClass(v22);
    v23 = [v10 px_descriptionForAssertionMessage];
    [v16 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:96 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"request.asset", v18, v23}];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v16 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:96 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"request.asset", v18}];
  }

LABEL_3:
  v11 = v9;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v21 = NSStringFromClass(v24);
    v25 = [v11 px_descriptionForAssertionMessage];
    [v19 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"imageLoader", v21, v25}];
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:97 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"imageLoader", v21}];
  }

LABEL_5:
  v12 = [v11 image];
  v13 = [v11 error];
  if (v12)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v12];
  }

  if (a5)
  {
    v14 = v13;
    *a5 = v13;
  }

  return v12;
}

- (id)createImageLoaderForRequest:(id)a3
{
  v5 = a3;
  v6 = [v5 asset];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    v20 = [v6 px_descriptionForAssertionMessage];
    [v16 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:91 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"request.asset", v18, v20}];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v16 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:91 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"request.asset", v18}];
  }

LABEL_3:
  v7 = [_PXFlexMusicImageLoader alloc];
  v8 = [v5 asset];
  [v5 targetSize];
  v10 = v9;
  v12 = v11;

  v13 = [(PXFlexMusicImageProvider *)self imageLoadingQueue];
  v14 = [(_PXFlexMusicImageLoader *)v7 initWithArtworkAsset:v8 maxSize:v13 sharedImageLoadingQueue:v10, v12];

  return v14;
}

- (id)imageCacheKeyForRequest:(id)a3
{
  v5 = a3;
  v6 = [v5 asset];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v22 = [v6 px_descriptionForAssertionMessage];
    [v18 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:80 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"request.asset", v20, v22}];
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:80 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"request.asset", v20}];
  }

LABEL_3:
  v7 = [v5 asset];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 audioAsset];
  v10 = [v9 identifier];
  [v5 targetSize];
  v12 = v11;
  v14 = v13;

  v24.width = v12;
  v24.height = v14;
  v15 = NSStringFromCGSize(v24);
  v16 = [v8 stringWithFormat:@"%@-%@", v10, v15];

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
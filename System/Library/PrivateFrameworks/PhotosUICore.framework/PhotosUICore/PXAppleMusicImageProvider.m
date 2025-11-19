@interface PXAppleMusicImageProvider
- (id)createImageLoaderForRequest:(id)a3;
- (id)imageCacheKeyForRequest:(id)a3;
- (id)resultForCompletedImageLoader:(id)a3 request:(id)a4 error:(id *)a5;
@end

@implementation PXAppleMusicImageProvider

- (id)resultForCompletedImageLoader:(id)a3 request:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v17 = [v10 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:63 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"imageLoader", v15, v17}];
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:63 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"imageLoader", v15}];
  }

LABEL_3:
  v11 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{objc_msgSend(v10, "image")}];

  return v11;
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

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v18 = [v6 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:58 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"request.asset", v16, v18}];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:58 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"request.asset", v16}];
  }

LABEL_3:
  v7 = [_PXAppleMusicImageLoader alloc];
  [v5 targetSize];
  v9 = v8;
  v11 = v10;

  v12 = [(_PXAppleMusicImageLoader *)v7 initWithAsset:v6 targetSize:v9, v11];

  return v12;
}

- (id)imageCacheKeyForRequest:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
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
    [v16 handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"request.asset", v18, v20}];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v16 handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:48 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"request.asset", v18}];
  }

LABEL_3:
  [v5 targetSize];
  v8 = v7;
  v10 = v9;

  v11 = [off_1E7721928 alloc];
  v21[0] = v6;
  v12 = [MEMORY[0x1E696B098] valueWithCGSize:{v8, v10}];
  v21[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v14 = [v11 initWithObjects:v13];

  return v14;
}

@end
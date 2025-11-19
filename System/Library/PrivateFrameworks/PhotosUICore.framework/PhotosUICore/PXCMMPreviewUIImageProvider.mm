@interface PXCMMPreviewUIImageProvider
- (id)_underlyingAssetMediaProviderForUnderlyingAsset:(id)a3;
- (id)_underlyingAssetsFromPreviewAssets:(id)a3;
- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (void)startCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
- (void)stopCachingImagesForAllAssets;
- (void)stopCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
@end

@implementation PXCMMPreviewUIImageProvider

- (id)_underlyingAssetsFromPreviewAssets:(id)a3
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PXCMMPreviewUIImageProvider__underlyingAssetsFromPreviewAssets___block_invoke;
  v12[3] = &unk_1E77408E0;
  v14 = a2;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [v6 enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __66__PXCMMPreviewUIImageProvider__underlyingAssetsFromPreviewAssets___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v8 = NSStringFromClass(v11);
    v12 = [v19 px_descriptionForAssertionMessage];
    [v4 handleFailureInMethod:v9 object:v10 file:@"PXCMMPreviewUIImageProvider.m" lineNumber:164 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAsset", v8, v12}];
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v4 handleFailureInMethod:v5 object:v6 file:@"PXCMMPreviewUIImageProvider.m" lineNumber:164 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAsset", v8}];
  }

LABEL_3:
  v3 = [v19 underlyingAsset];
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = *(a1 + 48);
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v3 px_descriptionForAssertionMessage];
      [v13 handleFailureInMethod:v14 object:v15 file:@"PXCMMPreviewUIImageProvider.m" lineNumber:165 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"previewAsset.underlyingAsset", v17, v18}];
    }

    [*(a1 + 40) addObject:v3];
  }
}

- (id)_underlyingAssetMediaProviderForUnderlyingAsset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMPreviewUIImageProvider.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"underlyingAsset"}];
  }

  underlyingAssetMediaProvider = self->_underlyingAssetMediaProvider;
  if (!underlyingAssetMediaProvider)
  {
    v7 = [off_1E77217B0 defaultManager];
    v8 = [v7 imageProviderForAsset:v5];
    v9 = self->_underlyingAssetMediaProvider;
    self->_underlyingAssetMediaProvider = v8;

    underlyingAssetMediaProvider = self->_underlyingAssetMediaProvider;
  }

  v10 = underlyingAssetMediaProvider;

  return underlyingAssetMediaProvider;
}

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = v14;
  if (!v17)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v22 handleFailureInMethod:a2 object:self file:@"PXCMMPreviewUIImageProvider.m" lineNumber:85 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAsset", v24}];
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    v26 = [v17 px_descriptionForAssertionMessage];
    [v22 handleFailureInMethod:a2 object:self file:@"PXCMMPreviewUIImageProvider.m" lineNumber:85 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAsset", v24, v26}];

LABEL_12:
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  if (v16)
  {
    goto LABEL_4;
  }

LABEL_13:
  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"PXCMMPreviewUIImageProvider.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];

LABEL_4:
  v18 = [v17 underlyingAsset];
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v18 px_descriptionForAssertionMessage];
      [v28 handleFailureInMethod:a2 object:self file:@"PXCMMPreviewUIImageProvider.m" lineNumber:89 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"previewAsset.underlyingAsset", v30, v31}];
    }

    v19 = [(PXCMMPreviewUIImageProvider *)self _underlyingAssetMediaProviderForUnderlyingAsset:v18];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __97__PXCMMPreviewUIImageProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
    v32[3] = &unk_1E77408B8;
    v33 = v17;
    v34 = v16;
    v20 = [v19 requestCGImageForAsset:v18 targetSize:a5 contentMode:v15 options:v32 resultHandler:{width, height}];
  }

  else
  {
    _ReturnPreviewImage(v17, v16);
    v20 = 0;
  }

  return v20;
}

void __97__PXCMMPreviewUIImageProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if (a2 && ([v9 objectForKeyedSubscript:*MEMORY[0x1E6978E68]], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, !v7))
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:a2];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    _ReturnPreviewImage(*(a1 + 32), *(a1 + 40));
  }
}

- (void)stopCachingImagesForAllAssets
{
  if (self->_underlyingAssetMediaProvider && (objc_opt_respondsToSelector() & 1) != 0)
  {
    underlyingAssetMediaProvider = self->_underlyingAssetMediaProvider;

    [(PXMediaProvider *)underlyingAssetMediaProvider stopCachingImagesForAllAssets];
  }
}

- (void)stopCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v11 = a6;
  if (self->_underlyingAssetMediaProvider && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [(PXCMMPreviewUIImageProvider *)self _underlyingAssetsFromPreviewAssets:v13];
    [(PXMediaProvider *)self->_underlyingAssetMediaProvider startCachingImagesForAssets:v12 targetSize:a5 contentMode:v11 options:width, height];
  }
}

- (void)startCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6
{
  height = a4.height;
  width = a4.width;
  v14 = a6;
  v11 = [(PXCMMPreviewUIImageProvider *)self _underlyingAssetsFromPreviewAssets:a3];
  if ([v11 count])
  {
    v12 = [v11 firstObject];
    v13 = [(PXCMMPreviewUIImageProvider *)self _underlyingAssetMediaProviderForUnderlyingAsset:v12];

    if (objc_opt_respondsToSelector())
    {
      [v13 startCachingImagesForAssets:v11 targetSize:a5 contentMode:v14 options:{width, height}];
    }
  }
}

- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = v14;
  if (!v17)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v22 handleFailureInMethod:a2 object:self file:@"PXCMMPreviewUIImageProvider.m" lineNumber:27 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"displayAsset", v24}];
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    v26 = [v17 px_descriptionForAssertionMessage];
    [v22 handleFailureInMethod:a2 object:self file:@"PXCMMPreviewUIImageProvider.m" lineNumber:27 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"displayAsset", v24, v26}];

LABEL_12:
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  if (v16)
  {
    goto LABEL_4;
  }

LABEL_13:
  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"PXCMMPreviewUIImageProvider.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];

LABEL_4:
  v18 = [v17 underlyingAsset];
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v18 px_descriptionForAssertionMessage];
      [v28 handleFailureInMethod:a2 object:self file:@"PXCMMPreviewUIImageProvider.m" lineNumber:31 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"previewAsset.underlyingAsset", v30, v31}];
    }

    v19 = [(PXCMMPreviewUIImageProvider *)self _underlyingAssetMediaProviderForUnderlyingAsset:v18];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __99__PXCMMPreviewUIImageProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
    v32[3] = &unk_1E77408B8;
    v33 = v17;
    v34 = v16;
    v20 = [v19 requestCGImageForAsset:v18 targetSize:a5 contentMode:v15 options:v32 resultHandler:{width, height}];
  }

  else
  {
    _ReturnPreviewCGImage(v17, v16);
    v20 = 0;
  }

  return v20;
}

void __99__PXCMMPreviewUIImageProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9 = v6;
  if (a2 && ([v6 objectForKeyedSubscript:*MEMORY[0x1E6978E68]], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, !v8))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    _ReturnPreviewCGImage(*(a1 + 32), *(a1 + 40));
  }
}

@end
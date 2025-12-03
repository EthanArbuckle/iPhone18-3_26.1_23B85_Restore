@interface PXPlacesGeotaggableMediaProvider
- (id)_fetchImageManagerAssetForPlacesAsset:(id)asset;
- (void)_imageForGeotaggable:(id)geotaggable ofSize:(CGSize)size networkAccessAllowed:(BOOL)allowed andCompletion:(id)completion;
- (void)imageForGeotaggable:(id)geotaggable ofSize:(CGSize)size networkAccessAllowed:(BOOL)allowed andCompletion:(id)completion;
@end

@implementation PXPlacesGeotaggableMediaProvider

- (id)_fetchImageManagerAssetForPlacesAsset:(id)asset
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (asset)
  {
    assetCopy = asset;
    photoLibrary = [assetCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v6 = [MEMORY[0x1E6978830] px_placesFetchOptionsWith:librarySpecificFetchOptions];

    v7 = *MEMORY[0x1E6978C08];
    v16[0] = *MEMORY[0x1E6978C78];
    v16[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    [v6 setFetchPropertySets:v8];

    v9 = MEMORY[0x1E6978630];
    localIdentifier = [assetCopy localIdentifier];

    v15 = localIdentifier;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v12 = [v9 fetchAssetsWithLocalIdentifiers:v11 options:v6];
    firstObject = [v12 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)_imageForGeotaggable:(id)geotaggable ofSize:(CGSize)size networkAccessAllowed:(BOOL)allowed andCompletion:(id)completion
{
  allowedCopy = allowed;
  height = size.height;
  width = size.width;
  completionCopy = completion;
  v12 = [(PXPlacesGeotaggableMediaProvider *)self _fetchImageManagerAssetForPlacesAsset:geotaggable];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x1E69BE520];
    coarseLocationProperties = [v12 coarseLocationProperties];
    [coarseLocationProperties gpsHorizontalAccuracy];
    v16 = [v14 horizontalAccuracyIsCoarse:?];

    v17 = objc_alloc_init(MEMORY[0x1E6978868]);
    [v17 setResizeMode:2];
    [v17 setNetworkAccessAllowed:allowedCopy];
    [v17 setDeliveryMode:1];
    if ([v13 mediaSubtypes])
    {
      height = height * 3.0;
      width = width * 3.0;
    }

    defaultManager = [MEMORY[0x1E6978860] defaultManager];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99__PXPlacesGeotaggableMediaProvider__imageForGeotaggable_ofSize_networkAccessAllowed_andCompletion___block_invoke;
    v19[3] = &unk_1E773EC38;
    v21 = completionCopy;
    v22 = v16;
    v20 = v13;
    [defaultManager requestImageForAsset:v20 targetSize:1 contentMode:v17 options:v19 resultHandler:{width, height}];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
  }
}

void __99__PXPlacesGeotaggableMediaProvider__imageForGeotaggable_ofSize_networkAccessAllowed_andCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v9 = v5;
    v6 = CGImageRetain([a2 CGImage]);
    if (*(a1 + 48) == 1)
    {
      v7 = [v9 mutableCopy];
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:PKPlacesCoarseLocationMediaInfoKey];

      v8 = v7;
    }

    else
    {
      v8 = v9;
    }

    v10 = v8;
    (*(*(a1 + 40) + 16))();
    CGImageRelease(v6);
    v5 = v10;
  }
}

- (void)imageForGeotaggable:(id)geotaggable ofSize:(CGSize)size networkAccessAllowed:(BOOL)allowed andCompletion:(id)completion
{
  allowedCopy = allowed;
  height = size.height;
  width = size.width;
  geotaggableCopy = geotaggable;
  completionCopy = completion;
  v12 = objc_autoreleasePoolPush();
  [(PXPlacesGeotaggableMediaProvider *)self _imageForGeotaggable:geotaggableCopy ofSize:allowedCopy networkAccessAllowed:completionCopy andCompletion:width, height];
  objc_autoreleasePoolPop(v12);
}

@end
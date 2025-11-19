@interface PXPlacesGeotaggableMediaProvider
- (id)_fetchImageManagerAssetForPlacesAsset:(id)a3;
- (void)_imageForGeotaggable:(id)a3 ofSize:(CGSize)a4 networkAccessAllowed:(BOOL)a5 andCompletion:(id)a6;
- (void)imageForGeotaggable:(id)a3 ofSize:(CGSize)a4 networkAccessAllowed:(BOOL)a5 andCompletion:(id)a6;
@end

@implementation PXPlacesGeotaggableMediaProvider

- (id)_fetchImageManagerAssetForPlacesAsset:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v4 = [v3 photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    v6 = [MEMORY[0x1E6978830] px_placesFetchOptionsWith:v5];

    v7 = *MEMORY[0x1E6978C08];
    v16[0] = *MEMORY[0x1E6978C78];
    v16[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    [v6 setFetchPropertySets:v8];

    v9 = MEMORY[0x1E6978630];
    v10 = [v3 localIdentifier];

    v15 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v12 = [v9 fetchAssetsWithLocalIdentifiers:v11 options:v6];
    v13 = [v12 firstObject];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_imageForGeotaggable:(id)a3 ofSize:(CGSize)a4 networkAccessAllowed:(BOOL)a5 andCompletion:(id)a6
{
  v6 = a5;
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = [(PXPlacesGeotaggableMediaProvider *)self _fetchImageManagerAssetForPlacesAsset:a3];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x1E69BE520];
    v15 = [v12 coarseLocationProperties];
    [v15 gpsHorizontalAccuracy];
    v16 = [v14 horizontalAccuracyIsCoarse:?];

    v17 = objc_alloc_init(MEMORY[0x1E6978868]);
    [v17 setResizeMode:2];
    [v17 setNetworkAccessAllowed:v6];
    [v17 setDeliveryMode:1];
    if ([v13 mediaSubtypes])
    {
      height = height * 3.0;
      width = width * 3.0;
    }

    v18 = [MEMORY[0x1E6978860] defaultManager];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99__PXPlacesGeotaggableMediaProvider__imageForGeotaggable_ofSize_networkAccessAllowed_andCompletion___block_invoke;
    v19[3] = &unk_1E773EC38;
    v21 = v11;
    v22 = v16;
    v20 = v13;
    [v18 requestImageForAsset:v20 targetSize:1 contentMode:v17 options:v19 resultHandler:{width, height}];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 0, 0, 0, 0);
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

- (void)imageForGeotaggable:(id)a3 ofSize:(CGSize)a4 networkAccessAllowed:(BOOL)a5 andCompletion:(id)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  [(PXPlacesGeotaggableMediaProvider *)self _imageForGeotaggable:v13 ofSize:v7 networkAccessAllowed:v11 andCompletion:width, height];
  objc_autoreleasePoolPop(v12);
}

@end
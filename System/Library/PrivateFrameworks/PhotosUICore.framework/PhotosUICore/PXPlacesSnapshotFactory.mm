@interface PXPlacesSnapshotFactory
- (BOOL)_imageExistsWithLocalIdentifier:(id)a3;
- (PHFetchResult)placesAssetsFetchResult;
- (PXPlacesSnapshotFactory)init;
- (PXPlacesSnapshotFactory)initWithPhotoLibrary:(id)a3;
- (PXPlacesSnapshotFactoryDelegate)delegate;
- (id)_placeHolderImageForExtendedTraitCollection:(id)a3;
- (id)_representativeAsset;
- (int64_t)assetCountWithForcedRefresh:(BOOL)a3;
- (int64_t)currentUserInterfaceStyle;
- (void)_fetchImageOfAsset:(id)a3 withSnapshotOptions:(id)a4 snapshotTraitCollection:(id)a5 andCompletion:(id)a6;
- (void)_handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions:(id)a3 snapshotTraitCollection:(id)a4 andCompletion:(id)a5;
- (void)_saveImage:(id)a3 ofAsset:(id)a4 atPath:(id)a5;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)a3;
- (void)removePreviousCachedImages;
- (void)requestAssetCountWithForcedRefresh:(BOOL)a3 completion:(id)a4;
- (void)requestMapSnapshotOfRegion:(id *)a3 snapshotOptions:(id)a4 snapshotTraitCollection:(id)a5 completion:(id)a6;
- (void)requestMapSnapshotWithAssets:(id)a3 snapshotOptions:(id)a4 snapshotTraitCollection:(id)a5 popoverImageOptions:(unint64_t)a6 completion:(id)a7;
- (void)requestPlacesImageOfAsset:(id)a3 withSnapshotOptions:(id)a4 snapshotTraitCollection:(id)a5 andCompletion:(id)a6;
- (void)requestPlacesLibraryAlbumSnapshotWithSnapshotOptions:(id)a3 snapshotTraitCollection:(id)a4 andCompletion:(id)a5;
- (void)setCurrentUserInterfaceStyle:(int64_t)a3;
- (void)setupCacheAtFilepath:(id)a3;
- (void)tickAssetCountChangedTimer:(id)a3;
@end

@implementation PXPlacesSnapshotFactory

- (PXPlacesSnapshotFactoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tickAssetCountChangedTimer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    [v4 invalidate];
  }

  [(PXPlacesSnapshotFactory *)self setCountCacheInvalidated:1];
  v6 = [(PXPlacesSnapshotFactory *)self delegate];
  [v6 placesSnapshotCountDidChange];
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesSnapshotFactory *)self placesAssetsFetchResult];

  if (v5)
  {
    v6 = [(PXPlacesSnapshotFactory *)self placesAssetsFetchResult];
    v7 = [v4 changeDetailsForFetchResult:v6];

    if (v7)
    {
      v8 = [(PXPlacesSnapshotFactory *)self placesAssetsFetchResult];
      v9 = [v7 fetchResultAfterChanges];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [(PXPlacesSnapshotFactory *)self placesAssetsFetchResult];
      }

      v16 = v11;

      [(PXPlacesSnapshotFactory *)self setPlacesAssetsFetchResult:v16];
      v17 = [v8 firstObject];
      v18 = [v16 firstObject];
      v19 = v18;
      v20 = v17 != v18 || [v18 pk_isContentEqualTo:v17] != 2;
      v28 = v20;
      v21 = [v7 removedObjects];
      v22 = [v7 insertedObjects];
      if ([v21 count])
      {
        v23 = 1;
      }

      else
      {
        v23 = [v22 count] != 0;
      }

      if (v28)
      {
        v24 = [(PXPlacesSnapshotFactory *)self delegate];
        [v24 placesSnapshotDidChange];

        if (!v23)
        {
          goto LABEL_22;
        }

LABEL_19:
        v25 = [(PXPlacesSnapshotFactory *)self assetCountChangedTimer];

        if (v25)
        {
          v26 = [(PXPlacesSnapshotFactory *)self assetCountChangedTimer];
          [v26 invalidate];

          assetCountChangedTimer = self->_assetCountChangedTimer;
          self->_assetCountChangedTimer = 0;
        }

        px_dispatch_on_main_queue();
      }

      if (v23)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v12 = [(PXPlacesSnapshotFactory *)self snapshottedAsset];

    if (v12)
    {
      v13 = [(PXPlacesSnapshotFactory *)self snapshottedAsset];
      v14 = [v4 changeDetailsForObject:v13];

      if (v14)
      {
        v15 = [(PXPlacesSnapshotFactory *)self delegate];
        [v15 placesSnapshotDidChange];
      }
    }
  }

LABEL_22:
}

void __49__PXPlacesSnapshotFactory_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v1 target:sel_tickAssetCountChangedTimer_ selector:0 userInfo:0 repeats:2.0];
  [v1 setAssetCountChangedTimer:v2];
}

- (BOOL)_imageExistsWithLocalIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6978630];
  v13 = a3;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a3;
  v7 = [v5 arrayWithObjects:&v13 count:1];
  v8 = [(PXPlacesSnapshotFactory *)self photoLibrary:v13];
  v9 = [v8 librarySpecificFetchOptions];
  v10 = [v4 fetchAssetsWithLocalIdentifiers:v7 options:v9];

  if (v10)
  {
    v11 = [v10 count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_saveImage:(id)a3 ofAsset:(id)a4 atPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v16 = UIImageJPEGRepresentation(a3, 1.0);
  v9 = [objc_alloc(MEMORY[0x1E695F658]) initWithData:v16];
  v10 = [v9 properties];
  v11 = *MEMORY[0x1E696D9B0];
  v12 = [v10 objectForKey:*MEMORY[0x1E696D9B0]];
  v13 = [v8 localIdentifier];

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v12];
  [v14 setObject:v13 forKey:*MEMORY[0x1E696DB40]];
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v10];
  [v15 setObject:v14 forKey:v11];
  CGImageWriteEXIFJPEGToPath();
}

- (void)removePreviousCachedImages
{
  os_unfair_lock_lock(&self->_cachedIvarLock);
  v6 = self->_cachedFilePathLight;
  v3 = self->_cachedFilePathDark;
  os_unfair_lock_unlock(&self->_cachedIvarLock);
  if (v6)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 removeItemAtPath:v6 error:0];
  }

  if (v3)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 removeItemAtPath:v3 error:0];
  }
}

- (id)_representativeAsset
{
  v2 = [(PXPlacesSnapshotFactory *)self placesAssetsFetchResult];
  v3 = [v2 firstObject];

  return v3;
}

- (id)_placeHolderImageForExtendedTraitCollection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cachedIvarLock);
  v5 = self->_cachedPlaceholderImage;
  os_unfair_lock_unlock(&self->_cachedIvarLock);
  if (!v5)
  {
    v6 = +[PXPlacesPopoverImageFactory sharedInstance];
    v5 = [v6 createAlbumPlaceHolderImageUsingTraitCollection:v4];

    os_unfair_lock_lock(&self->_cachedIvarLock);
    objc_storeStrong(&self->_cachedPlaceholderImage, v5);
    os_unfair_lock_unlock(&self->_cachedIvarLock);
  }

  return v5;
}

- (PHFetchResult)placesAssetsFetchResult
{
  v15[1] = *MEMORY[0x1E69E9840];
  placesAssetsFetchResult = self->_placesAssetsFetchResult;
  if (!placesAssetsFetchResult)
  {
    v4 = [(PXPlacesSnapshotFactory *)self photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"creationDate" ascending:0];
    v15[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v5 setSortDescriptors:v7];

    [v5 setFetchLimit:1];
    v8 = *MEMORY[0x1E6978C08];
    v14[0] = *MEMORY[0x1E6978C78];
    v14[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    [v5 setFetchPropertySets:v9];

    v10 = [(PXPlacesSnapshotFactory *)self libraryFilterState];
    [v5 setSharingFilter:{objc_msgSend(v10, "sharingFilter")}];

    v11 = [MEMORY[0x1E6978630] pk_fetchPlacesAssetsInAssetCollection:self->_placesCollection shouldMergeOptionFetchPropertySets:1 options:v5];
    v12 = self->_placesAssetsFetchResult;
    self->_placesAssetsFetchResult = v11;

    placesAssetsFetchResult = self->_placesAssetsFetchResult;
  }

  return placesAssetsFetchResult;
}

- (void)requestAssetCountWithForcedRefresh:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PXPlacesSnapshotFactory_requestAssetCountWithForcedRefresh_completion___block_invoke;
  block[3] = &unk_1E774A940;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(concurrentQueue, block);
}

uint64_t __73__PXPlacesSnapshotFactory_requestAssetCountWithForcedRefresh_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) assetCountWithForcedRefresh:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (int64_t)assetCountWithForcedRefresh:(BOOL)a3
{
  if (a3 || [(PXPlacesSnapshotFactory *)self countCacheInvalidated])
  {
    v4 = [(PXPlacesSnapshotFactory *)self photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    v6 = [MEMORY[0x1E69BE520] predicateForAssetWithLocation];
    [v5 setInternalPredicate:v6];

    [v5 setInternalSortDescriptors:MEMORY[0x1E695E0F0]];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E6978C68], 0}];
    [v5 setFetchPropertySets:v7];

    [v5 setShouldPrefetchCount:1];
    [v5 setWantsIncrementalChangeDetails:0];
    [v5 setIncludeAssetSourceTypes:5];
    v8 = [(PXPlacesSnapshotFactory *)self libraryFilterState];
    [v5 setSharingFilter:{objc_msgSend(v8, "sharingFilter")}];

    v9 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v5];
    cachedCount = [v9 count];
    os_unfair_lock_lock(&self->_cachedIvarLock);
    self->_cachedCount = cachedCount;
    os_unfair_lock_unlock(&self->_cachedIvarLock);
    [(PXPlacesSnapshotFactory *)self setAssetCountFetchResult:v9];
    [(PXPlacesSnapshotFactory *)self setCountCacheInvalidated:0];
  }

  else
  {
    os_unfair_lock_lock(&self->_cachedIvarLock);
    cachedCount = self->_cachedCount;
    os_unfair_lock_unlock(&self->_cachedIvarLock);
  }

  return cachedCount;
}

- (void)requestMapSnapshotOfRegion:(id *)a3 snapshotOptions:(id)a4 snapshotTraitCollection:(id)a5 completion:(id)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a3;
  v18 = a5;
  v19 = a4;
  [PXPlacesMapView MKMapRectForCoordinateRegion:v15, v14, v13, v12];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = objc_alloc_init(MEMORY[0x1E696F2B0]);
  [($2BD6E2315BC9B3DA5D3AD3507E7082AC *)v17 viewSize];
  [v28 setSize:?];
  [v28 setMapRect:{v21, v23, v25, v27}];
  [v28 _setShowsPointLabels:{-[$2BD6E2315BC9B3DA5D3AD3507E7082AC showsPointLabels](v17, "showsPointLabels")}];
  [v28 setTraitCollection:v19];

  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__PXPlacesSnapshotFactory_requestMapSnapshotOfRegion_snapshotOptions_snapshotTraitCollection_completion___block_invoke;
  block[3] = &unk_1E774A0E0;
  v34 = v28;
  v35 = v17;
  v36 = v18;
  v30 = v18;
  v31 = v17;
  v32 = v28;
  dispatch_async(concurrentQueue, block);
}

void __105__PXPlacesSnapshotFactory_requestMapSnapshotOfRegion_snapshotOptions_snapshotTraitCollection_completion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696F2B8]) initWithOptions:*(a1 + 32)];
  v3 = [*(a1 + 40) queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __105__PXPlacesSnapshotFactory_requestMapSnapshotOfRegion_snapshotOptions_snapshotTraitCollection_completion___block_invoke_2;
  v4[3] = &unk_1E7744BA0;
  v5 = *(a1 + 48);
  [v2 startWithQueue:v3 completionHandler:v4];
}

void __105__PXPlacesSnapshotFactory_requestMapSnapshotOfRegion_snapshotOptions_snapshotTraitCollection_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 image];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v7);
  }
}

- (void)requestPlacesImageOfAsset:(id)a3 withSnapshotOptions:(id)a4 snapshotTraitCollection:(id)a5 andCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v54 = a6;
  [v10 locationCoordinate];
  latitude = v96.latitude;
  longitude = v96.longitude;
  if (!CLLocationCoordinate2DIsValid(v96))
  {
    PXAssertGetLog();
  }

  v15 = MEMORY[0x1E69BE520];
  v16 = [v10 coarseLocationProperties];
  [v16 gpsHorizontalAccuracy];
  LODWORD(v15) = [v15 horizontalAccuracyIsCoarse:?];

  v17 = v15;
  v18 = [v11 extendedTraitCollection];
  v19 = +[PXPlacesPopoverImageFactory sharedInstance];
  [v19 thumbnailImageSizeForImageType:v17 usingTraitCollection:v18 includeScale:1];
  v21 = v20;
  v23 = v22;

  v24 = +[PXPlacesPopoverImageFactory sharedInstance];
  v53 = v17;
  [v24 backgroundImageSizeForType:v17 usingTraitCollection:v18];
  v26 = v25;
  v28 = v27;

  MEMORY[0x1A590B350](latitude, longitude, 10000.0, 10000.0);
  [PXPlacesMapView MKMapRectForCoordinateRegion:?];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = objc_alloc_init(MEMORY[0x1E696F2B0]);
  [v37 setSize:{v26, v28}];
  [v37 setMapRect:{v30, v32, v34, v36}];
  [v37 _setShowsPointLabels:{objc_msgSend(v11, "showsPointLabels")}];
  v55 = v12;
  [v37 setTraitCollection:v12];
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x2020000000;
  v95 = 0;
  *buf = 0;
  v89 = buf;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__208106;
  v92 = __Block_byref_object_dispose__208107;
  v93 = 0;
  v56 = v10;
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x3032000000;
  v86[3] = __Block_byref_object_copy__208106;
  v86[4] = __Block_byref_object_dispose__208107;
  v87 = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2020000000;
  v85[3] = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x3032000000;
  v83[3] = __Block_byref_object_copy__208106;
  v83[4] = __Block_byref_object_dispose__208107;
  v84 = 0;
  objc_initWeak(&location, self);
  v38 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v39 = dispatch_group_create();
  dispatch_group_enter(v39);
  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__PXPlacesSnapshotFactory_requestPlacesImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke;
  block[3] = &unk_1E7744B00;
  v41 = v37;
  v77 = v41;
  v42 = v11;
  v78 = v42;
  v80 = buf;
  v81 = v86;
  v43 = v39;
  v79 = v43;
  dispatch_async(concurrentQueue, block);
  dispatch_group_enter(v43);
  v44 = self->_concurrentQueue;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __111__PXPlacesSnapshotFactory_requestPlacesImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_3;
  v66[3] = &unk_1E7744B50;
  v45 = v42;
  v67 = v45;
  v46 = v56;
  v68 = v46;
  v74 = v21;
  v75 = v23;
  v47 = v38;
  v69 = v47;
  v71 = v94;
  v72 = v83;
  v73 = v85;
  v48 = v43;
  v70 = v48;
  dispatch_async(v44, v66);
  v49 = [v45 queue];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __111__PXPlacesSnapshotFactory_requestPlacesImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_5;
  v57[3] = &unk_1E7744B78;
  v60 = v54;
  v61 = v86;
  v62 = v83;
  v63 = buf;
  v64 = v85;
  v65[1] = v53;
  v58 = v46;
  v59 = v18;
  v50 = v18;
  v51 = v46;
  v52 = v54;
  objc_copyWeak(v65, &location);
  dispatch_group_notify(v48, v49, v57);

  objc_destroyWeak(v65);
  objc_destroyWeak(&location);
  _Block_object_dispose(v83, 8);

  _Block_object_dispose(v85, 8);
  _Block_object_dispose(v86, 8);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v94, 8);
}

void __111__PXPlacesSnapshotFactory_requestPlacesImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696F2B8]) initWithOptions:*(a1 + 32)];
  v3 = [*(a1 + 40) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111__PXPlacesSnapshotFactory_requestPlacesImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_2;
  v6[3] = &unk_1E7744AD8;
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v2 startWithQueue:v3 completionHandler:v6];
}

void __111__PXPlacesSnapshotFactory_requestPlacesImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) geotaggableInformationDelegate];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __111__PXPlacesSnapshotFactory_requestPlacesImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_4;
  v6[3] = &unk_1E7744B28;
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 72);
  v5 = *(a1 + 56);
  v4 = v5;
  v8 = v5;
  [v2 imageForGeotaggable:v3 ofSize:1 networkAccessAllowed:v6 andCompletion:{*(a1 + 88), *(a1 + 96)}];
}

void __111__PXPlacesSnapshotFactory_requestPlacesImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_5(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40) || *(*(*(a1 + 64) + 8) + 40))
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }

    v3 = *(v2 + 16);
LABEL_5:

    v3();
    return;
  }

  if (!*(*(*(a1 + 72) + 8) + 40) || (v4 = *(*(*(a1 + 80) + 8) + 24)) == 0 || !CGImageGetWidth(v4) || !CGImageGetHeight(*(*(*(a1 + 80) + 8) + 24)))
  {
    v21 = *(a1 + 48);
    if (!v21)
    {
      return;
    }

    v3 = *(v21 + 16);
    goto LABEL_5;
  }

  [*(*(*(a1 + 72) + 8) + 40) size];
  v6 = v5;
  v8 = v7;
  v9 = +[PXPlacesPopoverImageFactory sharedInstance];
  v22 = [v9 createPopoverImageForGeotaggable:*(a1 + 32) withImage:*(*(*(a1 + 80) + 8) + 24) imageType:*(a1 + 96) imageOptions:0 usingTraitCollection:*(a1 + 40)];

  [v22 size];
  v11 = v6 * 0.5 - v10 * 0.5;
  [v22 size];
  v13 = v8 * 0.5 - v12 * 0.5;
  v24.width = v6;
  v24.height = v8;
  UIGraphicsBeginImageContextWithOptions(v24, 0, 0.0);
  [*(*(*(a1 + 72) + 8) + 40) drawInRect:{0.0, 0.0, v6, v8}];
  [v22 size];
  v15 = v14;
  [v22 size];
  [v22 drawInRect:{v11, v13, v15, v16}];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  CFRelease(*(*(*(a1 + 80) + 8) + 24));
  v18 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  [WeakRetained setSnapshottedAsset:v18];

  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, v17, 0);
  }
}

void __111__PXPlacesSnapshotFactory_requestPlacesImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  [*(a1 + 32) lock];
  v7 = *(*(a1 + 48) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    if (a3)
    {
      *(*(*(a1 + 64) + 8) + 24) = a3;
      CFRetain(*(*(*(a1 + 64) + 8) + 24));
    }

    dispatch_group_leave(*(a1 + 40));
  }

  [*(a1 + 32) unlock];
}

void __111__PXPlacesSnapshotFactory_requestPlacesImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 image];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_group_leave(*(a1 + 32));
}

- (void)_fetchImageOfAsset:(id)a3 withSnapshotOptions:(id)a4 snapshotTraitCollection:(id)a5 andCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __104__PXPlacesSnapshotFactory__fetchImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke;
  v18[3] = &unk_1E7744AB0;
  v14 = v12;
  v19 = v14;
  v15 = v10;
  v20 = v15;
  v21 = self;
  objc_copyWeak(&v24, &location);
  v16 = v13;
  v23 = v16;
  v17 = v11;
  v22 = v17;
  [(PXPlacesSnapshotFactory *)self requestPlacesImageOfAsset:v15 withSnapshotOptions:v17 snapshotTraitCollection:v14 andCompletion:v18];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __104__PXPlacesSnapshotFactory__fetchImageOfAsset_withSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v6 = a3;
  if (v20)
  {
    v7 = [*(a1 + 32) userInterfaceStyle];
    v8 = [*(a1 + 40) localIdentifier];
    os_unfair_lock_lock((*(a1 + 48) + 64));
    if (v7 > 2)
    {
      v11 = 0;
    }

    else
    {
      v9 = qword_1A5382B58[v7];
      v10 = qword_1A5382B70[v7];
      objc_storeStrong((*(a1 + 48) + v9), a2);
      v11 = *(*(a1 + 48) + v10);
    }

    v17 = *(a1 + 48);
    v18 = *(v17 + 40);
    *(v17 + 40) = v8;
    v15 = v8;

    os_unfair_lock_unlock((*(a1 + 48) + 64));
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained _saveImage:v20 ofAsset:*(a1 + 40) atPath:v11];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if ([*(a1 + 56) shouldSkipPlaceholder])
    {
      goto LABEL_9;
    }

    os_unfair_lock_lock((*(a1 + 48) + 64));
    v12 = *(a1 + 48);
    v13 = *(v12 + 56);
    os_unfair_lock_unlock((v12 + 64));
    v14 = *(a1 + 64);
    v11 = objc_loadWeakRetained((a1 + 72));
    v15 = [*(a1 + 56) extendedTraitCollection];
    v16 = [v11 _placeHolderImageForExtendedTraitCollection:v15];
    (*(v14 + 16))(v14, v16, v13, v6);
  }

LABEL_9:
}

- (void)_handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions:(id)a3 snapshotTraitCollection:(id)a4 andCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__PXPlacesSnapshotFactory__handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke;
  block[3] = &unk_1E7744A38;
  block[4] = self;
  v26 = &v27;
  v12 = v10;
  v25 = v12;
  dispatch_sync(serialQueue, block);
  if (*(v28 + 24) == 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __123__PXPlacesSnapshotFactory__handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_2;
    aBlock[3] = &unk_1E7744A60;
    aBlock[4] = self;
    objc_copyWeak(&v23, &location);
    v13 = _Block_copy(aBlock);
    v14 = [(PXPlacesSnapshotFactory *)self currentUserInterfaceStyle];
    v15 = [v8 queue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __123__PXPlacesSnapshotFactory__handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_4;
    v17[3] = &unk_1E7744A88;
    objc_copyWeak(v21, &location);
    v17[4] = self;
    v18 = v9;
    v21[1] = v14;
    v19 = v8;
    v20 = v13;
    v16 = v13;
    dispatch_async(v15, v17);

    objc_destroyWeak(v21);
    objc_destroyWeak(&v23);
  }

  _Block_object_dispose(&v27, 8);
  objc_destroyWeak(&location);
}

void __123__PXPlacesSnapshotFactory__handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 72);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = a1[4];
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    v2 = *(a1[4] + 72);
  }

  if (![v2 count])
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = *(a1[4] + 72);
    v9 = [v6 copy];
    v8 = _Block_copy(v9);
    [v7 addObject:v8];
  }
}

void __123__PXPlacesSnapshotFactory__handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__208106;
  v27 = __Block_byref_object_dispose__208107;
  v28 = 0;
  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__PXPlacesSnapshotFactory__handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_3;
  block[3] = &unk_1E7749A28;
  block[4] = v8;
  block[5] = &v23;
  dispatch_sync(v9, block);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v24[5];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v18 + 1) + 8 * v13) + 16))(*(*(&v18 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v15 = [WeakRetained isRegisteredForPhotoLibraryChanges];

  if ((v15 & 1) == 0)
  {
    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = [v16 photoLibrary];
    [v17 registerChangeObserver:*(a1 + 32)];
  }

  _Block_object_dispose(&v23, 8);
}

void __123__PXPlacesSnapshotFactory__handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_4(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained _representativeAsset];

  if (v3)
  {
    v4 = [v3 localIdentifier];
    os_unfair_lock_lock((*(a1 + 32) + 64));
    v5 = *(*(a1 + 32) + 24);
    v6 = *(*(a1 + 32) + 32);
    v7 = *(*(a1 + 32) + 40);
    os_unfair_lock_unlock((*(a1 + 32) + 64));
    v8 = [*(a1 + 40) userInterfaceStyle];
    if (*(a1 + 72) == v8)
    {
      v9 = 0;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else if (v8 != 1 || v5)
    {
      v9 = v8 == 2 && v6 == 0;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v9 = 1;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    if (v9 | (([v7 isEqualToString:v4] & 1) == 0))
    {
LABEL_20:
      v22 = objc_loadWeakRetained((a1 + 64));
      [v22 _fetchImageOfAsset:v3 withSnapshotOptions:*(a1 + 48) snapshotTraitCollection:*(a1 + 40) andCompletion:*(a1 + 56)];

LABEL_31:
      goto LABEL_32;
    }

    [*(a1 + 32) setSnapshottedAsset:v3];
    v23 = [*(a1 + 40) userInterfaceStyle];
    if (v23 == 2)
    {
      v25 = v6;
    }

    else
    {
      if (v23 != 1)
      {
        if (!v23 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315138;
          v27 = "[PXPlacesSnapshotFactory _handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions:snapshotTraitCollection:andCompletion:]_block_invoke_4";
          _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unspecified user interface style not expected here: %s", &v26, 0xCu);
        }

        v24 = 0;
        goto LABEL_30;
      }

      v25 = v5;
    }

    v24 = v25;
LABEL_30:
    (*(*(a1 + 56) + 16))();

    goto LABEL_31;
  }

  os_unfair_lock_lock((*(a1 + 32) + 64));
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  *(v10 + 24) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 32);
  *(v12 + 32) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 56);
  os_unfair_lock_unlock((v14 + 64));
  [*(a1 + 32) removePreviousCachedImages];
  [*(a1 + 32) setPlacesAssetsFetchResult:0];
  if ([*(a1 + 48) shouldSkipPlaceholder])
  {
    v16 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"There are no assets with location in the library"];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v17 = *(a1 + 56);
    v18 = objc_loadWeakRetained((a1 + 64));
    v19 = [*(a1 + 48) extendedTraitCollection];
    v20 = [v18 _placeHolderImageForExtendedTraitCollection:v19];
    (*(v17 + 16))(v17, v20, v15, 0);
  }

LABEL_32:
}

uint64_t __123__PXPlacesSnapshotFactory__handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(a1 + 32) + 72)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 72);

  return [v5 removeAllObjects];
}

- (void)requestPlacesLibraryAlbumSnapshotWithSnapshotOptions:(id)a3 snapshotTraitCollection:(id)a4 andCompletion:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(PXPlacesSnapshotFactory *)self hasCacheFilepaths])
  {
    v11 = [v8 cacheDirectoryPath];
    [(PXPlacesSnapshotFactory *)self setupCacheAtFilepath:v11];
  }

  v12 = [v9 userInterfaceStyle];
  v13 = v12;
  if (v12 == 2)
  {
    os_unfair_lock_lock(&self->_cachedIvarLock);
    cachedSnapshotImageDark = self->_cachedSnapshotImageDark;
  }

  else
  {
    if (v12 != 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *location = 134218498;
      *&location[4] = v13;
      v47 = 2112;
      v48 = v8;
      v49 = 2080;
      v50 = "[PXPlacesSnapshotFactory requestPlacesLibraryAlbumSnapshotWithSnapshotOptions:snapshotTraitCollection:andCompletion:]";
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "User interface style not expected here: %li\n with options: %@\n function: %s", location, 0x20u);
    }

    os_unfair_lock_lock(&self->_cachedIvarLock);
    cachedSnapshotImageDark = self->_cachedSnapshotImageLight;
  }

  v15 = cachedSnapshotImageDark;
  os_unfair_lock_unlock(&self->_cachedIvarLock);
  if (!v15)
  {
    os_unfair_lock_lock(&self->_cachedIvarLock);
    v17 = 8;
    if (v13 == 2)
    {
      v17 = 16;
    }

    v18 = *(&self->super.isa + v17);
    v40 = self->_cachedSnapshotImageIdentifier;
    cachedCount = self->_cachedCount;
    os_unfair_lock_unlock(&self->_cachedIvarLock);
    v39 = v18;
    if ([v18 length])
    {
      url = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
      v19 = CGImageSourceCreateWithURL(url, 0);
      v20 = v19;
      if (v19)
      {
        v21 = CGImageSourceCopyPropertiesAtIndex(v19, 0, 0);
        v36 = v21;
        if (v21)
        {
          v22 = [(__CFDictionary *)v21 objectForKey:*MEMORY[0x1E696D9B0]];
          v23 = [v22 objectForKey:*MEMORY[0x1E696DB40]];
        }

        else
        {
          v23 = 0;
        }

        ImageAtIndex = CGImageSourceCreateImageAtIndex(v20, 0, 0);
        CFRelease(v20);
        if (!ImageAtIndex)
        {
          v15 = 0;
          goto LABEL_37;
        }

        v33 = [MEMORY[0x1E69DCAB8] imageWithCGImage:ImageAtIndex];
        if (v13 == 1)
        {
          v34 = 24;
        }

        else
        {
          if (v13 != 2)
          {
            v15 = 0;
            goto LABEL_36;
          }

          v34 = 32;
        }

        os_unfair_lock_lock(&self->_cachedIvarLock);
        objc_storeStrong((&self->super.isa + v34), v33);
        os_unfair_lock_unlock(&self->_cachedIvarLock);
        v15 = v33;
LABEL_36:
        CGImageRelease(ImageAtIndex);

LABEL_37:
        if (v23)
        {
          os_unfair_lock_lock(&self->_cachedIvarLock);
          objc_storeStrong(&self->_cachedSnapshotImageIdentifier, v23);
          os_unfair_lock_unlock(&self->_cachedIvarLock);
          v35 = v23;

          v40 = v35;
        }

        if (v15 && v40 && [(PXPlacesSnapshotFactory *)self _imageExistsWithLocalIdentifier:?])
        {
          if (v10)
          {
            v10[2](v10, v15, cachedCount, 0);
          }

LABEL_25:

          goto LABEL_26;
        }

LABEL_20:
        v24 = [v8 shouldSkipPlaceholder];
        if (v10)
        {
          v25 = v24;
        }

        else
        {
          v25 = 1;
        }

        if ((v25 & 1) == 0)
        {
          v26 = [v8 extendedTraitCollection];
          v27 = [(PXPlacesSnapshotFactory *)self _placeHolderImageForExtendedTraitCollection:v26];
          v10[2](v10, v27, cachedCount, 0);
        }

        goto LABEL_25;
      }
    }

    v15 = 0;
    goto LABEL_20;
  }

  if (v10)
  {
    os_unfair_lock_lock(&self->_cachedIvarLock);
    v16 = self->_cachedCount;
    os_unfair_lock_unlock(&self->_cachedIvarLock);
    [(PXPlacesSnapshotFactory *)self setCurrentUserInterfaceStyle:v13];
    v10[2](v10, v15, v16, 0);
  }

LABEL_26:
  objc_initWeak(location, self);
  v28 = [v8 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __118__PXPlacesSnapshotFactory_requestPlacesLibraryAlbumSnapshotWithSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke;
  block[3] = &unk_1E774B1F8;
  objc_copyWeak(&v45, location);
  v42 = v8;
  v43 = v9;
  v44 = v10;
  v29 = v10;
  v30 = v9;
  v31 = v8;
  dispatch_async(v28, block);

  objc_destroyWeak(&v45);
  objc_destroyWeak(location);
}

void __118__PXPlacesSnapshotFactory_requestPlacesLibraryAlbumSnapshotWithSnapshotOptions_snapshotTraitCollection_andCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleAsyncPlacesLibraryAlbumSnapshotWithSnapshotOptions:*(a1 + 32) snapshotTraitCollection:*(a1 + 40) andCompletion:*(a1 + 48)];
}

- (void)requestMapSnapshotWithAssets:(id)a3 snapshotOptions:(id)a4 snapshotTraitCollection:(id)a5 popoverImageOptions:(unint64_t)a6 completion:(id)a7
{
  v68 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v70 = self;
  if (![(PXPlacesSnapshotFactory *)self hasCacheFilepaths])
  {
    v15 = [v12 cacheDirectoryPath];
    [(PXPlacesSnapshotFactory *)self setupCacheAtFilepath:v15];
  }

  [v12 viewSize];
  v65 = v17;
  v66 = v16;
  [v12 additionalInsets];
  v64 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v12 shouldRenderThumbnailForNoLocation];
  v26 = [v12 popoverImageType];
  v111[0] = 0;
  v111[1] = v111;
  v111[2] = 0x3032000000;
  v111[3] = __Block_byref_object_copy__208106;
  v111[4] = __Block_byref_object_dispose__208107;
  v112 = 0;
  v109[0] = 0;
  v109[1] = v109;
  v109[2] = 0x3032000000;
  v109[3] = __Block_byref_object_copy__208106;
  v109[4] = __Block_byref_object_dispose__208107;
  v110 = 0;
  v107[0] = 0;
  v107[1] = v107;
  v107[2] = 0x3032000000;
  v107[3] = __Block_byref_object_copy__208106;
  v107[4] = __Block_byref_object_dispose__208107;
  v108 = 0;
  v27 = [v12 queue];
  qos_class = dispatch_queue_get_qos_class(v27, 0);

  v29 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v30 = dispatch_queue_attr_make_with_qos_class(v29, qos_class, 0);
  v31 = dispatch_queue_create("placesSnapshotConcurrentQueue", v30);

  v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v33 = dispatch_queue_attr_make_with_qos_class(v32, qos_class, 0);
  v63 = dispatch_queue_create("placesSnapshotSerialQueue", v33);

  v34 = [v12 extendedTraitCollection];
  v35 = +[PXPlacesPopoverImageFactory sharedInstance];
  [v35 backgroundImageSizeForType:v26 usingTraitCollection:v34];
  v37 = v36;
  v39 = v38;
  [v35 thumbnailImageSizeForImageType:v26 usingTraitCollection:v34 includeScale:1];
  v41 = v40;
  v43 = v42;
  v62 = v25;
  v44 = [v12 showsPointLabels];
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = v14;
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x3032000000;
  v105[3] = __Block_byref_object_copy__208106;
  v105[4] = __Block_byref_object_dispose__208107;
  v106 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v45 = [PXPlacesPhotoAssetsStore alloc];
  v46 = [(PXPlacesSnapshotFactory *)v70 photoLibrary];
  v47 = [(PXPlacesPhotoAssetsStore *)v45 initWithFetchResults:v68 photoLibrary:v46];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke;
  aBlock[3] = &unk_1E7744A10;
  v48 = v12;
  v75 = v48;
  v49 = v47;
  v76 = v49;
  v50 = v34;
  v77 = v50;
  v90 = v26;
  v91 = a6;
  v92 = 0;
  v93 = v66;
  v94 = v65;
  v95 = v64;
  v96 = v20;
  v97 = v22;
  v98 = v24;
  v69 = v68;
  v78 = v69;
  v51 = v31;
  v79 = v51;
  v86 = v109;
  v87 = v107;
  v103 = v44;
  v88 = v111;
  v67 = v13;
  v80 = v67;
  v81 = v70;
  v52 = v61;
  v82 = v52;
  v53 = v63;
  v83 = v53;
  v89 = v105;
  v104 = v62;
  v54 = v35;
  v84 = v54;
  v99 = v41;
  v100 = v43;
  v55 = v60;
  v85 = v55;
  v101 = v37;
  v102 = v39;
  v56 = _Block_copy(aBlock);
  v57 = [v48 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_13;
  block[3] = &unk_1E774C2F0;
  v72 = v49;
  v73 = v56;
  v58 = v56;
  v59 = v49;
  dispatch_async(v57, block);

  _Block_object_dispose(v105, 8);
  _Block_object_dispose(v107, 8);

  _Block_object_dispose(v109, 8);
  _Block_object_dispose(v111, 8);
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geotaggableInformationDelegate];
  v3 = [*(a1 + 40) dataSource];
  v4 = [PXPlacesMapPipelineFactory thumbnailPipelineForDataSource:v3 extendedTraitCollection:*(a1 + 48) geotaggableInfo:v2 popoverImageType:*(a1 + 152) popoverImageOptions:*(a1 + 160) countLabelStyle:*(a1 + 168) thumbnailLocationCurator:0];
  v5 = [v4 renderer];
  v6 = objc_alloc_init(PXPlacesMapController);
  v113[0] = 0;
  v7 = [*(a1 + 32) region];
  if (fabs(v11) <= 180.0 && fabs(v8) <= 90.0 && v9 >= 0.0 && v9 <= 180.0 && v10 >= 0.0 && v10 <= 360.0)
  {
    v12 = MEMORY[0x1A590B3A0](v7);
LABEL_9:
    [v5 minimumEdgeInsets];
    v62 = v20 + *(a1 + 208);
    v63 = v21 + *(a1 + 216);
    v60 = v22 + *(a1 + 192);
    v61 = v23 + *(a1 + 200);
    _MKMapRectThatFits();
    v13 = v24;
    v15 = v25;
    v17 = v26;
    v19 = v27;
    goto LABEL_10;
  }

  [(PXPlacesMapController *)v6 mapRectForGeotaggablesFromDataSource:v3 renderer:v5 mapViewSize:v113 fitAdjusted:*(a1 + 176), *(a1 + 184)];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ((v113[0] & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ([*(a1 + 56) count] == 1 && (objc_msgSend(*(a1 + 56), "firstObject"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "count"), v28, v29 == 1))
  {
    v64 = v6;
    v30 = [*(a1 + 56) firstObject];
    v31 = [v30 firstObject];

    [v31 fetchPropertySetsIfNeeded];
    v32 = [v31 location];
    v33 = v32 != 0;

    v34 = MEMORY[0x1E69BE520];
    v35 = [v31 coarseLocationProperties];
    [v35 gpsHorizontalAccuracy];
    LODWORD(v34) = [v34 horizontalAccuracyIsCoarse:?];

    if (v34)
    {
      v114.origin.x = v13;
      v114.origin.y = v15;
      v114.size.width = v17;
      v114.size.height = v19;
      v115 = MKCoordinateRegionForMapRect(v114);
      v13 = MEMORY[0x1A590B3A0](v115.center, *&v115.center.longitude, v115.span.latitudeDelta * 4.0, v115.span.longitudeDelta * 4.0);
      v15 = v36;
      v17 = v37;
      v19 = v38;
    }

    v6 = v64;
  }

  else
  {
    v33 = 1;
  }

  v39 = dispatch_group_create();
  dispatch_group_enter(v39);
  v40 = *(a1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_2;
  block[3] = &unk_1E7744880;
  v105 = *(a1 + 120);
  v41 = v39;
  v101 = v41;
  v102 = *(a1 + 32);
  v103 = *(a1 + 56);
  v106 = *(a1 + 176);
  v111 = v33;
  v107 = v13;
  v108 = v15;
  v109 = v17;
  v110 = v19;
  v104 = *(a1 + 72);
  v112 = *(a1 + 256);
  dispatch_async(v40, block);
  dispatch_group_enter(v41);
  v42 = *(a1 + 64);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_203;
  v78[3] = &unk_1E7744970;
  v43 = *(a1 + 136);
  v91 = v13;
  v92 = v15;
  v93 = v17;
  v94 = v19;
  v95 = *(a1 + 176);
  v89 = v43;
  v79 = v4;
  v44 = *(a1 + 48);
  v45 = *(a1 + 80);
  v46 = *(a1 + 88);
  v80 = v44;
  v81 = v45;
  v82 = v46;
  v47 = *(a1 + 96);
  v90 = *(a1 + 144);
  v98 = *(a1 + 257);
  v99 = v33;
  v83 = v47;
  v84 = v2;
  v85 = *(a1 + 104);
  v96 = *(a1 + 152);
  v86 = *(a1 + 56);
  v97 = *(a1 + 224);
  v87 = *(a1 + 32);
  v88 = v41;
  v48 = v41;
  v49 = v2;
  v50 = v4;
  dispatch_async(v42, v78);
  v51 = [*(a1 + 32) queue];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_10;
  v65[3] = &unk_1E77449E8;
  v69 = *(a1 + 128);
  v52 = *(a1 + 112);
  v53 = *(a1 + 136);
  v68 = v52;
  v73 = *(a1 + 176);
  v54 = *(a1 + 120);
  v70 = v53;
  v71 = v54;
  v55 = *(a1 + 96);
  v56 = *(a1 + 144);
  v66 = v55;
  v72 = v56;
  v57 = *(a1 + 240);
  v77 = *(a1 + 257);
  v58 = *(a1 + 192);
  v59 = *(a1 + 208);
  v74 = v57;
  v75 = v58;
  v76 = v59;
  v67 = *(a1 + 88);
  dispatch_group_notify(v48, v51, v65);
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_2(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_3;
  aBlock[3] = &unk_1E7744858;
  v11 = *(a1 + 64);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v2 = _Block_copy(aBlock);
  v3 = objc_alloc_init(MEMORY[0x1E696F2B0]);
  [v3 setShowsBuildings:1];
  [v3 setSize:{*(a1 + 80), *(a1 + 88)}];
  if (*(a1 + 128) == 1)
  {
    [v3 setMapRect:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
  }

  [v3 setTraitCollection:*(a1 + 56)];
  [v3 _setShowsPointLabels:*(a1 + 129)];
  if ([*(a1 + 40) snapshotMapType])
  {
    if ([*(a1 + 40) snapshotMapType] == 1)
    {
      v4 = 105;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  [v3 setMapType:v4];
  v5 = [objc_alloc(MEMORY[0x1E696F2B8]) initWithOptions:v3];
  v6 = [*(a1 + 40) queue];
  [v5 startWithQueue:v6 completionHandler:v2];
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_203(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [[PXPlacesMapViewPort alloc] initWithMapRect:*(a1 + 128) andViewSize:*(a1 + 136) zoomLevel:*(a1 + 144) pitch:*(a1 + 152), *(a1 + 160), *(a1 + 168), 0.0, 0.0];
  v3 = *(*(a1 + 112) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v21 = [*(a1 + 32) executeWithUpdatedViewPort:*(*(*(a1 + 112) + 8) + 40) andDataSourceChange:0];
  v5 = [v21 annotationsToAddImmediately];
  v6 = dispatch_group_create();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    v10 = MEMORY[0x1E69E96A0];
    do
    {
      v11 = 0;
      do
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v42 + 1) + 8 * v11);
        dispatch_group_enter(v6);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_2_205;
        block[3] = &unk_1E77448F8;
        block[4] = v12;
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        v15 = *(a1 + 56);
        v36 = v13;
        v37 = v14;
        v38 = v15;
        v16 = *(a1 + 64);
        v17 = *(a1 + 120);
        v39 = v16;
        v41 = v17;
        v40 = v6;
        dispatch_sync(v10, block);

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v8);
  }

  if (![*(*(*(a1 + 120) + 8) + 40) count] && *(a1 + 208) == 1 && (*(a1 + 209) & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    dispatch_group_enter(v6);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_6;
    v25[3] = &unk_1E7744948;
    v26 = *(a1 + 80);
    v33 = *(a1 + 176);
    v27 = *(a1 + 40);
    v18 = *(a1 + 64);
    v19 = *(a1 + 120);
    v28 = v18;
    v32 = v19;
    v29 = v6;
    v30 = *(a1 + 88);
    v31 = *(a1 + 72);
    v34 = *(a1 + 192);
    dispatch_sync(MEMORY[0x1E69E96A0], v25);
  }

  v20 = [*(a1 + 96) queue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_9;
  v23[3] = &unk_1E774C648;
  v24 = *(a1 + 104);
  dispatch_group_notify(v6, v20, v23);
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_10(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    UIGraphicsBeginImageContextWithOptions(*(a1 + 88), 0, 0.0);
    v3 = [*(*(*(a1 + 72) + 8) + 40) image];
    [v3 size];
    v5 = v4;
    [v3 size];
    [v3 drawInRect:{0.0, 0.0, v5, v6}];
    v7 = *(a1 + 32);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_11;
    v13 = &unk_1E77449C0;
    v15 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v16 = *(a1 + 104);
    v19 = *(a1 + 152);
    v17 = *(a1 + 120);
    v18 = *(a1 + 136);
    v14 = v3;
    v8 = v3;
    dispatch_sync(v7, &v10);
    v9 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [*(a1 + 40) removeAllObjects];
    (*(*(a1 + 48) + 16))();
  }
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_11(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_12;
  v4[3] = &unk_1E7744998;
  v6 = *(a1 + 48);
  v2 = *(a1 + 56);
  v10 = *(a1 + 104);
  v3 = *(a1 + 72);
  v7 = v2;
  v8 = v3;
  v9 = *(a1 + 88);
  v5 = *(a1 + 32);
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  [v5 size];
  v7 = v6;
  v9 = v8;
  [v18 coordinate];
  if (CLLocationCoordinate2DIsValid(v20))
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    [v18 coordinate];
    [v10 pointForCoordinate:?];
    v12 = v11 + *(a1 + 48) * -0.5;
    v14 = v13 - v9;
  }

  else
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_6;
    }

    v15 = *(a1 + 80);
    [*(a1 + 32) size];
    v12 = v16 * 0.5 - *(a1 + 48) * 0.5;
    [*(a1 + 32) size];
    v14 = (v17 - v15) * 0.5 - v9 * 0.5;
  }

  [v5 drawInRect:{v12, v14, v7, v9}];
LABEL_6:
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_2_205(uint64_t a1)
{
  v2 = -[PXPlacesMapThumbnailAnnotationView initWithAnnotation:reuseIdentifier:extendedTraitCollection:imageCache:countLabelStyle:]([PXPlacesMapThumbnailAnnotationView alloc], "initWithAnnotation:reuseIdentifier:extendedTraitCollection:imageCache:countLabelStyle:", *(a1 + 32), &stru_1F1741150, *(a1 + 40), 0, [*(a1 + 48) countLabelStyle]);
  [*(a1 + 56) addObject:v2];
  objc_initWeak(&location, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_3_210;
  v7[3] = &unk_1E77448D0;
  objc_copyWeak(&v11, &location);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v6 = *(a1 + 72);
  v5 = v6;
  v10 = v6;
  [(PXPlacesMapThumbnailAnnotationView *)v2 setDisplayCompletion:v7];
  [(PXPlacesMapThumbnailAnnotationView *)v2 setAnnotation:*(a1 + 32)];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_6(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_7;
  aBlock[3] = &unk_1E7744920;
  v2 = *(a1 + 32);
  v15 = *(a1 + 88);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = *(a1 + 80);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v12 = v7;
  v13 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [*(a1 + 64) firstObject];
  v10 = [v9 firstObject];

  [*(a1 + 72) imageForGeotaggable:v10 ofSize:0 networkAccessAllowed:v8 andCompletion:{*(a1 + 104), *(a1 + 112)}];
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) createPopoverImageForGeotaggable:a2 withImage:a3 imageType:*(a1 + 72) imageOptions:*(a1 + 80) usingTraitCollection:*(a1 + 40)];
  v5 = *(a1 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_8;
  block[3] = &unk_1E7746448;
  v10 = v4;
  v8 = *(a1 + 56);
  v6 = v8;
  v11 = v8;
  v7 = v4;
  dispatch_async(v5, block);
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_8(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:*MEMORY[0x1E6985CC0] longitude:*(MEMORY[0x1E6985CC0] + 8)];
  [*(*(*(a1 + 48) + 8) + 40) setObject:*(a1 + 32) forKeyedSubscript:v2];
  dispatch_group_leave(*(a1 + 40));
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_3_210(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_4;
  block[3] = &unk_1E77448D0;
  objc_copyWeak(&v10, (a1 + 64));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = v2;
  v8 = v3;
  v5 = *(a1 + 48);
  v4 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained renderToImage];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_5;
  block[3] = &unk_1E77448A8;
  v4 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v9 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) coordinate];
  v4 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v2 longitude:v3];
  [*(*(*(a1 + 56) + 8) + 40) setObject:*(a1 + 40) forKeyedSubscript:v4];
  dispatch_group_leave(*(a1 + 48));
}

void __127__PXPlacesSnapshotFactory_requestMapSnapshotWithAssets_snapshotOptions_snapshotTraitCollection_popoverImageOptions_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  dispatch_group_leave(*(a1 + 32));
  if ((!v6 || v7) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "snapshotMapType")}];
    [*(a1 + 40) viewSize];
    v9 = NSStringFromCGSize(v22);
    v10 = *(a1 + 48);
    v11 = 136316162;
    v12 = "[PXPlacesSnapshotFactory requestMapSnapshotWithAssets:snapshotOptions:snapshotTraitCollection:popoverImageOptions:completion:]_block_invoke_3";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error fetching place tile in: %s error: %@ (type: %@, %@, \nassets: %@)", &v11, 0x34u);
  }
}

- (void)setupCacheAtFilepath:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingPathComponent:@"PXPlacesAlbumImageCached.jpg"];
  v6 = [v4 stringByAppendingPathComponent:@"PXPlacesAlbumImageCached_Dark.jpg"];

  os_unfair_lock_lock(&self->_cachedIvarLock);
  cachedFilePathLight = self->_cachedFilePathLight;
  self->_cachedFilePathLight = v5;
  v8 = v5;

  cachedFilePathDark = self->_cachedFilePathDark;
  self->_cachedFilePathDark = v6;

  os_unfair_lock_unlock(&self->_cachedIvarLock);

  [(PXPlacesSnapshotFactory *)self setHasCacheFilepaths:1];
}

- (void)setCurrentUserInterfaceStyle:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_currentUserInterfaceStyle = a3;
  objc_sync_exit(obj);
}

- (int64_t)currentUserInterfaceStyle
{
  v2 = self;
  objc_sync_enter(v2);
  currentUserInterfaceStyle = v2->_currentUserInterfaceStyle;
  objc_sync_exit(v2);

  return currentUserInterfaceStyle;
}

- (void)dealloc
{
  if (self->_isRegisteredForPhotoLibraryChanges)
  {
    v3 = [(PXPlacesSnapshotFactory *)self photoLibrary];
    [v3 unregisterChangeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = PXPlacesSnapshotFactory;
  [(PXPlacesSnapshotFactory *)&v4 dealloc];
}

- (PXPlacesSnapshotFactory)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXPlacesSnapshotFactory.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v19.receiver = self;
  v19.super_class = PXPlacesSnapshotFactory;
  v7 = [(PXPlacesSnapshotFactory *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
    if (PFProcessIsLaunchedToExecuteTests())
    {
      v9 = objc_alloc_init(PXLibraryFilterState);
      libraryFilterState = v8->_libraryFilterState;
      v8->_libraryFilterState = v9;
    }

    else
    {
      libraryFilterState = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v8->_photoLibrary];
      v11 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:libraryFilterState];
      v12 = v8->_libraryFilterState;
      v8->_libraryFilterState = v11;
    }

    *&v8->_hasCacheFilepaths = 256;
    v8->_cachedCount = 0;
    v13 = dispatch_queue_create("imagingServicesQueue", MEMORY[0x1E69E96A8]);
    concurrentQueue = v8->_concurrentQueue;
    v8->_concurrentQueue = v13;

    v15 = dispatch_queue_create("snapshotRequestsServicesQueue", 0);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v15;

    v8->_cachedIvarLock._os_unfair_lock_opaque = 0;
    v8->_countLabelStyle = 1;
  }

  return v8;
}

- (PXPlacesSnapshotFactory)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPlacesSnapshotFactory.m" lineNumber:140 description:{@"%s is not available as initializer", "-[PXPlacesSnapshotFactory init]"}];

  abort();
}

@end
@interface PXPeopleFaceCropManager
+ (BOOL)_change:(id)a3 containsVisibleChangesToAssetWithOID:(id)a4;
+ (BOOL)_shouldCacheResultForOptions:(id)a3 isDegraded:(BOOL)a4 isCropped:(BOOL)a5 isForCleanup:(BOOL)a6;
+ (BOOL)_shouldTakeSquareCropForFace:(id)a3 cropFactor:(int64_t)a4 outNormalizedFaceCropRect:(CGRect *)a5;
+ (CGSize)_constrainedSizeForDesiredSize:(CGSize)result;
+ (PXPeopleFaceCropManager)sharedManager;
+ (double)_cornerRadiusForCornerStyle:(int64_t)a3 pixelTargetSize:(CGSize)a4 displayScale:(double)a5;
+ (double)_cornerRadiusForRoundedCornerStyleWithDisplayScale:(double)a3;
+ (double)_cropFactorValueForCropFactor:(int64_t)a3;
+ (double)roundedCornerRadiusForTargetSize:(CGSize)a3 displayScale:(double)a4;
+ (id)_compressionQueue;
+ (id)_cropQueue;
+ (id)_faceCropManagerLog;
+ (id)_fetchQueue;
- (BOOL)isRequestActiveWithRequestID:(int)a3;
- (PXPeopleFaceCropManager)init;
- (id)_cachedResultForOptions:(id)a3;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (int)_prepareFaceCropRequestWithOptions:(id)a3 resultHandler:(id)a4;
- (int)requestFaceCropForOptions:(id)a3 resultHandler:(id)a4;
- (int)requestFaceCropImageForPerson:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 completionHandler:(id)a6;
- (void)_cacheResult:(id)a3;
- (void)_cleanupForImage:(id)a3 request:(id)a4;
- (void)_compressImage:(id)a3 request:(id)a4 resultHandler:(id)a5;
- (void)_cropImage:(id)a3 request:(id)a4 resultHandler:(id)a5;
- (void)_emptyFaceCropCache;
- (void)_executeFaceCropRequest:(id)a3 resultHandler:(id)a4;
- (void)_fetchFaceAndAssetIfNecessaryForOptions:(id)a3 completion:(id)a4;
- (void)_handleImage:(id)a3 info:(id)a4 faceCropRequest:(id)a5 resultHandler:(id)a6;
- (void)_invalidateCacheForLocalIdentifiers:(id)a3 wantsNotificationPosted:(BOOL)a4 userInfoKey:(id)a5;
- (void)cancelRequestForRequestID:(int)a3;
- (void)invalidateCacheForPerson:(id)a3;
@end

@implementation PXPeopleFaceCropManager

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v43 = v5;
  if (([v5 hasIncrementalChanges] & 1) == 0)
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    os_unfair_lock_lock(&self->_faceCropCacheLock);
    v30 = [(NSCache *)self->_faceCropCache allObjects];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __56__PXPeopleFaceCropManager_prepareForPhotoLibraryChange___block_invoke;
    v52[3] = &unk_1E773FE48;
    v53 = v28;
    v31 = v29;
    v55 = self;
    v56 = a2;
    v54 = v31;
    [v30 enumerateObjectsUsingBlock:v52];

    os_unfair_lock_unlock(&self->_faceCropCacheLock);
    [v31 copy];
    os_unfair_lock_lock(&self->_peopleWithoutKeyFacesLock);
    PXMap();
  }

  v42 = [v5 updatedObjectIDs];
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  os_unfair_lock_lock(&self->_faceCropCacheLock);
  v33 = self;
  [(NSCache *)self->_faceCropCache allObjects];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v36 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (!v36)
  {
LABEL_35:

    os_unfair_lock_unlock(&v33->_faceCropCacheLock);
    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    os_unfair_lock_lock(&v33->_peopleWithoutKeyFacesLock);
    v5;
    v27;
    PXMap();
  }

  v35 = *v49;
LABEL_4:
  v6 = 0;
  while (1)
  {
    if (*v49 != v35)
    {
      objc_enumerationMutation(obj);
    }

    v37 = v6;
    v7 = *(*(&v48 + 1) + 8 * v6);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = v7;
    v8 = [v40 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v8)
    {
      break;
    }

LABEL_33:

    v6 = v37 + 1;
    if (v37 + 1 == v36)
    {
      v36 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (!v36)
      {
        goto LABEL_35;
      }

      goto LABEL_4;
    }
  }

  v9 = v8;
  v10 = *v45;
LABEL_9:
  v11 = 0;
  while (1)
  {
    if (*v45 != v10)
    {
      objc_enumerationMutation(v40);
    }

    v12 = *(*(&v44 + 1) + 8 * v11);
    v13 = [v12 options];
    v14 = [v13 person];
    v15 = [v13 face];
    v16 = [v12 assetObjectID];
    v17 = [v42 containsObject:v16];
    v18 = [PXPeopleFaceCropManager _change:v5 containsVisibleChangesToAssetWithOID:v16];
    v19 = v18;
    if ((v17 & 1) == 0 && !v18)
    {
      break;
    }

    v22 = v15 != 0;
    if (v14)
    {
      goto LABEL_26;
    }

LABEL_29:
    if (v22)
    {
      goto LABEL_30;
    }

LABEL_31:

    ++v11;
    v5 = v43;
    if (v9 == v11)
    {
      v9 = [v40 countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (!v9)
      {
        goto LABEL_33;
      }

      goto LABEL_9;
    }
  }

  v20 = [v5 contentOrThumbnailChangedForPHAssetOID:v16];
  if (v14)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    v23 = [v14 objectID];
    v24 = [v5 keyFaceChangedForPersonOID:v23];

    if (!v24)
    {
      goto LABEL_31;
    }

    v22 = 0;
  }

  else
  {
    v22 = (v15 != 0) & v20;
    if (!v14)
    {
      if (((v15 != 0) & v20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  v19 = 0;
LABEL_26:
  v25 = [v14 localIdentifier];
  [v41 addObject:v25];

  if (v19)
  {
    [v38 addObject:v14];
    if ((v22 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_30:
    v26 = [v15 localIdentifier];
    [v39 addObject:v26];

    goto LABEL_31;
  }

  goto LABEL_29;
}

void __56__PXPeopleFaceCropManager_prepareForPhotoLibraryChange___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 firstObject];
  v4 = [v3 options];

  v5 = [v4 cacheKey];
  v6 = [v4 person];

  if (v6)
  {
    v7 = 32;
  }

  else
  {
    v8 = [v4 face];

    if (!v8)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"PXPeopleFaceCropManager.m" lineNumber:956 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v7 = 40;
  }

  [*(a1 + v7) addObject:v5];
}

id __56__PXPeopleFaceCropManager_prepareForPhotoLibraryChange___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectID];
  LODWORD(v4) = [v4 keyFaceChangedForPersonOID:v5];

  if (v4)
  {
    [*(a1 + 40) addObject:v3];
    v6 = [v3 localIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_invalidateCacheForLocalIdentifiers:(id)a3 wantsNotificationPosted:(BOOL)a4 userInfoKey:(id)a5
{
  v6 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v10 && v6)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropManager.m" lineNumber:875 description:{@"Invalid parameter not satisfying: %@", @"!wantsNotificationPosted || (wantsNotificationPosted && userInfoKey)"}];
  }

  if ([v9 count])
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (v6)
      {
        v12 = @"YES";
      }

      v13 = v12;
      *buf = 138543618;
      v38 = v9;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "PXPeopleFaceCropManager: invalidating cache for local identifiers: %{public}@ wantsNotificationPosted: %@", buf, 0x16u);
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    os_unfair_lock_lock(&self->_faceCropRequestsByRequestIDsLock);
    faceCropRequestsByRequestIDs = self->_faceCropRequestsByRequestIDs;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __99__PXPeopleFaceCropManager__invalidateCacheForLocalIdentifiers_wantsNotificationPosted_userInfoKey___block_invoke;
    v31[3] = &unk_1E773FDF8;
    v16 = v9;
    v32 = v16;
    v17 = v14;
    v33 = v17;
    [(NSMutableDictionary *)faceCropRequestsByRequestIDs enumerateKeysAndObjectsUsingBlock:v31];
    [(NSMutableDictionary *)self->_faceCropRequestsByRequestIDs removeObjectsForKeys:v17];

    os_unfair_lock_unlock(&self->_faceCropRequestsByRequestIDsLock);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          -[PXPeopleFaceCropManager cancelRequestForRequestID:](self, "cancelRequestForRequestID:", [*(*(&v27 + 1) + 8 * i) intValue]);
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v20);
    }

    os_unfair_lock_lock(&self->_faceCropCacheLock);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __99__PXPeopleFaceCropManager__invalidateCacheForLocalIdentifiers_wantsNotificationPosted_userInfoKey___block_invoke_2;
    v26[3] = &unk_1E773FE20;
    v26[4] = self;
    [v16 enumerateObjectsUsingBlock:v26];
    os_unfair_lock_unlock(&self->_faceCropCacheLock);
    if (v6)
    {
      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      v34 = v10;
      v35 = v16;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      [v23 postNotificationName:@"PXPeopleFaceCropManagerDidInvalidateCacheNotification" object:self userInfo:v24];
    }
  }
}

void __99__PXPeopleFaceCropManager__invalidateCacheForLocalIdentifiers_wantsNotificationPosted_userInfoKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = [a3 options];
  v7 = [v6 cacheKey];
  LODWORD(v5) = [v5 containsObject:v7];

  if (v5)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)_emptyFaceCropCache
{
  os_unfair_lock_lock(&self->_faceCropCacheLock);
  [(NSCache *)self->_faceCropCache removeAllObjects];
  os_unfair_lock_unlock(&self->_faceCropCacheLock);
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PXPeopleFaceCropManager: emptied the face crop cache", v4, 2u);
  }
}

- (void)_cacheResult:(id)a3
{
  v14 = a3;
  v4 = [v14 options];
  v5 = [v4 cacheKey];
  if ([v5 length])
  {
    v6 = [(PXPeopleFaceCropManager *)self _cachedResultForOptions:v4];
    os_unfair_lock_lock(&self->_faceCropCacheLock);
    v7 = [(NSCache *)self->_faceCropCache objectForKey:v5];
    if (v7)
    {
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSCache *)self->_faceCropCache setObject:v7 forKey:v5];
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    if (([v14 isCropped] & 1) == 0)
    {
      v8 = [v6 image];
      [v8 size];
      v10 = v9;
      v11 = [v14 image];
      [v11 size];
      v13 = v12;

      if (v10 >= v13)
      {
        goto LABEL_10;
      }
    }

    [v7 removeLastObject];
LABEL_9:
    [v7 addObject:v14];
LABEL_10:

    os_unfair_lock_unlock(&self->_faceCropCacheLock);
  }
}

- (id)_cachedResultForOptions:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 cacheKey];
  if ([v5 length])
  {
    os_unfair_lock_lock(&self->_faceCropCacheLock);
    [(NSCache *)self->_faceCropCache objectForKey:v5];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 options];
          v12 = [v11 areFetchParametersEqualtoFetchParametersOfOptions:v4];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    os_unfair_lock_unlock(&self->_faceCropCacheLock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_fetchFaceAndAssetIfNecessaryForOptions:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __78__PXPeopleFaceCropManager__fetchFaceAndAssetIfNecessaryForOptions_completion___block_invoke;
  v14 = &unk_1E774C2F0;
  v7 = v5;
  v15 = v7;
  v8 = v6;
  v16 = v8;
  v9 = _Block_copy(&v11);
  if ([v7 isSynchronous])
  {
    v9[2](v9);
  }

  else
  {
    v10 = +[PXPeopleFaceCropManager _fetchQueue];
    dispatch_async(v10, v9);
  }
}

void __78__PXPeopleFaceCropManager__fetchFaceAndAssetIfNecessaryForOptions_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) person];
  v3 = [*(a1 + 32) face];
  v4 = [*(a1 + 32) asset];
  if (v4)
  {
    v5 = v4;
    if (!v3)
    {
      v6 = [v2 photoLibrary];
      v7 = [v6 librarySpecificFetchOptions];

      [v7 setIncludeTorsoAndFaceDetectionData:1];
      v8 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
      [v7 setIncludedDetectionTypes:v8];

      v9 = MEMORY[0x1E696AE18];
      v10 = [v2 uuid];
      v11 = [v9 predicateWithFormat:@"%K = %@", @"personForFace.personUUID", v10];
      [v7 setInternalPredicate:v11];

      [v7 setFetchLimit:1];
      v12 = [MEMORY[0x1E69787C8] fetchFacesInAsset:v5 options:v7];
      v3 = [v12 firstObject];

      if (v3)
      {
LABEL_17:

        goto LABEL_18;
      }

      v13 = PLUIGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v2 localIdentifier];
        v15 = [v5 localIdentifier];
        *buf = 138543618;
        v20 = v14;
        v21 = 2114;
        v22 = v15;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "PXPeopleFaceCropManager: nil face returned for person: %{public}@ in asset: %{public}@", buf, 0x16u);
      }

LABEL_16:
      v3 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    if (!v3)
    {
      v3 = [PXPeopleUtilities keyFaceForPerson:v2];
      if (!v3)
      {
        v7 = PLUIGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v18 = [v2 localIdentifier];
          *buf = 138543362;
          v20 = v18;
          _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "PXPeopleFaceCropManager: nil key face returned for person: %{public}@", buf, 0xCu);
        }

        v5 = 0;
        goto LABEL_16;
      }
    }

    v16 = [PXPeopleUtilities keyAssetForPerson:v2 face:v3];
    v5 = [v16 firstObject];

    if (!v5)
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v17 = [v3 localIdentifier];
        *buf = 138543362;
        v20 = v17;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "PXPeopleFaceCropManager: nil asset returned for face: %{public}@", buf, 0xCu);
      }

      v5 = 0;
      goto LABEL_17;
    }
  }

LABEL_18:
  (*(*(a1 + 40) + 16))();
}

- (void)_cleanupForImage:(id)a3 request:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v6 options];
  if ([PXPeopleFaceCropManager _shouldCacheResultForOptions:v7 isDegraded:0 isCropped:1 isForCleanup:1])
  {
    v8 = [v6 asset];
    v9 = [PXPeopleFaceCropFetchResult alloc];
    v10 = [v8 objectID];
    v11 = [v8 localIdentifier];
    v12 = [(PXPeopleFaceCropFetchResult *)v9 initWithImage:v14 assetObjectID:v10 assetLocalIdentifier:v11 faceRect:1 isCropped:0 isDegraded:v7 options:*off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3)];

    [(PXPeopleFaceCropManager *)self _cacheResult:v12];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "faceCropRequestID")}];
  os_unfair_lock_lock(&self->_faceCropRequestsByRequestIDsLock);
  [(NSMutableDictionary *)self->_faceCropRequestsByRequestIDs removeObjectForKey:v13];
  os_unfair_lock_unlock(&self->_faceCropRequestsByRequestIDsLock);
}

- (void)_compressImage:(id)a3 request:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[PXPeopleFaceCropManager _faceCropManagerLog];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "compressImage", "", buf, 2u);
  }

  v15 = [v9 options];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PXPeopleFaceCropManager__compressImage_request_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7748800;
  v16 = v9;
  v24 = v16;
  v17 = v8;
  v25 = v17;
  v18 = v14;
  v26 = v18;
  v30 = v12;
  v19 = v15;
  v27 = v19;
  v20 = v10;
  v28 = self;
  v29 = v20;
  v21 = _Block_copy(aBlock);
  if ([v19 isSynchronous])
  {
    v21[2](v21);
  }

  else
  {
    v22 = +[PXPeopleFaceCropManager _compressionQueue];
    dispatch_async(v22, v21);
  }
}

void __64__PXPeopleFaceCropManager__compressImage_request_resultHandler___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) canceled] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 40) px_ASTCCompressedImageWithBlockSize:68];
    v4 = v3;
    if (v3)
    {
      v5 = v3;

      v2 = v5;
    }

    v6 = *(a1 + 48);
    v7 = v6;
    v8 = *(a1 + 80);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v8, "compressImage", "", v16, 2u);
    }

    v17 = @"PXPeopleContentsRectKey";
    v9 = [MEMORY[0x1E696B098] valueWithCGRect:{*off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3)}];
    v18[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11 = [v10 mutableCopy];

    v12 = [*(a1 + 32) asset];
    v13 = [v12 localIdentifier];
    [v11 setObject:v13 forKey:@"PXPeopleAssetLocalIdentifierKey"];

    if ([*(a1 + 56) wantsSmallFaceRect])
    {
      v14 = MEMORY[0x1E696B098];
      [*(a1 + 32) smallFaceRect];
      v15 = [v14 valueWithCGRect:?];
      [v11 setObject:v15 forKey:@"PXPeopleSmallFaceRectKey"];
    }

    [v11 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*off_1E7722078];
    (*(*(a1 + 72) + 16))();
    [*(a1 + 64) _cleanupForImage:v2 request:*(a1 + 32)];
  }
}

- (void)_cropImage:(id)a3 request:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[PXPeopleFaceCropManager _faceCropManagerLog];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "imageCrop", "", buf, 2u);
  }

  v15 = [v9 options];
  v16 = [v8 CGImage];
  Width = CGImageGetWidth(v16);
  Height = CGImageGetHeight(v16);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PXPeopleFaceCropManager__cropImage_request_resultHandler___block_invoke;
  aBlock[3] = &unk_1E773FDD0;
  v19 = v9;
  v33 = 0;
  v34 = 0;
  v27 = v19;
  v35 = Width;
  v36 = Height;
  v20 = v15;
  v28 = v20;
  v21 = v8;
  v29 = v21;
  v22 = v14;
  v30 = v22;
  v37 = v12;
  v23 = v10;
  v31 = self;
  v32 = v23;
  v24 = _Block_copy(aBlock);
  if ([v20 isSynchronous])
  {
    v24[2](v24);
  }

  else
  {
    v25 = +[PXPeopleFaceCropManager _cropQueue];
    dispatch_async(v25, v24);
  }
}

uint64_t __60__PXPeopleFaceCropManager__cropImage_request_resultHandler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canceled];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) normalizedEdgeAdjustedCropRect];
    PXRectDenormalize();
  }

  return result;
}

- (void)_handleImage:(id)a3 info:(id)a4 faceCropRequest:(id)a5 resultHandler:(id)a6
{
  a3;
  v9 = a4;
  v10 = a5;
  a6;
  v11 = +[PXPeopleFaceCropManager _faceCropManagerLog];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "handleResponse", "", buf, 2u);
  }

  [v10 options];
  objc_claimAutoreleasedReturnValue();
  [v10 targetSizeToUse];
  v15 = [v10 asset];
  [v15 pixelWidth];
  [v15 pixelHeight];
  [v10 normalizedCenterEyeLine];
  PXPointDenormalize();
}

void __75__PXPeopleFaceCropManager__handleImage_info_faceCropRequest_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "handleResponse", "", v5, 2u);
  }
}

- (void)_executeFaceCropRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PXPeopleFaceCropManager _faceCropManagerLog];
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "executeRequest", "", buf, 2u);
  }

  v12 = [v6 options];
  [v6 targetSizeToUse];
  v14 = v13;
  v16 = v15;
  [v6 normalizedFaceCropRect];
  [PXPeopleFaceCropManager _constrainedSizeForDesiredSize:ceil(v14 / v17), ceil(v16 / v18)];
  v20 = v19;
  v22 = v21;
  v23 = [v12 isSynchronous];
  v24 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v24 setDeliveryMode:{objc_msgSend(v12, "deliveryMode")}];
  [v24 setSynchronous:v23];
  [v24 setUseLowMemoryMode:{objc_msgSend(v12, "useLowMemoryMode")}];
  [v24 setNetworkAccessAllowed:1];
  [v24 setAllowSecondaryDegradedImage:1];
  [v24 setResizeMode:1];
  if ([v12 useLowMemoryMode])
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x40000;
  }

  [v24 setLoadingMode:v25];
  if ((v23 & 1) == 0)
  {
    v26 = +[PXPeopleFaceCropManager _fetchQueue];
    [v24 setResultHandlerQueue:v26];
  }

  v27 = [MEMORY[0x1E6978860] defaultManager];
  v28 = [v6 asset];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __65__PXPeopleFaceCropManager__executeFaceCropRequest_resultHandler___block_invoke;
  v33[3] = &unk_1E773FDA8;
  v37 = v7;
  v38 = v9;
  v34 = v11;
  v35 = v6;
  v36 = self;
  v39 = v20;
  v40 = v22;
  v29 = v7;
  v30 = v6;
  v31 = v11;
  v32 = [v27 requestImageForAsset:v28 targetSize:1 contentMode:v24 options:v33 resultHandler:{v20, v22}];

  [v30 setImageManagerRequestID:v32];
}

void __65__PXPeopleFaceCropManager__executeFaceCropRequest_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "executeRequest", "", buf, 2u);
  }

  if ([*(a1 + 40) canceled])
  {
    v10 = 1;
  }

  else
  {
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
    v10 = [v11 BOOLValue];
  }

  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  v13 = v12;
  if ((v10 & 1) != 0 || v12)
  {
    if (v10)
    {
      v14 = PLUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        v16 = NSStringFromSize(*(a1 + 72));
        *buf = 138412802;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "PXPeopleFaceCropManager: the image request was canceled. Request: %@ sizeToRequest: %@ info: %@", buf, 0x20u);
      }
    }

    if (v13)
    {
      v17 = PLUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 40);
        v19 = NSStringFromSize(*(a1 + 72));
        *buf = 138412802;
        v24 = v18;
        v25 = 2112;
        v26 = v19;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "PXPeopleFaceCropManager: error for image request: %@ sizeToRequest %@ info: %@", buf, 0x20u);
      }

      if ((v10 & 1) == 0)
      {
        v21 = @"PXPeopleErrorKey";
        v22 = v13;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        (*(*(a1 + 56) + 16))();
      }
    }
  }

  else
  {
    [*(a1 + 48) _handleImage:v5 info:v6 faceCropRequest:*(a1 + 40) resultHandler:*(a1 + 56)];
  }
}

- (int)_prepareFaceCropRequestWithOptions:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PXPeopleFaceCropManager _faceCropManagerLog];
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "prepareRequest", "", buf, 2u);
  }

  v12 = [v6 photoLibrary];
  [v12 px_registerChangeObserver:self];

  v13 = [[PXPeopleFaceCropRequest alloc] initWithFetchOptions:v6];
  v14 = [(PXPeopleFaceCropRequest *)v13 faceCropRequestID];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:v14];
  os_unfair_lock_lock(&self->_faceCropRequestsByRequestIDsLock);
  [(NSMutableDictionary *)self->_faceCropRequestsByRequestIDs setObject:v13 forKey:v15];
  os_unfair_lock_unlock(&self->_faceCropRequestsByRequestIDsLock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__PXPeopleFaceCropManager__prepareFaceCropRequestWithOptions_resultHandler___block_invoke;
  v21[3] = &unk_1E773FD80;
  v22 = v11;
  v23 = v13;
  v24 = v6;
  v25 = self;
  v28 = v14;
  v26 = v7;
  v27 = v9;
  v16 = v7;
  v17 = v6;
  v18 = v13;
  v19 = v11;
  [(PXPeopleFaceCropManager *)self _fetchFaceAndAssetIfNecessaryForOptions:v17 completion:v21];

  return v14;
}

void __76__PXPeopleFaceCropManager__prepareFaceCropRequestWithOptions_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PXPeopleFaceCropManager__prepareFaceCropRequestWithOptions_resultHandler___block_invoke_2;
  aBlock[3] = &unk_1E77498A0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 72);
  v26 = v7;
  v27 = v8;
  v9 = _Block_copy(aBlock);
  if ([*(a1 + 40) canceled])
  {
    goto LABEL_20;
  }

  if (!v5)
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "PXPeopleFaceCropManager: no face for options: %@\n", buf, 0xCu);
    }

    [*(a1 + 56) cancelRequestForRequestID:*(a1 + 80)];
    v15 = [*(a1 + 48) person];
    if (v15)
    {
      os_unfair_lock_lock((*(a1 + 56) + 48));
      [*(*(a1 + 56) + 40) addObject:v15];
      os_unfair_lock_unlock((*(a1 + 56) + 48));
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.people.faceCropManagerError" code:0 userInfo:0];
    v31 = @"PXPeopleErrorKey";
    v32[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v9[2](v9);
    (*(*(a1 + 64) + 16))();

    goto LABEL_19;
  }

  if (!v6)
  {
    v18 = PLUIGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 48);
      v20 = [v5 localIdentifier];
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "PXPeopleFaceCropManager: failed to fetch an asset for options: %@\n face: %{public}@", buf, 0x16u);
    }

    [*(a1 + 56) cancelRequestForRequestID:*(a1 + 80)];
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.people.faceCropManagerError" code:1 userInfo:0];
    v29 = @"PXPeopleErrorKey";
    v30 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v9[2](v9);
    (*(*(a1 + 64) + 16))();
LABEL_19:

    goto LABEL_20;
  }

  [*(a1 + 40) setFace:v5];
  [*(a1 + 40) setAsset:v6];
  [v5 px_normalizedCenterEyeLine];
  [*(a1 + 40) setNormalizedCenterEyeLine:?];
  v21 = *(MEMORY[0x1E695F058] + 16);
  v22 = *MEMORY[0x1E695F058];
  *buf = *MEMORY[0x1E695F058];
  *&buf[16] = v21;
  v10 = +[PXPeopleFaceCropManager _shouldTakeSquareCropForFace:cropFactor:outNormalizedFaceCropRect:](PXPeopleFaceCropManager, "_shouldTakeSquareCropForFace:cropFactor:outNormalizedFaceCropRect:", v5, [*(a1 + 48) cropFactor], buf);
  [*(a1 + 40) setNormalizedFaceCropRect:{*buf, *&buf[8], *&buf[16]}];
  if (v10)
  {
    [*(a1 + 40) targetSizeToUse];
    if (v11 >= v12)
    {
      v11 = v12;
    }

    [*(a1 + 40) setTargetSizeToUse:{v11, v11}];
  }

  if ([*(a1 + 48) wantsSmallFaceRect])
  {
    v23 = v22;
    v24 = v21;
    [PXPeopleFaceCropManager _shouldTakeSquareCropForFace:v5 cropFactor:0 outNormalizedFaceCropRect:&v23];
    [*(a1 + 40) setNormalizedSmallFaceRect:{v23, v24}];
  }

  v9[2](v9);
  [*(a1 + 56) _executeFaceCropRequest:*(a1 + 40) resultHandler:*(a1 + 64)];
LABEL_20:
}

void __76__PXPeopleFaceCropManager__prepareFaceCropRequestWithOptions_resultHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "prepareRequest", "", v5, 2u);
  }
}

- (void)invalidateCacheForPerson:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DFD8];
    v6 = [a3 localIdentifier];
    v5 = [v4 setWithObject:v6];
    [(PXPeopleFaceCropManager *)self _invalidateCacheForLocalIdentifiers:v5 wantsNotificationPosted:1 userInfoKey:@"PXPeopleFaceCropManagerInvalidatedPersonLocalIdentifiersKey"];
  }
}

- (BOOL)isRequestActiveWithRequestID:(int)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  os_unfair_lock_lock(&self->_faceCropRequestsByRequestIDsLock);
  v5 = [(NSMutableDictionary *)self->_faceCropRequestsByRequestIDs objectForKey:v4];
  os_unfair_lock_unlock(&self->_faceCropRequestsByRequestIDsLock);

  return v5 != 0;
}

- (void)cancelRequestForRequestID:(int)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  os_unfair_lock_lock(&self->_faceCropRequestsByRequestIDsLock);
  v5 = [(NSMutableDictionary *)self->_faceCropRequestsByRequestIDs objectForKey:v4];
  [(NSMutableDictionary *)self->_faceCropRequestsByRequestIDs removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_faceCropRequestsByRequestIDsLock);
  [v5 cancel];
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "PXPeopleFaceCropManager: canceled request: %@", &v7, 0xCu);
  }
}

- (int)requestFaceCropForOptions:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v8 = [(PXPeopleFaceCropManager *)self _cachedResultForOptions:v7];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [v8 assetLocalIdentifier];
  [v9 setObject:v10 forKey:@"PXPeopleAssetLocalIdentifierKey"];

  v11 = [v8 isCropped];
  v12 = MEMORY[0x1E696B098];
  if (v11)
  {
    v13 = *off_1E77221F8;
    v14 = *(off_1E77221F8 + 1);
    v15 = *(off_1E77221F8 + 2);
    v16 = *(off_1E77221F8 + 3);
  }

  else
  {
    [v8 faceRect];
  }

  v17 = [v12 valueWithCGRect:{v13, v14, v15, v16}];
  [v9 setObject:v17 forKey:@"PXPeopleContentsRectKey"];

  v18 = [v8 isDegraded];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:v18];
  [v9 setObject:v19 forKeyedSubscript:*off_1E7722078];

  v20 = [v8 image];
  v6[2](v6, v20, v9);

  v21 = [PXPeopleFaceCropManager _isFinalForIsDegraded:v18 isCropped:v11];
  if (v21)
  {
    v22 = 0;
  }

  else
  {
LABEL_7:
    v22 = [(PXPeopleFaceCropManager *)self _prepareFaceCropRequestWithOptions:v7 resultHandler:v6];
  }

  return v22;
}

- (PXPeopleFaceCropManager)init
{
  v10.receiver = self;
  v10.super_class = PXPeopleFaceCropManager;
  v2 = [(PXPeopleFaceCropManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    faceCropCache = v2->_faceCropCache;
    v2->_faceCropCache = v3;

    v2->_faceCropCacheLock._os_unfair_lock_opaque = 0;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    faceCropRequestsByRequestIDs = v2->_faceCropRequestsByRequestIDs;
    v2->_faceCropRequestsByRequestIDs = v5;

    v2->_faceCropRequestsByRequestIDsLock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    peopleWithoutKeyFaces = v2->_peopleWithoutKeyFaces;
    v2->_peopleWithoutKeyFaces = v7;

    v2->_peopleWithoutKeyFacesLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (id)_faceCropManagerLog
{
  if (_faceCropManagerLog_onceToken != -1)
  {
    dispatch_once(&_faceCropManagerLog_onceToken, &__block_literal_global_447_173871);
  }

  v3 = _faceCropManagerLog_faceCropManagerLog;

  return v3;
}

void __46__PXPeopleFaceCropManager__faceCropManagerLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.people", "PeopleFaceCropManager");
  v1 = _faceCropManagerLog_faceCropManagerLog;
  _faceCropManagerLog_faceCropManagerLog = v0;
}

+ (id)_compressionQueue
{
  if (_compressionQueue_onceToken != -1)
  {
    dispatch_once(&_compressionQueue_onceToken, &__block_literal_global_442_173875);
  }

  v3 = _compressionQueue_compressionQueue;

  return v3;
}

void __44__PXPeopleFaceCropManager__compressionQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);
  attr = dispatch_queue_attr_make_initially_inactive(v1);

  v2 = dispatch_queue_create("com.apple.photos.people.faceCropManager.compress", attr);
  v3 = _compressionQueue_compressionQueue;
  _compressionQueue_compressionQueue = v2;

  v4 = [off_1E7721858 sharedScheduler];
  [v4 scheduleMainQueueTask:&__block_literal_global_445_173879];
}

+ (id)_cropQueue
{
  if (_cropQueue_onceToken != -1)
  {
    dispatch_once(&_cropQueue_onceToken, &__block_literal_global_436_173881);
  }

  v3 = _cropQueue_cropQueue;

  return v3;
}

void __37__PXPeopleFaceCropManager__cropQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);
  attr = dispatch_queue_attr_make_initially_inactive(v1);

  v2 = dispatch_queue_create("com.apple.photos.people.faceCropManager.crop", attr);
  v3 = _cropQueue_cropQueue;
  _cropQueue_cropQueue = v2;

  v4 = [off_1E7721858 sharedScheduler];
  [v4 scheduleTaskAfterCATransactionCommits:&__block_literal_global_440_173884];
}

+ (id)_fetchQueue
{
  if (_fetchQueue_onceToken != -1)
  {
    dispatch_once(&_fetchQueue_onceToken, &__block_literal_global_433);
  }

  v3 = _fetchQueue_fetchQueue;

  return v3;
}

void __38__PXPeopleFaceCropManager__fetchQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.photos.people.faceCropManager.fetch", v0);
  v2 = _fetchQueue_fetchQueue;
  _fetchQueue_fetchQueue = v1;
}

+ (BOOL)_change:(id)a3 containsVisibleChangesToAssetWithOID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 trashedStateChangedForPHAssetOID:v6] & 1) != 0 || (objc_msgSend(v5, "hiddenStateChangedForPHAssetOID:", v6))
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 deletedObjectIDs];
    v7 = [v8 containsObject:v6];
  }

  return v7;
}

+ (BOOL)_shouldCacheResultForOptions:(id)a3 isDegraded:(BOOL)a4 isCropped:(BOOL)a5 isForCleanup:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  if ([v9 shouldCacheResult])
  {
    v10 = [v9 deliveryMode] == 0;
    if (v6)
    {
      v10 |= [PXPeopleFaceCropManager _isFinalForIsDegraded:v8 isCropped:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

+ (double)_cornerRadiusForRoundedCornerStyleWithDisplayScale:(double)a3
{
  v4 = +[PXPeopleFaceCropFetchOptions shouldUseLemonadeRoundedCorners];
  result = 10.0;
  if (v4)
  {
    +[PXLemonadePeopleCellSpecsConstants cornerRadius];
    return v6 * a3;
  }

  return result;
}

+ (double)_cornerRadiusForCornerStyle:(int64_t)a3 pixelTargetSize:(CGSize)a4 displayScale:(double)a5
{
  v5 = fmin(a4.width, a4.height);
  v6 = v5 < 10.0 && a3 == 1;
  v7 = 2;
  if (!v6)
  {
    v7 = a3;
  }

  if (v7 == 2)
  {
    return v5 * 0.5;
  }

  v8 = 0.0;
  if (v7 == 1)
  {
    [PXPeopleFaceCropManager roundedCornerRadiusForTargetSize:a4.width displayScale:a4.height, a5, 0.0];
    return result;
  }

  return v8;
}

+ (double)_cropFactorValueForCropFactor:(int64_t)a3
{
  if (a3 == 1)
  {
    return 7.19999981;
  }

  if ((a3 - 2) < 2)
  {
    v13 = v4;
    v14 = v3;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPeopleFaceCropManager.m" lineNumber:719 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 2.27999997;
}

+ (CGSize)_constrainedSizeForDesiredSize:(CGSize)result
{
  if (result.width * result.height > 3000000.0)
  {
    v3 = sqrt(result.width * result.height / 3000000.0);
    v4 = result.width / v3;
    result.width = roundf(v4);
    v5 = result.height / v3;
    result.height = roundf(v5);
  }

  return result;
}

+ (BOOL)_shouldTakeSquareCropForFace:(id)a3 cropFactor:(int64_t)a4 outNormalizedFaceCropRect:(CGRect *)a5
{
  v7 = a3;
  v8 = v7;
  if (a4 < 2)
  {
    [PXPeopleFaceCropManager _cropFactorValueForCropFactor:a4];
    [v8 px_cropRectWithCropFactor:?];
    a5->origin.x = v9;
    a5->origin.y = v10;
    a5->size.width = v11;
    a5->size.height = v12;
LABEL_6:
    LOBYTE(a5) = 1;
    goto LABEL_8;
  }

  if (a4 == 2)
  {
    LODWORD(a5) = [v7 px_cropRectForPortraitImage:a5] ^ 1;
    goto LABEL_8;
  }

  if (a4 != 3)
  {
    goto LABEL_6;
  }

  [v7 px_cropRectForPortraitImage:a5];
  LOBYTE(a5) = 0;
LABEL_8:

  return a5;
}

+ (double)roundedCornerRadiusForTargetSize:(CGSize)a3 displayScale:(double)a4
{
  height = a3.height;
  width = a3.width;
  [PXPeopleFaceCropManager _cornerRadiusForRoundedCornerStyleWithDisplayScale:a4];
  if (height >= width)
  {
    v7 = width;
  }

  else
  {
    v7 = height;
  }

  v8 = v7 * 0.15;
  if (v6 > v8)
  {
    v6 = v8;
  }

  v9 = v6;
  return ceilf(v9);
}

+ (PXPeopleFaceCropManager)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PXPeopleFaceCropManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_173889 != -1)
  {
    dispatch_once(&sharedManager_onceToken_173889, block);
  }

  v2 = sharedManager_sharedManager_173890;

  return v2;
}

void __40__PXPeopleFaceCropManager_sharedManager__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___PXPeopleFaceCropManager;
  v1 = [objc_msgSendSuper2(&v3 alloc)];
  v2 = sharedManager_sharedManager_173890;
  sharedManager_sharedManager_173890 = v1;
}

- (int)requestFaceCropImageForPerson:(id)a3 targetSize:(CGSize)a4 displayScale:(double)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  v13 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:v12 targetSize:width displayScale:height, a5];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __112__PXPeopleFaceCropManager_Convenience__requestFaceCropImageForPerson_targetSize_displayScale_completionHandler___block_invoke;
  v16[3] = &unk_1E774B680;
  v17 = v11;
  v14 = v11;
  LODWORD(self) = [(PXPeopleFaceCropManager *)self requestFaceCropForOptions:v13 resultHandler:v16];

  return self;
}

void __112__PXPeopleFaceCropManager_Convenience__requestFaceCropImageForPerson_targetSize_displayScale_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"PXPeopleErrorKey"];
  v8 = [v6 objectForKeyedSubscript:@"PXPeopleContentsRectKey"];

  [v8 CGRectValue];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PXPeopleFaceCropManager_Convenience__requestFaceCropImageForPerson_targetSize_displayScale_completionHandler___block_invoke_2;
  block[3] = &unk_1E773FE98;
  v17 = *(a1 + 32);
  v22 = v7;
  v23 = v17;
  v24 = v10;
  v25 = v12;
  v26 = v14;
  v27 = v16;
  v21 = v5;
  v18 = v7;
  v19 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end
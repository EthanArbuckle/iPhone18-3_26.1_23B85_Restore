@interface PXPeopleFaceCropManager
+ (BOOL)_change:(id)_change containsVisibleChangesToAssetWithOID:(id)d;
+ (BOOL)_shouldCacheResultForOptions:(id)options isDegraded:(BOOL)degraded isCropped:(BOOL)cropped isForCleanup:(BOOL)cleanup;
+ (BOOL)_shouldTakeSquareCropForFace:(id)face cropFactor:(int64_t)factor outNormalizedFaceCropRect:(CGRect *)rect;
+ (CGSize)_constrainedSizeForDesiredSize:(CGSize)result;
+ (PXPeopleFaceCropManager)sharedManager;
+ (double)_cornerRadiusForCornerStyle:(int64_t)style pixelTargetSize:(CGSize)size displayScale:(double)scale;
+ (double)_cornerRadiusForRoundedCornerStyleWithDisplayScale:(double)scale;
+ (double)_cropFactorValueForCropFactor:(int64_t)factor;
+ (double)roundedCornerRadiusForTargetSize:(CGSize)size displayScale:(double)scale;
+ (id)_compressionQueue;
+ (id)_cropQueue;
+ (id)_faceCropManagerLog;
+ (id)_fetchQueue;
- (BOOL)isRequestActiveWithRequestID:(int)d;
- (PXPeopleFaceCropManager)init;
- (id)_cachedResultForOptions:(id)options;
- (id)prepareForPhotoLibraryChange:(id)change;
- (int)_prepareFaceCropRequestWithOptions:(id)options resultHandler:(id)handler;
- (int)requestFaceCropForOptions:(id)options resultHandler:(id)handler;
- (int)requestFaceCropImageForPerson:(id)person targetSize:(CGSize)size displayScale:(double)scale completionHandler:(id)handler;
- (void)_cacheResult:(id)result;
- (void)_cleanupForImage:(id)image request:(id)request;
- (void)_compressImage:(id)image request:(id)request resultHandler:(id)handler;
- (void)_cropImage:(id)image request:(id)request resultHandler:(id)handler;
- (void)_emptyFaceCropCache;
- (void)_executeFaceCropRequest:(id)request resultHandler:(id)handler;
- (void)_fetchFaceAndAssetIfNecessaryForOptions:(id)options completion:(id)completion;
- (void)_handleImage:(id)image info:(id)info faceCropRequest:(id)request resultHandler:(id)handler;
- (void)_invalidateCacheForLocalIdentifiers:(id)identifiers wantsNotificationPosted:(BOOL)posted userInfoKey:(id)key;
- (void)cancelRequestForRequestID:(int)d;
- (void)invalidateCacheForPerson:(id)person;
@end

@implementation PXPeopleFaceCropManager

- (id)prepareForPhotoLibraryChange:(id)change
{
  v59 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v43 = changeCopy;
  if (([changeCopy hasIncrementalChanges] & 1) == 0)
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    os_unfair_lock_lock(&self->_faceCropCacheLock);
    allObjects = [(NSCache *)self->_faceCropCache allObjects];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __56__PXPeopleFaceCropManager_prepareForPhotoLibraryChange___block_invoke;
    v52[3] = &unk_1E773FE48;
    v53 = v28;
    v31 = v29;
    selfCopy = self;
    v56 = a2;
    v54 = v31;
    [allObjects enumerateObjectsUsingBlock:v52];

    os_unfair_lock_unlock(&self->_faceCropCacheLock);
    [v31 copy];
    os_unfair_lock_lock(&self->_peopleWithoutKeyFacesLock);
    PXMap();
  }

  updatedObjectIDs = [changeCopy updatedObjectIDs];
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  os_unfair_lock_lock(&self->_faceCropCacheLock);
  selfCopy2 = self;
  [(NSCache *)self->_faceCropCache allObjects];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v36 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (!v36)
  {
LABEL_35:

    os_unfair_lock_unlock(&selfCopy2->_faceCropCacheLock);
    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    os_unfair_lock_lock(&selfCopy2->_peopleWithoutKeyFacesLock);
    changeCopy;
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
    options = [v12 options];
    person = [options person];
    face = [options face];
    assetObjectID = [v12 assetObjectID];
    v17 = [updatedObjectIDs containsObject:assetObjectID];
    v18 = [PXPeopleFaceCropManager _change:changeCopy containsVisibleChangesToAssetWithOID:assetObjectID];
    v19 = v18;
    if ((v17 & 1) == 0 && !v18)
    {
      break;
    }

    v22 = face != 0;
    if (person)
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
    changeCopy = v43;
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

  v20 = [changeCopy contentOrThumbnailChangedForPHAssetOID:assetObjectID];
  if (person)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    objectID = [person objectID];
    v24 = [changeCopy keyFaceChangedForPersonOID:objectID];

    if (!v24)
    {
      goto LABEL_31;
    }

    v22 = 0;
  }

  else
  {
    v22 = (face != 0) & v20;
    if (!person)
    {
      if (((face != 0) & v20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  v19 = 0;
LABEL_26:
  localIdentifier = [person localIdentifier];
  [v41 addObject:localIdentifier];

  if (v19)
  {
    [v38 addObject:person];
    if ((v22 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_30:
    localIdentifier2 = [face localIdentifier];
    [v39 addObject:localIdentifier2];

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

- (void)_invalidateCacheForLocalIdentifiers:(id)identifiers wantsNotificationPosted:(BOOL)posted userInfoKey:(id)key
{
  postedCopy = posted;
  v41 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  keyCopy = key;
  if (!keyCopy && postedCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropManager.m" lineNumber:875 description:{@"Invalid parameter not satisfying: %@", @"!wantsNotificationPosted || (wantsNotificationPosted && userInfoKey)"}];
  }

  if ([identifiersCopy count])
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (postedCopy)
      {
        v12 = @"YES";
      }

      v13 = v12;
      *buf = 138543618;
      v38 = identifiersCopy;
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
    v16 = identifiersCopy;
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
    if (postedCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v34 = keyCopy;
      v35 = v16;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      [defaultCenter postNotificationName:@"PXPeopleFaceCropManagerDidInvalidateCacheNotification" object:self userInfo:v24];
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

- (void)_cacheResult:(id)result
{
  resultCopy = result;
  options = [resultCopy options];
  cacheKey = [options cacheKey];
  if ([cacheKey length])
  {
    v6 = [(PXPeopleFaceCropManager *)self _cachedResultForOptions:options];
    os_unfair_lock_lock(&self->_faceCropCacheLock);
    v7 = [(NSCache *)self->_faceCropCache objectForKey:cacheKey];
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
      [(NSCache *)self->_faceCropCache setObject:v7 forKey:cacheKey];
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    if (([resultCopy isCropped] & 1) == 0)
    {
      image = [v6 image];
      [image size];
      v10 = v9;
      image2 = [resultCopy image];
      [image2 size];
      v13 = v12;

      if (v10 >= v13)
      {
        goto LABEL_10;
      }
    }

    [v7 removeLastObject];
LABEL_9:
    [v7 addObject:resultCopy];
LABEL_10:

    os_unfair_lock_unlock(&self->_faceCropCacheLock);
  }
}

- (id)_cachedResultForOptions:(id)options
{
  v19 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  cacheKey = [optionsCopy cacheKey];
  if ([cacheKey length])
  {
    os_unfair_lock_lock(&self->_faceCropCacheLock);
    [(NSCache *)self->_faceCropCache objectForKey:cacheKey];
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
          options = [v10 options];
          v12 = [options areFetchParametersEqualtoFetchParametersOfOptions:optionsCopy];

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

- (void)_fetchFaceAndAssetIfNecessaryForOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __78__PXPeopleFaceCropManager__fetchFaceAndAssetIfNecessaryForOptions_completion___block_invoke;
  v14 = &unk_1E774C2F0;
  v7 = optionsCopy;
  v15 = v7;
  v8 = completionCopy;
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

- (void)_cleanupForImage:(id)image request:(id)request
{
  imageCopy = image;
  requestCopy = request;
  options = [requestCopy options];
  if ([PXPeopleFaceCropManager _shouldCacheResultForOptions:options isDegraded:0 isCropped:1 isForCleanup:1])
  {
    asset = [requestCopy asset];
    v9 = [PXPeopleFaceCropFetchResult alloc];
    objectID = [asset objectID];
    localIdentifier = [asset localIdentifier];
    v12 = [(PXPeopleFaceCropFetchResult *)v9 initWithImage:imageCopy assetObjectID:objectID assetLocalIdentifier:localIdentifier faceRect:1 isCropped:0 isDegraded:options options:*off_1E77221F8, *(off_1E77221F8 + 1), *(off_1E77221F8 + 2), *(off_1E77221F8 + 3)];

    [(PXPeopleFaceCropManager *)self _cacheResult:v12];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(requestCopy, "faceCropRequestID")}];
  os_unfair_lock_lock(&self->_faceCropRequestsByRequestIDsLock);
  [(NSMutableDictionary *)self->_faceCropRequestsByRequestIDs removeObjectForKey:v13];
  os_unfair_lock_unlock(&self->_faceCropRequestsByRequestIDsLock);
}

- (void)_compressImage:(id)image request:(id)request resultHandler:(id)handler
{
  imageCopy = image;
  requestCopy = request;
  handlerCopy = handler;
  v11 = +[PXPeopleFaceCropManager _faceCropManagerLog];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "compressImage", "", buf, 2u);
  }

  options = [requestCopy options];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PXPeopleFaceCropManager__compressImage_request_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7748800;
  v16 = requestCopy;
  v24 = v16;
  v17 = imageCopy;
  v25 = v17;
  v18 = v14;
  v26 = v18;
  v30 = v12;
  v19 = options;
  v27 = v19;
  v20 = handlerCopy;
  selfCopy = self;
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

- (void)_cropImage:(id)image request:(id)request resultHandler:(id)handler
{
  imageCopy = image;
  requestCopy = request;
  handlerCopy = handler;
  v11 = +[PXPeopleFaceCropManager _faceCropManagerLog];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "imageCrop", "", buf, 2u);
  }

  options = [requestCopy options];
  cGImage = [imageCopy CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PXPeopleFaceCropManager__cropImage_request_resultHandler___block_invoke;
  aBlock[3] = &unk_1E773FDD0;
  v19 = requestCopy;
  v33 = 0;
  v34 = 0;
  v27 = v19;
  v35 = Width;
  v36 = Height;
  v20 = options;
  v28 = v20;
  v21 = imageCopy;
  v29 = v21;
  v22 = v14;
  v30 = v22;
  v37 = v12;
  v23 = handlerCopy;
  selfCopy = self;
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

- (void)_handleImage:(id)image info:(id)info faceCropRequest:(id)request resultHandler:(id)handler
{
  image;
  infoCopy = info;
  requestCopy = request;
  handler;
  v11 = +[PXPeopleFaceCropManager _faceCropManagerLog];
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "handleResponse", "", buf, 2u);
  }

  [requestCopy options];
  objc_claimAutoreleasedReturnValue();
  [requestCopy targetSizeToUse];
  asset = [requestCopy asset];
  [asset pixelWidth];
  [asset pixelHeight];
  [requestCopy normalizedCenterEyeLine];
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

- (void)_executeFaceCropRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = +[PXPeopleFaceCropManager _faceCropManagerLog];
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "executeRequest", "", buf, 2u);
  }

  options = [requestCopy options];
  [requestCopy targetSizeToUse];
  v14 = v13;
  v16 = v15;
  [requestCopy normalizedFaceCropRect];
  [PXPeopleFaceCropManager _constrainedSizeForDesiredSize:ceil(v14 / v17), ceil(v16 / v18)];
  v20 = v19;
  v22 = v21;
  isSynchronous = [options isSynchronous];
  v24 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v24 setDeliveryMode:{objc_msgSend(options, "deliveryMode")}];
  [v24 setSynchronous:isSynchronous];
  [v24 setUseLowMemoryMode:{objc_msgSend(options, "useLowMemoryMode")}];
  [v24 setNetworkAccessAllowed:1];
  [v24 setAllowSecondaryDegradedImage:1];
  [v24 setResizeMode:1];
  if ([options useLowMemoryMode])
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x40000;
  }

  [v24 setLoadingMode:v25];
  if ((isSynchronous & 1) == 0)
  {
    v26 = +[PXPeopleFaceCropManager _fetchQueue];
    [v24 setResultHandlerQueue:v26];
  }

  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  asset = [requestCopy asset];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __65__PXPeopleFaceCropManager__executeFaceCropRequest_resultHandler___block_invoke;
  v33[3] = &unk_1E773FDA8;
  v37 = handlerCopy;
  v38 = v9;
  v34 = v11;
  v35 = requestCopy;
  selfCopy = self;
  v39 = v20;
  v40 = v22;
  v29 = handlerCopy;
  v30 = requestCopy;
  v31 = v11;
  v32 = [defaultManager requestImageForAsset:asset targetSize:1 contentMode:v24 options:v33 resultHandler:{v20, v22}];

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

- (int)_prepareFaceCropRequestWithOptions:(id)options resultHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = +[PXPeopleFaceCropManager _faceCropManagerLog];
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "prepareRequest", "", buf, 2u);
  }

  photoLibrary = [optionsCopy photoLibrary];
  [photoLibrary px_registerChangeObserver:self];

  v13 = [[PXPeopleFaceCropRequest alloc] initWithFetchOptions:optionsCopy];
  faceCropRequestID = [(PXPeopleFaceCropRequest *)v13 faceCropRequestID];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:faceCropRequestID];
  os_unfair_lock_lock(&self->_faceCropRequestsByRequestIDsLock);
  [(NSMutableDictionary *)self->_faceCropRequestsByRequestIDs setObject:v13 forKey:v15];
  os_unfair_lock_unlock(&self->_faceCropRequestsByRequestIDsLock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__PXPeopleFaceCropManager__prepareFaceCropRequestWithOptions_resultHandler___block_invoke;
  v21[3] = &unk_1E773FD80;
  v22 = v11;
  v23 = v13;
  v24 = optionsCopy;
  selfCopy = self;
  v28 = faceCropRequestID;
  v26 = handlerCopy;
  v27 = v9;
  v16 = handlerCopy;
  v17 = optionsCopy;
  v18 = v13;
  v19 = v11;
  [(PXPeopleFaceCropManager *)self _fetchFaceAndAssetIfNecessaryForOptions:v17 completion:v21];

  return faceCropRequestID;
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

- (void)invalidateCacheForPerson:(id)person
{
  if (person)
  {
    v4 = MEMORY[0x1E695DFD8];
    localIdentifier = [person localIdentifier];
    v5 = [v4 setWithObject:localIdentifier];
    [(PXPeopleFaceCropManager *)self _invalidateCacheForLocalIdentifiers:v5 wantsNotificationPosted:1 userInfoKey:@"PXPeopleFaceCropManagerInvalidatedPersonLocalIdentifiersKey"];
  }
}

- (BOOL)isRequestActiveWithRequestID:(int)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&d];
  os_unfair_lock_lock(&self->_faceCropRequestsByRequestIDsLock);
  v5 = [(NSMutableDictionary *)self->_faceCropRequestsByRequestIDs objectForKey:v4];
  os_unfair_lock_unlock(&self->_faceCropRequestsByRequestIDsLock);

  return v5 != 0;
}

- (void)cancelRequestForRequestID:(int)d
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&d];
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

- (int)requestFaceCropForOptions:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [options copy];
  v8 = [(PXPeopleFaceCropManager *)self _cachedResultForOptions:v7];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  assetLocalIdentifier = [v8 assetLocalIdentifier];
  [v9 setObject:assetLocalIdentifier forKey:@"PXPeopleAssetLocalIdentifierKey"];

  isCropped = [v8 isCropped];
  v12 = MEMORY[0x1E696B098];
  if (isCropped)
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

  isDegraded = [v8 isDegraded];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:isDegraded];
  [v9 setObject:v19 forKeyedSubscript:*off_1E7722078];

  image = [v8 image];
  handlerCopy[2](handlerCopy, image, v9);

  v21 = [PXPeopleFaceCropManager _isFinalForIsDegraded:isDegraded isCropped:isCropped];
  if (v21)
  {
    v22 = 0;
  }

  else
  {
LABEL_7:
    v22 = [(PXPeopleFaceCropManager *)self _prepareFaceCropRequestWithOptions:v7 resultHandler:handlerCopy];
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

+ (BOOL)_change:(id)_change containsVisibleChangesToAssetWithOID:(id)d
{
  _changeCopy = _change;
  dCopy = d;
  if ([_changeCopy trashedStateChangedForPHAssetOID:dCopy] & 1) != 0 || (objc_msgSend(_changeCopy, "hiddenStateChangedForPHAssetOID:", dCopy))
  {
    v7 = 1;
  }

  else
  {
    deletedObjectIDs = [_changeCopy deletedObjectIDs];
    v7 = [deletedObjectIDs containsObject:dCopy];
  }

  return v7;
}

+ (BOOL)_shouldCacheResultForOptions:(id)options isDegraded:(BOOL)degraded isCropped:(BOOL)cropped isForCleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  croppedCopy = cropped;
  degradedCopy = degraded;
  optionsCopy = options;
  if ([optionsCopy shouldCacheResult])
  {
    v10 = [optionsCopy deliveryMode] == 0;
    if (cleanupCopy)
    {
      v10 |= [PXPeopleFaceCropManager _isFinalForIsDegraded:degradedCopy isCropped:croppedCopy];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

+ (double)_cornerRadiusForRoundedCornerStyleWithDisplayScale:(double)scale
{
  v4 = +[PXPeopleFaceCropFetchOptions shouldUseLemonadeRoundedCorners];
  result = 10.0;
  if (v4)
  {
    +[PXLemonadePeopleCellSpecsConstants cornerRadius];
    return v6 * scale;
  }

  return result;
}

+ (double)_cornerRadiusForCornerStyle:(int64_t)style pixelTargetSize:(CGSize)size displayScale:(double)scale
{
  v5 = fmin(size.width, size.height);
  v6 = v5 < 10.0 && style == 1;
  styleCopy = 2;
  if (!v6)
  {
    styleCopy = style;
  }

  if (styleCopy == 2)
  {
    return v5 * 0.5;
  }

  v8 = 0.0;
  if (styleCopy == 1)
  {
    [PXPeopleFaceCropManager roundedCornerRadiusForTargetSize:size.width displayScale:size.height, scale, 0.0];
    return result;
  }

  return v8;
}

+ (double)_cropFactorValueForCropFactor:(int64_t)factor
{
  if (factor == 1)
  {
    return 7.19999981;
  }

  if ((factor - 2) < 2)
  {
    v13 = v4;
    v14 = v3;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleFaceCropManager.m" lineNumber:719 description:@"Code which should be unreachable has been reached"];

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

+ (BOOL)_shouldTakeSquareCropForFace:(id)face cropFactor:(int64_t)factor outNormalizedFaceCropRect:(CGRect *)rect
{
  faceCopy = face;
  v8 = faceCopy;
  if (factor < 2)
  {
    [PXPeopleFaceCropManager _cropFactorValueForCropFactor:factor];
    [v8 px_cropRectWithCropFactor:?];
    rect->origin.x = v9;
    rect->origin.y = v10;
    rect->size.width = v11;
    rect->size.height = v12;
LABEL_6:
    LOBYTE(rect) = 1;
    goto LABEL_8;
  }

  if (factor == 2)
  {
    LODWORD(rect) = [faceCopy px_cropRectForPortraitImage:rect] ^ 1;
    goto LABEL_8;
  }

  if (factor != 3)
  {
    goto LABEL_6;
  }

  [faceCopy px_cropRectForPortraitImage:rect];
  LOBYTE(rect) = 0;
LABEL_8:

  return rect;
}

+ (double)roundedCornerRadiusForTargetSize:(CGSize)size displayScale:(double)scale
{
  height = size.height;
  width = size.width;
  [PXPeopleFaceCropManager _cornerRadiusForRoundedCornerStyleWithDisplayScale:scale];
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
  block[4] = self;
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

- (int)requestFaceCropImageForPerson:(id)person targetSize:(CGSize)size displayScale:(double)scale completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  personCopy = person;
  scale = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:personCopy targetSize:width displayScale:height, scale];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __112__PXPeopleFaceCropManager_Convenience__requestFaceCropImageForPerson_targetSize_displayScale_completionHandler___block_invoke;
  v16[3] = &unk_1E774B680;
  v17 = handlerCopy;
  v14 = handlerCopy;
  LODWORD(self) = [(PXPeopleFaceCropManager *)self requestFaceCropForOptions:scale resultHandler:v16];

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
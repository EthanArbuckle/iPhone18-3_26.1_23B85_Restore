@interface PLPrimaryResourceDataStore
+ (BOOL)bailOutOfVideoFinalizationIfNeededForAsset:(id)a3 taskIdentifier:(id)a4 didPromoteProxy:(BOOL *)a5 error:(id *)a6;
+ (id)contextualVideoThumbnailIdentifierFromFileURL:(id)a3;
+ (id)supportedRecipes;
+ (id)utiForContextualVideoThumbnail;
+ (unsigned)currentDeviceMasterThumbRecipeID;
+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)a3;
- (BOOL)_lock_taskIsPendingDownloadWithIdentifier:(id)a3;
- (BOOL)canMarkAsynchronousLocalRenderAsOptionalForProgress:(id)a3;
- (BOOL)canStoreExternalResource:(id)a3;
- (BOOL)canStreamResource:(id)a3;
- (BOOL)isCPLSyncableLibraryStore;
- (BOOL)storeExternalResource:(id)a3 forAsset:(id)a4 options:(id)a5 error:(id *)a6 resultingResource:(id *)a7;
- (BOOL)videoResource:(id)a3 matchesOrExceedsQualityLevel:(unsigned int)a4;
- (PLCloudPhotoLibraryManager)_cplManager;
- (PLPrimaryResourceDataStore)initWithPathManager:(id)a3;
- (id)_contextualVideoThumbnailResourceForAsset:(id)a3 atURL:(id)a4;
- (id)_contextualVideoThumbnailResourcesForAsset:(id)a3;
- (id)_cplResourceIfDownloadIsAvailableForResource:(id)a3 asset:(id)a4 options:(id)a5;
- (id)_deferredPhotoFinalizer;
- (id)_expectedFileURLForMasterThumbnailForAsset:(id)a3;
- (id)_fileURLForContextualVideoThumbnailIdentifier:(id)a3 asset:(id)a4 forWriting:(BOOL)a5;
- (id)_finalizeDeferredResource:(id)a3 asset:(id)a4 options:(id)a5 clientBundleIdentifier:(id)a6 completionHandler:(id)a7;
- (id)_imageConversionServiceClient;
- (id)_makeResourceLocallyAvailable:(id)a3 options:(id)a4 completion:(id)a5;
- (id)_masterThumbnailVirtualResourceForAsset:(id)a3;
- (id)_newProgressForTaskWithIdentifier:(id)a3 type:(int64_t)a4;
- (id)_videoConversionServiceClient;
- (id)descriptionForSubtype:(int64_t)a3;
- (id)expectedFileURLForResource:(id)a3 asset:(id)a4;
- (id)getClosestResourceMatchingCPLResourceType:(unint64_t)a3 version:(unsigned int)a4 asset:(id)a5;
- (id)keyFromKeyStruct:(const void *)a3;
- (id)keyHelperForBundleScope:(unsigned __int16)a3;
- (id)requestLocalAvailabilityChange:(signed __int16)a3 forResource:(id)a4 options:(id)a5 completion:(id)a6;
- (id)resourceDataForKey:(id)a3 assetID:(id)a4;
- (id)resourceURLForKey:(id)a3 assetID:(id)a4;
- (id)virtualResourcesForAsset:(id)a3 options:(unsigned __int16)a4;
- (unsigned)masterThumbRecipeID;
- (void)_cancelAvailabilityRequestWithTaskIdentifier:(id)a3;
- (void)_downloadCPLResource:(id)a3 options:(id)a4 taskDidBeginHandler:(id)a5 completionHandler:(id)a6;
- (void)_lock_transitionTaskToInflightWithIdentifier:(id)a3;
- (void)_verifyResourceLocalAvailability:(id)a3 localResourceFileURL:(id *)a4 resourceReapirNeeded:(int64_t *)a5;
- (void)dealloc;
- (void)generateDeferredAdjustmentForAsset:(id)a3 imageConversionServiceClient:(id)a4 videoConversionServiceClient:(id)a5 reason:(id)a6 taskIdentifier:(id)a7 cplResourceType:(unint64_t)a8 version:(unsigned int)a9 clientBundleID:(id)a10 completion:(id)a11;
- (void)markAsynchronousLocalRenderAsOptionalForProgress:(id)a3;
- (void)requestStreamingURLForResource:(id)a3 asset:(id)a4 intent:(unint64_t)a5 timeRange:(id *)a6 streamingHints:(id)a7 inContext:(id)a8 clientBundleID:(id)a9 completion:(id)a10;
- (void)transitional_reconsiderLocalAvailabilityBasedOnExistingLocationOfCPLResource:(id)a3 givenFilePath:(id)a4;
@end

@implementation PLPrimaryResourceDataStore

- (void)transitional_reconsiderLocalAvailabilityBasedOnExistingLocationOfCPLResource:(id)a3 givenFilePath:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v6 fileExistsAtPath:v5])
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];
    v8 = [v13 validatedExternalResourceRepresentationUsingFileURL:v7];

    v9 = [PLPrimaryResourceDataStoreKey alloc];
    v10 = [v13 asset];
    v11 = [(PLPrimaryResourceDataStoreKey *)v9 initFromExistingLocationOfExternalResource:v8 asset:v10];

    if (v11)
    {
      v12 = [v11 keyData];
      [v13 setDataStoreKeyData:v12];

      [v13 setLocalAvailability:1];
    }

    else
    {
      [v13 markAsNotLocallyAvailable];
    }
  }

  else
  {
    [v13 markAsNotLocallyAvailable];
  }
}

- (unsigned)masterThumbRecipeID
{
  result = self->_masterThumbRecipeID;
  if (!result)
  {
    result = [objc_opt_class() currentDeviceMasterThumbRecipeID];
    self->_masterThumbRecipeID = result;
  }

  return result;
}

- (void)markAsynchronousLocalRenderAsOptionalForProgress:(id)a3
{
  v4 = a3;
  v5 = [(PLPrimaryResourceDataStore *)self _videoConversionServiceClient];
  [v5 markPendingRequestAsOptionalForProgress:v4];
}

- (BOOL)canMarkAsynchronousLocalRenderAsOptionalForProgress:(id)a3
{
  v4 = a3;
  v5 = [(PLPrimaryResourceDataStore *)self _videoConversionServiceClient];
  v6 = [v5 canMarkPendingRequestAsOptionalForProgress:v4];

  return v6;
}

- (void)requestStreamingURLForResource:(id)a3 asset:(id)a4 intent:(unint64_t)a5 timeRange:(id *)a6 streamingHints:(id)a7 inContext:(id)a8 clientBundleID:(id)a9 completion:(id)a10
{
  v35 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a7;
  v17 = a9;
  v18 = a10;
  v19 = [a3 cplType];
  if (v19)
  {
    v20 = v19;
    v21 = [(PLPrimaryResourceDataStore *)self _cplManager];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __135__PLPrimaryResourceDataStore_requestStreamingURLForResource_asset_intent_timeRange_streamingHints_inContext_clientBundleID_completion___block_invoke;
    v28[3] = &unk_1E75650C8;
    v29 = v18;
    v22 = *&a6->var0.var3;
    *buf = *&a6->var0.var0;
    v33 = v22;
    v34 = *&a6->var1.var1;
    [v21 getStreamingURLForAsset:v15 resourceType:v20 intent:a5 hints:v16 timeRange:buf clientBundleID:v17 completionHandler:v28];

    v23 = v29;
  }

  else
  {
    v24 = PLBackendGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = @"Requesting a streaming URL for an unknown CPL type is not supported";
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v25 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E69BFF70];
    v30 = *MEMORY[0x1E696A578];
    v31 = @"Requesting a streaming URL for an unknown CPL type is not supported";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v23 = [v25 errorWithDomain:v26 code:4 userInfo:v27];

    (*(v18 + 2))(v18, 0, 0, 0, 0, v23);
  }
}

- (BOOL)canStreamResource:(id)a3
{
  v3 = a3;
  if ([v3 isInCloud])
  {
    v4 = [v3 uniformTypeIdentifier];
    v5 = [v4 conformsToMovie];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)videoResource:(id)a3 matchesOrExceedsQualityLevel:(unsigned int)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v5, "recipeID")}];
      v8 = [&unk_1F0FBF280 containsObject:v7];
      goto LABEL_12;
    }

    LOBYTE(a4) = a4 == 3;
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v5, "recipeID")}];
      if ([&unk_1F0FBF298 containsObject:v7])
      {
        LOBYTE(a4) = 1;
LABEL_13:

        goto LABEL_14;
      }

      v8 = [v6 isDerivative];
LABEL_12:
      LOBYTE(a4) = v8 ^ 1;
      goto LABEL_13;
    }

    LOBYTE(a4) = 0;
  }

  else
  {
    a4 = [v5 isDerivative] ^ 1;
  }

LABEL_14:

  return a4;
}

- (id)requestLocalAvailabilityChange:(signed __int16)a3 forResource:(id)a4 options:(id)a5 completion:(id)a6
{
  v8 = a3;
  v48[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStore.m" lineNumber:1669 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v34 = [MEMORY[0x1E696AAA8] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStore.m" lineNumber:1670 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_3:
  v15 = [v11 dataStore];

  if (v15 != self)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStore.m" lineNumber:1671 description:@"resource does not belong to this data store."];
  }

  if (v8 == -1)
  {
    v40 = 0;
    v20 = [v11 purgeIfPossibleReturningError:&v40];
    v19 = v40;
    (v14)[2](v14, v19, 0, v20);

LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

  if (v8 == -32768)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = @"Setting availability to not possible by request is not permitted";
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v48[0] = @"Setting availability to not possible by request is not permitted";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x1E69BFF70] code:4 userInfo:v18];

    (v14)[2](v14, v19, 0, 0);
    goto LABEL_19;
  }

  if (v8 < 1)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid local availability value requested: %ld", v8];
    v29 = PLBackendGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v28;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v30 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42 = v28;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v19 = [v30 errorWithDomain:*MEMORY[0x1E69BFF70] code:4 userInfo:v31];

    (v14)[2](v14, v19, 0, 0);
    goto LABEL_19;
  }

  v19 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", [v11 recipeID]);
  v21 = PLImageManagerGetLog();
  v22 = os_signpost_id_generate(v21);

  v23 = v21;
  v24 = v23;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = [v12 taskIdentifier];
    *buf = 138543618;
    v44 = v25;
    v45 = 2114;
    v46 = v19;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "MakeResourceLocallyAvailable", "taskIdentifier = %{public}@, resource %{public}@", buf, 0x16u);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3254779904;
  v36[2] = __92__PLPrimaryResourceDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke;
  v36[3] = &unk_1F0F017A8;
  v38 = v24;
  v39 = v22;
  v37 = v14;
  v26 = v24;
  v27 = [(PLPrimaryResourceDataStore *)self _makeResourceLocallyAvailable:v11 options:v12 completion:v36];

LABEL_20:

  return v27;
}

void __92__PLPrimaryResourceDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = *(a1 + 40);
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v11, "MakeResourceLocallyAvailable", "", v12, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)storeExternalResource:(id)a3 forAsset:(id)a4 options:(id)a5 error:(id *)a6 resultingResource:(id *)a7
{
  v75[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    [v63 handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStore.m" lineNumber:1490 description:{@"Invalid parameter not satisfying: %@", @"externalResource"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v64 = [MEMORY[0x1E696AAA8] currentHandler];
  [v64 handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStore.m" lineNumber:1491 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

LABEL_3:
  v15 = [v13 managedObjectContext];
  if (v15)
  {
    v68 = [MEMORY[0x1E696AC08] defaultManager];
    v67 = [v13 assetID];
    v16 = [v12 cplTypeWithAssetID:?];
    v17 = [v12 uniformTypeIdentifier];

    if (v17)
    {
      if (v16)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v28 = -[PLResourceDataStore guessUTIForExternalResource:forAssetKind:](self, "guessUTIForExternalResource:forAssetKind:", v12, [v13 kind]);
      [v12 setUniformTypeIdentifier:v28];

      v29 = PLImageManagerGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v13 uuid];
        *buf = 138543618;
        v71 = v12;
        v72 = 2114;
        v73 = v30;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "[RM] guessed UTI for external resource: %{public}@ for asset uuid: %{public}@", buf, 0x16u);
      }

      if (v16)
      {
LABEL_6:
        v18 = [v12 resourceType];
        v19 = v68;
        if (([v14 assumeNoExistingResources] & 1) == 0)
        {
          v20 = v16;
          if (v18 != 5)
          {
            v21 = [v13 resourceForCPLType:v16 version:{objc_msgSend(v12, "version")}];
            if ([v21 resourceType] == 4 && (PLResourceIdentityIsEqual(v12, v21) & 1) == 0)
            {

              [v12 setResourceType:5];
              v20 = [v12 cplTypeWithAssetID:v67];
              v21 = 0;
            }

            else
            {
              v20 = v16;
            }

            [v21 setResourceIdentity:v12 managedObjectContext:v15];
            if (v21)
            {
LABEL_26:
              v66 = v15;
              v32 = v14;
              v33 = [v12 fileURL];

              if (v33)
              {
                v34 = [v12 fileURL];
                v35 = [v34 path];
                v36 = [v19 fileExistsAtPath:v35];
              }

              else
              {
                v36 = 0;
              }

              if ([v21 isInserted])
              {
                [v21 setDataStoreClassID:0];
                if (v16)
                {
                  [v21 setDataStoreSubtype:v20];
                }
              }

              v37 = [v12 codecFourCharCode];

              v14 = v32;
              if (v37)
              {
                v38 = [v12 codecFourCharCode];
                [v21 setCodecFourCharCodeName:v38];
              }

              [v21 setUnorientedWidth:{objc_msgSend(v12, "unorientedWidth")}];
              [v21 setUnorientedHeight:{objc_msgSend(v12, "unorientedHeight")}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v65 = v36;
                v39 = v12;
                [v21 setRemoteAvailability:{objc_msgSend(v39, "remoteAvailability")}];
                v40 = [v21 fingerprint];
                if (v40)
                {
                  v41 = v40;
                  v42 = [v39 fingerprint];
                  if (v42)
                  {
                    v43 = v42;
                    v44 = [v21 fingerprint];
                    v45 = [v39 fingerprint];
                    v46 = [v44 isEqualToString:v45];

                    v19 = v68;
                    v14 = v32;

                    if ((v46 & 1) == 0)
                    {
                      [v21 resetPrefetchState];
                    }
                  }

                  else
                  {
                  }
                }

                [v21 setCloudAttributesWithExternalResource:v39];

                v36 = v65;
              }

              v47 = [v12 sidecarIndex];
              [v21 setSidecarIndex:v47];

              v48 = [v21 fileSystemBookmark];

              if (v48)
              {
                v49 = -[PLPrimaryResourceDataStoreReferenceFileKey initWithResourceType:]([PLPrimaryResourceDataStoreReferenceFileKey alloc], "initWithResourceType:", [v12 resourceType]);
                v15 = v66;
                if (!v49)
                {
                  goto LABEL_50;
                }

LABEL_46:
                v50 = [v21 dataStoreKey];
                if (v50 && (v51 = v50, [v21 dataStoreKey], v52 = objc_claimAutoreleasedReturnValue(), v53 = -[PLPrimaryResourceDataStoreKey isEqualToKey:](v49, "isEqualToKey:", v52), v52, v51, !v53))
                {
                  v55 = [v21 dataStoreKey];
                  v56 = [v55 fileURLForAssetID:v67];

                  v57 = [(PLPrimaryResourceDataStoreReferenceFileKey *)v49 fileURLForAssetID:v67];
                  if (([MEMORY[0x1E69BF238] fileURL:v56 isEqualToFileURL:v57] & 1) == 0)
                  {
                    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempt to overwrite primary store resource with existing key: %@ with new key: %@, on resource: %@.  Store will orphan the previous key."], v56, v57, v21);
                    PLSimulateCrash();
                  }

                  v54 = 0;
                  v19 = v68;
                }

                else
                {
                  v54 = 0;
                }

                goto LABEL_54;
              }

              v15 = v66;
              if (v36)
              {
                v49 = [[PLPrimaryResourceDataStoreKey alloc] initFromExistingLocationOfExternalResource:v12 asset:v13];
                if (v49)
                {
                  goto LABEL_46;
                }
              }

              else
              {
                v49 = 0;
              }

LABEL_50:
              v54 = 1;
LABEL_54:
              [v21 setDataLength:{objc_msgSend(v12, "dataLength")}];
              v59 = [(PLPrimaryResourceDataStoreReferenceFileKey *)v49 keyData];
              [v21 setDataStoreKeyData:v59];

              if ([v12 trashedState] >= 1 && !objc_msgSend(v21, "trashedState"))
              {
                [v21 setTrashedState:{objc_msgSend(v12, "trashedState")}];
                v60 = [v12 trashedDate];
                [v21 setTrashedDate:v60];
              }

              if (v54)
              {
                [v21 setLocalAvailability:0xFFFFFFFFLL];
              }

              else
              {
                [v21 setLocalAvailability:1];
                [v21 setLocalAvailabilityTarget:0];
              }

              v27 = v21 != 0;
              if (a7 && v21)
              {
                v61 = v21;
                *a7 = v21;
              }

              v26 = v67;
              goto LABEL_64;
            }
          }

LABEL_25:
          v21 = [v13 fetchOrCreateResourceWithIdentity:v12];
          goto LABEL_26;
        }

        goto LABEL_19;
      }
    }

    v19 = v68;
    if (![v14 assumeNoExistingResources])
    {
      v20 = 0;
      goto LABEL_25;
    }

LABEL_19:
    v31 = [v13 objectID];
    v21 = [PLInternalResource insertResourceForAssetObjectID:v31 resourceIdentity:v12 inManagedObjectContext:v15];

    v20 = v16;
    if (v21)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v22 = PLBackendGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = [v13 uuid];
    *buf = 138543362;
    v71 = v23;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "asset %{public}@ managed object context is nil, cannot complete storing external resource", buf, 0xCu);
  }

  v24 = MEMORY[0x1E696ABC0];
  v25 = *MEMORY[0x1E69BFF48];
  v74 = *MEMORY[0x1E696A278];
  v75[0] = @"asset managed object context is nil";
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  v26 = [v24 errorWithDomain:v25 code:47001 userInfo:v19];
  if (a6)
  {
    v26 = v26;
    v27 = 0;
    *a6 = v26;
  }

  else
  {
    v27 = 0;
  }

LABEL_64:

  return v27;
}

- (BOOL)canStoreExternalResource:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStore.m" lineNumber:1477 description:{@"Invalid parameter not satisfying: %@", @"externalResource"}];
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if ([v7 isEqualToString:@"PLSharedStreamsValidatedExternalResource"])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [v7 isEqualToString:@"PLSyndicationValidatedExternalResource"] ^ 1;
  }

  return v8;
}

- (id)virtualResourcesForAsset:(id)a3 options:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (([v6 isDeleted] & 1) == 0 && ((objc_msgSend(v6, "hasMasterThumb") & 1) != 0 || objc_msgSend(v6, "thumbnailIndex") == -3))
  {
    v8 = [(PLPrimaryResourceDataStore *)self _masterThumbnailVirtualResourceForAsset:v6];
    [v7 addObject:v8];
  }

  if ([v6 hasAdjustments])
  {
    v9 = [PLAdjustmentVirtualResource alloc];
    v10 = [v6 pathForAdjustmentFile];
    v11 = [(PLAdjustmentVirtualResource *)v9 initWithAdjustmentFilePath:v10 forAsset:v6];

    [(PLVirtualResource *)v11 setDataStore:self];
    [v7 addObject:v11];
  }

  if ((v4 & 1) == 0)
  {
    v12 = [(PLPrimaryResourceDataStore *)self _contextualVideoThumbnailResourcesForAsset:v6];
    if ([v12 count])
    {
      [v7 addObjectsFromArray:v12];
    }
  }

  v13 = [v7 copy];

  return v13;
}

- (id)expectedFileURLForResource:(id)a3 asset:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 cplType])
  {
    v8 = [v7 pathForCPLResourceType:objc_msgSend(v6 adjusted:{"dataStoreSubtype"), objc_msgSend(v6, "version") == 2}];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];
    }

    else
    {
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v39 = [v6 resourceType];
        v37 = [v6 version];
        v22 = [v6 recipeID];
        v23 = [v6 dataStore];
        v24 = [objc_opt_class() storeClassID];
        v25 = [v6 dataStoreSubtype];
        v26 = [v6 uniformTypeIdentifier];
        v27 = [v7 uuid];
        *buf = 67110658;
        v41 = v39;
        v42 = 1024;
        v43 = v37;
        v44 = 1024;
        v45 = v22;
        v46 = 1024;
        v47 = v24;
        v48 = 2048;
        v49 = v25;
        v50 = 2112;
        v51 = v26;
        v52 = 2112;
        v53 = v27;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_FAULT, "Unable to build expectedFileURL for resource type: %d, version: %d, recipeID: %d, store: %d, storeSubType: %lld, UTI: %@ on asset uuid: %@", buf, 0x38u);
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = [v7 pathManager];
    v11 = [v10 isUBF];

    if (v11)
    {
      v36 = objc_alloc(MEMORY[0x1E69BF298]);
      v12 = [v7 uuid];
      v35 = [v7 bundleScope];
      v38 = [v6 uniformTypeIdentifier];
      v13 = [v38 identifier];
      v14 = [v6 version];
      v15 = [v6 resourceType];
      v16 = [v6 recipeID];
      v17 = [v7 originalFilename];
      v18 = [v6 customSuffix];
      v19 = [v36 initWithAssetUuid:v12 bundleScope:v35 uti:v13 resourceVersion:v14 resourceType:v15 recipeID:v16 originalFilename:v17 customSuffix:v18];

      v20 = [(PLResourceDataStore *)self pathManager];
      v9 = [v20 readOnlyUrlWithIdentifier:v19];

      goto LABEL_11;
    }

    v28 = [v6 uniformTypeIdentifier];
    v29 = [v28 identifier];
    v8 = [PLManagedAsset preferredFileExtensionForType:v29];

    [v8 UTF8String];
    [v6 version];
    [v6 recipeID];
    [v6 resourceType];
    v30 = [v7 filename];
    v31 = [v7 directory];
    v32 = [v7 pathManager];
    v33 = +[PLThumbnailManager masterThumbFilename];
    [v33 UTF8String];
    v9 = PLDCIMURLForResourcePropertiesAndPathManager();
  }

LABEL_11:

  return v9;
}

- (id)resourceURLForKey:(id)a3 assetID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStore.m" lineNumber:1401 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v9 = [v7 fileURLForAssetID:v8];

  return v9;
}

- (id)resourceDataForKey:(id)a3 assetID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLPrimaryResourceDataStore.m" lineNumber:1387 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v9 = [v7 fileURLForAssetID:v8];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v9 options:2 error:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)keyFromKeyStruct:(const void *)a3
{
  v3 = [[PLPrimaryResourceDataStoreKey alloc] initWithKeyStruct:a3];

  return v3;
}

- (id)descriptionForSubtype:(int64_t)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:?];
  }

  else
  {
    v4 = @"(not set)";
  }

  return v4;
}

- (PLCloudPhotoLibraryManager)_cplManager
{
  if (PLIsAssetsd())
  {
    v3 = +[PLPhotoLibraryBundleController sharedBundleController];
    v4 = [(PLResourceDataStore *)self pathManager];
    v5 = [v4 libraryURL];
    v6 = [v3 bundleForLibraryURL:v5];

    v7 = [v6 libraryServicesManager];
    v8 = [v7 cloudPhotoLibraryManager];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dealloc
{
  [(PAVideoConversionServiceClient *)self->_videoConversionServiceClient invalidateAfterPendingRequestCompletion];
  v3.receiver = self;
  v3.super_class = PLPrimaryResourceDataStore;
  [(PLPrimaryResourceDataStore *)&v3 dealloc];
}

- (PLPrimaryResourceDataStore)initWithPathManager:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PLPrimaryResourceDataStore;
  v5 = [(PLResourceDataStore *)&v17 initWithPathManager:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_makeAvailableProgressByTaskIdentifier = v5->_lock_makeAvailableProgressByTaskIdentifier;
    v5->_lock_makeAvailableProgressByTaskIdentifier = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_masterThumbRecipeID = 0;
    v8 = [[PLPrimaryResourceDataStoreKeyHelper alloc] initWithPathManager:v4];
    mainScopeKeyHelper = v5->_mainScopeKeyHelper;
    v5->_mainScopeKeyHelper = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__PLPrimaryResourceDataStore_initWithPathManager___block_invoke;
    v15[3] = &unk_1E7566798;
    v16 = v10;
    v11 = v10;
    [v4 enumerateBundleScopesWithBlock:v15];
    v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v11];
    keyHelperByBundleScope = v5->_keyHelperByBundleScope;
    v5->_keyHelperByBundleScope = v12;
  }

  return v5;
}

void __50__PLPrimaryResourceDataStore_initWithPathManager___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v6 = a4;
    v9 = [[PLPrimaryResourceDataStoreKeyHelper alloc] initWithPathManager:v6];

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a2];
    [v7 setObject:v9 forKeyedSubscript:v8];
  }
}

- (id)_contextualVideoThumbnailResourceForAsset:(id)a3 atURL:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 photoLibrary];
  v9 = [v8 libraryID];

  if (v9)
  {
    v10 = [v7 lastPathComponent];
    v11 = [v10 componentsSeparatedByString:@"_"];
    v12 = [v11 lastObject];

    v13 = [[PLContextualVideoThumbnailVirtualResource alloc] initWithAsset:v6 thumbnailIdentifier:v12];
    [(PLVirtualResource *)v13 setDataStore:self];
    v14 = [PLPrimaryResourceDataStoreFilePathKey alloc];
    v15 = [v7 path];
    v16 = [(PLPrimaryResourceDataStoreFilePathKey *)v14 initWithFilePath:v15 andLibraryID:v9];

    [(PLVirtualResource *)v13 setDataStoreKey:v16];
  }

  else
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v6 objectID];
      v19 = [v18 pl_shortURI];
      v21 = 138543362;
      v22 = v19;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "libraryID is nil for asset %{public}@", &v21, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (id)_contextualVideoThumbnailResourcesForAsset:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isVideo])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(PLPrimaryResourceDataStore *)self _fileURLForContextualVideoThumbnailIdentifier:0 asset:v4 forWriting:0];
    v7 = objc_alloc(MEMORY[0x1E69BF240]);
    v8 = [v6 path];
    v9 = [v7 initWithFilePath:v8];

    v17[0] = *MEMORY[0x1E695DC30];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__PLPrimaryResourceDataStore__contextualVideoThumbnailResourcesForAsset___block_invoke;
    v14[3] = &unk_1E75650A0;
    v14[4] = self;
    v15 = v4;
    v16 = v5;
    v11 = v5;
    [v9 visitURLsLoadingPropertiesForKeys:v10 withBlock:v14];
    v12 = [v11 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __73__PLPrimaryResourceDataStore__contextualVideoThumbnailResourcesForAsset___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _contextualVideoThumbnailResourceForAsset:*(a1 + 40) atURL:a2];
  if (v3)
  {
    [*(a1 + 48) addObject:v3];
  }

  return 1;
}

- (id)_fileURLForContextualVideoThumbnailIdentifier:(id)a3 asset:(id)a4 forWriting:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 isVideo])
  {
    v10 = objc_alloc(MEMORY[0x1E69BF298]);
    v11 = [v9 uuid];
    v12 = [v9 bundleScope];
    v13 = +[PLContextualVideoThumbnailVirtualResource uniformTypeIdentifierForContextualVideoThumbnail];
    v14 = [v13 identifier];
    v15 = [v10 initWithAssetUuid:v11 bundleScope:v12 uti:v14 resourceVersion:3 resourceType:16 recipeID:+[PLContextualVideoThumbnailVirtualResource recipeIDForContextualVideoThumbnail](PLContextualVideoThumbnailVirtualResource originalFilename:"recipeIDForContextualVideoThumbnail") customSuffix:{0, v8}];

    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__2226;
    v27 = __Block_byref_object_dispose__2227;
    v28 = 0;
    [(PLResourceDataStore *)self pathManager];
    if (a5)
      v16 = {;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __93__PLPrimaryResourceDataStore__fileURLForContextualVideoThumbnailIdentifier_asset_forWriting___block_invoke;
      v20[3] = &unk_1E7565078;
      v22 = &v23;
      v21 = v9;
      [v16 obtainAccessAndWaitWithFileWithIdentifier:v15 mode:2 toURLWithHandler:v20];

      v17 = v24[5];
      v18 = v21;
    }

    else
      v18 = {;
      v17 = [v18 readOnlyUrlWithIdentifier:v15];
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __93__PLPrimaryResourceDataStore__fileURLForContextualVideoThumbnailIdentifier_asset_forWriting___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) uuidDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Unable to get URL for contextual video thumbnail directory for asset %{public}@", &v7, 0xCu);
    }
  }
}

- (id)_masterThumbnailVirtualResourceForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PLPrimaryResourceDataStore *)self masterThumbRecipeID];
  v6 = [PLResourceRecipe recipeFromID:v5];
  v7 = [(PLVirtualResource *)[PLFileBackedThumbnailVirtualResource alloc] initWithRecipe:v6 forAsset:v4];
  [v6 sizeForAssetWidth:objc_msgSend(v4 height:{"width"), objc_msgSend(v4, "height")}];
  v9 = v8;
  v11 = v10;
  [(PLVirtualResource *)v7 setUnorientedWidth:v8];
  [(PLVirtualResource *)v7 setUnorientedHeight:v11];
  v12 = +[PLUniformTypeIdentifier jpegUniformTypeIdentifier];
  [(PLVirtualResource *)v7 setUniformTypeIdentifier:v12];

  v13 = [v6 codecFourCharCodeName];
  [(PLVirtualResource *)v7 setCodecFourCharCodeName:v13];

  v14 = [v4 width];
  if ([v4 height] * v14 < 1)
  {
    v17 = 0.0;
  }

  else
  {
    v16 = [v4 width];
    v15 = v9 * v11;
    *&v17 = v15 / ([v4 height] * v16);
  }

  [(PLVirtualResource *)v7 setScale:v17];
  [(PLVirtualResource *)v7 setDataStore:self];
  v18 = objc_alloc_init(PLValidatedExternalResource);
  [(PLValidatedExternalResource *)v18 setVersion:3];
  [(PLValidatedExternalResource *)v18 setRecipeID:v5];
  [(PLValidatedExternalResource *)v18 setResourceType:0];
  v19 = [(PLPrimaryResourceDataStore *)self _expectedFileURLForMasterThumbnailForAsset:v4];
  [(PLValidatedExternalResource *)v18 setFileURL:v19];

  v20 = [[PLPrimaryResourceDataStoreKey alloc] initFromExistingLocationOfExternalResource:v18 asset:v4];
  [(PLVirtualResource *)v7 setDataStoreKey:v20];

  return v7;
}

- (id)_expectedFileURLForMasterThumbnailForAsset:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 thumbnailIdentifier];

  if (v5)
  {
    v6 = MEMORY[0x1E69BF308];
    v7 = [v4 thumbnailIdentifier];
    v8 = [v4 pathManager];
    v9 = [v6 thumbnailPathForThumbIdentifier:v7 withPathManager:v8 recipeID:-[PLPrimaryResourceDataStore masterThumbRecipeID](self forDelete:{"masterThumbRecipeID"), 0}];

    if (v9)
    {
      v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v4 uuid];
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unable to resolve master thumbnail path for asset %{public}@ due to nil thumbnail identifier", &v14, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_makeResourceLocallyAvailable:(id)a3 options:(id)a4 completion:(id)a5
{
  v273[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v202 = a4;
  v201 = a5;
  v9 = PLImageManagerGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v202 taskIdentifier];
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "[RM] %@ primaryDataStore - making resource available", buf, 0xCu);
  }

  v11 = [v8 fileSystemBookmark];
  if (v11)
  {
    v12 = [v8 fileURL];
    v13 = v12 == 0;

    if (v13)
    {
      v19 = PLImageManagerGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v202 taskIdentifier];
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "[RM] %@ reference media resource is missing fileURL, attempting to recreate from bookmark", buf, 0xCu);
      }

      v21 = [v8 fileSystemBookmark];
      v22 = [v8 fileSystemVolume];
      v257 = 0;
      v23 = PLPrimaryResourceDataStoreReferenceFileURL(v21, v22, &v257);
      v14 = v257;

      if (v23)
      {
        if (v23 != 3)
        {
LABEL_51:
          v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v52 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69BFF78]];
          v53 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF70] code:7 userInfo:v52];
          (*(v201 + 2))(v201, v53, 0, [v8 cplType], 0);

          goto LABEL_52;
        }

        v24 = PLImageManagerGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v202 taskIdentifier];
          v26 = [v8 asset];
          v27 = [v26 uuid];
          *buf = 138412802;
          *&buf[4] = v25;
          *&buf[12] = 2114;
          *&buf[14] = v27;
          *&buf[22] = 2112;
          v267 = v14;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "[RM] %@ No volume URL for referenced resource for asset %{public}@, using artificial volume for URL %@", buf, 0x20u);
        }
      }

      else
      {
        v24 = PLImageManagerGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v49 = [v202 taskIdentifier];
          v50 = [v8 asset];
          v51 = [v50 uuid];
          *buf = 138412546;
          *&buf[4] = v49;
          *&buf[12] = 2114;
          *&buf[14] = v51;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "[RM] %@ Failed to resolve bookmark URL for asset %{public}@", buf, 0x16u);
        }
      }

      goto LABEL_51;
    }
  }

  if ([v202 isTransient])
  {
    goto LABEL_24;
  }

  *buf = 0;
  v256 = 0;
  [(PLPrimaryResourceDataStore *)self _verifyResourceLocalAvailability:v8 localResourceFileURL:&v256 resourceReapirNeeded:buf];
  v14 = v256;
  switch(*buf)
  {
    case 3:
      v32 = [v8 photoLibrary];
      v31 = v253;
      v253[0] = MEMORY[0x1E69E9820];
      v253[1] = 3221225472;
      v253[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_103;
      v253[3] = &unk_1E7578848;
      v253[4] = v202;
      v253[5] = v8;
      [v32 performTransactionAndWait:v253];

LABEL_20:
      v18 = (v31 + 4);
      v17 = v31[5];
      goto LABEL_21;
    case 2:
      v28 = [v8 fileSystemBookmark];
      v29 = v28 == 0;

      if (!v29)
      {
        break;
      }

      v30 = [v8 photoLibrary];
      v31 = v251;
      v251[0] = MEMORY[0x1E69E9820];
      v251[1] = 3221225472;
      v251[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_104;
      v251[3] = &unk_1E75761B8;
      v251[4] = v202;
      v251[5] = v8;
      v252 = v14;
      [v30 performTransactionAndWait:v251];

      goto LABEL_20;
    case 1:
      v15 = [v8 fileSystemBookmark];
      v16 = v15 == 0;

      if (v16)
      {
        v17 = [v8 photoLibrary];
        v254[0] = MEMORY[0x1E69E9820];
        v254[1] = 3221225472;
        v254[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke;
        v254[3] = &unk_1E75781E8;
        v255 = v8;
        [v17 performTransactionAndWait:v254];
        v18 = &v255;
LABEL_21:
      }

      break;
  }

  if (v14)
  {
    (*(v201 + 2))(v201, 0, 0, [v8 cplType], v14);
LABEL_52:
    v54 = 0;
    goto LABEL_152;
  }

LABEL_24:
  if ([objc_opt_class() isMasterThumbRecipeID:{objc_msgSend(v8, "recipeID")}])
  {
    v33 = [v8 asset];
    if ([v33 hasAdjustments])
    {
      [v33 assetResourceForCPLType:5];
    }

    else
    {
      [v33 masterResourceForCPLType:5];
    }
    v34 = ;
  }

  else
  {
    v34 = v8;
  }

  v35 = [v34 recipeID];
  v36 = [v34 asset];
  v37 = [v36 kind];
  v38 = [v34 asset];
  v39 = [v38 deferredProcessingNeeded];
  v40 = [v34 asset];
  v41 = [v40 videoDeferredProcessingNeeded];
  v42 = [v34 localAvailabilityTarget];
  if ((v35 & 0xFFFFFFFD) == 0x10198)
  {
    v43 = 1;
    goto LABEL_67;
  }

  if (v35 >= 0x20000)
  {
    switch(v35)
    {
      case 131072:
        goto LABEL_46;
      case 131280:
        v43 = v41 != 0;
        goto LABEL_67;
      case 131272:
LABEL_46:
        if ((v39 - 1) >= 0xA || ((0x303u >> (v39 - 1)) & 1) == 0)
        {
          v44 = v41 == 0;
          v45 = 2;
          v46 = 4;
LABEL_54:
          if (v44)
          {
            v43 = v46;
          }

          else
          {
            v43 = v45;
          }

          goto LABEL_67;
        }

        v47 = (v39 - 1);
        v48 = &unk_19C610040;
LABEL_63:
        v43 = v48[v47];
        goto LABEL_67;
    }

LABEL_60:
    if (v42 != 1 || (v39 - 2) > 7u)
    {
      v43 = 0;
      goto LABEL_67;
    }

    v47 = (v39 - 2);
    v48 = &unk_19C60B120;
    goto LABEL_63;
  }

  if (v35 == 65741)
  {
    if (v37 == 1)
    {
      v43 = 7;
    }

    else
    {
      v43 = 0;
    }

    goto LABEL_67;
  }

  if (v35 == 65749)
  {
    v43 = 6;
    goto LABEL_67;
  }

  if (v35 != 65938)
  {
    goto LABEL_60;
  }

  v43 = 3;
  if (v39 != 2 && v39 != 9)
  {
    v44 = v39 == 1 || v39 == 10;
    v45 = 4;
    v46 = 2;
    goto LABEL_54;
  }

LABEL_67:

  v198 = [v34 cplType];
  v55 = [v34 asset];
  v200 = [(PLPrimaryResourceDataStore *)self _cplResourceIfDownloadIsAvailableForResource:v34 asset:v55 options:v202];

  if (v200 && ((1 << v43) & 0x6E) == 0)
  {
    v83 = [v202 isNetworkAccessAllowed];
    v84 = PLImageManagerGetLog();
    v85 = v84;
    if (v83)
    {
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v86 = [v202 taskIdentifier];
        v87 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:v198];
        *buf = 138543618;
        *&buf[4] = v86;
        *&buf[12] = 2112;
        *&buf[14] = v87;
        _os_log_impl(&dword_19BF1F000, v85, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ downloading CPL resource type: %@", buf, 0x16u);
      }

      v88 = [v202 taskIdentifier];
      if (!v88)
      {
        v88 = [MEMORY[0x1E69BF320] UUIDString];
        [v202 setTaskIdentifier:v88];
      }

      v62 = [(PLPrimaryResourceDataStore *)self _newProgressForTaskWithIdentifier:v88 type:1];
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_lock_makeAvailableProgressByTaskIdentifier setObject:v62 forKeyedSubscript:v88];
      os_unfair_lock_unlock(&self->_lock);
      v247[0] = MEMORY[0x1E69E9820];
      v247[1] = 3221225472;
      v247[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_106;
      v247[3] = &unk_1E7564F10;
      v248 = v88;
      v249 = self;
      v250 = v201;
      v242[0] = MEMORY[0x1E69E9820];
      v242[1] = 3221225472;
      v242[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_109;
      v242[3] = &unk_1E7564F38;
      v243 = v248;
      v244 = self;
      v245 = v250;
      v246 = v198;
      v71 = v248;
      [(PLPrimaryResourceDataStore *)self _downloadCPLResource:v200 options:v202 taskDidBeginHandler:v247 completionHandler:v242];

      goto LABEL_151;
    }

    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      v95 = [v202 taskIdentifier];
      *buf = 138543362;
      *&buf[4] = v95;
      _os_log_impl(&dword_19BF1F000, v85, OS_LOG_TYPE_DEBUG, "[RM] %{public}@ network access permission needed to download resource", buf, 0xCu);
    }

    v71 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF70] code:6 userInfo:0];
    (*(v201 + 2))(v201, v71, 0, v198, 0);
    goto LABEL_150;
  }

  if ([v34 recipeID] != 327689)
  {
    if (v43 > 3)
    {
      if (v43 > 5)
      {
        if (v43 == 6)
        {
          v71 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", [v34 recipeID]);
          v97 = PLImageManagerGetLog();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v98 = [v202 taskIdentifier];
            v99 = [v34 asset];
            v100 = [v99 uuid];
            *buf = 138543618;
            *&buf[4] = v98;
            *&buf[12] = 2114;
            *&buf[14] = v100;
            _os_log_impl(&dword_19BF1F000, v97, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ Generating image from video for asset %{public}@", buf, 0x16u);
          }

          v101 = MEMORY[0x1E695DFF8];
          v102 = [v34 asset];
          v103 = [v102 pathForLocalVideoKeyFrame];
          v104 = [v101 fileURLWithPath:v103];

          v105 = [PLResourceRecipeGenerationOptions alloc];
          v106 = [v202 taskIdentifier];
          v107 = [v202 isNetworkAccessAllowed];
          v108 = [v202 clientBundleID];
          v109 = [(PLResourceRecipeGenerationOptions *)v105 initWithVersion:3 taskIdentifier:v106 reason:@"Local video keyframe on demand" networkAccessAllowed:v107 clientBundleID:v108];

          v110 = [v34 asset];
          v203[0] = MEMORY[0x1E69E9820];
          v203[1] = 3221225472;
          v203[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_176;
          v203[3] = &unk_1E7565050;
          v204 = v104;
          v205 = v201;
          v111 = v104;
          [v71 generateAndStoreForAsset:v110 options:v109 progress:0 completion:v203];
        }

        else
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v267 = __Block_byref_object_copy__2226;
          *&v268 = __Block_byref_object_dispose__2227;
          *(&v268 + 1) = 0;
          if ([v34 recipeID])
          {
            v148 = PLImageManagerGetLog();
            if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
            {
              v149 = [v202 taskIdentifier];
              v150 = [v34 singleLineDescription];
              *v262 = 138412546;
              v263 = v149;
              v264 = 2112;
              v265 = v150;
              _os_log_impl(&dword_19BF1F000, v148, OS_LOG_TYPE_DEFAULT, "[RM]: %@ Generating thumbnails to make-available resource %@", v262, 0x16u);
            }

            v151 = [v34 asset];
            [v151 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];

            v152 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", [v34 recipeID]);
            v153 = [v34 photoLibrary];
            v233[0] = MEMORY[0x1E69E9820];
            v233[1] = 3221225472;
            v233[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_134;
            v233[3] = &unk_1E7578820;
            v154 = v152;
            v234 = v154;
            v235 = v34;
            v236 = buf;
            [v153 performTransactionAndWait:v233];

            if (*(*&buf[8] + 40))
            {
              v71 = 0;
            }

            else
            {
              v185 = PLBackendGetLog();
              if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
              {
                *v262 = 138412290;
                v263 = @"Thumbnail generation failed";
                _os_log_impl(&dword_19BF1F000, v185, OS_LOG_TYPE_ERROR, "%@", v262, 0xCu);
              }

              v186 = MEMORY[0x1E696ABC0];
              v260 = *MEMORY[0x1E696A578];
              v261 = @"Thumbnail generation failed";
              v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v261 forKeys:&v260 count:1];
              v71 = [v186 errorWithDomain:*MEMORY[0x1E69BFF70] code:4 userInfo:v187];
            }
          }

          else
          {
            v166 = PLBackendGetLog();
            if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
            {
              *v262 = 138412290;
              v263 = @"Unable to generate thumbnails for resource with no recipeID";
              _os_log_impl(&dword_19BF1F000, v166, OS_LOG_TYPE_ERROR, "%@", v262, 0xCu);
            }

            v167 = MEMORY[0x1E696ABC0];
            v258 = *MEMORY[0x1E696A578];
            v259 = @"Unable to generate thumbnails for resource with no recipeID";
            v154 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v259 forKeys:&v258 count:1];
            v71 = [v167 errorWithDomain:*MEMORY[0x1E69BFF70] code:47005 userInfo:v154];
          }

          (*(v201 + 2))(v201, v71, 0, v198, *(*&buf[8] + 40));
          _Block_object_dispose(buf, 8);
        }

        goto LABEL_150;
      }

      if (v43 != 4)
      {
        v137 = [v34 recipeID];
        v138 = [v34 asset];
        v139 = PLImageManagerGetLog();
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
        {
          v140 = [v202 taskIdentifier];
          v141 = [v138 uuid];
          *buf = 138543618;
          *&buf[4] = v140;
          *&buf[12] = 2114;
          *&buf[14] = v141;
          _os_log_impl(&dword_19BF1F000, v139, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ Generating missing derivatives for asset %{public}@", buf, 0x16u);
        }

        v71 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v142 = MEMORY[0x1E696AEC0];
        v143 = [v202 taskIdentifier];
        v144 = [v142 stringWithFormat:@"Resource local availability request task %@", v143];

        v145 = [(PLPrimaryResourceDataStore *)self _imageConversionServiceClient];
        v146 = [(PLPrimaryResourceDataStore *)self _videoConversionServiceClient];
        v206[0] = MEMORY[0x1E69E9820];
        v206[1] = 3221225472;
        v206[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_165;
        v206[3] = &unk_1E7565028;
        v211 = v137;
        v207 = v138;
        v209 = v201;
        v210 = v198;
        v208 = v34;
        v147 = v138;
        v62 = [PLResourceGenerator generateAndStoreMissingExpectedLocalResourcesForAsset:v147 versions:&unk_1F0FBF268 imageConversionClient:v145 videoConversionClient:v146 conversionServiceOptions:v71 reason:v144 completion:v206];

        goto LABEL_151;
      }

      v89 = PLImageManagerGetLog();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v90 = [v202 taskIdentifier];
        v91 = [v34 asset];
        v92 = [v91 uuid];
        *buf = 138543618;
        *&buf[4] = v90;
        *&buf[12] = 2114;
        *&buf[14] = v92;
        _os_log_impl(&dword_19BF1F000, v89, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ Unable to download, attempting optimistic adjustment rendering for asset %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if ((v43 - 1) < 2)
      {
        v71 = [v34 asset];
        v193 = [v34 version];
        v196 = [v71 uuidDescription];
        v72 = PLImageManagerGetLog();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          v73 = [v202 taskIdentifier];
          if (v43 == 2)
          {
            v74 = @"Y";
          }

          else
          {
            v74 = @"N";
          }

          v75 = [v34 singleLineDescription];
          *buf = 138544130;
          *&buf[4] = v73;
          *&buf[12] = 2114;
          *&buf[14] = v196;
          *&buf[22] = 2114;
          v267 = v74;
          LOWORD(v268) = 2114;
          *(&v268 + 2) = v75;
          _os_log_impl(&dword_19BF1F000, v72, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ finalizing deferred asset %{public}@, with deferred adjustment: %{public}@, resource: %{public}@", buf, 0x2Au);
        }

        v76 = [v71 objectID];
        v77 = [v71 photoLibrary];
        v78 = [v77 libraryServicesManager];

        v79 = [v202 clientBundleID];
        v223[0] = MEMORY[0x1E69E9820];
        v223[1] = 3221225472;
        v223[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_142;
        v223[3] = &unk_1E7564FB0;
        v224 = v78;
        v225 = v76;
        v229 = v201;
        v230 = v198;
        v231 = v43;
        v226 = v202;
        v227 = self;
        v232 = v193;
        v228 = v196;
        v80 = v196;
        v81 = v76;
        v82 = v78;
        v62 = [(PLPrimaryResourceDataStore *)self _finalizeDeferredResource:v34 asset:v71 options:v226 clientBundleIdentifier:v79 completionHandler:v223];

        goto LABEL_151;
      }

      if (!v43)
      {
        if ([v34 recipeID])
        {
          v96 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", [v34 recipeID]);
        }

        else
        {
          v96 = 0;
        }

        v158 = PLBackendGetLog();
        if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
        {
          v159 = MEMORY[0x1E696AEC0];
          v160 = [v34 asset];
          v161 = [v160 uuid];
          v162 = [v96 description];
          v163 = [v34 asset];
          v164 = [v163 deferredProcessingNeeded];
          if (v164 > 0xA)
          {
            v165 = 0;
          }

          else
          {
            v165 = off_1E7567B18[v164];
          }

          v168 = v165;
          v169 = [v34 localAvailabilityTarget];
          v170 = @"N";
          if (v169 > 0)
          {
            v170 = @"Y";
          }

          v171 = [v159 stringWithFormat:@"Unable to download or generate resource for asset: %@, recipe: %@, deferred processing: %@ local availability targeted: %@", v161, v162, v168, v170];
          *buf = 138412290;
          *&buf[4] = v171;
          _os_log_impl(&dword_19BF1F000, v158, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        v172 = MEMORY[0x1E696ABC0];
        v269 = *MEMORY[0x1E696A578];
        v173 = MEMORY[0x1E696AEC0];
        v174 = [v34 asset];
        v175 = [v174 uuid];
        v176 = [v96 description];
        v177 = [v34 asset];
        v178 = [v177 deferredProcessingNeeded];
        if (v178 > 0xA)
        {
          v179 = 0;
        }

        else
        {
          v179 = off_1E7567B18[v178];
        }

        v180 = v179;
        v181 = [v34 localAvailabilityTarget];
        v182 = @"N";
        if (v181 > 0)
        {
          v182 = @"Y";
        }

        v183 = [v173 stringWithFormat:@"Unable to download or generate resource for asset: %@, recipe: %@, deferred processing: %@ local availability targeted: %@", v175, v176, v180, v182];
        v270 = v183;
        v184 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
        v71 = [v172 errorWithDomain:*MEMORY[0x1E69BFF70] code:4 userInfo:v184];

        (*(v201 + 2))(v201, v71, 0, v198, 0);
        goto LABEL_150;
      }
    }

    v71 = [v34 asset];
    v112 = PLImageManagerGetLog();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      v113 = [v202 taskIdentifier];
      v114 = [v71 uuid];
      *buf = 138543618;
      *&buf[4] = v113;
      *&buf[12] = 2112;
      *&buf[14] = v114;
      _os_log_impl(&dword_19BF1F000, v112, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ Generating deferred adjustment for asset %@", buf, 0x16u);
    }

    v115 = [v202 taskIdentifier];
    v222 = 0;
    v116 = [PLPrimaryResourceDataStore bailOutOfVideoFinalizationIfNeededForAsset:v71 taskIdentifier:v115 error:&v222];
    v197 = v222;

    if (v116)
    {
      v191 = [v34 version];
      v117 = [v202 downloadOptions];
      v118 = [v117 priority];

      v194 = (v118 - 1) < 2;
      v119 = MEMORY[0x1E696AEC0];
      v120 = off_1E7565118[v43];
      v121 = [v202 taskIdentifier];
      v192 = [v119 stringWithFormat:@"Deferred adjustment resource generation (%@) for image manager request %@, allow cancellation = %d (transfer priority = %tu)", v120, v121, v194, v118];

      v190 = [v71 objectID];
      v122 = [v71 photoLibrary];
      v123 = [v122 libraryServicesManager];

      v124 = [v202 taskIdentifier];
      v125 = [(PLPrimaryResourceDataStore *)self _imageConversionServiceClient];
      v126 = [(PLPrimaryResourceDataStore *)self _videoConversionServiceClient];
      v127 = [v202 clientBundleID];
      LOBYTE(v189) = v194;
      v195 = [PLIntensiveResourceTask taskForGeneratingDeferredAdjustmentForAsset:v71 trackingIdentifier:v124 imageConversionClient:v125 videoConversionClient:v126 reason:v192 clientBundleID:v127 allowCancellationByService:v189];

      v128 = [v71 photoLibrary];
      v129 = [v128 libraryServicesManager];
      v130 = [v129 intensiveResourceTaskManager];
      v212[0] = MEMORY[0x1E69E9820];
      v212[1] = 3221225472;
      v212[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_152;
      v212[3] = &unk_1E7565000;
      v213 = v123;
      v214 = v190;
      v215 = self;
      v219 = v198;
      v221 = v191;
      v218 = v201;
      v220 = v43;
      v216 = v71;
      v217 = v202;
      v131 = v190;
      v132 = v123;
      v62 = [v130 submitTask:v195 completionHandler:v212];
    }

    else
    {
      v155 = PLImageManagerGetLog();
      if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
      {
        v156 = [v202 taskIdentifier];
        v157 = [v71 uuid];
        *buf = 138543874;
        *&buf[4] = v156;
        *&buf[12] = 2112;
        *&buf[14] = v157;
        *&buf[22] = 2112;
        v267 = v197;
        _os_log_impl(&dword_19BF1F000, v155, OS_LOG_TYPE_ERROR, "[RM]: %{public}@ Error bailing out of video finalization for asset %@: %@", buf, 0x20u);
      }

      (*(v201 + 2))(v201, v197, 0, v198, 0);
      v62 = 0;
    }

    goto LABEL_151;
  }

  if ([v202 isNetworkAccessAllowed])
  {
    v56 = [v34 asset];
    v57 = [v56 shouldDownloadComputeSyncPayload];

    v58 = PLImageManagerGetLog();
    v59 = v58;
    if (v57)
    {
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [v202 taskIdentifier];
        *buf = 138543362;
        *&buf[4] = v60;
        _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_DEFAULT, "[RM][CCSS]: %{public}@ downloading computesync resource", buf, 0xCu);
      }

      v61 = [v202 taskIdentifier];
      if (!v61)
      {
        v61 = [MEMORY[0x1E69BF320] UUIDString];
        [v202 setTaskIdentifier:v61];
      }

      v62 = [(PLPrimaryResourceDataStore *)self _newProgressForTaskWithIdentifier:v61 type:1];
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_lock_makeAvailableProgressByTaskIdentifier setObject:v62 forKeyedSubscript:v61];
      os_unfair_lock_unlock(&self->_lock);
      v63 = [v34 photoLibrary];
      v64 = [v63 libraryServicesManager];

      v65 = [v34 objectID];
      v199 = [(PLPrimaryResourceDataStore *)self _cplManager];
      v66 = [v34 asset];
      v67 = [v66 scopedIdentifier];
      v271 = v67;
      v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v271 count:1];
      v237[0] = MEMORY[0x1E69E9820];
      v237[1] = 3221225472;
      v237[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_115;
      v237[3] = &unk_1E7564F60;
      v237[4] = self;
      v238 = v61;
      v241 = v201;
      v239 = v64;
      v240 = v65;
      v69 = v65;
      v70 = v64;
      v71 = v61;
      [v199 fetchComputeStatesForRecordsWithScopedIdentifiers:v68 onDemand:1 completionHandler:v237];

      goto LABEL_151;
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v133 = [v34 asset];
      v134 = [v133 scopedIdentifier];
      *buf = 138543362;
      *&buf[4] = v134;
      _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_ERROR, "[CCSS] Skip on-demand download of ComputeSync resource %{public}@ as download check failed", buf, 0xCu);
    }

    v135 = MEMORY[0x1E696ABC0];
    v272 = *MEMORY[0x1E696A278];
    v273[0] = @"Download check failed for ComputeSync resource";
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v273 forKeys:&v272 count:1];
    v136 = [v135 errorWithDomain:*MEMORY[0x1E69BFF48] code:47013 userInfo:v71];
    (*(v201 + 2))(v201, v136, 0, 0, 0);
  }

  else
  {
    v93 = PLImageManagerGetLog();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
    {
      v94 = [v202 taskIdentifier];
      *buf = 138543362;
      *&buf[4] = v94;
      _os_log_impl(&dword_19BF1F000, v93, OS_LOG_TYPE_DEBUG, "[RM][CCSS] %{public}@ network access permission needed to download computesync resource", buf, 0xCu);
    }

    v71 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF70] code:6 userInfo:0];
    (*(v201 + 2))(v201, v71, 0, 0, 0);
  }

LABEL_150:
  v62 = 0;
LABEL_151:

  v14 = v62;
  v8 = v34;
  v54 = v14;
LABEL_152:

  return v54;
}

uint64_t __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLImageManagerGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = PLResourceIdentityShortDescription(*(a1 + 32));
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "[RM]: Data store was wrong, resource %{public}@ was not available, fixing...", &v5, 0xCu);
  }

  return [*(a1 + 32) markAsNotLocallyAvailable];
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_103(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = PLImageManagerGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) taskIdentifier];
    v4 = PLResourceIdentityShortDescription(*(a1 + 40));
    v5 = [*(a1 + 40) asset];
    v6 = [v5 uuid];
    v8 = 138412802;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "[RM] %@ Resource is locally available but not in hints, resource: %{public}@, asset: %{public}@", &v8, 0x20u);
  }

  v7 = [*(a1 + 40) asset];
  [v7 recalculateImageRequestHints];
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_104(id *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = PLImageManagerGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1[4] taskIdentifier];
    v4 = PLResourceIdentityShortDescription(a1[5]);
    v5 = [a1[5] asset];
    v6 = [v5 uuid];
    v7 = [a1[6] path];
    v10 = 138413058;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "[RM] %@ Resource local availability was not local but file exists at expected path, resource: %{public}@, asset %{public}@, path: %@", &v10, 0x2Au);
  }

  v8 = a1[5];
  v9 = [a1[6] path];
  [v8 markAsLocallyAvailableWithFilePath:v9];
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_106(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (!v6)
  {
    v6 = *(a1 + 32);
  }

  os_unfair_lock_lock((*(a1 + 40) + 24));
  v8 = *(a1 + 40);
  if (v7)
  {
    [v8[2] setObject:0 forKeyedSubscript:v6];
    os_unfair_lock_unlock((*(a1 + 40) + 24));
    v9 = PLImageManagerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 code];
      v11 = [v7 domain];
      *buf = 138544130;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      v23 = 2048;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ Download failed on begin with error: %@, code: %ld, domain: %{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = [v8 _lock_taskIsPendingDownloadWithIdentifier:v6];
    v13 = *(a1 + 40);
    if (v12)
    {
      [(os_unfair_lock_s *)v13 _lock_transitionTaskToInflightWithIdentifier:v6];
      os_unfair_lock_unlock((*(a1 + 40) + 24));
      v14 = PLImageManagerGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v20 = v6;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Download began", buf, 0xCu);
      }
    }

    else
    {
      os_unfair_lock_unlock(v13 + 6);
      v15 = PLImageManagerGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v20 = v6;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Download began but has been cancelled, cancelling now", buf, 0xCu);
      }

      v16 = [*(a1 + 40) _cplManager];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_107;
      v17[3] = &unk_1E7564EE8;
      v18 = v6;
      [v16 cancelResourceTransferTaskWithIdentifier:v18 completion:v17];
    }
  }
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_109(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v8 = *(a1 + 32);
  }

  os_unfair_lock_lock((*(a1 + 40) + 24));
  [*(*(a1 + 40) + 16) setObject:0 forKeyedSubscript:v8];
  os_unfair_lock_unlock((*(a1 + 40) + 24));
  if (v10)
  {
    v11 = [v10 domain];
    if ([v11 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v12 = [v10 code];

      if (v12 == 3072)
      {
        v13 = PLImageManagerGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v16 = 138543362;
          v17 = v8;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Download was cancelled", &v16, 0xCu);
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    v13 = PLImageManagerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 code];
      v15 = [v10 domain];
      v16 = 138544130;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      v20 = 2048;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ Download failed with error: %@, code: %ld, domain: %{public}@", &v16, 0x2Au);
    }
  }

  else
  {
    v13 = PLImageManagerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Download complete", &v16, 0xCu);
    }
  }

LABEL_14:

  (*(*(a1 + 48) + 16))();
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 24));
  [*(*(a1 + 32) + 16) setObject:0 forKeyedSubscript:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if (v6)
  {
    v7 = [v6 domain];
    if ([v7 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v8 = [v6 code];

      if (v8 == 3072)
      {
        v9 = PLImageManagerGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(a1 + 40);
          *buf = 138543362;
          *&buf[4] = v10;
          _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "[RM][CCSS]: %{public}@ Computesync download was cancelled", buf, 0xCu);
        }

LABEL_16:

        (*(*(a1 + 64) + 16))();
        goto LABEL_17;
      }
    }

    else
    {
    }

    v9 = PLImageManagerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      v21 = [v6 code];
      v22 = [v6 domain];
      *buf = 138544130;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2048;
      v37 = v21;
      LOWORD(v38) = 2114;
      *(&v38 + 2) = v22;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[RM][CCSS]: %{public}@ Computesync download failed with error: %@, code: %ld, domain: %{public}@", buf, 0x2Au);
    }

    goto LABEL_16;
  }

  v11 = [v5 count] == 1;
  v12 = PLImageManagerGetLog();
  v9 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 40);
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[RM][CCSS]: %{public}@ Computesync download failed with no error", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 40);
    *buf = 138543362;
    *&buf[4] = v13;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "[RM][CCSS]: %{public}@ Computesync download complete", buf, 0xCu);
  }

  v14 = [v5 allValues];
  v15 = [v14 firstObject];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v37 = __Block_byref_object_copy__2226;
  *&v38 = __Block_byref_object_dispose__2227;
  *(&v38 + 1) = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__2226;
  v34[4] = __Block_byref_object_dispose__2227;
  v35 = 0;
  v16 = [*(a1 + 48) databaseContext];
  v17 = [v16 newShortLivedComputeSyncApplyLibraryWithNameSuffix:"-[PLPrimaryResourceDataStore _makeResourceLocallyAvailable:options:completion:]_block_invoke"];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_2;
  v28[3] = &unk_1E75787D0;
  v18 = v17;
  v29 = v18;
  v30 = *(a1 + 56);
  v19 = v15;
  v31 = v19;
  v32 = buf;
  v33 = v34;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_122;
  v24[3] = &unk_1E7575F50;
  v26 = v34;
  v25 = *(a1 + 64);
  v27 = buf;
  [v18 performTransactionAndWait:v28 completionHandler:v24];

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(buf, 8);

LABEL_17:
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_134(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) version];
  v4 = [*(a1 + 40) asset];
  v8 = [PLResourceInstaller onDemand_installPrimaryImageResourceWithRecipe:v2 version:v3 forAsset:v4 requireFileToBePresent:1];

  v5 = [v8 fileURL];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_142(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLImageManagerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 48) taskIdentifier];
      v9 = *(a1 + 64);
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v26 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "[RM] %{public}@ deferred finalization failed for asset %{public}@ with error: %@", buf, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v10 = [*(a1 + 32) databaseContext];
    v11 = [v10 newShortLivedLibraryWithName:"-[PLPrimaryResourceDataStore _makeResourceLocallyAvailable:options:completion:]_block_invoke"];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = __Block_byref_object_copy__2226;
    v27 = __Block_byref_object_dispose__2227;
    v28 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_2_143;
    v15[3] = &unk_1E7564F88;
    v12 = v11;
    v16 = v12;
    v17 = *(a1 + 40);
    v18 = v5;
    v21 = *(a1 + 72);
    v23 = *(a1 + 80);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v19 = v13;
    v20 = v14;
    v24 = *(a1 + 96);
    v22 = buf;
    [v12 performBlockAndWait:v15];

    _Block_object_dispose(buf, 8);
  }
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_152(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 isSuccess])
  {
    v10 = [v3 error];
    if (PLIsErrorEqualToCode())
    {
      v11 = *(a1 + 88);

      if (v11 == 3)
      {
        v12 = [*(a1 + 56) photoLibrary];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_154;
        v21[3] = &unk_1E7564FD8;
        v13 = *(a1 + 56);
        v24 = *(a1 + 80);
        v25 = *(a1 + 96);
        *&v14 = v13;
        *(&v14 + 1) = *(a1 + 48);
        v20 = v14;
        v15 = *(a1 + 64);
        v16 = *(a1 + 72);
        *&v17 = v15;
        *(&v17 + 1) = v16;
        v22 = v20;
        v23 = v17;
        [v12 performBlock:v21];

        goto LABEL_8;
      }
    }

    else
    {
    }

    v18 = *(a1 + 72);
    v19 = [v3 error];
    (*(v18 + 16))(v18, v19, 0, *(a1 + 80), 0);

    goto LABEL_8;
  }

  v4 = [*(a1 + 32) databaseContext];
  v5 = [v4 newShortLivedLibraryWithName:"-[PLPrimaryResourceDataStore _makeResourceLocallyAvailable:options:completion:]_block_invoke"];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_2_153;
  v26[3] = &unk_1E7564FD8;
  v27 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v28 = v6;
  v29 = v7;
  v8 = *(a1 + 72);
  v31 = *(a1 + 80);
  v32 = *(a1 + 96);
  v30 = v8;
  v9 = v5;
  [v9 performBlockAndWait:v26];

LABEL_8:
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_165(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v36;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v36 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v9 |= [*(*(&v35 + 1) + 8 * i) recipeID] == *(a1 + 64);
    }

    v8 = [v6 countByEnumeratingWithState:&v35 objects:v43 count:16];
  }

  while (v8);
  if (v9)
  {
    v12 = [*(a1 + 32) photoLibrary];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_2_166;
    v31[3] = &unk_1E7575338;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v33 = v13;
    v34 = v14;
    v32 = *(a1 + 40);
    [v12 performBlock:v31];

    v15 = v33;
  }

  else
  {
LABEL_10:
    v15 = [v5 firstObject];
    if (!v15)
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = [*(a1 + 40) debugDescription];
        v19 = [v17 stringWithFormat:@"Unable to generate missing resource: %@", v18];
        *buf = 138412290;
        v42 = v19;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E69BFF70];
      v39 = *MEMORY[0x1E696A578];
      v22 = MEMORY[0x1E696AEC0];
      v23 = [*(a1 + 40) debugDescription];
      v24 = [v22 stringWithFormat:@"Unable to generate missing resource: %@", v23];
      v40 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v15 = [v20 errorWithDomain:v21 code:4 userInfo:v25];
    }

    v26 = *(a1 + 48);
    v27 = [v5 firstObject];
    (*(v26 + 16))(v26, v27, 0, *(a1 + 56), 0);
  }

  v28 = [*(a1 + 32) photoLibrary];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_170;
  v29[3] = &unk_1E75781E8;
  v30 = *(a1 + 32);
  [v28 performTransaction:v29];
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_176(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v10;
  if ([v7 hasChanges])
  {
    v16 = 0;
    v12 = [v7 save:&v16];
    v13 = v16;
    v11 = v10;
    if ((v12 & 1) == 0)
    {
      v14 = PLImageManagerGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to save moc with error: %@", buf, 0xCu);
      }

      v11 = v10;
      if (!v10)
      {
        v11 = v13;
      }
    }
  }

  if ([v9 count])
  {
    v15 = *(a1 + 32);
  }

  else
  {
    v15 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v11, 0, 0, v15);
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_2_166(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = [*(a1 + 32) fileURL];
  (*(v2 + 16))(v2, 0, 0, v1, v3);
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_2_153(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v13];
  v5 = v13;

  if (v4)
  {
    v6 = [*(a1 + 48) getClosestResourceMatchingCPLResourceType:*(a1 + 64) version:*(a1 + 72) asset:v4];
  }

  else
  {
    if (v5)
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        *buf = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Existing object with id %@ no longer found with error %@", buf, 0x16u);
      }
    }

    v6 = 0;
  }

  v9 = *(a1 + 56);
  v10 = [v6 dataLength];
  v11 = *(a1 + 64);
  v12 = [v6 fileURL];
  (*(v9 + 16))(v9, 0, v10, v11, v12);
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_154(uint64_t a1)
{
  v3 = [*(a1 + 32) resourceForCPLType:*(a1 + 64) version:*(a1 + 72)];
  v2 = [*(a1 + 40) _makeResourceLocallyAvailable:v3 options:*(a1 + 48) completion:*(a1 + 56)];
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_2_143(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v40 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v40];
  v5 = v40;

  if (v4)
  {
    if ([v4 deferredProcessingNeeded] == 2)
    {
      v6 = *(a1 + 48);
      v39 = 0;
      v7 = [PLPrimaryResourceDataStore bailOutOfVideoFinalizationIfNeededForAsset:v4 taskIdentifier:v6 error:&v39];
      v8 = v39;
      v9 = PLImageManagerGetLog();
      v10 = v9;
      if (v7)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(a1 + 48);
          v12 = [v4 uuid];
          *buf = 138543618;
          v42 = v11;
          v43 = 2112;
          v44 = v12;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ requesting adjustment render for asset: %@", buf, 0x16u);
        }

        v13 = MEMORY[0x1E696AEC0];
        v14 = *(a1 + 96);
        v38 = v8;
        if (v14 > 7)
        {
          v15 = @"undefined";
        }

        else
        {
          v15 = off_1E7565118[v14];
        }

        v27 = v15;
        v28 = [*(a1 + 56) taskIdentifier];
        v37 = [v13 stringWithFormat:@"Deferred adjustment resource generation (%@) for image manager request %@", v27, v28];

        v29 = *(a1 + 64);
        v30 = [v29 _imageConversionServiceClient];
        v31 = [*(a1 + 64) _videoConversionServiceClient];
        v32 = *(a1 + 88);
        v33 = *(a1 + 104);
        v34 = *(a1 + 48);
        v35 = [*(a1 + 56) clientBundleID];
        LODWORD(v36) = v33;
        [v29 generateDeferredAdjustmentForAsset:v4 imageConversionServiceClient:v30 videoConversionServiceClient:v31 reason:v37 taskIdentifier:v34 cplResourceType:v32 version:v36 clientBundleID:v35 completion:*(a1 + 72)];

        v8 = v38;
      }

      else
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v25 = *(a1 + 48);
          v26 = [v4 uuid];
          *buf = 138543874;
          v42 = v25;
          v43 = 2114;
          v44 = v26;
          v45 = 2112;
          v46 = v8;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "[RM] %{public}@ Error bailing out of video finalization for asset with uuid %{public}@: %@", buf, 0x20u);
        }

        (*(*(a1 + 72) + 16))();
      }
    }

    else
    {
      v18 = [v4 resourceForCPLType:*(a1 + 88) version:*(a1 + 104)];
      v19 = *(*(a1 + 80) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v21 = *(a1 + 72);
      v22 = [*(*(*(a1 + 80) + 8) + 40) dataLength];
      v23 = *(a1 + 88);
      v24 = [*(*(*(a1 + 80) + 8) + 40) fileURL];
      (*(v21 + 16))(v21, 0, v22, v23, v24);
    }
  }

  else if (v5)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138412546;
      v42 = v17;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Existing object with id %@ no longer found with error %@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_2(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 existingObjectWithID:*(a1 + 40) error:0];

  v4 = [v3 asset];
  v5 = [*(a1 + 48) fileURL];

  v6 = [*(a1 + 48) fileURL];
  v7 = v6;
  if (v5 && v3)
  {
    v8 = [v6 path];
    v43 = 0;
    v9 = [v4 copyComputeSyncResourceFromCPLFilePath:v8 error:&v43];
    v10 = v43;

    if (v9)
    {
      [v4 updateComputeSyncResourceAfterDownloadWithResource:v3 onDemandDownload:1];
      v11 = *(a1 + 48);
      v42 = 0;
      v12 = [v4 applyComputeSyncPayloadWithComputeStateRecord:v11 originatedFromPrefetch:0 error:&v42];
      v13 = v42;
      v14 = PLImageManagerGetLog();
      v15 = v14;
      if (v12)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 48);
          v17 = [v4 scopedIdentifier];
          *buf = 138412546;
          v49 = v16;
          v50 = 2114;
          v51 = v17;
          v18 = "[CCSS] Applied compute sync record %@ to asset %{public}@ using payload helper";
          v19 = v15;
          v20 = OS_LOG_TYPE_INFO;
          v21 = 22;
LABEL_19:
          _os_log_impl(&dword_19BF1F000, v19, v20, v18, buf, v21);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v38 = *(a1 + 48);
        v17 = [v4 scopedIdentifier];
        *buf = 138412802;
        v49 = v38;
        v50 = 2114;
        v51 = v17;
        v52 = 2112;
        v53 = v13;
        v18 = "[CCSS] Failed to apply compute sync record %@ to asset %{public}@ using payload helper error: %@";
        v19 = v15;
        v20 = OS_LOG_TYPE_ERROR;
        v21 = 32;
        goto LABEL_19;
      }

      v39 = [v3 fileURL];
      v40 = *(*(a1 + 56) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;

      goto LABEL_21;
    }

    v13 = PLImageManagerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 48);
      v33 = [v4 scopedIdentifier];
      *buf = 138412802;
      v49 = v32;
      v50 = 2114;
      v51 = v33;
      v52 = 2112;
      v53 = v10;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "[CCSS] Failed to copy compute sync record %@ to asset %{public}@ using payload helper error: %@", buf, 0x20u);
    }
  }

  else
  {

    v22 = PLImageManagerGetLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v23)
      {
        v24 = *(a1 + 48);
        v25 = [v4 scopedIdentifier];
        v26 = *(a1 + 40);
        *buf = 138412802;
        v49 = v24;
        v50 = 2114;
        v51 = v25;
        v52 = 2114;
        v53 = v26;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "[CCSS] No compute sync wrapper resource found %@ for asset: %{public}@, resource: %{public}@", buf, 0x20u);
      }

      v27 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E69BFF48];
      v44 = *MEMORY[0x1E696A278];
      v45 = @"Unable to find resource";
      v29 = MEMORY[0x1E695DF20];
      v30 = &v45;
      v31 = &v44;
    }

    else
    {
      if (v23)
      {
        v34 = *(a1 + 48);
        v35 = [v4 scopedIdentifier];
        *buf = 138412546;
        v49 = v34;
        v50 = 2114;
        v51 = v35;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "[CCSS] ComputeStateRecord contains nil fileURL unexpectedly %@ for asset %{public}@", buf, 0x16u);
      }

      v27 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E69BFF48];
      v46 = *MEMORY[0x1E696A278];
      v47 = @"Fetched ComputeStateRecord with nil fileURL";
      v29 = MEMORY[0x1E695DF20];
      v30 = &v47;
      v31 = &v46;
    }

    v10 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:1];
    v36 = [v27 errorWithDomain:v28 code:47013 userInfo:v10];
    v37 = *(*(a1 + 64) + 8);
    v13 = *(v37 + 40);
    *(v37 + 40) = v36;
  }

LABEL_21:
}

uint64_t __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_122(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(*(*(v3 + 8) + 8) + 40);
  if (v4)
  {
    return (*(v2 + 16))(v2, v4, 0, 0, 0);
  }

  else
  {
    return (*(v2 + 16))(v2, 0, 0, 0, *(*(*(a1 + 48) + 8) + 40));
  }
}

void __79__PLPrimaryResourceDataStore__makeResourceLocallyAvailable_options_completion___block_invoke_107(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PLImageManagerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138543618;
    v8 = v6;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Cancel callback, cancel succeeded: %@", &v7, 0x16u);
  }
}

- (void)_verifyResourceLocalAvailability:(id)a3 localResourceFileURL:(id *)a4 resourceReapirNeeded:(int64_t *)a5
{
  v7 = a3;
  if ([v7 isLocallyAvailable])
  {
    v26 = 0;
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v7 fileURL];
    v10 = [v9 path];
    v11 = [v8 fileExistsAtPath:v10 isDirectory:&v26];

    v12 = 1;
    if (v11 && (v26 & 1) == 0)
    {
      v13 = [v7 asset];
      if (PLCanIncludeResourceInHints(v7, v13))
      {
        v14 = [v7 asset];
        v15 = [v14 imageRequestHintsContainsResource:v7];

        if (v15)
        {
          v12 = 0;
        }

        else
        {
          v12 = 3;
        }
      }

      else
      {

        v12 = 0;
      }

      v23 = [v7 fileURL];
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = [v7 fileURL];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [v7 expectedFileURL];
  }

  v19 = v18;

  v25 = 0;
  v20 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = [v19 path];
  v22 = [v20 fileExistsAtPath:v21 isDirectory:&v25];

  v23 = 0;
  if (v22 && (v25 & 1) == 0)
  {
    v23 = v19;
    v12 = 2;
  }

  if (a4)
  {
LABEL_16:
    v24 = v23;
    *a4 = v23;
  }

LABEL_17:
  if (a5)
  {
    *a5 = v12;
  }
}

- (void)_cancelAvailabilityRequestWithTaskIdentifier:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_makeAvailableProgressByTaskIdentifier objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"_PLMakeAvailableProgressTypeKey"];
    v9 = [v8 integerValue];

    v10 = [v6 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"_PLMakeAvailableProgressStateKey"];
    v12 = [v11 integerValue];
  }

  else
  {
    v12 = 0;
    v9 = 0;
  }

  [(NSMutableDictionary *)self->_lock_makeAvailableProgressByTaskIdentifier setObject:0 forKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);
  v13 = PLImageManagerGetLog();
  v14 = v13;
  if (v6)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (v9 > 2)
      {
        v15 = @"undefined";
      }

      else
      {
        v15 = off_1E75650E8[v9];
      }

      if (v12 > 2)
      {
        v20 = @"undefined";
      }

      else
      {
        v20 = off_1E7565100[v12];
      }

      *buf = 138543874;
      v25 = v4;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v20;
      v16 = "[RM]: %{public}@ Will cancel make available request of type %@ in state %@";
      v17 = v14;
      v18 = OS_LOG_TYPE_DEBUG;
      v19 = 32;
      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v4;
    v16 = "Attempting to cancel availability request with identifier: %{public}@ that is not being tracked";
    v17 = v14;
    v18 = OS_LOG_TYPE_DEFAULT;
    v19 = 12;
LABEL_15:
    _os_log_impl(&dword_19BF1F000, v17, v18, v16, buf, v19);
  }

  if (v9 == 1 && v12 == 2)
  {
    v21 = [(PLPrimaryResourceDataStore *)self _cplManager];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__PLPrimaryResourceDataStore__cancelAvailabilityRequestWithTaskIdentifier___block_invoke;
    v22[3] = &unk_1E7564EE8;
    v23 = v4;
    [v21 cancelResourceTransferTaskWithIdentifier:v23 completion:v22];
  }
}

void __75__PLPrimaryResourceDataStore__cancelAvailabilityRequestWithTaskIdentifier___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PLImageManagerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138543618;
    v8 = v6;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Cancel callback, cancel succeeded: %@", &v7, 0x16u);
  }
}

- (id)_videoConversionServiceClient
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_videoConversionServiceClient)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69AE888]);
    videoConversionServiceClient = v2->_videoConversionServiceClient;
    v2->_videoConversionServiceClient = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_videoConversionServiceClient;

  return v5;
}

- (id)_imageConversionServiceClient
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_imageConversionServiceClient)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69AE870]);
    imageConversionServiceClient = v2->_imageConversionServiceClient;
    v2->_imageConversionServiceClient = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_imageConversionServiceClient;

  return v5;
}

- (id)_deferredPhotoFinalizer
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_deferredPhotoFinalizer)
  {
    v3 = [[PLDeferredPhotoFinalizer alloc] initForUseCase:0];
    deferredPhotoFinalizer = v2->_deferredPhotoFinalizer;
    v2->_deferredPhotoFinalizer = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_deferredPhotoFinalizer;

  return v5;
}

- (void)_downloadCPLResource:(id)a3 options:(id)a4 taskDidBeginHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  if ([v10 isTransient])
  {
    v14 = [v10 dataHandler];

    if (!v14)
    {
      v15 = PLImageManagerGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Transient download started without a handler to deliver data, downloaded data will be unused", buf, 2u);
      }
    }

    v16 = [(PLPrimaryResourceDataStore *)self _cplManager];
    v17 = [v10 clientBundleID];
    v18 = [v10 taskIdentifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __97__PLPrimaryResourceDataStore__downloadCPLResource_options_taskDidBeginHandler_completionHandler___block_invoke;
    v28[3] = &unk_1E7564E98;
    v29 = v10;
    v30 = v11;
    [v16 downloadResourceInMemory:v13 clientBundleID:v17 proposedTaskIdentifier:v18 taskDidBeginHandler:v12 completionHandler:v28];
  }

  else
  {
    v19 = [(PLPrimaryResourceDataStore *)self _cplManager];
    v20 = [v10 downloadOptions];
    v21 = [v10 clientBundleID];
    v22 = [v10 taskIdentifier];
    if ([v10 wantsProgress])
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __97__PLPrimaryResourceDataStore__downloadCPLResource_options_taskDidBeginHandler_completionHandler___block_invoke_2;
      v26 = &unk_1E7564EC0;
      v27 = self;
    }

    [v19 downloadResource:v13 options:v20 clientBundleID:v21 proposedTaskIdentifier:v22 taskDidBeginHandler:v12 progressBlock:v11 completionHandler:{v23, v24, v25, v26, v27}];
  }
}

void __97__PLPrimaryResourceDataStore__downloadCPLResource_options_taskDidBeginHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) dataHandler];

  if (v9)
  {
    v10 = [*(a1 + 32) dataHandler];
    (v10)[2](v10, v7);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v12, 0, 0, v8);
  }
}

void __97__PLPrimaryResourceDataStore__downloadCPLResource_options_taskDidBeginHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = PLImageManagerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Download progress %f", &v8, 0x16u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 24));
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  [v7 setCompletedUnitCount:{(objc_msgSend(v7, "totalUnitCount") * a3)}];
}

- (id)_cplResourceIfDownloadIsAvailableForResource:(id)a3 asset:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (-[PLPrimaryResourceDataStore isCPLSyncableLibraryStore](self, "isCPLSyncableLibraryStore") && [v8 isCPLResource])
  {
    if ([v10 isTransient])
    {
      v11 = [v9 rm_cplResourceForResourceType:{objc_msgSend(v8, "cplType")}];
    }

    else
    {
      v14 = [v10 downloadOptions];
      v15 = [v14 hasValidTimeRange];

      if (v15)
      {
        v16 = [v10 downloadOptions];
        v17 = v16;
        if (v16)
        {
          [v16 timeRange];
        }

        else
        {
          memset(v18, 0, sizeof(v18));
        }

        v12 = [v8 cplResourceForTimeRange:v18];

        goto LABEL_6;
      }

      v11 = [v8 cplResourceIncludeFile:1];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

- (BOOL)isCPLSyncableLibraryStore
{
  v2 = [(PLResourceDataStore *)self pathManager];
  v3 = [v2 isCPLSyncablePhotoLibraryPathManager];

  return v3;
}

- (id)_finalizeDeferredResource:(id)a3 asset:(id)a4 options:(id)a5 clientBundleIdentifier:(id)a6 completionHandler:(id)a7
{
  v63 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v11 = a4;
  v12 = a5;
  v42 = a6;
  v43 = v12;
  v44 = a7;
  v13 = [v12 taskIdentifier];
  v46 = [v11 uuid];
  v14 = PLImageManagerGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v46;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ requesting final image from deferred processing demon for asset: %@", buf, 0x16u);
  }

  if (!v13)
  {
    v13 = [MEMORY[0x1E69BF320] UUIDString];
    [v12 setTaskIdentifier:v13];
  }

  PLSendCTMScheduleAnalytics(v11, 0, 1);
  v15 = [PLResourceRecipe recipeFromID:65944];
  v45 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
  v16 = [v45 BOOLForKey:@"PLFrameDropRecoveryOnDemandProcessingUserDefaultsKey"];
  v58 = 0;
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v57 = 0;
    v18 = [PLPrimaryResourceDataStore bailOutOfVideoFinalizationIfNeededForAsset:v11 taskIdentifier:v13 didPromoteProxy:&v58 error:&v57];
    v17 = v57;
    if (!v18)
    {
      v19 = PLImageManagerGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v46;
        *&buf[22] = 2112;
        v62 = v17;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "[RM] %{public}@ Error bailing out of video finalization for asset with uuid %{public}@: %@", buf, 0x20u);
      }

      v15 = 0;
    }
  }

  if (([v47 resourceType] == 1 || objc_msgSend(v47, "resourceType") == 3) && v58 == 1)
  {
    v20 = PLImageManagerGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v46;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ bailed out of video finalization and promoted proxy for asset: %{public}@", buf, 0x16u);
    }

    v44[2](v44, v13, 0);
LABEL_37:
    v34 = 0;
    goto LABEL_38;
  }

  if (!v15)
  {
    if (!v17)
    {
      v35 = PLImageManagerGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [v47 singleLineDescription];
        *buf = 138543874;
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v46;
        *&buf[22] = 2114;
        v62 = v36;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "[RM] %{public}@ Unable to find resource recipe for deferred finalization for asset with uuid %{public}@, resource: %{public}@", buf, 0x20u);
      }

      v37 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E696A278];
      v60 = @"Unable to find resource recipe to perform deferred finalization";
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v17 = [v37 errorWithDomain:*MEMORY[0x1E69BFF48] code:47001 userInfo:v38];
    }

    (v44)[2](v44, v13, v17);
    v15 = 0;
    goto LABEL_37;
  }

  v21 = PLImageManagerGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "[RM] %{public}@ Generating resource for recipe %@ as it is not available", buf, 0x16u);
  }

  if (v16)
  {
    v22 = PLImageManagerGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = @"PLFrameDropRecoveryOnDemandProcessingUserDefaultsKey";
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "[RM] %{public}@ Requesting on demand frame drop recovery because the user default %@ is set", buf, 0x16u);
    }

    v23 = [PLResourceRecipe recipeFromID:131280];

    v15 = v23;
  }

  v24 = PLImageManagerGetLog();
  v25 = os_signpost_id_generate(v24);

  v26 = v24;
  v27 = v26;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 138543618;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "GenerateAndStoreDeferredResource", "taskIdentifier = %{public}@, recipe %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v62) = 0;
  v28 = [PLResourceRecipeGenerationOptions alloc];
  v29 = [v43 taskIdentifier];
  v30 = [(PLPrimaryResourceDataStore *)self _deferredPhotoFinalizer];
  v31 = [(PLResourceRecipeGenerationOptions *)v28 initWithVersion:0 taskIdentifier:v29 reason:@"On demand recipe generation request" clientBundleID:v42 deferredPhotoFinalizer:v30];

  v56 = 0;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3254779904;
  v48[2] = __111__PLPrimaryResourceDataStore__finalizeDeferredResource_asset_options_clientBundleIdentifier_completionHandler___block_invoke;
  v48[3] = &unk_1F0F01770;
  v32 = v27;
  v54 = v32;
  v55 = v25;
  v33 = v13;
  v49 = v33;
  v50 = v46;
  v51 = self;
  v53 = buf;
  v52 = v44;
  [v15 generateAndStoreForAsset:v11 options:v31 progress:&v56 completion:v48];
  v34 = v56;
  if (v34)
  {
    os_unfair_lock_lock(&self->_lock);
    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      [(NSMutableDictionary *)self->_lock_makeAvailableProgressByTaskIdentifier setObject:v34 forKeyedSubscript:v33, v27];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  _Block_object_dispose(buf, 8);
LABEL_38:
  v39 = v34;

  return v34;
}

void __111__PLPrimaryResourceDataStore__finalizeDeferredResource_asset_options_clientBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__2226;
  v29[4] = __Block_byref_object_dispose__2227;
  v16 = v12;
  v30 = v16;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __111__PLPrimaryResourceDataStore__finalizeDeferredResource_asset_options_clientBundleIdentifier_completionHandler___block_invoke_81;
  v25[3] = &unk_1E7578820;
  v17 = v11;
  v26 = v17;
  v18 = v16;
  v27 = v18;
  v28 = v29;
  [v17 performBlockAndWait:v25];
  v19 = *(a1 + 72);
  v20 = v19;
  v21 = *(a1 + 80);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v21, "GenerateAndStoreDeferredResource", "", buf, 2u);
  }

  v22 = PLImageManagerGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    *buf = 138543874;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    v35 = 2112;
    v36 = v18;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Generate and store completed for asset: %@ with error: %@", buf, 0x20u);
  }

  os_unfair_lock_lock((*(a1 + 48) + 24));
  [*(*(a1 + 48) + 16) setObject:0 forKeyedSubscript:*(a1 + 32)];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  os_unfair_lock_unlock((*(a1 + 48) + 24));
  (*(*(a1 + 56) + 16))();

  _Block_object_dispose(v29, 8);
}

void __111__PLPrimaryResourceDataStore__finalizeDeferredResource_asset_options_clientBundleIdentifier_completionHandler___block_invoke_81(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v7 = 0;
    v3 = [v2 save:&v7];
    v4 = v7;
    v5 = v7;
    if ((v3 & 1) == 0)
    {
      v6 = PLImageManagerGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v5;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to save moc with error: %@", buf, 0xCu);
      }

      if (!*(a1 + 40))
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
      }
    }
  }
}

- (void)_lock_transitionTaskToInflightWithIdentifier:(id)a3
{
  if (a3)
  {
    v3 = [(NSMutableDictionary *)self->_lock_makeAvailableProgressByTaskIdentifier objectForKeyedSubscript:?];
    [v3 setUserInfoObject:&unk_1F0FBA960 forKey:@"_PLMakeAvailableProgressStateKey"];
  }
}

- (BOOL)_lock_taskIsPendingDownloadWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_lock_makeAvailableProgressByTaskIdentifier objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 userInfo];
      v8 = [v7 objectForKeyedSubscript:@"_PLMakeAvailableProgressTypeKey"];
      if ([v8 integerValue] == 1)
      {
        v9 = [v6 userInfo];
        v10 = [v9 objectForKeyedSubscript:@"_PLMakeAvailableProgressStateKey"];
        v11 = [v10 integerValue] == 1;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_newProgressForTaskWithIdentifier:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [PLSyncCancellingProgress discreteProgressWithTotalUnitCount:100];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PLPrimaryResourceDataStore__newProgressForTaskWithIdentifier_type___block_invoke;
  v11[3] = &unk_1E75782A8;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v12 = v8;
  [v7 setCancellationHandler:v11];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v7 setUserInfoObject:v9 forKey:@"_PLMakeAvailableProgressTypeKey"];

  [v7 setUserInfoObject:&unk_1F0FBA948 forKey:@"_PLMakeAvailableProgressStateKey"];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __69__PLPrimaryResourceDataStore__newProgressForTaskWithIdentifier_type___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cancelAvailabilityRequestWithTaskIdentifier:*(a1 + 32)];
}

+ (unsigned)currentDeviceMasterThumbRecipeID
{
  if (currentDeviceMasterThumbRecipeID_s_onceToken != -1)
  {
    dispatch_once(&currentDeviceMasterThumbRecipeID_s_onceToken, &__block_literal_global_268);
  }

  return currentDeviceMasterThumbRecipeID_s_recipeID;
}

void __62__PLPrimaryResourceDataStore_currentDeviceMasterThumbRecipeID__block_invoke()
{
  v0 = [MEMORY[0x1E69BF248] defaultFormatChooser];
  v2 = [v0 masterThumbnailFormat];

  if ([v2 formatID] == 5005)
  {
    v1 = 272155;
  }

  else
  {
    v1 = 272151;
  }

  currentDeviceMasterThumbRecipeID_s_recipeID = v1;
}

+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)a3
{
  v3 = a3;
  if (a3 >= 0x10u)
  {
    v4 = 16;
  }

  else
  {
    v4 = a3;
  }

  if (v4 == 3 || v4 == 4 || v4 == 16)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return [v6 keyLengthWithDataPreview:v3];
}

+ (id)supportedRecipes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PLPrimaryResourceDataStore_supportedRecipes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (supportedRecipes_s_onceToken != -1)
  {
    dispatch_once(&supportedRecipes_s_onceToken, block);
  }

  v2 = supportedRecipes_s_recipes;

  return v2;
}

void __46__PLPrimaryResourceDataStore_supportedRecipes__block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  [v2 addObjectsFromArray:MEMORY[0x1E695E0F0]];
  v3 = -[PLPrimaryResourceDataStoreImageRecipe initWithRecipeID:]([PLPrimaryResourceDataStoreImageRecipe alloc], "initWithRecipeID:", [*(a1 + 32) currentDeviceMasterThumbRecipeID]);
  v21[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v2 addObjectsFromArray:v4];

  v19 = [[PLPrimaryResourceDataStoreImageRecipe alloc] initWithRecipeID:65737];
  v20[0] = v19;
  v18 = [[PLPrimaryResourceDataStoreImageRecipe alloc] initWithRecipeID:65938];
  v20[1] = v18;
  v17 = [[PLPrimaryResourceDataStoreImageRecipe alloc] initWithRecipeID:65739];
  v20[2] = v17;
  v16 = [[PLPrimaryResourceDataStoreImageRecipe alloc] initWithRecipeID:65741];
  v20[3] = v16;
  v5 = [[PLPrimaryResourceDataStoreImageRecipe alloc] initWithRecipeID:65743];
  v20[4] = v5;
  v6 = [[PLPrimaryResourceDataStoreVideoRecipe alloc] initWithRecipeID:0x20000];
  v20[5] = v6;
  v7 = [[PLPrimaryResourceDataStoreVideoRecipe alloc] initWithRecipeID:131075];
  v20[6] = v7;
  v8 = [[PLPrimaryResourceDataStoreVideoRecipe alloc] initWithRecipeID:131079];
  v20[7] = v8;
  v9 = [[PLPrimaryResourceDataStoreVideoRecipe alloc] initWithRecipeID:131081];
  v20[8] = v9;
  v10 = [[PLPrimaryResourceDataStoreVideoRecipe alloc] initWithRecipeID:131277];
  v20[9] = v10;
  v11 = [[PLPrimaryResourceDataStoreVideoRecipe alloc] initWithRecipeID:131275];
  v20[10] = v11;
  v12 = [[PLPrimaryResourceDataStoreVideoRecipe alloc] initWithRecipeID:131272];
  v20[11] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:12];
  [v2 addObjectsFromArray:v13];

  v14 = [MEMORY[0x1E695DEC8] arrayWithArray:v2];
  v15 = supportedRecipes_s_recipes;
  supportedRecipes_s_recipes = v14;
}

+ (id)utiForContextualVideoThumbnail
{
  v2 = +[PLContextualVideoThumbnailVirtualResource uniformTypeIdentifierForContextualVideoThumbnail];
  v3 = [v2 identifier];

  return v3;
}

+ (id)contextualVideoThumbnailIdentifierFromFileURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];
  v5 = [v4 componentsSeparatedByString:@"_cvt_"];
  v6 = [v5 lastObject];

  return v6;
}

- (id)keyHelperForBundleScope:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PLPrimaryResourceDataStore *)self keyHelperByBundleScope];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(PLPrimaryResourceDataStore *)self mainScopeKeyHelper];
  }

  return v7;
}

- (void)generateDeferredAdjustmentForAsset:(id)a3 imageConversionServiceClient:(id)a4 videoConversionServiceClient:(id)a5 reason:(id)a6 taskIdentifier:(id)a7 cplResourceType:(unint64_t)a8 version:(unsigned int)a9 clientBundleID:(id)a10 completion:(id)a11
{
  HIDWORD(v32) = a9;
  v15 = a7;
  v16 = a11;
  v17 = a10;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v21 objectID];
  v23 = [v21 photoLibrary];
  v24 = [v23 libraryServicesManager];

  LOBYTE(v32) = 0;
  v25 = [PLIntensiveResourceTask taskForGeneratingDeferredAdjustmentForAsset:v21 trackingIdentifier:v15 imageConversionClient:v20 videoConversionClient:v19 reason:v18 clientBundleID:v17 allowCancellationByService:v32];

  v26 = [v24 intensiveResourceTaskManager];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __209__PLPrimaryResourceDataStore_Finalization__generateDeferredAdjustmentForAsset_imageConversionServiceClient_videoConversionServiceClient_reason_taskIdentifier_cplResourceType_version_clientBundleID_completion___block_invoke;
  v35[3] = &unk_1E756F960;
  v36 = v15;
  v37 = v24;
  v39 = v16;
  v40 = a8;
  v41 = v33;
  v38 = v22;
  v27 = v16;
  v28 = v22;
  v29 = v24;
  v30 = v15;
  v31 = [v26 submitTask:v25 completionHandler:v35];
}

void __209__PLPrimaryResourceDataStore_Finalization__generateDeferredAdjustmentForAsset_imageConversionServiceClient_videoConversionServiceClient_reason_taskIdentifier_cplResourceType_version_clientBundleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = PLImageManagerGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v28 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "[RM]: %{public}@ Render complete", buf, 0xCu);
    }

    v8 = [*(a1 + 40) databaseContext];
    v9 = [v8 newShortLivedLibraryWithName:"-[PLPrimaryResourceDataStore(Finalization) generateDeferredAdjustmentForAsset:imageConversionServiceClient:videoConversionServiceClient:reason:taskIdentifier:cplResourceType:version:clientBundleID:completion:]_block_invoke"];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __209__PLPrimaryResourceDataStore_Finalization__generateDeferredAdjustmentForAsset_imageConversionServiceClient_videoConversionServiceClient_reason_taskIdentifier_cplResourceType_version_clientBundleID_completion___block_invoke_2;
    v21[3] = &unk_1E756F938;
    v22 = v9;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = *(a1 + 64);
    v23 = v10;
    v25 = v11;
    v26 = *(a1 + 72);
    v24 = v12;
    v13 = v9;
    [v13 performBlockAndWait:v21];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = [v3 error];
      v16 = [v3 error];
      v17 = [v16 code];
      v18 = [v3 error];
      v19 = [v18 domain];
      *buf = 138544130;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      v31 = 2048;
      v32 = v17;
      v33 = 2114;
      v34 = v19;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ Render failed with error: %@, code: %ld, domain: %{public}@", buf, 0x2Au);
    }

    v20 = *(a1 + 56);
    v13 = [v3 error];
    (*(v20 + 16))(v20, v13, 0, *(a1 + 64), 0);
  }
}

void __209__PLPrimaryResourceDataStore_Finalization__generateDeferredAdjustmentForAsset_imageConversionServiceClient_videoConversionServiceClient_reason_taskIdentifier_cplResourceType_version_clientBundleID_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v13];
  v5 = v13;

  if (v4)
  {
    v6 = [v4 resourceForCPLType:*(a1 + 56) version:*(a1 + 64)];
  }

  else
  {
    if (v5)
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        *buf = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Existing object with id %@ no longer found with error %@", buf, 0x16u);
      }
    }

    v6 = 0;
  }

  v9 = *(a1 + 48);
  v10 = [v6 dataLength];
  v11 = *(a1 + 56);
  v12 = [v6 fileURL];
  (*(v9 + 16))(v9, 0, v10, v11, v12);
}

- (id)getClosestResourceMatchingCPLResourceType:(unint64_t)a3 version:(unsigned int)a4 asset:(id)a5
{
  v5 = *&a4;
  v24 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [v7 resourceForCPLType:a3 version:v5];
  v9 = v8;
  if (!v8 || [v8 localAvailability] <= 0)
  {

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v7 modernResources];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v9 = 0;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([v15 version] == v5 && objc_msgSend(v15, "localAvailability") == 1)
          {
            if (!v9 || (v16 = [v9 unorientedWidth], v16 < objc_msgSend(v15, "unorientedWidth")))
            {
              v17 = v15;

              v9 = v17;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (BOOL)bailOutOfVideoFinalizationIfNeededForAsset:(id)a3 taskIdentifier:(id)a4 didPromoteProxy:(BOOL *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__65189;
  v32 = __Block_byref_object_dispose__65190;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (![v9 requiresVideoComplementDeferredFinalization])
  {
    *(v25 + 24) = 1;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = [v9 photoLibrary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __124__PLPrimaryResourceDataStore_Finalization__bailOutOfVideoFinalizationIfNeededForAsset_taskIdentifier_didPromoteProxy_error___block_invoke;
  v14[3] = &unk_1E756F910;
  v15 = v9;
  v17 = &v28;
  v16 = v10;
  v18 = &v24;
  v19 = &v20;
  [v11 performTransactionAndWait:v14];

  if (a5)
  {
LABEL_5:
    *a5 = *(v21 + 24);
  }

LABEL_6:
  if (a6)
  {
    *a6 = v29[5];
  }

  v12 = *(v25 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v12;
}

uint64_t __124__PLPrimaryResourceDataStore_Finalization__bailOutOfVideoFinalizationIfNeededForAsset_taskIdentifier_didPromoteProxy_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 promoteProxyToFinalVideoComplementWithOutError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = PLImageManagerGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "[RM]: %{public}@ [FDR] Promoted video complement proxy to final", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "[RM]: %{public}@ [FDR] Error on-demand promoting video complement proxy to final: %@", buf, 0x16u);
    }
  }

  PLSendFRCBailOutAnalytics(*(a1 + 32));
  result = [*(a1 + 32) videoDeferredProcessingNeeded];
  if (result)
  {
    return [*(a1 + 32) setVideoDeferredProcessingNeeded:0];
  }

  return result;
}

@end
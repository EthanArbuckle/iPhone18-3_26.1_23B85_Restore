@interface PLSharedStreamsDataStore
+ (signed)_cloudSharedAssetPlaceholderKindFromSharedStreamsResourceType:(unsigned int)a3;
+ (signed)cloudSharedPlaceholderKindFromSharedAlbumAsset:(id)a3;
- (BOOL)canStoreExternalResource:(id)a3;
- (BOOL)canStreamResource:(id)a3;
- (BOOL)storeExternalResource:(id)a3 forAsset:(id)a4 options:(id)a5 error:(id *)a6 resultingResource:(id *)a7;
- (BOOL)videoResource:(id)a3 matchesOrExceedsQualityLevel:(unsigned int)a4;
- (id)_sharedStreamsExternalResourceForAsset:(id)a3 type:(unsigned int)a4;
- (id)_utiStringForAsset:(id)a3 type:(unsigned int)a4;
- (id)descriptionForSubtype:(int64_t)a3;
- (id)expectedFileURLForResource:(id)a3 asset:(id)a4;
- (id)keyFromKeyStruct:(const void *)a3;
- (id)requestLocalAvailabilityChange:(signed __int16)a3 forResource:(id)a4 options:(id)a5 completion:(id)a6;
- (id)requiredExternalResourcesForMigratingOrImportingAsset:(id)a3;
- (id)resourceDataForKey:(id)a3 assetID:(id)a4;
- (id)updateDerivativeResourcesForAsset:(id)a3 forLifecycleEvent:(unsigned int)a4;
- (signed)_localAvailabilityForAsset:(id)a3 album:(id)a4 type:(unsigned int)a5;
- (signed)_localAvailabilityForAsset:(id)a3 collectionShare:(id)a4 type:(unsigned int)a5;
- (unsigned)_mainResourceTypeForAsset:(id)a3;
- (void)_prepareForDownloadNotification:(id)a3 atFileURL:(id)a4 completion:(id)a5;
- (void)requestStreamingURLForResource:(id)a3 asset:(id)a4 intent:(unint64_t)a5 timeRange:(id *)a6 streamingHints:(id)a7 inContext:(id)a8 clientBundleID:(id)a9 completion:(id)a10;
@end

@implementation PLSharedStreamsDataStore

+ (signed)cloudSharedPlaceholderKindFromSharedAlbumAsset:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasAllThumbs])
  {
    if ([v4 hasLargerThanThumbResourceLocal])
    {
      v5 = [v4 persistedResourcesMatching:&__block_literal_global_107];
      v6 = [MEMORY[0x1E695DFA8] set];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v22 + 1) + 8 * i) dataStoreSubtype];
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
            [v6 addObject:v13];
          }

          v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v9);
      }

      v14 = [v6 allObjects];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __75__PLSharedStreamsDataStore_cloudSharedPlaceholderKindFromSharedAlbumAsset___block_invoke_2;
      v20[3] = &unk_1E7567DF0;
      v21 = &unk_1F0FBF568;
      v15 = [v14 sortedArrayUsingComparator:v20];

      v16 = [v15 firstObject];
      v17 = [v16 integerValue];

      v18 = [a1 _cloudSharedAssetPlaceholderKindFromSharedStreamsResourceType:v17];
    }

    else
    {
      v18 = 3;
    }
  }

  else
  {
    v18 = 2;
  }

  return v18;
}

uint64_t __75__PLSharedStreamsDataStore_cloudSharedPlaceholderKindFromSharedAlbumAsset___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(a1 + 32) indexOfObject:v6];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v11 = [v9 compare:v10];

  return v11;
}

BOOL __75__PLSharedStreamsDataStore_cloudSharedPlaceholderKindFromSharedAlbumAsset___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 localAvailability] & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v2 dataStore];
    v4 = [objc_opt_class() storeClassID] == 2;
  }

  return v4;
}

+ (signed)_cloudSharedAssetPlaceholderKindFromSharedStreamsResourceType:(unsigned int)a3
{
  if (a3 > 9)
  {
    return 3;
  }

  else
  {
    return word_19C60B8C0[a3];
  }
}

- (id)requiredExternalResourcesForMigratingOrImportingAsset:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 isCloudSharedAsset])
  {
    v6 = [v4 collectionShare];
    v7 = [v4 albums];
    v8 = [v7 anyObject];

    if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [(PLSharedStreamsDataStore *)self _sharedStreamsExternalResourceForAsset:v4 type:[(PLSharedStreamsDataStore *)self _mainResourceTypeForAsset:v4]];
      [v5 addObject:v9];
      if ([v4 isPhotoIris])
      {
        v10 = [(PLSharedStreamsDataStore *)self _sharedStreamsExternalResourceForAsset:v4 type:6];
        [v5 addObject:v10];
      }
    }
  }

  return v5;
}

- (void)requestStreamingURLForResource:(id)a3 asset:(id)a4 intent:(unint64_t)a5 timeRange:(id *)a6 streamingHints:(id)a7 inContext:(id)a8 clientBundleID:(id)a9 completion:(id)a10
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a10;
  v14 = [v12 mainFileURL];
  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = [v14 path];
  v17 = [v15 fileExistsAtPath:v16];

  if (v17)
  {
    v18 = PLImageManagerGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v12 cloudAssetGUID];
      *buf = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Using local file URL %@ for asset %@", buf, 0x16u);
    }

    v20 = [MEMORY[0x1E695DF00] now];
    v21 = [v20 dateByAddingTimeInterval:600.0];
    (*(v13 + 2))(v13, v14, 0, v21, 0, 0);

    goto LABEL_10;
  }

  if ([v11 dataStoreSubtype] == 7)
  {
    v22 = 6;
LABEL_9:
    v20 = +[PLPhotoSharingHelper sharingPersonID];
    v23 = [v12 cloudAssetGUID];
    v24 = [MEMORY[0x1E69B14F8] sharedConnection];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __133__PLSharedStreamsDataStore_requestStreamingURLForResource_asset_intent_timeRange_streamingHints_inContext_clientBundleID_completion___block_invoke;
    v26[3] = &unk_1E7567DC8;
    v27 = v13;
    [v24 videoURLsForAssetCollectionWithGUID:v23 forMediaAssetType:v22 personID:v20 completionBlock:v26];

LABEL_10:
    goto LABEL_11;
  }

  if ([v11 dataStoreSubtype] == 8)
  {
    v22 = 7;
    goto LABEL_9;
  }

  v25 = PLImageManagerGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Resource does not support streaming URL", buf, 2u);
  }

  (*(v13 + 2))(v13, 0, 0, 0, 0, 0);
LABEL_11:
}

void __133__PLSharedStreamsDataStore_requestStreamingURLForResource_asset_intent_timeRange_streamingHints_inContext_clientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [a3 firstObject];
  (*(v6 + 16))(v6, v9, 0, v7, 0, v8);
}

- (BOOL)canStreamResource:(id)a3
{
  v3 = a3;
  v4 = [v3 dataStoreSubtype];
  v5 = [v3 uniformTypeIdentifier];

  v6 = [v5 conformsToMovie];
  if ((v4 & 0xFFFFFFFB) == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (BOOL)videoResource:(id)a3 matchesOrExceedsQualityLevel:(unsigned int)a4
{
  v5 = [a3 dataStoreSubtype];
  v6 = a4 == 3;
  if (v5 != 7)
  {
    v6 = 0;
  }

  if (v5 == 8)
  {
    v6 = 1;
  }

  return v5 == 6 || v6;
}

- (id)requestLocalAvailabilityChange:(signed __int16)a3 forResource:(id)a4 options:(id)a5 completion:(id)a6
{
  v8 = a3;
  v89[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v64 = a6;
  v12 = [v10 asset];
  v13 = [v10 dataStoreSubtype];
  v14 = [v10 objectID];
  v15 = [v12 collectionShare];
  v16 = [v12 albums];
  v17 = [v16 anyObject];

  v65 = [v12 assetID];
  v63 = [v15 photoLibrary];
  v62 = v17;
  if (![v11 isTransient])
  {
    if (!v15)
    {
      v18 = v14;
      v28 = MEMORY[0x1E696AEC0];
      v29 = [0 objectID];
      v19 = [v28 stringWithFormat:@"Shared stream downloads are only supported for sharedstream collection shares, collection share: %@", v29];

      v30 = PLImageManagerGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v79 = v19;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E69BFF70];
      v86 = *MEMORY[0x1E696A578];
      v87 = v19;
      v23 = MEMORY[0x1E695DF20];
      v24 = &v87;
      v25 = &v86;
      goto LABEL_15;
    }

    v26 = [v15 photoLibrary];

    if (!v26)
    {
      v18 = v14;
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shared stream download requires photo library to be set on collection share."];
      v31 = PLImageManagerGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v79 = v19;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E69BFF70];
      v84 = *MEMORY[0x1E696A578];
      v85 = v19;
      v23 = MEMORY[0x1E695DF20];
      v24 = &v85;
      v25 = &v84;
      goto LABEL_15;
    }

    v61 = v11;
    if (v17)
    {
      v27 = v17;
      v19 = [[PLSharedStreamsDataStoreKey alloc] initWithAsset:v12 album:v27 type:v13];
    }

    else
    {
      v19 = [[PLSharedStreamsDataStoreKey alloc] initWithAsset:v12 collectionShare:v15 type:v13];
    }

    v32 = [(PLSharedStreamsDataStoreKey *)v19 fileURLForAssetID:v65];
    if (!v19)
    {
      v42 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E69BFF70];
      v82 = *MEMORY[0x1E696A578];
      v83 = @"Unable to generate a shared stream key.";
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v45 = v44 = v14;
      v33 = [v42 errorWithDomain:v43 code:5 userInfo:v45];

      v14 = v44;
      v34 = v64;
      (*(v64 + 2))(v64, v33, 0, 0);
      v11 = v61;
      goto LABEL_16;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__PLSharedStreamsDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke;
    aBlock[3] = &unk_1E7567D78;
    v36 = v64;
    v77 = v36;
    v76 = v10;
    v60 = _Block_copy(aBlock);
    if (v8 < 1)
    {
      v46 = PLImageManagerGetLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEBUG, "[RM] This business is totally not supported yet", buf, 2u);
      }
    }

    else
    {
      v57 = v36;
      v59 = v14;
      v37 = [MEMORY[0x1E696AC08] defaultManager];
      v38 = [v32 path];
      v39 = [v37 fileExistsAtPath:v38];

      if (!v39)
      {
        v47 = [objc_opt_class() _cloudSharedAssetPlaceholderKindFromSharedStreamsResourceType:v13];
        v48 = [v12 uuid];
        v56 = v47;
        v49 = [PLPhotoSharingHelper downloadNotificationForAssetwithUUID:v48 cloudPlaceholderKind:v47];

        v50 = [v12 uuid];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __90__PLSharedStreamsDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_78;
        v66[3] = &unk_1E7567DA0;
        v74 = v13;
        v67 = v49;
        v68 = v50;
        v72 = v57;
        v73 = v60;
        v69 = v59;
        v70 = v19;
        v71 = v63;
        v58 = v50;
        v51 = self;
        v46 = v67;
        [(PLSharedStreamsDataStore *)v51 _prepareForDownloadNotification:v67 atFileURL:v32 completion:v66];
        v52 = PLImageManagerGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          if (v13 > 9)
          {
            v53 = @"vid-post-frame";
          }

          else
          {
            v53 = off_1E7576C48[v13 & 0xF];
          }

          v55 = v53;
          *buf = 138412546;
          v79 = v55;
          v80 = 2112;
          v81 = v46;
          _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_DEBUG, "[RM] Starting download for shared streams resource: %@ with notification: %@", buf, 0x16u);
        }

        v11 = v61;
        +[PLPhotoSharingHelper downloadAsset:cloudPlaceholderKind:shouldPrioritize:shouldExtendTimer:](PLPhotoSharingHelper, "downloadAsset:cloudPlaceholderKind:shouldPrioritize:shouldExtendTimer:", v12, v56, [v61 shouldPrioritize], objc_msgSend(v61, "shouldPrioritize"));

        v14 = v59;
        goto LABEL_37;
      }

      v40 = PLImageManagerGetLog();
      v14 = v59;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        if (v13 > 9)
        {
          v41 = @"vid-post-frame";
        }

        else
        {
          v41 = off_1E7576C48[v13 & 0xF];
        }

        v54 = v41;
        *buf = 138412290;
        v79 = v54;
        _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEBUG, "[RM] Shared streams resource: %@ already on disk, skipping download and marking as locally available", buf, 0xCu);
      }

      v46 = [(PLSharedStreamsDataStoreKey *)v19 keyData];
      (*(v60 + 2))(v60, v59, v46, v63);
    }

    v11 = v61;
LABEL_37:
    v34 = v64;

    v33 = v77;
    goto LABEL_16;
  }

  v18 = v14;
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Transient downloads not supported for shared streams"];
  v20 = PLImageManagerGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v79 = v19;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v21 = MEMORY[0x1E696ABC0];
  v22 = *MEMORY[0x1E69BFF70];
  v88 = *MEMORY[0x1E696A578];
  v89[0] = v19;
  v23 = MEMORY[0x1E695DF20];
  v24 = v89;
  v25 = &v88;
LABEL_15:
  v32 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
  v33 = [v21 errorWithDomain:v22 code:47001 userInfo:v32];
  v34 = v64;
  (*(v64 + 2))(v64, v33, 0, 0);
  v14 = v18;
LABEL_16:

  return 0;
}

void __90__PLSharedStreamsDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__PLSharedStreamsDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_2;
  v17[3] = &unk_1E75761B8;
  v18 = v9;
  v19 = v7;
  v20 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__PLSharedStreamsDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_3;
  v13[3] = &unk_1E7576F38;
  v14 = v18;
  v16 = *(a1 + 40);
  v15 = *(a1 + 32);
  v10 = v18;
  v11 = v8;
  v12 = v7;
  [v10 performTransaction:v17 completionHandler:v13];
}

void __90__PLSharedStreamsDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_78(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = PLImageManagerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "[RM] Download notification received: %@, file present: %@", buf, 0x16u);
  }

  if (a2)
  {
    v7 = *(a1 + 80);
    v8 = *(a1 + 48);
    v9 = [*(a1 + 56) keyData];
    (*(v7 + 16))(v7, v8, v9, *(a1 + 64));
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E6994990];
    v18 = *MEMORY[0x1E696A278];
    v19 = @"Shared stream resource download request failed.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v9 = [v10 errorWithDomain:v11 code:81 userInfo:v12];

    v13 = PLImageManagerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 88);
      if (v14 > 9)
      {
        v15 = @"vid-post-frame";
      }

      else
      {
        v15 = off_1E7576C48[v14];
      }

      v16 = v15;
      v17 = *(a1 + 40);
      *buf = 138412546;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to download shared streams resource: %@ for asset: %@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))(*(a1 + 72), v9, 0, 0);
  }
}

void __90__PLSharedStreamsDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v4 = [v2 objectWithID:*(a1 + 40)];

  [v4 setLocalAvailability:1];
  [v4 setDataStoreKeyData:*(a1 + 48)];
  v3 = [v4 asset];
  [v3 recalculateImageRequestHints];
}

void __90__PLSharedStreamsDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __90__PLSharedStreamsDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_4;
  v3[3] = &unk_1E7577C08;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 performBlock:v3];
}

void __90__PLSharedStreamsDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) fileURL];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (BOOL)storeExternalResource:(id)a3 forAsset:(id)a4 options:(id)a5 error:(id *)a6 resultingResource:(id *)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [v10 uniformTypeIdentifier];

  if (!v12)
  {
    v13 = -[PLResourceDataStore guessUTIForExternalResource:forAssetKind:](self, "guessUTIForExternalResource:forAssetKind:", v10, [v11 kind]);
    [v10 setUniformTypeIdentifier:v13];

    v14 = PLImageManagerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v11 uuid];
      *buf = 138543618;
      v32 = v10;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "[RM] guessed UTI for external resource: %{public}@ for asset uuid: %{public}@", buf, 0x16u);
    }
  }

  if (-[PLSharedStreamsDataStore canStoreExternalResource:](self, "canStoreExternalResource:", v10) && [v11 isCloudSharedAsset])
  {
    v16 = v10;
    v17 = [v11 collectionShare];
    v18 = [v11 albums];
    v19 = [v18 anyObject];

    if (!v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v20 = v19;
    v21 = [v11 fetchOrCreateResourceWithIdentity:v16];
    [v21 setDataStoreClassID:{objc_msgSend(objc_opt_class(), "storeClassID")}];
    [v21 setRecipeID:{objc_msgSend(v16, "recipeID")}];
    [v21 setDataStoreSubtype:{objc_msgSend(v16, "sharedStreamsType")}];
    v22 = [v16 codecFourCharCode];

    if (v22)
    {
      v23 = [v16 codecFourCharCode];
      [v21 setCodecFourCharCodeName:v23];
    }

    [v21 setUnorientedWidth:{objc_msgSend(v16, "unorientedWidth")}];
    [v21 setUnorientedHeight:{objc_msgSend(v16, "unorientedHeight")}];
    if (v20)
    {
      [v21 setLocalAvailability:{-[PLSharedStreamsDataStore _localAvailabilityForAsset:album:type:](self, "_localAvailabilityForAsset:album:type:", v11, v20, objc_msgSend(v16, "sharedStreamsType"))}];
      if ([v21 localAvailability] == 1)
      {
        v30 = v19;
        v24 = -[PLSharedStreamsDataStoreKey initWithAsset:album:type:]([PLSharedStreamsDataStoreKey alloc], "initWithAsset:album:type:", v11, v20, [v16 sharedStreamsType]);
LABEL_18:
        v26 = v24;
LABEL_19:
        v27 = [(PLSharedStreamsDataStoreKey *)v26 keyData];
        [v21 setDataStoreKeyData:v27];

        v19 = v30;
LABEL_24:
        [v21 setRemoteAvailability:{-[PLSharedStreamsDataStore _remoteAvailabilityForType:](self, "_remoteAvailabilityForType:", objc_msgSend(v16, "sharedStreamsType"))}];
        if (a7)
        {
          v28 = v21;
          *a7 = v21;
        }

        v25 = 1;
        goto LABEL_27;
      }
    }

    else if (v17)
    {
      [v21 setLocalAvailability:{-[PLSharedStreamsDataStore _localAvailabilityForAsset:collectionShare:type:](self, "_localAvailabilityForAsset:collectionShare:type:", v11, v17, objc_msgSend(v16, "sharedStreamsType"))}];
      if ([v21 localAvailability] == 1)
      {
        v30 = v19;
        v24 = -[PLSharedStreamsDataStoreKey initWithAsset:collectionShare:type:]([PLSharedStreamsDataStoreKey alloc], "initWithAsset:collectionShare:type:", v11, v17, [v16 sharedStreamsType]);
        goto LABEL_18;
      }
    }

    else if ([v21 localAvailability] == 1)
    {
      v30 = v19;
      v26 = 0;
      goto LABEL_19;
    }

    [v21 setDataStoreKeyData:0];
    goto LABEL_24;
  }

  v25 = 0;
LABEL_28:

  return v25;
}

- (BOOL)canStoreExternalResource:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)updateDerivativeResourcesForAsset:(id)a3 forLifecycleEvent:(unsigned int)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DFA8] set];
  if (a4 <= 2 && [v6 isCloudSharedAsset])
  {
    v9 = [v6 collectionShare];
    v10 = [v6 albums];
    v11 = [v10 anyObject];

    if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (![v6 kind])
      {
        v12 = [(PLSharedStreamsDataStore *)self _sharedStreamsExternalResourceForAsset:v6 type:4];
        [v7 addObject:v12];
      }

      if ([v6 kind] == 1)
      {
        v13 = [(PLSharedStreamsDataStore *)self _sharedStreamsExternalResourceForAsset:v6 type:7];
        [v7 addObject:v13];
        v14 = [(PLSharedStreamsDataStore *)self _sharedStreamsExternalResourceForAsset:v6 type:8];
        [v7 addObject:v14];
      }
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v25 = 0;
        v26 = 0;
        [(PLSharedStreamsDataStore *)self storeExternalResource:v20 forAsset:v6 options:0 error:&v26 resultingResource:&v25];
        v21 = v26;
        v22 = v25;
        v23 = v22;
        if (v22)
        {
          [v22 setAsset:v6];
          [v8 addObject:v23];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  return v8;
}

- (id)expectedFileURLForResource:(id)a3 asset:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 collectionShare];
  v8 = [v6 albums];
  v9 = [v8 anyObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = -[PLSharedStreamsDataStoreKey initWithAsset:album:type:]([PLSharedStreamsDataStoreKey alloc], "initWithAsset:album:type:", v6, v10, [v5 dataStoreSubtype]);

LABEL_5:
    v12 = [v6 assetID];
    v13 = [(PLSharedStreamsDataStoreKey *)v11 fileURLForAssetID:v12];

    goto LABEL_6;
  }

  if (v7)
  {
    v11 = -[PLSharedStreamsDataStoreKey initWithAsset:collectionShare:type:]([PLSharedStreamsDataStoreKey alloc], "initWithAsset:collectionShare:type:", v6, v7, [v5 dataStoreSubtype]);
    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (id)resourceDataForKey:(id)a3 assetID:(id)a4
{
  v4 = [a3 fileURLForAssetID:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)keyFromKeyStruct:(const void *)a3
{
  v3 = [[PLSharedStreamsDataStoreKey alloc] initWithKeyStruct:a3];

  return v3;
}

- (id)descriptionForSubtype:(int64_t)a3
{
  if (a3 > 9)
  {
    return @"vid-post-frame";
  }

  else
  {
    return off_1E7576C48[a3 & 0xF];
  }
}

- (unsigned)_mainResourceTypeForAsset:(id)a3
{
  if ([a3 kind])
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

- (signed)_localAvailabilityForAsset:(id)a3 album:(id)a4 type:(unsigned int)a5
{
  v5 = *&a5;
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v7 assetID];
  v11 = -1;
  if (v5 > 3)
  {
    if (v5 != 4)
    {
      if (v5 == 5)
      {
        v15 = [PLSharedStreamsDataStoreKey alloc];
        v16 = v7;
        v17 = v8;
        v18 = 5;
        goto LABEL_15;
      }

      if (v5 != 6)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    if ([v7 cloudSharedPlaceholderKind] == 3)
    {
      v15 = [PLSharedStreamsDataStoreKey alloc];
      v16 = v7;
      v17 = v8;
      v18 = 4;
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 - 1) < 2)
    {
      v12 = [v7 mainFileURL];
      v13 = [v12 path];

      v14 = [v9 fileExistsAtPath:v13] == 0;
      goto LABEL_17;
    }

    if (v5 == 3)
    {
      if ([v7 cloudSharedPlaceholderKind] == 4)
      {
        v15 = [PLSharedStreamsDataStoreKey alloc];
        v16 = v7;
        v17 = v8;
        v18 = 3;
LABEL_15:
        v19 = [(PLSharedStreamsDataStoreKey *)v15 initWithAsset:v16 album:v17 type:v18];
        v13 = v19;
        if (!v19)
        {
LABEL_20:

          goto LABEL_21;
        }

        v20 = [(PLSharedStreamsDataStoreKey *)v19 fileURLForAssetID:v10];
        v21 = [v20 path];
        v22 = [v9 fileExistsAtPath:v21];

        v14 = (v22 & 1) == 0;
LABEL_17:
        if (v14)
        {
          v11 = -1;
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_20;
      }

LABEL_11:
      v15 = [PLSharedStreamsDataStoreKey alloc];
      v16 = v7;
      v17 = v8;
      v18 = v5;
      goto LABEL_15;
    }
  }

LABEL_21:

  return v11;
}

- (signed)_localAvailabilityForAsset:(id)a3 collectionShare:(id)a4 type:(unsigned int)a5
{
  v5 = *&a5;
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v7 assetID];
  v11 = -1;
  if (v5 <= 3)
  {
    if ((v5 - 1) < 2)
    {
      v12 = [v7 mainFileURL];
      v13 = [v12 path];

      v14 = [v9 fileExistsAtPath:v13] == 0;
      goto LABEL_8;
    }

    if (v5 != 3)
    {
      goto LABEL_12;
    }

    if ([v7 cloudSharedPlaceholderKind] == 4)
    {
      v15 = [PLSharedStreamsDataStoreKey alloc];
      v16 = v7;
      v17 = v8;
      v18 = 3;
      goto LABEL_6;
    }

LABEL_5:
    v15 = [PLSharedStreamsDataStoreKey alloc];
    v16 = v7;
    v17 = v8;
    v18 = v5;
LABEL_6:
    v19 = [(PLSharedStreamsDataStoreKey *)v15 initWithAsset:v16 collectionShare:v17 type:v18];
    v13 = v19;
    if (!v19)
    {
LABEL_11:

      goto LABEL_12;
    }

    v20 = [(PLSharedStreamsDataStoreKey *)v19 fileURLForAssetID:v10];
    v21 = [v20 path];
    v22 = [v9 fileExistsAtPath:v21];

    v14 = (v22 & 1) == 0;
LABEL_8:
    if (v14)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_11;
  }

  if ((v5 - 5) < 2)
  {
    goto LABEL_5;
  }

  if (v5 == 4 && [v7 cloudSharedPlaceholderKind] == 3)
  {
    v15 = [PLSharedStreamsDataStoreKey alloc];
    v16 = v7;
    v17 = v8;
    v18 = 4;
    goto LABEL_6;
  }

LABEL_12:

  return v11;
}

- (id)_sharedStreamsExternalResourceForAsset:(id)a3 type:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = objc_alloc_init(PLSharedStreamsValidatedExternalResource);
  [(PLSharedStreamsValidatedExternalResource *)v7 setSharedStreamsType:v4];
  [(PLValidatedExternalResource *)v7 setVersion:0];
  v8 = [(PLSharedStreamsDataStore *)self _utiStringForAsset:v6 type:v4];
  if (v8)
  {
    v9 = [PLUniformTypeIdentifier utiWithIdentifier:v8];
    [(PLValidatedExternalResource *)v7 setUniformTypeIdentifier:v9];
  }

  if (v4 > 9)
  {
    v10 = 3;
  }

  else
  {
    v10 = dword_19C60B8D4[v4];
  }

  [(PLValidatedExternalResource *)v7 setResourceType:v10];
  if (v4 <= 4)
  {
    if (v4 == 3)
    {
      -[PLValidatedExternalResource setUnorientedWidth:](v7, "setUnorientedWidth:", [v6 originalWidth]);
      v27 = [v6 originalHeight];
      goto LABEL_23;
    }

    if (v4 != 4)
    {
      goto LABEL_24;
    }

    +[PLPhotoSharingHelper derivedAssetSizeForMasterSizeWidth:height:derivativeType:withSpecificationInfo:](PLPhotoSharingHelper, "derivedAssetSizeForMasterSizeWidth:height:derivativeType:withSpecificationInfo:", 1, 0, [v6 originalWidth], objc_msgSend(v6, "originalHeight"));
  }

  else
  {
    switch(v4)
    {
      case 5:
        +[PLPhotoSharingHelper videoPosterFrameDimension];
        v17 = v16;
        v19 = v18;
        v20 = [v6 width];
        v21 = [v6 height];
        if (v17 <= v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = v17;
        }

        v23 = v22;
        v24 = v20 / v21;
        v14 = v22;
        v25 = v24;
        if (v20 <= v21)
        {
          v26 = v23;
          v14 = rint(v25 * v14);
        }

        else
        {
          v26 = rint(v14 / v25);
        }

        goto LABEL_22;
      case 7:
        v11 = [v6 width];
        v12 = [v6 height];
        v13 = 360.0;
        break;
      case 8:
        v11 = [v6 width];
        v12 = [v6 height];
        v13 = 720.0;
        break;
      default:
        goto LABEL_24;
    }

    [PLPrimaryResourceDataStoreImageRecipe scaleOriginalSize:v11 toShortSideTarget:v12 maxLongSideLength:v13, 0.0];
  }

  v26 = v15;
LABEL_22:
  [(PLValidatedExternalResource *)v7 setUnorientedWidth:v14];
  v27 = v26;
LABEL_23:
  [(PLValidatedExternalResource *)v7 setUnorientedHeight:v27];
LABEL_24:

  return v7;
}

- (id)_utiStringForAsset:(id)a3 type:(unsigned int)a4
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a4 > 5)
  {
    if (a4 - 7 >= 2)
    {
      if (a4 != 6)
      {
        goto LABEL_12;
      }

      v8 = MEMORY[0x1E6982F80];
    }

    else
    {
      v8 = MEMORY[0x1E6982EC8];
    }
  }

  else
  {
    if (a4 - 3 >= 3)
    {
      if (a4 - 1 >= 2)
      {
        goto LABEL_12;
      }

      v9 = [v5 originalUniformTypeIdentifier];
      goto LABEL_11;
    }

    v8 = MEMORY[0x1E6982E58];
  }

  v9 = [*v8 identifier];
LABEL_11:
  v7 = v9;
LABEL_12:

  return v7;
}

- (void)_prepareForDownloadNotification:(id)a3 atFileURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_prepareForDownloadNotification_atFileURL_completion__onceToken != -1)
  {
    dispatch_once(&_prepareForDownloadNotification_atFileURL_completion__onceToken, &__block_literal_global_16025);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__16026;
  v36 = __Block_byref_object_dispose__16027;
  v37 = dispatch_group_create();
  dispatch_group_enter(v33[5]);
  v11 = v33[5];
  v12 = _prepareForDownloadNotification_atFileURL_completion__mediaStreamDownloadQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PLSharedStreamsDataStore__prepareForDownloadNotification_atFileURL_completion___block_invoke_47;
  block[3] = &unk_1E7577C08;
  v13 = v9;
  v30 = v13;
  v14 = v10;
  v31 = v14;
  dispatch_group_notify(v11, v12, block);
  out_token = 0;
  v15 = [v8 UTF8String];
  v16 = _prepareForDownloadNotification_atFileURL_completion__mediaStreamDownloadQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __81__PLSharedStreamsDataStore__prepareForDownloadNotification_atFileURL_completion___block_invoke_2;
  handler[3] = &unk_1E756ED40;
  handler[4] = self;
  v17 = v8;
  v26 = v17;
  v27 = &v32;
  notify_register_dispatch(v15, &out_token, v16, handler);
  v18 = dispatch_time(0, 300000000000);
  v19 = _prepareForDownloadNotification_atFileURL_completion__mediaStreamDownloadQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__PLSharedStreamsDataStore__prepareForDownloadNotification_atFileURL_completion___block_invoke_50;
  v21[3] = &unk_1E7567D50;
  v22 = v17;
  v23 = &v32;
  v24 = out_token;
  v20 = v17;
  dispatch_after(v18, v19, v21);

  _Block_object_dispose(&v32, 8);
}

uint64_t __81__PLSharedStreamsDataStore__prepareForDownloadNotification_atFileURL_completion___block_invoke_47(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [*(a1 + 32) path];
  [v2 fileExistsAtPath:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __81__PLSharedStreamsDataStore__prepareForDownloadNotification_atFileURL_completion___block_invoke_2(void *a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "%@: Notified from assetsd for shared asset download notification %@", &v11, 0x16u);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  if (v8)
  {
    dispatch_group_leave(v8);
    v7 = *(a1[6] + 8);
    v9 = *(v7 + 40);
  }

  else
  {
    v9 = 0;
  }

  *(v7 + 40) = 0;

  return notify_cancel(a2);
}

uint64_t __81__PLSharedStreamsDataStore__prepareForDownloadNotification_atFileURL_completion___block_invoke_50(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PLImageManagerGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "[RM] Shared streams download timed out for notification: %@", &v8, 0xCu);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    dispatch_group_leave(v5);
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 40) = 0;

  return notify_cancel(*(a1 + 48));
}

void __81__PLSharedStreamsDataStore__prepareForDownloadNotification_atFileURL_completion___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.assetsd.mediastreamdownloadqueue", v2);
  v1 = _prepareForDownloadNotification_atFileURL_completion__mediaStreamDownloadQueue;
  _prepareForDownloadNotification_atFileURL_completion__mediaStreamDownloadQueue = v0;
}

@end
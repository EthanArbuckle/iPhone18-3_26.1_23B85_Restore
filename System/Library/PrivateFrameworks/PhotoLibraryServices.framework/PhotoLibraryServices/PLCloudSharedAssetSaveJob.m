@interface PLCloudSharedAssetSaveJob
+ (BOOL)_lightweightReimportCacheDirectoryExists;
+ (id)_dcimDirectoryForFileURL:(id)a3;
+ (id)_lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID:(id)a3 cloudPersonID:(id)a4;
+ (id)newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd;
+ (id)nextDCIMSaveFileURLForCloudPersonID:(id)a3 cloudAlbumGUID:(id)a4 pathManager:(id)a5 fileExtension:(id)a6 assetUUID:(id)a7;
+ (id)pathForInFlightAssetCollectionWithGUID:(id)a3 mediaAssetType:(unint64_t)a4;
+ (void)assetsdProcessMetadataForAssetCollections:(id)a3 inAlbum:(id)a4 personID:(id)a5 info:(id)a6 libraryServicesManager:(id)a7;
+ (void)deleteCloudSharedAssetsWithCloudGUIDs:(id)a3 inAlbum:(id)a4 info:(id)a5;
+ (void)downloadPendingAssetsForPersonID:(id)a3 info:(id)a4;
+ (void)processMetadataForAssetCollections:(id)a3 inAlbum:(id)a4 personID:(id)a5 info:(id)a6;
+ (void)replaceRecentlyUploadedOriginalWithDerivativeForCollection:(id)a3 inAlbum:(id)a4 personID:(id)a5;
+ (void)saveCloudSharedAssetAtPath:(id)a3 forAssetCollection:(id)a4 mediaAssetType:(unint64_t)a5 albumGUID:(id)a6 personID:(id)a7 info:(id)a8 shouldPrioritize:(BOOL)a9;
- (BOOL)_processInflightAsset:(id)a3 mediaAssetType:(unint64_t)a4;
- (BOOL)_processSaveAssetWithPlaceholderKind:(signed __int16)a3 inLibrary:(id)a4 withAssetDataFilePath:(id)a5;
- (PLCloudSharedAssetSaveJob)initWithAssetsdClient:(id)a3;
- (id)_createPlaceHolderInSharedAlbum:(id)a3 collectionShare:(id)a4;
- (id)description;
- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4;
- (signed)attemptLightweightReimportAssetDataInLibrary:(id)a3;
- (signed)placeHolderKindFromAssetMetadataType:(unint64_t)a3;
- (unint64_t)_insertionIndexForAsset:(id)a3 inAlbum:(id)a4;
- (void)_addDownloadNotification:(id)a3;
- (void)_incrementDerivativesCount:(int64_t)a3 thumbnailsCount:(int64_t)a4;
- (void)_performSaveTransactionAndWaitOnLibrary:(id)a3 transaction:(id)a4 completion:(id)a5;
- (void)_prefetchLimitForDerivatives:(int64_t *)a3 thumbnails:(int64_t *)a4;
- (void)_processInFlightCommentsForAsset:(id)a3 inAlbum:(id)a4 inCollectionShare:(id)a5 inPhotoLibrary:(id)a6;
- (void)_updateAsset:(id)a3 withImageFileURL:(id)a4;
- (void)_updatePhotoIrisPropertiesIfNecessaryForAsset:(id)a3 inManagedObjectContext:(id)a4;
- (void)dealloc;
- (void)encodeToXPCObject:(id)a3;
- (void)executeDaemonOperationDeleteAssetJobType;
- (void)executeDaemonOperationDownloadPendingAssetsJobType;
- (void)executeDaemonOperationReplaceRecentlyUploadedOriginalJobType;
- (void)executeDaemonOperationSaveAssetJobType;
- (void)executeDaemonOperationSaveAssetMetadataForCollectionsJobType;
- (void)runDaemonSide;
- (void)setupSaveAssetMetadataForCollectionsJobForAssetCollections:(id)a3 album:(id)a4 personID:(id)a5 info:(id)a6;
@end

@implementation PLCloudSharedAssetSaveJob

- (unint64_t)_insertionIndexForAsset:(id)a3 inAlbum:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 assets];
  v8 = [v7 count];

  v9 = [v6 sortingComparator];
  if (v9)
  {
    v10 = [v6 assets];
    v11 = [v10 array];
    v8 = [v11 indexOfObject:v5 inSortedRange:0 options:v8 usingComparator:{1024, v9}];
  }

  return v8;
}

- (void)executeDaemonOperationReplaceRecentlyUploadedOriginalJobType
{
  v3 = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v4 = [(PLCloudSharedAssetSaveJob *)self isVideo];
  v5 = [(PLCloudSharedAssetSaveJob *)self isPhotoIris];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__PLCloudSharedAssetSaveJob_executeDaemonOperationReplaceRecentlyUploadedOriginalJobType__block_invoke;
  v10[3] = &unk_1E7576AC8;
  v12 = v4;
  v10[4] = self;
  v11 = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PLCloudSharedAssetSaveJob_executeDaemonOperationReplaceRecentlyUploadedOriginalJobType__block_invoke_395;
  v7[3] = &unk_1E7571418;
  v7[4] = self;
  v8 = v4;
  v9 = v5;
  v6 = v3;
  [(PLCloudSharedAssetSaveJob *)self _performSaveTransactionAndWaitOnLibrary:v6 transaction:v10 completion:v7];
}

void __89__PLCloudSharedAssetSaveJob_executeDaemonOperationReplaceRecentlyUploadedOriginalJobType__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) currentCloudAssetGUID];
    v4 = v3;
    v5 = @"NO";
    if (*(a1 + 48))
    {
      v5 = @"YES (streamed-video-replacement)";
    }

    *buf = 138412546;
    v24 = v3;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "executeDaemonOperationReplaceRecentlyUploadedOriginalJobType %@ isVideo %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) currentCloudAssetGUID];
  v22 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v8 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v7 inLibrary:*(a1 + 40)];
  v9 = [v8 lastObject];

  v10 = [v9 uniformTypeIdentifier];
  if (*(a1 + 48))
  {
    [PLPhotoSharingHelper temporaryVideoPosterFramePathForCollectionGUID:v6];
  }

  else
  {
    [PLPhotoSharingHelper temporaryDerivativePathForCollectionGUID:v6 uti:v10];
  }
  v11 = ;
  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [v12 fileExistsAtPath:v11];

  v14 = PLPhotoSharingGetLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = [*(a1 + 32) cloudAlbumGUID];
      *buf = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Found temporary derivative at path %@, will use it to replace original asset in shared album %@", buf, 0x16u);
    }

    *(*(a1 + 32) + 80) = 1;
    if (*(a1 + 48))
    {
      v17 = 7;
    }

    else
    {
      v17 = 4;
    }

    v18 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v24) = v17;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "executeDaemonOperationReplaceRecentlyUploadedOriginalJobType will call _processSaveAssetWithPlaceholderKind %i", buf, 8u);
    }

    [*(a1 + 32) _processSaveAssetWithPlaceholderKind:v17 inLibrary:*(a1 + 40) withAssetDataFilePath:v11];
  }

  else
  {
    if (v15)
    {
      *buf = 138412290;
      v24 = v11;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "did not find recently uploaded derivative at path %@ to replace original", buf, 0xCu);
    }

    if (*(a1 + 48) == 1 && [v9 isVideo] && objc_msgSend(v9, "isCloudSharedAsset") && objc_msgSend(v9, "cloudSharedPlaceholderKind") != 7)
    {
      v20 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(a1 + 32) currentCloudAssetGUID];
        *buf = 138412290;
        v24 = v21;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "(streamed-video-replacement) re-requesting download of video asset %@", buf, 0xCu);
      }

      [PLPhotoSharingHelper downloadAsset:v9 cloudPlaceholderKind:3 shouldPrioritize:0 shouldExtendTimer:0];
    }

    else
    {
      v19 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v9;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "(streamed-video-replacement) expected to find an original video asset but instead found %@", buf, 0xCu);
      }
    }
  }
}

void __89__PLCloudSharedAssetSaveJob_executeDaemonOperationReplaceRecentlyUploadedOriginalJobType__block_invoke_395(uint64_t a1)
{
  v2 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "executeDaemonOperationReplaceRecentlyUploadedOriginalJobType did call _processSaveAssetWithPlaceholderKind", v19, 2u);
  }

  v3 = [*(a1 + 32) currentCloudAssetGUID];
  v4 = [PLPhotoSharingHelper temporaryThumbnailPathForCollectionGUID:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 removeItemAtPath:v4 error:0];
  }

  if (*(a1 + 40) & 1) != 0 || (*(a1 + 41))
  {
    if (*(a1 + 41) & 1 | ((*(a1 + 40) & 1) == 0))
    {
      v6 = @"MOV";
    }

    else
    {
      v6 = @"MP4";
    }

    v7 = v6;
    v8 = [*(a1 + 32) currentCloudAssetGUID];
    v9 = [PLPhotoSharingHelper temporarySmallVideoDerivativePathForCollectionGUID:v8];
    v10 = [v9 stringByAppendingPathExtension:v7];

    if (v10)
    {
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      [v11 removeItemAtPath:v10 error:0];
    }

    v12 = [*(a1 + 32) currentCloudAssetGUID];
    v13 = [PLPhotoSharingHelper temporaryLargeVideoDerivativePathForCollectionGUID:v12];
    v14 = [v13 stringByAppendingPathExtension:v7];

    if (v14)
    {
      v15 = [MEMORY[0x1E696AC08] defaultManager];
      [v15 removeItemAtPath:v14 error:0];
    }

    v16 = [*(a1 + 32) currentCloudAssetGUID];
    v17 = [PLPhotoSharingHelper temporaryVideoPathForCollectionGUID:v16];

    if (v17)
    {
      v18 = [MEMORY[0x1E696AC08] defaultManager];
      [v18 removeItemAtPath:v17 error:0];
    }
  }
}

- (void)executeDaemonOperationDeleteAssetJobType
{
  v3 = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PLCloudSharedAssetSaveJob_executeDaemonOperationDeleteAssetJobType__block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v9 = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PLCloudSharedAssetSaveJob_executeDaemonOperationDeleteAssetJobType__block_invoke_388;
  v5[3] = &unk_1E7578848;
  v6 = v9;
  v7 = self;
  v4 = v9;
  [v4 performTransactionAndWait:v8 completionHandler:v5];
}

void __69__PLCloudSharedAssetSaveJob_executeDaemonOperationDeleteAssetJobType__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) cloudAssetGUIDsToDelete];
  v4 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v3 inLibrary:*(a1 + 40)];

  v5 = [PLAssetTransactionReason transactionReason:@"[Shared Streams]Asset was deleted remotely."];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 138412290;
    v17 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 uuid];
        v14 = [v13 copy];

        if (v14)
        {
          [v2 addObject:v14];
        }

        else
        {
          v15 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v23 = v12;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error : AssetUUID for asset %@ which was deleted remotely was nil", buf, 0xCu);
          }
        }

        [v12 deleteWithReason:v5];
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = +[PLNotificationManager sharedManager];
  [v16 noteDidDeleteSharedAssetsWithUUIDs:v2];
}

void __69__PLCloudSharedAssetSaveJob_executeDaemonOperationDeleteAssetJobType__block_invoke_388(int8x16_t *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__PLCloudSharedAssetSaveJob_executeDaemonOperationDeleteAssetJobType__block_invoke_2;
  v2[3] = &unk_1E7578848;
  v1 = a1[2];
  v3 = vextq_s8(v1, v1, 8uLL);
  [v1.i64[0] performTransactionAndWait:v2];
}

void __69__PLCloudSharedAssetSaveJob_executeDaemonOperationDeleteAssetJobType__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudAlbumGUID];
  v3 = [*(a1 + 40) managedObjectContext];
  v5 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];

  v4 = v5;
  if (v5)
  {
    [v5 recomputeCachedValues];
    v4 = v5;
  }
}

- (void)_incrementDerivativesCount:(int64_t)a3 thumbnailsCount:(int64_t)a4
{
  v27[3] = *MEMORY[0x1E69E9840];
  v4 = [(PLDaemonJob *)self libraryServicesManager];
  v5 = [v4 pathManager];
  v6 = [v5 photoDirectoryWithType:25 createIfNeeded:1 error:0];
  v7 = [v6 stringByAppendingPathComponent:@"sharedAssetsPrefetchCount.plist"];

  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v7];
  v9 = [v8 objectForKey:@"date"];
  v10 = [v8 objectForKey:@"thumbnailsCount"];
  v11 = [v10 integerValue];

  v12 = [v8 objectForKey:@"derivativesCount"];
  v13 = [v12 integerValue];

  if (!v9 || ([MEMORY[0x1E695DF00] date], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "timeIntervalSinceDate:", v9), v16 = v15, v14, v16 >= 86400.0))
  {
    v17 = [MEMORY[0x1E695DF00] date];

    v11 = 0;
    v9 = v17;
  }

  v27[0] = v9;
  v26[0] = @"date";
  v26[1] = @"thumbnailsCount";
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:v11 + a4];
  v27[1] = v18;
  v26[2] = @"derivativesCount";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v13 + a3];
  v27[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];

  if (([v20 writeToFile:v7 atomically:1] & 1) == 0)
  {
    v21 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "failed to update prefetch count file %@", buf, 0xCu);
    }
  }
}

- (void)_prefetchLimitForDerivatives:(int64_t *)a3 thumbnails:(int64_t *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      *a3 = 0;
      *a4 = 0;
      if (PLPlatformSharedAlbumPrefetchSupported())
      {
        v7 = [(PLDaemonJob *)self libraryServicesManager];
        v8 = [v7 pathManager];
        v9 = [v8 photoDirectoryWithType:25 createIfNeeded:0 error:0];
        v10 = [v9 stringByAppendingPathComponent:@"sharedAssetsPrefetchCount.plist"];

        v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v10];
        v12 = [v11 objectForKey:@"date"];
        v13 = [v11 objectForKey:@"thumbnailsCount"];
        v14 = [v13 integerValue];

        v15 = [v11 objectForKey:@"derivativesCount"];
        v16 = [v15 integerValue];

        if (v12 && ([MEMORY[0x1E695DF00] date], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "timeIntervalSinceDate:", v12), v19 = v18, v17, v19 < 86400.0))
        {
          v45 = v14;
        }

        else
        {
          v16 = 0;
          v45 = 0;
        }

        v20 = MGGetSInt64Answer();
        v21 = MGGetBoolAnswer();
        v22 = [MEMORY[0x1E696AE30] processInfo];
        v23 = [v22 isLowPowerModeEnabled];

        if (+[PLPhotoSharingHelper debugDownloadMetadataOnly])
        {
          v24 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v25 = "skip downloading shared assets since download metadata only is requested.";
LABEL_14:
            v26 = v24;
            v27 = 2;
LABEL_15:
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
            goto LABEL_16;
          }

          goto LABEL_16;
        }

        if (v23)
        {
          v24 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v25 = "skip downloading shared assets in battery saver mode";
            goto LABEL_14;
          }

LABEL_16:

          return;
        }

        if (!((v20 > 19) | v21 & 1))
        {
          v24 = PLPhotoSharingGetLog();
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          *buf = 134218240;
          v47 = v20;
          v48 = 1024;
          v49 = 20;
          v25 = "skip downloading shared assets as battery capacity %lld is less than %d";
          v26 = v24;
          v27 = 18;
          goto LABEL_15;
        }

        v28 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
        v29 = [v28 pathManager];
        v24 = [v29 libraryURL];

        v30 = MEMORY[0x1E69BF208];
        v31 = [v24 path];
        v32 = [v30 diskSpaceAvailableForPath:v31];

        if (+[PLPhotoSharingHelper debugDownloadThumbnailsOnly])
        {
          v33 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v34 = "skip downloading derivatives since download thumbnail only is requested.";
            v35 = v33;
            v36 = 2;
LABEL_22:
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
          }
        }

        else
        {
          if (+[PLPhotoSharingHelper debugDownloadAllDerivatives])
          {
            v37 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "downloading all derivatives is requested.", buf, 2u);
            }

            *a3 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
            if (v32 <= 0x1FFFFFFF)
            {
              v38 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v47 = 0x20000000;
                _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "skip downloading shared asset thumbnails since available storage is less than %lld", buf, 0xCu);
              }

              goto LABEL_16;
            }

LABEL_42:
            if (+[PLPhotoSharingHelper isCellularConnection])
            {
              v42 = +[PLPhotoSharingHelper maxNumThumbnailsToPrefetchPerDay];
              *a4 = (v42 - v45) & ~((v42 - v45) >> 63);
              v43 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                v44 = *a4;
                *buf = 134217984;
                v47 = v44;
                _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "On cellular connection, allows %ld thumbnails to be prefetched", buf, 0xCu);
              }
            }

            else
            {
              *a4 = 0x7FFFFFFFFFFFFFFFLL;
            }

            goto LABEL_16;
          }

          if (v32 > 0x3FFFFFFF)
          {
            if (+[PLPhotoSharingHelper isCellularConnection])
            {
              v39 = +[PLPhotoSharingHelper maxNumDerivativesToPrefetchPerDay];
              *a3 = (v39 - v16) & ~((v39 - v16) >> 63);
              v40 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = *a4;
                *buf = 134217984;
                v47 = v41;
                _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "On cellular connection, allows %ld derivatives to be prefetched", buf, 0xCu);
              }
            }

            else
            {
              *a3 = +[PLPhotoSharingHelper maxNumDerivativesToDownloadPerPush];
            }

            goto LABEL_42;
          }

          v33 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v47 = 0x40000000;
            v34 = "skip downloading shared asset derivatives since available storage is less than %lld";
            v35 = v33;
            v36 = 12;
            goto LABEL_22;
          }
        }

        goto LABEL_30;
      }
    }
  }
}

- (BOOL)_processInflightAsset:(id)a3 mediaAssetType:(unint64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 cloudAssetGUID];
  v8 = [PLCloudSharedAssetSaveJob pathForInFlightAssetCollectionWithGUID:v7 mediaAssetType:a4];
  if (v8 && ([MEMORY[0x1E696AC08] defaultManager], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "fileExistsAtPath:", v8), v9, v10))
  {
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Inflight file for asset %@ already exists at %@. Attempting to import directly", &v21, 0x16u);
    }

    v12 = [v6 collectionShare];
    v13 = [v12 scopeIdentifier];

    if (v13)
    {
      [(PLCloudSharedAssetSaveJob *)self setCurrentCloudAssetGUID:v7];
      [(PLCloudSharedAssetSaveJob *)self setCloudAlbumGUID:v13];
      -[PLCloudSharedAssetSaveJob setIsVideo:](self, "setIsVideo:", [v6 isVideo]);
      v14 = [(PLCloudSharedAssetSaveJob *)self placeHolderKindFromAssetMetadataType:a4];
      v15 = [v6 photoLibrary];
      v16 = [(PLCloudSharedAssetSaveJob *)self _processSaveAssetWithPlaceholderKind:v14 inLibrary:v15 withAssetDataFilePath:v8];

      if (v16)
      {
        v17 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = v8;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Successfully imported inflight file %@", &v21, 0xCu);
        }

        [(PLCloudSharedAssetSaveJob *)self setCloudAlbumGUID:0];
        [(PLCloudSharedAssetSaveJob *)self setCurrentCloudAssetGUID:0];
      }

      [(PLCloudSharedAssetSaveJob *)self setCurrentCloudAssetGUID:0];
      [(PLCloudSharedAssetSaveJob *)self setCloudAlbumGUID:0];
    }

    else
    {
      LOBYTE(v16) = 0;
    }

    v18 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Failed to import inflight file %@. Removing", &v21, 0xCu);
    }

    v19 = [MEMORY[0x1E696AC08] defaultManager];
    [v19 removeItemAtPath:v8 error:0];
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (void)executeDaemonOperationDownloadPendingAssetsJobType
{
  v14 = 0uLL;
  [(PLCloudSharedAssetSaveJob *)self _prefetchLimitForDerivatives:&v14 + 8 thumbnails:&v14];
  if (v14 == 0)
  {
    v3 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Skipping prefetching cloud shared assets since there is no more budget for today", buf, 2u);
    }
  }

  else
  {
    v4 = [(PLCloudSharingJob *)self transientPhotoLibrary];
    v5 = [(PLCloudSharedAssetSaveJob *)self cloudPersonID];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__PLCloudSharedAssetSaveJob_executeDaemonOperationDownloadPendingAssetsJobType__block_invoke;
    v7[3] = &unk_1E7576428;
    v8 = v4;
    v9 = self;
    v11 = *(&v14 + 1);
    v12 = v14;
    v10 = v5;
    v6 = v5;
    v3 = v4;
    [v3 performTransaction:v7];
  }
}

void __79__PLCloudSharedAssetSaveJob_executeDaemonOperationDownloadPendingAssetsJobType__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = +[PLPhotoSharingHelper maxNumDerivativesToDownloadPerPush];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2];
  v54 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2];
  v4 = [MEMORY[0x1E69B14F8] sharedConnection];
  v5 = [*(a1 + 32) managedObjectContext];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < 1", @"cloudDownloadRequests"];
  v7 = [PLManagedAsset fetchRequestForSortedCloudSharedAssetsWithPlaceholderKindsRequiringThumbnails:0 additionalPredicate:v6 ascending:0];
  v59 = 0;
  v8 = [v5 executeFetchRequest:v7 error:&v59];
  v49 = v59;
  if (!v8)
  {
    v33 = PLPhotoSharingGetLog();
    v34 = v49;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v62 = v7;
      v63 = 2112;
      v64 = v49;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Failed to fetch pending assets with request:%@ %@", buf, 0x16u);
    }

    v35 = 0;
    v36 = 0;
    goto LABEL_60;
  }

  v46 = v7;
  v47 = v6;
  v48 = v5;
  v52 = v4;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v45 = v8;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (!v9)
  {
    v51 = 0;
    v11 = 0;
    goto LABEL_51;
  }

  v10 = v9;
  v51 = 0;
  v11 = 0;
  v53 = *v56;
  v12 = v3;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v56 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v55 + 1) + 8 * i);
      [v14 setCloudDownloadRequests:&unk_1F0FBD828];
      v15 = [v14 cloudAssetGUID];
      if (![v15 length])
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = [v14 objectID];
        v20 = [v18 stringWithFormat:@"Found cloud shared asset with nil cloudAssetGUID %@ (isDeleted=%d) %@.\n\nSee rdar://problem/33335181", v19, objc_msgSend(v14, "isDeleted"), v14];

        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v21 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v62 = v20;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }
        }

        [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Shared Album state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: cloud shared asset with nil cloudAssetGUID" radarDescription:v20];

        goto LABEL_26;
      }

      if (v11 < *(a1 + 56))
      {
        if ([v14 isVideo])
        {
          v16 = 5;
        }

        else
        {
          v16 = 3;
        }

        if ([*(a1 + 40) _processInflightAsset:v14 mediaAssetType:v16])
        {
          goto LABEL_41;
        }

        ++v11;
        v17 = v54;
LABEL_25:
        [v17 addObject:v15];
LABEL_26:
        v23 = [v14 collectionShare];
        v24 = [v23 scopeIdentifier];

        if ([v54 count] >= v2)
        {
          if ([v14 isVideo])
          {
            v25 = 212;
          }

          else
          {
            v25 = 211;
          }

          [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:v15 albumGUID:v24 content:v15 state:v25 error:0];
          v26 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v54 count];
            v28 = *(a1 + 48);
            *buf = 134218242;
            v62 = v27;
            v63 = 2112;
            v64 = v28;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "calling MSASConnection to retrieveAssets: with a batch of %lu derivatives personID:%@", buf, 0x16u);
          }

          [v52 retrieveAssetsFromAssetCollectionsWithGUIDs:v54 assetTypeFlags:2 personID:*(a1 + 48)];
          [v54 removeAllObjects];
        }

        v3 = v12;
        if ([v12 count] >= v2)
        {
          if ([v14 isVideo])
          {
            v29 = 212;
          }

          else
          {
            v29 = 210;
          }

          [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:v15 albumGUID:v24 content:v15 state:v29 error:0];
          v30 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v12 count];
            v32 = *(a1 + 48);
            *buf = 134218242;
            v62 = v31;
            v63 = 2112;
            v64 = v32;
            _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "calling MSASConnection to retrieveAssets: with a batch of %lu thumbnails personID:%@", buf, 0x16u);
          }

          v3 = v12;
          [v52 retrieveAssetsFromAssetCollectionsWithGUIDs:v12 assetTypeFlags:1 personID:*(a1 + 48)];
          [v12 removeAllObjects];
        }

        goto LABEL_41;
      }

      if (v51 >= *(a1 + 64))
      {
        v37 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "No more budget for shared assets prefetching", buf, 2u);
        }

        goto LABEL_51;
      }

      if ([v14 isVideo])
      {
        v22 = 5;
      }

      else
      {
        v22 = 2;
      }

      if (([*(a1 + 40) _processInflightAsset:v14 mediaAssetType:v22] & 1) == 0)
      {
        ++v51;
        v17 = v3;
        goto LABEL_25;
      }

LABEL_41:
    }

    v10 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_51:
  v38 = v11;

  v4 = v52;
  v6 = v47;
  v5 = v48;
  v8 = v45;
  v7 = v46;
  v34 = v49;
  if ([v54 count])
  {
    v39 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v54 count];
      v41 = *(a1 + 48);
      *buf = 134218242;
      v62 = v40;
      v63 = 2112;
      v64 = v41;
      _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "calling MSASConnection to retrieveAssets: with a batch of %lu derivatives personID:%@", buf, 0x16u);
    }

    [v52 retrieveAssetsFromAssetCollectionsWithGUIDs:v54 assetTypeFlags:2 personID:*(a1 + 48)];
  }

  if ([v3 count])
  {
    v42 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v3 count];
      v44 = *(a1 + 48);
      *buf = 134218242;
      v62 = v43;
      v63 = 2112;
      v64 = v44;
      _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "calling MSASConnection to retrieveAssets: with a batch of %lu thumbnails personID:%@", buf, 0x16u);
    }

    [v52 retrieveAssetsFromAssetCollectionsWithGUIDs:v3 assetTypeFlags:1 personID:*(a1 + 48)];
  }

  v35 = v51;
  v36 = v38;
LABEL_60:
  [*(a1 + 40) _incrementDerivativesCount:v36 thumbnailsCount:v35];
}

- (void)executeDaemonOperationSaveAssetMetadataForCollectionsJobType
{
  v3 = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__74294;
  v18[4] = __Block_byref_object_dispose__74295;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__74294;
  v16[4] = __Block_byref_object_dispose__74295;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__PLCloudSharedAssetSaveJob_executeDaemonOperationSaveAssetMetadataForCollectionsJobType__block_invoke;
  v11[3] = &unk_1E75787D0;
  v11[4] = self;
  v5 = v3;
  v12 = v5;
  v14 = v18;
  v15 = v16;
  v13 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PLCloudSharedAssetSaveJob_executeDaemonOperationSaveAssetMetadataForCollectionsJobType__block_invoke_352;
  v7[3] = &unk_1E7578820;
  v6 = v13;
  v9 = self;
  v10 = v18;
  v8 = v6;
  [(PLCloudSharedAssetSaveJob *)self _performSaveTransactionAndWaitOnLibrary:v5 transaction:v11 completion:v7];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

void __89__PLCloudSharedAssetSaveJob_executeDaemonOperationSaveAssetMetadataForCollectionsJobType__block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) assetCollectionInfos];
  v3 = [v2 valueForKey:@"GUID"];

  v4 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v3 inLibrary:*(a1 + 40)];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v68 objects:v79 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v69;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v69 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v68 + 1) + 8 * i);
        v12 = [v11 cloudAssetGUID];

        if (v12)
        {
          v13 = [v11 cloudAssetGUID];
          [v5 setObject:v11 forKey:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v68 objects:v79 count:16];
    }

    while (v8);
  }

  v60 = [objc_opt_class() _lightweightReimportCacheDirectoryExists];
  v14 = [*(a1 + 32) cloudAlbumGUID];
  v15 = [*(a1 + 40) managedObjectContext];
  v16 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v14 includeTrashed:0 inManagedObjectContext:v15];
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v19 = [*(a1 + 32) assetCollectionInfos];
    v61 = [v19 countByEnumeratingWithState:&v64 objects:v78 count:16];
    if (v61)
    {
      v53 = v6;
      v54 = v3;
      v59 = *v65;
      v58 = *MEMORY[0x1E695DB20];
      v55 = v5;
      v56 = v19;
      do
      {
        for (j = 0; j != v61; ++j)
        {
          if (*v65 != v59)
          {
            objc_enumerationMutation(v19);
          }

          v21 = *(*(&v64 + 1) + 8 * j);
          v22 = objc_autoreleasePoolPush();
          objc_storeStrong((*(a1 + 32) + 88), v21);
          v23 = [*(*(a1 + 32) + 88) GUID];
          [*(a1 + 32) setCurrentCloudAssetGUID:v23];
          [*(a1 + 32) setIsVideo:{objc_msgSend(*(*(a1 + 32) + 88), "isVideo")}];
          [*(a1 + 32) setIsPhotoIris:{objc_msgSend(*(*(a1 + 32) + 88), "isPhotoIris")}];
          v24 = [v5 objectForKey:v23];
          v25 = v24;
          if (v24)
          {
            if ([v24 cloudSharedPlaceholderKind] == 5)
            {
              v26 = v19;
              v27 = v22;
              v28 = [v25 uniformTypeIdentifier];
              v29 = [*(a1 + 32) currentCloudAssetGUID];
              v30 = [PLPhotoSharingHelper temporaryDerivativePathForCollectionGUID:v29 uti:v28];

              v31 = [MEMORY[0x1E696AC08] defaultManager];
              v32 = [v31 fileExistsAtPath:v30];

              if (v32)
              {
                v33 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = [*(a1 + 32) cloudAlbumGUID];
                  *buf = 138412546;
                  v73 = v30;
                  v74 = 2112;
                  v75 = v34;
                  _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Found temporary derivative at path %@, will use it to replace original asset in shared album %@", buf, 0x16u);
                }

                *(*(a1 + 32) + 80) = 1;
                [*(a1 + 32) _processSaveAssetWithPlaceholderKind:4 inLibrary:*(a1 + 40) withAssetDataFilePath:v30];
              }

              v22 = v27;
              v19 = v26;
              v5 = v55;
            }

            v35 = MEMORY[0x1E695DFF8];
            v36 = [v25 directory];
            v37 = [v35 fileURLWithPath:v36];

            v63 = 0;
            LOBYTE(v36) = [v37 getResourceValue:&v63 forKey:v58 error:0];
            v38 = v63;
            if ((v36 & 1) == 0)
            {
              v57 = v22;
              v39 = v5;
              v40 = [MEMORY[0x1E696AC08] defaultManager];
              v62 = 0;
              v41 = [v40 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v62];
              v42 = v62;

              if ((v41 & 1) == 0)
              {
                v43 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  v73 = v37;
                  v74 = 2114;
                  v75 = v23;
                  v76 = 2112;
                  v77 = v42;
                  _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "ERROR: Unable to create directory %@ for asset %{public}@: %@", buf, 0x20u);
                }
              }

              v5 = v39;
              v19 = v56;
              v22 = v57;
            }
          }

          else
          {
            v37 = [*(a1 + 32) _createPlaceHolderInSharedAlbum:*(*(*(a1 + 64) + 8) + 40) collectionShare:*(*(*(a1 + 56) + 8) + 40)];
            if (v37)
            {
              [*(a1 + 48) addObject:v37];
            }
          }

          if (v60)
          {
            v44 = [*(a1 + 32) attemptLightweightReimportAssetDataInLibrary:*(a1 + 40)];
            if (v44)
            {
              v45 = v44;
              v46 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v47 = [*(a1 + 32) currentCloudAssetGUID];
                *buf = 138412546;
                v73 = v47;
                v74 = 1024;
                LODWORD(v75) = v45;
                _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "lightweight reimport of %@ asset data (kind = %i) successful, excluding from MSAS server request queue", buf, 0x12u);
              }
            }
          }

          objc_autoreleasePoolPop(v22);
        }

        v61 = [v19 countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v61);
      v6 = v53;
      v3 = v54;
    }
  }

  else
  {
    v19 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v48 = v19;
      v49 = objc_opt_class();
      v50 = *(a1 + 32);
      v51 = v49;
      v52 = [v50 cloudAlbumGUID];
      *buf = 138412546;
      v73 = v49;
      v19 = v48;
      v74 = 2112;
      v75 = v52;
      _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "%@ ERROR: couldn't find sharedstream collection share with scopeidentifier %@ to insert assets", buf, 0x16u);
    }
  }
}

void __89__PLCloudSharedAssetSaveJob_executeDaemonOperationSaveAssetMetadataForCollectionsJobType__block_invoke_352(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = +[PLNotificationManager sharedManager];
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) mstreamdInfoDictionary];
    [v2 noteDidReceiveAssets:v4 forCollectionShare:v3 mstreamdInfo:v5];

    [*(*(*(a1 + 48) + 8) + 40) recomputeCachedValues];
  }

  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 40) assetCollectionInfos];
    v8 = 134217984;
    v9 = [v7 count];
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "executeDaemonOperationSaveAssetMetadataForCollectionsJobType did process metadata for %lu collections", &v8, 0xCu);
  }
}

- (void)_performSaveTransactionAndWaitOnLibrary:(id)a3 transaction:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__PLCloudSharedAssetSaveJob__performSaveTransactionAndWaitOnLibrary_transaction_completion___block_invoke;
  v10[3] = &unk_1E7577C08;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [a3 performTransactionAndWait:a4 completionHandler:v10];
}

uint64_t __92__PLCloudSharedAssetSaveJob__performSaveTransactionAndWaitOnLibrary_transaction_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 96);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        notify_post([v7 UTF8String]);
        v8 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v7;
          _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Broadcasting '%@'", buf, 0xCu);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 96) removeAllObjects];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_addDownloadNotification:(id)a3
{
  v4 = a3;
  pendingDownloadNotifications = self->_pendingDownloadNotifications;
  v8 = v4;
  if (!pendingDownloadNotifications)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_pendingDownloadNotifications;
    self->_pendingDownloadNotifications = v6;

    v4 = v8;
    pendingDownloadNotifications = self->_pendingDownloadNotifications;
  }

  [(NSMutableArray *)pendingDownloadNotifications addObject:v4];
}

- (signed)attemptLightweightReimportAssetDataInLibrary:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
  v6 = [(PLCloudSharedAssetSaveJob *)self cloudPersonID];
  v7 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
  v8 = [objc_opt_class() _lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID:v5 cloudPersonID:v6];
  v9 = [v8 objectForKey:v7];
  v10 = v9;
  if (v9)
  {
    v37 = v4;
    v11 = [v9 objectForKey:@"cloudPlaceholderKind"];
    v12 = v11;
    v36 = v8;
    if (v11)
    {
      v13 = [v11 intValue];
    }

    else
    {
      v14 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v40 = v7;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Missing placeholder kind value for asset with cloudAssetGUID %@, skipping lightweight reimport of unknown cache data", buf, 0xCu);
      }

      v13 = 0;
    }

    v33 = v5;
    v34 = v6;
    v15 = [PLCloudSharedAlbum lightweightReimportDirectoryNameWithGUID:v5 cloudPersonID:v6];
    v16 = [PLManagedAsset lightweightReimportFileNameWithGUID:v7 type:0];
    v17 = [(PLDaemonJob *)self libraryServicesManager];
    v18 = [v17 pathManager];
    v19 = [v18 privateCacheDirectoryWithSubType:3];
    v35 = v15;
    v20 = [v19 stringByAppendingPathComponent:v15];

    v21 = v16;
    v32 = v20;
    v22 = [v20 stringByAppendingPathComponent:v16];
    v23 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = v23;
    if (v22 && [v23 fileExistsAtPath:v22 isDirectory:0])
    {
      if (v12 && v13 <= 7u && ((1 << v13) & 0x98) != 0)
      {
        v25 = PLPhotoSharingGetLog();
        v6 = v34;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetMediaAssetType];
          *buf = 67109890;
          *v40 = v13;
          *&v40[4] = 2048;
          *&v40[6] = v26;
          *&v40[14] = 2112;
          *&v40[16] = v7;
          v41 = 2112;
          v42 = v22;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "attemptLightweightReimportAssetWithPlaceholderKind:%i mediaAssetType: %lu GUID: %@ cachePath: %@", buf, 0x26u);
        }

        v5 = v33;
        if ([(PLCloudSharedAssetSaveJob *)self _processSaveAssetWithPlaceholderKind:v13 inLibrary:v37 withAssetDataFilePath:v22])
        {
          goto LABEL_29;
        }

        v27 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v40 = v7;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "lightweight reimport failed for asset %@", buf, 0xCu);
        }
      }

      else
      {
        v28 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v40 = v7;
          *&v40[8] = 2112;
          *&v40[10] = v22;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Cannot reimport chached data for asset %@: removing cached image file at path: %@", buf, 0x16u);
        }

        v38 = 0;
        v29 = [v24 removeItemAtPath:v22 error:&v38];
        v27 = v38;
        v6 = v34;
        if ((v29 & 1) == 0)
        {
          v30 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v40 = v7;
            *&v40[8] = 2112;
            *&v40[10] = v22;
            _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to remove cached asset data for %@ from path: %@", buf, 0x16u);
          }
        }

        v21 = v16;
        v5 = v33;
      }

      v13 = 0;
    }

    else
    {
      v13 = 0;
      v5 = v33;
      v6 = v34;
    }

LABEL_29:

    v8 = v36;
    v4 = v37;
    goto LABEL_30;
  }

  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v40 = v7;
    *&v40[8] = 2112;
    *&v40[10] = v5;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Cloud shared asset %@ not registered with album %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_30:

  return v13;
}

- (void)_updatePhotoIrisPropertiesIfNecessaryForAsset:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  if ([self->_currentAssetCollectionInfo isPhotoIris])
  {
    if (([v5 isPhotoIris] & 1) == 0)
    {
      [v5 setKindSubtype:2];
    }

    if ([v5 playbackStyle] != 3)
    {
      [v5 setPlaybackStyle:3];
    }

    if (![v5 videoCpDurationValue])
    {
      v6 = [self->_currentAssetCollectionInfo metaData];
      v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6998018]];

      if (v7)
      {
        memset(&v15, 0, sizeof(v15));
        [v7 doubleValue];
        CMTimeMakeWithSeconds(&v15, v8, 600);
        v14 = v15;
        [v5 setPhotoIrisVideoDuration:&v14];
      }

      v9 = [self->_currentAssetCollectionInfo metaData];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6998010]];

      if (v10)
      {
        memset(&v15, 0, sizeof(v15));
        [v10 doubleValue];
        CMTimeMakeWithSeconds(&v15, v11, 600);
        v14 = v15;
        [v5 setPhotoIrisStillDisplayTime:&v14];
      }

      v12 = [self->_currentAssetCollectionInfo metaData];
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E6998008]];

      if (v13)
      {
        [v5 setMediaGroupUUID:v13];
      }
    }
  }
}

- (void)_updateAsset:(id)a3 withImageFileURL:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E69C0718]);
  v9 = [(PLDaemonJob *)self libraryServicesManager];
  v10 = [v9 libraryBundle];
  v11 = [v10 timeZoneLookup];
  v12 = [v8 initWithImageURL:v7 contentType:0 options:13 timeZoneLookup:v11 cacheImageSource:1 cacheImageData:1];

  if (PLPlatformExtendedAttributesSupported())
  {
    [v6 setImageInfoFromOriginalImageMetadata:v12];
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412546;
      v25 = v6;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Setting the image info for asset %@ with %@", &v24, 0x16u);
    }
  }

  v14 = [v12 imageSource];
  v15 = [v12 imageData];
  [v6 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:v14 imageData:v15 forceSRGBConversion:0];

  v16 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v6 uuid];
    v24 = 138412546;
    v25 = v17;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Generated new thumbnail for asset %@ with %@", &v24, 0x16u);
  }

  v18 = [v6 location];

  if (!v18)
  {
    v19 = [v12 gpsLocation];
    [v6 setLocation:v19];
  }

  v20 = [v6 longDescription];

  if (!v20)
  {
    v21 = [v12 captionAbstract];
    [v6 setLongDescription:v21];
  }

  v22 = [v6 accessibilityDescription];

  if (!v22)
  {
    v23 = [v12 artworkContentDescription];
    [v6 setAccessibilityDescription:v23];
  }
}

- (BOOL)_processSaveAssetWithPlaceholderKind:(signed __int16)a3 inLibrary:(id)a4 withAssetDataFilePath:(id)a5
{
  v122 = a3;
  v144[1] = *MEMORY[0x1E69E9840];
  v118 = a4;
  v7 = a5;
  v112 = v7;
  if (v7)
  {
    v120 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];
  }

  else
  {
    v120 = 0;
  }

  v8 = [MEMORY[0x1E695DFA8] set];
  v9 = v8;
  if (v120)
  {
    [v8 addObject:?];
  }

  v119 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
  v10 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
  v11 = [v118 managedObjectContext];
  v12 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v10 includeTrashed:0 inManagedObjectContext:v11];

  if (v12)
  {
    v144[0] = v119;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v144 count:1];
    v14 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v13 inLibrary:v118];

    if ([v14 count] >= 2)
    {
      v15 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v137 = v119;
        v138 = 2112;
        v139 = v14;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "WARNING: Found more than one asset with cloudAssetGUID %@, returning last one in array %@", buf, 0x16u);
      }
    }

    v16 = [v14 lastObject];
    v17 = v16;
    if (!v16)
    {
      v63 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v137 = v119;
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_ERROR, "Couldn't find asset with cloudAssetGUID %{public}@ ", buf, 0xCu);
      }

      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ERROR: couldn't find asset with cloudAssetGUID %@ ", objc_opt_class(), v119];
      v117 = 0;
      v111 = 0;
      v62 = 197704;
      goto LABEL_97;
    }

    v116 = [v16 cloudSharedPlaceholderKind];
    v121 = [MEMORY[0x1E696AC08] defaultManager];
    v18 = [(__CFString *)v120 path];
    v19 = [v121 fileExistsAtPath:v18];

    if ((v19 & 1) == 0)
    {
      v64 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = [(__CFString *)v120 path];
        *buf = 138412290;
        v137 = v65;
        _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_ERROR, "InProcess file %@ not found.", buf, 0xCu);
      }

      v66 = MEMORY[0x1E696AEC0];
      v67 = objc_opt_class();
      v68 = [(__CFString *)v120 path];
      v61 = [v66 stringWithFormat:@"%@ ERROR: InProcess file %@ not found.", v67, v68];
      v117 = 0;
      v111 = 0;
      v62 = 197704;
      goto LABEL_96;
    }

    v142 = *MEMORY[0x1E696A3A0];
    v143 = *MEMORY[0x1E696A388];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
    v21 = [(__CFString *)v120 path];
    v134 = 0;
    v22 = [v121 setAttributes:v20 ofItemAtPath:v21 error:&v134];
    v113 = v134;

    if ((v22 & 1) == 0)
    {
      v23 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [(__CFString *)v120 path];
        *buf = 138412546;
        v137 = v24;
        v138 = 2112;
        v139 = v113;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@: %@", buf, 0x16u);
      }
    }

    v114 = [v17 cloudSharedAssetPathForPlaceholderKind:v122];
    if (![v114 length] || (objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", v114), v25 = objc_claimAutoreleasedReturnValue(), (v26 = v25) == 0))
    {
      v69 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = [(__CFString *)v120 path];
        *buf = 138412290;
        v137 = v70;
        _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_ERROR, "No destination URL to move %@ to", buf, 0xCu);
      }

      v71 = MEMORY[0x1E696AEC0];
      v72 = objc_opt_class();
      v26 = [(__CFString *)v120 path];
      v61 = [v71 stringWithFormat:@"%@ ERROR: No destination URL to move %@ to", v72, v26];
      v117 = 0;
      v111 = 0;
      v62 = 197702;
      goto LABEL_95;
    }

    v27 = [(__CFString *)v25 path];
    v28 = [v121 fileExistsAtPath:v27];

    if (v28)
    {
      v133 = 0;
      v29 = [v121 removeItemAtURL:v26 error:&v133];
      v30 = v133;
      if (!v29)
      {
        v109 = v30;
        v75 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v76 = [(__CFString *)v26 path];
          v77 = [(__CFString *)v120 path];
          *buf = 138412802;
          v137 = v76;
          v138 = 2112;
          v139 = v77;
          v140 = 2112;
          v141 = v109;
          _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_ERROR, "Unable to remove %@ before replacing it with %@: %@", buf, 0x20u);
        }

        v78 = MEMORY[0x1E696AEC0];
        v79 = objc_opt_class();
        v108 = [(__CFString *)v26 path];
        v34 = [(__CFString *)v120 path];
        v74 = [v78 stringWithFormat:@"%@ ERROR: Unable to remove %@ before replacing it with %@: %@", v79, v108, v34, v109];
        goto LABEL_69;
      }
    }

    [(__CFString *)v26 URLByDeletingLastPathComponent];
    v109 = v132 = 0;
    v31 = [(__CFString *)v109 getResourceValue:&v132 forKey:*MEMORY[0x1E695DB20] error:0];
    v108 = v132;
    if ((v31 & 1) == 0)
    {
      v32 = [MEMORY[0x1E696AC08] defaultManager];
      v131 = 0;
      v33 = [v32 createDirectoryAtURL:v109 withIntermediateDirectories:1 attributes:0 error:&v131];
      v34 = v131;

      if ((v33 & 1) == 0)
      {
        v80 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v137 = v109;
          v138 = 2114;
          v139 = v119;
          v140 = 2112;
          v141 = v34;
          _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_ERROR, "ERROR: Unable to create directory %@ for asset %{public}@: %@", buf, 0x20u);
        }

        v117 = 0;
        v111 = 0;
        goto LABEL_93;
      }
    }

    if (self->_replacingOriginalWithDerivative)
    {
      v35 = [v17 pathForOriginalFile];
      if ([v121 fileExistsAtPath:v35])
      {
        v130 = 0;
        v36 = [v121 removeItemAtPath:v35 error:&v130];
        v37 = v130;
        if ((v36 & 1) == 0)
        {
          v38 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = objc_opt_class();
            *buf = 138412802;
            v137 = v39;
            v138 = 2112;
            v139 = v35;
            v140 = 2112;
            v141 = v37;
            v40 = v39;
            _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "%@ ERROR: (streamed-video-replacement) Unable to remove original video file %@ error:%@", buf, 0x20u);
          }
        }
      }

      if ([v17 isVideo] && (objc_msgSend(v17, "isStreamedVideo") & 1) == 0)
      {
        [v17 setKindSubtype:100];
      }

      v116 = 2;
    }

    v129 = 0;
    v41 = [MEMORY[0x1E69BF238] copyItemAtURL:v120 toURL:v26 error:&v129];
    v34 = v129;
    if (v41)
    {
      v42 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v137 = v120;
        v138 = 2112;
        v139 = v26;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEBUG, "Successfully copied %@ to %@", buf, 0x16u);
      }

      if (([v17 hasMasterThumb] & 1) != 0 || v122 > 7 || ((1 << v122) & 0x98) == 0)
      {
        if (self->_replacingOriginalWithDerivative)
        {
          v43 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [v17 kind];
            v45 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
            v46 = v45;
            v47 = @"size";
            if (!v44)
            {
              v47 = @"image width, height and size";
            }

            *buf = 138412546;
            v137 = v47;
            v138 = 2112;
            v139 = v45;
            _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "Setting %@ for asset with cloudGUID %@", buf, 0x16u);
          }

          v48 = [(PLCloudSharedAssetSaveJob *)self assetCollectionInfos];
          v49 = [v48 firstObject];

          v50 = [v49 width];
          [v17 setWidth:{objc_msgSend(v50, "longLongValue")}];

          v51 = [v49 height];
          [v17 setHeight:{objc_msgSend(v51, "longLongValue")}];

          v52 = [v49 originalFilesize];
          [v17 setOriginalFilesize:{objc_msgSend(v52, "longLongValue")}];

          [v17 setSpatialType:0];
          if (PLPlatformExtendedAttributesSupported())
          {
            if ([v17 kind])
            {
              if ([v17 kind] == 1)
              {
                v53 = [v49 metaData];
                v54 = [v53 objectForKey:*MEMORY[0x1E6998030]];

                v55 = [v17 extendedAttributesCreateIfNeeded:v54 != 0];
                v56 = v55;
                if (v54)
                {
                  [v55 setDuration:v54];
                }
              }
            }

            else
            {
              [(PLCloudSharedAssetSaveJob *)self _updateAsset:v17 withImageFileURL:v26];
            }
          }
        }
      }

      else
      {
        v81 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v82 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
          *buf = 138412290;
          v137 = v82;
          _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_DEFAULT, "Generating new thumbnails for asset with cloudGUID %@", buf, 0xCu);
        }

        [(PLCloudSharedAssetSaveJob *)self _updateAsset:v17 withImageFileURL:v26];
      }

      if (v122 == 3 && [v17 hasMasterThumb])
      {
        v128 = 0;
        v83 = [v121 removeItemAtURL:v26 error:&v128];
        v84 = v128;
        if ((v83 & 1) == 0)
        {
          v85 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v137 = v26;
            v138 = 2112;
            v139 = v84;
            _os_log_impl(&dword_19BF1F000, v85, OS_LOG_TYPE_ERROR, "Unable to remove thumbnail resource from %@ after generating local thumb: %@", buf, 0x16u);
          }
        }
      }

      v86 = [v17 uuid];
      v80 = [PLPhotoSharingHelper downloadNotificationForAssetwithUUID:v86 cloudPlaceholderKind:v122];

      [(PLCloudSharedAssetSaveJob *)self _addDownloadNotification:v80];
      if (v116 != v122)
      {
        v87 = +[PLNotificationManager sharedManager];
        v88 = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
        [v87 noteDidChangePlaceholderKindForAsset:v17 fromOldKind:v116 forCollectionShare:v12 mstreamdInfo:v88];
      }

      [(PLCloudSharedAssetSaveJob *)self _processInFlightCommentsForAsset:v17 inAlbum:0 inCollectionShare:v12 inPhotoLibrary:v118];
      v89 = MEMORY[0x1E696AEC0];
      if (self->_replacingOriginalWithDerivative)
      {
        v90 = [(__CFString *)v120 path];
        v117 = [v89 stringWithFormat:@"found recently uploaded derivative at %@ and replaced original for asset %@ \n ", v90, v17];
      }

      else
      {
        v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"finished processing downloaded asset %@ \n", v17];
      }

      v111 = 1;
LABEL_93:

      v62 = 0;
      v61 = 0;
      goto LABEL_94;
    }

    v73 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v137 = v120;
      v138 = 2112;
      v139 = v26;
      v140 = 2112;
      v141 = v34;
      _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_ERROR, "Unable to copy %@ to %@: %@", buf, 0x20u);
    }

    v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ERROR: Unable to copy %@ to %@: %@", objc_opt_class(), v120, v26, v34, v108];
LABEL_69:
    v61 = v74;
    v117 = 0;
    v111 = 0;
    v62 = 197702;
LABEL_94:

LABEL_95:
    v68 = v113;
LABEL_96:

LABEL_97:
    goto LABEL_98;
  }

  v57 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    v58 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    *buf = 138543618;
    v137 = v58;
    v138 = 2114;
    v139 = v119;
    _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Couldn't find sharedstream collection share with scopeidentifier %{public}@ to insert asset %{public}@", buf, 0x16u);
  }

  v59 = MEMORY[0x1E696AEC0];
  v60 = objc_opt_class();
  v14 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
  v61 = [v59 stringWithFormat:@"%@ ERROR: couldn't find sharedstream collection share with scopeidentifier %@ to insert asset %@", v60, v14, v119];
  v117 = 0;
  v111 = 0;
  v62 = 197701;
LABEL_98:

  if (v61)
  {
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObject:v61 forKey:*MEMORY[0x1E696A278]];
    v115 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PLCloudSharedAssetSaveJob" code:v62 userInfo:v91];
  }

  else
  {
    v115 = 0;
  }

  if ([(PLCloudSharedAssetSaveJob *)self isProcessingThumbnail])
  {
    v92 = 290;
  }

  else
  {
    v92 = 291;
  }

  if (self->_replacingOriginalWithDerivative)
  {
    v93 = 292;
  }

  else
  {
    v93 = v92;
  }

  if (v122 != 2)
  {
    v94 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    v95 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:v94 albumGUID:v95 content:v117 state:v93 error:v115];
  }

  v110 = v61;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v96 = v9;
  v97 = [v96 countByEnumeratingWithState:&v124 objects:v135 count:16];
  if (v97)
  {
    v98 = *v125;
    do
    {
      for (i = 0; i != v97; ++i)
      {
        if (*v125 != v98)
        {
          objc_enumerationMutation(v96);
        }

        v100 = *(*(&v124 + 1) + 8 * i);
        v101 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v137 = v100;
          _os_log_impl(&dword_19BF1F000, v101, OS_LOG_TYPE_DEFAULT, "Will remove INFLIGHT item at %@", buf, 0xCu);
        }

        v102 = [MEMORY[0x1E696AC08] defaultManager];
        v123 = 0;
        v103 = [v102 removeItemAtURL:v100 error:&v123];
        v104 = v123;

        if ((v103 & 1) == 0)
        {
          v105 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            v106 = [(__CFString *)v100 path];
            *buf = 138412546;
            v137 = v106;
            v138 = 2112;
            v139 = v104;
            _os_log_impl(&dword_19BF1F000, v105, OS_LOG_TYPE_ERROR, "Unable to delete in flight asset %@: %@", buf, 0x16u);
          }
        }
      }

      v97 = [v96 countByEnumeratingWithState:&v124 objects:v135 count:16];
    }

    while (v97);
  }

  return v111;
}

- (void)_processInFlightCommentsForAsset:(id)a3 inAlbum:(id)a4 inCollectionShare:(id)a5 inPhotoLibrary:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v39 = a5;
  v9 = a6;
  v10 = [v9 pathManager];
  v11 = [v10 directoryPathForInFlightComments:0];
  v12 = [v8 cloudAssetGUID];
  v13 = [v11 stringByAppendingPathComponent:v12];

  if (v13)
  {
    v14 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v13];
    if (v14)
    {
      v15 = v14;
      v37 = v13;
      v16 = [PLCloudSharedComment cloudSharedCommentsWithGUIDs:v14 inLibrary:v9];
      v17 = [v15 count];
      if (v17 != [v16 count])
      {
        v18 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v15 count];
          v20 = [v8 cloudAssetGUID];
          *buf = 134218498;
          v48 = v19;
          v49 = 2112;
          v50 = v20;
          v51 = 2048;
          v52 = [v16 count];
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "WARNING: Expected %lu inflight comments for asset %@ but only found %lu", buf, 0x20u);
        }
      }

      if ([v16 count])
      {
        v21 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v16 count];
          v23 = [v8 cloudAssetGUID];
          *buf = 134218242;
          v48 = v22;
          v49 = 2112;
          v50 = v23;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Will attach %lu inflight comments to asset %@", buf, 0x16u);
        }
      }

      v36 = v15;
      v38 = v9;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v16;
      v24 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v43;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v43 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v42 + 1) + 8 * i);
            v29 = [v28 commenterHashedPersonID];
            v30 = [v8 collectionShare];
            v31 = [PLShareParticipant participantWithHashedPersonID:v29 inCollectionShare:v30];

            [v28 setShareParticipant:v31];
            [v8 addComment:v28];
            LODWORD(v30) = [v28 isLikeBoolValue];
            v32 = +[PLNotificationManager sharedManager];
            v33 = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
            if (v30)
            {
              [v32 noteDidReceiveLike:v28 mstreamdInfo:v33];
            }

            else
            {
              [v32 noteDidReceiveComment:v28 mstreamdInfo:v33];
            }

            if ([v28 isInterestingForAlbumsSorting])
            {
              v34 = [v28 commentDate];
              [v39 setLastModifiedDate:v34];
            }
          }

          v25 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v25);
      }

      v35 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = v37;
      [v35 removeItemAtPath:v37 error:0];

      v9 = v38;
    }
  }
}

- (id)_createPlaceHolderInSharedAlbum:(id)a3 collectionShare:(id)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v78 = a3;
  v81 = a4;
  v82 = [v81 photoLibrary];
  LOWORD(v71) = 257;
  v6 = +[PLManagedAsset insertAssetIntoPhotoLibrary:mainFileURL:mainFileMetadata:savedAssetType:bundleScope:uuid:replacementUUID:imageSource:imageData:isPlaceholder:deleteFileOnFailure:](PLManagedAsset, "insertAssetIntoPhotoLibrary:mainFileURL:mainFileMetadata:savedAssetType:bundleScope:uuid:replacementUUID:imageSource:imageData:isPlaceholder:deleteFileOnFailure:", v82, 0, 0, [MEMORY[0x1E69BF328] savedAssetTypeForCloudSharedAsset], 2, 0, 0, 0, 0, v71);
  v7 = v6;
  if (v6)
  {
    [v6 setVisibilityState:2];
    v8 = [self->_currentAssetCollectionInfo width];
    v9 = [v8 longLongValue];

    v10 = [self->_currentAssetCollectionInfo height];
    v11 = [v10 longLongValue];

    [v7 setWidth:v9];
    [v7 setOriginalWidth:v9];
    [v7 setHeight:v11];
    [v7 setOriginalHeight:v11];
    v12 = [self->_currentAssetCollectionInfo originalFilesize];
    [v7 setOriginalFilesize:{objc_msgSend(v12, "longLongValue")}];

    v13 = [self->_currentAssetCollectionInfo originalFilename];
    [v7 setOriginalFilename:v13];

    v80 = [self->_currentAssetCollectionInfo metaData];
    v14 = [v80 objectForKey:*MEMORY[0x1E6998000]];
    if (v14)
    {
      goto LABEL_9;
    }

    v15 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Couldn't find a creation date, setting to modification date", buf, 2u);
    }

    v14 = [v7 modificationDate];
    if (v14)
    {
      goto LABEL_9;
    }

    v16 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Couldn't find a creation date, setting to now", buf, 2u);
    }

    v14 = [MEMORY[0x1E695DF00] date];
    if (v14)
    {
LABEL_9:
      [v7 setDateCreated:v14];
    }

    v74 = v14;
    v77 = [v80 objectForKey:*MEMORY[0x1E6998020]];
    if (v77)
    {
      if ([v77 length])
      {
        v83 = 0.0;
        *buf = 0;
        if ([MEMORY[0x1E69C0718] parseISO6709String:v77 outLatitude:buf outLongitude:&v83])
        {
          v17 = CLLocationCoordinate2DMake(*buf, v83);
          if ([PLLocationUtils canUseCoordinate:?])
          {
            v18 = [objc_alloc(MEMORY[0x1E6985C40]) initWithCoordinate:v14 altitude:v17.latitude horizontalAccuracy:v17.longitude verticalAccuracy:0.0 timestamp:{0.0, 0.0}];
            if (v18)
            {
              [v7 setLocation:v18];
            }
          }

          else
          {
            v18 = 0;
          }
        }
      }
    }

    if ([self->_currentAssetCollectionInfo isVideo])
    {
      [v7 updateAssetKindAndPlaybackStyleIfNeededWithKind:1];
      [v7 setKindSubtype:100];
      v27 = [v80 objectForKey:*MEMORY[0x1E6998030]];
      v28 = v27;
      if (v27)
      {
        [v27 doubleValue];
        [v7 setDuration:?];
        if (PLPlatformExtendedAttributesSupported())
        {
          v29 = [v7 extendedAttributesCreateIfNeeded:1];
          [v29 setDuration:v28];
        }

        v30 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
          *buf = 138412546;
          *&buf[4] = v31;
          v85 = 2112;
          v86 = v28;
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "setting video duration from metadata for cloudGUID %@ to %@", buf, 0x16u);
        }
      }
    }

    else
    {
      [v7 updateAssetKindAndPlaybackStyleIfNeededWithKind:0];
    }

    v32 = [v80 objectForKey:*MEMORY[0x1E6998028]];
    v33 = [v32 unsignedIntValue];

    [v7 setPlaybackVariationAndLoopingPlaybackStyleWithPlaybackVariation:v33];
    v79 = [self->_currentAssetCollectionInfo derivativeUTI];
    if (v79)
    {
      [v7 setUniformTypeIdentifier:v79];
      v34 = [MEMORY[0x1E6982C40] typeWithIdentifier:v79];
      v35 = [v34 isEqual:*MEMORY[0x1E6982DE8]];

      if (v35)
      {
        [v7 setPlaybackStyle:2];
      }
    }

    [v74 timeIntervalSinceReferenceDate];
    [v7 setSortToken:?];
    [v7 setSavedAssetType:{objc_msgSend(MEMORY[0x1E69BF328], "savedAssetTypeForCloudSharedAsset")}];
    [v7 setBundleScope:2];
    v36 = [self->_currentAssetCollectionInfo personID];
    [v7 setCloudOwnerHashedPersonID:v36];

    [v7 setCloudIsDeletable:{-[AssetCollectionInfo isDeletable](self->_currentAssetCollectionInfo, "isDeletable")}];
    [v7 setCloudIsMyAsset:{-[AssetCollectionInfo isMine](self->_currentAssetCollectionInfo, "isMine")}];
    v37 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    [v7 setCloudAssetGUID:v37];

    v38 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [v7 setCloudDownloadRequests:v38];

    v39 = [self->_currentAssetCollectionInfo timestamp];
    if (v39)
    {
      [v7 setCloudServerPublishDate:v39];
    }

    v72 = v39;
    v40 = [v7 uniformTypeIdentifier];
    v75 = [PLManagedAsset preferredFileExtensionForType:v40];

    v41 = [(PLCloudSharedAssetSaveJob *)self cloudPersonID];
    v42 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    v43 = [v82 pathManager];
    v44 = [v7 uuid];
    v45 = [PLCloudSharedAssetSaveJob nextDCIMSaveFileURLForCloudPersonID:v41 cloudAlbumGUID:v42 pathManager:v43 fileExtension:v75 assetUUID:v44];

    v46 = [v45 path];
    v47 = [v46 stringByDeletingLastPathComponent];

    v76 = [v45 lastPathComponent];
    if (v47 && v76)
    {
      v48 = [v82 pathManager];
      v49 = [v48 isUBF];

      v50 = [v82 pathManager];
      v51 = v50;
      if (v49)
      {
        v52 = 23;
      }

      else
      {
        v52 = 32;
      }

      v73 = [v50 assetAbbreviatedMetadataDirectoryForDirectory:v47 type:v52 bundleScope:0];

      v53 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
        *buf = 138412802;
        *&buf[4] = v73;
        v85 = 2112;
        v86 = v76;
        v87 = 2112;
        v88 = v54;
        _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "setting directory/filename to %@/%@ for cloudSharedAsset %@", buf, 0x20u);
      }

      [v7 setDirectory:v73];
      [v7 setFilename:v76];
    }

    else
    {
      v55 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
        v57 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
        *buf = 138413058;
        *&buf[4] = v45;
        v85 = 2112;
        v86 = v56;
        v87 = 2112;
        v88 = v75;
        v89 = 2112;
        v90 = v57;
        _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "unable to get directory/filename from %@ for cloudSharedAsset %@ with extension %@ in album %@", buf, 0x2Au);
      }

      v73 = v47;
    }

    v58 = [v82 managedObjectContext];
    [(PLCloudSharedAssetSaveJob *)self _updatePhotoIrisPropertiesIfNecessaryForAsset:v7 inManagedObjectContext:v58];

    v59 = [v80 valueForKey:*MEMORY[0x1E6997FF8]];
    if (v59)
    {
      [v7 setCloudBatchID:v59];
    }

    v60 = [v80 valueForKey:*MEMORY[0x1E6997FF0]];
    if (v60)
    {
      [v7 setCloudBatchPublishDate:v60];
    }

    v61 = [v7 cloudOwnerHashedPersonID];
    v62 = [PLShareParticipant participantWithHashedPersonID:v61 inCollectionShare:v81];

    if (v62)
    {
      [v7 setCollectionShare:v81 withContributor:v62];
      v63 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
        v65 = [v7 dateCreated];
        *buf = 138413058;
        *&buf[4] = v64;
        v85 = 2112;
        v86 = v59;
        v87 = 2112;
        v88 = v60;
        v89 = 2112;
        v90 = v65;
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_INFO, "Inserted new asset (GUID:%@ cloudAssetBatchID:%@ cloudAssetBatchDate:%@ dateCreated:%@)", buf, 0x2Au);
      }
    }

    else
    {
      [v7 setCollectionShare:v81 withContributor:0];
      v63 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v66 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
        v67 = [v7 cloudOwnerHashedPersonID];
        v68 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
        *buf = 138412802;
        *&buf[4] = v66;
        v85 = 2112;
        v86 = v67;
        v87 = 2112;
        v88 = v68;
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_ERROR, "Unable to fetch share participant for asset %@ with hashedPersonID %@ %@", buf, 0x20u);
      }
    }

    [v81 setLastModifiedDate:v60];
    [(PLCloudSharedAssetSaveJob *)self _processInFlightCommentsForAsset:v7 inAlbum:v78 inCollectionShare:v81 inPhotoLibrary:v82];
    [PLResourceInstaller installInternalResourcesForExistingAsset:v7 assumeNoExistingResources:1 referencedResourceURLs:0 error:0];

    v69 = v7;
  }

  else
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v21 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    v22 = [v19 stringWithFormat:@"%@ ERROR: in insertAssetIntoPhotoLibrary:asset GUID:%@", v20, v21];

    if (v22)
    {
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObject:v22 forKey:*MEMORY[0x1E696A578]];
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PLCloudSharedAssetSaveJob" code:197703 userInfo:v23];
      v25 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = objc_opt_class();
        v85 = 2112;
        v86 = v24;
        v26 = *&buf[4];
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "%@: Error creating placeholder: %@", buf, 0x16u);
      }
    }
  }

  return v7;
}

- (void)executeDaemonOperationSaveAssetJobType
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetMediaAssetType];
  v4 = [(NSArray *)self->_assetCollectionInfos lastObject];
  currentAssetCollectionInfo = self->_currentAssetCollectionInfo;
  self->_currentAssetCollectionInfo = v4;

  v6 = [self->_currentAssetCollectionInfo GUID];
  if (v6)
  {
    [(PLCloudSharedAssetSaveJob *)self setCurrentCloudAssetGUID:v6];
    [(PLCloudSharedAssetSaveJob *)self setIsVideo:[self->_currentAssetCollectionInfo isVideo]];
    [(PLCloudSharedAssetSaveJob *)self setIsPhotoIris:[self->_currentAssetCollectionInfo isPhotoIris]];
    v7 = [(PLCloudSharingJob *)self transientPhotoLibrary];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PLCloudSharedAssetSaveJob_executeDaemonOperationSaveAssetJobType__block_invoke;
    v11[3] = &unk_1E75782F8;
    v12 = v7;
    v13 = v3;
    v11[4] = self;
    v8 = v7;
    [(PLCloudSharedAssetSaveJob *)self _performSaveTransactionAndWaitOnLibrary:v8 transaction:v11 completion:&__block_literal_global_74392];
  }

  else
  {
    if (MEMORY[0x19EAEE230]())
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"executeDaemonOperationSaveAssetJobType missing current asset collection information: %@/%@", self->_assetCollectionInfos, self->_currentAssetCollectionInfo}];
    }

    v8 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      assetCollectionInfos = self->_assetCollectionInfos;
      v10 = self->_currentAssetCollectionInfo;
      *buf = 138412546;
      v15 = assetCollectionInfos;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "executeDaemonOperationSaveAssetJobType missing current asset collection information: %@/%@", buf, 0x16u);
    }
  }
}

void __67__PLCloudSharedAssetSaveJob_executeDaemonOperationSaveAssetJobType__block_invoke(uint64_t a1)
{
  v2 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "executeDaemonOperationSaveAssetJobType will call _processSaveAssetWithPlaceholderKind", v7, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 placeHolderKindFromAssetMetadataType:*(a1 + 48)];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) currentFilePath];
  [v3 _processSaveAssetWithPlaceholderKind:v4 inLibrary:v5 withAssetDataFilePath:v6];
}

void __67__PLCloudSharedAssetSaveJob_executeDaemonOperationSaveAssetJobType__block_invoke_284()
{
  v0 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_19BF1F000, v0, OS_LOG_TYPE_DEFAULT, "executeDaemonOperationSaveAssetJobType did call saveJobAssetWithDispatchGroup", v1, 2u);
  }
}

- (signed)placeHolderKindFromAssetMetadataType:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 > 4)
  {
    switch(a3)
    {
      case 5uLL:
        return 7;
      case 6uLL:
        if ([(PLCloudSharedAssetSaveJob *)self isVideo])
        {
          return 10;
        }

        else
        {
          return 0;
        }

      case 7uLL:
        if ([(PLCloudSharedAssetSaveJob *)self isVideo])
        {
          return 9;
        }

        else
        {
          return 8;
        }
    }
  }

  else
  {
    switch(a3)
    {
      case 1uLL:
        return 5;
      case 2uLL:
        return 3;
      case 3uLL:
        return 4;
    }
  }

  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    v9 = 134218242;
    v10 = a3;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "unrecognized asset type %lu for asset %@", &v9, 0x16u);
  }

  return 1;
}

- (void)runDaemonSide
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    *buf = 138412546;
    v49 = v4;
    v50 = 2112;
    v51 = self;
    v5 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ : runDaemonSide %@", buf, 0x16u);
  }

  v6 = [(PLCloudSharedAssetSaveJob *)self jobType];
  if (v6 == 1)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = [(PLCloudSharedAssetSaveJob *)self currentFilePath];
    v24 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    v25 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    obj = [v22 stringWithFormat:@"path %@ asset GUID %@ album GUID %@ prioritize %d", v23, v24, v25, -[PLCloudSharingJob shouldPrioritize](self, "shouldPrioritize")];

    v26 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
      v28 = [(PLCloudSharingJob *)self shouldPrioritize];
      *buf = 138412546;
      v49 = v27;
      v50 = 1024;
      LODWORD(v51) = v28;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Saving asset %@ prioritize %d", buf, 0x12u);
    }

    v10 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    if ([(PLCloudSharedAssetSaveJob *)self isProcessingThumbnail])
    {
      v29 = 230;
    }

    else
    {
      v29 = 231;
    }

    v9 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:v10 albumGUID:v9 content:obj state:v29 error:0];
    goto LABEL_19;
  }

  if (v6)
  {
    goto LABEL_21;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(PLCloudSharedAssetSaveJob *)self assetCollectionInfos];
  v7 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v39 = *v44;
    v40 = self;
    v11 = self;
    do
    {
      v12 = 0;
      v13 = v9;
      v14 = v10;
      do
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * v12);
        v16 = objc_autoreleasePoolPush();
        v17 = [v15 GUID];
        v18 = MEMORY[0x1E696AEC0];
        v19 = [(PLCloudSharedAssetSaveJob *)v11 cloudPersonID];
        v20 = [(PLCloudSharedAssetSaveJob *)v11 cloudAlbumGUID];
        v10 = [v18 stringWithFormat:@"personID %@ album GUID %@ collection %@", v19, v20, v17];

        v9 = v17;
        v21 = [(PLCloudSharedAssetSaveJob *)v11 cloudAlbumGUID];
        [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:v9 albumGUID:v21 content:v10 state:205 error:0];

        objc_autoreleasePoolPop(v16);
        ++v12;
        v13 = v9;
        v14 = v10;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v8);
    self = v40;
LABEL_19:
  }

LABEL_21:
  v30 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudSharedAssetSaveJob runDaemonSide]"];
  v31 = MEMORY[0x1E696AAE0];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __42__PLCloudSharedAssetSaveJob_runDaemonSide__block_invoke;
  v41[3] = &unk_1E7578848;
  v41[4] = self;
  v42 = v30;
  v32 = v30;
  v33 = [v31 blockOperationWithBlock:v41];
  if ([(PLCloudSharingJob *)self shouldPrioritize])
  {
    v34 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
      *buf = 138412290;
      v49 = v35;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Setting prioritize for %@", buf, 0xCu);
    }

    [v33 setQueuePriority:4];
    v36 = [objc_opt_class() highPriorityOperationQueue];
  }

  else
  {
    v36 = [objc_opt_class() lowPriorityOperationQueue];
  }

  v37 = v36;
  [v36 addOperation:v33];
}

void __42__PLCloudSharedAssetSaveJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) jobType];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        [*(a1 + 32) executeDaemonOperationSaveAssetJobType];
      }
    }

    else
    {
      [*(a1 + 32) executeDaemonOperationSaveAssetMetadataForCollectionsJobType];
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        [*(a1 + 32) executeDaemonOperationDeleteAssetJobType];
        break;
      case 3:
        [*(a1 + 32) executeDaemonOperationReplaceRecentlyUploadedOriginalJobType];
        break;
      case 4:
        [*(a1 + 32) executeDaemonOperationDownloadPendingAssetsJobType];
        break;
    }
  }

  v4.receiver = *(a1 + 32);
  v4.super_class = PLCloudSharedAssetSaveJob;
  objc_msgSendSuper2(&v4, sel_runDaemonSide);
  [*(a1 + 40) stillAlive];
  objc_autoreleasePoolPop(v2);
}

- (void)setupSaveAssetMetadataForCollectionsJobForAssetCollections:(id)a3 album:(id)a4 personID:(id)a5 info:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(PLCloudSharedAssetSaveJob *)self setJobType:0];
  v22 = v11;
  v14 = [v11 GUID];
  [(PLCloudSharedAssetSaveJob *)self setCloudAlbumGUID:v14];

  [(PLCloudSharedAssetSaveJob *)self setCloudPersonID:v12];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [[AssetCollectionInfo alloc] initWithAssetCollection:*(*(&v23 + 1) + 8 * v20)];
        [v15 addObject:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    [(PLCloudSharedAssetSaveJob *)self setAssetCollectionInfos:v15];
  }

  [(PLCloudSharedAssetSaveJob *)self setMstreamdInfoDictionary:v13];
}

- (void)dealloc
{
  pendingDownloadNotifications = self->_pendingDownloadNotifications;
  self->_pendingDownloadNotifications = 0;

  v4.receiver = self;
  v4.super_class = PLCloudSharedAssetSaveJob;
  [(PLCloudSharedAssetSaveJob *)&v4 dealloc];
}

- (id)description
{
  v3 = [(PLCloudSharedAssetSaveJob *)self jobType];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = v5;
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_15;
      }

      v7 = [(PLCloudSharedAssetSaveJob *)self currentFilePath];
      v8 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
      v9 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetMediaAssetType];
      v10 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
      v11 = [(PLCloudSharedAssetSaveJob *)self cloudPersonID];
      v12 = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
      v13 = [v4 stringWithFormat:@"%@ (PLSaveAssetJobType filePath=%@ cloudAssetGUID=%@ cloudAssetMediaAssetType=%lu loudAlbumGUID=%@ cloudAlbumGUID=%@ info=%@ prioritize=%d) ", v6, v7, v8, v9, v10, v11, v12, -[PLCloudSharingJob shouldPrioritize](self, "shouldPrioritize")];
    }

    else
    {
      v7 = [(PLCloudSharedAssetSaveJob *)self assetCollectionInfos];
      v8 = [v7 valueForKey:@"GUID"];
      v15 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
      v16 = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
      v13 = [v4 stringWithFormat:@"%@ (PLSaveAssetMetadataForCollectionsJobType cloudAssetCollection GUIDS=%@ cloudAlbumGUID=%@ info=%@) ", v6, v8, v15, v16];
    }

LABEL_14:
    goto LABEL_17;
  }

  if (v3 == 2)
  {
    v7 = [(PLCloudSharedAssetSaveJob *)self cloudAssetGUIDsToDelete];
    v14 = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
    [v4 stringWithFormat:@"%@ (PLDeleteAssetJobType cloudAssetGUIDsToDelete=%@ info=%@) ", v6, v7, v14];
    v13 = LABEL_11:;

    goto LABEL_14;
  }

  if (v3 == 3)
  {
    v7 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    v14 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    [v4 stringWithFormat:@"%@ (PLReplaceRecentlyUploadedOriginalWithDerivative cloudAssetCollection=%@ cloudAlbumGUID=%@) ", v6, v7, v14];
    goto LABEL_11;
  }

  if (v3 != 4)
  {
LABEL_15:
    [v4 stringWithFormat:@"%@ unknown job type %ld ", v5, -[PLCloudSharedAssetSaveJob jobType](self, "jobType")];
    goto LABEL_16;
  }

  objc_msgSend(v4, "stringWithFormat:", @"%@ (PLDownloadPendingAssets "), v5, v18;
  v13 = LABEL_16:;
LABEL_17:

  return v13;
}

- (PLCloudSharedAssetSaveJob)initWithAssetsdClient:(id)a3
{
  v4.receiver = self;
  v4.super_class = PLCloudSharedAssetSaveJob;
  result = [(PLCloudSharingJob *)&v4 initWithAssetsdClient:a3];
  if (result)
  {
    result->_isVideo = 0;
  }

  return result;
}

- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = PLCloudSharedAssetSaveJob;
  v7 = [(PLCloudSharingJob *)&v21 initFromXPCObject:v6 libraryServicesManager:a4];
  if (v7)
  {
    v8 = PLStringFromXPCDictionary();
    [v7 setCurrentFilePath:v8];

    [v7 setCurrentCloudAssetMediaAssetType:{xpc_dictionary_get_int64(v6, propertyKeyCloudAssetMediaAssetType)}];
    [v7 setIsVideo:{xpc_dictionary_get_BOOL(v6, propertyKeyCloudAssetIsVideo)}];
    [v7 setIsPhotoIris:{xpc_dictionary_get_BOOL(v6, propertyKeyCloudAssetIsPhotoIris)}];
    v9 = PLStringFromXPCDictionary();
    [v7 setCurrentCloudAssetGUID:v9];

    v10 = PLStringFromXPCDictionary();
    [v7 setCloudAlbumGUID:v10];

    v11 = PLStringFromXPCDictionary();
    [v7 setCloudPersonID:v11];

    v12 = PLArrayFromXPCDictionary();
    [v7 setCloudAssetGUIDsToDelete:v12];

    v13 = PLDataFromXPCDictionary();
    if (v13)
    {
      v14 = MEMORY[0x1E696ACD0];
      v15 = MEMORY[0x1E695DFD8];
      v16 = objc_opt_class();
      v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
      v18 = [v14 pl_safeUnarchiveObjectFromData:v13 classes:v17];

      if (v18)
      {
        [v7 setAssetCollectionInfos:v18];
      }
    }

    v19 = PLDictionaryFromXPCDictionary();
    [v7 setMstreamdInfoDictionary:v19];

    [v7 setJobType:{xpc_dictionary_get_int64(v6, propertyKeyCloudAssetSaveJobType)}];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PLCloudSharedAssetSaveJob;
  [(PLDaemonJob *)&v16 encodeToXPCObject:v4];
  v5 = [(PLCloudSharedAssetSaveJob *)self currentFilePath];
  PLXPCDictionarySetString();

  v6 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
  PLXPCDictionarySetString();

  v7 = [(PLCloudSharedAssetSaveJob *)self cloudPersonID];
  PLXPCDictionarySetString();

  v8 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
  PLXPCDictionarySetString();

  xpc_dictionary_set_int64(v4, propertyKeyCloudAssetMediaAssetType, [(PLCloudSharedAssetSaveJob *)self currentCloudAssetMediaAssetType]);
  xpc_dictionary_set_BOOL(v4, propertyKeyCloudAssetIsVideo, [(PLCloudSharedAssetSaveJob *)self isVideo]);
  xpc_dictionary_set_BOOL(v4, propertyKeyCloudAssetIsPhotoIris, [(PLCloudSharedAssetSaveJob *)self isPhotoIris]);
  v9 = [(PLCloudSharedAssetSaveJob *)self cloudAssetGUIDsToDelete];
  PLXPCDictionarySetArray();

  v10 = [(PLCloudSharedAssetSaveJob *)self assetCollectionInfos];
  if (v10)
  {
    v15 = 0;
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v15];
    v12 = v15;
    if (!v11)
    {
      v13 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Failed to archive assetCollectionInfosData, error: %@", buf, 0xCu);
      }
    }

    PLXPCDictionarySetData();
  }

  v14 = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
  PLXPCDictionarySetDictionary();

  xpc_dictionary_set_int64(v4, propertyKeyCloudAssetSaveJobType, [(PLCloudSharedAssetSaveJob *)self jobType]);
}

+ (id)nextDCIMSaveFileURLForCloudPersonID:(id)a3 cloudAlbumGUID:(id)a4 pathManager:(id)a5 fileExtension:(id)a6 assetUUID:(id)a7
{
  v51 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    v17 = PLPhotoSharingGetLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v25 = "Error: missing cloudPersonID, cannot compute nextDCIMSaveFileURLForCloudPersonID";
LABEL_12:
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_13;
  }

  if (!v13)
  {
    v17 = PLPhotoSharingGetLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v25 = "Error: missing cloudAlbumGUID, cannot compute nextDCIMSaveFileURLForCloudPersonID";
    goto LABEL_12;
  }

  if (!v15)
  {
    v17 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Error: missing fileExtension, cannot compute nextDCIMSaveFileURLForCloudPersonID";
      goto LABEL_12;
    }

LABEL_13:
    v26 = 0;
    goto LABEL_25;
  }

  v40 = a1;
  v17 = [v14 photoDirectoryWithType:23];
  v18 = [v17 stringByAppendingPathComponent:v12];
  v19 = [v18 stringByAppendingPathComponent:v13];

  v43 = v19;
  v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v19 isDirectory:1];
  v46 = 0;
  v21 = *MEMORY[0x1E695DB20];
  LOBYTE(v18) = [v20 getResourceValue:&v46 forKey:*MEMORY[0x1E695DB20] error:0];
  v22 = v46;
  v23 = v22;
  if (v18)
  {
    v24 = v22;
  }

  else
  {
    v39 = v16;
    v27 = [MEMORY[0x1E696AC08] defaultManager];
    v45 = 0;
    v38 = v20;
    v28 = [v27 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v45];
    v29 = v45;

    if (v28)
    {
      v24 = v23;
      v20 = v38;
    }

    else
    {
      v44 = 0;
      v20 = v38;
      v30 = [v38 getResourceValue:&v44 forKey:v21 error:0];
      v24 = v44;

      if ((v30 & 1) == 0)
      {
        v42 = v24;
        v35 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = [v38 path];
          *buf = 138412546;
          v48 = v36;
          v49 = 2112;
          v50 = v29;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "ERROR: Unable to create directory %@: %@", buf, 0x16u);
        }

        v34 = v38;
        v26 = 0;
        v16 = v39;
        v24 = v42;
        goto LABEL_24;
      }
    }

    v16 = v39;
  }

  if ([v14 isUBF])
  {
    v29 = [v16 uppercaseString];
    [v20 URLByAppendingPathComponent:v29];
    v41 = v14;
    v31 = v24;
    v33 = v32 = v16;
    [v33 URLByAppendingPathExtension:v15];
    v26 = v34 = v20;

    v16 = v32;
    v24 = v31;
    v14 = v41;
  }

  else
  {
    v29 = [v40 _dcimDirectoryForFileURL:v20];
    [v29 nextAvailableFileURLWithExtension:v15];
    v26 = v34 = v20;
  }

LABEL_24:

LABEL_25:

  return v26;
}

+ (id)_dcimDirectoryForFileURL:(id)a3
{
  v3 = a3;
  pl_dispatch_once();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__74294;
  v11 = __Block_byref_object_dispose__74295;
  v12 = 0;
  v6 = v3;
  pl_dispatch_sync();
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__PLCloudSharedAssetSaveJob__dcimDirectoryForFileURL___block_invoke_2(uint64_t a1)
{
  v2 = [_dcimDirectoryForFileURL__dcimDictionary objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(a1 + 32) path];
    v6 = [MEMORY[0x1E69BF2F8] cloudPlistName];
    v10 = [v5 stringByAppendingPathComponent:v6];

    v7 = [objc_alloc(MEMORY[0x1E69BF2F8]) initWithDirectoryURL:*(a1 + 32) subDirectorySuffix:@"CLOUD" perDirectoryLimit:2000 userInfoPath:v10];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [_dcimDirectoryForFileURL__dcimDictionary setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
  }
}

void __54__PLCloudSharedAssetSaveJob__dcimDirectoryForFileURL___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PLCloudSharedAssetSaveJob.DCIM", 0);
  v1 = _dcimDirectoryForFileURL__isolationQueue;
  _dcimDirectoryForFileURL__isolationQueue = v0;

  v2 = objc_opt_new();
  v3 = _dcimDirectoryForFileURL__dcimDictionary;
  _dcimDirectoryForFileURL__dcimDictionary = v2;
}

+ (id)pathForInFlightAssetCollectionWithGUID:(id)a3 mediaAssetType:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  pl_dispatch_once();
  if (pathForInFlightAssetCollectionWithGUID_mediaAssetType__inflightDirectory)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    if (([v6 fileExistsAtPath:pathForInFlightAssetCollectionWithGUID_mediaAssetType__inflightDirectory]& 1) == 0)
    {
      v7 = [MEMORY[0x1E696AC08] defaultManager];
      v17 = 0;
      v8 = [v7 createDirectoryAtPath:pathForInFlightAssetCollectionWithGUID_mediaAssetType__inflightDirectory withIntermediateDirectories:1 attributes:0 error:&v17];
      v9 = v17;

      if ((v8 & 1) == 0)
      {
        v13 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = pathForInFlightAssetCollectionWithGUID_mediaAssetType__inflightDirectory;
          v20 = 2112;
          v21 = v9;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "ERROR: Unable to create directory for shared album %@: %@", buf, 0x16u);
        }

        v12 = 0;
        goto LABEL_20;
      }
    }

    v10 = v5;
    v9 = v10;
    if (a4 == 7)
    {
      v15 = @"MOV";
    }

    else
    {
      if (a4 == 5)
      {
        v11 = @"poster";
      }

      else
      {
        if (a4 != 2)
        {
          v15 = @"JPG";
          goto LABEL_19;
        }

        v11 = @"thumb";
      }

      v14 = [v10 stringByAppendingPathExtension:v11];

      v15 = @"JPG";
      v9 = v14;
    }

LABEL_19:
    v13 = [pathForInFlightAssetCollectionWithGUID_mediaAssetType__inflightDirectory stringByAppendingPathComponent:v9];
    v12 = [v13 stringByAppendingPathExtension:v15];
LABEL_20:

    goto LABEL_21;
  }

  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "ERROR: INFLIGHT directory does not exist for shared album", buf, 2u);
  }

  v12 = 0;
LABEL_21:

  return v12;
}

void __83__PLCloudSharedAssetSaveJob_pathForInFlightAssetCollectionWithGUID_mediaAssetType___block_invoke()
{
  v3 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v0 = [v3 photoDirectoryWithType:23 additionalPathComponents:@"INFLIGHT"];
  v1 = [v0 copy];
  v2 = pathForInFlightAssetCollectionWithGUID_mediaAssetType__inflightDirectory;
  pathForInFlightAssetCollectionWithGUID_mediaAssetType__inflightDirectory = v1;
}

+ (id)_lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID:(id)a3 cloudPersonID:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  pl_dispatch_once();
  v7 = [v5 stringByAppendingString:v6];
  v8 = [_lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID_cloudPersonID__cacheAlbumInfo objectForKey:v7];
  if (!v8)
  {
    v9 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v10 = [v9 privateCacheDirectoryWithSubType:3];

    v11 = [PLCloudSharedAlbum lightweightReimportDirectoryNameWithGUID:v5 cloudPersonID:v6];
    v12 = [v10 stringByAppendingPathComponent:v11];
    v13 = [v12 stringByAppendingPathComponent:*MEMORY[0x1E69BFEE8]];

    v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v13];
    if (!v8)
    {
      v14 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Missing reimport cache album info for album: %@ (path %@)", &v16, 0x16u);
      }

      v8 = &unk_1F0FC0780;
    }

    [_lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID_cloudPersonID__cacheAlbumInfo setObject:v8 forKey:v7 cost:{objc_msgSend(v8, "count")}];
  }

  return v8;
}

void __111__PLCloudSharedAssetSaveJob__lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID_cloudPersonID___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID_cloudPersonID__cacheAlbumInfo;
  _lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID_cloudPersonID__cacheAlbumInfo = v0;
}

+ (BOOL)_lightweightReimportCacheDirectoryExists
{
  if (_lightweightReimportCacheDirectoryExists__skipCacheDirCheck)
  {
    return 0;
  }

  v8 = 0;
  v3 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v4 = [v3 privateCacheDirectoryWithSubType:3];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v8];
  v2 = v6 & v8;

  if ((v2 & 1) == 0)
  {
    _lightweightReimportCacheDirectoryExists__skipCacheDirCheck = 1;
  }

  return v2;
}

+ (void)replaceRecentlyUploadedOriginalWithDerivativeForCollection:(id)a3 inAlbum:(id)a4 personID:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = [a1 newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd];
    [v12 setJobType:3];
    v13 = [v9 GUID];
    [v12 setCloudAlbumGUID:v13];

    [v12 setCloudPersonID:v11];
    -[NSObject setIsVideo:](v12, "setIsVideo:", [v8 isVideo]);
    -[NSObject setIsPhotoIris:](v12, "setIsPhotoIris:", [v8 isPhotoIris]);
    v14 = [v8 GUID];
    [v12 setCurrentCloudAssetGUID:v14];

    v15 = [[AssetCollectionInfo alloc] initWithAssetCollection:v8];
    v17 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [v12 setAssetCollectionInfos:v16];

    [v12 runAndWaitForMessageToBeSent];
LABEL_7:

    goto LABEL_8;
  }

  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    v19 = objc_opt_class();
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v11;
    v15 = v19;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "%@:replaceRecentlyUploadedOriginalWithDerivativeForCollection:%@ inAlbum:%@ personID:%@ can't have nil arguments", buf, 0x2Au);
    goto LABEL_7;
  }

LABEL_8:
}

+ (void)deleteCloudSharedAssetsWithCloudGUIDs:(id)a3 inAlbum:(id)a4 info:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if ([v12 count])
  {
    v10 = [a1 newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd];
    [v10 setJobType:2];
    [v10 setCloudAssetGUIDsToDelete:v12];
    v11 = [v8 GUID];
    [v10 setCloudAlbumGUID:v11];

    [v10 setMstreamdInfoDictionary:v9];
    [v10 runAndWaitForMessageToBeSent];
  }
}

+ (void)saveCloudSharedAssetAtPath:(id)a3 forAssetCollection:(id)a4 mediaAssetType:(unint64_t)a5 albumGUID:(id)a6 personID:(id)a7 info:(id)a8 shouldPrioritize:(BOOL)a9
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v16 GUID];
  v21 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v21 fileExistsAtPath:v15] && objc_msgSend(v20, "length"))
  {

    if (v18)
    {
      v22 = [a1 newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd];
      [v22 setJobType:1];
      [v22 setCurrentFilePath:v15];
      [v22 setCloudAlbumGUID:v17];
      [v22 setCurrentCloudAssetMediaAssetType:a5];
      [v22 setIsVideo:a5 == 5];
      [v22 setCurrentCloudAssetGUID:v20];
      [v22 setCloudPersonID:v18];
      [v22 setMstreamdInfoDictionary:v19];
      [v22 setShouldPrioritize:a9];
      v23 = [[AssetCollectionInfo alloc] initWithAssetCollection:v16];
      v25 = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      [v22 setAssetCollectionInfos:v24];

      [v22 runAndWaitForMessageToBeSent];
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  v22 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = objc_opt_class();
    v23 = v27;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "%@:saveCloudSharedAssetAtPath: missing required parameters", buf, 0xCu);
    goto LABEL_8;
  }

LABEL_9:
}

+ (void)downloadPendingAssetsForPersonID:(id)a3 info:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [a1 newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd];
    [v8 setJobType:4];
    [v8 setCloudPersonID:v6];
    [v8 setMstreamdInfoDictionary:v7];
    [v8 runAndWaitForMessageToBeSent];
  }

  else
  {
    v8 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v9 = v11;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "%@:downloadPendingAssets personID: can't have nil arguments", &v10, 0xCu);
    }
  }
}

+ (void)assetsdProcessMetadataForAssetCollections:(id)a3 inAlbum:(id)a4 personID:(id)a5 info:(id)a6 libraryServicesManager:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if ((PLIsReallyAssetsd() & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PLCloudSharedAssetSaveJob.m" lineNumber:439 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd()"}];

    if (v17)
    {
      goto LABEL_3;
    }

LABEL_12:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PLCloudSharedAssetSaveJob.m" lineNumber:440 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];

    goto LABEL_3;
  }

  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_3:
  v18 = [v13 count];
  if (v15 && v14 && v18)
  {
    v19 = [[PLCloudSharedAssetSaveJob alloc] initWithAssetsdClient:0];
    [(PLCloudSharedAssetSaveJob *)v19 setupSaveAssetMetadataForCollectionsJobForAssetCollections:v13 album:v14 personID:v15 info:v16];
    [(PLDaemonJob *)v19 setLibraryServicesManager:v17];
    [(PLCloudSharedAssetSaveJob *)v19 runDaemonSide];
  }

  else
  {
    v20 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v25 = objc_opt_class();
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      v21 = v25;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "%@:assetsdProcessMetadataForAssetCollections:%@ inAlbum:%@ personID:%@ can't have nil arguments", buf, 0x2Au);
    }
  }
}

+ (void)processMetadataForAssetCollections:(id)a3 inAlbum:(id)a4 personID:(id)a5 info:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (PLIsAssetsd())
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLCloudSharedAssetSaveJob.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"!PLIsAssetsd()"}];
  }

  v15 = [v11 count];
  if (v13 && v12 && v15)
  {
    v16 = [a1 newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd];
    [v16 setupSaveAssetMetadataForCollectionsJobForAssetCollections:v11 album:v12 personID:v13 info:v14];
    [v16 runAndWaitForMessageToBeSent];
  }

  else
  {
    v17 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v18 = v21;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "%@:processMetadataFromClientProcessForAssetCollections:%@ inAlbum:%@ personID:%@ can't have nil arguments", buf, 0x2Au);
    }
  }
}

+ (id)newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd
{
  if (PLIsAssetsd())
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PLCloudSharedAssetSaveJob.m" lineNumber:395 description:@"This cannot be called from assetsd"];
  }

  v4 = [PLCloudSharedAssetSaveJob alloc];
  v5 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v6 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:v5];
  v7 = [(PLCloudSharedAssetSaveJob *)v4 initWithAssetsdClient:v6];

  return v7;
}

@end
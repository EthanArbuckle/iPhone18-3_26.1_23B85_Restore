@interface PLCloudSharedAssetSaveJob
+ (BOOL)_lightweightReimportCacheDirectoryExists;
+ (id)_dcimDirectoryForFileURL:(id)l;
+ (id)_lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID:(id)d cloudPersonID:(id)iD;
+ (id)newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd;
+ (id)nextDCIMSaveFileURLForCloudPersonID:(id)d cloudAlbumGUID:(id)iD pathManager:(id)manager fileExtension:(id)extension assetUUID:(id)uID;
+ (id)pathForInFlightAssetCollectionWithGUID:(id)d mediaAssetType:(unint64_t)type;
+ (void)assetsdProcessMetadataForAssetCollections:(id)collections inAlbum:(id)album personID:(id)d info:(id)info libraryServicesManager:(id)manager;
+ (void)deleteCloudSharedAssetsWithCloudGUIDs:(id)ds inAlbum:(id)album info:(id)info;
+ (void)downloadPendingAssetsForPersonID:(id)d info:(id)info;
+ (void)processMetadataForAssetCollections:(id)collections inAlbum:(id)album personID:(id)d info:(id)info;
+ (void)replaceRecentlyUploadedOriginalWithDerivativeForCollection:(id)collection inAlbum:(id)album personID:(id)d;
+ (void)saveCloudSharedAssetAtPath:(id)path forAssetCollection:(id)collection mediaAssetType:(unint64_t)type albumGUID:(id)d personID:(id)iD info:(id)info shouldPrioritize:(BOOL)prioritize;
- (BOOL)_processInflightAsset:(id)asset mediaAssetType:(unint64_t)type;
- (BOOL)_processSaveAssetWithPlaceholderKind:(signed __int16)kind inLibrary:(id)library withAssetDataFilePath:(id)path;
- (PLCloudSharedAssetSaveJob)initWithAssetsdClient:(id)client;
- (id)_createPlaceHolderInSharedAlbum:(id)album collectionShare:(id)share;
- (id)description;
- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager;
- (signed)attemptLightweightReimportAssetDataInLibrary:(id)library;
- (signed)placeHolderKindFromAssetMetadataType:(unint64_t)type;
- (unint64_t)_insertionIndexForAsset:(id)asset inAlbum:(id)album;
- (void)_addDownloadNotification:(id)notification;
- (void)_incrementDerivativesCount:(int64_t)count thumbnailsCount:(int64_t)thumbnailsCount;
- (void)_performSaveTransactionAndWaitOnLibrary:(id)library transaction:(id)transaction completion:(id)completion;
- (void)_prefetchLimitForDerivatives:(int64_t *)derivatives thumbnails:(int64_t *)thumbnails;
- (void)_processInFlightCommentsForAsset:(id)asset inAlbum:(id)album inCollectionShare:(id)share inPhotoLibrary:(id)library;
- (void)_updateAsset:(id)asset withImageFileURL:(id)l;
- (void)_updatePhotoIrisPropertiesIfNecessaryForAsset:(id)asset inManagedObjectContext:(id)context;
- (void)dealloc;
- (void)encodeToXPCObject:(id)object;
- (void)executeDaemonOperationDeleteAssetJobType;
- (void)executeDaemonOperationDownloadPendingAssetsJobType;
- (void)executeDaemonOperationReplaceRecentlyUploadedOriginalJobType;
- (void)executeDaemonOperationSaveAssetJobType;
- (void)executeDaemonOperationSaveAssetMetadataForCollectionsJobType;
- (void)runDaemonSide;
- (void)setupSaveAssetMetadataForCollectionsJobForAssetCollections:(id)collections album:(id)album personID:(id)d info:(id)info;
@end

@implementation PLCloudSharedAssetSaveJob

- (unint64_t)_insertionIndexForAsset:(id)asset inAlbum:(id)album
{
  assetCopy = asset;
  albumCopy = album;
  assets = [albumCopy assets];
  v8 = [assets count];

  sortingComparator = [albumCopy sortingComparator];
  if (sortingComparator)
  {
    assets2 = [albumCopy assets];
    array = [assets2 array];
    v8 = [array indexOfObject:assetCopy inSortedRange:0 options:v8 usingComparator:{1024, sortingComparator}];
  }

  return v8;
}

- (void)executeDaemonOperationReplaceRecentlyUploadedOriginalJobType
{
  transientPhotoLibrary = [(PLCloudSharingJob *)self transientPhotoLibrary];
  isVideo = [(PLCloudSharedAssetSaveJob *)self isVideo];
  isPhotoIris = [(PLCloudSharedAssetSaveJob *)self isPhotoIris];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__PLCloudSharedAssetSaveJob_executeDaemonOperationReplaceRecentlyUploadedOriginalJobType__block_invoke;
  v10[3] = &unk_1E7576AC8;
  v12 = isVideo;
  v10[4] = self;
  v11 = transientPhotoLibrary;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PLCloudSharedAssetSaveJob_executeDaemonOperationReplaceRecentlyUploadedOriginalJobType__block_invoke_395;
  v7[3] = &unk_1E7571418;
  v7[4] = self;
  v8 = isVideo;
  v9 = isPhotoIris;
  v6 = transientPhotoLibrary;
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
  transientPhotoLibrary = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PLCloudSharedAssetSaveJob_executeDaemonOperationDeleteAssetJobType__block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v9 = transientPhotoLibrary;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PLCloudSharedAssetSaveJob_executeDaemonOperationDeleteAssetJobType__block_invoke_388;
  v5[3] = &unk_1E7578848;
  v6 = v9;
  selfCopy = self;
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

- (void)_incrementDerivativesCount:(int64_t)count thumbnailsCount:(int64_t)thumbnailsCount
{
  v27[3] = *MEMORY[0x1E69E9840];
  libraryServicesManager = [(PLDaemonJob *)self libraryServicesManager];
  pathManager = [libraryServicesManager pathManager];
  v6 = [pathManager photoDirectoryWithType:25 createIfNeeded:1 error:0];
  v7 = [v6 stringByAppendingPathComponent:@"sharedAssetsPrefetchCount.plist"];

  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v7];
  v9 = [v8 objectForKey:@"date"];
  v10 = [v8 objectForKey:@"thumbnailsCount"];
  integerValue = [v10 integerValue];

  v12 = [v8 objectForKey:@"derivativesCount"];
  integerValue2 = [v12 integerValue];

  if (!v9 || ([MEMORY[0x1E695DF00] date], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "timeIntervalSinceDate:", v9), v16 = v15, v14, v16 >= 86400.0))
  {
    date = [MEMORY[0x1E695DF00] date];

    integerValue = 0;
    v9 = date;
  }

  v27[0] = v9;
  v26[0] = @"date";
  v26[1] = @"thumbnailsCount";
  thumbnailsCount = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + thumbnailsCount];
  v27[1] = thumbnailsCount;
  v26[2] = @"derivativesCount";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue2 + count];
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

- (void)_prefetchLimitForDerivatives:(int64_t *)derivatives thumbnails:(int64_t *)thumbnails
{
  v50 = *MEMORY[0x1E69E9840];
  if (derivatives)
  {
    if (thumbnails)
    {
      *derivatives = 0;
      *thumbnails = 0;
      if (PLPlatformSharedAlbumPrefetchSupported())
      {
        libraryServicesManager = [(PLDaemonJob *)self libraryServicesManager];
        pathManager = [libraryServicesManager pathManager];
        v9 = [pathManager photoDirectoryWithType:25 createIfNeeded:0 error:0];
        v10 = [v9 stringByAppendingPathComponent:@"sharedAssetsPrefetchCount.plist"];

        v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v10];
        v12 = [v11 objectForKey:@"date"];
        v13 = [v11 objectForKey:@"thumbnailsCount"];
        integerValue = [v13 integerValue];

        v15 = [v11 objectForKey:@"derivativesCount"];
        integerValue2 = [v15 integerValue];

        if (v12 && ([MEMORY[0x1E695DF00] date], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "timeIntervalSinceDate:", v12), v19 = v18, v17, v19 < 86400.0))
        {
          v45 = integerValue;
        }

        else
        {
          integerValue2 = 0;
          v45 = 0;
        }

        v20 = MGGetSInt64Answer();
        v21 = MGGetBoolAnswer();
        processInfo = [MEMORY[0x1E696AE30] processInfo];
        isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

        if (+[PLPhotoSharingHelper debugDownloadMetadataOnly])
        {
          libraryURL = PLPhotoSharingGetLog();
          if (os_log_type_enabled(libraryURL, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v25 = "skip downloading shared assets since download metadata only is requested.";
LABEL_14:
            v26 = libraryURL;
            v27 = 2;
LABEL_15:
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
            goto LABEL_16;
          }

          goto LABEL_16;
        }

        if (isLowPowerModeEnabled)
        {
          libraryURL = PLPhotoSharingGetLog();
          if (os_log_type_enabled(libraryURL, OS_LOG_TYPE_DEFAULT))
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
          libraryURL = PLPhotoSharingGetLog();
          if (!os_log_type_enabled(libraryURL, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          *buf = 134218240;
          v47 = v20;
          v48 = 1024;
          v49 = 20;
          v25 = "skip downloading shared assets as battery capacity %lld is less than %d";
          v26 = libraryURL;
          v27 = 18;
          goto LABEL_15;
        }

        v28 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
        pathManager2 = [v28 pathManager];
        libraryURL = [pathManager2 libraryURL];

        v30 = MEMORY[0x1E69BF208];
        path = [libraryURL path];
        v32 = [v30 diskSpaceAvailableForPath:path];

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

            *derivatives = 0x7FFFFFFFFFFFFFFFLL;
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
              *thumbnails = (v42 - v45) & ~((v42 - v45) >> 63);
              v43 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                v44 = *thumbnails;
                *buf = 134217984;
                v47 = v44;
                _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "On cellular connection, allows %ld thumbnails to be prefetched", buf, 0xCu);
              }
            }

            else
            {
              *thumbnails = 0x7FFFFFFFFFFFFFFFLL;
            }

            goto LABEL_16;
          }

          if (v32 > 0x3FFFFFFF)
          {
            if (+[PLPhotoSharingHelper isCellularConnection])
            {
              v39 = +[PLPhotoSharingHelper maxNumDerivativesToPrefetchPerDay];
              *derivatives = (v39 - integerValue2) & ~((v39 - integerValue2) >> 63);
              v40 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = *thumbnails;
                *buf = 134217984;
                v47 = v41;
                _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "On cellular connection, allows %ld derivatives to be prefetched", buf, 0xCu);
              }
            }

            else
            {
              *derivatives = +[PLPhotoSharingHelper maxNumDerivativesToDownloadPerPush];
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

- (BOOL)_processInflightAsset:(id)asset mediaAssetType:(unint64_t)type
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  cloudAssetGUID = [assetCopy cloudAssetGUID];
  v8 = [PLCloudSharedAssetSaveJob pathForInFlightAssetCollectionWithGUID:cloudAssetGUID mediaAssetType:type];
  if (v8 && ([MEMORY[0x1E696AC08] defaultManager], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "fileExistsAtPath:", v8), v9, v10))
  {
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = assetCopy;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Inflight file for asset %@ already exists at %@. Attempting to import directly", &v21, 0x16u);
    }

    collectionShare = [assetCopy collectionShare];
    scopeIdentifier = [collectionShare scopeIdentifier];

    if (scopeIdentifier)
    {
      [(PLCloudSharedAssetSaveJob *)self setCurrentCloudAssetGUID:cloudAssetGUID];
      [(PLCloudSharedAssetSaveJob *)self setCloudAlbumGUID:scopeIdentifier];
      -[PLCloudSharedAssetSaveJob setIsVideo:](self, "setIsVideo:", [assetCopy isVideo]);
      v14 = [(PLCloudSharedAssetSaveJob *)self placeHolderKindFromAssetMetadataType:type];
      photoLibrary = [assetCopy photoLibrary];
      v16 = [(PLCloudSharedAssetSaveJob *)self _processSaveAssetWithPlaceholderKind:v14 inLibrary:photoLibrary withAssetDataFilePath:v8];

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

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtPath:v8 error:0];
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
    transientPhotoLibrary = [(PLCloudSharingJob *)self transientPhotoLibrary];
    cloudPersonID = [(PLCloudSharedAssetSaveJob *)self cloudPersonID];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__PLCloudSharedAssetSaveJob_executeDaemonOperationDownloadPendingAssetsJobType__block_invoke;
    v7[3] = &unk_1E7576428;
    v8 = transientPhotoLibrary;
    selfCopy = self;
    v11 = *(&v14 + 1);
    v12 = v14;
    v10 = cloudPersonID;
    v6 = cloudPersonID;
    v3 = transientPhotoLibrary;
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
  transientPhotoLibrary = [(PLCloudSharingJob *)self transientPhotoLibrary];
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
  v5 = transientPhotoLibrary;
  v12 = v5;
  v14 = v18;
  v15 = v16;
  v13 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PLCloudSharedAssetSaveJob_executeDaemonOperationSaveAssetMetadataForCollectionsJobType__block_invoke_352;
  v7[3] = &unk_1E7578820;
  v6 = v13;
  selfCopy = self;
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

- (void)_performSaveTransactionAndWaitOnLibrary:(id)library transaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__PLCloudSharedAssetSaveJob__performSaveTransactionAndWaitOnLibrary_transaction_completion___block_invoke;
  v10[3] = &unk_1E7577C08;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [library performTransactionAndWait:transaction completionHandler:v10];
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

- (void)_addDownloadNotification:(id)notification
{
  notificationCopy = notification;
  pendingDownloadNotifications = self->_pendingDownloadNotifications;
  v8 = notificationCopy;
  if (!pendingDownloadNotifications)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_pendingDownloadNotifications;
    self->_pendingDownloadNotifications = v6;

    notificationCopy = v8;
    pendingDownloadNotifications = self->_pendingDownloadNotifications;
  }

  [(NSMutableArray *)pendingDownloadNotifications addObject:notificationCopy];
}

- (signed)attemptLightweightReimportAssetDataInLibrary:(id)library
{
  v43 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  cloudAlbumGUID = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
  cloudPersonID = [(PLCloudSharedAssetSaveJob *)self cloudPersonID];
  currentCloudAssetGUID = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
  v8 = [objc_opt_class() _lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID:cloudAlbumGUID cloudPersonID:cloudPersonID];
  v9 = [v8 objectForKey:currentCloudAssetGUID];
  v10 = v9;
  if (v9)
  {
    v37 = libraryCopy;
    v11 = [v9 objectForKey:@"cloudPlaceholderKind"];
    v12 = v11;
    v36 = v8;
    if (v11)
    {
      intValue = [v11 intValue];
    }

    else
    {
      v14 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v40 = currentCloudAssetGUID;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Missing placeholder kind value for asset with cloudAssetGUID %@, skipping lightweight reimport of unknown cache data", buf, 0xCu);
      }

      intValue = 0;
    }

    v33 = cloudAlbumGUID;
    v34 = cloudPersonID;
    v15 = [PLCloudSharedAlbum lightweightReimportDirectoryNameWithGUID:cloudAlbumGUID cloudPersonID:cloudPersonID];
    v16 = [PLManagedAsset lightweightReimportFileNameWithGUID:currentCloudAssetGUID type:0];
    libraryServicesManager = [(PLDaemonJob *)self libraryServicesManager];
    pathManager = [libraryServicesManager pathManager];
    v19 = [pathManager privateCacheDirectoryWithSubType:3];
    v35 = v15;
    v20 = [v19 stringByAppendingPathComponent:v15];

    v21 = v16;
    v32 = v20;
    v22 = [v20 stringByAppendingPathComponent:v16];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v24 = defaultManager;
    if (v22 && [defaultManager fileExistsAtPath:v22 isDirectory:0])
    {
      if (v12 && intValue <= 7u && ((1 << intValue) & 0x98) != 0)
      {
        v25 = PLPhotoSharingGetLog();
        cloudPersonID = v34;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          currentCloudAssetMediaAssetType = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetMediaAssetType];
          *buf = 67109890;
          *v40 = intValue;
          *&v40[4] = 2048;
          *&v40[6] = currentCloudAssetMediaAssetType;
          *&v40[14] = 2112;
          *&v40[16] = currentCloudAssetGUID;
          v41 = 2112;
          v42 = v22;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "attemptLightweightReimportAssetWithPlaceholderKind:%i mediaAssetType: %lu GUID: %@ cachePath: %@", buf, 0x26u);
        }

        cloudAlbumGUID = v33;
        if ([(PLCloudSharedAssetSaveJob *)self _processSaveAssetWithPlaceholderKind:intValue inLibrary:v37 withAssetDataFilePath:v22])
        {
          goto LABEL_29;
        }

        v27 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v40 = currentCloudAssetGUID;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "lightweight reimport failed for asset %@", buf, 0xCu);
        }
      }

      else
      {
        v28 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v40 = currentCloudAssetGUID;
          *&v40[8] = 2112;
          *&v40[10] = v22;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Cannot reimport chached data for asset %@: removing cached image file at path: %@", buf, 0x16u);
        }

        v38 = 0;
        v29 = [v24 removeItemAtPath:v22 error:&v38];
        v27 = v38;
        cloudPersonID = v34;
        if ((v29 & 1) == 0)
        {
          v30 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v40 = currentCloudAssetGUID;
            *&v40[8] = 2112;
            *&v40[10] = v22;
            _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to remove cached asset data for %@ from path: %@", buf, 0x16u);
          }
        }

        v21 = v16;
        cloudAlbumGUID = v33;
      }

      intValue = 0;
    }

    else
    {
      intValue = 0;
      cloudAlbumGUID = v33;
      cloudPersonID = v34;
    }

LABEL_29:

    v8 = v36;
    libraryCopy = v37;
    goto LABEL_30;
  }

  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v40 = currentCloudAssetGUID;
    *&v40[8] = 2112;
    *&v40[10] = cloudAlbumGUID;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Cloud shared asset %@ not registered with album %@", buf, 0x16u);
  }

  intValue = 0;
LABEL_30:

  return intValue;
}

- (void)_updatePhotoIrisPropertiesIfNecessaryForAsset:(id)asset inManagedObjectContext:(id)context
{
  assetCopy = asset;
  if ([self->_currentAssetCollectionInfo isPhotoIris])
  {
    if (([assetCopy isPhotoIris] & 1) == 0)
    {
      [assetCopy setKindSubtype:2];
    }

    if ([assetCopy playbackStyle] != 3)
    {
      [assetCopy setPlaybackStyle:3];
    }

    if (![assetCopy videoCpDurationValue])
    {
      metaData = [self->_currentAssetCollectionInfo metaData];
      v7 = [metaData objectForKeyedSubscript:*MEMORY[0x1E6998018]];

      if (v7)
      {
        memset(&v15, 0, sizeof(v15));
        [v7 doubleValue];
        CMTimeMakeWithSeconds(&v15, v8, 600);
        v14 = v15;
        [assetCopy setPhotoIrisVideoDuration:&v14];
      }

      metaData2 = [self->_currentAssetCollectionInfo metaData];
      v10 = [metaData2 objectForKeyedSubscript:*MEMORY[0x1E6998010]];

      if (v10)
      {
        memset(&v15, 0, sizeof(v15));
        [v10 doubleValue];
        CMTimeMakeWithSeconds(&v15, v11, 600);
        v14 = v15;
        [assetCopy setPhotoIrisStillDisplayTime:&v14];
      }

      metaData3 = [self->_currentAssetCollectionInfo metaData];
      v13 = [metaData3 objectForKeyedSubscript:*MEMORY[0x1E6998008]];

      if (v13)
      {
        [assetCopy setMediaGroupUUID:v13];
      }
    }
  }
}

- (void)_updateAsset:(id)asset withImageFileURL:(id)l
{
  v28 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  lCopy = l;
  v8 = objc_alloc(MEMORY[0x1E69C0718]);
  libraryServicesManager = [(PLDaemonJob *)self libraryServicesManager];
  libraryBundle = [libraryServicesManager libraryBundle];
  timeZoneLookup = [libraryBundle timeZoneLookup];
  v12 = [v8 initWithImageURL:lCopy contentType:0 options:13 timeZoneLookup:timeZoneLookup cacheImageSource:1 cacheImageData:1];

  if (PLPlatformExtendedAttributesSupported())
  {
    [assetCopy setImageInfoFromOriginalImageMetadata:v12];
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412546;
      v25 = assetCopy;
      v26 = 2112;
      v27 = lCopy;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Setting the image info for asset %@ with %@", &v24, 0x16u);
    }
  }

  imageSource = [v12 imageSource];
  imageData = [v12 imageData];
  [assetCopy generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:imageSource imageData:imageData forceSRGBConversion:0];

  v16 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [assetCopy uuid];
    v24 = 138412546;
    v25 = uuid;
    v26 = 2112;
    v27 = lCopy;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Generated new thumbnail for asset %@ with %@", &v24, 0x16u);
  }

  location = [assetCopy location];

  if (!location)
  {
    gpsLocation = [v12 gpsLocation];
    [assetCopy setLocation:gpsLocation];
  }

  longDescription = [assetCopy longDescription];

  if (!longDescription)
  {
    captionAbstract = [v12 captionAbstract];
    [assetCopy setLongDescription:captionAbstract];
  }

  accessibilityDescription = [assetCopy accessibilityDescription];

  if (!accessibilityDescription)
  {
    artworkContentDescription = [v12 artworkContentDescription];
    [assetCopy setAccessibilityDescription:artworkContentDescription];
  }
}

- (BOOL)_processSaveAssetWithPlaceholderKind:(signed __int16)kind inLibrary:(id)library withAssetDataFilePath:(id)path
{
  kindCopy = kind;
  v144[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  pathCopy = path;
  v112 = pathCopy;
  if (pathCopy)
  {
    v120 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
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

  currentCloudAssetGUID = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
  cloudAlbumGUID = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
  managedObjectContext = [libraryCopy managedObjectContext];
  v12 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:cloudAlbumGUID includeTrashed:0 inManagedObjectContext:managedObjectContext];

  if (v12)
  {
    v144[0] = currentCloudAssetGUID;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v144 count:1];
    cloudAlbumGUID3 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v13 inLibrary:libraryCopy];

    if ([cloudAlbumGUID3 count] >= 2)
    {
      v15 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v137 = currentCloudAssetGUID;
        v138 = 2112;
        v139 = cloudAlbumGUID3;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "WARNING: Found more than one asset with cloudAssetGUID %@, returning last one in array %@", buf, 0x16u);
      }
    }

    lastObject = [cloudAlbumGUID3 lastObject];
    v17 = lastObject;
    if (!lastObject)
    {
      v63 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v137 = currentCloudAssetGUID;
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_ERROR, "Couldn't find asset with cloudAssetGUID %{public}@ ", buf, 0xCu);
      }

      v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ERROR: couldn't find asset with cloudAssetGUID %@ ", objc_opt_class(), currentCloudAssetGUID];
      v117 = 0;
      v111 = 0;
      v62 = 197704;
      goto LABEL_97;
    }

    cloudSharedPlaceholderKind = [lastObject cloudSharedPlaceholderKind];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [(__CFString *)v120 path];
    v19 = [defaultManager fileExistsAtPath:path];

    if ((v19 & 1) == 0)
    {
      v64 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        path2 = [(__CFString *)v120 path];
        *buf = 138412290;
        v137 = path2;
        _os_log_impl(&dword_19BF1F000, v64, OS_LOG_TYPE_ERROR, "InProcess file %@ not found.", buf, 0xCu);
      }

      v66 = MEMORY[0x1E696AEC0];
      v67 = objc_opt_class();
      path3 = [(__CFString *)v120 path];
      v119 = [v66 stringWithFormat:@"%@ ERROR: InProcess file %@ not found.", v67, path3];
      v117 = 0;
      v111 = 0;
      v62 = 197704;
      goto LABEL_96;
    }

    v142 = *MEMORY[0x1E696A3A0];
    v143 = *MEMORY[0x1E696A388];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
    path4 = [(__CFString *)v120 path];
    v134 = 0;
    v22 = [defaultManager setAttributes:v20 ofItemAtPath:path4 error:&v134];
    v113 = v134;

    if ((v22 & 1) == 0)
    {
      v23 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        path5 = [(__CFString *)v120 path];
        *buf = 138412546;
        v137 = path5;
        v138 = 2112;
        v139 = v113;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Unable to assign data protection to %@: %@", buf, 0x16u);
      }
    }

    v114 = [v17 cloudSharedAssetPathForPlaceholderKind:kindCopy];
    if (![v114 length] || (objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", v114), v25 = objc_claimAutoreleasedReturnValue(), (path7 = v25) == 0))
    {
      v69 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        path6 = [(__CFString *)v120 path];
        *buf = 138412290;
        v137 = path6;
        _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_ERROR, "No destination URL to move %@ to", buf, 0xCu);
      }

      v71 = MEMORY[0x1E696AEC0];
      v72 = objc_opt_class();
      path7 = [(__CFString *)v120 path];
      v119 = [v71 stringWithFormat:@"%@ ERROR: No destination URL to move %@ to", v72, path7];
      v117 = 0;
      v111 = 0;
      v62 = 197702;
      goto LABEL_95;
    }

    path8 = [(__CFString *)v25 path];
    v28 = [defaultManager fileExistsAtPath:path8];

    if (v28)
    {
      v133 = 0;
      v29 = [defaultManager removeItemAtURL:path7 error:&v133];
      v30 = v133;
      if (!v29)
      {
        v109 = v30;
        v75 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v26Path = [(__CFString *)path7 path];
          path9 = [(__CFString *)v120 path];
          *buf = 138412802;
          v137 = v26Path;
          v138 = 2112;
          v139 = path9;
          v140 = 2112;
          v141 = v109;
          _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_ERROR, "Unable to remove %@ before replacing it with %@: %@", buf, 0x20u);
        }

        v78 = MEMORY[0x1E696AEC0];
        v79 = objc_opt_class();
        v26Path2 = [(__CFString *)path7 path];
        path10 = [(__CFString *)v120 path];
        v109 = [v78 stringWithFormat:@"%@ ERROR: Unable to remove %@ before replacing it with %@: %@", v79, v26Path2, path10, v109];
        goto LABEL_69;
      }
    }

    [(__CFString *)path7 URLByDeletingLastPathComponent];
    v109 = v132 = 0;
    v31 = [(__CFString *)v109 getResourceValue:&v132 forKey:*MEMORY[0x1E695DB20] error:0];
    v26Path2 = v132;
    if ((v31 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v131 = 0;
      v33 = [defaultManager2 createDirectoryAtURL:v109 withIntermediateDirectories:1 attributes:0 error:&v131];
      path10 = v131;

      if ((v33 & 1) == 0)
      {
        v80 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v137 = v109;
          v138 = 2114;
          v139 = currentCloudAssetGUID;
          v140 = 2112;
          v141 = path10;
          _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_ERROR, "ERROR: Unable to create directory %@ for asset %{public}@: %@", buf, 0x20u);
        }

        v117 = 0;
        v111 = 0;
        goto LABEL_93;
      }
    }

    if (self->_replacingOriginalWithDerivative)
    {
      pathForOriginalFile = [v17 pathForOriginalFile];
      if ([defaultManager fileExistsAtPath:pathForOriginalFile])
      {
        v130 = 0;
        v36 = [defaultManager removeItemAtPath:pathForOriginalFile error:&v130];
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
            v139 = pathForOriginalFile;
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

      cloudSharedPlaceholderKind = 2;
    }

    v129 = 0;
    v41 = [MEMORY[0x1E69BF238] copyItemAtURL:v120 toURL:path7 error:&v129];
    path10 = v129;
    if (v41)
    {
      v42 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v137 = v120;
        v138 = 2112;
        v139 = path7;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEBUG, "Successfully copied %@ to %@", buf, 0x16u);
      }

      if (([v17 hasMasterThumb] & 1) != 0 || kindCopy > 7 || ((1 << kindCopy) & 0x98) == 0)
      {
        if (self->_replacingOriginalWithDerivative)
        {
          v43 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            kind = [v17 kind];
            currentCloudAssetGUID2 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
            v46 = currentCloudAssetGUID2;
            v47 = @"size";
            if (!kind)
            {
              v47 = @"image width, height and size";
            }

            *buf = 138412546;
            v137 = v47;
            v138 = 2112;
            v139 = currentCloudAssetGUID2;
            _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "Setting %@ for asset with cloudGUID %@", buf, 0x16u);
          }

          assetCollectionInfos = [(PLCloudSharedAssetSaveJob *)self assetCollectionInfos];
          firstObject = [assetCollectionInfos firstObject];

          width = [firstObject width];
          [v17 setWidth:{objc_msgSend(width, "longLongValue")}];

          height = [firstObject height];
          [v17 setHeight:{objc_msgSend(height, "longLongValue")}];

          originalFilesize = [firstObject originalFilesize];
          [v17 setOriginalFilesize:{objc_msgSend(originalFilesize, "longLongValue")}];

          [v17 setSpatialType:0];
          if (PLPlatformExtendedAttributesSupported())
          {
            if ([v17 kind])
            {
              if ([v17 kind] == 1)
              {
                metaData = [firstObject metaData];
                v54 = [metaData objectForKey:*MEMORY[0x1E6998030]];

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
              [(PLCloudSharedAssetSaveJob *)self _updateAsset:v17 withImageFileURL:path7];
            }
          }
        }
      }

      else
      {
        v81 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          currentCloudAssetGUID3 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
          *buf = 138412290;
          v137 = currentCloudAssetGUID3;
          _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_DEFAULT, "Generating new thumbnails for asset with cloudGUID %@", buf, 0xCu);
        }

        [(PLCloudSharedAssetSaveJob *)self _updateAsset:v17 withImageFileURL:path7];
      }

      if (kindCopy == 3 && [v17 hasMasterThumb])
      {
        v128 = 0;
        v83 = [defaultManager removeItemAtURL:path7 error:&v128];
        v84 = v128;
        if ((v83 & 1) == 0)
        {
          v85 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v137 = path7;
            v138 = 2112;
            v139 = v84;
            _os_log_impl(&dword_19BF1F000, v85, OS_LOG_TYPE_ERROR, "Unable to remove thumbnail resource from %@ after generating local thumb: %@", buf, 0x16u);
          }
        }
      }

      uuid = [v17 uuid];
      v80 = [PLPhotoSharingHelper downloadNotificationForAssetwithUUID:uuid cloudPlaceholderKind:kindCopy];

      [(PLCloudSharedAssetSaveJob *)self _addDownloadNotification:v80];
      if (cloudSharedPlaceholderKind != kindCopy)
      {
        v87 = +[PLNotificationManager sharedManager];
        mstreamdInfoDictionary = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
        [v87 noteDidChangePlaceholderKindForAsset:v17 fromOldKind:cloudSharedPlaceholderKind forCollectionShare:v12 mstreamdInfo:mstreamdInfoDictionary];
      }

      [(PLCloudSharedAssetSaveJob *)self _processInFlightCommentsForAsset:v17 inAlbum:0 inCollectionShare:v12 inPhotoLibrary:libraryCopy];
      v89 = MEMORY[0x1E696AEC0];
      if (self->_replacingOriginalWithDerivative)
      {
        path11 = [(__CFString *)v120 path];
        v117 = [v89 stringWithFormat:@"found recently uploaded derivative at %@ and replaced original for asset %@ \n ", path11, v17];
      }

      else
      {
        v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"finished processing downloaded asset %@ \n", v17];
      }

      v111 = 1;
LABEL_93:

      v62 = 0;
      v119 = 0;
      goto LABEL_94;
    }

    v73 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v137 = v120;
      v138 = 2112;
      v139 = path7;
      v140 = 2112;
      v141 = path10;
      _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_ERROR, "Unable to copy %@ to %@: %@", buf, 0x20u);
    }

    v109 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ERROR: Unable to copy %@ to %@: %@", objc_opt_class(), v120, path7, path10, v26Path2];
LABEL_69:
    v119 = v109;
    v117 = 0;
    v111 = 0;
    v62 = 197702;
LABEL_94:

LABEL_95:
    path3 = v113;
LABEL_96:

LABEL_97:
    goto LABEL_98;
  }

  v57 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    cloudAlbumGUID2 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    *buf = 138543618;
    v137 = cloudAlbumGUID2;
    v138 = 2114;
    v139 = currentCloudAssetGUID;
    _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Couldn't find sharedstream collection share with scopeidentifier %{public}@ to insert asset %{public}@", buf, 0x16u);
  }

  v59 = MEMORY[0x1E696AEC0];
  v60 = objc_opt_class();
  cloudAlbumGUID3 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
  v119 = [v59 stringWithFormat:@"%@ ERROR: couldn't find sharedstream collection share with scopeidentifier %@ to insert asset %@", v60, cloudAlbumGUID3, currentCloudAssetGUID];
  v117 = 0;
  v111 = 0;
  v62 = 197701;
LABEL_98:

  if (v119)
  {
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObject:v119 forKey:*MEMORY[0x1E696A278]];
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

  if (kindCopy != 2)
  {
    currentCloudAssetGUID4 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    cloudAlbumGUID4 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:currentCloudAssetGUID4 albumGUID:cloudAlbumGUID4 content:v117 state:v93 error:v115];
  }

  v110 = v119;
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

        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v123 = 0;
        v103 = [defaultManager3 removeItemAtURL:v100 error:&v123];
        v104 = v123;

        if ((v103 & 1) == 0)
        {
          v105 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            path12 = [(__CFString *)v100 path];
            *buf = 138412546;
            v137 = path12;
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

- (void)_processInFlightCommentsForAsset:(id)asset inAlbum:(id)album inCollectionShare:(id)share inPhotoLibrary:(id)library
{
  v53 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  shareCopy = share;
  libraryCopy = library;
  pathManager = [libraryCopy pathManager];
  v11 = [pathManager directoryPathForInFlightComments:0];
  cloudAssetGUID = [assetCopy cloudAssetGUID];
  v13 = [v11 stringByAppendingPathComponent:cloudAssetGUID];

  if (v13)
  {
    v14 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v13];
    if (v14)
    {
      v15 = v14;
      v37 = v13;
      v16 = [PLCloudSharedComment cloudSharedCommentsWithGUIDs:v14 inLibrary:libraryCopy];
      v17 = [v15 count];
      if (v17 != [v16 count])
      {
        v18 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v15 count];
          cloudAssetGUID2 = [assetCopy cloudAssetGUID];
          *buf = 134218498;
          v48 = v19;
          v49 = 2112;
          v50 = cloudAssetGUID2;
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
          cloudAssetGUID3 = [assetCopy cloudAssetGUID];
          *buf = 134218242;
          v48 = v22;
          v49 = 2112;
          v50 = cloudAssetGUID3;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Will attach %lu inflight comments to asset %@", buf, 0x16u);
        }
      }

      v36 = v15;
      v38 = libraryCopy;
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
            commenterHashedPersonID = [v28 commenterHashedPersonID];
            collectionShare = [assetCopy collectionShare];
            v31 = [PLShareParticipant participantWithHashedPersonID:commenterHashedPersonID inCollectionShare:collectionShare];

            [v28 setShareParticipant:v31];
            [assetCopy addComment:v28];
            LODWORD(collectionShare) = [v28 isLikeBoolValue];
            v32 = +[PLNotificationManager sharedManager];
            mstreamdInfoDictionary = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
            if (collectionShare)
            {
              [v32 noteDidReceiveLike:v28 mstreamdInfo:mstreamdInfoDictionary];
            }

            else
            {
              [v32 noteDidReceiveComment:v28 mstreamdInfo:mstreamdInfoDictionary];
            }

            if ([v28 isInterestingForAlbumsSorting])
            {
              commentDate = [v28 commentDate];
              [shareCopy setLastModifiedDate:commentDate];
            }
          }

          v25 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v25);
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v13 = v37;
      [defaultManager removeItemAtPath:v37 error:0];

      libraryCopy = v38;
    }
  }
}

- (id)_createPlaceHolderInSharedAlbum:(id)album collectionShare:(id)share
{
  v91 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  shareCopy = share;
  photoLibrary = [shareCopy photoLibrary];
  LOWORD(v71) = 257;
  v6 = +[PLManagedAsset insertAssetIntoPhotoLibrary:mainFileURL:mainFileMetadata:savedAssetType:bundleScope:uuid:replacementUUID:imageSource:imageData:isPlaceholder:deleteFileOnFailure:](PLManagedAsset, "insertAssetIntoPhotoLibrary:mainFileURL:mainFileMetadata:savedAssetType:bundleScope:uuid:replacementUUID:imageSource:imageData:isPlaceholder:deleteFileOnFailure:", photoLibrary, 0, 0, [MEMORY[0x1E69BF328] savedAssetTypeForCloudSharedAsset], 2, 0, 0, 0, 0, v71);
  v7 = v6;
  if (v6)
  {
    [v6 setVisibilityState:2];
    width = [self->_currentAssetCollectionInfo width];
    longLongValue = [width longLongValue];

    height = [self->_currentAssetCollectionInfo height];
    longLongValue2 = [height longLongValue];

    [v7 setWidth:longLongValue];
    [v7 setOriginalWidth:longLongValue];
    [v7 setHeight:longLongValue2];
    [v7 setOriginalHeight:longLongValue2];
    originalFilesize = [self->_currentAssetCollectionInfo originalFilesize];
    [v7 setOriginalFilesize:{objc_msgSend(originalFilesize, "longLongValue")}];

    originalFilename = [self->_currentAssetCollectionInfo originalFilename];
    [v7 setOriginalFilename:originalFilename];

    metaData = [self->_currentAssetCollectionInfo metaData];
    modificationDate = [metaData objectForKey:*MEMORY[0x1E6998000]];
    if (modificationDate)
    {
      goto LABEL_9;
    }

    v15 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Couldn't find a creation date, setting to modification date", buf, 2u);
    }

    modificationDate = [v7 modificationDate];
    if (modificationDate)
    {
      goto LABEL_9;
    }

    v16 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Couldn't find a creation date, setting to now", buf, 2u);
    }

    modificationDate = [MEMORY[0x1E695DF00] date];
    if (modificationDate)
    {
LABEL_9:
      [v7 setDateCreated:modificationDate];
    }

    v74 = modificationDate;
    v77 = [metaData objectForKey:*MEMORY[0x1E6998020]];
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
            v18 = [objc_alloc(MEMORY[0x1E6985C40]) initWithCoordinate:modificationDate altitude:v17.latitude horizontalAccuracy:v17.longitude verticalAccuracy:0.0 timestamp:{0.0, 0.0}];
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
      v27 = [metaData objectForKey:*MEMORY[0x1E6998030]];
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
          currentCloudAssetGUID = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
          *buf = 138412546;
          *&buf[4] = currentCloudAssetGUID;
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

    v32 = [metaData objectForKey:*MEMORY[0x1E6998028]];
    unsignedIntValue = [v32 unsignedIntValue];

    [v7 setPlaybackVariationAndLoopingPlaybackStyleWithPlaybackVariation:unsignedIntValue];
    derivativeUTI = [self->_currentAssetCollectionInfo derivativeUTI];
    if (derivativeUTI)
    {
      [v7 setUniformTypeIdentifier:derivativeUTI];
      v34 = [MEMORY[0x1E6982C40] typeWithIdentifier:derivativeUTI];
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
    personID = [self->_currentAssetCollectionInfo personID];
    [v7 setCloudOwnerHashedPersonID:personID];

    [v7 setCloudIsDeletable:{-[AssetCollectionInfo isDeletable](self->_currentAssetCollectionInfo, "isDeletable")}];
    [v7 setCloudIsMyAsset:{-[AssetCollectionInfo isMine](self->_currentAssetCollectionInfo, "isMine")}];
    currentCloudAssetGUID2 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    [v7 setCloudAssetGUID:currentCloudAssetGUID2];

    v38 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [v7 setCloudDownloadRequests:v38];

    timestamp = [self->_currentAssetCollectionInfo timestamp];
    if (timestamp)
    {
      [v7 setCloudServerPublishDate:timestamp];
    }

    v72 = timestamp;
    uniformTypeIdentifier = [v7 uniformTypeIdentifier];
    v75 = [PLManagedAsset preferredFileExtensionForType:uniformTypeIdentifier];

    cloudPersonID = [(PLCloudSharedAssetSaveJob *)self cloudPersonID];
    cloudAlbumGUID = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    pathManager = [photoLibrary pathManager];
    uuid = [v7 uuid];
    v45 = [PLCloudSharedAssetSaveJob nextDCIMSaveFileURLForCloudPersonID:cloudPersonID cloudAlbumGUID:cloudAlbumGUID pathManager:pathManager fileExtension:v75 assetUUID:uuid];

    path = [v45 path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

    lastPathComponent = [v45 lastPathComponent];
    if (stringByDeletingLastPathComponent && lastPathComponent)
    {
      pathManager2 = [photoLibrary pathManager];
      isUBF = [pathManager2 isUBF];

      pathManager3 = [photoLibrary pathManager];
      v51 = pathManager3;
      if (isUBF)
      {
        v52 = 23;
      }

      else
      {
        v52 = 32;
      }

      v73 = [pathManager3 assetAbbreviatedMetadataDirectoryForDirectory:stringByDeletingLastPathComponent type:v52 bundleScope:0];

      v53 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        currentCloudAssetGUID3 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
        *buf = 138412802;
        *&buf[4] = v73;
        v85 = 2112;
        v86 = lastPathComponent;
        v87 = 2112;
        v88 = currentCloudAssetGUID3;
        _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "setting directory/filename to %@/%@ for cloudSharedAsset %@", buf, 0x20u);
      }

      [v7 setDirectory:v73];
      [v7 setFilename:lastPathComponent];
    }

    else
    {
      v55 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        currentCloudAssetGUID4 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
        cloudAlbumGUID2 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
        *buf = 138413058;
        *&buf[4] = v45;
        v85 = 2112;
        v86 = currentCloudAssetGUID4;
        v87 = 2112;
        v88 = v75;
        v89 = 2112;
        v90 = cloudAlbumGUID2;
        _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "unable to get directory/filename from %@ for cloudSharedAsset %@ with extension %@ in album %@", buf, 0x2Au);
      }

      v73 = stringByDeletingLastPathComponent;
    }

    managedObjectContext = [photoLibrary managedObjectContext];
    [(PLCloudSharedAssetSaveJob *)self _updatePhotoIrisPropertiesIfNecessaryForAsset:v7 inManagedObjectContext:managedObjectContext];

    v59 = [metaData valueForKey:*MEMORY[0x1E6997FF8]];
    if (v59)
    {
      [v7 setCloudBatchID:v59];
    }

    v60 = [metaData valueForKey:*MEMORY[0x1E6997FF0]];
    if (v60)
    {
      [v7 setCloudBatchPublishDate:v60];
    }

    cloudOwnerHashedPersonID = [v7 cloudOwnerHashedPersonID];
    v62 = [PLShareParticipant participantWithHashedPersonID:cloudOwnerHashedPersonID inCollectionShare:shareCopy];

    if (v62)
    {
      [v7 setCollectionShare:shareCopy withContributor:v62];
      v63 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        currentCloudAssetGUID5 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
        dateCreated = [v7 dateCreated];
        *buf = 138413058;
        *&buf[4] = currentCloudAssetGUID5;
        v85 = 2112;
        v86 = v59;
        v87 = 2112;
        v88 = v60;
        v89 = 2112;
        v90 = dateCreated;
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_INFO, "Inserted new asset (GUID:%@ cloudAssetBatchID:%@ cloudAssetBatchDate:%@ dateCreated:%@)", buf, 0x2Au);
      }
    }

    else
    {
      [v7 setCollectionShare:shareCopy withContributor:0];
      v63 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        currentCloudAssetGUID6 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
        cloudOwnerHashedPersonID2 = [v7 cloudOwnerHashedPersonID];
        cloudAlbumGUID3 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
        *buf = 138412802;
        *&buf[4] = currentCloudAssetGUID6;
        v85 = 2112;
        v86 = cloudOwnerHashedPersonID2;
        v87 = 2112;
        v88 = cloudAlbumGUID3;
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_ERROR, "Unable to fetch share participant for asset %@ with hashedPersonID %@ %@", buf, 0x20u);
      }
    }

    [shareCopy setLastModifiedDate:v60];
    [(PLCloudSharedAssetSaveJob *)self _processInFlightCommentsForAsset:v7 inAlbum:albumCopy inCollectionShare:shareCopy inPhotoLibrary:photoLibrary];
    [PLResourceInstaller installInternalResourcesForExistingAsset:v7 assumeNoExistingResources:1 referencedResourceURLs:0 error:0];

    v69 = v7;
  }

  else
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    currentCloudAssetGUID7 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    v22 = [v19 stringWithFormat:@"%@ ERROR: in insertAssetIntoPhotoLibrary:asset GUID:%@", v20, currentCloudAssetGUID7];

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
  currentCloudAssetMediaAssetType = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetMediaAssetType];
  lastObject = [(NSArray *)self->_assetCollectionInfos lastObject];
  currentAssetCollectionInfo = self->_currentAssetCollectionInfo;
  self->_currentAssetCollectionInfo = lastObject;

  gUID = [self->_currentAssetCollectionInfo GUID];
  if (gUID)
  {
    [(PLCloudSharedAssetSaveJob *)self setCurrentCloudAssetGUID:gUID];
    [(PLCloudSharedAssetSaveJob *)self setIsVideo:[self->_currentAssetCollectionInfo isVideo]];
    [(PLCloudSharedAssetSaveJob *)self setIsPhotoIris:[self->_currentAssetCollectionInfo isPhotoIris]];
    transientPhotoLibrary = [(PLCloudSharingJob *)self transientPhotoLibrary];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PLCloudSharedAssetSaveJob_executeDaemonOperationSaveAssetJobType__block_invoke;
    v11[3] = &unk_1E75782F8;
    v12 = transientPhotoLibrary;
    v13 = currentCloudAssetMediaAssetType;
    v11[4] = self;
    v8 = transientPhotoLibrary;
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

- (signed)placeHolderKindFromAssetMetadataType:(unint64_t)type
{
  v13 = *MEMORY[0x1E69E9840];
  if (type > 4)
  {
    switch(type)
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
    switch(type)
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
    currentCloudAssetGUID = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    v9 = 134218242;
    typeCopy = type;
    v11 = 2112;
    v12 = currentCloudAssetGUID;
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
    selfCopy = self;
    v5 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ : runDaemonSide %@", buf, 0x16u);
  }

  jobType = [(PLCloudSharedAssetSaveJob *)self jobType];
  if (jobType == 1)
  {
    v22 = MEMORY[0x1E696AEC0];
    currentFilePath = [(PLCloudSharedAssetSaveJob *)self currentFilePath];
    currentCloudAssetGUID = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    cloudAlbumGUID = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    obj = [v22 stringWithFormat:@"path %@ asset GUID %@ album GUID %@ prioritize %d", currentFilePath, currentCloudAssetGUID, cloudAlbumGUID, -[PLCloudSharingJob shouldPrioritize](self, "shouldPrioritize")];

    v26 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      currentCloudAssetGUID2 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
      shouldPrioritize = [(PLCloudSharingJob *)self shouldPrioritize];
      *buf = 138412546;
      v49 = currentCloudAssetGUID2;
      v50 = 1024;
      LODWORD(selfCopy) = shouldPrioritize;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Saving asset %@ prioritize %d", buf, 0x12u);
    }

    currentCloudAssetGUID3 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    if ([(PLCloudSharedAssetSaveJob *)self isProcessingThumbnail])
    {
      v29 = 230;
    }

    else
    {
      v29 = 231;
    }

    cloudAlbumGUID2 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:currentCloudAssetGUID3 albumGUID:cloudAlbumGUID2 content:obj state:v29 error:0];
    goto LABEL_19;
  }

  if (jobType)
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
    cloudAlbumGUID2 = 0;
    currentCloudAssetGUID3 = 0;
    v39 = *v44;
    selfCopy2 = self;
    selfCopy3 = self;
    do
    {
      v12 = 0;
      v13 = cloudAlbumGUID2;
      v14 = currentCloudAssetGUID3;
      do
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * v12);
        v16 = objc_autoreleasePoolPush();
        gUID = [v15 GUID];
        v18 = MEMORY[0x1E696AEC0];
        cloudPersonID = [(PLCloudSharedAssetSaveJob *)selfCopy3 cloudPersonID];
        cloudAlbumGUID3 = [(PLCloudSharedAssetSaveJob *)selfCopy3 cloudAlbumGUID];
        currentCloudAssetGUID3 = [v18 stringWithFormat:@"personID %@ album GUID %@ collection %@", cloudPersonID, cloudAlbumGUID3, gUID];

        cloudAlbumGUID2 = gUID;
        cloudAlbumGUID4 = [(PLCloudSharedAssetSaveJob *)selfCopy3 cloudAlbumGUID];
        [PLPhotoSharingHelper writeDownloadDebugBreadcrumbForAsset:cloudAlbumGUID2 albumGUID:cloudAlbumGUID4 content:currentCloudAssetGUID3 state:205 error:0];

        objc_autoreleasePoolPop(v16);
        ++v12;
        v13 = cloudAlbumGUID2;
        v14 = currentCloudAssetGUID3;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v8);
    self = selfCopy2;
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
      currentCloudAssetGUID4 = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
      *buf = 138412290;
      v49 = currentCloudAssetGUID4;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Setting prioritize for %@", buf, 0xCu);
    }

    [v33 setQueuePriority:4];
    highPriorityOperationQueue = [objc_opt_class() highPriorityOperationQueue];
  }

  else
  {
    highPriorityOperationQueue = [objc_opt_class() lowPriorityOperationQueue];
  }

  v37 = highPriorityOperationQueue;
  [highPriorityOperationQueue addOperation:v33];
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

- (void)setupSaveAssetMetadataForCollectionsJobForAssetCollections:(id)collections album:(id)album personID:(id)d info:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  albumCopy = album;
  dCopy = d;
  infoCopy = info;
  [(PLCloudSharedAssetSaveJob *)self setJobType:0];
  v22 = albumCopy;
  gUID = [albumCopy GUID];
  [(PLCloudSharedAssetSaveJob *)self setCloudAlbumGUID:gUID];

  [(PLCloudSharedAssetSaveJob *)self setCloudPersonID:dCopy];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = collectionsCopy;
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

  [(PLCloudSharedAssetSaveJob *)self setMstreamdInfoDictionary:infoCopy];
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
  jobType = [(PLCloudSharedAssetSaveJob *)self jobType];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = v5;
  if (jobType <= 1)
  {
    if (jobType)
    {
      if (jobType != 1)
      {
        goto LABEL_15;
      }

      currentFilePath = [(PLCloudSharedAssetSaveJob *)self currentFilePath];
      currentCloudAssetGUID = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
      currentCloudAssetMediaAssetType = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetMediaAssetType];
      cloudAlbumGUID = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
      cloudPersonID = [(PLCloudSharedAssetSaveJob *)self cloudPersonID];
      mstreamdInfoDictionary = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
      v13 = [v4 stringWithFormat:@"%@ (PLSaveAssetJobType filePath=%@ cloudAssetGUID=%@ cloudAssetMediaAssetType=%lu loudAlbumGUID=%@ cloudAlbumGUID=%@ info=%@ prioritize=%d) ", v6, currentFilePath, currentCloudAssetGUID, currentCloudAssetMediaAssetType, cloudAlbumGUID, cloudPersonID, mstreamdInfoDictionary, -[PLCloudSharingJob shouldPrioritize](self, "shouldPrioritize")];
    }

    else
    {
      currentFilePath = [(PLCloudSharedAssetSaveJob *)self assetCollectionInfos];
      currentCloudAssetGUID = [currentFilePath valueForKey:@"GUID"];
      cloudAlbumGUID2 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
      mstreamdInfoDictionary2 = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
      v13 = [v4 stringWithFormat:@"%@ (PLSaveAssetMetadataForCollectionsJobType cloudAssetCollection GUIDS=%@ cloudAlbumGUID=%@ info=%@) ", v6, currentCloudAssetGUID, cloudAlbumGUID2, mstreamdInfoDictionary2];
    }

LABEL_14:
    goto LABEL_17;
  }

  if (jobType == 2)
  {
    currentFilePath = [(PLCloudSharedAssetSaveJob *)self cloudAssetGUIDsToDelete];
    mstreamdInfoDictionary3 = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
    [v4 stringWithFormat:@"%@ (PLDeleteAssetJobType cloudAssetGUIDsToDelete=%@ info=%@) ", v6, currentFilePath, mstreamdInfoDictionary3];
    v13 = LABEL_11:;

    goto LABEL_14;
  }

  if (jobType == 3)
  {
    currentFilePath = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
    mstreamdInfoDictionary3 = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
    [v4 stringWithFormat:@"%@ (PLReplaceRecentlyUploadedOriginalWithDerivative cloudAssetCollection=%@ cloudAlbumGUID=%@) ", v6, currentFilePath, mstreamdInfoDictionary3];
    goto LABEL_11;
  }

  if (jobType != 4)
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

- (PLCloudSharedAssetSaveJob)initWithAssetsdClient:(id)client
{
  v4.receiver = self;
  v4.super_class = PLCloudSharedAssetSaveJob;
  result = [(PLCloudSharingJob *)&v4 initWithAssetsdClient:client];
  if (result)
  {
    result->_isVideo = 0;
  }

  return result;
}

- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager
{
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = PLCloudSharedAssetSaveJob;
  v7 = [(PLCloudSharingJob *)&v21 initFromXPCObject:objectCopy libraryServicesManager:manager];
  if (v7)
  {
    v8 = PLStringFromXPCDictionary();
    [v7 setCurrentFilePath:v8];

    [v7 setCurrentCloudAssetMediaAssetType:{xpc_dictionary_get_int64(objectCopy, propertyKeyCloudAssetMediaAssetType)}];
    [v7 setIsVideo:{xpc_dictionary_get_BOOL(objectCopy, propertyKeyCloudAssetIsVideo)}];
    [v7 setIsPhotoIris:{xpc_dictionary_get_BOOL(objectCopy, propertyKeyCloudAssetIsPhotoIris)}];
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

    [v7 setJobType:{xpc_dictionary_get_int64(objectCopy, propertyKeyCloudAssetSaveJobType)}];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)object
{
  v19 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = PLCloudSharedAssetSaveJob;
  [(PLDaemonJob *)&v16 encodeToXPCObject:objectCopy];
  currentFilePath = [(PLCloudSharedAssetSaveJob *)self currentFilePath];
  PLXPCDictionarySetString();

  cloudAlbumGUID = [(PLCloudSharedAssetSaveJob *)self cloudAlbumGUID];
  PLXPCDictionarySetString();

  cloudPersonID = [(PLCloudSharedAssetSaveJob *)self cloudPersonID];
  PLXPCDictionarySetString();

  currentCloudAssetGUID = [(PLCloudSharedAssetSaveJob *)self currentCloudAssetGUID];
  PLXPCDictionarySetString();

  xpc_dictionary_set_int64(objectCopy, propertyKeyCloudAssetMediaAssetType, [(PLCloudSharedAssetSaveJob *)self currentCloudAssetMediaAssetType]);
  xpc_dictionary_set_BOOL(objectCopy, propertyKeyCloudAssetIsVideo, [(PLCloudSharedAssetSaveJob *)self isVideo]);
  xpc_dictionary_set_BOOL(objectCopy, propertyKeyCloudAssetIsPhotoIris, [(PLCloudSharedAssetSaveJob *)self isPhotoIris]);
  cloudAssetGUIDsToDelete = [(PLCloudSharedAssetSaveJob *)self cloudAssetGUIDsToDelete];
  PLXPCDictionarySetArray();

  assetCollectionInfos = [(PLCloudSharedAssetSaveJob *)self assetCollectionInfos];
  if (assetCollectionInfos)
  {
    v15 = 0;
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:assetCollectionInfos requiringSecureCoding:1 error:&v15];
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

  mstreamdInfoDictionary = [(PLCloudSharedAssetSaveJob *)self mstreamdInfoDictionary];
  PLXPCDictionarySetDictionary();

  xpc_dictionary_set_int64(objectCopy, propertyKeyCloudAssetSaveJobType, [(PLCloudSharedAssetSaveJob *)self jobType]);
}

+ (id)nextDCIMSaveFileURLForCloudPersonID:(id)d cloudAlbumGUID:(id)iD pathManager:(id)manager fileExtension:(id)extension assetUUID:(id)uID
{
  v51 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  managerCopy = manager;
  extensionCopy = extension;
  uIDCopy = uID;
  if (!dCopy)
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

  if (!iDCopy)
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

  if (!extensionCopy)
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

  selfCopy = self;
  v17 = [managerCopy photoDirectoryWithType:23];
  v18 = [v17 stringByAppendingPathComponent:dCopy];
  v19 = [v18 stringByAppendingPathComponent:iDCopy];

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
    v39 = uIDCopy;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v45 = 0;
    v38 = v20;
    v28 = [defaultManager createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v45];
    uppercaseString = v45;

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
          path = [v38 path];
          *buf = 138412546;
          v48 = path;
          v49 = 2112;
          v50 = uppercaseString;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "ERROR: Unable to create directory %@: %@", buf, 0x16u);
        }

        v34 = v38;
        v26 = 0;
        uIDCopy = v39;
        v24 = v42;
        goto LABEL_24;
      }
    }

    uIDCopy = v39;
  }

  if ([managerCopy isUBF])
  {
    uppercaseString = [uIDCopy uppercaseString];
    [v20 URLByAppendingPathComponent:uppercaseString];
    v41 = managerCopy;
    v31 = v24;
    v33 = v32 = uIDCopy;
    [v33 URLByAppendingPathExtension:extensionCopy];
    v26 = v34 = v20;

    uIDCopy = v32;
    v24 = v31;
    managerCopy = v41;
  }

  else
  {
    uppercaseString = [selfCopy _dcimDirectoryForFileURL:v20];
    [uppercaseString nextAvailableFileURLWithExtension:extensionCopy];
    v26 = v34 = v20;
  }

LABEL_24:

LABEL_25:

  return v26;
}

+ (id)_dcimDirectoryForFileURL:(id)l
{
  lCopy = l;
  pl_dispatch_once();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__74294;
  v11 = __Block_byref_object_dispose__74295;
  v12 = 0;
  v6 = lCopy;
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

+ (id)pathForInFlightAssetCollectionWithGUID:(id)d mediaAssetType:(unint64_t)type
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  pl_dispatch_once();
  if (pathForInFlightAssetCollectionWithGUID_mediaAssetType__inflightDirectory)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if (([defaultManager fileExistsAtPath:pathForInFlightAssetCollectionWithGUID_mediaAssetType__inflightDirectory]& 1) == 0)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v17 = 0;
      v8 = [defaultManager2 createDirectoryAtPath:pathForInFlightAssetCollectionWithGUID_mediaAssetType__inflightDirectory withIntermediateDirectories:1 attributes:0 error:&v17];
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

    v10 = dCopy;
    v9 = v10;
    if (type == 7)
    {
      v15 = @"MOV";
    }

    else
    {
      if (type == 5)
      {
        v11 = @"poster";
      }

      else
      {
        if (type != 2)
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

  defaultManager = PLPhotoSharingGetLog();
  if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, defaultManager, OS_LOG_TYPE_ERROR, "ERROR: INFLIGHT directory does not exist for shared album", buf, 2u);
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

+ (id)_lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID:(id)d cloudPersonID:(id)iD
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  pl_dispatch_once();
  v7 = [dCopy stringByAppendingString:iDCopy];
  v8 = [_lightweightReimportPhotoCloudSharingAlbumInfoForAlbumWithCloudGUID_cloudPersonID__cacheAlbumInfo objectForKey:v7];
  if (!v8)
  {
    systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    v10 = [systemLibraryPathManager privateCacheDirectoryWithSubType:3];

    v11 = [PLCloudSharedAlbum lightweightReimportDirectoryNameWithGUID:dCopy cloudPersonID:iDCopy];
    v12 = [v10 stringByAppendingPathComponent:v11];
    v13 = [v12 stringByAppendingPathComponent:*MEMORY[0x1E69BFEE8]];

    v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v13];
    if (!v8)
    {
      v14 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412546;
        v17 = dCopy;
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
  systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v4 = [systemLibraryPathManager privateCacheDirectoryWithSubType:3];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4 isDirectory:&v8];
  v2 = v6 & v8;

  if ((v2 & 1) == 0)
  {
    _lightweightReimportCacheDirectoryExists__skipCacheDirCheck = 1;
  }

  return v2;
}

+ (void)replaceRecentlyUploadedOriginalWithDerivativeForCollection:(id)collection inAlbum:(id)album personID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  albumCopy = album;
  dCopy = d;
  v11 = dCopy;
  if (collectionCopy && albumCopy && dCopy)
  {
    newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd = [self newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setJobType:3];
    gUID = [albumCopy GUID];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCloudAlbumGUID:gUID];

    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCloudPersonID:v11];
    -[NSObject setIsVideo:](newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd, "setIsVideo:", [collectionCopy isVideo]);
    -[NSObject setIsPhotoIris:](newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd, "setIsPhotoIris:", [collectionCopy isPhotoIris]);
    gUID2 = [collectionCopy GUID];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCurrentCloudAssetGUID:gUID2];

    v15 = [[AssetCollectionInfo alloc] initWithAssetCollection:collectionCopy];
    v17 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setAssetCollectionInfos:v16];

    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd runAndWaitForMessageToBeSent];
LABEL_7:

    goto LABEL_8;
  }

  newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd = PLPhotoSharingGetLog();
  if (os_log_type_enabled(newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    v19 = objc_opt_class();
    v20 = 2112;
    v21 = collectionCopy;
    v22 = 2112;
    v23 = albumCopy;
    v24 = 2112;
    v25 = v11;
    v15 = v19;
    _os_log_impl(&dword_19BF1F000, newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd, OS_LOG_TYPE_ERROR, "%@:replaceRecentlyUploadedOriginalWithDerivativeForCollection:%@ inAlbum:%@ personID:%@ can't have nil arguments", buf, 0x2Au);
    goto LABEL_7;
  }

LABEL_8:
}

+ (void)deleteCloudSharedAssetsWithCloudGUIDs:(id)ds inAlbum:(id)album info:(id)info
{
  dsCopy = ds;
  albumCopy = album;
  infoCopy = info;
  if ([dsCopy count])
  {
    newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd = [self newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setJobType:2];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCloudAssetGUIDsToDelete:dsCopy];
    gUID = [albumCopy GUID];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCloudAlbumGUID:gUID];

    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setMstreamdInfoDictionary:infoCopy];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd runAndWaitForMessageToBeSent];
  }
}

+ (void)saveCloudSharedAssetAtPath:(id)path forAssetCollection:(id)collection mediaAssetType:(unint64_t)type albumGUID:(id)d personID:(id)iD info:(id)info shouldPrioritize:(BOOL)prioritize
{
  v28 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  collectionCopy = collection;
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  gUID = [collectionCopy GUID];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy] && objc_msgSend(gUID, "length"))
  {

    if (iDCopy)
    {
      newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd = [self newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd];
      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setJobType:1];
      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCurrentFilePath:pathCopy];
      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCloudAlbumGUID:dCopy];
      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCurrentCloudAssetMediaAssetType:type];
      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setIsVideo:type == 5];
      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCurrentCloudAssetGUID:gUID];
      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCloudPersonID:iDCopy];
      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setMstreamdInfoDictionary:infoCopy];
      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setShouldPrioritize:prioritize];
      v23 = [[AssetCollectionInfo alloc] initWithAssetCollection:collectionCopy];
      v25 = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setAssetCollectionInfos:v24];

      [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd runAndWaitForMessageToBeSent];
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
  }

  newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd = PLPhotoSharingGetLog();
  if (os_log_type_enabled(newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = objc_opt_class();
    v23 = v27;
    _os_log_impl(&dword_19BF1F000, newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd, OS_LOG_TYPE_ERROR, "%@:saveCloudSharedAssetAtPath: missing required parameters", buf, 0xCu);
    goto LABEL_8;
  }

LABEL_9:
}

+ (void)downloadPendingAssetsForPersonID:(id)d info:(id)info
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd = [self newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setJobType:4];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setCloudPersonID:dCopy];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setMstreamdInfoDictionary:infoCopy];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd runAndWaitForMessageToBeSent];
  }

  else
  {
    newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd = PLPhotoSharingGetLog();
    if (os_log_type_enabled(newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v9 = v11;
      _os_log_impl(&dword_19BF1F000, newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd, OS_LOG_TYPE_ERROR, "%@:downloadPendingAssets personID: can't have nil arguments", &v10, 0xCu);
    }
  }
}

+ (void)assetsdProcessMetadataForAssetCollections:(id)collections inAlbum:(id)album personID:(id)d info:(id)info libraryServicesManager:(id)manager
{
  v32 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  albumCopy = album;
  dCopy = d;
  infoCopy = info;
  managerCopy = manager;
  if ((PLIsReallyAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudSharedAssetSaveJob.m" lineNumber:439 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd()"}];

    if (managerCopy)
    {
      goto LABEL_3;
    }

LABEL_12:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLCloudSharedAssetSaveJob.m" lineNumber:440 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];

    goto LABEL_3;
  }

  if (!managerCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  v18 = [collectionsCopy count];
  if (dCopy && albumCopy && v18)
  {
    v19 = [[PLCloudSharedAssetSaveJob alloc] initWithAssetsdClient:0];
    [(PLCloudSharedAssetSaveJob *)v19 setupSaveAssetMetadataForCollectionsJobForAssetCollections:collectionsCopy album:albumCopy personID:dCopy info:infoCopy];
    [(PLDaemonJob *)v19 setLibraryServicesManager:managerCopy];
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
      v27 = collectionsCopy;
      v28 = 2112;
      v29 = albumCopy;
      v30 = 2112;
      v31 = dCopy;
      v21 = v25;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "%@:assetsdProcessMetadataForAssetCollections:%@ inAlbum:%@ personID:%@ can't have nil arguments", buf, 0x2Au);
    }
  }
}

+ (void)processMetadataForAssetCollections:(id)collections inAlbum:(id)album personID:(id)d info:(id)info
{
  v28 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  albumCopy = album;
  dCopy = d;
  infoCopy = info;
  if (PLIsAssetsd())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudSharedAssetSaveJob.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"!PLIsAssetsd()"}];
  }

  v15 = [collectionsCopy count];
  if (dCopy && albumCopy && v15)
  {
    newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd = [self newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd setupSaveAssetMetadataForCollectionsJobForAssetCollections:collectionsCopy album:albumCopy personID:dCopy info:infoCopy];
    [newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd runAndWaitForMessageToBeSent];
  }

  else
  {
    v17 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = collectionsCopy;
      v24 = 2112;
      v25 = albumCopy;
      v26 = 2112;
      v27 = dCopy;
      v18 = v21;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "%@:processMetadataFromClientProcessForAssetCollections:%@ inAlbum:%@ personID:%@ can't have nil arguments", buf, 0x2Au);
    }
  }
}

+ (id)newCloudSharedAssetSaveJobFromAProcessThatIsNotAssetsd
{
  if (PLIsAssetsd())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudSharedAssetSaveJob.m" lineNumber:395 description:@"This cannot be called from assetsd"];
  }

  v4 = [PLCloudSharedAssetSaveJob alloc];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v6 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:systemLibraryURL];
  v7 = [(PLCloudSharedAssetSaveJob *)v4 initWithAssetsdClient:v6];

  return v7;
}

@end
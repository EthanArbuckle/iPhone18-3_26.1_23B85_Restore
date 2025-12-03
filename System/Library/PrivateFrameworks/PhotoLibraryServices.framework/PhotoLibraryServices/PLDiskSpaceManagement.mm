@interface PLDiskSpaceManagement
+ (int64_t)_processCloudSharedAsset:(id)asset shouldFreeSpace:(BOOL)space;
+ (unint64_t)_purgeAssetsFromFetchRequest:(id)request photoLibrary:(id)library requireBetterThanThumbnails:(BOOL)thumbnails recentlyUsedGUIDS:(id)s recentlyUsedAssetObjectIDs:(id)ds shouldFreeSpace:(BOOL)space bytesToPurge:(unint64_t)purge;
+ (unint64_t)_scanAndDeleteCacheFilesInDirectory:(id)directory shouldFreeSpace:(BOOL)space bytesToPurge:(unint64_t)purge;
+ (unint64_t)_scanFilesInPhotoLibrary:(id)library fromCloudSharingCacheDataDirectoryShouldFreeSpace:(BOOL)space bytesToPurge:(unint64_t)purge;
+ (unint64_t)_scanFilesInPhotoLibrary:(id)library fromPhotoMetadataDirectoryShouldFreeSpace:(BOOL)space bytesToPurge:(unint64_t)purge skipAssets:(id)assets;
+ (unint64_t)_scanFilesInPhotoLibrary:(id)library fromReimportPhotoCloudSharingDataDirectoryShouldFreeSpace:(BOOL)space bytesToPurge:(unint64_t)purge;
+ (unint64_t)performCloudSharingSpaceManagementWithBytesToPurge:(unint64_t)purge shouldFreeSpace:(BOOL)space shouldKeepRecentlyViewedAssets:(BOOL)assets fromPhotoLibrary:(id)library;
+ (void)_processPurgeWithPhotoLibrary:(id)library shouldFreeSpace:(BOOL)space shouldKeepRecentlyViewedAssets:(BOOL)assets bytesToPurge:(unint64_t)purge bytesProcessed:(unint64_t *)processed;
@end

@implementation PLDiskSpaceManagement

+ (int64_t)_processCloudSharedAsset:(id)asset shouldFreeSpace:(BOOL)space
{
  spaceCopy = space;
  v60 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if ([assetCopy isCloudSharedAsset])
  {
    context = objc_autoreleasePoolPush();
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v36 = assetCopy;
    allFileURLs = [assetCopy allFileURLs];
    v7 = [allFileURLs countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v51;
      v41 = *MEMORY[0x1E695DB50];
      v40 = *v51;
      v37 = allFileURLs;
      while (1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v51 != v10)
          {
            objc_enumerationMutation(allFileURLs);
          }

          v12 = *(*(&v50 + 1) + 8 * i);
          v49 = 0;
          path = [v12 path];
          v14 = [defaultManager fileExistsAtPath:path isDirectory:&v49];
          v15 = v49;

          if (v14 && (v15 & 1) == 0)
          {
            v47 = 0;
            v48 = 0;
            v16 = [v12 getResourceValue:&v48 forKey:v41 error:&v47];
            v17 = v48;
            v18 = v47;
            if (v16)
            {
              v19 = v17 == 0;
            }

            else
            {
              v19 = 1;
            }

            if (v19)
            {
              v20 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v56 = v12;
                v57 = 2112;
                v58 = v18;
                _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "couldn't get file size for %@. Error: %@", buf, 0x16u);
              }

LABEL_29:

              v10 = v40;
            }

            else
            {
              v21 = v9;
              v9 += [v17 unsignedLongLongValue];
              if (spaceCopy)
              {
                path2 = [v12 path];
                v23 = [PLPhotoLibrary fileReservationForFileAtPath:path2 exclusive:1];

                if (v23)
                {
                  v46 = 0;
                  v24 = [defaultManager removeItemAtURL:v12 error:&v46];
                  v20 = v46;
                  if (v24)
                  {
                    [v39 addObject:v12];
                    v25 = PLPhotoSharingGetLog();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v56 = v12;
                      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "deleted derivative file at %@", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v25 = PLPhotoSharingGetLog();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v56 = v12;
                      v57 = 2112;
                      v58 = v20;
                      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "couldn't delete file at %@. Error: %@", buf, 0x16u);
                    }

                    v9 = v21;
                  }

                  allFileURLs = v37;
                }

                else
                {
                  v20 = PLPhotoSharingGetLog();
                  v9 = v21;
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v56 = v12;
                    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "file reservation not permitted for %@", buf, 0xCu);
                  }

                  allFileURLs = v37;
                }

                goto LABEL_29;
              }

              allFileURLs = v37;
            }

            continue;
          }
        }

        v8 = [allFileURLs countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (!v8)
        {
          goto LABEL_36;
        }
      }
    }

    v9 = 0;
LABEL_36:

    if (spaceCopy && [v39 count])
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      modernResources = [v36 modernResources];
      v27 = [modernResources countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v43;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v43 != v29)
            {
              objc_enumerationMutation(modernResources);
            }

            v31 = *(*(&v42 + 1) + 8 * j);
            fileURL = [v31 fileURL];
            v33 = [v39 containsObject:fileURL];

            if (v33)
            {
              [v31 markAsNotLocallyAvailable];
            }
          }

          v28 = [modernResources countByEnumeratingWithState:&v42 objects:v54 count:16];
        }

        while (v28);
      }
    }

    objc_autoreleasePoolPop(context);
    assetCopy = v36;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (unint64_t)_scanAndDeleteCacheFilesInDirectory:(id)directory shouldFreeSpace:(BOOL)space bytesToPurge:(unint64_t)purge
{
  spaceCopy = space;
  v47[3] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  v6 = *MEMORY[0x1E695DC30];
  v7 = *MEMORY[0x1E695DBB8];
  v47[0] = *MEMORY[0x1E695DC30];
  v47[1] = v7;
  v34 = *MEMORY[0x1E695DB50];
  v47[2] = *MEMORY[0x1E695DB50];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v30 = directoryCopy;
  [defaultManager enumeratorAtURL:directoryCopy includingPropertiesForKeys:v8 options:0 errorHandler:&__block_literal_global_68];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v9 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (!v9)
  {
    v38 = 0;
    goto LABEL_30;
  }

  v10 = v9;
  v38 = 0;
  v39 = *v41;
  v35 = *MEMORY[0x1E69BFEE8];
  while (2)
  {
    v11 = 0;
    v36 = v10;
    do
    {
      if (*v41 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v40 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [v12 resourceValuesForKeys:v8 error:0];
      v15 = [v14 objectForKeyedSubscript:v6];
      v16 = [v14 objectForKeyedSubscript:v7];
      if ([v16 BOOLValue])
      {
        v17 = v15 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        goto LABEL_11;
      }

      v18 = v7;
      v19 = v6;
      v20 = v8;
      v21 = [v15 isEqualToString:v35];

      if ((v21 & 1) != 0 || ([v14 objectForKeyedSubscript:v34], v22 = objc_claimAutoreleasedReturnValue(), v38 += objc_msgSend(v22, "unsignedLongLongValue"), v22, !spaceCopy))
      {
        v8 = v20;
      }

      else
      {
        path = [v12 path];
        v24 = [defaultManager removeItemAtPath:path error:0];

        if (!v24)
        {
          v25 = PLPhotoSharingGetLog();
          v8 = v20;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = v12;
            _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "failed to remove %@", buf, 0xCu);
          }

          v16 = [v14 objectForKeyedSubscript:v34];
          v38 -= [v16 unsignedLongLongValue];
          v6 = v19;
          v7 = v18;
          v10 = v36;
LABEL_11:

          goto LABEL_19;
        }

        v8 = v20;
        if (v38 >= purge)
        {
          v27 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "enough bytes have been freed, finishing", buf, 2u);
          }

          objc_autoreleasePoolPop(v13);
          goto LABEL_30;
        }
      }

      v6 = v19;
      v7 = v18;
      v10 = v36;
LABEL_19:

      objc_autoreleasePoolPop(v13);
      ++v11;
    }

    while (v10 != v11);
    v26 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    v10 = v26;
    if (v26)
    {
      continue;
    }

    break;
  }

LABEL_30:

  return v38;
}

+ (unint64_t)_scanFilesInPhotoLibrary:(id)library fromPhotoMetadataDirectoryShouldFreeSpace:(BOOL)space bytesToPurge:(unint64_t)purge skipAssets:(id)assets
{
  spaceCopy = space;
  v60[3] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  assetsCopy = assets;
  v9 = MEMORY[0x1E695DFF8];
  v43 = libraryCopy;
  pathManager = [libraryCopy pathManager];
  v11 = [pathManager photoDirectoryWithType:10];
  v12 = [v9 fileURLWithPath:v11 isDirectory:1];

  v51 = *MEMORY[0x1E695DBB8];
  v13 = *MEMORY[0x1E695DBB8];
  v52 = *MEMORY[0x1E695DC30];
  v60[0] = *MEMORY[0x1E695DC30];
  v60[1] = v13;
  v41 = *MEMORY[0x1E695DB50];
  v60[2] = *MEMORY[0x1E695DB50];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:3];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v42 = v12;
  v53 = v14;
  [defaultManager enumeratorAtURL:v12 includingPropertiesForKeys:v14 options:0 errorHandler:&__block_literal_global_1464];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v58 = 0u;
  v50 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (!v50)
  {
    v45 = 0;
    goto LABEL_35;
  }

  purgeCopy = purge;
  v45 = 0;
  v15 = *v56;
  v48 = *v56;
  do
  {
    v16 = 0;
    do
    {
      if (*v56 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v55 + 1) + 8 * v16);
      v18 = objc_autoreleasePoolPush();
      v19 = [v17 resourceValuesForKeys:v53 error:0];
      v20 = [v19 objectForKeyedSubscript:v52];
      stringByDeletingPathExtension = [v20 stringByDeletingPathExtension];
      v22 = [v19 objectForKeyedSubscript:v51];
      bOOLValue = [v22 BOOLValue];
      if (v20)
      {
        v24 = bOOLValue == 0;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        pathExtension = [v20 pathExtension];
        path2 = +[PLManagedAsset extensionForLargeThumbnailFile];
        if ([pathExtension isEqualToString:path2])
        {
          v28 = [assetsCopy containsObject:stringByDeletingPathExtension];

          if (v28)
          {
            v25 = 1;
            v15 = v48;
            goto LABEL_26;
          }

          v29 = +[PLManagedAsset extensionForMediumThumbnailFile];
          v22 = [stringByDeletingPathExtension stringByAppendingPathExtension:v29];

          path = [v17 path];
          stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

          pathExtension = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v22];

          if (![defaultManager fileExistsAtPath:pathExtension])
          {
LABEL_20:
            v25 = 1;
            goto LABEL_24;
          }

          if (spaceCopy)
          {
            path2 = [v17 path];
            v25 = 1;
            v32 = [PLPhotoLibrary fileReservationForFileAtPath:path2 exclusive:1];
            if (v32)
            {
              v40 = v32;
              path3 = [v17 path];
              v34 = [defaultManager removeItemAtPath:path3 error:0];

              if (!v34)
              {
                goto LABEL_20;
              }

              v35 = [v19 objectForKeyedSubscript:v41];
              v36 = [v35 unsignedLongLongValue] + v45;

              v45 = v36;
              if (v36 < purgeCopy)
              {
                goto LABEL_20;
              }

              path2 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(path2, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19BF1F000, path2, OS_LOG_TYPE_DEFAULT, "enough bytes have been freed, finishing", buf, 2u);
              }

              v25 = 0;
            }

LABEL_23:

LABEL_24:
            v15 = v48;
            goto LABEL_25;
          }

          path2 = [v19 objectForKeyedSubscript:v41];
          v45 += [path2 unsignedLongLongValue];
        }

        v25 = 1;
        goto LABEL_23;
      }

      v25 = 1;
LABEL_25:

LABEL_26:
      objc_autoreleasePoolPop(v18);
      if (!v25)
      {
        goto LABEL_35;
      }

      ++v16;
    }

    while (v50 != v16);
    v37 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    v50 = v37;
  }

  while (v37);
LABEL_35:

  return v45;
}

+ (unint64_t)_scanFilesInPhotoLibrary:(id)library fromCloudSharingCacheDataDirectoryShouldFreeSpace:(BOOL)space bytesToPurge:(unint64_t)purge
{
  spaceCopy = space;
  v8 = MEMORY[0x1E695DFF8];
  pathManager = [library pathManager];
  v10 = [pathManager photoDirectoryWithType:25 createIfNeeded:0 error:0];
  v11 = [v8 fileURLWithPath:v10 isDirectory:1];

  v12 = [self _scanAndDeleteCacheFilesInDirectory:v11 shouldFreeSpace:spaceCopy bytesToPurge:purge];
  return v12;
}

+ (unint64_t)_scanFilesInPhotoLibrary:(id)library fromReimportPhotoCloudSharingDataDirectoryShouldFreeSpace:(BOOL)space bytesToPurge:(unint64_t)purge
{
  spaceCopy = space;
  v8 = MEMORY[0x1E695DFF8];
  pathManager = [library pathManager];
  v10 = [pathManager privateCacheDirectoryWithSubType:3];
  v11 = [v8 fileURLWithPath:v10 isDirectory:1];

  v12 = [self _scanAndDeleteCacheFilesInDirectory:v11 shouldFreeSpace:spaceCopy bytesToPurge:purge];
  return v12;
}

+ (unint64_t)_purgeAssetsFromFetchRequest:(id)request photoLibrary:(id)library requireBetterThanThumbnails:(BOOL)thumbnails recentlyUsedGUIDS:(id)s recentlyUsedAssetObjectIDs:(id)ds shouldFreeSpace:(BOOL)space bytesToPurge:(unint64_t)purge
{
  v53[6] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  libraryCopy = library;
  sCopy = s;
  dsCopy = ds;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PSSpaceManagementDebuggingEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  v53[0] = @"additionalAttributes";
  v53[1] = @"modernResources";
  v53[2] = @"cloudFeedAssetsEntry";
  v53[3] = @"extendedAttributes";
  v53[4] = @"mediaAnalysisAttributes";
  v53[5] = @"photoAnalysisAttributes";
  v33 = AppBooleanValue != 0;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:6];
  [requestCopy setRelationshipKeyPathsForPrefetching:v20];

  LOBYTE(s) = thumbnails;
  v32 = libraryCopy;
  managedObjectContext = [libraryCopy managedObjectContext];
  v31 = [PLEnumerateAndSaveController alloc];
  v22 = NSStringFromClass(self);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __169__PLDiskSpaceManagement__purgeAssetsFromFetchRequest_photoLibrary_requireBetterThanThumbnails_recentlyUsedGUIDS_recentlyUsedAssetObjectIDs_shouldFreeSpace_bytesToPurge___block_invoke;
  v44[3] = &unk_1E7575B30;
  v23 = managedObjectContext;
  v45 = v23;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __169__PLDiskSpaceManagement__purgeAssetsFromFetchRequest_photoLibrary_requireBetterThanThumbnails_recentlyUsedGUIDS_recentlyUsedAssetObjectIDs_shouldFreeSpace_bytesToPurge___block_invoke_2;
  v35[3] = &unk_1E7564D08;
  sCopy2 = s;
  v30 = sCopy;
  v36 = v30;
  v24 = dsCopy;
  spaceCopy = space;
  v37 = v24;
  v38 = &v47;
  v43 = v33;
  selfCopy = self;
  purgeCopy = purge;
  v25 = [(PLEnumerateAndSaveController *)v31 initWithName:v22 fetchRequest:requestCopy context:v23 options:4 generateContextBlock:v44 didFetchObjectIDsBlock:0 processResultBlock:v35];

  v34 = 0;
  LOBYTE(self) = [(PLEnumerateAndSaveController *)v25 processObjectsWithError:&v34];
  v26 = v34;
  if ((self & 1) == 0)
  {
    v27 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v26;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "PLDiskSpaceManagement: Failed to process purge request. Error: %@", buf, 0xCu);
    }
  }

  v28 = v48[3];

  _Block_object_dispose(&v47, 8);
  return v28;
}

void __169__PLDiskSpaceManagement__purgeAssetsFromFetchRequest_photoLibrary_requireBetterThanThumbnails_recentlyUsedGUIDS_recentlyUsedAssetObjectIDs_shouldFreeSpace_bytesToPurge___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (*(a1 + 72) != 1 || [v8 hasLargerThanThumbResourceLocal])
  {
    v10 = *(a1 + 32);
    v11 = [v9 cloudAssetGUID];
    LODWORD(v10) = [v10 containsObject:v11];

    if (v10)
    {
      v12 = *(a1 + 40);
      v13 = [v9 objectID];
      [v12 addObject:v13];
    }

    else
    {
      v14 = [*(a1 + 56) _processCloudSharedAsset:v9 shouldFreeSpace:*(a1 + 73)];
      *(*(*(a1 + 48) + 8) + 24) += v14;
      if (*(a1 + 74) == 1)
      {
        v15 = v14;
        v16 = [v9 cloudShareAlbum];
        v17 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 title];
          v19 = [v9 cloudBatchPublishDate];
          [v9 dateCreated];
          v20 = v24 = v16;
          v21 = [v9 pathForOriginalFile];
          v22 = *(*(*(a1 + 48) + 8) + 24);
          *buf = 138413570;
          v26 = v18;
          v27 = 2112;
          v28 = v19;
          v29 = 2112;
          v30 = v20;
          v31 = 2112;
          v32 = v21;
          v33 = 2048;
          v34 = v15;
          v35 = 2048;
          v36 = v22;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "%@ asset %@ %@ %@ size %lu total %lld", buf, 0x3Eu);

          v16 = v24;
        }
      }

      if (*(a1 + 73) == 1 && *(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
      {
        v23 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "enough bytes have been freed, finishing", buf, 2u);
        }

        *a4 = 1;
      }
    }
  }
}

+ (void)_processPurgeWithPhotoLibrary:(id)library shouldFreeSpace:(BOOL)space shouldKeepRecentlyViewedAssets:(BOOL)assets bytesToPurge:(unint64_t)purge bytesProcessed:(unint64_t *)processed
{
  assetsCopy = assets;
  spaceCopy = space;
  v29 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  pathManager = [libraryCopy pathManager];
  v13 = [PLManagedAsset persistedRecentlyUsedGUIDSWithPathManager:pathManager];

  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = [v13 count];
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "recentlyUsedGUIDS contains %lu entries", buf, 0xCu);
  }

  v15 = [PLManagedAsset fetchRequestForSortedCloudSharedAssetsWithPlaceholderKindsRequiringThumbnails:1 additionalPredicate:0 ascending:1];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v17 = [self _purgeAssetsFromFetchRequest:v15 photoLibrary:libraryCopy requireBetterThanThumbnails:1 recentlyUsedGUIDS:v13 recentlyUsedAssetObjectIDs:v16 shouldFreeSpace:spaceCopy bytesToPurge:purge];
  v18 = v17;
  if (v17 < purge)
  {
    v25 = [PLManagedAsset fetchRequestForSortedCloudSharedAssetsWithPlaceholderKindsRequiringThumbnails:1 additionalPredicate:0 ascending:1];
    v19 = [self _purgeAssetsFromFetchRequest:purge photoLibrary:? requireBetterThanThumbnails:? recentlyUsedGUIDS:? recentlyUsedAssetObjectIDs:? shouldFreeSpace:? bytesToPurge:?] + v18;
    if (v19 < purge)
    {
      if (!assetsCopy && [v16 count])
      {
        v23 = MEMORY[0x1E695D5E0];
        v20 = +[PLManagedAsset entityName];
        v24 = [v23 fetchRequestWithEntityName:v20];

        v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v16];
        [v24 setPredicate:v21];

        [v24 setFetchBatchSize:100];
        v19 += [self _purgeAssetsFromFetchRequest:v24 photoLibrary:libraryCopy requireBetterThanThumbnails:0 recentlyUsedGUIDS:0 recentlyUsedAssetObjectIDs:0 shouldFreeSpace:spaceCopy bytesToPurge:purge];
        if (v19 >= purge)
        {
          if (processed)
          {
            *processed = v19;
          }

          goto LABEL_17;
        }
      }

      if (purge > v19 || !spaceCopy)
      {
        if (assetsCopy)
        {
          v22 = v13;
        }

        else
        {
          v22 = 0;
        }

        v19 += [self _scanFilesInPhotoLibrary:libraryCopy fromPhotoMetadataDirectoryShouldFreeSpace:spaceCopy bytesToPurge:purge - v19 skipAssets:v22];
      }
    }

    if (processed)
    {
      *processed = v19;
    }

LABEL_17:

    goto LABEL_20;
  }

  if (processed)
  {
    *processed = v17;
  }

LABEL_20:
}

+ (unint64_t)performCloudSharingSpaceManagementWithBytesToPurge:(unint64_t)purge shouldFreeSpace:(BOOL)space shouldKeepRecentlyViewedAssets:(BOOL)assets fromPhotoLibrary:(id)library
{
  spaceCopy = space;
  libraryCopy = library;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v11 = [self _scanFilesInPhotoLibrary:libraryCopy fromReimportPhotoCloudSharingDataDirectoryShouldFreeSpace:spaceCopy bytesToPurge:purge];
  v12 = v25[3] + v11;
  v25[3] = v12;
  if (!spaceCopy || purge > v12)
  {
    v13 = [self _scanFilesInPhotoLibrary:libraryCopy fromCloudSharingCacheDataDirectoryShouldFreeSpace:spaceCopy bytesToPurge:purge - v12];
    v12 = v25[3] + v13;
    v25[3] = v12;
    if (!spaceCopy || v12 < purge)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __140__PLDiskSpaceManagement_performCloudSharingSpaceManagementWithBytesToPurge_shouldFreeSpace_shouldKeepRecentlyViewedAssets_fromPhotoLibrary___block_invoke;
      aBlock[3] = &unk_1E7564CE0;
      selfCopy = self;
      v14 = libraryCopy;
      v22 = spaceCopy;
      assetsCopy = assets;
      purgeCopy = purge;
      v18 = v14;
      v19 = &v24;
      v15 = _Block_copy(aBlock);
      if (spaceCopy)
      {
        [v14 performTransactionAndWait:v15];
      }

      else
      {
        [v14 performBlockAndWait:v15];
      }

      v12 = v25[3];
    }
  }

  _Block_object_dispose(&v24, 8);

  return v12;
}

@end
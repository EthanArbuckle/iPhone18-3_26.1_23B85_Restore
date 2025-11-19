@interface PLThumbnailManager
+ (BOOL)hasRebuildingThumbnailsIndicatorAndRebuildingWithPathManager:(id)a3;
+ (id)_thumbnailRebuildIndicatorPathWithPathManager:(id)a3;
+ (id)masterThumbFilename;
+ (id)thumbnailIdentifierWithAssetUUID:(id)a3 directory:(id)a4 filename:(id)a5 bundleScope:(unsigned __int16)a6 pathManager:(id)a7;
- (BOOL)_downscaleAndWriteTableAndFileBackedThumbnailsWithIdentifier:(id)a3 thumbnailIndex:(unint64_t)a4 image:(id)a5 assetUUID:(id)a6;
- (BOOL)_performUncompressedTableDownscaleIntoDatas:(id)a3 image:(id)a4 assetUUID:(id)a5;
- (BOOL)_thumbnailLoadingAssetIsHiddenOrTrashed:(id)a3;
- (BOOL)hasMissingThumbnailsInLibrary:(id)a3;
- (BOOL)hasRebuildThumbnailsRequest;
- (BOOL)resetThumbnailsForced:(BOOL)a3 isMissingTables:(BOOL)a4 inContext:(id)a5;
- (BOOL)resetThumbnailsWithResetType:(int64_t)a3 deferHintChanges:(BOOL)a4 inContext:(id)a5;
- (BOOL)setThumbnailsForThumbIdentifier:(id)a3 thumbnailIndex:(unint64_t)a4 assetUUID:(id)a5 kind:(signed __int16)a6 extension:(id)a7 withImage:(id)a8;
- (BOOL)wantsTableOnlyRebuild;
- (CGImage)newImageForAsset:(id)a3 format:(id)a4;
- (PLThumbnailManager)initWithPhotoLibraryPathManager:(id)a3 storeFromMigration:(id)a4;
- (id)_contextForConfigurationChanges;
- (id)_dataForAsset:(id)a3 format:(unsigned __int16)a4 width:(int *)a5 height:(int *)a6 bytesPerRow:(int *)a7 dataWidth:(int *)a8 dataHeight:(int *)a9 imageDataOffset:(int *)a10 imageDataFormat:(unsigned __int16 *)a11;
- (id)_missingThumbnailPredicate;
- (id)_rebuildThumbnailsQueue;
- (id)_tableDescriptions;
- (id)beginThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:(id)a3;
- (id)dataForPhoto:(id)a3 format:(unsigned __int16)a4 allowPlaceholder:(BOOL)a5 width:(int *)a6 height:(int *)a7 bytesPerRow:(int *)a8 dataWidth:(int *)a9 dataHeight:(int *)a10 imageDataOffset:(int *)a11;
- (id)imageTableForFormat:(unsigned __int16)a3;
- (id)imageTableForFormat:(unsigned __int16)a3 readOnly:(BOOL)a4;
- (id)indexStatisticsForLibrary:(id)a3;
- (id)newSlowPersistenceManagers;
- (id)placeholderDataForFormat:(unsigned __int16)a3 photoImageSize:(CGSize)a4 width:(int *)a5 height:(int *)a6 bytesPerRow:(int *)a7 dataWidth:(int *)a8 dataHeight:(int *)a9 imageDataOffset:(int *)a10;
- (id)thumbManagerForFormatID:(unsigned __int16)a3;
- (id)thumbManagerForFormatID:(unsigned __int16)a3 readOnly:(BOOL)a4;
- (id)thumbnailJPEGPathForPhoto:(id)a3;
- (int64_t)_diskFootprintOfTableThumbnailTables;
- (int64_t)_rebuildAssetThumbnailsWithLimit:(int)a3 library:(id)a4 error:(id *)a5;
- (int64_t)removeAllThumbnailsInContextForUrgentCacheDeleteRequest:(id)a3 dryRun:(BOOL)a4 count:(unint64_t *)a5;
- (unsigned)_supportedThumbnailFormatIDFromGeneralFormatID:(unsigned __int16)a3;
- (void)_discardAlreadyFailedAssetObjectIDsForRebuild;
- (void)_recordRebuildThumbnailsAttempt;
- (void)_removeMasterThumbDirectoriesWithFileManagerDelegate:(id)a3;
- (void)addRebuildThumbnailsRequest;
- (void)continueRebuildingTableThumbsInLibrary:(id)a3;
- (void)dealloc;
- (void)deleteThumbnailsWithIdentifier:(id)a3 orIndex:(unint64_t)a4 uuid:(id)a5;
- (void)endThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:(id)a3 withToken:(id)a4;
- (void)handleRebuildThumbnailRequestPersistentFailureInPhotoLibrary:(id)a3;
- (void)preheatThumbnailDataWithFormat:(unsigned __int16)a3 thumbnailIndexes:(id)a4;
- (void)reStampConfigAsNeedingTableThumbMigration;
- (void)rebuildAllMissingThumbnailsInLibrary:(id)a3;
- (void)removeObsoleteMetadata;
- (void)removeRebuildThumbnailsRequest:(const char *)a3;
- (void)setThumbnailsForAsset:(id)a3 withImage:(id)a4;
@end

@implementation PLThumbnailManager

+ (id)masterThumbFilename
{
  if (masterThumbFilename_s_onceToken != -1)
  {
    dispatch_once(&masterThumbFilename_s_onceToken, &__block_literal_global_196_10796);
  }

  v3 = masterThumbFilename_s_string;

  return v3;
}

void __41__PLThumbnailManager_masterThumbFilename__block_invoke()
{
  v0 = [MEMORY[0x1E69BF248] defaultFormatChooser];
  v5 = [v0 masterThumbnailFormat];

  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v5, "formatID")}];
  v2 = [v1 stringValue];
  v3 = [v2 stringByAppendingString:@".JPG"];
  v4 = masterThumbFilename_s_string;
  masterThumbFilename_s_string = v3;
}

- (id)thumbManagerForFormatID:(unsigned __int16)a3 readOnly:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = objc_opt_class();

  return [(PLThumbnailManagerCore *)self thumbManagerForFormatID:v5 thumbFileManagerClass:v7 readOnly:v4];
}

- (id)thumbManagerForFormatID:(unsigned __int16)a3
{
  v3 = a3;
  v5 = PLIsAssetsd() ^ 1;

  return [(PLThumbnailManager *)self thumbManagerForFormatID:v3 readOnly:v5];
}

- (unsigned)_supportedThumbnailFormatIDFromGeneralFormatID:(unsigned __int16)a3
{
  v3 = a3;
  if (a3 == 3039)
  {
    v4 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Low res full screen format is unsupported, clients should use the image manager and specifiy an image size", v8, 2u);
    }

    v5 = [MEMORY[0x1E69BF248] defaultFormatChooser];
    v6 = [v5 masterThumbnailFormat];
    v3 = [v6 formatID];
  }

  return v3;
}

- (id)_dataForAsset:(id)a3 format:(unsigned __int16)a4 width:(int *)a5 height:(int *)a6 bytesPerRow:(int *)a7 dataWidth:(int *)a8 dataHeight:(int *)a9 imageDataOffset:(int *)a10 imageDataFormat:(unsigned __int16 *)a11
{
  v15 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (v17)
  {
    v18 = [(PLThumbnailManager *)self _supportedThumbnailFormatIDFromGeneralFormatID:v15];
    v19 = [(PLThumbnailManager *)self thumbManagerForFormatID:v18];
    v58 = [v19 usesThumbIdentifiers];
    if (!v19)
    {
      v21 = 0;
      if (!a11)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v57 = [v17 effectiveThumbnailIndex];
    if ([v19 usesThumbIdentifiers] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v20 = [v17 thumbnailIdentifier];
    }

    else
    {
      v20 = 0;
    }

    v54 = a7;
    v55 = a5;
    v53 = a6;
    v21 = [v19 imageDataWithIdentifier:v20 orIndex:v57 width:a5 height:a6 bytesPerRow:a7 dataWidth:a8 dataHeight:a9 dataOffset:a10];
    if (![v19 isReadOnly] || v21)
    {
      goto LABEL_29;
    }

    if (v58)
    {
      if (![v17 hasMasterThumb])
      {
        goto LABEL_29;
      }
    }

    else if (([v17 hasTableThumbs] & 1) == 0)
    {
      goto LABEL_29;
    }

    if (!self->_previouslyRequestedThumbnailFixOIDs)
    {
      v22 = objc_opt_new();
      previouslyRequestedThumbnailFixOIDs = self->_previouslyRequestedThumbnailFixOIDs;
      self->_previouslyRequestedThumbnailFixOIDs = v22;
    }

    if (v58 & 1) == 0 && -[PLThumbnailManager _thumbnailLoadingAssetIsHiddenOrTrashed:](self, "_thumbnailLoadingAssetIsHiddenOrTrashed:", v17) || (v24 = self->_previouslyRequestedThumbnailFixOIDs, [v17 objectID], v52 = a8, v25 = objc_claimAutoreleasedReturnValue(), LOBYTE(v24) = -[NSMutableSet containsObject:](v24, "containsObject:", v25), v25, a8 = v52, (v24))
    {
LABEL_29:
      if ([v19 isReadOnly])
      {
        goto LABEL_46;
      }

      if (objc_opt_respondsToSelector())
      {
        v42 = [v17 uuid];
        v43 = v42;
        if (v21)
        {
          v44 = v55;
          if (!v42 || ([v19 validateData:v21 withToken:v42] & 1) != 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v44 = v55;
        }
      }

      else
      {
        v43 = 0;
        v44 = v55;
        if (v21)
        {
          goto LABEL_45;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v17;
        v46 = v45;
        v47 = v57;
        if (!((v57 == 0x7FFFFFFFFFFFFFFFLL) | v58 & 1))
        {
          v49 = v45;
          if ([v45 hidden])
          {
            v46 = v49;
            goto LABEL_44;
          }

          v50 = [v49 trashedState];
          v46 = v49;
          v47 = v57;
          if (v50)
          {
            goto LABEL_44;
          }
        }

        v56 = v46;
        [v46 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];
        v48 = [v19 imageDataWithIdentifier:v20 orIndex:v47 width:v44 height:v53 bytesPerRow:v54 dataWidth:a8 dataHeight:a9 dataOffset:a10];

        v46 = v56;
        v21 = v48;
LABEL_44:
      }

LABEL_45:

LABEL_46:
      if (!a11)
      {
LABEL_48:

        goto LABEL_49;
      }

LABEL_47:
      *a11 = v18;
      goto LABEL_48;
    }

    v26 = self->_previouslyRequestedThumbnailFixOIDs;
    v27 = [v17 objectID];
    [(NSMutableSet *)v26 addObject:v27];

    v28 = MEMORY[0x1E696AEC0];
    v29 = [v17 objectID];
    v30 = [v28 stringWithFormat:@"%@", v29];

    v31 = PLThumbnailsGetLog();
    v32 = v31;
    if (v57 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v60 = v30;
        v33 = "Requesting thumbnail for %{public}@";
        v34 = v32;
        v35 = OS_LOG_TYPE_ERROR;
        v36 = 12;
LABEL_25:
        _os_log_impl(&dword_19BF1F000, v34, v35, v33, buf, v36);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v60 = v30;
      v61 = 2048;
      v62 = v57;
      v33 = "Fixing thumbnail for %{public}@ at index %lu";
      v34 = v32;
      v35 = OS_LOG_TYPE_DEFAULT;
      v36 = 22;
      goto LABEL_25;
    }

    [(NSLock *)self->_fixLock lock];
    requestedThumbnailFixAssets = self->_requestedThumbnailFixAssets;
    if (!requestedThumbnailFixAssets)
    {
      v38 = objc_opt_new();
      v39 = self->_requestedThumbnailFixAssets;
      self->_requestedThumbnailFixAssets = v38;

      requestedThumbnailFixAssets = self->_requestedThumbnailFixAssets;
    }

    [(NSMutableSet *)requestedThumbnailFixAssets addObject:v17];
    [(NSLock *)self->_fixLock unlock];
    v40 = [v17 pl_photoLibrary];
    dispatch_time(0, 1000000000);
    v41 = v40;
    pl_dispatch_after();

    a8 = v52;
    goto LABEL_29;
  }

  v21 = 0;
LABEL_49:

  return v21;
}

void __121__PLThumbnailManager__dataForAsset_format_width_height_bytesPerRow_dataWidth_dataHeight_imageDataOffset_imageDataFormat___block_invoke(int8x16_t *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __121__PLThumbnailManager__dataForAsset_format_width_height_bytesPerRow_dataWidth_dataHeight_imageDataOffset_imageDataFormat___block_invoke_2;
  v2[3] = &unk_1E7578848;
  v1 = a1[2];
  v3 = vextq_s8(v1, v1, 8uLL);
  [v1.i64[0] performBlock:v2];
}

void __121__PLThumbnailManager__dataForAsset_format_width_height_bytesPerRow_dataWidth_dataHeight_imageDataOffset_imageDataFormat___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 96) lock];
  v15 = [*(*(a1 + 32) + 80) allObjects];
  [*(*(a1 + 32) + 80) removeAllObjects];
  [*(*(a1 + 32) + 96) unlock];
  v2 = [v15 count];
  v3 = v15;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v5;
      v7 = v5 - v4;
      if (v7 < 0x14)
      {
        v11 = v15;
      }

      else
      {
        v8 = [*(a1 + 40) assetsdClient];
        v9 = [v8 libraryClient];
        v10 = [v15 subarrayWithRange:{v4, v7}];
        [v9 updateThumbnailsForPhotos:v10 assignNewIndex:1 forceRefresh:0 completionHandler:&__block_literal_global_212];

        v11 = v15;
        v4 = v6;
      }

      v5 = v6 + 1;
    }

    while (v6 + 1 < [v11 count]);
    v3 = v15;
    if (v6 >= v4)
    {
      v12 = [*(a1 + 40) assetsdClient];
      v13 = [v12 libraryClient];
      v14 = [v15 subarrayWithRange:{v4, v5 - v4}];
      [v13 updateThumbnailsForPhotos:v14 assignNewIndex:1 forceRefresh:0 completionHandler:&__block_literal_global_215];

      v3 = v15;
    }
  }
}

void __121__PLThumbnailManager__dataForAsset_format_width_height_bytesPerRow_dataWidth_dataHeight_imageDataOffset_imageDataFormat___block_invoke_213(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Failed to update thumbnails for photos, error: %@", &v4, 0xCu);
    }
  }
}

void __121__PLThumbnailManager__dataForAsset_format_width_height_bytesPerRow_dataWidth_dataHeight_imageDataOffset_imageDataFormat___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Failed to update thumbnails for photos, error: %@", &v4, 0xCu);
    }
  }
}

- (BOOL)_thumbnailLoadingAssetIsHiddenOrTrashed:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v3 isHidden])
  {
    v4 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isTrashed];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)thumbnailJPEGPathForPhoto:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF248] defaultFormatChooser];
  v6 = [v5 masterThumbnailFormat];
  v7 = [v6 formatID];

  v8 = [(PLThumbnailManager *)self thumbManagerForFormatID:v7];
  if ([v8 usesThumbIdentifiers])
  {
    v9 = [v4 thumbnailIdentifier];
    v10 = [v8 thumbnailPathForThumbIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)indexStatisticsForLibrary:(id)a3
{
  v37[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PLThumbnailIndexes occupiedThumbnailIndexesWithLibrary:v4 fetchTimestampToUpdate:0];
  v6 = [v5 rangeCount];
  v7 = [v5 count];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v8 = +[PLManagedAsset entityName];
  v9 = [PLFetchRequest fetchRequestWithEntityName:v8];

  [v9 setResultType:2];
  v37[0] = @"objectID";
  v37[1] = @"dateCreated";
  v37[2] = @"thumbnailIndex";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  [v9 setPropertiesToFetch:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %d", @"thumbnailIndex", 0];
  [v9 setPredicate:v11];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:0];
  v36 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [v9 setSortDescriptors:v13];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __48__PLThumbnailManager_indexStatisticsForLibrary___block_invoke;
  v28[3] = &unk_1E7578820;
  v14 = v4;
  v29 = v14;
  v15 = v9;
  v30 = v15;
  v31 = &v32;
  [v14 performBlockAndWait:v28];
  v16 = [v5 count];
  v17 = v33[3];
  v18 = [v5 count];
  v19 = [MEMORY[0x1E695DF90] dictionary];
  *&v20 = v6 / v7;
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  [v19 setObject:v21 forKeyedSubscript:@"fragmentation"];

  *&v22 = (v16 - v17) / v18;
  v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  [v19 setObject:v23 forKeyedSubscript:@"orderedness"];

  v24 = [(PLThumbnailManagerCore *)self fastThumbPersistenceManagers];
  v25 = [v24 firstObject];

  if (v25)
  {
    v26 = [v25 fileStatistics];
    [v19 addEntriesFromDictionary:v26];
  }

  _Block_object_dispose(&v32, 8);

  return v19;
}

void __48__PLThumbnailManager_indexStatisticsForLibrary___block_invoke(uint64_t a1)
{
  v9 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v2 = [*(a1 + 32) managedObjectContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PLThumbnailManager_indexStatisticsForLibrary___block_invoke_2;
  v6[3] = &unk_1E75668A0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[4] = v7;
  v6[5] = v4;
  v5 = [v2 enumerateObjectsFromFetchRequest:v3 count:&v9 batchSize:10000 usingBlock:v6];

  _Block_object_dispose(v7, 8);
}

void __48__PLThumbnailManager_indexStatisticsForLibrary___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKeyedSubscript:@"thumbnailIndex"];
  v6 = [v5 intValue];

  if (a3 && v6 < *(*(*(a1 + 32) + 8) + 24))
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
}

- (int64_t)_diskFootprintOfTableThumbnailTables
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(PLThumbnailManagerCore *)self pathManager];
  v4 = [(PLThumbnailManagerCore *)PLThumbnailManager thumbnailFormatIDsForConfigPhase:1 withPathManager:v3];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) intValue];
        v11 = [MEMORY[0x1E69BF260] formatWithID:v10];
        if ([v11 isTable])
        {
          v12 = [(PLThumbnailManager *)self thumbManagerForFormatID:v10];
          v7 += [v12 fileLength];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_tableDescriptions
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PLThumbnailManagerCore *)self pathManager];
  v5 = [(PLThumbnailManagerCore *)PLThumbnailManager thumbnailFormatIDsForConfigPhase:1 withPathManager:v4];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = -[PLThumbnailManager thumbManagerForFormatID:](self, "thumbManagerForFormatID:", [*(*(&v13 + 1) + 8 * i) intValue]);
        v11 = [v10 _debugDescription];
        if (v11)
        {
          [v3 appendString:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)placeholderDataForFormat:(unsigned __int16)a3 photoImageSize:(CGSize)a4 width:(int *)a5 height:(int *)a6 bytesPerRow:(int *)a7 dataWidth:(int *)a8 dataHeight:(int *)a9 imageDataOffset:(int *)a10
{
  height = a4.height;
  width = a4.width;
  v17 = a3;
  v18 = +[PLPlaceholderThumbnailManager sharedManager];
  v19 = [v18 placeholderDataForFormat:v17 photoImageSize:a5 width:a6 height:a7 bytesPerRow:a8 dataWidth:a9 dataHeight:width imageDataOffset:height, a10];

  return v19;
}

- (void)preheatThumbnailDataWithFormat:(unsigned __int16)a3 thumbnailIndexes:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PLThumbnailManager *)self thumbManagerForFormatID:[(PLThumbnailManager *)self _supportedThumbnailFormatIDFromGeneralFormatID:v4]];
  [v7 preheatDataForThumbnailIndexes:v6];
}

- (id)dataForPhoto:(id)a3 format:(unsigned __int16)a4 allowPlaceholder:(BOOL)a5 width:(int *)a6 height:(int *)a7 bytesPerRow:(int *)a8 dataWidth:(int *)a9 dataHeight:(int *)a10 imageDataOffset:(int *)a11
{
  v23 = a5;
  v14 = a4;
  v16 = a3;
  v24 = v14;
  v17 = [PLImageLoadingUtilities canAccessImageForAsset:v16];
  if (v17)
  {
    v18 = [(PLThumbnailManager *)self _dataForAsset:v16 format:v14 width:a6 height:a7 bytesPerRow:a8 dataWidth:a9 dataHeight:a10 imageDataOffset:a11 imageDataFormat:&v24];
  }

  else
  {
    v18 = 0;
  }

  if (v23 && !v18)
  {
    v19 = [v16 effectiveThumbnailIndex] != 0x7FFFFFFFFFFFFFFFLL && v17;
    if (v19 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v18 = 0;
    }

    else
    {
      v20 = +[PLPlaceholderThumbnailManager sharedManager];
      v21 = v24;
      [v16 imageSize];
      v18 = [v20 placeholderDataForFormat:v21 photoImageSize:a6 width:a7 height:a8 bytesPerRow:a9 dataWidth:a10 dataHeight:a11 imageDataOffset:?];
    }
  }

  return v18;
}

- (void)deleteThumbnailsWithIdentifier:(id)a3 orIndex:(unint64_t)a4 uuid:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(PLThumbnailManagerCore *)self pathManager];
  v11 = [(PLThumbnailManagerCore *)PLThumbnailManager thumbnailFormatIDsForConfigPhase:1 withPathManager:v10];

  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = -[PLThumbnailManager thumbManagerForFormatID:](self, "thumbManagerForFormatID:", [*(*(&v17 + 1) + 8 * v15) intValue]);
        if (objc_opt_respondsToSelector())
        {
          [v16 deleteEntryWithIdentifier:v8 orIndex:a4 uuid:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v16 deleteEntryWithIdentifier:v8];
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (BOOL)setThumbnailsForThumbIdentifier:(id)a3 thumbnailIndex:(unint64_t)a4 assetUUID:(id)a5 kind:(signed __int16)a6 extension:(id)a7 withImage:(id)a8
{
  v10 = a6;
  v70 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v61 = [MEMORY[0x1E696AAA8] currentHandler];
    [v61 handleFailureInMethod:a2 object:self file:@"PLThumbnailManager.m" lineNumber:1325 description:@"Can only set thumbnails from assetsd"];
  }

  [v18 pixelSize];
  if (v20 <= 0.0 || v19 <= 0.0)
  {
    if (v10 < 2)
    {
      v21 = 0;
      goto LABEL_36;
    }

    v65 = self;
    v22 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Writing generic thumbnails for non image/video asset uuid: %{public}@...", buf, 0xCu);
    }

    v23 = [MEMORY[0x1E69BF248] defaultFormatChooser];
    v24 = [v23 masterThumbnailFormat];
    v25 = [v24 formatID];

    v64 = [MEMORY[0x1E69BF260] formatWithID:v25];
    [v64 size];
    v27 = v26;
    v29 = v28;
    v66 = 0;
    *buf = 0;
    PLGenericImageNameForExtension(v17, buf, &v66);
    v30 = *buf;
    v31 = v66;
    v32 = v30;
    v33 = PLPhotoLibraryServicesFrameworkBundle();
    v34 = [v33 pathForResource:v32 ofType:@"png"];
    v62 = v32;

    v35 = DCIM_newPLImageWithContentsOfFile();
    v36 = DCIM_CGImageRefFromPLImage();
    v37 = CGImageRetain(v36);

    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    if (v31)
    {
      PLPhysicalScreenScale();
      v40 = DCIM_boldSystemFontOfSize();
      v41 = DCIM_blackColor();
      v42 = DCIM_labelAttributesWithFontAndColor();

      v43 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v31 attributes:v42];
      v44 = CTLineCreateWithAttributedString(v43);
      v45 = v44;
      if (v44)
      {
        BoundsWithOptions = CTLineGetBoundsWithOptions(v44, 0x10uLL);
        width = BoundsWithOptions.size.width;
        height = BoundsWithOptions.size.height;
      }

      if (v37)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v45 = 0;
      if (v37)
      {
LABEL_14:
        v46 = CGImageGetWidth(v37);
        v47 = CGImageGetHeight(v37);
LABEL_21:
        v63 = v31;
        v49 = v46 <= v27 && v47 <= v29;
        v50 = a4;
        if (!v49)
        {
          PLSizeFromCGSize();
          PLSizeFromCGSize();
          PLCGSizeScaledToFitSize();
          v46 = v51;
          v47 = v52;
        }

        v53 = (v29 - (height + v47)) * 0.5;
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v55 = CGBitmapContextCreate(0, v27, v29, 8uLL, 0, DeviceRGB, 5u);
        v56 = CGColorCreate(DeviceRGB, kGenericImageBackgroundColor);
        CGContextSetFillColorWithColor(v55, v56);
        CGColorRelease(v56);
        CGColorSpaceRelease(DeviceRGB);
        v72.origin.x = *MEMORY[0x1E695F058];
        v72.origin.y = *(MEMORY[0x1E695F058] + 8);
        v72.size.width = v27;
        v72.size.height = v29;
        CGContextFillRect(v55, v72);
        if (v37)
        {
          CGContextSetBlendMode(v55, kCGBlendModeMultiply);
          CGContextSetAlpha(v55, 0.25);
          v73.origin.x = round((v27 - v46) * 0.5);
          v73.origin.y = height + v53;
          v73.size.width = v46;
          v73.size.height = v47;
          CGContextDrawImage(v55, v73, v37);
          CGImageRelease(v37);
        }

        if (v45)
        {
          CGContextSetTextPosition(v55, round((v27 - width) * 0.5), v53);
          CTLineDraw(v45, v55);
          CFRelease(v45);
        }

        Image = CGBitmapContextCreateImage(v55);
        CGContextRelease(v55);

        v58 = [[PLImageContainer alloc] initWithCGImage:Image];
        CGImageRelease(Image);
        v21 = [(PLThumbnailManager *)v65 _downscaleAndWriteTableAndFileBackedThumbnailsWithIdentifier:v15 thumbnailIndex:v50 image:v58 assetUUID:v16];
        if ((v21 & 1) == 0)
        {
          v59 = PLThumbnailsGetLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v16;
            _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_ERROR, "Error writing generic thumbnails for asset uuid: %{public}@.", buf, 0xCu);
          }
        }

        v48 = v64;
        goto LABEL_35;
      }
    }

    v46 = *MEMORY[0x1E695F060];
    v47 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_21;
  }

  if (![(PLThumbnailManager *)self _downscaleAndWriteTableAndFileBackedThumbnailsWithIdentifier:v15 thumbnailIndex:a4 image:v18 assetUUID:v16])
  {
    v48 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v16;
      v68 = 2114;
      v69 = v18;
      _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "Error writing thumbnails for asset uuid: %{public}@ from image container: %{public}@.", buf, 0x16u);
    }

    v21 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v21 = 1;
LABEL_36:

  return v21;
}

- (void)setThumbnailsForAsset:(id)a3 withImage:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 effectiveThumbnailIndex];
  v9 = [v6 thumbnailIdentifier];
  v10 = [v6 uuid];
  v11 = [v6 kind];
  v12 = [v6 pathForOriginalFile];
  v13 = [v12 pathExtension];
  v14 = [v13 uppercaseString];
  v15 = [(PLThumbnailManager *)self setThumbnailsForThumbIdentifier:v9 thumbnailIndex:v8 assetUUID:v10 kind:v11 extension:v14 withImage:v7];

  v16 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v6 uuid];
    v25 = 138412546;
    v26 = v17;
    v27 = 1024;
    v28 = v15;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Wrote thumbnails for asset %@ with success: %d", &v25, 0x12u);
  }

  v18 = v8 == 0x7FFFFFFFFFFFFFFFLL || v15;
  if ((v18 & 1) == 0)
  {
    v19 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v6 uuid];
      v25 = 138543362;
      v26 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Removing existing thumbnailIndex for asset uuid: %{public}@...", &v25, 0xCu);
    }

    v21 = [v6 thumbnailIdentifier];
    v22 = [v6 uuid];
    [(PLThumbnailManager *)self deleteThumbnailsWithIdentifier:v21 orIndex:v8 uuid:v22];

    [v6 setEffectiveThumbnailIndex:0x7FFFFFFFFFFFFFFFLL];
    v23 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v8];
    v24 = [v6 photoLibrary];
    [PLThumbnailIndexes recycleThumbnailIndexes:v23 inLibrary:v24];
  }
}

- (BOOL)_downscaleAndWriteTableAndFileBackedThumbnailsWithIdentifier:(id)a3 thumbnailIndex:(unint64_t)a4 image:(id)a5 assetUUID:(id)a6
{
  v107 = *MEMORY[0x1E69E9840];
  v69 = a3;
  v9 = a5;
  v72 = a6;
  v70 = v9;
  [v9 pixelSize];
  v11 = v10;
  v13 = v12;
  v66 = self;
  v14 = [(PLThumbnailManagerCore *)self fastThumbPersistenceManagers];
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 1;
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v88 objects:v106 count:16];
  if (v17)
  {
    v18 = *v89;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v89 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v88 + 1) + 8 * i);
        v21 = [v20 format];
        v22 = [v21 thumbnailKind] == 1;

        if (v22)
        {
          v23 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v20, "entryLength")}];
          [v15 addObject:v23];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v88 objects:v106 count:16];
    }

    while (v17);
  }

  if ([v16 count])
  {
    if ([v15 count])
    {
      v24 = [(PLThumbnailManager *)v66 _performUncompressedTableDownscaleIntoDatas:v15 image:v70 assetUUID:v72];
      *(v93 + 24) = v24;
      if (v24)
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v25 = v16;
        v26 = [v25 countByEnumeratingWithState:&v84 objects:v105 count:16];
        if (v26)
        {
          v27 = 0;
          v67 = *v85;
          while (2)
          {
            v68 = v26;
            for (j = 0; j != v68; ++j)
            {
              if (*v85 != v67)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v84 + 1) + 8 * j);
              v30 = [v29 format];
              v31 = [v30 thumbnailKind] == 1;

              if (v31)
              {
                v32 = [v15 objectAtIndex:v27];
                v33 = [v29 formatSideLen];
                [MEMORY[0x1E69BF190] centeredRectForSourceSize:v11 destinationSize:{v13, v33, v33}];
                v35 = v34;
                v37 = v36;
                v38 = PLUUIDBytesFromString();
                v40 = v39;
                v41 = v32;
                v42 = [v32 mutableBytes];
                v43 = v42 + [v32 length];
                *(v43 - 28) = v38;
                *(v43 - 20) = v40;
                *(v43 - 12) = v35;
                *(v43 - 8) = v37;
                v44 = [v29 writeEntryData:v32 toIndex:a4];
                *(v93 + 24) = v44;
                if (!v44)
                {
                  v45 = PLThumbnailsGetLog();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    v46 = [v32 length];
                    v47 = [v29 formatSideLen];
                    *buf = 134218754;
                    v98 = v46;
                    v99 = 2048;
                    v100 = MEMORY[0x1E69E98A8];
                    v101 = 2114;
                    v102 = v72;
                    v103 = 1024;
                    v104 = v47;
                    _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "Failed to write table entry data (len: %lu), to index: %lu for asset uuid %{public}@ in format with side len: %d", buf, 0x26u);
                  }

                  goto LABEL_29;
                }

                ++v27;
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v84 objects:v105 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v25 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v98 = v72;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to downscale thumbnail image container into table datas for asset uuid: %{public}@", buf, 0xCu);
        }
      }

LABEL_29:
    }

    v48 = objc_opt_class();
    v49 = [(PLThumbnailManagerCore *)v66 pathManager];
    v50 = [v48 tableThumbnailFormatsForConfigPhase:1 withPathManager:v49];

    v51 = [v50 _pl_filter:&__block_literal_global_158];
    if (![v51 count])
    {
      goto LABEL_49;
    }

    v52 = [v70 data];

    if (v52)
    {
      v53 = [v70 data];
      v54 = CGImageSourceCreateWithData(v53, 0);

      if (v54)
      {
        v83 = 0;
        v55 = [PLTableThumbnailEncoder encodeThumbnailSource:v54 toFormats:v51 withUUID:v72 error:&v83];
        v56 = v83;
        CFRelease(v54);
        if (!v55)
        {
          v57 = PLThumbnailsGetLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v98 = v72;
            v99 = 2112;
            v100 = v56;
            v58 = "Failed to encode thumbnail image data source into compressed tables for asset uuid: %{public}@, error: %@";
LABEL_40:
            _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, v58, buf, 0x16u);
            goto LABEL_45;
          }

          goto LABEL_45;
        }
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }
    }

    else
    {
      if (![v70 CGImage])
      {
        v57 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v98 = v72;
          _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Failed to downscale thumbnail image container into compressed table datas for asset uuid: %{public}@, image container missing data or imageRef", buf, 0xCu);
        }

        v56 = 0;
        goto LABEL_45;
      }

      v82 = 0;
      v55 = +[PLTableThumbnailEncoder encodeThumbnailImage:toFormats:withUUID:error:](PLTableThumbnailEncoder, "encodeThumbnailImage:toFormats:withUUID:error:", [v70 CGImage], v51, v72, &v82);
      v56 = v82;
      if (!v55)
      {
        v57 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v98 = v72;
          v99 = 2112;
          v100 = v56;
          v58 = "Failed to encode thumbnail image into compressed table datas for asset uuid: %{public}@, error: %@";
          goto LABEL_40;
        }

LABEL_45:

        v55 = 0;
        *(v93 + 24) = 0;
      }
    }

    if (*(v93 + 24) == 1)
    {
      v59 = [v16 _pl_filter:&__block_literal_global_163];
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __114__PLThumbnailManager__downscaleAndWriteTableAndFileBackedThumbnailsWithIdentifier_thumbnailIndex_image_assetUUID___block_invoke_2;
      v77[3] = &unk_1E7566878;
      v78 = v55;
      v81 = a4;
      v79 = v72;
      v80 = &v92;
      [v59 enumerateObjectsUsingBlock:v77];
    }

LABEL_49:
  }

  if (*(v93 + 24) == 1)
  {
    [(PLLazyObject *)v66->_slowPersistenceManagers objectValue];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v60 = v74 = 0u;
    v61 = [v60 countByEnumeratingWithState:&v73 objects:v96 count:16];
    if (v61)
    {
      v62 = *v74;
      while (2)
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v74 != v62)
          {
            objc_enumerationMutation(v60);
          }

          if (([*(*(&v73 + 1) + 8 * k) setImageForEntry:v70 withIdentifier:v69 orIndex:a4 photoUUID:v72 options:0] & 1) == 0)
          {
            *(v93 + 24) = 0;
            goto LABEL_62;
          }
        }

        v61 = [v60 countByEnumeratingWithState:&v73 objects:v96 count:16];
        if (v61)
        {
          continue;
        }

        break;
      }
    }

LABEL_62:

    v64 = *(v93 + 24);
  }

  else
  {
    v64 = 0;
  }

  _Block_object_dispose(&v92, 8);
  return v64 & 1;
}

void __114__PLThumbnailManager__downscaleAndWriteTableAndFileBackedThumbnailsWithIdentifier_thumbnailIndex_image_assetUUID___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 format];
  v8 = a1[4];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __114__PLThumbnailManager__downscaleAndWriteTableAndFileBackedThumbnailsWithIdentifier_thumbnailIndex_image_assetUUID___block_invoke_3;
  v19[3] = &unk_1E7573EA0;
  v9 = v7;
  v20 = v9;
  v10 = [v8 _pl_filter:v19];
  v11 = [v10 firstObject];

  if (v11)
  {
    v12 = [v11 entryDataForEntryLength:{objc_msgSend(v6, "entryLength")}];
    if (([v6 writeEntryData:v12 toIndex:a1[7]] & 1) == 0)
    {
      v13 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v12 length];
        v15 = a1[5];
        v16 = [v9 formatID];
        *buf = 134218498;
        v22 = v14;
        v23 = 2114;
        v24 = v15;
        v25 = 2048;
        v26 = v16;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to write compressed thumbnail image of len: %ld, for asset uuid: %{public}@, to table format: %ld", buf, 0x20u);
      }

      *a4 = 1;
      *(*(a1[6] + 8) + 24) = 0;
    }
  }

  else
  {
    v17 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = a1[5];
      *buf = 138543618;
      v22 = v6;
      v23 = 2114;
      v24 = v18;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Can't match a PLPositionalImageTable: %{public}@ to a PLTableThumbnailEncoderResult for asset uuid: %{public}@", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }
}

uint64_t __114__PLThumbnailManager__downscaleAndWriteTableAndFileBackedThumbnailsWithIdentifier_thumbnailIndex_image_assetUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 imageFormat];
  v4 = [v3 isEqualToFormat:*(a1 + 32)];

  return v4;
}

BOOL __114__PLThumbnailManager__downscaleAndWriteTableAndFileBackedThumbnailsWithIdentifier_thumbnailIndex_image_assetUUID___block_invoke_160(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 format];
  if ([v3 thumbnailKind] == 4)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 format];
    v4 = [v5 thumbnailKind] == 3;
  }

  return v4;
}

BOOL __114__PLThumbnailManager__downscaleAndWriteTableAndFileBackedThumbnailsWithIdentifier_thumbnailIndex_image_assetUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 thumbnailKind] == 4 || objc_msgSend(v2, "thumbnailKind") == 3;

  return v3;
}

- (BOOL)_performUncompressedTableDownscaleIntoDatas:(id)a3 image:(id)a4 assetUUID:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = [(PLThumbnailManagerCore *)self pathManager];
  v13 = [v11 uncompressedImageTableSpecificationsWithPathManager:v12];

  v14 = [v9 ioSurface];
  v15 = PLThumbnailsGetLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (!v14)
  {
    if (v16)
    {
      *buf = 138412290;
      v34 = v10;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "Unable to extract io surface for HW downscale for asset %@", buf, 0xCu);
    }

    v18 = v8;
LABEL_13:

    v21 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v10;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "Attempting SW downscale to generate table thumbs for asset %@", buf, 0xCu);
    }

    v22 = [v9 CGImage];
    if (v22)
    {
      v23 = v22;
      v15 = 0;
    }

    else
    {
      v15 = [v9 data];

      if (!v15)
      {
        goto LABEL_26;
      }

      v28 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = v10;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "Decoding PLImageContainer data to image in order to attempt SW downscale to generate table thumbs for asset %@", buf, 0xCu);
      }

      v29 = [v9 data];
      v15 = DCIM_newPLImageWithData();

      if (!v15 || (v23 = DCIM_CGImageRefFromPLImage()) == 0)
      {
LABEL_26:
        v27 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v34 = v10;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "SW downscale failed for asset %@, unable to resolve a source image.", buf, 0xCu);
        }

        v20 = 0;
        v25 = v18;
        goto LABEL_32;
      }
    }

    v31 = v18;
    v24 = [PLThumbnailUtilities performSWCascadingDownscaleTo5551OnImage:v23 withSpecifications:v13 destinationData:&v31];
    v25 = v31;

    v26 = PLThumbnailsGetLog();
    v27 = v26;
    if (v24)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = v10;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "SW downscale succeeded for asset %@", buf, 0xCu);
      }

      v20 = 1;
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v10;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "SW downscale failed for asset %@", buf, 0xCu);
      }

      v20 = 0;
    }

LABEL_32:

    v18 = v25;
    goto LABEL_33;
  }

  if (v16)
  {
    *buf = 138412290;
    v34 = v10;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "Attempting HW downscale to generate table thumbs for asset %@", buf, 0xCu);
  }

  v32 = v8;
  v17 = [PLThumbnailUtilities performHWCascadingDownscaleTo5551OnIOSurface:v14 withSpecifications:v13 destinationData:&v32 usingContext:self->_downscaleContext];
  v18 = v32;

  v19 = PLThumbnailsGetLog();
  v15 = v19;
  if (!v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v10;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "HW downscale failed for asset %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v34 = v10;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "HW downscale succeeded for asset %@", buf, 0xCu);
  }

  v20 = 1;
LABEL_33:

  return v20;
}

- (id)newSlowPersistenceManagers
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(PLThumbnailManagerCore *)self pathManager];
  v5 = [(PLThumbnailManagerCore *)PLThumbnailManager thumbnailFormatIDsForConfigPhase:1 withPathManager:v4];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) intValue];
        v11 = [MEMORY[0x1E69BF260] formatWithID:v10];
        if (([v11 isTable] & 1) == 0)
        {
          v12 = [(PLThumbnailManager *)self thumbManagerForFormatID:v10];
          [v3 addObject:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "#### slowThumbPersistenceManagers %@", buf, 0xCu);
  }

  return v3;
}

- (void)endThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:(id)a3 withToken:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(PLThumbnailManagerCore *)self pathManager];
  v9 = [(PLThumbnailManagerCore *)PLThumbnailManager thumbnailFormatIDsForConfigPhase:1 withPathManager:v8];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = -[PLThumbnailManager thumbManagerForFormatID:](self, "thumbManagerForFormatID:", [v14 intValue]);
        v16 = [v7 objectForKey:v14];
        [v15 endThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:v6 withToken:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (id)beginThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(PLThumbnailManagerCore *)self pathManager];
  v7 = [(PLThumbnailManagerCore *)PLThumbnailManager thumbnailFormatIDsForConfigPhase:1 withPathManager:v6];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = -[PLThumbnailManager thumbManagerForFormatID:](self, "thumbManagerForFormatID:", [v12 intValue]);
        v14 = [v13 beginThumbnailSafePropertyUpdatesOnAssetThumbnailIdentifier:v4];
        if (v14)
        {
          [v5 setObject:v14 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v5;
}

- (CGImage)newImageForAsset:(id)a3 format:(id)a4
{
  v6 = a3;
  v7 = -[PLThumbnailManager thumbManagerForFormatID:](self, "thumbManagerForFormatID:", -[PLThumbnailManager _supportedThumbnailFormatIDFromGeneralFormatID:](self, "_supportedThumbnailFormatIDFromGeneralFormatID:", [a4 formatID]));
  if ([v7 usesThumbIdentifiers])
  {
    v8 = [v6 thumbnailIdentifier];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 createImageWithIdentifier:v8 orIndex:{objc_msgSend(v6, "effectiveThumbnailIndex")}];

  return v9;
}

- (void)handleRebuildThumbnailRequestPersistentFailureInPhotoLibrary:(id)a3
{
  v4 = a3;
  PLIsAssetsd();
  [(PLThumbnailManager *)self _recordRebuildThumbnailsAttempt];
  [(PLThumbnailManager *)self removeRebuildThumbnailsRequest:"[PLThumbnailManager handleRebuildThumbnailRequestPersistentFailureInPhotoLibrary:]"];
  v5 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Rebuilding thumbs has failed too many time, possible an asset is crashing assetsd when we attempt to generate thumbs.  Trigger rebuilding the database by marking the database as corrupt via sqlite error file.", v7, 2u);
  }

  v6 = [v4 pathManager];

  [v6 setSqliteErrorForRebuildReason:9 allowsExit:1];
}

- (void)rebuildAllMissingThumbnailsInLibrary:(id)a3
{
  v4 = a3;
  PLIsAssetsd();
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E69BF360] transaction:"-[PLThumbnailManager rebuildAllMissingThumbnailsInLibrary:]"];
  v7 = [(PLThumbnailManager *)self _rebuildThumbnailsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PLThumbnailManager_rebuildAllMissingThumbnailsInLibrary___block_invoke;
  block[3] = &unk_1E75761B8;
  block[4] = self;
  v8 = v4;
  v11 = v8;
  v12 = v6;
  v9 = v6;
  dispatch_async(v7, block);

  objc_autoreleasePoolPop(v5);
}

uint64_t __59__PLThumbnailManager_rebuildAllMissingThumbnailsInLibrary___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  +[PLModelMigrator waitForDataMigratorToExit];
  v2 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Starting rebuild all missing thumbnails", buf, 2u);
  }

  *(*(a1 + 32) + 115) = 1;
  v3 = 10;
  *&v4 = 67109634;
  v19 = v4;
  while (1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 10;
    do
    {
      v8 = v5;
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v20 = v6;
      v11 = [v9 _rebuildAssetThumbnailsWithLimit:23 library:v10 error:{&v20, v19}];
      v12 = v20;

      v13 = v8 + v11;
      if (v11 >= 0)
      {
        v5 = v8 + v11;
      }

      else
      {
        v5 = v8;
      }

      v7 += v11 >> 63;
      if (v11)
      {
        v14 = v7 == 0;
      }

      else
      {
        v14 = 1;
      }

      v6 = v12;
    }

    while (!v14);
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    v15 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = v19;
      v22 = v8;
      v23 = 1024;
      v24 = v3;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to complete thumbnail rebuild (%d rebuilt, %d tries left) %@", buf, 0x18u);
    }

    *(*(a1 + 32) + 115) = 1;
    if (v3 < 2)
    {
      [*(a1 + 32) _discardAlreadyFailedAssetObjectIDsForRebuild];
      goto LABEL_25;
    }

    if (v3 <= 8)
    {
      v16 = 42;
    }

    else
    {
      v16 = 2;
    }

    sleep(v16);

    --v3;
  }

  v17 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = v13;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Rebuilt %d thumbnails", buf, 8u);
  }

  *(*(a1 + 32) + 115) = 1;
LABEL_25:

  *(*(a1 + 32) + 115) = 0;
  [*(a1 + 32) _recordRebuildThumbnailsAttempt];
  [*(a1 + 32) removeRebuildThumbnailsRequest:"-[PLThumbnailManager rebuildAllMissingThumbnailsInLibrary:]_block_invoke"];
  PFSharedFigDecodeSessionDiscardCachedBuffers();
  return [*(a1 + 48) stillAlive];
}

- (void)continueRebuildingTableThumbsInLibrary:(id)a3
{
  v4 = a3;
  v5 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Continuing table only thumbnail rebuild...", buf, 2u);
  }

  v6 = [MEMORY[0x1E69BF360] transaction:"-[PLThumbnailManager continueRebuildingTableThumbsInLibrary:]"];
  v7 = [(PLThumbnailManager *)self _rebuildThumbnailsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PLThumbnailManager_continueRebuildingTableThumbsInLibrary___block_invoke;
  block[3] = &unk_1E75761B8;
  block[4] = self;
  v11 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_async(v7, block);
}

void __61__PLThumbnailManager_continueRebuildingTableThumbsInLibrary___block_invoke(uint64_t a1)
{
  +[PLModelMigrator waitForDataMigratorToExit];
  v10 = objc_alloc_init(PLTableThumbnailMigrator);
  v2 = MEMORY[0x1E69BF310];
  v3 = [*(a1 + 32) pathManager];
  v4 = [v2 tableThumbnailFormatsForConfigPhase:2 withPathManager:v3];

  [(PLTableThumbnailMigrator *)v10 migrateAllAssetsPendingTableThumbRebuildInLibrary:*(a1 + 40) toTableFormats:v4 limit:0];
  if (![PLTableThumbnailMigrator countOfAssetsPendingTableThumbRebuildInLibrary:*(a1 + 40)])
  {
    v5 = objc_opt_class();
    v6 = [*(a1 + 32) pathManager];
    v7 = [v5 thumbnailConfigurationDictWithPathManager:v6];

    [objc_opt_class() markThumbnailConfigurationTableOnlyRebuildFinishedForThumbnailConfigDict:v7];
    v8 = objc_opt_class();
    v9 = [*(a1 + 32) pathManager];
    [v8 stampThumbnailConfiguration:v7 toFile:1 withPathManager:v9];
  }

  [*(a1 + 48) stillAlive];
}

- (id)_rebuildThumbnailsQueue
{
  if (_rebuildThumbnailsQueue_onceToken != -1)
  {
    dispatch_once(&_rebuildThumbnailsQueue_onceToken, &__block_literal_global_122);
  }

  v3 = _rebuildThumbnailsQueue_rebuildThumbsQueue;

  return v3;
}

void __45__PLThumbnailManager__rebuildThumbnailsQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("com.apple.assetsd.RebuildThumbnailQueue", attr);
  v2 = _rebuildThumbnailsQueue_rebuildThumbsQueue;
  _rebuildThumbnailsQueue_rebuildThumbsQueue = v1;
}

- (BOOL)hasMissingThumbnailsInLibrary:(id)a3
{
  v4 = a3;
  v5 = [v4 managedObjectContext];
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  [v8 setFetchLimit:1];
  v9 = [(PLThumbnailManager *)self _missingThumbnailPredicate];
  [v8 setPredicate:v9];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__PLThumbnailManager_hasMissingThumbnailsInLibrary___block_invoke;
  v13[3] = &unk_1E7578820;
  v16 = &v17;
  v10 = v5;
  v14 = v10;
  v11 = v8;
  v15 = v11;
  [v4 performBlockAndWait:v13];
  LOBYTE(v9) = v18[3] != 0;

  _Block_object_dispose(&v17, 8);
  return v9;
}

void __52__PLThumbnailManager_hasMissingThumbnailsInLibrary___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 countForFetchRequest:v3 error:&v7];
  v5 = v7;
  *(*(a1[6] + 8) + 24) = v4;
  if (*(*(a1[6] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to get missing thumbnail count: %@", buf, 0xCu);
    }
  }
}

- (int64_t)_rebuildAssetThumbnailsWithLimit:(int)a3 library:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if ([(NSMutableArray *)self->_alreadyFailedAssetObjectIDsForRebuild count]< 0x2711)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__10704;
    v26 = __Block_byref_object_dispose__10705;
    v27 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__PLThumbnailManager__rebuildAssetThumbnailsWithLimit_library_error___block_invoke;
    v15[3] = &unk_1E7566810;
    v21 = a3;
    v16 = v8;
    v17 = self;
    v18 = &v32;
    v19 = &v28;
    v20 = buf;
    [v16 performTransactionAndWait:v15];
    v11 = *(v23 + 5);
    if (v11)
    {
      if (a5)
      {
        *a5 = v11;
      }

      v12 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(v23 + 5);
        *v36 = 138412290;
        v37 = v13;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error rebuilding thumbnails: %@", v36, 0xCu);
      }
    }

    if (v29[3])
    {
      v10 = -1;
    }

    else
    {
      v10 = v33[3];
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v9 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to rebuild thumbnails for too many assets. Ending thumbnail rebuild now", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

void __69__PLThumbnailManager__rebuildAssetThumbnailsWithLimit_library_error___block_invoke(uint64_t a1)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v29 = [*(a1 + 32) managedObjectContext];
  v30 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v30 setFetchLimit:*(a1 + 72)];
  v2 = [objc_opt_class() entityInManagedObjectContext:v29];
  [v30 setEntity:v2];

  v3 = [*(*(a1 + 40) + 88) count];
  v4 = *(a1 + 40);
  if (v3)
  {
    [v4[12] lock];
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (self IN %@)", *(*(a1 + 40) + 88)];
    v6 = MEMORY[0x1E696AB28];
    v7 = [*(a1 + 40) _missingThumbnailPredicate];
    v40[0] = v7;
    v40[1] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v28 = [v6 andPredicateWithSubpredicates:v8];

    [*(*(a1 + 40) + 96) unlock];
  }

  else
  {
    v28 = [v4 _missingThumbnailPredicate];
  }

  [v30 setPredicate:v28];
  v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:0];
  v39 = v27;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  [v30 setSortDescriptors:v9];

  v35 = 0;
  v10 = [v29 executeFetchRequest:v30 error:&v35];
  v11 = v35;
  v26 = v35;
  if (v10)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v10 count];
    v12 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 67109120;
      LODWORD(v37) = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Rebuilding thumbs for batch of %d assets", buf, 8u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v15)
    {
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = PLThumbnailsGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = [v18 uuid];
            *buf = 138543362;
            v37 = v20;
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "Rebuilding thumbs for asset uuid: %{public}@", buf, 0xCu);
          }

          [v18 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];
          if (([v18 hasAllThumbs] & 1) == 0)
          {
            [*(*(a1 + 40) + 96) lock];
            v21 = *(*(a1 + 40) + 88);
            if (!v21)
            {
              v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v23 = *(a1 + 40);
              v24 = *(v23 + 88);
              *(v23 + 88) = v22;

              v21 = *(*(a1 + 40) + 88);
            }

            v25 = [v18 objectID];
            [v21 addObject:v25];

            [*(*(a1 + 40) + 96) unlock];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v15);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v11);
  }
}

- (id)_missingThumbnailPredicate
{
  pl_dispatch_once();
  v2 = _missingThumbnailPredicate_pl_once_object_37;

  return v2;
}

void __48__PLThumbnailManager__missingThumbnailPredicate__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AB28];
  v1 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"thumbnailIndex", 0xFFFFFFFFLL];
  v10[0] = v1;
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"thumbnailIndex", 4294967293];
  v10[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v4 = [v0 orPredicateWithSubpredicates:v3];
  v11[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"complete", 0];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v0 andPredicateWithSubpredicates:v6];
  v8 = [v7 copy];
  v9 = _missingThumbnailPredicate_pl_once_object_37;
  _missingThumbnailPredicate_pl_once_object_37 = v8;
}

- (void)_discardAlreadyFailedAssetObjectIDsForRebuild
{
  [(NSLock *)self->_fixLock lock];
  alreadyFailedAssetObjectIDsForRebuild = self->_alreadyFailedAssetObjectIDsForRebuild;
  self->_alreadyFailedAssetObjectIDsForRebuild = 0;

  fixLock = self->_fixLock;

  [(NSLock *)fixLock unlock];
}

- (void)_recordRebuildThumbnailsAttempt
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(PLThumbnailManagerCore *)self pathManager];
  objc_sync_enter(v3);
  v4 = objc_opt_class();
  v5 = [(PLThumbnailManagerCore *)self pathManager];
  v6 = [v4 _thumbnailRebuildIndicatorPathWithPathManager:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [(PLThumbnailManagerCore *)self pathManager];
    v10 = [v9 photoDirectoryWithType:6];

    [v19 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:0];
    v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v11 setDateFormat:@"yyyyMMdd-HHmmssZZZZZ"];
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [v11 stringFromDate:v12];

    v14 = [@"RebuildThumbnails_" stringByAppendingString:v13];
    v15 = [v10 stringByAppendingPathComponent:v14];
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = 0;
    LOBYTE(v12) = [v16 copyItemAtPath:v6 toPath:v15 error:&v20];
    v17 = v20;

    if ((v12 & 1) == 0)
    {
      v18 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v17;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to copy thumbnail rebuild indicator file to the caches directory, error (%@)", buf, 0xCu);
      }
    }
  }

  objc_sync_exit(v3);
}

- (void)removeRebuildThumbnailsRequest:(const char *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0)
  {
    MEMORY[0x19EAEE520]();
  }

  self->_shouldRebuildThumbnails = 0;
  v5 = objc_opt_class();
  v6 = [(PLThumbnailManagerCore *)self pathManager];
  v7 = [v5 _thumbnailRebuildIndicatorPathWithPathManager:v6];

  v8 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v7];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = 0;
  v10 = [v9 removeItemAtPath:v7 error:&v18];
  v11 = v18;

  v12 = PLThumbnailsGetLog();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = a3;
      v21 = 2112;
      v22 = v8;
      v14 = "Removed thumbnail rebuild indicator file (%s): %@";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 22;
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v15, v16, v14, buf, v17);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v20 = v11;
    v21 = 2080;
    v22 = a3;
    v23 = 2112;
    v24 = v8;
    v14 = "Failed to remove thumbnail rebuild indicator file %@ (%s): %@";
    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
    goto LABEL_8;
  }

  notify_post("PLThumbnailRebuildDidStop");
}

- (BOOL)hasRebuildThumbnailsRequest
{
  v32 = *MEMORY[0x1E69E9840];
  PLIsAssetsd();
  if (self->_shouldRebuildThumbnails)
  {
    return 1;
  }

  else if (self->_didCheckShouldRebuildThumbnails)
  {
    return 0;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = [(PLThumbnailManagerCore *)self pathManager];
    v6 = [v4 _thumbnailRebuildIndicatorPathWithPathManager:v5];

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v7 fileExistsAtPath:v6];

    if (v8)
    {
      v9 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Found thumbnail rebuild indicator file on disk at %@, indicates an incomplete thumbnail rebuild on a previous run of assetsd.", buf, 0xCu);
      }

      v10 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v6];
      v11 = [v10 objectForKey:PLThumbnailRequestRetriesLeftKey];
      v12 = [v11 intValue];

      v13 = (v12 - 1);
      if (v12 < 1)
      {
        v25 = [v10 count];
        v26 = PLThumbnailsGetLog();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        if (v25)
        {
          if (v27)
          {
            *buf = 138543362;
            v31 = v10;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Thumbnail rebuild indicator file on disk has no retries left.  Will not attempt thumbnail rebuild: %{public}@", buf, 0xCu);
          }

          self->_hasExceededThumbnailRebuildRequestLimit = 1;
        }

        else
        {
          if (v27)
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Thumbnail rebuild indicator file on disk is corrupt.  Will not attempt thumbnail rebuild", buf, 2u);
          }
        }

        self->_shouldRebuildThumbnails = 0;
        notify_post("PLThumbnailRebuildDidStop");
      }

      else
      {
        v14 = [MEMORY[0x1E696AD98] numberWithInt:v13];
        [v10 setObject:v14 forKey:PLThumbnailRequestRetriesLeftKey];

        v15 = [MEMORY[0x1E695DF00] date];
        v16 = [v15 description];
        v17 = [PLThumbnailRequestDateKey stringByAppendingFormat:@"(%d retries left)", v12];
        [v10 setObject:v16 forKey:v17];

        v18 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v31 = v10;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Updating thumbnail rebuild request indicator file:\n%{public}@", buf, 0xCu);
        }

        v19 = [MEMORY[0x1E696AC08] defaultManager];
        v29 = 0;
        v20 = [v19 removeItemAtPath:v6 error:&v29];
        v21 = v29;

        if ((v20 & 1) == 0)
        {
          v22 = PLThumbnailsGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v21;
            _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to remove previous thumbnail rebuild indicator file %@", buf, 0xCu);
          }
        }

        v23 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:100 options:0 error:0];
        if (([v23 writeToFile:v6 options:1073741825 error:0] & 1) == 0)
        {
          v24 = PLThumbnailsGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v6;
            _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Failed to write updated thumbnail rebuild indicator file %@", buf, 0xCu);
          }
        }

        self->_shouldRebuildThumbnails = 1;
      }
    }

    self->_didCheckShouldRebuildThumbnails = 1;
    shouldRebuildThumbnails = self->_shouldRebuildThumbnails;
  }

  return shouldRebuildThumbnails;
}

- (void)addRebuildThumbnailsRequest
{
  v27[2] = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0)
  {
    MEMORY[0x19EAEE520]();
  }

  v3 = [(PLThumbnailManagerCore *)self pathManager];
  objc_sync_enter(v3);
  if (!self->_shouldRebuildThumbnails)
  {
    v4 = objc_opt_class();
    v5 = [(PLThumbnailManagerCore *)self pathManager];
    v6 = [v4 _thumbnailRebuildIndicatorPathWithPathManager:v5];

    v26[0] = PLThumbnailRequestDateKey;
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [v7 description];
    v26[1] = PLThumbnailRequestRetriesLeftKey;
    v27[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithInt:10];
    v27[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = 0;
    LOBYTE(v9) = [v11 removeItemAtPath:v6 error:&v21];
    v12 = v21;

    if (v9)
    {
      goto LABEL_13;
    }

    v13 = [v12 userInfo];
    v14 = [v13 objectForKey:*MEMORY[0x1E696AA08]];

    v15 = [v14 domain];
    if ([v15 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v16 = [v14 code] == 2;

      if (v16)
      {
LABEL_12:

LABEL_13:
        v18 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:100 options:0 error:0];
        if ([v18 writeToFile:v6 options:1073741825 error:0])
        {
          v19 = PLThumbnailsGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v6;
            v20 = "Wrote thumbnail rebuild indicator file %@";
LABEL_18:
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
          }
        }

        else
        {
          v19 = PLThumbnailsGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v6;
            v20 = "Failed to write thumbnail rebuild indicator file %@";
            goto LABEL_18;
          }
        }

        self->_shouldRebuildThumbnails = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v17 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to remove previous thumbnail rebuild indicator file %@ %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_20:
  objc_sync_exit(v3);
}

- (int64_t)removeAllThumbnailsInContextForUrgentCacheDeleteRequest:(id)a3 dryRun:(BOOL)a4 count:(unint64_t *)a5
{
  v6 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v6)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [(PLThumbnailManagerCore *)self pathManager];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __91__PLThumbnailManager_removeAllThumbnailsInContextForUrgentCacheDeleteRequest_dryRun_count___block_invoke;
    v29[3] = &unk_1E7566798;
    v11 = v9;
    v30 = v11;
    [v10 enumerateBundleScopesWithBlock:v29];

    v12 = [(PLThumbnailManagerCore *)self pathManager];
    v13 = [v12 isDCIM];

    if (v13)
    {
      v14 = [(PLThumbnailManagerCore *)self pathManager];
      v15 = [v14 photoDirectoryWithType:12 createIfNeeded:1 error:0];
      [v11 addObject:v15];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v32 = 0x2020000000;
    v16 = objc_opt_class();
    v17 = [(PLThumbnailManagerCore *)self pathManager];
    v18 = [v16 allocatedFileSizeOfThumbnailTablesWithPathManager:v17];

    v33 = v18;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __91__PLThumbnailManager_removeAllThumbnailsInContextForUrgentCacheDeleteRequest_dryRun_count___block_invoke_2;
    v28[3] = &unk_1E75667E8;
    v28[4] = &buf;
    [v11 enumerateObjectsUsingBlock:v28];
    v19 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v20 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Reset image request hints and thumbnail indexes...", &buf, 2u);
    }

    if (![PLResourceInstaller resetImageRequestHintsInContext:v8 allowOneTimeThumbRebuild:1])
    {
      v19 = 0;
      goto LABEL_18;
    }

    [(PLThumbnailManager *)self addRebuildThumbnailsRequest];
    v11 = objc_alloc_init(MEMORY[0x1E69BF218]);
    v21 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Deleting thumbnail tables ...", &buf, 2u);
    }

    v22 = objc_opt_class();
    v23 = [(PLThumbnailManagerCore *)self pathManager];
    [v22 removeThumbnailTablesUnsupportedOnly:0 withPathManager:v23 fileManagerDelegate:v11];

    v24 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Deleting master thumbs...", &buf, 2u);
    }

    [(PLThumbnailManager *)self _removeMasterThumbDirectoriesWithFileManagerDelegate:v11];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, PLPhotoLibraryForceClientExitNotification, 0, 0, 0);
    v19 = [v11 totalFileAllocatedSize];
    v26 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "thumbnail tables and master thumbnail allocated size removed: %lld", &buf, 0xCu);
    }

    if (a5)
    {
      *a5 = [v11 count];
    }
  }

LABEL_18:
  return v19;
}

void __91__PLThumbnailManager_removeAllThumbnailsInContextForUrgentCacheDeleteRequest_dryRun_count___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = [a4 photoDirectoryWithType:12];
  [v4 addObject:v5];
}

uint64_t __91__PLThumbnailManager_removeAllThumbnailsInContextForUrgentCacheDeleteRequest_dryRun_count___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __91__PLThumbnailManager_removeAllThumbnailsInContextForUrgentCacheDeleteRequest_dryRun_count___block_invoke_3;
  v3[3] = &unk_1E75667C0;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69BF238] calculateTotalSizeOfFilesAtPath:a2 calculatePurgeable:0 allocatedSize:1 result:v3];
}

uint64_t __91__PLThumbnailManager_removeAllThumbnailsInContextForUrgentCacheDeleteRequest_dryRun_count___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a6)
  {
    *(*(*(result + 32) + 8) + 24) += a3;
  }

  return result;
}

- (BOOL)resetThumbnailsForced:(BOOL)a3 isMissingTables:(BOOL)a4 inContext:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(PLThumbnailManagerCore *)self pathManager];
  objc_sync_enter(v9);
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v11 = objc_opt_class();
    v12 = [(PLThumbnailManagerCore *)self pathManager];
    v13 = [v11 requiredThumbnailResetTypeWithPathManager:v12 comparedToConfigPhase:1];

    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    if (v5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }
  }

  v15 = [(PLThumbnailManager *)self resetThumbnailsWithResetType:v10 deferHintChanges:0 inContext:v8];
  objc_sync_exit(v9);

  return v15;
}

- (BOOL)resetThumbnailsWithResetType:(int64_t)a3 deferHintChanges:(BOOL)a4 inContext:(id)a5
{
  v5 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = objc_opt_class();
  v10 = [(PLThumbnailManagerCore *)self pathManager];
  v11 = [v9 thumbnailConfigurationDictWithPathManager:v10];

  if ((a3 - 1) >= 2)
  {
    if (a3 == 3)
    {
      v16 = objc_opt_class();
      v17 = [(PLThumbnailManagerCore *)self pathManager];
      [v16 stampThumbnailConfiguration:v11 toFile:0 withPathManager:v17];
    }

    v18 = 1;
  }

  else if ((PLIsAssetsd() & 1) != 0 || MEMORY[0x19EAEE520]())
  {
    v12 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v26[0] = 67109120;
      v26[1] = a3 != 2;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Removing unwanted thumbnail tables (unsupportedOnly: %d)...", v26, 8u);
    }

    v13 = objc_opt_class();
    v14 = [(PLThumbnailManagerCore *)self pathManager];
    [v13 removeThumbnailTablesUnsupportedOnly:a3 != 2 withPathManager:v14];

    if (a3 == 2)
    {
      v15 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26[0]) = 0;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Deleting master thumbs...", v26, 2u);
      }

      [(PLThumbnailManager *)self _removeMasterThumbDirectoriesWithFileManagerDelegate:0];
    }

    else
    {
      [objc_opt_class() markThumbnailConfigurationForTableOnlyRebuildForThumbnailConfigDict:v11];
    }

    v19 = objc_opt_class();
    v20 = [(PLThumbnailManagerCore *)self pathManager];
    [v19 stampThumbnailConfiguration:v11 toFile:1 withPathManager:v20];

    v21 = PLThumbnailsGetLog();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (a3 == 2)
    {
      if (v22)
      {
        LOWORD(v26[0]) = 0;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Resetting all thumbnail indexes for full rebuild...", v26, 2u);
      }

      v23 = [PLModelMigrator resetThumbnailIndexesAndInitiateThumbnailRebuildRequestIfSuccessfulForForThumbnailManager:self deferHintChanges:v5 inContext:v8];
    }

    else
    {
      if (v22)
      {
        LOWORD(v26[0]) = 0;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Marking assets with thumbs for table rebuild...", v26, 2u);
      }

      v23 = [PLModelMigrator markAssetsWithThumbsForTableRebuildInContext:v8];
    }

    v18 = v23;
  }

  else
  {
    v24 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26[0]) = 0;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Only assetsd can reset thumbnails", v26, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)_removeMasterThumbDirectoriesWithFileManagerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(PLThumbnailManagerCore *)self pathManager];
  objc_sync_enter(v5);
  v6 = objc_alloc_init(MEMORY[0x1E696AC08]);
  [v6 setDelegate:v4];
  v7 = [(PLThumbnailManagerCore *)self pathManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PLThumbnailManager__removeMasterThumbDirectoriesWithFileManagerDelegate___block_invoke;
  v13[3] = &unk_1E7566798;
  v8 = v6;
  v14 = v8;
  [v7 enumerateBundleScopesWithBlock:v13];

  v9 = [(PLThumbnailManagerCore *)self pathManager];
  v10 = [v9 isDCIM];

  if (v10)
  {
    v11 = [(PLThumbnailManagerCore *)self pathManager];
    v12 = [v11 photoDirectoryWithType:12 createIfNeeded:1 error:0];
    [v8 removeItemAtPath:v12 error:0];
  }

  objc_sync_exit(v5);
}

void __75__PLThumbnailManager__removeMasterThumbDirectoriesWithFileManagerDelegate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = [a4 photoDirectoryWithType:12];
  [v4 removeItemAtPath:v5 error:0];
}

- (void)reStampConfigAsNeedingTableThumbMigration
{
  v3 = objc_opt_class();
  v4 = [(PLThumbnailManagerCore *)self pathManager];
  v7 = [v3 thumbnailConfigurationDictWithPathManager:v4];

  [objc_opt_class() markThumbnailConfigurationForTableOnlyRebuildForThumbnailConfigDict:v7];
  v5 = objc_opt_class();
  v6 = [(PLThumbnailManagerCore *)self pathManager];
  [v5 stampThumbnailConfiguration:v7 toFile:1 withPathManager:v6];
}

- (BOOL)wantsTableOnlyRebuild
{
  v3 = objc_opt_class();
  v4 = [(PLThumbnailManagerCore *)self pathManager];
  v5 = [v3 thumbnailConfigurationDictWithPathManager:v4];

  LOBYTE(self) = [objc_opt_class() wantsTableOnlyRebuildForThumbnailConfigDict:v5];
  return self;
}

- (void)removeObsoleteMetadata
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = [(PLThumbnailManagerCore *)self pathManager];
  objc_sync_enter(v2);
  obj = v2;
  v32 = [v2 photoDirectoryWithType:11 createIfNeeded:1 error:0];
  v3 = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = PLAssetFormatsAllKnownFormatIDs();
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = *v39;
    v7 = *MEMORY[0x1E69C0018];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v38 + 1) + 8 * i) intValue];
        v10 = MEMORY[0x1E696AEC0];
        v11 = v9;
        v12 = obj;
        v13 = [v10 stringWithFormat:@"%d.%@", v11, v7];
        v14 = [v12 photoDirectoryWithType:11 createIfNeeded:1 error:0];

        v15 = [v14 stringByAppendingPathComponent:v13];

        v16 = [v15 lastPathComponent];
        [v3 addObject:v16];
      }

      v5 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v5);
  }

  v17 = [(PLThumbnailManagerCore *)self pathManager];
  v18 = [v17 photoDirectoryWithType:12 createIfNeeded:1 error:0];
  v19 = [v18 lastPathComponent];
  [v3 addObject:v19];

  v20 = [objc_opt_class() thumbnailConfigurationPathWithPathManager:obj];
  v21 = [v20 lastPathComponent];
  [v3 addObject:v21];

  v22 = [objc_opt_class() _thumbnailRebuildIndicatorPathWithPathManager:obj];
  v23 = [v22 lastPathComponent];
  [v3 addObject:v23];

  v24 = objc_alloc_init(MEMORY[0x1E696AC08]);
  [v24 contentsOfDirectoryAtPath:v32 error:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v25 = v35 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v26)
  {
    v27 = *v35;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v34 + 1) + 8 * j);
        if (([v3 containsObject:v29] & 1) == 0)
        {
          v30 = [v32 stringByAppendingPathComponent:v29];
          [v24 removeItemAtPath:v30 error:0];
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v26);
  }

  objc_sync_exit(obj);
}

- (id)imageTableForFormat:(unsigned __int16)a3 readOnly:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [MEMORY[0x1E69BF260] formatWithID:?];
  if ([v7 isTable])
  {
    v8 = [(PLThumbnailManager *)self thumbManagerForFormatID:v5 readOnly:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)imageTableForFormat:(unsigned __int16)a3
{
  v3 = a3;
  v5 = PLIsAssetsd() ^ 1;

  return [(PLThumbnailManager *)self imageTableForFormat:v3 readOnly:v5];
}

- (void)dealloc
{
  v3 = [(PLThumbnailManager *)self observerToken];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = [(PLThumbnailManager *)self observerToken];
    [v4 removeObserver:v5];
  }

  previouslyRequestedThumbnailFixOIDs = self->_previouslyRequestedThumbnailFixOIDs;
  self->_previouslyRequestedThumbnailFixOIDs = 0;

  requestedThumbnailFixAssets = self->_requestedThumbnailFixAssets;
  self->_requestedThumbnailFixAssets = 0;

  fixLock = self->_fixLock;
  self->_fixLock = 0;

  downscaleContext = self->_downscaleContext;
  self->_downscaleContext = 0;

  v10.receiver = self;
  v10.super_class = PLThumbnailManager;
  [(PLThumbnailManagerCore *)&v10 dealloc];
}

- (PLThumbnailManager)initWithPhotoLibraryPathManager:(id)a3 storeFromMigration:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLThumbnailManager.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  v31.receiver = self;
  v31.super_class = PLThumbnailManager;
  v9 = [(PLThumbnailManagerCore *)&v31 initWithPhotoLibraryPathManager:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_migrationStore, v8);
    if (!v8)
    {
      v11 = [objc_opt_class() requiredThumbnailResetTypeWithPathManager:v7 comparedToConfigPhase:1];
      if (PLIsAssetsd() & 1) != 0 || (MEMORY[0x19EAEE520]())
      {
        v12 = [(PLThumbnailManager *)v10 _contextForConfigurationChanges];
        [(PLThumbnailManager *)v10 resetThumbnailsWithResetType:v11 deferHintChanges:0 inContext:v12];
      }

      else
      {
        [(PLThumbnailManager *)v10 resetThumbnailsWithResetType:v11 deferHintChanges:0 inContext:0];
      }
    }

    if ((PLIsAssetsd() & 1) == 0)
    {
      objc_initWeak(&location, v10);
      v13 = DCIM_applicationBackgroundedNotificationName();
      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __73__PLThumbnailManager_initWithPhotoLibraryPathManager_storeFromMigration___block_invoke;
      v28[3] = &unk_1E75668F0;
      objc_copyWeak(&v29, &location);
      v15 = [v14 addObserverForName:v13 object:0 queue:0 usingBlock:v28];
      [(PLThumbnailManager *)v10 setObserverToken:v15];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    v16 = objc_alloc_init(MEMORY[0x1E696AD10]);
    fixLock = v10->_fixLock;
    v10->_fixLock = v16;

    v18 = objc_initWeak(&location, v10);
    v19 = objc_alloc(MEMORY[0x1E69BF270]);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __73__PLThumbnailManager_initWithPhotoLibraryPathManager_storeFromMigration___block_invoke_2;
    v26[3] = &unk_1E7576828;
    objc_copyWeak(&v27, &location);
    v20 = [v19 initWithBlock:v26];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    slowPersistenceManagers = v10->_slowPersistenceManagers;
    v10->_slowPersistenceManagers = v20;

    v22 = objc_alloc_init(PLThumbnailCascadingDownscaleContext);
    downscaleContext = v10->_downscaleContext;
    v10->_downscaleContext = v22;
  }

  return v10;
}

void __73__PLThumbnailManager_initWithPhotoLibraryPathManager_storeFromMigration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[9] removeAllObjects];
    WeakRetained = v2;
  }
}

id __73__PLThumbnailManager_initWithPhotoLibraryPathManager_storeFromMigration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newSlowPersistenceManagers];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_contextForConfigurationChanges
{
  WeakRetained = objc_loadWeakRetained(&self->_migrationStore);
  if (WeakRetained)
  {
    v4 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[PLThumbnailManager _contextForConfigurationChanges]"];
    [v4 setName:v5];

    v6 = [WeakRetained persistentStoreCoordinator];
    [v4 setPersistentStoreCoordinator:v6];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__PLThumbnailManager__contextForConfigurationChanges__block_invoke;
    v17[3] = &unk_1E7578848;
    v7 = v4;
    v18 = v7;
    v19 = self;
    [v7 performBlockAndWait:v17];
    v8 = v18;
  }

  else
  {
    v9 = [(PLThumbnailManagerCore *)self pathManager];
    v8 = [v9 libraryURL];

    v10 = +[PLPhotoLibraryBundleController sharedBundleController];
    v11 = [v10 lookupOrCreateBundleForLibraryURL:v8];

    v12 = [v11 libraryServicesManager];
    if ([v12 state] > 5 || PLIsAssetsdProxyService() && !PLIsMigrationService() || MEMORY[0x19EAEE520]())
    {
      v13 = [PLDatabaseContext newShortLivedLibraryWithName:"[PLThumbnailManager _contextForConfigurationChanges]" bundle:v11];
      v7 = [v13 managedObjectContext];
    }

    else
    {
      v15 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_FAULT, "thumbnailManager must be initialized with a migrationStore when being used before library is opened.", buf, 2u);
      }

      v7 = 0;
    }
  }

  return v7;
}

void __53__PLThumbnailManager__contextForConfigurationChanges__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 40) pathManager];
  v2 = [*(a1 + 32) userInfo];
  [v2 setObject:v3 forKeyedSubscript:@"com.apple.photos.PLModelMigratorPathManagerKey"];
}

+ (BOOL)hasRebuildingThumbnailsIndicatorAndRebuildingWithPathManager:(id)a3
{
  v4 = a3;
  PLIsAssetsd();
  v5 = [a1 _thumbnailRebuildIndicatorPathWithPathManager:v4];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  v11 = 0;
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v5];
    v9 = [v8 objectForKey:PLThumbnailRequestRetriesLeftKey];
    v10 = [v9 intValue];

    if (v10 > 0)
    {
      v11 = 1;
    }
  }

  return v11;
}

+ (id)thumbnailIdentifierWithAssetUUID:(id)a3 directory:(id)a4 filename:(id)a5 bundleScope:(unsigned __int16)a6 pathManager:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([a7 shouldUseFileIdentifierForBundleScope:v8])
  {
    v14 = [MEMORY[0x1E69BF308] thumbnailIdentifierURLComponentsForUBFWithAssetUUID:v11 bundleScope:v8];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v14 setScheme:*MEMORY[0x1E69C0010]];
    if ([v12 length] && objc_msgSend(v13, "length"))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v12, v13];
      [v14 setPath:v15];
    }
  }

  v16 = [v14 path];
  if ([v16 length])
  {
    v17 = [v14 string];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_thumbnailRebuildIndicatorPathWithPathManager:(id)a3
{
  v3 = [a3 photoDirectoryWithType:11 createIfNeeded:1 error:0];
  v4 = [v3 stringByAppendingPathComponent:@"rebuild"];

  return v4;
}

@end
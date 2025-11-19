@interface PLTableThumbnailMigrator
+ (BOOL)_writeCompressedTableThumbsFromMasterThumb:(CGImageSource *)a3 uuid:(id)a4 formats:(id)a5 toIndex:(unint64_t)a6 thumbnailManager:(id)a7;
+ (id)_fetchRequstForAssetsPendingTableRebuildWithLimit:(int64_t)a3 excludingAssetIDs:(id)a4;
+ (id)_nextBatchOfItemsPendingTableRebuildInLibrary:(id)a3 excludingAssetIDs:(id)a4 sourceObjects:(id *)a5;
+ (id)_workItemForAsset:(id)a3 library:(id)a4 thumbnailManager:(id)a5;
+ (unint64_t)countOfAssetsPendingTableThumbRebuildInLibrary:(id)a3;
- (PLTableThumbnailMigrator)init;
- (id)_bulkMigratorQueue;
- (void)_rebuildTablesForBatch:(id)a3 inLibrary:(id)a4 toFormats:(id)a5;
- (void)migrateAllAssetsPendingTableThumbRebuildInLibrary:(id)a3 toTableFormats:(id)a4 limit:(unint64_t)a5;
- (void)rebuildTableThumbForAsset:(id)a3 inLibrary:(id)a4 toTableFormats:(id)a5;
@end

@implementation PLTableThumbnailMigrator

- (void)migrateAllAssetsPendingTableThumbRebuildInLibrary:(id)a3 toTableFormats:(id)a4 limit:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLTableThumbnailMigrator.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v11 = [v9 thumbnailManager];

  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLTableThumbnailMigrator.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"library.thumbnailManager"}];

    if (v10)
    {
      goto LABEL_5;
    }

LABEL_7:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLTableThumbnailMigrator.m" lineNumber:299 description:{@"Invalid parameter not satisfying: %@", @"tableFormats"}];

    goto LABEL_5;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_5:
  v12 = [(PLTableThumbnailMigrator *)self _bulkMigratorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PLTableThumbnailMigrator_migrateAllAssetsPendingTableThumbRebuildInLibrary_toTableFormats_limit___block_invoke;
  block[3] = &unk_1E7576168;
  v19 = v10;
  v20 = self;
  v21 = v9;
  v22 = a5;
  v13 = v9;
  v14 = v10;
  dispatch_sync(v12, block);
}

void __99__PLTableThumbnailMigrator_migrateAllAssetsPendingTableThumbRebuildInLibrary_toTableFormats_limit___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v25 = [*(a1 + 32) sortedArrayUsingComparator:&__block_literal_global_114];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = 0;
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    *&v5 = NAN;
  }

  while (v4 <= v5)
  {
    v6 = objc_autoreleasePoolPush();
    os_unfair_lock_lock((*(a1 + 40) + 8));
    v7 = [*(*(a1 + 40) + 16) copy];
    os_unfair_lock_unlock((*(a1 + 40) + 8));
    v8 = [*(a1 + 48) libraryBundle];
    v9 = [PLDatabaseContext newShortLivedLibraryWithName:"[PLTableThumbnailMigrator migrateAllAssetsPendingTableThumbRebuildInLibrary:toTableFormats:limit:]_block_invoke" bundle:v8];

    v10 = objc_opt_class();
    v26 = 0;
    v11 = [v10 _nextBatchOfItemsPendingTableRebuildInLibrary:v9 excludingAssetIDs:v7 sourceObjects:&v26];
    v12 = v26;
    v13 = [v11 count];
    v14 = PLThumbnailsGetLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *&v16 = COERCE_DOUBLE([v11 count]);
        *buf = 134217984;
        v28 = *&v16;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Processing batch of %ld assets for table thumb migration...", buf, 0xCu);
      }

      [*(a1 + 40) _rebuildTablesForBatch:v11 inLibrary:v9 toFormats:v25];
      v4 += [v11 count];
      v14 = PLThumbnailsGetLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *&v17 = COERCE_DOUBLE([v11 count]);
      *buf = 134218496;
      v28 = *&v17;
      v29 = 2048;
      v30 = v4;
      v31 = 2048;
      v32 = v5;
      v18 = v14;
      v19 = "Processed batch of %ld assets for table thumb migration.  Total processed in session: %ld (limit: %ld).";
      v20 = 32;
      goto LABEL_12;
    }

    if (v15)
    {
      *buf = 0;
      v18 = v14;
      v19 = "Done migrating table thumbs, no more assets remaining.";
      v20 = 2;
LABEL_12:
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
    }

LABEL_13:

    objc_autoreleasePoolPop(v6);
    if (!v13)
    {
      break;
    }
  }

  if (v4 > v5)
  {
    v21 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = *&v5;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Reached limit of %ld assets to process for table thumb migration.", buf, 0xCu);
    }
  }

  v22 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [MEMORY[0x1E695DF00] date];
    [v23 timeIntervalSinceReferenceDate];
    *buf = 134217984;
    v28 = v24 - v3;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Table thumb migration ended. (duration: %.3fs)", buf, 0xCu);
  }
}

- (void)rebuildTableThumbForAsset:(id)a3 inLibrary:(id)a4 toTableFormats:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLTableThumbnailMigrator.m" lineNumber:274 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PLTableThumbnailMigrator.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"library"}];

LABEL_3:
  v12 = [v10 thumbnailManager];

  if (v12)
  {
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLTableThumbnailMigrator.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"library.thumbnailManager"}];

    if (v11)
    {
      goto LABEL_5;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"PLTableThumbnailMigrator.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"tableFormats"}];

LABEL_5:
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__91955;
  v33 = __Block_byref_object_dispose__91956;
  v34 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__PLTableThumbnailMigrator_rebuildTableThumbForAsset_inLibrary_toTableFormats___block_invoke;
  v25[3] = &unk_1E75778C0;
  v28 = &v29;
  v25[4] = self;
  v13 = v9;
  v26 = v13;
  v14 = v10;
  v27 = v14;
  [v14 performBlockAndWait:v25];
  v15 = [v11 sortedArrayUsingComparator:&__block_literal_global_112];
  v16 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v30[5] uuid];
    *buf = 138412290;
    v37 = v17;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Processing asset %@ for table thumb migration...", buf, 0xCu);
  }

  v35 = v30[5];
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [(PLTableThumbnailMigrator *)self _rebuildTablesForBatch:v18 inLibrary:v14 toFormats:v15];

  v19 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v30[5] uuid];
    *buf = 138412290;
    v37 = v20;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Completed asset %@ for table thumb migration", buf, 0xCu);
  }

  _Block_object_dispose(&v29, 8);
}

void __79__PLTableThumbnailMigrator_rebuildTableThumbForAsset_inLibrary_toTableFormats___block_invoke(void *a1)
{
  v2 = objc_opt_class();
  v3 = a1[5];
  v4 = a1[6];
  v8 = [v4 thumbnailManager];
  v5 = [v2 _workItemForAsset:v3 library:v4 thumbnailManager:v8];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_rebuildTablesForBatch:(id)a3 inLibrary:(id)a4 toFormats:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    os_unfair_lock_lock(&self->_pendingAssetObjectIDsLock);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        v15 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v31 + 1) + 8 * v15) asset];
          v17 = [v16 objectID];

          if (v17)
          {
            [(NSMutableSet *)self->_pendingAssetObjectIDs addObject:v17];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }

    os_unfair_lock_unlock(&self->_pendingAssetObjectIDsLock);
    v18 = [v11 count];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PLTableThumbnailMigrator__rebuildTablesForBatch_inLibrary_toFormats___block_invoke;
    block[3] = &unk_1E7573F18;
    v19 = v11;
    v27 = v19;
    v28 = self;
    v29 = v10;
    v20 = v9;
    v30 = v20;
    dispatch_apply(v18, 0, block);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__PLTableThumbnailMigrator__rebuildTablesForBatch_inLibrary_toFormats___block_invoke_89;
    v23[3] = &unk_1E7578848;
    v24 = v19;
    v25 = v20;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__PLTableThumbnailMigrator__rebuildTablesForBatch_inLibrary_toFormats___block_invoke_2;
    v21[3] = &unk_1E7578848;
    v21[4] = self;
    v22 = v24;
    [v25 performTransaction:v23 completionHandler:v21 withPriority:0];
  }
}

void __71__PLTableThumbnailMigrator__rebuildTablesForBatch_inLibrary_toFormats___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [v3 masterThumbFilePath];

  if (v4 && (v5 = MEMORY[0x1E695DFF8], [v3 masterThumbFilePath], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "fileURLWithPath:", v6), v4 = objc_claimAutoreleasedReturnValue(), v6, v4) && (v7 = CGImageSourceCreateWithURL(v4, 0)) != 0)
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = [v3 uuid];
    v11 = *(a1 + 48);
    v12 = [v3 destinationThumbnailIndex];
    v13 = [*(a1 + 56) thumbnailManager];
    v14 = [v9 _writeCompressedTableThumbsFromMasterThumb:v8 uuid:v10 formats:v11 toIndex:v12 thumbnailManager:v13];

    [v3 setSucceeded:v14];
    CFRelease(v8);
  }

  else
  {
    v15 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v3 uuid];
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Unable to open image source for masterThumb for asset uuid: %{public}@", &v17, 0xCu);
    }
  }
}

void __71__PLTableThumbnailMigrator__rebuildTablesForBatch_inLibrary_toFormats___block_invoke_89(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD50] indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 asset];
        if (v9)
        {
          v10 = [v8 succeeded];
          v11 = [v8 destinationThumbnailIndex];
          if ((v10 & 1) == 0)
          {
            [v2 addIndex:v11];
            v11 = 0x7FFFFFFFFFFFFFFFLL;
          }

          [v9 setEffectiveThumbnailIndex:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    [PLThumbnailIndexes recycleThumbnailIndexes:v2 inLibrary:*(a1 + 40)];
  }
}

void __71__PLTableThumbnailMigrator__rebuildTablesForBatch_inLibrary_toFormats___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) asset];
        v8 = [v7 objectID];

        if (v8)
        {
          [*(*(a1 + 32) + 16) removeObject:v8];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

- (id)_bulkMigratorQueue
{
  if (_bulkMigratorQueue_s_onceToken != -1)
  {
    dispatch_once(&_bulkMigratorQueue_s_onceToken, &__block_literal_global_91967);
  }

  v3 = _bulkMigratorQueue_s_bulkMigratorQueue;

  return v3;
}

void __46__PLTableThumbnailMigrator__bulkMigratorQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("[PLTableThumbnailMigrator _bulkMigratorQueue]_block_invoke", attr);
  v2 = _bulkMigratorQueue_s_bulkMigratorQueue;
  _bulkMigratorQueue_s_bulkMigratorQueue = v1;
}

- (PLTableThumbnailMigrator)init
{
  v7.receiver = self;
  v7.super_class = PLTableThumbnailMigrator;
  v2 = [(PLTableThumbnailMigrator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_pendingAssetObjectIDsLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E695DFA8] set];
    pendingAssetObjectIDs = v3->_pendingAssetObjectIDs;
    v3->_pendingAssetObjectIDs = v4;
  }

  return v3;
}

+ (unint64_t)countOfAssetsPendingTableThumbRebuildInLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PLTableThumbnailMigrator.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PLTableThumbnailMigrator_countOfAssetsPendingTableThumbRebuildInLibrary___block_invoke;
  v10[3] = &unk_1E7576208;
  v12 = &v14;
  v13 = a1;
  v6 = v5;
  v11 = v6;
  [v6 performBlockAndWait:v10];
  v7 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v7;
}

void __75__PLTableThumbnailMigrator_countOfAssetsPendingTableThumbRebuildInLibrary___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 48) _fetchRequstForAssetsPendingTableRebuildWithLimit:500 excludingAssetIDs:0];
  v3 = [*(a1 + 32) managedObjectContext];
  v7 = 0;
  v4 = [v3 countForFetchRequest:v2 error:&v7];
  v5 = v7;
  *(*(*(a1 + 40) + 8) + 24) = v4;

  if (*(*(*(a1 + 40) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to determine count of assets pending table thumb rebuild: %@", buf, 0xCu);
    }
  }
}

+ (id)_nextBatchOfItemsPendingTableRebuildInLibrary:(id)a3 excludingAssetIDs:(id)a4 sourceObjects:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 thumbnailManager];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__91955;
  v33 = __Block_byref_object_dispose__91956;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__91955;
  v27 = __Block_byref_object_dispose__91956;
  v28 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__PLTableThumbnailMigrator__nextBatchOfItemsPendingTableRebuildInLibrary_excludingAssetIDs_sourceObjects___block_invoke;
  v16[3] = &unk_1E7573EF0;
  v11 = v8;
  v17 = v11;
  v22 = a1;
  v12 = v9;
  v18 = v12;
  v20 = &v23;
  v21 = &v29;
  v13 = v10;
  v19 = v13;
  [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v16];
  if (a5)
  {
    *a5 = v24[5];
  }

  v14 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v14;
}

void __106__PLTableThumbnailMigrator__nextBatchOfItemsPendingTableRebuildInLibrary_excludingAssetIDs_sourceObjects___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__PLTableThumbnailMigrator__nextBatchOfItemsPendingTableRebuildInLibrary_excludingAssetIDs_sourceObjects___block_invoke_2;
  v8[3] = &unk_1E7573EF0;
  v12 = *(a1 + 72);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v11 = *(a1 + 64);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 performBlockAndWait:v8];
}

void __106__PLTableThumbnailMigrator__nextBatchOfItemsPendingTableRebuildInLibrary_excludingAssetIDs_sourceObjects___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 72) _fetchRequstForAssetsPendingTableRebuildWithLimit:500 excludingAssetIDs:*(a1 + 32)];
  v3 = [*(a1 + 40) managedObjectContext];
  v16 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v16];
  v5 = v16;
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(*(*(a1 + 56) + 8) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__PLTableThumbnailMigrator__nextBatchOfItemsPendingTableRebuildInLibrary_excludingAssetIDs_sourceObjects___block_invoke_3;
  v12[3] = &unk_1E7573EC8;
  v15 = *(a1 + 72);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v9 = [v8 _pl_map:v12];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

+ (id)_workItemForAsset:(id)a3 library:(id)a4 thumbnailManager:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PLThumbnailMigratorWorkItem);
  v11 = [v9 uuid];
  [(PLThumbnailMigratorWorkItem *)v10 setUuid:v11];

  v12 = [PLThumbnailIndexes nextAvailableThumbnailIndexInLibrary:v8];
  [(PLThumbnailMigratorWorkItem *)v10 setDestinationThumbnailIndex:v12];
  v13 = [v7 thumbnailJPEGPathForPhoto:v9];

  [(PLThumbnailMigratorWorkItem *)v10 setMasterThumbFilePath:v13];
  [(PLThumbnailMigratorWorkItem *)v10 setAsset:v9];

  return v10;
}

+ (BOOL)_writeCompressedTableThumbsFromMasterThumb:(CGImageSource *)a3 uuid:(id)a4 formats:(id)a5 toIndex:(unint64_t)a6 thumbnailManager:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a7;
  v41 = 0;
  v13 = [PLTableThumbnailEncoder encodeThumbnailSource:a3 toFormats:v11 withUUID:v10 error:&v41];
  v14 = v41;
  v35 = v13;
  if (v13)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (!v16)
    {
      v25 = 1;
      goto LABEL_25;
    }

    v17 = v16;
    v31 = v14;
    v32 = v11;
    v33 = v10;
    v18 = *v38;
LABEL_4:
    v19 = 0;
    while (1)
    {
      if (*v38 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v37 + 1) + 8 * v19);
      v21 = [v12 thumbManagerForFormatID:{objc_msgSend(v20, "formatID", v31, v32)}];
      if ([v20 isTable])
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __109__PLTableThumbnailMigrator__writeCompressedTableThumbsFromMasterThumb_uuid_formats_toIndex_thumbnailManager___block_invoke;
        v36[3] = &unk_1E7573EA0;
        v36[4] = v20;
        v22 = [v35 _pl_filter:v36];
        v23 = [v22 firstObject];

        if (!v23)
        {
          v23 = PLThumbnailsGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v26 = [v20 formatID];
            *buf = 67109378;
            *v43 = v26;
            *&v43[4] = 2114;
            v10 = v33;
            *&v43[6] = v33;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to find result for format: %hu, asset uuid: %{public}@", buf, 0x12u);
          }

          else
          {
            v10 = v33;
          }

LABEL_23:
          v14 = v31;
          v11 = v32;

          goto LABEL_24;
        }

        v24 = -[NSObject entryDataForEntryLength:](v23, "entryDataForEntryLength:", [v21 entryLength]);
        if (([v21 writeEntryData:v24 toIndex:a6] & 1) == 0)
        {
          v27 = PLThumbnailsGetLog();
          v10 = v33;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = [v24 length];
            v29 = [v20 formatID];
            *buf = 134218498;
            *v43 = v28;
            *&v43[8] = 2114;
            *&v43[10] = v33;
            v44 = 2048;
            v45 = v29;
            _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to write compressed thumbnail image of len: %ld, for asset uuid: %{public}@, to table format: %ld", buf, 0x20u);
          }

          goto LABEL_23;
        }
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
        v25 = 1;
        if (v17)
        {
          goto LABEL_4;
        }

        v11 = v32;
        v10 = v33;
        v14 = v31;
        goto LABEL_25;
      }
    }
  }

  v15 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    *v43 = v10;
    *&v43[8] = 2112;
    *&v43[10] = v14;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to generate compressed thumbnails for asset uuid: %{public}@, error:%@", buf, 0x16u);
  }

LABEL_24:
  v25 = 0;
LABEL_25:

  return v25;
}

uint64_t __109__PLTableThumbnailMigrator__writeCompressedTableThumbsFromMasterThumb_uuid_formats_toIndex_thumbnailManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 imageFormat];
  v4 = [v3 isEqualToFormat:*(a1 + 32)];

  return v4;
}

+ (id)_fetchRequstForAssetsPendingTableRebuildWithLimit:(int64_t)a3 excludingAssetIDs:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  if (a3)
  {
    [v9 setFetchLimit:a3];
  }

  v10 = [a1 _predicateForAssetsPendingTableRebuild];
  [v9 setPredicate:v10];

  if ([v6 count])
  {
    v11 = MEMORY[0x1E696AB28];
    v12 = [v9 predicate];
    v20[0] = v12;
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT self IN %@", v6];
    v20[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v15 = [v11 andPredicateWithSubpredicates:v14];
    [v9 setPredicate:v15];
  }

  [v9 setIncludesPropertyValues:1];
  [v9 setReturnsObjectsAsFaults:0];
  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v19 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  [v9 setSortDescriptors:v17];

  return v9;
}

@end
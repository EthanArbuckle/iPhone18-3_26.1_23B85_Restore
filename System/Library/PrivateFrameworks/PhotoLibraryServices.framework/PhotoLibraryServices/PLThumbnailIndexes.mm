@interface PLThumbnailIndexes
+ (id)occupiedThumbnailIndexesWithLibrary:(id)a3 fetchTimestampToUpdate:(unint64_t *)a4 outFetchCount:(unint64_t *)a5;
+ (unint64_t)nextAvailableThumbnailIndexInLibrary:(id)a3;
+ (void)getAvailableThumbnailIndexInLibrary:(id)a3 withHandler:(id)a4;
+ (void)getAvailableThumbnailIndexesInLibrary:(id)a3 withCount:(unint64_t)a4 handler:(id)a5;
+ (void)recycleThumbnailIndexes:(id)a3 inLibrary:(id)a4;
+ (void)recycleThumbnailIndexes:(id)a3 inLibrary:(id)a4 timestamp:(unint64_t)a5;
- (PLThumbnailIndexes)init;
- (id)getAvailableThumbnailIndexesWithCount:(unint64_t)a3 inLibrary:(id)a4;
- (void)getAvailableThumbnailIndexesFromLibrary:(id)a3;
- (void)getAvailableThumbnailIndexesWithCount:(unint64_t)a3 inLibrary:(id)a4 handler:(id)a5;
- (void)recycleThumbnailIndexes:(id)a3 timestamp:(unint64_t)a4;
@end

@implementation PLThumbnailIndexes

- (PLThumbnailIndexes)init
{
  v6.receiver = self;
  v6.super_class = PLThumbnailIndexes;
  v2 = [(PLThumbnailIndexes *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.assetsd.thumbnailindexes", 0);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v3;
  }

  return v2;
}

+ (id)occupiedThumbnailIndexesWithLibrary:(id)a3 fetchTimestampToUpdate:(unint64_t *)a4 outFetchCount:(unint64_t *)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E696AD50] indexSet];
  v9 = objc_autoreleasePoolPush();
  v10 = +[PLManagedAsset entityName];
  v11 = [PLFetchRequest fetchRequestWithEntityName:v10];

  [v11 setResultType:2];
  v27[0] = @"thumbnailIndex";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v11 setPropertiesToFetch:v12];

  [v11 setPl_importantFetchName:@"fetchOccupiedThumbnailIndexes"];
  v13 = [v7 managedObjectContext];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __95__PLThumbnailIndexes_occupiedThumbnailIndexesWithLibrary_fetchTimestampToUpdate_outFetchCount___block_invoke;
  v19[3] = &unk_1E7569DC0;
  v20 = v13;
  v21 = v11;
  v25 = a4;
  v22 = @"thumbnailIndex";
  v14 = v8;
  v23 = v14;
  v15 = v7;
  v24 = v15;
  v26 = a5;
  v16 = v11;
  v17 = v13;
  [v15 performBlockAndWait:v19];

  objc_autoreleasePoolPop(v9);

  return v14;
}

void __95__PLThumbnailIndexes_occupiedThumbnailIndexesWithLibrary_fetchTimestampToUpdate_outFetchCount___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = PLThumbnailsGetLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FetchAndBuildAvailableThumbnailIndexSet", "", buf, 2u);
  }

  log = v3;
  v4 = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:0];
  v26 = [v4 count];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v30;
    do
    {
      v11 = 0;
      v28 = v8;
      v12 = -v8;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v29 + 1) + 8 * v11);
        v14 = objc_autoreleasePoolPush();
        if (v12 == v11)
        {
          v15 = mach_absolute_time();
          v9 = v15;
          v16 = *(a1 + 72);
          if (v16)
          {
            *v16 = v15;
          }
        }

        v17 = [v13 objectForKey:*(a1 + 48)];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 integerValue];
          if (v19 < 0xFFFFFFFFFFFFFFFDLL && v19 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [*(a1 + 56) addIndex:v19];
          }
        }

        objc_autoreleasePoolPop(v14);
        ++v11;
      }

      while (v7 != v11);
      v8 = v28 + v7;
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0;
  }

  if (os_signpost_enabled(log))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, log, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FetchAndBuildAvailableThumbnailIndexSet", "", buf, 2u);
  }

  v21 = CFAbsoluteTimeGetCurrent();
  v22 = [*(a1 + 64) libraryServicesManager];
  [v22 wellKnownPhotoLibraryIdentifier];
  v23 = PLStringFromWellKnownPhotoLibraryIdentifier();

  v24 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v34 = v26;
    v35 = 2048;
    v36 = v9;
    v37 = 2048;
    v38 = v21 - Current;
    v39 = 2112;
    v40 = v23;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "All indexes (count = %lu), fetched at %llu, duration: %.4fs, library type: %@", buf, 0x2Au);
  }

  v25 = *(a1 + 80);
  if (v25)
  {
    *v25 = v26;
  }
}

+ (void)recycleThumbnailIndexes:(id)a3 inLibrary:(id)a4 timestamp:(unint64_t)a5
{
  v7 = a3;
  v8 = [a4 thumbnailIndexes];
  [v8 recycleThumbnailIndexes:v7 timestamp:a5];
}

+ (void)recycleThumbnailIndexes:(id)a3 inLibrary:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a1 recycleThumbnailIndexes:v7 inLibrary:v6 timestamp:mach_absolute_time()];
}

+ (unint64_t)nextAvailableThumbnailIndexInLibrary:(id)a3
{
  v3 = a3;
  v4 = [v3 thumbnailIndexes];
  v5 = [v4 getAvailableThumbnailIndexesWithCount:1 inLibrary:v3];

  v6 = [v5 firstIndex];
  return v6;
}

+ (void)getAvailableThumbnailIndexInLibrary:(id)a3 withHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 thumbnailIndexes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PLThumbnailIndexes_getAvailableThumbnailIndexInLibrary_withHandler___block_invoke;
  v9[3] = &unk_1E7569D98;
  v10 = v5;
  v8 = v5;
  [v7 getAvailableThumbnailIndexesWithCount:1 inLibrary:v6 handler:v9];
}

uint64_t __70__PLThumbnailIndexes_getAvailableThumbnailIndexInLibrary_withHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 firstIndex];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (void)getAvailableThumbnailIndexesInLibrary:(id)a3 withCount:(unint64_t)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 thumbnailIndexes];
  [v9 getAvailableThumbnailIndexesWithCount:a4 inLibrary:v8 handler:v7];
}

- (void)recycleThumbnailIndexes:(id)a3 timestamp:(unint64_t)a4
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = v4;
    pl_dispatch_async();
  }
}

void __65__PLThumbnailIndexes_Private__recycleThumbnailIndexes_timestamp___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[6];
    v6 = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Recycling thumbnail indexes %@ with timestamp %llu", &v6, 0x16u);
  }

  v5 = a1[5];
  if (a1[6] >= *(v5 + 32))
  {
    [*(v5 + 16) addIndexes:a1[4]];
  }
}

- (void)getAvailableThumbnailIndexesFromLibrary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_opt_class() occupiedThumbnailIndexesWithLibrary:v4 fetchTimestampToUpdate:&self->_fetchTimestamp];
  v7 = [(NSMutableIndexSet *)v6 lastIndex];
  self->_usedMax = v7;
  if ((v7 | 0x8000000000000000) == 0xFFFFFFFFFFFFFFFFLL)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
    unusedIndexes = self->_unusedIndexes;
    self->_unusedIndexes = v8;

    v10 = 0;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, self->_usedMax}];
    v12 = self->_unusedIndexes;
    self->_unusedIndexes = v11;

    [(NSMutableIndexSet *)self->_unusedIndexes removeIndexes:v6];
    v10 = self->_usedMax + 1;
  }

  self->_usedMax = v10;
  v13 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Thumbnail indexes in use: %@", &v17, 0xCu);
  }

  v14 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = self->_unusedIndexes;
    usedMax = self->_usedMax;
    v17 = 138412546;
    v18 = v15;
    v19 = 2048;
    v20 = usedMax;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "Available thumbnail indexes in use: %@ (used max = %ld)", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)getAvailableThumbnailIndexesWithCount:(unint64_t)a3 inLibrary:(id)a4 handler:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  pl_dispatch_async();
}

void __87__PLThumbnailIndexes_Private__getAvailableThumbnailIndexesWithCount_inLibrary_handler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    [v2 getAvailableThumbnailIndexesFromLibrary:*(a1 + 40)];
  }

  v3 = [MEMORY[0x1E696AD50] indexSet];
  if (*(a1 + 56))
  {
    v4 = 0;
    while (1)
    {
      v5 = [*(*(a1 + 32) + 16) firstIndex];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v6 = v5;
      [*(*(a1 + 32) + 16) removeIndex:v5];
      [v3 addIndex:v6];
      ++v4;
      v7 = *(a1 + 56);
      if (v4 >= v7)
      {
        goto LABEL_10;
      }
    }

    v7 = *(a1 + 56);
LABEL_10:
    v8 = v7 - v4;
  }

  else
  {
    v8 = 0;
  }

  [v3 addIndexesInRange:{*(*(a1 + 32) + 24), v8}];
  *(*(a1 + 32) + 24) += v8;
  v9 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Handing out thumbnail indexes %@", buf, 0xCu);
  }

  v10 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    *buf = 138412546;
    v17 = v13;
    v18 = 2048;
    v19 = v12;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Available thumbnail indexes in use: %@ (used max = %ld)", buf, 0x16u);
  }

  v15 = *(a1 + 48);
  v14 = v3;
  pl_dispatch_async();
}

- (id)getAvailableThumbnailIndexesWithCount:(unint64_t)a3 inLibrary:(id)a4
{
  v4 = a4;
  v8 = [MEMORY[0x1E696AD50] indexSet];
  v5 = v4;
  pl_dispatch_sync();
  v6 = v8;

  return v8;
}

void __79__PLThumbnailIndexes_Private__getAvailableThumbnailIndexesWithCount_inLibrary___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    [v2 getAvailableThumbnailIndexesFromLibrary:*(a1 + 40)];
  }

  if (*(a1 + 56))
  {
    v3 = 0;
    while (1)
    {
      v4 = [*(*(a1 + 32) + 16) firstIndex];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v5 = v4;
      [*(*(a1 + 32) + 16) removeIndex:v4];
      [*(a1 + 48) addIndex:v5];
      ++v3;
      v6 = *(a1 + 56);
      if (v3 >= v6)
      {
        goto LABEL_10;
      }
    }

    v6 = *(a1 + 56);
LABEL_10:
    v7 = v6 - v3;
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 48) addIndexesInRange:{*(*(a1 + 32) + 24), v7}];
  *(*(a1 + 32) + 24) += v7;
  v8 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 48);
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Handing out thumbnail indexes %@", &v14, 0xCu);
  }

  v10 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    v14 = 138412546;
    v15 = v13;
    v16 = 2048;
    v17 = v12;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Available thumbnail indexes in use: %@ (used max = %ld)", &v14, 0x16u);
  }
}

@end
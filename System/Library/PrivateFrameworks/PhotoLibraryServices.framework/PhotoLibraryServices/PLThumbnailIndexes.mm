@interface PLThumbnailIndexes
+ (id)occupiedThumbnailIndexesWithLibrary:(id)library fetchTimestampToUpdate:(unint64_t *)update outFetchCount:(unint64_t *)count;
+ (unint64_t)nextAvailableThumbnailIndexInLibrary:(id)library;
+ (void)getAvailableThumbnailIndexInLibrary:(id)library withHandler:(id)handler;
+ (void)getAvailableThumbnailIndexesInLibrary:(id)library withCount:(unint64_t)count handler:(id)handler;
+ (void)recycleThumbnailIndexes:(id)indexes inLibrary:(id)library;
+ (void)recycleThumbnailIndexes:(id)indexes inLibrary:(id)library timestamp:(unint64_t)timestamp;
- (PLThumbnailIndexes)init;
- (id)getAvailableThumbnailIndexesWithCount:(unint64_t)count inLibrary:(id)library;
- (void)getAvailableThumbnailIndexesFromLibrary:(id)library;
- (void)getAvailableThumbnailIndexesWithCount:(unint64_t)count inLibrary:(id)library handler:(id)handler;
- (void)recycleThumbnailIndexes:(id)indexes timestamp:(unint64_t)timestamp;
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

+ (id)occupiedThumbnailIndexesWithLibrary:(id)library fetchTimestampToUpdate:(unint64_t *)update outFetchCount:(unint64_t *)count
{
  v27[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v9 = objc_autoreleasePoolPush();
  v10 = +[PLManagedAsset entityName];
  v11 = [PLFetchRequest fetchRequestWithEntityName:v10];

  [v11 setResultType:2];
  v27[0] = @"thumbnailIndex";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v11 setPropertiesToFetch:v12];

  [v11 setPl_importantFetchName:@"fetchOccupiedThumbnailIndexes"];
  managedObjectContext = [libraryCopy managedObjectContext];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __95__PLThumbnailIndexes_occupiedThumbnailIndexesWithLibrary_fetchTimestampToUpdate_outFetchCount___block_invoke;
  v19[3] = &unk_1E7569DC0;
  v20 = managedObjectContext;
  v21 = v11;
  updateCopy = update;
  v22 = @"thumbnailIndex";
  v14 = indexSet;
  v23 = v14;
  v15 = libraryCopy;
  v24 = v15;
  countCopy = count;
  v16 = v11;
  v17 = managedObjectContext;
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

+ (void)recycleThumbnailIndexes:(id)indexes inLibrary:(id)library timestamp:(unint64_t)timestamp
{
  indexesCopy = indexes;
  thumbnailIndexes = [library thumbnailIndexes];
  [thumbnailIndexes recycleThumbnailIndexes:indexesCopy timestamp:timestamp];
}

+ (void)recycleThumbnailIndexes:(id)indexes inLibrary:(id)library
{
  libraryCopy = library;
  indexesCopy = indexes;
  [self recycleThumbnailIndexes:indexesCopy inLibrary:libraryCopy timestamp:mach_absolute_time()];
}

+ (unint64_t)nextAvailableThumbnailIndexInLibrary:(id)library
{
  libraryCopy = library;
  thumbnailIndexes = [libraryCopy thumbnailIndexes];
  v5 = [thumbnailIndexes getAvailableThumbnailIndexesWithCount:1 inLibrary:libraryCopy];

  firstIndex = [v5 firstIndex];
  return firstIndex;
}

+ (void)getAvailableThumbnailIndexInLibrary:(id)library withHandler:(id)handler
{
  handlerCopy = handler;
  libraryCopy = library;
  thumbnailIndexes = [libraryCopy thumbnailIndexes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PLThumbnailIndexes_getAvailableThumbnailIndexInLibrary_withHandler___block_invoke;
  v9[3] = &unk_1E7569D98;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [thumbnailIndexes getAvailableThumbnailIndexesWithCount:1 inLibrary:libraryCopy handler:v9];
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

+ (void)getAvailableThumbnailIndexesInLibrary:(id)library withCount:(unint64_t)count handler:(id)handler
{
  handlerCopy = handler;
  libraryCopy = library;
  thumbnailIndexes = [libraryCopy thumbnailIndexes];
  [thumbnailIndexes getAvailableThumbnailIndexesWithCount:count inLibrary:libraryCopy handler:handlerCopy];
}

- (void)recycleThumbnailIndexes:(id)indexes timestamp:(unint64_t)timestamp
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    v5 = indexesCopy;
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

- (void)getAvailableThumbnailIndexesFromLibrary:(id)library
{
  v21 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_opt_class() occupiedThumbnailIndexesWithLibrary:libraryCopy fetchTimestampToUpdate:&self->_fetchTimestamp];
  lastIndex = [(NSMutableIndexSet *)v6 lastIndex];
  self->_usedMax = lastIndex;
  if ((lastIndex | 0x8000000000000000) == 0xFFFFFFFFFFFFFFFFLL)
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

- (void)getAvailableThumbnailIndexesWithCount:(unint64_t)count inLibrary:(id)library handler:(id)handler
{
  libraryCopy = library;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = libraryCopy;
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

- (id)getAvailableThumbnailIndexesWithCount:(unint64_t)count inLibrary:(id)library
{
  libraryCopy = library;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v5 = libraryCopy;
  pl_dispatch_sync();
  v6 = indexSet;

  return indexSet;
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
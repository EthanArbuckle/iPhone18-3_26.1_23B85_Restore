@interface PLFetchingAlbum
+ (id)_predicateForAssetSubtype:(signed __int16)a3;
+ (id)predicateForAlbumKind:(int)a3 includeGuest:(BOOL)a4;
+ (id)sortDescriptorsForAlbumKind:(int)a3;
+ (id)validKindsForPersistence;
- (BOOL)canPerformEditOperation:(unint64_t)a3;
- (BOOL)hasAssetsCache;
- (BOOL)isEmpty;
- (BOOL)isValidForPersistence;
- (BOOL)mayHaveAssetsInCommon:(id)a3;
- (NSFetchRequest)fetchRequest;
- (id)_cachedKeyAssets;
- (id)_performFetchWithRequest:(id)a3;
- (id)assets;
- (id)fastPointerAccessSetForAssets:(id)a3;
- (id)filteredIndexesForPredicate:(id)a3;
- (id)payloadForChangedKeys:(id)a3;
- (unint64_t)_fetchedCountForAssetsOfKind:(signed __int16)a3;
- (unint64_t)approximateCount;
- (unint64_t)count;
- (unint64_t)countForAssetsOfKind:(signed __int16)a3;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)batchFetchAssets:(id)a3;
- (void)didSave;
- (void)didTurnIntoFault;
- (void)persistMetadataToFileSystemWithPathManager:(id)a3;
- (void)prepareForDeletion;
- (void)removePersistedFileSystemDataWithPathManager:(id)a3;
- (void)setALAssetsGroupFilterPredicate:(id)a3;
- (void)setFetchRequest:(id)a3;
- (void)setupFetchRequest;
- (void)updateSnapshotAndClearCaches:(id)a3;
- (void)willSave;
@end

@implementation PLFetchingAlbum

- (void)prepareForDeletion
{
  v9.receiver = self;
  v9.super_class = PLFetchingAlbum;
  [(PLFetchingAlbum *)&v9 prepareForDeletion];
  v3 = [(PLFetchingAlbum *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PLDelayedSearchIndexUpdates recordAlbumIfNeeded:self];
    if (([v3 mergingChanges] & 1) == 0)
    {
      if ([(PLGenericAlbum *)self kindValue]== 1507)
      {
        [(PLFetchingAlbum *)self setPrimitiveValue:0 forKey:@"customKeyAsset"];
        [v3 recordCloudDeletionForObject:self];
      }

      v4 = [(PLFetchingAlbum *)self uuid];
      if (v4)
      {
        v5 = v4;
        v6 = [(PLFetchingAlbum *)self isValidForPersistence];

        if (v6)
        {
          v7 = [(PLGenericAlbum *)self photoLibrary];
          v8 = [v7 pathManager];
          [(PLFetchingAlbum *)self removePersistedFileSystemDataWithPathManager:v8];
        }
      }
    }
  }
}

- (BOOL)isValidForPersistence
{
  v3 = [objc_opt_class() validKindsForPersistence];
  v4 = [(PLFetchingAlbum *)self kind];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (void)removePersistedFileSystemDataWithPathManager:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLFetchingAlbum.m" lineNumber:1017 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedAlbumMetadata alloc] initWithPLGenericAlbum:self pathManager:v8];
    [(PLPersistedAlbumMetadata *)v6 removePersistedAlbumData];
  }
}

- (void)persistMetadataToFileSystemWithPathManager:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLFetchingAlbum.m" lineNumber:1009 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedAlbumMetadata alloc] initWithPLGenericAlbum:self pathManager:v8];
    [(PLPersistedAlbumMetadata *)v6 persistAlbumData];
  }
}

- (void)didSave
{
  v6.receiver = self;
  v6.super_class = PLFetchingAlbum;
  [(PLGenericAlbum *)&v6 didSave];
  if ([(PLFetchingAlbum *)self needsPersistenceUpdate])
  {
    v3 = [(PLFetchingAlbum *)self uuid];
    if (!v3 || ([(PLFetchingAlbum *)self isDeleted]& 1) != 0)
    {
      goto LABEL_6;
    }

    v4 = [(PLFetchingAlbum *)self isValidForPersistence];

    if (v4)
    {
      v3 = [(PLGenericAlbum *)self photoLibrary];
      v5 = [v3 pathManager];
      [(PLFetchingAlbum *)self persistMetadataToFileSystemWithPathManager:v5];

LABEL_6:
    }
  }

  [(PLFetchingAlbum *)self setNeedsPersistenceUpdate:0];
}

- (void)willSave
{
  v7.receiver = self;
  v7.super_class = PLFetchingAlbum;
  [(PLGenericAlbum *)&v7 willSave];
  [(PLFetchingAlbum *)self setNeedsPersistenceUpdate:0];
  v3 = [(PLFetchingAlbum *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = [(PLFetchingAlbum *)self changedValues];
  if (([(PLFetchingAlbum *)self isInserted]& 1) == 0)
  {
    v5 = [v4 objectForKeyedSubscript:@"title"];
    if (v5 || ([v4 objectForKeyedSubscript:@"trashedState"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v6 = [v4 objectForKeyedSubscript:@"userQueryData"];

      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  [(PLFetchingAlbum *)self setNeedsPersistenceUpdate:1];
LABEL_7:
  if (([(PLFetchingAlbum *)self isDeleted]& 1) == 0)
  {
    [PLDelayedSearchIndexUpdates recordAlbumIfNeeded:self];
  }

LABEL_10:
}

- (BOOL)mayHaveAssetsInCommon:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLFetchingAlbum *)self fetchedAssets];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 count];
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E695DFA8] setWithCapacity:v7];
      if (objc_opt_respondsToSelector())
      {
        for (i = 0; i != v8; ++i)
        {
          v11 = [v6 managedObjectIDAtIndex:i];
          [v9 addObject:v11];
        }
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = v6;
        v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v30;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v30 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v29 + 1) + 8 * j) objectID];
              [v9 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
          }

          while (v15);
        }
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = v4;
      v12 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v12)
      {
        v20 = *v26;
        while (2)
        {
          for (k = 0; k != v12; ++k)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v19);
            }

            v22 = [*(*(&v25 + 1) + 8 * k) objectID];
            v23 = [v9 containsObject:v22];

            if (v23)
            {
              LOBYTE(v12) = 1;
              goto LABEL_27;
            }
          }

          v12 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (id)fastPointerAccessSetForAssets:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PLFetchingAlbum *)self fetchRequest];
    v6 = [v5 fetchBatchSize];

    if (v6)
    {
      if ([v4 count] > (2 * v6))
      {
        v7 = [v4 count];
        v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
        if (v7)
        {
          for (i = 0; i != v7; ++i)
          {
            v10 = [v4 managedObjectIDAtIndex:i];
            [v8 addObject:v10];
          }
        }

        v11 = MEMORY[0x1E695D5E0];
        v12 = [(PLFetchingAlbum *)self fetchRequest];
        v13 = [v12 entityName];
        v14 = [v11 fetchRequestWithEntityName:v13];

        v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v8];
        [v14 setPredicate:v15];

        [v14 setIncludesPropertyValues:0];
        [v14 setIncludesPendingChanges:0];
        v16 = [(PLFetchingAlbum *)self managedObjectContext];
        v17 = [v16 executeFetchRequest:v14 error:0];

        if ([v17 count])
        {
          v18 = [(PLFetchingAlbum *)self managedObjectContext];
          v19 = [v18 _orderedSetWithResultsFromFetchRequest:v17];

          goto LABEL_11;
        }
      }
    }
  }

  v19 = v4;
LABEL_11:

  return v19;
}

- (BOOL)hasAssetsCache
{
  v3 = [(PLFetchingAlbum *)self fetchedAssets];
  v4 = v3 || self->_countForDisplay != 0x7FFFFFFFFFFFFFFFLL || self->_emptyState || self->_cachedKeyAssets != 0;

  return v4;
}

- (void)updateSnapshotAndClearCaches:(id)a3
{
  v4 = a3;
  v5 = [(PLFetchingAlbum *)self fetchedAssets];
  [v4 setAssetsSnapshot:v5];

  [(PLFetchingAlbum *)self setFetchedAssets:0];
  self->_countForDisplay = 0x7FFFFFFFFFFFFFFFLL;
  self->_photosCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_videosCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_emptyState = 0;
  cachedKeyAssets = self->_cachedKeyAssets;
  self->_cachedKeyAssets = 0;
}

- (id)_cachedKeyAssets
{
  v29 = *MEMORY[0x1E69E9840];
  cachedKeyAssets = self->_cachedKeyAssets;
  if (!cachedKeyAssets)
  {
    v4 = [(PLFetchingAlbum *)self fetchRequest];
    v5 = [v4 sortDescriptors];
    v6 = MEMORY[0x1E695D5E0];
    v7 = [v4 entityName];
    v8 = [v6 fetchRequestWithEntityName:v7];

    v9 = [v4 predicate];
    [v8 setPredicate:v9];

    [v8 setFetchLimit:3];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v24 + 1) + 8 * v14) reversedSortDescriptor];
          [v10 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    [v8 setSortDescriptors:v10];
    v16 = [(PLFetchingAlbum *)self managedObjectContext];
    v23 = 0;
    v17 = [v16 executeFetchRequest:v8 error:&v23];
    v18 = v23;
    v19 = v18;
    if (v17)
    {
      v20 = self->_cachedKeyAssets;
      self->_cachedKeyAssets = v17;
      v21 = v17;
    }

    else
    {
      NSLog(&cfstr_ErrorFetching.isa, v18);
    }

    cachedKeyAssets = self->_cachedKeyAssets;
  }

  return cachedKeyAssets;
}

- (id)filteredIndexesForPredicate:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLFetchingAlbum *)self fetchRequest];
  v6 = [v5 copy];

  v7 = [v6 predicate];
  v8 = v7;
  if (v4)
  {
    if (v7)
    {
      v9 = MEMORY[0x1E696AB28];
      v16[0] = v7;
      v16[1] = v4;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
      v11 = [v9 andPredicateWithSubpredicates:v10];

      v8 = v11;
    }

    else
    {
      v8 = v4;
    }
  }

  [v6 setPredicate:v8];
  [v6 setResultType:1];
  [v6 setIncludesPropertyValues:0];
  v12 = [(PLFetchingAlbum *)self _performFetchWithRequest:v6];
  v13 = [(PLFetchingAlbum *)self assets];
  v14 = indexSetForManagedObjectsMatchingIDs();

  return v14;
}

- (void)batchFetchAssets:(id)a3
{
  v4 = a3;
  v5 = [(PLFetchingAlbum *)self fetchRequest];
  if (![v5 fetchBatchSize])
  {
    v6.receiver = self;
    v6.super_class = PLFetchingAlbum;
    [(PLGenericAlbum *)&v6 batchFetchAssets:v4];
  }
}

- (BOOL)canPerformEditOperation:(unint64_t)a3
{
  v4 = [(PLGenericAlbum *)self kindValue];
  if ((v4 - 1600) <= 0x2A && ((1 << (v4 - 64)) & 0x7B5DFFFEFE1) != 0)
  {
    return a3 < 2;
  }

  v6 = (a3 & 0xFFFFFFFFFFFFFFBFLL) == 0;
  if ((a3 & 0xFFFFFFFFFFFFFFDFLL) == 0)
  {
    v6 = 1;
  }

  return v4 == 1507 && v6;
}

- (unint64_t)countForAssetsOfKind:(signed __int16)a3
{
  v3 = a3;
  if ([(PLFetchingAlbum *)self isFault])
  {
    v5 = [(PLFetchingAlbum *)self fetchRequest];
  }

  if (v3 == 1)
  {
    v6 = 136;
    result = self->_videosCount;
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    v8 = self;
    v9 = 1;
    goto LABEL_9;
  }

  if (!v3)
  {
    v6 = 128;
    result = self->_photosCount;
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    v8 = self;
    v9 = 0;
LABEL_9:
    result = [(PLFetchingAlbum *)v8 _fetchedCountForAssetsOfKind:v9];
    *(&self->super.super.super.super.isa + v6) = result;
    return result;
  }

  return [(PLFetchingAlbum *)self _fetchedCountForAssetsOfKind:v3];
}

- (unint64_t)_fetchedCountForAssetsOfKind:(signed __int16)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = [(PLFetchingAlbum *)self managedObjectContext];
  v7 = MEMORY[0x1E695D5E0];
  v8 = [(PLFetchingAlbum *)self fetchRequest];
  v9 = [v8 entityName];
  v10 = [v7 fetchRequestWithEntityName:v9];

  v11 = [(PLFetchingAlbum *)self fetchRequest];
  v12 = [v11 predicate];

  v13 = MEMORY[0x1E696AB28];
  v14 = MEMORY[0x1E695DEC8];
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind = %d", v3];
  v16 = [v14 arrayWithObjects:{v12, v15, 0}];
  v17 = [v13 andPredicateWithSubpredicates:v16];

  [v10 setPredicate:v17];
  v22 = 0;
  v18 = [v6 countForFetchRequest:v10 error:&v22];
  v19 = v22;
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v24 = v3;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "countForAssetsOfKind:%d fetch request failed: %@", buf, 0x12u);
    }

    v18 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v18;
}

- (BOOL)isEmpty
{
  v26 = *MEMORY[0x1E69E9840];
  emptyState = self->_emptyState;
  if (!emptyState)
  {
    if ([(PLFetchingAlbum *)self isFault])
    {
      v4 = [(PLFetchingAlbum *)self fetchRequest];
    }

    v5 = [(PLFetchingAlbum *)self fetchedAssets];

    if (!v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = MEMORY[0x1E695D5E0];
      v8 = [(PLFetchingAlbum *)self fetchRequest];
      v9 = [v8 entityName];
      v10 = [v7 fetchRequestWithEntityName:v9];

      v11 = [(PLFetchingAlbum *)self fetchRequest];
      v12 = [v11 predicate];
      [v10 setPredicate:v12];

      [v10 setFetchLimit:1];
      v13 = [(PLFetchingAlbum *)self managedObjectContext];
      v21 = 0;
      v14 = [v13 countForFetchRequest:v10 error:&v21];
      v15 = v21;
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [(NSManagedObject *)self pl_shortDescription];
          *buf = 138412546;
          v23 = v17;
          v24 = 2112;
          v25 = v15;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to get count for %@: %@", buf, 0x16u);
        }
      }

      else
      {
        if (v14)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        self->_emptyState = v18;
      }

      objc_autoreleasePoolPop(v6);
    }

    emptyState = self->_emptyState;
    if (!emptyState)
    {
      v20.receiver = self;
      v20.super_class = PLFetchingAlbum;
      if ([(PLGenericAlbum *)&v20 isEmpty])
      {
        emptyState = 1;
      }

      else
      {
        emptyState = 2;
      }

      self->_emptyState = emptyState;
    }
  }

  return emptyState == 1;
}

- (unint64_t)approximateCount
{
  v21 = *MEMORY[0x1E69E9840];
  result = self->_countForDisplay;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = MEMORY[0x1E695D5E0];
    v6 = [(PLFetchingAlbum *)self fetchRequest];
    v7 = [v6 entityName];
    v8 = [v5 fetchRequestWithEntityName:v7];

    v9 = [(PLFetchingAlbum *)self fetchRequest];
    v10 = [v9 predicate];
    [v8 setPredicate:v10];

    v11 = [(PLFetchingAlbum *)self managedObjectContext];
    v16 = 0;
    v12 = [v11 countForFetchRequest:v8 error:&v16];
    v13 = v16;
    self->_countForDisplay = v12;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [(NSManagedObject *)self pl_shortDescription];
        *buf = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to get count for %@: %@", buf, 0x16u);
      }

      self->_countForDisplay = [(PLFetchingAlbum *)self count];
    }

    objc_autoreleasePoolPop(v4);
    return self->_countForDisplay;
  }

  return result;
}

- (unint64_t)count
{
  v2 = [(PLFetchingAlbum *)self assets];
  v3 = [v2 count];

  return v3;
}

- (id)assets
{
  v3 = [(PLFetchingAlbum *)self fetchedAssets];

  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(PLFetchingAlbum *)self fetchRequest];
    v6 = [(PLFetchingAlbum *)self _performFetchWithRequest:v5];
    if (v6)
    {
      v7 = [(PLFetchingAlbum *)self managedObjectContext];
      v8 = [v7 _orderedSetWithResultsFromFetchRequest:v6];

      if (v8)
      {
        [(PLFetchingAlbum *)self setFetchedAssets:v8];
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  return [(PLFetchingAlbum *)self fetchedAssets];
}

- (id)_performFetchWithRequest:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [(PLFetchingAlbum *)self managedObjectContext];
    if ([v5 hasChanges])
    {
      v6 = 0;
    }

    else
    {
      v6 = [(PLFetchingAlbum *)self batchSize];
    }

    [v4 setFetchBatchSize:v6];
    v11 = 0;
    v7 = [v5 executeFetchRequest:v4 error:&v11];

    v8 = v11;
    if (!v7)
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error fetching: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setALAssetsGroupFilterPredicate:(id)a3
{
  v5 = a3;
  if (self->_ALAssetsGroupFilterPredicate != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_ALAssetsGroupFilterPredicate, a3);
    [(PLFetchingAlbum *)self setFetchRequest:0];
    v5 = v6;
  }
}

- (void)setFetchRequest:(id)a3
{
  v4 = a3;
  [(PLFetchingAlbum *)self willChangeValueForKey:@"fetchRequest"];
  [(PLFetchingAlbum *)self willChangeValueForKey:@"assets"];
  [(PLFetchingAlbum *)self setPrimitiveFetchRequest:v4];

  [(PLFetchingAlbum *)self setFetchedAssets:0];
  self->_countForDisplay = 0x7FFFFFFFFFFFFFFFLL;
  self->_photosCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_videosCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_emptyState = 0;
  cachedKeyAssets = self->_cachedKeyAssets;
  self->_cachedKeyAssets = 0;

  [(PLFetchingAlbum *)self didChangeValueForKey:@"assets"];

  [(PLFetchingAlbum *)self didChangeValueForKey:@"fetchRequest"];
}

- (NSFetchRequest)fetchRequest
{
  [(PLFetchingAlbum *)self willAccessValueForKey:@"fetchRequest"];
  v3 = [(PLFetchingAlbum *)self primitiveFetchRequest];
  if (!v3)
  {
    [(PLFetchingAlbum *)self setupFetchRequest];
    v3 = [(PLFetchingAlbum *)self primitiveFetchRequest];
  }

  [(PLFetchingAlbum *)self didAccessValueForKey:@"fetchRequest"];

  return v3;
}

- (void)setupFetchRequest
{
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = [(PLGenericAlbum *)self kindValue];
  if ((v3 - 1600) <= 0x2A && ((1 << (v3 - 64)) & 0x7B5DFFFFFE5) != 0 || v3 == 1552 || v3 == 1507)
  {
    v4 = MEMORY[0x1E695D5E0];
    v5 = +[PLManagedAsset entityName];
    v6 = [v4 fetchRequestWithEntityName:v5];

    if (v6)
    {
      v7 = objc_alloc_init(PLQueryChangeDetectionCriteria);
      v8 = [(PLFetchingAlbum *)self userQueryData];
      if (v8)
      {
        v9 = objc_alloc(MEMORY[0x1E69BF2B8]);
        v10 = [(PLFetchingAlbum *)self userQueryData];
        v11 = [v9 initWithData:v10];
        v12 = [(PLGenericAlbum *)self photoLibrary];
        v13 = [PLQueryHandler predicateForQuery:v11 inLibrary:v12 changeDetectionCriteria:v7];
      }

      else
      {
        v13 = [objc_opt_class() predicateForAlbumKind:{-[PLGenericAlbum kindValue](self, "kindValue")}];
      }

      v14 = [(PLFetchingAlbum *)self extraFilterPredicate];
      v15 = v14;
      if (v14)
      {
        if (v13)
        {
          v16 = MEMORY[0x1E696AB28];
          v26[0] = v13;
          v26[1] = v14;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
          v18 = [v16 andPredicateWithSubpredicates:v17];

          v13 = v18;
        }

        else
        {
          v13 = v14;
        }
      }

      [v6 setPredicate:v13];
      v19 = [objc_opt_class() sortDescriptorsForAlbumKind:{-[PLGenericAlbum kindValue](self, "kindValue")}];
      v20 = [v19 mutableCopy];

      if ([(PLGenericAlbum *)self kindValue]!= 1507)
      {
        goto LABEL_16;
      }

      if ([(PLFetchingAlbum *)self customSortKey]== 5 || [(PLFetchingAlbum *)self customSortKey]== 101)
      {
        v21 = MEMORY[0x1E696AEB0];
        v22 = @"additionalAttributes.title";
        v23 = 1;
      }

      else
      {
        if ([(PLFetchingAlbum *)self customSortKey]!= 1)
        {
          goto LABEL_16;
        }

        v25 = MEMORY[0x1E696AEB0];
        v23 = [(PLFetchingAlbum *)self customSortAscending];
        v22 = @"dateCreated";
        v21 = v25;
      }

      v24 = [v21 sortDescriptorWithKey:v22 ascending:v23];
      [v20 insertObject:v24 atIndex:0];

LABEL_16:
      [v6 setSortDescriptors:v20];
      [v6 setFetchBatchSize:{-[PLFetchingAlbum batchSize](self, "batchSize")}];
      [(PLFetchingAlbum *)self setPrimitiveFetchRequest:v6];
    }
  }
}

- (void)didTurnIntoFault
{
  self->_countForDisplay = 0x7FFFFFFFFFFFFFFFLL;
  self->_photosCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_videosCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_emptyState = 0;
  v2.receiver = self;
  v2.super_class = PLFetchingAlbum;
  [(PLFetchingAlbum *)&v2 didTurnIntoFault];
}

- (void)awakeFromInsert
{
  v3.receiver = self;
  v3.super_class = PLFetchingAlbum;
  [(PLGenericAlbum *)&v3 awakeFromInsert];
  self->_countForDisplay = 0x7FFFFFFFFFFFFFFFLL;
  self->_photosCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_videosCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_emptyState = 0;
  self->_batchSize = 7;
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = PLFetchingAlbum;
  [(PLGenericAlbum *)&v3 awakeFromFetch];
  self->_countForDisplay = 0x7FFFFFFFFFFFFFFFLL;
  self->_photosCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_videosCount = 0x7FFFFFFFFFFFFFFFLL;
  self->_emptyState = 0;
  self->_batchSize = 7;
}

+ (id)validKindsForPersistence
{
  pl_dispatch_once();
  v2 = validKindsForPersistence_pl_once_object_20;

  return v2;
}

void __43__PLFetchingAlbum_validKindsForPersistence__block_invoke()
{
  v0 = [&unk_1F0FBF688 copy];
  v1 = validKindsForPersistence_pl_once_object_20;
  validKindsForPersistence_pl_once_object_20 = v0;
}

+ (id)sortDescriptorsForAlbumKind:(int)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 1605:
    case 1606:
    case 1609:
    case 1610:
    case 1611:
    case 1614:
    case 1615:
    case 1617:
    case 1618:
    case 1620:
    case 1621:
    case 1622:
    case 1623:
    case 1624:
    case 1627:
    case 1628:
    case 1630:
    case 1631:
    case 1632:
    case 1634:
    case 1636:
    case 1637:
    case 1639:
    case 1641:
    case 1642:
      goto LABEL_2;
    case 1607:
    case 1608:
    case 1629:
    case 1633:
    case 1635:
    case 1638:
      goto LABEL_9;
    case 1612:
      v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"trashedDate" ascending:1];
      v17[0] = v3;
      v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:0];
      v17[1] = v4;
      v8 = MEMORY[0x1E695DEC8];
      v9 = v17;
      goto LABEL_15;
    case 1613:
    case 1616:
    case 1625:
      v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
      v18[0] = v3;
      v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
      v18[1] = v4;
      v8 = MEMORY[0x1E695DEC8];
      v9 = v18;
      goto LABEL_15;
    case 1619:
      v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
      v14 = v3;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v14;
      goto LABEL_13;
    case 1626:
      v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"adjustmentTimestamp" ascending:1];
      v15[0] = v3;
      v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
      v15[1] = v4;
      v8 = MEMORY[0x1E695DEC8];
      v9 = v15;
LABEL_15:
      v6 = [v8 arrayWithObjects:v9 count:2];
      goto LABEL_3;
    case 1640:
      v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
      v13 = v3;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v13;
      goto LABEL_13;
    default:
      if (a3 == 1507)
      {
LABEL_2:
        v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
        v16[0] = v3;
        v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
        v16[1] = v4;
        v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
        v16[2] = v5;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];

LABEL_3:
      }

      else
      {
LABEL_9:
        v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
        v12 = v3;
        v10 = MEMORY[0x1E695DEC8];
        v11 = &v12;
LABEL_13:
        v6 = [v10 arrayWithObjects:v11 count:1];
      }

      return v6;
  }
}

+ (id)predicateForAlbumKind:(int)a3 includeGuest:(BOOL)a4
{
  v4 = 0;
  v84[2] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  switch(a3)
  {
    case 1552:
      v40 = MEMORY[0x1E69BF328];
      v41 = [MEMORY[0x1E69BF328] maskForFinderSyncedAsset];
      goto LABEL_24;
    case 1553:
    case 1554:
    case 1555:
    case 1556:
    case 1557:
    case 1558:
    case 1559:
    case 1560:
    case 1561:
    case 1562:
    case 1563:
    case 1564:
    case 1565:
    case 1566:
    case 1567:
    case 1568:
    case 1569:
    case 1570:
    case 1571:
    case 1572:
    case 1573:
    case 1574:
    case 1575:
    case 1576:
    case 1577:
    case 1578:
    case 1579:
    case 1580:
    case 1581:
    case 1582:
    case 1583:
    case 1584:
    case 1585:
    case 1586:
    case 1587:
    case 1588:
    case 1589:
    case 1590:
    case 1591:
    case 1592:
    case 1593:
    case 1594:
    case 1595:
    case 1596:
    case 1597:
    case 1598:
    case 1599:
    case 1601:
    case 1603:
    case 1604:
    case 1629:
    case 1633:
    case 1635:
    case 1638:
      goto LABEL_63;
    case 1600:
      goto LABEL_54;
    case 1602:
      v40 = MEMORY[0x1E69BF328];
      v41 = [MEMORY[0x1E69BF328] maskForPhotoStreamAsset];
LABEL_24:
      v26 = [v40 predicateForIncludeMask:v41 useIndex:1];
      goto LABEL_52;
    case 1605:
      v19 = 1;
      goto LABEL_51;
    case 1606:
      v20 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == %d) AND (noindex:(%K) != %d)", a4, @"playbackStyle", 4, @"kind", 2];
      v82[0] = v21;
      v22 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForVideosAlbumExclusions"), 0}];
      v82[1] = v22;
      v23 = [a1 _predicateForVisibleAsset];
      v82[2] = v23;
      v24 = MEMORY[0x1E695DEC8];
      v25 = v82;
      goto LABEL_41;
    case 1607:
      v15 = [a1 _predicateForAssetSubtype:{1, a4}];
      v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"height > width"];
      v14 = MEMORY[0x1E696AB28];
      v84[0] = v15;
      v84[1] = v16;
      v17 = MEMORY[0x1E695DEC8];
      v18 = v84;
      goto LABEL_34;
    case 1608:
      v15 = [a1 _predicateForAssetSubtype:{1, a4}];
      v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"width > height"];
      v14 = MEMORY[0x1E696AB28];
      v83[0] = v15;
      v83[1] = v16;
      v17 = MEMORY[0x1E695DEC8];
      v18 = v83;
      goto LABEL_34;
    case 1609:
      v30 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 1", a4, @"favorite"];
      v81[0] = v21;
      v31 = [a1 _predicateForVisibleAsset];
      v81[1] = v31;
      v32 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForFavoritesAlbumExclusions"), 0}];
      v81[2] = v32;
      v33 = MEMORY[0x1E695DEC8];
      v34 = v81;
      goto LABEL_37;
    case 1610:
      v19 = 102;
      goto LABEL_51;
    case 1611:
      v20 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 1", a4, @"hidden"];
      v79[0] = v21;
      v22 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPLFetchingAlbumExclusions"), 0}];
      v79[1] = v22;
      v23 = [a1 _predicateForVisibleAsset];
      v79[2] = v23;
      v24 = MEMORY[0x1E695DEC8];
      v25 = v79;
      goto LABEL_41;
    case 1612:
      v20 = MEMORY[0x1E696AB28];
      v35 = MEMORY[0x1E696AE18];
      v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2592000.0];
      v22 = [v35 predicateWithFormat:@"%K == %d AND %K > %@", @"trashedState", 1, @"trashedDate", v21];
      v78[0] = v22;
      v23 = [a1 _predicateForVisibleAsset];
      v78[1] = v23;
      v24 = MEMORY[0x1E695DEC8];
      v25 = v78;
      v36 = 2;
      goto LABEL_42;
    case 1613:
    case 1625:
      v8 = a4;
      v9 = [MEMORY[0x1E69BF328] maskForUserLibrary];
      if (v8)
      {
        v9 = [MEMORY[0x1E69BF328] maskForGuestAsset] | v9;
      }

      v10 = MEMORY[0x1E696AB28];
      v11 = [a1 _predicateForVisibleAsset];
      v74[0] = v11;
      v12 = [MEMORY[0x1E69BF328] predicateForIncludeMask:v9 useIndex:0];
      v74[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
      v4 = [v10 andPredicateWithSubpredicates:v13];

      goto LABEL_10;
    case 1614:
      v30 = MEMORY[0x1E696AB28];
      v21 = +[PLManagedAsset predicateForBurstStackAssets];
      v73[0] = v21;
      v31 = [a1 _predicateForVisibleAsset];
      v73[1] = v31;
      v32 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForBurstsAlbumExclusions"), 0}];
      v73[2] = v32;
      v33 = MEMORY[0x1E695DEC8];
      v34 = v73;
      goto LABEL_37;
    case 1615:
      v19 = 101;
      goto LABEL_51;
    case 1616:
      v53 = MEMORY[0x1E696AB28];
      v54 = MEMORY[0x1E696AE18];
      v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2592000.0];
      v22 = [v54 predicateWithFormat:@"%K >= %@", @"addedDate", v21];
      v77[0] = v22;
      v45 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForRecentlyAddedAlbumExclusions"), 0}];
      v77[1] = v45;
      v55 = [a1 _predicateForVisibleAsset];
      v77[2] = v55;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
      v4 = [v53 andPredicateWithSubpredicates:v56];

      goto LABEL_47;
    case 1617:
      v20 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", a4, @"derivedCameraCaptureDevice", 1];
      v80[0] = v21;
      v22 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForSelfiesAlbumExclusions"), 0}];
      v80[1] = v22;
      v23 = [a1 _predicateForVisibleAsset];
      v80[2] = v23;
      v24 = MEMORY[0x1E695DEC8];
      v25 = v80;
      goto LABEL_41;
    case 1618:
      v19 = 10;
      goto LABEL_51;
    case 1619:
      v37 = MEMORY[0x1E696AB28];
      v15 = [a1 _predicateForVisibleAsset];
      v71[0] = v15;
      v16 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPlacesAlbum"), 0}];
      v71[1] = v16;
      v38 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != -180 AND %K != -180", @"latitude", @"longitude"];
      v71[2] = v38;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
      v4 = [v37 andPredicateWithSubpredicates:v39];

      goto LABEL_35;
    case 1620:
      v30 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPLFetchingAlbumExclusions"), 0}];
      v72[0] = v21;
      v31 = [a1 _predicateForVisibleAsset];
      v72[1] = v31;
      v32 = +[PLManagedAsset predicateForDepthEffectPhotos];
      v72[2] = v32;
      v33 = MEMORY[0x1E695DEC8];
      v34 = v72;
      goto LABEL_37;
    case 1621:
      v19 = 2;
      goto LABEL_51;
    case 1622:
      v30 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPLFetchingAlbumExclusions"), 0}];
      v70[0] = v21;
      v31 = [a1 _predicateForVisibleAsset];
      v70[1] = v31;
      v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"playbackStyle", &unk_1F0FBF658];
      v70[2] = v32;
      v33 = MEMORY[0x1E695DEC8];
      v34 = v70;
      goto LABEL_37;
    case 1623:
      v20 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", a4, @"playbackVariation", 3];
      v69[0] = v21;
      v22 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPLFetchingAlbumExclusions"), 0}];
      v69[1] = v22;
      v23 = [a1 _predicateForVisibleAsset];
      v69[2] = v23;
      v24 = MEMORY[0x1E695DEC8];
      v25 = v69;
      goto LABEL_41;
    case 1624:
      v26 = [PLManagedAsset predicateForUploadableAssetsWithCloudLocalStates:&unk_1F0FBF670, a4];
      goto LABEL_52;
    case 1626:
      v43 = MEMORY[0x1E696AB28];
      v44 = MEMORY[0x1E696AE18];
      v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2592000.0];
      v22 = [v44 predicateWithFormat:@"%K >= %@", @"adjustmentTimestamp", v21];
      v67[0] = v22;
      v45 = +[PLManagedAsset predicateToExcludeCameraAutoAdjustments];
      v67[1] = v45;
      v46 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForRecentlyEditedAlbumExclusions"), 0}];
      v67[2] = v46;
      v47 = [a1 _predicateForVisibleAsset];
      v67[3] = v47;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];
      v4 = [v43 andPredicateWithSubpredicates:v48];

LABEL_47:
      goto LABEL_48;
    case 1627:
      v19 = 103;
      goto LABEL_51;
    case 1628:
      v27 = MEMORY[0x1E696AB28];
      v11 = [a1 _predicateForVisibleAsset];
      v75[0] = v11;
      v28 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForAllPhotosAlbum"), 0}];
      v75[1] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
      v4 = [v27 andPredicateWithSubpredicates:v29];

LABEL_10:
      v6 = 1;
      goto LABEL_54;
    case 1630:
      v26 = +[PLManagedAsset predicateForRAWAndRPlusJAssets];
      goto LABEL_52;
    case 1631:
      v30 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPLFetchingAlbumExclusions"), 0}];
      v66[0] = v21;
      v31 = [a1 _predicateForVisibleAsset];
      v66[1] = v31;
      v32 = +[PLManagedAsset predicateForCinematicVideos];
      v66[2] = v32;
      v33 = MEMORY[0x1E695DEC8];
      v34 = v66;
      goto LABEL_37;
    case 1632:
      v26 = +[PLManagedAsset predicateForProResAssets];
      goto LABEL_52;
    case 1634:
      v49 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", a4, @"duplicateAssetVisibilityState", 0];
      v68[0] = v21;
      v31 = [a1 _predicateForVisibleAsset];
      v68[1] = v31;
      v50 = MEMORY[0x1E695DEC8];
      v51 = v68;
      goto LABEL_44;
    case 1636:
      v26 = +[PLManagedAsset predicateToIncludeSharedLibrarySharingSuggestionsAssets];
      goto LABEL_52;
    case 1637:
      v19 = 104;
LABEL_51:
      v26 = [a1 _predicateForAssetSubtype:{v19, a4}];
LABEL_52:
      v4 = v26;
      goto LABEL_53;
    case 1639:
      v30 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", a4, @"spatialType", 0];
      v65[0] = v21;
      v31 = [a1 _predicateForVisibleAsset];
      v65[1] = v31;
      v32 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPLFetchingAlbumExclusions"), 0}];
      v65[2] = v32;
      v33 = MEMORY[0x1E695DEC8];
      v34 = v65;
LABEL_37:
      v42 = [v33 arrayWithObjects:v34 count:3];
      v4 = [v30 andPredicateWithSubpredicates:v42];

      goto LABEL_45;
    case 1640:
      v49 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", a4, @"isRecentlySaved"];
      v76[0] = v21;
      v31 = [a1 _predicateForVisibleAsset];
      v76[1] = v31;
      v50 = MEMORY[0x1E695DEC8];
      v51 = v76;
LABEL_44:
      v32 = [v50 arrayWithObjects:v51 count:2];
      v4 = [v49 andPredicateWithSubpredicates:v32];
LABEL_45:

      goto LABEL_49;
    case 1641:
      v14 = MEMORY[0x1E696AB28];
      v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", a4, @"trashedState", 0];
      v64[0] = v15;
      v16 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForRecoveredAlbum"), 1}];
      v64[1] = v16;
      v17 = MEMORY[0x1E695DEC8];
      v18 = v64;
LABEL_34:
      v38 = [v17 arrayWithObjects:v18 count:2];
      v4 = [v14 andPredicateWithSubpredicates:v38];
LABEL_35:

      goto LABEL_53;
    case 1642:
      v20 = MEMORY[0x1E696AB28];
      v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", a4, @"derivedCameraCaptureDevice", 2];
      v63[0] = v21;
      v22 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForSelfiesAlbumExclusions"), 0}];
      v63[1] = v22;
      v23 = [a1 _predicateForVisibleAsset];
      v63[2] = v23;
      v24 = MEMORY[0x1E695DEC8];
      v25 = v63;
LABEL_41:
      v36 = 3;
LABEL_42:
      v52 = [v24 arrayWithObjects:v25 count:v36];
      v4 = [v20 andPredicateWithSubpredicates:v52];

LABEL_48:
LABEL_49:

LABEL_53:
      v6 = 0;
LABEL_54:
      v57 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(complete) != 0", a4];
      v58 = v57;
      if (v4)
      {
        if (!v6)
        {
          v60 = MEMORY[0x1E696AB28];
          v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, v57, 0}];
          v7 = [v60 andPredicateWithSubpredicates:v61];

          goto LABEL_62;
        }

        v59 = v4;
      }

      else if (v6)
      {
        v59 = [MEMORY[0x1E696AE18] predicateWithValue:1];
      }

      else
      {
        v59 = v57;
      }

      v7 = v59;
LABEL_62:

LABEL_63:

      return v7;
    default:
      v7 = 0;
      goto LABEL_63;
  }
}

+ (id)_predicateForAssetSubtype:(signed __int16)a3
{
  v3 = a3;
  v14[3] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PLFetchingAlbum.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"subtype != PLAssetSubtypeNone"}];
  }

  v5 = MEMORY[0x1E696AB28];
  v6 = [PLManagedAsset predicateForAssetSubtype:v3];
  v14[0] = v6;
  v7 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPLFetchingAlbumExclusions"), 0}];
  v14[1] = v7;
  v8 = [a1 _predicateForVisibleAsset];
  v14[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v10 = [v5 andPredicateWithSubpredicates:v9];

  return v10;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLFetchingAlbum *)self isValidForPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLFetchingAlbumJournalEntryPayload alloc] initWithManagedObject:self changedKeys:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
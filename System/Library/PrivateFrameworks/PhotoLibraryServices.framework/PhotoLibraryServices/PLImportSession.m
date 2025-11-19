@interface PLImportSession
+ (id)albumWithImportSessionID:(id)a3 inManagedObjectContext:(id)a4;
+ (id)albumsWithImportSessionIDs:(id)a3 inManagedObjectContext:(id)a4;
+ (id)insertNewImportSessionAlbumWithImportSessionID:(id)a3 inManagedObjectContext:(id)a4;
- (BOOL)_isAssetIncludedInImportDates:(id)a3;
- (BOOL)_isDateAfterEndDate:(id)a3;
- (BOOL)_isDateBeforeStartDate:(id)a3;
- (BOOL)isValidForPersistence;
- (id)_orderedBatchedAssets;
- (id)payloadForChangedKeys:(id)a3;
- (unint64_t)count;
- (void)_updateEndDate:(id)a3;
- (void)_updateStartDate:(id)a3;
- (void)didSave;
- (void)persistMetadataToFileSystemWithPathManager:(id)a3;
- (void)prepareForDeletion;
- (void)removePersistedFileSystemDataWithPathManager:(id)a3;
- (void)revalidateImportDates;
- (void)updateImportDatesFromAddedAsset:(id)a3;
- (void)willSave;
@end

@implementation PLImportSession

- (unint64_t)count
{
  v2 = [(PLImportSession *)self assets];
  v3 = [v2 count];

  return v3;
}

- (void)prepareForDeletion
{
  v6.receiver = self;
  v6.super_class = PLImportSession;
  [(PLImportSession *)&v6 prepareForDeletion];
  v3 = [(PLImportSession *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 mergingChanges] & 1) == 0 && -[PLImportSession isValidForPersistence](self, "isValidForPersistence"))
  {
    v4 = [(PLGenericAlbum *)self photoLibrary];
    v5 = [v4 pathManager];
    [(PLImportSession *)self removePersistedFileSystemDataWithPathManager:v5];
  }
}

- (void)didSave
{
  v8.receiver = self;
  v8.super_class = PLImportSession;
  [(PLGenericAlbum *)&v8 didSave];
  if ([(PLImportSession *)self needsPersistenceUpdate])
  {
    v3 = [(PLImportSession *)self uuid];
    if (v3)
    {
      v4 = v3;
      v5 = [(PLImportSession *)self isDeleted];

      if ((v5 & 1) == 0)
      {
        v6 = [(PLGenericAlbum *)self photoLibrary];
        v7 = [v6 pathManager];
        [(PLImportSession *)self persistMetadataToFileSystemWithPathManager:v7];
      }
    }
  }

  [(PLImportSession *)self setNeedsPersistenceUpdate:0];
}

- (void)willSave
{
  v11.receiver = self;
  v11.super_class = PLImportSession;
  [(PLGenericAlbum *)&v11 willSave];
  [(PLImportSession *)self setNeedsPersistenceUpdate:0];
  v3 = [(PLImportSession *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PLImportSession *)self changedValues];
    if ([(PLImportSession *)self isValidForPersistence])
    {
      if ((-[PLImportSession isInserted](self, "isInserted") & 1) != 0 || ([v4 objectForKeyedSubscript:@"assets"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
      {
        [(PLImportSession *)self setNeedsPersistenceUpdate:1];
      }
    }

    if (([(PLImportSession *)self isDeleted]& 1) == 0)
    {
      v6 = [v4 objectForKeyedSubscript:@"assets"];
      if (v6)
      {
        v7 = v6;
        v8 = [(PLImportSession *)self assets];
        v9 = [v8 count];

        if (!v9)
        {
          [(PLGenericAlbum *)self delete];
        }
      }
    }

    v10 = [v3 delayedSaveActions];
    [v10 recordImportSessionCountsAndDateRangeUpdate:self];
  }
}

- (void)removePersistedFileSystemDataWithPathManager:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLImportSession.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

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
    [v7 handleFailureInMethod:a2 object:self file:@"PLImportSession.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedAlbumMetadata alloc] initWithPLGenericAlbum:self pathManager:v8];
    [(PLPersistedAlbumMetadata *)v6 persistAlbumData];
  }
}

- (BOOL)isValidForPersistence
{
  v3 = [objc_opt_class() validKindsForPersistence];
  v4 = [(PLImportSession *)self kind];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (id)_orderedBatchedAssets
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setFetchBatchSize:100];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"importSession", self];
  [v5 setPredicate:v6];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v22[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [v5 setSortDescriptors:v8];

  v9 = [(PLImportSession *)self managedObjectContext];
  v17 = 0;
  v10 = [v9 executeFetchRequest:v5 error:&v17];
  v11 = v17;
  if (!v10)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Unable to fetch batchedAssets: %@", buf, 0xCu);
    }
  }

  v13 = PLBackendGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v10 count];
    v15 = [(PLManagedObject *)self shortObjectIDURI];
    *buf = 134218242;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Batch fetched %lu assets from import session %@", buf, 0x16u);
  }

  return v10;
}

- (BOOL)_isDateAfterEndDate:(id)a3
{
  v4 = a3;
  v5 = [(PLImportSession *)self endDate];
  if (v5)
  {
    v6 = [(PLImportSession *)self endDate];
    v7 = [v6 compare:v4] == -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_isDateBeforeStartDate:(id)a3
{
  v4 = a3;
  v5 = [(PLImportSession *)self startDate];
  if (v5)
  {
    v6 = [(PLImportSession *)self startDate];
    v7 = [v6 compare:v4] == 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_isAssetIncludedInImportDates:(id)a3
{
  v3 = a3;
  if ([v3 isInTrash])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isDeleted] ^ 1;
  }

  return v4;
}

- (void)updateImportDatesFromAddedAsset:(id)a3
{
  v4 = a3;
  v6 = [v4 addedDate];
  v5 = [(PLImportSession *)self _isAssetIncludedInImportDates:v4];

  if (v5)
  {
    if ([(PLImportSession *)self _isDateBeforeStartDate:v6])
    {
      [(PLImportSession *)self _updateStartDate:v6];
    }

    if ([(PLImportSession *)self _isDateAfterEndDate:v6])
    {
      [(PLImportSession *)self _updateEndDate:v6];
    }
  }
}

- (void)revalidateImportDates
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(PLImportSession *)self importSessionID];
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Revalidating importDates for %@", &v13, 0xCu);
  }

  v5 = [(PLImportSession *)self _orderedBatchedAssets];
  v6 = [v5 objectEnumerator];
  v7 = 0;
  while (1)
  {
    v8 = v7;
    v7 = [v6 nextObject];

    if (!v7)
    {
      break;
    }

    if ([(PLImportSession *)self _isAssetIncludedInImportDates:v7])
    {
      v9 = [v7 addedDate];
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_8:
  v10 = [v5 reverseObjectEnumerator];
  while (1)
  {
    v11 = v7;
    v7 = [v10 nextObject];

    if (!v7)
    {
      break;
    }

    if ([(PLImportSession *)self _isAssetIncludedInImportDates:v7])
    {
      v12 = [v7 addedDate];
      goto LABEL_13;
    }
  }

  v12 = 0;
LABEL_13:
  [(PLImportSession *)self _updateStartDate:v9];
  [(PLImportSession *)self _updateEndDate:v12];
}

- (void)_updateEndDate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLImportSession *)self endDate];
  if (!v5 || (v6 = v5, -[PLImportSession endDate](self, "endDate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 timeIntervalSinceDate:v4], v9 = fabs(v8), v7, v6, v9 > 2.22044605e-16))
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(PLImportSession *)self importSessionID];
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "setEndDate: %@ for %@", &v12, 0x16u);
    }

    [(PLImportSession *)self setEndDate:v4];
  }
}

- (void)_updateStartDate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLImportSession *)self startDate];
  if (!v5 || (v6 = v5, -[PLImportSession startDate](self, "startDate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 timeIntervalSinceDate:v4], v9 = fabs(v8), v7, v6, v9 > 2.22044605e-16))
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(PLImportSession *)self importSessionID];
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "setStartDate: %@ for %@", &v12, 0x16u);
    }

    [(PLImportSession *)self setStartDate:v4];
  }
}

+ (id)albumWithImportSessionID:(id)a3 inManagedObjectContext:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13 = a3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a4;
    v8 = a3;
    v9 = [v6 arrayWithObjects:&v13 count:1];

    v10 = [a1 albumsWithImportSessionIDs:v9 inManagedObjectContext:{v7, v13, v14}];

    v11 = [v10 firstObject];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)albumsWithImportSessionIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"ImportSession"];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"importSessionID", v5];
    [v7 setPredicate:v8];

    [v7 setFetchLimit:{objc_msgSend(v5, "count")}];
    [v7 setReturnsObjectsAsFaults:0];
    if ([v5 count] >= 0x65)
    {
      [v7 setFetchBatchSize:100];
    }

    v13 = 0;
    v9 = [v6 executeFetchRequest:v7 error:&v13];
    v10 = v13;
    if (!v9)
    {
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)insertNewImportSessionAlbumWithImportSessionID:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = [(PLManagedObject *)PLImportSession insertInManagedObjectContext:a4];
  [v6 setImportSessionID:v5];

  [v6 setKindValue:1506];

  return v6;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectJournalEntryPayload *)[PLImportSessionJournalEntryPayload alloc] initWithManagedObject:self changedKeys:v4];

  return v5;
}

@end
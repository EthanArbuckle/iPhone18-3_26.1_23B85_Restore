@interface PLImportSession
+ (id)albumWithImportSessionID:(id)d inManagedObjectContext:(id)context;
+ (id)albumsWithImportSessionIDs:(id)ds inManagedObjectContext:(id)context;
+ (id)insertNewImportSessionAlbumWithImportSessionID:(id)d inManagedObjectContext:(id)context;
- (BOOL)_isAssetIncludedInImportDates:(id)dates;
- (BOOL)_isDateAfterEndDate:(id)date;
- (BOOL)_isDateBeforeStartDate:(id)date;
- (BOOL)isValidForPersistence;
- (id)_orderedBatchedAssets;
- (id)payloadForChangedKeys:(id)keys;
- (unint64_t)count;
- (void)_updateEndDate:(id)date;
- (void)_updateStartDate:(id)date;
- (void)didSave;
- (void)persistMetadataToFileSystemWithPathManager:(id)manager;
- (void)prepareForDeletion;
- (void)removePersistedFileSystemDataWithPathManager:(id)manager;
- (void)revalidateImportDates;
- (void)updateImportDatesFromAddedAsset:(id)asset;
- (void)willSave;
@end

@implementation PLImportSession

- (unint64_t)count
{
  assets = [(PLImportSession *)self assets];
  v3 = [assets count];

  return v3;
}

- (void)prepareForDeletion
{
  v6.receiver = self;
  v6.super_class = PLImportSession;
  [(PLImportSession *)&v6 prepareForDeletion];
  managedObjectContext = [(PLImportSession *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext mergingChanges] & 1) == 0 && -[PLImportSession isValidForPersistence](self, "isValidForPersistence"))
  {
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    pathManager = [photoLibrary pathManager];
    [(PLImportSession *)self removePersistedFileSystemDataWithPathManager:pathManager];
  }
}

- (void)didSave
{
  v8.receiver = self;
  v8.super_class = PLImportSession;
  [(PLGenericAlbum *)&v8 didSave];
  if ([(PLImportSession *)self needsPersistenceUpdate])
  {
    uuid = [(PLImportSession *)self uuid];
    if (uuid)
    {
      v4 = uuid;
      isDeleted = [(PLImportSession *)self isDeleted];

      if ((isDeleted & 1) == 0)
      {
        photoLibrary = [(PLGenericAlbum *)self photoLibrary];
        pathManager = [photoLibrary pathManager];
        [(PLImportSession *)self persistMetadataToFileSystemWithPathManager:pathManager];
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
  managedObjectContext = [(PLImportSession *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    changedValues = [(PLImportSession *)self changedValues];
    if ([(PLImportSession *)self isValidForPersistence])
    {
      if ((-[PLImportSession isInserted](self, "isInserted") & 1) != 0 || ([changedValues objectForKeyedSubscript:@"assets"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
      {
        [(PLImportSession *)self setNeedsPersistenceUpdate:1];
      }
    }

    if (([(PLImportSession *)self isDeleted]& 1) == 0)
    {
      v6 = [changedValues objectForKeyedSubscript:@"assets"];
      if (v6)
      {
        v7 = v6;
        assets = [(PLImportSession *)self assets];
        v9 = [assets count];

        if (!v9)
        {
          [(PLGenericAlbum *)self delete];
        }
      }
    }

    delayedSaveActions = [managedObjectContext delayedSaveActions];
    [delayedSaveActions recordImportSessionCountsAndDateRangeUpdate:self];
  }
}

- (void)removePersistedFileSystemDataWithPathManager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLImportSession.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    managerCopy = 0;
  }

  if ([managerCopy isDCIM])
  {
    v6 = [[PLPersistedAlbumMetadata alloc] initWithPLGenericAlbum:self pathManager:v8];
    [(PLPersistedAlbumMetadata *)v6 removePersistedAlbumData];
  }
}

- (void)persistMetadataToFileSystemWithPathManager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLImportSession.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    managerCopy = 0;
  }

  if ([managerCopy isDCIM])
  {
    v6 = [[PLPersistedAlbumMetadata alloc] initWithPLGenericAlbum:self pathManager:v8];
    [(PLPersistedAlbumMetadata *)v6 persistAlbumData];
  }
}

- (BOOL)isValidForPersistence
{
  validKindsForPersistence = [objc_opt_class() validKindsForPersistence];
  kind = [(PLImportSession *)self kind];
  v5 = [validKindsForPersistence containsObject:kind];

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

  managedObjectContext = [(PLImportSession *)self managedObjectContext];
  v17 = 0;
  v10 = [managedObjectContext executeFetchRequest:v5 error:&v17];
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
    shortObjectIDURI = [(PLManagedObject *)self shortObjectIDURI];
    *buf = 134218242;
    v19 = v14;
    v20 = 2112;
    v21 = shortObjectIDURI;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Batch fetched %lu assets from import session %@", buf, 0x16u);
  }

  return v10;
}

- (BOOL)_isDateAfterEndDate:(id)date
{
  dateCopy = date;
  endDate = [(PLImportSession *)self endDate];
  if (endDate)
  {
    endDate2 = [(PLImportSession *)self endDate];
    v7 = [endDate2 compare:dateCopy] == -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_isDateBeforeStartDate:(id)date
{
  dateCopy = date;
  startDate = [(PLImportSession *)self startDate];
  if (startDate)
  {
    startDate2 = [(PLImportSession *)self startDate];
    v7 = [startDate2 compare:dateCopy] == 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_isAssetIncludedInImportDates:(id)dates
{
  datesCopy = dates;
  if ([datesCopy isInTrash])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [datesCopy isDeleted] ^ 1;
  }

  return v4;
}

- (void)updateImportDatesFromAddedAsset:(id)asset
{
  assetCopy = asset;
  addedDate = [assetCopy addedDate];
  v5 = [(PLImportSession *)self _isAssetIncludedInImportDates:assetCopy];

  if (v5)
  {
    if ([(PLImportSession *)self _isDateBeforeStartDate:addedDate])
    {
      [(PLImportSession *)self _updateStartDate:addedDate];
    }

    if ([(PLImportSession *)self _isDateAfterEndDate:addedDate])
    {
      [(PLImportSession *)self _updateEndDate:addedDate];
    }
  }
}

- (void)revalidateImportDates
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    importSessionID = [(PLImportSession *)self importSessionID];
    v13 = 138412290;
    v14 = importSessionID;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Revalidating importDates for %@", &v13, 0xCu);
  }

  _orderedBatchedAssets = [(PLImportSession *)self _orderedBatchedAssets];
  objectEnumerator = [_orderedBatchedAssets objectEnumerator];
  nextObject = 0;
  while (1)
  {
    v8 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    if ([(PLImportSession *)self _isAssetIncludedInImportDates:nextObject])
    {
      addedDate = [nextObject addedDate];
      goto LABEL_8;
    }
  }

  addedDate = 0;
LABEL_8:
  reverseObjectEnumerator = [_orderedBatchedAssets reverseObjectEnumerator];
  while (1)
  {
    v11 = nextObject;
    nextObject = [reverseObjectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    if ([(PLImportSession *)self _isAssetIncludedInImportDates:nextObject])
    {
      addedDate2 = [nextObject addedDate];
      goto LABEL_13;
    }
  }

  addedDate2 = 0;
LABEL_13:
  [(PLImportSession *)self _updateStartDate:addedDate];
  [(PLImportSession *)self _updateEndDate:addedDate2];
}

- (void)_updateEndDate:(id)date
{
  v16 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDate = [(PLImportSession *)self endDate];
  if (!endDate || (v6 = endDate, -[PLImportSession endDate](self, "endDate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 timeIntervalSinceDate:dateCopy], v9 = fabs(v8), v7, v6, v9 > 2.22044605e-16))
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      importSessionID = [(PLImportSession *)self importSessionID];
      v12 = 138412546;
      v13 = dateCopy;
      v14 = 2112;
      v15 = importSessionID;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "setEndDate: %@ for %@", &v12, 0x16u);
    }

    [(PLImportSession *)self setEndDate:dateCopy];
  }
}

- (void)_updateStartDate:(id)date
{
  v16 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  startDate = [(PLImportSession *)self startDate];
  if (!startDate || (v6 = startDate, -[PLImportSession startDate](self, "startDate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 timeIntervalSinceDate:dateCopy], v9 = fabs(v8), v7, v6, v9 > 2.22044605e-16))
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      importSessionID = [(PLImportSession *)self importSessionID];
      v12 = 138412546;
      v13 = dateCopy;
      v14 = 2112;
      v15 = importSessionID;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "setStartDate: %@ for %@", &v12, 0x16u);
    }

    [(PLImportSession *)self setStartDate:dateCopy];
  }
}

+ (id)albumWithImportSessionID:(id)d inManagedObjectContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  if (d)
  {
    dCopy = d;
    v6 = MEMORY[0x1E695DEC8];
    contextCopy = context;
    dCopy2 = d;
    v9 = [v6 arrayWithObjects:&dCopy count:1];

    v10 = [self albumsWithImportSessionIDs:v9 inManagedObjectContext:{contextCopy, dCopy, v14}];

    firstObject = [v10 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)albumsWithImportSessionIDs:(id)ds inManagedObjectContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  if ([dsCopy count])
  {
    v7 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"ImportSession"];
    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"importSessionID", dsCopy];
    [v7 setPredicate:dsCopy];

    [v7 setFetchLimit:{objc_msgSend(dsCopy, "count")}];
    [v7 setReturnsObjectsAsFaults:0];
    if ([dsCopy count] >= 0x65)
    {
      [v7 setFetchBatchSize:100];
    }

    v13 = 0;
    v9 = [contextCopy executeFetchRequest:v7 error:&v13];
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

+ (id)insertNewImportSessionAlbumWithImportSessionID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  v6 = [(PLManagedObject *)PLImportSession insertInManagedObjectContext:context];
  [v6 setImportSessionID:dCopy];

  [v6 setKindValue:1506];

  return v6;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  v5 = [(PLManagedObjectJournalEntryPayload *)[PLImportSessionJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];

  return v5;
}

@end
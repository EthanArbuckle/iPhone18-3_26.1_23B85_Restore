@interface PLConversation
+ (id)albumWithConversationID:(id)d inLibrary:(id)library;
+ (id)albumsWithConversationIDs:(id)ds inLibrary:(id)library;
+ (id)createOrUpdateObjectFromSearchableItem:(id)item library:(id)library fullIndexSyncStartDate:(id)date createIfNeeded:(BOOL)needed didCreate:(BOOL *)create isSyndicatable:(BOOL *)syndicatable error:(id *)error;
+ (id)insertNewConversationAlbumWithConversationID:(id)d inManagedObjectContext:(id)context;
- (BOOL)_isAssetIncludedInConversationDates:(id)dates;
- (BOOL)_isDateAfterEndDate:(id)date;
- (BOOL)_isDateBeforeStartDate:(id)date;
- (id)_orderedBatchedAssets;
- (unint64_t)count;
- (void)_updateAssetSyndicationState:(unsigned __int16)state;
- (void)_updateEndDate:(id)date;
- (void)_updateStartDate:(id)date;
- (void)updateConversationDatesFromAddedAsset:(id)asset;
- (void)willSave;
@end

@implementation PLConversation

- (unint64_t)count
{
  assets = [(PLConversation *)self assets];
  v3 = [assets count];

  return v3;
}

- (void)willSave
{
  v6.receiver = self;
  v6.super_class = PLConversation;
  [(PLGenericAlbum *)&v6 willSave];
  managedObjectContext = [(PLConversation *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    changedValues = [(PLConversation *)self changedValues];
    v5 = [changedValues objectForKey:@"syndicate"];

    if (v5)
    {
      [(PLConversation *)self _updateAssetSyndicationState:[(PLConversation *)self syndicate]];
    }
  }
}

- (void)_updateAssetSyndicationState:(unsigned __int16)state
{
  stateCopy = state;
  v17 = *MEMORY[0x1E69E9840];
  assets = [(PLConversation *)self assets];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [assets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(assets);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        syndicationState = [v9 syndicationState];
        if (stateCopy == 1)
        {
          v11 = syndicationState & 0xFFFB;
        }

        else if (stateCopy)
        {
          v11 = 0;
        }

        else
        {
          v11 = syndicationState | 4;
        }

        if (syndicationState != v11)
        {
          [v9 setSyndicationState:v11];
        }
      }

      v6 = [assets countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)_orderedBatchedAssets
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setFetchBatchSize:100];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"conversation", self];
  [v5 setPredicate:v6];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v22[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [v5 setSortDescriptors:v8];

  managedObjectContext = [(PLConversation *)self managedObjectContext];
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
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Batch fetched %lu assets from conversation %@", buf, 0x16u);
  }

  return v10;
}

- (BOOL)_isDateAfterEndDate:(id)date
{
  dateCopy = date;
  endDate = [(PLConversation *)self endDate];
  if (endDate)
  {
    endDate2 = [(PLConversation *)self endDate];
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
  startDate = [(PLConversation *)self startDate];
  if (startDate)
  {
    startDate2 = [(PLConversation *)self startDate];
    v7 = [startDate2 compare:dateCopy] == 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_isAssetIncludedInConversationDates:(id)dates
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

- (void)updateConversationDatesFromAddedAsset:(id)asset
{
  assetCopy = asset;
  addedDate = [assetCopy addedDate];
  v5 = [(PLConversation *)self _isAssetIncludedInConversationDates:assetCopy];

  if (v5)
  {
    if ([(PLConversation *)self _isDateBeforeStartDate:addedDate])
    {
      [(PLConversation *)self _updateStartDate:addedDate];
    }

    if ([(PLConversation *)self _isDateAfterEndDate:addedDate])
    {
      [(PLConversation *)self _updateEndDate:addedDate];
    }
  }
}

- (void)_updateEndDate:(id)date
{
  dateCopy = date;
  endDate = [(PLConversation *)self endDate];
  if (!endDate || (v5 = endDate, -[PLConversation endDate](self, "endDate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 timeIntervalSinceDate:dateCopy], v8 = fabs(v7), v6, v5, v8 > 2.22044605e-16))
  {
    [(PLConversation *)self setEndDate:dateCopy];
  }
}

- (void)_updateStartDate:(id)date
{
  dateCopy = date;
  startDate = [(PLConversation *)self startDate];
  if (!startDate || (v5 = startDate, -[PLConversation startDate](self, "startDate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 timeIntervalSinceDate:dateCopy], v8 = fabs(v7), v6, v5, v8 > 2.22044605e-16))
  {
    [(PLConversation *)self setStartDate:dateCopy];
  }
}

+ (id)createOrUpdateObjectFromSearchableItem:(id)item library:(id)library fullIndexSyncStartDate:(id)date createIfNeeded:(BOOL)needed didCreate:(BOOL *)create isSyndicatable:(BOOL *)syndicatable error:(id *)error
{
  neededCopy = needed;
  v32 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  itemCopy = item;
  IsChatAutoDonating = PLSearchableItemMessagesIsChatAutoDonating(itemCopy);
  uniqueIdentifier = [itemCopy uniqueIdentifier];

  managedObjectContext = [libraryCopy managedObjectContext];
  v18 = [PLConversation albumWithConversationID:uniqueIdentifier inLibrary:libraryCopy];

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = neededCopy;
  }

  if (v19)
  {
    v18 = [PLConversation insertNewConversationAlbumWithConversationID:uniqueIdentifier inManagedObjectContext:managedObjectContext];
    v20 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    uuid = [v18 uuid];
    v22 = uuid;
    v23 = @"not ";
    if (IsChatAutoDonating)
    {
      v23 = &stru_1F0F06D80;
    }

    *buf = 138543618;
    v29 = uuid;
    v30 = 2114;
    v31 = v23;
    v24 = "[sync] created new PLConversation with UUID %{public}@ (%{public}@autoDonating) for syndication conversation";
  }

  else
  {
    v20 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    uuid2 = [v18 uuid];
    v22 = uuid2;
    v26 = @"not ";
    if (IsChatAutoDonating)
    {
      v26 = &stru_1F0F06D80;
    }

    *buf = 138543618;
    v29 = uuid2;
    v30 = 2114;
    v31 = v26;
    v24 = "[sync] found existing PLConversation with UUID %{public}@ (%{public}@autoDonating) for syndication conversation";
  }

  _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);

LABEL_14:
  if (v18)
  {
    [v18 setSyndicate:IsChatAutoDonating];
  }

  if (create)
  {
    *create = v19;
  }

  if (syndicatable)
  {
    *syndicatable = 1;
  }

  if (error)
  {
    *error = 0;
  }

  return v18;
}

+ (id)albumWithConversationID:(id)d inLibrary:(id)library
{
  v14 = *MEMORY[0x1E69E9840];
  if (d)
  {
    dCopy = d;
    v6 = MEMORY[0x1E695DEC8];
    libraryCopy = library;
    dCopy2 = d;
    v9 = [v6 arrayWithObjects:&dCopy count:1];

    v10 = [self albumsWithConversationIDs:v9 inLibrary:{libraryCopy, dCopy, v14}];

    firstObject = [v10 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)albumsWithConversationIDs:(id)ds inLibrary:(id)library
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  libraryCopy = library;
  if ([dsCopy count])
  {
    v7 = objc_autoreleasePoolPush();
    managedObjectContext = [libraryCopy managedObjectContext];
    v9 = MEMORY[0x1E695D5E0];
    v10 = +[PLConversation entityName];
    v11 = [v9 fetchRequestWithEntityName:v10];

    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"importSessionID", dsCopy];
    [v11 setPredicate:dsCopy];

    [v11 setFetchLimit:{objc_msgSend(dsCopy, "count")}];
    [v11 setReturnsObjectsAsFaults:0];
    if ([dsCopy count] >= 0x65)
    {
      [v11 setFetchBatchSize:100];
    }

    v17 = 0;
    v13 = [managedObjectContext executeFetchRequest:v11 error:&v17];
    v14 = v17;
    if (!v13)
    {
      v15 = PLBackendGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch albumsWithConversationIDs. Error: %@", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)insertNewConversationAlbumWithConversationID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  v6 = [(PLManagedObject *)PLConversation insertInManagedObjectContext:context];
  [v6 setImportSessionID:dCopy];

  [v6 setKindValue:1509];

  return v6;
}

@end
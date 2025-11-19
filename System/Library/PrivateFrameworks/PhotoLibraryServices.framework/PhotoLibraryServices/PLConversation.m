@interface PLConversation
+ (id)albumWithConversationID:(id)a3 inLibrary:(id)a4;
+ (id)albumsWithConversationIDs:(id)a3 inLibrary:(id)a4;
+ (id)createOrUpdateObjectFromSearchableItem:(id)a3 library:(id)a4 fullIndexSyncStartDate:(id)a5 createIfNeeded:(BOOL)a6 didCreate:(BOOL *)a7 isSyndicatable:(BOOL *)a8 error:(id *)a9;
+ (id)insertNewConversationAlbumWithConversationID:(id)a3 inManagedObjectContext:(id)a4;
- (BOOL)_isAssetIncludedInConversationDates:(id)a3;
- (BOOL)_isDateAfterEndDate:(id)a3;
- (BOOL)_isDateBeforeStartDate:(id)a3;
- (id)_orderedBatchedAssets;
- (unint64_t)count;
- (void)_updateAssetSyndicationState:(unsigned __int16)a3;
- (void)_updateEndDate:(id)a3;
- (void)_updateStartDate:(id)a3;
- (void)updateConversationDatesFromAddedAsset:(id)a3;
- (void)willSave;
@end

@implementation PLConversation

- (unint64_t)count
{
  v2 = [(PLConversation *)self assets];
  v3 = [v2 count];

  return v3;
}

- (void)willSave
{
  v6.receiver = self;
  v6.super_class = PLConversation;
  [(PLGenericAlbum *)&v6 willSave];
  v3 = [(PLConversation *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PLConversation *)self changedValues];
    v5 = [v4 objectForKey:@"syndicate"];

    if (v5)
    {
      [(PLConversation *)self _updateAssetSyndicationState:[(PLConversation *)self syndicate]];
    }
  }
}

- (void)_updateAssetSyndicationState:(unsigned __int16)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(PLConversation *)self assets];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 syndicationState];
        if (v3 == 1)
        {
          v11 = v10 & 0xFFFB;
        }

        else if (v3)
        {
          v11 = 0;
        }

        else
        {
          v11 = v10 | 4;
        }

        if (v10 != v11)
        {
          [v9 setSyndicationState:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

  v9 = [(PLConversation *)self managedObjectContext];
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
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Batch fetched %lu assets from conversation %@", buf, 0x16u);
  }

  return v10;
}

- (BOOL)_isDateAfterEndDate:(id)a3
{
  v4 = a3;
  v5 = [(PLConversation *)self endDate];
  if (v5)
  {
    v6 = [(PLConversation *)self endDate];
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
  v5 = [(PLConversation *)self startDate];
  if (v5)
  {
    v6 = [(PLConversation *)self startDate];
    v7 = [v6 compare:v4] == 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_isAssetIncludedInConversationDates:(id)a3
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

- (void)updateConversationDatesFromAddedAsset:(id)a3
{
  v4 = a3;
  v6 = [v4 addedDate];
  v5 = [(PLConversation *)self _isAssetIncludedInConversationDates:v4];

  if (v5)
  {
    if ([(PLConversation *)self _isDateBeforeStartDate:v6])
    {
      [(PLConversation *)self _updateStartDate:v6];
    }

    if ([(PLConversation *)self _isDateAfterEndDate:v6])
    {
      [(PLConversation *)self _updateEndDate:v6];
    }
  }
}

- (void)_updateEndDate:(id)a3
{
  v9 = a3;
  v4 = [(PLConversation *)self endDate];
  if (!v4 || (v5 = v4, -[PLConversation endDate](self, "endDate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 timeIntervalSinceDate:v9], v8 = fabs(v7), v6, v5, v8 > 2.22044605e-16))
  {
    [(PLConversation *)self setEndDate:v9];
  }
}

- (void)_updateStartDate:(id)a3
{
  v9 = a3;
  v4 = [(PLConversation *)self startDate];
  if (!v4 || (v5 = v4, -[PLConversation startDate](self, "startDate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 timeIntervalSinceDate:v9], v8 = fabs(v7), v6, v5, v8 > 2.22044605e-16))
  {
    [(PLConversation *)self setStartDate:v9];
  }
}

+ (id)createOrUpdateObjectFromSearchableItem:(id)a3 library:(id)a4 fullIndexSyncStartDate:(id)a5 createIfNeeded:(BOOL)a6 didCreate:(BOOL *)a7 isSyndicatable:(BOOL *)a8 error:(id *)a9
{
  v11 = a6;
  v32 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a3;
  IsChatAutoDonating = PLSearchableItemMessagesIsChatAutoDonating(v14);
  v16 = [v14 uniqueIdentifier];

  v17 = [v13 managedObjectContext];
  v18 = [PLConversation albumWithConversationID:v16 inLibrary:v13];

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  if (v19)
  {
    v18 = [PLConversation insertNewConversationAlbumWithConversationID:v16 inManagedObjectContext:v17];
    v20 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v21 = [v18 uuid];
    v22 = v21;
    v23 = @"not ";
    if (IsChatAutoDonating)
    {
      v23 = &stru_1F0F06D80;
    }

    *buf = 138543618;
    v29 = v21;
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

    v25 = [v18 uuid];
    v22 = v25;
    v26 = @"not ";
    if (IsChatAutoDonating)
    {
      v26 = &stru_1F0F06D80;
    }

    *buf = 138543618;
    v29 = v25;
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

  if (a7)
  {
    *a7 = v19;
  }

  if (a8)
  {
    *a8 = 1;
  }

  if (a9)
  {
    *a9 = 0;
  }

  return v18;
}

+ (id)albumWithConversationID:(id)a3 inLibrary:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13 = a3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a4;
    v8 = a3;
    v9 = [v6 arrayWithObjects:&v13 count:1];

    v10 = [a1 albumsWithConversationIDs:v9 inLibrary:{v7, v13, v14}];

    v11 = [v10 firstObject];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)albumsWithConversationIDs:(id)a3 inLibrary:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [v6 managedObjectContext];
    v9 = MEMORY[0x1E695D5E0];
    v10 = +[PLConversation entityName];
    v11 = [v9 fetchRequestWithEntityName:v10];

    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"importSessionID", v5];
    [v11 setPredicate:v12];

    [v11 setFetchLimit:{objc_msgSend(v5, "count")}];
    [v11 setReturnsObjectsAsFaults:0];
    if ([v5 count] >= 0x65)
    {
      [v11 setFetchBatchSize:100];
    }

    v17 = 0;
    v13 = [v8 executeFetchRequest:v11 error:&v17];
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

+ (id)insertNewConversationAlbumWithConversationID:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = [(PLManagedObject *)PLConversation insertInManagedObjectContext:a4];
  [v6 setImportSessionID:v5];

  [v6 setKindValue:1509];

  return v6;
}

@end
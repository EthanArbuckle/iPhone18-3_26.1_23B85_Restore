@interface PLCloudFeedEntry
+ (id)_recentEntriesInLibrary:(id)a3 forEntity:(id)a4 usingPredicate:(id)a5 earliestDate:(id)a6 latestDate:(id)a7 limit:(unint64_t)a8 sortDescriptors:(id)a9;
+ (id)allEntriesInLibrary:(id)a3;
+ (id)allEntriesInManagedObjectContext:(id)a3;
+ (id)entriesSortDescriptorsAscending:(BOOL)a3;
+ (id)entryWithURIRepresentation:(id)a3 inLibrary:(id)a4;
+ (id)fetchesForFilter:(int64_t)a3 inManagedObjectContext:(id)a4;
+ (id)firstEntryWithType:(signed __int16)a3 albumGUID:(id)a4 inLibrary:(id)a5;
+ (id)notificationPredicateForFilter:(int64_t)a3;
+ (id)predicateExcludingEntryTypes:(id)a3;
+ (id)predicateIncludingOnlyEntryTypes:(id)a3 noIndex:(BOOL)a4;
+ (id)recentAssetsEntriesInLibrary:(id)a3 limit:(int64_t)a4;
+ (id)recentEntriesInLibrary:(id)a3 earliestDate:(id)a4 latestDate:(id)a5 limit:(unint64_t)a6 filter:(int64_t)a7 sortDescriptors:(id)a8;
- (BOOL)shouldBeRemovedFromPhotoLibrary:(id)a3;
- (NSURL)URIRepresentation;
- (signed)entryPriority;
- (void)awakeFromInsert;
- (void)recalcIsMine;
- (void)willSave;
@end

@implementation PLCloudFeedEntry

- (BOOL)shouldBeRemovedFromPhotoLibrary:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLCloudFeedEntry *)self entryDate];

  if (v5)
  {
    v6 = [(PLCloudFeedEntry *)self entryAlbumGUID];
    if (!v6 || (v7 = v6, [v4 managedObjectContext], v8 = objc_claimAutoreleasedReturnValue(), v9 = 1, +[PLShare shareWithScopeIdentifier:includeTrashed:inManagedObjectContext:](PLCollectionShare, "shareWithScopeIdentifier:includeTrashed:inManagedObjectContext:", v7, 1, v8), v10 = objc_claimAutoreleasedReturnValue(), v10, v8, v7, v10))
    {
      v11 = [(PLCloudFeedEntry *)self entryInvitationRecordGUID];
      v12 = v11;
      if (v11)
      {
        v17[0] = v11;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        v14 = [PLShareParticipant participantsWithParticipantIDs:v13 inPhotoLibrary:v4];
        v15 = [v14 firstObject];
        v9 = [v15 acceptanceStatus] == 3;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (signed)entryPriority
{
  v2 = [(PLCloudFeedEntry *)self entryPriorityNumber];
  v3 = [v2 integerValue];

  return v3;
}

- (NSURL)URIRepresentation
{
  v2 = [(PLCloudFeedEntry *)self objectID];
  v3 = [v2 URIRepresentation];

  return v3;
}

- (void)recalcIsMine
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = [(PLCloudFeedEntry *)self entryType];
  if (v4 > 3)
  {
    if (v4 == 4 || v4 == 7)
    {
      v3 = 1;
    }
  }

  else if (v4 == 1)
  {
    v9 = [(PLCloudFeedEntry *)self entity];
    v10 = +[PLCloudFeedAssetsEntry entity];
    v3 = [v9 isKindOfEntity:v10];

    if (v3)
    {
      v7 = [(PLCloudFeedEntry *)self entryAssets];
      v11 = [(PLCloudFeedEntry *)v7 firstObject];
      v3 = [v11 cloudIsMyAsset];
LABEL_24:
    }
  }

  else if (v4 == 2)
  {
    v5 = [(PLCloudFeedEntry *)self entity];
    v6 = +[PLCloudFeedCommentsEntry entity];
    v3 = [v5 isKindOfEntity:v6];

    if (v3)
    {
      v7 = self;
      v8 = [(PLCloudFeedEntry *)v7 entryComments];
      if ([v8 count])
      {
        [(PLCloudFeedEntry *)v7 entryComments];
      }

      else
      {
        [(PLCloudFeedEntry *)v7 entryLikeComments];
      }
      v12 = ;

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v12;
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = [*(*(&v20 + 1) + 8 * i) isMyComment];
            v18 = [v17 BOOLValue];

            if (!v18)
            {
              v3 = 0;
              goto LABEL_23;
            }
          }

          v14 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v3 = 1;
LABEL_23:

      goto LABEL_24;
    }
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{v3, v20}];
  [(PLManagedObject *)self pl_safeSetValue:v19 forKey:@"entryIsMine" valueDidChangeHandler:0];
}

- (void)willSave
{
  v10.receiver = self;
  v10.super_class = PLCloudFeedEntry;
  [(PLManagedObject *)&v10 willSave];
  v3 = [(PLCloudFeedEntry *)self managedObjectContext];
  v4 = [v3 photoLibrary];
  if ([v4 isUnitTesting])
  {
    v5 = 1;
  }

  else
  {
    v5 = MEMORY[0x19EAEE520]();
  }

  if (([(PLCloudFeedEntry *)self isDeleted]& 1) == 0 && (v5 & 1) == 0)
  {
    v6 = [(PLCloudFeedEntry *)self changedValues];
    if (([(PLCloudFeedEntry *)self isInserted]& 1) == 0)
    {
      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = @"entryAssets";
        goto LABEL_9;
      }

      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_15:

        return;
      }

      v9 = [v6 objectForKeyedSubscript:@"entryLikeComments"];
      if (!v9)
      {
        v7 = @"entryComments";
LABEL_9:
        v8 = [v6 objectForKeyedSubscript:v7];

        if (!v8)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
    [(PLCloudFeedEntry *)self recalcIsMine];
    goto LABEL_15;
  }
}

- (void)awakeFromInsert
{
  v5.receiver = self;
  v5.super_class = PLCloudFeedEntry;
  [(PLCloudFeedEntry *)&v5 awakeFromInsert];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  [(PLCloudFeedEntry *)self setUuid:v4];
}

+ (id)entryWithURIRepresentation:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = [a4 managedObjectContext];
  v7 = [v6 persistentStoreCoordinator];
  v8 = [v7 managedObjectIDForURIRepresentation:v5];

  if (v8)
  {
    v9 = [v6 objectWithID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)allEntriesInManagedObjectContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v4];
  [v5 setEntity:v6];

  [v5 setFetchBatchSize:100];
  v7 = [PLCloudFeedEntry entriesSortDescriptorsAscending:1];
  [v5 setSortDescriptors:v7];
  v12 = 0;
  v8 = [v4 executeFetchRequest:v5 error:&v12];

  v9 = v12;
  if (!v8)
  {
    v10 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "error fetching all entries: %@", buf, 0xCu);
    }
  }

  return v8;
}

+ (id)firstEntryWithType:(signed __int16)a3 albumGUID:(id)a4 inLibrary:(id)a5
{
  v6 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695D5E0];
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(v7);
  v11 = [v8 managedObjectContext];

  v12 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v11];
  [v10 setEntity:v12];

  [v10 setFetchLimit:1];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryType = %d) AND (entryAlbumGUID = %@)", v6, v9];

  [v10 setPredicate:v13];
  v19 = 0;
  v14 = [v11 executeFetchRequest:v10 error:&v19];
  v15 = v19;
  if (v14)
  {
    v16 = [v14 firstObject];
  }

  else
  {
    v17 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "error fetching recent asset entries: %@", buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

+ (id)recentAssetsEntriesInLibrary:(id)a3 limit:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v6 managedObjectContext];

  v9 = [(PLManagedObject *)PLCloudFeedAssetsEntry entityInManagedObjectContext:v8];
  [v7 setEntity:v9];

  [v7 setFetchLimit:a4];
  v10 = [PLCloudFeedEntry entriesSortDescriptorsAscending:0];
  [v7 setSortDescriptors:v10];
  v15 = 0;
  v11 = [v8 executeFetchRequest:v7 error:&v15];
  v12 = v15;
  if (!v11)
  {
    v13 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "error fetching recent asset entries: %@", buf, 0xCu);
    }
  }

  return v11;
}

+ (id)_recentEntriesInLibrary:(id)a3 forEntity:(id)a4 usingPredicate:(id)a5 earliestDate:(id)a6 latestDate:(id)a7 limit:(unint64_t)a8 sortDescriptors:(id)a9
{
  v55[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v21 = [v14 managedObjectContext];
  [v20 setEntity:v15];
  v46 = v14;
  v44 = v17;
  v45 = v16;
  v43 = v18;
  if (v17 && v18)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryDate > %@) AND (entryDate <= %@)", v17, v18];
  }

  else if (v17)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryDate > %@)", v17, v40];
  }

  else
  {
    if (!v18)
    {
      v22 = 0;
      v24 = v16 != 0;
      v23 = 1;
      goto LABEL_12;
    }

    [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryDate <= %@)", v18, v40];
  }
  v22 = ;
  v23 = v22 == 0;
  v24 = v16 != 0;
  if (!v16 && v22)
  {
    v25 = v22;
    v42 = v25;
    goto LABEL_20;
  }

LABEL_12:
  v42 = v22;
  if (v24 && v23)
  {
    v25 = v16;
    if (!v25)
    {
LABEL_21:
      if (!a8)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_20:
    [v20 setPredicate:v25];
    goto LABEL_21;
  }

  v26 = !v24;
  if (!v22)
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    v27 = MEMORY[0x1E696AB28];
    v55[0] = v22;
    v55[1] = v16;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v25 = [v27 andPredicateWithSubpredicates:v28];

    if (!v25)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v25 = 0;
  if (a8)
  {
LABEL_22:
    [v20 setFetchLimit:a8];
  }

LABEL_23:
  v41 = v25;
  v29 = v19;
  v30 = v29;
  if (!v29)
  {
    v30 = [PLCloudFeedEntry entriesSortDescriptorsAscending:0];
  }

  [v20 setSortDescriptors:v30];
  [v20 setRelationshipKeyPathsForPrefetching:&unk_1F0FC0378];
  v51 = 0;
  v31 = [v21 executeFetchRequest:v20 error:&v51];
  v32 = v51;
  if (!v31)
  {
    v33 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = v32;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "error fetching recent asset entries: %@", buf, 0xCu);
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v34 = v31;
  v35 = [v34 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v48;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [v21 refreshObject:*(*(&v47 + 1) + 8 * i) mergeChanges:{objc_msgSend(*(*(&v47 + 1) + 8 * i), "hasChanges")}];
      }

      v36 = [v34 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v36);
  }

  return v34;
}

+ (id)recentEntriesInLibrary:(id)a3 earliestDate:(id)a4 latestDate:(id)a5 limit:(unint64_t)a6 filter:(int64_t)a7 sortDescriptors:(id)a8
{
  v70 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = v14;
  v17 = a5;
  v18 = a8;
  v19 = [v13 managedObjectContext];
  if (a6 <= 0x64)
  {
    v20 = 100;
  }

  else
  {
    v20 = a6;
  }

  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:v20];
  v46 = v19;
  v22 = [PLCloudFeedEntry fetchesForFilter:v15 inManagedObjectContext:v19];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v53 = v22;
  v56 = [v22 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v56)
  {
    v55 = *v65;
    v51 = v17;
    v52 = v16;
    v49 = a6;
    v50 = v18;
    v47 = v15;
    v48 = v21;
    do
    {
      v23 = 0;
      do
      {
        if (*v65 != v55)
        {
          objc_enumerationMutation(v22);
        }

        v59 = v23;
        v24 = *(*(&v64 + 1) + 8 * v23);
        v25 = [v24 predicate];
        v26 = v24;
        v27 = v25;
        v58 = [v26 entity];
        v28 = [PLCloudFeedEntry _recentEntriesInLibrary:"_recentEntriesInLibrary:forEntity:usingPredicate:earliestDate:latestDate:limit:sortDescriptors:" forEntity:v13 usingPredicate:v18 earliestDate:? latestDate:? limit:? sortDescriptors:?];
        v29 = v28;
        if (v28)
        {
          v57 = v28;
          v30 = [v28 count];
          v29 = v57;
          if (v30)
          {
            if (v15 == 4)
            {
              v54 = v27;
              v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v57, "count")}];
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v32 = v57;
              v33 = [v32 countByEnumeratingWithState:&v60 objects:v68 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v61;
                do
                {
                  for (i = 0; i != v34; ++i)
                  {
                    if (*v61 != v35)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v37 = *(*(&v60 + 1) + 8 * i);
                    v38 = [v37 entryAlbumGUID];
                    if (v38)
                    {
                      v39 = [v13 managedObjectContext];
                      v40 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v38 includeTrashed:1 inManagedObjectContext:v39];

                      if (!v40 || [v40 notificationState] == 0x7FFF)
                      {
                        [v31 addObject:v37];
                      }
                    }
                  }

                  v34 = [v32 countByEnumeratingWithState:&v60 objects:v68 count:16];
                }

                while (v34);
              }

              v21 = v48;
              [v48 addObjectsFromArray:v31];

              v17 = v51;
              v16 = v52;
              a6 = v49;
              v18 = v50;
              v22 = v53;
              v27 = v54;
              v15 = v47;
            }

            else
            {
              [v21 addObjectsFromArray:v57];
            }

            v29 = v57;
          }
        }

        v23 = v59 + 1;
      }

      while (v59 + 1 != v56);
      v56 = [v22 countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v56);
  }

  if ([v22 count] >= 2)
  {
    v41 = v18;
    if (!v41)
    {
      v41 = [PLCloudFeedEntry entriesSortDescriptorsAscending:0];
    }

    [v21 sortUsingDescriptors:v41];
    if (a6 && [v21 count] > a6)
    {
      v42 = [v21 subarrayWithRange:{0, a6}];
      v43 = [v42 mutableCopy];

      v22 = v53;
      v21 = v43;
    }
  }

  v44 = [v21 copy];

  return v44;
}

+ (id)fetchesForFilter:(int64_t)a3 inManagedObjectContext:(id)a4
{
  v27[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if (a3 > 2)
  {
    if ((a3 - 3) < 2)
    {
      v10 = [a1 predicateIncludingOnlyCommentsAndLikesFromOthers];
      v11 = [PLCloudFeedEntryFetch alloc];
      v12 = [(PLManagedObject *)PLCloudFeedCommentsEntry entityInManagedObjectContext:v6];
      v13 = [(PLCloudFeedEntryFetch *)v11 initWithPredicate:v10 entity:v12];

      v14 = [a1 predicateIncludingOnlyAssetsAddedByOthers];
      v15 = [PLCloudFeedEntryFetch alloc];
      v16 = [(PLManagedObject *)PLCloudFeedAssetsEntry entityInManagedObjectContext:v6];
      v17 = [(PLCloudFeedEntryFetch *)v15 initWithPredicate:v14 entity:v16];

      v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(noindex:(entryType) = %d) OR (noindex:(entryType) = %d)", 5, 6];
      v19 = [PLCloudFeedEntryFetch alloc];
      v20 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v6];
      v21 = [(PLCloudFeedEntryFetch *)v19 initWithPredicate:v18 entity:v20];

      v27[0] = v13;
      v27[1] = v17;
      v27[2] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
      [v7 addObjectsFromArray:v22];

LABEL_12:
      goto LABEL_13;
    }

    if (a3 != 5)
    {
      goto LABEL_14;
    }

    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryType!= %d) AND (entryType!= %d)", 4, 7];
LABEL_11:
    v10 = v23;
    v24 = [PLCloudFeedEntryFetch alloc];
    v25 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v6];
    v13 = [(PLCloudFeedEntryFetch *)v24 initWithPredicate:v10 entity:v25];

    [v7 addObject:v13];
    goto LABEL_12;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_5;
    }

    v23 = [a1 predicateIncludingOnlyEntryTypes:&unk_1F0FC0360];
    goto LABEL_11;
  }

LABEL_5:
  v8 = [PLCloudFeedEntryFetch alloc];
  v9 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v6];
  v10 = [(PLCloudFeedEntryFetch *)v8 initWithPredicate:0 entity:v9];

  [v7 addObject:v10];
LABEL_13:

LABEL_14:

  return v7;
}

+ (id)notificationPredicateForFilter:(int64_t)a3
{
  v4 = 0;
  v12[3] = *MEMORY[0x1E69E9840];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v5 = [a1 predicateIncludingOnlyEntryTypes:&unk_1F0FC0318];
        goto LABEL_11;
      }

      if (a3 != 2)
      {
        goto LABEL_12;
      }
    }

    v5 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_11:
    v4 = v5;
    goto LABEL_12;
  }

  if ((a3 - 3) < 2)
  {
    v6 = MEMORY[0x1E696AB28];
    v7 = [a1 predicateIncludingOnlyCommentsAndLikesFromOthers];
    v8 = [a1 predicateIncludingOnlyAssetsAddedByOthers];
    v12[1] = v8;
    v9 = [a1 predicateIncludingOnlyEntryTypes:&unk_1F0FC0330];
    v12[2] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    v4 = [v6 orPredicateWithSubpredicates:v10];

    goto LABEL_12;
  }

  if (a3 == 5)
  {
    v5 = [a1 predicateExcludingEntryTypes:&unk_1F0FC0348];
    goto LABEL_11;
  }

LABEL_12:

  return v4;
}

+ (id)predicateExcludingEntryTypes:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) intValue];
        v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"entryType!= %d", v10];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];

  return v12;
}

+ (id)predicateIncludingOnlyEntryTypes:(id)a3 noIndex:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    if (v4)
    {
      v11 = @"(noindex:(entryType) = %d)";
    }

    else
    {
      v11 = @"entryType = %d";
    }

    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) intValue];
        v14 = [MEMORY[0x1E696AE18] predicateWithFormat:v11, v13];
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v6];

  return v15;
}

+ (id)allEntriesInLibrary:(id)a3
{
  v4 = [a3 managedObjectContext];
  v5 = [a1 allEntriesInManagedObjectContext:v4];

  return v5;
}

+ (id)entriesSortDescriptorsAscending:(BOOL)a3
{
  v3 = a3;
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"entryPriorityNumber" ascending:a3];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"entryDate" ascending:v3];
  v8[0] = v4;
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v6;
}

@end
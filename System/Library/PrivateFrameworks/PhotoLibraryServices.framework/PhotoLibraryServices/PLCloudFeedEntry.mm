@interface PLCloudFeedEntry
+ (id)_recentEntriesInLibrary:(id)library forEntity:(id)entity usingPredicate:(id)predicate earliestDate:(id)date latestDate:(id)latestDate limit:(unint64_t)limit sortDescriptors:(id)descriptors;
+ (id)allEntriesInLibrary:(id)library;
+ (id)allEntriesInManagedObjectContext:(id)context;
+ (id)entriesSortDescriptorsAscending:(BOOL)ascending;
+ (id)entryWithURIRepresentation:(id)representation inLibrary:(id)library;
+ (id)fetchesForFilter:(int64_t)filter inManagedObjectContext:(id)context;
+ (id)firstEntryWithType:(signed __int16)type albumGUID:(id)d inLibrary:(id)library;
+ (id)notificationPredicateForFilter:(int64_t)filter;
+ (id)predicateExcludingEntryTypes:(id)types;
+ (id)predicateIncludingOnlyEntryTypes:(id)types noIndex:(BOOL)index;
+ (id)recentAssetsEntriesInLibrary:(id)library limit:(int64_t)limit;
+ (id)recentEntriesInLibrary:(id)library earliestDate:(id)date latestDate:(id)latestDate limit:(unint64_t)limit filter:(int64_t)filter sortDescriptors:(id)descriptors;
- (BOOL)shouldBeRemovedFromPhotoLibrary:(id)library;
- (NSURL)URIRepresentation;
- (signed)entryPriority;
- (void)awakeFromInsert;
- (void)recalcIsMine;
- (void)willSave;
@end

@implementation PLCloudFeedEntry

- (BOOL)shouldBeRemovedFromPhotoLibrary:(id)library
{
  v17[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  entryDate = [(PLCloudFeedEntry *)self entryDate];

  if (entryDate)
  {
    entryAlbumGUID = [(PLCloudFeedEntry *)self entryAlbumGUID];
    if (!entryAlbumGUID || (v7 = entryAlbumGUID, [libraryCopy managedObjectContext], v8 = objc_claimAutoreleasedReturnValue(), v9 = 1, +[PLShare shareWithScopeIdentifier:includeTrashed:inManagedObjectContext:](PLCollectionShare, "shareWithScopeIdentifier:includeTrashed:inManagedObjectContext:", v7, 1, v8), v10 = objc_claimAutoreleasedReturnValue(), v10, v8, v7, v10))
    {
      entryInvitationRecordGUID = [(PLCloudFeedEntry *)self entryInvitationRecordGUID];
      v12 = entryInvitationRecordGUID;
      if (entryInvitationRecordGUID)
      {
        v17[0] = entryInvitationRecordGUID;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        v14 = [PLShareParticipant participantsWithParticipantIDs:v13 inPhotoLibrary:libraryCopy];
        firstObject = [v14 firstObject];
        v9 = [firstObject acceptanceStatus] == 3;
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
  entryPriorityNumber = [(PLCloudFeedEntry *)self entryPriorityNumber];
  integerValue = [entryPriorityNumber integerValue];

  return integerValue;
}

- (NSURL)URIRepresentation
{
  objectID = [(PLCloudFeedEntry *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];

  return uRIRepresentation;
}

- (void)recalcIsMine
{
  v25 = *MEMORY[0x1E69E9840];
  cloudIsMyAsset = 0;
  entryType = [(PLCloudFeedEntry *)self entryType];
  if (entryType > 3)
  {
    if (entryType == 4 || entryType == 7)
    {
      cloudIsMyAsset = 1;
    }
  }

  else if (entryType == 1)
  {
    entity = [(PLCloudFeedEntry *)self entity];
    v10 = +[PLCloudFeedAssetsEntry entity];
    cloudIsMyAsset = [entity isKindOfEntity:v10];

    if (cloudIsMyAsset)
    {
      selfCopy = [(PLCloudFeedEntry *)self entryAssets];
      firstObject = [(PLCloudFeedEntry *)selfCopy firstObject];
      cloudIsMyAsset = [firstObject cloudIsMyAsset];
LABEL_24:
    }
  }

  else if (entryType == 2)
  {
    entity2 = [(PLCloudFeedEntry *)self entity];
    v6 = +[PLCloudFeedCommentsEntry entity];
    cloudIsMyAsset = [entity2 isKindOfEntity:v6];

    if (cloudIsMyAsset)
    {
      selfCopy = self;
      entryComments = [(PLCloudFeedEntry *)selfCopy entryComments];
      if ([entryComments count])
      {
        [(PLCloudFeedEntry *)selfCopy entryComments];
      }

      else
      {
        [(PLCloudFeedEntry *)selfCopy entryLikeComments];
      }
      v12 = ;

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      firstObject = v12;
      v13 = [firstObject countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(firstObject);
            }

            isMyComment = [*(*(&v20 + 1) + 8 * i) isMyComment];
            bOOLValue = [isMyComment BOOLValue];

            if (!bOOLValue)
            {
              cloudIsMyAsset = 0;
              goto LABEL_23;
            }
          }

          v14 = [firstObject countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      cloudIsMyAsset = 1;
LABEL_23:

      goto LABEL_24;
    }
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{cloudIsMyAsset, v20}];
  [(PLManagedObject *)self pl_safeSetValue:v19 forKey:@"entryIsMine" valueDidChangeHandler:0];
}

- (void)willSave
{
  v10.receiver = self;
  v10.super_class = PLCloudFeedEntry;
  [(PLManagedObject *)&v10 willSave];
  managedObjectContext = [(PLCloudFeedEntry *)self managedObjectContext];
  photoLibrary = [managedObjectContext photoLibrary];
  if ([photoLibrary isUnitTesting])
  {
    v5 = 1;
  }

  else
  {
    v5 = MEMORY[0x19EAEE520]();
  }

  if (([(PLCloudFeedEntry *)self isDeleted]& 1) == 0 && (v5 & 1) == 0)
  {
    changedValues = [(PLCloudFeedEntry *)self changedValues];
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

      v9 = [changedValues objectForKeyedSubscript:@"entryLikeComments"];
      if (!v9)
      {
        v7 = @"entryComments";
LABEL_9:
        v8 = [changedValues objectForKeyedSubscript:v7];

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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(PLCloudFeedEntry *)self setUuid:uUIDString];
}

+ (id)entryWithURIRepresentation:(id)representation inLibrary:(id)library
{
  representationCopy = representation;
  managedObjectContext = [library managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  v8 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:representationCopy];

  if (v8)
  {
    v9 = [managedObjectContext objectWithID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)allEntriesInManagedObjectContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  v5 = objc_alloc_init(v3);
  v6 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:contextCopy];
  [v5 setEntity:v6];

  [v5 setFetchBatchSize:100];
  v7 = [PLCloudFeedEntry entriesSortDescriptorsAscending:1];
  [v5 setSortDescriptors:v7];
  v12 = 0;
  v8 = [contextCopy executeFetchRequest:v5 error:&v12];

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

+ (id)firstEntryWithType:(signed __int16)type albumGUID:(id)d inLibrary:(id)library
{
  typeCopy = type;
  v22 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695D5E0];
  libraryCopy = library;
  dCopy = d;
  v10 = objc_alloc_init(v7);
  managedObjectContext = [libraryCopy managedObjectContext];

  v12 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:managedObjectContext];
  [v10 setEntity:v12];

  [v10 setFetchLimit:1];
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryType = %d) AND (entryAlbumGUID = %@)", typeCopy, dCopy];

  [v10 setPredicate:dCopy];
  v19 = 0;
  v14 = [managedObjectContext executeFetchRequest:v10 error:&v19];
  v15 = v19;
  if (v14)
  {
    firstObject = [v14 firstObject];
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

    firstObject = 0;
  }

  return firstObject;
}

+ (id)recentAssetsEntriesInLibrary:(id)library limit:(int64_t)limit
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  libraryCopy = library;
  v7 = objc_alloc_init(v5);
  managedObjectContext = [libraryCopy managedObjectContext];

  v9 = [(PLManagedObject *)PLCloudFeedAssetsEntry entityInManagedObjectContext:managedObjectContext];
  [v7 setEntity:v9];

  [v7 setFetchLimit:limit];
  v10 = [PLCloudFeedEntry entriesSortDescriptorsAscending:0];
  [v7 setSortDescriptors:v10];
  v15 = 0;
  v11 = [managedObjectContext executeFetchRequest:v7 error:&v15];
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

+ (id)_recentEntriesInLibrary:(id)library forEntity:(id)entity usingPredicate:(id)predicate earliestDate:(id)date latestDate:(id)latestDate limit:(unint64_t)limit sortDescriptors:(id)descriptors
{
  v55[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  entityCopy = entity;
  predicateCopy = predicate;
  dateCopy = date;
  latestDateCopy = latestDate;
  descriptorsCopy = descriptors;
  v20 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  managedObjectContext = [libraryCopy managedObjectContext];
  [v20 setEntity:entityCopy];
  v46 = libraryCopy;
  v44 = dateCopy;
  v45 = predicateCopy;
  v43 = latestDateCopy;
  if (dateCopy && latestDateCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryDate > %@) AND (entryDate <= %@)", dateCopy, latestDateCopy];
  }

  else if (dateCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryDate > %@)", dateCopy, v40];
  }

  else
  {
    if (!latestDateCopy)
    {
      v22 = 0;
      v24 = predicateCopy != 0;
      v23 = 1;
      goto LABEL_12;
    }

    [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryDate <= %@)", latestDateCopy, v40];
  }
  v22 = ;
  v23 = v22 == 0;
  v24 = predicateCopy != 0;
  if (!predicateCopy && v22)
  {
    v25 = v22;
    v42 = v25;
    goto LABEL_20;
  }

LABEL_12:
  v42 = v22;
  if (v24 && v23)
  {
    v25 = predicateCopy;
    if (!v25)
    {
LABEL_21:
      if (!limit)
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
    v55[1] = predicateCopy;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v25 = [v27 andPredicateWithSubpredicates:v28];

    if (!v25)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v25 = 0;
  if (limit)
  {
LABEL_22:
    [v20 setFetchLimit:limit];
  }

LABEL_23:
  v41 = v25;
  v29 = descriptorsCopy;
  v30 = v29;
  if (!v29)
  {
    v30 = [PLCloudFeedEntry entriesSortDescriptorsAscending:0];
  }

  [v20 setSortDescriptors:v30];
  [v20 setRelationshipKeyPathsForPrefetching:&unk_1F0FC0378];
  v51 = 0;
  v31 = [managedObjectContext executeFetchRequest:v20 error:&v51];
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

        [managedObjectContext refreshObject:*(*(&v47 + 1) + 8 * i) mergeChanges:{objc_msgSend(*(*(&v47 + 1) + 8 * i), "hasChanges")}];
      }

      v36 = [v34 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v36);
  }

  return v34;
}

+ (id)recentEntriesInLibrary:(id)library earliestDate:(id)date latestDate:(id)latestDate limit:(unint64_t)limit filter:(int64_t)filter sortDescriptors:(id)descriptors
{
  v70 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  dateCopy = date;
  filterCopy = filter;
  v16 = dateCopy;
  latestDateCopy = latestDate;
  descriptorsCopy = descriptors;
  managedObjectContext = [libraryCopy managedObjectContext];
  if (limit <= 0x64)
  {
    limitCopy = 100;
  }

  else
  {
    limitCopy = limit;
  }

  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:limitCopy];
  v46 = managedObjectContext;
  v22 = [PLCloudFeedEntry fetchesForFilter:filterCopy inManagedObjectContext:managedObjectContext];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v53 = v22;
  v56 = [v22 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v56)
  {
    v55 = *v65;
    v51 = latestDateCopy;
    v52 = v16;
    limitCopy2 = limit;
    v50 = descriptorsCopy;
    v47 = filterCopy;
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
        predicate = [v24 predicate];
        v26 = v24;
        v27 = predicate;
        entity = [v26 entity];
        v28 = [PLCloudFeedEntry _recentEntriesInLibrary:"_recentEntriesInLibrary:forEntity:usingPredicate:earliestDate:latestDate:limit:sortDescriptors:" forEntity:libraryCopy usingPredicate:descriptorsCopy earliestDate:? latestDate:? limit:? sortDescriptors:?];
        v29 = v28;
        if (v28)
        {
          v57 = v28;
          v30 = [v28 count];
          v29 = v57;
          if (v30)
          {
            if (filterCopy == 4)
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
                    entryAlbumGUID = [v37 entryAlbumGUID];
                    if (entryAlbumGUID)
                    {
                      managedObjectContext2 = [libraryCopy managedObjectContext];
                      v40 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:entryAlbumGUID includeTrashed:1 inManagedObjectContext:managedObjectContext2];

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

              latestDateCopy = v51;
              v16 = v52;
              limit = limitCopy2;
              descriptorsCopy = v50;
              v22 = v53;
              v27 = v54;
              filterCopy = v47;
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
    v41 = descriptorsCopy;
    if (!v41)
    {
      v41 = [PLCloudFeedEntry entriesSortDescriptorsAscending:0];
    }

    [v21 sortUsingDescriptors:v41];
    if (limit && [v21 count] > limit)
    {
      v42 = [v21 subarrayWithRange:{0, limit}];
      v43 = [v42 mutableCopy];

      v22 = v53;
      v21 = v43;
    }
  }

  v44 = [v21 copy];

  return v44;
}

+ (id)fetchesForFilter:(int64_t)filter inManagedObjectContext:(id)context
{
  v27[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if (filter > 2)
  {
    if ((filter - 3) < 2)
    {
      predicateIncludingOnlyCommentsAndLikesFromOthers = [self predicateIncludingOnlyCommentsAndLikesFromOthers];
      v11 = [PLCloudFeedEntryFetch alloc];
      v12 = [(PLManagedObject *)PLCloudFeedCommentsEntry entityInManagedObjectContext:contextCopy];
      v13 = [(PLCloudFeedEntryFetch *)v11 initWithPredicate:predicateIncludingOnlyCommentsAndLikesFromOthers entity:v12];

      predicateIncludingOnlyAssetsAddedByOthers = [self predicateIncludingOnlyAssetsAddedByOthers];
      v15 = [PLCloudFeedEntryFetch alloc];
      v16 = [(PLManagedObject *)PLCloudFeedAssetsEntry entityInManagedObjectContext:contextCopy];
      v17 = [(PLCloudFeedEntryFetch *)v15 initWithPredicate:predicateIncludingOnlyAssetsAddedByOthers entity:v16];

      v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(noindex:(entryType) = %d) OR (noindex:(entryType) = %d)", 5, 6];
      v19 = [PLCloudFeedEntryFetch alloc];
      v20 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:contextCopy];
      v21 = [(PLCloudFeedEntryFetch *)v19 initWithPredicate:v18 entity:v20];

      v27[0] = v13;
      v27[1] = v17;
      v27[2] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
      [v7 addObjectsFromArray:v22];

LABEL_12:
      goto LABEL_13;
    }

    if (filter != 5)
    {
      goto LABEL_14;
    }

    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryType!= %d) AND (entryType!= %d)", 4, 7];
LABEL_11:
    predicateIncludingOnlyCommentsAndLikesFromOthers = v23;
    v24 = [PLCloudFeedEntryFetch alloc];
    v25 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:contextCopy];
    v13 = [(PLCloudFeedEntryFetch *)v24 initWithPredicate:predicateIncludingOnlyCommentsAndLikesFromOthers entity:v25];

    [v7 addObject:v13];
    goto LABEL_12;
  }

  if (filter)
  {
    if (filter != 1)
    {
      if (filter != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_5;
    }

    v23 = [self predicateIncludingOnlyEntryTypes:&unk_1F0FC0360];
    goto LABEL_11;
  }

LABEL_5:
  v8 = [PLCloudFeedEntryFetch alloc];
  v9 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:contextCopy];
  predicateIncludingOnlyCommentsAndLikesFromOthers = [(PLCloudFeedEntryFetch *)v8 initWithPredicate:0 entity:v9];

  [v7 addObject:predicateIncludingOnlyCommentsAndLikesFromOthers];
LABEL_13:

LABEL_14:

  return v7;
}

+ (id)notificationPredicateForFilter:(int64_t)filter
{
  v4 = 0;
  v12[3] = *MEMORY[0x1E69E9840];
  if (filter <= 2)
  {
    if (filter)
    {
      if (filter == 1)
      {
        v5 = [self predicateIncludingOnlyEntryTypes:&unk_1F0FC0318];
        goto LABEL_11;
      }

      if (filter != 2)
      {
        goto LABEL_12;
      }
    }

    v5 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_11:
    v4 = v5;
    goto LABEL_12;
  }

  if ((filter - 3) < 2)
  {
    v6 = MEMORY[0x1E696AB28];
    predicateIncludingOnlyCommentsAndLikesFromOthers = [self predicateIncludingOnlyCommentsAndLikesFromOthers];
    predicateIncludingOnlyAssetsAddedByOthers = [self predicateIncludingOnlyAssetsAddedByOthers];
    v12[1] = predicateIncludingOnlyAssetsAddedByOthers;
    v9 = [self predicateIncludingOnlyEntryTypes:&unk_1F0FC0330];
    v12[2] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    v4 = [v6 orPredicateWithSubpredicates:v10];

    goto LABEL_12;
  }

  if (filter == 5)
  {
    v5 = [self predicateExcludingEntryTypes:&unk_1F0FC0348];
    goto LABEL_11;
  }

LABEL_12:

  return v4;
}

+ (id)predicateExcludingEntryTypes:(id)types
{
  v19 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = typesCopy;
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

        intValue = [*(*(&v14 + 1) + 8 * i) intValue];
        v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"entryType!= %d", intValue];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];

  return v12;
}

+ (id)predicateIncludingOnlyEntryTypes:(id)types noIndex:(BOOL)index
{
  indexCopy = index;
  v22 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = typesCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    if (indexCopy)
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

        intValue = [*(*(&v17 + 1) + 8 * i) intValue];
        v14 = [MEMORY[0x1E696AE18] predicateWithFormat:v11, intValue];
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v6];

  return v15;
}

+ (id)allEntriesInLibrary:(id)library
{
  managedObjectContext = [library managedObjectContext];
  v5 = [self allEntriesInManagedObjectContext:managedObjectContext];

  return v5;
}

+ (id)entriesSortDescriptorsAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"entryPriorityNumber" ascending:ascending];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"entryDate" ascending:ascendingCopy];
  v8[0] = v4;
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v6;
}

@end
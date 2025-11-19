@interface PLGenericAlbum
+ (BOOL)_validateCurrentKeyAssetIDs:(id)a3 fetchedKeyAssetIDs:(id)a4 customKeyAssetID:(id)a5 maxCount:(int64_t)a6;
+ (BOOL)supportsCachedKeyAssetsWithAlbumKind:(int)a3;
+ (PLGenericAlbum)albumWithCloudGUID:(id)a3 inLibrary:(id)a4;
+ (PLGenericAlbum)albumWithKind:(int)a3 inManagedObjectContext:(id)a4;
+ (PLGenericAlbum)albumWithName:(id)a3 inLibrary:(id)a4;
+ (PLGenericAlbum)albumWithObjectID:(id)a3 inLibrary:(id)a4;
+ (PLGenericAlbum)albumWithUUID:(id)a3 inLibrary:(id)a4;
+ (id)_albumsMatchingPredicate:(id)a3 expectedResultCount:(id)a4 inManagedObjectContext:(id)a5;
+ (id)_baseIndexingPredicate;
+ (id)_insertNewAlbumWithKind:(int)a3 title:(id)a4 lastInterestingDate:(id)a5 intoLibrary:(id)a6;
+ (id)_predicateForSupportedAlbumTypes;
+ (id)_singletonFetchingAlbumWithKind:(int)a3 library:(id)a4;
+ (id)_singletonManagedAlbumWithKind:(int)a3 library:(id)a4;
+ (id)_unpushedParentsOfAlbums:(id)a3;
+ (id)albumFromGroupURL:(id)a3 photoLibrary:(id)a4;
+ (id)albumsForStreamID:(id)a3 inLibrary:(id)a4;
+ (id)albumsMatchingPredicate:(id)a3 expectedResultCount:(id)a4 inLibrary:(id)a5;
+ (id)albumsToUploadInitiallyInLibrary:(id)a3 limit:(unint64_t)a4;
+ (id)albumsWithCloudGUIDs:(id)a3 inLibrary:(id)a4;
+ (id)albumsWithKind:(int)a3 inManagedObjectContext:(id)a4;
+ (id)allAlbumsInLibrary:(id)a3;
+ (id)allAlbumsRegisteredWithManagedObjectContext:(id)a3;
+ (id)allSyncedAlbumsInManagedObjectContext:(id)a3;
+ (id)defaultAlbumKindsForFetchingWithCPLEnabled:(BOOL)a3;
+ (id)eventsWithName:(id)a3 andImportSessionIdentifier:(id)a4 inManagedObjectContext:(id)a5;
+ (id)fetchAlbumsForAssetObjectID:(id)a3 libraryIdentifier:(int64_t)a4 managedObjectContext:(id)a5;
+ (id)fetchAlbumsWithUUIDs:(id)a3 propertiesToFetch:(id)a4 managedObjectContext:(id)a5;
+ (id)includeUnpushedParentsForAlbums:(id)a3 limit:(unint64_t)a4;
+ (id)insertAlbumWithKind:(int)a3 title:(id)a4 uuid:(id)a5 inManagedObjectContext:(id)a6;
+ (id)insertNewCloudSharedAlbumWithTitle:(id)a3 lastInterestingDate:(id)a4 intoLibrary:(id)a5;
+ (id)insertNewProjectAlbumWithTitle:(id)a3 documentType:(id)a4 intoLibrary:(id)a5;
+ (id)insertNewSmartAlbumIntoLibrary:(id)a3;
+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)a3;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
+ (id)localizedTitleForAlbumKind:(int)a3 cplEnabled:(BOOL)a4;
+ (id)projectAlbumRootFolderInLibrary:(id)a3;
+ (id)propertiesToFetch;
+ (id)rootFolderInLibrary:(id)a3;
+ (id)sortDescriptorsForAssetsInAlbumWithSortKey:(unsigned int)a3 ascending:(BOOL)a4;
+ (id)uuidFromGroupURL:(id)a3;
+ (void)_removeAlbumsAndFolders:(id)a3 inManagedObjectContext:(id)a4;
+ (void)addSingletonObjectsToContext:(id)a3;
+ (void)removeAllUserAlbumsAndFoldersInLibrary:(id)a3;
+ (void)removeEmptyAlbumsAndFoldersForCloudResetInManagedObjectContext:(id)a3;
+ (void)removeInvalidAlbumsAndFoldersInManagedObjectContext:(id)a3;
+ (void)removeTrashedAlbumsAndFoldersForCloudResetInManagedObjectContext:(id)a3;
+ (void)resetAlbumStateForCloudInLibrary:(id)a3;
+ (void)updateAssetAssociativityInAlbums:(id)a3 photoLibrary:(id)a4;
+ (void)updateKeyAssetsInAlbums:(id)a3 photoLibrary:(id)a4;
- (BOOL)_checkLastModifiedDateIfNeeded;
- (BOOL)_isValidAlbumKindForAssetAssociativity;
- (BOOL)_isValidChangeSourceForUpdate;
- (BOOL)_isValidLibraryRoleForUpdate;
- (BOOL)canMoveToTrash;
- (BOOL)hasDerivedIndexMappers;
- (BOOL)isCandidateForSearchIndexing;
- (BOOL)isEligibleForSearchIndexing;
- (BOOL)isFolder;
- (BOOL)isPendingPhotoStreamAlbum;
- (BOOL)isProjectAlbumSupportingCloudUpload;
- (BOOL)isSmartAlbum;
- (BOOL)isUserCreated;
- (BOOL)supportsAssetAssociativity;
- (BOOL)supportsCloudUpload;
- (NSString)description;
- (NSString)localizedTitle;
- (NSString)name;
- (NSURL)groupURL;
- (PLPhotoLibrary)photoLibrary;
- (id)_compactDebugDescription;
- (id)_kindDescription;
- (id)assetsByObjectIDAtIndexes:(id)a3;
- (id)cplAlbumChangeInPhotoLibrary:(id)a3 orderKeyManager:(id)a4;
- (id)cplFullRecord;
- (id)fetchKeyAssetCandidates:(id *)a3;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
- (id)predicateForKeyAssetsCandidates;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (id)sortDescriptorsForKeyAssetsCandidates;
- (int)kindValue;
- (unint64_t)approximateCount;
- (unint64_t)assetsCount;
- (unint64_t)countForAssetsOfKind:(signed __int16)a3;
- (void)_applyTrashedState:(signed __int16)a3 date:(BOOL)a4 :(id)a5 cascade:(BOOL)a6;
- (void)_processUpdateAlbumAssetAssociativityBasedOnTrashStateWithBlock:(id)a3;
- (void)_repairTitleIfEmpty;
- (void)_updateAlbumAssetAssociativityBasedOnTrashState;
- (void)_validateAndUpdateKeyAssetsIfNeeded;
- (void)applyPropertiesFromAlbumChange:(id)a3;
- (void)applyTrashedState:(signed __int16)a3 cascade:(BOOL)a4;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)batchFetchAssets:(id)a3;
- (void)dealloc;
- (void)delete;
- (void)didSave;
- (void)enumerateDerivedAlbums:(id)a3;
- (void)reducePendingItemsCountBy:(unint64_t)a3;
- (void)registerDerivedAlbum:(id)a3;
- (void)repairUuidAndTitleWithRecoveryReason:(const char *)a3;
- (void)setKindValue:(int)a3;
- (void)setUserQueryData:(id)a3;
- (void)unregisterAllDerivedAlbums;
- (void)unregisterForChanges;
- (void)updateAlbumFolderRelation:(id)a3 orderKeyManager:(id)a4 inLibrary:(id)a5;
- (void)updateKeyAssetsIfNeeded;
- (void)willSave;
- (void)willTurnIntoFault;
@end

@implementation PLGenericAlbum

- (BOOL)isCandidateForSearchIndexing
{
  v3 = [objc_opt_class() _baseIndexingPredicate];
  LOBYTE(self) = [v3 evaluateWithObject:self];

  return self;
}

- (BOOL)isEligibleForSearchIndexing
{
  if (([(PLGenericAlbum *)self isDeleted]& 1) != 0)
  {
    return 0;
  }

  v4 = objc_opt_class();
  v5 = [(PLGenericAlbum *)self photoLibrary];
  v6 = [v4 isEligibleForSearchIndexingPredicateForLibraryIdentifier:{+[PLSpotlightDonationUtilities wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:](PLSpotlightDonationUtilities, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", v5)}];
  v7 = [v6 evaluateWithObject:self];

  return v7;
}

+ (id)fetchAlbumsForAssetObjectID:(id)a3 libraryIdentifier:(int64_t)a4 managedObjectContext:(id)a5
{
  v40[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E695D5E0];
  v11 = +[PLManagedAlbum entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  v13 = MEMORY[0x1E696AB28];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K", v8, @"assets"];
  v40[0] = v14;
  v15 = [a1 isEligibleForSearchIndexingPredicateForLibraryIdentifier:a4];
  v40[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v17 = [v13 andPredicateWithSubpredicates:v16];
  [v12 setPredicate:v17];

  v32 = v8;
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K", v8, @"assets"];
  [v12 setPredicate:v18];

  v39[0] = @"uuid";
  v39[1] = @"cachedCount";
  v39[2] = @"trashedState";
  v39[3] = @"kind";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  [v12 setPropertiesToFetch:v19];

  v37 = 0;
  v20 = [v9 executeFetchRequest:v12 error:&v37];
  v21 = v37;
  if (v20)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v20;
    v24 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v33 + 1) + 8 * i);
          if ([v28 isEligibleForSearchIndexing])
          {
            [v22 addObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v25);
    }

    v29 = [v22 copy];
    v30 = [MEMORY[0x1E69BF2D0] successWithResult:v29];
  }

  else
  {
    v30 = [MEMORY[0x1E69BF2D0] failureWithError:v21];
  }

  return v30;
}

+ (id)propertiesToFetch
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"uuid";
  v4[1] = @"title";
  v4[2] = @"startDate";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)a3
{
  pl_dispatch_once();
  v3 = isEligibleForSearchIndexingPredicateForLibraryIdentifier__predicate;

  return v3;
}

void __91__PLGenericAlbum_SearchIndexing__isEligibleForSearchIndexingPredicateForLibraryIdentifier___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AB28];
  v2 = [*(a1 + 32) _baseIndexingPredicate];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"trashedState == %d", 0, v2];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v1 andPredicateWithSubpredicates:v4];
  v6 = isEligibleForSearchIndexingPredicateForLibraryIdentifier__predicate;
  isEligibleForSearchIndexingPredicateForLibraryIdentifier__predicate = v5;
}

+ (id)_baseIndexingPredicate
{
  pl_dispatch_once();
  v2 = _baseIndexingPredicate_predicate;

  return v2;
}

void __56__PLGenericAlbum_SearchIndexing___baseIndexingPredicate__block_invoke()
{
  v0 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind == %d OR kind == %d OR kind == %d)", 2, 1550, 1505];
  v1 = _baseIndexingPredicate_predicate;
  _baseIndexingPredicate_predicate = v0;
}

+ (void)addSingletonObjectsToContext:(id)a3
{
  v5 = a3;
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    v83 = [MEMORY[0x1E696AAA8] currentHandler];
    v84 = NSStringFromSelector(a2);
    [v83 handleFailureInMethod:a2 object:a1 file:@"PLGenericAlbum.m" lineNumber:2497 description:{@"%@ can only be called from assetsd", v84}];
  }

  v6 = [PLGenericAlbum albumWithKind:3999 inManagedObjectContext:v5];

  if (!v6)
  {
    v7 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:v5];
    [v7 setKindValue:3999];
  }

  v8 = [PLGenericAlbum albumWithKind:3998 inManagedObjectContext:v5];

  if (!v8)
  {
    v9 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:v5];
    [v9 setKindValue:3998];
  }

  v10 = [PLGenericAlbum albumWithKind:1600 inManagedObjectContext:v5];

  if (!v10)
  {
    v11 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v11 setKindValue:1600];
  }

  v12 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1605 inManagedObjectContext:v5];

  if (!v12)
  {
    v13 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v13 setKindValue:1605];
  }

  v14 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1607 inManagedObjectContext:v5];

  if (!v14)
  {
    v15 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v15 setKindValue:1607];
  }

  v16 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1608 inManagedObjectContext:v5];

  if (!v16)
  {
    v17 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v17 setKindValue:1608];
  }

  v18 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1606 inManagedObjectContext:v5];

  if (!v18)
  {
    v19 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v19 setKindValue:1606];
  }

  v20 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1609 inManagedObjectContext:v5];

  if (!v20)
  {
    v21 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v21 setKindValue:1609];
  }

  v22 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1615 inManagedObjectContext:v5];

  if (!v22)
  {
    v23 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v23 setKindValue:1615];
  }

  v24 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1610 inManagedObjectContext:v5];

  if (!v24)
  {
    v25 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v25 setKindValue:1610];
  }

  v26 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1617 inManagedObjectContext:v5];

  if (!v26)
  {
    v27 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v27 setKindValue:1617];
  }

  v28 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1618 inManagedObjectContext:v5];

  if (!v28)
  {
    v29 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v29 setKindValue:1618];
  }

  v30 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1616 inManagedObjectContext:v5];

  if (!v30)
  {
    v31 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v31 setKindValue:1616];
  }

  v32 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1613 inManagedObjectContext:v5];

  if (!v32)
  {
    v33 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v33 setKindValue:1613];
  }

  v34 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:4004 inManagedObjectContext:v5];

  if (!v34)
  {
    v35 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:v5];
    [v35 setKindValue:4004];
  }

  v36 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:4005 inManagedObjectContext:v5];

  if (!v36)
  {
    v37 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:v5];
    [v37 setKindValue:4005];
  }

  v38 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:4006 inManagedObjectContext:v5];

  if (!v38)
  {
    v39 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:v5];
    [v39 setKindValue:4006];
  }

  v40 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1620 inManagedObjectContext:v5];

  if (!v40)
  {
    v41 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v41 setKindValue:1620];
  }

  v42 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1621 inManagedObjectContext:v5];

  if (!v42)
  {
    v43 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v43 setKindValue:1621];
  }

  v44 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1614 inManagedObjectContext:v5];

  if (!v44)
  {
    v45 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v45 setKindValue:1614];
  }

  v46 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1611 inManagedObjectContext:v5];

  if (!v46)
  {
    v47 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v47 setKindValue:1611];
  }

  v48 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:4001 inManagedObjectContext:v5];

  if (!v48)
  {
    v49 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:v5];
    [v49 setKindValue:4001];
  }

  v50 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:4003 inManagedObjectContext:v5];

  if (!v50)
  {
    v51 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:v5];
    [v51 setKindValue:4003];
  }

  v52 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:4002 inManagedObjectContext:v5];

  if (!v52)
  {
    v53 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:v5];
    [v53 setKindValue:4002];
  }

  v54 = [PLGenericAlbum albumWithKind:1602 inManagedObjectContext:v5];

  if (!v54)
  {
    v55 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v55 setKindValue:1602];
  }

  v56 = [PLGenericAlbum albumWithKind:1552 inManagedObjectContext:v5];

  if (!v56)
  {
    v57 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v57 setKindValue:1552];
  }

  v58 = [PLGenericAlbum albumWithKind:1612 inManagedObjectContext:v5];

  if (!v58)
  {
    v59 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v59 setKindValue:1612];
  }

  v60 = [PLGenericAlbum albumWithKind:3571 inManagedObjectContext:v5];

  if (!v60)
  {
    v61 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:v5];
    [v61 setKindValue:3571];
    v62 = [v61 _kindDescription];
    [v61 setTitle:v62];
  }

  v63 = [PLGenericAlbum albumWithKind:3572 inManagedObjectContext:v5];

  if (!v63)
  {
    v64 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:v5];
    [v64 setKindValue:3572];
    v65 = [v64 _kindDescription];
    [v64 setTitle:v65];
  }

  v66 = [PLGenericAlbum albumWithKind:3573 inManagedObjectContext:v5];

  if (!v66)
  {
    v67 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:v5];
    [v67 setKindValue:3573];
    v68 = [v67 _kindDescription];
    [v67 setTitle:v68];
  }

  v69 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1619 inManagedObjectContext:v5];

  if (!v69)
  {
    v70 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v70 setKindValue:1619];
  }

  v71 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1622 inManagedObjectContext:v5];

  if (!v71)
  {
    v72 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v72 setKindValue:1622];
  }

  v73 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1623 inManagedObjectContext:v5];

  if (!v73)
  {
    v74 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v74 setKindValue:1623];
  }

  v75 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1634 inManagedObjectContext:v5];

  if (!v75)
  {
    v76 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v76 setKindValue:1634];
  }

  v77 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1624 inManagedObjectContext:v5];

  if (!v77)
  {
    v78 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v78 setKindValue:1624];
  }

  v79 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1636 inManagedObjectContext:v5];

  if (!v79)
  {
    v80 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v5];
    [v80 setKindValue:1636];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PLGenericAlbum_addSingletonObjectsToContext___block_invoke;
  aBlock[3] = &unk_1E756B898;
  v81 = v5;
  v86 = v81;
  v82 = _Block_copy(aBlock);
  v82[2](v82, 1625);
  v82[2](v82, 1626);
  v82[2](v82, 1627);
  v82[2](v82, 1630);
  v82[2](v82, 1631);
  v82[2](v82, 1639);
  v82[2](v82, 1637);
  v82[2](v82, 1632);
  v82[2](v82, 1642);
  v82[2](v82, 1640);
  v82[2](v82, 1628);
  v82[2](v82, 1641);
}

void __47__PLGenericAlbum_addSingletonObjectsToContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:a2 inManagedObjectContext:*(a1 + 32)];

  if (!v4)
  {
    v5 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:*(a1 + 32)];
    [v5 setKindValue:a2];
  }
}

- (BOOL)hasDerivedIndexMappers
{
  WeakRetained = objc_loadWeakRetained(self->_derivedAlbums);

  if (WeakRetained)
  {
    return 1;
  }

  v5 = &self->_derivedAlbums[1];
  v6 = -1;
  while (v6 != 3)
  {
    v7 = objc_loadWeakRetained(v5);

    ++v6;
    ++v5;
    if (v7)
    {
      return v6 < 4;
    }
  }

  v6 = 4;
  return v6 < 4;
}

- (void)enumerateDerivedAlbums:(id)a3
{
  derivedAlbums = self->_derivedAlbums;
  v6 = a3;
  v4 = 5;
  do
  {
    WeakRetained = objc_loadWeakRetained(derivedAlbums);
    if (WeakRetained)
    {
      v6[2](v6, WeakRetained);
    }

    ++derivedAlbums;
    --v4;
  }

  while (v4);
}

- (void)unregisterAllDerivedAlbums
{
  derivedAlbums = self->_derivedAlbums;
  v3 = 5;
  do
  {
    objc_storeWeak(derivedAlbums++, 0);
    --v3;
  }

  while (v3);
}

- (void)registerDerivedAlbum:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  derivedAlbums = self->_derivedAlbums;
  v7 = 5;
  do
  {
    WeakRetained = objc_loadWeakRetained(derivedAlbums);

    if (!WeakRetained)
    {
      objc_storeWeak(derivedAlbums, v4);
      goto LABEL_8;
    }

    ++derivedAlbums;
    --v7;
  }

  while (v7);
  v9 = PLBackendGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = 5;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "More than maximum %ld filtered albums trying to register. This will fail.", &v10, 0xCu);
  }

LABEL_8:
  objc_autoreleasePoolPop(v5);
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = PLGenericAlbum;
  v3 = [(PLGenericAlbum *)&v8 description];
  v4 = [(PLGenericAlbum *)self kind];
  v5 = [(PLGenericAlbum *)self title];
  v6 = [v3 stringByAppendingFormat:@" kind = %@; title = %@", v4, v5];;

  return v6;
}

- (id)_compactDebugDescription
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(PLGenericAlbum *)self objectID];
  v5 = [v4 URIRepresentation];
  v6 = [v5 path];
  v7 = [v6 pathComponents];

  if ([v7 count] >= 2)
  {
    v8 = [v7 subarrayWithRange:{objc_msgSend(v7, "count") - 2, 2}];

    v7 = v8;
  }

  v9 = [MEMORY[0x1E696AEC0] pathWithComponents:v7];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(PLGenericAlbum *)self uuid];
  v12 = [(PLGenericAlbum *)self _kindDescription];
  v13 = [(PLGenericAlbum *)self title];
  v14 = [v10 stringWithFormat:@"%@ [%@] (%@ %@)", v11, v9, v12, v13];

  objc_autoreleasePoolPop(v3);

  return v14;
}

- (id)_kindDescription
{
  v3 = [(PLGenericAlbum *)self kindValue];
  if (v3 <= 1507)
  {
    if (v3 <= 999)
    {
      if (v3 > 14)
      {
        if (v3 == 15)
        {
          v4 = @"Faces";
          goto LABEL_47;
        }

        if (v3 == 16)
        {
          v4 = @"Places";
          goto LABEL_47;
        }
      }

      else
      {
        if (v3 == 2)
        {
          v4 = @"Regular";
          goto LABEL_47;
        }

        if (v3 == 12)
        {
          v4 = @"Event";
          goto LABEL_47;
        }
      }
    }

    else if (v3 <= 1501)
    {
      if (v3 == 1000)
      {
        v4 = @"Saved";
        goto LABEL_47;
      }

      if (v3 == 1500)
      {
        v4 = @"PhotoStream";
        goto LABEL_47;
      }
    }

    else
    {
      switch(v3)
      {
        case 1502:
          v4 = @"PictureFrame";
          goto LABEL_47;
        case 1505:
          v4 = @"Cloud Shared Album";
          goto LABEL_47;
        case 1507:
          v4 = @"UserSmartAlbum";
          goto LABEL_47;
      }
    }
  }

  else if (v3 > 1601)
  {
    if (v3 <= 3570)
    {
      if (v3 == 1602)
      {
        v4 = @"AllPhotoStream";
        goto LABEL_47;
      }

      if (v3 == 1612)
      {
        v4 = @"Trash Bin";
        goto LABEL_47;
      }
    }

    else
    {
      switch(v3)
      {
        case 3571:
          v4 = @"progress-sync";
          goto LABEL_47;
        case 3572:
          v4 = @"progress-ota-restore";
          goto LABEL_47;
        case 3573:
          v4 = @"progress-fs-import";
          goto LABEL_47;
      }
    }
  }

  else if (v3 <= 1550)
  {
    if (v3 == 1508)
    {
      v4 = @"Project";
      goto LABEL_47;
    }

    if (v3 == 1550)
    {
      v4 = @"1WaySyncAlbum";
      goto LABEL_47;
    }
  }

  else
  {
    switch(v3)
    {
      case 1551:
        v4 = @"1WaySyncEvent";
        goto LABEL_47;
      case 1552:
        v4 = @"1WaySyncLibraryAlbum";
        goto LABEL_47;
      case 1600:
        v4 = @"AllAssetsAlbum";
        goto LABEL_47;
    }
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Unknown %d>", -[PLGenericAlbum kindValue](self, "kindValue")];
LABEL_47:

  return v4;
}

- (void)updateAlbumFolderRelation:(id)a3 orderKeyManager:(id)a4 inLibrary:(id)a5
{
  v122 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    v95 = [MEMORY[0x1E696AAA8] currentHandler];
    [v95 handleFailureInMethod:a2 object:self file:@"PLGenericAlbum.m" lineNumber:2256 description:@"Only called from assetsd / unit test"];
  }

  v12 = [v9 parentIdentifier];
  v13 = [(PLGenericAlbum *)self isProjectAlbum];
  if (v12)
  {
    v14 = [PLGenericAlbum albumWithCloudGUID:v12 inLibrary:v11];
  }

  else
  {
    if (v13)
    {
      [(PLGenericAlbum *)PLManagedFolder projectAlbumRootFolderInLibrary:v11];
    }

    else
    {
      [(PLGenericAlbum *)PLManagedFolder rootFolderInLibrary:v11];
    }
    v14 = ;
  }

  v15 = v14;
  if (v14 && ([v14 isDeleted] & 1) == 0)
  {
    v108 = v10;
    v16 = [v15 entity];
    v17 = MEMORY[0x1E695D5B8];
    v18 = +[PLManagedFolder entityName];
    v19 = [v11 managedObjectContext];
    v20 = [v17 entityForName:v18 inManagedObjectContext:v19];
    v21 = [v16 isKindOfEntity:v20];

    if ((v21 & 1) == 0)
    {
      v56 = MEMORY[0x19EAEE230]();
      v57 = PLBackendGetLog();
      v40 = v57;
      if (v56)
      {
        if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
        {
          v58 = [(PLGenericAlbum *)self _compactDebugDescription];
          v59 = [(PLGenericAlbum *)self cloudGUID];
          v60 = [v9 description];
          *buf = 138544130;
          v113 = v12;
          v114 = 2112;
          v115 = v58;
          v116 = 2114;
          v117 = v59;
          v118 = 2112;
          v119 = v60;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_FAULT, "<rdar://problem/28377493> Unexpected non-folder parentIdentifier %{public}@ found in album %@ [%{public}@] change %@", buf, 0x2Au);
        }

        v10 = v108;
        if (objc_opt_respondsToSelector())
        {
          [v15 _compactDebugDescription];
        }

        else
        {
          [v15 description];
        }
        v40 = ;
        v70 = MEMORY[0x1E696AEC0];
        v71 = [(PLGenericAlbum *)self _compactDebugDescription];
        v72 = [v9 description];
        v73 = [v70 stringWithFormat:@"Unexpected non-folder parent %@ referenced for album %@ with change record %@. See rdar://28377493.", v40, v71, v72];

        [PLDiagnostics fileRadarUserNotificationWithHeader:@"Photos Data Syncing Issue Detected!" message:@"Please file a Radar for non-folder parent album." radarTitle:@"TTR Photos Framework: non-folder parent album" radarDescription:v73];
      }

      else
      {
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v61 = [(PLGenericAlbum *)self cloudGUID];
          v62 = [(PLGenericAlbum *)self _compactDebugDescription];
          v63 = [v9 description];
          *buf = 138544130;
          v113 = v12;
          v114 = 2112;
          v115 = v61;
          v116 = 2114;
          v117 = v62;
          v118 = 2112;
          v119 = v63;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Unexpected non-folder parentIdentifier %{public}@ found in album %@ [%{public}@] change %@", buf, 0x2Au);
        }

        v10 = v108;
      }

      goto LABEL_77;
    }

    v22 = [(PLGenericAlbum *)self parentFolder];
    v106 = [v22 isEqual:v15];

    [(PLGenericAlbum *)self objectID];
    v24 = v23 = v9;
    v25 = [v15 objectID];
    v26 = [v15 childCollections];
    v27 = [v26 indexOfObject:self];
    v105 = v23;
    v28 = [v23 position];
    if (!v28)
    {
      v104 = v24;
      v64 = v25;
      v10 = v108;
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v65 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          [(PLGenericAlbum *)self uuid];
          v66 = v100 = v27;
          v67 = [v15 uuid];
          *buf = 138412546;
          v113 = v66;
          v114 = 2112;
          v115 = v67;
          _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_ERROR, "Ignoring unsupported order value (0), appending %@ to the end of %@", buf, 0x16u);

          v10 = v108;
          v27 = v100;
        }
      }

      v68 = [v26 count];
      if (v106)
      {
        v107 = v25;
        v69 = 0;
        v40 = v104;
LABEL_72:
        v85 = [MEMORY[0x1E696AC90] indexSetWithIndex:v27];
        [v15 moveChildCollectionsAtIndexes:v85 toIndex:v68];

LABEL_75:
        v64 = v107;
        goto LABEL_76;
      }

      [v15 insertObject:self inChildCollectionsAtIndex:v68];
      v69 = 0;
      v40 = v104;
LABEL_76:

      v9 = v105;
LABEL_77:

      goto LABEL_78;
    }

    v29 = v28;
    v99 = v27;
    v111 = 0;
    v30 = [v11 managedObjectContext];
    v10 = v108;
    v101 = v29;
    v107 = v25;
    v31 = [v108 findIndexForAlbumWithID:v24 newOrderValue:v29 inFolderWithID:v25 hasOrderValueConflictWithAlbumID:&v111 inContext:v30];
    v103 = v111;

    v32 = [v26 count];
    v33 = v31;
    v102 = v31;
    if (v31 > v32)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v34 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [MEMORY[0x1E696AD98] numberWithLongLong:v101];
          v36 = [v26 count];
          *buf = 138413314;
          v113 = v35;
          v114 = 2112;
          v115 = v24;
          v116 = 2112;
          v117 = v107;
          v118 = 2048;
          v119 = v102;
          v120 = 2048;
          v121 = v36;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Child collection index based on order value is too large for childCollections: order value %@ for %@ on %@ target index = %ld, count = %ld", buf, 0x34u);
        }
      }

      v33 = [v26 count];
    }

    v37 = v26;
    if (v103)
    {
      v97 = v33;
      v38 = [(PLGenericAlbum *)self managedObjectContext];
      v39 = [v38 existingObjectWithID:v103 error:0];

      v98 = v39;
      if (v39)
      {
        v26 = v37;
        v40 = v24;
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v41 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [MEMORY[0x1E696AD98] numberWithLongLong:v101];
            *buf = 138413058;
            v113 = v42;
            v114 = 2112;
            v115 = v24;
            v116 = 2112;
            v117 = v107;
            v118 = 2112;
            v119 = v103;
            _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "Folder album order value %@ for %@ on %@ conflicts with %@, adjusting", buf, 0x2Au);
          }
        }

        v43 = [v98 title];
        v44 = [(PLGenericAlbum *)self title];
        v45 = [v43 compare:v44];

        if (!v45)
        {
          v46 = [v98 cloudGUID];
          v47 = [(PLGenericAlbum *)self cloudGUID];
          v45 = [v46 compare:v47];
        }

        v109 = 0;
        v110 = 0;
        v48 = +[PLManagedFolder childKeyForOrdering];
        v49 = [v11 managedObjectContext];
        [v108 getConflictResolutionOrderValuesForRelationship:v48 onObjectWithID:v107 atIndex:v102 intoLower:&v110 higher:&v109 inContext:v49];

        if (v45 == -1)
        {
          v74 = v110;
          if (v110)
          {
            v75 = [v98 objectID];
            v76 = [v11 managedObjectContext];
            [v108 stashFolderAlbumsLocationValue:v74 forAlbumWithID:v75 inFolderWithID:v107 atIndex:v102 usingContext:v76];

            v50 = v101;
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v77 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                [MEMORY[0x1E696AD98] numberWithLongLong:v101];
                v78 = log = v77;
                v79 = [MEMORY[0x1E696AD98] numberWithLongLong:v110];
                v80 = [v98 objectID];
                *buf = 138412802;
                v113 = v78;
                v114 = 2112;
                v115 = v79;
                v116 = 2112;
                v117 = v80;
                v81 = "Conflicting existing album folder order value (ascending) updated from %@ to %@ for %@";
LABEL_64:
                _os_log_impl(&dword_19BF1F000, log, OS_LOG_TYPE_DEFAULT, v81, buf, 0x20u);

                v50 = v101;
                v77 = log;
              }

LABEL_65:
            }

LABEL_66:
            ++v102;
            v55 = 1;
LABEL_67:
            v10 = v108;
            goto LABEL_68;
          }

          v50 = v109;
          if (v109)
          {
            if (*MEMORY[0x1E6994D48])
            {
              goto LABEL_35;
            }

            v51 = __CPLAssetsdOSLogDomain();
            if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_34;
            }

            v52 = [MEMORY[0x1E696AD98] numberWithLongLong:v101];
            v53 = [MEMORY[0x1E696AD98] numberWithLongLong:v109];
            *buf = 138412802;
            v113 = v52;
            v114 = 2112;
            v115 = v53;
            v116 = 2112;
            v117 = v24;
            v54 = "Conflicting incoming album folder order value (ascending) updated from %@ to %@ for %@";
            goto LABEL_33;
          }

          v50 = v101;
          if (v106)
          {
            v10 = v108;
            v91 = v99;
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v92 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
              {
                v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v102];
                *buf = 138412802;
                v113 = v24;
                v114 = 2112;
                v115 = v93;
                v116 = 2112;
                v117 = v107;
                _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_DEFAULT, "Conflicting album folder order value (ascending) could not be stashed, moving %@ to %@ for %@", buf, 0x20u);

                v91 = v99;
              }
            }

            v94 = [MEMORY[0x1E696AC90] indexSetWithIndex:v91];
            [v15 moveChildCollectionsAtIndexes:v94 toIndex:v97];

            goto LABEL_98;
          }
        }

        else
        {
          v50 = v109;
          if (v109)
          {
            if (*MEMORY[0x1E6994D48])
            {
LABEL_35:
              v10 = v108;
              ++v102;
              v55 = 1;
LABEL_68:

              v33 = v97;
              goto LABEL_69;
            }

            v51 = __CPLAssetsdOSLogDomain();
            if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
LABEL_34:

              v50 = v109;
              goto LABEL_35;
            }

            v52 = [MEMORY[0x1E696AD98] numberWithLongLong:v101];
            v53 = [MEMORY[0x1E696AD98] numberWithLongLong:v109];
            *buf = 138412802;
            v113 = v52;
            v114 = 2112;
            v115 = v53;
            v116 = 2112;
            v117 = v24;
            v54 = "Conflicting incoming album folder order value (descending) updated from %@ to %@ for %@";
LABEL_33:
            _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, v54, buf, 0x20u);

            goto LABEL_34;
          }

          v82 = v110;
          if (v110)
          {
            v83 = [v98 objectID];
            v84 = [v11 managedObjectContext];
            [v108 stashFolderAlbumsLocationValue:v82 forAlbumWithID:v83 inFolderWithID:v107 atIndex:v102 usingContext:v84];

            v50 = v101;
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v77 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                [MEMORY[0x1E696AD98] numberWithLongLong:v101];
                v78 = log = v77;
                v79 = [MEMORY[0x1E696AD98] numberWithLongLong:v110];
                v80 = [v98 objectID];
                *buf = 138412802;
                v113 = v78;
                v114 = 2112;
                v115 = v79;
                v116 = 2112;
                v117 = v80;
                v81 = "Conflicting existing album folder order value (descending) updated from %@ to %@ for %@";
                goto LABEL_64;
              }

              goto LABEL_65;
            }

            goto LABEL_66;
          }

          v50 = v101;
          if (v106)
          {
            v10 = v108;
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v87 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
              {
                v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v102 + 1];
                *buf = 138412802;
                v113 = v24;
                v114 = 2112;
                v115 = v88;
                v116 = 2112;
                v117 = v107;
                _os_log_impl(&dword_19BF1F000, v87, OS_LOG_TYPE_DEFAULT, "Conflicting album folder order value (descending) could not be stashed, moving %@ to %@ for %@", buf, 0x20u);
              }
            }

            if (v97 >= [v26 count])
            {
              v89 = v97;
            }

            else
            {
              v89 = v97 + 1;
            }

            v90 = [MEMORY[0x1E696AC90] indexSetWithIndex:v99];
            [v15 moveChildCollectionsAtIndexes:v90 toIndex:v89];

LABEL_98:
            v55 = 0;
            v50 = v101;
            goto LABEL_68;
          }
        }

        v55 = 0;
        goto LABEL_67;
      }

      v55 = 1;
      v26 = v37;
      v40 = v24;
      v33 = v97;
    }

    else
    {
      v55 = 1;
      v40 = v24;
    }

    v50 = v101;
LABEL_69:
    if (v106)
    {
      v69 = v103;
      if ((v55 & 1) == 0)
      {
        v68 = v33;
        v27 = v99;
        goto LABEL_72;
      }
    }

    else
    {
      [v15 insertObject:self inChildCollectionsAtIndex:v33];
      v69 = v103;
      if (!v55)
      {
        goto LABEL_75;
      }
    }

    v86 = [v11 managedObjectContext];
    v64 = v107;
    [v10 stashFolderAlbumsLocationValue:v50 forAlbumWithID:v40 inFolderWithID:v107 atIndex:v102 usingContext:v86];

    goto LABEL_76;
  }

LABEL_78:
}

- (unint64_t)countForAssetsOfKind:(signed __int16)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(PLGenericAlbum *)self managedObjectContext];
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = MEMORY[0x1E696AE18];
  v10 = [(PLGenericAlbum *)self objectID];
  v11 = [v9 predicateWithFormat:@"kind = %d AND albums CONTAINS %@", v3, v10];
  [v8 setPredicate:v11];

  v16 = 0;
  v12 = [v5 countForFetchRequest:v8 error:&v16];
  v13 = v16;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v18 = v3;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "_countForAssetsOfKind:%d fetch request failed: %@", buf, 0x12u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)unregisterForChanges
{
  if ([(PLGenericAlbum *)self isRegisteredForChanges])
  {

    [(PLGenericAlbum *)self setIsRegisteredForChanges:0];
  }
}

- (void)reducePendingItemsCountBy:(unint64_t)a3
{
  v5 = [(PLGenericAlbum *)self pendingItemsCount];
  if (v5 <= a3)
  {
    [(PLGenericAlbum *)self setPendingItemsType:1];
  }

  if (v5 >= a3)
  {
    v6 = v5 - a3;
  }

  else
  {
    v6 = 0;
  }

  [(PLGenericAlbum *)self setPendingItemsCount:v6];
}

- (void)_processUpdateAlbumAssetAssociativityBasedOnTrashStateWithBlock:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E696AE18];
  v9 = [(PLGenericAlbum *)self objectID];
  v10 = [v8 predicateWithFormat:@"%K CONTAINS %@", @"albums", v9];
  [v7 setPredicate:v10];

  v11 = [(PLGenericAlbum *)self photoLibrary];
  v12 = [v11 managedObjectContext];

  v13 = [PLEnumerateAndSaveController alloc];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __82__PLGenericAlbum__processUpdateAlbumAssetAssociativityBasedOnTrashStateWithBlock___block_invoke;
  v28[3] = &unk_1E7575B30;
  v14 = v12;
  v29 = v14;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __82__PLGenericAlbum__processUpdateAlbumAssetAssociativityBasedOnTrashStateWithBlock___block_invoke_2;
  v26[3] = &unk_1E7568800;
  v15 = v4;
  v27 = v15;
  v16 = [(PLEnumerateAndSaveController *)v13 initWithName:@"trashed state album associativity update (untrashed)" fetchRequest:v7 context:v14 options:4 generateContextBlock:v28 didFetchObjectIDsBlock:0 processResultBlock:v26];
  v25 = 0;
  v17 = [(PLEnumerateAndSaveController *)v16 processObjectsWithError:&v25];
  v18 = v25;
  v19 = PLBackendGetLog();
  v20 = v19;
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v21 = "Updated asset album associativity for trash change";
      v22 = v20;
      v23 = OS_LOG_TYPE_DEBUG;
      v24 = 2;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v22, v23, v21, buf, v24);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v31 = v18;
    v21 = "Failed to perform asset album associativity on trash change. Error: %@";
    v22 = v20;
    v23 = OS_LOG_TYPE_ERROR;
    v24 = 12;
    goto LABEL_6;
  }
}

- (void)_updateAlbumAssetAssociativityBasedOnTrashState
{
  if ([(PLGenericAlbum *)self _isValidAlbumKindForAssetAssociativity])
  {
    v3 = [(PLGenericAlbum *)self trashedState];
    if (v3 == 1)
    {
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __65__PLGenericAlbum__updateAlbumAssetAssociativityBasedOnTrashState__block_invoke_2;
      v9 = &unk_1E756C850;
      v10 = self;
      v5 = &v6;
    }

    else
    {
      if (v3)
      {
        return;
      }

      v4 = [(PLGenericAlbum *)self supportsAssetAssociativity];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __65__PLGenericAlbum__updateAlbumAssetAssociativityBasedOnTrashState__block_invoke;
      v14 = &__block_descriptor_34_e24_v16__0__PLManagedAsset_8l;
      LOWORD(v15) = v4;
      v5 = &v11;
    }

    [(PLGenericAlbum *)self _processUpdateAlbumAssetAssociativityBasedOnTrashStateWithBlock:v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15];
  }
}

void __65__PLGenericAlbum__updateAlbumAssetAssociativityBasedOnTrashState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 albumAssociativity] != *(a1 + 32))
  {
    [v3 setAlbumAssociativity:?];
  }
}

void __65__PLGenericAlbum__updateAlbumAssetAssociativityBasedOnTrashState__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 albums];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqual:*(a1 + 32)] & 1) == 0 && (objc_msgSend(v9, "supportsAssetAssociativity"))
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  if ([v3 albumAssociativity] != v10)
  {
    [v3 setAlbumAssociativity:v10];
  }
}

- (BOOL)_isValidAlbumKindForAssetAssociativity
{
  v2 = [(PLGenericAlbum *)self kind];
  v3 = [v2 integerValue] == 2;

  return v3;
}

- (BOOL)supportsAssetAssociativity
{
  v3 = [(PLGenericAlbum *)self _isValidAlbumKindForAssetAssociativity];
  if (v3)
  {
    LOBYTE(v3) = [(PLGenericAlbum *)self trashedState]== 0;
  }

  return v3;
}

- (void)batchFetchAssets:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(PLGenericAlbum *)self managedObjectContext];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if ([v12 isFault])
        {
          v13 = [v12 objectID];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    v14 = MEMORY[0x1E695D5E0];
    v15 = +[PLManagedAsset entityName];
    v16 = [v14 fetchRequestWithEntityName:v15];

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v5];
    [v16 setPredicate:v17];

    [v16 setReturnsObjectsAsFaults:0];
    v21 = 0;
    v18 = [v6 executeFetchRequest:v16 error:&v21];
    v19 = v21;
    v20 = v19;
    if (!v18)
    {
      NSLog(&cfstr_FailedToPrefet.isa, v19);
    }
  }
}

- (id)assetsByObjectIDAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PLGenericAlbum *)self assets];
  if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v7 = [(PLGenericAlbum *)self managedObjectContext];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__PLGenericAlbum_assetsByObjectIDAtIndexes___block_invoke;
    v13[3] = &unk_1E75687B8;
    v14 = v5;
    v15 = v7;
    v8 = v6;
    v16 = v8;
    v9 = v7;
    [v4 enumerateIndexesUsingBlock:v13];
    v10 = v16;
    v11 = v8;
  }

  else
  {
    v11 = [v5 objectsAtIndexes:v4];
  }

  return v11;
}

void __44__PLGenericAlbum_assetsByObjectIDAtIndexes___block_invoke(id *a1, uint64_t a2)
{
  v3 = [a1[4] managedObjectIDAtIndex:a2];
  if (v3)
  {
    v5 = v3;
    v4 = [a1[5] objectWithID:v3];
    [a1[6] addObject:v4];

    v3 = v5;
  }
}

- (NSURL)groupURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLGenericAlbum *)self uuid];
  v5 = [v3 stringWithFormat:@"%@://%@/?%@=%@", @"assets-library", @"group", @"id", v4];
  v6 = [v2 URLWithString:v5];

  return v6;
}

- (BOOL)isFolder
{
  v2 = [(PLGenericAlbum *)self kindValue];

  return [PLGenericAlbum isFolder:v2];
}

- (BOOL)isPendingPhotoStreamAlbum
{
  if ([(PLGenericAlbum *)self kindValue]!= 1505)
  {
    return 0;
  }

  v3 = [(PLGenericAlbum *)self cloudRelationshipState];
  v4 = [v3 integerValue];

  return v4 == 1;
}

- (BOOL)isUserCreated
{
  v2 = [(PLGenericAlbum *)self kindValue];
  v3 = objc_opt_class();

  return [v3 isUserCreatedForKind:v2];
}

- (BOOL)isSmartAlbum
{
  v2 = [(PLGenericAlbum *)self kindValue];
  v3 = objc_opt_class();

  return [v3 isSmartAlbumForKind:v2];
}

- (void)setUserQueryData:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__PLGenericAlbum_setUserQueryData___block_invoke;
  v6[3] = &unk_1E7568790;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(PLManagedObject *)self pl_safeSetValue:v5 forKey:@"userQueryData" valueDidChangeHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __35__PLGenericAlbum_setUserQueryData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [PLQueryHandler constructQueryFromData:*(a1 + 32)];
    [v4 setPrivacyState:{+[PLQueryHandler includesHiddenAssetsInQuery:](PLQueryHandler, "includesHiddenAssetsInQuery:", v3)}];

    WeakRetained = v4;
  }
}

- (void)setKindValue:(int)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithShort:a3];
  [(PLGenericAlbum *)self setKind:v4];
}

- (int)kindValue
{
  v2 = [(PLGenericAlbum *)self kind];
  v3 = [v2 shortValue];

  return v3;
}

- (void)_validateAndUpdateKeyAssetsIfNeeded
{
  v65[2] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(PLGenericAlbum *)self objectIDsForRelationshipNamed:@"customKeyAsset"];
  v5 = [v4 firstObject];
  v6 = [(PLGenericAlbum *)self objectIDsForRelationshipNamed:@"keyAssets"];
  v57 = 0;
  v7 = [(PLGenericAlbum *)self fetchKeyAssetCandidates:&v57];
  v8 = v57;
  v9 = v8;
  if (!v7)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v60 = v9;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "failed to perform key assets fetch: %@", buf, 0xCu);
    }

LABEL_33:

    goto LABEL_34;
  }

  v49 = v8;
  v10 = [objc_opt_class() _validateCurrentKeyAssetIDs:v6 fetchedKeyAssetIDs:v7 customKeyAssetID:v5 maxCount:{-[PLGenericAlbum keyAssetsMaxCount](self, "keyAssetsMaxCount")}];
  if (v5 && ([v7 containsObject:v5] & 1) == 0)
  {
    v13 = MEMORY[0x1E695D5E0];
    +[PLManagedAsset entityName];
    v14 = v44 = v7;
    [v13 fetchRequestWithEntityName:v14];
    v15 = v46 = v6;

    [v15 setIncludesPendingChanges:0];
    v16 = MEMORY[0x1E696AB28];
    v17 = [(PLGenericAlbum *)self predicateForKeyAssetsCandidates];
    v65[0] = v17;
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF = %@", v5];
    v18 = v50 = v5;
    v65[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v20 = [v16 andPredicateWithSubpredicates:v19];

    [v15 setPredicate:v20];
    [v15 setResultType:1];
    v21 = [(PLGenericAlbum *)self managedObjectContext];
    v56 = v49;
    v22 = [v21 executeFetchRequest:v15 error:&v56];
    v23 = v56;

    v11 = [v22 count] != 1;
    v7 = v44;

    v6 = v46;
    v49 = v23;
    v5 = v50;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    if (!v10)
    {
LABEL_11:
      v48 = [MEMORY[0x1E695DF70] array];
      if ((v10 & 1) == 0)
      {
        [v48 addObject:@"needs update"];
      }

      if (v11)
      {
        [v48 addObject:@"reset custom key"];
      }

      v24 = PLBackendGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [(PLGenericAlbum *)self uuid];
        [(PLGenericAlbum *)self objectID];
        v27 = v26 = v7;
        *buf = 138543874;
        v60 = v25;
        v61 = 2114;
        v62 = v27;
        v63 = 2114;
        v64 = v48;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "Updating key assets for album %{public}@ %{public}@ with reason %{public}@", buf, 0x20u);

        v7 = v26;
      }

      v42 = v4;
      v43 = v3;
      v47 = v6;
      if (v11)
      {
        [(PLGenericAlbum *)self setCustomKeyAsset:0];

        v28 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      }

      else
      {
        v28 = objc_alloc_init(MEMORY[0x1E695DFA0]);
        if (v5)
        {
          v29 = [(PLGenericAlbum *)self managedObjectContext];
          v51 = v5;
          v30 = [v29 objectWithID:v5];

          [v28 addObject:v30];
          v31 = 0;
LABEL_22:
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v45 = v7;
          v32 = v7;
          v33 = [v32 countByEnumeratingWithState:&v52 objects:v58 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v53;
LABEL_24:
            v36 = 0;
            while (1)
            {
              if (*v53 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v52 + 1) + 8 * v36);
              if ((v31 & 1) != 0 || ([*(*(&v52 + 1) + 8 * v36) isEqual:v51] & 1) == 0)
              {
                v38 = [(PLGenericAlbum *)self managedObjectContext];
                v39 = [v38 objectWithID:v37];

                [v28 addObject:v39];
                v40 = [v28 count];
                v41 = [(PLGenericAlbum *)self keyAssetsMaxCount];

                if (v40 >= v41)
                {
                  break;
                }
              }

              if (v34 == ++v36)
              {
                v34 = [v32 countByEnumeratingWithState:&v52 objects:v58 count:16];
                if (v34)
                {
                  goto LABEL_24;
                }

                break;
              }
            }
          }

          [(PLGenericAlbum *)self setKeyAssets:v28];
          v4 = v42;
          v3 = v43;
          v9 = v49;
          v5 = v51;
          v7 = v45;
          v6 = v47;
          v12 = v48;
          goto LABEL_33;
        }
      }

      v51 = 0;
      v31 = 1;
      goto LABEL_22;
    }
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v9 = v49;
LABEL_34:

  objc_autoreleasePoolPop(v3);
}

- (id)fetchKeyAssetCandidates:(id *)a3
{
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  [v7 setIncludesPendingChanges:0];
  [v7 setFetchLimit:{-[PLGenericAlbum keyAssetsMaxCount](self, "keyAssetsMaxCount")}];
  v8 = [(PLGenericAlbum *)self predicateForKeyAssetsCandidates];
  [v7 setPredicate:v8];

  v9 = [(PLGenericAlbum *)self sortDescriptorsForKeyAssetsCandidates];
  [v7 setSortDescriptors:v9];

  [v7 setResultType:1];
  v10 = [(PLGenericAlbum *)self managedObjectContext];
  v11 = [v10 executeFetchRequest:v7 error:a3];

  return v11;
}

- (id)sortDescriptorsForKeyAssetsCandidates
{
  v3 = objc_opt_class();
  v4 = [(PLGenericAlbum *)self customSortKey];
  v5 = [(PLGenericAlbum *)self customSortAscending];

  return [v3 sortDescriptorsForAssetsInAlbumWithSortKey:v4 ascending:v5];
}

- (id)predicateForKeyAssetsCandidates
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AE18];
  v3 = [(PLGenericAlbum *)self objectID];
  v4 = [v2 predicateWithFormat:@"%K CONTAINS %@", @"albums", v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"trashedState", 0];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"hidden", 0];
  v7 = MEMORY[0x1E696AB28];
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  return v9;
}

- (void)updateKeyAssetsIfNeeded
{
  v3 = objc_autoreleasePoolPush();
  if ([objc_opt_class() supportsCachedKeyAssetsWithAlbumKind:{-[PLGenericAlbum kindValue](self, "kindValue")}])
  {
    [(PLGenericAlbum *)self _validateAndUpdateKeyAssetsIfNeeded];
  }

  objc_autoreleasePoolPop(v3);
}

- (NSString)name
{
  NSLog(&cfstr_WarningTheName.isa, a2, self);
  PLPrintSymbolicStackTrace();

  return [(PLGenericAlbum *)self localizedTitle];
}

- (NSString)localizedTitle
{
  v3 = [(PLGenericAlbum *)self kindValue];
  v4 = [(PLGenericAlbum *)self photoLibrary];
  v5 = +[PLGenericAlbum localizedTitleForAlbumKind:cplEnabled:](PLGenericAlbum, "localizedTitleForAlbumKind:cplEnabled:", v3, [v4 isCloudPhotoLibraryEnabled]);

  if (!v5)
  {
    v5 = [(PLGenericAlbum *)self title];
  }

  return v5;
}

- (unint64_t)assetsCount
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(PLGenericAlbum *)self assets];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (unint64_t)approximateCount
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(PLGenericAlbum *)self assets];
  v5 = [v4 count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (void)_repairTitleIfEmpty
{
  v3 = [(PLGenericAlbum *)self localizedTitle];
  v7 = v3;
  if (!v3 || (v4 = [v3 length], v5 = v7, !v4))
  {
    v6 = [objc_opt_class() localizedRecoveredTitle];
    [(PLGenericAlbum *)self setTitle:v6];

    v5 = v7;
  }
}

- (void)repairUuidAndTitleWithRecoveryReason:(const char *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLGenericAlbum *)self setUuid:v5];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(PLGenericAlbum *)self objectID];
      v8 = 136315650;
      v9 = a3;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Repaired an album without a UUID in %s: %@ %@", &v8, 0x20u);
    }
  }

  [(PLGenericAlbum *)self _repairTitleIfEmpty];
}

- (BOOL)_isValidLibraryRoleForUpdate
{
  v2 = [(PLGenericAlbum *)self photoLibrary];
  v3 = [v2 role];

  return (v3 - 5) < 0xFFFFFFFFFFFFFFFELL;
}

- (BOOL)_isValidChangeSourceForUpdate
{
  v3 = [(PLGenericAlbum *)self managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  v5 = [(PLGenericAlbum *)self managedObjectContext];
  v6 = [v5 changeSource];

  return (v6 - 3) < 0xFFFFFFFE;
}

- (BOOL)_checkLastModifiedDateIfNeeded
{
  v3 = [(PLGenericAlbum *)self changedValues];
  if ([v3 count] && (objc_msgSend(v3, "objectForKeyedSubscript:", @"lastModifiedDate"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4) && -[PLGenericAlbum _isValidChangeSourceForUpdate](self, "_isValidChangeSourceForUpdate") && -[PLGenericAlbum _isValidLibraryRoleForUpdate](self, "_isValidLibraryRoleForUpdate"))
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = [v3 allKeys];
    v7 = [v5 setWithArray:v6];

    v8 = [(PLGenericAlbum *)self listOfLastModifiedDateChangeProperties];
    v9 = [v7 intersectsSet:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)didSave
{
  v3.receiver = self;
  v3.super_class = PLGenericAlbum;
  [(PLManagedObject *)&v3 didSave];
  self->_didAutomaticallyAssignParentFolder = 0;
}

- (void)willSave
{
  v34 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = PLGenericAlbum;
  [(PLManagedObject *)&v29 willSave];
  if (([(PLGenericAlbum *)self isDeleted]& 1) == 0)
  {
    v3 = [(PLGenericAlbum *)self uuid];

    if (!v3)
    {
      [(PLGenericAlbum *)self repairUuidAndTitleWithRecoveryReason:"[PLGenericAlbum willSave]"];
      PLSimulateCrash();
    }
  }

  v4 = [(PLGenericAlbum *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v4 isInitializingSingletons] & 1) != 0 || (-[PLGenericAlbum isDeleted](self, "isDeleted") & 1) != 0 || !-[PLGenericAlbum isUserCreated](self, "isUserCreated") || (-[PLGenericAlbum parentFolder](self, "parentFolder"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
LABEL_24:
      if (([(PLGenericAlbum *)self isDeleted]& 1) == 0 && [(PLGenericAlbum *)self _checkLastModifiedDateIfNeeded])
      {
        v18 = [MEMORY[0x1E695DF00] now];
        [(PLManagedObject *)self pl_safeSetValue:v18 forKey:@"lastModifiedDate" valueDidChangeHandler:0];
        v19 = [(PLGenericAlbum *)self parentFolder];
        v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        do
        {
          v21 = [v19 uuid];
          if (v21)
          {
            [v20 addObject:v21];
          }

          v22 = [v19 kind];
          v23 = [v22 integerValue];

          if (v23 != 4000)
          {
            break;
          }

          v24 = v19;
          [v19 setLastModifiedDate:v18];
          v19 = [v19 parentFolder];

          v25 = [v19 uuid];
          if (!v25)
          {
            break;
          }

          v26 = v25;
          v27 = [v19 uuid];
          v28 = [v20 containsObject:v27];
        }

        while ((v28 & 1) == 0);
      }

      goto LABEL_33;
    }

    if (self->_didAutomaticallyAssignParentFolder)
    {
      v6 = PLBackendGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [(PLGenericAlbum *)self uuid];
        v8 = [(PLGenericAlbum *)self objectID];
        *buf = 138543618;
        v31 = v7;
        v32 = 2114;
        v33 = v8;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Skipping automatic assignment of nil parent folder to avoid willSave looping for album: %{public}@ %{public}@", buf, 0x16u);
      }

      goto LABEL_24;
    }

    if ([(PLGenericAlbum *)self isProjectAlbum])
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(PLGenericAlbum *)self uuid];
        v11 = [(PLGenericAlbum *)self objectID];
        *buf = 138543618;
        v31 = v10;
        v32 = 2114;
        v33 = v11;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Setting default (rootProjectFolder) for nil parent folder: %{public}@ %{public}@", buf, 0x16u);
      }

      v12 = [v4 photoLibrary];
      v13 = [PLGenericAlbum projectAlbumRootFolderInLibrary:v12];
    }

    else
    {
      if ([(PLGenericAlbum *)self isInserted]&& [(PLGenericAlbum *)self kindValue]!= 1507)
      {
        goto LABEL_23;
      }

      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(PLGenericAlbum *)self uuid];
        v16 = [(PLGenericAlbum *)self objectID];
        *buf = 138543618;
        v31 = v15;
        v32 = 2114;
        v33 = v16;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Setting default (rootFolder) for nil parent folder: %{public}@ %{public}@", buf, 0x16u);
      }

      v12 = [v4 photoLibrary];
      v13 = [PLGenericAlbum rootFolderInLibrary:v12];
    }

    v17 = v13;

    [v17 addChildCollectionsObject:self];
LABEL_23:
    self->_didAutomaticallyAssignParentFolder = 1;
    goto LABEL_24;
  }

LABEL_33:
}

- (void)willTurnIntoFault
{
  [(PLGenericAlbum *)self unregisterForChanges];
  v3.receiver = self;
  v3.super_class = PLGenericAlbum;
  [(PLGenericAlbum *)&v3 willTurnIntoFault];
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = PLGenericAlbum;
  [(PLGenericAlbum *)&v3 awakeFromFetch];
  [(PLGenericAlbum *)self registerForChanges];
}

- (void)awakeFromInsert
{
  v5.receiver = self;
  v5.super_class = PLGenericAlbum;
  [(PLGenericAlbum *)&v5 awakeFromInsert];
  v3 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLGenericAlbum *)self setUuid:v3];

  [(PLGenericAlbum *)self setKindValue:2];
  [(PLGenericAlbum *)self setPendingItemsCount:0];
  [(PLGenericAlbum *)self setPendingItemsType:1];
  [(PLGenericAlbum *)self registerForChanges];
  v4 = [MEMORY[0x1E695DF00] date];
  [(PLGenericAlbum *)self setCreationDate:v4];
}

- (PLPhotoLibrary)photoLibrary
{
  v2 = [(PLGenericAlbum *)self managedObjectContext];
  v3 = [v2 photoLibrary];

  return v3;
}

- (BOOL)supportsCloudUpload
{
  if (([(PLGenericAlbum *)self isPrototype]& 1) != 0)
  {
    return 0;
  }

  if ([(PLGenericAlbum *)self kindValue]== 4000 || [(PLGenericAlbum *)self kindValue]== 2 || [(PLGenericAlbum *)self kindValue]== 3999 || [(PLGenericAlbum *)self isProjectAlbumSupportingCloudUpload])
  {
    return 1;
  }

  return [(PLGenericAlbum *)self kindValue]== 3998;
}

- (void)applyTrashedState:(signed __int16)a3 cascade:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3 == 1)
  {
    v7 = [MEMORY[0x1E695DF00] date];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(PLGenericAlbum *)self _applyTrashedState:v5 date:v5 < 2 cascade:v7];
}

- (void)_applyTrashedState:(signed __int16)a3 date:(BOOL)a4 :(id)a5 cascade:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  v8 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v11 = a5;
  if (![(PLGenericAlbum *)self canMoveToTrash])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLGenericAlbum.m" lineNumber:211 description:@"expect trashable album"];
  }

  if (((v8 & 0xFFFFFFFD) == 0) == [(PLGenericAlbum *)self trashedState])
  {
    [(PLGenericAlbum *)self setTrashedState:v8];
    if (v7)
    {
      [(PLGenericAlbum *)self setTrashedDate:v11];
    }

    if (v8 == 2)
    {
      [(PLGenericAlbum *)self delete];
    }
  }

  if ([(PLGenericAlbum *)self isFolder]&& v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [(PLGenericAlbum *)self childCollections];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v18 + 1) + 8 * v16++) _applyTrashedState:v8 date:v7 :v11 cascade:1];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (BOOL)canMoveToTrash
{
  v3 = [(PLGenericAlbum *)self kindValue];
  if ((v3 - 1507) >= 2 && v3 != 4000 && v3 != 2)
  {
    return 0;
  }

  return [(PLGenericAlbum *)self canPerformEditOperation:32];
}

- (void)delete
{
  v3 = [(PLGenericAlbum *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (void)dealloc
{
  [(PLGenericAlbum *)self unregisterForChanges];
  [(PLGenericAlbum *)self unregisterAllDerivedAlbums];
  v3.receiver = self;
  v3.super_class = PLGenericAlbum;
  [(PLGenericAlbum *)&v3 dealloc];
}

+ (id)_albumsMatchingPredicate:(id)a3 expectedResultCount:(id)a4 inManagedObjectContext:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && ![v9 integerValue])
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc_init(MEMORY[0x1E695D5E0]);
    v13 = [a1 entityInManagedObjectContext:v10];
    [v12 setEntity:v13];

    [v12 setPredicate:v8];
    if (!v9 || [v9 integerValue] >= 0x65)
    {
      [v12 setFetchBatchSize:100];
    }

    v21 = 0;
    v14 = [v10 executeFetchRequest:v12 error:&v21];
    v15 = v21;
    v16 = v15;
    if (v14)
    {

      objc_autoreleasePoolPop(v11);
      v17 = v14;
    }

    else
    {
      v18 = PLBackendGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = v12;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to fetch %@: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v17 = [MEMORY[0x1E695DEC8] array];
    }

    v19 = v17;
  }

  return v19;
}

+ (id)fetchAlbumsWithUUIDs:(id)a3 propertiesToFetch:(id)a4 managedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E695D5E0];
  v10 = a5;
  v11 = +[PLGenericAlbum entityName];
  v12 = [v9 fetchRequestWithEntityName:v11];

  if (v8)
  {
    [v12 setPropertiesToFetch:v8];
  }

  [v12 setIncludesPendingChanges:0];
  if ([v7 count] >= 0x65)
  {
    [v12 setFetchBatchSize:100];
  }

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", v7];
  [v12 setPredicate:v13];

  [v12 setFetchLimit:{objc_msgSend(v7, "count")}];
  v18 = 0;
  v14 = [v10 executeFetchRequest:v12 error:&v18];

  v15 = v18;
  if (v14)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v14];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v15];
  }
  v16 = ;

  return v16;
}

+ (PLGenericAlbum)albumWithKind:(int)a3 inManagedObjectContext:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1 albumsWithKind:v4 inManagedObjectContext:v6];
  v9 = [v8 lastObject];

  objc_autoreleasePoolPop(v7);

  return v9;
}

+ (id)insertAlbumWithKind:(int)a3 title:(id)a4 uuid:(id)a5 inManagedObjectContext:(id)a6
{
  v8 = *&a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  if (v8 == 1505)
  {
    if (objc_opt_class() == a1)
    {
      goto LABEL_6;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = v15;
    v17 = @"kPhotoLibraryAlbumKind_CloudSharedAlbum can only be PLCloudSharedAlbum.";
    v18 = a2;
    v19 = a1;
    v20 = 2157;
    goto LABEL_12;
  }

  if (v8 == 1500 && objc_opt_class() != a1)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = v15;
    v17 = @"kPhotoLibraryAlbumKind_PhotoStream can only be PLPhotoStreamAlbum.";
    v18 = a2;
    v19 = a1;
    v20 = 2154;
LABEL_12:
    [v15 handleFailureInMethod:v18 object:v19 file:@"PLGenericAlbum.m" lineNumber:v20 description:v17];
  }

LABEL_6:
  v21 = [a1 insertInManagedObjectContext:v13];
  [v21 setKindValue:v8];
  [v21 setTitle:v11];
  if (v12)
  {
    [v21 setUuid:v12];
  }

  objc_autoreleasePoolPop(v14);

  return v21;
}

+ (id)eventsWithName:(id)a3 andImportSessionIdentifier:(id)a4 inManagedObjectContext:(id)a5
{
  v8 = MEMORY[0x1E696AE18];
  v9 = MEMORY[0x1E696AD98];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 numberWithInt:12];
  v14 = [v8 predicateWithFormat:@"kind == %@ AND title == %@ AND importSessionID == %@", v13, v12, v11];

  v15 = [a1 _albumsMatchingPredicate:v14 expectedResultCount:0 inManagedObjectContext:v10];

  return v15;
}

+ (id)albumsWithKind:(int)a3 inManagedObjectContext:(id)a4
{
  v4 = *&a3;
  v6 = MEMORY[0x1E696AE18];
  v7 = MEMORY[0x1E696AD98];
  v8 = a4;
  v9 = [v7 numberWithInt:v4];
  v10 = [v6 predicateWithFormat:@"kind == %@", v9];

  v11 = [a1 _albumsMatchingPredicate:v10 expectedResultCount:0 inManagedObjectContext:v8];

  return v11;
}

+ (id)allAlbumsRegisteredWithManagedObjectContext:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [a1 entityInManagedObjectContext:v4];
  v8 = [v7 subentities];
  v9 = [v8 count];

  v32 = v7;
  if (v9)
  {
    v31 = v5;
    v10 = [v7 subentities];
    v11 = [v10 arrayByAddingObject:v7];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = [v4 registeredObjects];
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          v18 = [v17 entity];
          v19 = [v11 indexOfObjectIdenticalTo:v18];

          if (v19 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v6 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v14);
    }

    v5 = v31;
    v7 = v32;
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = [v4 registeredObjects];
    v20 = [v11 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = v5;
      v23 = v4;
      v24 = *v34;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v11);
          }

          v26 = *(*(&v33 + 1) + 8 * j);
          v27 = [v26 entity];

          v28 = v27 == v32;
          v7 = v32;
          if (v28)
          {
            [v6 addObject:v26];
          }
        }

        v21 = [v11 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
      v4 = v23;
      v5 = v22;
    }
  }

  v29 = [v6 copy];
  objc_autoreleasePoolPop(v5);

  return v29;
}

+ (id)allSyncedAlbumsInManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x1E696AE18];
  v5 = a3;
  v6 = [v4 predicateWithFormat:@"kind in {%d, %d, %d, %d}", 15, 1550, 1551, 1552];
  v7 = [a1 _albumsMatchingPredicate:v6 expectedResultCount:0 inManagedObjectContext:v5];

  return v7;
}

+ (id)albumFromGroupURL:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 uuidFromGroupURL:v6];
  if (![v9 length] || (objc_msgSend(a1, "albumWithUUID:inLibrary:", v9, v7), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    NSLog(&cfstr_CouldNotFindGr.isa, v9);
    v10 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 isInTrash])
  {

    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v10;
}

+ (id)insertNewCloudSharedAlbumWithTitle:(id)a3 lastInterestingDate:(id)a4 intoLibrary:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E69BF2A0];
  v13 = [v11 pathManager];
  v14 = [v13 libraryURL];
  if ([v12 isSystemPhotoLibraryURL:v14])
  {

    goto LABEL_4;
  }

  v15 = [v11 isUnitTesting];

  if (v15)
  {
LABEL_4:
    v16 = [a1 _insertNewAlbumWithKind:1505 title:v9 lastInterestingDate:v10 intoLibrary:v11];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && v16)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:a1 file:@"PLGenericAlbum.m" lineNumber:2026 description:{@"Cloud shared album is of unexpected class: %@", v16}];
    }

    v17 = +[PLPhotoSharingHelper sharingPersonID];
    if ([v17 length])
    {
      v18 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "setting cloudPersonID of newly created album to %@", buf, 0xCu);
      }

      [v16 setCloudPersonID:v17];
    }

    goto LABEL_14;
  }

  v17 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    v19 = [v11 pathManager];
    v20 = [v19 libraryURL];
    *buf = 138412290;
    v24 = v20;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_FAULT, "Unable to insert new cloud shared album because library is not the SPL: %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_14:

  return v16;
}

+ (id)insertNewProjectAlbumWithTitle:(id)a3 documentType:(id)a4 intoLibrary:(id)a5
{
  v8 = a4;
  v9 = [a1 _insertNewAlbumWithKind:1508 title:a3 lastInterestingDate:0 intoLibrary:a5];
  v10 = v9;
  if (v9)
  {
    [v9 setProjectDocumentType:v8];
  }

  return v10;
}

+ (id)insertNewSmartAlbumIntoLibrary:(id)a3
{
  v3 = [a3 managedObjectContext];
  v4 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:v3];

  [v4 setKindValue:1507];

  return v4;
}

+ (id)_insertNewAlbumWithKind:(int)a3 title:(id)a4 lastInterestingDate:(id)a5 intoLibrary:(id)a6
{
  v8 = *&a3;
  v52 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (v8 <= 1504)
  {
    if (v8 == 15)
    {
      v13 = PLManagedLegacyFaceAlbum;
LABEL_10:
      v14 = [v11 managedObjectContext];
      v15 = [(__objc2_class *)v13 insertInManagedObjectContext:v14];

      if (v15)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

    if (v8 == 1500)
    {
      v13 = PLPhotoStreamAlbum;
      goto LABEL_10;
    }

LABEL_8:
    v13 = PLManagedAlbum;
    goto LABEL_10;
  }

  if (v8 != 1505)
  {
    if (v8 == 1508)
    {
      v13 = PLProjectAlbum;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v21 = [v11 managedObjectContext];
  v15 = [(PLManagedObject *)PLCloudSharedAlbum insertInManagedObjectContext:v21];

  [v15 updateCloudLastInterestingChangeDateWithDate:v10];
  if (v15)
  {
LABEL_11:
    [v15 setKindValue:v8];
    [v15 setTitle:v9];
    v16 = [MEMORY[0x1E695DF70] array];
    v17 = [MEMORY[0x1E695DF70] array];
    if (v8 > 1506)
    {
      if (v8 > 1550)
      {
        if (v8 != 1551)
        {
          if (v8 != 1603 && v8 != 1604)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        }

        v24 = [PLManagedAlbumList eventListInPhotoLibrary:v12];
LABEL_34:
        v19 = v24;
        v20 = v16;
        goto LABEL_35;
      }

      if (v8 != 1507 && v8 != 1550)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v8 > 14)
      {
        if (v8 != 15)
        {
          if (v8 != 1500)
          {
            if (v8 == 1505)
            {
              v18 = [PLManagedAlbumList allStreamedAlbumsListInPhotoLibrary:v12];
LABEL_22:
              v19 = v18;
              v20 = v17;
LABEL_35:
              [v20 addObject:v19];
            }

LABEL_36:
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v22 = v16;
            v25 = [v22 countByEnumeratingWithState:&v40 objects:v45 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v41;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v41 != v27)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v29 = [*(*(&v40 + 1) + 8 * i) albums];
                  [v29 addObject:v15];
                }

                v26 = [v22 countByEnumeratingWithState:&v40 objects:v45 count:16];
              }

              while (v26);
            }

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v23 = v17;
            v30 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v37;
              do
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v37 != v32)
                  {
                    objc_enumerationMutation(v23);
                  }

                  [*(*(&v36 + 1) + 8 * j) insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:{v15, v36}];
                }

                v31 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v31);
            }

            v34 = v15;
            goto LABEL_51;
          }

LABEL_21:
          v18 = [PLManagedAlbumList albumListInPhotoLibrary:v12];
          goto LABEL_22;
        }

        v24 = [PLManagedAlbumList facesAlbumListInPhotoLibrary:v12];
        goto LABEL_34;
      }

      if (v8 != 2)
      {
        if (v8 != 12)
        {
          goto LABEL_36;
        }

        v24 = [PLManagedAlbumList importListInPhotoLibrary:v12];
        goto LABEL_34;
      }
    }

    v24 = [PLManagedAlbumList albumListInPhotoLibrary:v12];
    goto LABEL_34;
  }

LABEL_24:
  v22 = PLBackendGetLog();
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_52;
  }

  v23 = [v12 managedObjectContext];
  *buf = 67109634;
  v47 = v8;
  v48 = 2112;
  v49 = v12;
  v50 = 2112;
  v51 = v23;
  _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Unable to insert new album with kind %d. Library shutting down? library %@ moc %@", buf, 0x1Cu);
LABEL_51:

LABEL_52:

  return v15;
}

+ (id)albumsMatchingPredicate:(id)a3 expectedResultCount:(id)a4 inLibrary:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [a5 managedObjectContext];
  v10 = [PLGenericAlbum _albumsMatchingPredicate:v8 expectedResultCount:v7 inManagedObjectContext:v9];

  return v10;
}

+ (void)removeInvalidAlbumsAndFoldersInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Removing invalid albums and folders with nil UUID", buf, 2u);
    }
  }

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind == %d OR kind == %d OR kind == %d OR kind == %d) AND uuid = nil", 2, 4000, 1507, 1508];
  v8 = [a1 _albumsMatchingPredicate:v7 expectedResultCount:0 inManagedObjectContext:v4];
  [a1 _removeAlbumsAndFolders:v8 inManagedObjectContext:v4];

  objc_autoreleasePoolPop(v5);
}

+ (void)removeTrashedAlbumsAndFoldersForCloudResetInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Removing trashed/expunged albums and folders for cloud reset", buf, 2u);
    }
  }

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind == %d OR kind == %d OR kind == %d OR kind == %d) AND trashedState != %d", 2, 4000, 1507, 1508, 0];
  v8 = [a1 _albumsMatchingPredicate:v7 expectedResultCount:0 inManagedObjectContext:v4];
  [a1 _removeAlbumsAndFolders:v8 inManagedObjectContext:v4];

  objc_autoreleasePoolPop(v5);
}

+ (void)removeEmptyAlbumsAndFoldersForCloudResetInManagedObjectContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v7 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Removing empty albums for cloud reset", buf, 2u);
    }
  }

  v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Album"];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d AND cloudLocalState == %d AND assets.@count == 0", 2, 1];
  [v8 setPredicate:v9];
  [v8 setFetchBatchSize:100];
  v22 = 0;
  v10 = [v4 executeFetchRequest:v8 error:&v22];
  v11 = v22;
  if (v10)
  {
    [a1 _removeAlbumsAndFolders:v10 inManagedObjectContext:v4];
  }

  else
  {
    v12 = a1;
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch empty albums %@: %@", buf, 0x16u);
    }

    a1 = v12;
    v6 = MEMORY[0x1E6994D48];
  }

  objc_autoreleasePoolPop(v5);
  v14 = objc_autoreleasePoolPush();
  if ((*v6 & 1) == 0)
  {
    v15 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Removing empty folders for cloud reset", buf, 2u);
    }
  }

  v16 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Folder"];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d AND cloudLocalState == %d AND childCollections.@count == 0", 4000, 1];
  [v16 setPredicate:v17];
  [v16 setFetchBatchSize:100];
  v21 = 0;
  v18 = [v4 executeFetchRequest:v16 error:&v21];
  v19 = v21;
  if (v18)
  {
    [a1 _removeAlbumsAndFolders:v18 inManagedObjectContext:v4];
  }

  else
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch empty folders %@: %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v14);
}

+ (void)removeAllUserAlbumsAndFoldersInLibrary:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Removing all user albums and folders for cloud reset", buf, 2u);
    }
  }

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind == %d OR kind == %d OR kind == %d OR kind == %d)", 2, 4000, 1507, 1508];
  v8 = [v4 managedObjectContext];
  v9 = [a1 _albumsMatchingPredicate:v7 expectedResultCount:0 inManagedObjectContext:v8];

  v10 = [v4 managedObjectContext];
  [a1 _removeAlbumsAndFolders:v9 inManagedObjectContext:v10];

  objc_autoreleasePoolPop(v5);
}

+ (void)_removeAlbumsAndFolders:(id)a3 inManagedObjectContext:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__PLGenericAlbum__removeAlbumsAndFolders_inManagedObjectContext___block_invoke;
  v16[3] = &unk_1E7568828;
  v16[4] = &v21;
  v16[5] = &v17;
  v8 = [v6 enumerateWithIncrementalSaveUsingObjects:v5 withBlock:v16];
  if (v8)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v5 count];
        *buf = 134218242;
        v26 = v10;
        v27 = 2112;
        v28 = v8;
        v11 = "Failed to remove %ld albums and folder: %@";
        v12 = v9;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_19BF1F000, v12, v13, v11, buf, 0x16u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v9 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v22[3];
      v15 = v18[3];
      *buf = 134218240;
      v26 = v14;
      v27 = 2048;
      v28 = v15;
      v11 = "Deleted %lu folders, %lu albums.";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }

LABEL_9:
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  objc_autoreleasePoolPop(v7);
}

void __65__PLGenericAlbum__removeAlbumsAndFolders_inManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v5 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"album";
      if (isKindOfClass)
      {
        v6 = @"folder";
      }

      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Deleting %@: %@", &v8, 0x16u);
    }
  }

  [v3 delete];
  v7 = 40;
  if (isKindOfClass)
  {
    v7 = 32;
  }

  ++*(*(*(a1 + v7) + 8) + 24);
}

+ (void)resetAlbumStateForCloudInLibrary:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Resetting cloudLocalState of albums", buf, 2u);
    }
  }

  v7 = objc_alloc(MEMORY[0x1E695D560]);
  v8 = +[PLGenericAlbum entityName];
  v9 = [v7 initWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind == %d OR kind == %d OR kind == %d OR kind == %d OR kind == %d OR kind == %d) AND cloudLocalState != %d", 2, 4000, 1507, 3999, 1508, 3998, 0];
  [v9 setPredicate:v10];
  [v9 setResultType:2];
  [v9 setPropertiesToUpdate:&unk_1F0FC0618];
  v11 = [v3 managedObjectContext];
  v16 = 0;
  v12 = [v11 executeRequest:v9 error:&v16];
  v13 = v16;

  if (v13)
  {
    if ((*v5 & 1) == 0)
    {
      v14 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to batch update album state: %@", buf, 0xCu);
      }

LABEL_12:
    }
  }

  else if ((*v5 & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 result];
      *buf = 138412290;
      v18 = v15;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Batch updated cloudLocalState for %@ albums", buf, 0xCu);
    }

    goto LABEL_12;
  }

  objc_autoreleasePoolPop(v4);
}

+ (id)albumsToUploadInitiallyInLibrary:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 managedObjectContext];
  v9 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v9 setRelationshipKeyPathsForPrefetching:&unk_1F0FBF6E8];
  v10 = [a1 entityInManagedObjectContext:v8];
  [v9 setEntity:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind == %d OR kind == %d OR kind == %d OR kind == %d OR kind == %d OR (kind == %d AND projectDocumentType != %@ AND projectDocumentType != %@)) AND cloudLocalState == %d", 2, 4000, 1507, 3999, 3998, 1508, @"com.apple.photos.projects.legacy", @"com.apple.photos.projects.slideshow", 0];
  [v9 setPredicate:v11];
  [v9 setFetchLimit:a4];
  v15 = 0;
  v12 = [v8 executeFetchRequest:v9 error:&v15];
  v13 = [a1 includeUnpushedParentsForAlbums:v12 limit:a4];

  objc_autoreleasePoolPop(v7);

  return v13;
}

+ (id)includeUnpushedParentsForAlbums:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
  v8 = [a1 _unpushedParentsOfAlbums:v6];
  if ([v8 count])
  {
    do
    {
      v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
      [v7 insertObjects:v8 atIndexes:v9];

      v10 = [a1 _unpushedParentsOfAlbums:v8];

      v8 = v10;
    }

    while ([v10 count]);
  }

  else
  {
    v10 = v8;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  [v11 addObjectsFromArray:v7];
  v12 = [v11 array];
  v13 = MEMORY[0x1E696AC90];
  v14 = [v12 count];
  if (v14 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v13 indexSetWithIndexesInRange:{0, v15}];
  v17 = [v12 objectsAtIndexes:v16];

  return v17;
}

+ (id)_unpushedParentsOfAlbums:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 parentFolder];
        v12 = v11;
        if (v11 && [v11 cloudLocalState] != 1 && (objc_msgSend(v12, "isRegularRootFolder") & 1) == 0 && (objc_msgSend(v12, "isProjectAlbumRootFolder") & 1) == 0)
        {
          v13 = [v10 parentFolder];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)albumsForStreamID:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E696AE18];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:1500];
  v10 = [v8 predicateWithFormat:@"kind == %@ AND title == %@", v9, v5];

  v11 = [v6 managedObjectContext];
  v12 = [PLGenericAlbum _albumsMatchingPredicate:v10 expectedResultCount:0 inManagedObjectContext:v11];

  objc_autoreleasePoolPop(v7);

  return v12;
}

+ (PLGenericAlbum)albumWithName:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"title = %@", v5];
    v9 = [v6 managedObjectContext];
    v10 = [PLGenericAlbum _albumsMatchingPredicate:v8 expectedResultCount:&unk_1F0FBBD10 inManagedObjectContext:v9];

    if ([v10 count])
    {
      v11 = [v10 objectAtIndex:0];
    }

    else
    {
      v11 = 0;
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (PLGenericAlbum)albumWithObjectID:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [v6 managedObjectContext];
    v14 = 0;
    v9 = [v8 existingObjectWithID:v5 error:&v14];
    v10 = v14;
    if (v10)
    {
      v11 = v10;
      NSLog(&cfstr_FailedToFetchA.isa, v10);

      objc_autoreleasePoolPop(v7);
      v12 = 0;
    }

    else
    {

      objc_autoreleasePoolPop(v7);
      v12 = v9;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (PLGenericAlbum)albumWithUUID:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid == %@", v6];
  v10 = [v7 managedObjectContext];
  v11 = [a1 _albumsMatchingPredicate:v9 expectedResultCount:&unk_1F0FBBD10 inManagedObjectContext:v10];

  v12 = [v11 lastObject];

  objc_autoreleasePoolPop(v8);

  return v12;
}

+ (id)allAlbumsInLibrary:(id)a3
{
  v4 = [a3 managedObjectContext];
  v5 = [a1 allAlbumsInManagedObjectContext:v4];

  return v5;
}

+ (id)projectAlbumRootFolderInLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PLGenericAlbum.m" lineNumber:1531 description:{@"Invalid parameter not satisfying: %@", @"aLibrary"}];
  }

  v6 = [v5 managedObjectContext];
  v7 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:3998 inManagedObjectContext:v6];
  if (!v7)
  {
    [v5 repairSingletonObjects];
    v7 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:3998 inManagedObjectContext:v6];
  }

  return v7;
}

+ (id)rootFolderInLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PLGenericAlbum.m" lineNumber:1519 description:{@"Invalid parameter not satisfying: %@", @"aLibrary"}];
  }

  v6 = [v5 managedObjectContext];
  v7 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:3999 inManagedObjectContext:v6];
  if (!v7)
  {
    [v5 repairSingletonObjects];
    v7 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:3999 inManagedObjectContext:v6];
  }

  return v7;
}

+ (id)_singletonManagedAlbumWithKind:(int)a3 library:(id)a4
{
  v4 = *&a3;
  v7 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PLGenericAlbum.m" lineNumber:1507 description:{@"Invalid parameter not satisfying: %@", @"aLibrary"}];
  }

  v8 = [v7 managedObjectContext];
  v9 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:v4 inManagedObjectContext:v8];
  if (!v9)
  {
    [v7 repairSingletonObjects];
    v9 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:v4 inManagedObjectContext:v8];
  }

  return v9;
}

+ (id)_singletonFetchingAlbumWithKind:(int)a3 library:(id)a4
{
  v4 = *&a3;
  v7 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PLGenericAlbum.m" lineNumber:1495 description:{@"Invalid parameter not satisfying: %@", @"aLibrary"}];
  }

  v8 = [v7 managedObjectContext];
  v9 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:v4 inManagedObjectContext:v8];
  if (!v9)
  {
    [v7 repairSingletonObjects];
    v9 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:v4 inManagedObjectContext:v8];
  }

  return v9;
}

+ (void)updateAssetAssociativityInAlbums:(id)a3 photoLibrary:(id)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = MEMORY[0x1E695D5E0];
    v9 = +[PLManagedAlbum entityName];
    v10 = [v8 fetchRequestWithEntityName:v9];

    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", v6];
    [v10 setPredicate:v11];

    v34[0] = @"assets";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    [v10 setRelationshipKeyPathsForPrefetching:v12];

    v13 = [v7 managedObjectContext];
    v26 = 0;
    v14 = [v13 executeFetchRequest:v10 error:&v26];
    v15 = v26;

    if (v14)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v23;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v22 + 1) + 8 * i) _updateAlbumAssetAssociativityBasedOnTrashState];
          }

          v18 = [v16 countByEnumeratingWithState:&v22 objects:v33 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(a2);
        *buf = 138543874;
        v28 = v21;
        v29 = 2114;
        v30 = v10;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch albums with %{public}@: %@", buf, 0x20u);
      }
    }
  }
}

+ (id)uuidFromGroupURL:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 scheme];
  if (([v5 isEqualToString:@"assets-library"] & 1) == 0)
  {

    goto LABEL_19;
  }

  v6 = [v3 host];
  v7 = [v6 isEqualToString:@"group"];

  if (!v7)
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  v8 = [v3 query];
  if ([v8 length] >= 0x65)
  {
LABEL_18:

    goto LABEL_19;
  }

  v9 = [v8 componentsSeparatedByString:@"&"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v10)
  {

    goto LABEL_18;
  }

  v11 = v10;
  v22 = v8;
  v23 = v3;
  v24 = 0;
  v12 = *v26;
  v13 = @"id";
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = [*(*(&v25 + 1) + 8 * i) componentsSeparatedByString:{@"=", v22}];
      if ([v15 count] >= 2)
      {
        v16 = [v15 objectAtIndex:0];
        v17 = [v15 objectAtIndex:1];
        if ([v16 isEqualToString:v13])
        {
          v18 = v13;
          v19 = v17;

          v24 = v19;
          v13 = v18;
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v11);

  v3 = v23;
  v20 = v24;
LABEL_20:
  objc_autoreleasePoolPop(v4);

  return v20;
}

+ (BOOL)_validateCurrentKeyAssetIDs:(id)a3 fetchedKeyAssetIDs:(id)a4 customKeyAssetID:(id)a5 maxCount:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    if (![v9 count] && !objc_msgSend(v10, "count"))
    {
      v12 = 1;
      goto LABEL_14;
    }

    v13 = v10;
    v14 = v9;
    goto LABEL_13;
  }

  if (![v9 indexOfObject:v11])
  {
    v15 = [v10 indexOfObject:v11];
    v16 = v10;
    v13 = v16;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v16 count] != a6)
      {
LABEL_12:
        v18 = v9;
        v14 = [v18 subarrayWithRange:{1, objc_msgSend(v18, "count") - 1}];

LABEL_13:
        v12 = [v14 isEqualToArray:v13];

        goto LABEL_14;
      }

      v17 = [v13 subarrayWithRange:{0, objc_msgSend(v13, "count") - 1}];
    }

    else
    {
      v17 = [MEMORY[0x1E695DF70] arrayWithArray:v16];
      [v17 removeObjectAtIndex:v15];
    }

    v13 = v17;
    goto LABEL_12;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

+ (id)sortDescriptorsForAssetsInAlbumWithSortKey:(unsigned int)a3 ascending:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      v6 = MEMORY[0x1E696AEB0];
      if (a3 == 2)
      {
        v7 = @"modificationDate";
      }

      else
      {
        v7 = @"addedDate";
      }

      goto LABEL_19;
    }

    if (a3)
    {
      if (a3 != 1)
      {
LABEL_25:
        v14 = PLBackendGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v16[0] = 67109120;
          v16[1] = a3;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Unexpected album sort key value: %d", v16, 8u);
        }

        v9 = 0;
        v10 = 0;
        goto LABEL_28;
      }

      v6 = MEMORY[0x1E696AEB0];
      v7 = @"dateCreated";
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v6 = MEMORY[0x1E696AEB0];
      v7 = @"trashedDate";
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (a3 == 6)
  {
    v6 = MEMORY[0x1E696AEB0];
    v7 = @"cloudBatchPublishDate";
    goto LABEL_19;
  }

  if (a3 == 101)
  {
LABEL_14:
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"additionalAttributes.title" ascending:a4 selector:sel_localizedCaseInsensitiveCompare_];
    goto LABEL_20;
  }

  if (a3 != 100)
  {
    goto LABEL_25;
  }

LABEL_15:
  v6 = MEMORY[0x1E696AEB0];
  v7 = @"albums";
LABEL_19:
  v8 = [v6 sortDescriptorWithKey:v7 ascending:a4];
LABEL_20:
  v9 = v8;
  if (!v8)
  {
    goto LABEL_25;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
  if (a3 == 1 || ([MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:v4], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "addObject:", v11), v11, a3 != 3))
  {
    v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  [v10 addObject:v13];

LABEL_28:

  return v10;
}

+ (void)updateKeyAssetsInAlbums:(id)a3 photoLibrary:(id)a4
{
  v39[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLManagedAlbum entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = +[PLGenericAlbum predicateForAlbumsSupportingCachedKeyAssets];
  if (v6)
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", v6];
    v13 = MEMORY[0x1E696AB28];
    v39[0] = v12;
    v39[1] = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v15 = [v13 andPredicateWithSubpredicates:v14];

    v11 = v15;
  }

  [v10 setPredicate:v11];
  v38[0] = @"keyAssets";
  v38[1] = @"customKeyAsset";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [v10 setRelationshipKeyPathsForPrefetching:v16];

  v17 = [v7 managedObjectContext];
  v30 = 0;
  v18 = [v17 executeFetchRequest:v10 error:&v30];
  v19 = v30;

  if (v18)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v27;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v26 + 1) + 8 * i) updateKeyAssetsIfNeeded];
        }

        v22 = [v20 countByEnumeratingWithState:&v26 objects:v37 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138543874;
      v32 = v25;
      v33 = 2114;
      v34 = v10;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch albums with %{public}@: %@", buf, 0x20u);
    }
  }
}

+ (BOOL)supportsCachedKeyAssetsWithAlbumKind:(int)a3
{
  v3 = a3 == 1508;
  if (a3 == 1505)
  {
    v3 = 1;
  }

  return a3 == 2 || v3;
}

+ (id)localizedTitleForAlbumKind:(int)a3 cplEnabled:(BOOL)a4
{
  if (a3 > 3997)
  {
    if (a3 > 4002)
    {
      if (a3 > 4004)
      {
        if (a3 != 4005)
        {
          if (a3 != 4006)
          {
            goto LABEL_26;
          }

          goto LABEL_31;
        }
      }

      else if (a3 == 4003)
      {
        goto LABEL_31;
      }
    }

    else if (a3 <= 4000)
    {
      if (a3 == 3998 || a3 == 3999)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    DCIM_IS_PAD();
    goto LABEL_31;
  }

  if (a3 <= 1508)
  {
    if (a3 != 1000)
    {
      if (a3 == 1500 || a3 == 1506)
      {
        goto LABEL_31;
      }

LABEL_26:
      v4 = 0;
      goto LABEL_32;
    }

    MGGetBoolAnswer();
LABEL_31:
    v4 = PLServicesLocalizedFrameworkString();
    goto LABEL_32;
  }

  v4 = @"Action Camera";
  switch(a3)
  {
    case 1552:
    case 1600:
    case 1602:
    case 1603:
    case 1604:
    case 1605:
    case 1606:
    case 1607:
    case 1608:
    case 1609:
    case 1610:
    case 1611:
    case 1612:
    case 1613:
    case 1614:
    case 1615:
    case 1616:
    case 1617:
    case 1618:
    case 1619:
    case 1620:
    case 1621:
    case 1622:
    case 1623:
    case 1624:
    case 1625:
    case 1626:
    case 1627:
    case 1628:
    case 1630:
    case 1631:
    case 1632:
    case 1634:
    case 1639:
    case 1640:
    case 1641:
      goto LABEL_31;
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
    case 1629:
    case 1633:
    case 1635:
    case 1638:
      goto LABEL_26;
    case 1636:
      v4 = PLServicesSharedLibraryLocalizedFrameworkString();
      break;
    case 1637:
      break;
    case 1642:
      v4 = PLServicesFRSVLocalizedFrameworkString();
      break;
    default:
      if (a3 == 1509 || a3 == 1510)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
  }

LABEL_32:

  return v4;
}

+ (id)defaultAlbumKindsForFetchingWithCPLEnabled:(BOOL)a3
{
  if (a3)
  {
    v5 = &unk_1F0FBF6A0;
  }

  else
  {
    v5 = [&unk_1F0FBF6A0 arrayByAddingObject:{&unk_1F0FBBCF8, v3}];
  }

  return v5;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___PLGenericAlbum;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v9, sel_keyPathsForValuesAffectingValueForKey_, v3);
  v5 = [v3 isEqualToString:{@"kindValue", v9.receiver, v9.super_class}];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:@"kind"];
    v7 = [v4 setByAddingObjectsFromSet:v6];

    v4 = v7;
  }

  return v4;
}

- (id)payloadIDForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"PLGenericAlbum subclasses must implement payloadForChangedKeys" userInfo:0];
  objc_exception_throw(v4);
}

- (id)payloadID
{
  v2 = [(PLGenericAlbum *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v2];

  return v3;
}

- (id)cplFullRecord
{
  v3 = [(PLGenericAlbum *)self photoLibrary];
  v4 = [(PLGenericAlbum *)self cplAlbumChangeInPhotoLibrary:v3 orderKeyManager:0];

  return v4;
}

- (BOOL)isProjectAlbumSupportingCloudUpload
{
  if ([(PLGenericAlbum *)self kindValue]== 1508)
  {
    v3 = [(PLGenericAlbum *)self projectDocumentType];
    v4 = v3;
    if (v3 && ([v3 containsString:@"com.apple.photos.projects.legacy"] & 1) == 0)
    {
      v5 = [v4 containsString:@"com.apple.photos.projects.slideshow"] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)applyPropertiesFromAlbumChange:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 scopedIdentifier];
  v7 = [v6 identifier];

  if (v5)
  {
    v8 = [(PLGenericAlbum *)self title];
    v9 = [v8 isEqualToString:v5];

    if ((v9 & 1) == 0)
    {
      [(PLGenericAlbum *)self setTitle:v5];
    }
  }

  if (v7)
  {
    v10 = [(PLGenericAlbum *)self cloudGUID];

    if (v10 != v7)
    {
      [(PLGenericAlbum *)self setCloudGUID:v7];
    }
  }

  if ([v4 inExpunged])
  {
    v11 = 2;
  }

  else
  {
    v11 = [v4 inTrash];
  }

  if ([(PLGenericAlbum *)self trashedState]!= v11)
  {
    [(PLGenericAlbum *)self applyTrashedState:v11 cascade:0];
  }

  v12 = [(PLGenericAlbum *)self trashedDate];
  v13 = [v4 dateDeleted];
  v14 = [v12 isEqualToDate:v13];

  if ((v14 & 1) == 0)
  {
    v15 = [v4 dateDeleted];
    [(PLGenericAlbum *)self setTrashedDate:v15];
  }

  v16 = [(PLGenericAlbum *)self customSortAscending];
  if (v16 != [v4 albumSortAscending])
  {
    -[PLGenericAlbum setCustomSortAscending:](self, "setCustomSortAscending:", [v4 albumSortAscending]);
  }

  v17 = [(PLGenericAlbum *)self customSortKey];
  if (v17 != [v4 albumSortType])
  {
    -[PLGenericAlbum setCustomSortKey:](self, "setCustomSortKey:", [v4 albumSortType]);
  }

  if ([v4 albumType] == 7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v4 projectData];
      [(PLGenericAlbum *)self setProjectData:v18];

      v19 = [v4 projectPreviewImageData];
      v35 = 0;
      v20 = [(PLGenericAlbum *)self setProjectPreviewImageData:v19 error:&v35];
      v21 = v35;

      if ((v20 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v22 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = v21;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Cannot creating projectPreviewImage resource, Error: %@", buf, 0xCu);
        }
      }
    }
  }

  if ([(PLGenericAlbum *)self cloudLocalState]!= 1)
  {
    [(PLGenericAlbum *)self setCloudLocalState:1];
  }

  v23 = [(PLGenericAlbum *)self importedByBundleIdentifier];
  v24 = [v4 importedByBundleIdentifier];
  IsEqual = PLObjectIsEqual();

  if ((IsEqual & 1) == 0)
  {
    v26 = [v4 importedByBundleIdentifier];
    [(PLGenericAlbum *)self setImportedByBundleIdentifier:v26];
  }

  v27 = [v4 userModificationDate];
  if (v27)
  {
    v28 = v27;
    v29 = [(PLGenericAlbum *)self lastModifiedDate];
    if (v29)
    {
      v30 = v29;
      v31 = [(PLGenericAlbum *)self lastModifiedDate];
      v32 = [v4 userModificationDate];
      v33 = [v31 isEqualToDate:v32];

      if (v33)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    v34 = [v4 userModificationDate];
    [(PLGenericAlbum *)self setLastModifiedDate:v34];
  }

LABEL_36:
}

- (id)cplAlbumChangeInPhotoLibrary:(id)a3 orderKeyManager:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E6994A78]);
  if (![(PLGenericAlbum *)self isProjectAlbumRootFolder]&& ![(PLGenericAlbum *)self isRegularRootFolder])
  {
    v13 = [(PLGenericAlbum *)self scopedIdentifier];
    [v8 setScopedIdentifier:v13];

    v14 = [(PLGenericAlbum *)self title];
    [v8 setName:v14];

    v15 = [(PLGenericAlbum *)self importedByBundleIdentifier];
    [v8 setImportedByBundleIdentifier:v15];

    v16 = [(PLGenericAlbum *)self parentFolder];
    if ([v16 isRegularRootFolder])
    {
      v17 = 0;
    }

    else
    {
      v18 = [(PLGenericAlbum *)self parentFolder];
      v19 = [v18 isProjectAlbumRootFolder];

      if (v19)
      {
        v17 = 0;
        goto LABEL_19;
      }

      v20 = [(PLGenericAlbum *)self parentFolder];
      v17 = [v20 cloudGUID];

      if (v17)
      {
        goto LABEL_19;
      }

      v16 = [(PLGenericAlbum *)self parentFolder];
      v17 = [v16 uuid];
    }

LABEL_19:
    [v8 setParentIdentifier:v17];
    v21 = [v6 managedObjectContext];
    v22 = [v6 libraryServicesManager];
    if (!v7)
    {
      v23 = [PLRelationshipOrderKeyManager alloc];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __68__PLGenericAlbum_CPL__cplAlbumChangeInPhotoLibrary_orderKeyManager___block_invoke;
      v36[3] = &unk_1E7574C88;
      v37 = v22;
      v7 = [(PLRelationshipOrderKeyManager *)v23 initWithGenerateContextBlock:v36];
    }

    v24 = [(PLRelationshipOrderKeyManager *)v7 parentFolderOrderValueForAlbum:self inManagedObjectContext:v21];
    [v8 setPosition:{objc_msgSend(v24, "integerValue")}];

    goto LABEL_22;
  }

  if (![(PLGenericAlbum *)self isProjectAlbumRootFolder])
  {
    if ([(PLGenericAlbum *)self isRegularRootFolder])
    {
      v9 = @"----Root-Folder----";
      goto LABEL_7;
    }

    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_23;
    }

    v17 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v39 = [(PLGenericAlbum *)self kindValue];
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Cannot create CPLAlbumChange for unexpected root type: %u", buf, 8u);
    }

LABEL_22:

    goto LABEL_23;
  }

  v9 = @"----Project-Root-Folder----";
LABEL_7:
  v10 = [(PLGenericAlbum *)self scopeIdentifier];
  v11 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:v10 identifier:v9];
  [v8 setScopedIdentifier:v11];
  v12 = [(PLGenericAlbum *)self cloudGUID];

  if (!v12)
  {
    [(PLGenericAlbum *)self setCloudGUID:v9];
  }

LABEL_23:
  if ([(PLGenericAlbum *)self isFolder])
  {
    v25 = v8;
    v26 = 3;
  }

  else
  {
    if ([(PLGenericAlbum *)self isProjectAlbum])
    {
      [v8 setAlbumType:7];
      v27 = self;
      v28 = [(PLGenericAlbum *)v27 projectDocumentType];
      [v8 setProjectDocumentType:v28];

      v29 = [(PLGenericAlbum *)v27 projectData];
      [v8 setProjectData:v29];

      v30 = [(PLGenericAlbum *)v27 projectPreviewImageData];

      [v8 setProjectPreviewImageData:v30];
      goto LABEL_29;
    }

    v25 = v8;
    v26 = 0;
  }

  [v25 setAlbumType:v26];
LABEL_29:
  [v8 setChangeType:0];
  [v8 setAlbumSortType:{-[PLGenericAlbum customSortKey](self, "customSortKey")}];
  [v8 setAlbumSortAscending:{-[PLGenericAlbum customSortAscending](self, "customSortAscending")}];
  v31 = [(PLGenericAlbum *)self trashedState];
  v32 = v31 == 2 || [(PLGenericAlbum *)self trashedState]== 1;
  [v8 setInTrash:v32];
  [v8 setInExpunged:v31 == 2];
  v33 = [(PLGenericAlbum *)self trashedDate];
  [v8 setDateDeleted:v33];

  v34 = [(PLGenericAlbum *)self lastModifiedDate];
  [v8 setUserModificationDate:v34];

  return v8;
}

id __68__PLGenericAlbum_CPL__cplAlbumChangeInPhotoLibrary_orderKeyManager___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[PLGenericAlbum(CPL) cplAlbumChangeInPhotoLibrary:orderKeyManager:]_block_invoke";
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Generating PLRelationshipOrderKeyManager context on-demand for: %s...", &v10, 0xCu);
  }

  v5 = [*(a1 + 32) databaseContext];
  v6 = [v5 newShortLivedLibraryForOrderKeyManagerWithName:a2];
  v7 = v6;

  v8 = [v6 managedObjectContext];

  return v8;
}

- (id)scopedIdentifier
{
  v3 = [(PLGenericAlbum *)self cloudGUID];
  if (!v3)
  {
    v3 = [(PLGenericAlbum *)self uuid];
    if (!v3)
    {
      [(PLGenericAlbum *)self repairUuidAndTitleWithRecoveryReason:"[PLGenericAlbum(CPL) scopedIdentifier]"];
      v3 = [(PLGenericAlbum *)self uuid];
    }

    [(PLGenericAlbum *)self setCloudGUID:v3];
  }

  v4 = objc_alloc(MEMORY[0x1E6994BB8]);
  v5 = [(PLGenericAlbum *)self scopeIdentifier];
  v6 = [v4 initWithScopeIdentifier:v5 identifier:v3];

  return v6;
}

- (id)scopeIdentifier
{
  v2 = [(PLGenericAlbum *)self photoLibrary];
  v3 = [v2 mainScopeIdentifier];

  return v3;
}

+ (id)albumsWithCloudGUIDs:(id)a3 inLibrary:(id)a4
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && ![v6 count])
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudGUID IN %@", v6];
    v9 = [a1 _predicateForSupportedAlbumTypes];
    v10 = MEMORY[0x1E696AB28];
    v16[0] = v8;
    v16[1] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v14 = [a1 albumsMatchingPredicate:v12 expectedResultCount:v13 inLibrary:v7];
  }

  return v14;
}

+ (PLGenericAlbum)albumWithCloudGUID:(id)a3 inLibrary:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = 0;
  if ([v6 length] && v6)
  {
    v12[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [a1 albumsWithCloudGUIDs:v9 inLibrary:v7];
    v8 = [v10 firstObject];
  }

  return v8;
}

+ (id)_predicateForSupportedAlbumTypes
{
  pl_dispatch_once();
  v2 = _predicateForSupportedAlbumTypes_predicate;

  return v2;
}

void __55__PLGenericAlbum_CPL___predicateForSupportedAlbumTypes__block_invoke()
{
  v0 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(kind) == %d || noindex:(kind) == %d || noindex:(kind) == %d || noindex:(kind) == %d || noindex:(kind) == %d || noindex:(kind) == %d", 2, 4000, 1507, 3999, 1508, 3998];
  v1 = _predicateForSupportedAlbumTypes_predicate;
  _predicateForSupportedAlbumTypes_predicate = v0;
}

@end
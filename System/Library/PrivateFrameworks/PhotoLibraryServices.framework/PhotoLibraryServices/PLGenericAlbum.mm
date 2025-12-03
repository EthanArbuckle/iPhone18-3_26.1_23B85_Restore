@interface PLGenericAlbum
+ (BOOL)_validateCurrentKeyAssetIDs:(id)ds fetchedKeyAssetIDs:(id)iDs customKeyAssetID:(id)d maxCount:(int64_t)count;
+ (BOOL)supportsCachedKeyAssetsWithAlbumKind:(int)kind;
+ (PLGenericAlbum)albumWithCloudGUID:(id)d inLibrary:(id)library;
+ (PLGenericAlbum)albumWithKind:(int)kind inManagedObjectContext:(id)context;
+ (PLGenericAlbum)albumWithName:(id)name inLibrary:(id)library;
+ (PLGenericAlbum)albumWithObjectID:(id)d inLibrary:(id)library;
+ (PLGenericAlbum)albumWithUUID:(id)d inLibrary:(id)library;
+ (id)_albumsMatchingPredicate:(id)predicate expectedResultCount:(id)count inManagedObjectContext:(id)context;
+ (id)_baseIndexingPredicate;
+ (id)_insertNewAlbumWithKind:(int)kind title:(id)title lastInterestingDate:(id)date intoLibrary:(id)library;
+ (id)_predicateForSupportedAlbumTypes;
+ (id)_singletonFetchingAlbumWithKind:(int)kind library:(id)library;
+ (id)_singletonManagedAlbumWithKind:(int)kind library:(id)library;
+ (id)_unpushedParentsOfAlbums:(id)albums;
+ (id)albumFromGroupURL:(id)l photoLibrary:(id)library;
+ (id)albumsForStreamID:(id)d inLibrary:(id)library;
+ (id)albumsMatchingPredicate:(id)predicate expectedResultCount:(id)count inLibrary:(id)library;
+ (id)albumsToUploadInitiallyInLibrary:(id)library limit:(unint64_t)limit;
+ (id)albumsWithCloudGUIDs:(id)ds inLibrary:(id)library;
+ (id)albumsWithKind:(int)kind inManagedObjectContext:(id)context;
+ (id)allAlbumsInLibrary:(id)library;
+ (id)allAlbumsRegisteredWithManagedObjectContext:(id)context;
+ (id)allSyncedAlbumsInManagedObjectContext:(id)context;
+ (id)defaultAlbumKindsForFetchingWithCPLEnabled:(BOOL)enabled;
+ (id)eventsWithName:(id)name andImportSessionIdentifier:(id)identifier inManagedObjectContext:(id)context;
+ (id)fetchAlbumsForAssetObjectID:(id)d libraryIdentifier:(int64_t)identifier managedObjectContext:(id)context;
+ (id)fetchAlbumsWithUUIDs:(id)ds propertiesToFetch:(id)fetch managedObjectContext:(id)context;
+ (id)includeUnpushedParentsForAlbums:(id)albums limit:(unint64_t)limit;
+ (id)insertAlbumWithKind:(int)kind title:(id)title uuid:(id)uuid inManagedObjectContext:(id)context;
+ (id)insertNewCloudSharedAlbumWithTitle:(id)title lastInterestingDate:(id)date intoLibrary:(id)library;
+ (id)insertNewProjectAlbumWithTitle:(id)title documentType:(id)type intoLibrary:(id)library;
+ (id)insertNewSmartAlbumIntoLibrary:(id)library;
+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)identifier;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
+ (id)localizedTitleForAlbumKind:(int)kind cplEnabled:(BOOL)enabled;
+ (id)projectAlbumRootFolderInLibrary:(id)library;
+ (id)propertiesToFetch;
+ (id)rootFolderInLibrary:(id)library;
+ (id)sortDescriptorsForAssetsInAlbumWithSortKey:(unsigned int)key ascending:(BOOL)ascending;
+ (id)uuidFromGroupURL:(id)l;
+ (void)_removeAlbumsAndFolders:(id)folders inManagedObjectContext:(id)context;
+ (void)addSingletonObjectsToContext:(id)context;
+ (void)removeAllUserAlbumsAndFoldersInLibrary:(id)library;
+ (void)removeEmptyAlbumsAndFoldersForCloudResetInManagedObjectContext:(id)context;
+ (void)removeInvalidAlbumsAndFoldersInManagedObjectContext:(id)context;
+ (void)removeTrashedAlbumsAndFoldersForCloudResetInManagedObjectContext:(id)context;
+ (void)resetAlbumStateForCloudInLibrary:(id)library;
+ (void)updateAssetAssociativityInAlbums:(id)albums photoLibrary:(id)library;
+ (void)updateKeyAssetsInAlbums:(id)albums photoLibrary:(id)library;
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
- (id)assetsByObjectIDAtIndexes:(id)indexes;
- (id)cplAlbumChangeInPhotoLibrary:(id)library orderKeyManager:(id)manager;
- (id)cplFullRecord;
- (id)fetchKeyAssetCandidates:(id *)candidates;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
- (id)predicateForKeyAssetsCandidates;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (id)sortDescriptorsForKeyAssetsCandidates;
- (int)kindValue;
- (unint64_t)approximateCount;
- (unint64_t)assetsCount;
- (unint64_t)countForAssetsOfKind:(signed __int16)kind;
- (void)_applyTrashedState:(signed __int16)state date:(BOOL)date :(id)a5 cascade:(BOOL)cascade;
- (void)_processUpdateAlbumAssetAssociativityBasedOnTrashStateWithBlock:(id)block;
- (void)_repairTitleIfEmpty;
- (void)_updateAlbumAssetAssociativityBasedOnTrashState;
- (void)_validateAndUpdateKeyAssetsIfNeeded;
- (void)applyPropertiesFromAlbumChange:(id)change;
- (void)applyTrashedState:(signed __int16)state cascade:(BOOL)cascade;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)batchFetchAssets:(id)assets;
- (void)dealloc;
- (void)delete;
- (void)didSave;
- (void)enumerateDerivedAlbums:(id)albums;
- (void)reducePendingItemsCountBy:(unint64_t)by;
- (void)registerDerivedAlbum:(id)album;
- (void)repairUuidAndTitleWithRecoveryReason:(const char *)reason;
- (void)setKindValue:(int)value;
- (void)setUserQueryData:(id)data;
- (void)unregisterAllDerivedAlbums;
- (void)unregisterForChanges;
- (void)updateAlbumFolderRelation:(id)relation orderKeyManager:(id)manager inLibrary:(id)library;
- (void)updateKeyAssetsIfNeeded;
- (void)willSave;
- (void)willTurnIntoFault;
@end

@implementation PLGenericAlbum

- (BOOL)isCandidateForSearchIndexing
{
  _baseIndexingPredicate = [objc_opt_class() _baseIndexingPredicate];
  LOBYTE(self) = [_baseIndexingPredicate evaluateWithObject:self];

  return self;
}

- (BOOL)isEligibleForSearchIndexing
{
  if (([(PLGenericAlbum *)self isDeleted]& 1) != 0)
  {
    return 0;
  }

  v4 = objc_opt_class();
  photoLibrary = [(PLGenericAlbum *)self photoLibrary];
  v6 = [v4 isEligibleForSearchIndexingPredicateForLibraryIdentifier:{+[PLSpotlightDonationUtilities wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:](PLSpotlightDonationUtilities, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", photoLibrary)}];
  v7 = [v6 evaluateWithObject:self];

  return v7;
}

+ (id)fetchAlbumsForAssetObjectID:(id)d libraryIdentifier:(int64_t)identifier managedObjectContext:(id)context
{
  v40[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  v10 = MEMORY[0x1E695D5E0];
  v11 = +[PLManagedAlbum entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  v13 = MEMORY[0x1E696AB28];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K", dCopy, @"assets"];
  v40[0] = v14;
  v15 = [self isEligibleForSearchIndexingPredicateForLibraryIdentifier:identifier];
  v40[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v17 = [v13 andPredicateWithSubpredicates:v16];
  [v12 setPredicate:v17];

  v32 = dCopy;
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K", dCopy, @"assets"];
  [v12 setPredicate:v18];

  v39[0] = @"uuid";
  v39[1] = @"cachedCount";
  v39[2] = @"trashedState";
  v39[3] = @"kind";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  [v12 setPropertiesToFetch:v19];

  v37 = 0;
  v20 = [contextCopy executeFetchRequest:v12 error:&v37];
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

+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)identifier
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

+ (void)addSingletonObjectsToContext:(id)context
{
  contextCopy = context;
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v84 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGenericAlbum.m" lineNumber:2497 description:{@"%@ can only be called from assetsd", v84}];
  }

  v6 = [PLGenericAlbum albumWithKind:3999 inManagedObjectContext:contextCopy];

  if (!v6)
  {
    v7 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:contextCopy];
    [v7 setKindValue:3999];
  }

  v8 = [PLGenericAlbum albumWithKind:3998 inManagedObjectContext:contextCopy];

  if (!v8)
  {
    v9 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:contextCopy];
    [v9 setKindValue:3998];
  }

  v10 = [PLGenericAlbum albumWithKind:1600 inManagedObjectContext:contextCopy];

  if (!v10)
  {
    v11 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v11 setKindValue:1600];
  }

  v12 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1605 inManagedObjectContext:contextCopy];

  if (!v12)
  {
    v13 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v13 setKindValue:1605];
  }

  v14 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1607 inManagedObjectContext:contextCopy];

  if (!v14)
  {
    v15 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v15 setKindValue:1607];
  }

  v16 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1608 inManagedObjectContext:contextCopy];

  if (!v16)
  {
    v17 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v17 setKindValue:1608];
  }

  v18 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1606 inManagedObjectContext:contextCopy];

  if (!v18)
  {
    v19 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v19 setKindValue:1606];
  }

  v20 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1609 inManagedObjectContext:contextCopy];

  if (!v20)
  {
    v21 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v21 setKindValue:1609];
  }

  v22 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1615 inManagedObjectContext:contextCopy];

  if (!v22)
  {
    v23 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v23 setKindValue:1615];
  }

  v24 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1610 inManagedObjectContext:contextCopy];

  if (!v24)
  {
    v25 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v25 setKindValue:1610];
  }

  v26 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1617 inManagedObjectContext:contextCopy];

  if (!v26)
  {
    v27 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v27 setKindValue:1617];
  }

  v28 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1618 inManagedObjectContext:contextCopy];

  if (!v28)
  {
    v29 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v29 setKindValue:1618];
  }

  v30 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1616 inManagedObjectContext:contextCopy];

  if (!v30)
  {
    v31 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v31 setKindValue:1616];
  }

  v32 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1613 inManagedObjectContext:contextCopy];

  if (!v32)
  {
    v33 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v33 setKindValue:1613];
  }

  v34 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:4004 inManagedObjectContext:contextCopy];

  if (!v34)
  {
    v35 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:contextCopy];
    [v35 setKindValue:4004];
  }

  v36 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:4005 inManagedObjectContext:contextCopy];

  if (!v36)
  {
    v37 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:contextCopy];
    [v37 setKindValue:4005];
  }

  v38 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:4006 inManagedObjectContext:contextCopy];

  if (!v38)
  {
    v39 = [(PLManagedObject *)PLManagedFolder insertInManagedObjectContext:contextCopy];
    [v39 setKindValue:4006];
  }

  v40 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1620 inManagedObjectContext:contextCopy];

  if (!v40)
  {
    v41 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v41 setKindValue:1620];
  }

  v42 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1621 inManagedObjectContext:contextCopy];

  if (!v42)
  {
    v43 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v43 setKindValue:1621];
  }

  v44 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1614 inManagedObjectContext:contextCopy];

  if (!v44)
  {
    v45 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v45 setKindValue:1614];
  }

  v46 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1611 inManagedObjectContext:contextCopy];

  if (!v46)
  {
    v47 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v47 setKindValue:1611];
  }

  v48 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:4001 inManagedObjectContext:contextCopy];

  if (!v48)
  {
    v49 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:contextCopy];
    [v49 setKindValue:4001];
  }

  v50 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:4003 inManagedObjectContext:contextCopy];

  if (!v50)
  {
    v51 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:contextCopy];
    [v51 setKindValue:4003];
  }

  v52 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:4002 inManagedObjectContext:contextCopy];

  if (!v52)
  {
    v53 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:contextCopy];
    [v53 setKindValue:4002];
  }

  v54 = [PLGenericAlbum albumWithKind:1602 inManagedObjectContext:contextCopy];

  if (!v54)
  {
    v55 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v55 setKindValue:1602];
  }

  v56 = [PLGenericAlbum albumWithKind:1552 inManagedObjectContext:contextCopy];

  if (!v56)
  {
    v57 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v57 setKindValue:1552];
  }

  v58 = [PLGenericAlbum albumWithKind:1612 inManagedObjectContext:contextCopy];

  if (!v58)
  {
    v59 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v59 setKindValue:1612];
  }

  v60 = [PLGenericAlbum albumWithKind:3571 inManagedObjectContext:contextCopy];

  if (!v60)
  {
    v61 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:contextCopy];
    [v61 setKindValue:3571];
    _kindDescription = [v61 _kindDescription];
    [v61 setTitle:_kindDescription];
  }

  v63 = [PLGenericAlbum albumWithKind:3572 inManagedObjectContext:contextCopy];

  if (!v63)
  {
    v64 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:contextCopy];
    [v64 setKindValue:3572];
    _kindDescription2 = [v64 _kindDescription];
    [v64 setTitle:_kindDescription2];
  }

  v66 = [PLGenericAlbum albumWithKind:3573 inManagedObjectContext:contextCopy];

  if (!v66)
  {
    v67 = [(PLManagedObject *)PLManagedAlbum insertInManagedObjectContext:contextCopy];
    [v67 setKindValue:3573];
    _kindDescription3 = [v67 _kindDescription];
    [v67 setTitle:_kindDescription3];
  }

  v69 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1619 inManagedObjectContext:contextCopy];

  if (!v69)
  {
    v70 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v70 setKindValue:1619];
  }

  v71 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1622 inManagedObjectContext:contextCopy];

  if (!v71)
  {
    v72 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v72 setKindValue:1622];
  }

  v73 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1623 inManagedObjectContext:contextCopy];

  if (!v73)
  {
    v74 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v74 setKindValue:1623];
  }

  v75 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1634 inManagedObjectContext:contextCopy];

  if (!v75)
  {
    v76 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v76 setKindValue:1634];
  }

  v77 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1624 inManagedObjectContext:contextCopy];

  if (!v77)
  {
    v78 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v78 setKindValue:1624];
  }

  v79 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:1636 inManagedObjectContext:contextCopy];

  if (!v79)
  {
    v80 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:contextCopy];
    [v80 setKindValue:1636];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PLGenericAlbum_addSingletonObjectsToContext___block_invoke;
  aBlock[3] = &unk_1E756B898;
  v81 = contextCopy;
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

- (void)enumerateDerivedAlbums:(id)albums
{
  derivedAlbums = self->_derivedAlbums;
  albumsCopy = albums;
  v4 = 5;
  do
  {
    WeakRetained = objc_loadWeakRetained(derivedAlbums);
    if (WeakRetained)
    {
      albumsCopy[2](albumsCopy, WeakRetained);
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

- (void)registerDerivedAlbum:(id)album
{
  v12 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  v5 = objc_autoreleasePoolPush();
  derivedAlbums = self->_derivedAlbums;
  v7 = 5;
  do
  {
    WeakRetained = objc_loadWeakRetained(derivedAlbums);

    if (!WeakRetained)
    {
      objc_storeWeak(derivedAlbums, albumCopy);
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
  kind = [(PLGenericAlbum *)self kind];
  title = [(PLGenericAlbum *)self title];
  v6 = [v3 stringByAppendingFormat:@" kind = %@; title = %@", kind, title];;

  return v6;
}

- (id)_compactDebugDescription
{
  v3 = objc_autoreleasePoolPush();
  objectID = [(PLGenericAlbum *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  path = [uRIRepresentation path];
  pathComponents = [path pathComponents];

  if ([pathComponents count] >= 2)
  {
    v8 = [pathComponents subarrayWithRange:{objc_msgSend(pathComponents, "count") - 2, 2}];

    pathComponents = v8;
  }

  v9 = [MEMORY[0x1E696AEC0] pathWithComponents:pathComponents];
  v10 = MEMORY[0x1E696AEC0];
  uuid = [(PLGenericAlbum *)self uuid];
  _kindDescription = [(PLGenericAlbum *)self _kindDescription];
  title = [(PLGenericAlbum *)self title];
  v14 = [v10 stringWithFormat:@"%@ [%@] (%@ %@)", uuid, v9, _kindDescription, title];

  objc_autoreleasePoolPop(v3);

  return v14;
}

- (id)_kindDescription
{
  kindValue = [(PLGenericAlbum *)self kindValue];
  if (kindValue <= 1507)
  {
    if (kindValue <= 999)
    {
      if (kindValue > 14)
      {
        if (kindValue == 15)
        {
          v4 = @"Faces";
          goto LABEL_47;
        }

        if (kindValue == 16)
        {
          v4 = @"Places";
          goto LABEL_47;
        }
      }

      else
      {
        if (kindValue == 2)
        {
          v4 = @"Regular";
          goto LABEL_47;
        }

        if (kindValue == 12)
        {
          v4 = @"Event";
          goto LABEL_47;
        }
      }
    }

    else if (kindValue <= 1501)
    {
      if (kindValue == 1000)
      {
        v4 = @"Saved";
        goto LABEL_47;
      }

      if (kindValue == 1500)
      {
        v4 = @"PhotoStream";
        goto LABEL_47;
      }
    }

    else
    {
      switch(kindValue)
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

  else if (kindValue > 1601)
  {
    if (kindValue <= 3570)
    {
      if (kindValue == 1602)
      {
        v4 = @"AllPhotoStream";
        goto LABEL_47;
      }

      if (kindValue == 1612)
      {
        v4 = @"Trash Bin";
        goto LABEL_47;
      }
    }

    else
    {
      switch(kindValue)
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

  else if (kindValue <= 1550)
  {
    if (kindValue == 1508)
    {
      v4 = @"Project";
      goto LABEL_47;
    }

    if (kindValue == 1550)
    {
      v4 = @"1WaySyncAlbum";
      goto LABEL_47;
    }
  }

  else
  {
    switch(kindValue)
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

- (void)updateAlbumFolderRelation:(id)relation orderKeyManager:(id)manager inLibrary:(id)library
{
  v122 = *MEMORY[0x1E69E9840];
  relationCopy = relation;
  managerCopy = manager;
  libraryCopy = library;
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGenericAlbum.m" lineNumber:2256 description:@"Only called from assetsd / unit test"];
  }

  parentIdentifier = [relationCopy parentIdentifier];
  isProjectAlbum = [(PLGenericAlbum *)self isProjectAlbum];
  if (parentIdentifier)
  {
    v14 = [PLGenericAlbum albumWithCloudGUID:parentIdentifier inLibrary:libraryCopy];
  }

  else
  {
    if (isProjectAlbum)
    {
      [(PLGenericAlbum *)PLManagedFolder projectAlbumRootFolderInLibrary:libraryCopy];
    }

    else
    {
      [(PLGenericAlbum *)PLManagedFolder rootFolderInLibrary:libraryCopy];
    }
    v14 = ;
  }

  v15 = v14;
  if (v14 && ([v14 isDeleted] & 1) == 0)
  {
    v108 = managerCopy;
    entity = [v15 entity];
    v17 = MEMORY[0x1E695D5B8];
    v18 = +[PLManagedFolder entityName];
    managedObjectContext = [libraryCopy managedObjectContext];
    v20 = [v17 entityForName:v18 inManagedObjectContext:managedObjectContext];
    v21 = [entity isKindOfEntity:v20];

    if ((v21 & 1) == 0)
    {
      v56 = MEMORY[0x19EAEE230]();
      v57 = PLBackendGetLog();
      v40 = v57;
      if (v56)
      {
        if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
        {
          _compactDebugDescription = [(PLGenericAlbum *)self _compactDebugDescription];
          cloudGUID = [(PLGenericAlbum *)self cloudGUID];
          v60 = [relationCopy description];
          *buf = 138544130;
          v113 = parentIdentifier;
          v114 = 2112;
          v115 = _compactDebugDescription;
          v116 = 2114;
          v117 = cloudGUID;
          v118 = 2112;
          v119 = v60;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_FAULT, "<rdar://problem/28377493> Unexpected non-folder parentIdentifier %{public}@ found in album %@ [%{public}@] change %@", buf, 0x2Au);
        }

        managerCopy = v108;
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
        _compactDebugDescription2 = [(PLGenericAlbum *)self _compactDebugDescription];
        v72 = [relationCopy description];
        v73 = [v70 stringWithFormat:@"Unexpected non-folder parent %@ referenced for album %@ with change record %@. See rdar://28377493.", v40, _compactDebugDescription2, v72];

        [PLDiagnostics fileRadarUserNotificationWithHeader:@"Photos Data Syncing Issue Detected!" message:@"Please file a Radar for non-folder parent album." radarTitle:@"TTR Photos Framework: non-folder parent album" radarDescription:v73];
      }

      else
      {
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          cloudGUID2 = [(PLGenericAlbum *)self cloudGUID];
          _compactDebugDescription3 = [(PLGenericAlbum *)self _compactDebugDescription];
          v63 = [relationCopy description];
          *buf = 138544130;
          v113 = parentIdentifier;
          v114 = 2112;
          v115 = cloudGUID2;
          v116 = 2114;
          v117 = _compactDebugDescription3;
          v118 = 2112;
          v119 = v63;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Unexpected non-folder parentIdentifier %{public}@ found in album %@ [%{public}@] change %@", buf, 0x2Au);
        }

        managerCopy = v108;
      }

      goto LABEL_77;
    }

    parentFolder = [(PLGenericAlbum *)self parentFolder];
    v106 = [parentFolder isEqual:v15];

    [(PLGenericAlbum *)self objectID];
    v24 = v23 = relationCopy;
    objectID = [v15 objectID];
    childCollections = [v15 childCollections];
    v27 = [childCollections indexOfObject:self];
    v105 = v23;
    position = [v23 position];
    if (!position)
    {
      v104 = v24;
      v64 = objectID;
      managerCopy = v108;
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v65 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          [(PLGenericAlbum *)self uuid];
          v66 = v100 = v27;
          uuid = [v15 uuid];
          *buf = 138412546;
          v113 = v66;
          v114 = 2112;
          v115 = uuid;
          _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_ERROR, "Ignoring unsupported order value (0), appending %@ to the end of %@", buf, 0x16u);

          managerCopy = v108;
          v27 = v100;
        }
      }

      v68 = [childCollections count];
      if (v106)
      {
        v107 = objectID;
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

      relationCopy = v105;
LABEL_77:

      goto LABEL_78;
    }

    v29 = position;
    v99 = v27;
    v111 = 0;
    managedObjectContext2 = [libraryCopy managedObjectContext];
    managerCopy = v108;
    v101 = v29;
    v107 = objectID;
    v31 = [v108 findIndexForAlbumWithID:v24 newOrderValue:v29 inFolderWithID:objectID hasOrderValueConflictWithAlbumID:&v111 inContext:managedObjectContext2];
    v103 = v111;

    v32 = [childCollections count];
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
          v36 = [childCollections count];
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

      v33 = [childCollections count];
    }

    v37 = childCollections;
    if (v103)
    {
      v97 = v33;
      managedObjectContext3 = [(PLGenericAlbum *)self managedObjectContext];
      v39 = [managedObjectContext3 existingObjectWithID:v103 error:0];

      v98 = v39;
      if (v39)
      {
        childCollections = v37;
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

        title = [v98 title];
        title2 = [(PLGenericAlbum *)self title];
        v45 = [title compare:title2];

        if (!v45)
        {
          cloudGUID3 = [v98 cloudGUID];
          cloudGUID4 = [(PLGenericAlbum *)self cloudGUID];
          v45 = [cloudGUID3 compare:cloudGUID4];
        }

        v109 = 0;
        v110 = 0;
        v48 = +[PLManagedFolder childKeyForOrdering];
        managedObjectContext4 = [libraryCopy managedObjectContext];
        [v108 getConflictResolutionOrderValuesForRelationship:v48 onObjectWithID:v107 atIndex:v102 intoLower:&v110 higher:&v109 inContext:managedObjectContext4];

        if (v45 == -1)
        {
          v74 = v110;
          if (v110)
          {
            objectID2 = [v98 objectID];
            managedObjectContext5 = [libraryCopy managedObjectContext];
            [v108 stashFolderAlbumsLocationValue:v74 forAlbumWithID:objectID2 inFolderWithID:v107 atIndex:v102 usingContext:managedObjectContext5];

            v50 = v101;
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v77 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                [MEMORY[0x1E696AD98] numberWithLongLong:v101];
                v78 = log = v77;
                v79 = [MEMORY[0x1E696AD98] numberWithLongLong:v110];
                objectID3 = [v98 objectID];
                *buf = 138412802;
                v113 = v78;
                v114 = 2112;
                v115 = v79;
                v116 = 2112;
                v117 = objectID3;
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
            managerCopy = v108;
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
            managerCopy = v108;
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
              managerCopy = v108;
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
            objectID4 = [v98 objectID];
            managedObjectContext6 = [libraryCopy managedObjectContext];
            [v108 stashFolderAlbumsLocationValue:v82 forAlbumWithID:objectID4 inFolderWithID:v107 atIndex:v102 usingContext:managedObjectContext6];

            v50 = v101;
            if ((*MEMORY[0x1E6994D48] & 1) == 0)
            {
              v77 = __CPLAssetsdOSLogDomain();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                [MEMORY[0x1E696AD98] numberWithLongLong:v101];
                v78 = log = v77;
                v79 = [MEMORY[0x1E696AD98] numberWithLongLong:v110];
                objectID3 = [v98 objectID];
                *buf = 138412802;
                v113 = v78;
                v114 = 2112;
                v115 = v79;
                v116 = 2112;
                v117 = objectID3;
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
            managerCopy = v108;
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

            if (v97 >= [childCollections count])
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
      childCollections = v37;
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

    managedObjectContext7 = [libraryCopy managedObjectContext];
    v64 = v107;
    [managerCopy stashFolderAlbumsLocationValue:v50 forAlbumWithID:v40 inFolderWithID:v107 atIndex:v102 usingContext:managedObjectContext7];

    goto LABEL_76;
  }

LABEL_78:
}

- (unint64_t)countForAssetsOfKind:(signed __int16)kind
{
  kindCopy = kind;
  v21 = *MEMORY[0x1E69E9840];
  managedObjectContext = [(PLGenericAlbum *)self managedObjectContext];
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = MEMORY[0x1E696AE18];
  objectID = [(PLGenericAlbum *)self objectID];
  v11 = [v9 predicateWithFormat:@"kind = %d AND albums CONTAINS %@", kindCopy, objectID];
  [v8 setPredicate:v11];

  v16 = 0;
  v12 = [managedObjectContext countForFetchRequest:v8 error:&v16];
  v13 = v16;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v18 = kindCopy;
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

- (void)reducePendingItemsCountBy:(unint64_t)by
{
  pendingItemsCount = [(PLGenericAlbum *)self pendingItemsCount];
  if (pendingItemsCount <= by)
  {
    [(PLGenericAlbum *)self setPendingItemsType:1];
  }

  if (pendingItemsCount >= by)
  {
    v6 = pendingItemsCount - by;
  }

  else
  {
    v6 = 0;
  }

  [(PLGenericAlbum *)self setPendingItemsCount:v6];
}

- (void)_processUpdateAlbumAssetAssociativityBasedOnTrashStateWithBlock:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E696AE18];
  objectID = [(PLGenericAlbum *)self objectID];
  v10 = [v8 predicateWithFormat:@"%K CONTAINS %@", @"albums", objectID];
  [v7 setPredicate:v10];

  photoLibrary = [(PLGenericAlbum *)self photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];

  v13 = [PLEnumerateAndSaveController alloc];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __82__PLGenericAlbum__processUpdateAlbumAssetAssociativityBasedOnTrashStateWithBlock___block_invoke;
  v28[3] = &unk_1E7575B30;
  v14 = managedObjectContext;
  v29 = v14;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __82__PLGenericAlbum__processUpdateAlbumAssetAssociativityBasedOnTrashStateWithBlock___block_invoke_2;
  v26[3] = &unk_1E7568800;
  v15 = blockCopy;
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
    trashedState = [(PLGenericAlbum *)self trashedState];
    if (trashedState == 1)
    {
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __65__PLGenericAlbum__updateAlbumAssetAssociativityBasedOnTrashState__block_invoke_2;
      v9 = &unk_1E756C850;
      selfCopy = self;
      v5 = &v6;
    }

    else
    {
      if (trashedState)
      {
        return;
      }

      supportsAssetAssociativity = [(PLGenericAlbum *)self supportsAssetAssociativity];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __65__PLGenericAlbum__updateAlbumAssetAssociativityBasedOnTrashState__block_invoke;
      v14 = &__block_descriptor_34_e24_v16__0__PLManagedAsset_8l;
      LOWORD(v15) = supportsAssetAssociativity;
      v5 = &v11;
    }

    [(PLGenericAlbum *)self _processUpdateAlbumAssetAssociativityBasedOnTrashStateWithBlock:v5, v6, v7, v8, v9, selfCopy, v11, v12, v13, v14, v15];
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
  kind = [(PLGenericAlbum *)self kind];
  v3 = [kind integerValue] == 2;

  return v3;
}

- (BOOL)supportsAssetAssociativity
{
  _isValidAlbumKindForAssetAssociativity = [(PLGenericAlbum *)self _isValidAlbumKindForAssetAssociativity];
  if (_isValidAlbumKindForAssetAssociativity)
  {
    LOBYTE(_isValidAlbumKindForAssetAssociativity) = [(PLGenericAlbum *)self trashedState]== 0;
  }

  return _isValidAlbumKindForAssetAssociativity;
}

- (void)batchFetchAssets:(id)assets
{
  v27 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  array = [MEMORY[0x1E695DF70] array];
  managedObjectContext = [(PLGenericAlbum *)self managedObjectContext];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = assetsCopy;
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
          objectID = [v12 objectID];
          if (objectID)
          {
            [array addObject:objectID];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    v14 = MEMORY[0x1E695D5E0];
    v15 = +[PLManagedAsset entityName];
    v16 = [v14 fetchRequestWithEntityName:v15];

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", array];
    [v16 setPredicate:v17];

    [v16 setReturnsObjectsAsFaults:0];
    v21 = 0;
    v18 = [managedObjectContext executeFetchRequest:v16 error:&v21];
    v19 = v21;
    v20 = v19;
    if (!v18)
    {
      NSLog(&cfstr_FailedToPrefet.isa, v19);
    }
  }
}

- (id)assetsByObjectIDAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  assets = [(PLGenericAlbum *)self assets];
  if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(indexesCopy, "count")}];
    managedObjectContext = [(PLGenericAlbum *)self managedObjectContext];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__PLGenericAlbum_assetsByObjectIDAtIndexes___block_invoke;
    v13[3] = &unk_1E75687B8;
    v14 = assets;
    v15 = managedObjectContext;
    v8 = v6;
    v16 = v8;
    v9 = managedObjectContext;
    [indexesCopy enumerateIndexesUsingBlock:v13];
    v10 = v16;
    v11 = v8;
  }

  else
  {
    v11 = [assets objectsAtIndexes:indexesCopy];
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
  uuid = [(PLGenericAlbum *)self uuid];
  v5 = [v3 stringWithFormat:@"%@://%@/?%@=%@", @"assets-library", @"group", @"id", uuid];
  v6 = [v2 URLWithString:v5];

  return v6;
}

- (BOOL)isFolder
{
  kindValue = [(PLGenericAlbum *)self kindValue];

  return [PLGenericAlbum isFolder:kindValue];
}

- (BOOL)isPendingPhotoStreamAlbum
{
  if ([(PLGenericAlbum *)self kindValue]!= 1505)
  {
    return 0;
  }

  cloudRelationshipState = [(PLGenericAlbum *)self cloudRelationshipState];
  integerValue = [cloudRelationshipState integerValue];

  return integerValue == 1;
}

- (BOOL)isUserCreated
{
  kindValue = [(PLGenericAlbum *)self kindValue];
  v3 = objc_opt_class();

  return [v3 isUserCreatedForKind:kindValue];
}

- (BOOL)isSmartAlbum
{
  kindValue = [(PLGenericAlbum *)self kindValue];
  v3 = objc_opt_class();

  return [v3 isSmartAlbumForKind:kindValue];
}

- (void)setUserQueryData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__PLGenericAlbum_setUserQueryData___block_invoke;
  v6[3] = &unk_1E7568790;
  objc_copyWeak(&v8, &location);
  v5 = dataCopy;
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

- (void)setKindValue:(int)value
{
  v4 = [MEMORY[0x1E696AD98] numberWithShort:value];
  [(PLGenericAlbum *)self setKind:v4];
}

- (int)kindValue
{
  kind = [(PLGenericAlbum *)self kind];
  shortValue = [kind shortValue];

  return shortValue;
}

- (void)_validateAndUpdateKeyAssetsIfNeeded
{
  v65[2] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(PLGenericAlbum *)self objectIDsForRelationshipNamed:@"customKeyAsset"];
  firstObject = [v4 firstObject];
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
  v10 = [objc_opt_class() _validateCurrentKeyAssetIDs:v6 fetchedKeyAssetIDs:v7 customKeyAssetID:firstObject maxCount:{-[PLGenericAlbum keyAssetsMaxCount](self, "keyAssetsMaxCount")}];
  if (firstObject && ([v7 containsObject:firstObject] & 1) == 0)
  {
    v13 = MEMORY[0x1E695D5E0];
    +[PLManagedAsset entityName];
    v14 = v44 = v7;
    [v13 fetchRequestWithEntityName:v14];
    v15 = v46 = v6;

    [v15 setIncludesPendingChanges:0];
    v16 = MEMORY[0x1E696AB28];
    predicateForKeyAssetsCandidates = [(PLGenericAlbum *)self predicateForKeyAssetsCandidates];
    v65[0] = predicateForKeyAssetsCandidates;
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF = %@", firstObject];
    v18 = v50 = firstObject;
    v65[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v20 = [v16 andPredicateWithSubpredicates:v19];

    [v15 setPredicate:v20];
    [v15 setResultType:1];
    managedObjectContext = [(PLGenericAlbum *)self managedObjectContext];
    v56 = v49;
    v22 = [managedObjectContext executeFetchRequest:v15 error:&v56];
    v23 = v56;

    v11 = [v22 count] != 1;
    v7 = v44;

    v6 = v46;
    v49 = v23;
    firstObject = v50;
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
      array = [MEMORY[0x1E695DF70] array];
      if ((v10 & 1) == 0)
      {
        [array addObject:@"needs update"];
      }

      if (v11)
      {
        [array addObject:@"reset custom key"];
      }

      v24 = PLBackendGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        uuid = [(PLGenericAlbum *)self uuid];
        [(PLGenericAlbum *)self objectID];
        v27 = v26 = v7;
        *buf = 138543874;
        v60 = uuid;
        v61 = 2114;
        v62 = v27;
        v63 = 2114;
        v64 = array;
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
        if (firstObject)
        {
          managedObjectContext2 = [(PLGenericAlbum *)self managedObjectContext];
          v51 = firstObject;
          v30 = [managedObjectContext2 objectWithID:firstObject];

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
                managedObjectContext3 = [(PLGenericAlbum *)self managedObjectContext];
                v39 = [managedObjectContext3 objectWithID:v37];

                [v28 addObject:v39];
                v40 = [v28 count];
                keyAssetsMaxCount = [(PLGenericAlbum *)self keyAssetsMaxCount];

                if (v40 >= keyAssetsMaxCount)
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
          firstObject = v51;
          v7 = v45;
          v6 = v47;
          v12 = array;
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

- (id)fetchKeyAssetCandidates:(id *)candidates
{
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  [v7 setIncludesPendingChanges:0];
  [v7 setFetchLimit:{-[PLGenericAlbum keyAssetsMaxCount](self, "keyAssetsMaxCount")}];
  predicateForKeyAssetsCandidates = [(PLGenericAlbum *)self predicateForKeyAssetsCandidates];
  [v7 setPredicate:predicateForKeyAssetsCandidates];

  sortDescriptorsForKeyAssetsCandidates = [(PLGenericAlbum *)self sortDescriptorsForKeyAssetsCandidates];
  [v7 setSortDescriptors:sortDescriptorsForKeyAssetsCandidates];

  [v7 setResultType:1];
  managedObjectContext = [(PLGenericAlbum *)self managedObjectContext];
  v11 = [managedObjectContext executeFetchRequest:v7 error:candidates];

  return v11;
}

- (id)sortDescriptorsForKeyAssetsCandidates
{
  v3 = objc_opt_class();
  customSortKey = [(PLGenericAlbum *)self customSortKey];
  customSortAscending = [(PLGenericAlbum *)self customSortAscending];

  return [v3 sortDescriptorsForAssetsInAlbumWithSortKey:customSortKey ascending:customSortAscending];
}

- (id)predicateForKeyAssetsCandidates
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AE18];
  objectID = [(PLGenericAlbum *)self objectID];
  v4 = [v2 predicateWithFormat:@"%K CONTAINS %@", @"albums", objectID];

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
  kindValue = [(PLGenericAlbum *)self kindValue];
  photoLibrary = [(PLGenericAlbum *)self photoLibrary];
  title = +[PLGenericAlbum localizedTitleForAlbumKind:cplEnabled:](PLGenericAlbum, "localizedTitleForAlbumKind:cplEnabled:", kindValue, [photoLibrary isCloudPhotoLibraryEnabled]);

  if (!title)
  {
    title = [(PLGenericAlbum *)self title];
  }

  return title;
}

- (unint64_t)assetsCount
{
  v3 = objc_autoreleasePoolPush();
  assets = [(PLGenericAlbum *)self assets];
  v5 = [assets count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (unint64_t)approximateCount
{
  v3 = objc_autoreleasePoolPush();
  assets = [(PLGenericAlbum *)self assets];
  v5 = [assets count];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (void)_repairTitleIfEmpty
{
  localizedTitle = [(PLGenericAlbum *)self localizedTitle];
  v7 = localizedTitle;
  if (!localizedTitle || (v4 = [localizedTitle length], v5 = v7, !v4))
  {
    localizedRecoveredTitle = [objc_opt_class() localizedRecoveredTitle];
    [(PLGenericAlbum *)self setTitle:localizedRecoveredTitle];

    v5 = v7;
  }
}

- (void)repairUuidAndTitleWithRecoveryReason:(const char *)reason
{
  v14 = *MEMORY[0x1E69E9840];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLGenericAlbum *)self setUuid:uUIDString];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      objectID = [(PLGenericAlbum *)self objectID];
      v8 = 136315650;
      reasonCopy = reason;
      v10 = 2112;
      v11 = objectID;
      v12 = 2112;
      v13 = uUIDString;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Repaired an album without a UUID in %s: %@ %@", &v8, 0x20u);
    }
  }

  [(PLGenericAlbum *)self _repairTitleIfEmpty];
}

- (BOOL)_isValidLibraryRoleForUpdate
{
  photoLibrary = [(PLGenericAlbum *)self photoLibrary];
  role = [photoLibrary role];

  return (role - 5) < 0xFFFFFFFFFFFFFFFELL;
}

- (BOOL)_isValidChangeSourceForUpdate
{
  managedObjectContext = [(PLGenericAlbum *)self managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  managedObjectContext2 = [(PLGenericAlbum *)self managedObjectContext];
  changeSource = [managedObjectContext2 changeSource];

  return (changeSource - 3) < 0xFFFFFFFE;
}

- (BOOL)_checkLastModifiedDateIfNeeded
{
  changedValues = [(PLGenericAlbum *)self changedValues];
  if ([changedValues count] && (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"lastModifiedDate"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4) && -[PLGenericAlbum _isValidChangeSourceForUpdate](self, "_isValidChangeSourceForUpdate") && -[PLGenericAlbum _isValidLibraryRoleForUpdate](self, "_isValidLibraryRoleForUpdate"))
  {
    v5 = MEMORY[0x1E695DFD8];
    allKeys = [changedValues allKeys];
    v7 = [v5 setWithArray:allKeys];

    listOfLastModifiedDateChangeProperties = [(PLGenericAlbum *)self listOfLastModifiedDateChangeProperties];
    v9 = [v7 intersectsSet:listOfLastModifiedDateChangeProperties];
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
    uuid = [(PLGenericAlbum *)self uuid];

    if (!uuid)
    {
      [(PLGenericAlbum *)self repairUuidAndTitleWithRecoveryReason:"[PLGenericAlbum willSave]"];
      PLSimulateCrash();
    }
  }

  managedObjectContext = [(PLGenericAlbum *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([managedObjectContext isInitializingSingletons] & 1) != 0 || (-[PLGenericAlbum isDeleted](self, "isDeleted") & 1) != 0 || !-[PLGenericAlbum isUserCreated](self, "isUserCreated") || (-[PLGenericAlbum parentFolder](self, "parentFolder"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
LABEL_24:
      if (([(PLGenericAlbum *)self isDeleted]& 1) == 0 && [(PLGenericAlbum *)self _checkLastModifiedDateIfNeeded])
      {
        v18 = [MEMORY[0x1E695DF00] now];
        [(PLManagedObject *)self pl_safeSetValue:v18 forKey:@"lastModifiedDate" valueDidChangeHandler:0];
        parentFolder = [(PLGenericAlbum *)self parentFolder];
        v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        do
        {
          uuid2 = [parentFolder uuid];
          if (uuid2)
          {
            [v20 addObject:uuid2];
          }

          kind = [parentFolder kind];
          integerValue = [kind integerValue];

          if (integerValue != 4000)
          {
            break;
          }

          v24 = parentFolder;
          [parentFolder setLastModifiedDate:v18];
          parentFolder = [parentFolder parentFolder];

          uuid3 = [parentFolder uuid];
          if (!uuid3)
          {
            break;
          }

          v26 = uuid3;
          uuid4 = [parentFolder uuid];
          v28 = [v20 containsObject:uuid4];
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
        uuid5 = [(PLGenericAlbum *)self uuid];
        objectID = [(PLGenericAlbum *)self objectID];
        *buf = 138543618;
        v31 = uuid5;
        v32 = 2114;
        v33 = objectID;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Skipping automatic assignment of nil parent folder to avoid willSave looping for album: %{public}@ %{public}@", buf, 0x16u);
      }

      goto LABEL_24;
    }

    if ([(PLGenericAlbum *)self isProjectAlbum])
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uuid6 = [(PLGenericAlbum *)self uuid];
        objectID2 = [(PLGenericAlbum *)self objectID];
        *buf = 138543618;
        v31 = uuid6;
        v32 = 2114;
        v33 = objectID2;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Setting default (rootProjectFolder) for nil parent folder: %{public}@ %{public}@", buf, 0x16u);
      }

      photoLibrary = [managedObjectContext photoLibrary];
      v13 = [PLGenericAlbum projectAlbumRootFolderInLibrary:photoLibrary];
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
        uuid7 = [(PLGenericAlbum *)self uuid];
        objectID3 = [(PLGenericAlbum *)self objectID];
        *buf = 138543618;
        v31 = uuid7;
        v32 = 2114;
        v33 = objectID3;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Setting default (rootFolder) for nil parent folder: %{public}@ %{public}@", buf, 0x16u);
      }

      photoLibrary = [managedObjectContext photoLibrary];
      v13 = [PLGenericAlbum rootFolderInLibrary:photoLibrary];
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
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLGenericAlbum *)self setUuid:uUIDString];

  [(PLGenericAlbum *)self setKindValue:2];
  [(PLGenericAlbum *)self setPendingItemsCount:0];
  [(PLGenericAlbum *)self setPendingItemsType:1];
  [(PLGenericAlbum *)self registerForChanges];
  date = [MEMORY[0x1E695DF00] date];
  [(PLGenericAlbum *)self setCreationDate:date];
}

- (PLPhotoLibrary)photoLibrary
{
  managedObjectContext = [(PLGenericAlbum *)self managedObjectContext];
  photoLibrary = [managedObjectContext photoLibrary];

  return photoLibrary;
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

- (void)applyTrashedState:(signed __int16)state cascade:(BOOL)cascade
{
  cascadeCopy = cascade;
  stateCopy = state;
  if (state == 1)
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  else
  {
    date = 0;
  }

  v8 = date;
  [(PLGenericAlbum *)self _applyTrashedState:stateCopy date:stateCopy < 2 cascade:date];
}

- (void)_applyTrashedState:(signed __int16)state date:(BOOL)date :(id)a5 cascade:(BOOL)cascade
{
  cascadeCopy = cascade;
  dateCopy = date;
  stateCopy = state;
  v23 = *MEMORY[0x1E69E9840];
  v11 = a5;
  if (![(PLGenericAlbum *)self canMoveToTrash])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGenericAlbum.m" lineNumber:211 description:@"expect trashable album"];
  }

  if (((stateCopy & 0xFFFFFFFD) == 0) == [(PLGenericAlbum *)self trashedState])
  {
    [(PLGenericAlbum *)self setTrashedState:stateCopy];
    if (dateCopy)
    {
      [(PLGenericAlbum *)self setTrashedDate:v11];
    }

    if (stateCopy == 2)
    {
      [(PLGenericAlbum *)self delete];
    }
  }

  if ([(PLGenericAlbum *)self isFolder]&& cascadeCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    childCollections = [(PLGenericAlbum *)self childCollections];
    v13 = [childCollections countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(childCollections);
          }

          [*(*(&v18 + 1) + 8 * v16++) _applyTrashedState:stateCopy date:dateCopy :v11 cascade:1];
        }

        while (v14 != v16);
        v14 = [childCollections countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (BOOL)canMoveToTrash
{
  kindValue = [(PLGenericAlbum *)self kindValue];
  if ((kindValue - 1507) >= 2 && kindValue != 4000 && kindValue != 2)
  {
    return 0;
  }

  return [(PLGenericAlbum *)self canPerformEditOperation:32];
}

- (void)delete
{
  managedObjectContext = [(PLGenericAlbum *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (void)dealloc
{
  [(PLGenericAlbum *)self unregisterForChanges];
  [(PLGenericAlbum *)self unregisterAllDerivedAlbums];
  v3.receiver = self;
  v3.super_class = PLGenericAlbum;
  [(PLGenericAlbum *)&v3 dealloc];
}

+ (id)_albumsMatchingPredicate:(id)predicate expectedResultCount:(id)count inManagedObjectContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  countCopy = count;
  contextCopy = context;
  if (countCopy && ![countCopy integerValue])
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc_init(MEMORY[0x1E695D5E0]);
    v13 = [self entityInManagedObjectContext:contextCopy];
    [v12 setEntity:v13];

    [v12 setPredicate:predicateCopy];
    if (!countCopy || [countCopy integerValue] >= 0x65)
    {
      [v12 setFetchBatchSize:100];
    }

    v21 = 0;
    v14 = [contextCopy executeFetchRequest:v12 error:&v21];
    v15 = v21;
    v16 = v15;
    if (v14)
    {

      objc_autoreleasePoolPop(v11);
      array = v14;
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
      array = [MEMORY[0x1E695DEC8] array];
    }

    v19 = array;
  }

  return v19;
}

+ (id)fetchAlbumsWithUUIDs:(id)ds propertiesToFetch:(id)fetch managedObjectContext:(id)context
{
  dsCopy = ds;
  fetchCopy = fetch;
  v9 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  v11 = +[PLGenericAlbum entityName];
  v12 = [v9 fetchRequestWithEntityName:v11];

  if (fetchCopy)
  {
    [v12 setPropertiesToFetch:fetchCopy];
  }

  [v12 setIncludesPendingChanges:0];
  if ([dsCopy count] >= 0x65)
  {
    [v12 setFetchBatchSize:100];
  }

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", dsCopy];
  [v12 setPredicate:dsCopy];

  [v12 setFetchLimit:{objc_msgSend(dsCopy, "count")}];
  v18 = 0;
  v14 = [contextCopy executeFetchRequest:v12 error:&v18];

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

+ (PLGenericAlbum)albumWithKind:(int)kind inManagedObjectContext:(id)context
{
  v4 = *&kind;
  contextCopy = context;
  v7 = objc_autoreleasePoolPush();
  v8 = [self albumsWithKind:v4 inManagedObjectContext:contextCopy];
  lastObject = [v8 lastObject];

  objc_autoreleasePoolPop(v7);

  return lastObject;
}

+ (id)insertAlbumWithKind:(int)kind title:(id)title uuid:(id)uuid inManagedObjectContext:(id)context
{
  v8 = *&kind;
  titleCopy = title;
  uuidCopy = uuid;
  contextCopy = context;
  v14 = objc_autoreleasePoolPush();
  if (v8 == 1505)
  {
    if (objc_opt_class() == self)
    {
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = currentHandler;
    v17 = @"kPhotoLibraryAlbumKind_CloudSharedAlbum can only be PLCloudSharedAlbum.";
    v18 = a2;
    selfCopy2 = self;
    v20 = 2157;
    goto LABEL_12;
  }

  if (v8 == 1500 && objc_opt_class() != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = currentHandler;
    v17 = @"kPhotoLibraryAlbumKind_PhotoStream can only be PLPhotoStreamAlbum.";
    v18 = a2;
    selfCopy2 = self;
    v20 = 2154;
LABEL_12:
    [currentHandler handleFailureInMethod:v18 object:selfCopy2 file:@"PLGenericAlbum.m" lineNumber:v20 description:v17];
  }

LABEL_6:
  v21 = [self insertInManagedObjectContext:contextCopy];
  [v21 setKindValue:v8];
  [v21 setTitle:titleCopy];
  if (uuidCopy)
  {
    [v21 setUuid:uuidCopy];
  }

  objc_autoreleasePoolPop(v14);

  return v21;
}

+ (id)eventsWithName:(id)name andImportSessionIdentifier:(id)identifier inManagedObjectContext:(id)context
{
  v8 = MEMORY[0x1E696AE18];
  v9 = MEMORY[0x1E696AD98];
  contextCopy = context;
  identifierCopy = identifier;
  nameCopy = name;
  v13 = [v9 numberWithInt:12];
  identifierCopy = [v8 predicateWithFormat:@"kind == %@ AND title == %@ AND importSessionID == %@", v13, nameCopy, identifierCopy];

  v15 = [self _albumsMatchingPredicate:identifierCopy expectedResultCount:0 inManagedObjectContext:contextCopy];

  return v15;
}

+ (id)albumsWithKind:(int)kind inManagedObjectContext:(id)context
{
  v4 = *&kind;
  v6 = MEMORY[0x1E696AE18];
  v7 = MEMORY[0x1E696AD98];
  contextCopy = context;
  v9 = [v7 numberWithInt:v4];
  v10 = [v6 predicateWithFormat:@"kind == %@", v9];

  v11 = [self _albumsMatchingPredicate:v10 expectedResultCount:0 inManagedObjectContext:contextCopy];

  return v11;
}

+ (id)allAlbumsRegisteredWithManagedObjectContext:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v7 = [self entityInManagedObjectContext:contextCopy];
  subentities = [v7 subentities];
  v9 = [subentities count];

  v32 = v7;
  if (v9)
  {
    v31 = v5;
    subentities2 = [v7 subentities];
    registeredObjects2 = [subentities2 arrayByAddingObject:v7];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    registeredObjects = [contextCopy registeredObjects];
    v13 = [registeredObjects countByEnumeratingWithState:&v37 objects:v42 count:16];
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
            objc_enumerationMutation(registeredObjects);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          entity = [v17 entity];
          v19 = [registeredObjects2 indexOfObjectIdenticalTo:entity];

          if (v19 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [array addObject:v17];
          }
        }

        v14 = [registeredObjects countByEnumeratingWithState:&v37 objects:v42 count:16];
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
    registeredObjects2 = [contextCopy registeredObjects];
    v20 = [registeredObjects2 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = v5;
      v23 = contextCopy;
      v24 = *v34;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(registeredObjects2);
          }

          v26 = *(*(&v33 + 1) + 8 * j);
          entity2 = [v26 entity];

          v28 = entity2 == v32;
          v7 = v32;
          if (v28)
          {
            [array addObject:v26];
          }
        }

        v21 = [registeredObjects2 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
      contextCopy = v23;
      v5 = v22;
    }
  }

  v29 = [array copy];
  objc_autoreleasePoolPop(v5);

  return v29;
}

+ (id)allSyncedAlbumsInManagedObjectContext:(id)context
{
  v4 = MEMORY[0x1E696AE18];
  contextCopy = context;
  1552 = [v4 predicateWithFormat:@"kind in {%d, %d, %d, %d}", 15, 1550, 1551, 1552];
  v7 = [self _albumsMatchingPredicate:1552 expectedResultCount:0 inManagedObjectContext:contextCopy];

  return v7;
}

+ (id)albumFromGroupURL:(id)l photoLibrary:(id)library
{
  lCopy = l;
  libraryCopy = library;
  v8 = objc_autoreleasePoolPush();
  v9 = [self uuidFromGroupURL:lCopy];
  if (![v9 length] || (objc_msgSend(self, "albumWithUUID:inLibrary:", v9, libraryCopy), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
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

+ (id)insertNewCloudSharedAlbumWithTitle:(id)title lastInterestingDate:(id)date intoLibrary:(id)library
{
  v25 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  dateCopy = date;
  libraryCopy = library;
  v12 = MEMORY[0x1E69BF2A0];
  pathManager = [libraryCopy pathManager];
  libraryURL = [pathManager libraryURL];
  if ([v12 isSystemPhotoLibraryURL:libraryURL])
  {

    goto LABEL_4;
  }

  isUnitTesting = [libraryCopy isUnitTesting];

  if (isUnitTesting)
  {
LABEL_4:
    v16 = [self _insertNewAlbumWithKind:1505 title:titleCopy lastInterestingDate:dateCopy intoLibrary:libraryCopy];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && v16)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLGenericAlbum.m" lineNumber:2026 description:{@"Cloud shared album is of unexpected class: %@", v16}];
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
    pathManager2 = [libraryCopy pathManager];
    libraryURL2 = [pathManager2 libraryURL];
    *buf = 138412290;
    v24 = libraryURL2;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_FAULT, "Unable to insert new cloud shared album because library is not the SPL: %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_14:

  return v16;
}

+ (id)insertNewProjectAlbumWithTitle:(id)title documentType:(id)type intoLibrary:(id)library
{
  typeCopy = type;
  v9 = [self _insertNewAlbumWithKind:1508 title:title lastInterestingDate:0 intoLibrary:library];
  v10 = v9;
  if (v9)
  {
    [v9 setProjectDocumentType:typeCopy];
  }

  return v10;
}

+ (id)insertNewSmartAlbumIntoLibrary:(id)library
{
  managedObjectContext = [library managedObjectContext];
  v4 = [(PLManagedObject *)PLFetchingAlbum insertInManagedObjectContext:managedObjectContext];

  [v4 setKindValue:1507];

  return v4;
}

+ (id)_insertNewAlbumWithKind:(int)kind title:(id)title lastInterestingDate:(id)date intoLibrary:(id)library
{
  v8 = *&kind;
  v52 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  dateCopy = date;
  libraryCopy = library;
  v12 = libraryCopy;
  if (v8 <= 1504)
  {
    if (v8 == 15)
    {
      v13 = PLManagedLegacyFaceAlbum;
LABEL_10:
      managedObjectContext = [libraryCopy managedObjectContext];
      v15 = [(__objc2_class *)v13 insertInManagedObjectContext:managedObjectContext];

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

  managedObjectContext2 = [libraryCopy managedObjectContext];
  v15 = [(PLManagedObject *)PLCloudSharedAlbum insertInManagedObjectContext:managedObjectContext2];

  [v15 updateCloudLastInterestingChangeDateWithDate:dateCopy];
  if (v15)
  {
LABEL_11:
    [v15 setKindValue:v8];
    [v15 setTitle:titleCopy];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
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
        v20 = array;
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
              v20 = array2;
LABEL_35:
              [v20 addObject:v19];
            }

LABEL_36:
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v22 = array;
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

                  albums = [*(*(&v40 + 1) + 8 * i) albums];
                  [albums addObject:v15];
                }

                v26 = [v22 countByEnumeratingWithState:&v40 objects:v45 count:16];
              }

              while (v26);
            }

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            managedObjectContext3 = array2;
            v30 = [managedObjectContext3 countByEnumeratingWithState:&v36 objects:v44 count:16];
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
                    objc_enumerationMutation(managedObjectContext3);
                  }

                  [*(*(&v36 + 1) + 8 * j) insertIntoOrderedAlbumsAtIndexByPriorityForAlbum:{v15, v36}];
                }

                v31 = [managedObjectContext3 countByEnumeratingWithState:&v36 objects:v44 count:16];
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

  managedObjectContext3 = [v12 managedObjectContext];
  *buf = 67109634;
  v47 = v8;
  v48 = 2112;
  v49 = v12;
  v50 = 2112;
  v51 = managedObjectContext3;
  _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Unable to insert new album with kind %d. Library shutting down? library %@ moc %@", buf, 0x1Cu);
LABEL_51:

LABEL_52:

  return v15;
}

+ (id)albumsMatchingPredicate:(id)predicate expectedResultCount:(id)count inLibrary:(id)library
{
  countCopy = count;
  predicateCopy = predicate;
  managedObjectContext = [library managedObjectContext];
  v10 = [PLGenericAlbum _albumsMatchingPredicate:predicateCopy expectedResultCount:countCopy inManagedObjectContext:managedObjectContext];

  return v10;
}

+ (void)removeInvalidAlbumsAndFoldersInManagedObjectContext:(id)context
{
  contextCopy = context;
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

  1508 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind == %d OR kind == %d OR kind == %d OR kind == %d) AND uuid = nil", 2, 4000, 1507, 1508];
  v8 = [self _albumsMatchingPredicate:1508 expectedResultCount:0 inManagedObjectContext:contextCopy];
  [self _removeAlbumsAndFolders:v8 inManagedObjectContext:contextCopy];

  objc_autoreleasePoolPop(v5);
}

+ (void)removeTrashedAlbumsAndFoldersForCloudResetInManagedObjectContext:(id)context
{
  contextCopy = context;
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
  v8 = [self _albumsMatchingPredicate:v7 expectedResultCount:0 inManagedObjectContext:contextCopy];
  [self _removeAlbumsAndFolders:v8 inManagedObjectContext:contextCopy];

  objc_autoreleasePoolPop(v5);
}

+ (void)removeEmptyAlbumsAndFoldersForCloudResetInManagedObjectContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
  v10 = [contextCopy executeFetchRequest:v8 error:&v22];
  v11 = v22;
  if (v10)
  {
    [self _removeAlbumsAndFolders:v10 inManagedObjectContext:contextCopy];
  }

  else
  {
    selfCopy = self;
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch empty albums %@: %@", buf, 0x16u);
    }

    self = selfCopy;
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
  v18 = [contextCopy executeFetchRequest:v16 error:&v21];
  v19 = v21;
  if (v18)
  {
    [self _removeAlbumsAndFolders:v18 inManagedObjectContext:contextCopy];
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

+ (void)removeAllUserAlbumsAndFoldersInLibrary:(id)library
{
  libraryCopy = library;
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

  1508 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind == %d OR kind == %d OR kind == %d OR kind == %d)", 2, 4000, 1507, 1508];
  managedObjectContext = [libraryCopy managedObjectContext];
  v9 = [self _albumsMatchingPredicate:1508 expectedResultCount:0 inManagedObjectContext:managedObjectContext];

  managedObjectContext2 = [libraryCopy managedObjectContext];
  [self _removeAlbumsAndFolders:v9 inManagedObjectContext:managedObjectContext2];

  objc_autoreleasePoolPop(v5);
}

+ (void)_removeAlbumsAndFolders:(id)folders inManagedObjectContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  foldersCopy = folders;
  contextCopy = context;
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
  v8 = [contextCopy enumerateWithIncrementalSaveUsingObjects:foldersCopy withBlock:v16];
  if (v8)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v9 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [foldersCopy count];
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

+ (void)resetAlbumStateForCloudInLibrary:(id)library
{
  v19 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
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
  managedObjectContext = [libraryCopy managedObjectContext];
  v16 = 0;
  v12 = [managedObjectContext executeRequest:v9 error:&v16];
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
      result = [v12 result];
      *buf = 138412290;
      v18 = result;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Batch updated cloudLocalState for %@ albums", buf, 0xCu);
    }

    goto LABEL_12;
  }

  objc_autoreleasePoolPop(v4);
}

+ (id)albumsToUploadInitiallyInLibrary:(id)library limit:(unint64_t)limit
{
  libraryCopy = library;
  v7 = objc_autoreleasePoolPush();
  managedObjectContext = [libraryCopy managedObjectContext];
  v9 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v9 setRelationshipKeyPathsForPrefetching:&unk_1F0FBF6E8];
  v10 = [self entityInManagedObjectContext:managedObjectContext];
  [v9 setEntity:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(kind == %d OR kind == %d OR kind == %d OR kind == %d OR kind == %d OR (kind == %d AND projectDocumentType != %@ AND projectDocumentType != %@)) AND cloudLocalState == %d", 2, 4000, 1507, 3999, 3998, 1508, @"com.apple.photos.projects.legacy", @"com.apple.photos.projects.slideshow", 0];
  [v9 setPredicate:v11];
  [v9 setFetchLimit:limit];
  v15 = 0;
  v12 = [managedObjectContext executeFetchRequest:v9 error:&v15];
  v13 = [self includeUnpushedParentsForAlbums:v12 limit:limit];

  objc_autoreleasePoolPop(v7);

  return v13;
}

+ (id)includeUnpushedParentsForAlbums:(id)albums limit:(unint64_t)limit
{
  albumsCopy = albums;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:albumsCopy];
  v8 = [self _unpushedParentsOfAlbums:albumsCopy];
  if ([v8 count])
  {
    do
    {
      v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
      [v7 insertObjects:v8 atIndexes:v9];

      v10 = [self _unpushedParentsOfAlbums:v8];

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
  array = [v11 array];
  v13 = MEMORY[0x1E696AC90];
  v14 = [array count];
  if (v14 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v14;
  }

  v16 = [v13 indexSetWithIndexesInRange:{0, limitCopy}];
  v17 = [array objectsAtIndexes:v16];

  return v17;
}

+ (id)_unpushedParentsOfAlbums:(id)albums
{
  v20 = *MEMORY[0x1E69E9840];
  albumsCopy = albums;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = albumsCopy;
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
        parentFolder = [v10 parentFolder];
        v12 = parentFolder;
        if (parentFolder && [parentFolder cloudLocalState] != 1 && (objc_msgSend(v12, "isRegularRootFolder") & 1) == 0 && (objc_msgSend(v12, "isProjectAlbumRootFolder") & 1) == 0)
        {
          parentFolder2 = [v10 parentFolder];
          [array addObject:parentFolder2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)albumsForStreamID:(id)d inLibrary:(id)library
{
  dCopy = d;
  libraryCopy = library;
  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E696AE18];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:1500];
  dCopy = [v8 predicateWithFormat:@"kind == %@ AND title == %@", v9, dCopy];

  managedObjectContext = [libraryCopy managedObjectContext];
  v12 = [PLGenericAlbum _albumsMatchingPredicate:dCopy expectedResultCount:0 inManagedObjectContext:managedObjectContext];

  objc_autoreleasePoolPop(v7);

  return v12;
}

+ (PLGenericAlbum)albumWithName:(id)name inLibrary:(id)library
{
  nameCopy = name;
  libraryCopy = library;
  if (nameCopy)
  {
    v7 = objc_autoreleasePoolPush();
    nameCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"title = %@", nameCopy];
    managedObjectContext = [libraryCopy managedObjectContext];
    v10 = [PLGenericAlbum _albumsMatchingPredicate:nameCopy expectedResultCount:&unk_1F0FBBD10 inManagedObjectContext:managedObjectContext];

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

+ (PLGenericAlbum)albumWithObjectID:(id)d inLibrary:(id)library
{
  dCopy = d;
  libraryCopy = library;
  if (dCopy)
  {
    v7 = objc_autoreleasePoolPush();
    managedObjectContext = [libraryCopy managedObjectContext];
    v14 = 0;
    v9 = [managedObjectContext existingObjectWithID:dCopy error:&v14];
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

+ (PLGenericAlbum)albumWithUUID:(id)d inLibrary:(id)library
{
  dCopy = d;
  libraryCopy = library;
  v8 = objc_autoreleasePoolPush();
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid == %@", dCopy];
  managedObjectContext = [libraryCopy managedObjectContext];
  v11 = [self _albumsMatchingPredicate:dCopy expectedResultCount:&unk_1F0FBBD10 inManagedObjectContext:managedObjectContext];

  lastObject = [v11 lastObject];

  objc_autoreleasePoolPop(v8);

  return lastObject;
}

+ (id)allAlbumsInLibrary:(id)library
{
  managedObjectContext = [library managedObjectContext];
  v5 = [self allAlbumsInManagedObjectContext:managedObjectContext];

  return v5;
}

+ (id)projectAlbumRootFolderInLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGenericAlbum.m" lineNumber:1531 description:{@"Invalid parameter not satisfying: %@", @"aLibrary"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v7 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:3998 inManagedObjectContext:managedObjectContext];
  if (!v7)
  {
    [libraryCopy repairSingletonObjects];
    v7 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:3998 inManagedObjectContext:managedObjectContext];
  }

  return v7;
}

+ (id)rootFolderInLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGenericAlbum.m" lineNumber:1519 description:{@"Invalid parameter not satisfying: %@", @"aLibrary"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v7 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:3999 inManagedObjectContext:managedObjectContext];
  if (!v7)
  {
    [libraryCopy repairSingletonObjects];
    v7 = [(PLGenericAlbum *)PLManagedFolder albumWithKind:3999 inManagedObjectContext:managedObjectContext];
  }

  return v7;
}

+ (id)_singletonManagedAlbumWithKind:(int)kind library:(id)library
{
  v4 = *&kind;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGenericAlbum.m" lineNumber:1507 description:{@"Invalid parameter not satisfying: %@", @"aLibrary"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v9 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:v4 inManagedObjectContext:managedObjectContext];
  if (!v9)
  {
    [libraryCopy repairSingletonObjects];
    v9 = [(PLGenericAlbum *)PLManagedAlbum albumWithKind:v4 inManagedObjectContext:managedObjectContext];
  }

  return v9;
}

+ (id)_singletonFetchingAlbumWithKind:(int)kind library:(id)library
{
  v4 = *&kind;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGenericAlbum.m" lineNumber:1495 description:{@"Invalid parameter not satisfying: %@", @"aLibrary"}];
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  v9 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:v4 inManagedObjectContext:managedObjectContext];
  if (!v9)
  {
    [libraryCopy repairSingletonObjects];
    v9 = [(PLGenericAlbum *)PLFetchingAlbum albumWithKind:v4 inManagedObjectContext:managedObjectContext];
  }

  return v9;
}

+ (void)updateAssetAssociativityInAlbums:(id)albums photoLibrary:(id)library
{
  v34[1] = *MEMORY[0x1E69E9840];
  albumsCopy = albums;
  libraryCopy = library;
  if ([albumsCopy count])
  {
    v8 = MEMORY[0x1E695D5E0];
    v9 = +[PLManagedAlbum entityName];
    v10 = [v8 fetchRequestWithEntityName:v9];

    albumsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", albumsCopy];
    [v10 setPredicate:albumsCopy];

    v34[0] = @"assets";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    [v10 setRelationshipKeyPathsForPrefetching:v12];

    managedObjectContext = [libraryCopy managedObjectContext];
    v26 = 0;
    v14 = [managedObjectContext executeFetchRequest:v10 error:&v26];
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

+ (id)uuidFromGroupURL:(id)l
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v4 = objc_autoreleasePoolPush();
  scheme = [lCopy scheme];
  if (([scheme isEqualToString:@"assets-library"] & 1) == 0)
  {

    goto LABEL_19;
  }

  host = [lCopy host];
  v7 = [host isEqualToString:@"group"];

  if (!v7)
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  query = [lCopy query];
  if ([query length] >= 0x65)
  {
LABEL_18:

    goto LABEL_19;
  }

  v9 = [query componentsSeparatedByString:@"&"];
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
  v22 = query;
  v23 = lCopy;
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

  lCopy = v23;
  v20 = v24;
LABEL_20:
  objc_autoreleasePoolPop(v4);

  return v20;
}

+ (BOOL)_validateCurrentKeyAssetIDs:(id)ds fetchedKeyAssetIDs:(id)iDs customKeyAssetID:(id)d maxCount:(int64_t)count
{
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  if (!dCopy)
  {
    if (![dsCopy count] && !objc_msgSend(iDsCopy, "count"))
    {
      v12 = 1;
      goto LABEL_14;
    }

    v13 = iDsCopy;
    v14 = dsCopy;
    goto LABEL_13;
  }

  if (![dsCopy indexOfObject:dCopy])
  {
    v15 = [iDsCopy indexOfObject:dCopy];
    v16 = iDsCopy;
    v13 = v16;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v16 count] != count)
      {
LABEL_12:
        v18 = dsCopy;
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

+ (id)sortDescriptorsForAssetsInAlbumWithSortKey:(unsigned int)key ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v17 = *MEMORY[0x1E69E9840];
  if (key <= 3)
  {
    if (key > 1)
    {
      v6 = MEMORY[0x1E696AEB0];
      if (key == 2)
      {
        v7 = @"modificationDate";
      }

      else
      {
        v7 = @"addedDate";
      }

      goto LABEL_19;
    }

    if (key)
    {
      if (key != 1)
      {
LABEL_25:
        v14 = PLBackendGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v16[0] = 67109120;
          v16[1] = key;
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

  if (key <= 5)
  {
    if (key == 4)
    {
      v6 = MEMORY[0x1E696AEB0];
      v7 = @"trashedDate";
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (key == 6)
  {
    v6 = MEMORY[0x1E696AEB0];
    v7 = @"cloudBatchPublishDate";
    goto LABEL_19;
  }

  if (key == 101)
  {
LABEL_14:
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"additionalAttributes.title" ascending:ascending selector:sel_localizedCaseInsensitiveCompare_];
    goto LABEL_20;
  }

  if (key != 100)
  {
    goto LABEL_25;
  }

LABEL_15:
  v6 = MEMORY[0x1E696AEB0];
  v7 = @"albums";
LABEL_19:
  v8 = [v6 sortDescriptorWithKey:v7 ascending:ascending];
LABEL_20:
  v9 = v8;
  if (!v8)
  {
    goto LABEL_25;
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
  if (key == 1 || ([MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:ascendingCopy], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "addObject:", v11), v11, key != 3))
  {
    v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
    [v10 addObject:v12];
  }

  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  [v10 addObject:v13];

LABEL_28:

  return v10;
}

+ (void)updateKeyAssetsInAlbums:(id)albums photoLibrary:(id)library
{
  v39[2] = *MEMORY[0x1E69E9840];
  albumsCopy = albums;
  libraryCopy = library;
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLManagedAlbum entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = +[PLGenericAlbum predicateForAlbumsSupportingCachedKeyAssets];
  if (albumsCopy)
  {
    albumsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", albumsCopy];
    v13 = MEMORY[0x1E696AB28];
    v39[0] = albumsCopy;
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

  managedObjectContext = [libraryCopy managedObjectContext];
  v30 = 0;
  v18 = [managedObjectContext executeFetchRequest:v10 error:&v30];
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

+ (BOOL)supportsCachedKeyAssetsWithAlbumKind:(int)kind
{
  v3 = kind == 1508;
  if (kind == 1505)
  {
    v3 = 1;
  }

  return kind == 2 || v3;
}

+ (id)localizedTitleForAlbumKind:(int)kind cplEnabled:(BOOL)enabled
{
  if (kind > 3997)
  {
    if (kind > 4002)
    {
      if (kind > 4004)
      {
        if (kind != 4005)
        {
          if (kind != 4006)
          {
            goto LABEL_26;
          }

          goto LABEL_31;
        }
      }

      else if (kind == 4003)
      {
        goto LABEL_31;
      }
    }

    else if (kind <= 4000)
    {
      if (kind == 3998 || kind == 3999)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    DCIM_IS_PAD();
    goto LABEL_31;
  }

  if (kind <= 1508)
  {
    if (kind != 1000)
    {
      if (kind == 1500 || kind == 1506)
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
  switch(kind)
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
      if (kind == 1509 || kind == 1510)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
  }

LABEL_32:

  return v4;
}

+ (id)defaultAlbumKindsForFetchingWithCPLEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v5 = &unk_1F0FBF6A0;
  }

  else
  {
    v5 = [&unk_1F0FBF6A0 arrayByAddingObject:{&unk_1F0FBBCF8, v3}];
  }

  return v5;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___PLGenericAlbum;
  keyCopy = key;
  v4 = objc_msgSendSuper2(&v9, sel_keyPathsForValuesAffectingValueForKey_, keyCopy);
  v5 = [keyCopy isEqualToString:{@"kindValue", v9.receiver, v9.super_class}];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:@"kind"];
    v7 = [v4 setByAddingObjectsFromSet:v6];

    v4 = v7;
  }

  return v4;
}

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"PLGenericAlbum subclasses must implement payloadForChangedKeys" userInfo:0];
  objc_exception_throw(v4);
}

- (id)payloadID
{
  uuid = [(PLGenericAlbum *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v3;
}

- (id)cplFullRecord
{
  photoLibrary = [(PLGenericAlbum *)self photoLibrary];
  v4 = [(PLGenericAlbum *)self cplAlbumChangeInPhotoLibrary:photoLibrary orderKeyManager:0];

  return v4;
}

- (BOOL)isProjectAlbumSupportingCloudUpload
{
  if ([(PLGenericAlbum *)self kindValue]== 1508)
  {
    projectDocumentType = [(PLGenericAlbum *)self projectDocumentType];
    v4 = projectDocumentType;
    if (projectDocumentType && ([projectDocumentType containsString:@"com.apple.photos.projects.legacy"] & 1) == 0)
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

- (void)applyPropertiesFromAlbumChange:(id)change
{
  v38 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  name = [changeCopy name];
  scopedIdentifier = [changeCopy scopedIdentifier];
  identifier = [scopedIdentifier identifier];

  if (name)
  {
    title = [(PLGenericAlbum *)self title];
    v9 = [title isEqualToString:name];

    if ((v9 & 1) == 0)
    {
      [(PLGenericAlbum *)self setTitle:name];
    }
  }

  if (identifier)
  {
    cloudGUID = [(PLGenericAlbum *)self cloudGUID];

    if (cloudGUID != identifier)
    {
      [(PLGenericAlbum *)self setCloudGUID:identifier];
    }
  }

  if ([changeCopy inExpunged])
  {
    inTrash = 2;
  }

  else
  {
    inTrash = [changeCopy inTrash];
  }

  if ([(PLGenericAlbum *)self trashedState]!= inTrash)
  {
    [(PLGenericAlbum *)self applyTrashedState:inTrash cascade:0];
  }

  trashedDate = [(PLGenericAlbum *)self trashedDate];
  dateDeleted = [changeCopy dateDeleted];
  v14 = [trashedDate isEqualToDate:dateDeleted];

  if ((v14 & 1) == 0)
  {
    dateDeleted2 = [changeCopy dateDeleted];
    [(PLGenericAlbum *)self setTrashedDate:dateDeleted2];
  }

  customSortAscending = [(PLGenericAlbum *)self customSortAscending];
  if (customSortAscending != [changeCopy albumSortAscending])
  {
    -[PLGenericAlbum setCustomSortAscending:](self, "setCustomSortAscending:", [changeCopy albumSortAscending]);
  }

  customSortKey = [(PLGenericAlbum *)self customSortKey];
  if (customSortKey != [changeCopy albumSortType])
  {
    -[PLGenericAlbum setCustomSortKey:](self, "setCustomSortKey:", [changeCopy albumSortType]);
  }

  if ([changeCopy albumType] == 7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      projectData = [changeCopy projectData];
      [(PLGenericAlbum *)self setProjectData:projectData];

      projectPreviewImageData = [changeCopy projectPreviewImageData];
      v35 = 0;
      v20 = [(PLGenericAlbum *)self setProjectPreviewImageData:projectPreviewImageData error:&v35];
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

  importedByBundleIdentifier = [(PLGenericAlbum *)self importedByBundleIdentifier];
  importedByBundleIdentifier2 = [changeCopy importedByBundleIdentifier];
  IsEqual = PLObjectIsEqual();

  if ((IsEqual & 1) == 0)
  {
    importedByBundleIdentifier3 = [changeCopy importedByBundleIdentifier];
    [(PLGenericAlbum *)self setImportedByBundleIdentifier:importedByBundleIdentifier3];
  }

  userModificationDate = [changeCopy userModificationDate];
  if (userModificationDate)
  {
    v28 = userModificationDate;
    lastModifiedDate = [(PLGenericAlbum *)self lastModifiedDate];
    if (lastModifiedDate)
    {
      v30 = lastModifiedDate;
      lastModifiedDate2 = [(PLGenericAlbum *)self lastModifiedDate];
      userModificationDate2 = [changeCopy userModificationDate];
      v33 = [lastModifiedDate2 isEqualToDate:userModificationDate2];

      if (v33)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    userModificationDate3 = [changeCopy userModificationDate];
    [(PLGenericAlbum *)self setLastModifiedDate:userModificationDate3];
  }

LABEL_36:
}

- (id)cplAlbumChangeInPhotoLibrary:(id)library orderKeyManager:(id)manager
{
  v40 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  managerCopy = manager;
  v8 = objc_alloc_init(MEMORY[0x1E6994A78]);
  if (![(PLGenericAlbum *)self isProjectAlbumRootFolder]&& ![(PLGenericAlbum *)self isRegularRootFolder])
  {
    scopedIdentifier = [(PLGenericAlbum *)self scopedIdentifier];
    [v8 setScopedIdentifier:scopedIdentifier];

    title = [(PLGenericAlbum *)self title];
    [v8 setName:title];

    importedByBundleIdentifier = [(PLGenericAlbum *)self importedByBundleIdentifier];
    [v8 setImportedByBundleIdentifier:importedByBundleIdentifier];

    parentFolder = [(PLGenericAlbum *)self parentFolder];
    if ([parentFolder isRegularRootFolder])
    {
      cloudGUID = 0;
    }

    else
    {
      parentFolder2 = [(PLGenericAlbum *)self parentFolder];
      isProjectAlbumRootFolder = [parentFolder2 isProjectAlbumRootFolder];

      if (isProjectAlbumRootFolder)
      {
        cloudGUID = 0;
        goto LABEL_19;
      }

      parentFolder3 = [(PLGenericAlbum *)self parentFolder];
      cloudGUID = [parentFolder3 cloudGUID];

      if (cloudGUID)
      {
        goto LABEL_19;
      }

      parentFolder = [(PLGenericAlbum *)self parentFolder];
      cloudGUID = [parentFolder uuid];
    }

LABEL_19:
    [v8 setParentIdentifier:cloudGUID];
    managedObjectContext = [libraryCopy managedObjectContext];
    libraryServicesManager = [libraryCopy libraryServicesManager];
    if (!managerCopy)
    {
      v23 = [PLRelationshipOrderKeyManager alloc];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __68__PLGenericAlbum_CPL__cplAlbumChangeInPhotoLibrary_orderKeyManager___block_invoke;
      v36[3] = &unk_1E7574C88;
      v37 = libraryServicesManager;
      managerCopy = [(PLRelationshipOrderKeyManager *)v23 initWithGenerateContextBlock:v36];
    }

    v24 = [(PLRelationshipOrderKeyManager *)managerCopy parentFolderOrderValueForAlbum:self inManagedObjectContext:managedObjectContext];
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

    cloudGUID = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(cloudGUID, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      kindValue = [(PLGenericAlbum *)self kindValue];
      _os_log_impl(&dword_19BF1F000, cloudGUID, OS_LOG_TYPE_ERROR, "Cannot create CPLAlbumChange for unexpected root type: %u", buf, 8u);
    }

LABEL_22:

    goto LABEL_23;
  }

  v9 = @"----Project-Root-Folder----";
LABEL_7:
  scopeIdentifier = [(PLGenericAlbum *)self scopeIdentifier];
  v11 = [objc_alloc(MEMORY[0x1E6994BB8]) initWithScopeIdentifier:scopeIdentifier identifier:v9];
  [v8 setScopedIdentifier:v11];
  cloudGUID2 = [(PLGenericAlbum *)self cloudGUID];

  if (!cloudGUID2)
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
      selfCopy = self;
      projectDocumentType = [(PLGenericAlbum *)selfCopy projectDocumentType];
      [v8 setProjectDocumentType:projectDocumentType];

      projectData = [(PLGenericAlbum *)selfCopy projectData];
      [v8 setProjectData:projectData];

      projectPreviewImageData = [(PLGenericAlbum *)selfCopy projectPreviewImageData];

      [v8 setProjectPreviewImageData:projectPreviewImageData];
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
  trashedState = [(PLGenericAlbum *)self trashedState];
  v32 = trashedState == 2 || [(PLGenericAlbum *)self trashedState]== 1;
  [v8 setInTrash:v32];
  [v8 setInExpunged:trashedState == 2];
  trashedDate = [(PLGenericAlbum *)self trashedDate];
  [v8 setDateDeleted:trashedDate];

  lastModifiedDate = [(PLGenericAlbum *)self lastModifiedDate];
  [v8 setUserModificationDate:lastModifiedDate];

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
  cloudGUID = [(PLGenericAlbum *)self cloudGUID];
  if (!cloudGUID)
  {
    cloudGUID = [(PLGenericAlbum *)self uuid];
    if (!cloudGUID)
    {
      [(PLGenericAlbum *)self repairUuidAndTitleWithRecoveryReason:"[PLGenericAlbum(CPL) scopedIdentifier]"];
      cloudGUID = [(PLGenericAlbum *)self uuid];
    }

    [(PLGenericAlbum *)self setCloudGUID:cloudGUID];
  }

  v4 = objc_alloc(MEMORY[0x1E6994BB8]);
  scopeIdentifier = [(PLGenericAlbum *)self scopeIdentifier];
  v6 = [v4 initWithScopeIdentifier:scopeIdentifier identifier:cloudGUID];

  return v6;
}

- (id)scopeIdentifier
{
  photoLibrary = [(PLGenericAlbum *)self photoLibrary];
  mainScopeIdentifier = [photoLibrary mainScopeIdentifier];

  return mainScopeIdentifier;
}

+ (id)albumsWithCloudGUIDs:(id)ds inLibrary:(id)library
{
  v16[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  libraryCopy = library;
  if (dsCopy && ![dsCopy count])
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  else
  {
    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudGUID IN %@", dsCopy];
    _predicateForSupportedAlbumTypes = [self _predicateForSupportedAlbumTypes];
    v10 = MEMORY[0x1E696AB28];
    v16[0] = dsCopy;
    v16[1] = _predicateForSupportedAlbumTypes;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dsCopy, "count")}];
    v14 = [self albumsMatchingPredicate:v12 expectedResultCount:v13 inLibrary:libraryCopy];
  }

  return v14;
}

+ (PLGenericAlbum)albumWithCloudGUID:(id)d inLibrary:(id)library
{
  v12[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  firstObject = 0;
  if ([dCopy length] && dCopy)
  {
    v12[0] = dCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [self albumsWithCloudGUIDs:v9 inLibrary:libraryCopy];
    firstObject = [v10 firstObject];
  }

  return firstObject;
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
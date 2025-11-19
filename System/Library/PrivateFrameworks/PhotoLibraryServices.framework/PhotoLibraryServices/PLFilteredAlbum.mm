@interface PLFilteredAlbum
+ (id)descriptionForAlbumFilter:(int)a3 parameters:(id)a4;
+ (id)filteredAlbum:(id)a3 filter:(int)a4 parameters:(id)a5;
+ (id)filteredAlbum:(id)a3 intersectFilter:(int)a4;
+ (id)filteredAlbum:(id)a3 predicate:(id)a4;
+ (id)filteredIndexesInAlbum:(id)a3 predicate:(id)a4;
+ (id)predicateForAlbumFilter:(int)a3 parameters:(id)a4 photoLibrary:(id)a5;
- (BOOL)canContributeToCloudSharedAlbum;
- (BOOL)canPerformEditOperation:(unint64_t)a3;
- (BOOL)canShowAvalancheStacks;
- (BOOL)canShowComments;
- (BOOL)cloudNotificationsEnabled;
- (BOOL)cloudOwnerIsWhitelisted;
- (BOOL)hasUnseenContentBoolValue;
- (BOOL)isCameraAlbum;
- (BOOL)isCloudSharedAlbum;
- (BOOL)isFamilyCloudSharedAlbum;
- (BOOL)isFolder;
- (BOOL)isInTrash;
- (BOOL)isLibrary;
- (BOOL)isMultipleContributorCloudSharedAlbum;
- (BOOL)isOwnedCloudSharedAlbum;
- (BOOL)isPanoramasAlbum;
- (BOOL)isPendingPhotoStreamAlbum;
- (BOOL)isPhotoStreamAlbum;
- (BOOL)isProjectAlbum;
- (BOOL)isRecentlyAddedAlbum;
- (BOOL)isStandInAlbum;
- (BOOL)isUserLibraryAlbum;
- (BOOL)mappedDataSourceChanged:(id)a3 remoteNotificationData:(id)a4;
- (BOOL)shouldDeleteWhenEmpty;
- (BOOL)shouldIncludeObjectAtIndex:(unint64_t)a3;
- (NSArray)localizedLocationNames;
- (NSDate)cloudCreationDate;
- (NSDate)cloudFirstRecentBatchDate;
- (NSDate)cloudLastContributionDate;
- (NSDate)cloudLastInterestingChangeDate;
- (NSDate)cloudSubscriptionDate;
- (NSDictionary)cloudMetadata;
- (NSIndexSet)filteredIndexes;
- (NSMutableOrderedSet)_assets;
- (NSMutableOrderedSet)mutableAssets;
- (NSMutableOrderedSet)userEditableAssets;
- (NSNumber)cloudMultipleContributorsEnabled;
- (NSNumber)cloudMultipleContributorsEnabledLocal;
- (NSNumber)cloudPublicURLEnabled;
- (NSNumber)cloudPublicURLEnabledLocal;
- (NSNumber)kind;
- (NSNumber)unseenAssetsCount;
- (NSObject)posterImage;
- (NSOrderedSet)cloudAlbumSubscriberRecords;
- (NSOrderedSet)invitationRecords;
- (NSString)cloudGUID;
- (NSString)cloudOwnerEmail;
- (NSString)cloudOwnerFirstName;
- (NSString)cloudOwnerFullName;
- (NSString)cloudOwnerHashedPersonID;
- (NSString)cloudOwnerLastName;
- (NSString)cloudPersonID;
- (NSString)description;
- (NSString)importSessionID;
- (NSString)localizedSharedWithLabel;
- (NSString)localizedTitle;
- (NSString)name;
- (NSString)publicURL;
- (NSString)title;
- (NSString)uuid;
- (NSURL)groupURL;
- (PLFilteredAlbum)initWithBackingAlbum:(id)a3 filter:(int)a4 parameters:(id)a5;
- (PLFilteredAlbum)initWithBackingAlbum:(id)a3 predicate:(id)a4;
- (id)_cloudSharedBackingAlbum;
- (id)_editableBackingAlbum;
- (id)cloudOwnerDisplayNameIncludingEmail:(BOOL)a3 allowsEmail:(BOOL)a4;
- (id)currentStateForChange;
- (id)filteredAssetsAtIndexes:(id)a3;
- (id)localizedSharedByLabelAllowsEmail:(BOOL)a3;
- (id)objectInFilteredAssetsAtIndex:(unint64_t)a3;
- (id)sortingComparator;
- (int)cloudRelationshipStateLocalValue;
- (int)cloudRelationshipStateValue;
- (int)kindValue;
- (int)pendingItemsCount;
- (int)pendingItemsType;
- (unint64_t)approximateCount;
- (unint64_t)assetsCount;
- (unint64_t)countOfFilteredAssets;
- (unint64_t)indexInFilteredAssetsOfObject:(id)a3;
- (unint64_t)photosCount;
- (unint64_t)unseenAssetsCountIntegerValue;
- (unint64_t)videosCount;
- (void)_commonInitWithBackingAlbum:(id)a3 predicate:(id)a4;
- (void)backingContextDidChange:(id)a3;
- (void)batchFetchAssets:(id)a3;
- (void)dealloc;
- (void)getUnseenStartMarkerIndex:(unint64_t *)a3 count:(unint64_t *)a4 showsProgress:(BOOL *)a5;
- (void)insertFilteredAssets:(id)a3 atIndexes:(id)a4;
- (void)insertObject:(id)a3 inFilteredAssetsAtIndex:(unint64_t)a4;
- (void)removeFilteredAssetsAtIndexes:(id)a3;
- (void)removeObjectFromFilteredAssetsAtIndex:(unint64_t)a3;
- (void)replaceFilteredAssetsAtIndexes:(id)a3 withFilteredValues:(id)a4;
- (void)replaceObjectInFilteredAssetsAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)setBackingAlbum:(id)a3;
- (void)setCloudCreationDate:(id)a3;
- (void)setCloudGUID:(id)a3;
- (void)setCloudLastContributionDate:(id)a3;
- (void)setCloudLastInterestingChangeDate:(id)a3;
- (void)setCloudMetadata:(id)a3;
- (void)setCloudMultipleContributorsEnabled:(id)a3;
- (void)setCloudMultipleContributorsEnabledLocal:(id)a3;
- (void)setCloudNotificationsEnabled:(BOOL)a3;
- (void)setCloudOwnerEmail:(id)a3;
- (void)setCloudOwnerFirstName:(id)a3;
- (void)setCloudOwnerFullName:(id)a3;
- (void)setCloudOwnerHashedPersonID:(id)a3;
- (void)setCloudOwnerIsWhitelisted:(BOOL)a3;
- (void)setCloudOwnerLastName:(id)a3;
- (void)setCloudPersonID:(id)a3;
- (void)setCloudPublicURLEnabled:(id)a3;
- (void)setCloudPublicURLEnabledLocal:(id)a3;
- (void)setCloudSubscriptionDate:(id)a3;
- (void)setHasUnseenContentBoolValue:(BOOL)a3;
- (void)setImportSessionID:(id)a3;
- (void)setInvitationRecords:(id)a3;
- (void)setPublicURL:(id)a3;
- (void)setUnseenAssetsCount:(id)a3;
- (void)setUnseenAssetsCountIntegerValue:(unint64_t)a3;
- (void)updateCloudLastContributionDateWithDate:(id)a3;
- (void)updateCloudLastInterestingChangeDateWithDate:(id)a3;
- (void)userDeleteSubscriberRecord:(id)a3;
@end

@implementation PLFilteredAlbum

- (void)replaceFilteredAssetsAtIndexes:(id)a3 withFilteredValues:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(PLFilteredAlbum *)self _editableBackingAlbum];
  v8 = [v10 userEditableAssets];
  v9 = [(PLIndexMapper *)self->_indexMapper backingIndexesForIndexes:v7];

  [v8 replaceObjectsAtIndexes:v9 withObjects:v6];
}

- (void)replaceObjectInFilteredAssetsAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = a4;
  v8 = [(PLFilteredAlbum *)self _editableBackingAlbum];
  v7 = [v8 userEditableAssets];
  [v7 replaceObjectAtIndex:-[PLIndexMapper backingIndexForIndex:](self->_indexMapper withObject:{"backingIndexForIndex:", a3), v6}];
}

- (void)removeFilteredAssetsAtIndexes:(id)a3
{
  v6 = [(PLIndexMapper *)self->_indexMapper backingIndexesForIndexes:a3];
  v4 = [(PLFilteredAlbum *)self _editableBackingAlbum];
  v5 = [v4 userEditableAssets];
  [v5 removeObjectsAtIndexes:v6];
}

- (void)insertFilteredAssets:(id)a3 atIndexes:(id)a4
{
  indexMapper = self->_indexMapper;
  v7 = a3;
  v10 = [(PLIndexMapper *)indexMapper backingIndexesForIndexes:a4];
  v8 = [(PLFilteredAlbum *)self _editableBackingAlbum];
  v9 = [v8 userEditableAssets];
  [v9 insertObjects:v7 atIndexes:v10];
}

- (void)removeObjectFromFilteredAssetsAtIndex:(unint64_t)a3
{
  v6 = [(PLFilteredAlbum *)self _editableBackingAlbum];
  v5 = [v6 userEditableAssets];
  [v5 removeObjectAtIndex:{-[PLIndexMapper backingIndexForIndex:](self->_indexMapper, "backingIndexForIndex:", a3)}];
}

- (void)insertObject:(id)a3 inFilteredAssetsAtIndex:(unint64_t)a4
{
  v6 = a3;
  v8 = [(PLFilteredAlbum *)self _editableBackingAlbum];
  v7 = [v8 userEditableAssets];
  [v7 insertObject:v6 atIndex:{-[PLIndexMapper backingIndexForIndex:](self->_indexMapper, "backingIndexForIndex:", a4)}];
}

- (id)_editableBackingAlbum
{
  if (self->_backingAlbumSupportsEdits)
  {
    v4 = [(PLFilteredAlbum *)self backingAlbum];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)filteredAssetsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self backingAlbum];
  v6 = [v5 assets];
  v7 = [(PLIndexMapper *)self->_indexMapper backingIndexesForIndexes:v4];

  v8 = [v6 objectsAtIndexes:v7];

  return v8;
}

- (id)objectInFilteredAssetsAtIndex:(unint64_t)a3
{
  v5 = [(PLFilteredAlbum *)self backingAlbum];
  v6 = [v5 assets];
  v7 = [v6 objectAtIndex:{-[PLIndexMapper backingIndexForIndex:](self->_indexMapper, "backingIndexForIndex:", a3)}];

  return v7;
}

- (unint64_t)indexInFilteredAssetsOfObject:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self backingAlbum];
  v6 = [v5 assets];
  v7 = [v6 indexOfObject:v4];

  v8 = [(PLIndexMapper *)self->_indexMapper indexForBackingIndex:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v8;
  if (v7 != [(PLIndexMapper *)self->_indexMapper backingIndexForIndex:v8])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (unint64_t)countOfFilteredAssets
{
  v2 = [(PLFilteredAlbum *)self filteredIndexes];
  v3 = [v2 count];

  return v3;
}

- (BOOL)mappedDataSourceChanged:(id)a3 remoteNotificationData:(id)a4
{
  v5 = a3;
  [(PLFilteredAlbum *)self set_assets:0];
  v6 = [(PLIndexMapper *)self->_indexMapper applyContainerChangeNotification:v5 changeTypes:15 toFilteredIndexes:self->_filteredIndexes];

  if (!v6)
  {
    filteredIndexes = self->_filteredIndexes;
    self->_filteredIndexes = 0;
  }

  return 1;
}

- (BOOL)shouldIncludeObjectAtIndex:(unint64_t)a3
{
  v5 = [(PLFilteredAlbum *)self backingAlbum];
  v6 = [v5 assets];
  v7 = [v6 objectAtIndex:a3];

  v8 = [(PLFilteredAlbum *)self predicate];
  LOBYTE(v5) = [v8 evaluateWithObject:v7];

  return v5;
}

- (id)currentStateForChange
{
  v2 = [(NSMutableIndexSet *)self->_filteredIndexes copy];

  return v2;
}

- (NSIndexSet)filteredIndexes
{
  filteredIndexes = self->_filteredIndexes;
  if (!filteredIndexes)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_opt_class();
    v6 = [(PLFilteredAlbum *)self backingAlbum];
    v7 = [(PLFilteredAlbum *)self predicate];
    v8 = [v5 filteredIndexesInAlbum:v6 predicate:v7];

    v9 = self->_filteredIndexes;
    self->_filteredIndexes = v8;

    objc_autoreleasePoolPop(v4);
    filteredIndexes = self->_filteredIndexes;
  }

  v10 = [(NSMutableIndexSet *)filteredIndexes copy];

  return v10;
}

- (PLFilteredAlbum)initWithBackingAlbum:(id)a3 filter:(int)a4 parameters:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = PLFilteredAlbum;
  v10 = [(PLFilteredAlbum *)&v15 init];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [v8 photoLibrary];
    v13 = [v11 predicateForAlbumFilter:v6 parameters:v9 photoLibrary:v12];

    [(PLFilteredAlbum *)v10 _commonInitWithBackingAlbum:v8 predicate:v13];
    [(PLFilteredAlbum *)v10 setFilter:v6];
    objc_storeStrong(&v10->_filterParameters, a5);
  }

  return v10;
}

- (PLFilteredAlbum)initWithBackingAlbum:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PLFilteredAlbum;
  v8 = [(PLFilteredAlbum *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PLFilteredAlbum *)v8 _commonInitWithBackingAlbum:v6 predicate:v7];
  }

  return v9;
}

- (void)_commonInitWithBackingAlbum:(id)a3 predicate:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  [(PLFilteredAlbum *)self setBackingAlbum:v19];
  v8 = [(PLFilteredAlbum *)self backingAlbum];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(PLFilteredAlbum *)self backingAlbum];
    [v10 registerDerivedAlbum:self];
  }

  v11 = [[PLIndexMapper alloc] initWithDataSource:self];
  indexMapper = self->_indexMapper;
  self->_indexMapper = v11;

  v13 = [(PLFilteredAlbum *)self backingAlbum];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if (v14)
  {
    v15 = [(PLFilteredAlbum *)self backingAlbum];
    [(PLFilteredAlbum *)self setIsObservingContextChanges:1];
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E695D360];
    v18 = [v15 managedObjectContext];
    [v16 addObserver:self selector:sel_backingContextDidChange_ name:v17 object:v18];
  }

  [(PLFilteredAlbum *)self setPredicate:v6];
  objc_autoreleasePoolPop(v7);
}

- (int)pendingItemsType
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 pendingItemsType];

  return v3;
}

- (int)pendingItemsCount
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 pendingItemsCount];

  return v3;
}

- (void)backingContextDidChange:(id)a3
{
  v10 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v10 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E695D2F8]];

  v7 = [(PLFilteredAlbum *)self backingAlbum];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    [(PLFilteredAlbum *)self setBackingAlbum:0];
    [(PLFilteredAlbum *)self setPredicate:0];
    [(PLFilteredAlbum *)self willChangeValueForKey:@"assets"];
    [(PLFilteredAlbum *)self set_assets:0];
    filteredIndexes = self->_filteredIndexes;
    self->_filteredIndexes = 0;

    [(PLFilteredAlbum *)self didChangeValueForKey:@"assets"];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)userDeleteSubscriberRecord:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 userDeleteSubscriberRecord:v4];
}

- (void)getUnseenStartMarkerIndex:(unint64_t *)a3 count:(unint64_t *)a4 showsProgress:(BOOL *)a5
{
  v16 = 0;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v9 getUnseenStartMarkerIndex:&v17 count:&v16 showsProgress:a5];

  v10 = [(PLFilteredAlbum *)self assetsCount];
  v11 = v17;
  if (a3)
  {
    v12 = v10 - 1;
    if (v17 < v10 - 1)
    {
      v12 = v17;
    }

    if (v12 < 0)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v12;
    }

    *a3 = v13;
  }

  if (a4)
  {
    v14 = v10 - v11;
    if (v16 < v10 - v11)
    {
      v14 = v16;
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v16;
    }

    else
    {
      v15 = v14;
    }

    *a4 = v15;
  }
}

- (void)updateCloudLastContributionDateWithDate:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 updateCloudLastContributionDateWithDate:v4];
}

- (void)updateCloudLastInterestingChangeDateWithDate:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 updateCloudLastInterestingChangeDateWithDate:v4];
}

- (id)cloudOwnerDisplayNameIncludingEmail:(BOOL)a3 allowsEmail:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v7 = [v6 cloudOwnerDisplayNameIncludingEmail:v5 allowsEmail:v4];

  return v7;
}

- (NSOrderedSet)cloudAlbumSubscriberRecords
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudAlbumSubscriberRecords];

  return v3;
}

- (void)setCloudNotificationsEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v4 setCloudNotificationsEnabled:v3];
}

- (BOOL)cloudNotificationsEnabled
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudNotificationsEnabled];

  return v3;
}

- (NSDate)cloudFirstRecentBatchDate
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudFirstRecentBatchDate];

  return v3;
}

- (NSString)localizedSharedWithLabel
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 localizedSharedWithLabel];

  return v3;
}

- (id)localizedSharedByLabelAllowsEmail:(BOOL)a3
{
  v3 = a3;
  v4 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v5 = [v4 localizedSharedByLabelAllowsEmail:v3];

  return v5;
}

- (int)cloudRelationshipStateLocalValue
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudRelationshipStateLocalValue];

  return v3;
}

- (int)cloudRelationshipStateValue
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudRelationshipStateValue];

  return v3;
}

- (void)setCloudLastContributionDate:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudLastContributionDate:v4];
}

- (NSDate)cloudLastContributionDate
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudLastContributionDate];

  return v3;
}

- (void)setCloudCreationDate:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudCreationDate:v4];
}

- (NSDate)cloudCreationDate
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudCreationDate];

  return v3;
}

- (void)setCloudLastInterestingChangeDate:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudLastInterestingChangeDate:v4];
}

- (NSDate)cloudLastInterestingChangeDate
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudLastInterestingChangeDate];

  return v3;
}

- (void)setCloudMultipleContributorsEnabledLocal:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudMultipleContributorsEnabledLocal:v4];
}

- (NSNumber)cloudMultipleContributorsEnabledLocal
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudMultipleContributorsEnabledLocal];

  return v3;
}

- (void)setCloudMultipleContributorsEnabled:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudMultipleContributorsEnabled:v4];
}

- (NSNumber)cloudMultipleContributorsEnabled
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudMultipleContributorsEnabled];

  return v3;
}

- (void)setCloudPublicURLEnabledLocal:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudPublicURLEnabledLocal:v4];
}

- (NSNumber)cloudPublicURLEnabledLocal
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudPublicURLEnabledLocal];

  return v3;
}

- (void)setCloudPublicURLEnabled:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudPublicURLEnabled:v4];
}

- (NSNumber)cloudPublicURLEnabled
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudPublicURLEnabled];

  return v3;
}

- (void)setUnseenAssetsCountIntegerValue:(unint64_t)a3
{
  v4 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v4 setUnseenAssetsCountIntegerValue:a3];
}

- (unint64_t)unseenAssetsCountIntegerValue
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 unseenAssetsCountIntegerValue];

  return v3;
}

- (void)setUnseenAssetsCount:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setUnseenAssetsCount:v4];
}

- (NSNumber)unseenAssetsCount
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 unseenAssetsCount];

  return v3;
}

- (void)setInvitationRecords:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setInvitationRecords:v4];
}

- (NSOrderedSet)invitationRecords
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 invitationRecords];

  return v3;
}

- (void)setCloudPersonID:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudPersonID:v4];
}

- (NSString)cloudPersonID
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudPersonID];

  return v3;
}

- (void)setPublicURL:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setPublicURL:v4];
}

- (NSString)publicURL
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 publicURL];

  return v3;
}

- (void)setCloudSubscriptionDate:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudSubscriptionDate:v4];
}

- (NSDate)cloudSubscriptionDate
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudSubscriptionDate];

  return v3;
}

- (void)setCloudOwnerIsWhitelisted:(BOOL)a3
{
  v3 = a3;
  v4 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v4 setCloudOwnerIsWhitelisted:v3];
}

- (BOOL)cloudOwnerIsWhitelisted
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudOwnerIsWhitelisted];

  return v3;
}

- (void)setCloudOwnerHashedPersonID:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudOwnerHashedPersonID:v4];
}

- (NSString)cloudOwnerHashedPersonID
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudOwnerHashedPersonID];

  return v3;
}

- (void)setCloudOwnerEmail:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudOwnerEmail:v4];
}

- (NSString)cloudOwnerEmail
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudOwnerEmail];

  return v3;
}

- (void)setCloudOwnerFullName:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudOwnerFullName:v4];
}

- (NSString)cloudOwnerFullName
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudOwnerFullName];

  return v3;
}

- (void)setCloudOwnerLastName:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudOwnerLastName:v4];
}

- (NSString)cloudOwnerLastName
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudOwnerLastName];

  return v3;
}

- (void)setCloudOwnerFirstName:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudOwnerFirstName:v4];
}

- (NSString)cloudOwnerFirstName
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudOwnerFirstName];

  return v3;
}

- (void)setCloudMetadata:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudMetadata:v4];
}

- (NSDictionary)cloudMetadata
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudMetadata];

  return v3;
}

- (void)setCloudGUID:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [v5 setCloudGUID:v4];
}

- (NSString)cloudGUID
{
  v2 = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v3 = [v2 cloudGUID];

  return v3;
}

- (id)_cloudSharedBackingAlbum
{
  if (self->_backingAlbumSupportsCloudShared)
  {
    v4 = [(PLFilteredAlbum *)self backingAlbum];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)batchFetchAssets:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self backingAlbum];
  [v5 batchFetchAssets:v4];
}

- (id)sortingComparator
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 sortingComparator];

  return v3;
}

- (NSURL)groupURL
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(PLFilteredAlbum *)self backingAlbum];
  v6 = [v5 uuid];
  v7 = [v4 stringWithFormat:@"%@://%@/?%@=%@&%@=%d", @"assets-library", @"group", @"id", v6, @"filter", -[PLFilteredAlbum filter](self, "filter")];
  v8 = [v3 URLWithString:v7];

  return v8;
}

- (void)setImportSessionID:(id)a3
{
  v4 = a3;
  v5 = [(PLFilteredAlbum *)self backingAlbum];
  [v5 setImportSessionID:v4];
}

- (NSString)importSessionID
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 importSessionID];

  return v3;
}

- (BOOL)shouldDeleteWhenEmpty
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 shouldDeleteWhenEmpty];

  return v3;
}

- (BOOL)canPerformEditOperation:(unint64_t)a3
{
  v4 = [(PLFilteredAlbum *)self backingAlbum];
  LOBYTE(a3) = [v4 canPerformEditOperation:a3];

  return a3;
}

- (NSArray)localizedLocationNames
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 localizedLocationNames];

  return v3;
}

- (BOOL)canShowAvalancheStacks
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 canShowAvalancheStacks];

  return v3;
}

- (BOOL)canShowComments
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 canShowComments];

  return v3;
}

- (BOOL)canContributeToCloudSharedAlbum
{
  v3 = [(PLFilteredAlbum *)self backingAlbum];
  if ([v3 isOwnedCloudSharedAlbum])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PLFilteredAlbum *)self backingAlbum];
    v4 = [v5 isMultipleContributorCloudSharedAlbum];
  }

  return v4;
}

- (BOOL)isProjectAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isProjectAlbum];

  return v3;
}

- (BOOL)isUserLibraryAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isUserLibraryAlbum];

  return v3;
}

- (BOOL)isRecentlyAddedAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isRecentlyAddedAlbum];

  return v3;
}

- (BOOL)isMultipleContributorCloudSharedAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isMultipleContributorCloudSharedAlbum];

  return v3;
}

- (BOOL)isFamilyCloudSharedAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isFamilyCloudSharedAlbum];

  return v3;
}

- (BOOL)isOwnedCloudSharedAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isOwnedCloudSharedAlbum];

  return v3;
}

- (BOOL)isInTrash
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isInTrash];

  return v3;
}

- (BOOL)isFolder
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isFolder];

  return v3;
}

- (BOOL)isStandInAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isStandInAlbum];

  return v3;
}

- (BOOL)isPendingPhotoStreamAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isPendingPhotoStreamAlbum];

  return v3;
}

- (BOOL)isCloudSharedAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isCloudSharedAlbum];

  return v3;
}

- (BOOL)isPhotoStreamAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isPhotoStreamAlbum];

  return v3;
}

- (BOOL)isPanoramasAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isPanoramasAlbum];

  return v3;
}

- (BOOL)isCameraAlbum
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isCameraAlbum];

  return v3;
}

- (BOOL)isLibrary
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 isLibrary];

  return v3;
}

- (NSObject)posterImage
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 posterImage];

  return v3;
}

- (NSString)name
{
  NSLog(&cfstr_WarningTheName.isa, a2, self);
  PLPrintSymbolicStackTrace();

  return [(PLFilteredAlbum *)self localizedTitle];
}

- (NSString)localizedTitle
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 localizedTitle];

  return v3;
}

- (unint64_t)videosCount
{
  v3 = [(PLFilteredAlbum *)self filter];
  if (v3 == 2)
  {

    return [(PLFilteredAlbum *)self approximateCount];
  }

  else if ((v3 & 2) != 0 || (v3 & 5) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(PLFilteredAlbum *)self assets];
    v7 = [v6 array];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
    v9 = [v7 filteredArrayUsingPredicate:v8];

    v10 = [v9 count];
    objc_autoreleasePoolPop(v5);
    return v10;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)photosCount
{
  v3 = [(PLFilteredAlbum *)self filter];
  if (v3 == 1)
  {

    return [(PLFilteredAlbum *)self approximateCount];
  }

  else if ((v3 & 1) != 0 || (v3 & 6) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(PLFilteredAlbum *)self assets];
    v7 = [v6 array];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 0];
    v9 = [v7 filteredArrayUsingPredicate:v8];

    v10 = [v9 count];
    objc_autoreleasePoolPop(v5);
    return v10;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUnseenContentBoolValue:(BOOL)a3
{
  v3 = a3;
  v4 = [(PLFilteredAlbum *)self backingAlbum];
  [v4 setHasUnseenContentBoolValue:v3];
}

- (BOOL)hasUnseenContentBoolValue
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 hasUnseenContentBoolValue];

  return v3;
}

- (unint64_t)assetsCount
{
  v2 = [(PLFilteredAlbum *)self filteredIndexes];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)approximateCount
{
  v2 = [(PLFilteredAlbum *)self filteredIndexes];
  v3 = [v2 count];

  return v3;
}

- (NSMutableOrderedSet)userEditableAssets
{
  v3 = [(PLFilteredAlbum *)self _assets];

  if (!v3)
  {
    v4 = [(PLFilteredAlbum *)self mutableOrderedSetValueForKey:@"filteredAssets"];
    [(PLFilteredAlbum *)self set_assets:v4];
  }

  return [(PLFilteredAlbum *)self _assets];
}

- (NSMutableOrderedSet)mutableAssets
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLFilteredAlbum.m" lineNumber:179 description:{@"This album does not support mutations via mutableAssets: %@", self}];

  return 0;
}

- (int)kindValue
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 kindValue];

  return v3;
}

- (NSNumber)kind
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 kind];

  return v3;
}

- (NSString)title
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 title];

  return v3;
}

- (NSString)uuid
{
  v2 = [(PLFilteredAlbum *)self backingAlbum];
  v3 = [v2 uuid];

  return v3;
}

- (NSMutableOrderedSet)_assets
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_assets);

  return WeakRetained;
}

- (void)setBackingAlbum:(id)a3
{
  v5 = a3;
  if (self->_backingAlbum != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_backingAlbum, a3);
    self->_backingAlbumSupportsEdits = [(PLAlbumProtocol *)self->_backingAlbum conformsToProtocol:&unk_1F0FE8B68];
    v6 = [(PLAlbumProtocol *)self->_backingAlbum conformsToProtocol:&unk_1F0FFFF38];
    v5 = v7;
    self->_backingAlbumSupportsCloudShared = v6;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PLFilteredAlbum *)self backingAlbum];
  v6 = objc_opt_class();
  v7 = [(PLFilteredAlbum *)self backingAlbum];
  v8 = [objc_opt_class() descriptionForAlbumFilter:-[PLFilteredAlbum filter](self parameters:{"filter"), self->_filterParameters}];
  v9 = [v3 stringWithFormat:@"<%@ %p> album: <%@ %p> filter: %@", v4, self, v6, v7, v8];

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(PLFilteredAlbum *)self setBackingAlbum:0];
  [(PLFilteredAlbum *)self set_assets:0];
  filteredIndexes = self->_filteredIndexes;
  self->_filteredIndexes = 0;

  v5.receiver = self;
  v5.super_class = PLFilteredAlbum;
  [(PLFilteredAlbum *)&v5 dealloc];
}

+ (id)filteredIndexesInAlbum:(id)a3 predicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v9 = objc_autoreleasePoolPush(), [v7 filteredIndexesForPredicate:v8], v10 = objc_claimAutoreleasedReturnValue(), objc_autoreleasePoolPop(v9), !v10))
  {
    v11 = [v7 assets];
    v12 = [v11 array];

    v13 = [v12 filteredArrayUsingPredicate:v8];
    v14 = [MEMORY[0x1E696AD50] indexSet];
    v15 = [v12 count];
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__PLFilteredAlbum_filteredIndexesInAlbum_predicate___block_invoke;
    v20[3] = &unk_1E7568858;
    v23 = v27;
    v24 = v15;
    v16 = v12;
    v21 = v16;
    v25 = a2;
    v26 = a1;
    v17 = v14;
    v22 = v17;
    [v13 enumerateObjectsUsingBlock:v20];
    v18 = v22;
    v10 = v17;

    _Block_object_dispose(v27, 8);
  }

  return v10;
}

uint64_t __52__PLFilteredAlbum_filteredIndexesInAlbum_predicate___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = [*(a1 + 32) indexOfObjectIdenticalTo:a2 inRange:{v3, *(a1 + 56) - v3}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 64) object:*(a1 + 72) file:@"PLFilteredAlbum.m" lineNumber:937 description:&stru_1F0F06D80];
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;
  v5 = *(a1 + 40);

  return [v5 addIndex:v4];
}

+ (id)descriptionForAlbumFilter:(int)a3 parameters:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = v6;
  if (v4)
  {
    [v6 addObject:@"Photos"];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v7 addObject:@"Videos"];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v7 addObject:@"Audio"];
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v7 addObject:@"Unknown"];
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v7 addObject:@"HideNonRecentCloudAssets"];
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v7 addObject:@"HideAssetsWithoutLegacyRequiredResourcesLocallyAvailable"];
  if ((v4 & 0x200) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v7 addObject:@"PLAlbumFilterHideTrashed"];
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v7 addObject:@"PLAlbumFilterShowPhotoBooth"];
  if ((v4 & 0x800) == 0)
  {
LABEL_10:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  [v7 addObject:@"PLAlbumFilterHidePhotoStream"];
  if ((v4 & 0x1000) != 0)
  {
LABEL_11:
    [v7 addObject:@"PLAlbumFilterHideMomentShared"];
  }

LABEL_12:
  if ([v7 count])
  {
    v8 = [v7 componentsJoinedByString:@"+"];
    v9 = v8;
    if (v5)
    {
      v10 = [(__CFString *)v8 stringByAppendingFormat:@" params: %@", v5];

      v9 = v10;
    }
  }

  else
  {
    v9 = @"{none}";
  }

  return v9;
}

+ (id)predicateForAlbumFilter:(int)a3 parameters:(id)a4 photoLibrary:(id)a5
{
  v6 = a3;
  v40[2] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  if (v6)
  {
    v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 0];
    [v11 addObject:v26];

    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
  [v11 addObject:v27];

  if ((v6 & 4) != 0)
  {
LABEL_4:
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 2];
    [v11 addObject:v12];
  }

LABEL_5:
  if ((v6 & 8) != 0)
  {
    v13 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPhotoBoothAsset"), 1}];
    [v11 addObject:v13];
  }

  if ((v6 & 0x10) != 0)
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 3];
    [v11 addObject:v14];
  }

  v15 = [MEMORY[0x1E695DF70] array];
  if ((v6 & 0x40) != 0 && [v9 count])
  {
    v16 = [v9 objectAtIndex:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      [v39 handleFailureInMethod:a2 object:a1 file:@"PLFilteredAlbum.m" lineNumber:785 description:{@"Parameter for PLAlbumFilterHideNonRecentCloudAssets must be a date but it's %@", v16}];
    }

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudHasUnseenComments = YES || cloudBatchPublishDate >= %@", v16];
    [v15 addObject:v17];
  }

  if ((v6 & 0x100) != 0)
  {
    v28 = [PLManagedAsset fetchPredicateForLegacyRequiredResourcesLocallyAvailable:0 photoLibrary:v10];
    [v15 addObject:v28];

    if ((v6 & 0x200) == 0)
    {
LABEL_16:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(trashedState) == %d", 0];
  [v15 addObject:v29];

  if ((v6 & 0x400) == 0)
  {
LABEL_17:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(hidden) == 0"];
  [v15 addObject:v30];

  if ((v6 & 0x2000) == 0)
  {
LABEL_18:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  v31 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPlaceholderAsset"), 1}];
  [v15 addObject:v31];

  if ((v6 & 0x800) == 0)
  {
LABEL_19:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_33:
  v32 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPhotoStreamAsset"), 1}];
  [v15 addObject:v32];

  if ((v6 & 0x1000) != 0)
  {
LABEL_20:
    v18 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForMomentSharedAsset"), 1}];
    [v15 addObject:v18];
  }

LABEL_21:
  if ((v6 & 0x80) != 0)
  {
    v19 = MEMORY[0x1E696AB28];
    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kind", 1];
    v40[0] = v20;
    v21 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCloudSharedAsset"), 1}];
    v40[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v23 = [v19 orPredicateWithSubpredicates:v22];
    [v15 addObject:v23];
  }

  v24 = [v11 count];
  v25 = [v15 count];
  if (v24)
  {
    if (v24 == 1)
    {
      [v11 objectAtIndex:0];
    }

    else
    {
      [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v11];
    }
    v24 = ;
  }

  if (v25)
  {
    v33 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v15];
    v34 = v33;
    if (v24)
    {
      v35 = MEMORY[0x1E696AB28];
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v24, v33, 0}];
      v37 = [v35 andPredicateWithSubpredicates:v36];

      v24 = v37;
    }

    else
    {
      v24 = v33;
    }
  }

  return v24;
}

+ (id)filteredAlbum:(id)a3 intersectFilter:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v4 = [v7 filter] & v4;
    v8 = [v7 filterParameters];
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 filteredAlbum:v6 filter:v4 parameters:v8];

  return v9;
}

+ (id)filteredAlbum:(id)a3 predicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithBackingAlbum:v7 predicate:v6];

  return v8;
}

+ (id)filteredAlbum:(id)a3 filter:(int)a4 parameters:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v8;
    if ([v8 filter] == v6)
    {
      v10 = [v8 filterParameters];
      if (!v10 || (v11 = v10, [v8 filterParameters], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToArray:", v9), v12, v11, (v13 & 1) != 0))
      {
        v14 = v8;
        goto LABEL_12;
      }
    }

    v15 = [v8 backingAlbum];

    v8 = v15;
  }

  if (v6 && v8)
  {
    v16 = [[a1 alloc] initWithBackingAlbum:v8 filter:v6 parameters:v9];
  }

  else
  {
    v16 = v8;
    v8 = v16;
  }

  v14 = v16;
LABEL_12:

  return v14;
}

@end
@interface PLFilteredAlbum
+ (id)descriptionForAlbumFilter:(int)filter parameters:(id)parameters;
+ (id)filteredAlbum:(id)album filter:(int)filter parameters:(id)parameters;
+ (id)filteredAlbum:(id)album intersectFilter:(int)filter;
+ (id)filteredAlbum:(id)album predicate:(id)predicate;
+ (id)filteredIndexesInAlbum:(id)album predicate:(id)predicate;
+ (id)predicateForAlbumFilter:(int)filter parameters:(id)parameters photoLibrary:(id)library;
- (BOOL)canContributeToCloudSharedAlbum;
- (BOOL)canPerformEditOperation:(unint64_t)operation;
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
- (BOOL)mappedDataSourceChanged:(id)changed remoteNotificationData:(id)data;
- (BOOL)shouldDeleteWhenEmpty;
- (BOOL)shouldIncludeObjectAtIndex:(unint64_t)index;
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
- (PLFilteredAlbum)initWithBackingAlbum:(id)album filter:(int)filter parameters:(id)parameters;
- (PLFilteredAlbum)initWithBackingAlbum:(id)album predicate:(id)predicate;
- (id)_cloudSharedBackingAlbum;
- (id)_editableBackingAlbum;
- (id)cloudOwnerDisplayNameIncludingEmail:(BOOL)email allowsEmail:(BOOL)allowsEmail;
- (id)currentStateForChange;
- (id)filteredAssetsAtIndexes:(id)indexes;
- (id)localizedSharedByLabelAllowsEmail:(BOOL)email;
- (id)objectInFilteredAssetsAtIndex:(unint64_t)index;
- (id)sortingComparator;
- (int)cloudRelationshipStateLocalValue;
- (int)cloudRelationshipStateValue;
- (int)kindValue;
- (int)pendingItemsCount;
- (int)pendingItemsType;
- (unint64_t)approximateCount;
- (unint64_t)assetsCount;
- (unint64_t)countOfFilteredAssets;
- (unint64_t)indexInFilteredAssetsOfObject:(id)object;
- (unint64_t)photosCount;
- (unint64_t)unseenAssetsCountIntegerValue;
- (unint64_t)videosCount;
- (void)_commonInitWithBackingAlbum:(id)album predicate:(id)predicate;
- (void)backingContextDidChange:(id)change;
- (void)batchFetchAssets:(id)assets;
- (void)dealloc;
- (void)getUnseenStartMarkerIndex:(unint64_t *)index count:(unint64_t *)count showsProgress:(BOOL *)progress;
- (void)insertFilteredAssets:(id)assets atIndexes:(id)indexes;
- (void)insertObject:(id)object inFilteredAssetsAtIndex:(unint64_t)index;
- (void)removeFilteredAssetsAtIndexes:(id)indexes;
- (void)removeObjectFromFilteredAssetsAtIndex:(unint64_t)index;
- (void)replaceFilteredAssetsAtIndexes:(id)indexes withFilteredValues:(id)values;
- (void)replaceObjectInFilteredAssetsAtIndex:(unint64_t)index withObject:(id)object;
- (void)setBackingAlbum:(id)album;
- (void)setCloudCreationDate:(id)date;
- (void)setCloudGUID:(id)d;
- (void)setCloudLastContributionDate:(id)date;
- (void)setCloudLastInterestingChangeDate:(id)date;
- (void)setCloudMetadata:(id)metadata;
- (void)setCloudMultipleContributorsEnabled:(id)enabled;
- (void)setCloudMultipleContributorsEnabledLocal:(id)local;
- (void)setCloudNotificationsEnabled:(BOOL)enabled;
- (void)setCloudOwnerEmail:(id)email;
- (void)setCloudOwnerFirstName:(id)name;
- (void)setCloudOwnerFullName:(id)name;
- (void)setCloudOwnerHashedPersonID:(id)d;
- (void)setCloudOwnerIsWhitelisted:(BOOL)whitelisted;
- (void)setCloudOwnerLastName:(id)name;
- (void)setCloudPersonID:(id)d;
- (void)setCloudPublicURLEnabled:(id)enabled;
- (void)setCloudPublicURLEnabledLocal:(id)local;
- (void)setCloudSubscriptionDate:(id)date;
- (void)setHasUnseenContentBoolValue:(BOOL)value;
- (void)setImportSessionID:(id)d;
- (void)setInvitationRecords:(id)records;
- (void)setPublicURL:(id)l;
- (void)setUnseenAssetsCount:(id)count;
- (void)setUnseenAssetsCountIntegerValue:(unint64_t)value;
- (void)updateCloudLastContributionDateWithDate:(id)date;
- (void)updateCloudLastInterestingChangeDateWithDate:(id)date;
- (void)userDeleteSubscriberRecord:(id)record;
@end

@implementation PLFilteredAlbum

- (void)replaceFilteredAssetsAtIndexes:(id)indexes withFilteredValues:(id)values
{
  valuesCopy = values;
  indexesCopy = indexes;
  _editableBackingAlbum = [(PLFilteredAlbum *)self _editableBackingAlbum];
  userEditableAssets = [_editableBackingAlbum userEditableAssets];
  v9 = [(PLIndexMapper *)self->_indexMapper backingIndexesForIndexes:indexesCopy];

  [userEditableAssets replaceObjectsAtIndexes:v9 withObjects:valuesCopy];
}

- (void)replaceObjectInFilteredAssetsAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  _editableBackingAlbum = [(PLFilteredAlbum *)self _editableBackingAlbum];
  userEditableAssets = [_editableBackingAlbum userEditableAssets];
  [userEditableAssets replaceObjectAtIndex:-[PLIndexMapper backingIndexForIndex:](self->_indexMapper withObject:{"backingIndexForIndex:", index), objectCopy}];
}

- (void)removeFilteredAssetsAtIndexes:(id)indexes
{
  v6 = [(PLIndexMapper *)self->_indexMapper backingIndexesForIndexes:indexes];
  _editableBackingAlbum = [(PLFilteredAlbum *)self _editableBackingAlbum];
  userEditableAssets = [_editableBackingAlbum userEditableAssets];
  [userEditableAssets removeObjectsAtIndexes:v6];
}

- (void)insertFilteredAssets:(id)assets atIndexes:(id)indexes
{
  indexMapper = self->_indexMapper;
  assetsCopy = assets;
  v10 = [(PLIndexMapper *)indexMapper backingIndexesForIndexes:indexes];
  _editableBackingAlbum = [(PLFilteredAlbum *)self _editableBackingAlbum];
  userEditableAssets = [_editableBackingAlbum userEditableAssets];
  [userEditableAssets insertObjects:assetsCopy atIndexes:v10];
}

- (void)removeObjectFromFilteredAssetsAtIndex:(unint64_t)index
{
  _editableBackingAlbum = [(PLFilteredAlbum *)self _editableBackingAlbum];
  userEditableAssets = [_editableBackingAlbum userEditableAssets];
  [userEditableAssets removeObjectAtIndex:{-[PLIndexMapper backingIndexForIndex:](self->_indexMapper, "backingIndexForIndex:", index)}];
}

- (void)insertObject:(id)object inFilteredAssetsAtIndex:(unint64_t)index
{
  objectCopy = object;
  _editableBackingAlbum = [(PLFilteredAlbum *)self _editableBackingAlbum];
  userEditableAssets = [_editableBackingAlbum userEditableAssets];
  [userEditableAssets insertObject:objectCopy atIndex:{-[PLIndexMapper backingIndexForIndex:](self->_indexMapper, "backingIndexForIndex:", index)}];
}

- (id)_editableBackingAlbum
{
  if (self->_backingAlbumSupportsEdits)
  {
    backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  }

  else
  {
    backingAlbum = 0;
  }

  return backingAlbum;
}

- (id)filteredAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  assets = [backingAlbum assets];
  v7 = [(PLIndexMapper *)self->_indexMapper backingIndexesForIndexes:indexesCopy];

  v8 = [assets objectsAtIndexes:v7];

  return v8;
}

- (id)objectInFilteredAssetsAtIndex:(unint64_t)index
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  assets = [backingAlbum assets];
  v7 = [assets objectAtIndex:{-[PLIndexMapper backingIndexForIndex:](self->_indexMapper, "backingIndexForIndex:", index)}];

  return v7;
}

- (unint64_t)indexInFilteredAssetsOfObject:(id)object
{
  objectCopy = object;
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  assets = [backingAlbum assets];
  v7 = [assets indexOfObject:objectCopy];

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
  filteredIndexes = [(PLFilteredAlbum *)self filteredIndexes];
  v3 = [filteredIndexes count];

  return v3;
}

- (BOOL)mappedDataSourceChanged:(id)changed remoteNotificationData:(id)data
{
  changedCopy = changed;
  [(PLFilteredAlbum *)self set_assets:0];
  v6 = [(PLIndexMapper *)self->_indexMapper applyContainerChangeNotification:changedCopy changeTypes:15 toFilteredIndexes:self->_filteredIndexes];

  if (!v6)
  {
    filteredIndexes = self->_filteredIndexes;
    self->_filteredIndexes = 0;
  }

  return 1;
}

- (BOOL)shouldIncludeObjectAtIndex:(unint64_t)index
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  assets = [backingAlbum assets];
  v7 = [assets objectAtIndex:index];

  predicate = [(PLFilteredAlbum *)self predicate];
  LOBYTE(backingAlbum) = [predicate evaluateWithObject:v7];

  return backingAlbum;
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
    backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
    predicate = [(PLFilteredAlbum *)self predicate];
    v8 = [v5 filteredIndexesInAlbum:backingAlbum predicate:predicate];

    v9 = self->_filteredIndexes;
    self->_filteredIndexes = v8;

    objc_autoreleasePoolPop(v4);
    filteredIndexes = self->_filteredIndexes;
  }

  v10 = [(NSMutableIndexSet *)filteredIndexes copy];

  return v10;
}

- (PLFilteredAlbum)initWithBackingAlbum:(id)album filter:(int)filter parameters:(id)parameters
{
  v6 = *&filter;
  albumCopy = album;
  parametersCopy = parameters;
  v15.receiver = self;
  v15.super_class = PLFilteredAlbum;
  v10 = [(PLFilteredAlbum *)&v15 init];
  if (v10)
  {
    v11 = objc_opt_class();
    photoLibrary = [albumCopy photoLibrary];
    v13 = [v11 predicateForAlbumFilter:v6 parameters:parametersCopy photoLibrary:photoLibrary];

    [(PLFilteredAlbum *)v10 _commonInitWithBackingAlbum:albumCopy predicate:v13];
    [(PLFilteredAlbum *)v10 setFilter:v6];
    objc_storeStrong(&v10->_filterParameters, parameters);
  }

  return v10;
}

- (PLFilteredAlbum)initWithBackingAlbum:(id)album predicate:(id)predicate
{
  albumCopy = album;
  predicateCopy = predicate;
  v11.receiver = self;
  v11.super_class = PLFilteredAlbum;
  v8 = [(PLFilteredAlbum *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PLFilteredAlbum *)v8 _commonInitWithBackingAlbum:albumCopy predicate:predicateCopy];
  }

  return v9;
}

- (void)_commonInitWithBackingAlbum:(id)album predicate:(id)predicate
{
  albumCopy = album;
  predicateCopy = predicate;
  v7 = objc_autoreleasePoolPush();
  [(PLFilteredAlbum *)self setBackingAlbum:albumCopy];
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    backingAlbum2 = [(PLFilteredAlbum *)self backingAlbum];
    [backingAlbum2 registerDerivedAlbum:self];
  }

  v11 = [[PLIndexMapper alloc] initWithDataSource:self];
  indexMapper = self->_indexMapper;
  self->_indexMapper = v11;

  backingAlbum3 = [(PLFilteredAlbum *)self backingAlbum];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if (v14)
  {
    backingAlbum4 = [(PLFilteredAlbum *)self backingAlbum];
    [(PLFilteredAlbum *)self setIsObservingContextChanges:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E695D360];
    managedObjectContext = [backingAlbum4 managedObjectContext];
    [defaultCenter addObserver:self selector:sel_backingContextDidChange_ name:v17 object:managedObjectContext];
  }

  [(PLFilteredAlbum *)self setPredicate:predicateCopy];
  objc_autoreleasePoolPop(v7);
}

- (int)pendingItemsType
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  pendingItemsType = [backingAlbum pendingItemsType];

  return pendingItemsType;
}

- (int)pendingItemsCount
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  pendingItemsCount = [backingAlbum pendingItemsCount];

  return pendingItemsCount;
}

- (void)backingContextDidChange:(id)change
{
  changeCopy = change;
  v4 = objc_autoreleasePoolPush();
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E695D2F8]];

  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  v8 = [v6 containsObject:backingAlbum];

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

- (void)userDeleteSubscriberRecord:(id)record
{
  recordCopy = record;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum userDeleteSubscriberRecord:recordCopy];
}

- (void)getUnseenStartMarkerIndex:(unint64_t *)index count:(unint64_t *)count showsProgress:(BOOL *)progress
{
  v16 = 0;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum getUnseenStartMarkerIndex:&v17 count:&v16 showsProgress:progress];

  assetsCount = [(PLFilteredAlbum *)self assetsCount];
  v11 = v17;
  if (index)
  {
    v12 = assetsCount - 1;
    if (v17 < assetsCount - 1)
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

    *index = v13;
  }

  if (count)
  {
    v14 = assetsCount - v11;
    if (v16 < assetsCount - v11)
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

    *count = v15;
  }
}

- (void)updateCloudLastContributionDateWithDate:(id)date
{
  dateCopy = date;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum updateCloudLastContributionDateWithDate:dateCopy];
}

- (void)updateCloudLastInterestingChangeDateWithDate:(id)date
{
  dateCopy = date;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum updateCloudLastInterestingChangeDateWithDate:dateCopy];
}

- (id)cloudOwnerDisplayNameIncludingEmail:(BOOL)email allowsEmail:(BOOL)allowsEmail
{
  allowsEmailCopy = allowsEmail;
  emailCopy = email;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v7 = [_cloudSharedBackingAlbum cloudOwnerDisplayNameIncludingEmail:emailCopy allowsEmail:allowsEmailCopy];

  return v7;
}

- (NSOrderedSet)cloudAlbumSubscriberRecords
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudAlbumSubscriberRecords = [_cloudSharedBackingAlbum cloudAlbumSubscriberRecords];

  return cloudAlbumSubscriberRecords;
}

- (void)setCloudNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudNotificationsEnabled:enabledCopy];
}

- (BOOL)cloudNotificationsEnabled
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudNotificationsEnabled = [_cloudSharedBackingAlbum cloudNotificationsEnabled];

  return cloudNotificationsEnabled;
}

- (NSDate)cloudFirstRecentBatchDate
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudFirstRecentBatchDate = [_cloudSharedBackingAlbum cloudFirstRecentBatchDate];

  return cloudFirstRecentBatchDate;
}

- (NSString)localizedSharedWithLabel
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  localizedSharedWithLabel = [_cloudSharedBackingAlbum localizedSharedWithLabel];

  return localizedSharedWithLabel;
}

- (id)localizedSharedByLabelAllowsEmail:(BOOL)email
{
  emailCopy = email;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  v5 = [_cloudSharedBackingAlbum localizedSharedByLabelAllowsEmail:emailCopy];

  return v5;
}

- (int)cloudRelationshipStateLocalValue
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudRelationshipStateLocalValue = [_cloudSharedBackingAlbum cloudRelationshipStateLocalValue];

  return cloudRelationshipStateLocalValue;
}

- (int)cloudRelationshipStateValue
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudRelationshipStateValue = [_cloudSharedBackingAlbum cloudRelationshipStateValue];

  return cloudRelationshipStateValue;
}

- (void)setCloudLastContributionDate:(id)date
{
  dateCopy = date;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudLastContributionDate:dateCopy];
}

- (NSDate)cloudLastContributionDate
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudLastContributionDate = [_cloudSharedBackingAlbum cloudLastContributionDate];

  return cloudLastContributionDate;
}

- (void)setCloudCreationDate:(id)date
{
  dateCopy = date;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudCreationDate:dateCopy];
}

- (NSDate)cloudCreationDate
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudCreationDate = [_cloudSharedBackingAlbum cloudCreationDate];

  return cloudCreationDate;
}

- (void)setCloudLastInterestingChangeDate:(id)date
{
  dateCopy = date;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudLastInterestingChangeDate:dateCopy];
}

- (NSDate)cloudLastInterestingChangeDate
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudLastInterestingChangeDate = [_cloudSharedBackingAlbum cloudLastInterestingChangeDate];

  return cloudLastInterestingChangeDate;
}

- (void)setCloudMultipleContributorsEnabledLocal:(id)local
{
  localCopy = local;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudMultipleContributorsEnabledLocal:localCopy];
}

- (NSNumber)cloudMultipleContributorsEnabledLocal
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudMultipleContributorsEnabledLocal = [_cloudSharedBackingAlbum cloudMultipleContributorsEnabledLocal];

  return cloudMultipleContributorsEnabledLocal;
}

- (void)setCloudMultipleContributorsEnabled:(id)enabled
{
  enabledCopy = enabled;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudMultipleContributorsEnabled:enabledCopy];
}

- (NSNumber)cloudMultipleContributorsEnabled
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudMultipleContributorsEnabled = [_cloudSharedBackingAlbum cloudMultipleContributorsEnabled];

  return cloudMultipleContributorsEnabled;
}

- (void)setCloudPublicURLEnabledLocal:(id)local
{
  localCopy = local;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudPublicURLEnabledLocal:localCopy];
}

- (NSNumber)cloudPublicURLEnabledLocal
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudPublicURLEnabledLocal = [_cloudSharedBackingAlbum cloudPublicURLEnabledLocal];

  return cloudPublicURLEnabledLocal;
}

- (void)setCloudPublicURLEnabled:(id)enabled
{
  enabledCopy = enabled;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudPublicURLEnabled:enabledCopy];
}

- (NSNumber)cloudPublicURLEnabled
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudPublicURLEnabled = [_cloudSharedBackingAlbum cloudPublicURLEnabled];

  return cloudPublicURLEnabled;
}

- (void)setUnseenAssetsCountIntegerValue:(unint64_t)value
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setUnseenAssetsCountIntegerValue:value];
}

- (unint64_t)unseenAssetsCountIntegerValue
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  unseenAssetsCountIntegerValue = [_cloudSharedBackingAlbum unseenAssetsCountIntegerValue];

  return unseenAssetsCountIntegerValue;
}

- (void)setUnseenAssetsCount:(id)count
{
  countCopy = count;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setUnseenAssetsCount:countCopy];
}

- (NSNumber)unseenAssetsCount
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  unseenAssetsCount = [_cloudSharedBackingAlbum unseenAssetsCount];

  return unseenAssetsCount;
}

- (void)setInvitationRecords:(id)records
{
  recordsCopy = records;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setInvitationRecords:recordsCopy];
}

- (NSOrderedSet)invitationRecords
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  invitationRecords = [_cloudSharedBackingAlbum invitationRecords];

  return invitationRecords;
}

- (void)setCloudPersonID:(id)d
{
  dCopy = d;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudPersonID:dCopy];
}

- (NSString)cloudPersonID
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudPersonID = [_cloudSharedBackingAlbum cloudPersonID];

  return cloudPersonID;
}

- (void)setPublicURL:(id)l
{
  lCopy = l;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setPublicURL:lCopy];
}

- (NSString)publicURL
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  publicURL = [_cloudSharedBackingAlbum publicURL];

  return publicURL;
}

- (void)setCloudSubscriptionDate:(id)date
{
  dateCopy = date;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudSubscriptionDate:dateCopy];
}

- (NSDate)cloudSubscriptionDate
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudSubscriptionDate = [_cloudSharedBackingAlbum cloudSubscriptionDate];

  return cloudSubscriptionDate;
}

- (void)setCloudOwnerIsWhitelisted:(BOOL)whitelisted
{
  whitelistedCopy = whitelisted;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudOwnerIsWhitelisted:whitelistedCopy];
}

- (BOOL)cloudOwnerIsWhitelisted
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudOwnerIsWhitelisted = [_cloudSharedBackingAlbum cloudOwnerIsWhitelisted];

  return cloudOwnerIsWhitelisted;
}

- (void)setCloudOwnerHashedPersonID:(id)d
{
  dCopy = d;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudOwnerHashedPersonID:dCopy];
}

- (NSString)cloudOwnerHashedPersonID
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudOwnerHashedPersonID = [_cloudSharedBackingAlbum cloudOwnerHashedPersonID];

  return cloudOwnerHashedPersonID;
}

- (void)setCloudOwnerEmail:(id)email
{
  emailCopy = email;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudOwnerEmail:emailCopy];
}

- (NSString)cloudOwnerEmail
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudOwnerEmail = [_cloudSharedBackingAlbum cloudOwnerEmail];

  return cloudOwnerEmail;
}

- (void)setCloudOwnerFullName:(id)name
{
  nameCopy = name;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudOwnerFullName:nameCopy];
}

- (NSString)cloudOwnerFullName
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudOwnerFullName = [_cloudSharedBackingAlbum cloudOwnerFullName];

  return cloudOwnerFullName;
}

- (void)setCloudOwnerLastName:(id)name
{
  nameCopy = name;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudOwnerLastName:nameCopy];
}

- (NSString)cloudOwnerLastName
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudOwnerLastName = [_cloudSharedBackingAlbum cloudOwnerLastName];

  return cloudOwnerLastName;
}

- (void)setCloudOwnerFirstName:(id)name
{
  nameCopy = name;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudOwnerFirstName:nameCopy];
}

- (NSString)cloudOwnerFirstName
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudOwnerFirstName = [_cloudSharedBackingAlbum cloudOwnerFirstName];

  return cloudOwnerFirstName;
}

- (void)setCloudMetadata:(id)metadata
{
  metadataCopy = metadata;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudMetadata:metadataCopy];
}

- (NSDictionary)cloudMetadata
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudMetadata = [_cloudSharedBackingAlbum cloudMetadata];

  return cloudMetadata;
}

- (void)setCloudGUID:(id)d
{
  dCopy = d;
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  [_cloudSharedBackingAlbum setCloudGUID:dCopy];
}

- (NSString)cloudGUID
{
  _cloudSharedBackingAlbum = [(PLFilteredAlbum *)self _cloudSharedBackingAlbum];
  cloudGUID = [_cloudSharedBackingAlbum cloudGUID];

  return cloudGUID;
}

- (id)_cloudSharedBackingAlbum
{
  if (self->_backingAlbumSupportsCloudShared)
  {
    backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  }

  else
  {
    backingAlbum = 0;
  }

  return backingAlbum;
}

- (void)batchFetchAssets:(id)assets
{
  assetsCopy = assets;
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  [backingAlbum batchFetchAssets:assetsCopy];
}

- (id)sortingComparator
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  sortingComparator = [backingAlbum sortingComparator];

  return sortingComparator;
}

- (NSURL)groupURL
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = MEMORY[0x1E696AEC0];
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  uuid = [backingAlbum uuid];
  v7 = [v4 stringWithFormat:@"%@://%@/?%@=%@&%@=%d", @"assets-library", @"group", @"id", uuid, @"filter", -[PLFilteredAlbum filter](self, "filter")];
  v8 = [v3 URLWithString:v7];

  return v8;
}

- (void)setImportSessionID:(id)d
{
  dCopy = d;
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  [backingAlbum setImportSessionID:dCopy];
}

- (NSString)importSessionID
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  importSessionID = [backingAlbum importSessionID];

  return importSessionID;
}

- (BOOL)shouldDeleteWhenEmpty
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  shouldDeleteWhenEmpty = [backingAlbum shouldDeleteWhenEmpty];

  return shouldDeleteWhenEmpty;
}

- (BOOL)canPerformEditOperation:(unint64_t)operation
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  LOBYTE(operation) = [backingAlbum canPerformEditOperation:operation];

  return operation;
}

- (NSArray)localizedLocationNames
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  localizedLocationNames = [backingAlbum localizedLocationNames];

  return localizedLocationNames;
}

- (BOOL)canShowAvalancheStacks
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  canShowAvalancheStacks = [backingAlbum canShowAvalancheStacks];

  return canShowAvalancheStacks;
}

- (BOOL)canShowComments
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  canShowComments = [backingAlbum canShowComments];

  return canShowComments;
}

- (BOOL)canContributeToCloudSharedAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  if ([backingAlbum isOwnedCloudSharedAlbum])
  {
    isMultipleContributorCloudSharedAlbum = 1;
  }

  else
  {
    backingAlbum2 = [(PLFilteredAlbum *)self backingAlbum];
    isMultipleContributorCloudSharedAlbum = [backingAlbum2 isMultipleContributorCloudSharedAlbum];
  }

  return isMultipleContributorCloudSharedAlbum;
}

- (BOOL)isProjectAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isProjectAlbum = [backingAlbum isProjectAlbum];

  return isProjectAlbum;
}

- (BOOL)isUserLibraryAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isUserLibraryAlbum = [backingAlbum isUserLibraryAlbum];

  return isUserLibraryAlbum;
}

- (BOOL)isRecentlyAddedAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isRecentlyAddedAlbum = [backingAlbum isRecentlyAddedAlbum];

  return isRecentlyAddedAlbum;
}

- (BOOL)isMultipleContributorCloudSharedAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isMultipleContributorCloudSharedAlbum = [backingAlbum isMultipleContributorCloudSharedAlbum];

  return isMultipleContributorCloudSharedAlbum;
}

- (BOOL)isFamilyCloudSharedAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isFamilyCloudSharedAlbum = [backingAlbum isFamilyCloudSharedAlbum];

  return isFamilyCloudSharedAlbum;
}

- (BOOL)isOwnedCloudSharedAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isOwnedCloudSharedAlbum = [backingAlbum isOwnedCloudSharedAlbum];

  return isOwnedCloudSharedAlbum;
}

- (BOOL)isInTrash
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isInTrash = [backingAlbum isInTrash];

  return isInTrash;
}

- (BOOL)isFolder
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isFolder = [backingAlbum isFolder];

  return isFolder;
}

- (BOOL)isStandInAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isStandInAlbum = [backingAlbum isStandInAlbum];

  return isStandInAlbum;
}

- (BOOL)isPendingPhotoStreamAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isPendingPhotoStreamAlbum = [backingAlbum isPendingPhotoStreamAlbum];

  return isPendingPhotoStreamAlbum;
}

- (BOOL)isCloudSharedAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isCloudSharedAlbum = [backingAlbum isCloudSharedAlbum];

  return isCloudSharedAlbum;
}

- (BOOL)isPhotoStreamAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isPhotoStreamAlbum = [backingAlbum isPhotoStreamAlbum];

  return isPhotoStreamAlbum;
}

- (BOOL)isPanoramasAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isPanoramasAlbum = [backingAlbum isPanoramasAlbum];

  return isPanoramasAlbum;
}

- (BOOL)isCameraAlbum
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isCameraAlbum = [backingAlbum isCameraAlbum];

  return isCameraAlbum;
}

- (BOOL)isLibrary
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  isLibrary = [backingAlbum isLibrary];

  return isLibrary;
}

- (NSObject)posterImage
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  posterImage = [backingAlbum posterImage];

  return posterImage;
}

- (NSString)name
{
  NSLog(&cfstr_WarningTheName.isa, a2, self);
  PLPrintSymbolicStackTrace();

  return [(PLFilteredAlbum *)self localizedTitle];
}

- (NSString)localizedTitle
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  localizedTitle = [backingAlbum localizedTitle];

  return localizedTitle;
}

- (unint64_t)videosCount
{
  filter = [(PLFilteredAlbum *)self filter];
  if (filter == 2)
  {

    return [(PLFilteredAlbum *)self approximateCount];
  }

  else if ((filter & 2) != 0 || (filter & 5) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    assets = [(PLFilteredAlbum *)self assets];
    array = [assets array];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
    v9 = [array filteredArrayUsingPredicate:v8];

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
  filter = [(PLFilteredAlbum *)self filter];
  if (filter == 1)
  {

    return [(PLFilteredAlbum *)self approximateCount];
  }

  else if ((filter & 1) != 0 || (filter & 6) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    assets = [(PLFilteredAlbum *)self assets];
    array = [assets array];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 0];
    v9 = [array filteredArrayUsingPredicate:v8];

    v10 = [v9 count];
    objc_autoreleasePoolPop(v5);
    return v10;
  }

  else
  {
    return 0;
  }
}

- (void)setHasUnseenContentBoolValue:(BOOL)value
{
  valueCopy = value;
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  [backingAlbum setHasUnseenContentBoolValue:valueCopy];
}

- (BOOL)hasUnseenContentBoolValue
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  hasUnseenContentBoolValue = [backingAlbum hasUnseenContentBoolValue];

  return hasUnseenContentBoolValue;
}

- (unint64_t)assetsCount
{
  filteredIndexes = [(PLFilteredAlbum *)self filteredIndexes];
  v3 = [filteredIndexes count];

  return v3;
}

- (unint64_t)approximateCount
{
  filteredIndexes = [(PLFilteredAlbum *)self filteredIndexes];
  v3 = [filteredIndexes count];

  return v3;
}

- (NSMutableOrderedSet)userEditableAssets
{
  _assets = [(PLFilteredAlbum *)self _assets];

  if (!_assets)
  {
    v4 = [(PLFilteredAlbum *)self mutableOrderedSetValueForKey:@"filteredAssets"];
    [(PLFilteredAlbum *)self set_assets:v4];
  }

  return [(PLFilteredAlbum *)self _assets];
}

- (NSMutableOrderedSet)mutableAssets
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLFilteredAlbum.m" lineNumber:179 description:{@"This album does not support mutations via mutableAssets: %@", self}];

  return 0;
}

- (int)kindValue
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  kindValue = [backingAlbum kindValue];

  return kindValue;
}

- (NSNumber)kind
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  kind = [backingAlbum kind];

  return kind;
}

- (NSString)title
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  title = [backingAlbum title];

  return title;
}

- (NSString)uuid
{
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  uuid = [backingAlbum uuid];

  return uuid;
}

- (NSMutableOrderedSet)_assets
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_assets);

  return WeakRetained;
}

- (void)setBackingAlbum:(id)album
{
  albumCopy = album;
  if (self->_backingAlbum != albumCopy)
  {
    v7 = albumCopy;
    objc_storeStrong(&self->_backingAlbum, album);
    self->_backingAlbumSupportsEdits = [(PLAlbumProtocol *)self->_backingAlbum conformsToProtocol:&unk_1F0FE8B68];
    v6 = [(PLAlbumProtocol *)self->_backingAlbum conformsToProtocol:&unk_1F0FFFF38];
    albumCopy = v7;
    self->_backingAlbumSupportsCloudShared = v6;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  backingAlbum = [(PLFilteredAlbum *)self backingAlbum];
  v6 = objc_opt_class();
  backingAlbum2 = [(PLFilteredAlbum *)self backingAlbum];
  v8 = [objc_opt_class() descriptionForAlbumFilter:-[PLFilteredAlbum filter](self parameters:{"filter"), self->_filterParameters}];
  v9 = [v3 stringWithFormat:@"<%@ %p> album: <%@ %p> filter: %@", v4, self, v6, backingAlbum2, v8];

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PLFilteredAlbum *)self setBackingAlbum:0];
  [(PLFilteredAlbum *)self set_assets:0];
  filteredIndexes = self->_filteredIndexes;
  self->_filteredIndexes = 0;

  v5.receiver = self;
  v5.super_class = PLFilteredAlbum;
  [(PLFilteredAlbum *)&v5 dealloc];
}

+ (id)filteredIndexesInAlbum:(id)album predicate:(id)predicate
{
  albumCopy = album;
  predicateCopy = predicate;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v9 = objc_autoreleasePoolPush(), [albumCopy filteredIndexesForPredicate:predicateCopy], v10 = objc_claimAutoreleasedReturnValue(), objc_autoreleasePoolPop(v9), !v10))
  {
    assets = [albumCopy assets];
    array = [assets array];

    v13 = [array filteredArrayUsingPredicate:predicateCopy];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v15 = [array count];
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
    v16 = array;
    v21 = v16;
    v25 = a2;
    selfCopy = self;
    v17 = indexSet;
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

+ (id)descriptionForAlbumFilter:(int)filter parameters:(id)parameters
{
  filterCopy = filter;
  parametersCopy = parameters;
  array = [MEMORY[0x1E695DF70] array];
  v7 = array;
  if (filterCopy)
  {
    [array addObject:@"Photos"];
    if ((filterCopy & 2) == 0)
    {
LABEL_3:
      if ((filterCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((filterCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v7 addObject:@"Videos"];
  if ((filterCopy & 4) == 0)
  {
LABEL_4:
    if ((filterCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v7 addObject:@"Audio"];
  if ((filterCopy & 0x10) == 0)
  {
LABEL_5:
    if ((filterCopy & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v7 addObject:@"Unknown"];
  if ((filterCopy & 0x40) == 0)
  {
LABEL_6:
    if ((filterCopy & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v7 addObject:@"HideNonRecentCloudAssets"];
  if ((filterCopy & 0x100) == 0)
  {
LABEL_7:
    if ((filterCopy & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v7 addObject:@"HideAssetsWithoutLegacyRequiredResourcesLocallyAvailable"];
  if ((filterCopy & 0x200) == 0)
  {
LABEL_8:
    if ((filterCopy & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v7 addObject:@"PLAlbumFilterHideTrashed"];
  if ((filterCopy & 8) == 0)
  {
LABEL_9:
    if ((filterCopy & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v7 addObject:@"PLAlbumFilterShowPhotoBooth"];
  if ((filterCopy & 0x800) == 0)
  {
LABEL_10:
    if ((filterCopy & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  [v7 addObject:@"PLAlbumFilterHidePhotoStream"];
  if ((filterCopy & 0x1000) != 0)
  {
LABEL_11:
    [v7 addObject:@"PLAlbumFilterHideMomentShared"];
  }

LABEL_12:
  if ([v7 count])
  {
    v8 = [v7 componentsJoinedByString:@"+"];
    v9 = v8;
    if (parametersCopy)
    {
      parametersCopy = [(__CFString *)v8 stringByAppendingFormat:@" params: %@", parametersCopy];

      v9 = parametersCopy;
    }
  }

  else
  {
    v9 = @"{none}";
  }

  return v9;
}

+ (id)predicateForAlbumFilter:(int)filter parameters:(id)parameters photoLibrary:(id)library
{
  filterCopy = filter;
  v40[2] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  libraryCopy = library;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  if (filterCopy)
  {
    v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 0];
    [v11 addObject:v26];

    if ((filterCopy & 2) == 0)
    {
LABEL_3:
      if ((filterCopy & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((filterCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
  [v11 addObject:v27];

  if ((filterCopy & 4) != 0)
  {
LABEL_4:
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 2];
    [v11 addObject:v12];
  }

LABEL_5:
  if ((filterCopy & 8) != 0)
  {
    v13 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPhotoBoothAsset"), 1}];
    [v11 addObject:v13];
  }

  if ((filterCopy & 0x10) != 0)
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 3];
    [v11 addObject:v14];
  }

  array = [MEMORY[0x1E695DF70] array];
  if ((filterCopy & 0x40) != 0 && [parametersCopy count])
  {
    v16 = [parametersCopy objectAtIndex:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLFilteredAlbum.m" lineNumber:785 description:{@"Parameter for PLAlbumFilterHideNonRecentCloudAssets must be a date but it's %@", v16}];
    }

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudHasUnseenComments = YES || cloudBatchPublishDate >= %@", v16];
    [array addObject:v17];
  }

  if ((filterCopy & 0x100) != 0)
  {
    v28 = [PLManagedAsset fetchPredicateForLegacyRequiredResourcesLocallyAvailable:0 photoLibrary:libraryCopy];
    [array addObject:v28];

    if ((filterCopy & 0x200) == 0)
    {
LABEL_16:
      if ((filterCopy & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((filterCopy & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(trashedState) == %d", 0];
  [array addObject:v29];

  if ((filterCopy & 0x400) == 0)
  {
LABEL_17:
    if ((filterCopy & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(hidden) == 0"];
  [array addObject:v30];

  if ((filterCopy & 0x2000) == 0)
  {
LABEL_18:
    if ((filterCopy & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  v31 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPlaceholderAsset"), 1}];
  [array addObject:v31];

  if ((filterCopy & 0x800) == 0)
  {
LABEL_19:
    if ((filterCopy & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_33:
  v32 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPhotoStreamAsset"), 1}];
  [array addObject:v32];

  if ((filterCopy & 0x1000) != 0)
  {
LABEL_20:
    v18 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForMomentSharedAsset"), 1}];
    [array addObject:v18];
  }

LABEL_21:
  if ((filterCopy & 0x80) != 0)
  {
    v19 = MEMORY[0x1E696AB28];
    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kind", 1];
    v40[0] = v20;
    v21 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCloudSharedAsset"), 1}];
    v40[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v23 = [v19 orPredicateWithSubpredicates:v22];
    [array addObject:v23];
  }

  v24 = [v11 count];
  v25 = [array count];
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
    v33 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
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

+ (id)filteredAlbum:(id)album intersectFilter:(int)filter
{
  v4 = *&filter;
  albumCopy = album;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = albumCopy;
    v4 = [v7 filter] & v4;
    filterParameters = [v7 filterParameters];
  }

  else
  {
    filterParameters = 0;
  }

  v9 = [self filteredAlbum:albumCopy filter:v4 parameters:filterParameters];

  return v9;
}

+ (id)filteredAlbum:(id)album predicate:(id)predicate
{
  predicateCopy = predicate;
  albumCopy = album;
  v8 = [[self alloc] initWithBackingAlbum:albumCopy predicate:predicateCopy];

  return v8;
}

+ (id)filteredAlbum:(id)album filter:(int)filter parameters:(id)parameters
{
  v6 = *&filter;
  albumCopy = album;
  parametersCopy = parameters;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    albumCopy = albumCopy;
    if ([albumCopy filter] == v6)
    {
      filterParameters = [albumCopy filterParameters];
      if (!filterParameters || (v11 = filterParameters, [albumCopy filterParameters], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToArray:", parametersCopy), v12, v11, (v13 & 1) != 0))
      {
        v14 = albumCopy;
        goto LABEL_12;
      }
    }

    backingAlbum = [albumCopy backingAlbum];

    albumCopy = backingAlbum;
  }

  if (v6 && albumCopy)
  {
    v16 = [[self alloc] initWithBackingAlbum:albumCopy filter:v6 parameters:parametersCopy];
  }

  else
  {
    v16 = albumCopy;
    albumCopy = v16;
  }

  v14 = v16;
LABEL_12:

  return v14;
}

@end
@interface PLAssetContainerChangeNotification
+ (id)notificationWithContainer:(id)container snapshot:(id)snapshot changedAssets:(id)assets;
- (BOOL)_getOldSet:(id *)set newSet:(id *)newSet;
- (PLAlbumProtocol)album;
- (PLAssetContainer)assetContainer;
- (id)description;
- (id)userInfo;
- (void)_calculateDiffs;
- (void)dealloc;
@end

@implementation PLAssetContainerChangeNotification

- (void)_calculateDiffs
{
  v12.receiver = self;
  v12.super_class = PLAssetContainerChangeNotification;
  [(PLContainerChangeNotification *)&v12 _calculateDiffs];
  snapshot = [(PLContainerChangeNotification *)self snapshot];
  if ([snapshot hasSnapshotValueForProperty:@"title"])
  {
    snapshot2 = [(PLContainerChangeNotification *)self snapshot];
    v5 = [snapshot2 snapshotValueForProperty:@"title"];
    assetContainer = [(PLAssetContainerChangeNotification *)self assetContainer];
    title = [assetContainer title];
    if (v5 == title)
    {
      self->_titleDidChange = 0;
    }

    else
    {
      snapshot3 = [(PLContainerChangeNotification *)self snapshot];
      v9 = [snapshot3 snapshotValueForProperty:@"title"];
      assetContainer2 = [(PLAssetContainerChangeNotification *)self assetContainer];
      title2 = [assetContainer2 title];
      self->_titleDidChange = [v9 isEqual:title2] ^ 1;
    }
  }

  else
  {
    self->_titleDidChange = 0;
  }
}

- (BOOL)_getOldSet:(id *)set newSet:(id *)newSet
{
  v12.receiver = self;
  v12.super_class = PLAssetContainerChangeNotification;
  v7 = [PLContainerChangeNotification _getOldSet:sel__getOldSet_newSet_ newSet:?];
  _managedObject = [(PLContainerChangeNotification *)self _managedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _managedObject2 = [(PLContainerChangeNotification *)self _managedObject];
    *set = [_managedObject2 fastPointerAccessSetForAssets:*set];
    *newSet = [_managedObject2 fastPointerAccessSetForAssets:*newSet];
  }

  return v7;
}

- (PLAssetContainer)assetContainer
{
  _managedObject = [(PLContainerChangeNotification *)self _managedObject];
  if ([_managedObject conformsToProtocol:&unk_1F0FDA060])
  {
    v3 = _managedObject;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PLAlbumProtocol)album
{
  object = [(PLContainerChangeNotification *)self object];
  if ([object conformsToProtocol:&unk_1F0FDA510])
  {
    object2 = [(PLContainerChangeNotification *)self object];
  }

  else
  {
    object2 = 0;
  }

  return object2;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  container = [(PLAssetContainerChangeNotification *)self container];
  v7 = objc_opt_class();
  container2 = [(PLAssetContainerChangeNotification *)self container];
  snapshot = [(PLContainerChangeNotification *)self snapshot];
  v10 = [v4 stringWithFormat:@"<%@: %p> container: <%@ %p>, snapshot: %p", v5, self, v7, container2, snapshot];

  _diffDescription = [(PLContainerChangeNotification *)self _diffDescription];
  [v10 appendString:_diffDescription];

  if (self->_keyAssetDidChange)
  {
    [v10 appendString:{@", key asset changed"}];
  }

  if (self->_titleDidChange)
  {
    [v10 appendString:{@", title changed"}];
  }

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (id)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    deletedIndexes = [(PLContainerChangeNotification *)self deletedIndexes];
    v6 = [deletedIndexes count];

    if (v6)
    {
      deletedIndexes2 = [(PLContainerChangeNotification *)self deletedIndexes];
      [(NSDictionary *)dictionary setObject:deletedIndexes2 forKey:@"DeletedItemsIndexesKey"];
    }

    insertedIndexes = [(PLContainerChangeNotification *)self insertedIndexes];
    v9 = [insertedIndexes count];

    if (v9)
    {
      insertedIndexes2 = [(PLContainerChangeNotification *)self insertedIndexes];
      [(NSDictionary *)dictionary setObject:insertedIndexes2 forKey:@"AddedItemsIndexesKey"];
    }

    changedIndexes = [(PLContainerChangeNotification *)self changedIndexes];
    v12 = [changedIndexes count];

    if (v12)
    {
      changedIndexes2 = [(PLContainerChangeNotification *)self changedIndexes];
      [(NSDictionary *)dictionary setObject:changedIndexes2 forKey:@"ChangedItemsIndexesKey"];
    }

    v14 = self->_userInfo;
    self->_userInfo = dictionary;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (void)dealloc
{
  userInfo = self->_userInfo;
  self->_userInfo = 0;

  v4.receiver = self;
  v4.super_class = PLAssetContainerChangeNotification;
  [(PLContainerChangeNotification *)&v4 dealloc];
}

+ (id)notificationWithContainer:(id)container snapshot:(id)snapshot changedAssets:(id)assets
{
  assetsCopy = assets;
  snapshotCopy = snapshot;
  containerCopy = container;
  v11 = [[self alloc] _initWithObject:containerCopy snapshot:snapshotCopy changedObjects:assetsCopy];

  return v11;
}

@end
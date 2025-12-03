@interface PLAssetContainerListChangeNotification
+ (id)notificationWithContainerList:(id)list snapshot:(id)snapshot changedContainers:(id)containers;
- (id)_contentRelationshipName;
- (id)description;
- (id)userInfo;
@end

@implementation PLAssetContainerListChangeNotification

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  albumList = [(PLAssetContainerListChangeNotification *)self albumList];
  albumList2 = [(PLAssetContainerListChangeNotification *)self albumList];
  _typeDescription = [albumList2 _typeDescription];
  snapshot = [(PLContainerChangeNotification *)self snapshot];
  v10 = [v4 stringWithFormat:@"<%@: %p> container list: %p (%@), snapshot: %p", v5, self, albumList, _typeDescription, snapshot];

  _diffDescription = [(PLContainerChangeNotification *)self _diffDescription];
  [v10 appendString:_diffDescription];

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

- (id)_contentRelationshipName
{
  assetContainerList = [(PLAssetContainerListChangeNotification *)self assetContainerList];
  containersRelationshipName = [assetContainerList containersRelationshipName];

  return containersRelationshipName;
}

+ (id)notificationWithContainerList:(id)list snapshot:(id)snapshot changedContainers:(id)containers
{
  containersCopy = containers;
  snapshotCopy = snapshot;
  listCopy = list;
  v11 = [[self alloc] _initWithObject:listCopy snapshot:snapshotCopy changedObjects:containersCopy];

  return v11;
}

@end
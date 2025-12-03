@interface PLCloudCommentsChangeNotification
+ (id)notificationWithAsset:(id)asset snapshot:(id)snapshot;
- (id)description;
- (id)userInfo;
@end

@implementation PLCloudCommentsChangeNotification

+ (id)notificationWithAsset:(id)asset snapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  assetCopy = asset;
  v8 = [[self alloc] _initWithObject:assetCopy snapshot:snapshotCopy changedObjects:0];

  return v8;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  asset = [(PLCloudCommentsChangeNotification *)self asset];
  snapshot = [(PLContainerChangeNotification *)self snapshot];
  v8 = [v4 stringWithFormat:@"<%@: %p> asset: %p, snapshot: %p", v5, self, asset, snapshot];

  _diffDescription = [(PLContainerChangeNotification *)self _diffDescription];
  [v8 appendString:_diffDescription];

  objc_autoreleasePoolPop(v3);

  return v8;
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

@end
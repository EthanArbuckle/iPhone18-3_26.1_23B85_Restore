@interface PLAssetContainerChangeNotification
+ (id)notificationWithContainer:(id)a3 snapshot:(id)a4 changedAssets:(id)a5;
- (BOOL)_getOldSet:(id *)a3 newSet:(id *)a4;
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
  v3 = [(PLContainerChangeNotification *)self snapshot];
  if ([v3 hasSnapshotValueForProperty:@"title"])
  {
    v4 = [(PLContainerChangeNotification *)self snapshot];
    v5 = [v4 snapshotValueForProperty:@"title"];
    v6 = [(PLAssetContainerChangeNotification *)self assetContainer];
    v7 = [v6 title];
    if (v5 == v7)
    {
      self->_titleDidChange = 0;
    }

    else
    {
      v8 = [(PLContainerChangeNotification *)self snapshot];
      v9 = [v8 snapshotValueForProperty:@"title"];
      v10 = [(PLAssetContainerChangeNotification *)self assetContainer];
      v11 = [v10 title];
      self->_titleDidChange = [v9 isEqual:v11] ^ 1;
    }
  }

  else
  {
    self->_titleDidChange = 0;
  }
}

- (BOOL)_getOldSet:(id *)a3 newSet:(id *)a4
{
  v12.receiver = self;
  v12.super_class = PLAssetContainerChangeNotification;
  v7 = [PLContainerChangeNotification _getOldSet:sel__getOldSet_newSet_ newSet:?];
  v8 = [(PLContainerChangeNotification *)self _managedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(PLContainerChangeNotification *)self _managedObject];
    *a3 = [v10 fastPointerAccessSetForAssets:*a3];
    *a4 = [v10 fastPointerAccessSetForAssets:*a4];
  }

  return v7;
}

- (PLAssetContainer)assetContainer
{
  v2 = [(PLContainerChangeNotification *)self _managedObject];
  if ([v2 conformsToProtocol:&unk_1F0FDA060])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PLAlbumProtocol)album
{
  v3 = [(PLContainerChangeNotification *)self object];
  if ([v3 conformsToProtocol:&unk_1F0FDA510])
  {
    v4 = [(PLContainerChangeNotification *)self object];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  v6 = [(PLAssetContainerChangeNotification *)self container];
  v7 = objc_opt_class();
  v8 = [(PLAssetContainerChangeNotification *)self container];
  v9 = [(PLContainerChangeNotification *)self snapshot];
  v10 = [v4 stringWithFormat:@"<%@: %p> container: <%@ %p>, snapshot: %p", v5, self, v7, v8, v9];

  v11 = [(PLContainerChangeNotification *)self _diffDescription];
  [v10 appendString:v11];

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
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [(PLContainerChangeNotification *)self deletedIndexes];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(PLContainerChangeNotification *)self deletedIndexes];
      [(NSDictionary *)v4 setObject:v7 forKey:@"DeletedItemsIndexesKey"];
    }

    v8 = [(PLContainerChangeNotification *)self insertedIndexes];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(PLContainerChangeNotification *)self insertedIndexes];
      [(NSDictionary *)v4 setObject:v10 forKey:@"AddedItemsIndexesKey"];
    }

    v11 = [(PLContainerChangeNotification *)self changedIndexes];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [(PLContainerChangeNotification *)self changedIndexes];
      [(NSDictionary *)v4 setObject:v13 forKey:@"ChangedItemsIndexesKey"];
    }

    v14 = self->_userInfo;
    self->_userInfo = v4;

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

+ (id)notificationWithContainer:(id)a3 snapshot:(id)a4 changedAssets:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithObject:v10 snapshot:v9 changedObjects:v8];

  return v11;
}

@end
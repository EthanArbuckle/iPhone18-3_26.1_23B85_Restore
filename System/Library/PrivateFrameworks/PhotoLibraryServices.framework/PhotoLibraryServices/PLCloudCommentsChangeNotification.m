@interface PLCloudCommentsChangeNotification
+ (id)notificationWithAsset:(id)a3 snapshot:(id)a4;
- (id)description;
- (id)userInfo;
@end

@implementation PLCloudCommentsChangeNotification

+ (id)notificationWithAsset:(id)a3 snapshot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithObject:v7 snapshot:v6 changedObjects:0];

  return v8;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  v6 = [(PLCloudCommentsChangeNotification *)self asset];
  v7 = [(PLContainerChangeNotification *)self snapshot];
  v8 = [v4 stringWithFormat:@"<%@: %p> asset: %p, snapshot: %p", v5, self, v6, v7];

  v9 = [(PLContainerChangeNotification *)self _diffDescription];
  [v8 appendString:v9];

  objc_autoreleasePoolPop(v3);

  return v8;
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

@end
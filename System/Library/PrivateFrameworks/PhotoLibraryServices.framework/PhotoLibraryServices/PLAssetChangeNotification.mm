@interface PLAssetChangeNotification
+ (id)notificationWithChangedAssets:(id)a3;
- (id)_initWithChangedObjects:(id)a3;
- (id)description;
@end

@implementation PLAssetChangeNotification

- (id)description
{
  v8.receiver = self;
  v8.super_class = PLAssetChangeNotification;
  v3 = [(PLAssetChangeNotification *)&v8 description];
  v4 = [(PLAssetChangeNotification *)self updatedAssets];
  v5 = [v4 valueForKey:@"objectID"];
  v6 = [v3 stringByAppendingFormat:@" updatedAssets %@", v5];

  return v6;
}

- (id)_initWithChangedObjects:(id)a3
{
  v4 = a3;
  v5 = [(PLAssetChangeNotification *)self _init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

+ (id)notificationWithChangedAssets:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithChangedObjects:v4];

  return v5;
}

@end
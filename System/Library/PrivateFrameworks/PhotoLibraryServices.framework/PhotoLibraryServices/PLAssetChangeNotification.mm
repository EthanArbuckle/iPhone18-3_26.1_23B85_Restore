@interface PLAssetChangeNotification
+ (id)notificationWithChangedAssets:(id)assets;
- (id)_initWithChangedObjects:(id)objects;
- (id)description;
@end

@implementation PLAssetChangeNotification

- (id)description
{
  v8.receiver = self;
  v8.super_class = PLAssetChangeNotification;
  v3 = [(PLAssetChangeNotification *)&v8 description];
  updatedAssets = [(PLAssetChangeNotification *)self updatedAssets];
  v5 = [updatedAssets valueForKey:@"objectID"];
  v6 = [v3 stringByAppendingFormat:@" updatedAssets %@", v5];

  return v6;
}

- (id)_initWithChangedObjects:(id)objects
{
  objectsCopy = objects;
  _init = [(PLAssetChangeNotification *)self _init];
  if (_init)
  {
    v6 = [objectsCopy copy];
    v7 = _init[1];
    _init[1] = v6;
  }

  return _init;
}

+ (id)notificationWithChangedAssets:(id)assets
{
  assetsCopy = assets;
  v5 = [[self alloc] _initWithChangedObjects:assetsCopy];

  return v5;
}

@end
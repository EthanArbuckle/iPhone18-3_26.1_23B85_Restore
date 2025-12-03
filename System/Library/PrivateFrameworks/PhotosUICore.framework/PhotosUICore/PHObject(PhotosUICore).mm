@interface PHObject(PhotosUICore)
+ (void)_px_initializeUserInterfaceIdentifierCache;
- (id)_px_uniquedUserInterfaceIdentifier:()PhotosUICore;
- (id)px_opaqueIdentifier;
@end

@implementation PHObject(PhotosUICore)

- (id)px_opaqueIdentifier
{
  objectID = [self objectID];
  v3 = objectID;
  if (objectID)
  {
    v4 = objectID;
  }

  else
  {
    userInterfaceIdentifier = [self userInterfaceIdentifier];
    v4 = [self _px_uniquedUserInterfaceIdentifier:userInterfaceIdentifier];
  }

  return v4;
}

+ (void)_px_initializeUserInterfaceIdentifierCache
{
  if (_px_initializeUserInterfaceIdentifierCache_onceToken != -1)
  {
    dispatch_once(&_px_initializeUserInterfaceIdentifierCache_onceToken, &__block_literal_global_153343);
  }
}

- (id)_px_uniquedUserInterfaceIdentifier:()PhotosUICore
{
  v3 = a3;
  [objc_opt_class() _px_initializeUserInterfaceIdentifierCache];
  v4 = _PXUserInterfaceIdentifierCache;
  os_unfair_lock_lock(&_PXUserInterfaceIdentifierCacheLock);
  v5 = [v4 objectForKey:v3];
  os_unfair_lock_unlock(&_PXUserInterfaceIdentifierCacheLock);
  if (!v5)
  {
    v5 = v3;
    os_unfair_lock_lock(&_PXUserInterfaceIdentifierCacheLock);
    [v4 setObject:v5 forKey:v5];
    os_unfair_lock_unlock(&_PXUserInterfaceIdentifierCacheLock);
  }

  v6 = v5;

  return v6;
}

@end
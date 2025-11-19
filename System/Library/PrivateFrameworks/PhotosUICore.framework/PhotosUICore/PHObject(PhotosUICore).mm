@interface PHObject(PhotosUICore)
+ (void)_px_initializeUserInterfaceIdentifierCache;
- (id)_px_uniquedUserInterfaceIdentifier:()PhotosUICore;
- (id)px_opaqueIdentifier;
@end

@implementation PHObject(PhotosUICore)

- (id)px_opaqueIdentifier
{
  v2 = [a1 objectID];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 userInterfaceIdentifier];
    v4 = [a1 _px_uniquedUserInterfaceIdentifier:v5];
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
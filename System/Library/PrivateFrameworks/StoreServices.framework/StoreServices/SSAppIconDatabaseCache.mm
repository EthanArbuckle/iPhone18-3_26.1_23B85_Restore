@interface SSAppIconDatabaseCache
+ (id)newDefaultDatabaseCache;
@end

@implementation SSAppIconDatabaseCache

+ (id)newDefaultDatabaseCache
{
  v2 = +[SSAppPurchaseHistoryDatabase newDefaultInstance];
  v3 = v2;
  if (v2)
  {
    database = [(SSDatabaseCache *)v2 database];

    v3 = [[SSDatabaseCache alloc] initWithIdentifier:@"com.apple.storeservices" cacheName:@"SSAppImageDatabaseCacheEntry" database:database cacheEntryClass:objc_opt_class()];
    [(SSDatabaseCache *)v3 setMaximumInlineBlobSize:1024];
  }

  return v3;
}

@end
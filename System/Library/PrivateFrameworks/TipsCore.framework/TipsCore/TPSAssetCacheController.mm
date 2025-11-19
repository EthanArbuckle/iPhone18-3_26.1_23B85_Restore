@interface TPSAssetCacheController
+ (id)sharedInstance;
- (id)newDataCache;
@end

@implementation TPSAssetCacheController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_6 != -1)
  {
    +[TPSAssetCacheController sharedInstance];
  }

  v3 = sharedInstance_gTPSAssetCacheController;

  return v3;
}

uint64_t __41__TPSAssetCacheController_sharedInstance__block_invoke()
{
  v0 = [(TPSDataCacheController *)[TPSAssetCacheController alloc] initWithIdentifier:@"TPSAssetCacheIdentifier" directoryName:@"Assets" maxCacheSize:125829120 URLSessionDataType:2];
  v1 = sharedInstance_gTPSAssetCacheController;
  sharedInstance_gTPSAssetCacheController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)newDataCache
{
  v2 = objc_alloc_init(TPSDataCache);
  [(TPSDataCache *)v2 setCacheType:2];
  [(TPSDataCache *)v2 setMaxAge:21600];
  return v2;
}

@end
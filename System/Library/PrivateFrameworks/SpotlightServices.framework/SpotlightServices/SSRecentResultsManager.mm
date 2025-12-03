@interface SSRecentResultsManager
+ (void)preheat;
@end

@implementation SSRecentResultsManager

+ (void)preheat
{
  if (preheat_onceToken != -1)
  {
    +[SSRecentResultsManager preheat];
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  v2 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v2 setMaxConcurrentOperationCount:1];
  [v2 setUnderlyingQueue:preheat_gCacheManagerQueue];
  v3 = [defaultCenter addObserverForName:@"com.apple.LaunchServices.applicationRegistered" object:0 suspensionBehavior:3 queue:v2 usingBlock:&__block_literal_global_21];
  v4 = [defaultCenter addObserverForName:@"com.apple.LaunchServices.applicationUnregistered" object:0 suspensionBehavior:3 queue:v2 usingBlock:&__block_literal_global_21];
}

void __33__SSRecentResultsManager_preheat__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("cacheManagerUpdateQueue", v2);
  v1 = preheat_gCacheManagerQueue;
  preheat_gCacheManagerQueue = v0;
}

@end
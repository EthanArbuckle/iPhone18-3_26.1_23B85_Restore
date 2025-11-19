@interface SBApplicationStateServiceSingleton
+ (void)startService;
@end

@implementation SBApplicationStateServiceSingleton

+ (void)startService
{
  if (startService_onceToken != -1)
  {
    +[SBApplicationStateServiceSingleton startService];
  }
}

uint64_t __50__SBApplicationStateServiceSingleton_startService__block_invoke()
{
  v0 = objc_alloc_init(SBApplicationStateServiceDelegate);
  v1 = __delegate;
  __delegate = v0;

  v2 = objc_alloc(MEMORY[0x277D77748]);
  v3 = [MEMORY[0x277D75128] _systemAnimationFenceExemptQueue];
  v4 = [v2 initWithCalloutQueue:v3];
  v5 = __singleton;
  __singleton = v4;

  v6 = __singleton;
  v7 = __delegate;

  return [v6 setDelegate:v7];
}

@end
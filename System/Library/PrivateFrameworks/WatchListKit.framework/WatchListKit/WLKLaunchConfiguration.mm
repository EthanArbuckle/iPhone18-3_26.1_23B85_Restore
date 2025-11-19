@interface WLKLaunchConfiguration
+ (id)sharedInstance;
@end

@implementation WLKLaunchConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[WLKLaunchConfiguration sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __40__WLKLaunchConfiguration_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(WLKLaunchConfiguration);

  return MEMORY[0x2821F96F8]();
}

@end
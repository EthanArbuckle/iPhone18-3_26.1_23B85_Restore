@interface VUICoreConfiguration
+ (id)sharedInstance;
@end

@implementation VUICoreConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[VUICoreConfiguration sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __38__VUICoreConfiguration_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(VUICoreConfiguration);

  return MEMORY[0x2821F96F8]();
}

@end
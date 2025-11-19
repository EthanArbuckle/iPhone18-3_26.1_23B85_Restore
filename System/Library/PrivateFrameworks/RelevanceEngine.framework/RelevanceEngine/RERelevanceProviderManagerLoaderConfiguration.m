@interface RERelevanceProviderManagerLoaderConfiguration
+ (id)sharedInstance;
@end

@implementation RERelevanceProviderManagerLoaderConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[RERelevanceProviderManagerLoaderConfiguration sharedInstance];
  }

  v3 = sharedInstance_Shared_0;

  return v3;
}

uint64_t __63__RERelevanceProviderManagerLoaderConfiguration_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Shared_0;
  sharedInstance_Shared_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
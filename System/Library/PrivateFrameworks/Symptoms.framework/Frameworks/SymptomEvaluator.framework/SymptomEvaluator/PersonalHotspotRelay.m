@interface PersonalHotspotRelay
+ (id)sharedInstance;
@end

@implementation PersonalHotspotRelay

+ (id)sharedInstance
{
  v2 = sharedInstance_sharedInstance_38;
  if (!sharedInstance_sharedInstance_38)
  {
    if (sharedInstance_onceToken_2 != -1)
    {
      +[PersonalHotspotRelay sharedInstance];
    }

    v2 = sharedInstance_sharedInstance_38;
  }

  return v2;
}

uint64_t __38__PersonalHotspotRelay_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PersonalHotspotRelay);
  v1 = sharedInstance_sharedInstance_38;
  sharedInstance_sharedInstance_38 = v0;

  v2 = sharedInstance_sharedInstance_38;

  return [v2 setIsReady:0];
}

@end
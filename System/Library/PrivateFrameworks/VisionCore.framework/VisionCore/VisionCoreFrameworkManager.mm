@interface VisionCoreFrameworkManager
+ (id)sharedManager;
@end

@implementation VisionCoreFrameworkManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global);
  }

  v3 = sharedManager_manager;

  return v3;
}

void __43__VisionCoreFrameworkManager_sharedManager__block_invoke()
{
  v0 = [VisionCoreFrameworkManager alloc];
  if (v0)
  {
    v5.receiver = v0;
    v5.super_class = VisionCoreFrameworkManager;
    v1 = objc_msgSendSuper2(&v5, sel_init);
    if (v1)
    {
      v2 = objc_alloc_init(VisionCoreObjectCache);
      v3 = v1[1];
      v1[1] = v2;
    }
  }

  else
  {
    v1 = 0;
  }

  v4 = sharedManager_manager;
  sharedManager_manager = v1;
}

@end
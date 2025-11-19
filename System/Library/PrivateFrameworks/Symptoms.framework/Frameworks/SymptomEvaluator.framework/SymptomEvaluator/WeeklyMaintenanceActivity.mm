@interface WeeklyMaintenanceActivity
+ (id)sharedInstance;
@end

@implementation WeeklyMaintenanceActivity

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_71 != -1)
  {
    +[WeeklyMaintenanceActivity sharedInstance];
  }

  v3 = sharedInstance_sSharedActivity_70;

  return v3;
}

uint64_t __43__WeeklyMaintenanceActivity_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WeeklyMaintenanceActivity);
  v1 = sharedInstance_sSharedActivity_70;
  sharedInstance_sSharedActivity_70 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
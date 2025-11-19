@interface DailyMaintenanceActivity
+ (id)sharedInstance;
@end

@implementation DailyMaintenanceActivity

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[DailyMaintenanceActivity sharedInstance];
  }

  v3 = sharedInstance_sSharedActivity;

  return v3;
}

uint64_t __42__DailyMaintenanceActivity_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(DailyMaintenanceActivity);
  v1 = sharedInstance_sSharedActivity;
  sharedInstance_sSharedActivity = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
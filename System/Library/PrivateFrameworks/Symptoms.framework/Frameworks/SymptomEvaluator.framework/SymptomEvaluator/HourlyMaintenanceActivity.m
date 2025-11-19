@interface HourlyMaintenanceActivity
+ (id)sharedInstance;
@end

@implementation HourlyMaintenanceActivity

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_81 != -1)
  {
    +[HourlyMaintenanceActivity sharedInstance];
  }

  v3 = sharedInstance_sSharedActivity_80;

  return v3;
}

uint64_t __43__HourlyMaintenanceActivity_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HourlyMaintenanceActivity);
  v1 = sharedInstance_sSharedActivity_80;
  sharedInstance_sSharedActivity_80 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
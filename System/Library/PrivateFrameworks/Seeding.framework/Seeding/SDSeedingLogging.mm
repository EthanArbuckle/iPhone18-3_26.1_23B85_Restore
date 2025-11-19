@interface SDSeedingLogging
+ (OS_os_log)analyticsHandle;
+ (OS_os_log)betaHandle;
+ (OS_os_log)httpHandle;
+ (OS_os_log)mdmHandle;
+ (OS_os_log)migrateHandle;
+ (OS_os_log)profileHandle;
+ (id)fwHandle;
@end

@implementation SDSeedingLogging

+ (id)fwHandle
{
  if (fwHandle_onceToken != -1)
  {
    +[SDSeedingLogging fwHandle];
  }

  v3 = fwHandle_handle;

  return v3;
}

uint64_t __28__SDSeedingLogging_fwHandle__block_invoke()
{
  fwHandle_handle = os_log_create("com.apple.seeding", "Framework");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)httpHandle
{
  if (httpHandle_onceToken != -1)
  {
    +[SDSeedingLogging httpHandle];
  }

  v3 = httpHandle_handle;

  return v3;
}

uint64_t __30__SDSeedingLogging_httpHandle__block_invoke()
{
  httpHandle_handle = os_log_create("com.apple.seeding", "HTTP");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)profileHandle
{
  if (profileHandle_onceToken != -1)
  {
    +[SDSeedingLogging profileHandle];
  }

  v3 = profileHandle_handle;

  return v3;
}

uint64_t __33__SDSeedingLogging_profileHandle__block_invoke()
{
  profileHandle_handle = os_log_create("com.apple.seeding", "Profile");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)migrateHandle
{
  if (migrateHandle_onceToken != -1)
  {
    +[SDSeedingLogging migrateHandle];
  }

  v3 = migrateHandle_handle;

  return v3;
}

uint64_t __33__SDSeedingLogging_migrateHandle__block_invoke()
{
  migrateHandle_handle = os_log_create("com.apple.seeding", "migrate");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)betaHandle
{
  if (betaHandle_onceToken != -1)
  {
    +[SDSeedingLogging betaHandle];
  }

  v3 = betaHandle_handle;

  return v3;
}

uint64_t __30__SDSeedingLogging_betaHandle__block_invoke()
{
  betaHandle_handle = os_log_create("com.apple.seeding", "sd-beta");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)analyticsHandle
{
  if (analyticsHandle_onceToken != -1)
  {
    +[SDSeedingLogging analyticsHandle];
  }

  v3 = analyticsHandle_handle;

  return v3;
}

uint64_t __35__SDSeedingLogging_analyticsHandle__block_invoke()
{
  analyticsHandle_handle = os_log_create("com.apple.seeding", "analytics");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)mdmHandle
{
  if (mdmHandle_onceToken != -1)
  {
    +[SDSeedingLogging mdmHandle];
  }

  v3 = mdmHandle_handle;

  return v3;
}

uint64_t __29__SDSeedingLogging_mdmHandle__block_invoke()
{
  mdmHandle_handle = os_log_create("com.apple.seeding", "mdm");

  return MEMORY[0x2821F96F8]();
}

@end
@interface REMLogStore
+ (OS_os_log)OVERSIZED;
+ (OS_os_log)container;
+ (OS_os_log)read;
+ (OS_os_log)search;
+ (OS_os_log)stagedLightweightCoreDataMigration;
+ (OS_os_log)utility;
+ (OS_os_log)write;
+ (OS_os_log)xpc;
@end

@implementation REMLogStore

+ (OS_os_log)read
{
  if (read_onceToken != -1)
  {
    +[REMLogStore read];
  }

  v3 = read___log;

  return v3;
}

uint64_t __19__REMLogStore_read__block_invoke()
{
  read___log = os_log_create("com.apple.reminderkit.store", "read");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)write
{
  if (write_onceToken != -1)
  {
    +[REMLogStore write];
  }

  v3 = write___log;

  return v3;
}

+ (OS_os_log)container
{
  if (container_onceToken != -1)
  {
    +[REMLogStore container];
  }

  v3 = container___log;

  return v3;
}

+ (OS_os_log)xpc
{
  if (xpc_onceToken_192 != -1)
  {
    +[REMLogStore xpc];
  }

  v3 = xpc___log_191;

  return v3;
}

uint64_t __18__REMLogStore_xpc__block_invoke()
{
  xpc___log_191 = os_log_create("com.apple.reminderkit.store", "xpc");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __24__REMLogStore_container__block_invoke()
{
  container___log = os_log_create("com.apple.reminderkit.store", "container");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)stagedLightweightCoreDataMigration
{
  if (stagedLightweightCoreDataMigration_onceToken != -1)
  {
    +[REMLogStore stagedLightweightCoreDataMigration];
  }

  v3 = stagedLightweightCoreDataMigration___log;

  return v3;
}

uint64_t __49__REMLogStore_stagedLightweightCoreDataMigration__block_invoke()
{
  stagedLightweightCoreDataMigration___log = os_log_create("com.apple.reminderkit.store", "stagedLightweightCoreDataMigration");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __20__REMLogStore_write__block_invoke()
{
  write___log = os_log_create("com.apple.reminderkit.store", "write");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)search
{
  if (search_onceToken_202 != -1)
  {
    +[REMLogStore search];
  }

  v3 = search___log_201;

  return v3;
}

uint64_t __21__REMLogStore_search__block_invoke()
{
  search___log_201 = os_log_create("com.apple.reminderkit.store", "search");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)utility
{
  if (utility_onceToken_206 != -1)
  {
    +[REMLogStore utility];
  }

  v3 = utility___log_205;

  return v3;
}

uint64_t __22__REMLogStore_utility__block_invoke()
{
  utility___log_205 = os_log_create("com.apple.reminderkit.store", "utility");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)OVERSIZED
{
  if (OVERSIZED_onceToken != -1)
  {
    +[REMLogStore OVERSIZED];
  }

  v3 = OVERSIZED___log;

  return v3;
}

uint64_t __24__REMLogStore_OVERSIZED__block_invoke()
{
  OVERSIZED___log = os_log_create("com.apple.reminderkit.store", "OVERSIZED");

  return MEMORY[0x1EEE66BB8]();
}

@end
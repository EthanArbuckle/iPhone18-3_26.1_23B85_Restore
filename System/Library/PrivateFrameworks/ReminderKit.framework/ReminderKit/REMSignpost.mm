@interface REMSignpost
+ (OS_os_log)database;
+ (OS_os_log)sync;
@end

@implementation REMSignpost

+ (OS_os_log)database
{
  if (database_onceToken != -1)
  {
    +[REMSignpost database];
  }

  v3 = database___log;

  return v3;
}

uint64_t __23__REMSignpost_database__block_invoke()
{
  database___log = os_log_create("com.apple.reminderkit.signpost", "database");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)sync
{
  if (sync_onceToken != -1)
  {
    +[REMSignpost sync];
  }

  v3 = sync___log;

  return v3;
}

uint64_t __19__REMSignpost_sync__block_invoke()
{
  sync___log = os_log_create("com.apple.reminderkit.signpost", "sync");

  return MEMORY[0x1EEE66BB8]();
}

@end
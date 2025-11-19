@interface NSUserDefaults(Sync)
+ (id)lastDeviceRecordsFetchDate;
+ (id)syncShortcutsUserDefaults;
+ (uint64_t)addEligibleShortcutToWatchFolderEnabled;
+ (uint64_t)syncEventLoggingEnabled;
+ (void)resetSyncUnavailableMessage;
+ (void)setLastDeviceRecordsFetchDate:()Sync;
+ (void)setSyncEventLoggingEnabled:()Sync;
@end

@implementation NSUserDefaults(Sync)

+ (id)syncShortcutsUserDefaults
{
  if (syncShortcutsUserDefaults_onceToken != -1)
  {
    dispatch_once(&syncShortcutsUserDefaults_onceToken, &__block_literal_global_57804);
  }

  v1 = syncShortcutsUserDefaults_syncShortcutsUserDefaults;

  return v1;
}

+ (void)setLastDeviceRecordsFetchDate:()Sync
{
  v4 = a3;
  v5 = [a1 syncShortcutsUserDefaults];
  [v5 setObject:v4 forKey:@"WFSyncLastDeviceRecordsFetchDate"];
}

+ (id)lastDeviceRecordsFetchDate
{
  v1 = [a1 syncShortcutsUserDefaults];
  v2 = [v1 objectForKey:@"WFSyncLastDeviceRecordsFetchDate"];

  return v2;
}

+ (uint64_t)addEligibleShortcutToWatchFolderEnabled
{
  v1 = [a1 syncShortcutsUserDefaults];
  v2 = [v1 BOOLForKey:@"WFAddEligibleShortcutToWatchFolderEnabled"];

  return v2;
}

+ (void)setSyncEventLoggingEnabled:()Sync
{
  v4 = [a1 syncShortcutsUserDefaults];
  [v4 setBool:a3 forKey:@"WFSyncEventLoggingEnabled"];
}

+ (uint64_t)syncEventLoggingEnabled
{
  v1 = [a1 syncShortcutsUserDefaults];
  v2 = [v1 BOOLForKey:@"WFSyncEventLoggingEnabled"];

  return v2;
}

+ (void)resetSyncUnavailableMessage
{
  v0 = [MEMORY[0x1E695E000] syncShortcutsUserDefaults];
  [v0 removeObjectForKey:@"WFSyncUnavailableMessage"];

  v1 = [MEMORY[0x1E695E000] syncShortcutsUserDefaults];
  [v1 removeObjectForKey:@"WFSyncUnavailableMessageDismissedByUser"];

  v2 = [MEMORY[0x1E695E000] syncShortcutsUserDefaults];
  [v2 removeObjectForKey:@"WFSyncUnavailableMessageCount"];

  v3 = [MEMORY[0x1E695E000] syncShortcutsUserDefaults];
  [v3 removeObjectForKey:@"WFSyncUnavailableMessageDate"];
}

@end
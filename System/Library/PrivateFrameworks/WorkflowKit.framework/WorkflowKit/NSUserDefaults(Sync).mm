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
  syncShortcutsUserDefaults = [self syncShortcutsUserDefaults];
  [syncShortcutsUserDefaults setObject:v4 forKey:@"WFSyncLastDeviceRecordsFetchDate"];
}

+ (id)lastDeviceRecordsFetchDate
{
  syncShortcutsUserDefaults = [self syncShortcutsUserDefaults];
  v2 = [syncShortcutsUserDefaults objectForKey:@"WFSyncLastDeviceRecordsFetchDate"];

  return v2;
}

+ (uint64_t)addEligibleShortcutToWatchFolderEnabled
{
  syncShortcutsUserDefaults = [self syncShortcutsUserDefaults];
  v2 = [syncShortcutsUserDefaults BOOLForKey:@"WFAddEligibleShortcutToWatchFolderEnabled"];

  return v2;
}

+ (void)setSyncEventLoggingEnabled:()Sync
{
  syncShortcutsUserDefaults = [self syncShortcutsUserDefaults];
  [syncShortcutsUserDefaults setBool:a3 forKey:@"WFSyncEventLoggingEnabled"];
}

+ (uint64_t)syncEventLoggingEnabled
{
  syncShortcutsUserDefaults = [self syncShortcutsUserDefaults];
  v2 = [syncShortcutsUserDefaults BOOLForKey:@"WFSyncEventLoggingEnabled"];

  return v2;
}

+ (void)resetSyncUnavailableMessage
{
  syncShortcutsUserDefaults = [MEMORY[0x1E695E000] syncShortcutsUserDefaults];
  [syncShortcutsUserDefaults removeObjectForKey:@"WFSyncUnavailableMessage"];

  syncShortcutsUserDefaults2 = [MEMORY[0x1E695E000] syncShortcutsUserDefaults];
  [syncShortcutsUserDefaults2 removeObjectForKey:@"WFSyncUnavailableMessageDismissedByUser"];

  syncShortcutsUserDefaults3 = [MEMORY[0x1E695E000] syncShortcutsUserDefaults];
  [syncShortcutsUserDefaults3 removeObjectForKey:@"WFSyncUnavailableMessageCount"];

  syncShortcutsUserDefaults4 = [MEMORY[0x1E695E000] syncShortcutsUserDefaults];
  [syncShortcutsUserDefaults4 removeObjectForKey:@"WFSyncUnavailableMessageDate"];
}

@end
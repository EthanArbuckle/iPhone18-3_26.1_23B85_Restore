@interface WBS
@end

@implementation WBS

void __WBS_LOG_CHANNEL_PREFIXPasswords_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "Passwords");
  v1 = WBS_LOG_CHANNEL_PREFIXPasswords_log;
  WBS_LOG_CHANNEL_PREFIXPasswords_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXKeychain_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "Keychain");
  v1 = WBS_LOG_CHANNEL_PREFIXKeychain_log;
  WBS_LOG_CHANNEL_PREFIXKeychain_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "SuddenTerminationDisabler");
  v1 = WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler_log;
  WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXRemotelyUpdatableDataController_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "RemotelyUpdatableDataController");
  v1 = WBS_LOG_CHANNEL_PREFIXRemotelyUpdatableDataController_log;
  WBS_LOG_CHANNEL_PREFIXRemotelyUpdatableDataController_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSQLite_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "SQLite");
  v1 = WBS_LOG_CHANNEL_PREFIXSQLite_log;
  WBS_LOG_CHANNEL_PREFIXSQLite_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSandbox_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "Sandbox");
  v1 = WBS_LOG_CHANNEL_PREFIXSandbox_log;
  WBS_LOG_CHANNEL_PREFIXSandbox_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXAppleAccount_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "AppleAccount");
  v1 = WBS_LOG_CHANNEL_PREFIXAppleAccount_log;
  WBS_LOG_CHANNEL_PREFIXAppleAccount_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXAutoFill_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "AutoFill");
  v1 = WBS_LOG_CHANNEL_PREFIXAutoFill_log;
  WBS_LOG_CHANNEL_PREFIXAutoFill_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "CoalescedAsynchronousWriter");
  v1 = WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter_log;
  WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXDebugUtilities_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "DebugUtilities");
  v1 = WBS_LOG_CHANNEL_PREFIXDebugUtilities_log;
  WBS_LOG_CHANNEL_PREFIXDebugUtilities_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXFileManager_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "FileManager");
  v1 = WBS_LOG_CHANNEL_PREFIXFileManager_log;
  WBS_LOG_CHANNEL_PREFIXFileManager_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXKeyedArchiver_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "KeyedArchiver");
  v1 = WBS_LOG_CHANNEL_PREFIXKeyedArchiver_log;
  WBS_LOG_CHANNEL_PREFIXKeyedArchiver_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "MissingPasswordGroups");
  v1 = WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups_log;
  WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXOther_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "Other");
  v1 = WBS_LOG_CHANNEL_PREFIXOther_log;
  WBS_LOG_CHANNEL_PREFIXOther_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPinnedTabRestoration_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "PinnedTabRestoration");
  v1 = WBS_LOG_CHANNEL_PREFIXPinnedTabRestoration_log;
  WBS_LOG_CHANNEL_PREFIXPinnedTabRestoration_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSQLiteStore_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "SQLiteStore");
  v1 = WBS_LOG_CHANNEL_PREFIXSQLiteStore_log;
  WBS_LOG_CHANNEL_PREFIXSQLiteStore_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXXPC_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "XPC");
  v1 = WBS_LOG_CHANNEL_PREFIXXPC_log;
  WBS_LOG_CHANNEL_PREFIXXPC_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "PasswordBreachAwareness");
  v1 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness_log;
  WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXExport_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "Export");
  v1 = WBS_LOG_CHANNEL_PREFIXExport_log;
  WBS_LOG_CHANNEL_PREFIXExport_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXImport_block_invoke()
{
  v0 = os_log_create("com.apple.SafariShared", "Import");
  v1 = WBS_LOG_CHANNEL_PREFIXImport_log;
  WBS_LOG_CHANNEL_PREFIXImport_log = v0;
}

@end
@interface WBSCyclerSyncReloadOperation
- (void)executeWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSCyclerSyncReloadOperation

- (void)executeWithContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[WBSCyclerConnectionManager shouldTabCyclerSlowDown];
  v8 = WBS_LOG_CHANNEL_PREFIXCycler();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Sending a syncDidFinish notification to trigger a database reload", buf, 2u);
    }

    v10 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v10 postNotificationName:@"com.apple.SafariTabGroupSync.SyncDidFinish" object:0 userInfo:&unk_1F3A9B438];
  }

  else if (v9)
  {
    *v12 = 0;
    _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Not sending a syncDidFinish notification because shouldTabCyclerSlowDown is off.", v12, 2u);
  }

  v11 = [v6 topLevelItem];

  v5[2](v5, v11);
}

@end
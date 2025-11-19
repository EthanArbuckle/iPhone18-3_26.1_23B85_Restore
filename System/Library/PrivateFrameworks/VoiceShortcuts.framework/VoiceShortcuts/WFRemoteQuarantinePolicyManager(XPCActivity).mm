@interface WFRemoteQuarantinePolicyManager(XPCActivity)
- (void)scheduleRegularPolicyUpdatesWithDatabaseProvider:()XPCActivity;
@end

@implementation WFRemoteQuarantinePolicyManager(XPCActivity)

- (void)scheduleRegularPolicyUpdatesWithDatabaseProvider:()XPCActivity
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v13 = "[WFRemoteQuarantinePolicyManager(XPCActivity) scheduleRegularPolicyUpdatesWithDatabaseProvider:]";
    v14 = 2112;
    v15 = @"com.apple.siriactionsd.RemoteQuarantineUpdate";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEBUG, "%s Scheduling remote quarantine bundle update activity: (%@)", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __97__WFRemoteQuarantinePolicyManager_XPCActivity__scheduleRegularPolicyUpdatesWithDatabaseProvider___block_invoke;
  v9[3] = &unk_2788FEE68;
  v10 = v4;
  v11 = a1;
  v6 = v4;
  v7 = [WFXPCActivityScheduler activatedSchedulerWithActivityIdentifier:@"com.apple.siriactionsd.RemoteQuarantineUpdate" runHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

@end
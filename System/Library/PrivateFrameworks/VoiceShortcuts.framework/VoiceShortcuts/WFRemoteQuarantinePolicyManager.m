@interface WFRemoteQuarantinePolicyManager
@end

@implementation WFRemoteQuarantinePolicyManager

uint64_t __97__WFRemoteQuarantinePolicyManager_XPCActivity__scheduleRegularPolicyUpdatesWithDatabaseProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v24 = 0;
  v8 = [v7 databaseWithError:&v24];
  v9 = v24;
  if (!v8)
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[WFRemoteQuarantinePolicyManager(XPCActivity) scheduleRegularPolicyUpdatesWithDatabaseProvider:]_block_invoke";
      v27 = 2114;
      v28 = v9;
      v12 = "%s Failed to initialize database, not updating quarantine bundles: %{public}@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_23103C000, v13, v14, v12, buf, v15);
    }

LABEL_7:

    v6[2](v6);
    goto LABEL_12;
  }

  v10 = [v8 sortedVisibleWorkflowsByName];
  if (![v10 count])
  {
    v16 = [v8 allConfiguredTriggers];
    v17 = [v16 count];

    if (v17)
    {
      goto LABEL_9;
    }

    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[WFRemoteQuarantinePolicyManager(XPCActivity) scheduleRegularPolicyUpdatesWithDatabaseProvider:]_block_invoke";
      v12 = "%s Not updating the remote quarantine bundle because there are no shortcuts present";
      v13 = v11;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 12;
      goto LABEL_6;
    }

    goto LABEL_7;
  }

LABEL_9:
  v18 = getWFGeneralLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[WFRemoteQuarantinePolicyManager(XPCActivity) scheduleRegularPolicyUpdatesWithDatabaseProvider:]_block_invoke";
    v27 = 2112;
    v28 = @"com.apple.siriactionsd.RemoteQuarantineUpdate";
    _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_INFO, "%s Remote quarantine bundle update activity invoked: (%@)", buf, 0x16u);
  }

  v19 = *(a1 + 40);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __97__WFRemoteQuarantinePolicyManager_XPCActivity__scheduleRegularPolicyUpdatesWithDatabaseProvider___block_invoke_163;
  v22[3] = &unk_2788FEE40;
  v23 = v6;
  [v19 updatePolicyWithXPCActivity:v5 completionHandler:v22];

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

@end
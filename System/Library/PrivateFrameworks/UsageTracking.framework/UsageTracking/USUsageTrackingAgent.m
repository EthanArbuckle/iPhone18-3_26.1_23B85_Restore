@interface USUsageTrackingAgent
- (void)downloadDataWithReplyHandler:(id)a3;
- (void)fetchActivitiesForClient:(id)a3 replyHandler:(id)a4;
- (void)fetchBudgetsWithIdentifier:(id)a3 clientIdentifier:(id)a4 replyHandler:(id)a5;
- (void)fetchEventsForActivity:(id)a3 withClient:(id)a4 replyHandler:(id)a5;
- (void)fetchReportsDuringInterval:(id)a3 partitionInterval:(double)a4 replyHandler:(id)a5;
- (void)fetchScheduleForActivity:(id)a3 withClient:(id)a4 replyHandler:(id)a5;
- (void)fetchUsageForApplications:(id)a3 webDomains:(id)a4 categories:(id)a5 interval:(id)a6 replyHandler:(id)a7;
- (void)startMonitoringActivity:(id)a3 withSchedule:(id)a4 events:(id)a5 forClient:(id)a6 withExtension:(id)a7 replyHandler:(id)a8;
- (void)startMonitoringBudgets:(id)a3 darwinNotificationName:(id)a4 notificationTimes:(id)a5 clientIdentifier:(id)a6 replyHandler:(id)a7;
- (void)stopMonitoringActivities:(id)a3 forClient:(id)a4 replyHandler:(id)a5;
- (void)stopMonitoringAllBudgetsWithReplyHandler:(id)a3;
- (void)stopMonitoringBudgets:(id)a3 clientIdentifier:(id)a4 replyHandler:(id)a5;
- (void)uploadLocalDataWithReplyHandler:(id)a3;
@end

@implementation USUsageTrackingAgent

- (void)fetchReportsDuringInterval:(id)a3 partitionInterval:(double)a4 replyHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 queryUsageDuringInterval:v8 partitionInterval:v7 completionHandler:a4];
}

- (void)fetchUsageForApplications:(id)a3 webDomains:(id)a4 categories:(id)a5 interval:(id)a6 replyHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  v17 = +[NSSet set];
  v20 = 0;
  v18 = [v16 queryForApplications:v15 exemptApplications:v17 webDomains:v14 categories:v13 interval:v12 segmentInterval:&v20 error:86400.0];

  v19 = v20;
  v11[2](v11, v18, v19);
}

- (void)startMonitoringBudgets:(id)a3 darwinNotificationName:(id)a4 notificationTimes:(id)a5 clientIdentifier:(id)a6 replyHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[USBudgetRegistration sharedRegistration];
  [v16 addBudgets:v15 darwinNotificationName:v14 notificationTimes:v13 clientIdentifier:v12 completionHandler:v11];
}

- (void)stopMonitoringBudgets:(id)a3 clientIdentifier:(id)a4 replyHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[USBudgetRegistration sharedRegistration];
  [v10 removeBudgets:v9 clientIdentifier:v8 completionHandler:v7];
}

- (void)stopMonitoringAllBudgetsWithReplyHandler:(id)a3
{
  v3 = a3;
  v4 = +[USBudgetRegistration sharedRegistration];
  [v4 removeAllBudgetsWithCompletionHandler:v3];
}

- (void)fetchBudgetsWithIdentifier:(id)a3 clientIdentifier:(id)a4 replyHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[USBudgetRegistration sharedRegistration];
  [v10 fetchBudgetsWithIdentifier:v9 clientIdentifier:v8 completionHandler:v7];
}

- (void)startMonitoringActivity:(id)a3 withSchedule:(id)a4 events:(id)a5 forClient:(id)a6 withExtension:(id)a7 replyHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v16 | v17)
  {
    v19 = 1;
  }

  else
  {
    v20 = [v15 keysOfEntriesPassingTest:&stru_1000865F8];
    v19 = [v20 count] != 0;
  }

  v21 = +[NSXPCConnection currentConnection];
  v22 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v21];

  if (!v19 || (v22 & 1) != 0)
  {
    v31 = +[USBudgetRegistration sharedRegistration];
    v33 = 0;
    [v31 addBudgetForActivity:v13 withSchedule:v14 events:v15 forClient:v16 withExtension:v17 isPrivateClient:v19 error:&v33];
    v30 = v33;
  }

  else
  {
    v23 = +[USUsageTrackingBundle usageTrackingBundle];
    v24 = [v23 localizedStringForKey:@"NotAuthorizedForSPIError" value:&stru_100088840 table:0];
    [v23 localizedStringForKey:@"RequiresPrivateUsageTrackingAgentEntitlement" value:&stru_100088840 table:0];
    v32 = v15;
    v25 = v14;
    v27 = v26 = v13;
    v34[0] = NSLocalizedDescriptionKey;
    v34[1] = NSLocalizedRecoverySuggestionErrorKey;
    v35[0] = v24;
    v35[1] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v29 = [NSError alloc];
    v30 = [v29 initWithDomain:USErrorDomain code:3 userInfo:v28];

    v13 = v26;
    v14 = v25;
    v15 = v32;
  }

  v18[2](v18, v30);
}

- (void)stopMonitoringActivities:(id)a3 forClient:(id)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 && (+[NSXPCConnection currentConnection], v10 = objc_claimAutoreleasedReturnValue(), v11 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v10], v10, (v11 & 1) == 0))
  {
    v12 = +[USUsageTrackingBundle usageTrackingBundle];
    v14 = [v12 localizedStringForKey:@"NotAuthorizedForSPIError" value:&stru_100088840 table:0];
    v15 = [v12 localizedStringForKey:@"RequiresPrivateUsageTrackingAgentEntitlement" value:&stru_100088840 table:0];
    v19[0] = NSLocalizedDescriptionKey;
    v19[1] = NSLocalizedRecoverySuggestionErrorKey;
    v20[0] = v14;
    v20[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v17 = [NSError alloc];
    v13 = [v17 initWithDomain:USErrorDomain code:3 userInfo:v16];
  }

  else
  {
    v12 = +[USBudgetRegistration sharedRegistration];
    v18 = 0;
    [v12 removeBudgetsForActivities:v7 withClient:v8 error:&v18];
    v13 = v18;
  }

  v9[2](v9, v13);
}

- (void)fetchActivitiesForClient:(id)a3 replyHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && (+[NSXPCConnection currentConnection], v7 = objc_claimAutoreleasedReturnValue(), v8 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v7], v7, (v8 & 1) == 0))
  {
    v12 = +[USUsageTrackingBundle usageTrackingBundle];
    v13 = [v12 localizedStringForKey:@"NotAuthorizedForSPIError" value:&stru_100088840 table:0];
    v14 = [v12 localizedStringForKey:@"RequiresPrivateUsageTrackingAgentEntitlement" value:&stru_100088840 table:0];
    v18[0] = NSLocalizedDescriptionKey;
    v18[1] = NSLocalizedRecoverySuggestionErrorKey;
    v19[0] = v13;
    v19[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v16 = [NSError alloc];
    v11 = [v16 initWithDomain:USErrorDomain code:3 userInfo:v15];

    v10 = 0;
  }

  else
  {
    v9 = +[USBudgetRegistration sharedRegistration];
    v17 = 0;
    v10 = [v9 fetchActivitiesForClient:v5 error:&v17];
    v11 = v17;
  }

  v6[2](v6, v10, v11);
}

- (void)fetchScheduleForActivity:(id)a3 withClient:(id)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 && (+[NSXPCConnection currentConnection], v10 = objc_claimAutoreleasedReturnValue(), v11 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v10], v10, (v11 & 1) == 0))
  {
    v15 = +[USUsageTrackingBundle usageTrackingBundle];
    v16 = [v15 localizedStringForKey:@"NotAuthorizedForSPIError" value:&stru_100088840 table:0];
    v17 = [v15 localizedStringForKey:@"RequiresPrivateUsageTrackingAgentEntitlement" value:&stru_100088840 table:0];
    v21[0] = NSLocalizedDescriptionKey;
    v21[1] = NSLocalizedRecoverySuggestionErrorKey;
    v22[0] = v16;
    v22[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = [NSError alloc];
    v14 = [v19 initWithDomain:USErrorDomain code:3 userInfo:v18];

    v13 = 0;
  }

  else
  {
    v12 = +[USBudgetRegistration sharedRegistration];
    v20 = 0;
    v13 = [v12 fetchScheduleForActivity:v7 withClient:v8 error:&v20];
    v14 = v20;
  }

  v9[2](v9, v13, v14);
}

- (void)fetchEventsForActivity:(id)a3 withClient:(id)a4 replyHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSXPCConnection currentConnection];
  v11 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v10];

  if (!v8 || (v11 & 1) != 0)
  {
    v19 = +[USBudgetRegistration sharedRegistration];
    v28 = 0;
    v18 = [v19 fetchEventsForActivity:v7 withClient:v8 error:&v28];
    v17 = v28;

    v20 = [v18 keysOfEntriesPassingTest:&stru_1000865F8];
    v21 = [v20 count] == 0;

    if (((v21 | v11) & 1) == 0)
    {

      v22 = +[USUsageTrackingBundle usageTrackingBundle];
      v23 = [v22 localizedStringForKey:@"NotAuthorizedForSPIError" value:&stru_100088840 table:0];
      v24 = [v22 localizedStringForKey:@"RequiresPrivateUsageTrackingAgentEntitlement" value:&stru_100088840 table:0];
      v29 = NSLocalizedDescriptionKey;
      v30 = NSLocalizedRecoverySuggestionErrorKey;
      v31 = v23;
      v32 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v29 count:2];
      v26 = [NSError alloc];
      v27 = [v26 initWithDomain:USErrorDomain code:3 userInfo:v25];

      v18 = 0;
      v17 = v27;
    }
  }

  else
  {
    v12 = +[USUsageTrackingBundle usageTrackingBundle];
    v13 = [v12 localizedStringForKey:@"NotAuthorizedForSPIError" value:&stru_100088840 table:0];
    v14 = [v12 localizedStringForKey:@"RequiresPrivateUsageTrackingAgentEntitlement" value:&stru_100088840 table:0];
    v29 = NSLocalizedDescriptionKey;
    v30 = NSLocalizedRecoverySuggestionErrorKey;
    v31 = v13;
    v32 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v29 count:2];
    v16 = [NSError alloc];
    v17 = [v16 initWithDomain:USErrorDomain code:3 userInfo:v15];

    v18 = 0;
  }

  v9[2](v9, v18, v17);
}

- (void)uploadLocalDataWithReplyHandler:(id)a3
{
  v3 = a3;
  v4 = +[NSXPCConnection currentConnection];
  v5 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v4];

  if (_os_feature_enabled_impl() && v5)
  {
    [_TtC18UsageTrackingAgent15SyncCoordinator uploadLocalDataWithCompletionHandler:v3];
  }

  else
  {
    v6 = +[USUsageTrackingBundle usageTrackingBundle];
    v7 = [v6 localizedStringForKey:@"NotAuthorizedForSPIError" value:&stru_100088840 table:0];
    v8 = [v6 localizedStringForKey:@"RequiresPrivateUsageTrackingAgentEntitlement" value:&stru_100088840 table:0];
    v12[0] = NSLocalizedDescriptionKey;
    v12[1] = NSLocalizedRecoverySuggestionErrorKey;
    v13[0] = v7;
    v13[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [NSError alloc];
    v11 = [v10 initWithDomain:USErrorDomain code:3 userInfo:v9];

    v3[2](v3, v11);
  }
}

- (void)downloadDataWithReplyHandler:(id)a3
{
  v3 = a3;
  v4 = +[NSXPCConnection currentConnection];
  v5 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v4];

  if (_os_feature_enabled_impl() && v5)
  {
    [_TtC18UsageTrackingAgent15SyncCoordinator downloadWithCompletionHandler:v3];
  }

  else
  {
    v6 = +[USUsageTrackingBundle usageTrackingBundle];
    v7 = [v6 localizedStringForKey:@"NotAuthorizedForSPIError" value:&stru_100088840 table:0];
    v8 = [v6 localizedStringForKey:@"RequiresPrivateUsageTrackingAgentEntitlement" value:&stru_100088840 table:0];
    v12[0] = NSLocalizedDescriptionKey;
    v12[1] = NSLocalizedRecoverySuggestionErrorKey;
    v13[0] = v7;
    v13[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [NSError alloc];
    v11 = [v10 initWithDomain:USErrorDomain code:3 userInfo:v9];

    v3[2](v3, v11);
  }
}

@end
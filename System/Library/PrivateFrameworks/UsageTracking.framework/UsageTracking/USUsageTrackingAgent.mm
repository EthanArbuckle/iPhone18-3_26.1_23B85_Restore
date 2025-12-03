@interface USUsageTrackingAgent
- (void)downloadDataWithReplyHandler:(id)handler;
- (void)fetchActivitiesForClient:(id)client replyHandler:(id)handler;
- (void)fetchBudgetsWithIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier replyHandler:(id)handler;
- (void)fetchEventsForActivity:(id)activity withClient:(id)client replyHandler:(id)handler;
- (void)fetchReportsDuringInterval:(id)interval partitionInterval:(double)partitionInterval replyHandler:(id)handler;
- (void)fetchScheduleForActivity:(id)activity withClient:(id)client replyHandler:(id)handler;
- (void)fetchUsageForApplications:(id)applications webDomains:(id)domains categories:(id)categories interval:(id)interval replyHandler:(id)handler;
- (void)startMonitoringActivity:(id)activity withSchedule:(id)schedule events:(id)events forClient:(id)client withExtension:(id)extension replyHandler:(id)handler;
- (void)startMonitoringBudgets:(id)budgets darwinNotificationName:(id)name notificationTimes:(id)times clientIdentifier:(id)identifier replyHandler:(id)handler;
- (void)stopMonitoringActivities:(id)activities forClient:(id)client replyHandler:(id)handler;
- (void)stopMonitoringAllBudgetsWithReplyHandler:(id)handler;
- (void)stopMonitoringBudgets:(id)budgets clientIdentifier:(id)identifier replyHandler:(id)handler;
- (void)uploadLocalDataWithReplyHandler:(id)handler;
@end

@implementation USUsageTrackingAgent

- (void)fetchReportsDuringInterval:(id)interval partitionInterval:(double)partitionInterval replyHandler:(id)handler
{
  handlerCopy = handler;
  intervalCopy = interval;
  v9 = objc_opt_new();
  [v9 queryUsageDuringInterval:intervalCopy partitionInterval:handlerCopy completionHandler:partitionInterval];
}

- (void)fetchUsageForApplications:(id)applications webDomains:(id)domains categories:(id)categories interval:(id)interval replyHandler:(id)handler
{
  handlerCopy = handler;
  intervalCopy = interval;
  categoriesCopy = categories;
  domainsCopy = domains;
  applicationsCopy = applications;
  v16 = objc_opt_new();
  v17 = +[NSSet set];
  v20 = 0;
  v18 = [v16 queryForApplications:applicationsCopy exemptApplications:v17 webDomains:domainsCopy categories:categoriesCopy interval:intervalCopy segmentInterval:&v20 error:86400.0];

  v19 = v20;
  handlerCopy[2](handlerCopy, v18, v19);
}

- (void)startMonitoringBudgets:(id)budgets darwinNotificationName:(id)name notificationTimes:(id)times clientIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  timesCopy = times;
  nameCopy = name;
  budgetsCopy = budgets;
  v16 = +[USBudgetRegistration sharedRegistration];
  [v16 addBudgets:budgetsCopy darwinNotificationName:nameCopy notificationTimes:timesCopy clientIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)stopMonitoringBudgets:(id)budgets clientIdentifier:(id)identifier replyHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  budgetsCopy = budgets;
  v10 = +[USBudgetRegistration sharedRegistration];
  [v10 removeBudgets:budgetsCopy clientIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)stopMonitoringAllBudgetsWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[USBudgetRegistration sharedRegistration];
  [v4 removeAllBudgetsWithCompletionHandler:handlerCopy];
}

- (void)fetchBudgetsWithIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier replyHandler:(id)handler
{
  handlerCopy = handler;
  clientIdentifierCopy = clientIdentifier;
  identifierCopy = identifier;
  v10 = +[USBudgetRegistration sharedRegistration];
  [v10 fetchBudgetsWithIdentifier:identifierCopy clientIdentifier:clientIdentifierCopy completionHandler:handlerCopy];
}

- (void)startMonitoringActivity:(id)activity withSchedule:(id)schedule events:(id)events forClient:(id)client withExtension:(id)extension replyHandler:(id)handler
{
  activityCopy = activity;
  scheduleCopy = schedule;
  eventsCopy = events;
  clientCopy = client;
  extensionCopy = extension;
  handlerCopy = handler;
  if (clientCopy | extensionCopy)
  {
    v19 = 1;
  }

  else
  {
    v20 = [eventsCopy keysOfEntriesPassingTest:&stru_1000865F8];
    v19 = [v20 count] != 0;
  }

  v21 = +[NSXPCConnection currentConnection];
  v22 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v21];

  if (!v19 || (v22 & 1) != 0)
  {
    v31 = +[USBudgetRegistration sharedRegistration];
    v33 = 0;
    [v31 addBudgetForActivity:activityCopy withSchedule:scheduleCopy events:eventsCopy forClient:clientCopy withExtension:extensionCopy isPrivateClient:v19 error:&v33];
    v30 = v33;
  }

  else
  {
    v23 = +[USUsageTrackingBundle usageTrackingBundle];
    v24 = [v23 localizedStringForKey:@"NotAuthorizedForSPIError" value:&stru_100088840 table:0];
    [v23 localizedStringForKey:@"RequiresPrivateUsageTrackingAgentEntitlement" value:&stru_100088840 table:0];
    v32 = eventsCopy;
    v25 = scheduleCopy;
    v27 = v26 = activityCopy;
    v34[0] = NSLocalizedDescriptionKey;
    v34[1] = NSLocalizedRecoverySuggestionErrorKey;
    v35[0] = v24;
    v35[1] = v27;
    v28 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v29 = [NSError alloc];
    v30 = [v29 initWithDomain:USErrorDomain code:3 userInfo:v28];

    activityCopy = v26;
    scheduleCopy = v25;
    eventsCopy = v32;
  }

  handlerCopy[2](handlerCopy, v30);
}

- (void)stopMonitoringActivities:(id)activities forClient:(id)client replyHandler:(id)handler
{
  activitiesCopy = activities;
  clientCopy = client;
  handlerCopy = handler;
  if (clientCopy && (+[NSXPCConnection currentConnection], v10 = objc_claimAutoreleasedReturnValue(), v11 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v10], v10, (v11 & 1) == 0))
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
    [v12 removeBudgetsForActivities:activitiesCopy withClient:clientCopy error:&v18];
    v13 = v18;
  }

  handlerCopy[2](handlerCopy, v13);
}

- (void)fetchActivitiesForClient:(id)client replyHandler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  if (clientCopy && (+[NSXPCConnection currentConnection], v7 = objc_claimAutoreleasedReturnValue(), v8 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v7], v7, (v8 & 1) == 0))
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
    v10 = [v9 fetchActivitiesForClient:clientCopy error:&v17];
    v11 = v17;
  }

  handlerCopy[2](handlerCopy, v10, v11);
}

- (void)fetchScheduleForActivity:(id)activity withClient:(id)client replyHandler:(id)handler
{
  activityCopy = activity;
  clientCopy = client;
  handlerCopy = handler;
  if (clientCopy && (+[NSXPCConnection currentConnection], v10 = objc_claimAutoreleasedReturnValue(), v11 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v10], v10, (v11 & 1) == 0))
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
    v13 = [v12 fetchScheduleForActivity:activityCopy withClient:clientCopy error:&v20];
    v14 = v20;
  }

  handlerCopy[2](handlerCopy, v13, v14);
}

- (void)fetchEventsForActivity:(id)activity withClient:(id)client replyHandler:(id)handler
{
  activityCopy = activity;
  clientCopy = client;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  v11 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v10];

  if (!clientCopy || (v11 & 1) != 0)
  {
    v19 = +[USBudgetRegistration sharedRegistration];
    v28 = 0;
    v18 = [v19 fetchEventsForActivity:activityCopy withClient:clientCopy error:&v28];
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

  handlerCopy[2](handlerCopy, v18, v17);
}

- (void)uploadLocalDataWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NSXPCConnection currentConnection];
  v5 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v4];

  if (_os_feature_enabled_impl() && v5)
  {
    [_TtC18UsageTrackingAgent15SyncCoordinator uploadLocalDataWithCompletionHandler:handlerCopy];
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

    handlerCopy[2](handlerCopy, v11);
  }
}

- (void)downloadDataWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NSXPCConnection currentConnection];
  v5 = [USTrackingAgentPrivateConnection connectionHasPrivateEntitlement:v4];

  if (_os_feature_enabled_impl() && v5)
  {
    [_TtC18UsageTrackingAgent15SyncCoordinator downloadWithCompletionHandler:handlerCopy];
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

    handlerCopy[2](handlerCopy, v11);
  }
}

@end
@interface USTrackingAgentPrivateConnection
+ (BOOL)connectionHasFamilyControlsEntitlement:(id)entitlement;
+ (BOOL)connectionHasPrivateEntitlement:(id)entitlement;
+ (id)newConnection;
+ (id)newInterface;
@end

@implementation USTrackingAgentPrivateConnection

+ (id)newConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.UsageTrackingAgent.private" options:4096];
  newInterface = [self newInterface];
  [v3 setRemoteObjectInterface:newInterface];

  return v3;
}

+ (id)newInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2880911A0];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 initWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_fetchReportsDuringInterval_partitionInterval_replyHandler_ argumentIndex:1 ofReply:1];
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = objc_opt_class();
  v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];

  [v2 setClasses:v10 forSelector:sel_fetchReportsDuringInterval_partitionInterval_replyHandler_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v10 forSelector:sel_fetchReportsDuringInterval_partitionInterval_replyHandler_ argumentIndex:2 ofReply:1];
  v11 = objc_alloc(MEMORY[0x277CBEB98]);
  v12 = objc_opt_class();
  v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
  [v2 setClasses:v13 forSelector:sel_startMonitoringBudgets_darwinNotificationName_notificationTimes_clientIdentifier_replyHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (BOOL)connectionHasPrivateEntitlement:(id)entitlement
{
  v3 = [entitlement valueForEntitlement:@"com.apple.private.usage-tracking"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)connectionHasFamilyControlsEntitlement:(id)entitlement
{
  v3 = [entitlement valueForEntitlement:@"com.apple.developer.family-controls"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end
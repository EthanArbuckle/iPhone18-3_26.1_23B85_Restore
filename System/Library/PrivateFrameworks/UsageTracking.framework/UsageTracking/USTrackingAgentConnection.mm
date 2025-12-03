@interface USTrackingAgentConnection
+ (id)newConnection;
+ (id)newInterface;
@end

@implementation USTrackingAgentConnection

+ (id)newConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.UsageTrackingAgent" options:4096];
  newInterface = [self newInterface];
  [v3 setRemoteObjectInterface:newInterface];

  return v3;
}

+ (id)newInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288091038];
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_startMonitoringActivity_withSchedule_events_forClient_withExtension_replyHandler_ argumentIndex:1 ofReply:0];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 initWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_startMonitoringActivity_withSchedule_events_forClient_withExtension_replyHandler_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v3 forSelector:sel_fetchScheduleForActivity_withClient_replyHandler_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v7 forSelector:sel_fetchEventsForActivity_withClient_replyHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

@end
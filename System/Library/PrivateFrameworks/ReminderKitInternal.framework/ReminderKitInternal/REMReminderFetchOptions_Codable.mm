@interface REMReminderFetchOptions_Codable
- (REMReminderFetchOptions_Codable)init;
- (REMReminderFetchOptions_Codable)initWithIncludeConcealed:(BOOL)concealed includeDueDateDeltaAlerts:(BOOL)alerts;
@end

@implementation REMReminderFetchOptions_Codable

- (REMReminderFetchOptions_Codable)initWithIncludeConcealed:(BOOL)concealed includeDueDateDeltaAlerts:(BOOL)alerts
{
  alertsCopy = alerts;
  concealedCopy = concealed;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(REMReminderFetchOptions *)&v7 initWithIncludeConcealed:concealedCopy includeDueDateDeltaAlerts:alertsCopy];
}

- (REMReminderFetchOptions_Codable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
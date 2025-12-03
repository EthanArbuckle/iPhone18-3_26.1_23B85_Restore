@interface AuthorizationServiceClient
- (BOOL)areActivitiesEnabledForCurrentProcess;
- (BOOL)areFrequentPushesEnabledForCurrentProcess;
- (BOOL)clearActivitiesAuthorizationForBundleIdentifier:(id)identifier error:(id *)error;
- (_TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient)init;
- (id)activityAuthorizationsCountForBundleIdentifier:(id)identifier;
@end

@implementation AuthorizationServiceClient

- (_TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)clearActivitiesAuthorizationForBundleIdentifier:(id)identifier error:(id *)error
{
  v5 = sub_22D01667C();
  v7 = v6;
  selfCopy = self;
  sub_22D010570(v5, v7);

  return 1;
}

- (BOOL)areActivitiesEnabledForCurrentProcess
{
  selfCopy = self;
  v3 = sub_22D010828();

  return v3 & 1;
}

- (id)activityAuthorizationsCountForBundleIdentifier:(id)identifier
{
  v4 = sub_22D01667C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_22D010A10(v4, v6);

  return v8;
}

- (BOOL)areFrequentPushesEnabledForCurrentProcess
{
  selfCopy = self;
  v3 = sub_22D01127C();

  return v3 & 1;
}

@end
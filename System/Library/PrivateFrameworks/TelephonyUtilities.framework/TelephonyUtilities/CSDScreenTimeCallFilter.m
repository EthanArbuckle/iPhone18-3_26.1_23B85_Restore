@interface CSDScreenTimeCallFilter
- (BOOL)containsOutgoingRestrictedHandle:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5;
- (BOOL)containsRestrictedHandle:(id)a3;
- (BOOL)isUnknownAddress:(id)a3 normalizedAddress:(id)a4 forBundleIdentifier:(id)a5;
- (BOOL)shouldFilterIncomingCall:(id)a3 from:(id)a4;
- (BOOL)shouldRestrictAddresses:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5;
- (BOOL)willRestrictAddresses:(id)a3 forBundleIdentifier:(id)a4;
- (CSDScreenTimeCallFilter)initWithCallProviderManager:(id)a3 delegate:(id)a4 queue:(id)a5;
- (id)policyForAddresses:(id)a3 forBundleIdentifier:(id)a4;
- (int64_t)filterStatusForAddresses:(id)a3 withBundleIdentifier:(id)a4;
- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4;
- (void)handleCallRemoteParticipantsChanged:(id)a3;
- (void)providersChangedForProviderManager:(id)a3 withValidKeychain:(BOOL)a4;
- (void)startMonitoringCall:(id)a3;
- (void)stopMonitoringCall:(id)a3;
@end

@implementation CSDScreenTimeCallFilter

- (BOOL)containsOutgoingRestrictedHandle:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5
{
  if (a4)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a3;
  v12 = self;
  v13 = sub_10001D9D8(a3, v8, v10, a5);

  return v13 & 1;
}

- (void)startMonitoringCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002156C();
}

- (void)handleCallRemoteParticipantsChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100032D88();
}

- (void)stopMonitoringCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100021B9C();
}

- (CSDScreenTimeCallFilter)initWithCallProviderManager:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a5;
  sub_10045E81C();
  return result;
}

- (BOOL)containsRestrictedHandle:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10045ED64(a3);

  return 0;
}

- (BOOL)shouldFilterIncomingCall:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10045EE0C(v6, v7);

  return v9 & 1;
}

- (id)policyForAddresses:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  sub_10045EEFC(v5, v6, v8);

  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (int64_t)filterStatusForAddresses:(id)a3 withBundleIdentifier:(id)a4
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = sub_10045F144();

  return v6;
}

- (BOOL)willRestrictAddresses:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  LOBYTE(v6) = sub_10045F420(v5, v6, v8);

  return v6 & 1;
}

- (BOOL)shouldRestrictAddresses:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5
{
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  v12 = sub_10045F5BC(v7, v8, v10, a5);

  return v12 & 1;
}

- (BOOL)isUnknownAddress:(id)a3 normalizedAddress:(id)a4 forBundleIdentifier:(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return 0;
}

- (void)providersChangedForProviderManager:(id)a3 withValidKeychain:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_10045F758();
}

- (void)conversationManager:(id)a3 activeRemoteParticipantsChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10045F7C0();
}

@end
@interface CSDScreenTimeCallFilter
- (BOOL)containsOutgoingRestrictedHandle:(id)handle forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously;
- (BOOL)containsRestrictedHandle:(id)handle;
- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier;
- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from;
- (BOOL)shouldRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously;
- (BOOL)willRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier;
- (CSDScreenTimeCallFilter)initWithCallProviderManager:(id)manager delegate:(id)delegate queue:(id)queue;
- (id)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier;
- (int64_t)filterStatusForAddresses:(id)addresses withBundleIdentifier:(id)identifier;
- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation;
- (void)handleCallRemoteParticipantsChanged:(id)changed;
- (void)providersChangedForProviderManager:(id)manager withValidKeychain:(BOOL)keychain;
- (void)startMonitoringCall:(id)call;
- (void)stopMonitoringCall:(id)call;
@end

@implementation CSDScreenTimeCallFilter

- (BOOL)containsOutgoingRestrictedHandle:(id)handle forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously
{
  if (identifier)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  handleCopy = handle;
  selfCopy = self;
  v13 = sub_10001D9D8(handle, v8, v10, synchronously);

  return v13 & 1;
}

- (void)startMonitoringCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_10002156C();
}

- (void)handleCallRemoteParticipantsChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_100032D88();
}

- (void)stopMonitoringCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_100021B9C();
}

- (CSDScreenTimeCallFilter)initWithCallProviderManager:(id)manager delegate:(id)delegate queue:(id)queue
{
  managerCopy = manager;
  swift_unknownObjectRetain();
  queueCopy = queue;
  sub_10045E81C();
  return result;
}

- (BOOL)containsRestrictedHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  sub_10045ED64(handle);

  return 0;
}

- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from
{
  callCopy = call;
  fromCopy = from;
  selfCopy = self;
  v9 = sub_10045EE0C(callCopy, fromCopy);

  return v9 & 1;
}

- (id)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier
{
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  sub_10045EEFC(v5, v6, v8);

  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (int64_t)filterStatusForAddresses:(id)addresses withBundleIdentifier:(id)identifier
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v6 = sub_10045F144();

  return v6;
}

- (BOOL)willRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  LOBYTE(v6) = sub_10045F420(v5, v6, v8);

  return v6 & 1;
}

- (BOOL)shouldRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously
{
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  v12 = sub_10045F5BC(v7, v8, v10, synchronously);

  return v12 & 1;
}

- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (normalizedAddress)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return 0;
}

- (void)providersChangedForProviderManager:(id)manager withValidKeychain:(BOOL)keychain
{
  managerCopy = manager;
  selfCopy = self;
  sub_10045F758();
}

- (void)conversationManager:(id)manager activeRemoteParticipantsChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_10045F7C0();
}

@end
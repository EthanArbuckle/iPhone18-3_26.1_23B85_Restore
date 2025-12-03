@interface CSDCommunicationHistoryCallFilter
- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier;
- (BOOL)isUnknownCaller:(id)caller;
- (CSDCommunicationHistoryCallFilter)initWithChManager:(id)manager featureFlags:(id)flags;
@end

@implementation CSDCommunicationHistoryCallFilter

- (CSDCommunicationHistoryCallFilter)initWithChManager:(id)manager featureFlags:(id)flags
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1004213FC(manager, flags);
}

- (BOOL)isUnknownCaller:(id)caller
{
  callerCopy = caller;
  selfCopy = self;
  LOBYTE(self) = sub_1004214DC(callerCopy);

  return self & 1;
}

- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (normalizedAddress)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    normalizedAddress = v11;
  }

  else
  {
    v10 = 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v13 = sub_10042195C(v7, v9, v10, normalizedAddress);

  return v13;
}

@end
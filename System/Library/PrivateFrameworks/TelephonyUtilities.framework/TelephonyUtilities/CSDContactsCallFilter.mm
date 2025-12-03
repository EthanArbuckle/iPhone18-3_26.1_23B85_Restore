@interface CSDContactsCallFilter
- (BOOL)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier;
- (BOOL)isUnknownCaller:(id)caller;
@end

@implementation CSDContactsCallFilter

- (BOOL)isUnknownCaller:(id)caller
{
  callerCopy = caller;
  selfCopy = self;
  LOBYTE(self) = sub_1003AEFEC(callerCopy);

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
  v13 = sub_1003AF7B4(v7, v9, v10, normalizedAddress);

  return v13;
}

@end
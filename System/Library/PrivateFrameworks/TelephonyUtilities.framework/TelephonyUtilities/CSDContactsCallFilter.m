@interface CSDContactsCallFilter
- (BOOL)isUnknownAddress:(id)a3 normalizedAddress:(id)a4 forBundleIdentifier:(id)a5;
- (BOOL)isUnknownCaller:(id)a3;
@end

@implementation CSDContactsCallFilter

- (BOOL)isUnknownCaller:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1003AEFEC(v4);

  return self & 1;
}

- (BOOL)isUnknownAddress:(id)a3 normalizedAddress:(id)a4 forBundleIdentifier:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (a4)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v11;
  }

  else
  {
    v10 = 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = self;
  v13 = sub_1003AF7B4(v7, v9, v10, a4);

  return v13;
}

@end
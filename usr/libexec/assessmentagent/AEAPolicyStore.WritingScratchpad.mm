@interface AEAPolicyStore.WritingScratchpad
- (BOOL)persistWithError:(id *)error;
- (void)setArray:(id)array forKey:(id)key;
- (void)setNumber:(id)number forKey:(id)key;
- (void)setString:(id)string forKey:(id)key;
@end

@implementation AEAPolicyStore.WritingScratchpad

- (void)setNumber:(id)number forKey:(id)key
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v9[3] = sub_100005C1C();
  v9[0] = number;
  swift_beginAccess();
  numberCopy = number;

  sub_10003FB78(v9, v5, v7);
  swift_endAccess();
}

- (void)setString:(id)string forKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10[3] = &type metadata for String;
  v10[0] = v4;
  v10[1] = v6;
  swift_beginAccess();

  sub_10003FB78(v10, v7, v9);
  swift_endAccess();
}

- (void)setArray:(id)array forKey:(id)key
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8[3] = sub_100003F6C(qword_1000B7628, &unk_10007FB20);
  v8[0] = v4;
  swift_beginAccess();

  sub_10003FB78(v8, v5, v7);
  swift_endAccess();
}

- (BOOL)persistWithError:(id *)error
{

  sub_100005490();

  return 1;
}

@end
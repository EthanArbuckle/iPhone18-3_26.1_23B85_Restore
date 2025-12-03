@interface CSDKeychainPasswordItem
+ (NSString)accessGroupName;
+ (NSString)serviceName;
- (BOOL)saveData:(id)data error:(id *)error;
- (BOOL)savePassword:(id)password error:(id *)error;
- (CSDKeychainPasswordItem)initWithService:(id)service account:(id)account accessGroup:(id)group;
- (NSString)account;
- (NSString)description;
- (id)readDataAndReturnError:(id *)error;
- (id)readPasswordAndReturnError:(id *)error;
- (void)setAccount:(id)account;
@end

@implementation CSDKeychainPasswordItem

+ (NSString)accessGroupName
{
  v2 = sub_100459A24(&qword_1006A0C30, &qword_1006BAA40);

  return v2;
}

+ (NSString)serviceName
{
  v2 = sub_100459A24(&qword_1006A0C38, &qword_1006BAA48);

  return v2;
}

- (NSString)account
{
  sub_100459B04();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setAccount:(id)account
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_100459BB0(v4, v6);
}

- (CSDKeychainPasswordItem)initWithService:(id)service account:(id)account accessGroup:(id)group
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100459BCC(v5, v7, v8, v10, v11, v12);
}

- (id)readPasswordAndReturnError:(id *)error
{
  selfCopy = self;
  sub_100459CEC();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (BOOL)savePassword:(id)password error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10045A090();

  return 1;
}

- (id)readDataAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = sub_100459DF8();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100049B14(v4, v6);

  return v7.super.isa;
}

- (BOOL)saveData:(id)data error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_10045A1B4(v7, v9);
  sub_100049B14(v7, v9);
  return 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_10045A8A0();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end
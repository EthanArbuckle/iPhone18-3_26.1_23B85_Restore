@interface TestDevice
- (NSString)identifier;
- (NSString)model;
- (NSString)name;
- (_TtC12SidecarRelay10TestDevice)initWithIdentifier:(id)a3 name:(id)a4 model:(id)a5 accountID:(id)a6;
- (void)setIdentifier:(id)a3;
@end

@implementation TestDevice

- (NSString)identifier
{
  v2 = self;
  sub_100053154();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setIdentifier:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = self;
  sub_1000531E4();
}

- (NSString)model
{
  v2 = self;
  sub_100053278();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)name
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC12SidecarRelay10TestDevice)initWithIdentifier:(id)a3 name:(id)a4 model:(id)a5 accountID:(id)a6
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!a5)
    {
LABEL_3:
      if (!a6)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a5)
  {
    goto LABEL_3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!a6)
  {
LABEL_4:
    sub_100053328();
  }

LABEL_7:
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100053328();
}

@end
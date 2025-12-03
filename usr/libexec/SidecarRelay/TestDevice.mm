@interface TestDevice
- (NSString)identifier;
- (NSString)model;
- (NSString)name;
- (_TtC12SidecarRelay10TestDevice)initWithIdentifier:(id)identifier name:(id)name model:(id)model accountID:(id)d;
- (void)setIdentifier:(id)identifier;
@end

@implementation TestDevice

- (NSString)identifier
{
  selfCopy = self;
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

- (void)setIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_1000531E4();
}

- (NSString)model
{
  selfCopy = self;
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

- (_TtC12SidecarRelay10TestDevice)initWithIdentifier:(id)identifier name:(id)name model:(id)model accountID:(id)d
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!model)
    {
LABEL_3:
      if (!d)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!model)
  {
    goto LABEL_3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!d)
  {
LABEL_4:
    sub_100053328();
  }

LABEL_7:
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100053328();
}

@end
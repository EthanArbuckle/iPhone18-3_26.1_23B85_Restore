@interface CloudPairingManager
- (NSString)description;
- (_TtC14bluetoothuserd19CloudPairingManager)init;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation CloudPairingManager

- (void)service:(id)a3 devicesChanged:(id)a4
{
  if (a4)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_100003F18(v6);
}

- (NSString)description
{
  v2 = *((swift_isaMask & self->super.isa) + 0xA0);
  v3 = self;
  v2(50);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (_TtC14bluetoothuserd19CloudPairingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
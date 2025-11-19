@interface TestClient
- (void)relayDevicesForServiceIdentifier:(id)a3 completion:(id)a4;
@end

@implementation TestClient

- (void)relayDevicesForServiceIdentifier:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_100055230(v6, v8, v9, v5);
  _Block_release(v5);
}

@end
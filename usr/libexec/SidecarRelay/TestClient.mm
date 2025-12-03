@interface TestClient
- (void)relayDevicesForServiceIdentifier:(id)identifier completion:(id)completion;
@end

@implementation TestClient

- (void)relayDevicesForServiceIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_100055230(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

@end
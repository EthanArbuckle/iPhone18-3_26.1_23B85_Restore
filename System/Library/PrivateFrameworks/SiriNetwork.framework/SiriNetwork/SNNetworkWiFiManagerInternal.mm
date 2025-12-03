@interface SNNetworkWiFiManagerInternal
+ (SNNetworkWiFiManagerInternal)shared;
- (BOOL)isWiFiEnabled;
- (BOOL)registerOneShotPowerStateDidChangeForWiFiInterface:(id)interface;
- (id)getWiFiRecordRepresentation;
- (void)acquireWiFiAssertionWithWifiAssertionTypeRawValue:(int64_t)value;
- (void)powerStateDidChangeForWiFiInterfaceWithName:(id)name;
- (void)releaseWiFiAssertion;
@end

@implementation SNNetworkWiFiManagerInternal

+ (SNNetworkWiFiManagerInternal)shared
{
  v2 = static NetworkWiFiManager.shared.getter();

  return v2;
}

- (BOOL)isWiFiEnabled
{
  selfCopy = self;
  v3 = NetworkWiFiManager.isWiFiEnabled()();

  return v3;
}

- (BOOL)registerOneShotPowerStateDidChangeForWiFiInterface:(id)interface
{
  v4 = _Block_copy(interface);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v9 = NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);

  return v9;
}

- (void)powerStateDidChangeForWiFiInterfaceWithName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4._countAndFlagsBits = self;
  countAndFlagsBits = v4._countAndFlagsBits;
  NetworkWiFiManager.powerStateDidChangeForWiFiInterface(withName:)(v4);
}

- (id)getWiFiRecordRepresentation
{
  selfCopy = self;
  v3 = NetworkWiFiManager.getWiFiRecordRepresentation()();

  return v3;
}

- (void)acquireWiFiAssertionWithWifiAssertionTypeRawValue:(int64_t)value
{
  selfCopy = self;
  NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(value);
}

- (void)releaseWiFiAssertion
{
  selfCopy = self;
  NetworkWiFiManager.releaseWiFiAssertion()();
}

@end
@interface SNNetworkWiFiManagerInternal
+ (SNNetworkWiFiManagerInternal)shared;
- (BOOL)isWiFiEnabled;
- (BOOL)registerOneShotPowerStateDidChangeForWiFiInterface:(id)a3;
- (id)getWiFiRecordRepresentation;
- (void)acquireWiFiAssertionWithWifiAssertionTypeRawValue:(int64_t)a3;
- (void)powerStateDidChangeForWiFiInterfaceWithName:(id)a3;
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
  v2 = self;
  v3 = NetworkWiFiManager.isWiFiEnabled()();

  return v3;
}

- (BOOL)registerOneShotPowerStateDidChangeForWiFiInterface:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  v9 = NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);

  return v9;
}

- (void)powerStateDidChangeForWiFiInterfaceWithName:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4._countAndFlagsBits = self;
  countAndFlagsBits = v4._countAndFlagsBits;
  NetworkWiFiManager.powerStateDidChangeForWiFiInterface(withName:)(v4);
}

- (id)getWiFiRecordRepresentation
{
  v2 = self;
  v3 = NetworkWiFiManager.getWiFiRecordRepresentation()();

  return v3;
}

- (void)acquireWiFiAssertionWithWifiAssertionTypeRawValue:(int64_t)a3
{
  v4 = self;
  NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(a3);
}

- (void)releaseWiFiAssertion
{
  v2 = self;
  NetworkWiFiManager.releaseWiFiAssertion()();
}

@end
@interface SNNetworkManagerInternal
+ (SNNetworkManagerInternal)shared;
- (int64_t)networkQualityWithNetworkType:(int64_t)a3;
- (void)acquireWiFiAssertionWithWifiAssertionTypeRawValue:(int64_t)a3;
- (void)carrierBundleChange:(id)a3;
- (void)forceFastDormancy;
- (void)getSNLinkRecommendationMetrics:(id)a3;
- (void)getSNProximityLinkRecommendationWithRetry:(BOOL)a3 completion:(id)a4;
- (void)preferredDataSimChanged:(id)a3;
- (void)registerClient;
- (void)releaseWiFiAssertion;
- (void)resetLinkRecommendationInfo;
- (void)signalStrengthChanged:(id)a3 info:(id)a4;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
- (void)startMonitoringNetwork:(id)a3;
- (void)stopMonitoringNetwork;
- (void)unregisterClient;
- (void)updateNetworkPerformanceFeed;
@end

@implementation SNNetworkManagerInternal

- (void)acquireWiFiAssertionWithWifiAssertionTypeRawValue:(int64_t)a3
{
  v4 = self;
  NetworkManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(a3);
}

- (void)startMonitoringNetwork:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  NetworkManager.startMonitoringNetwork(_:)(v8);
}

- (void)resetLinkRecommendationInfo
{
  v2 = self;
  NetworkManager.resetLinkRecommendationInfo()();
}

- (void)updateNetworkPerformanceFeed
{
  v2 = self;
  NetworkManager.updateNetworkPerformanceFeed()();
}

- (void)releaseWiFiAssertion
{
  v2 = self;
  NetworkManager.releaseWiFiAssertion()();
}

+ (SNNetworkManagerInternal)shared
{
  v2 = static NetworkManager.shared.getter();

  return v2;
}

- (void)registerClient
{
  v2 = self;
  NetworkManager.registerClient()();
}

- (void)unregisterClient
{
  v2 = self;
  NetworkManager.unregisterClient()();
}

- (void)getSNProximityLinkRecommendationWithRetry:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = thunk for @escaping @callee_unowned @convention(block) (@unowned SNLinkRecommendationInfo?) -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  NetworkManager.getSNProximityLinkRecommendation(retry:completion:)(a3, v6, v7);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6);
}

- (void)getSNLinkRecommendationMetrics:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned SNLinkRecommendationInfo?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  NetworkManager.getSNLinkRecommendationMetrics(_:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
}

- (void)preferredDataSimChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkManager.preferredDataSimChanged(_:)(v4);
}

- (void)carrierBundleChange:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkManager.carrierBundleChange(_:)(v4);
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  NetworkManager.simStatusDidChange(_:status:)(v9, v6, v8);
}

- (void)signalStrengthChanged:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  NetworkManager.signalStrengthChanged(_:info:)(v6, v7);
}

- (int64_t)networkQualityWithNetworkType:(int64_t)a3
{
  v4 = self;
  v5 = NetworkManager.networkQuality(networkType:)(a3);

  return v5;
}

- (void)stopMonitoringNetwork
{
  v2 = self;
  NetworkManager.stopMonitoringNetwork()();
}

- (void)forceFastDormancy
{
  v2 = self;
  NetworkManager.forceFastDormancy()();
}

@end
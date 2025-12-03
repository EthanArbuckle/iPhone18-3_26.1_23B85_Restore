@interface SNNetworkManagerInternal
+ (SNNetworkManagerInternal)shared;
- (int64_t)networkQualityWithNetworkType:(int64_t)type;
- (void)acquireWiFiAssertionWithWifiAssertionTypeRawValue:(int64_t)value;
- (void)carrierBundleChange:(id)change;
- (void)forceFastDormancy;
- (void)getSNLinkRecommendationMetrics:(id)metrics;
- (void)getSNProximityLinkRecommendationWithRetry:(BOOL)retry completion:(id)completion;
- (void)preferredDataSimChanged:(id)changed;
- (void)registerClient;
- (void)releaseWiFiAssertion;
- (void)resetLinkRecommendationInfo;
- (void)signalStrengthChanged:(id)changed info:(id)info;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)startMonitoringNetwork:(id)network;
- (void)stopMonitoringNetwork;
- (void)unregisterClient;
- (void)updateNetworkPerformanceFeed;
@end

@implementation SNNetworkManagerInternal

- (void)acquireWiFiAssertionWithWifiAssertionTypeRawValue:(int64_t)value
{
  selfCopy = self;
  NetworkManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(value);
}

- (void)startMonitoringNetwork:(id)network
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  NetworkManager.startMonitoringNetwork(_:)(v8);
}

- (void)resetLinkRecommendationInfo
{
  selfCopy = self;
  NetworkManager.resetLinkRecommendationInfo()();
}

- (void)updateNetworkPerformanceFeed
{
  selfCopy = self;
  NetworkManager.updateNetworkPerformanceFeed()();
}

- (void)releaseWiFiAssertion
{
  selfCopy = self;
  NetworkManager.releaseWiFiAssertion()();
}

+ (SNNetworkManagerInternal)shared
{
  v2 = static NetworkManager.shared.getter();

  return v2;
}

- (void)registerClient
{
  selfCopy = self;
  NetworkManager.registerClient()();
}

- (void)unregisterClient
{
  selfCopy = self;
  NetworkManager.unregisterClient()();
}

- (void)getSNProximityLinkRecommendationWithRetry:(BOOL)retry completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  NetworkManager.getSNProximityLinkRecommendation(retry:completion:)(retry, v6, v7);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6);
}

- (void)getSNLinkRecommendationMetrics:(id)metrics
{
  v4 = _Block_copy(metrics);
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

  selfCopy = self;
  NetworkManager.getSNLinkRecommendationMetrics(_:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
}

- (void)preferredDataSimChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  NetworkManager.preferredDataSimChanged(_:)(changedCopy);
}

- (void)carrierBundleChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  NetworkManager.carrierBundleChange(_:)(changeCopy);
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  changeCopy = change;
  selfCopy = self;
  NetworkManager.simStatusDidChange(_:status:)(changeCopy, v6, v8);
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  changedCopy = changed;
  infoCopy = info;
  selfCopy = self;
  NetworkManager.signalStrengthChanged(_:info:)(changedCopy, infoCopy);
}

- (int64_t)networkQualityWithNetworkType:(int64_t)type
{
  selfCopy = self;
  v5 = NetworkManager.networkQuality(networkType:)(type);

  return v5;
}

- (void)stopMonitoringNetwork
{
  selfCopy = self;
  NetworkManager.stopMonitoringNetwork()();
}

- (void)forceFastDormancy
{
  selfCopy = self;
  NetworkManager.forceFastDormancy()();
}

@end
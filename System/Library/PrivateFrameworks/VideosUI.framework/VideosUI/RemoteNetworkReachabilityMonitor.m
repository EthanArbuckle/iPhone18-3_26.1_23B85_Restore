@interface RemoteNetworkReachabilityMonitor
+ (_TtC8VideosUI32RemoteNetworkReachabilityMonitor)shared;
- (BOOL)isLikelyReachable;
- (BOOL)isReachable;
- (void)checkRemoteServerReachabilityWithCompletionHandler:(id)a3;
@end

@implementation RemoteNetworkReachabilityMonitor

+ (_TtC8VideosUI32RemoteNetworkReachabilityMonitor)shared
{
  v2 = static RemoteNetworkReachabilityMonitor.shared.getter();

  return v2;
}

- (BOOL)isLikelyReachable
{
  v2 = self;
  v3 = RemoteNetworkReachabilityMonitor.isLikelyReachable()();

  return v3;
}

- (BOOL)isReachable
{
  v2 = self;
  v3 = RemoteNetworkReachabilityMonitor.isReachable()();

  return v3;
}

- (void)checkRemoteServerReachabilityWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1E38364EC(&unk_1E42B0240, v5);
}

@end
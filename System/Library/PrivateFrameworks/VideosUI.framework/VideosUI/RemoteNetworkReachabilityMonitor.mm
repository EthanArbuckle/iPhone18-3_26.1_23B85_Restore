@interface RemoteNetworkReachabilityMonitor
+ (_TtC8VideosUI32RemoteNetworkReachabilityMonitor)shared;
- (BOOL)isLikelyReachable;
- (BOOL)isReachable;
- (void)checkRemoteServerReachabilityWithCompletionHandler:(id)handler;
@end

@implementation RemoteNetworkReachabilityMonitor

+ (_TtC8VideosUI32RemoteNetworkReachabilityMonitor)shared
{
  v2 = static RemoteNetworkReachabilityMonitor.shared.getter();

  return v2;
}

- (BOOL)isLikelyReachable
{
  selfCopy = self;
  v3 = RemoteNetworkReachabilityMonitor.isLikelyReachable()();

  return v3;
}

- (BOOL)isReachable
{
  selfCopy = self;
  v3 = RemoteNetworkReachabilityMonitor.isReachable()();

  return v3;
}

- (void)checkRemoteServerReachabilityWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1E38364EC(&unk_1E42B0240, v5);
}

@end
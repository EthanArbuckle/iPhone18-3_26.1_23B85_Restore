@interface BRCReachabilityObserver
- (void)startObservingNetworkReachabilityChanges;
- (void)stopObservingNetworkReachabilityChanges;
@end

@implementation BRCReachabilityObserver

- (void)startObservingNetworkReachabilityChanges
{
  v3 = +[BRCSystemResourcesManager manager];
  [v3 addReachabilityObserver:self];
}

- (void)stopObservingNetworkReachabilityChanges
{
  v3 = +[BRCSystemResourcesManager manager];
  [v3 removeReachabilityObserver:self];
}

@end
@interface WFNetworkFailTracker
- (BOOL)lastFailTimeExpiredForSettings:(id)a3;
@end

@implementation WFNetworkFailTracker

- (BOOL)lastFailTimeExpiredForSettings:(id)a3
{
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  [(WFNetworkFailTracker *)self lastFailTimeInSeconds];
  v7 = Current - v6;
  v8 = [v4 networkSwitchExpirationTimeInSeconds];

  return v7 >= v8;
}

@end
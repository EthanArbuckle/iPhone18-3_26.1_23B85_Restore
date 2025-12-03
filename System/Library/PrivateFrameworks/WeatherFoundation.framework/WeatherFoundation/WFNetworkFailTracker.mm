@interface WFNetworkFailTracker
- (BOOL)lastFailTimeExpiredForSettings:(id)settings;
@end

@implementation WFNetworkFailTracker

- (BOOL)lastFailTimeExpiredForSettings:(id)settings
{
  settingsCopy = settings;
  Current = CFAbsoluteTimeGetCurrent();
  [(WFNetworkFailTracker *)self lastFailTimeInSeconds];
  v7 = Current - v6;
  networkSwitchExpirationTimeInSeconds = [settingsCopy networkSwitchExpirationTimeInSeconds];

  return v7 >= networkSwitchExpirationTimeInSeconds;
}

@end
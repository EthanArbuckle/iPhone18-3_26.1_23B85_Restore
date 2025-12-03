@interface BMDeviceWiFiAvailabilityStatus(SearchUIExtension)
- (void)getEnabledStatusWithCompletion:()SearchUIExtension;
@end

@implementation BMDeviceWiFiAvailabilityStatus(SearchUIExtension)

- (void)getEnabledStatusWithCompletion:()SearchUIExtension
{
  v5 = a3;
  (a3)[2](v5, [self isWiFiSwitchOn]);
}

@end
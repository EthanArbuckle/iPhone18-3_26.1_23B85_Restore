@interface BackgroundFetchManager
- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
@end

@implementation BackgroundFetchManager

- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region
{
  managerCopy = manager;
  regionCopy = region;
  v8.super.isa = self;
  isa = v8.super.isa;
  v8._internal = regionCopy;
  BackgroundFetchManager.locationManager(_:didStartMonitoringFor:)(v8, v9);
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  managerCopy = manager;
  regionCopy = region;
  errorCopy = error;
  selfCopy = self;
  BackgroundFetchManager.locationManager(_:monitoringDidFailFor:withError:)(selfCopy, region, errorCopy);
}

@end
@interface BackgroundFetchManager
- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4;
- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5;
@end

@implementation BackgroundFetchManager

- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.super.isa = self;
  isa = v8.super.isa;
  v8._internal = v7;
  BackgroundFetchManager.locationManager(_:didStartMonitoringFor:)(v8, v9);
}

- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  BackgroundFetchManager.locationManager(_:monitoringDidFailFor:withError:)(v10, a4, v11);
}

@end
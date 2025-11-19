@interface LocationManager
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation LocationManager

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5._internal = self;
  internal = v5._internal;
  v5.super.isa = v4;
  LocationManager.locationManagerDidChangeAuthorization(_:)(v5);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  LocationManager.locationManager(_:didFailWithError:)(v7, v8);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_1C946B5D0(0, &qword_1EDB7FDB0);
  v6 = sub_1C96A72A4();
  v7 = a3;
  v8 = self;
  v9.super.isa = v7;
  v9._internal = v6;
  LocationManager.locationManager(_:didUpdateLocations:)(v9, v10);
}

@end
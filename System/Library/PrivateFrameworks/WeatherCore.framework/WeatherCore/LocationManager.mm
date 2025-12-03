@interface LocationManager
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationManager

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5._internal = self;
  internal = v5._internal;
  v5.super.isa = authorizationCopy;
  LocationManager.locationManagerDidChangeAuthorization(_:)(v5);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  LocationManager.locationManager(_:didFailWithError:)(selfCopy, errorCopy);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_1C946B5D0(0, &qword_1EDB7FDB0);
  v6 = sub_1C96A72A4();
  managerCopy = manager;
  selfCopy = self;
  v9.super.isa = managerCopy;
  v9._internal = v6;
  LocationManager.locationManager(_:didUpdateLocations:)(v9, v10);
}

@end
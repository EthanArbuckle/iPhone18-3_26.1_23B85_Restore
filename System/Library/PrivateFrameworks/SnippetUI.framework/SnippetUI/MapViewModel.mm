@interface MapViewModel
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation MapViewModel

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_26A809F90(authorizationCopy);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_26A4EC5B0(0, &qword_2803B9380);
  v6 = sub_26A851A98();
  managerCopy = manager;
  selfCopy = self;
  sub_26A80A100(managerCopy, v6);
}

@end
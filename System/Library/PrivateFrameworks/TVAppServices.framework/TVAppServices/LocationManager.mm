@interface LocationManager
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationManager

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_26CC80480(authorizationCopy);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_26CC18080(0, &qword_2804BCC50, 0x277CE41F8);
  v6 = sub_26CD3A7AC();
  managerCopy = manager;
  selfCopy = self;
  sub_26CC81F34(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_26CC82248(errorCopy);
}

@end
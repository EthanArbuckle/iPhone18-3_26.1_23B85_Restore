@interface CLHeadingUpdatePublisher
- (void)locationManager:(id)manager didUpdateHeading:(id)heading;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation CLHeadingUpdatePublisher

- (void)locationManager:(id)manager didUpdateHeading:(id)heading
{
  managerCopy = manager;
  headingCopy = heading;
  selfCopy = self;
  sub_1D89B627C(headingCopy);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_1D89B51D8(authorizationCopy);
}

@end
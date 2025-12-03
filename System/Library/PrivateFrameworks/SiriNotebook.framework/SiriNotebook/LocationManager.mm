@interface LocationManager
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationManager

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_2683B6938(authorizationCopy);
}

@end
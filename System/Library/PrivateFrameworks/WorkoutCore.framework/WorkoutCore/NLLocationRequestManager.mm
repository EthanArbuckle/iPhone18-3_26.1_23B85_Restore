@interface NLLocationRequestManager
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)requestLocationAuthorizationWithCompletion:(id)completion;
@end

@implementation NLLocationRequestManager

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5._internal = self;
  internal = v5._internal;
  v5.super.isa = authorizationCopy;
  LocationRequestManager.locationManagerDidChangeAuthorization(_:)(v5);
}

- (void)requestLocationAuthorizationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  LocationRequestManager.requestLocationAuthorization(completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CLAuthorizationStatus) -> (), v5);
}

@end
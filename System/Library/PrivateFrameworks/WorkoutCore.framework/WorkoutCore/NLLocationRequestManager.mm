@interface NLLocationRequestManager
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)requestLocationAuthorizationWithCompletion:(id)a3;
@end

@implementation NLLocationRequestManager

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5._internal = self;
  internal = v5._internal;
  v5.super.isa = v4;
  LocationRequestManager.locationManagerDidChangeAuthorization(_:)(v5);
}

- (void)requestLocationAuthorizationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  LocationRequestManager.requestLocationAuthorization(completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CLAuthorizationStatus) -> (), v5);
}

@end
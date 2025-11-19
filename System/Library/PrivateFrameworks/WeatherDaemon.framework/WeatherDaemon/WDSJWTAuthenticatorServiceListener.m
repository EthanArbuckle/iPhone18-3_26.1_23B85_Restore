@interface WDSJWTAuthenticatorServiceListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)generateTokenWithUrl:(id)a3 completion:(id)a4;
@end

@implementation WDSJWTAuthenticatorServiceListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = WDSJWTAuthenticatorServiceListener.listener(_:shouldAcceptNewConnection:)(v8, v7);

  return v9;
}

- (void)generateTokenWithUrl:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1B61C0340(v7, v8, v6);
  _Block_release(v6);
}

@end
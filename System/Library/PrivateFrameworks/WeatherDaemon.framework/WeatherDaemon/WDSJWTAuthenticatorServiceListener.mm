@interface WDSJWTAuthenticatorServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)generateTokenWithUrl:(id)url completion:(id)completion;
@end

@implementation WDSJWTAuthenticatorServiceListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = WDSJWTAuthenticatorServiceListener.listener(_:shouldAcceptNewConnection:)(selfCopy, connectionCopy);

  return v9;
}

- (void)generateTokenWithUrl:(id)url completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  urlCopy = url;
  selfCopy = self;
  sub_1B61C0340(urlCopy, selfCopy, v6);
  _Block_release(v6);
}

@end
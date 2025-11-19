@interface AuthenticateProxyObjectFetchingDecorator
- (void)authenticateWithAccount:(id)a3 with:(id)a4 completion:(id)a5;
@end

@implementation AuthenticateProxyObjectFetchingDecorator

- (void)authenticateWithAccount:(id)a3 with:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;

  sub_261125D54(v9, v10, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end
@interface AuthenticateProxyObjectFetchingDecorator
- (void)authenticateWithAccount:(id)account with:(id)with completion:(id)completion;
@end

@implementation AuthenticateProxyObjectFetchingDecorator

- (void)authenticateWithAccount:(id)account with:(id)with completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  accountCopy = account;
  withCopy = with;

  sub_261125D54(accountCopy, withCopy, self, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end
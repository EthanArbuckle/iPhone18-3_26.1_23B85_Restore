@interface AAMessagingAccount
- (AAMessagingAccount)initWithAccount:(id)account;
@end

@implementation AAMessagingAccount

- (AAMessagingAccount)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AAMessagingAccount;
  v6 = [(AAMessagingAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsAccount, account);
  }

  return v7;
}

@end
@interface RTAccountManagerNotificationAccountChanged
- (RTAccountManagerNotificationAccountChanged)initWithLatestAccount:(id)account oldAccount:(id)oldAccount;
@end

@implementation RTAccountManagerNotificationAccountChanged

- (RTAccountManagerNotificationAccountChanged)initWithLatestAccount:(id)account oldAccount:(id)oldAccount
{
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v12.receiver = self;
  v12.super_class = RTAccountManagerNotificationAccountChanged;
  v9 = [(RTNotification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_latestAccount, account);
    objc_storeStrong(&v10->_oldAccount, oldAccount);
  }

  return v10;
}

@end
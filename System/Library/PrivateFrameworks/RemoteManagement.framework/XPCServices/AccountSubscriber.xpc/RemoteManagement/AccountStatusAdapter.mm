@interface AccountStatusAdapter
- (AccountStatusAdapter)init;
- (id)getRemotelyManagedAccountsForStore:(id)store;
- (id)getStatusInfoFromAccount:(id)account;
- (id)getStatusKeyPathFromAccount:(id)account;
@end

@implementation AccountStatusAdapter

- (AccountStatusAdapter)init
{
  v6.receiver = self;
  v6.super_class = AccountStatusAdapter;
  v2 = [(AccountStatusAdapter *)&v6 init];
  if (v2)
  {
    v3 = +[ACAccountStore rm_defaultStore];
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;
  }

  return v2;
}

- (id)getRemotelyManagedAccountsForStore:(id)store
{
  identifier = [store identifier];
  v5 = objc_opt_new();
  accountStore = [(AccountStatusAdapter *)self accountStore];
  accounts = [accountStore accounts];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000043C4;
  v13[3] = &unk_10001C850;
  v14 = identifier;
  v8 = v5;
  v15 = v8;
  v9 = identifier;
  [accounts enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

- (id)getStatusKeyPathFromAccount:(id)account
{
  accountCopy = account;
  v4 = [AccountStatusHandler handlerForAccount:accountCopy];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 getStatusKeyPathFromAccount:accountCopy];
  }

  else
  {
    v7 = +[RMLog accountStatusAdapter];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000131F0(accountCopy, v7);
    }

    v6 = 0;
  }

  return v6;
}

- (id)getStatusInfoFromAccount:(id)account
{
  accountCopy = account;
  v4 = [AccountStatusHandler handlerForAccount:accountCopy];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 getStatusInfoFromAccount:accountCopy];
  }

  else
  {
    v7 = +[RMLog accountStatusAdapter];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000131F0(accountCopy, v7);
    }

    v6 = &__NSDictionary0__struct;
  }

  return v6;
}

@end
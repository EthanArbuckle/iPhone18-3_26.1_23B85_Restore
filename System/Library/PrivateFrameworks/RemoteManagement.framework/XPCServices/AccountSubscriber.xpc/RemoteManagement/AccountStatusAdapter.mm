@interface AccountStatusAdapter
- (AccountStatusAdapter)init;
- (id)getRemotelyManagedAccountsForStore:(id)a3;
- (id)getStatusInfoFromAccount:(id)a3;
- (id)getStatusKeyPathFromAccount:(id)a3;
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

- (id)getRemotelyManagedAccountsForStore:(id)a3
{
  v4 = [a3 identifier];
  v5 = objc_opt_new();
  v6 = [(AccountStatusAdapter *)self accountStore];
  v7 = [v6 accounts];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000043C4;
  v13[3] = &unk_10001C850;
  v14 = v4;
  v8 = v5;
  v15 = v8;
  v9 = v4;
  [v7 enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

- (id)getStatusKeyPathFromAccount:(id)a3
{
  v3 = a3;
  v4 = [AccountStatusHandler handlerForAccount:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 getStatusKeyPathFromAccount:v3];
  }

  else
  {
    v7 = +[RMLog accountStatusAdapter];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000131F0(v3, v7);
    }

    v6 = 0;
  }

  return v6;
}

- (id)getStatusInfoFromAccount:(id)a3
{
  v3 = a3;
  v4 = [AccountStatusHandler handlerForAccount:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 getStatusInfoFromAccount:v3];
  }

  else
  {
    v7 = +[RMLog accountStatusAdapter];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000131F0(v3, v7);
    }

    v6 = &__NSDictionary0__struct;
  }

  return v6;
}

@end
@interface AccountStatusHandler
+ (id)handlerForAccount:(id)account;
+ (id)handlerForConfigurationType:(id)type;
- (BOOL)statusHasChangedForAccount:(id)account oldAccount:(id)oldAccount;
@end

@implementation AccountStatusHandler

+ (id)handlerForConfigurationType:(id)type
{
  typeCopy = type;
  if (qword_100022050 != -1)
  {
    sub_10001327C();
  }

  if ([qword_100022048 objectForKeyedSubscript:typeCopy])
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)handlerForAccount:(id)account
{
  accountCopy = account;
  v4 = [accountCopy objectForKeyedSubscript:@"RemoteManagementConfigurationType"];
  if (v4)
  {
    v5 = [AccountStatusHandler handlerForConfigurationType:v4];
  }

  else
  {
    v6 = +[RMLog accountStatusHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000131F0(accountCopy, v6);
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)statusHasChangedForAccount:(id)account oldAccount:(id)oldAccount
{
  oldAccountCopy = oldAccount;
  v7 = [(AccountStatusHandler *)self getStatusInfoFromAccount:account];
  v8 = [(AccountStatusHandler *)self getStatusInfoFromAccount:oldAccountCopy];

  LOBYTE(oldAccountCopy) = [v7 isEqualToDictionary:v8];
  return oldAccountCopy ^ 1;
}

@end
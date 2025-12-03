@interface INQuotaCleanupPushHandler
- (BOOL)_isValidPush:(id)push;
- (INQuotaCleanupPushHandler)initWithAccountStore:(id)store;
- (void)clearClientCacheWithCacheTypes:(id)types;
- (void)handleIncomingPushNotification:(id)notification;
@end

@implementation INQuotaCleanupPushHandler

- (INQuotaCleanupPushHandler)initWithAccountStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = INQuotaCleanupPushHandler;
  v6 = [(INQuotaCleanupPushHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
  }

  return v7;
}

- (void)handleIncomingPushNotification:(id)notification
{
  notificationCopy = notification;
  if ([(INQuotaCleanupPushHandler *)self _isValidPush:?])
  {
    userInfo = [notificationCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"cacheTypes"];
    [(INQuotaCleanupPushHandler *)self clearClientCacheWithCacheTypes:v5];
  }
}

- (BOOL)_isValidPush:(id)push
{
  pushCopy = push;
  userInfo = [pushCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"event"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [pushCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:@"dsId"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = v8;
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = [v8 stringValue];
LABEL_12:
        v10 = stringValue;
        accountStore = self->_accountStore;
        p_accountStore = &self->_accountStore;
        v12 = [(ACAccountStore *)accountStore aa_appleAccountWithPersonID:stringValue];
        v11 = [v12 aa_isAccountClass:AAAccountClassPrimary];
        if ((v11 & 1) == 0)
        {
          v15 = _INLogSystem();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            sub_100035D08(v10, p_accountStore, v15);
          }

          v16 = _INLogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_100035DCC();
          }
        }

        goto LABEL_21;
      }

      v12 = _INLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100033AF4(v8, v12);
      }
    }

    else
    {
      v12 = _INLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100035E0C();
      }
    }

    v10 = 0;
    v11 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v10 = _INLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100035CC8();
  }

  v11 = 0;
LABEL_22:

  return v11;
}

- (void)clearClientCacheWithCacheTypes:(id)types
{
  typesCopy = types;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [typesCopy enumerateObjectsUsingBlock:&stru_100055470];
  }

  else
  {
    v4 = _INLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100035E4C();
    }
  }
}

@end
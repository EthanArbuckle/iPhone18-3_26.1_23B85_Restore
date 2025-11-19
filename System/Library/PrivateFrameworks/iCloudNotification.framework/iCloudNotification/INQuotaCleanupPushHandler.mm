@interface INQuotaCleanupPushHandler
- (BOOL)_isValidPush:(id)a3;
- (INQuotaCleanupPushHandler)initWithAccountStore:(id)a3;
- (void)clearClientCacheWithCacheTypes:(id)a3;
- (void)handleIncomingPushNotification:(id)a3;
@end

@implementation INQuotaCleanupPushHandler

- (INQuotaCleanupPushHandler)initWithAccountStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = INQuotaCleanupPushHandler;
  v6 = [(INQuotaCleanupPushHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
  }

  return v7;
}

- (void)handleIncomingPushNotification:(id)a3
{
  v6 = a3;
  if ([(INQuotaCleanupPushHandler *)self _isValidPush:?])
  {
    v4 = [v6 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"cacheTypes"];
    [(INQuotaCleanupPushHandler *)self clearClientCacheWithCacheTypes:v5];
  }
}

- (BOOL)_isValidPush:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"event"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"dsId"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 stringValue];
LABEL_12:
        v10 = v9;
        accountStore = self->_accountStore;
        p_accountStore = &self->_accountStore;
        v12 = [(ACAccountStore *)accountStore aa_appleAccountWithPersonID:v9];
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

- (void)clearClientCacheWithCacheTypes:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 enumerateObjectsUsingBlock:&stru_100055470];
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
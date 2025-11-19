@interface SubscriptionEntitlementsOperation
- (id)_fetchSubscriptionEntitlements:(id *)a3;
- (void)run;
@end

@implementation SubscriptionEntitlementsOperation

- (void)run
{
  v3 = [(SubscriptionEntitlementsOperation *)self subscriptionEntitlementsBlock];
  v17 = 0;
  if ([(SubscriptionEntitlementsOperation *)self ignoreCaches])
  {
    v4 = 0;
  }

  else
  {
    v4 = [SSVSubscriptionEntitlementsCoordinator cachedSubscriptionEntitlementsExpired:&v17];
    if (v4 && v17 != 1)
    {
      v13 = 0;
      goto LABEL_19;
    }
  }

  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = objc_opt_class();
  v18 = 138412290;
  v19 = v9;
  v10 = v9;
  LODWORD(v15) = 12;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v8 = [NSString stringWithCString:v11 encoding:4, &v18, v15];
    free(v11);
    SSFileLog();
LABEL_15:
  }

  v16 = 0;
  v12 = [(SubscriptionEntitlementsOperation *)self _fetchSubscriptionEntitlements:&v16];
  v13 = v16;
  if (!v13)
  {
    v14 = v12;

    v4 = v14;
  }

LABEL_19:
  (v3)[2](v3, v4, v13);
  [(SubscriptionEntitlementsOperation *)self setError:v13];
  [(SubscriptionEntitlementsOperation *)self setSubscriptionEntitlementsBlock:0];
  [(SubscriptionEntitlementsOperation *)self setSuccess:1];
}

- (id)_fetchSubscriptionEntitlements:(id *)a3
{
  v5 = objc_alloc_init(ISStoreURLOperation);
  [v5 setCanSendGUIDParameter:0];
  v6 = +[DaemonProtocolDataProvider provider];
  [v5 setDataProvider:v6];

  v7 = objc_alloc_init(SSMutableURLRequestProperties);
  [v7 setURLBagKey:@"fsEntitlementsSrv"];
  [v5 setRequestProperties:v7];
  v25 = 0;
  v8 = [(SubscriptionEntitlementsOperation *)self runSubOperation:v5 returningError:&v25];
  v9 = v25;
  v10 = [v5 response];
  objc_opt_class();
  objc_opt_class();
  v11 = 0;
  if (objc_opt_isKindOfClass())
  {
    v11 = [v5 response];
  }

  v12 = [v11 statusCode];
  if (v12 == 200)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    v14 = [v5 dataProvider];
    v15 = [v14 output];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = 0;
      goto LABEL_22;
    }

    v16 = [v15 objectForKey:@"status"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 integerValue])
    {
      v17 = [v15 objectForKey:@"errorNumber"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      [v18 integerValue];
      v19 = [v15 objectForKey:@"errorMessage"];
      v24 = SSError();

      v20 = 0;
      v9 = v24;
    }

    else
    {
      v17 = [v15 objectForKeyedSubscript:@"entitlements"];
      v20 = [SSVSubscriptionEntitlements _parseJSONDictionary:v17];
      [SSVSubscriptionEntitlementsCoordinator setCachedSubscriptionEntitlements:v17];
    }
  }

  else
  {
    if (v9)
    {
      v20 = 0;
      if (!a3)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v21 = v12;
    v16 = SSError();
    v15 = [NSNumber numberWithInteger:v21];
    v9 = SSErrorBySettingUserInfoValue();
    v20 = 0;
  }

LABEL_22:
  if (!a3)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (!v20)
  {
    v22 = v9;
    *a3 = v9;
  }

LABEL_25:

  return v20;
}

@end
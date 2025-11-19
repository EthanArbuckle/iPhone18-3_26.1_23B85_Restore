@interface PurchaseActionsManager
+ (id)sharedInstance;
+ (void)registerInstallAttributionDatabaseCleanTask;
+ (void)registerInstallAttributionPingbackRetryTask;
- (PurchaseActionsManager)init;
- (void)insertInstallAttributionParams:(id)a3 overrideCampaignLimit:(BOOL)a4 completionHandler:(id)a5;
- (void)removeInstallAttributionParamsBeforeDate:(id)a3;
- (void)sendPendingPingbacks;
- (void)setAppBundleIdForCurrentInstallSheet:(id)a3;
- (void)setPingbackPendingForApp:(id)a3;
@end

@implementation PurchaseActionsManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022D5EC;
  block[3] = &unk_100327170;
  block[4] = a1;
  if (qword_100384190 != -1)
  {
    dispatch_once(&qword_100384190, block);
  }

  v2 = qword_100384188;

  return v2;
}

- (PurchaseActionsManager)init
{
  v6.receiver = self;
  v6.super_class = PurchaseActionsManager;
  v2 = [(PurchaseActionsManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PurchaseActionsDatabase);
    database = v2->_database;
    v2->_database = v3;
  }

  return v2;
}

- (void)setAppBundleIdForCurrentInstallSheet:(id)a3
{
  v5 = a3;
  bundleIdForCurrentInstallSheet = self->_bundleIdForCurrentInstallSheet;
  p_bundleIdForCurrentInstallSheet = &self->_bundleIdForCurrentInstallSheet;
  v8 = v5;
  if (![(NSString *)bundleIdForCurrentInstallSheet isEqualToString:?])
  {
    objc_storeStrong(p_bundleIdForCurrentInstallSheet, a3);
  }
}

- (void)insertInstallAttributionParams:(id)a3 overrideCampaignLimit:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!a4)
  {
    v11 = objc_alloc_init(ISLoadURLBagOperation);
    v12 = +[ISOperationQueue mainQueue];
    v43 = v11;
    v13 = [NSArray arrayWithObjects:&v43 count:1];
    [v12 addOperations:v13 waitUntilFinished:1];

    if ([v11 success])
    {
      v14 = [v11 URLBag];
      v15 = [v14 valueForKey:@"install-attribution-max-campaign-id"];

      if (v15 && [v15 integerValue])
      {
        v10 = [v15 integerValue];
LABEL_19:

        goto LABEL_20;
      }

LABEL_18:
      v10 = 100;
      goto LABEL_19;
    }

    v15 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v37 = 138543362;
      v38 = objc_opt_class();
      v19 = v38;
      LODWORD(v34) = 12;
      v33 = &v37;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
        goto LABEL_18;
      }

      v18 = [NSString stringWithCString:v20 encoding:4, &v37, v34];
      free(v20);
      v33 = v18;
      SSFileLog();
    }

    goto LABEL_18;
  }

  v10 = 100;
LABEL_20:
  v21 = [v8 campaignId];
  v22 = [v21 integerValue];

  if (a4 || v22 <= v10 && v22 >= 1)
  {
    database = self->_database;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10022DBB4;
    v35[3] = &unk_10032CDD0;
    v36 = v9;
    [(PurchaseActionsDatabase *)database insertInstallAttributionParams:v8 completionHandler:v35];
    v24 = v36;
    goto LABEL_24;
  }

  v25 = +[SSLogConfig sharediTunesStoreConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  v26 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = v26 | 2;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v25 OSLogObject];
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v27 &= 2u;
  }

  if (!v27)
  {
    goto LABEL_36;
  }

  v29 = objc_opt_class();
  v37 = 138543874;
  v38 = v29;
  v39 = 2050;
  v40 = v22;
  v41 = 2050;
  v42 = v10;
  v30 = v29;
  LODWORD(v34) = 32;
  v31 = _os_log_send_and_compose_impl();

  if (v31)
  {
    v28 = [NSString stringWithCString:v31 encoding:4, &v37, v34];
    free(v31);
    SSFileLog();
LABEL_36:
  }

  if (!v9)
  {
    goto LABEL_25;
  }

  v32 = [NSString stringWithFormat:@"Campaign id must be between 0 and %li", v10];
  v24 = SSError();

  (*(v9 + 2))(v9, 0, v24);
LABEL_24:

LABEL_25:
}

- (void)removeInstallAttributionParamsBeforeDate:(id)a3
{
  v4 = a3;
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
    goto LABEL_11;
  }

  *v12 = 138543618;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2114;
  *&v12[14] = v4;
  v9 = *&v12[4];
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  [(PurchaseActionsDatabase *)self->_database removeInstallAttributionParamsBeforeDate:v4];
}

+ (void)registerInstallAttributionDatabaseCleanTask
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, 604800);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10022DF20;
  v5[3] = &unk_1003284E0;
  v6 = v3;
  v7 = a1;
  v4 = v3;
  xpc_activity_register("com.apple.itunesstored.PurchaseActionManager.IAParamsClean", XPC_ACTIVITY_CHECK_IN, v5);
}

- (void)setPingbackPendingForApp:(id)a3
{
  v4 = 1000000000;
  [(PurchaseActionsDatabase *)self->_database setPingbackPendingForApp:a3];
  if ((SSDebugShouldDisableInstallAttributionPingbackDelay() & 1) == 0)
  {
    v4 = 1000000000 * (arc4random_uniform(0x1C20u) + 1);
  }

  v5 = dispatch_time(0, v4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022E814;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
  +[PurchaseActionsManager registerInstallAttributionPingbackRetryTask];
}

- (void)sendPendingPingbacks
{
  v3 = objc_alloc_init(ISLoadURLBagOperation);
  v4 = +[ISOperationQueue mainQueue];
  v19 = v3;
  v5 = [NSArray arrayWithObjects:&v19 count:1];
  [v4 addOperations:v5 waitUntilFinished:1];

  if (![v3 success])
  {
    v7 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v9 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v7 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v12 = v18;
      LODWORD(v15) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_16:
        v8 = 10;
        goto LABEL_17;
      }

      v11 = [NSString stringWithCString:v13 encoding:4, &v17, v15];
      free(v13);
      SSFileLog();
    }

    goto LABEL_16;
  }

  v6 = [v3 URLBag];
  v7 = [v6 valueForKey:@"install-attribution-max-ping-back-attempts"];

  if (!v7 || ![v7 integerValue])
  {
    goto LABEL_16;
  }

  v8 = [v7 integerValue];
LABEL_17:

  database = self->_database;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10022EAC0;
  v16[3] = &unk_10032CE20;
  v16[4] = self;
  v16[5] = v8;
  [(PurchaseActionsDatabase *)database getPendingInstallAttributionPingbacksWithCompletionHandler:v16];
}

+ (void)registerInstallAttributionPingbackRetryTask
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, 86400);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_4_HOURS);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10022F2F8;
  v5[3] = &unk_1003284E0;
  v6 = v3;
  v7 = a1;
  v4 = v3;
  xpc_activity_register("com.apple.itunesstored.PurchaseActionManager.IAPingbackRetry", XPC_ACTIVITY_CHECK_IN, v5);
}

@end
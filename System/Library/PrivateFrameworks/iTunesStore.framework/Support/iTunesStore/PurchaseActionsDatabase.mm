@interface PurchaseActionsDatabase
+ (BOOL)_setupDatabase:(id)database;
- (PurchaseActionsDatabase)init;
- (PurchaseActionsDatabase)initWithDatabaseURL:(id)l readOnly:(BOOL)only;
- (void)deletePurchaseIntentsForApp:(id)app;
- (void)getInstallAttributionParamsForApp:(id)app completionHandler:(id)handler;
- (void)getInstallAttributionPingbackForApp:(id)app completionHandler:(id)handler;
- (void)getPendingInstallAttributionPingbacksWithCompletionHandler:(id)handler;
- (void)getPurchaseIntentsForApp:(id)app completionHandler:(id)handler;
- (void)incrementPingbackRetryCountForApp:(id)app;
- (void)insertInstallAttributionParams:(id)params completionHandler:(id)handler;
- (void)insertInstallAttributionPingback:(id)pingback;
- (void)insertPurchaseIntent:(id)intent;
- (void)modifyUsingTransactionBlock:(id)block;
- (void)readAsyncUsingTransactionBlock:(id)block;
- (void)readUsingTransactionBlock:(id)block;
- (void)removeInstallAttributionParamsBeforeDate:(id)date;
- (void)removeInstallAttributionParamsForApp:(id)app;
- (void)removeInstallAttributionPingbackForApp:(id)app;
- (void)removeNonPendingInstallAttributionPingbacksBeforeDate:(id)date;
- (void)resetTimestampsForApp:(id)app;
- (void)setPingbackPendingForApp:(id)app;
@end

@implementation PurchaseActionsDatabase

- (PurchaseActionsDatabase)init
{
  v3 = +[PurchaseActionsDatabaseSchema databasePath];
  v4 = [NSURL fileURLWithPath:v3 isDirectory:0];

  v5 = [(PurchaseActionsDatabase *)self initWithDatabaseURL:v4 readOnly:0];
  return v5;
}

- (PurchaseActionsDatabase)initWithDatabaseURL:(id)l readOnly:(BOOL)only
{
  onlyCopy = only;
  lCopy = l;
  v11.receiver = self;
  v11.super_class = PurchaseActionsDatabase;
  v7 = [(PurchaseActionsDatabase *)&v11 init];
  if (v7)
  {
    v8 = [[SSSQLiteDatabase alloc] initWithDatabaseURL:lCopy readOnly:onlyCopy protectionType:NSFileProtectionCompleteUntilFirstUserAuthentication];
    database = v7->_database;
    v7->_database = v8;

    if (!onlyCopy)
    {
      [(SSSQLiteDatabase *)v7->_database setSetupBlock:&stru_100329858];
    }
  }

  return v7;
}

- (void)modifyUsingTransactionBlock:(id)block
{
  blockCopy = block;
  database = self->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100138CFC;
  v7[3] = &unk_100327210;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v7];
}

- (void)readAsyncUsingTransactionBlock:(id)block
{
  blockCopy = block;
  database = self->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100138E08;
  v7[3] = &unk_1003271C0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(SSSQLiteDatabase *)database dispatchBlockAsync:v7];
}

- (void)readUsingTransactionBlock:(id)block
{
  blockCopy = block;
  database = self->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100138EAC;
  v7[3] = &unk_100327210;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v7];
}

- (void)deletePurchaseIntentsForApp:(id)app
{
  appCopy = app;
  v5 = appCopy;
  if (appCopy && [appCopy length])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100138FC0;
    v6[3] = &unk_1003298A8;
    v7 = v5;
    [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v6];
  }
}

- (void)getPurchaseIntentsForApp:(id)app completionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  if (appCopy && [appCopy length])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10013921C;
    v8[3] = &unk_100329920;
    v9 = appCopy;
    v10 = handlerCopy;
    [(PurchaseActionsDatabase *)self readAsyncUsingTransactionBlock:v8];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)insertPurchaseIntent:(id)intent
{
  intentCopy = intent;
  v5 = intentCopy;
  if (intentCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100139684;
    v6[3] = &unk_1003298A8;
    v7 = intentCopy;
    [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v6];
  }
}

- (void)resetTimestampsForApp:(id)app
{
  appCopy = app;
  if (appCopy)
  {
    v5 = +[NSDate date];
    [v5 timeIntervalSince1970];
    v7 = [NSNumber numberWithLongLong:v6];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100139ADC;
    v9[3] = &unk_100329998;
    v10 = appCopy;
    v11 = v7;
    v8 = v7;
    [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v9];
  }
}

- (void)insertInstallAttributionParams:(id)params completionHandler:(id)handler
{
  paramsCopy = params;
  handlerCopy = handler;
  if (paramsCopy)
  {
    *&v19 = 0;
    *(&v19 + 1) = &v19;
    v20 = 0x2020000000;
    v21 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013A3B8;
    v16[3] = &unk_1003299C0;
    v17 = paramsCopy;
    v18 = &v19;
    [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v16];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, *(*(&v19 + 1) + 24));
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      LODWORD(v19) = 138543362;
      *(&v19 + 4) = objc_opt_class();
      v12 = *(&v19 + 4);
      LODWORD(v15) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (v13)
      {
        v14 = [NSString stringWithCString:v13 encoding:4, &v19, v15];
        free(v13);
        SSFileLog();
      }
    }

    else
    {
    }
  }
}

- (void)getInstallAttributionParamsForApp:(id)app completionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  if (!appCopy)
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v18 = 138543362;
      v19 = objc_opt_class();
      v12 = v19;
      LODWORD(v14) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_14:

        handlerCopy[2](handlerCopy, 0);
        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4, &v18, v14];
      free(v13);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013A838;
  v15[3] = &unk_100329920;
  v16 = appCopy;
  v17 = handlerCopy;
  [(PurchaseActionsDatabase *)self readAsyncUsingTransactionBlock:v15];

LABEL_15:
}

- (void)removeInstallAttributionParamsForApp:(id)app
{
  appCopy = app;
  v5 = appCopy;
  if (!appCopy)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      LODWORD(v12) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013AE74;
  v13[3] = &unk_1003298A8;
  v14 = appCopy;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)removeInstallAttributionParamsBeforeDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (!dateCopy)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      LODWORD(v12) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013B1D0;
  v13[3] = &unk_1003298A8;
  v14 = dateCopy;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)insertInstallAttributionPingback:(id)pingback
{
  pingbackCopy = pingback;
  v5 = pingbackCopy;
  if (!pingbackCopy)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      LODWORD(v12) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013B538;
  v13[3] = &unk_1003298A8;
  v14 = pingbackCopy;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)getInstallAttributionPingbackForApp:(id)app completionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
  if (!appCopy)
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v18 = 138543362;
      v19 = objc_opt_class();
      v12 = v19;
      LODWORD(v14) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_14:

        handlerCopy[2](handlerCopy, 0);
        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4, &v18, v14];
      free(v13);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013BA44;
  v15[3] = &unk_100329920;
  v16 = appCopy;
  v17 = handlerCopy;
  [(PurchaseActionsDatabase *)self readAsyncUsingTransactionBlock:v15];

LABEL_15:
}

- (void)setPingbackPendingForApp:(id)app
{
  appCopy = app;
  v5 = appCopy;
  if (!appCopy)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      LODWORD(v12) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013C064;
  v13[3] = &unk_1003298A8;
  v14 = appCopy;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)getPendingInstallAttributionPingbacksWithCompletionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013C264;
  v5[3] = &unk_100329A10;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(PurchaseActionsDatabase *)self readAsyncUsingTransactionBlock:v5];
}

- (void)removeInstallAttributionPingbackForApp:(id)app
{
  appCopy = app;
  v5 = appCopy;
  if (!appCopy)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      LODWORD(v12) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013C868;
  v13[3] = &unk_1003298A8;
  v14 = appCopy;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)removeNonPendingInstallAttributionPingbacksBeforeDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (!dateCopy)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      LODWORD(v12) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013CBC4;
  v13[3] = &unk_1003298A8;
  v14 = dateCopy;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)incrementPingbackRetryCountForApp:(id)app
{
  appCopy = app;
  v5 = appCopy;
  if (!appCopy)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      LODWORD(v12) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013CF2C;
  v13[3] = &unk_1003298A8;
  v14 = appCopy;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

+ (BOOL)_setupDatabase:(id)database
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10013D170;
  v6[3] = &unk_100329A38;
  v8 = &v9;
  databaseCopy = database;
  v7 = databaseCopy;
  [databaseCopy performTransactionWithBlock:v6];
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

@end
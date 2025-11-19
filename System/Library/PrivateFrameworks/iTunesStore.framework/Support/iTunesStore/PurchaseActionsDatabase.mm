@interface PurchaseActionsDatabase
+ (BOOL)_setupDatabase:(id)a3;
- (PurchaseActionsDatabase)init;
- (PurchaseActionsDatabase)initWithDatabaseURL:(id)a3 readOnly:(BOOL)a4;
- (void)deletePurchaseIntentsForApp:(id)a3;
- (void)getInstallAttributionParamsForApp:(id)a3 completionHandler:(id)a4;
- (void)getInstallAttributionPingbackForApp:(id)a3 completionHandler:(id)a4;
- (void)getPendingInstallAttributionPingbacksWithCompletionHandler:(id)a3;
- (void)getPurchaseIntentsForApp:(id)a3 completionHandler:(id)a4;
- (void)incrementPingbackRetryCountForApp:(id)a3;
- (void)insertInstallAttributionParams:(id)a3 completionHandler:(id)a4;
- (void)insertInstallAttributionPingback:(id)a3;
- (void)insertPurchaseIntent:(id)a3;
- (void)modifyUsingTransactionBlock:(id)a3;
- (void)readAsyncUsingTransactionBlock:(id)a3;
- (void)readUsingTransactionBlock:(id)a3;
- (void)removeInstallAttributionParamsBeforeDate:(id)a3;
- (void)removeInstallAttributionParamsForApp:(id)a3;
- (void)removeInstallAttributionPingbackForApp:(id)a3;
- (void)removeNonPendingInstallAttributionPingbacksBeforeDate:(id)a3;
- (void)resetTimestampsForApp:(id)a3;
- (void)setPingbackPendingForApp:(id)a3;
@end

@implementation PurchaseActionsDatabase

- (PurchaseActionsDatabase)init
{
  v3 = +[PurchaseActionsDatabaseSchema databasePath];
  v4 = [NSURL fileURLWithPath:v3 isDirectory:0];

  v5 = [(PurchaseActionsDatabase *)self initWithDatabaseURL:v4 readOnly:0];
  return v5;
}

- (PurchaseActionsDatabase)initWithDatabaseURL:(id)a3 readOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PurchaseActionsDatabase;
  v7 = [(PurchaseActionsDatabase *)&v11 init];
  if (v7)
  {
    v8 = [[SSSQLiteDatabase alloc] initWithDatabaseURL:v6 readOnly:v4 protectionType:NSFileProtectionCompleteUntilFirstUserAuthentication];
    database = v7->_database;
    v7->_database = v8;

    if (!v4)
    {
      [(SSSQLiteDatabase *)v7->_database setSetupBlock:&stru_100329858];
    }
  }

  return v7;
}

- (void)modifyUsingTransactionBlock:(id)a3
{
  v4 = a3;
  database = self->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100138CFC;
  v7[3] = &unk_100327210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v7];
}

- (void)readAsyncUsingTransactionBlock:(id)a3
{
  v4 = a3;
  database = self->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100138E08;
  v7[3] = &unk_1003271C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SSSQLiteDatabase *)database dispatchBlockAsync:v7];
}

- (void)readUsingTransactionBlock:(id)a3
{
  v4 = a3;
  database = self->_database;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100138EAC;
  v7[3] = &unk_100327210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SSSQLiteDatabase *)database performTransactionWithBlock:v7];
}

- (void)deletePurchaseIntentsForApp:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100138FC0;
    v6[3] = &unk_1003298A8;
    v7 = v5;
    [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v6];
  }
}

- (void)getPurchaseIntentsForApp:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10013921C;
    v8[3] = &unk_100329920;
    v9 = v6;
    v10 = v7;
    [(PurchaseActionsDatabase *)self readAsyncUsingTransactionBlock:v8];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (void)insertPurchaseIntent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100139684;
    v6[3] = &unk_1003298A8;
    v7 = v4;
    [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v6];
  }
}

- (void)resetTimestampsForApp:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[NSDate date];
    [v5 timeIntervalSince1970];
    v7 = [NSNumber numberWithLongLong:v6];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100139ADC;
    v9[3] = &unk_100329998;
    v10 = v4;
    v11 = v7;
    v8 = v7;
    [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v9];
  }
}

- (void)insertInstallAttributionParams:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    *&v19 = 0;
    *(&v19 + 1) = &v19;
    v20 = 0x2020000000;
    v21 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013A3B8;
    v16[3] = &unk_1003299C0;
    v17 = v6;
    v18 = &v19;
    [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v16];
    if (v7)
    {
      v7[2](v7, *(*(&v19 + 1) + 24));
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

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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

- (void)getInstallAttributionParamsForApp:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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

        v7[2](v7, 0);
        goto LABEL_15;
      }

      v11 = [NSString stringWithCString:v13 encoding:4, &v18, v14];
      free(v13);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013A838;
  v15[3] = &unk_100329920;
  v16 = v6;
  v17 = v7;
  [(PurchaseActionsDatabase *)self readAsyncUsingTransactionBlock:v15];

LABEL_15:
}

- (void)removeInstallAttributionParamsForApp:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

      v9 = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013AE74;
  v13[3] = &unk_1003298A8;
  v14 = v4;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)removeInstallAttributionParamsBeforeDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

      v9 = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013B1D0;
  v13[3] = &unk_1003298A8;
  v14 = v4;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)insertInstallAttributionPingback:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

      v9 = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013B538;
  v13[3] = &unk_1003298A8;
  v14 = v4;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)getInstallAttributionPingbackForApp:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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

        v7[2](v7, 0);
        goto LABEL_15;
      }

      v11 = [NSString stringWithCString:v13 encoding:4, &v18, v14];
      free(v13);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013BA44;
  v15[3] = &unk_100329920;
  v16 = v6;
  v17 = v7;
  [(PurchaseActionsDatabase *)self readAsyncUsingTransactionBlock:v15];

LABEL_15:
}

- (void)setPingbackPendingForApp:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

      v9 = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013C064;
  v13[3] = &unk_1003298A8;
  v14 = v4;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)getPendingInstallAttributionPingbacksWithCompletionHandler:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013C264;
  v5[3] = &unk_100329A10;
  v6 = a3;
  v4 = v6;
  [(PurchaseActionsDatabase *)self readAsyncUsingTransactionBlock:v5];
}

- (void)removeInstallAttributionPingbackForApp:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

      v9 = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013C868;
  v13[3] = &unk_1003298A8;
  v14 = v4;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)removeNonPendingInstallAttributionPingbacksBeforeDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

      v9 = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013CBC4;
  v13[3] = &unk_1003298A8;
  v14 = v4;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

- (void)incrementPingbackRetryCountForApp:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

      v9 = [NSString stringWithCString:v11 encoding:4, &v15, v12];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013CF2C;
  v13[3] = &unk_1003298A8;
  v14 = v4;
  [(PurchaseActionsDatabase *)self modifyUsingTransactionBlock:v13];
  v6 = v14;
LABEL_14:
}

+ (BOOL)_setupDatabase:(id)a3
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
  v3 = a3;
  v7 = v3;
  [v3 performTransactionWithBlock:v6];
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

@end
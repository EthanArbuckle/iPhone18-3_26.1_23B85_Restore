@interface CancelPreordersOperation
- (BOOL)_cancelPreorderWithOperation:(id)a3 error:(id *)a4;
- (id)_newURLOperationWithItemID:(id)a3 accountID:(id)a4;
- (void)run;
@end

@implementation CancelPreordersOperation

- (void)run
{
  v3 = +[DownloadsDatabase downloadsDatabase];
  v4 = objc_alloc_init(NSMutableDictionary);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001818DC;
  v21[3] = &unk_100327EE8;
  v21[4] = self;
  v21[5] = v4;
  [v3 readUsingTransactionBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    v14 = 1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_alloc_init(NSAutoreleasePool);
        v12 = [v4 objectForKey:v10];
        v16 = 0;
        if ([(CancelPreordersOperation *)self _cancelPreorderWithOperation:v12 error:&v16])
        {
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_100181A74;
          v15[3] = &unk_100329E90;
          v15[4] = v10;
          [v3 modifyUsingTransactionBlock:v15];
        }

        else
        {
          if (!v7)
          {
            v7 = v16;
          }

          v14 = 0;
        }

        [v11 drain];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v14 = 1;
  }

  v13 = v7;
  [(CancelPreordersOperation *)self setError:v7];
  [(CancelPreordersOperation *)self setSuccess:v14 & 1];
}

- (BOOL)_cancelPreorderWithOperation:(id)a3 error:(id *)a4
{
  v25 = 0;
  LODWORD(v6) = [(CancelPreordersOperation *)self runSubOperation:a3 returningError:&v25];
  if (v6)
  {
    v7 = [objc_msgSend(a3 "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKey:kISFailureTypeKey];
      if (v8)
      {
        v9 = v8;
        v10 = +[SSLogConfig sharedDaemonConfig];
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        v11 = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          v12 = v11 | 2;
        }

        else
        {
          v12 = v11;
        }

        if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v12 &= 2u;
        }

        if (v12)
        {
          v13 = objc_opt_class();
          v26 = 138412546;
          v27 = v13;
          v28 = 2112;
          v29 = v9;
          LODWORD(v24) = 22;
          v14 = _os_log_send_and_compose_impl();
          if (v14)
          {
            v15 = v14;
            [NSString stringWithCString:v14 encoding:4, &v26, v24];
            free(v15);
            SSFileLog();
          }
        }

        if (objc_opt_respondsToSelector())
        {
          [v9 intValue];
        }

        v22 = SSError();
        LOBYTE(v6) = 0;
        v25 = v22;
      }

      else
      {
        LOBYTE(v6) = 1;
      }
    }

    else
    {
      v16 = +[SSLogConfig sharedDaemonConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      v17 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v18 = v17 | 2;
      }

      else
      {
        v18 = v17;
      }

      if (!os_log_type_enabled([v16 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v19 = objc_opt_class();
        v20 = objc_opt_class();
        v26 = 138412546;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        LODWORD(v24) = 22;
        v6 = _os_log_send_and_compose_impl();
        if (!v6)
        {
          goto LABEL_29;
        }

        v21 = v6;
        [NSString stringWithCString:v6 encoding:4, &v26, v24];
        free(v21);
        SSFileLog();
      }

      LOBYTE(v6) = 0;
    }
  }

LABEL_29:
  if (a4)
  {
    *a4 = v25;
  }

  return v6;
}

- (id)_newURLOperationWithItemID:(id)a3 accountID:(id)a4
{
  v6 = objc_alloc_init(ISStoreURLOperation);
  [v6 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v6 setNeedsAuthentication:1];
  v7 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:a4];
  [v6 setAuthenticationContext:v7];

  v8 = objc_alloc_init(SSMutableURLRequestProperties);
  [v8 setURLBagKey:@"p2-cancel-pre-order"];
  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:objc_msgSend(a3 forKey:{"stringValue"), @"id"}];
  [v8 setRequestParameters:v9];

  [v6 setRequestProperties:v8];
  return v6;
}

@end
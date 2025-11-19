@interface LoadPreorderQueueOperation
- (LoadPreorderQueueOperation)initWithAccountIdentifier:(id)a3;
- (NSArray)preorderItems;
- (NSNumber)accountIdentifier;
- (id)_newURLOperation;
- (void)dealloc;
- (void)run;
@end

@implementation LoadPreorderQueueOperation

- (LoadPreorderQueueOperation)initWithAccountIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = LoadPreorderQueueOperation;
  v4 = [(LoadPreorderQueueOperation *)&v6 init];
  if (v4)
  {
    v4->_accountID = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadPreorderQueueOperation;
  [(LoadPreorderQueueOperation *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountID;

  return v2;
}

- (NSArray)preorderItems
{
  [(LoadPreorderQueueOperation *)self lock];
  v3 = self->_items;
  [(LoadPreorderQueueOperation *)self unlock];
  return v3;
}

- (void)run
{
  v3 = [(LoadPreorderQueueOperation *)self _newURLOperation];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if (os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 & 2;
  }

  if (v7)
  {
    v49 = 138412290;
    v50 = objc_opt_class();
    LODWORD(v41) = 12;
    v39 = &v49;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4, &v49, v41];
      free(v9);
      v39 = v10;
      SSFileLog();
    }
  }

  v47 = 0;
  v11 = [(LoadPreorderQueueOperation *)self runSubOperation:v3 returningError:&v47, v39];
  if (v11)
  {
    v12 = [objc_msgSend(v3 "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 objectForKey:@"items"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = v3;
        v14 = objc_alloc_init(NSMutableArray);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v15 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v44;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v44 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v43 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = [[SSItem alloc] initWithItemDictionary:v19];
                if (v20)
                {
                  v21 = v20;
                  [v14 addObject:v20];
                }
              }
            }

            v16 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
          }

          while (v16);
        }

        v22 = +[SSLogConfig sharedDaemonConfig];
        if (!v22)
        {
          v22 = +[SSLogConfig sharedConfig];
        }

        v23 = [v22 shouldLog];
        if ([v22 shouldLogToDisk])
        {
          v24 = v23 | 2;
        }

        else
        {
          v24 = v23;
        }

        if (os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 2;
        }

        if (v25)
        {
          v26 = objc_opt_class();
          v27 = [v14 count];
          v49 = 138412546;
          v50 = v26;
          v51 = 2048;
          v52 = v27;
          LODWORD(v41) = 22;
          v40 = &v49;
          v28 = _os_log_send_and_compose_impl();
          if (v28)
          {
            v29 = v28;
            v30 = [NSString stringWithCString:v28 encoding:4, &v49, v41];
            free(v29);
            v40 = v30;
            SSFileLog();
          }
        }

        [(LoadPreorderQueueOperation *)self lock];

        self->_items = [v14 copy];
        [(LoadPreorderQueueOperation *)self unlock];

        v3 = v42;
      }
    }
  }

  else
  {
    v31 = +[SSLogConfig sharedDaemonConfig];
    if (!v31)
    {
      v31 = +[SSLogConfig sharedConfig];
    }

    v32 = [v31 shouldLog];
    if ([v31 shouldLogToDisk])
    {
      v33 = v32 | 2;
    }

    else
    {
      v33 = v32;
    }

    if (os_log_type_enabled([v31 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 2;
    }

    if (v34)
    {
      v35 = objc_opt_class();
      v49 = 138412546;
      v50 = v35;
      v51 = 2112;
      v52 = v47;
      LODWORD(v41) = 22;
      v40 = &v49;
      v36 = _os_log_send_and_compose_impl();
      if (v36)
      {
        v37 = v36;
        v38 = [NSString stringWithCString:v36 encoding:4, &v49, v41];
        free(v37);
        v40 = v38;
        SSFileLog();
      }
    }
  }

  [(LoadPreorderQueueOperation *)self setError:v47, v40];
  [(LoadPreorderQueueOperation *)self setSuccess:v11];
}

- (id)_newURLOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setNeedsAuthentication:1];
  v4 = objc_alloc_init(DaemonProtocolDataProvider);
  [v3 setDataProvider:v4];

  v5 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:self->_accountID];
  [v3 setAuthenticationContext:v5];

  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setCachePolicy:1];
  [v6 setURLBagKey:@"p2-pre-order-queue"];
  [v3 setRequestProperties:v6];

  return v3;
}

@end
@interface PurchaseHistoryOperation
- (NSArray)purchaseHistoryItems;
- (NSArray)purchasedItems;
- (PurchaseHistoryOperation)initWithPurchaseHistoryItems:(id)items authenticationContext:(id)context;
- (SSAuthenticationContext)authenticationContext;
- (id)_newURLOperation;
- (void)_setOutputItemsWithMapping:(id)mapping;
- (void)dealloc;
- (void)run;
@end

@implementation PurchaseHistoryOperation

- (PurchaseHistoryOperation)initWithPurchaseHistoryItems:(id)items authenticationContext:(id)context
{
  v8.receiver = self;
  v8.super_class = PurchaseHistoryOperation;
  v6 = [(PurchaseHistoryOperation *)&v8 init];
  if (v6)
  {
    v6->_authenticationContext = [context copy];
    v6->_inputItems = [items copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PurchaseHistoryOperation;
  [(PurchaseHistoryOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  v2 = self->_authenticationContext;

  return v2;
}

- (NSArray)purchasedItems
{
  [(PurchaseHistoryOperation *)self lock];
  v3 = self->_outputItems;
  [(PurchaseHistoryOperation *)self unlock];
  return v3;
}

- (NSArray)purchaseHistoryItems
{
  v2 = self->_inputItems;

  return v2;
}

- (void)run
{
  _newURLOperation = [(PurchaseHistoryOperation *)self _newURLOperation];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [(NSArray *)self->_inputItems count];
    *v17 = 138412546;
    *&v17[4] = v7;
    v18 = 2048;
    v19 = v8;
    LODWORD(v16) = 22;
    v15 = v17;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4, v17, v16];
      free(v10);
      v15 = v11;
      SSFileLog();
    }
  }

  *v17 = 0;
  v12 = [(PurchaseHistoryOperation *)self runSubOperation:_newURLOperation returningError:v17, v15];
  if (v12)
  {
    v13 = [objc_msgSend(_newURLOperation "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 objectForKey:@"ownsCheck"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PurchaseHistoryOperation *)self _setOutputItemsWithMapping:v14];
      }
    }
  }

  [(PurchaseHistoryOperation *)self setError:*v17];
  [(PurchaseHistoryOperation *)self setSuccess:v12];
}

- (id)_newURLOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v3 setAuthenticationContext:self->_authenticationContext];
  [v3 setNeedsAuthentication:1];
  v4 = objc_alloc_init(SSMutableURLRequestProperties);
  [v4 setClientIdentifier:{-[SSAuthenticationContext clientIdentifierHeader](self->_authenticationContext, "clientIdentifierHeader")}];
  [v4 setURLBagKey:@"bundle-owns-check"];
  hTTPHeaders = [(SSAuthenticationContext *)self->_authenticationContext HTTPHeaders];
  [v4 setValue:objc_msgSend(hTTPHeaders forHTTPHeaderField:{"objectForKey:", SSHTTPHeaderUserAgent), SSHTTPHeaderUserAgent}];
  [v4 setValue:-[ISDevice guid](+[ISDevice sharedInstance](ISDevice forRequestParameter:{"sharedInstance"), "guid"), @"guid"}];
  v6 = objc_alloc_init(NSMutableString);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  inputItems = self->_inputItems;
  v8 = [(NSArray *)inputItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    v11 = SSPurchaseHistoryPropertyBundleIdentifier;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(inputItems);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) valueForProperty:v11];
        if ([v13 length])
        {
          if ([v6 length])
          {
            [v6 appendString:{@", "}];
          }

          [v6 appendString:v13];
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [(NSArray *)inputItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [v4 setValue:v6 forRequestParameter:@"bids"];

  [v3 setRequestProperties:v4];
  return v3;
}

- (void)_setOutputItemsWithMapping:(id)mapping
{
  v24 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [mapping countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v7 = SSPurchaseHistoryPropertyBundleIdentifier;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(mapping);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [mapping objectForKey:v9];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v10 BOOLValue])
        {
          v11 = objc_alloc_init(SSPurchaseHistoryItem);
          [v11 setValue:v9 forProperty:v7];
          [v24 addObject:v11];
        }
      }

      v5 = [mapping countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v5);
  }

  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = shouldLog | 2;
  }

  else
  {
    v14 = shouldLog;
  }

  if (os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 & 2;
  }

  if (v15)
  {
    v16 = objc_opt_class();
    v17 = [v24 count];
    v29 = 138412546;
    v30 = v16;
    v31 = 2048;
    v32 = v17;
    LODWORD(v22) = 22;
    v21 = &v29;
    v18 = _os_log_send_and_compose_impl();
    if (v18)
    {
      v19 = v18;
      v20 = [NSString stringWithCString:v18 encoding:4, &v29, v22];
      free(v19);
      v21 = v20;
      SSFileLog();
    }
  }

  [(PurchaseHistoryOperation *)self lock];

  self->_outputItems = [v24 copy];
  [(PurchaseHistoryOperation *)self unlock];
}

@end
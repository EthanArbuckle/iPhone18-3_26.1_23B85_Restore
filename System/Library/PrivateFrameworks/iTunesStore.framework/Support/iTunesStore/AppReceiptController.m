@interface AppReceiptController
+ (BOOL)connectionHasEntitlement:(id)a3;
+ (id)sharedController;
+ (void)getApplicationReceiptPathWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)refreshAllReceipts:(id)a3 connection:(id)a4;
+ (void)refreshAppReceipt:(id)a3 connection:(id)a4;
- (AppReceiptController)init;
- (id)_operationQueue;
- (void)_addOperation:(id)a3;
- (void)_dispatchAsync:(id)a3;
- (void)dealloc;
@end

@implementation AppReceiptController

- (AppReceiptController)init
{
  v6.receiver = self;
  v6.super_class = AppReceiptController;
  v2 = [(AppReceiptController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.AppReceiptController", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_operationQueue)
  {
    v3 = +[Daemon daemon];
    [v3 removeKeepAliveOperationQueue:self->_operationQueue];

    [(ISOperationQueue *)self->_operationQueue cancelAllOperations];
  }

  v4.receiver = self;
  v4.super_class = AppReceiptController;
  [(AppReceiptController *)&v4 dealloc];
}

+ (BOOL)connectionHasEntitlement:(id)a3
{
  v3 = a3;
  HasEntitlement = SSXPCConnectionHasEntitlement();
  if ((HasEntitlement & 1) == 0)
  {
    v5 = SSXPCConnectionCopyClientIdentifier();
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
      *v14 = 138412546;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2112;
      *&v14[14] = v5;
      v10 = *&v14[4];
      LODWORD(v13) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = [NSString stringWithCString:v11 encoding:4, v14, v13, *v14, *&v14[16]];
      free(v11);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  return HasEntitlement;
}

+ (void)getApplicationReceiptPathWithMessage:(id)a3 connection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001DFD7C;
  v10[3] = &unk_100327238;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

+ (void)observeXPCServer:(id)a3
{
  v4 = a3;
  [v4 addObserver:a1 selector:"getApplicationReceiptPathWithMessage:connection:" forMessage:700];
  [v4 addObserver:a1 selector:"refreshAllReceipts:connection:" forMessage:117];
  [v4 addObserver:a1 selector:"refreshAppReceipt:connection:" forMessage:10011];
}

+ (void)refreshAllReceipts:(id)a3 connection:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() connectionHasEntitlement:v4];

  if (v5)
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
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      LODWORD(v13) = 138412290;
      *(&v13 + 4) = objc_opt_class();
      v10 = *(&v13 + 4);
      LODWORD(v12) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_13:

        return;
      }

      v9 = [NSString stringWithCString:v11 encoding:4, &v13, v12, v13];
      free(v11);
      SSFileLog();
    }

    goto LABEL_13;
  }
}

+ (void)refreshAppReceipt:(id)a3 connection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (xpc_dictionary_get_BOOL(v5, "3"))
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  if (xpc_dictionary_get_BOOL(v5, "2"))
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = xpc_dictionary_get_BOOL(v5, "1");
  if ((SSXPCConnectionHasEntitlement() & 1) != 0 || SSXPCConnectionHasEntitlement())
  {
    v10 = objc_alloc(sub_1001FA240());
    v11 = xpc_dictionary_get_value(v5, "4");
    v12 = [v10 initWithXPCEncoding:v11];

    if (v12)
    {
      v13 = [v12 storeExternalVersion];
      if (v13 && (v14 = v13, [v12 storeItemIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
      {
        v16 = 0;
      }

      else
      {
        v16 = v8 | v9 | 4;
      }

      v18 = [[XPCClient alloc] initWithInputConnection:v6];
      v24 = [(XPCClient *)v18 clientIdentifier];
      v25 = +[AppReceiptController sharedController];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1001E04FC;
      v29[3] = &unk_10032BE28;
      v30 = v12;
      v31 = v24;
      v35 = v16;
      v32 = v5;
      v33 = v6;
      v34 = v25;
      v26 = v25;
      v27 = v24;
      v17 = v12;
      [v26 _dispatchAsync:v29];

      goto LABEL_27;
    }
  }

  v17 = SSXPCConnectionCopyClientIdentifier();
  if ([v17 length])
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [(XPCClient *)v18 shouldLog];
    if ([(XPCClient *)v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [(XPCClient *)v18 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v36 = 138412546;
      v37 = objc_opt_class();
      v38 = 2112;
      v39 = v17;
      v22 = v37;
      LODWORD(v28) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_27:

        goto LABEL_28;
      }

      v21 = [NSString stringWithCString:v23 encoding:4, &v36, v28];
      free(v23);
      SSFileLog();
    }

    goto LABEL_27;
  }

LABEL_28:
}

+ (id)sharedController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E06E8;
  block[3] = &unk_100327170;
  block[4] = a1;
  if (qword_1003840C8 != -1)
  {
    dispatch_once(&qword_1003840C8, block);
  }

  v2 = qword_1003840C0;

  return v2;
}

- (void)_addOperation:(id)a3
{
  v4 = a3;
  objc_setAssociatedObject(v4, "com.apple.itunesstore.AppReceiptController.self", self, 0x301);
  v5 = [(AppReceiptController *)self _operationQueue];
  [v5 addOperation:v4];
}

- (void)_dispatchAsync:(id)a3
{
  v4 = a3;
  v5 = +[Daemon daemon];
  [v5 takeKeepAliveAssertion:@"com.apple.itunesstored.ReceiptRevocation"];

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E0864;
  block[3] = &unk_100327198;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, block);
}

- (id)_operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(ISOperationQueue);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(ISOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
    v6 = +[Daemon daemon];
    [v6 addKeepAliveOperationQueue:self->_operationQueue];

    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

@end
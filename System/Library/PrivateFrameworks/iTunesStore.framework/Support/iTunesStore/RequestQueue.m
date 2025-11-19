@interface RequestQueue
- (ISOperationQueue)operationQueue;
- (RequestQueue)init;
- (id)operationForConnection:(id)a3;
- (void)addOperation:(id)a3;
- (void)addOperation:(id)a3 forClient:(id)a4 withMessageBlock:(id)a5;
- (void)addOperation:(id)a3 forMessage:(id)a4 connection:(id)a5 replyBlock:(id)a6;
- (void)cancelOperationForConnection:(id)a3;
- (void)dealloc;
- (void)disconnectOperationForConnection:(id)a3;
- (void)observeXPCServer:(id)a3;
- (void)setOperationQueue:(id)a3;
@end

@implementation RequestQueue

- (RequestQueue)init
{
  v5.receiver = self;
  v5.super_class = RequestQueue;
  v2 = [(RequestQueue *)&v5 init];
  if (v2)
  {
    v3 = [[NSString alloc] initWithFormat:@"com.apple.itunesstored.%@.%p", objc_opt_class(), v2];
    v2->_dispatchQueue = dispatch_queue_create([v3 UTF8String], 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = RequestQueue;
  [(RequestQueue *)&v4 dealloc];
}

- (void)addOperation:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E7470;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)addOperation:(id)a3 forClient:(id)a4 withMessageBlock:(id)a5
{
  objc_setAssociatedObject(a3, "com.apple.itunesstored.RequestQueue.client", a4, 0x301);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E756C;
  v8[3] = &unk_1003289F0;
  v8[4] = a3;
  v8[5] = a5;
  [a3 setCompletionBlock:v8];
  [(RequestQueue *)self addOperation:a3];
}

- (void)addOperation:(id)a3 forMessage:(id)a4 connection:(id)a5 replyBlock:(id)a6
{
  xpc_retain(a5);
  xpc_retain(a4);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E7704;
  v12[3] = &unk_100328A18;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  [a3 setCompletionBlock:v12];
  v11 = [[XPCClient alloc] initWithInputConnection:a5];
  objc_setAssociatedObject(a3, "com.apple.itunesstored.RequestQueue.client", v11, 0x301);
  [(RequestQueue *)self addOperation:a3];
}

- (void)cancelOperationForConnection:(id)a3
{
  v3 = [(RequestQueue *)self operationForConnection:a3];
  if (v3)
  {
    v4 = v3;
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

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2112;
      v14 = v4;
      LODWORD(v10) = 22;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        [NSString stringWithCString:v8 encoding:4, &v11, v10];
        free(v9);
        SSFileLog();
      }
    }

    objc_setAssociatedObject(v4, "com.apple.itunesstored.RequestQueue.client", 0, 0x301);
    [v4 cancel];
  }
}

- (void)disconnectOperationForConnection:(id)a3
{
  v3 = [(RequestQueue *)self operationForConnection:a3];
  if (v3)
  {
    v4 = v3;
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

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2112;
      v14 = v4;
      LODWORD(v10) = 22;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        [NSString stringWithCString:v8 encoding:4, &v11, v10];
        free(v9);
        SSFileLog();
      }
    }

    objc_setAssociatedObject(v4, "com.apple.itunesstored.RequestQueue.client", 0, 0x301);
  }
}

- (void)observeXPCServer:(id)a3
{
  [a3 addObserver:self selector:"_cancelRequest:connection:" forMessage:63];

  [a3 addObserver:self selector:"_disconnectRequest:connection:" forMessage:64];
}

- (id)operationForConnection:(id)a3
{
  v4 = [(RequestQueue *)self operationQueue];
  if (!v4)
  {
    v4 = +[ISOperationQueue mainQueue];
  }

  v5 = [(ISOperationQueue *)v4 operations];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v15;
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (*v15 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v14 + 1) + 8 * v9);
    AssociatedObject = objc_getAssociatedObject(v10, "com.apple.itunesstored.RequestQueue.client");
    if (AssociatedObject)
    {
      v12 = [AssociatedObject copyInputConnection];
      xpc_release(v12);
      if (v12 == a3)
      {
        return v10;
      }
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        goto LABEL_5;
      }

      return 0;
    }
  }
}

- (ISOperationQueue)operationQueue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_1000E7D4C;
  v10 = sub_1000E7D5C;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E7D68;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setOperationQueue:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E7E28;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

@end
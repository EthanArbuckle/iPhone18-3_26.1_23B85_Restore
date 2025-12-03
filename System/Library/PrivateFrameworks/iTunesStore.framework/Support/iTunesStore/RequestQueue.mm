@interface RequestQueue
- (ISOperationQueue)operationQueue;
- (RequestQueue)init;
- (id)operationForConnection:(id)connection;
- (void)addOperation:(id)operation;
- (void)addOperation:(id)operation forClient:(id)client withMessageBlock:(id)block;
- (void)addOperation:(id)operation forMessage:(id)message connection:(id)connection replyBlock:(id)block;
- (void)cancelOperationForConnection:(id)connection;
- (void)dealloc;
- (void)disconnectOperationForConnection:(id)connection;
- (void)observeXPCServer:(id)server;
- (void)setOperationQueue:(id)queue;
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

- (void)addOperation:(id)operation
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E7470;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = operation;
  dispatch_async(dispatchQueue, v4);
}

- (void)addOperation:(id)operation forClient:(id)client withMessageBlock:(id)block
{
  objc_setAssociatedObject(operation, "com.apple.itunesstored.RequestQueue.client", client, 0x301);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E756C;
  v8[3] = &unk_1003289F0;
  v8[4] = operation;
  v8[5] = block;
  [operation setCompletionBlock:v8];
  [(RequestQueue *)self addOperation:operation];
}

- (void)addOperation:(id)operation forMessage:(id)message connection:(id)connection replyBlock:(id)block
{
  xpc_retain(connection);
  xpc_retain(message);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E7704;
  v12[3] = &unk_100328A18;
  v12[4] = operation;
  v12[5] = message;
  v12[6] = connection;
  v12[7] = block;
  [operation setCompletionBlock:v12];
  v11 = [[XPCClient alloc] initWithInputConnection:connection];
  objc_setAssociatedObject(operation, "com.apple.itunesstored.RequestQueue.client", v11, 0x301);
  [(RequestQueue *)self addOperation:operation];
}

- (void)cancelOperationForConnection:(id)connection
{
  v3 = [(RequestQueue *)self operationForConnection:connection];
  if (v3)
  {
    v4 = v3;
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
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

- (void)disconnectOperationForConnection:(id)connection
{
  v3 = [(RequestQueue *)self operationForConnection:connection];
  if (v3)
  {
    v4 = v3;
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
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

- (void)observeXPCServer:(id)server
{
  [server addObserver:self selector:"_cancelRequest:connection:" forMessage:63];

  [server addObserver:self selector:"_disconnectRequest:connection:" forMessage:64];
}

- (id)operationForConnection:(id)connection
{
  operationQueue = [(RequestQueue *)self operationQueue];
  if (!operationQueue)
  {
    operationQueue = +[ISOperationQueue mainQueue];
  }

  operations = [(ISOperationQueue *)operationQueue operations];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [operations countByEnumeratingWithState:&v14 objects:v18 count:16];
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
      objc_enumerationMutation(operations);
    }

    v10 = *(*(&v14 + 1) + 8 * v9);
    AssociatedObject = objc_getAssociatedObject(v10, "com.apple.itunesstored.RequestQueue.client");
    if (AssociatedObject)
    {
      copyInputConnection = [AssociatedObject copyInputConnection];
      xpc_release(copyInputConnection);
      if (copyInputConnection == connection)
      {
        return v10;
      }
    }

    if (v7 == ++v9)
    {
      v7 = [operations countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setOperationQueue:(id)queue
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E7E28;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = queue;
  dispatch_sync(dispatchQueue, v4);
}

@end
@interface ErrorHandlerManager
+ (id)errorHandlerManager;
+ (void)connectHandlerWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)resolveSessionWithMessage:(id)a3 connection:(id)a4;
- (ErrorHandlerManager)init;
- (id)_clientForConnection:(id)a3;
- (void)_clientDisconnectNotification:(id)a3;
- (void)_connectHandlerWithMessage:(id)a3 connection:(id)a4;
- (void)_handleMessage:(id)a3 connection:(id)a4 withBlock:(id)a5;
- (void)_handleMessage:(id)a3 connection:(id)a4 withReplyBlock:(id)a5;
- (void)_resolveSessionWithMessage:(id)a3 connection:(id)a4;
- (void)dealloc;
- (void)openSession:(id)a3 withCompletionBlock:(id)a4;
@end

@implementation ErrorHandlerManager

- (ErrorHandlerManager)init
{
  v6.receiver = self;
  v6.super_class = ErrorHandlerManager;
  v2 = [(ErrorHandlerManager *)&v6 init];
  if (v2)
  {
    v3 = [[NSString alloc] initWithFormat:@"com.apple.itunesstored.ErrorHandlerManager.%p", v2];
    v2->_dispatchQueue = dispatch_queue_create([v3 UTF8String], 0);

    v4 = [[NSString alloc] initWithFormat:@"com.apple.itunesstored.ErrorHandlerManager.completion.%p", v2];
    v2->_completionQueue = dispatch_queue_create([v4 UTF8String], 0);

    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"_clientDisconnectNotification:" object:@"XPCClientDisconnectNotification", 0];
  }

  return v2;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"XPCClientDisconnectNotification", 0];
  completionQueue = self->_completionQueue;
  if (completionQueue)
  {
    dispatch_release(completionQueue);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v5.receiver = self;
  v5.super_class = ErrorHandlerManager;
  [(ErrorHandlerManager *)&v5 dealloc];
}

+ (id)errorHandlerManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020D0F8;
  block[3] = &unk_100327378;
  block[4] = a1;
  if (qword_100384160 != -1)
  {
    dispatch_once(&qword_100384160, block);
  }

  return qword_100384158;
}

- (void)openSession:(id)a3 withCompletionBlock:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020D198;
  block[3] = &unk_10032AF90;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(dispatchQueue, block);
}

+ (void)observeXPCServer:(id)a3
{
  [a3 addObserver:a1 selector:"connectHandlerWithMessage:connection:" forMessage:96];

  [a3 addObserver:a1 selector:"resolveSessionWithMessage:connection:" forMessage:97];
}

+ (void)connectHandlerWithMessage:(id)a3 connection:(id)a4
{
  v6 = [a1 errorHandlerManager];

  [v6 _connectHandlerWithMessage:a3 connection:a4];
}

+ (void)resolveSessionWithMessage:(id)a3 connection:(id)a4
{
  v6 = [a1 errorHandlerManager];

  [v6 _resolveSessionWithMessage:a3 connection:a4];
}

- (void)_clientDisconnectNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10020D6B0;
  v4[3] = &unk_100327350;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(dispatchQueue, v4);
}

- (id)_clientForConnection:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  clients = self->_clients;
  v5 = [(NSMutableArray *)clients countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v15;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v15 != v7)
    {
      objc_enumerationMutation(clients);
    }

    v9 = *(*(&v14 + 1) + 8 * v8);
    v10 = [v9 copyInputConnection];
    v11 = v10;
    if (v10)
    {
      xpc_release(v10);
    }

    if (v11 == a3 && v9 != 0)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)clients countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)_connectHandlerWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10020DC88;
  v4[3] = &unk_10032BA20;
  v4[4] = a4;
  v4[5] = self;
  v4[6] = a3;
  [(ErrorHandlerManager *)self _handleMessage:a3 connection:a4 withReplyBlock:v4];
}

- (void)_handleMessage:(id)a3 connection:(id)a4 withBlock:(id)a5
{
  [+[Daemon daemon](Daemon "daemon")];
  xpc_retain(a4);
  xpc_retain(a3);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020E5F4;
  block[3] = &unk_100327408;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleMessage:(id)a3 connection:(id)a4 withReplyBlock:(id)a5
{
  [+[Daemon daemon](Daemon "daemon")];
  xpc_retain(a4);
  xpc_retain(a3);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020E714;
  block[3] = &unk_10032A7D8;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  dispatch_async(dispatchQueue, block);
}

- (void)_resolveSessionWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10020E80C;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = a4;
  v4[6] = a3;
  [(ErrorHandlerManager *)self _handleMessage:a3 connection:a4 withBlock:v4];
}

@end
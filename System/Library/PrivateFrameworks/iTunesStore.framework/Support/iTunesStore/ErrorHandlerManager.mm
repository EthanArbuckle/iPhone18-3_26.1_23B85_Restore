@interface ErrorHandlerManager
+ (id)errorHandlerManager;
+ (void)connectHandlerWithMessage:(id)message connection:(id)connection;
+ (void)observeXPCServer:(id)server;
+ (void)resolveSessionWithMessage:(id)message connection:(id)connection;
- (ErrorHandlerManager)init;
- (id)_clientForConnection:(id)connection;
- (void)_clientDisconnectNotification:(id)notification;
- (void)_connectHandlerWithMessage:(id)message connection:(id)connection;
- (void)_handleMessage:(id)message connection:(id)connection withBlock:(id)block;
- (void)_handleMessage:(id)message connection:(id)connection withReplyBlock:(id)block;
- (void)_resolveSessionWithMessage:(id)message connection:(id)connection;
- (void)dealloc;
- (void)openSession:(id)session withCompletionBlock:(id)block;
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
  block[4] = self;
  if (qword_100384160 != -1)
  {
    dispatch_once(&qword_100384160, block);
  }

  return qword_100384158;
}

- (void)openSession:(id)session withCompletionBlock:(id)block
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020D198;
  block[3] = &unk_10032AF90;
  block[4] = session;
  block[5] = self;
  block[6] = block;
  dispatch_async(dispatchQueue, block);
}

+ (void)observeXPCServer:(id)server
{
  [server addObserver:self selector:"connectHandlerWithMessage:connection:" forMessage:96];

  [server addObserver:self selector:"resolveSessionWithMessage:connection:" forMessage:97];
}

+ (void)connectHandlerWithMessage:(id)message connection:(id)connection
{
  errorHandlerManager = [self errorHandlerManager];

  [errorHandlerManager _connectHandlerWithMessage:message connection:connection];
}

+ (void)resolveSessionWithMessage:(id)message connection:(id)connection
{
  errorHandlerManager = [self errorHandlerManager];

  [errorHandlerManager _resolveSessionWithMessage:message connection:connection];
}

- (void)_clientDisconnectNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10020D6B0;
  v4[3] = &unk_100327350;
  v4[4] = notification;
  v4[5] = self;
  dispatch_async(dispatchQueue, v4);
}

- (id)_clientForConnection:(id)connection
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
    copyInputConnection = [v9 copyInputConnection];
    v11 = copyInputConnection;
    if (copyInputConnection)
    {
      xpc_release(copyInputConnection);
    }

    if (v11 == connection && v9 != 0)
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

- (void)_connectHandlerWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10020DC88;
  v4[3] = &unk_10032BA20;
  v4[4] = connection;
  v4[5] = self;
  v4[6] = message;
  [(ErrorHandlerManager *)self _handleMessage:message connection:connection withReplyBlock:v4];
}

- (void)_handleMessage:(id)message connection:(id)connection withBlock:(id)block
{
  [+[Daemon daemon](Daemon "daemon")];
  xpc_retain(connection);
  xpc_retain(message);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020E5F4;
  block[3] = &unk_100327408;
  block[5] = connection;
  block[6] = block;
  block[4] = message;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleMessage:(id)message connection:(id)connection withReplyBlock:(id)block
{
  [+[Daemon daemon](Daemon "daemon")];
  xpc_retain(connection);
  xpc_retain(message);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020E714;
  block[3] = &unk_10032A7D8;
  block[5] = connection;
  block[6] = block;
  block[4] = message;
  dispatch_async(dispatchQueue, block);
}

- (void)_resolveSessionWithMessage:(id)message connection:(id)connection
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10020E80C;
  v4[3] = &unk_1003273E0;
  v4[4] = self;
  v4[5] = connection;
  v4[6] = message;
  [(ErrorHandlerManager *)self _handleMessage:message connection:connection withBlock:v4];
}

@end
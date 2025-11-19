@interface SUBBridgeServer
- (SUBBridgeServer)init;
- (void)addClient:(id)a3;
- (void)forwardIDSMessage:(id)a3;
- (void)forwardXPCMessage:(id)a3 fromClient:(id)a4 withReply:(id)a5;
- (void)removeClient:(id)a3;
- (void)resetLocale;
@end

@implementation SUBBridgeServer

- (SUBBridgeServer)init
{
  v10.receiver = self;
  v10.super_class = SUBBridgeServer;
  v2 = [(SUBBridgeServer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.subridge.server", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableArray);
    clients = v2->_clients;
    v2->_clients = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"resetLocale" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v2;
}

- (void)resetLocale
{
  v2 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "received NSCurrentLocaleDidChangeNotification, exiting", v3, 2u);
  }

  exit(0);
}

- (void)addClient:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000ACBC;
  v7[3] = &unk_10002D210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000AD60;
  v7[3] = &unk_10002D210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)forwardXPCMessage:(id)a3 fromClient:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10000BAD4(v8);
  endpoint = self->_endpoint;
  if (v10)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000AF00;
    v20[3] = &unk_10002D238;
    v13 = &v21;
    v21 = v10;
    [(SUBMessageEndpoint *)endpoint sendMessage:v11 isCritical:1 withReply:v20];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000AF10;
    v15[3] = &unk_10002D260;
    v13 = &v16;
    v16 = v8;
    v14 = v11;
    v17 = v14;
    v18 = self;
    v19 = v9;
    [(SUBMessageEndpoint *)endpoint sendMessage:v14 isCritical:1 completion:v15];
  }
}

- (void)forwardIDSMessage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B1CC;
  v7[3] = &unk_10002D210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

@end
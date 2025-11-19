@interface SKXPCConnection
- (SKXPCConnection)initWithServiceName:(id)a3;
- (SKXPCConnection)initWithXPCConnection:(id)a3;
- (id)_initSKXPCConnection;
- (id)disconnectBlock;
- (id)messageBlock;
- (void)_reloadEventHandler;
- (void)sendMessage:(id)a3 withReply:(id)a4;
- (void)sendSynchronousMessage:(id)a3 withReply:(id)a4;
- (void)setDisconnectBlock:(id)a3;
- (void)setMessageBlock:(id)a3;
@end

@implementation SKXPCConnection

- (id)_initSKXPCConnection
{
  v6.receiver = self;
  v6.super_class = SKXPCConnection;
  v2 = [(SKXPCConnection *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreKit.SKXPCConnection", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (SKXPCConnection)initWithServiceName:(id)a3
{
  if (a3)
  {
    v4 = [a3 UTF8String];
  }

  else
  {
    v4 = 0;
  }

  v5 = xpc_connection_create(v4, 0);
  xpc_connection_set_legacy();
  v6 = [(SKXPCConnection *)self initWithXPCConnection:v5];

  return v6;
}

- (SKXPCConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v6 = [(SKXPCConnection *)self _initSKXPCConnection];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
    [(SKXPCConnection *)v7 _reloadEventHandler];
    xpc_connection_resume(v7->_connection);
  }

  return v7;
}

- (id)disconnectBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100233B7C;
  v10 = sub_100233BA8;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100233BB0;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = objc_retainBlock(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)messageBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100233B7C;
  v10 = sub_100233BA8;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100233CEC;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = objc_retainBlock(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)sendMessage:(id)a3 withReply:(id)a4
{
  connection = self->_connection;
  v7 = dispatch_get_global_queue(0, 0);
  xpc_connection_send_message_with_reply(connection, a3, v7, a4);
}

- (void)sendSynchronousMessage:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100233E94;
  v10[3] = &unk_10032CEE8;
  v11 = dispatch_semaphore_create(0);
  v12 = v6;
  v8 = v11;
  v9 = v6;
  [(SKXPCConnection *)self sendMessage:v7 withReply:v10];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)setDisconnectBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100233F70;
  v7[3] = &unk_1003271C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setMessageBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10023406C;
  v7[3] = &unk_1003271C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)_reloadEventHandler
{
  v3 = objc_retainBlock(self->_disconnectBlock);
  v4 = objc_retainBlock(self->_messageBlock);
  connection = self->_connection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100234194;
  v8[3] = &unk_10032CF38;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  xpc_connection_set_event_handler(connection, v8);
}

@end
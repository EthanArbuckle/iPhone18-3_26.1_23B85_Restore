@interface SpringBoardAlertProxy
- (SpringBoardAlertProxy)initWithMessage:(id)message;
- (SpringBoardAlertProxyDelegate)delegate;
- (void)_disconnect;
- (void)_handleMessage:(id)message connection:(id)connection;
- (void)dealloc;
- (void)sendMessage:(id)message;
- (void)setDelegate:(id)delegate;
@end

@implementation SpringBoardAlertProxy

- (SpringBoardAlertProxy)initWithMessage:(id)message
{
  messageCopy = message;
  v29.receiver = self;
  v29.super_class = SpringBoardAlertProxy;
  v5 = [(SpringBoardAlertProxy *)&v29 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(messageCopy, "2");
    v7 = v6;
    if (v6 && xpc_get_type(v6) == &_xpc_type_endpoint)
    {
      v9 = dispatch_queue_create("com.apple.itunesstored.SpringBoardAlertProxy.delegate", 0);
      v10 = *(v5 + 2);
      *(v5 + 2) = v9;

      v11 = dispatch_queue_create("com.apple.itunesstored.SpringBoardAlertProxy", 0);
      v12 = *(v5 + 3);
      *(v5 + 3) = v11;

      v8 = dispatch_get_global_queue(0, 0);
      dispatch_set_target_queue(*(v5 + 2), v8);
      dispatch_set_target_queue(*(v5 + 3), v8);
      v13 = xpc_connection_create_from_endpoint(v7);
      v14 = [[SSXPCConnection alloc] initWithXPCConnection:v13];
      v15 = *(v5 + 6);
      *(v5 + 6) = v14;

      v16 = objc_alloc_init(SSXPCConnection);
      v17 = *(v5 + 4);
      *(v5 + 4) = v16;

      createXPCEndpoint = [*(v5 + 4) createXPCEndpoint];
      v19 = *(v5 + 5);
      *(v5 + 5) = createXPCEndpoint;

      objc_initWeak(&location, v5);
      v20 = *(v5 + 6);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000CE660;
      v26[3] = &unk_100328150;
      objc_copyWeak(&v27, &location);
      [v20 setDisconnectBlock:v26];
      v21 = *(v5 + 4);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000CE6A0;
      v24[3] = &unk_100328178;
      objc_copyWeak(&v25, &location);
      [v21 setMessageBlock:v24];
      v22 = SSXPCCreateMessageDictionary();
      [*(v5 + 6) sendMessage:v22];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  [(SSXPCConnection *)self->_inputConnection setMessageBlock:0];
  [(SSXPCConnection *)self->_outputConnection setDisconnectBlock:0];
  v3.receiver = self;
  v3.super_class = SpringBoardAlertProxy;
  [(SpringBoardAlertProxy *)&v3 dealloc];
}

- (SpringBoardAlertProxyDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000CE874;
  v10 = sub_1000CE884;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CE88C;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CE970;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CEA14;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_disconnect
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CEA94;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CEC2C;
  v11[3] = &unk_100327238;
  v11[4] = self;
  v12 = messageCopy;
  v8 = messageCopy;
  connectionCopy = connection;
  dispatch_async(dispatchQueue, v11);
  reply = xpc_dictionary_create_reply(v8);
  xpc_connection_send_message(connectionCopy, reply);
}

@end
@interface SSXPCConnection
- (SSXPCConnection)initWithServiceName:(id)name;
- (SSXPCConnection)initWithXPCConnection:(id)connection;
- (id)_initSSXPCConnection;
- (id)copyReplyQueue;
- (id)disconnectBlock;
- (id)messageBlock;
- (void)_reloadEventHandler;
- (void)sendSynchronousMessage:(id)message withReply:(id)reply;
- (void)setDisconnectBlock:(id)block;
- (void)setMessageBlock:(id)block;
- (void)setReplyQueue:(id)queue;
@end

@implementation SSXPCConnection

- (id)_initSSXPCConnection
{
  v6.receiver = self;
  v6.super_class = SSXPCConnection;
  v2 = [(SSXPCConnection *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.storeservices.SSXPCConnection", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)_reloadEventHandler
{
  v3 = MEMORY[0x1DA6DFBB0](self->_disconnectBlock, a2);
  v4 = MEMORY[0x1DA6DFBB0](self->_messageBlock);
  connection = self->_connection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SSXPCConnection__reloadEventHandler__block_invoke;
  v8[3] = &unk_1E84B05D0;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  xpc_connection_set_event_handler(connection, v8);
}

void __38__SSXPCConnection__reloadEventHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = v4;
  (*(v6 + 16))();
  v4 = v7;
LABEL_10:
}

void __38__SSXPCConnection__reloadEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

  else if (MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E68])
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __38__SSXPCConnection__reloadEventHandler__block_invoke_2;
    handler[3] = &unk_1E84B05A8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v7 = v4;
    v9 = v7;
    xpc_connection_set_event_handler(v7, handler);
    xpc_connection_resume(v7);
  }
}

- (SSXPCConnection)initWithServiceName:(id)name
{
  if (name)
  {
    uTF8String = [name UTF8String];
  }

  else
  {
    uTF8String = 0;
  }

  v5 = xpc_connection_create(uTF8String, 0);
  xpc_connection_set_legacy();
  v6 = [(SSXPCConnection *)self initWithXPCConnection:v5];

  return v6;
}

- (SSXPCConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  _initSSXPCConnection = [(SSXPCConnection *)self _initSSXPCConnection];
  v7 = _initSSXPCConnection;
  if (_initSSXPCConnection)
  {
    objc_storeStrong(_initSSXPCConnection + 1, connection);
    [(SSXPCConnection *)v7 _reloadEventHandler];
    xpc_connection_resume(v7->_connection);
  }

  return v7;
}

- (id)disconnectBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__29;
  v10 = __Block_byref_object_dispose__29;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSXPCConnection_disconnectBlock__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = MEMORY[0x1DA6DFBB0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __34__SSXPCConnection_disconnectBlock__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1DA6DFBB0](*(*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)messageBlock
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__29;
    v11 = __Block_byref_object_dispose__29;
    v12 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __31__SSXPCConnection_messageBlock__block_invoke;
    v6[3] = &unk_1E84ABF40;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(dispatchQueue, v6);
    v4 = MEMORY[0x1DA6DFBB0](v8[5]);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __31__SSXPCConnection_messageBlock__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1DA6DFBB0](*(*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)copyReplyQueue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__SSXPCConnection_copyReplyQueue__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__SSXPCConnection_copyReplyQueue__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (v1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v1);
  }
}

- (void)sendSynchronousMessage:(id)message withReply:(id)reply
{
  replyCopy = reply;
  v6 = xpc_connection_send_message_with_reply_sync(self->_connection, message);
  if (replyCopy)
  {
    replyCopy[2](replyCopy, v6);
  }
}

- (void)setDisconnectBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SSXPCConnection_setDisconnectBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(dispatchQueue, v7);
}

void *__38__SSXPCConnection_setDisconnectBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 24) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    v7 = *(a1 + 32);

    return [v7 _reloadEventHandler];
  }

  return result;
}

- (void)setMessageBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SSXPCConnection_setMessageBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(dispatchQueue, v7);
}

void *__35__SSXPCConnection_setMessageBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 40) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);

    return [v7 _reloadEventHandler];
  }

  return result;
}

- (void)setReplyQueue:(id)queue
{
  queueCopy = queue;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SSXPCConnection_setReplyQueue___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __33__SSXPCConnection_setReplyQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

@end
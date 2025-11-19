@interface _UIDruidSourceWarmUpConnection
- (void)warmUp;
@end

@implementation _UIDruidSourceWarmUpConnection

- (void)warmUp
{
  p_connection = &self->_connection;
  if (!self->_connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.DragUI.druid.source" options:0];
    v5 = _UIDraggingConnectionXPCQueue();
    [v4 _setQueue:v5];

    objc_storeStrong(p_connection, v4);
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40___UIDruidSourceWarmUpConnection_warmUp__block_invoke;
    v11[3] = &unk_1E70F3590;
    v6 = v4;
    v12 = v6;
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40___UIDruidSourceWarmUpConnection_warmUp__block_invoke_2;
    v9[3] = &unk_1E70F5A28;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)*p_connection setInvalidationHandler:v9];
    v7 = _DUINewServerSourceInterface();
    [(NSXPCConnection *)*p_connection setRemoteObjectInterface:v7];

    [(NSXPCConnection *)*p_connection resume];
    v8 = [(NSXPCConnection *)*p_connection remoteObjectProxy];
    [v8 warmUp];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

@end
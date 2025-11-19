@interface UVShellConnectionInterfaceTarget
- (UVShellConnectionInterfaceTarget)initWithMessageHandler:(id)a3 xpcEndpointHandler:(id)a4 bsEndpointHandler:(id)a5;
- (void)_handleNullArgument:(id)a3 replyHandler:(id)a4;
- (void)sendBSEndpoint:(id)a3 context:(id)a4 replyHandler:(id)a5;
- (void)sendMessage:(id)a3;
- (void)sendMessage:(id)a3 replyHandler:(id)a4;
- (void)sendXPCEndpoint:(id)a3 context:(id)a4 replyHandler:(id)a5;
@end

@implementation UVShellConnectionInterfaceTarget

- (UVShellConnectionInterfaceTarget)initWithMessageHandler:(id)a3 xpcEndpointHandler:(id)a4 bsEndpointHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = UVShellConnectionInterfaceTarget;
  v11 = [(UVShellConnectionInterfaceTarget *)&v19 init];
  if (v11)
  {
    v12 = _Block_copy(v8);
    messageHandler = v11->_messageHandler;
    v11->_messageHandler = v12;

    v14 = _Block_copy(v9);
    xpcEndpointHandler = v11->_xpcEndpointHandler;
    v11->_xpcEndpointHandler = v14;

    v16 = _Block_copy(v10);
    bsEndpointHandler = v11->_bsEndpointHandler;
    v11->_bsEndpointHandler = v16;
  }

  return v11;
}

- (void)sendMessage:(id)a3
{
  if (a3)
  {
    (*(self->_messageHandler + 2))();
  }

  else
  {
    [(UVShellConnectionInterfaceTarget *)self _handleNullArgument:@"message" replyHandler:0];
  }
}

- (void)sendMessage:(id)a3 replyHandler:(id)a4
{
  if (a3)
  {
    (*(self->_messageHandler + 2))();
  }

  else
  {
    [(UVShellConnectionInterfaceTarget *)self _handleNullArgument:@"message" replyHandler:a4];
  }
}

- (void)sendXPCEndpoint:(id)a3 context:(id)a4 replyHandler:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v12)
  {
    if (v8)
    {
      (*(self->_xpcEndpointHandler + 2))();
      goto LABEL_7;
    }

    v11 = @"context";
  }

  else
  {
    v11 = @"endpoint";
  }

  [(UVShellConnectionInterfaceTarget *)self _handleNullArgument:v11 replyHandler:v9];
LABEL_7:
}

- (void)sendBSEndpoint:(id)a3 context:(id)a4 replyHandler:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v12)
  {
    if (v8)
    {
      (*(self->_bsEndpointHandler + 2))();
      goto LABEL_7;
    }

    v11 = @"context";
  }

  else
  {
    v11 = @"endpoint";
  }

  [(UVShellConnectionInterfaceTarget *)self _handleNullArgument:v11 replyHandler:v9];
LABEL_7:
}

- (void)_handleNullArgument:(id)a3 replyHandler:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCA9B8] uv_errorWithFormat:@"shell IPC invocation had a null '%@' parameter", a3];
  if (v5)
  {
    v5[2](v5, 0, v6);
  }

  v7 = UVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [UVShellConnectionInterfaceTarget _handleNullArgument:v6 replyHandler:v7];
  }
}

- (void)_handleNullArgument:(void *)a1 replyHandler:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_25F4D4000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
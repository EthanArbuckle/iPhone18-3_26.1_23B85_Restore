@interface UVShellConnectionInterfaceTarget
- (UVShellConnectionInterfaceTarget)initWithMessageHandler:(id)handler xpcEndpointHandler:(id)endpointHandler bsEndpointHandler:(id)bsEndpointHandler;
- (void)_handleNullArgument:(id)argument replyHandler:(id)handler;
- (void)sendBSEndpoint:(id)endpoint context:(id)context replyHandler:(id)handler;
- (void)sendMessage:(id)message;
- (void)sendMessage:(id)message replyHandler:(id)handler;
- (void)sendXPCEndpoint:(id)endpoint context:(id)context replyHandler:(id)handler;
@end

@implementation UVShellConnectionInterfaceTarget

- (UVShellConnectionInterfaceTarget)initWithMessageHandler:(id)handler xpcEndpointHandler:(id)endpointHandler bsEndpointHandler:(id)bsEndpointHandler
{
  handlerCopy = handler;
  endpointHandlerCopy = endpointHandler;
  bsEndpointHandlerCopy = bsEndpointHandler;
  v19.receiver = self;
  v19.super_class = UVShellConnectionInterfaceTarget;
  v11 = [(UVShellConnectionInterfaceTarget *)&v19 init];
  if (v11)
  {
    v12 = _Block_copy(handlerCopy);
    messageHandler = v11->_messageHandler;
    v11->_messageHandler = v12;

    v14 = _Block_copy(endpointHandlerCopy);
    xpcEndpointHandler = v11->_xpcEndpointHandler;
    v11->_xpcEndpointHandler = v14;

    v16 = _Block_copy(bsEndpointHandlerCopy);
    bsEndpointHandler = v11->_bsEndpointHandler;
    v11->_bsEndpointHandler = v16;
  }

  return v11;
}

- (void)sendMessage:(id)message
{
  if (message)
  {
    (*(self->_messageHandler + 2))();
  }

  else
  {
    [(UVShellConnectionInterfaceTarget *)self _handleNullArgument:@"message" replyHandler:0];
  }
}

- (void)sendMessage:(id)message replyHandler:(id)handler
{
  if (message)
  {
    (*(self->_messageHandler + 2))();
  }

  else
  {
    [(UVShellConnectionInterfaceTarget *)self _handleNullArgument:@"message" replyHandler:handler];
  }
}

- (void)sendXPCEndpoint:(id)endpoint context:(id)context replyHandler:(id)handler
{
  endpointCopy = endpoint;
  contextCopy = context;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (endpointCopy)
  {
    if (contextCopy)
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

  [(UVShellConnectionInterfaceTarget *)self _handleNullArgument:v11 replyHandler:handlerCopy];
LABEL_7:
}

- (void)sendBSEndpoint:(id)endpoint context:(id)context replyHandler:(id)handler
{
  endpointCopy = endpoint;
  contextCopy = context;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (endpointCopy)
  {
    if (contextCopy)
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

  [(UVShellConnectionInterfaceTarget *)self _handleNullArgument:v11 replyHandler:handlerCopy];
LABEL_7:
}

- (void)_handleNullArgument:(id)argument replyHandler:(id)handler
{
  handlerCopy = handler;
  argument = [MEMORY[0x277CCA9B8] uv_errorWithFormat:@"shell IPC invocation had a null '%@' parameter", argument];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, argument);
  }

  v7 = UVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [UVShellConnectionInterfaceTarget _handleNullArgument:argument replyHandler:v7];
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
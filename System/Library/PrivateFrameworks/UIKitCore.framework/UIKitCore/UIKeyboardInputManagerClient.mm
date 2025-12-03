@interface UIKeyboardInputManagerClient
+ (BOOL)instancesRespondToSelector:(SEL)selector;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (UIKeyboardInputManagerClient)initWithImplProxy:(id)proxy;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)handleError:(id)error forRequest:(id)request;
- (void)handleRequest:(id)request;
@end

@implementation UIKeyboardInputManagerClient

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = UIKeyboardInputManagerClient;
  [(UIKeyboardInputManagerClient *)&v3 dealloc];
}

- (UIKeyboardInputManagerClient)initWithImplProxy:(id)proxy
{
  proxyCopy = proxy;
  v14.receiver = self;
  v14.super_class = UIKeyboardInputManagerClient;
  v5 = [(UIKeyboardInputManagerClient *)&v14 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput" options:4096];
    connection = v5->_connection;
    v5->_connection = v6;

    serverInterface = [MEMORY[0x1E69D9610] serverInterface];
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:serverInterface];

    [(NSXPCConnection *)v5->_connection setExportedObject:proxyCopy];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF1D660];
    [(NSXPCConnection *)v5->_connection setExportedInterface:v9];

    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v11 = dispatch_queue_create("com.apple.keyboard.xpc", v10);
    if (v11)
    {
      v12 = dispatch_get_global_queue(33, 2uLL);
      dispatch_set_target_queue(v11, v12);

      [(NSXPCConnection *)v5->_connection _setQueue:v11];
    }

    [(NSXPCConnection *)v5->_connection resume];
  }

  return v5;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___UIKeyboardInputManagerClient;
  if (objc_msgSendSuper2(&v5, sel_instancesRespondToSelector_))
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x1E69D9610] instancesRespondToSelector:selector];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = UIKeyboardInputManagerClient;
  if ([(UIKeyboardInputManagerClient *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x1E69D9610] instancesRespondToSelector:selector];
  }
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = UIKeyboardInputManagerClient;
  if ([(UIKeyboardInputManagerClient *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v7.receiver = self;
  v7.super_class = UIKeyboardInputManagerClient;
  if ([(UIKeyboardInputManagerClient *)&v7 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69D9610] conformsToProtocol:protocolCopy];
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = UIKeyboardInputManagerClient;
  v4 = [(UIKeyboardInputManagerClient *)&v9 methodSignatureForSelector:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69D9610] instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if ([MEMORY[0x1E69D9610] instancesRespondToSelector:{objc_msgSend(invocationCopy, "selector")}])
  {
    v5 = [[UIKeyboardInputManagerClientRequest alloc] initWithInvocation:invocationCopy];
    [(UIKeyboardInputManagerClient *)self handleRequest:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIKeyboardInputManagerClient;
    [(UIKeyboardInputManagerClient *)&v6 forwardInvocation:invocationCopy];
  }
}

- (void)handleRequest:(id)request
{
  requestCopy = request;
  connection = [(UIKeyboardInputManagerClient *)self connection];

  if (connection)
  {
    invocation = [requestCopy invocation];
    connection2 = [(UIKeyboardInputManagerClient *)self connection];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __46__UIKeyboardInputManagerClient_handleRequest___block_invoke;
    v14 = &unk_1E7109F48;
    selfCopy = self;
    v16 = requestCopy;
    v8 = [connection2 remoteObjectProxyWithErrorHandler:&v11];
    [invocation invokeWithTarget:{v8, v11, v12, v13, v14, selfCopy}];
  }

  else
  {
    v9 = objc_opt_new();
    invocation2 = [requestCopy invocation];
    [invocation2 invokeWithTarget:v9];
  }
}

- (void)handleError:(id)error forRequest:(id)request
{
  errorCopy = error;
  requestCopy = request;
  [requestCopy setErrorCount:{objc_msgSend(requestCopy, "errorCount") + 1}];
  if ([requestCopy errorCount] > 1)
  {
    connection = [(UIKeyboardInputManagerClient *)self connection];
    [connection invalidate];

    [(UIKeyboardInputManagerClient *)self setConnection:0];
    invocation = [requestCopy invocation];
    v8 = NSStringFromSelector([invocation selector]);
    NSLog(&cfstr_PleaseCheckFor.isa, "[UIKeyboardInputManagerClient handleError:forRequest:]", v8);
  }

  else
  {
    invocation = [requestCopy invocation];
    v8 = NSStringFromSelector([invocation selector]);
    NSLog(&cfstr_SWillRetrySend.isa, "[UIKeyboardInputManagerClient handleError:forRequest:]", v8, errorCopy);
  }

  [(UIKeyboardInputManagerClient *)self handleRequest:requestCopy];
}

@end
@interface TIKeyboardInputManagerClient
+ (BOOL)instancesRespondToSelector:(SEL)selector;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (TIKeyboardInputManagerClient)initWithImplProxy:(id)proxy;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)handleError:(id)error forRequest:(id)request;
- (void)handleRequest:(id)request;
@end

@implementation TIKeyboardInputManagerClient

- (void)handleError:(id)error forRequest:(id)request
{
  errorCopy = error;
  requestCopy = request;
  [requestCopy setErrorCount:{objc_msgSend(requestCopy, "errorCount") + 1}];
  if ([requestCopy errorCount] > 1)
  {
    connection = [(TIKeyboardInputManagerClient *)self connection];
    [connection invalidate];

    [(TIKeyboardInputManagerClient *)self setConnection:0];
    invocation = [requestCopy invocation];
    v8 = NSStringFromSelector([invocation selector]);
    NSLog(&cfstr_PleaseCheckFor.isa, "[TIKeyboardInputManagerClient handleError:forRequest:]", v8);
  }

  else
  {
    invocation = [requestCopy invocation];
    v8 = NSStringFromSelector([invocation selector]);
    NSLog(&cfstr_SWillRetrySend.isa, "[TIKeyboardInputManagerClient handleError:forRequest:]", v8, errorCopy);
  }

  [(TIKeyboardInputManagerClient *)self handleRequest:requestCopy];
}

- (void)handleRequest:(id)request
{
  requestCopy = request;
  connection = [(TIKeyboardInputManagerClient *)self connection];

  if (connection)
  {
    invocation = [requestCopy invocation];
    connection2 = [(TIKeyboardInputManagerClient *)self connection];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __46__TIKeyboardInputManagerClient_handleRequest___block_invoke;
    v14 = &unk_1E6F4C058;
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

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (+[TIKeyboardInputManagerStub instancesRespondToSelector:](TIKeyboardInputManagerStub, "instancesRespondToSelector:", [invocationCopy selector]))
  {
    v5 = [[TIKeyboardInputManagerClientRequest alloc] initWithInvocation:invocationCopy];
    [(TIKeyboardInputManagerClient *)self handleRequest:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManagerClient;
    [(TIKeyboardInputManagerClient *)&v6 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerClient;
  v4 = [(TIKeyboardInputManagerClient *)&v9 methodSignatureForSelector:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [TIKeyboardInputManagerStub instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerClient;
  if ([(TIKeyboardInputManagerClient *)&v7 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [TIKeyboardInputManagerStub conformsToProtocol:protocolCopy];
  }

  return v5;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerClient;
  if ([(TIKeyboardInputManagerClient *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerClient;
  if ([(TIKeyboardInputManagerClient *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [TIKeyboardInputManagerStub instancesRespondToSelector:selector];
  }
}

- (TIKeyboardInputManagerClient)initWithImplProxy:(id)proxy
{
  proxyCopy = proxy;
  v14.receiver = self;
  v14.super_class = TIKeyboardInputManagerClient;
  v5 = [(TIKeyboardInputManagerClient *)&v14 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput" options:4096];
    connection = v5->_connection;
    v5->_connection = v6;

    v8 = +[TIKeyboardInputManagerStub serverInterface];
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v5->_connection setExportedObject:proxyCopy];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7F7FB8];
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

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManagerClient;
  [(TIKeyboardInputManagerClient *)&v3 dealloc];
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TIKeyboardInputManagerClient;
  if (objc_msgSendSuper2(&v5, sel_instancesRespondToSelector_))
  {
    return 1;
  }

  else
  {
    return [TIKeyboardInputManagerStub instancesRespondToSelector:selector];
  }
}

@end
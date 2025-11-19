@interface UIKeyboardInputManagerClient
+ (BOOL)instancesRespondToSelector:(SEL)a3;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (UIKeyboardInputManagerClient)initWithImplProxy:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)handleError:(id)a3 forRequest:(id)a4;
- (void)handleRequest:(id)a3;
@end

@implementation UIKeyboardInputManagerClient

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = UIKeyboardInputManagerClient;
  [(UIKeyboardInputManagerClient *)&v3 dealloc];
}

- (UIKeyboardInputManagerClient)initWithImplProxy:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIKeyboardInputManagerClient;
  v5 = [(UIKeyboardInputManagerClient *)&v14 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput" options:4096];
    connection = v5->_connection;
    v5->_connection = v6;

    v8 = [MEMORY[0x1E69D9610] serverInterface];
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v5->_connection setExportedObject:v4];
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

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___UIKeyboardInputManagerClient;
  if (objc_msgSendSuper2(&v5, sel_instancesRespondToSelector_))
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x1E69D9610] instancesRespondToSelector:a3];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5.receiver = self;
  v5.super_class = UIKeyboardInputManagerClient;
  if ([(UIKeyboardInputManagerClient *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x1E69D9610] instancesRespondToSelector:a3];
  }
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = UIKeyboardInputManagerClient;
  if ([(UIKeyboardInputManagerClient *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIKeyboardInputManagerClient;
  if ([(UIKeyboardInputManagerClient *)&v7 conformsToProtocol:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69D9610] conformsToProtocol:v4];
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)a3
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
    v6 = [MEMORY[0x1E69D9610] instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69D9610] instancesRespondToSelector:{objc_msgSend(v4, "selector")}])
  {
    v5 = [[UIKeyboardInputManagerClientRequest alloc] initWithInvocation:v4];
    [(UIKeyboardInputManagerClient *)self handleRequest:v5];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIKeyboardInputManagerClient;
    [(UIKeyboardInputManagerClient *)&v6 forwardInvocation:v4];
  }
}

- (void)handleRequest:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardInputManagerClient *)self connection];

  if (v5)
  {
    v6 = [v4 invocation];
    v7 = [(UIKeyboardInputManagerClient *)self connection];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __46__UIKeyboardInputManagerClient_handleRequest___block_invoke;
    v14 = &unk_1E7109F48;
    v15 = self;
    v16 = v4;
    v8 = [v7 remoteObjectProxyWithErrorHandler:&v11];
    [v6 invokeWithTarget:{v8, v11, v12, v13, v14, v15}];
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [v4 invocation];
    [v10 invokeWithTarget:v9];
  }
}

- (void)handleError:(id)a3 forRequest:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v6 setErrorCount:{objc_msgSend(v6, "errorCount") + 1}];
  if ([v6 errorCount] > 1)
  {
    v9 = [(UIKeyboardInputManagerClient *)self connection];
    [v9 invalidate];

    [(UIKeyboardInputManagerClient *)self setConnection:0];
    v7 = [v6 invocation];
    v8 = NSStringFromSelector([v7 selector]);
    NSLog(&cfstr_PleaseCheckFor.isa, "[UIKeyboardInputManagerClient handleError:forRequest:]", v8);
  }

  else
  {
    v7 = [v6 invocation];
    v8 = NSStringFromSelector([v7 selector]);
    NSLog(&cfstr_SWillRetrySend.isa, "[UIKeyboardInputManagerClient handleError:forRequest:]", v8, v10);
  }

  [(UIKeyboardInputManagerClient *)self handleRequest:v6];
}

@end
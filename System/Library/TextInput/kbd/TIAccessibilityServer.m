@interface TIAccessibilityServer
+ (id)sharedAccessibilityServer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (TIAccessibilityServer)init;
- (void)dealloc;
@end

@implementation TIAccessibilityServer

+ (id)sharedAccessibilityServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007410;
  block[3] = &unk_10001C810;
  block[4] = a1;
  if (qword_1000265B8 != -1)
  {
    dispatch_once(&qword_1000265B8, block);
  }

  v2 = qword_1000265B0;

  return v2;
}

- (TIAccessibilityServer)init
{
  v10.receiver = self;
  v10.super_class = TIAccessibilityServer;
  v2 = [(TIAccessibilityServer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.accessibility", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = [NSXPCListener alloc];
    v7 = [v6 initWithMachServiceName:TIAccessibilityServiceName];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener _setQueue:v2->_dispatchQueue];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = TIAccessibilityServer;
  [(TIAccessibilityServer *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.accessibility.api"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    if (TICanLogMessageAtLevel())
    {
      v7 = TIOSLogFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10000D9A4(v5);
      }
    }

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TIAccessibilityInterface];
    [v5 setExportedInterface:v8];

    v9 = objc_alloc_init(TIAccessibilityHandler);
    [v5 setExportedObject:v9];

    v10 = [(TIAccessibilityServer *)self dispatchQueue];
    [v5 _setQueue:v10];

    [v5 resume];
    v11 = 1;
  }

  else
  {
    v11 = 0;
    if (TICanLogMessageAtLevel())
    {
      v12 = TIOSLogFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10000D8F8(v5);
      }

      v11 = 0;
    }
  }

  return v11;
}

@end
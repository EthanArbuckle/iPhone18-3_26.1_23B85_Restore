@interface TIAutofillServer
+ (id)sharedAutofillServer;
- (BOOL)checkEntitlementForAddEntryStringWithAuditToken:(id *)token;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TIAutofillServer)init;
- (void)dealloc;
@end

@implementation TIAutofillServer

+ (id)sharedAutofillServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005248;
  block[3] = &unk_10001C810;
  block[4] = self;
  if (qword_100026598 != -1)
  {
    dispatch_once(&qword_100026598, block);
  }

  v2 = qword_100026590;

  return v2;
}

- (TIAutofillServer)init
{
  v10.receiver = self;
  v10.super_class = TIAutofillServer;
  v2 = [(TIAutofillServer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.autofill-server", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = [NSXPCListener alloc];
    v7 = [v6 initWithMachServiceName:TIAutofillServiceName];
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
  v3.super_class = TIAutofillServer;
  [(TIAutofillServer *)&v3 dealloc];
}

- (BOOL)checkEntitlementForAddEntryStringWithAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *cf.val = *token->var0;
  *&cf.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &cf);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  *cf.val = 0;
  v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.TextInput.autofill-action", &cf);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    v9 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
    CFRelease(v7);
  }

  else
  {
    if (*cf.val)
    {
      if (TICanLogMessageAtLevel())
      {
        v10 = TIOSLogFacility();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_10000D6F0(&cf, v10);
        }
      }

      CFRelease(*cf.val);
    }

    v9 = 0;
  }

  CFRelease(v5);
  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v9 = [(TIAutofillServer *)self checkEntitlementForAddEntryStringWithAuditToken:v14];
  if (v9)
  {
    v10 = objc_alloc_init(TIAutofillDataHandler);
    [v8 setExportedObject:v10];
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TIAutofillReportCandidateSelectiontHandler];
    [v8 setExportedInterface:v11];

    dispatchQueue = [(TIAutofillServer *)self dispatchQueue];
    [v8 _setQueue:dispatchQueue];

    [v8 resume];
  }

  else
  {
    [v8 invalidate];
  }

  return v9;
}

@end
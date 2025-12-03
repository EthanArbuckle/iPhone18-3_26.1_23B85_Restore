@interface TYATypologyAccessServer
+ (id)sharedServer;
- (BOOL)_checkEntitlementForAddEntryStringWithAuditToken:(id *)token;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TYATypologyAccessServer)init;
- (void)dealloc;
@end

@implementation TYATypologyAccessServer

+ (id)sharedServer
{
  if (qword_1000265D8 != -1)
  {
    sub_10000DB0C();
  }

  v3 = qword_1000265D0;

  return v3;
}

- (TYATypologyAccessServer)init
{
  v10.receiver = self;
  v10.super_class = TYATypologyAccessServer;
  v2 = [(TYATypologyAccessServer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.TextInput.typologyAccess", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.TextInput.typologyAccess"];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener _setQueue:v2->_queue];
    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = TYATypologyAccessServer;
  [(TYATypologyAccessServer *)&v3 dealloc];
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
    v16 = 0u;
    v17 = 0u;
  }

  v9 = [(TYATypologyAccessServer *)self _checkEntitlementForAddEntryStringWithAuditToken:&v16];
  if (v9)
  {
    v10 = TYALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      processIdentifier = [v8 processIdentifier];
      LODWORD(v16) = 67109120;
      DWORD1(v16) = processIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Server is accepting new connection to client (pid=%d).", &v16, 8u);
    }

    v12 = [TYATypologyAccessSession alloc];
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v13 = [(TYATypologyAccessSession *)v12 initWithAuditToken:&v16];
    [v8 setExportedObject:v13];
    v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TYATypologyAccessProtocol_WithTestSupport];
    [v8 setExportedInterface:v14];

    [v8 resume];
  }

  else
  {
    [v8 invalidate];
    v13 = TYALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000DB20(v13);
    }
  }

  return v9;
}

- (BOOL)_checkEntitlementForAddEntryStringWithAuditToken:(id *)token
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
  v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.TextInput.typologyAccess", &cf);
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
      v10 = TYALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10000DB64(&cf, v10);
      }

      CFRelease(*cf.val);
    }

    v9 = 0;
  }

  CFRelease(v5);
  return v9;
}

@end
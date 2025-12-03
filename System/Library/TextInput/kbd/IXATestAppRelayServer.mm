@interface IXATestAppRelayServer
+ (id)sharedServer;
- (BOOL)_checkEntitlement:(id)entitlement withAuditToken:(id *)token;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IXATestAppRelayServer)init;
- (void)dealloc;
- (void)fetchEndpointForServiceName:(id)name completion:(id)completion;
- (void)unregisterEndpointForServiceName:(id)name completion:(id)completion;
@end

@implementation IXATestAppRelayServer

+ (id)sharedServer
{
  if (qword_100026540 != -1)
  {
    sub_10000D340();
  }

  v3 = qword_100026538;

  return v3;
}

- (IXATestAppRelayServer)init
{
  v14.receiver = self;
  v14.super_class = IXATestAppRelayServer;
  v2 = [(IXATestAppRelayServer *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.inputanalytics.testAppRelay", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.inputanalytics.testAppRelay"];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener _setQueue:v2->_queue];
    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v9 = +[NSMutableDictionary dictionary];
    registrations = v2->_registrations;
    v2->_registrations = v9;

    v11 = IXATestAppRelayLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "The service was initialized.", v13, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  registrations = self->_registrations;
  self->_registrations = 0;

  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v4.receiver = self;
  v4.super_class = IXATestAppRelayServer;
  [(IXATestAppRelayServer *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  if ((TI_IS_INTERNAL_INSTALL() & 1) == 0)
  {
    [connectionCopy invalidate];
    v6 = IXATestAppRelayLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000D354();
    }

    goto LABEL_13;
  }

  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  if (![(IXATestAppRelayServer *)self _checkEntitlement:@"com.apple.inputanalytics.testAppRelay" withAuditToken:v12])
  {
    [connectionCopy invalidate];
    v6 = IXATestAppRelayLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000D390();
    }

LABEL_13:

    v10 = 0;
    goto LABEL_14;
  }

  v7 = IXATestAppRelayLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    processIdentifier = [connectionCopy processIdentifier];
    LODWORD(v12[0]) = 67109120;
    DWORD1(v12[0]) = processIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Accepting connection from client (pid=%d).", v12, 8u);
  }

  [connectionCopy setExportedObject:self];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___IXATestAppRelayProtocol];
  [connectionCopy setExportedInterface:v9];

  [connectionCopy resume];
  v10 = 1;
LABEL_14:

  return v10;
}

- (void)unregisterEndpointForServiceName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if (TI_IS_INTERNAL_INSTALL())
  {
    registrations = [(IXATestAppRelayServer *)self registrations];
    v9 = [registrations objectForKey:nameCopy];

    if (v9)
    {
      entitlement = [v9 entitlement];
      v11 = +[NSXPCConnection currentConnection];
      v12 = v11;
      if (v11)
      {
        [v11 auditToken];
      }

      else
      {
        memset(v17, 0, sizeof(v17));
      }

      v15 = [(IXATestAppRelayServer *)self _checkEntitlement:entitlement withAuditToken:v17];

      if (v15)
      {
        registrations2 = [(IXATestAppRelayServer *)self registrations];
        [registrations2 removeObjectForKey:nameCopy];

        v14 = IXATestAppRelayLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v17[0]) = 138412290;
          *(v17 + 4) = nameCopy;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unregistered endpoint for service name '%@'.", v17, 0xCu);
        }
      }

      else
      {
        v14 = IXATestAppRelayLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10000D47C();
        }
      }
    }

    else
    {
      v14 = IXATestAppRelayLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10000D4B8();
      }
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    v13 = IXATestAppRelayLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D354();
    }

    completionCopy[2](completionCopy);
  }
}

- (void)fetchEndpointForServiceName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if (TI_IS_INTERNAL_INSTALL())
  {
    registrations = [(IXATestAppRelayServer *)self registrations];
    v9 = [registrations objectForKey:nameCopy];

    if (v9)
    {
      entitlement = [v9 entitlement];
      v11 = +[NSXPCConnection currentConnection];
      v12 = v11;
      if (v11)
      {
        [v11 auditToken];
      }

      else
      {
        memset(v18, 0, sizeof(v18));
      }

      v15 = [(IXATestAppRelayServer *)self _checkEntitlement:entitlement withAuditToken:v18];

      v16 = IXATestAppRelayLog();
      v14 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v18[0]) = 138412290;
          *(v18 + 4) = nameCopy;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Fetched endpoint for service name '%@'.", v18, 0xCu);
        }

        endpoint = [v9 endpoint];
        completionCopy[2](completionCopy, endpoint);

        goto LABEL_18;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000D47C();
      }
    }

    else
    {
      v14 = IXATestAppRelayLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10000D4B8();
      }
    }

    completionCopy[2](completionCopy, 0);
LABEL_18:

    goto LABEL_19;
  }

  v13 = IXATestAppRelayLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10000D354();
  }

  completionCopy[2](completionCopy, 0);
LABEL_19:
}

- (BOOL)_checkEntitlement:(id)entitlement withAuditToken:(id *)token
{
  entitlementCopy = entitlement;
  v6 = *&token->var0[4];
  *cf.val = *token->var0;
  *&cf.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(0, &cf);
  if (v7)
  {
    v8 = v7;
    *cf.val = 0;
    v9 = SecTaskCopyValueForEntitlement(v7, entitlementCopy, &cf);
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      v12 = v11 == CFBooleanGetTypeID() && CFBooleanGetValue(v10) != 0;
      CFRelease(v10);
    }

    else
    {
      if (*cf.val)
      {
        v13 = IXATestAppRelayLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10000D52C(&cf);
        }

        CFRelease(*cf.val);
      }

      v12 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
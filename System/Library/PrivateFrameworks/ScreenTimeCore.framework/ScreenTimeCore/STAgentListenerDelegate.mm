@interface STAgentListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (STAgentListenerDelegate)initWithAgentServer:(id)server;
@end

@implementation STAgentListenerDelegate

- (STAgentListenerDelegate)initWithAgentServer:(id)server
{
  serverCopy = server;
  v9.receiver = self;
  v9.super_class = STAgentListenerDelegate;
  v6 = [(STAgentListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_agentServer, server);
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  serviceName = [connectionCopy serviceName];
  v8 = +[STLog screentime];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100110EBC(serviceName, connectionCopy, v8);
  }

  if ([serviceName isEqualToString:STMachServiceNameScreenTimePrivate])
  {
    v9 = [connectionCopy valueForEntitlement:STEntitlementScreenTimePrivate];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 BOOLValue])
    {
      if (qword_1001E38C0 != -1)
      {
        sub_1001110E8();
      }

      v10 = qword_1001E38C8;
      goto LABEL_25;
    }

    v11 = +[STLog screentime];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10011106C();
    }

LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  if (![serviceName isEqualToString:STMachServiceNameScreenTime])
  {
    if (([serviceName isEqualToString:STMachServiceNameContacts] & 1) == 0)
    {
      sub_100110F5C(a2, self, serviceName);
    }

    v9 = [connectionCopy valueForEntitlement:@"com.apple.private.contacts"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 BOOLValue] & 1) == 0)
    {
      v12 = [connectionCopy valueForEntitlement:@"com.apple.private.contactsui"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v12 BOOLValue] & 1) == 0)
      {
        v13 = [connectionCopy valueForEntitlement:STEntitlementScreenTimePrivate];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v13 BOOLValue] & 1) == 0)
        {
          v17 = +[STLog screentime];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100110FD0();
          }

          goto LABEL_30;
        }
      }
    }

    v10 = +[STScreenTimeAgentPrivateConnection newContactsServiceInterface];
LABEL_25:
    v14 = v10;

    v9 = v14;
    goto LABEL_26;
  }

  v9 = +[STScreenTimeAgentConnection newInterface];
LABEL_26:
  [connectionCopy setExportedInterface:v9];
  agentServer = [(STAgentListenerDelegate *)self agentServer];
  [connectionCopy setExportedObject:agentServer];

  [connectionCopy resume];
  v16 = 1;
LABEL_31:

  return v16;
}

@end
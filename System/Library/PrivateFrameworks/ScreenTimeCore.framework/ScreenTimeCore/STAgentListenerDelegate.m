@interface STAgentListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (STAgentListenerDelegate)initWithAgentServer:(id)a3;
@end

@implementation STAgentListenerDelegate

- (STAgentListenerDelegate)initWithAgentServer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STAgentListenerDelegate;
  v6 = [(STAgentListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_agentServer, a3);
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = [v6 serviceName];
  v8 = +[STLog screentime];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100110EBC(v7, v6, v8);
  }

  if ([v7 isEqualToString:STMachServiceNameScreenTimePrivate])
  {
    v9 = [v6 valueForEntitlement:STEntitlementScreenTimePrivate];
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

  if (![v7 isEqualToString:STMachServiceNameScreenTime])
  {
    if (([v7 isEqualToString:STMachServiceNameContacts] & 1) == 0)
    {
      sub_100110F5C(a2, self, v7);
    }

    v9 = [v6 valueForEntitlement:@"com.apple.private.contacts"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v9 BOOLValue] & 1) == 0)
    {
      v12 = [v6 valueForEntitlement:@"com.apple.private.contactsui"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v12 BOOLValue] & 1) == 0)
      {
        v13 = [v6 valueForEntitlement:STEntitlementScreenTimePrivate];
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
  [v6 setExportedInterface:v9];
  v15 = [(STAgentListenerDelegate *)self agentServer];
  [v6 setExportedObject:v15];

  [v6 resume];
  v16 = 1;
LABEL_31:

  return v16;
}

@end
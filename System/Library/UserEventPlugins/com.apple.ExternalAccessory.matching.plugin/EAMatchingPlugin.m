@interface EAMatchingPlugin
- (EAMatchingPlugin)initWithModule:(void *)a3;
- (void)accessoryChange:(id)a3 type:(int)a4;
- (void)addClient:(unint64_t)a3 eventMatchDict:(id)a4;
- (void)sendAccessoryNotification:(id)a3 client:(unint64_t)a4 notificationTypeKey:(const char *)a5 serialNum:(id)a6;
@end

@implementation EAMatchingPlugin

- (EAMatchingPlugin)initWithModule:(void *)a3
{
  v3 = self;
  if (a3)
  {
    xpc_event_module_get_aslclient();
  }

  if (self)
  {
    v5 = self;
    return 0;
  }

  return v3;
}

- (void)addClient:(unint64_t)a3 eventMatchDict:(id)a4
{
  if (a4)
  {
    if (xpc_copy_description(a4))
    {
      eventModule = self->_eventModule;
      xpc_event_module_get_aslclient();
    }

    string = xpc_dictionary_get_string(a4, "EAMatchingProtocol");
    if (string)
    {
      v9 = [NSString stringWithCString:string encoding:1];
      if (v9)
      {
        v10 = v9;
        xdict = a4;
        if (xpc_dictionary_get_BOOL(a4, "EAMatchConnection"))
        {
          accessoryConnectClients = self->_accessoryConnectClients;
          if (!accessoryConnectClients)
          {
            accessoryConnectClients = [[NSMutableDictionary alloc] initWithCapacity:1];
            self->_accessoryConnectClients = accessoryConnectClients;
            if (!accessoryConnectClients)
            {
              return;
            }
          }

          [(EAMatchingPlugin *)self addClient:a3 protocol:v10 clientDict:accessoryConnectClients, v20, v21, v22];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          obj = [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager connectedAccessories];
          v26 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v26)
          {
            v25 = *v32;
            do
            {
              v12 = 0;
              do
              {
                if (*v32 != v25)
                {
                  objc_enumerationMutation(obj);
                }

                v13 = *(*(&v31 + 1) + 8 * v12);
                v27 = 0u;
                v28 = 0u;
                v29 = 0u;
                v30 = 0u;
                v14 = [v13 protocolStrings];
                v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v28;
                  do
                  {
                    v18 = 0;
                    do
                    {
                      if (*v28 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      if ([(NSString *)v10 isEqualToString:*(*(&v27 + 1) + 8 * v18)])
                      {
                        -[EAMatchingPlugin sendAccessoryNotification:client:notificationTypeKey:serialNum:](self, "sendAccessoryNotification:client:notificationTypeKey:serialNum:", v10, a3, "EAMatchConnection", [v13 serialNumber]);
                      }

                      v18 = v18 + 1;
                    }

                    while (v16 != v18);
                    v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
                  }

                  while (v16);
                }

                v12 = v12 + 1;
              }

              while (v12 != v26);
              v26 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
            }

            while (v26);
          }
        }

        if (xpc_dictionary_get_BOOL(xdict, "EAMatchDisconnection"))
        {
          accessoryDisconnectClients = self->_accessoryDisconnectClients;
          if (accessoryDisconnectClients || (accessoryDisconnectClients = [[NSMutableDictionary alloc] initWithCapacity:1], (self->_accessoryDisconnectClients = accessoryDisconnectClients) != 0))
          {
            [(EAMatchingPlugin *)self addClient:a3 protocol:v10 clientDict:accessoryDisconnectClients, v20, v21, v22];
          }
        }
      }
    }
  }
}

- (void)sendAccessoryNotification:(id)a3 client:(unint64_t)a4 notificationTypeKey:(const char *)a5 serialNum:(id)a6
{
  if (a3)
  {
    if (a5)
    {
      v7 = 0;
      eventModule = self->_eventModule;
      xpc_event_module_get_aslclient();
    }
  }
}

- (void)accessoryChange:(id)a3 type:(int)a4
{
  if (a4 == 1)
  {
    v5 = 32;
    if (!a3)
    {
      return;
    }
  }

  else
  {
    if (a4 != 2)
    {
      return;
    }

    v5 = 40;
    if (!a3)
    {
      return;
    }
  }

  if (*(&self->super.isa + v5))
  {
    v6 = [objc_msgSend(a3 "userInfo")];
    if (v6)
    {
      v7 = v6;
      v8 = v6;
      if ([v7 protocolStrings])
      {
        [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(objc_msgSend(v7, "protocolStrings"), "count")}];
        eventModule = self->_eventModule;
        xpc_event_module_get_aslclient();
      }
    }
  }
}

@end
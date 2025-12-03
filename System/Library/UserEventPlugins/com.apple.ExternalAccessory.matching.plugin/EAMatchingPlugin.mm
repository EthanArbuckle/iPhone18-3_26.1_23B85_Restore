@interface EAMatchingPlugin
- (EAMatchingPlugin)initWithModule:(void *)module;
- (void)accessoryChange:(id)change type:(int)type;
- (void)addClient:(unint64_t)client eventMatchDict:(id)dict;
- (void)sendAccessoryNotification:(id)notification client:(unint64_t)client notificationTypeKey:(const char *)key serialNum:(id)num;
@end

@implementation EAMatchingPlugin

- (EAMatchingPlugin)initWithModule:(void *)module
{
  selfCopy = self;
  if (module)
  {
    xpc_event_module_get_aslclient();
  }

  if (self)
  {
    selfCopy2 = self;
    return 0;
  }

  return selfCopy;
}

- (void)addClient:(unint64_t)client eventMatchDict:(id)dict
{
  if (dict)
  {
    if (xpc_copy_description(dict))
    {
      eventModule = self->_eventModule;
      xpc_event_module_get_aslclient();
    }

    string = xpc_dictionary_get_string(dict, "EAMatchingProtocol");
    if (string)
    {
      v9 = [NSString stringWithCString:string encoding:1];
      if (v9)
      {
        v10 = v9;
        xdict = dict;
        if (xpc_dictionary_get_BOOL(dict, "EAMatchConnection"))
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

          [(EAMatchingPlugin *)self addClient:client protocol:v10 clientDict:accessoryConnectClients, v20, v21, v22];
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
                protocolStrings = [v13 protocolStrings];
                v15 = [protocolStrings countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                        objc_enumerationMutation(protocolStrings);
                      }

                      if ([(NSString *)v10 isEqualToString:*(*(&v27 + 1) + 8 * v18)])
                      {
                        -[EAMatchingPlugin sendAccessoryNotification:client:notificationTypeKey:serialNum:](self, "sendAccessoryNotification:client:notificationTypeKey:serialNum:", v10, client, "EAMatchConnection", [v13 serialNumber]);
                      }

                      v18 = v18 + 1;
                    }

                    while (v16 != v18);
                    v16 = [protocolStrings countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            [(EAMatchingPlugin *)self addClient:client protocol:v10 clientDict:accessoryDisconnectClients, v20, v21, v22];
          }
        }
      }
    }
  }
}

- (void)sendAccessoryNotification:(id)notification client:(unint64_t)client notificationTypeKey:(const char *)key serialNum:(id)num
{
  if (notification)
  {
    if (key)
    {
      v7 = 0;
      eventModule = self->_eventModule;
      xpc_event_module_get_aslclient();
    }
  }
}

- (void)accessoryChange:(id)change type:(int)type
{
  if (type == 1)
  {
    v5 = 32;
    if (!change)
    {
      return;
    }
  }

  else
  {
    if (type != 2)
    {
      return;
    }

    v5 = 40;
    if (!change)
    {
      return;
    }
  }

  if (*(&self->super.isa + v5))
  {
    v6 = [objc_msgSend(change "userInfo")];
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
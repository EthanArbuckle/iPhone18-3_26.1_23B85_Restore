@interface RCPEventDeliveryServicePool
- (BOOL)prewarmForSenderProperties:(id)properties withError:(id *)error;
- (RCPEventDeliveryServicePool)init;
- (id)_findServiceForSenderProperties:(id)properties;
- (id)deliveryServiceForSenderProperties:(id)properties;
- (void)tearDown;
@end

@implementation RCPEventDeliveryServicePool

- (RCPEventDeliveryServicePool)init
{
  v9.receiver = self;
  v9.super_class = RCPEventDeliveryServicePool;
  v2 = [(RCPEventDeliveryServicePool *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldIgnoreSenderProperties = 0;
    v4 = objc_opt_new();
    deliveryServicesBySenderID = v3->_deliveryServicesBySenderID;
    v3->_deliveryServicesBySenderID = v4;

    v6 = objc_opt_new();
    deliveryServicesBySenderProperties = v3->_deliveryServicesBySenderProperties;
    v3->_deliveryServicesBySenderProperties = v6;
  }

  return v3;
}

- (void)tearDown
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_deliveryServicesBySenderID copy];
  v4 = [(NSMutableDictionary *)self->_deliveryServicesBySenderProperties copy];
  [(NSMutableDictionary *)self->_deliveryServicesBySenderID removeAllObjects];
  [(NSMutableDictionary *)self->_deliveryServicesBySenderProperties removeAllObjects];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [v3 allValues];
  v6 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v19 + 1) + 8 * v9++) stop];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues2 = [v4 allValues];
  v11 = [allValues2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(allValues2);
        }

        [*(*(&v15 + 1) + 8 * v14++) stop];
      }

      while (v12 != v14);
      v12 = [allValues2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (id)deliveryServiceForSenderProperties:(id)properties
{
  propertiesCopy = properties;
  shouldIgnoreSenderProperties = [(RCPEventDeliveryServicePool *)self shouldIgnoreSenderProperties];
  if (!propertiesCopy || shouldIgnoreSenderProperties)
  {
    v7 = RCPLogPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2619DE000, v7, OS_LOG_TYPE_DEFAULT, "properties were nil, or ignoring properties set. Falling back to a platform specific default sender.", buf, 2u);
    }

    v8 = RCPLogPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_2619DE000, v8, OS_LOG_TYPE_DEFAULT, "defaulting to touch screen digitizer sender", v11, 2u);
    }

    v9 = +[RCPEventSenderProperties touchScreenDigitizerSender];
    v6 = [(RCPEventDeliveryServicePool *)self _findServiceForSenderProperties:v9];
  }

  else
  {
    v6 = [(RCPEventDeliveryServicePool *)self _findServiceForSenderProperties:propertiesCopy];
  }

  if (([v6 isRunning] & 1) == 0)
  {
    [v6 startWithError:0];
  }

  return v6;
}

- (BOOL)prewarmForSenderProperties:(id)properties withError:(id *)error
{
  propertiesCopy = properties;
  if (!propertiesCopy)
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = [(RCPEventDeliveryServicePool *)self _findServiceForSenderProperties:propertiesCopy];
  v11 = 0;
  [v7 startWithError:&v11];
  v8 = v11;

  if (error)
  {
LABEL_3:
    v9 = v8;
    *error = v8;
  }

LABEL_4:

  return v8 == 0;
}

- (id)_findServiceForSenderProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  senderID = [propertiesCopy senderID];
  if (senderID)
  {
    v6 = senderID;
    deliveryServicesBySenderID = self->_deliveryServicesBySenderID;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:senderID];
    v9 = [(NSMutableDictionary *)deliveryServicesBySenderID objectForKeyedSubscript:v8];

    if (!v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"recap-%llX", v6];
      v9 = [RCPVirtualHIDService serviceWithIdentifier:v10 properties:propertiesCopy];

      v11 = RCPLogPlayback();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v9;
        _os_log_impl(&dword_2619DE000, v11, OS_LOG_TYPE_DEFAULT, "new virtual service %{public}@", buf, 0xCu);
      }

      v12 = self->_deliveryServicesBySenderID;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      [(NSMutableDictionary *)v12 setObject:v9 forKeyedSubscript:v13];
    }
  }

  else
  {
    v14 = [(NSMutableDictionary *)self->_deliveryServicesBySenderProperties objectForKeyedSubscript:propertiesCopy];
    if (v14)
    {
      v9 = v14;
    }

    else
    {
      v9 = [RCPVirtualHIDService serviceWithIdentifier:@"recapulon" properties:propertiesCopy];
      v15 = RCPLogPlayback();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v9;
        _os_log_impl(&dword_2619DE000, v15, OS_LOG_TYPE_DEFAULT, "new virtual service %{public}@", buf, 0xCu);
      }

      [(NSMutableDictionary *)self->_deliveryServicesBySenderProperties setObject:v9 forKeyedSubscript:propertiesCopy];
    }
  }

  return v9;
}

@end
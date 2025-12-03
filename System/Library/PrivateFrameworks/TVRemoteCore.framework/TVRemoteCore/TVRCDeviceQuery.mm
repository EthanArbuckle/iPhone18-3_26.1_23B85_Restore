@interface TVRCDeviceQuery
+ (id)_allDiscoveredDevices;
+ (id)deviceForDeviceState:(id)state;
+ (void)_allDiscoveredDevicesDidUpdate:(id)update;
+ (void)_updateSuggestedDevices:(id)devices;
+ (void)fetchActiveEndpointUIDWithCompletion:(id)completion;
+ (void)getConnectionStatusToDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (TVRCDeviceQueryDelegate)delegate;
- (void)dealloc;
- (void)fetchSuggestedDevicesWithResponse:(id)response;
- (void)startWithCompletionHandler:(id)handler;
- (void)stop;
@end

@implementation TVRCDeviceQuery

+ (id)_allDiscoveredDevices
{
  if (qword_2804D74B0)
  {
    v2 = qword_2804D74B0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  return v2;
}

+ (void)_allDiscoveredDevicesDidUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [update copy];
  v4 = qword_2804D74B0;
  qword_2804D74B0 = v3;

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [_MergedGlobals copy];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        delegate = [v10 delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate deviceQueryDidUpdateDevices:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_updateSuggestedDevices:(id)devices
{
  v16 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [_MergedGlobals copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        delegate = [*(*(&v11 + 1) + 8 * v8) delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate didUpdateSuggestedDevices:devicesCopy];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)getConnectionStatusToDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = +[TVRCXPCClient sharedInstance];
  [v7 getConnectionStatusToDeviceWithIdentifier:identifierCopy response:completionCopy];
}

- (void)dealloc
{
  [(TVRCDeviceQuery *)self stop];
  v3.receiver = self;
  v3.super_class = TVRCDeviceQuery;
  [(TVRCDeviceQuery *)&v3 dealloc];
}

- (void)startWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _TVRCDeviceQueryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TVRCDeviceQuery startWithCompletionHandler:];
  }

  v6 = _MergedGlobals;
  if (!_MergedGlobals)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = _MergedGlobals;
    _MergedGlobals = weakObjectsHashTable;

    v6 = _MergedGlobals;
  }

  [v6 addObject:self];
  if ([_MergedGlobals count] == 1)
  {
    v9 = +[TVRCXPCClient sharedInstance];
    [v9 beginDeviceQueryWithResponse:handlerCopy];

    v10 = _TVRCDeviceQueryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = qword_2804D74B0;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Resetting lastKnownDevices: %@", &v15, 0xCu);
    }

    v11 = qword_2804D74B0;
    qword_2804D74B0 = 0;
    goto LABEL_13;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 deviceQueryDidUpdateDevices:self];
LABEL_13:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchSuggestedDevicesWithResponse:(id)response
{
  responseCopy = response;
  v5 = +[TVRCXPCClient sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__TVRCDeviceQuery_fetchSuggestedDevicesWithResponse___block_invoke;
  v7[3] = &unk_279D82BC8;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  [v5 getSuggestedDevicesWithResponse:v7];
}

void __53__TVRCDeviceQuery_fetchSuggestedDevicesWithResponse___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(a1 + 32);
        v11 = [objc_opt_class() deviceForDeviceState:{*(*(&v15 + 1) + 8 * v9), v15}];
        if (v11)
        {
          [v4 addObject:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *(a1 + 40);
  v13 = [v4 copy];
  (*(v12 + 16))(v12, v13);

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)fetchActiveEndpointUIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[TVRCXPCClient sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__TVRCDeviceQuery_fetchActiveEndpointUIDWithCompletion___block_invoke;
  v6[3] = &unk_279D82BF0;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 fetchActiveMREndpointUIDWithCompletion:v6];
}

uint64_t __56__TVRCDeviceQuery_fetchActiveEndpointUIDWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)deviceForDeviceState:(id)state
{
  stateCopy = state;
  v4 = +[TVRCDeviceQuery _allDiscoveredDevices];
  v5 = _TVRCDeviceQueryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[TVRCDeviceQuery deviceForDeviceState:];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__TVRCDeviceQuery_deviceForDeviceState___block_invoke;
  v9[3] = &unk_279D82C18;
  v6 = stateCopy;
  v10 = v6;
  v11 = &v12;
  [v4 enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __40__TVRCDeviceQuery_deviceForDeviceState___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (TVRCDeviceQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startWithCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)deviceForDeviceState:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
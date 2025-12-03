@interface SYAddLinkContextClient
- (SYAddLinkContextClient)init;
- (void)_configureConnectionAndResume;
- (void)_createConnectionIfNeeded;
- (void)_invalidateConnection;
- (void)createConnectionWithEndpoint:(id)endpoint;
- (void)dealloc;
- (void)userDidRemoveContentItems:(id)items;
- (void)userEditDidAddContentItems:(id)items;
- (void)userWillAddLinkWithActivity:(id)activity completion:(id)completion;
@end

@implementation SYAddLinkContextClient

- (SYAddLinkContextClient)init
{
  v7.receiver = self;
  v7.super_class = SYAddLinkContextClient;
  v2 = [(SYAddLinkContextClient *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.AddLinkContextClient", v3);
    clientQueue = v2->__clientQueue;
    v2->__clientQueue = v4;
  }

  return v2;
}

- (void)dealloc
{
  _connection = [(SYAddLinkContextClient *)self _connection];
  [_connection invalidate];

  [(SYAddLinkContextClient *)self set_connection:0];
  v4.receiver = self;
  v4.super_class = SYAddLinkContextClient;
  [(SYAddLinkContextClient *)&v4 dealloc];
}

- (void)userWillAddLinkWithActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  _clientQueue = [(SYAddLinkContextClient *)self _clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke;
  block[3] = &unk_27856B510;
  block[4] = self;
  v12 = activityCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = activityCopy;
  dispatch_async(_clientQueue, block);
}

void __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [a1[4] _createConnectionIfNeeded];
  v2 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[5] _uniqueIdentifier];
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "AddLinkContextClient: userWillAddLinkWithActivity started for activity: %@", buf, 0xCu);
  }

  v4 = [a1[4] _connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_5;
  v18[3] = &unk_27856B4C0;
  v19 = a1[6];
  v5 = [v4 remoteObjectProxyWithErrorHandler:v18];

  if (v5)
  {
    v6 = a1[5];
    v17 = 0;
    v7 = [v6 _createUserActivityDataWithSaving:0 options:0 error:&v17];
    v8 = v17;
    v9 = v8;
    if (v7)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_7;
      v14[3] = &unk_27856B4E8;
      v15 = v8;
      v16 = a1[6];
      [v5 userWillAddLinkWithActivityData:v7 completion:v14];
    }

    else
    {
      v11 = os_log_create("com.apple.synapse", "AddLinkContext");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_cold_1(a1 + 5, v9, v11);
      }

      v12 = a1[6];
      if (v12)
      {
        v12[2](v12, 0);
      }
    }
  }

  else
  {
    v10 = a1[6];
    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_5_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, 0);
  }
}

void __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v14 = 0;
    v4 = [[SYContentItem alloc] initWithData:v3 error:&v14];
    v5 = v14;
    if (v5)
    {
      v6 = os_log_create("com.apple.synapse", "AddLinkContext");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_7_cold_1(a1, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v4);
  }
}

- (void)userDidRemoveContentItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy indexesOfObjectsPassingTest:&__block_literal_global_0];
  if ([v5 count])
  {
    _clientQueue = [(SYAddLinkContextClient *)self _clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SYAddLinkContextClient_userDidRemoveContentItems___block_invoke_2;
    block[3] = &unk_27856B578;
    block[4] = self;
    v8 = itemsCopy;
    v9 = v5;
    dispatch_async(_clientQueue, block);
  }
}

uint64_t __52__SYAddLinkContextClient_userDidRemoveContentItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 activityType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCA850]];

  return v3;
}

void __52__SYAddLinkContextClient_userDidRemoveContentItems___block_invoke_2(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  [a1[4] _createConnectionIfNeeded];
  v2 = [a1[5] objectsAtIndexes:a1[6]];
  v3 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[6] count];
    v5 = [v2 firstObject];
    v6 = [v5 itemIdentifier];
    *buf = 134218242;
    v27 = v4;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_DEFAULT, "AddLinkContextClient: userDidRemoveContentItems started for %lu items including: %@", buf, 0x16u);
  }

  v7 = [a1[4] _connection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_13];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1[6], "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v2;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v21 + 1) + 8 * v14) dataRepresentationWithError:{0, v21}];
          if (v15)
          {
            [v9 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    if (![v9 count])
    {
      v16 = os_log_create("com.apple.synapse", "AddLinkContext");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [a1[6] count];
        v18 = [v10 firstObject];
        v19 = [v18 itemIdentifier];
        *buf = 134218242;
        v27 = v17;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_225901000, v16, OS_LOG_TYPE_DEFAULT, "AddLinkContextClient: userDidRemoveContentItems encoding failed for %lu items including: %@", buf, 0x16u);
      }
    }

    [v8 userDidRemoveContentItemDatas:{v9, v21}];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52__SYAddLinkContextClient_userDidRemoveContentItems___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_5_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)userEditDidAddContentItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy indexesOfObjectsPassingTest:&__block_literal_global_16];
  if ([v5 count])
  {
    _clientQueue = [(SYAddLinkContextClient *)self _clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SYAddLinkContextClient_userEditDidAddContentItems___block_invoke_2;
    block[3] = &unk_27856B578;
    block[4] = self;
    v8 = itemsCopy;
    v9 = v5;
    dispatch_async(_clientQueue, block);
  }
}

uint64_t __53__SYAddLinkContextClient_userEditDidAddContentItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 activityType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCA850]];

  return v3;
}

void __53__SYAddLinkContextClient_userEditDidAddContentItems___block_invoke_2(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  [a1[4] _createConnectionIfNeeded];
  v2 = [a1[5] objectsAtIndexes:a1[6]];
  v3 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[6] count];
    v5 = [v2 firstObject];
    v6 = [v5 itemIdentifier];
    *buf = 134218242;
    v27 = v4;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_DEFAULT, "AddLinkContextClient: userEditDidAddContentItems started for %lu items including: %@", buf, 0x16u);
  }

  v7 = [a1[4] _connection];
  v8 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_19];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1[6], "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v2;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v21 + 1) + 8 * v14) dataRepresentationWithError:{0, v21}];
          if (v15)
          {
            [v9 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    if (![v9 count])
    {
      v16 = os_log_create("com.apple.synapse", "AddLinkContext");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [a1[6] count];
        v18 = [v10 firstObject];
        v19 = [v18 itemIdentifier];
        *buf = 134218242;
        v27 = v17;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_225901000, v16, OS_LOG_TYPE_DEFAULT, "AddLinkContextClient: userEditDidAddContentItems encoding failed for %lu items including: %@", buf, 0x16u);
      }
    }

    [v8 userEditDidAddContentItemDatas:{v9, v21}];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __53__SYAddLinkContextClient_userEditDidAddContentItems___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_5_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)_createConnectionIfNeeded
{
  _connection = [(SYAddLinkContextClient *)self _connection];

  if (!_connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.synapse.add-link-context-service" options:0];
    [(SYAddLinkContextClient *)self set_connection:v4];

    _connection2 = [(SYAddLinkContextClient *)self _connection];
    _clientQueue = [(SYAddLinkContextClient *)self _clientQueue];
    [_connection2 _setQueue:_clientQueue];

    [(SYAddLinkContextClient *)self _configureConnectionAndResume];
  }
}

- (void)_configureConnectionAndResume
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SYAddLinkContextClient.m" lineNumber:180 description:@"the XPC connection is unexpectedly nil"];
}

void __55__SYAddLinkContextClient__configureConnectionAndResume__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "AddLinkContextClient: Connection was invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

void __55__SYAddLinkContextClient__configureConnectionAndResume__block_invoke_29(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "AddLinkContext");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "AddLinkContextClient: Connection was interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateConnection];
}

- (void)_invalidateConnection
{
  _clientQueue = [(SYAddLinkContextClient *)self _clientQueue];
  dispatch_assert_queue_V2(_clientQueue);

  _connection = [(SYAddLinkContextClient *)self _connection];

  if (_connection)
  {
    v5 = os_log_create("com.apple.synapse", "AddLinkContext");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "AddLinkContextClient: Invalidating connection.", v7, 2u);
    }

    _connection2 = [(SYAddLinkContextClient *)self _connection];
    [(SYAddLinkContextClient *)self set_connection:0];
    [_connection2 invalidate];
  }
}

- (void)createConnectionWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  _clientQueue = [(SYAddLinkContextClient *)self _clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SYAddLinkContextClient_createConnectionWithEndpoint___block_invoke;
  v7[3] = &unk_27856B5C8;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_sync(_clientQueue, v7);
}

uint64_t __55__SYAddLinkContextClient_createConnectionWithEndpoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  [v2 invalidate];

  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:*(a1 + 40)];
  [*(a1 + 32) set_connection:v3];

  v4 = [*(a1 + 32) _connection];
  v5 = [*(a1 + 32) _clientQueue];
  [v4 _setQueue:v5];

  v6 = *(a1 + 32);

  return [v6 _configureConnectionAndResume];
}

void __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_225901000, log, OS_LOG_TYPE_ERROR, "Failed to serialize data for user activity %@. Error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_5_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_225901000, a2, a3, "AddLinkContextClient: Error creating remote service proxy: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __65__SYAddLinkContextClient_userWillAddLinkWithActivity_completion___block_invoke_7_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_0(&dword_225901000, a2, a3, "Failed to deserialize data for content item data. Error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end
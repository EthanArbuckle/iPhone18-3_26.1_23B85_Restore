@interface TRISandboxedPushServiceConnection
- (TRISandboxedPushServiceConnection)init;
- (id)_readPersistedSubscriptions;
- (void)_persistSubscriptions;
- (void)_validateChannelForChannelId:(id)a3;
- (void)subscribeToChannels:(id)a3;
- (void)unsubscribeFromChannel:(id)a3;
@end

@implementation TRISandboxedPushServiceConnection

- (TRISandboxedPushServiceConnection)init
{
  v8.receiver = self;
  v8.super_class = TRISandboxedPushServiceConnection;
  v2 = [(TRISandboxedPushServiceConnection *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(TRISandboxedPushServiceConnection *)v2 _readPersistedSubscriptions];
    v5 = [v4 mutableCopy];
    channels = v3->_channels;
    v3->_channels = v5;
  }

  return v3;
}

- (void)unsubscribeFromChannel:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TRISandboxedPushServiceConnection *)self _validateChannelForChannelId:v4];
  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "[Sandbox] Unsubscribing from channel %@", &v9, 0xCu);
  }

  v6 = [(TRISandboxedPushServiceConnection *)self channels];
  v7 = [v4 identifier];
  [v6 removeObject:v7];

  [(TRISandboxedPushServiceConnection *)self _persistSubscriptions];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_validateChannelForChannelId:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 type] == 1)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    v5 = [v3 identifier];
    v6 = [v4 initWithBase64EncodedString:v5 options:0];

    if ([v6 length] >= 0x11)
    {
      v7 = TRILogCategory_Server();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412802;
        v10 = v3;
        v11 = 2048;
        v12 = [v6 length];
        v13 = 2048;
        v14 = 16;
        _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "[Sandbox] Received channel id %@ with length %tu > %tu", &v9, 0x20u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToChannels:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(TRISandboxedPushServiceConnection *)self channels];
    v6 = +[TRIPushServiceConnection subsetOfChannels:currentChannelCount:hardLimit:](TRIPushServiceConnection, "subsetOfChannels:currentChannelCount:hardLimit:", v4, [v5 count], 100);

    if ([v6 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [(TRISandboxedPushServiceConnection *)self _validateChannelForChannelId:*(*(&v17 + 1) + 8 * v11++), v17];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }

      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v7;
        _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "[Sandbox] Subscribing to channels %@", buf, 0xCu);
      }

      v13 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_29];
      v14 = [(TRISandboxedPushServiceConnection *)self channels];
      [v14 addObjectsFromArray:v13];

      [(TRISandboxedPushServiceConnection *)self _persistSubscriptions];
    }

    else
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = [(TRISandboxedPushServiceConnection *)self channels];
        *buf = 134218240;
        v23 = [v16 count];
        v24 = 2048;
        v25 = 100;
        _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "[Sandbox] New subscription denied since we reached the channel limit (%tu >= %tu)", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_readPersistedSubscriptions
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 arrayForKey:@"com.apple.triald.aps.subscriptions"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "[Sandbox] Unable to unarchive persisted subscriptions", v8, 2u);
    }

    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)_persistSubscriptions
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [(TRISandboxedPushServiceConnection *)self channels];
  [v3 setObject:v4 forKey:@"com.apple.triald.aps.subscriptions"];

  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 objectForKey:@"com.apple.triald.aps.subscriptions"];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "[Sandbox] Just persisted subscriptions. Now persisted: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end
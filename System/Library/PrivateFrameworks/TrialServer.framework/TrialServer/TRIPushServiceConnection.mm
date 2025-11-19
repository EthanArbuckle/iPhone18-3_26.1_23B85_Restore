@interface TRIPushServiceConnection
+ (id)_validateChannelId:(id)a3;
+ (id)subsetOfChannels:(id)a3 currentChannelCount:(int64_t)a4 hardLimit:(int64_t)a5;
- (TRIPushServiceConnection)initWithDelegate:(id)a3;
- (id)_publicChannelForChannelId:(id)a3;
- (id)subscribedChannelIds;
- (unint64_t)_subscribedChannelCount;
- (void)_subscribeToChannels:(id)a3;
- (void)_unsubscribeFromChannel:(id)a3;
- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)dealloc;
- (void)subscribeToChannels:(id)a3;
- (void)unsubscribeFromChannel:(id)a3;
@end

@implementation TRIPushServiceConnection

- (TRIPushServiceConnection)initWithDelegate:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24.receiver = self;
  v24.super_class = TRIPushServiceConnection;
  v6 = [(TRIPushServiceConnection *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_triDelegate, a3);
    v8 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.triald.pushServiceQueue" qosClass:17];
    pushServiceQueue = v7->_pushServiceQueue;
    v7->_pushServiceQueue = v8;

    v10 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.triald.subscriptionRequestQueue" qosClass:17];
    subscriptionRequestQueue = v7->_subscriptionRequestQueue;
    v7->_subscriptionRequestQueue = v10;

    v12 = objc_alloc(MEMORY[0x277CEEA10]);
    v13 = *MEMORY[0x277CEE9F0];
    v14 = [(TRIPushServiceConnection *)v7 pushServiceQueue];
    v15 = [v12 initWithEnvironmentName:v13 namedDelegatePort:@"com.apple.aps.triald" queue:v14];
    connection = v7->_connection;
    v7->_connection = v15;

    v17 = [(TRIPushServiceConnection *)v7 connection];

    if (v17)
    {
      v25[0] = @"com.apple.triald";
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      v19 = [(TRIPushServiceConnection *)v7 connection];
      [v19 _setOpportunisticTopics:v18];

      v20 = [(TRIPushServiceConnection *)v7 connection];
      [v20 setDelegate:v7];
    }

    else
    {
      v20 = TRILogCategory_Server();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to create an APSConnection", v23, 2u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)subscribeToChannels:(id)a3
{
  v4 = a3;
  v5 = [(TRIPushServiceConnection *)self subscriptionRequestQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__TRIPushServiceConnection_subscribeToChannels___block_invoke;
  v7[3] = &unk_279DDF7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)subsetOfChannels:(id)a3 currentChannelCount:(int64_t)a4 hardLimit:(int64_t)a5
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__TRIPushServiceConnection_subsetOfChannels_currentChannelCount_hardLimit___block_invoke;
  v13[3] = &__block_descriptor_40_e26__16__0__TRIPushChannelId_8l;
  v13[4] = a1;
  v7 = [a3 _pas_mappedArrayWithTransform:v13];
  v8 = (a5 - a4) & ~((a5 - a4) >> 63);
  v9 = [v7 count];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = [v7 subarrayWithRange:{0, v10}];

  return v11;
}

- (void)_subscribeToChannels:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(TRIPushServiceConnection *)self _subscribedChannelCount];
    v6 = [TRIPushServiceConnection subsetOfChannels:v4 currentChannelCount:v5 hardLimit:100];
    if ([v6 count])
    {
      v7 = [v6 count];
      if (v7 < [v4 count])
      {
        v8 = TRILogCategory_Server();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v13 = 134218752;
          v14 = v5;
          v15 = 2048;
          v16 = [v4 count];
          v17 = 2048;
          v18 = [v6 count];
          v19 = 2048;
          v20 = 100;
          _os_log_fault_impl(&dword_26F567000, v8, OS_LOG_TYPE_FAULT, "Only some of the requested channels will be subscribed since we reached the channel limit (current: %tu, wanted to subscribe: %tu, actual to be subscribed: %tu, limit: %tu)", &v13, 0x2Au);
        }
      }

      v9 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_27];
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Subscribing to channels: %@", &v13, 0xCu);
      }

      v11 = [(TRIPushServiceConnection *)self connection];
      [v11 subscribeToChannels:v9 forTopic:@"com.apple.triald"];
    }

    else
    {
      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v13 = 134218240;
        v14 = v5;
        v15 = 2048;
        v16 = 100;
        _os_log_fault_impl(&dword_26F567000, v9, OS_LOG_TYPE_FAULT, "New subscription denied since we reached the channel limit (current: %tu, limit: %tu)", &v13, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __49__TRIPushServiceConnection__subscribeToChannels___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD9D98];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 identifier];

  v6 = [v4 initWithChannelID:v5];

  return v6;
}

+ (id)_validateChannelId:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 type] == 1)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    v5 = [v3 identifier];
    v6 = [v4 initWithBase64EncodedString:v5 options:0];

    if ([v6 length] < 0x11)
    {
      v8 = v3;
    }

    else
    {
      v7 = TRILogCategory_Server();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412802;
        v12 = v3;
        v13 = 2048;
        v14 = [v6 length];
        v15 = 2048;
        v16 = 16;
        _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Received channel id %@ with length %tu > %tu", &v11, 0x20u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = v3;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)unsubscribeFromChannel:(id)a3
{
  v4 = a3;
  v5 = [(TRIPushServiceConnection *)self subscriptionRequestQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__TRIPushServiceConnection_unsubscribeFromChannel___block_invoke;
  v7[3] = &unk_279DDF7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_unsubscribeFromChannel:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRIPushServiceConnection *)self _publicChannelForChannelId:v4];
  v6 = TRILogCategory_Server();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Unsubscribing from channel %@", &v9, 0xCu);
    }

    v7 = [(TRIPushServiceConnection *)self connection];
    [v7 unsubscribeFromChannel:v5 forTopic:@"com.apple.triald"];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Could not unsubscribe from channel %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_publicChannelForChannelId:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 type] == 1)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    v5 = [v3 identifier];
    v6 = [v4 initWithBase64EncodedString:v5 options:0];

    if ([v6 length] >= 0x11)
    {
      v7 = TRILogCategory_Server();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412802;
        v14 = v3;
        v15 = 2048;
        v16 = [v6 length];
        v17 = 2048;
        v18 = 16;
        _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Received channel id %@ with length %tu > %tu", &v13, 0x20u);
      }
    }
  }

  v8 = objc_alloc(MEMORY[0x277CD9D98]);
  v9 = [v3 identifier];
  v10 = [v8 initWithChannelID:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)subscribedChannelIds
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(TRIPushServiceConnection *)self connection];
  v9 = 0;
  v3 = [v2 registeredChannelsForTopic:@"com.apple.triald" error:&v9];
  v4 = v9;

  if (v3)
  {
    v5 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_24_0];
  }

  else
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Couldn't get registered channels: %{public}@", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)_subscribedChannelCount
{
  v2 = [(TRIPushServiceConnection *)self subscribedChannelIds];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 count];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(TRIPushServiceConnection *)self connection];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = TRIPushServiceConnection;
  [(TRIPushServiceConnection *)&v4 dealloc];
}

- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Failed to subscribe to some channels: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"notification-content"];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
      if (v9)
      {
        v20 = 0;
        v10 = [objc_alloc(MEMORY[0x277D73BA8]) initWithData:v9 error:&v20];
        v11 = v20;
        v12 = TRILogCategory_Server();
        v13 = v12;
        if (v10)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v10 description];
            *buf = 138412290;
            v22 = v14;
            _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Received notification: %@", buf, 0xCu);
          }

          v13 = [(TRIPushServiceConnection *)self triDelegate];
          [v13 didReceivePushNotification:v10];
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v18 = [v6 userInfo];
          v19 = [v6 channelID];
          *buf = 138412802;
          v22 = v11;
          v23 = 2112;
          v24 = v18;
          v25 = 2112;
          v26 = v19;
          _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Unable to deserialize push notification with decode error %@. Received %@ on channel %@", buf, 0x20u);
        }

        goto LABEL_18;
      }

      v11 = TRILogCategory_Server();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }

      v10 = [v6 channelID];
      *buf = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = v10;
      v15 = "Received invalid base 64 notification content. Received %@ on channel %@";
      v16 = v11;
    }

    else
    {
      v9 = TRILogCategory_Server();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_20:

        goto LABEL_21;
      }

      v11 = [v6 userInfo];
      v10 = [v6 channelID];
      *buf = 138543618;
      v22 = v11;
      v23 = 2114;
      v24 = v10;
      v15 = "Expected notification content not found. Received %{public}@ on channel %{public}@";
      v16 = v9;
    }

    _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
LABEL_18:

    goto LABEL_19;
  }

  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "-connection:didReceiveIncomingMessage: called without a message", buf, 2u);
  }

LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
}

@end
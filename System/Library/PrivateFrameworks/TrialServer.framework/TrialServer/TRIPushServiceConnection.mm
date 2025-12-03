@interface TRIPushServiceConnection
+ (id)_validateChannelId:(id)id;
+ (id)subsetOfChannels:(id)channels currentChannelCount:(int64_t)count hardLimit:(int64_t)limit;
- (TRIPushServiceConnection)initWithDelegate:(id)delegate;
- (id)_publicChannelForChannelId:(id)id;
- (id)subscribedChannelIds;
- (unint64_t)_subscribedChannelCount;
- (void)_subscribeToChannels:(id)channels;
- (void)_unsubscribeFromChannel:(id)channel;
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)dealloc;
- (void)subscribeToChannels:(id)channels;
- (void)unsubscribeFromChannel:(id)channel;
@end

@implementation TRIPushServiceConnection

- (TRIPushServiceConnection)initWithDelegate:(id)delegate
{
  v25[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = TRIPushServiceConnection;
  v6 = [(TRIPushServiceConnection *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_triDelegate, delegate);
    v8 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.triald.pushServiceQueue" qosClass:17];
    pushServiceQueue = v7->_pushServiceQueue;
    v7->_pushServiceQueue = v8;

    v10 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.triald.subscriptionRequestQueue" qosClass:17];
    subscriptionRequestQueue = v7->_subscriptionRequestQueue;
    v7->_subscriptionRequestQueue = v10;

    v12 = objc_alloc(MEMORY[0x277CEEA10]);
    v13 = *MEMORY[0x277CEE9F0];
    pushServiceQueue = [(TRIPushServiceConnection *)v7 pushServiceQueue];
    v15 = [v12 initWithEnvironmentName:v13 namedDelegatePort:@"com.apple.aps.triald" queue:pushServiceQueue];
    connection = v7->_connection;
    v7->_connection = v15;

    connection = [(TRIPushServiceConnection *)v7 connection];

    if (connection)
    {
      v25[0] = @"com.apple.triald";
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      connection2 = [(TRIPushServiceConnection *)v7 connection];
      [connection2 _setOpportunisticTopics:v18];

      connection3 = [(TRIPushServiceConnection *)v7 connection];
      [connection3 setDelegate:v7];
    }

    else
    {
      connection3 = TRILogCategory_Server();
      if (os_log_type_enabled(connection3, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_error_impl(&dword_26F567000, connection3, OS_LOG_TYPE_ERROR, "Failed to create an APSConnection", v23, 2u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)subscribeToChannels:(id)channels
{
  channelsCopy = channels;
  subscriptionRequestQueue = [(TRIPushServiceConnection *)self subscriptionRequestQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__TRIPushServiceConnection_subscribeToChannels___block_invoke;
  v7[3] = &unk_279DDF7A0;
  v7[4] = self;
  v8 = channelsCopy;
  v6 = channelsCopy;
  dispatch_async(subscriptionRequestQueue, v7);
}

+ (id)subsetOfChannels:(id)channels currentChannelCount:(int64_t)count hardLimit:(int64_t)limit
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__TRIPushServiceConnection_subsetOfChannels_currentChannelCount_hardLimit___block_invoke;
  v13[3] = &__block_descriptor_40_e26__16__0__TRIPushChannelId_8l;
  v13[4] = self;
  v7 = [channels _pas_mappedArrayWithTransform:v13];
  v8 = (limit - count) & ~((limit - count) >> 63);
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

- (void)_subscribeToChannels:(id)channels
{
  v21 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  if ([channelsCopy count])
  {
    _subscribedChannelCount = [(TRIPushServiceConnection *)self _subscribedChannelCount];
    v6 = [TRIPushServiceConnection subsetOfChannels:channelsCopy currentChannelCount:_subscribedChannelCount hardLimit:100];
    if ([v6 count])
    {
      v7 = [v6 count];
      if (v7 < [channelsCopy count])
      {
        v8 = TRILogCategory_Server();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v13 = 134218752;
          v14 = _subscribedChannelCount;
          v15 = 2048;
          v16 = [channelsCopy count];
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

      connection = [(TRIPushServiceConnection *)self connection];
      [connection subscribeToChannels:v9 forTopic:@"com.apple.triald"];
    }

    else
    {
      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v13 = 134218240;
        v14 = _subscribedChannelCount;
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

+ (id)_validateChannelId:(id)id
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if ([idCopy type] == 1)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    identifier = [idCopy identifier];
    v6 = [v4 initWithBase64EncodedString:identifier options:0];

    if ([v6 length] < 0x11)
    {
      v8 = idCopy;
    }

    else
    {
      v7 = TRILogCategory_Server();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412802;
        v12 = idCopy;
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
    v8 = idCopy;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)unsubscribeFromChannel:(id)channel
{
  channelCopy = channel;
  subscriptionRequestQueue = [(TRIPushServiceConnection *)self subscriptionRequestQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__TRIPushServiceConnection_unsubscribeFromChannel___block_invoke;
  v7[3] = &unk_279DDF7A0;
  v7[4] = self;
  v8 = channelCopy;
  v6 = channelCopy;
  dispatch_async(subscriptionRequestQueue, v7);
}

- (void)_unsubscribeFromChannel:(id)channel
{
  v11 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  v5 = [(TRIPushServiceConnection *)self _publicChannelForChannelId:channelCopy];
  v6 = TRILogCategory_Server();
  connection = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = channelCopy;
      _os_log_impl(&dword_26F567000, connection, OS_LOG_TYPE_DEFAULT, "Unsubscribing from channel %@", &v9, 0xCu);
    }

    connection = [(TRIPushServiceConnection *)self connection];
    [connection unsubscribeFromChannel:v5 forTopic:@"com.apple.triald"];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = channelCopy;
    _os_log_error_impl(&dword_26F567000, connection, OS_LOG_TYPE_ERROR, "Could not unsubscribe from channel %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_publicChannelForChannelId:(id)id
{
  v19 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if ([idCopy type] == 1)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    identifier = [idCopy identifier];
    v6 = [v4 initWithBase64EncodedString:identifier options:0];

    if ([v6 length] >= 0x11)
    {
      v7 = TRILogCategory_Server();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412802;
        v14 = idCopy;
        v15 = 2048;
        v16 = [v6 length];
        v17 = 2048;
        v18 = 16;
        _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Received channel id %@ with length %tu > %tu", &v13, 0x20u);
      }
    }
  }

  v8 = objc_alloc(MEMORY[0x277CD9D98]);
  identifier2 = [idCopy identifier];
  v10 = [v8 initWithChannelID:identifier2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)subscribedChannelIds
{
  v12 = *MEMORY[0x277D85DE8];
  connection = [(TRIPushServiceConnection *)self connection];
  v9 = 0;
  v3 = [connection registeredChannelsForTopic:@"com.apple.triald" error:&v9];
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
  subscribedChannelIds = [(TRIPushServiceConnection *)self subscribedChannelIds];
  v3 = subscribedChannelIds;
  if (subscribedChannelIds)
  {
    v4 = [subscribedChannelIds count];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  connection = [(TRIPushServiceConnection *)self connection];
  [connection setDelegate:0];

  v4.receiver = self;
  v4.super_class = TRIPushServiceConnection;
  [(TRIPushServiceConnection *)&v4 dealloc];
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  v9 = *MEMORY[0x277D85DE8];
  failuresCopy = failures;
  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = failuresCopy;
    _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Failed to subscribe to some channels: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = messageCopy;
  if (messageCopy)
  {
    userInfo = [messageCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"notification-content"];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
      if (v9)
      {
        v20 = 0;
        channelID2 = [objc_alloc(MEMORY[0x277D73BA8]) initWithData:v9 error:&v20];
        userInfo3 = v20;
        v12 = TRILogCategory_Server();
        triDelegate = v12;
        if (channelID2)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [channelID2 description];
            *buf = 138412290;
            v22 = v14;
            _os_log_impl(&dword_26F567000, triDelegate, OS_LOG_TYPE_DEFAULT, "Received notification: %@", buf, 0xCu);
          }

          triDelegate = [(TRIPushServiceConnection *)self triDelegate];
          [triDelegate didReceivePushNotification:channelID2];
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          userInfo2 = [v6 userInfo];
          channelID = [v6 channelID];
          *buf = 138412802;
          v22 = userInfo3;
          v23 = 2112;
          v24 = userInfo2;
          v25 = 2112;
          v26 = channelID;
          _os_log_error_impl(&dword_26F567000, triDelegate, OS_LOG_TYPE_ERROR, "Unable to deserialize push notification with decode error %@. Received %@ on channel %@", buf, 0x20u);
        }

        goto LABEL_18;
      }

      userInfo3 = TRILogCategory_Server();
      if (!os_log_type_enabled(userInfo3, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }

      channelID2 = [v6 channelID];
      *buf = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = channelID2;
      v15 = "Received invalid base 64 notification content. Received %@ on channel %@";
      v16 = userInfo3;
    }

    else
    {
      v9 = TRILogCategory_Server();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_20:

        goto LABEL_21;
      }

      userInfo3 = [v6 userInfo];
      channelID2 = [v6 channelID];
      *buf = 138543618;
      v22 = userInfo3;
      v23 = 2114;
      v24 = channelID2;
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
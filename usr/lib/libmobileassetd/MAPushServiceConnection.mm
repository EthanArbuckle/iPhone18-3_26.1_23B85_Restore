@interface MAPushServiceConnection
- (MAPushServiceConnection)initWithDelegate:(id)delegate;
- (id)_APSConnectionEnvironment;
- (id)_publicChannelForPushChannel:(id)channel;
- (id)subscribedChannels;
- (unint64_t)_subscribedChannelCount;
- (void)_recordFailedOperation:(id)operation forReason:(id)reason;
- (void)_recordOperation:(id)operation;
- (void)_subscribeToChannel:(id)channel;
- (void)_unsubscribeFromChannel:(id)channel;
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)dealloc;
- (void)subscribeToChannel:(id)channel;
- (void)unsubscribeFromChannel:(id)channel;
@end

@implementation MAPushServiceConnection

- (MAPushServiceConnection)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = MAPushServiceConnection;
  v6 = [(MAPushServiceConnection *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mobileassetd.pushServiceQueue", v8);
    pushServiceQueue = v7->_pushServiceQueue;
    v7->_pushServiceQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.mobileassetd.subscriptionRequestQueue", v11);
    subscriptionRequestQueue = v7->_subscriptionRequestQueue;
    v7->_subscriptionRequestQueue = v12;

    _APSConnectionEnvironment = [(MAPushServiceConnection *)v7 _APSConnectionEnvironment];
    v15 = [APSConnection alloc];
    pushServiceQueue = [(MAPushServiceConnection *)v7 pushServiceQueue];
    v17 = [v15 initWithEnvironmentName:_APSConnectionEnvironment namedDelegatePort:@"com.apple.aps.mobileassetd" queue:pushServiceQueue];
    connection = v7->_connection;
    v7->_connection = v17;

    connection = [(MAPushServiceConnection *)v7 connection];

    if (connection)
    {
      v26 = @"com.apple.mobileassetd";
      v20 = [NSArray arrayWithObjects:&v26 count:1];
      connection2 = [(MAPushServiceConnection *)v7 connection];
      [connection2 _setOpportunisticTopics:v20];

      connection3 = [(MAPushServiceConnection *)v7 connection];
      [connection3 setDelegate:v7];
    }

    else
    {
      connection3 = _MADLog(@"PushNotification");
      if (os_log_type_enabled(connection3, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_impl(&dword_0, connection3, OS_LOG_TYPE_ERROR, "Failed to create an APSConnection", v24, 2u);
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  connection = [(MAPushServiceConnection *)self connection];
  [connection setDelegate:0];

  v4.receiver = self;
  v4.super_class = MAPushServiceConnection;
  [(MAPushServiceConnection *)&v4 dealloc];
}

- (id)_APSConnectionEnvironment
{
  v8 = 0;
  AppIntegerValue = _MAPreferencesGetAppIntegerValue(@"PushNotificationEnvironment", &v8);
  if (AppIntegerValue >= 4)
  {
    v4 = _MADLog(@"PushNotification");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Default to product cloud channel environment", v7, 2u);
    }

    v3 = &APSEnvironmentProduction;
  }

  else
  {
    v3 = *(&off_4B4BB0 + AppIntegerValue);
  }

  v5 = *v3;

  return v5;
}

- (void)subscribeToChannel:(id)channel
{
  channelCopy = channel;
  subscriptionRequestQueue = [(MAPushServiceConnection *)self subscriptionRequestQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46__MAPushServiceConnection_subscribeToChannel___block_invoke;
  v7[3] = &unk_4B2B18;
  v7[4] = self;
  v8 = channelCopy;
  v6 = channelCopy;
  dispatch_async(subscriptionRequestQueue, v7);
}

- (void)_recordOperation:(id)operation
{
  operationCopy = operation;
  identifier = [operationCopy identifier];
  populationTypeString = [operationCopy populationTypeString];

  [MADAutoAssetHistory recordOperation:1300 fromLayer:7 forPushChannelID:identifier forPopulationType:populationTypeString failingWithError:0];
}

- (void)_recordFailedOperation:(id)operation forReason:(id)reason
{
  reasonCopy = reason;
  operationCopy = operation;
  identifier = [operationCopy identifier];
  v8 = identifier;
  if (identifier)
  {
    v9 = identifier;
  }

  else
  {
    v9 = @"N";
  }

  populationTypeString = [operationCopy populationTypeString];

  if (populationTypeString)
  {
    v11 = populationTypeString;
  }

  else
  {
    v11 = @"N";
  }

  v14 = NSLocalizedDescriptionKey;
  v15 = reasonCopy;
  v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:911 userInfo:v12];
  [MADAutoAssetHistory recordFailedOperation:1300 fromLayer:7 forPushChannelID:v9 forPopulationType:v11 failingWithError:v13];
}

- (void)_subscribeToChannel:(id)channel
{
  channelCopy = channel;
  _subscribedChannelCount = [(MAPushServiceConnection *)self _subscribedChannelCount];
  if (_subscribedChannelCount < 0x64)
  {
    v8 = [(MAPushServiceConnection *)self _publicChannelForPushChannel:channelCopy];
    v9 = _MADLog(@"PushNotification");
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v8;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Subscribing to channel %{public}@", &v12, 0xCu);
      }

      connection = [(MAPushServiceConnection *)self connection];
      [connection subscribeToChannel:v8 forTopic:@"com.apple.mobileassetd"];

      [(MAPushServiceConnection *)self _recordOperation:channelCopy];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 138543362;
        v13 = channelCopy;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Could not subscribe to channel %{public}@", &v12, 0xCu);
      }

      [(MAPushServiceConnection *)self _recordFailedOperation:channelCopy forReason:@"Could not subscribe to channel"];
    }
  }

  else
  {
    v6 = _subscribedChannelCount;
    v7 = _MADLog(@"PushNotification");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218240;
      v13 = v6;
      v14 = 2048;
      v15 = 100;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "New subscription denied since we reached the channel limit (%tu >= %tu)", &v12, 0x16u);
    }

    [(MAPushServiceConnection *)self _recordFailedOperation:channelCopy forReason:@"New subscription denied since we reached the channel limit"];
  }
}

- (void)unsubscribeFromChannel:(id)channel
{
  channelCopy = channel;
  subscriptionRequestQueue = [(MAPushServiceConnection *)self subscriptionRequestQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__MAPushServiceConnection_unsubscribeFromChannel___block_invoke;
  v7[3] = &unk_4B2B18;
  v7[4] = self;
  v8 = channelCopy;
  v6 = channelCopy;
  dispatch_async(subscriptionRequestQueue, v7);
}

- (void)_unsubscribeFromChannel:(id)channel
{
  channelCopy = channel;
  v5 = [(MAPushServiceConnection *)self _publicChannelForPushChannel:channelCopy];
  v6 = _MADLog(@"PushNotification");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = channelCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Unsubscribing from channel %{public}@", &v9, 0xCu);
    }

    connection = [(MAPushServiceConnection *)self connection];
    [connection unsubscribeFromChannel:v5 forTopic:@"com.apple.mobileassetd"];

    [(MAPushServiceConnection *)self _recordOperation:channelCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = channelCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Could not unsubscribe from channel %{public}@", &v9, 0xCu);
    }

    [(MAPushServiceConnection *)self _recordFailedOperation:channelCopy forReason:@"Could not unsubscribe from channel"];
  }
}

- (id)_publicChannelForPushChannel:(id)channel
{
  channelCopy = channel;
  v5 = channelCopy;
  if (channelCopy && ([channelCopy base64ChannelId], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [NSData alloc];
    base64ChannelId = [v5 base64ChannelId];
    v9 = [v7 initWithBase64EncodedString:base64ChannelId options:0];

    if ([v9 length] > 0x10)
    {
      v10 = _MADLog(@"PushNotification");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543874;
        v17 = v5;
        v18 = 2048;
        v19 = [v9 length];
        v20 = 2048;
        v21 = 16;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Received channel id %{public}@ with length %tu > %tu", &v16, 0x20u);
      }

      [(MAPushServiceConnection *)self _recordFailedOperation:v5 forReason:@"No available cloud channel"];
    }

    v11 = [PKPublicChannel alloc];
    base64ChannelId2 = [v5 base64ChannelId];
    v13 = [v11 initWithChannelID:base64ChannelId2];

    [(MAPushServiceConnection *)self _recordOperation:v5];
  }

  else
  {
    v14 = _MADLog(@"PushNotification");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "No available cloud channel", &v16, 2u);
    }

    [(MAPushServiceConnection *)self _recordFailedOperation:v5 forReason:@"No available cloud channel"];
    v13 = 0;
  }

  return v13;
}

- (id)subscribedChannels
{
  connection = [(MAPushServiceConnection *)self connection];
  v23 = 0;
  v3 = [connection registeredChannelsForTopic:@"com.apple.mobileassetd" error:&v23];
  v4 = v23;

  if (v3)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [MAPushChannel alloc];
          channelID = [v11 channelID];
          v15 = [(MAPushChannel *)v13 initWithIdentifier:channelID];

          if (v15)
          {
            [v5 addObject:v15];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v8);
    }

    v16 = [v5 copy];
    v3 = v18;
  }

  else
  {
    v5 = _MADLog(@"PushNotification");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Couldn't get registered channels: %{public}@", buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

- (unint64_t)_subscribedChannelCount
{
  subscribedChannels = [(MAPushServiceConnection *)self subscribedChannels];
  v3 = subscribedChannels;
  if (subscribedChannels)
  {
    v4 = [subscribedChannels count];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  failuresCopy = failures;
  v6 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v26 = failuresCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to subscribe to some channels: %{public}@", buf, 0xCu);
  }

  delegate = [(MAPushServiceConnection *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = +[NSMutableDictionary dictionary];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = failuresCopy;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 failureReason]);
          channelID = [v15 channelID];
          [v9 setObject:v16 forKeyedSubscript:channelID];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    delegate2 = [(MAPushServiceConnection *)self delegate];
    v19 = [v9 copy];
    [delegate2 channelSubscriptionsFailedWithReasons:v19];
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  v6 = messageCopy;
  if (messageCopy)
  {
    userInfo = [messageCopy userInfo];
    if (userInfo)
    {
      v8 = [[MAPushNotification alloc] initWithUserInfo:userInfo];
      v9 = _MADLog(@"PushNotification");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = userInfo;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Received notification with payload: %{public}@", &v11, 0xCu);
      }

      delegate = [(MAPushServiceConnection *)self delegate];
      [delegate didReceivePushNotification:v8];
    }

    else
    {
      v8 = _MADLog(@"PushNotification");
      if (!os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        goto LABEL_12;
      }

      delegate = [v6 channelID];
      v11 = 138543362;
      v12 = delegate;
      _os_log_impl(&dword_0, &v8->super, OS_LOG_TYPE_ERROR, "message (%{public}@) called without userInfo", &v11, 0xCu);
    }

    goto LABEL_11;
  }

  userInfo = _MADLog(@"PushNotification");
  if (os_log_type_enabled(userInfo, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_0, userInfo, OS_LOG_TYPE_ERROR, "-connection:didReceiveIncomingMessage: called without a message", &v11, 2u);
  }

LABEL_12:
}

@end
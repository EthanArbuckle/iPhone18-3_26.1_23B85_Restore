@interface MAPushServiceConnection
- (MAPushServiceConnection)initWithDelegate:(id)a3;
- (id)_APSConnectionEnvironment;
- (id)_publicChannelForPushChannel:(id)a3;
- (id)subscribedChannels;
- (unint64_t)_subscribedChannelCount;
- (void)_recordFailedOperation:(id)a3 forReason:(id)a4;
- (void)_recordOperation:(id)a3;
- (void)_subscribeToChannel:(id)a3;
- (void)_unsubscribeFromChannel:(id)a3;
- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)dealloc;
- (void)subscribeToChannel:(id)a3;
- (void)unsubscribeFromChannel:(id)a3;
@end

@implementation MAPushServiceConnection

- (MAPushServiceConnection)initWithDelegate:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = MAPushServiceConnection;
  v6 = [(MAPushServiceConnection *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mobileassetd.pushServiceQueue", v8);
    pushServiceQueue = v7->_pushServiceQueue;
    v7->_pushServiceQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.mobileassetd.subscriptionRequestQueue", v11);
    subscriptionRequestQueue = v7->_subscriptionRequestQueue;
    v7->_subscriptionRequestQueue = v12;

    v14 = [(MAPushServiceConnection *)v7 _APSConnectionEnvironment];
    v15 = [APSConnection alloc];
    v16 = [(MAPushServiceConnection *)v7 pushServiceQueue];
    v17 = [v15 initWithEnvironmentName:v14 namedDelegatePort:@"com.apple.aps.mobileassetd" queue:v16];
    connection = v7->_connection;
    v7->_connection = v17;

    v19 = [(MAPushServiceConnection *)v7 connection];

    if (v19)
    {
      v26 = @"com.apple.mobileassetd";
      v20 = [NSArray arrayWithObjects:&v26 count:1];
      v21 = [(MAPushServiceConnection *)v7 connection];
      [v21 _setOpportunisticTopics:v20];

      v22 = [(MAPushServiceConnection *)v7 connection];
      [v22 setDelegate:v7];
    }

    else
    {
      v22 = _MADLog(@"PushNotification");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Failed to create an APSConnection", v24, 2u);
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(MAPushServiceConnection *)self connection];
  [v3 setDelegate:0];

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

- (void)subscribeToChannel:(id)a3
{
  v4 = a3;
  v5 = [(MAPushServiceConnection *)self subscriptionRequestQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46__MAPushServiceConnection_subscribeToChannel___block_invoke;
  v7[3] = &unk_4B2B18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_recordOperation:(id)a3
{
  v3 = a3;
  v5 = [v3 identifier];
  v4 = [v3 populationTypeString];

  [MADAutoAssetHistory recordOperation:1300 fromLayer:7 forPushChannelID:v5 forPopulationType:v4 failingWithError:0];
}

- (void)_recordFailedOperation:(id)a3 forReason:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 identifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"N";
  }

  v10 = [v6 populationTypeString];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"N";
  }

  v14 = NSLocalizedDescriptionKey;
  v15 = v5;
  v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:911 userInfo:v12];
  [MADAutoAssetHistory recordFailedOperation:1300 fromLayer:7 forPushChannelID:v9 forPopulationType:v11 failingWithError:v13];
}

- (void)_subscribeToChannel:(id)a3
{
  v4 = a3;
  v5 = [(MAPushServiceConnection *)self _subscribedChannelCount];
  if (v5 < 0x64)
  {
    v8 = [(MAPushServiceConnection *)self _publicChannelForPushChannel:v4];
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

      v11 = [(MAPushServiceConnection *)self connection];
      [v11 subscribeToChannel:v8 forTopic:@"com.apple.mobileassetd"];

      [(MAPushServiceConnection *)self _recordOperation:v4];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 138543362;
        v13 = v4;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Could not subscribe to channel %{public}@", &v12, 0xCu);
      }

      [(MAPushServiceConnection *)self _recordFailedOperation:v4 forReason:@"Could not subscribe to channel"];
    }
  }

  else
  {
    v6 = v5;
    v7 = _MADLog(@"PushNotification");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218240;
      v13 = v6;
      v14 = 2048;
      v15 = 100;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "New subscription denied since we reached the channel limit (%tu >= %tu)", &v12, 0x16u);
    }

    [(MAPushServiceConnection *)self _recordFailedOperation:v4 forReason:@"New subscription denied since we reached the channel limit"];
  }
}

- (void)unsubscribeFromChannel:(id)a3
{
  v4 = a3;
  v5 = [(MAPushServiceConnection *)self subscriptionRequestQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__MAPushServiceConnection_unsubscribeFromChannel___block_invoke;
  v7[3] = &unk_4B2B18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_unsubscribeFromChannel:(id)a3
{
  v4 = a3;
  v5 = [(MAPushServiceConnection *)self _publicChannelForPushChannel:v4];
  v6 = _MADLog(@"PushNotification");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Unsubscribing from channel %{public}@", &v9, 0xCu);
    }

    v8 = [(MAPushServiceConnection *)self connection];
    [v8 unsubscribeFromChannel:v5 forTopic:@"com.apple.mobileassetd"];

    [(MAPushServiceConnection *)self _recordOperation:v4];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Could not unsubscribe from channel %{public}@", &v9, 0xCu);
    }

    [(MAPushServiceConnection *)self _recordFailedOperation:v4 forReason:@"Could not unsubscribe from channel"];
  }
}

- (id)_publicChannelForPushChannel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 base64ChannelId], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [NSData alloc];
    v8 = [v5 base64ChannelId];
    v9 = [v7 initWithBase64EncodedString:v8 options:0];

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
    v12 = [v5 base64ChannelId];
    v13 = [v11 initWithChannelID:v12];

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
  v2 = [(MAPushServiceConnection *)self connection];
  v23 = 0;
  v3 = [v2 registeredChannelsForTopic:@"com.apple.mobileassetd" error:&v23];
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
          v14 = [v11 channelID];
          v15 = [(MAPushChannel *)v13 initWithIdentifier:v14];

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
  v2 = [(MAPushServiceConnection *)self subscribedChannels];
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

- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4
{
  v5 = a4;
  v6 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to subscribe to some channels: %{public}@", buf, 0xCu);
  }

  v7 = [(MAPushServiceConnection *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = +[NSMutableDictionary dictionary];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v5;
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
          v17 = [v15 channelID];
          [v9 setObject:v16 forKeyedSubscript:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v18 = [(MAPushServiceConnection *)self delegate];
    v19 = [v9 copy];
    [v18 channelSubscriptionsFailedWithReasons:v19];
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 userInfo];
    if (v7)
    {
      v8 = [[MAPushNotification alloc] initWithUserInfo:v7];
      v9 = _MADLog(@"PushNotification");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v7;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Received notification with payload: %{public}@", &v11, 0xCu);
      }

      v10 = [(MAPushServiceConnection *)self delegate];
      [v10 didReceivePushNotification:v8];
    }

    else
    {
      v8 = _MADLog(@"PushNotification");
      if (!os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        goto LABEL_12;
      }

      v10 = [v6 channelID];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_0, &v8->super, OS_LOG_TYPE_ERROR, "message (%{public}@) called without userInfo", &v11, 0xCu);
    }

    goto LABEL_11;
  }

  v7 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "-connection:didReceiveIncomingMessage: called without a message", &v11, 2u);
  }

LABEL_12:
}

@end
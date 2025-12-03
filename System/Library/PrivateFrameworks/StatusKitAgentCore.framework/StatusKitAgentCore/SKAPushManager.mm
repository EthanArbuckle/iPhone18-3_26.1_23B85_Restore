@interface SKAPushManager
+ (id)logger;
- (BOOL)_sharedChannelsIsDisabledByServer;
- (SKAPushManager)initWithQueue:(id)queue systemMonitor:(id)monitor apsConnection:(id)connection inTrafficMode:(BOOL)mode;
- (SKAPushManagingDelegate)delegate;
- (id)_pushEnvironment;
- (id)pushToken;
- (id)serverTime;
- (void)_createChannelWithProtoData:(id)data retryCount:(unint64_t)count completion:(id)completion;
- (void)_initializeAPSConnection;
- (void)_provisionPayload:(id)payload retryCount:(unint64_t)count completion:(id)completion;
- (void)_publishStatus:(id)status retryCount:(unint64_t)count completion:(id)completion;
- (void)_sendPresenceMessage:(id)message retryCount:(unint64_t)count completion:(id)completion;
- (void)_subscribeToChannels:(id)channels forTopic:(id)topic;
- (void)_subscribedChannelsForTopic:(id)topic WithCompletion:(id)completion;
- (void)_switchFilterToEnabledForTopic:(id)topic;
- (void)_switchFilterToNonwakingForTopic:(id)topic;
- (void)_switchFilterToOpportunisticForTopic:(id)topic;
- (void)_unsubscribeFromChannels:(id)channels forTopic:(id)topic;
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)disableActivityTracking;
- (void)enableActivityTracking;
- (void)subscribeToStatusChannels:(id)channels;
- (void)subscribedPresenceChannelsWithCompletion:(id)completion;
- (void)subscribedStatusChannelsWithCompletion:(id)completion;
- (void)switchTopic:(int64_t)topic toFilter:(int64_t)filter;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation SKAPushManager

- (SKAPushManager)initWithQueue:(id)queue systemMonitor:(id)monitor apsConnection:(id)connection inTrafficMode:(BOOL)mode
{
  queueCopy = queue;
  monitorCopy = monitor;
  connectionCopy = connection;
  v19.receiver = self;
  v19.super_class = SKAPushManager;
  v14 = [(SKAPushManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, queue);
    objc_storeStrong(&v15->_systemMonitor, monitor);
    [(SKASystemMonitor *)v15->_systemMonitor addListener:v15];
    objc_storeStrong(&v15->_connection, connection);
    v15->_trafficModeEnabled = mode;
    [(SKAPushManager *)v15 _initializeAPSConnection];
    if (v15->_trafficModeEnabled)
    {
      v16 = +[SKAPushManager logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "In Traffic Mode--will not honor status subscriptions and will drop incoming status's", v18, 2u);
      }
    }
  }

  return v15;
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = +[SKAPushManager logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Received did leave first unlock notification.", v4, 2u);
  }

  [(SKAPushManager *)self _initializeAPSConnection];
}

- (void)_initializeAPSConnection
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (!self->_connection)
  {
    isUnderFirstDataProtectionLock = [(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock];
    _pushEnvironment = +[SKAPushManager logger];
    v5 = os_log_type_enabled(_pushEnvironment, OS_LOG_TYPE_DEFAULT);
    if (isUnderFirstDataProtectionLock)
    {
      if (v5)
      {
        *v12 = 0;
        _os_log_impl(&dword_220099000, _pushEnvironment, OS_LOG_TYPE_DEFAULT, "Deferring connection initialization as device is before first unlock.", v12, 2u);
      }
    }

    else
    {
      if (v5)
      {
        *v12 = 0;
        _os_log_impl(&dword_220099000, _pushEnvironment, OS_LOG_TYPE_DEFAULT, "Initializing APS connection.", v12, 2u);
      }

      _pushEnvironment = [(SKAPushManager *)self _pushEnvironment];
      v6 = [objc_alloc(MEMORY[0x277CEEA10]) initWithEnvironmentName:_pushEnvironment namedDelegatePort:@"com.apple.aps.StatusKit" queue:self->_queue];
      connection = self->_connection;
      self->_connection = v6;

      [(APSConnection *)self->_connection setDelegate:self];
      v14[0] = @"com.apple.icloud.presence.mode.status";
      v14[1] = @"com.apple.icloud.presence.shared.experience";
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      [(APSConnection *)self->_connection _setNonWakingTopics:v8];

      v9 = self->_connection;
      v13 = @"com.apple.icloud.presence.mode.status";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
      [(APSConnection *)v9 setUltraConstrainedTopics:v10];

      [(APSConnection *)self->_connection setTrackActivityPresence:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_pushEnvironment
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"useSandbox", @"com.apple.StatusKitAgent", &keyExistsAndHasValidFormat);
  v3 = keyExistsAndHasValidFormat;
  v4 = +[SKAPushManager logger];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v6 = AppBooleanValue == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v5)
    {
      *v10 = 0;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Using production push environment", v10, 2u);
    }

    v7 = MEMORY[0x277CEE9F0];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Using sandbox push environment", buf, 2u);
    }

    v7 = MEMORY[0x277CEE9E8];
  }

  v8 = *v7;

  return v8;
}

- (void)_createChannelWithProtoData:(id)data retryCount:(unint64_t)count completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([(SKAPushManager *)self _sharedChannelsIsDisabledByServer])
  {
    v10 = +[SKAPushManager logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    v11 = 102;
LABEL_20:
    v15 = [SKAError errorWithCode:v11];
    completionCopy[2](completionCopy, 0, v15);
    goto LABEL_21;
  }

  if (self->_trafficModeEnabled)
  {
    v12 = +[SKAPushManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    v11 = 602;
    goto LABEL_20;
  }

  if (!self->_connection)
  {
    v19 = +[SKAPushManager logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    if ([(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
    {
      v11 = 600;
    }

    else
    {
      v20 = +[SKAPushManager logger];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
      }

      v11 = 601;
    }

    goto LABEL_20;
  }

  v13 = self->_queue;
  v14 = [objc_alloc(MEMORY[0x277D07DF8]) initWithProtoData:dataCopy messageType:1];
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke;
  v24[3] = &unk_27843E308;
  objc_copyWeak(v28, &location);
  v15 = v13;
  v25 = v15;
  v27 = completionCopy;
  v28[1] = count;
  v26 = dataCopy;
  [v14 setCompletionBlock:v24];
  [v14 setTimeout:120.0];
  v16 = +[SKAPushManager logger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Sending create channel message.", buf, 2u);
  }

  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke_35;
  v21[3] = &unk_27843E330;
  v21[4] = self;
  v22 = v14;
  v18 = v14;
  dispatch_async(queue, v21);

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
LABEL_21:
}

void __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = v7;
  if (a4)
  {
    v11 = +[SKAPushManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke_cold_1(v8, v11);
    }

    v12 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke_30;
    block[3] = &unk_27843E2B8;
    v36 = *(a1 + 48);
    v35 = v8;
    dispatch_async(v12, block);

    v13 = v36;
  }

  else
  {
    v33 = 0;
    v14 = [WeakRetained delegate];
    v15 = [v14 shouldRetryRequestForResponse:v10 withRetryInterval:&v33 currentRetry:*(a1 + 64)];

    v16 = v33;
    v17 = +[SKAPushManager logger];
    v18 = v17;
    if (v15 && v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 64);
        *buf = 138412802;
        v38 = v10;
        v39 = 1024;
        v40 = v33;
        v41 = 2048;
        v42 = v25;
        _os_log_error_impl(&dword_220099000, v18, OS_LOG_TYPE_ERROR, "Retry requested for message %@, enqueueing after %u seconds (retries: %lu)", buf, 0x1Cu);
      }

      v19 = dispatch_time(0, 1000000000 * v33);
      v20 = [WeakRetained queue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke_32;
      v29[3] = &unk_27843E2E0;
      v29[4] = WeakRetained;
      v21 = *(a1 + 40);
      v22 = *(a1 + 64);
      v30 = v21;
      v32 = v22;
      v31 = *(a1 + 48);
      dispatch_after(v19, v20, v29);

      v13 = v30;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Create channel reverse push completed, calling completion with proto response", buf, 2u);
      }

      v23 = *(a1 + 32);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke_33;
      v26[3] = &unk_27843E2B8;
      v28 = *(a1 + 48);
      v27 = v10;
      dispatch_async(v23, v26);

      v13 = v28;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke_30(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [SKAError errorWithCode:603 underlyingError:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

void __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke_33(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) protoResponse];
  (*(v1 + 16))(v1, v2, 0);
}

void __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke_35(uint64_t a1)
{
  v2 = [*(a1 + 32) messageDelivery];
  [v2 sendMessage:*(a1 + 40)];
}

- (void)switchTopic:(int64_t)topic toFilter:(int64_t)filter
{
  if (topic)
  {
    if (topic == 1)
    {
      v6 = @"com.apple.icloud.presence.shared.experience";
    }

    else
    {
      v7 = +[SKAPushManager logger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SKAPushManager switchTopic:toFilter:];
      }

      v6 = &stru_2833DEA50;
    }
  }

  else
  {
    v6 = @"com.apple.icloud.presence.mode.status";
  }

  if (filter == 2)
  {
    [(SKAPushManager *)self _switchFilterToEnabledForTopic:v6];
  }

  else if (filter == 1)
  {
    [(SKAPushManager *)self _switchFilterToOpportunisticForTopic:v6];
  }

  else if (filter)
  {
    v8 = +[SKAPushManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [SKAPushManager switchTopic:toFilter:];
    }
  }

  else
  {
    [(SKAPushManager *)self _switchFilterToNonwakingForTopic:v6];
  }
}

- (void)_switchFilterToNonwakingForTopic:(id)topic
{
  v17 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  connection = self->_connection;
  v6 = +[SKAPushManager logger];
  v7 = v6;
  if (connection)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = topicCopy;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Switching %@ to non-waking", &v15, 0xCu);
    }

    nonWakingTopics = [(APSConnection *)self->_connection nonWakingTopics];
    v9 = [nonWakingTopics mutableCopy];

    opportunisticTopics = [(APSConnection *)self->_connection opportunisticTopics];
    v11 = [opportunisticTopics mutableCopy];

    enabledTopics = [(APSConnection *)self->_connection enabledTopics];
    v13 = [enabledTopics mutableCopy];

    if (!-[NSObject containsObject:](v9, "containsObject:", topicCopy) || ([v13 containsObject:topicCopy] & 1) != 0 || objc_msgSend(v11, "containsObject:", topicCopy))
    {
      if ([v11 containsObject:topicCopy])
      {
        [v11 removeObject:topicCopy];
      }

      if ([v13 containsObject:topicCopy])
      {
        [v13 removeObject:topicCopy];
      }

      if (([v9 containsObject:topicCopy]& 1) == 0)
      {
        [v9 addObject:topicCopy];
      }

      [(APSConnection *)self->_connection setEnabledTopics:v13 ignoredTopics:MEMORY[0x277CBEBF8] opportunisticTopics:v11 nonWakingTopics:v9];
    }

LABEL_20:
    goto LABEL_21;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
  }

  if (![(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
  {
    v9 = +[SKAPushManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    goto LABEL_20;
  }

LABEL_21:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_switchFilterToOpportunisticForTopic:(id)topic
{
  v17 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  connection = self->_connection;
  v6 = +[SKAPushManager logger];
  v7 = v6;
  if (connection)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = topicCopy;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Switching %@ to opportunistic", &v15, 0xCu);
    }

    nonWakingTopics = [(APSConnection *)self->_connection nonWakingTopics];
    v9 = [nonWakingTopics mutableCopy];

    opportunisticTopics = [(APSConnection *)self->_connection opportunisticTopics];
    v11 = [opportunisticTopics mutableCopy];

    enabledTopics = [(APSConnection *)self->_connection enabledTopics];
    v13 = [enabledTopics mutableCopy];

    if ((-[NSObject containsObject:](v9, "containsObject:", topicCopy) & 1) != 0 || ([v13 containsObject:topicCopy] & 1) != 0 || (objc_msgSend(v11, "containsObject:", topicCopy) & 1) == 0)
    {
      if ([v9 containsObject:topicCopy])
      {
        [v9 removeObject:topicCopy];
      }

      if ([v13 containsObject:topicCopy])
      {
        [v13 removeObject:topicCopy];
      }

      if (([v11 containsObject:topicCopy] & 1) == 0)
      {
        [v11 addObject:topicCopy];
      }

      [(APSConnection *)self->_connection setEnabledTopics:v13 ignoredTopics:MEMORY[0x277CBEBF8] opportunisticTopics:v11 nonWakingTopics:v9];
    }

LABEL_20:
    goto LABEL_21;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
  }

  if (![(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
  {
    v9 = +[SKAPushManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    goto LABEL_20;
  }

LABEL_21:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_switchFilterToEnabledForTopic:(id)topic
{
  v17 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  connection = self->_connection;
  v6 = +[SKAPushManager logger];
  v7 = v6;
  if (connection)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = topicCopy;
      _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Switching %@ to enabled", &v15, 0xCu);
    }

    nonWakingTopics = [(APSConnection *)self->_connection nonWakingTopics];
    v9 = [nonWakingTopics mutableCopy];

    opportunisticTopics = [(APSConnection *)self->_connection opportunisticTopics];
    v11 = [opportunisticTopics mutableCopy];

    enabledTopics = [(APSConnection *)self->_connection enabledTopics];
    v13 = [enabledTopics mutableCopy];

    if ((-[NSObject containsObject:](v9, "containsObject:", topicCopy) & 1) != 0 || ![v13 containsObject:topicCopy] || objc_msgSend(v11, "containsObject:", topicCopy))
    {
      if ([v9 containsObject:topicCopy])
      {
        [v9 removeObject:topicCopy];
      }

      if ([v11 containsObject:topicCopy])
      {
        [v11 removeObject:topicCopy];
      }

      if (([v13 containsObject:topicCopy] & 1) == 0)
      {
        [v13 addObject:topicCopy];
      }

      [(APSConnection *)self->_connection setEnabledTopics:v13 ignoredTopics:MEMORY[0x277CBEBF8] opportunisticTopics:v11 nonWakingTopics:v9];
    }

LABEL_20:
    goto LABEL_21;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
  }

  if (![(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
  {
    v9 = +[SKAPushManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    goto LABEL_20;
  }

LABEL_21:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_publishStatus:(id)status retryCount:(unint64_t)count completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  if ([(SKAPushManager *)self _sharedChannelsIsDisabledByServer])
  {
    v10 = +[SKAPushManager logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    v11 = 102;
LABEL_20:
    v18 = [SKAError errorWithCode:v11];
    completionCopy[2](completionCopy, 0, v18);
    goto LABEL_21;
  }

  if (self->_trafficModeEnabled)
  {
    v12 = +[SKAPushManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    v11 = 602;
    goto LABEL_20;
  }

  connection = self->_connection;
  v14 = +[SKAPushManager logger];
  v15 = v14;
  if (!connection)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    if ([(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
    {
      v11 = 600;
    }

    else
    {
      v21 = +[SKAPushManager logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
      }

      v11 = 601;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Publishing status", buf, 2u);
  }

  v16 = self->_queue;
  v17 = [objc_alloc(MEMORY[0x277D07DF8]) initWithProtoData:statusCopy messageType:2];
  objc_initWeak(buf, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke;
  v24[3] = &unk_27843E308;
  objc_copyWeak(v28, buf);
  v18 = v16;
  v25 = v18;
  v27 = completionCopy;
  v28[1] = count;
  v26 = statusCopy;
  [v17 setCompletionBlock:v24];
  [v17 setTimeout:120.0];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke_2;
  block[3] = &unk_27843E330;
  block[4] = self;
  v23 = v17;
  v20 = v17;
  dispatch_async(queue, block);

  objc_destroyWeak(v28);
  objc_destroyWeak(buf);
LABEL_21:
}

void __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = v7;
  if (a4)
  {
    v11 = +[SKAPushManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke_cold_1();
    }

    v12 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke_36;
    block[3] = &unk_27843E2B8;
    v36 = *(a1 + 48);
    v35 = v8;
    dispatch_async(v12, block);

    v13 = v36;
  }

  else
  {
    v33 = 0;
    v14 = [WeakRetained delegate];
    v15 = [v14 shouldRetryRequestForResponse:v10 withRetryInterval:&v33 currentRetry:*(a1 + 64)];

    v16 = v33;
    v17 = +[SKAPushManager logger];
    v18 = v17;
    if (v15 && v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 64);
        *buf = 138412802;
        v38 = v10;
        v39 = 1024;
        v40 = v33;
        v41 = 2048;
        v42 = v25;
        _os_log_error_impl(&dword_220099000, v18, OS_LOG_TYPE_ERROR, "Retry requested for message %@, enqueueing after %u seconds (retries: %lu)", buf, 0x1Cu);
      }

      v19 = dispatch_time(0, 1000000000 * v33);
      v20 = [WeakRetained queue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke_37;
      v29[3] = &unk_27843E2E0;
      v29[4] = WeakRetained;
      v21 = *(a1 + 40);
      v22 = *(a1 + 64);
      v30 = v21;
      v32 = v22;
      v31 = *(a1 + 48);
      dispatch_after(v19, v20, v29);

      v13 = v30;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Publishing status, reverse push completed, calling completion with protobuf response data", buf, 2u);
      }

      v23 = *(a1 + 32);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke_38;
      v26[3] = &unk_27843E2B8;
      v28 = *(a1 + 48);
      v27 = v10;
      dispatch_async(v23, v26);

      v13 = v28;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke_36(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [SKAError errorWithCode:603 underlyingError:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

void __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke_38(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) protoResponse];
  (*(v1 + 16))(v1, v2, 0);
}

void __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) messageDelivery];
  [v2 sendMessage:*(a1 + 40)];
}

- (void)_provisionPayload:(id)payload retryCount:(unint64_t)count completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  if ([(SKAPushManager *)self _sharedChannelsIsDisabledByServer])
  {
    v10 = +[SKAPushManager logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    v11 = 102;
LABEL_20:
    v18 = [SKAError errorWithCode:v11];
    completionCopy[2](completionCopy, 0, v18);
    goto LABEL_21;
  }

  if (self->_trafficModeEnabled)
  {
    v12 = +[SKAPushManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    v11 = 602;
    goto LABEL_20;
  }

  connection = self->_connection;
  v14 = +[SKAPushManager logger];
  v15 = v14;
  if (!connection)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    if ([(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
    {
      v11 = 600;
    }

    else
    {
      v21 = +[SKAPushManager logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
      }

      v11 = 601;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Provisioning", buf, 2u);
  }

  v16 = self->_queue;
  v17 = [objc_alloc(MEMORY[0x277D07DF8]) initWithProtoData:payloadCopy messageType:3];
  objc_initWeak(buf, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke;
  v24[3] = &unk_27843E308;
  objc_copyWeak(v28, buf);
  v18 = v16;
  v25 = v18;
  v27 = completionCopy;
  v28[1] = count;
  v26 = payloadCopy;
  [v17 setCompletionBlock:v24];
  [v17 setTimeout:120.0];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke_2;
  block[3] = &unk_27843E330;
  block[4] = self;
  v23 = v17;
  v20 = v17;
  dispatch_async(queue, block);

  objc_destroyWeak(v28);
  objc_destroyWeak(buf);
LABEL_21:
}

void __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = v7;
  if (a4)
  {
    v11 = +[SKAPushManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke_cold_1();
    }

    v12 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke_39;
    block[3] = &unk_27843E2B8;
    v36 = *(a1 + 48);
    v35 = v8;
    dispatch_async(v12, block);

    v13 = v36;
  }

  else
  {
    v33 = 0;
    v14 = [WeakRetained delegate];
    v15 = [v14 shouldRetryRequestForResponse:v10 withRetryInterval:&v33 currentRetry:*(a1 + 64)];

    v16 = v33;
    v17 = +[SKAPushManager logger];
    v18 = v17;
    if (v15 && v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 64);
        *buf = 138412802;
        v38 = v10;
        v39 = 1024;
        v40 = v33;
        v41 = 2048;
        v42 = v25;
        _os_log_error_impl(&dword_220099000, v18, OS_LOG_TYPE_ERROR, "Retry requested for message %@, enqueueing after %u seconds (retries: %lu)", buf, 0x1Cu);
      }

      v19 = dispatch_time(0, 1000000000 * v33);
      v20 = [WeakRetained queue];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke_40;
      v29[3] = &unk_27843E2E0;
      v29[4] = WeakRetained;
      v21 = *(a1 + 40);
      v22 = *(a1 + 64);
      v30 = v21;
      v32 = v22;
      v31 = *(a1 + 48);
      dispatch_after(v19, v20, v29);

      v13 = v30;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Provisioning, reverse push completed, calling completion with protobuf response data", buf, 2u);
      }

      v23 = *(a1 + 32);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke_41;
      v26[3] = &unk_27843E2B8;
      v28 = *(a1 + 48);
      v27 = v10;
      dispatch_async(v23, v26);

      v13 = v28;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke_39(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [SKAError errorWithCode:603 underlyingError:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

void __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke_41(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) protoResponse];
  (*(v1 + 16))(v1, v2, 0);
}

void __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) messageDelivery];
  [v2 sendMessage:*(a1 + 40)];
}

- (void)enableActivityTracking
{
  connection = self->_connection;
  if (connection)
  {
    if (([(APSConnection *)connection trackActivityPresence]& 1) == 0)
    {
      v4 = self->_connection;

      [(APSConnection *)v4 setTrackActivityPresence:1];
    }
  }

  else
  {
    v5 = +[SKAPushManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager enableActivityTracking];
    }
  }
}

- (void)disableActivityTracking
{
  connection = self->_connection;
  if (connection)
  {
    if ([(APSConnection *)connection trackActivityPresence])
    {
      v4 = self->_connection;

      [(APSConnection *)v4 setTrackActivityPresence:0];
    }
  }

  else
  {
    v5 = +[SKAPushManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager enableActivityTracking];
    }
  }
}

- (id)pushToken
{
  connection = self->_connection;
  if (connection)
  {
    publicToken = [(APSConnection *)connection publicToken];
  }

  else
  {
    v4 = +[SKAPushManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager pushToken];
    }

    publicToken = 0;
  }

  return publicToken;
}

- (void)_sendPresenceMessage:(id)message retryCount:(unint64_t)count completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  if ([(SKAPushManager *)self _sharedChannelsIsDisabledByServer])
  {
    v10 = +[SKAPushManager logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    v11 = 102;
LABEL_20:
    v18 = [SKAError errorWithCode:v11];
    completionCopy[2](completionCopy, 0, v18);
    goto LABEL_21;
  }

  if (self->_trafficModeEnabled)
  {
    v12 = +[SKAPushManager logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    v11 = 602;
    goto LABEL_20;
  }

  connection = self->_connection;
  v14 = +[SKAPushManager logger];
  v15 = v14;
  if (!connection)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    if ([(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
    {
      v11 = 600;
    }

    else
    {
      v21 = +[SKAPushManager logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
      }

      v11 = 601;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Sending presence protobuff message to server", buf, 2u);
  }

  v16 = self->_queue;
  v17 = [[SKAProtobufMessage alloc] initWithPushTopic:@"com.apple.icloud.presence.channel.management" request:messageCopy];
  [(IDSBaseMessage *)v17 setWantsMultipleResponses:1];
  objc_initWeak(buf, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke;
  v24[3] = &unk_27843E308;
  objc_copyWeak(v28, buf);
  v18 = v16;
  v25 = v18;
  v27 = completionCopy;
  v28[1] = count;
  v26 = messageCopy;
  [(IDSBaseMessage *)v17 setCompletionBlock:v24];
  [(IDSBaseMessage *)v17 setTimeout:120.0];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke_2;
  block[3] = &unk_27843E330;
  block[4] = self;
  v23 = v17;
  v20 = v17;
  dispatch_async(queue, block);

  objc_destroyWeak(v28);
  objc_destroyWeak(buf);
LABEL_21:
}

void __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = v7;
  if (a4)
  {
    v11 = +[SKAPushManager logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke_cold_1();
    }

    v12 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke_43;
    block[3] = &unk_27843E2B8;
    v37 = *(a1 + 48);
    v36 = v8;
    dispatch_async(v12, block);

    v13 = v37;
  }

  else
  {
    v34 = 0;
    v14 = [WeakRetained delegate];
    v15 = [v14 shouldRetryRequestForResponse:v10 withRetryInterval:&v34 currentRetry:*(a1 + 64)];

    v16 = v34;
    v17 = +[SKAPushManager logger];
    v18 = v17;
    if (v15 && v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 64);
        *buf = 138412802;
        v39 = v10;
        v40 = 1024;
        v41 = v34;
        v42 = 2048;
        v43 = v26;
        _os_log_error_impl(&dword_220099000, v18, OS_LOG_TYPE_ERROR, "Retry requested for message %@, enqueueing after %u seconds (retries: %lu)", buf, 0x1Cu);
      }

      v19 = dispatch_time(0, 1000000000 * v34);
      v20 = [WeakRetained queue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke_44;
      v30[3] = &unk_27843E2E0;
      v30[4] = WeakRetained;
      v21 = *(a1 + 40);
      v22 = *(a1 + 64);
      v31 = v21;
      v33 = v22;
      v32 = *(a1 + 48);
      dispatch_after(v19, v20, v30);

      v13 = v31;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v10 uuid];
        *buf = 138412290;
        v39 = v23;
        _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "Presence protobuff sent, reverse push completed for request %@, calling completion with protobuf response data", buf, 0xCu);
      }

      v24 = *(a1 + 32);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke_45;
      v27[3] = &unk_27843E2B8;
      v29 = *(a1 + 48);
      v28 = v10;
      dispatch_async(v24, v27);

      v13 = v29;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke_43(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [SKAError errorWithCode:603 underlyingError:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

void __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke_45(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) responses];
  (*(v1 + 16))(v1, v2, 0);
}

void __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) messageDelivery];
  [v2 sendMessage:*(a1 + 40)];
}

- (void)subscribeToStatusChannels:(id)channels
{
  if (self->_trafficModeEnabled)
  {
    v7 = v3;
    v8 = v4;
    v5 = +[SKAPushManager logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Not subscribing to status channels because traffic mode is enabled", v6, 2u);
    }
  }

  else
  {

    [(SKAPushManager *)self _subscribeToChannels:channels forTopic:@"com.apple.icloud.presence.mode.status"];
  }
}

- (void)subscribedStatusChannelsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SKAPushManager_subscribedStatusChannelsWithCompletion___block_invoke;
  v6[3] = &unk_27843E248;
  v7 = completionCopy;
  v5 = completionCopy;
  [(SKAPushManager *)self _subscribedChannelsForTopic:@"com.apple.icloud.presence.mode.status" WithCompletion:v6];
}

- (void)subscribedPresenceChannelsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SKAPushManager_subscribedPresenceChannelsWithCompletion___block_invoke;
  v6[3] = &unk_27843E248;
  v7 = completionCopy;
  v5 = completionCopy;
  [(SKAPushManager *)self _subscribedChannelsForTopic:@"com.apple.icloud.presence.shared.experience" WithCompletion:v6];
}

- (void)_subscribeToChannels:(id)channels forTopic:(id)topic
{
  v32 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  topicCopy = topic;
  if ([(SKAPushManager *)self _sharedChannelsIsDisabledByServer])
  {
    v8 = +[SKAPushManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

LABEL_20:

    goto LABEL_21;
  }

  connection = self->_connection;
  v10 = +[SKAPushManager logger];
  v11 = v10;
  if (connection)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = channelsCopy;
      v30 = 2112;
      v31 = topicCopy;
      _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Subscribing to channels: %@ for topic %@", buf, 0x16u);
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = channelsCopy;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          v18 = objc_alloc(MEMORY[0x277CD9D98]);
          v19 = [v18 initWithChannelID:{v17, v23}];
          [v8 addObject:v19];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    connection = [(SKAPushManager *)self connection];
    v21 = [v8 copy];
    [connection subscribeToChannels:v21 forTopic:topicCopy];

    goto LABEL_20;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
  }

  if (![(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
  {
    v8 = +[SKAPushManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    goto LABEL_20;
  }

LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_unsubscribeFromChannels:(id)channels forTopic:(id)topic
{
  v30 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  topicCopy = topic;
  if ([(SKAPushManager *)self _sharedChannelsIsDisabledByServer])
  {
    v8 = +[SKAPushManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

LABEL_20:

    goto LABEL_21;
  }

  connection = self->_connection;
  v10 = +[SKAPushManager logger];
  v11 = v10;
  if (connection)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = channelsCopy;
      _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Unsubscribing from channels: %@", buf, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = channelsCopy;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          v18 = objc_alloc(MEMORY[0x277CD9D98]);
          v19 = [v18 initWithChannelID:{v17, v23}];
          [v8 addObject:v19];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    connection = [(SKAPushManager *)self connection];
    v21 = [v8 copy];
    [connection unsubscribeFromChannels:v21 forTopic:topicCopy];

    goto LABEL_20;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
  }

  if (![(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
  {
    v8 = +[SKAPushManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    goto LABEL_20;
  }

LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_subscribedChannelsForTopic:(id)topic WithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  completionCopy = completion;
  if ([(SKAPushManager *)self _sharedChannelsIsDisabledByServer])
  {
    v8 = +[SKAPushManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    goto LABEL_4;
  }

  connection = self->_connection;
  v11 = +[SKAPushManager logger];
  v12 = v11;
  if (!connection)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

    if ([(SKASystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
    {
      goto LABEL_5;
    }

    v8 = +[SKAPushManager logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }

LABEL_4:

LABEL_5:
    v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
    completionCopy[2](completionCopy, v9);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = topicCopy;
    _os_log_impl(&dword_220099000, v12, OS_LOG_TYPE_DEFAULT, "Fetching subscribed channels for topic %@", buf, 0xCu);
  }

  connection = [(SKAPushManager *)self connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SKAPushManager__subscribedChannelsForTopic_WithCompletion___block_invoke;
  v15[3] = &unk_27843E220;
  v16 = topicCopy;
  v17 = completionCopy;
  [connection getRegisteredChannelsForTopic:v16 withCompletion:v15];

  v9 = v16;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

void __61__SKAPushManager__subscribedChannelsForTopic_WithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKAPushManager logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__SKAPushManager__subscribedChannelsForTopic_WithCompletion___block_invoke_cold_1(a1, v6, v7);
    }

    v8 = *(a1 + 40);
    v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v21 + 1) + 8 * i) channelID];
          if ([v15 length])
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v12);
    }

    v16 = +[SKAPushManager logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412546;
      v26 = v17;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "Fetching subscribed channels completed for topic %@ with channels: %@", buf, 0x16u);
    }

    v18 = *(a1 + 40);
    v19 = [v9 copy];
    (*(v18 + 16))(v18, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)serverTime
{
  connection = self->_connection;
  if (connection && ([(APSConnection *)connection isConnected]& 1) != 0)
  {
    [MEMORY[0x277CEEA10] serverTime];
    v4 = v3;
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
    [v5 timeIntervalSince1970];
    v7 = v6;

    if (v4 > v7)
    {
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v4];
      goto LABEL_8;
    }

    v9 = +[SKAPushManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager serverTime];
    }
  }

  else
  {
    v9 = +[SKAPushManager logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager serverTime];
    }
  }

  v8 = [MEMORY[0x277CBEAA8] now];
LABEL_8:

  return v8;
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = +[SKAPushManager logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [messageCopy identifier];
    topic = [messageCopy topic];
    expirationDate = [messageCopy expirationDate];
    *buf = 134218754;
    v16 = identifier;
    v17 = 2112;
    v18 = messageCopy;
    v19 = 2112;
    v20 = topic;
    v21 = 2112;
    v22 = expirationDate;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Receieved aps incoming message %lu : %@ -- topic: %@, expiration: %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SKAPushManager_connection_didReceiveIncomingMessage___block_invoke;
  v13[3] = &unk_27843E330;
  v13[4] = self;
  v14 = messageCopy;
  v11 = messageCopy;
  dispatch_async(queue, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __55__SKAPushManager_connection_didReceiveIncomingMessage___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _sharedChannelsIsDisabledByServer])
  {
    v2 = +[SKAPushManager logger];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _createChannelWithProtoData:retryCount:completion:];
    }
  }

  else
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKeyedSubscript:@"StatusKitDataKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = MEMORY[0x277CBEA90];
      v5 = v3;
      v6 = [[v4 alloc] initWithBase64EncodedString:v5 options:0];
    }

    else
    {
      v7 = +[SKAPushManager logger];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __55__SKAPushManager_connection_didReceiveIncomingMessage___block_invoke_cold_1();
      }

      v6 = 0;
    }

    v8 = [*(a1 + 32) delegate];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) channelID];
    v11 = [*(a1 + 40) identifier];
    v12 = [*(a1 + 40) timestamp];
    v13 = [*(a1 + 40) expirationDate];
    [v8 pushManager:v9 didReceiveData:v6 onChannel:v10 identifier:v11 dateReceived:v12 dateExpired:v13];
  }
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  v24 = *MEMORY[0x277D85DE8];
  failuresCopy = failures;
  v6 = +[SKAPushManager logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SKAPushManager connection:failuresCopy channelSubscriptionsFailedWithFailures:v6];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = failuresCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        channelID = [v12 channelID];
        queue = self->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __68__SKAPushManager_connection_channelSubscriptionsFailedWithFailures___block_invoke;
        block[3] = &unk_27843E358;
        block[4] = v12;
        block[5] = self;
        v18 = channelID;
        v15 = channelID;
        dispatch_async(queue, block);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __68__SKAPushManager_connection_channelSubscriptionsFailedWithFailures___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEE9F8] code:objc_msgSend(*(a1 + 32) userInfo:{"failureReason"), 0}];
  v2 = [SKAError errorWithCode:1001 underlyingError:v4];
  v3 = [*(a1 + 40) delegate];
  [v3 pushManager:*(a1 + 40) failedToSubscribeToChannel:*(a1 + 48) withError:v2];
}

- (BOOL)_sharedChannelsIsDisabledByServer
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-disabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 BOOLValue])
  {
    v4 = +[SKAPushManager logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SKAPushManager _sharedChannelsIsDisabledByServer];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)logger
{
  if (logger_onceToken_7 != -1)
  {
    +[SKAPushManager logger];
  }

  v3 = logger__logger_7;

  return v3;
}

uint64_t __24__SKAPushManager_logger__block_invoke()
{
  logger__logger_7 = os_log_create("com.apple.StatusKit", "SKAPushManager");

  return MEMORY[0x2821F96F8]();
}

- (SKAPushManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __68__SKAPushManager__createChannelWithProtoData_retryCount_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "Trying to create a channel resulted in error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __55__SKAPushManager__publishStatus_retryCount_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Publishing status failed with resultCode %ld error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __58__SKAPushManager__provisionPayload_retryCount_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Provisioning failed with resultCode %ld error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __61__SKAPushManager__sendPresenceMessage_retryCount_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4(&dword_220099000, v0, v1, "Presence protobuff send failed with resultCode %ld error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __61__SKAPushManager__subscribedChannelsForTopic_WithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_4(&dword_220099000, a2, a3, "Error fetching subscribed channels for topic %@! Error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)connection:(uint64_t)a1 channelSubscriptionsFailedWithFailures:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "Channel subscription failed. Failures: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
@interface MAPushNotificationServiceDaemon
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MAPushNotificationServiceDaemon)init;
- (int64_t)channelTypeForDevice;
- (void)addSyntheticJobWithType:(id)a3 assetSpecifier:(id)a4 matchingAssetVersion:(id)a5 triggerInterval:(int64_t)a6;
- (void)channelSubscriptionsFailedWithReasons:(id)a3;
- (void)didReceivePushNotification:(id)a3;
- (void)pushJobsAwaitingTriggerWithCompletion:(id)a3;
- (void)startListeningForConnections;
- (void)subscribeToChannelForCurrentPlatform;
- (void)subscribeToChannelWithIdentifier:(id)a3 completion:(id)a4;
- (void)subscribedChannelIDsWithCompletion:(id)a3;
- (void)triggerPushNotificationWithPayload:(id)a3 withCompletion:(id)a4;
- (void)unsubscribeFromAllChannels;
- (void)unsubscribeToChannelWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation MAPushNotificationServiceDaemon

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[MAPushNotificationServiceDaemon sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

void __49__MAPushNotificationServiceDaemon_sharedInstance__block_invoke(id a1)
{
  sharedInstance_instance_1 = objc_alloc_init(MAPushNotificationServiceDaemon);

  _objc_release_x1();
}

- (MAPushNotificationServiceDaemon)init
{
  v14.receiver = self;
  v14.super_class = MAPushNotificationServiceDaemon;
  v2 = [(MAPushNotificationServiceDaemon *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mobileassetd.push-notifications.Service", 0);
    serviceQueue = v2->_serviceQueue;
    v2->_serviceQueue = v3;

    v5 = dispatch_queue_create("com.apple.mobileassetd.push-notifications.Client", 0);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v5;

    v7 = dispatch_queue_create("com.apple.mobileassetd.push-notifications.Client-Upstream", 0);
    clientUpstreamQueue = v2->_clientUpstreamQueue;
    v2->_clientUpstreamQueue = v7;

    v9 = [[MAPushServiceConnection alloc] initWithDelegate:v2];
    pushServiceConnection = v2->_pushServiceConnection;
    v2->_pushServiceConnection = v9;

    v11 = +[NSMutableArray array];
    clients = v2->_clients;
    v2->_clients = v11;
  }

  return v2;
}

- (void)startListeningForConnections
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.mobileassetd.push-notifications"];
  listener = self->_listener;
  self->_listener = v3;

  [(NSXPCListener *)self->_listener setDelegate:self];
  v5 = self->_listener;

  [(NSXPCListener *)v5 resume];
}

- (int64_t)channelTypeForDevice
{
  if (_MAPreferencesIsInternalAllowed())
  {
    v2 = 1;
  }

  else
  {
    v2 = 5;
  }

  v3 = +[SDSeedProgramManager currentSeedProgram];
  if ((v3 - 1) <= 2)
  {
    return qword_33C0A0[(v3 - 1)];
  }

  return v2;
}

- (void)subscribeToChannelForCurrentPlatform
{
  v3 = [[MAPushChannel alloc] initWithPopulationType:[(MAPushNotificationServiceDaemon *)self channelTypeForDevice]];
  v4 = [(MAPushNotificationServiceDaemon *)self pushServiceConnection];
  v5 = [v4 subscribedChannels];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) identifier];
        v12 = [(MAPushChannel *)v3 identifier];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v16 = _MADLog(@"PushNotification");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v22 = v3;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Already subscribed to channel %{public}@", buf, 0xCu);
          }

          v15 = v6;
          goto LABEL_15;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v3;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Subscribing to platform channel %{public}@", buf, 0xCu);
  }

  v15 = [(MAPushNotificationServiceDaemon *)self pushServiceConnection];
  [v15 subscribeToChannel:v3];
LABEL_15:
}

- (void)subscribeToChannelWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Subscribing to channel: %{public}@", &v11, 0xCu);
  }

  v9 = [[MAPushChannel alloc] initWithIdentifier:v6];
  v10 = [(MAPushNotificationServiceDaemon *)self pushServiceConnection];
  [v10 subscribeToChannel:v9];

  if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)unsubscribeToChannelWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Subscribing to channel: %{public}@", &v11, 0xCu);
  }

  v9 = [[MAPushChannel alloc] initWithIdentifier:v6];
  v10 = [(MAPushNotificationServiceDaemon *)self pushServiceConnection];
  [v10 unsubscribeFromChannel:v9];

  if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)unsubscribeFromAllChannels
{
  v3 = [(MAPushNotificationServiceDaemon *)self pushServiceConnection];
  v4 = [v3 subscribedChannels];

  v5 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Unsubscribing from all channels: %{public}@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [(MAPushNotificationServiceDaemon *)self pushServiceConnection];
        [v12 unsubscribeFromChannel:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)subscribedChannelIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MAPushNotificationServiceDaemon *)self pushServiceConnection];
  v6 = [v5 subscribedChannels];

  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) identifier];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v4[2](v4, v14);
}

- (void)triggerPushNotificationWithPayload:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Triggering push notification with payload: %{public}@", &v10, 0xCu);
  }

  v9 = [[MAPushNotification alloc] initWithUserInfo:v6];
  [(MAPushNotificationServiceDaemon *)self didReceivePushNotification:v9];
  v7[2](v7);
}

- (void)pushJobsAwaitingTriggerWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetScheduler jobsAwaitingTrigger];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 pushedJob])
        {
          v12 = [v11 description];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v3[2](v3, v13);
}

- (void)addSyntheticJobWithType:(id)a3 assetSpecifier:(id)a4 matchingAssetVersion:(id)a5 triggerInterval:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[MAAutoAssetSelector alloc] initForAssetType:v11 withAssetSpecifier:v10 matchingAssetVersion:v9 usingDecryptionKey:0];

  v13 = [[MADAutoAssetScheduledJob alloc] initForAssetSelector:v12 withActivityInterval:a6 forPushedJob:0];
  v14 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 summary];
    v16 = 138543362;
    v17 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Adding synthetic job: %{public}@", &v16, 0xCu);
  }

  [MADAutoAssetScheduler scheduleSelector:v12 triggeringAtIntervalSecs:a6];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.mobileassetd.push-notifications.private"];

  if (v6)
  {
    v7 = MAPushServiceInterface();
    [v5 setExportedInterface:v7];
    [v5 setExportedObject:self];
    v8 = MAServiceClientInterface();
    [v5 setRemoteObjectInterface:v8];
    v9 = [[MAPushNotificationClient alloc] initWithConnection:v5];
    v10 = [(MAPushNotificationServiceDaemon *)self clientQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __70__MAPushNotificationServiceDaemon_listener_shouldAcceptNewConnection___block_invoke;
    block[3] = &unk_4B2B18;
    v11 = v9;
    v24 = v11;
    v25 = self;
    dispatch_sync(v10, block);

    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = __70__MAPushNotificationServiceDaemon_listener_shouldAcceptNewConnection___block_invoke_1128;
    v20 = &unk_4B2B18;
    v21 = self;
    v22 = v11;
    v12 = v11;
    [v5 setInvalidationHandler:&v17];
    [v5 setInterruptionHandler:{&__block_literal_global_1132, v17, v18, v19, v20, v21}];
    [v5 resume];
  }

  else
  {
    v13 = _MADLog(@"PushNotification");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v5 remoteObjectInterface];
      v15 = [v5 exportedInterface];
      *buf = 138543874;
      v27 = @"com.apple.mobileassetd.push-notifications.private";
      v28 = 2114;
      v29 = v14;
      v30 = 2114;
      v31 = v15;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Entitlement %{public}@ not satisfied for connection remote object interface: %{public}@, exported interface: %{public}@", buf, 0x20u);
    }

    [v5 invalidate];
  }

  return v6 != 0;
}

void __70__MAPushNotificationServiceDaemon_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) description];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "Adding client: %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) clients];
  [v4 addObject:*(a1 + 32)];
}

void __70__MAPushNotificationServiceDaemon_listener_shouldAcceptNewConnection___block_invoke_1128(uint64_t a1)
{
  v2 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "Connection invalidated!", buf, 2u);
  }

  v3 = [*(a1 + 32) clientQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __70__MAPushNotificationServiceDaemon_listener_shouldAcceptNewConnection___block_invoke_1129;
  v6[3] = &unk_4B2B18;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, v6);
}

void __70__MAPushNotificationServiceDaemon_listener_shouldAcceptNewConnection___block_invoke_1129(uint64_t a1)
{
  v2 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) description];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Removing client: %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) clients];
  [v4 removeObject:*(a1 + 32)];
}

void __70__MAPushNotificationServiceDaemon_listener_shouldAcceptNewConnection___block_invoke_1130(id a1)
{
  v1 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Connection interrupted!", v2, 2u);
  }
}

- (void)didReceivePushNotification:(id)a3
{
  v4 = a3;
  v74 = [v4 pushPayload];
  v5 = [v74 safeObjectForKey:@"MAPushTestUniqueID" ofClass:objc_opt_class()];
  v6 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "{didReceivePushNotification} [PUSH-NOTIFICATION] RECEIVED", buf, 2u);
  }

  if (v5)
  {
    v7 = _MAPreferencesCopyNSStringValue(@"MAPushTestUniqueID");
    v8 = [v7 isEqualToString:v5];
    v9 = _MADLog(@"PushNotification");
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Push test unique IDs don't match, ignoring push notification", buf, 2u);
      }

      goto LABEL_41;
    }

    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Received matching push test unique ID, processing push notification", buf, 2u);
    }
  }

  v11 = [v74 objectForKeyedSubscript:@"UpdatePolicyIdentifiers"];
  v7 = v11;
  if (v11)
  {
    v69 = v5;
    v70 = v4;
    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v68 = v7;
    obj = v7;
    v75 = [obj countByEnumeratingWithState:&v96 objects:v103 count:16];
    v13 = self;
    if (!v75)
    {
      goto LABEL_32;
    }

    v73 = *v97;
    v85 = v12;
    v72 = self;
    while (1)
    {
      for (i = 0; i != v75; i = v48 + 1)
      {
        if (*v97 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v84 = i;
        v15 = *(*(&v96 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v16 = [v74 objectForKeyedSubscript:v15];
        v89 = [v16 safeObjectForKey:@"PushReason" ofClass:objc_opt_class()];
        v17 = [v16 safeObjectForKey:@"AssetType" ofClass:objc_opt_class()];
        v82 = [v16 safeObjectForKey:@"AssetSpecifier" ofClass:objc_opt_class()];
        v88 = [v16 safeObjectForKey:@"AssetSetIdentifier" ofClass:objc_opt_class()];
        v86 = [v16 safeObjectForKey:@"ClientDomainName" ofClass:objc_opt_class()];
        v87 = [v16 safeObjectForKey:@"MatchingAssetVersion" ofClass:objc_opt_class()];
        v81 = [v16 safeObjectForKey:@"UpdatePolicyName" ofClass:objc_opt_class()];
        v18 = v17;
        v19 = [[MAAutoAssetUpdatePolicy alloc] initUpdatePolicy:v81 forAssetType:v17];
        v20 = [v16 safeObjectForKey:@"UserInitiated" ofClass:objc_opt_class()];
        v80 = [v20 BOOLValue];

        v21 = [v16 safeObjectForKey:@"LockAcrossTermination" ofClass:objc_opt_class()];
        v79 = [v21 BOOLValue];

        v22 = [v16 safeObjectForKey:@"LockAcrossReboot" ofClass:objc_opt_class()];
        v78 = [v22 BOOLValue];

        v23 = [v16 safeObjectForKey:@"LockAcrossTermination" ofClass:objc_opt_class()];
        v77 = [v23 BOOLValue];

        v24 = [v16 safeObjectForKey:@"ScanInterval" ofClass:objc_opt_class()];
        [v19 setCheckForNewerIntervalSecs:{objc_msgSend(v24, "integerValue")}];

        v25 = [v16 safeObjectForKey:@"NetworkTimeout" ofClass:objc_opt_class()];
        [v19 setCheckForNewerTimeoutSecs:{objc_msgSend(v25, "integerValue")}];

        v26 = [v16 safeObjectForKey:@"AllowCheckOverNetworkExpensive" ofClass:objc_opt_class()];
        [v19 setAllowAutoCheckForNewerOverExpensive:{objc_msgSend(v26, "BOOLValue")}];

        v27 = [v16 safeObjectForKey:@"AllowAutoCheckForNewerWhenCPUHigh" ofClass:objc_opt_class()];
        [v19 setAllowAutoCheckForNewerWhenCPUHigh:{objc_msgSend(v27, "BOOLValue")}];

        v28 = [v16 safeObjectForKey:@"AllowAutoCheckForNewerWhenBatteryLow" ofClass:objc_opt_class()];
        [v19 setAllowAutoCheckForNewerWhenBatteryLow:{objc_msgSend(v28, "BOOLValue")}];

        v29 = [v16 safeObjectForKey:@"AllowAutoDownloadWhenBatteryLow" ofClass:objc_opt_class()];
        [v19 setAllowAutoDownloadWhenBatteryLow:{objc_msgSend(v29, "BOOLValue")}];

        v30 = [v16 safeObjectForKey:@"AllowAutoDownloadWhenCPUHigh" ofClass:objc_opt_class()];
        [v19 setAllowAutoDownloadWhenCPUHigh:{objc_msgSend(v30, "BOOLValue")}];

        v31 = [v16 safeObjectForKey:@"Jitter" ofClass:objc_opt_class()];
        [v19 setNewerFoundAutoDownloadJitterSecs:{objc_msgSend(v31, "integerValue")}];

        v32 = _MADLog(@"PushNotification");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          [v19 summary];
          v34 = v33 = v13;
          *buf = 138543362;
          v102 = v34;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Created the following push MAAutoAssetUpdatePolicy: %{public}@", buf, 0xCu);

          v13 = v33;
        }

        v76 = v19;

        v35 = [v16 objectForKeyedSubscript:@"AdditionalInfo"];
        v36 = [(MAPushNotificationServiceDaemon *)v13 pushServiceConnection];
        v37 = [v36 subscribedChannels];
        v38 = v37;
        v39 = &__NSArray0__struct;
        if (v37)
        {
          v39 = v37;
        }

        v40 = v39;

        v41 = objc_opt_new();
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v42 = v40;
        v43 = [v42 countByEnumeratingWithState:&v92 objects:v100 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v93;
          do
          {
            for (j = 0; j != v44; j = j + 1)
            {
              if (*v93 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = [*(*(&v92 + 1) + 8 * j) base64ChannelId];
              [v41 addObject:v47];
            }

            v44 = [v42 countByEnumeratingWithState:&v92 objects:v100 count:16];
          }

          while (v44);
        }

        if (v88)
        {
          v48 = v84;
          if (v86)
          {
            v49 = v86;

            v50 = v88;
            v18 = v49;
            goto LABEL_30;
          }
        }

        else
        {
          v48 = v84;
        }

        v50 = v82;
LABEL_30:
        v51 = [MAAutoAssetPushNotification alloc];
        v52 = [v89 integerValue];
        v53 = v18;
        v54 = v18;
        v55 = v35;
        v56 = [v51 initWithPushReason:v52 forAssetType:v54 withAssetSpecifier:v50 matchingAssetVersion:v87 withUpdatePolicy:v76 withAdditional:v35];
        v57 = v53;
        [v85 addObject:v56];

        v58 = [[MAAutoAssetSelector alloc] initForAssetType:v53 withAssetSpecifier:v50];
        v59 = v50;
        v60 = v58;
        [MADAutoAssetHistory recordOperation:1304 toHistoryType:7 fromLayer:7 withSelector:v58];

        v61 = +[MADAnalyticsManager getAnalyticsManager];
        v13 = v72;
        BYTE1(v67) = v77;
        LOBYTE(v67) = v78;
        v62 = [v61 recordPushNotification:v59 assetType:v57 cloudChannels:v41 forPopulationType:-[MAPushNotificationServiceDaemon channelTypeForDevice](v72 userInitiated:"channelTypeForDevice") interestAcrossTerm:v80 lockAcrossReboot:v79 lockAcrossTermination:v67];

        v12 = v85;
        objc_autoreleasePoolPop(context);
      }

      v75 = [obj countByEnumeratingWithState:&v96 objects:v103 count:16];
      if (!v75)
      {
LABEL_32:
        self = v13;

        v63 = _MADLog(@"PushNotification");
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = [v12 copy];
          *buf = 138543362;
          v102 = v64;
          _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEFAULT, "{didReceivePushNotification} [PUSH-NOTIFICATION] HANDLER | autoAssetPushNotifications:%{public}@", buf, 0xCu);
        }

        v65 = [v12 copy];
        [MADAutoAssetControlManager handleReceivedPushNotifications:v65];

        v5 = v69;
        v4 = v70;
        v7 = v68;
        goto LABEL_40;
      }
    }
  }

  v12 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "No push notification update policies found", buf, 2u);
  }

LABEL_40:

  v66 = [(MAPushNotificationServiceDaemon *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __62__MAPushNotificationServiceDaemon_didReceivePushNotification___block_invoke;
  block[3] = &unk_4B2B18;
  block[4] = self;
  v91 = v4;
  dispatch_sync(v66, block);

LABEL_41:
}

void __62__MAPushNotificationServiceDaemon_didReceivePushNotification___block_invoke(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) clients];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 32) clientUpstreamQueue];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = __62__MAPushNotificationServiceDaemon_didReceivePushNotification___block_invoke_2;
        v10[3] = &unk_4B2B18;
        v10[4] = v8;
        v11 = *(a1 + 40);
        dispatch_async(v9, v10);

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

void __62__MAPushNotificationServiceDaemon_didReceivePushNotification___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) pushPayload];
  [v1 didReceivePushNotificationWithInfo:v2];
}

- (void)channelSubscriptionsFailedWithReasons:(id)a3
{
  v3 = a3;
  v4 = _MADLog(@"PushNotification");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Channel subscriptions failed with reasons: %{public}@", &v5, 0xCu);
  }
}

@end
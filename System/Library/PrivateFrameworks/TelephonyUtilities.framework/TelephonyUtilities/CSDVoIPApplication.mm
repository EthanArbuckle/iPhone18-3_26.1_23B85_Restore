@interface CSDVoIPApplication
- (BOOL)hasPTTBackgroundMode;
- (BOOL)hasPTTSelfAddEntitlement;
- (BOOL)hasPendingChannelPushMessagesToDeliver;
- (BOOL)hasVoIPBackgroundMode;
- (BOOL)hasVoIPNetworkExtensionEntitlement;
- (BOOL)isDevelopmentOrTestFlightApp;
- (BOOL)isEligibleForPTTEntitlementDeprecationNotice;
- (BOOL)isUsingPTTEligibleSDK;
- (BOOL)meetsRequirementsForPTT;
- (BOOL)requiresStrictPolicyEnforcement;
- (CSDVoIPApplication)init;
- (CSDVoIPApplication)initWithBundleIdentifier:(id)a3;
- (NSString)localizedAppName;
- (id)description;
- (id)pushEnvironmentAccordingToLaunchServices;
- (void)_deliverChannelPushTokenToApplication;
- (void)_deliverMessageContext:(id)a3;
- (void)_deliverPendingChannelPushPayloadsToApplication;
- (void)_deliverPendingNetworkExtensionPayloadsToApplication;
- (void)_deliverPendingPushKitPayloadsToApplication;
- (void)_deliverVoIPTokenToApplication;
- (void)deliverChannelPushToken:(id)a3;
- (void)deliverVoIPToken:(id)a3;
- (void)dropUndeliveredChannelPushesOnTheFloor;
- (void)setChannelPushClient:(id)a3;
- (void)setNetworkExtensionClient:(id)a3;
- (void)setPushKitClient:(id)a3;
@end

@implementation CSDVoIPApplication

- (CSDVoIPApplication)init
{
  v4 = [NSString stringWithFormat:@"[CSDVoIPApplication init] is not supported. Use [CSDVoIPApplication initWithBundleIdentifier:] instead"];
  NSLog(@"** TUAssertion failure: %@", v4);

  if (_TUAssertShouldCrashApplication())
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"CSDVoIPApplication.m" lineNumber:105 description:@"-[CSDVoIPApplication init] is not supported. Use -[CSDVoIPApplication initWithBundleIdentifier:] instead"];
  }

  return 0;
}

- (CSDVoIPApplication)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CSDVoIPApplication;
  v6 = [(CSDVoIPApplication *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
    v8 = +[NSMutableArray array];
    pendingNetworkExtensionMessageContexts = v7->_pendingNetworkExtensionMessageContexts;
    v7->_pendingNetworkExtensionMessageContexts = v8;

    v10 = +[NSMutableArray array];
    pendingPushKitVoIPMessageContexts = v7->_pendingPushKitVoIPMessageContexts;
    v7->_pendingPushKitVoIPMessageContexts = v10;

    v12 = +[NSMutableArray array];
    pendingChannelDelegateMessageContexts = v7->_pendingChannelDelegateMessageContexts;
    v7->_pendingChannelDelegateMessageContexts = v12;
  }

  return v7;
}

- (id)description
{
  v15 = objc_opt_class();
  v14 = [(CSDVoIPApplication *)self bundleIdentifier];
  v3 = [(CSDVoIPApplication *)self environment];
  v4 = [(CSDVoIPApplication *)self pushKitClient];
  v5 = [(CSDVoIPApplication *)self channelPushClient];
  v6 = [(CSDVoIPApplication *)self networkExtensionClient];
  v7 = [(CSDVoIPApplication *)self voipToken];
  v8 = [(CSDVoIPApplication *)self channelPushToken];
  v9 = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
  v10 = [v9 count];
  v11 = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p bundleIdentifier=%@ environment=%@ pushKitClient=%@ channelClient=%@ networkExtensionClient=%@ voipToken=%@ channelPushToken=%@ pendingPKMessageContextCount=%lu pendingNetworkExtensionContextsCount=%lu>", v15, self, v14, v3, v4, v5, v6, v7, v8, v10, [v11 count]);

  return v12;
}

- (id)pushEnvironmentAccordingToLaunchServices
{
  v2 = [(CSDVoIPApplication *)self applicationRecord];
  v3 = [v2 entitlements];
  v4 = [v3 objectForKey:@"aps-environment" ofClass:objc_opt_class()];
  if (([v4 isEqualToString:APSEnvironmentProduction] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", APSEnvironmentDevelopment))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasVoIPBackgroundMode
{
  v2 = [(CSDVoIPApplication *)self applicationRecord];
  v3 = [v2 csd_hasVoIPBackgroundMode];

  return v3;
}

- (BOOL)hasPTTBackgroundMode
{
  v2 = [(CSDVoIPApplication *)self applicationRecord];
  v3 = [v2 csd_hasPTTBackgroundMode];

  return v3;
}

- (BOOL)hasPTTSelfAddEntitlement
{
  v2 = [(CSDVoIPApplication *)self applicationRecord];
  v3 = [v2 csd_hasPTTSelfAddEntitlement];

  return v3;
}

- (BOOL)isUsingPTTEligibleSDK
{
  v2 = [(CSDVoIPApplication *)self applicationRecord];
  v3 = [v2 SDKVersion];
  v4 = sub_1001365CC(v3, @"16.0");

  return v4;
}

- (BOOL)meetsRequirementsForPTT
{
  v3 = [(CSDVoIPApplication *)self applicationRecord];
  if (([v3 isPlaceholder] & 1) == 0 && -[CSDVoIPApplication hasPTTBackgroundMode](self, "hasPTTBackgroundMode") && -[CSDVoIPApplication hasPTTSelfAddEntitlement](self, "hasPTTSelfAddEntitlement"))
  {
    v4 = [(CSDVoIPApplication *)self isUsingPTTEligibleSDK];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEligibleForPTTEntitlementDeprecationNotice
{
  v2 = [(CSDVoIPApplication *)self applicationRecord];
  v3 = [v2 SDKVersion];
  v4 = [v2 entitlements];
  v5 = [v4 objectForKey:@"get-task-allow" ofClass:objc_opt_class()];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKey:@"com.apple.developer.pushkit.unrestricted-voip.ptt" ofClass:objc_opt_class()];
  v8 = [v7 BOOLValue];

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v2 isBeta];
  }

  v10 = sub_1001365CC(v3, @"16.0") & v9;

  return v10 & v8;
}

- (BOOL)isDevelopmentOrTestFlightApp
{
  v2 = [(CSDVoIPApplication *)self applicationRecord];
  v3 = [v2 entitlements];
  v4 = [v3 objectForKey:@"get-task-allow" ofClass:objc_opt_class()];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v2 isBeta];
  }

  return v6;
}

- (NSString)localizedAppName
{
  v2 = [(CSDVoIPApplication *)self applicationRecord];
  v3 = [v2 localizedName];

  return v3;
}

- (BOOL)hasVoIPNetworkExtensionEntitlement
{
  v2 = [(CSDVoIPApplication *)self applicationRecord];
  v3 = [v2 csd_hasVoIPNetworkExtensionEntitlement];

  return v3;
}

- (BOOL)requiresStrictPolicyEnforcement
{
  v2 = [(CSDVoIPApplication *)self applicationRecord];
  v3 = [v2 SDKVersion];
  v4 = [v2 entitlements];
  v5 = [v4 objectForKey:@"com.apple.developer.pushkit.unrestricted-voip" ofClass:objc_opt_class()];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKey:@"com.apple.developer.pushkit.unrestricted-voip-regulatory" ofClass:objc_opt_class()];
  v8 = [v7 BOOLValue];

  v9 = [v4 objectForKey:@"com.apple.developer.pushkit.unrestricted-voip.ptt" ofClass:objc_opt_class()];
  v10 = [v9 BOOLValue];

  v11 = [v4 objectForKey:@"com.apple.developer.pushkit.unrestricted-voip.temporary" ofClass:objc_opt_class()];
  v12 = [v11 BOOLValue];

  if (sub_1001365CC(v3, @"13.0"))
  {
    v13 = sub_1001365CC(v3, @"15.0") | v6 ^ 1;
    if (v8)
    {
      v13 &= sub_1001365CC(v3, @"15.4");
    }
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v13 &= sub_1001365CC(v3, @"19.0");
  }

  return (v12 ^ 1) & v13;
}

- (void)setChannelPushClient:(id)a3
{
  v5 = a3;
  if (self->_channelPushClient != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_channelPushClient, a3);
    v5 = v8;
    if (v8)
    {
      v6 = [(CSDVoIPApplication *)self channelPushToken];

      if (v6)
      {
        [(CSDVoIPApplication *)self _deliverChannelPushTokenToApplication];
      }

      v7 = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];

      v5 = v8;
      if (v7)
      {
        [(CSDVoIPApplication *)self _deliverPendingChannelPushPayloadsToApplication];
        v5 = v8;
      }
    }
  }
}

- (void)setPushKitClient:(id)a3
{
  v5 = a3;
  if (self->_pushKitClient != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_pushKitClient, a3);
    v5 = v9;
    if (v9)
    {
      v6 = [(CSDVoIPApplication *)self voipToken];

      if (v6)
      {
        [(CSDVoIPApplication *)self _deliverVoIPTokenToApplication];
      }

      v7 = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
      v8 = [v7 count];

      v5 = v9;
      if (v8)
      {
        [(CSDVoIPApplication *)self _deliverPendingPushKitPayloadsToApplication];
        v5 = v9;
      }
    }
  }
}

- (void)setNetworkExtensionClient:(id)a3
{
  v5 = a3;
  if (self->_networkExtensionClient != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_networkExtensionClient, a3);
    v5 = v8;
    if (v8)
    {
      v6 = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
      v7 = [v6 count];

      v5 = v8;
      if (v7)
      {
        [(CSDVoIPApplication *)self _deliverPendingNetworkExtensionPayloadsToApplication];
        v5 = v8;
      }
    }
  }
}

- (void)deliverVoIPToken:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to deliver voip token %@ to application %@", &v6, 0x16u);
  }

  [(CSDVoIPApplication *)self setVoipToken:v4];
  [(CSDVoIPApplication *)self _deliverVoIPTokenToApplication];
}

- (void)deliverChannelPushToken:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to deliver PTT token %@ to application %@", &v6, 0x16u);
  }

  [(CSDVoIPApplication *)self setChannelPushToken:v4];
  [(CSDVoIPApplication *)self _deliverChannelPushTokenToApplication];
}

- (BOOL)hasPendingChannelPushMessagesToDeliver
{
  v2 = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)dropUndeliveredChannelPushesOnTheFloor
{
  v2 = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
  [v2 removeAllObjects];
}

- (void)_deliverVoIPTokenToApplication
{
  v3 = [(CSDVoIPApplication *)self pushKitClient];

  if (v3)
  {
    v4 = [(CSDVoIPApplication *)self pushKitClient];
    v5 = [v4 objectForBlock];

    if ([v5 conformsToProtocol:&OBJC_PROTOCOL___PKVoIPXPCClient])
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CSDVoIPApplication *)self voipToken];
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Delivering voip token %@ to application %@", &v9, 0x16u);
      }

      v8 = [(CSDVoIPApplication *)self voipToken];
      [v5 voipRegistrationSucceededWithDeviceToken:v8];
    }
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pending VoIP token delivery until a connection exists", &v9, 2u);
    }
  }
}

- (void)_deliverChannelPushTokenToApplication
{
  v3 = [(CSDVoIPApplication *)self channelPushClient];

  if (v3)
  {
    v4 = [(CSDVoIPApplication *)self channelPushClient];
    v5 = [v4 objectForBlock];

    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CSDVoIPApplication *)self channelPushToken];
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = self;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Delivering ptt token %@ to application %@ proxy %p", &v9, 0x20u);
    }

    v8 = [(CSDVoIPApplication *)self channelPushToken];
    [v5 _didReceivePushToken:v8];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pending ptt token delivery until a connection exists", &v9, 2u);
    }
  }
}

- (void)_deliverPendingNetworkExtensionPayloadsToApplication
{
  v3 = [(CSDVoIPApplication *)self networkExtensionClient];

  v4 = sub_100004778();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
      *buf = 134218242;
      v18 = [v6 count];
      v19 = 2112;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delivering %lu network extension payload(s) to application %@", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(CSDVoIPApplication *)self _deliverMessageContext:*(*(&v12 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    v4 = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
    [v4 removeAllObjects];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pending Network Extension payload deliveries until a connection exists", buf, 2u);
  }
}

- (void)_deliverPendingPushKitPayloadsToApplication
{
  v3 = [(CSDVoIPApplication *)self pushKitClient];

  v4 = sub_100004778();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
      *buf = 134218242;
      v18 = [v6 count];
      v19 = 2112;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delivering %lu VoIP payload(s) to application %@", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(CSDVoIPApplication *)self _deliverMessageContext:*(*(&v12 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    v4 = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
    [v4 removeAllObjects];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pending PushKit VoIP payload deliveries until a connection exists", buf, 2u);
  }
}

- (void)_deliverPendingChannelPushPayloadsToApplication
{
  v3 = [(CSDVoIPApplication *)self channelPushClient];

  v4 = sub_100004778();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
      *buf = 134218242;
      v18 = [v6 count];
      v19 = 2112;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delivering %lu channel push payload(s) to application %@", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(CSDVoIPApplication *)self _deliverMessageContext:*(*(&v12 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    v4 = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
    [v4 removeAllObjects];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pending channel push payload deliveries until a connection exists", buf, 2u);
  }
}

- (void)_deliverMessageContext:(id)a3
{
  v4 = a3;
  v5 = [v4 message];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100137C84;
  v23[3] = &unk_100619D88;
  v6 = v4;
  v24 = v6;
  v25 = self;
  v7 = objc_retainBlock(v23);
  v8 = [v5 transportType];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v19 = [(CSDVoIPApplication *)self pushKitClient];
      v10 = [v19 objectForBlock];

      if ([v10 conformsToProtocol:&OBJC_PROTOCOL___PKVoIPXPCClient])
      {
        v11 = [v5 payload];
        -[NSObject voipPayloadReceived:mustPostCall:withCompletionHandler:](v10, "voipPayloadReceived:mustPostCall:withCompletionHandler:", v11, [v6 applicationShouldPostIncomingCall], v7);
        goto LABEL_16;
      }

LABEL_17:

      goto LABEL_18;
    }

    if (v8 == 3)
    {
      v10 = v5;
      v12 = [v10 reply];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100137D74;
      v20[3] = &unk_10061C3A0;
      v21 = v7;
      v13 = v12;
      v22 = v13;
      [v10 setReply:v20];
      v14 = [(CSDVoIPApplication *)self channelPushClient];
      v15 = [v14 objectForBlock];

      if ([v15 conformsToProtocol:&OBJC_PROTOCOL___CXChannelPushClientProtocol] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v16 = [v10 payload];
        v17 = [v10 channelUUID];
        v18 = [v10 reply];
        [v15 _didReceivePushPayload:v16 channelUUID:v17 reply:v18 isServiceUpdateMessage:-[NSObject isServiceUpdateMessage](v10 isHighPriority:"isServiceUpdateMessage") remainingHighPriorityBudget:{-[NSObject isWakingMessage](v10, "isWakingMessage"), -[NSObject remainingHighPriorityServiceUpdateBudget](v10, "remainingHighPriorityServiceUpdateBudget")}];
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!v8)
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Message transport type is unknown; cannot deliver message %@", buf, 0xCu);
      }

      goto LABEL_17;
    }

    if (v8 == 1)
    {
      v9 = [(CSDVoIPApplication *)self networkExtensionClient];
      v10 = [v9 objectForBlock];

      if ([v10 conformsToProtocol:&OBJC_PROTOCOL___CXNetworkExtensionVoIPXPCClient])
      {
        v11 = [v5 payload];
        -[NSObject voipNetworkExtensionPayloadReceived:mustPostCall:withCompletionHandler:](v10, "voipNetworkExtensionPayloadReceived:mustPostCall:withCompletionHandler:", v11, [v6 applicationShouldPostIncomingCall], v7);
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

LABEL_18:
}

@end
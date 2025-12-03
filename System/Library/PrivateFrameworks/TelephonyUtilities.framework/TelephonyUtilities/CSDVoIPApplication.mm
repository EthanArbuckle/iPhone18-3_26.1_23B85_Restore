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
- (CSDVoIPApplication)initWithBundleIdentifier:(id)identifier;
- (NSString)localizedAppName;
- (id)description;
- (id)pushEnvironmentAccordingToLaunchServices;
- (void)_deliverChannelPushTokenToApplication;
- (void)_deliverMessageContext:(id)context;
- (void)_deliverPendingChannelPushPayloadsToApplication;
- (void)_deliverPendingNetworkExtensionPayloadsToApplication;
- (void)_deliverPendingPushKitPayloadsToApplication;
- (void)_deliverVoIPTokenToApplication;
- (void)deliverChannelPushToken:(id)token;
- (void)deliverVoIPToken:(id)token;
- (void)dropUndeliveredChannelPushesOnTheFloor;
- (void)setChannelPushClient:(id)client;
- (void)setNetworkExtensionClient:(id)client;
- (void)setPushKitClient:(id)client;
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

- (CSDVoIPApplication)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CSDVoIPApplication;
  v6 = [(CSDVoIPApplication *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
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
  bundleIdentifier = [(CSDVoIPApplication *)self bundleIdentifier];
  environment = [(CSDVoIPApplication *)self environment];
  pushKitClient = [(CSDVoIPApplication *)self pushKitClient];
  channelPushClient = [(CSDVoIPApplication *)self channelPushClient];
  networkExtensionClient = [(CSDVoIPApplication *)self networkExtensionClient];
  voipToken = [(CSDVoIPApplication *)self voipToken];
  channelPushToken = [(CSDVoIPApplication *)self channelPushToken];
  pendingPushKitVoIPMessageContexts = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
  v10 = [pendingPushKitVoIPMessageContexts count];
  pendingNetworkExtensionMessageContexts = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p bundleIdentifier=%@ environment=%@ pushKitClient=%@ channelClient=%@ networkExtensionClient=%@ voipToken=%@ channelPushToken=%@ pendingPKMessageContextCount=%lu pendingNetworkExtensionContextsCount=%lu>", v15, self, bundleIdentifier, environment, pushKitClient, channelPushClient, networkExtensionClient, voipToken, channelPushToken, v10, [pendingNetworkExtensionMessageContexts count]);

  return v12;
}

- (id)pushEnvironmentAccordingToLaunchServices
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  entitlements = [applicationRecord entitlements];
  v4 = [entitlements objectForKey:@"aps-environment" ofClass:objc_opt_class()];
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
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  csd_hasVoIPBackgroundMode = [applicationRecord csd_hasVoIPBackgroundMode];

  return csd_hasVoIPBackgroundMode;
}

- (BOOL)hasPTTBackgroundMode
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  csd_hasPTTBackgroundMode = [applicationRecord csd_hasPTTBackgroundMode];

  return csd_hasPTTBackgroundMode;
}

- (BOOL)hasPTTSelfAddEntitlement
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  csd_hasPTTSelfAddEntitlement = [applicationRecord csd_hasPTTSelfAddEntitlement];

  return csd_hasPTTSelfAddEntitlement;
}

- (BOOL)isUsingPTTEligibleSDK
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  sDKVersion = [applicationRecord SDKVersion];
  v4 = sub_1001365CC(sDKVersion, @"16.0");

  return v4;
}

- (BOOL)meetsRequirementsForPTT
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  if (([applicationRecord isPlaceholder] & 1) == 0 && -[CSDVoIPApplication hasPTTBackgroundMode](self, "hasPTTBackgroundMode") && -[CSDVoIPApplication hasPTTSelfAddEntitlement](self, "hasPTTSelfAddEntitlement"))
  {
    isUsingPTTEligibleSDK = [(CSDVoIPApplication *)self isUsingPTTEligibleSDK];
  }

  else
  {
    isUsingPTTEligibleSDK = 0;
  }

  return isUsingPTTEligibleSDK;
}

- (BOOL)isEligibleForPTTEntitlementDeprecationNotice
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  sDKVersion = [applicationRecord SDKVersion];
  entitlements = [applicationRecord entitlements];
  v5 = [entitlements objectForKey:@"get-task-allow" ofClass:objc_opt_class()];
  bOOLValue = [v5 BOOLValue];

  v7 = [entitlements objectForKey:@"com.apple.developer.pushkit.unrestricted-voip.ptt" ofClass:objc_opt_class()];
  bOOLValue2 = [v7 BOOLValue];

  if (bOOLValue)
  {
    isBeta = 1;
  }

  else
  {
    isBeta = [applicationRecord isBeta];
  }

  v10 = sub_1001365CC(sDKVersion, @"16.0") & isBeta;

  return v10 & bOOLValue2;
}

- (BOOL)isDevelopmentOrTestFlightApp
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  entitlements = [applicationRecord entitlements];
  v4 = [entitlements objectForKey:@"get-task-allow" ofClass:objc_opt_class()];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    isBeta = 1;
  }

  else
  {
    isBeta = [applicationRecord isBeta];
  }

  return isBeta;
}

- (NSString)localizedAppName
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  localizedName = [applicationRecord localizedName];

  return localizedName;
}

- (BOOL)hasVoIPNetworkExtensionEntitlement
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  csd_hasVoIPNetworkExtensionEntitlement = [applicationRecord csd_hasVoIPNetworkExtensionEntitlement];

  return csd_hasVoIPNetworkExtensionEntitlement;
}

- (BOOL)requiresStrictPolicyEnforcement
{
  applicationRecord = [(CSDVoIPApplication *)self applicationRecord];
  sDKVersion = [applicationRecord SDKVersion];
  entitlements = [applicationRecord entitlements];
  v5 = [entitlements objectForKey:@"com.apple.developer.pushkit.unrestricted-voip" ofClass:objc_opt_class()];
  bOOLValue = [v5 BOOLValue];

  v7 = [entitlements objectForKey:@"com.apple.developer.pushkit.unrestricted-voip-regulatory" ofClass:objc_opt_class()];
  bOOLValue2 = [v7 BOOLValue];

  v9 = [entitlements objectForKey:@"com.apple.developer.pushkit.unrestricted-voip.ptt" ofClass:objc_opt_class()];
  bOOLValue3 = [v9 BOOLValue];

  v11 = [entitlements objectForKey:@"com.apple.developer.pushkit.unrestricted-voip.temporary" ofClass:objc_opt_class()];
  bOOLValue4 = [v11 BOOLValue];

  if (sub_1001365CC(sDKVersion, @"13.0"))
  {
    v13 = sub_1001365CC(sDKVersion, @"15.0") | bOOLValue ^ 1;
    if (bOOLValue2)
    {
      v13 &= sub_1001365CC(sDKVersion, @"15.4");
    }
  }

  else
  {
    v13 = 0;
  }

  if (bOOLValue3)
  {
    v13 &= sub_1001365CC(sDKVersion, @"19.0");
  }

  return (bOOLValue4 ^ 1) & v13;
}

- (void)setChannelPushClient:(id)client
{
  clientCopy = client;
  if (self->_channelPushClient != clientCopy)
  {
    v8 = clientCopy;
    objc_storeStrong(&self->_channelPushClient, client);
    clientCopy = v8;
    if (v8)
    {
      channelPushToken = [(CSDVoIPApplication *)self channelPushToken];

      if (channelPushToken)
      {
        [(CSDVoIPApplication *)self _deliverChannelPushTokenToApplication];
      }

      pendingChannelDelegateMessageContexts = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];

      clientCopy = v8;
      if (pendingChannelDelegateMessageContexts)
      {
        [(CSDVoIPApplication *)self _deliverPendingChannelPushPayloadsToApplication];
        clientCopy = v8;
      }
    }
  }
}

- (void)setPushKitClient:(id)client
{
  clientCopy = client;
  if (self->_pushKitClient != clientCopy)
  {
    v9 = clientCopy;
    objc_storeStrong(&self->_pushKitClient, client);
    clientCopy = v9;
    if (v9)
    {
      voipToken = [(CSDVoIPApplication *)self voipToken];

      if (voipToken)
      {
        [(CSDVoIPApplication *)self _deliverVoIPTokenToApplication];
      }

      pendingPushKitVoIPMessageContexts = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
      v8 = [pendingPushKitVoIPMessageContexts count];

      clientCopy = v9;
      if (v8)
      {
        [(CSDVoIPApplication *)self _deliverPendingPushKitPayloadsToApplication];
        clientCopy = v9;
      }
    }
  }
}

- (void)setNetworkExtensionClient:(id)client
{
  clientCopy = client;
  if (self->_networkExtensionClient != clientCopy)
  {
    v8 = clientCopy;
    objc_storeStrong(&self->_networkExtensionClient, client);
    clientCopy = v8;
    if (v8)
    {
      pendingNetworkExtensionMessageContexts = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
      v7 = [pendingNetworkExtensionMessageContexts count];

      clientCopy = v8;
      if (v7)
      {
        [(CSDVoIPApplication *)self _deliverPendingNetworkExtensionPayloadsToApplication];
        clientCopy = v8;
      }
    }
  }
}

- (void)deliverVoIPToken:(id)token
{
  tokenCopy = token;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = tokenCopy;
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to deliver voip token %@ to application %@", &v6, 0x16u);
  }

  [(CSDVoIPApplication *)self setVoipToken:tokenCopy];
  [(CSDVoIPApplication *)self _deliverVoIPTokenToApplication];
}

- (void)deliverChannelPushToken:(id)token
{
  tokenCopy = token;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = tokenCopy;
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to deliver PTT token %@ to application %@", &v6, 0x16u);
  }

  [(CSDVoIPApplication *)self setChannelPushToken:tokenCopy];
  [(CSDVoIPApplication *)self _deliverChannelPushTokenToApplication];
}

- (BOOL)hasPendingChannelPushMessagesToDeliver
{
  pendingChannelDelegateMessageContexts = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
  v3 = [pendingChannelDelegateMessageContexts count] != 0;

  return v3;
}

- (void)dropUndeliveredChannelPushesOnTheFloor
{
  pendingChannelDelegateMessageContexts = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
  [pendingChannelDelegateMessageContexts removeAllObjects];
}

- (void)_deliverVoIPTokenToApplication
{
  pushKitClient = [(CSDVoIPApplication *)self pushKitClient];

  if (pushKitClient)
  {
    pushKitClient2 = [(CSDVoIPApplication *)self pushKitClient];
    objectForBlock = [pushKitClient2 objectForBlock];

    if ([objectForBlock conformsToProtocol:&OBJC_PROTOCOL___PKVoIPXPCClient])
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        voipToken = [(CSDVoIPApplication *)self voipToken];
        v9 = 138412546;
        v10 = voipToken;
        v11 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Delivering voip token %@ to application %@", &v9, 0x16u);
      }

      voipToken2 = [(CSDVoIPApplication *)self voipToken];
      [objectForBlock voipRegistrationSucceededWithDeviceToken:voipToken2];
    }
  }

  else
  {
    objectForBlock = sub_100004778();
    if (os_log_type_enabled(objectForBlock, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, objectForBlock, OS_LOG_TYPE_DEFAULT, "Pending VoIP token delivery until a connection exists", &v9, 2u);
    }
  }
}

- (void)_deliverChannelPushTokenToApplication
{
  channelPushClient = [(CSDVoIPApplication *)self channelPushClient];

  if (channelPushClient)
  {
    channelPushClient2 = [(CSDVoIPApplication *)self channelPushClient];
    objectForBlock = [channelPushClient2 objectForBlock];

    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      channelPushToken = [(CSDVoIPApplication *)self channelPushToken];
      v9 = 138412802;
      v10 = channelPushToken;
      v11 = 2112;
      selfCopy = self;
      v13 = 2048;
      v14 = objectForBlock;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Delivering ptt token %@ to application %@ proxy %p", &v9, 0x20u);
    }

    channelPushToken2 = [(CSDVoIPApplication *)self channelPushToken];
    [objectForBlock _didReceivePushToken:channelPushToken2];
  }

  else
  {
    objectForBlock = sub_100004778();
    if (os_log_type_enabled(objectForBlock, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, objectForBlock, OS_LOG_TYPE_DEFAULT, "Pending ptt token delivery until a connection exists", &v9, 2u);
    }
  }
}

- (void)_deliverPendingNetworkExtensionPayloadsToApplication
{
  networkExtensionClient = [(CSDVoIPApplication *)self networkExtensionClient];

  pendingNetworkExtensionMessageContexts3 = sub_100004778();
  v5 = os_log_type_enabled(pendingNetworkExtensionMessageContexts3, OS_LOG_TYPE_DEFAULT);
  if (networkExtensionClient)
  {
    if (v5)
    {
      pendingNetworkExtensionMessageContexts = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
      *buf = 134218242;
      v18 = [pendingNetworkExtensionMessageContexts count];
      v19 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, pendingNetworkExtensionMessageContexts3, OS_LOG_TYPE_DEFAULT, "Delivering %lu network extension payload(s) to application %@", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    pendingNetworkExtensionMessageContexts2 = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
    v8 = [pendingNetworkExtensionMessageContexts2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(pendingNetworkExtensionMessageContexts2);
          }

          [(CSDVoIPApplication *)self _deliverMessageContext:*(*(&v12 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [pendingNetworkExtensionMessageContexts2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    pendingNetworkExtensionMessageContexts3 = [(CSDVoIPApplication *)self pendingNetworkExtensionMessageContexts];
    [pendingNetworkExtensionMessageContexts3 removeAllObjects];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, pendingNetworkExtensionMessageContexts3, OS_LOG_TYPE_DEFAULT, "Pending Network Extension payload deliveries until a connection exists", buf, 2u);
  }
}

- (void)_deliverPendingPushKitPayloadsToApplication
{
  pushKitClient = [(CSDVoIPApplication *)self pushKitClient];

  pendingPushKitVoIPMessageContexts3 = sub_100004778();
  v5 = os_log_type_enabled(pendingPushKitVoIPMessageContexts3, OS_LOG_TYPE_DEFAULT);
  if (pushKitClient)
  {
    if (v5)
    {
      pendingPushKitVoIPMessageContexts = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
      *buf = 134218242;
      v18 = [pendingPushKitVoIPMessageContexts count];
      v19 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, pendingPushKitVoIPMessageContexts3, OS_LOG_TYPE_DEFAULT, "Delivering %lu VoIP payload(s) to application %@", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    pendingPushKitVoIPMessageContexts2 = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
    v8 = [pendingPushKitVoIPMessageContexts2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(pendingPushKitVoIPMessageContexts2);
          }

          [(CSDVoIPApplication *)self _deliverMessageContext:*(*(&v12 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [pendingPushKitVoIPMessageContexts2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    pendingPushKitVoIPMessageContexts3 = [(CSDVoIPApplication *)self pendingPushKitVoIPMessageContexts];
    [pendingPushKitVoIPMessageContexts3 removeAllObjects];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, pendingPushKitVoIPMessageContexts3, OS_LOG_TYPE_DEFAULT, "Pending PushKit VoIP payload deliveries until a connection exists", buf, 2u);
  }
}

- (void)_deliverPendingChannelPushPayloadsToApplication
{
  channelPushClient = [(CSDVoIPApplication *)self channelPushClient];

  pendingChannelDelegateMessageContexts3 = sub_100004778();
  v5 = os_log_type_enabled(pendingChannelDelegateMessageContexts3, OS_LOG_TYPE_DEFAULT);
  if (channelPushClient)
  {
    if (v5)
    {
      pendingChannelDelegateMessageContexts = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
      *buf = 134218242;
      v18 = [pendingChannelDelegateMessageContexts count];
      v19 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, pendingChannelDelegateMessageContexts3, OS_LOG_TYPE_DEFAULT, "Delivering %lu channel push payload(s) to application %@", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    pendingChannelDelegateMessageContexts2 = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
    v8 = [pendingChannelDelegateMessageContexts2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(pendingChannelDelegateMessageContexts2);
          }

          [(CSDVoIPApplication *)self _deliverMessageContext:*(*(&v12 + 1) + 8 * v11)];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [pendingChannelDelegateMessageContexts2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    pendingChannelDelegateMessageContexts3 = [(CSDVoIPApplication *)self pendingChannelDelegateMessageContexts];
    [pendingChannelDelegateMessageContexts3 removeAllObjects];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, pendingChannelDelegateMessageContexts3, OS_LOG_TYPE_DEFAULT, "Pending channel push payload deliveries until a connection exists", buf, 2u);
  }
}

- (void)_deliverMessageContext:(id)context
{
  contextCopy = context;
  message = [contextCopy message];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100137C84;
  v23[3] = &unk_100619D88;
  v6 = contextCopy;
  v24 = v6;
  selfCopy = self;
  v7 = objc_retainBlock(v23);
  transportType = [message transportType];
  if (transportType > 1)
  {
    if (transportType == 2)
    {
      pushKitClient = [(CSDVoIPApplication *)self pushKitClient];
      objectForBlock = [pushKitClient objectForBlock];

      if ([objectForBlock conformsToProtocol:&OBJC_PROTOCOL___PKVoIPXPCClient])
      {
        payload = [message payload];
        -[NSObject voipPayloadReceived:mustPostCall:withCompletionHandler:](objectForBlock, "voipPayloadReceived:mustPostCall:withCompletionHandler:", payload, [v6 applicationShouldPostIncomingCall], v7);
        goto LABEL_16;
      }

LABEL_17:

      goto LABEL_18;
    }

    if (transportType == 3)
    {
      objectForBlock = message;
      reply = [objectForBlock reply];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100137D74;
      v20[3] = &unk_10061C3A0;
      v21 = v7;
      v13 = reply;
      v22 = v13;
      [objectForBlock setReply:v20];
      channelPushClient = [(CSDVoIPApplication *)self channelPushClient];
      objectForBlock2 = [channelPushClient objectForBlock];

      if ([objectForBlock2 conformsToProtocol:&OBJC_PROTOCOL___CXChannelPushClientProtocol] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        payload2 = [objectForBlock payload];
        channelUUID = [objectForBlock channelUUID];
        reply2 = [objectForBlock reply];
        [objectForBlock2 _didReceivePushPayload:payload2 channelUUID:channelUUID reply:reply2 isServiceUpdateMessage:-[NSObject isServiceUpdateMessage](objectForBlock isHighPriority:"isServiceUpdateMessage") remainingHighPriorityBudget:{-[NSObject isWakingMessage](objectForBlock, "isWakingMessage"), -[NSObject remainingHighPriorityServiceUpdateBudget](objectForBlock, "remainingHighPriorityServiceUpdateBudget")}];
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!transportType)
    {
      objectForBlock = sub_100004778();
      if (os_log_type_enabled(objectForBlock, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = message;
        _os_log_impl(&_mh_execute_header, objectForBlock, OS_LOG_TYPE_DEFAULT, "[WARN] Message transport type is unknown; cannot deliver message %@", buf, 0xCu);
      }

      goto LABEL_17;
    }

    if (transportType == 1)
    {
      networkExtensionClient = [(CSDVoIPApplication *)self networkExtensionClient];
      objectForBlock = [networkExtensionClient objectForBlock];

      if ([objectForBlock conformsToProtocol:&OBJC_PROTOCOL___CXNetworkExtensionVoIPXPCClient])
      {
        payload = [message payload];
        -[NSObject voipNetworkExtensionPayloadReceived:mustPostCall:withCompletionHandler:](objectForBlock, "voipNetworkExtensionPayloadReceived:mustPostCall:withCompletionHandler:", payload, [v6 applicationShouldPostIncomingCall], v7);
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

LABEL_18:
}

@end
@interface CSDVoIPApplicationController
+ (id)bundleIdFromTopic:(id)topic;
+ (id)topicFromBundleId:(id)id forType:(int)type;
- (BOOL)_appHasOngoingCall:(id)call;
- (BOOL)_isApplicationPreventedFromBeingLaunched:(id)launched;
- (BOOL)containsAnyOutstandingMessageForBundleIdentifier:(id)identifier;
- (BOOL)containsOutstandingMessage:(id)message forBundleIdentifier:(id)identifier;
- (BOOL)pttDeprecationAlertWaitingPeriodHasPassedForApplication:(id)application;
- (BOOL)shouldAllowIncomingCall:(id)call;
- (CSDCallStateController)callStateController;
- (CSDVoIPApplicationController)init;
- (id)_apsConnectionForEnvironment:(id)environment;
- (id)_createAPSConnectionForEnvironment:(id)environment namedDelegatePort:(id)port;
- (id)_findOrCreateApplicationWithBundleIdentifier:(id)identifier;
- (void)_incrementKillCountForApplication:(id)application;
- (void)_moveOpportunisticTopicsToIgnoredListForConnection:(id)connection;
- (void)_pruneUninstalledAppPushTopics;
- (void)_pruneUninstalledAppPushTopicsForConnection:(id)connection;
- (void)_registerNetworkExtensionApplicationWithBundleIdentifier:(id)identifier client:(id)client;
- (void)_removeAllApplicationsFromKillCountsDictionary;
- (void)_removeApplicationFromKillCountsDictionary:(id)dictionary;
- (void)_removeTopic:(id)topic fromConnection:(id)connection;
- (void)activePersistedChannelIdentityChangedTo:(id)to;
- (void)addOutstandingMessage:(id)message forBundleIdentifier:(id)identifier;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)dealloc;
- (void)displayPTTDeprecationAlert:(id)alert;
- (void)handleApplicationUninstalledNotification:(id)notification;
- (void)handlePTTAppReportedValidActiveRemoteParticipant:(id)participant;
- (void)networkExtensionMessageControllerHost:(id)host didReceiveIncomingMessage:(id)message forBundleIdentifier:(id)identifier;
- (void)networkExtensionMessageControllerHost:(id)host didReceiveIncomingPushToTalkMessage:(id)message forBundleIdentifier:(id)identifier;
- (void)notificationServiceExtensionHost:(id)host didReceiveIncomingMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)openApplicationWithBundleIdentifier:(id)identifier message:(id)message;
- (void)processOverBudgetPTTServiceUpdateMessage:(id)message forApplication:(id)application;
- (void)pttCheckInWithReply:(id)reply;
- (void)pttRegister;
- (void)pttUnregister;
- (void)reconcileChannelTopicFilters;
- (void)registerVoIPNetworkExtension;
- (void)removeApplicationFromPTTDeprecationAlertDictionary:(id)dictionary;
- (void)removeOutstandingMessagesForBundleIdentifier:(id)identifier;
- (void)updatePTTDeprecationAlertLogForApplication:(id)application;
- (void)voipRegister;
- (void)voipUnregister;
@end

@implementation CSDVoIPApplicationController

- (CSDVoIPApplicationController)init
{
  v17.receiver = self;
  v17.super_class = CSDVoIPApplicationController;
  v2 = [(CSDVoIPApplicationController *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(CSDVoIPApplicationMonitor);
    applicationMonitor = v2->_applicationMonitor;
    v2->_applicationMonitor = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    bundleIdentifierToVoIPApplication = v2->_bundleIdentifierToVoIPApplication;
    v2->_bundleIdentifierToVoIPApplication = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    outstandingMessages = v2->_outstandingMessages;
    v2->_outstandingMessages = v7;

    v9 = objc_alloc_init(CSDVoIPDOSCache);
    voIPDOSCache = v2->_voIPDOSCache;
    v2->_voIPDOSCache = v9;

    v11 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.voipapplicationcontroller", 0);
    queue = v2->_queue;
    v2->_queue = v11;

    v13 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DEEF8;
    block[3] = &unk_100619D38;
    v16 = v2;
    dispatch_async(v13, block);
  }

  return v2;
}

- (BOOL)shouldAllowIncomingCall:(id)call
{
  callCopy = call;
  voIPDOSCache = [(CSDVoIPApplicationController *)self voIPDOSCache];
  v6 = [voIPDOSCache shouldAllowCallFor:callCopy];

  if ((v6 & 1) == 0)
  {
    v7 = +[CSDReportingController sharedInstance];
    [v7 voipDOSCallIgnored:callCopy];
  }

  return v6;
}

- (void)handleApplicationUninstalledNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDVoIPApplicationController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DFF48;
  v7[3] = &unk_100619D88;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  developmentConnection = [(CSDVoIPApplicationController *)self developmentConnection];
  [developmentConnection setDelegate:0];

  productionConnection = [(CSDVoIPApplicationController *)self productionConnection];
  [productionConnection setDelegate:0];

  developmentConnection2 = [(CSDVoIPApplicationController *)self developmentConnection];
  [developmentConnection2 removeFromRunLoop];

  productionConnection2 = [(CSDVoIPApplicationController *)self productionConnection];
  [productionConnection2 removeFromRunLoop];

  v7.receiver = self;
  v7.super_class = CSDVoIPApplicationController;
  [(CSDVoIPApplicationController *)&v7 dealloc];
}

- (void)registerVoIPNetworkExtension
{
  networkExtensionClientManager = [(CSDVoIPApplicationController *)self networkExtensionClientManager];
  currentClient = [networkExtensionClientManager currentClient];

  if ([currentClient hasVoIPNetworkExtensionEntitlement])
  {
    processBundleIdentifier = [currentClient processBundleIdentifier];
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = processBundleIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request to register VoIP Network Extension for client process with bundle identifier %@", &v10, 0xCu);
    }

    v7 = [processBundleIdentifier length];
    v8 = sub_100004778();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = 138412290;
        v11 = processBundleIdentifier;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registering VoIP Network Extension for application with bundle identifier %@", &v10, 0xCu);
      }

      [(CSDVoIPApplicationController *)self _registerNetworkExtensionApplicationWithBundleIdentifier:processBundleIdentifier client:currentClient];
    }

    else
    {
      if (v9)
      {
        v10 = 138412290;
        v11 = currentClient;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to register VoIP Network Extension; could not obtain a bundle identifier from client process %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    processBundleIdentifier = sub_100004778();
    if (os_log_type_enabled(processBundleIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = currentClient;
      _os_log_impl(&_mh_execute_header, processBundleIdentifier, OS_LOG_TYPE_DEFAULT, "[WARN] Aborting register request for VoIP Network Extension; entitlement was not found on client %@", &v10, 0xCu);
    }
  }
}

- (void)voipRegister
{
  pushKitClientManager = [(CSDVoIPApplicationController *)self pushKitClientManager];
  currentClient = [pushKitClientManager currentClient];
  [(CSDVoIPApplicationController *)self _registerForPushTokenWithType:2 client:currentClient];
}

- (void)voipUnregister
{
  pushKitClientManager = [(CSDVoIPApplicationController *)self pushKitClientManager];
  currentClient = [pushKitClientManager currentClient];
  [(CSDVoIPApplicationController *)self _unregisterForPushTokenWithType:2 client:currentClient];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = connectionCopy;
    v39 = 2112;
    v40 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "for connection: %@ publicToken: %@", buf, 0x16u);
  }

  v9 = APSEnvironmentDevelopment;
  v10 = [(CSDVoIPApplicationController *)self _apsConnectionForEnvironment:APSEnvironmentDevelopment];

  if ((v10 == connectionCopy || (v9 = APSEnvironmentProduction, [(CSDVoIPApplicationController *)self _apsConnectionForEnvironment:APSEnvironmentProduction], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == connectionCopy)) && (v12 = v9) != 0)
  {
    v13 = v12;
    v29 = tokenCopy;
    v30 = connectionCopy;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
    v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          bundleIdentifierToVoIPApplication = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
          v20 = [bundleIdentifierToVoIPApplication objectForKeyedSubscript:v18];
          environment = [v20 environment];
          v22 = [environment isEqualToIgnoringCase:v13];

          if (v22)
          {
            bundleIdentifierToVoIPApplication2 = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
            v24 = [bundleIdentifierToVoIPApplication2 objectForKeyedSubscript:v18];

            [v24 unsetVoIPToken];
            [v24 unsetChannelPushToken];
            if ([v24 hasVoIPBackgroundMode])
            {
              v25 = [objc_opt_class() topicFromBundleId:v18 forType:2];
              v26 = sub_100004778();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v38 = v25;
                v39 = 2112;
                v40 = v18;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Requesting token for topic %@ for bundle ID %@", buf, 0x16u);
              }

              [v30 requestTokenForTopic:v25 identifier:&stru_100631E68];
            }

            if ([v24 meetsRequirementsForPTT])
            {
              v27 = [objc_opt_class() topicFromBundleId:v18 forType:3];
              v28 = sub_100004778();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v38 = v27;
                v39 = 2112;
                v40 = v18;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Requesting token for topic %@ for bundle ID %@", buf, 0x16u);
              }

              [v30 requestTokenForTopic:v27 identifier:&stru_100631E68];
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }

    connectionCopy = v30;
    tokenCopy = v29;
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] No environment found for connection %@", buf, 0xCu);
    }
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138413058;
    v18 = connectionCopy;
    v19 = 2112;
    v20 = tokenCopy;
    v21 = 2112;
    v22 = topicCopy;
    v23 = 2112;
    v24 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "for connection: %@ token: %@ topic: %@ identifier: %@", &v17, 0x2Au);
  }

  v15 = [objc_opt_class() bundleIdFromTopic:topicCopy];
  v16 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:v15];
  if ([topicCopy hasSuffix:@"voip-ptt"])
  {
    [v16 deliverChannelPushToken:tokenCopy];
  }

  else
  {
    [v16 deliverVoIPToken:tokenCopy];
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = connectionCopy;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "for connection: %@ message: %@", &v19, 0x16u);
  }

  topic = [messageCopy topic];
  userInfo = [messageCopy userInfo];
  v11 = [objc_opt_class() bundleIdFromTopic:topic];
  if (![topic hasSuffix:@"voip-ptt"])
  {
    activePersistedChannelIdentity = [[CSDVoIPApplicationMessage alloc] initWithTransportType:2 payload:userInfo];
    goto LABEL_7;
  }

  persistedChannelRegistry = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
  activePersistedChannelIdentity = [persistedChannelRegistry activePersistedChannelIdentity];

  bundleIdentifier = [(CSDVoIPApplicationMessage *)activePersistedChannelIdentity bundleIdentifier];
  v15 = [bundleIdentifier isEqualToString:v11];

  if (v15)
  {
    v16 = -[CSDVoIPApplicationController createPTTApplicationMessageForChannel:withPayload:isWakingMessage:](self, "createPTTApplicationMessageForChannel:withPayload:isWakingMessage:", activePersistedChannelIdentity, userInfo, [messageCopy priority] == 10);

    activePersistedChannelIdentity = v16;
LABEL_7:
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v11;
      v21 = 2112;
      v22 = topic;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received incoming APS message from application with bundle identifier %@ and topic %@", &v19, 0x16u);
    }

    [(CSDVoIPApplicationController *)self openApplicationWithBundleIdentifier:v11 message:activePersistedChannelIdentity];
    goto LABEL_13;
  }

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_10047A3C0();
  }

LABEL_13:
}

- (void)_removeAllApplicationsFromKillCountsDictionary
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting all CSDVoIPApplicationController kill counts", v4, 2u);
  }

  v3 = +[NSUserDefaults tu_defaults];
  [v3 setObject:0 forKey:@"CSDVoIPApplicationKillCounts"];
}

- (void)_removeApplicationFromKillCountsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 objectForKey:@"CSDVoIPApplicationKillCounts"];

  bundleIdentifier = [dictionaryCopy bundleIdentifier];
  v6 = [v4 objectForKey:bundleIdentifier];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    bundleIdentifier2 = [dictionaryCopy bundleIdentifier];
    [v7 removeObjectForKey:bundleIdentifier2];

    v9 = +[NSUserDefaults tu_defaults];
    [v9 setObject:v7 forKey:@"CSDVoIPApplicationKillCounts"];
  }
}

- (void)_incrementKillCountForApplication:(id)application
{
  applicationCopy = application;
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 objectForKey:@"CSDVoIPApplicationKillCounts"];

  if (v4)
  {
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v6 = v5;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v8 = [v6 objectForKey:bundleIdentifier];
  intValue = [v8 intValue];

  LODWORD(bundleIdentifier) = intValue + 1;
  v10 = [NSNumber numberWithInt:intValue + 1];
  bundleIdentifier2 = [applicationCopy bundleIdentifier];
  [v6 setObject:v10 forKey:bundleIdentifier2];

  v12 = +[NSUserDefaults tu_defaults];
  [v12 setObject:v6 forKey:@"CSDVoIPApplicationKillCounts"];

  v13 = +[CSDReportingController sharedInstance];
  bundleIdentifier3 = [applicationCopy bundleIdentifier];
  [v13 voipAppFailedToPostIncomingCall:bundleIdentifier3];

  if (bundleIdentifier == 3)
  {
    v15 = +[CSDReportingController sharedInstance];
    bundleIdentifier4 = [applicationCopy bundleIdentifier];
    [v15 voipAppBecameDisabledFromLaunching:bundleIdentifier4];
  }
}

- (BOOL)_isApplicationPreventedFromBeingLaunched:(id)launched
{
  launchedCopy = launched;
  if ([launchedCopy requiresStrictPolicyEnforcement])
  {
    v4 = +[NSUserDefaults tu_defaults];
    v5 = [v4 objectForKey:@"CSDVoIPApplicationKillCounts"];
    bundleIdentifier = [launchedCopy bundleIdentifier];
    v7 = [v5 objectForKey:bundleIdentifier];

    v8 = [v7 intValue] > 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_appHasOngoingCall:(id)call
{
  callCopy = call;
  callStateController = [(CSDVoIPApplicationController *)self callStateController];
  bundleIdentifier = [callCopy bundleIdentifier];

  LOBYTE(callCopy) = [callStateController isTrackingVoIPCallForBundleIdentifier:bundleIdentifier];
  return callCopy;
}

+ (id)bundleIdFromTopic:(id)topic
{
  topicCopy = topic;
  v4 = @"voip-ptt";
  if (![topicCopy hasSuffix:@"voip-ptt"])
  {
    v4 = @"voip";
  }

  v5 = [topicCopy substringWithRange:{0, objc_msgSend(topicCopy, "length") + ~-[__CFString length](v4, "length")}];

  return v5;
}

+ (id)topicFromBundleId:(id)id forType:(int)type
{
  v4 = @"voip";
  if (type == 3)
  {
    v4 = @"voip-ptt";
  }

  return [NSString stringWithFormat:@"%@.%@", id, v4];
}

- (id)_findOrCreateApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  bundleIdentifierToVoIPApplication = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
  v6 = [bundleIdentifierToVoIPApplication objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    v6 = [[CSDVoIPApplication alloc] initWithBundleIdentifier:identifierCopy];
    bundleIdentifierToVoIPApplication2 = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
    [bundleIdentifierToVoIPApplication2 setObject:v6 forKeyedSubscript:identifierCopy];

    applicationMonitor = [(CSDVoIPApplicationController *)self applicationMonitor];
    [applicationMonitor addVoIPApplication:v6];
  }

  return v6;
}

- (void)_pruneUninstalledAppPushTopics
{
  developmentConnection = [(CSDVoIPApplicationController *)self developmentConnection];
  [(CSDVoIPApplicationController *)self _pruneUninstalledAppPushTopicsForConnection:developmentConnection];

  productionConnection = [(CSDVoIPApplicationController *)self productionConnection];
  [(CSDVoIPApplicationController *)self _pruneUninstalledAppPushTopicsForConnection:productionConnection];
}

- (void)_pruneUninstalledAppPushTopicsForConnection:(id)connection
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  connectionCopy = connection;
  enabledTopics = [connectionCopy enabledTopics];
  v5 = [enabledTopics copy];

  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v26 = 0;
    v8 = *v29;
    obj = v5;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [objc_opt_class() bundleIdFromTopic:v10];
        v12 = [LSApplicationRecord alloc];
        v27 = 0;
        v13 = [v12 initWithBundleIdentifier:v11 allowPlaceholder:1 error:&v27];
        v14 = v27;
        v15 = v14;
        if (v14)
        {
          if ([v14 code] != -10814 || (objc_msgSend(v15, "domain"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", NSOSStatusErrorDomain), v16, (v17 & 1) == 0))
          {
            v23 = sub_100004778();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
            {
              sub_10047A428();
            }

            v19 = obj;
            goto LABEL_25;
          }
        }

        if (!v13)
        {
          v18 = sub_100004778();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = v11;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "We found an enabled VOIP topic for %@ that is no longer installed. Invalidating its push token", buf, 0xCu);
          }

          ++v26;

          [(CSDVoIPApplicationController *)self _removeTopic:v10 fromConnection:connectionCopy];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    if (v26 >= 1)
    {
      v19 = sub_100004778();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 67109120;
      LODWORD(v33) = v26;
      v20 = "[WARN] Ran nightly VOIP reconciliation and found %d discrepencies";
      v21 = v19;
      v22 = 8;
      goto LABEL_24;
    }
  }

  else
  {
  }

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v20 = "Ran nightly VOIP reconciliation and didn't find any discrepencies.";
    v21 = v19;
    v22 = 2;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
  }

LABEL_25:
}

- (id)_apsConnectionForEnvironment:(id)environment
{
  environmentCopy = environment;
  if ([environmentCopy isEqualToString:APSEnvironmentProduction])
  {
    productionConnection = self->_productionConnection;
    if (!productionConnection)
    {
      v6 = [(CSDVoIPApplicationController *)self _createAPSConnectionForEnvironment:environmentCopy namedDelegatePort:@"com.apple.telephonyutilities.callservicesdaemon.voip.push"];
      v7 = self->_productionConnection;
      self->_productionConnection = v6;

      productionConnection = self->_productionConnection;
    }

LABEL_7:
    v10 = productionConnection;
    goto LABEL_11;
  }

  if ([environmentCopy isEqualToString:APSEnvironmentDevelopment])
  {
    productionConnection = self->_developmentConnection;
    if (!productionConnection)
    {
      v8 = [(CSDVoIPApplicationController *)self _createAPSConnectionForEnvironment:environmentCopy namedDelegatePort:@"com.apple.telephonyutilities.callservicesdaemon.voip.push.development"];
      developmentConnection = self->_developmentConnection;
      self->_developmentConnection = v8;

      productionConnection = self->_developmentConnection;
    }

    goto LABEL_7;
  }

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = environmentCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] No APS connection found for environment %@", &v13, 0xCu);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_createAPSConnectionForEnvironment:(id)environment namedDelegatePort:(id)port
{
  portCopy = port;
  environmentCopy = environment;
  v8 = [APSConnection alloc];
  queue = [(CSDVoIPApplicationController *)self queue];
  v10 = [v8 initWithEnvironmentName:environmentCopy namedDelegatePort:portCopy queue:queue];

  [v10 setDelegate:self];

  return v10;
}

- (void)_registerNetworkExtensionApplicationWithBundleIdentifier:(id)identifier client:(id)client
{
  identifierCopy = identifier;
  clientCopy = client;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = clientCopy;
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registering client process %@ with bundle identifier %@ for NetworkExtension VoIP", &v12, 0x16u);
  }

  v9 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:identifierCopy];
  if ([v9 hasVoIPBackgroundMode] && objc_msgSend(v9, "hasVoIPNetworkExtensionEntitlement"))
  {
    [v9 setNetworkExtensionClient:clientCopy];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047A490(identifierCopy, v9);
    }

    bundleIdentifierToVoIPApplication = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
    [bundleIdentifierToVoIPApplication removeObjectForKey:identifierCopy];
  }
}

- (void)networkExtensionMessageControllerHost:(id)host didReceiveIncomingMessage:(id)message forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  messageCopy = message;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received incoming network extension message from application with bundle identifier %@", &v11, 0xCu);
  }

  v10 = [[CSDVoIPApplicationMessage alloc] initWithTransportType:1 payload:messageCopy];
  [(CSDVoIPApplicationController *)self openApplicationWithBundleIdentifier:identifierCopy message:v10];
}

- (void)networkExtensionMessageControllerHost:(id)host didReceiveIncomingPushToTalkMessage:(id)message forBundleIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received incoming network extension PushToTalk message from application with bundle identifier %@", &v15, 0xCu);
  }

  persistedChannelRegistry = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
  activePersistedChannelIdentity = [persistedChannelRegistry activePersistedChannelIdentity];

  bundleIdentifier = [activePersistedChannelIdentity bundleIdentifier];
  v13 = [bundleIdentifier isEqualToString:identifierCopy];

  if (v13)
  {
    v14 = [(CSDVoIPApplicationController *)self createPTTApplicationMessageForChannel:activePersistedChannelIdentity withPayload:messageCopy isWakingMessage:1];
    [(CSDVoIPApplicationController *)self openApplicationWithBundleIdentifier:identifierCopy message:v14];
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10047A628();
    }
  }
}

- (void)_removeTopic:(id)topic fromConnection:(id)connection
{
  connectionCopy = connection;
  topicCopy = topic;
  enabledTopics = [connectionCopy enabledTopics];
  v12 = [enabledTopics mutableCopy];

  [v12 removeObject:topicCopy];
  [connectionCopy _setEnabledTopics:v12];
  opportunisticTopics = [connectionCopy opportunisticTopics];
  v9 = [opportunisticTopics mutableCopy];

  [v9 removeObject:topicCopy];
  [connectionCopy _setOpportunisticTopics:v9];
  ignoredTopics = [connectionCopy ignoredTopics];
  v11 = [ignoredTopics mutableCopy];

  [v11 removeObject:topicCopy];
  [connectionCopy _setIgnoredTopics:v11];
  [connectionCopy invalidateTokenForTopic:topicCopy identifier:&stru_100631E68];
}

- (void)addOutstandingMessage:(id)message forBundleIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  outstandingMessages = [(CSDVoIPApplicationController *)self outstandingMessages];
  v8 = [outstandingMessages objectForKeyedSubscript:identifierCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(NSMutableArray);
    outstandingMessages2 = [(CSDVoIPApplicationController *)self outstandingMessages];
    [outstandingMessages2 setObject:v8 forKeyedSubscript:identifierCopy];
  }

  [v8 addObject:messageCopy];
}

- (BOOL)containsAnyOutstandingMessageForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  outstandingMessages = [(CSDVoIPApplicationController *)self outstandingMessages];
  v6 = [outstandingMessages objectForKeyedSubscript:identifierCopy];

  LOBYTE(outstandingMessages) = [v6 count] != 0;
  return outstandingMessages;
}

- (BOOL)containsOutstandingMessage:(id)message forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  messageCopy = message;
  outstandingMessages = [(CSDVoIPApplicationController *)self outstandingMessages];
  v9 = [outstandingMessages objectForKeyedSubscript:identifierCopy];

  LOBYTE(outstandingMessages) = [v9 containsObject:messageCopy];
  return outstandingMessages;
}

- (void)removeOutstandingMessagesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E3040;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (void)openApplicationWithBundleIdentifier:(id)identifier message:(id)message
{
  identifierCopy = identifier;
  messageCopy = message;
  v8 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:identifierCopy];
  transportType = [messageCopy transportType];
  v52 = transportType == 3;
  if (transportType == 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isServiceUpdateMessage = [messageCopy isServiceUpdateMessage];
      isWakingMessage = [messageCopy isWakingMessage];
      pttServiceUpdatePushMonitor = [(CSDVoIPApplicationController *)self pttServiceUpdatePushMonitor];
      v13 = [pttServiceUpdatePushMonitor remainingPTTWakingServiceUpdateBudgetForApplication:v8];

      [messageCopy setRemainingHighPriorityServiceUpdateBudget:v13];
      if ((isServiceUpdateMessage & isWakingMessage) == 1)
      {
        if (v13 < 1)
        {
          [(CSDVoIPApplicationController *)self processOverBudgetPTTServiceUpdateMessage:messageCopy forApplication:v8];
          goto LABEL_56;
        }

        pttServiceUpdatePushMonitor2 = [(CSDVoIPApplicationController *)self pttServiceUpdatePushMonitor];
        [pttServiceUpdatePushMonitor2 incrementPTTWakingServiceUpdateCountForApplication:v8];

        [messageCopy setRemainingHighPriorityServiceUpdateBudget:v13 - 1];
      }

      v15 = isServiceUpdateMessage;
    }

    else
    {
      v15 = 0;
    }

    [(CSDVoIPApplicationController *)self _isApplicationPreventedFromBeingLaunched:v8];
    requiresStrictPolicyEnforcement = [v8 requiresStrictPolicyEnforcement];
    v21 = [(CSDVoIPApplicationController *)self containsAnyOutstandingMessageForBundleIdentifier:identifierCopy];
    requiresStrictPolicyEnforcement2 = requiresStrictPolicyEnforcement;
    if (v15 & 1) != 0 || (v21)
    {
      v50 = 0;
      when = v15;
      goto LABEL_22;
    }

    [(CSDVoIPApplicationController *)self addOutstandingMessage:messageCopy forBundleIdentifier:identifierCopy];
    when = 0;
    v22 = 1;
    goto LABEL_16;
  }

  if (![(CSDVoIPApplicationController *)self _isApplicationPreventedFromBeingLaunched:v8])
  {
    requiresStrictPolicyEnforcement2 = [v8 requiresStrictPolicyEnforcement];
    applicationMonitor = [(CSDVoIPApplicationController *)self applicationMonitor];
    if (([applicationMonitor isRunningForegroundForVoIPApplication:v8] & 1) != 0 || -[CSDVoIPApplicationController _appHasOngoingCall:](self, "_appHasOngoingCall:", v8))
    {
    }

    else
    {
      v45 = [(CSDVoIPApplicationController *)self containsAnyOutstandingMessageForBundleIdentifier:identifierCopy];

      if ((v45 & 1) == 0)
      {
        [(CSDVoIPApplicationController *)self addOutstandingMessage:messageCopy forBundleIdentifier:identifierCopy];
        when = 0;
        v22 = requiresStrictPolicyEnforcement2;
LABEL_16:
        v50 = v22;
LABEL_22:
        v24 = sub_100004778();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Attempting to open application %@ and acquire a process assertion", &buf, 0xCu);
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v71 = 0x2020000000;
        v72 = 0;
        v25 = dispatch_semaphore_create(0);
        v26 = objc_alloc_init(_LSOpenConfiguration);
        v68 = FBSOpenApplicationOptionKeyActivateSuspended;
        v69 = &__kCFBooleanTrue;
        v27 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        [v26 setFrontBoardOptions:v27];

        v28 = +[LSApplicationWorkspace defaultWorkspace];
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_1001E38A8;
        v62[3] = &unk_10061E228;
        v29 = identifierCopy;
        v63 = v29;
        p_buf = &buf;
        v30 = v25;
        v64 = v30;
        [v28 openApplicationWithBundleIdentifier:v29 configuration:v26 completionHandler:v62];

        v31 = dispatch_time(0, 20000000000);
        v32 = dispatch_semaphore_wait(v30, v31);
        if (*(*(&buf + 1) + 24) == 1)
        {
          v33 = sub_100004778();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_10047A710();
          }
        }

        else if (v32)
        {
          v33 = sub_100004778();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_10047A690();
          }
        }

        else
        {
          v34 = sub_100004778();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *v66 = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Successfully opened application", v66, 2u);
          }

          v33 = [CSDVoIPProcessAssertion processAssertionWithBundleIdentifier:v29];
          if ([v33 acquire])
          {
            v35 = sub_100004778();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *v66 = 0;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Successfully took out process assertion", v66, 2u);
            }

            v36 = 7000000000;
            if (!((transportType == 3) | requiresStrictPolicyEnforcement2))
            {
              v36 = 30000000000;
            }

            if (when)
            {
              v37 = 30000000000;
            }

            else
            {
              v37 = v36;
            }

            whena = dispatch_time(0, v37);
            queue = [(CSDVoIPApplicationController *)self queue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1001E39BC;
            block[3] = &unk_10061E250;
            v47 = v29;
            v54 = v47;
            v39 = v33;
            v59 = v52;
            v55 = v39;
            selfCopy = self;
            v40 = messageCopy;
            v57 = v40;
            v41 = v8;
            v58 = v41;
            v60 = requiresStrictPolicyEnforcement2;
            v61 = v50;
            dispatch_after(whena, queue, block);

            if (v41)
            {
              [v41 deliverMessage:v40 withAssertion:v39 applicationShouldPostIncomingCall:v50];
            }

            else
            {
              v46 = sub_100004778();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *v66 = 138412290;
                v67 = v47;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[WARN] No existing VoIP application found for bundle ID %@", v66, 0xCu);
              }
            }

            v44 = v54;
          }

          else
          {
            v44 = sub_100004778();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              sub_10047A6D0();
            }
          }
        }

        _Block_object_dispose(&buf, 8);
        goto LABEL_56;
      }
    }

    when = 0;
    v50 = 0;
    goto LABEL_22;
  }

  applicationMonitor2 = [(CSDVoIPApplicationController *)self applicationMonitor];
  v17 = [applicationMonitor2 isRunningForegroundForVoIPApplication:v8];

  v18 = sub_100004778();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Application %@ will not be launched because it failed to report an incoming call too many times or repeatedly crashed. However because the app is foreground, delivering VOIP payload anyway.", &buf, 0xCu);
    }

    [v8 deliverMessage:messageCopy withAssertion:0 applicationShouldPostIncomingCall:0];
  }

  else
  {
    if (v19)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Application %@ will not be launched because it failed to report an incoming call too many times (or repeatedly crashed.)", &buf, 0xCu);
    }

    v42 = +[CSDReportingController sharedInstance];
    bundleIdentifier = [v8 bundleIdentifier];
    [v42 voipPushDroppedOnTheFloor:bundleIdentifier];
  }

LABEL_56:
}

- (void)notificationServiceExtensionHost:(id)host didReceiveIncomingMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply
{
  messageCopy = message;
  identifierCopy = identifier;
  replyCopy = reply;
  v12 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:identifierCopy];
  if ([v12 hasVoIPBackgroundMode])
  {
    v13 = [[CSDVoIPApplicationMessage alloc] initWithTransportType:2 payload:messageCopy];
    [(CSDVoIPApplicationController *)self openApplicationWithBundleIdentifier:identifierCopy message:v13];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10047A918(identifierCopy, v12);
    }

    bundleIdentifierToVoIPApplication = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
    [bundleIdentifierToVoIPApplication removeObjectForKey:identifierCopy];

    if (replyCopy)
    {
      v16 = [NSError cx_errorWithCode:3];
      (replyCopy)[2](replyCopy, v16);
    }
  }
}

- (void)activePersistedChannelIdentityChangedTo:(id)to
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E3F8C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handlePTTAppReportedValidActiveRemoteParticipant:(id)participant
{
  object = [participant object];
  provider = [object provider];
  bundleIdentifier = [provider bundleIdentifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Channel: app posted a valid remote participant %@", &v8, 0xCu);
    }

    [(CSDVoIPApplicationController *)self removeOutstandingMessagesForBundleIdentifier:bundleIdentifier];
  }
}

- (void)reconcileChannelTopicFilters
{
  persistedChannelRegistry = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
  activePersistedChannelIdentity = [persistedChannelRegistry activePersistedChannelIdentity];

  developmentConnection = [(CSDVoIPApplicationController *)self developmentConnection];
  [(CSDVoIPApplicationController *)self _moveOpportunisticTopicsToIgnoredListForConnection:developmentConnection];

  productionConnection = [(CSDVoIPApplicationController *)self productionConnection];
  [(CSDVoIPApplicationController *)self _moveOpportunisticTopicsToIgnoredListForConnection:productionConnection];

  if (activePersistedChannelIdentity)
  {
    bundleIdentifier = [activePersistedChannelIdentity bundleIdentifier];
    v8 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:bundleIdentifier];

    if (v8)
    {
      environment = [v8 environment];
      if (!environment)
      {
        v10 = sub_100004778();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          sub_10047A9B0(activePersistedChannelIdentity, v10);
        }

        environment = [v8 pushEnvironmentAccordingToLaunchServices];
      }

      v11 = [(CSDVoIPApplicationController *)self _apsConnectionForEnvironment:environment];
      if (v11)
      {
        v12 = objc_opt_class();
        bundleIdentifier2 = [activePersistedChannelIdentity bundleIdentifier];
        v14 = [v12 topicFromBundleId:bundleIdentifier2 forType:3];

        v16 = v14;
        v15 = [NSArray arrayWithObjects:&v16 count:1];
        [v11 _setOpportunisticTopics:v15];
      }

      else
      {
        v14 = sub_100004778();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10047AA44(activePersistedChannelIdentity);
        }
      }
    }

    else
    {
      environment = sub_100004778();
      if (os_log_type_enabled(environment, OS_LOG_TYPE_ERROR))
      {
        sub_10047AAD0(activePersistedChannelIdentity);
      }
    }
  }
}

- (void)_moveOpportunisticTopicsToIgnoredListForConnection:(id)connection
{
  connectionCopy = connection;
  opportunisticTopics = [connectionCopy opportunisticTopics];
  v4 = opportunisticTopics;
  v5 = &__NSArray0__struct;
  if (opportunisticTopics)
  {
    v5 = opportunisticTopics;
  }

  v6 = v5;

  ignoredTopics = [connectionCopy ignoredTopics];
  v8 = [ignoredTopics mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = +[NSMutableArray array];
  }

  v11 = v10;

  [v11 addObjectsFromArray:v6];
  v12 = [v11 copy];
  [connectionCopy _setIgnoredTopics:v12];

  [connectionCopy _setOpportunisticTopics:&__NSArray0__struct];
}

- (void)pttCheckInWithReply:(id)reply
{
  replyCopy = reply;
  channelClientManager = [(CSDVoIPApplicationController *)self channelClientManager];
  currentClient = [channelClientManager currentClient];

  processBundleIdentifier = [currentClient processBundleIdentifier];
  v8 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:processBundleIdentifier];
  if ([v8 meetsRequirementsForPTT])
  {
    persistedChannelRegistry = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
    v10 = [persistedChannelRegistry persistedTornDownChannelUUIDForBundleIdentifier:processBundleIdentifier];

    if (v10)
    {
      [v8 dropUndeliveredChannelPushesOnTheFloor];
      persistedChannelRegistry2 = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
      [persistedChannelRegistry2 clearPendingChannelTeardownAcknowledgementsForBundleIdentfier:processBundleIdentifier];

      activePersistedChannelIdentity = [[NSUUID alloc] initWithUUIDString:v10];
      replyCopy[2](replyCopy, 2, activePersistedChannelIdentity);
    }

    else
    {
      persistedChannelRegistry3 = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
      activePersistedChannelIdentity = [persistedChannelRegistry3 activePersistedChannelIdentity];

      if (activePersistedChannelIdentity && ([activePersistedChannelIdentity bundleIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", processBundleIdentifier), v14, v15))
      {
        channelUUID = [activePersistedChannelIdentity channelUUID];
        if ([v8 hasPendingChannelPushMessagesToDeliver])
        {
          v17 = 1;
        }

        else
        {
          v17 = 3;
        }

        replyCopy[2](replyCopy, v17, channelUUID);
      }

      else
      {
        replyCopy[2](replyCopy, 0, 0);
      }
    }

    [v8 setChannelPushClient:currentClient];
  }

  else
  {
    replyCopy[2](replyCopy, 4, 0);
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047AB5C();
    }
  }
}

- (void)pttRegister
{
  channelClientManager = [(CSDVoIPApplicationController *)self channelClientManager];
  currentClient = [channelClientManager currentClient];
  [(CSDVoIPApplicationController *)self _registerForPushTokenWithType:3 client:currentClient];
}

- (void)pttUnregister
{
  channelClientManager = [(CSDVoIPApplicationController *)self channelClientManager];
  currentClient = [channelClientManager currentClient];
  [(CSDVoIPApplicationController *)self _unregisterForPushTokenWithType:3 client:currentClient];
}

- (void)displayPTTDeprecationAlert:(id)alert
{
  alertCopy = alert;
  v4 = +[NSMutableDictionary dictionary];
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"PUSH_TO_TALK_APP_REQUIRES_UPDATES_TITLE" value:&stru_100631E68 table:@"TelephonyUtilities"];
  alertCopy = [NSString stringWithFormat:v6, alertCopy];

  [v4 setObject:alertCopy forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  v8 = TUBundle();
  v9 = [v8 localizedStringForKey:@"PUSH_TO_TALK_APP_REQUIRES_UPDATES_MESSAGE" value:&stru_100631E68 table:@"TelephonyUtilities"];
  [v4 setObject:v9 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

  v10 = TUBundle();
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_100631E68 table:@"TelephonyUtilities"];
  [v4 setObject:v11 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationForcesModalAlertAppearance];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDisplayActionButtonOnLockScreen];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationAllowMenuButtonDismissal];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDismissOnLock];
  error = 0;
  v12 = CFUserNotificationCreate(0, 0.0, 0, &error, v4);
  if (v12)
  {
    CFRelease(v12);
  }
}

- (void)updatePTTDeprecationAlertLogForApplication:(id)application
{
  applicationCopy = application;
  v4 = +[NSUserDefaults tu_defaults];
  v10 = [v4 objectForKey:@"CSDPTTDeprecationAlertLog"];

  if (v10)
  {
    v5 = [v10 mutableCopy];
  }

  else
  {
    v5 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v6 = v5;
  v7 = +[NSDate date];
  bundleIdentifier = [applicationCopy bundleIdentifier];

  [v6 setObject:v7 forKey:bundleIdentifier];
  v9 = +[NSUserDefaults tu_defaults];
  [v9 setObject:v6 forKey:@"CSDPTTDeprecationAlertLog"];
}

- (BOOL)pttDeprecationAlertWaitingPeriodHasPassedForApplication:(id)application
{
  applicationCopy = application;
  v4 = +[NSUserDefaults tu_defaults];
  v5 = [v4 objectForKey:@"CSDPTTDeprecationAlertLog"];
  bundleIdentifier = [applicationCopy bundleIdentifier];

  v7 = [v5 objectForKey:bundleIdentifier];

  if (v7)
  {
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:v7];
    v10 = v9;

    v11 = v10 > 86400.0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)removeApplicationFromPTTDeprecationAlertDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 objectForKey:@"CSDPTTDeprecationAlertLog"];

  bundleIdentifier = [dictionaryCopy bundleIdentifier];
  v6 = [v4 objectForKey:bundleIdentifier];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    bundleIdentifier2 = [dictionaryCopy bundleIdentifier];
    [v7 removeObjectForKey:bundleIdentifier2];

    v9 = +[NSUserDefaults tu_defaults];
    [v9 setObject:v7 forKey:@"CSDPTTDeprecationAlertLog"];
  }
}

- (void)processOverBudgetPTTServiceUpdateMessage:(id)message forApplication:(id)application
{
  messageCopy = message;
  applicationCopy = application;
  applicationMonitor = [(CSDVoIPApplicationController *)self applicationMonitor];
  v9 = [applicationMonitor isRunningForegroundForVoIPApplication:applicationCopy];

  v10 = sub_100004778();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      bundleIdentifier = [applicationCopy bundleIdentifier];
      v16 = 138412290;
      v17 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Application %@ will not be launched because the number of PushToTalk Service Update Messages have exceeded the allotted budget. However because the app is foreground, delivering Service Update Message anyway.", &v16, 0xCu);
    }

    [applicationCopy deliverMessage:messageCopy withAssertion:0 applicationShouldPostIncomingCall:0];
  }

  else
  {
    if (v11)
    {
      bundleIdentifier2 = [applicationCopy bundleIdentifier];
      v16 = 138412290;
      v17 = bundleIdentifier2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Application %@ will not be launched because the number of PushToTalk Service Update Messages have exceeded the allotted budget.", &v16, 0xCu);
    }

    if ([applicationCopy isDevelopmentOrTestFlightApp] && MKBGetDeviceLockState() != 1 && MKBGetDeviceLockState() != 2)
    {
      pttServiceUpdatePushMonitor = [(CSDVoIPApplicationController *)self pttServiceUpdatePushMonitor];
      localizedAppName = [applicationCopy localizedAppName];
      [pttServiceUpdatePushMonitor displayPTTServiceUpdateOverBugetAlert:localizedAppName];
    }
  }
}

- (CSDCallStateController)callStateController
{
  WeakRetained = objc_loadWeakRetained(&self->_callStateController);

  return WeakRetained;
}

@end
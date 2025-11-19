@interface CSDVoIPApplicationController
+ (id)bundleIdFromTopic:(id)a3;
+ (id)topicFromBundleId:(id)a3 forType:(int)a4;
- (BOOL)_appHasOngoingCall:(id)a3;
- (BOOL)_isApplicationPreventedFromBeingLaunched:(id)a3;
- (BOOL)containsAnyOutstandingMessageForBundleIdentifier:(id)a3;
- (BOOL)containsOutstandingMessage:(id)a3 forBundleIdentifier:(id)a4;
- (BOOL)pttDeprecationAlertWaitingPeriodHasPassedForApplication:(id)a3;
- (BOOL)shouldAllowIncomingCall:(id)a3;
- (CSDCallStateController)callStateController;
- (CSDVoIPApplicationController)init;
- (id)_apsConnectionForEnvironment:(id)a3;
- (id)_createAPSConnectionForEnvironment:(id)a3 namedDelegatePort:(id)a4;
- (id)_findOrCreateApplicationWithBundleIdentifier:(id)a3;
- (void)_incrementKillCountForApplication:(id)a3;
- (void)_moveOpportunisticTopicsToIgnoredListForConnection:(id)a3;
- (void)_pruneUninstalledAppPushTopics;
- (void)_pruneUninstalledAppPushTopicsForConnection:(id)a3;
- (void)_registerNetworkExtensionApplicationWithBundleIdentifier:(id)a3 client:(id)a4;
- (void)_removeAllApplicationsFromKillCountsDictionary;
- (void)_removeApplicationFromKillCountsDictionary:(id)a3;
- (void)_removeTopic:(id)a3 fromConnection:(id)a4;
- (void)activePersistedChannelIdentityChangedTo:(id)a3;
- (void)addOutstandingMessage:(id)a3 forBundleIdentifier:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)dealloc;
- (void)displayPTTDeprecationAlert:(id)a3;
- (void)handleApplicationUninstalledNotification:(id)a3;
- (void)handlePTTAppReportedValidActiveRemoteParticipant:(id)a3;
- (void)networkExtensionMessageControllerHost:(id)a3 didReceiveIncomingMessage:(id)a4 forBundleIdentifier:(id)a5;
- (void)networkExtensionMessageControllerHost:(id)a3 didReceiveIncomingPushToTalkMessage:(id)a4 forBundleIdentifier:(id)a5;
- (void)notificationServiceExtensionHost:(id)a3 didReceiveIncomingMessage:(id)a4 forBundleIdentifier:(id)a5 reply:(id)a6;
- (void)openApplicationWithBundleIdentifier:(id)a3 message:(id)a4;
- (void)processOverBudgetPTTServiceUpdateMessage:(id)a3 forApplication:(id)a4;
- (void)pttCheckInWithReply:(id)a3;
- (void)pttRegister;
- (void)pttUnregister;
- (void)reconcileChannelTopicFilters;
- (void)registerVoIPNetworkExtension;
- (void)removeApplicationFromPTTDeprecationAlertDictionary:(id)a3;
- (void)removeOutstandingMessagesForBundleIdentifier:(id)a3;
- (void)updatePTTDeprecationAlertLogForApplication:(id)a3;
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

- (BOOL)shouldAllowIncomingCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDVoIPApplicationController *)self voIPDOSCache];
  v6 = [v5 shouldAllowCallFor:v4];

  if ((v6 & 1) == 0)
  {
    v7 = +[CSDReportingController sharedInstance];
    [v7 voipDOSCallIgnored:v4];
  }

  return v6;
}

- (void)handleApplicationUninstalledNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDVoIPApplicationController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DFF48;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)dealloc
{
  v3 = [(CSDVoIPApplicationController *)self developmentConnection];
  [v3 setDelegate:0];

  v4 = [(CSDVoIPApplicationController *)self productionConnection];
  [v4 setDelegate:0];

  v5 = [(CSDVoIPApplicationController *)self developmentConnection];
  [v5 removeFromRunLoop];

  v6 = [(CSDVoIPApplicationController *)self productionConnection];
  [v6 removeFromRunLoop];

  v7.receiver = self;
  v7.super_class = CSDVoIPApplicationController;
  [(CSDVoIPApplicationController *)&v7 dealloc];
}

- (void)registerVoIPNetworkExtension
{
  v3 = [(CSDVoIPApplicationController *)self networkExtensionClientManager];
  v4 = [v3 currentClient];

  if ([v4 hasVoIPNetworkExtensionEntitlement])
  {
    v5 = [v4 processBundleIdentifier];
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request to register VoIP Network Extension for client process with bundle identifier %@", &v10, 0xCu);
    }

    v7 = [v5 length];
    v8 = sub_100004778();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registering VoIP Network Extension for application with bundle identifier %@", &v10, 0xCu);
      }

      [(CSDVoIPApplicationController *)self _registerNetworkExtensionApplicationWithBundleIdentifier:v5 client:v4];
    }

    else
    {
      if (v9)
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to register VoIP Network Extension; could not obtain a bundle identifier from client process %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Aborting register request for VoIP Network Extension; entitlement was not found on client %@", &v10, 0xCu);
    }
  }
}

- (void)voipRegister
{
  v4 = [(CSDVoIPApplicationController *)self pushKitClientManager];
  v3 = [v4 currentClient];
  [(CSDVoIPApplicationController *)self _registerForPushTokenWithType:2 client:v3];
}

- (void)voipUnregister
{
  v4 = [(CSDVoIPApplicationController *)self pushKitClientManager];
  v3 = [v4 currentClient];
  [(CSDVoIPApplicationController *)self _unregisterForPushTokenWithType:2 client:v3];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v6;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "for connection: %@ publicToken: %@", buf, 0x16u);
  }

  v9 = APSEnvironmentDevelopment;
  v10 = [(CSDVoIPApplicationController *)self _apsConnectionForEnvironment:APSEnvironmentDevelopment];

  if ((v10 == v6 || (v9 = APSEnvironmentProduction, [(CSDVoIPApplicationController *)self _apsConnectionForEnvironment:APSEnvironmentProduction], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == v6)) && (v12 = v9) != 0)
  {
    v13 = v12;
    v29 = v7;
    v30 = v6;
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
          v19 = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
          v20 = [v19 objectForKeyedSubscript:v18];
          v21 = [v20 environment];
          v22 = [v21 isEqualToIgnoringCase:v13];

          if (v22)
          {
            v23 = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
            v24 = [v23 objectForKeyedSubscript:v18];

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

    v6 = v30;
    v7 = v29;
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] No environment found for connection %@", buf, 0xCu);
    }
  }
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138413058;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "for connection: %@ token: %@ topic: %@ identifier: %@", &v17, 0x2Au);
  }

  v15 = [objc_opt_class() bundleIdFromTopic:v12];
  v16 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:v15];
  if ([v12 hasSuffix:@"voip-ptt"])
  {
    [v16 deliverChannelPushToken:v11];
  }

  else
  {
    [v16 deliverVoIPToken:v11];
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "for connection: %@ message: %@", &v19, 0x16u);
  }

  v9 = [v7 topic];
  v10 = [v7 userInfo];
  v11 = [objc_opt_class() bundleIdFromTopic:v9];
  if (![v9 hasSuffix:@"voip-ptt"])
  {
    v13 = [[CSDVoIPApplicationMessage alloc] initWithTransportType:2 payload:v10];
    goto LABEL_7;
  }

  v12 = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
  v13 = [v12 activePersistedChannelIdentity];

  v14 = [(CSDVoIPApplicationMessage *)v13 bundleIdentifier];
  v15 = [v14 isEqualToString:v11];

  if (v15)
  {
    v16 = -[CSDVoIPApplicationController createPTTApplicationMessageForChannel:withPayload:isWakingMessage:](self, "createPTTApplicationMessageForChannel:withPayload:isWakingMessage:", v13, v10, [v7 priority] == 10);

    v13 = v16;
LABEL_7:
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v11;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received incoming APS message from application with bundle identifier %@ and topic %@", &v19, 0x16u);
    }

    [(CSDVoIPApplicationController *)self openApplicationWithBundleIdentifier:v11 message:v13];
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

- (void)_removeApplicationFromKillCountsDictionary:(id)a3
{
  v10 = a3;
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 objectForKey:@"CSDVoIPApplicationKillCounts"];

  v5 = [v10 bundleIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    v8 = [v10 bundleIdentifier];
    [v7 removeObjectForKey:v8];

    v9 = +[NSUserDefaults tu_defaults];
    [v9 setObject:v7 forKey:@"CSDVoIPApplicationKillCounts"];
  }
}

- (void)_incrementKillCountForApplication:(id)a3
{
  v17 = a3;
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
  v7 = [v17 bundleIdentifier];
  v8 = [v6 objectForKey:v7];
  v9 = [v8 intValue];

  LODWORD(v7) = v9 + 1;
  v10 = [NSNumber numberWithInt:v9 + 1];
  v11 = [v17 bundleIdentifier];
  [v6 setObject:v10 forKey:v11];

  v12 = +[NSUserDefaults tu_defaults];
  [v12 setObject:v6 forKey:@"CSDVoIPApplicationKillCounts"];

  v13 = +[CSDReportingController sharedInstance];
  v14 = [v17 bundleIdentifier];
  [v13 voipAppFailedToPostIncomingCall:v14];

  if (v7 == 3)
  {
    v15 = +[CSDReportingController sharedInstance];
    v16 = [v17 bundleIdentifier];
    [v15 voipAppBecameDisabledFromLaunching:v16];
  }
}

- (BOOL)_isApplicationPreventedFromBeingLaunched:(id)a3
{
  v3 = a3;
  if ([v3 requiresStrictPolicyEnforcement])
  {
    v4 = +[NSUserDefaults tu_defaults];
    v5 = [v4 objectForKey:@"CSDVoIPApplicationKillCounts"];
    v6 = [v3 bundleIdentifier];
    v7 = [v5 objectForKey:v6];

    v8 = [v7 intValue] > 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_appHasOngoingCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDVoIPApplicationController *)self callStateController];
  v6 = [v4 bundleIdentifier];

  LOBYTE(v4) = [v5 isTrackingVoIPCallForBundleIdentifier:v6];
  return v4;
}

+ (id)bundleIdFromTopic:(id)a3
{
  v3 = a3;
  v4 = @"voip-ptt";
  if (![v3 hasSuffix:@"voip-ptt"])
  {
    v4 = @"voip";
  }

  v5 = [v3 substringWithRange:{0, objc_msgSend(v3, "length") + ~-[__CFString length](v4, "length")}];

  return v5;
}

+ (id)topicFromBundleId:(id)a3 forType:(int)a4
{
  v4 = @"voip";
  if (a4 == 3)
  {
    v4 = @"voip-ptt";
  }

  return [NSString stringWithFormat:@"%@.%@", a3, v4];
}

- (id)_findOrCreateApplicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = [[CSDVoIPApplication alloc] initWithBundleIdentifier:v4];
    v7 = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
    [v7 setObject:v6 forKeyedSubscript:v4];

    v8 = [(CSDVoIPApplicationController *)self applicationMonitor];
    [v8 addVoIPApplication:v6];
  }

  return v6;
}

- (void)_pruneUninstalledAppPushTopics
{
  v3 = [(CSDVoIPApplicationController *)self developmentConnection];
  [(CSDVoIPApplicationController *)self _pruneUninstalledAppPushTopicsForConnection:v3];

  v4 = [(CSDVoIPApplicationController *)self productionConnection];
  [(CSDVoIPApplicationController *)self _pruneUninstalledAppPushTopicsForConnection:v4];
}

- (void)_pruneUninstalledAppPushTopicsForConnection:(id)a3
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = a3;
  v4 = [v24 enabledTopics];
  v5 = [v4 copy];

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

          [(CSDVoIPApplicationController *)self _removeTopic:v10 fromConnection:v24];
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

- (id)_apsConnectionForEnvironment:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:APSEnvironmentProduction])
  {
    productionConnection = self->_productionConnection;
    if (!productionConnection)
    {
      v6 = [(CSDVoIPApplicationController *)self _createAPSConnectionForEnvironment:v4 namedDelegatePort:@"com.apple.telephonyutilities.callservicesdaemon.voip.push"];
      v7 = self->_productionConnection;
      self->_productionConnection = v6;

      productionConnection = self->_productionConnection;
    }

LABEL_7:
    v10 = productionConnection;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:APSEnvironmentDevelopment])
  {
    productionConnection = self->_developmentConnection;
    if (!productionConnection)
    {
      v8 = [(CSDVoIPApplicationController *)self _createAPSConnectionForEnvironment:v4 namedDelegatePort:@"com.apple.telephonyutilities.callservicesdaemon.voip.push.development"];
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
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] No APS connection found for environment %@", &v13, 0xCu);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_createAPSConnectionForEnvironment:(id)a3 namedDelegatePort:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [APSConnection alloc];
  v9 = [(CSDVoIPApplicationController *)self queue];
  v10 = [v8 initWithEnvironmentName:v7 namedDelegatePort:v6 queue:v9];

  [v10 setDelegate:self];

  return v10;
}

- (void)_registerNetworkExtensionApplicationWithBundleIdentifier:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registering client process %@ with bundle identifier %@ for NetworkExtension VoIP", &v12, 0x16u);
  }

  v9 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:v6];
  if ([v9 hasVoIPBackgroundMode] && objc_msgSend(v9, "hasVoIPNetworkExtensionEntitlement"))
  {
    [v9 setNetworkExtensionClient:v7];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047A490(v6, v9);
    }

    v11 = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
    [v11 removeObjectForKey:v6];
  }
}

- (void)networkExtensionMessageControllerHost:(id)a3 didReceiveIncomingMessage:(id)a4 forBundleIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received incoming network extension message from application with bundle identifier %@", &v11, 0xCu);
  }

  v10 = [[CSDVoIPApplicationMessage alloc] initWithTransportType:1 payload:v8];
  [(CSDVoIPApplicationController *)self openApplicationWithBundleIdentifier:v7 message:v10];
}

- (void)networkExtensionMessageControllerHost:(id)a3 didReceiveIncomingPushToTalkMessage:(id)a4 forBundleIdentifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received incoming network extension PushToTalk message from application with bundle identifier %@", &v15, 0xCu);
  }

  v10 = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
  v11 = [v10 activePersistedChannelIdentity];

  v12 = [v11 bundleIdentifier];
  v13 = [v12 isEqualToString:v8];

  if (v13)
  {
    v14 = [(CSDVoIPApplicationController *)self createPTTApplicationMessageForChannel:v11 withPayload:v7 isWakingMessage:1];
    [(CSDVoIPApplicationController *)self openApplicationWithBundleIdentifier:v8 message:v14];
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

- (void)_removeTopic:(id)a3 fromConnection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 enabledTopics];
  v12 = [v7 mutableCopy];

  [v12 removeObject:v6];
  [v5 _setEnabledTopics:v12];
  v8 = [v5 opportunisticTopics];
  v9 = [v8 mutableCopy];

  [v9 removeObject:v6];
  [v5 _setOpportunisticTopics:v9];
  v10 = [v5 ignoredTopics];
  v11 = [v10 mutableCopy];

  [v11 removeObject:v6];
  [v5 _setIgnoredTopics:v11];
  [v5 invalidateTokenForTopic:v6 identifier:&stru_100631E68];
}

- (void)addOutstandingMessage:(id)a3 forBundleIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CSDVoIPApplicationController *)self outstandingMessages];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = [(CSDVoIPApplicationController *)self outstandingMessages];
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  [v8 addObject:v10];
}

- (BOOL)containsAnyOutstandingMessageForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDVoIPApplicationController *)self outstandingMessages];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v5) = [v6 count] != 0;
  return v5;
}

- (BOOL)containsOutstandingMessage:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDVoIPApplicationController *)self outstandingMessages];
  v9 = [v8 objectForKeyedSubscript:v6];

  LOBYTE(v8) = [v9 containsObject:v7];
  return v8;
}

- (void)removeOutstandingMessagesForBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001E3040;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)openApplicationWithBundleIdentifier:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:v6];
  v9 = [v7 transportType];
  v52 = v9 == 3;
  if (v9 == 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 isServiceUpdateMessage];
      v11 = [v7 isWakingMessage];
      v12 = [(CSDVoIPApplicationController *)self pttServiceUpdatePushMonitor];
      v13 = [v12 remainingPTTWakingServiceUpdateBudgetForApplication:v8];

      [v7 setRemainingHighPriorityServiceUpdateBudget:v13];
      if ((v10 & v11) == 1)
      {
        if (v13 < 1)
        {
          [(CSDVoIPApplicationController *)self processOverBudgetPTTServiceUpdateMessage:v7 forApplication:v8];
          goto LABEL_56;
        }

        v14 = [(CSDVoIPApplicationController *)self pttServiceUpdatePushMonitor];
        [v14 incrementPTTWakingServiceUpdateCountForApplication:v8];

        [v7 setRemainingHighPriorityServiceUpdateBudget:v13 - 1];
      }

      v15 = v10;
    }

    else
    {
      v15 = 0;
    }

    [(CSDVoIPApplicationController *)self _isApplicationPreventedFromBeingLaunched:v8];
    v20 = [v8 requiresStrictPolicyEnforcement];
    v21 = [(CSDVoIPApplicationController *)self containsAnyOutstandingMessageForBundleIdentifier:v6];
    v51 = v20;
    if (v15 & 1) != 0 || (v21)
    {
      v50 = 0;
      when = v15;
      goto LABEL_22;
    }

    [(CSDVoIPApplicationController *)self addOutstandingMessage:v7 forBundleIdentifier:v6];
    when = 0;
    v22 = 1;
    goto LABEL_16;
  }

  if (![(CSDVoIPApplicationController *)self _isApplicationPreventedFromBeingLaunched:v8])
  {
    v51 = [v8 requiresStrictPolicyEnforcement];
    v23 = [(CSDVoIPApplicationController *)self applicationMonitor];
    if (([v23 isRunningForegroundForVoIPApplication:v8] & 1) != 0 || -[CSDVoIPApplicationController _appHasOngoingCall:](self, "_appHasOngoingCall:", v8))
    {
    }

    else
    {
      v45 = [(CSDVoIPApplicationController *)self containsAnyOutstandingMessageForBundleIdentifier:v6];

      if ((v45 & 1) == 0)
      {
        [(CSDVoIPApplicationController *)self addOutstandingMessage:v7 forBundleIdentifier:v6];
        when = 0;
        v22 = v51;
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
        v29 = v6;
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
            if (!((v9 == 3) | v51))
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
            v38 = [(CSDVoIPApplicationController *)self queue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1001E39BC;
            block[3] = &unk_10061E250;
            v47 = v29;
            v54 = v47;
            v39 = v33;
            v59 = v52;
            v55 = v39;
            v56 = self;
            v40 = v7;
            v57 = v40;
            v41 = v8;
            v58 = v41;
            v60 = v51;
            v61 = v50;
            dispatch_after(whena, v38, block);

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

  v16 = [(CSDVoIPApplicationController *)self applicationMonitor];
  v17 = [v16 isRunningForegroundForVoIPApplication:v8];

  v18 = sub_100004778();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Application %@ will not be launched because it failed to report an incoming call too many times or repeatedly crashed. However because the app is foreground, delivering VOIP payload anyway.", &buf, 0xCu);
    }

    [v8 deliverMessage:v7 withAssertion:0 applicationShouldPostIncomingCall:0];
  }

  else
  {
    if (v19)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Application %@ will not be launched because it failed to report an incoming call too many times (or repeatedly crashed.)", &buf, 0xCu);
    }

    v42 = +[CSDReportingController sharedInstance];
    v43 = [v8 bundleIdentifier];
    [v42 voipPushDroppedOnTheFloor:v43];
  }

LABEL_56:
}

- (void)notificationServiceExtensionHost:(id)a3 didReceiveIncomingMessage:(id)a4 forBundleIdentifier:(id)a5 reply:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:v10];
  if ([v12 hasVoIPBackgroundMode])
  {
    v13 = [[CSDVoIPApplicationMessage alloc] initWithTransportType:2 payload:v9];
    [(CSDVoIPApplicationController *)self openApplicationWithBundleIdentifier:v10 message:v13];
    if (v11)
    {
      v11[2](v11, 0);
    }
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10047A918(v10, v12);
    }

    v15 = [(CSDVoIPApplicationController *)self bundleIdentifierToVoIPApplication];
    [v15 removeObjectForKey:v10];

    if (v11)
    {
      v16 = [NSError cx_errorWithCode:3];
      (v11)[2](v11, v16);
    }
  }
}

- (void)activePersistedChannelIdentityChangedTo:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E3F8C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handlePTTAppReportedValidActiveRemoteParticipant:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 provider];
  v6 = [v5 bundleIdentifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Channel: app posted a valid remote participant %@", &v8, 0xCu);
    }

    [(CSDVoIPApplicationController *)self removeOutstandingMessagesForBundleIdentifier:v6];
  }
}

- (void)reconcileChannelTopicFilters
{
  v3 = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
  v4 = [v3 activePersistedChannelIdentity];

  v5 = [(CSDVoIPApplicationController *)self developmentConnection];
  [(CSDVoIPApplicationController *)self _moveOpportunisticTopicsToIgnoredListForConnection:v5];

  v6 = [(CSDVoIPApplicationController *)self productionConnection];
  [(CSDVoIPApplicationController *)self _moveOpportunisticTopicsToIgnoredListForConnection:v6];

  if (v4)
  {
    v7 = [v4 bundleIdentifier];
    v8 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:v7];

    if (v8)
    {
      v9 = [v8 environment];
      if (!v9)
      {
        v10 = sub_100004778();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          sub_10047A9B0(v4, v10);
        }

        v9 = [v8 pushEnvironmentAccordingToLaunchServices];
      }

      v11 = [(CSDVoIPApplicationController *)self _apsConnectionForEnvironment:v9];
      if (v11)
      {
        v12 = objc_opt_class();
        v13 = [v4 bundleIdentifier];
        v14 = [v12 topicFromBundleId:v13 forType:3];

        v16 = v14;
        v15 = [NSArray arrayWithObjects:&v16 count:1];
        [v11 _setOpportunisticTopics:v15];
      }

      else
      {
        v14 = sub_100004778();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10047AA44(v4);
        }
      }
    }

    else
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10047AAD0(v4);
      }
    }
  }
}

- (void)_moveOpportunisticTopicsToIgnoredListForConnection:(id)a3
{
  v13 = a3;
  v3 = [v13 opportunisticTopics];
  v4 = v3;
  v5 = &__NSArray0__struct;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v13 ignoredTopics];
  v8 = [v7 mutableCopy];
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
  [v13 _setIgnoredTopics:v12];

  [v13 _setOpportunisticTopics:&__NSArray0__struct];
}

- (void)pttCheckInWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CSDVoIPApplicationController *)self channelClientManager];
  v6 = [v5 currentClient];

  v7 = [v6 processBundleIdentifier];
  v8 = [(CSDVoIPApplicationController *)self _findOrCreateApplicationWithBundleIdentifier:v7];
  if ([v8 meetsRequirementsForPTT])
  {
    v9 = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
    v10 = [v9 persistedTornDownChannelUUIDForBundleIdentifier:v7];

    if (v10)
    {
      [v8 dropUndeliveredChannelPushesOnTheFloor];
      v11 = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
      [v11 clearPendingChannelTeardownAcknowledgementsForBundleIdentfier:v7];

      v12 = [[NSUUID alloc] initWithUUIDString:v10];
      v4[2](v4, 2, v12);
    }

    else
    {
      v13 = [(CSDVoIPApplicationController *)self persistedChannelRegistry];
      v12 = [v13 activePersistedChannelIdentity];

      if (v12 && ([v12 bundleIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v7), v14, v15))
      {
        v16 = [v12 channelUUID];
        if ([v8 hasPendingChannelPushMessagesToDeliver])
        {
          v17 = 1;
        }

        else
        {
          v17 = 3;
        }

        v4[2](v4, v17, v16);
      }

      else
      {
        v4[2](v4, 0, 0);
      }
    }

    [v8 setChannelPushClient:v6];
  }

  else
  {
    v4[2](v4, 4, 0);
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047AB5C();
    }
  }
}

- (void)pttRegister
{
  v4 = [(CSDVoIPApplicationController *)self channelClientManager];
  v3 = [v4 currentClient];
  [(CSDVoIPApplicationController *)self _registerForPushTokenWithType:3 client:v3];
}

- (void)pttUnregister
{
  v4 = [(CSDVoIPApplicationController *)self channelClientManager];
  v3 = [v4 currentClient];
  [(CSDVoIPApplicationController *)self _unregisterForPushTokenWithType:3 client:v3];
}

- (void)displayPTTDeprecationAlert:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"PUSH_TO_TALK_APP_REQUIRES_UPDATES_TITLE" value:&stru_100631E68 table:@"TelephonyUtilities"];
  v7 = [NSString stringWithFormat:v6, v3];

  [v4 setObject:v7 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
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

- (void)updatePTTDeprecationAlertLogForApplication:(id)a3
{
  v3 = a3;
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
  v8 = [v3 bundleIdentifier];

  [v6 setObject:v7 forKey:v8];
  v9 = +[NSUserDefaults tu_defaults];
  [v9 setObject:v6 forKey:@"CSDPTTDeprecationAlertLog"];
}

- (BOOL)pttDeprecationAlertWaitingPeriodHasPassedForApplication:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults tu_defaults];
  v5 = [v4 objectForKey:@"CSDPTTDeprecationAlertLog"];
  v6 = [v3 bundleIdentifier];

  v7 = [v5 objectForKey:v6];

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

- (void)removeApplicationFromPTTDeprecationAlertDictionary:(id)a3
{
  v10 = a3;
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 objectForKey:@"CSDPTTDeprecationAlertLog"];

  v5 = [v10 bundleIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v4 mutableCopy];
    v8 = [v10 bundleIdentifier];
    [v7 removeObjectForKey:v8];

    v9 = +[NSUserDefaults tu_defaults];
    [v9 setObject:v7 forKey:@"CSDPTTDeprecationAlertLog"];
  }
}

- (void)processOverBudgetPTTServiceUpdateMessage:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDVoIPApplicationController *)self applicationMonitor];
  v9 = [v8 isRunningForegroundForVoIPApplication:v7];

  v10 = sub_100004778();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = [v7 bundleIdentifier];
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Application %@ will not be launched because the number of PushToTalk Service Update Messages have exceeded the allotted budget. However because the app is foreground, delivering Service Update Message anyway.", &v16, 0xCu);
    }

    [v7 deliverMessage:v6 withAssertion:0 applicationShouldPostIncomingCall:0];
  }

  else
  {
    if (v11)
    {
      v13 = [v7 bundleIdentifier];
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Application %@ will not be launched because the number of PushToTalk Service Update Messages have exceeded the allotted budget.", &v16, 0xCu);
    }

    if ([v7 isDevelopmentOrTestFlightApp] && MKBGetDeviceLockState() != 1 && MKBGetDeviceLockState() != 2)
    {
      v14 = [(CSDVoIPApplicationController *)self pttServiceUpdatePushMonitor];
      v15 = [v7 localizedAppName];
      [v14 displayPTTServiceUpdateOverBugetAlert:v15];
    }
  }
}

- (CSDCallStateController)callStateController
{
  WeakRetained = objc_loadWeakRetained(&self->_callStateController);

  return WeakRetained;
}

@end
@interface ActivityManagerDebuggingManager
+ (id)actionStrs:(int64_t)strs maximumInternal:(double)internal clear:(BOOL)clear;
+ (void)appendRecentAction:(id)action;
+ (void)log:(int)log format:(id)format args:(char *)args;
- (ActivityManagerDebuggingManager)initWithManager:(id)manager;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)supportNetworkPeers;
- (double)currentPerfTime;
- (id)perfSummaryString;
- (timeval)ignoredRTimeVal;
- (void)doCopyAdvertisedUUIDWithCompletionHandler:(id)handler;
- (void)doCopyAllUUIDsOfType:(unint64_t)type withCompletionHandler:(id)handler;
- (void)doCopyDebuggingInfo:(id)info completionHandler:(id)handler;
- (void)doCopyDynamicUserActivitiesString:(id)string completionHandler:(id)handler;
- (void)doCopyEnabledUUIDsWithCompletionHandler:(id)handler;
- (void)doCopyRecentActions:(id)actions completionHandler:(id)handler;
- (void)doCopySimulatorStatusString:(id)string completionHandler:(id)handler;
- (void)doCopyStatusString:(id)string options:(id)options completionHandler:(id)handler;
- (void)doDidSaveDelegate:(id)delegate completionHandler:(id)handler;
- (void)doFindMatchingUserActivityForString:(id)string withCompletionHandler:(id)handler;
- (void)doGetCurrentAdvertisedItemUUID:(id)d;
- (void)doGetLoggingFileForClient:(id)client options:(id)options completionHandler:(id)handler;
- (void)doGetPairedDevices:(id)devices completionHandler:(id)handler;
- (void)doGetSFActivityAdvertisement:(id)advertisement completionHandler:(id)handler;
- (void)doGetSysdiagnoseStringsIncludingPrivateData:(BOOL)data completionHandler:(id)handler;
- (void)doInjectBTLEItem:(id)item type:(unint64_t)type identifier:(id)identifier title:(id)title activityPayload:(id)payload webPageURL:(id)l remoteModel:(id)model duration:(double)self0 payloadDelay:(double)self1;
- (void)doNOP:(id)p withCompletionHandler:(id)handler;
- (void)doReplayCommands:(id)commands completionHandler:(id)handler;
- (void)doSetDebugOption:(id)option value:(id)value;
- (void)doSetDefaults:(id)defaults archivedValue:(id)value;
- (void)doSetupNetworkedPairs:(id)pairs port:(int64_t)port;
- (void)doSetupRendevous:(id)rendevous domain:(id)domain activate:(BOOL)activate;
- (void)doTerminateServer;
- (void)doWillSaveDelegate:(id)delegate completionHandler:(id)handler;
- (void)receivePing:(id)ping;
- (void)resume;
- (void)setSupportNetworkPeers:(BOOL)peers;
- (void)startAdvertisingPingWithTimeInterval:(double)interval;
- (void)stopAdvertisingPing;
- (void)suspend;
@end

@implementation ActivityManagerDebuggingManager

+ (void)log:(int)log format:(id)format args:(char *)args
{
  formatCopy = format;
  if (formatCopy && args)
  {
    v9 = formatCopy;
    v8 = [[NSString alloc] initWithFormat:formatCopy arguments:args];
    syslog(log, "%s", [v8 UTF8String]);

    formatCopy = v9;
  }
}

- (ActivityManagerDebuggingManager)initWithManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = ActivityManagerDebuggingManager;
  v6 = [(ActivityManagerDebuggingManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->manager, manager);
    v8 = [NSXPCListener alloc];
    v9 = UAResumableActivitiesManagerServiceName();
    v10 = [v8 initWithMachServiceName:v9];
    listener = v7->listener;
    v7->listener = v10;

    [(NSXPCListener *)v7->listener setDelegate:v7];
    v12 = [NSString stringWithFormat:@"STARTING pid=%d", getpid()];
    [ActivityManagerDebuggingManager appendRecentAction:v12];

    v13 = dispatch_get_global_queue(0, 0);
    [(ActivityManagerDebuggingManager *)v7 setRecentActionsStateHandler:os_state_add_handler()];
  }

  return v7;
}

- (void)suspend
{
  [(NSXPCListener *)self->listener suspend];
  networkConnectionHandler = [(ActivityManagerDebuggingManager *)self networkConnectionHandler];
  [networkConnectionHandler suspend];
}

- (void)resume
{
  [(NSXPCListener *)self->listener resume];
  networkConnectionHandler = [(ActivityManagerDebuggingManager *)self networkConnectionHandler];
  [networkConnectionHandler resume];
}

+ (void)appendRecentAction:(id)action
{
  actionCopy = action;
  v3 = sub_100001BB0();
  objc_sync_enter(v3);
  if ([v3 count] - 49 <= 0xFFFFFFFFFFFFFFCDLL)
  {
    [v3 removeObjectsInRange:{0, objc_msgSend(v3, "count") - 49}];
  }

  v4 = [[ActivityManagerDebugRecentActionItem alloc] initWithString:actionCopy];
  [v3 addObject:v4];

  objc_sync_exit(v3);
}

+ (id)actionStrs:(int64_t)strs maximumInternal:(double)internal clear:(BOOL)clear
{
  clearCopy = clear;
  v28 = +[NSMutableArray array];
  v8 = sub_100001BB0();
  v9 = +[NSDate date];
  v10 = v8;
  objc_sync_enter(v10);
  v11 = [v10 copy];
  if (clearCopy)
  {
    [v10 removeAllObjects];
  }

  objc_sync_exit(v10);
  v27 = v10;

  v12 = objc_alloc_init(NSDateFormatter);
  v13 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [v12 setLocale:v13];

  [v12 setDateFormat:@"HH:MM:ss.SSSS"];
  if (!strs)
  {
    strs = [v11 count];
  }

  if (internal == 0.0)
  {
    internalCopy = 3.40282347e38;
  }

  else
  {
    internalCopy = internal;
  }

  v15 = [v11 count] - strs;
  for (i = v15 & ~(v15 >> 63); i < [v11 count]; ++i)
  {
    v17 = [v11 objectAtIndex:i];
    when = [v17 when];
    [when timeIntervalSinceDate:v9];
    v20 = v19;

    if (v20 <= internalCopy)
    {
      when2 = [v17 when];
      v22 = [v12 stringFromDate:when2];
      v23 = [v17 str];
      v24 = [NSString stringWithFormat:@"%@ %@", v22, v23];
      [v28 addObject:v24];
    }
  }

  v25 = [v28 copy];

  return v25;
}

- (BOOL)supportNetworkPeers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  supportNetworkPeers = selfCopy->_supportNetworkPeers;
  objc_sync_exit(selfCopy);

  return supportNetworkPeers;
}

- (void)setSupportNetworkPeers:(BOOL)peers
{
  peersCopy = peers;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_supportNetworkPeers != peersCopy)
  {
    obj->_supportNetworkPeers = peersCopy;
    if (peersCopy)
    {
      v5 = [UANetworkReplayRendevousHandler alloc];
      manager = [(ActivityManagerDebuggingManager *)obj manager];
      v7 = [(UANetworkReplayRendevousHandler *)v5 initWithManager:manager];
      [(ActivityManagerDebuggingManager *)obj setNetworkConnectionHandler:v7];

      manager2 = [(ActivityManagerDebuggingManager *)obj manager];
      networkConnectionHandler = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
      [manager2 addHandler:networkConnectionHandler];

      v10 = +[UAUserActivityDefaults sharedDefaults];
      rendevousPairingType = [v10 rendevousPairingType];

      v12 = +[UAUserActivityDefaults sharedDefaults];
      enableNetworkControlListener = [v12 enableNetworkControlListener];

      if (enableNetworkControlListener)
      {
        v14 = +[UAUserActivityDefaults sharedDefaults];
        networkControlListenerPort = [v14 networkControlListenerPort];

        networkConnectionHandler2 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
        [networkConnectionHandler2 listenForIncomingConnections:0 port:networkControlListenerPort type:rendevousPairingType];
      }

      v17 = +[UAUserActivityDefaults sharedDefaults];
      enableAutomaticRendevousPairing = [v17 enableAutomaticRendevousPairing];

      if (enableAutomaticRendevousPairing)
      {
        networkConnectionHandler3 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
        [networkConnectionHandler3 scanForPeersOfType:0 domain:0];
      }

      else
      {
        if (!rendevousPairingType)
        {
LABEL_12:

          v4 = obj;
          goto LABEL_13;
        }

        networkConnectionHandler3 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
        [networkConnectionHandler3 scanForPeersOfType:rendevousPairingType domain:0];
      }

      goto LABEL_12;
    }

    networkConnectionHandler4 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];

    v4 = obj;
    if (networkConnectionHandler4)
    {
      manager3 = [(ActivityManagerDebuggingManager *)obj manager];
      networkConnectionHandler5 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
      [manager3 removeHandler:networkConnectionHandler5];

      networkConnectionHandler6 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
      [networkConnectionHandler6 suspend];

      [(ActivityManagerDebuggingManager *)obj setNetworkConnectionHandler:0];
      v4 = obj;
    }
  }

LABEL_13:
  objc_sync_exit(v4);
}

- (id)perfSummaryString
{
  if (getrusage(0, &v4))
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSString stringWithFormat:@"(user=%.5gs/system=%.5gs)", v4.ru_utime.tv_usec / 1000000.0 + v4.ru_utime.tv_sec, v4.ru_stime.tv_usec / 1000000.0 + v4.ru_stime.tv_sec];
  }

  return v2;
}

- (double)currentPerfTime
{
  v2 = getrusage(0, &v4);
  result = 0.0;
  if (!v2)
  {
    return v4.ru_utime.tv_usec / 1000000.0 + v4.ru_utime.tv_sec;
  }

  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.coreservices.lsuseractivityd.admininterface"];
  if ([v6 BOOLValue])
  {
    goto LABEL_9;
  }

  v7 = [connectionCopy valueForEntitlement:@"application-identifier"];
  if (([v7 isEqual:@"com.apple.Preferences"] & 1) != 0 || !objc_msgSend(connectionCopy, "effectiveUserIdentifier"))
  {

LABEL_9:
    goto LABEL_10;
  }

  disableAdminEntitlmentChecking = [(ActivityManagerDebuggingManager *)self disableAdminEntitlmentChecking];

  if (disableAdminEntitlmentChecking)
  {
LABEL_10:
    v12 = _LSGetResumableActivitiesAdministrativeProtocolInterface();
    [connectionCopy setExportedInterface:v12];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&stru_1000C6270];
    [connectionCopy setInvalidationHandler:&stru_1000C6290];
    goto LABEL_11;
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.private.useractivity.sysdiagnose"];
  if ([v9 BOOLValue])
  {
    effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];

    if (!effectiveUserIdentifier)
    {
      v11 = _LSGetResumableActivitiesSysdiagnoseSupportProtocolInterface();
      [connectionCopy setExportedInterface:v11];

      [connectionCopy setExportedObject:self];
LABEL_11:
      [connectionCopy resume];
      v13 = 1;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v15 = sub_100001A30(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = [UAAuditToken alloc];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(v18, 0, sizeof(v18));
    }

    v17 = [(UAAuditToken *)v16 initWithAuditToken:v18];
    *buf = 138543618;
    v20 = v17;
    v21 = 2114;
    v22 = @"com.apple.private.coreservices.lsuseractivityd.admininterface";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "*** Attempt to access adminstrative interface fror process pid=%{public}@, which doesn't have the %{public}@ entitlement.", buf, 0x16u);
  }

  [connectionCopy invalidate];
  v13 = 0;
LABEL_12:

  return v13;
}

- (void)receivePing:(id)ping
{
  pingCopy = ping;
  v4 = sub_100001A30(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138477827;
    v6 = pingCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "*** SENDING PING %{private}@ to clients.", &v5, 0xCu);
  }
}

- (void)doNOP:(id)p withCompletionHandler:(id)handler
{
  pCopy = p;
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138477827;
    v10 = pCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "- doNOP, str=%{private}@, so echoing that back to client.", &v9, 0xCu);
  }

  handlerCopy[2](handlerCopy, pCopy, 0);
  objc_autoreleasePoolPop(v7);
}

- (void)doSetDebugOption:(id)option value:(id)value
{
  optionCopy = option;
  valueCopy = value;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v74 = optionCopy;
    v75 = 2114;
    v76 = valueCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "### DEBUGGING: doSetDebugOption:%{public}@ => %{public}@", buf, 0x16u);
  }

  if (![(__CFString *)optionCopy isEqual:@"EnableDebugging"])
  {
    if ([(__CFString *)optionCopy isEqual:@"sharing"])
    {
      bOOLValue = [valueCopy BOOLValue];
      obj = +[UAUserActivityDefaults sharedDefaults];
      if (bOOLValue != [obj enableSharingFramework] && objc_opt_class())
      {
        v8 = objc_opt_class() == 0;

        if (v8)
        {
          goto LABEL_70;
        }

        bOOLValue2 = [valueCopy BOOLValue];
        v9 = sub_100001A30(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = @"OFF";
          if (bOOLValue2)
          {
            v10 = @"ON";
          }

          *buf = 138543362;
          v74 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "### DEBUGGING: Changing EnableSharingFramework to %{public}@", buf, 0xCu);
        }

        v11 = +[UAUserActivityDefaults sharedDefaults];
        [v11 setEnableSharingFramework:bOOLValue2];

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        manager = [(ActivityManagerDebuggingManager *)self manager];
        obja = [manager advertisers];

        v48 = [obja countByEnumeratingWithState:&v65 objects:v72 count:16];
        if (v48)
        {
          v46 = *v66;
          do
          {
            for (i = 0; i != v48; i = i + 1)
            {
              if (*v66 != v46)
              {
                objc_enumerationMutation(obja);
              }

              v13 = *(*(&v65 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v13;
                v61 = 0u;
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                sfActivityAdvertisers = [v14 sfActivityAdvertisers];
                v16 = [sfActivityAdvertisers countByEnumeratingWithState:&v61 objects:v71 count:16];
                v17 = bOOLValue2;
                if (v16)
                {
                  v18 = *v62;
                  v17 = bOOLValue2;
                  do
                  {
                    for (j = 0; j != v16; j = j + 1)
                    {
                      if (*v62 != v18)
                      {
                        objc_enumerationMutation(sfActivityAdvertisers);
                      }

                      v20 = *(*(&v61 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v21 = sub_100001A30(0);
                        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "### Removing SFActivityAdvertiser from UASharingAdvertiser", buf, 2u);
                        }

                        [v14 removeSFActivityAdvertiser:v20];
                        v17 &= bOOLValue2 ^ 1;
                      }
                    }

                    v16 = [sfActivityAdvertisers countByEnumeratingWithState:&v61 objects:v71 count:16];
                  }

                  while (v16);
                }

                if (v17)
                {
                  v22 = +[SFActivityAdvertiser sharedAdvertiser];
                  v23 = sub_100001A30(0);
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "### Adding SFActivityAdvertiser to UASharingAdvertiser.", buf, 2u);
                  }

                  [v14 addSFActivityAdvertiser:v22];
                }
              }
            }

            v48 = [obja countByEnumeratingWithState:&v65 objects:v72 count:16];
          }

          while (v48);
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        manager2 = [(ActivityManagerDebuggingManager *)self manager];
        obj = [manager2 receivers];

        v25 = [obj countByEnumeratingWithState:&v57 objects:v70 count:16];
        if (v25)
        {
          v47 = *v58;
          v49 = v25;
          do
          {
            for (k = 0; k != v49; k = k + 1)
            {
              if (*v58 != v47)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v57 + 1) + 8 * k);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = v26;
                v53 = 0u;
                v54 = 0u;
                v55 = 0u;
                v56 = 0u;
                sfActivityScanners = [v27 sfActivityScanners];
                v29 = [sfActivityScanners countByEnumeratingWithState:&v53 objects:v69 count:16];
                v30 = bOOLValue2;
                if (v29)
                {
                  v31 = *v54;
                  v30 = bOOLValue2;
                  do
                  {
                    for (m = 0; m != v29; m = m + 1)
                    {
                      if (*v54 != v31)
                      {
                        objc_enumerationMutation(sfActivityScanners);
                      }

                      v33 = *(*(&v53 + 1) + 8 * m);
                      objc_opt_class();
                      v34 = objc_opt_isKindOfClass() ^ 1;
                      if ((v34 | bOOLValue2))
                      {
                        v30 &= v34;
                      }

                      else
                      {
                        v35 = sub_100001A30(0);
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "### Removing SFActivityScanner from UASharingReceiver.", buf, 2u);
                        }

                        [v27 removeSFActivityScanner:v33];
                      }
                    }

                    v29 = [sfActivityScanners countByEnumeratingWithState:&v53 objects:v69 count:16];
                  }

                  while (v29);
                }

                if (v30)
                {
                  v36 = [[SFActivityScanner alloc] initWithDelegate:v27];
                  v37 = sub_100001A30(0);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "### Adding SFActivityScanner to UASharingReceiver.", buf, 2u);
                  }

                  [v27 addSFActivityScanner:v36];
                }
              }
            }

            v49 = [obj countByEnumeratingWithState:&v57 objects:v70 count:16];
          }

          while (v49);
        }
      }
    }

    else
    {
      if ([(__CFString *)optionCopy isEqual:@"screensaver"])
      {
        objc = [(ActivityManagerDebuggingManager *)self manager];
        [objc updateScreenSaverActive:{objc_msgSend(valueCopy, "BOOLValue")}];

        goto LABEL_70;
      }

      if ([(__CFString *)optionCopy isEqual:@"screendim"])
      {
        objd = [(ActivityManagerDebuggingManager *)self manager];
        [objd updateScreenDimStateState:{objc_msgSend(valueCopy, "BOOLValue")}];

        goto LABEL_70;
      }

      if (![(__CFString *)optionCopy isEqual:@"useractive"])
      {
        goto LABEL_70;
      }

      obj = [(ActivityManagerDebuggingManager *)self manager];
      [obj updateUserActiveState:{objc_msgSend(valueCopy, "BOOLValue")}];
    }

    goto LABEL_70;
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setObject:valueCopy forKey:optionCopy];

  objb = +[NSUserDefaults standardUserDefaults];
  [objb synchronize];

LABEL_70:
}

- (void)doFindMatchingUserActivityForString:(id)string withCompletionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v77 = stringCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "str=%{private}@", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v60 = +[NSMutableSet set];
  advertiseableItems = [(UACornerActionManager *)self->manager advertiseableItems];
  cornerActionItems = [(UACornerActionManager *)self->manager cornerActionItems];
  if (stringCopy && [stringCopy length])
  {
    if (![v60 count] && !objc_msgSend(stringCopy, "compare:options:", @"best", 1))
    {
      manager = [(ActivityManagerDebuggingManager *)self manager];
      bestCornerItem = [manager bestCornerItem];

      if (bestCornerItem)
      {
        v10 = sub_100001A30(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          uuid = [bestCornerItem uuid];
          uUIDString = [uuid UUIDString];
          *buf = 138543619;
          v77 = uUIDString;
          v78 = 2113;
          v79 = bestCornerItem;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "-- Matching current best item %{public}@/%{private}@", buf, 0x16u);
        }

        [v60 addObject:bestCornerItem];
      }
    }

    if (![v60 count])
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = cornerActionItems;
      v13 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
      if (v13)
      {
        v57 = *v70;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v70 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v69 + 1) + 8 * i);
            if ([stringCopy containsString:@"."])
            {
              activityType = [v15 activityType];
              v17 = [activityType compare:stringCopy options:1] == 0;

              if (v17)
              {
                [v60 addObject:v15];
              }
            }

            v18 = sub_10000A30C(stringCopy);
            if (v18)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = v15;
                advertisementPayload = [v19 advertisementPayload];
                payloadBytes = [advertisementPayload payloadBytes];
                v22 = [v18 isEqual:payloadBytes];

                if (v22)
                {
                  [v60 addObject:v19];
                }
              }
            }

            if ([stringCopy containsString:@"."])
            {
              bundleIdentifier = [v15 bundleIdentifier];
              v24 = [bundleIdentifier compare:stringCopy options:1] == 0;

              if (v24)
              {
                [v60 addObject:v15];
              }
            }
          }

          v13 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
        }

        while (v13);
      }
    }

    if (![v60 count])
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v54 = advertiseableItems;
      v25 = [v54 countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (!v25)
      {
        goto LABEL_56;
      }

      obja = *v66;
      while (1)
      {
        v58 = v25;
        for (j = 0; j != v58; j = j + 1)
        {
          if (*v66 != obja)
          {
            objc_enumerationMutation(v54);
          }

          v27 = *(*(&v65 + 1) + 8 * j);
          uuid2 = [v27 uuid];
          uUIDString2 = [uuid2 UUIDString];
          if ([uUIDString2 hasPrefix:stringCopy])
          {
            goto LABEL_47;
          }

          uuid3 = [v27 uuid];
          uUIDString3 = [uuid3 UUIDString];
          if ([uUIDString3 hasSuffix:stringCopy])
          {
            goto LABEL_46;
          }

          title = [v27 title];
          if ([title isEqualToString:stringCopy])
          {
            goto LABEL_45;
          }

          title2 = [v27 title];
          if ([title2 hasPrefix:stringCopy])
          {
            goto LABEL_44;
          }

          title3 = [v27 title];
          if ([title3 hasSuffix:stringCopy])
          {

LABEL_44:
LABEL_45:

LABEL_46:
LABEL_47:

LABEL_48:
            [v60 addObject:v27];
            continue;
          }

          if ([stringCopy containsString:@"."])
          {
            activityType2 = [v27 activityType];
            v51 = [activityType2 compare:stringCopy options:1] == 0;

            if (v51)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }
        }

        v25 = [v54 countByEnumeratingWithState:&v65 objects:v74 count:16];
        if (!v25)
        {
LABEL_56:

          break;
        }
      }
    }

    if ([v60 count])
    {
      goto LABEL_71;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = cornerActionItems;
    v35 = [v59 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (!v35)
    {
      goto LABEL_70;
    }

    v36 = *v62;
LABEL_60:
    v37 = 0;
    while (1)
    {
      if (*v62 != v36)
      {
        objc_enumerationMutation(v59);
      }

      v38 = *(*(&v61 + 1) + 8 * v37);
      uuid4 = [v38 uuid];
      uUIDString4 = [uuid4 UUIDString];
      if ([uUIDString4 hasPrefix:stringCopy])
      {
      }

      else
      {
        uuid5 = [v38 uuid];
        uUIDString5 = [uuid5 UUIDString];
        v43 = [uUIDString5 hasSuffix:stringCopy];

        if ((v43 & 1) == 0)
        {
          bundleIdentifier2 = [v38 bundleIdentifier];
          v45 = [bundleIdentifier2 compare:stringCopy options:1] == 0;

          if (!v45)
          {
            goto LABEL_68;
          }
        }
      }

      [v60 addObject:v38];
LABEL_68:
      if (v35 == ++v37)
      {
        v35 = [v59 countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (!v35)
        {
LABEL_70:

          break;
        }

        goto LABEL_60;
      }
    }
  }

LABEL_71:
  if ([v60 count] == 1)
  {
    anyObject = [v60 anyObject];
    uuid6 = [anyObject uuid];
  }

  else
  {
    uuid6 = 0;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, uuid6);
  }

  objc_autoreleasePoolPop(context);
}

- (void)doCopyAllUUIDsOfType:(unint64_t)type withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  v8 = +[NSMutableArray array];
  advertiseableItems = [(UACornerActionManager *)self->manager advertiseableItems];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100077464;
  v15 = &unk_1000C62B8;
  typeCopy = type;
  v10 = v8;
  v16 = v10;
  [advertiseableItems enumerateObjectsUsingBlock:&v12];
  v11 = [v10 copy];
  handlerCopy[2](handlerCopy, v11);

  objc_autoreleasePoolPop(v7);
}

- (void)doCopyAdvertisedUUIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  if ([(UACornerActionManager *)self->manager weAreAdvertisingAnItem])
  {
    uaAdvertisableItemsInOrder = [(UACornerActionManager *)self->manager uaAdvertisableItemsInOrder];
    firstObject = [uaAdvertisableItemsInOrder firstObject];

    if (firstObject)
    {
      uuid = [firstObject uuid];
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    firstObject = 0;
  }

  uuid = 0;
  v8 = 1;
LABEL_6:
  handlerCopy[2](handlerCopy, uuid);
  if ((v8 & 1) == 0)
  {
  }

  objc_autoreleasePoolPop(v4);
}

- (void)doCopyEnabledUUIDsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  activeAdvertiseableItemsUUIDs = [(UACornerActionManager *)self->manager activeAdvertiseableItemsUUIDs];
  handlerCopy[2](handlerCopy, activeAdvertiseableItemsUUIDs);

  objc_autoreleasePoolPop(v4);
}

- (void)doCopyDebuggingInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  debuggingInfo = [(UACornerActionManager *)self->manager debuggingInfo];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, debuggingInfo);
  }
}

- (void)doCopyDynamicUserActivitiesString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  dynamicUserActivitiesString = [(UACornerActionManager *)self->manager dynamicUserActivitiesString];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, dynamicUserActivitiesString);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)doCopyStatusString:(id)string options:(id)options completionHandler:(id)handler
{
  stringCopy = string;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = objc_autoreleasePoolPush();
    if (stringCopy && ![stringCopy isEqual:@"status"])
    {
      if ([stringCopy isEqual:@"simulatorStatus"])
      {
        handlerCopy[2](handlerCopy, @"This platform does not support the iOS simulator.");
        goto LABEL_6;
      }

      if (![stringCopy isEqual:@"recentEligible"])
      {
        stringCopy = [NSString stringWithFormat:@"Command %@ not recognized", stringCopy];
        handlerCopy[2](handlerCopy, stringCopy);

        goto LABEL_6;
      }

      mainDispatchQ = [(UACornerActionManager *)self->manager mainDispatchQ];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100077A98;
      v16[3] = &unk_1000C6308;
      v16[4] = self;
      v17 = handlerCopy;
      dispatch_sync(mainDispatchQ, v16);

      v13 = v17;
    }

    else
    {
      mainDispatchQ2 = [(UACornerActionManager *)self->manager mainDispatchQ];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100077A24;
      block[3] = &unk_1000C62E0;
      block[4] = self;
      v19 = handlerCopy;
      dispatch_sync(mainDispatchQ2, block);

      v13 = v19;
    }

LABEL_6:
    objc_autoreleasePoolPop(v11);
  }
}

- (void)doCopyRecentActions:(id)actions completionHandler:(id)handler
{
  actionsCopy = actions;
  handlerCopy = handler;
  v6 = objc_autoreleasePoolPush();
  if (handlerCopy)
  {
    v7 = objc_opt_class();
    v8 = [actionsCopy objectForKey:@"clear"];
    v9 = [v7 actionStrs:50 maximumInternal:objc_msgSend(v8 clear:{"BOOLValue"), 300.0}];
    handlerCopy[2](handlerCopy, v9);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)doCopySimulatorStatusString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSMutableString string];
  [v5 appendString:@"This platform does not support the iOS simulator."];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v5);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)doGetCurrentAdvertisedItemUUID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  uaAdvertisableItemsInOrder = [(UACornerActionManager *)self->manager uaAdvertisableItemsInOrder];
  firstObject = [uaAdvertisableItemsInOrder firstObject];
  uuid = [firstObject uuid];

  dCopy[2](dCopy, uuid);
  objc_autoreleasePoolPop(v4);
}

- (void)doInjectBTLEItem:(id)item type:(unint64_t)type identifier:(id)identifier title:(id)title activityPayload:(id)payload webPageURL:(id)l remoteModel:(id)model duration:(double)self0 payloadDelay:(double)self1
{
  itemCopy = item;
  identifierCopy = identifier;
  titleCopy = title;
  payloadCopy = payload;
  lCopy = l;
  modelCopy = model;
  context = objc_autoreleasePoolPush();
  if (self->fakeBTLEInjectedItem)
  {
    v20 = sub_100001A30(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem uuid:context];
      *buf = 138412290;
      v57 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Removing previous injected fake BTLE item %@", buf, 0xCu);
    }

    [(UACornerActionManager *)self->manager setDebugCornerItem:0];
    fakeBTLEInjectedItem = self->fakeBTLEInjectedItem;
    self->fakeBTLEInjectedItem = 0;
  }

  if (itemCopy && identifierCopy)
  {
    v23 = [[SharingBTLESuggestedItem alloc] initWithUUID:itemCopy type:type options:0];
    v24 = self->fakeBTLEInjectedItem;
    self->fakeBTLEInjectedItem = v23;

    v25 = +[LSApplicationWorkspace defaultWorkspace];
    v26 = [v25 applicationForUserActivityType:identifierCopy];
    bundleIdentifier = [v26 bundleIdentifier];
    v28 = [v25 applicationIsInstalled:bundleIdentifier];

    if (v28)
    {
      if (v26)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (([identifierCopy containsString:{@":", context}] & 1) == 0)
    {
      v29 = [@":" stringByAppendingString:identifierCopy];
      v26 = [v25 applicationForUserActivityType:v29];

      if (v26)
      {
        goto LABEL_26;
      }
    }

    if (([identifierCopy containsString:@":"] & 1) == 0)
    {
      lowercaseString = [identifierCopy lowercaseString];
      if (([v25 applicationIsInstalled:lowercaseString]& 1) != 0)
      {
        v26 = [LSApplicationProxy applicationProxyForIdentifier:lowercaseString];

        if (v26)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    if ([identifierCopy containsString:@":"])
    {
      v31 = [identifierCopy componentsSeparatedByString:@":"];
      lastObject = [v31 lastObject];
      lowercaseString2 = [lastObject lowercaseString];

      if ([v25 applicationIsInstalled:lowercaseString2])
      {
        v33LowercaseString = [lowercaseString2 lowercaseString];
        v26 = [LSApplicationProxy applicationProxyForIdentifier:v33LowercaseString];
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_26:
    bundleIdentifier2 = [v26 bundleIdentifier];
    [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem setBundleIdentifier:bundleIdentifier2];

    [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem setActivityType:identifierCopy];
    v36 = [SFPeerDevice testPeerForModel:modelCopy];
    [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem setPeerDevice:v36];
    [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem setPayloadRequested:1];
    [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem setPayloadAvailabilityDelay:delay];
    v37 = sub_100001A30(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      activityType = [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem activityType];
      uuid = [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem uuid];
      uUIDString = [uuid UUIDString];
      v41 = sub_100006EF4(payloadCopy);
      *buf = 138478595;
      v57 = activityType;
      v58 = 2113;
      v59 = titleCopy;
      v60 = 2113;
      v61 = uUIDString;
      v62 = 2113;
      v63 = v41;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Injecting fake BTLE item, %{private}@ %{private}@ %{private}@ payload=%{private}@", buf, 0x2Au);
    }

    v42 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000787C8;
    block[3] = &unk_1000C5850;
    block[4] = self;
    v53 = titleCopy;
    v54 = payloadCopy;
    v55 = lCopy;
    dispatch_after(v42, &_dispatch_main_q, block);
    [(UACornerActionManager *)self->manager setDebugCornerItem:self->fakeBTLEInjectedItem];
    v43 = dispatch_time(0, (duration * 1000000000.0));
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100078884;
    v50[3] = &unk_1000C4DA0;
    v50[4] = self;
    v51 = itemCopy;
    dispatch_after(v43, &_dispatch_main_q, v50);

    goto LABEL_29;
  }

  v25 = sub_100001A30(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Injecting nil BTLE item, so removing last item", buf, 2u);
  }

LABEL_29:

  objc_autoreleasePoolPop(context);
}

- (void)doTerminateServer
{
  v3 = objc_autoreleasePoolPush();
  [(UACornerActionManager *)self->manager terminate];

  objc_autoreleasePoolPop(v3);
}

- (void)doWillSaveDelegate:(id)delegate completionHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  clients = [(UACornerActionManager *)self->manager clients];
  v10 = [clients countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(clients);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 userActivityClientForUUID:delegateCopy];
          v15 = sub_100001A30(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            uUIDString = [delegateCopy UUIDString];
            *buf = 138543362;
            v25 = uUIDString;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "About to call prepareToResumeActivityWithUUID for activityUUID %{public}@", buf, 0xCu);
          }

          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100078CB0;
          v17[3] = &unk_1000C4D78;
          v18 = delegateCopy;
          v19 = handlerCopy;
          [v14 askSourceProcessToUpdateActivityWithUUID:v18 evenIfClean:1 completionHandler:v17];

          goto LABEL_13;
        }
      }

      v10 = [clients countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  objc_autoreleasePoolPop(v8);
}

- (void)doDidSaveDelegate:(id)delegate completionHandler:(id)handler
{
  delegateCopy = delegate;
  handlerCopy = handler;
  context = objc_autoreleasePoolPush();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  clients = [(UACornerActionManager *)self->manager clients];
  v9 = [clients countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(clients);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 userActivityClientForUUID:delegateCopy];
          v14 = sub_100001A30(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            uUIDString = [delegateCopy UUIDString];
            *buf = 138543362;
            v26 = uUIDString;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "About to call didResumeUserActivityWithUUID for activityUUID %{public}@", buf, 0xCu);
          }

          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100079084;
          v18[3] = &unk_1000C4D78;
          v16 = delegateCopy;
          v19 = v16;
          v20 = handlerCopy;
          [v13 didResumeUserActivityWithUUID:v16 completionHandler:v18];
        }
      }

      v9 = [clients countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
}

- (void)doSetupNetworkedPairs:(id)pairs port:(int64_t)port
{
  pairsCopy = pairs;
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138478083;
    v10 = pairsCopy;
    v11 = 2048;
    portCopy = port;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Setting up network connection to other machine %{private}@ %ld", &v9, 0x16u);
  }

  manager = [(ActivityManagerDebuggingManager *)self manager];
  [UANetworkReplayController createConnection:manager host:pairsCopy port:port];
}

- (void)doSetupRendevous:(id)rendevous domain:(id)domain activate:(BOOL)activate
{
  rendevousCopy = rendevous;
  domainCopy = domain;
  networkConnectionHandler = [(ActivityManagerDebuggingManager *)self networkConnectionHandler];
  [networkConnectionHandler scanForPeersOfType:rendevousCopy domain:domainCopy];
}

- (void)startAdvertisingPingWithTimeInterval:(double)interval
{
  pingController = [(ActivityManagerDebuggingManager *)self pingController];

  if (pingController)
  {
    v7 = [[UAPingUserActivityInfo alloc] initWithPayloadSize:128];
    pingController2 = [(ActivityManagerDebuggingManager *)self pingController];
    client = [pingController2 client];
    [client pushItem:v7];
  }
}

- (void)stopAdvertisingPing
{
  pingController = [(ActivityManagerDebuggingManager *)self pingController];

  if (pingController)
  {
    pingController2 = [(ActivityManagerDebuggingManager *)self pingController];
    client = [pingController2 client];
    [client removeItem:0];
  }
}

- (void)doGetSysdiagnoseStringsIncludingPrivateData:(BOOL)data completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[NSMutableArray array];
  [v6 addObjectsFromArray:&off_1000CCAD0];
  manager = [(ActivityManagerDebuggingManager *)self manager];
  statusString = [manager statusString];

  [v6 addObject:statusString];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  manager2 = [(ActivityManagerDebuggingManager *)self manager];
  handlers = [manager2 handlers];

  v11 = [handlers countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v11)
  {
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(handlers);
        }

        statusString2 = [*(*(&v23 + 1) + 8 * v13) statusString];
        if (statusString2)
        {
          [v6 addObject:statusString2];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [handlers countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }

  [v6 addObjectsFromArray:&off_1000CCAE8];
  [ActivityManagerDebuggingManager actionStrs:100 maximumInternal:0 clear:86400.0];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v15 = v20 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v16)
  {
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [v6 addObject:{*(*(&v19 + 1) + 8 * v18), v19}];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }

  handlerCopy[2](handlerCopy, v6);
}

- (void)doReplayCommands:(id)commands completionHandler:(id)handler
{
  commandsCopy = commands;
  handlerCopy = handler;
  replayManager = [(ActivityManagerDebuggingManager *)self replayManager];

  if (!replayManager)
  {
    v8 = [UAActivityReplay alloc];
    manager = [(ActivityManagerDebuggingManager *)self manager];
    v10 = [(UAActivityReplay *)v8 initWithManager:manager name:@"ReplayManager"];
    [(ActivityManagerDebuggingManager *)self setReplayManager:v10];

    manager2 = [(ActivityManagerDebuggingManager *)self manager];
    replayManager2 = [(ActivityManagerDebuggingManager *)self replayManager];
    [manager2 addHandler:replayManager2];
  }

  if (commandsCopy && [commandsCopy count])
  {
    replayManager3 = [(ActivityManagerDebuggingManager *)self replayManager];
    [replayManager3 processCommands:commandsCopy completionHandler:handlerCopy];
  }

  else
  {
    [(ActivityManagerDebuggingManager *)self setReplayManager:0];
  }
}

- (void)doSetDefaults:(id)defaults archivedValue:(id)value
{
  defaultsCopy = defaults;
  valueCopy = value;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v11[4] = objc_opt_class();
  v11[5] = objc_opt_class();
  v11[6] = objc_opt_class();
  v11[7] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v11 count:8];
  v8 = [NSSet setWithArray:v7];

  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:valueCopy error:0];

  if (v9)
  {
    v10 = +[UAUserActivityDefaults sharedDefaults];
    [v10 setDefault:defaultsCopy value:v9];
  }
}

- (void)doGetLoggingFileForClient:(id)client options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = handlerCopy;
    v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
    v7[2](v7, 0, v6);

    handlerCopy = v7;
  }
}

- (void)doGetSFActivityAdvertisement:(id)advertisement completionHandler:(id)handler
{
  handlerCopy = handler;
  manager = [(ActivityManagerDebuggingManager *)self manager];
  advertisers = [manager advertisers];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = advertisers;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          currentAdvertisedBytes = [v14 currentAdvertisedBytes];
          mostRecentAdvertisedBytesTime = [v14 mostRecentAdvertisedBytesTime];
          currentAdvertisedItem = [v14 currentAdvertisedItem];
          uuid = [currentAdvertisedItem uuid];
          handlerCopy[2](handlerCopy, currentAdvertisedBytes, mostRecentAdvertisedBytesTime, uuid, 0);

          v13 = v8;
          goto LABEL_11;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = [NSError errorWithDomain:UAContinuityErrorDomain code:-129 userInfo:0, v19];
  (handlerCopy)[2](handlerCopy, 0, 0, 0, v13);
LABEL_11:
}

- (void)doGetPairedDevices:(id)devices completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[NSMutableArray array];
  manager = [(ActivityManagerDebuggingManager *)self manager];
  advertisers = [manager advertisers];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = advertisers;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          pairedDevices = [v13 pairedDevices];
          allObjects = [pairedDevices allObjects];
          [v6 addObjectsFromArray:allObjects];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = sub_100001A30(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "doGetPairedDevices(%{public}@)", buf, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, v6, 0, 0);
}

- (timeval)ignoredRTimeVal
{
  objc_copyStruct(v4, &self->_ignoredRTimeVal, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.tv_usec = v3;
  result.tv_sec = v2;
  return result;
}

@end
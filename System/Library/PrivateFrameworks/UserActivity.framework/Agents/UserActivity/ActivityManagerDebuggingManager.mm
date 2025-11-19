@interface ActivityManagerDebuggingManager
+ (id)actionStrs:(int64_t)a3 maximumInternal:(double)a4 clear:(BOOL)a5;
+ (void)appendRecentAction:(id)a3;
+ (void)log:(int)a3 format:(id)a4 args:(char *)a5;
- (ActivityManagerDebuggingManager)initWithManager:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)supportNetworkPeers;
- (double)currentPerfTime;
- (id)perfSummaryString;
- (timeval)ignoredRTimeVal;
- (void)doCopyAdvertisedUUIDWithCompletionHandler:(id)a3;
- (void)doCopyAllUUIDsOfType:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)doCopyDebuggingInfo:(id)a3 completionHandler:(id)a4;
- (void)doCopyDynamicUserActivitiesString:(id)a3 completionHandler:(id)a4;
- (void)doCopyEnabledUUIDsWithCompletionHandler:(id)a3;
- (void)doCopyRecentActions:(id)a3 completionHandler:(id)a4;
- (void)doCopySimulatorStatusString:(id)a3 completionHandler:(id)a4;
- (void)doCopyStatusString:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)doDidSaveDelegate:(id)a3 completionHandler:(id)a4;
- (void)doFindMatchingUserActivityForString:(id)a3 withCompletionHandler:(id)a4;
- (void)doGetCurrentAdvertisedItemUUID:(id)a3;
- (void)doGetLoggingFileForClient:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)doGetPairedDevices:(id)a3 completionHandler:(id)a4;
- (void)doGetSFActivityAdvertisement:(id)a3 completionHandler:(id)a4;
- (void)doGetSysdiagnoseStringsIncludingPrivateData:(BOOL)a3 completionHandler:(id)a4;
- (void)doInjectBTLEItem:(id)a3 type:(unint64_t)a4 identifier:(id)a5 title:(id)a6 activityPayload:(id)a7 webPageURL:(id)a8 remoteModel:(id)a9 duration:(double)a10 payloadDelay:(double)a11;
- (void)doNOP:(id)a3 withCompletionHandler:(id)a4;
- (void)doReplayCommands:(id)a3 completionHandler:(id)a4;
- (void)doSetDebugOption:(id)a3 value:(id)a4;
- (void)doSetDefaults:(id)a3 archivedValue:(id)a4;
- (void)doSetupNetworkedPairs:(id)a3 port:(int64_t)a4;
- (void)doSetupRendevous:(id)a3 domain:(id)a4 activate:(BOOL)a5;
- (void)doTerminateServer;
- (void)doWillSaveDelegate:(id)a3 completionHandler:(id)a4;
- (void)receivePing:(id)a3;
- (void)resume;
- (void)setSupportNetworkPeers:(BOOL)a3;
- (void)startAdvertisingPingWithTimeInterval:(double)a3;
- (void)stopAdvertisingPing;
- (void)suspend;
@end

@implementation ActivityManagerDebuggingManager

+ (void)log:(int)a3 format:(id)a4 args:(char *)a5
{
  v7 = a4;
  if (v7 && a5)
  {
    v9 = v7;
    v8 = [[NSString alloc] initWithFormat:v7 arguments:a5];
    syslog(a3, "%s", [v8 UTF8String]);

    v7 = v9;
  }
}

- (ActivityManagerDebuggingManager)initWithManager:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ActivityManagerDebuggingManager;
  v6 = [(ActivityManagerDebuggingManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->manager, a3);
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
  v3 = [(ActivityManagerDebuggingManager *)self networkConnectionHandler];
  [v3 suspend];
}

- (void)resume
{
  [(NSXPCListener *)self->listener resume];
  v3 = [(ActivityManagerDebuggingManager *)self networkConnectionHandler];
  [v3 resume];
}

+ (void)appendRecentAction:(id)a3
{
  v5 = a3;
  v3 = sub_100001BB0();
  objc_sync_enter(v3);
  if ([v3 count] - 49 <= 0xFFFFFFFFFFFFFFCDLL)
  {
    [v3 removeObjectsInRange:{0, objc_msgSend(v3, "count") - 49}];
  }

  v4 = [[ActivityManagerDebugRecentActionItem alloc] initWithString:v5];
  [v3 addObject:v4];

  objc_sync_exit(v3);
}

+ (id)actionStrs:(int64_t)a3 maximumInternal:(double)a4 clear:(BOOL)a5
{
  v5 = a5;
  v28 = +[NSMutableArray array];
  v8 = sub_100001BB0();
  v9 = +[NSDate date];
  v10 = v8;
  objc_sync_enter(v10);
  v11 = [v10 copy];
  if (v5)
  {
    [v10 removeAllObjects];
  }

  objc_sync_exit(v10);
  v27 = v10;

  v12 = objc_alloc_init(NSDateFormatter);
  v13 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [v12 setLocale:v13];

  [v12 setDateFormat:@"HH:MM:ss.SSSS"];
  if (!a3)
  {
    a3 = [v11 count];
  }

  if (a4 == 0.0)
  {
    v14 = 3.40282347e38;
  }

  else
  {
    v14 = a4;
  }

  v15 = [v11 count] - a3;
  for (i = v15 & ~(v15 >> 63); i < [v11 count]; ++i)
  {
    v17 = [v11 objectAtIndex:i];
    v18 = [v17 when];
    [v18 timeIntervalSinceDate:v9];
    v20 = v19;

    if (v20 <= v14)
    {
      v21 = [v17 when];
      v22 = [v12 stringFromDate:v21];
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
  v2 = self;
  objc_sync_enter(v2);
  supportNetworkPeers = v2->_supportNetworkPeers;
  objc_sync_exit(v2);

  return supportNetworkPeers;
}

- (void)setSupportNetworkPeers:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_supportNetworkPeers != v3)
  {
    obj->_supportNetworkPeers = v3;
    if (v3)
    {
      v5 = [UANetworkReplayRendevousHandler alloc];
      v6 = [(ActivityManagerDebuggingManager *)obj manager];
      v7 = [(UANetworkReplayRendevousHandler *)v5 initWithManager:v6];
      [(ActivityManagerDebuggingManager *)obj setNetworkConnectionHandler:v7];

      v8 = [(ActivityManagerDebuggingManager *)obj manager];
      v9 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
      [v8 addHandler:v9];

      v10 = +[UAUserActivityDefaults sharedDefaults];
      v11 = [v10 rendevousPairingType];

      v12 = +[UAUserActivityDefaults sharedDefaults];
      v13 = [v12 enableNetworkControlListener];

      if (v13)
      {
        v14 = +[UAUserActivityDefaults sharedDefaults];
        v15 = [v14 networkControlListenerPort];

        v16 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
        [v16 listenForIncomingConnections:0 port:v15 type:v11];
      }

      v17 = +[UAUserActivityDefaults sharedDefaults];
      v18 = [v17 enableAutomaticRendevousPairing];

      if (v18)
      {
        v19 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
        [v19 scanForPeersOfType:0 domain:0];
      }

      else
      {
        if (!v11)
        {
LABEL_12:

          v4 = obj;
          goto LABEL_13;
        }

        v19 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
        [v19 scanForPeersOfType:v11 domain:0];
      }

      goto LABEL_12;
    }

    v20 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];

    v4 = obj;
    if (v20)
    {
      v21 = [(ActivityManagerDebuggingManager *)obj manager];
      v22 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
      [v21 removeHandler:v22];

      v23 = [(ActivityManagerDebuggingManager *)obj networkConnectionHandler];
      [v23 suspend];

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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.private.coreservices.lsuseractivityd.admininterface"];
  if ([v6 BOOLValue])
  {
    goto LABEL_9;
  }

  v7 = [v5 valueForEntitlement:@"application-identifier"];
  if (([v7 isEqual:@"com.apple.Preferences"] & 1) != 0 || !objc_msgSend(v5, "effectiveUserIdentifier"))
  {

LABEL_9:
    goto LABEL_10;
  }

  v8 = [(ActivityManagerDebuggingManager *)self disableAdminEntitlmentChecking];

  if (v8)
  {
LABEL_10:
    v12 = _LSGetResumableActivitiesAdministrativeProtocolInterface();
    [v5 setExportedInterface:v12];

    [v5 setExportedObject:self];
    [v5 setInterruptionHandler:&stru_1000C6270];
    [v5 setInvalidationHandler:&stru_1000C6290];
    goto LABEL_11;
  }

  v9 = [v5 valueForEntitlement:@"com.apple.private.useractivity.sysdiagnose"];
  if ([v9 BOOLValue])
  {
    v10 = [v5 effectiveUserIdentifier];

    if (!v10)
    {
      v11 = _LSGetResumableActivitiesSysdiagnoseSupportProtocolInterface();
      [v5 setExportedInterface:v11];

      [v5 setExportedObject:self];
LABEL_11:
      [v5 resume];
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
    if (v5)
    {
      [v5 auditToken];
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

  [v5 invalidate];
  v13 = 0;
LABEL_12:

  return v13;
}

- (void)receivePing:(id)a3
{
  v3 = a3;
  v4 = sub_100001A30(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138477827;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "*** SENDING PING %{private}@ to clients.", &v5, 0xCu);
  }
}

- (void)doNOP:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138477827;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "- doNOP, str=%{private}@, so echoing that back to client.", &v9, 0xCu);
  }

  v6[2](v6, v5, 0);
  objc_autoreleasePoolPop(v7);
}

- (void)doSetDebugOption:(id)a3 value:(id)a4
{
  v40 = a3;
  v39 = a4;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v74 = v40;
    v75 = 2114;
    v76 = v39;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "### DEBUGGING: doSetDebugOption:%{public}@ => %{public}@", buf, 0x16u);
  }

  if (![(__CFString *)v40 isEqual:@"EnableDebugging"])
  {
    if ([(__CFString *)v40 isEqual:@"sharing"])
    {
      v7 = [v39 BOOLValue];
      obj = +[UAUserActivityDefaults sharedDefaults];
      if (v7 != [obj enableSharingFramework] && objc_opt_class())
      {
        v8 = objc_opt_class() == 0;

        if (v8)
        {
          goto LABEL_70;
        }

        v52 = [v39 BOOLValue];
        v9 = sub_100001A30(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = @"OFF";
          if (v52)
          {
            v10 = @"ON";
          }

          *buf = 138543362;
          v74 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "### DEBUGGING: Changing EnableSharingFramework to %{public}@", buf, 0xCu);
        }

        v11 = +[UAUserActivityDefaults sharedDefaults];
        [v11 setEnableSharingFramework:v52];

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v12 = [(ActivityManagerDebuggingManager *)self manager];
        obja = [v12 advertisers];

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
                v15 = [v14 sfActivityAdvertisers];
                v16 = [v15 countByEnumeratingWithState:&v61 objects:v71 count:16];
                v17 = v52;
                if (v16)
                {
                  v18 = *v62;
                  v17 = v52;
                  do
                  {
                    for (j = 0; j != v16; j = j + 1)
                    {
                      if (*v62 != v18)
                      {
                        objc_enumerationMutation(v15);
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
                        v17 &= v52 ^ 1;
                      }
                    }

                    v16 = [v15 countByEnumeratingWithState:&v61 objects:v71 count:16];
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
        v24 = [(ActivityManagerDebuggingManager *)self manager];
        obj = [v24 receivers];

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
                v28 = [v27 sfActivityScanners];
                v29 = [v28 countByEnumeratingWithState:&v53 objects:v69 count:16];
                v30 = v52;
                if (v29)
                {
                  v31 = *v54;
                  v30 = v52;
                  do
                  {
                    for (m = 0; m != v29; m = m + 1)
                    {
                      if (*v54 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = *(*(&v53 + 1) + 8 * m);
                      objc_opt_class();
                      v34 = objc_opt_isKindOfClass() ^ 1;
                      if ((v34 | v52))
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

                    v29 = [v28 countByEnumeratingWithState:&v53 objects:v69 count:16];
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
      if ([(__CFString *)v40 isEqual:@"screensaver"])
      {
        objc = [(ActivityManagerDebuggingManager *)self manager];
        [objc updateScreenSaverActive:{objc_msgSend(v39, "BOOLValue")}];

        goto LABEL_70;
      }

      if ([(__CFString *)v40 isEqual:@"screendim"])
      {
        objd = [(ActivityManagerDebuggingManager *)self manager];
        [objd updateScreenDimStateState:{objc_msgSend(v39, "BOOLValue")}];

        goto LABEL_70;
      }

      if (![(__CFString *)v40 isEqual:@"useractive"])
      {
        goto LABEL_70;
      }

      obj = [(ActivityManagerDebuggingManager *)self manager];
      [obj updateUserActiveState:{objc_msgSend(v39, "BOOLValue")}];
    }

    goto LABEL_70;
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setObject:v39 forKey:v40];

  objb = +[NSUserDefaults standardUserDefaults];
  [objb synchronize];

LABEL_70:
}

- (void)doFindMatchingUserActivityForString:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v53 = a4;
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v77 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "str=%{private}@", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v60 = +[NSMutableSet set];
  v49 = [(UACornerActionManager *)self->manager advertiseableItems];
  v50 = [(UACornerActionManager *)self->manager cornerActionItems];
  if (v6 && [v6 length])
  {
    if (![v60 count] && !objc_msgSend(v6, "compare:options:", @"best", 1))
    {
      v8 = [(ActivityManagerDebuggingManager *)self manager];
      v9 = [v8 bestCornerItem];

      if (v9)
      {
        v10 = sub_100001A30(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = [v9 uuid];
          v12 = [v11 UUIDString];
          *buf = 138543619;
          v77 = v12;
          v78 = 2113;
          v79 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "-- Matching current best item %{public}@/%{private}@", buf, 0x16u);
        }

        [v60 addObject:v9];
      }
    }

    if (![v60 count])
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = v50;
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
            if ([v6 containsString:@"."])
            {
              v16 = [v15 activityType];
              v17 = [v16 compare:v6 options:1] == 0;

              if (v17)
              {
                [v60 addObject:v15];
              }
            }

            v18 = sub_10000A30C(v6);
            if (v18)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = v15;
                v20 = [v19 advertisementPayload];
                v21 = [v20 payloadBytes];
                v22 = [v18 isEqual:v21];

                if (v22)
                {
                  [v60 addObject:v19];
                }
              }
            }

            if ([v6 containsString:@"."])
            {
              v23 = [v15 bundleIdentifier];
              v24 = [v23 compare:v6 options:1] == 0;

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
      v54 = v49;
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
          v28 = [v27 uuid];
          v29 = [v28 UUIDString];
          if ([v29 hasPrefix:v6])
          {
            goto LABEL_47;
          }

          v30 = [v27 uuid];
          v31 = [v30 UUIDString];
          if ([v31 hasSuffix:v6])
          {
            goto LABEL_46;
          }

          v32 = [v27 title];
          if ([v32 isEqualToString:v6])
          {
            goto LABEL_45;
          }

          v33 = [v27 title];
          if ([v33 hasPrefix:v6])
          {
            goto LABEL_44;
          }

          v34 = [v27 title];
          if ([v34 hasSuffix:v6])
          {

LABEL_44:
LABEL_45:

LABEL_46:
LABEL_47:

LABEL_48:
            [v60 addObject:v27];
            continue;
          }

          if ([v6 containsString:@"."])
          {
            v52 = [v27 activityType];
            v51 = [v52 compare:v6 options:1] == 0;

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
    v59 = v50;
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
      v39 = [v38 uuid];
      v40 = [v39 UUIDString];
      if ([v40 hasPrefix:v6])
      {
      }

      else
      {
        v41 = [v38 uuid];
        v42 = [v41 UUIDString];
        v43 = [v42 hasSuffix:v6];

        if ((v43 & 1) == 0)
        {
          v44 = [v38 bundleIdentifier];
          v45 = [v44 compare:v6 options:1] == 0;

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
    v46 = [v60 anyObject];
    v47 = [v46 uuid];
  }

  else
  {
    v47 = 0;
  }

  if (v53)
  {
    v53[2](v53, v47);
  }

  objc_autoreleasePoolPop(context);
}

- (void)doCopyAllUUIDsOfType:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = +[NSMutableArray array];
  v9 = [(UACornerActionManager *)self->manager advertiseableItems];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100077464;
  v15 = &unk_1000C62B8;
  v17 = a3;
  v10 = v8;
  v16 = v10;
  [v9 enumerateObjectsUsingBlock:&v12];
  v11 = [v10 copy];
  v6[2](v6, v11);

  objc_autoreleasePoolPop(v7);
}

- (void)doCopyAdvertisedUUIDWithCompletionHandler:(id)a3
{
  v9 = a3;
  v4 = objc_autoreleasePoolPush();
  if ([(UACornerActionManager *)self->manager weAreAdvertisingAnItem])
  {
    v5 = [(UACornerActionManager *)self->manager uaAdvertisableItemsInOrder];
    v6 = [v5 firstObject];

    if (v6)
    {
      v7 = [v6 uuid];
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  v8 = 1;
LABEL_6:
  v9[2](v9, v7);
  if ((v8 & 1) == 0)
  {
  }

  objc_autoreleasePoolPop(v4);
}

- (void)doCopyEnabledUUIDsWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(UACornerActionManager *)self->manager activeAdvertiseableItemsUUIDs];
  v6[2](v6, v5);

  objc_autoreleasePoolPop(v4);
}

- (void)doCopyDebuggingInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v5 = [(UACornerActionManager *)self->manager debuggingInfo];
  if (v6)
  {
    v6[2](v6, v5);
  }
}

- (void)doCopyDynamicUserActivitiesString:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v5 = objc_autoreleasePoolPush();
  v6 = [(UACornerActionManager *)self->manager dynamicUserActivitiesString];
  if (v7)
  {
    v7[2](v7, v6);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)doCopyStatusString:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    if (v8 && ![v8 isEqual:@"status"])
    {
      if ([v8 isEqual:@"simulatorStatus"])
      {
        v10[2](v10, @"This platform does not support the iOS simulator.");
        goto LABEL_6;
      }

      if (![v8 isEqual:@"recentEligible"])
      {
        v15 = [NSString stringWithFormat:@"Command %@ not recognized", v8];
        v10[2](v10, v15);

        goto LABEL_6;
      }

      v14 = [(UACornerActionManager *)self->manager mainDispatchQ];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100077A98;
      v16[3] = &unk_1000C6308;
      v16[4] = self;
      v17 = v10;
      dispatch_sync(v14, v16);

      v13 = v17;
    }

    else
    {
      v12 = [(UACornerActionManager *)self->manager mainDispatchQ];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100077A24;
      block[3] = &unk_1000C62E0;
      block[4] = self;
      v19 = v10;
      dispatch_sync(v12, block);

      v13 = v19;
    }

LABEL_6:
    objc_autoreleasePoolPop(v11);
  }
}

- (void)doCopyRecentActions:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    v7 = objc_opt_class();
    v8 = [v10 objectForKey:@"clear"];
    v9 = [v7 actionStrs:50 maximumInternal:objc_msgSend(v8 clear:{"BOOLValue"), 300.0}];
    v5[2](v5, v9);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)doCopySimulatorStatusString:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSMutableString string];
  [v5 appendString:@"This platform does not support the iOS simulator."];
  if (v6)
  {
    v6[2](v6, v5);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)doGetCurrentAdvertisedItemUUID:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(UACornerActionManager *)self->manager uaAdvertisableItemsInOrder];
  v6 = [v5 firstObject];
  v7 = [v6 uuid];

  v8[2](v8, v7);
  objc_autoreleasePoolPop(v4);
}

- (void)doInjectBTLEItem:(id)a3 type:(unint64_t)a4 identifier:(id)a5 title:(id)a6 activityPayload:(id)a7 webPageURL:(id)a8 remoteModel:(id)a9 duration:(double)a10 payloadDelay:(double)a11
{
  v49 = a3;
  v19 = a5;
  v47 = a6;
  v48 = a7;
  v45 = a8;
  v46 = a9;
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

  if (v49 && v19)
  {
    v23 = [[SharingBTLESuggestedItem alloc] initWithUUID:v49 type:a4 options:0];
    v24 = self->fakeBTLEInjectedItem;
    self->fakeBTLEInjectedItem = v23;

    v25 = +[LSApplicationWorkspace defaultWorkspace];
    v26 = [v25 applicationForUserActivityType:v19];
    v27 = [v26 bundleIdentifier];
    v28 = [v25 applicationIsInstalled:v27];

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

    if (([v19 containsString:{@":", context}] & 1) == 0)
    {
      v29 = [@":" stringByAppendingString:v19];
      v26 = [v25 applicationForUserActivityType:v29];

      if (v26)
      {
        goto LABEL_26;
      }
    }

    if (([v19 containsString:@":"] & 1) == 0)
    {
      v30 = [v19 lowercaseString];
      if (([v25 applicationIsInstalled:v30]& 1) != 0)
      {
        v26 = [LSApplicationProxy applicationProxyForIdentifier:v30];

        if (v26)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    if ([v19 containsString:@":"])
    {
      v31 = [v19 componentsSeparatedByString:@":"];
      v32 = [v31 lastObject];
      v33 = [v32 lowercaseString];

      if ([v25 applicationIsInstalled:v33])
      {
        v34 = [v33 lowercaseString];
        v26 = [LSApplicationProxy applicationProxyForIdentifier:v34];
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
    v35 = [v26 bundleIdentifier];
    [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem setBundleIdentifier:v35];

    [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem setActivityType:v19];
    v36 = [SFPeerDevice testPeerForModel:v46];
    [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem setPeerDevice:v36];
    [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem setPayloadRequested:1];
    [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem setPayloadAvailabilityDelay:a11];
    v37 = sub_100001A30(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem activityType];
      v39 = [(SharingBTLESuggestedItem *)self->fakeBTLEInjectedItem uuid];
      v40 = [v39 UUIDString];
      v41 = sub_100006EF4(v48);
      *buf = 138478595;
      v57 = v38;
      v58 = 2113;
      v59 = v47;
      v60 = 2113;
      v61 = v40;
      v62 = 2113;
      v63 = v41;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Injecting fake BTLE item, %{private}@ %{private}@ %{private}@ payload=%{private}@", buf, 0x2Au);
    }

    v42 = dispatch_time(0, (a11 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000787C8;
    block[3] = &unk_1000C5850;
    block[4] = self;
    v53 = v47;
    v54 = v48;
    v55 = v45;
    dispatch_after(v42, &_dispatch_main_q, block);
    [(UACornerActionManager *)self->manager setDebugCornerItem:self->fakeBTLEInjectedItem];
    v43 = dispatch_time(0, (a10 * 1000000000.0));
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100078884;
    v50[3] = &unk_1000C4DA0;
    v50[4] = self;
    v51 = v49;
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

- (void)doWillSaveDelegate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(UACornerActionManager *)self->manager clients];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 userActivityClientForUUID:v6];
          v15 = sub_100001A30(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v6 UUIDString];
            *buf = 138543362;
            v25 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "About to call prepareToResumeActivityWithUUID for activityUUID %{public}@", buf, 0xCu);
          }

          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100078CB0;
          v17[3] = &unk_1000C4D78;
          v18 = v6;
          v19 = v7;
          [v14 askSourceProcessToUpdateActivityWithUUID:v18 evenIfClean:1 completionHandler:v17];

          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
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

- (void)doDidSaveDelegate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(UACornerActionManager *)self->manager clients];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 userActivityClientForUUID:v6];
          v14 = sub_100001A30(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [v6 UUIDString];
            *buf = 138543362;
            v26 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "About to call didResumeUserActivityWithUUID for activityUUID %{public}@", buf, 0xCu);
          }

          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100079084;
          v18[3] = &unk_1000C4D78;
          v16 = v6;
          v19 = v16;
          v20 = v7;
          [v13 didResumeUserActivityWithUUID:v16 completionHandler:v18];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
}

- (void)doSetupNetworkedPairs:(id)a3 port:(int64_t)a4
{
  v6 = a3;
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138478083;
    v10 = v6;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Setting up network connection to other machine %{private}@ %ld", &v9, 0x16u);
  }

  v8 = [(ActivityManagerDebuggingManager *)self manager];
  [UANetworkReplayController createConnection:v8 host:v6 port:a4];
}

- (void)doSetupRendevous:(id)a3 domain:(id)a4 activate:(BOOL)a5
{
  v9 = a3;
  v7 = a4;
  v8 = [(ActivityManagerDebuggingManager *)self networkConnectionHandler];
  [v8 scanForPeersOfType:v9 domain:v7];
}

- (void)startAdvertisingPingWithTimeInterval:(double)a3
{
  v4 = [(ActivityManagerDebuggingManager *)self pingController];

  if (v4)
  {
    v7 = [[UAPingUserActivityInfo alloc] initWithPayloadSize:128];
    v5 = [(ActivityManagerDebuggingManager *)self pingController];
    v6 = [v5 client];
    [v6 pushItem:v7];
  }
}

- (void)stopAdvertisingPing
{
  v3 = [(ActivityManagerDebuggingManager *)self pingController];

  if (v3)
  {
    v5 = [(ActivityManagerDebuggingManager *)self pingController];
    v4 = [v5 client];
    [v4 removeItem:0];
  }
}

- (void)doGetSysdiagnoseStringsIncludingPrivateData:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableArray array];
  [v6 addObjectsFromArray:&off_1000CCAD0];
  v7 = [(ActivityManagerDebuggingManager *)self manager];
  v8 = [v7 statusString];

  [v6 addObject:v8];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(ActivityManagerDebuggingManager *)self manager];
  v10 = [v9 handlers];

  v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v23 + 1) + 8 * v13) statusString];
        if (v14)
        {
          [v6 addObject:v14];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
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

  v5[2](v5, v6);
}

- (void)doReplayCommands:(id)a3 completionHandler:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(ActivityManagerDebuggingManager *)self replayManager];

  if (!v7)
  {
    v8 = [UAActivityReplay alloc];
    v9 = [(ActivityManagerDebuggingManager *)self manager];
    v10 = [(UAActivityReplay *)v8 initWithManager:v9 name:@"ReplayManager"];
    [(ActivityManagerDebuggingManager *)self setReplayManager:v10];

    v11 = [(ActivityManagerDebuggingManager *)self manager];
    v12 = [(ActivityManagerDebuggingManager *)self replayManager];
    [v11 addHandler:v12];
  }

  if (v14 && [v14 count])
  {
    v13 = [(ActivityManagerDebuggingManager *)self replayManager];
    [v13 processCommands:v14 completionHandler:v6];
  }

  else
  {
    [(ActivityManagerDebuggingManager *)self setReplayManager:0];
  }
}

- (void)doSetDefaults:(id)a3 archivedValue:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:0];

  if (v9)
  {
    v10 = +[UAUserActivityDefaults sharedDefaults];
    [v10 setDefault:v5 value:v9];
  }
}

- (void)doGetLoggingFileForClient:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v5 = a5;
  if (v5)
  {
    v7 = v5;
    v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
    v7[2](v7, 0, v6);

    v5 = v7;
  }
}

- (void)doGetSFActivityAdvertisement:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [(ActivityManagerDebuggingManager *)self manager];
  v7 = [v6 advertisers];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
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
          v15 = [v14 currentAdvertisedBytes];
          v16 = [v14 mostRecentAdvertisedBytesTime];
          v17 = [v14 currentAdvertisedItem];
          v18 = [v17 uuid];
          v5[2](v5, v15, v16, v18, 0);

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
  (v5)[2](v5, 0, 0, 0, v13);
LABEL_11:
}

- (void)doGetPairedDevices:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableArray array];
  v7 = [(ActivityManagerDebuggingManager *)self manager];
  v8 = [v7 advertisers];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
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
          v14 = [v13 pairedDevices];
          v15 = [v14 allObjects];
          [v6 addObjectsFromArray:v15];
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

  (*(v5 + 2))(v5, v6, 0, 0);
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
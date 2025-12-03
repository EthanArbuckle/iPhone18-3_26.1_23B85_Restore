@interface UAUserActivityClientProcess
- (BOOL)askSourceProcessToUpdateActivityWithUUID:(id)d evenIfClean:(BOOL)clean completionHandler:(id)handler;
- (BOOL)didResumeUserActivityWithUUID:(id)d completionHandler:(id)handler;
- (BOOL)isDirtyActivityWithUUID:(id)d;
- (BOOL)isEligibleToAdvertiseWithUUID:(id)d;
- (BOOL)isEligibleToAlwaysAdvertiseWithUUID:(id)d;
- (BOOL)removeUserActivityAdvertiseableItemByUUID:(id)d;
- (NSArray)uniqueIdentifiers;
- (NSString)description;
- (NSXPCConnection)connection;
- (UACornerActionManager)manager;
- (UAUserActivityAdvertisableItem)currentAdvertisableActivity;
- (UAUserActivityClientProcess)initWithController:(id)controller connection:(id)connection;
- (id)statusString;
- (id)userActivityAdvertisableItemByUUID:(id)d;
- (void)addUserActivity:(id)activity;
- (void)dispatchPendingTasksForUUID:(id)d error:(id)error;
- (void)doAddDynamicUserActivity:(id)activity matching:(id)matching;
- (void)doDeleteUserActivityWithUUID:(id)d;
- (void)doDetermineIfUserActivityIsCurrent:(id)current completionHandler:(id)handler;
- (void)doFetchUserActivityInfoWithUUID:(id)d completionHandler:(id)handler;
- (void)doGetCurrentUserActivityInfo:(id)info;
- (void)doGetLoggingFileForClient:(id)client options:(id)options completionHandler:(id)handler;
- (void)doGetUserActivityProxiesWithOptions:(id)options completionHandler:(id)handler;
- (void)doInitializeWithClientVersion:(int64_t)version clientInfo:(id)info completionHandler:(id)handler;
- (void)doMarkUserActivityAsDirty:(id)dirty forceImmediate:(BOOL)immediate webpageURL:(id)l expiration:(id)expiration hasiCloudDocument:(BOOL)document hasUnsynchronizediCloudDoc:(BOOL)doc;
- (void)doPinUserActivityInfo:(id)info completionHandler:(id)handler;
- (void)doRemoveDynamicUserActivity:(id)activity matching:(id)matching;
- (void)doUpdateUserActivityInfo:(id)info makeCurrent:(BOOL)current completionHandler:(id)handler;
- (void)doUpdateUserActivityWithUUID:(id)d setActive:(BOOL)active;
- (void)invalidate;
- (void)removeUserActivity:(id)activity;
- (void)setCurrentAdvertisableActivity:(id)activity;
@end

@implementation UAUserActivityClientProcess

- (UAUserActivityAdvertisableItem)currentAdvertisableActivity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentAdvertisableActivity;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (UACornerActionManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (NSString)description
{
  auditToken = [(UAUserActivityClientProcess *)self auditToken];
  v4 = [auditToken pid];
  bundleIdentifier = [(UAUserActivityClientProcess *)self bundleIdentifier];
  uniqueIdentifiers = [(UAUserActivityClientProcess *)self uniqueIdentifiers];
  v7 = [NSMutableString stringWithFormat:@"{"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = uniqueIdentifiers;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        uUIDString = [*(*(&v16 + 1) + 8 * i) UUIDString];
        [v7 appendFormat:@"%@ ", uUIDString];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [v7 appendString:@"}"];
  v14 = [NSString stringWithFormat:@"UserActivityClient(pid=%d/%@ uuids=%@)", v4, bundleIdentifier, v7];

  return v14;
}

- (NSArray)uniqueIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_userActivityAdvertisableItemsByUUID allKeys];
  objc_sync_exit(selfCopy);

  return allKeys;
}

- (UAUserActivityClientProcess)initWithController:(id)controller connection:(id)connection
{
  controllerCopy = controller;
  connectionCopy = connection;
  manager = [controllerCopy manager];
  v96.receiver = self;
  v96.super_class = UAUserActivityClientProcess;
  v10 = [(UACornerActionManagerHandler *)&v96 initWithManager:manager name:@"Application"];

  if (!v10)
  {
    goto LABEL_45;
  }

  snprintf(__str, 0x80uLL, "com.apple.coreservices.useractivity.client-connection.%d", [connectionCopy processIdentifier]);
  v11 = os_transaction_create();
  [(UAUserActivityClientProcess *)v10 setOs_transaction:v11];

  objc_storeStrong(&v10->_controller, controller);
  manager2 = [controllerCopy manager];
  objc_storeWeak(&v10->_manager, manager2);

  v13 = objc_alloc_init(NSMutableDictionary);
  userActivityAdvertisableItemsByUUID = v10->_userActivityAdvertisableItemsByUUID;
  v10->_userActivityAdvertisableItemsByUUID = v13;

  v15 = objc_alloc_init(NSMutableSet);
  dirtyUUIDs = v10->_dirtyUUIDs;
  v10->_dirtyUUIDs = v15;

  v17 = objc_alloc_init(NSMutableSet);
  pendingResumeActivityUUIDs = v10->_pendingResumeActivityUUIDs;
  v10->_pendingResumeActivityUUIDs = v17;

  v19 = objc_alloc_init(NSMutableArray);
  pendingUpdateTasks = v10->_pendingUpdateTasks;
  v10->_pendingUpdateTasks = v19;

  [connectionCopy setExportedObject:v10];
  v21 = sub_100001EB0();
  [connectionCopy setExportedInterface:v21];

  v22 = sub_100001DEC();
  [connectionCopy setRemoteObjectInterface:v22];

  *__str = 0;
  v103 = __str;
  v104 = 0x3042000000;
  v105 = sub_100001F44;
  v106 = sub_100057E5C;
  objc_initWeak(v107, v10);
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_100057E64;
  v95[3] = &unk_1000C57A0;
  v95[4] = __str;
  [connectionCopy setInvalidationHandler:v95];
  objc_storeWeak(&v10->_connection, connectionCopy);
  v23 = [UAAuditToken alloc];
  connection = [(UAUserActivityClientProcess *)v10 connection];
  v25 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v26 = [(UAAuditToken *)v23 initWithAuditToken:buf];
  auditToken = v10->_auditToken;
  v10->_auditToken = v26;

  if (sub_100001E30(@"com.apple.security.app-sandbox"))
  {
    v10->_clientIsSandboxed = 1;
  }

  else
  {
    auditToken = [(UAUserActivityClientProcess *)v10 auditToken];
    v10->_clientIsSandboxed = [auditToken isSandboxed];
  }

  connection2 = [(UAUserActivityClientProcess *)v10 connection];
  v30 = [connection2 valueForEntitlement:@"com.apple.application-identifier"];
  applicationIdentifier = v10->_applicationIdentifier;
  v10->_applicationIdentifier = v30;

  connection3 = [(UAUserActivityClientProcess *)v10 connection];
  v33 = [connection3 valueForEntitlement:@"useractivity-team-identifier"];

  if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v34 = sub_100001A30(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      applicationIdentifier = [(UAUserActivityClientProcess *)v10 applicationIdentifier];
      *buf = 138543618;
      *&buf[4] = v33;
      *&buf[12] = 2114;
      *&buf[14] = applicationIdentifier;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Using overridden team identifier %{public}@ for applicationIdentifier %{public}@", buf, 0x16u);
    }
  }

  else
  {
    teamID = [(UAUserActivityClientProcess *)v10 connection];
    v89 = [teamID valueForEntitlement:@"com.apple.developer.team-identifier"];

    if (!v89)
    {
      v89 = 0;
      goto LABEL_19;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_20;
    }

    v34 = sub_100001A30(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      applicationIdentifier2 = [(UAUserActivityClientProcess *)v10 applicationIdentifier];
      *buf = 138543618;
      *&buf[4] = v89;
      *&buf[12] = 2114;
      *&buf[14] = applicationIdentifier2;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Using developer team identifier %{public}@ for applicationIdentifier %{public}@", buf, 0x16u);
    }

    v33 = v89;
  }

  v39 = v33;
  teamID = v10->_teamID;
  v89 = v39;
  v10->_teamID = v39;
LABEL_19:

LABEL_20:
  applicationIdentifier3 = [(UAUserActivityClientProcess *)v10 applicationIdentifier];

  if (applicationIdentifier3)
  {
    v10->_clientIsSigned = 1;
  }

  else
  {
    connection4 = [(UAUserActivityClientProcess *)v10 connection];
    v42 = [connection4 valueForEntitlement:@"application-identifier"];
    v43 = v10->_applicationIdentifier;
    v10->_applicationIdentifier = v42;
  }

  teamID = [(UAUserActivityClientProcess *)v10 teamID];
  if (teamID)
  {
    goto LABEL_26;
  }

  applicationIdentifier4 = [(UAUserActivityClientProcess *)v10 applicationIdentifier];
  v46 = applicationIdentifier4 == 0;

  if (!v46)
  {
    teamID = [(UAUserActivityClientProcess *)v10 applicationIdentifier];
    v47 = sub_100002058(teamID);
    v48 = v10->_teamID;
    v10->_teamID = v47;

LABEL_26:
  }

  teamID2 = [(UAUserActivityClientProcess *)v10 teamID];
  v50 = teamID2 == 0;

  if (v50)
  {
    v51 = v10->_teamID;
    v10->_teamID = &stru_1000C67D0;
  }

  connection5 = [(UAUserActivityClientProcess *)v10 connection];
  v53 = connection5;
  if (connection5)
  {
    [connection5 auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v54 = sub_100001FA4(buf);
  [(UAUserActivityClientProcess *)v10 setBundleIdentifier:v54];

  bundleIdentifier = [(UAUserActivityClientProcess *)v10 bundleIdentifier];
  v56 = bundleIdentifier == 0;

  if (v56)
  {
    applicationIdentifier5 = [(UAUserActivityClientProcess *)v10 applicationIdentifier];
    [(UAUserActivityClientProcess *)v10 setBundleIdentifier:applicationIdentifier5];

    bundleIdentifier2 = [(UAUserActivityClientProcess *)v10 bundleIdentifier];
    v59 = [bundleIdentifier2 rangeOfString:@":"];
    v61 = v60;

    if (v61 == 1)
    {
      bundleIdentifier3 = [(UAUserActivityClientProcess *)v10 bundleIdentifier];
      v63 = [bundleIdentifier3 substringFromIndex:v59 + 1];
      [(UAUserActivityClientProcess *)v10 setBundleIdentifier:v63];
    }
  }

  v10->_allowedToUseLSAlwaysEligible = 1;
  v64 = [connectionCopy valueForEntitlement:@"com.apple.private.coreservices.alwaysEligibleEvenWhenInBackground"];
  v10->_allowedToUseEligibleEvenWhenInBackground = sub_100001E30(v64);

  v65 = [connectionCopy valueForEntitlement:@"com.apple.private.coreservices.lsuseractivityd.LSAlwaysPick"];
  v10->_allowedToUseLSAlwaysPick = sub_100001E30(v65);

  v66 = [connectionCopy valueForEntitlement:@"com.apple.private.coreservices.canalwaysadvertise"];
  v10->_allowedToUseUAAlwaysAdvertise = sub_100001E30(v66);

  v67 = [connectionCopy valueForEntitlement:@"com.apple.private.coreservices.cangetcurrentactivityinfo"];
  v10->_allowedToGetCurrentActivityInfo = sub_100001E30(v67);

  v68 = [connectionCopy valueForEntitlement:@"com.apple.private.coreservices.allowedToMatchUserActivities"];
  if (sub_100001E30(v68))
  {
    v10->_allowedToMatchUserActivities = 1;
  }

  else
  {
    v69 = [connectionCopy valueForEntitlement:@"com.apple.private.coreserivces.allowedToMatchUserActivities"];
    v10->_allowedToMatchUserActivities = sub_100001E30(v69);
  }

  connection6 = [(UAUserActivityClientProcess *)v10 connection];
  v71 = [connection6 valueForEntitlement:@"com.apple.private.canmodifyanyuseractivity"];
  v10->_allowedToAccessAnyItem = sub_100001E30(v71);

  v72 = sub_100001A30(0);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    v73 = [(UAAuditToken *)v10->_auditToken pid];
    appStateMonitor = [controllerCopy appStateMonitor];
    v75 = @"YES";
    if (!appStateMonitor)
    {
      v75 = @"NO";
    }

    *buf = 67109378;
    *&buf[4] = v73;
    *&buf[8] = 2114;
    *&buf[10] = v75;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "About to fetch bundleIdentifier for process with pid %d. Has appStateMonitor: %{public}@", buf, 0x12u);
  }

  v76 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057FFC;
  block[3] = &unk_1000C4CC0;
  v77 = v10;
  v94 = v77;
  dispatch_after(v76, &_dispatch_main_q, block);
  appStateMonitor2 = [controllerCopy appStateMonitor];
  v79 = [(UAAuditToken *)v10->_auditToken pid];
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_1000580D4;
  v90[3] = &unk_1000C5E90;
  v80 = v77;
  v91 = v80;
  v92 = controllerCopy;
  [appStateMonitor2 applicationInfoForPID:v79 completion:v90];

  v81 = +[NSNotificationCenter defaultCenter];
  [v81 addObserver:v80 selector:"debugStateChanged:" name:@"UAUserActivityDebugStateChanged" object:0];

  v82 = sub_100001A30(0);
  if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
  {
    auditToken2 = [(UAUserActivityClientProcess *)v80 auditToken];
    teamID3 = [(UAUserActivityClientProcess *)v80 teamID];
    applicationIdentifier6 = [(UAUserActivityClientProcess *)v80 applicationIdentifier];
    bundleIdentifier4 = [(UAUserActivityClientProcess *)v80 bundleIdentifier];
    allowedToAccessAnyItem = [(UAUserActivityClientProcess *)v80 allowedToAccessAnyItem];
    *buf = 138544387;
    *&buf[4] = auditToken2;
    *&buf[12] = 2113;
    *&buf[14] = teamID3;
    *&buf[22] = 2113;
    *&buf[24] = applicationIdentifier6;
    v98 = 2113;
    v99 = bundleIdentifier4;
    v100 = 1026;
    v101 = allowedToAccessAnyItem;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "UserActivityClient:%{public}@, teamID=%{private}@ applicationID=%{private}@ bundleID=%{private}@ accessAny=%{public,BOOL}d ", buf, 0x30u);
  }

  _Block_object_dispose(__str, 8);
  objc_destroyWeak(v107);
LABEL_45:

  return v10;
}

- (void)invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(UAUserActivityClientProcess *)selfCopy setOs_transaction:0];
  connection = [(UAUserActivityClientProcess *)selfCopy connection];

  if (connection)
  {
    connection2 = [(UAUserActivityClientProcess *)selfCopy connection];
    [connection2 setExportedObject:0];

    connection3 = [(UAUserActivityClientProcess *)selfCopy connection];
    [connection3 invalidate];

    objc_storeWeak(&selfCopy->_connection, 0);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  uniqueIdentifiers = [(UAUserActivityClientProcess *)selfCopy uniqueIdentifiers];
  v7 = [uniqueIdentifiers countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(uniqueIdentifiers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = sub_100001A30(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "removing %{public}@ userActivityInfoItem", buf, 0xCu);
        }

        [(UAUserActivityClientProcess *)selfCopy removeUserActivityAdvertiseableItemByUUID:v10];
      }

      v7 = [uniqueIdentifiers countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 removeObserver:selfCopy name:@"UAUserActivityDebugStateChanged" object:0];

  objc_sync_exit(selfCopy);
}

- (id)userActivityAdvertisableItemByUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_userActivityAdvertisableItemsByUUID objectForKey:dCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)addUserActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    v8 = activityCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    userActivityAdvertisableItemsByUUID = selfCopy->_userActivityAdvertisableItemsByUUID;
    uuid = [v8 uuid];
    [(NSMutableDictionary *)userActivityAdvertisableItemsByUUID setObject:v8 forKey:uuid];

    objc_sync_exit(selfCopy);
    activityCopy = v8;
  }
}

- (void)removeUserActivity:(id)activity
{
  if (activity)
  {
    uuid = [activity uuid];
    [(UAUserActivityClientProcess *)self removeUserActivityAdvertiseableItemByUUID:uuid];
  }
}

- (BOOL)removeUserActivityAdvertiseableItemByUUID:(id)d
{
  dCopy = d;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543362;
    v32 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "uuid=%{public}@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_dirtyUUIDs removeObject:dCopy];
  [(NSMutableSet *)selfCopy->_pendingResumeActivityUUIDs removeObject:dCopy];
  v8 = [(UAUserActivityClientProcess *)selfCopy userActivityAdvertisableItemByUUID:dCopy];
  if (!v8)
  {
    if ([(UAUserActivityClientProcess *)selfCopy allowedToAccessAnyItem])
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      controller = [(UAUserActivityClientProcess *)selfCopy controller];
      additionalUserActivityAdvertisableItems = [controller additionalUserActivityAdvertisableItems];

      v15 = [additionalUserActivityAdvertisableItems countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v15)
      {
        v16 = *v28;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(additionalUserActivityAdvertisableItems);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            uuid = [v18 uuid];
            v20 = [uuid isEqual:dCopy];

            if (v20)
            {
              v21 = sub_100001A30(0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                uuid2 = [0 uuid];
                uUIDString2 = [uuid2 UUIDString];
                logString = [0 logString];
                *buf = 138543619;
                v32 = uUIDString2;
                v33 = 2113;
                v34 = logString;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Removing item %{public}@/%{private}@ from additionalUserActivityAdvertisableItems", buf, 0x16u);
              }

              controller2 = [(UAUserActivityClientProcess *)selfCopy controller];
              [controller2 removeAdditionalUserActivityAdvertisableItems:v18];

              goto LABEL_25;
            }
          }

          v15 = [additionalUserActivityAdvertisableItems countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }

    objc_sync_exit(selfCopy);
    goto LABEL_27;
  }

  currentAdvertisableActivity = [(UAUserActivityClientProcess *)selfCopy currentAdvertisableActivity];
  if (currentAdvertisableActivity)
  {
    currentAdvertisableActivity2 = [(UAUserActivityClientProcess *)selfCopy currentAdvertisableActivity];
    uuid3 = [currentAdvertisableActivity2 uuid];
    v12 = [uuid3 isEqual:dCopy];

    if (v12)
    {
      [(UAUserActivityClientProcess *)selfCopy setCurrentAdvertisableActivity:0];
      if (sub_1000023A0([v8 type]) || (objc_msgSend(v8, "alwaysEligible") & 1) != 0)
      {
        LODWORD(currentAdvertisableActivity) = 1;
      }

      else
      {
        LODWORD(currentAdvertisableActivity) = [v8 alwaysEligible];
      }
    }

    else
    {
      LODWORD(currentAdvertisableActivity) = 0;
    }
  }

  [v8 setClient:0];
  [(NSMutableDictionary *)selfCopy->_userActivityAdvertisableItemsByUUID removeObjectForKey:dCopy];

  objc_sync_exit(selfCopy);
  if (currentAdvertisableActivity)
  {
    selfCopy = [(UAUserActivityClientProcess *)selfCopy manager];
    [(UAUserActivityClientProcess *)selfCopy scheduleUpdatingAdvertisableItems];
LABEL_27:
  }

  return v8 != 0;
}

- (BOOL)isEligibleToAdvertiseWithUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    currentAdvertisableActivity = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
    if (currentAdvertisableActivity)
    {
      v6 = currentAdvertisableActivity;
      currentAdvertisableActivity2 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
      uuid = [currentAdvertisableActivity2 uuid];
      v9 = [uuid isEqual:dCopy];

      if (v9)
      {
        v10 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:dCopy];
        v11 = v10;
        if (v10)
        {
          if ([v10 alwaysPick] & 1) != 0 || (-[UAUserActivityClientProcess controller](self, "controller"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "clientIsActive:", self), v12, (v13) || (objc_msgSend(v11, "proxiedBundleIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14) || -[UAUserActivityClientProcess allowedToUseLSAlwaysEligible](self, "allowedToUseLSAlwaysEligible") && (objc_msgSend(v11, "alwaysEligible"))
          {
            bOOLValue = 1;
LABEL_16:

            goto LABEL_10;
          }

          if ([(UAUserActivityClientProcess *)self allowedToUseEligibleEvenWhenInBackground])
          {
            v17 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:dCopy];
            options = [v17 options];
            v19 = [options objectForKeyedSubscript:UAUserActivityEligibleEvenWhenInBackgroundKey];
            bOOLValue = [v19 BOOLValue];

            goto LABEL_16;
          }
        }

        bOOLValue = 0;
        goto LABEL_16;
      }
    }
  }

  bOOLValue = 0;
LABEL_10:

  return bOOLValue;
}

- (BOOL)isEligibleToAlwaysAdvertiseWithUUID:(id)d
{
  dCopy = d;
  if ([(UAUserActivityClientProcess *)self allowedToUseUAAlwaysAdvertise])
  {
    v5 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:dCopy];
    v6 = v5;
    if (v5)
    {
      options = [v5 options];
      v8 = [options objectForKeyedSubscript:UAAlwaysAdvertise];
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isDirtyActivityWithUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableSet *)selfCopy->_dirtyUUIDs containsObject:dCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)askSourceProcessToUpdateActivityWithUUID:(id)d evenIfClean:(BOOL)clean completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [dCopy UUIDString];
    auditToken = [(UAUserActivityClientProcess *)self auditToken];
    *buf = 138543618;
    v62 = uUIDString;
    v63 = 2048;
    v64 = [auditToken pid];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@ from client %ld", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (clean)
  {
    v13 = 1;
  }

  else
  {
    v13 = [(NSMutableSet *)selfCopy->_dirtyUUIDs containsObject:dCopy];
  }

  v14 = [(NSMutableSet *)selfCopy->_pendingResumeActivityUUIDs containsObject:dCopy];
  objc_sync_exit(selfCopy);

  if (v13)
  {
    if (!v14)
    {
      auditToken2 = [(UAUserActivityClientProcess *)selfCopy auditToken];
      v46 = +[RBSTarget targetWithPid:](RBSTarget, "targetWithPid:", [auditToken2 pid]);

      v45 = [RBSDomainAttribute attributeWithDomain:@"com.apple.coreservices.useractivityd" name:@"ActivityAdvertising"];
      v25 = [RBSAssertion alloc];
      v60 = v45;
      v26 = [NSArray arrayWithObjects:&v60 count:1];
      v27 = [v25 initWithExplanation:@"Allow process to update handoff payload" target:v46 attributes:v26];

      v59 = 0;
      v28 = [v27 acquireWithError:&v59];
      v43 = v59;
      if (v43)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      if ((v29 & 1) == 0)
      {
        v30 = sub_100001A30(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v62 = v43;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error acquiring RBSAssertion: %@", buf, 0xCu);
        }
      }

      WeakRetained = objc_loadWeakRetained(&selfCopy->_connection);
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100059614;
      v54[3] = &unk_1000C5EB8;
      v32 = dCopy;
      v55 = v32;
      v56 = selfCopy;
      v33 = handlerCopy;
      v58 = v33;
      v44 = v27;
      v57 = v44;
      v34 = [WeakRetained remoteObjectProxyWithErrorHandler:v54];

      v23 = v34 != 0;
      if (v34)
      {
        v35 = selfCopy;
        objc_sync_enter(v35);
        [(NSMutableSet *)selfCopy->_pendingResumeActivityUUIDs addObject:v32];
        objc_sync_exit(v35);

        v36 = [(UAUserActivityClientProcess *)v35 userActivityAdvertisableItemByUUID:v32];
        v37 = sub_100001A30(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          uUIDString2 = [v32 UUIDString];
          *buf = 138543362;
          v62 = uUIDString2;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Calling back to client to ask it to save activity %{public}@", buf, 0xCu);
        }

        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100059764;
        v48[3] = &unk_1000C5EE0;
        v49 = v32;
        v50 = v36;
        v51 = v35;
        v53 = v33;
        v52 = v44;
        v39 = v36;
        [v34 askClientUserActivityToSave:v49 completionHandler:v48];
      }

      else
      {
        v40 = sub_100001A30(0);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          bundleIdentifier = [(UAUserActivityClientProcess *)selfCopy bundleIdentifier];
          *buf = 138543619;
          v62 = v32;
          v63 = 2113;
          v64 = bundleIdentifier;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Unable to call willSave for user activity %{public}@ for process %{private}@ because its owning process/connection seems to be gone.", buf, 0x16u);
        }

        [v44 invalidate];
      }

      goto LABEL_32;
    }

    v15 = sub_100001A30(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString3 = [dCopy UUIDString];
      *buf = 138543362;
      v62 = uUIDString3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " - A prepareToResume is already in progress for activity %{public}@, queuing callback for when fetch is complete", buf, 0xCu);
    }

    v17 = objc_alloc_init(UAUserActivityClientPendingUpdateTask);
    [(UAUserActivityClientPendingUpdateTask *)v17 setUuid:dCopy];
    [(UAUserActivityClientPendingUpdateTask *)v17 setBlock:handlerCopy];
    v18 = selfCopy;
    objc_sync_enter(v18);
    pendingUpdateTasks = [(UAUserActivityClientProcess *)v18 pendingUpdateTasks];
    [pendingUpdateTasks addObject:v17];

    objc_sync_exit(v18);
LABEL_15:
    v23 = 1;
LABEL_32:
    v22 = handlerCopy;
    goto LABEL_33;
  }

  v20 = sub_100001A30(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString4 = [dCopy UUIDString];
    *buf = 138543362;
    v62 = uUIDString4;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " - no need to call back to get updated info for activity %{public}@, because it is not dirty", buf, 0xCu);
  }

  v22 = handlerCopy;
  if (handlerCopy)
  {
    handlerCopy[2]();
    goto LABEL_15;
  }

  v23 = 1;
LABEL_33:

  return v23;
}

- (BOOL)didResumeUserActivityWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100059B68;
  v14[3] = &unk_1000C5628;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v14];

  v11 = sub_100001A30(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543362;
    v17 = uUIDString;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Telling client that user activity %{public}@ was resumed (on another device).", buf, 0xCu);
  }

  [v10 tellClientUserActivityItWasResumed:dCopy];
  if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }

  return 1;
}

- (void)dispatchPendingTasksForUUID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_alloc_init(NSMutableIndexSet);
  pendingUpdateTasks = [(UAUserActivityClientProcess *)selfCopy pendingUpdateTasks];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100059F04;
  v20[3] = &unk_1000C5F08;
  v11 = dCopy;
  v21 = v11;
  v12 = errorCopy;
  v22 = v12;
  v13 = v9;
  v23 = v13;
  [pendingUpdateTasks enumerateObjectsUsingBlock:v20];

  if ([v13 count])
  {
    v14 = sub_100001A30(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 count];
      *buf = 134218242;
      v25 = v15;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " -- Called %lu pending fetch tasks for %{public}@, removing from queue", buf, 0x16u);
    }

    pendingUpdateTasks2 = [(UAUserActivityClientProcess *)selfCopy pendingUpdateTasks];
    [pendingUpdateTasks2 removeObjectsAtIndexes:v13];
  }

  else
  {
    pendingUpdateTasks2 = sub_100001A30(0);
    if (os_log_type_enabled(pendingUpdateTasks2, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, pendingUpdateTasks2, OS_LOG_TYPE_INFO, " -- No pending fetch tasks called for %{public}@", buf, 0xCu);
    }
  }

  v17 = sub_100001A30(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    pendingUpdateTasks3 = [(UAUserActivityClientProcess *)selfCopy pendingUpdateTasks];
    v19 = [pendingUpdateTasks3 count];
    *buf = 134217984;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, " -- %lu remaining queued tasks total", buf, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (void)setCurrentAdvertisableActivity:(id)activity
{
  activityCopy = activity;
  obj = self;
  objc_sync_enter(obj);
  currentAdvertisableActivity = obj->_currentAdvertisableActivity;
  obj->_currentAdvertisableActivity = activityCopy;

  objc_sync_exit(obj);
}

- (void)doInitializeWithClientVersion:(int64_t)version clientInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v11 = sub_100001A30(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    auditToken = [(UAUserActivityClientProcess *)self auditToken];
    bundleIdentifier = [(UAUserActivityClientProcess *)self bundleIdentifier];
    if (self->_allowedToAccessAnyItem)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v10;
    v15 = handlerCopy;
    if (self->_clientIsSandboxed)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    [infoCopy description];
    v17 = v31 = infoCopy;
    v18 = sub_100009684(v17);
    *buf = 134219267;
    versionCopy = version;
    v34 = 2114;
    v35 = auditToken;
    v36 = 2113;
    v37 = v30;
    v38 = 2114;
    v39 = v13;
    v40 = 2114;
    v41 = v16;
    handlerCopy = v15;
    v10 = v14;
    v42 = 2113;
    v43 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CLIENT: version=%ld, %{public}@ %{private}@ any=%{public}@ sandbox=%{public}@ clientInfo=%{private}@", buf, 0x3Eu);

    infoCopy = v31;
  }

  if (infoCopy)
  {
    if ([(UAUserActivityClientProcess *)self clientIsSandboxed])
    {
      v19 = +[NSXPCConnection currentConnection];
      v20 = [v19 valueForEntitlement:@"com.apple.private.useractivity.allowedtosetbundleidentifier"];
      bOOLValue = [v20 BOOLValue];

      if (bOOLValue)
      {
        bundleIdentifier2 = [(UAUserActivityClientProcess *)self bundleIdentifier];

        if (!bundleIdentifier2)
        {
          v23 = [infoCopy objectForKey:@"CFBundleIdentifier"];
          [(UAUserActivityClientProcess *)self setBundleIdentifier:v23];
        }

        applicationIdentifier = [(UAUserActivityClientProcess *)self applicationIdentifier];

        if (!applicationIdentifier)
        {
          bundleIdentifier3 = [(UAUserActivityClientProcess *)self bundleIdentifier];
          [(UAUserActivityClientProcess *)self setApplicationIdentifier:bundleIdentifier3];
LABEL_20:
        }
      }
    }

    else
    {
      applicationIdentifier2 = [(UAUserActivityClientProcess *)self applicationIdentifier];

      if (!applicationIdentifier2)
      {
        v27 = [infoCopy objectForKey:@"application-identifier"];
        [(UAUserActivityClientProcess *)self setApplicationIdentifier:v27];
      }

      bundleIdentifier4 = [(UAUserActivityClientProcess *)self bundleIdentifier];

      if (!bundleIdentifier4)
      {
        bundleIdentifier3 = [infoCopy objectForKey:@"CFBundleIdentifier"];
        [(UAUserActivityClientProcess *)self setBundleIdentifier:bundleIdentifier3];
        goto LABEL_20;
      }
    }
  }

  (*(handlerCopy + 2))(handlerCopy, 1, 0, 0);
  objc_autoreleasePoolPop(v10);
}

- (void)doDeleteUserActivityWithUUID:(id)d
{
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100001A30(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [dCopy UUIDString];
    v8 = 138543362;
    v9 = uUIDString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "deleteUserActivity %{public}@", &v8, 0xCu);
  }

  if (dCopy)
  {
    [(UAUserActivityClientProcess *)self removeUserActivityAdvertiseableItemByUUID:dCopy];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)doAddDynamicUserActivity:(id)activity matching:(id)matching
{
  activityCopy = activity;
  matchingCopy = matching;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v31 = activityCopy;
    v32 = 2113;
    v33 = matchingCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "doAddDynamicUserActivity(%{private}@ %{private}@)", buf, 0x16u);
  }

  if (activityCopy && matchingCopy)
  {
    teamID = [(UAUserActivityClientProcess *)self teamID];
    activityCopy = [NSString stringWithFormat:@"%@:%@:%@", teamID, matchingCopy, activityCopy];

    v11 = _LSCreateHashedBytesForAdvertisingFromString();
    v12 = _LSCreateDatabaseLookupStringFromHashedBytesForAdvertising();
    if (v12)
    {
      teamID2 = [(UAUserActivityClientProcess *)self teamID];
      matchingCopy = [NSString stringWithFormat:@"%@:%@", teamID2, matchingCopy];

      v29 = _LSCreateHashedBytesForAdvertisingFromString();
      v15 = _LSCreateDatabaseLookupStringFromHashedBytesForAdvertising();
      if (v15 && ([(UAUserActivityClientProcess *)self teamID], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
      {
        v28 = v11;
        v17 = [NSUserDefaults alloc];
        v18 = [v17 initWithSuiteName:kUADynamicUserActivitesPreferences];
        v27 = kUADynamicUserActivitiesKey;
        v19 = [v18 objectForKey:?];
        v20 = [v19 mutableCopy];

        if (!v20)
        {
          v20 = objc_alloc_init(NSMutableDictionary);
        }

        v38[0] = kUADynamicUserActivityHashKey;
        v38[1] = kUADynamicUserActivityDynamicActivityKey;
        v39[0] = v15;
        v39[1] = activityCopy;
        v38[2] = kUADynamicUserActivityTeamIDKey;
        teamID3 = [(UAUserActivityClientProcess *)self teamID];
        v38[3] = kUADynamicUserActivityAppActivityKey;
        v39[2] = teamID3;
        v39[3] = matchingCopy;
        v22 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];

        [v20 setValue:v22 forKey:v12];
        [v18 setValue:v20 forKey:v27];
        [v18 synchronize];

        v11 = v28;
      }

      else
      {
        v18 = sub_100001A30(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(UAUserActivityClientProcess *)self teamID];
          v24 = v23 = v11;
          *buf = 138544130;
          v31 = activityCopy;
          v32 = 2114;
          v33 = matchingCopy;
          v34 = 2114;
          v35 = v15;
          v36 = 2114;
          v37 = v24;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "doAddDynamicUserActivity(%{public}@, %{public}@) failed, nil for hash %{public}@ or teamID %{public}@.", buf, 0x2Au);

          v11 = v23;
        }
      }
    }

    else
    {
      matchingCopy = sub_100001A30(0);
      if (os_log_type_enabled(matchingCopy, OS_LOG_TYPE_ERROR))
      {
        [(UAUserActivityClientProcess *)self teamID];
        v26 = v25 = v11;
        *buf = 138543874;
        v31 = activityCopy;
        v32 = 2114;
        v33 = matchingCopy;
        v34 = 2114;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, matchingCopy, OS_LOG_TYPE_ERROR, "doAddDynamicUserActivity, nil dynamicHash from (%{public}@, %{public}@, %{public}@).", buf, 0x20u);

        v11 = v25;
      }
    }
  }

  else
  {
    activityCopy = sub_100001A30(0);
    if (os_log_type_enabled(activityCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = activityCopy;
      v32 = 2114;
      v33 = matchingCopy;
      _os_log_impl(&_mh_execute_header, activityCopy, OS_LOG_TYPE_ERROR, "doAddDynamicUserActivity(%{public}@, %{public}@) failed, nil for one param.", buf, 0x16u);
    }
  }
}

- (void)doRemoveDynamicUserActivity:(id)activity matching:(id)matching
{
  activityCopy = activity;
  matchingCopy = matching;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v40 = activityCopy;
    v41 = 2113;
    v42 = matchingCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "doRemoveDynamicUserActivity(%{private}@ %{private}@)", buf, 0x16u);
  }

  if (matchingCopy)
  {
    v9 = [NSUserDefaults alloc];
    v10 = [v9 initWithSuiteName:kUADynamicUserActivitesPreferences];
    v11 = kUADynamicUserActivitiesKey;
    v12 = [v10 objectForKey:kUADynamicUserActivitiesKey];
    v13 = [v12 mutableCopy];

    if (activityCopy)
    {
      teamID = [(UAUserActivityClientProcess *)self teamID];
      activityCopy = [NSString stringWithFormat:@"%@:%@:%@", teamID, matchingCopy, activityCopy];

      v16 = _LSCreateHashedBytesForAdvertisingFromString();
      v17 = _LSCreateDatabaseLookupStringFromHashedBytesForAdvertising();
      [v13 removeObjectForKey:v17];
      [v10 setValue:v13 forKey:v11];
      [v10 synchronize];
    }

    else
    {
      v31 = v11;
      v32 = v10;
      activityCopy = [v13 allKeys];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = [activityCopy countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v35;
        v21 = kUADynamicUserActivityAppActivityKey;
        do
        {
          v22 = 0;
          v33 = v19;
          do
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(activityCopy);
            }

            v23 = *(*(&v34 + 1) + 8 * v22);
            v24 = [v13 valueForKey:v23];
            v25 = [v24 valueForKey:v21];
            if ([matchingCopy isEqualToString:v25])
            {
              v26 = v21;
              v27 = v20;
              v28 = matchingCopy;
              v29 = activityCopy;
              v30 = sub_100001A30(0);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v40 = v23;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, " - found %{public}@ activity, removing it.", buf, 0xCu);
              }

              [v13 removeObjectForKey:v23];
              activityCopy = v29;
              matchingCopy = v28;
              v20 = v27;
              v21 = v26;
              v19 = v33;
            }

            v22 = v22 + 1;
          }

          while (v19 != v22);
          v19 = [activityCopy countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v19);
      }

      v10 = v32;
      [v32 setValue:v13 forKey:v31];
      [v32 synchronize];
      activityCopy = 0;
    }
  }

  else
  {
    v10 = sub_100001A30(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = activityCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "doRemoveDynamicUserActivity(%{public}@), nil appActivity", buf, 0xCu);
    }
  }
}

- (void)doPinUserActivityInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  connection = [(UAUserActivityClientProcess *)self connection];
  v9 = [connection valueForEntitlement:@"com.apple.private.coreservices.canopenactivity"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = +[NSUUID UUID];
    [infoCopy setUuid:v11];
    manager = [(UAUserActivityClientProcess *)self manager];
    [manager setPinnedUserActivityInfoItem:infoCopy];

    v13 = sub_100001A30(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      uuid = [infoCopy uuid];
      uUIDString = [uuid UUIDString];
      LODWORD(v21[0]) = 138543619;
      *(v21 + 4) = uUIDString;
      WORD6(v21[0]) = 2113;
      *(v21 + 14) = infoCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Pinned Activity Info: %{public}@/%{private}@", v21, 0x16u);
    }

    handlerCopy[2](handlerCopy, v11, 0);
  }

  else
  {
    v16 = sub_100001A30(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [UAAuditToken alloc];
      connection2 = [(UAUserActivityClientProcess *)self connection];
      v19 = connection2;
      if (connection2)
      {
        [connection2 auditToken];
      }

      else
      {
        memset(v21, 0, sizeof(v21));
      }

      v20 = [(UAAuditToken *)v17 initWithAuditToken:v21];
      LODWORD(v21[0]) = 138543618;
      *(v21 + 4) = v20;
      WORD6(v21[0]) = 2114;
      *(v21 + 14) = @"com.apple.private.coreservices.canopenactivity";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "*** Attempt to pin activity from process %{public}@, which doesn't have the %{public}@ entitlement.", v21, 0x16u);
    }

    v11 = [NSError errorWithDomain:UAContinuityErrorDomain code:-112 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v11);
  }
}

- (void)doGetCurrentUserActivityInfo:(id)info
{
  infoCopy = info;
  if (![(UAUserActivityClientProcess *)self allowedToGetCurrentActivityInfo])
  {
    v14 = sub_100001A30(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [UAAuditToken alloc];
      connection = [(UAUserActivityClientProcess *)self connection];
      v17 = connection;
      if (connection)
      {
        [connection auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v22 = [(UAAuditToken *)v15 initWithAuditToken:buf];
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = @"com.apple.private.coreservices.cangetcurrentactivityinfo";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "*** Attempt to get current activity information from process %{public}@, which doesn't have the %{public}@ entitlement.", buf, 0x16u);
    }

    v21 = [NSError errorWithDomain:UAContinuityErrorDomain code:-112 userInfo:0];
    v13 = 0;
LABEL_22:
    bundleIdentifier = 0;
    goto LABEL_23;
  }

  manager = [(UAUserActivityClientProcess *)self manager];
  uaAdvertisableItemsInOrder = [manager uaAdvertisableItemsInOrder];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = uaAdvertisableItemsInOrder;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v8)
  {
LABEL_10:

    v13 = 0;
LABEL_18:
    v21 = 0;
    goto LABEL_22;
  }

  v9 = v8;
  v10 = *v30;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v30 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v29 + 1) + 8 * v11);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v13 = v12;

  if (!v13)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  client = [v13 client];
  v19 = client;
  if (client)
  {
    bundleIdentifier = [client bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  v21 = 0;
LABEL_23:
  v23 = sub_100001A30(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    uuid = [v13 uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138543875;
    *&buf[4] = uUIDString;
    *&buf[12] = 2113;
    *&buf[14] = bundleIdentifier;
    *&buf[22] = 2114;
    *&buf[24] = v21;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "result=%{public}@ %{private}@ error=%{public}@", buf, 0x20u);
  }

  uuid2 = [v13 uuid];
  activityType = [v13 activityType];
  dynamicActivityType = [v13 dynamicActivityType];
  infoCopy[2](infoCopy, uuid2, activityType, dynamicActivityType, bundleIdentifier, v21);
}

- (void)doGetUserActivityProxiesWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v38 = objc_opt_new();
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [optionsCopy description];
    v10 = sub_100009684(v9);
    *buf = 138543362;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "doGetUserActivityProxiesWithOptions:%{public}@", buf, 0xCu);
  }

  if ([(UAUserActivityClientProcess *)self allowedToMatchUserActivities])
  {
    v36 = handlerCopy;
    v37 = optionsCopy;
    manager = [(UAUserActivityClientProcess *)self manager];
    advertiseableItems = [manager advertiseableItems];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = advertiseableItems;
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        v17 = 0;
        v39 = v15;
        do
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v40 + 1) + 8 * v17);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v13;
            client = [v18 client];
            v21 = client;
            if (client)
            {
              bundleIdentifier = [client bundleIdentifier];
            }

            else
            {
              bundleIdentifier = 0;
            }

            v23 = [UAUserActivityProxy alloc];
            uuid = [v18 uuid];
            activityType = [v18 activityType];
            dynamicActivityType = [v18 dynamicActivityType];
            v27 = [v23 initWithUUID:uuid activityType:activityType dynamicActivityType:dynamicActivityType bundleID:bundleIdentifier];

            [v38 addObject:v27];
            v13 = v19;
            v15 = v39;
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v15);
    }

    v28 = 0;
    handlerCopy = v36;
    optionsCopy = v37;
  }

  else
  {
    v29 = sub_100001A30(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [UAAuditToken alloc];
      connection = [(UAUserActivityClientProcess *)self connection];
      v32 = connection;
      if (connection)
      {
        [connection auditToken];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v33 = [(UAAuditToken *)v30 initWithAuditToken:buf];
      *buf = 138543618;
      *&buf[4] = v33;
      *&buf[12] = 2114;
      *&buf[14] = @"com.apple.private.coreservices.allowedToMatchUserActivities";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "*** Attempt to get current activity information from process %{public}@, which doesn't have the %{public}@ entitlement.", buf, 0x16u);
    }

    v34 = UAContinuityErrorDomain;
    v44 = @"entitlement";
    v45 = @"com.apple.private.coreservices.allowedToMatchUserActivities";
    v13 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v28 = [NSError errorWithDomain:v34 code:-135 userInfo:v13];
  }

  v35 = [v38 copy];
  handlerCopy[2](handlerCopy, v35, v28);
}

- (void)doDetermineIfUserActivityIsCurrent:(id)current completionHandler:(id)handler
{
  currentCopy = current;
  handlerCopy = handler;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [currentCopy UUIDString];
    *buf = 138543362;
    *&buf[4] = uUIDString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "doDetermineIfUserActivityIsCurrent: uuid=%{public}@", buf, 0xCu);
  }

  if (![(UAUserActivityClientProcess *)self allowedToGetCurrentActivityInfo])
  {
    v20 = sub_100001A30(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [UAAuditToken alloc];
      connection = [(UAUserActivityClientProcess *)self connection];
      v23 = connection;
      if (connection)
      {
        [connection auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v35 = [(UAAuditToken *)v21 initWithAuditToken:buf];
      *buf = 138543618;
      *&buf[4] = v35;
      *&buf[12] = 2114;
      *&buf[14] = @"com.apple.private.coreservices.cangetcurrentactivityinfo";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "*** Attempt to determineIfUserActivityIsCurrent from process %{public}@, which doesn't have the %{public}@ entitlement.", buf, 0x16u);
    }

    v18 = UAContinuityErrorDomain;
    v19 = -112;
LABEL_26:
    v24 = [NSError errorWithDomain:v18 code:v19 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v24);
    clients = currentCopy;
LABEL_30:

    goto LABEL_31;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  manager = [(UAUserActivityClientProcess *)self manager];
  clients = [manager clients];

  v12 = [clients countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(clients);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = [v16 userActivityInfoForUUID:currentCopy];
        if (v17)
        {
          v24 = v17;
          v25 = sub_100001A30(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            uUIDString2 = [currentCopy UUIDString];
            *buf = 138543875;
            *&buf[4] = uUIDString2;
            *&buf[12] = 2114;
            *&buf[14] = v16;
            *&buf[22] = 2113;
            *&buf[24] = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "doDetermineIfUserActivityIsCurrent: Found uuid=%{public}@, in client %{public}@ as %{private}@", buf, 0x20u);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v16 userActivityClientForUUID:currentCopy];
            v28 = v27;
            if (v27)
            {
              currentAdvertisableActivity = [v27 currentAdvertisableActivity];
              uuid = [currentAdvertisableActivity uuid];
              v31 = [uuid isEqual:currentCopy];

              bundleIdentifier = [v28 bundleIdentifier];
              auditToken = [v28 auditToken];
              v34 = [auditToken pid];
            }

            else
            {
              v34 = 0;
              bundleIdentifier = 0;
              v31 = 1;
            }
          }

          else
          {
            v34 = 0;
            bundleIdentifier = 0;
            v31 = 1;
          }

          activityType = [v24 activityType];
          (*(handlerCopy + 2))(handlerCopy, v31, bundleIdentifier, v34, activityType, 0);

          goto LABEL_30;
        }
      }

      v13 = [clients countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (currentCopy)
  {
    v18 = UAContinuityErrorDomain;
    v19 = -108;
    goto LABEL_26;
  }

LABEL_31:
}

- (void)doGetLoggingFileForClient:(id)client options:(id)options completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v7 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
    (*(handler + 2))(handlerCopy, 0, v7);
  }
}

- (void)doFetchUserActivityInfoWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138543362;
    v44 = uUIDString;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "doFetchUserActivityInfoWithUUID:(%{public}@)", buf, 0xCu);
  }

  v11 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:dCopy];
  if (v11)
  {
    manager4 = v11;
    if ([v11 isDirty])
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_10005C13C;
      v40[3] = &unk_1000C5F30;
      v13 = handlerCopy;
      v42 = v13;
      manager4 = manager4;
      v41 = manager4;
      if (([manager4 requestPayloadWithCompletionHandler:v40] & 1) == 0)
      {
        v14 = sub_100001A30(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, " -- Could not update activityInfo for fetch", buf, 2u);
        }

        v15 = [NSError errorWithDomain:UAContinuityErrorDomain code:-133 userInfo:0];
        v13[2](v13, 0, v15);
      }

      v16 = v42;
LABEL_21:

      goto LABEL_24;
    }

    pinnedUserActivityInfoItem3 = [manager4 copy];
LABEL_23:
    v26 = pinnedUserActivityInfoItem3;
    (*(handlerCopy + 2))(handlerCopy, pinnedUserActivityInfoItem3, 0);

    goto LABEL_24;
  }

  if ([(UAUserActivityClientProcess *)self allowedToAccessAnyItem]|| [(UAUserActivityClientProcess *)self allowedToGetCurrentActivityInfo])
  {
    controller = [(UAUserActivityClientProcess *)self controller];
    v18 = [controller userActivityInfoForUUID:dCopy];

    if (v18)
    {
      goto LABEL_14;
    }
  }

  manager = [(UAUserActivityClientProcess *)self manager];
  v18 = [manager cornerActionItemForUUID:dCopy];

  if (v18)
  {
LABEL_14:
    v20 = sub_100001A30(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString2 = [dCopy UUIDString];
      *buf = 138543362;
      v44 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "-- activity with uuid %{public}@, so fetching payload for it.", buf, 0xCu);
    }

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10005C1D8;
    v36[3] = &unk_1000C5F58;
    v37 = dCopy;
    manager4 = v18;
    v38 = manager4;
    v22 = handlerCopy;
    v39 = v22;
    if (([manager4 requestPayloadWithCompletionHandler:v36] & 1) == 0)
    {
      v23 = sub_100001A30(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, " -- Could not update activityInfo for fetch", buf, 2u);
      }

      v24 = [NSError errorWithDomain:UAContinuityErrorDomain code:-133 userInfo:0];
      (*(v22 + 2))(v22, 0, v24);
    }

    v16 = v37;
    goto LABEL_21;
  }

  manager2 = [(UAUserActivityClientProcess *)self manager];
  pinnedUserActivityInfoItem = [manager2 pinnedUserActivityInfoItem];
  uuid = [pinnedUserActivityInfoItem uuid];
  v30 = [uuid isEqual:dCopy];

  if (v30)
  {
    v31 = sub_100001A30(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      manager3 = [(UAUserActivityClientProcess *)self manager];
      pinnedUserActivityInfoItem2 = [manager3 pinnedUserActivityInfoItem];
      *buf = 138477827;
      v44 = pinnedUserActivityInfoItem2;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " -- Sending Pinned userActivityInfo back to client: %{private}@", buf, 0xCu);
    }

    manager4 = [(UAUserActivityClientProcess *)self manager];
    pinnedUserActivityInfoItem3 = [manager4 pinnedUserActivityInfoItem];
    goto LABEL_23;
  }

  manager4 = [NSError errorWithDomain:UAContinuityErrorDomain code:-106 userInfo:0];
  v34 = sub_100001A30(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    uUIDString3 = [dCopy UUIDString];
    *buf = 138543618;
    v44 = uUIDString3;
    v45 = 2114;
    v46 = manager4;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Activity with uuid %{public}@ fetch requested, but was neither a locally created item nor a corner action item, so returning error %{public}@", buf, 0x16u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, manager4);
LABEL_24:

  objc_autoreleasePoolPop(v8);
}

- (void)doUpdateUserActivityInfo:(id)info makeCurrent:(BOOL)current completionHandler:(id)handler
{
  currentCopy = current;
  infoCopy = info;
  handlerCopy = handler;
  context = objc_autoreleasePoolPush();
  v9 = +[UAUserActivityDefaults sharedDefaults];
  debugCrossoverAllActivities = [v9 debugCrossoverAllActivities];

  v10 = sub_100001A30(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (currentCopy)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    uuid = [infoCopy uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138543875;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = uUIDString;
    *&buf[22] = 2113;
    *&buf[24] = infoCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "doUpdateUserActivityInfo: makeCurrent=%{public}@ newInfo = %{public}@/%{private}@", buf, 0x20u);
  }

  uuid2 = [infoCopy uuid];
  v15 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:uuid2];

  v16 = +[NSDate date];
  [infoCopy setWhen:v16];

  selfCopy = self;
  if (v15)
  {
    v17 = 0;
    LOBYTE(v18) = 0;
    goto LABEL_33;
  }

  activityType = [infoCopy activityType];

  if (!activityType)
  {
    v27 = sub_100001A30(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      auditToken = [(UAUserActivityClientProcess *)self auditToken];
      v29 = [auditToken pid];
      bundleIdentifier = [(UAUserActivityClientProcess *)self bundleIdentifier];
      *buf = 134218243;
      *&buf[4] = v29;
      *&buf[12] = 2113;
      *&buf[14] = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "The application with pid %ld/%{private}@ didn't provide a activityType.", buf, 0x16u);
    }

    v31 = UAContinuityErrorDomain;
    v32 = -102;
    goto LABEL_18;
  }

  teamID = [(UAUserActivityClientProcess *)self teamID];
  if (!teamID)
  {
    teamID = [(UAUserActivityClientProcess *)self applicationIdentifier];
    if (([teamID hasPrefix:@"com.apple."] & 1) == 0)
    {
      clientIsSandboxed = [(UAUserActivityClientProcess *)self clientIsSandboxed];

      if (!clientIsSandboxed)
      {
        goto LABEL_12;
      }

      v34 = sub_100001A30(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        auditToken2 = [(UAUserActivityClientProcess *)self auditToken];
        v36 = [auditToken2 pid];
        bundleIdentifier2 = [(UAUserActivityClientProcess *)self bundleIdentifier];
        if (bundleIdentifier2)
        {
          bundleIdentifier3 = [(UAUserActivityClientProcess *)self bundleIdentifier];
        }

        else
        {
          bundleIdentifier3 = @"NULL";
        }

        *buf = 134218243;
        *&buf[4] = v36;
        *&buf[12] = 2113;
        *&buf[14] = bundleIdentifier3;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "The application with pid %ld/%{private}@ doesn't have a team identifier in its application-identifier, or isn't from com.apple., and is sandboxed, so unable to proceed.", buf, 0x16u);
        if (bundleIdentifier2)
        {
        }
      }

      v31 = UAContinuityErrorDomain;
      v32 = -101;
LABEL_18:
      v17 = [NSError errorWithDomain:v31 code:v32 userInfo:0];
      v15 = 0;
      goto LABEL_28;
    }
  }

LABEL_12:
  teamID2 = [(UAUserActivityClientProcess *)self teamID];
  v22 = sub_100001A30(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = handlerCopy;
    auditToken3 = [(UAUserActivityClientProcess *)self auditToken];
    bundleIdentifier4 = [(UAUserActivityClientProcess *)self bundleIdentifier];
    if (bundleIdentifier4)
    {
      bundleIdentifier5 = [(UAUserActivityClientProcess *)self bundleIdentifier];
    }

    else
    {
      bundleIdentifier5 = @"NULL";
    }

    activityType2 = [infoCopy activityType];
    *buf = 138544131;
    *&buf[4] = auditToken3;
    *&buf[12] = 2113;
    *&buf[14] = teamID2;
    *&buf[22] = 2113;
    *&buf[24] = bundleIdentifier5;
    v109 = 2113;
    v110 = activityType2;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Application %{public}@ is registering an activity with teamID %{private}@ bundleID=%{private}@ activityType=%{private}@", buf, 0x2Au);

    if (bundleIdentifier4)
    {
    }

    handlerCopy = v23;
  }

  v15 = [[UAUserActivityAdvertisableItem alloc] initWithUserActivityInfo:infoCopy client:self];
  [(UAUserActivityAdvertisableItem *)v15 setTeamIdentifier:teamID2];
  bundleIdentifier6 = [(UAUserActivityClientProcess *)self bundleIdentifier];
  [(UAUserActivityAdvertisableItem *)v15 setBundleIdentifier:bundleIdentifier6];

  [(UAUserActivityClientProcess *)self addUserActivity:v15];
  v17 = 0;
LABEL_28:
  options = [infoCopy options];
  v42 = [options objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];

  LODWORD(v18) = v42 != 0;
  if (v42)
  {
    v103 = handlerCopy;
    v43 = sub_100001A30(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      uuid3 = [(UAUserActivityAdvertisableItem *)v15 uuid];
      uUIDString2 = [uuid3 UUIDString];
      logString = [(UAAdvertisableItem *)v15 logString];
      options2 = [infoCopy options];
      v48 = [options2 objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];
      *buf = 138543875;
      *&buf[4] = uUIDString2;
      *&buf[12] = 2113;
      *&buf[14] = logString;
      *&buf[22] = 2114;
      *&buf[24] = v48;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Application item %{public}@/%{private}@ has a proxy %{public}@, so forcing an advertisement update.", buf, 0x20u);

      self = selfCopy;
    }

    handlerCopy = v103;
  }

  if (!v15)
  {
    controller = [(UAUserActivityClientProcess *)self controller];
    uuid4 = [infoCopy uuid];
    v77 = [controller userActivityInfoForUUID:uuid4];

    if (v77)
    {
      v78 = -107;
    }

    else
    {
      v78 = -108;
    }

    v102 = [NSError errorWithDomain:UAContinuityErrorDomain code:v78 userInfo:0];

    v15 = 0;
    v17 = v102;
    if (!v102)
    {
      goto LABEL_74;
    }

    goto LABEL_71;
  }

LABEL_33:
  webpageURL = [(UAUserActivityAdvertisableItem *)v15 webpageURL];
  webpageURL2 = [infoCopy webpageURL];
  v51 = webpageURL2;
  if (webpageURL && webpageURL2)
  {
    v52 = [webpageURL isEqual:webpageURL2];

    if (v52)
    {
      goto LABEL_41;
    }
  }

  else
  {

    if (webpageURL == v51)
    {
      goto LABEL_41;
    }
  }

  v53 = sub_100001A30(0);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    uuid5 = [(UAUserActivityAdvertisableItem *)v15 uuid];
    uUIDString3 = [uuid5 UUIDString];
    logString2 = [(UAAdvertisableItem *)v15 logString];
    *buf = 138543619;
    *&buf[4] = uUIDString3;
    *&buf[12] = 2113;
    *&buf[14] = logString2;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Application item %{public}@/%{private}@ has changed .webPageURL, forcing an advertisement update.", buf, 0x16u);
  }

  LOBYTE(v18) = 1;
LABEL_41:
  proxiedBundleIdentifier = [(UAUserActivityAdvertisableItem *)v15 proxiedBundleIdentifier];
  options3 = [infoCopy options];
  v59 = [options3 objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];
  v60 = v59;
  if (proxiedBundleIdentifier && v59)
  {
    v61 = [proxiedBundleIdentifier isEqual:v59];

    if (v61)
    {
      goto LABEL_44;
    }
  }

  else
  {

    if (proxiedBundleIdentifier == v60)
    {
LABEL_44:
      self = selfCopy;
      if (!currentCopy)
      {
        if (v18)
        {
          LODWORD(v18) = 1;
          goto LABEL_70;
        }

        goto LABEL_64;
      }

LABEL_51:
      currentAdvertisableActivity = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
      if (!currentAdvertisableActivity)
      {
        goto LABEL_59;
      }

      v68 = currentAdvertisableActivity;
      v69 = handlerCopy;
      currentAdvertisableActivity2 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
      uuid6 = [currentAdvertisableActivity2 uuid];
      uuid7 = [(UAUserActivityAdvertisableItem *)v15 uuid];
      v73 = uuid7;
      if (!uuid6)
      {
        goto LABEL_57;
      }

      if (uuid7)
      {
        v74 = [uuid6 isEqual:uuid7];
      }

      else
      {
LABEL_57:
        v74 = uuid6 == uuid7;
      }

      handlerCopy = v69;
      self = selfCopy;
      if ((v74 & 1) == 0)
      {
LABEL_59:
        v18 = sub_100001A30(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          [(UAUserActivityAdvertisableItem *)v15 uuid];
          v80 = v79 = handlerCopy;
          uUIDString4 = [v80 UUIDString];
          logString3 = [(UAAdvertisableItem *)v15 logString];
          bundleIdentifier7 = [(UAUserActivityClientProcess *)selfCopy bundleIdentifier];
          auditToken4 = [(UAUserActivityClientProcess *)selfCopy auditToken];
          v85 = [auditToken4 pid];
          *buf = 138544131;
          *&buf[4] = uUIDString4;
          *&buf[12] = 2113;
          *&buf[14] = logString3;
          *&buf[22] = 2113;
          *&buf[24] = bundleIdentifier7;
          v109 = 2048;
          v110 = v85;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "- Making %{public}@/%{private}@ into the currentItem from process %{private}@/%ld", buf, 0x2Au);

          handlerCopy = v79;
          self = selfCopy;
        }

        [(UAUserActivityClientProcess *)self setCurrentAdvertisableActivity:v15];
        LOBYTE(v18) = 1;
      }

      v86 = v18;
      v87 = !sub_1000023A0([(UAUserActivityAdvertisableItem *)v15 type]);
      debugCrossoverAllActivities |= v87;
      LODWORD(v18) = 1;
      if ((v86 & 1) != 0 || v87)
      {
LABEL_68:
        auditToken = self->_auditToken;
        if (auditToken)
        {
          memset(buf, 0, sizeof(buf));
          [(UAAuditToken *)auditToken auditTokenValue];
          v89 = +[UADiagnosticManager sharedManager];
          activityType3 = [infoCopy activityType];
          [v89 submitUserActivityBecameCurrent:activityType3 withToken:buf];
        }

        goto LABEL_70;
      }

LABEL_64:
      if ([(UAUserActivityAdvertisableItem *)v15 alwaysPick])
      {
        LODWORD(v18) = 1;
      }

      else
      {
        LODWORD(v18) = [(UAUserActivityAdvertisableItem *)v15 alwaysEligible];
      }

      if (!currentCopy)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }
  }

  v18 = sub_100001A30(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    uuid8 = [(UAUserActivityAdvertisableItem *)v15 uuid];
    uUIDString5 = [uuid8 UUIDString];
    logString4 = [(UAAdvertisableItem *)v15 logString];
    options4 = [infoCopy options];
    v66 = [options4 objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];
    *buf = 138543875;
    *&buf[4] = uUIDString5;
    *&buf[12] = 2113;
    *&buf[14] = logString4;
    *&buf[22] = 2114;
    *&buf[24] = v66;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Application item %{public}@/%{private}@ has changed proxy %{public}@, so forcing an advertisement update.", buf, 0x20u);
  }

  LODWORD(v18) = 1;
  self = selfCopy;
  if (currentCopy)
  {
    goto LABEL_51;
  }

LABEL_70:
  [(UAUserActivityAdvertisableItem *)v15 update:infoCopy];
  if (!v17)
  {
    goto LABEL_74;
  }

LABEL_71:
  v91 = sub_100001A30(0);
  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
  {
    uuid9 = [infoCopy uuid];
    activityType4 = [infoCopy activityType];
    *buf = 138543875;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = uuid9;
    *&buf[22] = 2113;
    *&buf[24] = activityType4;
    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "refusing to register user activity from client, and returning error %{public}@ for item %{public}@ %{private}@", buf, 0x20u);
  }

LABEL_74:
  if (v18)
  {
    v94 = sub_100001A30(0);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      uuid10 = [(UAUserActivityAdvertisableItem *)v15 uuid];
      uUIDString6 = [uuid10 UUIDString];
      *buf = 138543619;
      *&buf[4] = uUIDString6;
      *&buf[12] = 2113;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "BECOMECURRENT: updating advertisement for %{public}@/%{private}@ because the becomeCurrent item changed or a DNS item changed its URL", buf, 0x16u);
    }

    manager = [(UAUserActivityClientProcess *)self manager];
    [manager scheduleUpdatingAdvertisableItems];
  }

  if (debugCrossoverAllActivities)
  {
    v98 = sub_100001A30(0);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      uuid11 = [(UAUserActivityAdvertisableItem *)v15 uuid];
      uUIDString7 = [uuid11 UUIDString];
      *buf = 138543619;
      *&buf[4] = uUIDString7;
      *&buf[12] = 2113;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "BECOMECURRENT: updating notifiers for %{public}@/%{private}@ because the becomeCurrent item changed", buf, 0x16u);
    }

    manager2 = [(UAUserActivityClientProcess *)self manager];
    [manager2 scheduleBestAppDetermination];
  }

  handlerCopy[2](handlerCopy, v17);

  objc_autoreleasePoolPop(context);
}

- (void)doUpdateUserActivityWithUUID:(id)d setActive:(BOOL)active
{
  activeCopy = active;
  dCopy = d;
  v7 = objc_autoreleasePoolPush();
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uUIDString = [dCopy UUIDString];
    v10 = @"NO";
    *buf = 138543875;
    v39 = uUIDString;
    if (activeCopy)
    {
      v10 = @"YES";
    }

    v40 = 2113;
    selfCopy = self;
    v42 = 2114;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "doUpdateUserActivityWithUUID(%{public}@/%{private}@, current=%{public}@)", buf, 0x20u);
  }

  v11 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:dCopy];
  if (v11)
  {
    v37 = v7;
    currentAdvertisableActivity = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
    if (currentAdvertisableActivity)
    {
      currentAdvertisableActivity2 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
      uuid = [currentAdvertisableActivity2 uuid];
      uuid2 = [(__CFString *)v11 uuid];
      v16 = [uuid isEqual:uuid2];

      if (v16 == activeCopy)
      {
        LODWORD(currentAdvertisableActivity) = 0;
        v17 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      if ((activeCopy & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (([(__CFString *)v11 alwaysPick]& 1) != 0)
    {
      LODWORD(currentAdvertisableActivity) = 1;
    }

    else
    {
      controller = [(UAUserActivityClientProcess *)self controller];
      LODWORD(currentAdvertisableActivity) = [controller clientIsActive:self];
    }

    v17 = 1;
LABEL_20:
    v22 = sub_100001A30(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      [(UAUserActivityClientProcess *)self auditToken];
      v23 = v36 = v17;
      uuid3 = [(__CFString *)v11 uuid];
      uUIDString2 = [uuid3 UUIDString];
      v26 = uUIDString2;
      v27 = &stru_1000C67D0;
      *buf = 138544387;
      v39 = v23;
      if (v16)
      {
        v27 = @"(already current)";
      }

      v28 = @".";
      v40 = 2114;
      v42 = 2113;
      selfCopy = uUIDString2;
      v43 = v11;
      v44 = 2114;
      if (currentAdvertisableActivity)
      {
        v28 = @", and updating advertisment.";
      }

      v45 = v27;
      v46 = 2114;
      v47 = v28;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Checking if the current item for %{public}@ is changed, %{public}@/%{private}@ %{public}@%{public}@", buf, 0x34u);

      v17 = v36;
    }

    v29 = +[NSDate date];
    [(__CFString *)v11 setWhen:v29];

    if (v16 & 1 | ((activeCopy & 1) == 0))
    {
      v7 = v37;
      if (v17)
      {
        v30 = sub_100001A30(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          auditToken = [(UAUserActivityClientProcess *)self auditToken];
          *buf = 138543362;
          v39 = auditToken;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Triggering the update of the advertisable items because the current status of our application, %{public}@, has changed.", buf, 0xCu);
        }

        [(UAUserActivityClientProcess *)self setCurrentAdvertisableActivity:0];
        LODWORD(currentAdvertisableActivity) = 1;
      }
    }

    else
    {
      [(UAUserActivityClientProcess *)self setCurrentAdvertisableActivity:v11];
      v7 = v37;
    }

    v32 = +[UAUserActivityDefaults sharedDefaults];
    if ([v32 debugCrossoverAllActivities])
    {
    }

    else
    {
      v33 = sub_1000023A0([(__CFString *)v11 type]);

      if (v33)
      {
        goto LABEL_36;
      }
    }

    manager = [(UAUserActivityClientProcess *)self manager];
    [manager scheduleBestAppDetermination];

LABEL_36:
    if (currentAdvertisableActivity)
    {
LABEL_37:
      manager2 = [(UAUserActivityClientProcess *)self manager];
      [manager2 scheduleUpdatingAdvertisableItems];

      goto LABEL_38;
    }

    goto LABEL_38;
  }

  if (!dCopy)
  {
    currentAdvertisableActivity3 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];

    if (currentAdvertisableActivity3)
    {
      if (activeCopy)
      {
        v19 = sub_100001A30(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          auditToken2 = [(UAUserActivityClientProcess *)self auditToken];
          *buf = 138543362;
          v39 = auditToken2;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Triggering the update of the advertisable items because uuid == nil, for application %{public}@, has changed.", buf, 0xCu);
        }

        [(UAUserActivityClientProcess *)self setCurrentAdvertisableActivity:0];
        goto LABEL_37;
      }
    }
  }

LABEL_38:

  objc_autoreleasePoolPop(v7);
}

- (void)doMarkUserActivityAsDirty:(id)dirty forceImmediate:(BOOL)immediate webpageURL:(id)l expiration:(id)expiration hasiCloudDocument:(BOOL)document hasUnsynchronizediCloudDoc:(BOOL)doc
{
  docCopy = doc;
  immediateCopy = immediate;
  documentCopy = document;
  dirtyCopy = dirty;
  lCopy = l;
  expirationCopy = expiration;
  context = objc_autoreleasePoolPush();
  v11 = sub_100001A30(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    uUIDString = [dirtyCopy UUIDString];
    auditToken = [(UAUserActivityClientProcess *)self auditToken];
    v14 = @"NO";
    *buf = 138544898;
    v89 = uUIDString;
    v90 = 2114;
    v91 = auditToken;
    if (immediateCopy)
    {
      v14 = @"YES";
    }

    if (lCopy)
    {
      v15 = @"private";
    }

    else
    {
      v15 = @"-";
    }

    v92 = 2114;
    v93 = v14;
    v16 = " iCloudDoc";
    if (!documentCopy)
    {
      v16 = "";
    }

    v94 = 2114;
    v95 = v15;
    v96 = 2114;
    v97 = expirationCopy;
    v98 = 2082;
    v99 = v16;
    if (docCopy)
    {
      v17 = " unSynchronizediCloudDoc";
    }

    else
    {
      v17 = "";
    }

    v100 = 2082;
    v101 = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "doMarkUserActivityAsDirty(%{public}@) for app %{public}@ forceImmediate=%{public}@ webpageURL=%{public}@ expiration=%{public}@%{public}s%{public}s", buf, 0x48u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_dirtyUUIDs addObject:dirtyCopy];
  objc_sync_exit(selfCopy);
  p_isa = &selfCopy->super.super.isa;

  v19 = sub_100001A30(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    dirtyUUIDs = [(UAUserActivityClientProcess *)selfCopy dirtyUUIDs];
    v73 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dirtyUUIDs count]);
    dirtyUUIDs2 = [(UAUserActivityClientProcess *)selfCopy dirtyUUIDs];
    v21 = [NSMutableString stringWithFormat:@"{"];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v22 = dirtyUUIDs2;
    v23 = [v22 countByEnumeratingWithState:&v84 objects:buf count:16];
    if (v23)
    {
      v24 = *v85;
      v25 = 10;
LABEL_16:
      v26 = 0;
      while (1)
      {
        if (*v85 != v24)
        {
          objc_enumerationMutation(v22);
        }

        if ((v25 & ~(v25 >> 63)) == v26)
        {
          break;
        }

        uUIDString2 = [*(*(&v84 + 1) + 8 * v26) UUIDString];
        [v21 appendFormat:@"%@ ", uUIDString2];

        if (v23 == ++v26)
        {
          v23 = [v22 countByEnumeratingWithState:&v84 objects:buf count:16];
          v25 -= v26;
          if (v23)
          {
            goto LABEL_16;
          }

          break;
        }
      }
    }

    [v21 appendString:@"}"];
    *buf = 138543618;
    v89 = v73;
    v90 = 2114;
    v91 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, " -- dirty activities for this client: (%{public}@) %{public}@", buf, 0x16u);
  }

  v28 = [p_isa userActivityAdvertisableItemByUUID:dirtyCopy];
  if (v28)
  {
    WeakRetained = objc_loadWeakRetained(p_isa + 11);
    uaAdvertisableItemsInOrder = [WeakRetained uaAdvertisableItemsInOrder];
    v31 = [uaAdvertisableItemsInOrder containsObject:v28];

    if (v31)
    {
      v32 = sub_100001A30(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        uUIDString3 = [dirtyCopy UUIDString];
        *buf = 138543362;
        v89 = uUIDString3;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, " -- Updating the user activity, because it's the currently advertised item, to let the server know it should (maybe) re-fetch the payload: %{public}@", buf, 0xCu);
      }

      webpageURL = [(__CFString *)v28 webpageURL];
      v35 = webpageURL;
      if (lCopy)
      {
        if (([lCopy isEqual:webpageURL] & 1) == 0)
        {

          [(__CFString *)v28 setWebpageURL:lCopy];
          goto LABEL_38;
        }
      }

      else
      {
        v36 = webpageURL == 0;

        if (v36)
        {
          goto LABEL_43;
        }
      }

      webpageURL2 = [(__CFString *)v28 webpageURL];
      if (!webpageURL2)
      {

        if (lCopy)
        {

          [(__CFString *)v28 setWebpageURL:lCopy];
        }

        else
        {
          [(__CFString *)v28 setWebpageURL:0];
        }

        goto LABEL_43;
      }

      webpageURL3 = [(__CFString *)v28 webpageURL];
      v39 = [webpageURL3 isEqual:lCopy];

      if (lCopy)
      {

        [(__CFString *)v28 setWebpageURL:lCopy];
      }

      else
      {
        [(__CFString *)v28 setWebpageURL:0];
      }

      if (v39)
      {
LABEL_43:
        expirationDate = [(__CFString *)v28 expirationDate];
        v48 = expirationDate;
        if (expirationCopy)
        {
          if (([expirationCopy isEqual:expirationDate] & 1) == 0)
          {

            [(__CFString *)v28 setExpirationDate:expirationCopy];
            goto LABEL_54;
          }
        }

        else
        {
          v49 = expirationDate == 0;

          if (v49)
          {
            goto LABEL_57;
          }
        }

        expirationDate2 = [(__CFString *)v28 expirationDate];
        if (!expirationDate2)
        {

          if (expirationCopy)
          {

            [(__CFString *)v28 setExpirationDate:expirationCopy];
          }

          else
          {
            [(__CFString *)v28 setExpirationDate:0];
          }

          goto LABEL_57;
        }

        expirationDate3 = [(__CFString *)v28 expirationDate];
        v52 = [expirationDate3 isEqual:expirationCopy];

        if (expirationCopy)
        {

          [(__CFString *)v28 setExpirationDate:expirationCopy];
        }

        else
        {
          [(__CFString *)v28 setExpirationDate:0];
        }

        if (v52)
        {
LABEL_57:
          options = [(__CFString *)v28 options];
          v57 = options;
          if (documentCopy)
          {
            if (options)
            {
              options2 = [(__CFString *)v28 options];
              v59 = [options2 mutableCopy];
            }

            else
            {
              v59 = +[NSMutableDictionary dictionary];
            }

            [v59 setObject:&__kCFBooleanTrue forKeyedSubscript:_UAUserActivityContainsCloudDocsKey];
            if (docCopy)
            {
              v64 = &__kCFBooleanTrue;
            }

            else
            {
              v64 = &__kCFBooleanFalse;
            }

            [v59 setObject:v64 forKeyedSubscript:_LSUserActivityContainsUnsynchronizedCloudDocsKey];
            v65 = [v59 copy];
            [(__CFString *)v28 setOptions:v65];

            goto LABEL_72;
          }

          if (options)
          {
            options3 = [(__CFString *)v28 options];
            v61 = _UAUserActivityContainsCloudDocsKey;
            v62 = [options3 objectForKeyedSubscript:_UAUserActivityContainsCloudDocsKey];
            if (v62)
            {

              v63 = _LSUserActivityContainsUnsynchronizedCloudDocsKey;
              goto LABEL_69;
            }

            options4 = [(__CFString *)v28 options];
            v63 = _LSUserActivityContainsUnsynchronizedCloudDocsKey;
            v67 = [options4 objectForKeyedSubscript:_LSUserActivityContainsUnsynchronizedCloudDocsKey];
            v68 = v67 == 0;

            if (!v68)
            {
LABEL_69:
              options5 = [(__CFString *)v28 options];
              v59 = [options5 mutableCopy];

              [v59 removeObjectForKey:v61];
              [v59 removeObjectForKey:v63];
              if ([v59 count])
              {
                v70 = [v59 copy];
                [(__CFString *)v28 setOptions:v70];
              }

              else
              {
                [(__CFString *)v28 setOptions:0];
              }

LABEL_72:
            }
          }

          if (immediateCopy)
          {
            currentAdvertisableActivity = [p_isa currentAdvertisableActivity];
            v72 = currentAdvertisableActivity == v28;

            if (v72)
            {
              v83[0] = _NSConcreteStackBlock;
              v83[1] = 3221225472;
              v83[2] = sub_10005E228;
              v83[3] = &unk_1000C5DC0;
              v83[4] = p_isa;
              [(__CFString *)v28 requestPayloadWithCompletionHandler:v83];
            }
          }

          goto LABEL_76;
        }

LABEL_54:
        currentAdvertisableActivity2 = [p_isa currentAdvertisableActivity];
        v54 = currentAdvertisableActivity2 == v28;

        if (v54)
        {
          manager = [p_isa manager];
          [manager scheduleUpdatingAdvertisableItems];
        }

        goto LABEL_57;
      }

LABEL_38:
      activityType = [(__CFString *)v28 activityType];
      v41 = [activityType isEqual:NSUserActivityTypeBrowsingWeb];

      if (v41)
      {
        v42 = sub_100001A30(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          auditToken2 = [p_isa auditToken];
          uuid = [(__CFString *)v28 uuid];
          uUIDString4 = [uuid UUIDString];
          *buf = 138543875;
          v89 = auditToken2;
          v90 = 2114;
          v91 = uUIDString4;
          v92 = 2113;
          v93 = v28;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Scheduling an advertising item update, for application %{public}@, because the   changed on a NSUserActivityTypeBrowsingWeb item, %{public}@/%{private}@", buf, 0x20u);
        }

        manager2 = [p_isa manager];
        [manager2 scheduleUpdatingAdvertisableItems];
      }

      goto LABEL_43;
    }
  }

LABEL_76:

  objc_autoreleasePoolPop(context);
}

- (id)statusString
{
  bundleIdentifier = [(UAUserActivityClientProcess *)self bundleIdentifier];
  v4 = [(UAAuditToken *)self->_auditToken pid];
  currentAdvertisableActivity = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
  if (currentAdvertisableActivity)
  {
    currentAdvertisableActivity2 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
    uuid = [currentAdvertisableActivity2 uuid];
    uUIDString = [uuid UUIDString];
  }

  else
  {
    uUIDString = @"-";
  }

  currentAdvertisableActivity3 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
  v7 = &stru_1000C67D0;
  v47 = bundleIdentifier;
  v50 = v4;
  if (currentAdvertisableActivity3)
  {
    dirtyUUIDs = [(UAUserActivityClientProcess *)self dirtyUUIDs];
    currentAdvertisableActivity4 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
    [currentAdvertisableActivity4 uuid];
    v39 = v41 = dirtyUUIDs;
    if ([dirtyUUIDs containsObject:?])
    {
      v7 = @"(dirty) ";
    }
  }

  currentAdvertisableActivity5 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
  proxiedBundleIdentifier = [currentAdvertisableActivity5 proxiedBundleIdentifier];
  if (proxiedBundleIdentifier)
  {
    currentAdvertisableActivity6 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
    proxiedBundleIdentifier2 = [currentAdvertisableActivity6 proxiedBundleIdentifier];
    obj = [NSString stringWithFormat:@"proxyAs=%@ ", proxiedBundleIdentifier2];
  }

  else
  {
    obj = &stru_1000C67D0;
  }

  lastFrontTime = [(UAUserActivityClientProcess *)self lastFrontTime];
  if (lastFrontTime)
  {
    [(UAUserActivityClientProcess *)self lastFrontTime];
    v11 = v42 = currentAdvertisableActivity3;
    sub_100009AC0(v11);
    v13 = v12 = currentAdvertisableActivity;
    v14 = [NSString stringWithFormat:@" lastFront=%@", v13];
    v35 = v7;
    v16 = uUIDString;
    v15 = v47;
    v51 = [NSMutableString stringWithFormat:@"%@ pid=%d currentActive=%@%@%@%@", v47, v50, uUIDString, v35, obj, v14];

    currentAdvertisableActivity = v12;
    currentAdvertisableActivity3 = v42;
  }

  else
  {
    v36 = v7;
    v16 = uUIDString;
    v15 = v47;
    v51 = [NSMutableString stringWithFormat:@"%@ pid=%d currentActive=%@%@%@%@", v47, v4, uUIDString, v36, obj, &stru_1000C67D0];
  }

  if (proxiedBundleIdentifier)
  {
  }

  if (currentAdvertisableActivity3)
  {
  }

  if (currentAdvertisableActivity)
  {
  }

  uniqueIdentifiers = [(UAUserActivityClientProcess *)self uniqueIdentifiers];
  if ([uniqueIdentifiers count] >= 2)
  {
  }

  else
  {
    currentAdvertisableActivity7 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];

    if (currentAdvertisableActivity7)
    {
      goto LABEL_36;
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obja = [(UAUserActivityClientProcess *)self uniqueIdentifiers];
  v19 = [obja countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v53;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v52 + 1) + 8 * i);
        currentAdvertisableActivity8 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
        if (!currentAdvertisableActivity8)
        {
          goto LABEL_30;
        }

        v25 = currentAdvertisableActivity8;
        v26 = objc_opt_self();
        currentAdvertisableActivity9 = [v26 currentAdvertisableActivity];
        uuid2 = [currentAdvertisableActivity9 uuid];
        v29 = [v23 isEqual:uuid2];

        if ((v29 & 1) == 0)
        {
LABEL_30:
          uUIDString2 = [v23 UUIDString];
          dirtyUUIDs2 = [(UAUserActivityClientProcess *)self dirtyUUIDs];
          v32 = [dirtyUUIDs2 containsObject:v23];
          v33 = "";
          if (v32)
          {
            v33 = " (dirty)";
          }

          [v51 appendFormat:@"%@%s ", uUIDString2, v33];
        }
      }

      v20 = [obja countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v20);
  }

  [v51 appendString:@"}"];
LABEL_36:

  return v51;
}

@end
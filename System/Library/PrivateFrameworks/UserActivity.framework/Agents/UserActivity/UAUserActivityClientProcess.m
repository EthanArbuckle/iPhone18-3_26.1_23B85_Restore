@interface UAUserActivityClientProcess
- (BOOL)askSourceProcessToUpdateActivityWithUUID:(id)a3 evenIfClean:(BOOL)a4 completionHandler:(id)a5;
- (BOOL)didResumeUserActivityWithUUID:(id)a3 completionHandler:(id)a4;
- (BOOL)isDirtyActivityWithUUID:(id)a3;
- (BOOL)isEligibleToAdvertiseWithUUID:(id)a3;
- (BOOL)isEligibleToAlwaysAdvertiseWithUUID:(id)a3;
- (BOOL)removeUserActivityAdvertiseableItemByUUID:(id)a3;
- (NSArray)uniqueIdentifiers;
- (NSString)description;
- (NSXPCConnection)connection;
- (UACornerActionManager)manager;
- (UAUserActivityAdvertisableItem)currentAdvertisableActivity;
- (UAUserActivityClientProcess)initWithController:(id)a3 connection:(id)a4;
- (id)statusString;
- (id)userActivityAdvertisableItemByUUID:(id)a3;
- (void)addUserActivity:(id)a3;
- (void)dispatchPendingTasksForUUID:(id)a3 error:(id)a4;
- (void)doAddDynamicUserActivity:(id)a3 matching:(id)a4;
- (void)doDeleteUserActivityWithUUID:(id)a3;
- (void)doDetermineIfUserActivityIsCurrent:(id)a3 completionHandler:(id)a4;
- (void)doFetchUserActivityInfoWithUUID:(id)a3 completionHandler:(id)a4;
- (void)doGetCurrentUserActivityInfo:(id)a3;
- (void)doGetLoggingFileForClient:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)doGetUserActivityProxiesWithOptions:(id)a3 completionHandler:(id)a4;
- (void)doInitializeWithClientVersion:(int64_t)a3 clientInfo:(id)a4 completionHandler:(id)a5;
- (void)doMarkUserActivityAsDirty:(id)a3 forceImmediate:(BOOL)a4 webpageURL:(id)a5 expiration:(id)a6 hasiCloudDocument:(BOOL)a7 hasUnsynchronizediCloudDoc:(BOOL)a8;
- (void)doPinUserActivityInfo:(id)a3 completionHandler:(id)a4;
- (void)doRemoveDynamicUserActivity:(id)a3 matching:(id)a4;
- (void)doUpdateUserActivityInfo:(id)a3 makeCurrent:(BOOL)a4 completionHandler:(id)a5;
- (void)doUpdateUserActivityWithUUID:(id)a3 setActive:(BOOL)a4;
- (void)invalidate;
- (void)removeUserActivity:(id)a3;
- (void)setCurrentAdvertisableActivity:(id)a3;
@end

@implementation UAUserActivityClientProcess

- (UAUserActivityAdvertisableItem)currentAdvertisableActivity
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_currentAdvertisableActivity;
  objc_sync_exit(v2);

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
  v3 = [(UAUserActivityClientProcess *)self auditToken];
  v4 = [v3 pid];
  v5 = [(UAUserActivityClientProcess *)self bundleIdentifier];
  v6 = [(UAUserActivityClientProcess *)self uniqueIdentifiers];
  v7 = [NSMutableString stringWithFormat:@"{"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
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

        v13 = [*(*(&v16 + 1) + 8 * i) UUIDString];
        [v7 appendFormat:@"%@ ", v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [v7 appendString:@"}"];
  v14 = [NSString stringWithFormat:@"UserActivityClient(pid=%d/%@ uuids=%@)", v4, v5, v7];

  return v14;
}

- (NSArray)uniqueIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_userActivityAdvertisableItemsByUUID allKeys];
  objc_sync_exit(v2);

  return v3;
}

- (UAUserActivityClientProcess)initWithController:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 manager];
  v96.receiver = self;
  v96.super_class = UAUserActivityClientProcess;
  v10 = [(UACornerActionManagerHandler *)&v96 initWithManager:v9 name:@"Application"];

  if (!v10)
  {
    goto LABEL_45;
  }

  snprintf(__str, 0x80uLL, "com.apple.coreservices.useractivity.client-connection.%d", [v8 processIdentifier]);
  v11 = os_transaction_create();
  [(UAUserActivityClientProcess *)v10 setOs_transaction:v11];

  objc_storeStrong(&v10->_controller, a3);
  v12 = [v7 manager];
  objc_storeWeak(&v10->_manager, v12);

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

  [v8 setExportedObject:v10];
  v21 = sub_100001EB0();
  [v8 setExportedInterface:v21];

  v22 = sub_100001DEC();
  [v8 setRemoteObjectInterface:v22];

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
  [v8 setInvalidationHandler:v95];
  objc_storeWeak(&v10->_connection, v8);
  v23 = [UAAuditToken alloc];
  v24 = [(UAUserActivityClientProcess *)v10 connection];
  v25 = v24;
  if (v24)
  {
    [v24 auditToken];
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
    v28 = [(UAUserActivityClientProcess *)v10 auditToken];
    v10->_clientIsSandboxed = [v28 isSandboxed];
  }

  v29 = [(UAUserActivityClientProcess *)v10 connection];
  v30 = [v29 valueForEntitlement:@"com.apple.application-identifier"];
  applicationIdentifier = v10->_applicationIdentifier;
  v10->_applicationIdentifier = v30;

  v32 = [(UAUserActivityClientProcess *)v10 connection];
  v33 = [v32 valueForEntitlement:@"useractivity-team-identifier"];

  if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v34 = sub_100001A30(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [(UAUserActivityClientProcess *)v10 applicationIdentifier];
      *buf = 138543618;
      *&buf[4] = v33;
      *&buf[12] = 2114;
      *&buf[14] = v35;
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
      v38 = [(UAUserActivityClientProcess *)v10 applicationIdentifier];
      *buf = 138543618;
      *&buf[4] = v89;
      *&buf[12] = 2114;
      *&buf[14] = v38;
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
  v40 = [(UAUserActivityClientProcess *)v10 applicationIdentifier];

  if (v40)
  {
    v10->_clientIsSigned = 1;
  }

  else
  {
    v41 = [(UAUserActivityClientProcess *)v10 connection];
    v42 = [v41 valueForEntitlement:@"application-identifier"];
    v43 = v10->_applicationIdentifier;
    v10->_applicationIdentifier = v42;
  }

  v44 = [(UAUserActivityClientProcess *)v10 teamID];
  if (v44)
  {
    goto LABEL_26;
  }

  v45 = [(UAUserActivityClientProcess *)v10 applicationIdentifier];
  v46 = v45 == 0;

  if (!v46)
  {
    v44 = [(UAUserActivityClientProcess *)v10 applicationIdentifier];
    v47 = sub_100002058(v44);
    v48 = v10->_teamID;
    v10->_teamID = v47;

LABEL_26:
  }

  v49 = [(UAUserActivityClientProcess *)v10 teamID];
  v50 = v49 == 0;

  if (v50)
  {
    v51 = v10->_teamID;
    v10->_teamID = &stru_1000C67D0;
  }

  v52 = [(UAUserActivityClientProcess *)v10 connection];
  v53 = v52;
  if (v52)
  {
    [v52 auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v54 = sub_100001FA4(buf);
  [(UAUserActivityClientProcess *)v10 setBundleIdentifier:v54];

  v55 = [(UAUserActivityClientProcess *)v10 bundleIdentifier];
  v56 = v55 == 0;

  if (v56)
  {
    v57 = [(UAUserActivityClientProcess *)v10 applicationIdentifier];
    [(UAUserActivityClientProcess *)v10 setBundleIdentifier:v57];

    v58 = [(UAUserActivityClientProcess *)v10 bundleIdentifier];
    v59 = [v58 rangeOfString:@":"];
    v61 = v60;

    if (v61 == 1)
    {
      v62 = [(UAUserActivityClientProcess *)v10 bundleIdentifier];
      v63 = [v62 substringFromIndex:v59 + 1];
      [(UAUserActivityClientProcess *)v10 setBundleIdentifier:v63];
    }
  }

  v10->_allowedToUseLSAlwaysEligible = 1;
  v64 = [v8 valueForEntitlement:@"com.apple.private.coreservices.alwaysEligibleEvenWhenInBackground"];
  v10->_allowedToUseEligibleEvenWhenInBackground = sub_100001E30(v64);

  v65 = [v8 valueForEntitlement:@"com.apple.private.coreservices.lsuseractivityd.LSAlwaysPick"];
  v10->_allowedToUseLSAlwaysPick = sub_100001E30(v65);

  v66 = [v8 valueForEntitlement:@"com.apple.private.coreservices.canalwaysadvertise"];
  v10->_allowedToUseUAAlwaysAdvertise = sub_100001E30(v66);

  v67 = [v8 valueForEntitlement:@"com.apple.private.coreservices.cangetcurrentactivityinfo"];
  v10->_allowedToGetCurrentActivityInfo = sub_100001E30(v67);

  v68 = [v8 valueForEntitlement:@"com.apple.private.coreservices.allowedToMatchUserActivities"];
  if (sub_100001E30(v68))
  {
    v10->_allowedToMatchUserActivities = 1;
  }

  else
  {
    v69 = [v8 valueForEntitlement:@"com.apple.private.coreserivces.allowedToMatchUserActivities"];
    v10->_allowedToMatchUserActivities = sub_100001E30(v69);
  }

  v70 = [(UAUserActivityClientProcess *)v10 connection];
  v71 = [v70 valueForEntitlement:@"com.apple.private.canmodifyanyuseractivity"];
  v10->_allowedToAccessAnyItem = sub_100001E30(v71);

  v72 = sub_100001A30(0);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    v73 = [(UAAuditToken *)v10->_auditToken pid];
    v74 = [v7 appStateMonitor];
    v75 = @"YES";
    if (!v74)
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
  v78 = [v7 appStateMonitor];
  v79 = [(UAAuditToken *)v10->_auditToken pid];
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_1000580D4;
  v90[3] = &unk_1000C5E90;
  v80 = v77;
  v91 = v80;
  v92 = v7;
  [v78 applicationInfoForPID:v79 completion:v90];

  v81 = +[NSNotificationCenter defaultCenter];
  [v81 addObserver:v80 selector:"debugStateChanged:" name:@"UAUserActivityDebugStateChanged" object:0];

  v82 = sub_100001A30(0);
  if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
  {
    v83 = [(UAUserActivityClientProcess *)v80 auditToken];
    v84 = [(UAUserActivityClientProcess *)v80 teamID];
    v85 = [(UAUserActivityClientProcess *)v80 applicationIdentifier];
    v86 = [(UAUserActivityClientProcess *)v80 bundleIdentifier];
    v87 = [(UAUserActivityClientProcess *)v80 allowedToAccessAnyItem];
    *buf = 138544387;
    *&buf[4] = v83;
    *&buf[12] = 2113;
    *&buf[14] = v84;
    *&buf[22] = 2113;
    *&buf[24] = v85;
    v98 = 2113;
    v99 = v86;
    v100 = 1026;
    v101 = v87;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "UserActivityClient:%{public}@, teamID=%{private}@ applicationID=%{private}@ bundleID=%{private}@ accessAny=%{public,BOOL}d ", buf, 0x30u);
  }

  _Block_object_dispose(__str, 8);
  objc_destroyWeak(v107);
LABEL_45:

  return v10;
}

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  [(UAUserActivityClientProcess *)v2 setOs_transaction:0];
  v3 = [(UAUserActivityClientProcess *)v2 connection];

  if (v3)
  {
    v4 = [(UAUserActivityClientProcess *)v2 connection];
    [v4 setExportedObject:0];

    v5 = [(UAUserActivityClientProcess *)v2 connection];
    [v5 invalidate];

    objc_storeWeak(&v2->_connection, 0);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(UAUserActivityClientProcess *)v2 uniqueIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = sub_100001A30(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "removing %{public}@ userActivityInfoItem", buf, 0xCu);
        }

        [(UAUserActivityClientProcess *)v2 removeUserActivityAdvertiseableItemByUUID:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 removeObserver:v2 name:@"UAUserActivityDebugStateChanged" object:0];

  objc_sync_exit(v2);
}

- (id)userActivityAdvertisableItemByUUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_userActivityAdvertisableItemsByUUID objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)addUserActivity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = self;
    objc_sync_enter(v5);
    userActivityAdvertisableItemsByUUID = v5->_userActivityAdvertisableItemsByUUID;
    v7 = [v8 uuid];
    [(NSMutableDictionary *)userActivityAdvertisableItemsByUUID setObject:v8 forKey:v7];

    objc_sync_exit(v5);
    v4 = v8;
  }
}

- (void)removeUserActivity:(id)a3
{
  if (a3)
  {
    v4 = [a3 uuid];
    [(UAUserActivityClientProcess *)self removeUserActivityAdvertiseableItemByUUID:v4];
  }
}

- (BOOL)removeUserActivityAdvertiseableItemByUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 UUIDString];
    *buf = 138543362;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "uuid=%{public}@", buf, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableSet *)v7->_dirtyUUIDs removeObject:v4];
  [(NSMutableSet *)v7->_pendingResumeActivityUUIDs removeObject:v4];
  v8 = [(UAUserActivityClientProcess *)v7 userActivityAdvertisableItemByUUID:v4];
  if (!v8)
  {
    if ([(UAUserActivityClientProcess *)v7 allowedToAccessAnyItem])
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [(UAUserActivityClientProcess *)v7 controller];
      v14 = [v13 additionalUserActivityAdvertisableItems];

      v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v15)
      {
        v16 = *v28;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            v19 = [v18 uuid];
            v20 = [v19 isEqual:v4];

            if (v20)
            {
              v21 = sub_100001A30(0);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = [0 uuid];
                v23 = [v22 UUIDString];
                v24 = [0 logString];
                *buf = 138543619;
                v32 = v23;
                v33 = 2113;
                v34 = v24;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Removing item %{public}@/%{private}@ from additionalUserActivityAdvertisableItems", buf, 0x16u);
              }

              v25 = [(UAUserActivityClientProcess *)v7 controller];
              [v25 removeAdditionalUserActivityAdvertisableItems:v18];

              goto LABEL_25;
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }

    objc_sync_exit(v7);
    goto LABEL_27;
  }

  v9 = [(UAUserActivityClientProcess *)v7 currentAdvertisableActivity];
  if (v9)
  {
    v10 = [(UAUserActivityClientProcess *)v7 currentAdvertisableActivity];
    v11 = [v10 uuid];
    v12 = [v11 isEqual:v4];

    if (v12)
    {
      [(UAUserActivityClientProcess *)v7 setCurrentAdvertisableActivity:0];
      if (sub_1000023A0([v8 type]) || (objc_msgSend(v8, "alwaysEligible") & 1) != 0)
      {
        LODWORD(v9) = 1;
      }

      else
      {
        LODWORD(v9) = [v8 alwaysEligible];
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  [v8 setClient:0];
  [(NSMutableDictionary *)v7->_userActivityAdvertisableItemsByUUID removeObjectForKey:v4];

  objc_sync_exit(v7);
  if (v9)
  {
    v7 = [(UAUserActivityClientProcess *)v7 manager];
    [(UAUserActivityClientProcess *)v7 scheduleUpdatingAdvertisableItems];
LABEL_27:
  }

  return v8 != 0;
}

- (BOOL)isEligibleToAdvertiseWithUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
    if (v5)
    {
      v6 = v5;
      v7 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
      v8 = [v7 uuid];
      v9 = [v8 isEqual:v4];

      if (v9)
      {
        v10 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:v4];
        v11 = v10;
        if (v10)
        {
          if ([v10 alwaysPick] & 1) != 0 || (-[UAUserActivityClientProcess controller](self, "controller"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "clientIsActive:", self), v12, (v13) || (objc_msgSend(v11, "proxiedBundleIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14) || -[UAUserActivityClientProcess allowedToUseLSAlwaysEligible](self, "allowedToUseLSAlwaysEligible") && (objc_msgSend(v11, "alwaysEligible"))
          {
            v15 = 1;
LABEL_16:

            goto LABEL_10;
          }

          if ([(UAUserActivityClientProcess *)self allowedToUseEligibleEvenWhenInBackground])
          {
            v17 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:v4];
            v18 = [v17 options];
            v19 = [v18 objectForKeyedSubscript:UAUserActivityEligibleEvenWhenInBackgroundKey];
            v15 = [v19 BOOLValue];

            goto LABEL_16;
          }
        }

        v15 = 0;
        goto LABEL_16;
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (BOOL)isEligibleToAlwaysAdvertiseWithUUID:(id)a3
{
  v4 = a3;
  if ([(UAUserActivityClientProcess *)self allowedToUseUAAlwaysAdvertise])
  {
    v5 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 options];
      v8 = [v7 objectForKeyedSubscript:UAAlwaysAdvertise];
      v9 = [v8 BOOLValue];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDirtyActivityWithUUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)v5->_dirtyUUIDs containsObject:v4];
  objc_sync_exit(v5);

  return v6;
}

- (BOOL)askSourceProcessToUpdateActivityWithUUID:(id)a3 evenIfClean:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v47 = a5;
  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v8 UUIDString];
    v11 = [(UAUserActivityClientProcess *)self auditToken];
    *buf = 138543618;
    v62 = v10;
    v63 = 2048;
    v64 = [v11 pid];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@ from client %ld", buf, 0x16u);
  }

  v12 = self;
  objc_sync_enter(v12);
  if (a4)
  {
    v13 = 1;
  }

  else
  {
    v13 = [(NSMutableSet *)v12->_dirtyUUIDs containsObject:v8];
  }

  v14 = [(NSMutableSet *)v12->_pendingResumeActivityUUIDs containsObject:v8];
  objc_sync_exit(v12);

  if (v13)
  {
    if (!v14)
    {
      v24 = [(UAUserActivityClientProcess *)v12 auditToken];
      v46 = +[RBSTarget targetWithPid:](RBSTarget, "targetWithPid:", [v24 pid]);

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

      WeakRetained = objc_loadWeakRetained(&v12->_connection);
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100059614;
      v54[3] = &unk_1000C5EB8;
      v32 = v8;
      v55 = v32;
      v56 = v12;
      v33 = v47;
      v58 = v33;
      v44 = v27;
      v57 = v44;
      v34 = [WeakRetained remoteObjectProxyWithErrorHandler:v54];

      v23 = v34 != 0;
      if (v34)
      {
        v35 = v12;
        objc_sync_enter(v35);
        [(NSMutableSet *)v12->_pendingResumeActivityUUIDs addObject:v32];
        objc_sync_exit(v35);

        v36 = [(UAUserActivityClientProcess *)v35 userActivityAdvertisableItemByUUID:v32];
        v37 = sub_100001A30(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v32 UUIDString];
          *buf = 138543362;
          v62 = v38;
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
          v41 = [(UAUserActivityClientProcess *)v12 bundleIdentifier];
          *buf = 138543619;
          v62 = v32;
          v63 = 2113;
          v64 = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Unable to call willSave for user activity %{public}@ for process %{private}@ because its owning process/connection seems to be gone.", buf, 0x16u);
        }

        [v44 invalidate];
      }

      goto LABEL_32;
    }

    v15 = sub_100001A30(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v8 UUIDString];
      *buf = 138543362;
      v62 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " - A prepareToResume is already in progress for activity %{public}@, queuing callback for when fetch is complete", buf, 0xCu);
    }

    v17 = objc_alloc_init(UAUserActivityClientPendingUpdateTask);
    [(UAUserActivityClientPendingUpdateTask *)v17 setUuid:v8];
    [(UAUserActivityClientPendingUpdateTask *)v17 setBlock:v47];
    v18 = v12;
    objc_sync_enter(v18);
    v19 = [(UAUserActivityClientProcess *)v18 pendingUpdateTasks];
    [v19 addObject:v17];

    objc_sync_exit(v18);
LABEL_15:
    v23 = 1;
LABEL_32:
    v22 = v47;
    goto LABEL_33;
  }

  v20 = sub_100001A30(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v8 UUIDString];
    *buf = 138543362;
    v62 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " - no need to call back to get updated info for activity %{public}@, because it is not dirty", buf, 0xCu);
  }

  v22 = v47;
  if (v47)
  {
    v47[2]();
    goto LABEL_15;
  }

  v23 = 1;
LABEL_33:

  return v23;
}

- (BOOL)didResumeUserActivityWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100059B68;
  v14[3] = &unk_1000C5628;
  v9 = v7;
  v15 = v9;
  v10 = [WeakRetained remoteObjectProxyWithErrorHandler:v14];

  v11 = sub_100001A30(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 UUIDString];
    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Telling client that user activity %{public}@ was resumed (on another device).", buf, 0xCu);
  }

  [v10 tellClientUserActivityItWasResumed:v6];
  if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }

  return 1;
}

- (void)dispatchPendingTasksForUUID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = objc_alloc_init(NSMutableIndexSet);
  v10 = [(UAUserActivityClientProcess *)v8 pendingUpdateTasks];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100059F04;
  v20[3] = &unk_1000C5F08;
  v11 = v6;
  v21 = v11;
  v12 = v7;
  v22 = v12;
  v13 = v9;
  v23 = v13;
  [v10 enumerateObjectsUsingBlock:v20];

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

    v16 = [(UAUserActivityClientProcess *)v8 pendingUpdateTasks];
    [v16 removeObjectsAtIndexes:v13];
  }

  else
  {
    v16 = sub_100001A30(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, " -- No pending fetch tasks called for %{public}@", buf, 0xCu);
    }
  }

  v17 = sub_100001A30(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(UAUserActivityClientProcess *)v8 pendingUpdateTasks];
    v19 = [v18 count];
    *buf = 134217984;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, " -- %lu remaining queued tasks total", buf, 0xCu);
  }

  objc_sync_exit(v8);
}

- (void)setCurrentAdvertisableActivity:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  currentAdvertisableActivity = obj->_currentAdvertisableActivity;
  obj->_currentAdvertisableActivity = v4;

  objc_sync_exit(obj);
}

- (void)doInitializeWithClientVersion:(int64_t)a3 clientInfo:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = sub_100001A30(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(UAUserActivityClientProcess *)self auditToken];
    v29 = [(UAUserActivityClientProcess *)self bundleIdentifier];
    if (self->_allowedToAccessAnyItem)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v10;
    v15 = v9;
    if (self->_clientIsSandboxed)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    [v8 description];
    v17 = v31 = v8;
    v18 = sub_100009684(v17);
    *buf = 134219267;
    v33 = a3;
    v34 = 2114;
    v35 = v12;
    v36 = 2113;
    v37 = v30;
    v38 = 2114;
    v39 = v13;
    v40 = 2114;
    v41 = v16;
    v9 = v15;
    v10 = v14;
    v42 = 2113;
    v43 = v18;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CLIENT: version=%ld, %{public}@ %{private}@ any=%{public}@ sandbox=%{public}@ clientInfo=%{private}@", buf, 0x3Eu);

    v8 = v31;
  }

  if (v8)
  {
    if ([(UAUserActivityClientProcess *)self clientIsSandboxed])
    {
      v19 = +[NSXPCConnection currentConnection];
      v20 = [v19 valueForEntitlement:@"com.apple.private.useractivity.allowedtosetbundleidentifier"];
      v21 = [v20 BOOLValue];

      if (v21)
      {
        v22 = [(UAUserActivityClientProcess *)self bundleIdentifier];

        if (!v22)
        {
          v23 = [v8 objectForKey:@"CFBundleIdentifier"];
          [(UAUserActivityClientProcess *)self setBundleIdentifier:v23];
        }

        v24 = [(UAUserActivityClientProcess *)self applicationIdentifier];

        if (!v24)
        {
          v25 = [(UAUserActivityClientProcess *)self bundleIdentifier];
          [(UAUserActivityClientProcess *)self setApplicationIdentifier:v25];
LABEL_20:
        }
      }
    }

    else
    {
      v26 = [(UAUserActivityClientProcess *)self applicationIdentifier];

      if (!v26)
      {
        v27 = [v8 objectForKey:@"application-identifier"];
        [(UAUserActivityClientProcess *)self setApplicationIdentifier:v27];
      }

      v28 = [(UAUserActivityClientProcess *)self bundleIdentifier];

      if (!v28)
      {
        v25 = [v8 objectForKey:@"CFBundleIdentifier"];
        [(UAUserActivityClientProcess *)self setBundleIdentifier:v25];
        goto LABEL_20;
      }
    }
  }

  (*(v9 + 2))(v9, 1, 0, 0);
  objc_autoreleasePoolPop(v10);
}

- (void)doDeleteUserActivityWithUUID:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100001A30(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4 UUIDString];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "deleteUserActivity %{public}@", &v8, 0xCu);
  }

  if (v4)
  {
    [(UAUserActivityClientProcess *)self removeUserActivityAdvertiseableItemByUUID:v4];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)doAddDynamicUserActivity:(id)a3 matching:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v31 = v6;
    v32 = 2113;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "doAddDynamicUserActivity(%{private}@ %{private}@)", buf, 0x16u);
  }

  if (v6 && v7)
  {
    v9 = [(UAUserActivityClientProcess *)self teamID];
    v10 = [NSString stringWithFormat:@"%@:%@:%@", v9, v7, v6];

    v11 = _LSCreateHashedBytesForAdvertisingFromString();
    v12 = _LSCreateDatabaseLookupStringFromHashedBytesForAdvertising();
    if (v12)
    {
      v13 = [(UAUserActivityClientProcess *)self teamID];
      v14 = [NSString stringWithFormat:@"%@:%@", v13, v7];

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
        v39[1] = v6;
        v38[2] = kUADynamicUserActivityTeamIDKey;
        v21 = [(UAUserActivityClientProcess *)self teamID];
        v38[3] = kUADynamicUserActivityAppActivityKey;
        v39[2] = v21;
        v39[3] = v7;
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
          v31 = v6;
          v32 = 2114;
          v33 = v7;
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
      v14 = sub_100001A30(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(UAUserActivityClientProcess *)self teamID];
        v26 = v25 = v11;
        *buf = 138543874;
        v31 = v6;
        v32 = 2114;
        v33 = v7;
        v34 = 2114;
        v35 = v26;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "doAddDynamicUserActivity, nil dynamicHash from (%{public}@, %{public}@, %{public}@).", buf, 0x20u);

        v11 = v25;
      }
    }
  }

  else
  {
    v10 = sub_100001A30(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = v6;
      v32 = 2114;
      v33 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "doAddDynamicUserActivity(%{public}@, %{public}@) failed, nil for one param.", buf, 0x16u);
    }
  }
}

- (void)doRemoveDynamicUserActivity:(id)a3 matching:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v40 = v6;
    v41 = 2113;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "doRemoveDynamicUserActivity(%{private}@ %{private}@)", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [NSUserDefaults alloc];
    v10 = [v9 initWithSuiteName:kUADynamicUserActivitesPreferences];
    v11 = kUADynamicUserActivitiesKey;
    v12 = [v10 objectForKey:kUADynamicUserActivitiesKey];
    v13 = [v12 mutableCopy];

    if (v6)
    {
      v14 = [(UAUserActivityClientProcess *)self teamID];
      v15 = [NSString stringWithFormat:@"%@:%@:%@", v14, v7, v6];

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
      v15 = [v13 allKeys];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
              objc_enumerationMutation(v15);
            }

            v23 = *(*(&v34 + 1) + 8 * v22);
            v24 = [v13 valueForKey:v23];
            v25 = [v24 valueForKey:v21];
            if ([v7 isEqualToString:v25])
            {
              v26 = v21;
              v27 = v20;
              v28 = v7;
              v29 = v15;
              v30 = sub_100001A30(0);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v40 = v23;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, " - found %{public}@ activity, removing it.", buf, 0xCu);
              }

              [v13 removeObjectForKey:v23];
              v15 = v29;
              v7 = v28;
              v20 = v27;
              v21 = v26;
              v19 = v33;
            }

            v22 = v22 + 1;
          }

          while (v19 != v22);
          v19 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v19);
      }

      v10 = v32;
      [v32 setValue:v13 forKey:v31];
      [v32 synchronize];
      v6 = 0;
    }
  }

  else
  {
    v10 = sub_100001A30(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "doRemoveDynamicUserActivity(%{public}@), nil appActivity", buf, 0xCu);
    }
  }
}

- (void)doPinUserActivityInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UAUserActivityClientProcess *)self connection];
  v9 = [v8 valueForEntitlement:@"com.apple.private.coreservices.canopenactivity"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = +[NSUUID UUID];
    [v6 setUuid:v11];
    v12 = [(UAUserActivityClientProcess *)self manager];
    [v12 setPinnedUserActivityInfoItem:v6];

    v13 = sub_100001A30(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v6 uuid];
      v15 = [v14 UUIDString];
      LODWORD(v21[0]) = 138543619;
      *(v21 + 4) = v15;
      WORD6(v21[0]) = 2113;
      *(v21 + 14) = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Pinned Activity Info: %{public}@/%{private}@", v21, 0x16u);
    }

    v7[2](v7, v11, 0);
  }

  else
  {
    v16 = sub_100001A30(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [UAAuditToken alloc];
      v18 = [(UAUserActivityClientProcess *)self connection];
      v19 = v18;
      if (v18)
      {
        [v18 auditToken];
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
    (v7)[2](v7, 0, v11);
  }
}

- (void)doGetCurrentUserActivityInfo:(id)a3
{
  v4 = a3;
  if (![(UAUserActivityClientProcess *)self allowedToGetCurrentActivityInfo])
  {
    v14 = sub_100001A30(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [UAAuditToken alloc];
      v16 = [(UAUserActivityClientProcess *)self connection];
      v17 = v16;
      if (v16)
      {
        [v16 auditToken];
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
    v20 = 0;
    goto LABEL_23;
  }

  v5 = [(UAUserActivityClientProcess *)self manager];
  v6 = [v5 uaAdvertisableItemsInOrder];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v6;
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

  v18 = [v13 client];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 bundleIdentifier];
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
LABEL_23:
  v23 = sub_100001A30(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = [v13 uuid];
    v25 = [v24 UUIDString];
    *buf = 138543875;
    *&buf[4] = v25;
    *&buf[12] = 2113;
    *&buf[14] = v20;
    *&buf[22] = 2114;
    *&buf[24] = v21;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "result=%{public}@ %{private}@ error=%{public}@", buf, 0x20u);
  }

  v26 = [v13 uuid];
  v27 = [v13 activityType];
  v28 = [v13 dynamicActivityType];
  v4[2](v4, v26, v27, v28, v20, v21);
}

- (void)doGetUserActivityProxiesWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v38 = objc_opt_new();
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 description];
    v10 = sub_100009684(v9);
    *buf = 138543362;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "doGetUserActivityProxiesWithOptions:%{public}@", buf, 0xCu);
  }

  if ([(UAUserActivityClientProcess *)self allowedToMatchUserActivities])
  {
    v36 = v7;
    v37 = v6;
    v11 = [(UAUserActivityClientProcess *)self manager];
    v12 = [v11 advertiseableItems];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = v12;
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
            v20 = [v18 client];
            v21 = v20;
            if (v20)
            {
              v22 = [v20 bundleIdentifier];
            }

            else
            {
              v22 = 0;
            }

            v23 = [UAUserActivityProxy alloc];
            v24 = [v18 uuid];
            v25 = [v18 activityType];
            v26 = [v18 dynamicActivityType];
            v27 = [v23 initWithUUID:v24 activityType:v25 dynamicActivityType:v26 bundleID:v22];

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
    v7 = v36;
    v6 = v37;
  }

  else
  {
    v29 = sub_100001A30(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [UAAuditToken alloc];
      v31 = [(UAUserActivityClientProcess *)self connection];
      v32 = v31;
      if (v31)
      {
        [v31 auditToken];
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
  v7[2](v7, v35, v28);
}

- (void)doDetermineIfUserActivityIsCurrent:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v6 UUIDString];
    *buf = 138543362;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "doDetermineIfUserActivityIsCurrent: uuid=%{public}@", buf, 0xCu);
  }

  if (![(UAUserActivityClientProcess *)self allowedToGetCurrentActivityInfo])
  {
    v20 = sub_100001A30(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [UAAuditToken alloc];
      v22 = [(UAUserActivityClientProcess *)self connection];
      v23 = v22;
      if (v22)
      {
        [v22 auditToken];
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
    (*(v7 + 2))(v7, 0, 0, 0, 0, v24);
    v11 = v6;
LABEL_30:

    goto LABEL_31;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = [(UAUserActivityClientProcess *)self manager];
  v11 = [v10 clients];

  v12 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = [v16 userActivityInfoForUUID:v6];
        if (v17)
        {
          v24 = v17;
          v25 = sub_100001A30(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = [v6 UUIDString];
            *buf = 138543875;
            *&buf[4] = v26;
            *&buf[12] = 2114;
            *&buf[14] = v16;
            *&buf[22] = 2113;
            *&buf[24] = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "doDetermineIfUserActivityIsCurrent: Found uuid=%{public}@, in client %{public}@ as %{private}@", buf, 0x20u);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v16 userActivityClientForUUID:v6];
            v28 = v27;
            if (v27)
            {
              v29 = [v27 currentAdvertisableActivity];
              v30 = [v29 uuid];
              v31 = [v30 isEqual:v6];

              v32 = [v28 bundleIdentifier];
              v33 = [v28 auditToken];
              v34 = [v33 pid];
            }

            else
            {
              v34 = 0;
              v32 = 0;
              v31 = 1;
            }
          }

          else
          {
            v34 = 0;
            v32 = 0;
            v31 = 1;
          }

          v36 = [v24 activityType];
          (*(v7 + 2))(v7, v31, v32, v34, v36, 0);

          goto LABEL_30;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (v6)
  {
    v18 = UAContinuityErrorDomain;
    v19 = -108;
    goto LABEL_26;
  }

LABEL_31:
}

- (void)doGetLoggingFileForClient:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  if (a5)
  {
    v6 = a5;
    v7 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
    (*(a5 + 2))(v6, 0, v7);
  }
}

- (void)doFetchUserActivityInfoWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v6 UUIDString];
    *buf = 138543362;
    v44 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "doFetchUserActivityInfoWithUUID:(%{public}@)", buf, 0xCu);
  }

  v11 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:v6];
  if (v11)
  {
    v12 = v11;
    if ([v11 isDirty])
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_10005C13C;
      v40[3] = &unk_1000C5F30;
      v13 = v7;
      v42 = v13;
      v12 = v12;
      v41 = v12;
      if (([v12 requestPayloadWithCompletionHandler:v40] & 1) == 0)
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

    v25 = [v12 copy];
LABEL_23:
    v26 = v25;
    (*(v7 + 2))(v7, v25, 0);

    goto LABEL_24;
  }

  if ([(UAUserActivityClientProcess *)self allowedToAccessAnyItem]|| [(UAUserActivityClientProcess *)self allowedToGetCurrentActivityInfo])
  {
    v17 = [(UAUserActivityClientProcess *)self controller];
    v18 = [v17 userActivityInfoForUUID:v6];

    if (v18)
    {
      goto LABEL_14;
    }
  }

  v19 = [(UAUserActivityClientProcess *)self manager];
  v18 = [v19 cornerActionItemForUUID:v6];

  if (v18)
  {
LABEL_14:
    v20 = sub_100001A30(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v6 UUIDString];
      *buf = 138543362;
      v44 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "-- activity with uuid %{public}@, so fetching payload for it.", buf, 0xCu);
    }

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10005C1D8;
    v36[3] = &unk_1000C5F58;
    v37 = v6;
    v12 = v18;
    v38 = v12;
    v22 = v7;
    v39 = v22;
    if (([v12 requestPayloadWithCompletionHandler:v36] & 1) == 0)
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

  v27 = [(UAUserActivityClientProcess *)self manager];
  v28 = [v27 pinnedUserActivityInfoItem];
  v29 = [v28 uuid];
  v30 = [v29 isEqual:v6];

  if (v30)
  {
    v31 = sub_100001A30(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(UAUserActivityClientProcess *)self manager];
      v33 = [v32 pinnedUserActivityInfoItem];
      *buf = 138477827;
      v44 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " -- Sending Pinned userActivityInfo back to client: %{private}@", buf, 0xCu);
    }

    v12 = [(UAUserActivityClientProcess *)self manager];
    v25 = [v12 pinnedUserActivityInfoItem];
    goto LABEL_23;
  }

  v12 = [NSError errorWithDomain:UAContinuityErrorDomain code:-106 userInfo:0];
  v34 = sub_100001A30(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = [v6 UUIDString];
    *buf = 138543618;
    v44 = v35;
    v45 = 2114;
    v46 = v12;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Activity with uuid %{public}@ fetch requested, but was neither a locally created item nor a corner action item, so returning error %{public}@", buf, 0x16u);
  }

  (*(v7 + 2))(v7, 0, v12);
LABEL_24:

  objc_autoreleasePoolPop(v8);
}

- (void)doUpdateUserActivityInfo:(id)a3 makeCurrent:(BOOL)a4 completionHandler:(id)a5
{
  v105 = a4;
  v7 = a3;
  v8 = a5;
  context = objc_autoreleasePoolPush();
  v9 = +[UAUserActivityDefaults sharedDefaults];
  v107 = [v9 debugCrossoverAllActivities];

  v10 = sub_100001A30(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (v105)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [v7 uuid];
    v13 = [v12 UUIDString];
    *buf = 138543875;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    *&buf[22] = 2113;
    *&buf[24] = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "doUpdateUserActivityInfo: makeCurrent=%{public}@ newInfo = %{public}@/%{private}@", buf, 0x20u);
  }

  v14 = [v7 uuid];
  v15 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:v14];

  v16 = +[NSDate date];
  [v7 setWhen:v16];

  v106 = self;
  if (v15)
  {
    v17 = 0;
    LOBYTE(v18) = 0;
    goto LABEL_33;
  }

  v19 = [v7 activityType];

  if (!v19)
  {
    v27 = sub_100001A30(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [(UAUserActivityClientProcess *)self auditToken];
      v29 = [v28 pid];
      v30 = [(UAUserActivityClientProcess *)self bundleIdentifier];
      *buf = 134218243;
      *&buf[4] = v29;
      *&buf[12] = 2113;
      *&buf[14] = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "The application with pid %ld/%{private}@ didn't provide a activityType.", buf, 0x16u);
    }

    v31 = UAContinuityErrorDomain;
    v32 = -102;
    goto LABEL_18;
  }

  v20 = [(UAUserActivityClientProcess *)self teamID];
  if (!v20)
  {
    v20 = [(UAUserActivityClientProcess *)self applicationIdentifier];
    if (([v20 hasPrefix:@"com.apple."] & 1) == 0)
    {
      v33 = [(UAUserActivityClientProcess *)self clientIsSandboxed];

      if (!v33)
      {
        goto LABEL_12;
      }

      v34 = sub_100001A30(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = [(UAUserActivityClientProcess *)self auditToken];
        v36 = [v35 pid];
        v37 = [(UAUserActivityClientProcess *)self bundleIdentifier];
        if (v37)
        {
          v38 = [(UAUserActivityClientProcess *)self bundleIdentifier];
        }

        else
        {
          v38 = @"NULL";
        }

        *buf = 134218243;
        *&buf[4] = v36;
        *&buf[12] = 2113;
        *&buf[14] = v38;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "The application with pid %ld/%{private}@ doesn't have a team identifier in its application-identifier, or isn't from com.apple., and is sandboxed, so unable to proceed.", buf, 0x16u);
        if (v37)
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
  v21 = [(UAUserActivityClientProcess *)self teamID];
  v22 = sub_100001A30(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = v8;
    v24 = [(UAUserActivityClientProcess *)self auditToken];
    v25 = [(UAUserActivityClientProcess *)self bundleIdentifier];
    if (v25)
    {
      v26 = [(UAUserActivityClientProcess *)self bundleIdentifier];
    }

    else
    {
      v26 = @"NULL";
    }

    v39 = [v7 activityType];
    *buf = 138544131;
    *&buf[4] = v24;
    *&buf[12] = 2113;
    *&buf[14] = v21;
    *&buf[22] = 2113;
    *&buf[24] = v26;
    v109 = 2113;
    v110 = v39;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Application %{public}@ is registering an activity with teamID %{private}@ bundleID=%{private}@ activityType=%{private}@", buf, 0x2Au);

    if (v25)
    {
    }

    v8 = v23;
  }

  v15 = [[UAUserActivityAdvertisableItem alloc] initWithUserActivityInfo:v7 client:self];
  [(UAUserActivityAdvertisableItem *)v15 setTeamIdentifier:v21];
  v40 = [(UAUserActivityClientProcess *)self bundleIdentifier];
  [(UAUserActivityAdvertisableItem *)v15 setBundleIdentifier:v40];

  [(UAUserActivityClientProcess *)self addUserActivity:v15];
  v17 = 0;
LABEL_28:
  v41 = [v7 options];
  v42 = [v41 objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];

  LODWORD(v18) = v42 != 0;
  if (v42)
  {
    v103 = v8;
    v43 = sub_100001A30(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = [(UAUserActivityAdvertisableItem *)v15 uuid];
      v45 = [v44 UUIDString];
      v46 = [(UAAdvertisableItem *)v15 logString];
      v47 = [v7 options];
      v48 = [v47 objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];
      *buf = 138543875;
      *&buf[4] = v45;
      *&buf[12] = 2113;
      *&buf[14] = v46;
      *&buf[22] = 2114;
      *&buf[24] = v48;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Application item %{public}@/%{private}@ has a proxy %{public}@, so forcing an advertisement update.", buf, 0x20u);

      self = v106;
    }

    v8 = v103;
  }

  if (!v15)
  {
    v75 = [(UAUserActivityClientProcess *)self controller];
    v76 = [v7 uuid];
    v77 = [v75 userActivityInfoForUUID:v76];

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
  v49 = [(UAUserActivityAdvertisableItem *)v15 webpageURL];
  v50 = [v7 webpageURL];
  v51 = v50;
  if (v49 && v50)
  {
    v52 = [v49 isEqual:v50];

    if (v52)
    {
      goto LABEL_41;
    }
  }

  else
  {

    if (v49 == v51)
    {
      goto LABEL_41;
    }
  }

  v53 = sub_100001A30(0);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    v54 = [(UAUserActivityAdvertisableItem *)v15 uuid];
    v55 = [v54 UUIDString];
    v56 = [(UAAdvertisableItem *)v15 logString];
    *buf = 138543619;
    *&buf[4] = v55;
    *&buf[12] = 2113;
    *&buf[14] = v56;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Application item %{public}@/%{private}@ has changed .webPageURL, forcing an advertisement update.", buf, 0x16u);
  }

  LOBYTE(v18) = 1;
LABEL_41:
  v57 = [(UAUserActivityAdvertisableItem *)v15 proxiedBundleIdentifier];
  v58 = [v7 options];
  v59 = [v58 objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];
  v60 = v59;
  if (v57 && v59)
  {
    v61 = [v57 isEqual:v59];

    if (v61)
    {
      goto LABEL_44;
    }
  }

  else
  {

    if (v57 == v60)
    {
LABEL_44:
      self = v106;
      if (!v105)
      {
        if (v18)
        {
          LODWORD(v18) = 1;
          goto LABEL_70;
        }

        goto LABEL_64;
      }

LABEL_51:
      v67 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
      if (!v67)
      {
        goto LABEL_59;
      }

      v68 = v67;
      v69 = v8;
      v70 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
      v71 = [v70 uuid];
      v72 = [(UAUserActivityAdvertisableItem *)v15 uuid];
      v73 = v72;
      if (!v71)
      {
        goto LABEL_57;
      }

      if (v72)
      {
        v74 = [v71 isEqual:v72];
      }

      else
      {
LABEL_57:
        v74 = v71 == v72;
      }

      v8 = v69;
      self = v106;
      if ((v74 & 1) == 0)
      {
LABEL_59:
        v18 = sub_100001A30(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          [(UAUserActivityAdvertisableItem *)v15 uuid];
          v80 = v79 = v8;
          v81 = [v80 UUIDString];
          v82 = [(UAAdvertisableItem *)v15 logString];
          v83 = [(UAUserActivityClientProcess *)v106 bundleIdentifier];
          v84 = [(UAUserActivityClientProcess *)v106 auditToken];
          v85 = [v84 pid];
          *buf = 138544131;
          *&buf[4] = v81;
          *&buf[12] = 2113;
          *&buf[14] = v82;
          *&buf[22] = 2113;
          *&buf[24] = v83;
          v109 = 2048;
          v110 = v85;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "- Making %{public}@/%{private}@ into the currentItem from process %{private}@/%ld", buf, 0x2Au);

          v8 = v79;
          self = v106;
        }

        [(UAUserActivityClientProcess *)self setCurrentAdvertisableActivity:v15];
        LOBYTE(v18) = 1;
      }

      v86 = v18;
      v87 = !sub_1000023A0([(UAUserActivityAdvertisableItem *)v15 type]);
      v107 |= v87;
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
          v90 = [v7 activityType];
          [v89 submitUserActivityBecameCurrent:v90 withToken:buf];
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

      if (!v105)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }
  }

  v18 = sub_100001A30(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v62 = [(UAUserActivityAdvertisableItem *)v15 uuid];
    v63 = [v62 UUIDString];
    v64 = [(UAAdvertisableItem *)v15 logString];
    v65 = [v7 options];
    v66 = [v65 objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];
    *buf = 138543875;
    *&buf[4] = v63;
    *&buf[12] = 2113;
    *&buf[14] = v64;
    *&buf[22] = 2114;
    *&buf[24] = v66;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Application item %{public}@/%{private}@ has changed proxy %{public}@, so forcing an advertisement update.", buf, 0x20u);
  }

  LODWORD(v18) = 1;
  self = v106;
  if (v105)
  {
    goto LABEL_51;
  }

LABEL_70:
  [(UAUserActivityAdvertisableItem *)v15 update:v7];
  if (!v17)
  {
    goto LABEL_74;
  }

LABEL_71:
  v91 = sub_100001A30(0);
  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
  {
    v92 = [v7 uuid];
    v93 = [v7 activityType];
    *buf = 138543875;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = v92;
    *&buf[22] = 2113;
    *&buf[24] = v93;
    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "refusing to register user activity from client, and returning error %{public}@ for item %{public}@ %{private}@", buf, 0x20u);
  }

LABEL_74:
  if (v18)
  {
    v94 = sub_100001A30(0);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      v95 = [(UAUserActivityAdvertisableItem *)v15 uuid];
      v96 = [v95 UUIDString];
      *buf = 138543619;
      *&buf[4] = v96;
      *&buf[12] = 2113;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_INFO, "BECOMECURRENT: updating advertisement for %{public}@/%{private}@ because the becomeCurrent item changed or a DNS item changed its URL", buf, 0x16u);
    }

    v97 = [(UAUserActivityClientProcess *)self manager];
    [v97 scheduleUpdatingAdvertisableItems];
  }

  if (v107)
  {
    v98 = sub_100001A30(0);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      v99 = [(UAUserActivityAdvertisableItem *)v15 uuid];
      v100 = [v99 UUIDString];
      *buf = 138543619;
      *&buf[4] = v100;
      *&buf[12] = 2113;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_INFO, "BECOMECURRENT: updating notifiers for %{public}@/%{private}@ because the becomeCurrent item changed", buf, 0x16u);
    }

    v101 = [(UAUserActivityClientProcess *)self manager];
    [v101 scheduleBestAppDetermination];
  }

  v8[2](v8, v17);

  objc_autoreleasePoolPop(context);
}

- (void)doUpdateUserActivityWithUUID:(id)a3 setActive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 UUIDString];
    v10 = @"NO";
    *buf = 138543875;
    v39 = v9;
    if (v4)
    {
      v10 = @"YES";
    }

    v40 = 2113;
    v41 = self;
    v42 = 2114;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "doUpdateUserActivityWithUUID(%{public}@/%{private}@, current=%{public}@)", buf, 0x20u);
  }

  v11 = [(UAUserActivityClientProcess *)self userActivityAdvertisableItemByUUID:v6];
  if (v11)
  {
    v37 = v7;
    v12 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
    if (v12)
    {
      v13 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
      v14 = [v13 uuid];
      v15 = [(__CFString *)v11 uuid];
      v16 = [v14 isEqual:v15];

      if (v16 == v4)
      {
        LODWORD(v12) = 0;
        v17 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      if ((v4 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (([(__CFString *)v11 alwaysPick]& 1) != 0)
    {
      LODWORD(v12) = 1;
    }

    else
    {
      v21 = [(UAUserActivityClientProcess *)self controller];
      LODWORD(v12) = [v21 clientIsActive:self];
    }

    v17 = 1;
LABEL_20:
    v22 = sub_100001A30(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      [(UAUserActivityClientProcess *)self auditToken];
      v23 = v36 = v17;
      v24 = [(__CFString *)v11 uuid];
      v25 = [v24 UUIDString];
      v26 = v25;
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
      v41 = v25;
      v43 = v11;
      v44 = 2114;
      if (v12)
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

    if (v16 & 1 | ((v4 & 1) == 0))
    {
      v7 = v37;
      if (v17)
      {
        v30 = sub_100001A30(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = [(UAUserActivityClientProcess *)self auditToken];
          *buf = 138543362;
          v39 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Triggering the update of the advertisable items because the current status of our application, %{public}@, has changed.", buf, 0xCu);
        }

        [(UAUserActivityClientProcess *)self setCurrentAdvertisableActivity:0];
        LODWORD(v12) = 1;
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

    v34 = [(UAUserActivityClientProcess *)self manager];
    [v34 scheduleBestAppDetermination];

LABEL_36:
    if (v12)
    {
LABEL_37:
      v35 = [(UAUserActivityClientProcess *)self manager];
      [v35 scheduleUpdatingAdvertisableItems];

      goto LABEL_38;
    }

    goto LABEL_38;
  }

  if (!v6)
  {
    v18 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];

    if (v18)
    {
      if (v4)
      {
        v19 = sub_100001A30(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [(UAUserActivityClientProcess *)self auditToken];
          *buf = 138543362;
          v39 = v20;
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

- (void)doMarkUserActivityAsDirty:(id)a3 forceImmediate:(BOOL)a4 webpageURL:(id)a5 expiration:(id)a6 hasiCloudDocument:(BOOL)a7 hasUnsynchronizediCloudDoc:(BOOL)a8
{
  v75 = a8;
  v76 = a4;
  v77 = a7;
  v82 = a3;
  v80 = a5;
  v79 = a6;
  context = objc_autoreleasePoolPush();
  v11 = sub_100001A30(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v82 UUIDString];
    v13 = [(UAUserActivityClientProcess *)self auditToken];
    v14 = @"NO";
    *buf = 138544898;
    v89 = v12;
    v90 = 2114;
    v91 = v13;
    if (v76)
    {
      v14 = @"YES";
    }

    if (v80)
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
    if (!v77)
    {
      v16 = "";
    }

    v94 = 2114;
    v95 = v15;
    v96 = 2114;
    v97 = v79;
    v98 = 2082;
    v99 = v16;
    if (v75)
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

  v18 = self;
  objc_sync_enter(v18);
  [(NSMutableSet *)v18->_dirtyUUIDs addObject:v82];
  objc_sync_exit(v18);
  p_isa = &v18->super.super.isa;

  v19 = sub_100001A30(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v74 = [(UAUserActivityClientProcess *)v18 dirtyUUIDs];
    v73 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v74 count]);
    v20 = [(UAUserActivityClientProcess *)v18 dirtyUUIDs];
    v21 = [NSMutableString stringWithFormat:@"{"];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v22 = v20;
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

        v27 = [*(*(&v84 + 1) + 8 * v26) UUIDString];
        [v21 appendFormat:@"%@ ", v27];

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

  v28 = [p_isa userActivityAdvertisableItemByUUID:v82];
  if (v28)
  {
    WeakRetained = objc_loadWeakRetained(p_isa + 11);
    v30 = [WeakRetained uaAdvertisableItemsInOrder];
    v31 = [v30 containsObject:v28];

    if (v31)
    {
      v32 = sub_100001A30(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v82 UUIDString];
        *buf = 138543362;
        v89 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, " -- Updating the user activity, because it's the currently advertised item, to let the server know it should (maybe) re-fetch the payload: %{public}@", buf, 0xCu);
      }

      v34 = [(__CFString *)v28 webpageURL];
      v35 = v34;
      if (v80)
      {
        if (([v80 isEqual:v34] & 1) == 0)
        {

          [(__CFString *)v28 setWebpageURL:v80];
          goto LABEL_38;
        }
      }

      else
      {
        v36 = v34 == 0;

        if (v36)
        {
          goto LABEL_43;
        }
      }

      v37 = [(__CFString *)v28 webpageURL];
      if (!v37)
      {

        if (v80)
        {

          [(__CFString *)v28 setWebpageURL:v80];
        }

        else
        {
          [(__CFString *)v28 setWebpageURL:0];
        }

        goto LABEL_43;
      }

      v38 = [(__CFString *)v28 webpageURL];
      v39 = [v38 isEqual:v80];

      if (v80)
      {

        [(__CFString *)v28 setWebpageURL:v80];
      }

      else
      {
        [(__CFString *)v28 setWebpageURL:0];
      }

      if (v39)
      {
LABEL_43:
        v47 = [(__CFString *)v28 expirationDate];
        v48 = v47;
        if (v79)
        {
          if (([v79 isEqual:v47] & 1) == 0)
          {

            [(__CFString *)v28 setExpirationDate:v79];
            goto LABEL_54;
          }
        }

        else
        {
          v49 = v47 == 0;

          if (v49)
          {
            goto LABEL_57;
          }
        }

        v50 = [(__CFString *)v28 expirationDate];
        if (!v50)
        {

          if (v79)
          {

            [(__CFString *)v28 setExpirationDate:v79];
          }

          else
          {
            [(__CFString *)v28 setExpirationDate:0];
          }

          goto LABEL_57;
        }

        v51 = [(__CFString *)v28 expirationDate];
        v52 = [v51 isEqual:v79];

        if (v79)
        {

          [(__CFString *)v28 setExpirationDate:v79];
        }

        else
        {
          [(__CFString *)v28 setExpirationDate:0];
        }

        if (v52)
        {
LABEL_57:
          v56 = [(__CFString *)v28 options];
          v57 = v56;
          if (v77)
          {
            if (v56)
            {
              v58 = [(__CFString *)v28 options];
              v59 = [v58 mutableCopy];
            }

            else
            {
              v59 = +[NSMutableDictionary dictionary];
            }

            [v59 setObject:&__kCFBooleanTrue forKeyedSubscript:_UAUserActivityContainsCloudDocsKey];
            if (v75)
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

          if (v56)
          {
            v60 = [(__CFString *)v28 options];
            v61 = _UAUserActivityContainsCloudDocsKey;
            v62 = [v60 objectForKeyedSubscript:_UAUserActivityContainsCloudDocsKey];
            if (v62)
            {

              v63 = _LSUserActivityContainsUnsynchronizedCloudDocsKey;
              goto LABEL_69;
            }

            v66 = [(__CFString *)v28 options];
            v63 = _LSUserActivityContainsUnsynchronizedCloudDocsKey;
            v67 = [v66 objectForKeyedSubscript:_LSUserActivityContainsUnsynchronizedCloudDocsKey];
            v68 = v67 == 0;

            if (!v68)
            {
LABEL_69:
              v69 = [(__CFString *)v28 options];
              v59 = [v69 mutableCopy];

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

          if (v76)
          {
            v71 = [p_isa currentAdvertisableActivity];
            v72 = v71 == v28;

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
        v53 = [p_isa currentAdvertisableActivity];
        v54 = v53 == v28;

        if (v54)
        {
          v55 = [p_isa manager];
          [v55 scheduleUpdatingAdvertisableItems];
        }

        goto LABEL_57;
      }

LABEL_38:
      v40 = [(__CFString *)v28 activityType];
      v41 = [v40 isEqual:NSUserActivityTypeBrowsingWeb];

      if (v41)
      {
        v42 = sub_100001A30(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = [p_isa auditToken];
          v44 = [(__CFString *)v28 uuid];
          v45 = [v44 UUIDString];
          *buf = 138543875;
          v89 = v43;
          v90 = 2114;
          v91 = v45;
          v92 = 2113;
          v93 = v28;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Scheduling an advertising item update, for application %{public}@, because the   changed on a NSUserActivityTypeBrowsingWeb item, %{public}@/%{private}@", buf, 0x20u);
        }

        v46 = [p_isa manager];
        [v46 scheduleUpdatingAdvertisableItems];
      }

      goto LABEL_43;
    }
  }

LABEL_76:

  objc_autoreleasePoolPop(context);
}

- (id)statusString
{
  v3 = [(UAUserActivityClientProcess *)self bundleIdentifier];
  v4 = [(UAAuditToken *)self->_auditToken pid];
  v5 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
  if (v5)
  {
    v44 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
    v43 = [v44 uuid];
    v46 = [v43 UUIDString];
  }

  else
  {
    v46 = @"-";
  }

  v6 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
  v7 = &stru_1000C67D0;
  v47 = v3;
  v50 = v4;
  if (v6)
  {
    v8 = [(UAUserActivityClientProcess *)self dirtyUUIDs];
    v40 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
    [v40 uuid];
    v39 = v41 = v8;
    if ([v8 containsObject:?])
    {
      v7 = @"(dirty) ";
    }
  }

  v45 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
  v9 = [v45 proxiedBundleIdentifier];
  if (v9)
  {
    v38 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
    v37 = [v38 proxiedBundleIdentifier];
    obj = [NSString stringWithFormat:@"proxyAs=%@ ", v37];
  }

  else
  {
    obj = &stru_1000C67D0;
  }

  v10 = [(UAUserActivityClientProcess *)self lastFrontTime];
  if (v10)
  {
    [(UAUserActivityClientProcess *)self lastFrontTime];
    v11 = v42 = v6;
    sub_100009AC0(v11);
    v13 = v12 = v5;
    v14 = [NSString stringWithFormat:@" lastFront=%@", v13];
    v35 = v7;
    v16 = v46;
    v15 = v47;
    v51 = [NSMutableString stringWithFormat:@"%@ pid=%d currentActive=%@%@%@%@", v47, v50, v46, v35, obj, v14];

    v5 = v12;
    v6 = v42;
  }

  else
  {
    v36 = v7;
    v16 = v46;
    v15 = v47;
    v51 = [NSMutableString stringWithFormat:@"%@ pid=%d currentActive=%@%@%@%@", v47, v4, v46, v36, obj, &stru_1000C67D0];
  }

  if (v9)
  {
  }

  if (v6)
  {
  }

  if (v5)
  {
  }

  v17 = [(UAUserActivityClientProcess *)self uniqueIdentifiers];
  if ([v17 count] >= 2)
  {
  }

  else
  {
    v18 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];

    if (v18)
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
        v24 = [(UAUserActivityClientProcess *)self currentAdvertisableActivity];
        if (!v24)
        {
          goto LABEL_30;
        }

        v25 = v24;
        v26 = objc_opt_self();
        v27 = [v26 currentAdvertisableActivity];
        v28 = [v27 uuid];
        v29 = [v23 isEqual:v28];

        if ((v29 & 1) == 0)
        {
LABEL_30:
          v30 = [v23 UUIDString];
          v31 = [(UAUserActivityClientProcess *)self dirtyUUIDs];
          v32 = [v31 containsObject:v23];
          v33 = "";
          if (v32)
          {
            v33 = " (dirty)";
          }

          [v51 appendFormat:@"%@%s ", v30, v33];
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
@interface UAUserActivityClientProcessesController
- (BOOL)addAdditionalUserActivityAdvertisableItems:(id)items;
- (BOOL)clientIsActive:(id)active;
- (BOOL)ifLockScreenIsActive:(id)active visibleBundleIdentifiers:(id)identifiers;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)removeAdditionalUserActivityAdvertisableItems:(id)items;
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)updateCarPlayScreenLayout:(id)layout;
- (BOOL)updateMainScreenLayout:(id)layout;
- (NSArray)userActivityClients;
- (NSSet)additionalUserActivityAdvertisableItems;
- (NSSet)visibleUserActivityClients;
- (UAUserActivityClientProcessesController)initWithManager:(id)manager name:(id)name;
- (double)intervalToDelaySuspensionOfAdvertisingForItem:(id)item;
- (id)advertiseableItemForBundleIdentifier:(id)identifier;
- (id)determineVisibleOrderingForProcessesWithUserActivities:(id)activities previousBundleIDOrdering:(id)ordering;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)items;
- (id)recentEligibleItemsInOrder:(double)order;
- (id)statusString;
- (id)userActivityClientForBundleIdentifier:(id)identifier;
- (id)userActivityClientForPID:(int)d;
- (id)userActivityClientForUUID:(id)d;
- (id)userActivityInfoForUUID:(id)d;
- (void)addUserActivityClient:(id)client;
- (void)dealloc;
- (void)handleAppStateMonitorUpdate:(id)update;
- (void)removeClientActivityClient:(id)client;
@end

@implementation UAUserActivityClientProcessesController

- (NSArray)userActivityClients
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_userActivityClientsByPID allValues];
  objc_sync_exit(selfCopy);

  return allValues;
}

- (id)eligibleAdvertiseableItemsInOrder
{
  v2 = +[NSMutableArray array];
  v3 = +[UAUserActivityDefaults sharedDefaults];
  debugEnablePinging = [v3 debugEnablePinging];

  if (debugEnablePinging)
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    userActivityClients = [(UAUserActivityClientProcessesController *)self userActivityClients];
    v6 = [userActivityClients countByEnumeratingWithState:&v101 objects:v113 count:16];
    if (v6)
    {
      v7 = *v102;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v102 != v7)
          {
            objc_enumerationMutation(userActivityClients);
          }

          v9 = *(*(&v101 + 1) + 8 * i);
          currentAdvertisableActivity = [v9 currentAdvertisableActivity];
          v11 = currentAdvertisableActivity;
          if (currentAdvertisableActivity)
          {
            activityType = [currentAdvertisableActivity activityType];
            v13 = [activityType isEqual:@"com.apple.coreservices.ping"];

            if (v13)
            {
              v14 = sub_100001A30(0);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                currentAdvertisableActivity2 = [v9 currentAdvertisableActivity];
                *buf = 138477827;
                v112 = currentAdvertisableActivity2;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*** FORCING item %{private}@ as the most eligible item, since it's a ping", buf, 0xCu);
              }

              [v2 addObject:v11];
            }
          }
        }

        v6 = [userActivityClients countByEnumeratingWithState:&v101 objects:v113 count:16];
      }

      while (v6);
    }
  }

  v16 = +[NSMutableArray array];
  v17 = +[NSMutableArray array];
  v84 = +[NSMutableDictionary dictionary];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  userActivityClients2 = [(UAUserActivityClientProcessesController *)self userActivityClients];
  v19 = [userActivityClients2 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v19)
  {
    v20 = *v98;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v98 != v20)
        {
          objc_enumerationMutation(userActivityClients2);
        }

        currentAdvertisableActivity3 = [*(*(&v97 + 1) + 8 * j) currentAdvertisableActivity];
        if (([currentAdvertisableActivity3 eligibleToAdvertise] & 1) != 0 || (objc_msgSend(currentAdvertisableActivity3, "proxiedBundleIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, !v24))
        {
          if ([currentAdvertisableActivity3 alwaysPick])
          {
            [v16 addObject:currentAdvertisableActivity3];
          }

          if ([currentAdvertisableActivity3 eligibleInBackground])
          {
            [v17 addObject:currentAdvertisableActivity3];
          }

          proxiedBundleIdentifier = [currentAdvertisableActivity3 proxiedBundleIdentifier];
          if (proxiedBundleIdentifier)
          {
            eligibleToAdvertise = [currentAdvertisableActivity3 eligibleToAdvertise];

            if (eligibleToAdvertise)
            {
              proxiedBundleIdentifier2 = [currentAdvertisableActivity3 proxiedBundleIdentifier];
              [v84 setObject:currentAdvertisableActivity3 forKey:proxiedBundleIdentifier2];
            }
          }
        }
      }

      v19 = [userActivityClients2 countByEnumeratingWithState:&v97 objects:v110 count:16];
    }

    while (v19);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  additionalUserActivityAdvertisableItems = [(UAUserActivityClientProcessesController *)self additionalUserActivityAdvertisableItems];
  v29 = [additionalUserActivityAdvertisableItems countByEnumeratingWithState:&v93 objects:v109 count:16];
  if (v29)
  {
    v30 = *v94;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v94 != v30)
        {
          objc_enumerationMutation(additionalUserActivityAdvertisableItems);
        }

        v32 = *(*(&v93 + 1) + 8 * k);
        if ([v32 eligibleToAdvertise])
        {
          if ([v32 alwaysPick])
          {
            [v16 addObject:v32];
          }

          if ([v32 eligibleInBackground])
          {
            [v17 addObject:v32];
          }
        }
      }

      v29 = [additionalUserActivityAdvertisableItems countByEnumeratingWithState:&v93 objects:v109 count:16];
    }

    while (v29);
  }

  if ([v16 count])
  {
    uAUserActivityAlwaysPickKey = [NSString stringWithFormat:@"options.%@", UAUserActivityAlwaysPickKey];
    v34 = [NSSortDescriptor sortDescriptorWithKey:uAUserActivityAlwaysPickKey ascending:0];
    v108 = v34;
    v35 = [NSArray arrayWithObjects:&v108 count:1];
    [v16 sortUsingDescriptors:v35];

    v36 = sub_100001A30(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v112 = v16;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "eligibleAdvertiseableItemsInOrder: alwaysPickItems=%{private}@", buf, 0xCu);
    }

    [v2 addObjectsFromArray:v16];
  }

  carPlayScreenBundleIdentifiersInOrder = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
  if (!carPlayScreenBundleIdentifiersInOrder)
  {
    goto LABEL_54;
  }

  carPlayScreenBundleIdentifiersInOrder2 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
  firstObject = [carPlayScreenBundleIdentifiersInOrder2 firstObject];
  v40 = firstObject == 0;

  if (v40)
  {
LABEL_54:
    mainScreenBundleIdentifiersInOrder = [(UAUserActivityClientProcessesController *)self mainScreenBundleIdentifiersInOrder];
    firstObject2 = [mainScreenBundleIdentifiersInOrder firstObject];

    if (!firstObject2)
    {
      goto LABEL_74;
    }

    mainScreenBundleIdentifiersInOrder2 = [(UAUserActivityClientProcessesController *)self mainScreenBundleIdentifiersInOrder];
    firstObject3 = [mainScreenBundleIdentifiersInOrder2 firstObject];

    v81 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:firstObject3];
    currentAdvertisableActivity4 = [v81 currentAdvertisableActivity];
    v50 = currentAdvertisableActivity4;
    if (v81 && currentAdvertisableActivity4 && [currentAdvertisableActivity4 eligibleToAdvertise])
    {
      [v2 addObject:v50];
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      userActivityClients3 = [(UAUserActivityClientProcessesController *)self userActivityClients];
      v52 = [userActivityClients3 countByEnumeratingWithState:&v89 objects:v107 count:16];
      if (v52)
      {
        v53 = *v90;
        do
        {
          for (m = 0; m != v52; m = m + 1)
          {
            if (*v90 != v53)
            {
              objc_enumerationMutation(userActivityClients3);
            }

            currentAdvertisableActivity5 = [*(*(&v89 + 1) + 8 * m) currentAdvertisableActivity];

            v50 = currentAdvertisableActivity5;
            if (currentAdvertisableActivity5)
            {
              if ([currentAdvertisableActivity5 eligibleToAdvertise])
              {
                proxiedBundleIdentifier3 = [currentAdvertisableActivity5 proxiedBundleIdentifier];
                v57 = [proxiedBundleIdentifier3 isEqual:firstObject3];

                if (v57)
                {
                  [v2 addObject:v50];
                }
              }
            }
          }

          v52 = [userActivityClients3 countByEnumeratingWithState:&v89 objects:v107 count:16];
        }

        while (v52);
      }
    }

    currentAdvertisableActivity6 = v81;
    goto LABEL_72;
  }

  carPlayScreenBundleIdentifiersInOrder3 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
  firstObject4 = [carPlayScreenBundleIdentifiersInOrder3 firstObject];
  firstObject3 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:firstObject4];

  v43 = firstObject3;
  if (firstObject3)
  {
    currentAdvertisableActivity6 = [firstObject3 currentAdvertisableActivity];
    v45 = currentAdvertisableActivity6;
    if (currentAdvertisableActivity6)
    {
      if ([currentAdvertisableActivity6 eligibleToAdvertise])
      {
        [v2 addObject:v45];
      }

      currentAdvertisableActivity6 = v45;
    }

LABEL_72:

    v43 = firstObject3;
  }

LABEL_74:
  frontBundleID = [(UAUserActivityClientProcessesController *)self frontBundleID];

  if (frontBundleID)
  {
    frontBundleID2 = [(UAUserActivityClientProcessesController *)self frontBundleID];
    v60 = [v84 objectForKeyedSubscript:frontBundleID2];

    if (v60 || ([(UAUserActivityClientProcessesController *)self frontBundleID], v61 = objc_claimAutoreleasedReturnValue(), [(UAUserActivityClientProcessesController *)self advertiseableItemForBundleIdentifier:v61], v60 = objc_claimAutoreleasedReturnValue(), v61, v60))
    {
      if ([v60 eligibleToAdvertise])
      {
        [v2 addObject:v60];
      }
    }
  }

  if ([v17 count])
  {
    uAUserActivityEligibleEvenWhenInBackgroundKey = [NSString stringWithFormat:@"options.%@", UAUserActivityEligibleEvenWhenInBackgroundKey];
    v63 = [NSSortDescriptor sortDescriptorWithKey:uAUserActivityEligibleEvenWhenInBackgroundKey ascending:0];
    v106 = v63;
    v64 = [NSArray arrayWithObjects:&v106 count:1];
    [v17 sortUsingDescriptors:v64];

    v65 = sub_100001A30(0);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = [v17 description];
      v67 = sub_100009684(v66);
      *buf = 138477827;
      v112 = v67;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "-- Adding in eligibleItemsWhenInBackground items, %{private}@. ", buf, 0xCu);
    }

    [v2 addObjectsFromArray:v17];
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  additionalUserActivityAdvertisableItems2 = [(UAUserActivityClientProcessesController *)self additionalUserActivityAdvertisableItems];
  v69 = [additionalUserActivityAdvertisableItems2 countByEnumeratingWithState:&v85 objects:v105 count:16];
  if (v69)
  {
    v70 = *v86;
    do
    {
      for (n = 0; n != v69; n = n + 1)
      {
        if (*v86 != v70)
        {
          objc_enumerationMutation(additionalUserActivityAdvertisableItems2);
        }

        v72 = *(*(&v85 + 1) + 8 * n);
        if (([v2 containsObject:v72] & 1) == 0)
        {
          [v2 addObject:v72];
        }
      }

      v69 = [additionalUserActivityAdvertisableItems2 countByEnumeratingWithState:&v85 objects:v105 count:16];
    }

    while (v69);
  }

  if (v2 && [v2 count])
  {
    v73 = sub_100001A30(0);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      v74 = [v2 description];
      v75 = sub_100009684(v74);
      *buf = 138543362;
      v112 = v75;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "eligibleAdvertiseableItemsInOrder: result=%{public}@", buf, 0xCu);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v77 = [v2 copy];
  DEBUG_lastEligibleItems = selfCopy->_DEBUG_lastEligibleItems;
  selfCopy->_DEBUG_lastEligibleItems = v77;

  objc_sync_exit(selfCopy);
  if (v2)
  {
    v79 = [v2 copy];
  }

  else
  {
    v79 = 0;
  }

  return v79;
}

- (NSSet)additionalUserActivityAdvertisableItems
{
  v3 = self->_additionalUserActivityAdvertisableItems;
  objc_sync_enter(v3);
  v4 = [(NSMutableSet *)self->_additionalUserActivityAdvertisableItems copy];
  objc_sync_exit(v3);

  return v4;
}

- (id)items
{
  v3 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  userActivityClients = [(UAUserActivityClientProcessesController *)self userActivityClients];
  v5 = [userActivityClients countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(userActivityClients);
        }

        currentAdvertisableActivity = [*(*(&v21 + 1) + 8 * i) currentAdvertisableActivity];
        if (currentAdvertisableActivity)
        {
          [v3 addObject:currentAdvertisableActivity];
        }
      }

      v6 = [userActivityClients countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  additionalUserActivityAdvertisableItems = [(UAUserActivityClientProcessesController *)self additionalUserActivityAdvertisableItems];
  v11 = [additionalUserActivityAdvertisableItems countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(additionalUserActivityAdvertisableItems);
        }

        [v3 addObject:*(*(&v17 + 1) + 8 * j)];
      }

      v12 = [additionalUserActivityAdvertisableItems countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = [v3 copy];

  return v15;
}

- (UAUserActivityClientProcessesController)initWithManager:(id)manager name:(id)name
{
  managerCopy = manager;
  nameCopy = name;
  v43.receiver = self;
  v43.super_class = UAUserActivityClientProcessesController;
  v8 = [(UAClientController *)&v43 initWithManager:managerCopy name:nameCopy];
  if (v8)
  {
    v9 = [NSXPCListener alloc];
    v10 = UActivityCreationXPCServiceName();
    v11 = [v9 initWithMachServiceName:v10];
    activityManagerListener = v8->_activityManagerListener;
    v8->_activityManagerListener = v11;

    [(NSXPCListener *)v8->_activityManagerListener setDelegate:v8];
    v13 = objc_alloc_init(NSMutableDictionary);
    userActivityClientsByPID = v8->_userActivityClientsByPID;
    v8->_userActivityClientsByPID = v13;

    v15 = objc_alloc_init(NSMutableSet);
    clients = v8->_clients;
    v8->_clients = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    userActivityClientsByBundleID = v8->_userActivityClientsByBundleID;
    v8->_userActivityClientsByBundleID = v17;

    manager = [(UACornerActionManagerHandler *)v8 manager];
    mainDispatchQ = [manager mainDispatchQ];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10004205C;
    v41[3] = &unk_1000C4CC0;
    v21 = v8;
    v42 = v21;
    v22 = [UADispatchScheduler dispatchScheduler:@"layoutUpdate" frequency:mainDispatchQ queue:v41 block:0.0];
    layoutUpdateScheduler = v21->_layoutUpdateScheduler;
    v21->_layoutUpdateScheduler = v22;

    v24 = objc_alloc_init(NSMutableSet);
    visibleUserActivityClients = v21->_visibleUserActivityClients;
    v21->_visibleUserActivityClients = v24;

    appStateMonitor = [(UAUserActivityClientProcessesController *)v21 appStateMonitor];

    if (!appStateMonitor)
    {
      v27 = objc_alloc_init(BKSApplicationStateMonitor);
      [(UAUserActivityClientProcessesController *)v21 setAppStateMonitor:v27];

      objc_initWeak(&location, v21);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100042104;
      v38[3] = &unk_1000C5B58;
      objc_copyWeak(&v39, &location);
      appStateMonitor2 = [(UAUserActivityClientProcessesController *)v21 appStateMonitor];
      [appStateMonitor2 setHandler:v38];

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    v29 = +[NSMutableSet set];
    additionalUserActivityAdvertisableItems = v21->_additionalUserActivityAdvertisableItems;
    v21->_additionalUserActivityAdvertisableItems = v29;

    v31 = [UALocalItemReceiver alloc];
    manager2 = [(UACornerActionManagerHandler *)v21 manager];
    v33 = [(UALocalItemReceiver *)v31 initWithManager:manager2 controller:v21];
    localReceiver = v21->_localReceiver;
    v21->_localReceiver = v33;

    manager3 = [(UACornerActionManagerHandler *)v21 manager];
    localReceiver = [(UAUserActivityClientProcessesController *)v21 localReceiver];
    [manager3 addReceiver:localReceiver];
  }

  return v8;
}

- (void)dealloc
{
  manager = [(UACornerActionManagerHandler *)self manager];
  localReceiver = [(UAUserActivityClientProcessesController *)self localReceiver];
  [manager removeReceiver:localReceiver];

  mainDisplayLayoutMonitor = [(UAUserActivityClientProcessesController *)self mainDisplayLayoutMonitor];

  if (mainDisplayLayoutMonitor)
  {
    mainDisplayLayoutMonitor2 = [(UAUserActivityClientProcessesController *)self mainDisplayLayoutMonitor];
    [mainDisplayLayoutMonitor2 invalidate];

    mainDisplayLayoutMonitor = self->_mainDisplayLayoutMonitor;
    self->_mainDisplayLayoutMonitor = 0;
  }

  carPlayDisplayLayoutMonitor = [(UAUserActivityClientProcessesController *)self carPlayDisplayLayoutMonitor];

  if (carPlayDisplayLayoutMonitor)
  {
    carPlayDisplayLayoutMonitor2 = [(UAUserActivityClientProcessesController *)self carPlayDisplayLayoutMonitor];
    [carPlayDisplayLayoutMonitor2 invalidate];

    carPlayDisplayLayoutMonitor = self->_carPlayDisplayLayoutMonitor;
    self->_carPlayDisplayLayoutMonitor = 0;
  }

  v11.receiver = self;
  v11.super_class = UAUserActivityClientProcessesController;
  [(UAUserActivityClientProcessesController *)&v11 dealloc];
}

- (BOOL)suspend
{
  v6.receiver = self;
  v6.super_class = UAUserActivityClientProcessesController;
  suspend = [(UACornerActionManagerHandler *)&v6 suspend];
  if (suspend)
  {
    [(NSXPCListener *)self->_activityManagerListener suspend];
    localReceiver = [(UAUserActivityClientProcessesController *)self localReceiver];
    [localReceiver suspend];
  }

  return suspend;
}

- (BOOL)resume
{
  v23.receiver = self;
  v23.super_class = UAUserActivityClientProcessesController;
  resume = [(UACornerActionManagerHandler *)&v23 resume];
  if (resume)
  {
    localReceiver = [(UAUserActivityClientProcessesController *)self localReceiver];
    [localReceiver resume];

    [(NSXPCListener *)self->_activityManagerListener resume];
    mainDisplayLayoutMonitor = [(UAUserActivityClientProcessesController *)self mainDisplayLayoutMonitor];

    if (!mainDisplayLayoutMonitor)
    {
      v6 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
      [v6 setNeedsUserInteractivePriority:1];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100001950;
      v22[3] = &unk_1000C5BA8;
      v22[4] = self;
      [v6 setTransitionHandler:v22];
      v7 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v6];
      mainDisplayLayoutMonitor = self->_mainDisplayLayoutMonitor;
      self->_mainDisplayLayoutMonitor = v7;

      manager = [(UACornerActionManagerHandler *)self manager];
      mainDispatchQ = [manager mainDispatchQ];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000426A8;
      block[3] = &unk_1000C4CC0;
      block[4] = self;
      dispatch_async(mainDispatchQ, block);
    }

    carPlayDisplayLayoutMonitor = [(UAUserActivityClientProcessesController *)self carPlayDisplayLayoutMonitor];

    if (!carPlayDisplayLayoutMonitor && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v12 = +[FBSDisplayLayoutMonitorConfiguration configurationForCarDisplayMonitor];
      v13 = v12;
      if (v12)
      {
        [v12 setNeedsUserInteractivePriority:1];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000095B0;
        v20[3] = &unk_1000C5BA8;
        v20[4] = self;
        [v13 setTransitionHandler:v20];
        v14 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v13];
        carPlayDisplayLayoutMonitor = self->_carPlayDisplayLayoutMonitor;
        self->_carPlayDisplayLayoutMonitor = v14;

        manager2 = [(UACornerActionManagerHandler *)self manager];
        mainDispatchQ2 = [manager2 mainDispatchQ];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100042710;
        v19[3] = &unk_1000C4CC0;
        v19[4] = self;
        dispatch_async(mainDispatchQ2, v19);
      }
    }
  }

  return resume;
}

- (BOOL)updateMainScreenLayout:(id)layout
{
  layoutCopy = layout;
  mainScreenBundleIdentifiersInOrder = [(UAUserActivityClientProcessesController *)self mainScreenBundleIdentifiersInOrder];
  v6 = [(UAUserActivityClientProcessesController *)self ifLockScreenIsActive:layoutCopy visibleBundleIdentifiers:mainScreenBundleIdentifiersInOrder];

  mainScreenBundleIdentifiersInOrder2 = [(UAUserActivityClientProcessesController *)self mainScreenBundleIdentifiersInOrder];
  v8 = mainScreenBundleIdentifiersInOrder2;
  if ((v6 & 1) == 0)
  {
    v9 = [(UAUserActivityClientProcessesController *)self determineVisibleOrderingForProcessesWithUserActivities:layoutCopy previousBundleIDOrdering:mainScreenBundleIdentifiersInOrder2];
    v10 = v9;
    if (v8 && v9)
    {
      if (([v9 isEqual:v8] & 1) == 0)
      {
LABEL_7:
        v11 = sub_100001A30(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "LAYOUT: Updating advertisement because the list of main screen visible bundle identifiers changed", buf, 2u);
        }

        mainScreenBundleIdentifiersInOrder = self->_mainScreenBundleIdentifiersInOrder;
        self->_mainScreenBundleIdentifiersInOrder = v10;

        goto LABEL_16;
      }
    }

    else if (v8 | v9)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (![(NSArray *)mainScreenBundleIdentifiersInOrder2 count])
  {
    carPlayScreenBundleIdentifiersInOrder = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
    v14 = [carPlayScreenBundleIdentifiersInOrder count];

    if (v14)
    {
      goto LABEL_13;
    }

    v21 = self->_mainScreenBundleIdentifiersInOrder;
    self->_mainScreenBundleIdentifiersInOrder = 0;

LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

LABEL_13:
  v15 = sub_100001A30(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "LAYOUT: Updating advertisement because the lock screen is present and there were previous main screen bundles.", v23, 2u);
  }

  v8 = self->_mainScreenBundleIdentifiersInOrder;
  self->_mainScreenBundleIdentifiersInOrder = 0;
LABEL_16:

  manager = [(UACornerActionManagerHandler *)self manager];
  [manager scheduleUpdatingAdvertisableItems:0.0];

  v17 = +[UAUserActivityDefaults sharedDefaults];
  debugCrossoverAllActivities = [v17 debugCrossoverAllActivities];

  if (debugCrossoverAllActivities)
  {
    manager2 = [(UACornerActionManagerHandler *)self manager];
    [manager2 scheduleBestAppDetermination];
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (BOOL)updateCarPlayScreenLayout:(id)layout
{
  layoutCopy = layout;
  carPlayScreenBundleIdentifiersInOrder = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
  v6 = [(UAUserActivityClientProcessesController *)self determineVisibleOrderingForProcessesWithUserActivities:layoutCopy previousBundleIDOrdering:carPlayScreenBundleIdentifiersInOrder];

  if (v6 && ![v6 isEqual:carPlayScreenBundleIdentifiersInOrder] || carPlayScreenBundleIdentifiersInOrder && objc_msgSend(carPlayScreenBundleIdentifiersInOrder, "count"))
  {
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "LAYOUT: Updating advertisement because the list of carplay screen visible bundle identifiers changed", v14, 2u);
    }

    [(UAUserActivityClientProcessesController *)self setCarPlayScreenBundleIdentifiersInOrder:v6];
    manager = [(UACornerActionManagerHandler *)self manager];
    [manager scheduleUpdatingAdvertisableItems:0.0];

    v9 = +[UAUserActivityDefaults sharedDefaults];
    debugCrossoverAllActivities = [v9 debugCrossoverAllActivities];

    if (debugCrossoverAllActivities)
    {
      manager2 = [(UACornerActionManagerHandler *)self manager];
      [manager2 scheduleBestAppDetermination];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)intervalToDelaySuspensionOfAdvertisingForItem:(id)item
{
  carPlayScreenBundleIdentifiersInOrder = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
  v5 = 0.0;
  if (carPlayScreenBundleIdentifiersInOrder)
  {
    v6 = carPlayScreenBundleIdentifiersInOrder;
    carPlayScreenBundleIdentifiersInOrder2 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
    v8 = [carPlayScreenBundleIdentifiersInOrder2 count];

    if (v8)
    {
      carPlayScreenBundleIdentifiersInOrder3 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
      firstObject = [carPlayScreenBundleIdentifiersInOrder3 firstObject];

      if (firstObject)
      {
        v11 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:firstObject];
        if (v11)
        {
          v5 = 1.0e99;
        }

        else
        {
          v5 = 0.0;
        }
      }
    }
  }

  return v5;
}

- (id)determineVisibleOrderingForProcessesWithUserActivities:(id)activities previousBundleIDOrdering:(id)ordering
{
  activitiesCopy = activities;
  orderingCopy = ordering;
  selfCopy = self;
  manager = [(UACornerActionManagerHandler *)self manager];
  mainDispatchQ = [manager mainDispatchQ];
  dispatch_assert_queue_V2(mainDispatchQ);

  v9 = +[NSMutableArray array];
  elements = [activitiesCopy elements];
  v11 = [NSMutableArray arrayWithArray:elements];

  [v11 sortUsingComparator:&stru_1000C5BE8];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v11;
  v47 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v47)
  {
    v46 = *v58;
    do
    {
      for (i = 0; i != v47; i = i + 1)
      {
        if (*v58 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v57 + 1) + 8 * i);
        if ([v12 conformsToProtocol:&OBJC_PROTOCOL___SBSDisplayLayoutElement])
        {
          layoutRole = [v12 layoutRole];
          v14 = !SBSDisplayLayoutRoleIsDefined() || layoutRole > 7;
          if (v14 || ((1 << layoutRole) & 0xDE) == 0)
          {
            continue;
          }
        }

        if ([v12 conformsToProtocol:&OBJC_PROTOCOL___FBSDisplayLayoutElement])
        {
          bundleIdentifier = [v12 bundleIdentifier];

          if (bundleIdentifier)
          {
            bundleIdentifier2 = [v12 bundleIdentifier];
            v45 = [(UAUserActivityClientProcessesController *)selfCopy userActivityClientForBundleIdentifier:bundleIdentifier2];

            if (v45)
            {
              v18 = sub_100001A30(0);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543618;
                v64 = v12;
                v65 = 2114;
                v66 = v45;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "LAYOUT: Found %{public}@/%{public}@ as active layout", buf, 0x16u);
              }

              bundleIdentifier3 = [v12 bundleIdentifier];
              [v9 addObject:bundleIdentifier3];
            }

            else
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              bundleIdentifier3 = [(UAUserActivityClientProcessesController *)selfCopy userActivityClients];
              v20 = [bundleIdentifier3 countByEnumeratingWithState:&v53 objects:v62 count:16];
              if (v20)
              {
                v21 = *v54;
                do
                {
                  for (j = 0; j != v20; j = j + 1)
                  {
                    if (*v54 != v21)
                    {
                      objc_enumerationMutation(bundleIdentifier3);
                    }

                    currentAdvertisableActivity = [*(*(&v53 + 1) + 8 * j) currentAdvertisableActivity];
                    proxiedBundleIdentifier = [currentAdvertisableActivity proxiedBundleIdentifier];
                    bundleIdentifier4 = [v12 bundleIdentifier];
                    v4 = [proxiedBundleIdentifier isEqual:bundleIdentifier4];

                    if (v4)
                    {
                      v26 = sub_100001A30(0);
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138543618;
                        v64 = v12;
                        v65 = 2114;
                        v66 = 0;
                        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "LAYOUT: Found %{public}@/%{public}@ as proxy for active layout", buf, 0x16u);
                      }

                      bundleIdentifier5 = [v12 bundleIdentifier];
                      [v9 addObject:bundleIdentifier5];
                    }
                  }

                  v20 = [bundleIdentifier3 countByEnumeratingWithState:&v53 objects:v62 count:16];
                }

                while (v20);
              }
            }
          }
        }
      }

      v47 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v47);
  }

  v28 = selfCopy;
  objc_sync_enter(v28);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v29 = orderingCopy;
  v30 = [v29 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v30)
  {
    v31 = *v50;
    do
    {
      for (k = 0; k != v30; k = k + 1)
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = [(UAUserActivityClientProcessesController *)v28 userActivityClientForBundleIdentifier:*(*(&v49 + 1) + 8 * k)];
        v34 = v33;
        if (v33)
        {
          bundleIdentifier6 = [v33 bundleIdentifier];
          v36 = [v9 containsObject:bundleIdentifier6];

          if ((v36 & 1) == 0)
          {
            currentAdvertisableActivity2 = [v34 currentAdvertisableActivity];
            if (currentAdvertisableActivity2)
            {
              v4 = +[NSDate date];
              v38 = v4;
            }

            else
            {
              v38 = 0;
            }

            [v34 setLastFrontTime:v38];
            if (currentAdvertisableActivity2)
            {
            }
          }
        }
      }

      v30 = [v29 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v30);
  }

  objc_sync_exit(v28);
  v39 = [v9 copy];

  return v39;
}

- (BOOL)ifLockScreenIsActive:(id)active visibleBundleIdentifiers:(id)identifiers
{
  activeCopy = active;
  identifiersCopy = identifiers;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  elements = [activeCopy elements];
  v8 = [elements countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v45 = activeCopy;
    v10 = *v52;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v52 != v10)
      {
        objc_enumerationMutation(elements);
      }

      v12 = *(*(&v51 + 1) + 8 * v11);
      if ([v12 conformsToProtocol:&OBJC_PROTOCOL___FBSDisplayLayoutElement])
      {
        bundleIdentifier = [v12 bundleIdentifier];
        if (bundleIdentifier)
        {
          v14 = bundleIdentifier;
          bundleIdentifier2 = [v12 bundleIdentifier];
          v16 = [bundleIdentifier2 isEqual:@"com.apple.lock-screen"];

          if (v16)
          {
            break;
          }
        }
      }

      if (v9 == ++v11)
      {
        v9 = [elements countByEnumeratingWithState:&v51 objects:v58 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

LABEL_38:
        self = selfCopy;
        activeCopy = v45;
        goto LABEL_39;
      }
    }

    v17 = sub_100001A30(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "LOCKSCREEN: New layout contains modal lock screen.", buf, 2u);
    }

    v18 = v12;
    self = selfCopy;
    activeCopy = v45;
    if (!v18)
    {
      goto LABEL_40;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    elements = [v45 elements];
    v19 = [elements countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v48;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v48 != v21)
          {
            objc_enumerationMutation(elements);
          }

          v23 = *(*(&v47 + 1) + 8 * i);
          v24 = [v23 conformsToProtocol:&OBJC_PROTOCOL___FBSDisplayLayoutElement];
          if (v23 != v18 && v24 != 0)
          {
            level = [v23 level];
            if (level >= [v18 level])
            {
              bundleIdentifier3 = [v23 bundleIdentifier];
              if (bundleIdentifier3)
              {
                v28 = bundleIdentifier3;
                bundleIdentifier4 = [v23 bundleIdentifier];
                v30 = [identifiersCopy containsObject:bundleIdentifier4];

                if (v30)
                {

                  v41 = sub_100001A30(0);
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v56 = v23;
                    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "LOCKSCREEN: Ignoring lock-screen element because %{public}@ is at or above.", buf, 0xCu);
                  }

                  goto LABEL_38;
                }
              }
            }
          }
        }

        v20 = [elements countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    if (![identifiersCopy count])
    {
      [(UAUserActivityClientProcessesController *)selfCopy setIgnoreLockScreenUntil:0];

      v40 = 0;
      activeCopy = v45;
      goto LABEL_43;
    }

    ignoreLockScreenUntil = [(UAUserActivityClientProcessesController *)selfCopy ignoreLockScreenUntil];
    activeCopy = v45;
    if (ignoreLockScreenUntil)
    {
      v32 = ignoreLockScreenUntil;
      ignoreLockScreenUntil2 = [(UAUserActivityClientProcessesController *)selfCopy ignoreLockScreenUntil];
      v34 = +[NSDate date];
      v35 = [ignoreLockScreenUntil2 compare:v34];

      if (v35 == -1)
      {
        [(UAUserActivityClientProcessesController *)selfCopy setIgnoreLockScreenUntil:0];

        goto LABEL_42;
      }
    }

    ignoreLockScreenUntil3 = [(UAUserActivityClientProcessesController *)selfCopy ignoreLockScreenUntil];

    if (!ignoreLockScreenUntil3)
    {
      v37 = [NSDate dateWithTimeIntervalSinceNow:8.0];
      [(UAUserActivityClientProcessesController *)selfCopy setIgnoreLockScreenUntil:v37];
    }

    layoutUpdateScheduler = [(UAUserActivityClientProcessesController *)selfCopy layoutUpdateScheduler];
    ignoreLockScreenUntil4 = [(UAUserActivityClientProcessesController *)selfCopy ignoreLockScreenUntil];
    [layoutUpdateScheduler scheduleAt:ignoreLockScreenUntil4];

    v40 = 1;
  }

  else
  {
LABEL_39:

LABEL_40:
    ignoreLockScreenUntil5 = [(UAUserActivityClientProcessesController *)self ignoreLockScreenUntil];

    if (ignoreLockScreenUntil5)
    {
      [(UAUserActivityClientProcessesController *)self setIgnoreLockScreenUntil:0];
    }

LABEL_42:
    v40 = 0;
  }

LABEL_43:

  return v40;
}

- (void)addUserActivityClient:(id)client
{
  clientCopy = client;
  v5 = clientCopy;
  if (clientCopy)
  {
    auditToken = [clientCopy auditToken];
    v7 = [auditToken pid];

    if (v7 >= 1)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v9 = sub_100001A30(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        auditToken2 = [v5 auditToken];
        bundleIdentifier = [v5 bundleIdentifier];
        v19 = 138478339;
        v20 = v5;
        v21 = 2114;
        v22 = auditToken2;
        v23 = 2113;
        v24 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Adding client %{private}@, %{public}@, bundleID=%{private}@ to known userActivityClients.", &v19, 0x20u);
      }

      userActivityClientsByPID = selfCopy->_userActivityClientsByPID;
      auditToken3 = [v5 auditToken];
      v14 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [auditToken3 pid]);
      [(NSMutableDictionary *)userActivityClientsByPID setObject:v5 forKey:v14];

      bundleIdentifier2 = [v5 bundleIdentifier];

      if (bundleIdentifier2)
      {
        userActivityClientsByBundleID = selfCopy->_userActivityClientsByBundleID;
        bundleIdentifier3 = [v5 bundleIdentifier];
        [(NSMutableDictionary *)userActivityClientsByBundleID setObject:v5 forKey:bundleIdentifier3];
      }

      layoutUpdateScheduler = [(UAUserActivityClientProcessesController *)selfCopy layoutUpdateScheduler];
      [layoutUpdateScheduler scheduleNext:0.0];

      objc_sync_exit(selfCopy);
    }
  }
}

- (BOOL)clientIsActive:(id)active
{
  activeCopy = active;
  v5 = activeCopy;
  if (activeCopy)
  {
    bundleIdentifier = [activeCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      carPlayScreenBundleIdentifiersInOrder = [(UAUserActivityClientProcessesController *)selfCopy carPlayScreenBundleIdentifiersInOrder];
      if (carPlayScreenBundleIdentifiersInOrder && (-[UAUserActivityClientProcessesController carPlayScreenBundleIdentifiersInOrder](selfCopy, "carPlayScreenBundleIdentifiersInOrder"), v9 = objc_claimAutoreleasedReturnValue(), [v9 firstObject], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, carPlayScreenBundleIdentifiersInOrder, v10))
      {
        carPlayScreenBundleIdentifiersInOrder2 = [(UAUserActivityClientProcessesController *)selfCopy carPlayScreenBundleIdentifiersInOrder];
        firstObject = [carPlayScreenBundleIdentifiersInOrder2 firstObject];
        bundleIdentifier2 = [v5 bundleIdentifier];
        v14 = [firstObject isEqual:bundleIdentifier2];
      }

      else
      {
        mainScreenBundleIdentifiersInOrder = [(UAUserActivityClientProcessesController *)selfCopy mainScreenBundleIdentifiersInOrder];

        if (!mainScreenBundleIdentifiersInOrder)
        {
          v15 = 0;
          goto LABEL_11;
        }

        carPlayScreenBundleIdentifiersInOrder2 = [v5 bundleIdentifier];
        firstObject = [(UAUserActivityClientProcessesController *)selfCopy mainScreenBundleIdentifiersInOrder];
        bundleIdentifier2 = [firstObject firstObject];
        v14 = [carPlayScreenBundleIdentifiersInOrder2 isEqual:bundleIdentifier2];
      }

      v15 = v14;

LABEL_11:
      objc_sync_exit(selfCopy);

      goto LABEL_12;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)userActivityInfoForUUID:(id)d
{
  dCopy = d;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  userActivityClients = [(UAUserActivityClientProcessesController *)self userActivityClients];
  v6 = [userActivityClients countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(userActivityClients);
        }

        v10 = [*(*(&v24 + 1) + 8 * i) userActivityAdvertisableItemByUUID:dCopy];
        if (v10)
        {
LABEL_19:
          v18 = v10;
          goto LABEL_20;
        }
      }

      v7 = [userActivityClients countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  userActivityClients = [(UAUserActivityClientProcessesController *)self additionalUserActivityAdvertisableItems];
  v11 = [userActivityClients countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    while (2)
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(userActivityClients);
        }

        v15 = *(*(&v20 + 1) + 8 * j);
        uuid = [v15 uuid];
        v17 = [uuid isEqual:dCopy];

        if (v17)
        {
          v10 = v15;
          goto LABEL_19;
        }
      }

      v12 = [userActivityClients countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_20:

  return v18;
}

- (NSSet)visibleUserActivityClients
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = selfCopy->_mainScreenBundleIdentifiersInOrder;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(UAUserActivityClientProcessesController *)selfCopy userActivityClientForBundleIdentifier:*(*(&v20 + 1) + 8 * i)];
        if (v8)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  carPlayScreenBundleIdentifiersInOrder = [(UAUserActivityClientProcessesController *)selfCopy carPlayScreenBundleIdentifiersInOrder];
  v10 = [carPlayScreenBundleIdentifiersInOrder countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(carPlayScreenBundleIdentifiersInOrder);
        }

        v13 = [(UAUserActivityClientProcessesController *)selfCopy userActivityClientForBundleIdentifier:*(*(&v16 + 1) + 8 * j)];
        if (v13)
        {
          [v3 addObject:v13];
        }
      }

      v10 = [carPlayScreenBundleIdentifiersInOrder countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = [v3 copy];
  objc_sync_exit(selfCopy);

  return v14;
}

- (id)userActivityClientForUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    userActivityClients = [(UAUserActivityClientProcessesController *)selfCopy userActivityClients];
    v7 = [userActivityClients countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(userActivityClients);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          uniqueIdentifiers = [v10 uniqueIdentifiers];
          v12 = [uniqueIdentifiers containsObject:dCopy];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [userActivityClients countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)userActivityClientForPID:(int)d
{
  if (d < 2)
  {
    v7 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    userActivityClientsByPID = selfCopy->_userActivityClientsByPID;
    v6 = [NSNumber numberWithLong:d];
    v7 = [(NSMutableDictionary *)userActivityClientsByPID objectForKey:v6];

    objc_sync_exit(selfCopy);
  }

  return v7;
}

- (BOOL)addAdditionalUserActivityAdvertisableItems:(id)items
{
  itemsCopy = items;
  if (itemsCopy)
  {
    v5 = self->_additionalUserActivityAdvertisableItems;
    objc_sync_enter(v5);
    v6 = [(NSMutableSet *)self->_additionalUserActivityAdvertisableItems containsObject:itemsCopy];
    [(NSMutableSet *)self->_additionalUserActivityAdvertisableItems addObject:itemsCopy];
    v7 = v6 ^ 1;
    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)removeAdditionalUserActivityAdvertisableItems:(id)items
{
  itemsCopy = items;
  if (itemsCopy)
  {
    v5 = self->_additionalUserActivityAdvertisableItems;
    objc_sync_enter(v5);
    v6 = [(NSMutableSet *)self->_additionalUserActivityAdvertisableItems containsObject:itemsCopy];
    [(NSMutableSet *)self->_additionalUserActivityAdvertisableItems removeObject:itemsCopy];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)userActivityClientForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_userActivityClientsByBundleID objectForKey:identifierCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeClientActivityClient:(id)client
{
  clientCopy = client;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    auditToken = [clientCopy auditToken];
    v38 = 138478083;
    v39 = clientCopy;
    v40 = 2114;
    v41 = auditToken;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing client %{private}@, application %{public}@, from known userActivityClients.", &v38, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentAdvertisableActivity = [clientCopy currentAdvertisableActivity];
  if (currentAdvertisableActivity)
  {
    currentAdvertisableActivity2 = [clientCopy currentAdvertisableActivity];
    options = [currentAdvertisableActivity2 options];
    v11 = [options objectForKeyedSubscript:@"LSLivePastProcessExit"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      v13 = sub_100001A30(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        currentAdvertisableActivity3 = [clientCopy currentAdvertisableActivity];
        uuid = [currentAdvertisableActivity3 uuid];
        uUIDString = [uuid UUIDString];
        currentAdvertisableActivity4 = [clientCopy currentAdvertisableActivity];
        auditToken2 = [clientCopy auditToken];
        v38 = 138543875;
        v39 = uUIDString;
        v40 = 2113;
        v41 = currentAdvertisableActivity4;
        v42 = 2114;
        v43 = auditToken2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Moving 'LSLivePastProcessExit' activity %{public}@/%{private}@ from process %{public}@ into additionalUserActivityAdvertisableItems", &v38, 0x20u);
      }

      currentAdvertisableActivity5 = [clientCopy currentAdvertisableActivity];
      [(UAUserActivityClientProcessesController *)selfCopy addAdditionalUserActivityAdvertisableItems:currentAdvertisableActivity5];
    }
  }

  auditToken3 = [clientCopy auditToken];
  v21 = [auditToken3 pid] > 0;

  if (v21)
  {
    v22 = sub_100001A30(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      auditToken4 = [clientCopy auditToken];
      v38 = 138543362;
      v39 = auditToken4;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Removing client %{public}@ from _userActivityClientsByPID", &v38, 0xCu);
    }

    userActivityClientsByPID = selfCopy->_userActivityClientsByPID;
    auditToken5 = [clientCopy auditToken];
    v26 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [auditToken5 pid]);
    [(NSMutableDictionary *)userActivityClientsByPID removeObjectForKey:v26];
  }

  bundleIdentifier = [clientCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    v28 = sub_100001A30(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      bundleIdentifier2 = [clientCopy bundleIdentifier];
      v38 = 138477827;
      v39 = bundleIdentifier2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Removing client %{private}@ from _userActivityClientsByBundleIdentifier", &v38, 0xCu);
    }

    userActivityClientsByBundleID = selfCopy->_userActivityClientsByBundleID;
    bundleIdentifier3 = [clientCopy bundleIdentifier];
    [(NSMutableDictionary *)userActivityClientsByBundleID removeObjectForKey:bundleIdentifier3];
  }

  [(NSMutableSet *)selfCopy->_visibleUserActivityClients removeObject:clientCopy];
  [(NSMutableSet *)selfCopy->_clients removeObject:clientCopy];
  proxiedClients = [(UAUserActivityClientProcessesController *)selfCopy proxiedClients];

  if (proxiedClients)
  {
    proxiedClients2 = [(UAUserActivityClientProcessesController *)selfCopy proxiedClients];
    uuid2 = [clientCopy uuid];
    [proxiedClients2 removeObjectForKey:uuid2];
  }

  layoutUpdateScheduler = [(UAUserActivityClientProcessesController *)selfCopy layoutUpdateScheduler];
  [layoutUpdateScheduler scheduleNext:0.01];

  manager = [(UACornerActionManagerHandler *)selfCopy manager];
  [manager scheduleUpdatingAdvertisableItems:0.1];

  manager2 = [(UACornerActionManagerHandler *)selfCopy manager];
  [manager2 processWasRemoved];

  objc_sync_exit(selfCopy);
}

- (void)handleAppStateMonitorUpdate:(id)update
{
  updateCopy = update;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [updateCopy objectForKey:BKSApplicationStateKey];
    integerValue = [v6 integerValue];
    v8 = [updateCopy description];
    v9 = sub_100009684(v8);
    *buf = 134218243;
    v56 = integerValue;
    v57 = 2113;
    v58 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "MAKEFRONT: handleAppStateMonitorUpdate:%ld %{private}@", buf, 0x16u);
  }

  if (updateCopy)
  {
    v10 = [updateCopy objectForKey:BKSApplicationStateDisplayIDKey];
    v11 = [updateCopy objectForKey:BKSApplicationStateAppIsFrontmostKey];
    bOOLValue = [v11 BOOLValue];

    v13 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:v10];
    if (v10)
    {
      if (bOOLValue)
      {
        if (v13)
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          [(NSMutableSet *)selfCopy->_visibleUserActivityClients addObject:v13];
          objc_sync_exit(selfCopy);

          frontBundleID = [(UAUserActivityClientProcessesController *)selfCopy frontBundleID];
          v54 = [v10 isEqual:frontBundleID];

          bundleIdentifier = [v13 bundleIdentifier];
          [(UAUserActivityClientProcessesController *)selfCopy setFrontBundleID:bundleIdentifier];

          v17 = sub_100001A30(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            bundleIdentifier2 = [v13 bundleIdentifier];
            auditToken = [v13 auditToken];
            v20 = auditToken;
            v21 = " and possibly change advertisement.";
            *buf = 138543874;
            v56 = bundleIdentifier2;
            if (v54)
            {
              v21 = "";
            }

            v57 = 2114;
            v58 = auditToken;
            v59 = 2080;
            v60 = v21;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "MAKEFRONT: %{public}@/%{public}@ %s", buf, 0x20u);
          }

          bundleIdentifier3 = [v13 bundleIdentifier];
          currentAdvertisableActivity = [v13 currentAdvertisableActivity];
          uuid = [currentAdvertisableActivity uuid];
          uUIDString = [uuid UUIDString];
          v26 = uUIDString;
          v27 = "(update)";
          if (v54)
          {
            v27 = "";
          }

          v28 = [NSString stringWithFormat:@"APP:%@, %@ %s", bundleIdentifier3, uUIDString, v27];
          [ActivityManagerDebuggingManager appendRecentAction:v28];

          if (v54)
          {
            goto LABEL_53;
          }
        }

        else
        {
          frontBundleID2 = [(UAUserActivityClientProcessesController *)self frontBundleID];
          v34 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:frontBundleID2];
          currentAdvertisableActivity2 = [v34 currentAdvertisableActivity];

          v36 = sub_100001A30(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            frontBundleID3 = [(UAUserActivityClientProcessesController *)self frontBundleID];
            v38 = frontBundleID3;
            v39 = " and possibly change advertisement.";
            if (!currentAdvertisableActivity2)
            {
              v39 = "";
            }

            *buf = 138543618;
            v56 = frontBundleID3;
            v57 = 2082;
            v58 = v39;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "MAKEFRONT: -(was %{public}@/%{public}s)", buf, 0x16u);
          }

          v40 = "(update)";
          if (!currentAdvertisableActivity2)
          {
            v40 = "";
          }

          v41 = [NSString stringWithFormat:@"APP:- %s", v40];
          [ActivityManagerDebuggingManager appendRecentAction:v41];

          [(UAUserActivityClientProcessesController *)self setFrontBundleID:0];
          if (!currentAdvertisableActivity2)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_52;
      }

      if (v13)
      {
        currentAdvertisableActivity3 = [v13 currentAdvertisableActivity];

        selfCopy2 = self;
        objc_sync_enter(selfCopy2);
        if ([(NSMutableSet *)selfCopy2->_visibleUserActivityClients containsObject:v13])
        {
          [(NSMutableSet *)selfCopy2->_visibleUserActivityClients removeObject:v13];
          currentAdvertisableActivity4 = [v13 currentAdvertisableActivity];
          if (currentAdvertisableActivity4)
          {
            v32 = +[NSDate date];
          }

          else
          {
            v32 = 0;
          }

          [v13 setLastFrontTime:v32];
          if (currentAdvertisableActivity4)
          {
          }

          v42 = sub_100001A30(0);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            frontBundleID4 = [(UAUserActivityClientProcessesController *)selfCopy2 frontBundleID];
            if (frontBundleID4)
            {
              frontBundleID5 = [(UAUserActivityClientProcessesController *)selfCopy2 frontBundleID];
            }

            else
            {
              frontBundleID5 = @"-";
            }

            v45 = "";
            if (currentAdvertisableActivity3)
            {
              v45 = " and possibly change advertisement.";
            }

            *buf = 138412546;
            v56 = frontBundleID5;
            v57 = 2082;
            v58 = v45;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "MAKEFRONT:- (was %@) %{public}s", buf, 0x16u);
            if (frontBundleID4)
            {
            }
          }

          frontBundleID6 = [(UAUserActivityClientProcessesController *)selfCopy2 frontBundleID];
          if (frontBundleID6)
          {
            frontBundleID7 = [(UAUserActivityClientProcessesController *)selfCopy2 frontBundleID];
          }

          else
          {
            frontBundleID7 = @"-";
          }

          v48 = " and possibly change advertisement.";
          if (!currentAdvertisableActivity3)
          {
            v48 = "";
          }

          v49 = [NSString stringWithFormat:@"APP:- (was %@) %s", frontBundleID7, v48];
          [ActivityManagerDebuggingManager appendRecentAction:v49];

          if (frontBundleID6)
          {
          }
        }

        objc_sync_exit(selfCopy2);

        frontBundleID8 = [(UAUserActivityClientProcessesController *)selfCopy2 frontBundleID];
        if (frontBundleID8)
        {
          frontBundleID9 = [(UAUserActivityClientProcessesController *)selfCopy2 frontBundleID];
          v52 = [frontBundleID9 isEqual:v10];

          if (v52)
          {
            [(UAUserActivityClientProcessesController *)selfCopy2 setFrontBundleID:0];
            if (!currentAdvertisableActivity3)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }
        }

        if (currentAdvertisableActivity3)
        {
LABEL_52:
          manager = [(UACornerActionManagerHandler *)self manager];
          [manager scheduleUpdatingAdvertisableItems:0.1];
        }
      }
    }

LABEL_53:
  }
}

- (id)advertiseableItemForBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:?];
    v4 = v3;
    if (v3)
    {
      currentAdvertisableActivity = [v3 currentAdvertisableActivity];
    }

    else
    {
      currentAdvertisableActivity = 0;
    }
  }

  else
  {
    currentAdvertisableActivity = 0;
  }

  return currentAdvertisableActivity;
}

- (id)recentEligibleItemsInOrder:(double)order
{
  v5 = +[NSMutableArray array];
  v6 = [NSDate dateWithTimeIntervalSinceNow:-order];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  userActivityClients = [(UAUserActivityClientProcessesController *)self userActivityClients];
  v8 = [userActivityClients countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(userActivityClients);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        lastFrontTime = [v12 lastFrontTime];
        if (lastFrontTime)
        {
          v14 = lastFrontTime;
          lastFrontTime2 = [v12 lastFrontTime];
          v16 = sub_10000A010(lastFrontTime2, v6);

          if (v16)
          {
            [v5 addObject:v12];
          }
        }
      }

      v9 = [userActivityClients countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    [v5 sortUsingComparator:&stru_1000C5C08];
    firstObject = [v5 firstObject];
    currentAdvertisableActivity = [firstObject currentAdvertisableActivity];
    if (currentAdvertisableActivity)
    {
      firstObject2 = [v5 firstObject];
      currentAdvertisableActivity2 = [firstObject2 currentAdvertisableActivity];
      v27 = currentAdvertisableActivity2;
      v21 = [NSArray arrayWithObjects:&v27 count:1];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138478083;
    v13 = listenerCopy;
    v14 = 2113;
    v15 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "listener=%{private}@ newConnection=%{private}@", &v12, 0x16u);
  }

  v9 = [[UAUserActivityClientProcess alloc] initWithController:self connection:connectionCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_clients addObject:v9];
  objc_sync_exit(selfCopy);

  [connectionCopy resume];
  return 1;
}

- (id)statusString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_isa = &selfCopy->super.super.super.isa;
  v3 = [NSMutableString stringWithFormat:@"##### Client processes: %ld clients", [(NSMutableSet *)selfCopy->_clients count]];
  [v3 appendString:@" Layout:"];
  carPlayScreenBundleIdentifiersInOrder = [(UAUserActivityClientProcessesController *)selfCopy carPlayScreenBundleIdentifiersInOrder];
  if (carPlayScreenBundleIdentifiersInOrder)
  {
    carPlayScreenBundleIdentifiersInOrder2 = [(UAUserActivityClientProcessesController *)selfCopy carPlayScreenBundleIdentifiersInOrder];
    v6 = [carPlayScreenBundleIdentifiersInOrder2 count];

    if (v6)
    {
      [v3 appendString:@" car:"];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      carPlayScreenBundleIdentifiersInOrder3 = [p_isa carPlayScreenBundleIdentifiersInOrder];
      v8 = [carPlayScreenBundleIdentifiersInOrder3 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v8)
      {
        v9 = *v69;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v69 != v9)
            {
              objc_enumerationMutation(carPlayScreenBundleIdentifiersInOrder3);
            }

            [v3 appendString:*(*(&v68 + 1) + 8 * i)];
            [v3 appendString:@" "];
          }

          v8 = [carPlayScreenBundleIdentifiersInOrder3 countByEnumeratingWithState:&v68 objects:v76 count:16];
        }

        while (v8);
      }

      [v3 appendString:@"main:"];
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v11 = p_isa[19];
  v12 = [v11 countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (v12)
  {
    v13 = *v65;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v65 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [v3 appendString:*(*(&v64 + 1) + 8 * j)];
        [v3 appendString:@" "];
      }

      v12 = [v11 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v12);
  }

  [v3 appendString:@"\n"];
  v46 = +[NSMutableArray array];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  allObjects = [p_isa[7] allObjects];
  obj = [allObjects sortedArrayUsingComparator:&stru_1000C5C48];

  v16 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (v16)
  {
    v17 = *v61;
    do
    {
      for (k = 0; k != v16; k = k + 1)
      {
        if (*v61 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v60 + 1) + 8 * k);
        v20 = [p_isa clientIsActive:v19];
        statusString = [v19 statusString];
        v22 = statusString;
        v23 = "";
        if (v20)
        {
          v23 = "FRONT ";
        }

        v24 = [NSString stringWithFormat:@" - %s%@\n", v23, statusString];
        if (v20)
        {
          v25 = 0;
        }

        else
        {
          v25 = [v46 count];
        }

        [v46 insertObject:v24 atIndex:v25];
      }

      v16 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
    }

    while (v16);
  }

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100045D4C;
  v58[3] = &unk_1000C5C70;
  v43 = v3;
  v59 = v43;
  [v46 enumerateObjectsUsingBlock:v58];
  dEBUG_lastEligibleItems = [p_isa DEBUG_lastEligibleItems];
  if (dEBUG_lastEligibleItems)
  {
    [v43 appendString:@" Order:{"];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v41 = dEBUG_lastEligibleItems;
    v42 = dEBUG_lastEligibleItems;
    v45 = [v42 countByEnumeratingWithState:&v54 objects:v73 count:16];
    if (v45)
    {
      v44 = *v55;
      do
      {
        for (obja = 0; obja != v45; obja = obja + 1)
        {
          if (*v55 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v27 = *(*(&v54 + 1) + 8 * obja);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          userActivityClients = [p_isa userActivityClients];
          v29 = [userActivityClients countByEnumeratingWithState:&v50 objects:v72 count:16];
          if (v29)
          {
            v30 = *v51;
            while (2)
            {
              for (m = 0; m != v29; m = m + 1)
              {
                if (*v51 != v30)
                {
                  objc_enumerationMutation(userActivityClients);
                }

                v32 = *(*(&v50 + 1) + 8 * m);
                bundleIdentifier = [v32 bundleIdentifier];
                if (bundleIdentifier)
                {
                  uniqueIdentifiers = [v32 uniqueIdentifiers];
                  uuid = [v27 uuid];
                  v36 = [uniqueIdentifiers containsObject:uuid];

                  if (v36)
                  {
                    bundleIdentifier2 = [v32 bundleIdentifier];
                    uuid2 = [v27 uuid];
                    uUIDString = [uuid2 UUIDString];
                    [v43 appendFormat:@"%@/%@ ", bundleIdentifier2, uUIDString];

                    goto LABEL_47;
                  }
                }
              }

              v29 = [userActivityClients countByEnumeratingWithState:&v50 objects:v72 count:16];
              if (v29)
              {
                continue;
              }

              break;
            }
          }

LABEL_47:
        }

        v45 = [v42 countByEnumeratingWithState:&v54 objects:v73 count:16];
      }

      while (v45);
    }

    [v43 appendString:@"}\n"];
    dEBUG_lastEligibleItems = v41;
  }

  objc_sync_exit(p_isa);

  return v43;
}

@end
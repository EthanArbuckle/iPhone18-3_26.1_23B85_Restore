@interface UAUserActivityClientProcessesController
- (BOOL)addAdditionalUserActivityAdvertisableItems:(id)a3;
- (BOOL)clientIsActive:(id)a3;
- (BOOL)ifLockScreenIsActive:(id)a3 visibleBundleIdentifiers:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)removeAdditionalUserActivityAdvertisableItems:(id)a3;
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)updateCarPlayScreenLayout:(id)a3;
- (BOOL)updateMainScreenLayout:(id)a3;
- (NSArray)userActivityClients;
- (NSSet)additionalUserActivityAdvertisableItems;
- (NSSet)visibleUserActivityClients;
- (UAUserActivityClientProcessesController)initWithManager:(id)a3 name:(id)a4;
- (double)intervalToDelaySuspensionOfAdvertisingForItem:(id)a3;
- (id)advertiseableItemForBundleIdentifier:(id)a3;
- (id)determineVisibleOrderingForProcessesWithUserActivities:(id)a3 previousBundleIDOrdering:(id)a4;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)items;
- (id)recentEligibleItemsInOrder:(double)a3;
- (id)statusString;
- (id)userActivityClientForBundleIdentifier:(id)a3;
- (id)userActivityClientForPID:(int)a3;
- (id)userActivityClientForUUID:(id)a3;
- (id)userActivityInfoForUUID:(id)a3;
- (void)addUserActivityClient:(id)a3;
- (void)dealloc;
- (void)handleAppStateMonitorUpdate:(id)a3;
- (void)removeClientActivityClient:(id)a3;
@end

@implementation UAUserActivityClientProcessesController

- (NSArray)userActivityClients
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_userActivityClientsByPID allValues];
  objc_sync_exit(v2);

  return v3;
}

- (id)eligibleAdvertiseableItemsInOrder
{
  v2 = +[NSMutableArray array];
  v3 = +[UAUserActivityDefaults sharedDefaults];
  v4 = [v3 debugEnablePinging];

  if (v4)
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v5 = [(UAUserActivityClientProcessesController *)self userActivityClients];
    v6 = [v5 countByEnumeratingWithState:&v101 objects:v113 count:16];
    if (v6)
    {
      v7 = *v102;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v102 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v101 + 1) + 8 * i);
          v10 = [v9 currentAdvertisableActivity];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 activityType];
            v13 = [v12 isEqual:@"com.apple.coreservices.ping"];

            if (v13)
            {
              v14 = sub_100001A30(0);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v15 = [v9 currentAdvertisableActivity];
                *buf = 138477827;
                v112 = v15;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*** FORCING item %{private}@ as the most eligible item, since it's a ping", buf, 0xCu);
              }

              [v2 addObject:v11];
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v101 objects:v113 count:16];
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
  v18 = [(UAUserActivityClientProcessesController *)self userActivityClients];
  v19 = [v18 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v19)
  {
    v20 = *v98;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v98 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = [*(*(&v97 + 1) + 8 * j) currentAdvertisableActivity];
        if (([v22 eligibleToAdvertise] & 1) != 0 || (objc_msgSend(v22, "proxiedBundleIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, !v24))
        {
          if ([v22 alwaysPick])
          {
            [v16 addObject:v22];
          }

          if ([v22 eligibleInBackground])
          {
            [v17 addObject:v22];
          }

          v25 = [v22 proxiedBundleIdentifier];
          if (v25)
          {
            v26 = [v22 eligibleToAdvertise];

            if (v26)
            {
              v27 = [v22 proxiedBundleIdentifier];
              [v84 setObject:v22 forKey:v27];
            }
          }
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v97 objects:v110 count:16];
    }

    while (v19);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v28 = [(UAUserActivityClientProcessesController *)self additionalUserActivityAdvertisableItems];
  v29 = [v28 countByEnumeratingWithState:&v93 objects:v109 count:16];
  if (v29)
  {
    v30 = *v94;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v94 != v30)
        {
          objc_enumerationMutation(v28);
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

      v29 = [v28 countByEnumeratingWithState:&v93 objects:v109 count:16];
    }

    while (v29);
  }

  if ([v16 count])
  {
    v33 = [NSString stringWithFormat:@"options.%@", UAUserActivityAlwaysPickKey];
    v34 = [NSSortDescriptor sortDescriptorWithKey:v33 ascending:0];
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

  v37 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
  if (!v37)
  {
    goto LABEL_54;
  }

  v38 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
  v39 = [v38 firstObject];
  v40 = v39 == 0;

  if (v40)
  {
LABEL_54:
    v46 = [(UAUserActivityClientProcessesController *)self mainScreenBundleIdentifiersInOrder];
    v47 = [v46 firstObject];

    if (!v47)
    {
      goto LABEL_74;
    }

    v48 = [(UAUserActivityClientProcessesController *)self mainScreenBundleIdentifiersInOrder];
    v83 = [v48 firstObject];

    v81 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:v83];
    v49 = [v81 currentAdvertisableActivity];
    v50 = v49;
    if (v81 && v49 && [v49 eligibleToAdvertise])
    {
      [v2 addObject:v50];
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v51 = [(UAUserActivityClientProcessesController *)self userActivityClients];
      v52 = [v51 countByEnumeratingWithState:&v89 objects:v107 count:16];
      if (v52)
      {
        v53 = *v90;
        do
        {
          for (m = 0; m != v52; m = m + 1)
          {
            if (*v90 != v53)
            {
              objc_enumerationMutation(v51);
            }

            v55 = [*(*(&v89 + 1) + 8 * m) currentAdvertisableActivity];

            v50 = v55;
            if (v55)
            {
              if ([v55 eligibleToAdvertise])
              {
                v56 = [v55 proxiedBundleIdentifier];
                v57 = [v56 isEqual:v83];

                if (v57)
                {
                  [v2 addObject:v50];
                }
              }
            }
          }

          v52 = [v51 countByEnumeratingWithState:&v89 objects:v107 count:16];
        }

        while (v52);
      }
    }

    v44 = v81;
    goto LABEL_72;
  }

  v41 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
  v42 = [v41 firstObject];
  v83 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:v42];

  v43 = v83;
  if (v83)
  {
    v44 = [v83 currentAdvertisableActivity];
    v45 = v44;
    if (v44)
    {
      if ([v44 eligibleToAdvertise])
      {
        [v2 addObject:v45];
      }

      v44 = v45;
    }

LABEL_72:

    v43 = v83;
  }

LABEL_74:
  v58 = [(UAUserActivityClientProcessesController *)self frontBundleID];

  if (v58)
  {
    v59 = [(UAUserActivityClientProcessesController *)self frontBundleID];
    v60 = [v84 objectForKeyedSubscript:v59];

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
    v62 = [NSString stringWithFormat:@"options.%@", UAUserActivityEligibleEvenWhenInBackgroundKey];
    v63 = [NSSortDescriptor sortDescriptorWithKey:v62 ascending:0];
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
  v68 = [(UAUserActivityClientProcessesController *)self additionalUserActivityAdvertisableItems];
  v69 = [v68 countByEnumeratingWithState:&v85 objects:v105 count:16];
  if (v69)
  {
    v70 = *v86;
    do
    {
      for (n = 0; n != v69; n = n + 1)
      {
        if (*v86 != v70)
        {
          objc_enumerationMutation(v68);
        }

        v72 = *(*(&v85 + 1) + 8 * n);
        if (([v2 containsObject:v72] & 1) == 0)
        {
          [v2 addObject:v72];
        }
      }

      v69 = [v68 countByEnumeratingWithState:&v85 objects:v105 count:16];
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

  v76 = self;
  objc_sync_enter(v76);
  v77 = [v2 copy];
  DEBUG_lastEligibleItems = v76->_DEBUG_lastEligibleItems;
  v76->_DEBUG_lastEligibleItems = v77;

  objc_sync_exit(v76);
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
  v4 = [(UAUserActivityClientProcessesController *)self userActivityClients];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v21 + 1) + 8 * i) currentAdvertisableActivity];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(UAUserActivityClientProcessesController *)self additionalUserActivityAdvertisableItems];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(v10);
        }

        [v3 addObject:*(*(&v17 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = [v3 copy];

  return v15;
}

- (UAUserActivityClientProcessesController)initWithManager:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v43.receiver = self;
  v43.super_class = UAUserActivityClientProcessesController;
  v8 = [(UAClientController *)&v43 initWithManager:v6 name:v7];
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

    v19 = [(UACornerActionManagerHandler *)v8 manager];
    v20 = [v19 mainDispatchQ];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10004205C;
    v41[3] = &unk_1000C4CC0;
    v21 = v8;
    v42 = v21;
    v22 = [UADispatchScheduler dispatchScheduler:@"layoutUpdate" frequency:v20 queue:v41 block:0.0];
    layoutUpdateScheduler = v21->_layoutUpdateScheduler;
    v21->_layoutUpdateScheduler = v22;

    v24 = objc_alloc_init(NSMutableSet);
    visibleUserActivityClients = v21->_visibleUserActivityClients;
    v21->_visibleUserActivityClients = v24;

    v26 = [(UAUserActivityClientProcessesController *)v21 appStateMonitor];

    if (!v26)
    {
      v27 = objc_alloc_init(BKSApplicationStateMonitor);
      [(UAUserActivityClientProcessesController *)v21 setAppStateMonitor:v27];

      objc_initWeak(&location, v21);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100042104;
      v38[3] = &unk_1000C5B58;
      objc_copyWeak(&v39, &location);
      v28 = [(UAUserActivityClientProcessesController *)v21 appStateMonitor];
      [v28 setHandler:v38];

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    v29 = +[NSMutableSet set];
    additionalUserActivityAdvertisableItems = v21->_additionalUserActivityAdvertisableItems;
    v21->_additionalUserActivityAdvertisableItems = v29;

    v31 = [UALocalItemReceiver alloc];
    v32 = [(UACornerActionManagerHandler *)v21 manager];
    v33 = [(UALocalItemReceiver *)v31 initWithManager:v32 controller:v21];
    localReceiver = v21->_localReceiver;
    v21->_localReceiver = v33;

    v35 = [(UACornerActionManagerHandler *)v21 manager];
    v36 = [(UAUserActivityClientProcessesController *)v21 localReceiver];
    [v35 addReceiver:v36];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(UACornerActionManagerHandler *)self manager];
  v4 = [(UAUserActivityClientProcessesController *)self localReceiver];
  [v3 removeReceiver:v4];

  v5 = [(UAUserActivityClientProcessesController *)self mainDisplayLayoutMonitor];

  if (v5)
  {
    v6 = [(UAUserActivityClientProcessesController *)self mainDisplayLayoutMonitor];
    [v6 invalidate];

    mainDisplayLayoutMonitor = self->_mainDisplayLayoutMonitor;
    self->_mainDisplayLayoutMonitor = 0;
  }

  v8 = [(UAUserActivityClientProcessesController *)self carPlayDisplayLayoutMonitor];

  if (v8)
  {
    v9 = [(UAUserActivityClientProcessesController *)self carPlayDisplayLayoutMonitor];
    [v9 invalidate];

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
  v3 = [(UACornerActionManagerHandler *)&v6 suspend];
  if (v3)
  {
    [(NSXPCListener *)self->_activityManagerListener suspend];
    v4 = [(UAUserActivityClientProcessesController *)self localReceiver];
    [v4 suspend];
  }

  return v3;
}

- (BOOL)resume
{
  v23.receiver = self;
  v23.super_class = UAUserActivityClientProcessesController;
  v3 = [(UACornerActionManagerHandler *)&v23 resume];
  if (v3)
  {
    v4 = [(UAUserActivityClientProcessesController *)self localReceiver];
    [v4 resume];

    [(NSXPCListener *)self->_activityManagerListener resume];
    v5 = [(UAUserActivityClientProcessesController *)self mainDisplayLayoutMonitor];

    if (!v5)
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

      v9 = [(UACornerActionManagerHandler *)self manager];
      v10 = [v9 mainDispatchQ];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000426A8;
      block[3] = &unk_1000C4CC0;
      block[4] = self;
      dispatch_async(v10, block);
    }

    v11 = [(UAUserActivityClientProcessesController *)self carPlayDisplayLayoutMonitor];

    if (!v11 && (objc_opt_respondsToSelector() & 1) != 0)
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

        v16 = [(UACornerActionManagerHandler *)self manager];
        v17 = [v16 mainDispatchQ];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100042710;
        v19[3] = &unk_1000C4CC0;
        v19[4] = self;
        dispatch_async(v17, v19);
      }
    }
  }

  return v3;
}

- (BOOL)updateMainScreenLayout:(id)a3
{
  v4 = a3;
  v5 = [(UAUserActivityClientProcessesController *)self mainScreenBundleIdentifiersInOrder];
  v6 = [(UAUserActivityClientProcessesController *)self ifLockScreenIsActive:v4 visibleBundleIdentifiers:v5];

  v7 = [(UAUserActivityClientProcessesController *)self mainScreenBundleIdentifiersInOrder];
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    v9 = [(UAUserActivityClientProcessesController *)self determineVisibleOrderingForProcessesWithUserActivities:v4 previousBundleIDOrdering:v7];
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

  if (![(NSArray *)v7 count])
  {
    v13 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
    v14 = [v13 count];

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

  v16 = [(UACornerActionManagerHandler *)self manager];
  [v16 scheduleUpdatingAdvertisableItems:0.0];

  v17 = +[UAUserActivityDefaults sharedDefaults];
  v18 = [v17 debugCrossoverAllActivities];

  if (v18)
  {
    v19 = [(UACornerActionManagerHandler *)self manager];
    [v19 scheduleBestAppDetermination];
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (BOOL)updateCarPlayScreenLayout:(id)a3
{
  v4 = a3;
  v5 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
  v6 = [(UAUserActivityClientProcessesController *)self determineVisibleOrderingForProcessesWithUserActivities:v4 previousBundleIDOrdering:v5];

  if (v6 && ![v6 isEqual:v5] || v5 && objc_msgSend(v5, "count"))
  {
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "LAYOUT: Updating advertisement because the list of carplay screen visible bundle identifiers changed", v14, 2u);
    }

    [(UAUserActivityClientProcessesController *)self setCarPlayScreenBundleIdentifiersInOrder:v6];
    v8 = [(UACornerActionManagerHandler *)self manager];
    [v8 scheduleUpdatingAdvertisableItems:0.0];

    v9 = +[UAUserActivityDefaults sharedDefaults];
    v10 = [v9 debugCrossoverAllActivities];

    if (v10)
    {
      v11 = [(UACornerActionManagerHandler *)self manager];
      [v11 scheduleBestAppDetermination];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)intervalToDelaySuspensionOfAdvertisingForItem:(id)a3
{
  v4 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(UAUserActivityClientProcessesController *)self carPlayScreenBundleIdentifiersInOrder];
      v10 = [v9 firstObject];

      if (v10)
      {
        v11 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:v10];
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

- (id)determineVisibleOrderingForProcessesWithUserActivities:(id)a3 previousBundleIDOrdering:(id)a4
{
  v42 = a3;
  v41 = a4;
  v43 = self;
  v7 = [(UACornerActionManagerHandler *)self manager];
  v8 = [v7 mainDispatchQ];
  dispatch_assert_queue_V2(v8);

  v9 = +[NSMutableArray array];
  v10 = [v42 elements];
  v11 = [NSMutableArray arrayWithArray:v10];

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
          v13 = [v12 layoutRole];
          v14 = !SBSDisplayLayoutRoleIsDefined() || v13 > 7;
          if (v14 || ((1 << v13) & 0xDE) == 0)
          {
            continue;
          }
        }

        if ([v12 conformsToProtocol:&OBJC_PROTOCOL___FBSDisplayLayoutElement])
        {
          v16 = [v12 bundleIdentifier];

          if (v16)
          {
            v17 = [v12 bundleIdentifier];
            v45 = [(UAUserActivityClientProcessesController *)v43 userActivityClientForBundleIdentifier:v17];

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

              v19 = [v12 bundleIdentifier];
              [v9 addObject:v19];
            }

            else
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v19 = [(UAUserActivityClientProcessesController *)v43 userActivityClients];
              v20 = [v19 countByEnumeratingWithState:&v53 objects:v62 count:16];
              if (v20)
              {
                v21 = *v54;
                do
                {
                  for (j = 0; j != v20; j = j + 1)
                  {
                    if (*v54 != v21)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v23 = [*(*(&v53 + 1) + 8 * j) currentAdvertisableActivity];
                    v24 = [v23 proxiedBundleIdentifier];
                    v25 = [v12 bundleIdentifier];
                    v4 = [v24 isEqual:v25];

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

                      v27 = [v12 bundleIdentifier];
                      [v9 addObject:v27];
                    }
                  }

                  v20 = [v19 countByEnumeratingWithState:&v53 objects:v62 count:16];
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

  v28 = v43;
  objc_sync_enter(v28);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v29 = v41;
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
          v35 = [v33 bundleIdentifier];
          v36 = [v9 containsObject:v35];

          if ((v36 & 1) == 0)
          {
            v37 = [v34 currentAdvertisableActivity];
            if (v37)
            {
              v4 = +[NSDate date];
              v38 = v4;
            }

            else
            {
              v38 = 0;
            }

            [v34 setLastFrontTime:v38];
            if (v37)
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

- (BOOL)ifLockScreenIsActive:(id)a3 visibleBundleIdentifiers:(id)a4
{
  v6 = a3;
  v46 = a4;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = [v6 elements];
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v44 = self;
    v45 = v6;
    v10 = *v52;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v52 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v51 + 1) + 8 * v11);
      if ([v12 conformsToProtocol:&OBJC_PROTOCOL___FBSDisplayLayoutElement])
      {
        v13 = [v12 bundleIdentifier];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 bundleIdentifier];
          v16 = [v15 isEqual:@"com.apple.lock-screen"];

          if (v16)
          {
            break;
          }
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v51 objects:v58 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

LABEL_38:
        self = v44;
        v6 = v45;
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
    self = v44;
    v6 = v45;
    if (!v18)
    {
      goto LABEL_40;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = [v45 elements];
    v19 = [v7 countByEnumeratingWithState:&v47 objects:v57 count:16];
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
            objc_enumerationMutation(v7);
          }

          v23 = *(*(&v47 + 1) + 8 * i);
          v24 = [v23 conformsToProtocol:&OBJC_PROTOCOL___FBSDisplayLayoutElement];
          if (v23 != v18 && v24 != 0)
          {
            v26 = [v23 level];
            if (v26 >= [v18 level])
            {
              v27 = [v23 bundleIdentifier];
              if (v27)
              {
                v28 = v27;
                v29 = [v23 bundleIdentifier];
                v30 = [v46 containsObject:v29];

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

        v20 = [v7 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    if (![v46 count])
    {
      [(UAUserActivityClientProcessesController *)v44 setIgnoreLockScreenUntil:0];

      v40 = 0;
      v6 = v45;
      goto LABEL_43;
    }

    v31 = [(UAUserActivityClientProcessesController *)v44 ignoreLockScreenUntil];
    v6 = v45;
    if (v31)
    {
      v32 = v31;
      v33 = [(UAUserActivityClientProcessesController *)v44 ignoreLockScreenUntil];
      v34 = +[NSDate date];
      v35 = [v33 compare:v34];

      if (v35 == -1)
      {
        [(UAUserActivityClientProcessesController *)v44 setIgnoreLockScreenUntil:0];

        goto LABEL_42;
      }
    }

    v36 = [(UAUserActivityClientProcessesController *)v44 ignoreLockScreenUntil];

    if (!v36)
    {
      v37 = [NSDate dateWithTimeIntervalSinceNow:8.0];
      [(UAUserActivityClientProcessesController *)v44 setIgnoreLockScreenUntil:v37];
    }

    v38 = [(UAUserActivityClientProcessesController *)v44 layoutUpdateScheduler];
    v39 = [(UAUserActivityClientProcessesController *)v44 ignoreLockScreenUntil];
    [v38 scheduleAt:v39];

    v40 = 1;
  }

  else
  {
LABEL_39:

LABEL_40:
    v42 = [(UAUserActivityClientProcessesController *)self ignoreLockScreenUntil];

    if (v42)
    {
      [(UAUserActivityClientProcessesController *)self setIgnoreLockScreenUntil:0];
    }

LABEL_42:
    v40 = 0;
  }

LABEL_43:

  return v40;
}

- (void)addUserActivityClient:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 auditToken];
    v7 = [v6 pid];

    if (v7 >= 1)
    {
      v8 = self;
      objc_sync_enter(v8);
      v9 = sub_100001A30(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v5 auditToken];
        v11 = [v5 bundleIdentifier];
        v19 = 138478339;
        v20 = v5;
        v21 = 2114;
        v22 = v10;
        v23 = 2113;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Adding client %{private}@, %{public}@, bundleID=%{private}@ to known userActivityClients.", &v19, 0x20u);
      }

      userActivityClientsByPID = v8->_userActivityClientsByPID;
      v13 = [v5 auditToken];
      v14 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v13 pid]);
      [(NSMutableDictionary *)userActivityClientsByPID setObject:v5 forKey:v14];

      v15 = [v5 bundleIdentifier];

      if (v15)
      {
        userActivityClientsByBundleID = v8->_userActivityClientsByBundleID;
        v17 = [v5 bundleIdentifier];
        [(NSMutableDictionary *)userActivityClientsByBundleID setObject:v5 forKey:v17];
      }

      v18 = [(UAUserActivityClientProcessesController *)v8 layoutUpdateScheduler];
      [v18 scheduleNext:0.0];

      objc_sync_exit(v8);
    }
  }
}

- (BOOL)clientIsActive:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 bundleIdentifier];

    if (v6)
    {
      v7 = self;
      objc_sync_enter(v7);
      v8 = [(UAUserActivityClientProcessesController *)v7 carPlayScreenBundleIdentifiersInOrder];
      if (v8 && (-[UAUserActivityClientProcessesController carPlayScreenBundleIdentifiersInOrder](v7, "carPlayScreenBundleIdentifiersInOrder"), v9 = objc_claimAutoreleasedReturnValue(), [v9 firstObject], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
      {
        v11 = [(UAUserActivityClientProcessesController *)v7 carPlayScreenBundleIdentifiersInOrder];
        v12 = [v11 firstObject];
        v13 = [v5 bundleIdentifier];
        v14 = [v12 isEqual:v13];
      }

      else
      {
        v16 = [(UAUserActivityClientProcessesController *)v7 mainScreenBundleIdentifiersInOrder];

        if (!v16)
        {
          v15 = 0;
          goto LABEL_11;
        }

        v11 = [v5 bundleIdentifier];
        v12 = [(UAUserActivityClientProcessesController *)v7 mainScreenBundleIdentifiersInOrder];
        v13 = [v12 firstObject];
        v14 = [v11 isEqual:v13];
      }

      v15 = v14;

LABEL_11:
      objc_sync_exit(v7);

      goto LABEL_12;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)userActivityInfoForUUID:(id)a3
{
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(UAUserActivityClientProcessesController *)self userActivityClients];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v24 + 1) + 8 * i) userActivityAdvertisableItemByUUID:v4];
        if (v10)
        {
LABEL_19:
          v18 = v10;
          goto LABEL_20;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
  v5 = [(UAUserActivityClientProcessesController *)self additionalUserActivityAdvertisableItems];
  v11 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v20 + 1) + 8 * j);
        v16 = [v15 uuid];
        v17 = [v16 isEqual:v4];

        if (v17)
        {
          v10 = v15;
          goto LABEL_19;
        }
      }

      v12 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v2->_mainScreenBundleIdentifiersInOrder;
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

        v8 = [(UAUserActivityClientProcessesController *)v2 userActivityClientForBundleIdentifier:*(*(&v20 + 1) + 8 * i)];
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
  v9 = [(UAUserActivityClientProcessesController *)v2 carPlayScreenBundleIdentifiersInOrder];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(UAUserActivityClientProcessesController *)v2 userActivityClientForBundleIdentifier:*(*(&v16 + 1) + 8 * j)];
        if (v13)
        {
          [v3 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = [v3 copy];
  objc_sync_exit(v2);

  return v14;
}

- (id)userActivityClientForUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(UAUserActivityClientProcessesController *)v5 userActivityClients];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 uniqueIdentifiers];
          v12 = [v11 containsObject:v4];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)userActivityClientForPID:(int)a3
{
  if (a3 < 2)
  {
    v7 = 0;
  }

  else
  {
    v4 = self;
    objc_sync_enter(v4);
    userActivityClientsByPID = v4->_userActivityClientsByPID;
    v6 = [NSNumber numberWithLong:a3];
    v7 = [(NSMutableDictionary *)userActivityClientsByPID objectForKey:v6];

    objc_sync_exit(v4);
  }

  return v7;
}

- (BOOL)addAdditionalUserActivityAdvertisableItems:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_additionalUserActivityAdvertisableItems;
    objc_sync_enter(v5);
    v6 = [(NSMutableSet *)self->_additionalUserActivityAdvertisableItems containsObject:v4];
    [(NSMutableSet *)self->_additionalUserActivityAdvertisableItems addObject:v4];
    v7 = v6 ^ 1;
    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)removeAdditionalUserActivityAdvertisableItems:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_additionalUserActivityAdvertisableItems;
    objc_sync_enter(v5);
    v6 = [(NSMutableSet *)self->_additionalUserActivityAdvertisableItems containsObject:v4];
    [(NSMutableSet *)self->_additionalUserActivityAdvertisableItems removeObject:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)userActivityClientForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_userActivityClientsByBundleID objectForKey:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeClientActivityClient:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 auditToken];
    v38 = 138478083;
    v39 = v4;
    v40 = 2114;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing client %{private}@, application %{public}@, from known userActivityClients.", &v38, 0x16u);
  }

  v7 = self;
  objc_sync_enter(v7);
  v8 = [v4 currentAdvertisableActivity];
  if (v8)
  {
    v9 = [v4 currentAdvertisableActivity];
    v10 = [v9 options];
    v11 = [v10 objectForKeyedSubscript:@"LSLivePastProcessExit"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v13 = sub_100001A30(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v4 currentAdvertisableActivity];
        v15 = [v14 uuid];
        v16 = [v15 UUIDString];
        v17 = [v4 currentAdvertisableActivity];
        v18 = [v4 auditToken];
        v38 = 138543875;
        v39 = v16;
        v40 = 2113;
        v41 = v17;
        v42 = 2114;
        v43 = v18;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Moving 'LSLivePastProcessExit' activity %{public}@/%{private}@ from process %{public}@ into additionalUserActivityAdvertisableItems", &v38, 0x20u);
      }

      v19 = [v4 currentAdvertisableActivity];
      [(UAUserActivityClientProcessesController *)v7 addAdditionalUserActivityAdvertisableItems:v19];
    }
  }

  v20 = [v4 auditToken];
  v21 = [v20 pid] > 0;

  if (v21)
  {
    v22 = sub_100001A30(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v4 auditToken];
      v38 = 138543362;
      v39 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Removing client %{public}@ from _userActivityClientsByPID", &v38, 0xCu);
    }

    userActivityClientsByPID = v7->_userActivityClientsByPID;
    v25 = [v4 auditToken];
    v26 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v25 pid]);
    [(NSMutableDictionary *)userActivityClientsByPID removeObjectForKey:v26];
  }

  v27 = [v4 bundleIdentifier];

  if (v27)
  {
    v28 = sub_100001A30(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = [v4 bundleIdentifier];
      v38 = 138477827;
      v39 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Removing client %{private}@ from _userActivityClientsByBundleIdentifier", &v38, 0xCu);
    }

    userActivityClientsByBundleID = v7->_userActivityClientsByBundleID;
    v31 = [v4 bundleIdentifier];
    [(NSMutableDictionary *)userActivityClientsByBundleID removeObjectForKey:v31];
  }

  [(NSMutableSet *)v7->_visibleUserActivityClients removeObject:v4];
  [(NSMutableSet *)v7->_clients removeObject:v4];
  v32 = [(UAUserActivityClientProcessesController *)v7 proxiedClients];

  if (v32)
  {
    v33 = [(UAUserActivityClientProcessesController *)v7 proxiedClients];
    v34 = [v4 uuid];
    [v33 removeObjectForKey:v34];
  }

  v35 = [(UAUserActivityClientProcessesController *)v7 layoutUpdateScheduler];
  [v35 scheduleNext:0.01];

  v36 = [(UACornerActionManagerHandler *)v7 manager];
  [v36 scheduleUpdatingAdvertisableItems:0.1];

  v37 = [(UACornerActionManagerHandler *)v7 manager];
  [v37 processWasRemoved];

  objc_sync_exit(v7);
}

- (void)handleAppStateMonitorUpdate:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 objectForKey:BKSApplicationStateKey];
    v7 = [v6 integerValue];
    v8 = [v4 description];
    v9 = sub_100009684(v8);
    *buf = 134218243;
    v56 = v7;
    v57 = 2113;
    v58 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "MAKEFRONT: handleAppStateMonitorUpdate:%ld %{private}@", buf, 0x16u);
  }

  if (v4)
  {
    v10 = [v4 objectForKey:BKSApplicationStateDisplayIDKey];
    v11 = [v4 objectForKey:BKSApplicationStateAppIsFrontmostKey];
    v12 = [v11 BOOLValue];

    v13 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:v10];
    if (v10)
    {
      if (v12)
      {
        if (v13)
        {
          v14 = self;
          objc_sync_enter(v14);
          [(NSMutableSet *)v14->_visibleUserActivityClients addObject:v13];
          objc_sync_exit(v14);

          v15 = [(UAUserActivityClientProcessesController *)v14 frontBundleID];
          v54 = [v10 isEqual:v15];

          v16 = [v13 bundleIdentifier];
          [(UAUserActivityClientProcessesController *)v14 setFrontBundleID:v16];

          v17 = sub_100001A30(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v13 bundleIdentifier];
            v19 = [v13 auditToken];
            v20 = v19;
            v21 = " and possibly change advertisement.";
            *buf = 138543874;
            v56 = v18;
            if (v54)
            {
              v21 = "";
            }

            v57 = 2114;
            v58 = v19;
            v59 = 2080;
            v60 = v21;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "MAKEFRONT: %{public}@/%{public}@ %s", buf, 0x20u);
          }

          v22 = [v13 bundleIdentifier];
          v23 = [v13 currentAdvertisableActivity];
          v24 = [v23 uuid];
          v25 = [v24 UUIDString];
          v26 = v25;
          v27 = "(update)";
          if (v54)
          {
            v27 = "";
          }

          v28 = [NSString stringWithFormat:@"APP:%@, %@ %s", v22, v25, v27];
          [ActivityManagerDebuggingManager appendRecentAction:v28];

          if (v54)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v33 = [(UAUserActivityClientProcessesController *)self frontBundleID];
          v34 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:v33];
          v35 = [v34 currentAdvertisableActivity];

          v36 = sub_100001A30(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = [(UAUserActivityClientProcessesController *)self frontBundleID];
            v38 = v37;
            v39 = " and possibly change advertisement.";
            if (!v35)
            {
              v39 = "";
            }

            *buf = 138543618;
            v56 = v37;
            v57 = 2082;
            v58 = v39;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "MAKEFRONT: -(was %{public}@/%{public}s)", buf, 0x16u);
          }

          v40 = "(update)";
          if (!v35)
          {
            v40 = "";
          }

          v41 = [NSString stringWithFormat:@"APP:- %s", v40];
          [ActivityManagerDebuggingManager appendRecentAction:v41];

          [(UAUserActivityClientProcessesController *)self setFrontBundleID:0];
          if (!v35)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_52;
      }

      if (v13)
      {
        v29 = [v13 currentAdvertisableActivity];

        v30 = self;
        objc_sync_enter(v30);
        if ([(NSMutableSet *)v30->_visibleUserActivityClients containsObject:v13])
        {
          [(NSMutableSet *)v30->_visibleUserActivityClients removeObject:v13];
          v31 = [v13 currentAdvertisableActivity];
          if (v31)
          {
            v32 = +[NSDate date];
          }

          else
          {
            v32 = 0;
          }

          [v13 setLastFrontTime:v32];
          if (v31)
          {
          }

          v42 = sub_100001A30(0);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = [(UAUserActivityClientProcessesController *)v30 frontBundleID];
            if (v43)
            {
              v44 = [(UAUserActivityClientProcessesController *)v30 frontBundleID];
            }

            else
            {
              v44 = @"-";
            }

            v45 = "";
            if (v29)
            {
              v45 = " and possibly change advertisement.";
            }

            *buf = 138412546;
            v56 = v44;
            v57 = 2082;
            v58 = v45;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "MAKEFRONT:- (was %@) %{public}s", buf, 0x16u);
            if (v43)
            {
            }
          }

          v46 = [(UAUserActivityClientProcessesController *)v30 frontBundleID];
          if (v46)
          {
            v47 = [(UAUserActivityClientProcessesController *)v30 frontBundleID];
          }

          else
          {
            v47 = @"-";
          }

          v48 = " and possibly change advertisement.";
          if (!v29)
          {
            v48 = "";
          }

          v49 = [NSString stringWithFormat:@"APP:- (was %@) %s", v47, v48];
          [ActivityManagerDebuggingManager appendRecentAction:v49];

          if (v46)
          {
          }
        }

        objc_sync_exit(v30);

        v50 = [(UAUserActivityClientProcessesController *)v30 frontBundleID];
        if (v50)
        {
          v51 = [(UAUserActivityClientProcessesController *)v30 frontBundleID];
          v52 = [v51 isEqual:v10];

          if (v52)
          {
            [(UAUserActivityClientProcessesController *)v30 setFrontBundleID:0];
            if (!v29)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }
        }

        if (v29)
        {
LABEL_52:
          v53 = [(UACornerActionManagerHandler *)self manager];
          [v53 scheduleUpdatingAdvertisableItems:0.1];
        }
      }
    }

LABEL_53:
  }
}

- (id)advertiseableItemForBundleIdentifier:(id)a3
{
  if (a3)
  {
    v3 = [(UAUserActivityClientProcessesController *)self userActivityClientForBundleIdentifier:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 currentAdvertisableActivity];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)recentEligibleItemsInOrder:(double)a3
{
  v5 = +[NSMutableArray array];
  v6 = [NSDate dateWithTimeIntervalSinceNow:-a3];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(UAUserActivityClientProcessesController *)self userActivityClients];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 lastFrontTime];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 lastFrontTime];
          v16 = sub_10000A010(v15, v6);

          if (v16)
          {
            [v5 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    [v5 sortUsingComparator:&stru_1000C5C08];
    v17 = [v5 firstObject];
    v18 = [v17 currentAdvertisableActivity];
    if (v18)
    {
      v19 = [v5 firstObject];
      v20 = [v19 currentAdvertisableActivity];
      v27 = v20;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138478083;
    v13 = v6;
    v14 = 2113;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "listener=%{private}@ newConnection=%{private}@", &v12, 0x16u);
  }

  v9 = [[UAUserActivityClientProcess alloc] initWithController:self connection:v7];
  v10 = self;
  objc_sync_enter(v10);
  [(NSMutableSet *)v10->_clients addObject:v9];
  objc_sync_exit(v10);

  [v7 resume];
  return 1;
}

- (id)statusString
{
  v2 = self;
  objc_sync_enter(v2);
  p_isa = &v2->super.super.super.isa;
  v3 = [NSMutableString stringWithFormat:@"##### Client processes: %ld clients", [(NSMutableSet *)v2->_clients count]];
  [v3 appendString:@" Layout:"];
  v4 = [(UAUserActivityClientProcessesController *)v2 carPlayScreenBundleIdentifiersInOrder];
  if (v4)
  {
    v5 = [(UAUserActivityClientProcessesController *)v2 carPlayScreenBundleIdentifiersInOrder];
    v6 = [v5 count];

    if (v6)
    {
      [v3 appendString:@" car:"];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v7 = [p_isa carPlayScreenBundleIdentifiersInOrder];
      v8 = [v7 countByEnumeratingWithState:&v68 objects:v76 count:16];
      if (v8)
      {
        v9 = *v69;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v69 != v9)
            {
              objc_enumerationMutation(v7);
            }

            [v3 appendString:*(*(&v68 + 1) + 8 * i)];
            [v3 appendString:@" "];
          }

          v8 = [v7 countByEnumeratingWithState:&v68 objects:v76 count:16];
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
  v15 = [p_isa[7] allObjects];
  obj = [v15 sortedArrayUsingComparator:&stru_1000C5C48];

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
        v21 = [v19 statusString];
        v22 = v21;
        v23 = "";
        if (v20)
        {
          v23 = "FRONT ";
        }

        v24 = [NSString stringWithFormat:@" - %s%@\n", v23, v21];
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
  v26 = [p_isa DEBUG_lastEligibleItems];
  if (v26)
  {
    [v43 appendString:@" Order:{"];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v41 = v26;
    v42 = v26;
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
          v28 = [p_isa userActivityClients];
          v29 = [v28 countByEnumeratingWithState:&v50 objects:v72 count:16];
          if (v29)
          {
            v30 = *v51;
            while (2)
            {
              for (m = 0; m != v29; m = m + 1)
              {
                if (*v51 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = *(*(&v50 + 1) + 8 * m);
                v33 = [v32 bundleIdentifier];
                if (v33)
                {
                  v34 = [v32 uniqueIdentifiers];
                  v35 = [v27 uuid];
                  v36 = [v34 containsObject:v35];

                  if (v36)
                  {
                    v37 = [v32 bundleIdentifier];
                    v38 = [v27 uuid];
                    v39 = [v38 UUIDString];
                    [v43 appendFormat:@"%@/%@ ", v37, v39];

                    goto LABEL_47;
                  }
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v50 objects:v72 count:16];
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
    v26 = v41;
  }

  objc_sync_exit(p_isa);

  return v43;
}

@end
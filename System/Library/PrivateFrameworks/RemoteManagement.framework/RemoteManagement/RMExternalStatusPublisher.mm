@interface RMExternalStatusPublisher
+ (RMExternalStatusPublisher)sharedPublisher;
+ (void)start;
- (BOOL)persistStatusWithStoreIdentifier:(id)identifier status:(id)status error:(id *)error;
- (RMExternalStatusPublisher)initWithContext:(id)context;
- (id)_buildDictionaryFromArrayValue:(id)value;
- (id)_fetchSubscribedStatusKeyPaths;
- (id)_filteredArray:(id)array metadata:(id)metadata lastAcknowledgedDate:(id)date;
- (id)_mergeOldStatus:(id)status newStatus:(id)newStatus changedStatusKeyPaths:(id)paths error:(id *)error;
- (id)_queryForFilteredStatusWithKeyPaths:(id)paths lastAcknowledgedDateByKeyPath:(id)path onBehalfOfManagementChannel:(id)channel error:(id *)error;
- (id)_subscribedStatusKeyPathsByStoreForKeyPaths:(id)paths;
- (id)reportDetails;
- (id)statusForChannel:(id)channel error:(id *)error;
- (void)_buildPredicateStatusKeyPaths;
- (void)_loadAllStatusPublishers;
- (void)_mergeOldArrayValue:(id)value oldValueMetadata:(id)metadata newValue:(id)newValue completionHandler:(id)handler;
- (void)_notifyChangesWithStoreIdentifier:(id)identifier statusKeyPaths:(id)paths;
- (void)_start;
- (void)_waitForQueueWithCompletionHandler:(id)handler;
- (void)didReceiveNotificationForStream:(id)stream notificationName:(id)name;
- (void)listenToNotificationsForAllKeyPaths;
- (void)listenToNotificationsForSubscribedKeyPaths:(id)paths;
- (void)publishAllSubscribedStatus;
- (void)publishStatusKeys:(id)keys storeIdentifier:(id)identifier;
@end

@implementation RMExternalStatusPublisher

+ (RMExternalStatusPublisher)sharedPublisher
{
  if (qword_1000E6850 != -1)
  {
    sub_10002EAA8();
  }

  v3 = qword_1000E6848;

  return v3;
}

+ (void)start
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A8EC;
  block[3] = &unk_1000D12D0;
  block[4] = self;
  if (qword_1000E6858 != -1)
  {
    dispatch_once(&qword_1000E6858, block);
  }
}

- (RMExternalStatusPublisher)initWithContext:(id)context
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = RMExternalStatusPublisher;
  v6 = [(RMExternalStatusPublisher *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    XPCEventPublisher = v7->_XPCEventPublisher;
    v7->_XPCEventPublisher = 0;

    plugins = v7->_plugins;
    v7->_plugins = &__NSArray0__struct;

    publisherByEventKey = v7->_publisherByEventKey;
    v7->_publisherByEventKey = &__NSDictionary0__struct;

    eventsByStatusKey = v7->_eventsByStatusKey;
    v7->_eventsByStatusKey = &__NSDictionary0__struct;

    v12 = objc_opt_new();
    statusKeys = v7->_statusKeys;
    v7->_statusKeys = v12;

    predicateStatusKeysByStoreIdentifier = v7->_predicateStatusKeysByStoreIdentifier;
    v7->_predicateStatusKeysByStoreIdentifier = &__NSDictionary0__struct;

    v15 = [RMSharedLock newSharedLockWithDescription:@"RMExternalStatusPublisher"];
    persistLock = v7->_persistLock;
    v7->_persistLock = v15;

    v17 = dispatch_queue_create("com.apple.RemoteManagement.RMExternalStatusPublisher", 0);
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v17;
  }

  return v7;
}

- (void)_start
{
  v3 = _os_activity_create(&_mh_execute_header, "ExternalStatusPublisher: Starting...", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  v4 = +[RMLog externalStatusPublisher];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10002EABC();
  }

  [(RMExternalStatusPublisher *)self _loadAllStatusPublishers];
  [(RMExternalStatusPublisher *)self listenToNotificationsForAllKeyPaths];
  [(RMExternalStatusPublisher *)self publishAllSubscribedStatus];
  v5 = +[RMLog externalStatusPublisher];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002EAFC();
  }

  os_activity_scope_leave(&v6);
}

- (void)_loadAllStatusPublishers
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v19 = _os_activity_create(&_mh_execute_header, "ExternalStatusPublisher: Loading XPC service plugins...", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v19, &state);
  v2 = +[RMLog externalStatusPublisher];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10002EB3C();
  }

  v3 = +[RMStatusPublisherServicePlugin loadPlugins];
  [(RMExternalStatusPublisher *)self setPlugins:v3];

  v23 = objc_opt_new();
  v22 = objc_opt_new();
  v21 = objc_opt_new();
  v4 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  plugins = [(RMExternalStatusPublisher *)self plugins];
  v6 = [plugins countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(plugins);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        statusKeysByXPCEvent = [v9 statusKeysByXPCEvent];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10002AF24;
        v24[3] = &unk_1000D1B08;
        v25 = v23;
        v26 = v9;
        v27 = v22;
        v28 = v21;
        [statusKeysByXPCEvent enumerateKeysAndObjectsUsingBlock:v24];

        statusKeys = [v9 statusKeys];
        [v4 unionSet:statusKeys];
      }

      v6 = [plugins countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v6);
  }

  v12 = [v23 copy];
  [(RMExternalStatusPublisher *)self setPublisherByEventKey:v12];

  v13 = [v22 copy];
  [(RMExternalStatusPublisher *)self setEventsByStatusKey:v13];

  v14 = [v21 copy];
  [(RMExternalStatusPublisher *)self setAllEvents:v14];

  v15 = [v4 copy];
  [(RMExternalStatusPublisher *)self setStatusKeys:v15];

  v16 = +[RMLog externalStatusPublisher];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    plugins2 = [(RMExternalStatusPublisher *)self plugins];
    v18 = [plugins2 valueForKey:@"identifier"];
    *buf = 138543362;
    v35 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Finished loading status publisher XPC service plugins: %{public}@", buf, 0xCu);
  }

  os_activity_scope_leave(&state);
}

- (void)listenToNotificationsForAllKeyPaths
{
  _fetchSubscribedStatusKeyPaths = [(RMExternalStatusPublisher *)self _fetchSubscribedStatusKeyPaths];
  [(RMExternalStatusPublisher *)self _buildPredicateStatusKeyPaths];
  v4 = +[RMLog externalStatusPublisher];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = _fetchSubscribedStatusKeyPaths;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Subscribing to all key paths: %{public}@", &v5, 0xCu);
  }

  [(RMExternalStatusPublisher *)self listenToNotificationsForSubscribedKeyPaths:_fetchSubscribedStatusKeyPaths];
}

- (void)listenToNotificationsForSubscribedKeyPaths:(id)paths
{
  v4 = [NSMutableSet setWithSet:paths];
  predicateStatusKeysByStoreIdentifier = [(RMExternalStatusPublisher *)self predicateStatusKeysByStoreIdentifier];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10002B568;
  v51[3] = &unk_1000D1B30;
  v6 = v4;
  v52 = v6;
  [predicateStatusKeysByStoreIdentifier enumerateKeysAndObjectsUsingBlock:v51];

  allEvents = [(RMExternalStatusPublisher *)self allEvents];
  v8 = [allEvents mutableCopy];

  v9 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v10)
  {
    v11 = v10;
    v34 = *v48;
    do
    {
      v12 = 0;
      do
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * v12);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        selfCopy = self;
        eventsByStatusKey = [(RMExternalStatusPublisher *)self eventsByStatusKey];
        v16 = [eventsByStatusKey objectForKeyedSubscript:v13];

        v17 = [v16 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v44;
          do
          {
            v20 = 0;
            do
            {
              if (*v44 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v43 + 1) + 8 * v20);
              if (v21)
              {
                [v9 addObject:*(*(&v43 + 1) + 8 * v20)];
                [v8 removeObject:v21];
              }

              v20 = v20 + 1;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v43 objects:v55 count:16];
          }

          while (v18);
        }

        v12 = v12 + 1;
        self = selfCopy;
      }

      while (v12 != v11);
      v11 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v11);
  }

  v22 = +[RMXPCNotifications sharedNotifier];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:&v39 objects:v54 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      v27 = 0;
      do
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [v22 addObserverForEvent:*(*(&v39 + 1) + 8 * v27) observer:self];
        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v39 objects:v54 count:16];
    }

    while (v25);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = v8;
  v29 = [v28 countByEnumeratingWithState:&v35 objects:v53 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [v22 removeObserverForEvent:*(*(&v35 + 1) + 8 * v32)];
        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v35 objects:v53 count:16];
    }

    while (v30);
  }
}

- (void)didReceiveNotificationForStream:(id)stream notificationName:(id)name
{
  v5 = [RMXPCEvent eventKeyForStream:stream notificationName:name];
  v6 = +[RMLog externalStatusPublisher];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received status notification: %{public}@", buf, 0xCu);
  }

  publisherByEventKey = [(RMExternalStatusPublisher *)self publisherByEventKey];
  v8 = [publisherByEventKey objectForKeyedSubscript:v5];

  if (v8)
  {
    v20 = v5;
    statusKeys = [v8 statusKeys];
    v9 = [(RMExternalStatusPublisher *)self _subscribedStatusKeyPathsByStoreForKeyPaths:?];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v9 objectForKeyedSubscript:v14];
          dispatchQueue = [(RMExternalStatusPublisher *)self dispatchQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10002B808;
          block[3] = &unk_1000D1B58;
          v22 = v8;
          v23 = v15;
          v24 = v14;
          v17 = v15;
          dispatch_async(dispatchQueue, block);
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v18 = statusKeys;
    v5 = v20;
  }

  else
  {
    v18 = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10002EB7C();
    }
  }
}

- (void)_waitForQueueWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = [(RMExternalStatusPublisher *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B8C4;
  block[3] = &unk_1000D1678;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

- (id)_queryForFilteredStatusWithKeyPaths:(id)paths lastAcknowledgedDateByKeyPath:(id)path onBehalfOfManagementChannel:(id)channel error:(id *)error
{
  pathsCopy = paths;
  pathCopy = path;
  channelCopy = channel;
  v46 = 0;
  selfCopy = self;
  v13 = [(RMExternalStatusPublisher *)self statusForChannel:channelCopy error:&v46];
  v14 = v46;
  v15 = v14;
  if (v13)
  {
    v36 = v14;
    v37 = channelCopy;
    v16 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [pathsCopy count]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v38 = pathsCopy;
    v17 = pathsCopy;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v43;
      v39 = v13;
      v40 = v17;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v42 + 1) + 8 * i);
          v23 = [v13 valueForKeyPath:v22];
          if (v23)
          {
            if (pathCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v24 = [NSString stringWithFormat:@"%@.%@", @"_metadata", v22];
              [v13 objectForKeyedSubscript:v24];
              v26 = v25 = v16;

              v27 = [pathCopy objectForKeyedSubscript:v22];
              [(RMExternalStatusPublisher *)selfCopy _filteredArray:v23 metadata:v26 lastAcknowledgedDate:v27];
              v28 = v19;
              v29 = v20;
              v31 = v30 = pathCopy;
              [v25 setObject:v31 forKeyedSubscript:v22];

              pathCopy = v30;
              v20 = v29;
              v19 = v28;

              v16 = v25;
              v13 = v39;
              v17 = v40;
            }

            else
            {
              [v16 setObject:v23 forKeyedSubscript:v22];
            }
          }

          else
          {
            v32 = [RMErrorUtilities createUnsupportedStatusValueErrorWithKeyPath:v22];
            [v16 setObject:v32 forKeyedSubscript:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v19);
    }

    channelCopy = v37;
    pathsCopy = v38;
    v15 = v36;
  }

  else
  {
    v33 = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10002EBEC(channelCopy, v15, v33);
    }

    v16 = 0;
    if (error && v15)
    {
      v34 = v15;
      v16 = 0;
      *error = v15;
    }
  }

  return v16;
}

- (id)statusForChannel:(id)channel error:(id *)error
{
  channelCopy = channel;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10002BDE0;
  v26 = sub_10002BDF0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10002BDE0;
  v20 = sub_10002BDF0;
  v21 = 0;
  persistLock = [(RMExternalStatusPublisher *)self persistLock];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002BDF8;
  v12[3] = &unk_1000D1B80;
  v14 = &v22;
  v8 = channelCopy;
  v13 = v8;
  v15 = &v16;
  [persistLock performBlockUnderLock:v12];

  if (error)
  {
    v9 = v17[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (void)publishAllSubscribedStatus
{
  v2 = +[RMLog externalStatusPublisher];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Publishing all subscribed status items", buf, 2u);
  }

  [(RMExternalStatusPublisher *)self _subscribedStatusKeyPathsByStoreForKeyPaths:0];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v20 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v20)
  {
    v19 = *v32;
    *&v3 = 134218242;
    v18 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v5 = *(*(&v31 + 1) + 8 * v4);
        v6 = [obj objectForKeyedSubscript:{v5, v18}];
        v7 = +[RMLog externalStatusPublisher];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v6 count];
          *buf = v18;
          v37 = v17;
          v38 = 2114;
          v39 = v5;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Publishing %lu status items for store: %{public}@", buf, 0x16u);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        plugins = [(RMExternalStatusPublisher *)self plugins];
        v9 = [plugins countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v28;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v28 != v11)
              {
                objc_enumerationMutation(plugins);
              }

              v13 = *(*(&v27 + 1) + 8 * i);
              statusKeys = [v13 statusKeys];
              v15 = [statusKeys mutableCopy];

              [v15 intersectSet:v6];
              if ([v15 count])
              {
                dispatchQueue = [(RMExternalStatusPublisher *)self dispatchQueue];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_10002C1DC;
                block[3] = &unk_1000D1B58;
                block[4] = v13;
                v25 = v15;
                v26 = v5;
                dispatch_async(dispatchQueue, block);
              }
            }

            v10 = [plugins countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v10);
        }

        v4 = v22 + 1;
      }

      while ((v22 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v20);
  }
}

- (BOOL)persistStatusWithStoreIdentifier:(id)identifier status:(id)status error:(id *)error
{
  identifierCopy = identifier;
  statusCopy = status;
  v10 = objc_opt_new();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10002BDE0;
  v31 = sub_10002BDF0;
  v32 = 0;
  persistLock = [(RMExternalStatusPublisher *)self persistLock];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002C4B8;
  v21[3] = &unk_1000D1BA8;
  v12 = identifierCopy;
  v26 = &v27;
  v22 = v12;
  selfCopy = self;
  v13 = statusCopy;
  v24 = v13;
  v14 = v10;
  v25 = v14;
  [persistLock performBlockUnderLock:v21];

  v15 = v28[5];
  if (v15)
  {
    v16 = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002ED48();
    }

    if (error)
    {
      v17 = v28[5];
      if (v17)
      {
        *error = v17;
      }
    }
  }

  else if ([v14 count])
  {
    v18 = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10002EDB0();
    }

    [(RMExternalStatusPublisher *)self _notifyChangesWithStoreIdentifier:v12 statusKeyPaths:v14];
  }

  else
  {
    v19 = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10002EE20();
    }
  }

  _Block_object_dispose(&v27, 8);
  return v15 == 0;
}

- (void)_notifyChangesWithStoreIdentifier:(id)identifier statusKeyPaths:(id)paths
{
  identifierCopy = identifier;
  pathsCopy = paths;
  v8 = +[RMSubscribedStatusKeyPathUpdater sharedUpdater];
  [v8 notifyStatusDidChangeForKeyPaths:pathsCopy managementSourceIdentifier:identifierCopy];

  predicateStatusKeysByStoreIdentifier = [(RMExternalStatusPublisher *)self predicateStatusKeysByStoreIdentifier];
  v10 = [predicateStatusKeysByStoreIdentifier objectForKeyedSubscript:identifierCopy];
  v11 = [NSMutableSet setWithArray:v10];

  [v11 intersectSet:pathsCopy];
  if ([v11 count])
  {
    v12 = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10002EF84();
    }

    v13 = +[RMPredicateStatusUpdater sharedUpdater];
    [v13 notifyPredicateStatusDidChangeForManagementSourceIdentifier:identifierCopy];
  }
}

- (void)publishStatusKeys:(id)keys storeIdentifier:(id)identifier
{
  keysCopy = keys;
  selfCopy = self;
  identifierCopy = identifier;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  plugins = [(RMExternalStatusPublisher *)self plugins];
  v8 = [plugins countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v23;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(plugins);
      }

      v13 = *(*(&v22 + 1) + 8 * i);
      v14 = [keysCopy mutableCopy];
      statusKeys = [v13 statusKeys];
      [v14 intersectSet:statusKeys];

      if ([v14 count])
      {
        dispatchQueue = [(RMExternalStatusPublisher *)selfCopy dispatchQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10002C96C;
        block[3] = &unk_1000D1B58;
        block[4] = v13;
        v20 = v14;
        v21 = identifierCopy;
        dispatch_async(dispatchQueue, block);

        v10 = 1;
      }
    }

    v9 = [plugins countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v9);

  if (v10)
  {
    plugins = [(RMExternalStatusPublisher *)selfCopy dispatchQueue];
    dispatch_sync(plugins, &stru_1000D1BC8);
LABEL_12:
  }
}

- (id)reportDetails
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  plugins = [(RMExternalStatusPublisher *)self plugins];
  v5 = [plugins countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(plugins);
        }

        reportDetails = [*(*(&v11 + 1) + 8 * i) reportDetails];
        [v3 addObject:reportDetails];
      }

      v6 = [plugins countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_fetchSubscribedStatusKeyPaths
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10002BDE0;
  v12 = sub_10002BDF0;
  v13 = 0;
  context = [(RMExternalStatusPublisher *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002CBDC;
  v7[3] = &unk_1000D13E0;
  v7[4] = &v8;
  [context performBlockAndWait:v7];
  v3 = v9[5];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)_buildPredicateStatusKeyPaths
{
  context = [(RMExternalStatusPublisher *)self context];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002CDFC;
  v6[3] = &unk_1000D0F50;
  v6[4] = self;
  [context performBlockAndWait:v6];
  v4 = +[RMLog externalStatusPublisher];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    predicateStatusKeysByStoreIdentifier = [(RMExternalStatusPublisher *)self predicateStatusKeysByStoreIdentifier];
    *buf = 138543362;
    v8 = predicateStatusKeysByStoreIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "All predicate status key paths: %{public}@", buf, 0xCu);
  }
}

- (id)_subscribedStatusKeyPathsByStoreForKeyPaths:(id)paths
{
  pathsCopy = paths;
  v5 = objc_opt_new();
  context = [(RMExternalStatusPublisher *)self context];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002D110;
  v12[3] = &unk_1000D1B58;
  v13 = pathsCopy;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = pathsCopy;
  [context performBlockAndWait:v12];
  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)_mergeOldStatus:(id)status newStatus:(id)newStatus changedStatusKeyPaths:(id)paths error:(id *)error
{
  statusCopy = status;
  newStatusCopy = newStatus;
  pathsCopy = paths;
  v13 = [NSMutableDictionary dictionaryWithDictionary:statusCopy];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10002BDE0;
  v30 = sub_10002BDF0;
  v31 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002D7E4;
  v20[3] = &unk_1000D1C18;
  v14 = statusCopy;
  v21 = v14;
  v15 = v13;
  v22 = v15;
  v16 = pathsCopy;
  selfCopy = self;
  v25 = &v26;
  v23 = v16;
  [newStatusCopy enumerateKeysAndObjectsUsingBlock:v20];
  v17 = v27[5];
  if (v17)
  {
    v18 = 0;
    if (error)
    {
      *error = v17;
    }
  }

  else
  {
    v18 = v15;
  }

  _Block_object_dispose(&v26, 8);

  return v18;
}

- (void)_mergeOldArrayValue:(id)value oldValueMetadata:(id)metadata newValue:(id)newValue completionHandler:(id)handler
{
  valueCopy = value;
  metadataCopy = metadata;
  newValueCopy = newValue;
  handlerCopy = handler;
  v31 = [RMDateFormat stringUTCFractionalSecondsWithDate:0];
  v26 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [newValueCopy count]);
  v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [newValueCopy count]);
  if (valueCopy)
  {
    v11 = [(RMExternalStatusPublisher *)self _buildDictionaryFromArrayValue:?];
    v12 = [(RMExternalStatusPublisher *)self _buildDictionaryFromArrayValue:newValueCopy];
    v13 = [metadataCopy mutableCopy];
    if ([v11 isEqualToDictionary:v12])
    {
      handlerCopy[2](handlerCopy, valueCopy, metadataCopy, 0);
    }

    else
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10002E1B0;
      v36[3] = &unk_1000D1C40;
      v37 = v11;
      v21 = v10;
      v38 = v21;
      v22 = v31;
      v39 = v22;
      v43 = &v44;
      v40 = metadataCopy;
      v23 = v26;
      v41 = v23;
      v24 = v13;
      v42 = v24;
      [v12 enumerateKeysAndObjectsUsingBlock:v36];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10002E2F8;
      v32[3] = &unk_1000D1C68;
      v25 = v21;
      v33 = v25;
      v34 = v22;
      v35 = &v44;
      [v24 enumerateKeysAndObjectsUsingBlock:v32];
      handlerCopy[2](handlerCopy, v23, v25, *(v45 + 24));

      _Block_object_dispose(&v44, 8);
    }
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = newValueCopy;
    v15 = [v14 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v15)
    {
      v16 = *v49;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v49 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v48 + 1) + 8 * i);
          v52 = @"last-received";
          v53 = v31;
          v19 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v20 = [v18 objectForKeyedSubscript:@"identifier"];
          [v10 setObject:v19 forKeyedSubscript:v20];
        }

        v15 = [v14 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v15);
    }

    handlerCopy[2](handlerCopy, v14, v10, 1);
  }
}

- (id)_filteredArray:(id)array metadata:(id)metadata lastAcknowledgedDate:(id)date
{
  arrayCopy = array;
  metadataCopy = metadata;
  dateCopy = date;
  v26 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [arrayCopy count]);
  v25 = [RMDateFormat stringUTCFractionalSecondsWithDate:dateCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = arrayCopy;
  v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:@"identifier"];
        v16 = [metadataCopy objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:@"last-received"];

        if (!dateCopy || [v17 compare:v25] == 1)
        {
          [v26 addObject:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002E680;
  v27[3] = &unk_1000D1C90;
  v28 = dateCopy;
  v29 = v25;
  v18 = v26;
  v30 = v18;
  v19 = v25;
  v20 = dateCopy;
  [metadataCopy enumerateKeysAndObjectsUsingBlock:v27];
  v21 = v30;
  v22 = v18;

  return v18;
}

- (id)_buildDictionaryFromArrayValue:(id)value
{
  valueCopy = value;
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [valueCopy count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = valueCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"identifier", v13}];
        [v4 setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

@end
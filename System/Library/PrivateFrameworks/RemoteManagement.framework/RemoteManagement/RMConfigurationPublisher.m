@interface RMConfigurationPublisher
+ (id)_start;
+ (id)reportDetails;
+ (id)sharedConfigurationPublisher;
+ (void)fetchVisibleConfigurationUIs;
+ (void)reprocessActiveConfigurations;
- (RMConfigurationPublisher)initWithPersistentActiveIdentifiers:(id)a3 context:(id)a4;
- (RMConfigurationPublisherDelegate)delegate;
- (id)_createInternalPlugins;
- (void)_addEventStreamSubscriberWithSubscription:(id)a3;
- (void)_fetchVisibleConfigurationUIs;
- (void)_loadAllConfigurationSubscribersAllowingThemToCheckForChanges;
- (void)_loadPlugins;
- (void)_managedObjectContextDidSave:(id)a3;
- (void)_notifyChangedConfigurationsForTypes:(id)a3;
- (void)_notifyChangedConfigurationsIfNeededWithStatusUpdate:(BOOL)a3;
- (void)_notifyMissingConfigurationUIsForTypes:(id)a3;
- (void)_notifySubscribersWithConfigurationTypes:(id)a3;
- (void)_notifySubscribersWithMissingConfigurationUITypes:(id)a3;
- (void)_removeEventStreamSubscriberForToken:(unint64_t)a3;
- (void)_reprocessActiveConfigurations;
- (void)_start;
@end

@implementation RMConfigurationPublisher

+ (id)sharedConfigurationPublisher
{
  if (qword_1000E67B0 != -1)
  {
    sub_10002257C();
  }

  v3 = qword_1000E67A8;

  return v3;
}

+ (id)_start
{
  if (+[RMBundle managementScope]== 1)
  {
    v2 = "com.apple.remotemanagement.configs.daemon";
  }

  else
  {
    v2 = "com.apple.remotemanagement.configs.agent";
  }

  v3 = dispatch_queue_create(v2, 0);
  v4 = xpc_event_publisher_create();
  v5 = +[RMPersistentController sharedController];
  v6 = [v5 persistentContainer];

  v7 = [v6 newBackgroundContext];
  v8 = +[RMInternalStateArchiver sharedArchiver];
  v9 = [v8 persistentActiveIdentifiers];
  v10 = [[RMConfigurationPublisher alloc] initWithPersistentActiveIdentifiers:v9 context:v7];
  [(RMConfigurationPublisher *)v10 setDelegate:v8];
  v15 = v10;
  v16 = v4;
  v11 = v4;
  xpc_event_publisher_set_handler();
  v14 = v15;
  xpc_event_publisher_set_error_handler();
  xpc_event_publisher_activate();
  v12 = v14;

  return v14;
}

- (RMConfigurationPublisher)initWithPersistentActiveIdentifiers:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = RMConfigurationPublisher;
  v9 = [(RMConfigurationPublisher *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistentActiveIdentifiers, a3);
    v11 = objc_opt_new();
    plugins = v10->_plugins;
    v10->_plugins = v11;

    objc_storeStrong(&v10->_context, a4);
    v13 = objc_opt_new();
    eventStreamSubscriptionByToken = v10->_eventStreamSubscriptionByToken;
    v10->_eventStreamSubscriptionByToken = v13;

    v15 = objc_opt_new();
    startLock = v10->_startLock;
    v10->_startLock = v15;

    v17 = objc_opt_new();
    notificationLock = v10->_notificationLock;
    v10->_notificationLock = v17;

    v19 = objc_opt_new();
    pluginsLock = v10->_pluginsLock;
    v10->_pluginsLock = v19;
  }

  return v10;
}

- (void)_start
{
  v3 = self->_startLock;
  objc_sync_enter(v3);
  if (self->_started)
  {
    v4 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10002264C();
    }

    objc_sync_exit(v3);
  }

  else
  {
    self->_started = 1;
    objc_sync_exit(v3);

    v3 = _os_activity_create(&_mh_execute_header, "ConfigurationPublisher: Starting...", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v5 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting configuration publisher...", v10, 2u);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(RMConfigurationPublisher *)self context];
    v8 = [v7 persistentStoreCoordinator];
    [v6 addObserver:self selector:"_managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveObjectIDsNotification object:v8];

    [(RMConfigurationPublisher *)self _loadAllConfigurationSubscribersAllowingThemToCheckForChanges];
    [(RMConfigurationPublisher *)self _notifyChangedConfigurationsIfNeeded];
    v9 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100022618();
    }

    os_activity_scope_leave(&state);
  }
}

- (void)_addEventStreamSubscriberWithSubscription:(id)a3
{
  v4 = a3;
  v5 = [v4 token];
  v6 = [NSNumber numberWithUnsignedLongLong:v5];
  v7 = self->_pluginsLock;
  objc_sync_enter(v7);
  v8 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100022680();
  }

  v9 = [(RMConfigurationPublisher *)self eventStreamSubscriptionByToken];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    objc_sync_exit(v7);

    v11 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000226F8();
    }
  }

  else
  {
    v12 = [(RMConfigurationPublisher *)self eventStreamSubscriptionByToken];
    [v12 setObject:v4 forKeyedSubscript:v6];

    v13 = [(RMConfigurationPublisher *)self plugins];
    [v13 addObject:v4];

    objc_sync_exit(v7);
    v11 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      v15 = v5;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Added subscriber for %llu: %{public}@.", &v14, 0x16u);
    }
  }
}

- (void)_removeEventStreamSubscriberForToken:(unint64_t)a3
{
  v5 = self->_pluginsLock;
  objc_sync_enter(v5);
  v6 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100022770();
  }

  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = [(RMConfigurationPublisher *)self eventStreamSubscriptionByToken];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [(RMConfigurationPublisher *)self eventStreamSubscriptionByToken];
    [v10 removeObjectForKey:v7];

    v11 = [(RMConfigurationPublisher *)self plugins];
    [v11 removeObject:v9];

    objc_sync_exit(v5);
    v12 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218242;
      v14 = a3;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removed subscriber for %llu: %{public}@.", &v13, 0x16u);
    }
  }

  else
  {

    objc_sync_exit(v5);
    v12 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000227E4();
    }
  }
}

- (void)_loadAllConfigurationSubscribersAllowingThemToCheckForChanges
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v16 = _os_activity_create(&_mh_execute_header, "ConfigurationPublisher: Loading configuration subscriber plugins...", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v16, &state);
  v3 = self->_pluginsLock;
  objc_sync_enter(v3);
  [(RMConfigurationPublisher *)self _loadPlugins];
  v4 = [(RMConfigurationPublisher *)self plugins];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(RMConfigurationPublisher *)self plugins];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = +[RMLog configurationPublisher];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = [v10 identifier];
          sub_100022858(v12, v24, &v25, v11);
        }

        v13 = [v10 identifier];
        [v5 addObject:v13];

        v14 = [v10 configurationTypes];
        [v10 applyChangedConfigurationsTypes:v14];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v7);
  }

  v15 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Finished loading configuration subscriber plugins: %{public}@", buf, 0xCu);
  }

  objc_sync_exit(v3);
  os_activity_scope_leave(&state);
}

- (void)_loadPlugins
{
  v3 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000228B4();
  }

  v4 = [(RMConfigurationPublisher *)self plugins];
  v5 = +[RMConfigurationSubscriberServicePlugin loadPlugins];
  [v4 addObjectsFromArray:v5];

  v6 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000228E8();
  }

  v7 = [(RMConfigurationPublisher *)self plugins];
  v8 = [(RMConfigurationPublisher *)self _createInternalPlugins];
  [v7 addObjectsFromArray:v8];
}

- (id)_createInternalPlugins
{
  v2 = objc_opt_new();
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

+ (void)reprocessActiveConfigurations
{
  v2 = +[RMConfigurationPublisher sharedConfigurationPublisher];
  [v2 _reprocessActiveConfigurations];
}

- (void)_reprocessActiveConfigurations
{
  v3 = objc_opt_new();
  v4 = [(RMConfigurationPublisher *)self persistentActiveIdentifiers];
  [v4 setUniqueIdentifiersByConfigurationType:v3];

  [(RMConfigurationPublisher *)self _notifyChangedConfigurationsIfNeededWithStatusUpdate:0];
}

+ (void)fetchVisibleConfigurationUIs
{
  v2 = +[RMConfigurationPublisher sharedConfigurationPublisher];
  [v2 _fetchVisibleConfigurationUIs];
}

- (void)_fetchVisibleConfigurationUIs
{
  v3 = [(RMConfigurationPublisher *)self context];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020B38;
  v4[3] = &unk_1000D0F50;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

+ (id)reportDetails
{
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = +[RMConfigurationPublisher sharedConfigurationPublisher];
  v4 = [v3 plugins];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) reportDetails];
        [v2 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)_managedObjectContextDidSave:(id)a3
{
  v4 = a3;
  v5 = self->_startLock;
  objc_sync_enter(v5);
  v45 = v4;
  if (self->_started)
  {
    val = self;
    objc_sync_exit(v5);

    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:NSInsertedObjectIDsKey];

    v8 = [v4 userInfo];
    v44 = [v8 objectForKeyedSubscript:NSUpdatedObjectIDsKey];

    v9 = [v4 userInfo];
    v43 = [v9 objectForKeyedSubscript:NSDeletedObjectIDsKey];

    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v7;
    v10 = [obj countByEnumeratingWithState:&v49 objects:buf count:16];
    if (v10)
    {
      v11 = *v50;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v49 + 1) + 8 * i);
          v14 = [v13 entity];
          v15 = +[RMConfigurationPayload entity];
          if ([v14 isKindOfEntity:v15])
          {
            goto LABEL_37;
          }

          v16 = +[RMConfigurationPayloadState entity];
          if ([v14 isKindOfEntity:v16])
          {

LABEL_37:
LABEL_38:

LABEL_45:
            objc_initWeak(buf, val);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000215AC;
            block[3] = &unk_1000D1390;
            objc_copyWeak(&v48, buf);
            dispatch_async(&_dispatch_main_q, block);
            objc_destroyWeak(&v48);
            objc_destroyWeak(buf);
            goto LABEL_46;
          }

          v17 = +[RMAssetPayloadReference entity];
          v18 = [v14 isKindOfEntity:v17];

          if (v18)
          {
            goto LABEL_38;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v49 objects:buf count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v19 = v44;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v49 objects:buf count:16];
    if (v21)
    {
      v22 = *v50;
      while (2)
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v49 + 1) + 8 * j);
          v25 = [v24 entity];
          v26 = +[RMConfigurationPayload entity];
          if ([v25 isKindOfEntity:v26])
          {
            goto LABEL_40;
          }

          v27 = +[RMConfigurationPayloadState entity];
          if ([v25 isKindOfEntity:v27])
          {

LABEL_40:
LABEL_44:

            goto LABEL_45;
          }

          v28 = +[RMAssetPayloadReference entity];
          v29 = [v25 isKindOfEntity:v28];

          if (v29)
          {
            goto LABEL_44;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v49 objects:buf count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v30 = v43;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v20 = v30;
    v31 = [v20 countByEnumeratingWithState:&v49 objects:buf count:16];
    if (v31)
    {
      v32 = *v50;
      while (2)
      {
        for (k = 0; k != v31; k = k + 1)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(v20);
          }

          v34 = *(*(&v49 + 1) + 8 * k);
          v35 = [v34 entity];
          v36 = +[RMConfigurationPayload entity];
          if ([v35 isKindOfEntity:v36])
          {
            goto LABEL_43;
          }

          v37 = +[RMConfigurationPayloadState entity];
          if ([v35 isKindOfEntity:v37])
          {

LABEL_43:
            goto LABEL_44;
          }

          v38 = +[RMAssetPayloadReference entity];
          v39 = [v35 isKindOfEntity:v38];

          if (v39)
          {
            goto LABEL_44;
          }
        }

        v31 = [v20 countByEnumeratingWithState:&v49 objects:buf count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

LABEL_46:
    v5 = obj;
  }

  else
  {
    v40 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v4 name];
      *buf = 138543362;
      v54 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Ignoring %{public}@, the publisher has not finish starting yet.", buf, 0xCu);
    }

    objc_sync_exit(v5);
  }
}

- (void)_notifyChangedConfigurationsIfNeededWithStatusUpdate:(BOOL)a3
{
  v34 = a3;
  v3 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000229C4();
  }

  obj = self->_notificationLock;
  objc_sync_enter(obj);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100021B2C;
  v45 = sub_100021B3C;
  v46 = 0;
  v4 = [(RMConfigurationPublisher *)self context];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100021B44;
  v40[3] = &unk_1000D13E0;
  v40[4] = &v41;
  [v4 performBlockAndWait:v40];

  v5 = self->_persistentActiveIdentifiers;
  [(RMConfigurationPublisher *)self setPersistentActiveIdentifiers:v42[5]];
  v6 = v42[5];
  v36 = v5;
  v37 = v6;
  v7 = [(RMPersistentActiveIdentifiers *)v36 uniqueIdentifiersByConfigurationType];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  v11 = [v37 uniqueIdentifiersByConfigurationType];
  v12 = [v10 allKeys];
  v13 = [v11 allKeys];
  v14 = [v12 arrayByAddingObjectsFromArray:v13];
  v15 = [NSSet setWithArray:v14];

  v39 = objc_opt_new();
  v50 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v47 objects:buf count:16];
  if (v17)
  {
    v18 = *v48;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v47 + 1) + 8 * i);
        v21 = [v10 objectForKeyedSubscript:v20];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = objc_opt_new();
        }

        v24 = v23;

        v25 = [v11 objectForKeyedSubscript:v20];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = objc_opt_new();
        }

        v28 = v27;

        if (([v24 isEqualToSet:v28] & 1) == 0)
        {
          [v39 addObject:v20];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v47 objects:buf count:16];
    }

    while (v17);
  }

  if ([v39 count])
  {
    v29 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = v39;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Changed configuration types: %{public}@", buf, 0xCu);
    }

    [(RMConfigurationPublisher *)self _notifyChangedConfigurationsForTypes:v39];
    v30 = [(RMConfigurationPublisher *)self delegate];
    [v30 configurationPublisher:self didChangePersistentActiveIdentifiers:v42[5]];

    if (v34)
    {
      v31 = +[RMLog configurationPublisher];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_100022A2C();
      }

      v32 = +[RMStoreController sharedController];
      [v32 observerStoresDidChange];

      v33 = +[RMSubscribedStatusKeyPathUpdater sharedUpdater];
      [v33 notifyStatusDidChangeForDeclarations];
    }

    else
    {
      v33 = +[RMLog configurationPublisher];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        sub_1000229F8();
      }
    }
  }

  else
  {
    v33 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100022A60();
    }
  }

  _Block_object_dispose(&v41, 8);
  objc_sync_exit(obj);
}

- (void)_notifyChangedConfigurationsForTypes:(id)a3
{
  v4 = a3;

  v5 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100022B08(v4);
  }

  [(RMConfigurationPublisher *)self _notifySubscribersWithConfigurationTypes:v4];
  v6 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 allObjects];
    v8 = [v7 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v9 = [v8 componentsJoinedByString:{@", "}];

    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified configuration subscribers with configurations of types: %{public}@", &v10, 0xCu);
  }
}

- (void)_notifySubscribersWithConfigurationTypes:(id)a3
{
  v4 = a3;

  obj = self->_pluginsLock;
  objc_sync_enter(obj);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(RMConfigurationPublisher *)self plugins];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 configurationTypes];
        v11 = [v10 mutableCopy];

        [v11 intersectSet:v4];
        if ([v11 count])
        {
          v12 = +[RMLog configurationPublisher];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v9 identifier];
            *buf = 138543362;
            v20 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Triggering configuration subscriber plugin: %{public}@", buf, 0xCu);
          }

          [v9 applyChangedConfigurationsTypes:v11];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
}

- (void)_notifyMissingConfigurationUIsForTypes:(id)a3
{
  v4 = a3;

  v5 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100022BC8(v4);
  }

  [(RMConfigurationPublisher *)self _notifySubscribersWithMissingConfigurationUITypes:v4];
  v6 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 allObjects];
    v8 = [v7 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v9 = [v8 componentsJoinedByString:{@", "}];

    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified configuration subscribers for UI with configurations of types: %{public}@", &v10, 0xCu);
  }
}

- (void)_notifySubscribersWithMissingConfigurationUITypes:(id)a3
{
  v4 = a3;

  obj = self->_pluginsLock;
  objc_sync_enter(obj);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(RMConfigurationPublisher *)self plugins];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 configurationTypes];
        v11 = [v10 mutableCopy];

        [v11 intersectSet:v4];
        if ([v11 count])
        {
          v12 = +[RMLog configurationPublisher];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v9 identifier];
            *buf = 138543362;
            v20 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Triggering configuration subscriber UI plugin: %{public}@", buf, 0xCu);
          }

          [v9 fetchMissingConfigurationUIs];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  objc_sync_exit(obj);
}

- (RMConfigurationPublisherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
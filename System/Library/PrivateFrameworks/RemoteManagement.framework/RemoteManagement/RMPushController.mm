@interface RMPushController
+ (RMPushController)sharedController;
+ (id)_connectionWithEnvironmentName:(id)name queue:(id)queue;
+ (void)start;
- (BOOL)persistentHistoryNotifier:(id)notifier isChangeInteresting:(id)interesting stop:(BOOL *)stop;
- (NSSet)supportedKeyPaths;
- (RMPushController)initWithPushTokenByEnvironmentName:(id)name subscribedStatusKeyPathUpdater:(id)updater context:(id)context;
- (RMPushControllerDelegate)delegate;
- (id)_cachedPushTokenByEnvironment;
- (id)_currentPushTokenByEnvironmentName;
- (id)_environmentNameForConnection:(id)connection;
- (id)_pushEnvironmentNameForManagementChannel:(id)channel error:(id *)error;
- (id)queryForStatusWithKeyPaths:(id)paths onBehalfOfManagementChannel:(id)channel error:(id *)error;
- (void)_notifyPushTokenDidChangeIfNeeded;
- (void)_start;
- (void)_stop;
- (void)_updateConnections;
- (void)_updatePushReceivedWithTopic:(id)topic enrollmentToken:(id)token syncTokens:(id)tokens forEnvironmentName:(id)name;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)persistentHistoryNotifier:(id)notifier hasChanges:(id)changes;
@end

@implementation RMPushController

+ (RMPushController)sharedController
{
  if (qword_1000E6A80 != -1)
  {
    sub_100060A2C();
  }

  v3 = qword_1000E6A78;

  return v3;
}

+ (void)start
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E518;
  block[3] = &unk_1000D12D0;
  block[4] = self;
  if (qword_1000E6A88 != -1)
  {
    dispatch_once(&qword_1000E6A88, block);
  }
}

- (RMPushController)initWithPushTokenByEnvironmentName:(id)name subscribedStatusKeyPathUpdater:(id)updater context:(id)context
{
  nameCopy = name;
  updaterCopy = updater;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = RMPushController;
  v11 = [(RMPushController *)&v27 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &__NSDictionary0__struct;
    }

    objc_storeStrong(&v11->_pushTokenByEnvironmentName, v14);

    objc_storeStrong(&v11->_subscribedStatusKeyPathUpdater, updater);
    objc_storeStrong(&v11->_context, context);
    v15 = objc_opt_new();
    connectionByEnvironmentName = v11->_connectionByEnvironmentName;
    v11->_connectionByEnvironmentName = v15;

    v17 = objc_opt_new();
    pushTokenByEnvironmentNameLock = v11->_pushTokenByEnvironmentNameLock;
    v11->_pushTokenByEnvironmentNameLock = v17;

    v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v20 = dispatch_queue_create("com.apple.remotemanagementd.push", v19);
    serialQueue = v11->_serialQueue;
    v11->_serialQueue = v20;

    v22 = [[RMPersistentHistoryNotifier alloc] initWithContext:contextCopy];
    persistentHistoryNotifier = v11->_persistentHistoryNotifier;
    v11->_persistentHistoryNotifier = v22;

    transactionAuthor = [contextCopy transactionAuthor];
    if (transactionAuthor)
    {
      v25 = [NSSet setWithObject:transactionAuthor];
      [(RMPersistentHistoryNotifier *)v11->_persistentHistoryNotifier setIgnoredTransactionAuthors:v25];
    }

    [(RMPersistentHistoryNotifier *)v11->_persistentHistoryNotifier setDelegate:v11];
  }

  return v11;
}

- (void)dealloc
{
  [(RMPushController *)self _stop];
  v3.receiver = self;
  v3.super_class = RMPushController;
  [(RMPushController *)&v3 dealloc];
}

- (void)_stop
{
  connectionByEnvironmentName = self->_connectionByEnvironmentName;
  if (connectionByEnvironmentName)
  {
    [(NSMutableDictionary *)connectionByEnvironmentName enumerateKeysAndObjectsUsingBlock:&stru_1000D2890];
    v4 = self->_connectionByEnvironmentName;
    self->_connectionByEnvironmentName = 0;
  }
}

- (void)_start
{
  v3 = _os_activity_create(&_mh_execute_header, "PushController: starting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v3, &v4);
  [(RMPersistentHistoryNotifier *)self->_persistentHistoryNotifier start];
  [(RMPushController *)self _updateConnections];
  [(RMPushController *)self _notifyPushTokenDidChangeIfNeeded];
  os_activity_scope_leave(&v4);
}

- (void)_updateConnections
{
  context = [(RMPushController *)self context];
  v19[0] = APSEnvironmentProduction;
  v4 = objc_opt_new();
  v20[0] = v4;
  v19[1] = APSEnvironmentDevelopment;
  v5 = objc_opt_new();
  v20[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100060768;
  v17[3] = &unk_1000D0F50;
  v7 = v6;
  v18 = v7;
  [context performBlockAndWait:v17];

  v8 = self->_connectionByEnvironmentName;
  serialQueue = [(RMPushController *)self serialQueue];
  v10 = self->_connectionByEnvironmentName;
  objc_sync_enter(v10);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005EA9C;
  v13[3] = &unk_1000D28B8;
  v11 = v8;
  v14 = v11;
  v12 = serialQueue;
  v15 = v12;
  selfCopy = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  objc_sync_exit(v10);
}

+ (id)_connectionWithEnvironmentName:(id)name queue:(id)queue
{
  v5 = qword_1000E6A98;
  queueCopy = queue;
  nameCopy = name;
  if (v5 != -1)
  {
    sub_100060A40();
  }

  v8 = [qword_1000E6A90 objectForKeyedSubscript:nameCopy];
  v9 = [[APSConnection alloc] initWithEnvironmentName:nameCopy namedDelegatePort:v8 queue:queueCopy];

  return v9;
}

- (void)_notifyPushTokenDidChangeIfNeeded
{
  v3 = objc_opt_new();
  v24 = self->_pushTokenByEnvironmentNameLock;
  objc_sync_enter(v24);
  v4 = self->_pushTokenByEnvironmentName;
  selfCopy = self;
  _currentPushTokenByEnvironmentName = [(RMPushController *)self _currentPushTokenByEnvironmentName];
  allKeys = [(NSDictionary *)v4 allKeys];
  v7 = [NSMutableSet setWithArray:allKeys];

  allKeys2 = [_currentPushTokenByEnvironmentName allKeys];
  [v7 addObjectsFromArray:allKeys2];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v9)
  {
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [(NSDictionary *)v4 objectForKeyedSubscript:v12, v24];
        v14 = [_currentPushTokenByEnvironmentName objectForKeyedSubscript:v12];
        if (v14)
        {
          v15 = 1;
        }

        else
        {
          v15 = v13 == 0;
        }

        if (v15)
        {
          [v3 setObject:v14 forKeyedSubscript:v12];
        }

        else
        {
          v16 = +[RMLog push];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v32 = v12;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Push token for %{public}@ has been removed, ignoring change...", buf, 0xCu);
          }

          [v3 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v9);
  }

  v18 = [v3 isEqual:v4];
  v19 = v18;
  if (v18)
  {
    p_super = +[RMLog push];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      sub_100060A54(p_super);
    }
  }

  else
  {
    v21 = [v3 copy];
    p_super = &selfCopy->_pushTokenByEnvironmentName->super;
    selfCopy->_pushTokenByEnvironmentName = v21;
  }

  objc_sync_exit(v24);
  if ((v19 & 1) == 0)
  {
    subscribedStatusKeyPathUpdater = [(RMPushController *)selfCopy subscribedStatusKeyPathUpdater];
    [subscribedStatusKeyPathUpdater notifyStatusDidChangeForKeyPath:RMModelStatusItemManagementPushToken];

    delegate = [(RMPushController *)selfCopy delegate];
    [delegate pushController:selfCopy didChangePushTokenByEnvironmentName:v3];
  }
}

- (id)_cachedPushTokenByEnvironment
{
  v3 = self->_pushTokenByEnvironmentNameLock;
  objc_sync_enter(v3);
  v4 = [(NSDictionary *)self->_pushTokenByEnvironmentName copy];
  objc_sync_exit(v3);

  return v4;
}

- (id)_currentPushTokenByEnvironmentName
{
  v3 = objc_opt_new();
  v4 = self->_connectionByEnvironmentName;
  objc_sync_enter(v4);
  connectionByEnvironmentName = self->_connectionByEnvironmentName;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005F184;
  v8[3] = &unk_1000D2900;
  v6 = v3;
  v9 = v6;
  [(NSMutableDictionary *)connectionByEnvironmentName enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v4);

  return v6;
}

- (NSSet)supportedKeyPaths
{
  v5 = RMModelStatusItemManagementPushToken;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (id)queryForStatusWithKeyPaths:(id)paths onBehalfOfManagementChannel:(id)channel error:(id *)error
{
  pathsCopy = paths;
  v9 = [(RMPushController *)self _pushEnvironmentNameForManagementChannel:channel error:error];
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = RMModelStatusItemManagementPushToken;
    if ([pathsCopy containsObject:RMModelStatusItemManagementPushToken])
    {
      _currentPushTokenByEnvironmentName = [(RMPushController *)self _currentPushTokenByEnvironmentName];
      _cachedPushTokenByEnvironment = [(RMPushController *)self _cachedPushTokenByEnvironment];
      v14 = [_currentPushTokenByEnvironmentName objectForKeyedSubscript:v9];
      v15 = [_cachedPushTokenByEnvironment objectForKeyedSubscript:v9];
      v16 = v15;
      v17 = v14;
      if (v14 || (v17 = v15) != 0)
      {
        [v10 setObject:v17 forKeyedSubscript:v11];
      }

      else
      {
        v19 = +[NSNull null];
        [v10 setObject:v19 forKeyedSubscript:v11];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_pushEnvironmentNameForManagementChannel:(id)channel error:(id *)error
{
  channelCopy = channel;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10005F5DC;
  v26 = sub_10005F5EC;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10005F5DC;
  v20 = sub_10005F5EC;
  v21 = 0;
  context = [(RMPushController *)self context];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005F5F4;
  v12[3] = &unk_1000D18B8;
  v8 = channelCopy;
  v13 = v8;
  v14 = &v16;
  v15 = &v22;
  [context performBlockAndWait:v12];
  v9 = v17[5];
  if (v9)
  {
    v10 = 0;
    if (error)
    {
      *error = v9;
    }
  }

  else
  {
    v10 = v23[5];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  v7 = [(RMPushController *)self _environmentNameForConnection:connection];
  v8 = +[RMLog push];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = tokenCopy;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Push token received: %{public}@ in environment: %{public}@", &v9, 0x16u);
  }

  [(RMPushController *)self _notifyPushTokenDidChangeIfNeeded];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  v7 = [(RMPushController *)self _environmentNameForConnection:connection];
  v8 = +[RMLog push];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = messageCopy;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Push notification received: %{public}@ in environment: %{public}@", buf, 0x16u);
  }

  if (v7)
  {
    topic = [messageCopy topic];
    userInfo = [messageCopy userInfo];
    if (userInfo)
    {
      v11 = userInfo;
      v16 = 0;
      v12 = [RMProtocolPushMessage load:userInfo serializationType:1 error:&v16];
      v13 = v16;
      if (v12)
      {
        messageEnrollmentToken = [v12 messageEnrollmentToken];
        messageSyncTokens = [v12 messageSyncTokens];
        [(RMPushController *)self _updatePushReceivedWithTopic:topic enrollmentToken:messageEnrollmentToken syncTokens:messageSyncTokens forEnvironmentName:v7];
      }

      else
      {
        messageEnrollmentToken = +[RMLog push];
        if (os_log_type_enabled(messageEnrollmentToken, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v18 = topic;
          v19 = 2114;
          v20 = v7;
          v21 = 2114;
          v22 = v13;
          _os_log_error_impl(&_mh_execute_header, messageEnrollmentToken, OS_LOG_TYPE_ERROR, "Unable to parse push message for topic: %{public}@ in environment: %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v11 = +[RMLog push];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100060B48();
      }
    }
  }
}

- (void)_updatePushReceivedWithTopic:(id)topic enrollmentToken:(id)token syncTokens:(id)tokens forEnvironmentName:(id)name
{
  topicCopy = topic;
  tokenCopy = token;
  tokensCopy = tokens;
  nameCopy = name;
  v14 = +[RMLog push];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v27 = nameCopy;
    v28 = 2114;
    v29 = tokenCopy;
    v30 = 2114;
    v31 = topicCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Received push for environment: %{public}@ enrollment token: %{public}@ topic: %{public}@", buf, 0x20u);
  }

  [(RMPushController *)self context];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10005FD08;
  v20[3] = &unk_1000D2928;
  v21 = nameCopy;
  v22 = tokenCopy;
  v23 = topicCopy;
  v25 = v24 = tokensCopy;
  v15 = v25;
  v16 = tokensCopy;
  v17 = topicCopy;
  v18 = tokenCopy;
  v19 = nameCopy;
  [v15 performBlockAndWait:v20];
}

- (id)_environmentNameForConnection:(id)connection
{
  connectionCopy = connection;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10005F5DC;
  v17 = sub_10005F5EC;
  v18 = 0;
  v5 = self->_connectionByEnvironmentName;
  objc_sync_enter(v5);
  connectionByEnvironmentName = self->_connectionByEnvironmentName;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000602B0;
  v10[3] = &unk_1000D2950;
  v7 = connectionCopy;
  v11 = v7;
  v12 = &v13;
  [(NSMutableDictionary *)connectionByEnvironmentName enumerateKeysAndObjectsUsingBlock:v10];

  objc_sync_exit(v5);
  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (BOOL)persistentHistoryNotifier:(id)notifier isChangeInteresting:(id)interesting stop:(BOOL *)stop
{
  interestingCopy = interesting;
  changeType = [interestingCopy changeType];
  changedObjectID = [interestingCopy changedObjectID];
  entity = [changedObjectID entity];

  v10 = entity;
  v11 = v10;
  if ((changeType & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
  }

  else
  {
    v13 = +[RMHTTPConduitState entity];
    if ([v11 isKindOfEntity:v13])
    {
      v14 = v11;
      goto LABEL_11;
    }

    v22 = +[RMHTTPConduitConfig entity];
    v23 = [v11 isKindOfEntity:v22];

    if (v23)
    {
      goto LABEL_13;
    }
  }

  updatedProperties = [interestingCopy updatedProperties];
  v13 = v11;
  v14 = updatedProperties;
  if (changeType == 1 && (+[RMHTTPConduitState entity](RMHTTPConduitState, "entity"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v13 isKindOfEntity:v15], v15, v16))
  {
    propertiesByName = [v13 propertiesByName];
    v18 = [propertiesByName objectForKeyedSubscript:@"pushEnvironment"];

    propertiesByName2 = [v13 propertiesByName];
    v20 = [propertiesByName2 objectForKeyedSubscript:@"pushTopic"];

    if ([v14 containsObject:v18])
    {

LABEL_11:
LABEL_13:

LABEL_14:
      v21 = 1;
      *stop = 1;
      goto LABEL_15;
    }

    v25 = [v14 containsObject:v20];

    if (v25)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v21 = 0;
LABEL_15:

  return v21;
}

- (void)persistentHistoryNotifier:(id)notifier hasChanges:(id)changes
{
  notifierCopy = notifier;
  changesCopy = changes;
  insertedObjectIDs = [changesCopy insertedObjectIDs];
  if (![insertedObjectIDs count])
  {
    updatedObjectIDs = [changesCopy updatedObjectIDs];
    if (![updatedObjectIDs count])
    {
      deletedObjectIDs = [changesCopy deletedObjectIDs];
      v12 = [deletedObjectIDs count];

      if (!v12)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  v10 = _os_activity_create(&_mh_execute_header, "PushController: refreshing", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v10, &v13);
  [(RMPushController *)self _updateConnections];
  os_activity_scope_leave(&v13);

LABEL_6:
}

- (RMPushControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
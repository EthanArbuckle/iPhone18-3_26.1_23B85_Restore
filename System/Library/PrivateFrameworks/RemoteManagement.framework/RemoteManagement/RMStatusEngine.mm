@interface RMStatusEngine
- (RMStatusEngine)initWithManagementSourceObjectID:(id)d statusQuerier:(id)querier inContext:(id)context;
- (RMStatusEngineDelegate)delegate;
- (id)_queryForStatusSubscriptionsReturningOnlyUnacknowledgedOnes:(BOOL)ones;
- (id)_queryForStatusWithLastReceivedDateByKeyPath:(id)path lastAcknowledgedDateByKeyPath:(id)keyPath;
- (id)queryForStatusSubscriptionsWithIdentifiers:(id)identifiers;
- (id)queryForStatusSubscriptionsWithKeyPaths:(id)paths;
- (id)queryForStatusWithKeyPaths:(id)paths;
- (void)_notifyDelegateOfUnacknowledgedStatusSubscriptionsIfNeeded;
- (void)_statusDidChange:(id)change;
- (void)_subscribeToStatusKeyPaths:(id)paths sourceType:(signed __int16)type;
- (void)acknowledgeStatusSubscriptions:(id)subscriptions;
- (void)clearAllLastAcknowledgedDate;
- (void)start;
@end

@implementation RMStatusEngine

- (RMStatusEngine)initWithManagementSourceObjectID:(id)d statusQuerier:(id)querier inContext:(id)context
{
  dCopy = d;
  querierCopy = querier;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = RMStatusEngine;
  v12 = [(RMStatusEngine *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_managementSourceObjectID, d);
    objc_storeStrong(&v13->_statusQuerier, querier);
    v14 = [RMDebounceTimer debounceTimerWithMinimumInterval:v13 maximumInterval:@"RMStatusEngine" delegate:5.0 identifier:60.0];
    debouncer = v13->_debouncer;
    v13->_debouncer = v14;
  }

  return v13;
}

- (void)start
{
  v3 = +[RMLog statusEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000666A4(v3);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_statusDidChange:" name:@"RMSubscribedStatusKeyPathDidChangeNotification" object:0];

  [(RMStatusEngine *)self _notifyDelegateOfUnacknowledgedStatusSubscriptionsIfNeeded];
  v5 = +[RMLog statusEngine];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Started status engine...", v6, 2u);
  }
}

- (void)_statusDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"RMUserInfoKeyUpdatedManagementSourceObjectIDs"];
  if (!v4 || (-[RMStatusEngine managementSourceObjectID](self, "managementSourceObjectID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 containsObject:v5], v5, v6))
  {
    debouncer = [(RMStatusEngine *)self debouncer];
    [debouncer trigger];
  }
}

- (void)_notifyDelegateOfUnacknowledgedStatusSubscriptionsIfNeeded
{
  context = [(RMStatusEngine *)self context];
  managementSourceObjectID = [(RMStatusEngine *)self managementSourceObjectID];
  v5 = context;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10006657C;
  v15 = &unk_1000D2430;
  v6 = managementSourceObjectID;
  v16 = v6;
  v17 = &v18;
  [v5 performBlockAndWait:&v12];
  v7 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  if (v7 == 1)
  {
    v8 = [RMLog statusEngine:v12];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000666E8(v8);
    }

    delegate = [(RMStatusEngine *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = +[RMLog statusEngine];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notifying delegate of unacknowledged status subscriptions...", &v12, 2u);
      }

      [delegate statusEngineHasUnacknowledgedSubscription:self];
      v11 = +[RMLog statusEngine];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Notified delegate of unacknowledged status subscriptions.", &v12, 2u);
      }
    }
  }
}

- (id)queryForStatusSubscriptionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100063B2C;
  v21 = sub_100063B3C;
  v22 = 0;
  [(RMStatusEngine *)self context];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100063B44;
  v5 = v12 = &unk_1000D1E80;
  v13 = v5;
  selfCopy = self;
  v6 = identifiersCopy;
  v15 = v6;
  v16 = &v17;
  [v5 performBlockAndWait:&v9];
  v7 = [(RMStatusEngine *)self _queryForStatusWithLastReceivedDateByKeyPath:v18[5] lastAcknowledgedDateByKeyPath:0, v9, v10, v11, v12];

  _Block_object_dispose(&v17, 8);

  return v7;
}

- (id)queryForStatusWithKeyPaths:(id)paths
{
  pathsCopy = paths;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100063B2C;
  v30 = sub_100063B3C;
  v31 = 0;
  [(RMStatusEngine *)self context];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000640B8;
  v5 = v21[3] = &unk_1000D1E80;
  v22 = v5;
  selfCopy = self;
  v6 = pathsCopy;
  v24 = v6;
  v25 = &v26;
  [v5 performBlockAndWait:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v32 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v27[5] objectForKeyedSubscript:{v11, v17}];
        v13 = v12 == 0;

        if (v13)
        {
          v14 = +[NSDate distantPast];
          [v27[5] setObject:v14 forKeyedSubscript:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v32 count:16];
    }

    while (v8);
  }

  v15 = [(RMStatusEngine *)self _queryForStatusWithLastReceivedDateByKeyPath:v27[5] lastAcknowledgedDateByKeyPath:0];

  _Block_object_dispose(&v26, 8);

  return v15;
}

- (id)queryForStatusSubscriptionsWithKeyPaths:(id)paths
{
  pathsCopy = paths;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100063B2C;
  v21 = sub_100063B3C;
  v22 = 0;
  [(RMStatusEngine *)self context];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10006450C;
  v5 = v12 = &unk_1000D1E80;
  v13 = v5;
  selfCopy = self;
  v6 = pathsCopy;
  v15 = v6;
  v16 = &v17;
  [v5 performBlockAndWait:&v9];
  v7 = [(RMStatusEngine *)self _queryForStatusWithLastReceivedDateByKeyPath:v18[5] lastAcknowledgedDateByKeyPath:0, v9, v10, v11, v12];

  _Block_object_dispose(&v17, 8);

  return v7;
}

- (void)clearAllLastAcknowledgedDate
{
  [(RMStatusEngine *)self context];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006488C;
  v5 = v4[3] = &unk_1000D1270;
  selfCopy = self;
  v3 = v5;
  [v3 performBlockAndWait:v4];
}

- (id)_queryForStatusSubscriptionsReturningOnlyUnacknowledgedOnes:(BOOL)ones
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100063B2C;
  v24 = sub_100063B3C;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100063B2C;
  v18 = sub_100063B3C;
  v19 = 0;
  [(RMStatusEngine *)self context];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100064D14;
  v8[3] = &unk_1000D1E58;
  v5 = v13 = ones;
  v9 = v5;
  selfCopy = self;
  v11 = &v14;
  v12 = &v20;
  [v5 performBlockAndWait:v8];
  v6 = [(RMStatusEngine *)self _queryForStatusWithLastReceivedDateByKeyPath:v21[5] lastAcknowledgedDateByKeyPath:v15[5]];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v6;
}

- (id)_queryForStatusWithLastReceivedDateByKeyPath:(id)path lastAcknowledgedDateByKeyPath:(id)keyPath
{
  pathCopy = path;
  keyPathCopy = keyPath;
  if ([pathCopy count])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_100063B2C;
    v20 = sub_100063B3C;
    v21 = 0;
    context = self->_context;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100065504;
    v15[3] = &unk_1000D2430;
    v15[4] = self;
    v15[5] = &v16;
    [(NSManagedObjectContext *)context performBlockAndWait:v15];
    allKeys = [pathCopy allKeys];
    v10 = [NSSet setWithArray:allKeys];

    statusQuerier = [(RMStatusEngine *)self statusQuerier];
    if (keyPathCopy)
    {
      [statusQuerier queryForUnacknowledgedStatusWithKeyPaths:v10 lastAcknowledgedDateByKeyPath:keyPathCopy onBehalfOfManagementChannel:v17[5]];
    }

    else
    {
      [statusQuerier queryForStatusWithKeyPaths:v10 onBehalfOfManagementChannel:v17[5]];
    }
    v13 = ;

    v12 = [[RMStatusSubscriptionQueryResult alloc] initWithQueryResult:v13 lastReceivedDateByKeyPath:pathCopy];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v12 = objc_opt_new();
  }

  return v12;
}

- (void)acknowledgeStatusSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  statusKeyPaths = [subscriptionsCopy statusKeyPaths];
  allObjects = [statusKeyPaths allObjects];
  v7 = [allObjects sortedArrayUsingSelector:"localizedCompare:"];

  v8 = +[RMLog statusEngine];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100066874(v7);
  }

  [(RMStatusEngine *)self context];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000656F8;
  v12[3] = &unk_1000D29E0;
  v14 = v13 = subscriptionsCopy;
  selfCopy = self;
  v16 = v7;
  v9 = v7;
  v10 = v14;
  v11 = subscriptionsCopy;
  [v10 performBlockAndWait:v12];
}

- (RMStatusEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_subscribeToStatusKeyPaths:(id)paths sourceType:(signed __int16)type
{
  pathsCopy = paths;
  if ([pathsCopy count])
  {
    v7 = +[RMLog statusEngine];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000669F8(pathsCopy);
    }

    [(RMStatusEngine *)self context];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100065DCC;
    v10 = v9[3] = &unk_1000D2A08;
    selfCopy = self;
    typeCopy = type;
    v12 = pathsCopy;
    v8 = v10;
    [v8 performBlockAndWait:v9];
  }
}

@end
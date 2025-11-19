@interface RMClient
+ (id)_makeConduitWithManagementSourceObjectID:(id)a3 inContext:(id)a4;
- (BOOL)_haltSyncing;
- (RMClient)initWithConduit:(id)a3 activationEngine:(id)a4 statusEngine:(id)a5 managementSourceIdentifier:(id)a6;
- (RMClient)initWithManagementSourceObjectID:(id)a3 managementSourceIdentifier:(id)a4 statusQuerier:(id)a5 persistentContainer:(id)a6;
- (RMClientDelegate)delegate;
- (id)queryForStatusSubscriptionsWithIdentifiers:(id)a3;
- (void)_handleConduitError;
- (void)_processConduitErrorState:(signed __int16)a3;
- (void)_setNeedsSyncing:(BOOL)a3;
- (void)_syncIfNeeded;
- (void)_syncOnlyIfNeeded:(BOOL)a3 completionHandler:(id)a4;
- (void)applyNowWithCompletionHandler:(id)a3;
- (void)conduitNeedsToSendStatusForKeyPaths:(id)a3;
- (void)conduitNeedsToSync:(id)a3;
- (void)enrollWithCompletionHandler:(id)a3;
- (void)reenrollWithCompletionHandler:(id)a3;
- (void)sendStatusData:(id)a3 completionHandler:(id)a4;
- (void)sendStatusForSubscriptionsWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)startWithCompletionHandler:(id)a3;
- (void)statusEngineHasUnacknowledgedSubscription:(id)a3;
- (void)syncIfNeededWithCompletionHandler:(id)a3;
- (void)syncWithCompletionHandler:(id)a3;
- (void)unenrollWithCompletionHandler:(id)a3;
- (void)updateWithPushMessage:(id)a3 completionHandler:(id)a4;
- (void)updateWithTokensResponse:(id)a3 completionHandler:(id)a4;
@end

@implementation RMClient

- (RMClient)initWithManagementSourceObjectID:(id)a3 managementSourceIdentifier:(id)a4 statusQuerier:(id)a5 persistentContainer:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v11 newBackgroundContext];
  [v14 setAutomaticallyMergesChangesFromParent:1];
  v15 = [NSString stringWithFormat:@"%@/%@", @"conduit", v10];
  [v14 setTransactionAuthor:v15];

  v16 = v10;
  v17 = [v11 newBackgroundContext];
  [v17 setAutomaticallyMergesChangesFromParent:1];
  v18 = [NSString stringWithFormat:@"%@/%@", @"engine", v16];

  [v17 setTransactionAuthor:v18];
  v19 = [objc_opt_class() _makeConduitWithManagementSourceObjectID:v13 inContext:v14];
  v20 = [[RMActivationEngine alloc] initWithManagementSourceObjectID:v13 context:v17];
  v21 = [[RMStatusEngine alloc] initWithManagementSourceObjectID:v13 statusQuerier:v12 inContext:v14];

  v22 = [(RMClient *)self initWithConduit:v19 activationEngine:v20 statusEngine:v21 managementSourceIdentifier:v16];
  return v22;
}

- (RMClient)initWithConduit:(id)a3 activationEngine:(id)a4 statusEngine:(id)a5 managementSourceIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = RMClient;
  v15 = [(RMClient *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_conduit, a3);
    [v11 setDelegate:v16];
    objc_storeStrong(&v16->_activationEngine, a4);
    objc_storeStrong(&v16->_statusEngine, a5);
    objc_storeStrong(&v16->_managementSourceIdentifier, a6);
    v17 = objc_opt_new();
    needsSyncingLock = v16->_needsSyncingLock;
    v16->_needsSyncingLock = v17;

    v16->_needsSyncing = 1;
    v19 = [NSString stringWithFormat:@"RMClient-%@", v14];
    v20 = [RMSharedLock newSharedLockWithDescription:v19];
    syncLock = v16->_syncLock;
    v16->_syncLock = v20;

    v16->_firstSync = 1;
    v22 = objc_opt_new();
    operationQueue = v16->_operationQueue;
    v16->_operationQueue = v22;

    [(NSOperationQueue *)v16->_operationQueue setName:@"com.apple.remotemanagementd.client"];
    [(NSOperationQueue *)v16->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v16->_operationQueue setQualityOfService:17];
  }

  return v16;
}

+ (id)_makeConduitWithManagementSourceObjectID:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10000CF20;
  v18 = sub_10000CF30;
  v19 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000CF38;
  v10[3] = &unk_1000D0E38;
  v6 = a4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v13 = &v14;
  [v6 performBlockAndWait:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "Client: Starting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = +[RMLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Starting client...", buf, 2u);
  }

  v7 = [(RMClient *)self statusEngine];
  [v7 setDelegate:self];
  [v7 start];
  v8 = [(RMClient *)self conduit];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D1B4;
  v10[3] = &unk_1000D10D8;
  v10[4] = self;
  v9 = v4;
  v11 = v9;
  [v8 startWithCompletionHandler:v10];

  os_activity_scope_leave(&state);
}

- (void)enrollWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "Client: Enrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = +[RMLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Enrolling...", buf, 2u);
  }

  v7 = [(RMClient *)self statusEngine];
  [v7 clearAllLastAcknowledgedDate];
  v8 = [(RMClient *)self conduit];
  v9 = [v8 statusItemsToImplicitlySubscribeTo];
  [v7 implicitlySubscribeToStatusKeyPaths:v9];

  v10 = [(RMClient *)self conduit];
  v11 = [v10 statusItemsToSendDuringEnrollment];

  v12 = [v7 queryForStatusWithKeyPaths:v11];
  v13 = [(RMClient *)self conduit];
  v14 = [v12 statusByKeyPath];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D570;
  v18[3] = &unk_1000D1100;
  v15 = v7;
  v19 = v15;
  v16 = v12;
  v20 = v16;
  v17 = v4;
  v21 = v17;
  [v13 enrollWithStatusItems:v14 completionHandler:v18];

  os_activity_scope_leave(&state);
}

- (void)reenrollWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "Client: Re-enrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = +[RMLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "re-enrolling...", buf, 2u);
  }

  v7 = [(RMClient *)self statusEngine];
  [v7 clearAllLastAcknowledgedDate];
  v24[0] = RMModelStatusItemManagementClientCapabilities;
  v24[1] = RMModelStatusItemManagementDeclarations;
  v24[2] = RMModelStatusItemManagementPushToken;
  v8 = [NSArray arrayWithObjects:v24 count:3];
  v9 = [NSSet setWithArray:v8];
  [v7 implicitlySubscribeToStatusKeyPaths:v9];

  v10 = [(RMClient *)self conduit];
  v11 = [v10 statusItemsToSendDuringEnrollment];

  v12 = [v7 queryForStatusWithKeyPaths:v11];
  v13 = [(RMClient *)self conduit];
  v14 = [v12 statusByKeyPath];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D8C8;
  v18[3] = &unk_1000D1100;
  v15 = v7;
  v19 = v15;
  v16 = v12;
  v20 = v16;
  v17 = v4;
  v21 = v17;
  [v13 enrollWithStatusItems:v14 completionHandler:v18];

  os_activity_scope_leave(&state);
}

- (void)unenrollWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "Client: Unenrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = +[RMLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Unenrolling...", buf, 2u);
  }

  v7 = [(RMClient *)self conduit];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DA90;
  v9[3] = &unk_1000D1128;
  v9[4] = self;
  v8 = v4;
  v10 = v8;
  [v7 unenrollWithCompletionHandler:v9];

  os_activity_scope_leave(&state);
}

- (void)syncWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "Client: Syncing", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v5, &v6);
  [(RMClient *)self _syncOnlyIfNeeded:0 completionHandler:v4];
  os_activity_scope_leave(&v6);
}

- (void)syncIfNeededWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "Client: Syncing if needed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v5, &v6);
  [(RMClient *)self _syncOnlyIfNeeded:1 completionHandler:v4];
  os_activity_scope_leave(&v6);
}

- (void)_syncOnlyIfNeeded:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self->_needsSyncingLock;
  objc_sync_enter(v7);
  self->_needsSyncing = 0;
  objc_sync_exit(v7);

  [(RMSharedLock *)self->_syncLock lock];
  v8 = +[RMLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = &stru_1000D3680;
    if (v4)
    {
      v9 = @" only if needed";
    }

    *buf = 138543362;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Syncing%{public}@...", buf, 0xCu);
  }

  v10 = objc_opt_new();
  v11 = [(RMClient *)self statusEngine];
  v12 = v11;
  if (v4)
  {
    [v11 queryForUnacknowledgedStatusSubscriptions];
  }

  else
  {
    [v11 queryForStatusSubscriptions];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000DE70;
  v16[3] = &unk_1000D11A0;
  v17 = v10;
  v18 = self;
  v19 = v21 = v4;
  v20 = v6;
  v13 = v19;
  v14 = v6;
  v15 = v10;
  [(RMClient *)self _sendStatusQueryResultIfNeeded:v13 fullReport:!v4 completionHandler:v16];
}

- (void)applyNowWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RMClient *)self activationEngine];
  [v5 syncWithCompletionHandler:v4];
}

- (void)updateWithPushMessage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "Client: Updating via push message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  [(RMSharedLock *)self->_syncLock lock];
  v9 = +[RMLog client];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Updating via push message...", buf, 2u);
  }

  v10 = [(RMClient *)self conduit];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E96C;
  v12[3] = &unk_1000D10B0;
  v12[4] = self;
  v11 = v7;
  v13 = v11;
  [v10 updateWithPushMessage:v6 completionHandler:v12];

  os_activity_scope_leave(&state);
}

- (void)updateWithTokensResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "Client: Updating via sync tokens", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  [(RMSharedLock *)self->_syncLock lock];
  v9 = +[RMLog client];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Updating via sync tokens...", buf, 2u);
  }

  v10 = [(RMClient *)self conduit];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000EBA0;
  v12[3] = &unk_1000D10B0;
  v12[4] = self;
  v11 = v7;
  v13 = v11;
  [v10 updateWithTokensResponse:v6 completionHandler:v12];

  os_activity_scope_leave(&state);
}

- (void)sendStatusData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "Client: Sending arbitrary status", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = [(RMClient *)self conduit];
  v10 = [v9 isSyncAllowed];

  if ((v10 & 1) == 0)
  {
    v11 = +[RMLog client];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000100D8();
    }

    goto LABEL_8;
  }

  if ([(RMClient *)self _haltSyncing])
  {
    v11 = +[RMLog client];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100010114();
    }

LABEL_8:

    v12 = +[RMErrorUtilities createStatePreventsSyncingError];
    v7[2](v7, v12);

    goto LABEL_12;
  }

  v13 = +[RMLog client];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Sending arbitrary status...", buf, 2u);
  }

  v14 = [(RMClient *)self conduit];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000EEB4;
  v15[3] = &unk_1000D10B0;
  v15[4] = self;
  v16 = v7;
  [v14 sendStatusData:v6 completionHandler:v15];

LABEL_12:
  os_activity_scope_leave(&state);
}

- (id)queryForStatusSubscriptionsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "Client: querying for status subscriptions", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  os_activity_scope_enter(v5, &v23);
  v6 = +[RMLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 allObjects];
    v8 = [v7 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v9 = [v8 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Querying for status subscriptions with identifiers %{public}@...", buf, 0xCu);
  }

  v10 = [(RMClient *)self statusEngine];
  v11 = [v10 queryForStatusSubscriptionsWithIdentifiers:v4];

  v12 = +[RMLog client];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v4 allObjects];
    v21 = [v20 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v22 = [v21 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    v25 = v22;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Found status from status subscriptions with identifiers %{public}@", buf, 0xCu);
  }

  v13 = v11;
  v14 = [v13 statusByKeyPath];
  if ([v14 count])
  {

LABEL_8:
    v17 = [v13 protocolStatusReportWithFullReport:0];
    v18 = [v17 serializeWithType:1];

    goto LABEL_9;
  }

  v15 = [v13 errorByKeyPath];
  v16 = [v15 count] == 0;

  if (!v16)
  {
    goto LABEL_8;
  }

  v18 = &__NSDictionary0__struct;
LABEL_9:

  os_activity_scope_leave(&v23);

  return v18;
}

- (void)sendStatusForSubscriptionsWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "Client: sending status for subscriptions", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v8, &v19);
  v9 = +[RMLog client];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v6 allObjects];
    v11 = [v10 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v12 = [v11 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Querying for status subscriptions with identifiers %{public}@ then sending status...", buf, 0xCu);
  }

  v13 = [(RMClient *)self statusEngine];
  v14 = [v13 queryForStatusSubscriptionsWithIdentifiers:v6];

  v15 = +[RMLog client];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v6 allObjects];
    v17 = [v16 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v18 = [v17 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    v21 = v18;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Found status from status subscriptions with identifiers %{public}@", buf, 0xCu);
  }

  [(RMClient *)self _sendStatusQueryResultIfNeeded:v14 fullReport:0 completionHandler:v7];
  os_activity_scope_leave(&v19);
}

- (BOOL)_haltSyncing
{
  v2 = [(RMClient *)self conduit];
  v3 = [v2 errorState];

  return (v3 & 0xFFFFFFFE) == 4;
}

- (void)_handleConduitError
{
  v3 = [(RMClient *)self conduit];
  v4 = [v3 errorState];

  v5 = +[RMLog client];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100010298(v4, v5);
  }

  [(RMClient *)self _processConduitErrorState:v4];
}

- (void)_processConduitErrorState:(signed __int16)a3
{
  if (a3 >= 4)
  {
    if (a3 == 5)
    {
      v5 = [(RMClient *)self delegate];
      v4 = [(RMClient *)self managementSourceIdentifier];
      [v5 clientNeedsToReenrollWithManagementSourceIdentifier:v4];
    }

    else
    {
      if (a3 != 4)
      {
        return;
      }

      v5 = [(RMClient *)self delegate];
      v4 = [(RMClient *)self managementSourceIdentifier];
      [v5 clientNeedsToUnenrollWithManagementSourceIdentifier:v4];
    }
  }
}

- (void)conduitNeedsToSync:(id)a3
{
  v4 = +[RMLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100010314();
  }

  [(RMClient *)self _setNeedsSyncing:1];
}

- (void)conduitNeedsToSendStatusForKeyPaths:(id)a3
{
  v4 = a3;
  v5 = +[RMLog client];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100010348(v4, v5);
  }

  v6 = [(RMClient *)self statusEngine];
  [v6 subscribeToStatusKeyPathsThenStopAfterAcknowledged:v4];

  [(RMClient *)self _setNeedsSyncing:1];
}

- (void)statusEngineHasUnacknowledgedSubscription:(id)a3
{
  v4 = +[RMLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100010418();
  }

  [(RMClient *)self _setNeedsSyncing:1];
}

- (void)_setNeedsSyncing:(BOOL)a3
{
  if (a3)
  {
    v4 = self->_needsSyncingLock;
    objc_sync_enter(v4);
    if (self->_needsSyncing)
    {
      v5 = +[RMLog client];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1000104B4();
      }
    }

    else
    {
      self->_needsSyncing = 1;
      v6 = +[RMLog client];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100010480();
      }

      v7 = os_transaction_create();
      objc_initWeak(&location, self);
      v8 = [(RMClient *)self operationQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000FB44;
      v9[3] = &unk_1000D11C8;
      objc_copyWeak(&v11, &location);
      v5 = v7;
      v10 = v5;
      [v8 addOperationWithBlock:v9];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(v4);
  }

  else
  {
    v4 = +[RMLog client];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10001044C();
    }
  }
}

- (void)_syncIfNeeded
{
  v3 = +[RMLog client];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000104E8();
  }

  [(RMClient *)self _syncOnlyIfNeeded:1 completionHandler:&stru_1000D11E8];
}

- (RMClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
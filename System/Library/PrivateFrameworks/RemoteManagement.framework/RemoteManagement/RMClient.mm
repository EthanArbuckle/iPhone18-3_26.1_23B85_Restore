@interface RMClient
+ (id)_makeConduitWithManagementSourceObjectID:(id)d inContext:(id)context;
- (BOOL)_haltSyncing;
- (RMClient)initWithConduit:(id)conduit activationEngine:(id)engine statusEngine:(id)statusEngine managementSourceIdentifier:(id)identifier;
- (RMClient)initWithManagementSourceObjectID:(id)d managementSourceIdentifier:(id)identifier statusQuerier:(id)querier persistentContainer:(id)container;
- (RMClientDelegate)delegate;
- (id)queryForStatusSubscriptionsWithIdentifiers:(id)identifiers;
- (void)_handleConduitError;
- (void)_processConduitErrorState:(signed __int16)state;
- (void)_setNeedsSyncing:(BOOL)syncing;
- (void)_syncIfNeeded;
- (void)_syncOnlyIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)applyNowWithCompletionHandler:(id)handler;
- (void)conduitNeedsToSendStatusForKeyPaths:(id)paths;
- (void)conduitNeedsToSync:(id)sync;
- (void)enrollWithCompletionHandler:(id)handler;
- (void)reenrollWithCompletionHandler:(id)handler;
- (void)sendStatusData:(id)data completionHandler:(id)handler;
- (void)sendStatusForSubscriptionsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)startWithCompletionHandler:(id)handler;
- (void)statusEngineHasUnacknowledgedSubscription:(id)subscription;
- (void)syncIfNeededWithCompletionHandler:(id)handler;
- (void)syncWithCompletionHandler:(id)handler;
- (void)unenrollWithCompletionHandler:(id)handler;
- (void)updateWithPushMessage:(id)message completionHandler:(id)handler;
- (void)updateWithTokensResponse:(id)response completionHandler:(id)handler;
@end

@implementation RMClient

- (RMClient)initWithManagementSourceObjectID:(id)d managementSourceIdentifier:(id)identifier statusQuerier:(id)querier persistentContainer:(id)container
{
  identifierCopy = identifier;
  containerCopy = container;
  querierCopy = querier;
  dCopy = d;
  newBackgroundContext = [containerCopy newBackgroundContext];
  [newBackgroundContext setAutomaticallyMergesChangesFromParent:1];
  identifierCopy = [NSString stringWithFormat:@"%@/%@", @"conduit", identifierCopy];
  [newBackgroundContext setTransactionAuthor:identifierCopy];

  v16 = identifierCopy;
  newBackgroundContext2 = [containerCopy newBackgroundContext];
  [newBackgroundContext2 setAutomaticallyMergesChangesFromParent:1];
  v18 = [NSString stringWithFormat:@"%@/%@", @"engine", v16];

  [newBackgroundContext2 setTransactionAuthor:v18];
  v19 = [objc_opt_class() _makeConduitWithManagementSourceObjectID:dCopy inContext:newBackgroundContext];
  v20 = [[RMActivationEngine alloc] initWithManagementSourceObjectID:dCopy context:newBackgroundContext2];
  v21 = [[RMStatusEngine alloc] initWithManagementSourceObjectID:dCopy statusQuerier:querierCopy inContext:newBackgroundContext];

  v22 = [(RMClient *)self initWithConduit:v19 activationEngine:v20 statusEngine:v21 managementSourceIdentifier:v16];
  return v22;
}

- (RMClient)initWithConduit:(id)conduit activationEngine:(id)engine statusEngine:(id)statusEngine managementSourceIdentifier:(id)identifier
{
  conduitCopy = conduit;
  engineCopy = engine;
  statusEngineCopy = statusEngine;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = RMClient;
  v15 = [(RMClient *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_conduit, conduit);
    [conduitCopy setDelegate:v16];
    objc_storeStrong(&v16->_activationEngine, engine);
    objc_storeStrong(&v16->_statusEngine, statusEngine);
    objc_storeStrong(&v16->_managementSourceIdentifier, identifier);
    v17 = objc_opt_new();
    needsSyncingLock = v16->_needsSyncingLock;
    v16->_needsSyncingLock = v17;

    v16->_needsSyncing = 1;
    identifierCopy = [NSString stringWithFormat:@"RMClient-%@", identifierCopy];
    v20 = [RMSharedLock newSharedLockWithDescription:identifierCopy];
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

+ (id)_makeConduitWithManagementSourceObjectID:(id)d inContext:(id)context
{
  dCopy = d;
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
  contextCopy = context;
  v11 = contextCopy;
  v7 = dCopy;
  v12 = v7;
  v13 = &v14;
  [contextCopy performBlockAndWait:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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

  statusEngine = [(RMClient *)self statusEngine];
  [statusEngine setDelegate:self];
  [statusEngine start];
  conduit = [(RMClient *)self conduit];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D1B4;
  v10[3] = &unk_1000D10D8;
  v10[4] = self;
  v9 = handlerCopy;
  v11 = v9;
  [conduit startWithCompletionHandler:v10];

  os_activity_scope_leave(&state);
}

- (void)enrollWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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

  statusEngine = [(RMClient *)self statusEngine];
  [statusEngine clearAllLastAcknowledgedDate];
  conduit = [(RMClient *)self conduit];
  statusItemsToImplicitlySubscribeTo = [conduit statusItemsToImplicitlySubscribeTo];
  [statusEngine implicitlySubscribeToStatusKeyPaths:statusItemsToImplicitlySubscribeTo];

  conduit2 = [(RMClient *)self conduit];
  statusItemsToSendDuringEnrollment = [conduit2 statusItemsToSendDuringEnrollment];

  v12 = [statusEngine queryForStatusWithKeyPaths:statusItemsToSendDuringEnrollment];
  conduit3 = [(RMClient *)self conduit];
  statusByKeyPath = [v12 statusByKeyPath];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D570;
  v18[3] = &unk_1000D1100;
  v15 = statusEngine;
  v19 = v15;
  v16 = v12;
  v20 = v16;
  v17 = handlerCopy;
  v21 = v17;
  [conduit3 enrollWithStatusItems:statusByKeyPath completionHandler:v18];

  os_activity_scope_leave(&state);
}

- (void)reenrollWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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

  statusEngine = [(RMClient *)self statusEngine];
  [statusEngine clearAllLastAcknowledgedDate];
  v24[0] = RMModelStatusItemManagementClientCapabilities;
  v24[1] = RMModelStatusItemManagementDeclarations;
  v24[2] = RMModelStatusItemManagementPushToken;
  v8 = [NSArray arrayWithObjects:v24 count:3];
  v9 = [NSSet setWithArray:v8];
  [statusEngine implicitlySubscribeToStatusKeyPaths:v9];

  conduit = [(RMClient *)self conduit];
  statusItemsToSendDuringEnrollment = [conduit statusItemsToSendDuringEnrollment];

  v12 = [statusEngine queryForStatusWithKeyPaths:statusItemsToSendDuringEnrollment];
  conduit2 = [(RMClient *)self conduit];
  statusByKeyPath = [v12 statusByKeyPath];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D8C8;
  v18[3] = &unk_1000D1100;
  v15 = statusEngine;
  v19 = v15;
  v16 = v12;
  v20 = v16;
  v17 = handlerCopy;
  v21 = v17;
  [conduit2 enrollWithStatusItems:statusByKeyPath completionHandler:v18];

  os_activity_scope_leave(&state);
}

- (void)unenrollWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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

  conduit = [(RMClient *)self conduit];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DA90;
  v9[3] = &unk_1000D1128;
  v9[4] = self;
  v8 = handlerCopy;
  v10 = v8;
  [conduit unenrollWithCompletionHandler:v9];

  os_activity_scope_leave(&state);
}

- (void)syncWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&_mh_execute_header, "Client: Syncing", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v5, &v6);
  [(RMClient *)self _syncOnlyIfNeeded:0 completionHandler:handlerCopy];
  os_activity_scope_leave(&v6);
}

- (void)syncIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&_mh_execute_header, "Client: Syncing if needed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v5, &v6);
  [(RMClient *)self _syncOnlyIfNeeded:1 completionHandler:handlerCopy];
  os_activity_scope_leave(&v6);
}

- (void)_syncOnlyIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  v7 = self->_needsSyncingLock;
  objc_sync_enter(v7);
  self->_needsSyncing = 0;
  objc_sync_exit(v7);

  [(RMSharedLock *)self->_syncLock lock];
  v8 = +[RMLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = &stru_1000D3680;
    if (neededCopy)
    {
      v9 = @" only if needed";
    }

    *buf = 138543362;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Syncing%{public}@...", buf, 0xCu);
  }

  v10 = objc_opt_new();
  statusEngine = [(RMClient *)self statusEngine];
  v12 = statusEngine;
  if (neededCopy)
  {
    [statusEngine queryForUnacknowledgedStatusSubscriptions];
  }

  else
  {
    [statusEngine queryForStatusSubscriptions];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000DE70;
  v16[3] = &unk_1000D11A0;
  v17 = v10;
  selfCopy = self;
  v19 = v21 = neededCopy;
  v20 = handlerCopy;
  v13 = v19;
  v14 = handlerCopy;
  v15 = v10;
  [(RMClient *)self _sendStatusQueryResultIfNeeded:v13 fullReport:!neededCopy completionHandler:v16];
}

- (void)applyNowWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  activationEngine = [(RMClient *)self activationEngine];
  [activationEngine syncWithCompletionHandler:handlerCopy];
}

- (void)updateWithPushMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
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

  conduit = [(RMClient *)self conduit];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000E96C;
  v12[3] = &unk_1000D10B0;
  v12[4] = self;
  v11 = handlerCopy;
  v13 = v11;
  [conduit updateWithPushMessage:messageCopy completionHandler:v12];

  os_activity_scope_leave(&state);
}

- (void)updateWithTokensResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
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

  conduit = [(RMClient *)self conduit];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000EBA0;
  v12[3] = &unk_1000D10B0;
  v12[4] = self;
  v11 = handlerCopy;
  v13 = v11;
  [conduit updateWithTokensResponse:responseCopy completionHandler:v12];

  os_activity_scope_leave(&state);
}

- (void)sendStatusData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = _os_activity_create(&_mh_execute_header, "Client: Sending arbitrary status", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  conduit = [(RMClient *)self conduit];
  isSyncAllowed = [conduit isSyncAllowed];

  if ((isSyncAllowed & 1) == 0)
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
    handlerCopy[2](handlerCopy, v12);

    goto LABEL_12;
  }

  v13 = +[RMLog client];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Sending arbitrary status...", buf, 2u);
  }

  conduit2 = [(RMClient *)self conduit];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000EEB4;
  v15[3] = &unk_1000D10B0;
  v15[4] = self;
  v16 = handlerCopy;
  [conduit2 sendStatusData:dataCopy completionHandler:v15];

LABEL_12:
  os_activity_scope_leave(&state);
}

- (id)queryForStatusSubscriptionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = _os_activity_create(&_mh_execute_header, "Client: querying for status subscriptions", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  os_activity_scope_enter(v5, &v23);
  v6 = +[RMLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    allObjects = [identifiersCopy allObjects];
    v8 = [allObjects sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v9 = [v8 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Querying for status subscriptions with identifiers %{public}@...", buf, 0xCu);
  }

  statusEngine = [(RMClient *)self statusEngine];
  v11 = [statusEngine queryForStatusSubscriptionsWithIdentifiers:identifiersCopy];

  v12 = +[RMLog client];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    allObjects2 = [identifiersCopy allObjects];
    v21 = [allObjects2 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v22 = [v21 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    v25 = v22;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Found status from status subscriptions with identifiers %{public}@", buf, 0xCu);
  }

  v13 = v11;
  statusByKeyPath = [v13 statusByKeyPath];
  if ([statusByKeyPath count])
  {

LABEL_8:
    v17 = [v13 protocolStatusReportWithFullReport:0];
    v18 = [v17 serializeWithType:1];

    goto LABEL_9;
  }

  errorByKeyPath = [v13 errorByKeyPath];
  v16 = [errorByKeyPath count] == 0;

  if (!v16)
  {
    goto LABEL_8;
  }

  v18 = &__NSDictionary0__struct;
LABEL_9:

  os_activity_scope_leave(&v23);

  return v18;
}

- (void)sendStatusForSubscriptionsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = _os_activity_create(&_mh_execute_header, "Client: sending status for subscriptions", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v8, &v19);
  v9 = +[RMLog client];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    allObjects = [identifiersCopy allObjects];
    v11 = [allObjects sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v12 = [v11 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Querying for status subscriptions with identifiers %{public}@ then sending status...", buf, 0xCu);
  }

  statusEngine = [(RMClient *)self statusEngine];
  v14 = [statusEngine queryForStatusSubscriptionsWithIdentifiers:identifiersCopy];

  v15 = +[RMLog client];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    allObjects2 = [identifiersCopy allObjects];
    v17 = [allObjects2 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v18 = [v17 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    v21 = v18;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Found status from status subscriptions with identifiers %{public}@", buf, 0xCu);
  }

  [(RMClient *)self _sendStatusQueryResultIfNeeded:v14 fullReport:0 completionHandler:handlerCopy];
  os_activity_scope_leave(&v19);
}

- (BOOL)_haltSyncing
{
  conduit = [(RMClient *)self conduit];
  errorState = [conduit errorState];

  return (errorState & 0xFFFFFFFE) == 4;
}

- (void)_handleConduitError
{
  conduit = [(RMClient *)self conduit];
  errorState = [conduit errorState];

  v5 = +[RMLog client];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100010298(errorState, v5);
  }

  [(RMClient *)self _processConduitErrorState:errorState];
}

- (void)_processConduitErrorState:(signed __int16)state
{
  if (state >= 4)
  {
    if (state == 5)
    {
      delegate = [(RMClient *)self delegate];
      managementSourceIdentifier = [(RMClient *)self managementSourceIdentifier];
      [delegate clientNeedsToReenrollWithManagementSourceIdentifier:managementSourceIdentifier];
    }

    else
    {
      if (state != 4)
      {
        return;
      }

      delegate = [(RMClient *)self delegate];
      managementSourceIdentifier = [(RMClient *)self managementSourceIdentifier];
      [delegate clientNeedsToUnenrollWithManagementSourceIdentifier:managementSourceIdentifier];
    }
  }
}

- (void)conduitNeedsToSync:(id)sync
{
  v4 = +[RMLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100010314();
  }

  [(RMClient *)self _setNeedsSyncing:1];
}

- (void)conduitNeedsToSendStatusForKeyPaths:(id)paths
{
  pathsCopy = paths;
  v5 = +[RMLog client];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100010348(pathsCopy, v5);
  }

  statusEngine = [(RMClient *)self statusEngine];
  [statusEngine subscribeToStatusKeyPathsThenStopAfterAcknowledged:pathsCopy];

  [(RMClient *)self _setNeedsSyncing:1];
}

- (void)statusEngineHasUnacknowledgedSubscription:(id)subscription
{
  v4 = +[RMLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100010418();
  }

  [(RMClient *)self _setNeedsSyncing:1];
}

- (void)_setNeedsSyncing:(BOOL)syncing
{
  if (syncing)
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
      operationQueue = [(RMClient *)self operationQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000FB44;
      v9[3] = &unk_1000D11C8;
      objc_copyWeak(&v11, &location);
      v5 = v7;
      v10 = v5;
      [operationQueue addOperationWithBlock:v9];

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
@interface RMMDMConduit
+ (id)_generateEnrollmentToken;
- (BOOL)_incrementConduitStateError:(signed __int16)error serverRetryAfter:(id)after error:(id *)a5;
- (BOOL)_processErrorResponse:(id)response error:(id *)error;
- (BOOL)persistentHistoryNotifier:(id)notifier isChangeInteresting:(id)interesting stop:(BOOL *)stop;
- (RMConduitDelegate)delegate;
- (RMMDMConduit)initWithManagementSourceObjectID:(id)d inContext:(id)context;
- (id)_processResponse:(id)response payloadClass:(Class)class error:(id *)error;
- (id)_requestDataForPayload:(id)payload error:(id *)error;
- (id)_statusItemsToSendOnceAfterEnrollment;
- (id)statusItemsToImplicitlySubscribeTo;
- (id)statusItemsToSendDuringEnrollment;
- (signed)errorState;
- (void)_didFinishFetchingDeclarationItems:(id)items error:(id)error completionHandler:(id)handler;
- (void)_didFinishFetchingObject:(id)object objectID:(id)d class:(Class)class endpoint:(id)endpoint response:(id)response error:(id)error completionHandler:(id)handler;
- (void)_didFinishFetchingServerTokens:(id)tokens error:(id)error completionHandler:(id)handler;
- (void)_didFinishSendingStatusWithError:(id)error completionHandler:(id)handler;
- (void)_executeRequestForEndpoint:(id)endpoint requestData:(id)data expectedResponseClass:(Class)class completionHandler:(id)handler;
- (void)_fetchDeclarationItemsOnlyIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)_fetchNextObjectOfClass:(Class)class endpoint:(id)endpoint completionHandler:(id)handler;
- (void)_fetchPartialObjectsWithCompletionHandler:(id)handler;
- (void)_fetchTokensOnlyIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)_processDeclarationItemsWithContext:(id)context infos:(id)infos declarationItemClass:(Class)class declarationItemKeyPath:(id)path;
- (void)_startObservers;
- (void)_stopObservers;
- (void)_updateWithSyncTokens:(id)tokens completionHandler:(id)handler;
- (void)_writeQAStatusData:(id)data completionHandler:(id)handler;
- (void)enrollWithStatusItems:(id)items completionHandler:(id)handler;
- (void)persistentHistoryNotifier:(id)notifier hasChanges:(id)changes;
- (void)sendStatusData:(id)data completionHandler:(id)handler;
- (void)startWithCompletionHandler:(id)handler;
- (void)unenrollWithCompletionHandler:(id)handler;
- (void)updateWithPushMessage:(id)message completionHandler:(id)handler;
- (void)updateWithTokensResponse:(id)response completionHandler:(id)handler;
@end

@implementation RMMDMConduit

- (RMMDMConduit)initWithManagementSourceObjectID:(id)d inContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = RMMDMConduit;
  v9 = [(RMMDMConduit *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managementSourceObjectID, d);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&_mh_execute_header, "MDMConduit: starting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10005195C();
  }

  [(RMMDMConduit *)self context];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004C000;
  v7 = v8[3] = &unk_1000D1270;
  v9 = v7;
  selfCopy = self;
  [v7 performBlockAndWait:v8];
  handlerCopy[2](handlerCopy);

  os_activity_scope_leave(&state);
}

- (void)_startObservers
{
  context = [(RMMDMConduit *)self context];
  transactionAuthor = [context transactionAuthor];
  v4 = [[RMPersistentHistoryNotifier alloc] initWithContext:context];
  [(RMPersistentHistoryNotifier *)v4 setDelegate:self];
  v5 = [NSSet setWithObject:transactionAuthor];
  [(RMPersistentHistoryNotifier *)v4 setIgnoredTransactionAuthors:v5];

  [(RMMDMConduit *)self setPersistentHistoryNotifier:v4];
  [(RMPersistentHistoryNotifier *)v4 start];
}

- (void)_stopObservers
{
  persistentHistoryNotifier = [(RMMDMConduit *)self persistentHistoryNotifier];
  [persistentHistoryNotifier setDelegate:0];

  [(RMMDMConduit *)self setPersistentHistoryNotifier:0];
}

- (signed)errorState
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [(RMMDMConduit *)self context];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004C2F4;
  v3 = v5[3] = &unk_1000D0E38;
  v6 = v3;
  v7 = selfCopy;
  v8 = &v9;
  [v3 performBlockAndWait:v5];
  LOWORD(selfCopy) = *(v10 + 12);

  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

- (id)statusItemsToImplicitlySubscribeTo
{
  v5[0] = RMModelStatusItemManagementClientCapabilities;
  v5[1] = RMModelStatusItemManagementDeclarations;
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (id)statusItemsToSendDuringEnrollment
{
  v2 = objc_opt_new();

  return v2;
}

- (id)_statusItemsToSendOnceAfterEnrollment
{
  v3 = [NSMutableArray arrayWithCapacity:6];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  [(RMMDMConduit *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004C644;
  v4 = v7[3] = &unk_1000D0E38;
  v8 = v4;
  selfCopy = self;
  v10 = &v11;
  [v4 performBlockAndWait:v7];
  if (*(v12 + 24) == 1)
  {
    [v3 addObject:RMModelStatusItemDeviceSerialNumber];
    [v3 addObject:RMModelStatusItemDeviceUDID];
  }

  [v3 addObject:RMModelStatusItemDeviceOperatingSystemFamily];
  [v3 addObject:RMModelStatusItemDeviceOperatingSystemVersion];
  [v3 addObject:RMModelStatusItemDeviceOperatingSystemSupplementalExtraVersion];
  [v3 addObject:RMModelStatusItemDeviceOperatingSystemBuildVersion];
  [v3 addObject:RMModelStatusItemDeviceModelFamily];
  v5 = [NSSet setWithArray:v3];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)enrollWithStatusItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  v8 = _os_activity_create(&_mh_execute_header, "MDMConduit: enrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100051990();
  }

  +[RMMDMv1Liaison refreshState];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10004C908;
  v21 = sub_10004C918;
  v22 = 0;
  [(RMMDMConduit *)self context];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004C920;
  v10 = v13[3] = &unk_1000D0E38;
  v14 = v10;
  selfCopy = self;
  v16 = &v17;
  [v10 performBlockAndWait:v13];
  if (v18[5])
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    delegate = [(RMMDMConduit *)self delegate];
    _statusItemsToSendOnceAfterEnrollment = [(RMMDMConduit *)self _statusItemsToSendOnceAfterEnrollment];
    [delegate conduitNeedsToSendStatusForKeyPaths:_statusItemsToSendOnceAfterEnrollment];

    (handlerCopy[2])(handlerCopy, 0);
  }

  _Block_object_dispose(&v17, 8);
  os_activity_scope_leave(&state);
}

+ (id)_generateEnrollmentToken
{
  v2 = objc_opt_new();
  uUIDString = [v2 UUIDString];

  return uUIDString;
}

- (void)unenrollWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&_mh_execute_header, "MDMConduit: unenrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  [(RMMDMConduit *)self _stopObservers];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10004C908;
  v15 = sub_10004C918;
  v16 = 0;
  [(RMMDMConduit *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004CD68;
  v6 = v7[3] = &unk_1000D0E38;
  v8 = v6;
  selfCopy = self;
  v10 = &v11;
  [v6 performBlockAndWait:v7];
  +[RMMDMv1Liaison refreshState];
  handlerCopy[2](handlerCopy, 0, v12[5]);

  _Block_object_dispose(&v11, 8);
  os_activity_scope_leave(&state);
}

- (void)_fetchTokensOnlyIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = _os_activity_create(&_mh_execute_header, "MDMConduit: fetching server tokens", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100051A30();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  [(RMMDMConduit *)self context];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004D19C;
  v9 = v15[3] = &unk_1000D1CD8;
  v16 = v9;
  selfCopy = self;
  neededCopy = needed;
  v18 = &v20;
  [v9 performBlockAndWait:v15];
  if (v21[3])
  {
    v10 = objc_opt_class();
    v11 = RMProtocolEndpointTokens;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004D378;
    v13[3] = &unk_1000D22E0;
    v13[4] = self;
    v14 = handlerCopy;
    [(RMMDMConduit *)self _executeRequestForEndpoint:v11 requestData:0 expectedResponseClass:v10 completionHandler:v13];
  }

  else
  {
    v12 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100051A64();
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);
}

- (void)_didFinishFetchingServerTokens:(id)tokens error:(id)error completionHandler:(id)handler
{
  tokensCopy = tokens;
  errorCopy = error;
  handlerCopy = handler;
  if (errorCopy)
  {
    v11 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100051B00();
    }

    handlerCopy[2](handlerCopy, errorCopy);
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_10004C908;
    v24 = sub_10004C918;
    v25 = 0;
    [(RMMDMConduit *)self context];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004D5AC;
    v12 = v15[3] = &unk_1000D1E80;
    v16 = v12;
    selfCopy = self;
    v18 = tokensCopy;
    v19 = &v20;
    [v12 performBlockAndWait:v15];
    if (v21[5])
    {
      (handlerCopy[2])(handlerCopy);
    }

    else
    {
      v13 = +[RMLog mdmConduit];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14[0] = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Successfully saved server tokens", v14, 2u);
      }

      handlerCopy[2](handlerCopy, 0);
    }

    _Block_object_dispose(&v20, 8);
  }
}

- (void)updateWithPushMessage:(id)message completionHandler:(id)handler
{
  v11 = 0;
  handlerCopy = handler;
  v7 = [RMProtocolPushMessage loadData:message serializationType:1 error:&v11];
  v8 = v11;
  if (v7)
  {
    messageSyncTokens = [v7 messageSyncTokens];
    [(RMMDMConduit *)self _updateWithSyncTokens:messageSyncTokens completionHandler:handlerCopy];

    handlerCopy = messageSyncTokens;
  }

  else
  {
    v10 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100051C20();
    }

    (*(handlerCopy + 2))(handlerCopy, v8);
  }
}

- (void)updateWithTokensResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  if (!responseCopy)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v13 = 0;
  v8 = [RMProtocolTokensResponse loadData:responseCopy serializationType:1 error:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {

    v10 = v8;
LABEL_5:
    responseSyncTokens = [v10 responseSyncTokens];
    [(RMMDMConduit *)self _updateWithSyncTokens:responseSyncTokens completionHandler:handlerCopy];

    goto LABEL_9;
  }

  v12 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100051C88();
  }

  handlerCopy[2](handlerCopy, v10);
LABEL_9:
}

- (void)_updateWithSyncTokens:(id)tokens completionHandler:(id)handler
{
  tokensCopy = tokens;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10004C908;
  v19 = sub_10004C918;
  v20 = 0;
  [(RMMDMConduit *)self context];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004E120;
  v8 = v10[3] = &unk_1000D1E80;
  v11 = v8;
  selfCopy = self;
  v9 = tokensCopy;
  v13 = v9;
  v14 = &v15;
  [v8 performBlockAndWait:v10];
  handlerCopy[2](handlerCopy, v16[5]);

  _Block_object_dispose(&v15, 8);
}

- (void)_fetchDeclarationItemsOnlyIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = _os_activity_create(&_mh_execute_header, "MDMConduit: fetching declaration items", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100051CF0();
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  [(RMMDMConduit *)self context];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004E504;
  v9 = v15[3] = &unk_1000D1CD8;
  v16 = v9;
  selfCopy = self;
  neededCopy = needed;
  v18 = &v20;
  [v9 performBlockAndWait:v15];
  if (v21[3])
  {
    v10 = objc_opt_class();
    v11 = RMProtocolEndpointDeclarationItems;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004E6AC;
    v13[3] = &unk_1000D22E0;
    v13[4] = self;
    v14 = handlerCopy;
    [(RMMDMConduit *)self _executeRequestForEndpoint:v11 requestData:0 expectedResponseClass:v10 completionHandler:v13];
  }

  else
  {
    v12 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100051D24();
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);
}

- (void)_didFinishFetchingDeclarationItems:(id)items error:(id)error completionHandler:(id)handler
{
  itemsCopy = items;
  errorCopy = error;
  handlerCopy = handler;
  if (errorCopy)
  {
    v11 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100051D8C();
    }

    handlerCopy[2](handlerCopy, errorCopy);
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_10004C908;
    v24 = sub_10004C918;
    v25 = 0;
    [(RMMDMConduit *)self context];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004E8E0;
    v12 = v15[3] = &unk_1000D1E80;
    v16 = v12;
    selfCopy = self;
    v18 = itemsCopy;
    v19 = &v20;
    [v12 performBlockAndWait:v15];
    if (v21[5])
    {
      (handlerCopy[2])(handlerCopy);
    }

    else
    {
      v13 = +[RMLog mdmConduit];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14[0] = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Successfully saved partial object", v14, 2u);
      }

      handlerCopy[2](handlerCopy, 0);
    }

    _Block_object_dispose(&v20, 8);
  }
}

- (void)_processDeclarationItemsWithContext:(id)context infos:(id)infos declarationItemClass:(Class)class declarationItemKeyPath:(id)path
{
  contextCopy = context;
  infosCopy = infos;
  pathCopy = path;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  managementSourceObjectID = [(RMMDMConduit *)self managementSourceObjectID];
  v38 = contextCopy;
  v12 = [contextCopy objectWithID:managementSourceObjectID];

  v37 = v12;
  v35 = pathCopy;
  v13 = [v12 valueForKey:pathCopy];
  v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v13 count]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        identifier = [v19 identifier];
        serverToken = [v19 serverToken];
        v22 = [NSString stringWithFormat:@"%@-%@", identifier, serverToken];
        [v14 setObject:v19 forKeyedSubscript:v22];
      }

      v16 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v16);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = infosCopy;
  v23 = [v41 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v46;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v46 != v25)
        {
          objc_enumerationMutation(v41);
        }

        v27 = *(*(&v45 + 1) + 8 * j);
        responseIdentifier = [v27 responseIdentifier];
        responseServerToken = [v27 responseServerToken];
        v30 = [NSString stringWithFormat:@"%@-%@", responseIdentifier, responseServerToken];
        v31 = [v14 objectForKeyedSubscript:v30];
        if (v31)
        {
          v32 = v31;
          [v14 removeObjectForKey:v30];
        }

        else
        {
          v32 = [[class alloc] initWithContext:v38];
          [v32 setIdentifier:responseIdentifier];
          [v32 setServerToken:responseServerToken];
          [v32 setManagementSource:v37];
          [(RMMDMConduit *)selfCopy setMadeChangesDuringSync:1];
        }
      }

      v24 = [v41 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v24);
  }

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10004EF60;
  v43[3] = &unk_1000D1F98;
  v43[4] = selfCopy;
  v33 = v38;
  v44 = v33;
  [v14 enumerateKeysAndObjectsUsingBlock:v43];

  objc_autoreleasePoolPop(context);
}

- (void)_fetchPartialObjectsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_opt_class();
  v6 = RMProtocolEndpointDeclarationActivation;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004F104;
  v8[3] = &unk_1000D1EA8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(RMMDMConduit *)self _fetchNextObjectOfClass:v5 endpoint:v6 completionHandler:v8];
}

- (void)_fetchNextObjectOfClass:(Class)class endpoint:(id)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  v10 = _os_activity_create(&_mh_execute_header, "MDMConduit: fetching next object from server", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v11 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromClass(class);
    sub_10003C5CC(v12, buf, v11);
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10004C908;
  v42 = sub_10004C918;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10004C908;
  v36 = sub_10004C918;
  v37 = 0;
  [(RMMDMConduit *)self context];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10004F714;
  v13 = v25[3] = &unk_1000D2308;
  v26 = v13;
  selfCopy = self;
  v30 = &v32;
  classCopy = class;
  v29 = &v38;
  v14 = endpointCopy;
  v28 = v14;
  [v13 performBlockAndWait:v25];
  if (v39[5])
  {
    v15 = v33[5];
    v16 = objc_opt_class();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10004F8E4;
    v20[3] = &unk_1000D2330;
    v20[4] = self;
    v23 = &v38;
    classCopy2 = class;
    v21 = v14;
    v22 = handlerCopy;
    [(RMMDMConduit *)self _executeRequestForEndpoint:v15 requestData:0 expectedResponseClass:v16 completionHandler:v20];
  }

  else
  {
    v17 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromClass(class);
      managementSourceObjectID = [(RMMDMConduit *)self managementSourceObjectID];
      sub_10003C624(v18, managementSourceObjectID, v45, v17);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  os_activity_scope_leave(&state);
}

- (void)_didFinishFetchingObject:(id)object objectID:(id)d class:(Class)class endpoint:(id)endpoint response:(id)response error:(id)error completionHandler:(id)handler
{
  objectCopy = object;
  dCopy = d;
  endpointCopy = endpoint;
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  v20 = [responseCopy objectForKeyedSubscript:HTTPResponseKeyStatusCode];
  integerValue = [v20 integerValue];

  v22 = integerValue == 200 || errorCopy == 0;
  if (v22 || integerValue == 404)
  {
    *v37 = 0;
    *&v37[8] = v37;
    *&v37[16] = 0x3032000000;
    v38 = sub_10004C908;
    v39 = sub_10004C918;
    v40 = 0;
    [(RMMDMConduit *)self context];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10004FC70;
    v23 = v29[3] = &unk_1000D2358;
    v30 = v23;
    selfCopy = self;
    v32 = dCopy;
    v33 = errorCopy;
    v24 = endpointCopy;
    v34 = v24;
    v35 = objectCopy;
    v36 = v37;
    [v23 performBlockAndWait:v29];
    if (*(*&v37[8] + 40))
    {
      handlerCopy[2](handlerCopy);
    }

    else
    {
      v26 = +[RMLog mdmConduit];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Successfully saved object, fetching next one", buf, 2u);
      }

      [(RMMDMConduit *)self _fetchNextObjectOfClass:class endpoint:v24 completionHandler:handlerCopy];
    }

    _Block_object_dispose(v37, 8);
  }

  else
  {
    v25 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v37 = 138543874;
      *&v37[4] = dCopy;
      *&v37[12] = 2114;
      *&v37[14] = endpointCopy;
      *&v37[22] = 2114;
      v38 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error while fetching object %{public}@ (%{public}@): %{public}@", v37, 0x20u);
    }

    (handlerCopy[2])(handlerCopy, errorCopy);
  }
}

- (void)sendStatusData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = _os_activity_create(&_mh_execute_header, "MDMConduit: sending status", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100052054();
  }

  if (+[RMFeatureOverrides qaMode])
  {
    v10 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100052088();
    }

    [(RMMDMConduit *)self _writeQAStatusData:dataCopy completionHandler:handlerCopy];
  }

  else
  {
    v11 = RMProtocolEndpointStatus;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100050138;
    v12[3] = &unk_1000D22E0;
    v12[4] = self;
    v13 = handlerCopy;
    [(RMMDMConduit *)self _executeRequestForEndpoint:v11 requestData:dataCopy expectedResponseClass:0 completionHandler:v12];
  }

  os_activity_scope_leave(&state);
}

- (void)_didFinishSendingStatusWithError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  if (errorCopy)
  {
    v8 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000520BC();
    }

    handlerCopy[2](handlerCopy, errorCopy);
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_10004C908;
    v20 = sub_10004C918;
    v21 = 0;
    [(RMMDMConduit *)self context];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005034C;
    v9 = v12[3] = &unk_1000D0E38;
    v13 = v9;
    selfCopy = self;
    v15 = &v16;
    [v9 performBlockAndWait:v12];
    if (v17[5])
    {
      (handlerCopy[2])(handlerCopy);
    }

    else
    {
      v10 = +[RMLog mdmConduit];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Successfully sent status", &v11, 2u);
      }

      handlerCopy[2](handlerCopy, 0);
    }

    _Block_object_dispose(&v16, 8);
  }
}

- (void)_writeQAStatusData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v7 = [NSURL URLWithString:@"file:///tmp/rmd_test/Status"];
  v8 = +[NSFileManager defaultManager];
  path = [v7 path];
  v10 = [v8 fileExistsAtPath:path isDirectory:0];

  if ((v10 & 1) == 0)
  {
    v21 = 0;
    v11 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v21];
    v12 = v21;
    v13 = v12;
    if ((v11 & 1) == 0)
    {
      handlerCopy[2](handlerCopy, v12);
      goto LABEL_8;
    }
  }

  v20 = 0;
  v14 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v20];
  v13 = v20;
  if (v14)
  {
    v15 = [RMDateFormat stringLocalTimeZoneFractionalSecondsWithDate:0];
    v16 = [v15 stringByAppendingPathExtension:@"json"];

    v17 = [v7 URLByAppendingPathComponent:v16 isDirectory:0];
    v19 = v13;
    [RMJSONUtilities serializeJSONDictionary:v14 fileURL:v17 error:&v19];
    v18 = v19;

    v13 = v18;
  }

  handlerCopy[2](handlerCopy, 0);

LABEL_8:
}

- (id)_processResponse:(id)response payloadClass:(Class)class error:(id *)error
{
  responseCopy = response;
  v9 = [responseCopy objectForKeyedSubscript:HTTPResponseKeyStatusCode];
  integerValue = [v9 integerValue];

  v11 = [responseCopy objectForKeyedSubscript:HTTPResponseKeyBody];
  v12 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v27 = integerValue;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got back from MDM: %ld", buf, 0xCu);
  }

  if ((integerValue - 400) <= 0xC7)
  {
    v25 = 0;
    v13 = [(RMMDMConduit *)self _processErrorResponse:responseCopy error:&v25];
    v14 = v25;
    v15 = v14;
    if ((v13 & 1) == 0)
    {
      if (error && v14)
      {
        v21 = v14;
        *error = v15;
      }

      goto LABEL_32;
    }

    if (v11)
    {
      v16 = [v11 base64EncodedStringWithOptions:0];
      if (!error)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = @"Empty Response Body";
      if (!error)
      {
LABEL_31:

LABEL_32:
LABEL_33:
        v19 = 0;
        goto LABEL_34;
      }
    }

    v23 = [RMErrorUtilities createMDMRequestInvalid:v16];
    if (v23)
    {
      v23 = v23;
      *error = v23;
    }

    goto LABEL_31;
  }

  if (integerValue != 204 && v11 != 0)
  {
    if (class)
    {
      v22 = [(objc_class *)class loadData:v11 serializationType:1 error:error];
LABEL_26:
      v19 = v22;
      goto LABEL_34;
    }

LABEL_25:
    v22 = [RMModelAnyPayload buildFromDictionary:&__NSDictionary0__struct];
    goto LABEL_26;
  }

  if (!class || objc_opt_class() == class)
  {
    goto LABEL_25;
  }

  v18 = [(RMMDMConduit *)self _incrementConduitStateError:2 serverRetryAfter:0 error:error];
  v19 = 0;
  if (error && v18)
  {
    v20 = [RMErrorUtilities createMDMRequestInvalid:@"Empty body"];
    if (v20)
    {
      v20 = v20;
      *error = v20;
    }

    goto LABEL_33;
  }

LABEL_34:

  return v19;
}

- (BOOL)_processErrorResponse:(id)response error:(id *)error
{
  v6 = HTTPResponseKeyStatusCode;
  responseCopy = response;
  v8 = [responseCopy objectForKeyedSubscript:v6];
  integerValue = [v8 integerValue];

  v10 = [responseCopy objectForKeyedSubscript:HTTPResponseKeyHeaders];
  v11 = [responseCopy objectForKeyedSubscript:HTTPResponseKeyBody];

  v12 = v11;
  v13 = [v10 objectForKeyedSubscript:@"Content-Type"];
  v14 = v13;
  v15 = @"text/html";
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;
  v17 = [(__CFString *)v16 rangeOfString:@";"];
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = [(__CFString *)v16 substringToIndex:v17];
    v22 = v21;
    v23 = [(__CFString *)v16 substringFromIndex:&v19[v20]];
    v24 = v23;
  }

  else
  {
    v25 = v16;
    v23 = 0;
    v21 = v16;
  }

  v26 = v21;
  v27 = v23;

  if (v12 && ![v26 isEqualToString:@"application/json"])
  {
    v30 = 0;
    goto LABEL_23;
  }

  if ([v27 length])
  {
    v28 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Unused Content-Type parameter: %{public}@", buf, 0xCu);
    }
  }

  v29 = v12;
  if (!v12)
  {
    v29 = objc_opt_new();
  }

  *buf = 0;
  v30 = [RMProtocolErrorResponse loadData:v29 serializationType:1 error:buf];
  v31 = *buf;
  if (v12)
  {
    if (!v30)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (!v30)
    {
LABEL_19:
      v32 = +[RMLog mdmConduit];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100052124();
      }
    }
  }

LABEL_23:
  responseCode = [v30 responseCode];
  v34 = responseCode;
  v35 = 0;
  v36 = 2;
  if (integerValue > 409)
  {
    if (integerValue == 410)
    {
      v35 = 0;
      if ([responseCode isEqualToString:RMProtocolErrorResponse_Code_enrollmentNotAllowed])
      {
        v36 = 4;
      }

      else
      {
        v36 = 2;
      }
    }

    else if (integerValue == 503)
    {
      v37 = [v10 objectForKeyedSubscript:@"Retry-After"];
      if (v37)
      {
        v38 = objc_opt_new();
        v39 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [v38 setLocale:v39];

        [v38 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss Z"];
        v35 = [v38 dateFromString:v37];
        if (!v35)
        {
          integerValue2 = [v37 integerValue];
          if (integerValue2 < 1)
          {
            v35 = 0;
          }

          else
          {
            v35 = [NSDate dateWithTimeIntervalSinceNow:integerValue2];
          }
        }
      }

      else
      {
        v35 = 0;
      }

      v36 = 3;
    }
  }

  else
  {
    if (integerValue == 403)
    {
      if (([responseCode isEqualToString:RMProtocolErrorResponse_Code_clientVersionInvalid] & 1) != 0 || (objc_msgSend(v34, "isEqualToString:", RMProtocolErrorResponse_Code_deviceAuthInvalid) & 1) != 0 || objc_msgSend(v34, "isEqualToString:", RMProtocolErrorResponse_Code_deviceAuthMissing))
      {
        v35 = 0;
        v36 = 1;
        goto LABEL_45;
      }

      goto LABEL_27;
    }

    if (integerValue == 404)
    {
      [responseCode isEqualToString:RMProtocolErrorResponse_Code_enrollmentTokenInvalid];
LABEL_27:
      v35 = 0;
      v36 = 2;
    }
  }

LABEL_45:
  v41 = [(RMMDMConduit *)self _incrementConduitStateError:v36 serverRetryAfter:v35 error:error];

  return v41;
}

- (BOOL)_incrementConduitStateError:(signed __int16)error serverRetryAfter:(id)after error:(id *)a5
{
  afterCopy = after;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10004C908;
  v24 = sub_10004C918;
  v25 = 0;
  [(RMMDMConduit *)self context];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100050EF0;
  v9 = v14[3] = &unk_1000D2060;
  v15 = v9;
  selfCopy = self;
  errorCopy = error;
  v10 = afterCopy;
  v17 = v10;
  v18 = &v20;
  [v9 performBlockAndWait:v14];
  v11 = v21[5];
  if (a5 && v11)
  {
    v11 = v11;
    *a5 = v11;
  }

  v12 = v11 == 0;

  _Block_object_dispose(&v20, 8);
  return v12;
}

- (id)_requestDataForPayload:(id)payload error:(id *)error
{
  if (payload)
  {
    v5 = [payload serializeAsDataWithType:1 error:error];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_executeRequestForEndpoint:(id)endpoint requestData:(id)data expectedResponseClass:(Class)class completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v12 = [endpoint substringFromIndex:29];
  v20 = @"Endpoint";
  v21 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v14 = [v13 mutableCopy];

  [v14 setObject:dataCopy forKeyedSubscript:@"Data"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005125C;
  v17[3] = &unk_1000D23A8;
  v15 = +[RMBundle managementScope]== 0;
  v17[4] = self;
  v18 = handlerCopy;
  classCopy = class;
  v16 = handlerCopy;
  [MDMDeclarativeManagement executeRequestForEndpoint:v12 channelType:v15 requestData:dataCopy completionHandler:v17];
}

- (BOOL)persistentHistoryNotifier:(id)notifier isChangeInteresting:(id)interesting stop:(BOOL *)stop
{
  notifierCopy = notifier;
  interestingCopy = interesting;
  if ([interestingCopy changeType] == 2)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    changedObjectID = [interestingCopy changedObjectID];
    entity = [changedObjectID entity];
    v13 = +[RMConduitConfig entity];
    v10 = [entity isKindOfEntity:v13];
    if (v10)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      context = [(RMMDMConduit *)self context];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10005159C;
      v16[3] = &unk_1000D20B0;
      v16[4] = self;
      v17 = changedObjectID;
      v18 = interestingCopy;
      v19 = entity;
      v20 = v13;
      v21 = &v22;
      [context performBlockAndWait:v16];
      *stop = *(v23 + 24);

      _Block_object_dispose(&v22, 8);
    }
  }

  return v10;
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
      if (![deletedObjectIDs count])
      {
        persistentHistoryToken = [notifierCopy persistentHistoryToken];
        persistentHistoryToken2 = [changesCopy persistentHistoryToken];
        v13 = [RMPersistentHistoryNotifierChanges isExistingPersistentHistoryToken:persistentHistoryToken fromSameStoreAsUpdatedToken:persistentHistoryToken2];

        if (v13)
        {
          goto LABEL_10;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_7:
  delegate = [(RMMDMConduit *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate conduitNeedsToSync:self];
  }

LABEL_10:
}

- (RMConduitDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
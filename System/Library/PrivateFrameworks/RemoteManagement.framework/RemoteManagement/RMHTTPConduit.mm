@interface RMHTTPConduit
+ (NSString)userAgent;
+ (id)_generateEnrollmentToken;
- (BOOL)_incrementConduitStateError:(signed __int16)error serverRetryAfter:(id)after error:(id *)a5;
- (BOOL)_prepareTask:(id)task withAuthenticationCredential:(id)credential error:(id *)error;
- (BOOL)_prepareURLRequest:(id)request withAuthenticationCredential:(id)credential error:(id *)error;
- (BOOL)_processErrorResponse:(id)response data:(id)data error:(id *)error;
- (BOOL)_processUnauthorizedResponse:(id)response shouldRetry:(BOOL *)retry error:(id *)error;
- (BOOL)_setRequestPayload:(id)payload onURLRequest:(id)request error:(id *)error;
- (BOOL)isSyncAllowed;
- (BOOL)persistentHistoryNotifier:(id)notifier isChangeInteresting:(id)interesting stop:(BOOL *)stop;
- (RMConduitDelegate)delegate;
- (RMHTTPConduit)initWithManagementSourceObjectID:(id)d inContext:(id)context;
- (RMHTTPConduit)initWithManagementSourceObjectID:(id)d inContext:(id)context session:(id)session;
- (id)_authenticationCredential;
- (id)_makeURLRequestWithManagementSource:(id)source method:(id)method endpoint:(id)endpoint;
- (id)_processResponse:(id)response data:(id)data payloadClassByStatusCode:(id)code shouldRetry:(BOOL *)retry error:(id *)error;
- (id)statusItemsToImplicitlySubscribeTo;
- (id)statusItemsToSendDuringEnrollment;
- (signed)errorState;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_didFinishEnrollingWithResponsePayload:(id)payload response:(id)response error:(id)error completionHandler:(id)handler;
- (void)_didFinishFetchingDeclarationItems:(id)items response:(id)response error:(id)error lastReceivedPushTimestamp:(id)timestamp completionHandler:(id)handler;
- (void)_didFinishFetchingObject:(id)object objectID:(id)d class:(Class)class endpoint:(id)endpoint response:(id)response error:(id)error completionHandler:(id)handler;
- (void)_didFinishFetchingServerTokens:(id)tokens response:(id)response error:(id)error completionHandler:(id)handler;
- (void)_didFinishSendingStatusWithResponse:(id)response error:(id)error completionHandler:(id)handler;
- (void)_didReceiveEnrollReferralWithOriginalRequest:(id)request responsePayload:(id)payload response:(id)response error:(id)error completionHandler:(id)handler;
- (void)_fetchDeclarationItemsOnlyIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)_fetchNextObjectOfClass:(Class)class endpoint:(id)endpoint completionHandler:(id)handler;
- (void)_fetchPartialObjectsWithCompletionHandler:(id)handler;
- (void)_fetchTokensOnlyIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)_processDeclarationItemsWithContext:(id)context infos:(id)infos declarationItemClass:(Class)class declarationItemKeyPath:(id)path;
- (void)_resumeEnrollmentTaskForRequest:(id)request enrollmentToken:(id)token completionHandler:(id)handler;
- (void)_resumeTaskForRequest:(id)request enrollmentToken:(id)token expectedResponseClassByStatusCode:(id)code completionHandler:(id)handler;
- (void)_setBody:(id)body onURLRequest:(id)request;
- (void)_startObservers;
- (void)_stopObservers;
- (void)_updateWithSyncTokens:(id)tokens completionHandler:(id)handler;
- (void)enrollWithStatusItems:(id)items completionHandler:(id)handler;
- (void)persistentHistoryNotifier:(id)notifier hasChanges:(id)changes;
- (void)sendStatusData:(id)data completionHandler:(id)handler;
- (void)startWithCompletionHandler:(id)handler;
- (void)unenrollWithCompletionHandler:(id)handler;
- (void)updateWithPushMessage:(id)message completionHandler:(id)handler;
- (void)updateWithTokensResponse:(id)response completionHandler:(id)handler;
@end

@implementation RMHTTPConduit

+ (NSString)userAgent
{
  if (qword_1000E6888 != -1)
  {
    sub_10003BB7C();
  }

  v3 = qword_1000E6880;

  return v3;
}

- (RMHTTPConduit)initWithManagementSourceObjectID:(id)d inContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v9 = [NSURLSession sessionWithConfiguration:v8 delegate:self delegateQueue:0];

  v10 = [(RMHTTPConduit *)self initWithManagementSourceObjectID:dCopy inContext:contextCopy session:v9];
  return v10;
}

- (RMHTTPConduit)initWithManagementSourceObjectID:(id)d inContext:(id)context session:(id)session
{
  dCopy = d;
  contextCopy = context;
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = RMHTTPConduit;
  v12 = [(RMHTTPConduit *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_managementSourceObjectID, d);
    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v13->_session, session);
  }

  return v13;
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&_mh_execute_header, "HTTPConduit: starting", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = +[RMLog httpConduit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10003BB90();
  }

  [(RMHTTPConduit *)self context];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100033254;
  v7 = v8[3] = &unk_1000D1270;
  v9 = v7;
  selfCopy = self;
  [v7 performBlockAndWait:v8];
  handlerCopy[2](handlerCopy);

  os_activity_scope_leave(&state);
}

- (void)_startObservers
{
  context = [(RMHTTPConduit *)self context];
  transactionAuthor = [context transactionAuthor];
  v4 = [[RMPersistentHistoryNotifier alloc] initWithContext:context];
  [(RMPersistentHistoryNotifier *)v4 setDelegate:self];
  v5 = [NSSet setWithObject:transactionAuthor];
  [(RMPersistentHistoryNotifier *)v4 setIgnoredTransactionAuthors:v5];

  [(RMHTTPConduit *)self setPersistentHistoryNotifier:v4];
  [(RMPersistentHistoryNotifier *)v4 start];
}

- (void)_stopObservers
{
  persistentHistoryNotifier = [(RMHTTPConduit *)self persistentHistoryNotifier];
  [persistentHistoryNotifier setDelegate:0];

  [(RMHTTPConduit *)self setPersistentHistoryNotifier:0];
}

- (signed)errorState
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  [(RMHTTPConduit *)self context];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100033548;
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
  v5[2] = RMModelStatusItemManagementPushToken;
  v2 = [NSArray arrayWithObjects:v5 count:3];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (id)statusItemsToSendDuringEnrollment
{
  v3 = [NSMutableArray arrayWithCapacity:2];
  [v3 addObject:RMModelStatusItemManagementClientCapabilities];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  [(RMHTTPConduit *)self context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033824;
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

  v5 = [NSSet setWithArray:v3];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)enrollWithStatusItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  v8 = _os_activity_create(&_mh_execute_header, "HTTPConduit: enrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = +[RMLog httpConduit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10003BBCC();
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100033C38;
  v40 = sub_100033C48;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100033C38;
  v34 = sub_100033C48;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100033C38;
  v28 = sub_100033C48;
  v29 = 0;
  [(RMHTTPConduit *)self context];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100033C50;
  v10 = v18[3] = &unk_1000D1D90;
  v19 = v10;
  selfCopy = self;
  v21 = &v36;
  v22 = &v30;
  v23 = &v24;
  [v10 performBlockAndWait:v18];
  if (v37[5])
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    v11 = v25[5];
    v12 = [RMModelAnyPayload buildFromDictionary:itemsCopy];
    v13 = [RMProtocolEnrollRequest requestWithEnrollmentToken:v11 statusItems:v12];

    v14 = v31[5];
    v17 = 0;
    LOBYTE(v11) = [(RMHTTPConduit *)self _setRequestPayload:v13 onURLRequest:v14 error:&v17];
    v15 = v17;
    if (v11)
    {
      [(RMHTTPConduit *)self _resumeEnrollmentTaskForRequest:v31[5] enrollmentToken:v25[5] completionHandler:handlerCopy];
    }

    else
    {
      v16 = +[RMLog httpConduit];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_10003BC08();
      }

      (handlerCopy[2])(handlerCopy, v15);
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  os_activity_scope_leave(&state);
}

+ (id)_generateEnrollmentToken
{
  v2 = objc_opt_new();
  uUIDString = [v2 UUIDString];

  return uUIDString;
}

- (void)_resumeEnrollmentTaskForRequest:(id)request enrollmentToken:(id)token completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v17[0] = &off_1000D6EB0;
  tokenCopy = token;
  v17[1] = &off_1000D6EC8;
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100033FF4;
  v14[3] = &unk_1000D1DB8;
  v14[4] = self;
  v15 = requestCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = requestCopy;
  [(RMHTTPConduit *)self _resumeTaskForRequest:v13 enrollmentToken:tokenCopy expectedResponseClassByStatusCode:v11 completionHandler:v14];
}

- (void)_didReceiveEnrollReferralWithOriginalRequest:(id)request responsePayload:(id)payload response:(id)response error:(id)error completionHandler:(id)handler
{
  requestCopy = request;
  payloadCopy = payload;
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  v15 = +[RMLog httpConduit];
  v16 = v15;
  if (errorCopy)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10003BCD8();
    }

    handlerCopy[2](handlerCopy, errorCopy);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10003BD48();
    }

    responseReferralBaseURL = [payloadCopy responseReferralBaseURL];
    if (responseReferralBaseURL)
    {
      v33 = [NSURL URLWithString:?];
      if (v33)
      {
        [(RMHTTPConduit *)self context];
        v59 = 0;
        v60 = &v59;
        v61 = 0x3032000000;
        v62 = sub_100033C38;
        v63 = sub_100033C48;
        v64 = 0;
        v53 = 0;
        v54 = &v53;
        v55 = 0x3032000000;
        v56 = sub_100033C38;
        v57 = sub_100033C48;
        v58 = 0;
        v47 = 0;
        v48 = &v47;
        v49 = 0x3032000000;
        v50 = sub_100033C38;
        v51 = sub_100033C48;
        v52 = 0;
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_100034604;
        v41 = v40[3] = &unk_1000D1DE0;
        selfCopy = self;
        v44 = &v59;
        v43 = v33;
        v45 = &v47;
        v46 = &v53;
        v30 = v41;
        [v41 performBlockAndWait:v40];
        if (v60[5])
        {
          (handlerCopy[2])(handlerCopy);
        }

        else
        {
          v19 = [requestCopy URL];
          pathComponents = [v19 pathComponents];

          v21 = [pathComponents count];
          if (v21 >= 2)
          {
            v22 = [pathComponents subarrayWithRange:{v21 - 2, 2}];

            pathComponents = v22;
          }

          v23 = v48[5];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v24 = pathComponents;
          v25 = [v24 countByEnumeratingWithState:&v36 objects:v65 count:16];
          if (v25)
          {
            v26 = *v37;
            do
            {
              v27 = 0;
              v28 = v23;
              do
              {
                if (*v37 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v23 = [v28 URLByAppendingPathComponent:*(*(&v36 + 1) + 8 * v27) isDirectory:0];

                v27 = v27 + 1;
                v28 = v23;
              }

              while (v25 != v27);
              v25 = [v24 countByEnumeratingWithState:&v36 objects:v65 count:16];
            }

            while (v25);
          }

          v29 = [requestCopy mutableCopy];
          [v29 setURL:v23];
          [(RMHTTPConduit *)self _resumeEnrollmentTaskForRequest:v29 enrollmentToken:v54[5] completionHandler:handlerCopy];
        }

        _Block_object_dispose(&v47, 8);
        _Block_object_dispose(&v53, 8);

        _Block_object_dispose(&v59, 8);
      }

      else
      {
        v18 = +[RMLog httpConduit];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10003BD84();
        }

        v31 = [RMErrorUtilities createCouldNotParseURLErrorWithString:responseReferralBaseURL];
        handlerCopy[2](handlerCopy, v31);
      }
    }

    else
    {
      v17 = +[RMLog httpConduit];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10003BDF4();
      }

      v33 = +[RMErrorUtilities createMissingReferralURLError];
      handlerCopy[2](handlerCopy, v33);
    }
  }
}

- (void)_didFinishEnrollingWithResponsePayload:(id)payload response:(id)response error:(id)error completionHandler:(id)handler
{
  payloadCopy = payload;
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  if (errorCopy)
  {
    v14 = +[RMLog httpConduit];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003BED4();
    }

    handlerCopy[2](handlerCopy, errorCopy);
  }

  else
  {
    if (payloadCopy)
    {
      [(RMHTTPConduit *)self context];
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x3032000000;
      v23[3] = sub_100033C38;
      v23[4] = sub_100033C48;
      v24 = 0;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100034AAC;
      v15 = v17[3] = &unk_1000D1E08;
      v18 = v15;
      selfCopy = self;
      v20 = payloadCopy;
      v22 = v23;
      v21 = responseCopy;
      [v15 performBlockAndWait:v17];
      (handlerCopy[2])(handlerCopy);

      _Block_object_dispose(v23, 8);
    }

    else
    {
      v16 = +[RMLog httpConduit];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10003BF44();
      }

      v15 = +[RMErrorUtilities createInternalError];
      handlerCopy[2](handlerCopy, v15);
    }
  }
}

- (void)unenrollWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&_mh_execute_header, "HTTPConduit: unenrolling", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = +[RMLog httpConduit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10003BF80();
  }

  [(RMHTTPConduit *)self _stopObservers];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100033C38;
  v27 = sub_100033C48;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100033C38;
  v21 = sub_100033C48;
  v22 = 0;
  [(RMHTTPConduit *)self context];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100034FE4;
  v7 = v12[3] = &unk_1000D15B0;
  v13 = v7;
  selfCopy = self;
  v15 = &v23;
  v16 = &v17;
  [v7 performBlockAndWait:v12];
  v8 = v24[5];
  if (v8)
  {
    v9 = v18[5];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000350D4;
    v10[3] = &unk_1000D1E30;
    v10[4] = self;
    v11 = handlerCopy;
    [(RMHTTPConduit *)self _resumeTaskForRequest:v8 enrollmentToken:v9 expectedResponseClassByStatusCode:0 completionHandler:v10];
  }

  else
  {
    [(RMHTTPConduit *)self _didFinishUnenrollingToldRemote:0 completionHandler:handlerCopy];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  os_activity_scope_leave(&state);
}

- (void)_fetchTokensOnlyIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = _os_activity_create(&_mh_execute_header, "HTTPConduit: fetching server tokens", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = +[RMLog httpConduit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10003C02C();
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100033C38;
  v32 = sub_100033C48;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100033C38;
  v26 = sub_100033C48;
  v27 = 0;
  [(RMHTTPConduit *)self context];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100035800;
  v9 = v16[3] = &unk_1000D1E58;
  v17 = v9;
  selfCopy = self;
  neededCopy = needed;
  v19 = &v22;
  v20 = &v28;
  [v9 performBlockAndWait:v16];
  v10 = v29[5];
  if (v10)
  {
    v11 = v23[5];
    v35 = &off_1000D6EB0;
    v36 = objc_opt_class();
    v12 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100035A3C;
    v14[3] = &unk_1000D1E30;
    v14[4] = self;
    v15 = handlerCopy;
    [(RMHTTPConduit *)self _resumeTaskForRequest:v10 enrollmentToken:v11 expectedResponseClassByStatusCode:v12 completionHandler:v14];
  }

  else
  {
    v13 = +[RMLog httpConduit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10003C068();
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  os_activity_scope_leave(&state);
}

- (void)_didFinishFetchingServerTokens:(id)tokens response:(id)response error:(id)error completionHandler:(id)handler
{
  tokensCopy = tokens;
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  if (errorCopy)
  {
    v14 = +[RMLog httpConduit];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003C11C();
    }

    handlerCopy[2](handlerCopy, errorCopy);
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_100033C38;
    v27 = sub_100033C48;
    v28 = 0;
    [(RMHTTPConduit *)self context];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100035C90;
    v15 = v18[3] = &unk_1000D1E80;
    v19 = v15;
    selfCopy = self;
    v21 = tokensCopy;
    v22 = &v23;
    [v15 performBlockAndWait:v18];
    if (v24[5])
    {
      (handlerCopy[2])(handlerCopy);
    }

    else
    {
      v16 = +[RMLog httpConduit];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17[0] = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Successfully saved server tokens", v17, 2u);
      }

      handlerCopy[2](handlerCopy, 0);
    }

    _Block_object_dispose(&v23, 8);
  }
}

- (BOOL)isSyncAllowed
{
  selfCopy = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  [(RMHTTPConduit *)self context];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100035F58;
  v3 = v5[3] = &unk_1000D0E38;
  v6 = v3;
  v7 = selfCopy;
  v8 = &v9;
  [v3 performBlockAndWait:v5];
  LOBYTE(selfCopy) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return selfCopy;
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
    [(RMHTTPConduit *)self _updateWithSyncTokens:messageSyncTokens completionHandler:handlerCopy];

    handlerCopy = messageSyncTokens;
  }

  else
  {
    v10 = +[RMLog httpConduit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003C280();
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
    [(RMHTTPConduit *)self _updateWithSyncTokens:responseSyncTokens completionHandler:handlerCopy];

    goto LABEL_9;
  }

  v12 = +[RMLog httpConduit];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10003C2F0();
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
  v18 = sub_100033C38;
  v19 = sub_100033C48;
  v20 = 0;
  [(RMHTTPConduit *)self context];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000369CC;
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
  v7 = _os_activity_create(&_mh_execute_header, "HTTPConduit: fetching declaration items", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = +[RMLog httpConduit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10003C360();
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100033C38;
  v36 = sub_100033C48;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100033C38;
  v30 = sub_100033C48;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100033C38;
  v24[4] = sub_100033C48;
  v25 = 0;
  [(RMHTTPConduit *)self context];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100036EF0;
  v9 = v17[3] = &unk_1000D1F48;
  v18 = v9;
  selfCopy = self;
  neededCopy = needed;
  v20 = &v26;
  v21 = v24;
  v22 = &v32;
  [v9 performBlockAndWait:v17];
  v10 = v33[5];
  if (v10)
  {
    v11 = v27[5];
    v39 = &off_1000D6EB0;
    v40 = objc_opt_class();
    v12 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100037140;
    v14[3] = &unk_1000D1F70;
    v14[4] = self;
    v16 = v24;
    v15 = handlerCopy;
    [(RMHTTPConduit *)self _resumeTaskForRequest:v10 enrollmentToken:v11 expectedResponseClassByStatusCode:v12 completionHandler:v14];
  }

  else
  {
    v13 = +[RMLog httpConduit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10003C39C();
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  os_activity_scope_leave(&state);
}

- (void)_didFinishFetchingDeclarationItems:(id)items response:(id)response error:(id)error lastReceivedPushTimestamp:(id)timestamp completionHandler:(id)handler
{
  itemsCopy = items;
  responseCopy = response;
  errorCopy = error;
  timestampCopy = timestamp;
  handlerCopy = handler;
  if (errorCopy)
  {
    v17 = +[RMLog httpConduit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10003C414();
    }

    handlerCopy[2](handlerCopy, errorCopy);
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_100033C38;
    v30 = sub_100033C48;
    v31 = 0;
    [(RMHTTPConduit *)self context];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000373B0;
    v18 = v21[3] = &unk_1000D1E80;
    v22 = v18;
    selfCopy = self;
    v24 = itemsCopy;
    v25 = &v26;
    [v18 performBlockAndWait:v21];
    if (v27[5])
    {
      (handlerCopy[2])(handlerCopy);
    }

    else
    {
      v19 = +[RMLog httpConduit];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20[0] = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Successfully saved partial object", v20, 2u);
      }

      handlerCopy[2](handlerCopy, 0);
    }

    _Block_object_dispose(&v26, 8);
  }
}

- (void)_processDeclarationItemsWithContext:(id)context infos:(id)infos declarationItemClass:(Class)class declarationItemKeyPath:(id)path
{
  contextCopy = context;
  infosCopy = infos;
  pathCopy = path;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  managementSourceObjectID = [(RMHTTPConduit *)self managementSourceObjectID];
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
          [(RMHTTPConduit *)selfCopy setMadeChangesDuringSync:1];
        }
      }

      v24 = [v41 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v24);
  }

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100037A3C;
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
  v8[2] = sub_100037BE0;
  v8[3] = &unk_1000D1EA8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(RMHTTPConduit *)self _fetchNextObjectOfClass:v5 endpoint:v6 completionHandler:v8];
}

- (void)_fetchNextObjectOfClass:(Class)class endpoint:(id)endpoint completionHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  v10 = _os_activity_create(&_mh_execute_header, "HTTPConduit: fetching next object from server", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v11 = +[RMLog httpConduit];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromClass(class);
    sub_10003C5CC(v12, buf, v11);
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100033C38;
  v51 = sub_100033C48;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100033C38;
  v45 = sub_100033C48;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100033C38;
  v39 = sub_100033C48;
  v40 = 0;
  [(RMHTTPConduit *)self context];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000382C4;
  v13 = v27[3] = &unk_1000D1FE8;
  v28 = v13;
  selfCopy = self;
  classCopy = class;
  v31 = &v35;
  v14 = endpointCopy;
  v30 = v14;
  v32 = &v41;
  v33 = &v47;
  [v13 performBlockAndWait:v27];
  v15 = v48[5];
  if (!v15)
  {
    v18 = +[RMLog httpConduit];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = NSStringFromClass(class);
      sub_10003C698(v19, v56, v18);
    }

    goto LABEL_10;
  }

  if (!v36[5])
  {
    v18 = +[RMLog httpConduit];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = NSStringFromClass(class);
      managementSourceObjectID = [(RMHTTPConduit *)self managementSourceObjectID];
      sub_10003C624(v20, managementSourceObjectID, v56, v18);
    }

LABEL_10:

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_11;
  }

  v16 = v42[5];
  v54 = &off_1000D6EB0;
  v55 = objc_opt_class();
  v17 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000384F8;
  v22[3] = &unk_1000D2010;
  v22[4] = self;
  v25 = &v35;
  classCopy2 = class;
  v23 = v14;
  v24 = handlerCopy;
  [(RMHTTPConduit *)self _resumeTaskForRequest:v15 enrollmentToken:v16 expectedResponseClassByStatusCode:v17 completionHandler:v22];

LABEL_11:
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

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
  statusCode = [responseCopy statusCode];
  if (statusCode == 200 || !errorCopy || statusCode == 404)
  {
    classCopy = class;
    *v37 = 0;
    *&v37[8] = v37;
    *&v37[16] = 0x3032000000;
    v38 = sub_100033C38;
    v39 = sub_100033C48;
    v40 = 0;
    [(RMHTTPConduit *)self context];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100038878;
    v22 = v28[3] = &unk_1000D2038;
    v29 = v22;
    selfCopy = self;
    v31 = dCopy;
    v32 = errorCopy;
    v23 = endpointCopy;
    v33 = v23;
    v34 = objectCopy;
    v35 = responseCopy;
    v36 = v37;
    [v22 performBlockAndWait:v28];
    if (*(*&v37[8] + 40))
    {
      handlerCopy[2](handlerCopy);
    }

    else
    {
      v25 = +[RMLog httpConduit];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Successfully saved object, fetching next one", buf, 2u);
      }

      [(RMHTTPConduit *)self _fetchNextObjectOfClass:classCopy endpoint:v23 completionHandler:handlerCopy];
    }

    _Block_object_dispose(v37, 8);
  }

  else
  {
    v24 = +[RMLog httpConduit];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v37 = 138543874;
      *&v37[4] = dCopy;
      *&v37[12] = 2114;
      *&v37[14] = endpointCopy;
      *&v37[22] = 2114;
      v38 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error while fetching object %{public}@ (%{public}@): %{public}@", v37, 0x20u);
    }

    (handlerCopy[2])(handlerCopy, errorCopy);
  }
}

- (void)sendStatusData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = _os_activity_create(&_mh_execute_header, "HTTPConduit: sending status", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = +[RMLog httpConduit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10003C890();
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100033C38;
  v31 = sub_100033C48;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100033C38;
  v25 = sub_100033C48;
  v26 = 0;
  [(RMHTTPConduit *)self context];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100038EDC;
  v10 = v16[3] = &unk_1000D15B0;
  v17 = v10;
  selfCopy = self;
  v19 = &v21;
  v20 = &v27;
  [v10 performBlockAndWait:v16];
  if (v28[5])
  {
    [(RMHTTPConduit *)self _setBody:dataCopy onURLRequest:?];
    v11 = v28[5];
    v12 = v22[5];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100038FC0;
    v14[3] = &unk_1000D1E30;
    v14[4] = self;
    v15 = handlerCopy;
    [(RMHTTPConduit *)self _resumeTaskForRequest:v11 enrollmentToken:v12 expectedResponseClassByStatusCode:0 completionHandler:v14];
  }

  else
  {
    v13 = +[RMErrorUtilities createInternalError];
    (*(handlerCopy + 2))(handlerCopy, v13);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  os_activity_scope_leave(&state);
}

- (void)_didFinishSendingStatusWithResponse:(id)response error:(id)error completionHandler:(id)handler
{
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  if (errorCopy)
  {
    v11 = +[RMLog httpConduit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003C8CC();
    }

    handlerCopy[2](handlerCopy, errorCopy);
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100033C38;
    v23 = sub_100033C48;
    v24 = 0;
    [(RMHTTPConduit *)self context];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000391E0;
    v12 = v15[3] = &unk_1000D0E38;
    v16 = v12;
    selfCopy = self;
    v18 = &v19;
    [v12 performBlockAndWait:v15];
    if (v20[5])
    {
      (handlerCopy[2])(handlerCopy);
    }

    else
    {
      v13 = +[RMLog httpConduit];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Successfully sent status", &v14, 2u);
      }

      handlerCopy[2](handlerCopy, 0);
    }

    _Block_object_dispose(&v19, 8);
  }
}

- (id)_processResponse:(id)response data:(id)data payloadClassByStatusCode:(id)code shouldRetry:(BOOL *)retry error:(id *)error
{
  responseCopy = response;
  dataCopy = data;
  codeCopy = code;
  statusCode = [responseCopy statusCode];
  v16 = +[RMLog httpConduit];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v51 = statusCode;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Got back from HTTP: %ld", buf, 0xCu);
  }

  if ([responseCopy statusCode] == 401 && !-[RMHTTPConduit _processUnauthorizedResponse:shouldRetry:error:](self, "_processUnauthorizedResponse:shouldRetry:error:", responseCopy, retry, error))
  {
    goto LABEL_35;
  }

  v17 = [NSNumber numberWithInteger:statusCode];
  v18 = [codeCopy objectForKey:v17];

  if (statusCode == 204)
  {
    if (!codeCopy || v18 == objc_opt_class())
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if ((statusCode - 400) <= 0xC7)
  {
    v49 = 0;
    v19 = [(RMHTTPConduit *)self _processErrorResponse:responseCopy data:dataCopy error:&v49];
    v20 = v49;
    v21 = v20;
    if ((v19 & 1) == 0)
    {
      if (error && v20)
      {
        v37 = v20;
        *error = v21;
      }

      goto LABEL_34;
    }

    if (dataCopy)
    {
      v22 = [dataCopy base64EncodedStringWithOptions:0];
      if (!error)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v22 = @"Empty Response Body";
      if (!error)
      {
LABEL_33:

LABEL_34:
LABEL_35:
        v34 = 0;
        goto LABEL_36;
      }
    }

    v38 = [RMErrorUtilities createHTTPErrorWithStatusCode:statusCode reason:v22];
    if (v38)
    {
      v38 = v38;
      *error = v38;
    }

    goto LABEL_33;
  }

  if (!codeCopy)
  {
LABEL_20:
    v34 = [RMModelAnyPayload buildFromDictionary:&__NSDictionary0__struct];
    goto LABEL_36;
  }

  if (v18)
  {
    allHeaderFields = [responseCopy allHeaderFields];
    v23 = [allHeaderFields objectForKeyedSubscript:@"Content-Type"];
    v24 = @"text/html";
    v47 = v23;
    if (v23)
    {
      v24 = v23;
    }

    v25 = v24;
    v26 = [(__CFString *)v25 rangeOfString:@";"];
    v28 = v27;
    if (v27)
    {
      v29 = v26;
      v30 = [(__CFString *)v25 substringToIndex:v26];
      v31 = &v28[v29];
      v32 = v30;
      v28 = [(__CFString *)v25 substringFromIndex:v31];
      v33 = v28;
    }

    else
    {
      v40 = v25;
      v32 = v25;
    }

    v41 = v32;
    v42 = v28;

    if (dataCopy && ([(__CFString *)v41 isEqualToString:@"application/json"]& 1) == 0)
    {
      v44 = [(RMHTTPConduit *)self _incrementConduitStateError:2 serverRetryAfter:0 error:error];
      v34 = 0;
      if (error && v44)
      {
        v45 = [RMErrorUtilities createUnhandledContentTypeErrorWithContentType:v41];
        if (v45)
        {
          v45 = v45;
          *error = v45;
        }

        v34 = 0;
      }
    }

    else
    {
      if ([v42 length])
      {
        v43 = +[RMLog httpConduit];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v51 = v42;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Unused Content-Type parameter: %{public}@", buf, 0xCu);
        }
      }

      if (dataCopy)
      {
        v34 = [v18 loadData:dataCopy serializationType:1 error:error];
      }

      else
      {
        v46 = objc_opt_new();
        v34 = [v18 loadData:v46 serializationType:1 error:error];
      }
    }

    goto LABEL_36;
  }

LABEL_21:
  v35 = [(RMHTTPConduit *)self _incrementConduitStateError:2 serverRetryAfter:0 error:error];
  v34 = 0;
  if (error && v35)
  {
    v36 = +[RMErrorUtilities createHTTPErrorWithStatusCode:reason:](RMErrorUtilities, "createHTTPErrorWithStatusCode:reason:", [responseCopy statusCode], @"Unexpected status code");
    if (v36)
    {
      v36 = v36;
      *error = v36;
    }

    goto LABEL_35;
  }

LABEL_36:

  return v34;
}

- (BOOL)_processUnauthorizedResponse:(id)response shouldRetry:(BOOL *)retry error:(id *)error
{
  responseCopy = response;
  allHeaderFields = [responseCopy allHeaderFields];
  v10 = [allHeaderFields objectForKeyedSubscript:@"WWW-Authenticate"];

  v11 = +[RMLog httpConduit];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10003C9A4();
  }

  v12 = [NSCharacterSet characterSetWithCharactersInString:@", "];
  v13 = [v10 componentsSeparatedByCharactersInSet:v12];

  v14 = +[RMLog httpConduit];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10003CA14();
  }

  if (([v13 containsObject:RMAuthenticationSchemeTest] & 1) != 0 || (objc_msgSend(v13, "containsObject:", RMAuthenticationSchemeBearer) & 1) != 0 || objc_msgSend(v13, "containsObject:", RMAuthenticationSchemeMAID))
  {
    v15 = +[RMLog httpConduit];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10003CA84();
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_100033C38;
    v32 = sub_100033C48;
    v33 = 0;
    [(RMHTTPConduit *)self context];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100039AE8;
    v16 = v23[3] = &unk_1000D1E80;
    v24 = v16;
    selfCopy = self;
    v26 = v13;
    v27 = &v28;
    [v16 performBlockAndWait:v23];
    v17 = v29[5];
    if (v17)
    {
      if (error)
      {
        *error = v17;
      }
    }

    else
    {
      *retry = 1;
    }

    _Block_object_dispose(&v28, 8);
  }

  else if (error)
  {
    v19 = [v13 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v20 = [v19 componentsJoinedByString:{@", "}];

    v21 = [RMErrorUtilities createUnsupportedAuthenticationSchemeErrorWithScheme:v20];

    if (v21)
    {
      v22 = v21;
      *error = v21;
    }
  }

  return 0;
}

- (BOOL)_processErrorResponse:(id)response data:(id)data error:(id *)error
{
  responseCopy = response;
  dataCopy = data;
  allHeaderFields = [responseCopy allHeaderFields];
  v11 = [allHeaderFields objectForKeyedSubscript:@"Content-Type"];
  v12 = v11;
  v13 = @"text/html";
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;
  v15 = [(__CFString *)v14 rangeOfString:@";"];
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = [(__CFString *)v14 substringToIndex:v15];
    v20 = v19;
    v21 = [(__CFString *)v14 substringFromIndex:&v17[v18]];
    v22 = v21;
  }

  else
  {
    v23 = v14;
    v21 = 0;
    v19 = v14;
  }

  v24 = v19;
  v25 = v21;

  if (dataCopy && ![v24 isEqualToString:@"application/json"])
  {
    v28 = 0;
    goto LABEL_23;
  }

  if ([v25 length])
  {
    v26 = +[RMLog httpConduit];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v44 = 138543362;
      *&v44[4] = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Unused Content-Type parameter: %{public}@", v44, 0xCu);
    }
  }

  v27 = dataCopy;
  if (!dataCopy)
  {
    v27 = objc_opt_new();
  }

  *v44 = 0;
  v28 = [RMProtocolErrorResponse loadData:v27 serializationType:1 error:v44];
  v29 = *v44;
  if (dataCopy)
  {
    if (!v28)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (!v28)
    {
LABEL_19:
      v30 = +[RMLog httpConduit];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10003CDA8();
      }
    }
  }

LABEL_23:
  responseCode = [v28 responseCode];
  statusCode = [responseCopy statusCode];
  v33 = 0;
  v34 = 2;
  if (statusCode > 409)
  {
    if (statusCode == 410)
    {
      v33 = 0;
      v35 = [responseCode isEqualToString:RMProtocolErrorResponse_Code_enrollmentNotAllowed] == 0;
      v36 = 4;
LABEL_38:
      if (v35)
      {
        v34 = 2;
      }

      else
      {
        v34 = v36;
      }

      goto LABEL_46;
    }

    if (statusCode == 503)
    {
      allHeaderFields2 = [responseCopy allHeaderFields];
      v38 = [allHeaderFields2 objectForKeyedSubscript:@"Retry-After"];

      if (v38)
      {
        v39 = objc_opt_new();
        v40 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [v39 setLocale:v40];

        [v39 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss Z"];
        v33 = [v39 dateFromString:v38];
        if (!v33)
        {
          integerValue = [v38 integerValue];
          if (integerValue < 1)
          {
            v33 = 0;
          }

          else
          {
            v33 = [NSDate dateWithTimeIntervalSinceNow:integerValue];
          }
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = 3;
    }
  }

  else
  {
    if (statusCode != 403)
    {
      if (statusCode != 404)
      {
        goto LABEL_46;
      }

      v33 = 0;
      v35 = [responseCode isEqualToString:RMProtocolErrorResponse_Code_enrollmentTokenInvalid] == 0;
      v36 = 5;
      goto LABEL_38;
    }

    if (([responseCode isEqualToString:RMProtocolErrorResponse_Code_clientVersionInvalid] & 1) != 0 || (objc_msgSend(responseCode, "isEqualToString:", RMProtocolErrorResponse_Code_deviceAuthInvalid) & 1) != 0 || objc_msgSend(responseCode, "isEqualToString:", RMProtocolErrorResponse_Code_deviceAuthMissing))
    {
      v33 = 0;
      v34 = 1;
    }

    else
    {
      v33 = 0;
      v34 = 2;
    }
  }

LABEL_46:
  v42 = [(RMHTTPConduit *)self _incrementConduitStateError:v34 serverRetryAfter:v33 error:error];

  return v42;
}

- (BOOL)_incrementConduitStateError:(signed __int16)error serverRetryAfter:(id)after error:(id *)a5
{
  afterCopy = after;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100033C38;
  v24 = sub_100033C48;
  v25 = 0;
  [(RMHTTPConduit *)self context];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003A49C;
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

- (id)_makeURLRequestWithManagementSource:(id)source method:(id)method endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  methodCopy = method;
  sourceCopy = source;
  conduitConfig = [sourceCopy conduitConfig];
  state = [conduitConfig state];
  enrollmentToken = [state enrollmentToken];
  enrollmentType = [sourceCopy enrollmentType];

  v14 = &RMProtocolChannelUser;
  if (enrollmentType)
  {
    v14 = &RMProtocolChannelDevice;
  }

  v15 = *v14;
  referralBaseURL = [state referralBaseURL];
  v17 = referralBaseURL;
  if (referralBaseURL)
  {
    baseURL = referralBaseURL;
  }

  else
  {
    baseURL = [state baseURL];
  }

  v19 = baseURL;

  v20 = [endpointCopy stringByReplacingOccurrencesOfString:@"{channel}" withString:v15];

  if (enrollmentToken)
  {
    v21 = [v20 stringByReplacingOccurrencesOfString:@"{enrollmenttoken}" withString:enrollmentToken];

    v20 = v21;
  }

  v22 = [v19 URLByAppendingPathComponent:v20];
  v23 = [NSMutableURLRequest requestWithURL:v22 cachePolicy:0 timeoutInterval:30.0];
  [v23 setHTTPMethod:methodCopy];

  v24 = +[RMHTTPConduit userAgent];
  [v23 setValue:v24 forHTTPHeaderField:@"User-Agent"];

  [v23 setValue:@"application/json" forHTTPHeaderField:@"Accept"];

  return v23;
}

- (id)_authenticationCredential
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100033C38;
  v27 = sub_100033C48;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100033C38;
  v21 = sub_100033C48;
  v22 = 0;
  [(RMHTTPConduit *)self context];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10003AA1C;
  v3 = v12 = &unk_1000D15B0;
  v13 = v3;
  selfCopy = self;
  v15 = &v17;
  v16 = &v23;
  [v3 performBlockAndWait:&v9];
  v4 = v24[5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    authenticationScheme = [v24[5] authenticationScheme];
    v6 = v18[5];
    if (v6 != authenticationScheme && (!authenticationScheme || ![v6 isEqualToString:authenticationScheme]))
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    authenticationScheme = 0;
    v7 = 0;
    if (v18[5])
    {
      goto LABEL_8;
    }
  }

  v7 = v24[5];
LABEL_8:

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v7;
}

- (BOOL)_prepareURLRequest:(id)request withAuthenticationCredential:(id)credential error:(id *)error
{
  requestCopy = request;
  credentialCopy = credential;
  v9 = objc_opt_new();
  uUIDString = [v9 UUIDString];
  [requestCopy setValue:uUIDString forHTTPHeaderField:@"X-Apple-Request-UUID"];

  v11 = +[RMLog httpConduit];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10003CE80(requestCopy);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_6;
  }

  v20 = 0;
  v12 = [credentialCopy prepareURLRequest:requestCopy error:&v20];
  v13 = v20;
  v14 = v13;
  if (v12)
  {

LABEL_6:
    v14 = +[RMFeatureOverrides testOrganizationID];
    if ([v14 length])
    {
      v15 = [requestCopy valueForHTTPHeaderField:@"Authorization"];
      if ([v15 length])
      {
        v16 = [v15 stringByAppendingFormat:@", %@=%@", @"test-org-id", v14];

        [requestCopy setValue:v16 forHTTPHeaderField:@"Authorization"];
        v15 = v16;
      }
    }

    v17 = 1;
    goto LABEL_11;
  }

  v17 = 0;
  if (error && v13)
  {
    v19 = v13;
    v17 = 0;
    *error = v14;
  }

LABEL_11:

  return v17;
}

- (BOOL)_prepareTask:(id)task withAuthenticationCredential:(id)credential error:(id *)error
{
  taskCopy = task;
  credentialCopy = credential;
  originalRequest = [taskCopy originalRequest];
  v10 = +[RMLog httpConduit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10003CF4C(originalRequest);
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = 0;
    v11 = [credentialCopy prepareTask:taskCopy error:&v14];
    v12 = v14;
    if ((v11 & 1) == 0 && error && v12)
    {
      v12 = v12;
      *error = v12;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_setRequestPayload:(id)payload onURLRequest:(id)request error:(id *)error
{
  payloadCopy = payload;
  requestCopy = request;
  if (!payloadCopy)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v10 = [payloadCopy serializeAsDataWithType:1 error:error];
  if (v10)
  {
LABEL_5:
    [(RMHTTPConduit *)self _setBody:v10 onURLRequest:requestCopy];

    v11 = 1;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (void)_setBody:(id)body onURLRequest:(id)request
{
  requestCopy = request;
  if (body)
  {
    [requestCopy setHTTPBody:body];
    v5 = @"application/json";
    v6 = requestCopy;
  }

  else
  {
    [requestCopy setHTTPBody:0];
    v6 = requestCopy;
    v5 = 0;
  }

  [v6 setValue:v5 forHTTPHeaderField:@"Content-Type"];
}

- (void)_resumeTaskForRequest:(id)request enrollmentToken:(id)token expectedResponseClassByStatusCode:(id)code completionHandler:(id)handler
{
  requestCopy = request;
  tokenCopy = token;
  codeCopy = code;
  handlerCopy = handler;
  _authenticationCredential = [(RMHTTPConduit *)self _authenticationCredential];
  v32 = 0;
  LOBYTE(handler) = [(RMHTTPConduit *)self _prepareURLRequest:requestCopy withAuthenticationCredential:_authenticationCredential error:&v32];
  v15 = v32;
  if (handler)
  {
    hTTPMethod = [requestCopy HTTPMethod];
    v17 = +[RMLog httpConduit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10003D018();
    }

    session = [(RMHTTPConduit *)self session];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10003B110;
    v25[3] = &unk_1000D2088;
    v19 = hTTPMethod;
    v26 = v19;
    v27 = requestCopy;
    v23 = tokenCopy;
    v28 = tokenCopy;
    v20 = handlerCopy;
    v31 = v20;
    selfCopy = self;
    v30 = codeCopy;
    v21 = [session dataTaskWithRequest:v27 completionHandler:v25];

    v24 = v15;
    LOBYTE(session) = [(RMHTTPConduit *)self _prepareTask:v21 withAuthenticationCredential:_authenticationCredential error:&v24];
    v22 = v24;

    if (session)
    {
      [v21 resume];
    }

    else
    {
      (*(v20 + 2))(v20, 0, 0, v22);
    }

    tokenCopy = v23;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v15);
    v22 = v15;
  }
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  protectionSpace = [challenge protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v10 = +[RMLog httpConduit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10003D1AC();
  }

  v11 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];
  v12 = +[RMLog httpConduit];
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10003D258();
    }

    serverTrust = [protectionSpace serverTrust];
    if (serverTrust)
    {
      v15 = serverTrust;
      error = 0;
      if (SecTrustEvaluateWithError(serverTrust, &error))
      {
        v16 = [NSURLCredential credentialForTrust:v15];
        v17 = +[RMLog httpConduit];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_10003D324();
        }

        handlerCopy[2](handlerCopy, 0, v16);
        goto LABEL_21;
      }

      v19 = +[RMLog httpConduit];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10003D294(v15, &error);
      }
    }

    else
    {
      v18 = +[RMLog httpConduit];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10003D360();
      }
    }

    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_21;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10003D21C();
  }

  handlerCopy[2](handlerCopy, 3, 0);
LABEL_21:
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
      context = [(RMHTTPConduit *)self context];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10003B764;
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
  delegate = [(RMHTTPConduit *)self delegate];
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
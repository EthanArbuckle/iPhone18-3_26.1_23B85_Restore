@interface STAskForTimeManager
+ (id)_blueprintsForBudgetIdentifiers:(id)identifiers fromBlueprints:(id)blueprints;
+ (id)_filterForExceededBudgetBlueprints:(id)blueprints error:(id *)error;
+ (int64_t)_approvedTimeForResponseAnswer:(int64_t)answer amount:(id)amount;
+ (int64_t)_resourceTypeForUsageType:(int64_t)type;
+ (int64_t)_responseAnswerForAnswer:(int64_t)answer timeApproved:(id *)approved;
+ (void)updateBundleIdentifiers:(id)identifiers withCategory:(id)category;
- (BOOL)_applyAskForTimeDeclarationsForAnswer:(int64_t)answer usageType:(int64_t)type requestedResourceIdentifier:(id)identifier timeGranted:(id)granted oneMoreMinute:(BOOL)minute toUser:(id)user managedObjectContext:(id)context error:(id *)self0;
- (BOOL)_approveAskForTimeRequest:(id)request managedObjectContext:(id)context error:(id *)error;
- (BOOL)_sendRequestToParents:(id)parents managedObjectContext:(id)context error:(id *)error;
- (STAskForTimeManager)initWithPersistenceController:(id)controller userNotificationManager:(id)manager eventRelay:(id)relay askForTimeConfigurationProvider:(id)provider askToManager:(id)toManager;
- (STFamilyOrganizationController)familyOrganizationController;
- (id)_eventForRequest:(id)request;
- (id)requestIdentifierFor:(id)for request:(id)request;
- (void)_applyOneMoreMinuteForBlueprint:(id)blueprint timeGranted:(id)granted toUser:(id)user managedObjectContext:(id)context error:(id *)error;
- (void)_categoryForIdentifier:(id)identifier ofUsageType:(int64_t)type completionHandler:(id)handler;
- (void)_handleAnswer:(int64_t)answer requestIdentifier:(id)identifier timeApproved:(id)approved completionHandler:(id)handler;
- (void)_handleApprovalOfRequest:(id)request;
- (void)_handleAskForTimeResponse:(id)response respondingUserAppleID:(id)d;
- (void)_handleDisapprovalOfRequest:(id)request;
- (void)_postAskForTimeResponseNotificationWithRespondingUserGivenName:(id)name respondingUserDSID:(id)d respondingUserAltDSID:(id)iD respondingUserAppleID:(id)appleID associatedRequestIdentifier:(id)identifier answer:(int64_t)answer requestedResourceName:(id)resourceName amountGranted:(id)self0;
- (void)approveExceptionForRequest:(id)request completionHandler:(id)handler;
- (void)fetchLastResponseForRequestedResourceIdentifier:(id)identifier usageType:(int64_t)type withCompletionHandler:(id)handler;
- (void)handleAnswer:(int64_t)answer forRequestWithIdentifier:(id)identifier;
- (void)handleAnswer:(int64_t)answer requestIdentifier:(id)identifier timeApproved:(id)approved completionHandler:(id)handler;
- (void)handleAskForTimeRequestPayload:(id)payload;
- (void)handleAskForTimeResponsePayload:(id)payload;
- (void)handleV2AskForTimeResponsePayload:(id)payload;
- (void)sendAskForTimeRequest:(id)request completionHandler:(id)handler;
@end

@implementation STAskForTimeManager

- (STAskForTimeManager)initWithPersistenceController:(id)controller userNotificationManager:(id)manager eventRelay:(id)relay askForTimeConfigurationProvider:(id)provider askToManager:(id)toManager
{
  controllerCopy = controller;
  managerCopy = manager;
  relayCopy = relay;
  providerCopy = provider;
  toManagerCopy = toManager;
  v22.receiver = self;
  v22.super_class = STAskForTimeManager;
  v17 = [(STAskForTimeManager *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_eventRelay, relay);
    objc_storeStrong(&v18->_persistenceController, controller);
    objc_storeStrong(&v18->_userNotificationManager, manager);
    objc_storeStrong(&v18->_askForTimeConfigurationProvider, provider);
    objc_storeStrong(&v18->_askToManager, toManager);
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v18 selector:"_handleApprovalOfRequest:" name:STUserNotificationAskForTimeResponseReceivedApprove object:managerCopy];
    [v19 addObserver:v18 selector:"_handleDisapprovalOfRequest:" name:STUserNotificationAskForTimeResponseReceivedDontApprove object:managerCopy];
  }

  return v18;
}

- (void)sendAskForTimeRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  askForTimeConfigurationProvider = [(STAskForTimeManager *)self askForTimeConfigurationProvider];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A300;
  v11[3] = &unk_1001A2D30;
  v12 = requestCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  [askForTimeConfigurationProvider shouldDeliverNotificationQuietlyWithCompletion:v11];
}

- (id)_eventForRequest:(id)request
{
  requestCopy = request;
  v4 = +[STAskForTimeManager _resourceTypeForUsageType:](STAskForTimeManager, "_resourceTypeForUsageType:", [requestCopy usageType]);
  v5 = [STUserID alloc];
  requestingUserDSID = [requestCopy requestingUserDSID];
  v7 = [v5 initWithDSID:requestingUserDSID];

  v8 = [STAskForTimeRequestEvent alloc];
  requestIdentifier = [requestCopy requestIdentifier];
  uUIDString = [requestIdentifier UUIDString];
  timeStamp = [requestCopy timeStamp];
  requestedResourceIdentifier = [requestCopy requestedResourceIdentifier];

  v13 = [(STAskForTimeRequestEvent *)v8 initWithIdentifier:uUIDString resourceType:v4 timestamp:timeStamp requesterUserID:v7 requestedResourceIdentifier:requestedResourceIdentifier];

  return v13;
}

- (void)approveExceptionForRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  persistenceController = [(STAskForTimeManager *)self persistenceController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000AED8;
  v11[3] = &unk_1001A2D58;
  v11[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  [persistenceController performBackgroundTask:v11];
}

- (void)fetchLastResponseForRequestedResourceIdentifier:(id)identifier usageType:(int64_t)type withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = +[STLog ask];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1001113C8();
  }

  persistenceController = [(STAskForTimeManager *)self persistenceController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B0F0;
  v13[3] = &unk_1001A2D80;
  v14 = identifierCopy;
  v15 = handlerCopy;
  v11 = identifierCopy;
  v12 = handlerCopy;
  [persistenceController performBackgroundTask:v13];
}

- (id)requestIdentifierFor:(id)for request:(id)request
{
  forCopy = for;
  requestCopy = request;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10000A804;
  v21 = sub_10000A814;
  v22 = 0;
  persistenceController = [(STAskForTimeManager *)self persistenceController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B724;
  v13[3] = &unk_1001A2DA8;
  v9 = forCopy;
  v14 = v9;
  v10 = requestCopy;
  v15 = v10;
  v16 = &v17;
  [persistenceController performBackgroundTaskAndWait:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)handleAnswer:(int64_t)answer requestIdentifier:(id)identifier timeApproved:(id)approved completionHandler:(id)handler
{
  identifierCopy = identifier;
  approvedCopy = approved;
  handlerCopy = handler;
  v13 = +[STLog ask];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [identifierCopy UUIDString];
    v15 = @"disapproved";
    v16 = 138543874;
    v17 = uUIDString;
    v18 = 2114;
    if (!answer)
    {
      v15 = @"approved";
    }

    v19 = v15;
    v20 = 2114;
    v21 = approvedCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Begin handling answer for request %{public}@, answer:%{public}@, time approved:%{public}@", &v16, 0x20u);
  }

  [(STAskForTimeManager *)self _handleAnswer:answer requestIdentifier:identifierCopy timeApproved:approvedCopy completionHandler:handlerCopy];
}

- (void)_handleApprovalOfRequest:(id)request
{
  userInfo = [request userInfo];
  v5 = [NSUUID alloc];
  v6 = [userInfo objectForKeyedSubscript:STUserNotificationAskForTimeKeyRequestIdentifier];
  v7 = [v5 initWithUUIDString:v6];

  if (v7)
  {
    v8 = [userInfo objectForKeyedSubscript:STUserNotificationAskForTimeKeyTimeApproved];
    [(STAskForTimeManager *)self _handleAnswer:0 requestIdentifier:v7 timeApproved:v8 completionHandler:0];
  }

  else
  {
    v9 = +[STLog ask];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001114A0(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

- (void)_handleDisapprovalOfRequest:(id)request
{
  requestCopy = request;
  v5 = [NSUUID alloc];
  userInfo = [requestCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:STUserNotificationAskForTimeKeyRequestIdentifier];
  v8 = [v5 initWithUUIDString:v7];

  if (v8)
  {
    [(STAskForTimeManager *)self _handleAnswer:1 requestIdentifier:v8 timeApproved:0 completionHandler:0];
  }

  else
  {
    v9 = +[STLog ask];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100111510(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

- (void)handleAskForTimeRequestPayload:(id)payload
{
  payloadCopy = payload;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10000A804;
  v34 = sub_10000A814;
  v35 = 0;
  v4 = [STAskForTimeRequest alloc];
  payloadDictionary = [payloadCopy payloadDictionary];
  v6 = [v4 initWithPayload:payloadDictionary];

  if (v6)
  {
    v7 = +[NSDate now];
    userInfo = [payloadCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:@"ServerReceivedTime"];

    if (v9)
    {
      [v9 doubleValue];
      v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v10 = v7;
    }

    v12 = v10;
    v13 = +[STLog ask];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [v6 requestIdentifier];
      requestedResourceIdentifier = [v6 requestedResourceIdentifier];
      userInfo2 = [payloadCopy userInfo];
      v17 = [userInfo2 objectForKeyedSubscript:@"AppleID"];
      *buf = 138544130;
      v37 = requestIdentifier;
      v38 = 2114;
      v39 = requestedResourceIdentifier;
      v40 = 2114;
      v41 = v17;
      v42 = 2114;
      v43 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received ask request %{public}@ (%{public}@) from %{public}@ - requested at %{public}@", buf, 0x2Au);
    }

    v18 = +[NSCalendar autoupdatingCurrentCalendar];
    v19 = [v18 nextDateAfterDate:v12 matchingHour:0 minute:0 second:0 options:1024];

    if ([v7 compare:v19]== 1)
    {
      v20 = +[STLog ask];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        requestIdentifier2 = [v6 requestIdentifier];
        *buf = 138543362;
        v37 = requestIdentifier2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Dropping expired ask for time request: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      persistenceController = [(STAskForTimeManager *)self persistenceController];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10000BFF8;
      v25[3] = &unk_1001A2DF8;
      v26 = v6;
      v29 = &v30;
      v27 = v7;
      selfCopy = self;
      [persistenceController performBackgroundTaskAndWait:v25];

      if (v31[5])
      {
        eventRelay = [(STAskForTimeManager *)self eventRelay];
        [eventRelay relayRequestEvent:v31[5]];
      }

      v20 = v26;
    }
  }

  else
  {
    v7 = +[STLog ask];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      payloadDictionary2 = [payloadCopy payloadDictionary];
      sub_100111580(payloadDictionary2, buf, v7);
    }
  }

  _Block_object_dispose(&v30, 8);
}

- (void)handleAskForTimeResponsePayload:(id)payload
{
  payloadCopy = payload;
  userInfo = [payloadCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"AppleID"];

  v7 = +[STLog ask];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138477827;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received a response for more time from %{private}@", &v12, 0xCu);
  }

  v8 = [STAskForTimeResponse alloc];
  payloadDictionary = [payloadCopy payloadDictionary];
  v10 = [v8 initWithPayload:payloadDictionary];

  if (v10)
  {
    [(STAskForTimeManager *)self _handleAskForTimeResponse:v10 respondingUserAppleID:v6];
  }

  else
  {
    v11 = +[STLog ask];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001117AC(payloadCopy, v11);
    }
  }
}

- (void)_handleAskForTimeResponse:(id)response respondingUserAppleID:(id)d
{
  responseCopy = response;
  dCopy = d;
  v8 = +[STLog ask];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received a response for more time from %{private}@", &buf, 0xCu);
  }

  if (responseCopy)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = sub_10000A804;
    v30 = sub_10000A814;
    v31 = 0;
    persistenceController = [(STAskForTimeManager *)self persistenceController];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10000CC88;
    v22 = &unk_1001A2E48;
    v10 = responseCopy;
    v23 = v10;
    v24 = dCopy;
    selfCopy = self;
    p_buf = &buf;
    [persistenceController performBackgroundTaskAndWait:&v19];

    if (*(*(&buf + 1) + 40))
    {
      v11 = objc_opt_new();
      answer = [v10 answer];
      amountGranted = [v10 amountGranted];
      associatedRequestIdentifier = [v10 associatedRequestIdentifier];
      uUIDString = [associatedRequestIdentifier UUIDString];
      respondingUserDSID = [v10 respondingUserDSID];
      [v11 tellAskToAboutAskForTimeResponseWithAnswer:answer timeApproved:amountGranted requestIdentifier:uUIDString responderDSID:respondingUserDSID completionHandler:&stru_1001A2E88];

      eventRelay = [(STAskForTimeManager *)self eventRelay];
      [eventRelay relayResponseEvent:*(*(&buf + 1) + 40)];
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v18 = +[STLog ask];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100111838();
    }
  }
}

- (void)handleV2AskForTimeResponsePayload:(id)payload
{
  payloadCopy = payload;
  payloadType = [payloadCopy payloadType];
  v6 = [payloadType isEqualToString:@"STUnifiedTransportPayloadTypeAskForTimeResponseV2"];

  if (v6)
  {
    userInfo = [payloadCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"AppleID"];

    v9 = +[STLog ask];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received a v2 ask response from %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3032000000;
    v19 = sub_10000A804;
    v20 = sub_10000A814;
    v21 = 0;
    persistenceController = [(STAskForTimeManager *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000D80C;
    v13[3] = &unk_1001A2DA8;
    v14 = payloadCopy;
    v11 = v8;
    v15 = v11;
    p_buf = &buf;
    [persistenceController performBackgroundTaskAndWait:v13];

    if (*(*(&buf + 1) + 40))
    {
      eventRelay = [(STAskForTimeManager *)self eventRelay];
      [eventRelay relayResponseEvent:*(*(&buf + 1) + 40)];
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = +[STLog ask];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100111A08();
    }
  }
}

- (void)_postAskForTimeResponseNotificationWithRespondingUserGivenName:(id)name respondingUserDSID:(id)d respondingUserAltDSID:(id)iD respondingUserAppleID:(id)appleID associatedRequestIdentifier:(id)identifier answer:(int64_t)answer requestedResourceName:(id)resourceName amountGranted:(id)self0
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  appleIDCopy = appleID;
  identifierCopy = identifier;
  resourceNameCopy = resourceName;
  grantedCopy = granted;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_10000A804;
  v43[4] = sub_10000A814;
  v22 = nameCopy;
  v44 = v22;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_10000A804;
  v41[4] = sub_10000A814;
  v42 = 0;
  v23 = objc_opt_new();
  if (iDCopy)
  {
    v45 = iDCopy;
    v24 = [NSArray arrayWithObjects:&v45 count:1];
    [v23 setExpectedAltDSIDs:v24];
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000E238;
  v31[3] = &unk_1001A2EB0;
  v25 = dCopy;
  v32 = v25;
  v26 = appleIDCopy;
  v33 = v26;
  v38 = v43;
  v39 = v41;
  answerCopy = answer;
  v27 = identifierCopy;
  v34 = v27;
  v28 = resourceNameCopy;
  v35 = v28;
  v29 = grantedCopy;
  v36 = v29;
  selfCopy = self;
  [v23 startRequestWithCompletionHandler:v31];

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
}

- (void)_handleAnswer:(int64_t)answer requestIdentifier:(id)identifier timeApproved:(id)approved completionHandler:(id)handler
{
  identifierCopy = identifier;
  approvedCopy = approved;
  handlerCopy = handler;
  v13 = +[STLog ask];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = answer ? @"Not approving" : @"Approving";
    v15 = [approvedCopy isEqual:&off_1001B2098];
    if (v15)
    {
      v16 = @"all day";
    }

    else
    {
      [approvedCopy floatValue];
      v16 = [NSNumber numberWithDouble:v17 / 60.0];
    }

    uUIDString = [identifierCopy UUIDString];
    *buf = 138412802;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v30 = uUIDString;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ request for %@ [minutes] for request %@", buf, 0x20u);

    if ((v15 & 1) == 0)
    {
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = sub_10000A804;
  v31 = sub_10000A814;
  v32 = 0;
  persistenceController = [(STAskForTimeManager *)self persistenceController];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000E7B8;
  v23[3] = &unk_1001A2ED8;
  v20 = identifierCopy;
  v24 = v20;
  answerCopy = answer;
  v21 = approvedCopy;
  v25 = v21;
  selfCopy = self;
  v27 = buf;
  [persistenceController performBackgroundTaskAndWait:v23];

  if (*(*&buf[8] + 40))
  {
    eventRelay = [(STAskForTimeManager *)self eventRelay];
    [eventRelay relayResponseEvent:*(*&buf[8] + 40)];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  _Block_object_dispose(buf, 8);
}

- (BOOL)_applyAskForTimeDeclarationsForAnswer:(int64_t)answer usageType:(int64_t)type requestedResourceIdentifier:(id)identifier timeGranted:(id)granted oneMoreMinute:(BOOL)minute toUser:(id)user managedObjectContext:(id)context error:(id *)self0
{
  minuteCopy = minute;
  identifierCopy = identifier;
  grantedCopy = granted;
  userCopy = user;
  contextCopy = context;
  v21 = +[STLog ask];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v67 = grantedCopy;
    v68 = 2114;
    v69 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Granting %@ seconds for %{public}@", buf, 0x16u);
  }

  if (answer != 1)
  {
    if (answer)
    {
      v22 = 0;
    }

    else
    {
      v22 = CEMPolicyWebSiteDeclaration_Mode_override;
    }

    selfCopy = self;
    if (identifierCopy)
    {
      v65 = identifierCopy;
      v23 = [NSArray arrayWithObjects:&v65 count:1];
    }

    else
    {
      v23 = 0;
    }

    v61 = contextCopy;
    if (type == 2)
    {
      if (([identifierCopy isEqualToString:CTCategoryIdentifierUtilities] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", CTCategoryIdentifierShoppingAndFood) & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", CTCategoryIdentifierTravel))
      {
        v64 = CTCategoryIdentifierOther;
        v26 = [NSArray arrayWithObjects:&v64 count:1];
      }

      else
      {
        v26 = v23;
      }

      v27 = v26;
      v25 = [CEMPolicyCategoryDeclaration buildWithIdentifier:0 withMode:v22 withCategories:v26 withCategoriesVersion2:v23 withExemptApps:&__NSArray0__struct];

      goto LABEL_22;
    }

    if (type == 1)
    {
      v24 = [CEMPolicyWebSiteDeclaration buildWithIdentifier:0 withMode:v22 withHostnames:v23 withExemptApps:&__NSArray0__struct];
    }

    else
    {
      if (type)
      {
        v28 = +[NSAssertionHandler currentHandler];
        [v28 handleFailureInMethod:a2 object:selfCopy file:@"STAskForTimeManager.m" lineNumber:753 description:{@"Unexpected usage type %ld", type}];

        v25 = 0;
        goto LABEL_22;
      }

      v24 = [CEMPolicyAppDeclaration buildWithIdentifier:0 withMode:v22 withApps:v23 withExemptApps:&__NSArray0__struct];
    }

    v25 = v24;
LABEL_22:
    v59 = v23;
    v29 = +[NSDate now];
    [grantedCopy doubleValue];
    v30 = [v29 dateByAddingTimeInterval:?];
    v31 = [[STBlueprint alloc] initWithContext:v61];
    [v31 setType:STBlueprintTypeUsageLimitOverride];
    v58 = v29;
    [v31 setCreationDate:v29];
    v57 = v30;
    [v31 setExpiration:v30];
    managingOrganization = [userCopy managingOrganization];
    [v31 setOrganization:managingOrganization];

    v33 = [NSSet setWithObject:userCopy];
    [v31 setUsers:v33];

    v60 = v22;
    v34 = grantedCopy;
    if (minuteCopy)
    {
      v35 = STOneMoreMinuteBlueprintIdentifierPrefix;
      v36 = objc_opt_new();
      uUIDString = [v36 UUIDString];
      v38 = [NSString stringWithFormat:@"%@_%@", v35, uUIDString];

      [v31 setIdentifier:v38];
    }

    else
    {
      v38 = +[NSUUID UUID];
      uUIDString2 = [v38 UUIDString];
      [v31 setIdentifier:uUIDString2];
    }

    [v31 setIsDirty:1];
    v40 = [[STBlueprintConfiguration alloc] initWithContext:v61];
    declarationIdentifier = [v25 declarationIdentifier];
    [v40 setIdentifier:declarationIdentifier];

    declarationType = [v25 declarationType];
    [v40 setType:declarationType];

    [v40 setBlueprint:v31];
    v63 = 0;
    v43 = [v25 serializeAsDataWithError:&v63];
    v44 = v63;
    [v40 setPayloadPlist:v43];

    payloadPlist = [v40 payloadPlist];

    if (payloadPlist)
    {
      v55 = userCopy;
      v46 = grantedCopy;
      persistenceController = [(STAskForTimeManager *)selfCopy persistenceController];
      v62 = 0;
      v48 = [persistenceController saveContext:v61 error:&v62];
      v49 = v62;

      v50 = +[STLog ask];
      answer = v50;
      if (v48)
      {
        grantedCopy = v34;
        v51 = v59;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v67 = identifierCopy;
          _os_log_impl(&_mh_execute_header, answer, OS_LOG_TYPE_DEFAULT, "Successfully saved ask for time override declaration for %{public}@", buf, 0xCu);
        }

        LOBYTE(answer) = 1;
      }

      else
      {
        v51 = v59;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sub_100111D80();
        }

        grantedCopy = v46;
        if (error)
        {
          STXPCSafeErrorFromCoreDataError();
          *error = LOBYTE(answer) = 0;
        }

        else
        {
          LOBYTE(answer) = 0;
        }
      }

      userCopy = v55;
    }

    else
    {
      v52 = +[STLog ask];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        sub_100111DE8();
      }

      if (error)
      {
        v53 = v44;
        v49 = 0;
        LOBYTE(answer) = 0;
        *error = v44;
      }

      else
      {
        v49 = 0;
        LOBYTE(answer) = 0;
      }

      v51 = v59;
    }

    contextCopy = v61;
  }

  return answer;
}

- (BOOL)_approveAskForTimeRequest:(id)request managedObjectContext:(id)context error:(id *)error
{
  requestCopy = request;
  v73[1] = 0;
  contextCopy = context;
  v59 = [STCoreUser fetchLocalUserInContext:"fetchLocalUserInContext:error:" error:?];
  v6 = 0;
  if (v59)
  {
    timeRequested = [requestCopy timeRequested];
    v8 = [NSNumber numberWithDouble:STAskForTimeRequestRestOfDayInterval];
    v9 = [timeRequested isEqual:v8];

    if (v9)
    {
      v10 = +[NSCalendar currentCalendar];
      v11 = objc_opt_new();
      v12 = [v10 nextDateAfterDate:v11 matchingHour:0 minute:0 second:0 options:1024];

      [v12 timeIntervalSinceNow];
      v58 = [NSNumber numberWithDouble:?];
      v13 = +[STLog ask];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v58;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Request is for all day, recalculating and granting %{public}@ seconds", &buf, 0xCu);
      }
    }

    else
    {
      v58 = timeRequested;
    }

    usageType = [requestCopy usageType];
    requestedResourceIdentifier = [requestCopy requestedResourceIdentifier];
    v73[0] = v6;
    v53 = -[STAskForTimeManager _applyAskForTimeDeclarationsForAnswer:usageType:requestedResourceIdentifier:timeGranted:oneMoreMinute:toUser:managedObjectContext:error:](self, "_applyAskForTimeDeclarationsForAnswer:usageType:requestedResourceIdentifier:timeGranted:oneMoreMinute:toUser:managedObjectContext:error:", 0, usageType, requestedResourceIdentifier, v58, [requestCopy oneMoreMinute], v59, contextCopy, v73);
    v17 = v73[0];

    if (v53)
    {
      if ([requestCopy oneMoreMinute] && _os_feature_enabled_impl())
      {

        [v59 dsid];
        v18 = v72 = 0;
        v19 = contextCopy;
        v20 = [STCoreUser fetchUserWithDSID:v18 inContext:v19 error:&v72];
        v21 = v20;
        if (v20)
        {
          dsid = [v20 dsid];
          managingOrganization = [v21 managingOrganization];
          v24 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:STBlueprintTypeDowntime fromOrganization:managingOrganization];

          v25 = [v24 execute:&v72];
          v26 = v25;
          if (v25)
          {
            firstObject = [v25 firstObject];
          }

          else
          {
            v29 = +[STLog ask];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              sub_100111E50(&v72, v29, v30, v31, v32, v33, v34, v35);
            }

            firstObject = 0;
          }
        }

        else
        {
          v24 = +[STLog ask];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            sub_100111EC0(v18, &v72);
          }

          firstObject = 0;
        }

        v6 = v72;
        downtimeConfiguration = [firstObject downtimeConfiguration];
        v37 = [downtimeConfiguration currentState] == 2;

        downtimeConfiguration2 = [firstObject downtimeConfiguration];
        currentState = [downtimeConfiguration2 currentState];

        v40 = currentState == 4 || v37;
        if (v40 == 1)
        {
          v41 = STAvailableCategoriesExcludingSystemCategories();
          v71 = 0u;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          v42 = [v41 countByEnumeratingWithState:&v68 objects:v79 count:16];
          if (v42)
          {
            v43 = *v69;
            do
            {
              for (i = 0; i != v42; i = i + 1)
              {
                if (*v69 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                v45 = *(*(&v68 + 1) + 8 * i);
                v67 = v6;
                v46 = [(STAskForTimeManager *)self _applyAskForTimeDeclarationsForAnswer:0 usageType:2 requestedResourceIdentifier:v45 timeGranted:v58 oneMoreMinute:1 toUser:v59 managedObjectContext:v19 error:&v67];
                v47 = v67;

                v6 = v47;
                if ((v46 & 1) == 0)
                {
                  v48 = v47;
                  *error = v47;
                  v49 = +[STLog ask];
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v47;
                    _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "failed to apply downtime OMM with error: %{public}@", &buf, 0xCu);
                  }
                }
              }

              v42 = [v41 countByEnumeratingWithState:&v68 objects:v79 count:16];
            }

            while (v42);
          }
        }

        else
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v75 = 0x3032000000;
          v76 = sub_10000A804;
          v77 = sub_10000A814;
          v78 = 0;
          requestedResourceIdentifier2 = [requestCopy requestedResourceIdentifier];
          usageType2 = [requestCopy usageType];
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_10000FF84;
          v60[3] = &unk_1001A2F28;
          p_buf = &buf;
          v61 = requestCopy;
          selfCopy = self;
          v63 = v19;
          v64 = v59;
          v65 = v58;
          [(STAskForTimeManager *)self _categoryForIdentifier:requestedResourceIdentifier2 ofUsageType:usageType2 completionHandler:v60];

          _Block_object_dispose(&buf, 8);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v27 = v17;
      *error = v17;
    }

    v6 = v17;
LABEL_19:

    goto LABEL_20;
  }

  v14 = +[STLog ask];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100111F44();
  }

  if (error)
  {
    [NSError errorWithDomain:STErrorDomain code:2 userInfo:0];
    *error = v53 = 0;
  }

  else
  {
    v53 = 0;
  }

LABEL_20:

  return v53;
}

+ (void)updateBundleIdentifiers:(id)identifiers withCategory:(id)category
{
  identifiersCopy = identifiers;
  categoryCopy = category;
  canonicalBundleIdentifier = [categoryCopy canonicalBundleIdentifier];
  if (canonicalBundleIdentifier)
  {
    [identifiersCopy addObject:canonicalBundleIdentifier];
    v7 = [CTCategory equivalentIdentifiersForBundleID:canonicalBundleIdentifier];
    if ([v7 count])
    {
      array = [v7 array];
      [identifiersCopy addObjectsFromArray:array];
    }
  }

  equivalentBundleIdentifiers = [categoryCopy equivalentBundleIdentifiers];
  if ([equivalentBundleIdentifiers count])
  {
    [identifiersCopy addObjectsFromArray:equivalentBundleIdentifiers];
  }
}

+ (id)_filterForExceededBudgetBlueprints:(id)blueprints error:(id *)error
{
  blueprintsCopy = blueprints;
  v7 = +[DMFPolicyMonitor policyMonitor];
  v8 = [v7 allExpiredScreenTimeBudgetsWithError:error];
  if (v8)
  {
    v9 = [self _blueprintsForBudgetIdentifiers:v8 fromBlueprints:blueprintsCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_blueprintsForBudgetIdentifiers:(id)identifiers fromBlueprints:(id)blueprints
{
  identifiersCopy = identifiers;
  blueprintsCopy = blueprints;
  v7 = objc_opt_new();
  v26 = blueprintsCopy;
  v8 = [blueprintsCopy mutableCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = identifiersCopy;
  v25 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v25)
  {
    v23 = v9;
    v24 = *v33;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        if (![v8 count])
        {
          v21 = [v7 copy];

          goto LABEL_20;
        }

        v27 = v10;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = v26;
        v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v29;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v28 + 1) + 8 * i);
              identifier = [v17 identifier];
              v19 = [v11 containsString:identifier];

              if (v19)
              {
                [v7 addObject:v17];
                identifier2 = [v17 identifier];
                [v8 removeObject:identifier2];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v14);
        }

        v10 = v27 + 1;
        v9 = v23;
      }

      while ((v27 + 1) != v25);
      v25 = [v23 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v21 = [v7 copy];
LABEL_20:

  return v21;
}

- (void)_applyOneMoreMinuteForBlueprint:(id)blueprint timeGranted:(id)granted toUser:(id)user managedObjectContext:(id)context error:(id *)error
{
  blueprintCopy = blueprint;
  grantedCopy = granted;
  userCopy = user;
  contextCopy = context;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v32 = blueprintCopy;
  usageLimit = [blueprintCopy usageLimit];
  applicationIdentifiers = [usageLimit applicationIdentifiers];

  obj = applicationIdentifiers;
  v18 = [applicationIdentifiers countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v39 + 1) + 8 * i);
        v23 = +[STLog ask];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v45 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Expiring One More Minute for %{public}@", buf, 0xCu);
        }

        [(STAskForTimeManager *)self _applyAskForTimeDeclarationsForAnswer:0 usageType:0 requestedResourceIdentifier:v22 timeGranted:grantedCopy oneMoreMinute:1 toUser:userCopy managedObjectContext:contextCopy error:error];
      }

      v19 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v19);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  usageLimit2 = [v32 usageLimit];
  websiteIdentifiers = [usageLimit2 websiteIdentifiers];

  obja = websiteIdentifiers;
  v26 = [websiteIdentifiers countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v35 + 1) + 8 * j);
        v31 = +[STLog ask];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v45 = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Expiring One More Minute for %{public}@", buf, 0xCu);
        }

        [(STAskForTimeManager *)self _applyAskForTimeDeclarationsForAnswer:0 usageType:1 requestedResourceIdentifier:v30 timeGranted:grantedCopy oneMoreMinute:1 toUser:userCopy managedObjectContext:contextCopy error:error];
      }

      v27 = [obja countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v27);
  }
}

- (void)_categoryForIdentifier:(id)identifier ofUsageType:(int64_t)type completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (type == 2)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    if (type == 1)
    {
      v9 = +[CTCategories sharedCategories];
      [v9 categoryForDomainName:identifierCopy completionHandler:v8];
    }

    else
    {
      if (type)
      {
        goto LABEL_8;
      }

      v9 = +[CTCategories sharedCategories];
      [v9 categoryForBundleID:identifierCopy completionHandler:v8];
    }
  }

LABEL_8:
}

- (BOOL)_sendRequestToParents:(id)parents managedObjectContext:(id)context error:(id *)error
{
  parentsCopy = parents;
  contextCopy = context;
  v9 = +[STLog ask];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100112148();
  }

  v30 = 0;
  v10 = [STCoreUser fetchLocalUserInContext:contextCopy error:&v30];
  v11 = v30;
  if (v10)
  {
    if ([v10 isManaged])
    {
      v29 = v11;
      v12 = [STAskForTimeRequestResponse upsertAskForTimeRequest:parentsCopy fromUser:v10 inContext:contextCopy error:&v29];
      v13 = v29;

      if (!v12)
      {
        v23 = +[STLog ask];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100111674();
        }

        if (error)
        {
          v24 = v13;
          v21 = 0;
          *error = v13;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_30;
      }

      v14 = objc_opt_new();
      [v12 setRequestTimeStamp:v14];

      if ([contextCopy hasChanges])
      {
        v28 = v13;
        v15 = [contextCopy save:&v28];
        v16 = v28;

        if ((v15 & 1) == 0)
        {
          v25 = +[STLog ask];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10011160C();
          }

          if (error)
          {
            v26 = v16;
            v21 = 0;
            *error = v16;
          }

          else
          {
            v21 = 0;
          }

          v13 = v16;
          goto LABEL_30;
        }

        v13 = v16;
      }

      v17 = +[STLog ask];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1001121C4();
      }

      dsid = [v10 dsid];
      [parentsCopy setRequestingUserDSID:dsid];

      givenName = [v10 givenName];
      [parentsCopy setRequestingUserDisplayName:givenName];

      identifier = [v12 identifier];
      [parentsCopy setRequestIdentifier:identifier];

      v21 = 1;
LABEL_30:

      v11 = v13;
      goto LABEL_31;
    }

    v22 = +[STLog ask];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100112184();
    }
  }

  else
  {
    v22 = +[STLog ask];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100112200();
    }
  }

  if (error)
  {
    [NSError errorWithDomain:STErrorDomain code:2 userInfo:0];
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_31:

  return v21;
}

- (void)handleAnswer:(int64_t)answer forRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = +[STLog ask];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if ((answer - 1) > 2)
    {
      v8 = @"Not Approved";
    }

    else
    {
      v8 = off_1001A2F48[answer - 1];
    }

    *buf = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling local ask response: %{public}@ for request: %{public}@", buf, 0x16u);
  }

  v12 = 0;
  v9 = [STAskForTimeManager _responseAnswerForAnswer:answer timeApproved:&v12];
  v10 = v12;
  v11 = [[NSUUID alloc] initWithUUIDString:identifierCopy];
  [(STAskForTimeManager *)self _handleAnswer:v9 requestIdentifier:v11 timeApproved:v10 completionHandler:0];
}

+ (int64_t)_resourceTypeForUsageType:(int64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

+ (int64_t)_approvedTimeForResponseAnswer:(int64_t)answer amount:(id)amount
{
  amountCopy = amount;
  v6 = amountCopy;
  if (answer)
  {
    v7 = 0;
  }

  else if ([amountCopy isEqualToNumber:&off_1001B20B0])
  {
    v7 = 1;
  }

  else if ([v6 isEqualToNumber:&off_1001B20C8])
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  return v7;
}

+ (int64_t)_responseAnswerForAnswer:(int64_t)answer timeApproved:(id *)approved
{
  if ((answer - 1) > 2)
  {
    v5 = 0;
    result = 1;
    if (!approved)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  v5 = off_1001A2F60[answer - 1];
  if (approved)
  {
LABEL_5:
    *approved = v5;
  }

  return result;
}

- (STFamilyOrganizationController)familyOrganizationController
{
  WeakRetained = objc_loadWeakRetained(&self->_familyOrganizationController);

  return WeakRetained;
}

@end
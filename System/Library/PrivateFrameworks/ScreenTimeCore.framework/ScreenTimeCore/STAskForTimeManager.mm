@interface STAskForTimeManager
+ (id)_blueprintsForBudgetIdentifiers:(id)a3 fromBlueprints:(id)a4;
+ (id)_filterForExceededBudgetBlueprints:(id)a3 error:(id *)a4;
+ (int64_t)_approvedTimeForResponseAnswer:(int64_t)a3 amount:(id)a4;
+ (int64_t)_resourceTypeForUsageType:(int64_t)a3;
+ (int64_t)_responseAnswerForAnswer:(int64_t)a3 timeApproved:(id *)a4;
+ (void)updateBundleIdentifiers:(id)a3 withCategory:(id)a4;
- (BOOL)_applyAskForTimeDeclarationsForAnswer:(int64_t)a3 usageType:(int64_t)a4 requestedResourceIdentifier:(id)a5 timeGranted:(id)a6 oneMoreMinute:(BOOL)a7 toUser:(id)a8 managedObjectContext:(id)a9 error:(id *)a10;
- (BOOL)_approveAskForTimeRequest:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (BOOL)_sendRequestToParents:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (STAskForTimeManager)initWithPersistenceController:(id)a3 userNotificationManager:(id)a4 eventRelay:(id)a5 askForTimeConfigurationProvider:(id)a6 askToManager:(id)a7;
- (STFamilyOrganizationController)familyOrganizationController;
- (id)_eventForRequest:(id)a3;
- (id)requestIdentifierFor:(id)a3 request:(id)a4;
- (void)_applyOneMoreMinuteForBlueprint:(id)a3 timeGranted:(id)a4 toUser:(id)a5 managedObjectContext:(id)a6 error:(id *)a7;
- (void)_categoryForIdentifier:(id)a3 ofUsageType:(int64_t)a4 completionHandler:(id)a5;
- (void)_handleAnswer:(int64_t)a3 requestIdentifier:(id)a4 timeApproved:(id)a5 completionHandler:(id)a6;
- (void)_handleApprovalOfRequest:(id)a3;
- (void)_handleAskForTimeResponse:(id)a3 respondingUserAppleID:(id)a4;
- (void)_handleDisapprovalOfRequest:(id)a3;
- (void)_postAskForTimeResponseNotificationWithRespondingUserGivenName:(id)a3 respondingUserDSID:(id)a4 respondingUserAltDSID:(id)a5 respondingUserAppleID:(id)a6 associatedRequestIdentifier:(id)a7 answer:(int64_t)a8 requestedResourceName:(id)a9 amountGranted:(id)a10;
- (void)approveExceptionForRequest:(id)a3 completionHandler:(id)a4;
- (void)fetchLastResponseForRequestedResourceIdentifier:(id)a3 usageType:(int64_t)a4 withCompletionHandler:(id)a5;
- (void)handleAnswer:(int64_t)a3 forRequestWithIdentifier:(id)a4;
- (void)handleAnswer:(int64_t)a3 requestIdentifier:(id)a4 timeApproved:(id)a5 completionHandler:(id)a6;
- (void)handleAskForTimeRequestPayload:(id)a3;
- (void)handleAskForTimeResponsePayload:(id)a3;
- (void)handleV2AskForTimeResponsePayload:(id)a3;
- (void)sendAskForTimeRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation STAskForTimeManager

- (STAskForTimeManager)initWithPersistenceController:(id)a3 userNotificationManager:(id)a4 eventRelay:(id)a5 askForTimeConfigurationProvider:(id)a6 askToManager:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = STAskForTimeManager;
  v17 = [(STAskForTimeManager *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_eventRelay, a5);
    objc_storeStrong(&v18->_persistenceController, a3);
    objc_storeStrong(&v18->_userNotificationManager, a4);
    objc_storeStrong(&v18->_askForTimeConfigurationProvider, a6);
    objc_storeStrong(&v18->_askToManager, a7);
    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v18 selector:"_handleApprovalOfRequest:" name:STUserNotificationAskForTimeResponseReceivedApprove object:v13];
    [v19 addObserver:v18 selector:"_handleDisapprovalOfRequest:" name:STUserNotificationAskForTimeResponseReceivedDontApprove object:v13];
  }

  return v18;
}

- (void)sendAskForTimeRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STAskForTimeManager *)self askForTimeConfigurationProvider];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A300;
  v11[3] = &unk_1001A2D30;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 shouldDeliverNotificationQuietlyWithCompletion:v11];
}

- (id)_eventForRequest:(id)a3
{
  v3 = a3;
  v4 = +[STAskForTimeManager _resourceTypeForUsageType:](STAskForTimeManager, "_resourceTypeForUsageType:", [v3 usageType]);
  v5 = [STUserID alloc];
  v6 = [v3 requestingUserDSID];
  v7 = [v5 initWithDSID:v6];

  v8 = [STAskForTimeRequestEvent alloc];
  v9 = [v3 requestIdentifier];
  v10 = [v9 UUIDString];
  v11 = [v3 timeStamp];
  v12 = [v3 requestedResourceIdentifier];

  v13 = [(STAskForTimeRequestEvent *)v8 initWithIdentifier:v10 resourceType:v4 timestamp:v11 requesterUserID:v7 requestedResourceIdentifier:v12];

  return v13;
}

- (void)approveExceptionForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STAskForTimeManager *)self persistenceController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000AED8;
  v11[3] = &unk_1001A2D58;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBackgroundTask:v11];
}

- (void)fetchLastResponseForRequestedResourceIdentifier:(id)a3 usageType:(int64_t)a4 withCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[STLog ask];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1001113C8();
  }

  v10 = [(STAskForTimeManager *)self persistenceController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B0F0;
  v13[3] = &unk_1001A2D80;
  v14 = v7;
  v15 = v8;
  v11 = v7;
  v12 = v8;
  [v10 performBackgroundTask:v13];
}

- (id)requestIdentifierFor:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10000A804;
  v21 = sub_10000A814;
  v22 = 0;
  v8 = [(STAskForTimeManager *)self persistenceController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B724;
  v13[3] = &unk_1001A2DA8;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  [v8 performBackgroundTaskAndWait:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)handleAnswer:(int64_t)a3 requestIdentifier:(id)a4 timeApproved:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[STLog ask];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 UUIDString];
    v15 = @"disapproved";
    v16 = 138543874;
    v17 = v14;
    v18 = 2114;
    if (!a3)
    {
      v15 = @"approved";
    }

    v19 = v15;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Begin handling answer for request %{public}@, answer:%{public}@, time approved:%{public}@", &v16, 0x20u);
  }

  [(STAskForTimeManager *)self _handleAnswer:a3 requestIdentifier:v10 timeApproved:v11 completionHandler:v12];
}

- (void)_handleApprovalOfRequest:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [NSUUID alloc];
  v6 = [v4 objectForKeyedSubscript:STUserNotificationAskForTimeKeyRequestIdentifier];
  v7 = [v5 initWithUUIDString:v6];

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:STUserNotificationAskForTimeKeyTimeApproved];
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

- (void)_handleDisapprovalOfRequest:(id)a3
{
  v4 = a3;
  v5 = [NSUUID alloc];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:STUserNotificationAskForTimeKeyRequestIdentifier];
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

- (void)handleAskForTimeRequestPayload:(id)a3
{
  v3 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10000A804;
  v34 = sub_10000A814;
  v35 = 0;
  v4 = [STAskForTimeRequest alloc];
  v5 = [v3 payloadDictionary];
  v6 = [v4 initWithPayload:v5];

  if (v6)
  {
    v7 = +[NSDate now];
    v8 = [v3 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"ServerReceivedTime"];

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
      v14 = [v6 requestIdentifier];
      v15 = [v6 requestedResourceIdentifier];
      v16 = [v3 userInfo];
      v17 = [v16 objectForKeyedSubscript:@"AppleID"];
      *buf = 138544130;
      v37 = v14;
      v38 = 2114;
      v39 = v15;
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
        v21 = [v6 requestIdentifier];
        *buf = 138543362;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Dropping expired ask for time request: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v22 = [(STAskForTimeManager *)self persistenceController];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10000BFF8;
      v25[3] = &unk_1001A2DF8;
      v26 = v6;
      v29 = &v30;
      v27 = v7;
      v28 = self;
      [v22 performBackgroundTaskAndWait:v25];

      if (v31[5])
      {
        v23 = [(STAskForTimeManager *)self eventRelay];
        [v23 relayRequestEvent:v31[5]];
      }

      v20 = v26;
    }
  }

  else
  {
    v7 = +[STLog ask];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = [v3 payloadDictionary];
      sub_100111580(v11, buf, v7);
    }
  }

  _Block_object_dispose(&v30, 8);
}

- (void)handleAskForTimeResponsePayload:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"AppleID"];

  v7 = +[STLog ask];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138477827;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received a response for more time from %{private}@", &v12, 0xCu);
  }

  v8 = [STAskForTimeResponse alloc];
  v9 = [v4 payloadDictionary];
  v10 = [v8 initWithPayload:v9];

  if (v10)
  {
    [(STAskForTimeManager *)self _handleAskForTimeResponse:v10 respondingUserAppleID:v6];
  }

  else
  {
    v11 = +[STLog ask];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001117AC(v4, v11);
    }
  }
}

- (void)_handleAskForTimeResponse:(id)a3 respondingUserAppleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog ask];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received a response for more time from %{private}@", &buf, 0xCu);
  }

  if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = sub_10000A804;
    v30 = sub_10000A814;
    v31 = 0;
    v9 = [(STAskForTimeManager *)self persistenceController];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10000CC88;
    v22 = &unk_1001A2E48;
    v10 = v6;
    v23 = v10;
    v24 = v7;
    v25 = self;
    p_buf = &buf;
    [v9 performBackgroundTaskAndWait:&v19];

    if (*(*(&buf + 1) + 40))
    {
      v11 = objc_opt_new();
      v12 = [v10 answer];
      v13 = [v10 amountGranted];
      v14 = [v10 associatedRequestIdentifier];
      v15 = [v14 UUIDString];
      v16 = [v10 respondingUserDSID];
      [v11 tellAskToAboutAskForTimeResponseWithAnswer:v12 timeApproved:v13 requestIdentifier:v15 responderDSID:v16 completionHandler:&stru_1001A2E88];

      v17 = [(STAskForTimeManager *)self eventRelay];
      [v17 relayResponseEvent:*(*(&buf + 1) + 40)];
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

- (void)handleV2AskForTimeResponsePayload:(id)a3
{
  v4 = a3;
  v5 = [v4 payloadType];
  v6 = [v5 isEqualToString:@"STUnifiedTransportPayloadTypeAskForTimeResponseV2"];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"AppleID"];

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
    v10 = [(STAskForTimeManager *)self persistenceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000D80C;
    v13[3] = &unk_1001A2DA8;
    v14 = v4;
    v11 = v8;
    v15 = v11;
    p_buf = &buf;
    [v10 performBackgroundTaskAndWait:v13];

    if (*(*(&buf + 1) + 40))
    {
      v12 = [(STAskForTimeManager *)self eventRelay];
      [v12 relayResponseEvent:*(*(&buf + 1) + 40)];
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

- (void)_postAskForTimeResponseNotificationWithRespondingUserGivenName:(id)a3 respondingUserDSID:(id)a4 respondingUserAltDSID:(id)a5 respondingUserAppleID:(id)a6 associatedRequestIdentifier:(id)a7 answer:(int64_t)a8 requestedResourceName:(id)a9 amountGranted:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = a10;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_10000A804;
  v43[4] = sub_10000A814;
  v22 = v15;
  v44 = v22;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_10000A804;
  v41[4] = sub_10000A814;
  v42 = 0;
  v23 = objc_opt_new();
  if (v17)
  {
    v45 = v17;
    v24 = [NSArray arrayWithObjects:&v45 count:1];
    [v23 setExpectedAltDSIDs:v24];
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000E238;
  v31[3] = &unk_1001A2EB0;
  v25 = v16;
  v32 = v25;
  v26 = v18;
  v33 = v26;
  v38 = v43;
  v39 = v41;
  v40 = a8;
  v27 = v19;
  v34 = v27;
  v28 = v20;
  v35 = v28;
  v29 = v21;
  v36 = v29;
  v37 = self;
  [v23 startRequestWithCompletionHandler:v31];

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
}

- (void)_handleAnswer:(int64_t)a3 requestIdentifier:(id)a4 timeApproved:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[STLog ask];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a3 ? @"Not approving" : @"Approving";
    v15 = [v11 isEqual:&off_1001B2098];
    if (v15)
    {
      v16 = @"all day";
    }

    else
    {
      [v11 floatValue];
      v16 = [NSNumber numberWithDouble:v17 / 60.0];
    }

    v18 = [v10 UUIDString];
    *buf = 138412802;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    *&buf[22] = 2112;
    v30 = v18;
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
  v19 = [(STAskForTimeManager *)self persistenceController];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000E7B8;
  v23[3] = &unk_1001A2ED8;
  v20 = v10;
  v24 = v20;
  v28 = a3;
  v21 = v11;
  v25 = v21;
  v26 = self;
  v27 = buf;
  [v19 performBackgroundTaskAndWait:v23];

  if (*(*&buf[8] + 40))
  {
    v22 = [(STAskForTimeManager *)self eventRelay];
    [v22 relayResponseEvent:*(*&buf[8] + 40)];
  }

  if (v12)
  {
    v12[2](v12);
  }

  _Block_object_dispose(buf, 8);
}

- (BOOL)_applyAskForTimeDeclarationsForAnswer:(int64_t)a3 usageType:(int64_t)a4 requestedResourceIdentifier:(id)a5 timeGranted:(id)a6 oneMoreMinute:(BOOL)a7 toUser:(id)a8 managedObjectContext:(id)a9 error:(id *)a10
{
  v11 = a7;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = +[STLog ask];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v67 = v18;
    v68 = 2114;
    v69 = v17;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Granting %@ seconds for %{public}@", buf, 0x16u);
  }

  if (a3 != 1)
  {
    if (a3)
    {
      v22 = 0;
    }

    else
    {
      v22 = CEMPolicyWebSiteDeclaration_Mode_override;
    }

    v56 = self;
    if (v17)
    {
      v65 = v17;
      v23 = [NSArray arrayWithObjects:&v65 count:1];
    }

    else
    {
      v23 = 0;
    }

    v61 = v20;
    if (a4 == 2)
    {
      if (([v17 isEqualToString:CTCategoryIdentifierUtilities] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", CTCategoryIdentifierShoppingAndFood) & 1) != 0 || objc_msgSend(v17, "isEqualToString:", CTCategoryIdentifierTravel))
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

    if (a4 == 1)
    {
      v24 = [CEMPolicyWebSiteDeclaration buildWithIdentifier:0 withMode:v22 withHostnames:v23 withExemptApps:&__NSArray0__struct];
    }

    else
    {
      if (a4)
      {
        v28 = +[NSAssertionHandler currentHandler];
        [v28 handleFailureInMethod:a2 object:v56 file:@"STAskForTimeManager.m" lineNumber:753 description:{@"Unexpected usage type %ld", a4}];

        v25 = 0;
        goto LABEL_22;
      }

      v24 = [CEMPolicyAppDeclaration buildWithIdentifier:0 withMode:v22 withApps:v23 withExemptApps:&__NSArray0__struct];
    }

    v25 = v24;
LABEL_22:
    v59 = v23;
    v29 = +[NSDate now];
    [v18 doubleValue];
    v30 = [v29 dateByAddingTimeInterval:?];
    v31 = [[STBlueprint alloc] initWithContext:v61];
    [v31 setType:STBlueprintTypeUsageLimitOverride];
    v58 = v29;
    [v31 setCreationDate:v29];
    v57 = v30;
    [v31 setExpiration:v30];
    v32 = [v19 managingOrganization];
    [v31 setOrganization:v32];

    v33 = [NSSet setWithObject:v19];
    [v31 setUsers:v33];

    v60 = v22;
    v34 = v18;
    if (v11)
    {
      v35 = STOneMoreMinuteBlueprintIdentifierPrefix;
      v36 = objc_opt_new();
      v37 = [v36 UUIDString];
      v38 = [NSString stringWithFormat:@"%@_%@", v35, v37];

      [v31 setIdentifier:v38];
    }

    else
    {
      v38 = +[NSUUID UUID];
      v39 = [v38 UUIDString];
      [v31 setIdentifier:v39];
    }

    [v31 setIsDirty:1];
    v40 = [[STBlueprintConfiguration alloc] initWithContext:v61];
    v41 = [v25 declarationIdentifier];
    [v40 setIdentifier:v41];

    v42 = [v25 declarationType];
    [v40 setType:v42];

    [v40 setBlueprint:v31];
    v63 = 0;
    v43 = [v25 serializeAsDataWithError:&v63];
    v44 = v63;
    [v40 setPayloadPlist:v43];

    v45 = [v40 payloadPlist];

    if (v45)
    {
      v55 = v19;
      v46 = v18;
      v47 = [(STAskForTimeManager *)v56 persistenceController];
      v62 = 0;
      v48 = [v47 saveContext:v61 error:&v62];
      v49 = v62;

      v50 = +[STLog ask];
      a3 = v50;
      if (v48)
      {
        v18 = v34;
        v51 = v59;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v67 = v17;
          _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEFAULT, "Successfully saved ask for time override declaration for %{public}@", buf, 0xCu);
        }

        LOBYTE(a3) = 1;
      }

      else
      {
        v51 = v59;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sub_100111D80();
        }

        v18 = v46;
        if (a10)
        {
          STXPCSafeErrorFromCoreDataError();
          *a10 = LOBYTE(a3) = 0;
        }

        else
        {
          LOBYTE(a3) = 0;
        }
      }

      v19 = v55;
    }

    else
    {
      v52 = +[STLog ask];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        sub_100111DE8();
      }

      if (a10)
      {
        v53 = v44;
        v49 = 0;
        LOBYTE(a3) = 0;
        *a10 = v44;
      }

      else
      {
        v49 = 0;
        LOBYTE(a3) = 0;
      }

      v51 = v59;
    }

    v20 = v61;
  }

  return a3;
}

- (BOOL)_approveAskForTimeRequest:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v55 = a3;
  v73[1] = 0;
  v54 = a4;
  v59 = [STCoreUser fetchLocalUserInContext:"fetchLocalUserInContext:error:" error:?];
  v6 = 0;
  if (v59)
  {
    v7 = [v55 timeRequested];
    v8 = [NSNumber numberWithDouble:STAskForTimeRequestRestOfDayInterval];
    v9 = [v7 isEqual:v8];

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
      v58 = v7;
    }

    v15 = [v55 usageType];
    v16 = [v55 requestedResourceIdentifier];
    v73[0] = v6;
    v53 = -[STAskForTimeManager _applyAskForTimeDeclarationsForAnswer:usageType:requestedResourceIdentifier:timeGranted:oneMoreMinute:toUser:managedObjectContext:error:](self, "_applyAskForTimeDeclarationsForAnswer:usageType:requestedResourceIdentifier:timeGranted:oneMoreMinute:toUser:managedObjectContext:error:", 0, v15, v16, v58, [v55 oneMoreMinute], v59, v54, v73);
    v17 = v73[0];

    if (v53)
    {
      if ([v55 oneMoreMinute] && _os_feature_enabled_impl())
      {

        [v59 dsid];
        v18 = v72 = 0;
        v19 = v54;
        v20 = [STCoreUser fetchUserWithDSID:v18 inContext:v19 error:&v72];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 dsid];
          v23 = [v21 managingOrganization];
          v24 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v22 ofType:STBlueprintTypeDowntime fromOrganization:v23];

          v25 = [v24 execute:&v72];
          v26 = v25;
          if (v25)
          {
            v52 = [v25 firstObject];
          }

          else
          {
            v29 = +[STLog ask];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              sub_100111E50(&v72, v29, v30, v31, v32, v33, v34, v35);
            }

            v52 = 0;
          }
        }

        else
        {
          v24 = +[STLog ask];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            sub_100111EC0(v18, &v72);
          }

          v52 = 0;
        }

        v6 = v72;
        v36 = [v52 downtimeConfiguration];
        v37 = [v36 currentState] == 2;

        v38 = [v52 downtimeConfiguration];
        v39 = [v38 currentState];

        v40 = v39 == 4 || v37;
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
                  *a5 = v47;
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
          v50 = [v55 requestedResourceIdentifier];
          v51 = [v55 usageType];
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_10000FF84;
          v60[3] = &unk_1001A2F28;
          p_buf = &buf;
          v61 = v55;
          v62 = self;
          v63 = v19;
          v64 = v59;
          v65 = v58;
          [(STAskForTimeManager *)self _categoryForIdentifier:v50 ofUsageType:v51 completionHandler:v60];

          _Block_object_dispose(&buf, 8);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v27 = v17;
      *a5 = v17;
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

  if (a5)
  {
    [NSError errorWithDomain:STErrorDomain code:2 userInfo:0];
    *a5 = v53 = 0;
  }

  else
  {
    v53 = 0;
  }

LABEL_20:

  return v53;
}

+ (void)updateBundleIdentifiers:(id)a3 withCategory:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v5 canonicalBundleIdentifier];
  if (v6)
  {
    [v10 addObject:v6];
    v7 = [CTCategory equivalentIdentifiersForBundleID:v6];
    if ([v7 count])
    {
      v8 = [v7 array];
      [v10 addObjectsFromArray:v8];
    }
  }

  v9 = [v5 equivalentBundleIdentifiers];
  if ([v9 count])
  {
    [v10 addObjectsFromArray:v9];
  }
}

+ (id)_filterForExceededBudgetBlueprints:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[DMFPolicyMonitor policyMonitor];
  v8 = [v7 allExpiredScreenTimeBudgetsWithError:a4];
  if (v8)
  {
    v9 = [a1 _blueprintsForBudgetIdentifiers:v8 fromBlueprints:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_blueprintsForBudgetIdentifiers:(id)a3 fromBlueprints:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v26 = v6;
  v8 = [v6 mutableCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v5;
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
              v18 = [v17 identifier];
              v19 = [v11 containsString:v18];

              if (v19)
              {
                [v7 addObject:v17];
                v20 = [v17 identifier];
                [v8 removeObject:v20];
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

- (void)_applyOneMoreMinuteForBlueprint:(id)a3 timeGranted:(id)a4 toUser:(id)a5 managedObjectContext:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v32 = v12;
  v16 = [v12 usageLimit];
  v17 = [v16 applicationIdentifiers];

  obj = v17;
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v46 count:16];
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

        [(STAskForTimeManager *)self _applyAskForTimeDeclarationsForAnswer:0 usageType:0 requestedResourceIdentifier:v22 timeGranted:v13 oneMoreMinute:1 toUser:v14 managedObjectContext:v15 error:a7];
      }

      v19 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v19);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = [v32 usageLimit];
  v25 = [v24 websiteIdentifiers];

  obja = v25;
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
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

        [(STAskForTimeManager *)self _applyAskForTimeDeclarationsForAnswer:0 usageType:1 requestedResourceIdentifier:v30 timeGranted:v13 oneMoreMinute:1 toUser:v14 managedObjectContext:v15 error:a7];
      }

      v27 = [obja countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v27);
  }
}

- (void)_categoryForIdentifier:(id)a3 ofUsageType:(int64_t)a4 completionHandler:(id)a5
{
  v10 = a3;
  v7 = a5;
  v8 = v7;
  if (a4 == 2)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    if (a4 == 1)
    {
      v9 = +[CTCategories sharedCategories];
      [v9 categoryForDomainName:v10 completionHandler:v8];
    }

    else
    {
      if (a4)
      {
        goto LABEL_8;
      }

      v9 = +[CTCategories sharedCategories];
      [v9 categoryForBundleID:v10 completionHandler:v8];
    }
  }

LABEL_8:
}

- (BOOL)_sendRequestToParents:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[STLog ask];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100112148();
  }

  v30 = 0;
  v10 = [STCoreUser fetchLocalUserInContext:v8 error:&v30];
  v11 = v30;
  if (v10)
  {
    if ([v10 isManaged])
    {
      v29 = v11;
      v12 = [STAskForTimeRequestResponse upsertAskForTimeRequest:v7 fromUser:v10 inContext:v8 error:&v29];
      v13 = v29;

      if (!v12)
      {
        v23 = +[STLog ask];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100111674();
        }

        if (a5)
        {
          v24 = v13;
          v21 = 0;
          *a5 = v13;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_30;
      }

      v14 = objc_opt_new();
      [v12 setRequestTimeStamp:v14];

      if ([v8 hasChanges])
      {
        v28 = v13;
        v15 = [v8 save:&v28];
        v16 = v28;

        if ((v15 & 1) == 0)
        {
          v25 = +[STLog ask];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10011160C();
          }

          if (a5)
          {
            v26 = v16;
            v21 = 0;
            *a5 = v16;
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

      v18 = [v10 dsid];
      [v7 setRequestingUserDSID:v18];

      v19 = [v10 givenName];
      [v7 setRequestingUserDisplayName:v19];

      v20 = [v12 identifier];
      [v7 setRequestIdentifier:v20];

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

  if (a5)
  {
    [NSError errorWithDomain:STErrorDomain code:2 userInfo:0];
    *a5 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_31:

  return v21;
}

- (void)handleAnswer:(int64_t)a3 forRequestWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = +[STLog ask];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if ((a3 - 1) > 2)
    {
      v8 = @"Not Approved";
    }

    else
    {
      v8 = off_1001A2F48[a3 - 1];
    }

    *buf = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handling local ask response: %{public}@ for request: %{public}@", buf, 0x16u);
  }

  v12 = 0;
  v9 = [STAskForTimeManager _responseAnswerForAnswer:a3 timeApproved:&v12];
  v10 = v12;
  v11 = [[NSUUID alloc] initWithUUIDString:v6];
  [(STAskForTimeManager *)self _handleAnswer:v9 requestIdentifier:v11 timeApproved:v10 completionHandler:0];
}

+ (int64_t)_resourceTypeForUsageType:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)_approvedTimeForResponseAnswer:(int64_t)a3 amount:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = 0;
  }

  else if ([v5 isEqualToNumber:&off_1001B20B0])
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

+ (int64_t)_responseAnswerForAnswer:(int64_t)a3 timeApproved:(id *)a4
{
  if ((a3 - 1) > 2)
  {
    v5 = 0;
    result = 1;
    if (!a4)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  v5 = off_1001A2F60[a3 - 1];
  if (a4)
  {
LABEL_5:
    *a4 = v5;
  }

  return result;
}

- (STFamilyOrganizationController)familyOrganizationController
{
  WeakRetained = objc_loadWeakRetained(&self->_familyOrganizationController);

  return WeakRetained;
}

@end
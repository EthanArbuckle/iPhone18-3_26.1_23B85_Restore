@interface MOContextAnalyticsManager
- (MOContextAnalyticsManager)initWithAssertionErrorState:(unint64_t)state dbAvailability:(BOOL)availability;
- (MOContextAnalyticsManager)initWithContexts:(id)contexts options:(id)options error:(id)error request:(id)request executionTime:(id)time clientAlternateId:(id)id bundleContent:(id)content;
- (id)generateAnalyticsPayloadForContext:(id)context;
- (id)generateAnalyticsPayloadForContextString:(id)string withContextID:(id)d;
- (id)generateFetchAnalyticsPayload;
- (id)getAnalyticsPlistFileURLWithFileName:(id)name;
- (id)readAnalyticsPersistenceTable:(id)table;
- (unint64_t)bootTimestamp;
- (unint64_t)fetchSignificantLocationEnablementStatus;
- (void)persistContextAnalyticsMetrics:(id)metrics withData:(id)data;
- (void)sendAssertionAnalyticsEvent;
- (void)sendContextAnalyticsEvents;
- (void)sendContextStringAnalyticsEventsWithContext:(id)context;
- (void)sendFetchAnalyticsEvent;
- (void)storeBinTime:(id)time withKey:(id)key toDict:(id)dict;
@end

@implementation MOContextAnalyticsManager

- (MOContextAnalyticsManager)initWithContexts:(id)contexts options:(id)options error:(id)error request:(id)request executionTime:(id)time clientAlternateId:(id)id bundleContent:(id)content
{
  contextsCopy = contexts;
  optionsCopy = options;
  errorCopy = error;
  requestCopy = request;
  timeCopy = time;
  idCopy = id;
  contentCopy = content;
  v26.receiver = self;
  v26.super_class = MOContextAnalyticsManager;
  v18 = [(MOContextAnalyticsManager *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_contexts, contexts);
    objc_storeStrong(&v19->_options, options);
    objc_storeStrong(&v19->_error, error);
    objc_storeStrong(&v19->_request, request);
    objc_storeStrong(&v19->_executionTime, time);
    objc_storeStrong(&v19->_clientAlternateId, id);
    objc_storeStrong(&v19->_bundleContent, content);
  }

  return v19;
}

- (MOContextAnalyticsManager)initWithAssertionErrorState:(unint64_t)state dbAvailability:(BOOL)availability
{
  v7.receiver = self;
  v7.super_class = MOContextAnalyticsManager;
  result = [(MOContextAnalyticsManager *)&v7 init];
  if (result)
  {
    result->_assertionError = state;
    result->_isContextDBAvailable = availability;
  }

  return result;
}

- (void)sendContextAnalyticsEvents
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(MOContextAnalyticsManager *)self contexts];
  v3 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138412290;
    v12 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        [(MOContextAnalyticsManager *)self sendContextStringAnalyticsEventsWithContext:v8, v12];
        v9 = [(MOContextAnalyticsManager *)self generateAnalyticsPayloadForContext:v8];
        v10 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = v12;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Context analytics payload sent: %@", buf, 0xCu);
        }

        v14 = v9;
        v11 = v9;
        AnalyticsSendEventLazy();
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }
}

- (id)generateAnalyticsPayloadForContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_new();
  contextIdentifier = [contextCopy contextIdentifier];
  uUIDString = [contextIdentifier UUIDString];
  [v5 setObject:uUIDString forKey:@"contextID"];

  request = [(MOContextAnalyticsManager *)self request];

  if (request)
  {
    request2 = [(MOContextAnalyticsManager *)self request];
    requestIdentifier = [request2 requestIdentifier];
    uUIDString2 = [requestIdentifier UUIDString];
    [v5 setObject:uUIDString2 forKey:@"requestID"];
  }

  associatedSuggestionID = [contextCopy associatedSuggestionID];
  [v5 setObject:associatedSuggestionID forKey:@"suggestionID"];

  contextStrings = [contextCopy contextStrings];
  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [contextStrings count]);
  [v5 setObject:v14 forKey:@"numPrompts"];

  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [contextCopy actionType]);
  [v5 setObject:v15 forKey:@"actionType"];

  bundleContentIdentifier = [contextCopy bundleContentIdentifier];
  v17 = [NSPredicate predicateWithFormat:@"bundleContentIdentifier == %@", bundleContentIdentifier];
  bundleContent = [(MOContextAnalyticsManager *)self bundleContent];
  v62 = v17;
  v19 = [bundleContent filteredArrayUsingPredicate:v17];

  v20 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v65 = [v19 count];
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Context bundle content array count: %lu", buf, 0xCu);
  }

  v63 = bundleContentIdentifier;
  v61 = v19;
  v58 = contextCopy;
  if (v19 && [v19 count])
  {
    v21 = [v19 objectAtIndexedSubscript:0];
    [v21 bundleGoodnessScore];
    v55 = [NSNumber numberWithInt:(v22 * 10000.0)];
    [v5 setObject:? forKey:?];
    [v21 contextGoodnessScore];
    v50 = [NSNumber numberWithInt:(v23 * 10000.0)];
    [v5 setObject:? forKey:?];
    v51 = [v21 photoTrait] != 0;
    LODWORD(v24) = [v21 hasPersonName];
    v25 = [v21 peopleClassification] != 0;
    v26 = [v21 peopleClassification] == 1 || objc_msgSend(v21, "peopleClassification") == 3;
    v52 = v26;
    v24 = v24;
    v53 = [v21 peopleClassification] == 5;
    v27 = [v21 peopleClassification] == 2;
    v28 = [v21 peopleClassification] == 4;
    hasPlaceName = [v21 hasPlaceName];
    hasCityName = [v21 hasCityName];
    musicSuggestionSongTitle = [v21 musicSuggestionSongTitle];
    if (musicSuggestionSongTitle)
    {
      v35 = 1;
    }

    else
    {
      musicSuggestionArtistName = [v21 musicSuggestionArtistName];
      v35 = musicSuggestionArtistName != 0;
    }

    v57 = v35;

    v59 = [v21 patternType] == 0;
    hasTimeReference = [v21 hasTimeReference];

    v56 = hasCityName;
    v30 = v53;
    v29 = hasPlaceName;
    v32 = v51;
    v31 = v52;
  }

  else
  {
    v27 = 2;
    v28 = 2;
    v29 = 2;
    v56 = 2;
    v57 = 2;
    v59 = 2;
    hasTimeReference = 2;
    v30 = 2;
    v31 = 2;
    v25 = 2;
    v24 = 2;
    v32 = 2;
  }

  v37 = [NSNumber numberWithUnsignedInteger:v32];
  [v5 setObject:v37 forKey:@"hasTrait"];

  v38 = [NSNumber numberWithUnsignedInteger:v24];
  [v5 setObject:v38 forKey:@"hasPersonName"];

  v39 = [NSNumber numberWithUnsignedInteger:v25];
  [v5 setObject:v39 forKey:@"hasPersonRelationship"];

  v40 = [NSNumber numberWithUnsignedInteger:v31];
  [v5 setObject:v40 forKey:@"hasFamilyName"];

  v41 = [NSNumber numberWithUnsignedInteger:v30];
  [v5 setObject:v41 forKey:@"hasPetName"];

  v42 = [NSNumber numberWithUnsignedInteger:v27];
  [v5 setObject:v42 forKey:@"hasFriendName"];

  v43 = [NSNumber numberWithUnsignedInteger:v28];
  [v5 setObject:v43 forKey:@"hasColleague"];

  v44 = [NSNumber numberWithUnsignedInteger:v29];
  [v5 setObject:v44 forKey:@"hasPlaceName"];

  v45 = [NSNumber numberWithUnsignedInteger:v56];
  [v5 setObject:v45 forKey:@"hasCityName"];

  v46 = [NSNumber numberWithUnsignedInteger:v57];
  [v5 setObject:v46 forKey:@"hasMusicArtistSong"];

  v47 = [NSNumber numberWithUnsignedInteger:v59];
  [v5 setObject:v47 forKey:@"hasPattern"];

  v48 = [NSNumber numberWithUnsignedInteger:hasTimeReference];
  [v5 setObject:v48 forKey:@"hasTimeReference"];

  return v5;
}

- (void)sendContextStringAnalyticsEventsWithContext:(id)context
{
  contextCopy = context;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [contextCopy contextStrings];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        contextIdentifier = [contextCopy contextIdentifier];
        v12 = [(MOContextAnalyticsManager *)self generateAnalyticsPayloadForContextString:v10 withContextID:contextIdentifier];

        v13 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = v15;
          v23 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Context string analytics payload sent: %@", buf, 0xCu);
        }

        v17 = v12;
        v14 = v12;
        AnalyticsSendEventLazy();
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }
}

- (id)generateAnalyticsPayloadForContextString:(id)string withContextID:(id)d
{
  stringCopy = string;
  dCopy = d;
  v8 = objc_opt_new();
  uUIDString = [dCopy UUIDString];

  [v8 setObject:uUIDString forKey:@"contextID"];
  request = [(MOContextAnalyticsManager *)self request];

  if (request)
  {
    request2 = [(MOContextAnalyticsManager *)self request];
    requestIdentifier = [request2 requestIdentifier];
    uUIDString2 = [requestIdentifier UUIDString];
    [v8 setObject:uUIDString2 forKey:@"requestID"];
  }

  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [stringCopy contentType] & 1);
  [v8 setObject:v14 forKey:@"hasPersonName"];

  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([stringCopy contentType] >> 1) & 1);
  [v8 setObject:v15 forKey:@"hasPersonRelationship"];

  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([stringCopy contentType] >> 2) & 1);
  [v8 setObject:v16 forKey:@"hasPlaceName"];

  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([stringCopy contentType] >> 3) & 1);
  [v8 setObject:v17 forKey:@"hasCityName"];

  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([stringCopy contentType] >> 8) & 1);
  [v8 setObject:v18 forKey:@"hasTrait"];

  if (([stringCopy contentType] & 0x200) != 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = ([stringCopy contentType] >> 11) & 1;
  }

  v20 = [NSNumber numberWithUnsignedInteger:v19];
  [v8 setObject:v20 forKey:@"hasFamilyName"];

  v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([stringCopy contentType] >> 10) & 1);
  [v8 setObject:v21 forKey:@"hasFriendName"];

  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([stringCopy contentType] >> 13) & 1);
  [v8 setObject:v22 forKey:@"hasPetName"];

  v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", ([stringCopy contentType] >> 12) & 1);
  [v8 setObject:v23 forKey:@"hasColleague"];

  return v8;
}

- (id)generateFetchAnalyticsPayload
{
  v3 = objc_opt_new();
  request = [(MOContextAnalyticsManager *)self request];

  if (request)
  {
    request2 = [(MOContextAnalyticsManager *)self request];
    requestIdentifier = [request2 requestIdentifier];
    uUIDString = [requestIdentifier UUIDString];
    [v3 setObject:uUIDString forKey:@"requestID"];
  }

  error = [(MOContextAnalyticsManager *)self error];
  v9 = error == 0;

  v10 = [NSNumber numberWithUnsignedInteger:v9];
  [v3 setObject:v10 forKey:@"requestSuccess"];

  error2 = [(MOContextAnalyticsManager *)self error];
  code = [error2 code];

  0xFFFFFFFFFFFFFF00 = [NSNumber numberWithInteger:code & 0xFFFFFFFFFFFFFF00];
  [v3 setObject:0xFFFFFFFFFFFFFF00 forKey:@"requestFailureErrorCategory"];

  v14 = [NSNumber numberWithInteger:code];
  [v3 setObject:v14 forKey:@"requestFailureErrorType"];

  v15 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [NSNumber numberWithInteger:code];
    0xFFFFFFFFFFFFFF002 = [NSNumber numberWithInteger:code & 0xFFFFFFFFFFFFFF00];
    v18 = [NSNumber numberWithInteger:code];
    *buf = 138412802;
    v67 = v16;
    v68 = 2112;
    v69 = 0xFFFFFFFFFFFFFF002;
    v70 = 2112;
    v71 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Context error code: %@, category: %@, errorType: %@", buf, 0x20u);
  }

  v19 = +[NSCalendar currentCalendar];
  v64 = +[NSDate now];
  v65 = v19;
  v63 = [v19 components:32 fromDate:?];
  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v63 hour]);
  [v3 setObject:v20 forKey:@"requestDailyPeriod"];

  options = [(MOContextAnalyticsManager *)self options];
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [options contextRetrieval]);
  [v3 setObject:v22 forKey:@"requestRetrievalType"];

  options2 = [(MOContextAnalyticsManager *)self options];
  v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [options2 contextFormat]);
  [v3 setObject:v24 forKey:@"fetchFormatType"];

  v25 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    executionTime = [(MOContextAnalyticsManager *)self executionTime];
    [executionTime doubleValue];
    *buf = 134217984;
    v67 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "fetchContext execution time: %f", buf, 0xCu);
  }

  executionTime2 = [(MOContextAnalyticsManager *)self executionTime];
  v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [executionTime2 intValue]);
  [v3 setObject:v29 forKey:@"requestLatency"];

  contexts = [(MOContextAnalyticsManager *)self contexts];

  if (contexts)
  {
    contexts2 = [(MOContextAnalyticsManager *)self contexts];
    v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [contexts2 count]);
    [v3 setObject:v32 forKey:@"totalContextCount"];
  }

  clientAlternateId = [(MOContextAnalyticsManager *)self clientAlternateId];

  if (clientAlternateId)
  {
    clientAlternateId2 = [(MOContextAnalyticsManager *)self clientAlternateId];
    [v3 setObject:clientAlternateId2 forKey:@"clientName"];
  }

  v62 = [(MOContextAnalyticsManager *)self getAnalyticsPlistFileURLWithFileName:@"personalizedSensingFetchAnalytics.plist"];
  v35 = [(MOContextAnalyticsManager *)self readAnalyticsPersistenceTable:?];
  v61 = v35;
  if (v35)
  {
    v36 = [v35 mutableCopy];
  }

  else
  {
    v36 = objc_alloc_init(NSMutableDictionary);
  }

  v37 = v36;
  Current = CFAbsoluteTimeGetCurrent();
  v39 = [v37 objectForKey:@"lastFetch"];
  v40 = [v37 objectForKey:@"lastSuccessfulFetch"];
  if (v39)
  {
    [(MOContextAnalyticsManager *)self storeBinTime:v39 withKey:@"timeSinceLastInvocation" toDict:v3];
  }

  error3 = [(MOContextAnalyticsManager *)self error];

  if (!error3)
  {
    if (v40)
    {
      [(MOContextAnalyticsManager *)self storeBinTime:v40 withKey:@"timeSinceLastInvocationSuccess" toDict:v3];
    }

    v42 = [NSNumber numberWithDouble:Current];
    [v37 setObject:v42 forKey:@"lastSuccessfulFetch"];
  }

  v60 = v40;
  v43 = [NSNumber numberWithDouble:Current];
  [v37 setObject:v43 forKey:@"lastFetch"];

  v44 = [NSNumber numberWithUnsignedInteger:[(MOContextAnalyticsManager *)self fetchSignificantLocationEnablementStatus]];
  [v3 setObject:v44 forKey:@"isSignificantLocationOn"];

  v45 = [(MOContextAnalyticsManager *)self getAnalyticsPlistFileURLWithFileName:@"personalizedSensingAssertionAnalytics.plist"];
  v46 = [(MOContextAnalyticsManager *)self readAnalyticsPersistenceTable:v45];
  v47 = [v46 objectForKey:@"lastDBAssertionSuccessTime"];
  v48 = [v46 objectForKey:@"lastDBAssertionFailureTime"];
  v49 = [v46 objectForKey:@"lastTaskRun"];
  if (v47)
  {
    [(MOContextAnalyticsManager *)self storeBinTime:v47 withKey:@"timeSinceLastAssertionSuccess" toDict:v3];
  }

  if (v48)
  {
    [(MOContextAnalyticsManager *)self storeBinTime:v48 withKey:@"timeSinceLastAssertionFailure" toDict:v3];
  }

  v59 = v47;
  if (v49)
  {
    [(MOContextAnalyticsManager *)self storeBinTime:v49 withKey:@"timeSinceAssertionTaskRun" toDict:v3];
  }

  v50 = [NSNumber numberWithInteger:[(MOContextAnalyticsManager *)self bootTimestamp]];
  [(MOContextAnalyticsManager *)self storeBinTime:v50 withKey:@"timeSinceDeviceBoot" toDict:v3];

  v51 = [v46 objectForKey:@"lastAssertionStatus"];

  if (v51)
  {
    v52 = [v46 objectForKey:@"lastAssertionStatus"];
    bOOLValue = [v52 BOOLValue];

    v54 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      [NSNumber numberWithBool:bOOLValue];
      v55 = v58 = v45;
      *buf = 138412290;
      v67 = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "last db assertion status: %@", buf, 0xCu);

      v45 = v58;
    }

    v56 = [NSNumber numberWithBool:bOOLValue];
    [v3 setObject:v56 forKey:@"lastAssertionStatus"];
  }

  [(MOContextAnalyticsManager *)self persistContextAnalyticsMetrics:v62 withData:v37];

  return v3;
}

- (void)sendFetchAnalyticsEvent
{
  generateFetchAnalyticsPayload = [(MOContextAnalyticsManager *)self generateFetchAnalyticsPayload];
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v7 = generateFetchAnalyticsPayload;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Context fetch analytics payload sent: %@", buf, 0xCu);
  }

  v5 = generateFetchAnalyticsPayload;
  v4 = generateFetchAnalyticsPayload;
  AnalyticsSendEventLazy();
}

- (void)sendAssertionAnalyticsEvent
{
  v3 = objc_opt_new();
  v24 = [(MOContextAnalyticsManager *)self getAnalyticsPlistFileURLWithFileName:@"personalizedSensingAssertionAnalytics.plist"];
  v4 = [(MOContextAnalyticsManager *)self readAnalyticsPersistenceTable:?];
  v23 = v4;
  if (v4)
  {
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
  }

  v6 = v5;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = [v6 objectForKey:@"lastDBAssertionSuccessTime"];
  v9 = [v6 objectForKey:@"lastDBAssertionFailureTime"];
  if (v8)
  {
    [(MOContextAnalyticsManager *)self storeBinTime:v8 withKey:@"timeSinceLastAssertionSuccess" toDict:v3];
  }

  if (v9)
  {
    [(MOContextAnalyticsManager *)self storeBinTime:v9 withKey:@"timeSinceLastAssertionFailure" toDict:v3];
  }

  assertionError = [(MOContextAnalyticsManager *)self assertionError];
  v11 = [NSNumber numberWithDouble:Current];
  v12 = assertionError == 1;
  v13 = assertionError == 1;
  if (v12)
  {
    v14 = @"lastDBAssertionSuccessTime";
  }

  else
  {
    v14 = @"lastDBAssertionFailureTime";
  }

  [v6 setObject:v11 forKey:v14];

  v15 = [NSNumber numberWithInteger:[(MOContextAnalyticsManager *)self bootTimestamp]];
  [(MOContextAnalyticsManager *)self storeBinTime:v15 withKey:@"timeSinceDeviceBoot" toDict:v3];

  v16 = [NSNumber numberWithBool:v13];
  [v3 setObject:v16 forKey:@"assertionStatus"];

  v17 = [NSNumber numberWithBool:v13];
  [v6 setObject:v17 forKey:@"lastAssertionStatus"];

  v18 = [NSNumber numberWithUnsignedInteger:[(MOContextAnalyticsManager *)self assertionError]];
  [v3 setObject:v18 forKey:@"assertionErrorType"];

  v19 = [NSNumber numberWithDouble:Current];
  [v6 setObject:v19 forKey:@"lastTaskRun"];

  v20 = [NSNumber numberWithBool:self->_isContextDBAvailable];
  [v3 setObject:v20 forKey:@"isContextDBAvailable"];

  [(MOContextAnalyticsManager *)self persistContextAnalyticsMetrics:v24 withData:v6];
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Context DB assertion analytics payload sent: %@", buf, 0xCu);
  }

  v22 = v3;
  AnalyticsSendEventLazy();
}

- (id)getAnalyticsPlistFileURLWithFileName:(id)name
{
  nameCopy = name;
  v4 = [MOContextPersistenceManager storeDirectoryPathWithSuffix:@"analytics"];
  if (v4)
  {
    v5 = [NSURL fileURLWithPath:v4 isDirectory:1];
    v6 = [v5 URLByAppendingPathComponent:nameCopy];
  }

  else
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOContextAnalyticsManager getAnalyticsPlistFileURLWithFileName:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)readAnalyticsPersistenceTable:(id)table
{
  tableCopy = table;
  v4 = +[NSFileManager defaultManager];
  path = [tableCopy path];
  v6 = [v4 fileExistsAtPath:path];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      absoluteString = [tableCopy absoluteString];
      *buf = 138412290;
      v20 = absoluteString;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "File %@ found.", buf, 0xCu);
    }

    v18 = 0;
    v10 = [[NSDictionary alloc] initWithContentsOfURL:tableCopy error:&v18];
    v11 = v18;
    if (v11)
    {
      v12 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MOContextAnalyticsManager readAnalyticsPersistenceTable:];
      }

      v17 = 0;
      [v4 removeItemAtURL:tableCopy error:&v17];
      if (v17)
      {
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [MOContextAnalyticsManager readAnalyticsPersistenceTable:];
        }
      }

      v14 = objc_alloc_init(NSDictionary);
    }

    else
    {
      v14 = v10;
    }

    v15 = v14;
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No plist found at path.", buf, 2u);
    }

    v15 = objc_alloc_init(NSDictionary);
  }

  return v15;
}

- (void)persistContextAnalyticsMetrics:(id)metrics withData:(id)data
{
  if (metrics)
  {
    v9 = 0;
    v4 = [data writeToURL:metrics error:&v9];
    v5 = v9;
    v6 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
    v7 = v6;
    if (v5 || (v4 & 1) == 0)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [MOContextAnalyticsManager persistContextAnalyticsMetrics:withData:];
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "context analytics metrics were successfully written to plist.", v8, 2u);
    }
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MOContextAnalyticsManager persistContextAnalyticsMetrics:withData:];
    }
  }
}

- (unint64_t)fetchSignificantLocationEnablementStatus
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = +[RTRoutineManager defaultManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __69__MOContextAnalyticsManager_fetchSignificantLocationEnablementStatus__block_invoke;
  v8[3] = &unk_1000B5578;
  v10 = &v11;
  v4 = v2;
  v9 = v4;
  [v3 fetchRoutineStateWithHandler:v8];

  v5 = dispatch_time(0, 3000000000);
  dispatch_group_wait(v4, v5);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __69__MOContextAnalyticsManager_fetchSignificantLocationEnablementStatus__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 && (a2 - 1) <= 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

- (unint64_t)bootTimestamp
{
  *v7 = 0x1500000001;
  v5 = 0;
  v6 = 0;
  v4 = 16;
  v2 = sysctl(v7, 2u, &v5, &v4, 0, 0);
  result = 0;
  if (!v2)
  {
    return (v6 / 1000000.0 + v5 - kCFAbsoluteTimeIntervalSince1970);
  }

  return result;
}

- (void)storeBinTime:(id)time withKey:(id)key toDict:(id)dict
{
  keyCopy = key;
  dictCopy = dict;
  timeCopy = time;
  Current = CFAbsoluteTimeGetCurrent();
  [timeCopy doubleValue];
  v12 = v11;

  v13 = Current - v12;
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MOContextAnalyticsManager storeBinTime:keyCopy withKey:v14 toDict:v13];
  }

  if (v13 >= 0.0)
  {
    v16 = (v13 / 3600.0);
    if (v16 >= 168)
    {
      v17 = 168;
    }

    else
    {
      v17 = v16;
    }

    v15 = [NSNumber numberWithInt:v17];
    [dictCopy setObject:v15 forKey:keyCopy];
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityContextAnalytics);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MOContextAnalyticsManager storeBinTime:withKey:toDict:];
    }
  }
}

- (void)storeBinTime:(uint64_t)a1 withKey:(NSObject *)a2 toDict:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Time difference for key %@ (sec): %f", &v3, 0x16u);
}

@end